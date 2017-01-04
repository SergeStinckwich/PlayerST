as yet unclassified
headerWithType: aTypeNumber subType: aSubTypeNumber size: aSizeNumber 
	| xdr timeStamp |
	timeStamp := (DateAndTime now - DateAndTime epoch) asSeconds asFloat.
	xdr := deviceAddress host xdrInteger.
	xdr := xdr , deviceAddress robot xdrInteger.
	xdr := xdr , deviceAddress interf xdrShort.
	xdr := xdr , deviceAddress index xdrShort.
	xdr := xdr , aTypeNumber xdrByte.
	xdr := xdr , aSubTypeNumber xdrByte.
	xdr := xdr , timeStamp xdrDouble.
	xdr := xdr , 0 xdrInteger.
	xdr := xdr , aSizeNumber xdrInteger.
	^ xdr