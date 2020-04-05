Path: unixg.ubc.ca!kakwa.ucs.ualberta.ca!tribune.usask.ca!decwrl!decwrl!news.doit.wisc.edu!uwm.edu!math.ohio-state.edu!howland.reston.ans.net!paladin.american.edu!auvm!UTPVM1.BITNET!RPEREZ
Comments: Gated by NETNEWS@AUVM.AMERICAN.EDU
Newsgroups: bit.listserv.frac-l
Return-Path: <@AUVM.AMERICAN.EDU,@VTBIT.CC.VT.EDU:FRAC-L@GITVM1.BITNET>
Message-ID: <FRAC-L%93101111335183@GTRI01.GATECH.EDU>
Date: Mon, 11 Oct 1993 09:58:59 EDT
Sender: "\"FRACTAL\" discussion list" <FRAC-L@GITVM1.BITNET>
From: Ramiro Perez <RPEREZ@UTPVM1.BITNET>
Subject: Inside=....
Lines: 75
 
For the interested..
                           Ramiro Perez
 
If you are bored form fractint inside options (zmag,bof60 and epscr)
here are some formulas that change the overall pattern of those
options.
 
Epsilon Cross:
Since Fractint use only three colors for the epsilon cross metod, when you chan
ge the default palette, you didn't see anything interesting.
In those formulas, i color the epsilon cross with the iteration value, so you
will see colored bands that runs over the entire fractal.. But remember to turn
off the normal epsilon cross and use float=yes
 
JULIA_RI(ORIGIN){  ;try p1=.3
Z=PIXEL:
Z=SQR(Z)+P1
Q=10*(|IMAG(Z)|<.0001)
O=10*(|REAL(Z)|<.0001)
P=(|Z|>=20)*10
O+P+Q<=9
}
 
MANDEL_RI(XAXIS){ ;Zoom near the seahorse valley
Z=C=PIXEL:
Z=SQR(Z)+P1
Q=10*(|IMAG(Z)|<.0001)
O=10*(|REAL(Z)|<.0001)
P=(|Z|>=20)*10
O+P+Q<=9
}
 
If you delete the Q or O in the condition, you will only see the imag or the re
al part of the metod...
 
 
Zmag and Bof60:
Since fractint use the variable Z for the calculation of the inside options,
you can change the final value of them, and that change the overall form of tho
se inside options...
In this formula, P1 is the center of the inside option. In the case of zmag, if
 you get it from the lake, you will see waves of color that runs from the p1 an
d are distorted over the entire lake, but if you get it from outside of the lak
e, those waves are too close one to another that moire patterns begin to appear
..
In the case of Bof60, it forms concentric waves around the point p1
 
 
Mandp1{ ;remember to turn on the inside options
z=0,e=0:
e=sqr(e)+pixel
z=e-p1
|e|<=4
}
 
 
In this formula, you will use fn1 to change z, and that make great changes to t
he inside options.
Remember to turn on the inside options and the floating point flag
for example, use zmag or bof60 with fn1=log or fn1=recip.
 
Mandelfn1{ ;make fn1=recip and inside=zmag
e=0,z=0:
e=sqr(e)+pixel
z=fn1(e)
|e|<=4
}
 
In both cases, the maxiter, also change the form of those options, so increment
 them with 100, 200, 300,...
 
                     Any comment?
 
                            Ramiro Perez (rperez@utpvm1.bitnet)
 
ps. excuss my bad english
