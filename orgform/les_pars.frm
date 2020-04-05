; This file (les_pars.frm) contains the various formulas which are required
; for the following par files by Les St Clair:
; ad2_zoom.par (1996)
; bj_lf13.par (1996)
; hipquiz.par (1996)
; hypnotic.par (1996)
; kscope.par (1997)
; lesfrm01.par (1995)
; lesfrm02.par (1996)
; lesfrm03.par (1996)
; lesfrm04.par (1996)
; lesvol1.par (1994-1995)
; sylvie.par (1996)
; sylvie2.par (1996)
; sylvie3.par (1996)
; sylvie4.par (1997)
; tent_mod.par (1997)
; zurreal.par (1996)
;
; This compilation 03/01/98
; les_stclair@compuserve.com


-c006 { ; Formula by Alex Dukay
  z=pixel,c1=(fn3(1/z+1)^fn4(imag/z+1))/2:
  z=(fn1(z^22)+fn2(z^7))^c1
  |z|<=4
  ;SOURCE: new.frm
}

a0a01 { ; Formula by Alex Dukay
        ; Revised 4/27/96 to eliminate superfluous "+c"
  z=pixel,x=-pixel,y=real(-pixel):
  a=(z^22)+x
  b=(z/7)+y
  z=fn1(a+b)+fn2(a^b)
  |z|<=4
  ;SOURCE: new.frm
}

a0a07 { ; Formula by Alex Dukay
        ; Revised 4/27/96 to eliminate superfluous "+c"
  z=pixel:
  z=(fn1(z)/7)^fn2((z)^22)
  |z|<4
  ;SOURCE: new.frm
}

a0a08 { ; Formula by Alex Dukay
        ; Revised 4/27/96 to eliminate superfluous "+c"
  z=pixel:
  z=(fn1(z)/7)^fn2((z)/22)
  |z|<4
  ;SOURCE: new.frm
}

a0b1 { ; Formula by Alex Dukay
       ; Revised 4/27/96 to eliminate superfluous "+c"
  z=pixel,x=fn3(p1+real(z+1)):
  z=fn1(1-fn2((z)^x))
  |z|<4
  ;SOURCE: new.frm
}

Bali {; The difference of two squares
      ; author unknown
  z=x=1/pixel, c= fn1 (z):
  z = (x+c) * (x-c)
  x=fn2(z)
  |z| <=3
  ;SOURCE: fractint.frm
}

BJ-Lesfrm13-001 {; Modified Les St Clair formula "Lesfrm13" 
                 ; formula modification by Brian E. Jones
  z = pixel
  x = fn1(z) , y = fn2(z):
  x = x*p1*pi
  y = y*p2*pi 
  z = fn4(fn3(x)/y)
  |z| <= 4
  ;SOURCE: modles13.frm
}

BJ-Lesfrm13-004 {; Modified Les St Clair formula "Lesfrm13"
                 ; formula modification by Brian E. Jones
  z = pixel
  x = fn1(z*z) , y = fn2(z*z):
  x = fn3(x)*p1*pi
  y = fn4(y)*p2*pi 
  z = x/y
  |z| <= 4
  ;SOURCE: modles13.frm
}


BJ-Lesfrm13-005 {; Modified Les St Clair formula "Lesfrm13"
                 ; formula modification by Brian E. Jones
  z = pixel 
  x = fn1(z) , y = fn2(z):
  x = x*p1*pi
  y = y*p2*pi 
  z = fn3(x/y)/fn4(z)
  |z| <= 4
  ;SOURCE: modles13.frm
}

BJ-Lesfrm13-006 {; Modified Les St Clair formula "Lesfrm13"
                 ; formula modification by Brian E. Jones
  z = pixel 
  x = fn1(z) , y = fn2(z):
  x = fn3(z*x)*p1*pi
  y = fn4(z*y)*p2*pi 
  z = x/y
  |z| <= 4
  ;SOURCE: modles13.frm
}

CGNewton3 {; Chris Green -- A variation on newton iteration.
  ; The initial guess is fixed at (1,1), but the equation solved
  ; is different at each pixel ( x^3-pixel=0 is solved).
  ; Use floating point.
  ; Try P1=1.8.
  z=(1,1):
  z2=z*z
  z3=z*z2
  z=z-p1*(z3-pixel)/(3.0*z2)
  0.0001 < |z3-pixel|
  ;SOURCE: fractint.frm
}

Cubic (XYAXIS) {; Lee Skinner
  p = pixel, test = p1 + 3
  t3 = 3*p, t2 = p*p
  a = (t2 + 1)/t3, b = 2*a*a*a + (t2 - 2)/t3
  aa3 = a*a*3, z = 0 - a :
  z = z*z*z - aa3*z + b
  |z| < test
  ;SOURCE: fractint.frm
}

