*Sonyx-Study-Base-browse-override
browseMessageList: messageListOrBlock name: labelString autoSelect: autoSelectString

	"Create and schedule a MessageSet browser on the message list. If messageListOrBlock is a block, then evaluate it to get the message list."

	| messageList |
	SonyxStudy checkPermissionForMessageSetOr: [^ self].
	
	messageList := messageListOrBlock isBlock
		ifTrue: [ Cursor wait showWhile: messageListOrBlock ]
		ifFalse: [ messageListOrBlock ].
	messageList size = 0 ifTrue: [
		^self inform: 'There are no', String cr, labelString ].
	^ ToolSet 
		browseMessageSet: messageList 
		name: labelString 
		autoSelect: autoSelectString