"
Data definition for a show, metadata for our watchlist items
"
Class {
	#name : 'Show',
	#superclass : 'Object',
	#instVars : [
		'id',
		'name',
		'icon',
		'date',
		'seasons'
	],
	#category : 'WatchList',
	#package : 'WatchList'
}

{ #category : 'accessing' }
Show >> date [

	^ date
]

{ #category : 'accessing' }
Show >> date: anObject [

	date := anObject
]

{ #category : 'accessing' }
Show >> icon [

	^ icon
]

{ #category : 'accessing' }
Show >> icon: anObject [

	icon := anObject
]

{ #category : 'accessing' }
Show >> id [

	^ id
]

{ #category : 'accessing' }
Show >> id: anObject [

	id := anObject
]

{ #category : 'accessing' }
Show >> name [

	^ name
]

{ #category : 'accessing' }
Show >> name: anObject [

	name := anObject
]

{ #category : 'accessing' }
Show >> seasons [

	^ seasons
]

{ #category : 'accessing' }
Show >> seasons: anObject [

	seasons := anObject
]
