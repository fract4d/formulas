; Made by Pusk s Istv n jr.  E-mail: pataki.v@matavnet.hu
; All parameters noted as single numbers
; mean "real part=that number, imag. part=0"

magnet_zpower(XAXIS_NOIMAG) { ;tried to make a magnet1m variant
;p1 should be over 2, recommended: 3..6 (default=3)
x=p1,x=x+(x==0)*3
z=c=pixel:
z=((z^x+c-1)/(2*z+c-2))^(x-1)
|z|<100
}

magnet_error(XAXIS) { ;tried to make a magnet2m variant
;needs floating point!
;enter 'center-mag=-0.2/0/7' for the center area
;also try 'center-mag=0.1/0.86/12'!
;I have ABSOLUTELY no idea why the iteration counts (sector colors)
;jump with 3 or 4
z=c=pixel:
z= ( ( z*z+3*(c-1)*z+(c-1)*(c-2) ) / ( 3*z*z+3*(c-2)*z+(c-1)*(c-2)+1) )^2
|z|<128
}

magnet_big(XAXIS_NOIMAG) { ;tried to make a magnet1m variant which failed,
;so I began to change it
;needs floating point!
;the formation is BIG, zoom out!
;p2 is the bailout if specified (default=1000)
;try inside=bof60!!
;also try p1 up to 9!
b=p2,b=b+(b==0)*1000
z=c=pixel:
z=( (z*z+(c+1)) / (2*z+(c-2)) )^2-p1
|z|<b
}

magnet_hole(XAXIS_NOIMAG) {
;p2 is the bailout if specified (default=100)
;try p1 up to 14 (with p2>1000)!
;also try inside=bof60 on the main set
;(fully visible with p2>~200 and zooming out!)
;and search the left end of the hole with p1=0
b=p2,b=b+(b==0)*100
z=c=pixel:
z=( (z*z+(c-1)) / (2*z+(c*2)) )^2-p1
|z|<b
}

magnet_unlim1 (XAXIS_NOIMAG) {
;needs floating point!
;p2 is the bailout (default=100)
;the size of the formation is limited ONLY by a finite bailout if p1=0
b=p2,b=b+(b==0)*100
z=c=pixel:
z=( (z*z+(c-1)) / (2*z+(c*z)) )^2-p1
|z|<b
}

magnet_hspirals (XAXIS_NOIMAG) {
;needs floating point!
;has special 'holed' spirals with p1=-1.5
z=c=pixel:
z=( (z*z+(c-1)) / (2*z+c) )^2-p1
|z|<100
}

magnet_spirals1 (XAXIS_NOIMAG) {
;needs floating point!
;p2 is the bailout (default=100)
b=p2,b=b+(b==0)*100
z=c=pixel:
z=( (z*z+(c)) / (2*z+(c-2)) )^2-p1
|z|<b
}

magnet_spirals2 (XAXIS_NOIMAG) {
;needs floating point!
;p2 is the bailout (default=1000)
b=p2,b=b+(b==0)*1000
z=c=pixel:
z=( (z*z+(c-1)) / (c*z+(c-2)) )^2-p1
|z|<b
}

magnet_cplxspirals (XAXIS) { ;at the left end!
;needs floating point!
z=c=pixel:
z=( (z*z+(c-1)) / (c/z+(c-2)) )^2-2
|z|<100
}

magnet_minimand (XAXIS) {
z=c=pixel:
z=( (z*z+(c-1)) / (2*z+(c-2)) )^2-z-z
|z|<127
}

magnet1m_fig2(XAXIS_NOIMAG) {
;needs floating point!
;p2 is the bailout (default=7)
;reacts different to p1
;this was found by accident
b=p2,b=b+(b==0)*7
z=c=pixel:
zx=z*z
z=(zx+c-p1)/(zx-1)
|z|<b
}

magnet1m_fig3 {
;needs floating point!
;p2 is a multiplier for 'c' (default=1)
;p3 is the bailout (default=100)
b=p3,b=b+(b==0)*100
m=p2,m=m+(|m|==0)*1
z=c=pixel:
z2=z*z
z=(z2+c*m-p1)/(z2-1)
|z|<b
}

magnet1jvar_exp(XAXIS_NOIMAG) {
;p1 is basic perturbation (default=1)
;p2 is the exponent (default=2)
;p3 is the bailout (default=automatic based on p1)
;exponents higher than 1 are best for decomp
;recommended bailout (p2) values for decomp or cont. pot:
;p1=  2    3    4
;p2=  6    7    9
;inversion with center=(0,0) has no effect except for decomp!
p=p1,p=p+(|p|==0)*1
x=p2,x=x+(x==0)*2
b=p3,b=b+(b==0)* (2^(x+1.322)+(x<2)*0.25)
z=pixel:
z2=z*z
z=((z2+p)/(z2-1))^x
|z|<b
}

magnet1jvar_asinh {
;default for p1=1, recommended: 1..2
;recommended p2 values: -0.05..0.05 incl. 0
;p3 is the bailout (default=4)
;recommended p3 values: 4..7
p=p1,p=p+(|p|==0)*1
b=p3,b=b+(b==0)*4
z=pixel:
z2=z*z+p2
z=asinh((z2+p)/(z2-1))
|z|<b
}

magnet1jvar { ;the Mandelbrot-equivalent is similar to 'magnet1m'
;p1 is the basic Julia-perturbation, default=(0.5,0), shouldn't be 0
;p2 is a second perturbation, nonzero values create a 'false' set,
;which only works with a limited bailout
;p3 is the bailout (default=5)
;for p1=1, the optimal bailout is 4.25, values such as 3.4 to 4 or
;40 to 10000 are good for decomp
;try these values:
;p1=2   p1=1   p1=-1.5
;p1=0.5 (default), p2=0.3, p3=10
;p1=1, p2=(0.1,0.4), p3=22
;p1=1, p2=(0.4,0.2), p3=9
;also with decomp!
b=p3,b=b+(b==0)*5
p=p1,p=p+(|p|==0)*0.5
z=pixel:
z2=z*z+p2
z=(z2+p)/(z2-1)
|z|<b
}