Ent {; Scott Taylor
     ; Try params=.5/.75 and the first function as exp.
     ; Zoom in on the swirls around the middle.  There's a
     ; symmetrical area surrounded by an asymmetric area.
  z = Pixel, y = fn1(z), base = log(p1):
  z = y * log(z)/base
  |z| <= 4
  ;SOURCE: fractint.frm
}

Exipi (XAXIS) { ; Lee Skinner
  s = log(-1.,0.) / (0.,1.), z = Pixel:
  z = z ^ s + pixel
  |z| <= 100
  ;SOURCE: fractint.frm
}

F'Liar1 {; Generalization by Jon Horner of Chuck Ebbert formula.
         ; X: X is as true as Y
         ; Y: Y is as true as X is false
         ; Calculate new x and y values simultaneously.
         ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = pixel:
  z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z) ) )
  fn1(abs(z))<p1
  ;SOURCE: fractint.frm
}

F'Liar1D {; Generalization by Jon Horner of Chuck Ebbert formula.
          ; X: X is as true as Y
          ; Y: Y is as true as X is false
          ; Calculate new x and y values simultaneously.
          ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = fn1(pixel):
  z = p1 - abs(imag(z)-real(z) ) + flip(p2 - abs(1-real(z)-imag(z) ) )
  |z| <1 
  ;SOURCE: liar.frm
}

Gallet-3-01 (XAXIS) {; Sylvie Gallet [101324,3444], 1996
            ; choose p1, p2 such as
            ; 0 < real(p1) < imag(p1) < real(p2) < maxiter
  z = c = pixel , z1 = c1=1.5*z , z2 = c2=2.25*z , z3 = c3=3.375*z
  l1=real(p1) , l2=imag(p1) , l3=real(p2) , bailout=16 , iter=0 :
  t1=(iter==l1) , t2=(iter==l2) , t3=(iter==l3)
  tt = 1 - (t1||t2||t3) , z = z * real(tt)
  c = c * real(tt) + c1*real(t1) + c2*real(t2) + c3*real(t3)
  z = z*z+c , iter = iter+1
  |z| <= bailout
  ;SOURCE: gallet-3.frm
}

Gallet-3-02 {; Sylvie Gallet [101324,3444], 1996
  z = pixel :
  x = real(z) , y = imag(z)
  x1 = x - p1*fn1(y+p2*fn2(y))
  y1 = y - p1*fn1(x+p2*fn2(x))
  z = x1+flip(y1)
  |z| <= 4
  ;SOURCE: gallet-3.frm
}

Gallet-3-03 {; Sylvie Gallet [101324,3444], 1996
  z = pixel :
  x = real(z) , y = imag(z)
  x1 = x - p1*fn1(y*y+p2*fn2(y))
  y1 = y - p1*fn1(x*x+p2*fn2(x))
  z = x1+flip(y1)
  |z| <= 4
  ;SOURCE: gallet-3.frm
}

Gallet-3-04 {; Sylvie Gallet [101324,3444], 1996
             ; choose p1, p2 such as
             ; 0 < real(p1) < imag(p1) < real(p2) < maxiter
  z = c = 1/(pixel-conj(1/pixel)-flip(1/pixel))
  z1 = c1=1.5*z , z2 = c2=2.25*z , z3 = c3=3.375*z
  l1=real(p1) , l2=imag(p1) , l3=real(p2) , bailout=16 , iter=0 :
  t1=(iter==l1) , t2=(iter==l2) , t3=(iter==l3)
  tt = 1 - (t1||t2||t3) , z = z * real(tt)
  c = c * real(tt) + c1*real(t1) + c2*real(t2) + c3*real(t3)
  z = z*z+c , iter = iter+1
  |z| <= bailout
  ;SOURCE: gallet-3.frm
}

Gallet-3-05 {; Sylvie Gallet [101324,3444], 1996 
  z = pixel , c = p1 , bailout = real(p3) :
  test = (flip(c*z) >= 0)
  a = (z-p2)*test , b = (z+flip(p2))*(1-test) , z = (a+b)*c 
  (sqr(real(z)) < bailout) || (sqr(imag(z)) < bailout)
  ;SOURCE: gallet-3.frm
}

Gallet-3-06 {; Sylvie Gallet [101324,3444], 1996 
  z = pixel , c = p1 , bailout = real(p3) :
  test=(z*(c-z) >= 0)
  (z=z-p2)*test + (z=z+p2)*(1-test) , z = z*c
  (sqr(real(z)) < bailout) || (sqr(imag(z)) < bailout)
  ;SOURCE: gallet-3.frm
}

