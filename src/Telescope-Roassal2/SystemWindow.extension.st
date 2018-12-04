Extension { #name : #SystemWindow }

{ #category : #'*Telescope-Roassal2' }
SystemWindow >> menuPragmaNamed: aPragmaName model: aModel [
	menuBuilder := PragmaMenuBuilder pragmaKeyword: aPragmaName model: aModel
]
