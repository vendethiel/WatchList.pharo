Class {
	#name : 'WatchListWindow',
	#superclass : 'SpPresenter',
	#instVars : [
		'table'
	],
	#category : 'WatchList-UI',
	#package : 'WatchList-UI'
}

{ #category : 'layout' }
WatchListWindow >> defaultLayout [
	^ SpBoxLayout newTopToBottom 
		add: table;
		yourself.
]

{ #category : 'api - updating' }
WatchListWindow >> initializePresenters [ 
	table := self newTable
	"	addColumn: (SpStringTableColumn ."
]

{ #category : 'api - updating' }
WatchListWindow >> initializeWindow: wp [
	wp
		title: 'WatchList';
		initialExtent: 800@600.
]

{ #category : 'api - updating' }
WatchListWindow >> withItems: newItems [
	table items: newItems.
]
