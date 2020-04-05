; Made by Pusk s Istv n jr.  E-mail: pataki.v@matavnet.hu
; All parameters noted as single numbers
; mean "real part=that number, imag. part=0"

mandel_pipes(XAXIS_NOIMAG) { ;looks like pipes sorrounding the main set
;needs version 19.6+!
;also needs floating point on and 'periodicity=no'!!
;for 256 color only, recommended: BLUES.MAP or similar
;p2 is the bailout (default=4, shouldn't be more than 10)
;The cont. pot.-like coloring method used cannot be realized perfectly with
;the formula compiler, but this is a good approximation
b=p2,b=b+(b==0)*4
s=0
bc=1
z=c=pixel:
if(s==0)
z=z*z+c-p1
if(|z|>b)
s=1
z=|z|
z=z-trunc(z/b)*b
i=b/256
endif
else
z=z-i
bc=(z>0)
endif
bc
}

mandel_waves(XAXIS_NOIMAG) {
;needs version 19.6+!
;also needs floating point on and 'periodicity=no'!!
;for 256 color only, try BLUES.MAP
;the map should be symmetric, esp. with the first/last colors:
;color #240 should be the same as #15, #224 should be same as #31 etc.
;BLUES.MAP is close to that
;p2 is the bailout (default=100)
;The cont. pot.-like coloring method used cannot be realized perfectly with
;the formula compiler, but this is a good approximation
b=p3,b=b+(b==0)*100
i=0
n=255
s=0
z=c=pixel:
if(s==0)
z=z*z+c
if(|z|>b)
s=1
n=((log(|z|)/log(b))-1)*255
if(n>i)
n=256-n
endif
endif
endif
i=i+1
i<n
}

newtonmand1(XAXIS_NOIMAG) { ;combination of a Newton-like ("a")
;and Mandelbrot ("b") formula
;needs floating point!
;p1 (the Newton exponent) should be 3 or more, default=7
;best with 7 or more
;if p2 (the Mandelbrot exponent) is not specified, it will be p1
z=c=pixel,nx=p1,nx=nx+(nx==0)*7,mx=p2,mx=mx+(mx==0)*nx:
a=b=z
a=a-(a^nx-1)/(nx*a^2)
b=b^mx+c
z=a*b
|z|<4
}

newton+mandel {
;works only with version 19.6 or newer!
;NEEDS floating point ON and 'periodicity=no'!
;the 2 iterations are done each after on the same variable
;p1 is the Newton order (default=3)
;p2 is the Mandelbrot perturbation
;the Mandelbrot exponent is fixed because any other value than 2 causes
;the formula to fail
;p3 defines if the Mandelbrot iteration should go after the Newton (p3=0)
;or before (p3<>0)
;the Newton bailout criteria is used
nx=p1,nx=nx+(nx==0)*3
z=c=pixel:
if(p3!=0)
z=z*z+c-p2
endif
n=z^nx-1
d=nx*z^(nx-1)
z=z-n/d
if(p3==0)
z=z*z+c-p2
endif
|n|>0.000001
}

mandnewtonswitch {
;needs floating point!
;entering 'periodicity=no' recommended 
;p1 defines the iteration number when the Newton iteration
;starts with the 'z' value reached by the Mandelbrot (default=2)
;p2 is the Newton order (default=3)
;p3 is the Mandelbrit exponent (default=2)
i=0
s=p1,s=s+(s==0)*2,s=round(s)
nx=p2,nx=nx+(nx==0)*3
mx=p3,mx=mx+(mx==0)*2
n=1
z=c=pixel:
if(i<s)
z=z^mx+c
else
n=z^nx-1
d=nx*z^(nx-1)
z=z-n/d
endif
i=i+1
|n|>0.000001
}

mandel_julia_1 {
;p3 is the bailout (default=127)
;defaults for p1 and p2: p1=5,0 p2=0,0 only if both are zero
;also try p2=4 to 10
p=p1,p=p+((|p1|+|p2|)==0)*5
b=p3,b=b+(b==0)*127
z=c=pixel:
j=z*z+c-p2
k=z*z+p
z=(j*k)/(j-k)
|z|<b
}

mandel+simple2(XAXIS_NOIMAG) {
;p2 should be 0..1
;p3 is the bailout (default=4)
b=p3,b=b+(b==0)*4
z=c=pixel:
a=real(z)/imag(z)
z=z*z+p2*cosh(a)+(1-p2)*cos(a)
z=z*z+c-p1
|z|<b
}

mandel+julia {
;p1 is the perturbation for the Julia set, p2 for the Mandelbrot
;p3 is the bailout, default=127
;try p1=(0,0.65)
b=p3,b=b+(b==0)*127
z=a=c=pixel:
a=a*a+p1
z=z*z+c+a-p2
|z|<b
}

mand2_step { ;warps the Mandelbrot-set from p1 to a value increasing
;each time with p2
;it's like the stuff in EXPLOD.FRM
;default for p1: 0.01
s=p2,s=s+(s==0)*0.01
p=p1
z=c=pixel:
z=z*z+c-p
p=p+s
|z|<4
}

mand_step { ;warps a variable-exponent Mandelbrot-set from
;p1 to a value increasing each time with p2
;default for p2: 0.01
;p3 is the exponent (default=2)
x=p3,x=x+(x==0)*2
s=p2,s=s+(s==0)*0.01
p=p1
z=c=pixel:
z=z^x+c-p
p=p+s
|z|<4
}

julia_step {
;p1 is the starting parameter, it is increased with p2 every
;iteration
;default for p2: -0.01
;try p1=-1
s=p2,s=s+(s==0)*-0.01
z=pixel,p=p1:
z=z*z+p
p=p+s
|z|<4
}