Gallet-3-07 (YAXIS) {; Sylvie Gallet [101324,3444], 1996
                     ; Newton's method applied to
                     ; x -> sin(y)^2+cos(x)^3 = 0
                     ; y -> cos(x)^2+sin(y)^3 = 0
  z = 0.05/pixel , x=real(z) , y=imag(z) 
  cx=cos(x) , sx=sin(x) , cy=cos(y) , sy=sin(y) 
  cx2=cx*cx , cx3=cx2*cx , sy2=sy*sy , sy3=sy2*sy :
  d = 6*(cx*sy-4)     ; normal value -->  d = 9*(cx*sy-4)
  x = x+(sy3+3*sy*cx3-2*cx2)/(cx*sx*d)
  y = y-(cx3+3*cx*sy3-2*sy2)/(sy*cy*d)
  z = x + flip(y)
  cx=cos(x) , sx=sin(x) , cy=cos(y) , sy=sin(y) 
  cx2=cx*cx , cx3=cx2*cx , sy2=sy*sy , sy3=sy2*sy
  |sy2+cx3+flip(cx2+sy3)| > 0.00001
  ;SOURCE: gallet-3.frm
}

Gallet-3-08 {; Sylvie Gallet [101324,3444], 1996
             ; Newton's method applied to
             ; x -> sin(y)^2+cos(x) = 0
             ; y -> cos(x)^2+sin(y) = 0
  z = pixel/(1+pixel-flip(pixel)-conj(pixel)) , x=real(z) , y=imag(z)
  sx=sin(x) , sy=sin(y) , cx=cos(x) , cy=cos(y) :
  d = -1+4*sy*cx
  x = x+(sy*sy-cx+2*sy*cx*cx)/(d*sx)
  y = y-(2*cx*sy*sy+cx*cx-sy)/(d*cy)
  sx=sin(x) , sy=sin(y) , cx=cos(x) , cy=cos(y)
  z=x+flip(y)
  |sy*sy+cx+flip(cx*cx+sy)| >= 0.000001
  ;SOURCE: gallet-3.frm
}

Gallet-3-09 {; Sylvie Gallet [101324,3444], 1996
             ; Newton's method applied to
             ; x -> sin(y)^2+cos(x) = 0
             ; y -> cos(x)^2+sin(y) = 0
  z = 1+pixel-cos(pixel)-conj(1/pixel) , x=real(z) , y=imag(z)
  sx=sin(x) , sy=sin(y) , cx=cos(x) , cy=cos(y) :
  d = -1+4*sy*cx
  x = x+(sy*sy-cx+2*sy*cx*cx)/(d*sx)
  y = y-(2*cx*sy*sy+cx*cx-sy)/(d*cy)
  sx=sin(x) , sy=sin(y) , cx=cos(x) , cy=cos(y)
  z=x+flip(y)
  |sy*sy+cx+flip(cx*cx+sy)| >= 0.000001
  ;SOURCE: gallet-3.frm
}

Gallet-3-11 {; Sylvie Gallet [101324,3444], 1996 
  z = pixel^p1/p2 + p2^pixel/(p1*pixel) , p = p2/p1 :
  z = z*p
  z <= p1
  ;SOURCE: gallet-3.frm
}

Gallet-3-13 {; Sylvie Gallet [101324,3444], 1996 
  z = pixel/(pixel*pixel+1) :
  x = real(z) , y = imag(z)
  x1 = x - p1*fn1(y+p2*fn2(y))
  y1 = y - p1*fn1(x+p2*fn2(x))
  z = x1+flip(y1)
  |z| <= 4
  ;SOURCE: gallet-3.frm
}

Gallet-3-14 {; Sylvie Gallet [101324,3444], 1996 
  z = Pixel:
  z = fn1(z)+flip(fn2(z))
  (|real(z)| <= 4) || (|imag(z)| <= 4) 
  ;SOURCE: gallet-3.frm
}

Gallet-3-15 {; Sylvie Gallet [101324,3444], 1996 
  z = Pixel*(0.0,1.0) :
  n = sin(z)-z-pixel , z = z-n/(cos(z)-pixel)
  |n| > real(p1) 
  ;SOURCE: gallet-3.frm
}

Gallet-4-01 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , h = p1 , a = p2 :
   x = real(z) , y = imag(z)
   x1 = x - fn2(x + a*fn1(x+h))
   y1 = y + fn2(y + a*fn1(y+h))
   z = x1 + flip(y1)
    |z| <= 4
  ;SOURCE: gallet-4.frm
}

Gallet-4-02 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , h = p1 , a = p2 :
   x = real(z) , y = imag(z)
   y1 = y + fn2(x + a*fn1(x+h))
   x1 = x - fn2(y + a*fn1(y+h))
   z = x1 + flip(y1)
    |z| <= 16
  ;SOURCE: gallet-4.frm
}

Gallet-4-03 {; Sylvie Gallet [101324,3444], 1996
  z2 = 0 , z1 = c = pixel :
   z = fn1(z1) + p1*real(c)*fn2(z1) + p2*imag(c)*z2
   z2 = z1 , z1 = z
    |z| <= 4
  ;SOURCE: gallet-4.frm
}

