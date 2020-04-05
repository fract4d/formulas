Path: unixg.ubc.ca!ubc-cs!news-server.csri.toronto.edu!utgpu!cs.utexas.edu!qt.cs.utexas.edu!zaphod.mps.ohio-state.edu!uwm.edu!bionet!raven.alaska.edu!milton!nntp.uoregon.edu!cie.uoregon.edu!scavo
From: scavo@cie.uoregon.edu (Tom Scavo)
Newsgroups: alt.fractals
Subject: Re: Newtons method for mandelbrot and julia sets
Keywords: fractals formulas, fractint, newton's method, mandelbrot, julia
Message-ID: <1992Jan16.200636.23680@nntp.uoregon.edu>
Date: 16 Jan 92 20:06:36 GMT
References: <78tr!-d@rpi.edu>
Sender: news@nntp.uoregon.edu
Organization: Campus Information Exchange, University of Oregon
Lines: 47
 
In article <78tr!-d@rpi.edu> waldbb@aix02.ecs.rpi.edu (Barry David Waldbaum) writes:
>Does anyone have Fractint formula files that have newtons method for the
>mandelbrot set and the julia set? If not does anyone have any other types
>of code that do this? 
 
I'm afraid I don't understand your Fractint request since Newton's
method has little to do with Mandelbrot sets and Julia sets (even
though the  M  set mysteriously shows up in Newton-type pictures!).
 
Newton's method takes a function  f  and returns another function
 
                      f(z)
	Nf(z) = z - -------
	             f'(z)
 
called the Newton iteration function which is a rational function
when  f  is a polynomial.  For example, when  f(z) = z^3 - 1 ,
 
                 2z^3 + 1
	Nf(z) = ---------- .
	           3z^2
 
Now, iterate  Nf  over a grid in the complex plane not unlike
the algorithm used to compute a Julia set.  The orbit of any
given point will tend to find one of the three roots of  f . 
Color the point a different color (say, red, green, or blue)
depending on which of the three roots it converges to, and a
different shade of that color depending on the speed of conver-
gence.  If the point does not converge after a predetermined
number of maximum iterations, then color the point black. 
 
Increase this maximum value and watch the black region diminish
in size until all that remains is a fractal basin boundary inter-
spersed with marvelous shades of red, green, and blue.  In the
limit, as the maximum number of iterations gets large, this
algorithm solves the following somewhat perplexing riddle:
 
        Use three colors to paint a sheet of paper,
        with the only restriction being that wherever
        two of the colors meet, all the colors have
        to meet.
 
despite one's first impression that the riddle is insoluable.
 
-- 
Tom Scavo
scavo@cie.uoregon.edu
