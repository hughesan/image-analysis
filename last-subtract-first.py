from ij import IJ, ImagePlus
from ij.io import Opener
from ij.plugin import ChannelSplitter
from ij.plugin import Duplicator
from ij.plugin import ImageCalculator

imp = IJ.getImage();

nframes=imp.getNFrames();
imp2 = Duplicator().run(imp, 1, 1);
imp3 = Duplicator().run(imp, nframes, nframes) 

imp2.setTitle("first");
imp3.setTitle("last");
imp2.show();
imp3.show()

imp4 = ImageCalculator().run("subtract create 32 bit", imp3, imp2)
imp4.setTitle("lastSUBfirst")
imp4.show()