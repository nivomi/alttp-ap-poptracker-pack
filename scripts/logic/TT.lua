tt_entrance = alttp_location.new()
local tt_front_bottom_left = alttp_location.new()
local tt_front_top_left = alttp_location.new()
local tt_front_top_right = alttp_location.new()
local tt_front_bottom_right = alttp_location.new()
local tt_back_hallway = alttp_location.new()
local tt_crystal_switch_room = alttp_location.new()
local tt_attic = alttp_location.new()
local tt_basement = alttp_location.new()
local tt_big_chest_room = alttp_location.new()
local tt_basement_cell = alttp_location.new()
local tt_back_room = alttp_location.new()
local tt_boss_room = alttp_location.new()


tt_entrance:connect_two_ways(tt_front_bottom_left)
tt_front_bottom_left:connect_two_ways(tt_front_top_left)
tt_front_bottom_left:connect_one_way("TT - Map Chest")

tt_front_top_left:connect_two_ways(tt_front_top_right)
tt_front_top_left:connect_one_way("TT - Ambush Chest")

tt_front_top_right:connect_two_ways(tt_front_bottom_right)
tt_front_top_right:connect_two_ways(tt_back_hallway)

tt_front_bottom_right:connect_one_way(tt_front_bottom_left)
tt_front_bottom_right:connect_one_way("TT - Compass Chest")
tt_front_bottom_right:connect_one_way("TT - Big Key Chest")


tt_back_hallway:connect_two_ways(tt_boss_room)
tt_back_hallway:connect_two_ways(tt_crystal_switch_room)
tt_back_hallway:connect_one_way("TT - Hallway Pot Key")

tt_crystal_switch_room:connect_two_ways(tt_basement)
tt_crystal_switch_room:connect_two_ways(tt_attic)
tt_crystal_switch_room:connect_one_way("TT - Spike Switch Pot Key")

tt_attic:connect_one_way("TT - Attic")

tt_basement:connect_two_ways(tt_big_chest_room)
tt_basement:connect_two_ways(tt_basement_cell)

tt_basement_cell:connect_one_way("TT - Blind's Cell")
tt_big_chest_room:connect_one_way("TT - Big Chest")

tt_boss:connect_one_way("TT - Boss")