run("Median...", "sigma=1");
run("Binary_Layers.java");
selectWindow("layer_0_");
close();
selectWindow("layer_1_");
setOption("BlackBackground", true);
run("Convert to Mask");
selectWindow("layer_2_");
run("Convert to Mask");
selectWindow("layer_3_");
run("Convert to Mask");
selectWindow("layer_1_");
run("Fill Holes");
selectWindow("layer_2_");
run("Fill Holes");
selectWindow("layer_3_");
run("Fill Holes");
imageCalculator("AND create", "layer_1_","layer_2_");
selectWindow("Result of layer_1_");
imageCalculator("AND create", "Result of layer_1_","layer_3_");
selectWindow("Result of Result of layer_1_");
selectWindow("layer_3_");
selectWindow("layer_1_");
selectWindow("layer_2_");
selectWindow("layer_1_");
selectWindow("layer_3_");
selectWindow("Result of Result of layer_1_");

run("Set Measurements...", "centroid redirect=None decimal=3");
run("Analyze Particles...", "display");


