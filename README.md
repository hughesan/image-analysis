# image-analysis

Simple python and image J macro scripts for detecting change over time in timelapse imaging by either frame subtraction or exclusive-or (xor) calculation, either pairwise in sequence  ("progressive") or between the first and last frames. Most register and bleach correct (using exponential fit) prior to processing; some are hard-coded to manipulate channel 2 so adjust as necessary.
