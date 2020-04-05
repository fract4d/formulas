Path: unixg.ubc.ca!news.bc.net!news.mic.ucla.edu!library.ucla.edu!europa.eng.gtefsd.com!newsxfer.itd.umich.edu!gatech!howland.reston.ans.net!swiss.ans.net!prodigy.com!usenet
From: XKBR53C@prodigy.com (CHRIS BEHRENS )
Newsgroups: sci.fractals
Subject: Re: Fractal Formulas
Date: 28 Nov 1994 23:58:24 GMT
Organization: Prodigy Services Company  1-800-PRODIGY
Lines: 24
Distribution: world
Message-ID: <3bdqr0$n9i@usenetw1.news.prodigy.com>
NNTP-Posting-Host: inugap2.news.prodigy.com
X-Newsreader: Version 1.2
 
Here are the formulas, then:
 
Flattop {
      c = z = pixel:
            z = sin(z+2) + (c*z)/(z-2);
          |z| <= 4;
      }
 
Rabadon {
     z = pixel/2; q = z^sin(pixel); g = pixel:
          z = z^q/g;
          z = (log(q) + sqr(g)) / z;
          z = 4^z / q^g*2;
          |real(z)| <=8;
    }
 
The only caution is that Rabadon sometimes won't work- I have 
occasionally gotten a division by zero error. Have fun.
 
-
Chris Behrens
xkbr53c@prodigy.com
 
 

Path: unixg.ubc.ca!unixg.ubc.ca!news.mic.ucla.edu!nntp.club.cc.cmu.edu!godot.cc.duq.edu!news.duke.edu!news.mathworks.com!uunet!news.sprintlink.net!cs.utexas.edu!news.cs.utah.edu!news.cc.utah.edu!u.cc.utah.edu!kb9727
From: kb9727@u.cc.utah.edu (Kim Best)
Newsgroups: sci.fractals
Subject: Fractint Par
Date: 10 Feb 1995 21:33:02 GMT
Organization: University Of Utah Computer Center
Lines: 106
Message-ID: <3hgm2e$9c7@news.cc.utah.edu>
NNTP-Posting-Host: u.cc.utah.edu
X-Newsreader: TIN [version 1.2 PL2]
 
A few more formulas and parameter files, I have had interesting results with.
 
 
mfn2fn = {
	z=pixel:
	power = fn2(z);
	z = fn1(z)^power + pixel,
	|z| < p2
	}
 
jfn2fn = {
	z=pixel:
	power = fn2(z);
	z = fn1(z)^power + p1,
	|z| < p2
	}
 
jtofn = {
	z=pixel:
	power = fn2(z);
	z = z^power + p1,
	|z| < p2
	}
 
mtofn = {
	z=pixel:
	power = fn2(z);
	z = z^power + pixel,
	|z| < p2
	}
 
Now some parameters to use with these functions...
 
 
log2sqr            { ; A Section of the Mandelbrot set for the formula
                     ; z  =  log(z) ^ sqr(z)
  reset=1821 type=formula formulafile=kim.frm formulaname=mfn2fn
  function=log/sqr
  corners=2.6266707454/2.6273926625/0.35959516412/0.35935878535/2.62704409\
  74/0.35909736147 params=0/0/100 float=y maxiter=500 inside=0
  colors=mU0a06<27>c00c00b00<26>20K00L00M<28>00u00w00w<45>T0VU0UU0UU0U<114\
  >a06
  }
 
sin2sqr            { ; z1 = sin(z0) ^ sqr(z0)
  reset=1821 type=formula formulafile=kim.frm formulaname=mtofn
  function=sin/sqr
  corners=1.336035534/1.346864405/0.7162926354/0.7085313265/1.343659361/0.\
  7061275462 params=0/0/100 float=y maxiter=1000 inside=0
  colors=000z0z<7>z00<5>zz0<7>0z0<7>0zz<7>00z<7>m0m<7>m00<7>mm0<7>0m0<7>0m\
  m<7>00m<7>c0c<7>c00<7>cc0<7>0c0<7>0cc<7>00c<7>U0U<7>U00<7>UU0<7>0U0<7>0U\
  U<6>04U00U20T<6>K0K<6>K03K00K20<5>KH0KK0IK0<6>0K0<6>0KH0KK0IK<6>00K<6>80\
  CA0AD0D<13>w0wjWr
  }
 
