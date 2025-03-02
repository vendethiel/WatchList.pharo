Class {
	#name : 'WatchListWindow',
	#superclass : 'Object',
	#instVars : [
		'items'
	],
	#category : 'WatchList-UI',
	#package : 'WatchList-UI'
}

{ #category : 'api - updating' }
WatchListWindow >> refresh [
	|l|
	l := ToListElement new nodeBuilder: [ :node :dataItem :holder |
		|lab|
		lab := ToLabel new
			text: dataItem name;
			yourself.
		node addChild: lab.
	].
	l dataAccessor addAll: items.
	l requestFocus.
	l openInInnerWindow.
]

{ #category : 'api - updating' }
WatchListWindow >> withItems: newItems [
	items := newItems.
	self refresh.
	
]
