"
Premier seance de 5.4
"
Class {
	#name : 'Personne',
	#superclass : 'Object',
	#instVars : [
		'prenom',
		'nom',
		'age'
	],
	#category : 'Modelisation',
	#package : 'Modelisation'
}

{ #category : 'examples' }
Personne class >> example1 [ 

^self nom: 'Toto' prenom:'titi'  age:10 .
]

{ #category : 'examples' }
Personne class >> example2 [

"self example2"
^self nom: 'Bob' prenom:'titi'  age:30 .
]

{ #category : 'instance creation' }
Personne class >> nom: monNom prenom: monPrenom age: monAge [

| tmp|
tmp:= self new.
tmp nom: monNom.
tmp prenom: monPrenom.
tmp age: monAge. 
^tmp
]

{ #category : 'accessing' }
Personne >> age [

	^ age
]

{ #category : 'accessing' }
Personne >> age: anObject [

	age := anObject
]

{ #category : 'comparing' }
Personne >> isOlderThan: another [

^self age > another age.
]

{ #category : 'accessing' }
Personne >> nom [

	^ nom
]

{ #category : 'accessing' }
Personne >> nom: anObject [

	nom := anObject
]

{ #category : 'accessing' }
Personne >> prenom [

	^ prenom
]

{ #category : 'accessing' }
Personne >> prenom: anObject [

	prenom := anObject
]

{ #category : 'printing' }
Personne >> printOn: aStream [
aStream nextPutAll: 'je suis'.
aStream nextPutAll: self nom .
aStream space.
aStream nextPutAll: self prenom.
aStream cr.
aStream nextPutAll: 'j ai'.
aStream space.
aStream nextPutAll: self age printString .
aStream nextPutAll: 'an'.
aStream cr.

]

{ #category : 'comparing' }
Personne >> test [

^self assert: (self class example2 isOlderThan: self class example1 )
]
