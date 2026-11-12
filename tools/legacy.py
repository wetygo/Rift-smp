"""Upgrade old (1.19 - 1.21.4) tile-entity / item / sign / entity NBT to the 1.21.11 (data version 4671) formats."""
import json, math
from riftbrek.nbt import Byte, Short, Long

WARN = {}


def warn(k):
    WARN[k] = WARN.get(k, 0) + 1


def json_to_nbt(v):
    """JSON text component -> NBT text component (1.21.5+)."""
    if isinstance(v, bool):
        return Byte(1 if v else 0)
    if isinstance(v, int):
        return int(v)
    if isinstance(v, float):
        return float(v)
    if isinstance(v, str):
        return v
    if isinstance(v, list):
        return [json_to_nbt(x) if not isinstance(x, (str, int, float, bool)) else {"text": str(x)} for x in v] if v else []
    if isinstance(v, dict):
        out = {}
        for k, x in v.items():
            out[k] = json_to_nbt(x)
        return out
    return str(v)


def text_comp(s):
    """a JSON string (old) -> compound (always a compound so sign message lists stay homogeneous)"""
    if not isinstance(s, str):
        return s
    try:
        j = json.loads(s)
    except Exception:
        return {"text": s}
    n = json_to_nbt(j)
    if isinstance(n, dict):
        return n
    if isinstance(n, list):
        return {"text": "", "extra": n}
    return {"text": str(n)}


def fix_components(comp, dv):
    """component map of an item (1.20.5+ format, text still JSON) -> 1.21.5+ format"""
    out = {}
    for k, v in comp.items():
        if k in ("minecraft:custom_name", "minecraft:item_name"):
            out[k] = text_comp(v) if isinstance(v, str) else v
        elif k == "minecraft:lore":
            out[k] = [text_comp(x) for x in v]
        elif k in ("minecraft:enchantments", "minecraft:stored_enchantments"):
            lv = v.get("levels", v) if isinstance(v, dict) else {}
            out[k] = {kk: vv for kk, vv in lv.items() if kk != "show_in_tooltip"}
        elif k in ("minecraft:attribute_modifiers", "minecraft:unbreakable", "minecraft:can_break", "minecraft:can_place_on"):
            warn("dropped component " + k)
        elif k == "minecraft:container":
            out[k] = [{"slot": e.get("slot", 0), "item": fix_item(e["item"], dv)} for e in v]
        elif k == "minecraft:bundle_contents":
            out[k] = [fix_item(e, dv) for e in v]
        else:
            out[k] = v
    return out


def old_tag_to_components(tag):
    comp = {}
    d = tag.get("display", {})
    if "Name" in d:
        comp["minecraft:custom_name"] = text_comp(d["Name"])
    if "Lore" in d:
        comp["minecraft:lore"] = [text_comp(x) for x in d["Lore"]]
    if "Damage" in tag and tag["Damage"]:
        comp["minecraft:damage"] = int(tag["Damage"])
    if "RepairCost" in tag and tag["RepairCost"]:
        comp["minecraft:repair_cost"] = int(tag["RepairCost"])
    for old, new in (("Enchantments", "minecraft:enchantments"), ("StoredEnchantments", "minecraft:stored_enchantments")):
        if old in tag and tag[old]:
            comp[new] = {e["id"]: int(e["lvl"]) for e in tag[old]}
    if "Potion" in tag:
        comp["minecraft:potion_contents"] = {"potion": tag["Potion"]}
    if "BlockEntityTag" in tag and "Items" in tag["BlockEntityTag"]:
        comp["minecraft:container"] = [{"slot": int(i.get("Slot", 0)), "item": fix_item(i, 0)} for i in tag["BlockEntityTag"]["Items"]]
    known = {"display", "Damage", "RepairCost", "Enchantments", "StoredEnchantments", "Potion", "BlockEntityTag"}
    for k in tag:
        if k not in known:
            warn("dropped item tag " + k)
    return comp


def fix_item(it, dv):
    """item stack dict (any age) -> {id, count[, components]} (Slot kept if present)"""
    out = {}
    if "Slot" in it:
        out["Slot"] = Byte(int(it["Slot"]))
    out["id"] = it["id"]
    out["count"] = int(it.get("count", it.get("Count", 1)))
    comp = {}
    if "tag" in it:
        comp.update(old_tag_to_components(it["tag"]))
    if "components" in it:
        comp.update(fix_components(it["components"], dv))
    if comp:
        out["components"] = comp
    return out


def is_item(d):
    return isinstance(d, dict) and isinstance(d.get("id"), str) and ("Count" in d or "count" in d) and ("Slot" in d or "tag" in d or "components" in d or len(d) <= 3)


def walk_fix(o, dv):
    if isinstance(o, dict):
        if is_item(o):
            return fix_item(o, dv)
        return {k: walk_fix(v, dv) for k, v in o.items()}
    if isinstance(o, list):
        return [walk_fix(v, dv) for v in o]
    return o


def fix_tile(t, dv):
    t = dict(t)
    tid = t["id"]
    if tid.endswith("sign") or tid.endswith("hanging_sign"):
        for side in ("front_text", "back_text"):
            if side in t:
                s = dict(t[side])
                if dv < 4325:
                    s["messages"] = [text_comp(m) for m in s.get("messages", ["", "", "", ""])]
                    s.pop("filtered_messages", None)
                else:
                    s["messages"] = s.get("messages", [])
                t[side] = s
        # legacy 1.19 format
        if "Text1" in t:
            t["front_text"] = {"has_glowing_text": Byte(int(t.pop("GlowingText", 0))), "color": t.pop("Color", "black"), "messages": [text_comp(t.pop(f"Text{i}", "{}")) for i in range(1, 5)]}
            t["back_text"] = {"has_glowing_text": Byte(0), "color": "black", "messages": [{"text": ""}] * 4}
            t["is_waxed"] = Byte(0)
    if "CustomName" in t and isinstance(t["CustomName"], str) and dv < 4325:
        t["CustomName"] = text_comp(t["CustomName"])
    if tid.endswith("banner"):
        if "Patterns" in t and t["Patterns"]:
            warn("dropped banner patterns")
        t.pop("Patterns", None); t.pop("patterns", None)
    for k in list(t.keys()):
        if k in ("x", "y", "z", "id"):
            continue
        t[k] = walk_fix(t[k], dv)
    for k in ("keepPacked",):
        t.pop(k, None)
    return t


def fix_entity(e, dv):
    e = dict(e)
    eid = e.get("id", "")
    if "Item" in e:
        e["Item"] = fix_item(e["Item"], dv)
        e["Item"].pop("Slot", None)
    if "Items" in e:
        e["Items"] = [fix_item(i, dv) for i in e["Items"]]
    if eid in ("minecraft:item_frame", "minecraft:glow_item_frame", "minecraft:painting") and "Pos" in e:
        # 1.21.10-era saves (data 4556) still carry TileX/Y/Z, so keep them (and add them if an older file lacks them)
        x, y, z = (math.floor(c) for c in e["Pos"])
        e.setdefault("TileX", x); e.setdefault("TileY", y); e.setdefault("TileZ", z)
    if "CustomName" in e and isinstance(e["CustomName"], str) and dv < 4325:
        e["CustomName"] = text_comp(e["CustomName"])
    return e


def convert_all(tiles, ents, dv):
    """returns (tiles, ents) upgraded; no-op for already-current data"""
    if dv >= 4325 and dv >= 4500:
        return tiles, ents
    return [fix_tile(t, dv) for t in tiles], [fix_entity(e, dv) for e in ents]
