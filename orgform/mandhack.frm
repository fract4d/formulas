; Made by Pusk s Istv n jr.  E-mail: pataki.v@matavnet.hu
; All parameters noted as single numbers
; mean "real part=that number, imag. part=0"
; Variations of the Mandelbrot formula, the entries starting with 'mand2_'
; use only 2. exponent (no exponent to be specified), the ones with 'mand_'
; also can have different exponents

mand_vapour(XAXIS_NOIMAG) {
;p2= min. 2 (default=2)
;p3= above 0.9 or below -0.9 (default=1)
x=p2,x=x+(x==0)*2
v=p3,v=v+(v==0)*1
z=c=pixel:
z=z^x+c/(z*v)-p1
|z|<4
}

selfexp(XAXIS_NOIMAG) { ;try p1 around (1.1;0)!
;p2 is the bailout (default is 4)
z=c=pixel:
z=(z+c)^z-p1
((p2==0)&&(|z|<4))||((p2!=0)&&(|z|<p2))
}

mand_zdivc(XAXIS_NOIMAG) {
;p2 should be min. 2 (default=2), try 10 or more, both
;odd and even numbers!
x=p2,x=x+(x==0)*2
z=c=pixel:
z=z^x+(z/c)-p1
|z|<4
}

; simplifications for standard Mandel (exponent of z is 2)

mand2_zexp_cp_exp(XAXIS_NOIMAG) {
;p2 should be min. 1, default=2
x=p2,x=x+(x==0)*2
z=c=pixel:
z=(z*z+c)^x-p1
|z|<4
}

mand2_pixpixexp(XAXIS_NOIMAG) { ;not the marksmandelpwr
z=c=pixel^pixel:
z=z*z+c-p1
|z|<4
}

mand2_pixexp(XAXIS_NOIMAG) { ;it's not the marksmandel!
;p2 shouldn't be 0 (default=2), try values between 0.05-1!
x=p2,x=x+(x==0)*2
z=c=pixel^x:
z=z*z+c-p1
|z|<4
}

; new general versions

mand2_c=1/c(XAXIS_NOIMAG) {
;p2 is the bailout, default=4
b=p2,b=b+(b==0)*4
z=c=pixel:
z=z*z+c-p1
c=1/c
|z|<b
}

mand2_zzfn {
;'p2' specifies a bailout value, different functions need
;different values (default=1e5)
;try function=sin or sinh
;symmetric on the X-axis for any function except
;"flip" with imag. components=0
z=c=pixel:
z=z*fn1(z)+c-p1
((p2==0)&&(|z|<1e5))||((p2!=0)&&(|z|<p2))
}

mand2_zexp_div_zp1 {
;try p2=0.3
z=c=pixel:
z=((z*z)/(z-p2))^2+c-p1
|z|<1e6
}

mand_zexp-p1exp(XAXIS_NOIMAG) {
;p2 is the exponent (default=2)
;p3 is the bailout (default=4)
;try 1 for p1 with p2 from 2 to 10!
x=p2,x=x+(x==0)*2
b=p3,b=b+(b==0)*4
z=c=pixel:
z=((z+p1)*(z-p1))^x+c
|z|<b
}

mand2*fn(XAXIS_NOIMAG) { ;try fn=cos, cosh, cotan, cotanh
z=c=pixel:
z=(z*z+c-p1)*fn1(z)
|z|<127
}

mand*fn(XAXIS_NOIMAG) {
;try fn=cos, cosh, cotan, cotanh
;p2 is the exponent (default=2)
x=p2,x=x+(x==0)*2
z=c=pixel:
z=(z^x+c-p1)*fn1(z)
|z|<127
}

mand_fndif (XAXIS_NOIMAG) {
; p2 is the exponent (default=2)
; p3 the bailout if specified (default=127)
; try fn1=sin or cos fn2=tan or cotan p2=2 to 5 p3=100000!
b=p3,b=b+(b==0)*127
x=p2,x=x+(x==0)*2
z=c=pixel:
a=fn1(z)-fn2(z)
z=a^x+c-p1
|z|<b
}

mand2_fndif (XAXIS_NOIMAG) {
; p2 the bailout if specified (default=127)
; try fn1=cos fn2=tan p2=100000!
b=p2,b=b+(b==0)*127
z=c=pixel:
a=fn1(z)-fn2(z)
z=a*a+c-p1
|z|<b
}

