Newsgroups: sci.fractals
Path: unixg.ubc.ca!vanbc.wimsey.com!news.bc.net!sunserver.insinc.net!news.Direct.CA!hookup!news.sprintlink.net!howland.reston.ans.net!swrinde!cs.utexas.edu!news.tamu.edu!news.utdallas.edu!corpgate!brtph500.bnr.ca!bcarh189.bnr.ca!nott!cunews!freenet.carleton.ca!FreeNet.Carleton.CA!ao950
From: ao950@FreeNet.Carleton.CA (Paul Derbyshire)
Subject: Re: c-sin-z idea   Fractint FRM file
Message-ID: <D79DKA.Fu6@freenet.carleton.ca>
Sender: ao950@freenet2.carleton.ca (Paul Derbyshire)
Reply-To: ao950@FreeNet.Carleton.CA (Paul Derbyshire)
Organization: The National Capital FreeNet
Date: Wed, 19 Apr 1995 01:31:22 GMT
Lines: 43
 
 
 
I decided to do it myself, creating a julia fractal based on
c cos z where c varies with z.
It produces fascinating and fantastic results!
The two complex number parameters are the start and end c-value;
at z=-8+0i c is parameter 1 and at z=8+0i c is parameter 2, varying
continuously between.
I have included the formula entry below, and a sample par entry.
To use the par put the formula entry into a file called coslider.frm.
Note that this fractal type is probably best served with floating point.
Enjoy!
 
Comment    {;This formula by Paul PGD Derbyshire
            ;ao950@freenet.carleton.ca}
 
Coslider   {z=pixel;
           d=8;
           b=d*2
           s=z+d;
           n=z-d;
           c=s*p2/b-n*p1/b:
           z=c*cos(z),
           |imag(z)|<127}
 
 
 
Comment    {;This parameter file by Paul PGD Derbyshire
            ;ao950@freenet.carleton.ca}
 
