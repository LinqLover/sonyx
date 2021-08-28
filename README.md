# sonyx

[![Tests](https://github.com/LinqLover/sonyx/actions/workflows/test.yml/badge.svg)](https://github.com/LinqLover/sonyx/actions/workflows/test.yml)
[![Coverage Status](https://coveralls.io/repos/github/LinqLover/sonyx/badge.svg?branch=prototyping)](https://coveralls.io/github/LinqLover/sonyx?branch=prototyping)

**sonyx** (***S***ound-based t***O***ols for u***N***derstanding of software s***Y***stems through e***X***ploration) is a toolkit to explore software systems through sonification in [Squeak/Smaltalk](https://squeak.org).
It has initially been developed within the course ["Sonic Thinking - Methods of Working with Sound"](https://hpi.de/studium/im-studium/lehrveranstaltungen/it-systems-engineering-ma/lehrveranstaltung/sose-21-3286-sonic-thinking-seminar-_-methods-of-working-with-sound.html) offered by Julia von Thienen from the [neurodesign group @ HPI](https://hpi.de/neurodesign/home.html).
For more information, please refer to the [acknowledgements](./docs/ACKNOWLEDGEMENTS.md).

The main idea of sonyx is to empower developers to understand (large) software systems by listening to particular aspects of interest.
To do this, developers can create *sound probes* on-the-fly for any expression in method in the system.
Whenever this expression is reached during the system execution, a 

<video alt="SonyxDemoMorph" src="./assets/SonyxDemoMorph.mp4)](./assets/SonyxDemoMorph.mp4">
</video>

<table>
<tbody>
<tr>
<td><a href="./assets/probe.png"><img alt="A sound probe" src="./assets/probe.png" width="55000"></img></a></td>
<td><a href="./assets/monitor.png"><img alt="The sound monitor" src="./assets/monitor.png" width="45000"></img></a></td>
</tr>
</tbody>
</table>


## Installation

1. Install the latest Trunk updates for [Squeak](https://squeak.org).

2. Open a workspace and evaluate the following:
   ```smalltalk
   Metacello new
   	baseline: 'Sonyx';
   	repository: 'github://LinqLover/sonyx:master';
   	load.
   ```

## Usage

tbd