mand2_2p_mul {
z=pixel:
a=b=z
a=a*a+pixel-p1
b=b*b+pixel-p2
z=a*b
|z|<4
}

mand_2p_mul {
;p3 is the exponent (default=2)
x=p3,x=x+(x==0)*2
z=pixel:
a=b=z
a=a^x+pixel-p1
b=b^x+pixel-p2
z=a*b
|z|<4
}

mandel_sum2exp {
;intersection of 2 sets with different
;exponents (p1 and p2, defaults= 2 and 4) and
;same perturbation (p3)
x1=p1,x1=x1+(x1==0)*2
x2=p2,x2=x2+(x2==0)*4
a=b=c=pixel:
a=a^x1+c-p3
b=b^x2+c-p3
z=a+b
|z|<100
}

mand2_pix+fnpix {
;p2 is the bailout if specified (default=4)
;can be used for cont. pot. with higher bailout
;try fn=sqr, recip, tanh, cotan, cosh
;with fn=cotan, the connection point (good for inversion center)
;is at (-(pi/2),0)
z=c=pixel+fn1(pixel):
z=z*z+c-p1
((p2==0)&&(|z|<4))||((p2!=0)&&(|z|<p2))
}

mand2_pix-fnpix {
;p2 is the bailout if specified (default=4)
;can be used for cont. pot. with higher bailout
;try fn=cos, cosh, exp, log, tan, tanh, cotanh, asin
z=c=pixel-fn1(pixel):
z=z*z+c-p1
((p2==0)&&(|z|<4))||((p2!=0)&&(|z|<p2))
}

mand_z=z*zfn^2 {
;p2 is the bailout if specified (default=100000)
;needs floating point for a high bailout
;try fn=tan, tanh, cotan, cotanh, atan, atanh with continuous potential on!
z=c=pixel:
z=fn1(z)*z
z=z*z+c-p1
((p2==0)&&(|z|<100000))||((p2!=0)&&(|z|<p2))
}

mand_z=zz_zcfn {
;p2 is the bailout if specified (default=127)
;try fn=tan, tanh, cotan, cotanh, atan, atanh
;also with continuous potential on!
z=c=pixel:
z=z*z*fn1(z*c)+c-p1
((p2==0)&&(|z|<127))||((p2!=0)&&(|z|<p2))
}

mand2_2fn {
;2 functions to play with
;p2 is the bailout if specified (default=4)
;higher bailout is useful for cont. pot.
z=c=fn1(fn2(pixel)):
z=z*z+c-p1
((p2==0)&&(|z|<4))||((p2!=0)&&(|z|<p2))
}

mand2_4fn {
;4 functions to play with!!!!
;p2 is the bailout if specified (default=4)
;higher bailout is useful for cont. pot.
z=c=fn1(fn2(fn3(fn4(pixel)))):
z=z*z+c-p1
((p2==0)&&(|z|<4))||((p2!=0)&&(|z|<p2))
}

mand2_4fn_npass {
;4 functions to play with REPEATEDLY!!!!!!!!
;p3 defines how many times 'z' should go
;through those functions (default=1)
;p2 is the bailout if specified (default=4)
passes=p3+(p3==0)*1
z=pixel,i=0:
if(i<passes)
z=c=fn1(fn2(fn3(fn4(z))))
else
z=z*z+c-p1
endif
i=i+1
((p2==0)&&(|z|<4))||((p2!=0)&&(|z|<p2))
}

