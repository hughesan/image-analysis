    setPasteMode("xor");
     run("Set Slice...", "slice="+nSlices);
     run("Select All");
     for(i=1; i<nSlices; i++) {
         run("Previous Slice [<]");
         run("Copy");
         run("Next Slice [>]");
         run("Paste");
         run("Previous Slice [<]");
     }