Gallet-4-04 {; Sylvie Gallet [101324,3444], 1996
             ; PHC formula
  z = pixel * whitesq + (whitesq == 0 ) / pixel :
   x = real(z) , y = imag(z)
   x1 = x - p1 * fn1(y + p2*fn2(y))
   y1 = y - p1 * fn1(x + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 4
  ;SOURCE: gallet-4.frm
}

Gallet-4-05 {; Sylvie Gallet [101324,3444], 1996
             ; PHC formula
  z = pixel :
   x = real(z) , y = imag(z)
   x1 = x - p1 * fn1(y*(y - whitesq) + p2*fn2(y))
   y1 = y - p1 * fn1(x*(x - (whitesq == 0)) + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 4
  ;SOURCE: gallet-4.frm
}

Gallet-4-06 {; Sylvie Gallet [101324,3444], 1996
             ; PTC formula
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  sq3 = -0.5 + flip(sqrt(3)/2)
  c = (r == 0) + sq3*(r == 1) + conj(sq3)*(r == 2)
  z = c * pixel :
   x = real(z) , y = imag(z)
   x1 = x - p1 * fn1(y*y + p2*fn2(y))
   y1 = y - p1 * fn1(x*x + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 4
  ;SOURCE: gallet-4.frm
}

Gallet-4-07 {; Sylvie Gallet [101324,3444], 1996
             ; PHC formula
  z = 10 * pixel , bailout = real(p3)
   c = p1 * (whitesq + (0,1) * (whitesq == 0)) :
   test = flip(c*z) >= 0
   z = (z - p2 * (test - (test == 0))) * c
    abs(real(z)) < bailout || abs(imag(z)) < bailout
  ;SOURCE: gallet-4.frm
}

Gallet-4-08 {; Sylvie Gallet [101324,3444], 1996
             ; PHC formula
  z = pixel * (whitesq - (whitesq == 0))
  c = p1 , bailout = real(p3) :
   test = flip(z*(c-z)) >= 0
   z = (z - p2 * (test - (test == 0))) * c
    abs(real(z)) < bailout || abs(imag(z)) < bailout
  ;SOURCE: gallet-4.frm
}

Gallet-4-09 {; Sylvie Gallet [101324,3444], 1996
  p = (0,1) * p1 , bailout = p2
  a = pixel + p , b = pixel - p :
   a = fn1(a) + flip(fn2(a))
   b = fn1(b) + flip(fn2(b))
   z = (a + b)/2
    |a| + |b| <= bailout
  ;SOURCE: gallet-4.frm
}

Gallet-4-10 {; Sylvie Gallet [101324,3444], 1996
             ; PHC formula
  p = (0,1) * p1 * ((0,1) * whitesq - (whitesq == 0))
  a = pixel + p , b = pixel - p
  a1 = b1 = 0 , a2 = 3*a*a , b2 = 3*b*b :
   a = a^3 - a2*a + a1 , b = b^3 - b2*b + b1
   a1 = a1 + p2 , b1 = b1 + p2
   z = (a + b)/2
    |z| <= p3
  ;SOURCE: gallet-4.frm
}

Gallet-4-11 {; Sylvie Gallet [101324,3444], 1996
  p = (0,1) * p1 , bailout = p2
  a = pixel + p , b = pixel - p :
   a = fn1(a) + flip(fn2(a))
   b = fn1(b) + flip(fn2(b))
   z = (a + b) / 2
    |a| <= bailout || |b| <= bailout
  ;SOURCE: gallet-4.frm
}

Gallet-5-01 {; Sylvie Gallet [101324,3444], 1996
  sq3 = sqrt(3) , sq32 = 0.5*sq3 , l = real(p1) , h = l*sq32 , l3 = 3*l
  h2 = 2*h , h3 = 3*h , h4 = h2 + h2 , l15 = 0.5*l3
  c1 = 0.5*l + flip(h) , c2 = l , rot = -0.5 + flip(sq32)
  y = imag(pixel) , x = real(pixel) - y/sq3
  y = y - floor(y/h3)*h3 , x = x - floor(x/l3)*l3 + y/sq3
  d = 0.5*y + sq32*x - h3 , x = x - d*sq3*(d>0) , y = y - d*(d>0)
  y = y - h2*(y>h2)
  t = y < sq3*x-h4 , x = x - l15*t , y = y + h*t
  q1 = abs(floor(y / h))
  d2 = -sq32*x + 0.5*y , q2 = abs(floor(d2 / h))
  d3 = sq32*x + 0.5*y - h , q3 = abs(floor(d3 / h))
  q = q1 + q2 + q3 , odd = q != 2*floor(q/2)
  y = y*(odd==0) + (h2-y)*odd
  t = y > -sq3*x + h4 , x = x - l15*t , y = y - h*t
  z = x + flip(y) , z = z * (y<=h) + ((z-c1)*conj(rot) + c1) * (y>h)
  x = real(z) , z = z * (x<l) + ((z-c2)*rot + c2) * (x>=l)
  z = c = p2*z + p3 :
   z = z*z + c
    |z| <= 4
  ;SOURCE: gallet-5.frm
}

Gallet-5-03 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z), y = imag(z) :
   x1 = x*x + p1*fn1((y) + fn2(p2*y))
   y1 = y*y + p1*fn1((x) + fn2(p2*x))
   x = x1 , y = y1
   z = fn3(x * y)
    |z| <= p3
  ;SOURCE: gallet-5.frm
}

Gallet-5-04 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z) , y = imag(z)
  rp1 = real(p1) , ip1 = imag(p1) :
   exp2x = exp(2*x) , exp3y = exp(3*y)
   fx = x * exp3y - rp1 , fy = y*(1 + exp2x) - ip1
   a = exp3y , b = 3*x * exp3y , c = 2*y * exp2x , d = 1 + exp2x
   div = a*d - b*c,
   z = z - ((d*fx-b*fy) + flip(-c*fx+a*fy)) / div
   x = real(z) , y = imag(z)
    |fx| > p2 || |fy| > p2
  ;SOURCE: gallet-5.frm
}

