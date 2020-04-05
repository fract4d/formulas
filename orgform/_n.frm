

N-XY-XWrotation {; Jim Muth, thanks to Benno Schmid
   ; real(p1)=rotation angle in degrees, imag(p1)=power of Z
   ; p2=parallel planes, p3=rotation point and parallel planes
  a=real(p1), b=imag(p1)
  z=sin(a*.01745329251994)*flip(imag(pixel))+p2
  c=cos(a*.01745329251994)*flip(imag(pixel))+real(pixel)+p3:
  z=z^b+c
  |z| <= 16
  ;SOURCE: 98msg.frm
}


N-XY-XZrotation {; formula, Jim Muth
   ; real(p1)=rotation angle in degrees, imag(p1)=power of Z
   ; p2=parallel planes, p3=rotation point and parallel planes
  a=real(p1), b=imag(p1)
  z=sin(a*.01745329251994)*imag(pixel)+p2
  c=cos(a*.01745329251994)*flip(imag(pixel))+real(pixel)+p3:
  z=z^b+c
  |z| <= 16
  ;SOURCE: 98msg.frm
}


N-XY-YWrotation {; Jim Muth, thanks to Benno Schmid
   ; real(p1)=rotation angle in degrees, imag(p1)=power of Z
   ; p2=parallel planes, p3=rotation point and parallel planes
  a=real(p1), b=imag(p1)
  z=sin(a*.01745329251994)*flip(real(pixel))+p2
  c=cos(a*.01745329251994)*real(pixel)+flip(imag(pixel))+p3:
  z=z^b+c
  |z| <= 16
  ;SOURCE: 97msg.frm
}


N-XY-YZrotation {; Jim Muth, thanks to Benno
   ; real(p1)=rotation angle in degrees, imag(p1)=power of Z
   ; p2=parallel planes, p3=rotation point and parallel planes
  a=real(p1), b=imag(p1)
  z=sin(a*.01745329251994)*real(pixel)+p2
  c=cos(a*.01745329251994)*real(pixel)+flip(imag(pixel))+p3:
  z=z^b+c
  |z| <= 16
  ;SOURCE: 97msg.frm
}


N1 (XYAXIS) {    
  z=pixel:  
  z=1/sin(1/(z*pixel))             
  |z|<=4
  ;SOURCE: fixrch.frm
}


