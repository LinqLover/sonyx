welcome contents - private
htmlParse: aString

	^ (HtmlReadWriter on: aString readStream)
		breakLines: false;
		nextText