fuse_burning    {
  reset type=formula formulafile=\fractint\coslider.frm formulaname=coslider
  corners=0.0/16.0/6.0/-6.0 params=1/0.4/0/1 float=y inside=0
colors=555000<29>x11z00z10<29>zx0zz0zz1<29>zzxzzzzzz<61>zV1zU0zU0zT0<28>z10z\
  00z00y00<30>c00b11a11`22_22<25>333
  }
 
 
--
Cheers,      |  "There was a sale. The biggest going-out-of-business sale you
________PGD__|  ever saw... But in the end, some of us decided not to buy."
   ___  ~~~                                                  --Needful Things
__| * |_______  ASGND Full Silly and Ysiggian _______________________________

Newsgroups: sci.fractals
Path: unixg.ubc.ca!vanbc.wimsey.com!news.bc.net!sunserver.insinc.net!news.Direct.CA!hookup!news.sprintlink.net!howland.reston.ans.net!swrinde!cs.utexas.edu!news.tamu.edu!news.utdallas.edu!corpgate!bcarh189.bnr.ca!nott!cunews!freenet.carleton.ca!FreeNet.Carleton.CA!ao950
From: ao950@FreeNet.Carleton.CA (Paul Derbyshire)
Subject: More coslider stuff--generalised to FNslider
Message-ID: <D79FyD.Ios@freenet.carleton.ca>
Sender: ao950@freenet2.carleton.ca (Paul Derbyshire)
Reply-To: ao950@FreeNet.Carleton.CA (Paul Derbyshire)
Organization: The National Capital FreeNet
Date: Wed, 19 Apr 1995 02:23:00 GMT
Lines: 38
 
 
Yeah, me again :-)
I have made a generalised coslider (FNslider) where you
select the function from cos, sin, and others.
Also, another PAR entry, one I like, for coslider (won't work with FNslider)
 
 
 
(for FNslider.frm)
 
Comment            {;FRM entry by Paul PGD Derbyshire
                    ;ao950@freenet.carleton.ca}
FNslider   {z=pixel;
           d=8;
           b=d*2
           s=z+d;
           n=z-d;
           c=s*p2/b-n*p1/b:
           z=c*fn1(z),
           |imag(z)|<127}
 
 
Comment            {;PAR entry by Paul PGD Derbyshire
                    ;ao950@freenet.carleton.ca}
Spiral_Flip        {
  reset type=formula formulafile=c:\fractint\coslider.frm formulaname=Coslider
  corners=-8.0/7.999987/5.999982/-6.0 params=-0.01597/0.7115/0.0156/0.7115
  float=y maxiter=1000 bailout=127 inside=0
colors=000F0K<59>T0bU0cU0cV1cV2d<60>zzzzzzzzy<60>zz1zz0zy0yx0<58>G2JF0KF0KF0\
  KF0K
  }
 
 
--
Cheers,      |  "There was a sale. The biggest going-out-of-business sale you
________PGD__|  ever saw... But in the end, some of us decided not to buy."
   ___  ~~~                                                  --Needful Things
__| * |_______  ASGND Full Silly and Ysiggian _______________________________

Newsgroups: sci.fractals
Path: unixg.ubc.ca!vanbc.wimsey.com!scipio.cyberstore.ca!math.ohio-state.edu!howland.reston.ans.net!gatech!bloom-beacon.mit.edu!news.tamu.edu!news.utdallas.edu!corpgate!bcarh189.bnr.ca!nott!cunews!freenet.carleton.ca!FreeNet.Carleton.CA!ao950
From: ao950@FreeNet.Carleton.CA (Paul Derbyshire)
Subject: WEEEEEird formula  CORRECTION
Message-ID: <D81K4G.3Hr@freenet.carleton.ca>
Sender: ao950@freenet2.carleton.ca (Paul Derbyshire)
Reply-To: ao950@FreeNet.Carleton.CA (Paul Derbyshire)
Organization: The National Capital FreeNet
Date: Thu, 4 May 1995 06:45:52 GMT
Lines: 48
 
 
 
Use this one, not the earlier one. If you don't want to re-download it
change "formulaname=PhonyMandel" to "formulaname=PhonyMandelJ" in your copy.
 
 
The formula file must be named 'pgd.frm'
Note: this formula can be slow. If you have fractint 19, use floating point.
 
 
Comment      {;Formulas by: Paul Derbyshire (PGD)
              ;ao950@freenet.carleton.ca}
 
PhonyMandelJ {z=pixel
             f=15/8:
             k=z*z
             z=(k*k/4-k*z*f/3-k/2+f*z-.25)*p1,
             |z|<=127}
 
PhonyMandelM {c=pixel
              f=15/8
              z=1:
              k=z*z
              z=(k*k/4-k*z*f/3-k/2+f*z-.25)*c,
              |z|<=127}
 
Comment      {;Para,eter file by: Paul Derbyshire (PGD)
              ;ao950@freenet.carleton.ca}
 
PhonyMandel        { ; This Julia set looks like a bunch of Mandelbrots!
                     ; Close examination shows this to be illusion.
  reset type=formula formulafile=pgd.frm formulaname=PhonyMandelJ
  corners=-2.158188/2.961973/-1.931917/1.914223 params=1 maxiter=200
  inside=0 logmap=yes
 
colors=000<2>00z<2>0zzzzezz0<2>z00e00L00zzLzL0000<2>00z<2>0zzzzezz0<2>z00e00\
L00zzLzL0000<2>00z<2>0zzzzezz0<2>z00e00L00zzLzL0000<2>00z<2>0zzzzezz0<2>z00e\
00L00zzLzL0000<2>00z<2>0zzzzezz0<2>z00e00L00zzLzL0000<2>00z<2>0zzzzezz0<2>z0\
0e00L00zzLzL0000<2>00z<2>0zzzzezz0<2>z00e00L00zzLzL0000<2>00z<2>0zzzzezz0<2>\
z00e00L00zzLzL0000<2>00z<2>0zzzzezz0<2>z00e00L00zzLzL0000<2>00z<2>0zzzzezz0<\
2>z00e00L00zzLzL0000<2>00z<2>0zzzzezz0<2>z00e00L00zzLzL0000<2>00z<2>0zzzzezz\
0<2>z00e00L00zzLzL0000<2>00z<2>0zzzzezz0
}
--
    .*.  "Clouds are not spheres, mountains are not cones, coastlines are not
 -()  <  circles, and bark is not smooth, nor does lightning travel in a
    `*'  straight line."    ,------------------------------------------------
         -- B. Mandelbrot  |  Paul Derbyshire (PGD) ao950@freenet.carleton.ca

Newsgroups: sci.fractals
Path: unixg.ubc.ca!rover.ucs.ualberta.ca!tribune.usask.ca!canopus.cc.umanitoba.ca!newsflash.concordia.ca!news.mcgill.ca!mcrcim.mcgill.edu!bloom-beacon.mit.edu!news.tamu.edu!news.utdallas.edu!corpgate!bcarh189.bnr.ca!nott!cunews!freenet.carleton.ca!FreeNet.Carleton.CA!ao950
From: ao950@FreeNet.Carleton.CA (Paul Derbyshire)
Subject: WEEEEEird formula :)
Message-ID: <D81BIr.HoM@freenet.carleton.ca>
Sender: ao950@freenet3.carleton.ca (Paul Derbyshire)
Reply-To: ao950@FreeNet.Carleton.CA (Paul Derbyshire)
Organization: The National Capital FreeNet
Date: Thu, 4 May 1995 03:40:03 GMT
Lines: 50
 
 
This Julia formula (PhonyMandelJ) with the parameter set to 1 produces ersatz
mini Mandelbrots!
They are actually illusory.
 
