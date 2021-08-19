baseline
baseline: spec
	 
	<baseline>

	spec for: #common do: [
		"dependencies"
		spec
			baseline: 'BabylonianProgramming' with: [
				spec repository: 'github://hpi-swa-lab/babylonian-programming-smalltalk:develop/packages'];
			package: 'IconsBase' with: [
				spec repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/SwaUtilities'];
			package: 'JSON' with: [spec repository: 'https://www.squeaksource.com/PostgresV3'];
			baseline: 'Sandblocks' with: [
				spec
					repository: 'github://tom95/sandblocks:master/packages';
					loads: #('Sandblocks-Core' 'Sandblocks-Smalltalk' 'Sandblocks-Utils')];
			baseline: 'SimulationStudio' with: [
				spec repository: 'github://LinqLover/SimulationStudio:master/packages'].
		
		"packages"
		spec
			package: 'Sonyx-Core' with: [
				spec requires: 'BabylonianProgramming'];
			package: 'Sonyx-UI' with: [
				spec requires: #('Sonyx-Core' 'BabylonianProgramming' 'IconsBase' 'Sandblocks')];
			package: 'Sonyx-Demo' with: [
				spec requires: #('Sonyx-UI' 'JSON' 'SimulationStudio')].
		"test packages"
		spec package: 'Sonyx-Tests' with: [spec requires: #app].
		
		"groups"
		spec
			group: #app with: #('Sonyx-Core' 'Sonyx-UI' 'Sonyx-Demo');
			group: #default with: #(#app #tests);
			group: #tests with: 'Sonyx-Tests']