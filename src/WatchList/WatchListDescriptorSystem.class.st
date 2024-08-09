"
Descriptor system for WatchList classes
"
Class {
	#name : 'WatchListDescriptorSystem',
	#superclass : 'DescriptorSystem',
	#category : 'WatchList',
	#package : 'WatchList'
}

{ #category : 'accessing' }
WatchListDescriptorSystem >> allTableNames [
	^ #('Show' 'ToWatchShow')
]

{ #category : 'descriptors' }
WatchListDescriptorSystem >> classModelForShow: model [
	model newAttributeNamed: #id.
	model newAttributeNamed: #name.
	model newAttributeNamed: #icon.
	model newAttributeNamed: #date.
]

{ #category : 'descriptors' }
WatchListDescriptorSystem >> classModelForToWatchShow: model [
	model newAttributeNamed: #show.
	model newAttributeNamed: #season.
]

{ #category : 'descriptors' }
WatchListDescriptorSystem >> descriptorForShow: descriptor [
	|table|
	table := self tableNamed: 'SHOW'.
	descriptor table: table.
	descriptor
		directMappingFor: #id.
	(descriptor newMapping: DirectMapping)
		from: #name
		to: (table fieldNamed: 'name').
	(descriptor newMapping: DirectMapping)
		from: #icon
		to: (table fieldNamed: 'icon').
	(descriptor newMapping: DirectMapping)
		from: #date
		to: (table fieldNamed: 'date').
]

{ #category : 'descriptors' }
WatchListDescriptorSystem >> descriptorForToWatchShow: descriptor [
	|table|
	table := self tableNamed: 'TOWATCHSHOW'.
	descriptor table: table.
	(descriptor newMapping: DirectMapping)
		from: #show
		to: (table fieldNamed: 'show').
	(descriptor newMapping: DirectMapping)
		from: #season
		to: (table fieldNamed: 'season').
]

{ #category : 'descriptors' }
WatchListDescriptorSystem >> tableForSHOW: table [
	(table createFieldNamed: 'id' type: platform serial)
		bePrimaryKey.
	table
		createFieldNamed: 'name'
		type: (platform varChar: 255).
	table 
		createFieldNamed: 'icon'
		type: (platform varChar: 255).
	table
		createFieldNamed: 'date'
		type: platform date.
]

{ #category : 'descriptors' }
WatchListDescriptorSystem >> tableForTOWATCHSHOW: table [
	(table createFieldNamed: 'show' type: platform integer)
		bePrimaryKey.
	table
		createFieldNamed: 'season'
		type: platform integer.
]
