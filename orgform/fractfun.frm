Newsgroups: sci.fractals
Path: unixg.ubc.ca!cs.ubc.ca!destroyer!gumby!wupost!cs.utexas.edu!torn!spartan.ac.BrockU.CA!ddametto
From: ddametto@spartan.ac.BrockU.CA (David Dametto)
Subject: more Fractint fun
Message-ID: <1992Dec11.151019.9176@spartan.ac.BrockU.CA>
Organization: Brock University, St. Catharines Ontario
X-Newsreader: Tin 1.1 PL4
Date: Fri, 11 Dec 1992 15:10:19 GMT
Lines: 43
 
I'm posting this to sci.fractals for someone who doesn't have access to the
newsgroups.
 
> I've been playing around with the exiting conditions for the plain-vanilla
> Mandelbrot set and these are some of the better results I've gotten out of
> it.  This is a FRACTINT formula file which you can try out.  Most of these
> look darn good with just the GOODEGA colour map.  Enjoy!
> 
>                                                 Darcy "Possum Boy" Boese
 
---- CUT HERE ----
Siamese (XAXIS) {; Try params=6/0/2/0  Note: symmetry valid only for Real p1
c=z=pixel: z=z^p1+c, |z|<=Real(p2)
}
 
Fingers (XAXIS) {; Try params=2/50/0/0
c=z=pixel: z=z^Real(p1)+c, Real(z)<=Imag(p1)
}
 
Glow (XAXIS) {;Try params=2/50/0/0
c=z=pixel: z=z^Real(p1)+c, |Real(z)|<=Imag(p1)
}
 
Waves (XAXIS) {; Try params=2/50/2/1
c=z=pixel: z=z^Real(p1)+c, |Real(z)*Real(p2)|+|Imag(z)*Imag(p2)|<=Imag(p1)
; "She canna take this much longer Cap'n!"
}
 
WarpEngines (XAXIS) {; Try params=2/1000/0/0
c=z=pixel: z=z^Real(p1)+c, |z^c|<=Imag(p1)
; "Full speed ahead Mr. Sulu!"
}
 
ReEntry (XAXIS) {; Try params=2/1000/0/0
c=z=pixel: z=z^Real(p1)+c, 1/Imag(p1)<=|z^c|
; "Shields up!  Hull temperature approaching critical!"
}
 
-- 
 
-----
David Dametto                 | I'm French!  Why do think I have this 
ddametto@spartan.ac.brocku.ca | outrageous accent, you silly king!
