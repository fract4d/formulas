

F'Liar4C {; by Chuck Ebbert - 76302,1226
   ; generalization by Jon Horner 100112,1700 (FRAC'Cetera)
   ; X: X is as true as (p1+1) times Y
   ; Y: Y is as true as X is false
   ; Calculate new x and y values simultaneously.
   ; Real part of p1 changes probability.  Use floating point.
   ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = fn1(pixel), p = p1 + 1 :
  z = 1-abs(imag(z)*p-real(z))+fn2(1-abs(1-real(z)-imag(z)))
  fn3(abs(z)) <= p2 
  ;SOURCE: nuliar.frm
}


FGZ {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
   ; Check out the text file FGZ.DOC for 
   ; full details on this fractal family.
  z = c = pixel:
  z = z * z + c
  z = (3 * z * z) / (z + 3) + c
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}


FGZ-alternate-test {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + c
  z = (3 * z * z) / (z + 3) + c
  |real(z)| + |imag(z)| >= 100
  ;SOURCE: f(g(z))).frm
}


FGZ-color-test {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + c
  z = (3 * z * z) / (z + 3) + c
  |real(z)| <= 50
  |imag(z)| <= 50
  ;SOURCE: f(g(z))).frm
}


FGZ-Internals {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + c
  z = (3 * z * z) / (z + 3) + c
  |real(z)| <= 4
  ;SOURCE: f(g(z))).frm
}


FGZ-Julia {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + (-0.6882, -0.1729)
  z = (3 * z * z) / (z + 3) + (-0.6882, -0.1729)
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}


fish (XAXIS) {
   ; Lets not completely rule out a constant either. 
   ; Add one to the Trillium
  z=c=pixel, zp = (0,0):
  temp = z
  z = z*z - zp + c
  zp = temp
  |zp| <= 4 
  ;SOURCE: noel.frm
}


fish {
  z = c = pixel:
  z = (z-1) * (c+1)
  |z| <=1
  ;SOURCE: kg0.frm
}


Fly (XAXIS_NOPARM) {; Jon Osuch
                    ; Try p1=0, p2=4, fn1=sqr, fn2=sqr
                    ; Edited for Fractint v. 20 by George Martin, 10/98
  z = p1:
  x = real(z)
  z=fn1(z) + pixel
  z=fn2(z) - pixel
  |z| <= p2
  ;SOURCE: select.frm
}


FlyC (XAXIS_NOPARM) {; Jonathan Osuch [73277,1432]
                     ; Generalized by Tobey J. E. Reed [76437,375]
                     ; Try p1=0, p2=4, fn1=sqr, fn2=sqr
                     ; Note:  use floating point
                     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1:
  x=real(z)
  IF (x<0)
    z=fn1(z)+pixel
  ELSE
    z=fn2(z)-pixel
  ENDIF
  |z|<=p2
  ;SOURCE: fract001.frm
}


FlyingSquirrel (XAXIS_NOPARM) {; Jon Osuch
   ; Try p1=0, p2=4, fn1=sin, fn2=cosxx, fn3=sqr
   ; Edited for Fractint v. 20 by George Martin, 10/98
  z  = p1
  x  = |z|:  
  z=fn1(z) / fn2(z) + pixel
  z  = fn3(z)+pixel
  x  = |z|
  x <= p2
  ;SOURCE: select.frm
}


FlyingSquirrel (XAXIS_NOPARM) {; Edited for Fractint v. 20
                               ; by George Martin, 10/98
  z=p1, x=|z|:
  z=sin(z)/cos(z)+pixel
  z=sqr(z)+pixel, x=|z|
  x<=4 
  ;SOURCE: form1.frm
}


FlyingSquirrelC (XAXIS_NOPARM) {; Jonathan Osuch [73277,1432]
   ; Generalized by Tobey J. E. Reed [76437,375]
   ; Try p1=0, p2=4, fn1=sin, fn2=cos, fn3=sqr
   ; Note:  use floating point
   ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=fn1(z)/fn2(z)+pixel
  ENDIF
  z=fn3(z)+pixel, x=|z|
  x<=p2
  ;SOURCE: fract001.frm
}


