as yet unclassified
startDemo4
	"player wifi/wifi.cfg"

	| wifi w |
	wifi := playerClient requestInterfaceWifiWithIndex: 0 access: playerClient playerOpenMode.
	playerClient startThread.
	wifi queryWifiIwspyAddrAdd.
	[ wifi isDataReady ] whileFalse.
	w := wifi getData.
	w inspect.
	playerClient stopThread.
	playerClient close