data:extend( {
	{
		type = "technology",
		name = "bi_bio_farming",
		icon_size = 128,
		icon = "__Bio_Industries_Lite__/graphics/technology/Bio_Farm_Tech_128.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "bi-Logs_Mk1"
			},
			{
				type = "unlock-recipe",
				recipe = "bi_bio_farm"
			}
		},
		prerequisites = {"optics"},
		unit =
		{
			count = 25,
			ingredients =
			{
			  {"science-pack-1", 1}
			},
			time = 20
		}
	},
	{
		type = "technology",
		name = "bi-coal-processing",
		icon_size = 128,
		icon = "__Bio_Industries_Lite__/graphics/technology/Coal_128.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "bi-woodpulp"
			},
			{
				type = "unlock-recipe",
				recipe = "bi-ash"
			},
			{
				type = "unlock-recipe",
				recipe = "bi-Logs_Mk2"
			},
			{
				type = "unlock-recipe",
				recipe = "bi-cokery"
			}
		},
		prerequisites = {"advanced-material-processing"},
		unit =
		{
			count = 150,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 1}
			},
			time = 30
		}
	},
	{
		type = "technology",
		name = "bi-coal-processing-2",
		icon_size = 128,
		icon = "__Bio_Industries_Lite__/graphics/technology/Coal_128.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "bi-coke-coal"
			}
		},
		prerequisites =	{"bi-coal-processing"},
		unit =
		{
			count = 150,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1}
			},
			time = 35
		},
		upgrade = true,
	},
	{
		type = "technology",
		name = "bi-coal-processing-3",
		icon_size = 128,
		icon = "__Bio_Industries_Lite__/graphics/technology/Coal_128.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "bi-coal"
			},
		},
		prerequisites = {"bi-coal-processing-2"},
		unit =
		{
			count = 250,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1},
				{"production-science-pack", 1}
			},
			time = 40
		},
		upgrade = true
	},
	{
		type = "technology",
		name = "bi-fertiliser",
		icon_size = 128,
		icon = "__Bio_Industries_Lite__/graphics/technology/Fertiliser_128.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "bi-liquid-air"
			},
			{
				type = "unlock-recipe",
				recipe = "bi-nitrogen"
			},
			{
				type = "unlock-recipe",
				recipe = "bi-fertiliser"
			},
			{
				type = "unlock-recipe",
				recipe = "bi-Logs_Mk3"
			}

		},
		prerequisites =
		{
			"fluid-handling",
			"bi_bio_farming"
		},
		unit = {
			count = 250,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 1}
			},
			time = 30
		}
	},
	{
		type = "technology",
		name = "bi-advanced-biotechnology",
		icon_size = 128,
		icon = "__Bio_Industries_Lite__/graphics/technology/Biomass_128.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "bi-Logs_Mk4"
			},
			{
				type = "unlock-recipe",
				recipe = "bi-adv-fertiliser"
			},
			{
				type = "unlock-recipe",
				recipe = "bi-bioreactor"
			},
			{
				type = "unlock-recipe",
				recipe = "bi-cellulose-1"
			},
			{
				type = "unlock-recipe",
				recipe = "bi-cellulose-2"
			},
			{
				type = "unlock-recipe",
				recipe = "bi-biomass-1"
			},
			{
				type = "unlock-recipe",
				recipe = "bi-biomass-2"
			},
			{
				type = "unlock-recipe",
				recipe = "bi-biomass-3"
			},
			{
				type = "unlock-recipe",
				recipe = "bi-battery"
			},
			{
				type = "unlock-recipe",
				recipe = "bi-biomass_conversion-1"
			},
			{
				type = "unlock-recipe",
				recipe = "bi-biomass_conversion-2"
			},
						{
				type = "unlock-recipe",
				recipe = "bi-biomass_conversion-3"
			},
			{
				type = "unlock-recipe",
				recipe = "bi-acid"
			},
			{
				type = "unlock-recipe",
				recipe = "bi-sulfur"
			},
		},
		prerequisites = {
			"bi-fertiliser"
		},
		unit = {
			count = 200,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1},
			},
			time = 30
		}
	}
} )
