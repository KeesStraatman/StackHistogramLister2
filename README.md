# StackHistogramLister2

This macro calculates the number of pixels for each intensity in every individual image in a stack or hyperstack. Works also on single images. The macro asks the user for the bin count and histogram min and max and then writes the histogram counts to the Results window. Built from the original StackHistogramLister macro (https://imagej.nih.gov/ij/macros/StackHistogramLister.txt) with some improvements including an easier to handle results table for (hyper)stacks.

## Download code

Select the file "StackHistogramLister2.ijm" and select "Raw" from the right side menu. Select all the code and copy and paste this into the text editor from ImageJ/Fiji (File > New > Text Window). Alternatively, you can download all files via the green "Code" button as a ZIP file and extract the macro file. Save this file in your macros sub-folder within the ImageJ or Fiji folder with the name StackHistogramLister2.ijm.

## Run macro

To run the macro a single time create a results table and via Plugins > Macros > Run... select the macro. Alternatively install it via Plugins > Macros > Install ... and the macro will be added to the Plugins > Macros menu, till you restart ImageJ/Fiji.

## Disclaimer

All the macros published on this repository can be used at your own risk. Although I did my best to ensure that they run as intended, there may be bugs, not expected use or changes to the ImageJ code that results in unexpected behaviour. If you notice a problem with any of the macros please let me know and I will try to solve the problem.