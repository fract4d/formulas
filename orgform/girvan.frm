From - Mon May 27 13:05:14 1996
Newsgroups: sci.fractals
Path: unixg.ubc.ca!info.ucla.edu!agate!howland.reston.ans.net!swrinde!newsfeed.internetmci.com!btnet!news.compulink.co.uk!cix.compulink.co.uk!usenet
From: rgirvan@cix.compulink.co.uk ("Ray Girvan")
Subject: Steffensen's Method #2
Message-ID: <Drz9u3.7vA@cix.compulink.co.uk>
Organization: Ray Girvan, Technical Author
References: <Drty2C.1HD@cix.compulink.co.uk>
Date: Sat, 25 May 1996 20:20:26 GMT
X-News-Software: Ameol
Lines: 32

Here's a Fractint formula implementing Steffensen's method
for finding roots of f(z)=0.  The fractal gives 'strings' at the
boundaries between capture basins, roughly similar to those
of Newton's method - but the texture is different, and there's
also a fractal boundary to an outer diverging region where the
initial values aren't close enough to a root to be captured.

 }
STEFF1(XAXIS) {; Ray Girvan, May 1996
   ; Steffensen's Method
   ; for finding roots of f(z)=0
   ; iteration is
   ;   g=[f(z+f(z)) - f(z)] / f(z)
   ;   z = z - f(z)/g
   ; use floating point
   ;
   ; this formula for f(z) = z^3-p2
   ; try p1=0.01, p2=0.1
   ;
   li=p1;
   z=pixel:
   z1=z*z*z-p2;
   g=((z+z1)*(z+z1)*(z+z1)-z1-p2)/z1;     z=z-z1/g,
   |z1| >= li
}


Ray
===========================================================
Ray Girvan
rgirvan@cix.compulink.co.uk
Technical Author / Journalist
