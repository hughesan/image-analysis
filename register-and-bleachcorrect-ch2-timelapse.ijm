run("Correct 3D drift", "channel=2 multi_time_scale sub_pixel only=0 lowest=1 highest=1");
run("Duplicate...", "duplicate channels=2");
run("16-bit");
run("Bleach Correction", "correction=[Exponential Fit]");
