cheat sheets
regexCheatSheet

	^ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: (ReadStream on: self regexCheatSheetContents))