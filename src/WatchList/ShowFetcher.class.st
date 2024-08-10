Class {
	#name : 'ShowFetcher',
	#superclass : 'Object',
	#instVars : [
		'api'
	],
	#category : 'WatchList',
	#package : 'WatchList'
}

{ #category : 'as yet unclassified' }
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
