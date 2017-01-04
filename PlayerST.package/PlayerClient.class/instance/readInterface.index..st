as yet unclassified
readInterface: anInterface index: indexNumber 
	"Read the Player server replies."
	| header devAddr access driverNameCount |
	header := self readHeader.
	header type = self playerMsgtypeData ifTrue: 
		[ "Transcript
			show: '[PlayerClient][Debug]: Data for ' , header deviceAddress interf asString , ':' , header deviceAddress index asString;
			cr."
		header deviceAddress interf isZero ifTrue: [ ^ nil ].
		header deviceAddress interf ~= PlayerPlayerCode ifTrue: [ self readDataDevice: header ] ].
	header type = self playerMsgtypeRespAck ifTrue: 
		[ header deviceAddress interf ~= PlayerPlayerCode 
			ifTrue: [ self handleRequestsDeviceWithHeader: header ]
			ifFalse: 
				[ header subType = self playerPlayerReqDevList ifTrue: 
					[ "Read devices_count and array count (4+4)"
					| buffer deviceNumber |
					buffer := ByteArray new: 8.
					socket receiveDataInto: buffer.
					deviceNumber := buffer 
						longAt: 1
						bigEndian: true.
					devAddrList := Set new.
					1 
						to: deviceNumber
						do: 
							[ :each | 
							| d |
							d := ByteArray new: self playerxdrDevaddrSize.
							socket receiveDataInto: d.
							devAddrList add: (self decodeDevAddressFrom: d) ] ].
				header subType = self playerPlayerReqDev ifTrue: 
					[ | buffer |
					buffer := ByteArray new: self playerxdrDevaddrSize.
					socket receiveDataInto: buffer.
					devAddr := self decodeDevAddressFrom: buffer.
					buffer := ByteArray new: 12.
					socket receiveDataInto: buffer.
					access := buffer at: 4.
					driverNameCount := buffer 
						longAt: 5
						bigEndian: true.
					buffer := ByteArray new: driverNameCount.
					socket receiveDataInto: buffer.
					(driverNameCount isDivisibleBy: 4) ifFalse: [ socket receiveDataInto: (ByteArray new: (4 - driverNameCount) \\ 4) ].
					Transcript
						show: '[PlayerClient][Debug]: Got response: ' , devAddr interf asString , ':' , devAddr index asString , '(' , buffer asString , ')' , ' size of payload:' , header size asString;
						cr.
					newPd := self 
						requestSatisfyWithPlayerAddress: devAddr
						accessMode: access
						driverName: buffer asString.
					readyRequestDevice := true ] ] ].
	^ header type