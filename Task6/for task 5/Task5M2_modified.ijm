run("Gaussian Blur...", "sigma=1");
run("Binary Layers");
selectWindow("layer_3_");
close();
close();
setOption("BlackBackground", true);
run("Convert to Mask");
selectWindow("layer_0_");
run("Convert to Mask");
run("Dilate");
selectWindow("layer_1_");
run("Dilate");
imageCalculator("AND create", "layer_0_","layer_1_");
selectWindow("Result of layer_0_");

selectWindow("layer_1_");
close();
selectWindow("layer_0_");
close();

