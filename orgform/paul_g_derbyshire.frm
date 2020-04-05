Newsgroups: sci.fractals
Date: 1994-12-19 15:17:58 PST

  This formula for Fractint produces weird "doublebrots."
  P2 sets bailout (use a number like 10000 and use floating point or you may
  get garbled results and holes in your set).
  P1 causes the Mandelbrot set to "morph". P1=0 will draw the normal M-set;
  P1=1 will draw the M-set from Fractint's Mandellambda type (derived from
  the verhulst population-dynamic equation). Other values produce all sorts
  of weird things; two floating M-sets, or two fused M-sets, etc. The
  mandellambda turns out to be a fused pair of M-sets.

DoubleBrots    {c=pixel
                pp=1-p1
                z=(pp-1)*c/(2*(pp-1)*c+2*pp:
                a=z*z+c
                b=c*z*(1-z)
                z=pp*a+p1*b,
                |z|<=p2}
