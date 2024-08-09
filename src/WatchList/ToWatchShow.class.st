Class {
	#name : 'ToWatchShow',
	#superclass : 'ToWatchItem',
	#instVars : [
		'show',
		'season'
	],
	#category : 'WatchList',
	#package : 'WatchList'
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
