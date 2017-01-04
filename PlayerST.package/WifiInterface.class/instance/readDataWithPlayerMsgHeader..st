as yet unclassified
readDataWithPlayerMsgHeader: aHeader 
	| buffer linksCount pwl macCounts ipCount next essidCount pwls |
	aHeader subType = self playerWifiDataState
		ifTrue: [
			pwdata := PlayerWifiData new.
			timeStamp := aHeader timeStamp.
			buffer := ByteArray new: aHeader size.
			playerClient socket receiveDataInto: buffer.
			linksCount := buffer longAt:1 bigEndian: true.
			pwls := Set new.
			linksCount
				timesRepeat: [pwl := PlayerWifiLink new.
					macCounts := buffer longAt: 5 bigEndian: true.
					next := 5 + macCounts.
					pwl
						mac: (buffer copyFrom: 5 to: next).
					ipCount := buffer longAt: next + 1 bigEndian: true.
					next := next + 5.
					pwl
						ip: (buffer copyFrom: next to: next + ipCount).
					essidCount := buffer longAt: next + ipCount + 1 bigEndian: true.
					next := next + ipCount + 5.
					pwl
						essid: (buffer copyFrom: next to: next + essidCount).
					next := next + essidCount + 5.
					pwl
						mode: (buffer longAt: next bigEndian: true).
					pwl
						freq: (buffer longAt: next + 5 bigEndian: true).
					pwl
						encrypt: (buffer longAt: next + 9 bigEndian: true).
					pwl
						qual: (buffer longAt: next + 13 bigEndian: true).
					pwl
						level: (buffer longAt: next + 17 bigEndian: true).
					pwl
						noise: (buffer longAt: next + 22 bigEndian: true).
					pwls add: pwl].
			pwdata links: pwls.
			buffer := ByteArray new: 7 * 4.
			pwdata
				throughput: (buffer longAt: 1 bigEndian: true).
			pwdata
				bitrate: (buffer longAt: 5 bigEndian: true).
			pwdata
				mode: (buffer longAt: 9 bigEndian: true).
			pwdata
				qualType: (buffer longAt: 13 bigEndian: true).
			pwdata
				maxqual: (buffer longAt: 17 bigEndian: true).
			pwdata
				maxlevel: (buffer longAt: 21 bigEndian: true).
			pwdata
				maxnoise: (buffer longAt: 25 bigEndian: true).
			buffer := ByteArray new: 32.
			pwdata ap: buffer.
			readyPwdata := true.
			]