; Made by Pusk s Istv n jr.  E-mail: pataki.v@matavnet.hu
; All parameters noted as single numbers
; mean "real part=that number, imag. part=0"

j_simple {
;default for p1=0.02
;p2 is the bailout (default=127)
p=p1,p=p+(|p|==0)*0.02
z=y=pixel:
z=z*y+y+p
a=y
y=z
z=a
((p2==0)&&(|z|<127))||((p2!=0)&&(|z|<p2))
}

j_vcomplex_fn {
;needs floating point!
;default for p1=0.03, good for fn=sin or tan
;p2 is the bailout if specified (default=10000)
;also try fn=cotan, p1=-1.1
p=p1,p=p+(|p|==0)*0.03
z=pixel:
z=z*fn1(z)+z+p
((p2==0)&&(|z|<10000))||((p2!=0)&&(|z|<p2))
}

j_2trigfn {
;needs floating point!
;p2 is the bailout if specified (default=10000)
;try fn1=sin or cos fn2=tan or cotan
z=pixel:
z=z*fn1(fn2(z))+p1
((p2==0)&&(|z|<10000))||((p2!=0)&&(|z|<p2))
}

j_trails(XAXIS_NOIMAG) {
;default for p1=0.436
p=p1,p=p+(|p|==0)*0.436
z=pixel:
z=z*sqr(log(z))-p
|z|<127
}

j_quasijoint(XAXIS_NOIMAG) {
;the formula isn't Julia-like, but the formations and its behavior is
;default for p1=0.18, also try -0.2
;p2 is the bailout (default=2 (!))
;the critical value for p1 is 1/6
p=p1,p=p+(|p|==0)*0.18
b=p2,b=b+(b==0)*2
z=y=pixel:
z=z*z+y+p
y=z*z-y
|z|<b
}

j_verycomplex(XAXIS_NOIMAG) {
;the formula isn't Julia-like, but the formations and its behavior is
;default for p1=1.03, also try 1.02..1.05 or (0,0.92)
;p2 is the bailout (default=16)
p=p1,p=p+(|p|==0)*1.03
b=p2,b=b+(b==0)*16
z=y=pixel:
z=z*z+y-p
y=y*y-z
|z|<b
}

j_trig_scatter {
;needs floating point!
;default for p1=0.27, good for some functions
;try fn=sin p1=0.27, fn=cos p1=-0.6, fn=sinh p1=0.28, fn=cosh p1=-0.83,
;fn=tan p1=0.27, fn=sqr p1=0.28
;check out the scattered miniature sets with trig. fn-s,
;they have many different shapes
;the mini sets are often missed by 'solid guessing'
;good for cont. pot. with fn=tan
;p2 is the bailout (default=100)
p=p1,p=p+(|p|==0)*0.27
b=p2,b=b+(b==0)*100
z=y=pixel:
z=z*z+y+p
y=fn1(z*y)
|z|<b
}

z^log_z_julia(XAXIS_NOIMAG) {
;the Julia equivalent of z^log_z_mandel, but it breaks if imag(p1)<>0
;so the 'ismand' change would make no sense
;also makes complex image with p1=(0,0)
;needs floating point!
;the formation is VERY BIG, so zoom out!
;the solid inside breaks up above p1=(~0.39041,0)
;try p1=0.5
;also try p1=0 to -27 with 'inside=bof60'
z=pixel:
z=z^log(z)+p1
|z|<2000
}

j_cplxspirals(XAXIS_NOIMAG) {
;needs floating point!
;default for p1=(0.005,0)
;p2 is the bailout (default=127)
p=p1,p=p+(|p|==0)*0.005
b=p2,b=b+(b==0)*127
z=y=pixel:
z=z*z+y+p
y=z*z/y
|z|<b
}

j_notnewt(XAXIS_NOIMAG) { ;started from the Newton formula, but it looks
;and behaves like a Julia-set
;NEEDS floating point!
;p1 should be nonzero (default value=-1.8)
;also try p1= -0.9 with "periodicity=no"
x=p1,x=x-(x==0)*1.8
z=pixel:
n=z^x-1
d=x*z^(x-1)
z=z-n/d+n
|n|>0.000001
}

j_notmand {
;needs floating point!
;no default values available!
;try these:
;fn=cabs p1=0 also with decomp!!
;fn=sin p1=0.02
;fn=asin p1=-1 to -1.4 - that's very unusual, maybe like a barnsley*j set
;fn=tan p1=-0.5
;fn=cotan p1=-0.6
;fn=tanh p1=0.02
;also with cont. pot.
z=pixel:
z=z*z+fn1(z)+p1
|z|<1e5
}

julia_z*z*zfn {
;default for p1=0.42, good for many functions
;p2 is the bailout (default=1e5)
;works with integer math only if p2 is not more than 127
p=p1,p=p+(|p|==0)*0.42
b=p2,b=b+(b==0)*1e5
z=pixel:
z=z*z*fn1(z)+p
|z|<b
}

