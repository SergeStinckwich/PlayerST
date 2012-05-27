constants
queryGeometry
	"Request/reply: Query geometry"
	| buffer |
	buffer := self
				headerWithType: playerClient playerMsgtypeReq
				subType: self playerLaserReqGetGeom
				size: 0.
	playerClient socket sendData: buffer