as yet unclassified
printOn: aStream 
	aStream nextPutAll: host asString;
		 nextPutAll: ':';
		 nextPutAll: robot asString;
		 nextPutAll: ':';
		 nextPutAll: (PlayerClient lookupNameFor: interf);
		 nextPutAll: ':';
		 nextPutAll: index asString