julia_zfn^x/zfn*x {
;default for p1=0.3
;p2 is the exponent (default=5)
;p3 is the bailout (default=1e5)
;needs floating point if p3>127
;try fn=sin, sinh, cos
p=p1,p=p+(|p|==0)*0.3
x=p2,x=x+(x==0)*5
b=p3,b=b+(b==0)*1e5
z=pixel:
zfn=fn1(z)
z=zfn^x/zfn*x+p
|z|<b
}

j_spiralerrors3(XAXIS_NOIMAG) {
;default for p1=0.07, the critical value is 0.0625
;p2 is the bailout (default=127)
;the mini sets have many different shapes
p=p1,p=p+(|p|==0)*0.07
b=p2,b=b+(b==0)*127
z=y=pixel:
z=z*z+y+p
y=z-y
|z|<b
}

j_pseudocp(XAXIS_NOIMAG) {
;default for p1=0.004
;p2 is the bailout (default=127)
;it looks a bit like cont. pot. would be used
;real cont. pot. can also be used
;also try p1=-0.11
p=p1,p=p+(|p|==0)*0.004
b=p2,b=b+(b==0)*127
z=y=pixel:
z=z*z+y+p
y=y-z+y
|z|<b
}

julia_n*p(XAXIS_NOIMAG) {
;default for p1=0.42
;p2 is the bailout (default=4)
p=p1,p=p+(|p|==0)*0.42
b=p2,b=b+(b==0)*4
z=y=pixel:
z=z*z+y*p
y=z/y
|z|<b
}

julia_trigsc_exp {
;needs floating point!
;default for p1=0.27, good for many functions
;p2 is the exponent (default=2)
;p3 is the bailout (default=10000)
;if fn is tan or tanh, p3 should be 4!
;fn=cos needs p1~-0.6
p=p1,p=p+(|p|==0)*0.27
x=p2,x=x+(x==0)*2
b=p3,b=b+(b==0)*10000
z=y=pixel:
z=z*z+y+p
y=fn1(z*y^x)
|z|<b
}

j_spiralerrors(XAXIS_NOIMAG) {
;default for p1=0.46
;p2 is the bailout (default=127)
;the spirals have 'errors'
p=p1,p=p+(|p|==0)*0.46
b=p2,b=b+(b==0)*127
z=y=pixel:
z=z*z+y+p
y=y*y-z+p
|z|<b
}

julia_bug(XAXIS_NOIMAG) {
;not a program bug! the default values draw one...
;p2 is the exponent (default=0.67)
;p3 is the bailout (default=4)
;also try:
;p1=0.1 p2=1.6 also with decomp
;p1=0.22 p2=2.8 to 3.6!
;p1=-1.02 p2=3
x=p2,x=x+(x==0)*0.67
b=p3,b=b+(b==0)*4
z=y=pixel:
z=z*z+y+p1
y=z^x
|z|<b
}

spiralweb_j(XAXIS_NOIMAG) { ;very unusual!
;default for p1=0.28
;p2 is the bailout (default=2 (!))
;try decomp!
;the formula is similar to 'spider'
p=p1,p=p+(|p|==0)*0.28
b=p2,b=b+(b==0)*2
z=y=pixel:
z=z*z+y+p
y=y/z*p
|z|<b
}

spiralweb2_j(XAXIS_NOIMAG) { ;also very unusual!
;default for p1=0.27
;p2 is the bailout (default=2 (!))
;also try decomp!
p=p1,p=p+(|p|==0)*0.27
b=p2,b=b+(b==0)*2
z=y=pixel:
z=z*z+y+p
y=y/z*p*p
|z|<b
}

j_spiralerrors2(XAXIS_NOIMAG) {
;the spirals have 'errors'
;default for p1=0.27
;p2 is the bailout (default=127)
p=p1,p=p+(|p|==0)*0.27
b=p2,b=b+(b==0)*127
z=y=pixel:
z=z*z+y+p
y=y*z*z
|z|<b
}

julia_sqr_sqrt(XAXIS_NOIMAG) {
;default for p1=0.2, also try -1.4
;p2 is the bailout (default=4)
p=p1,p=p+(|p|==0)*0.2
b=p2,b=b+(b==0)*4
z=y=pixel:
z2=z*z
z0=sqrt(z)
z=z2/z0+z2*z0+p
|z|<b
}

julia_sin_sinh(XAXIS_NOIMAG) {
;default for p1=-0.5
;p2 is the bailout (default=127)
p=p1,p=p-(|p|==0)*0.5
b=p2,b=b+(b==0)*127
z=y=pixel:
s=sin(z)
sh=sinh(z)
z=s/sh+s*sh+p
|z|<b
}

j_cplxspirals2(XAXIS_NOIMAG) {
;default for p1=0.08, the critical value is ~0.0712342
;very good for decomp too!!
p=p1,p=p+(|p|==0)*0.08
z=y=pixel:
z=z*z+y+p
y=z/y*p
|z|<100
}

j_cspiralbullet(XAXIS_NOIMAG) {
;needs floating point!
;default for p1=0.4
p=p1,p=p+(|p|==0)*0.4
z=y=pixel:
z=y/z+p
y=z*y-p
|z|<1e6
}

