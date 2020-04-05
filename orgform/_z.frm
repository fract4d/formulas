

z0 {; Revised 4/27/96 to eliminate superfluous "+c"
    ; Original version of this formula may be discarded
  z=pixel, u=tan(z+1)/real(z^(pixel/2)), t=imag(real(tan(z^2))):
  z=(fn1(u)^fn2(t))+fn3(u+t)
  |z|<=4
  ;SOURCE: new.frm
}


z3 {; Revised 4/27/96 to eliminate superfluous "+c"
    ; Original version of this formula may be discarded
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=pixel, t=(1.099,.09)^2/pixel*(3-pixel/fn1(z^p2)), n=real(t/(z/p3)):
  z=((fn1(2/n)^fn2(z^t-z))/fn3(z^(t-n))*fn4(t/n-z))
  |real(z)|<=4
  ;SOURCE: new.frm
}


z3-xw (XYAXIS_NOPARM) {; 1997 by Benno Schmid
  z=real(pixel)+flip(real(p1))
  c=flip(imag(pixel))+imag(p1):
  z=z*sqr(z)+c
  |z| <= 16
  ;SOURCE: 4d.frm
}


z3-xy (XYAXIS_NOPARM) {; 1997 by Benno Schmid 
                       ; Julia
  z=pixel
  c=p1:
  z=z*sqr(z)+c
  |z| <= 16
  ;SOURCE: 4d.frm
}


z3-xz (ORIGIN) {; 1997 by Benno Schmid
  z=real(pixel)+flip(real(p1))
  c=imag(pixel)+flip(imag(p1)):
  z=z*sqr(z)+c
  |z| <= 16
  ;SOURCE: 4d.frm
}


z3-yw (ORIGIN) {; 1997 by Benno Schmid
  z=real(p1)+flip(real(pixel))
  c=imag(p1)+flip(imag(pixel)):
  z=z*sqr(z)+c
  |z| <= 16
  ;SOURCE: 4d.frm
}


z3-yz (XYAXIS_NOPARM) {; 1997 by Benno Schmid
  z=flip(real(pixel))+real(p1)
  c=imag(pixel)+flip(imag(p1)):
  z=z*sqr(z)+c
  |z| <= 16
  ;SOURCE: 4d.frm
}


z3-zw (XYAXIS_NOPARM) {; 1997 by Benno Schmid  
                       ; Mandelbrot
                       ; calculates perturbed sets correctly
  z=p1
  c=pixel:
  z=z*sqr(z)+c
  |z| <= 16
  ;SOURCE: 4d.frm
}


z4-xw (origin) {; 1997 by Benno Schmid
  z=real(pixel)+flip(real(p1))
  c=flip(imag(pixel))+imag(p1):
  z=sqr(sqr(z))+c
  |z| <= 32
  ;SOURCE: 4d.frm
}


z4-xz (YAXIS_NOPARM) {; 1997 by Benno Schmid
  z=real(pixel)+flip(real(p1))
  c=imag(pixel)+flip(imag(p1)):
  z=sqr(sqr(z))+c
  |z| <= 32
  ;SOURCE: 4d.frm
}


z4-yw (origin) {; 1997 by Benno Schmid
  z=real(p1)+flip(real(pixel))
  c=imag(p1)+flip(imag(pixel)):
  z=sqr(sqr(z))+c
  |z| <= 32
  ;SOURCE: 4d.frm
}


z4-yz (YAXIS_NOPARM) {; 1997 by Benno Schmid
  z=real(p1)+flip(real(pixel))
  c=imag(pixel)+flip(imag(p1)):
  z=sqr(sqr(z))+c
  |z| <= 32
  ;SOURCE: 4d.frm
}


z4-zw (XAXIS_NOPARM) {; 1997 by Benno Schmid  
                      ; Mandelbrot
                      ; calculates perturbed sets correctly
  z=p1, c=pixel:
  z=sqr(sqr(z))+c
  |z| <= 16
  ;SOURCE: 4d.frm
}


z^3-1=0 (XAXIS) {; Advanced Fractal Programming in C  - Stevens
   ; Run with inside = ZMAG to turn off periodicity checking
  x=real(pixel), y=imag(pixel):
  x2 = x*x, y2 = y*y
  xold = x, yold = y, xmy = x2 - y2
  d = 3 * (xmy * xmy + 4*x2*y2)
  x = .66666667*x + xmy/d, y = .66666667*y - 2*x*y/d
  x != xold && y != yold
  ;SOURCE: hughes.frm
}


