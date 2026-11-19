# RIFTBREK Vanguard - Command Handbook (generated from the real datapack)

Data pack format 94.1 (Minecraft Java 1.21.11). Every function in the pack is listed in section 5 and every public entry point in sections 1-4.
Numbering is stable: **C1.. = player commands, C20.. = operator commands, C60.. = command-block-only functions**.

> Permission model: `/function` needs gamemaster (OP level 2+). Players have **no** OP commands - they use `/trigger rb_req set N`. Doors, kit pads, sorters and farms are driven by command blocks inside the schematic, not by players.

## 1. Player commands (no OP needed)

`/trigger rb_req set <N>` - re-enabled for every player every tick; each action re-validates tags/scores server-side.

| # | command | what it does |
|---|---|---|
| C1 | `/trigger rb_req set 1` | **ID book** - Issues your identity book. Non-Veil: Minecraft + Discord username, faction, rank, clearance, credential id. Veil: anonymous operative code only. A book NEVER authorises anything. |
| C2 | `/trigger rb_req set 2` | **Faction kit** - Issues the kit of your own faction (10-minute cooldown; Royal bypasses). |
| C3 | `/trigger rb_req set 3` | **Public roster** - Lists every non-Veil member with Minecraft + Discord names. Veil is never listed. |
| C4 | `/trigger rb_req set 4` | **Leader registry** - Leader/Royal only: restricted Veil ledger (credential id + names). Output goes only to the caller. |
| C5 | `/trigger rb_req set 5` | **My status** - Your faction, rank, status and credential id. |
| C6 | `/trigger rb_req set 9` | **Help** - Shows the trigger list. |
| C7 | `/trigger rb_req set 11` | **FlameFrags-inspired kit** - Members only (design choice, not verified canon). |
| C8 | `/trigger rb_req set 12` | **Wemmbu-inspired kit** - Members only. |
| C9 | `/trigger rb_req set 13` | **TheobaldTheBird-inspired kit** - Members only. |
| C10 | `/trigger rb_req set 14` | **ParrotX2-inspired kit** - Members only. |
| C11 | `/trigger rb_req set 15` | **ManePear-inspired kit** - Members only. |
| C12 | `/trigger rb_req set 16` | **SpokeIsHere-inspired kit** - Members only. |
| C13 | `/trigger rb_req set 30-37` | **Radio calls** - Preset faction messages: 30 backup, 31 all clear, 32 intruder, 33 meet at plaza, 34 need supplies, 35 heading out, 36 medic, 37 lockdown requested. |
| C14 | `/trigger rb_req set 40` | **Book message to your faction** - Hold a Book & Quill with the text on page 1. Veil appear as 'operative RB-VL-id', never by name. |
| C15 | `/trigger rb_req set 41` | **Book message to ALL members** - Same, to every active member (prefix [ALL]). |
| C16 | `/trigger rb_req set 42` | **Book message to leaders** - Leaders and royals only. |
| C17 | `/trigger rb_req set 43` | **Announcement** - Leaders/royals: title + bell sound for everyone, and every bulletin-board sign updates. |
| C18 | `/trigger rb_req set 44` | **Message history** - Last 20 messages (sender faction only). |
| C19 | `/trigger rb_req set 45` | **Last announcement** - Re-read the latest announcement. |

## 2. Operator commands (OP level 2+)

Macro functions take a compound argument. Use exact Minecraft names; the player must be online for `register`/`visitor`.

### C20. `riftbrek:admin/register`
- who: OP (level 2+)
- args: `{mc,discord,faction}`
- Registers an ONLINE player: assigns a credential id, faction tags, team, clearance 2, writes the registry record. faction = birds | unstables | abstracters | veil | archivist | wildcards.
- example: `/function riftbrek:admin/register {mc:"Steve",discord:"steve_discord",faction:"birds"}`

### C21. `riftbrek:admin/leader`
- who: OP
- args: `{mc}`
- Promotes a registered, un-revoked member to faction Leader (clearance 4).
- example: `/function riftbrek:admin/leader {mc:"Steve"}`

### C22. `riftbrek:admin/unleader`
- who: OP
- args: `{mc}`
- Removes leadership (back to clearance 2 unless Royal).
- example: `/function riftbrek:admin/unleader {mc:"Steve"}`

### C23. `riftbrek:admin/royal`
- who: OP
- args: `{mc}`
- Grants Royal clearance 5 (royal doors, lockdown-proof, kit cooldown bypass).
- example: `/function riftbrek:admin/royal {mc:"wetygo"}`

### C24. `riftbrek:admin/unroyal`
- who: OP
- args: `{mc}`
- Removes Royal clearance.
- example: `/function riftbrek:admin/unroyal {mc:"wetygo"}`

### C25. `riftbrek:admin/revoke`
- who: OP
- args: `{mc}`
- Full revocation: every faction/leader/royal/guest tag removed, rb_revoked added, clearance + credential = 0, team left, invisibility cleared, registry status = revoked.
- example: `/function riftbrek:admin/revoke {mc:"Steve"}`

### C26. `riftbrek:admin/revoke_credential`
- who: OP
- args: `{mc}`
- Suspends ONLY the credential (rb_cred = 0). Tags stay so the player can be restored.
- example: `/function riftbrek:admin/revoke_credential {mc:"Steve"}`

### C27. `riftbrek:admin/restore`
- who: OP
- args: `{mc}`
- Restores a suspended credential. Refuses revoked players (re-register them).
- example: `/function riftbrek:admin/restore {mc:"Steve"}`

### C28. `riftbrek:admin/visitor`
- who: OP
- args: `{mc}`
- 10-minute visitor pass (12000 ONLINE ticks, clearance 1). Ignored for members.
- example: `/function riftbrek:admin/visitor {mc:"Guest123"}`

### C29. `riftbrek:admin/lockdown_on`
- who: OP
- args: `-`
- Emergency lockdown: every command-block door closes except royal-tier doors; royal players still pass everything.
- example: `/function riftbrek:admin/lockdown_on`

### C30. `riftbrek:admin/lockdown_off`
- who: OP
- args: `-`
- Lifts lockdown.
- example: `/function riftbrek:admin/lockdown_off`

### C31. `riftbrek:admin/incident`
- who: OP
- args: `{mc}`
- Increments the player's rb_incident counter.
- example: `/function riftbrek:admin/incident {mc:"Steve"}`

### C32. `riftbrek:admin/whois`
- who: OP
- args: `{id}`
- Prints the FULL registry record (including Veil real names) to the operator only.
- example: `/function riftbrek:admin/whois {id:1001}`

### C33. `riftbrek:admin/gate_test`
- who: run AS the player
- args: `-`
- Shows which door tiers the player passes right now.
- example: `/execute as Steve run function riftbrek:admin/gate_test`

### C34. `riftbrek:admin/reset_cooldown`
- who: run AS the player
- args: `-`
- Resets the kit cooldown for that player.
- example: `/execute as Steve run function riftbrek:admin/reset_cooldown`

### C35. `riftbrek:admin/origin`
- who: OP
- args: `{x,z}`
- Stores the world X/Z where you pasted schematic local (0,0). Needed by verify/forceload.
- example: `/function riftbrek:admin/origin {x:1000,z:-500}`

### C36. `riftbrek:admin/verify`
- who: OP
- args: `-`
- Checks 9 signature blocks of the pasted schematic and prints PASS/FAIL for each (chunks must be loaded).
- example: `/function riftbrek:admin/verify`

### C37. `riftbrek:admin/forceload`
- who: OP
- args: `-`
- Force-loads sorters, industry, synthesis hall, blimp lane and checkpoint (after admin/origin).
- example: `/function riftbrek:admin/forceload`

### C38. `riftbrek:admin/forceload_off`
- who: OP
- args: `-`
- Removes those force-loaded chunks.
- example: `/function riftbrek:admin/forceload_off`

### C39. `riftbrek:admin/blimp_on`
- who: OP
- args: `-`
- Spawns the experimental airship at dock A and starts its route.
- example: `/function riftbrek:admin/blimp_on`

### C40. `riftbrek:admin/blimp_off`
- who: OP
- args: `-`
- Removes the airship.
- example: `/function riftbrek:admin/blimp_off`

### C41. `riftbrek:admin/board_refresh`
- who: OP
- args: `-`
- Forces every loaded bulletin-board sign to redraw.
- example: `/function riftbrek:admin/board_refresh`

### C42. `riftbrek:admin/recover`
- who: OP
- args: `-`
- Admin recovery: re-runs load (objectives, teams, storage defaults). Never resets player data.
- example: `/function riftbrek:admin/recover`

## 3. Faction kit functions (OP, or called by a kit pad)

- `riftbrek:kit/birds` - run AS a The Biggest Birds member: `/execute as Name run function riftbrek:kit/birds`. Shield banner colour: purple. Needs faction tag + active credential, 10-minute cooldown.
- `riftbrek:kit/unstables` - run AS a The Unstables member: `/execute as Name run function riftbrek:kit/unstables`. Shield banner colour: blue. Needs faction tag + active credential, 10-minute cooldown.
- `riftbrek:kit/abstracters` - run AS a Abstracters member: `/execute as Name run function riftbrek:kit/abstracters`. Shield banner colour: black. Needs faction tag + active credential, 10-minute cooldown.
- `riftbrek:kit/veil` - run AS a Veil member: `/execute as Name run function riftbrek:kit/veil`. Shield banner colour: gray. Needs faction tag + active credential, 10-minute cooldown.
- `riftbrek:kit/archivist` - run AS a The Archivist member: `/execute as Name run function riftbrek:kit/archivist`. Shield banner colour: white. Needs faction tag + active credential, 10-minute cooldown.
- `riftbrek:kit/wildcards` - run AS a Wildcards member: `/execute as Name run function riftbrek:kit/wildcards`. Shield banner colour: light_blue. Needs faction tag + active credential, 10-minute cooldown.
- `riftbrek:kit/creator_flame` - any active member.
- `riftbrek:kit/creator_wemmbu` - any active member.
- `riftbrek:kit/creator_theobald` - any active member.
- `riftbrek:kit/creator_parrot` - any active member.
- `riftbrek:kit/creator_manepear` - any active member.
- `riftbrek:kit/creator_spoke` - any active member.
- `riftbrek:book/issue`, `riftbrek:registry/public`, `riftbrek:registry/self`, `riftbrek:registry/leader_private` - run AS the player (the trigger calls these).

