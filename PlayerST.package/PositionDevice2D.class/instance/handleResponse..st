constants
handleResponse: aPlayermsgHdr 
	"Handle acknowledgement response messages."
	aPlayermsgHdr subType = self playerPosition2dReqGetGeom
		ifTrue: [self readGeom]