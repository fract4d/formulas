; Made by Pusk s Istv n jr.  E-mail: pataki.v@matavnet.hu
; All parameters noted as single numbers
; mean "real part=that number, imag. part=0"

claws(XAXIS_NOIMAG) { ;very unusual, not a Mandelbrot-variation
;at least for exponent=2 (p2), it needs 'periodicity=0' (or 'no')
;there are holes, often missed by optimized drawing
;('solid guessing' etc.)
;p2 is the exponent (default=2)
;p3 is the bailout if specified (default=4)
x=p2,x=x+(x==0)*2
b=p3,b=b+(b==0)*4
z=y=pixel:
z=z^x+y
y=y*(y/z)+p1
|z|<b
}

notnewton1(XAXIS_NOIMAG) { ;started from a Newton-type, but it looks
;like a Julia-set
;default for p1=1.1
;try p1=0.99 or 0.97 with 'periodicity=no'!
x=p1,x=x+(x==0)*1.1
z=pixel:
z2=z^x,n=z2*z-1,d=x*z2
z=z-n*d
|n|>0.000001
}

simple1 { ;p1 is the exponent (default=2)
x=p1,x=x+(x==0)*2
z=pixel:
z=real(z)+imag(z)+z^x
|z|<4
}

simple1_pixexp {
;p1 is the exponent (default=2)
;p2 is the pixel exponent (default=2)
;p3 is the bailout (default=4, increase for cont. pot)
x=p1,x=x+(x==0)*2
xp=p2,xp=xp+(xp==0)*2
b=p3,b=b+(b==0)*4
z=pixel^xp:
z=real(z)-imag(z)+z^x
|z|<b
}

simple2 {
;needs floating point!
;try sin, cos (with p1=-05 to 1), exp (exp needs "periodicity=no")
;p2 is the bailout (default=4)
b=p2,b=b+(b==0)*4
z=pixel:
z=z*z+fn1(real(z)/imag(z))-p1
|z|<b
}

simple3(XAXIS) { ;needs floating point and maybe "periodicity=no"
z=pixel:
z=z^z/log(z)^z
|z|<1e9
}

fndif { ;p1 is the bailout if specified
;needs floating point if p1>127
;p1 is the bailout if specified (default=1e5)
;try fn1=sqrt fn2=cos insode=bof60 with zooming out!!!
b=p1,b=b+(b==0)*1e5
z=pixel:
z=fn1(z)-fn2(z)
|z|<b
}

simple2_pixexp {
;needs floating point!
;try sin, cos (with p1=-0.5..1), exp, sqrt (exp needs "periodicity=no")
;p2 is the pixel exponent (default=1.5)
;p3 is the bailout (default=4)
x=p2,x=x+(x==0)*1.5
b=p3,b=b+(b==0)*4
z=pixel^x:
z=z*z+fn1(real(z)/imag(z))-p1
|z|<b
}

mandphoenix2 { ;tried to make a mandelphoenix variant
;p2 is the exponent (default=2)
;p3 the bailout if specified (default=4)
;needs floating point for higher bailout
x=p2,x=x+(x==0)*2
z=c=pixel,y=0:
z=z^x+real(c)+imag(c)*y-p1
y=fn1(z)
((p3==0)&&(|z|<4))||((p3!=0)&&(|z|<p3))
}

frothyvar1(XAXIS_NOIMAG) { ;based on the frothybasin formula
;p1 is the "A" in the frothybasin formula (default=-1)
;p2 is the exponent (default=2)
;p3 the bailout if specified (default is 4)
;try p1=-1 and p2= 2..6 (very strange if p2 is not integer)
;also try:
;p1=1.4 p2=6; p1=1.9 p2=2; p1=1.1 p2=24; p1=1.08 p2=11
;p1=1.035 p2=62 (this needs a high resolution)
;p1=(0,1.13), p3=10
;seems to work with integer math too, but slower
f=p1,f=f+(|f|==0)*-1;1.028713768218725
x=p2,x=x+(x==0)*2
z=pixel:
z=z^x-f*conj(z)
((p3==0)&&(|z|<4))||((p3!=0)&&(|z|<p3))
}

simple4 { ;Mandelbrot-like, needs floating point
;p2 is the bailout if specified, default is 10000
;(may be sometimes too high)
;try fn1=sin fn2=sqr or ident inside=bof60
z=c=pixel:
z=fn2(fn1(c*z)-p1)
((p2==0)&&(|z|<10000))||((p2!=0)&&(|z|<p2))
}

quasimandel1 {
;needs floating point!
;p2 is the bailout (default=127)
;try fn=tan, tanh, cotan, cotanh
z=c=pixel:
c=c*fn1(c*z)
z=z*c+c-p1
z=z*fn1(c*z)
((p2==0)&&(|z|<127))||((p2!=0)&&(|z|<p2))
}

dust {
;p1 is the bailout if specified (default=127)
;try fn= log, asin, acos, acosh, atanh, sqrt
;use passes=1,2,3 or d
;'g' fails with this
z=c=pixel:
z=z*fn1(atan(imag(z)/real(z)))+c
((p1==0)&&(|z|<127))||((p1!=0)&&(|z|<p1))
}

net {
;needs floating point!
;should be used with continuous pot. on
;default for p2=1, it shouldn't be 0, but try 3..-3
;p3 is the bailout if specified (default=100000)
x=p2,x=x+(x==0)*1
b=p3,b=b+(b==0)*1e5
z=pixel:
z=z*z+cotan(z)^x+cotan(real(z))^x*cotan(imag(z))^x-p1
|z|<b
}