z^3-2z-5=0 (XAXIS) {; Advanced Fractal Programming in C  - Stevens
                    ; --- SLOW on a 486-33 ---  Run with inside = ZMAG
  x=real(pixel), y=imag(pixel):
  x2 = x*x, y2 = y*y, xold = x, yold = y
  t2 = 3*x2 - 3*y2 -2, d = t2*t2 + 36*x2*y2
  t1 = x*x2 - 3*x*y2 - 2*x -5, t3 = 3*x2*y - y2*y - 2*y
  x = x - (t1 * t2 - 6*x*y*t3)/d
  y = y - (t1 * (-6*x*y) + t3 * t2)/d
  x != xold && y != yold
  ;SOURCE: hughes.frm
}


Z_feigen (XAXIS) {; from the Zexpi with Feigenbaum's # 
  z = Pixel:
  z = z ^ 4.669201609102990671853 + pixel
  |z| <= 100
  ;SOURCE: fract182.frm
}


Z_feigena (XAXIS) {; from the Zexpi with Feigenbaum's Alpha 
  z = Pixel:
  z = z ^ 2.502907875095 + pixel
  |z| <= 100
  ;SOURCE: fract182.frm
}


Z_mt1 (XAXIS) {; Revised for Fractint v20 by G. Martin
  z = pixel:
  z = z ^ 2 + pixel
  |z| <= 100
  ;SOURCE: fract182.frm
}


Z_mt2 (XAXIS) {; Revised for Fractint v20 by G. Martin 
  z = pixel:
  z = z ^ 3 + pixel
  |z| <= 100
  ;SOURCE: fract182.frm
}


ZAAR_1 (XAXIS) {
  z = 0:
  z = fn1((c-z) * sin(z)) -z + (z+c/2)
  z = pixel + z + p1
  ;SOURCE: damion.frm
}


ZAAR_2 {
  z = 0:
  z = sin((z + pixel) - c/3)
  z = p1 + (z + z) 
  z = pixel + z
  ;SOURCE: damion.frm
}


ZAAR_3 (XAXIS) {
  z = 0:
  z = fn1(z + z * z ) + p1
  z = (z * z) / (z + c) 
  z = pixel + z
  ;SOURCE: damion.frm
}


ZAAR_4 {
  z = sqrt(2):
  z = (z*z+c) / z
  z = fn1(z) + pixel
  |z| <= 64
  ;SOURCE: damion.frm
}


Zack (XAXIS) {; Edited for Fractint v. 20 by George Martin, 10/98 
  z = pixel
  r = rand:
  z = (fn1(pixel) + sin(z)) / (sqr(z)) 
  |z| <= 42
  ;SOURCE: hubert.frm
}


zapfl2 (XAXIS) {
  z=pixel: 
  z=(z*z+pixel)/z
  ;SOURCE: ratz.frm
}


zapfl2j (XAXIS) {
  z=pixel: 
  z=(z*z+p2)/z
  ;SOURCE: ratz.frm
}


zapfl3 (XAXIS) {
  z=pixel: 
  z=(pixel+z*z*z)/(z*z)
  |z|<=100
  ;SOURCE: ratz.frm
}


zapfl3jp1 {
  z=pixel: 
  z=(z*z*z+p1)/(z*z)
  ;SOURCE: ratz.frm
}


zapfl4p12 {
  z=pixel: 
  z=(z*z*z*z+(pixel*p1))/(z*z*z*p2)
  |z|<=4
  ;SOURCE: ratz.frm
}


zappa-1 {; by Miguel Fliguer 
  z=c=pixel:
  x=z*pixel+c
  y=c*pixel+z
  IF ( |x| > |y| )
    z = fn1(x)-fn2(y)
  ELSE
    z = fn1(fn2(x-y))
  ENDIF
  |z|<4
  ;SOURCE: 99msg.frm
}


Ze2 (XAXIS) {
  s1 = exp(1.,0.)
  s = s1 * s1
  z = Pixel:
  z = z ^ s + pixel 
  |z| <= 100
  ;SOURCE: skinner.frm
}


ZeePi {; Ron Barnett, 1993
       ; This Julia function is based upon Ramanujan's iterative
       ; function for calculating pi
  z = pixel:
  x = (1-z^p1)^(1/p1)
  z = z*(1-x)/(1+x) + p2
  |z| <= 4
  ;SOURCE: fractint.frm
}


