

xaxa {; Eliminated superfluous "e=.22". G. Martin 05/04/99
  z=pixel:
  d=(.4), k=sin(.22+d)
  ko=sinh(k*real(p2)), x=fn1(ko*k)*fn2(k*ko)
  f=(z+x)/p3
  z=((fn3(f-ko)*z)+fn4(f-x))+log(f)
  z>=4
  ;SOURCE: ad4.frm
}


Xerreal {
  z = c = pixel:
  z = (sqrt(-1) * z /c)^2 * c + p1
  z = z * fn1(z) + pixel
  |z| <= 4
  ;SOURCE: surreal.frm
}


xlty_jul {; Kerry Mitchell
        ;
        ; colors by how often x < y, where x & y are the
        ; real & imaginary parts of the fractional part of
        ; the iterate of the Julia set
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = color speed (try 1)
        ; p3 = rounding factor (try 1)
        ; fn1 = rounding function, either round() or trunc()
        ; fn2 = arbitrary function of iterate (try log())
        ; calculation uses variable zc, z used for coloring
        ; use decomp=256
        ;
  zc=pixel, c=p1, iter=2, twopi=2*pi, count=0
  maxr=real(p2), speed=imag(p2)*twopi*255/256
  roundfac=p3
  :
        ;
        ; adjust iterate through arbitrary function and find
        ;   fractional part
        ;
  temp=fn2(zc)/roundfac, frac=roundfac*(temp-fn1(temp))
        ;
        ; update counter if conditions are right
        ;
  IF (real(frac)<imag(frac))
    count=count+1
  ENDIF
        ;
        ; bailout
        ;   scale counter into decomposition angle
        ;   set "iteration done" flag (iter = -1)
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    angle=speed*count/(iter-1)
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ELSE
    iter=iter+1
    zc=sqr(zc)+c
  ENDIF
  iter>0
;*********Kerry Mitchell's explanation of "fraction" formulas******** 
;           narrative copyright Kerry Mitchell, 1998
;
;  Formulas covered by this explanation:
;     xlty_jul (above)
;     xlty_man
;     heart_jul     
;     heart_man
;
; Fun with fractions
;
; There is really no good mathematical reason for these formulas,
; but what the heck.  The original thought was to look at what
; happens with the fractional parts of the iterates?  This became,
; "how often is the real part of the iterate less than the imaginary
; part?"  The fractional part is recovered using either the round()
; or trunc() functions.  For example, if z = 12.3456, then the
; fractional part of z is 0.3456, which is z - trunc(z).  The round()
; function can also be used, and can give different results.  For
; each iteration, the fractional parts are computed and the comparison
; made.  If the real part is less than the imaginary part, then a
; counter is incremented.  At the end of the orbit, the counter is
; divided by the number of iterations, and scaled into an angle for
; decomposition coloring.
;
; Normally, the fractional part is simply that right of the decimal
; point.  However, this can be changed through the use of the rounding
; factor.  The iterate is divided by this factor, then the fractional
; part is taken, and multiplied by the factor.  For example, if the
; rounding factor is 10, then z becomes 1.23456.  The fractional part
; is 0.23456, which when multiplied by 10 becomes 2.3456.  In these
; formulas, the rounding factor is complex, allowing greater
; flexibility.
;
; Two formulas add even greater possibilities.  The fractional part
; can be computed using either the round() or trunc() functions.
; Before rounding or truncating, the iterate can also be run through
; any of the standard littany of Fractint functions.  Go nuts.
;
; In addition to the xlty- functions, there are the heart- functions
; (both come in Julia and Mandelbrot flavors).  The heart- functions
; started out asking, "how often is the magnitude of the fractional
; part less than the polar angle?"  A few algebraic tricks later, this
; question changed to, "how can hearts be used to color a fractal?"
; The basic shape is shown using the "basic-heart" parameter selection.
; It shows the hearts that are the "background" to these images.  The
; "basic-xlty" parameters shown the same for the xlty- formulas.
;
;*******************************************************************
  ;SOURCE: 98msg.frm
}


