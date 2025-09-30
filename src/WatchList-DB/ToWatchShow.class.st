"
Represents an entry in a watch list for a show
"
Class {
	#name : 'ToWatchShow',
	#superclass : 'ToWatchItem',
	#instVars : [
		'show',
		'season'
	],
	#category : 'WatchList-DB',
	#package : 'WatchList-DB'
}

{ #category : 'accessing' }
ToWatchShow >> season [

	^ season
]

{ #category : 'accessing' }
ToWatchShow >> season: anObject [

	season := anObject
]

{ #category : 'accessing' }
ToWatchShow >> show [

	^ show
]

{ #category : 'accessing' }
ToWatchShow >> show: anObject [

	show := anObject
]
