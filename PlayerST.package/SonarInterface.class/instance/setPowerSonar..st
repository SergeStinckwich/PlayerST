as yet unclassified
setPowerSonar: aState 
	"On some robots, the sonars can be turned on and off from software.
	To do so, send a PLAYER_SONAR_REQ_POWER request.
	See the player_sonar_power_config structure from player.h
	state turn power off (0) or on (>0)"
	| buffer |
	buffer := self
				headerWithType: playerClient playerMsgtypeReq
				subType: self playerSonarReqPower
				size: 4.
	playerClient socket sendData: buffer.
	playerClient socket sendData: aState xdrByte