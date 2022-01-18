private
completeCascades: aMethodBlock

	(aMethodBlock
		allBlocksSelect: [:b | b isCascade and: [b receiver isMessageSend and: [b receiver receiver guessedClass = SonyxSound class]] and: [b messages notEmpty and: [b messages last selector ~= #yourself]]])
		do: [:b | b sandblockEditor do:
			(SBInsertCommand new
				index: b submorphCount + 1;
				container: b;
				morph: (SBStMessageSend new receiver: nil selector: #yourself);
				shouldMergeWithNext: true;
				yourself)].