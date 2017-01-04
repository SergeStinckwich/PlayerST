baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec package: 'PlayerST'.
			spec group: 'default' with: #('PlayerST') ]