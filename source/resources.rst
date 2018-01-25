Useful resources
================

--------
Webpages
--------

The LOFAR wiki is a key resource, and you need an account to access the software areas. You can register for an account `here <http://www.lofar.org/operations/doku.php?id=start&do=register>`_.

Essential pages on the wiki are:

+ `Main imaging wiki page <http://www.lofar.org/wiki/doku.php?id=public:\%20user_software:documentation:standard_imaging_pipeline>`_

+ `DPPP <http://www.lofar.org/operations/doku.php?id=public:user_software:documentation:ndppp>`_

+ `BBS <http://www.lofar.org/operations/doku.php?id=public:user_software:documentation:bbs>`_

-----------------------
Useful analysis scripts
-----------------------

A compilation of some practical python scripts is available at the `LOFAR-Contributions GitHub repository <https://github.com/lofar-astron/LOFAR-Contributions>`_.

The scripts provided are [#f1]_ :

+ **average.py**: averages images from multiple sub bands together
+ **average_weights.py**: averages images weighting them by the inverse of their variance.
+ **CallSolFlag.py**: flags calibrated data
+ **closure.py**: prints closure phase vs time/elevation for selected antennas
+ **coordinates_mode.py**: routines to work with astronomical coordinates
+ **plot_flags.py**: plots "images" of frequency versus time on a baseline-by-baseline basis, with the pixel values equal to the visibility amplitudes
+ **traces.py**: plots L,M tracks for the zenith, azimuth and elevation of the NCP, CasA, CygA, and the target against time for a given MS or time range. Observer location is fixed to Dwingeloo. It is easy to add other sources of interest, or to modify the observer location, but it does require editing the Python code. The script is useful to check the elevation of possible interfering sources like CasA and CygA.
+ **casapy2bbs**: written by Joris van Zwieten. Converts a clean component image produced by casa into a skymodel file readable by BBS. See also modelclip.py.
+ **lin2circ.py**: given a Measurement Set with a DATA column given in XX,XY,YX,YY correlations, converts to circular correlations RR,RL,LR,LL and writes them to a column in the Measurement Set.
+ **msHistory.py**: prints information from the HISTORY table of a Measurement Set. Useful for obtaining a quick listing of the parset values used in e.g. DPPP.
+ **plotElevation.py**: given a Measurement Set, plots the elevation of the target source as a function of time
+ **uvplot.py**: plots data from a Measurement Set in several combinations, in a per-baseline fashion. Not as flexible as casaplotms, but should be faster.
+ **embiggen.csh**: increases the size of plotted points in postscript files. Useful when producing ps output from e.g. uvplot.py.
+ **fixlofaruvw.py**: corrects the faulty UVW column header. Use this on all data sets recorded before 20/03/2011 to get the astrometry correct. This script changes the MEASINFO.Ref label in the UVW column to J2000.
+ **plot_Ateam_elevation.py**: it makes plots of the elevation and angular distance of the Ateam and other sources (Sun, Jupiter) given a Measurement Set.
+ **modskymodel.py**: it can shift skymodels by a given angular amount. It can manipulate skymodels also in other ways, like masking them and updating their spectral index values. 
+ **listr_v2.py**: it is a clone of the old AIPS matrix listing of data files. For the data or corrected-data column, it lists amplitudes (or phases) averaged by baseline over a specified time interval. It does also cross-hands and identifies the antennas.
+ **Solution_Plotter.py**: it plots amplitude, phase solutions per antenna and the differential TEC on a baseline. 
+ **skymodel_to_ds9reg.py**: it plots the output of gsm.py with ds9.

In addition to the scripts described above, the GitHub repository also contains a collection of other scripts that are no longer being maintained or deprecated.

--------------
Contact points
--------------

Some key contact points are listed below:

+ **LOFAR Imaging Cookbook** - `Sarrvesh Sridhar <mailto:sarrvesh@astron.nl>`_
+ **DPPP** - `Ger van Diepen <mailto:diepen@astron.nl>`_, `Tammo Jan Dijkema <mailto:dijkema@astron.nl>`_, and `David Rafferty <mailto:rafferty@strw.leidenuniv.nl>`_
+ **AOFlagger** - `Andre Offringa <mailto:offringa@astron.nl>`_
+ **BBS** - `Tammo Jan Dijkema <mailto:dijkema@astron.nl>`_, `Vishambhar Nath Pandey <mailto:pandey@astron.nl>`_
+ **AWImager** - `Tammo Jan Dijkema <mailto:dijkema@astron.nl>`_, and `Bas van der Tol <mailto:tol@astron.nl>`_
+ **Python-casacore/TaQL/Casacore** - `Ger van Diepen <mailto:diepen@astron.nl>`_ and `Tammo Jan Dijkema <mailto:dijkema@astron.nl>`_
+ **SAGECAL, Shapelets** - `Sarod Yatawatta <mailto:yatawatta@astron.nl>`_
+ **PyBDSM, LSMTool** - `David Rafferty <mailto:rafferty@strw.leidenuniv.nl>`_

.. rubric:: Footnotes

.. [#f1] If you have other scripts that could be useful for other commissioners, please contact `Sarrvesh Sridhar <mailto:sarrvesh@astron.nl>`_.
