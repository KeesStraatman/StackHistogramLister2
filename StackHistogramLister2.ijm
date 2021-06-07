// This macro asks the user for the bin count and histogram 
// min and max and then writes the histogram counts of
// the current image or stack to the "Results" window.

// Build from the original StackHistogramlister macro
// (https://imagej.nih.gov/ij/macros/StackHistogramLister.txt)
// with some improvements including handling of all file types
// and an easier to handle results table for (hyper)stacks.

// Kees Straatman, University of Leicester, 3 June 2020

// 3 June 2020: handles also RGB images

if (nImages == 0) exit("This macro requires an open image.");
if (bitDepth==24) run("Make Composite");
Dialog.create("Histogram Lister");
	Dialog.addNumber("Number of Bins:", 256);
	Dialog.addNumber("Histogram Min:", 0);
	if (bitDepth==16) Dialog.addNumber("Histogram Max:", 65536);
	else Dialog.addNumber("Histogram Max:", 256);
Dialog.show();
nBins = Dialog.getNumber();
hMin = Dialog.getNumber();
hMax = Dialog.getNumber();
run("Clear Results");
setBatchMode(true);
stack = getImageID();
for(s=1; s<=nSlices; s++){
	row = 0;
	selectImage(stack);
	if (nSlices>1) run("Set Slice...", "slice=" + s);
	Stack.getPosition(channel, slice, frame);
	run("Duplicate...", "title=temp");
	if (bitDepth!=32) run("32-bit");
	getHistogram(values,counts,nBins,hMin,hMax);
	close();
	for (i=0; i<nBins; i++) {
		if (nSlices>1) setResult ("Bin", row, floor(values[i]));
		setResult("Slice"+slice+"-Channel"+channel+"-frame"+frame, row, counts[i]);
		row++;
 	}
}
updateResults();