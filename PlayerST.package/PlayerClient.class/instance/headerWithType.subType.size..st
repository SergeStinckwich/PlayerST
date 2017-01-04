as yet unclassified
headerWithType: aTypeNumber subType: aSubTypeNumber size: aSizeNumber 
	| devAddr xdr timeStamp |
	devAddr := PlayerDevAddr new.
	devAddr host: 0.
	devAddr robot: 0.
	devAddr interf: PlayerPlayerCode.
	devAddr index: 0.
	timeStamp := (DateAndTime now - DateAndTime epoch) asSeconds asFloat.
	xdr := devAddr host xdrInteger.
	xdr := xdr , devAddr robot xdrInteger.
	xdr := xdr , devAddr interf xdrShort.
	xdr := xdr , devAddr index xdrShort.
	xdr := xdr , aTypeNumber xdrByte.
	xdr := xdr , aSubTypeNumber xdrByte.
	xdr := xdr , timeStamp xdrDouble.
	xdr := xdr , 0 xdrInteger.
	xdr := xdr , aSizeNumber xdrInteger.
	^ xdr