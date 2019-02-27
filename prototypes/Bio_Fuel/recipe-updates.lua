if ( data.raw.recipe["wood"] ) then
	local wood_recipe = table.deepcopy( data.raw.recipe[ "wood" ] )
	wood_recipe.result = nil
	wood_recipe.result_count = nil
	wood_recipe.main_product = "wood"
	wood_recipe.results = {
		{ type = "item", name = "wood", amount = 2 },
		{ type = "item", name = "bi-woodpulp", amount = 2 }
	}
	
	data:extend( { wood_recipe } )
end

data:extend( {
	{
		type = "recipe",
		name = "bi-wood-plastic-composite",
		icon = "__Bio_Industries_Lite__/graphics/icons/wood-plastic-composite-recipe.png",
		icon_size = 32,
		category = "biofarm-mod-smelting",
		subgroup = "raw-material",
		order = "a[bi]-a-b[bi-wood-plastic-composite]",
		enabled = false,
		energy_required = 5,
		ingredients = {
			{ type = "item", name = "bi-woodpulp", amount = 16 },
			{ type = "item", name = "plastic-bar", amount = 4 }
		},
		results = { { type = "item", name = "wood", amount = 8 } },			
	}
} )