Zentura (XAXIS) {
  z = pixel, s2 = sqrt(2):
  z = z + p1
  z = (sqrt(z)/s2) * z
  z = z * fn1(z) + pixel
  |z| < 4
  ;SOURCE: altura.frm
}


Zeppo {; Mutation of 'Liar4'.
    ; Original formula by Chuck Ebbert [76306,1226]
    ; Modified for if..else logic 3/19/97 by Sylvie Gallet
    ; For 'Liar4' set FN1 & FN2 =IDENT and P1 & P2 = default
    ; p1 & p2 = Parameters (default 1,0 and 0,0)
   z = pixel
    ; The next line sets p=default if p1=0, else p=p1
   IF (real(p1) || imag(p1))
      p = p1
   ELSE
      p = 1
   ENDIF
   :
   z = fn1(1-abs(imag(z)*p-real(z))) +          \
       flip(fn2(1-abs(1-real(z)-imag(z)))) - p2
   |z| <= 1
  ;SOURCE: fract196.frm
}


zeta {; Riemann Zeta function approximation.
      ; p1 Julia parameter. real(p3) bailout.
  r=real(p3)
  IF (r<=0)
    r=10000
  ENDIF
  z=pixel, c=p1:
  IF(real(z)<=-1)
    z=2^(z + 1/2)*exp(z - 1)*3.14159265359^(z - 1/2)        \
        *(-(139/(51840*(1 - z)^3)) - 571/(2488320*(1 - z)^4)\
        + 1/(288*(1 - z)^2)                                 \ 
        + 1 + 1/(12*(1 - z)))*(1/3*2^(-(3*(1 - z))          \ 
        - 5)*5^(z - 2)*(1 - z) +2^(z - 1) + 3^(z - 1)       \
        + 4^(z - 1) +2^(-(3*(1 - z)) - 1)*5^(z - 1)         \ 
        + 5^(z - 1) +6^(z - 1) + 7^(z - 1) + 8^(z - 1)      \ 
        + 9^(z - 1) +10^(z - 1) + 11^(z - 1) + 12^(z - 1)   \ 
        + 13^(z - 1) +14^(z - 1) + 15^(z - 1) + 16^(z - 1)  \
        + 17^(z - 1) +18^(z - 1) + 19^(z - 1) + 20^(z - 1)  \
        + 21^(z - 1) +22^(z - 1) + 23^(z - 1) + 24^(z - 1)  \
        + 25^(z - 1) +26^(z - 1) + 27^(z - 1) + 28^(z - 1)  \
        + 29^(z - 1) +30^(z - 1) + 31^(z - 1) + 32^(z - 1)  \
        + 33^(z - 1) +34^(z - 1) + 35^(z - 1) + 36^(z - 1)  \
        + 37^(z - 1) +38^(z - 1) + 39^(z - 1)               \
        - 40^z/z + 1)*(1 - z)^(1/2 - z)*sin((3.14159265359*z)/2)
  ELSE
    z=1/3*2^(-(3*z) - 5)*5^(-z - 1)*z + 2^(-z) + 3^(-z)     \
        + 4^(-z) + 5^(-z) + 6^(-z) + 7^(-z) + 8^(-z)        \
        + 9^(-z) +10^(-z) + 11^(-z) + 12^(-z) + 13^(-z)     \
        + 14^(-z) +15^(-z) + 16^(-z) + 17^(-z) + 18^(-z)    \
        + 19^(-z) +20^(-z) + 21^(-z) + 22^(-z) + 23^(-z)    \
        + 24^(-z) +25^(-z) + 26^(-z) + 27^(-z) + 28^(-z)    \
        + 29^(-z) +30^(-z) + 31^(-z) + 32^(-z) + 33^(-z)    \
        + 34^(-z) +35^(-z) + 36^(-z) + 37^(-z) + 38^(-z)    \
        + 39^(-z) +2^(-(3*z) - 1)/5^z + 40^(1 - z)/(z - 1) + 1 
  ENDIF
  z=z+c
  |z|<r
  ;SOURCE: 98msg.frm
}


Zexp2 (XAXIS) {; from ImageLab
               ; use floating point with this one ?!
  z=pixel:
  z=z^1.414213562373 + pixel
  |z| <= 4
  ;SOURCE: fractin2.frm
}


