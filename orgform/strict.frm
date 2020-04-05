From - Tue Jul 30 10:48:53 1996
Path: unixg.ubc.ca!van-bc!uniserve!news.sol.net!spool.mu.edu!news.sgi.com!enews.sgi.com!news.mathworks.com!nntp.primenet.com!news.primenet.com!lkmitch
From: lkmitch@Primenet.Com (Kerry Mitchell)
Newsgroups: sci.fractals
Subject: Re: Mandelbrot & 2
Date: 30 Jul 1996 08:53:03 -0700
Organization: Primenet (602)416-7000
Lines: 41
Message-ID: <4tlb4v$hjn@nnrp1.news.primenet.com>
References: <31F6FBEE.14D5@1stnet.net> <4t7i5n$l1h@toad.stack.urc.tue.nl> <4t8651$g8l@nnrp1.news.primenet.com>
X-Posted-By: lkmitch@usr10.primenet.com

Here are two Fractint parameter files and a formula file to generate the
same zoom of the Mandelbrot set, using the standard bailout criterion
(magnitude squared > 4) and the "strict" condition I mentioned in an
earlier post:

magnitude of z > (1 + sqrt(1 + 4|c|))/2

Kerry Mitchell

-------------------------------

mandel             {
  reset=1930 type=mandel
  center-mag=+0.32931347962382460/+0.04200941422594162/7490.637
  params=0/0 float=y maxiter=256 inside=0 periodicity=0
  colors=0u5<7>0Ap04v20x<9>v04x20<9>1y00u5<7>0Ap04v20x<9>v04x20<9>1y00u5<7\
  >0Ap04v20x<9>v04x20<9>1y00u5<7>0Ap04v20x<9>v04x20<9>1y00u5<7>0Ap04v20x<9\
  >v04x20<9>1y00u5<7>0Ap04v20x<9>v04x20<9>1y00u5<7>0Ap04v20x<9>v04x20<9>1y\
  00u5<7>0Ap04v20x<9>v04x20<9>1y0 cyclerange=0/255
  }

strict             {
  reset=1930 type=formula formulafile=bailout.frm
  formulaname=strict_man
  center-mag=+0.32931347962382460/+0.04200941422594162/7490.637
  float=y maxiter=256 inside=0 periodicity=0
  colors=0u5<7>0Ap04v20x<9>v04x20<9>1y00u5<7>0Ap04v20x<9>v04x20<9>1y00u5<7\
  >0Ap04v20x<9>v04x20<9>1y00u5<7>0Ap04v20x<9>v04x20<9>1y00u5<7>0Ap04v20x<9\
  >v04x20<9>1y00u5<7>0Ap04v20x<9>v04x20<9>1y00u5<7>0Ap04v20x<9>v04x20<9>1y\
  00u5<7>0Ap04v20x<9>v04x20<9>1y0 cyclerange=0/255
  }

strict_man {
        c=pixel, r=cabs(c), r=(1+sqrt(1+4*r))/2, z=0:
        z=sqr(z)+c, cabs(z) < r
        }
--
-------------------------------------------------------------------------------
Kerry Mitchell
lkmitch@primenet.com
-------------------------------------------------------------------------------