FlyingSquirrelC (XAXIS_NOPARM) {; Edited for Fractint v. 20 
                                ; by George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=sin(z)/cos(z)+pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4 
  ;SOURCE: form1.frm
}


fn*z+z {
  z=pixel+fn1(fn2(fn3(pixel)))+fn1(fn3(fn2(pixel))) :
  z=p1*fn4(z)*z+p2*z 
  |z|<=4
  ;SOURCE: smuus.frm
}


FnxZpZ {
   ; Duplicate of built-in 'fn*z+z' type.
   ; p1, p2 same as built-in
  z = pixel:
  z = (p1 * fn1(z) + p2 ) * z
  |z| <= 64
  ;SOURCE: ebbert.frm
}


FnZpFnPix {
   ; Duplicate of built-in type 'fn(z)+fn(pix).'
   ; P1 = perturbation of z(0), p2 = multiplication factor.
  z = pixel + p1, c = p2 * fn2(pixel):
  z = fn1(z) + c
  |z| <= 64
  ;SOURCE: ebbert.frm
}


fnzpfnpix {; Chuck Ebbert.
   ; Duplicate of built-in type 'fn(z)+fn(pix)'
   ; P1 = perturbation of z(0)
   ; p2 = multiplication factor (default 1)
  z = pixel + p1
   ; CAE changed line below to test |p2|, not |real(p2)|    12 Jan 1993
  c = ((1 * (|p2|<=0) + p2 ) * fn2(pixel) ):
  z = fn1(z) + c
  |z| <= 64  ; bailout is fixed at 64
  ;SOURCE: builtn2.frm
}


Form3 (XAXIS) { 
  z = Pixel, c = Pixel: 
  z = c * z * ( 1 - z ) 
  |z| < 4 
  ;SOURCE: newform.frm
}


Form4 (XAXIS) { 
  z = Pixel, c = P1: 
  z = c * z * ( 1 - z ) 
  |z| < 4 
  ;SOURCE: newform.frm
}


Form5 (XAXIS) { 
  z = Pixel, c = Pixel: 
  z = 1 / ( sqr(z) + c ) 
  |z| < 4 
  ;SOURCE: newform.frm
}


Form6 (XAXIS) { 
  z = Pixel, c = Pixel: 
  z = z^6 + sqr(z) + c 
  |z| < 4 
  ;SOURCE: newform.frm
}


Form7 (XYAXIS) { 
  z = Pixel, c = Pixel: 
  z = ( c * sqr( sqr(z) + 1 ) ) / ( z * ( sqr(z) - 1) ) 
  |z| < 4 
  ;SOURCE: newform.frm
}


FractalFender (XAXIS_NOPARM) {; Jon Osuch
                              ; Try p1=0, p2=4, fn1=cosh, fn2=sqr
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z  = p1
  x  = |z|:
  z=fn1(z)+pixel
  z  = fn2(z)+pixel
  x  = |z|
  x <= p2
  ;SOURCE: select.frm
}


FractalFender2 (XAXIS_NOPARM) {; Jon Osuch
                               ; Try p1=0, p2=4, fn1=cosxx, fn2=sqr
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z = p1
  x = |z|:  
  z=fn1(z)+pixel
  z = fn2(z)+pixel
  x = |z|
  x <= p2
  ;SOURCE: select.frm
}


FractalFender2C (XAXIS_NOPARM) {; Jon Osuch
                                ; Try p1=0, p2=4, fn1=cosxx, fn2=sqr
                                ; Note:  use floating point
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z = p1
  x = |z|:
  IF (x>1)
    z = fn1(z)+pixel
  ENDIF
  z = fn2(z)+pixel
  x = |z|
  x <= p2
  ;SOURCE: select.frm
}


FractalFenderC (XAXIS_NOPARM) {; Jon Osuch
                               ; Try p1=0, p2=4, fn1=cosh, fn2=sqr
                               ; Note:  use floating point
                               ; Spectacular!
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z = p1 
  x = |z|:
  IF (x>1)
    z = fn1(z)+pixel
  ENDIF
  z = fn2(z)+pixel
  x = |z|
  x <= p2
  ;SOURCE: select.frm
}


