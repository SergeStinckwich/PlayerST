as yet unclassified
requestDeviceAccessWithInterfaceCode: interfaceCode index: aNumber access: accessMode 
	| devAddr xdr header result |
	devAddr := PlayerDevAddr new.
	devAddr
		robot: 0;
		host: 0;
		interf: interfaceCode;
		index: aNumber.
	xdr := devAddr host xdrInteger.
	xdr := xdr , devAddr robot xdrInteger.
	xdr := xdr , devAddr interf xdrShort.
	xdr := xdr , devAddr index xdrShort.
	xdr := xdr , accessMode xdrByte.
	xdr := xdr , 0 xdrInteger.
	xdr := xdr , 0 xdrInteger.
	header := self 
		headerWithType: self playerMsgtypeReq
		subType: self playerPlayerReqDev
		size: xdr size.
	socket sendData: header , xdr.
	
	[ result := self 
		readInterface: interfaceCode
		index: aNumber.
	result ~= self playerMsgtypeRespAck ] whileTrue.
	^ self 
		getRequestedDeviceWithInterfaceCode: interfaceCode
		index: aNumber