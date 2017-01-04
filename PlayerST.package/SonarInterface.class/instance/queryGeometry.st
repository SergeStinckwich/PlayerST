as yet unclassified
queryGeometry
	"Request/reply: Query geometry"
	| buffer |
	buffer := self
				headerWithType: playerClient playerMsgtypeReq
				subType: self playerSonarReqGetGeom
				size: 0.
	playerClient socket sendData: buffer