require ("prototypes.Bio_Farm.pipeConnectors")

data:extend( {

------- Bio Farm
  {
    type = "assembling-machine",
    name = "bi_bio_farm",
    icon = "__Bio_Industries_Lite__/graphics/icons/Bio_Farm_Icon.png",
	icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "bi_bio_farm"},
    max_health = 250,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances = {{type = "fire", percent = 70}},
	fluid_boxes =
    {
		{
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,        
		pipe_connections = {{ type="input", position = {-1, -5} }}
		},
		{
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, -5} }}
		},
      off_when_no_fluid_recipe = true
	  
    },

	collision_box = {{-4.2, -4.2}, {4.2, 4.2}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},

	animation =
	{
		filename = "__Bio_Industries_Lite__/graphics/entities/biofarm/Bio_Farm_Idle.png",
		priority = "high",
		width = 320,
		height = 320,
		frame_count = 1,
		shift = {0.75, 0},
	},
	
	working_visualisations =
	{

		animation =
		{
			filename = "__Bio_Industries_Lite__/graphics/entities/biofarm/Bio_Farm_Working.png",
			priority = "high",
			width = 320,
			height = 320,
			frame_count = 1,
			shift = {0.75, 0},
		},
	},

    crafting_categories = {"biofarm-mod-farm"},
    crafting_speed = 1,
    energy_source =

	{
      type = "electric",
      usage_priority = "primary-input",
	  drain = "50kW",
	  emissions = -0.2, -- the "-" means it eats pollution. Absorbs about 20 PU
    },	

    energy_usage = "100kW",
    ingredient_count = 3,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	module_specification =
    {
      module_slots = 3
    },
    allowed_effects = {"consumption", "speed"}
  },

------- Bio Farm Lamp
  {
    type = "lamp",
    name = "bi_light_for_Bio_Farm",
    icon = "__Bio_Industries_Lite__/graphics/icons/Bio_Farm_Lamp.png",
	icon_size = 32,
	flags = {"not-deconstructable", "not-on-map", "placeable-off-grid", "not-repairable", "not-blueprintable"},
	selectable_in_game = false,
    max_health = 1,
    collision_box = {{-0.0, -0.0}, {0.0, 0.0}},
	collision_mask = {},
	energy_source =
    {
      type = "electric",
	  render_no_network_icon = false,
	  render_no_power_icon = false,
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "100kW",
    light = {intensity = 1, size = 45},
    picture_off =
    {
      filename = "__Bio_Industries_Lite__/graphics/entities/biofarm/Bio_Farm_Idle.png",
      priority = "low",
      width = 0,
      height = 0,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
	  shift = {0.75, 0},
    },
    picture_on =
    {
      filename = "__Bio_Industries_Lite__/graphics/entities/biofarm/Bio_Farm_Working.png",
      priority = "low",
      width = 0,
      height = 0,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
	  shift = {0.75, 0},
    },

  },

------- Bio Farm Pole
  {
    type = "electric-pole",
    name = "bi_medium-electric-pole_for_Bio_Farm",
    icon = "__Bio_Industries_Lite__/graphics/icons/Bio_Farm_Cabeling.png",
	icon_size = 32,
	flags = {"not-deconstructable", "not-on-map", "placeable-off-grid", "not-repairable", "not-blueprintable"},
	selectable_in_game = false,
    max_health = 1,
    resistances = {{type = "fire", percent = 100}},
    collision_box = {{-0, -0}, {0, 0}},
	collision_mask = {},
    maximum_wire_distance = 10,
    supply_area_distance = 5,
    pictures =
    {
      filename = "__Bio_Industries_Lite__/graphics/icons/empty.png",
      priority = "low",
      width = 0,
      height = 0,
	  frame_count = 1,
      axially_symmetrical = false,
      direction_count = 4,
	  shift = {0.75, 0},
    },
    connection_points =
    {
      {
        shadow =
        {

        },
        wire =
        {

        }
      },
      {
        shadow =
        {
 
        },
        wire =
        {

        }
      },
      {
        shadow =
        {

        },
        wire =
        {

        }
      },
      {
        shadow =
        {

        },
        wire =
        {

        }
      }

	},
    radius_visualisation_picture =
    {
      filename = "__Bio_Industries_Lite__/graphics/icons/empty.png",
      width = 0,
      height = 0,
      priority = "low"
    },
  },
  
------- Bio Farm Solar Panel
  {
    type = "solar-panel",
    name = "bi_solar-panel_for_Bio_Farm",
    icon = "__Bio_Industries_Lite__/graphics/icons/Bio_Farm_Solar.png",
	icon_size = 32,
	flags = {"not-deconstructable", "not-on-map", "placeable-off-grid", "not-repairable", "not-blueprintable"},
	selectable_in_game = false,
    max_health = 1,
    resistances = {{type = "fire", percent = 100}},
    collision_box = {{-0, -0}, {0, 0}},
	collision_mask = {},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Bio_Industries_Lite__/graphics/icons/empty.png",
      priority = "low",
      width = 0,
      height = 0,
    },
    production = "100kW"
  },
	
	-- COKERY
	{
		type = "assembling-machine",
		name = "bi-cokery",
		icon = "__Bio_Industries_Lite__/graphics/icons/cokery.png",
		icon_size = 32,
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		order = "a[cokery]",
		minable = {hardness = 0.2, mining_time = 0.5, result = "bi-cokery"},
		max_health = 200,
		corpse = "medium-remnants",
		resistances = {{type = "fire", percent = 95}},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		module_specification =
		{
			module_slots = 2
		},
		allowed_effects = {"consumption", "speed", "pollution"},	
		animation =
			{
				filename = "__Bio_Industries_Lite__/graphics/entities/cokery/cokery_sheet.png",
				frame_count = 28,
				line_length = 7,
				width = 256,
				height = 256,
				scale = 0.5,
				shift = {0.5, -0.5},
				animation_speed = 0.1
			},		
		crafting_categories = {"biofarm-mod-smelting"},
		energy_source =
		{
			type = "electric",
			input_priority = "secondary",
			usage_priority = "secondary-input",
			emissions = 0.05     
		},
		energy_usage = "180kW",
		crafting_speed = 2,
		ingredient_count = 2
		
	},
})