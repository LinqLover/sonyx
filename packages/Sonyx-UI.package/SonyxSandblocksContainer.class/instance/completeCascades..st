private
completeCascades: aMethodBlock

	"Automatically complete all cascades that describe a sonyx sound to simplify further customizations."
	
	"Convert single message sends to manually created sonyx sound instances into cascades."
	(aMethodBlock
		allBlocksSelect: [:b | b isMessageSend and: [b receiver notNil] and: [b receiver guessClassExpensive = SonyxSound]])
		do: [:b | b sandblockEditor do:
			(SBWrapCommand new
				outer: SBStCascade new;
				inner: b;
				wrap: [:outer :inner | outer receiver: b receiver messages: {b}])].
	
	"Make sure that every sonyx sound cascade ends with a #yourself send that the user can click to add a new sound parameter."
	(aMethodBlock
		allBlocksSelect: [:b | b isCascade and: [b receiver isMessageSend and: [b receiver receiver notNil and: [b receiver receiver guessedClass = SonyxSound class]]] and: [b messages notEmpty and: [b messages last selector ~= #yourself]]])
		do: [:b | b sandblockEditor do:
			(SBInsertCommand new
				index: b submorphCount + 1;
				container: b;
				morph: (SBStMessageSend new receiver: nil selector: #yourself);
				shouldMergeWithNext: true;
				yourself)].