sin2sqr2           { ; z1 = sin(z0) ^ sqr(z0)
  reset=1821 type=formula formulafile=kim.frm formulaname=mtofn
  function=sin/sqr
  corners=1.3414287342/1.343201919/0.7147275786/0.71510027391/1.3418881868\
  /0.71411497597 params=0/0/100 float=y maxiter=1000 inside=0
  colors=CCCcK0<44>rrXssYssW<8>ssEssCsqC<19>sECsCCqCC<21>ACCCCC<21>sCs<20>\
  ECsCCsCEs<19>CqsCssCsq<8>Cs_CsYECE<20>sCs<20>ECsCCsCEs<19>CqsCssCsq<6>Cs\
  c
  }
 
Maelstrom          { ; z = sin(z) ^ sinh(z)
                     ; Look at the wierd junk entering the whirlpool
  reset=1821 type=formula formulafile=kim.frm formulaname=mfn2fn
  function=sin/sinh
  corners=0.542924405/0.5484006094/3.774413923/3.775816907/0.5442224063/3.\
  772683255 params=0/0/100 float=y maxiter=500 inside=0
  colors=CCC00z<7>z0z<6>z00z00<15>zz0<7>0z0<7>0zz<15>00z<7>z0z<6>z00z00<15\
  >zz0<7>0z0<7>0zz<15>00z<7>z0z<6>z00z00<15>zz0<7>0z0<7>0zz<15>00z<7>z0z<6\
  >z00<15>zz0<7>0z0<6>0zz<15>04z
  }
 
Splat!             { ;  
                     ;  
  reset=1821 type=formula formulafile=kim.frm formulaname=mfn2fn
  function=sin/cotan passes=1
  corners=5.6526622/5.7742505/-8.55473708/-8.46354582 params=0/0/100
  float=y maxiter=500 inside=0 outside=real
  colors=000z0z<7>z00<5>zz0<7>0z0<7>0zz<7>00z<7>m0m<7>m00<7>mm0<7>0m0<7>0m\
  m<7>00m<7>c0c<7>c00<7>cc0<7>0c0<7>0cc<7>00c<7>U0U<7>U00<7>UU0<7>0U0<7>0U\
  U<6>04U00U20T<6>K0K<6>K03K00K20<5>KH0KK0IK0<6>0K0<6>0KH0KK0IK<6>00K<6>80\
  CA0AD0D<13>w0wjWr
  }
 
Vines              { ; Bizarre Alien Plant life from a
                     ; B rate Sci-Fi horror flick
  reset=1821 type=formula formulafile=kim.frm formulaname=mfn2fn
  function=sin/log passes=1
  corners=-10.032862/-9.1796235/0.5694353/-0.5682166/-9.1796235/-0.5682166
  params=0/0/100 float=y maxiter=500 inside=253 outside=mult
  colors=0000U0<13>0z0<46>02u00w00w<46>U0UU0UT0V<44>10v00w01v<45>0x20z00z0\
  <43>0U0m00Y3uZ2t
  }
 
Hope you enjoy these, please send in your own.
 
--
Kim Best                                  *************************
                                          *      Origamist        *
Rocky Mountain Cancer Data System         *  Are good with thier  *
420 Chipeta Way #120                      *        Hands          *
Salt Lake City, Utah  84108               *************************

Path: unixg.ubc.ca!unixg.ubc.ca!news.bc.net!news.mic.ucla.edu!library.ucla.edu!agate!newsxfer.itd.umich.edu!news.itd.umich.edu!PM012-00.dialip.mich.net!asdalton
From: asdalton@umich.edu (Andrew Dalton)
Newsgroups: sci.fractals
Subject: organic structures-- .par file
Date: Sun, 12 Feb 1995 11:28:46
Organization: University of Michigan
Lines: 86
Message-ID: <asdalton.85.000B7B1C@umich.edu>
NNTP-Posting-Host: pm012-00.dialip.mich.net
X-Newsreader: Trumpet for Windows [Version 1.0 Rev A]
 
