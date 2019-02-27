data:extend( {
	{ -- Bio reactor
		type = "recipe",
		name = "bi-bioreactor",
		normal = {
			enabled = false,
			energy_required = 20,
			ingredients = {
				{ "assembling-machine-1", 1 },
				{ "steel-plate", 5 },
				{ "electronic-circuit", 5 }
			},
			result = "bi-bioreactor",
			result_count = 1
		},
		expensive = {
			enabled = false,
			energy_required = 30,
			ingredients = {
				{ "assembling-machine-1", 2 },
				{ "steel-plate", 5 },
				{ "electronic-circuit", 5 }
			},
			result = "bi-bioreactor",
			result_count = 1
		}		
	},	
	{ -- Cellulose 1
		type = "recipe",
		name = "bi-cellulose-1",
		icon = "__Bio_Industries_Lite__/graphics/icons/cellulose.png",
		icon_size = 32,
		category = "chemistry",
		order = "[bi-cellulose-1]",
		energy_required = 20,
		ingredients = {
			{ type = "item", name = "bi-woodpulp", amount = 10 },
			{ type = "fluid", name = "sulfuric-acid", amount = 10 }
		},
		results= {
			{ type = "item", name = "bi-cellulose", amount = 10 }
		},
		enabled = false,
	},
	{ -- Cellulose 2
		type = "recipe",
		name = "bi-cellulose-2",
		icon = "__Bio_Industries_Lite__/graphics/icons/cellulose_2.png",
		icon_size = 32,
		category = "chemistry",
		order = "[bi-cellulose-2]",
		energy_required = 5,
		ingredients =
		{
			{type="fluid", name="steam", amount=10},
			{type="item", name="bi-woodpulp", amount=10},
			{type="fluid", name="sulfuric-acid", amount=20}, 
		},
		results=
		{
			{type="item", name="bi-cellulose", amount=10 }
		},
		enabled = false,
	},
	{ -- Plastic 1
		type = "recipe",
		name = "bi-plastic-1",
		icon = "__Bio_Industries_Lite__/graphics/icons/plastic_bar_1.png",
		icon_size = 32,
		category = "chemistry",
		subgroup = "raw-material",
		order = "g[plastic-bar-1]",
		energy_required = 1,
		ingredients =
		{
			{type="fluid", name="steam", amount=10},
			{type="item", name="bi-woodpulp", amount=40},
			{type="fluid", name="light-oil", amount=20},
		},
		results=
		{
			{type="item", name="plastic-bar", amount=2}
		},
		enabled = false,
	},
	{ -- Plastic 2
		type = "recipe",
		name = "bi-plastic-2",
		icon = "__Bio_Industries_Lite__/graphics/icons/plastic_bar_2.png",
		icon_size = 32,
		category = "chemistry",
		subgroup = "raw-material",
		order = "g[plastic-bar-2]",
		energy_required = 1,
		ingredients = {
			{ type = "item", name = "bi-cellulose", amount = 1 },
			{ type = "fluid", name = "petroleum-gas", amount = 10 }
		},
		results = {
			{ type = "item", name = "plastic-bar", amount = 2 }
		},
		enabled = false,
	},
	{ -- Biomass 1
		type = "recipe",
		name = "bi-biomass-1",
		icon = "__Bio_Industries_Lite__/graphics/icons/biomass_1.png",
		icon_size = 32,
		category = "biofarm-mod-bioreactor",
		energy_required = 5,
		ingredients = {
			{ type = "fluid", name = "water", amount = 100 },
			{ type = "item", name = "fertiliser", amount = 2 }
		},
		results= {
			{ type = "fluid", name = "bi-biomass", amount = 100 }
		},
		enabled = false,
		subgroup = "fluid-recipes",
		order = "x[oil-processing]-z1[bi-biomass]"
	},	
	{ -- Biomass 2
		type = "recipe",
		name = "bi-biomass-2",
		icon = "__Bio_Industries_Lite__/graphics/icons/biomass_2.png",
		icon_size = 32,
		category = "biofarm-mod-bioreactor",
		energy_required = 5,
		ingredients = {
			{ type = "fluid", name = "water", amount = 80 },
			{ type = "fluid", name = "liquid-air", amount = 10 },
			{ type = "fluid", name = "bi-biomass", amount = 10 },
			{ type = "item", name = "bi-ash", amount = 10 }
		},
		results = {
			{ type = "fluid", name = "bi-biomass", amount = 100 }
		},
		enabled = false,
		subgroup = "fluid-recipes",
		order = "x[oil-processing]-z2[bi-biomass]"
	},	
	{ -- Biomass 3
		type = "recipe",
		name = "bi-biomass-3",
		icon = "__Bio_Industries_Lite__/graphics/icons/biomass_3.png",
		icon_size = 32,
		category = "biofarm-mod-bioreactor",
		energy_required = 30,
		ingredients = {
			{ type = "fluid", name = "water", amount = 90 },
			{ type = "fluid", name = "liquid-air", amount = 10 },
			{ type = "fluid", name = "bi-biomass", amount = 10 }
		},
		results = {
			{ type = "fluid", name = "bi-biomass", amount = 100 }
		},
		enabled = false,
		subgroup = "fluid-recipes",
		order = "x[oil-processing]-z3[bi-biomass]"
	},	
	{ -- Biomass to light oil
		type = "recipe",
		name = "bi-biomass_conversion-1",
		icon = "__Bio_Industries_Lite__/graphics/icons/bio_conversion_1.png", 
		icon_size = 32,
		category = "oil-processing",
		enabled = false,
		energy_required = 5,
		ingredients = {
			{ type = "fluid", name = "bi-biomass", amount = 100 },
			{ type = "fluid", name = "water", amount = 10 }
		},
		results = {
			{ type = "item", name = "bi-cellulose", amount = 2 },
			{ type = "fluid", name = "light-oil", amount = 80}
		},
		subgroup = "fluid-recipes",
		order = "a[oil-processing]-b[advanced-oil-processing]-y[bi-Fuel_Conversion]"
	},
	{ -- Biomass to petroleum gas
		type = "recipe",
		name = "bi-biomass_conversion-2",
		icon = "__Bio_Industries_Lite__/graphics/icons/bio_conversion_2.png",
		icon_size = 32,	
		category = "oil-processing",
		enabled = false,
		energy_required = 5,
		ingredients = {
			{ type = "fluid", name = "bi-biomass", amount = 10 },
			{ type = "fluid", name = "water", amount = 10 }
		},
		results = {
			{ type = "fluid", name = "petroleum-gas", amount = 20 }
		},
		subgroup = "fluid-recipes",
		order = "a[oil-processing]-b[advanced-oil-processing]-y[bi-Fuel_Conversion]"
	},
	{ -- Biomass to heavy oil
		type = "recipe",
		name = "bi-biomass_conversion-3",
		icon = "__Bio_Industries_Lite__/graphics/icons/bio_conversion_3.png",
		icon_size = 32,	
		category = "oil-processing",
		enabled = false,
		energy_required = 2.5,
		ingredients = {
			{ type = "fluid", name = "bi-biomass", amount = 10 },
			{ type = "fluid", name = "water", amount = 10 }
		},
		results = {
			{ type = "fluid", name = "heavy-oil", amount = 10 }
		},
		subgroup = "fluid-recipes",
		order = "a[oil-processing]-b[advanced-oil-processing]-y[bi-Fuel_Conversion-3]",
		crafting_machine_tint = {
			primary = { r = 0.000, g = 0.260, b = 0.010, a = 0.000 }, -- #00420200
			secondary = { r = 0.071, g = 0.640, b = 0.000, a = 0.000 }, -- #12a30000
			tertiary = { r = 0.026, g = 0.520, b = 0.000, a = 0.000 }, -- #06840000
		}
	},
  
  --- Bio Battery
  	
	{
		type = "recipe",
		name = "bi-battery",
		icon = "__Bio_Industries_Lite__/graphics/icons/bio_battery.png",
		icon_size = 32,
		category = "chemistry",
		energy_required = 5,
		ingredients =
		{
			{type="item", name="plastic-bar", amount=1},
			{type="fluid", name="bi-biomass", amount=10},
			{type="item", name="bi-cellulose", amount=1},	
		},
		results=
		{
			{type="item", name="battery", amount=1},	
		},
		enabled = false,
		crafting_machine_tint =
		{
			primary = {r = 0.970, g = 0.611, b = 0.000, a = 0.000}, -- #f79b0000
			secondary = {r = 0.000, g = 0.680, b = 0.894, a = 0.357}, -- #00ade45b
			tertiary = {r = 0.430, g = 0.805, b = 0.726, a = 0.000}, -- #6dcdb900
		}
	},	
	
	  --- Bio Acid
  	
	{
		type = "recipe",
		name = "bi-acid",
		icon = "__Bio_Industries_Lite__/graphics/icons/bio_acid.png",
		icon_size = 32,
		category = "chemistry",
		energy_required = 10,
		ingredients =
		{
			{type="fluid", name="water", amount=90},
			{type="fluid", name="bi-biomass", amount=10},
			{type="item", name="bi-cellulose", amount=5},
		},
		results=
		{
			{type="fluid", name="sulfuric-acid", amount=50}, 
		},
		enabled = false,
		subgroup = "fluid-recipes",
		crafting_machine_tint =
		{
			primary = {r = 0.875, g = 0.735, b = 0.000, a = 0.000}, -- #dfbb0000
			secondary = {r = 0.103, g = 0.940, b = 0.000, a = 0.000}, -- #1aef0000
			tertiary = {r = 0.564, g = 0.795, b = 0.000, a = 0.000}, -- #8fca0000
		}

	},	
	
		-- Sulfuric acid to Sulfur --
	{
		type = "recipe",
		name = "bi-sulfur",
		icon = "__Bio_Industries_Lite__/graphics/icons/bio_sulfur.png",
		icon_size = 32,
		category = "chemistry",
		energy_required = 10,		
		ingredients =
		{
			{type="fluid", name="sulfuric-acid", amount=10}, 
			{type="item", name="bi-ash", amount=10},
		},
		results=
		{
			{type="item", name="sulfur", amount=10}
		},
		enabled = false,
	},
	
			-- Sulfuric acid to Sulfur --IF ANGELS INSTALLED
	{
		type = "recipe",
		name = "bi-sulfur_angels",
		icon = "__Bio_Industries_Lite__/graphics/icons/bio_sulfur.png",
		icon_size = 32,
		category = "chemistry",
		energy_required = 10,		
		ingredients =
		{
			{type="fluid", name="sulfuric-acid", amount=50}, 
			{type="item", name="bi-ash", amount=10},
		},
		results=
		{
			{type="item", name="sulfur", amount=10}
		},
		enabled = false,
	},
	
	
})