Gallet-5-05 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = z , y = conj(z) :
   hx = p1*fn1(x) , hy = p1*fn2(y)
   x = x + hy , y = y + hx
   z = x + flip(y)
    (|hx|+|hy|) >= p2
  ;SOURCE: gallet-5.frm
}

Gallet-5-08 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z) , y = imag(z) :
   x1 = x - p1*fn1(y + fn2(p2*x) + fn3(p3*y))
   y1 = y - p1*fn1(x + fn2(p2*y) + fn3(p3*x))
   x = x1 , y = y1
   z = x + flip(y)
    |z| <= 32
  ;SOURCE: gallet-5.frm
}

Gallet-5-09 {; Sylvie Gallet [101324,3444], 1996
             ; PHC formula
  z = pixel * (whitesq - 0.5*(whitesq == 0 )) :
   x = real(z) , y = imag(z)
   x1 = x - p1 * fn1(y + p2*fn2(y))
   y1 = y - p1 * fn1(x + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 64
  ;SOURCE: gallet-5.frm
}

Gallet-6-01 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z) , y = imag(z) :
   x1 = x - p1*fn1(y + p2*fn2(x - p3*fn3(y)))
   y1 = y - p1*fn1(x + p2*fn2(y - p3*fn3(x)))
   x = x1 , y = y1
   z = x + flip(y)
    |z| <= 32
  ;SOURCE: gallet-6.frm
}

Gallet-6-02 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z) , y = imag(z) :
   hx = p1*fn1(x + p2*fn2(y)) , hy = p1*fn1(y + p2*fn2(x))
   x = x + hy , y = y + hx
   z = x + flip(y) , mhx = |hx| , mhy = |hy|
    (mhx+mhy) >= p3 && mhx <= 1e35 && mhy <= 1e35
  ;SOURCE: gallet-6.frm
}

Gallet-6-03 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z) , y = imag(z) :
  x2 = x*x , y2 = y*y
   x1 = x2 - p1*fn1(y2 + fn2(p2*x) + fn3(p3*y))
   y1 = y2 - p1*fn1(x2 + fn2(p2*y) + fn3(p3*x))
   x = x1 , y = y1
   z = x + flip(y)
    |z| <= 32
  ;SOURCE: gallet-6.frm
}

Gallet-6-04 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z) , y = imag(z) :
   x1 = x - p1*fn1(y + fn2(p2*x) * fn3(p3*y))
   y1 = y - p1*fn1(x + fn2(p2*y) * fn3(p3*x))
   x = x1 , y = y1
   z = x + flip(y)
    |z| <= 32
  ;SOURCE: gallet-6.frm
}

Gallet-6-05 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z) , y = imag(z) :
   x1 = x - p1*fn1(y * fn2(p2*x) + fn3(p3*y))
   y1 = y - p1*fn1(x * fn2(p2*y) + fn3(p3*x))
   x = x1 , y = y1
   z = x + flip(y)
    |z| <= 32
  ;SOURCE: gallet-6.frm
}

Gallet-6-08 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z) , y = imag(z) :
   x1 = x - p1*fn1(y + fn2(p2*x) / fn3(p3*y))
   y1 = y - p1*fn1(x + fn2(p2*y) / fn3(p3*x))
   x = x1 , y = y1
   z = x + flip(y)
    |z| <= 1024
  ;SOURCE: gallet-6.frm
}

Gallet-7-01 { ; Sylvie Gallet [101324,3444], 1997
  j = -0.5 + flip(0.5*sqrt(3)) , j2 = j*j
  z = pixel :
   x = z*j , y = z*j2
   x1 = x - p1*fn1(y + fn2(p2*z))
   y1 = y - p1*fn1(z + fn2(p2*x))
   z1 = z - p1*fn1(x + fn2(p2*y))
   z = z1 + x1*j + y1*j2
    |z| <= 32
  ;SOURCE: gallet-7.frm
  }

