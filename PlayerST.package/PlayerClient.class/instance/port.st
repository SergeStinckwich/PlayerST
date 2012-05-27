as yet unclassified
port
	port isNil
		ifTrue: [port := self defaultPort].
	^ port