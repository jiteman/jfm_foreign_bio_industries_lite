data:extend( {
	{ -- Bio Farm
		type = "recipe",
		name = "bi_bio_farm",
		icon = "__Bio_Industries_Lite__/graphics/icons/Bio_Farm_Icon.png",
		icon_size = 32,
		normal =
		{
			enabled = false,
			energy_required = 10,
			ingredients = {
				{ "iron-stick", 45 },
				{ "concrete", 5 },
				{ "small-lamp", 20 },
				{ "copper-cable", 10 }				
			},
			result = "bi_bio_farm",
			result_count = 1
		},
		expensive =
		{
			enabled = false,
			energy_required = 15,
			ingredients = {
				{ "iron-stick", 90 },
				{ "concrete", 10 },
				{ "small-lamp", 40 },
				{ "copper-cable", 20 }
			},
			result = "bi_bio_farm",
			result_count = 1
		}
	},
	{ -- Raw Wood (basic)
		type = "recipe",
		name = "bi-Logs_Mk1",
		icon = "__Bio_Industries_Lite__/graphics/icons/raw-wood-mk1.png",
		icon_size = 32,
		category = "biofarm-mod-farm",
		order = "a[bi]-ssw-c1[raw-wood1]",
		enabled = false,
		energy_required = 200,
		ingredients =
		{
			{type="item", name="raw-wood", amount=2},
			{type="fluid", name="water", amount=50}
		},
		results = {
			{ type = "item", name = "raw-wood", amount = 13 },
			{ type = "item", name = "bi-woodpulp", amount = 26 }
		},
		subgroup = "fluid-recipes"
	},
	{ -- Raw Wood from Ash
		type = "recipe",
		name = "bi-Logs_Mk2",
		icon = "__Bio_Industries_Lite__/graphics/icons/raw-wood-mk2.png",
		icon_size = 32,
		category = "biofarm-mod-farm",
		order = "a[bi]-ssw-c1[raw-wood2]",
		enabled = false,
		energy_required = 150,
		ingredients =
		{
		  {type="item", name="raw-wood", amount=2},
		  {type="fluid", name="water", amount=50},
		  {type="item", name="bi-ash", amount=5}
		},
		results = {
			{ type = "item", name = "raw-wood", amount = 24 },
			{ type = "item", name = "bi-woodpulp", amount = 48 }
		},
		subgroup = "fluid-recipes"
	},
	{ -- Raw Wood from fertiliser
		type = "recipe",
		name = "bi-Logs_Mk3",
		icon = "__Bio_Industries_Lite__/graphics/icons/raw-wood-mk3.png",
		icon_size = 32,
		category = "biofarm-mod-farm",
		order = "a[bi]-ssw-c1[raw-wood3]",
		enabled = false,
		energy_required = 100,
		ingredients =
		{
		  {type="item", name="raw-wood", amount=2},
		  {type="fluid", name="water", amount=50},
		  {type="item", name="fertiliser", amount=5}
		},
		results = {
			{ type = "item", name = "raw-wood", amount = 42 },
			{ type = "item", name = "bi-woodpulp", amount = 84 }
		},
		subgroup = "fluid-recipes"
	},
	{ -- Raw Wood from adv-fertiliser
		type = "recipe",
		name = "bi-Logs_Mk4",
		icon = "__Bio_Industries_Lite__/graphics/icons/raw-wood-mk4.png",
		icon_size = 32,
		category = "biofarm-mod-farm",
		order = "a[bi]-ssw-c1[raw-wood4]",
		enabled = false,
		energy_required = 50,
		ingredients =
		{
		  {type="item", name="raw-wood", amount=2},
		  {type="fluid", name="water", amount=50},
		  {type="item", name="bi-adv-fertiliser", amount=5}
		},
		results = {
			{ type = "item", name = "raw-wood", amount = 100 },
			{ type = "item", name = "bi-woodpulp", amount = 200 }
		},
		subgroup = "fluid-recipes"
	},
	{ -- Wood-pulp
		type = "recipe",
		name = "bi-woodpulp",
		icon = "__Bio_Industries_Lite__/graphics/icons/Woodpulp_raw-wood.png",
		icon_size = 32,
		category = "biofarm-mod-smelting",
		subgroup = "raw-material",
		order = "a[bi]-a-b[bi-woodpulp]",
		enabled = false,
		energy_required = 5,
		ingredients = {{"raw-wood",2}},
		result = "bi-woodpulp",
		result_count = 16
	},
	{ -- Ash
		type = "recipe",
		name = "bi-ash",
		icon = "__Bio_Industries_Lite__/graphics/icons/ash_woodpulp.png",
		icon_size = 32,
		category = "biofarm-mod-smelting",
		subgroup = "raw-material",
		order = "a[bi]-a-b[bi-ash]",
		enabled = false,
		energy_required = 5,
		ingredients = {{"bi-woodpulp",16}},
		result = "bi-ash",
		result_count = 16
	},
	{ -- Coke-coal
		type = "recipe",
		name = "bi-coke-coal",
		category = "biofarm-mod-smelting",
		subgroup = "raw-material",
		order = "d-a[bi-coke-coal]",
		order = "a[bi]-a-e[bi-coke-coal]",
		energy_required = 25,
		ingredients = {{"bi-woodpulp",50}},
		result = "bi-coke-coal",
		result_count = 12,
		enabled = false
	},
	{ -- Coal
		type = "recipe",
		name = "bi-coal",
		icon = "__Bio_Industries_Lite__/graphics/icons/coal_mk2.png",
		icon_size = 32,
		category = "biofarm-mod-smelting",
		subgroup = "raw-material",
		order = "a[bi]-a-d[bi-coal]",
		energy_required = 12.5,
		ingredients = {{"bi-coke-coal",12}},
		result = "coal",
		result_count = 16,
		enabled = false
	},	
	{ -- Liquid air
		type = "recipe",
		name = "bi-liquid-air",
		category = "chemistry",
		subgroup = "intermediate-product",
		energy_required = 5,
		ingredients = {},
		results = {
			{ type = "fluid", name = "liquid-air", amount = 100 }
		},
		enabled = false
	},	
	{ -- Nitrogen
		type = "recipe",
		name = "bi-nitrogen",
		category = "chemistry",
		subgroup = "intermediate-product",
		energy_required = 10,
		ingredients = {
			{ type = "fluid", name = "liquid-air", amount = 100 }
		},
		results = {
			{ type = "fluid", name = "nitrogen", amount = 80 }
		},
		enabled = false,
		main_product= "nitrogen"
	},	
	{ -- Fertilizer (Sulfur)
		type = "recipe",
		name = "bi-fertiliser",
		icon = "__Bio_Industries_Lite__/graphics/icons/fertiliser_sulfur.png",
		icon_size = 32,
		category = "chemistry",
		order = "b[fertiliser]",
		energy_required = 5,
		ingredients = {
			{ type = "item", name = "sulfur", amount = 1 },
			{ type = "fluid", name = "nitrogen", amount=10 },
			{ type = "item", name = "bi-ash", amount=10 }
		},
		results = {
			{ type = "item", name = "fertiliser", amount = 5 }
		},
		enabled = false
	},
	{ -- Advanced fertilizer
		type = "recipe",
		name = "bi-adv-fertiliser",
		icon = "__Bio_Industries_Lite__/graphics/icons/advanced_fertiliser_32.png",
		icon_size = 32,
		category = "chemistry",
		order = "b[fertiliser]-b[bi-adv-fertiliser-2]",
		energy_required = 50,
		ingredients = {
			{ type = "item", name = "fertiliser", amount = 20 },
			{ type = "fluid", name = "bi-biomass", amount = 10 },
			{ type = "item", name = "bi-woodpulp", amount = 10 }
		},
		results = {
			{ type = "item", name = "bi-adv-fertiliser", amount = 20 }
		},
		enabled = false
	},	
	{ -- Cokery
		type = "recipe",
		name = "bi-cokery",
		normal =
		{
			enabled = false,
			energy_required = 10,
			ingredients =
			{
				{ "stone-furnace", 3 },
				{ "steel-plate", 10 }
			},
			result = "bi-cokery",
			result_count = 1
		},
		expensive =
		{
			enabled = false,
			energy_required = 15,
			ingredients =
			{
				{ "stone-furnace", 6 },
				{ "steel-plate", 20 }
			},
			result = "bi-cokery",
			result_count = 1
		}
	}
} )
