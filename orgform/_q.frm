

Q_Java {
   ; Any comments or question?
   ; E-Mail: Damion_P@Compuserve.com  -or- MDROCC@earthlink.net
  z = 0, c = pixel:
  z=z*z+c
  c=c+(p1/z)
  r=fn1(z)+ p2 + c
  q=fn2(z)+ p3 + c
  z=(r*(whitesq == 1)) + (q*(whitesq == 0))
  |z| <= 4
  ;SOURCE: pablo.frm
}


Quad {
   ;(c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = c = pixel
  zv = (1.0, 0.4):
  zsqr = z * z
  z = 0.25 * zsqr * zsqr + (zv / 3) * zsqr * z - 0.5 * zsqr + zv * z
  |z - pixel| < 4
  ;SOURCE: frame.frm
}


Quad_Alt {
   ;(c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = c = pixel:
  z = z * z * z * z + c
  |z - pixel| < 4
  ;SOURCE: frame.frm
}


Quad_regular {
   ;(c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = c = pixel
  zv = (1.0, 0.4):
  zsqr = z * z
  z = 0.25 * zsqr * zsqr + (zv / 3) * zsqr * z - 0.5 * zsqr + zv * z
  |z| < 4
  ;SOURCE: frame.frm
}


QuadcolorMand {; Parametrized quartic Mandelbrot sets, colored based on both
               ; critical points. p1 is alpha parameter. Use outside=real,
               ; float=y, periodicity=n, maxiter>=256, and logmap=0.
               ; To get logmaplike effect, choose real p2 equal to lowest iteration
               ; and real p3 to nonzero, bigger means more colors are pushed to
               ; lower iterations. Use imag(p2) = 0.001 or similarly tiny.
               ; Color 0 is for all critical points trapped.
               ; Colors 1-66, 67-129, 130-192, and 193-255 are separate ranges.
               ; Use first for outside, second thru fourth for one
               ; critical point escapes, one trapped.
               ; Very beautiful.
               ; 4color.frm
    ; Copyright (C) 1998 PGD.
    ; May be distributed freely or for distribution cost, but not for profit.
    ; This notice must be retained on all copies distributed. If a modified
    ; copy is distributed, the nature of the modifications must be described in
    ; a comment.
  a=p1, c=pixel, z1=a^(1/3), aa=4*a, z2=z1*(-0.5+(0,1)*sqrt(3)/2)
  z3=z1*(-0.5-(0,1)*sqrt(3)/2), iter=0, done=0, z2done=0, m=maxit-1
  z1done=0, z3done=0, m2=floor(maxit/2), qq=imag(p2), z1a=z1, z2a=z2
  z3a=z3, flag=0, z1d2=0, z2d2=0, z3d2=0, qrl=1.5, q2=0.15:
  IF(z3done==0)
    z3=sqr(sqr(z3))-aa*z3+c
    IF(lastsqr>400)
      z3done=iter
      z3d2=1
    ENDIF
  ENDIF
  IF(z2done==0)
    z2=sqr(sqr(z2))-aa*z2+c
    IF(lastsqr>400)
      z2done=iter
      z2d2=1
    ENDIF
  ENDIF
  IF(z1done==0)
    z1=sqr(sqr(z1))-aa*z1+c
    IF(lastsqr>400)
      z1done=iter
      z1d2=1
    ENDIF
  ENDIF
  iter=iter+1
  IF(iter==m2)
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
    z1a=sqr(sqr(z1a))-aa*z1a+c
    z2a=sqr(sqr(z2a))-aa*z2a+c
    z3a=sqr(sqr(z3a))-aa*z3a+c
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
    k=real(p3)
    min=real(p2)
    IF(k==0)
      k=1
    ENDIF
    IF(z1done==0 || z2done==0 || z3done==0)
      IF(z2done>0 && z3done>0)
        ddd=z2done
        IF(z3done>ddd)
          ddd=z3done
        ENDIF
        color=((ddd-min)/(m-min))^(1/k)*63
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
        color=((ddd-min)/(m-min))^(1/k)*63
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
        color=((ddd-min)/(m-min))^(1/k)*63
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
          color=(ddd/m)^(1/k)*63
        ELSE
          color=((z1done-min)/(m-min))^(1/k)*63
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
          color=(ddd/m)^(1/k)*63
        ELSE
          color=((z2done-min)/(m-min))^(1/k)*63
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
          color=(ddd/m)^(1/k)*63
        ELSE
          color=((z3done-min)/(m-min))^(1/k)*63
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
        ;ddd=z1d2
        ;IF(z2d2>ddd)
        ;  ddd=z2d2
        ;ENDIF
        ;IF(z3d2>ddd)
        ;  ddd=z3d2
        ;ENDIF
        ddd=abs(z1d2-z2d2)
        IF(abs(z1d2-z3d2)<ddd)
          ddd=abs(z1d2-z3d2)
        ENDIF
        IF(abs(z2d2-z3d2)<ddd)
          ddd=abs(z2d2-z3d2)
        ENDIF
        IF(first==0)
          color=(ddd/m)^(1/k)*66
          IF(color>66)
            color=66
          ENDIF
        ELSE
          color=(ddd/m)^(1/k)*63
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
        ;ddd=z1d2
        ;IF(z2d2>ddd)
        ;  ddd=z2d2
        ;ENDIF
        ddd=abs(z1d2-z2d2)
        color=(ddd/m)^(1/k)*63
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
        ;ddd=z1d2
        ;IF(z3d2>ddd)
        ;  ddd=z3d2
        ;ENDIF
        ddd=abs(z1d2-z3d2)
        color=(ddd/m)^(1/k)*63
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
        ;ddd=z2d2
        ;IF(z3d2>ddd)
        ;  ddd=z3d2
        ;ENDIF
        ddd=abs(z2d2-z3d2)
        color=(ddd/m)^(1/k)*63
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
      color=((iter-min)/(m-min))^(1/k)*66
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
  ;SOURCE: 98msg.frm
}


quadrants {
  z=0, c=pixel
  r1=(0.0,1.0), r2=(-1.0,0.0), r3=(0.0,-1.0), r4=1:
  z=sqr(z)+c
  x=real(z), y=imag(z)
  xp=(0 < x), xn=(x < 0), yp=(0 < y), yn=(y < 0)
  k1=xp*yp, k2=xn*yp, k3=xn*yn, k4=xp*yn
  k=k1*r1+k2*r2+k3*r3+k4*r4
  c=c+k*p1/z
  |z| <= 4
  ;SOURCE: quad.frm
}


quadrosin (ORIGIN) {; bs
                    ; As posted in Fractal-Art, 4/28/97
  z=sqr(pixel)/cabs(pixel):
  z=p1*sin(z)
  |z| <= 100
  ;SOURCE: 97msg.frm
}


quart2 {; From Noel Giffin noel@triumf.ca
        ; The quatro-HT variation. 
        ; Use real part of p1  0.0 < p1 < 1.0
        ; Adding the inversion causes what looks like 
        ; an infinite extension along
        ; the real axis. Using the Imag component 
        ; will add some nice asymmetry.
  z=c=pixel, zp = (0,0), huge = 1.0e32:
  temp = z
  z = sin(z) - zp
  zp = c/temp
  (|zp| <= 4 && |z| <= huge) 
  ;SOURCE: noel1.frm
}


quart3 {; From Noel Giffin noel@triumf.ca
  z=pixel, zp1 = zp2 = (0,0), huge = 1.0e32:
  temp = z
  z = sin(z) - zp2
  zp2 = zp1
  zp1 = p1/temp
  (|zp2| <= huge && |z| <= huge) 
  ;SOURCE: noel1.frm
}


quart4 {; From Noel Giffin noel@triumf.ca
  z=zp1=pixel, zp2 = (0,0), huge = 1.0e32:
  temp = z
  z = sin(z) + zp2
  zp2 = zp1
  zp1 = conj(p1/temp)
  (|zp2| <= huge && |z| <= huge) 
  ;SOURCE: noel1.frm
}


quart5 {; From Noel Giffin noel@triumf.ca
  z = zp1=pixel, zp2 = (0,0), huge = 1.0e32:
  temp = z
  z = sin(zp1) - zp2
  zp2 = zp1
  zp1 = p1/temp
  (|zp2| <= huge && |z| <= huge) 
  ;SOURCE: noel1.frm
}


quartc {
   ; This makes for an unusual combination of fractal characteristics
   ; Recognizable sin fractal filled with chaotic banding.
   ; Real part of P1 should be about 0.1 and Imag portion can be 0.0
   ; Oh yes! You will have to zoom out to +/- 2pi on the x axis 
   ; for full view.
  z=pixel, zp = (0,0), huge = 1.0e32:
  temp = z
  z = sin(z) - zp
  zp = p1/conj(temp)
  (|zp| <= 4 && |z| <= huge) 
  ;SOURCE: noel.frm
}


quartc1 {; From Noel Giffin noel@triumf.ca
  z=pixel, zp = (0,0), bail=real(p2), huge = 1.0e32:
  temp = z
  z = sin(z) - zp
  zp = p1/conj(temp)
  (|zp| <= bail && |z| <= huge) 
  ;SOURCE: noel1.frm
}


quartest {
  z = zp1 = pixel, zp2 = (0,0), huge = 1.0e32:
  temp = z
  z = sin(zp1) - zp2
  zp2 = zp1
  zp1 = p1/temp, (|zp| <= huge && |z| <= huge) 
  ;SOURCE: noel1.frm
}


quartest1 {; From Noel Giffin noel@triumf.ca
  z = zp1 = pixel, zp2 = (0,0), huge = 1.0e32:
  temp = z
  z = sin(zp2) - zp1
  zp2 = zp1
  zp1 = p1/temp
  (|zp| <= huge && |z| <= huge) 
  ;SOURCE: noel1.frm
}


quartet {; From Noel Giffin noel@triumf.ca
     ; The quatro-HT variation. Use real part of p1  0.0 < p1 < 1.0
     ; Adding the inversion causes what looks like an 
     ; infinite extension along
     ; the real axis. Using the Imag component will 
     ; add some nice asymmetry.
  z=pixel, zp = (0,0), huge = 1.0e30:
  temp = z
  z = sin(z) - zp
  zp = p1/temp
  (|zp| <= huge && |z| <= huge) 
  ;SOURCE: noel1.frm
}


quartet1 {; From Noel Giffin noel@triumf.ca
   ; Use an input parameter (real part of p2) to control the bailout.
   ; increasing the bailout will reduce the disk size and a wider and
   ; more interesting range of workable P1 input parameters.
  z=pixel, zp = (0,0), bail=real(p2), huge = 1.0e32:
  temp = z
  z = sin(z) - zp
  zp = p1/temp
  (|zp| <= bail && |z| <= huge) 
  ;SOURCE: noel1.frm
}


quartet2 {; From Noel Giffin noel@triumf.ca
    ; a slightly different initialization of the basic quartet formula
  z=zp=pixel, huge = 1.0e32:
  temp = z
  z = sin(z) - zp
  zp = p1/temp
  (|zp| <= huge && |z| <= huge) 
  ;SOURCE: noel1.frm
}


quartz {
  z=c=pixel, zp = (0,0), huge = 1.0e32:
  temp = z
  z = -sin(z) - zp
  zp = p1/temp 
  (|zp| <= huge && |z| <= huge) 
  ;SOURCE: noel.frm
}


QuartzJ {; Julia sets of Quartz formula
         ; The Quartz Fractal Formula, discovered by Paul Derbyshire.
         ; Freely distributable but may not be sold.
         ; Julia sets set by two parameters; two four-D
         ; Mandelbrot sets sliced various ways.
  z=pixel:
  a=z*z
  b=z*a
  c=z*b
  z=p2*(3*c-4*b-6*a+12*z)+p1
  |z|<=127
  ;SOURCE: quartz.frm
}


QuartzM1A {; Mandelbrot set 1 (critical point -1) sliced horizontally
           ; The Quartz Fractal Formula, discovered by Paul Derbyshire.
           ; Freely distributable but may not be sold.
           ; Julia sets set by two parameters; two four-D
           ; Mandelbrot sets sliced various ways.
  z=-1:
  a=z*z
  b=z*a
  c=z*b
  z=pixel*(3*c-4*b-6*a+12*z)+p1
  |z|<=127
  ;SOURCE: quartz.frm
}


QuartzM1B {; Mandelbrot set 1 sliced vertically
           ; The Quartz Fractal Formula, discovered by Paul Derbyshire.
           ; Freely distributable but may not be sold.
           ; Julia sets set by two parameters; two four-D
           ; Mandelbrot sets sliced various ways.}
  z=-1:
  a=z*z
  b=z*a
  c=z*b
  z=p1*(3*c-4*b-6*a+12*z)+pixel
  |z|<=127
  ;SOURCE: quartz.frm
}


QuartzM1C {; Mandelbrot set 1 sliced diagonally
           ; The Quartz Fractal Formula, discovered by Paul Derbyshire.
           ; Freely distributable but may not be sold.
           ; Julia sets set by two parameters; two four-D
           ; Mandelbrot sets sliced various ways.
  z=-1:
  a=z*z
  b=z*a
  c=z*b
  z=(pixel+p1)*(3*c-4*b-6*a+12*z)+(pixel-p1)
  |z|<=127
  ;SOURCE: quartz.frm
}


QuartzM1D {; Mandelbrot set 1 sliced at an arbitrary real angle set by p2
           ; (0-1, not 0-2pi)
           ; The Quartz Fractal Formula, discovered by Paul Derbyshire.
           ; Freely distributable but may not be sold.
           ; Julia sets set by two parameters; two four-D
           ; Mandelbrot sets sliced various ways.
  w=2*3.141592654*p2
  m=cos(w)
  n=sin(w)
  z=-1:
  a=z*z
  b=z*a
  c=z*b
  z=(pixel*m+p1*n)*(3*c-4*b-6*a+12*z)+(pixel*n-p1*m)
  |z|<=127
  ;SOURCE: quartz.frm
}


QuartzM2A {; Mandelbrot set 2 (critical point -1) sliced horizontally
           ; The Quartz Fractal Formula, discovered by Paul Derbyshire.
           ; Freely distributable but may not be sold.
           ; Julia sets set by two parameters; two four-D
           ; Mandelbrot sets sliced various ways.}
  z=1:
  a=z*z
  b=z*a
  c=z*b
  z=pixel*(3*c-4*b-6*a+12*z)+p1
  |z|<=127
  ;SOURCE: quartz.frm
}


QuartzM2B {; Mandelbrot set 2 sliced vertically
           ; The Quartz Fractal Formula, discovered by Paul Derbyshire.
           ; Freely distributable but may not be sold.
           ; Julia sets set by two parameters; two four-D
           ; Mandelbrot sets sliced various ways.
  z=1:
  a=z*z
  b=z*a
  c=z*b
  z=p1*(3*c-4*b-6*a+12*z)+pixel
  |z|<=127
  ;SOURCE: quartz.frm
}


QuartzM2C {; Mandelbrot set 2 sliced diagonally
           ; The Quartz Fractal Formula, discovered by Paul Derbyshire.
           ; Freely distributable but may not be sold.
           ; Julia sets set by two parameters; two four-D
           ; Mandelbrot sets sliced various ways.
  z=1:
  a=z*z
  b=z*a
  c=z*b
  z=(pixel+p1)*(3*c-4*b-6*a+12*z)+(pixel-p1)
  |z|<=127
  ;SOURCE: quartz.frm
}


QuartzM2D {; Mandelbrot set 2 sliced at an arbitrary real angle set by p2
           ; (0-1, not 0-2pi)
           ; The Quartz Fractal Formula, discovered by Paul Derbyshire.
           ; Freely distributable but may not be sold.
           ; Julia sets set by two parameters; two four-D
           ; Mandelbrot sets sliced various ways.
  w=2*3.141592654*p2
  m=cos(w)
  n=sin(w)
  z=1:
  a=z*z
  b=z*a
  c=z*b
  z=(pixel*m+p1*n)*(3*c-4*b-6*a+12*z)+(pixel*n-p1*m)
  |z|<=127
  ;SOURCE: quartz.frm
}


QuasiJulia1 (ORIGIN) {; Fractal Report 24, p20 - Jose Murciano/Villanueva
                      ; translated for Fractint by Jon Horner
                      ; float=yes, periodicity=none
  x = real(pixel), y = imag(pixel), c = p1 :
  xnew = ABS(x * x - y * y) + real(c)
  y = x * y * 2 + imag(c)
  x = xnew 
  x*x + y*y <=4 
  ;SOURCE: burt.frm
}


QuasiJulia2 (ORIGIN) {; Fractal Report 26, p15 - Jose Murciano/Villanueva
                      ; translated for Fractint by Jon Horner
                      ; float=yes, periodicity=none
  x = real(pixel), y = imag(pixel), c = p1 :
  xnew = (x * x - y * y) + real(c)
  y = ABS(x * y) * 2 + imag(c)
  x = xnew
  x*x + y*y <=4 
  ;SOURCE: burt.frm
}


QuasiMandelbrot1 (XAXIS) { 
   ; Fractal Report 26, p16 - Jose Murciano/Villanueva
   ; translated for Fractint by Jon Horner
   ; float=yes, periodicity=none
  x = (0,0), y = (0,0) :
  xnew = ABS(x * x - y * y) + real(pixel)
  y = x * y * 2 + imag(pixel)
  x = xnew
  x*x + y*y <=4 
  ;SOURCE: burt.frm
}


QuasiMandelbrot2 {; from QuasiJulia2 - Jose Murciano/Villanueva
                  ; translated for Fractint by Jon Horner
                  ; asymmetric - float=yes, periodicity=none
  x = (0,0), y = (0,0) :
  xnew = (x * x - y * y) + real(pixel)
  y = ABS(x * y) * 2 + imag(pixel)
  x = xnew
  x*x + y*y <=4 
  ;SOURCE: burt.frm
}


QuatJul (XAXIS) {; v18 - Jon Horner, from CAL.
                 ; use of p1/p2 enables change of constants
                 ; from within Fractint.  All fn's = sqr
   ; real(p1)= -0.194, imag(p1)= 0.01, real(p2)= 0.6557, imag(p2)= 0.01
   ; Formula from article in Fractal Report 3 by Dr Ian Entwistle.
   ; More details in this article or in Computer Graphics, vol 16 pp61-67
  x1 = real(pixel), y1 = imag(pixel), z1 = 0, z2 = 0:
  x1x1 = fn1(x1), y1y1 = fn2(y1), z1z1 = fn3(z1), z2z2 = fn4(z2)
  x1y1 = x1*y1, x1z1 = x1*z1, x1z2 = x1*z2
  x1 = x1x1-z2z2-z1z1-y1y1+real(p1), y1 = x1y1+x1y1+imag(p1)
  z1 = x1z1+x1z1+real(p2), z2 = x1z2+x1z2+imag(p2)
  |x1x1+z1z1+y1y1+z2z2| <= 4
  ;SOURCE: parser.frm
}


QuatJul_00zw(ORIGIN) {; 4-dimensional J-Set
  z = 0
  w = pixel
  cz = p1
  cw = p2
  qz = sqr(z)
  qw = sqr(w):
  tz = qz - qw + cz
  tw = 2*z*w + cw
  z = tz
  w = tw
  qz = sqr(z)
  qw = sqr(w)
  |z| + |w| < 64
  ;SOURCE: 97msg.frm
}


QuatJul_0y0w {; 4-dimensional J-Set
  z = flip(real(pixel))
  w = flip(imag(pixel))
  cz = p2
  cw = p3
  qz = sqr(z)
  qw = sqr(w):
  tz = qz - qw + cz
  tw = 2*z*w + cw
  z = tz
  w = tw
  qz = sqr(z)
  qw = sqr(w)
  |z| + |w| < 64
  ;SOURCE: 97msg.frm
}


QuatJul_0yz0 {; 4-dimensional J-Set
  z = flip(real(pixel))
  w = imag(pixel)
  cz = p2
  cw = p3
  qz = sqr(z)
  qw = sqr(w):
  tz = qz - qw + cz
  tw = 2*z*w + cw
  z = tz
  w = tw
  qz = sqr(z)
  qw = sqr(w)
  |z| + |w| < 64
  ;SOURCE: 97msg.frm
}


QuatJul_x00w {; 4-dimensional J-Set
  z = real(pixel) 
  w = flip(imag(pixel))
  cz = p2
  cw = p3
  qz = sqr(z)
  qw = sqr(w):
  tz = qz - qw + cz
  tw = 2*z*w + cw
  z = tz
  w = tw
  qz = sqr(z)
  qw = sqr(w)
  |z| + |w| < 64
  ;SOURCE: 97msg.frm
}


QuatJul_x0z0 {; 4-dimensional J-Set
  z = real(pixel) 
  w = imag(pixel) 
  cz = p2
  cw = p3
  qz = sqr(z)
  qw = sqr(w):
  tz = qz - qw + cz
  tw = 2*z*w + cw
  z = tz
  w = tw
  qz = sqr(z)
  qw = sqr(w)
  |z| + |w| < 64
  ;SOURCE: 97msg.frm
}


QuatJul_xw {; 4-dimensional J-Set
  z = real(pixel) + flip(real(p1))
  w = imag(p1) + flip(imag(pixel))
  cz = p2
  cw = p3
  qz = sqr(z)
  qw = sqr(w):
  tz = qz - qw + cz
  tw = 2*z*w + cw
  z = tz
  w = tw
  qz = sqr(z)
  qw = sqr(w)
  |z| + |w| < 64
  ;SOURCE: 97msg.frm
}


QuatJul_xy {; 4-dimensional J-Set
  z = pixel
  w = p1
  cz = p2
  cw = p3
  qz = sqr(z)
  qw = sqr(w):
  tz = qz - qw + cz
  tw = 2*z*w + cw
  z = tz
  w = tw
  qz = sqr(z)
  qw = sqr(w)
  |z| + |w| < 64
  ;SOURCE: 97msg.frm
}


QuatJul_xy00(ORIGIN) {; 4-dimensional J-Set
  z = pixel
  w = 0
  cz = p1
  cw = p2
  qz = sqr(z)
  qw = sqr(w):
  tz = qz - qw + cz
  tw = 2*z*w + cw
  z = tz
  w = tw
  qz = sqr(z)
  qw = sqr(w)
  |z| + |w| < 64
  ;SOURCE: 97msg.frm
}


QuatJul_xz {; 4-dimensional J-Set
  z = real(pixel) + flip(real(p1))
  w = imag(pixel) + flip(imag(p1))
  cz = p2
  cw = p3
  qz = sqr(z)
  qw = sqr(w):
  tz = qz - qw + cz
  tw = 2*z*w + cw
  z = tz
  w = tw
  qz = sqr(z)
  qw = sqr(w)
  |z| + |w| < 64
  ;SOURCE: 97msg.frm
}


QuatJul_yw {; 4-dimensional J-Set
  z = real(p1) + flip(real(pixel))
  w = imag(p1) + flip(imag(pixel)) 
  cz = p2
  cw = p3
  qz = sqr(z)
  qw = sqr(w):
  tz = qz - qw + cz
  tw = 2*z*w + cw
  z = tz
  w = tw
  qz = sqr(z)
  qw = sqr(w)
  |z| + |w| < 64
  ;SOURCE: 97msg.frm
}


QuatJul_yz {; 4-dimensional J-Set
  z = real(p1) + flip(real(pixel))
  w = imag(pixel) + flip(imag(p1)) 
  cz = p2
  cw = p3
  qz = sqr(z)
  qw = sqr(w):
  tz = qz - qw + cz
  tw = 2*z*w + cw
  z = tz
  w = tw
  qz = sqr(z)
  qw = sqr(w)
  |z| + |w| < 64
  ;SOURCE: 97msg.frm
}


QuatJul_zw {; 4-dimensional J-Set
  z = p1
  w = pixel 
  cz = p2
  cw = p3
  qz = sqr(z)
  qw = sqr(w):
  tz = qz - qw + cz
  tw = 2*z*w + cw
  z = tz
  w = tw
  qz = sqr(z)
  qw = sqr(w)
  |z| + |w| < 64
  ;SOURCE: 97msg.frm
}


QuatMan_00zw(XYAXIS) {; 4-dimensional M-Set
  cz = z = 0
  cw = w = pixel
  qz = sqr(z)
  qw = sqr(w):
  tz = qz - qw + cz
  tw = 2*z*w + cw
  z = tz
  w = tw
  qz = sqr(z)
  qw = sqr(w)
  |z| + |w| < 64
  ;SOURCE: 97msg.frm
}


QuatMan_0y0w(XYAXIS) {; projection of 4-dimensional M-Set
  cz = z = flip(real(pixel))
  cw = w = flip(imag(pixel))
  qz = sqr(z)
  qw = sqr(w):
  tz = qz - qw + cz
  tw = 2*z*w + cw
  z = tz
  w = tw
  qz = sqr(z)
  qw = sqr(w)
  |z| + |w| < 64
  ;SOURCE: 97msg.frm
}


QuatMan_0yz0(XYAXIS) {; projection of 4-dimensional M-Set
  cz = z = flip(real(pixel))
  cw = w = imag(pixel)
  qz = sqr(z)
  qw = sqr(w):
  tz = qz - qw + cz
  tw = 2*z*w + cw
  z = tz
  w = tw
  qz = sqr(z)
  qw = sqr(w)
  |z| + |w| < 64
  ;SOURCE: 97msg.frm
}


QuatMan_x00w(XAXIS) {; projection of 4-dimensional M-Set
  cz = z = real(pixel)
  cw = w = flip(imag(pixel))
  qz = sqr(z)
  qw = sqr(w):
  tz = qz - qw + cz
  tw = 2*z*w + cw
  z = tz
  w = tw
  qz = sqr(z)
  qw = sqr(w)
  |z| + |w| < 64
  ;SOURCE: 97msg.frm
}


QuatMan_xw(XAXIS_NOIMAG) {; 4-dimensional M-Set
  cz = z = real(pixel) + flip(real(p1))
  cw = w = imag(p1) + flip(imag(pixel))
  qz = sqr(z)
  qw = sqr(w):
  tz = qz - qw + cz
  tw = 2*z*w + cw
  z = tz
  w = tw
  qz = sqr(z)
  qw = sqr(w)
  |z| + |w| < 64
  ;SOURCE: 97msg.frm
}


QuatMan_xy(XAXIS_NOIMAG) {; 4-dimensional M-Set
  cz = z = pixel
  cw = w = p1
  qz = sqr(z)
  qw = sqr(w):
  tz = qz - qw + cz
  tw = 2*z*w + cw
  z = tz
  w = tw
  qz = sqr(z)
  qw = sqr(w)
  |z| + |w| < 64
  ;SOURCE: 97msg.frm
}


QuatMan_xz(XAXIS_NOIMAG) {; 4-dimensional M-Set
  cz = z = real(pixel) + flip(real(p1))
  cw = w = imag(pixel) + flip(imag(p1))
  qz = sqr(z)
  qw = sqr(w):
  tz = qz - qw + cz
  tw = 2*z*w + cw
  z = tz
  w = tw
  qz = sqr(z)
  qw = sqr(w)
  |z| + |w| < 64
  ;SOURCE: 97msg.frm
}


QuatMan_yw(ORIGIN) {; 4-dimensional M-Set
  cz = z = real(p1) + flip(real(pixel))
  cw = w = imag(p1) + flip(imag(pixel))
  qz = sqr(z)
  qw = sqr(w):
  tz = qz - qw + cz
  tw = 2*z*w + cw
  z = tz
  w = tw
  qz = sqr(z)
  qw = sqr(w)
  |z| + |w| < 64
  ;SOURCE: 97msg.frm
}


QuatMan_yz(ORIGIN) {; 4-dimensional M-Set
  cz = z = real(p1) + flip(real(pixel))
  cw = w = imag(pixel) + flip(imag(p1))
  qz = sqr(z)
  qw = sqr(w):
  tz = qz - qw + cz
  tw = 2*z*w + cw
  z = tz
  w = tw
  qz = sqr(z)
  qw = sqr(w)
  |z| + |w| < 64
  ;SOURCE: 97msg.frm
}


QuatMan_zw(ORIGIN) {; 4-dimensional M-Set
  cz = z = p1 
  cw = w = pixel
  qz = sqr(z)
  qw = sqr(w):
  tz = qz - qw + cz
  tw = 2*z*w + cw
  z = tz
  w = tw
  qz = sqr(z)
  qw = sqr(w)
  |z| + |w| < 64
  ;SOURCE: 97msg.frm
}


quatro (XYAXIS) {
   ; Forget the squared term and iterate a trig function
  z=pixel, zp = (0,0):
  temp = z
  z = sin(z) - zp
  zp = temp
  |zp| <= 4 
  ;SOURCE: noel.frm
}


quilt (XAXIS) {
   ; The combination of a typing error and a bug in fractints parser
   ; makes weird quilt like patterns, I hope they don't fix it. I like it.
   ; Edited for Fractint v. 20 by George Martin, 10/98
   ;  The change preserves the "bug" feature noted by Noel. GGM
  zp1 = pixel, zp2 = (0,0):
  temp = z
  z = zp2*zp2  - zp1
  zp2 = zp1
  zp1 = temp^.5 
  |zp1| <= 4
  ;SOURCE: noel.frm
}


quiltX (XAXIS) {; From Noel Giffin noel@triumf.ca
                ; The combination of a typing error and 
                ; a bug in fractints parser
                ; makes weird quilt like patterns, 
                ; I hope they don't fix it. I like it.
  z = zp = pixel, huge = 1.e32:
  temp = z
  z = z*z  - zp
  zp = p1/temp^.5
  |zp| <= 4
  ;SOURCE: noel1.frm
}


Quiz {; Sylvie Gallet [101324,3444], 1995
  z=0, c=pixel, c1=0.25-c*c, c2=c1-1, ki=p1*(0.0,1.0) :
  z2=z*z, n=z2*z + c2*z - c1
  d=3*z2 + c2 + ki
  z=z-n/d
  |n|>=0.000001
  ;SOURCE: 96msg.frm
}


Quotient (XAXIS) {
  z = pixel:
  z = (sqr(z) + pixel) / (sqr(z) - pixel) 
  |z| <= 42
  ;SOURCE: hubert.frm
}


qwerty {; Putting the cart before the horse again...
  c = z, z = pixel:
  z = z*z + c
  |z| < 4
  ;SOURCE: querty.frm
}


qwerty_2 {; Putting the cart before the horse again...
  b = srand(z), c = rand, z = pixel:
  z = z*z + c
  |z| < 4
  ;SOURCE: querty.frm
}