I am interested in the ways that fractals relate to living organisms, 
and I have found some surprising structures in the Mandelbrot set (and its 
accompanying Julia sets).  As far as I know, all of these are original except 
for the octopus.
 
All of the flower structures have realistic phyllotaxis.  For those of you 
who do not know, phyllotaxis involves the ways that plants arrange their 
leaves and petals.  These tend to be arranged in spiral bands whose numbers 
are adjacent numbers in the Fibonacci sequence (1, 1, 2, 3, 5, 8, 13, 21, ...) 
which is the most efficient arrangement, as one might expect in living 
organisms.  "Cauliflower" looks just like the real thing; the real plant has 
not only 8,5 phyllotaxis but also repeated self-similarity.
 
Most of these fractals can be generated fairly quickly, except for the 
sunflowers.  "Sunflower2" took 5 hours to complete on a 486SX/25.  
 
 
Octopus            { ; Mandelbrot zoom
  reset type=mandel passes=2
  corners=-0.746975139/-0.746948462/0.098474076/0.0984940771 maxiter=2000
  inside=0 logmap=yes
  colors=CCCICsGCsECsCCs<20>CqsCssCsq<8>Cs_CsYECE<20>sCs<20>ECsCCsCEs<19>CqsCs\
  sCsq<19>CsECsCEsE<19>qsqsssssq<19>ssEssCsqC<19>sECsCCqCC<21>ACCCCC<21>sCs<17\
  >KCs
  }
 
Nautilus           { ; Mandelbrot zoom
  reset type=mandel passes=2
  corners=-0.76762367/-0.77014899/0.115081733/0.115788504/-0.76887231/0.116747\
  128 maxiter=1000 inside=0 logmap=yes
  colors=000Boz<25>zzz<46>2zz0zz0yz<45>02z00z00y<59>002000000000<29>00k00m01m<\
  29>0ky0mz1mz<3>9oz
  }
 
Cauliflower        { ; 8,5 phyllotaxis
  reset=1821 type=julia passes=2
  corners=-0.718398/-0.067584753/0.10392352/0.59223706
  params=-0.40820767616000003/0.6551210359716666 inside=0
  colors=@BLUES.MAP
  }
 
Sunflower1         { ; 89,55 phyllotaxis
  reset=1701 type=julia passes=2
  corners=-0.79349196/0.067583824/-0.005007999/0.64106843
  params=-0.39072456565125002/0.58730403248999996 maxiter=20000
  inside=0 logmap=1000 colors=@volcano.map
  }
 
Sunflower2         { ; 89,55 phyllotaxis
  reset=1701 type=julia passes=2
  corners=-0.47305561/-0.26295291/0.25774024/0.41538307
  params=-0.39072456565125002/0.58730403248999996 maxiter=20000
  inside=0 logmap=2500 colors=@volcano.map
  }
 
daisy              { ; julia set--21,13 phyllotaxis
  reset type=julia passes=2 corners=-1.389237/1.384229/-1.042988/1.03798
  params=-0.3949223450975/0.595677474375 maxiter=1000 inside=0 logmap=yes
  colors=000x11z00<30>zx0zz0zz1<29>zzxzzzzzz<61>zV1zU0zU0zT0<28>z10z00z00y00<3\
  0>c00b11a11`22_22<23>GEEFFFFFFFFF<28>v11
  }
 
daisy2             { ; julia set--21,13 phyllotaxis
  reset type=julia passes=2 corners=-0.826907/0.214445/-0.051141/0.730525
  params=-0.3949223450975/0.595677474375 maxiter=1000 inside=0 logmap=yes
  colors=@grey.map
  }
 
Shell1             { ; Mandelbrot zoom
  reset type=mandel passes=2
  corners=-0.078649875/-0.077912094/0.658022877/0.657816993/-0.078285569/0.657\
  536978 maxiter=1000 inside=0 logmap=yes colors=@blues.map
  }
 
 
 
-		Andrew Dalton
-		asdalton@umich.edu
--
---		"Faith, n. Belief without evidence in what is told by one who
-----		speaks without knowledge, of things without parallel."
--------						--Ambrose Bierce
-------------
---------------------
----------------------------------
-------------------------------------------------------
