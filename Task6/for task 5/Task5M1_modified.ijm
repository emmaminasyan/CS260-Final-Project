run("Gaussian Blur...", "sigma=1");
run("Binary Layers");
selectWindow("layer_3_");
close();
close();
close();

run("Convert to Mask");
run("Skeletonize");
