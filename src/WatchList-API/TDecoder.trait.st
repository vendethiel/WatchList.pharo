"
Generic decoder trait
"
Trait {
	#name : 'TDecoder',
	#category : 'WatchList-API',
	#package : 'WatchList-API'
}

{ #category : 'instance creation' }
TDecoder >> decode: s [
	^ self fromDictionary: (self parseToDictionary: s)
]

{ #category : 'instance creation' }
TDecoder >> fromDictionary: d [
	^ self explicitRequirement 
]

{ #category : 'instance creation' }
TDecoder >> parseToDictionary: s [
	^ self explicitRequirement 
]
