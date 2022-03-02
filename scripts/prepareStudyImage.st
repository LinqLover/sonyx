| workspacePath |
"Remove default windows"
TheWorldMainDockingBar instance closeAllWindows.

"Install sonyx"
workspacePath := [| dir |
	dir := (Smalltalk globals at: #CIPrepareImageDirectory) directoryEntry.
	[(dir / '.project') exists] whileFalse: [
		dir = (dir := dir containingDirectory) ifTrue: [
			self error: 'repository not found']].
	dir fullName] value.
Transcript showln: ('Installing sonyx study from {1}... ' format: {workspacePath}).
[Metacello new
	baseline: 'Sonyx';
	repository: 'filetree://' , workspacePath , '/packages';
	load: #study]
		valueSupplyingAnswer: {'Tonel support is missing*'. true}.
Transcript showln: 'Sonyx Study was installed'.
