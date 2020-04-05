; Made by Pusk s Istv n jr.  E-mail: pataki.v@matavnet.hu
; All parameters noted as single numbers
; mean "real part=that number, imag. part=0"

ismand_zzfn {
;'p2' specifies a bailout value, different functions need
;different values (default=1e5)
;try function=sin or sinh
;symmetric on the X-axis for any function except
;"flip" with imag. components=0
z=c=pixel:
if(ismand)
z=z*fn1(z)+c-p1
else
z=z*fn1(z)+p1
endif
((p2==0)&&(|z|<1e5))||((p2!=0)&&(|z|<p2))
}

ismand_zexpfn {
;p2 is the exponent (default=2)
;p3 (if specified) the bailout value (default=1000000)
;the mandel is symmetric on the X-axis for any function except
;"flip" with imag. components=0
x=p2,x=x+(x==0)*2
z=c=pixel:
if(ismand)
z=fn1(z^x)+c-p1
else
z=fn1(z^x)+p1
endif
((p3==0)&&(|z|<1e6))||((p3!=0)&&(|z|<p3))
}

ismand_sqr_zexpfn { ;p2 is the bailout if specified
;the mandel is symmetric on the X-axis for any function except
;"flip" with imag. components=0
z=c=pixel:
if(ismand)
z=fn1(z*z)+c-p1
else
z=fn1(z*z)+p1
endif
((p2==0)&&(|z|<1e6))||((p2!=0)&&(|z|<p2))
}

ismand_zexp/zp1(XAXIS_NOIMAG) { ;p2 is the exponent (default=2)
x=p2,x=x+(x==0)*2
z=c=pixel:
if(ismand)
z=((z^x)/(z-p3))^x+c-p1
else
z=((z^x)/(z-p3))^x+p1
endif
|z|<1e6
}

ismand_zexp-p1exp(XAXIS_NOIMAG) {
x=p3,x=x+(x==0)*2
z=c=pixel:
if(ismand)
z=((z+p2)*(z-p2))^x+c-p1
else
z=((z+p2)*(z-p2))^x+p1
endif
|z|<4
}

ismand_fndif (XAXIS_NOIMAG) {
; p2 is the exponent (default=2)
; p3 the bailout if specified (default=8)
x=p2,x=x+(x==0)*2
z=c=pixel:
a=fn1(z)-fn2(z)
if(ismand)
z=a^x+c-p1
else
z=a^x+p1
endif
((p3==0)&&(|z|<8))||((p3!=0)&&(|z|<p3))
}

ismand_sqr_fndif (XAXIS_NOIMAG) {
; p2 is the bailout if specified (default=8)
z=c=pixel:
a=fn1(z)-fn2(z)
if(ismand)
z=a*a+c-p1
else
z=a*a+p1
endif
((p2==0)&&(|z|<8))||((p2!=0)&&(|z|<p2))
}

ismand_2+4 {
z=c=pixel:
z=z*z
if(ismand)
z=z*z+z+c-p1
else
z=z*z+z+p1
endif
|z|<4
}

ismand_z=z*zfn^2 {
;p2 is the bailout if specified (default=100000)
;needs floating point for a high bailout
;try fn=tan, tanh, cotan, cotanh, atan, atanh with continuous potential on!
z=c=pixel:
z=fn1(z)*z
if(ismand)
z=z*z+c-p1
else
z=z*z+p1
endif
((p2==0)&&(|z|<100000))||((p2!=0)&&(|z|<p2))
}



ismand_vcomplex_fn {
;needs floating point!
;p2 is the bailout if specified (default=10000)
z=c=pixel:
if(ismand)
z=z*fn1(z)+z+c-p1
else
z=z*fn1(z)+z+p1
endif
((p2==0)&&(|z|<10000))||((p2!=0)&&(|z|<p2))
}

ismand_2trigfn {
;needs floating point!
;p2 is the bailout if specified (default=100)
;try fn1=sin or cos fn2=tan or cotan
b=p2,b=b+(b==0)*100
z=c=pixel:
if(ismand)
z=z*fn1(fn2(z))+c-p1
else
z=z*fn1(fn2(z))+p1
endif
|z|<b
}

ismand_cplxspirals(XAXIS_NOIMAG) {
;needs floating point!
;default for p1=(0.005,0) if ismand=0
;p2 is the bailout (default=127)
if(ismand==0)
p=p1,p=p+(|p|==0)*0.005
endif
b=p2,b=b+(b==0)*127
z=y=c=pixel:
if(ismand)
z=z*z+y+c+p
else
z=z*z+y+p
endif
y=z*z/y
|z|<b
}

ismand_j_simple {
;default for p1=0.02 if ismand=0
;p2 is the bailout (default=127)
if(ismand==0)
p=p1,p=p+(|p|==0)*0.02
endif
z=y=c=pixel:
if(ismand)
z=z*y+y+c+p
else
z=z*y+y+p
endif
a=y
y=z
z=a
((p2==0)&&(|z|<127))||((p2!=0)&&(|z|<p2))
}

ism_cplxspirals3(XAXIS_NOIMAG) {
;needs floating point!
;default for p1=(0.005,0) if ismand=0
;p2 is the bailout (default=200)
if(ismand==0)
p=p1,p=p+(|p|==0)*0.005
endif
b=p2,b=b+(b==0)*200
z=y=c=pixel:
z=z*z+y
if(ismand)
y=(z*z/y)+c-p
else
y=(z*z/y)+p
endif
|z|<b
}

