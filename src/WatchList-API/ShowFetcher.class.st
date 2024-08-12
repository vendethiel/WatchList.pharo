"
Show fetcher.

Use this to pull:

```
YOURDBHERE new withSession: [ :session |
      |fetcher|
      fetcher := ShowFetcher new api: YOURAPIHERE.
      fetcher refreshEntriesIn: session.
]
```
"
Class {
	#name : 'ShowFetcher',
	#superclass : 'Object',
	#instVars : [
		'api'
	],
	#category : 'WatchList-API',
	#package : 'WatchList-API'
}

{ #category : 'accessing' }
ShowFetcher >> api: anAPI [ 
	api := anAPI
]

{ #category : 'data source updates' }
ShowFetcher >> refreshEntriesIn: session [
	session inUnitOfWorkDo: [ 
		api newToday select: [ :show |
			(session
				readOneOf: Show
				where: [ :e | e name = show name ])
				isNil
		] thenDo: [ :show |
			session register: show toModel
		]
 	]
]
