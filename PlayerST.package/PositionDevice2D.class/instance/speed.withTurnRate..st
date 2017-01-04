constants
speed: aSpeedValue withTurnRate: aTurnValue 
	| pp |
	pp := PlayerPose2d new.
	pp px: aSpeedValue.
	pp py: 0.0.
	pp pa: aTurnValue.
	self setVelocityWithPlayerPose: pp state: 1