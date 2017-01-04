constants - data delivery modes
playerDataModePull
	"Data delivery mode: Only on request, send data from all subscribed
	devices. A PLAYER_MSGTYPE_SYNCH packet follows each set of data.
	Request should be made automatically by client libraries when they
	begin reading."
	^ 2