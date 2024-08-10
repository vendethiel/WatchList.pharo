Class {
	#name : 'WatchListDB',
	#superclass : 'Object',
	#category : 'WatchList',
	#package : 'WatchList'
}

{ #category : 'database - specific' }
WatchListDB >> dbName [
	^ 'watchlist.db'
]

{ #category : 'database - specific' }
WatchListDB >> directory [
	^ SmalltalkImage current imagePath asFileReference parent fullName
]

{ #category : 'database - specific' }
WatchListDB >> login [
	^ Login new
		database: UDBCSQLite3Platform new;
		host: self directory;
		databaseName: self dbName;
		yourself.
]

{ #category : 'database' }
WatchListDB >> withSession: block [
	|session|
	session := WatchListDescriptorSystem sessionForLogin: self login.
	session login.
	^ [ block value: session ] ensure: [ session logout ]
]
