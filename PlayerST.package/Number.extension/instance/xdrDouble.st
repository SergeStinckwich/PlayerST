*PlayerST
xdrDouble
	^ (ReferenceStream streamedRepresentationOf: self)
		copyFrom: 2
		to: 9