## 4. Command-block-only functions (called by blocks inside the schematic - not typed by anyone)

- C60. `riftbrek:alarm/all`
- C61. `riftbrek:alarm/emergency_1`
- C62. `riftbrek:alarm/emergency_10`
- C63. `riftbrek:alarm/emergency_11`
- C64. `riftbrek:alarm/emergency_12`
- C65. `riftbrek:alarm/emergency_13`
- C66. `riftbrek:alarm/emergency_14`
- C67. `riftbrek:alarm/emergency_15`
- C68. `riftbrek:alarm/emergency_16`
- C69. `riftbrek:alarm/emergency_17`
- C70. `riftbrek:alarm/emergency_18`
- C71. `riftbrek:alarm/emergency_19`
- C72. `riftbrek:alarm/emergency_2`
- C73. `riftbrek:alarm/emergency_20`
- C74. `riftbrek:alarm/emergency_21`
- C75. `riftbrek:alarm/emergency_22`
- C76. `riftbrek:alarm/emergency_3`
- C77. `riftbrek:alarm/emergency_4`
- C78. `riftbrek:alarm/emergency_5`
- C79. `riftbrek:alarm/emergency_6`
- C80. `riftbrek:alarm/emergency_7`
- C81. `riftbrek:alarm/emergency_8`
- C82. `riftbrek:alarm/emergency_9`
- C83. `riftbrek:alarm/intrusion`
- C84. `riftbrek:alarm/intrusion_fire`
- C85. `riftbrek:alarm/reset`
- C86. `riftbrek:alarm/ring_here`
- C87. `riftbrek:alarm/room_1`
- C88. `riftbrek:alarm/room_10`
- C89. `riftbrek:alarm/room_11`
- C90. `riftbrek:alarm/room_12`
- C91. `riftbrek:alarm/room_13`
- C92. `riftbrek:alarm/room_14`
- C93. `riftbrek:alarm/room_15`
- C94. `riftbrek:alarm/room_16`
- C95. `riftbrek:alarm/room_17`
- C96. `riftbrek:alarm/room_18`
- C97. `riftbrek:alarm/room_19`
- C98. `riftbrek:alarm/room_2`
- C99. `riftbrek:alarm/room_20`
- C100. `riftbrek:alarm/room_21`
- C101. `riftbrek:alarm/room_22`
- C102. `riftbrek:alarm/room_3`
- C103. `riftbrek:alarm/room_4`
- C104. `riftbrek:alarm/room_5`
- C105. `riftbrek:alarm/room_6`
- C106. `riftbrek:alarm/room_7`
- C107. `riftbrek:alarm/room_8`
- C108. `riftbrek:alarm/room_9`
- C109. `riftbrek:door/abstracters`
- C110. `riftbrek:door/abstracters_w12`
- C111. `riftbrek:door/abstracters_w6`
- C112. `riftbrek:door/archivist`
- C113. `riftbrek:door/archivist_w12`
- C114. `riftbrek:door/archivist_w6`
- C115. `riftbrek:door/birds`
- C116. `riftbrek:door/birds_w12`
- C117. `riftbrek:door/birds_w6`
- C118. `riftbrek:door/leader`
- C119. `riftbrek:door/leader_w12`
- C120. `riftbrek:door/leader_w6`
- C121. `riftbrek:door/member`
- C122. `riftbrek:door/member_w12`
- C123. `riftbrek:door/member_w6`
- C124. `riftbrek:door/public`
- C125. `riftbrek:door/public_w12`
- C126. `riftbrek:door/public_w6`
- C127. `riftbrek:door/royal`
- C128. `riftbrek:door/royal_w12`
- C129. `riftbrek:door/royal_w6`
- C130. `riftbrek:door/unstables`
- C131. `riftbrek:door/unstables_w12`
- C132. `riftbrek:door/unstables_w6`
- C133. `riftbrek:door/veil`
- C134. `riftbrek:door/veil_w12`
- C135. `riftbrek:door/veil_w6`
- C136. `riftbrek:door/wildcards`
- C137. `riftbrek:door/wildcards_w12`
- C138. `riftbrek:door/wildcards_w6`
- C139. `riftbrek:industry/pulse_crafter`
- C140. `riftbrek:industry/run_farm_beetroot`
- C141. `riftbrek:industry/run_farm_carrots`
- C142. `riftbrek:industry/run_farm_potatoes`
- C143. `riftbrek:industry/run_farm_wheat`
- C144. `riftbrek:kit/pad_abstracters`
- C145. `riftbrek:kit/pad_archivist`
- C146. `riftbrek:kit/pad_birds`
- C147. `riftbrek:kit/pad_creator_flame`
- C148. `riftbrek:kit/pad_creator_manepear`
- C149. `riftbrek:kit/pad_creator_parrot`
- C150. `riftbrek:kit/pad_creator_spoke`
- C151. `riftbrek:kit/pad_creator_theobald`
- C152. `riftbrek:kit/pad_creator_wemmbu`
- C153. `riftbrek:kit/pad_unstables`
- C154. `riftbrek:kit/pad_veil`
- C155. `riftbrek:kit/pad_wildcards`
- C156. `riftbrek:launch/go`
- C157. `riftbrek:launch/no_elytra`
- C158. `riftbrek:launch/pad`
- C159. `riftbrek:mail/move`
- C160. `riftbrek:mail/room_1`
- C161. `riftbrek:mail/room_10`
- C162. `riftbrek:mail/room_10_slot_0`
- C163. `riftbrek:mail/room_10_slot_1`
- C164. `riftbrek:mail/room_10_slot_2`
- C165. `riftbrek:mail/room_10_slot_3`
- C166. `riftbrek:mail/room_10_slot_4`
- C167. `riftbrek:mail/room_10_slot_5`
- C168. `riftbrek:mail/room_10_slot_6`
- C169. `riftbrek:mail/room_10_slot_7`
- C170. `riftbrek:mail/room_10_slot_8`
- C171. `riftbrek:mail/room_11`
- C172. `riftbrek:mail/room_11_slot_0`
- C173. `riftbrek:mail/room_11_slot_1`
- C174. `riftbrek:mail/room_11_slot_2`
- C175. `riftbrek:mail/room_11_slot_3`
- C176. `riftbrek:mail/room_11_slot_4`
- C177. `riftbrek:mail/room_11_slot_5`
- C178. `riftbrek:mail/room_11_slot_6`
- C179. `riftbrek:mail/room_11_slot_7`
- C180. `riftbrek:mail/room_11_slot_8`
- C181. `riftbrek:mail/room_12`
- C182. `riftbrek:mail/room_12_slot_0`
- C183. `riftbrek:mail/room_12_slot_1`
- C184. `riftbrek:mail/room_12_slot_2`
- C185. `riftbrek:mail/room_12_slot_3`
- C186. `riftbrek:mail/room_12_slot_4`
- C187. `riftbrek:mail/room_12_slot_5`
- C188. `riftbrek:mail/room_12_slot_6`
- C189. `riftbrek:mail/room_12_slot_7`
- C190. `riftbrek:mail/room_12_slot_8`
- C191. `riftbrek:mail/room_13`
- C192. `riftbrek:mail/room_13_slot_0`
- C193. `riftbrek:mail/room_13_slot_1`
- C194. `riftbrek:mail/room_13_slot_2`
- C195. `riftbrek:mail/room_13_slot_3`
- C196. `riftbrek:mail/room_13_slot_4`
- C197. `riftbrek:mail/room_13_slot_5`
- C198. `riftbrek:mail/room_13_slot_6`
- C199. `riftbrek:mail/room_13_slot_7`
- C200. `riftbrek:mail/room_13_slot_8`
- C201. `riftbrek:mail/room_14`
- C202. `riftbrek:mail/room_14_slot_0`
- C203. `riftbrek:mail/room_14_slot_1`
- C204. `riftbrek:mail/room_14_slot_2`
- C205. `riftbrek:mail/room_14_slot_3`
- C206. `riftbrek:mail/room_14_slot_4`
- C207. `riftbrek:mail/room_14_slot_5`
- C208. `riftbrek:mail/room_14_slot_6`
- C209. `riftbrek:mail/room_14_slot_7`
- C210. `riftbrek:mail/room_14_slot_8`
- C211. `riftbrek:mail/room_15`
- C212. `riftbrek:mail/room_15_slot_0`
- C213. `riftbrek:mail/room_15_slot_1`
- C214. `riftbrek:mail/room_15_slot_2`
- C215. `riftbrek:mail/room_15_slot_3`
- C216. `riftbrek:mail/room_15_slot_4`
- C217. `riftbrek:mail/room_15_slot_5`
- C218. `riftbrek:mail/room_15_slot_6`
- C219. `riftbrek:mail/room_15_slot_7`
- C220. `riftbrek:mail/room_15_slot_8`
- C221. `riftbrek:mail/room_16`
- C222. `riftbrek:mail/room_16_slot_0`
- C223. `riftbrek:mail/room_16_slot_1`
- C224. `riftbrek:mail/room_16_slot_2`
- C225. `riftbrek:mail/room_16_slot_3`
- C226. `riftbrek:mail/room_16_slot_4`
- C227. `riftbrek:mail/room_16_slot_5`
- C228. `riftbrek:mail/room_16_slot_6`
- C229. `riftbrek:mail/room_16_slot_7`
- C230. `riftbrek:mail/room_16_slot_8`
- C231. `riftbrek:mail/room_17`
- C232. `riftbrek:mail/room_17_slot_0`
- C233. `riftbrek:mail/room_17_slot_1`
- C234. `riftbrek:mail/room_17_slot_2`
- C235. `riftbrek:mail/room_17_slot_3`
- C236. `riftbrek:mail/room_17_slot_4`
- C237. `riftbrek:mail/room_17_slot_5`
- C238. `riftbrek:mail/room_17_slot_6`
- C239. `riftbrek:mail/room_17_slot_7`
- C240. `riftbrek:mail/room_17_slot_8`
- C241. `riftbrek:mail/room_18`
- C242. `riftbrek:mail/room_18_slot_0`
- C243. `riftbrek:mail/room_18_slot_1`
- C244. `riftbrek:mail/room_18_slot_2`
- C245. `riftbrek:mail/room_18_slot_3`
- C246. `riftbrek:mail/room_18_slot_4`
- C247. `riftbrek:mail/room_18_slot_5`
- C248. `riftbrek:mail/room_18_slot_6`
- C249. `riftbrek:mail/room_18_slot_7`
- C250. `riftbrek:mail/room_18_slot_8`
- C251. `riftbrek:mail/room_19`
- C252. `riftbrek:mail/room_19_slot_0`
- C253. `riftbrek:mail/room_19_slot_1`
- C254. `riftbrek:mail/room_19_slot_2`
- C255. `riftbrek:mail/room_19_slot_3`
- C256. `riftbrek:mail/room_19_slot_4`
- C257. `riftbrek:mail/room_19_slot_5`
- C258. `riftbrek:mail/room_19_slot_6`
- C259. `riftbrek:mail/room_19_slot_7`
- C260. `riftbrek:mail/room_19_slot_8`
- C261. `riftbrek:mail/room_1_slot_0`
- C262. `riftbrek:mail/room_1_slot_1`
- C263. `riftbrek:mail/room_1_slot_2`
- C264. `riftbrek:mail/room_1_slot_3`
- C265. `riftbrek:mail/room_1_slot_4`
- C266. `riftbrek:mail/room_1_slot_5`
- C267. `riftbrek:mail/room_1_slot_6`
- C268. `riftbrek:mail/room_1_slot_7`
- C269. `riftbrek:mail/room_1_slot_8`
- C270. `riftbrek:mail/room_2`
- C271. `riftbrek:mail/room_20`
- C272. `riftbrek:mail/room_20_slot_0`
- C273. `riftbrek:mail/room_20_slot_1`
- C274. `riftbrek:mail/room_20_slot_2`
- C275. `riftbrek:mail/room_20_slot_3`
- C276. `riftbrek:mail/room_20_slot_4`
- C277. `riftbrek:mail/room_20_slot_5`
- C278. `riftbrek:mail/room_20_slot_6`
- C279. `riftbrek:mail/room_20_slot_7`
- C280. `riftbrek:mail/room_20_slot_8`
- C281. `riftbrek:mail/room_21`
- C282. `riftbrek:mail/room_21_slot_0`
- C283. `riftbrek:mail/room_21_slot_1`
- C284. `riftbrek:mail/room_21_slot_2`
- C285. `riftbrek:mail/room_21_slot_3`
- C286. `riftbrek:mail/room_21_slot_4`
- C287. `riftbrek:mail/room_21_slot_5`
- C288. `riftbrek:mail/room_21_slot_6`
- C289. `riftbrek:mail/room_21_slot_7`
- C290. `riftbrek:mail/room_21_slot_8`
- C291. `riftbrek:mail/room_22`
- C292. `riftbrek:mail/room_22_slot_0`
- C293. `riftbrek:mail/room_22_slot_1`
- C294. `riftbrek:mail/room_22_slot_2`
- C295. `riftbrek:mail/room_22_slot_3`
- C296. `riftbrek:mail/room_22_slot_4`
- C297. `riftbrek:mail/room_22_slot_5`
- C298. `riftbrek:mail/room_22_slot_6`
- C299. `riftbrek:mail/room_22_slot_7`
- C300. `riftbrek:mail/room_22_slot_8`
- C301. `riftbrek:mail/room_2_slot_0`
- C302. `riftbrek:mail/room_2_slot_1`
- C303. `riftbrek:mail/room_2_slot_2`
- C304. `riftbrek:mail/room_2_slot_3`
- C305. `riftbrek:mail/room_2_slot_4`
- C306. `riftbrek:mail/room_2_slot_5`
- C307. `riftbrek:mail/room_2_slot_6`
- C308. `riftbrek:mail/room_2_slot_7`
- C309. `riftbrek:mail/room_2_slot_8`
- C310. `riftbrek:mail/room_3`
- C311. `riftbrek:mail/room_3_slot_0`
- C312. `riftbrek:mail/room_3_slot_1`
- C313. `riftbrek:mail/room_3_slot_2`
- C314. `riftbrek:mail/room_3_slot_3`
- C315. `riftbrek:mail/room_3_slot_4`
- C316. `riftbrek:mail/room_3_slot_5`
- C317. `riftbrek:mail/room_3_slot_6`
- C318. `riftbrek:mail/room_3_slot_7`
- C319. `riftbrek:mail/room_3_slot_8`
- C320. `riftbrek:mail/room_4`
- C321. `riftbrek:mail/room_4_slot_0`
- C322. `riftbrek:mail/room_4_slot_1`
- C323. `riftbrek:mail/room_4_slot_2`
- C324. `riftbrek:mail/room_4_slot_3`
- C325. `riftbrek:mail/room_4_slot_4`
- C326. `riftbrek:mail/room_4_slot_5`
- C327. `riftbrek:mail/room_4_slot_6`
- C328. `riftbrek:mail/room_4_slot_7`
- C329. `riftbrek:mail/room_4_slot_8`
- C330. `riftbrek:mail/room_5`
- C331. `riftbrek:mail/room_5_slot_0`
- C332. `riftbrek:mail/room_5_slot_1`
- C333. `riftbrek:mail/room_5_slot_2`
- C334. `riftbrek:mail/room_5_slot_3`
- C335. `riftbrek:mail/room_5_slot_4`
- C336. `riftbrek:mail/room_5_slot_5`
- C337. `riftbrek:mail/room_5_slot_6`
- C338. `riftbrek:mail/room_5_slot_7`
- C339. `riftbrek:mail/room_5_slot_8`
- C340. `riftbrek:mail/room_6`
- C341. `riftbrek:mail/room_6_slot_0`
- C342. `riftbrek:mail/room_6_slot_1`
- C343. `riftbrek:mail/room_6_slot_2`
- C344. `riftbrek:mail/room_6_slot_3`
- C345. `riftbrek:mail/room_6_slot_4`
- C346. `riftbrek:mail/room_6_slot_5`
- C347. `riftbrek:mail/room_6_slot_6`
- C348. `riftbrek:mail/room_6_slot_7`
- C349. `riftbrek:mail/room_6_slot_8`
- C350. `riftbrek:mail/room_7`
- C351. `riftbrek:mail/room_7_slot_0`
- C352. `riftbrek:mail/room_7_slot_1`
- C353. `riftbrek:mail/room_7_slot_2`
- C354. `riftbrek:mail/room_7_slot_3`
- C355. `riftbrek:mail/room_7_slot_4`
- C356. `riftbrek:mail/room_7_slot_5`
- C357. `riftbrek:mail/room_7_slot_6`
- C358. `riftbrek:mail/room_7_slot_7`
- C359. `riftbrek:mail/room_7_slot_8`
- C360. `riftbrek:mail/room_8`
- C361. `riftbrek:mail/room_8_slot_0`
- C362. `riftbrek:mail/room_8_slot_1`
- C363. `riftbrek:mail/room_8_slot_2`
- C364. `riftbrek:mail/room_8_slot_3`
- C365. `riftbrek:mail/room_8_slot_4`
- C366. `riftbrek:mail/room_8_slot_5`
- C367. `riftbrek:mail/room_8_slot_6`
- C368. `riftbrek:mail/room_8_slot_7`
- C369. `riftbrek:mail/room_8_slot_8`
- C370. `riftbrek:mail/room_9`
- C371. `riftbrek:mail/room_9_slot_0`
- C372. `riftbrek:mail/room_9_slot_1`
- C373. `riftbrek:mail/room_9_slot_2`
- C374. `riftbrek:mail/room_9_slot_3`
- C375. `riftbrek:mail/room_9_slot_4`
- C376. `riftbrek:mail/room_9_slot_5`
- C377. `riftbrek:mail/room_9_slot_6`
- C378. `riftbrek:mail/room_9_slot_7`
- C379. `riftbrek:mail/room_9_slot_8`
- C380. `riftbrek:privacy/room_1`
- C381. `riftbrek:privacy/room_10`
- C382. `riftbrek:privacy/room_11`
- C383. `riftbrek:privacy/room_12`
- C384. `riftbrek:privacy/room_13`
- C385. `riftbrek:privacy/room_14`
- C386. `riftbrek:privacy/room_15`
- C387. `riftbrek:privacy/room_16`
- C388. `riftbrek:privacy/room_17`
- C389. `riftbrek:privacy/room_18`
- C390. `riftbrek:privacy/room_19`
- C391. `riftbrek:privacy/room_2`
- C392. `riftbrek:privacy/room_20`
- C393. `riftbrek:privacy/room_21`
- C394. `riftbrek:privacy/room_22`
- C395. `riftbrek:privacy/room_3`
- C396. `riftbrek:privacy/room_4`
- C397. `riftbrek:privacy/room_5`
- C398. `riftbrek:privacy/room_6`
- C399. `riftbrek:privacy/room_7`
- C400. `riftbrek:privacy/room_8`
- C401. `riftbrek:privacy/room_9`
- C402. `riftbrek:storage/sort_a`
- C403. `riftbrek:storage/sort_b`
- C404. `riftbrek:zone/cbs_eject`
- C405. `riftbrek:zone/cbs_hit`
- C406. `riftbrek:zone/chunkban`
- C407. `riftbrek:zone/lockdown_siren`
- C408. `riftbrek:zone/visible`
- C409. `riftbrek:zone/visible_wide`

