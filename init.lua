-- Changelog:
-- 29.05.14 Sokomine
--        * added depends.txt containing "default"
--        * changed strange notation of item names in craft receipes
--        * added selection box for carpet/kover
--        * removed woolmod dependency; uses dye mod now
--        * changed LIGHT_MAX-1 to 14
--        * added changelog
--Crafting--------------------
minetest.register_craft({
	output = "dicormod:kover 15",
	recipe = {
		{"default:stick", '', "default:stick"},
		{"default:stick", "default:wood", "default:stick"},
		{"default:stick", '', "default:stick"},
	}
})
minetest.register_craft({
	output = "dicormod:parket 15",
	recipe = {
		{ "default:tree", "default:tree", "default:tree",},
		{ "default:tree", "default:wood", "default:wood",},
		{ "default:wood", "default:wood", "default:wood",},
	}
})
minetest.register_craft({
	output = "dicormod:dollar 99",
	recipe = {
		{ "default:cactus", "default:cobble", "default:cactus",},
	}
})
minetest.register_craft({
	output = "dicormod:laminat 15",
	recipe = {
		{ "default:tree", "default:tree", "default:tree",},
		{ "default:tree", "default:tree", "default:wood",},
		{ "default:wood", "default:wood", "default:wood",},
	}
})
minetest.register_craft({
	output = "dicormod:light_block 1",
	recipe = {
		{ '', "default:torch", ''},
		{ '', "default:tree", ''},
	}
})
minetest.register_craft({
	output = "dicormod:tumba 1",
	recipe = {
		{"default:wood", "default:wood", "default:wood"},
		{"default:wood", "default:tree", "default:wood"},
		{"default:wood","default:wood", "default:wood"},
	}
})
minetest.register_craft({
	output = "dicormod:white_brick 4",
	recipe = {
		{"default:stone", "default:stone"},
		{"default:stone", "default:stone"},
	}
})
minetest.register_craft({
	output = "default:wood 4",
	recipe = {
		{"default:jungletree"},
	}
})
minetest.register_craft({
	output = "dicormod:pe4ka 1",
	recipe = {
		{"default:furnace",},
		{"dicormod:steklo",},
		{"default:stone",},
	}
})
minetest.register_craft({
	output = "dicormod:steklo 1",
	recipe = {
		{"default:glass",},
	}
})
minetest.register_craft({
	output = "dicormod:d_bucket 1",
	recipe = {
		{"wood", '', "wood"},
		{'', "wood", ''},
	}
})
minetest.register_craft({
	output = "dicormod:sword",
	recipe = {
		{"default:sand"},
		{"default:sand"},
		{"default:stick"},
	}
})
minetest.register_craft({
	output = "dicormod:pic_1 1",
	recipe = {
		{"default:cobble"},
		{"default:sand"},
		{"default:cobble"},
	}
})
minetest.register_craft({
	output = "dicormod:pic_2 1",
	recipe = {
		{"default:sand"},
		{"default:sand"},
		{"default:cobble"},
	}
})
minetest.register_craft({
	output = "dicormod:pic_3 1",
	recipe = {
		{'', "default:sand", ''},
		{"default:sand", "default:cobble", "default:sand"},
		{'',"default:sand", ''},
	}
})
minetest.register_craft({
	output = "dicormod:pic_4 1",
	recipe = {
		{'', "default:sand", ''},
		{"default:cobble", "default:cobble", "default:cobble"},
		{'',"default:sand", ''},
	}
})
minetest.register_craft({
	output = "dicormod:Plitka 10",
	recipe = {
		{"default:stone", "default:cobble", "default:stone"},
		{"default:cobble", "default:cobble", "default:cobble"},
		{"default:stone","default:cobble", "default:stone"},
	}
})
minetest.register_craft({
	output = 'dicormod:desert_stone_pick',
	recipe = {
		{'default:desert_stone', 'default:desert_stone', 'default:desert_stone'},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})
minetest.register_craft({
	output = 'dicormod:desert_shovel_stone',
	recipe = {
		{'','default:desert_stone',''},
		{'','default:stick',''},
		{'','default:stick',''},
	}
})
minetest.register_craft({
	output = "dicormod:yellow_brick",
	recipe = {
		{"dicormod:white_brick", "dye:yellow"},
	}
})
minetest.register_craft({
	output = "dicormod:red_brick",
	recipe = {
		{"dicormod:white_brick", "dye:red"},
	}
})
minetest.register_craft({
	output = "dicormod:brown_brick",
	recipe = {
		{"dicormod:white_brick", "dye:brown"},
	}
})
minetest.register_craft({
	output = "dicormod:green_brick",
	recipe = {
		{"dicormod:white_brick", "dye:green"},
	}
})
--Tools--------------------
minetest.register_tool("dicormod:sword", {
	image = "dicormod_darkme4.png",
        description = "Djedai Sword",
	basetime = 1.0,
	dt_weight = 3,
	dt_crackiness = 3,
	dt_crumbliness = 4,
	dt_cuttability = -1,
	basedurability = 200,
	dd_weight = 0,
	dd_crackiness = 0,
	dd_crumbliness = 0,
	dd_cuttability = 0,
})
minetest.register_tool("dicormod:desert_stone_pick", {
	description = "Desert Stone Pickaxe",
	inventory_image = "dicormod_tool_desert_stonepick.png",
	tool_capabilities = {
		max_drop_level=0,
		groupcaps={
			cracky={times={[1]=3.50, [2]=1.35, [3]=0.90}, uses=28, maxlevel=1}
		}
	},
})
minetest.register_tool("dicormod:desert_shovel_stone", {
	description = "Desert Stone Shovel",
	inventory_image = "dicormod_tool_desert_stoneshovel.png",
	tool_capabilities = {
		max_drop_level=0,
		groupcaps={
			crumbly={times={[1]=1.60, [2]=0.70, [3]=0.40}, uses=28, maxlevel=1}
		}
	},
})
--craftitem--------------------
minetest.register_craftitem('dicormod:dollar', {
	drawtype = 'plantlike',
        description = "1$",
	image = 'dicormod_dollar.png',
	stack_max = 500,
	visual_scale = 1.0,
	sunlight_propagates = true,
	paramtype = 'light',
	walkable = true,
	material = minetest.digprop_constanttime(0.5),
})
minetest.register_craftitem("dicormod:d_bucket", {
	image = "dicormod_d_bucket.png",
	stack_max = 1,
	liquids_pointable = true,
	on_place_on_ground = minetest.craftitem_place_item,
	on_use = function(item, player, pointed_thing)
		if pointed_thing.type == "node" then
			n = minetest.env:get_node(pointed_thing.under)
			if n.name == "default:water_source" then
				minetest.env:add_node(pointed_thing.under, {name="air"})
				player:add_to_inventory_later("dicormod:d_bucket_water")
				return true
			end
		end
		return false
	end,
})
minetest.register_craftitem("dicormod:d_bucket_water", {
	image = "dicormod_d_bucket_water.png",
	stack_max = 1,
	liquids_pointable = true,
	on_place_on_ground = minetest.craftitem_place_item,
	on_use = function(item, player, pointed_thing)
		if pointed_thing.type == "node" then
			n = minetest.env:get_node(pointed_thing.under)
			if n.name == "default:water_source" then
				-- unchanged
			elseif n.name == "default:water_flowing" or n.name == "default:lava_source" or n.name == "default:lava_flowing" then
				minetest.env:add_node(pointed_thing.under, {name="default:water_source"})
			else
				minetest.env:add_node(pointed_thing.above, {name="default:water_source"})
			end
			player:add_to_inventory_later("dicormod:d_bucket")
			return true
		end
		return false
	end,
})
--Node--------------------
minetest.register_node("dicormod:laminat", {
	tiles = {"dicormod_laminat.png"},
	inventory_image = minetest.inventorycube("dicormod_laminat.png"),
	is_ground_content = true,
        description = "Laminat[DM]",
	furnace_burntime = 30,
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	sounds = default.node_sound_wood_defaults(),
})
minetest.register_node("dicormod:adminiym", {
	description = "adminiym[DM]",
	tiles = {"dicormod_adminiym.png"},
	is_ground_content = true,
	groups = {cracky=4},
	drop = 'dicormod:adminiym',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("dicormod:pic_6", {
	description = "Creeper[DM]",
	drawtype = "signlike",
	tiles = {"dicormod_pic_4.png"},
	inventory_image = "dicormod_pic_4.png",
	wield_image = "dicormod_pic_4.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	is_ground_content = true,
	walkable = false,
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=3,flammable=2},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("dicormod:pic_2", {
	drawtype = "signlike",
	tiles = {"dicormod_pic_2.png"},
	inventory_image = "dicormod_pic_2.png",
	wield_image = "dicormod_pic_2.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	is_ground_content = true,
	walkable = false,
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=3,flammable=2},
	sounds = default.node_sound_wood_defaults(),
})
minetest.register_node("dicormod:pic_3", {
	drawtype = "signlike",
	tiles = {"dicormod_pic_3.png"},
	inventory_image = "dicormod_pic_3.png",
	wield_image = "dicormod_pic_3.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	is_ground_content = true,
	walkable = false,
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=3,flammable=2},
	sounds = default.node_sound_wood_defaults(),
})
minetest.register_node("dicormod:parket", {
	tile_images = {"dicormod_parket.png", "dicormod_parket.png", "dicormod_parket.png"},
	inventory_image = minetest.inventorycube("dicormod_parket.png"),
	is_ground_content = true,
	description = "Parket[DM]",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	sounds = default.node_sound_wood_defaults(),
	furnace_burntime = 30,
})
minetest.register_node("dicormod:Plitka", {
	tile_images = {"dicormod_Plitka.png", "dicormod_Plitka.png", "dicormod_Plitka.png"},
	inventory_image = minetest.inventorycube("dicormod_Plitka.png"),
	is_ground_content = true,
        description = "Plitka[DM]",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	sounds = default.node_sound_wood_defaults(),
	furnace_burntime = 30,
})
minetest.register_node("dicormod:light_block", {
	tile_images = {"dicormod_lightbloc.png", "dicormod_lightbloc.png", "dicormod_lightbloc.png"},
	inventory_image = minetest.inventorycube("dicormod_lightbloc.png"),
	is_ground_content = true,
	paramtype = "light",
        description = "light block[DM]",
	light_propagates = true,
	light_source = 14,
	selection_box = {
		type = "wallmounted",
		wall_top = {-0.1, 0.7-0.8, -0.1, 0.1, 0.7, 0.1},
		wall_bottom = {-0.1, -0.7, -0.1, 0.1, -0.6+0.7, 0.1},
		wall_side = {-0.4, -0.3, -0.1, -0.4+0.2, 0.3, 0.1},
	},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	sounds = default.node_sound_wood_defaults(),
})
minetest.register_node("dicormod:steklo", {
	drawtype = "glasslike",
	tile_images = {"dicormod_steklo.png"},
	inventory_image = minetest.inventorycube("dicormod_steklo.png"),
	light_propagates = true,
	paramtype = "light",
        description = "Glass[DM]",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	sounds = default.node_sound_wood_defaults(),
})
minetest.register_node("dicormod:kover", {
	drawtype = "raillike",
        description = "kover[DM]",
	tile_images = {"dicormod_kover.png", "dicormod_kover.png", "dicormod_kover.png", "dicormod_kover.png"},
	inventory_image = "dicormod_kover.png",
	light_propagates = true,
	paramtype = "light",
	is_ground_content = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		--fixed = <default>
                fixed = {-1/2, -1/2, -1/2, 1/2, -1/2+1/16, 1/2},
	},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	sounds = default.node_sound_wood_defaults(),
})
minetest.register_node("dicormod:white_brick", {
	description = "White Block[DM]",
	tiles = {"dicormod_white_brick.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("dicormod:red_brick", {
	description = "Red  Brick[DM]",
	tiles = {"dicormod_red_brick.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("dicormod:yellow_brick", {
	description = "Yellow Brick[DM]",
	tiles = {"dicormod_yellow_brick.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("dicormod:brown_brick", {
	description = "Brown Block[DM]",
	tiles = {"dicormod_brown_brick.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("dicormod:green_brick", {
	description = "Green Block[DM]",
	tiles = {"dicormod_green_brick.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("dicormod:tumba", {
	description = "Tumba[DM]",
	tile_images = {"dicormod_VerhTumba.png", "dicormod_VerhTumba.png", "dicormod_lapischest3.png",
		"dicormod_lapischest3.png", "dicormod_lapischest3.png", "dicormod_OpenTumba.png"},
	paramtype2 = "facedir",
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
	legacy_facedir_simple = true,
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("formspec",
				"invsize[8,9;]"..
				"list[current_name;main;0,0;8,4;]"..
				"list[current_player;main;0,5;8,4;]")
		meta:set_string("infotext", "Chest")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*4)
	end,
	can_dig = function(pos,player)
		local meta = minetest.env:get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
    on_metadata_inventory_move = function(pos, from_list, from_index,
			to_list, to_index, count, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff in chest at "..minetest.pos_to_string(pos))
		return minetest.node_metadata_inventory_move_allow_all(
				pos, from_list, from_index, to_list, to_index, count, player)
	end,
    on_metadata_inventory_offer = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff to chest at "..minetest.pos_to_string(pos))
		return minetest.node_metadata_inventory_offer_allow_all(
				pos, listname, index, stack, player)
	end,
    on_metadata_inventory_take = function(pos, listname, index, count, player)
		minetest.log("action", player:get_player_name()..
				" takes stuff from chest at "..minetest.pos_to_string(pos))
		return minetest.node_metadata_inventory_take_allow_all(
				pos, listname, index, count, player)
	end,
})
