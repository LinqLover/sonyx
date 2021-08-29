| workspacePath |
"Remove default welcome contents"
(World submorphOfClass: PreferenceWizardMorph) ifNotNil: #delete.
TheWorldMainDockingBar instance closeAllWindows.

"Install sonyx"
workspacePath := [| dir |
	dir := (Smalltalk globals at: #CIPrepareImageDirectory) directoryEntry.
	[(dir / '.project') exists] whileFalse: [
		dir = (dir := dir containingDirectory) ifTrue: [
			self error: 'repository not found']].
	dir fullName] value.
[(Smalltalk at: #MCTonelMissing) new defaultAction] valueSupplyingAnswer: true.
Transcript showln: ('Installing sonyx from {1}... ' format: {workspacePath}).
Metacello new
	baseline: 'Sonyx';
	repository: 'filetree://' , workspacePath , '/packages';
	load.
Transcript showln: 'Sonyx was installed'.

"Prepare world"
(Smalltalk classNamed: #BaselineOfSonyx) new openWelcomeContents.
