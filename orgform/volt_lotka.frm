Path: unixg.ubc.ca!news.mic.ucla.edu!library.ucla.edu!europa.eng.gtefsd.com!darwin.sura.net!paladin.american.edu!auvm!VAXB.MIDDLESEX.AC.UK!DAVID1
Comments: Gated by NETNEWS@AUVM.AMERICAN.EDU
Newsgroups: bit.listserv.frac-l
Via: uk.ac.mdx.vaxa; Mon, 27 Jun 1994 00:09:14 +0100
Message-ID: <FRAC-L%94062619112203@GITVM1.GATECH.EDU>
Date: Mon, 27 Jun 1994 00:10:00 GMT
Sender: "\"FRACTAL\" discussion list" <FRAC-L@GITVM1.BITNET>
From: DAVID1@VAXB.MIDDLESEX.AC.UK
Subject: Ramiro Perez Volterra .FRM
Lines: 33
 
These are the Volterra-Lotka Formulas p 125 BOF received from Ramiro Perez:
 
comment={received from Ramiro Perez <RPEREZ@EARN.UTPVM1> 18 Aug 93
}
V-Euler{
x=real(pixel),
y=imag(pixel),
h=real(p1)/2:
u=x-x*y,
w=-y+x*y,
c=x+h*(u+u),
d=y+h*(w+w),
x=c,
y=d,
z=x+flip(y),
|z|<=p2
}
V-Heun{
x=real(pixel),
y=imag(pixel),
p=real(p1),
h=imag(p1)/2:
u=x-x*y,
w=-y+x*y,
a=x+p*u,
b=y+p*w,
c=x+h*(u+(a-a*b)),
d=y+h*(w+(-b+a*b)),
x=c,
y=d,
z=x+flip(y),
|z|<=p2
}
Regards David Walter London england.
