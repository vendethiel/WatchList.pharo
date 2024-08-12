"
A Show instance returned from an API
"
Class {
	#name : 'APIShow',
	#superclass : 'Object',
	#instVars : [
		'name',
		'icon',
		'date',
		'seasons'
	],
	#category : 'WatchList-API',
	#package : 'WatchList-API'
}

{ #category : 'accessing' }
APIShow >> date [

	^ date
]

{ #category : 'accessing' }
APIShow >> date: anObject [

	date := anObject
]

{ #category : 'accessing' }
APIShow >> icon [

	^ icon
]

{ #category : 'accessing' }
APIShow >> icon: anObject [

	icon := anObject
]

{ #category : 'accessing' }
APIShow >> name [

	^ name
]

{ #category : 'accessing' }
APIShow >> name: anObject [

	name := anObject
]

{ #category : 'accessing' }
APIShow >> seasons [

	^ seasons
]

{ #category : 'accessing' }
APIShow >> seasons: anObject [

	seasons := anObject
]

{ #category : 'api - converting' }
APIShow >> toModel [
	^ Show new
		name: name;
		date: date;
		icon: icon;
		seasons: seasons
		yourself
]
