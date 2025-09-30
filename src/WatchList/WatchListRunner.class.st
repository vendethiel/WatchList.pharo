Class {
	#name : 'WatchListRunner',
	#superclass : 'Object',
	#category : 'WatchList',
	#package : 'WatchList'
}

{ #category : 'as yet unclassified' }
WatchListRunner >> fetch [
	WatchListDB new withSession: [ :session |
		| fetcher |
		fetcher := ShowFetcher withApi: StubAPI new.
		fetcher refreshEntriesIn: session.
	].
]

{ #category : 'as yet unclassified' }
WatchListRunner >> run [
	WatchListWindow new withItems: {
		Show new name: 'Lost'; year: 2025; yourself
	} open.
]
