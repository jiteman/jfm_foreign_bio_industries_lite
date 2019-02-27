--local QC_Mod = false
--require ("util")
require ("libs/util_ext")
--require ("stdlib/event/event")
--require ("control_tree")

--------------------------------------------------------------------

local function On_Init()
	if ( global.bi == nil ) then
		global.bi = {}
		global.bi.tree_growing = {}
		global.bi.terrains = {}
	end

	-- enable researched recipes
	for i, force in pairs( game.forces ) do
		force.reset_technologies()
		force.reset_recipes()
	end
end

--------------------------------------------------------------------
--local function On_Load()
--end


--------------------------------------------------------------------
local function On_Config_Change()
	if ( global.bi == nil ) then
		global.bi = {}
		global.bi.tree_growing = {}
		global.bi.terrains = {}
	end


	-- enable researched recipes
	for i, force in pairs( game.forces ) do
		for _, tech in pairs( force.technologies ) do
			if ( tech.researched ) then
				for _, effect in pairs( tech.effects ) do
					if ( effect.type == "unlock-recipe" ) then
						force.recipes[ effect.recipe ].enabled = true
					end
				end
			end
		end
	end
end

--------------------------------------------------------------------

--- Used for some compatibility with Angels Mods
--[[
script.on_event( defines.events.on_player_joined_game, function( event )
   local player = game.players[ event.player_index ]
   local force = player.force
   local techs = force.technologies

	if settings.startup["angels-use-angels-barreling"] and settings.startup["angels-use-angels-barreling"].value then
      techs['fluid-handling'].researched = false
      techs['bi-fertiliser'].reload()
      local _t = techs['angels-fluid-barreling'].researched
      techs['angels-fluid-barreling'].researched = false
      techs['angels-fluid-barreling'].researched = _t
   end
end )
]]--


--------------------------------------------------------------------
local function On_Built( event )
    local entity = event.created_entity
   	local surface = entity.surface
	local force = entity.force
	local position = entity.position

	-- Seedling planted
	--[[
	if entity.valid and entity.name == "seedling" then
		seed_planted (event)
	end
	--]]

    -- Bio Farm has been built
	if ( entity.valid and entity.name == "bi_bio_farm" ) then
		--writeDebug("Bio Farm has been built")

		local b_farm = entity
		local pole_name = "bi_medium-electric-pole_for_Bio_Farm"
		local panel_name = "bi_solar-panel_for_Bio_Farm"
		local lamp_name = "bi_light_for_Bio_Farm"

		local create_pole = surface.create_entity( { name = pole_name, position = position, force = force } )
		local create_panel = surface.create_entity( { name = panel_name, position = position, force = force } )
		local create_lamp = surface.create_entity( { name = lamp_name, position = position, force = force } )

		create_pole.minable = false
		create_pole.destructible = false
		create_panel.minable = false
		create_panel.destructible = false
		create_lamp.minable = false
		create_lamp.destructible = false

		group_entities( cantor( position.x,position.y ), { b_farm, create_pole, create_panel, create_lamp } )
	end
end


--------------------------------------------------------------------
local function On_Remove( event )
	local entity = event.entity

	-- Bio Farm has been removed
   	if ( entity.valid and entity.name == "bi_bio_farm" ) then
		--writeDebug("Bio Farm has been removed")
		local pos_hash = cantor( entity.position.x, entity.position.y )
        local entity_group = getGroup_entities( pos_hash )
		
        if ( entity_group ) then
            for ix, vx in ipairs( entity_group ) do
                if vx == entity then
                    --vx.destroy()
                else
                    vx.destroy()
                end
            end
        end
		
        ungroup_entities( pos_hash )
	end

	-- Seedling Removed
	--[[
	if entity.valid and entity.name == "seedling" then

		for k, v in pairs(global.bi.tree_growing) do
			if v.position.x == entity.position.x and v.position.y == entity.position.y then
				table.remove(global.bi.tree_growing, k)
				return
			end
		end
	end
	--]]
end


--------------------------------------------------------------------
local function On_Death( event )
	local entity = event.entity

	-- Bio Farm has been destroyed
   	if ( entity.valid and entity.name == "bi_bio_farm" ) then
		local pos_hash = cantor( entity.position.x, entity.position.y )
        local entity_group = getGroup_entities( pos_hash )
		
        if ( entity_group ) then
            for ix, vx in ipairs( entity_group ) do
                if ( vx == entity ) then
                    --vx.destroy()
                else
                    --vx.die()
					vx.destroy()
                end
            end
        end
		
        ungroup_entities( pos_hash )
	end

	-- Seedling Removed
	--[[
	if entity.valid and entity.name == "seedling" then

		for k, v in pairs(global.bi.tree_growing) do
			if v.position.x == entity.position.x and v.position.y == entity.position.y then
				table.remove(global.bi.tree_growing, k)
				return
			end
		end
	end
	--]]
end

--script.on_load( On_Load )
script.on_configuration_changed( On_Config_Change )
script.on_init( On_Init )


local build_events = { defines.events.on_built_entity, defines.events.on_robot_built_entity }
script.on_event( build_events, On_Built )

local pre_remove_events = { defines.events.on_pre_player_mined_item, defines.events.on_robot_pre_mined }
script.on_event( pre_remove_events, On_Remove )

local death_events = { defines.events.on_entity_died }
script.on_event( death_events, On_Death )


--------------------------------------------------------------------
--- DeBug Messages
--------------------------------------------------------------------
--[[
function writeDebug(message)
	if QC_Mod == true then
		for i, player in pairs(game.players) do
			player.print(tostring(message))
		end
	end
end
]]--
