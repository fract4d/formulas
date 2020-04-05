; Made by Pusk s Istv n jr.  E-mail: pataki.v@matavnet.hu
; All parameters noted as single numbers
; mean "real part=that number, imag. part=0"

newton_fig2(XAXIS_NOIMAG) { ;needs floating point ON and 'periodicity=no' !
;p1 is the order (default=3)
;try p1=-3 and below
x=p1,x=x+(x==0)*3
x=x-1 ;this keeps the number of basins
z=pixel:
z2=z^x,n=z2*z-1,d=x*z2
z=z-n/d
|n|>0.000001
}

quasinewton(XAXIS_NOIMAG) { ;tried to make a Newton-variant
;p1 is the exponent (default=5)
;draws a 'gear' with p1>~20
;try 50..200 for p1
;the picture is 120 deg. symmetric if (p1 mod 3)=0
;needs floating point ON and 'periodicity=no' !
x=p1,x=x+(x==0)*5
z=pixel:
n=z^x-1,d=x*z*z
z=z-n/d
|n|>0.000001
}

quasinewton2(ORIGIN) { ;needs floating point!
z=pixel:
n=z^3*z-3
z=z-n/(3*z)
|n|>0.000001
}

newtonexp1(XAXIS_NOIMAG) { ;needs floating point ON and 'periodicity=no' !
; both should be nonzero (default for both is 3)
; try p1=1.8..4 and p2=p1
; or p1=5 and p2=1.2
x1=p1,x1=x1+(x1==0)*3
x2=p2,x2=x2+(x2==0)*3
z=pixel:
z2=z^x1,n=z2*z-1,d=x1*z2
z=(z-n/d)^x2
|n|>0.000001
}

newton_2fnpix {
;p1 is the Newton degree (default=3)
x=p1,x=x+(x==0)*3
z=fn1(fn2(pixel)):
n=z^x-1
d=x*z^(x-1)
z=z-n/d
|n|>0.000001
}

newtonwarp1(XAXIS_NOIMAG) {
;p1 is the Newton degree (default=3)
;try nonzero values for p2
x=p1,x=x+(x==0)*3
z=pixel:
n=z^x-1-p2
d=x*z^(x-1-p2)
z=z-n/d
|n|>0.000001
}

newtonfn(XAXIS_NOIMAG) {
;needs floating point!
;p1 is the Newton degree (default=3)
;try p1>=3 and fn=abs, sin or sinh with inside=bof60, sqr, cos, cosh
;some also work with p1=2
x=p1,x=x+(x==0)*3
z=pixel:
zf=fn1(z)
n=zf^x-1
d=x*zf^(x-1)
z=zf-n/d
|n|>0.000001
}

newton_pixexp {
;p1 is the Newton degree (default=3)
;p2 is the pixel exponent (default=2)
x=p1,x=x+(x==0)*3
px=p2,px=px+(px==0)*2
z=pixel^px:
n=z^x-1
d=x*z^(x-1)
z=z-n/d
|n|>0.000001
}

newton_pixfnpixexp {
;p1 is the Newton degree (default=3)
x=p1,x=x+(x==0)*3
z=pixel^fn1(pixel):
n=z^x-1
d=x*z^(x-1)
z=z-n/d
|n|>0.000001
}

newton_strings {
;needs floating point!
;p1 is the Newton order (default=7)
;p2 defines how many times 'n' should be mixed back
;(default=1, 0 would be the original Newton)
;try p2 between -4 and 4, esp. between 0 and 1 (or -1)!
x=p1,x=x+(x==0)*7
m=p2,m=m+(m==0)*1
z=pixel:
n=z^x-1
d=x*z^(x-1)+m*n ;<-- 'n' added here!
z=z-n/d
|n|>0.000001
}

newtonjulia1(XAXIS_NOIMAG) {
;based on the Newton formula, looks like a (giant) Julia-set (zoom out!)
;but the inner detail is rather Newton-like with high p1
;needs floating point ON and 'periodicity=no'!
;default for p1=5, also try 8..20
x=p1,x=x+(x==0)*5
z=pixel:
n=z^x-1
d=x*z^(x-1)
z=z-n/d*z
|n|>0.000001
}

newton_fig3(XAXIS_NOIMAG) { ;needs floating point ON and 'periodicity=no' !
;p1 is the order (default=3)
p=p1
p=p+(p==0)*3
p=p+1 ;this keeps the number of basins
z=pixel:
n=z^p-z
d=p*z^(p-1)
z=z-n/d
|n|>0.000001
}

newton_altexp { ;needs floating point!
;p1 is the first exponent (default=2)
;p2 defines the multiplier to use for the alternating exponent
;(default=2, should be an integer)
z=pixel
xx=p1,xx=xx+(xx==0)*2
m=p2,m=m+(m==0)*2
t=0:
x=xx*((t==0)+((t!=0)*m))
n=z^x-1
d=x*z^(x-1)
z=z-n/d
t=(t==0)
|n|>0.000001
}

newton_3exp {
;Newton with 3 alternating exponents (defaults=2, 4, 6)
j=p1,j=j+(j==0)*2
k=p2,k=k+(k==0)*4
l=p3,l=l+(l==0)*6
z=pixel
i=0:
x=(i==0)*j+(i==1)*k+(i==2)*l
n=z^x-1
d=x*z^(x-1)
z=z-n/d
i=i+1
i=(i<3)*i
|n|>0.000001
}