mand2_switch(XAXIS_NOIMAG) {
;when the iteration count is equal to p2 (an INTEGER value, default=2)
;'c' is set to 'z' ('c' is normally the uniterated pixel value)
;so the iteration continues with the z magnitude at the p2. iteration
;used as starting value instead of 'pixel'
;(the Mandelbrot formula starts with 'z=c=pixel', this will be
;'z=c=iterated' if iter==p2 (no assignment to 'z', because
;'iterated' IS 'z')
;also try p1=0 p2=15
z=c=pixel
i=1
n=p2,n=n+(n==0)*2,n=round(n):
z=z*z+c-p1
if(i==n)
c=z
endif
i=i+1
|z|<1e5
}

mand2_vapour_2(XAXIS_NOIMAG) {
;p2 is the bailout (default=4)
z=c=pixel:
z=z*z+c+c/z-p1
((p2==0)&&(|z|<4))||((p2!=0)&&(|z|<p2))
}

mand_vapour_2(XAXIS_NOIMAG) {
;p2 is the exponent (default=2)
;p3 is the bailout (default=4)
x=p2,x=x+(x==0)*2
z=c=pixel:
z=z^x+c+c/z-p1
((p3==0)&&(|z|<4))||((p3!=0)&&(|z|<p3))
}

mand_c*zfn {
;p2 is the exponent (default=2)
;p3 is the bailout (default=127, too low for negative exponents (!))
;try fn=cos, cosh, exp also with NEGATIVE exponents! (-3 to -8), log
x=p2,x=x+(x==0)*2
z=c=pixel:
z=z^x+fn1(z)*c-p1
((p3==0)&&(|z|<127))||((p3!=0)&&(|z|<p3))
}

mandel_z*z*fn1/fn2 {
;needs floating point!
;p2 is the bailout (default=1000)
;try cotan/tan, cos/tan
b=p2,b=b+(b==0)*1000
z=c=pixel:
z=z*z*(fn1(z)/fn2(z))+c-p1
|z|<b
}

mandel4var1(XAXIS_NOIMAG) {
;the details are a bit different from the standard mandel4
;p2 is the bailout if specified (default=4)
b=p2,b=b+(b==0)*4
z=c=pixel:
z=z*z+c-p1
z=z*z/c-p1
|z|<b
}

mand2+c*c(XAXIS_NOIMAG) {
;try p1=0.5 to 1.2
;p2 is the bailout (default=4)
b=p2,b=b+(b==0)*4
z=c=pixel:
z=z*z+c+c*c-p1
|z|<b
}

mand_zx+c*cx+z(XAXIS_NOIMAG) {
;p2 is the exponent (default=2)
;p3 is the bailout (default=127)
;try p1=1 with p2=an odd integer number
x=p2,x=x+(x==0)*2
b=p3,b=b+(b==0)*127
z=c=pixel,cx=c^x:
z=(z^x+c)*(cx+z)-p1
|z|<b
}

mand2_fnpixexp {
;p2 is the pixel exponent (default=2)
;p3 is the bailout (default=4)
;try p1=1 p2=2 to 8 fn=sin 
b=p3,b=b+(b==0)*4
x=p2,x=x+(x==0)*2
z=c=fn1(pixel^x):
z=z*z+c-p1
|z|<b
}

mandel+n*mandel4 {
;p2 determines how strongly the mandel4 should be mixed in (default=1)
a=p2,a=a+(|a|==0)*1
z=c=pixel:
z2=z*z
z=z2+a*z2*z2+c-p1
|z|<127
}

mandel4+n*mandel {
;p2 determines how strongly the std. mandel should be mixed in (default=1)
;try p2=-3!
a=p2,a=a+(|a|==0)*1
z=c=pixel:
z2=z*z
z=z2*z2+a*z2+c-p1
|z|<127
}

mandel_sphereonly(XAXIS) {
;the main cardiodid is cut down and the remaining part is mirrored
;p1 is the bailout if specified (default=4)
;try inversion!
b=p1,b=b+(b==0)*4
z=c=-0.75-abs(real(pixel))+flip(imag(pixel)):
z=z*z+c
|z|<b
}

mandelvar1(XAXIS_NOIMAG) {
;p2 is the exponent (default=2)
;p3 is the bailout (default=8)
x=p2,x=x+(x==0)*2
b=p3,b=b+(b==0)*8
z=c=pixel:
z=z^x+c-c/z-p1
|z|<b
}

mandel+a*m4+b*m6 {
;p2 defines how strongly z^4 should be mixed in (default=2)
;p3 defines how strongly z^6 should be mixed in (default=-3)
a=p2,a=a+(|a|==0)*2
b=p3,b=b-(|b|==0)*3
z=c=pixel:
z2=z*z
z=z2+a*z2*z2+b*z2*z2*z2+c-p1
|z|<127
}

mandel+a*m4+b*m8 {
;p2 defines how strongly z^4 should be mixed in (default=1)
;p3 defines how strongly z^8 should be mixed in (default=-4)
a=p2,a=a+(|a|==0)*1
b=p3,b=b-(|b|==0)*4
z=c=pixel:
z2=z*z
z4=z2*z2
z=z2+a*z4+b*z4*z4+c-p1
|z|<127
}

mand2_z/zfn-z {
;needs floating point!
;use fn=tan, cotan, exp
;p2 is the bailout (default=1e5, fn=exp is better with 1e20)
b=p2,b=b+(b==0)*1e5
z=c=pixel:
z=z/fn1(z)-z+c-p1
|z|<b
}

mand_zfn^x/zfn*x {
;p2 is the exponent (default=3)
;p2 is the bailout (default=1e5)
;needs floating point if p3>127
;try fn=sin, sinh, cos
x=p2,x=x+(x==0)*3
b=p3,b=b+(b==0)*1e5
z=c=pixel:
zfn=fn1(z)
z=zfn^x/zfn*x+c-p1
|z|<b
}

mand2_mj(XAXIS_NOIMAG) {
;p2 is the bailout (default=4)
b=p2,b=b+(b==0)*4
z=c=pixel:
z=z*z+c-p1
z=z*z+z
|z|<b
}

mandel2*notmandel { ;more than another Mandelbrot variation...
;try p1=-1..0..2, p2=0..0.2
;p3 is the bailout (default=4)
b=p3,b=b+(b==0)*4
z=c=pixel:
z2=z*z
z=(z2+c-p1)*(z2-z+p2)
|z|<b
}

mandelfn_zpower {
;p2 is the z exponent (default=2)
;p3 is the bailout (default=127, may be too low)
x=p2,x=x+(x==0)*2
b=p3,b=b+(b==0)*127
z=c=pixel:
z=(c*fn1(z)-p1)^x
|z|<b
}

mandel_cplx1_fn {
;p2 is the bailout (default=127)
;try fn=sin, sqr, sinh, maybe cos, cosh
b=p2,b=b+(b==0)*127
z=c=pixel:
j=z*z+c+p1
k=z*z-c-p1
z=fn1((j*k)/(j-k))+c
|z|<b
}

mand2_zdif(XAXIS_NOIMAG) {
;p2 is the bailout (default=127)
b=p2,b=b+(b==0)*127
z=j=c=pixel:
k=z
z=z*z+j*c-p1
j=z-k
|z|<b
}

mand2_z*z+-/c(XAXIS_NOIMAG) {
;p2 is the bailout (default=4)
b=p2,b=b+(b==0)*4
z=c=pixel:
z=z*z+c-p1
z=z*z-c-p1
z=z*z/c-p1
|z|<b
}

mandel_redo {
;needs floating point!
;when the normal bailout is reached, the iteration is restarted with the
;'outside' value
;p1 is the initial perturbation
;p2 defines the size of the smaller sets
;(nonzero, default=0.5, recommended: 0.01-1.2)
;p3 is the bailout (default=100)
m=p2,m=m+(|m|==0)*0.5
b=p3,b=b+(b==0)*100
a=0
z=c=pixel:
if(a==0)
z=z*z+c-p1
bc=1
if(z>b)
a=1
z=((log(b)*1.5)-log(z))/m
c=z
endif
else
z=z*z+c-p1
bc=(z<b)
endif
bc
}

mandel_shell(XAXIS_NOIMAG) {
;needs floating point!
;p2 is the exponent (default=2)
;p3 is the bailout (default=1e12, lower may be used for decomp)
;try *really big* numbers such as 1e70 for p3 too!
;a 80x87 chip or a good software-based emulator *can* handle such numbers
x=p2,x=x+(x==0)*2
b=p3,b=b+(b==0)*1e12
j=k=c=pixel:
j=j^x+c-p1
k=k/j+c
z=j*k
|z|<b
}

mand_altern_exp {
;p1 is the initial perturbation
;p2 is the exponent for even iterations (default=2)
;p3 is the exponent for odd iterations (default=3)
x1=p2,x1=x1+(x1==0)*2    ;set up default values
x2=p3,x2=x2+(x2==0)*3
xd=x2-x1                 ;get the difference to multiply with 'odd'
odd=1                    ;first iteration
z=c=pixel:
z=z^(x1+odd*xd)+c-p1
odd=(odd==0)             ;'odd' alternates between 0 and 1
|z|<4
}

m2v_nicespirals(XAXIS_NOIMAG) {
;p2 is the bailout (default=127)
b=p2,b=b+(b==0)*127
z=y=c=pixel:
z=z*z*y+c-p1
y=z/y-c
|z|<b
}

m_spiralerrors(XAXIS_NOIMAG) {
;p1 is the bailout (default=127)
b=p2,b=b+(b==0)*127
z=y=c=pixel:
z=z*z+y+c+p1
y=y*y-z+p1
|z|<b
}