N10 (XYAXIS) {
  z=pixel:
  z=1/sinh(1/(z*pixel))*pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


N11 (XYAXIS) {
  z=pixel:
  z=1/cosh(1/(z*pixel))
  |z|<=4
  ;SOURCE: fixrch.frm
}


N12 (XAXIS) {
  z=pixel:
  z=1/cosh(1/(z*pixel))+pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


N13(XYAXIS) {
  z=pixel:
  z=1/cosh(1/(z*pixel))*pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


N15 (XAXIS) {
  z=pixel:
  z=(sin(z*z*sin(1/(z*z))))+pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


N16 (XYAXIS) {
  z=pixel:
  z=(sin(z*z*sin(1/(z*z))))*pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


N2 (XAXIS) {
  z=pixel:
  z=(1/sin(sinh(z*pixel)))*pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


N2_1 (XYAXIS) {
  z=pixel:
  z=sin(sinh(z*pixel))*pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


N2_2 (XYAXIS) {
  z=pixel:
  z=sin(sinh(z*pixel))+pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


N3 (XAXIS) {
  z=pixel:
  z=1/sin(1/((z^z)*pixel))
  |z|<=4
  ;SOURCE: fixrch.frm
}


N3_1 (XAXIS) {
  z=pixel:
  z=1/sin(1/((z^z)*pixel))+pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


N3_1ch (XAXIS) { 
  z=pixel:
  z=1/cosh(1/((z^z)*pixel))+pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


N3_1cosh (xyaxis) {
  z=pixel:
  z=1/cosh(1/((z^z)*pixel))+pixel
  |z|<=4 
  ;SOURCE: formtype.frm
}


N3_1sh (XAXIS) {
  z=pixel:
  z=1/sinh(1/((z^z)*pixel))+pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


N3_1sinh (xyaxis) {
  z=pixel:
  z=1/sinh(1/((z^z)*pixel))+pixel
  |z|<=4 
  ;SOURCE: formtype.frm
}


N3_2 (XAXIS) {
  z=pixel:
  z=1/sin(1/((z^z)*pixel))*pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


N3_2ch (XAXIS) {
  z=pixel:
  z=1/cosh(1/((z^z)*pixel))*pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


N3_2cosh (xyaxis) {
  z=pixel:
  z=1/cosh(1/((z^z)*pixel))*pixel
  |z|<=4 
  ;SOURCE: formtype.frm
}


N3_2sh (XAXIS) {
  z=pixel:
  z=1/sinh(1/((z^z)*pixel))*pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


N3_2sinh (xyaxis) {
  z=pixel:
  z=1/sinh(1/((z^z)*pixel))*pixel
  |z|<=4 
  ;SOURCE: formtype.frm
}


N3_cosh (xyaxis) {
  z=pixel:
  z=1/sinh(1/((z^z)*pixel))
  |z|<=4 
  ;SOURCE: formtype.frm
}


N3_sinh (xyaxis) {
  z=pixel:
  z=1/sinh(1/((z^z)*pixel))
  |z|<=4 
  ;SOURCE: formtype.frm
}


N3sh (XAXIS) {
  z=pixel:
  z=1/sinh(1/((z^z)*pixel))
  |z|<=4
  ;SOURCE: fixrch.frm
}


N4 (XYAXIS) {
  z=pixel:
  z=(1/sin(1/(z*pixel)))*pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


N5 (XYAXIS) {
  z=pixel:
  z=(1/sin(1/(z*pixel)))+pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


N5fn1[fn2] { 
  z = pixel+1/fn1(p2 * fn2(pixel-p1)), Root = 1:
  z = (4 * z^5 + Root) / (5 * z^4)
  0.001 <= |z^5 - Root|
  ;SOURCE: crazynwt.frm
}


N6 (XAXIS) {
  z=pixel:
  z=(1/cos(1/(z*z)))+pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


N7 (XAXIS) {
  z=pixel:
  z=(1/cos(1/(z*pixel)))+pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


N8 (XYAXIS) {
  z=pixel:
  z=1/sinh(1/(z*pixel))
  |z|<=4
  ;SOURCE: fixrch.frm
}


N9 (XAXIS) {
  z=pixel:
  z=1/sinh(1/(z*pixel))+pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


N_n (XYAXIS) {
  z=pixel:
  z=(1/sin(1/(z^2*pixel)))
  |z|<=4
  ;SOURCE: fixrch.frm
}


N_n1 (XYAXIS) {
  z=pixel:
  z=(1/sin(1/(z^2*pixel)))*pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


na1 {
  z=(pixel), t=(p1*(z+fn4(z-1)))/p2:
  z2=fn1(t)+whitesq,z3=fn4(z-(1-z))
  z=(z*fn2(z3))+fn3(z2)
  |z|<4  
  ;SOURCE: ad99_1.frm
}


Natura (xyaxis) {; phi yoni
  z = pixel:
  z = z*z*z + ((sqrt 5 + 1)/2) 
  |z| <= 4
  ;SOURCE: drcha.frm
}


nct0 {
  z=pixel, x=real(z), y=real(z):
  z=(fn2(z*(fn1(1-((x+y)+(y*y)))))+whitesq)
  |z|<=4
  ;SOURCE: ad978-1.frm
}


nearline-theta_jul {; Kerry Mitchell
        ;
        ; color Julia sets with nearest approach to a given line
        ; line through origin has angle theta to x-axis
        ;
        ; use outside=iter, decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (large--try 1e12)
        ; imag(p2) = angle of line, in degrees (try 45)
        ; zc is the variable used for iteration, z for coloring
        ;
  zc=pixel, c=p1, maxr=real(p2), minr=maxr, iter=1
  theta=imag(p2)*pi/180, ct=cos(theta), st=sin(theta):
        ;
        ; iteration
        ;   find distance to line, r
        ;   if r < minimum, update minimum to r
        ;
  iter=iter+1, zc=sqr(zc)+c, rzc=|zc|
  r=|ct*imag(zc)-st*real(zc)|
  IF (r<minr)
    minr=r
  ENDIF
        ;
        ; bailout--take log of minimum distance as decomp angle
        ;
  IF ((rzc>maxr)||(iter==maxit))
    iter=-1
    angle=log(minr)
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
;******************Kerry Mitchell's explanation of "nearline" formulas**
;  applicable to
;     nearline-theta_jul (above)
;     nearline-theta_man 
;     nearline01_jul 
;     nearline02_jul 
;     nearline03 
;
; narrative copyright Kerry Mitchell, 1998
;
; Near to a given line
;
; This method (also called, "nearline") is an extension of Fractint's
; bof60 scheme.  In bof60, the question is asked, "how close does the
; orbit come to the origin?", or, "what is the minimum magnitude of the
; iterate?"  In nearline, we are curious about approach to a given line,
; instead of the origin [the origin is the point 0+0i in the complex
; plane, also written (0,0)].  The lines in question are all straight and
; pass through the origin, so they have the equation, y=kx.  The slope of
; the line, k, is equal tan(theta), where theta is the angle of the line
; with respect to the x-axis.  Given that tan = sin/cos, an alternative
; way to write the equation of the line is to define a distance quantity,
; r, and set r equal to 0:
;
; r = cos(theta) * y - sin(theta) * x = 0.
;
; So the basis of this coloring method is, for a given theta, what is the
; minimum value of |r|?
;
; Given a minimum value of |r| for the orbit, the formulas plot the results
; by taking the log of |r|, and using that as the polar angle of z for the
; decomposition coloring.  This has the advantage of being able to handle a
; wide range of values without rescaling, and compressing them into a small
; variable space.  Decomposition wraps automatically, so no clipping is
; encountered if the color overruns the 0 - 255 index range.  And, the log
; function is only executed once per orbit, so the time penalty is minimal.
; 
; The general nature of this coloring is a series of lines, starting at the
; fractal boundary and heading to infinity, asymptotic to the angle theta.
; How these lines interact and intersect varies greatly with the choice of
; theta.  Specifically, it is not clear what values of theta to choose to
; cause the lines to intersect at the origin.  However, the lines can be
; chosen in terms of iterations instead of angle.  The first iterate of (0,0)
; is simply c, so, from the above equation, we can force the lines to cross
; at the origin after 1 iteration by making
;
; r = imag(c) * x - real(c) * y,
; 
; and clearly, r will be 0 at the origin at the first iteration.
; Similarly, if we define
;
; zero2 = c*c + c
;       = the second iterate of (0,0), and
;
; zero3 = zero2*zero2 + c
;       = the third iterate of (0,0), then
;
; r = imag(zero2) * x - real(zero2) * y
;
; will cause an intersection at the second iteration, and
;
; r = imag(zero3) * x - real(zero3) * y
;
; will cause an intersection at the third iteration.  These techniques
; are employed in nearline01_jul, -02_jul, and -03_jul, respectively.
; Such actions are not required for the Mandelbrot variation, since the
; origin is a fixed point, and all its iterates are zero.
;
; While initially an external coloring scheme, this method works for
; the inside as well.  Fundamentally, there's no difference between the
; fractal interior and exterior with this method, so the formulas force
; all iterations to escape, allowing interior points to be rendered via
; decomposition, instead of relying on "inside=zmag".
;
  ;SOURCE: 98msg.frm
}


nearline-theta_man {; Kerry Mitchell
        ; See the end of nearline_theta_jul for Kerry Mitchell's 
        ; explanation of the development of these "nearline" formulas.
        ;
        ; color Mandelbrot set with nearest approach to a given line
        ; line through origin has angle theta to x-axis
        ;
        ; use outside=iter, decomp=256
        ; real(p1) = bailout (large--try 1e12)
        ; imag(p1) = angle of line, in degrees (try 45)
        ; zc is the variable used for iteration, z for coloring
        ;
  zc=0, c=pixel, maxr=real(p1), minr=maxr, iter=1
  theta=imag(p1)*pi/180, ct=cos(theta), st=sin(theta):
        ;
        ; iteration
        ;   find distance to line, r
        ;   if r < minimum, update minimum to r
        ;
  iter=iter+1, zc=sqr(zc)+c, rzc=|zc|
  r=|ct*imag(zc)-st*real(zc)|
  IF (r<minr)
    minr=r
  ENDIF
        ;
        ; bailout--take log of minimum distance as decomp angle
        ;
  IF ((rzc>maxr)||(iter==maxit))
    iter=-1
    angle=log(minr)
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


nearline01_jul {; Kerry Mitchell
        ; See the end of nearline_theta_jul for Kerry Mitchell's 
        ; explanation of the development of these "nearline" formulas.
        ;
        ; color Julia sets with nearest approach to a given line
        ; line given by parameter c (first iterate of 0)
        ; so color lines pass through 0 on first iteration
        ;
        ; use outside=iter, decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (large--try 1e12)
        ; zc is the variable used for iteration, z for coloring
        ;
  zc=pixel, c=p1, maxr=real(p2), minr=maxr
  ct=imag(c), st=real(c), iter=1:
        ;
        ; iteration
        ;   find distance to line, r
        ;   if r < minimum, update minimum to r
        ;
  iter=iter+1, zc=sqr(zc)+c, rzc=|zc|
  r=|ct*real(zc)-st*imag(zc)|
  IF (r<minr)
    minr=r
  ENDIF
        ;
        ; bailout--take log of minimum distance as decomp angle
        ;
  IF ((rzc>maxr)||(iter==maxit))
    iter=-1
    angle=log(minr)
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


nearline02_jul {; Kerry Mitchell
        ; See the end of nearline_theta_jul for Kerry Mitchell's 
        ; explanation of the development of these "nearline" formulas.
        ;
        ; color Julia sets with nearest approach to a given line
        ; line given by sqr(c)+c (second iterate of 0)
        ; so color lines pass through 0 on second iteration
        ;
        ; use outside=iter, decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (large--try 1e12)
        ; zc is the variable used for iteration, z for coloring
        ;
  zc=pixel, c=p1, maxr=real(p2), minr=maxr
  zero2=sqr(c)+c, ct=imag(zero2), st=real(zero2), iter=1:
        ;
        ; iteration
        ;   find distance to line, r
        ;   if r < minimum, update minimum to r
        ;
  iter=iter+1, zc=sqr(zc)+c, rzc=|zc|
  r=|ct*real(zc)-st*imag(zc)|
  IF (r<minr)
    minr=r
  ENDIF
        ;
        ; bailout--take log of minimum distance as decomp angle
        ;
  IF ((rzc>maxr)||(iter==maxit))
    iter=-1
    angle=log(minr)
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


nearline03_jul {; Kerry Mitchell
        ; See the end of nearline_theta_jul for Kerry Mitchell's 
        ; explanation of the development of these "nearline" formulas.
        ;
        ; color Julia sets with nearest approach to a given line
        ; line given by sqr(sqr(c)+c)+c (third iterate of 0)
        ; so color lines pass through 0 on third iteration
        ;
        ; use outside=iter, decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (large--try 1e12)
        ; zc is the variable used for iteration, z for coloring
        ;
  zc=pixel, c=p1, maxr=real(p2), minr=maxr, iter=1
  zero3=c, zero3=sqr(zero3)+c, zero3=sqr(zero3)+c
  ct=imag(zero3), st=real(zero3):
        ;
        ; iteration
        ;   find distance to line, r
        ;   if r < minimum, update minimum to r
        ;
  iter=iter+1, zc=sqr(zc)+c, rzc=|zc|
  r=|ct*real(zc)-st*imag(zc)|
  IF (r<minr)
    minr=r
  ENDIF
        ;
        ; bailout--take log of minimum distance as decomp angle
        ;
  IF ((rzc>maxr)||(iter==maxit))
    iter=-1
    angle=log(minr)
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


neon {; Jim Muth
      ; Geo test copy 
  z=c=pixel:
  z=z^1.045+(.02*z^(-2))+c
  |z| <= 100
  ;SOURCE: 97msg.frm
}


nepz0 {
  z=pixel, a=fn1(z-p2), b=(a*z)-(fn2(z/p1)/sin(z)):
  z=(fn3(b+(z-p2)))+fn4(a+whitesq)
  IF (fn1(a)<fn2(1/b)*p2)
    z=(fn3(fn1(a)+fn2(b-(z^p3/z))))+whitesq
  ENDIF
  IF (fn1(b)<fn2(1/(a+p1)/p3))
    z=(fn3(fn1(a)+fn2(b-(z^p3/z))))
  ENDIF
  z=(fn3(fn1(z+(a)+whitesq)*fn2(b+(z^p3/a)))/fn4(z))+whitesq
  |z|<4
  ;SOURCE: ad5.frm
}


nepz1 {
  z=pixel, a=fn1(z-p2), b=(a*z)-(fn2(z/p1)/sin(z)):
  IF (fn1(a)<fn2(1/b)*p2)
    z=(fn3(fn1(a)+fn2(b-(z^p3/z))))+whitesq
  ENDIF
  IF (fn1(b)<fn2(1/(a+p1)/p3))
    z=(fn3(fn1(a)+fn2(b-(z^p3/z))))
  ENDIF
  z=(fn3(fn1(z+(a)+whitesq)*fn2(b+(z^p3/a)))/fn4(z))+whitesq
  |z|<4
  ;SOURCE: ad5.frm
}


nest {; Giuseppe Zito
  z = pixel
  c2 = -0.39160001
  c4 = -0.030243
  c7 = -0.49485701
  c11 = -0.59975803
  c13 = 0.21419001
  d0 = -2.75003386
  d8 = -0.15986601
  d10 = 0.215734
  d13 = 0.053922
  d14 = 0.437287
  : 
  x = real(z), y = imag(z)
  s0 = x
  s0 = s0 -x
  s0 = s0 /c2
  s0 = s0 /y
  s0 = s0 +c4
  s0 = s0 -x
  s0 = s0 /x
  s0 = s0 -c7
  s0 = s0 -x
  s0 = s0 *c11
  s0 = s0 +c13
  s0 = s0 +y
  s0 = s0 -x
  newx = s0 
  s0 =d0
  s0 = s0 -y
  s0 = s0 -x
  s1 = x
  s1 = s1 +y
  s1 = s1 *x
  s1 = s1 +d8
  s0 = s0 *s1
  s0 = s0 *d10
  s0 = s0 +y
  s1 =d13
  s1 = s1 *d14
  s0 = s0 *s1
  s0 = s0 -x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


nest1 {; Giuseppe Zito
  z = pixel
  c2 = 0.238885
  c3 = -0.792253
  c4 = 0.398388
  d0 = 0.898609
  d1 = 0.130754
  d9 = 0.29064
  : 
  x = real(z), y = imag(z)
  s0 = y
  s1 =c2
  s1 = s1 /c3
  s1 = s1 *c4
  s0 = s0 +s1
  newx = s0 
  s0 =d0
  s1 =d1
  s1 = s1 *y
  s1 = s1 *y
  s0 = s0 -s1
  s0 = s0 +y
  s0 = s0 -x
  s0 = s0 +d9
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


nest2 {; Giuseppe Zito
  z = pixel
  c0 = -0.604665
  c3 = -0.494823
  c7 = -0.714867
  c8 = -0.739509
  c14 = 0.100821
  : 
  x = real(z), y = imag(z)
  s0 =c0
  s0 = s0 +x
  s0 = s0 *x
  s0 = s0 -c3
  s1 =c7
  s1 = s1 /c8
  s1 = s1 *x
  s0 = s0 /s1
  s0 = s0 +y
  s0 = s0 +x
  s0 = s0 -c14
  newx = s0 
  s0 = y
  s0 = s0 -y
  s0 = s0 -x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


NEURONES {; Ray Girvan, June 1997
          ; Mandelbrot variant based on Earl Hinrich idea
          ; switches between z->z*z+c and z->1/(z*z+c)
          ; on alternate iterations
  z=c=pixel
  t=1:
  a=(t+1)/2
  b=1-a
  t=-t
  z=a*(z*z+c)+b/(z*z+c)
  |z|<=64
  ;SOURCE: 97msg.frm
}


NeutronJ {
  ; By: PGD. Copyright 1997 PGD. Freely distributable in unmodified form,
  ; with this notice attached.
  ; Set real(p2) to a small "epsilon", 0.001 often works well.
  ; p1 picks the Julia set.
  z=pixel, a=(0.64,0.64), c=p1, eps=real(p2):
  z2=z*z
  o=z
  z=c*(3*z2*z2+1)/(4*z2*z+a)
  |z-o|>eps
  ;SOURCE: neutron.frm
}


NeutronM {
  ; By: PGD. Copyright 1997 PGD. Freely distributable in unmodified form,
  ; with this notice attached.
  ; Set real(p2) to a small "epsilon", 0.001 often works well.
  z=0, a=(0.64,0.64), c=pixel, eps=real(p2):
  z2=z*z
  o=z
  z=c*(3*z2*z2+1)/(4*z2*z+a)
  |z-o|>eps
  ;SOURCE: neutron.frm
}


New {
   ; (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = pixel:
  z2 = z * z
  z = (3 * z2 * z - z) / (4 * z2 - 2)
  |z| <= 4
  ;SOURCE: methods.frm
}


New-2 {
   ; (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = pixel:
  z2 = z * z
  z3 = z * z2
  z = (3 * z3 * z - z2 + 1) / (4 * z3 - 2 * z)
  |z| <= 4
  ;SOURCE: methods.frm
}


New-Lin7 {; Linda Allison
  z = pixel:
  z = fn1(p1/pixel ^ z)
  |z| <= p2
  ;SOURCE: abpf96.frm
}


New1 {
  z1 = pixel, iter = 0, imag1 = imag(p1), imag1inv = 1 / imag1
  a = p1*(0,0.0245436)    ; real(p1) * 2i pi / 256
  :
  mz = cabs(z1)
  z2 = z1*z1
  z1 = (p2*z1*z2 + p3) / (3*z2)
  dz = abs(cabs(z1)-1)
  IF (dz <= imag1)
    z = exp((iter + imag1inv*dz)*a), cont = 0
  ELSEIF (mz <= 0.25)
    z = exp((256/p1-1 + 4*mz)*a), cont = 0
  ELSE
    iter = iter + 1, cont = 1
  ENDIF
  cont
  ;SOURCE: calendar.frm
}


New2 {; Sylvie Gallet, Dec 1997
      ; Use decomp = 256 and periodicity = 0
  z1 = pixel, iter = 0
  a = real(p1)*(0,0.0245436)       ; real(p1) * 2i pi / 256
  :
  mz1 = abs(cabs(z1)-1), mz2 = abs(cabs(z1)-2)
  IF (mz1 <= 0.1)
    z = exp((iter + 10*mz1)*a)
    cont = 0
  ELSEIF (mz2 <= 0.1)
    iter = iter + 1
    z = exp((iter + 10*mz2)*a)
    cont = 0
  ELSE
    z2 = z1*z1
    z1 = (3*z2*z2 - 4) / ((4*z2 - 5)*z1)
    cont = 1
    iter = iter + 1
   ENDIF
   cont
   ;SOURCE: calendar.frm
}


New3 {; Sylvie Gallet, Dec 1997
      ; Use decomp = 256 and periodicity = 0
  z1 = pixel, iter = 0
  a = real(p1)*(0,0.0245436)       ; real(p1) * 2i pi / 256
  :
  mz1 = abs(cabs(z1)-1), mz2 = abs(cabs(z1)-2)
  IF (mz1 <= 0.1)
    z = exp((iter + 10*mz1)*a)
    cont = 0
  ELSEIF (mz2 <= 0.1)
    iter = iter + 1
    z = exp((iter + 10*mz2)*a)
    cont = 0
  ELSE
    z2 = z1*z1
    z1 = (3*z2*z2 - 5*z2 - 4) / ((4*z2 - 10)*z1)
    cont = 1
    iter = iter + 1
  ENDIF
  cont
  ;SOURCE: calendar.frm
}


New_Crescent (XAXIS_NOIMAG) {; M-Set to New_Crescent
                             ; starting with w1!
                             ; (c) 1997 Bernd Lehnhoff
                             ; use floating point and periodicity=no!
                             ; p2 is a perturbation 
  IF(p2==0)
    p2=0.5
  ENDIF
  v = pixel + p2 
  a = log(|p2|)-12: 
  u = v
  w = 1 - (pixel/u)^2
  v = u-u/2*w*(1+w/4)+p2
  z = v - u
  log(|z|) >= a
  ;SOURCE: 97msg.frm
}


New_Crescent_3 {; Generalized version of Crescent
                ; (c) 1997 Bernd Lehnhoff
                ; use floating point and periodicity=no!
                ; p2 is a perturbation  
  IF(p2==0)
    p2=0.5
  ENDIF
  v = pixel
  a = log(|p2|)-12: 
  u = v
  w = 1-(pixel/u)^3
  v=u-u/3*w*(1+w/3)+p2
  z = v - u
  log(|z|) >= a
  ;SOURCE: 97msg.frm
}


New_Crescent_G {; Generalized version of Crescent
                ; (c) 1997 Bernd Lehnhoff
                ; use floating point and periodicity=no!
                ; p2 is a perturbation  
                ; p3 is the degree of the root
  IF(p2==0)
    p2=0.5
  ENDIF
  v = pixel
  a = log(|p2|)-12 
  b = .5*(p3-1)/p3: 
  u = v
  w = 1-(pixel/u)^p3
  v=u-u/p3*w*(1+b*w)+p2
  z = v - u
  log(|z|) >= a
  ;SOURCE: 97msg.frm
}


New_cron {
  z = pixel:
  z = (z*z*z)-1
  z = 2*(z*z*z)+1/3*z*z
  z = z + fn1(pixel)
  |z| < 4
  ;SOURCE: omicron.frm
}


New_Moonworld {; based on the improved Newton formula 
               ;   for quadratic polynomes
               ; (c) 1997 Bernd Lehnhoff
               ; use floating point and periodicity=no!
               ; p1 is the radicand
               ; p2 is a perturbation 
  IF(p2==0)
    p2=0.5
  ENDIF
  v = pixel
  a = log(|p2|)-12: 
  u = v
  w = 1-(p1/u)^2
  v = u-u/2*w*(1+w/4)+p2
  z = v - u
  log(|z|) >= a
  ;SOURCE: 97msg.frm
}


New_Moonworld_3 {; Generalized version of New_Moonworld
                 ; (c) 1997 Bernd Lehnhoff
                 ; use floating point and periodicity=no!
                 ; p1 is the radicand
                 ; p2 is the perturbation  
  IF(p2==0)
    p2=0.5
  ENDIF
  v = pixel 
  a = log(|p2|)-12:
  u = v
  w = 1-(p1/u)^3
  v = u-u/3*w*(1+w/3)+p2
  z = v - u
  log(|z|) >= a
  ;SOURCE: 97msg.frm
}


New_Moonworld_G {; Generalized version of New_Moonworld
                 ; (c) 1997 Bernd Lehnhoff
                 ; use floating point and periodicity=no!
                 ; p1 is the radicand
                 ; p2 is the perturbation  
                 ; p3 is the degree of the root
  IF(p2==0)
    p2=0.5
  ENDIF
  v = pixel 
  a = log(|p2|)-12
  b = .5*(p3-1)/p3: 
  u = v
  w = 1-(p1/u)^p3
  v = u-u/p3*w*(1+b*w)+p2
  z = v - u
  log(|z|) >= a
  ;SOURCE: 97msg.frm
}


New_number1 (XAXIS) {; use float=n for most configurations.
                     ; don't forget to give a non-zero value to p2
  z = z1 = z2 = pixel, c1 = real(p1), c2 = imag(p1) :
  z1 = z1*z1+c1
  z2 = z2*z2+c2
  c1 = fn1(c1/pixel)
  c2 = fn2(c2/pixel)
  z = z1 + fn3(z)*(z2-z1)
  |z| < |p2|
  ;SOURCE: lammens.frm
}


New_number2 (XAXIS) {; use float=n for most configurations.
                     ; don't forget to give a non-zero value to p2
  z = z1 = z2 = pixel, c1 = real(p1), c2 = imag(p1) :
  z1 = z1*z1+c1
  z2 = z2*z2+c2
  c1 = fn1(c1/pixel)
  c2 = fn2(c2/pixel)
  z = z1 + fn3(z-pixel)*(z2-z1)
  |z|< |p2|
  ;SOURCE: lammens.frm
}


New_number3 (XAXIS) {; use float=n for most configurations.
                     ; don't forget to give a non-zero value to p2
  z = z1 = z2 = pixel, c1 = real(p1), c2 = imag(p1) :
  z1 = z1*z1+c1
  z2 = z2*z2+c2
  c1 = fn1(c1/pixel)
  c2 = fn2(c2/pixel)
  z = (1-fn3(z1))*z1+fn3(z2)*z2
  |z|< |p2|
  ;SOURCE: lammens.frm
}


New_number4 (XAXIS) {; use float=n for most configurations.
                     ; don't forget to give a non-zero value to p2
  z = z1 = z2 = pixel, c1 = real(p1), c2 = imag(p1) :
  z1 = z1*z1+c1
  z2 = z2*z2+c2
  c1 = fn1(c1/pixel)
  c2 = fn2(c2/pixel)
  z = fn4(z1) + fn3(z)*(fn4(z2)-fn4(z1))
  |z|< |p2|
  ;SOURCE: lammens.frm
}


New_number5 (XAXIS) {; use float=n for most configurations.
                     ; don't forget to give a non-zero value to p2
  z = z1 = z2 = pixel, c1 = real(p1), c2 = imag(p1) :
  z1 = z1*z1+c1
  z2 = z2*z2+c2
  c1 = fn1(c1/pixel)
  c2 = fn2(c2/pixel)
  z = (1-fn3(z1-pixel))*fn4(z1)+fn3(z2-pixel)*fn4(z2)
  |z|< |p2|
  ;SOURCE: lammens.frm
}


New_number6 (XAXIS) {; use float=n for most configurations.
                     ; don't forget to give a non-zero value to p2
  z = z1 = z2 = pixel, c1 = real(p1), c2 = imag(p1):
  z1 = z1*z1+c1
  z2 = z2*z2+c2
  c1 = fn1(c1/pixel)
  c2 = fn2(c2/pixel)
  z = fn4(z1-pixel)*(1-fn3(z1))+fn3(z2)*fn4(z2-pixel)
  |z|< |p2|
  ;SOURCE: lammens.frm
}


newCGNewtonSinExp (XAXIS) {; replaced earlier version of this formula,
                           ; where bailout test of .0000001 has been 
                           ; changed to p2   
  z=pixel:
  z1=exp(z)
  z2=sin(z)+z1-z
  z=z-p1*z2/(cos(z)+z1)
  p2 < |z2|   ; p2 small like .0000001 or smaller, not zero
  ;SOURCE: 97msg.frm
}


newcpcb1 {
  z=pixel, a=p1:
  z=fn1(z)+fn2(z)*fn1(z^a)
  |z|<=4
  ;SOURCE: newcpc.frm
}


newcpcb2 {
  z=pixel, a=p1:
  z=(fn1(z)+fn2(z)*fn1(z))
  |z|<=4
  x=real(z)^a
  y=imag(z)^a
  a=x*y
  ;SOURCE: newcpc.frm
}


newcpcb3 {
  z=pixel, a=p1, b=p2:
  z=(fn1(z)+fn2(z)*fn1(z))^a
  |z|<=4
  x=real(z)^b
  y=imag(z)^b
  a=x+y
  ;SOURCE: newcpc.frm
}


newcpcb4 {
  z=pixel, a=p1, b=p2:
  z=(fn1(z)+fn2(z)*fn3(z))
  |z|<=16
  x=real(z)^a
  y=imag(z)^b
  a=x*y
  ;SOURCE: newcpc.frm
}


newcpcb5 {
  z=pixel, a=p1, b=p2:
  z=(fn1(z)+fn2(z)*fn3(z))
  |z|<=16
  x=real(z)^a
  y=imag(z)^b
  a=x*y
  |a|<=16
  a=fn4(a)
  ;SOURCE: newcpc.frm
}


newd01 {
  z = pixel:
  a = pixel + p1  
  b = pixel + fn1(p1)
  z = fn1(z*a) + p1
  z = b*z + pixel
  ;SOURCE: damion.frm
}


newd02 {
  z = pixel:
  z = fn1(z) + z + p1
  z = sin(1/z) + c
  z = sqr(z+z)
  ;SOURCE: damion.frm
}


newd03 {
  z = Pixel:
  z = sin(conj(z)*flip(z))+p1
  z = Sqrt(z) + pixel
  z = fn1(z+z)
  ;SOURCE: damion.frm
}


newd04 {
  z = pixel:
  z = sinh(cos(z)*tan(z)*z) 
  z = sqr(abs(z)) + p1
  z = z + pixel
  ;SOURCE: damion.frm
}


newd05 {
  z = pixel:
  a = sin(x) + cos(y)
  z = a*z*z +sin(z)
  z = fn1(z) + p1
  ;SOURCE: damion.frm
}


newd06 {
  z = pixel:
  z = z*z + (cos(p1))
  a = pixel + (z+z)
  z = fn1(z) + pixel * a
  ;SOURCE: damion.frm
}


newd07 {
  z = pixel:
  z = z*z + (cos(p1))
  a = pixel + (z+z+z)
  z = conj(z) + pixel * a
  ;SOURCE: damion.frm
}


newd08 {
  z = pixel:
  z = fn1(z) + z * sqr(cos(z)) + p1
  z = flip(z) + pixel
  z = conj(z)
  ;SOURCE: damion.frm
}


newdavidsmask (XAXIS) {
  c = pixel
  z = pixel:
  fz = (z-1)*(z - c + 0.5)*(z + c + 0.5)
  fdashz = 3*z*z - c*c - 0.75
  z = z - fz/(fdashz - P1)
  0.000001 <= |fz|
  ;SOURCE: davweird.frm
}


newdavidsmasksec (XAXIS) {
  h =  0.00001
  c = pixel
  z = pixel:
  zplh = z + h
  fz = (z-1)*(z - c + 0.5)*(z + c + 0.5)
  fzplh = (zplh-1)*(zplh - c + 0.5)*(zplh + c + 0.5)
  fdashz = (fzplh - fz)/h
  z = z - fz/(fdashz - P1)
  0.000001 <= |fz|
  ;SOURCE: davweird.frm
}


Newdragon (xaxis) {
  z=.5
  c=pixel:
  z=c*(1-z)^2
  |z| <=4
  ;SOURCE: crocker.frm
}


Newducks (XAXIS) {
  z=pixel, t=1+pixel:
  z=sqr(z)+t
  |z|<=4
  ;SOURCE: fract002.frm
}


Newfunc2  {
  z=a=b=lastz=dis=pixel, s=0:
  IF (s==0)
    lastz=z
  ENDIF
  IF (s==0)
    s=1
  ELSE
    s=0
  ENDIF
  dis=|z|-|pixel|
  a=real(z)
  b=imag(z)
  IF (|a| <= |b|+dis)&& (|a| > |b|-dis)
    z=(z-pixel)^p1 
  ELSE
    z=(z+pixel)^p2
  ENDIF
  |z| <=4
  ;SOURCE: 98msg.frm
}


NewNewton_a {
  z = pixel+1/fn1(p2 * pixel-p1)  + 1/fn2(p2 * pixel), Root = 1:
  z = (4 * z^5 + Root) / fn1(fn2(4*z^5+1)/(5*z^4)) 
  0.001<=|z^5-Root+1|
  ;SOURCE: bej3.frm
}


NewOne3 (yaxis) {; Bill Rossi
  z = pixel:
  temp1 = fn1(z) / fn2(z)
  temp2 = fn3(z) - fn4(z)
  temp3 = fn1(z) * fn3(z)
  z = temp1 / temp2 - temp3
  |z| <= 4
  ;SOURCE: brossi.frm
}


Newron {
  z = pixel:
  z = ((z*z) - 1) - 0.111111
  z = ((z*z)+1)/2*z
  |z| < 4
  ;SOURCE: omicron.frm
}


Newron_2 {
  z = pixel:
  z = z + p1
  z = ((z*z)+1)/2*z
  z = ((z*z) - 1) / fn1(z)-z 
  |z| < 4
  ;SOURCE: omicron.frm
}


newt {
   ; Playing around with variations of the ht type. 
   ; This is a frog mutation.
   ; Try values of P1 between 0.2 and 1.0 
   ; Also try the imaginary component.
  z=pixel, zp = (0,0), huge=1.0e32:
  temp = z
  z = z*-z + zp
  zp = p1/temp^.5 
  (|zp| <= 4) && (|z| <= huge) 
  ;SOURCE: noel.frm
}


Newt12-JAtan-Mset {; (c) Jay R. Hill, 1998
     ; Newton method set up as a Mandelbrot set
     ; This formula searches for 12 roots of a function
     ; Inspired by Paul Carlson's Newt5_Atan_Mset 
     ; p1=width of root finding
     ; p2=A=constant in formula
     ; F(w) = w^12 - A*w^11 - w*c + A*c
     ; F'(w) = 12*w^11 - 11*A*w^10 - c
     ; F''(w) = 132*w^10 - 110*A*w^9
     ; Set F''=0, solve for initial w, 110*A/132 = 5*A/6
     ;
  c = pixel, A=p2, z = iter = bailout = 0
  colors_in_range = 21
  R=(-1)^(2/11), R2=sqr(R)
  root1 = A, root2 = c^(1/11), root3 = root2*R, root4 = root2*R2
  root5 = root4*R, root6 = root4*R2, root7 = root6*R, root8 = root6*R2
  root9 = root8*R, root10 = root8*R2, root11 = root10*R 
  root12 = root10*R2
  w = 5*A/6
  :
  w10 = w^10
  deltaw=((w*w10 - A*w10 - c)*w + A*c)/(12*w*w10 - 11*A*w10 - c)
  w = w - deltaw
     ;
  IF (|deltaw| < p1)
    angle=abs(imag(log(deltaw)))
    range_num = (|w - root2| < p1)+2*(|w - root3| < p1)+\
      3*(|w - root4| < p1)+ 4*(|w - root5| < p1)+5*(|w - root6| < p1)+\
      6*(|w - root7| < p1)+ 7*(|w - root8| < p1)+\
      8*(|w - root9| < p1)+ 9*(|w - root10| < p1)+\
     10*(|w - root11| < p1)+11*(|w - root12| < p1)
     bailout = 1
    z = colors_in_range*(angle/pi + range_num)-angle/pi + 1
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0
  ;SOURCE: 98msg.frm
}


Newt1_Rings_Mset {; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Newton's solution of (w*w-1)*(w*w+c)=0
    ; Always use floating point math and outside=summ.
    ;
    ;   real(p1) = a factor controlling the size of the stalks
    ;   imag(p1) = minimum iterations
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in a range
    ;   real(p3) = value of |w| for bailout
    ;   imag(p3) = iterations count for early exit
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
  c = pixel
  sc = sqrt(-c)
  am = c - 1, tam = am + am
  w = sqrt((1 - c) / 6)  ; value where F''(w) = 0
  cr = real(sc), ci = imag(sc)
  z = 0
  bailout = 0
  iter = 0
  t = 0.000001
  stalk_width = real(p1)
  range_num = 0
  num_ranges = real(p2)
  colors_in_range = imag(p2)
  index_factor = (colors_in_range - 1) / stalk_width:
    ;
  w2 = w * w
  w = w - (w2 * w2 + am * w2 - c) / (4 * w2 * w + tam * w)
    ;
  wr = real(w), wi = imag(w)
  dist = abs(wr * wr + wi * wi - 0.25)
  IF (dist < stalk_width && iter > imag(p1))
    z = index_factor * dist + range_num * colors_in_range + 1
    bailout = 1
  ENDIF
  IF (iter > imag(p3))
    IF (((wr-1) * (wr-1)) < t && (wi * wi) < t)
      z = 252
      bailout = 1
    ELSEIF (((wr+1) * (wr+1)) < t && (wi * wi) < t)
      z = 252
      bailout = 1
    ELSEIF (((wr-cr) * (wr-cr)) < t && ((wi-ci) * (wi-ci)) < t)
      z = 252
      bailout = 1
    ELSEIF (((wr+cr) * (wr+cr)) < t && ((wi+ci) * (wi+ci)) < t)
      z = 252
      bailout = 1
    ENDIF
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  (bailout == 0) && |w| < real(p3)
  ;SOURCE: 98msg.frm
}


Newt1_Stalks_Mset {; Copyright (c) Paul W. Carlson, 1998
    ;
    ;   real(p1) = a factor controlling the size of the stalks
    ;   imag(p1) = minimum iterations
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in a range
    ;   real(p3) = value of |w| for bailout
    ;
  c = pixel
  cm1 = c - 1, tcm1 = cm1 + cm1
  w = sqrt((1 - c) / 6)
  z = bailout = iter = range_num = 0
  stalk_width = real(p1)
  num_ranges = real(p2)
  colors_in_range = imag(p2)
  index_factor = (colors_in_range - 1) / stalk_width
  prev_mod2 = |w|
  :
  w2 = w * w
  w = w - (w2 * w2 + cm1 * w2 - c) / (4 * w2 * w + tcm1 * w)
    ;
  IF (abs(real(w)) <= abs(imag(w)))
    dist = abs(real(w))
  ELSE
    dist = abs(imag(w))
  ENDIF
  IF (dist < stalk_width && iter > imag(p1))
    z = index_factor * dist + range_num * colors_in_range + 1
    bailout = 1
  ELSEIF (abs(|w| - prev_mod2) < 0.000001)
    bailout = 1
    z = 252
  ENDIF
  prev_mod2 = |w|
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0  && |w| < real(p3)
  ;SOURCE: 98msg.frm
}


Newt2_Stalks_Mset {; Copyright (c) Paul W. Carlson, 1998
  c = pixel
  csqd = c * c
  icsqd = 1 / csqd
  sc = sqrt(-icsqd)
  cr1 = real(c), ci1 = imag(c)
  cr2 = real(sc), ci2 = imag(sc)
  a = csqd - icsqd
  w = sqrt(a / 6)
  z = 0
  bailout = 0
  iter = 0
  stalk_width = real(p1)
  range_num = 0
  num_ranges = real(p2)
  colors_in_range = imag(p2)
  index_factor = (colors_in_range - 1) / stalk_width:
  w = (3 * (w^4) - a * (w^2) + 1) / (4 * (w^3) - 2 * a * w)
  wr = real(w), wi = imag(w)
  IF (abs(wr) <= abs(wi))
    min_dist = abs(wr)
  ELSE
    min_dist = abs(wi)
  ENDIF
  IF (min_dist < stalk_width && iter > 0)
    z = index_factor * min_dist + range_num * colors_in_range + 1
    bailout = 1
  ENDIF
  IF (iter > imag(p3))
    IF (((wr-cr1) * (wr-cr1) + (wi-ci1) * (wi-ci1)) < 0.00001)
      z = 244
      bailout = 1
    ELSEIF (((wr+cr1) * (wr+cr1) + (wi+ci1) * (wi+ci1)) < 0.00001)
      z = 245
      bailout = 1
    ELSEIF (((wr+cr2) * (wr+cr2) + (wi+ci2) * (wi+ci2)) < 0.00001)
      z = 246
      bailout = 1
    ELSEIF (((wr-cr2) * (wr-cr2) + (wi-ci2) * (wi-ci2)) < 0.00001)
      z = 247
      bailout = 1
    ENDIF
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  (bailout == 0) && |w| < real(p3)
  ;SOURCE: 98msg.frm
}


Newt3_Atan_J {; Copyright (c) Paul Carlson, 1998
    ;
    ; p1 = max. |w - root| for early bailout
    ;
  w = prev_w = pixel
  z = iter = bailout = range = 0
  root1 = (1,0)
  root2 = (-0.5,0.866025403)
  root3 = (-0.5,-0.866025403)
  :
  w2 = w * w, w3 = w2 * w
  w = w - (w3 - 1 ) / (3 * w2)
    ;
  wr = real(w), wi = imag(w)
  pr = real(prev_w), pm = imag(prev_w)
  prev_w = w
  IF (|w - root1| < p1)
    range = 0
    bailout = 1
  ELSEIF (|w - root2| < p1)
    range = 1
    bailout = 1
  ELSEIF (|w - root3| < p1)
    range = 2
    bailout = 1
  ENDIF
  IF (bailout == 1)
    index = abs(119 * (atan((wi - pm) / (wr - pr))) / pi)
    z = index + range * 60 + 1
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < 1.0e20
  ;SOURCE: 98msg.frm
}


Newt3_Atan_Mset {; Original formula by Paul Carlson
                 ; with optimizations by Sylvie Gallet
    ; F(w)   = w^3 + (c - 1) * w - c
    ; F'(w)  = 3 * w^2 + c - 1
    ; F''(w) = 6 * w,  so initialize w to zero
    ;
    ; p1 contols the "layering"
    ;
  c = pixel, c1 = c - 1
  z = iter = bailout = prev_w = w = 0
  colors_in_range = 80
  colors_in_range_1 = 79
  k = 0.5 * sqrt(1 - 4 * c)
  root1 = (1,0)
  root2 = -0.5 + k
  root3 = -0.5 - k
  :
    ;
  w2 = w * w
  w = w - (w * (w2 + c1) - c) / (3 * w2 + c1)
    ;
  delta_w = w - prev_w
  IF (|delta_w| < p1)
    angle = atan(imag(delta_w) / real(delta_w))
    IF (delta_w >= 0)
      IF (imag(delta_w) < 0)
        angle = pi + angle
      ELSE
        angle = pi - angle
      ENDIF
    ELSEIF (imag(delta_w) > 0)
      angle = -angle
    ENDIF
    IF (|w - root1| < p1)
      range_num = 0
    ELSEIF (|w - root2| < p1)
      range_num = 1
    ELSEIF (|w - root3| < p1)
      range_num = 2
    ENDIF
    bailout = 1
    z = colors_in_range_1*angle/pi+range_num*colors_in_range+1
  ENDIF
  prev_w = w
  iter = iter + 1
  z = z - iter
  bailout == 0
  ;SOURCE: 98msg.frm
}


Newt5 {; Original formula by Paul Carlson
       ; with optimizations by Sylvie Gallet
       ; and the addition of a function and whitesq by alex dukay
    ; F(w)   = w^3 + (c - 1) * w - c
    ; F'(w)  = 3 * w^2 + c - 1
    ; F''(w) = 6 * w,  so initialize w to zero
    ;
    ; p1 contols the "layering"
    ;
  c = pixel, c1 = c - 1
  z = iter = bailout = prev_w = w = 0
  colors_in_range = 80
  colors_in_range_1 = 79
  k = 0.5 * sqrt(1 - 4 * c)
  root1 = (1,0)
  root2 = -0.5 + k
  root3 = -0.5 - k
  :
    ;
  w2 = w * w
  w = w - (w * (w2 + c1) - c) / (3 * w2 + c1)
    ;
  delta_w = w - prev_w
  IF (|delta_w| < p1)
    angle = atan(imag(delta_w) / real(delta_w))
    IF (delta_w >= 0)
      IF (imag(delta_w) < 0)
        angle = pi + angle
      ELSE
        angle = pi - angle
      ENDIF
    ELSEIF (imag(delta_w) > 0)
      angle = -angle
    ENDIF
    IF (|w - root1| < p1)
      range_num = 0
    ELSEIF (|w - root2| < p1)
      range_num = 1
    ELSEIF (|w - root3| < p1)
      range_num = 2
    ENDIF
    bailout = 1
    z = colors_in_range_1*angle/pi+range_num*colors_in_range+1
  ENDIF
  prev_w = w
  iter = iter + 1
  z = (fn1(z - iter))+whitesq
  bailout == 0
  ;SOURCE: 98msg.frm
}


Newt5_Atan_Mset {; Copyright (c) Paul W. Carlson, 1998
    ; F(w)   = w^5 - w^4 - w * c^2 + c^2
    ; F'(w)  = 5 * w^4 - 4 * w^3 - c^2
    ; F''(w) = 20 * w^3 - 12 * w^2,  initialize w to 12/20 = 0.6
    ;
  c = pixel
  c2 = c * c
  z = iter = bailout = 0
  colors_in_range = 50
  colors_in_range_1 = 49
  root1 = (1,0)
  root2 = sqrt(c)
  root3 = -root2
  root4 = sqrt(-c)
  root5 = -root4
  prev_w = w = 0.6:
    ;
  w4 = w^4
  w = w - (w * w4 - w4 - c2 * w + c2) / (5 * w4 - 4 * (w^3) - c2)
    ;
  delta_w = w - prev_w
  IF (|delta_w| < p1)
    angle = atan(imag(delta_w) / real(delta_w))
    IF (delta_w >= 0)
      IF (imag(delta_w) < 0)
        angle = pi + angle
      ELSE
        angle = pi - angle
      ENDIF
    ELSEIF (imag(delta_w) > 0)
      angle = -angle
    ENDIF
    IF (|w - root1| < p1)
      range_num = 0
    ELSEIF (|w - root2| < p1)
      range_num = 1
    ELSEIF (|w - root3| < p1)
      range_num = 2
    ELSEIF (|w - root4| < p1)
      range_num = 3
    ELSEIF (|w - root5| < p1)
      range_num = 4
    ENDIF
    bailout = 1
    z = colors_in_range_1 * angle/pi + range_num * colors_in_range + 1
  ENDIF
  prev_w = w
  iter = iter + 1
  z = z - iter
  bailout == 0
  ;SOURCE: 98msg.frm
}


Newt5_Stalks_Mset {; Copyright (c) Paul W. Carlson, 1998
    ;
    ;   real(p1) = a factor controlling the size of the stalks
    ;   imag(p1) = minimum iterations
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in a range
    ;   real(p3) = value of |w| for bailout
    ;
  rc = real(pixel), c = pixel - 2 * rc * (rc > 0)
  a = 3 * c - 1 / c
  w = (sqrt(9 * a * a + 96) - 3 * a) / 12
  z = bailout = iter = range_num = 0
  stalk_width = real(p1)
  num_ranges = real(p2)
  colors_in_range = imag(p2)
  index_factor = (colors_in_range - 1) / stalk_width
  prev_mod2 = |w|
  :
  w2 = w * w
  w = (3*w2*w2 + 2*a*w*w2 - 4*w2 - 3)/(4*w*w2 + 3*a*w2 - 8*w - a)
    ;
  IF (abs(real(w)) <= abs(imag(w)))
    dist = abs(real(w))
  ELSE
    dist = abs(imag(w))
  ENDIF
  IF (dist < stalk_width && iter > imag(p1))
    z = index_factor * dist + range_num * colors_in_range + 1
    bailout = 1
  ELSEIF (abs(|w| - prev_mod2) < 0.000001)
    bailout = 1
    z = 252
  ENDIF
  prev_mod2 = |w|
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0  && |w| < real(p3)
  ;SOURCE: 98msg.frm
}


Newt6-JAtan-Mset {; (c) Jay R. Hill, 1998
    ; Newton method set up as a Mandelbrot set
    ; This formula searches for 6 roots of a function
    ; Inspired by Paul Carlson's Newt5_Atan_Mset 
    ; p1 = precision of root finding, try .001
    ; p2 = A = scaling constant in formula, try 1
    ; F(w) = w^6 - A*w^5 - w*c + A*c
    ; F'(w) = 6*w^5 - 5*A*w^4 - c
    ; F''(w) = 30*w^4 - 20*A*w^3
    ; Set F''=0, solve for initial w, 20*A/30 = 2*A/3
    ;
  c = pixel, A=p2, z = iter = bailout = 0
  colors_in_range = 42
    ; Set up the roots, R=a complex fifth root of 1.
  R5=sqrt(5), R=1-.5*sqrt(5-3*R5-sqrt(10*R5-50)), R2=sqr(R)
  root1 = A, root2 = c^.2, root3 = root2*R, root4 = root2*R2
  root5 = root4*R, root6 = root4*R2
  w = 2*A/3
  :
    ;  Newton's method
  w4 = w^4
  deltaw=((w*w4 - A*w4 - c)*w + A*c)/(6*w*w4 - 5*A*w4 - c)
  w = w - deltaw
    ;
  IF (|deltaw| < p1)
       ; Find angle of the last change in w.
    angle=abs(imag(log(deltaw)))
       ; Select color range depending on close root
    range_num = (|w - root2| < p1)+2*(|w - root3| < p1)+\
    3*(|w - root4| < p1)+4*(|w - root5| < p1)+5*(|w - root6| < p1)
    bailout = 1
       ; put color into z
    z = colors_in_range*(angle/pi + range_num)-angle/pi + 1
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0
  ;SOURCE: 98msg.frm
}


Newt7_Fang_Mset {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = controls element size try 0.01 to 2.0
    ; imag(p1)   not used
    ; p2       = factor, try (1,0)
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
  width = real(p1)
  c = pixel
  c2 = c * c, c1 = 1 / c
  root1 = c1
  root2 = -c1
  root3 = c
  root4 = -c
  c41 = c2 * c2+1
  w = sqrt(c41 / (6 * c2))
  z = iter = range_num = bailout = 0
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  colors_in_range_1 = colors_in_range - 1
  :
  w2 = w * w
  w = w - (c2*w2*w2 - c41*w2 + c2) / (4*c2*w2*w - 2*c41*w)
  angle = atan(imag(w) / real(w))
  v = p2 * (fn1(angle)^2 + fn2(angle)^2)
  dist = abs(|w| - |v|)
  IF (dist < width && iter > 0)
    bailout = 1
    index = colors_in_range_1 * dist / width
    z = index + range_num * colors_in_range + 1
  ELSEIF (|w - root1| < 0.00001)
    bailout = 1
    z = 252
  ELSEIF (|w - root2| < 0.00001)
    bailout = 1
    z = 252
  ELSEIF (|w - root3| < 0.00001)
    bailout = 1
    z = 252
  ELSEIF (|w - root4| < 0.00001)
    bailout = 1
    z = 252
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < 10000000
  ;SOURCE: 98msg.frm
}


Newt8-JAtan-Mset {; (c) Jay R. Hill, 1998
    ; Newton method set up as a Mandelbrot set
    ; This formula searches for 8 roots of a function
    ; Inspired by Paul Carlson's Newt5_Atan_Mset 
    ; p1=width of root finding
    ; p2=A=constant in formula
    ; F(w) = w^8 - A*w^7 - w*c + A*c
    ; F'(w) = 8*w^7 - 7*A*w^6 - c
    ; F''(w) = 56*w^6 - 42*A*w^5
    ; Set F''=0, solve for initial w, 42*A/56 = 3*A/4
    ;
  c = pixel, A=p2, z = iter = bailout = 0
  colors_in_range = 31
  R=(-1)^(2/7), R2=sqr(R)
  root1 = A, root2 = c^(1/7), root3 = root2*R, root4 = root2*R2
  root5 = root4*R, root6 = root4*R2, root7 = root6*R, root8 = root6*R2
  w = 3*A/4
  :
  w6 = w^6
  deltaw=((w*w6 - A*w6 - c)*w + A*c)/(8*w*w6 - 7*A*w6 - c)
  w = w - deltaw
    ;
  IF (|deltaw| < p1)
    angle=abs(imag(log(deltaw)))
    range_num = (|w - root2| < p1)+2*(|w - root3| < p1)+\
    3*(|w - root4| < p1)+4*(|w - root5| < p1)+5*(|w - root6| < p1)+\
    6*(|w - root7| < p1)+7*(|w - root8| < p1)
    bailout = 1
    z = colors_in_range*(angle/pi + range_num)-angle/pi + 1
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0
  ;SOURCE: 98msg.frm
}


Newt_ellipt_oops {; Tim Wegner - use float=yes and periodicity=0
   ; fractal generated by Newton formula  (z^3 + c*z^2 +1)^.5
   ; try p1 = 1 and p2 = .1
   ; if p2 is small (say .001), converges very slowly so need large maxit
   ; another "tim's error" - mistook sqr for sqrt (see next)
  z = pixel, z2 = z*z, z3 = z*z2:
  num = (z3 + p1*z2 + 1)^.5      ; f(z)
  denom = (1.5*z2 + p1*z)/num    ; f'(z)
  z = z - (num/denom)            ; z - f(z)/f'(z)
  z2 = z*z
  z3 = z*z2
  p2 <= |z3 + p1*z2 + 1|  ; no need for sqrt because sqrt(z)==0 iff z==0
  ;SOURCE: fractint.frm
}


Newt_Exp_Inv (YAXIS) {; Sylvie Gallet
                      ; equation e^z-1 = 0
                      ; solution z = 0
  z=(0,-1)/pixel : 
  z=z-1+exp(-1*z)
  real(z) > real(p1) 
  ;SOURCE: forummsg.frm
}


Newt_Fang_Mset {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = controls element size try 0.5 to 16
    ; imag(p1)   not used
    ; p2       = factor, try (1,0) or (0.3,0.3)
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
  width = real(p1)
  a = fn1(pixel)
  am = a - 1
  w = sqrt(-am / 6)
  z = iter = range_num = bailout = 0
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  index_factor = (colors_in_range - 1) / width
  prev_mod2 = |w|
  :
  k = w * w, q = w * am
  w = w - (k * k + k * am - a) / (4 * w * k + q + q)
  angle = atan(imag(w) / real(w))
  v = p2 * (fn1(angle)^2 + fn2(angle)^2)
  dist = abs(|w| - |v|)
  IF (dist < width && iter > 0)
    bailout = 1
    z = index_factor * dist + range_num * colors_in_range + 1
  ELSEIF (abs(|w| - prev_mod2) < 0.000001)
    bailout = 1
    z = 252
  ENDIF
  prev_mod2 = |w|
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < 10000000
  ;SOURCE: 98msg.frm
}


Newt_Fnc_Julia {; Copyright (c) Paul W. Carlson, 1998
    ; p1       = Julia set coordinates
    ; real(p2) = controls element size
    ; imag(p2)   not used
    ; p3       = relaxation factor
    ;
  width = real(p2)
  w = pixel
  a = fn1(p1)
  am = a - 1
  z = iter = range_num = bailout = 0
  num_ranges = 2
  colors_in_range = 125
  colors_in_range_1 = 124
  :
  k = w * w, q = w * am
  w = w - p3 * (k * k + k * am - a) / (4 * w * k + q + q)
  dist = abs(|w| - 0.5)
  IF (dist < width && iter > 0)
    bailout = 1
    index = colors_in_range_1 * dist / width
    z = index + range_num * colors_in_range + 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0
  ;SOURCE: 98msg.frm
}


Newt_Fnc_Mset {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = controls element size
    ; imag(p1)   not used
    ; real(p2) = number of color ranges
    ; imag(p2) = number of colors in a range
    ;
  width = real(p1)
  a = fn1(pixel)
  am = a - 1
  w = sqrt(-am / 6)
  z = iter = range_num = bailout = 0
  num_ranges = real(p2)
  colors_in_range = imag(p2)
  colors_in_range_1 = colors_in_range - 1
  :
  k = w * w, q = w * am
  w = w - (k * k + k * am - a) / (4 * w * k + q + q)
  dist = abs(|w| - 0.5)
  IF (dist < width && iter > 0)
    bailout = 1
    index = colors_in_range_1 * dist / width
    z = index + range_num * colors_in_range + 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0
  ;SOURCE: 98msg.frm
}


Newt_Sin (XAXIS) {; Newton appliquée à sin z - z = 1
  z=Pixel:
  z1=sin(z)-z+1, z2=cos(z)-1         ; faute de frappe...
  z=z-z1/z2
  |z1/z2|>real(p1) && |z|<real(p2)
  ;SOURCE: gallet_0.frm
}


Newt_Sin_2 (XAXIS) {; Newton appliquée à sin z - z = 1
  z=Pixel :
  z1=sin(z)-z-1, z2=cos(z)-1
  z3=z1/z2
  z=z-z3
  |z3|>real(p1)
  ;SOURCE: gallet_0.frm
}


newt_test {; z^3 - 1 = 0
  z = pixel, p = real(p1) - 1:
  z1 = z^p
  z = z - p2*(z1*z - 1) / (real(p1)*z1+p3)
  abs(cabs(z)-1) >= imag(p1)
  ;SOURCE: test.frm
}


NEWTMESH{; Ray Girvan, April 1996
   ; own-formula Newton
   ; use floating point
   ; try p1=(8,0), p2=(1,0)
   ; p1 = number of Newton arms
   ; p2 = "zoom factor" for central motif
  k=p1
  z=p2*(tan(sin(real(pixel)))+flip(tan(sin(imag(pixel))))):
  z1=z^k-1      ;  or any function z1 = f(z)    
  z2=k*z^(k-1)  ; its differential z2 = f'(z)
  z=z-(z1/z2)
  |z1| > 0.01
  ;SOURCE: 9604.frm
}


Newton {
   ; These formulas were developed as a result of my
   ; interest in Newton's method.  They are best viewed
   ; using the OUTSIDE set to real or imag.
   ; (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = pixel
  root = 1:
  z3 = z * z * z
  z4 = z3 * z
  z = (3 * z4 + root) / (4 * z3)
  |z| <= 4
  ;SOURCE: methods.frm
}


Newton-11 {
   ; (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = pixel
  root = 1:
  z10 =  z * z * z * z * z * z * z * z * z * z
  z11 = z10 * z
  z = (10 * z11 + root) / (11 * z10)
  |z| <= 4
  ;SOURCE: methods.frm
}


Newton-2 {
   ; (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = pixel
  root = 1:
  z3 = z * z * z
  z4 = z3 * z
  z = (3 * z4 + root) / (4 * z3)
  |z| <= 0.004
  ;SOURCE: methods.frm
}


Newton-3 {
   ; (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = pixel
  root = 1
  zt = (0, 0):
  z3 = z * z * z
  z4 = z3 * z
  z = zt - ((z4 - root) / (4 * z3))
  zt = z 
  |z| <= 4
  ;SOURCE: methods.frm
}


Newton-3-alt {
   ; (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = c = pixel
  root = 1
  zt = (0, 0):
  z3 = z * z * z
  z4 = z3 * z
  z = zt - ((z4 - root) / (4 * z3)) + c
  zt = z 
  |z| <= 4
  ;SOURCE: methods.frm
}


Newton-3-test {
   ; (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = c = pixel
  root = 1
  zt = (0, 0):
  z3 = z * z * z
  z4 = z3 * z
  z = zt - ((z4 - root) / (4 * z3))
  zt = z 
  |z - c| <= 4
  ;SOURCE: methods.frm
}


Newton-alt {
   ; (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = c = pixel
  root = 1:
  z3 = z * z * z
  z4 = z3 * z
  z = (3 * z4 + root) / (4 * z3) + c
  |z| <= 4
  ;SOURCE: methods.frm
}


Newton-test {
   ; (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = c = pixel
  root = 1:
  z3 = z * z * z
  z4 = z3 * z
  z = (3 * z4 + root) / (4 * z3)
  |z - c| <= 4
  ;SOURCE: methods.frm
}


newton-z3fnBJ2 {; Sylvie Gallet [101324,3444], 1995
                ; equation z^3-1 = 0
                ; solution z = 1
  z = fn1(pixel), z1 = fn2(pixel) :
  z = (z1+z-1/(z*z))/3 ; <==> z-(z*z2-1)/(3*z2)
  |z-(1.0,0.0)| >= real(p1)
  ;SOURCE: sg-bc-bj.frm
}


Newton3 {; Chris Green
         ; Try p1=1.8 and p2 = 3.0
  z  = (1,1):
  z2 = z*z
  z3 = (z*z2) - pixel
  z  = z-p1*z3/(p2*z2)
  0.0001 < |z3|
  ;SOURCE: improved.frm
}


Newton4 (XYAXIS) {; Mark Peterson
   ; Note that floating-point is required to make this compute accurately
  z = pixel, Root = 1:
  z3 = z*z*z
  z4 = z3 * z
  z = (3 * z4 + Root) / (4 * z3)
  .004 <= |z4 - Root|
  ;SOURCE: fractint.frm
}


Newton4-3 (XYAXIS) {; Mark Peterson's Newton4 formula 
                    ; modified by Linda Allison
  z = pixel, Root = 7:
  z3 = z * z * z
  z4 = z3 * z
  z = (p1 * z4 + Root) / (p1 * z3)
  .0009 <= |z4 - Root|
  ;SOURCE: la-mod.frm
}


Newton4fn12 { 
  z = pixel+1/(fn1(p2*pixel-p1))+1/(fn2(p2*pixel-p1)), Root = 1:
  z3 = z*z*z
  z4 = z3 * z
  z = (3 * z4 + Root) / (4 * z3)
  .004 <= |z4 - Root|
  ;SOURCE: crazynwt.frm
}


Newton5fn { 
  z = pixel+1/fn1(p2 * pixel-p1) :
  z = (4*z^5+1)/(5*z^4) 
  0.001<=|z^5-1|
  ;SOURCE: crazynwt.frm
}


Newton5fn12 { 
  z = pixel+1/(2 * fn1(p2 * pixel-p1)) + 1/(2 * fn2(p2 * pixel-p1)) :
  z = (4*z^5+1)/(5*z^4) 
  0.001<=|z^5-1|
  ;SOURCE: crazynwt.frm
}


Newton_3Way {; Copyright (c) Paul W. Carlson, 1998
    ; Newton's method solution of w^k - 1 = 0
    ; Always use float=y, outside=summ
    ;
    ; real(p1) = escape circle radius squared
    ; imag(p1) = k (exponent of w)
    ; p2       = relaxation factor
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
  z = iter = range_num = bailout = 0
  w = pixel
  prev_modw2 = 1.0e20
  rad2 = real(p1)
  k = imag(p1)
  km1 = k - 1
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  colors_in_range_1 = colors_in_range - 1
  :
  w = w - p2 * ((w^k) - 1) / (k * (w^km1))
    ;
  IF ((prev_modw2 < rad2) * (|w| > rad2))
    bailout = 1
    index = colors_in_range_1 * (rad2 - prev_modw2) / rad2
    z = index + range_num * colors_in_range + 1
  ENDIF
  prev_modw2 = |w|
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0
  ;SOURCE: 98msg.frm
}


newton_B {; Julia set of Newton's method applied to z^3 - 1 = 0
  z = pixel :
  z2 = z*z, n = z2*z - 1, d = 3*z2
  z = z - n/d
  |n| >= 0.000001
  ;SOURCE: phctutor.frm
}


Newton_ch_z (origin) {; avec une faute de frappe...
  z = Pixel:
  z1 = cosh(z)-p2, z2 = sinh(z)
  z = z-z1*z2
  |z| > real(p1)
  ;SOURCE: gallet_0.frm
}


Newton_elliptic {; Tim Wegner - use float=yes and periodicity=0
   ; fractal generated by Newton formula f(z) = (z^3 + c*z^2 +1)^2
   ; try p1 = 1 and p2 = .0001
  z = pixel, z2 = z*z, z3 = z*z2:
  z = z - (z3 + p1*z2 + 1)/(6*z2 + 4*p1*z)      ; z - f(z)/f'(z)
  z2 = z*z
  z3 = z*z2
  p2 <= |z3 + p1*z2 + 1|  ; no need for sqr because sqr(z)==0 iff z==0
  ;SOURCE: fractint.frm
}


Newton_exp_z3 (XAXIS) {
  z=pixel, z2=sqr(z):
  z1=exp(z), z3=z*z2
  z=z-(z1-z3-1)/(z1-3*z2)
  z2=sqr(z)
  lastsqr>=.0001
  ;SOURCE: gallet_0.frm
}


newton_expsqr (YAXIS) {
  z=15+3/flip(pixel):
  z1=exp(z)-z-1
  z2=(z1-sqr(z))/(z1-z)
  z=z-z2
  |z2|>=.01
  ;SOURCE: gallet_0.frm
}


Newton_large {
   ; (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = pixel:
  z100 = z ^ 100
  z = (100 * z100 * z - 1) / (101 * z100)
  |z| <= 4
  ;SOURCE: methods.frm
}


Newton_log_z (XYAXIS) {; ln (z^2 + 1) = 0
  z = Pixel:
  z1 = log(z*z+1), z2 = (1/z+z)/2
  z = z-z1*z2
  |z| > real(p1)
  ;SOURCE: gallet_0.frm
}


Newton_neg_real {
   ; (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = pixel:
  z = (1 / z) 
  z4 = z * z * z * z
  z = (-5 * z4 + 1) / (-4 * z4 * z)
  |real(z)| <= 4
  ;SOURCE: methods.frm
}


Newton_poly2 {; Tim Wegner - use float=yes
   ; fractal generated by Newton formula z^3 + (c-1)z - c
   ; p1 is c in above formula
  z = pixel, z2 = z*z, z3 = z*z2:
  z = (2*z3 + p1) / (3*z2 + (p1 - 1))
  z2 = z*z
  z3 = z*z2
  .004 <= |z3 + (p1-1)*z - p1|
  ;SOURCE: fractint.frm
}


Newton_real {; Sylvie Gallet [101324,3444], 1996
   ; Newton's method applied to   x^3 + y^2 - 1 = 0 
   ;                              y^3 - x^2 + 1 = 0
   ;                              solution (0,-1)
   ; One parameter : real(p1) = bailout value 
  z = pixel, x = real(z), y = imag(z) : 
  xy = x*y                                
  d = 9*xy+4, x2 = x*x, y2 = y*y        
  c = 6*xy+2 
  x1 = x*c - (y*y2 - 3*y - 2)/x
  y1 = y*c + (x*x2 + 2 - 3*x)/y
  z = (x1+flip(y1))/d, x = real(z), y = imag(z)
  (|x| >= p1) || (|y+1| >= p1)
  ;SOURCE: fractint.frm
}


newton_reel_1 (ORIGIN) {; Sylvie Gallet
  z=pixel, x=real(z), y=imag(z) :      ; Methode de Newton pour
  x2=x*x, y2=y*y, x3=x2*x, y3=y2*y     ; x -> x^3-y
  d=1+9*x2*y2                          ; y -> y^3+x
  x = (6*x3*y2 + 2*y3) / d             ; solution (0,0)
  y = (6*x2*y3 - 2*x3) / d   
  z = x+flip(y) 
  |z|>=.01
  ;SOURCE: forummsg.frm
}


newton_reel_3 {; Sylvie Gallet 1995
  z = Pixel, x=real(z), y=imag(z):    ; newton applied to
  x2=x*x, y2=y*y, d=4*x*y+1           ; x^2-y+1 = 0
  x1=(2*x2*y+y2-2*y+1)/d              ; y^2+x-1 = 0
  y=(2*x*y2-x2+2*x+1)/d               ; solution (0,1)
  x=x1, z=x+flip(y)
  |z-(0,1)| >= .01
  ;SOURCE: gallet_0.frm
}


Newton_reel_4 {; Sylvie Gallet [101324,3444], 1995
  z = (1-Pixel)/(1+Pixel), sol = (1.0,1.0) :
  x=real(z), y=imag(z)          ; (x^3 - 1)/y = 0
  x3 = x*x*x, y2 = y*y          ; (y^2 - 1)/x = 0
  xy = x3*y2, d = 5*xy+x3+y2-1  ; solution (1,1)
  c = xy + x3 + 2*y2 - 1 
  x1 = 2*x*c
  y1 = y*(c+4*x3-1)
  z = (x1+flip(y1))/d 
  |z-sol| >= p1
  ;SOURCE: gallet-1.frm
}


Newton_reel_5 {; Sylvie Gallet [101324,3444], 1995
  z = pixel :                          ; x^3 + y^2 - 1 = 0
  x = real(z), y = imag(z), xy = x*y   ; y^3 - x^2 + 1 = 0
  d = 9*xy+4, x2 = x*x, y2 = y*y       ; solution (0,-1)
  c = 6*xy+2 
  x1 = x*c - (y*y2 - 3*y - 2)/x
  y1 = y*c + (x*x2 + 2 - 3*x)/y
  z = (x1+flip(y1))/d 
  |z-(0,-1)| >= p1
  ;SOURCE: gallet-1.frm
}


Newton_z2_ez {; appliquée à z^2+e^z-1 = 0
              ; solution z = 0
  z = pixel:
  z2 = z*z, ez=exp(z)
  c1 = (z2+ez-1), c = c1/(2*z+ez)
  z = z - c
  |z| >= p1
  ;SOURCE: gallet_0.frm
}


Newton_z3+cosz {; Sylvie Gallet [101324,3444], 1995
                ; equation (z^3)/3 + z + cos z = 1  
                ; solution z = 0
  z = 15*pixel :
  z2 = z*z
  z = z-(z2*z/3+z+cos(z)-1)/(z2+1-sin(z))
  |z| > p1
  ;SOURCE: gallet-1.frm
}


newton_z3_fn {; Sylvie Gallet [101324,3444], 1995
              ; equation z^3-1 = 0
              ; solution z = 1
  z = fn1(pixel) :
  z = (z+z-1/(z*z))/3 ; <==> z-(z*z2-1)/(3*z2)
  |z-(1.0,0.0)| >= real(p1)
  ;SOURCE: gallet-1.frm
}


Newton_z3_sinz2 {; copyright Sylvie Gallet
                 ; z -> z^3+sin(z^2)
                 ; solution z = 0
  z = pixel :
  z2 = z*z   
  z = z - (z*z2+sin(z2))/(3*z2+2*z*cos(z2))
  |z| >= p1
  ;SOURCE: forummsg.frm
}


NewtonSinExp (XAXIS) {; Chris Green
                      ; Newton's formula applied to sin(x)+exp(x)-1=0.
                      ; Use floating point.
  z=pixel:
  z1=exp(z)
  z2=sin(z)+z1-1
  z=z-p1*z2/(cos(z)+z1)
  .0001 < |z2|
  ;SOURCE: fractint.frm
}


NewtonTest26 {; Jim Muth
  a=real(p1), b=imag(p1), c=real(p2)
  d=imag(p2), k=real(p3), f=imag(p3)
  z=(pixel):
  zx=z^b-a
  zy=c*z*z
  z=z-(d*zx/zy)^k
  |zx| >= f
  ;SOURCE: 97msg.frm
}


NewtonTest27 {; Jim Muth
  a=real(p1), b=imag(p1), c=real(p2)
  d=imag(p2), k=real(p3), f=imag(p3)
  z=(pixel):
  zx=(z^b)-a
  zy=(c*z)^d
  z=z-(k*zx/zy)
  |zx| >= f
  ;SOURCE: 97msg.frm
}


NewtTest03 {; Jim Muth, June 1997
  a=real(p1), b=imag(p1), c=real(p2)
  d=imag(p2), k=real(p3), f=imag(p3)
  z=(pixel):
  zx=(z^b)-a
  zy=(c*z)^d
  z=z-(k*zx/zy)
  |zx| >= f
  ;SOURCE: 97msg.frm
}


NewWrong (xaxis) {; Peter Anders anders@physik.hu-berlin.de
  a=real(pixel), b=imag(pixel), r=p1:
  c=z
  a=(r/(r+1))*a+(real((a-b*(0,1))^(r-1))/(r*(a*a+b*b)^(r-1)))
  b=(r/(r+1))*b+(imag((a-b*(0,1))^(r-1))/(r*(a*a+b*b)^(r-1)))
  z=a+b*(0,1)
  |z-c| >0.0000001
  ;SOURCE: peternew.frm
}


NewWrongFu {; Peter Anders anders@physik.hu-berlin.de
  a=real(fn1(pixel)), b=imag(fn1(pixel)), r=p1:
  c=z
  a=(r/(r+1))*a+(real((a-b*(0,1))^(r-1))/(r*(a*a+b*b)^(r-1)))
  b=(r/(r+1))*b+(imag((a-b*(0,1))^(r-1))/(r*(a*a+b*b)^(r-1)))
  z=a+b*(0,1)
  |z-c| >0.0000001
  ;SOURCE: peternew.frm
}


NewWrongFu2 {; Peter Anders anders@physik.hu-berlin.de
  q=pixel^real(p2)-imag(p2), a=real(q), b=imag(q), r=p1:
  c=z
  a=(r/(r+1))*a+(real((a-b*(0,1))^(r-1))/(r*(a*a+b*b)^(r-1)))
  b=(r/(r+1))*b+(imag((a-b*(0,1))^(r-1))/(r*(a*a+b*b)^(r-1)))
  z=a+b*(0,1)
  |z-c| >0.0000001
  ;SOURCE: peternew.frm
}


newx11 {
  z=pixel:
  a=(fn1(z)+(tan(pixel)))/p1
  b=cos(z)
  z1=(fn3(a*b)/p2)
  z=(fn4(z1)*(b/p3))+whitesq
  |z|<4
  ;SOURCE: ad99_1.frm
}


newx3 {
  z=(pixel), t=p1*fn4(z+1):
  z2=fn1(z*p2)+whitesq, z3=fn4(t*(-z2))
  z=(fn2(z3))+fn3(z2)
  |z|<(p1)
  ;SOURCE: ad99_1.frm
}


newx4 {
  z=pixel:
  b=(pixel)*2,t=p1*fn4(z-1)
  z2=fn1(b*(t/p2)), z3=fn4(b+(t+(z2/p3)))
  z4=(z2+fn3(z3))
  z=((((fn1(z4)*fn2(realz))/(fn3(z4+p1)*p2)))+whitesq)
  |z|<4
  ;SOURCE: ad99_1.frm
}


newx5 {
  z=pixel:
  a=fn1(pixel)*(p1/fn4(pixel))
  b=fn2(z+whitesq)
  z1=fn3(a+b)
  z=fn3(z1-whitesq)+b
  |z|<4
  ;SOURCE: ad99_1.frm
}


newx6 {
  z=pixel:
  a=fn1(pixel)*(p1/fn4(pixel))
  b=fn2(z+whitesq)
  z1=fn3(a+b)/p2
  z=(fn3(z1-whitesq))*(b-p3)
  |z|<4
  ;SOURCE: ad99_1.frm
}


newx7 {
  z=pixel, m=(fn1(z))*(2), y=tan(1-exp(z))^2
  n=fn2(1/(tan(z)))*sqr(y+m):
  z=(((z*1/1.01105)*fn1(m-n))/fn2(y*n)-fn3(z+y))/fn4(z+n+y)
  |z|<4
  ;SOURCE: ad99_1.frm
}


newx8 {
  z=pixel:
  a=(fn1(pixel)*(fn4(pixel)))/p1
  b=flip(z)
  z1=fn3(a*b)/p2
  z=(fn3(z1)*(b/p3))+whitesq
  |z|<4
  ;SOURCE: ad99_1.frm
}


newx9 {
  z=pixel, m=(fn1(z))-(2), y=tan(exp(z))-2
  n=fn2((tan(z)))*sqr(y+m):
  z=(((z*fn1(n-m))+fn2(y+n))*(fn3(z+y)+fn4(n+y)))+whitesq
  |z|<4
  ;SOURCE: ad99_1.frm
}


nigel (XAXIS) {
   ; If we keep adding terms the symmetry order goes even higher
  z = pixel,zp1=zp2=zp3=(0,0):
  temp = z
  z = z*z - zp3
  zp3 = zp2
  zp2 = zp1
  zp1 = temp
  |zp1| <= 4 
  ;SOURCE: noel.frm
}


njutn {
  z=pixel:
  z=(z/imag(z)*z/real(z)*z*z*z+pixel)
  |z|<=4
  ;SOURCE: test.frm
}


njutn-j {
  z=pixel:
  z=(z/imag(z)*z/real(z)*z*z*z+p1)
  |z|<=4
  ;SOURCE: test.frm
}


njutnall-j {
  z=pixel:
  z=(z^p1/(imag(z)*real(z))+p2)
  |z|<=4
  ;SOURCE: test.frm
}


njutnallg {
  z=pixel:
  z=(z^p1/(imag(z)*real(z))+pixel)
  |z|<=4
  ;SOURCE: test.frm
}


NMERGE3 (XAXIS) {; Ray Girvan, May 1996
                 ; Newton "Cat's Cradle"
                 ; use floating-point
                 ; use periodicity=no - press [g] to enter
                 ; based on z^3-1=0 Newton
  z1=pixel, z2=sin(pixel):
  z1=(z1*z2*(z1+z2)+1)/(3*z1*z2)
  z2=z1
  |z1*z1*z1-1| >= 0.01
  ;SOURCE: girvnewt.frm
}


NMERGE4 {; Ray Girvan, May 1996
         ; repeating design
         ; use floating-point
         ; use periodicity=no - press [g] to enter
         ; based on z^5-1=0 Newton
  z1=sin(real(pixel)), z2=flip(sin(imag(pixel))):
  z1=(2*z1*z1*z2*z2*(z1+z2)+1)/(5*z1*z2*z1*z2)
  z2=z1
  |z1*z1*z1*z1*z1-1| >= 0.01
  ;SOURCE: girvnewt.frm
}


NMERGE5 (XAXIS) {; Ray Girvan, May 1996
                 ; concentric rings of Newton strings
                 ; use floating-point
                 ; use periodicity=no - press [g] to enter
                 ; based on z^3-1=0 Newton
  z1=pixel, z2=1/sin(|pixel|):
  z1=(z1*z2*(z1+z2)+1)/(3*z1*z2)
  z2=z1
  |z1*z1*z1-1| >= 0.01
  ;SOURCE: girvnewt.frm
}


NMERGE6 {; Ray Girvan, May 1996
         ; organic look with Moire-like columns    
         ; use floating-point
         ; use periodicity=no - press [g] to enter
         ; based on z^3-1=0 Newton
  z1=pixel, z2=|pixel|*(cos(pixel)+flip(sin(pixel))):
  z1=(z1*z2*(z1+z2)+1)/(3*z1*z2)
  z2=z1
  |z1*z1*z1-1| >= 0.01
  ;SOURCE: girvnewt.frm
}


No_name (xaxis) {
  z = pixel:
  z=z+z*z+(1/z*z)+pixel
  |z| <= 4
  ;SOURCE: fract002.frm
}


non-conformal {; From Media Magic Calender - August
  z=x=y=x2=y2=0:
  t = x * y
  x = x2 + t + real(pixel), y = y2 - t + imag(pixel)
  x2 = sqr(x), y2 = sqr(y), z=x + flip(y)
  |z| <= 4
  ;SOURCE: flip.frm
}


Not-Mine {; Saw this frm somewhere and don't remember where.
  z=pixel:
  z=1/(sin(z*z+pixel*pixel))
  |z| <=10
  ;SOURCE: 10carr.frm
}


NoteW1 {
  A = ((sin(pixel)^2)*2), b = fn1(real(pixel))
  c = pixel^2, z = pixel:
  z = z * z * a * b + c
  |Z| < 4
  ;SOURCE: frac_ml.frm
}


NoteW2 {; Blake Hyde, modified by Jay Hill
  A = ((sin(pixel)^2)*2), b = fn1(real(pixel))
  c = pixel^2, z = pixel:
  z = z * z * a * b + c
  |Z| < 40
  ;SOURCE: frac_ml.frm
}


Nova {; P1 is a parameter to do strange things to
      ; the formula. 0 gives the usual Newton for
      ; cube root of 1. p2 is an inverse bailout,
      ; set this to a small nonzero value and use
      ; floating point. E.g. 0.0000001.
      ; The Nova Formulae, discovered by PGD.
      ; Freely distributable but may not be sold.
  z=pixel
  c=p1:
  z2=z*z
  z3=z*z2
  func=z3-1
  der=3*z2
  oz=z
  z=z-(func/der)+c
  |oz-z|>p2
  ;SOURCE: nova.frm
}


Nova4 {; P1 is a parameter to do strange things to
       ; the formula. 0 gives the usual Newton for
       ; fourth root of 1. p2 is an inverse bailout,
       ; set this to a small nonzero value and use
       ; floating point. E.g. 0.0000001.
       ; The Nova Formulae, discovered by PGD.
       ; Freely distributable but may not be sold.
  z=pixel
  c=p1:
  z2=z*z
  z3=z*z2
  z4=z*z3
  func=z4-1
  der=4*z3
  oz=z
  z=z-(func/der)+c
  |oz-z|>p2
  ;SOURCE: nova.frm
}


Nova4M {; Mandelbrot-like set for Nova4.
        ; P2 is an inverse bailout,
        ; set this to a small nonzero value and use
        ; floating point. E.g. 0.0000001.
        ; The Nova Formulae, discovered by PGD.
        ; Freely distributable but may not be sold.
  z=1
  c=pixel:
  z2=z*z
  z3=z*z2
  z4=z*z3
  func=z4-1
  der=4*z3
  oz=z
  z=z-(func/der)+c
  |oz-z|>p2
  ;SOURCE: nova.frm
}


Nova5 {; P1 is a parameter to do strange things to
       ; the formula. 0 gives the usual Newton for
       ; cube root of 1. p2 is an inverse bailout,
       ; set this to a small nonzero value and use
       ; floating point. E.g. 0.0000001.
       ; The Nova Formulae, discovered by PGD.
       ; Freely distributable but may not be sold.
       ; Novena has two mandelbrot sets that are
       ; slightly different.}
  z=pixel
  c=p1:
  z2=z*z
  z4=z2*z2
  z5=z4*z
  func=z5-1
  der=5*z4
  oz=z
  z=z-(func/der)+c
  |oz-z|>p2
  ;SOURCE: nova.frm
}


Nova5M {; Mandelbrot-like set for Nova5.
        ; P2 is an inverse bailout,
        ; set this to a small nonzero value and use
        ; floating point. E.g. 0.0000001.
        ; The Nova Formulae, discovered by PGD.
        ; Freely distributable but may not be sold.
        ; Novena has two mandelbrot sets that are
        ; slightly different.}
  z=1
  c=pixel:
  z2=z*z
  z4=z2*z2
  z5=z4*z
  func=z5-1
  der=5*z4
  oz=z
  z=z-(func/der)+c
  |oz-z|>p2
  ;SOURCE: nova.frm
}


NovaM {; Mandelbrot-like set for Nova.
       ; P2 is an inverse bailout,
       ; set this to a small nonzero value and use
       ; floating point. E.g. 0.0000001.
       ; The Nova Formulae, discovered by PGD.
       ; Freely distributable but may not be sold.
  z=1  
  c=pixel:
  z2=z*z
  z3=z*z2
  func=z3-1
  der=3*z2
  oz=z
  z=z-(func/der)+c
  |oz-z|>p2
  ;SOURCE: nova.frm
}


novan_jul {; Kerry Mitchell
           ; variation on Paul Derbyshire's nova formula, Julia-type
           ; Newton method for zc^n = 1, adding c each time
           ; beginning value of zc = pixel, c = p1
           ; inverse bailout = real(p2), exponent = imag(p2)
           ; z = change in zc each iteration
  c=p1, zc=pixel, r=real(p2), nm1=imag(p2)-1, fac=1/(nm1+1):
  fp=zc^nm1, f=zc*fp-1, z=fac*f/fp+c
  zc=zc-z 
  |z| > r
  ;SOURCE: 97msg.frm
}


novan_man {; Kerry Mitchell
           ; variation on Paul Derbyshire's nova formula, Mandelbrot-type
           ; Newton method for zc^n = 1, adding c each time.
           ; beginning value of zc = p1, c = pixel
           ; inverse bailout = real(p2), exponent = imag(p2)
           ; z = change of zc each iteration
  zc=p1, c=pixel, r=real(p2), nm1=imag(p2)-1, fac=1/(nm1+1):
  fp=zc^nm1, f=zc*fp-1, z=fac*f/fp+c
  zc=zc-z 
  |z| > r
  ;SOURCE: 97msg.frm
}


November {; Sylvie Gallet, Dec 1997
          ; Coloring algorithm by Scott Burns
          ; Use decomp = 256 and periodicity = 0
  z1 = pixel, iter = 0
  a = real(p1)*(0,0.0245436) ; 2i pi /256
  mz = abs(cabs(z1-(0,3))-3)
  :
  IF (mz >= 0.01 || iter < 10)
    z1 = z1*z1 + pixel
    mz = abs(cabs(z1-(0,3))-3)
    cont = 1
    iter = iter + 1
  ELSE
    z = exp((iter + 0.001 + 99.9*mz)*a)
    cont = 0
  ENDIF
  cont
  ;SOURCE: calendar.frm
}


Novena {; P2 is an inverse bailout,
        ; set this to a small nonzero value and use
        ; floating point. E.g. 0.0000001.
        ; The Nova Formulae, discovered by PGD.
        ; Freely distributable but may not be sold.
        ; Novena has two mandelbrot sets that are
        ; slightly different.}
  z=pixel
  c=p1:
  z2=z*z
  z3=z*z2
  func=z3+z-2
  der=3*z2+1
  oz=z
  z=z-(func/der)+c
  |oz-z|>p2
  ;SOURCE: nova.frm
}


NovenaM {; Mandelbrot-like set for Novena.
         ; P2 is an inverse bailout,
         ; set this to a small nonzero value and use
         ; floating point. E.g. 0.0000001.
         ; The Nova Formulae, discovered by PGD.
         ; Freely distributable but may not be sold.
  z=1
  c=pixel:
  z2=z*z
  z3=z*z2
  func=z3+z-2
  der=3*z2+1
  oz=z
  z=z-(func/der)+c
  |oz-z|>p2
  ;SOURCE: nova.frm
}


NovenaM2 {; Another Mandelbrot-like set for Novena.
          ; P2 is an inverse bailout,
          ; set this to a small nonzero value and use
          ; floating point. E.g. 0.0000001.
          ; The Nova Formulae, discovered by PGD.
          ; Freely distributable but may not be sold.
  z=-0.5+(-1.75)^(0.5)
  c=pixel:
  z2=z*z
  z3=z*z2
  func=z3+z-2
  der=3*z2+1
  oz=z
  z=z-(func/der)+c
  |oz-z|>p2
  ;SOURCE: nova.frm
}


Nuclear_JColLog {; p1, p2, p3 parameters. Use float=y, outside=real, 
                 ; logmap=0, periodicity=0. 
                 ; Colors from 4 ranges by finite attractors
                 ; and attracted to infinity. Uses a "logmap".
  a=p1, c=p2, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2 
  r3ac=r3*ac, ack=k*ac
  m=maxit-1, m4=m/2, iter=0, done=0, iter2=0
  qq=0.000001, bail=1000
  IF(notfirstpixel)
    m4=0
  ELSE
    za=-1
    zb=0
    zc=1
    qqa=qq
    qqb=qq
    qqc=qq
  ENDIF
  m3=m-m4
  z=pixel
  :
  IF(iter<m4)
    IF(qqa>0)
      z2=sqr(za)
      z3=za*z2
      za=(r3a2*z3-a6*z2-r3ac*za-ac)/(r3*za+1)+ack
      IF(|za|>bail)
        qqa=0
      ENDIF
    ENDIF
    IF(qqb>0)
      z2=sqr(zb)
      z3=zb*z2
      zb=(r3a2*z3-a6*z2-r3ac*zb-ac)/(r3*zb+1)+ack
      IF(|zb|>bail)
        qqb=0
      ENDIF
    ENDIF
    IF(qqc>0)
      z2=sqr(zc)
      z3=zc*z2
      zc=(r3a2*z3-a6*z2-r3ac*zc-ac)/(r3*zc+1)+ack
      IF(|zc|>bail)
        qqc=0
      ENDIF
    ENDIF
    iter=iter+1
  ELSE
    z2=sqr(z)
    z3=z*z2
    z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack
    iter=iter+1
    iter2=iter2+1
    IF(lastsqr>bail)
      done=1
      color=66*(log(iter2)/log(m3))
      IF(color<1)
        color=1
      ENDIF
      IF(color>66)
        color=66
      ENDIF
    ELSEIF(|z-za|<qqa)
      done=1
      color=63*(log(iter2)/log(m3))
      IF(color<1)
        color=1
      ENDIF
      IF(color>63)
        color=63
      ENDIF
      color=color+66
    ELSEIF(|z-zb|<qqb)
      done=1
      color=63*(log(iter2)/log(m3))
      IF(color<1)
        color=1
      ENDIF
      IF(color>63)
        color=63
      ENDIF
      color=color+129
    ELSEIF(|z-zc|<qqc)
      done=1
      color=63*(log(iter2)/log(m3))
      IF(color<1)
        color=1
      ENDIF
      IF(color>63)
        color=63
      ENDIF
      color=color+192
    ENDIF
    IF(done)
      z=color-iter-7
      notfirstpixel=1
    ENDIF
  ENDIF
  done==0
  ;SOURCE: nuclear.frm
}


Nuclear_JColLogB {; p1, p2, p3 parameters. Use float=y, outside=real, 
                  ; logmap=0, ; periodicity=0. 
                  ; Colors from 4 ranges by finite attractors
                  ; and attracted to infinity. Uses a "logmap".
                  ; Variation: qq shrunk.
                  ; Suitable for deeper zooms.
  a=p1, c=p2, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2 
  r3ac=r3*ac, ack=k*ac
  m=maxit-1, m4=m/2, iter=0, done=0, iter2=0
  qq=0.00000001, bail=1000
  IF(notfirstpixel)
    m4=0
  ELSE
    za=-1
    zb=0
    zc=1
    qqa=qq
    qqb=qq
    qqc=qq
  ENDIF
  m3=m-m4
  z=pixel
  :
  IF(iter<m4)
    IF(qqa>0)
      z2=sqr(za)
      z3=za*z2
      za=(r3a2*z3-a6*z2-r3ac*za-ac)/(r3*za+1)+ack
      IF(|za|>bail)
        qqa=0
      ENDIF
    ENDIF
    IF(qqb>0)
      z2=sqr(zb)
      z3=zb*z2
      zb=(r3a2*z3-a6*z2-r3ac*zb-ac)/(r3*zb+1)+ack
      IF(|zb|>bail)
        qqb=0
      ENDIF
    ENDIF
    IF(qqc>0)
      z2=sqr(zc)
      z3=zc*z2
      zc=(r3a2*z3-a6*z2-r3ac*zc-ac)/(r3*zc+1)+ack
      IF(|zc|>bail)
        qqc=0
      ENDIF
    ENDIF
    iter=iter+1
  ELSE
    z2=sqr(z)
    z3=z*z2
    z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack
    iter=iter+1
    iter2=iter2+1
    IF(lastsqr>bail)
      done=1
      color=66*(log(iter2)/log(m3))
      IF(color<1)
        color=1
      ENDIF
      IF(color>66)
        color=66
      ENDIF
    ELSEIF(|z-za|<qqa)
      done=1
      color=63*(log(iter2)/log(m3))
      IF(color<1)
        color=1
      ENDIF
      IF(color>63)
        color=63
      ENDIF
      color=color+66
    ELSEIF(|z-zb|<qqb)
      done=1
      color=63*(log(iter2)/log(m3))
      IF(color<1)
        color=1
      ENDIF
      IF(color>63)
        color=63
      ENDIF
      color=color+129
    ELSEIF(|z-zc|<qqc)
      done=1
      color=63*(log(iter2)/log(m3))
      IF(color<1)
        color=1
      ENDIF
      IF(color>63)
        color=63
      ENDIF
      color=color+192
    ENDIF
    IF(done)
      z=color-iter-7
      notfirstpixel=1
    ENDIF
  ENDIF
  done==0
  ;SOURCE: nuclear.frm
}


Nuclear_JColLogC {; p1, p2, p3 parameters. 
                  ; Use float=y, outside=real, logmap=0, periodicity=0. 
                  ; Colors from 4 ranges by finite attractors
                  ; and attracted to infinity. Uses a "logmap".
                  ; Variation: Log reversed for high iterations.
  a=p1, c=p2, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2 
  r3ac=r3*ac, ack=k*ac
  m=maxit-1, m4=m/2, iter=0, done=0, iter2=0, fi=3000
  qq=0.000001, bail=1000
  IF(notfirstpixel)
    m4=0
  ELSE
    za=-1
    zb=0
    zc=1
    qqa=qq
    qqb=qq
    qqc=qq
  ENDIF
  m3=m-m4
  z=pixel
  :
  IF(iter<m4)
    IF(qqa>0)
      z2=sqr(za)
      z3=za*z2
      za=(r3a2*z3-a6*z2-r3ac*za-ac)/(r3*za+1)+ack
      IF(|za|>bail)
        qqa=0
      ENDIF
    ENDIF
    IF(qqb>0)
      z2=sqr(zb)
      z3=zb*z2
      zb=(r3a2*z3-a6*z2-r3ac*zb-ac)/(r3*zb+1)+ack
      IF(|zb|>bail)
        qqb=0
      ENDIF
    ENDIF
    IF(qqc>0)
      z2=sqr(zc)
      z3=zc*z2
      zc=(r3a2*z3-a6*z2-r3ac*zc-ac)/(r3*zc+1)+ack
      IF(|zc|>bail)
        qqc=0
      ENDIF
    ENDIF
    iter=iter+1
  ELSE
    z2=sqr(z)
    z3=z*z2
    z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack
    iter=iter+1
    iter2=iter2+1
    IF(lastsqr>bail)
      done=1
      color=66*(log(iter2)/log(m3))
      IF(color<1)
        color=1
      ENDIF
      IF(color>66)
        color=66
      ENDIF
    ELSEIF(|z-za|<qqa)
      done=1
      color=63*(log(iter2-fi)/log(m3-fi))
      IF(color<1)
        color=1
      ENDIF
      IF(color>63)
        color=63
      ENDIF
      color=color+66
    ELSEIF(|z-zb|<qqb)
      done=1
      color=63*(log(iter2-fi)/log(m3-fi))
      IF(color<1)
        color=1
      ENDIF
      IF(color>63)
        color=63
      ENDIF
      color=color+129
    ELSEIF(|z-zc|<qqc)
      done=1
      color=63*(log(iter2-fi)/log(m3-fi))
      IF(color<1)
        color=1
      ENDIF
      IF(color>63)
        color=63
      ENDIF
      color=color+192
    ENDIF
    IF(done)
      z=color-iter-7
      notfirstpixel=1
    ENDIF
  ENDIF
  done==0
  ;SOURCE: nuclear.frm
}


Nuclear_Jul {; p1, p2, p3 parameters. Use float=y.
  a=p1, c=p2, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2 
  r3ac=r3*ac, ack=k*ac
  z=pixel:
  z2=sqr(z)
  z3=z*z2
  z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack
  lastsqr<=1000000
  ;SOURCE: nuclear.frm
}


Nuclear_JulCol {; p1, p2, p3 parameters. Use float=y, outside=real, 
                ; logmap=0, periodicity=0. 
                ; Colors from 4 ranges by finite attractors
                ; and attracted to infinity.
  a=p1, c=p2, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2 
  r3ac=r3*ac, ack=k*ac
  m=maxit-1, m4=m/2, iter=0, done=0, iter2=0
  qq=0.000001, bail=1000
  IF(notfirstpixel)
    m4=0
  ELSE
    za=-1
    zb=0
    zc=1
    qqa=qq
    qqb=qq
    qqc=qq
  ENDIF
  z=pixel
  :
  IF(iter<m4)
    IF(qqa>0)
      z2=sqr(za)
      z3=za*z2
      za=(r3a2*z3-a6*z2-r3ac*za-ac)/(r3*za+1)+ack
      IF(|za|>bail)
        qqa=0
      ENDIF
    ENDIF
    IF(qqb>0)
      z2=sqr(zb)
      z3=zb*z2
      zb=(r3a2*z3-a6*z2-r3ac*zb-ac)/(r3*zb+1)+ack
      IF(|zb|>bail)
        qqb=0
      ENDIF
    ENDIF
    IF(qqc>0)
      z2=sqr(zc)
      z3=zc*z2
      zc=(r3a2*z3-a6*z2-r3ac*zc-ac)/(r3*zc+1)+ack
      IF(|zc|>bail)
        qqc=0
      ENDIF
    ENDIF
    iter=iter+1
  ELSE
    z2=sqr(z)
    z3=z*z2
    z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack
    iter=iter+1
    iter2=iter2+1
    IF(lastsqr>bail)
      done=1
      color=iter2
      IF(color<1)
        color=1
      ENDIF
      IF(color>66)
        color=66
      ENDIF
    ELSEIF(|z-za|<qqa)
      done=1
      color=iter2
      IF(color<1)
        color=1
      ENDIF
      IF(color>63)
        color=63
      ENDIF
      color=color+66
    ELSEIF(|z-zb|<qqb)
      done=1
      color=iter2
      IF(color<1)
        color=1
      ENDIF
      IF(color>63)
        color=63
      ENDIF
      color=color+129
    ELSEIF(|z-zc|<qqc)
      done=1
      color=iter2
      IF(color<1)
        color=1
      ENDIF
      IF(color>63)
        color=63
      ENDIF
      color=color+192
    ENDIF
    IF(done)
      z=color-iter-7
      notfirstpixel=1
    ENDIF
  ENDIF
  done==0
  ;SOURCE: nuclear.frm
}


Nuclear_M_a {; p2, p3 parameters. c is Mandel parameter. 
             ; Colored based on all 3 critical points. 
             ; Use outside=real, float=y, periodicity=n,
             ; maxiter>=256, and logmap=0.
             ; For logmap effect put real(p1) minimum iteration,
             ; imag(p1) bigger than 1, e.g. 2.
             ; Color 0 is for all critical points trapped.
             ; Colors 1-66, 67-129, 130-192, and 193-255 are separate 
             ; ranges.
             ; Use first for outside, second thru fourth for two
             ; critical points escape, one trapped...
             ; Edited for Fractint v. 20 by George Martin, 10,98
  a=pixel, c=p2, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2 
  r3ac=r3*ac, ack=k*ac
  min=real(p1)
  p=imag(p1)
  IF(p==0)
    p=1
  ENDIF
  z1=0, z2=1, z3=-1
  qq=10^(-2), iter=0, done=0, z2done=0, m=maxit-1, z1done=0, z3done=0 
  m2=floor(maxit/2), z1a=z1, z2a=z2, z3a=z3, flag=0, z1d2=0, z2d2=0 
  z3d2=0, qrl=1.5, q2=0.15
  :
  IF(z3done==0)
    zz2=sqr(z3)
    zz3=z3*zz2
    z3=(r3a2*zz3-a6*zz2-r3ac*z3-ac)/(r3*z3+1)+ack
    IF(lastsqr>10000)
      z3done=iter
      z3d2=1
    ENDIF
  ENDIF
  IF(z2done==0)
    zz2=sqr(z2)
    zz3=z2*zz2
    z2=(r3a2*zz3-a6*zz2-r3ac*z2-ac)/(r3*z2+1)+ack
    IF(lastsqr>10000)
      z2done=iter
      z2d2=1
    ENDIF
  ENDIF
  IF(z1done==0)
    zz2=sqr(z1)
    zz3=z1*zz2
    z1=(r3a2*zz3-a6*zz2-r3ac*z1-ac)/(r3*z1+1)+ack
    IF(lastsqr>10000)
      z1done=iter
      z1d2=1
    ENDIF
  ENDIF
  iter=iter+1
  IF(iter>=m2 && iter<(m2+1) && flag==0)
    z1chek=z1
    z2chek=z2
    z3chek=z3
    flag=1
    spd=0
    first=0
    same12=0
    same23=0
    same13=0
  ELSEIF(flag==1)
    zz2=sqr(z1a)
    zz3=z1a*zz2
    z1a=(r3a2*zz3-a6*zz2-r3ac*z1a-ac)/(r3*z1a+1)+ack
    zz2=sqr(z2a)
    zz3=z2a*zz2
    z2a=(r3a2*zz3-a6*zz2-r3ac*z2a-ac)/(r3*z2a+1)+ack
    zz2=sqr(z3a)
    zz3=z3a*zz2
    z3a=(r3a2*zz3-a6*zz2-r3ac*z3a-ac)/(r3*z3a+1)+ack
    spd=spd+1
    IF(|z1a-z2chek|<qq)
      same12=1
      z1d2=spd
      IF(first==0 && |z2a-z1chek|>=qq)
        first=1
      ENDIF
    ENDIF
    IF(|z2a-z1chek|<qq)
      same12=1
      z2d2=spd
      IF(first==0 && |z1a-z2chek|>=qq)
        first=2
      ENDIF
    ENDIF
    IF(|z1a-z3chek|<qq)
      same13=1
      z1d2=spd
      IF(first==0 && |z3a-z1chek|>=qq)
        first=1
      ENDIF
    ENDIF
    IF(|z3a-z1chek|<qq)
      same13=1
      z3d2=spd
      IF(first==0 && |z1a-z3chek|>=qq)
        first=3
      ENDIF
    ENDIF
    IF(|z2a-z3chek|<qq)
      same23=1
      z2d2=spd
      IF(first==0 && |z3a-z2chek|>=qq)
        first=2
      ENDIF
    ENDIF
    IF(|z3a-z2chek|<qq)
      same23=1
      z3d2=spd
      IF(first==0 && |z2a-z3chek|>=qq)
        first=3
      ENDIF
    ENDIF
  ENDIF
  IF((z1d2>0 && z2d2>0 && z3d2>0) || iter==m)
    IF(z1done==0 || z2done==0 || z3done==0)
      IF(z2done>0 && z3done>0)
        ddd=z2done
        IF(z3done>ddd)
          ddd=z3done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+66
      ELSEIF(z1done>0 && z3done>0)
        ddd=z1done
        IF(z3done>ddd)
          ddd=z3done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+129
      ELSEIF(z1done>0 && z2done>0)
        ddd=z1done
        IF(z2done>ddd)
          ddd=z2done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+192
      ELSEIF(z1done>0)
        IF(same23!=0 && first!=0)
          ddd=z1done*(q2*abs(z2d2-z3d2))^qrl
          color=((ddd-min)/(m-min))^(1/p)*63
        ELSE
          color=((z1done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(same23==0)
          color=color+66
        ELSE
          IF(first==0)
            color=color+66
          ELSEIF(first==2)
            color=color+129
          ELSE
            color=color+192
          ENDIF
        ENDIF
      ELSEIF(z2done>0)
        IF(same13!=0 && first!=0)
          ddd=z2done*(q2*abs(z1d2-z3d2))^qrl
          color=((ddd-min)/(m-min))^(1/p)*63
        ELSE
          color=((z2done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(same13==0)
          color=color+129
        ELSE
          IF(first==0)
            color=color+129
          ELSEIF(first==1)
            color=color+66
          ELSE
            color=color+192
          ENDIF
        ENDIF
      ELSEIF(z3done>0)
        IF(same12!=0 && first!=0)
          ddd=z3done*(q2*abs(z1d2-z2d2))^qrl
          color=((ddd-min)/(m-min))^(1/p)*63
        ELSE
          color=((z3done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(same12==0)
          color=color+192
        ELSE
          IF(first==0)
            color=color+192
          ELSEIF(first==1)
            color=color+66
          ELSE
            color=color+129
          ENDIF
        ENDIF
      ELSEIF(same12==1 && same23==1)
        ddd=abs(z1d2-z2d2)
        IF(abs(z1d2-z3d2)<ddd)
          ddd=abs(z1d2-z3d2)
        ENDIF
        IF(abs(z2d2-z3d2)<ddd)
          ddd=abs(z2d2-z3d2)
        ENDIF
        IF(first==0)
          color=(ddd/m)^(1/p)*66
          IF(color>66)
            color=66
          ENDIF
        ELSE
          color=(ddd/m)^(1/p)*63
          IF(color>63)
            color=63
          ENDIF
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(first==1)
          color=color+66
        ELSEIF(first==2)
          color=color+129
        ELSEIF(first==3)
          color=color+192
        ENDIF
      ELSEIF(same12==1)
        ddd=abs(z1d2-z2d2)
        color=(ddd/m)^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(first==0)
          color=color+192
        ELSEIF(first==1)
          color=color+66
        ELSE
          color=color+129
        ENDIF
      ELSEIF(same13==1)
        ddd=abs(z1d2-z3d2)
        color=(ddd/m)^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(first==0)
          color=color+129
        ELSEIF(first==1)
          color=color+66
        ELSE
          color=color+192
        ENDIF
      ELSEIF(same23==1)
        ddd=abs(z2d2-z3d2)
        color=(ddd/m)^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(first==0)
          color=color+66
        ELSEIF(first==2)
          color=color+129
        ELSE
          color=color+192
        ENDIF
      ELSE
        color=0
      ENDIF
    ELSE
      color=((iter-min)/(m-min))^(1/p)*66
      IF(color>66)
        color=66
      ENDIF
      IF(color<1)
        color=1
      ENDIF
    ENDIF
    done=1
    z=color-iter-7
  ENDIF
  done==0
  ;SOURCE: nuclear.frm
}


Nuclear_M_a_-1 {; p2, p3 parameters. Use float=y. a is Mandel 
                ; parameter, critical point -1.
  a=pixel, c=p2, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2 
  r3ac=r3*ac, ack=k*ac
  z=-1:
  z2=sqr(z)
  z3=z*z2
  z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack
  lastsqr<=1000000
  ;SOURCE: nuclear.frm
}


Nuclear_M_a_0 {; p2, p3 parameters. Use float=y. a is Mandel parameter,
               ; critical point 0.
  a=pixel, c=p2, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2 
  r3ac=r3*ac, ack=k*ac
  z=0:
  z2=sqr(z)
  z3=z*z2
  z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack
  lastsqr<=1000000
  ;SOURCE: nuclear.frm
}


Nuclear_M_a_1 {; p2, p3 parameters. Use float=y. a is Mandel parameter,
               ; critical point 1.
  a=pixel, c=p2, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2 
  r3ac=r3*ac, ack=k*ac
  z=1:
  z2=sqr(z)
  z3=z*z2
  z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack
  lastsqr<=1000000
  ;SOURCE: nuclear.frm
}


Nuclear_M_aq {; p2, p3 parameters. c is Mandel parameter. 
              ; Colored based on all 3 critical points. 
              ; Use outside=real, float=y, periodicity=n,
              ; maxiter>=256, and logmap=0.
              ; For logmap effect put real(p2) minimum iteration,
              ; imag(p2) bigger than 1, e.g. 2.
              ; Color 0 is for all critical points trapped.
              ; Colors 1-66, 67-129, 130-192, and 193-255 are separate 
              ; ranges.
              ; Use first for outside, second thru fourth for two
              ; critical points escape, one trapped...
              ; Coloring variant.
              ; Edited for Fractint v. 20 by George Martin, 10,98
  a=pixel, c=p2, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2 
  r3ac=r3*ac, ack=k*ac
  min=real(p2)
  p=imag(p2)
  IF(p==0)
    p=1
  ENDIF
  z1=0, z2=1, z3=-1
  qq=10^(-3), iter=0, done=0, z2done=0, m=maxit-1, z1done=0, z3done=0 
  m2=floor(m/2), z1a=z1, z2a=z2, z3a=z3, flag=0, z1d2=0, z2d2=0, z3d2=0 
  qrl=1.5, q2=0.15
  qq2=10^(-7)
  :
  IF(z3done==0)
    zz2=sqr(z3)
    zz3=z3*zz2
    z3=(r3a2*zz3-a6*zz2-r3ac*z3-ac)/(r3*z3+1)+ack
    IF(lastsqr>10000)
      z3done=iter
      z3d2=1
    ENDIF
  ENDIF
  IF(z2done==0)
    zz2=sqr(z2)
    zz3=z2*zz2
    z2=(r3a2*zz3-a6*zz2-r3ac*z2-ac)/(r3*z2+1)+ack
    IF(lastsqr>10000)
      z2done=iter
      z2d2=1
    ENDIF
  ENDIF
  IF(z1done==0)
    zz2=sqr(z1)
    zz3=z1*zz2
    z1=(r3a2*zz3-a6*zz2-r3ac*z1-ac)/(r3*z1+1)+ack
    IF(lastsqr>10000)
      z1done=iter
      z1d2=1
    ENDIF
  ENDIF
  iter=iter+1
  IF(iter>=m2 && flag==0)
    z1chek=z1
    z2chek=z2
    z3chek=z3
    flag=1
    spd=0
    first=0
    same12=0
    same23=0
    same13=0
  ELSEIF(flag==1)
    IF(z1d2==0)
      zz2=sqr(z1a)
      zz3=z1a*zz2
      z1a=(r3a2*zz3-a6*zz2-r3ac*z1a-ac)/(r3*z1a+1)+ack
    ENDIF
    IF(z2d2==0)
      zz2=sqr(z2a)
      zz3=z2a*zz2
      z2a=(r3a2*zz3-a6*zz2-r3ac*z2a-ac)/(r3*z2a+1)+ack
    ENDIF
    IF(z3d2==0)
      zz2=sqr(z3a)
      zz3=z3a*zz2
      z3a=(r3a2*zz3-a6*zz2-r3ac*z3a-ac)/(r3*z3a+1)+ack
    ENDIF
    spd=spd+1
    IF(|z1a-z2chek|<qq && z1d2==0)
      same12=1
      z1d2=spd
      IF(first==0 && |z2a-z1chek|>=qq)
        first=1
      ENDIF
    ENDIF
    IF(|z2a-z1chek|<qq && z2d2==0)
      same12=1
      z2d2=spd
      IF(first==0 && |z1a-z2chek|>=qq)
        first=2
      ENDIF
    ENDIF
    IF(|z1a-z3chek|<qq && z1d2==0)
      same13=1
      z1d2=spd
      IF(first==0 && |z3a-z1chek|>=qq)
        first=1
      ENDIF
    ENDIF
    IF(|z3a-z1chek|<qq && z3d2==0)
      same13=1
      z3d2=spd
      IF(first==0 && |z1a-z3chek|>=qq)
        first=3
      ENDIF
    ENDIF
    IF(|z2a-z3chek|<qq && z2d2==0)
      same23=1
      z2d2=spd
      IF(first==0 && |z3a-z2chek|>=qq)
        first=2
      ENDIF
    ENDIF
    IF(|z3a-z2chek|<qq && z3d2==0)
      same23=1
      z3d2=spd
      IF(first==0 && |z2a-z3chek|>=qq)
        first=3
      ENDIF
    ENDIF
    IF(|z1a-z1chek|<qq2)
      z1d2=spd
    ENDIF
    IF(|z2a-z2chek|<qq2)
      z2d2=spd
    ENDIF
    IF(|z3a-z3chek|<qq2)
      z3d2=spd
    ENDIF
  ENDIF
  IF((z1d2>0 && z2d2>0 && z3d2>0) || iter==m)
    IF(z1done==0 || z2done==0 || z3done==0)
      IF(z2done>0 && z3done>0)
        ddd=z2done
        IF(z3done>ddd)
          ddd=z3done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+66
      ELSEIF(z1done>0 && z3done>0)
        ddd=z1done
        IF(z3done>ddd)
          ddd=z3done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+129
      ELSEIF(z1done>0 && z2done>0)
        ddd=z1done
        IF(z2done>ddd)
          ddd=z2done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+192
      ELSEIF(z1done>0)
        IF(same23!=0 && first!=0)
          IF(first==2)
            ddd=z3d2
            cj=129
          ELSE
            ddd=z2d2
            cj=192
          ENDIF
          color=((ddd-min)/(m2-min))^(1/p)*63
          color=64-color
        ELSE
          cj=66
          color=((z1done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+cj
      ELSEIF(z2done>0)
        IF(same13!=0 && first!=0)
          IF(first==1)
            ddd=z3d2
            cj=66
          ELSE
            ddd=z1d2
            cj=192
          ENDIF
          color=((ddd-min)/(m2-min))^(1/p)*63
          color=64-color
        ELSE
          cj=129
          color=((z2done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+cj
      ELSEIF(z3done>0)
        IF(same12!=0 && first!=0)
          IF(first==1)
            ddd=z2d2
            cj=66
          ELSE
            ddd=z1d2
            cj=129
          ENDIF
          color=((ddd-min)/(m-min))^(1/p)*63
          color=64-color
        ELSE
          cj=192
          color=((z3done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+cj
      ELSEIF(same12==1 && same23==1)
        IF(first==1)
          ddd=z2d2+z3d2
          cj=66
        ELSEIF(first==2)
          ddd=z1d2+z3d2
          cj=129
        ELSEIF(first==3)
          ddd=z1d2+z2d2
          cj=192
        ELSE
          ddd=z1d2+z2d2+z3d2
          cj=0
        ENDIF
        IF(first==0)
          color=(ddd/m2)^(1/p)*66
          color=67-color
          IF(color>66)
            color=66
          ENDIF
          IF(color<1)
            color=1
          ENDIF
        ELSE
          color=(ddd/m2)^(1/p)*63
          color=64-color
          IF(color>63)
            color=63
          ENDIF
          IF(color<1)
            color=1
          ENDIF
        ENDIF
        color=color+cj
      ELSEIF(same12==1)
        IF(first==1)
          ddd=z2d2
          cj=129
        ELSEIF(first==2)
          ddd=z1d2
          cj=66
        ELSE
          cj=192
          ddd=z1d2+z2d2
        ENDIF
        color=(ddd/m2)^(1/p)*63
        color=64-color
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+cj
      ELSEIF(same13==1)
        IF(first==1)
          cj=192
          ddd=z3d2
        ELSEIF(first==3)
          cj=66
          ddd=z1d2
        else
          cj=129
          ddd=z1d2+z3d2
        ENDIF
        color=(ddd/m2)^(1/p)*63
        color=64-color
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+cj
      ELSEIF(same23==1)
        IF(first==2)
          ddd=z3d2
          cj=192
        ELSEIF(first==3)
          ddd=z2d2
          cj=129
        ELSE
          ddd=z2d2+z3d2
          cj=66
        ENDIF
        color=(ddd/m2)^(1/p)*63
        color=64-color
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+cj
      ELSE
        color=0
      ENDIF
    ELSE
      color=((iter-min)/(m-min))^(1/p)*66
      IF(color>66)
        color=66
      ENDIF
      IF(color<1)
        color=1
      ENDIF
    ENDIF
    done=1
    z=color-iter-7
  ENDIF
  done==0
  ;SOURCE: nuclear.frm
}


Nuclear_M_c {; p1, p3 parameters. c is Mandel parameter. 
             ; Colored based on all 3 critical points. 
             ; Use outside=real, float=y, periodicity=n,
             ; maxiter>=256, and logmap=0.
             ; For logmap effect put real(p2) minimum iteration,
             ; imag(p2) bigger than 1, e.g. 2.
             ; Color 0 is for all critical points trapped.
             ; Colors 1-66, 67-129, 130-192, and 193-255 are separate 
             ; ranges.
             ; Use first for outside, second thru fourth for two
             ; critical points escape, one trapped...
             ; Edited for Fractint v. 20 by George Martin, 10/98
  a=p1, c=pixel, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2 
  r3ac=r3*ac, ack=k*ac
  min=real(p2)
  p=imag(p2)
  IF(p==0)
    p=1
  ENDIF
  z1=0, z2=1, z3=-1
  qq=10^(-2), iter=0, done=0, z2done=0, m=maxit-1, z1done=0, z3done=0 
  m2=floor(maxit/2), z1a=z1, z2a=z2, z3a=z3, flag=0, z1d2=0, z2d2=0 
  z3d2=0, qrl=1.5, q2=0.15
  :
  IF(z3done==0)
    zz2=sqr(z3)
    zz3=z3*zz2
    z3=(r3a2*zz3-a6*zz2-r3ac*z3-ac)/(r3*z3+1)+ack
    IF(lastsqr>10000)
      z3done=iter
      z3d2=1
    ENDIF
  ENDIF
  IF(z2done==0)
    zz2=sqr(z2)
    zz3=z2*zz2
    z2=(r3a2*zz3-a6*zz2-r3ac*z2-ac)/(r3*z2+1)+ack
    IF(lastsqr>10000)
      z2done=iter
      z2d2=1
    ENDIF
  ENDIF
  IF(z1done==0)
    zz2=sqr(z1)
    zz3=z1*zz2
    z1=(r3a2*zz3-a6*zz2-r3ac*z1-ac)/(r3*z1+1)+ack
    IF(lastsqr>10000)
      z1done=iter
      z1d2=1
    ENDIF
  ENDIF
  iter=iter+1
  IF(iter>=m2 && iter<(m2+1) && flag==0)
    z1chek=z1
    z2chek=z2
    z3chek=z3
    flag=1
    spd=0
    first=0
    same12=0
    same23=0
    same13=0
  ELSEIF(flag==1)
    zz2=sqr(z1a)
    zz3=z1a*zz2
    z1a=(r3a2*zz3-a6*zz2-r3ac*z1a-ac)/(r3*z1a+1)+ack
    zz2=sqr(z2a)
    zz3=z2a*zz2
    z2a=(r3a2*zz3-a6*zz2-r3ac*z2a-ac)/(r3*z2a+1)+ack
    zz2=sqr(z3a)
    zz3=z3a*zz2
    z3a=(r3a2*zz3-a6*zz2-r3ac*z3a-ac)/(r3*z3a+1)+ack
    spd=spd+1
    IF(|z1a-z2chek|<qq)
      same12=1
      z1d2=spd
      IF(first==0 && |z2a-z1chek|>=qq)
        first=1
      ENDIF
    ENDIF
    IF(|z2a-z1chek|<qq)
      same12=1
      z2d2=spd
      IF(first==0 && |z1a-z2chek|>=qq)
        first=2
      ENDIF
    ENDIF
    IF(|z1a-z3chek|<qq)
      same13=1
      z1d2=spd
      IF(first==0 && |z3a-z1chek|>=qq)
        first=1
      ENDIF
    ENDIF
    IF(|z3a-z1chek|<qq)
      same13=1
      z3d2=spd
      IF(first==0 && |z1a-z3chek|>=qq)
        first=3
      ENDIF
    ENDIF
    IF(|z2a-z3chek|<qq)
      same23=1
      z2d2=spd
      IF(first==0 && |z3a-z2chek|>=qq)
        first=2
      ENDIF
    ENDIF
    IF(|z3a-z2chek|<qq)
      same23=1
      z3d2=spd
      IF(first==0 && |z2a-z3chek|>=qq)
        first=3
      ENDIF
    ENDIF
  ENDIF
  IF((z1d2>0 && z2d2>0 && z3d2>0) || iter==m)
    IF(z1done==0 || z2done==0 || z3done==0)
      IF(z2done>0 && z3done>0)
        ddd=z2done
        IF(z3done>ddd)
          ddd=z3done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+66
      ELSEIF(z1done>0 && z3done>0)
        ddd=z1done
        IF(z3done>ddd)
          ddd=z3done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+129
      ELSEIF(z1done>0 && z2done>0)
        ddd=z1done
        IF(z2done>ddd)
          ddd=z2done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+192
      ELSEIF(z1done>0)
        IF(same23!=0 && first!=0)
          ddd=z1done*(q2*abs(z2d2-z3d2))^qrl
          color=((ddd-min)/(m-min))^(1/p)*63
        ELSE
          color=((z1done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(same23==0)
          color=color+66
        ELSE
          IF(first==0)
            color=color+66
          ELSEIF(first==2)
            color=color+129
          ELSE
            color=color+192
          ENDIF
        ENDIF
      ELSEIF(z2done>0)
        IF(same13!=0 && first!=0)
          ddd=z2done*(q2*abs(z1d2-z3d2))^qrl
          color=((ddd-min)/(m-min))^(1/p)*63
        ELSE
          color=((z2done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(same13==0)
          color=color+129
        ELSE
          IF(first==0)
            color=color+129
          ELSEIF(first==1)
            color=color+66
          ELSE
            color=color+192
          ENDIF
        ENDIF
      ELSEIF(z3done>0)
        IF(same12!=0 && first!=0)
          ddd=z3done*(q2*abs(z1d2-z2d2))^qrl
          color=((ddd-min)/(m-min))^(1/p)*63
        ELSE
          color=((z3done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(same12==0)
          color=color+192
        ELSE
          IF(first==0)
            color=color+192
          ELSEIF(first==1)
            color=color+66
          ELSE
            color=color+129
          ENDIF
        ENDIF
      ELSEIF(same12==1 && same23==1)
        ddd=abs(z1d2-z2d2)
        IF(abs(z1d2-z3d2)<ddd)
          ddd=abs(z1d2-z3d2)
        ENDIF
        IF(abs(z2d2-z3d2)<ddd)
          ddd=abs(z2d2-z3d2)
        ENDIF
        IF(first==0)
          color=(ddd/m)^(1/p)*66
          IF(color>66)
            color=66
          ENDIF
        ELSE
          color=(ddd/m)^(1/p)*63
          IF(color>63)
            color=63
          ENDIF
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(first==1)
          color=color+66
        ELSEIF(first==2)
          color=color+129
        ELSEIF(first==3)
          color=color+192
        ENDIF
      ELSEIF(same12==1)
        ddd=abs(z1d2-z2d2)
        color=(ddd/m)^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(first==0)
          color=color+192
        ELSEIF(first==1)
          color=color+66
        ELSE
          color=color+129
        ENDIF
      ELSEIF(same13==1)
        ddd=abs(z1d2-z3d2)
        color=(ddd/m)^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(first==0)
          color=color+129
        ELSEIF(first==1)
          color=color+66
        ELSE
          color=color+192
        ENDIF
      ELSEIF(same23==1)
        ddd=abs(z2d2-z3d2)
        color=(ddd/m)^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(first==0)
          color=color+66
        ELSEIF(first==2)
          color=color+129
        ELSE
          color=color+192
        ENDIF
      ELSE
        color=0
      ENDIF
    ELSE
      color=((iter-min)/(m-min))^(1/p)*66
      IF(color>66)
        color=66
      ENDIF
      IF(color<1)
        color=1
      ENDIF
    ENDIF
    done=1
    z=color-iter-7
  ENDIF
  done==0
  ;SOURCE: nuclear.frm
}


Nuclear_M_c_-1 {; p1, p3 parameters. Use float=y. c is Mandel 
                ; parameter, critical point -1.
  a=p1, c=pixel, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2 
  r3ac=r3*ac, ack=k*ac
  z=-1:
  z2=sqr(z)
  z3=z*z2
  z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack
  lastsqr<=1000000
  ;SOURCE: nuclear.frm
}


Nuclear_M_c_0 {; p1, p3 parameters. Use float=y. c is Mandel parameter,
               ; critical point 0.
  a=p1, c=pixel, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2 
  r3ac=r3*ac, ack=k*ac
  z=0:
  z2=sqr(z)
  z3=z*z2
  z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack
  lastsqr<=1000000
  ;SOURCE: nuclear.frm
}


Nuclear_M_c_1 {; p1, p3 parameters. Use float=y. c is Mandel parameter,
               ; critical point 1.
  a=p1, c=pixel, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2 
  r3ac=r3*ac, ack=k*ac
  z=1:
  z2=sqr(z)
  z3=z*z2
  z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack
  lastsqr<=1000000
  ;SOURCE: nuclear.frm
}


Nuclear_M_cq {; p1, p3 parameters. c is Mandel parameter. 
              ; Colored based on all 3 critical points. 
              ; Use outside=real, float=y, periodicity=n,
              ; maxiter>=256, and logmap=0.
              ; For logmap effect put real(p2) minimum iteration,
              ; imag(p2) bigger than 1, e.g. 2.
              ; Color 0 is for all critical points trapped.
              ; Colors 1-66, 67-129, 130-192, and 193-255 are separate 
              ; ranges.
              ; Use first for outside, second thru fourth for two
              ; critical points escape, one trapped...
              ; Coloring variant.
  a=p1, c=pixel, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2 
  r3ac=r3*ac, ack=k*ac
  min=real(p2)
  p=imag(p2)
  IF(p==0)
    p=1
  ENDIF
  z1=0, z2=1, z3=-1
  qq=0.001, iter=0, done=0, z2done=0, m=maxit-1, z1done=0, z3done=0 
  m2=floor(m/2), z1a=z1, z2a=z2, z3a=z3, flag=0, z1d2=0, z2d2=0, z3d2=0 
  qrl=1.5, q2=0.15
  qq2=0.0000001
  :
  IF(z3done==0)
    zz2=sqr(z3)
    zz3=z3*zz2
    z3=(r3a2*zz3-a6*zz2-r3ac*z3-ac)/(r3*z3+1)+ack
    IF(lastsqr>10000)
      z3done=iter
      z3d2=1
    ENDIF
  ENDIF
  IF(z2done==0)
    zz2=sqr(z2)
    zz3=z2*zz2
    z2=(r3a2*zz3-a6*zz2-r3ac*z2-ac)/(r3*z2+1)+ack
    IF(lastsqr>10000)
      z2done=iter
      z2d2=1
    ENDIF
  ENDIF
  IF(z1done==0)
    zz2=sqr(z1)
    zz3=z1*zz2
    z1=(r3a2*zz3-a6*zz2-r3ac*z1-ac)/(r3*z1+1)+ack
    IF(lastsqr>10000)
      z1done=iter
      z1d2=1
    ENDIF
  ENDIF
  iter=iter+1
  IF(iter>=m2 && flag==0)
    z1chek=z1
    z2chek=z2
    z3chek=z3
    flag=1
    spd=0
    first=0
    same12=0
    same23=0
    same13=0
  ELSEIF(flag==1)
    IF(z1d2==0)
      zz2=sqr(z1a)
      zz3=z1a*zz2
      z1a=(r3a2*zz3-a6*zz2-r3ac*z1a-ac)/(r3*z1a+1)+ack
    ENDIF
    IF(z2d2==0)
      zz2=sqr(z2a)
      zz3=z2a*zz2
      z2a=(r3a2*zz3-a6*zz2-r3ac*z2a-ac)/(r3*z2a+1)+ack
    ENDIF
    IF(z3d2==0)
      zz2=sqr(z3a)
      zz3=z3a*zz2
      z3a=(r3a2*zz3-a6*zz2-r3ac*z3a-ac)/(r3*z3a+1)+ack
    ENDIF
    spd=spd+1
    IF(|z1a-z2chek|<qq && z1d2==0)
      same12=1
      z1d2=spd
      IF(first==0 && |z2a-z1chek|>=qq)
        first=1
      ENDIF
    ENDIF
    IF(|z2a-z1chek|<qq && z2d2==0)
      same12=1
      z2d2=spd
      IF(first==0 && |z1a-z2chek|>=qq)
        first=2
      ENDIF
    ENDIF
    IF(|z1a-z3chek|<qq && z1d2==0)
      same13=1
      z1d2=spd
      IF(first==0 && |z3a-z1chek|>=qq)
        first=1
      ENDIF
    ENDIF
    IF(|z3a-z1chek|<qq && z3d2==0)
      same13=1
      z3d2=spd
      IF(first==0 && |z1a-z3chek|>=qq)
        first=3
      ENDIF
    ENDIF
    IF(|z2a-z3chek|<qq && z2d2==0)
      same23=1
      z2d2=spd
      IF(first==0 && |z3a-z2chek|>=qq)
        first=2
      ENDIF
    ENDIF
    IF(|z3a-z2chek|<qq && z3d2==0)
      same23=1
      z3d2=spd
      IF(first==0 && |z2a-z3chek|>=qq)
        first=3
      ENDIF
    ENDIF
    IF(|z1a-z1chek|<qq2)
      z1d2=spd
    ENDIF
    IF(|z2a-z2chek|<qq2)
      z2d2=spd
    ENDIF
    IF(|z3a-z3chek|<qq2)
      z3d2=spd
    ENDIF
  ENDIF
  IF((z1d2>0 && z2d2>0 && z3d2>0) || iter==m)
    IF(z1done==0 || z2done==0 || z3done==0)
      IF(z2done>0 && z3done>0)
        ddd=z2done
        IF(z3done>ddd)
          ddd=z3done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+66
      ELSEIF(z1done>0 && z3done>0)
        ddd=z1done
        IF(z3done>ddd)
          ddd=z3done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+129
      ELSEIF(z1done>0 && z2done>0)
        ddd=z1done
        IF(z2done>ddd)
          ddd=z2done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+192
      ELSEIF(z1done>0)
        IF(same23!=0 && first!=0)
          IF(first==2)
            ddd=z3d2
            cj=129
          ELSE
            ddd=z2d2
            cj=192
          ENDIF
          color=((ddd-min)/(m2-min))^(1/p)*63
          color=64-color
        ELSE
          cj=66
          color=((z1done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+cj
      ELSEIF(z2done>0)
        IF(same13!=0 && first!=0)
          IF(first==1)
            ddd=z3d2
            cj=66
          ELSE
            ddd=z1d2
            cj=192
          ENDIF
          color=((ddd-min)/(m2-min))^(1/p)*63
          color=64-color
        ELSE
          cj=129
          color=((z2done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+cj
      ELSEIF(z3done>0)
        IF(same12!=0 && first!=0)
          IF(first==1)
            ddd=z2d2
            cj=66
          ELSE
            ddd=z1d2
            cj=129
          ENDIF
          color=((ddd-min)/(m-min))^(1/p)*63
          color=64-color
        ELSE
          cj=192
          color=((z3done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+cj
      ELSEIF(same12==1 && same23==1)
        IF(first==1)
          ddd=z2d2+z3d2
          cj=66
        ELSEIF(first==2)
          ddd=z1d2+z3d2
          cj=129
        ELSEIF(first==3)
          ddd=z1d2+z2d2
          cj=192
        ELSE
          ddd=z1d2+z2d2+z3d2
          cj=0
        ENDIF
        IF(first==0)
          color=(ddd/m2)^(1/p)*66
          color=67-color
          IF(color>66)
            color=66
          ENDIF
          IF(color<1)
            color=1
          ENDIF
        ELSE
          color=(ddd/m2)^(1/p)*63
          color=64-color
          IF(color>63)
            color=63
          ENDIF
          IF(color<1)
            color=1
          ENDIF
        ENDIF
        color=color+cj
      ELSEIF(same12==1)
        IF(first==1)
          ddd=z2d2
          cj=129
        ELSEIF(first==2)
          ddd=z1d2
          cj=66
        ELSE
          cj=192
          ddd=z1d2+z2d2
        ENDIF
        color=(ddd/m2)^(1/p)*63
        color=64-color
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+cj
      ELSEIF(same13==1)
        IF(first==1)
          cj=192
          ddd=z3d2
        ELSEIF(first==3)
          cj=66
          ddd=z1d2
        else
          cj=129
          ddd=z1d2+z3d2
        ENDIF
        color=(ddd/m2)^(1/p)*63
        color=64-color
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+cj
      ELSEIF(same23==1)
        IF(first==2)
          ddd=z3d2
          cj=192
        ELSEIF(first==3)
          ddd=z2d2
          cj=129
        ELSE
          ddd=z2d2+z3d2
          cj=66
        ENDIF
        color=(ddd/m2)^(1/p)*63
        color=64-color
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+cj
      ELSE
        color=0
      ENDIF
    ELSE
      color=((iter-min)/(m-min))^(1/p)*66
      IF(color>66)
        color=66
      ENDIF
      IF(color<1)
        color=1
      ENDIF
    ENDIF
    done=1
    z=color-iter-7
  ENDIF
  done==0
  ;SOURCE: nuclear.frm
}


Nuclear_M_k {; p1, p2 parameters. k is Mandel parameter. Colored based 
             ; on all 3 critical points. Use outside=real, float=y, 
             ; periodicity=n, maxiter>=256, and logmap=0.
             ; For logmap effect put real(p3) minimum iteration,
             ; imag(p3) bigger than 1, e.g. 2.
             ; Color 0 is for all critical points trapped.
             ; Colors 1-66, 67-129, 130-192, and 193-255 are separate 
             ; ranges.
             ; Use first for outside, second thru fourth for two
             ; critical points escape, one trapped...
             ; Edited for Fractint v. 20 by George Martin, 10/98
  a=p1, c=p2, k=pixel, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2 
  r3ac=r3*ac, ack=k*ac
  min=real(p3)
  p=imag(p3)
  IF(p==0)
    p=1
  ENDIF
  z1=0, z2=1, z3=-1
  qq=10^(-2), iter=0, done=0, z2done=0, m=maxit-1, z1done=0, z3done=0 
  m2=floor(maxit/2), z1a=z1, z2a=z2, z3a=z3, flag=0, z1d2=0, z2d2=0 
  z3d2=0, qrl=1.5, q2=0.15
  :
  IF(z3done==0)
    zz2=sqr(z3)
    zz3=z3*zz2
    z3=(r3a2*zz3-a6*zz2-r3ac*z3-ac)/(r3*z3+1)+ack
    IF(lastsqr>10000)
      z3done=iter
      z3d2=1
    ENDIF
  ENDIF
  IF(z2done==0)
    zz2=sqr(z2)
    zz3=z2*zz2
    z2=(r3a2*zz3-a6*zz2-r3ac*z2-ac)/(r3*z2+1)+ack
    IF(lastsqr>10000)
      z2done=iter
      z2d2=1
    ENDIF
  ENDIF
  IF(z1done==0)
    zz2=sqr(z1)
    zz3=z1*zz2
    z1=(r3a2*zz3-a6*zz2-r3ac*z1-ac)/(r3*z1+1)+ack
    IF(lastsqr>10000)
      z1done=iter
      z1d2=1
    ENDIF
  ENDIF
  iter=iter+1
  IF(iter>=m2 && iter<(m2+1) && flag==0)
    z1chek=z1
    z2chek=z2
    z3chek=z3
    flag=1
    spd=0
    first=0
    same12=0
    same23=0
    same13=0
  ELSEIF(flag==1)
    zz2=sqr(z1a)
    zz3=z1a*zz2
    z1a=(r3a2*zz3-a6*zz2-r3ac*z1a-ac)/(r3*z1a+1)+ack
    zz2=sqr(z2a)
    zz3=z2a*zz2
    z2a=(r3a2*zz3-a6*zz2-r3ac*z2a-ac)/(r3*z2a+1)+ack
    zz2=sqr(z3a)
    zz3=z3a*zz2
    z3a=(r3a2*zz3-a6*zz2-r3ac*z3a-ac)/(r3*z3a+1)+ack
    spd=spd+1
    IF(|z1a-z2chek|<qq)
      same12=1
      z1d2=spd
      IF(first==0 && |z2a-z1chek|>=qq)
        first=1
      ENDIF
    ENDIF
    IF(|z2a-z1chek|<qq)
      same12=1
      z2d2=spd
      IF(first==0 && |z1a-z2chek|>=qq)
        first=2
      ENDIF
    ENDIF
    IF(|z1a-z3chek|<qq)
      same13=1
      z1d2=spd
      IF(first==0 && |z3a-z1chek|>=qq)
        first=1
      ENDIF
    ENDIF
    IF(|z3a-z1chek|<qq)
      same13=1
      z3d2=spd
      IF(first==0 && |z1a-z3chek|>=qq)
        first=3
      ENDIF
    ENDIF
    IF(|z2a-z3chek|<qq)
      same23=1
      z2d2=spd
      IF(first==0 && |z3a-z2chek|>=qq)
        first=2
      ENDIF
    ENDIF
    IF(|z3a-z2chek|<qq)
      same23=1
      z3d2=spd
      IF(first==0 && |z2a-z3chek|>=qq)
        first=3
      ENDIF
    ENDIF
  ENDIF
  IF((z1d2>0 && z2d2>0 && z3d2>0) || iter==m)
    IF(z1done==0 || z2done==0 || z3done==0)
      IF(z2done>0 && z3done>0)
        ddd=z2done
        IF(z3done>ddd)
          ddd=z3done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+66
      ELSEIF(z1done>0 && z3done>0)
        ddd=z1done
        IF(z3done>ddd)
          ddd=z3done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+129
      ELSEIF(z1done>0 && z2done>0)
        ddd=z1done
        IF(z2done>ddd)
          ddd=z2done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+192
      ELSEIF(z1done>0)
        IF(same23!=0 && first!=0)
          ddd=z1done*(q2*abs(z2d2-z3d2))^qrl
          color=((ddd-min)/(m-min))^(1/p)*63
        ELSE
          color=((z1done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(same23==0)
          color=color+66
        ELSE
          IF(first==0)
            color=color+66
          ELSEIF(first==2)
            color=color+129
          ELSE
            color=color+192
          ENDIF
        ENDIF
      ELSEIF(z2done>0)
        IF(same13!=0 && first!=0)
          ddd=z2done*(q2*abs(z1d2-z3d2))^qrl
          color=((ddd-min)/(m-min))^(1/p)*63
        ELSE
          color=((z2done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(same13==0)
          color=color+129
        ELSE
          IF(first==0)
            color=color+129
          ELSEIF(first==1)
            color=color+66
          ELSE
            color=color+192
          ENDIF
        ENDIF
      ELSEIF(z3done>0)
        IF(same12!=0 && first!=0)
          ddd=z3done*(q2*abs(z1d2-z2d2))^qrl
          color=((ddd-min)/(m-min))^(1/p)*63
        ELSE
          color=((z3done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(same12==0)
          color=color+192
        ELSE
          IF(first==0)
            color=color+192
          ELSEIF(first==1)
            color=color+66
          ELSE
            color=color+129
          ENDIF
        ENDIF
      ELSEIF(same12==1 && same23==1)
        ddd=abs(z1d2-z2d2)
        IF(abs(z1d2-z3d2)<ddd)
          ddd=abs(z1d2-z3d2)
        ENDIF
        IF(abs(z2d2-z3d2)<ddd)
          ddd=abs(z2d2-z3d2)
        ENDIF
        IF(first==0)
          color=(ddd/m)^(1/p)*66
          IF(color>66)
            color=66
          ENDIF
        ELSE
          color=(ddd/m)^(1/p)*63
          IF(color>63)
            color=63
          ENDIF
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(first==1)
          color=color+66
        ELSEIF(first==2)
          color=color+129
        ELSEIF(first==3)
          color=color+192
        ENDIF
      ELSEIF(same12==1)
        ddd=abs(z1d2-z2d2)
        color=(ddd/m)^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(first==0)
          color=color+192
        ELSEIF(first==1)
          color=color+66
        ELSE
          color=color+129
        ENDIF
      ELSEIF(same13==1)
        ddd=abs(z1d2-z3d2)
        color=(ddd/m)^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(first==0)
          color=color+129
        ELSEIF(first==1)
          color=color+66
        ELSE
          color=color+192
        ENDIF
      ELSEIF(same23==1)
        ddd=abs(z2d2-z3d2)
        color=(ddd/m)^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        IF(first==0)
          color=color+66
        ELSEIF(first==2)
          color=color+129
        ELSE
          color=color+192
        ENDIF
      ELSE
        color=0
      ENDIF
    ELSE
      color=((iter-min)/(m-min))^(1/p)*66
      IF(color>66)
        color=66
      ENDIF
      IF(color<1)
        color=1
      ENDIF
    ENDIF
    done=1
    z=color-iter-7
  ENDIF
  done==0
  ;SOURCE: nuclear.frm
}


Nuclear_M_k_-1 {; p1, p2 parameters. Use float=y. k is Mandel 
                ; parameter, critical point -1.
  a=p1, c=p2, k=pixel, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2 
  r3ac=r3*ac, ack=k*ac
  z=-1:
  z2=sqr(z)
  z3=z*z2
  z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack
  lastsqr<=1000000
  ;SOURCE: nuclear.frm
}


Nuclear_M_k_0 {; p1, p2 parameters. Use float=y. k is Mandel parameter,
               ; critical point 0.
  a=p1, c=p2, k=pixel, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2 
  r3ac=r3*ac, ack=k*ac
  z=0:
  z2=sqr(z)
  z3=z*z2
  z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack
  lastsqr<=1000000
  ;SOURCE: nuclear.frm
}


Nuclear_M_k_1 {; p1, p2 parameters. Use float=y. k is Mandel parameter,
               ; critical point 1.
  a=p1, c=p2, k=pixel, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2 
  r3ac=r3*ac, ack=k*ac
  z=1:
  z2=sqr(z)
  z3=z*z2
  z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack
  lastsqr<=1000000
  ;SOURCE: nuclear.frm
}


Nuclear_M_kq {; p1, p2 parameters. c is Mandel parameter. 
              ; Colored based on all 3 critical points. 
              ; Use outside=real, float=y, periodicity=n,
              ; maxiter>=256, and logmap=0.
              ; For logmap effect put real(p2) minimum iteration,
              ; imag(p2) bigger than 1, e.g. 2.
              ; Color 0 is for all critical points trapped.
              ; Colors 1-66, 67-129, 130-192, and 193-255 are separate 
              ; ranges.
              ; Use first for outside, second thru fourth for two
              ; critical points escape, one trapped...
              ; Coloring variant.
              ; Edited for Fractint v. 20 by George Martin, 10,98
  a=p1, c=p2, k=pixel, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2 
  r3ac=r3*ac, ack=k*ac
  min=real(p2)
  p=imag(p2)
  IF(p==0)
    p=1
  ENDIF
  z1=0, z2=1, z3=-1
  qq=10^(-3), iter=0, done=0, z2done=0, m=maxit-1, z1done=0, z3done=0 
  m2=floor(m/2), z1a=z1, z2a=z2, z3a=z3, flag=0, z1d2=0, z2d2=0, z3d2=0 
  qrl=1.5, q2=0.15
  qq2=10^(-7)
  :
  IF(z3done==0)
    zz2=sqr(z3)
    zz3=z3*zz2
    z3=(r3a2*zz3-a6*zz2-r3ac*z3-ac)/(r3*z3+1)+ack
    IF(lastsqr>10000)
      z3done=iter
      z3d2=1
    ENDIF
  ENDIF
  IF(z2done==0)
    zz2=sqr(z2)
    zz3=z2*zz2
    z2=(r3a2*zz3-a6*zz2-r3ac*z2-ac)/(r3*z2+1)+ack
    IF(lastsqr>10000)
      z2done=iter
      z2d2=1
    ENDIF
  ENDIF
  IF(z1done==0)
    zz2=sqr(z1)
    zz3=z1*zz2
    z1=(r3a2*zz3-a6*zz2-r3ac*z1-ac)/(r3*z1+1)+ack
    IF(lastsqr>10000)
      z1done=iter
      z1d2=1
    ENDIF
  ENDIF
  iter=iter+1
  IF(iter>=m2 && flag==0)
    z1chek=z1
    z2chek=z2
    z3chek=z3
    flag=1
    spd=0
    first=0
    same12=0
    same23=0
    same13=0
  ELSEIF(flag==1)
    IF(z1d2==0)
      zz2=sqr(z1a)
      zz3=z1a*zz2
      z1a=(r3a2*zz3-a6*zz2-r3ac*z1a-ac)/(r3*z1a+1)+ack
    ENDIF
    IF(z2d2==0)
      zz2=sqr(z2a)
      zz3=z2a*zz2
      z2a=(r3a2*zz3-a6*zz2-r3ac*z2a-ac)/(r3*z2a+1)+ack
    ENDIF
    IF(z3d2==0)
      zz2=sqr(z3a)
      zz3=z3a*zz2
      z3a=(r3a2*zz3-a6*zz2-r3ac*z3a-ac)/(r3*z3a+1)+ack
    ENDIF
    spd=spd+1
    IF(|z1a-z2chek|<qq && z1d2==0)
      same12=1
      z1d2=spd
      IF(first==0 && |z2a-z1chek|>=qq)
        first=1
      ENDIF
    ENDIF
    IF(|z2a-z1chek|<qq && z2d2==0)
      same12=1
      z2d2=spd
      IF(first==0 && |z1a-z2chek|>=qq)
        first=2
      ENDIF
    ENDIF
    IF(|z1a-z3chek|<qq && z1d2==0)
      same13=1
      z1d2=spd
      IF(first==0 && |z3a-z1chek|>=qq)
        first=1
      ENDIF
    ENDIF
    IF(|z3a-z1chek|<qq && z3d2==0)
      same13=1
      z3d2=spd
      IF(first==0 && |z1a-z3chek|>=qq)
        first=3
      ENDIF
    ENDIF
    IF(|z2a-z3chek|<qq && z2d2==0)
      same23=1
      z2d2=spd
      IF(first==0 && |z3a-z2chek|>=qq)
        first=2
      ENDIF
    ENDIF
    IF(|z3a-z2chek|<qq && z3d2==0)
      same23=1
      z3d2=spd
      IF(first==0 && |z2a-z3chek|>=qq)
        first=3
      ENDIF
    ENDIF
    IF(|z1a-z1chek|<qq2)
      z1d2=spd
    ENDIF
    IF(|z2a-z2chek|<qq2)
      z2d2=spd
    ENDIF
    IF(|z3a-z3chek|<qq2)
      z3d2=spd
    ENDIF
  ENDIF
  IF((z1d2>0 && z2d2>0 && z3d2>0) || iter==m)
    IF(z1done==0 || z2done==0 || z3done==0)
      IF(z2done>0 && z3done>0)
        ddd=z2done
        IF(z3done>ddd)
          ddd=z3done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+66
      ELSEIF(z1done>0 && z3done>0)
        ddd=z1done
        IF(z3done>ddd)
          ddd=z3done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+129
      ELSEIF(z1done>0 && z2done>0)
        ddd=z1done
        IF(z2done>ddd)
          ddd=z2done
        ENDIF
        color=((ddd-min)/(m-min))^(1/p)*63
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+192
      ELSEIF(z1done>0)
        IF(same23!=0 && first!=0)
          IF(first==2)
            ddd=z3d2
            cj=129
          ELSE
            ddd=z2d2
            cj=192
          ENDIF
          color=((ddd-min)/(m2-min))^(1/p)*63
          color=64-color
        ELSE
          cj=66
          color=((z1done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+cj
      ELSEIF(z2done>0)
        IF(same13!=0 && first!=0)
          IF(first==1)
            ddd=z3d2
            cj=66
          ELSE
            ddd=z1d2
            cj=192
          ENDIF
          color=((ddd-min)/(m2-min))^(1/p)*63
          color=64-color
        ELSE
          cj=129
          color=((z2done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+cj
      ELSEIF(z3done>0)
        IF(same12!=0 && first!=0)
          IF(first==1)
            ddd=z2d2
            cj=66
          ELSE
            ddd=z1d2
            cj=129
          ENDIF
          color=((ddd-min)/(m-min))^(1/p)*63
          color=64-color
        ELSE
          cj=192
          color=((z3done-min)/(m-min))^(1/p)*63
        ENDIF
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+cj
      ELSEIF(same12==1 && same23==1)
        IF(first==1)
          ddd=z2d2+z3d2
          cj=66
        ELSEIF(first==2)
          ddd=z1d2+z3d2
          cj=129
        ELSEIF(first==3)
          ddd=z1d2+z2d2
          cj=192
        ELSE
          ddd=z1d2+z2d2+z3d2
          cj=0
        ENDIF
        IF(first==0)
          color=(ddd/m2)^(1/p)*66
          color=67-color
          IF(color>66)
            color=66
          ENDIF
          IF(color<1)
            color=1
          ENDIF
        ELSE
          color=(ddd/m2)^(1/p)*63
          color=64-color
          IF(color>63)
            color=63
          ENDIF
          IF(color<1)
            color=1
          ENDIF
        ENDIF
        color=color+cj
      ELSEIF(same12==1)
        IF(first==1)
          ddd=z2d2
          cj=129
        ELSEIF(first==2)
          ddd=z1d2
          cj=66
        ELSE
          cj=192
          ddd=z1d2+z2d2
        ENDIF
        color=(ddd/m2)^(1/p)*63
        color=64-color
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+cj
      ELSEIF(same13==1)
        IF(first==1)
          cj=192
          ddd=z3d2
        ELSEIF(first==3)
          cj=66
          ddd=z1d2
        else
          cj=129
          ddd=z1d2+z3d2
        ENDIF
        color=(ddd/m2)^(1/p)*63
        color=64-color
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+cj
      ELSEIF(same23==1)
        IF(first==2)
          ddd=z3d2
          cj=192
        ELSEIF(first==3)
          ddd=z2d2
          cj=129
        ELSE
          ddd=z2d2+z3d2
          cj=66
        ENDIF
        color=(ddd/m2)^(1/p)*63
        color=64-color
        IF(color>63)
          color=63
        ENDIF
        IF(color<1)
          color=1
        ENDIF
        color=color+cj
      ELSE
        color=0
      ENDIF
    ELSE
      color=((iter-min)/(m-min))^(1/p)*66
      IF(color>66)
        color=66
      ENDIF
      IF(color<1)
        color=1
      ENDIF
    ENDIF
    done=1
    z=color-iter-7
  ENDIF
  done==0
  ;SOURCE: nuclear.frm
}


Nuke1 (xaxis) {; M.L. Newsted Jr.
  z = 0
  c = pixel         ; basic mandel upto here
  d = pixel:        ; add new variable
  z = (z*z + c) / d ; slightly altered computation, highly 
                    ; different results
  ;SOURCE: 97msg.frm
}


Nuke2 (xaxis) {; Jay Hill
  z = 0, c = pixel:  ; basic mandel up to here
  z = (z*z/c + 1)    ;  insideout eye shaped MSet
  ;SOURCE: 97msg.frm
}


Nwtbumps { 
  z = fn1(pixel/|pixel|)*fn2(p2*real(pixel)*imag(pixel)), Root = 1 :
  z = ((p1-1)*z^p1+Root)/(p1*z^(p1-1))
  .001 <= |z^p1-Root|
  ;SOURCE: crazynwt.frm
}


Nwtbumps2 { 
  z = fn1(pixel/|pixel|)*fn2(p2*real(pixel)/imag(pixel)), Root = 1 :
  z = ((p1-1)*z^p1+Root)/(p1*z^(p1-1))
  .001 <= |z^p1-Root|
  ;SOURCE: crazynwt.frm
}


Nwtbumps3 { 
  z = pixel + fn1( fn2( fn3( (pixel/|pixel|) * exp( p2 * |pixel|)))) 
  Root = 1 :
  z = ((p1-1)*z^p1+Root)/(p1*z^(p1-1))
  .001 <= |z^p1-Root|
  ;SOURCE: crazynwt.frm
}


Nwtfn123 { 
  z = fn1(fn2(fn3(p2*pixel)))+fn1(fn3(fn2(p2*pixel))), Root = 1 :
  z = ((p1-1) * z^p1 + Root) / (p1 * z^(p1-1))
  .001 <= |z^p1 - Root|
  ;SOURCE: crazynwt.frm
}


Nwtfn12rot {; The factor exp(p1*...) rotates the pixels
            ; according to their distance from the origin if p1 is 
            ; chosen complex.
  z = pixel+1/fn1(p2*pixel*exp(p1*fn2(|pixel|))), Root = 1 :
  z = (4 * z^5 + Root) / (5 * z^4)
  .001 <= |z^5 - Root|
  ;SOURCE: crazynwt.frm
}


NwtMand2 { 
   ; Note that floating-point is required to 
   ; make this compute accurately
  z = pixel, Root = 1:
  f = ((p1-1) * z^p1 + Root) / (p1 * z^(p1-1))
  z=z*z+f
  .001 <= |z^p1 - Root|
  ;SOURCE: fractmix.frm
}


NwtMand3 { 
   ; Note that floating-point is required to 
   ; make this compute accurately
  f=pixel, z=pixel, Root = 1:
  f = ((p1-1) * z^p1 + Root) / (p1 * z^(p1-1))
  z=f*f+pixel
  .001 <= |z^p1 - Root|
  ;SOURCE: fractmix.frm
}


NwtMandM { 
   ; Note that floating-point is required to 
   ; make this compute accurately
  z = pixel, Root = 1:
  f = ((pixel-1) * z^pixel + Root) / (pixel * z^(pixel-1))
  z=f*f+pixel
  .001 <= |z^pixel - Root|
  ;SOURCE: fractmix.frm
}


NwtNwt {; p1=k*p2 k=1,2,3,...   fn1,fn2=recip,ident  rest 4u to test
        ; Note that floating-point is required to 
        ; make this compute accurately
  f=fn1(pixel), z = fn2(pixel), Root = 1:
  f = ((p1-1) * z^p1 + Root) / (p1 * z^(p1-1))
  z = ((p2-1) * f^p2 + Root) / (p2 * f^(p2-1))
  .001 <= |f^p2 - Root|
  ;SOURCE: fractmix.frm
}


NwtNwtNwt {; p1=k*p2 k=1,2,3,...   fn1,fn2=recip,ident  rest 4u to test
           ; Note that floating-point is required to 
           ; make this compute accurately
  f=fn1(pixel), z = fn2(pixel), g = fn3(pixel) 
  u=real(p1), v=imag(p1), Root = 1:
  g = ((u-1) * z^u + Root) / (u * z^(u-1))
  f = ((v-1) * g^v + Root) / (v * g^(v-1))
  z = ((p2-1) * f^p2 + Root) / (p2 * f^(p2-1))
  .001 <= |f^p2 - Root|
  ;SOURCE: fractmix.frm
}


Nwtp+fn123 { 
  z = pixel+fn1(fn2(fn3(p2*pixel)))+fn1(fn3(fn2(p2*pixel))), Root = 1:
  z = ((p1-1) * z^p1 + Root) / (p1 * z^(p1-1))
  .001 <= |z^p1 - Root|
  ;SOURCE: crazynwt.frm
}


Nwtsimpl { 
  z = fn1(p2*pixel)/|pixel|, Root = 1 :
  z = ((p1-1)*z^p1+Root)/(p1*z^(p1-1))
  .001 <= |z^p1-Root|
  ;SOURCE: crazynwt.frm
}


Nwtsqzz { 
   ; The factor exp(p1*...) rotates the pixels
   ; according to their distance from the origin if p1 is 
   ; chosen complex.
  z = pixel*fn1(p2*exp(p1*fn2(|pixel|)*imag(pixel))), Root = 1 :
  z = (4 * z^5 + Root) / (5 * z^4)
  .001 <= |z^5 - Root|
  ;SOURCE: crazynwt.frm
}


Nwtsqzz2 { 
  z = pixel*fn1(p2*exp(p1*fn2(|pixel|*imag(pixel)))), Root = 1 :
  z = (4 * z^5 + Root) / (5 * z^4)
  .001 <= |z^5 - Root|
  ;SOURCE: crazynwt.frm
}


Nwttst { 
  z=pixel
  t = pixel*fn1(p2*|pixel|), Root = 1 :
  z = ((t-1)*z^t+Root)/(t*z^(t-1))
  .001 <= |z^t-Root|
  ;SOURCE: crazynwt.frm
}


Nwtvar1 { 
  z = pixel, Root = 1 :
  z = ((p2-1)*z^p1+Root)/(p2*z^(p1-1))
  .001 <= |z^p1-Root|
  ;SOURCE: crazynwt.frm
}


Nwtvar3 { 
  z = pixel, Root = 1 :
  z = (real(p1)*z^5+Root)/(5*z^4)
  .001 <= |imag(p1)*z^p2-Root|
  ;SOURCE: crazynwt.frm
}


Nwtvar4 {; there are real & imag just to have more params !
         ; don't start whith this , it's a grown one.
         ; To use it try to understand the basics it's 
         ; made of.(var1 & p+fn123 &..)
  f = pixel*fn3(exp(fn2(|pixel|)*imag(pixel)*0.1*(pixel-conj(pixel)))) 
  z = f+fn1(fn2(fn3(imag(p1)*f)))+fn1(fn3(fn2(imag(p1)*f))) 
  Root = 1 :
  z = ((p2-1)*z^real(p1)+Root)/(p2*z^(real(p1)-1))
  .001 <= |z^real(p1)-Root|
  ;SOURCE: crazynwt.frm
}


Nwtwav { 
   ; pix/|pix| is a complex number with length 1 and the direction of 
   ; the pixel.The faktor fn1(..) allows you to scale it the way 
   ; you want.  fn1=ident ,p2=1 should be the normal Newton.
  z = pixel/|pixel|*fn1(p2*|pixel|), Root = 1 :
  z = ((p1-1)*z^p1+Root)/(p1*z^(p1-1))
  .001 <= |z^p1-Root|
  ;SOURCE: crazynwt.frm
}


nx0 {
  z=pixel, m=(fn1(z))*(2)
  y=tan(1-exp(z))^2, n=fn2(1/(tan(z)))*sqr(y+m):
  z=(((z*1/1.01105)*fn1(m-n))/fn2(y*n)-fn3(z+y))/fn4(z+n+y)
  |z|>=4
  ;SOURCE: ad99_1.frm
}


Nx2 (XYAXIS) {
  z=pixel:
  z=z*pixel*sinh(z*pixel)+pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


Nx3 (XYAXIS) {
  z=pixel:
  z=z*pixel*cosh(z*pixel)
  |z|<=4
  ;SOURCE: fixrch.frm
}


nx4 {
  z=pixel, t=(1.0,0.0)+fn1(z):
  z=(fn2(z^p2)+t)+whitesq
  |z|<4
  ;SOURCE: ad99_1.frm
}


Nx5 (XYAXIS) {
  z=pixel:
  z=1/((z*pixel)*sin(z*pixel))
  |z|<=4
  ;SOURCE: fixrch.frm
}


Nx6 (XYAXIS) {
  z=pixel:
  z=(1/((z*pixel)*sin(z*pixel)))*pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


Nx7 (XYAXIS) {
  z=pixel:
  z=1/((z*pixel)*sinh(z*pixel))
  |z|<=4
  ;SOURCE: fixrch.frm
}


Nx8 (XYAXIS) {
  z=pixel:
  z=(1/((z*pixel)*sinh(z*pixel)))*pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


Nx9 (XAXIS) {
  z=pixel:
  z=(z^pixel)*sin(z^pixel)
  |z|<=4
  ;SOURCE: fixrch.frm
}


NxA (XAXIS) {
  z=pixel:
  z=sin(z^pixel)
  |z|<=4
  ;SOURCE: fixrch.frm
}


NxB (XAXIS) {
  z=pixel:
  z=sin(z^pixel)*pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


NxE (XAXIS) {
  z=pixel:
  z=sinh(z^pixel)
  |z|<=4
  ;SOURCE: fixrch.frm
}


NxF (XAXIS) {
  z=pixel:
  z=sinh(z^pixel)*pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


NxJ (XYAXIS) {
  z=pixel:
  z=1/sin(z*pixel)
  |z|<=4
  ;SOURCE: fixrch.frm
}


NxK (XAXIS) {
  z=pixel:
  z=(1/sin(z^pixel))*pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


NxL (XYAXIS) {
  z=pixel:
  z=(1/sin(z*pixel))*pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


NxM (XAXIS) {
  z=pixel:
  z=1/cos(z^pixel)
  |z|<=4
  ;SOURCE: fixrch.frm
}


NxN (XYAXIS) {
  z=pixel:
  z=1/cos(z*pixel)
  |z|<=4
  ;SOURCE: fixrch.frm
}


NxP (XYAXIS) {
  z=pixel:
  z=(1/cos(z*pixel))*pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


NxR (XYAXIS) {
  z=pixel:
  z=1/sinh(z*pixel)
  |z|<=4
  ;SOURCE: fixrch.frm
}


NxT (XYAXIS) {
  z=pixel:
  z=(1/sinh(z*pixel))*pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


NxU (XAXIS) {
  z=pixel:
  z=1/cosh(z^pixel)
  |z|<=4
  ;SOURCE: fixrch.frm
}


NxV (XYAXIS) {
  z=pixel:
  z=1/cosh(z*pixel)
  |z|<=4
  ;SOURCE: fixrch.frm
}


NxX (XYAXIS) {
  z=pixel:
  z=(1/cosh(z*pixel))*pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


NxY (XYAXIS) {
  z=pixel:
  z=z*pixel*sin(z*pixel)
  |z|<=4
  ;SOURCE: fixrch.frm
}


NxZ (XAXIS) {
  z=pixel:
  z=z*pixel*sin(z*pixel)+pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}


NY002 { 
  z=pixel, c=fn1(z), zc=fn2(c+z):
  z=fn3(zc)-fn4((z*z)+c)
  |z|<16
  ;SOURCE: bej0015.frm
}


Ny1 (XYAXIS) {
  z=pixel:
  z=(z^pixel)*sinh(z^pixel)
  |z|<=4
  ;SOURCE: fixrch.frm
}

