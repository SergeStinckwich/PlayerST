as yet unclassified
queryGeometry
	"Request/reply: Query geometry
	"
	| buffer |
	buffer := self 
		headerWithType: playerClient playerMsgtypeReq
		subType: self playerPosition2dReqGetGeom
		size: 0.
	playerClient socket sendData: buffer