Frog (XAXIS_NOPARM) {; Jon Osuch
                     ; Try p1=0, p2=4, fn1=tanh, fn2=sqr
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z = p1
  x = |z|:     
  z=fn1(z) + pixel
  z = fn2(z)+pixel
  x = |z|
  x <= p2
  ;SOURCE: select.frm
}


Frog (XAXIS_NOPARM) {; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=|z|:
  z=sinh(z)/cosh(z)+pixel
  z=sqr(z)+pixel, x=|z|
  x<=4 
  ;SOURCE: form1.frm
}


frog (XAXIS) {
   ; What happens if you take a root of what you just squared and summed?
  z=pixel, zp = (0,0):
  temp = z
  z = z*z + zp
  zp = temp^.5
  |zp| <= 4 
  ;SOURCE: noel.frm
}


FrogC (XAXIS_NOPARM) {; Jon Osuch
                      ; Try p1=0, p2=4, fn1=tanh, fn2=sqr
                      ; Note:  use floating point
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z = p1
  x = |z|:
  IF (x>1)
    z = fn1(z)+pixel
  ENDIF
  z = fn2(z)+pixel
  x = |z|
  x <= p2
  ;SOURCE: select.frm
}


FrogC (XAXIS_NOPARM) {; Edited for Fractint v. 20 
                      ; by George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=sinh(z)/cosh(z)+pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4 
  ;SOURCE: form1.frm
}


Fzpcopht {; Lee Skinner [75450,3631]
  z = pixel, f = pixel ^ cotanh(pixel) :
  z = cosxx (z)  + f
  |z|<= 50
  ;SOURCE: fract001.frm
}


Fzpcopth {; Lee Skinner [75450,3631]
  z = pixel, f = pixel ^ tanh(pixel):
  z = cosxx (z)  + f
  |z|<= 50
  ;SOURCE: fract001.frm
}


Fzppcoht {; Lee Skinner [75450,3631]
  z = pixel, f = cotanh(pixel):
  z = cosxx (z)+f
  |z|<= 50
  ;SOURCE: fract001.frm
}


Fzppcoth {; Lee Skinner [75450,3631]
  z = pixel, f = tanh(pixel):
  z = cosxx (z)+f
  |z|<= 50
  ;SOURCE: fract001.frm
}


Fzppfncs {; Lee Skinner
          ; try p1 = 50, fn1 = cos, fn2 = sin
  z = pixel
  f = 1./fn1(pixel):
  z = fn2(z) + f
  |z| <= p1
  ;SOURCE: improved.frm
}


Fzppfnct {; Lee Skinner
          ; try p1 = 50, fn1 = sin, fn2 = cos, fn3 = sin
  z = pixel
  f = fn2(pixel)/fn3(pixel):
  z = fn1(z) + f
  |z|<= p1
  ;SOURCE: improved.frm
}


Fzppfnpo {; Lee Skinner - IMPROVED.FRM was incorrect
   ; it added 2* in line 2 to Lee's original - Jon Horner
   ; try p1 = 50, p2 = 1
  z = pixel, f = p2*(pixel)^(pixel):
  z = fn1(z) + f
  |z| <= p1
  ;SOURCE: improv2.frm
}


Fzppfnpo {; Lee Skinner
          ; try p1 = 50
  z = pixel
  f = 2*(pixel)^(pixel):
  z = fn1(z) + f
  |z| <= p1
  ;SOURCE: improved.frm
}


Fzppfnre {; Lee Skinner
          ; try p1 = 50 and p2 = 1
  z = pixel
  f = 1./(pixel):
  z = fn1(z) + f * p2
  |z| <= p1
  ;SOURCE: improved.frm
}


Fzppfnse {; Lee Skinner
          ; try p1 = 50, fn1 = sin, fn2 = sin
  z = pixel
  f = 1./fn2(pixel):
  z = fn1(z) + f
  |z| <= p1
  ;SOURCE: improved.frm
}


Fzppfnsr {; Lee Skinner
          ; try p1 = 50
  z = pixel
  f = (pixel)^.5:
  z = fn1(z) + f
  |z| <= p1
  ;SOURCE: improved.frm
}


Fzppfnta {; Lee Skinner
          ; try p1 = 50
  z = pixel
  f = fn2(pixel):
  z = fn1(z) + f
  |z|<= p1
  ;SOURCE: improved.frm
}