Gallet-7-05  { ; Sylvie Gallet [101324,3444], 1997
  x = real(pixel) , y = imag(pixel) :
   dx = p1 * fn1(fn2(y)) , dy = p1 * fn3(fn4(x))
   x = x + dx , y = y + dy
   z = x + flip(y)
    (|dx| + |dy|) >= p2
  ;SOURCE: gallet-7.frm
  }

GopalsamyFn { ; Ron Barnett
  z = pixel:
  x = real(z), y = imag(z)
  x1 = fn1(x)*fn2(y)
  y1 = fn3(x)*fn4(y)
  x2 = -2*x1*y1 + p1
  y = y1*y1 - x1*x1
  z = x2 + flip(y)
  |z| <= 100
  ;SOURCE: fractint.frm
}

inandout02 { ; Bradley Beacham
   ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
   ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = oldz = pixel:
  a = (|z| <= |oldz|) * (fn1(z)) ;IN
  b = (|oldz| < |z|) * (fn2(z))  ;OUT
  oldz = z
  z = a + b + p1
  |z| <= test
  ;SOURCE: fractint.frm
}

inandout04 { ; Bradley Beacham
   ;p1 = Parameter (default 1), real(p2) = Bailout (default 4)
   ;The next line sets k=default if p1=0, else k=p1
  k = ((1) * (|p1|<=0) + p1)
   ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = oldz = c = pixel:
  a = (|z| <= |oldz|) * (c)   ;IN
  b = (|oldz| < |z|)  * (c*k) ;OUT
  c = a + b
  oldz = z
  z = fn1(z*z) + c
  |z| <= test
  ;SOURCE: fractint.frm
}

Larry {; Mutation of 'Michaelbrot' and 'Element'
   ; Original formulas by Michael Theroux [71673,2767]
   ; For 'Michaelbrot', set FN1 & FN2 =IDENT and P1 & P2 = default
   ; For 'Element', set FN1=IDENT & FN2=SQR and P1 & P2 = default
   ; p1 = Parameter (default 0.5,0), real(p2) = Bailout (default 4)
  z = pixel
   ; The next line sets c=default if p1=0, else c=p1
  c = ((0.5,0) * (|p1|<=0) + p1)
   ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2)):
  z = fn1(fn2(z*z)) + c
  |z| <= test
  ;SOURCE: fractint.frm
}

Lesfrm01 (xaxis) {; Les St Clair, 1995
  c=z=pixel:
  z=z+(fn1(c)/fn2(z))/c^3,
  |z| <=4
  ;SOURCE: les.frm
}

Lesfrm02 (xaxis) {; Les St Clair, 1995 
  c=z=pixel:
  z=z+(fn1(z)/fn2(c))/c^3,
  |z| <=4
  ;SOURCE: les.frm
}

Lesfrm03 (xaxis) {; Les St Clair, 1995 
  z=pixel:
  z=z+(fn1(z)/fn2(z))/z^4,
  |z| <=4
  ;SOURCE: les.frm
}

Lesfrm04 (xaxis) {; Les St Clair, 1995 
  c=z=pixel:
  z=z+(fn1(c^2)/fn2(z^2))/c^4,
  |z| <=6
  ;SOURCE: les.frm
}

Lesfrm05 (xaxis) {; Les St Clair, 1996 
  c=z=pixel:
  z=z+p1/fn1(z^2)/c^3,
  |z| <=6
  ;SOURCE: les.frm
}

Lesfrm06 {; Les St Clair, 1996 
  c=z=pixel:
  z=z+p1*fn1(z/0.213)/c,
  |z| <=3
  ;SOURCE: les.frm
}

Lesfrm07 {; Les St Clair, 1996 
  c=z=pixel:
  z=z+p1*fn1(z/0.416)/c^2,
  |z| <=3
  ;SOURCE: les.frm
}

Lesfrm08 {; Les St Clair, 1996 
  c=z=pixel:
  z=z+p1*fn1(z/3.142)/c^3.142,
  |z| <=3.142
  ;SOURCE: les.frm
}

Lesfrm09 {; Les St Clair, 1996 
  c=z=tan(pixel):
  z=z+p1*fn1(z)-(fn1)*c,
  |z| <=10
  ;SOURCE: les.frm
}

Lesfrm10 {; Les St Clair, 1996 
  c=z=pixel:
  z=z+(fn1(fn2(Z)))+C/P1,
  |z|<4
  ;SOURCE: les.frm
}

Lesfrm11 {; Les St Clair, 1996 
  c=z=pixel:
  z=z+(((fn1(z)-P1)*fn2(z))/fn3(c)),
  |z|<4
  ;SOURCE: les.frm
}

Lesfrm12 {; Les St Clair, 1996
  z = pixel :
  x = fn1(z) , y = fn2(z)
  z = x*y
  |z| <= 4
  ;SOURCE: les.frm
}

Lesfrm13 {; Les St Clair, 1996
  z = pixel 
  x = fn1(z) , y = fn2(z):
  x = x*p1*pi
  y = y*p2*pi 
  z = x/y
  |z| <= 4
  ;SOURCE: les.frm
}

