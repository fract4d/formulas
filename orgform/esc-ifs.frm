Path: unixg.ubc.ca!vanbc.wimsey.com!deep.rsoft.bc.ca!agate!doc.ic.ac.uk!pipex!uunet!europa.eng.gtefsd.com!paladin.american.edu!auvm!UTPVM1.BITNET!RPEREZ
Comments: Gated by NETNEWS@AUVM.AMERICAN.EDU
Newsgroups: bit.listserv.frac-l
Return-Path: <@AUVM.AMERICAN.EDU,@VTBIT.CC.VT.EDU:FRAC-L@GITVM1.BITNET>
Message-ID: <FRAC-L%93081912551737@GTRI01.GATECH.EDU>
Date: Thu, 19 Aug 1993 11:19:22 EDT
Sender: "\"FRACTAL\" discussion list" <FRAC-L@GITVM1.BITNET>
From: Ramiro Perez <RPEREZ@UTPVM1.BITNET>
Subject: Escape Time Ifs formulas
Lines: 90
 
If you are interested in the Escape Time version of the Ifs codes
here are some formulas for fractint.
First, formulas with only two transformations..
 
I post this one some months ago.. use p1=.9/-.87
zpj(YAXIS){
z=pixel:
k=real(z)
(z=z*p1-1)*(k<0)+(z=z*conj(p1)+1)*(0<=k),
|z|<=100
}
 
This one make a dragon curve, use p1=(1.1,.9)
Twotrj{
z=pixel, k=-1, l=1:
x=real(z)
a=k*(x<0)
b=l*(x>=0)
p=a+b
z=p1*z+p
|z|<=100
}
 
 
Now, here are formulas with three transformations
 
First, our old friend, the sierpinsky triangle
Use p1=2 for the triangle, and p1=(1.3,.5) for a strange thing
 
Sierpinsky{
z=pixel, j=(0, -1), k=(-1, 0):
x=real(z),
y=imag(z),
y1=(y>.5)
x1=(x>.5)
a=y1*j
b=x1*(y1==0)*k
p=a+b
z=p1*z+p
|z|<=100
}
 
Here is another example of the Sierpinsky triangle, but this one is an
equilateral Triangle.. once again, use p1=2 to get the triangle.. also
you can use p1=(1.9,-.7) to get some strange thing
 
EqTrngl{
z=pixel, j=(0, -1), k=(.8660, 0.5), l=(-0.8660, 0.5):
x=real(z)
y=imag(z)
r=.575*x
x1=(y>=r)
x2=(-r<=y)
x3=(x1 && x2)
x4=(x3==0)
a=x3*j
b=(x<=0)*x4*k
c=(x>0)*x4*l
p=a+b+c
z=p1*z+p
|z|<=100
}
 
And finally, five transformations..
Use p1=2 to get the image
 
Diamont{
z=pixel, j=(0, -1), k=(-1, 0), l=(0, 1), m=(1, 0):
x=real(z)
y=imag(z)
y1=(y>.5)
x1=(x>.5)
y2=(y<-.5)
x2=(x<-.5)
z1=(y1==0 && x1==0)
a=y1*j
b=x1*(y1==0)*k
c=z1*y2*l
d=(z1>0 && y2==0)*x2*m
p=a+b+c+d
z=p1*z+p
|z|<=100
}
 
All of those fractals are julia sets, so you can change p1 by pixel, to
transform them into their mandelbrot related sets..
For the moment, i'm trying to do the escape time Fern, so if anyone have
the correct funtion for it, please post it or send it directly to me.
 
                         Sincerely
                                   Ramiro Perez (rperez@utpvm1.bitnet)