dust2 {
;needs floating point!
;recommended: passes=1,2,3 or d
;default for p2=1, also try -1
;p3 is the bailout if specified (default=1000000)
x=p2,x=x+(x==0)*1
b=p3,b=b+(b==0)*1e6
z=c=pixel:
z=tan(real(z))^x*tan(imag(z))^x*z+z-p1
|z|<b
}

lines {
;needs floating point!
;use fn=sin, cos (with zooming out!), tan, cotan
;best with continuous pot.!
;p2 is the bailout if specified (default=1e6)
;recommended: passes=1, 2, 3 or d (has very thin lines)
z=c=pixel:
z=fn1(real(z))*fn1(imag(z))*z*z+c-p1
((p2==0)&&(|z|<1e6))||((p2!=0)&&(|z|<p2))
}

barnsleym1_zpower {
;p2 is the exponent (default=2)
;p3 is the bailout (default=16, may need more for high p1)
x=p2,x=x+(x==0)*2
z=c=pixel:
if(real(z)>0)
z=(z-1)*c
else
z=(z+1)*c
endif
z=z^x-p1
((p3==0)&&(|z|<16))||((p3!=0)&&(|z|<p3))
}

chunky1(XAXIS) { ;needs floating point!
z=c=pixel:
z=z^c+c^z
|z|<1e24
}

chunky2(XAXIS_NOIMAG) {
;p2 is the bailout (default=127)
z=c=pixel:
z=z^(z*z+c-p1)
((p2==0)&&(|z|<127))||((p2!=0)&&(|z|<p2))
}

spots(XAXIS_NOIMAG) {
;a very slight modification of the spider formula
;p2 is the bailout if specified (default=2 (!))
z=c=pixel:
z=z*z+c-p1
c=(c/2)/z
((p2==0)&&(|z|<2))||((p2!=0)&&(|z|<p2))
}

spiralspots(XAXIS_NOIMAG) {
;default for p1=0.28
;p2 is the bailout (default=4)
p=p1,p=p+(|p|==0)*0.28
z=c=pixel:
z=z*z+c+p
c=c/(z+z+c)
((p2==0)&&(|z|<4))||((p2!=0)&&(|z|<p2))
}

halfspider(XAXIS_NOIMAG) {
;default for p1=-0.27
;(0 is useless, spider-like formations appear around 1)
p=p1,p=p-(|p|==0)*0.27
z=c=pixel:
z=z*z+c-p
c=c-z*z*c
|z|<8
}

fragments(XAXIS_NOIMAG) {
;needs floating point!
;best with 'potential max. colors'=255, 'slope'=1000-10000
z=c=pixel:
z=z*z+c-p1
c=c-c/z
|z|<1e5
}

notnewt_holes(XAXIS_NOIMAG) {
;needs floating point on and 'periodicity=no'!
;default for p1=2, try 1.8..2.5
;started from the Newton-formula
;with the default p1, inversion with center=(0,0) has no effect!
x=p1,x=x+(x==0)*2
z=pixel:
n=z^x-1
d=x*z^(x-1)
z=z-n/d
z=z*n/d
|n|>0.000001
}

barnsleym3_error {
;tried to make a barnsley3m variant, but something wasn't ok
;(before I turned off the 'if..endif' stuff)
;enter 'center-mag=-0.34/0.515/50'!!!
i=(0,1)
z=c=pixel:
;if(real(z)<0)
z=(real(z)^2-imag(z)^2-1)+i*(2*real(z)*imag(z))-p1
;else
z=(real(z)^2-imag(z)^2)-1+real(c)*real(z)+i*(2*real(z))*imag(z)+imag(c)*real(z)-p1
;endif
|z|<5
}

spider_fig2(XAXIS_NOIMAG) {
;p2 is the bailout (default=8)
;try p1 around 0.2
b=p2,b=b+(b==0)*8
z=c=pixel:
c=c/2+z-p1 ;<--
z=z*z+c ;<-- the order of these was the opposite
|z|<b
}

spider_switch(XAXIS_NOIMAG) {
;p2 defines at which iteration 'z' should be
;reassigned to 'c' (default=2.)
;p3 is the bailout (default=8)
n=p2,n=n+(n==0)*2,n=round(n)
b=p3,b=b+(b==0)*8
i=0
z=c=pixel:
c=c/2+z-p1
z=z*z+c
i=i+1
if(i==n)
c=z
endif
|z|<b
}

mandelcells(XAXIS_NOIMAG) {
;needs floating point!
;default for p1=0.01
;p2 is the bailout (default=1000)
p=p1,p=p+(|p|==0)*0.01
b=p2,b=b+(b==0)*1000
z=c=pixel:
z=z*c+z+p
c=z/c
|z|<b
}

simple2_a {
;try fn=sin, cos, exp (with 'periodicity=no'), and p1=0.001 to 2!
;(default for p1=1)
;p2 is the bailout, default=4
m=p1,m=m+(|m|==0)*1
b=p2,b=b+(b==0)*4
z=c=pixel:
z=z*z+m*fn1(real(z)/imag(z))
|z|<b
}

1/zfn_exp-p { ;needs floating point!
;p2 is the exponent (default=2)
;p3 is the bailout (default=10000)
;try these:
;fn=sin, p1=0.2 or 0.1
;fn=sin, p2=1.5
;fn=sin, p1=(0,0.08), p2=3
;fn=sinh, p1=(0.1,0.05), p2=3
x=p2,x=x+(x==0)*2
b=p3,b=b+(b==0)*10000
z=pixel:
z=(1/fn1(z))^x-p1
|z|<b
}

