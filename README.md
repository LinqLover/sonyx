# sonyx

[![Tests](https://github.com/LinqLover/sonyx/actions/workflows/test.yml/badge.svg)](https://github.com/LinqLover/sonyx/actions/workflows/test.yml)
[![Coverage Status](https://coveralls.io/repos/github/LinqLover/sonyx/badge.svg?branch=prototyping)](https://coveralls.io/github/LinqLover/sonyx?branch=prototyping)
[![Release](https://github.com/LinqLover/sonyx/actions/workflows/release.yml/badge.svg)](https://github.com/LinqLover/sonyx/actions/workflows/release.yml)

**sonyx** (***S***ound-based t***O***ols for u***N***derstanding of software s***Y***stems through e***X***ploration) is a toolkit to explore software systems through sonification in [Squeak/Smaltalk](https://squeak.org).
It has initially been developed within the course ["Sonic Thinking - Methods of Working with Sound"](https://hpi.de/studium/im-studium/lehrveranstaltungen/it-systems-engineering-ma/lehrveranstaltung/sose-21-3286-sonic-thinking-seminar-_-methods-of-working-with-sound.html) offered by Julia von Thienen from the [neurodesign group @ HPI](https://hpi.de/neurodesign/home.html).
For more information, please refer to the [acknowledgements](./docs/ACKNOWLEDGEMENTS.md).

The main idea of sonyx is to empower developers to understand (large) software systems by listening to particular aspects of interest.
To do this, developers can create *sound probes* on-the-fly for any expression in method in the system.
Whenever this expression is reached during the system execution, a user-defined sound is played.
Developers can customize and combine these sounds or even design them to dynamically reflect the state or result of the expression.

This project is based on [Babylonian Programming/Smalltalk](https://github.com/hpi-swa-lab/babylonian-programming-smalltalk/) and [Sandblocks](https://github.com/tom95/sandblocks).

## Impressions

_Make sure to turn your sound on!_
<video src="https://user-images.githubusercontent.com/38782922/131224109-b474991a-5558-4a62-aff4-ed17e512e663.mp4"></video>

<table>
<tbody>
<tr>
<td><a href="./assets/probe.png"><img alt="A sound probe" src="./assets/probe.png" width="55000"></img></a></td>
<td><a href="./assets/monitor.png"><img alt="The sound monitor" src="./assets/monitor.png" width="45000"></img></a></td>
</tr>
</tbody>
</table>

[Browse all screenshots and screencasts](./assets)

## Download and Installation

A ready-to-use Squeak image is available in the [latest release](https://github.com/LinqLover/sonyx/releases).

If you wish, you can also set up sonyx yourself:

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