Zexpe (XAXIS) {
  s = exp(1.,0.), z = Pixel:
  z = z ^ s + pixel
  |z| <= 100
  ;SOURCE: fractint.frm
}


Zexpe&pi (XAXIS) {; Zexpe with (e + Pi)
  z = Pixel:
  z = z ^ 5.859874482049 + pixel
  |z| <= 100
  ;SOURCE: fract182.frm
}


Zexpe2 (XAXIS) {
  s = exp(1.,0.), z = Pixel:
  z = z ^ s + z ^ (s * pixel)
  |z| <= 100
  ;SOURCE: skinner.frm
}


Zexpe_mandel (XAXIS) { 
  z = Pixel:
  z = z ^ 2 + pixel
  |z| <= 100 
  ;SOURCE: formulas.frm
}


ZexpeJulia (XAXIS) {
  s = exp(1.,0.) 
  z = Pixel:
  z = (z ^ s) + P1 
  |z| <= 100
  ;SOURCE: skinv151.frm
}


Zexpi (XAXIS) {; from the Waite Group Image Lab Zexpe with Pi insteadof e
  z = Pixel:
  z = z ^ 3.14159265359 + pixel
  |z| <= 100
  ;SOURCE: fract182.frm
}


Zexpp (XAXIS) {
  s = (3.1415926535,0.) 
  z = Pixel:
  z = z ^ s + pixel 
  |z| <= 100
  ;SOURCE: crocker.frm
}


Zexprt2 (XAXIS) {; MT idea: Zexpe with square root of two insteadof e
  z = Pixel:
  z = z ^ 1.414213562373 + pixel
  |z| <= 100
  ;SOURCE: fract182.frm
}


Zexprt2jul (XAXIS) {; Julia form of Zexprt2
  z = pixel:
  z = z ^ 1.414213562373 + P1
  |z| <= 100
  ;SOURCE: fract182.frm
}


Zexprt3 (XAXIS) { 
  z = pixel:
  z = z ^ 1.732050807569 + pixel
  |z| <= 100
  ;SOURCE: fract182.frm
}


ZExpZ (xaxis) {; Jm Collard-Richard z=exp(z) z=(0.318..;+/- 1.337)
  z=pixel:
  z0=exp(z)
  z1=z0-z
  z2=z0-1
  z=z-(z1/z2)
  0.0001<=|z1| 
  ;SOURCE: jmcr2.frm
}


