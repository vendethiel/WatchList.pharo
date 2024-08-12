"
Provides generic JSON decoding
"
Trait {
	#name : 'TDecoderFromJSON',
	#traits : 'TDecoder',
	#classTraits : 'TDecoder classTrait',
	#category : 'WatchList-API',
	#package : 'WatchList-API'
}

{ #category : 'instance creation' }
TDecoderFromJSON >> parseToDictionary: s [
	^ STONJSON fromString: s
]
