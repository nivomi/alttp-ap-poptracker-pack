-- use this file to map the AP item ids to your items
-- first value is the code of the target item and the second is the item type (currently only "toggle"}, "progressive"}, ""and "toggle"}, ""but feel free to expand for your needs!)
-- here are the SM items as an example: https://github.com/Cyb3RGER/sm_ap_tracker/blob/main/scripts/autotracking/item_mapping.lua
ITEM_MAPPING = {
[11]   =   {{"bow"}, "toggle"}, -- bow+arrow
[100]   =   {{"bow"}, "progressive"},
[101]   =   {{"bow"}, "progressive"},
-- [88]   =   {{"Silver Arrows"}, ""},
[59]   =   {{"bow"}, "toggle"}, -- bow+silvers
[29]   =   {{"book"}, "toggle"},
[9]   =    {{"hammer"}, "toggle"},
[10]   =   {{"hookshot"}, "toggle"},
[26]   =   {{"mirror"}, "toggle"},
[20]   =   {{"flute"}, "progressive"},
[75]   =   {{"boots"}, "toggle"},
[27]   =   {{"powergloves"}, "toggle"}, -- power golves
[25]   =   {{"cape"}, "toggle"},
[41]   =   {{"mushroom"}, "progressive"},
[19]   =   {{"shovel"}, "progressive"},
[18]   =   {{"lamp"}, "toggle"},
[13]   =   {{"powder"}, "progressive"},
[31]   =   {{"pearl"}, "toggle"},
[21]   =   {{"somaria"}, "toggle"},
[7]   =    {{"firerod"}, "toggle"},
[30]   =   {{"flippers"}, "toggle"},
[8]   =    {{"icerod"}, "toggle"},
[28]   =   {{"powergloves"}, "toggle"}, -- titans
[15]   =   {{"bombos"}, "toggle"},
[16]   =   {{"ether"}, "toggle"},
[17]   =   {{"quake"}, "toggle"},
[22]   =   {{"bottle"}, "progressive"},
[43]   =   {{"bottle"}, "progressive"},
[44]   =   {{"bottle"}, "progressive"},
[45]   =   {{"bottle"}, "progressive"},
[61]   =   {{"bottle"}, "progressive"},
[60]   =   {{"bottle"}, "progressive"},
[72]   =   {{"bottle"}, "progressive"},
[80]   =   {{"sword"}, "toggle"}, -- mastersword
[2]   =    {{"sword"}, "toggle"}, -- temperedsword
[73]   =   {{"sword"}, "toggle"}, -- fightersword
[3]   =    {{"sword"}, "toggle"}, -- goldensword
[94]   =   {{"sword"}, "progressive"},
[97]   =   {{"glove"}, "progressive"},
-- [106]   =   {{"Triforce"}, ""},
-- [107]   =   {{"Power Star"}, ""},
[108]   =   {{"triforcepieces"}, "consumable"},
-- [67]   =   {{"Single Arrow"}, ""},
-- [68]   =   {{"Arrows (10)"}, ""},
[84]   =   {{"bow"}, "consumable"},
[83]   =   {{"bow"}, "consumable"},
-- [39]   =   {{"Single Bomb"}, ""},
-- [40]   =   {{"Bombs (3)"}, ""},
-- [49]   =   {{"Bombs (10)"}, ""},
[82]   =   {{"bombs"}, "consumable"},
[81]   =   {{"bombs"}, "consumable"},
[34]   =   {{"blue_mail"}, "toggle"},
[35]   =   {{"red_mail"}, "toggle"},
[96]   =   {{"armor"}, "progressive"},
[12]   =   {{"blueboomerang"}, "toggle"},
[42]   =   {{"redboomerang"}, "toggle"},
[4]   =    {{"shield"}, "toggle"}, -- blueshield
[5]   =    {{"shield"}, "toggle"}, -- redshield
[6]   =    {{"shield"}, "toggle"}, -- mirrorshield
[95]   =   {{"shield"}, "progressive"},
[33]   =   {{"bug_net"}, "toggle"},
[24]   =   {{"byrna"}, "toggle"},
[62]   =   {{"heartcontainer"}, "consumable"},
[63]   =   {{"heartcontainer"}, "consumable"},
[23]   =   {{"heartpieces"}, "consumable"},
-- [52]   =   {{"Rupee (1)"}, ""},
-- [53]   =   {{"Rupees (5)"}, ""},
-- [54]   =   {{"Rupees (20)"}, ""},
-- [65]   =   {{"Rupees (50)"}, ""},
-- [64]   =   {{"Rupees (100)"}, ""},
-- [70]   =   {{"Rupees (300)"}, ""},
-- [89]   =   {{"Rupoor"}, ""},
-- [91]   =   {{"Red Clock"}, ""},
-- [92]   =   {{"Blue Clock"}, ""},
-- [93]   =   {{"Green Clock"}, ""},
-- [98]   =   {{"Single RNG"}, ""},
-- [99]   =   {{"Multi RNG"}, ""},
[78]   =   {{"half_magic"}, "progressive"},
[79]   =   {{"quarter_magic"}, "progressive"},
[162]   =   {{"ep_smallkey", "ep_smallkey_drop"}, "consumable"},
[157]   =   {{"ep_bigkey"}, "toggle"},
[141]   =   {{"ep_compass"}, "toggle"},
[125]   =   {{"ep_map"}, "toggle"},
[163]   =   {{"dp_smallkey", "dp_smallkey_drop"}, "consumable"},
[156]   =   {{"dp_bigkey"}, "toggle"},
[140]   =   {{"dp_compass"}, "toggle"},
[124]   =   {{"dp_map"}, "toggle"},
[170]   =   {{"toh_smallkey", "toh_smallkey_drop"}, "consumable"},
[149]   =   {{"toh_bigkey"}, "toggle"},
[133]   =   {{"toh_compass"}, "toggle"},
[117]   =   {{"toh_map"}, "toggle"},
[160]   =   {{"hc_smallkey", "hc_smallkey_drop"}, "consumable"},
[159]   =   {{"hc_bigkey"}, "toggle"},
[143]   =   {{"hc_compass"}, "toggle"},
[127]   =   {{"hc_map"}, "toggle"},
[164]   =   {{"at_smallkey", "at_smallkey_drop"}, "consumable"},
[155]   =   {{"at_bigkey"}, "toggle"},
[139]   =   {{"at_compass"}, "toggle"},
[123]   =   {{"at_map"}, "toggle"},
[166]   =   {{"pod_smallkey", "pod_smallkey_drop"}, "consumable"},
[153]   =   {{"pod_bigkey"}, "toggle"},
[137]   =   {{"pod_compass"}, "toggle"},
[121]   =   {{"pod_map"}, "toggle"},
[171]   =   {{"tt_smallkey", "tt_smallkey_drop"}, "consumable"},
[148]   =   {{"tt_bigkey"}, "toggle"},
[132]   =   {{"tt_compass"}, "toggle"},
[116]   =   {{"tt_map"}, "toggle"},
[168]   =   {{"sw_smallkey", "sw_smallkey_drop"}, "consumable"},
[151]   =   {{"sw_bigkey"}, "toggle"},
[135]   =   {{"sw_compass"}, "toggle"},
[119]   =   {{"sw_map"}, "toggle"},
[165]   =   {{"sp_smallkey", "sp_smallkey_drop"}, "consumable"},
[154]   =   {{"sp_bigkey"}, "toggle"},
[138]   =   {{"sp_compass"}, "toggle"},
[122]   =   {{"sp_map"}, "toggle"},
[169]   =   {{"ip_smallkey", "ip_smallkey_drop"}, "consumable"},
[150]   =   {{"ip_bigkey"}, "toggle"},
[134]   =   {{"ip_compass"}, "toggle"},
[118]   =   {{"ip_map"}, "toggle"},
[167]   =   {{"mm_smallkey", "mm_smallkey_drop"}, "consumable"},
[152]   =   {{"mm_bigkey"}, "toggle"},
[136]   =   {{"mm_compass"}, "toggle"},
[120]   =   {{"mm_map"}, "toggle"},
[172]   =   {{"tr_smallkey", "tr_smallkey_drop"}, "consumable"},
[147]   =   {{"tr_bigkey"}, "toggle"},
[131]   =   {{"tr_compass"}, "toggle"},
[115]   =   {{"tr_map"}, "toggle"},
[173]   =   {{"gt_smallkey", "gt_smallkey_drop"}, "consumable"},
[146]   =   {{"gt_bigkey"}, "toggle"},
[130]   =   {{"gt_compass"}, "toggle"},
[114]   =   {{"gt_map"}, "toggle"},
[175]   =   {{"universal_smallkeys", "universal_smallkey"}, "consumable"},
-- [90]   =   {{"Nothing"}, ""},
-- [176]   =   {{"Bee Trap"}, ""},
-- [177]   =   {{"Faerie"}, ""},
-- [178]   =   {{"Good Bee"}, ""},
-- [179]   =   {{"Magic Jar"}, ""},
-- [180]   =   {{"Apple"}, ""},
-- [46]   =   {{"Red Potion"}, ""},
-- [47]   =   {{"Green Potion"}, ""},
-- [48]   =   {{"Blue Potion"}, ""},
-- [14]   =   {{"Bee"}, ""},
-- [66]   =   {{"Small Heart"}, ""},
[74]   =   {{"flute"}, "progressive"},
}