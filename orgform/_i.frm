

i4 {
  z=pixel, x=fn1(pixel^conj(z^2)), y=fn2(z^(tan(z/pixel+pixel))):
  z=fn3(x*x)*fn4(y/fn4(z+1))
  |z|>=p1
  ;SOURCE: ad3.frm
}


IAC {
  z = pixel:
  z = z ^1.5 - .02
  |z| <= 4
  ;SOURCE: formulas.frm
}


Ibubs_Julia_Mset {; Copyright (c) Paul W. Carlson, 1998
    ;   p1       = if both real(p1) and imag(p1) are zero
    ;              do Mset, otherwise do Julia set.
    ;   real(p2) = maximum contour of minimum sqrt(|w|)
    ;              (this is the outside edge of the bubbles).
    ;   imag(p2) = Value of |w| at bailout.
    ;   real(p3) = number of color ranges.
    ;   imag(p3) = number of colors in each color range.
    ;
  IF (real(p1) == 0 && imag(p1) == 0)
    w = 0
    c = 1 / pixel
  ELSE
    w = 1 / pixel
    c = p1
  ENDIF
  z = 0
  bailout = 0
  iter = 0
  range_num = 0
  max_w = imag(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  max_min_w = real(p2)
  min_w = 1.0e20:
    ;
  w = w * w + c  ; classic Mandelbrot equation
    ;
  temp = sqrt(|w|)
  IF (temp < min_w)
    min_w = temp
    save_range = range_num
  ENDIF
  IF (|w| > max_w)
    IF (min_w < max_min_w)
      range_index = (min_w / max_min_w) * (colors_in_range - 1)
      z = range_index + save_range * colors_in_range + 1
    ELSE
      z = 0
    ENDIF
    bailout = 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0  && |w| < max_w
  ;SOURCE: 98msg.frm
}


ICEZ (XAXIS) {; Jm Collard-Richard
              ; float=yes
  z=pixel:
  ex=exp(z)
  s=sin(z)
  c=cos(z)
  z1=c*ex-1
  z2=-s*ex+c*ex
  z=z-(z1/z2)
  0.001<=|z1| 
  ;SOURCE: jmcr2.frm
}


ICEZZ (XAXIS) {; cos(z)*z^z=1  Jm Collard-Richard
               ; float=yes
  z=pixel:
  zz=z^z
  s=sin(z)
  c=cos(z)
  z1=c*zz-1
  z2=c*(log(z)+1)-s*zz
  z=z-(z1/z2)
  0.001<=|z1| 
  ;SOURCE: jmcr2.frm
}


ICHZ (XAXIS) {; resolution  cosh(z)*exp(z)=1 sol=0  Jm Collard-Richard
              ; float=yes
  z=pixel:
  ex=exp(z)
  sh=sinh(z)
  ch=cosh(z)
  z1=ch*ex-1
  z2=sh*ex+ch*ex
  z=z-(z1/z2)
  0.001<=|z1| 
  ;SOURCE: jmcr2.frm
}


ICHZZ (XAXIS) {; resolution  cosh(z)*z^z=1    Jm Collard-Richard
               ; use floating point
  z=pixel:
  zz=z^z
  sh=sinh(z)
  ch=cosh(z)
  z1=ch*zz-1
  z2=sh*zz+(log(z)+1)*ch
  z=z-(z1/z2)
  0.001<=|z1|  
  ;SOURCE: jmcr2.frm
}


IfElse01 {; adapted from R. Barnett's formula
  z=y=c=pixel, w=0:
  IF(w) 
    z=fn1(real(y))+flip(imag(y))
    w=0
  ELSE 
    z=(y*p1)
    w=w+1 
  ENDIF
  z=z^p2+(p3*c)
  y=z
  |z| <= 100 
  ;SOURCE: 97msg.frm
}


IfElse03 {; Jim Muth
  z=y=pixel, a=real(p1), b=imag(p1)
  c=p2+(p3*pixel), w=0:
  IF(w)
    z=fn1(real(y))+fn2(imag(y)), w=0
  ELSE
    z=(y*a), w=w+1
  ENDIF
  z=z^b+c, y=z
  |z| <= 100 
  ;SOURCE: 97msg.frm
}


IfElsefn1fn2fn3 (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=fn1(z)+pixel
  ELSEIF (x<20)
    z=fn2(z)+pixel
  ELSE
    z=fn3(z)+pixel
  ENDIF
  x=x+1
  |z|<=4 
  ;SOURCE: choice.frm
}


IfThen-A1 {; Demonstrates that the order of expressions can make a
           ; difference.  In this example, the assignment is performed
           ; BEFORE the comparison.
           ; Edited for Fractint v. 20 by George Martin, 10/98
           ; Bradley's point is no longer relevant, since the program
           ; will report an error if this method of conditional assignment
           ; is attempted.
  z = c = pixel:
     ; (z < 0) * (z = fn1(z) + c)
     ; (0 <= z) * (z = fn2(z) + c)
  z = fn1(z) + c
  z = fn2(z) + c
  |z| < 4
  ;SOURCE: frmtutor.frm
}


IfThen-A2 {; Functional equivalent of IfThen-A2
  z = c = pixel:
  z = fn1(z) + c
  z = fn2(z) + c
  |z| < 4
  ;SOURCE: frmtutor.frm
}


IfThen-A3 {; Another equivalent of IfThen-A1
  z = c = pixel:
  z = fn2(fn1(z) + c) + c
  |z| < 4
  ;SOURCE: frmtutor.frm
}


IfThen-B1 {; In this formula, the comparison is performed BEFORE the
           ; assignment, but there's still a subtle flaw.
           ; Edited for Fractint v. 20 by George Martin, 10/98
           ; Bradley's point is no longer relevant, since the program
           ; will report an error if this method of conditional assignment
           ; is attempted.
  z = c = pixel:
    ; (z = fn1(z) + c) * (z < 0)
    ; (z = fn2(z) + c) * (0 <= z)
  z = (fn1(z) + c) * (z < 0)
  z = (fn2(z) + c) * (0 <= z)
  |z| < 4
  ;SOURCE: frmtutor.frm
}


IfThen-B2 {; Functional equivalent of IfThen-B1
  z = c = pixel:
  z = (fn1(z) + c) * (z < 0)
  z = (fn2(z) + c) * (0 <= z)
  |z| < 4
  ;SOURCE: frmtutor.frm
}


IfThen-C1 {; What we REALLY had in mind.
  z = c = pixel:
  neg = fn1(z) * (z < 0)
  pos = fn2(z) * (0 <= z)
  z = neg + pos + c
  |z| < 4
  ;SOURCE: frmtutor.frm
}


IfThen-C2 {; An alternate version of IfThen-C1
  z = c = pixel:
  z = (fn1(z) * (z < 0)) + (fn2(z) * (0 <= z)) + c
  |z| < 4
  ;SOURCE: frmtutor.frm
}


IfThenElsefn1fn2 (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=fn1(z)+pixel
  ELSE
    z=fn2(z)+pixel
  ENDIF
  x=|z| 
  x<=4
  ;SOURCE: choice.frm
}


IfThenfn1fn2 (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=fn1(z)
  ENDIF
  z=fn2(z)+pixel
  x=|z| 
  x<=4
  ;SOURCE: choice.frm
}


Ikeda {; Standard:c1=.4, c2=.9, c3=6;rho=1
  c1=real(p1)
  c2=imag(p1)
  c3=real(p2)
  rho=imag(p2)
  bailout=1
  z=pixel:
  x=real(z)
  y=imag(z)
  t=c1-c3/(1+x*x+y*y)
  st=sin(t)
  ct=cos(t)
  nx=c2*(x*ct-y*st)+rho
  ny=c2*(x*st+y*ct)
  z=nx+flip(ny)
  |z|<bailout
  ;SOURCE: 97msg.frm
}


IkeFrRbtGenJ {; Ron Barnett, 1993
  z = pixel:
  z = p1*z*z*z + (p2-1)*z*z - p2 
  |z| <= 100
  ;SOURCE: reb002.frm
}


IkeFrRbtGenM {; Ron Barnett, 1993
  z = 2*(1-pixel)/(3*p1):
  z = p1*z*z*z + (pixel-1)*z*z - pixel 
  |z| <= 100
  ;SOURCE: reb002.frm
}


IkeGenJ {; Ron Barnett, 1993
  z = pixel:
  z =p1*z*z*z + (p2-1)*z - p2 
  |z| <= 100
  ;SOURCE: reb002.frm
}


IkeGenM {; Ron Barnett, 1993
  z = ((1-pixel)/(3*p1))^0.5:
  z =p1*z*z*z + (pixel-1)*z - pixel 
  |z| <= 100
  ;SOURCE: reb002.frm
}


IkeJulia {; Ron Barnett [70153,1233], 1996  Requires passes=1
   ; p3 will shift the julia set wrt the ikenaga set
   ; p2 is for the Julia value
   ; Ron Barnett, 1996
  z = whitesq*((1-pixel)/3)^0.5+(whitesq==0)*(pixel+p3)
  c = whitesq*p1*pixel + (whitesq==0)*p2:
  z=z*z*z+(c-1)*z-c 
  |z|<=4
  ;SOURCE: phc.frm
}


Ikenaga (XAXIS) {; this version correct per Roderick Stewart -
                 ; announcement in Fractal Report 25 p2.
                 ; same as letter, Joyce Haslam Mar 1993
                 ; z=z*z*z+ (c-1)*z-c produces same results.
  z = (0,0), c = pixel:
  z = z * z * z + z * (c-1) - c
  |z|<=4
  ;SOURCE: ikenaga.frm
}


Ikenaga2 (XAXIS) {; from Joyce Haslam article, Fractal Report Iss 24 p5.
                  ; Uses pixel instead of c !!!!
                  ; CAL v4.0 calls it UnamiSet. FR 25 calls it Unknown.
                  ; CAL v4.0 IkenagaSet(XAXIS) =
                  ; {z=0:z=z*z*z+z*(pixel-1)-pixel,|z|<=|2|
  z = pixel:
  z = z * z * z + (pixel-1) * z - pixel
  |z|<=4
  ;SOURCE: ikenaga.frm
}


Ikenaga4 (XAXIS) {; CAL v3.8 calls it Ikenaga-4Set
                  ; Per Haslam, Fractal Report 25 p2 (IKE4)
                  ; z^4 is used instead of z^3 and multiplication
                  ; is used in place of addition.
  z = (0,0), c = pixel:
  z = z * z * z * z * (c-1) - c
  |z|<= 4
  ;SOURCE: ikenaga.frm
}


Ikenaga4BIO (XAXIS) {; Ikenaga4 variation - Jon Horner
                     ; float=y
  z = (0,0), c = pixel:
  z = z * z * z * z * (c-1) - c
  |real(z)|<=4 || |imag(z)|<=4
  ;SOURCE: ikenaga.frm
}


Ikenaga4BIOJUL (ORIGIN) {; Jon Horner, from IKE4 - FR 25, p2
                         ; try p1 = (0.3874, 0.85)  float=y
  z = pixel, c = p1:
  z = z * z * z * z * (c-1) - c
  |real(z)|<=4 || |imag(z)|<=4
  ;SOURCE: ikenaga.frm
}


Ikenaga4JUL (ORIGIN) {; Jon Horner, from IKE4 - Fractal Report 25 p2
                      ; try p1 = (0.3874, 0.85)
  z = pixel, c = p1:
  z = z * z * z * z * (c-1) - c
  |z| <= 4
  ;SOURCE: ikenaga.frm
}


IkenagaABS (XAXIS) {; Jon Horner
                    ; Ikenaga with alternative bailout
  z = (0,0), c = pixel:
  z = z * z * z + z * (c-1) - c
  abs(z)<=4
  ;SOURCE: ikenaga.frm
}


IkenagaABSJUL {; Jon Horner
               ; IkenagaJul with alternative bailout
  z = pixel, c = p1:
  z = z * z * z + z * (c-1) - c
  abs(z) <= 4
  ;SOURCE: ikenaga.frm
}


IkenagaFN (XAXIS) {; Jon Horner
                   ; derived from Ikenaga
  z = (0,0), c = fn1(pixel):
  z = z * z * z + z * (c-1) - c
  |z| <=4 
  ;SOURCE: ikenaga.frm
}


IkenagaFNJUL {; Jon Horner
              ; derived from IkenagaJul
              ; asymmetric:   try p1 = (0.56667, 0.36)
  z = fn1(pixel), c = p1:
  z = z * z * z + z * (c-1) - c
  |z| <= 4
  ;SOURCE: ikenaga.frm
}


IkenagaJUL {; formula from a letter from Joyce Haslam Mar 1993.
            ; Asymmetric.   try p1 = (0.56667, 0.36)
            ; Next line, from Haslam article Fractal Report 24 p5
            ; z=z*z*z+ (c-1)*z-c produces same results.
            ; Same as Julike in REB001.FRM
  z = pixel, c = p1:
  z = z * z * z + z * (c-1) - c
  |z| <= 4
  ;SOURCE: ikenaga.frm
}


IkenagaJUL1+ (ORIGIN) {; formula from an article by Joyce Haslam
                       ; in Fractal Report 24 (w/+pixel stead of +c)
                       ; symmetric
  z = pixel, c = p1:
  z = z * z * z + (c-1) * z + pixel
  |z|<=4
  ;SOURCE: ikenaga.frm
}


IkenagaMap (XAXIS) {; Ron Barnett, 1993
                    ; based upon the Ikenaga function described
                    ; in Dewdneys's The Armchair Universe.
                    ; The initial starting point allows the 
                    ; function to provide a
                    ; "map" for the corresponding Julia 
                    ; function (Julike ) 
  z = ((1-pixel)/3)^0.5: 
  z = z*z*z + (pixel-1)*z - pixel 
  |z| <= 4
  ;SOURCE: reb001.frm
}


Ikenagamj {; Ron Barnett, 1997
  IF(ismand)
    z = ((1-pixel)/3)^0.5, c = pixel 
  ELSE
    z = pixel, c = p1
  ENDIF
  :
  z = z*z*z + (c-1)*z - c 
  |z| <= 4
  ;SOURCE: 97msg.frm
}


IkenagaNewtmj {; Ron Barnett, 1997
  IF(ismand)
    z = ((1-pixel)/3)^0.5, c = pixel 
  ELSE
    z = pixel, c = p1
  ENDIF
  :
  zf = z*z*z + (c-1)*z - c
  IF(ismand)
    z = zf
    bailout = |z| <= 4
  ELSE
    zd = 3*z*z + c-1
    z = z - p2*zf/zd
    bailout = |zf| >= 0.000001
    ENDIF
    bailout
  ;SOURCE: 97msg.frm
}


ikenagaoriginal {; Ron Barnett, 1994
  z = 0, c = pixel:
  z = z*z*z + (c - 1)*z - c 
  |z|<=100
  ;SOURCE: reb006.frm
}


IkenagaPwr (XAXIS) {; from Jon Horner
                    ; Revised 5/6/96 for Orgform by George Martin
                    ;   Missing "|" added to bailout test
  z = (0,0), c = pixel:
  z = z * z * z + z * (c-1) - c ^ p1
  |z| <=4
  ;SOURCE: ikenaga.frm
}


IkenagaPwrJul {; from Jon Horner - asymmetric
               ; try p1 = (0.035, -0.35), p2 = 2
  z = pixel, c = p1:
  z = z * z * z + z * (c-1) - c ^ p2
  |z| <=4
  ;SOURCE: ikenaga.frm
}


IkeNewtJul {; Ron Barnett, 1993
  z =  pixel:
  zf = z*z*z + (p2-1)*z - p2
  zd = 3*z*z + p2-1
  z = z - p1*zf/zd
  0.001 <= |zf|
  ;SOURCE: reb001.frm
}


IkeNewtMand {; Ron Barnett, 1993
  z = c = pixel:
  zf = z*z*z + (c-1)*z - c
  zd = 3*z*z + c-1
  z = z - p1*zf/zd
  0.001 <= |zf|
  ;SOURCE: fractint.frm
}


ilvfn12rot {
   ; Exp( p1 * fn(|pixel|* ... )..) rotates the Pixels 
   ; according to their distance from the origin when
   ; p1 is chosen complex (real (p1) translates them). 
  Ground = pixel+1/fn1(p2*pixel*exp(p1*fn2(|pixel|)))
  z=Ground:
  z=sqr(z)+Ground
  |z|<=4 
  ;SOURCE: ilvi.frm
}


Ilvifn1-iw { 
  z = Pixel + 1/(fn1(p2*Pixel) - p1):  
  z = sqr(z) +  Pixel + 1/(fn1(p2*Pixel) - p1) 
  | z | <= 4 
  ;SOURCE: ilvi.frm
}


Ilvifn1-iw1 {
  z = Pixel + fn1(p2*Pixel - p1):  
  z = sqr(z) +  Pixel + fn1(p2*Pixel - p1) 
  | z | <= 4 
  ;SOURCE: ilvi.frm
}


Ilvifn1-iw3 {
  z = 1/(fn1(p2*Pixel) - p1) + 1/(fn2(p2*Pixel) - p1):  
  z = sqr(z) + 1/(fn1(p2*Pixel) - p1) + 1/(fn2(p2*Pixel) - p1) 
  | z | <= 4 
  ;SOURCE: ilvi.frm
}


Ilvifn1-iw5 {
  z = 1/fn1(p1*Pixel) + 1/fn2(p2*Pixel):  
  z = sqr(z) + 1/fn1(p1*Pixel) + 1/fn2(p2*Pixel) 
  | z | <= 4 
  ;SOURCE: ilvi.frm
}


Ilvifn1fn2-iw {; don't fuaget float to puute akkurattly !
  z = Pixel + 1/(fn1(p2*Pixel) - p1) + 1/(fn2(p2*Pixel) - p1):  
  z = sqr(z) +  Pixel + 1/(fn1(p2*Pixel) - p1) + 1/(fn2(p2*Pixel) - p1) 
  | z | <= 4 
  ;SOURCE: ilvi.frm
}


Ilvifn1fn2-j {; don't fuaget float to puute akkurattly !
  z = Pixel + 1/(fn1(p2*Pixel)) + 1/(fn2(p2*Pixel)):  
  z = sqr(z) +  p1 + 1/(fn1(p2*p1)) + 1/(fn2(p2*p1)) 
  | z | <= 4 
  ;SOURCE: ilvi.frm
}


ilvp+fn123 { 
  Ground = pixel+fn1(fn2(fn3(p2*pixel)))+fn1(fn3(fn2(p2*pixel)))
  z=Ground:
  z=sqr(z)+Ground
  |z|<=4 
  ;SOURCE: ilvi.frm
}


ilvsqzz {; p1<0 complex,  ident, log
  Ground = pixel*fn1(p2*exp(p1*fn2(|pixel|)*imag(pixel)))
  z=Ground:
  z=sqr(z)+Ground
  |z|<=4 
  ;SOURCE: ilvi.frm
}


ilvwav { 
   ;pix/|pix| is a complex number with length 1 and the direction of 
   ;the pixel.The faktor fn1(..) allows you to scale it the way 
   ;you want.  fn1=ident, p1=1 should be the normal Mandl.
  Ground = pixel/|pixel|*fn1(p1 * |pixel|)
  z=Ground:
  z=sqr(z)+Ground
  |z|<=4 
  ;SOURCE: ilvi.frm
}


inandout01 {; Bradley Beacham  [74223,2745]
            ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
            ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = oldz = pixel, c1 = fn1(pixel), c2 = fn2(pixel):
  a = (|z| <= |oldz|) * (c1) ;IN
  b = (|oldz| < |z|)  * (c2) ;OUT
  oldz = z
  z = fn3(z*z) + a + b + p1
  |z| <= test
  ;SOURCE: dons.frm
}


inandout02 {; Modified for if..else logic 3/19/97 by Sylvie Gallet
   ; p1 = Parameter (default 0), real(p2) = Bailout (default 4)
   ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
  IF (p2 <= 0)
     test = 4
  ELSE
     test = real(p2)
  ENDIF
  z = oldz = pixel, moldz = mz = |z|:
  IF (mz <= moldz)
     oldz = z, moldz = mz, z = fn1(z) + p1, mz = |z|  ;IN
  ELSE
     oldz = z, moldz = mz, z = fn2(z) + p1, mz = |z|  ;OUT
  ENDIF
  mz <= test
  ;SOURCE: fract196.frm
}


inandout03 {; Modified for if..else logic 3/19/97 by Sylvie Gallet
   ; p1 = Parameter (default 0), real(p2) = Bailout (default 4)
   ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
  IF (p2 <= 0)
     test = 4
  ELSE
     test = real(p2)
  ENDIF
  z = oldz = c = pixel, moldz = mz = |z| :
  IF (mz <= moldz)
     c = fn1(c)       ;IN
  ELSE
     c = fn1(z * p1)  ;OUT
  ENDIF
  oldz = z, moldz = mz
  z = fn2(z*z) + c, mz = |z|
  mz <= test
  ;SOURCE: fract196.frm
}


inandout04 {; Modified for if..else logic 3/21/97 by Sylvie Gallet
    ; p1 = Parameter (default 1), real(p2) = Bailout (default 4)
    ; The next line sets k=default if p1=0, else k=p1
   IF (real(p1) || imag(p1))
      k = p1
   ELSE
      k = 1
   ENDIF
    ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
   IF (real(p2) <= 0)
      test = 4
   ELSE
      test = real(p2)
   ENDIF
   z = oldz = c = pixel, mz = moldz = |z|
   :
   IF (mz > moldz)
      c = c*k
   ENDIF
   oldz = z, moldz = mz, z = fn1(z*z) + c, mz = |z|
   mz <= test
  ;SOURCE: fract196.frm
}


inandout05 {; Bradley Beacham  [74223,2745]
            ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
            ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = oldz = pixel:
  a = (|z| <= |oldz|) * (pixel) ;IN
  b = (|oldz| < |z|)  * (oldz)  ;OUT
  oldz = z
  z = fn1(z*z) + a + b + p1
  |z| <= test
  ;SOURCE: inandout.frm
}


inandout06 {; Bradley Beacham  [74223,2745]
            ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
            ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = pixel, c1 = fn2(pixel), c2 = fn3(pixel), olddist =100
  tgt = fn1(pixel), rt=real(tgt), it=imag(tgt):
  x = real(z) - rt
  y = imag(z) - it
  dist = x*x + y*y
  in  = c1 * (dist <= olddist)
  out = c2 * (olddist < dist)
  olddist = dist
  z = z*z + in + out + p1
  |z| <= test
  ;SOURCE: zsazsa.frm
}


inandout07 {; Bradley Beacham  [74223,2745]
            ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
            ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = pixel, tgt = fn1(pixel), rt = real(tgt), it = imag(tgt)
  olddist = 100:
  x = real(z) - rt
  y = imag(z) - it
  dist = x*x + y*y
  in  = fn2(z) * (dist <= olddist)
  out = fn3(z) * (olddist < dist)
  olddist = dist
  z = in + out + p1
  |z| <= test
  ;SOURCE: zsazsa.frm
}


inandout08 {; Bradley Beacham  [74223,2745]
            ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
            ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = c = pixel, tgt = fn1(pixel), rt = real(tgt), it = imag(tgt)
  olddist = 100:
  x = real(z) - rt
  y = imag(z) - it
  dist = x*x + y*y
  in  = c * (dist <= olddist)
  out = (z*p1) * (olddist < dist)
  c = fn2(in + out)
  olddist = dist
  z = fn3(z*z) + c
  |z| <= test
  ;SOURCE: zsazsa.frm
}


inandout09 {; Bradley Beacham  [74223,2745]
            ;p1 = Parameter (default 1), real(p2) = Bailout (default 4)
            ;The next line sets k=default if p1=0, else k=p1
  k = ((1) * (|p1|<=0) + p1)
            ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = c = pixel, tgt = fn1(pixel), rt = real(tgt), it = imag(tgt)
  olddist = 100:
  x = real(z) - rt
  y = imag(z) - it
  dist = x*x + y*y
  in  = c * (dist <= olddist)
  out = (c*k) * (olddist < dist)
  c = in + out
  olddist = dist
  z = fn2(z*z) + c
  |z| <= test
  ;SOURCE: dons.frm
}


inandout10 {; Bradley Beacham  [74223,2745]
            ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
            ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = oldz = pixel, tgt = fn1(pixel), rt = real(tgt), it = imag(tgt)
  olddist = 100:
  x = real(z) - rt
  y = imag(z) - it
  dist = x*x + y*y
  in  = pixel * (dist <= olddist)
  out = oldz * (olddist < dist)
  olddist = dist
  oldz = z
  z = fn2(z*z) + in + out + p1
  |z| <= test
  ;SOURCE: zsazsa.frm
}


inandout11 {; Bradley Beacham  [74223,2745]
            ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
            ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = pixel, c1 = fn1(pixel), c2 = fn2(pixel)
  rt = real(p1), it = imag(p1), olddist = 100:
  x = real(z) - rt
  y = imag(z) - it
  dist = x*x + y*y
  in  = c1 * (dist <= olddist)
  out = c2 * (olddist < dist)
  olddist = dist
  z = fn3(z*z) + in + out
  |z| <= test
  ;SOURCE: dons.frm
}


inandout12 {; Bradley Beacham  [74223,2745]
            ;p1 = Parameter (default 0,0), p2 = Parameter (default 0,0)
  z = pixel, rt = real(p1), it = imag(p1), olddist = 100:
  x = real(z) - rt
  y = imag(z) - it
  dist = x*x + y*y
  in  = fn1(z) * (dist <= olddist)
  out = fn2(z) * (olddist < dist)
  olddist = dist
  z = in + out + p2
  |z| <= 4
  ;SOURCE: zsazsa.frm
}


inandout13 {; Bradley Beacham  [74223,2745]
            ;p1 = Parameter (default 0), p2 = parameter (default 1,0)
            ;The next line sets k=1 if real(p2)==0, else k=p2
  k = (1 * (real(p2)==0) + p2 * (0 != p2))
  z = c = pixel, rt = real(p1), it = imag(p1), olddist = 100:
  x = real(z) - rt
  y = imag(z) - it
  dist = x*x + y*y
  in  = c * (dist <= olddist)
  out = (z*k) * (olddist < dist)
  c = fn1(in + out)
  olddist = dist
  z = fn2(z*z) + c
  |z| <= 4
  ;SOURCE: dons.frm
}


inandout14 {; Bradley Beacham  [74223,2745]
            ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
            ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = pixel, c = fn2(z), olddist =100
  tgt = fn1(pixel), rt=real(tgt), it=imag(tgt):
  x = real(z) - rt
  y = imag(z) - it
  dist = (x * x) + (y * y)
  in = (z*z*z) * (dist <= olddist)
  out = (z*z) * (olddist < dist)
  olddist = dist
  z = in + out + c + p1
  |z| <= test
  ;SOURCE: snazzy.frm
}


Incdbail { 
  z = c = pixel, m = fn3(z), n = fn4(z):
  t = fn1(z) + fn2(z)                                                 
  d = z-t
  z=((d<=p1)*(z+(m/z)))+((d>p1)*(d<=(2*p1))*(t))+((d>(2*p1))*(z-(n/z))) 
  d <= p2
  ;SOURCE: ron1.frm
}


inner {; Giuseppe Zito
  z = pixel
  c0 = -0.24339
  c6 = -0.627519
  d2 = -0.153545
  d10 = 0.153357
  d13 = 0.107895
  d15 = -0.438812
  : 
  x = real(z), y = imag(z)
  s0 =c0
  s0 = s0 +y
  s1 = x
  s1 = s1 *c6
  s0 = s0 +s1
  newx = s0 
  s0 = y
  s0 = s0 -d2
  s0 = s0 -y
  s0 = s0 *y
  s0 = s0 +x
  s0 = s0 -x
  s0 = s0 /d10
  s0 = s0 -y
  s0 = s0 /x
  s0 = s0 -d13
  s0 = s0 -x
  s0 = s0 +d15
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


inter {; Giuseppe Zito
  z = pixel
  c0 = -0.330081
  c3 = -0.771019
  c6 = -0.236143
  c10 = -0.16596
  c11 = -0.781042
  d2 = 0.455272
  d9 = -0.116439
  d14 = 0.981856
  d15 = 0.080082
  d17 = -0.80042
  d18 = 0.078989
  d21 = 0.104922
  : 
  x = real(z), y = imag(z)
  s0 =c0
  s1 = x
  s0 = s0 *s1
  s0 = s0 -c3
  s0 = s0 *x
  s0 = s0 -c6
  s0 = s0 +c10
  s0 = s0 *c11
  s0 = s0 +y
  newx = s0 
  s0 = y
  s1 =d2
  s1 = s1 *y
  s1 = s1 -y
  s0 = s0 *s1
  s0 = s0 -d9
  s0 = s0 -x
  s0 = s0 *d14
  s0 = s0 -d15
  s0 = s0 -d17
  s0 = s0 -d18
  s0 = s0 -d21
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


Interferences {; Sylvie Gallet [101324,3444], 1996
               ; formula based on Tim Wegner's Graph-3
  a = -1, b = 1, k = real(p2)
  da = cabs(pixel-a), db = cabs(pixel-b)
  value = sin(k*da) + sin(k*db)
  min = real(p1), max = imag(p1)
  incr = (max - min)/256, z = min:
  z = z + incr
  z <= value
  ;SOURCE: 96msg.frm
}


Inv_Newtzz_Jul {; Copyright (c) Paul W. Carlson, 1998
    ; Parameters:
    ;   p1 = Julia set coordinates
    ;   real(p2) = maximum value of abs(real(w))
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
  prev_w = 1 / pixel
  c = p1
  z = bailout = iter = range_num = 0
  max_real = real(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  index_factor = 2 * colors_in_range / pi
  :
  k = prev_w^prev_w
  w = prev_w - (k - c) / (k * (1 + log(prev_w)))
    ;
  IF (abs(real(w)) > max_real)
    delta_i = imag(w) - imag(prev_w)
    delta_r = real(w) - real(prev_w)
    angle = abs(atan(delta_i / delta_r))
    bailout = 1
    z = index_factor * angle + range_num * colors_in_range + 1
  ENDIF
  prev_w = w
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| > 1.0e-10
  ;SOURCE: 98msg.frm
}


Invasion5 {; Mike Traynor
           ; From Earl L. Hinrichs' non-fractint formula
  z = Pixel, c = pixel:
  z = z^2 + c
  x = p1*fn1(real(z^2 + c))
  y = p2*imag(z^2 + c)
  z =  x + flip(y)
  z = z^2 + c
  |(z^2)| <= 4
  ;SOURCE: invasio2.frm
}


Invasion6 {; Mike Traynor
           ; From Earl L. Hinrichs' non-fractint formula
  z = Pixel, c = pixel:
  z = sqr(z) + c
  x = p1*fn1(real(sqr(z) + c))
  y = p2*imag(sqr(z) + c)
  z =  x + flip(y)
  z = sqr(z) + c
  LastSqr <= 4
  ;SOURCE: invasio2.frm
}


InvCosSq (XAXIS) {
  z = pixel
  test = (p1+3):
  z1 = cosxx(z) * cosxx(z)
  zde = 1 +  (imag(z1)*imag(z1) )
  z = (real(z1) / zde) - (imag(z1) / zde)   
  |z| < test 
  ;SOURCE: skinv13r.frm
}


InverseJulia {; J.P. Louvet
              ; P1 = c
              ; P2 = iter (normalement 4)
  z=pixel
  c=P1:
  z=1/(z^2+c)
  |z|<=P2
  ;SOURCE: jpl1.frm
}


InverseJuliaFn {; after Pokorny
                ;  modified by J.P. Louvet
                ; P1 = c
                ; P2 = iter (normalement 4)
  z=pixel
  c=P1:
  z=fn1(1/(z^2+c))
  |z|<=P2
  ;SOURCE: jpl1.frm
}


InverseJuliaFnFn {; Pokorny modifie par J.P. Louvet
                  ; P1 = c
                  ; P2 = iter (normalement 4)
  z=pixel
  c=P1:
  z=fn1(1/(fn2(z)^2+c))
  |z|<=P2
  ;SOURCE: fract-02.par
}


InvExpZ_N (xaxis) {; Jm Collard-Richard
                   ; voir ExpZ_N
  z=1/pixel:
  z0=exp(z^p1)
  z1=z0-1
  z2=p1*z^(p1-1)*z0
  z=z-(z1/z2)
  0.0001<=|z1|     
  ;SOURCE: jmcr2.frm
}


InvFNJmN-J {; Jm Collard-Richard
  z=1/(pixel^p2):
  z=fn1(z^p2)+fn2(p1) 
  ;SOURCE: jmcr1.frm
}


InvFNJmN-M (xaxis) {; Jm Collard-Richard
  c=z=1/(pixel^p1) :
  z=fn1(z^p1)+fn2(c)  
  ;SOURCE: jmcr1.frm
}


InvFNMandelBar_N (xaxis) {; Jm Collard-Richard
  c=z=1/pixel :
  z=fn1(conj(z)^p1)+fn2(c) 
  ;SOURCE: jmcr1.frm
}


InvJm1-J {; Jm Collard-Richard  Ceci n'est *pas* InvJulia2
  z=1/(pixel*pixel):
  z=z*z+p1      
  ;SOURCE: jmcr1.frm
}


InvJm1-M (xaxis) {; Ceci n'est *pas* InvMand2  Jm Collard-Richard
  c=z=1/(pixel*pixel):
  z=z*z+c       
  ;SOURCE: jmcr1.frm
}


InvJmBarN-J {; Jm Collard-Richard   Ceci n'st pas InvJulBar_N
  z=1/(pixel^p2):
  z=conj(z)^p2+p1
  |z|<=4        
  ;SOURCE: jmcr1.frm
}


InvJmBarN-M {; Jm Collard-Richard     Ceci n'est pas InvMandBar_N
  c=z=1/(pixel^p1):
  z=conj(z)^p1+c
  |z|<=4        
  ;SOURCE: jmcr1.frm
}


InvJmN-J {; Jm Collard-Richard   Ceci n'est pas InvJuliaN
  z=1/(pixel^p2):
  z=z^p2+p1
  |z|<=4        
  ;SOURCE: jmcr1.frm
}


InvJmN-M {; Jm Collard-Richard    Ceci n'est pas InvMandelN
  c=z=1/(pixel^p1):
  z=z^p1+c
  |z|<=4        
  ;SOURCE: jmcr1.frm
}


InvJulia_N {; Jm Collard-Richard
  z=1/pixel:
  z=z^p2+p1
  |z|<=4                    
  ;SOURCE: jmcr1.frm
}


InvJuliaBar_2 {; Jm Collard-Richard
  z=1/pixel:
  z=conj(z)^2+p1           
  ;SOURCE: jmcr1.frm
}


InvJuliaBar_N {; Jm Collard-Richard
  z=1/pixel:
  z=conj(z)^p2+p1          
  ;SOURCE: jmcr1.frm
}


InvMand {
  z=c=1/pixel:
  z=z*z+c
  |z| <=10
  ;SOURCE: 03carr.frm
}


InvMand_N {; Jm Collard-Richard
  z=c=1/pixel:
  z=z^p1+c
  |z|<=4                    
  ;SOURCE: jmcr1.frm
}


InvMandel (XAXIS) {; Mark Peterson
  c = z = 1 / pixel:
  z = sqr(z) + c
  |z| <= 4
  ;SOURCE: fractint.frm
}


InvMandelBar_2_c (xaxis) {; Jm Collard-Richard
  c=z=1/pixel :
  z=conj(z)*conj(z)+c 
  ;SOURCE: jmcr1.frm
}


InvMandelBar_N (xaxis) {; Jm Collard-Richard
  c=z=1/pixel :
  z=conj(z)^p1+c           
  ;SOURCE: jmcr1.frm
}


INVZZCHZ (Xaxis) {; Jm Collard-Richard  - Use FLOAT=YES
                  ; resol : 1/z^z=cosh(z)
  z=pixel:
  zz=z^z
  z1=(1/zz)-cosh(z)
  z2=((log(z)+1)*zz)*(-1)*(1/(zz*zz))-sinh(z)
  z=z-(z1/z2)
  0.001<=|z1|     
  ;SOURCE: jmcr2.frm
}


INVZZCZ (xaxis) {; Jm Collard-Richard   -   use FLOAT=YES
                 ; resol : 1/z^z=cos(z)
  z=pixel:
  zz=z^z
  z1=(1/zz)-cos(z)
  z2=((log(z)+1)*zz)*(-1)*(1/(zz*zz))+sin(z)
  z=z-(z1/z2)
  0.001<=|z1|   
  ;SOURCE: jmcr2.frm
}


iplumb {; Giuseppe Zito
  z = pixel
  c0 = 0.574984
  d0 = 0.711239
  d3 = -0.222274
  : 
  x = real(z), y = imag(z)
  s0 =c0
  s1 = y
  s1 = s1 -y
  s1 = s1 +y
  s0 = s0 +s1
  newx = s0 
  s0 =d0
  s0 = s0 /x
  s0 = s0 *d3
  s0 = s0 /x
  s0 = s0 -x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


island {; Giuseppe Zito
  z = pixel
  c8 = -0.5492
  d0 = -0.59332597
  d1 = -0.85241997
  d2 = 0.95418
  d3 = -0.289022
  d11 = 0.41790199
  d14 = 0.68122602:
  x = real(z), y = imag(z)
  newx =x*c8-y
  s1=d0*d1*d2
  s2=(d3*y+s1)-d11
  s3=x/d14
  newy =(((y*s3+x)*s2)*x)+x
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4
  ;SOURCE: zg.frm
}


IslandOfChaos (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=sin(z)/cosxx(z)+pixel
  x=x+1 
  |z|<=4
  ;SOURCE: choice.frm
}


IslandOfChaosC (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSE
    z=sin(z)/cosxx(z)+pixel
  ENDIF
  x=x+1 
  |z|<=4
  ;SOURCE: choice.frm
}


IslandOfChaosC.1 (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSE
    z=tan(z)+pixel
  ENDIF
  x=x+1 
  |z|<=4
  ;SOURCE: choice.frm
}