Lesfrm14 (xaxis) {; Les St Clair, 1996
  z = c = pixel:
  x = p1*fn1(z)
  y = p2*fn2(z)
  z = c + (x^y)
  |z| <= 4
  ;SOURCE: les.frm
}

Lesfrm15 {; Les St Clair, 1996
  z = c = pixel:
  c = p1*c 
  z = fn1(c)^pi+fn2(z)+p2*c
  |z| <= 4
  ;SOURCE: les.frm
}

Lesfrm16 {; Les St Clair, 1996
  z = c = pixel:
  x = p1*fn1(z)
  y = p2*fn2(z)
  x1= x*x
  y1= y*y
  z = c + x1/y1
  |z| <= 4
  ;SOURCE: les.frm
}

Lesfrm17 {; Les St Clair, 1996
  z = c = pixel:
  x=real(z), y=imag(z)
  x = fn1(z)*pi
  y = fn2(z)*pi
  x1 = x^2+c
  y1 = y^2-c
  z = x1/y1
  |z| <= 4
  ;SOURCE: les.frm
}

Lesfrm18 {; Les St Clair, 1996
  z = c = pixel:
  x=real(z), y=imag(z)
  x = fn1(x) + c
  y = fn2(y) + c
  x1 = p1*z + x
  y1 = p2*z + y
  z = x1^y1
  |z| <= 4
  ;SOURCE: les.frm
}

Lesfrm19 {; Les St Clair, 1996
  z = c = pixel:
  x=real(z), y=imag(z)
  x= fn1(z*x)+(p1^c)+c
  y= fn2(z*y)+(p2^c)+c
  z = x+flip(y)
  |z| <4
  ;SOURCE: les.frm
}

Lesfrm20 {; Les St Clair, 1996
  z = c = pixel:
  x=real(z), y=imag(z)
  x= fn1(x) + p1*c
  y= fn2(y) + p2*c
  z = x+flip(y)
  |z| <4
  ;SOURCE: les.frm
}

Lesfrm21 {; Les St Clair, 1996
  z = c = pixel:
  x=real(z), y=imag(z)
  x= fn1(x) + p1*c*pi
  y= fn2(y) + p2*c*pi
  z = x+flip(y)
  |z| <4
  ;SOURCE: les.frm
}

Lesfrm22 {; Les St Clair, 1996
  z = c = pixel:
  x=real(z), y=imag(z)
  x= fn1(x) + fn2(y) +p1*c*pi
  y= fn2(y) - fn1(x) +p2*c*pi
  z = x+flip(y)
  |z| <4
  ;SOURCE: les.frm
}

Lesfrm23 {; Les St Clair, 1996
  z = c = pixel:
  x=real(z), y=imag(z)
  x= fn1(z) + p1*y
  y= fn2(z) + p2*x
  z = x+flip(y) + c*c
  |z| <4
  ;SOURCE: les.frm
}

Liar1 {; by Chuck Ebbert.
       ; X: X is as true as Y
       ; Y: Y is as true as X is false
       ; Calculate new x and y values simultaneously.
       ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = pixel:
  z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z) ) )
  |z| <= 1
  ;SOURCE: fractint.frm
}

Liar3 {; by Chuck Ebbert.
   ; X: X is true to P1 times the extent that Y is true
   ; Y: Y is true to the extent that X is false.
   ; Sequential reasoning.  P1 usually 0 to 1.  P1=1 is Liar2 formula.
   ; x(n+1) = 1 - abs(p1*y(n)-x(n) );
   ; y(n+1) = 1 - abs((1-x(n+1) )-y(n) );
  z = pixel:
  x = 1 - abs(imag(z)*real(p1)-real(z) )
  z = flip(1 - abs(1-real(x)-imag(z) ) ) + real(x)
  |z| <= 1
  ;SOURCE: fractint.frm
}

Liar4 {; by Chuck Ebbert.
       ; X: X is as true as (p1+1) times Y
       ; Y: Y is as true as X is false
       ; Calculate new x and y values simultaneously.
       ; Real part of p1 changes probability.  Use floating point.
       ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = pixel, p = p1 + 1:
  z = 1-abs(imag(z)*p-real(z))+flip(1-abs(1-real(z)-imag(z)))
  |z| <= 1
  ;SOURCE: fractint.frm
}

M_TchebychevC5 { ; Rob Den Braasem
  c = P1, z = Pixel:
  z = c*z*(z*z*(z*z-5)+5)
  |z|<100
  ;SOURCE: fractint.frm
}

many_man{; Modified Stephen C. Ferguson formula
      ; adapted for Fractint by Les St Clair, 1997
      ; use real p1 to set bailout (try p1=4)
      ; use real p2 to set number of mandels
      ; set fn1=ident, fn2=log for "default" formula
z=0, c=pixel:
z=(z*z)+fn1(fn2(c^p2)/p2)
|z| <=p1
}


