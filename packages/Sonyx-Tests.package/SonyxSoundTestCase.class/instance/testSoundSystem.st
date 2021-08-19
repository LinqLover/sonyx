tests
testSoundSystem
	"Meta test for SonyxMockSoundSystem."
	 
	self shouldntPlaySound: [FMSound new].
	self shouldPlaySound: [FMSound new play].
	self shouldntPlaySound: [FMSound new].