## 5. Full function index (what is public vs internal)

| function | class |
|---|---|
| `riftbrek:admin/_clear_roles` | internal - do not call by hand |
| `riftbrek:admin/_faction_abstracters` | internal - do not call by hand |
| `riftbrek:admin/_faction_archivist` | internal - do not call by hand |
| `riftbrek:admin/_faction_birds` | internal - do not call by hand |
| `riftbrek:admin/_faction_unstables` | internal - do not call by hand |
| `riftbrek:admin/_faction_veil` | internal - do not call by hand |
| `riftbrek:admin/_faction_wildcards` | internal - do not call by hand |
| `riftbrek:admin/_newid` | internal - do not call by hand |
| `riftbrek:admin/_setrank` | internal - do not call by hand |
| `riftbrek:admin/_setrank2` | internal - do not call by hand |
| `riftbrek:admin/_setstatus` | internal - do not call by hand |
| `riftbrek:admin/_setstatus2` | internal - do not call by hand |
| `riftbrek:admin/_write` | internal - do not call by hand |
| `riftbrek:admin/blimp_off` | public (player/OP) |
| `riftbrek:admin/blimp_on` | public (player/OP) |
| `riftbrek:admin/board_refresh` | public (player/OP) |
| `riftbrek:admin/fleet_off` | internal - do not call by hand |
| `riftbrek:admin/fleet_off_a` | internal - do not call by hand |
| `riftbrek:admin/fleet_off_b` | internal - do not call by hand |
| `riftbrek:admin/fleet_off_c` | internal - do not call by hand |
| `riftbrek:admin/fleet_on` | internal - do not call by hand |
| `riftbrek:admin/fleet_on_a` | internal - do not call by hand |
| `riftbrek:admin/fleet_on_b` | internal - do not call by hand |
| `riftbrek:admin/fleet_on_c` | internal - do not call by hand |
| `riftbrek:admin/forceload` | public (player/OP) |
| `riftbrek:admin/forceload_do` | internal - do not call by hand |
| `riftbrek:admin/forceload_off` | public (player/OP) |
| `riftbrek:admin/forceload_remove_do` | internal - do not call by hand |
| `riftbrek:admin/gate_test` | public (player/OP) |
| `riftbrek:admin/incident` | public (player/OP) |
| `riftbrek:admin/leader` | public (player/OP) |
| `riftbrek:admin/leader_apply` | internal - do not call by hand |
| `riftbrek:admin/lockdown_off` | public (player/OP) |
| `riftbrek:admin/lockdown_on` | public (player/OP) |
| `riftbrek:admin/origin` | public (player/OP) |
| `riftbrek:admin/recover` | public (player/OP) |
| `riftbrek:admin/register` | public (player/OP) |
| `riftbrek:admin/register_apply` | internal - do not call by hand |
| `riftbrek:admin/reset_cooldown` | public (player/OP) |
| `riftbrek:admin/restore` | public (player/OP) |
| `riftbrek:admin/restore_apply` | internal - do not call by hand |
| `riftbrek:admin/revoke` | public (player/OP) |
| `riftbrek:admin/revoke_apply` | internal - do not call by hand |
| `riftbrek:admin/revoke_credential` | public (player/OP) |
| `riftbrek:admin/royal` | public (player/OP) |
| `riftbrek:admin/royal_apply` | internal - do not call by hand |
| `riftbrek:admin/suspend_apply` | internal - do not call by hand |
| `riftbrek:admin/unleader` | public (player/OP) |
| `riftbrek:admin/unleader_apply` | internal - do not call by hand |
| `riftbrek:admin/unroyal` | public (player/OP) |
| `riftbrek:admin/unroyal_apply` | internal - do not call by hand |
| `riftbrek:admin/verify` | public (player/OP) |
| `riftbrek:admin/verify_do` | internal - do not call by hand |
| `riftbrek:admin/visitor` | public (player/OP) |
| `riftbrek:admin/visitor_apply` | internal - do not call by hand |
| `riftbrek:admin/visitor_grant` | internal - do not call by hand |
| `riftbrek:admin/whois` | public (player/OP) |
| `riftbrek:alarm/all` | command-block only |
| `riftbrek:alarm/emergency_1` | command-block only |
| `riftbrek:alarm/emergency_10` | command-block only |
| `riftbrek:alarm/emergency_11` | command-block only |
| `riftbrek:alarm/emergency_12` | command-block only |
| `riftbrek:alarm/emergency_13` | command-block only |
| `riftbrek:alarm/emergency_14` | command-block only |
| `riftbrek:alarm/emergency_15` | command-block only |
| `riftbrek:alarm/emergency_16` | command-block only |
| `riftbrek:alarm/emergency_17` | command-block only |
| `riftbrek:alarm/emergency_18` | command-block only |
| `riftbrek:alarm/emergency_19` | command-block only |
| `riftbrek:alarm/emergency_2` | command-block only |
| `riftbrek:alarm/emergency_20` | command-block only |
| `riftbrek:alarm/emergency_21` | command-block only |
| `riftbrek:alarm/emergency_22` | command-block only |
| `riftbrek:alarm/emergency_3` | command-block only |
| `riftbrek:alarm/emergency_4` | command-block only |
| `riftbrek:alarm/emergency_5` | command-block only |
| `riftbrek:alarm/emergency_6` | command-block only |
| `riftbrek:alarm/emergency_7` | command-block only |
| `riftbrek:alarm/emergency_8` | command-block only |
| `riftbrek:alarm/emergency_9` | command-block only |
| `riftbrek:alarm/intrusion` | command-block only |
| `riftbrek:alarm/intrusion_fire` | command-block only |
| `riftbrek:alarm/reset` | command-block only |
| `riftbrek:alarm/ring_here` | command-block only |
| `riftbrek:alarm/room_1` | command-block only |
| `riftbrek:alarm/room_10` | command-block only |
| `riftbrek:alarm/room_11` | command-block only |
| `riftbrek:alarm/room_12` | command-block only |
| `riftbrek:alarm/room_13` | command-block only |
| `riftbrek:alarm/room_14` | command-block only |
| `riftbrek:alarm/room_15` | command-block only |
| `riftbrek:alarm/room_16` | command-block only |
| `riftbrek:alarm/room_17` | command-block only |
| `riftbrek:alarm/room_18` | command-block only |
| `riftbrek:alarm/room_19` | command-block only |
| `riftbrek:alarm/room_2` | command-block only |
| `riftbrek:alarm/room_20` | command-block only |
| `riftbrek:alarm/room_21` | command-block only |
| `riftbrek:alarm/room_22` | command-block only |
| `riftbrek:alarm/room_3` | command-block only |
| `riftbrek:alarm/room_4` | command-block only |
| `riftbrek:alarm/room_5` | command-block only |
| `riftbrek:alarm/room_6` | command-block only |
| `riftbrek:alarm/room_7` | command-block only |
| `riftbrek:alarm/room_8` | command-block only |
| `riftbrek:alarm/room_9` | command-block only |
| `riftbrek:blimp/board` | internal - do not call by hand |
| `riftbrek:blimp/fleet_a0_tick` | internal - do not call by hand |
| `riftbrek:blimp/fleet_a1_tick` | internal - do not call by hand |
| `riftbrek:blimp/fleet_a2_tick` | internal - do not call by hand |
| `riftbrek:blimp/fleet_a3_tick` | internal - do not call by hand |
| `riftbrek:blimp/fleet_a_off` | internal - do not call by hand |
| `riftbrek:blimp/fleet_a_on` | internal - do not call by hand |
| `riftbrek:blimp/fleet_a_tick` | internal - do not call by hand |
| `riftbrek:blimp/fleet_b0_tick` | internal - do not call by hand |
| `riftbrek:blimp/fleet_b1_tick` | internal - do not call by hand |
| `riftbrek:blimp/fleet_b2_tick` | internal - do not call by hand |
| `riftbrek:blimp/fleet_b3_tick` | internal - do not call by hand |
| `riftbrek:blimp/fleet_b_off` | internal - do not call by hand |
| `riftbrek:blimp/fleet_b_on` | internal - do not call by hand |
| `riftbrek:blimp/fleet_b_tick` | internal - do not call by hand |
| `riftbrek:blimp/fleet_c0_tick` | internal - do not call by hand |
| `riftbrek:blimp/fleet_c1_tick` | internal - do not call by hand |
| `riftbrek:blimp/fleet_c2_tick` | internal - do not call by hand |
| `riftbrek:blimp/fleet_c3_tick` | internal - do not call by hand |
| `riftbrek:blimp/fleet_c_off` | internal - do not call by hand |
| `riftbrek:blimp/fleet_c_on` | internal - do not call by hand |
| `riftbrek:blimp/fleet_c_tick` | internal - do not call by hand |
| `riftbrek:blimp/fleet_tick_all` | internal - do not call by hand |
| `riftbrek:blimp/left` | internal - do not call by hand |
| `riftbrek:blimp/mount` | internal - do not call by hand |
| `riftbrek:blimp/move_n` | internal - do not call by hand |
| `riftbrek:blimp/move_s` | internal - do not call by hand |
| `riftbrek:blimp/next` | internal - do not call by hand |
| `riftbrek:blimp/run` | internal - do not call by hand |
| `riftbrek:blimp/spawn` | internal - do not call by hand |
| `riftbrek:blimp/tick` | internal - do not call by hand |
| `riftbrek:book/fetch` | internal - do not call by hand |
| `riftbrek:book/give_member` | internal - do not call by hand |
| `riftbrek:book/give_veil` | internal - do not call by hand |
| `riftbrek:book/give_visitor` | internal - do not call by hand |
| `riftbrek:book/issue` | public (player/OP) |
| `riftbrek:door/abstracters` | command-block only |
| `riftbrek:door/abstracters_w12` | command-block only |
| `riftbrek:door/abstracters_w6` | command-block only |
| `riftbrek:door/archivist` | command-block only |
| `riftbrek:door/archivist_w12` | command-block only |
| `riftbrek:door/archivist_w6` | command-block only |
| `riftbrek:door/birds` | command-block only |
| `riftbrek:door/birds_w12` | command-block only |
| `riftbrek:door/birds_w6` | command-block only |
| `riftbrek:door/leader` | command-block only |
| `riftbrek:door/leader_w12` | command-block only |
| `riftbrek:door/leader_w6` | command-block only |
| `riftbrek:door/member` | command-block only |
| `riftbrek:door/member_w12` | command-block only |
| `riftbrek:door/member_w6` | command-block only |
| `riftbrek:door/public` | command-block only |
| `riftbrek:door/public_w12` | command-block only |
| `riftbrek:door/public_w6` | command-block only |
| `riftbrek:door/royal` | command-block only |
| `riftbrek:door/royal_w12` | command-block only |
| `riftbrek:door/royal_w6` | command-block only |
| `riftbrek:door/unstables` | command-block only |
| `riftbrek:door/unstables_w12` | command-block only |
| `riftbrek:door/unstables_w6` | command-block only |
| `riftbrek:door/veil` | command-block only |
| `riftbrek:door/veil_w12` | command-block only |
| `riftbrek:door/veil_w6` | command-block only |
| `riftbrek:door/wildcards` | command-block only |
| `riftbrek:door/wildcards_w12` | command-block only |
| `riftbrek:door/wildcards_w6` | command-block only |
| `riftbrek:industry/farm_beetroot` | internal - do not call by hand |
| `riftbrek:industry/farm_carrots` | internal - do not call by hand |
| `riftbrek:industry/farm_potatoes` | internal - do not call by hand |
| `riftbrek:industry/farm_tick` | internal - do not call by hand |
| `riftbrek:industry/farm_wheat` | internal - do not call by hand |
| `riftbrek:industry/pulse_crafter` | command-block only |
| `riftbrek:industry/run_farm_beetroot` | command-block only |
| `riftbrek:industry/run_farm_carrots` | command-block only |
| `riftbrek:industry/run_farm_potatoes` | command-block only |
| `riftbrek:industry/run_farm_wheat` | command-block only |
| `riftbrek:industry/synth_blaze` | internal - do not call by hand |
| `riftbrek:industry/synth_bones` | internal - do not call by hand |
| `riftbrek:industry/synth_flesh` | internal - do not call by hand |
| `riftbrek:industry/synth_gunpowder` | internal - do not call by hand |
| `riftbrek:industry/synth_iron` | internal - do not call by hand |
| `riftbrek:industry/synth_pearls` | internal - do not call by hand |
| `riftbrek:industry/synth_string` | internal - do not call by hand |
| `riftbrek:industry/synth_witch` | internal - do not call by hand |
| `riftbrek:kit/_cooldown_check` | internal - do not call by hand |
| `riftbrek:kit/_done` | internal - do not call by hand |
| `riftbrek:kit/abstracters` | public (player/OP) |
| `riftbrek:kit/archivist` | public (player/OP) |
| `riftbrek:kit/birds` | public (player/OP) |
| `riftbrek:kit/creator_flame` | public (player/OP) |
| `riftbrek:kit/creator_manepear` | public (player/OP) |
| `riftbrek:kit/creator_parrot` | public (player/OP) |
| `riftbrek:kit/creator_spoke` | public (player/OP) |
| `riftbrek:kit/creator_theobald` | public (player/OP) |
| `riftbrek:kit/creator_wemmbu` | public (player/OP) |
| `riftbrek:kit/internal_abstracters` | internal - do not call by hand |
| `riftbrek:kit/internal_archivist` | internal - do not call by hand |
| `riftbrek:kit/internal_birds` | internal - do not call by hand |
| `riftbrek:kit/internal_creator_flame` | internal - do not call by hand |
| `riftbrek:kit/internal_creator_manepear` | internal - do not call by hand |
| `riftbrek:kit/internal_creator_parrot` | internal - do not call by hand |
| `riftbrek:kit/internal_creator_spoke` | internal - do not call by hand |
| `riftbrek:kit/internal_creator_theobald` | internal - do not call by hand |
| `riftbrek:kit/internal_creator_wemmbu` | internal - do not call by hand |
| `riftbrek:kit/internal_unstables` | internal - do not call by hand |
| `riftbrek:kit/internal_veil` | internal - do not call by hand |
| `riftbrek:kit/internal_wildcards` | internal - do not call by hand |
| `riftbrek:kit/pad_abstracters` | command-block only |
| `riftbrek:kit/pad_archivist` | command-block only |
| `riftbrek:kit/pad_birds` | command-block only |
| `riftbrek:kit/pad_creator_flame` | command-block only |
| `riftbrek:kit/pad_creator_manepear` | command-block only |
| `riftbrek:kit/pad_creator_parrot` | command-block only |
| `riftbrek:kit/pad_creator_spoke` | command-block only |
| `riftbrek:kit/pad_creator_theobald` | command-block only |
| `riftbrek:kit/pad_creator_wemmbu` | command-block only |
| `riftbrek:kit/pad_unstables` | command-block only |
| `riftbrek:kit/pad_veil` | command-block only |
| `riftbrek:kit/pad_wildcards` | command-block only |
| `riftbrek:kit/request` | public (player/OP) |
| `riftbrek:kit/unstables` | public (player/OP) |
| `riftbrek:kit/veil` | public (player/OP) |
| `riftbrek:kit/wildcards` | public (player/OP) |
| `riftbrek:launch/go` | command-block only |
| `riftbrek:launch/no_elytra` | command-block only |
| `riftbrek:launch/pad` | command-block only |
| `riftbrek:load` | internal - do not call by hand |
| `riftbrek:log/entry_kit` | internal - do not call by hand |
| `riftbrek:log/entry_leader` | internal - do not call by hand |
| `riftbrek:log/entry_register` | internal - do not call by hand |
| `riftbrek:log/entry_revoke` | internal - do not call by hand |
| `riftbrek:log/entry_royal` | internal - do not call by hand |
| `riftbrek:mail/move` | command-block only |
| `riftbrek:mail/room_1` | command-block only |
| `riftbrek:mail/room_10` | command-block only |
| `riftbrek:mail/room_10_slot_0` | command-block only |
| `riftbrek:mail/room_10_slot_1` | command-block only |
| `riftbrek:mail/room_10_slot_2` | command-block only |
| `riftbrek:mail/room_10_slot_3` | command-block only |
| `riftbrek:mail/room_10_slot_4` | command-block only |
| `riftbrek:mail/room_10_slot_5` | command-block only |
| `riftbrek:mail/room_10_slot_6` | command-block only |
| `riftbrek:mail/room_10_slot_7` | command-block only |
| `riftbrek:mail/room_10_slot_8` | command-block only |
| `riftbrek:mail/room_11` | command-block only |
| `riftbrek:mail/room_11_slot_0` | command-block only |
| `riftbrek:mail/room_11_slot_1` | command-block only |
| `riftbrek:mail/room_11_slot_2` | command-block only |
| `riftbrek:mail/room_11_slot_3` | command-block only |
| `riftbrek:mail/room_11_slot_4` | command-block only |
| `riftbrek:mail/room_11_slot_5` | command-block only |
| `riftbrek:mail/room_11_slot_6` | command-block only |
| `riftbrek:mail/room_11_slot_7` | command-block only |
| `riftbrek:mail/room_11_slot_8` | command-block only |
| `riftbrek:mail/room_12` | command-block only |
| `riftbrek:mail/room_12_slot_0` | command-block only |
| `riftbrek:mail/room_12_slot_1` | command-block only |
| `riftbrek:mail/room_12_slot_2` | command-block only |
| `riftbrek:mail/room_12_slot_3` | command-block only |
| `riftbrek:mail/room_12_slot_4` | command-block only |
| `riftbrek:mail/room_12_slot_5` | command-block only |
| `riftbrek:mail/room_12_slot_6` | command-block only |
| `riftbrek:mail/room_12_slot_7` | command-block only |
| `riftbrek:mail/room_12_slot_8` | command-block only |
| `riftbrek:mail/room_13` | command-block only |
| `riftbrek:mail/room_13_slot_0` | command-block only |
| `riftbrek:mail/room_13_slot_1` | command-block only |
| `riftbrek:mail/room_13_slot_2` | command-block only |
| `riftbrek:mail/room_13_slot_3` | command-block only |
| `riftbrek:mail/room_13_slot_4` | command-block only |
| `riftbrek:mail/room_13_slot_5` | command-block only |
| `riftbrek:mail/room_13_slot_6` | command-block only |
| `riftbrek:mail/room_13_slot_7` | command-block only |
| `riftbrek:mail/room_13_slot_8` | command-block only |
| `riftbrek:mail/room_14` | command-block only |
| `riftbrek:mail/room_14_slot_0` | command-block only |
| `riftbrek:mail/room_14_slot_1` | command-block only |
| `riftbrek:mail/room_14_slot_2` | command-block only |
| `riftbrek:mail/room_14_slot_3` | command-block only |
| `riftbrek:mail/room_14_slot_4` | command-block only |
| `riftbrek:mail/room_14_slot_5` | command-block only |
| `riftbrek:mail/room_14_slot_6` | command-block only |
| `riftbrek:mail/room_14_slot_7` | command-block only |
| `riftbrek:mail/room_14_slot_8` | command-block only |
| `riftbrek:mail/room_15` | command-block only |
| `riftbrek:mail/room_15_slot_0` | command-block only |
| `riftbrek:mail/room_15_slot_1` | command-block only |
| `riftbrek:mail/room_15_slot_2` | command-block only |
| `riftbrek:mail/room_15_slot_3` | command-block only |
| `riftbrek:mail/room_15_slot_4` | command-block only |
| `riftbrek:mail/room_15_slot_5` | command-block only |
| `riftbrek:mail/room_15_slot_6` | command-block only |
| `riftbrek:mail/room_15_slot_7` | command-block only |
| `riftbrek:mail/room_15_slot_8` | command-block only |
| `riftbrek:mail/room_16` | command-block only |
| `riftbrek:mail/room_16_slot_0` | command-block only |
| `riftbrek:mail/room_16_slot_1` | command-block only |
| `riftbrek:mail/room_16_slot_2` | command-block only |
| `riftbrek:mail/room_16_slot_3` | command-block only |
| `riftbrek:mail/room_16_slot_4` | command-block only |
| `riftbrek:mail/room_16_slot_5` | command-block only |
| `riftbrek:mail/room_16_slot_6` | command-block only |
| `riftbrek:mail/room_16_slot_7` | command-block only |
| `riftbrek:mail/room_16_slot_8` | command-block only |
| `riftbrek:mail/room_17` | command-block only |
| `riftbrek:mail/room_17_slot_0` | command-block only |
| `riftbrek:mail/room_17_slot_1` | command-block only |
| `riftbrek:mail/room_17_slot_2` | command-block only |
| `riftbrek:mail/room_17_slot_3` | command-block only |
| `riftbrek:mail/room_17_slot_4` | command-block only |
| `riftbrek:mail/room_17_slot_5` | command-block only |
| `riftbrek:mail/room_17_slot_6` | command-block only |
| `riftbrek:mail/room_17_slot_7` | command-block only |
| `riftbrek:mail/room_17_slot_8` | command-block only |
| `riftbrek:mail/room_18` | command-block only |
| `riftbrek:mail/room_18_slot_0` | command-block only |
| `riftbrek:mail/room_18_slot_1` | command-block only |
| `riftbrek:mail/room_18_slot_2` | command-block only |
| `riftbrek:mail/room_18_slot_3` | command-block only |
| `riftbrek:mail/room_18_slot_4` | command-block only |
| `riftbrek:mail/room_18_slot_5` | command-block only |
| `riftbrek:mail/room_18_slot_6` | command-block only |
| `riftbrek:mail/room_18_slot_7` | command-block only |
| `riftbrek:mail/room_18_slot_8` | command-block only |
| `riftbrek:mail/room_19` | command-block only |
| `riftbrek:mail/room_19_slot_0` | command-block only |
| `riftbrek:mail/room_19_slot_1` | command-block only |
| `riftbrek:mail/room_19_slot_2` | command-block only |
| `riftbrek:mail/room_19_slot_3` | command-block only |
| `riftbrek:mail/room_19_slot_4` | command-block only |
| `riftbrek:mail/room_19_slot_5` | command-block only |
| `riftbrek:mail/room_19_slot_6` | command-block only |
| `riftbrek:mail/room_19_slot_7` | command-block only |
| `riftbrek:mail/room_19_slot_8` | command-block only |
| `riftbrek:mail/room_1_slot_0` | command-block only |
| `riftbrek:mail/room_1_slot_1` | command-block only |
| `riftbrek:mail/room_1_slot_2` | command-block only |
| `riftbrek:mail/room_1_slot_3` | command-block only |
| `riftbrek:mail/room_1_slot_4` | command-block only |
| `riftbrek:mail/room_1_slot_5` | command-block only |
| `riftbrek:mail/room_1_slot_6` | command-block only |
| `riftbrek:mail/room_1_slot_7` | command-block only |
| `riftbrek:mail/room_1_slot_8` | command-block only |
| `riftbrek:mail/room_2` | command-block only |
| `riftbrek:mail/room_20` | command-block only |
| `riftbrek:mail/room_20_slot_0` | command-block only |
| `riftbrek:mail/room_20_slot_1` | command-block only |
| `riftbrek:mail/room_20_slot_2` | command-block only |
| `riftbrek:mail/room_20_slot_3` | command-block only |
| `riftbrek:mail/room_20_slot_4` | command-block only |
| `riftbrek:mail/room_20_slot_5` | command-block only |
| `riftbrek:mail/room_20_slot_6` | command-block only |
| `riftbrek:mail/room_20_slot_7` | command-block only |
| `riftbrek:mail/room_20_slot_8` | command-block only |
| `riftbrek:mail/room_21` | command-block only |
| `riftbrek:mail/room_21_slot_0` | command-block only |
| `riftbrek:mail/room_21_slot_1` | command-block only |
| `riftbrek:mail/room_21_slot_2` | command-block only |
| `riftbrek:mail/room_21_slot_3` | command-block only |
| `riftbrek:mail/room_21_slot_4` | command-block only |
| `riftbrek:mail/room_21_slot_5` | command-block only |
| `riftbrek:mail/room_21_slot_6` | command-block only |
| `riftbrek:mail/room_21_slot_7` | command-block only |
| `riftbrek:mail/room_21_slot_8` | command-block only |
| `riftbrek:mail/room_22` | command-block only |
| `riftbrek:mail/room_22_slot_0` | command-block only |
| `riftbrek:mail/room_22_slot_1` | command-block only |
| `riftbrek:mail/room_22_slot_2` | command-block only |
| `riftbrek:mail/room_22_slot_3` | command-block only |
| `riftbrek:mail/room_22_slot_4` | command-block only |
| `riftbrek:mail/room_22_slot_5` | command-block only |
| `riftbrek:mail/room_22_slot_6` | command-block only |
| `riftbrek:mail/room_22_slot_7` | command-block only |
| `riftbrek:mail/room_22_slot_8` | command-block only |
| `riftbrek:mail/room_2_slot_0` | command-block only |
| `riftbrek:mail/room_2_slot_1` | command-block only |
| `riftbrek:mail/room_2_slot_2` | command-block only |
| `riftbrek:mail/room_2_slot_3` | command-block only |
| `riftbrek:mail/room_2_slot_4` | command-block only |
| `riftbrek:mail/room_2_slot_5` | command-block only |
| `riftbrek:mail/room_2_slot_6` | command-block only |
| `riftbrek:mail/room_2_slot_7` | command-block only |
| `riftbrek:mail/room_2_slot_8` | command-block only |
| `riftbrek:mail/room_3` | command-block only |
| `riftbrek:mail/room_3_slot_0` | command-block only |
| `riftbrek:mail/room_3_slot_1` | command-block only |
| `riftbrek:mail/room_3_slot_2` | command-block only |
| `riftbrek:mail/room_3_slot_3` | command-block only |
| `riftbrek:mail/room_3_slot_4` | command-block only |
| `riftbrek:mail/room_3_slot_5` | command-block only |
| `riftbrek:mail/room_3_slot_6` | command-block only |
| `riftbrek:mail/room_3_slot_7` | command-block only |
| `riftbrek:mail/room_3_slot_8` | command-block only |
| `riftbrek:mail/room_4` | command-block only |
| `riftbrek:mail/room_4_slot_0` | command-block only |
| `riftbrek:mail/room_4_slot_1` | command-block only |
| `riftbrek:mail/room_4_slot_2` | command-block only |
| `riftbrek:mail/room_4_slot_3` | command-block only |
| `riftbrek:mail/room_4_slot_4` | command-block only |
| `riftbrek:mail/room_4_slot_5` | command-block only |
| `riftbrek:mail/room_4_slot_6` | command-block only |
| `riftbrek:mail/room_4_slot_7` | command-block only |
| `riftbrek:mail/room_4_slot_8` | command-block only |
| `riftbrek:mail/room_5` | command-block only |
| `riftbrek:mail/room_5_slot_0` | command-block only |
| `riftbrek:mail/room_5_slot_1` | command-block only |
| `riftbrek:mail/room_5_slot_2` | command-block only |
| `riftbrek:mail/room_5_slot_3` | command-block only |
| `riftbrek:mail/room_5_slot_4` | command-block only |
| `riftbrek:mail/room_5_slot_5` | command-block only |
| `riftbrek:mail/room_5_slot_6` | command-block only |
| `riftbrek:mail/room_5_slot_7` | command-block only |
| `riftbrek:mail/room_5_slot_8` | command-block only |
| `riftbrek:mail/room_6` | command-block only |
| `riftbrek:mail/room_6_slot_0` | command-block only |
| `riftbrek:mail/room_6_slot_1` | command-block only |
| `riftbrek:mail/room_6_slot_2` | command-block only |
| `riftbrek:mail/room_6_slot_3` | command-block only |
| `riftbrek:mail/room_6_slot_4` | command-block only |
| `riftbrek:mail/room_6_slot_5` | command-block only |
| `riftbrek:mail/room_6_slot_6` | command-block only |
| `riftbrek:mail/room_6_slot_7` | command-block only |
| `riftbrek:mail/room_6_slot_8` | command-block only |
| `riftbrek:mail/room_7` | command-block only |
| `riftbrek:mail/room_7_slot_0` | command-block only |
| `riftbrek:mail/room_7_slot_1` | command-block only |
| `riftbrek:mail/room_7_slot_2` | command-block only |
| `riftbrek:mail/room_7_slot_3` | command-block only |
| `riftbrek:mail/room_7_slot_4` | command-block only |
| `riftbrek:mail/room_7_slot_5` | command-block only |
| `riftbrek:mail/room_7_slot_6` | command-block only |
| `riftbrek:mail/room_7_slot_7` | command-block only |
| `riftbrek:mail/room_7_slot_8` | command-block only |
| `riftbrek:mail/room_8` | command-block only |
| `riftbrek:mail/room_8_slot_0` | command-block only |
| `riftbrek:mail/room_8_slot_1` | command-block only |
| `riftbrek:mail/room_8_slot_2` | command-block only |
| `riftbrek:mail/room_8_slot_3` | command-block only |
| `riftbrek:mail/room_8_slot_4` | command-block only |
| `riftbrek:mail/room_8_slot_5` | command-block only |
| `riftbrek:mail/room_8_slot_6` | command-block only |
| `riftbrek:mail/room_8_slot_7` | command-block only |
| `riftbrek:mail/room_8_slot_8` | command-block only |
| `riftbrek:mail/room_9` | command-block only |
| `riftbrek:mail/room_9_slot_0` | command-block only |
| `riftbrek:mail/room_9_slot_1` | command-block only |
| `riftbrek:mail/room_9_slot_2` | command-block only |
| `riftbrek:mail/room_9_slot_3` | command-block only |
| `riftbrek:mail/room_9_slot_4` | command-block only |
| `riftbrek:mail/room_9_slot_5` | command-block only |
| `riftbrek:mail/room_9_slot_6` | command-block only |
| `riftbrek:mail/room_9_slot_7` | command-block only |
| `riftbrek:mail/room_9_slot_8` | command-block only |
| `riftbrek:msg/_hist_faction` | public (player/OP) |
| `riftbrek:msg/_hist_iter` | public (player/OP) |
| `riftbrek:msg/announce` | public (player/OP) |
| `riftbrek:msg/board` | public (player/OP) |
| `riftbrek:msg/book_all` | public (player/OP) |
| `riftbrek:msg/book_announce` | public (player/OP) |
| `riftbrek:msg/book_faction` | public (player/OP) |
| `riftbrek:msg/book_leaders` | public (player/OP) |
| `riftbrek:msg/do_all` | public (player/OP) |
| `riftbrek:msg/do_announce` | public (player/OP) |
| `riftbrek:msg/do_faction` | public (player/OP) |
| `riftbrek:msg/do_leaders` | public (player/OP) |
| `riftbrek:msg/history` | public (player/OP) |
| `riftbrek:msg/quick_0` | public (player/OP) |
| `riftbrek:msg/quick_1` | public (player/OP) |
| `riftbrek:msg/quick_2` | public (player/OP) |
| `riftbrek:msg/quick_3` | public (player/OP) |
| `riftbrek:msg/quick_4` | public (player/OP) |
| `riftbrek:msg/quick_5` | public (player/OP) |
| `riftbrek:msg/quick_6` | public (player/OP) |
| `riftbrek:msg/quick_7` | public (player/OP) |
| `riftbrek:msg/read_last` | public (player/OP) |
| `riftbrek:msg/to_all` | public (player/OP) |
| `riftbrek:msg/to_faction` | public (player/OP) |
| `riftbrek:msg/to_leaders` | public (player/OP) |
| `riftbrek:paste/init` | internal - do not call by hand |
| `riftbrek:paste/status` | internal - do not call by hand |
| `riftbrek:paste/zone_10_check` | internal - do not call by hand |
| `riftbrek:paste/zone_10_off` | internal - do not call by hand |
| `riftbrek:paste/zone_10_on` | internal - do not call by hand |
| `riftbrek:paste/zone_10_tp` | internal - do not call by hand |
| `riftbrek:paste/zone_11_check` | internal - do not call by hand |
| `riftbrek:paste/zone_11_off` | internal - do not call by hand |
| `riftbrek:paste/zone_11_on` | internal - do not call by hand |
| `riftbrek:paste/zone_11_tp` | internal - do not call by hand |
| `riftbrek:paste/zone_12_check` | internal - do not call by hand |
| `riftbrek:paste/zone_12_off` | internal - do not call by hand |
| `riftbrek:paste/zone_12_on` | internal - do not call by hand |
| `riftbrek:paste/zone_12_tp` | internal - do not call by hand |
| `riftbrek:paste/zone_13_check` | internal - do not call by hand |
| `riftbrek:paste/zone_13_off` | internal - do not call by hand |
| `riftbrek:paste/zone_13_on` | internal - do not call by hand |
| `riftbrek:paste/zone_13_tp` | internal - do not call by hand |
| `riftbrek:paste/zone_14_check` | internal - do not call by hand |
| `riftbrek:paste/zone_14_off` | internal - do not call by hand |
| `riftbrek:paste/zone_14_on` | internal - do not call by hand |
| `riftbrek:paste/zone_14_tp` | internal - do not call by hand |
| `riftbrek:paste/zone_15_check` | internal - do not call by hand |
| `riftbrek:paste/zone_15_off` | internal - do not call by hand |
| `riftbrek:paste/zone_15_on` | internal - do not call by hand |
| `riftbrek:paste/zone_15_tp` | internal - do not call by hand |
| `riftbrek:paste/zone_16_check` | internal - do not call by hand |
| `riftbrek:paste/zone_16_off` | internal - do not call by hand |
| `riftbrek:paste/zone_16_on` | internal - do not call by hand |
| `riftbrek:paste/zone_16_tp` | internal - do not call by hand |
| `riftbrek:paste/zone_17_check` | internal - do not call by hand |
| `riftbrek:paste/zone_17_off` | internal - do not call by hand |
| `riftbrek:paste/zone_17_on` | internal - do not call by hand |
| `riftbrek:paste/zone_17_tp` | internal - do not call by hand |
| `riftbrek:paste/zone_18_check` | internal - do not call by hand |
| `riftbrek:paste/zone_18_off` | internal - do not call by hand |
| `riftbrek:paste/zone_18_on` | internal - do not call by hand |
| `riftbrek:paste/zone_18_tp` | internal - do not call by hand |
| `riftbrek:paste/zone_19_check` | internal - do not call by hand |
| `riftbrek:paste/zone_19_off` | internal - do not call by hand |
| `riftbrek:paste/zone_19_on` | internal - do not call by hand |
| `riftbrek:paste/zone_19_tp` | internal - do not call by hand |
| `riftbrek:paste/zone_1_check` | internal - do not call by hand |
| `riftbrek:paste/zone_1_off` | internal - do not call by hand |
| `riftbrek:paste/zone_1_on` | internal - do not call by hand |
| `riftbrek:paste/zone_1_tp` | internal - do not call by hand |
| `riftbrek:paste/zone_20_check` | internal - do not call by hand |
| `riftbrek:paste/zone_20_off` | internal - do not call by hand |
| `riftbrek:paste/zone_20_on` | internal - do not call by hand |
| `riftbrek:paste/zone_20_tp` | internal - do not call by hand |
| `riftbrek:paste/zone_21_check` | internal - do not call by hand |
| `riftbrek:paste/zone_21_off` | internal - do not call by hand |
| `riftbrek:paste/zone_21_on` | internal - do not call by hand |
| `riftbrek:paste/zone_21_tp` | internal - do not call by hand |
| `riftbrek:paste/zone_22_check` | internal - do not call by hand |
| `riftbrek:paste/zone_22_off` | internal - do not call by hand |
| `riftbrek:paste/zone_22_on` | internal - do not call by hand |
| `riftbrek:paste/zone_22_tp` | internal - do not call by hand |
| `riftbrek:paste/zone_23_check` | internal - do not call by hand |
| `riftbrek:paste/zone_23_off` | internal - do not call by hand |
| `riftbrek:paste/zone_23_on` | internal - do not call by hand |
| `riftbrek:paste/zone_23_tp` | internal - do not call by hand |
| `riftbrek:paste/zone_24_check` | internal - do not call by hand |
| `riftbrek:paste/zone_24_off` | internal - do not call by hand |
| `riftbrek:paste/zone_24_on` | internal - do not call by hand |
| `riftbrek:paste/zone_24_tp` | internal - do not call by hand |
| `riftbrek:paste/zone_2_check` | internal - do not call by hand |
| `riftbrek:paste/zone_2_off` | internal - do not call by hand |
| `riftbrek:paste/zone_2_on` | internal - do not call by hand |
| `riftbrek:paste/zone_2_tp` | internal - do not call by hand |
| `riftbrek:paste/zone_3_check` | internal - do not call by hand |
| `riftbrek:paste/zone_3_off` | internal - do not call by hand |
| `riftbrek:paste/zone_3_on` | internal - do not call by hand |
| `riftbrek:paste/zone_3_tp` | internal - do not call by hand |
| `riftbrek:paste/zone_4_check` | internal - do not call by hand |
| `riftbrek:paste/zone_4_off` | internal - do not call by hand |
| `riftbrek:paste/zone_4_on` | internal - do not call by hand |
| `riftbrek:paste/zone_4_tp` | internal - do not call by hand |
| `riftbrek:paste/zone_5_check` | internal - do not call by hand |
| `riftbrek:paste/zone_5_off` | internal - do not call by hand |
| `riftbrek:paste/zone_5_on` | internal - do not call by hand |
| `riftbrek:paste/zone_5_tp` | internal - do not call by hand |
| `riftbrek:paste/zone_6_check` | internal - do not call by hand |
| `riftbrek:paste/zone_6_off` | internal - do not call by hand |
| `riftbrek:paste/zone_6_on` | internal - do not call by hand |
| `riftbrek:paste/zone_6_tp` | internal - do not call by hand |
| `riftbrek:paste/zone_7_check` | internal - do not call by hand |
| `riftbrek:paste/zone_7_off` | internal - do not call by hand |
| `riftbrek:paste/zone_7_on` | internal - do not call by hand |
| `riftbrek:paste/zone_7_tp` | internal - do not call by hand |
| `riftbrek:paste/zone_8_check` | internal - do not call by hand |
| `riftbrek:paste/zone_8_off` | internal - do not call by hand |
| `riftbrek:paste/zone_8_on` | internal - do not call by hand |
| `riftbrek:paste/zone_8_tp` | internal - do not call by hand |
| `riftbrek:paste/zone_9_check` | internal - do not call by hand |
| `riftbrek:paste/zone_9_off` | internal - do not call by hand |
| `riftbrek:paste/zone_9_on` | internal - do not call by hand |
| `riftbrek:paste/zone_9_tp` | internal - do not call by hand |
| `riftbrek:privacy/room_1` | command-block only |
| `riftbrek:privacy/room_10` | command-block only |
| `riftbrek:privacy/room_11` | command-block only |
| `riftbrek:privacy/room_12` | command-block only |
| `riftbrek:privacy/room_13` | command-block only |
| `riftbrek:privacy/room_14` | command-block only |
| `riftbrek:privacy/room_15` | command-block only |
| `riftbrek:privacy/room_16` | command-block only |
| `riftbrek:privacy/room_17` | command-block only |
| `riftbrek:privacy/room_18` | command-block only |
| `riftbrek:privacy/room_19` | command-block only |
| `riftbrek:privacy/room_2` | command-block only |
| `riftbrek:privacy/room_20` | command-block only |
| `riftbrek:privacy/room_21` | command-block only |
| `riftbrek:privacy/room_22` | command-block only |
| `riftbrek:privacy/room_3` | command-block only |
| `riftbrek:privacy/room_4` | command-block only |
| `riftbrek:privacy/room_5` | command-block only |
| `riftbrek:privacy/room_6` | command-block only |
| `riftbrek:privacy/room_7` | command-block only |
| `riftbrek:privacy/room_8` | command-block only |
| `riftbrek:privacy/room_9` | command-block only |
| `riftbrek:registry/fetch_show` | internal - do not call by hand |
| `riftbrek:registry/fetch_show_veil` | internal - do not call by hand |
| `riftbrek:registry/iter` | internal - do not call by hand |
| `riftbrek:registry/iter_veil` | internal - do not call by hand |
| `riftbrek:registry/leader_private` | public (player/OP) |
| `riftbrek:registry/public` | public (player/OP) |
| `riftbrek:registry/self` | public (player/OP) |
| `riftbrek:registry/self_fetch` | internal - do not call by hand |
| `riftbrek:registry/show` | internal - do not call by hand |
| `riftbrek:registry/show_full` | internal - do not call by hand |
| `riftbrek:registry/show_self` | internal - do not call by hand |
| `riftbrek:registry/show_veil` | internal - do not call by hand |
| `riftbrek:registry/veil_list` | internal - do not call by hand |
| `riftbrek:req/dispatch` | public (player/OP) |
| `riftbrek:req/help` | public (player/OP) |
| `riftbrek:setup/gamerules` | internal - do not call by hand |
| `riftbrek:setup/team_veil` | internal - do not call by hand |
| `riftbrek:setup/teams` | internal - do not call by hand |
| `riftbrek:storage/a/c00_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c00_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c00_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c00_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c00_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c01_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c01_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c01_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c01_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c01_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c02_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c02_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c02_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c02_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c02_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c03_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c03_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c03_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c03_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c03_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c04_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c04_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c04_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c04_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c04_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c05_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c05_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c05_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c05_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c05_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c06_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c06_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c06_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c06_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c06_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c07_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c07_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c07_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c07_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c07_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c08_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c08_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c08_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c08_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c08_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c09_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c09_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c09_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c09_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c09_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c10_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c10_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c10_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c10_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c10_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c11_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c11_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c11_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c11_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c11_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c12_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c12_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c12_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c12_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c12_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c13_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c13_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c13_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c13_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c13_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c14_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c14_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c14_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c14_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c14_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c15_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c15_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c15_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c15_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c15_s4` | internal - do not call by hand |
| `riftbrek:storage/a/c16_s0` | internal - do not call by hand |
| `riftbrek:storage/a/c16_s1` | internal - do not call by hand |
| `riftbrek:storage/a/c16_s2` | internal - do not call by hand |
| `riftbrek:storage/a/c16_s3` | internal - do not call by hand |
| `riftbrek:storage/a/c16_s4` | internal - do not call by hand |
| `riftbrek:storage/b/c00_s0` | internal - do not call by hand |
| `riftbrek:storage/b/c00_s1` | internal - do not call by hand |
| `riftbrek:storage/b/c00_s2` | internal - do not call by hand |
| `riftbrek:storage/b/c00_s3` | internal - do not call by hand |
| `riftbrek:storage/b/c00_s4` | internal - do not call by hand |
| `riftbrek:storage/b/c01_s0` | internal - do not call by hand |
| `riftbrek:storage/b/c01_s1` | internal - do not call by hand |
| `riftbrek:storage/b/c01_s2` | internal - do not call by hand |
| `riftbrek:storage/b/c01_s3` | internal - do not call by hand |
| `riftbrek:storage/b/c01_s4` | internal - do not call by hand |
| `riftbrek:storage/b/c02_s0` | internal - do not call by hand |
| `riftbrek:storage/b/c02_s1` | internal - do not call by hand |
| `riftbrek:storage/b/c02_s2` | internal - do not call by hand |
| `riftbrek:storage/b/c02_s3` | internal - do not call by hand |
| `riftbrek:storage/b/c02_s4` | internal - do not call by hand |
| `riftbrek:storage/b/c03_s0` | internal - do not call by hand |
| `riftbrek:storage/b/c03_s1` | internal - do not call by hand |
| `riftbrek:storage/b/c03_s2` | internal - do not call by hand |
| `riftbrek:storage/b/c03_s3` | internal - do not call by hand |
| `riftbrek:storage/b/c03_s4` | internal - do not call by hand |
| `riftbrek:storage/b/c04_s0` | internal - do not call by hand |
| `riftbrek:storage/b/c04_s1` | internal - do not call by hand |
| `riftbrek:storage/b/c04_s2` | internal - do not call by hand |
| `riftbrek:storage/b/c04_s3` | internal - do not call by hand |
| `riftbrek:storage/b/c04_s4` | internal - do not call by hand |
| `riftbrek:storage/b/c05_s0` | internal - do not call by hand |
| `riftbrek:storage/b/c05_s1` | internal - do not call by hand |
| `riftbrek:storage/b/c05_s2` | internal - do not call by hand |
| `riftbrek:storage/b/c05_s3` | internal - do not call by hand |
| `riftbrek:storage/b/c05_s4` | internal - do not call by hand |
| `riftbrek:storage/b/c06_s0` | internal - do not call by hand |
| `riftbrek:storage/b/c06_s1` | internal - do not call by hand |
| `riftbrek:storage/b/c06_s2` | internal - do not call by hand |
| `riftbrek:storage/b/c06_s3` | internal - do not call by hand |
| `riftbrek:storage/b/c06_s4` | internal - do not call by hand |
| `riftbrek:storage/b/c07_s0` | internal - do not call by hand |
| `riftbrek:storage/b/c07_s1` | internal - do not call by hand |
| `riftbrek:storage/b/c07_s2` | internal - do not call by hand |
| `riftbrek:storage/b/c07_s3` | internal - do not call by hand |
| `riftbrek:storage/b/c07_s4` | internal - do not call by hand |
| `riftbrek:storage/b/c08_s0` | internal - do not call by hand |
| `riftbrek:storage/b/c08_s1` | internal - do not call by hand |
| `riftbrek:storage/b/c08_s2` | internal - do not call by hand |
| `riftbrek:storage/b/c08_s3` | internal - do not call by hand |
| `riftbrek:storage/b/c08_s4` | internal - do not call by hand |
| `riftbrek:storage/b/c09_s0` | internal - do not call by hand |
| `riftbrek:storage/b/c09_s1` | internal - do not call by hand |
| `riftbrek:storage/b/c09_s2` | internal - do not call by hand |
| `riftbrek:storage/b/c09_s3` | internal - do not call by hand |
| `riftbrek:storage/b/c09_s4` | internal - do not call by hand |
| `riftbrek:storage/b/c10_s0` | internal - do not call by hand |
| `riftbrek:storage/b/c10_s1` | internal - do not call by hand |
| `riftbrek:storage/b/c10_s2` | internal - do not call by hand |
| `riftbrek:storage/b/c10_s3` | internal - do not call by hand |
| `riftbrek:storage/b/c10_s4` | internal - do not call by hand |
| `riftbrek:storage/b/c11_s0` | internal - do not call by hand |
| `riftbrek:storage/b/c11_s1` | internal - do not call by hand |
| `riftbrek:storage/b/c11_s2` | internal - do not call by hand |
| `riftbrek:storage/b/c11_s3` | internal - do not call by hand |
| `riftbrek:storage/b/c11_s4` | internal - do not call by hand |
| `riftbrek:storage/b/c12_s0` | internal - do not call by hand |
| `riftbrek:storage/b/c12_s1` | internal - do not call by hand |
| `riftbrek:storage/b/c12_s2` | internal - do not call by hand |
| `riftbrek:storage/b/c12_s3` | internal - do not call by hand |
| `riftbrek:storage/b/c12_s4` | internal - do not call by hand |
| `riftbrek:storage/hall_a_slot_0` | internal - do not call by hand |
| `riftbrek:storage/hall_a_slot_1` | internal - do not call by hand |
| `riftbrek:storage/hall_a_slot_2` | internal - do not call by hand |
| `riftbrek:storage/hall_a_slot_3` | internal - do not call by hand |
| `riftbrek:storage/hall_a_slot_4` | internal - do not call by hand |
| `riftbrek:storage/hall_b_slot_0` | internal - do not call by hand |
| `riftbrek:storage/hall_b_slot_1` | internal - do not call by hand |
| `riftbrek:storage/hall_b_slot_2` | internal - do not call by hand |
| `riftbrek:storage/hall_b_slot_3` | internal - do not call by hand |
| `riftbrek:storage/hall_b_slot_4` | internal - do not call by hand |
| `riftbrek:storage/move` | internal - do not call by hand |
| `riftbrek:storage/sort_a` | command-block only |
| `riftbrek:storage/sort_b` | command-block only |
| `riftbrek:tick` | internal - do not call by hand |
| `riftbrek:visitor/expire` | internal - do not call by hand |
| `riftbrek:zone/cbs_eject` | command-block only |
| `riftbrek:zone/cbs_hit` | command-block only |
| `riftbrek:zone/chunkban` | command-block only |
| `riftbrek:zone/lockdown_siren` | command-block only |
| `riftbrek:zone/visible` | command-block only |
| `riftbrek:zone/visible_wide` | command-block only |

