baseline
baseline: spec

	<baseline>

	spec for: #common do: [
		"dependencies"
		spec
			baseline: 'BabylonianProgramming' with: [
				spec repository: 'github://LinqLover/babylonian-programming-smalltalk:stream-sonyx/packages'];
			package: 'IconsBase' with: [
				spec repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/SwaUtilities'];
			package: 'JSON' with: [spec repository: 'https://www.squeaksource.com/PostgresV3'];
			package: 'RuntimeValueVisualization' with: [
				spec
					repository: 'github://LinqLover/live21-value-visualization:stream-sonyx/packages';
					loads: #core];
			baseline: 'Sandblocks' with: [
				spec
					repository: 'github://LinqLover/sandblocks:stream-sonyx/packages';
					loads: #default];
			baseline: 'SimulationStudio' with: [
				spec
					repository: 'github://LinqLover/SimulationStudio:master/packages';
					loads: 'SimulationStudio-Base'].
		
		"packages"
		spec
			package: 'Sonyx-Core' with: [
				spec
					requires: 'BabylonianProgramming';
					postLoadDoIt: #postLoadCore];
			package: 'Sonyx-UI' with: [
				spec requires: #('Sonyx-Core' 'BabylonianProgramming' 'IconsBase' 'Sandblocks')];
			package: 'Sonyx-Demo' with: [
				spec
					requires: #('Sonyx-UI' 'JSON' 'SimulationStudio');
					postLoadDoIt: #postLoadDemo];
			package: 'Sonyx-Study-Base' with: [
				spec requires: #('Sonyx-UI')];
			package: 'Sonyx-Study-RVV' with: [
				spec requires: #('RuntimeValueVisualization')];
			package: 'Sonyx-Study-Tasks' with: [
				spec requires: #('Sonyx-UI' 'Sonyx-Study-RVV' 'JSON')];
			package: 'Sonyx-Study-Solutions' with: [
				spec requires: #('Sonyx-StudyTasks')].
		"test packages"
		spec package: 'Sonyx-Tests' with: [spec requires: #app].
		
		"groups"
		spec
			group: #app with: #('Sonyx-Core' 'Sonyx-UI' 'Sonyx-Demo');
			group: #default with: #(#app #tests);
			group: #study with: #('Sonyx-Study-Base' 'Sonyx-Study-RVV' 'Sonyx-Study-Tasks');
			group: #tests with: 'Sonyx-Tests']