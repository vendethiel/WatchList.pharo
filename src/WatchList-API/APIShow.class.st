Class {
	#name : 'APIShow',
	#superclass : 'Object',
	#instVars : [
		'name'
	],
	#category : 'WatchList-API',
	#package : 'WatchList-API'
}

{ #category : 'api - converting' }
APIShow >> toModel [
	^ Show new
		name: name
]
