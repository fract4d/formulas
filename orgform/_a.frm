

a---mand {
  z = c = pixel:
  z = z^c + sin(c)
  |z|<p1
  ;SOURCE: eli.frm
}


a--mand {
  z = c = pixel:
  z = (sqr(z)+c) / |c|
  |z|<p1
  ;SOURCE: eli.frm
}


a-00-a3 {; Revised 4/27/96 to eliminate reference to
         ; unitialized variable "i".
         ; Original formula may be discarded.
  c=z=pixel, c=fn1(1.6180339):
  z=fn2(z^2)+flip(c)
  |z|<=4
  ;SOURCE: new.frm
}


a-03 {
  z=pixel, x=fn3(z-1)/fn4(1/z+1):
  z=(fn1(z^2)/x)^(fn2(x^3))/(z+1)+c
  |z|<4
  ;SOURCE: ad1.frm
}


a-09 {
  z=pixel, x=fn3(z-1)^(1/z+c):
  z=(fn1(z^x)/x-2)^(fn2(x^3)/fn4(z-1))
  |z|<4
  ;SOURCE: ad1.frm
}


a-0a-a2 {
  z=pixel, c=fn1(1.6180339):
  z=(fn2(z^p1)+fn3(z^c))
  |z|<=4
  ;SOURCE: new.frm
}


a-0a1 {; Revised 4/27/96 to eliminate superfluous "+c"
       ; Original version of this formula may be discarded
  z=pixel, y=z^fn1(1-z), x=(z^z)/(z-p1): 
  z=fn3(z^fn4(y))*fn2(z*(1/x))
  |z|<5
  ;SOURCE: new.frm
}


a-a2 {
  z=pixel, c=fn1((5+1)/2):
  z=fn2(z^4+c)
  |z|<=4
  ;SOURCE: new.frm
}


a0 {; (c) by Miguel Fliguer 
  z=c=pixel:
  z=fn1(z/fn2(z/fn3(z/fn4(z))))+c
  |z|<4
  ;SOURCE: 98msg.frm
}


a00-02 {; Revised 4/27/96 to change unitialized variable "i" to 0
        ; Original formula may be discarded.
  z=pixel, x=|(z+1)^1.6180339|:
  z=fn1(z/0)+fn2(x)
  a=z+1
  z=fn1(a)+tan(z)
  |z|<=4
  ;SOURCE: new.frm
}


a0006 {
  z=pixel, x=(z/p1-1), y=(z/p2-1):
  z=fn3(z^x)/fn4(z/y)*fn1(c-x)^fn2(c-y)
  |z|<4
  ;SOURCE: ad1.frm
}


a0009 {
  z=pixel, y=z^fn1(1-z), x=(z^z)/3.141591: 
  z=fn3(z^fn4(y))*fn2(z*(1/x))
  |z|<5
  ;SOURCE: ad1_miss.frm
}


a006 {
  z=c=pixel, x=fn3(p1/z)^2, y=fn4((p1/z)*(p1/z))^z:
  z=(fn1(z+1)^x)^fn2(1/y)+c
  |z|<55
  ;SOURCE: ad1.frm
}


a007 {
  z=c=pixel, x=fn3(z-1)/2, y=fn4((1/z-1)*(1/z-1))^z:
  z=(fn1(z+1)^x)/fn2(1/y)+c
  |z|<55
  ;SOURCE: ad1.frm
}


a008 {
  z=c=pixel, x=(3.14/z)^2, y=((3.14/z)*(3.14/z))^z:
  z=(fn1(z-1)^x)/fn2(1/y)+c
  |z|<55
  ;SOURCE: ad1.frm
}


a009 {
  z=c=pixel, x=fn3(3.14/z)^2, y=fn4((3.14/z)*(3.14/z))^z:
  z=(fn1(z-1)^x)/fn2(1/y)+c
  |z|<55
  ;SOURCE: ad1.frm
}


a0a {
  z=pixel, y=fn1(z-1)/fn2(z-1):
  z=fn3(y^2)^fn4(y-z)+c
  |z|<4
  ;SOURCE: ad1.frm
}


a0a01 {; Revised 4/27/96 to eliminate superfluous "+c"
       ; Original version of this formula may be discarded
  z=pixel, x=-pixel, y=real(-pixel):
  a=(z^22)+x
  b=(z/7)+y
  z=fn1(a+b)+fn2(a^b)
  |z|<=4
  ;SOURCE: new.frm
}


a0a02 {; Revised 4/27/96 to eliminate superfluous "+c"
       ; Original version of this formula may be discarded
  c=z=pixel, a=abs(z^22), b=real(z^7), d=flip(a/b):
  z=fn1(a+b)+fn2((a/b)^fn3(d))
  |z|<=4
  ;SOURCE: new.frm
}


a0a03 {; Revised 4/27/96 to eliminate superfluous "+c"
       ; Original version of this formula may be discarded
  z=pixel, x=fn3(pixel), y=fn4(pixel), a=(z^22)+x, b=(z^7)+y:
  z=(fn1(a/b))+(fn2(a^b))
  |z|<=4
  ;SOURCE: new.frm
}


a0a07 {; Revised 4/27/96 to eliminate superfluous "+c"
       ; Original version of this formula may be discarded
  z=pixel:
  z=(fn1(z)/7)^fn2((z)^22)
  |z|<4
  ;SOURCE: new.frm
}


a0a08 {; Revised 4/27/96 to eliminate superfluous "+c"
       ; Original version of this formula may be discarded
  z=pixel:
  z=(fn1(z)/7)^fn2((z)/22)
  |z|<4
  ;SOURCE: new.frm
}


a0b0 {
  z=pixel:
  z=fn1(z^(e*(1/sqr(-1))-fn2((z+1)^e)))+c
  |z|<4
  ;SOURCE: ad1.frm
}


a0b1 {; Revised 4/27/96 to replace z^(e*i) with 1.
      ; Original formula may be discarded.
  z=pixel, x=fn3(p1+real(z+1)):
  z=fn1(1-fn2((z)^x))
  |z|<4
  ;SOURCE: new.frm
}


a0b5 {
  z=pixel:
  z=fn1(z^(e*(1/fn3(-1))-fn2((z+1)^e)))+c
  |z|<4
  ;SOURCE: ad1.frm
}


a1 { 
  z=pixel, x=log(z), y=cos(z)*(cos(z+sqrz)*z)
  v=(z*(z+1)/exp(z))^cosh(x):
  z=(z*fn3(y)/fn1(z)^fn4(v))^fn2(x)+c
  |z|<=4
  ;SOURCE: ad1.frm
}


a1ab3 {
  z=pixel, b=fn1(x*y)
  x=fn4(z-1), y=fn2(1/z):
  z=fn3(b*y)^(z*log(x))
  |z|<=6
  ;SOURCE: ad1_miss.frm
}


a1ab4 {
  z=b=pixel, b1=fn1(y), b2=fn1(1/b1+p1), b3=fn1(b1+p2)^2:
  z=fn3(z+c)
  b=fn4(z-1), y=fn2(1/b)*z
  |z|<4
  ;SOURCE: ad1.frm
}


a2 {
  z=pixel, x=i-pixel, y=1-(i-pixel):
  z=cosxx(fn1(z*x)*fn2(z^(fn3(z/y))))/(z+p1)*fn4(x*y)+c
  |z+p1|<25
  ;SOURCE: ad1.frm
}


a23 {
  z=pixel:
  z=pixel*fn1(cotan(fn1(z-(p3))))+(fn2(z/p1)*sin(whitesqr))+(whitesqr==0)
  |real(z)|>=4
  ;SOURCE: ad3.frm
}


a3 {
  z=pixel, x=fn4(i-pixel), y=1/(i-pixel):
  z=cosxx(fn1(z*x)*fn2(z^(fn3(z*y))))/|z+p1|*(x*y)+c
  |z|<25
  ;SOURCE: ad1.frm
}


a4 {
  z=pixel, x=sin(i-pixel), y=1/(i-pixel):
  z=cosxx(fn1(z*x)*fn2(z^(fn3(z*y))))/|z+p1|*fn4(x*y)+c
  |z|<25
  ;SOURCE: ad1.frm
}


a_sct (XAXIS) {; R.L.Bagula
               ; Classical fractal showing LastSqr speedup
  z=Pixel, z=Sqr(z+sqr(pixel)/z): ;Start with z**2 to initialize LastSqr
  z = z + Pixel
  z=sqr(z+sqr(pixel)/z)
  LastSqr <= 16         ; Use LastSqr instead of recalculating
  ;SOURCE: rbagula.frm
}


a_spider1 {; Adjustable spider - After Homer Smith of Art Matrix
           ; try p1 = (.55,0) or (0,.4) or (.4,.35)
  z=0, c=pixel:
  z = z*z + c, z = fn1(z)
  c = c * p1 + z, c = fn2(c)
  |z| <= 4
  ;SOURCE: hughes.frm
}


a_spider2 {; Adjustable spider - After Fractint's version
           ; try p1 = (.55,0) or (0,.4) or (.4,.35)
  z=c=pixel:
  z = z*z + c, z = fn1(z)
  c = c * p1 + z, c = fn2(c)
  |z| <= 4
  ;SOURCE: hughes.frm
}


aa-c-to-z (XAXIS) {
  z = pixel, c = z:
  z = c^z
  |z| <= p1
  ;SOURCE: eli.frm
}


aa-diamand {
  z = c = pixel:
  z = sqr(z)+c
  (real(z)+imag(z))<p1
  ;SOURCE: eli.frm
}


aa-mand-im (XAXIS) {
  z = c = pixel:
  z = sqr(z)+c
  imag(z)<p1
  ;SOURCE: eli.frm
}


aa-mand-re (XAXIS) {
  z = c = pixel:
  z = sqr(z)+c
  real(z)<p1
  ;SOURCE: eli.frm
}


aa-z-to-c (XAXIS) {
  z = pixel, c = z:
  z = exp(c*log(z))
  |z| <= p1
  ;SOURCE: eli.frm
}


aa-z-to-z (XAXIS) {
  z = pixel, c = z:
  z = exp(z*log(z))
  |z| <= p1
  ;SOURCE: eli.frm
}


aa4 {
  z=pixel:
  z=(((cos(z)/fn1(z))*fn3(z))*(fn2(z)/fn4(z)))+c
  |z|<=4
  ;SOURCE: ad1.frm
}


aaa {
  z = pixel, c = z:
  z = sqr(c)
  |z|<p1
  ;SOURCE: dan.frm
}


aaa-deals {
  z = pixel, a=real(z), b=imag(z), i=((0-1)^0.5):
  x = real(z)
  y = imag(z)
  u = x*x + y*y + a
  v = (0-2)*x*y + b
  z = u + v*i
  |z|<p1
  ;SOURCE: eli.frm
}


aaa-dealsFix1 {; from DAN.FRM
               ; fix by Ron Barnett [70153,1233] 
  z = pixel, a=real(z), b=imag(z), i=((0,-1)^0.5):
  x = real(z), y = imag(z), u = x*x + y*y + a
  v = (0,-2)*x*y + b
  z = u + v*i
  |z|<p1
  ;SOURCE: fract001.frm
}


aaa-dealsFix2 {; from DAN.FRM
               ; fix by Ron Barnett [70153,1233] 
  z = pixel, a=real(z), b=imag(z), i=((0,1)^0.5):
  x = real(z), y = imag(z), u = x*x + y*y + a
  v = (0,2)*x*y + b
  z = u + v*i
  |z|<p1
  ;SOURCE: fract001.frm
}


aaa1a {
  z=pixel, x=fn1(z+1)*whitesq, c=fn2(z*(1/pixel)):
  z=fn3(z*fn4(c-x))+c
  |z|<=8
  ;SOURCE: ad1_miss.frm
}


aaa4 {
  z=pixel, x=fn1(z+1), a=p1,b=p2, y=fn2((z)^(z-1)):
  z=(fn3(y)^fn4(z-p2))-fn4(fn1(x)/tan(z-p1))+c
  |z|<=8
  ;SOURCE: ad1.frm
}


aaa6 {
  z=pixel, x=fn1(z+1), c=fn2(c+p1):
  z=(fn3(z^fn4(z-x))+c)+c
  |z|<=8
  ;SOURCE: ad1_miss.frm
}


aaa7 {
  z=pixel, x=fn4(1/z*1/z), y=fn4(x-fn3(z+p1)):
  z=(fn1(x+y)^1/fn3(z))-fn2(y/x)+c
  |z|<=25
  ;SOURCE: ad1.frm
}


aaaa (XAXIS) {
  z = pixel, c = z:
  z = exp(z*log(z))
  |z| <= p1
  ;SOURCE: dan.frm
}


AAMandel {
  z=pixel, c=0:
  z=(1-c)*sqr(z) + (c*z^3)
  c=c+p1
  |z|<p2
  ;SOURCE: orman2.frm
}


AAron {
  c=p1, z=pixel:
  z=z*z*z + z*(c-1) - c
  |z|<4
  ;SOURCE: orman2.frm
}


ab1 {
  z=x=1/pixel, c=fn1(z):
  z=fn2(x+c)*fn3(x-c)
  x=fn4(z)
  |z|<=4
  ;SOURCE: ad1.frm
}


ab3 {
  z=c=2/pixel:
  z=fn1(z^2)*fn2(c^3)+c
  |z|<=4
  ;SOURCE: ad1.frm
}


ab4 {
  z=c=2/pixel:
  z=fn1(1/(fn2(z^(real(p1)))*fn3(c^fn4(real(p2))))*c)+c
  |z|<4
  ;SOURCE: ad1.frm
}


AbsArcTangentbrot1 {; Tom Schumm
                    ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  imag(z) <= abs(1/tan(real(z)))     ; Different escape boundry
  ;SOURCE: phong.frm
}


AbsArcTangentbrot2 {; Tom Schumm
                    ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  imag(z) <= abs(1/tan(real(z))+4)     ; Different escape boundry
  ;SOURCE: phong.frm
}


AbsArcTangentbrot3 {; Tom Schumm
                    ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  imag(z) <= abs(1/tan(real(z)))+4     ; Different escape boundry
  ;SOURCE: phong.frm
}


AbsArcTangentia1 (ORIGIN) {; Tom Schumm
                     ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
  z = z + p1
  z = Sqr(z)
  imag(z) <= abs(1/tan(real(z)))     ; Different escape boundry
  ;SOURCE: phong2.frm
}


AbsArcTangentia2 (ORIGIN) {; Tom Schumm
                     ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
  z = z + p1
  z = Sqr(z)
  imag(z) <= abs(1/tan(real(z))+4)     ; Different escape boundry
  ;SOURCE: phong2.frm
}


AbsArcTangentia3 (ORIGIN) {; Tom Schumm
                     ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
  z = z + p1
  z = Sqr(z)
  imag(z) <= abs(1/tan(real(z)))+4     ; Different escape boundry
  ;SOURCE: phong2.frm
}


Absbrot1 {; Tom Schumm
          ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  imag(z) <= 4-abs(real(z))    ; Different escape boundry
  ;SOURCE: phong.frm
}


Absbrot2 {; Tom Schumm
          ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  imag(z) <= 4+abs(real(z))    ; Different escape boundry
  ;SOURCE: phong.frm
}


Absia1 (ORIGIN) {; Tom Schumm
                 ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
  z = z + p1
  z = Sqr(z)
  imag(z) <= 4-abs(real(z))    ; Different escape boundry
  ;SOURCE: phong2.frm
}


Absia2 (ORIGIN) {; Tom Schumm
                 ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
  z = z + p1
  z = Sqr(z)
  imag(z) <= 4+abs(real(z))    ; Different escape boundry
  ;SOURCE: phong2.frm
}


ABSJulia {; Ramsay Burt - matches ABSMandelbrot form
          ; i.e. it has the extra z = z + pixel line
          ; c = p1 added by Jon Horner for clarity
          ; try p1 = (-0.75, 0.20)
          ; Edited 5/96 for ORGFORM by G. Martin to correct typo
          ; colon in line 2 changed to semicolon)
  z = pixel, c = p1 :
  z = z + pixel
  z = ABS(z * z) + c
  |z| <=4
  ;SOURCE: burt.frm
}


AbsJulia2 (origin) {; Peter Anders anders@physik.hu-berlin.de
  cx=real(p1), cy=imag(p1), xo=real(pixel), yo=imag(pixel):
  x=xo*xo-yo*yo+cx
  y=2*xo*yo+cy
  xo=abs(x)
  yo=abs(y)        
  |fn1(x)|<real(p2)  ||  |fn1(y)|<real(p2)
  ;SOURCE: peterman.frm
}


AbsJulia3 (origin) {; Peter Anders anders@physik.hu-berlin.de
  cx=real(p1), cy=imag(p1), xo=real(pixel), yo=imag(pixel):
  x=xo*xo-yo*yo+cx
  y=2*xo*yo+cy
  xo=abs(x)
  yo=abs(y)
  |fn1(x)|<real(p2)
  ;SOURCE: peterman.frm
}


AbsLambdaJ1 {; Peter Anders (anders@physik.hu-berlin.de) 
  cx=real(p1), cy=imag(p1), xo=real(pixel), yo=imag(pixel):
  x=cx*(xo-xo*xo+yo*yo)-cy*(yo-2*xo*yo)
  y=cy*(xo-xo*xo+yo*yo)+cx*(yo-2*xo*yo)
  xo=abs(x)
  yo=abs(y)
  abs(fn1(x*x+y*y))<real(p2)
  ;SOURCE: lambda.frm
}


AbsLambdaJ2 {; Peter Anders (anders@physik.hu-berlin.de) 
  cx=real(p1), cy=imag(p1), xo=real(pixel), yo=imag(pixel):
  x=cx*(xo-xo*xo+yo*yo)-cy*(yo-2*xo*yo)
  y=cy*(xo-xo*xo+yo*yo)+cx*(yo-2*xo*yo)
  xo=|x|
  yo=|y|
  abs(fn1(x*x+y*y))<real(p2)
  ;SOURCE: lambda.frm
}


AbsLambdaJ3 (xaxis) {; Peter Anders (anders@physik.hu-berlin.de) 
  cx=real(p1), cy=imag(p1), xo=real(pixel), yo=imag(pixel):
  x=cx*abs(xo-xo*xo+yo*yo)-cy*abs(yo-2*xo*yo)
  y=cy*abs(xo-xo*xo+yo*yo)+cx*abs(yo-2*xo*yo)
  xo=x
  yo=y
  abs(fn1(x*x+y*y))<real(p2)
  ;SOURCE: lambda.frm
}


AbsLambdaJ4 (xaxis) {; Peter Anders (anders@physik.hu-berlin.de) 
  cx=real(p1), cy=imag(p1), xo=real(pixel), yo=imag(pixel):
  x=cx*|xo-xo*xo+yo*yo|-cy*|yo-2*xo*yo|
  y=cx*|yo-2*xo*yo|+cy*|xo-xo*xo+yo*yo|
  xo=x
  yo=y
  abs(fn1(x*x+y*y))<real(p2)
  ;SOURCE: lambda.frm
}


AbsLambdaM1 (ORIGIN) {; Peter Anders (anders@physik.hu-berlin.de) 
  xo=0.5, yo=0, cx=real(pixel), cy=imag(pixel):
  x=cx*(xo-xo*xo+yo*yo)-cy*(yo-2*xo*yo)
  y=cy*(xo-xo*xo+yo*yo)+cx*(yo-2*xo*yo)
  xo=abs(x)
  yo=abs(y)
  abs(fn1(x*x+y*y))<real(p2)
  ;SOURCE: lambda.frm
}


AbsLambdaM2 (ORIGIN) {; Peter Anders (anders@physik.hu-berlin.de) 
  xo=0.5, yo=0, cx=real(pixel), cy=imag(pixel):
  x=cx*(xo-xo*xo+yo*yo)-cy*(yo-2*xo*yo)
  y=cy*(xo-xo*xo+yo*yo)+cx*(yo-2*xo*yo)
  xo=|x|
  yo=|y|
  abs(fn1(x*x+y*y))<real(p2)
  ;SOURCE: lambda.frm
}


AbsLambdaM3 {; Peter Anders (anders@physik.hu-berlin.de) 
  xo=0.5, yo=0, cx=real(pixel), cy=imag(pixel):
  x=cx*abs(xo-xo*xo+yo*yo)-cy*abs(yo-2*xo*yo)
  y=cy*abs(xo-xo*xo+yo*yo)+cx*abs(yo-2*xo*yo)
  xo=x
  yo=y
  abs(fn1(x*x+y*y))<real(p2)
  ;SOURCE: lambda.frm
}


AbsLambdaM4 {; Peter Anders (anders@physik.hu-berlin.de) 
  xo=0.5, yo=0, cx=real(pixel), cy=imag(pixel):
  x=cx*|xo-xo*xo+yo*yo|-cy*|yo-2*xo*yo|
  y=cx*|yo-2*xo*yo|+cy*|xo-xo*xo+yo*yo|
  xo=x
  yo=y
  abs(fn1(x*x+y*y))<real(p2)
  ;SOURCE: lambda.frm
}


AbsMandel {; Peter Anders anders@physik.hu-berlin.de
  xo=0, yo=0, cx=real(pixel), cy=imag(pixel):
  x=xo*xo-yo*yo+cx
  y=2*xo*yo+cy
  xo=abs(x)
  yo=abs(y)        
  |fn1(x)|<real(p2) &&  |fn1(y)|<real(p2)
  ;SOURCE: peterman.frm
}


AbsMandel2 {; Peter Anders anders@physik.hu-berlin.de 
  xo=0, yo=0, cx=real(pixel), cy=imag(pixel):
  x=xo*xo-yo*yo+cx
  y=2*xo*yo+cy
  xo=abs(x)
  yo=abs(y)        
  |fn1(x)|<real(p2)  ||  |fn1(y)|<real(p2)
  ;SOURCE: peterman.frm
}


AbsMandel3 {; Peter Anders anders@physik.hu-berlin.de 
  xo=0, yo=0, cx=real(pixel), cy=imag(pixel):
  x=xo*xo-yo*yo+cx
  y=2*xo*yo+cy
  xo=abs(x)
  yo=abs(y)
  |fn1(x)|<real(p2)
  ;SOURCE: peterman.frm
}


ABSMandelbrot (XAXIS){; Ramsay Burt - based on Mark Peterson Mandelbrot
                      ; Mandelbrot with absolute x*x and forced symmetry
  z = Pixel, z = Sqr(z):  ; Start with z**2 to initialize LastSqr
  z = z + Pixel
  z = ABS(Sqr(z))
  LastSqr <= 4          ; Use LastSqr instead of recalculating
  ;SOURCE: burt.frm
}


Absolem {
  z = 0, c = pixel:
  z = z + p1
  z = (z * z) * (1/c) 
  z = fn1(z) * fn2(1/z)
  z = z + c 
  |z| <= 4 
  ;SOURCE: korfu.frm
}


Absolem_2 {
  z = 0, c = pixel:
  z = z + p1
  z = (z * z) * (1/c) 
  z = fn1(z) * fn2(1/c)
  z = z + c 
  |z| <= 4 
  ;SOURCE: korfu.frm
}


Absolem_SRand {
  z = 0, c = pixel:
  z = z + p1
  z = (srand(z) * z) * (1/z) 
  z = fn1(z) * fn2(1/c)
  z = z + c  
  |z| <= 4 
  ;SOURCE: korfu.frm
}


Absolute {
  z=pixel:
  z=abs(z) 
  |z|<=32
  ;SOURCE: sample.frm
}


AbsSummbrot {; Tom Schumm
             ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  abs(imag(z)+real(z)) <= 4   ; Different escape boundry
  ;SOURCE: phong.frm
}


AbsSummia (ORIGIN) {; Tom Schumm
                    ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
  z = z + p1
  z = Sqr(z)
  abs(imag(z)+real(z)) <= 4   ; Different escape boundry
  ;SOURCE: phong2.frm
}


ac3 {
  c=z=pixel:
  z=(sin(z-1)*fn1(z+1))^tan(z+pixel)/cos(pixel)*sin(z)+c
  |z|<4
  ;SOURCE: ad1.frm
}


ac5 {
  c=z=pixel:
  z=((cotan(z)*real(z))^1/fn1(z)/fn2(imag(z))*fn3(z+1)+c)
  |z|<4
  ;SOURCE: ad1.frm
}


AC_44 {
  x1 = real(p1), y1 = imag(p1), x2 = real(pixel), y2 = imag(pixel):
  x1 = (x1 - y2)*x2
  y1 = abs(1-(y2*y1)) + (x2/y1)
  |x1 + flip(y1)| <= 1
  ;SOURCE: 96msg.frm
}


