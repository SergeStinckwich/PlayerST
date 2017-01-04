as yet unclassified
readHeader
	"Reads the Player message header from the network."
	| deviceAddress xdr header |
	deviceAddress := PlayerDevAddr new.
	header := PlayerMsgHdr new.
	xdr := ByteArray new: self playerxdrMsghdrSize.
	socket receiveDataInto: xdr.
	"Decode the player_devaddr"
	deviceAddress
		host: (xdr longAt: 1 bigEndian: true).
	deviceAddress
		robot: (xdr longAt: 5 bigEndian: true).
	deviceAddress interf: (xdr at: 11)
			* 256
			+ (xdr at: 12).
	deviceAddress index: (xdr at: 15)
			* 256
			+ (xdr at: 16).
	header deviceAddress: deviceAddress.
	header
		type: (xdr at: 20).
	header
		subType: (xdr at: 24).
	header timeStamp: (xdr doubleAt: 25 bigEndian: true).
	header seq: (xdr at: 33)
			* 256
			+ (xdr at: 34) * 256
			+ (xdr at: 35) * 256
			+ (xdr at: 36).
	header size: (xdr at: 37)
			* 256
			+ (xdr at: 38) * 256
			+ (xdr at: 39) * 256
			+ (xdr at: 40).
	^ header