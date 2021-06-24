run("Z Project...", "projection=[Sum Slices] all");
run("Correct 3D drift", "channel=2 multi_time_scale sub_pixel only=0 lowest=1 highest=1");
run("16-bit");
run("Bleach Correction", "correction=[Simple Ratio]");

ori = getTitle
getDimensions(width, height, channels, slices, frames); 

selectImage(ori); 
run("Duplicate...", "title=first duplicate channels=2 frames=1"	);	
selectImage(ori);
run("Duplicate...", "title=last duplicate channels=2 frames=&frames");