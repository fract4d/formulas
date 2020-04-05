Path: unixg.ubc.ca!unixg.ubc.ca!vanbc.wimsey.com!scipio.cyberstore.ca!math.ohio-state.edu!howland.reston.ans.net!news.sprintlink.net!news.clark.net!rahul.net!a2i!olivea!nntp.msstate.edu!paladin.american.edu!auvm!RUG.AC.BE!Bert.Lammens
Comments: Gated by NETNEWS@AUVM.AMERICAN.EDU
Newsgroups: bit.listserv.frac-l
Mime-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Message-ID: <Pine.SOL.3.91.950220120735.17740A-100000@eduserv.rug.ac.be>
Date: Mon, 20 Feb 1995 12:24:47 +0100
Sender: "\"FRACTAL\" discussion list" <FRAC-L@GITVM1.BITNET>
From: Bert Lammens <Bert.Lammens@RUG.AC.BE>
Subject: a formula file
Lines: 67
 
Now that my exams are over, I really dug deep into fractint.
And this is one of the results.
I haven't had the time to think of original names, or to search for
interesting par-files to accompany these formulas, maybe you can help
a bit.
Warning : I made this file for fractint on a 486 DX2, with FPU.
          I have no idea of calculation times on other platforms.
 
P.s. Ever tried to use statistical distributions in these formulas ?
     (I'm still working on that one)
-------------------------------------------------------------------------
Remark : use float=n for most configurations.
         don't forget to give a non-zero value to p2
 
New_number1 (XAXIS) { z = z1 = z2 = pixel, c1 = real(p1), c2 = imag(p1) :
               z1 = z1*z1+c1,
               z2 = z2*z2+c2,
               c1 = fn1(c1/pixel),
               c2 = fn2(c2/pixel),
               z = z1 + fn3(z)*(z2-z1),
               |z| < |p2|
               }
New_number2  (XAXIS) { z = z1 = z2 = pixel, c1 = real(p1), c2 = imag(p1) :
               z1 = z1*z1+c1,
               z2 = z2*z2+c2,
               c1 = fn1(c1/pixel),
               c2 = fn2(c2/pixel),
               z = z1 + fn3(z-pixel)*(z2-z1),
               |z|< |p2|
               }
New_number3  (XAXIS){ z = z1 = z2 = pixel, c1 = real(p1), c2 = imag(p1) :
               z1 = z1*z1+c1,
               z2 = z2*z2+c2,
               c1 = fn1(c1/pixel),
               c2 = fn2(c2/pixel),
               z = (1-fn3(z1))*z1+fn3(z2)*z2,
               |z|< |p2|
               }
New_number4  (XAXIS){ z = z1 = z2 = pixel, c1 = real(p1), c2 = imag(p1) :
               z1 = z1*z1+c1,
               z2 = z2*z2+c2,
               c1 = fn1(c1/pixel),
               c2 = fn2(c2/pixel),
               z = fn4(z1) + fn3(z)*(fn4(z2)-fn4(z1)),
               |z|< |p2|
               }
New_number5  (XAXIS){ z = z1 = z2 = pixel, c1 = real(p1), c2 = imag(p1) :
               z1 = z1*z1+c1,
               z2 = z2*z2+c2,
               c1 = fn1(c1/pixel),
               c2 = fn2(c2/pixel),
               z = (1-fn3(z1-pixel))*fn4(z1)+fn3(z2-pixel)*fn4(z2),
               |z|< |p2|
               }
New_number6  (XAXIS){ z = z1 = z2 = pixel, c1 = real(p1), c2 = imag(p1) :
               z1 = z1*z1+c1,
               z2 = z2*z2+c2,
               c1 = fn1(c1/pixel),
               c2 = fn2(c2/pixel),
               z = fn4(z1-pixel)*(1-fn3(z1))+fn3(z2)*fn4(z2-pixel),
               |z|< |p2|
               }
 
My_name  { Lammens Bert  :
           Student Civil Engineering,
           University of Ghent, Belgium,
           e-mail blammens@eduserv.rug.ac.be,
          }
