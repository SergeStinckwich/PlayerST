*PlayerST
xdrDouble
	^ (MCDataStream streamedRepresentationOf: self)
		copyFrom: 2
		to: 9