acc_man_mod {; Modified Sylvie Gallet formula
             ; Modified acceleration_man.frm (generalized by Les St Clair)
             ; use fn1=cabs, fn2=abs for default behaviour
             ; set p1=0 and p2=0 for default behaviour
  z2 = r = 0:
  l = r, z = z2
  z1 = z*z + pixel +p1
  vel1 = z1 - z
  z2 = z1*z1 + pixel +p2
  vel2 = z2 - z1
  acc = vel2 - vel1
  r = fn1(acc)
  r < 4 && fn2(l - r) >= 0.001
  ;SOURCE: 97msg.frm
}


acceleration_man {
  z2 = r = 0:
  l = r, z = z2
  z1 = z*z + pixel
  vel1 = z1 - z
  z2 = z1*z1 + pixel
  vel2 = z2 - z1
  acc = vel2 - vel1
  r = cabs(acc)
  r < 4 && abs(l - r) >= 0.001
  ;SOURCE: 97msg.frm
}


ad2 {
  c=z=pixel:
  z=((fn1(z)*flip(z))^1/(flip(z)*fn2(imag(z))/fn3(z+1)+c))
  |z|<4
  ;SOURCE: ad1.frm
}


adr4 {; Added variable "newpixel". G. Martin, 6/27/99
  z=pixel:
  newpixel=whitesqr*fn1((pixel))/(whitesqr==0)
  z=(fn3(newpixel+fn4(newpixel)))
  |z|>=4
  ;SOURCE: ad3.frm
}


adr4x {; Added variable "newpixel". G. Martin, 6/27/99
  z=pixel:
  newpixel=(whitesqr!=0)*fn1((3.14,0))
  z=(fn3(z+fn4(newpixel)))
  |z|>=4
  ;SOURCE: ad3.frm
}


ae7 {
  z=pixel:
  z=(fn1(z+1)+fn2(z+2))*fn3(z+3)^2+c
  |z|<4
  ;SOURCE: ad1.frm
}


af4 {
  z=pixel, c=fn1(z)/fn2(z)*z:
  z=(fn3(z))/(cos(z+1))*log(z)+c
  |z|<4
  ;SOURCE: ad1.frm
}


ag9 {
  z=c=pixel, y=cos(z), x=1/fn1(y-1):
  z=(fn2(y^x)*fn3(z))*fn4(x)+c
  |z|<4
  ;SOURCE: ad1.frm
}


agravipop {; 5-29-98 kathy roth
           ; my mistake!
           ; imag p3 must be positive
  x=real(pixel), y=imag(pixel), h=imag(p3):
  newx = x-h*sin((y) + tan(3*y))
  newy = y-h*sin((x) + tan(3*x))
  x=newx, y=newy
  z=x + flip(y)
  newx = x-h*sin((y) + tan(3*y))
  newy = y-h*sin((x) + tan(3*x))
  x=newx, y=newy
  z=x + flip(y)
  w = fn1(z)
  z = fn3(p1/fn2(w*w)) + p2
  |z| < real(p3)
  ;SOURCE: 98msg.frm
}


ai5 {
  z=pixel, y=1/pixel, c=(z)/fn1(z+1):
  z=(exp(z)/fn3(z*z))*fn2(y)+c
  |z|<4
  ;SOURCE: ad1_miss.frm
}


Airreal (XYAXIS) { 
  z = c = pixel:
  z = (1/z)^3/(1/c)^2 + p1
  z = (fn1(c^2)/fn2(z^2))/c + pixel
  |z| < 4
  ;SOURCE: surreal.frm
}


aj {
  z=pixel, c=z-y, y=3.14:
  z=(fn1(z*y)/log(cos(fn2(z)*fn3(z*z)))*fn4(z)+c)
  |z|<4
  ;SOURCE: new.frm
}


aj2 {
  z=pixel, c=z-y, y=3.14:
  z=(fn2(z*y)/log(exp(fn1(z)*fn3(z*z)))*fn4(z)+c)
  |z|<4
  ;SOURCE: ad1.frm
}


aj6 {
  z=pixel, x=fn3(z/z-3)^fn3(z-1):
  z=fn1(z^(x*z-3))*(z*x/fn2(x))
  |z|<4
  ;SOURCE: ad99_1.frm
}


Ajax {;the Final Effort 
  z=c=2/pixel:
  z =(z^(real(p1)))*(c^(real(p2))) + c
  |z| <=4
  ;SOURCE: jax.frm
}


ajen001 {; Arno Jennen
  a=(sin(pixel-1.25)+|sqr(pixel)|)/pixel
  z=pixel+log(pixel-a):
  z=(cosxx(z+21))+flip(z)
  |(z^1.12)|<=(a*1.75)
  ;SOURCE: je090801.frm
}


ajen002 {; Arno Jennen
  a=(sin(pixel-1.25)+|sqr(pixel)|)/pixel
  z=pixel+log(pixel-a):
  z=(cosxx(z+21))+flip(sin(z+10))
  |(z^(z+1.12))|<=(a*1.75)
  ;SOURCE: je090801.frm
}


ajen003 {; Arno Jennen
  a=(sin(pixel-1.25)+|sqr(pixel)|)/pixel
  z=pixel+log(pixel-a):
  z=(log(z+21))+sin(sin(z+10))
  |(z/(z+1.12))|<=(a*1.75)+(z*a)
  ;SOURCE: je090801.frm
}


ajen004 {; Arno Jennen
  a=(sin(pixel-1.25)+|sqr(pixel)|)/pixel
  z=exp(pixel^1.1)+log(pixel-(a^2)):
  z=(log(z+21))+sin(sin(z+10))
  |(z/(z+1.12))|<=(a*1.75)+(z*a)
  ;SOURCE: je090801.frm
}


ajen005 {; Arno Jennen
  a=(sin(|pixel-1.25|))<pixel
  z=pixel+log(pixel-a):
  z=(cosxx(z+21))+flip(z)
  |(z^1.12)|<=(a*1.75)
  ;SOURCE: je090801.frm
}


ajen006 {; Arno Jennen
  a=(sin(|pixel-1.25|))<pixel
  z=pixel+log(pixel-a):
  z=(cosxx(z+21))+flip(z)
  |(z^(1-a))|<=(a*1.75)
  ;SOURCE: je090801.frm
}


ajen007 {; Arno Jennen
         ; Changed to work under Fractint v 20.0 by George Martin
         ; Third line was z=(cosxx^z/(z+21))+flip(z)
         ; I'm not sure what was intended 
  a=(sin(|pixel-1.25|))<pixel
  z=(pixel)+sqr(pixel-a):
  z=flip(z)
  |(z^(1-a))|<=(a*1.75)
  ;SOURCE: je090801.frm
}


ajen008 {; Arno Jennen
  a=(cotanh(pixel-6.47)+|tanh(pixel)|)/pixel
  z=sin(pixel+a)+exp(pixel-a):
  z=(cosxx(z+51))+flip(z)+sin(z)
  |(z^1.15)|<=(a*4.33)
  ;SOURCE: je090801.frm
}


ajen009 {; Arno Jennen
  a=(sin(|pixel-1.25|))<pixel
  z=(pixel+8.76)-(cos(pixel*7.79))
  z=pixel+cotan(pixel-a):
  z=(cosxx(z+82))+sin(z)
  |(z^(1-a))|<=(a*1.75)
  ;SOURCE: je090801.frm
}


ajen010 {; Arno Jennen
  a=(sin(|pixel-1.25|))<pixel
  z=(pixel+0.44)-(log(pixel*6.59))
  z=pixel+cotan(pixel-a):
  z=(cos(z+55))+sin(z)
  |(z^(1-a))|<=(a*1.15)
  ;SOURCE: je090801.frm
}


ajen11 {; Arno Jennen
  z=(pixel/(|pixel+9.95|)):
  a1=pixel+cosxx(z)
  a2=(a1+0.20)/pixel 
  z=(|z+pixel|)/(a1+a2)+sin(a2)
  |(z^(9.20-a1))|<=z
  ;SOURCE: je090801.frm
}


alabe {
  z=pixel, x=srand(z)==9.52, y=fn4(|z-1|^fn2(x)):
  z=(fn1(z^2)^fn2(y^(y/z)))/fn3(x+1)+c
  |z|<=4
  ;SOURCE: ad1.frm
}


Aladria {; p2 is inverse bailout, set to small nonzero number
         ; like 0.000001.
  z=pixel
  c=p1:
  oz=z
  z2=z*z
  z3=z*z2
  z4=z*z3
  z=(z4+z2+z-1)/(4*z3+2*z+1)+c
  |z|<127 && |oz-z|>p2
  ;SOURCE: pgd.frm
}


Alien_Tree {; Copyright (c) Paul W. Carlson, 1998
  w = y = pixel
  c = p1
  bailout = iter = range_num = 0
  width = real(p2)
  index_factor = 124 / width:
    ;****************************************************
  w2 = w * w
  w = w * w2 - w2 - 0.5 * w + c
  b = w
  w = b * b - 0.5 * y + c
  y = b
    ;****************************************************
  IF (abs(real(w)) <= abs(imag(w)))
    min_dist_to_axis = abs(real(w))
  ELSE
    min_dist_to_axis = abs(imag(w))
  ENDIF
  IF (min_dist_to_axis < width && iter > 0)
    z = index_factor * min_dist_to_axis + range_num * 125 + 1
    bailout = 1
  ELSE
    z = 252
  ENDIF
  range_num = range_num + 1
  IF (range_num == 2)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < p3
  ;SOURCE: carlson2.frm
}


Alpha02-01 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Clifford A. Pickover:
            ;
            ; Dynamic (Euler method)
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Fx=((x-2)*x+2)/(exp(x)*x*x*x)
  Fy=((y-2)*y+2)/(exp(y)*y*y*y)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Alpha02-02 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Clifford A. Pickover:
            ; Dynamic
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  bailout=p1+4, z=pixel:
  z=((z-2)*z+2)/(exp(z)*z*z*z)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Alpha02-03 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Rob Dem Braseem:
            ; Escape  (Julia)
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  const=p1, z=pixel:
  z=const+(((z-2)*z+2)/(exp(z)*z*z*z))
  |z|<100
  ;SOURCE: chby3.frm
}


Alpha02-04 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Rob Dem Braseem:
            ; Escape  (Mandelbrot)
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  const=pixel, z=p1:
  z=const+(((z-2)*z+2)/(exp(z)*z*z*z))
  |z|<100
  ;SOURCE: chby4.frm
}


