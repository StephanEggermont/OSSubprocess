baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				package: 'OSSubprocess' with: [ spec requires: 'FFICHeaderExtractor' ];
				package: 'OSSubprocess-Tests' with: [ spec requires: 'OSSubprocess' ].
			
			spec baseline: 'FFICHeaderExtractor' with: [
    			spec repository: 'github://marianopeck/FFICHeaderExtractor:master/repository' ]
		]