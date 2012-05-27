as yet unclassified
host
	host isNil
		ifTrue: [host := self defaultHost].
	^ host