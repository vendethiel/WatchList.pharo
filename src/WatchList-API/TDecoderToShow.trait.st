"
Decode an APIShow instance
"
Trait {
	#name : 'TDecoderToShow',
	#traits : 'TDecoder',
	#classTraits : 'TDecoder classTrait',
	#category : 'WatchList-API',
	#package : 'WatchList-API'
}

{ #category : 'instance creation' }
TDecoderToShow >> fromDictionary: d [
	^ APIShow new
		name: (d at: 'name');
		date: (Time nowUTC); "TODO"
		icon: (d at: 'icon');
		seasons: (d at: 'seasons');
		yourself
]
