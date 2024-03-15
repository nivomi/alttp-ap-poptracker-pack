ep_entrance
local ep_cannonball_room
local ep_main_room_top
local ep_map_chest_room
local ep_compass_chest_room
local ep_main_room_bottom
local ep_dark_square_room
local ep_big_key_chest_room
local ep_dark_eyegore_room
local ep_boss_room

ep_entrance:connect_two_ways(ep_cannonball_room)

ep_cannonball_room:connect_two_ways(ep_main_room_top)
ep_cannonball_room:connect_one_way("EP - Cannonball Chest")

ep_main_room_top:connect_two_ways(ep_compass_chest_room)
ep_main_room_top:connect_two_ways(ep_map_chest_room)

ep_map_chest_room:connect_one_way("EP - Map Chest")

ep_compass_chest_room:connect_two_ways(ep_main_room_bottom)
ep_compass_chest_room:connect_one_way("EP - Compass Chest")

ep_main_room_bottom:connect_two_ways(ep_dark_square_room)
ep_main_room_bottom:connect_two_ways(ep_dark_eyegore_room)
ep_main_room_bottom:connect_one_way("EP - Big Chest")

ep_dark_square_room:connect_two_ways(ep_big_key_chest_room)
ep_dark_square_room:connect_one_way("EP - Dark Square Key Drop")

ep_big_key_chest_room:connect_one_way(ep_main_room_bottom)
ep_big_key_chest_room:connect_one_way("EP - Big Key Chest")

ep_dark_eyegore_room:connect_two_ways(ep_boss_room)
ep_boss_room:connect_one_way("EP - Boss")
