Class {
	#name : 'BaselineOfWatchList',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfWatchList',
	#package : 'BaselineOfWatchList'
}

{ #category : 'baselines' }
BaselineOfWatchList >> baseline: spec [
	<baseline>
	spec for: #common do: [
		"Dependencies"
		spec
			baseline: 'Toplo'
			with: [ spec repository: 'github://pharo-graphics/Toplo:v0.1.0/src' ].
		
		spec
			baseline: 'SQLite3'
			with: [ spec repository: 'github://pharo-rdbms/Pharo-SQLite3/src' ].
			"TODO group: 'glorp'"
		
		spec
			baseline: 'Glorp'
			with: [ spec repository: 'github://pharo-rdbms/glorp' ].

		"Packages"
		spec
			package: 'WatchList'
			with: [ spec requires: #('Toplo' 'SQLite3' 'Glorp') ].
	]
]

{ #category : 'access' }
BaselineOfWatchList >> projectClass [
	^ MetacelloCypressBaselineProject
]