Zf_Ang {; Copyright (c) Paul W. Carlson, 1998
    ; p1       = Julia set coordinates
    ; real(p2) = controls size of the elements
    ; imag(p2) = number of iterations to skip
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
  z = k = iter = range_num = bailout = 0
  w = pixel
  c = p1
  prev_modw2 = 1.0e20
  size = real(p2)
  skip_iters = imag(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  factor = (colors_in_range - 1) / size
  :
  w = c * (w - 1 / w)
  a = 2 * atan(imag(w) / real(w))
  a = a * a + c
  a = fn1(1 - a) / a
    ;
  dist = abs(|w| - |a|)
  IF (dist < size)
    bailout = 1
    IF (iter > skip_iters)
      k = 1
    ENDIF
    z = (factor * dist + range_num * colors_in_range + 1) * k
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < 1.0e20
  ;SOURCE: 98msg.frm
}


zigzag2_J {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=-0.63241, b0=-0.61481, c0=-0.54537, d0=0.65926
  a1=-0.03611, b1=0.44444, c1=0.21019, d1=0.03704
  al0=-0.75222, k0=-3.32049, l0=-1.28372
  al1=-0.09475, k1=3.62576, l1=0.73613
  z=pixel:
  x=real(z)
  y=imag(z)
  o0=(d0*x-b0*y+k0)/al0+flip((-c0*x+a0*y+l0)/al0)
  op0=|o0-p2|
  o1=(d1*x-b1*y+k1)/al1+flip((-c1*x+a1*y+l1)/al1)
  op1=|o1-p2|
  IF (op0<=op1)
    z=o0
  ELSE
    z=o1
  ENDIF
  |z|<=p1
  ;SOURCE: ifsinv.frm
}


zigzag2_M {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=-0.63241, b0=-0.61481, c0=-0.54537, d0=0.65926
  a1=-0.03611, b1=0.44444, c1=0.21019, d1=0.03704
  al0=-0.75222, k0=-3.32049, l0=-1.28372
  al1=-0.09475, k1=3.62576, l1=0.73613
  z=pixel:
  x=real(z)
  y=imag(z)
  o0=(d0*x-b0*y+k0)/al0+flip((-c0*x+a0*y+l0)/al0)
  op0=|o0-pixel|
  o1=(d1*x-b1*y+k1)/al1+flip((-c1*x+a1*y+l1)/al1)
  op1=|o1-pixel|
  IF (op0<=op1)
    z=o0
  ELSE
    z=o1
  ENDIF
  |z|<=p1
  ;SOURCE: ifsinv.frm
}


Zing {; Edited for Fractint v. 20 by George Martin, 10/98
  z = pixel
  log2 = 2 ^ (pixel*z):
  z = cosh(z+pixel)
  z = z + log2 
  |z|<= 42
  ;SOURCE: hubert.frm
}


zmincosz (XAXIS) {
  z = pixel:
  fz = z - cos(z)
  fdashz = 1 + sin(z)
  z = z - fz/(fdashz + P1)
  0.0001 <= |fz|
  ;SOURCE: davfav1.frm
}


zmincoszb {; David Walter
  z =c= pixel:
  z10=z*z+c
  fz = z - cos(z10)
  fdashz = 1 + sin(z)
  z = z - fz/(fdashz + P1)
  0.0001 <= |fz|
  ;SOURCE: sg-bc-bj.frm
}


zn-xw {; 1997 by Benno Schmid
  z=real(pixel)+flip(real(p1))
  c=flip(imag(pixel))+imag(p1):
  z=z^p2+c
  |z| <= 16
  ;SOURCE: 4d.frm
}


zn-xy {; 1997 by Benno Schmid 
  z=pixel, c=p1:
  z=z^p2+c
  |z| <= 16
  ;SOURCE: 4d.frm
}


zn-xz {; 1997 by Benno Schmid
  z=real(pixel)+flip(real(p1))
  c=imag(pixel)+flip(imag(p1)):
  z=z^p2+c
  |z| <= 16
  ;SOURCE: 4d.frm
}


zn-yw {; 1997 by Benno Schmid
  z=flip(real(pixel))+real(p1)
  c=flip(imag(pixel))+imag(p1):
  z=z^p2+c
  |z| <= 16
  ;SOURCE: 4d.frm
}


zn-yz {; 1997 by Benno Schmid
  z=flip(real(pixel))+real(p1)
  c=imag(pixel)+flip(imag(p1)):
  z=z^p2+c
  |z| <= 16
  ;SOURCE: 4d.frm
}


zn-zw {; 1997 by Benno Schmid 
  z=p1
  c=pixel:
  z=z^p2+c
  |z| <= 16
  ;SOURCE: 4d.frm
}


zpj (YAXIS) {; I post this one some months ago.. use p1=.9/-.87
             ; Edited for Fractint v. 20 by George Martin, 10/98
  z=pixel:
  k=real(z)
  IF (k<0)
    z=z*p1-1
  ELSE
    z=z*conj(p1)+1
  ENDIF
  |z|<=100
  ;SOURCE: esc-ifs.frm
}


Zppchco8 {
  z = pixel, f = cosxx (pixel):
  z = cosh (z) + f
  |z|<=8192
  ;SOURCE: skinner.frm
}


Zurreal { 
  z = pixel:
  z = fn1(z) + pixel
  z = fn2(1/sqr(z))/z + p1 
  |z| <= 4
  ;SOURCE: surreal.frm
}


zwiebelp1 (ORIGIN) {
  z=pixel: 
  z=(z/imag(z)+p1*z*real(z))*conj(z)+pixel
  |z|<=4
  ;SOURCE: fkt.frm
}


zwjebelp1c {
  z=pixel: 
  z=(z/imag(z)+p1*z*real(z))*conj(z)+p2
  |z|<=4
  ;SOURCE: fkt.frm
}


ZWplane {; Jim Muth
  z=pixel, c=p1:
  z=sqr(z)+c
  |z| <=36
  ;SOURCE: 97msg.frm
}


ZWplane-N {; Jim Muth
  z=pixel, c=p1:
  z=(-z)^p2+c
  |z| <= 36
  ;SOURCE: 97msg.frm
}


zx2 {
  z=pixel, f=(fn1(z)+fn2(p1*z))
  b1=abs(real(p2)), x=fn3(b1+whitesq):
  z1=fn4(f+(sin(x*tan(z))))
  z2=fn1(z+whitesq)-(p2*(f+cos(z)))
  z=fn4(z2+(sin(z1)))
  |z|<4
  ;SOURCE: ad5.frm
}


zx3 {
  z=pixel, f=(fn1(z)+whitesq)+(fn2(p1*z))
  b1=conj(imag(p2)), x=fn3(b1):
  z1=fn4(f+(sin(x*tan(z))))
  z2=fn1(z+whitesq)-(p2*(f+cos(z)))
  z=fn4(z2+(fn4(z1)))
  |z|<4
  ;SOURCE: ad5.frm
}


zx6 {
  z=pixel, f=(fn1(1-z)*1/fn2(p1*z))
  b1=sqr(z*(p2)), x=fn3(b1+whitesq):
  z1=fn4(z*(sin(x*tan(z))))
  z2=fn1(z+whitesq)-(p2*(f+cos(z)))
  z=fn4(z2*(1/sin(b1)))
  |z|<4
  ;SOURCE: ad5.frm
}


ZZ (XAXIS) {; Prof Jm using Newton-Raphson method
            ; use floating point with this one
  z=pixel, solution=1:
  z1=z^z
  z2=(log(z)+1)*z1
  z=z-(z1-1)/z2
  0.001 <= |solution-z1|
  ;SOURCE: fractint.frm
}


zz2 (XAXIS) {
   ; Try the inversion again
  z = zp1 = pixel, zp2 = (0,0):
  temp = z
  z = z^zp2 - zp1
  zp2 = zp1
  zp1 = 1/temp
  |zp1| <= 4
  ;SOURCE: noel.frm
}


ZZa (XAXIS) {; Prof Jm using Newton-Raphson method
             ; use floating point with this one
  z=pixel, solution=1:
  z1=z^(z-1)
  z2=(((z-1)/z)+log(z))*z1
  z=z-((z1-1)/z2)
  .001 <= |solution-z1|
  ;SOURCE: fractint.frm
}


ZZINVCHZ (Xaxis) {; Jm Collard-Richard   - Use Float=Yes
                  ; Resol : z^z=1/cosh(z)
  z=pixel:
  ch=cosh(z)
  sh=sinh(z)
  zz=z^z
  z1=zz-(1/ch)
  z2=(log(z)+1)*zz+(sh/(ch*ch))
  z=z-(z1/z2)
  0.001<=|z1|  
  ;SOURCE: jmcr2.frm
}


ZZINVCZ (Xaxis) {; Jm Collard-Richard    -  Use  Float=Yes
                 ; Resol :   z^z=1/cos(z)
  z=pixel:
  c=cos(z)
  s=sin(z)
  zz=z^z
  z1=zz-(1/c)
  z2=(log(z)+1)*zz-(s/(c*c))
  z=z-(z1/z2)
  0.001<=|z1|  
  ;SOURCE: jmcr2.frm
}


zzmu-julia-bio { ; Kerry Mitchell 22sep98
        ;
        ; p1 = mu = julia parameter
        ; real(p2) = bailout
        ; imag(p2) = coloring speed
        ;
  z=pixel, mu=p1, r=real(p2), r2=|r|
  iter=1, scale=imag(p2), done=0:
  iter=iter+1, z=z^z+mu
  IF (|z|>r2)
    t=scale*iter
    IF (cabs(real(z))<r)
      t=0
    ENDIF
    IF (cabs(imag(z))<r)
      t=0
    ENDIF
    z=cos(t)+flip(sin(t))
    done=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


zzz (XAXIS) {
   ; Same as XXX but introduce a new dynamic by inverting a previous term
   ; A small but curious active region. Try 256 colour decomp.
  z = zp1 = pixel, zp2 = (0,0):
  temp = z
  z = z^zp1 - zp2
  zp2 = zp1
  zp1 = 1/temp 
  |zp1| <= 4
  ;SOURCE: noel.frm
}


ZZZZ1 (xaxis) {; Jm Collard-Richard      -- Use Float=Yes
               ; Resol : z^z=z^(z+1)+1
  z=pixel:
  l=log(z)
  zz=z^z
  zz1=z^(z+1)
  z1=zz-zz1-1
  z2=(l+1)*zz-(l+(z+1/z))*zz1
  z=z-(z1/z2)
  0.001<=|z1|   
  ;SOURCE: jmcr2.frm
}

