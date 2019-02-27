if ( data.raw.technology[ "bi-coal-processing" ] ) then
	table.insert(
		data.raw.technology[ "bi-coal-processing" ].effects,
		{ type = "unlock-recipe", recipe = "bi-wood-plastic-composite" }
	)
end
