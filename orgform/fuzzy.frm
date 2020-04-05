Newsgroups: sci.fractals
Path: unixg.ubc.ca!cs.ubc.ca!utcsri!torn!spartan.ac.BrockU.CA!dboese
From: dboese@spartan.ac.BrockU.CA (Darcy Boese)
Subject: Scientific American
Message-ID: <1993Jan28.160608.10467@spartan.ac.BrockU.CA>
Organization: Brock University, St. Catharines Ontario
X-Newsreader: Tin 1.1 PL4
Date: Thu, 28 Jan 1993 16:06:08 GMT
Lines: 19
 
[ Article crossposted from bit.listserv.frac-l ]
[ Author was Darcy Boese ]
[ Posted on Thu, 28 Jan 1993 16:05:09 GMT ]
 
After a lot of messing around, I discovered that using |x| is not the same
as abs(x) in Fractint formula files.  In any case, I finally managed to get
a Fractint formula for the fuzzy logic image from the February 1993 issue
of Scientific American:
 
-----CUT HERE-----
fuzzy {
a=real(pixel), b=imag(pixel):
x=1-abs(a-b), y=1-abs(b-1+a), a=x, b=y, sqr(abs(a*a)+abs(b*b))<=p1
}
-----CUT HERE-----
 
To center this on your screen use the command corners=-2/3/2.5/-1.5
 
Enjoy!