spirals_mj(XAXIS_NOIMAG) {
;floating point recommended!
;p1 determines the 'density' (useless if 0, default: 6)
;p2 defines the structure types
;if p2=0, then the critical value for p1 above which the structures
;melt together is between 6.7 and 6.8, it changes rapidly if p2<>0
;p3 is the bailout (default=127)
;try p1=10000 p2=1, p1=10000 p2=-0.3, p1=12 p2=-0.1!
;also try decomp!
a=p1,a=a+(|a|==0)*6
b=p3,b=b+(b==0)*100
z=y=pixel:
z=z*z+y-p2
y=z/(y*a)
|z|<b
}

juliawarp1(XAXIS_NOIMAG) {
;defaults: p1=0.3, p2=2
;recommended: p1: close to 0.3, p2: only 1.95..2
;p3 is the bailout (default=4)
p=p1,p=p+(|p|==0)*0.3
m=p2,m=m+(|m|==0)*2
b=p3,b=b+(b==0)*4
z=y=pixel:
z=z*z+y+p
y=y*z*m
|z|<b
}

julia_holes(XAXIS_NOIMAG) {
;default for p1=0.17, good for 2. exponent
;p2 is the exponent (default=2, try 1.7 to 4)
;try cont. pot. too, works ok with exponent=2!
;the crit. value for exponent=2 is ~0.1481483
p=p1,p=p+(|p|==0)*0.17
x=p2,x=x+(x==0)*2
z=pixel:
z=z^x+p/z
|z|<4
}

juliaweb { ;mini sets often connected by a 'web' a bit like in magnet1m
;default values (only if no values are specified): p1=0.1, p2=0.45, p1=0.1
a=p1,b=p2,c=p3
zero=((|a|+|b|+|c|)==0)
a=a+zero*0.1
b=b+zero*0.45
c=c+zero*0.1
z=pixel:
z=z*z+b*z+c/z
z=z*z+a
|z|<4
}

quasijulia(XAXIS_NOIMAG) {
;default for p1=10, try 4..50
;p2 is the bailout (default=4)
;good for decomp with p2=0
p=p1,p=p+(|p|==0)*10
b=p2,b=b+(b==0)*4
z=y=pixel:
z=z*z+y
y=y/(z*p)+z
|z|<b
}

spider_julia(XAXIS_NOIMAG) {
;default for p1=(0.27,0)
;the spider-like forations appear with p1<0, try (-0.2,0)
;p2 is the bailout (default=8)
p=p1,p=p+(|p|==0)*0.27
b=p2,b=b+(b==0)*8
z=y=pixel:
y=y/2+z+p
z=z*z+y
y=y/2+z+p
|z|<b
}

j_scatter(XAXIS_NOIMAG) {
;the behaviour isn't really Julia-like
;default for p1=0.88
;p2 is the bailout (default=4)
p=p1,p=p+(|p|==0)*0.88
b=p2,b=b+(b==0)*4
z=y=pixel:
z=z*z+y-p
a=z
z=z/y
y=y/a
|z|<b
}

j_cspiralbullet(XAXIS_NOIMAG) {
;default for p1=0.35, critical value: 1/3
;p2 is the bailout (default=4)
;also try p1=(0,0.1)
p=p1,p=p+(|p|==0)*0.35
b=p2,b=b+(b==0)*4
z=y=pixel:
z=z*z+y+p
y=z*z-y-p
|z|<b
}

julia+2_zpower {
;default parameters: (only used if all are zero)
;p1 - first exponent  - 3
;p2 - second exponent - 1
;p3 - perturbation    - 0.21
allzero=((|p1|+|p2|+|p3|)==0)
a=p1,a=a+allzero*3
b=p2,b=b+allzero*1
c=p3,c=c+allzero*0.21
z=pixel:
z=z^a+z^b+c
|z|<127
}

j_cplxspirals3(XAXIS_NOIMAG) {
;needs floating point!
;default for p1=0.005
;p2 is the bailout (default=200)
p=p1,p=p+(|p|==0)*0.005
b=p2,b=b+(b==0)*200
z=y=pixel:
z=z*z+y
y=(z*z/y)+p
|z|<b
}

j_3iter_1(XAXIS_NOIMAG) {
;needs floating point!
;default for p1=0.9
;p2 is the bailout (default=10000)
p=p1,p=p+(|p|==0)*0.9
b=p2,b=b+(b==0)*10000
j=k=l=pixel:
j=j*l+k-p
k=(j+k)/k
l=k*j
z=k*j*l
|z|<b
}

c=cfn { ;Julia-like with most functions
;p2 is the exponent (default=2)
;p3 is the bailout (default=4)
;try fn=sin p1=1.7, fn=cos p1=2.06, fn=sqrt p1=0.7
x=p2,x=x+(x==0)*2
b=p3,b=b+(b==0)*4
z=c=pixel:
z=z^x+c-p1
c=fn1(c)
|z|<b
}

