data:extend( {	
	{ -- Celluluse
		type = "item",
		name = "bi-cellulose",
		icon = "__Bio_Industries_Lite__/graphics/icons/cellulose.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "b[cellulose]",
		stack_size = 200
	},	
	{ -- BioReactor
		type = "item",
		name = "bi-bioreactor",
		icon = "__Bio_Industries_Lite__/graphics/icons/bioreactor.png",
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		subgroup = "production-machine",
		order = "z[bi]-a[bi-bioreactor]",
		place_result = "bi-bioreactor",
		stack_size = 10
	}	
} )
