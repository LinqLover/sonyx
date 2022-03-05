I am the abstract base class for all RVV visualizations that have been created for the RVV control condition of the sonyx study. RVV (Runtime Value Visualizations) is a project by Luc Prestin that integrates with the Sandblocks editor to provide Babylonian watches with custom visualizations for single blocks.

My instances can be created by opening a Sandblocks editor (this can be done, for instance, by switching to RVV condition of the study), selecting any expression, and pressing cmd + shift + w. In the following, the user needs to open the context menu on the canvas and choose a LED type. By bringing up the menu again, visualization-specific parameters can be configured.

The main contributions of this class are an editable property protocol and the possibility to update visualizations periodically, i.e., independently of new triggers to the probe.

For more information, see: https://github.com/hpi-swa-teaching/live21-value-visualization