Moe {; Mutation of 'Zexpe'.
     ; Original formula by Lee Skinner [75450,3631]
     ; For 'Zexpe', set FN1 & FN2 =IDENT and P1 = default
     ; real(p1) = Bailout (default 100)
  s = exp(1.,0.), z = pixel, c = fn1(pixel)
     ; The next line sets test=100 if real(p1)<=0, else test=real(p1)
  test = (100 * (real(p1)<=0) + real(p1) * (0<p1)):
  z = fn2(z)^s + c
  |z| <= test
  ;SOURCE: fractint.frm
}

MTet (XAXIS) {; Mandelbrot form 1 of the Tetration formula --Lee Skinner
  z = pixel:
  z = (pixel ^ z) + pixel
  |z| <= (P1 + 3)
  ;SOURCE: fractint.frm
}

OK-36 {; DISSECTED MANDELBROT
   ; TO GENERATE "STANDARD" MANDELBROT, SET P1 = 0,0 & ALL FN = IDENT
   ; Bradley Beacham 
  z = pixel, cx = fn1(real(z)), cy = fn2(imag(z)), k = 2 + p1:
  zx = real(z), zy = imag(z)
  x = fn3(zx*zx - zy*zy) + cx
  y = fn4(k * zx * zy) + cy
  z = x + flip(y)
  |z| <  (10 + p2)
  ;SOURCE: fractint.frm
}

REB005F {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  x = real(z), y = imag(z)
  const = x*x + y*y
  x1 = -fn1((const - 12*x)*x/(4*const))
  y1 = -fn2((const + 12*y)*y/(4*const))
  x2 = x1*x1 - y1*y1 + p1
  y2 = 2*x1*y1
  z = x2 + flip(y2)
  |z| <= 100
  ;SOURCE: fractint.frm
}

Sterling (XAXIS) {; W. Leroy Davis
  z = Pixel:
  z = ((z/2.7182818)^z)/sqr(6.2831853*z)
  |z| <= 4
  ;SOURCE: fractint.frm
}

t6 { ; Formula by Alex Dukay
     ; Revised 4/27/96 to eliminate superfluous "+c"
  z=(pixel^(1/tan(pixel^p1)))^(fn1(pixel^(1/pixel^p2))):
  z=fn2(z^fn3(1/z^2.5878))
  |real(z)|<=4
  ;SOURCE: new.frm
}


t7 { ; Formula by Alex Dukay
     ; Revised 4/27/96 to eliminate superfluous "+c"
  z=(pixel^(1/tan(pixel^p1)))^(fn1(pixel^(1/pixel^p2))):
  z=fn2(z^fn3(1/z^2.5878))
  |z|<=4
  ;SOURCE: new.frm
}

tent_in_mod { ; Modified Sylvie Gallet formula
              ; Modified tent_inside.frm (generalized by Les St Clair)
              ; use fn1,fn2,fn4=abs & fn3=cabs for default behaviour
              ; set p1=0, p2=0.001 for default behaviour
   IF (p1 || flip(p1))
    r = p1
   ELSE
    r = 1
   ENDIF
   z = 0 :
   l = r+p1
   z = z*z + pixel
   UV = (5,5) - fn1((5,5) - fn2(z))
   r = fn3(UV)
    fn4(l-r) >= p2 && r < 4
  }

TSinh (XAXIS) {; Tetrated Hyperbolic Sine - Improper Bailout
               ; Lee H. Skinner
  z = c = sinh(pixel):
  z = c ^ z
  z <= (p1 + 3)
  ;SOURCE: fractint.frm
}

u4 { ; Formula by Alex Dukay
  z=pixel,t=fn1(z^(2.2)),u=sin(z*z/(z+.2)),n=flip(z-real(log(z))):
  z=(fn2(z*z/(z+.2))/asin(z-flip(log(z))))^fn3(t+u+n)
  |z|<=4                         
  ;SOURCE: new.frm
}

ULI_6 { ; author unknown
  z = Pixel:
  z = fn1(p1+z)*fn2(p2-z)
  |z| <= p2+16
  ;SOURCE: fractint.frm
}

Zeppo {; Mutation of 'Liar4'.
       ; Original formula by Chuck Ebbert [76306,1226]
       ; For 'Liar4' set FN1 & FN2 =IDENT and P1 & P2 = default
       ; p1 & p2 = Parameters (default 1,0 and 0,0)
  z = pixel
       ; The next line sets p=default if p1=0, else p=p1
  p = (1 * (|p1|<=0) + p1):
  z =fn1(1-abs(imag(z)*p-real(z)))+flip(fn2(1-abs(1-real(z)-imag(z))))-p2
  |z| <= 1
  ;SOURCE: fractint.frm
}

Zurreal {; Vincent Damion Presogna 
  z = pixel:
  z = fn1(z) + pixel
  z = fn2(1/sqr(z))/z + p1 
  |z| <= 4
  ;SOURCE: surreal.frm
}