Alpha02-05 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Chris Green:
            ; Newton Method
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)*z*z*z
  f=(((z-2)*z+2)/ez)
  fd=(((1-z)*z+2)*z-6)/(ez*z)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Alpha02-06 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Chris Green:
            ; Halley Method
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z
  ez=exp(z)*z2*z
  f=(((z-2)*z+2)/ez)
  fd=(((1-z)*z+2)*z-6)/(ez*z)
  fdd=((((z-12)*z+8)*z+24)*z-48)/(ez*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Alpha02-07 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Bradley Beacham
            ; Cubic Method
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)*z*z*z
  f=(((z-2)*z+2)/ez)
  fd=(((1-z)*z+2)*z-6)/(ez*z)
  oz=z
  w=z-f/fd
  fw=(((w-2)*w+2)/(exp(w)*w*w*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Alpha02-08 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Clifford A. Pickover:
            ; Dynamic (modified Euler method)
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(((x-2)*x+2)/(exp(x)*x*x*x))
  Ty=sin(((y-2)*y+2)/(exp(y)*y*y*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Alpha02-09 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Clifford A. Pickover:
            ; Dynamic (modified Euler Method)
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(((x-2)*x+2)/(exp(x)*x*x*x))
  Ty=fn1(((y-2)*y+2)/(exp(y)*y*y*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Alpha02-10 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Mike Wareman:
            ; Secant Method
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(((p1-2)*p1+2)/(exp(p1)*p1*p1*p1)):
  zt=z
  foz=fz
  fz=(((z-2)*z+2)/(exp(z)*z*z*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Alpha02-11 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Rob Dem Braseem:
            ; Escape  (Julia)
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  const=p1, z=pixel:
  z=const*(((z-2)*z+2)/(exp(z)*z*z*z))
  |z|<100
  ;SOURCE: chby11.frm
}


Alpha02-12 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Rob Dem Braseem:
            ; Escape  (Mandelbrot)
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  const=pixel, z=p1:
  z=const*(((z-2)*z+2)/(exp(z)*z*z*z))
  |z|<100
  ;SOURCE: chby12.frm
}


Alpha02-13 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Chris Green:
            ; Halley Method with weird bailout test
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z
  ez=exp(z)*z2*z
  f=(((z-2)*z+2)/ez)
  fd=(((1-z)*z+2)*z-6)/(ez*z)
  fdd=((((z-12)*z+8)*z+24)*z-48)/(ez*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Alpha02-14 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Bradley Beacham
            ; Cubic Method with weird bailout test
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)*z*z*z
  f=(((z-2)*z+2)/ez)
  fd=(((1-z)*z+2)*z-6)/(ez*z)
  oz=z
  w=z-f/fd
  fw=(((w-2)*w+2)/(exp(w)*w*w*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Alpha02-15 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Chris Green:
            ; Newton Method with weird bailout test
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)*z*z*z
  f=(((z-2)*z+2)/ez)
  fd=(((1-z)*z+2)*z-6)/(ez*z)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Alpha02-16 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Mike Wareman:
            ; Secant Method with weird bailout test
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(((p1-2)*p1+2)/(exp(p1)*p1*p1*p1)):
  zt=z
  foz=fz
  fz=(((z-2)*z+2)/(exp(z)*z*z*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Alpha02-19 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Clifford A. Pickover:
            ; Dynamic (Implicit Euler method)
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(((x-2)*x+2)/(exp(x)*x*x*x))
  x=x-t*(((y-2)*y+2)/(exp(y)*y*y*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Alpha02-20 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Clifford A. Pickover:
            ; Dynamic (modified implicit Euler method)
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(((x-2)*x+2)/(exp(x)*x*x*x))
  x=x-t*sin(((y-2)*y+2)/(exp(y)*y*y*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Alpha02-21 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Clifford A. Pickover:
            ; Dynamic (modified implicit Euler Method)
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1(((x-2)*x+2)/(exp(x)*x*x*x))
  x=x-t*fn1(((y-2)*y+2)/(exp(y)*y*y*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Alpha02-22 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Clifford A. Pickover:
            ; Dynamic (modified Euler method)
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(((x-2)*x+2)/(exp(x)*x*x*x))
  Ty=fn2(((y-2)*y+2)/(exp(y)*y*y*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Alpha02-23 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Clifford A. Pickover:
            ; Dynamic (modified Euler method)
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(((x-2)*x+2)/(exp(x)*x*x*x))
  Ty=fn2(((y-2)*y+2)/(exp(y)*y*y*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Alpha02-24 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Clifford A. Pickover:
            ; Dynamic (modified implicit Euler Method)
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1(((x-2)*x+2)/(exp(x)*x*x*x))
  x=x-t*fn2(((y-2)*y+2)/(exp(y)*y*y*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Alpha02-25 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Clifford A. Pickover:
            ; Dynamic (modified implicit Euler Method)
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1(((x-2)*x+2)/(exp(x)*x*x*x))
  x=x-t*fn2(((y-2)*y+2)/(exp(y)*y*y*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Alpha02-26 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Kathy Roth:
            ; Dynamic (modified implicit Euler Method, gravitated)
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=fn1(((x-2)*x+2)/(exp(x)*x*x*x))
  Ty=fn1(((y-2)*y+2)/(exp(y)*y*y*y))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Alpha02-27 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Kathy Roth:
            ; Dynamic (modified implicit Euler Method, popped)
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=fn1(((x-2)*x+2)/(exp(x)*x*x*x))
  Ty=fn1(((y-2)*y+2)/(exp(y)*y*y*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Alpha02-28 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Kathy Roth:
            ; Dynamic (modified implicit Euler Method, popped)
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z  
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=fn1(((x-2)*x+2)/(exp(x)*x*x*x))
  Ty=fn1(((y-2)*y+2)/(exp(y)*y*y*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Alpha02-29 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Clifford A. Pickover:
            ; Dynamic (modified implicit Euler method, Sylvie Gallet test)
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(((x-2)*x+2)/(exp(x)*x*x*x))
  Ty=fn1(((y-2)*y+2)/(exp(y)*y*y*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Alpha02-30 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types
            ; Inspired by Ray Parracho:
            ; Regula-Falsi Method
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=((x0-2)*x0+2)/(exp(x0)*x0*x0*x0)
  Fx1=((x1-2)*x1+2)/(exp(x1)*x1*x1*x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Alpha03-01 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Fx=(((x-3)*x+6)*x-6)/(exp(x)*x2*x2)
  Fy=(((y-3)*y+6)*y-6)/(exp(y)*y2*y2)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Alpha03-02 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  bailout=p1+4, z=pixel:
  z2=z*z
  z=(((z-3)*z+6)*z-6)/(exp(z)*z2*z2)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Alpha03-03 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  const=p1, z=pixel:
  z2=z*z
  z=const+((((z-3)*z+6)*z-6)/(exp(z)*z2*z2))
  |z|<100
  ;SOURCE: chby3.frm
}


Alpha03-04 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  const=pixel, z=p1:
  z2=z*z
  z=const+((((z-3)*z+6)*z-6)/(exp(z)*z2*z2))
  |z|<100
  ;SOURCE: chby4.frm
}


Alpha03-05 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, ez=exp(z)*z2*z2
  f=((((z-3)*z+6)*z-6)/ez)
  fd=(((2-z)*z2-12)*z+24)/(ez*z)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Alpha03-06 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, ez=exp(z)*z2*z2
  f=((((z-3)*z+6)*z-6)/ez)
  fd=(((2-z)*z2-12)*z+24)/(ez*z)
  fdd=(((((z-17)*z+28)*z+12)*z-168)*z+264)/(ez*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Alpha03-07 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, ez=exp(z)*z2*z2
  f=((((z-3)*z+6)*z-6)/ez)
  fd=(((2-z)*z2-12)*z+24)/(ez*z)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=((((w-3)*w+6)*w-6)/(exp(w)*w2*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Alpha03-08 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=sin((((x-3)*x+6)*x-6)/(exp(x)*x2*x2))
  Ty=sin((((y-3)*y+6)*y-6)/(exp(y)*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Alpha03-09 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((x-3)*x+6)*x-6)/(exp(x)*x2*x2))
  Ty=fn1((((y-3)*y+6)*y-6)/(exp(y)*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Alpha03-10 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=((((p1-3)*p1+6)*p1-6)/(exp(p1)*pp2*pp2)):
  z2=z*z
  zt=z
  foz=fz
  fz=((((z-3)*z+6)*z-6)/(exp(z)*z2*z2))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Alpha03-11 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  const=p1, z=pixel:
  z2=z*z
  z=const*((((z-3)*z+6)*z-6)/(exp(z)*z2*z2))
  |z|<100
  ;SOURCE: chby11.frm
}


Alpha03-12 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  const=pixel, z=p1:
  z2=z*z
  z=const*((((z-3)*z+6)*z-6)/(exp(z)*z2*z2))
  |z|<100
  ;SOURCE: chby12.frm
}


Alpha03-13 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, ez=exp(z)*z2*z2
  f=((((z-3)*z+6)*z-6)/ez)
  fd=(((2-z)*z2-12)*z+24)/(ez*z)
  fdd=(((((z-17)*z+28)*z+12)*z-168)*z+264)/(ez*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Alpha03-14 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, ez=exp(z)*z2*z2
  f=((((z-3)*z+6)*z-6)/ez)
  fd=(((2-z)*z2-12)*z+24)/(ez*z)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=((((w-3)*w+6)*w-6)/(exp(w)*w2*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Alpha03-15 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, ez=exp(z)*z2*z2
  f=((((z-3)*z+6)*z-6)/ez)
  fd=(((2-z)*z2-12)*z+24)/(ez*z)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Alpha03-16 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=((((p1-3)*p1+6)*p1-6)/(exp(p1)*pp2*pp2)):
  z2=z*z
  zt=z
  foz=fz
  fz=((((z-3)*z+6)*z-6)/(exp(z)*z2*z2))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Alpha03-19 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*((((x-3)*x+6)*x-6)/(exp(x)*x2*x2))
  x=x-t*((((y-3)*y+6)*y-6)/(exp(y)*y2*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Alpha03-20 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*sin((((x-3)*x+6)*x-6)/(exp(x)*x2*x2))
  x=x-t*sin((((y-3)*y+6)*y-6)/(exp(y)*y2*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Alpha03-21 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((((x-3)*x+6)*x-6)/(exp(x)*x2*x2))
  x=x-t*fn1((((y-3)*y+6)*y-6)/(exp(y)*y2*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Alpha03-22 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((x-3)*x+6)*x-6)/(exp(x)*x2*x2))
  Ty=fn2((((y-3)*y+6)*y-6)/(exp(y)*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Alpha03-23 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((x-3)*x+6)*x-6)/(exp(x)*x2*x2))
  Ty=fn2((((y-3)*y+6)*y-6)/(exp(y)*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Alpha03-24 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((((x-3)*x+6)*x-6)/(exp(x)*x2*x2))
  x=x-t*fn2((((y-3)*y+6)*y-6)/(exp(y)*y2*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Alpha03-25 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((((x-3)*x+6)*x-6)/(exp(x)*x2*x2))
  x=x-t*fn2((((y-3)*y+6)*y-6)/(exp(y)*y2*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Alpha03-26 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((x-3)*x+6)*x-6)/(exp(x)*x2*x2))
  Ty=fn1((((y-3)*y+6)*y-6)/(exp(y)*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Alpha03-27 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1((((x-3)*x+6)*x-6)/(exp(x)*x2*x2))
  Ty=fn1((((y-3)*y+6)*y-6)/(exp(y)*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Alpha03-28 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1((((x-3)*x+6)*x-6)/(exp(x)*x2*x2))
  Ty=fn1((((y-3)*y+6)*y-6)/(exp(y)*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Alpha03-29 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((x-3)*x+6)*x-6)/(exp(x)*x2*x2))
  Ty=fn1((((y-3)*y+6)*y-6)/(exp(y)*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Alpha03-30 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=(((x0-3)*x0+6)*x0-6)/(exp(x0)*xx*xx)
  Fx1=(((x1-3)*x1+6)*x1-6)/(exp(x1)*yy*yy)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Alpha04-01 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Fx=((((x-4)*x+12)*x-24)*x+24)/(exp(x)*x2*x2*x)
  Fy=((((y-4)*y+12)*y-24)*y+24)/(exp(y)*y2*y2*y)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Alpha04-02 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  bailout=p1+4, z=pixel:
  z2=z*z
  z=((((z-4)*z+12)*z-24)*z+24)/(exp(z)*z2*z2*z)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Alpha04-03 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  const=p1, z=pixel:
  z2=z*z
  z=const+(((((z-4)*z+12)*z-24)*z+24)/(exp(z)*z2*z2*z))
  |z|<100
  ;SOURCE: chby3.frm
}


Alpha04-04 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  const=pixel, z=p1:
  z2=z*z
  z=const+(((((z-4)*z+12)*z-24)*z+24)/(exp(z)*z2*z2*z))
  |z|<100
  ;SOURCE: chby4.frm
}


Alpha04-05 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, ez=exp(z)*z2*z2
  f=(((((z-4)*z+12)*z-24)*z+24)/(ez*z))
  fd=(((((3-z)*z-4)*z-12)*z+72)*z-120)/(ez*z2)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Alpha04-06 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, ez=exp(z)*z2*z2*z
  f=(((((z-4)*z+12)*z-24)*z+24)/ez)
  fd=(((((3-z)*z-4)*z-12)*z+72)*z-120)/(ez*z)
  fdd=((((((z-22)*z+58)*z-56)*z-264)*z+1200)*z-1680)/(ez*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Alpha04-07 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, ez=exp(z)*z2*z2
  f=(((((z-4)*z+12)*z-24)*z+24)/(ez*z))
  fd=(((((3-z)*z-4)*z-12)*z+72)*z-120)/(ez*z2)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=(((((w-4)*w+12)*w-24)*w+24)/(exp(w)*w2*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Alpha04-08 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=sin(((((x-4)*x+12)*x-24)*x+24)/(exp(x)*x2*x2*x))
  Ty=sin(((((y-4)*y+12)*y-24)*y+24)/(exp(y)*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Alpha04-09 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((x-4)*x+12)*x-24)*x+24)/(exp(x)*x2*x2*x))
  Ty=fn1(((((y-4)*y+12)*y-24)*y+24)/(exp(y)*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Alpha04-10 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=(((((p1-4)*p1+12)*p1-24)*p1+24)/(exp(p1)*pp2*pp2*p1)):
  z2=z*z
  zt=z
  foz=fz
  fz=(((((z-4)*z+12)*z-24)*z+24)/(exp(z)*z2*z2*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Alpha04-11 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  const=p1, z=pixel:
  z2=z*z
  z=const*(((((z-4)*z+12)*z-24)*z+24)/(exp(z)*z2*z2*z))
  |z|<100
  ;SOURCE: chby11.frm
}


Alpha04-12 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  const=pixel, z=p1:
  z2=z*z
  z=const*(((((z-4)*z+12)*z-24)*z+24)/(exp(z)*z2*z2*z))
  |z|<100
  ;SOURCE: chby12.frm
}


Alpha04-13 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, ez=exp(z)*z2*z2*z
  f=(((((z-4)*z+12)*z-24)*z+24)/ez)
  fd=(((((3-z)*z-4)*z-12)*z+72)*z-120)/(ez*z)
  fdd=((((((z-22)*z+58)*z-56)*z-264)*z+1200)*z-1680)/(ez*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Alpha04-14 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, ez=exp(z)*z2*z2
  f=(((((z-4)*z+12)*z-24)*z+24)/(ez*z))
  fd=(((((3-z)*z-4)*z-12)*z+72)*z-120)/(ez*z2)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=(((((w-4)*w+12)*w-24)*w+24)/(exp(w)*w2*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Alpha04-15 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, ez=exp(z)*z2*z2
  f=(((((z-4)*z+12)*z-24)*z+24)/(ez*z))
  fd=(((((3-z)*z-4)*z-12)*z+72)*z-120)/(ez*z2)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Alpha04-16 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=(((((p1-4)*p1+12)*p1-24)*p1+24)/(exp(p1)*pp2*pp2*p1)):
  z2=z*z
  zt=z
  foz=fz
  fz=(((((z-4)*z+12)*z-24)*z+24)/(exp(z)*z2*z2*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Alpha04-19 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*(((((x-4)*x+12)*x-24)*x+24)/(exp(x)*x2*x2*x))
  x=x-t*(((((y-4)*y+12)*y-24)*y+24)/(exp(y)*y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Alpha04-20 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*sin(((((x-4)*x+12)*x-24)*x+24)/(exp(x)*x2*x2*x))
  x=x-t*sin(((((y-4)*y+12)*y-24)*y+24)/(exp(y)*y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Alpha04-21 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((x-4)*x+12)*x-24)*x+24)/(exp(x)*x2*x2*x))
  x=x-t*fn1(((((y-4)*y+12)*y-24)*y+24)/(exp(y)*y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Alpha04-22 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((x-4)*x+12)*x-24)*x+24)/(exp(x)*x2*x2*x))
  Ty=fn2(((((y-4)*y+12)*y-24)*y+24)/(exp(y)*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Alpha04-23 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((x-4)*x+12)*x-24)*x+24)/(exp(x)*x2*x2*x))
  Ty=fn2(((((y-4)*y+12)*y-24)*y+24)/(exp(y)*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Alpha04-24 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((x-4)*x+12)*x-24)*x+24)/(exp(x)*x2*x2*x))
  x=x-t*fn2(((((y-4)*y+12)*y-24)*y+24)/(exp(y)*y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Alpha04-25 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((x-4)*x+12)*x-24)*x+24)/(exp(x)*x2*x2*x))
  x=x-t*fn2(((((y-4)*y+12)*y-24)*y+24)/(exp(y)*y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Alpha04-26 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((x-4)*x+12)*x-24)*x+24)/(exp(x)*x2*x2*x))
  Ty=fn1(((((y-4)*y+12)*y-24)*y+24)/(exp(y)*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Alpha04-27 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1(((((x-4)*x+12)*x-24)*x+24)/(exp(x)*x2*x2*x))
  Ty=fn1(((((y-4)*y+12)*y-24)*y+24)/(exp(y)*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Alpha04-28 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1(((((x-4)*x+12)*x-24)*x+24)/(exp(x)*x2*x2*x))
  Ty=fn1(((((y-4)*y+12)*y-24)*y+24)/(exp(y)*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Alpha04-29 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((x-4)*x+12)*x-24)*x+24)/(exp(x)*x2*x2*x))
  Ty=fn1(((((y-4)*y+12)*y-24)*y+24)/(exp(y)*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Alpha04-30 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=((((x0-4)*x0+12)*x0-24)*x0+24)/(exp(x0)*xx*xx*x0)
  Fx1=((((x1-4)*x1+12)*x1-24)*x1+24)/(exp(x1)*yy*yy*x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Alpha05-01 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Fx=(((((x-5)*x+20)*x-60)*x+120)*x-120)/(exp(x)*x2*x2*x2)
  Fy=(((((y-5)*y+20)*y-60)*y+120)*y-120)/(exp(y)*y2*y2*y2)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Alpha05-02 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  bailout=p1+4, z=pixel:
  z2=z*z
  z=(((((z-5)*z+20)*z-60)*z+120)*z-120)/(exp(z)*z2*z2*z2)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Alpha05-03 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  const=p1, z=pixel:
  z2=z*z
  z=const+((((((z-5)*z+20)*z-60)*z+120)*z-120)/(exp(z)*z2*z2*z2))
  |z|<100
  ;SOURCE: chby3.frm
}


Alpha05-04 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  const=pixel, z=p1:
  z2=z*z
  z=const+((((((z-5)*z+20)*z-60)*z+120)*z-120)/(exp(z)*z2*z2*z2))
  |z|<100
  ;SOURCE: chby4.frm
}


Alpha05-05 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, ez=exp(z)*z2*z2*z2
  f=((((((z-5)*z+20)*z-60)*z+120)*z-120)/ez)
  fd=(((((4-z)*z-10)*z2+120)*z-480)*z+720)/(ez*z)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Alpha05-06 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, ez=exp(z)*z2*z2*z2
  f=((((((z-5)*z+20)*z-60)*z+120)*z-120)/ez)
  fd=(((((4-z)*z-10)*z2+120)*z-480)*z+720)/(ez*z)
  fdd=(((((((z-27)*z+98)*z-210)*z-120)*z+2760)*z-9360)*z+12240)/(ez*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Alpha05-07 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, ez=exp(z)*z2*z2*z2
  f=((((((z-5)*z+20)*z-60)*z+120)*z-120)/ez)
  fd=(((((4-z)*z-10)*z2+120)*z-480)*z+720)/(ez*z)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=((((((w-5)*w+20)*w-60)*w+120)*w-120)/(exp(w)*w2*w2*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Alpha05-08 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=sin((((((x-5)*x+20)*x-60)*x+120)*x-120)/(exp(x)*x2*x2*x2))
  Ty=sin((((((y-5)*y+20)*y-60)*y+120)*y-120)/(exp(y)*y2*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Alpha05-09 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((((x-5)*x+20)*x-60)*x+120)*x-120)/(exp(x)*x2*x2*x2))
  Ty=fn1((((((y-5)*y+20)*y-60)*y+120)*y-120)/(exp(y)*y2*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Alpha05-10 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=((((((p1-5)*p1+20)*p1-60)*p1+120)*p1-120)/(exp(p1)*pp2*pp2*pp2)):
  z2=z*z
  zt=z
  foz=fz
  fz=((((((z-5)*z+20)*z-60)*z+120)*z-120)/(exp(z)*z2*z2*z2))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Alpha05-11 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  const=p1, z=pixel:
  z2=z*z
  z=const*((((((z-5)*z+20)*z-60)*z+120)*z-120)/(exp(z)*z2*z2*z2))
  |z|<100
  ;SOURCE: chby11.frm
}


Alpha05-12 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  const=pixel, z=p1:
  z2=z*z
  z=const*((((((z-5)*z+20)*z-60)*z+120)*z-120)/(exp(z)*z2*z2*z2))
  |z|<100
  ;SOURCE: chby12.frm
}


Alpha05-13 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, ez=exp(z)*z2*z2*z2
  f=((((((z-5)*z+20)*z-60)*z+120)*z-120)/ez)
  fd=(((((4-z)*z-10)*z2+120)*z-480)*z+720)/(ez*z)
  fdd=(((((((z-27)*z+98)*z-210)*z-120)*z+2760)*z-9360)*z+12240)/(ez*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Alpha05-14 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, ez=exp(z)*z2*z2*z2
  f=((((((z-5)*z+20)*z-60)*z+120)*z-120)/ez)
  fd=(((((4-z)*z-10)*z2+120)*z-480)*z+720)/(ez*z)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=((((((w-5)*w+20)*w-60)*w+120)*w-120)/(exp(w)*w2*w2*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Alpha05-15 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, ez=exp(z)*z2*z2*z2
  f=((((((z-5)*z+20)*z-60)*z+120)*z-120)/ez)
  fd=(((((4-z)*z-10)*z2+120)*z-480)*z+720)/(ez*z)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Alpha05-16 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=((((((p1-5)*p1+20)*p1-60)*p1+120)*p1-120)/(exp(p1)*pp2*pp2*pp2)):
  z2=z*z
  zt=z
  foz=fz
  fz=((((((z-5)*z+20)*z-60)*z+120)*z-120)/(exp(z)*z2*z2*z2))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Alpha05-19 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*((((((x-5)*x+20)*x-60)*x+120)*x-120)/(exp(x)*x2*x2*x2))
  x=x-t*((((((y-5)*y+20)*y-60)*y+120)*y-120)/(exp(y)*y2*y2*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Alpha05-20 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*sin((((((x-5)*x+20)*x-60)*x+120)*x-120)/(exp(x)*x2*x2*x2))
  x=x-t*sin((((((y-5)*y+20)*y-60)*y+120)*y-120)/(exp(y)*y2*y2*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Alpha05-21 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((((((x-5)*x+20)*x-60)*x+120)*x-120)/(exp(x)*x2*x2*x2))
  x=x-t*fn1((((((y-5)*y+20)*y-60)*y+120)*y-120)/(exp(y)*y2*y2*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Alpha05-22 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((((x-5)*x+20)*x-60)*x+120)*x-120)/(exp(x)*x2*x2*x2))
  Ty=fn2((((((y-5)*y+20)*y-60)*y+120)*y-120)/(exp(y)*y2*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Alpha05-23 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((((x-5)*x+20)*x-60)*x+120)*x-120)/(exp(x)*x2*x2*x2))
  Ty=fn2((((((y-5)*y+20)*y-60)*y+120)*y-120)/(exp(y)*y2*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Alpha05-24 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((((((x-5)*x+20)*x-60)*x+120)*x-120)/(exp(x)*x2*x2*x2))
  x=x-t*fn2((((((y-5)*y+20)*y-60)*y+120)*y-120)/(exp(y)*y2*y2*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Alpha05-25 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((((((x-5)*x+20)*x-60)*x+120)*x-120)/(exp(x)*x2*x2*x2))
  x=x-t*fn2((((((y-5)*y+20)*y-60)*y+120)*y-120)/(exp(y)*y2*y2*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Alpha05-26 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((((x-5)*x+20)*x-60)*x+120)*x-120)/(exp(x)*x2*x2*x2))
  Ty=fn1((((((y-5)*y+20)*y-60)*y+120)*y-120)/(exp(y)*y2*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Alpha05-27 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1((((((x-5)*x+20)*x-60)*x+120)*x-120)/(exp(x)*x2*x2*x2))
  Ty=fn1((((((y-5)*y+20)*y-60)*y+120)*y-120)/(exp(y)*y2*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Alpha05-28 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1((((((x-5)*x+20)*x-60)*x+120)*x-120)/(exp(x)*x2*x2*x2))
  Ty=fn1((((((y-5)*y+20)*y-60)*y+120)*y-120)/(exp(y)*y2*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Alpha05-29 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((((x-5)*x+20)*x-60)*x+120)*x-120)/(exp(x)*x2*x2*x2))
  Ty=fn1((((((y-5)*y+20)*y-60)*y+120)*y-120)/(exp(y)*y2*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Alpha05-30 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=(((((x0-5)*x0+20)*x0-60)*x0+120)*x0-120)/(exp(x0)*xx*xx*xx)
  Fx1=(((((x1-5)*x1+20)*x1-60)*x1+120)*x1-120)/(exp(x1)*yy*yy*yy)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Alpha06-01 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Fx=((((((x-6)*x+30)*x-120)*x+360)*x-720)*x+720)/(exp(x)*x2*x2*x2*x)
  Fy=((((((y-6)*y+30)*y-120)*y+360)*y-720)*y+720)/(exp(y)*y2*y2*y2*y)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Alpha06-02 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  bailout=p1+4, z=pixel:
  z2=z*z
  z=((((((z-6)*z+30)*z-120)*z+360)*z-720)*z+720)/(exp(z)*z2*z2*z2*z)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Alpha06-03 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  const=p1, z=pixel:
  z2=z*z
  z=const+(((((((z-6)*z+30)*z-120)*z+360)*z-720)*z+720)/(exp(z)*z2*z2*z2*z))
  |z|<100
  ;SOURCE: chby3.frm
}


Alpha06-04 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  const=pixel, z=p1:
  z2=z*z
  z=const+(((((((z-6)*z+30)*z-120)*z+360)*z-720)*z+720)/(exp(z)*z2*z2*z2*z))
  |z|<100
  ;SOURCE: chby4.frm
}


Alpha06-05 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4
  f=(((((((z-6)*z+30)*z-120)*z+360)*z-720)*z+720)/(ez*z2*z))
  fd=(((((((5-z)*z-18)*z+30)*z+120)*z-1080)*z+3600)*z-5040)/(ez*z4)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Alpha06-06 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, ez=exp(z)*z2*z2*z2*z
  f=(((((((z-6)*z+30)*z-120)*z+360)*z-720)*z+720)/ez)
  fd=(((((((5-z)*z-18)*z+30)*z+120)*z-1080)*z+3600)*z-5040)/(ez*z)
  fdd=((((((((z-32)*z+148)*z-480)*z+600)*z+3840)*z-27360)*z+80640)*z-100800)/(ez*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Alpha06-07 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4
  f=(((((((z-6)*z+30)*z-120)*z+360)*z-720)*z+720)/(ez*z2*z))
  fd=(((((((5-z)*z-18)*z+30)*z+120)*z-1080)*z+3600)*z-5040)/(ez*z4)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=(((((((w-6)*w+30)*w-120)*w+360)*w-720)*w+720)/(exp(w)*w2*w2*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Alpha06-08 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=sin(((((((x-6)*x+30)*x-120)*x+360)*x-720)*x+720)/(exp(x)*x2*x2*x2*x))
  Ty=sin(((((((y-6)*y+30)*y-120)*y+360)*y-720)*y+720)/(exp(y)*y2*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Alpha06-09 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((((x-6)*x+30)*x-120)*x+360)*x-720)*x+720)/(exp(x)*x2*x2*x2*x))
  Ty=fn1(((((((y-6)*y+30)*y-120)*y+360)*y-720)*y+720)/(exp(y)*y2*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Alpha06-10 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=(((((((p1-6)*p1+30)*p1-120)*p1+360)*p1-720)*p1+720)/(exp(p1)*pp2*pp2*pp2*p1)):
  z2=z*z
  zt=z
  foz=fz
  fz=(((((((z-6)*z+30)*z-120)*z+360)*z-720)*z+720)/(exp(z)*z2*z2*z2*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Alpha06-11 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  const=p1, z=pixel:
  z2=z*z
  z=const*(((((((z-6)*z+30)*z-120)*z+360)*z-720)*z+720)/(exp(z)*z2*z2*z2*z))
  |z|<100
  ;SOURCE: chby11.frm
}


Alpha06-12 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  const=pixel, z=p1:
  z2=z*z
  z=const*(((((((z-6)*z+30)*z-120)*z+360)*z-720)*z+720)/(exp(z)*z2*z2*z2*z))
  |z|<100
  ;SOURCE: chby12.frm
}


Alpha06-13 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, ez=exp(z)*z2*z2*z2*z
  f=(((((((z-6)*z+30)*z-120)*z+360)*z-720)*z+720)/ez)
  fd=(((((((5-z)*z-18)*z+30)*z+120)*z-1080)*z+3600)*z-5040)/(ez*z)
  fdd=((((((((z-32)*z+148)*z-480)*z+600)*z+3840)*z-27360)*z+80640)*z-100800)/(ez*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Alpha06-14 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4
  f=(((((((z-6)*z+30)*z-120)*z+360)*z-720)*z+720)/(ez*z2*z))
  fd=(((((((5-z)*z-18)*z+30)*z+120)*z-1080)*z+3600)*z-5040)/(ez*z4)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=(((((((w-6)*w+30)*w-120)*w+360)*w-720)*w+720)/(exp(w)*w2*w2*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Alpha06-15 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4
  f=(((((((z-6)*z+30)*z-120)*z+360)*z-720)*z+720)/(ez*z2*z))
  fd=(((((((5-z)*z-18)*z+30)*z+120)*z-1080)*z+3600)*z-5040)/(ez*z4)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Alpha06-16 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=(((((((p1-6)*p1+30)*p1-120)*p1+360)*p1-720)*p1+720)/(exp(p1)*pp2*pp2*pp2*p1)):
  z2=z*z
  zt=z
  foz=fz
  fz=(((((((z-6)*z+30)*z-120)*z+360)*z-720)*z+720)/(exp(z)*z2*z2*z2*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Alpha06-19 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*(((((((x-6)*x+30)*x-120)*x+360)*x-720)*x+720)/(exp(x)*x2*x2*x2*x))
  x=x-t*(((((((y-6)*y+30)*y-120)*y+360)*y-720)*y+720)/(exp(y)*y2*y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Alpha06-20 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*sin(((((((x-6)*x+30)*x-120)*x+360)*x-720)*x+720)/(exp(x)*x2*x2*x2*x))
  x=x-t*sin(((((((y-6)*y+30)*y-120)*y+360)*y-720)*y+720)/(exp(y)*y2*y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Alpha06-21 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((((x-6)*x+30)*x-120)*x+360)*x-720)*x+720)/(exp(x)*x2*x2*x2*x))
  x=x-t*fn1(((((((y-6)*y+30)*y-120)*y+360)*y-720)*y+720)/(exp(y)*y2*y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Alpha06-22 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((((x-6)*x+30)*x-120)*x+360)*x-720)*x+720)/(exp(x)*x2*x2*x2*x))
  Ty=fn2(((((((y-6)*y+30)*y-120)*y+360)*y-720)*y+720)/(exp(y)*y2*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Alpha06-23 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((((x-6)*x+30)*x-120)*x+360)*x-720)*x+720)/(exp(x)*x2*x2*x2*x))
  Ty=fn2(((((((y-6)*y+30)*y-120)*y+360)*y-720)*y+720)/(exp(y)*y2*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Alpha06-24 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((((x-6)*x+30)*x-120)*x+360)*x-720)*x+720)/(exp(x)*x2*x2*x2*x))
  x=x-t*fn2(((((((y-6)*y+30)*y-120)*y+360)*y-720)*y+720)/(exp(y)*y2*y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Alpha06-25 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((((x-6)*x+30)*x-120)*x+360)*x-720)*x+720)/(exp(x)*x2*x2*x2*x))
  x=x-t*fn2(((((((y-6)*y+30)*y-120)*y+360)*y-720)*y+720)/(exp(y)*y2*y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Alpha06-26 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((((x-6)*x+30)*x-120)*x+360)*x-720)*x+720)/(exp(x)*x2*x2*x2*x))
  Ty=fn1(((((((y-6)*y+30)*y-120)*y+360)*y-720)*y+720)/(exp(y)*y2*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Alpha06-27 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1(((((((x-6)*x+30)*x-120)*x+360)*x-720)*x+720)/(exp(x)*x2*x2*x2*x))
  Ty=fn1(((((((y-6)*y+30)*y-120)*y+360)*y-720)*y+720)/(exp(y)*y2*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Alpha06-28 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1(((((((x-6)*x+30)*x-120)*x+360)*x-720)*x+720)/(exp(x)*x2*x2*x2*x))
  Ty=fn1(((((((y-6)*y+30)*y-120)*y+360)*y-720)*y+720)/(exp(y)*y2*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Alpha06-29 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((((x-6)*x+30)*x-120)*x+360)*x-720)*x+720)/(exp(x)*x2*x2*x2*x))
  Ty=fn1(((((((y-6)*y+30)*y-120)*y+360)*y-720)*y+720)/(exp(y)*y2*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Alpha06-30 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=((((((x0-6)*x0+30)*x0-120)*x0+360)*x0-720)*x0+720)/(exp(x0)*xx*xx*xx*x0)
  Fx1=((((((x1-6)*x1+30)*x1-120)*x1+360)*x1-720)*x1+720)/(exp(x1)*yy*yy*yy*x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Alpha07-01 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Fx=(((((((x-7)*x+42)*x-210)*x+840)*x-2520)*x+5040)*x-5040)/(exp(x)*x4*x4)
  Fy=(((((((y-7)*y+42)*y-210)*y+840)*y-2520)*y+5040)*y-5040)/(exp(y)*y4*y4)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Alpha07-02 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  bailout=p1+4, z=pixel:
  z2=z*z, z4=z2*z2
  z=(((((((z-7)*z+42)*z-210)*z+840)*z-2520)*z+5040)*z-5040)/(exp(z)*z4*z4)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Alpha07-03 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  const=p1, z=pixel:
  z2=z*z, z4=z2*z2
  z=const+((((((((z-7)*z+42)*z-210)*z+840)*z-2520)*z+5040)*z-5040)/(exp(z)*z4*z4))
  |z|<100
  ;SOURCE: chby3.frm
}


Alpha07-04 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  const=pixel, z=p1:
  z2=z*z, z4=z2*z2
  z=const+((((((((z-7)*z+42)*z-210)*z+840)*z-2520)*z+5040)*z-5040)/(exp(z)*z4*z4))
  |z|<100
  ;SOURCE: chby4.frm
}


Alpha07-05 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4
  f=((((((((z-7)*z+42)*z-210)*z+840)*z-2520)*z+5040)*z-5040)/ez)
  fd=(((((((6-z)*z-28)*z+84)*z2-1680)*z+10080)*z-30240)*z+40320)/(ez*z)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Alpha07-06 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4
  f=((((((((z-7)*z+42)*z-210)*z+840)*z-2520)*z+5040)*z-5040)/ez)
  fd=(((((((6-z)*z-28)*z+84)*z2-1680)*z+10080)*z-30240)*z+40320)/(ez*z)
  fdd=(((((((((z-37)*z+208)*z-896)*z+2352)*z+1680)*z-53760)*z+282240)*z-766080)*z+927360)/(ez*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Alpha07-07 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4
  f=((((((((z-7)*z+42)*z-210)*z+840)*z-2520)*z+5040)*z-5040)/ez)
  fd=(((((((6-z)*z-28)*z+84)*z2-1680)*z+10080)*z-30240)*z+40320)/(ez*z)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  fw=((((((((w-7)*w+42)*w-210)*w+840)*w-2520)*w+5040)*w-5040)/(exp(w)*w4*w4))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Alpha07-08 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=sin((((((((x-7)*x+42)*x-210)*x+840)*x-2520)*x+5040)*x-5040)/(exp(x)*x4*x4))
  Ty=sin((((((((y-7)*y+42)*y-210)*y+840)*y-2520)*y+5040)*y-5040)/(exp(y)*y4*y4))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Alpha07-09 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1((((((((x-7)*x+42)*x-210)*x+840)*x-2520)*x+5040)*x-5040)/(exp(x)*x4*x4))
  Ty=fn1((((((((y-7)*y+42)*y-210)*y+840)*y-2520)*y+5040)*y-5040)/(exp(y)*y4*y4))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Alpha07-10 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1, pp4=pp2*pp2
  fz=((((((((p1-7)*p1+42)*p1-210)*p1+840)*p1-2520)*p1+5040)*p1-5040)/(exp(p1)*pp4*pp4)):
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=((((((((z-7)*z+42)*z-210)*z+840)*z-2520)*z+5040)*z-5040)/(exp(z)*z4*z4))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Alpha07-11 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  const=p1, z=pixel:
  z2=z*z, z4=z2*z2
  z=const*((((((((z-7)*z+42)*z-210)*z+840)*z-2520)*z+5040)*z-5040)/(exp(z)*z4*z4))
  |z|<100
  ;SOURCE: chby11.frm
}


Alpha07-12 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  const=pixel, z=p1:
  z2=z*z, z4=z2*z2
  z=const*((((((((z-7)*z+42)*z-210)*z+840)*z-2520)*z+5040)*z-5040)/(exp(z)*z4*z4))
  |z|<100
  ;SOURCE: chby12.frm
}


Alpha07-13 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4
  f=((((((((z-7)*z+42)*z-210)*z+840)*z-2520)*z+5040)*z-5040)/ez)
  fd=(((((((6-z)*z-28)*z+84)*z2-1680)*z+10080)*z-30240)*z+40320)/(ez*z)
  fdd=(((((((((z-37)*z+208)*z-896)*z+2352)*z+1680)*z-53760)*z+282240)*z-766080)*z+927360)/(ez*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Alpha07-14 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4
  f=((((((((z-7)*z+42)*z-210)*z+840)*z-2520)*z+5040)*z-5040)/ez)
  fd=(((((((6-z)*z-28)*z+84)*z2-1680)*z+10080)*z-30240)*z+40320)/(ez*z)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  fw=((((((((w-7)*w+42)*w-210)*w+840)*w-2520)*w+5040)*w-5040)/(exp(w)*w4*w4))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Alpha07-15 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4
  f=((((((((z-7)*z+42)*z-210)*z+840)*z-2520)*z+5040)*z-5040)/ez)
  fd=(((((((6-z)*z-28)*z+84)*z2-1680)*z+10080)*z-30240)*z+40320)/(ez*z)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Alpha07-16 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1, pp4=pp2*pp2
  fz=((((((((p1-7)*p1+42)*p1-210)*p1+840)*p1-2520)*p1+5040)*p1-5040)/(exp(p1)*pp4*pp4)):
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=((((((((z-7)*z+42)*z-210)*z+840)*z-2520)*z+5040)*z-5040)/(exp(z)*z4*z4))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Alpha07-19 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*((((((((x-7)*x+42)*x-210)*x+840)*x-2520)*x+5040)*x-5040)/(exp(x)*x4*x4))
  x=x-t*((((((((y-7)*y+42)*y-210)*y+840)*y-2520)*y+5040)*y-5040)/(exp(y)*y4*y4))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Alpha07-20 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*sin((((((((x-7)*x+42)*x-210)*x+840)*x-2520)*x+5040)*x-5040)/(exp(x)*x4*x4))
  x=x-t*sin((((((((y-7)*y+42)*y-210)*y+840)*y-2520)*y+5040)*y-5040)/(exp(y)*y4*y4))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Alpha07-21 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1((((((((x-7)*x+42)*x-210)*x+840)*x-2520)*x+5040)*x-5040)/(exp(x)*x4*x4))
  x=x-t*fn1((((((((y-7)*y+42)*y-210)*y+840)*y-2520)*y+5040)*y-5040)/(exp(y)*y4*y4))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Alpha07-22 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1((((((((x-7)*x+42)*x-210)*x+840)*x-2520)*x+5040)*x-5040)/(exp(x)*x4*x4))
  Ty=fn2((((((((y-7)*y+42)*y-210)*y+840)*y-2520)*y+5040)*y-5040)/(exp(y)*y4*y4))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Alpha07-23 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1((((((((x-7)*x+42)*x-210)*x+840)*x-2520)*x+5040)*x-5040)/(exp(x)*x4*x4))
  Ty=fn2((((((((y-7)*y+42)*y-210)*y+840)*y-2520)*y+5040)*y-5040)/(exp(y)*y4*y4))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Alpha07-24 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1((((((((x-7)*x+42)*x-210)*x+840)*x-2520)*x+5040)*x-5040)/(exp(x)*x4*x4))
  x=x-t*fn2((((((((y-7)*y+42)*y-210)*y+840)*y-2520)*y+5040)*y-5040)/(exp(y)*y4*y4))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Alpha07-25 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1((((((((x-7)*x+42)*x-210)*x+840)*x-2520)*x+5040)*x-5040)/(exp(x)*x4*x4))
  x=x-t*fn2((((((((y-7)*y+42)*y-210)*y+840)*y-2520)*y+5040)*y-5040)/(exp(y)*y4*y4))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Alpha07-26 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1((((((((x-7)*x+42)*x-210)*x+840)*x-2520)*x+5040)*x-5040)/(exp(x)*x4*x4))
  Ty=fn1((((((((y-7)*y+42)*y-210)*y+840)*y-2520)*y+5040)*y-5040)/(exp(y)*y4*y4))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Alpha07-27 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1((((((((x-7)*x+42)*x-210)*x+840)*x-2520)*x+5040)*x-5040)/(exp(x)*x4*x4))
  Ty=fn1((((((((y-7)*y+42)*y-210)*y+840)*y-2520)*y+5040)*y-5040)/(exp(y)*y4*y4))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Alpha07-28 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1((((((((x-7)*x+42)*x-210)*x+840)*x-2520)*x+5040)*x-5040)/(exp(x)*x4*x4))
  Ty=fn1((((((((y-7)*y+42)*y-210)*y+840)*y-2520)*y+5040)*y-5040)/(exp(y)*y4*y4))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Alpha07-29 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1((((((((x-7)*x+42)*x-210)*x+840)*x-2520)*x+5040)*x-5040)/(exp(x)*x4*x4))
  Ty=fn1((((((((y-7)*y+42)*y-210)*y+840)*y-2520)*y+5040)*y-5040)/(exp(y)*y4*y4))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Alpha07-30 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1, x4=xx*xx, y4=yy*yy
  Fx0=(((((((x0-7)*x0+42)*x0-210)*x0+840)*x0-2520)*x0+5040)*x0-5040)/(exp(x0)*x4*x4)
  Fx1=(((((((x1-7)*x1+42)*x1-210)*x1+840)*x1-2520)*x1+5040)*x1-5040)/(exp(x1)*y4*y4)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Alpha08-01 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Fx=((((((((x-8)*x+56)*x-336)*x+1680)*x-6720)*x+20160)*x-40320)*x+40320)/(exp(x)*x4*x4*x)
  Fy=((((((((y-8)*y+56)*y-336)*y+1680)*y-6720)*y+20160)*y-40320)*y+40320)/(exp(y)*y4*y4*y)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Alpha08-02 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  bailout=p1+4, z=pixel:
  z2=z*z, z4=z2*z2
  z=((((((((z-8)*z+56)*z-336)*z+1680)*z-6720)*z+20160)*z-40320)*z+40320)/(exp(z)*z4*z4*z)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Alpha08-03 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  const=p1, z=pixel:
  z2=z*z, z4=z2*z2
  z=const+(((((((((z-8)*z+56)*z-336)*z+1680)*z-6720)*z+20160)*z-40320)*z+40320)/(exp(z)*z4*z4*z))
  |z|<100
  ;SOURCE: chby3.frm
}


Alpha08-04 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  const=pixel, z=p1:
  z2=z*z, z4=z2*z2
  z=const+(((((((((z-8)*z+56)*z-336)*z+1680)*z-6720)*z+20160)*z-40320)*z+40320)/(exp(z)*z4*z4*z))
  |z|<100
  ;SOURCE: chby4.frm
}


Alpha08-05 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4
  f=(((((((((z-8)*z+56)*z-336)*z+1680)*z-6720)*z+20160)*z-40320)*z+40320)/(ez*z))
  fd=(((((((((7-z)*z-40)*z+168)*z-336)*z-1680)*z+20160)*z-100800)*z+282240)*z-362880)/(ez*z2)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Alpha08-06 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4*z
  f=(((((((((z-8)*z+56)*z-336)*z+1680)*z-6720)*z+20160)*z-40320)*z+40320)/(ez))
  fd=(((((((((7-z)*z-40)*z+168)*z-336)*z-1680)*z+20160)*z-100800)*z+282240)*z-362880)/(ez*z)
  fdd=((((((((((z-42)*z+278)*z-1488)*z+5712)*z-8736)*z-70560)*z+685440)*z-3104640)*z+7983360)*z-9434880)/(ez*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Alpha08-07 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4
  f=(((((((((z-8)*z+56)*z-336)*z+1680)*z-6720)*z+20160)*z-40320)*z+40320)/(ez*z))
  fd=(((((((((7-z)*z-40)*z+168)*z-336)*z-1680)*z+20160)*z-100800)*z+282240)*z-362880)/(ez*z2)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  fw=(((((((((w-8)*w+56)*w-336)*w+1680)*w-6720)*w+20160)*w-40320)*w+40320)/(exp(w)*w4*w4*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Alpha08-08 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=sin(((((((((x-8)*x+56)*x-336)*x+1680)*x-6720)*x+20160)*x-40320)*x+40320)/(exp(x)*x4*x4*x))
  Ty=sin(((((((((y-8)*y+56)*y-336)*y+1680)*y-6720)*y+20160)*y-40320)*y+40320)/(exp(y)*y4*y4*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Alpha08-09 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((((((x-8)*x+56)*x-336)*x+1680)*x-6720)*x+20160)*x-40320)*x+40320)/(exp(x)*x4*x4*x))
  Ty=fn1(((((((((y-8)*y+56)*y-336)*y+1680)*y-6720)*y+20160)*y-40320)*y+40320)/(exp(y)*y4*y4*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Alpha08-10 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p2*p2, pp4=pp2*pp2
  fz=(((((((((p1-8)*p1+56)*p1-336)*p1+1680)*p1-6720)*p1+20160)*p1-40320)*p1+40320)/(exp(p1)*pp4*pp4*p1)):
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=(((((((((z-8)*z+56)*z-336)*z+1680)*z-6720)*z+20160)*z-40320)*z+40320)/(exp(z)*z4*z4*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Alpha08-11 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  const=p1, z=pixel:
  z2=z*z, z4=z2*z2
  z=const*(((((((((z-8)*z+56)*z-336)*z+1680)*z-6720)*z+20160)*z-40320)*z+40320)/(exp(z)*z4*z4*z))
  |z|<100
  ;SOURCE: chby11.frm
}


Alpha08-12 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  const=pixel, z=p1:
  z2=z*z, z4=z2*z2
  z=const*(((((((((z-8)*z+56)*z-336)*z+1680)*z-6720)*z+20160)*z-40320)*z+40320)/(exp(z)*z4*z4*z))
  |z|<100
  ;SOURCE: chby12.frm
}


Alpha08-13 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4*z
  f=(((((((((z-8)*z+56)*z-336)*z+1680)*z-6720)*z+20160)*z-40320)*z+40320)/(ez))
  fd=(((((((((7-z)*z-40)*z+168)*z-336)*z-1680)*z+20160)*z-100800)*z+282240)*z-362880)/(ez*z)
  fdd=((((((((((z-42)*z+278)*z-1488)*z+5712)*z-8736)*z-70560)*z+685440)*z-3104640)*z+7983360)*z-9434880)/(ez*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Alpha08-14 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4
  f=(((((((((z-8)*z+56)*z-336)*z+1680)*z-6720)*z+20160)*z-40320)*z+40320)/(ez*z))
  fd=(((((((((7-z)*z-40)*z+168)*z-336)*z-1680)*z+20160)*z-100800)*z+282240)*z-362880)/(ez*z2)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  fw=(((((((((w-8)*w+56)*w-336)*w+1680)*w-6720)*w+20160)*w-40320)*w+40320)/(exp(w)*w4*w4*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Alpha08-15 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4
  f=(((((((((z-8)*z+56)*z-336)*z+1680)*z-6720)*z+20160)*z-40320)*z+40320)/(ez*z))
  fd=(((((((((7-z)*z-40)*z+168)*z-336)*z-1680)*z+20160)*z-100800)*z+282240)*z-362880)/(ez*z2)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Alpha08-16 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p2*p2, pp4=pp2*pp2
  fz=(((((((((p1-8)*p1+56)*p1-336)*p1+1680)*p1-6720)*p1+20160)*p1-40320)*p1+40320)/(exp(p1)*pp4*pp4*p1)):
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=(((((((((z-8)*z+56)*z-336)*z+1680)*z-6720)*z+20160)*z-40320)*z+40320)/(exp(z)*z4*z4*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Alpha08-19 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*(((((((((x-8)*x+56)*x-336)*x+1680)*x-6720)*x+20160)*x-40320)*x+40320)/(exp(x)*x4*x4*x))
  x=x-t*(((((((((y-8)*y+56)*y-336)*y+1680)*y-6720)*y+20160)*y-40320)*y+40320)/(exp(y)*y4*y4*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Alpha08-20 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*sin(((((((((x-8)*x+56)*x-336)*x+1680)*x-6720)*x+20160)*x-40320)*x+40320)/(exp(x)*x4*x4*x))
  x=x-t*sin(((((((((y-8)*y+56)*y-336)*y+1680)*y-6720)*y+20160)*y-40320)*y+40320)/(exp(y)*y4*y4*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Alpha08-21 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((((((x-8)*x+56)*x-336)*x+1680)*x-6720)*x+20160)*x-40320)*x+40320)/(exp(x)*x4*x4*x))
  x=x-t*fn1(((((((((y-8)*y+56)*y-336)*y+1680)*y-6720)*y+20160)*y-40320)*y+40320)/(exp(y)*y4*y4*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Alpha08-22 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((((((x-8)*x+56)*x-336)*x+1680)*x-6720)*x+20160)*x-40320)*x+40320)/(exp(x)*x4*x4*x))
  Ty=fn2(((((((((y-8)*y+56)*y-336)*y+1680)*y-6720)*y+20160)*y-40320)*y+40320)/(exp(y)*y4*y4*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Alpha08-23 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((((((x-8)*x+56)*x-336)*x+1680)*x-6720)*x+20160)*x-40320)*x+40320)/(exp(x)*x4*x4*x))
  Ty=fn2(((((((((y-8)*y+56)*y-336)*y+1680)*y-6720)*y+20160)*y-40320)*y+40320)/(exp(y)*y4*y4*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Alpha08-24 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((((((x-8)*x+56)*x-336)*x+1680)*x-6720)*x+20160)*x-40320)*x+40320)/(exp(x)*x4*x4*x))
  x=x-t*fn2(((((((((y-8)*y+56)*y-336)*y+1680)*y-6720)*y+20160)*y-40320)*y+40320)/(exp(y)*y4*y4*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Alpha08-25 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((((((x-8)*x+56)*x-336)*x+1680)*x-6720)*x+20160)*x-40320)*x+40320)/(exp(x)*x4*x4*x))
  x=x-t*fn2(((((((((y-8)*y+56)*y-336)*y+1680)*y-6720)*y+20160)*y-40320)*y+40320)/(exp(y)*y4*y4*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Alpha08-26 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((((((x-8)*x+56)*x-336)*x+1680)*x-6720)*x+20160)*x-40320)*x+40320)/(exp(x)*x4*x4*x))
  Ty=fn1(((((((((y-8)*y+56)*y-336)*y+1680)*y-6720)*y+20160)*y-40320)*y+40320)/(exp(y)*y4*y4*y))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Alpha08-27 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1(((((((((x-8)*x+56)*x-336)*x+1680)*x-6720)*x+20160)*x-40320)*x+40320)/(exp(x)*x4*x4*x))
  Ty=fn1(((((((((y-8)*y+56)*y-336)*y+1680)*y-6720)*y+20160)*y-40320)*y+40320)/(exp(y)*y4*y4*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Alpha08-28 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1(((((((((x-8)*x+56)*x-336)*x+1680)*x-6720)*x+20160)*x-40320)*x+40320)/(exp(x)*x4*x4*x))
  Ty=fn1(((((((((y-8)*y+56)*y-336)*y+1680)*y-6720)*y+20160)*y-40320)*y+40320)/(exp(y)*y4*y4*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Alpha08-29 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((((((x-8)*x+56)*x-336)*x+1680)*x-6720)*x+20160)*x-40320)*x+40320)/(exp(x)*x4*x4*x))
  Ty=fn1(((((((((y-8)*y+56)*y-336)*y+1680)*y-6720)*y+20160)*y-40320)*y+40320)/(exp(y)*y4*y4*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Alpha08-30 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=((((((((x0-8)*x0+56)*x0-336)*x0+1680)*x0-6720)*x0+20160)*x0-40320)*x0+40320)/(exp(x0)*x4*x4*x0)
  Fx1=((((((((x1-8)*x1+56)*x1-336)*x1+1680)*x1-6720)*x1+20160)*x1-40320)*x1+40320)/(exp(x1)*y4*y4*x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Alpha09-01 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Fx=(((((((((x-9)*x+72)*x-504)*x+3024)*x-15120)*x+60480)*x-181440)*x+362880)*x-362880)/(exp(x)*x4*x4*x2)
  Fy=(((((((((y-9)*y+72)*y-504)*y+3024)*y-15120)*y+60480)*y-181440)*y+362880)*y-362880)/(exp(y)*y4*y4*y2)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Alpha09-02 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  bailout=p1+4, z=pixel:
  z2=z*z, z4=z2*z2
  z=(((((((((z-9)*z+72)*z-504)*z+3024)*z-15120)*z+60480)*z-181440)*z+362880)*z-362880)/(exp(z)*z4*z4*z2)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Alpha09-03 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  const=p1, z=pixel:
  z2=z*z, z4=z2*z2
  z=const+((((((((((z-9)*z+72)*z-504)*z+3024)*z-15120)*z+60480)*z-181440)*z+362880)*z-362880)/(exp(z)*z4*z4*z2))
  |z|<100
  ;SOURCE: chby3.frm
}


Alpha09-04 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  const=pixel, z=p1:
  z2=z*z, z4=z2*z2
  z=const+((((((((((z-9)*z+72)*z-504)*z+3024)*z-15120)*z+60480)*z-181440)*z+362880)*z-362880)/(exp(z)*z4*z4*z2))
  |z|<100
  ;SOURCE: chby4.frm
}


Alpha09-05 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4*z2
  f=((((((((((z-9)*z+72)*z-504)*z+3024)*z-15120)*z+60480)*z-181440)*z+362880)*z-362880)/ez)
  fd=(((((((((8-z)*z-54)*z+288)*z-1008)*z2+30240)*z-241920)*z+1088640)*z-2903040)*z+3628800)/(ez*z)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Alpha09-06 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4*z2
  f=((((((((((z-9)*z+72)*z-504)*z+3024)*z-15120)*z+60480)*z-181440)*z+362880)*z-362880)/ez)
  fd=(((((((((-z+8)*z-54)*z+288)*z-1008)*z2+30240)*z-241920)*z+1088640)*z-2903040)*z+3628800)/(ez*z)
  fdd=(((((((((((z-47)*z+358)*z-2286)*z+11376)*z-35280)*z-30240)*z+1239840)*z-8830080)*z+36650880)*z-90720000)*z+105235200)/(ez*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Alpha09-07 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4*z2
  f=((((((((((z-9)*z+72)*z-504)*z+3024)*z-15120)*z+60480)*z-181440)*z+362880)*z-362880)/ez)
  fd=(((((((((8-z)*z-54)*z+288)*z-1008)*z2+30240)*z-241920)*z+1088640)*z-2903040)*z+3628800)/(ez*z)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  fw=((((((((((w-9)*w+72)*w-504)*w+3024)*w-15120)*w+60480)*w-181440)*w+362880)*w-362880)/(exp(w)*w4*w4*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Alpha09-08 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=sin((((((((((x-9)*x+72)*x-504)*x+3024)*x-15120)*x+60480)*x-181440)*x+362880)*x-362880)/(exp(x)*x4*x4*x2))
  Ty=sin((((((((((y-9)*y+72)*y-504)*y+3024)*y-15120)*y+60480)*y-181440)*y+362880)*y-362880)/(exp(y)*y4*y4*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Alpha09-09 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((((((((x-9)*x+72)*x-504)*x+3024)*x-15120)*x+60480)*x-181440)*x+362880)*x-362880)/(exp(x)*x4*x4*x2))
  Ty=fn1((((((((((y-9)*y+72)*y-504)*y+3024)*y-15120)*y+60480)*y-181440)*y+362880)*y-362880)/(exp(y)*y4*y4*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Alpha09-10 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1, pp4=pp2*pp2
  fz=((((((((((p1-9)*p1+72)*p1-504)*p1+3024)*p1-15120)*p1+60480)*p1-181440)*p1+362880)*p1-362880)/(exp(p1)*pp4*pp4*pp2)):
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=((((((((((z-9)*z+72)*z-504)*z+3024)*z-15120)*z+60480)*z-181440)*z+362880)*z-362880)/(exp(z)*z4*z4*z2))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Alpha09-11 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  const=p1, z=pixel:
  z2=z*z, z4=z2*z2
  z=const*((((((((((z-9)*z+72)*z-504)*z+3024)*z-15120)*z+60480)*z-181440)*z+362880)*z-362880)/(exp(z)*z4*z4*z2))
  |z|<100
  ;SOURCE: chby11.frm
}


Alpha09-12 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  const=pixel, z=p1:
  z2=z*z, z4=z2*z2
  z=const*((((((((((z-9)*z+72)*z-504)*z+3024)*z-15120)*z+60480)*z-181440)*z+362880)*z-362880)/(exp(z)*z4*z4*z2))
  |z|<100
  ;SOURCE: chby12.frm
}


Alpha09-13 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4*z2
  f=((((((((((z-9)*z+72)*z-504)*z+3024)*z-15120)*z+60480)*z-181440)*z+362880)*z-362880)/ez)
  fd=(((((((((-z+8)*z-54)*z+288)*z-1008)*z2+30240)*z-241920)*z+1088640)*z-2903040)*z+3628800)/(ez*z)
  fdd=(((((((((((z-47)*z+358)*z-2286)*z+11376)*z-35280)*z-30240)*z+1239840)*z-8830080)*z+36650880)*z-90720000)*z+105235200)/(ez*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Alpha09-14 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4*z2
  f=((((((((((z-9)*z+72)*z-504)*z+3024)*z-15120)*z+60480)*z-181440)*z+362880)*z-362880)/ez)
  fd=(((((((((8-z)*z-54)*z+288)*z-1008)*z2+30240)*z-241920)*z+1088640)*z-2903040)*z+3628800)/(ez*z)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  fw=((((((((((w-9)*w+72)*w-504)*w+3024)*w-15120)*w+60480)*w-181440)*w+362880)*w-362880)/(exp(w)*w4*w4*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Alpha09-15 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4*z2
  f=((((((((((z-9)*z+72)*z-504)*z+3024)*z-15120)*z+60480)*z-181440)*z+362880)*z-362880)/ez)
  fd=(((((((((8-z)*z-54)*z+288)*z-1008)*z2+30240)*z-241920)*z+1088640)*z-2903040)*z+3628800)/(ez*z)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Alpha09-16 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1, pp4=pp2*pp2
  fz=((((((((((p1-9)*p1+72)*p1-504)*p1+3024)*p1-15120)*p1+60480)*p1-181440)*p1+362880)*p1-362880)/(exp(p1)*pp4*pp4*pp2)):
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=((((((((((z-9)*z+72)*z-504)*z+3024)*z-15120)*z+60480)*z-181440)*z+362880)*z-362880)/(exp(z)*z4*z4*z2))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Alpha09-19 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*((((((((((x-9)*x+72)*x-504)*x+3024)*x-15120)*x+60480)*x-181440)*x+362880)*x-362880)/(exp(x)*x4*x4*x2))
  x=x-t*((((((((((y-9)*y+72)*y-504)*y+3024)*y-15120)*y+60480)*y-181440)*y+362880)*y-362880)/(exp(y)*y4*y4*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Alpha09-20 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*sin((((((((((x-9)*x+72)*x-504)*x+3024)*x-15120)*x+60480)*x-181440)*x+362880)*x-362880)/(exp(x)*x4*x4*x2))
  x=x-t*sin((((((((((y-9)*y+72)*y-504)*y+3024)*y-15120)*y+60480)*y-181440)*y+362880)*y-362880)/(exp(y)*y4*y4*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Alpha09-21 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((((((((((x-9)*x+72)*x-504)*x+3024)*x-15120)*x+60480)*x-181440)*x+362880)*x-362880)/(exp(x)*x4*x4*x2))
  x=x-t*fn1((((((((((y-9)*y+72)*y-504)*y+3024)*y-15120)*y+60480)*y-181440)*y+362880)*y-362880)/(exp(y)*y4*y4*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Alpha09-22 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((((((((x-9)*x+72)*x-504)*x+3024)*x-15120)*x+60480)*x-181440)*x+362880)*x-362880)/(exp(x)*x4*x4*x2))
  Ty=fn2((((((((((y-9)*y+72)*y-504)*y+3024)*y-15120)*y+60480)*y-181440)*y+362880)*y-362880)/(exp(y)*y4*y4*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Alpha09-23 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((((((((x-9)*x+72)*x-504)*x+3024)*x-15120)*x+60480)*x-181440)*x+362880)*x-362880)/(exp(x)*x4*x4*x2))
  Ty=fn2((((((((((y-9)*y+72)*y-504)*y+3024)*y-15120)*y+60480)*y-181440)*y+362880)*y-362880)/(exp(y)*y4*y4*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Alpha09-24 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((((((((((x-9)*x+72)*x-504)*x+3024)*x-15120)*x+60480)*x-181440)*x+362880)*x-362880)/(exp(x)*x4*x4*x2))
  x=x-t*fn2((((((((((y-9)*y+72)*y-504)*y+3024)*y-15120)*y+60480)*y-181440)*y+362880)*y-362880)/(exp(y)*y4*y4*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Alpha09-25 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((((((((((x-9)*x+72)*x-504)*x+3024)*x-15120)*x+60480)*x-181440)*x+362880)*x-362880)/(exp(x)*x4*x4*x2))
  x=x-t*fn2((((((((((y-9)*y+72)*y-504)*y+3024)*y-15120)*y+60480)*y-181440)*y+362880)*y-362880)/(exp(y)*y4*y4*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Alpha09-26 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((((((((x-9)*x+72)*x-504)*x+3024)*x-15120)*x+60480)*x-181440)*x+362880)*x-362880)/(exp(x)*x4*x4*x2))
  Ty=fn1((((((((((y-9)*y+72)*y-504)*y+3024)*y-15120)*y+60480)*y-181440)*y+362880)*y-362880)/(exp(y)*y4*y4*y2))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Alpha09-27 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1((((((((((x-9)*x+72)*x-504)*x+3024)*x-15120)*x+60480)*x-181440)*x+362880)*x-362880)/(exp(x)*x4*x4*x2))
  Ty=fn1((((((((((y-9)*y+72)*y-504)*y+3024)*y-15120)*y+60480)*y-181440)*y+362880)*y-362880)/(exp(y)*y4*y4*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Alpha09-28 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1((((((((((x-9)*x+72)*x-504)*x+3024)*x-15120)*x+60480)*x-181440)*x+362880)*x-362880)/(exp(x)*x4*x4*x2))
  Ty=fn1((((((((((y-9)*y+72)*y-504)*y+3024)*y-15120)*y+60480)*y-181440)*y+362880)*y-362880)/(exp(y)*y4*y4*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Alpha09-29 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((((((((x-9)*x+72)*x-504)*x+3024)*x-15120)*x+60480)*x-181440)*x+362880)*x-362880)/(exp(x)*x4*x4*x2))
  Ty=fn1((((((((((y-9)*y+72)*y-504)*y+3024)*y-15120)*y+60480)*y-181440)*y+362880)*y-362880)/(exp(y)*y4*y4*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Alpha09-30 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=(((((((((x0-9)*x0+72)*x0-504)*x0+3024)*x0-15120)*x0+60480)*x0-181440)*x0+362880)*x0-362880)/(exp(x0)*x4*x4*xx)
  Fx1=(((((((((x1-9)*x1+72)*x1-504)*x1+3024)*x1-15120)*x1+60480)*x1-181440)*x1+362880)*x1-362880)/(exp(x1)*y4*y4*yy)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Alpha10-01 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Fx=((((((((((x-10)*x+90)*x-720)*x+5040)*x-30240)*x+151200)*x-604800)*x+1814400)*x-3628800)*x+3628800)/(exp(x)*x4*x4*x2*x)
  Fy=((((((((((y-10)*y+90)*y-720)*y+5040)*y-30240)*y+151200)*y-604800)*y+1814400)*y-3628800)*y+3628800)/(exp(y)*y4*y4*y2*y)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Alpha10-02 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  bailout=p1+4, z=pixel:
  z2=z*z, z4=z2*z2
  z=((((((((((z-10)*z+90)*z-720)*z+5040)*z-30240)*z+151200)*z-604800)*z+1814400)*z-3628800)*z+3628800)/(exp(z)*z4*z4*z2*z)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Alpha10-03 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  const=p1, z=pixel:
  z2=z*z, z4=z2*z2
  z=const+(((((((((((z-10)*z+90)*z-720)*z+5040)*z-30240)*z+151200)*z-604800)*z+1814400)*z-3628800)*z+3628800)/(exp(z)*z4*z4*z2*z))
  |z|<100
  ;SOURCE: chby3.frm
}


Alpha10-04 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  const=pixel, z=p1:
  z2=z*z, z4=z2*z2
  z=const+(((((((((((z-10)*z+90)*z-720)*z+5040)*z-30240)*z+151200)*z-604800)*z+1814400)*z-3628800)*z+3628800)/(exp(z)*z4*z4*z2*z))
  |z|<100
  ;SOURCE: chby4.frm
}


Alpha10-05 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4
  f=(((((((((((z-10)*z+90)*z-720)*z+5040)*z-30240)*z+151200)*z-604800)*z+1814400)*z-3628800)*z+3628800)/(ez*z2*z))
  fd=(((((((((((9-z)*z-70)*z+450)*z-2160)*z+5040)*z+30240)*z-453600)*z+3024000)*z-12700800)*z+32659200)*z-39916800)/(ez*z4)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Alpha10-06 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4*z2*z
  f=(((((((((((z-10)*z+90)*z-720)*z+5040)*z-30240)*z+151200)*z-604800)*z+1814400)*z-3628800)*z+3628800)/(ez))
  fd=(((((((((((9-z)*z-70)*z+450)*z-2160)*z+5040)*z+30240)*z-453600)*z+3024000)*z-12700800)*z+32659200)*z-39916800)/(ez*z)
  fdd=((((((((((((z-52)*z+448)*z-3320)*z+20160)*z-89280)*z+161280)*z+1572480)*z-19353600)*z+118540800)*z-464486400)*z+1117670400)*z-1277337600)/(ez*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Alpha10-07 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4
  f=(((((((((((z-10)*z+90)*z-720)*z+5040)*z-30240)*z+151200)*z-604800)*z+1814400)*z-3628800)*z+3628800)/(ez*z2*z))
  fd=(((((((((((9-z)*z-70)*z+450)*z-2160)*z+5040)*z+30240)*z-453600)*z+3024000)*z-12700800)*z+32659200)*z-39916800)/(ez*z4)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  fw=(((((((((((w-10)*w+90)*w-720)*w+5040)*w-30240)*w+151200)*w-604800)*w+1814400)*w-3628800)*w+3628800)/(exp(w)*w4*w4*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Alpha10-08 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=sin(((((((((((x-10)*x+90)*x-720)*x+5040)*x-30240)*x+151200)*x-604800)*x+1814400)*x-3628800)*x+3628800)/(exp(x)*x4*x4*x2*x))
  Ty=sin(((((((((((y-10)*y+90)*y-720)*y+5040)*y-30240)*y+151200)*y-604800)*y+1814400)*y-3628800)*y+3628800)/(exp(y)*y4*y4*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Alpha10-09 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((((((((x-10)*x+90)*x-720)*x+5040)*x-30240)*x+151200)*x-604800)*x+1814400)*x-3628800)*x+3628800)/(exp(x)*x4*x4*x2*x))
  Ty=fn1(((((((((((y-10)*y+90)*y-720)*y+5040)*y-30240)*y+151200)*y-604800)*y+1814400)*y-3628800)*y+3628800)/(exp(y)*y4*y4*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Alpha10-10 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1, pp4=pp2*pp2
  fz=(((((((((((p1-10)*p1+90)*p1-720)*p1+5040)*p1-30240)*p1+151200)*p1-604800)*p1+1814400)*p1-3628800)*p1+3628800)/(exp(p1)*pp4*pp4*pp2*p1)):
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=(((((((((((z-10)*z+90)*z-720)*z+5040)*z-30240)*z+151200)*z-604800)*z+1814400)*z-3628800)*z+3628800)/(exp(z)*z4*z4*z2*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Alpha10-11 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  const=p1, z=pixel:
  z2=z*z, z4=z2*z2
  z=const*(((((((((((z-10)*z+90)*z-720)*z+5040)*z-30240)*z+151200)*z-604800)*z+1814400)*z-3628800)*z+3628800)/(exp(z)*z4*z4*z2*z))
  |z|<100
  ;SOURCE: chby11.frm
}


Alpha10-12 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  const=pixel, z=p1:
  z2=z*z, z4=z2*z2
  z=const*(((((((((((z-10)*z+90)*z-720)*z+5040)*z-30240)*z+151200)*z-604800)*z+1814400)*z-3628800)*z+3628800)/(exp(z)*z4*z4*z2*z))
  |z|<100
  ;SOURCE: chby12.frm
}


Alpha10-13 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4*z2*z
  f=(((((((((((z-10)*z+90)*z-720)*z+5040)*z-30240)*z+151200)*z-604800)*z+1814400)*z-3628800)*z+3628800)/(ez))
  fd=(((((((((((9-z)*z-70)*z+450)*z-2160)*z+5040)*z+30240)*z-453600)*z+3024000)*z-12700800)*z+32659200)*z-39916800)/(ez*z)
  fdd=((((((((((((z-52)*z+448)*z-3320)*z+20160)*z-89280)*z+161280)*z+1572480)*z-19353600)*z+118540800)*z-464486400)*z+1117670400)*z-1277337600)/(ez*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Alpha10-14 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4
  f=(((((((((((z-10)*z+90)*z-720)*z+5040)*z-30240)*z+151200)*z-604800)*z+1814400)*z-3628800)*z+3628800)/(ez*z2*z))
  fd=(((((((((((9-z)*z-70)*z+450)*z-2160)*z+5040)*z+30240)*z-453600)*z+3024000)*z-12700800)*z+32659200)*z-39916800)/(ez*z4)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  fw=(((((((((((w-10)*w+90)*w-720)*w+5040)*w-30240)*w+151200)*w-604800)*w+1814400)*w-3628800)*w+3628800)/(exp(w)*w4*w4*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Alpha10-15 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4
  f=(((((((((((z-10)*z+90)*z-720)*z+5040)*z-30240)*z+151200)*z-604800)*z+1814400)*z-3628800)*z+3628800)/(ez*z2*z))
  fd=(((((((((((9-z)*z-70)*z+450)*z-2160)*z+5040)*z+30240)*z-453600)*z+3024000)*z-12700800)*z+32659200)*z-39916800)/(ez*z4)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Alpha10-16 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1, pp4=pp2*pp2
  fz=(((((((((((p1-10)*p1+90)*p1-720)*p1+5040)*p1-30240)*p1+151200)*p1-604800)*p1+1814400)*p1-3628800)*p1+3628800)/(exp(p1)*pp4*pp4*pp2*p1)):
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=(((((((((((z-10)*z+90)*z-720)*z+5040)*z-30240)*z+151200)*z-604800)*z+1814400)*z-3628800)*z+3628800)/(exp(z)*z4*z4*z2*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Alpha10-19 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*(((((((((((x-10)*x+90)*x-720)*x+5040)*x-30240)*x+151200)*x-604800)*x+1814400)*x-3628800)*x+3628800)/(exp(x)*x4*x4*x2*x))
  x=x-t*(((((((((((y-10)*y+90)*y-720)*y+5040)*y-30240)*y+151200)*y-604800)*y+1814400)*y-3628800)*y+3628800)/(exp(y)*y4*y4*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Alpha10-20 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*sin(((((((((((x-10)*x+90)*x-720)*x+5040)*x-30240)*x+151200)*x-604800)*x+1814400)*x-3628800)*x+3628800)/(exp(x)*x4*x4*x2*x))
  x=x-t*sin(((((((((((y-10)*y+90)*y-720)*y+5040)*y-30240)*y+151200)*y-604800)*y+1814400)*y-3628800)*y+3628800)/(exp(y)*y4*y4*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Alpha10-21 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((((((((x-10)*x+90)*x-720)*x+5040)*x-30240)*x+151200)*x-604800)*x+1814400)*x-3628800)*x+3628800)/(exp(x)*x4*x4*x2*x))
  x=x-t*fn1(((((((((((y-10)*y+90)*y-720)*y+5040)*y-30240)*y+151200)*y-604800)*y+1814400)*y-3628800)*y+3628800)/(exp(y)*y4*y4*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Alpha10-22 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((((((((x-10)*x+90)*x-720)*x+5040)*x-30240)*x+151200)*x-604800)*x+1814400)*x-3628800)*x+3628800)/(exp(x)*x4*x4*x2*x))
  Ty=fn2(((((((((((y-10)*y+90)*y-720)*y+5040)*y-30240)*y+151200)*y-604800)*y+1814400)*y-3628800)*y+3628800)/(exp(y)*y4*y4*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Alpha10-23 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((((((((x-10)*x+90)*x-720)*x+5040)*x-30240)*x+151200)*x-604800)*x+1814400)*x-3628800)*x+3628800)/(exp(x)*x4*x4*x2*x))
  Ty=fn2(((((((((((y-10)*y+90)*y-720)*y+5040)*y-30240)*y+151200)*y-604800)*y+1814400)*y-3628800)*y+3628800)/(exp(y)*y4*y4*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Alpha10-24 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((((((((x-10)*x+90)*x-720)*x+5040)*x-30240)*x+151200)*x-604800)*x+1814400)*x-3628800)*x+3628800)/(exp(x)*x4*x4*x2*x))
  x=x-t*fn2(((((((((((y-10)*y+90)*y-720)*y+5040)*y-30240)*y+151200)*y-604800)*y+1814400)*y-3628800)*y+3628800)/(exp(y)*y4*y4*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Alpha10-25 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((((((((x-10)*x+90)*x-720)*x+5040)*x-30240)*x+151200)*x-604800)*x+1814400)*x-3628800)*x+3628800)/(exp(x)*x4*x4*x2*x))
  x=x-t*fn2(((((((((((y-10)*y+90)*y-720)*y+5040)*y-30240)*y+151200)*y-604800)*y+1814400)*y-3628800)*y+3628800)/(exp(y)*y4*y4*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Alpha10-26 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((((((((x-10)*x+90)*x-720)*x+5040)*x-30240)*x+151200)*x-604800)*x+1814400)*x-3628800)*x+3628800)/(exp(x)*x4*x4*x2*x))
  Ty=fn1(((((((((((y-10)*y+90)*y-720)*y+5040)*y-30240)*y+151200)*y-604800)*y+1814400)*y-3628800)*y+3628800)/(exp(y)*y4*y4*y2*y))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Alpha10-27 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1(((((((((((x-10)*x+90)*x-720)*x+5040)*x-30240)*x+151200)*x-604800)*x+1814400)*x-3628800)*x+3628800)/(exp(x)*x4*x4*x2*x))
  Ty=fn1(((((((((((y-10)*y+90)*y-720)*y+5040)*y-30240)*y+151200)*y-604800)*y+1814400)*y-3628800)*y+3628800)/(exp(y)*y4*y4*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Alpha10-28 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1(((((((((((x-10)*x+90)*x-720)*x+5040)*x-30240)*x+151200)*x-604800)*x+1814400)*x-3628800)*x+3628800)/(exp(x)*x4*x4*x2*x))
  Ty=fn1(((((((((((y-10)*y+90)*y-720)*y+5040)*y-30240)*y+151200)*y-604800)*y+1814400)*y-3628800)*y+3628800)/(exp(y)*y4*y4*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Alpha10-29 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((((((((x-10)*x+90)*x-720)*x+5040)*x-30240)*x+151200)*x-604800)*x+1814400)*x-3628800)*x+3628800)/(exp(x)*x4*x4*x2*x))
  Ty=fn1(((((((((((y-10)*y+90)*y-720)*y+5040)*y-30240)*y+151200)*y-604800)*y+1814400)*y-3628800)*y+3628800)/(exp(y)*y4*y4*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Alpha10-30 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=((((((((((x0-10)*x0+90)*x0-720)*x0+5040)*x0-30240)*x0+151200)*x0-604800)*x0+1814400)*x0-3628800)*x0+3628800)/(exp(x0)*x4*x4*xx*x0)
  Fx1=((((((((((x1-10)*x1+90)*x1-720)*x1+5040)*x1-30240)*x1+151200)*x1-604800)*x1+1814400)*x1-3628800)*x1+3628800)/(exp(x1)*y4*y4*yy*x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


alt (xaxis) {
  z=0, c=pixel, k=1:
  z=sqr(z) + c
  c=c+k*p1/z, k=((11-3*k)*k-4)/2
  |z| <= 4
  ;SOURCE: fract001.frm
}


AltJTet (XAXIS) {; Julia form 2 of the Tetration formula --Lee Skinner
  z = P1:
  z = (pixel ^ z) + P1
  |z| <= (P2 + 3)
  ;SOURCE: fractint.frm
}


AltMTet (XAXIS) {; Mandelbrot form 2 of the Tetration formula--Lee Skinner
  z = 0:
  z = (pixel ^ z) + pixel
  |z| <= (P1 + 3)
  ;SOURCE: fractint.frm
}


AltRealSin {; Earl Hinrich, June 1997
            ; Mandelbrot variant
            ; real(z) replaced by sin(real(z))
            ; after z*z+c iteration
  z=c=pixel:
  z=z*z+c
  z=sin(real(z))+flip(imag(z))
  |z|<=64
  ;SOURCE: 97msg.frm
}


AltRealSin1 {; Earl Hinrich, June 1997
             ; Mandelbrot variant
             ; real(z) replaced by sin(real(z))
             ; on alternate iterations
  z=c=pixel:
  z=z*z+c
  z=z*z+c
  z=sin(real(z))+flip(imag(z))
  |z|<=64
  ;SOURCE: 97msg.frm
}


AltRealSin2 {; Ray Girvan, June 1997
             ; Mandelbrot variant
             ; real(z) replaced by sin(real(z))
             ; on alternate iterations
  z=c=pixel:
  z=z*z+c
  z=z*z+c
  z=sin(real(z))+flip(imag(z))
  |z|<=64
  ;SOURCE: 0from_ml.frm
}


AltRealSin3 {; Earl Hinrich, June 1997
             ; Mandelbrot variant
             ; real(z) replaced by sin(real(z))
             ; on alternate iterations
  z=c=pixel
  t=1:
  z=z*z+c
  a=(t+1)/2
  b=1-a
  t=-t
  z=a*real(z)+b*sin(real(z))+flip(imag(z))
  |z|<=64
  ;SOURCE: 97msg.frm
}


Altura {
  z = pixel, sqpx = sqr(pixel), snpx = sin(pixel):
  z = z * (sqpx / snpx) + p1
  z = fn1(z) + pixel
  z < 4
  ;SOURCE: altura.frm
}


ALX1 {; Originally named "j1", but changed because of a name conflict
      ; Image "040" in ad2.par refers to this formula.
  z=pixel:
  z=fn1(z-(log(1/z-1)*(|z|>((z-1)*p1))))*fn2(1/((1/z-1)*(z*((z-1)*p2))))
  |z|>=4
  ;SOURCE: new.frm
}


AMandel {
  z=pixel, c=p1:
  z=sqr(z+c)
  |z|<4
  ;SOURCE: orman2.frm
}


AMINO_1 {
  z = pixel:
  z = z * fn1(z) + pixel
  z = z + p1
  z = z + pixel
  z = z * z + c / z   
  |z| <= 4
  ;SOURCE: damion.frm
}


AMINO_2 {
  z = pixel :
  z = z * (pixel + (p1 + sin(p1)))
  z = pixel + z
  z = fn1(z) * Z + sin(z)
  |z| <= 32
  ;SOURCE: damion.frm
}


AMINO_3 {
  z = pixel:
  z = z*z*z/pixel + p1
  z = rand * z  +  z
  z = fn1(z) 
  |z| <= 64
  ;SOURCE: damion.frm
}


AMINO_4 {
  z = pixel:
  z = (|Z| + z) * z + p1
  z = fn1(z) + z + pixel
  ;SOURCE: damion.frm
}


AMINO_5 {
  z = pixel:
  z = (|Z| - z) + z * z + p1 
  z = fn1(z) - fn2(z)
  z = pixel + sqrt(z)
  |z| < 4
  ;SOURCE: damion.frm
}


AMINO_6 {
  z = pixel :
  z = z + pixel
  z = fn1(z + z) + pixel
  z = sqrt(z * z) 
  ;SOURCE: damion.frm
}


AMINO_7 (XAXIS) {
  z = pixel :
  z = z + c / sqrt(2)
  z = sin(cos(z) + z) + (z + c)  
  z = fn1(z) + pixel
  ;SOURCE: damion.frm
}


an6 {
  z=pixel:
  z=((fn1(z)^p1)/fn2(abs(z+p2))*fn2(z)+c)
  |z|<4
  ;SOURCE: ad1.frm
}


an7 {; Revised 4/27/96 to eliminate superfluous "+c"
     ; Original version of this formula may be discarded
  z=pixel:
  z=fn1((z^z)*fn3(z*z)/p1)/fn2(imag(z+p2))
  |z|<4
  ;SOURCE: new.frm
}


Anacron (XAXIS) {
  z = pixel:
  z = z*z + fn1(z) + pixel
  z = fn1(sqr(z))
  |z| < 4
  ;SOURCE: omicron.frm
}


Anacron_2 (XAXIS) {
  z = pixel :
  z = (z/2*z) + fn1(z) + pixel
  z = fn1(z) - sqrt(z) 
  |z| < 4
  ;SOURCE: omicron.frm
}


andy01 {
  z = c = pixel:
  z = z^sqr(p1^2 + p2^2) + c
  ;SOURCE: andy_1.frm
}


andy02 {
  z = c = pixel/4:
  z = z + c*z + p1
  z = z = 1/(c*z + 1)^3 + p2
  |z| <= 100
  ;SOURCE: andy_1.frm
}


andy03 {
  z = c = pixel/4:
  z = p1*z + c
  z = p2*z^3 + c
  z = c + c/2 + z
  ;SOURCE: andy_1.frm
}


andy04 {
  z = c = pixel + 1:
  z = z + p1 * sqr(c^3) + p1
  z = z + (p2 + fn1(c + p1))
  |z| <= 256
  ;SOURCE: andy_1.frm
}


andy05 {
  z = c = pixel:
  z = fn1(z + c) + fn2(z + c)
  z = z * p1 + c * p2
  ;SOURCE: andy_1.frm
}


andy06 {
  z = c = pixel:
  z = c + fn1(p1 + z) / fn2(p2 * z + c)
  z = z + 1
  ;SOURCE: andy_1.frm
}


andy07 { 
  bailout = 40
  z = c = pixel:
  z = p1 + fn1(c) / fn1(z + c) + p2 + fn2(c) / fn2(z + c)
  z = z + c
  |z| <= 4
  ;SOURCE: andy_1.frm
}


andy08 {
  bailout = 40
  z = c = pixel:
  z = p1 * sin(z*z + c) / p2*(z*z + c) + p1 + c
  z = z + p1 * fn1(z)
  |z| <= 4
  ;SOURCE: andy_1.frm
}


andy09 {
  bailout = 10
  z = c * p1
  z = pixel:
  z = fn1(z) + p2 * c
  ;SOURCE: andy_1.frm
}


andy10 {
  z = c = pixel:
  a = srand(p1) + p1
  b = srand(p2) + p2
  z = c + a/b
  z = p1 * p2 * fn1(z + c) + 1
  |z| <= 4
  ;SOURCE: andy_1.frm
}


Andy100 {
  z = c = pixel^real(p1):
  z = fn1((z + c)^2 - p1)
  z = p2 / (z + c)
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy101 {
  z = c = p1 * pixel^real(p1):
  z = p2 * z^c + fn1(p2)
  |z| < 16
  ;SOURCE: andy_2.frm
}


Andy102 {
  z = c = pixel^real(p1):
  a = 1 - c, b = 1 + c
  z = a * z / fn1(p1) + b * z / fn2(p2)
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy103 {
  z = c = pixel^real(p1):
  z = 1 / (z * p1 - c * p2)
  z = c + fn1(z)
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy104 {
  z = c = pixel^4 * real(p1):
  z = c^2 - p2
  z = fn1(c) + z
  |z| <= 4
  ;SOURCE: andy_2.frm
}


Andy105 {; Edited for Fractint v. 20 by George Martin, 10/98
  z = c = pixel^real(p1):
  z = p1 * c + fn1(z / p2)
  z = p2 * c + fn2(z / p1)
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy106 {
  z = pixel^real(p1):
  z = p1 * z + fn1(c / p2)
  z = p2 * z + fn2(z / p1)
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy107 {
  z = pixel^real(p1):
  z = c + z + fn1(c / p1)
  z = c + z + fn2(z / p2)
  |z| <= 64
  ;SOURCE: andy_2.frm
}


Andy108 {
  z = pixel^real(p1):
  z = c^2 + z + fn1(c / p1)
  z = z^2 + c + fn2(z / p2)
  |z| <= 64
  ;SOURCE: andy_2.frm
}


Andy109 {
  z = c = pixel^real(p1):
  z = c^3 + fn1(c / p1)
  z = z^3 + fn2(z / p2)
  |z| <= 16
  ;SOURCE: andy_2.frm
}


andy11 {
  z = z + c, c = pixel^3:
  a = p1 * z
  b = p2 * c
  z = (a + b)^1/3
  |z| <= 4
  ;SOURCE: andy_1.frm
}


Andy110 {
  z = c = pixel^real(p1):
  z = c * p1 + fn1(z / p2)
  z = z * p1 + fn2(z / p3)
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy111 {
  z = c = pixel^real(p1):
  z = c * p1 + fn1(z + p2)
  z = z * p2 + fn1(z + p1)
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy112 {
  z = c = pixel^(2 * real(p1)):
  z = p1 * cos(z) + p2 * fn1(c + z)
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy113 {
  z = c = pixel^(4 * real(p1)):
  z = p1 * fn1(z) + p2 * fn2(c + z)
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy114 {
  z = c = pixel^(real(p1) + 1.5):
  z = c * fn1(p1) + z * fn2(p2) + c * z
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy115 {
  z = c = pixel^real(p1):
  z = fn1(z) + imag(p1)
  z = fn2(z) + p2
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy116 {
  z = c = pixel^(-real(p1)):
  z = 1/fn1(z) + 1/p1
  z = fn2(1/z) + 1/p2
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy117 {
  z = c = pixel^real(p1) + p1:
  z = fn1(z) + c * p2 + fn2(c + z)
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy118 {; Revised for Fractint v. 20.0 by George Martin
         ; Originally, first line was
         ; z = c^3 = pixel^real(p1):
  z = c = pixel^real(p1):
  z = z^2 - p2 * c
  z = fn1(z) - 1
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy119 {; Revised for Fractint v. 20.0 by George Martin
         ; Originally, first line was
         ; z = c^5 = pixel^real(p1):
  z = pixel^real(p1):
  z = fn1(z / p1^2) + fn2(z^2 * p2)
  |z| <= 16
  ;SOURCE: andy_2.frm
}


andy12 {
  z = z + c, c = pixel^2:
  a = p1 * z
  b = p2 * c
  z = (a + b)^(1/7)
  |z| <= 7
  ;SOURCE: andy_1.frm
}


Andy120 {; Revised for Fractint v. 20.0 by George Martin
         ; Originally, first line was
         ; z = c^(1/2) = pixel^real(p1):
  z = c = pixel^real(p1):
  z = fn1(z + c) + p1
  z = fn2(z - c) + p2
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy121 {
  z = c = pixel^real(p1) + p1:
  z = fn1(c) + z
  z = fn1(z) + c
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy122 {
  z = c = pixel^real(p1):
  z = c^(p1 / p2) + fn1(p1 - p2)
  z = z^(1/c)
  |z| <= 4
  ;SOURCE: andy_2.frm
}


Andy123 {
  z = c = pixel^real(p1):
  z = fn1(p1 + z) + c / p1
  |z| <= p1 + p2 + 4
  ;SOURCE: andy_2.frm
}


Andy124 {
  z = c = pixel^real(p1):
  z = fn1(z^p1) + fn2(c^p2)
  |z| <= 32
  ;SOURCE: andy_2.frm
}


Andy125 {
  z = c = pixel^real(p1):
  z = fn1(z)/(z + c) + fn2(c)/(z + c)
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy126 {; Revised for Fractint v. 20.0 by George Martin
         ; Originally, first line was
         ; z = c/2 = pixel^real(p1):
  z = c = pixel^real(p1):
  z = fn1(c^2 - z) + p2
  z = fn2(z^2 - c) + p1
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy127 {; Revised for Fractint v. 20.0 by George Martin
         ; Originally, first line was
         ; z = c/3 = pixel^real(p1):
  z = c = pixel^real(p1):
  z = fn1(c^3 - z) + p2
  z = fn2(z^3 - c) + p1
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy128 {
  z = c = pixel^real(p1):
  z = fn1(c^4 - z) + p2
  z = fn2(z^4 - c) + p1
  |z| <= 16
  ;SOURCE: andy_2.frm
}


andy13 { 
  z = z + c, c = pixel^(p1 + p2):
  a = p1 * z + fn1(p1)
  b = p1 * c + fn2(p2)
  z = p1 + p2 + a * b + c
  |z| <= 10
  ;SOURCE: andy_1.frm
}


andy14 {
  z = z + c, c = pixel^p1:
  a = c * p1
  b = c * p2 + flip(p2)
  z = c + p1 + p2 + (a + b)^1/5
  |z| <= 4
  ;SOURCE: andy_1.frm
}


andy15 {
  z = z + c * p1, c = pixel^5:
  a = sinh(z + p1) + cosh(p1)
  b = cosh(c+p2) + sinh(p2)
  z = p1 + p2 + (a / b)^1/7
  |z| <= 7
  ;SOURCE: andy_1.frm
}


andy16 {
  z = p1^(1/4), c = (pixel + p2)^(-1/2):
  a = fn1(c + p1) + c + p1
  b = a^3 + p2^3
  z = p1 * fn2(a + b) + p1 * c
  |z| <= 6
  ;SOURCE: andy_1.frm
}


andy17 {
  z = (p1)^(p1 - 1), c = pixel * p2:
  z = fn1(z + c)
  z = z + c
  |z| <= 10
  ;SOURCE: andy_1.frm
}


andy18 {
  bailout = 150
  c = pixel^3 / 3, z = c + p1:
  z = z * (fn1(p1) + fn2(p2 + c))
  |z| >= 64
  ;SOURCE: andy_1.frm
}


andy19 {
  bailout = 150,
  c = pixel^4 / 4, z = c + p1:
  z = z * (fn1(p1 + c) + fn2(p2 + c))
  |z| <= 64
  ;SOURCE: andy_1.frm
}


andy20 {
  bailout = 150
  c = pixel^5, z = p1 * (c + 1):
  z = z * (fn1(p1 + c) + fn2(p2 + c))
  |z| <= 64
  ;SOURCE: andy_1.frm
}


andy21 {
  Bailout = 200
  c = pixel^7, z = p1 *  (c + 1):
  z = z * (fn1(p1 + c) + fn2(p2 + c))
  |z| <= 64
  ;SOURCE: andy_1.frm
}


andy22 {
  bailout = 200
  c = pixel^6, z = p1 * (c + 1):
  z = z * (fn1(p1 + c) - fn2(p2 + c))
  |z| <= 64
  ;SOURCE: andy_1.frm
}


andy23 {
  c = pixel^(-6), z = p1 * (c + 1):
  z = z * (fn1(p1 + c) + fn2(p2 + c))
  |z| <= 64
  ;SOURCE: andy_1.frm
}


andy24 {
  bailout = 200
  c = pixel^2, z = p1 * (c + 1):
  z = z * (fn1(p1 + c) + fn2(p2 + c))
  |z| <= 64
  ;SOURCE: andy_1.frm
}


andy25 {
  bailout = 200
  c = pixel^real(p1), z = p1 * (c + 1):
  z = z * (fn1(p1 + c) + fn2(p2 + c))
  |z| <= 128
  ;SOURCE: andy_1.frm
}


andy26 {
  bailout = 200
  c = pixel^p1, z = p1 * (c + 1):
  z = z * (fn1(p1 + c) + fn2(p2 + c))
  |z| <= 32
  ;SOURCE: andy_1.frm
}


andy27 {
  c = pixel^(p1 + p2 + 1), z = p1 * (c + 1):
  z = z * (fn1(p1 + c) + fn2(p2 + c))
  |z| <= 128
  ;SOURCE: andy_1.frm
}


andy28 {
  bailout = 200
  c = pixel^(p1 + p2), z = c + 1:
  z = z * (fn1(p1 + c) + fn2(p2 + c))
  |z| <= 128
  ;SOURCE: andy_1.frm
}


andy29 {
  bailout = 200
  c = pixel^(p1 - p2), z = c + 1:
  z = z * (fn1(p1 + c) + fn2(p2 + c))
  |z| <= 128
  ;SOURCE: andy_1.frm
}


andy30 {
  bailout = 200
  c = pixel^(p1 + p2), z = (c + p1)^p1:
  z = z * (fn1(p1 + c) + fn2(p2 + c))
  |z| <= 128
  ;SOURCE: andy_1.frm
}


andy31 {
  bailout = 200
  c = pixel^(-1)/(p1 + p2), z = (c + p1)^p1:
  z = z^(fn1(p1 + c) + fn2(p2 + c))
  |z| <= 128
  ;SOURCE: andy_1.frm
}


andy32 {
  bailout = 150
  c = pixel^1/(p1 + p2), z = (c + p1)^p1:
  z = z * fn1(p1 + c) + fn2(p2 + c)
  |z| <= 128
  ;SOURCE: andy_1.frm
}


andy33 {
  bailout = 100
  c = fn1(pixel)^p1, z = c * p1 + p2:
  z = fn1(p1 + c) + fn2(p2 + c)
  |z| <= 128
  ;SOURCE: andy_1.frm
}


andy34 {
  bailout = 200
  z = c = pixel^p1:
  z = z^2 + c + p2
  z = z * (fn1(p1) + fn2(p2))
  |z| <= 128
  ;SOURCE: andy_1.frm
}


andy35 {
  bailout = 200
  c = pixel, z = c^p1 + 1:
  z = z * (p1 + 1) + fn1(p2)
  |z| <= 128
  ;SOURCE: andy_1.frm
}


andy36 {
  bailout = 200
  z = c = pixel, p1 = (1,0):
  z = p1 * z^2 + p2
  |z| <= 128
  ;SOURCE: andy_1.frm
}


andy37 {
  bailout = 200
  z = c = pixel, p1 = (1,0):
  z = z^3 + p1 * c * z^2 + p2 * z * c^2 + c^3
  |z| <= 128
  ;SOURCE: andy_1.frm
}


andy38 { 
  bailout = 200
  z = c = pixel, p1 = (1,0):
  z = fn1(z^2/p1^2 + c^2/p2^2)
  |z| <= 100
  ;SOURCE: andy_1.frm
}


andy39 {
  bailout = 200
  z = c = pixel, p1 = (1,0):
  z = fn1(z^p1 +  c^p2)
  |z| <= 100
  ;SOURCE: andy_1.frm
}


andy40 {
  bailout = 200
  z = c = pixel, p1 = (1,0):
  z = fn1(z^p1) + fn2(c^p2)
  |z| <= 100
  ;SOURCE: andy_1.frm
}


andy41 {
  bailout = 200
  z = c = pixel + p1:
  z = z - 1 + c^(p2 * z)
  z = fn1(z + p2)
  |z| <= 200
  ;SOURCE: andy_1.frm
}


andy42 {
  bailout = 200
  z = c = pixel + p1:
  z = z + 1 + z^(p2 * c)
  z = fn1(z + p2)
  |z| <= 200
  ;SOURCE: andy_1.frm
}


andy43 {; Revised for Fractint v. 20.0 by George Martin
        ; Originally, second line was
        ; z = fn1(c) = pixel + p1:
  bailout = 200
  z = c = pixel + p1:
  z = z^(p2 * c) + c
  z = fn2(z + p2)
  |z| <= 256
  ;SOURCE: andy_1.frm
}


andy44 {; Revised for Fractint v. 20.0 by George Martin
        ; Originally, second line was
        ; z = c^p2 = pixel + p1:
  bailout = 200
  z = c = pixel + p1:
  z = z + z^(p2 * c) + c
  z = fn1(z + c) + fn2(z + p2)
  |z| <= 256
  ;SOURCE: andy_1.frm
}


andy45 {; Revised for Fractint v. 20.0 by George Martin
        ; Originally, second line was
        ; z = c^(2 * p1) = pixel + p2:
  bailout = 200
  z = c = pixel + p2:
  z = z + z^c + c
  z = fn1(z + c) + fn2(z + p1)
  |z| <= 256
  ;SOURCE: andy_1.frm
}


andy46 {; Revised for Fractint v. 20.0 by George Martin
        ; Originally, second line was
        ; z = c^(-z) = pixel + p1:
  bailout = 200
  z = c = pixel + p1:
  z = fn1(z + p2) + p1
  |z| <= 256
  ;SOURCE: andy_1.frm
}


andy47 {; Revised for Fractint v. 20.0 by George Martin
        ; Originally, second line was
        ; z = c^fn1(real(p1)) = pixel:
  bailout = 200
  z = c = pixel:
  z = fn1(p1^(z + c)) + p2^c
  |z| <= 256
  ;SOURCE: andy_1.frm
}


andy48 {; Revised for Fractint v. 20.0 by George Martin
        ; Originally, second line was
        ; z = z^fn1(imag(p1) + p1) = pixel:
  bailout = 200
  z = pixel:
  z = fn2(p1^(z + c)) + p2
  |z| <= 256
  ;SOURCE: andy_1.frm
}


andy49 {
  bailout = 200
  z = c = 1/pixel:
  z = z^sqr(z) + p1 * fn1(z) + p2 * fn2(c)
  |z| <= 256
  ;SOURCE: andy_1.frm
}


andy50 {
  bailout = 200
  z = c = 1/pixel^2:
  z = z^sqr(z) + p1 * fn1(z) + p2 * fn2(c)
  |z| <= 256
  ;SOURCE: andy_1.frm
}


andy51 {
  bailout = 200
  z = c = pixel^5:
  z = z^fn1(p1) + p1^c + p2^z
  |z| <= 256
  ;SOURCE: andy_1.frm
}


andy52 {
  bailout = 200
  z = c = 1/pixel^6:
  z = fn1(z^c) + fn1(p1)  + fn2(c^z) + fn2(p2)
  |z| <= 256
  ;SOURCE: andy_1.frm
}


andy53 {
  bailout = 200
  a = p1  + p2
  z = c = pixel^a:
  z = fn1(z^c) + fn2(c^z)
  |z| <= 256
  ;SOURCE: andy_1.frm
}


andy54 {
  bailout = 200
  a = p1 * p2 / (p1 + p2)
  z = c = pixel^a:
  z = fn1(z^c) + fn2(c^z)
  |z| <= 256
  ;SOURCE: andy_1.frm
}


andy55 {
  bailout = 200
  a = p1 * p2
  z = c = 1 / pixel^a:
  z = fn1(z^c) + fn2(c^z)
  |z| <= 256
  ;SOURCE: andy_1.frm
}


andy56 {
  bailout = 200
  z = c = pixel^4 + p1:
  a = z + p2
  b = z + p3
  z = p3 * fn1(a * z) + p2 * fn2(a / z)
  |z| <= 256
  ;SOURCE: andy_1.frm
}


andy57 {
  bailout = 200
  z = c + pixel^6 + p1:
  a = z^p2
  b = z^p3
  z = p3 * fn1(a * z) + p2 * fn2(a / z)
  |z| <= 128
  ;SOURCE: andy_1.frm
}


andy58 {
  bailout = 200
  z = c = (pixel^(real(p1)) + p1) / 4:
  a = z^p2 + c
  b = z^p3 + c
  z = p3 * fn1(a * c) + p2 * fn2(a / c)
  |z| <= 256
  ;SOURCE: andy_1.frm
}


andy59 {
  bailout = 200
  z = c = (pixel^(1 / (real(p1)) + p1)) / 4:
  a = z^p2 + c
  b = z^p3 + c
  z = p3 * fn1(a * c) + p2 * fn2(b * c)
  |z| <= 256
  ;SOURCE: andy_1.frm
}


andy60 {
  bailout = 200
  z = c = pixel^(p1 - 1) + p1:
  z = (p1 + c) * (fn1(p2 + c) + fn2(p3 + c))
  |z| <= 256
  ;SOURCE: andy_1.frm
}


andy61 {
  bailout = 200
  z = c = pixel 
  a =  1 + 1 / c
  z = c + a:
  z = p1 * fn1(p1 + a) + p2 * fn2(p2 + a)
  |z| <= 100
  ;SOURCE: andy_1.frm
}


andy62 {; Revised for Fractint v. 20.0 by George Martin
        ; Originally, second line was
        ; z = z^real(p1) = pixel:
  bailout = 200
  z = pixel:
  z = real(p2) + 1 / z
  z = fn1(z) + fn2(p1) + fn3(p3)
  |z| <= 4
  ;SOURCE: andy_1.frm
}


andy63 {; Revised for Fractint v. 20.0 by George Martin
        ; Originally, second line was
        ; z = z^imag(p1) = pixel:
  bailout = 200
  z = pixel:
  z = p2 + 1 / z
  z = fn1(z) + fn2(p1) + fn3(p3)
  |z| <= 10
  ;SOURCE: andy_1.frm
}


andy64 {; Revised for Fractint v. 20.0 by George Martin
        ; Originally, second line was
        ; z = c^p1 = pixel:
  bailout = 200
  z = c = pixel:
  z = p2 + 1 / z^4
  z = fn1(z) + fn2(p1) + fn3(p3)
  |z| <= 200
  ;SOURCE: andy_1.frm
}


Andy65 {
  z = c = pixel^(real(p1)):
  z = fn1(z + p2) - p1
  z = z * p2 + c
  |z| <= 40
  ;SOURCE: andy_2.frm
}


Andy66 {
  z = c = pixel^(real(p1)):
  z = c * (1 - cos(z * p2))
  z = z / c
  |z| <= 100
  ;SOURCE: andy_2.frm
}


Andy67 {
  z = c = pixel^(real(p1) + real(p2)):
  z = z^(1 - cos(z))^p2
  z = (z + 1)/(z - 1)
  |z| <= 40
  ;SOURCE: andy_2.frm
}


Andy68 {; Revised for Fractint v. 20.0 by George Martin
        ; Originally, first line was
        ; z = c^2 = pixel^(real(p1) - real(p2)):
  z = c = pixel^(real(p1) - real(p2)):
  z = sinh(z + c)/sin(z - c)
  |z| <= 40
  ;SOURCE: andy_2.frm
}


Andy69 {
  z = c = pixel^(real(p1) - real(p2)):
  z = sinh(z + c)/fn1(z - c)
  |z| <= 40
  ;SOURCE: andy_2.frm
}


Andy70 {
  z = c = pixel^(real(p1) - real(p2)):
  z = fn1(z + c)/fn1(z - c)
  |z| <= 40
  ;SOURCE: andy_2.frm
}


Andy71 {
  z = c = pixel^real(fn1(p1)):
  z = z - p2/c
  |z| <= 4
  ;SOURCE: andy_2.frm
}


Andy72 {
  z = c = pixel^fn1(p1):
  z = z - c/z^c
  |z| <= 40     
  ;SOURCE: andy_2.frm
}


Andy73 {
  z = c = pixel^real(p1)/real(p2):
  z = fn1(z + c)/fn2(z - c)
  |z| <= 10
  ;SOURCE: andy_2.frm
}


Andy74 {
  z = c = pixel^3*real(p1):
  z = fn1(z + c) + fn2(z - c)
  |z| <= 10
  ;SOURCE: andy_2.frm
}


Andy75 {
  z = c = pixel^(.5 * real(p1)):
  z = fn1(z + c^2) + fn2(z - c^2)
  |z| <= 10
  ;SOURCE: andy_2.frm
}


Andy76 {
  z = c = pixel^real(p1):
  z = sinh(fn1(z + c^2)) + cosh(fn2(z - c^2))
  |z| <= 10
  ;SOURCE: andy_2.frm
}


Andy77 {
  z = c = pixel^(real(p1)/imag(p2)):
  z = exp(z + c)
  z = fn1(z-c)
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy78 {
  z = c = pixel^(-real(p1)-real(p2)):
  z = z * (1 - cos(z))
  z = z + c
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy79 {
  z = c = pixel^.5 * (real(p1) - real(p2)):
  z = fn1(z + c) + fn2(z - c)
  |z| <= 32
  ;SOURCE: andy_2.frm
}


Andy80 {
  z = c = pixel^2 * (real(p1) - real(p2)):
  z = fn1(z + c) + c
  z = fn2(z - c) - c
  |z| <= 32
  ;SOURCE: andy_2.frm
}


Andy81 {
  z = c = pixel^(4 * real(p1)):
  z = (1 + fn1(z + c))/(1 - fn2(z - c))
  z = z + c
  |z| <= 4
  ;SOURCE: andy_2.frm
}


Andy82 {
  z = c = pixel^(2 * real(p1)/real(p2)):
  z = fn1(p1 + c) - fn2(p2 - c)
  |z| <= 4
  ;SOURCE: andy_2.frm
}


Andy83 {
  z = c = pixel^(real(p1) - real(p2)):
  z = fn1(c + p1) + fn2(z - p2)
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy84 {
  z = c = pixel^(4 * real(1 - cos(p1))):
  z = fn1(c + p1)
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy85 {
  z = c = pixel^(4 * real(p1)) + p1:
  z = fn1(1/c) + p2
  |z| <= 10
  ;SOURCE: andy_2.frm
}


Andy86 {
  z = c = pixel^(real(p1) + 2 * real(p2)):
  z = fn1(z / c) + p1
  |z| <= 10 * p2
  ;SOURCE: andy_2.frm
}


Andy87 {
  z = c = pixel^real(p1):
  z = fn1(z - c)
  z = fn2(z - c) / fn3(z + c)
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy88 {
  z = c = pixel^(real(p1) + real(p2)):
  z = fn1(z - c) / fn3(z + c)
  z = fn2(z - c) / fn3(z + c)
  |z| <= 4
  ;SOURCE: andy_2.frm
}


Andy89 {
  z = c = pixel^real(p1):
  z = c + p2 + z
  z = fn1(z) / fn2(c)
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy90 {
  z = c = pixel^real(p1):
  z = z + c / z
  z = fn1(z + p2) / c * p1
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy91 {
  z = c = pixel^real(p1):
  z = z * c + fn1(p2) / (fn2(p2) - fn1(p1))
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy92 {
  z = c = pixel^real(p1):
  z = p1 * c / z + p2 * z / c
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy93 {
  z = c = pixel^(real(p1) + real(p2)):
  z =fn1(p1 * c / (z + c) + p2 * z / (z + c))
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy94 {
  z = c = pixel^real(p1):
  z = fn1(p2 / z) + fn2(p2 / c)
  |z| <= 4
  ;SOURCE: andy_2.frm
}


Andy95 {
  z = c = pixel^(1 / real(p1)):
  z = fn1(p2 / z) + fn2(p1 / c)^2
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy96 {
  z = c = pixel^(real(p1)+1):
  z = 1 - fn1(c * z) + p1
  z = z + fn2(p2/c)
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy97 {
  z = c = fn1(pixel^real(p1)):
  z = c * p2 + z * p1
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy98 {
  z = c = pixel^real(p1):
  z = p1 / (z + c)
  z = p2 * fn1(p1 / (z + c))
  |z| <= 16
  ;SOURCE: andy_2.frm
}


Andy99 {
  z = c = pixel^real(p1 + p2):
  z = z * cosh(p1) - c
  z = fn1(z - c)
  |z| <= 16
  ;SOURCE: andy_2.frm
}


AnotherTwoIkes {; Ron Barnett [70153,1233], 1996   Requires passes=1
   ; p3 will shift the two ikenaga sets wrt to each other
   ; Ron Barnett, 1996
  z =whitesq*((1-pixel)/p1)^(1/(p1-1))\
     +(whitesq==0)*((1-pixel-p3*(whitesq==0))/p2)^(1/(p2-1)):
  z=whitesq*(z^p1+(pixel-1)*z-pixel)+(whitesq==0)*(z^p2+(pixel-1)*z-pixel) 
  |z|<=4
  ;SOURCE: phc.frm
}


antizerr-xw {; 1997 by Benno Schmid
  z=sqrt(real(pixel))+flip(real(p1))
  c=flip(imag(pixel))+imag(p1):
  z=sqr(z)+c
  |z| <= 16
  ;SOURCE: 4d.frm
}


antizerr-xz {; 1997 by Benno Schmid
  z=sqrt(real(pixel))+flip(real(p1))
  c=imag(pixel)+flip(imag(p1)):
  z=sqr(z)+c
  |z| <= 32
  ;SOURCE: 4d.frm
}


antizerr-yw {; 1997 by Benno Schmid
  z=flip(sqrt(real(pixel)))+real(p1)
  c=flip(imag(pixel))+imag(p1):
  z=sqr(z)+c
  |z| <= 16
  ;SOURCE: 4d.frm
}


antizerr-yz {; 1997 by Benno Schmid
   z=flip(sqrt(real(pixel)))+real(p1)
   c=imag(pixel)+flip(imag(p1)):
   z=sqr(z)+c
   |z| <= 32
  ;SOURCE: 4d.frm
}


ao6 {; Revised 4/27/96 to eliminate superfluous "+c"
     ; Original version of this formula may be discarded
  z=pixel:
  z=fn1(z-1)^fn3(p2)+p1 
  |z|>4
  ;SOURCE: new.frm
}


ap1 {
  z=pixel, x=(z+p1)/fn3(z), y=(z+p2)*fn4(z):
  z=fn1(1/z+p1)*fn2(z+p2)
  |z|>4
  ;SOURCE: ad1_miss.frm
}


apflmatsch { 
  z=pixel:
  z=sqr(z)+pixel
  |z*fn1(p1*fn2(p2*pixel/|pixel|))| <= 4 
  ;SOURCE: test.frm
}


arab_writing {; Giuseppe Zito
  z = pixel
  C0 = 0.283016
  C2 =  - 0.461109
  C4 = 0.882155
  CC4 = -0.981583
  C7 = -0.463146
  A = C0/C4
  B =  C2/C4
  C = -CC4
  D = C7:
  x = real(z), y = imag(z)
  newx = A*x*y*y + B*x*y -y
  newy = C*x + x*x +D
  z = newx + flip(newy)
  newx < 4 && newy < 4 && newx > -4 && newy > -4
  ;SOURCE: zg.frm
}


as2 {; Revised 4/27/96 to eliminate superfluous "+c"
     ; Original version of this formula may be discarded
  z=pixel:
  z=(tan(z-(log(z-1)))*2.3453)/fn1(z+p1)+fn2(z+p2)
  |z-1|<4
  ;SOURCE: new.frm
}


as8 {
  z=pixel, x=i-pixel, y=pixel/z-p1:
  z=fn1(pixel*fn2(pixel^log(z+x)))/fn3(fn4(z*y))+c
  |z|<50
  ;SOURCE: ad1.frm
}


Astral {
  z = c = pixel: 
  r = round(fn1(z) + p1)
  z = (r*1/z)^fn2(c)  
  |z| < 4
  ;SOURCE: astral.frm
}


Astral_2 {
  z = c = pixel: 
  r = fn1(round(z) + p1)
  z = (r*1/z)^fn2(c)  
  |z| < 4
  ;SOURCE: astral.frm
}


astroid {; Kerry Mitchell 14nov98
         ;
         ; Kerry Mitchell's explanation of his "Astroid" formulas is
         ; at the end of this formula
         ;
         ; draws a astroid:  x^n + y^n = a^n
         ;
         ; real(p1) = coloring flag:
         ;   1 to color by nearness to curve
         ;   2 to color by inside/outside
         ; imag(p1) = rotation angle
         ; real(p2) = a = size
         ; imag(p2) = n = exponent
         ; p3 = astroid center
         ;
         ; use decomp=256, float=yes, periodicity=no
         ;
  zc=pixel, done=1, colflag=real(p1)
  a=real(p2), n=imag(p2), aton=a^n
  center=p3, rot=imag(p1)/180*pi, rot=exp(flip(rot))
  :
  temp=rot*(zc-center)
  x=cabs(real(temp)), y=cabs(imag(temp))
  err=x^n+y^n-aton
  IF (colflag==1)
    t=log(cabs(err))
  ELSE
    IF (err<0)
      t=1
    ELSE
      t=0
    ENDIF
  ENDIF
  z=cos(t)+flip(sin(t))
  done==0
;*****Kerry Mitchell's explanation of his "Astroid" formulas*****
;
;            copyright Kerry Mitchell 14nov98
;
;    Related formulas:
;         astroid (above)
;         astroid-near_man
;         astroid-near_jul
;         astroid-inout_man
;         astroid-inout_jul
;
;
; Astroid
;
; The astroid is a figure from analytic geometry, resembling a four-
; pointed star with concave sides.  Its defining equation is:
;
; x^(2/3) + y^(2/3) = a^(2/3)
;
; where a determines the size of the figure, similar to the radius of
; a circle.  This equation can be generalized by changing the exponent
; of 2/3 to any value n.  If n is between 0 and 1, the figure resembles
; the standard astroid.  The sides go from being straight lines for n=1
; to lying atop of the coordinates axes as n approaches 0.  For n>1, the
; figure becomes convex, and is a circle for n=2.  As n approaches
; infinity, the figure approaches a square.
;
; This generalized astroid is the basis of this coloring scheme.  As with
; other plane figures, the astroid can be compared to the Mandelbrot and
; Julia orbits.  In the "astroid-near_man" and "astroid-near_jul" formulas,
; the fractal is colored according to the closest approach of the orbit
; to the figure.  The "astroid-inout_man" and "astroid-inout_jul" figures
; color by how often the orbit lands inside the astroid.
;
; The shape of the astroid can be altered through the exponent n, and its
; size changed through the use of a.  In addition, its orientation and
; location in the plane are determined by a "center" and "rotation"
; parameters.  The effects of all these parameters can be investigated
; using the basic "astroid" formula.  Here, the coloring flag allows 2
; ways of viewing the astroid:  in outline (colflag=1) and by coloring
; the inside vs. the outside (colflag=2).
;************************************************************************
  ;SOURCE: 98msg.frm
}


astroid-inout_jul {; Kerry Mitchell 14nov98
        ;
        ; Kerry Mitchell's explanation of his "Astroid" formulas is
        ; at the end of formula "Astroid"
        ;
        ; colors Julia set by how often orbit is inside
        ; a astroid:  x^n + y^n = a^n
        ;
        ; p1 = c = Julia parameter
        ; real(p2) = a = size
        ; imag(p2) = n = exponent
        ; p3 = center of astroid
        ; bailout = 1000 (hardcoded)
        ; rotation angle, degrees = 0 (hardcoded)
        ;
        ; colors inside & outside points the same way
        ; use decomp=256, float=yes, periodicity=no
        ;
  zc=pixel, c=p1, iter=1, done=0
  bailout=1000, incount=0, speed=2*pi
  a=real(p2), n=imag(p2), aton=a^n
  center=p3, rot=0/180*pi, rot=exp(flip(rot))
  :
        ;
        ; standard iteration
        ;
  iter=iter+1, zc=sqr(zc)+c
        ;
        ; compute difference between actual location and
        ; astroid location; update minimum if necessary
        ;
  temp=(zc-center)*rot
  x=cabs(real(temp)), y=cabs(imag(temp))
  err=x^n+y^n-aton
  IF (err<0)
    incount=incount+1
  ENDIF
        ;
        ; bailout at escape or maximum iterations
        ;   set "done" flag
        ;   use incount/iterations as angle for decomp coloring
        ;
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    t=speed*incount/(iter-1)
    z=cos(t)+flip(sin(t))
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


astroid-inout_man {; Kerry Mitchell 14nov98
        ;
        ; Kerry Mitchell's explanation of his "Astroid" formulas is
        ; at the end of formula "Astroid"
        ;
        ; colors Mandelbrot set by how often orbit is inside
        ; a astroid:  x^n + y^n = a^n
        ;
        ; real(p1) = bailout
        ; imag(p1) = rotation angle, degrees
        ; real(p2) = a = size
        ; imag(p2) = n = exponent
        ; p3 = center of astroid
        ;
        ; colors inside & outside points the same way
        ; use decomp=256, float=yes, periodicity=no
        ;
  zc=0, c=pixel, iter=1, done=0
  bailout=real(p1), incount=0, speed=2*pi
  a=real(p2), n=imag(p2), aton=a^n
  center=p3, rot=imag(p1)/180*pi, rot=exp(flip(rot))
  :
        ;
        ; standard iteration
        ;
  iter=iter+1, zc=sqr(zc)+c
        ;
        ; compute difference between actual location and
        ; astroid location; update minimum if necessary
        ;
  temp=(zc-center)*rot
  x=cabs(real(temp)), y=cabs(imag(temp))
  err=x^n+y^n-aton
  IF (err<0)
    incount=incount+1
  ENDIF
        ;
        ; bailout at escape or maximum iterations
        ;   set "done" flag
        ;   use incount/iterations as angle for decomp coloring
        ;
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    t=speed*incount/(iter-1)
    z=cos(t)+flip(sin(t))
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


astroid-near_jul { ; Kerry Mitchell 14nov98
        ;
        ; Kerry Mitchell's explanation of his "Astroid" formulas is
        ; at the end of formula "Astroid"
        ;
        ; colors Julia set by orbit's closet approach to
        ; a astroid:  x^n + y^n = a^n
        ;
        ; p1 = c = Julia parameter
        ; real(p2) = a = size
        ; imag(p2) = n = exponent
        ; p3 = center of astroid
        ; bailout = 1000 (hardcoded)
        ; rotation angle, degrees = 0 (hardcoded)
        ;
        ; colors inside & outside points the same way
        ; use decomp=256, float=yes, periodicity=no
        ;
  zc=pixel, c=p1, iter=1, done=0
  bailout=1000, errmin=bailout
  a=real(p2), n=imag(p2), aton=a^n
  center=p3, rot=0/180*pi, rot=exp(flip(rot))
  :
        ;
        ; standard iteration
        ;
  iter=iter+1, zc=sqr(zc)+c
        ;
        ; compute difference between actual location and
        ; astroid location; update minimum if necessary
        ;
  temp=(zc-center)*rot
  x=cabs(real(temp)), y=cabs(imag(temp))
  err=cabs(x^n+y^n-aton)
  IF (err<errmin)
    errmin=err
  ENDIF
        ;
        ; bailout at escape or maximum iterations
        ;   set "done" flag
        ;   use log(minimum) as angle for decomp coloring
        ;
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    t=log(errmin)
    z=cos(t)+flip(sin(t))
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


astroid-near_man {; Kerry Mitchell 14nov98
        ;
        ; Kerry Mitchell's explanation of his "Astroid" formulas is
        ; at the end of formula "Astroid"
        ;
        ; colors Mandelbrot set by orbit's closet approach to
        ; a astroid:  x^n + y^n = a^n
        ;
        ; real(p1) = bailout
        ; imag(p1) = rotation angle, degrees
        ; real(p2) = a = size
        ; imag(p2) = n = exponent
        ; p3 = center of astroid
        ;
        ; colors inside & outside points the same way
        ; use decomp=256, float=yes, periodicity=no
        ;
  zc=0, c=pixel, iter=1, done=0
  bailout=real(p1), errmin=bailout
  a=real(p2), n=imag(p2), aton=a^n
  center=p3, rot=imag(p1)/180*pi, rot=exp(flip(rot))
  :
        ;
        ; standard iteration
        ;
  iter=iter+1, zc=sqr(zc)+c
        ;
        ; compute difference between actual location and
        ; astroid location; update minimum if necessary
        ;
  temp=(zc-center)*rot
  x=cabs(real(temp)), y=cabs(imag(temp))
  err=cabs(x^n+y^n-aton)
  IF (err<errmin)
    errmin=err
  ENDIF
        ;
        ; bailout at escape or maximum iterations
        ;   set "done" flag
        ;   use log(minimum) as angle for decomp coloring
        ;
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    t=log(errmin)
    z=cos(t)+flip(sin(t))
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


Astroid_Jset {; Copyright (c) Paul W. Carlson, 1997
    ; Mike Traynor converted Astroid_Mset to Jset
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p2) = a factor controlling the width of the curves
    ;   imag(p2) = radius of the astroid
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
  c = 0
  w = pixel
  z = 0
  bailout = 0
  iter = 0
  range_num = 0
  i = (0,1)
  r = imag(p2)
    ;****************************************************
    ; In the accompanying par file, astmset.par,
    ; we have 8 color ranges with 30 colors in each range
    ; for a total of 240 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| < 10000.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
  num_ranges = real(p3)
  colors_in_range = imag(p3)
    ;****************************************************
    ; Real(p2) controls the width of the curves.
    ; These values will usually be in the range 0.001 to 0.1
    ;****************************************************
  width = real(p2)
  index_factor = (colors_in_range - 1) / width:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be expressed in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This example uses the standard Mandelbrot set equation.
    ;****************************************************
  w = w * w + P1
    ;****************************************************
    ; The orbit trap curve.  This example uses an "astroid"
    ; curve (which has absolutely nothing to do with huge
    ; rocks in outer space).  Any two-dimensional curve can
    ; be used which can be expressed in parametric form in
    ; terms of the angle from the origin.
    ;****************************************************
  ang = atan(imag(w) / real(w))
  astroid = r * (cos(ang)^3 + i * sin(ang)^3)
    ;****************************************************
    ; If the orbit point is within some distance of the curve,
    ; set z to the index into the colormap and set the bailout
    ; flag.  Note: the way we use the "distance" here has
    ; the effect of turning the curves inside-out in the image.
    ;****************************************************
  distance = abs(|w| - |astroid|)
  IF (distance < width && iter > 1)
    z = index_factor * distance + range_num * colors_in_range + 1
    bailout = 1
  ENDIF
    ;****************************************************
    ; Cycle through the range numbers (0 thru num_ranges - 1)
    ; With two color ranges, even iterations use color
    ; range 0, odd iterations use color range 1.
    ;****************************************************
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
    ;****************************************************
    ; Since we are using outside=summ, we have to subtract
    ; the number of iterations from z.
    ;****************************************************
  iter = iter + 1
  z = z - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
  bailout == 0  && |w| < 1000
  ;SOURCE: astjstmt.frm
}


Astroid_LHS_mod {; Copyright (c) Lee H. Skinner & Paul Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = a factor controlling the width of the curves
    ;   imag(p1) = radius of the astroid
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
  w = 0
  c = pixel
  z = 0
  bailout = 0
  iter = 0
  range_num = 0
  i = (0,1)
  r = imag(p1)
    ;****************************************************
    ; In the accompanying par file, astmset.par,
    ; we have 8 color ranges with 30 colors in each range
    ; for a total of 240 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| < 10000.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
  num_ranges = real(p2)
  colors_in_range = imag(p2)
    ;****************************************************
    ; Real(p1) controls the width of the curves.
    ; These values will usually be in the range 0.001 to 0.1
    ;****************************************************
  width = real(p1)
  index_factor = (colors_in_range - 1) / width:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be expressed in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This example uses the standard Mandelbrot set equation.
    ;****************************************************
  w=(w*w*w-2*w*w-1)/(c-1)+c
    ;****************************************************
    ; The orbit trap curve.  This example uses an "astroid"
    ; curve (which has absolutely nothing to do with huge
    ; rocks in outer space).  Any two-dimensional curve can
    ; be used which can be expressed in parametric form in
    ; terms of the angle from the origin.
    ;****************************************************
  ang = atan(imag(w) / real(w))
  astroid = r * (cos(ang)^3 + i * sin(ang)^3)
    ;****************************************************
    ; If the orbit point is within some distance of the curve,
    ; set z to the index into the colormap and set the bailout
    ; flag.  Note: the way we use the "distance" here has
    ; the effect of turning the curves inside-out in the image.
    ;****************************************************
  distance = abs(|w| - |astroid|)
  IF (distance < width && iter > 1)
    z = index_factor * distance + range_num * colors_in_range + 1
    bailout = 1
  ENDIF
    ;****************************************************
    ; Cycle through the range numbers (0 thru num_ranges - 1)
    ; With two color ranges, even iterations use color
    ; range 0, odd iterations use color range 1.
    ;****************************************************
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
    ;****************************************************
    ; Since we are using outside=summ, we have to subtract
    ; the number of iterations from z.
    ;****************************************************
  iter = iter + 1
  z = z - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
  bailout == 0  && |w| < 1000
  ;SOURCE: lskinner.frm
}


Astroid_Mset  {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = a factor controlling the width of the curves
    ;   imag(p1) = radius of the astroid
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    w = 0
    c = pixel
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    i = (0,1)
    r = imag(p1)
    ;****************************************************
    ; In the accompanying par file, astmset.par,
    ; we have 8 color ranges with 30 colors in each range
    ; for a total of 240 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| < 10000.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    ;****************************************************
    ; Real(p1) controls the width of the curves.
    ; These values will usually be in the range 0.001 to 0.1
    ;****************************************************
    width = real(p1)
    index_factor = (colors_in_range - 1) / width:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be expressed in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This example uses the standard Mandelbrot set equation.
    ;****************************************************
    w = w * w + c
    ;****************************************************
    ; The orbit trap curve.  This example uses an "astroid"
    ; curve (which has absolutely nothing to do with huge
    ; rocks in outer space).  Any two-dimensional curve can
    ; be used which can be expressed in parametric form in
    ; terms of the angle from the origin.
    ;****************************************************
    ang = atan(imag(w) / real(w))
    astroid = r * (cos(ang)^3 + i * sin(ang)^3)
    ;****************************************************
    ; If the orbit point is within some distance of the curve,
    ; set z to the index into the colormap and set the bailout
    ; flag.  Note: the way we use the "distance" here has
    ; the effect of turning the curves inside-out in the image.
    ;****************************************************
    distance = abs(|w| - |astroid|)
    IF (distance < width && iter > 1)
        z = index_factor * distance + range_num * colors_in_range + 1
        bailout = 1
    ENDIF
    ;****************************************************
    ; Cycle through the range numbers (0 thru num_ranges - 1)
    ; With two color ranges, even iterations use color
    ; range 0, odd iterations use color range 1.
    ;****************************************************
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    ;****************************************************
    ; Since we are using outside=summ, we have to subtract
    ; the number of iterations from z.
    ;****************************************************
    iter = iter + 1
    z = z - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
    bailout == 0  && |w| < 1000
  ;SOURCE: 98msg.frm
}


Astroid_Msetx {; Copyright (c) Paul W. Carlson, 1997
    ; Mike Traynor generalized the iteration equation
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = a factor controlling the width of the curves
    ;   imag(p1) = radius of the astroid
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
  w = 0
  c = pixel
  z = 0
  bailout = 0
  iter = 0
  range_num = 0
  i = (0,1)
  r = imag(p1)
    ;****************************************************
    ; In the accompanying par file, astmset.par,
    ; we have 8 color ranges with 30 colors in each range
    ; for a total of 240 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| < 10000.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
  num_ranges = real(p2)
  colors_in_range = imag(p2)
    ;****************************************************
    ; Real(p1) controls the width of the curves.
    ; These values will usually be in the range 0.001 to 0.1
    ;****************************************************
  width = real(p1)
  index_factor = (colors_in_range - 1) / width:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be expressed in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This example uses the standard Mandelbrot set equation.
    ;****************************************************
  w = fn1(w) + c
    ;****************************************************
    ; The orbit trap curve.  This example uses an "astroid"
    ; curve (which has absolutely nothing to do with huge
    ; rocks in outer space).  Any two-dimensional curve can
    ; be used which can be expressed in parametric form in
    ; terms of the angle from the origin.
    ;****************************************************
  ang = atan(imag(w) / real(w))
  astroid = r * (cos(ang)^3 + i * sin(ang)^3)
    ;****************************************************
    ; If the orbit point is within some distance of the curve,
    ; set z to the index into the colormap and set the bailout
    ; flag.  Note: the way we use the "distance" here has
    ; the effect of turning the curves inside-out in the image.
    ;****************************************************
  distance = abs(|w| - |astroid|)
  IF (distance < width && iter > 1)
    z = index_factor * distance + range_num * colors_in_range + 1
    bailout = 1
  ENDIF
    ;****************************************************
    ; Cycle through the range numbers (0 thru num_ranges - 1)
    ; With two color ranges, even iterations use color
    ; range 0, odd iterations use color range 1.
    ;****************************************************
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
    ;****************************************************
    ; Since we are using outside=summ, we have to subtract
    ; the number of iterations from z.
    ;****************************************************
  iter = iter + 1
  z = z - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
  bailout == 0  && |w| < 1000
  ;SOURCE: 3d_balls.frm
}


at0 {
  z=pixel, x=(z-1)*fn1(z+1), y=(z/2)*fn2(z-1):
  z=fn3(y)^fn4(x*tan(z))+c
  |z|<4
  ;SOURCE: ad1.frm
}


at4 {
  z=pixel, y=fn4(z-1)^fn1(z), x=(z-1)*fn1(z+1), t=(z/2)*fn2(z-1):
  z=fn4(fn2(z^y)/fn3(x^t))^fn4(t^z)+c
  |z|<4
  ;SOURCE: ad1.frm
}


atest (XAXIS) {; R.L.Bagula
               ; Classical fractal showing LastSqr speedup
  z = Pixel, z = Sqr(z+1/z):  ; Start with z**2 to initialize LastSqr
  z = z + 1/Pixel
  z = Sqr(z)
  LastSqr <= 16         ; Use LastSqr instead of recalculating
  ;SOURCE: rbagula.frm
}


atom {; Giuseppe Zito
  z = pixel
  c1 = -0.502611
  c6 = -0.681499
  d0 = -0.187797
  d7 = 0.722431
  : 
  x = real(z), y = imag(z)
  s0 = y
  s0 = s0 *c1
  s1 = y
  s0 = s0 *s1
  s0 = s0 -y
  s0 = s0 -c6
  newx = s0 
  s0 =d0
  s0 = s0 *x
  s0 = s0 +x
  s0 = s0 *d7
  s0 = s0 -x
  s0 = s0 +x
  s0 = s0 *y
  s0 = s0 +x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


au0 {
  z=pixel, y=fn1(z-1)^fn1(z), x=(z-1)*fn1(z+1), t=(z/2)*fn1(z-1):
  z=fn1(fn2(t^y)/fn3(x^t))^fn4(t^z)
  |z|<4
  ;SOURCE: ad1_miss.frm
}


au9 {
  z=pixel, y=sin(tan(exp(z-1))), x=cos(cotan(z-1)):
  z=fn4(z-1)^(fn3(x)^fn2(y))*fn1(y*x)+c
  |z|<4
  ;SOURCE: ad1.frm
}


August {; Sylvie Gallet, Dec 1997
        ; Newton's method applied to z^4 - 4 = 0
        ; Coloring algorithm by Scott Burns
        ; Use decomp = 256 and periodicity = 0
  z1 = pixel, iter = 0, sq2 = sqrt(2)
  a = real(p1)*(0,0.0245436)    ; real(p1) * 2i pi / 256
  mz = abs(cabs(z1)-sq2) 
  :
  IF (mz > 0.1)
    z2 = z1*z1
    z1 = (3*z2*z2 - 4) / (4*z1*z2)
    mz = abs(cabs(z1)-sq2)
    cont = 1
    iter = iter + 1
  ELSE
    IF (iter < 13)
      z = exp((iter + 0.001 + 9.99*mz)*a)
    ELSE
      z = exp((13 + (iter-13)/18)*a)
    ENDIF
    cont = 0
  ENDIF
  cont
  ;SOURCE: 97msg.frm
}


Automatic(XAXIS) = {
  c = z = pixel:
  temp=z
  z=(fn1(z)/fn2(z))*z + c
  zp=temp
  |z|<4
  ;SOURCE: jack5.frm
}


Automatic_Jack(XAXIS) {
  c = z = pixel:
  z=z^p1+(fn1(z))+c
  |z|<4
  ;SOURCE: orman.frm
}


av0 {
  z=pixel, y=exp(cos(z)), x=log(cos(cotan(z-1))):
  z=fn4(z-1)^(fn3(x)^fn2(y))*fn1(y*x)+c
  |z|<4
  ;SOURCE: ad1.frm
}


av3 {
  z=pixel, y=z-1/(z*z), x=z+1:
  z=fn1(tan(fn3(z-1))*fn4(cotan(y)))/fn2(x)+c
  |z|<4
  ;SOURCE: ad1.frm
}


av5 {
  z=pixel, y=(pixel)/fn4(z-1):
  z=fn1((z)^fn2(y)+fn3(z))+c
  |z|<4
  ;SOURCE: ad1.frm
}


ave8rootcount_j {; Kerry Mitchell 12feb98
        ; See the end of this formula for Kerry Mitchell's
        ; explanation of his "average" formulas
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e10)
        ; imag(p2) = unused
        ; real(p3) = inner coloring speed (0 for outer only)
        ; imag(p3) = outer coloring speed (0 for inner only)
  zc=pixel, c=p1, iter=1, maxr=real(p2), count=0
  b1=maxr, fac=b1^0.125, b2=b1*fac, b3=b2*fac
  b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
  iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0
  inspeed=real(p3)*pi*255/128
  outspeed=imag(p3)*pi*255/128:
  iter=iter+1, z2=sqr(zc), w=sqrt(z2)
  r1=|zc-w|, r2=|zc+w|, count=count+(r1<r2)
  zc=z2+c, r2zc=|zc|
  IF (r2zc>b1)
    IF (iter1==0)
      iter1=iter, q1=count/iter
    ENDIF
    IF (r2zc>b2)
      IF (iter2==0)
        iter2=iter, q2=count/iter
      ENDIF
      IF (r2zc>b3)
        IF (iter3==0)
          iter3=iter, q3=count/iter
        ENDIF
        IF (r2zc>b4)
          IF (iter4==0)
            iter4=iter, q4=count/iter
          ENDIF
          IF (r2zc>b5)
            IF (iter5==0)
              iter5=iter, q5=count/iter
            ENDIF
            IF (r2zc>b6)
              IF (iter6==0)
                iter6=iter, q6=count/iter
              ENDIF
              IF (r2zc>b7)
                IF (iter7==0)
                  iter7=iter, q7=count/iter
                ENDIF
                IF (r2zc>b8)
                  IF (iter8==0)
                    iter8=iter, q8=count/iter
                  ENDIF
                  iter=-1
                  q=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
                  angle=q*outspeed
                  z=cos(angle)+flip(sin(angle))
                ENDIF
              ENDIF
            ENDIF
          ENDIF
        ENDIF
      ENDIF
    ENDIF
  ENDIF
  IF (iter==maxit)
    q=count/iter
    angle=q*inspeed
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
;*****Kerry Mitchell's explanation of his "Average" formulas***********
;        narrative copyright Kerry Mitchell 13feb98
;
; Applicable to the following formulas:
;     ave8rootcount_j (above)
;     ave8rootcount_m 
;     ave8triangcount_j 
;     ave8triangcount_m 
;     ave8xlty_jul 
;     ave8xlty_man 
;     ave8z1gtz2_jul 
;     ave8z1gtz2_man 
;
; Average
;
; Due to the discrete nature of fractal rendering, most 
; fractals exhibit some sort of banding artifacts.  That 
; is, formulas tend to be iterated until "something happens", 
; and then the pixel is colored.  There can appear a sharp 
; border between pixels where the iteration stopped at step 
; n, versus nearby pixels that survived until step n+1.  
; This discontinuity can even occur if the coloring is based 
; on something other than the iteration count.
;
; Averaging is one way to reduce this banding.  The bands of 
; color are dependent upon the iteration count, which is 
; related to the escape radius, or bailout value.  Changing 
; the bailout will move the bands in or out from the fractal, 
; and may slightly change their shape.  Moving the bands is 
; the basis of this method.
; 
; For quadratic formulas (Mandelbrot and Julia sets), squaring 
; the bailout will move the bands out approximately one band 
; width.  To see this, assume that the orbit escaped at the 
; 17th iteration, using a escape radius of 100.  The magnitude 
; of the iterate is between 100 and 10,000 (or else it would 
; have escaped before or after iteration 17).  The magnitude 
; of the next iteration will be between 10,000 and 1e8 (100 
; squared and 10,000 squared).  Now, changing the escape 
; radius to 10,000 (100 squared) means that the orbit will 
; escape at the next iteration, or that what was the 17th 
; iteration band has moved outward 1 band width.
; 
; To see how this works with fractals, assume that a string 
; of pixels is colored thusly with a given bailout value:
; 
; r g g g b b b
; 
; where "r" indicates red, "g" means green, and "b" is 
; blue.  Increasing the bailout value moves the band outward, 
; giving this string of colors:
; 
; r r g g g b b
; 
; Averaging the two:
; 
; r g g g b b b  first
; r r g g g b b  second
; r y g g c b b  average
; 
; where "y" means dark yellow and "c" means dark cyan.  The 
; hard boundary between red and green has now been smoothed 
; by the inclusion of a (dark) yellow pixel, and the line 
; between green and blue has been smoothed through a (dark) 
; cyan pixel.  In reality, more than two bailouts should be 
; used to get a smoothly varying image.  Also, when using a 
; bit-mapped fractal generator (Fractint), be aware that the 
; averaging takes place in color index space, not color space, 
; so it is important to use a smoothly varying color map.
; 
; The "ave8template" formula shows the basic functionality, 
; using 8 different bailouts.  Call the lowest bailout r1, 
; and choose it such that it is much larger than the size 
; of the parameter (say, 100).  Then the width of this 
; iteration band is from 100 to 10,000.  That is, all orbits 
; that escape will have magnitudes between 100 and 10,000.  
; The goal is to pick several other bailout values that will 
; equally span this space.  Since the high end of the range 
; is r1^2 or r1*r1^1, 8 even steps can be made by choosing 
; bailouts of
; 
; r = r1 * r1^(i/8), 
;
; for i from 1 to 8.  In practice, r1 and the next 7 steps 
; are used, since the eighth bailout will overlap the first 
; one.  Given the bailout values, 8 different iteration 
; flags are initialized to 0.
; 
; At each iteration, the overall iteration counter is 
; incremented, and an overall variable is recorded, which 
; tracks the relevant quantity (iteration, how many times 
; real(z) is less than imag(z), etc.).  Checking for escape 
; is doing by sequentially stepping through the 8 bailout 
; values.  If bailout 1 is exceeded, then set iteration 
; counter 1 to the current iteration and set variable 1 
; to the value of the overall variable.  If all the 
; bailouts have not yet been exceeded, continuing iterating.
; 
; When all the bailouts have been exceeded, compute the 
; average of all the specific variables (variable 1, variable 
; 2, etc.).  Then, use that average as the coloring parameter.  
; If the pixel in question turns out the be an inside pixel, 
; color using the overall variable.
; 
; If the image is to be rendered simply using a smoothed 
; iteration count, then a method similar to Linas Vepstas' 
; renormalization is preferable.  However, if the variable 
; used for coloring does not lend itself to a simple 
; renormalization analysis, then the present method will 
; work very well.  The number of averages can easily be 
; changed to any appropriate amount.  However, when using 
; a bit-mapped generator, it will not be beneficial to 
; use an extreme number of averages, as the image will 
; still be limited to the number of colors available 
; in the generator.
;
;ave8template { ; Kerry Mitchell 13feb98
;        ; real(p1) = bailout (try 10)
;        ; imag(p1) = unused
;        ; real(p2) = inner coloring speed (0 for outer only)
;        ; imag(p2) = outer coloring speed (0 for inner only)
;        zc=0, c=pixel, iter=1, maxr=real(p1), count=0
;        b1=maxr, fac=b1^0.125, b2=b1*fac, b3=b2*fac
;        b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
;        iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0
;        inspeed=real(p2)*pi*255/128
;        outspeed=imag(p2)*pi*255/128
;        :
;        iter=iter+1, zc=sqr(zc)+c, r2zc=|zc|
;        ;
;        ; insert logic here to compute variable counter
;        ;
;        count=count+1
;        IF (r2zc>b1)
;          IF (iter1==0)
;            iter1=iter, q1=count/iter
;          ENDIF
;        IF (r2zc>b2)
;          IF (iter2==0)
;            iter2=iter, q2=count/iter
;          ENDIF
;        IF (r2zc>b3)
;          IF (iter3==0)
;            iter3=iter, q3=count/iter
;          ENDIF
;        IF (r2zc>b4)
;          IF (iter4==0)
;            iter4=iter, q4=count/iter
;          ENDIF
;        IF (r2zc>b5)
;          IF (iter5==0)
;            iter5=iter, q5=count/iter
;          ENDIF
;        IF (r2zc>b6)
;          IF (iter6==0)
;            iter6=iter, q6=count/iter
;          ENDIF
;        IF (r2zc>b7)
;          IF (iter7==0)
;            iter7=iter, q7=count/iter
;          ENDIF
;        IF (r2zc>b8)
;          IF (iter8==0)
;            iter8=iter, q8=count/iter
;          ENDIF
;
;        iter=-1
;        q=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
;        angle=q*outspeed
;        z=cos(angle)+flip(sin(angle))
;
;        ENDIF
;        ENDIF
;        ENDIF
;        ENDIF
;        ENDIF
;        ENDIF
;        ENDIF
;        ENDIF
;
;        IF (iter==maxit)
;          q=count/iter
;          angle=q*inspeed
;          z=cos(angle)+flip(sin(angle))
;          iter=-1
;          ENDIF
;
;        iter>0
;   }
;
;**********************************************************************
  ;SOURCE: 98msg.frm
}


ave8rootcount_m {; Kerry Mitchell 12feb98
        ; See the end of formula ave8rootcount_j for Kerry Mitchell's
        ; explanation of his "average" formulas
        ; real(p1) = bailout (try 1e10)
        ; imag(p1) = unused
        ; real(p2) = inner coloring speed (0 for outer only)
        ; imag(p2) = outer coloring speed (0 for inner only)
  zc=0, c=pixel, iter=1, maxr=real(p1), count=0
  b1=maxr, fac=b1^0.125, b2=b1*fac, b3=b2*fac
  b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
  iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0
  inspeed=real(p2)*pi*255/128
  outspeed=imag(p2)*pi*255/128:
  iter=iter+1, z2=sqr(zc), w=sqrt(z2)
  r1=|zc-w|, r2=|zc+w|, count=count+(r1<r2)
  zc=z2+c, r2zc=|zc|
  IF (r2zc>b1)
    IF (iter1==0)
      iter1=iter, q1=count/iter
    ENDIF
    IF (r2zc>b2)
      IF (iter2==0)
        iter2=iter, q2=count/iter
      ENDIF
      IF (r2zc>b3)
        IF (iter3==0)
          iter3=iter, q3=count/iter
        ENDIF
        IF (r2zc>b4)
          IF (iter4==0)
            iter4=iter, q4=count/iter
          ENDIF
          IF (r2zc>b5)
            IF (iter5==0)
              iter5=iter, q5=count/iter
            ENDIF
            IF (r2zc>b6)
              IF (iter6==0)
                iter6=iter, q6=count/iter
              ENDIF
              IF (r2zc>b7)
                IF (iter7==0)
                  iter7=iter, q7=count/iter
                ENDIF
                IF (r2zc>b8)
                  IF (iter8==0)
                    iter8=iter, q8=count/iter
                  ENDIF
                  iter=-1
                  q=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
                  angle=q*outspeed
                  z=cos(angle)+flip(sin(angle))
                ENDIF
              ENDIF
            ENDIF
          ENDIF
        ENDIF
      ENDIF
    ENDIF
  ENDIF
  IF (iter==maxit)
    q=count/iter
    angle=q*inspeed
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


ave8triangcount_j {; Kerry Mitchell 12feb98
        ; See the end of formula ave8rootcount_j for Kerry Mitchell's
        ; explanation of his "average" formulas
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e6)
        ; imag(p2) = unused
        ; real(p3) = inner coloring speed (0 for outer only)
        ; imag(p3) = outer coloring speed (0 for inner only)
  zc=pixel, c=p1, rc=cabs(c), r2zc=|zc|
  iter=1, maxr=real(p2), count=0
  b1=maxr, fac=b1^0.125, b2=b1*fac, b3=b2*fac
  b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
  iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0
  inspeed=real(p3)*pi*255/128
  outspeed=imag(p3)*pi*255/128:
  iter=iter+1, z2=sqr(zc)+c, rz2=cabs(z2)
  fac=abs(r2zc-rc), q=(rz2-fac)/(r2zc+rc-fac)
  zc=z2, r2zc=|zc|, count=count+q
  IF (r2zc>b1)
    IF (iter1==0)
      iter1=iter, q1=count/iter
    ENDIF
    IF (r2zc>b2)
      IF (iter2==0)
        iter2=iter, q2=count/iter
      ENDIF
      IF (r2zc>b3)
        IF (iter3==0)
          iter3=iter, q3=count/iter
        ENDIF
        IF (r2zc>b4)
          IF (iter4==0)
            iter4=iter, q4=count/iter
          ENDIF
          IF (r2zc>b5)
            IF (iter5==0)
              iter5=iter, q5=count/iter
            ENDIF
            IF (r2zc>b6)
              IF (iter6==0)
                iter6=iter, q6=count/iter
              ENDIF
              IF (r2zc>b7)
                IF (iter7==0)
                  iter7=iter, q7=count/iter
                ENDIF
                IF (r2zc>b8)
                  IF (iter8==0)
                    iter8=iter, q8=count/iter
                  ENDIF
                  iter=-1
                  q=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
                  angle=q*outspeed
                  z=cos(angle)+flip(sin(angle))
                ENDIF
              ENDIF
            ENDIF
          ENDIF
        ENDIF
      ENDIF
    ENDIF
  ENDIF
  IF (iter==maxit)
    q=count/iter
    angle=q*inspeed
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


ave8triangcount_m {; Kerry Mitchell 12feb98
        ; See the end of formula ave8rootcount_j for Kerry Mitchell's
        ; explanation of his "average" formulas
        ; real(p1) = bailout (try 1e6)
        ; imag(p1) = unused
        ; real(p2) = inner coloring speed (0 for outer only)
        ; imag(p2) = outer coloring speed (0 for inner only)
  zc=pixel, c=pixel, rc=cabs(c), r2zc=|zc|
  iter=1, maxr=real(p1), count=0
  b1=maxr, fac=b1^0.125, b2=b1*fac, b3=b2*fac
  b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
  iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0
  inspeed=real(p2)*pi*255/128
  outspeed=imag(p2)*pi*255/128:
  iter=iter+1, z2=sqr(zc)+c, rz2=cabs(z2)
  fac=abs(r2zc-rc), q=(rz2-fac)/(r2zc+rc-fac)
  zc=z2, r2zc=|zc|, count=count+q
  IF (r2zc>b1)
    IF (iter1==0)
      iter1=iter, q1=count/iter
    ENDIF
    IF (r2zc>b2)
      IF (iter2==0)
        iter2=iter, q2=count/iter
      ENDIF
      IF (r2zc>b3)
        IF (iter3==0)
          iter3=iter, q3=count/iter
        ENDIF
        IF (r2zc>b4)
          IF (iter4==0)
            iter4=iter, q4=count/iter
          ENDIF
          IF (r2zc>b5)
            IF (iter5==0)
              iter5=iter, q5=count/iter
            ENDIF
            IF (r2zc>b6)
              IF (iter6==0)
                iter6=iter, q6=count/iter
              ENDIF
              IF (r2zc>b7)
                IF (iter7==0)
                  iter7=iter, q7=count/iter
                ENDIF
                IF (r2zc>b8)
                  IF (iter8==0)
                    iter8=iter, q8=count/iter
                  ENDIF
                  iter=-1
                  q=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
                  angle=q*outspeed
                  z=cos(angle)+flip(sin(angle))
                ENDIF
              ENDIF
            ENDIF
          ENDIF
        ENDIF
      ENDIF
    ENDIF
  ENDIF
  IF (iter==maxit)
    q=count/iter
    angle=q*inspeed
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


ave8xlty_jul {; Kerry Mitchell 13feb98
        ; See the end of formula ave8rootcount_j for Kerry Mitchell's
        ; explanation of his "average" formulas
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 10)
        ; imag(p2) = rounding factor (try 1)
        ; real(p3) = inner coloring speed (0 for outer only)
        ; imag(p3) = outer coloring speed (0 for inner only)
        ; fn1 = arbitrary function (try log)
  zc=pixel, c=p1, iter=1, maxr=real(p2), count=0
  b1=maxr, fac=b1^0.125, b2=b1*fac, b3=b2*fac
  b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
  iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0
  inspeed=real(p3)*pi*255/128, roundfac=imag(p2)
  outspeed=imag(p3)*pi*255/128:
  iter=iter+1, zc=sqr(zc)+c, r2zc=|zc|
  temp=fn1(zc)/roundfac, frac=roundfac*(temp-round(temp))
  IF (real(frac)<imag(frac))
    count=count+1
  ENDIF
  IF (r2zc>b1)
    IF (iter1==0)
      iter1=iter, q1=count/iter
    ENDIF
    IF (r2zc>b2)
      IF (iter2==0)
        iter2=iter, q2=count/iter
      ENDIF
      IF (r2zc>b3)
        IF (iter3==0)
          iter3=iter, q3=count/iter
        ENDIF
        IF (r2zc>b4)
          IF (iter4==0)
            iter4=iter, q4=count/iter
          ENDIF
          IF (r2zc>b5)
            IF (iter5==0)
              iter5=iter, q5=count/iter
            ENDIF
            IF (r2zc>b6)
              IF (iter6==0)
                iter6=iter, q6=count/iter
              ENDIF
              IF (r2zc>b7)
                IF (iter7==0)
                  iter7=iter, q7=count/iter
                ENDIF
                IF (r2zc>b8)
                  IF (iter8==0)
                    iter8=iter, q8=count/iter
                  ENDIF
                  iter=-1
                  q=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
                  angle=q*outspeed
                  z=cos(angle)+flip(sin(angle))
                ENDIF
              ENDIF
            ENDIF
          ENDIF
        ENDIF
      ENDIF
    ENDIF
  ENDIF
  IF (iter==maxit)
    q=count/iter
    angle=q*inspeed
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


ave8xlty_man {; Kerry Mitchell 13feb98
        ; See the end of formula ave8rootcount_j for Kerry Mitchell's
        ; explanation of his "average" formulas
        ; real(p1) = bailout (try 10)
        ; imag(p1) = rounding factor (try 1)
        ; real(p2) = inner coloring speed (0 for outer only)
        ; imag(p2) = outer coloring speed (0 for inner only)
        ; fn1 = arbitrary function (try log)
  zc=0, c=pixel, iter=1, maxr=real(p1), count=0
  b1=maxr, fac=b1^0.125, b2=b1*fac, b3=b2*fac
  b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
  iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0
  inspeed=real(p2)*pi*255/128, roundfac=imag(p1)
  outspeed=imag(p2)*pi*255/128:
  iter=iter+1, zc=sqr(zc)+c, r2zc=|zc|
  temp=fn1(zc)/roundfac, frac=roundfac*(temp-round(temp))
  IF (real(frac)<imag(frac))
    count=count+1
  ENDIF
  IF (r2zc>b1)
    IF (iter1==0)
      iter1=iter, q1=count/iter
    ENDIF
    IF (r2zc>b2)
      IF (iter2==0)
        iter2=iter, q2=count/iter
      ENDIF
      IF (r2zc>b3)
        IF (iter3==0)
          iter3=iter, q3=count/iter
        ENDIF
        IF (r2zc>b4)
          IF (iter4==0)
            iter4=iter, q4=count/iter
          ENDIF
          IF (r2zc>b5)
            IF (iter5==0)
              iter5=iter, q5=count/iter
            ENDIF
            IF (r2zc>b6)
              IF (iter6==0)
                iter6=iter, q6=count/iter
              ENDIF
              IF (r2zc>b7)
                IF (iter7==0)
                  iter7=iter, q7=count/iter
                ENDIF
                IF (r2zc>b8)
                  IF (iter8==0)
                    iter8=iter, q8=count/iter
                  ENDIF
                  iter=-1
                  q=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
                  angle=q*outspeed
                  z=cos(angle)+flip(sin(angle))
                ENDIF
              ENDIF
            ENDIF
          ENDIF
        ENDIF
      ENDIF
    ENDIF
  ENDIF
  IF (iter==maxit)
    q=count/iter
    angle=q*inspeed
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


ave8z1gtz2_jul {; Kerry Mitchell 13feb98
        ; See the end of formula ave8rootcount_j for Kerry Mitchell's
        ; explanation of his "average" formulas
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e10)
        ; imag(p2) = unused
        ; real(p3) = inner coloring speed (0 for outer only)
        ; imag(p3) = outer coloring speed (0 for inner only)
  z1=pixel, r1=|z1|, c=p1, iter=1, maxr=real(p2), count=0
  b1=maxr, fac=b1^0.125, b2=b1*fac, b3=b2*fac
  b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
  iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0
  inspeed=real(p3)*pi*255/128
  outspeed=imag(p3)*pi*255/128:
  iter=iter+1, z2=sqr(z1)+c, r2=|z2|
  IF (r1>r2)
    count=count+1
  ENDIF
  z1=z2, r1=r2
  IF (r2>b1)
    IF (iter1==0)
      iter1=iter, q1=count/iter
    ENDIF
    IF (r2>b2)
      IF (iter2==0)
        iter2=iter, q2=count/iter
      ENDIF
      IF (r2>b3)
        IF (iter3==0)
          iter3=iter, q3=count/iter
        ENDIF
        IF (r2>b4)
          IF (iter4==0)
            iter4=iter, q4=count/iter
          ENDIF
          IF (r2>b5)
            IF (iter5==0)
              iter5=iter, q5=count/iter
            ENDIF
            IF (r2>b6)
              IF (iter6==0)
                iter6=iter, q6=count/iter
              ENDIF
              IF (r2>b7)
                IF (iter7==0)
                  iter7=iter, q7=count/iter
                ENDIF
                IF (r2>b8)
                  IF (iter8==0)
                    iter8=iter, q8=count/iter
                  ENDIF
                  iter=-1
                  q=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
                  angle=q*outspeed
                  z=cos(angle)+flip(sin(angle))
                ENDIF
              ENDIF
            ENDIF
          ENDIF
        ENDIF
      ENDIF
    ENDIF
  ENDIF
  IF (iter==maxit)
    q=count/iter
    angle=q*inspeed
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


ave8z1gtz2_man {; Kerry Mitchell 13feb98
        ; See the end of formula ave8rootcount_j for Kerry Mitchell's
        ; explanation of his "average" formulas
        ; real(p1) = bailout (try 1e10)
        ; imag(p1) = unused
        ; real(p2) = inner coloring speed (0 for outer only)
        ; imag(p2) = outer coloring speed (0 for inner only)
  z1=0, r1=|z1|, c=pixel, iter=1, maxr=real(p1), count=0
  b1=maxr, fac=b1^0.125, b2=b1*fac, b3=b2*fac
  b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
  iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0
  inspeed=real(p2)*pi*255/128
  outspeed=imag(p2)*pi*255/128:
  iter=iter+1, z2=sqr(z1)+c, r2=|z2|
  IF (r1>r2)
    count=count+1
  ENDIF
  z1=z2, r1=r2
  IF (r2>b1)
    IF (iter1==0)
      iter1=iter, q1=count/iter
    ENDIF
    IF (r2>b2)
      IF (iter2==0)
        iter2=iter, q2=count/iter
      ENDIF
      IF (r2>b3)
        IF (iter3==0)
          iter3=iter, q3=count/iter
        ENDIF
        IF (r2>b4)
          IF (iter4==0)
            iter4=iter, q4=count/iter
          ENDIF
          IF (r2>b5)
            IF (iter5==0)
              iter5=iter, q5=count/iter
            ENDIF
            IF (r2>b6)
              IF (iter6==0)
                iter6=iter, q6=count/iter
              ENDIF
              IF (r2>b7)
                IF (iter7==0)
                  iter7=iter, q7=count/iter
                ENDIF
                IF (r2>b8)
                  IF (iter8==0)
                    iter8=iter, q8=count/iter
                  ENDIF
                  iter=-1
                  q=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
                  angle=q*outspeed
                  z=cos(angle)+flip(sin(angle))
                ENDIF
              ENDIF
            ENDIF
          ENDIF
        ENDIF
      ENDIF
    ENDIF
  ENDIF
  IF (iter==maxit)
    q=count/iter
    angle=q*inspeed
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


avetriang_man {
        ; Average together 8 Mandelbrots with same c, different bailouts.
        ; Each iteration, see where |sqr(z)+c| lies between minimum
        ; and maximum bounds given by triangle inequality.
        ; Form scale = (|sqr(z)+c| - min)/(max - min).
        ; Colors by average scale, use "decomp=256" coloring.
        ; real(p1)=bailout >> 4, try 1e6
        ; imag(p1)=coloring "speed" > 0, try 10
        c=zc=pixel, rc=cabs(c), r2zc=|zc|
        iter=1, k=flip(imag(p1)), tot=0
  b1=real(p1), fac=b1^0.125, b2=b1*fac, b3=b2*fac
  b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
  iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0:
  iter=iter+1, z2=sqr(zc)+c, rz2=cabs(z2),
  fac=abs(r2zc-rc), q=(rz2-fac)/(r2zc+rc-fac), tot=tot+q
  zc=z2, r2zc=|zc|
  IF (r2zc>b1)
    IF (iter1==0)
      iter1=iter, q1=tot/iter
    ENDIF
    IF (r2zc>b2)
      IF (iter2==0)
        iter2=iter, q2=tot/iter
      ENDIF
      IF (r2zc>b3)
        IF (iter3==0)
          iter3=iter, q3=tot/iter
        ENDIF
        IF (r2zc>b4)
          IF (iter4==0)
            iter4=iter, q4=tot/iter
          ENDIF
          IF (r2zc>b5)
            IF (iter5==0)
              iter5=iter, q5=tot/iter
            ENDIF
            IF (r2zc>b6)
              IF (iter6==0)
                iter6=iter, q6=tot/iter
              ENDIF
              IF (r2zc>b7)
                IF (iter7==0)
                  iter7=iter, q7=tot/iter
                ENDIF
                IF (r2zc>b8)
                  IF (iter8==0)
                    iter8=iter, q8=tot/iter
                  ENDIF
                  qave=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
                  z=exp(qave*k)
                ENDIF
              ENDIF
            ENDIF
          ENDIF
        ENDIF
      ENDIF
    ENDIF
  ENDIF
  r2zc <= b8
  ;SOURCE: 98msg.frm
}


avw-2 {; Linda Allison Variation by wizzle 1998
  z=0
  c=log(sqr(conj(pixel))*pixel)*0.2:
  z2=fn1(z)+c
  z=c*(1-z2*z2)/(1+z2*z2)
  |z|<=p1
  ;SOURCE: 98msg.frm
}


axi1 {
  z=pixel:
  z=(fn1(z+(z+whitesq))/fn2(z)^2)-p1
  |z|<=4
  ;SOURCE: ad5.frm
}


axi2 {
  z=pixel:
  z=fn3((z-1)*1/fn1(1/z))^fn2(z+whitesq)
  |z|<=4
  ;SOURCE: ad5.frm
}


axi3 {
  z=pixel, o=(z+whitesq):
  z=fn1(o+(fn1(fn2(z)/fn3(z)^p1)))
  |z|<=4
  ;SOURCE: ad5.frm
}

