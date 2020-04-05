; Made by Pusk s Istv n jr.  E-mail: pataki.v@matavnet.hu
_WARNING!_ {
These formulas need version 20.0.13 (development version) or later
The development versions can be downloaded at www.fractint.org
}

mandel_f2exp2par(XAXIS_NOIMAG) {
;b=p5,b=b+(b==0)*4
x1=p2,x1=x1+(x1==0)*2
x2=p4,x2=x2+(x2==0)*4
m=p5,m=m+(|m|==0)*1
z=c=pixel:
z1=z^x1+c-p1
z2=z^x2+c-p3
z=z1+z2*m
|z|<127
}

mand_2exp2par_1(XAXIS_NOIMAG) {
;p1 and p3 are the perturbations of the first set
;(defaults=1 and -1 only if p1..p4 are all zero)
;p2 and p4 are the exponents
;(defaults=2 and 3 if they are zero)
;p5 is the bailout (default=10)
b=p5,b=b+(b==0)*10
allzero=((|p1|+|p2|+|p3|+|p4|)==0)
x1=p2,x1=x1+(x1==0)*2
x2=p4,x2=x2+(x2==0)*3
p_1=p1,p_1=p_1+allzero*1
p_2=p3,p_2=p_2-allzero*1
z=c=pixel:
j=z^x1+c-p_1
k=z^x2+c-p_2
z=(j*k)/(j+k)
|z|<b
}

mandel_julia_1 {
;p1 is the Mandelbrot perturbation
;p2 is the Mandelbrot exponent
;p3 is the Julia perturbation
;p4 is the Julia exponent
;defaults for p1..p4: (only if none are specified)
;p1: 0.4, p2: 2, p3: -0.4, p4: 2
;p5 is the bailout (default=4)
b=p5,b=b+(b==0)*4
zz=((|p1|+|p2|+|p3|+|p4|)==0)
mp=p1,mp=mp+zz*0.4
mx=p2,mx=mx+zz*2
jp=p3,jp=jp-zz*0.4
jx=p4,jx=jx+zz*2
z=c=pixel:
m=z^mx+c-mp
j=z^jx+jp
z=(m*j)/(m-j)
|z|<b
}

julia_4exp(XAXIS_NOIMAG) {
;default values (only if none are specified):
;exponents (p1 through p4): 12, 7, 5, 2, perturbation (p5): 0.4
;also try p1-p4: 1, 2, 3, 4, p5=0.3
zp=((|p1|+|p2|+|p3|+|p4|+|p5|)==0)
a=p1,a=a+zp*12
b=p2,b=b+zp*7
c=p3,c=c+zp*5
d=p4,d=d+zp*2
p=p5,p=p+zp*0.4
z=pixel:
z=z^a+z^b+z^c+z^d+p
|z|<127
}

magnet1jvar_exp2(XAXIS_NOIMAG) {
;the Mandelbrot-equivalent is similar to 'magnet1m'
;p1 is the basic Julia-perturbation, default=(0.5,0), shouldn't be 0
;p2 is a second perturbation, nonzero values create a 'false' set,
;which only works with a limited bailout
;p3 is the exponent (default=2)
;p4 is the bailout (default=5)
;try p1=1 p2=0 p3=-3 p4=40
x=p3,x=x+(x==0)*2
b=p4,b=b+(b==0)*5
p=p1,p=p+(|p|==0)*0.5
z=c=pixel:
zx=z^x+p2
z=(zx+p)/(zx-1)
|z|<b
}

mand_a*2+b*4+c*6(XAXIS_NOIMAG) {
;p2 is the multiplier for z^2, p3 for for z^4, p4 for z^6 (default=all 1)
;p5 is the bailout (default=4)
j=p2,j=j+(|j|==0)*1
k=p3,k=k+(|k|==0)*1
l=p4,l=l+(|l|==0)*1
b=p5,b=b+(b==0)*4
z=c=pixel:
z2=z*z
z4=z2*z2
z=z2*j+z4*k+z4*z2*l+c-p1
|z|<b
}