The (true) Mandelbrot formula is printed below with it, and a parameter
entry showing the phony Mandelbrots.
 
 
 
Comment      {;Formulas by: Paul Derbyshire (PGD)
              ;ao950@freenet.carleton.ca}
 
PhonyMandelJ {z=pixel
             f=15/8:
             k=z*z
             z=(k*k/4-k*z*f/3-k/2+f*z-.25)*p1,
             |z|<=127}
 
PhonyMandelM {c=pixel
              f=15/8
              z=1:
              k=z*z
              z=(k*k/4-k*z*f/3-k/2+f*z-.25)*c,
              |z|<=127}
 
Comment      {;Para,eter file by: Paul Derbyshire (PGD)
              ;ao950@freenet.carleton.ca}
 
PhonyMandel        { ; This Julia set looks like a bunch of Mandelbrots!
                     ; Close examination shows this to be illusion.
  reset type=formula formulafile=\fractint\pgd.frm formulaname=PhonyMandel
  corners=-2.158188/2.961973/-1.931917/1.914223 params=1 maxiter=200
  inside=0 logmap=yes
 
colors=000<2>00z<2>0zzzzezz0<2>z00e00L00zzLzL0000<2>00z<2>0zzzzezz0<2>z00e00\
L00zzLzL0000<2>00z<2>0zzzzezz0<2>z00e00L00zzLzL0000<2>00z<2>0zzzzezz0<2>z00e\
00L00zzLzL0000<2>00z<2>0zzzzezz0<2>z00e00L00zzLzL0000<2>00z<2>0zzzzezz0<2>z0\
0e00L00zzLzL0000<2>00z<2>0zzzzezz0<2>z00e00L00zzLzL0000<2>00z<2>0zzzzezz0<2>\
z00e00L00zzLzL0000<2>00z<2>0zzzzezz0<2>z00e00L00zzLzL0000<2>00z<2>0zzzzezz0<\
2>z00e00L00zzLzL0000<2>00z<2>0zzzzezz0<2>z00e00L00zzLzL0000<2>00z<2>0zzzzezz\
0<2>z00e00L00zzLzL0000<2>00z<2>0zzzzezz0
}
 
 
--
    .*.  "Clouds are not spheres, mountains are not cones, coastlines are not
 -()  <  circles, and bark is not smooth, nor does lightning travel in a
    `*'  straight line."    ,------------------------------------------------
         -- B. Mandelbrot  |  Paul Derbyshire (PGD) ao950@freenet.carleton.ca

Newsgroups: sci.fractals
Path: unixg.ubc.ca!news.bc.net!torn!nott!cunews!freenet.carleton.ca!FreeNet.Carleton.CA!ao950
From: ao950@FreeNet.Carleton.CA (Paul Derbyshire)
Subject: Cubebrot 2
Message-ID: <DE9DuH.GBF@freenet.carleton.ca>
Sender: ao950@freenet2.carleton.ca (Paul Derbyshire)
Reply-To: ao950@FreeNet.Carleton.CA (Paul Derbyshire)
Organization: The National Capital FreeNet
Date: Sat, 2 Sep 1995 03:32:41 GMT
Lines: 26
 
 
 
 
Super-weird formula:
 
z -> 1/3 z*z*z + z + c
 
Critical points for mandelbrot sets are +i and -i; they are identical but
one is flipped relative to the other.
 
Cubebrot2j  {z=pixel:
             z=z*z*z/3+z+p1,
             |z|<=25}
 
 
Cubebrot2m {z=P1:
            z=z*z*z/3+z+pixel,
            |z|<=25}
 
Try them out!
 
--
    .*.  "Clouds are not spheres, mountains are not cones, coastlines are not
 -()  <  circles, and bark is not smooth, nor does lightning travel in a
    `*'  straight line."    ,------------------------------------------------
         -- B. Mandelbrot  |  Paul Derbyshire (PGD) ao950@freenet.carleton.ca