xlty_man {; Kerry Mitchell
        ; See end of formula xlty_jul for Kerry Mitchell's explanation
        ;  of his "fraction" formulas
        ;
        ; colors by how often x < y, where x & y are the
        ; real & imaginary parts of the fractional part of
        ; the iterate of the Mandelbrot set
        ;
        ; real(p1) = bailout (try 4)
        ; imag(p1) = color speed (try 1)
        ; p2 = rounding factor (try 1)
        ; fn1 = rounding function, either round() or trunc()
        ; fn2 = arbitrary function of iterate (try log())
        ; calculation uses variable zc, z used for coloring
        ; use decomp=256
        ;
  zc=0, c=pixel, iter=2, twopi=2*pi, count=0
  maxr=real(p1), speed=imag(p1)*twopi*255/256
  roundfac=p2
  :
        ;
        ; adjust iterate through arbitrary function and find
        ;   fractional part
        ;
  temp=fn2(zc)/roundfac, frac=roundfac*(temp-fn1(temp))
        ;
        ; update counter if conditions are right
        ;
  IF (real(frac)<imag(frac))
    count=count+1
  ENDIF
        ;
        ; bailout
        ;   scale counter into decomposition angle
        ;   set "iteration done" flag (iter = -1)
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    angle=speed*count/(iter-1)
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ELSE
    iter=iter+1
    zc=sqr(zc)+c
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


Xmas2 {; Copyright (c) Paul W. Carlson, 1997
  x=0, c=pixel, iter=0, toggle=-1:
  x=x*x+c
  d=abs(|x|-.25), t=(d<0.1)
  toggle=-1*toggle, iter=iter+1
  z=(1240*d+(toggle>0)*125+1)*(|t|>0)-iter
  |t|<=0 && |x|<100
  ;SOURCE: 97msg.frm
}


Xmas3 {; Copyright (c) Paul W. Carlson, 1997
  x=0, c=pixel, iter=0, toggle=-1:
  x=x*x+c
  xr=real(x), xi=imag(x)
  d=abs((xr-.5)*(xr-.5)+(xi-.5)*(xi-.5)-.1)
  toggle=-1*toggle, iter=iter+1
  z=(620*d+(toggle>0)*125+1)*(d<.2)-iter
  (d>=.2) && |x|<100
  ;SOURCE: 97msg.frm
}


Xmas4 {; Copyright (c) Paul W. Carlson, 1997
  x=pixel, c=(-0.767633083,0.095353559), g=0.01, iter=0:
  x=x*x+c
  xr=real(x), xi=imag(x)
  aa=xr*xr+(xi-.5)*(xi-.5)
  bb=xr*xr+(xi+.5)*(xi+.5)
  cc=(xr-.5)*(xr-.5)+xi*xi
  dd=(xr+.5)*(xr+.5)+xi*xi
  test=(iter>2)*((aa<g)*(g-aa)+(bb<g)*(g-bb)+(cc<g)*(g-cc)+(dd<g)*(g-dd))
  iter=iter+1
  z=(24900*test+1)*(|test|>0)-iter
  |test|<=0 && |x|<10000
  ;SOURCE: 97msg.frm
}


XmasSeaHorse {; Copyright (c) Paul W. Carlson, 1997
    x=pixel,  c=(-0.746410388,0.184309007), iter=0
    s=0.1887757, toggle=-1:
    x=x*x+c
    a=sqrt(|x|), w=(a<s)*toggle+(a>=s)*w, s=(a<s)*a+(a>=s)*s
    iter=iter+1, toggle=-1*toggle
    z=(570*s+(w<0)*126)*(|x|>=16)-iter
    |x|<16
  ;SOURCE: 97msg.frm
}


xof1 (XAXIS) {
  z = pixel+z:
  z = p1 * (z^p2) + p2 * (z^p1)
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgxof.frm
}


xof2 (XYAXIS) {
  z = pixel/p2:
  z = p1 * (z^p2) - p2 * (z^p1)
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgxof.frm
}


xof3 (XYAXIS) {
  z = pixel/z:
  z = p1 * (z^p2) - p2 * (fn2(z))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgxof.frm
}


xof4 (XYAXIS) {
  z = pixel+z:
  z = p1 / fn1 (z*z) / (fn2(z))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgxof.frm
}


xof5 (XYAXIS) {
  z = pixel + z:
  z = p1 / fn1 (z*z) * (fn2(z))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgxof.frm
}


xof6 (XYAXIS) {
  z = 1/pixel + z:
  z = p1 / fn1 (z*z) * (fn2(z))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgxof.frm
}


xof7 (XYAXIS) {
  z = pixel + 1/z:
  z = p1 / fn1 (z*z) * (fn2(z))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgxof.frm
}


xp6 {
  z=(pixel*log(real(p2)+imag(p3))+1)/fn4(1-pixel):
  z=fn1(z+whitesq)+fn2(z/log(z))
  a=cotan(1-(pixel))
  z=fn3(pixel/a+z)*p1/(a+z)
  |z|<4
  ;SOURCE: ad5.frm
}


xp8 {; Edited for Fractint v. 20 by George Martin, 10/98
     ; Eliminated superfluous "e=real(z)". G. Martin 05/04/99
  z=pixel:
  a=real(z), b=imag(z+p1), c=real(z-p2)
  d=imag(z), f=imag(z+p3)
  g=fn4(a+c)/(b+d)
  b=-fn2(b+f) 
  z=a/fn3(g+whitesq)
  |z|<4
  ;SOURCE: ad5.frm
}


xtest2 {
  z=c=pixel
  t=|c|:
  u=(t*z*z)+fn1(-(z*z*z)-1)
  w=cotan(imag(sin(z)/(z+whitesq)))
  z=fn1(w/u)*fn2(z*z+p1)
  |z|<p2
  ;SOURCE: ad4.frm
}


XWplane {; Jim Muth
  z=flip(imag(pixel))+real(p1)
  c=real(pixel)+flip(imag(p1)):
  z=sqr(z)+c
  |z| <= 36
  ;SOURCE: 97msg.frm
}


XWplaneN {; Jim Muth
  z=flip(imag(pixel))+real(p1)
  c=real(pixel)+flip(imag(p1)):
  z=z^p2+c
  |z| <= 36
  ;SOURCE: 97msg.frm
}


xxx {
   ; Use the previous term as an exponent and see what happens
   ; Not particularly interesting but here for completeness and showing
   ; the development path.
  z = zp1 = pixel, zp2 = (0,0):
  temp = z
  z = z^zp1 - zp2
  zp2 = zp1
  zp1 = temp
  |zp1| <= 4
  ;SOURCE: noel.frm
}


XY-XWrot-N {; Jim Muth, thanks to Benno Schmid
   ; real(p1) = rotation angle in degrees, imag(p1 = exponent of Z,
   ; p2 = parallel planes,
   ; p3 = point of rotation and parallel planes,
  z=sin(real(p1)*.01745329251994)*flip(imag(pixel))+p2
  c=cos(real(p1)*.01745329251994)*flip(imag(pixel))+real(pixel)+p3:
  z=(-z)^imag(p1)+c
  |z| <= 25
  ;SOURCE: 97msg.frm
}


XY-XWrotation {; Jim Muth, thanks to Benno Schmid
   ; p1 = rotation angle in degrees, p2 = parallel planes
   ; p3 = point of rotation and parallel planes
  z=sin(p1*.01745329251994)*flip(imag(pixel))+p2
  c=cos(p1*.01745329251994)*flip(imag(pixel))+real(pixel)+p3:
  z=sqr(z)+c
  |z| <= 16
  ;SOURCE: 97msg.frm
}


XY-XZrotation {; Jim Muth, thanks to Benno Schmid
   ; p1 = rotation angle in degrees, p2 = parallel planes
   ; p3 = point of rotation and parallel planes
  z=sin(p1*.01745329251994)*imag(pixel)+p2
  c=cos(p1*.01745329251994)*flip(imag(pixel))+real(pixel)+p3:
  z=sqr(z)+c
  |z| <= 16
  ;SOURCE: 97msg.frm
}


XY-XZrotN {; Jim Muth, thanks to Benno Schmid
    ; real(p1) = rotation angle in degrees, imag(p1 = exponent of Z,
    ; p2 = parallel planes,
    ; p3 = point of rotation and parallel planes,
  z=sin(real(p1)*.01745329251994)*imag(pixel)+p2
  c=cos(real(p1)*.01745329251994)*flip(imag(pixel))+real(pixel)+p3:
  z=z^imag(p1)+c
  |z| <= 25
  ;SOURCE: 97msg.frm
}


XY-YZ-test02 {; Jim Muth
              ; p1 = rotation angle in degrees, p2 = parallel planes
              ; p3 = axis of rotation and parallel planes
  z=sin(p1*.01745329251994)*real(pixel)+p2
  c=cos(p1*.01745329251994)*real(pixel)+flip(imag(pixel))+p3:
  z=sqr(z)+c
  |z| <= 16
  ;SOURCE: 97msg.frm
}


XY-YZ-test03 {; Jim Muth
   ; real(p1)=rotation angle in degrees, imag(p1)=exponent of z
   ; p2=parallel planes, real(p3)=axis of rotation and parallel planes
   ; imag(p3) = escape radius
  z=sin(real(p1)*.01745329251994)*real(pixel)+p2
  c=cos(real(p1)*.01745329251994)*real(pixel)+flip(imag(pixel))+real(p3):
  z=z^imag(p1)+c
  |z| <= imag(p3)
  ;SOURCE: 97msg.frm
}


XY-YZrot-N {; Jim Muth, thanks to Benno
   ; real(p1) = rotation angle in degrees, imag(p1 = exponent of Z,
   ; p2 = parallel planes,
   ; p3 = point of rotation and parallel planes,
  z=sin(real(p1)*.01745329251994)*real(pixel)+p2
  c=cos(real(p1)*.01745329251994)*real(pixel)+flip(imag(pixel))+p3:
  z=(-z)^imag(p1)+c
  |z| <= 25
  ;SOURCE: 97msg.frm
}


XY-YZrotation {; Jim Muth, thanks to Benno
   ; p1 = rotation angle in degrees, p2 = parallel planes
   ; p3 = point of rotation and parallel planes
  z=sin(p1*.01745329251994)*real(pixel)+p2
  c=cos(p1*.01745329251994)*real(pixel)+flip(imag(pixel))+p3:
  z=sqr(z)+c
  |z| <= 16
  ;SOURCE: 97msg.frm
}


XY-YZrotlow {; Jim Muth, thanks to Benno
   ; p1 = rotation angle in degrees, p2 = parallel planes
   ; p3 = point of rotation and parallel planes
  z=sin(p1*.01745329251994)*real(pixel)+p2
  c=cos(p1*.01745329251994)*real(pixel)+flip(imag(pixel))+p3:
  z=sqr(z)+c
  |z| <= 4
  ;SOURCE: 97msg.frm
}


XYplane {; Jim Muth
  z=p1, c=pixel:
  z=sqr(z)+c
  |z| <=36
  ;SOURCE: 97msg.frm
}


XZplane {; Jim Muth
  z=imag(pixel)+flip(real(p1))
  c=real(pixel)+flip(imag(p1)):
  z=sqr(z)+c
  |z| <= 36
  ;SOURCE: 97msg.frm
}