## 6. Admin recovery & troubleshooting

| symptom | fix |
|---|---|
| Doors never open | Command blocks disabled: set `enable-command-block=true` in `server.properties` and restart. In singleplayer: Open to LAN / cheats on. |
| Doors/sorters dead far from you | Command blocks only run in loaded chunks. Stand nearby or `/forceload add <x1> <z1> <x2> <z2>` over the module (see MODULE_INDEX). |
| Chat spam from command blocks | `/gamerule command_block_output false` (1.21.11 name). The pack tries to set it on load. |
| Player locked out / wrong rank | `/function riftbrek:admin/revoke {mc:"Name"}` then `register` again. Manual: `/tag Name list`, `/scoreboard players get Name rb_clear`. |
| Lockdown stuck on | `/function riftbrek:admin/lockdown_off` (or `/scoreboard players set #GLOBAL rb_lock 0`). |
| Door slot stuck open/closed | The slot is the block directly below each gate's command block: set `iron_bars` (closed) / `redstone_block` (open) by hand. |
| Kit says cooldown | `/execute as Name run function riftbrek:admin/reset_cooldown`. |
| Scoreboard/teams missing after update | `/function riftbrek:admin/recover` (does not touch player data). |
| Wipe EVERYTHING (destructive!) | `/scoreboard objectives remove rb_clear` ... for each rb_* objective, `/data remove storage riftbrek:registry players`, `/data remove storage riftbrek:log entries`, then `/reload`. |
| Sorter tray stuck (alarm lamp lit) | All five tray slots hold items that no category chest could take: empty the MISC chests or add chests; then the tray drains by itself. |
| Reload error mentioning `setup/gamerules` | Harmless: run `/gamerule command_block_output false` yourself. |

