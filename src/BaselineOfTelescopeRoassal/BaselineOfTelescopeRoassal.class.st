Class {
	#name : #BaselineOfTelescopeRoassal,
	#superclass : #Object,
	#category : #BaselineOfTelescopeRoassal
}

{ #category : #baselines }
BaselineOfTelescopeRoassal >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			"Dependencies"
			self
				telescope: spec;
				roassal2: spec.

			"Packages"
			spec
				package: 'Telescope-Roassal2' with: [ spec requires: #('Telescope' 'Roassal2') ];
				package: 'Telescope-Roassal2-Tests' with: [ spec requires: #('Telescope-Roassal2' 'Telescope' 'Roassal2') ].
				
			"Groups"
			spec
				group: 'Core' with: #('Telescope-Roassal2');
				group: 'Tests' with: #('Telescope-Roassal2-Tests') ]
]

{ #category : #dependencies }
BaselineOfTelescopeRoassal >> roassal2: spec [
	"Roassal changes too much without using branches or releases so for now I'll hardcode the SHA directly."

	spec
		baseline: 'Roassal2'
		with: [ spec repository: 'github://ObjectProfile/Roassal2:d4448204d61e6e9c2e4f1bb34a2a932fa3437c90/src' ]
]

{ #category : #dependencies }
BaselineOfTelescopeRoassal >> telescope: spec [
	spec baseline: 'Telescope' with: [ spec repository: 'github://TelescopeSt/Telescope:v2.x.x/src' ]
]
