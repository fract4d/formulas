

m+j+n {; Sylvie Gallet [101324,3444], 1997
       ; Modified for IF..ELSE logic by Sylvie Gallet, March 1997
   p0 = p3 - 1, iter = wait = 0
   z = cm = pixel * exp(-flip(imag(p1)) * 0.01745329252) / abs(real(p1))
   odev = continue = 1 :
   IF (iter < 300)
      IF (wait == 0)
         z = z*z + cm, odev = odev == wait
         wait = |z| >= 16
      ENDIF
   ELSEIF (iter == 300)
      IF (wait == 0)
         odev = 1
      ENDIF
      z = pixel
   ELSE
      IF (odev)
         zp0 = z^p0, d = zp0 * p3, n = zp0 * z - 1
         z = -n/d + z, continue = |n| > 0.000001
      ELSE
         z = z*z + p2, continue = |z| < 16
      ENDIF
   ENDIF
   iter = iter + 1
   continue
  ;SOURCE: ifs196.frm
}


m+j+n_2 {; Sylvie Gallet [101324,3444], 1997
         ; Modified for IF..ELSE logic by Sylvie Gallet, March 1997
   p0 = p3 - 1, odev = iter = wait = 0
   z = cm = pixel * exp(-flip(imag(p1)) * 0.01745329252) / abs(real(p1))
   continue = 1 :
   IF (iter < 300)
      IF (wait == 0)
         z = z*z + cm, odev = odev == wait
         wait = |z| >= 16
      ENDIF
   ELSEIF (iter == 300)
      IF (wait == 0)
         odev = 0
      ENDIF
      z = pixel
   ELSE
      IF (odev)
         zp0 = z^p0, d = zp0 * p3, n = zp0 * z - 1
         z = -n/d + z, continue = |n| > 0.000001
      ELSE
         z = z*z + p2, continue = |z| < 16
      ENDIF
   ENDIF
   iter = iter + 1
   continue
  ;SOURCE: ifs196.frm
}


m+j+n_2+if {; Sylvie Gallet [101324,3444], 1996
  p0 = p3 - 1, odd = iter = wait = 0
  z = cm = pixel * exp(-flip(imag(p1)) * 0.01745329252) / abs(real(p1)) 
  :
  odd = odd == wait
  IF (iter < 300)
    IF (wait == 0)
      z = z*z + cm
    ENDIF 
    bailout = |z| <= 16
    IF (bailout == 0)
      z = 0, wait = 1, bailout = 1
    ENDIF 
  ELSE 
    IF (iter == 300)
      IF (wait == 0)
        odd = 0, wait = 1
      ENDIF 
      z = pixel, bailout = 1
    ELSE 
      IF (odd)
        zp0 = z^p0, d = zp0 * p3, n = zp0 * z - 1
        z = (-n/d+z), bailout = |n| > 0.000001
      ELSE 
        z = z*z+p2, bailout = |z| < 16
      ENDIF 
    ENDIF 
  ENDIF 
  iter = iter + 1
  bailout
  ;SOURCE: 97msg.frm
}


m+j+n_3  {; Sylvie Gallet [101324,3444], 1996
    ; real(p1) = size of the Mandelbrot set
    ; imag(p1) = rotation angle (degrees): negative = clockwise
    ; p2 = parameter for the Julia set
    ; p3 = exponent for the Newton set
  limit = trunc(maxit/2)*(maxit<600) + 300*(maxit>=600)
  p0 = p3 - 1 , odev = iter = tj = tn = tw = 0 , tm = 1
  z = cm = pixel * exp(-flip(imag(p1)) * 0.01745329252) / abs(real(p1)):
  tw = tw || (|z| >= 16) || (iter == limit)
  z = (z*z+cm) * (tw == 0) + z * tw
  z = z * (iter != limit) + pixel * (iter == limit)
  zp0 = z^p0 , d = zp0 * p3 , n = zp0 * z - 1
  z = (-n/d+z) * tn + z * tm + (z*z+p2) * tj
  iter = iter + 1 , odev = (odev == tw)
  tj = (odev == 0) && (iter > limit)
  tn = odev && (iter > limit)
  tm = (iter <= limit)
  tm || ((|z| < 16) && tj) || ((|n| > 0.000001) && tn)
  ;SOURCE: test.frm
}


M-J-rotation {; Jim Muth
   ; p1=power of Z,  p2=rotation point,  p3=rotation angle
  z=pixel, c=p2+(p3*pixel):
  z=z^p1-(1.1*z)+c
  |z| <=25
  ;SOURCE: 97msg.frm
}


M-O-rotation {; Jim Muth
   ; real(p1)=power of Z,  imag(p1)=angle of rotation
   ; p2=parallel planes,  p3=rotation point and parallel planes
  a=real(p1), b=imag(p1)+.0000000000001
  z=sin(b*.01745329251994)*real(pixel)+p2
  c=cos(b*.01745329251994)*real(pixel)+flip(imag(pixel))+p3:
  z=z^a-(1.1*z)+c
  |z| <=25
  ;SOURCE: 97msg.frm
}


M-P-rotation {; Jim Muth
   ; real(p1)=power of Z,  imag(p1)=angle of rotation
   ; p2=parallel planes,  p3=rotation point and parallel planes
  a=real(p1), b=imag(p1)+.0000000000001
  z=sin(b*.01745329251994)*imag(pixel)+p2
  c=cos(b*.01745329251994)*flip(imag(pixel))+real(pixel)+p3:
  z=z^a-(1.1*z)+c
  |z| <=25
  ;SOURCE: 97msg.frm
}


M-R-rotation {; Jim Muth
   ; real(p1)=power of Z,  imag(p1)=angle of rotation
   ; p2 and p3=rotation point and parallel planes
  a=real(p1), b=imag(p1)+.0000000000001
  z=sin(b*.01745329251994)*flip(real(pixel))+p2
  c=cos(b*.01745329251994)*real(pixel)+flip(imag(pixel))+p3:
  z=z^a-(1.1*z)+c
  |z| <=25
  ;SOURCE: 97msg.frm
}


M-SetInNewton(XAXIS) {; use float=yes
                      ; jon horner 100112,1700, 12 feb 93
  z = 0, c = pixel, cminusone = c-1:
  oldz = z, nm = 3*c-2*z*cminusone, dn = 3*(3*z*z+cminusone)
  z = nm/dn+2*z/3
  |(z-oldz)|>=|0.01|
  ;SOURCE: fractint.frm
}


m1 {
  z=0, c=pixel:
  z=sqr(z)+c
  c=c+p1
  |z| <= 4
  ;SOURCE: explode.frm
}


M3_Maxi (XYAXIS) {; A Mix on the basis of z^3+c.
  z = a = pixel
  IF(p1==0)
    bailout=8
  ELSE
    bailout = |p1|
  ENDIF
  b = (-.5,.8660125403784) * pixel
  c = (-.5,-.8660125403784) * pixel:
  qz = sqr(z) * z
  u = qz + a
  v = qz + b
  w = qz + c
  au = |u|
  av = |v|
  aw = |w|
  IF(au>av)
    IF(au>aw)
      z = u
    ELSE
      z = w
    ENDIF
  ELSEIF(av>aw)
    z = v
  ELSE
    z = w
  ENDIF
  |z| <= bailout
  ;SOURCE: 97msg.frm
}


M3_Mini (XYAXIS) {; A Mix on the basis of z^3+c.
                  ; May be quite slow on some machines!
  z = a = pixel
  IF(p1==0)
    bailout=8
  ELSE
    bailout = |p1|
  ENDIF
  b = (-.5,.8660125403784) * pixel
  c = (-.5,-.8660125403784) * pixel:
  qz = sqr(z) * z
  u = qz + a
  v = qz + b
  w = qz + c
  au = |u|
  av = |v|
  aw = |w|
  IF(au<av)
    IF(au<aw)
      z = u
    ELSE
      z = w
    ENDIF
  ELSEIF(av<aw)
    z = v
  ELSE
    z = w
  ENDIF
  |z| <= bailout
  ;SOURCE: 97msg.frm
}


m4 {
  z=1-pixel^2:
  z=((fn1(flip(z)*z))+(fn2(sqr(z)*z)))+p1
  |z|>=4
  ;SOURCE: ad4.frm
}


m_juleye {
  z = pixel, c = (-0.7910322074096 , -0.1502158760371):
  z = z*z + c
  |z| < 4
  ;SOURCE: 99msg.frm
}


M_Lagandre2 {
  c = P1, z = Pixel:
  z = (3 * z*z - 1) / 2 + c
  |z| < 100
  ;SOURCE: fractint.frm
}


M_Lagandre3 {
  c = P1, z = Pixel:
  z = z * (5 * z*z - 3) / 2 + c
  |z| < 100
  ;SOURCE: tchebych.frm
}


M_Lagandre4 {
  c = P1, z = Pixel:
  z = (z*z*(35 * z*z - 30) + 3) / 8 + c
  |z| < 100
  ;SOURCE: tchebych.frm
}


M_Lagandre5 {
  c = P1, z = Pixel:
  z = z* (z*z*(63 * z*z - 70) + 15 ) / 8 + c
  |z| < 100
  ;SOURCE: tchebych.frm
}


M_Lagandre6 {
  c = P1, z = Pixel:
  z = (z*z*(z*z*(231 * z*z - 315)  + 105 ) - 5) / 16 + c
  |z| < 100
  ;SOURCE: fractint.frm
}


M_Lagandre7 {
  c = P1, z = Pixel:
  z = z* (z*z*(z*z*(429 * z*z - 693) + 315) - 35 ) / 16 + c
  |z| < 100
  ;SOURCE: tchebych.frm
}


M_Laguenew2 (XAXIS) {
  z = p1, c = pixel :
  z = (z*(z - 4) +2 ) / 2 + c
  |z| <=p2
  ;SOURCE: newtchb2.frm
}


M_Laguenew3 (XAXIS) {
  z = p1, c = pixel :
  z = (z*(z*(-z + 9) -18) + 6 ) / 6 + c
  |z| <=100
  ;SOURCE: newtchb2.frm
}


M_Laguenew4 (XAXIS) {; float=yes
  z = p1, c = pixel :
  z = (z * ( z * ( z * ( z - 16)+ 72) - 96)+ 24 ) / 24 + c
  |z| <=100
  ;SOURCE: newtchb2.frm
}


M_Laguenew5(XAXIS) {; float=yes
  z = p1, c = pixel :
  z=(z*(z*(z*(z*(-z+25)-200)+600)-600)+120) / 120 + c
  |z| <=100
  ;SOURCE: newtchb2.frm
}


M_Laguenew6 (XAXIS) {; float=yes
  z = p1, c = pixel :
  z=(z*(z*(z*(z*(z*(z-36)+450)-2400)+5400)-4320)+720) / 720 + c
  |z| <=100
  ;SOURCE: newtchb2.frm
}


M_Laguerre2 {
  c = P1, z = Pixel:
  z = (z*(z - 4) +2 ) / 2 + c
  |z| < 100
  ;SOURCE: tchebych.frm
}


M_Laguerre3 {
  c = P1, z = Pixel:
  z = (z*(z*(-z + 9) -18) + 6 ) / 6 + c
  |z| < 100
  ;SOURCE: tchebych.frm
}


M_Laguerre4 {
  c = P1, z = Pixel:
  z = (z * ( z * ( z * ( z - 16)+ 72) - 96)+ 24 ) / 24 + c
  |z| < 100
  ;SOURCE: tchebych.frm
}


M_Laguerre5 {
  c = P1, z = Pixel:
  z=(z*(z*(z*(z*(-z+25)-200)+600)-600)+120)/120+c
  |z| < 100
  ;SOURCE: tchebych.frm
}


M_Laguerre6 {
  c = P1, z = Pixel:
  z=(z*(z*(z*(z*(z*(z-36)+450)-2400)+5400)-4320)+720)/ 720 + c
  |z| < 100
  ;SOURCE: tchebych.frm
}


M_Legendre2 (XAXIS) {
  z = p1, c = pixel :
  z = (3 * z*z - 1) / 2 + c
  |z| <=100
  ;SOURCE: newtcheb.frm
}


M_Legendre3 (XAXIS) {
  z = p1, c = pixel :
  z = z * (5 * z*z - 3) / 2 + c
  |z| <=100
  ;SOURCE: newtcheb.frm
}


M_Legendre4 (XAXIS) {
  z = p1, c = pixel :
  z = (z*z*(35 * z*z - 30) + 3) / 8 + c
  |z| <=100
  ;SOURCE: newtcheb.frm
}


M_Legendre5 (XAXIS) {
  z = p1, c = pixel :
  z = z* (z*z*(63 * z*z - 70) + 15 ) / 8 + c
  |z| <=100
  ;SOURCE: newtcheb.frm
}


M_Legendre6 (XAXIS) {; float=yes
  z = p1, c = pixel :
  z = (z*z*(z*z*(231 * z*z - 315)  + 105 ) - 5) / 16 + c
  |z| <=100
  ;SOURCE: newtcheb.frm
}


M_Legendre7 (XAXIS) {; float=yes
  z = p1, c = pixel :
  z = z* (z*z*(z*z*(429 * z*z - 693) + 315) - 35 ) / 16 + c
  |z| <=100
  ;SOURCE: newtcheb.frm
}


M_TchebychevC2 {
  c = P1, z = Pixel:
  z = c*(z*z-2)
  |z|<100
  ;SOURCE: tchebych.frm
}


M_TchebychevC3 {   
  c = P1, z = Pixel:
  z = c*z*(z*z-3)
  |z|<100
  ;SOURCE: tchebych.frm
}


M_TchebychevC4 {
  c = P1, z = Pixel:
  z = c*(z*z*(z*z-4)+2)
  |z|<100
  ;SOURCE: tchebych.frm
}


M_TchebychevC5 {
  c = P1, z = Pixel:
  z = c*z*(z*z*(z*z-5)+5)
  |z|<100
  ;SOURCE: fractint.frm
}


M_TchebychevC6 {
  c = P1, z = Pixel:
  z = c*(z*z*(z*z*(z*z-6)+9)-2)
  |z|<100
  ;SOURCE: tchebych.frm
}


M_TchebychevC7 {     
  c = P1, z = Pixel:
  z = c*z*(z*z*(z*z*(z*z-7)+14)-7)
  |z|<100
  ;SOURCE: tchebych.frm
}


M_TchebychevS2 {
  c = P1, z = Pixel:
  z = c*(z*z-1)
  |z|<100
  ;SOURCE: tchebych.frm
}


M_TchebychevS3 {
  c = P1, z = Pixel:
  z = c*z*(z*z-2)
  |z|<100
  ;SOURCE: fractint.frm
}


M_TchebychevS4 {
  c = P1, z = Pixel:
  z = c*(z*z*(z*z-3)+1)
  |z|<100
  ;SOURCE: tchebych.frm
}


M_TchebychevS5 {    
  c = P1, z = Pixel:
  z = c*z*(z*z*(z*z-4)+3)
  |z|<100
  ;SOURCE: tchebych.frm
}


M_TchebychevS6 {
  c = P1, z = Pixel:
  z = c*(z*z*(z*z*(z*z-5)+6)-1)
  |z|<100
  ;SOURCE: tchebych.frm
}


M_TchebychevS7 {     
  c = P1, z = Pixel:
  z = c*z*(z*z*(z*z*(z*z-6)+10)-4)
  |z|<100
  ;SOURCE: tchebych.frm
}


M_TchebychevT2 {
  c = P1, z = Pixel:
  z = c*(2*z*z-1)
  |z|<100
  ;SOURCE: tchebych.frm
}


M_TchebychevT3 {   
  c = P1, z = Pixel:
  z = c*z*(4*z*z-3)
  |z|<100
  ;SOURCE: tchebych.frm
}


M_TchebychevT4 {
  c = P1, z = Pixel:
  z = c*(z*z*(8*z*z+8)+1)
  |z|<100
  ;SOURCE: tchebych.frm
}


M_TchebychevT5 {
  c = P1, z = Pixel:
  z = c*(z*(z*z*(16*z*z-20)+5))
  |z|<100
  ;SOURCE: fractint.frm
}


M_TchebychevT6 {
  c = P1, z = Pixel:
  z = c*(z*z*(z*z*(32*z*z-48)+18)-1)
  |z|<100
  ;SOURCE: tchebych.frm
}


M_TchebychevT7 {     
  c = P1, z = Pixel:
  z = c*z*(z*z*(z*z*(64*z*z-112)+56)-7)
  |z|<100
  ;SOURCE: tchebych.frm
}


M_TchebychevU2 {
  c = P1, z = Pixel:
  z = c*(4*z*z-1)
  |z|<100
  ;SOURCE: tchebych.frm
}


M_TchebychevU3 {
  c = P1, z = Pixel:
  z = c*z*(8*z*z-4)
  |z|<100
  ;SOURCE: fractint.frm
}


M_TchebychevU4 {
  c = P1, z = Pixel:
  z = c*(z*z*(16*z*z-12)+1)
  |z|<100
  ;SOURCE: tchebych.frm
}


M_TchebychevU5 {    
  c = P1, z = Pixel:
  z = c*z*(z*z*(32*z*z-32)+6)
  |z|<100
  ;SOURCE: tchebych.frm
}


M_TchebychevU6 {
  c = P1, z = Pixel:
  z = c*(z*z*(z*z*(64*z*z-80)+24)-1)
  |z|<100
  ;SOURCE: tchebych.frm
}


M_TchebychevU7 {     
  c = P1, z = Pixel:
  z = c*z*(z*z*(z*z*(128*z*z-192)+80)-8)
  |z|<100
  ;SOURCE: tchebych.frm
}


M_TchebycnewC2 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z-2)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


M_TchebycnewC3 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(z*z-3)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


M_TchebycnewC4 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z*(z*z-4)+2)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


M_TchebycnewC5 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(z*z*(z*z-5)+5)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


M_TchebycnewC6 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z*(z*z*(z*z-6)+9)-2)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


M_TchebycnewC7 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(z*z*(z*z*(z*z-7)+14)-7)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


M_TchebycnewS2 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z-1)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


M_TchebycnewS3 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(z*z-2)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


M_TchebycnewS4 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z*(z*z-3)+1)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


M_TchebycnewS5 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(z*z*(z*z-4)+3)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


M_TchebycnewS6 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z*(z*z*(z*z-5)+6)-1)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


M_TchebycnewS7 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(z*z*(z*z*(z*z-6)+10)-4)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


M_TchebycnewT2 (XAXIS) {
  z = p1, c = pixel :
  z = c*(2*z*z-1)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


M_TchebycnewT3 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(4*z*z-3)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


M_TchebycnewT4 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z*(8*z*z+8)+1)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


M_TchebycnewT5 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*(z*(z*z*(16*z*z-20)+5))
  |z|<=100
  ;SOURCE: newtchb2.frm
}


M_TchebycnewT6 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z*(z*z*(32*z*z-48)+18)-1)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


M_TchebycnewT7 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel:
  z = c*z*(z*z*(z*z*(64*z*z-112)+56)-7)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


M_TchebycnewU2 (XAXIS) {
  z  =p1, c = pixel:
  z = c*(4*z*z-1)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


M_TchebycnewU3 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(8*z*z-4)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


M_TchebycnewU4 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z*(16*z*z-12)+1)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


M_TchebycnewU5 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(z*z*(32*z*z-32)+6)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


M_TchebycnewU6 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z*(z*z*(64*z*z-80)+24)-1)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


M_TchebycnewU7 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(z*z*(z*z*(128*z*z-192)+80)-8)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


maelstrom {; Giuseppe Zito
  z = pixel
  c1 = -0.524192
  c7 = -0.430757
  d0 = 0.222002
  d4 = 0.893133
  : 
  x = real(z), y = imag(z)
  s0 = y
  s1 =c1
  s0 = s0 *s1
  s0 = s0 -x
  s0 = s0 -c7
  newx = s0 
  s0 =d0
  s0 = s0 -x
  s0 = s0 -d4
  s0 = s0 *y
  s0 = s0 +x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


Mag1_J2 {; Copyright (c) Paul W. Carlson, 1998
    ; p1       = Julia set coordinates
    ; real(p2) = controls size of elements
    ; imag(p2)   not used
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
  z = iter = range_num = bailout = 0
  pw = pixel
  c = p1
  max_ratio = real(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  factor = (colors_in_range - 1) / max_ratio
  :
  w = ((pw * pw + c - 1) / (pw + pw + c - 2))^2
    ;
  ratio = |pw| / |w|
  pw = w
  IF (ratio < max_ratio && iter > 0)
    bailout = 1
    z = factor * ratio + range_num * colors_in_range + 1
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


magnet1j {; Chuck Ebbert.                          added 12 Jan 1993
          ; p1 = Parameter c
          ; real(p2) = bailout (default is 100)
  z = pixel, cm1 = p1 - 1, cm2 = cm1 - 1
  t = (100 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = sqr( (z*z+cm1 ) / (z+z+cm2 ) )
  |z-1| > .000030517578 && |z| <= t
  ;SOURCE: builtn2.frm
}


magnet1j_2 {
  z = pixel, c1 = p1-1, c2 = p1-2, bailout = real(p2)*real(p2) :
  oldz = z
  z = (z*z + c1) / (z+z + c2)
  z = z*z
  |z-oldz| >= bailout
  ;SOURCE: 96msg.frm
}


magnet1m {; Chuck Ebbert.
          ; P1 = initial perturbation of z(0).
          ; real(p2) = bailout (default is 100)
  z = p1, cm1 = pixel - 1, cm2 = cm1 - 1
  t = (100 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = sqr( (z*z+cm1 ) / (z+z+cm2 ) )
  |z-1| > .000030517578 && |z| <= t
  ;SOURCE: builtn.frm
}


magnet2j {; Chuck Ebbert.                       added 12 Jan 1993
          ; p1 = Parameter c
          ; real(p2) = bailout (default 100)
  z=pixel, c1=p1-1, c1x3=c1*3, c2x3=c1x3-3, c1c2=c1*c1-c1, c1c2p1=c1c2+1
  t = (100 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = sqr( ( (z*z+c1x3 )*z+c1c2 ) / ( (z*3+c2x3 )*z+c1c2p1 ) )
  |z-1| > .000030517578 && |z| <= t
  ;SOURCE: builtn2.frm
}


magnet2m {; Chuck Ebbert.
          ; P1 = initial perturbation of z(0).
          ; real(p2) = bailout (default 100)
  z=p1, c1=pixel-1, c1x3=c1*3, c2x3=c1x3-3, c1c2=c1*c1-c1, c1c2p1=c1c2+1
  t = (100 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = sqr( ( (z*z+c1x3 )*z+c1c2 ) / ( (z*3+c2x3 )*z+c1c2p1 ) )
  |z-1| > .000030517578 && |z| <= t
  ;SOURCE: builtn.frm
}


Magnetik { 
  z = pixel + p1:
  z = (z-1)*(z+0.5)*(z*z+1)
  z = (z*0.3) - ((z)/fn1(z)) 
  |z| < 4
  ;SOURCE: magnetik.frm
}


Magnetik_2 {
  z = pixel + p1:
  z = (z-1)*((z*z) + z + 1.25)
  z = (z*0.3) - ((z)/fn1(z)) 
  |z| < 4
  ;SOURCE: magnetik.frm
}


Magnetik_3 {
  z = pixel + p1:
  z = (z-1)*((z*z) + z + 0.05)
  z = (z*0.3) - ((z)/fn1(z)) 
  |z| < 4
  ;SOURCE: magnetik.frm
}


Magnetik_4 {
  z = pixel + p1:
  z = (z*z*z) - 1
  z = (z*0.3) - ((z)/fn1(z)) 
  |z| < 4
  ;SOURCE: magnetik.frm
}


Magnetik_5 {
  z = pixel:
  a = (z-1)*((z*z) + z + 1.25)
  b = (z-1)*(z+0.5)*((z*z)+1)
  z = z + ((a*z)/(a*z+(0.25*(-1))+(1-p1)*(b*z)/((b*z)-(0.5)*(-1))))
  |z| < 4
  ;SOURCE: magnetik.frm
}


man-jul-BJ6a {; Modified Sylvie Gallet [101324,3444], 1995
              ; requires "periodicity=0" (<g> command)
  z = pixel, c = z, z2 = z*z, z3 = z*z2
  compt=0, limit = real(p1), bailout = 4
  p = (-0.743380900000982,-0.131850030300002) :
  test = (compt<limit)
  num = (z3 + p2*z2 + 1)^.5      
  denom = (1.5*z2 + p2*z)/num  
  c = c*test+p*(1-test)
  z = fn1(z) - (num/denom)           
  z2 = z*z
  z3 = z*z2
  z = z*z+c
  compt = compt+1
  p3 <= |z3 + p2*z2 + 1|
  ;SOURCE: sg-bc-bj.frm
}


man-newt-man {; Sylvie Gallet [101324,3444], 1995 +R.B. 
              ; tiny mod on original Mandel-Newton by Sylvie 
              ; tweaked brainlessly by Robin Bussell 
              ; to give a hybrid mandel-newton fractal
  z = pixel, c = z, iter = 1, test1 = 1
  rad = 3.1, center = (1.0,0.1)
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn = center+rad/(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (1-test1), test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4)
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1)) 
  ;SOURCE: forummsg.frm
}


man-newt-man2 {; Sylvie Gallet [101324,3444], 1995 +R.B. 
               ; tiny mod on original Mandel-Newton by Sylvie 
               ; tweaked brainlessly by Robin Bussell 
               ; to give a hybrid mandel-newton fractal
  z = pixel, c = z, iter = 1, test1 = 1
   ;  rad = 3.1, center = (1.0,0.1)
   ;  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
   ;  zn = center+rad/(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (1-test1)    ;   test2=(iter!=limit)
                       ;  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4)
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1)) 
  ;SOURCE: forummsg.frm
}


Man-XW-YW {; Jim Muth, Thanks to Benno
           ; p2 = 0 = Julibrot XW plane
           ; p2 = 1 = Julibrot YW plane
           ; p2 = >0 <1 = Oblique planes
  z=flip(real(pixel))+real(p1)
  c=flip(imag(pixel))+imag(p1)
  a=p2, b=flip(cos(asin(p2))):
  z=sqr(z)+((a+b)*c)
  |z| <= 25
  ;SOURCE: 97msg.frm
}


Man-YZ-XZ {; Jim Muth
           ; p2 = 0 = Julibrot YZ plane
           ; p2 = 1 = Julibrot XZ plane
           ; p2 = >0 <1 = Oblique planes
  z=real(pixel)+flip(real(p1))
  c=imag(pixel)+flip(imag(p1))
  a=p2, b=flip(cos(asin(p2))):
  z=sqr(z)+((a+b)*c)
  |z| <= 25
  ;SOURCE: 97msg.frm
}


man1-138 (XAxis) {
  z=c=pixel:
  z=(1-sqr(c))/sqr(1-c*fn1(z))
  |z|<=4
  ;SOURCE: 98msg.frm
}


man1-146 (XAxis) {
  z=c=pixel:
  z=sqr(fn1(z))/(1-c*fn2(z))^5
  |z|<=4
  ;SOURCE: 98msg.frm
}


man1-353ad (XAxis) {
  z=c=pixel:
  z=c*fn1(z)/fn2(z)
  |z|<=4
  ;SOURCE: 98msg.frm
}


Man2-XW {
  z=flip(real(pixel))+real(p1)
  c=imag(pixel)+flip(imag(p1)):
  z=sqr(z)+c
  |z| <= 36
  ;SOURCE: 97msg.frm
}


Man2-YW {
  z=real(p1)+flip(real(pixel))
  c=imag(p1)+flip(imag(pixel)):
  z=sqr(z)+c
  |z| <= 36
  ;SOURCE: 97msg.frm
}


Man2-YZ {
  z=real(pixel)+flip(real(p1))
  c=flip(imag(pixel))+imag(p1):
  z=sqr(z)+c
  |z| <= 36
  ;SOURCE: 97msg.frm
}


mand-BO-01 (XAXIS) {; from Absolutely_not - Paul Dickins - 1993
                    ; Classic M-set with bailout z <= p1
                    ; gives same results as BO-02 [ real(z)<=p1 ]
  z = (0,0), c = pixel :
  z = z * z + c
  z <= p1
  ;SOURCE: bail_out.frm
}


mand-BO-02 (XAXIS) {; Jon Horner
                    ; gives same results as BO-01 [ z <= p1 ]
  z = (0,0), c = pixel :
  z = z * z + c
  real(z) <= p1
  ;SOURCE: bail_out.frm
}


mand-BO-03 {; Jon Horner
            ; asymmetric
  z = (0,0), c = pixel :
  z = z * z + c
  imag(z) <= p1
  ;SOURCE: bail_out.frm
}


mand-BO-04 (XAXIS) {; Jon Horner
                    ; integer and float give same image
                    ; appears to be same as BO-08 [ abs(real(z)) <= p1 ]
  z = (0,0), c = pixel :
  z = z * z + c
  abs(z) <= p1
  ;SOURCE: bail_out.frm
}


mand-BO-05 (XAXIS) {; from CAL - MandelbrotSet3
                    ; use float=yes
  z = (0,0), c = pixel :
  z = z * z + c
  |real(z) * imag(z)|<=|p1|
  ;SOURCE: bail_out.frm
}


mand-BO-06 (XAXIS) {; Jon Horner
                    ; use float=yes
  z = (0,0), c = pixel :
  z = z * z + c
  |real(z)| <= p1 || |imag(z)| <= p1
  ;SOURCE: bail_out.frm
}


mand-BO-07 {; Jon Horner
            ; asymmetric: use float=yes
  z = (0,0), c = pixel :
  z = z * z + c
  real(z) <= p1 || imag(z) <= p1
  ;SOURCE: bail_out.frm
}


mand-BO-08 (XAXIS) {; from MandChimney - T.J.Hutton - Oct 1993
                    ; integer and float give same image
                    ; appears to be same as BO-04 [ abs(z) <= p1 ]
  z = (0,0), c = pixel :
  z = z * z + c
  abs(real(z)) <= p1
  ;SOURCE: bail_out.frm
}


mand-BO-09 (XAXIS) {; from MandTunnel - T.J.Hutton - Oct 1993
                    ; integer and float give same image
  z = (0,0), c = pixel :
  z = z * z + c
  abs(imag(z)) <= p1
  ;SOURCE: bail_out.frm
}


mand-BO-10 {; from MandVariant - Warut Roonguthai
            ; Fractal Report 29, p9 - Oct 1993
            ; simplified to `normal' conditions/loop by Jon Horner
            ; asymmetric
  z = (0,0), c = pixel :
  z = z * z + c
  real(z) + imag(z) <= p1
  ;SOURCE: bail_out.frm
}


mand-BO-14 (XAXIS) {; Alan Wenham Feb 1993
   ; applied to standard M-set formula by Jon Horner
   ; Using a transcendental function for bailout criteria
  z = (0,0), c = pixel :
  z = z * z + c
  abs(fn1(z)) <= 4
  ;SOURCE: details.frm
}


mand_0 {
  z = c = sin(pixel):
  z = z*z + c
  |real(z)| <= 4
  ;SOURCE: phctutor.frm
}


mand_1 {
  z = c = pixel: 
  z = z*z + c
  |z| <= 4
  ;SOURCE: phctutor.frm
}


mand_2 {
  z = c = 1/pixel:
  z = z*z + c
  |imag(z)| <= 4
  ;SOURCE: phctutor.frm
}


mand_3 {
  z = c = -pixel:
  z = z*z + c
  |real(z)+imag(z)| <= 4
  ;SOURCE: phctutor.frm
}


Mand_Atan_Mset {; Copyright (c) Paul W. Carlson, 1998
  w = z = iter = range_num = bailout = 0
  c = pixel
  num_ranges = real(p2)
  colors_in_range = imag(p2)
  :
  prev_w = w
  w = w * w + c
  IF (abs(real(w)) > p1)
    bailout = 1
    angle = abs(atan((imag(w)-imag(prev_w))/(real(w)-real(prev_w))))
    index = 2 * colors_in_range * angle / pi
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


Mand_Ellipse {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = ellipse real axis
    ; imag(p1) = ellipse imag axis
    ; real(p2) = number of color ranges
    ; imag(p2) = number of colors in a range
    ;
  z = w = k = iter = range_num = bailout = 0
  c = pixel
  a = real(p1)
  b = imag(p1)
  num_ranges = real(p2)
  colors_in_range = imag(p2)
  colors_in_range_1 = colors_in_range - 1
  :
  w = w * w + c
    ;
  dist = real(w) * real(w) / a + imag(w) * imag(w) / b
  IF (dist > 1)
    bailout = 1
    index = colors_in_range_1 * (dist - 1) / dist
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


MandConj01 (XAXIS) {; Paul J. Horn, see MandelConj.  
                    ; This is a variation on a theme.
  z = c = Pixel:   
  z = Sqr(z) + Conj(Pixel)
  |z| <= 4
  ;SOURCE: pjhcon.frm
}


MandConj02 (XAXIS) {; Paul J. Horn, see MandelConj. 
                    ; Another variation on the theme. 
  z = c = Pixel:   
  z = Sqr(Conj(z)) + Conj(Pixel)
  |z| <= 4
  ;SOURCE: pjhcon.frm
}


MandConj03 (XAXIS) {; Paul J. Horn 
                    ; yet another variation on the theme 
  z = c = Pixel:   
  z = Sqr(conj(z))*conj(z) + Pixel
  |z| <= 4
  ;SOURCE: pjhcon.frm
}


MandConj04 (XAXIS) {; Paul J. Horn 
                    ; yet another variation on the theme 
  z = c = Pixel:   
  z = Sqr((z))*(z) + Conj(Pixel)
  |z| <= 4
  ;SOURCE: pjhcon.frm
}


MandConj05 (XAXIS) {; Paul J. Horn 
                    ; yet another variation on the theme 
  z = c = Pixel:   
  z = Sqr(conj(z))*conj(z) + Conj(Pixel)
  |z| <= 4
  ;SOURCE: pjhcon.frm
}


MandConj06 (XAXIS) {; Paul J. Horn 
                    ; yet another variation on the theme 
  z = c = Pixel:   
  z = Sqr(Sqr(conj(z))) + Pixel
  |z| <= 4
  ;SOURCE: pjhcon.frm
}


MandConj07 (XAXIS) {; Paul J. Horn 
                    ; yet another variation on the theme 
  z = c = Pixel:   
  z = Sqr(Sqr((z))) + Conj(Pixel)
  |z| <= 4
  ;SOURCE: pjhcon.frm
}


MandConj08 (XAXIS) {; Paul J. Horn 
                    ; yet another variation on the theme 
  z = c = Pixel:   
  z = Sqr(Sqr(conj(z))) + Conj(Pixel)
  |z| <= 4
  ;SOURCE: pjhcon.frm
}


MandConj09 {; Paul J. Horn 
            ; yet another variation on the theme 
  z = c = Pixel:   
  z = (conj(z))^p1 + Pixel
  |z| <= 4
  ;SOURCE: pjhcon.frm
}


MandConj10 {; Paul J. Horn 
            ; yet another variation on the theme 
  z = c = Pixel:   
  z = z^p1 + Conj(Pixel)
  |z| <= 4
  ;SOURCE: pjhcon.frm
}


MandConj11 {; Paul J. Horn 
            ; yet another variation on the theme 
  z = c = Pixel:   
  z = (conj(z))^p1 + Conj(Pixel)
  |z| <= 4
  ;SOURCE: pjhcon.frm
}


mandel {
   ; p1=initial perturbation of z
   ; bailout is real(p2) (default 4)
  z = pixel + p1
  t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = sqr(z) + pixel
  |z| <= t
  ;SOURCE: builtn.frm
}


Mandel+ls {; Normal formula: with "LHS"
           ; requires 'periodicity=0'
  x=real(scrnpix)/real(scrnmax)
  y=(imag(scrnmax)-imag(scrnpix))/imag(scrnmax)
  z=x+flip(y)
  chrL1 = x<0.868||y<0.028&&x>0.86&&x<0.884
  chrH2 = x<0.896||x>0.912||(y<0.044&&y>0.036)&&x>0.888&&x<0.92
  chrS3 = abs(cabs(z+(-0.936,-0.048))-0.008)<0.004&&(x<0.936||y>0.048) \
          ||(abs(cabs(z+(-0.936,-0.032))-0.008)<0.004&&(x>0.936||y<0.032))
  test = chrL1||chrH2||chrS3&&y>0.02&&y<0.06
  z = c = pixel:
  z = z*z + c
  |z| <= 4&&test==0
  ;SOURCE: 9609.frm
}


mandel-julia {; Sylvie Gallet 1995
  z=pixel, c=z
  compt=0, limit=real(p1), bailout=4
  p=(-0.743380900000982,-0.131850030300002) :
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |z|<=bailout
  ;SOURCE: mandj.frm
}


mandel-lambdafn {; Sylvie Gallet [101324,3444], 1995
                 ; requires "periodicity=0" (<g> command)
  c = z = pixel, lambda = (1.0,0.4) 
  pix2 = pixel*4+0.8, compt = 0, limit = real(p1) :
  test1 = (compt<limit), test2 = (compt!=limit)
  z = (z-pix2)*test2 + pix2
  bailout = 4096 - 4032*test1
  z2 = lambda*sin(z)
  z = (z*z+c-z2)*test1+z2
  compt = compt+1
  |z| <= bailout
  ;SOURCE: gallet-1.frm
}


mandel-lambdafn-3 {; Sylvie Gallet [101324,3444], 1995
                   ; requires "periodicity=0" 
  c = z = pixel, lambda = (1.0,0.4), test0 = 1, test3=0
  pix2 = pixel*4+0.8, iter= 0, limit = real(p1) :
  test1 = (iter<limit), test0 = 1-test0, test2 = (iter!=limit)
  z = (z-pix2)*test2 + pix2
  bailout = 4096 - 4032*test1
  z2 = lambda*sin(z)
  z = (z*z+c-z2)*test1+z2
  test3 = (test3 || (|z|>bailout))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+1
  |z| <= bailout
  ;SOURCE: gallet-2.frm
}


mandel-lambdafn_2 {; Sylvie Gallet [101324,3444], 1995
                   ; requires "periodicity=0" (<g> command)
  c = z = pixel, lambda = (1.0,0.4)
  pix2 = pixel*4+0.8, compt = 0, limit = real(p1) :
  test1 = (compt<limit), test2 = (compt!=limit)
  z = (z-pix2)*test2 + pix2
  bailout = 20000 + 1000*test1   ; the bug is here...
  z2 = lambda*sin(z)
  z = (z*z+c-z2)*test1+z2
  compt = compt+1
  |z| <= bailout
  ;SOURCE: gallet-1.frm
}


mandel-mandel {; Sylvie Gallet 1995
  c1=(0.34396372130558980 , 0.05608272738673762)
  c2=(-0.72141758920523890 , 0.25918045895127010)
  c=z=pixel, delta=c2-c1, b=c+delta
  compt=0, limit=real(p1), bailout=16 :
  test1=(compt<limit), test2=(compt!=limit)
  z = z * test2
  c = b - delta * test1
  z=z*z+c
  compt=compt+1
  |z|<=bailout
  ;SOURCE: mandelm.frm
}


mandel-newton {; Sylvie Gallet [101324,3444], 1995-1996
   ; Formula designed for Fractint 19.2 and modified for Fractint 19.3
  z = pixel, c = z, iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn = center+rad/(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4+(z==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1) 
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: gallet-n.frm
}


mandel-newton-2 {; Sylvie Gallet [101324,3444], 1995-1996
   ; Formula designed for Fractint 19.2 and modified for Fractint 19.3
  limit = real(p1), test0 = 1, test3=0, iter = 1 
  z = pixel, c = z, b1 = 16  
  rad = 6, pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  center = (1.0,0.1), zn = center+rad/(pix-center), b2 = 0.0001 :
  test0 = 1-test0, test1 = (iter<limit), test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1) 
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+1
  ((|z|<=b1)*test1) || ((|z1|>=b2)*(1-test1))
  ;SOURCE: gallet-n.frm
}


mandel-newton_a {; Modified Sylvie Gallet frm [101324,3444], 1995
  z = pixel, c = z, iter = 1
  rad = 3.1, center = (-3.6,-3.0)
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn = fn1(center+rad)/(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4)
  z = (z2+c)*test1 + (z-z1)*(1-test1) 
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: bej3.frm
}


mandel-newton_j4 {; Modified Sylvie Gallet Frm [101324,3444], 1995
  z = pixel, c = z, iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn = center+rad/(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = fn1(fn2(z*z+c)), z4 = z2*z2, z1 = (z4*z-1)/(4*z4)
  z = (z2+fn3(c))*test1 + (z-z1)*(1-test1) 
  iter = iter+(3.099,-3.099)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: bej4.frm
}


mandel-newton_j5 {; Modified Sylvie Gallet Frm [101324,3444], 1995
  z = pixel, c = z, iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn = center+rad/(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = fn1((z*z)/(zn)), z4 = z2*z2, z1 = (z4*z-1)/(4*z4)
  z = (z2+(c))*test1 + (z-z1)*(1-test1) 
  iter = iter+fn2(3.099,-3.099)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: bej4.frm
}


mandel-newton_j6c {; Modified Sylvie Gallet Frm [101324,3444], 1995
  z = pixel, c = z, iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn = center/rad/(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  c=(-0.7456,-0.0186)
  c=fn1(sin(conj(-0.81256,-0.1295)))
  z = (z-zn)*test2 + zn
  z2 = (z*z)-(zn), z4 = (z2*z2), z1 = (z4*z-1)/(4*z4)
  z = (z2+(c))*test1 + (z-z1)*(1-test1) 
  iter = iter+(3.099,-3.099)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: bej4.frm
}


mandel-newton_j6e {; Modified Sylvie Gallet Frm [101324,3444], 1995
  z = pixel, c = z, iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn = center/rad/(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit), test3=(zn^limit)
  c=(-0.7456,-0.0186)
  c=sin(conj(-0.81256,-0.1295))
  z = (z-zn)*test2 + zn
  z2 = fn1(z*z/c)-(zn), z4 = (z2*z2), z1 = (z4*z-1)/(4*z4)
  z = (z2+(c))*test1 + (z-z1)*(1-test1) 
  iter = iter+(2.079,-2.079)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: bej4.frm
}


mandel-newton_j6g {; Modified Sylvie Gallet Frm [101324,3444], 1995
                   ; Revised for Fractint v20 by G. Martin
  z = pixel, c = z, iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn = center/rad/(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  c1=(-0.7056,-0.0086)
  c=fn1(fn2(conj(-0.80256,-0.1095)))
  z = (z-zn)*test2 + zn
  z2 = (z^2+(-0.6956,0.10)+(test1/7*pixel)), z4 = (z2*z2) 
  z1 = (z4*z-1)/(4*z4)
  z = (z2+(c))*test1 + (z-z1)*(1-test1) 
  iter = iter+(3.099,-3.099)
  ((|z2| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: bej4.frm
}


mandel-newton_j7c3 {; Sylvie Gallet [101324,3444], 1995
  z = pixel, c = z, iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn = center*rad+(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter&&limit), test2=(iter!=limit)
  c1=(-0.7056,-0.0086)
  c=fn1(sin(conj(-0.80256,-0.1095)))
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4)
  z = fn2(z2)+(c*test1) + (z-z1)*(1-test1) 
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: sg-bc-bj.frm
}


Mandel3 {; Fractal Creations example
  z = pixel, c = sin(z):
  z = (z*z) + c
  z = z * 1/c
  |z| <= 4
  ;SOURCE: fractint.frm
}


mandel4 {; Chuck Ebbert                            added 12 Jan 1993
         ; p1=initial perturbation of z
         ; bailout is real(p2) (default 4)
  z = pixel + p1, c = pixel
  t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = sqr(z*z) + c                                  ; 13 Jan 1993
  |z| <= t
  ;SOURCE: builtn2.frm
}


Mandel[Fn||Fn] {; v18 - Jonathan Osuch
                ; Note: use floating point
   ; Edited for Fractint v. 20 by George Martin, 10/98
  z = p1, shift = real(p2), x=|z|:
  IF (x<shift)
    z=pixel+fn1(z)
  ELSE
    z=pixel+fn2(z)
  ENDIF
  x=|z| 
  x<=64
  ;SOURCE: parser.frm
}


Mandel_3Way {; Copyright (c) Paul W. Carlson, 1998
    ; Alyways use float=y, outdide=summ
    ; real(p1) = escape circle radius squared
    ; imag(p1) = number of iterations to skip
    ; real(p2) number of color ranges
    ; imag(p2) number of colors in a range
  z = w = k = iter = range_num = bailout = 0
  c = pixel
  prev_modw2 = 1.0e20
  rad2 = real(p1)
  skip_iters = imag(p1)
  num_ranges = real(p2)
  colors_in_range = imag(p2)
  colors_in_range_1 = colors_in_range - 1
  :
  w = w * w + c
    ;
  IF ((prev_modw2 < rad2) && (|w| > rad2))
    bailout = 1
    IF (iter > skip_iters)
      k = 1
    ENDIF
    index = colors_in_range_1 * (rad2 - prev_modw2) / rad2
    z = (index + range_num * colors_in_range + 1) * k
  ENDIF
  prev_modw2 = |w|
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| <= rad2
  ;SOURCE: 98msg.frm
}


Mandel_4-D {; 4-D Mandelbrot, 8-D Julibrot
  a=(p1), b=(0,0), d=p2+2:
  f=sqr(a)-sqr(b)+pixel
  b=d*a*b+p3
  a=f
  |a|+|b| <16
  ;SOURCE: 98msg.frm
}


Mandel_4-Dd {; 4-D Mandelbrot, 8-D Julibrot
  a=(p1), b=(0,0), d=p2+2:
  f=sqr(a)-sqr(b)+pixel
  b=d*a*b+p3
  a=f
  |a|/|b| <16
  ;SOURCE: 98msg.frm
}


Mandel_4-Ddr {; 4-D Mandelbrot, 8-D Julibrot
  a=(p1), b=(0,0), d=p2+2:
  f=sqr(a)-sqr(b)+pixel
  b=d*a*b+p3
  a=f
  |b|/|a| <16
  ;SOURCE: 98msg.frm
}


Mandel_4-Dm  {; 4-D Mandelbrot, 8-D Julibrot
  a=(p1), b=(0,0), d=p2+2:
  f=sqr(a)-sqr(b)+pixel
  b=d*a*b+p3
  a=f
  |a|*|b| <16
  ;SOURCE: 98msg.frm
}


Mandel_4-Ds {; 4-D Mandelbrot, 8-D Julibrot
  a=(p1), b=(0,0), d=p2+2:
  f=sqr(a)-sqr(b)+pixel
  b=d*a*b+p3
  a=f
  |a|-|b| <16
  ;SOURCE: 98msg.frm
}


Mandel_alt {
   ;(c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = c = pixel:
  z = z * z + c
  |z - pixel| < 4
  ;SOURCE: frame.frm
}


Mandel_alt_3 {
   ;(c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = c = pixel:
  z = z * z + c
  |z + pixel| < 4
  ;SOURCE: frame.frm
}


mandel_nest {; George Martin [76440,1143] with help from Sylvie Gallet
   ; periodicity=0 float=yes, fractint v19.3 or higher
   ; real(p1) is reduction factor, e.g 1 (default) is same size,
   ;     2 is half the size (linear; 1/4 the area size)
   ; imag(p1) is clockwise rotation of the image in degrees
   ; p2 - real portion moves image along the x axis, imag
   ;     portion along the y axis. + = right,up. 
   ; real(p3) - iteration spacing. 256 and multiples causes
   ;     nested images to have same coloring. Default 256 
  z=0, c=pixel
  newpixel=pixel, iter=0 
  reduction=real(p1) + (real(p1)==0)
  nextzoom=iterspace=(p3>0)*p3 + (p3<=0)*256
  rotation=pi*flip(imag(p1))/180:
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  newpixel=newpixel*(1-test)+test*reduction*(newpixel-p2)*exp(rotation)
  z = z*(1 - test) 
  c = c*(1 - test) + test*newpixel
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: nest.frm
}


Mandel_Other {
   ;(c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ; Edited by G. Martin, 5/8/98, to correct obvious typo (":" missing)
  z = c = pixel:
  z = z * z * z * z + c
  |z| < |c|
  ;SOURCE: frame.frm
}


MANDEL_RI (XAXIS) {; Zoom near the seahorse valley
  Z=C=PIXEL:
  Z=SQR(Z)+P1
  Q=10*(|IMAG(Z)|<.0001)
  O=10*(|REAL(Z)|<.0001)
  P=(|Z|>=20)*10
  O+P+Q<=9
  ;SOURCE: ramiro.frm
}


Mandel_Rings {; Copyright (c) Paul W. Carlson, 1998
  z = w = k = iter = range_num = bailout = 0
  c = pixel
  ring_width = real(p1)
  num_ranges = real(p2)
  colors_in_range = imag(p2)
  index_factor = (colors_in_range - 1) / ring_width
  :
  w = w * w + c
    ;
  dist = abs(|w|-.25)
  IF (dist < ring_width && iter > 0)
    bailout = 1
    z = index_factor * dist + range_num * colors_in_range + 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < 1.0e20
  ;SOURCE: carlson2.frm
}


Mandel_Segs {; Copyright (c) Paul W. Carlson, 1998
    ;   real(p1) = stalk segment width factor
    ;   imag(p1) = stalk segment length factor
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in a range
    ;   real(p3) = minimum |w| for stalks
    ;   imag(p3) = minimum iterations
    ;
  c = pixel
  w = z = bailout = iter = range_num = 0
  stalk_width = real(p1)
  num_ranges = real(p2)
  colors_in_range = imag(p2)
  min = real(p3)
  index_factor = (colors_in_range - 1) / stalk_width
  stalk_len = imag(p1) * stalk_width * stalk_width
  :
  w = w * w + c
    ;
  IF (abs(real(w)) <= abs(imag(w)))
    dist = abs(real(w))
  ELSE
    dist = abs(imag(w))
  ENDIF
  IF (dist < stalk_width && iter > imag(p3))
    IF (|w| > min && |w| < stalk_len)
      z = index_factor * dist + range_num * colors_in_range + 1
      bailout = 1
    ENDIF
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0  && |w| < 4
  ;SOURCE: 98msg.frm
}


Mandel_Squares {; Copyright (c) Paul W. Carlson, 1998
    ; Parameters:
    ;   real(p1) = controls the size of the squares (0.1 to 0.8)
    ;   imag(p1) = 0 if Mset, else Julia set
    ;   p2       = Julia set coordinates
    ;   real(p3) = number of iterations to skip
    ;
  IF (imag(p1) == 0)
    c = pixel
    w = 0
  ELSE
    c = p2
    w = pixel
  ENDIF
  z = bailout = iter = range_num = 0
  shield_size = real(p1)
  skip_iters = real(p3)
  num_ranges = 8
  colors_in_range = 30
  k = 0.5 + shield_size
  j = 0.5 - shield_size
  index_factor = 29 / shield_size:
    ;****************************************************
  w = w * w + c
    ;****************************************************
  awr = abs(real(w)), awi = abs(imag(w))
  IF ((awr < k) && (awr > j) && (awi < k) && (awi > j))
    awr5 = abs(awr - 0.5), awi5 = abs(awi - 0.5)
    IF (awr5 <= awi5)
      min_dist = awr5
    ELSE
      min_dist = awi5
    ENDIF
    IF (min_dist < shield_size && iter > skip_iters)
      z = index_factor * min_dist + range_num * colors_in_range + 1
      bailout = 1
    ENDIF
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0  && |w| < 1.0e20
  ;SOURCE: 98msg.frm
}


Mandel_xt(XAXIS_NOIMAG) {; Variation with x und z variable
                         ; real(p1) = imaginary part of u
                         ; imag(p1) = real part of v
  u=real(pixel)+flip(real(p1))
  z=v=imag(p1)+flip(imag(pixel))
  bailout=5+2.5*(|u|+|v|):
  z=sqr(z)+u
  |z|<bailout
  ;SOURCE: 97msg.frm
}


Mandel_xz(XAXIS_NOIMAG) {; Variation with x und z variable
                         ; real(p1) = imaginary part of u
                         ; imag(p1) = imaginary part of v
  u=real(pixel)+flip(real(p1))
  z=v=imag(pixel)+flip(imag(p1))
  bailout=5+2.5*(|u|+|v|):
  z=sqr(z)+u
  |z|<bailout
  ;SOURCE: 97msg.frm
}


Mandel_yt(ORIGIN) {; Variation with x und z variable
                   ; real(p1) = real part of u
                   ; imag(p1) = real part of v
  u=real(p1)+flip(real(pixel))
  z=v=imag(p1)+flip(imag(pixel))
  bailout=5+2.5*(|u|+|v|):
  z=sqr(z)+u
  |z|<bailout
  ;SOURCE: 97msg.frm
}


Mandel_yz (ORIGIN) {; Variation with x und z variable
                    ; real(p1) = real part of u
                    ; imag(p1) = imaginary part of v
  u=real(p1)+flip(real(pixel))
  z=v=imag(pixel)+flip(imag(p1))
  bailout=5+2.5*(|u|+|v|):
  z=sqr(z)+u
  |z|<bailout
  ;SOURCE: 97msg.frm
}


MandelBar_3_c (xaxis) {; Jm Collard-Richard
  z=c=pixel:
  z=conj(z)^3+c
  |z|<=4               
  ;SOURCE: jmcr1.frm
}


MandelBar_4_c (xaxis) {; Jm Collard-Richard
  z=c=pixel:
  z=conj(z)^4+c
  |z|<=4               
  ;SOURCE: jmcr1.frm
}


MandelBar_N {; Jm Collard-Richard
  z=c=pixel:
  z=conj(z)^p1+c
  |z|<=4               
  ;SOURCE: jmcr1.frm
}


MandelBarFN (xaxis) {; Jm Collard-Richard
  z=c=pixel:
  z=c*fn1(conj(z))
  |z|<=64              
  ;SOURCE: jmcr1.frm
}


Mandelbrot (XAXIS) {; Mark Peterson
                    ; Classical fractal showing LastSqr speedup
  z = Pixel, z = Sqr(z):  ; Start with z**2 to initialize LastSqr
  z = z + Pixel
  z = Sqr(z)
  LastSqr <= 4            ; Use LastSqr instead of recalculating
  ;SOURCE: fractint.frm
}


Mandelbrot2 {
  z = Pixel, x=abs(real(z)), y=abs(imag(z))
  tx = (x>0.5) + (x>1) + (x>1.5) + (x>2)
  ty = (y>0.5) + (y>1) + (y>1.5)
  x = 0.5*(-tx*(real(z)<0) + (tx-1)*(real(z)>=0))
  y = 0.5*(-ty*(imag(z)<0) + (ty-1)*(imag(z)>=0))
  z = x + flip(y), z = Sqr(z):
  z = z + Pixel
  z = Sqr(z)
  LastSqr <= 4  
  ;SOURCE: 96msg.frm
}


Mandelbrot3 {
  z = Pixel, x=abs(real(z)), y=abs(imag(z))
  tx = (x>0.5) + (x>1) + (x>1.5) + (x>2)
  ty = (y>0.5) + (y>1) + (y>1.5)
  x = 0.5*tx*real(z)/x, y = 0.5*ty*imag(z)/y
  z = x + flip(y), z = Sqr(z):
  z = z + Pixel
  z = Sqr(z)
  LastSqr <= 4
  ;SOURCE: 96msg.frm
}


Mandelbrot_JM {; Jim Muth
  z=p1, c=pixel:
  z=sqr(z)+c
  |z| <=p2
  ;SOURCE: 0from_ml.frm
}


Mandelbrot_JM2 {; Jim Muth
  z=p1, c=pixel+p2:
  z=sqr(z)+c
  |z| <= 16
  ;SOURCE: 0from_ml.frm
}


MandelbrotCube {; Jim Muth  real(c),imag(c)
  z=p1, c=pixel+p2:
  z=z*(sqr(z))+c
  |z| <= 16
  ;SOURCE: 99msg.frm
}


MandelbrotInNewton(XAXIS) {; use float=yes: from CAL v4.0 by Tim Harris
  z = 0, c = pixel, cminusone = c-1:
  oldz = z
  nm = 3 * c-2 * z * cminusone
  dn = 3 * (3 * z * z + cminusone)
  z = nm/dn + 2 * z/3
  |(z-oldz)|>=|0.01|
  ;SOURCE: mnewton.frm
}


MandelbrotJM {; Jim Muth  real(c),imag(c)
  z=p1, c=pixel+p2:
  z=sqr(z)+c
  |z| <= 16
  ;SOURCE: 98msg.frm
}


MandelbrotMiN {; Jim Muth
  b=p1, z=p2, c=p3+pixel:
  z=(-z)^(b)+c
  |z| <= 16
  ;SOURCE: 98msg.frm
}


MandelbrotMix {; Jim Muth
  z=p3, c=pixel
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2):
  z=(a*(z^b))+(d*(z^f))+c
  |z| <= 100
  ;SOURCE: 97msg.frm
}


MandelbrotMix1 {; Jay Hill mod of Jim Muth eqn.
    ; both d and f must be non-zero, and b not equal f
  c=pixel, a=real(p1), b=imag(p1), d=real(p2), f=imag(p2) 
  z=(-a*b/f/d)^(1/(f-b)):  ; critical point
  z=(a*(z^b))+(d*(z^f))+c
  |z| <= 100
  ;SOURCE: 98msg.frm
}


MandelbrotMix4 {; Jim Muth
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2), g=1/f
  h=1/d, j=1/(f-b), z=(-a*b*g*h)^j, k=real(p3)+1
  l=imag(p3)+100, c=fn1(pixel):
  z=k*((a*(z^b))+(d*(z^f)))+c
  |z| < l
  ;SOURCE: 99msg.frm
}


MandelbrotMix4_v1 {; Jim Muth
  c=pixel, a=real(p1), b=imag(p1), d=real(p2), f=imag(p2)
  g=1/f, h=1/d, j=1/(f-b), z=(-a*b*g*h)^j:
  z=(a*(z^b))+(d*(z^f))+c
  |z| <= 100
  ;SOURCE: 98msg.frm
}


MandelbrotMix4a {; Jim Muth
      ; "a" suffix added by L.StClair 3/6/99
      ; to differentiate this version from the one previously posted
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2), g=1/f
  h=1/d, j=1/(f-b), z=(-a*b*g*h)^j, k=real(p3)+1
  l=imag(p3)+100, c=fn1(pixel):
  z=k*((a*(z^b))+(d*(z^f)))+c
  |z| < l
  ;SOURCE: frac_ml.frm
}


MandelbrotMix5 {; Jim Muth
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2), g=1/f
  h=1/d, j=1/(f-b), z=(-a*b*g*h)^j, k=real(p3)+1
  l=imag(p3)+1, c=pixel:
  z=k*((a*(z^b))+(d*(z^f)))+c^l
  |z| < 100
  ;SOURCE: 98msg.frm
}


MandelbrotMix5_v1 {; Jim Muth
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2), g=1/f
  h=1/d, j=1/(f-b), z=(-a*b*g*h)^j, c=pixel/(a*d):
  z=(a*(z^b))+(d*(z^f))+c
  |z| <= 100
  ;SOURCE: 98msg.frm
}


MandelbrotMix6 {; Jim Muth
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2), g=1/f
  h=1/d, j=1/(f-b), z=(-a*b*g*h)^j, k=real(p3)+1
  l=imag(p3)+100, c=pixel*k:
  z=(a*(z^b))+(d*(z^f))+c
  |z| <= l
  ;SOURCE: 98msg.frm
}


MandelbrotMix7 {; Jim Muth
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2), g=1/f
  h=1/d, j=1/(f-b), z=(-a*b*g*h)^j, k=real(p3)+1
  l=imag(p3)+100, c=pixel:
  z=k*((a*(z^b))+(d*(z^f)))+c
  |z| <= l
  ;SOURCE: 98msg.frm
}


MandelbrotMix7_v1 {; Jim Muth
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2), g=1/f
  h=1/d, j=1/(f-b), z=(-a*b*g*h)^j, k=real(p3)+1
  l=imag(p3)+100, c=pixel*k:
  z=(a*((-z)^b))+(d*((-z)^f))+c
  |z| <= l
  ;SOURCE: 98msg.frm
}


MandelbrotN {; Jim Muth
  b=p1, z=p2, c=p3+pixel:
  z=z^(b)+c
  |z| <= 16
  ;SOURCE: 98msg.frm
}


MandelbrotPanorama {; Jay Hill, 1998
                    ; Panorama Mandelbrot set
  z = 0, c = exp(flip(pixel))+p2:
  z = z*z + c
  |z| < 4
  ;SOURCE: 98msg.frm
}


MandelbrotPM {; formula Jim Muth
  z=p1+10^(-100), c=pixel:
  z=p2*(.5*((-z)^p3+z^p3))+c
  |z| <= 250
  ;SOURCE: 98msg.frm
}


MandelbrotQud {; Jim Muth
  z=p3, c=pixel
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2):
  z=sqr(z)+(.2*(z*z*z))+(a*(z^b))+(d*(z^f))+c
  |z| <= 100
  ;SOURCE: 98msg.frm
}


MandelbrotTri {; Jim Muth
  z=p3, c=pixel
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2):
  z=(z*z*z)+(a*(z^b))+(d*(z^f))+c
  |z| <= 100
  ;SOURCE: 98msg.frm
}


MandelbrotVB {; Jim Muth
  z=p1, c=pixel+p3
  a=sqr(p2):
  z=sqr(z)+c
  |z| <= a
  ;SOURCE: 97msg.frm
}


MandelbrotVB_new {; Jim Muth
  z=p1, c=pixel+p3
  a=sqr(p2):
  z=sqr(z)+c
  |z| <= a
  ;SOURCE: frac_art.frm
}


MandelbrotZC {; Jim Muth
  z=p3, c=pixel:
  z=(real(p1)*(z^imag(p1)+c))+(real(p2)*(c^imag(p2)+z))
  |z| <= 100
  ;SOURCE: 97msg.frm
}


MandelbrotZC-rev {; Jim Muth
  z=p3, c=pixel:
  z=(real(p1)*(z^imag(p1)+c))+(real(p2)*(c^imag(p2)+z))
  |z| <= 100
  ;SOURCE: 0from_ml.frm
}


MandelbrotZC2 {; Jim Muth
  z=p1, c=pixel:
  z=real(p2)*(z^imag(p2)+c)+real(p3)*(c^imag(p3)+z)
  |z| <= 100
  ;SOURCE: frac_art.frm
}


MandelConj (XAXIS) {; Paul J. Horn, this was mentioned in Pickover's book 
                    ; Computers, Chaos, Patterns and Beauty.  
                    ; He didn't give the forumula, so I came up with this
  z = c = Pixel:   
  z = Sqr(conj(z)) + Pixel
  |z| <= 4           
  ;SOURCE: pjhcon.frm
}


MandelCosine (XYAXIS) { 
  z = pixel:  
  z = cos(z) * pixel 
  |z| <= 50 
  ;SOURCE: fracv13r.frm
}


Mandelcubic (XYAXIS) {; Dewey Odhner
  z = Pixel, z = Sqr(z)*z:  ; Start with z**3 to initialize LastSqr
  z = z + Pixel
  z = Sqr(z)*z
  LastSqr <= 4              ; Use LastSqr instead of recalculating
  ;SOURCE: dragbat.frm
}


MandelFn(XYAXIS) {; Jon Horner [ not the same as hard-coded type !! ]
  z = c = pixel :
  z = fn1(z) * c
  |z| <= 64
  ;SOURCE: parser.frm
}


Mandelfn1 {; make fn1=recip and inside=zmag
           ; Replaced variable "e" with "ee" 5/05/99. G. Martin
  ee=0, z=0:
  ee=sqr(ee)+pixel
  z=fn1(ee)
  |ee|<=4
  ;SOURCE: ramiro.frm
}


MandelFnA (XYAXIS) {; from LambdaFn - Chuck Ebbert - from BUILTN.FRM
   ; this one ain't right either!
   ; p1 is lambda, real(p2) changes bailout (default = 64).
  z = m, c = pixel:
  m = ((1.0,0.0) * (|p1|<=0) + p1 )
  t = (64 * (real(p2)<=0) + real(p2) * (0<p2) )
  z = fn1(z) * c
  abs(imag(z)) <= t && abs(real(z)) <= t
  ;SOURCE: parser.frm
}


Mandelglass (XAXIS) { 
  z = (0.5, 0.0): 
  z = pixel * z * (1 - z) 
  |z| <= 4 
  ;SOURCE: fracv13r.frm
}


MandelHypCosine (XYAXIS) { 
  z = pixel: 
  z = cosh(z) * pixel 
  |z| <= 50 
  ;SOURCE: fracv13r.frm
}


MandelHypSine (XYAXIS) { 
  z = pixel:  
  z = sinh(z) * pixel 
  |z| <= 50 
  ;SOURCE: fracv13r.frm
}


MandelIke {; Ron Barnett [70153,1233], 1996   Requires passes=1
   ; p3 will shift the ikenaga set wrt the mandelbrot set
   ; Ron Barnett, 1996
  z = pixel+(whitesq==0)*p3
  c = whitesq*p1*pixel + (whitesq==0)*p2*pixel:
  z=whitesq*(z*z*z+(c-1)*z-c) + (whitesq==0)*(z*z+c) 
  |z|<=4
  ;SOURCE: phc.frm
}


Mandelion {
  z = c = 1/pixel:
  z = sin(sqr(c)) * sin(-z)
  |z| <= 64
  ;SOURCE: 98msg.frm
}


Mandelion1 {
  z = c = 1/pixel:
  z = sin(sqr(c*z)) * sin(-z)
  |z| <= 64
  ;SOURCE: 98msg.frm
}


Mandelion2 {
  z = c = 1/pixel:
  z = sin(sqr(c)*z) * sin(-z)
  |z| <= 64
  ;SOURCE: 98msg.frm
}


MandelJulia (XAXIS) {; Pretty sick.  Try your every fave julias for p1.
   ; Haven't we seen this before?!  This *can't* be original!
  z = 0, zj = pixel:
  z1 = z*z+pixel
  z2 = zj*zj+(p1)
  z = z1+z2
  |z| < 4
  ;SOURCE: jute.frm
}


MandelLambda {; Jon Horner
   ; set co-ords as TLx=-3.0,TLy=3.0,BRx=5.0,BRy=-3.0   -JH Jan 94
   ; Fractint uses p1 = (0.5,0.0)
   ; CAL uses z = (0.01,0.01) with note that z must be >0
   ; The Z screen description prior to v18 is wrong:
   ; (1-z^2) produces a totally different fractal.
   ; - fixed in v18.0  CAL calls it LogisticEquation.
  z = (p1), c = pixel:
  z = z * (1 - z ) * c
  |z| <= 4
  ;SOURCE: parser.frm
}


MandellambdaPwr {; This provide a "map" for LambdaPwr
  z = (1/(p1+1))^(1/p1): 
  z = pixel*z*(1 - z^p1)
  |z| <= 100
  ;SOURCE: reb003.frm
}


MandelLattes (XYAxis) {
  bailout=real(p2)+100
  z=c=pixel:
  zz=sqr(z)
  z=c*((zz+2)*zz+1)/(z*(zz-1))
  |z|<=bailout
  ;SOURCE: 99msg.frm
}


MandelLattesGen (Origin) {
  bailout=real(p2)+100
  z=c=pixel:
  zz=sqr(z)
  z=c*fn1(zz+1)/(z*(zz-1))
  |z|<=bailout
  ;SOURCE: 99msg.frm
}


Mandellike1 (yaxis) {; Peter Anders anders@physik.hu-berlin.de
  xo=real(p1), yo=imag(p1):
  x=(xo*xo-yo*yo)*(0,1)+real(pixel)
  y=2*xo*yo*(0,1)+imag(pixel)
  z=x+flip(y)
  xo=x
  yo=y           
  |fn1(z)|<real(p2) 
  ;SOURCE: peterman.frm
}


Mandellike10 {; Peter Anders anders@physik.hu-berlin.de 
  xo=0, yo=0, cx=real(pixel), cy=imag(pixel):
  x=xo*xo-yo*yo+cx
  y=2*xo*yo+cy
  xo=fn2(x)
  yo=fn2(y)        
  |fn1(x)|<real(p2)  ||  |fn1(y)|<real(p2)
  ;SOURCE: peterman.frm
}


Mandellike11 {; Peter Anders anders@physik.hu-berlin.de 
  xo=0, yo=0, cx=real(pixel), cy=imag(pixel):
  x=xo*xo-yo*yo+cx
  y=2*xo*yo+cy
  xo=x+p1
  yo=y+p1        
  abs(fn1(x*x+y*y))<real(p2)
  ;SOURCE: peterman.frm
}


Mandellike12 {; Peter Anders anders@physik.hu-berlin.de 
  z=(0,0), c=pixel:
  z=z*z+c
  z=z^p1
  abs(fn1(z))<real(p2)
  ;SOURCE: peterman.frm
}


Mandellike13 {; Peter Anders anders@physik.hu-berlin.de 
  z=fn1(pixel), c=fn2(pixel), a=p1, b=p2, d=p3:
  z=z^a+c^b*z^d
  z=fn3(z) 
  |z|<100
  ;SOURCE: peterman.frm
}


Mandellike2 (xaxis) {; Peter Anders anders@physik.hu-berlin.de
  xo=real(p1), yo=imag(p1):
  x=xo*xo-yo*yo+real(pixel)
  y=2*xo*yo+imag(pixel)
  z=x+flip(y)
  xo=y
  yo=x           
  |fn1(z)|<real(p2) 
  ;SOURCE: peterman.frm
}


Mandellike3 {; Peter Anders anders@physik.hu-berlin.de
  z=p1, c=pixel:
  z=fn2(z)+c
  |fn1(z)|<real(p2) 
  ;SOURCE: peterman.frm
}


Mandellike4 {; Peter Anders anders@physik.hu-berlin.de
  z=p1, c=pixel:
  z=fn2(z)*c
  |fn1(z)|<real(p2) 
  ;SOURCE: peterman.frm
}


Mandellike5 {; Peter Anders anders@physik.hu-berlin.de
  z=p1, c=pixel:
  z=fn2(z)*c+c
  |fn1(z)|<real(p2) 
  ;SOURCE: peterman.frm
}


Mandellike6 {; Peter Anders anders@physik.hu-berlin.de
  z=(0,0), c=fn2(pixel):
  z=z*z+c
  |fn1(z)|<real(p2) 
  ;SOURCE: peterman.frm
}


Mandellike7 {; Peter Anders anders@physik.hu-berlin.de
  z=(0,0), c=pixel, c=c^real(p1)-imag(p1):
  z=z*z+c
  |fn1(z)|<real(p2) 
  ;SOURCE: peterman.frm
}


Mandellike8 {; Peter Anders anders@physik.hu-berlin.de
  z=1/pixel, c=pixel:
  z=z*z+c
  |fn1(z)|<real(p2) 
  ;SOURCE: peterman.frm
}


Mandellike9 {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, c=1/pixel:
  z=z*z+c
  |fn1(z)|<real(p2) 
  ;SOURCE: peterman.frm
}


MandEllipse {; Uses an ellipse rather then a circle for the bailout
             ; value.  real(P1) is the square of it's width, and
             ; imag(P2) is the square of it's height.
  z = 0, c = pixel, a = real(p1), b = imag(p1):
  z = z * z + c
  real(z) * real(z) / a + imag(z) * imag(z) / b < 1
  ;SOURCE: 98msg.frm
}


MandelLog1 (XAXIS) {  
  c = z = pixel:
  z = sqr(log(z^z)) + c + p1
  |z| <= 4
  ;SOURCE: robert.frm
}


MandelMax {; generalized z^n by Bud 3/27/98
           ; probably been done before...
           ; defaults: p1 = (2,0) p2 = (0,0) p3 = (4,0)
  z = p2, c = pixel:
  z = z^p1 + c
  |z| < p3
  ;SOURCE: 98msg.frm
}


MandelMax2 {; slightly altered by Jim M.
            ; probably been done before...
            ; defaults: p1 = (2,0) p2 = (0,0) p3 = (4,0)
  z = p2, c = pixel, a=p1:
  z = z^(a) + c
  |z| < p3
  ;SOURCE: 98msg.frm
}


MandelMaxm {; generalized z^n by Bud 3/27/98
            ; probably been done before...
            ; defaults: p1 = (2,0) p2 = (0,0) p3 = (4,0)
  IF (p1 == 2)
    z = p2
  ELSE
    IF (p2 || flip(p2))
      z = p2
    ELSE
      z = 1
    ENDIF
  ENDIF
  c = pixel:
  z = z^p1 + c
  |z| < p3
  ;SOURCE: test.frm
}


MandelNone {; edited 5/6/96 for Orgform by George Martin
            ; Undefined symmetry "(None)" deleted
  z = Pixel:  
  z = sqr(z) + pixel 
  |z| <= 4
  ;SOURCE: newform.frm
}


mandeloid {
    ; By PGD, Aug 1997. p2 is bailout, make >4! 
    ; Set p1 small to get normal-
    ; looking Mandelbrots with subtle mutations. p1=0 gives classic M-set.
    ; p1>.01 gives a noticeably altered M-set. Large values up to 3 give
    ; interesting results. Imaginary numbers warp symmetry.
    ; Replaced variable "e" with "ee" 5/05/99. G. Martin
  c=pixel, z=c, a=0,  b=0, d=0, ee=0, f=0, g=0, h=0, i=0:
  z=sqr(z)+c+i
  i=h 
  h=g
  g=f
  f=ee
  ee=d
  d=b
  b=a
  a=z*p1
  lastsqr<=p2
  ;SOURCE: 97msg.frm
}


MandelOrigin (ORIGIN) {
  z = Pixel:  
  z = sqr(z) + pixel 
  |z| <= 4
  ;SOURCE: newform.frm
}


MandelPM {; Jim Muth
  z=p1+10^(-100), c=pixel:
  z=p2*((-z)^p3+z^p3)+c
  |z| <= 250
  ;SOURCE: 98msg.frm
}


MandelPMnew {; Jim Muth
  z=p2+10^(-100)
  c=pixel+(p3)
  a=real(p1)+1, b=imag(p1):
  z=a*((-z)^b+z^b)+c
  |z| <= 250
  ;SOURCE: 98msg.frm
}


mandels_galore (xaxis) {; Variation on Sylvie Gallet formula. 
                        ; George Martin [76440,1143]
   ; periodicity=0 must be set
   ; Try 50 or more for real(p1) - even multiples of
   ;    256 give interesting effects
   ; Try 1.2 - 1.8 for imag(p1)
   ; Try 1000 or more for Maximum Iterations (x menu)
  z=c=pixel, iter=0 
  nextzoom = iterspace = real(p1), magnification = imag(p1):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) 
  c = c*(1 - test) + test*magnification*c
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 96msg.frm
}


mandels_spiral {; Variation on George Martin's mandels_galore formula. 
                ; Sylvie Gallet [101324,3444], 1996
                ; periodicity=0
  z=c=pixel, iter=0 
  nextzoom = iterspace = real(p1):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) 
  c = c*(1 - test) + test*(p2*c + p3)
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 96msg.frm
}


MandelSin1 (XAXIS) {  
  c = z = pixel:
  z = sqr(z * sin(z)) + c + p1
  |z| <= 4  
  ;SOURCE: robert.frm
}


MandelSine (XYAXIS) { 
  z = Pixel:  
  z = sin(z) * pixel 
  |z| <= 50 
  ;SOURCE: fracv13r.frm
}


MandelTangent {; Fractal Creations example (revised for v.16)
  z = pixel:
  z = pixel * tan(z)
  |real(z)| < 32
  ;SOURCE: fractint.frm
}


MandelVar1 (XAXIS) {; try p1=0.367879441 (= 1/e)
  c = z = pixel:
  z = sqr(z) + c + p1
  |z| <= 4
  ;SOURCE: robert.frm
}


MandelVar10 (XAXIS) {  
  c = z = pixel:
  value1 = 1 + p1
  value2 = 1 + p2
  z = (z^value2)^(value1) + c
  |z| <= 4
  ;SOURCE: robert.frm
}


MandelVar2 (XAXIS) {  
  c = z = 1 / pixel:
  z = sqr( sqr(z*c)) + c + p1
  |z| <= 4
  ;SOURCE: robert.frm
}


MandelVar3 (XAXIS) {; inverted MandelVar2
  c = z = pixel:
  z = sqr( sqr(z*c)) + c + p1
  |z| <= 4
  ;SOURCE: robert.frm
}


MandelVar4 (XAXIS) {  
  c = z = pixel:
  z = sqr(z) + (1/c) + p1
  |z| <= 4
  ;SOURCE: robert.frm
}


MandelVar5 (XAXIS) {  
  c = z = pixel:
  z = sqr(z*cos(tan(c))) + exp(c) + p1
  |z| <= 4
  ;SOURCE: robert.frm
}


MandelVar6 (XAXIS) {  
  c = z = pixel:
  z = (sqr(1/sin(1+z)+ c))*c + c + p1
  |z| <= 4
  ;SOURCE: robert.frm
}


MandelVar7 (XAXIS) {  
  z = pixel:
  c = log(1+z)
  z = sqr(z) + c + p1
  |z| <= 4
  ;SOURCE: robert.frm
}


MandelVar8 (XAXIS) {   
  c = z = pixel:
  z = ((z*c)/(z*c+2.718281828)+sin(z))^2 + c
  |z| <= 4
  ;SOURCE: robert.frm
}


MandelVar9 (XAXIS) {  
  z = pixel:
  c = z/(z*z+1)
  z = sin(z^4 + c) + real(c)
  |z| <= 4
  ;SOURCE: robert.frm
}


MandelXAxis (XAXIS) {; for Transparent3D
  z = zt   ; Define Julia axes as depth/time and the
  c = xy:  ;   Mandelbrot axes as width/height for each slice.
           ;   This corresponds to Mandelbrot axes as
           ;   height/depth and the Julia axes as width
           ;   time for the 3D image.
  z = Sqr(z) + c
  LastSqr <= 4
  ;SOURCE: improved.frm
}


MandelXY (XYAXIS) {
  z = Pixel:  
  z = sqr(z) + pixel 
  |z| <= 4
  ;SOURCE: newform.frm
}


MandelY (YAXIS) {
  z = Pixel:  
  z = sqr(z) + pixel 
  |z| <= 4
  ;SOURCE: newform.frm
}


MandExpGhost {; Ron Barnett, 1998  - modified from Kerry Mitchell
        ;
        ; colors Mandelbrot set by combining the smoothed iteration
        ; with a background of rays from the center
        ;
        ; use decomp=256
        ; real(p1) = bailout
        ; imag(p1) = "ghost" adjustment: set to 0 for only
        ;   background rays, try 2
        ; calculation performed on variable zc, z used for coloring
        ;
  maxr = real(p1), scale = imag(p1)*pi/128
  iterexp = 0, iter = 1, zc = 0, c = pixel, background = pixel:
  iterexp = iterexp + exp(-cabs(zc)), iter = iter + 1, zc = sqr(zc)+c
        ;
        ; bailout
        ;   compute smoothed iteration as "angle"
        ;   multiply angle by background to get final z
        ;   set z to background for interior points
        ;   set "iteration done" flag (iter=-1)
        ;
  IF ((|zc| > maxr) || (iter == maxit))
    smooth = iterexp*scale
    ang = cos(smooth)+flip(sin(smooth))
    z = background*ang
    IF (iter == maxit)
      z = background
    ENDIF
    iter = -1
  ENDIF
  iter > 0
  ;SOURCE: 98msg.frm
}


MandJulia {; Ron Barnett [70153,1233], 1996   Requires passes=1
   ; p3 will shift the julia set wrt the mandelbrot set
   ; p2 is for the Julia value
   ; Ron Barnett, 1996
  z = pixel+(whitesq==0)*p3
  c = whitesq*p1*pixel + (whitesq==0)*p2:
  z=z*z+c 
  |z|<=4
  ;SOURCE: phc.frm
}


MandK {; Original formula is shown by comment. This is my attempt to
       ; reconstruct what was intended. George Martin, 5/20/97
    ; z^2=w^2=pixel^2:
    ; z^2*(w^2+z^2)=(p1)^2*(w^2)
    ; |z|<=1000  
  z=w=pixel^2
  const=p1^2:
  z=(const*w)/(w+z)
  |z|<=1000
  ;SOURCE: sample.frm
}


MandKaleido {; Ron Barnett [70153,2133], 1996
   ; suggested values:  p1   p2   p3
   ;      2 slices       1    1    2
   ;      3 slices       1    2    3
   ;      4 slices       3    2    4
   ;      5 slices       4    2    5
   ;      6 slices       5    4    6
   ;      7 slices       5    4    7
   ;      8 slices       6    5    8
   ;      9 slices       6    5    9
  cr = p1*real(scrnpix) + p2*imag(scrnpix)
  r = cr - p3 * trunc((cr+0.10) / p3)
  tpi = 8*atan(1)
  c = (sin(1/p3*tpi) + flip(cos(1/p3*tpi)))*(r == 0) 
  c1 = (sin(2/p3*tpi) + flip(cos(2/p3*tpi))) * (r == 1)
  c2 = (sin(3/p3*tpi) + flip(cos(3/p3*tpi))) * (r == 2) 
  c3 = (sin(4/p3*tpi) + flip(cos(4/p3*tpi))) * (r == 3)
  c4 = (sin(5/p3*tpi) + flip(cos(5/p3*tpi))) * (r == 4) 
  c5 = (sin(6/p3*tpi) + flip(cos(6/p3*tpi))) * (r == 5)
  c6 = (sin(7/p3*tpi) + flip(cos(7/p3*tpi))) * (r == 6)
  c7 = (sin(8/p3*tpi) + flip(cos(8/p3*tpi))) * (r == 7)
  c8 = (sin(9/p3*tpi) + flip(cos(9/p3*tpi))) * (r == 8)
  c =z = pixel * (c + c1 + c2 + c3 + c4 + c5 + c6 + c7 + c8) :
  z = z * z + c
  |z| <= 4
  ;SOURCE: reb008.frm
}


mandlyap {; P1 is the bailout
  z=0, c=pixel, k=0, l=0, z1=0:
  z1=z1*z1+c
  dz1=2*z1
  k=k+1
  l=l+log(dz1)
  z=l/k
  |z1|<=p1
  ;SOURCE: 97msg.frm
}


MandMand { 
   ; Note that floating-point is required to make this compute accurately
  f=pixel, z=pixel:
  f=z*z+pixel
  z=f*f+pixel
  |f|<=4
  ;SOURCE: fractmix.frm
}


MandMix-x {; Jay Hill
  u=real(p1), v=imag(p1), w=real(p2), b=4+imag(p2)
  c=pixel/w, x=v-u, z=(-u/v/w)^(1/x):
  z=z^u + w*z^v + c
  |z| <= b
  ;SOURCE: 98msg.frm
}


MandMnzpwr {; shit xept p1=2 
   ; Note that floating-point is required to make this compute accurately
  f=pixel, z=pixel:
  f=z^p1+pixel
  z=f*f+pixel
  |f|<=4
  ;SOURCE: fractmix.frm
}


MandNewt01 {; Jim Muth
  z=c=pixel:
  a=z^3+(c-1)*z-(p1*c)
  b=3*z^2+(p2*c-1)
  z=z-p3*a/b
  .00005 <= |a|
  ;SOURCE: 98msg.frm
}


MandNewt02 {; Jim Muth
  z=c=pixel:
  a=z^p1+(c-1)*z-c
  b=3*z^p2+c-1
  z=z-p3*a/b
  .000000000000000000000000000001 <= |a|
  ;SOURCE: 98msg.frm
}


MandNewt03 {; Jim Muth
  z=c=pixel:
  a=z^3+(c-1)*z-c
  b=p1*z^p2+c-1
  z=z-p3*a/b
  .0001 <= |a|
  ;SOURCE: 97msg.frm
}


MandNewt04 {; Jim Muth
  z=c=pixel:
  a=z^3+(c-1)*z-c
  b=p1*z^2+c-1
  z=z-p2*a/b
  p3 <= |a|
  ;SOURCE: 98msg.frm
}


MandNewt05 {; Jim Muth
  z=c=fn1(pixel):
  a=z^2+(c-p1)*z-c
  b=p2*z^2+c-1
  z=z-1*a/b
  p3 <= |a|
  ;SOURCE: 97msg.frm
}


MandNewt06 {; Jim Muth
  z=c=(pixel*p1):
  a=z^3+(c-p2)*z-c
  b=p3*z^2+c-1
  z=z-1*a/b
  .000000000000000000000000000001 <= |a|
  ;SOURCE: 97msg.frm
}


MandNewt07 {; Jim Muth
  z=c=(pixel*p1):
  a=z^3+(c-p2)*z-c
  b=3*z^2+c-1
  z=z-p3*a/b
  .000000000000000000000000000001 <= |a|
  ;SOURCE: 97msg.frm
}


MandNewt08 {; Jim Muth
  z=c=(pixel*p1):
  a=z^p2+(c-1)*z-c
  b=p3*z^2+c-1
  z=z-1*a/b
  .000000000000000000000000000001 <= |a|
  ;SOURCE: 98msg.frm
}


MandNewt09 {; formula, Jim Muth
  z=c=pixel:
  a=z^3+(c-1)*z-c
  b=p1*z^p2+c-1
  z=z-1*a/b
  p3 <= |a|
  ;SOURCE: 98msg.frm
}


MandNewt10 {; Jim Muth
            ; Replaced variable "e" with "ee" 5/05/99. G. Martin
  z=g=pixel, a=real(p1), b=imag(p1), c=real(p2)
  d=imag(p2), ee=real(p3), f=imag(p3):
  h=z^a+(g-b)*z-g
  j=c*z^d+g
  z=z-ee*h/j
  f <= |h|
  ;SOURCE: 98msg.frm
}


MandNewt11 {; Jim Muth
            ; Replaced variable "e" with "ee" 5/05/99. G. Martin
  z=g=pixel, a=real(p1), b=imag(p1), c=real(p2)
  d=imag(p2), ee=real(p3), f=imag(p3):
  h=z^a+(g-b)*z-f
  j=c*z^d+g
  z=z-ee*h/j
  .0000000000000000000000000000005 <= |h|
  ;SOURCE: 98msg.frm
}


MandNewt12 {; Jim Muth
            ; Replaced variable "e" with "ee" 5/05/99. G. Martin
  z=g=pixel, a=real(p1), b=imag(p1), c=real(p2)
  d=imag(p2), ee=real(p3), f=imag(p3):
  h=z^a+(g-1)*(z-b)
  j=c*z^d+g
  z=z-ee*h/(f*j)
  .0000000000000000000000000000005 <= |h|
  ;SOURCE: 98msg.frm
}


MandNwtM { 
   ; Note that floating-point is required to make this compute accurately
  z = pixel, Root = 1:
  f=z*z+pixel
  z = ((pixel-1) * f^pixel + Root) / (pixel * f^(pixel-1))
  .001 <= |f^pixel - Root|
  ;SOURCE: fractmix.frm
}


MandNwtX {
   ; Note that floating-point is required to make this compute accurately
  z = pixel, Root = 1:
  f=z*z+pixel
  z = ((f-1) * z^f + Root) / (f * z^(f-1))
  .001 <= |z^f - Root|
  ;SOURCE: fractmix.frm
}


MandOlio {
  z = pixel :
  z = z + p1
  z = z * fn1(pixel + z)
  z = sqr(1/z)
  |z| < 4
  ;SOURCE: olio.frm
}


Mandp1 {; remember to turn on the inside options
        ; Replaced variable "e" with "ee" 5/05/99. G. Martin
  z=0, ee=0:
  ee=sqr(ee)+pixel
  z=ee-p1
  |ee|<=4
  ;SOURCE: ramiro.frm
}


MandPerturb (XAXIS) {; z^2 + c + p3*z    try p3(real) = 0.5 or -0.5
  z=pixel:  
  z=z*z + pixel + real(p3)*real(z)+imag(p3)*imag(z)  
  |z| <10  
  ;SOURCE: internet.frm
}


MandPhoenix {; v18  Based on algorithm by Joyce Haslam - Fractal
             ; Report iss 16. More details in Roger Steven's book
             ; `Fractal Programming in C'. Mandelbrot-style map
             ; of the Phoenix curves.
  z = (0,0), oldz = (0,0), c = pixel:
  newz = z * z + real(pixel) + oldz * imag(pixel)
  oldz = z
  z = newz
  |z| <= 4
  ;SOURCE: parser.frm
}


Mandring {; Jim Muth
  z=p1, c=pixel, d=fn1(c^p2)/p2:
  z=sqr(z)+d
  |z| <=p3
  ;SOURCE: 98msg.frm
}


MandTang (XYAXIS) {
  z = Pixel:  
  z = sin(z) / cos(z) + Pixel 
  |z| <= 4 
  ;SOURCE: skinv151.frm
}


Manfn+Exp {; Jon Horner - need to zoom out
  z = c = pixel :
  z = fn1(z) + 2.7182818 ^ z + c
  |z| <= 4
  ;SOURCE: parser.frm
}


ManFn+zsqrd (XAXIS) {; Jon Horner
  z = c = pixel :
  z = fn1(z) + (z*z) + c
  |z| <= 4
  ;SOURCE: parser.frm
}


ManI2I3(XAXIS) {
  c = z = pixel:
  q = sqr(z)
  z = imag(z*q) + flip(imag(q)) + c
  |z| < 25
  ;SOURCE: 97msg.frm
}


ManI2R3(XAXIS) {
  c = z = pixel:
  q = sqr(z)
  z = real(z*q) + flip(imag(q)) + c
  |z| < 25
  ;SOURCE: 97msg.frm
}


ManI3I2(YAXIS) {; +
  c = z = pixel:
  q = sqr(z)
  z = imag(q) +flip(imag(z*q)) + c
  |z| < 25
  ;SOURCE: 97msg.frm
}


ManI3R2 { 
  c = z = pixel:
  q = sqr(z)
  z = imag(z*q) +flip(real(q)) + c
  |z| < 10
  ;SOURCE: 97msg.frm
}


ManInTheOzone (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=cosxx(z)+pixel
  z=sin(z)+pixel
  x=x+1 
  |z|<=4 
  ;SOURCE: choice.frm
}


ManInTheOzoneC (XAXIS_NOPARM) { 
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSEIF (x<20)
    z=cosxx(z)+pixel
  ELSE
    z=sin(z)+pixel
  ENDIF
  x=x+1 
  |z|<=4 
  ;SOURCE: choice.frm
}


ManInTheOzoneC.1 (XAXIS_NOPARM) { 
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSEIF (x<20)
    z=cos(z)+pixel
  ELSE
    z=sin(z)+pixel
  ENDIF
  x=x+1 
  |z|<=4 
  ;SOURCE: choice.frm
}


manjul_lace {; Requires passes=1   George Martin, 1996
             ; Modified for IF..ELSE logic by Sylvie Gallet, March 1997
             ; If Real(p1) is:
             ;    0 : formula draws PHC manjul_lace
             ;    1 : formula draws mandel component only
             ;    2 : formula draws julia component  only
  IF (p1==1 || p1 == whitesq)
    z = c = 1.5*pixel
  ELSE
    z = pixel, c = (-.75, .1234567)
  ENDIF :
  z = z*z + c
  |z| <= 4
  ;SOURCE: ifs196.frm
}


Manlam[Fn||Fn] {; v18 - Jonathan Osuch
   ; This one doesn't work quite right, I don't know why.
   ; Note: use floating point
   ; Edited for Fractint v. 20 by George Martin, 10/98
  z = p1, shift = real(p2), x = |z| :
  IF (x<shift)
    z=pixel*fn1(z)
  ELSE
    z=pixel*fn2(z)
  ENDIF
  x=|z| 
  x<=64
  ;SOURCE: parser.frm
}


ManMiIa {
  z=0
  c=pixel:
  z=sqr(z)
  z=z+c-abs(imag(z))
  |z| <=4
  ;SOURCE: crocker.frm
}


ManMiIaJ (ORIGIN) {
  z=pixel
  c=P1:
  z=sqr(z)
  z=z+c-abs(imag(z))
  |z| <=4
  ;SOURCE: crocker.frm
}


ManMiIm {; Compare Crescent
  z=0
  c=pixel:
  z=sqr(z)
  z=z+c-imag(z)
  |z| <=4
  ;SOURCE: crocker.frm
}


ManMiImJ (ORIGIN) {
  z=pixel
  c=P1:
  z=sqr(z)
  z=z+c-imag(z)
  |z| <=4
  ;SOURCE: crocker.frm
}


ManMinusN-XZ {
  z=real(pixel)+flip(real(p1))
  c=imag(pixel)+flip(imag(p1)):
  z=(-z)^p2+(p3*c)
  |z| <= 16
  ;SOURCE: 97msg.frm
}


ManMinusN-YZ {
  z=real(pixel)+flip(real(p1))
  c=flip(imag(pixel))+imag(p1):
  z=(-z)^p2+(p3*c)
  |z| <= 16
  ;SOURCE: 97msg.frm
}


ManMiRe (XAXIS) {; Compare Crescent
  z=0
  c=pixel:
  z=sqr(z)
  z=z+c-real(z)
  |z| <=16
  ;SOURCE: crocker.frm
}


ManMiReJ (ORIGIN) {
  z=pixel
  c=P1:
  z=sqr(z)
  z=z+c-real(z)
  |z| <=16
  ;SOURCE: crocker.frm
}


ManN-2-pro-YW {; Jim Muth
  z=real(p1)+flip(real(pixel))
  g=imag(p1)+flip(imag(pixel))
  a=real(p2), b=imag(p2), c=real(p3), d=imag(p3):
  z=(a*(z^b))+(c*(z^d))+g
  |z| <= 16
  ;SOURCE: 97msg.frm
}


ManN-XW-YW {; Jim Muth, Thanks to Benno
            ; p3 = 0 = Julibrot XW plane
            ; p3 = 1 = Julibrot YW plane
            ; p3 = >0 <1 = Oblique planes
  z=flip(real(pixel))+real(p1)
  c=flip(imag(pixel))+imag(p1)
  a=p3, b=flip(cos(asin(p3))):
  z=z^p2+((a+b)*c)
  |z| <= 25
  ;SOURCE: frac_art.frm
}


ManN-YW {; Jim Muth
  z=real(p1)+flip(real(pixel))
  c=imag(p1)+flip(imag(pixel)):
  z=z^p2+(p3*c)
  |z| <= 16
  ;SOURCE: 97msg.frm
}


ManN-YWa {; Jim Muth
  z=real(p1)+flip(real(pixel))
  c=imag(p1)+flip(imag(pixel)):
  z=z^p2+(p3*c)
  |z| <= 16
  ;SOURCE: 0from_ml.frm
}


ManN-YZ {
  z=real(pixel)+flip(real(p1))
  c=flip(imag(pixel))+imag(p1):
  z=z^p2+(p3*c)
  |z| <= 16
  ;SOURCE: 97msg.frm
}


ManN-YZ-XZ {; Jim Muth, Thanks to Benno
            ; p3 = 0 = Julibrot YZ plane
            ; p3 = 1 = Julibrot XZ plane
            ; p3 = >0 <1 = Oblique planes
  z=real(pixel)+flip(real(p1))
  c=imag(pixel)+flip(imag(p1))
  a=p3, b=flip(cos(asin(p3))):
  z=z^p2+((a+b)*c)
  |z| <= 25
  ;SOURCE: 97msg.frm
}


manowar {; Chuck Ebbert                            added 12 Jan 1993
         ; p1=initial perturbation of z
         ; bailout is real(p2) (default 4)
  z = pixel + p1, z1=z, c=pixel
  t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  oldz = z
  z = sqr(oldz) + z1 + c
  z1 = oldz
  |z| <= t
  ;SOURCE: builtn2.frm
}


manowarj {; Chuck Ebbert                           added 12 Jan 1993
          ; p1 = Parameter c
          ; bailout is real(p2) (default 4)
  z = pixel, z1 = z, c = p1
  t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  oldz = z
  z = sqr(oldz) + z1 + c
  z1 = oldz
  |z| <= t
  ;SOURCE: builtn2.frm
}


ManPlIa {; Intended to be same as Slippery Slope
  z=0
  c=pixel:
  z=sqr(z)
  z=z+c+abs(imag(z))
  |z| <=4
  ;SOURCE: crocker.frm
}


ManPlIaJ (ORIGIN) {
  z=pixel
  c=P1:
  z=sqr(z)
  z=z+c+abs(imag(z))
  |z| <=4
  ;SOURCE: crocker.frm
}


ManPlIm2 {
  z=0
  c=pixel:
  z=sqr(z)
  z=z+imag(z)+c
  |z| <=4
  ;SOURCE: crocker.frm
}


ManPlImJ (ORIGIN) {
  z=pixel
  c=P1:
  z=sqr(z)
  z=z+c+imag(z)
  |z| <=4
  ;SOURCE: crocker.frm
}


ManPlP {
  z=0
  c=pixel:
  z=sqr(z)
  z=z+c+real(c)
  |z| <=4
  ;SOURCE: crocker.frm
}


ManPlQ {
  z=0
  c=pixel:
  z=sqr(z)
  z=z+c+imag(c)
  |z| <=4
  ;SOURCE: crocker.frm
}


ManPlRa {
  z=0
  c=pixel:
  z=sqr(z)
  z=z+c+abs(real(z))
  |z| <=4
  ;SOURCE: crocker.frm
}


ManPlRaJ (ORIGIN) {
  z=pixel
  c=P1:
  z=sqr(z)
  z=z+c+abs(real(z))
  |z| <=4
  ;SOURCE: crocker.frm
}


ManPlRe {; Compare Cresent
  z=0
  c=pixel:
  z=sqr(z)
  z=z+c+real(z)
  |z| <=4
  ;SOURCE: crocker.frm
}


ManPlReJ (ORIGIN) {; Compare Cresent
  z=pixel
  c=P1:
  z=sqr(z)
  z=z+c+real(z)
  |z| <=4
  ;SOURCE: crocker.frm
}


ManR2I3(XAXIS) {
  c = z = pixel:
  q = sqr(z)
  z = real(q) + flip(imag(z*q)) + c
  |z| < 10
  ;SOURCE: 97msg.frm
}


ManR2R3(XYAXIS) {
  c = z = pixel:
  q = sqr(z)
  z = real(z*q) + flip(real(q)) + c
  |z| < 10
  ;SOURCE: 97msg.frm
}


ManR3I2 {
  c = z = pixel:
  q = sqr(z)
  z = imag(q) + flip(real(z*q)) + c
  |z| < 25
  ;SOURCE: 97msg.frm
}


ManR3R2(XAXIS) {
  c = z = pixel:
  q = sqr(z)
  z = real(q) +flip(real(z*q)) + c
  |z| < 10
  ;SOURCE: 97msg.frm
}


Mans-G+SG-3-03 {; Test Variation on Sylvie Gallet formula
  z=c=pixel, iter=0, x = real(z), y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1)
  x1 = x - p2*fn1(y+p3*fn2(y))* (whitesq == 0) + c * whitesq
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test)  
  c = c*(1 - test) + test*magnification*c
  z = (z+ x1+flip(y1))*z+c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: bj-phc02.frm
}


Mans-G+SG-3-03b {; Test Variation on Sylvie Gallet formula
  z=c=pixel, iter=0, x = real(z), y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1)
  x1 = x - p2*fn1(y+p3*fn2(y))* (whitesq == 0) + c * whitesq
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test)  
  c = c*(1 - test) + test*magnification*c
  z = (x1+flip(y1)) * (whitesq == 0) + (z*z + c) * whitesq
  iter = iter + 1
  |z| <= 16
  ;SOURCE: bj-phc02.frm
}


mans-galore-011 {; Variation on Sylvie Gallet formula. 
                 ; George Martin [76440,1143]
                 ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel/(1.0,0.1), iter=0, x = real(z), y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  x1 = x - p2*fn1(y+p3*fn2(y))
  y1 = y - p2*fn1(x+p3*fn2(x))
  z = z*(1 - test) + x1+flip(y1)
  c = c*(1 - test) + test*magnification*c
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: bej011.frm
}


mans-galore-012 {; Variation on Sylvie Gallet formula. 
                 ; George Martin [76440,1143]
                 ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel, iter=0, x = real(z), y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1)
  x1 = x - p2*fn1(y+p3*fn2(y))
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + x1+flip(y1)
  c = c*(1 - test) + test*magnification*c
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: bej011.frm
}


mans-galore-013 {; Variation on Sylvie Gallet formula. 
                 ; George Martin [76440,1143] 
                 ; Modified Mans-Galore & Gallet 3-02  
  z=c=pixel, iter=0, x = real(z), y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1)
  x1 = x - p2*fn1(y+p3*fn2(y))
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + x1+flip(y1) 
  z = z*(1 - test) + y1+flip(x1) 
  c = c*(1 - test) + test*magnification*c
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: bej011.frm
}


mans-galore-018 {; Variation on Sylvie Gallet formula. 
                 ; George Martin [76440,1143]
                 ; Modified Mans-Galore & Gallet 3-02
                 ; Revised for Fractint v20 by G. Martin
  z=c=pixel, iter=0, x = real(z), y = imag(z) 
  nextzoom = iterspace = real(p1), magnification = imag(p1)
  x1 = x - p2*fn1(y+p3*fn2(y))
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + x1+flip(y1)
  c = c*(1 - test) + test*magnification*c
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: bej011.frm
}


mans-galore-019 {; Variation on Sylvie Gallet formula. 
                 ; George Martin [76440,1143]
                 ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel, iter=0, x = real(z), y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1)
  x1 = x - p2*fn1(y+p3*fn2(y))
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + x1+flip(y1)
  c = c*(1 - test) + test*magnification*c
  z = fn3(z)*fn4(z)+c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: bej011.frm
}


mans-galore-020 {; Variation on Sylvie Gallet formula. 
                 ; George Martin [76440,1143]
                 ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel, iter=0, x = real(z), y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1)
  x1 = x - p2*fn1(y+p3*fn2(y))
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + x1+flip(y1)
  c = c*(1 - test) + test*magnification*c
  z = fn3(z*z+c)
  iter = iter + 1
  |z| <= 16
  ;SOURCE: bej011.frm
}


mans-galore-021 {; Variation on Sylvie Gallet formula. 
                 ; George Martin [76440,1143]
                 ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel, iter=0, x = real(z), y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1)
  x1 = x - p2*fn1(y+p3*fn2(y))
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + y1+flip(x1)
  c = c*(1 - test) + test*magnification*c
  z = fn3(z*z+c)
  iter = iter + 1
  |z| <= 16
  ;SOURCE: bej011.frm
}


mans-galore-022 {; Variation on Sylvie Gallet formula. 
                 ; George Martin [76440,1143]
                 ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel, iter=0, x = real(z), y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1)
  x1 = x - p2*fn1(y+p3*fn2(y))
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + y1+y1+flip(x1+x1)
  c = c*(1 - test) + test*magnification*c
  z = fn3(z*z+c)
  iter = iter + 1
  |z| <= 16
  ;SOURCE: bej011.frm
}


mans-galore-024 {; Variation on Sylvie Gallet formula. 
                 ; George Martin [76440,1143]
                 ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel,  iter=0, x = real(z), y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1)
  x1 = x - p2*fn1(y+p3*fn2(y))
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + fn4(x1+flip(y1))
  c = c*(1 - test) + test*magnification*c
  z = fn3(z)*z+c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: bej011.frm
}


mans-galore-027 {; Variation on Sylvie Gallet formula. 
                 ; George Martin [76440,1143]
                 ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel, iter=0, x = real(z), y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1)
  x1 = x - p2*fn1(y+p3*fn2(y))
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + fn3(x1)+flip(fn4(y1))
  c = c*(1 - test) + test*magnification*c
  z = z*z+c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: bej011.frm
}


mans-galore-029 {; Variation on Sylvie Gallet formula. 
                 ; George Martin [76440,1143]
                 ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel, iter=0, x = real(z), y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1)
  x1 = x - p2*fn1(y+p3*fn2(fn3(y)))
  y1 = y - p2*fn1(x+p3*fn2(fn3(x))):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + fn4(x1)+flip(fn4(y1))
  c = c*(1 - test) + test*magnification*c
  z = z*z+c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: bej011.frm
}


mans-galore-032 {; Variation on Sylvie Gallet formula. 
                 ; George Martin [76440,1143]
                 ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel, iter=0, x = real(z), y = imag(z)
  nextzoom = iterspace = real(p1), magnification = imag(p1)
  x1 = x - p2*fn1(y+p3*fn2(y))
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + fn3(x1)+sqr(flip(fn4(y1)))
  c = c*(1 - test) + test*magnification*c
  z = z*z+c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: bej011.frm
}


mans-galore-036 {; Variation on Sylvie Gallet formula. 
                 ; George Martin [76440,1143]
                 ; Modified Mans-Galore & Gallet 3-02
  z = pixel, c = pixel, x = real(z), y = imag(z) 
  nextzoom = iterspace = real(p1), magnification = imag(p1)
  x1 = x - p2*fn1(y+p3*fn2(y))
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + fn3(x1)/flip(fn4(y1))
  c = c*(1 - test) + test*magnification*c
  z = z*z+c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: bej011.frm
}


mans-galore-037 {; Variation on Sylvie Gallet formula. 
                 ; George Martin [76440,1143]
                 ; Modified Mans-Galore & Gallet 3-02
  z = pixel, c = pixel, x = real(z), y = imag(z) 
  nextzoom = iterspace = real(p1), magnification = imag(p1)
  x1 = x - p2*fn1(y+p3*fn2(y))
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + fn3(x1)*flip(fn4(y1))
  c = c*(1 - test) + test*magnification*c
  z = z*z+c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: bej011.frm
}


ManTest1XY-XZ {
  z=real(pixel)+(p1*(imag(pixel)))+flip(real(p2))
  c=imag(pixel)+(p1*(real(pixel)))+flip(imag(p2)):
  z=z^p3+c
  |z| <= 16
  ;SOURCE: 97msg.frm
}


mantle {; Giuseppe Zito
  z = pixel
  c0 = real(p1)
  IF (real(p1)==0)
    c0 = -0.614927
  ENDIF
  : 
  x = real(z), y = imag(z)
  newx = c0 + y
  newy = x*x - y 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4   
  ;SOURCE: zg.frm
}


Mantura (XAXIS) {
  z = pixel, sspix = sqr(sin(pixel)):
  z = z * sspix + p1
  z = z * z + pixel
  |z| < 4
  ;SOURCE: altura.frm
}


Mantura_2 (XAXIS) {
  z = pixel, sspix = sin(sqr(pixel)):
  z = z * sspix + p1
  z = z * z + pixel
  |z| < 4
  ;SOURCE: altura.frm
}


many_man {; Modified Stephen C. Ferguson formula
          ; adapted for Fractint by Les St Clair, 1997
          ; use real p1 to set bailout (try p1=4)
          ; use real p2 to set number of mandels
          ; set fn1=ident, fn2=log for "default" formula
  z=0, c=pixel:
  z=(z*z)+fn1(fn2(c^p2)/p2)
  |z| <=p1
  ;SOURCE: many_man.frm
}


many_man_phc {; Modified Stephen C. Ferguson formula
              ; adapted for Fractint by Les St Clair, 1997
              ; phc variation by P. DiGiorgi
              ; use imag(p1) to set bailout
  z=0, c1=fn3(pixel), c0=fn4(pixel)
  IF (whitesq)
    v = (c1^p2)/p2
  ELSE
    v = (c0^p2)/p2
  ENDIF
  n = p3*fn1(fn2(v)):
  z = z^(real(p1)) + n
  |z| <= imag(p1)
  ;SOURCE: 97msg.frm
}


Many_mods {; Linda Allison May 15,1997
           ; modified by Sylvie Gallet
           ; modified again by Linda Allison
           ; and again by David Shanholtzer
           ; 1st parameter: real(p1) = bailout
           ; 2nd parameter: imag(p1) = number of sides
  z=0
  c=0.4*log(sqr(pixel^imag(p1))):
  z2=fn1(z)+c
  sqz2=fn2(z2)
  z=c*(1-sqz2)/(1+sqz2)
  |z| <= p1
  ;SOURCE: 98msg.frm
}


ManzanaJ {; ao950@FreeNet.Carleton.CA (Paul Derbyshire)
          ; Use floating point, this one is weird.}
  z=pixel, c=p1:
  z=sin(z)/(z*z*z-z)+c
  |z|>0.000001
  ;SOURCE: manzanaj.frm
}


ManzNwt { 
   ; Note that floating-point is required to make this compute accurately
  z = pixel, Root = 1:
  f=z^p2+pixel
  z = ((p1-1) * f^p1 + Root) / (p1 * f^(p1-1))
  .001 <= |f^p1 - Root|
  ;SOURCE: fractmix.frm
}


manzpower {; Chuck Ebbert                          added 12 Jan 1993
           ; p1 = initial perturbation of z
           ; p2 = exponent (default 2)
           ; bailout fixed at 4
  z = pixel + p1, c = pixel
  ex = (2 * (|p2|<=0) + p2 ):
  z = z^real(ex) + c   ; should be real(int(ex))          13 Jan 1993
  |z| <= 4
  ;SOURCE: builtn2.frm
}


manzzpwr {; Chuck Ebbert                           added 12 Jan 1993
          ; p1 = initial perturbation of z
          ; p2 = exponent (default 2)
          ; bailout fixed at 4
  z = pixel + p1, c = pixel
  ex = (2 * (|p2|<=0) + p2 ):
  z = z^z + z^real(ex) + c   ; should be real(int(ex))    13 Jan 1993
  |z| <= 4
  ;SOURCE: builtn2.frm
}


MarksJulia (ORIGIN) {; Jon Horner/Jonathan Osuch - Jun 1994
                     ; set p1 = (0.1,0.9), p2 = 1
                     ; if you want to vary both real and imag
                     ; parts of exponent use CmplxMarksJul
  z = pixel, c = p1, one = (1,0) :
  z = (c ^ (real(p2)-one)) * sqr(z) + c
  |z| <= 4
  ;SOURCE: parser.frm
}


MarksMandel (XAXIS) {; Jon Horner/Jonathan Osuch - Jun 1994
                     ; if you want to vary both real and imag
                     ; parts of exponent use CmplxMarksMand
  z = pixel + p1, c = pixel, one=(1,0) :
  z = (c ^ (real(p2)-one)) * sqr(z) + c
  |z| <= 4
  ;SOURCE: parser.frm
}


MarksMandelPwr (XAXIS) {
  z = pixel, c = z ^ (z - 1):
  z = c * sqr(z) + pixel
  |z| <= 4
  ;SOURCE: newform.frm
}


MarksMandelPwr_tan (XAXIS) {
  z = pixel, c = z ^ (z - 1):
  z = c * sin(z)/cos(z) + pixel
  |z| <= 4
  ;SOURCE: formulas.frm
}


marlinZZa (XAXIS) {; Prof Jm using Newton-Raphson method
                   ; use floating point with this one
  z=pixel, solution=1:
  z1=z^(z-1)
  z2=(((z-1)/z)+log(z))*z1
  z=z-((z1-1)/z2)
  0.05 <= |solution-z1|
  ;SOURCE: davfav1.frm
}


Mask {; Ron Barnett, 1993
      ; try fn1 = log, fn2 = sinh, fn3 = cosh
      ; P1 = (0,1), P2 = (0,1)
      ; Use floating point
  z = fn1(pixel):
  z = P1*fn2(z)^2 + P2*fn3(z)^2 + pixel
  |z| <= 4
  ;SOURCE: fractint.frm
}


master {; Giuseppe Zito
  z = pixel
  c1 = 0.688383
  c2 = -0.257283
  c4 = 0.259209
  d0 = 0.004197
  d3 = 0.93075
  d5 = 0.210723
  : 
  x = real(z), y = imag(z)
  s0 = x
  s0 = s0 *c1
  s0 = s0 *c2
  s1 = y
  s1 = s1 +c4
  s0 = s0 +s1
  newx = s0 
  s0 =d0
  s0 = s0 *x
  s0 = s0 *d3
  s0 = s0 /y
  s0 = s0 -d5
  s0 = s0 -x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy 
  ;SOURCE: zg.frm
}


matress {; Giuseppe Zito
  z = pixel
  c2 = 0.68162298
  c8 = 0.96401101
  d1 = -0.95945197
  d5 = -0.458745
  d12 = -0.425805
  d15 = -0.36000001
  : 
  x = real(z), y = imag(z)
  s0 = y
  s0 = s0 /c2
  s0 = s0 *y
  s0 = s0 *y
  s0 = s0 -y
  s0 = s0 *c8
  newx = s0 
  s0 = y
  s0 = s0 /d1
  s0 = s0 +y
  s0 = s0 *y
  s0 = s0 -d5
  s0 = s0 -y
  s0 = s0 +y
  s1 =d12
  s1 = s1 *x
  s1 = s1 /x
  s1 = s1 -d15
  s0 = s0 *s1
  s0 = s0 /x
  s0 = s0 -y
  s0 = s0 +x
  s0 = s0 +y
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


Matsch^-1 {; davon ist der K-Matsch die Julia-Menge
  Grund=pixel+1/(fn1(p2*pixel)-p1)+1/(fn2(p2*pixel)-p1)
  z=Grund:
  z=((Grund-1)*z^Grund+1)/(Grund*z^(Grund-1)) 
  0.001<=|z^Grund-1|
  ;SOURCE: crazynwt.frm
}


May {; Sylvie Gallet, Dec 1997
     ; Newton's method applied to z^3 - 1 = 0
     ; Coloring algorithm by Scott Burns
     ; Use decomp = 256 and periodicity = 0
  z1 = pixel, iter = 0
  a = p1*(0,0.0245436)    ; real(p1) * 2i pi / 256
  :
  mz = cabs(z1)
  z2 = z1*z1
  z1 = ((2.5,-0.7)*z1*z2 + (0.5,0.7)) / (3*z2)
  dz = abs(abs(real(z1)-0.25)-0.75)
  IF (dz <= 0.1)
    z = exp((iter + 10*dz)*a)
    cont = 0
  ELSEIF (mz <= 0.25)
    z = exp((256/p1-1 + 4*mz)*a), cont = 0
  ELSE
    iter = iter + 1, cont = 1
  ENDIF
  cont
  ;SOURCE: 97msg.frm
}


May-2 {; Sylvie Gallet, Dec 1997
       ; Newton's method applied to z^3 - 1 = 0
       ; Use decomp = 256 and periodicity = 0
  z1 = pixel, iter = 0, j = -0.5 + flip(sqrt(0.75)), k = conj(j)
  a = p1*(0,0.0245436)    ; real(p1) * 2i pi / 256
  :
  mz = cabs(z1)
  z2 = z1*z1
  z1 = ((2.5,-0.7)*z1*z2 + (0.5,0.7)) / (3*z2)
  dz = abs(real(z1+0.5))
  IF (dz > 0.1)
    dz = abs(real(z1*j+0.5))
    IF (dz > 0.1)
      dz = abs(real(z1*k+0.5))
    ENDIF
  ENDIF
  IF (dz <= 0.1)
    z = exp((iter + 10*dz)*a), cont = 0
  ELSEIF (mz <= 0.25)
    z = exp((256/p1-1 + 4*mz)*a), cont = 0
  ELSE
    iter = iter + 1, cont = 1
  ENDIF
  cont
  ;SOURCE: 98msg.frm
}


mc {
  z=0, c=pixel:
  z=sqr(z)+c
  c=c+p1*c
  |z| <= 4
  ;SOURCE: explode.frm
}


MConj_Maxi(XAXIS) {; an automatic Mix
  z = a = pixel
  b = conj(pixel)
  IF(p1==0)
    bailout=8
  ELSE
    bailout = |p1|
  ENDIF:
  qz = sqr(z)
  u = qz + a
  v = qz + b
  IF(|u|<|v|)
    z = v
  ELSE
    z = u
  ENDIF
  |z|<bailout
  ;SOURCE: 97msg.frm
}


MConj_Mini(XAXIS) {; an automatic Mix
  z = a = pixel
  b = conj(pixel)
  IF(p1==0)
    bailout=8
  ELSE
    bailout = |p1|
  ENDIF:
  qz = sqr(z)
  u = qz + a
  v = qz + b
  IF(|u|<|v|)
    z = u
  ELSE
    z = v
  ENDIF
  |z|<bailout
  ;SOURCE: 97msg.frm
}


MDRAG (XAXIS) {
  z=.5
  c=pixel:
  z=c*z*(1-z)
  |z| <=4
  ;SOURCE: crocker.frm
}


medusa {; Giuseppe Zito  (132)
  z=pixel, a=0.598459, b=-0.063717:
  x = real(z), y = imag(z)
  newx = (x*y + a*x)/(y+b)
  newy = x*x/y - x*x
  z = newx + flip(newy)
 (newx < 4) && (newx > -4) && (newy < 4) && (newy > -4)
  ;SOURCE: zg.frm
}


merryxms_01 {; Les St Clair [101461.2032@compuserve.com] December 1996
             ; Fractint formula containing "Merry Christmas" text, based on
             ; Jim Deutch's snowflake "JDFrmF23.frm" and modified using
             ; FracText 1.0 (alpha 5b) by Jan Maarten van der Valk
             ; 'periodicity=0' and 'passes=1' recommended
  x=real(scrnpix)/real(scrnmax)
  y=(imag(scrnmax)-imag(scrnpix))/real(scrnmax), z=x+flip(y)
  xm=2.5*x
  chrM1 = (y<-xm+1.2086||y<xm-0.24556)&&y>-xm+1.14223&&y>xm-0.31193||(x>0.\
  23889&&x<0.26354)||(x>0.31812&&x<0.34277)
  chrE2 = x<0.37467||y<0.42465||(y<0.48482&&y>0.46018)||y>0.52035&&x>0.350\
  02&&x<0.43267
  xr=2*x
  chrR3 = y<0.48482&&y>0.46018||y>0.52035||x<0.46457&&x>0.43992&&x<0.49357\
  ||(abs(cabs(z+(-0.49357,-0.50259))-0.03009)<0.01232&&x>0.49357)||(y<0.47\
  25&&y<-xr+1.47197&&y>-xr+1.41685)
  chrR4 = y<0.48482&&y>0.46018||y>0.52035||x<0.56789&&x>0.54324&&x<0.59689\
  ||(abs(cabs(z+(-0.59689,-0.50259))-0.03009)<0.01232&&x>0.59689)||(y<0.47\
  25&&y<-xr+1.6786&&y>-xr+1.62348)
  xy=2*x
  chrY5 = y<xy-0.9221&&y>xy-0.97722||(y>-xy+1.8381&&y<-xy+1.89322)&&y>xy-0\
  .97722
  test1 = chrM1||chrE2||chrR3||chrR4||chrY5&&y>0.4&&y<0.545
  xc=1*x
  chrC6 = abs(cabs(z+(-0.1282,-0.2125))-0.06018)<0.01232&&(x<0.1282||y>xc+\
  0.0843||y<-xc+0.3407)
  chrH7 = x<0.21136||x>0.25486||(y<0.22482&&y>0.20018)&&x>0.18671&&x<0.279\
  51
  chrR8 = y<0.22482&&y>0.20018||y>0.26035||x<0.31141&&x>0.28676&&x<0.34041\
  ||(abs(cabs(z+(-0.34041,-0.24259))-0.03009)<0.01232&&x>0.34041)||(y<0.21\
  25&&y<-xr+0.90565&&y>-xr+0.85053)
  chrI9 = x>0.39007&&x<0.41472
  chrS10 = abs(cabs(z+(-0.46439,-0.24259))-0.03009)<0.01232&&(x<0.46439||y\
  >0.24259)||(abs(cabs(z+(-0.46439,-0.18241))-0.03009)<0.01232&&(x>0.46439\
  ||y<0.18241))
  chrT11 = y>0.26035&&x>0.51405&&x<0.6112||(x>0.5503&&x<0.57495)
  chrM12 = (y<-xm+1.89749||y<xm-1.45445)&&y>-xm+1.83112&&y>xm-1.52083||(x>\
  0.61845&&x<0.6431)||(x>0.69768&&x<0.72233)
  xa=3*x
  chrA13 = y>xa-2.12669||y>-xa+2.61874||(y<0.198&&y>0.17335)&&y<xa-2.04874\
  &&y<-xa+2.69669
  chrS14 = abs(cabs(z+(-0.90189,-0.24259))-0.03009)<0.01232&&(x<0.90189||y\
  >0.24259)||(abs(cabs(z+(-0.90189,-0.18241))-0.03009)<0.01232&&(x>0.90189\
  ||y<0.18241))
  test2 = chrC6||chrH7||chrR8||chrI9||chrS10||chrT11||chrM12||chrA13||chrS\
  14&&y>0.14&&y<0.285
  test0=test1||test2
      ; Import of formula 'JDFrmF23' from file JDFLAKE.FRM
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  sq3 = 0.5 + flip(sqrt(3)/2)
  c = (r == 0) + sq3*(r == 1) + conj(sq3)*(r == 2)
  z =c*pixel:
  z=z*z+p1
  |z|<4&&test0==0
  ;SOURCE: 96msg.frm
}


merryxms_02 {; Les St Clair [101461.2032@compuserve.com] December 1996
             ; Fractint formula containing "Merry Christmas" text, based on
             ; Jo Weber's ComplexNewton_01.frm and modified using
             ; FracText 1.0 (alpha 5b) by Jan Maarten van der Valk
             ; modified 12/1998 by JoWeber
             ; 'periodicity=0' and 'passes=1' recommended
  x=real(scrnpix)/real(scrnmax)
  y=(imag(scrnmax)-imag(scrnpix))/real(scrnmax), z=x+flip(y)
  xm=2.5*x
  chrM1 = (y<-xm+1.2086||y<xm-0.24556)&&y>-xm+1.14223&&y>xm-0.31193||(x>0.\
  23889&&x<0.26354)||(x>0.31812&&x<0.34277)
  chrE2 = x<0.37467||y<0.42465||(y<0.48482&&y>0.46018)||y>0.52035&&x>0.350\
  02&&x<0.43267
  xr=2*x
  chrR3 = y<0.48482&&y>0.46018||y>0.52035||x<0.46457&&x>0.43992&&x<0.49357\
  ||(abs(cabs(z+(-0.49357,-0.50259))-0.03009)<0.01232&&x>0.49357)||(y<0.47\
  25&&y<-xr+1.47197&&y>-xr+1.41685)
  chrR4 = y<0.48482&&y>0.46018||y>0.52035||x<0.56789&&x>0.54324&&x<0.59689\
  ||(abs(cabs(z+(-0.59689,-0.50259))-0.03009)<0.01232&&x>0.59689)||(y<0.47\
  25&&y<-xr+1.6786&&y>-xr+1.62348)
  xy=2*x
  chrY5 = y<xy-0.9221&&y>xy-0.97722||(y>-xy+1.8381&&y<-xy+1.89322)&&y>xy-0\
  .97722
  test1 = chrM1||chrE2||chrR3||chrR4||chrY5&&y>0.4&&y<0.545
  xc=1*x
  chrC6 = abs(cabs(z+(-0.1282,-0.2125))-0.06018)<0.01232&&(x<0.1282||y>xc+\
  0.0843||y<-xc+0.3407)
  chrH7 = x<0.21136||x>0.25486||(y<0.22482&&y>0.20018)&&x>0.18671&&x<0.279\
  51
  chrR8 = y<0.22482&&y>0.20018||y>0.26035||x<0.31141&&x>0.28676&&x<0.34041\
  ||(abs(cabs(z+(-0.34041,-0.24259))-0.03009)<0.01232&&x>0.34041)||(y<0.21\
  25&&y<-xr+0.90565&&y>-xr+0.85053)
  chrI9 = x>0.39007&&x<0.41472
  chrS10 = abs(cabs(z+(-0.46439,-0.24259))-0.03009)<0.01232&&(x<0.46439||y\
  >0.24259)||(abs(cabs(z+(-0.46439,-0.18241))-0.03009)<0.01232&&(x>0.46439\
  ||y<0.18241))
  chrT11 = y>0.26035&&x>0.51405&&x<0.6112||(x>0.5503&&x<0.57495)
  chrM12 = (y<-xm+1.89749||y<xm-1.45445)&&y>-xm+1.83112&&y>xm-1.52083||(x>\
  0.61845&&x<0.6431)||(x>0.69768&&x<0.72233)
  xa=3*x
  chrA13 = y>xa-2.12669||y>-xa+2.61874||(y<0.198&&y>0.17335)&&y<xa-2.04874\
  &&y<-xa+2.69669
  chrS14 = abs(cabs(z+(-0.90189,-0.24259))-0.03009)<0.01232&&(x<0.90189||y\
  >0.24259)||(abs(cabs(z+(-0.90189,-0.18241))-0.03009)<0.01232&&(x>0.90189\
  ||y<0.18241))
  test2 = chrC6||chrH7||chrR8||chrI9||chrS10||chrT11||chrM12||chrA13||chrS\
  14&&y>0.14&&y<0.285
  test0=test1||test2
       ; Import of formula
  pr = 1/p1, pm1 = 1-pr, pm2 = 1-p1,  z = pixel :
  oldz = z
  z = pm1 * z + pr * z^pm2
  |(z-oldz)|>=0.000001&&test0==0
  ;SOURCE: 98msg.frm
}


mfn2fn {
  z=pixel:
  power = fn2(z)
  z = fn1(z)^power + pixel
  |z| < p2
  ;SOURCE: fractals.frm
}


mfnc {
  z=0, c=pixel:
  z=sqr(z)+c
  c=c+p1*fn1(c)
  |z| <= 4
  ;SOURCE: explode.frm
}


mfnz {
  z=0, c=pixel:
  z=sqr(z)+c
  c=c+p1*fn1(z)
  |z| <= 4
  ;SOURCE: explode.frm
}


MGen_Maxi {; generalized Minimax-Set 
           ; (p1 and p2 may not both be 0!)
           ; p1 = (-1,0) and p2 = (0,-1) gives Mpm
           ; p1 = (1,0)  and p2 = (0,-1) gives MConj
           ; p1 = (-1,0) and p2 = (0,1)  gives MXConj
  IF(p1==0)
    IF(p2==0)
      p1 = -1
      p2 = flip(-1) ; use Mpm as default
    ENDIF
  ENDIF
  z = a = pixel
  ra = real(a)
  ia = imag(a)
  b = real(p1)*ra + real(p2)*ia + flip(imag(p1)*ra+imag(p2)*ia)
  IF(p3==0)
    bailout=8
  ELSE
    bailout = |p3|
  ENDIF:
  qz = sqr(z)
  u = qz + a
  v = qz + b
  IF(|u|<|v|)
    z = v
  ELSE
    z = u
  ENDIF
  |z|<=bailout
  ;SOURCE: 97msg.frm
}


MGen_Mini {; generalized Minimax-Set 
           ; (p1 and p2 may not both be 0!)
           ; p1 = (-1,0) and p2 = (0,-1) gives Mpm
           ; p1 = (1,0)  and p2 = (0,-1) gives MConj
           ; p1 = (-1,0) and p2 = (0,1)  gives MXConj
  IF(p1==0)
    IF(p2==0)
      p1 = -1
      p2 = flip(-1) ; use Mpm as default
    ENDIF
  ENDIF
  z = a = pixel
  ra = real(a)
  ia = imag(a)
  b = real(p1)*ra + real(p2)*ia + flip(imag(p1)*ra+imag(p2)*ia)
  IF(p3==0)
    bailout=8
  ELSE
    bailout = |p3|
  ENDIF:
  qz = sqr(z)
  u = qz + a
  v = qz + b
  IF(|u|<|v|)
    z = u
  ELSE
    z = v
  ENDIF
  |z|<=bailout
  ;SOURCE: 97msg.frm
}


Mi_Maxi {; an automatic Mix
  z = a = pixel
  b = (0,1) * pixel
  IF(p1==0)
    bailout=8
  ELSE
    bailout = |p1|
  ENDIF:
  qz = sqr(z)
  u = qz + a
  v = qz + b
  IF(|u|<|v|)
    z = v
  ELSE
    z = u
  ENDIF
  |z|<=bailout
  ;SOURCE: 97msg.frm
}


Mi_Mini {; an automatic Mix
  z = a = pixel
  b = (0,1) * pixel
  IF(p1==0)
    bailout=8
  ELSE
    bailout = |p1|
  ENDIF:
  qz = sqr(z)
  u = qz + a
  v = qz + b
  IF(|u|<|v|)
    z = u
  ELSE
    z = v
  ENDIF
  |z|<=bailout
  ;SOURCE: 97msg.frm
}


Michaelbrot (origin) {; based on Golden Mean
  z = pixel:
  z = sqr(z) + ((sqrt 5 + 1)/2) 
  |z| <= 4
  ;SOURCE: drcha.frm
}


MikeTan (XAXIS) {; Mike Traynor
  c = z = pixel:
  z = z*tan(z) + c
  |z| <= 4
  ;SOURCE: fract182.frm
}


Mind_2 {
   ; These formulas were developed after having read
   ; COMPUTERS AND THE IMAGINATION [Chapter 27] Turning
   ; a Universe Inside-Out.  This is just a new venture
   ; and I am still exploring this rich area.
   ; This Fractint .FRM file (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = c = pixel:
  z = c * sin(1 / z)
  |z| <= 100
  ;SOURCE: physics.frm
}


Mind_3 {
   ; This Fractint .FRM file (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = c = pixel:
  z = c * sin(1 / z)
  z = z * z + c
  |z| <= 4
  ;SOURCE: physics.frm
}


Mind_4 {
   ; This Fractint .FRM file (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = c = pixel
  z = c * sin(1 / z):
  z = z * z + c
  |z| <= 4
  ;SOURCE: physics.frm
}


Mind_5 {
   ; This Fractint .FRM file (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = c = pixel:
  z = c * sin(1 / z)
  z = z * z
  |z| <= 100
  ;SOURCE: physics.frm
}


Mine-10-2-2 {; Linda Allison
  z = pixel, c = z ^ z:
  z2 = (pixel ^ (z + 1)) + (fn1(p1))/3
  z = z2/p1 + c - z2
  |z| <= p2 + 3
  ;SOURCE: abpf96.frm
}


MiniSanMarco1 {
  z = pixel, c = (-0.1613432317972183, 1.036044612526894)
  z = z*z + c
  |z| < 4
  ;SOURCE: 99msg.frm
}


minmaxc_jul {; Kerry Mitchell
   ; colors the screen one color if the iterate falls between the
   ; high and low bounds, otherwise leaves it blank
   ; Julia set--c=p1, bailout=real(p2)
   ; low and high bounds are set through p3--
   ; center of range = real(p3)*|c| (try 1)
   ; width of range = imag(p3) (try 0.05)
   ; color with single-pass mode and decomp
  zc=pixel, c=p1, r=real(p2), z=1
  rc=|c|, k1=real(p3)*rc, k2=imag(p3)*0.5
  lo=k1*(1-k2), hi=k1*(1+k2):
  zc=sqr(zc)+c, rzc=|zc|
  IF ((rzc>lo)&&(rzc<hi))
    z=-1
  ENDIF
  rzc < r
  ;SOURCE: 98msg.frm
}


minmaxc_man {; Kerry Mitchell lkmitch@primenet.com
             ; minmaxc_jul as mandelized by Mike Traynor
    ; colors the screen one color if the iterate falls between the
    ; high and low bounds, otherwise leaves it blank
    ; Mandel set--c=pixel, bailout=real(p1)
    ; low and high bounds are set through p3--
    ; center of range = real(p2)*|c| (try 1)
    ; width of range = imag(p2) (try 0.05)
    ; color with single-pass mode and decomp
  zc=c=pixel, r=real(p1), z=1
  rc=|c|, k1=real(p2)*rc, k2=imag(p2)*0.5
  lo=k1*(1-k2), hi=k1*(1+k2):
  zc=sqr(zc)+c, rzc=|zc|
  IF ((rzc>lo)&&(rzc<hi))
    z=-1
  ENDIF
  rzc < r
  ;SOURCE: fraclist.frm
}


minN-XY-XWrot {; Jim Muth, thanks to Benno Schmid
   ; real(p1)=rotation angle in degrees, imag(p1)=power of Z
   ; p2 and p3=rotation point and parallel planes
  a=real(p1), b=imag(p1)
  z=sin(a*.01745329251994)*flip(imag(pixel))+p2
  c=cos(a*.01745329251994)*flip(imag(pixel))+real(pixel)+p3:
  z=(-z)^b+c
  |z| <= 16
  ;SOURCE: 97msg.frm
}


minN-XY-YWrot {; Jim Muth  M to R rotation
    ; real(p1)=rotation angle in degrees, imag(p1)=power of Z
    ; p2 and p3 rotation point and parallel planes
  a=real(p1), b=imag(p1)
  z=sin(a*.01745329251994)*flip(real(pixel))+p2
  c=cos(a*.01745329251994)*real(pixel)+flip(imag(pixel))+p3:
  z=(-z)^b+c
  |z| <= 16
  ;SOURCE: 98msg.frm
}


minN-XY-YZrot {; Jim Muth, thanks to Benno
   ; real(p1)=rotation angle in degrees, imag(p1)=power of Z
   ; p2=parallel planes, p3=rotation point and parallel planes
  a=real(p1), b=imag(p1)
  z=sin(a*.01745329251994)*real(pixel)+p2
  c=cos(a*.01745329251994)*real(pixel)+flip(imag(pixel))+p3:
  z=(-z)^b+c
  |z| <= 16
  ;SOURCE: 97msg.frm
}


MiraSinPar {; Peter Anders anders@physik.hu-berlin.de 
  xo=real(p1), yo=imag(p1), a=real(pixel), b=imag(pixel):
  f=a*xo+(2-2*a)*sin(xo)
  x=b*yo+f
  f=a*x+(2-2*a)*sin(x)
  y=-xo+f
  z=x+y*(0,1)
  xo=x
  yo=y        
  |fn1(z)|<real(p2) 
  ;SOURCE: anders.frm
}


Mite (XAXIS) {; That mandel-thingy looks like mite, yes?  Or a rabbit :).
  z = pixel:
  z1 = z*z+pixel
  z2 = z*z*z+(p1)
  z = z1+z2-(z1/z2)
  |z| <= 4
  ;SOURCE: jute.frm
}


MixInv2waypro {; Jim Muth
  z=c=pixel:
  z=(-z)^p1+(p2*(-z)^p3)+c
  |z| <= 100
  ;SOURCE: 98msg.frm
}


MixMan2waypro {; Jim Muth
               ; As posted in Fractal-Art, 5/10/97
  z=c=pixel:
  z=z^p1+(p2*z^p3)+c
  |z| <= 100
  ;SOURCE: 97msg.frm
}


MixMan3wayPro {; Jim Muth
               ; Replaced variable "e" with "ee" 5/05/99. G. Martin
  z=g=pixel, a=real(p1), b=imag(p1), c=real(p2)
  d=imag(p2), ee=real(p3), f=imag(p3):
  z=(a*z^b)+(c*z^d)+(ee*z^f)+g
  |z| <= 100
  ;SOURCE: 97msg.frm
}


MixSqrProJulib {; Jim Muth
                ; As posted in Fractal-Art, 5/5/96
                ; Replaced variable "e" with "ee" 5/05/99. G. Martin
  z=pixel, a=real(p1), b=imag(p1)
  c=real(p2), d=imag(p2), ee=p3+(d*pixel):
  z=(a*sqr(z))+(b*z^c)+ee
  |z| <= 100
  ;SOURCE: 97msg.frm
}


MixSqrProJulib_2 {; Jim Muth
                  ; Replaced variable "e" with "ee" 5/05/99. G. Martin
  z=pixel, a=real(p1), b=imag(p1)
  c=real(p2), d=imag(p2), ee=p3+(d*pixel):
  z=(a*sqr(z))+(b*z^c)+ee
  |z| <= 100
  ;SOURCE: 97msg.frm
}


mixup { 
  z=fn1(pixel):
  z=sqr(z)+fn2(pixel)
  |z|<= 4 
  ;SOURCE: test.frm
}


MixUpJ   {; (c) Jay Hill, 1998
          ; make sure p1 <> p2 and w <> 0
  u=p1, v=p2, w=.5, x=v-u
  c=p3    ; Julia parameter 
  z=pixel ; critical z=(-u/v/w)^(1/x)
  :
  z=z^u + w*z^v + c
  |z| <= 1000
  ;SOURCE: 98msg.frm
}


MixUpJ2  {; (c) Jay Hill, 1998
          ; make sure p1 <> p2 and p3 <> 0
  u=p1, v=p2, w=p3, x=v-u
  c=pixel/w
  z=(-u/v/w)^(1/x)
  :
  z=z^u + w*z^v + c
  |z| <= 1000 
  ;SOURCE: Muth's FOTD 2005-10-15
}


MJ_Maxi(XAXIS_NOIMAG) {; an automatic Mix
                       ; staggering from M- to J-Set
  z = a = pixel
  b = p1
  bailout = |p1| + 8:
  qz = sqr(z)
  u = qz + a
  v = qz + b
  IF(|u|<|v|)
    z = v
  ELSE
    z = u
  ENDIF
  |z|<bailout
  ;SOURCE: 97msg.frm
}


MJ_Mini(XAXIS_NOIMAG) {; an automatic Mix
                       ; staggering from M- to J-Set
  z = a = pixel
  b = p1
  bailout = |p1| + 8:
  qz = sqr(z)
  u = qz + a
  v = qz + b
  IF(|u|<|v|)
    z = u
  ELSE
    z = v
  ENDIF
  |z|<bailout
  ;SOURCE: 97msg.frm
}


MJM-PHC004 {
  z=0, c=pixel
  newpixel=pixel, iter=0 
  reduction=real(p1) + (real(p1)==0)
  nextzoom=iterspace=(p3>0)*p3 + (p3<=0)*256
  rotation=pi*flip(imag(p1))/180
  compt=0, limit = 100, bailout = 4
  p = (-0.743380900000982,-0.131850030300002):
  test = (iter == nextzoom)
  test1 = (compt<limit)
  nextzoom = nextzoom + test*iterspace
  newpixel = newpixel*(1-test) + test*reduction*(newpixel-p2)*exp(rotation)
  z = z*(1 - test) 
  c = (c*(1 - test) + test*newpixel) * whitesq + (c*test1+p*(1-test1)) * (whitesq == 0)
  z = z*z + c
  iter = iter + 1
  compt = compt+1
  |z| <= 16
  ;SOURCE: nm_mj.frm
}


MJM-PHC01 {
  z = c = pixel 
  compt = 0, limit = real(p1), bailout = 4
  c1 = (0.34396372130558980 , 0.05608272738673762)
  c2 = (-0.72141758920523890 , 0.25918045895127010)
  delta = c2-c1, b = c+delta:
  p = (-0.743380900000982,-0.131850030300002)
  test1 = (compt<limit), test2 = (compt!=limit)
  z = z * fn1(test1)
  c = (b - delta * test1) * (whitesq == 0)\ 
         + (c*test1+p*(1-test1)) * whitesq
  z = z*z+c
  compt = compt+1
  |z| <= bailout
  ;SOURCE: mjm-phc.frm
}


MJM-PHC02 {
  z=0, c=pixel
  newpixel=pixel, iter=0 
  reduction=real(p1) + (real(p1)==0)
  nextzoom=iterspace=(p3>0)*p3 + (p3<=0)*256
  rotation=pi*flip(imag(p1))/180
  compt=0, limit = 100, bailout = 4
  p = (-0.743380900000982,-0.131850030300002):
  test = (iter == nextzoom)
  test1 = (compt<limit)
  nextzoom = nextzoom + test*iterspace
  newpixel = newpixel*(1-test) \
        + test*reduction*(newpixel-p2)*exp(rotation)
  z = z*(1 - test) 
  c = (c*(1 - test) + test*newpixel) * whitesq\ 
        + (c*test1+p*(1-test1)) * (whitesq == 0)
  z = z*z + c
  iter = iter + 1
  compt = compt+1
  |z| <= 16
  ;SOURCE: mjm-phc.frm
}


MJM-PHC03 {
  z=0, c=pixel
  newpixel=pixel, iter=0 
  reduction=real(p1) + (real(p1)==0)
  nextzoom=iterspace=(p3>0)*p3 + (p3<=0)*256
  rotation=pi*flip(imag(p1))/180
  compt=0, limit = 100, bailout = 4
  p = (-0.743380900000982,-0.131850030300002):
  test = (iter == nextzoom)
  test1 = (compt<limit)
  nextzoom = nextzoom + test*iterspace
  newpixel = fn1(newpixel)*(1-test)\ 
       + test*reduction*(fn2(newpixel)-p2)*exp(rotation)
  z = z*(1 - test) 
  c = (c*(1 - test) + test*newpixel) * (whitesq == 0)\ 
            + (c*test1+p*(1-test1)) * whitesq
  z = z*z + c
  iter = iter + 1
  compt = compt+1
  |z| <= 16
  ;SOURCE: mjm-phc.frm
}


MJM-PHC04 {
  z=0, c=pixel
  newpixel=pixel, iter=0 
  reduction=real(p1) + (real(p1)==0)
  nextzoom=iterspace=(p3>0)*p3 + (p3<=0)*256
  rotation=pi*flip(imag(p1))/180
  compt=0, limit = 100, bailout = 4
  p = (-0.743380900000982,-0.131850030300002):
  test = (iter == nextzoom)
  test1 = (compt<limit)
  nextzoom = nextzoom + test*sqrt(iterspace)
  newpixel = newpixel*(1-test)\ 
       + test*reduction*(newpixel-p2)*exp(rotation)
  z = z*(1 - test) 
  c = (c*(1 - test) + test*newpixel) * (whitesq == 0)\ 
       + (c*test1+p*(1-test1)) * whitesq
  z = z*z + c
  iter = iter + 1
  compt = compt+1
  |z| <= 16
  ;SOURCE: mjm-phc.frm
}


MJM-PHC05 {
  z=0, c=pixel
  newpixel=pixel, iter=0 
  reduction=real(p1) + (real(p1)==0)
  nextzoom=iterspace=(p3>0)*p3 + (p3<=0)*256
  rotation=pi*flip(imag(p1))/180
  compt=0, limit = 100, bailout = 4
  p = (-0.743380900000982,-0.131850030300002):
  test = (iter == nextzoom)
  test1 = (compt<limit)
  nextzoom = nextzoom + test*iterspace
  newpixel = newpixel*(1-test)\ 
       + test*flip(reduction)*(newpixel-p2)*exp(rotation)
  z = z*(1 - test) 
  c = (c*(1 - test) + test*newpixel) * (whitesq == 0)\ 
        + (c*test1+p*(1-test1)) * whitesq
  z = z*z + c
  iter = iter + 1
  compt = compt+1
  |z| <= 16
  ;SOURCE: mjm-phc.frm
}


MJM-PHC06 {
  z=0, c=pixel
  newpixel=pixel, iter=0 
  reduction=real(p1) + fn1((real(p1)==0))
  nextzoom=iterspace=(p3>0)*p3 + (p3<=0)*256
  rotation=pi*flip(imag(p1))/180
  compt=0, limit = 100, bailout = 4
  p = (-0.743380900000982,-0.131850030300002):
  test = fn3(iter == nextzoom)
  test1 = fn4(compt<limit)
  nextzoom = nextzoom + test*iterspace
  newpixel = newpixel*(1-test)\ 
       + test*flip(reduction)*fn2(newpixel-p2)*exp(rotation)
  z = z*(1 - test) 
  c = (c*(1 - test) + test*newpixel) * (whitesq == 0)\ 
       + (c*test1+p*(1-test1)) * whitesq
  z = z*z + c
  iter = iter + 1
  compt = compt+1
  |z| <= 16
  ;SOURCE: mjm-phc.frm
}


MJM-PHC07 {
  z=0, c=pixel
  newpixel=pixel, iter=0 
  reduction=real(p1) + (real(p1)==0)
  nextzoom=iterspace=(p3>0)*p3 + (p3<=0)*256
  rotation=pi*flip(imag(p1))/180
  compt=0, limit = 100, bailout = 4
  p = fn1(-0.743380900000982,-0.131850030300002)\
        ^fn2(-0.743380900000982,-0.131850030300002):
  test = (iter == nextzoom)
  test1 = (compt<limit)
  nextzoom = nextzoom + test*iterspace
  newpixel = newpixel*(1-test)\ 
      + test*flip(reduction)*(newpixel-p2)*exp(rotation)
  z = z*(1 - test) 
  c = (c*(1 - test) + test*newpixel) * whitesq\ 
      + (c*test1+p*(1-test1)) * (whitesq == 0)
  z = z*z + c
  iter = iter + 1
  compt = compt+1
  |z| <= 16
  ;SOURCE: mjm-phc.frm
}


MJM-PHC08 {
  z=0, c=pixel
  newpixel=pixel, iter=0 
  reduction=real(p1) + (real(p1)==0)
  nextzoom=iterspace=(p3>0)*p3 + (p3<=0)*256
  rotation=pi*flip(imag(p1))/180
  compt=0, limit = 100, bailout = 4
  p = fn1(p2):
  test = (iter == nextzoom)
  test1 = (compt<limit)
  nextzoom = nextzoom + test*iterspace
  newpixel = newpixel*(1-test)\ 
      + test*flip(reduction)*(newpixel-p2)*exp(rotation)
  z = z*(1 - test) 
  c = (c*(1 - test) + test*newpixel) * whitesq\ 
      + (c*test1+p*(1-test1)) * (whitesq == 0)
  z = z*z + c
  iter = iter + 1
  compt = compt+1
  |z| <= 16
  ;SOURCE: mjm-phc.frm
}


MNDLPIER (XAXIS) {
  z=pixel-1:
  z=sqr(z) +log(pixel) 
  |z|<=4 
  ;SOURCE: newform.frm
}


Mnemonics {
  z = c = pixel:
  r = fn1(z) + p1
  q = atan(cos(z))/tan(sin(z)) + c
  z = r * fn2(1/z * q) 
  |z| < 4
  ;SOURCE: astral.frm
}


moc {
  z=0, c=pixel:
  z=sqr(z)+c
  c=c+p1/c
  |z| <= 4
  ;SOURCE: fractint.frm
}


Mod-August4 {; Modified Sylvie Gallet frm, Dec 1997
             ; Modified by Brian E. Jones
             ; Coloring algorithm by Scott Burns
             ; Use decomp = 256 and periodicity = 0
  z1 = pixel, iter = 0, sq2 = sqrt(2)
  a = real(p1)*(0,0.0245436)    ; real(p1) * 2i pi / 256
  mz = abs(cabs(z1)-sq2) 
  :
  IF (mz > 0.1)
    z2 = fn1(z1/z1)*fn2(z1)
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


Modified_a Gallet-3-11 {; Sylvie Gallet [101324,3444], 1996 
  z=fn1(pixel^p1/p2+p2*pixel/fn2(p1^pixel)), p=p2/p1:
  z = z*p
  (z+p) <= p1
  ;SOURCE: bej's2.frm
}


Moe {; Mutation of 'Zexpe'.
     ; Original formula by Lee Skinner [75450,3631]
     ; Modified for if..else logic 3/19/97 by Sylvie Gallet
     ; For 'Zexpe', set FN1 & FN2 = IDENT and P1 = default
     ; real(p1) = Bailout (default 100)
  s = exp(1.,0.), z = pixel, c = fn1(pixel)
     ; The next line sets test=100 if real(p1)<=0, else test=real(p1)
  IF (real(p1) <= 0)
    test = 100
  ELSE
    test = real(p1)
  ENDIF
  :
  z = fn2(z)^s + c
  |z| <= test
  ;SOURCE: fract196.frm
}


MOne_Maxi {; generalized Minimax-Set (p1<>0!) 
           ; normal M-Set for p1=1
           ; p1 = -1 gives Mpm_Maxi
  z = a = pixel
  b = p1/cabs(p1) * pixel
  IF(p3==0)
    bailout=8
  ELSE
    bailout = |p3|
  ENDIF:
  qz = sqr(z)
  u = qz + a
  v = qz + b
  IF(|u|<|v|)
    z = v
  ELSE
    z = u
  ENDIF
  |z|<=bailout
  ;SOURCE: 97msg.frm
}


MOne_Mini {; generalized Minimax-Set (p1<>0!)
           ; normal M-Set for p1=1
           ; p1 = -1 gives Mpm_Mini
  z = a = pixel
  b = p1/cabs(p1) * pixel
  IF(p3==0)
    bailout=8
  ELSE
    bailout = |p3|
  ENDIF:
  qz = sqr(z)
  u = qz + a
  v = qz + b
  IF(|u|<|v|)
    z = u
  ELSE
    z = v
  ENDIF
  |z|<=bailout
  ;SOURCE: 97msg.frm
}


mongo-01 {
  z = c = pixel:
  z = p1 * fn1(z^z + c) + c/z
  |z| <= p2
  ;SOURCE: mongo.frm
}


mongo-02 {; TRY P1 REAL = -1, P2 = 5, FN1 = SQR, FN2 = RECIP
  z = 0, c = pixel:
  z = fn2(fn1(z) + c) + (p1 * z)
  |z| <= p2
  ;SOURCE: mongo.frm
}


mongo-03 {
  z = c = pixel:
  a = (abs(z) > p1)  * (fn1(z) + c)
  b = (abs(z) <= p1) * (fn2(z) + c)
  z = a + b
  |z| <= p2
  ;SOURCE: mongo.frm
}


mongo-04 {
  z = c = pixel, test = p1/p2:
  a = fn1(z)
  b = (|z| > test)  * (a - c)
  d = (|z| <= test) * (a + c)
  z = b + d
  |z| <= p1
  ;SOURCE: mongo.frm
}


mongo-05 {
  z = pixel, c = fn1(pixel):
  a = fn2(z)
  b = (|z| >= p1) * (a - c)
  d = (|z| < p1) * (a + c)
  z = a + b + d
  |z| <= p2
  ;SOURCE: mongo.frm
}


mongo-06 {; Replaced variable "e" with "ee" 5/05/99. G. Martin
  z = c = pixel, d = fn1(pixel):
  a = fn2(z)
  b = (z <= p1) * (a + c + d)
  ee = (z > p1) * (a + c - d)
  z = z + b + ee
  |z| <= p2
  ;SOURCE: mongo.frm
}


mongo-07 {
  z = v = pixel:
  oldz = z
  z = fn1(z)^p1 + v
  v = oldz
  |z| <= p2
  ;SOURCE: mongo.frm
}


mongo-08 {; Replaced variable "e" with "ee" 5/05/99. G. Martin
  z = v = pixel:
  a = fn1(z)
  b = (z <= p1) * (a + v)
  ee = (z > p1) * (a - v)
  v = z
  z = b + ee
  |z| <= p2
  ;SOURCE: mongo.frm
}


mongo-09 {; Replaced variable "e" with "ee" 5/05/99. G. Martin
  z = v = pixel:
  a = fn1(z)
  b = (a <= p1) * (a + v)
  ee = (a > p1) * fn2(a)
  v = z
  z = b + ee
  |z| <= p2
  ;SOURCE: mongo.frm
}


mongo-10 {; Replaced variable "e" with "ee" 5/05/99. G. Martin
  z = y = x = pixel:
  a = fn1(z)
  b = (a <= y) * ((a * p1) + y)
  ee = (a > y) * ((a * p1) + x)
  x = y
  y = z
  z = b + ee
  |z| <= p2
  ;SOURCE: mongo.frm
}


mongo-11 {
  z = y = x = pixel:
  a = (|y| <= p1) * fn1(y)
  b = (|x| <= p1) * fn2(x)
  x = y
  y = z
  z = fn3(z) + a + b
  |z| <= p2
  ;SOURCE: mongo.frm
}


mongo-12 {
  z = pixel, c = (fn1(pixel) * p1):
  x = abs(real(z))
  y = abs(imag(z))
  a = (x <= y) * (fn2(z) + y + c)
  b = (x > y) * (fn2(z) + x + c)
  z = a + b
  |z| <= p2
  ;SOURCE: mongo.frm
}


mongo-13 {
  z = pixel:
  v = fn1(z)
  x = (z*v)
  y = (z/v)
  a = (|x| <= |y|) * ((z + y) * p1)
  b = (|x| > |y|) * ((z + x) * p1)
  z = fn2((a + b) * v) + v
  |z| <= p2
  ;SOURCE: mongo.frm
}


monkey (XAXIS) {; rlbagula
  z = Pixel: 
  z = 1/(z*sin(1/z)+pixel)
  z = Sqr(z)
  LastSqr <= 4          ; Use LastSqr instead of recalculating
  ;SOURCE: rbagula.frm
}


monkey2 (XAXIS) {; rlbagula
  z = Pixel:   
  z = 1/(sqr(z)*sin(1/sqr(z))+pixel)
  LastSqr <= 16         ; Use LastSqr instead of recalculating
  ;SOURCE: rbagula.frm
}


monkey2i (XAXIS) {; rlbagula
  z = Pixel:   
  z = (sqr(z)*sin(1/sqr(z))+pixel)
  LastSqr <= 16         ; Use LastSqr instead of recalculating
  ;SOURCE: rbagula.frm
}


monkey3i (XAXIS) {; rlbagula
  z = Pixel:   
  z = (z*sqr(z)*sin(1/(z*sqr(z)))+pixel)
  LastSqr <= 16         ; Use LastSqr instead of recalculating
  ;SOURCE: rbagula.frm
}


monkey4i (XAXIS) {; rlbagula
  z = Pixel:   
  z = (sqr(sqr(z))*sin(1/sqr(sqr(z)))+pixel)
  LastSqr <= 16         ; Use LastSqr instead of recalculating
  ;SOURCE: rbagula.frm
}


Monkey_Type_1 {
  z = Pixel:
  z = sin(z*z/(z+ (2.34,.2)) + asin(z) - flip(log(z)))
  |z| <= 4
  ;SOURCE: forummsg.frm
}


Monkey_type_2 {
  z = Pixel:
  z = sin(z*z/(z+ (2.34,.2)) + asin(z) - flip(log(z))) + Pixel
  |z| <= 4
  ;SOURCE: forummsg.frm
}


monument {; Giuseppe Zito
  z = pixel
  c0 = -0.97078
  c5 = 0.196811
  : 
  x = real(z), y = imag(z)
  s0 =c0
  s0 = s0 *x
  s1 = x
  s0 = s0 *s1
  s0 = s0 +c5
  s0 = s0 /y
  newx = s0 
  s0 = y
  s0 = s0 -y
  s0 = s0 *x
  s0 = s0 *x
  s0 = s0 -x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


Moo {; Requires Periodicity=0
     ; significant speedup of MOO, artists take note!!!
     ; Revised 6/8/96 for orgform, speedup using halfe suggested
     ;  by Tim Wegner
  halfe = e*(-.5), z = pixel:
  z = z + p1
  r = tan(1/z) + pixel
  z = fn1(z)*r^halfe   ; was z = fn1(z)/sqrt(r)^e
  |z| < 4
  ;SOURCE: mad_cow.frm
}


Moo_2 {; requires periodicity=0
       ; revision 6/10/96 by G. Martin for Orgform of a Vincent Presogna
       ; formula of the same name
       ; speedup of original, substituting quartere for e/4 and
       ; r^quartere for sqrt(r)^(e/2)
       ; speedup technique pointed out by Tim Wegner
  z = pixel, quartere = e*(-.25):
  z = z + p1
  r = tan(1/z) * pixel
  z = fn1(z)*r^quartere  ; was fn1(z)/sqrt(r)^(e/2)
  |z| < 4
  ; SOURCE: mad_cow.frm
}


Moo_3 {; requires periodicity=0
  z = pixel:
  z = z + p1
  r = tan(1/z) * pixel
  z = fn1(z)/sqrt(r) 
  |z| < 4
  ;SOURCE: mad_cow.frm
}


Moo_4 {
  z = pixel:
  z = z + p1
  r = tan(1/z) + pixel
  z = fn1(z)/sqrt(r) 
  |z| < 4
  ;SOURCE: mad_cow.frm
}


Moo_PHC {; by Vincent Damion Presogna, Oct. 18, 1996
  z = pixel 
  halfe = e*(-0.5) 
  quartere = e*(-.25):
  z = z + p1
  y = tan(1/z)
  r = y + pixel
  q = y * pixel
  z = fn2(z)*r^halfe*(whitesq == 0) + fn1(z)*q^quartere*(whitesq) 
  |z| <= 4
  ;SOURCE: 96msg.frm
}


Mooey {
   ; revision 6/10/96 by G. Martin for Orgform of a Vincent Presogna
   ; formula of the same name
   ; speedup of original, substituting sroote for sqrt(e) and
   ; r for /sqrt(1/r)^2
   ; speedup technique pointed out by Tim Wegner
  z = pixel, sroote = sqrt(e):
  r = tan(1/z)^sroote + pixel
  z = fn1(z) * r     ; was fn1(z)/sqrt(1/r)^2
  |z| < 4
  ; SOURCE: mad_cow.frm
}


Moonworld {; inspired by Heron's formula
           ; (c) 1997 Bernd Lehnhoff
           ; use floating point and periodicity=no!
           ; p1 is the radicand
           ; p2 is a perturbation
  v = pixel
  IF(p2==0)
    p2=0.5
  ENDIF
  a = log(|p2|)-12
  c = sqr(p1): 
  u = v
  v = (u + c/u)/2 + p2
  z = v - u
  log(|z|) >= a
  ;SOURCE: 97msg.frm
}


Moonworld_3 {; Generalized version of Moonworld
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
  v = u-u/3*(1-(p1/u)^3)+p2
  z = v - u
  log(|z|) >= a
  ;SOURCE: 97msg.frm
}


Moonworld_general {; Generalized version of Moonworld
                   ; (c) 1997 Bernd Lehnhoff
                   ; use floating point and periodicity=no!
                   ; p1 is the radicand
                   ; p2 is the perturbation  
                   ; p3 is the degree
  IF(p2==0)
    p2=0.5
  ENDIF
  v = pixel 
  a = log(|p2|)-12: 
  u = v
  v = u-u/p3*(1-(p1/u)^p3)+p2
  z = v - u
  log(|z|) >= a
  ;SOURCE: 97msg.frm
}


MORPHS {; Ray Girvan
        ; Newton variant giving biomorphs
        ; z -> sin(z) before Newton iteration
        ; use floating point, periodicity=no
        ; try p1=0.1, p2=3 for bees
        ; p1=0.1, p2=6 for crabs
  z=pixel:
  z1=sin(z)-p1
  z2=z1^p2-1 
  z3=p2*(z1^(p2-1)) 
  z=z-(z2/z3)
  |z2| >= 0.00001
  ;SOURCE: 97msg.frm
}


Mosaic {; Jim M, thanks to someone unknown
        ; p1=Mandelbrot set coordinates
  z=c=p1+.05*(fn1(fn2(real(pixel)))+flip(fn3(fn4(imag(pixel))))):
  z=sqr(z)+c
  |z| <= 100
  ;SOURCE: 97msg.frm
}


Moth (XAXIS_NOPARM) {
   ; Edited for Fractint v. 20 by George Martin 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=exp(z)+pixel
  z=log(z)+pixel
  x=x+1
  |z|<=4 
  ;SOURCE: choice.frm
}


MothC (XAXIS_NOPARM) { 
   ; Edited for Fractint v. 20 by George Martin 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSEIF (x<20)
    z=exp(z)+pixel
  ELSE
    z=log(z)+pixel
  ENDIF
  x=x+1 
  |z|<=4 
  ;SOURCE: choice.frm
}


Mothra (XAXIS) {; Ron Lewen, 76376,2567
                ; Remember Mothra, the giant Japanese-eating moth?
                ; Well... here he (she?) is as a fractal!
  z=pixel:
  a=z^5 + z^3 + z + pixel
  b=z^4 + z^2 + pixel
  z=b^2/a
  |real(z)| <= 100 || |imag(z)| <= 100
  ;SOURCE: fractint.frm
}


moz {
  z=0, c=pixel:
  z=sqr(z)+c
  c=c+p1/z
  |z| <= 4
  ;SOURCE: explode.frm
}


Mpm_Maxi(XYAXIS) {; an automatic Mix
  z = a = pixel
  IF(p1==0)
    bailout=8
  ELSE
    bailout = |p1|
  ENDIF:
  qz = sqr(z)
  u = qz + a
  v = qz - a
  IF(|u|<|v|)
    z = v
  ELSE
    z = u
  ENDIF
  |z|<bailout
  ;SOURCE: 97msg.frm
}


Mpm_Mini(XYAXIS) {; an automatic Mix
  z = a = pixel
  IF(p1==0)
    bailout=8
  ELSE
    bailout = |p1|
  ENDIF:
  qz = sqr(z)
  u = qz + a
  v = qz - a
  IF(|u|<|v|)
    z = u
  ELSE
    z = v
  ENDIF
  |z|<bailout
  ;SOURCE: 97msg.frm
}


mrosa {; Giuseppe Zito
  z = pixel
  c0 = -0.90967202
  c2 = -0.79515898
  d3 = -0.99741298
  d4 = -0.667045
  d7 = -0.309879
  : 
  x = real(z), y = imag(z)
  s0 =c0
  s0 = s0 -c2
  s0 = s0 -y
  s0 = s0 +x
  newx = s0 
  s0 = y
  s0 = s0 -x
  s0 = s0 *x
  s1 =d3
  s1 = s1 *d4
  s0 = s0 +s1
  s0 = s0 +d7
  s0 = s0 +x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


mt_990128f {; Mark Townsend, 28-01-99
  ; real p1 coloring speed of points captured by the Y axis
  ; imag p1 coloring speed of points captured by the X axis
  ; real p2  bailout point for orbits nearing the Y axis
  ; imag p2 bailout point for orbits nearing the X axis
  ; p3 Julia coordinates
  ; fn1 function for the fractal formula ('ident' for Julia)
  ; fn2 function for coloring points captured by the Y axis
  ; fn3 function for coloring points captured by the X axis
  ; fn4 function for the outside coloring
  ; use decomp=256
  ;
  ; This is an implementation of Pickover's 'epsilon cross'
  ; method on a generalised Julia fractal. The user can set
  ; how near the orbit has to get to the axes before bailing
  ; out. The larger the values given to p2 the wider the
  ; 'stalks'. The values should be positive or 0 to turn the
  ; stalks off. Points within the stalks are coloured by the
  ; angle of z at bailout, messed up by a function. The outside
  ; is coloured by the angle of z on it's closest  approach to the
  ; origin, again through a function.
  ;
  ; ***********************************
  z = pixel, c = p3, iter = 1, s = 1e9:
  ; ***********************************
  z = fn1(sqr(z)) + c
  ; find the closest z to to the origin
  IF (|z| < |s|)
    s = z
  ENDIF
  IF (abs(real(z)) < real(p2)) ; caught by Y axis
    z = fn2(z)^real(p1)
    iter = 0
  ELSEIF (abs(imag(z)) < imag(p2)) ; caught by X axis
    z = fn3(z)^imag(p1)
    iter = 0
  ELSEIF (|z| > 4)
    z  = fn4(s)
    iter = 0
  ENDIF
  iter > 0
  ;SOURCE: 99msg.frm
}


MTet (XAXIS) {; Mandelbrot form 1 of the Tetration formula --Lee Skinner
  z = pixel:
  z = (pixel ^ z) + pixel
  |z| <= (P1 + 3)
  ;SOURCE: fractint.frm
}


MtNwt5_1/fn12 { 
  z = 1/fn1(p1 * pixel) + 1/fn2(p2 * pixel), Root = 1:
  z = (4 * z^5 + Root) / (5 * z^4)
  0.001 <= |z^5 - Root|
  ;SOURCE: crazynwt.frm
}


MtNwt5_fn12 { 
  z = fn1(p1 * pixel) + fn2(p2 * pixel), Root = 1:
  z = (4 * z^5 + Root) / (5 * z^4)
  .001 <= |z^5 - Root|
  ;SOURCE: crazynwt.frm
}


MtNwtfn1[fn2] { 
  z = fn1(fn2(p2*pixel)), Root = 1 :
  z = ((p1-1) * z^p1 + Root) / (p1 * z^(p1-1))
  .001 <= |z^p1 - Root|
  ;SOURCE: crazynwt.frm
}


mtofn {
  z=pixel:
  power = fn2(z)
  z = z^power + pixel
  |z| < p2
  ;SOURCE: fractals.frm
}


mult1-5-XY-ZW {; draws all 6 planes and many rotations
     ; when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
     ; when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=(real(p1)+10^(-100))*.01745329251994
  b=imag(p1)*.01745329251994
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
  z=z^1.5+c
  |z| <= 36  
  ;SOURCE: 98msg.frm
}


mult1-5-XZ-YW {; Jim Muth
               ; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
               ; Replaced variable "e" with "ee" 5/05/99. G. Martin
  ee=exp(flip(real(p1*.01745329251994)))
  f=exp(flip(imag(p1*.01745329251994)))
  z=f*real(pixel)+p2, c=ee*imag(pixel)+p3:
  z=z^1.5+c
  |z| <= 36
  ;SOURCE: 98msg.frm
}


mult105-XY-ZW {; draws all 6 planes and many rotations
   ; when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
   ; when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
  z=(-z)^1.05+c
  |z| <= 36  
  ;SOURCE: 98msg.frm
}


mult2-003-XY-ZW {; draws all 6 planes and many rotations
      ; when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
      ; when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=(real(p1)+10^(-100))*.01745329251994
  b=imag(p1)*.01745329251994
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
  z=z^2.003+c
  |z| <= 36
  ;SOURCE: 98msg.frm
}


mult2-003-XZ-YW {; Jim Muth
                 ; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
                 ; Replaced variable "e" with "ee" 5/05/99. G. Martin
  ee=exp(flip(real(p1*.01745329251994)))
  f=exp(flip(imag(p1*.01745329251994)))
  z=f*real(pixel)+p2, c=ee*imag(pixel)+p3:
  z=z^2.003+c
  |z| <= 36
  ;SOURCE: 98msg.frm
}


mult2-5-XZ-YW {; Jim Muth
               ; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
               ; Replaced variable "e" with "ee" 5/05/99. G. Martin
  ee=exp(flip(real(p1*.01745329251994)))
  f=exp(flip(imag(p1*.01745329251994)))
  z=f*real(pixel)+p2, c=ee*imag(pixel)+p3:
  z=z^2.5+c
  |z| <= 36
  ;SOURCE: 98msg.frm
}


Multbrot {; Tom Schumm
          ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  imag(z)*real(z) <= 4   ; Different escape boundry
  ;SOURCE: phong.frm
}


MultdBail {;p1 is dist switch, p2 is count switch
  z = c = pixel, x=0, m=1:
  x=x+1, t = z*z+c, d=|z|/4, do=1-d
  g = (d<=p1)* (x<=p2)* (1.25), h=(d>p1)* (x<=p2)* (.9) 
  i = (d<=p1)* (x>p2)* (1.1), j=(d>p1)* (x>p2)* (1)
  m =  (g+h+i+j)*m
  z = m*t
  d <= 4
  ;SOURCE: ron1.frm
}


multesc4-XY-ZW {; draws 6 planes and many rotations
      ; when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
      ; when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
  z=sqr(z)+c
  |z| < 4
  ;SOURCE: 99msg.frm
}


multi1-5-XY-ZW {; draws all 6 planes and many rotations
   ; when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
   ; when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
  z=z^1.5+c
  |z| <= 36  
  ;SOURCE: 98msg.frm
}


multi20031 {; formula   draws many rotations
   ; when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
   ; when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=((real(p1))+(.000000000000000000001))*.01745329251994
  b=((imag(p1))+(.000000000000000000001))*.01745329251994
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
  z=z^2.003+c
  |z| <= 36  
  ;SOURCE: 98msg.frm
}


multi20031a {; draws all six planes and many rotations
     ; when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
     ; when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=((real(p1))+(.000000000000000000001))*.01745329251994
  b=((imag(p1))+(.000000000000000000001))*.01745329251994
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
  z=z^2.003+c
  |z| <= 36  
  ;SOURCE: 0from_ml.frm
}


multi20032 {; Jim Muth   this is the formula
   ; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
   ; Replaced variable "e" with "ee" 5/05/99. G. Martin
  ee=exp(flip(real(p1*.01745329251994)))
  f=exp(flip(imag(p1*.01745329251994)))
  z=f*real(pixel)+p2, c=ee*imag(pixel)+p3:
  z=z^2.003+c
  |z| <= 100  
  ;SOURCE: 98msg.frm
}


Multia (ORIGIN) {; Tom Schumm
                 ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
  z = z + p1
  z = Sqr(z)
  imag(z)*real(z) <= 4    ; Different escape boundry
  ;SOURCE: phong2.frm
}


multicub-XZ-YW {; Jim Muth
                ; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
                ; Replaced variable "e" with "ee" 5/05/99. G. Martin
  ee=exp(flip(real(p1*.01745329251994)))
  f=exp(flip(imag(p1*.01745329251994)))
  z=f*real(pixel)+p2, c=ee*imag(pixel)+p3:
  z=z*z*z+c
  |z| <= 36
  ;SOURCE: 98msg.frm
}


multifract1 {; Ron Barnett, January 1999
             ; Use decomp = 256 or outside = atan
             ; Use imag(p3) to change the color spread
  zc = z = c = pixel
  IF ((real(p1)) == 0 && (imag(p1) == 0))
    p1 = (0,-0.5)
  ENDIF
  IF ((real(p2)) == 0 && (imag(p2) == 0))
    p2 = 1
  ENDIF
  IF (real(p3) == 0)
    p3 = p3 + (10000,0)
  ENDIF
  IF (imag(p3) == 0)
    p3 = p3 + (0,10)
  ENDIF
  choice = iterexp = 0:
  choice = (choice == 0)
  IF (choice == 0)
    zc = p2*(zc*zc + c)
    iterexp = iterexp + exp(-cabs(zc))
  ELSE
    z1 = exp(zc)
    z2 = sin(zc) + z1 - 1
    zc = zc - p1*z2/(cos(zc) + z1)
  ENDIF
  IF (|zc| > real(p3))
    smooth = iterexp*imag(p3)*pi/128
    ang = cos(smooth)+flip(sin(smooth))
    z = 256*ang
  ENDIF
  |zc| <= real(p3)
  ;SOURCE: 99msg.frm
}


multigator2 {; Jim Muth
   ; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
   ; Edited for Fractint v. 20 by George Martin, 10/98
   ; Replaced variable "e" with "ee" 5/05/99. G. Martin
  ee=exp(flip(real(p1*.01745329251994)))
  f=exp(flip(imag(p1*.01745329251994)))
  z=f*real(pixel)+p2, c=ee*imag(pixel)+p3:
  z=(.5*(z^(-4)))+(-2*(z^(-2)))+c
  |z| <= 100  
  ;SOURCE: 97msg.frm
}


multirot-pm21 {; Jim Muth, best=ifif, fiif, fifi, iffi
  a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2
  c=cos(b)*fn3(real(pixel))+cos(a)*fn4(imag(pixel))+p3:
  z=(.1*(sqr(z)))+(10*(z^(-2)))+c
  |z| <= 100  
  ;SOURCE: 97msg.frm
}


multirot-XY-ZW {; draws all 6 planes and many rotations   NEW version
     ; when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
     ; when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
  z=sqr(z)+c
  |z| <= 36  
  ;SOURCE: 98msg.frm
}


multirot-XY-ZWa {; draws all 6 planes and many rotations
     ; when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
     ; when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
  z=sqr(z)+c
  |z| <= 36  
  ;SOURCE: 0from_ml.frm
}


multirot-XZ-YW {; Jim Muth
   ; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
   ; Replaced variable "e" with "ee" 5/05/99. G. Martin
  ee=exp(flip(real(p1*.01745329251994)))
  f=exp(flip(imag(p1*.01745329251994)))
  z=f*real(pixel)+p2, c=ee*imag(pixel)+p3:
  z=sqr(z)+c
  |z| <= 36  
  ;SOURCE: 98msg.frm
}


multirot03-XY-ZW {; draws 6 planes and many rotations
      ; when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
      ; when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
  z=z*z*z+c
  |z| <= 36
  ;SOURCE: 99msg.frm
}


multirot03-XZ-YW {; Jim Muth
       ; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
  ee=exp(flip(real(p1*.01745329251994)))
  f=exp(flip(imag(p1*.01745329251994)))
  z=f*real(pixel)+p2, c=ee*imag(pixel)+p3:
  z=z*z*z+c
  |z| <= 36
  ;SOURCE: 99msg.frm
}


multirot04-XY-ZW {; draws 6 planes and many rotations
      ; when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
      ; when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
  z=sqr(sqr(z))+c
  |z| <= 36
  ;SOURCE: 98msg.frm
}


multirot04-XZ-YW {; Jim Muth
                  ; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
                  ; Replaced variable "e" with "ee" 5/05/99. G. Martin
  ee=exp(flip(real(p1*.01745329251994)))
  f=exp(flip(imag(p1*.01745329251994)))
  z=f*real(pixel)+p2, c=ee*imag(pixel)+p3:
  z=sqr(sqr(z))+c
  |z| <= 36
  ;SOURCE: 98msg.frm
}


multirot05-XY-ZW {; draws 6 planes and many rotations
      ; when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
      ; when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
  z=z*(sqr(sqr(z)))+c
  |z| <= 36
  ;SOURCE: 99msg.frm
}


multirot05-XZ-YW {; Jim Muth
                  ; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
       ; Replaced variable "e" with "ee" 5/05/99. G. Martin
  ee=exp(flip(real(p1*.01745329251994)))
  f=exp(flip(imag(p1*.01745329251994)))
  z=f*real(pixel)+p2, c=ee*imag(pixel)+p3:
  z=z*(sqr(sqr(z)))+c
  |z| <= 36
  ;SOURCE: 98msg.frm
}


multirot06-XZ-YW {; Jim Muth
                  ; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
         ; Replaced variable "e" with "ee" 5/05/99. G. Martin
  ee=exp(flip(real(p1*.01745329251994)))
  f=exp(flip(imag(p1*.01745329251994)))
  z=f*real(pixel)+p2, c=ee*imag(pixel)+p3:
  z=sqr(z)*sqr(sqr(z))+c
  |z| <= 36
  ;SOURCE: 98msg.frm
}


multirot07-XY-ZW {; draws 6 planes and many rotations
     ; when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
     ; when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
  z=z*(sqr(z)*sqr(sqr(z)))+c
  |z| <= 36
  ;SOURCE: 98msg.frm
}


multirot16-XY-ZW {; draws 6 planes and rotations
     ; when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
     ; when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
  z=sqr(sqr(sqr(sqr(z))))+c
  |z| <= 36
  ;SOURCE: 99msg.frm
}


multmin1-2-XY-ZW {; draws all 6 planes and many rotations
    ; when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
    ; when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=real((p1)+.000000000000000000000000000001)*.01745329251994
  b=imag(p1)*.01745329251994
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
  z=(-z)^1.2+c
  |z| <= 36  
  ;SOURCE: 98msg.frm
}


multmin1-5-XY-ZW {; draws 6 planes and many rotations
     ; when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
     ; when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=(real(p1)+10^(-100))*.01745329251994
  b=imag(p1)*.01745329251994
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
  z=(-z)^1.5+c
  |z| <= 36
  ;SOURCE: 99msg.frm
}


multmin3-5-XZ-YW {; Jim Muth
      ; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
  e=exp(flip(real(p1*.01745329251994)))
  f=exp(flip(imag(p1*.01745329251994)))
  z=f*real(pixel)+p2, c=e*imag(pixel)+p3:
  z=(-z)^3.5+c
  |z| < 36  
  ;SOURCE: 99msg.frm
}


murano {; Giuseppe Zito
  z = pixel
  c2 = 0.68162298
  c12 = -0.093601
  c16 = -0.26411101
  c26 = 0.004199
  c29 = 0.251564
  c31 = -0.80334002
  d1 = -0.95945197
  d5 = -0.458745
  d12 = -1.08000004
  d15 = -0.27162501
  d19 = -0.562644
  d20 = 0.646236
  : 
  x = real(z), y = imag(z)
  s0 = y
  s0 = s0 /c2
  s1 = x
  s0 = s0 +s1
  s0 = s0 *y
  s0 = s0 +x
  s1 =c12
  s1 = s1 /x
  s1 = s1 /c16
  s1 = s1 *x
  s0 = s0 *s1
  s0 = s0 +y
  s0 = s0 -y
  s0 = s0 +x
  s0 = s0 *c26
  s0 = s0 /x
  s0 = s0 *x
  s0 = s0 -c29
  s0 = s0 /c31
  s0 = s0 -y
  newx = s0 
  s0 = y
  s0 = s0 /d1
  s0 = s0 +y
  s0 = s0 *y
  s0 = s0 -d5
  s0 = s0 -y
  s0 = s0 +y
  s1 =d12
  s1 = s1 *x
  s1 = s1 /x
  s1 = s1 -d15
  s0 = s0 *s1
  s0 = s0 /x
  s0 = s0 -d19
  s0 = s0 *d20
  s1 = y
  s0 = s0 *s1
  s0 = s0 +x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


Mutant_demo {; Oliver Klimek's TripleMutant formula
             ; as modified by Paul Carlson, 1998
    ; real(p1) = iteration count
    ;
  w = z = bailout = iter = 0
  c = pixel
  pt1 = (2.5,2.5), pt2 = (-2.5,2.5), pt3 = (2.5,-2.5)
  a1 = 1 / (|(pixel - pt1)|^2)    
  a2 = 1 / (|(pixel - pt2)|^2)    
  a3 = 1 / (|(pixel - pt3)|^2)
  :
    ; find contribution of each function
  k1 = a1 * fn1(w)
  k2 = a2 * fn2(w)
  k3 = a3 * fn3(w)
    ;
    ; compute value of w
  w = w * w + c + k1 + k2 + k3
    ;
    ; if we're at the specified iteration count,
    ; find which function has largest contribution
    ; and set the bailout flag.
  IF ((iter == real(p1)) || (|w| > 8))
    bailout = 1
    m1 = cabs(k1), m2 = cabs(k2), m3 = cabs(k3)
    IF (m1 < 1.0e-20)
      m1 = 1.0e-20
    ENDIF
    IF (m2 < 1.0e-20)
      m2 = 1.0e-20
    ENDIF
    IF (m3 < 1.0e-20)
      m3 = 1.0e-20
    ENDIF
    maxm = m1
    IF (m2 > m1)
      maxm = m2
      IF (m3 > m2)
        maxm = m3
      ENDIF
    ELSEIF (m3 > m1)
      maxm = m3
    ENDIF
        ;
        ; set z to colormap index
    IF (maxm == m1)
      z =   1 + 40 * (1 - m3/m1 + m2/m1)
    ELSEIF (maxm == m2)
      z =  81 + 40 * (1 - m1/m2 + m3/m2)
    ELSE
      z = 161 + 40 * (1 - m2/m3 + m1/m3)
    ENDIF
  ENDIF
    ;
    ; test for bailout
  iter = iter + 1
  z = z - iter
  bailout == 0
  ;SOURCE: 98msg.frm
}


Mutant_End {; Oliver Klimek's TripleMutant formula
            ; as modified by Paul Carlson, 1998
  w = z = bailout = iter = 0
  c = pixel
  a1 = 1 / (|(pixel - p1)|^2)    
  a2 = 1 / (|(pixel - p2)|^2)    
  a3 = 1 / (|(pixel - p3)|^2)
  :
    ; find contribution of each function
  k1 = a1 * fn1(w)
  k2 = a2 * fn2(w)
  k3 = a3 * fn3(w)
    ;
    ; compute value of w
  w = w * w + c + k1 + k2 + k3
    ;
    ; test for bailout
  IF (|w| > 8)
    bailout = 1
        ;
        ; find which function has largest contribution
    m1 = cabs(k1), m2 = cabs(k2), m3 = cabs(k3)
    IF (m1 < 1.0e-20)
      m1 = 1.0e-20
    ENDIF
    IF (m2 < 1.0e-20)
      m2 = 1.0e-20
    ENDIF
    IF (m3 < 1.0e-20)
      m3 = 1.0e-20
    ENDIF
    maxm = m1
    IF (m2 > m1)
      maxm = m2
      IF (m3 > m2)
        maxm = m3
      ENDIF
    ELSEIF (m3 > m1)
      maxm = m3
    ENDIF
        ;
        ; set z to colormap index
    IF (maxm == m1)
      z =   1 + 40 * (1 - m3/m1 + m2/m1)
    ELSEIF (maxm == m2)
      z =  81 + 40 * (1 - m1/m2 + m3/m2)
    ELSE
      z = 161 + 40 * (1 - m2/m3 + m1/m3)
    ENDIF
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0
  ;SOURCE: 98msg.frm
}


Mutant_Start {; Oliver Klimek's TripleMutant formula
              ; as modified by Paul Carlson, 1998
  w = z = bailout = iter = 0
  c = pixel
  a1 = 1 / (|(pixel - p1)|^2)    
  a2 = 1 / (|(pixel - p2)|^2)    
  a3 = 1 / (|(pixel - p3)|^2)
    ;
    ; find contribution of each function
  k1 = a1 * fn1(w)
  k2 = a2 * fn2(w)
  k3 = a3 * fn3(w)
    ;
    ; find which function has largest contribution
  m1 = cabs(k1), m2 = cabs(k2), m3 = cabs(k3)
  IF (m1 < 1.0e-20)
    m1 = 1.0e-20
  ENDIF
  IF (m2 < 1.0e-20)
    m2 = 1.0e-20
  ENDIF
  IF (m3 < 1.0e-20)
    m3 = 1.0e-20
  ENDIF
  maxm = m1
  IF (m2 > m1)
    maxm = m2
    IF (m3 > m2)
      maxm = m3
    ENDIF
  ELSEIF (m3 > m1)
    maxm = m3
  ENDIF
  :
    ; compute value of w
  w = w * w + c + k1 + k2 + k3
    ;
    ; test for bailout
  IF (|w| > 8)
    bailout = 1
        ;
        ; set z to colormap index
    IF (maxm == m1)
      z =   1 + 40 * (1 - m3/m1 + m2/m1)
    ELSEIF (maxm == m2)
      z =  81 + 40 * (1 - m1/m2 + m3/m2)
    ELSE
      z = 161 + 40 * (1 - m2/m3 + m1/m3)
    ENDIF
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0
  ;SOURCE: 98msg.frm
}


Mutantbrot {; A mutation of the classic Mandelbrot set
  z = 0, c = pixel:      ;standard initialization section
  z = z*z + c + sin(z)   ;mutated iterated section
  |z| < 4                ;standard bailout test
  ;SOURCE: frmtutor.frm
}


MXConj_Maxi(XAXIS) {; an automatic Mix
  z = a = pixel
  b = -conj(pixel)
  IF(p1==0)
    bailout=8
  ELSE
    bailout = |p1|
  ENDIF:
  qz = sqr(z)
  u = qz + a
  v = qz + b
  IF(|u|<|v|)
    z = v
  ELSE
    z = u
  ENDIF
  |z|<bailout
  ;SOURCE: 97msg.frm
}


MXConj_Mini(XAXIS) {; an automatic Mix
  z = a = pixel
  b = -conj(pixel)
  IF(p1==0)
    bailout=8
  ELSE
    bailout = |p1|
  ENDIF:
  qz = sqr(z)
  u = qz + a
  v = qz + b
  IF(|u|<|v|)
    z = u
  ELSE
    z = v
  ENDIF
  |z|<bailout
  ;SOURCE: 97msg.frm
}


MyEqn_Fnc_Jul {; Copyright (c) Paul W. Carlson, 1998
    ; p1       = Julia set coordinates
    ; real(p2) = a factor controlling the size of the elements
    ; imag(p2) = angle multiplier
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
  z = iter = range_num = bailout = 0
  w = pixel
  c = p1
  size = real(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  index_factor = (colors_in_range - 1) / size
  :
  w2 = w * w
  w = c * (1 - w2) / (1 + w2)
    ;
  a = imag(p2) * atan(imag(w) / real(w))
  a = a * a + c
  a = fn1(1 - a * a)
  dist = abs(|w| - |a|)
  IF (dist < size && iter > 1)
    bailout = 1
    z = index_factor * dist + range_num * colors_in_range + 1
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


MyEqn_Julia {; Copyright (c) Paul W. Carlson, 1998
    ; p1       = Julia set coordinates
    ; real(p2) = selects rendering method
    ; imag(p2) = a factor controlling the size of the elements
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
  z = k = iter = range_num = bailout = 0
  w = pixel
  c = p1
  dist = 1.0e20
  size = imag(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  index_factor = (colors_in_range - 1) / size
  render = real(p2)
  :
  w2 = w * w
  w = c * (1 - w2) / (1 + w2)
    ;
    ;;;;;;;;;; dist determined by rendering method ;;;;;;;;;;;;;;
  IF (render == 1) ; RINGS                                     ;;
    dist = abs(|w|-.25)                                        ;;
  ELSEIF (render == 2) ; ANGLE FUNCTION                        ;;
    a = 2 * atan(imag(w) / real(w))                            ;;
    a = a * a + c                                              ;;
    a = exp(1 - a) / a                                         ;;
    dist = abs(|w| - |a|)                                      ;;
  ELSEIF (render == 3) ; SQUARES                               ;;
    k = 0.5 + size                                             ;;
    j = 0.5 - size                                             ;;
    awr = abs(real(w)), awi = abs(imag(w))                     ;;
    IF ((awr < k) && (awr > j) && (awi < k) && (awi > j))      ;;
      awr5 = abs(awr - 0.5), awi5 = abs(awi - 0.5)             ;;
      IF (awr5 <= awi5)                                        ;;
        dist = awr5                                            ;;
      ELSE                                                     ;;
        dist = awi5                                            ;;
      ENDIF                                                    ;;
    ENDIF                                                      ;;
  ELSEIF (render == 4) ; SPHERES                               ;;
    IF (|w + (0,-.5)| < size)                                  ;;
      dist = size - |w + (0,-.5)|                              ;;
    ELSEIF (|w + (0,.5)| < size)                               ;;
      dist = size - |w + (0,.5)|                               ;;
    ELSEIF (|w + (-.5,0)| < size)                              ;;
      dist = size - |w + (-.5,0)|                              ;;
    ELSEIF (|w + (.5,0)| < size)                               ;;
      dist = size - |w + (.5,0)|                               ;;
    ENDIF                                                      ;;
  ELSEIF (render == 5) ; STALKS                                ;;
    IF (abs(real(w)) <= abs(imag(w)))                          ;;
      dist = abs(real(w))                                      ;;
    ELSE                                                       ;;
      dist = abs(imag(w))                                      ;;
    ENDIF                                                      ;;
  ENDIF                                                        ;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  IF (dist < size && iter > 0)
    bailout = 1
    z = index_factor * dist + range_num * colors_in_range + 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < 1.0e20
  ;SOURCE: 97msg.frm
}


MyEqn_Julia-sg {; Copyright (c) Paul W. Carlson, 1998
    ; p1       = Julia set coordinates
    ; real(p2) = selects rendering method
    ; imag(p2) = a factor controlling the size of the elements
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
  z = k = iter = range_num = bailout = 0
  IF (p1 || flip(p1))
    c = p1
  ELSE
    c = pixel
  ENDIF
  w = pixel
  dist = 1.0e20
  size = imag(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  index_factor = (colors_in_range - 1) / size
  :
  w = 1 / (w * w + c)
    ;
  a = 2 * atan(imag(w) / real(w))                        ;;
  a = a * a + c                                          ;;
  a = exp(1 - a) / a                                     ;;
  dist = abs(|w| - |a|)                                  ;;
  IF (dist < size && iter > 0)
    bailout = 1
    z = index_factor * dist + range_num * colors_in_range + 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < 1.0e20
  ;SOURCE: sg_misc.frm
}


MyFrac-pc-Lin2 {; Formulas by Bob Carr and Paul Carlson
                ; combined and modified by Linda Allison
  z = c = pixel:
  z2 = c * (1 - z * z)/(1 + z * z)
  z = fn1(z2) + fn2((z2 ^ 2)/p1)
  |z| <= 100
  ;SOURCE: allison2.frm
}


MyFract-7 {;from the book *Fractal Creations* 
           ; by Tim Wegner and Mark Peterson 
           ; modified by Linda Allison 
  c = z = 1/pixel:
  z = fn1(z) + (c + P1/z)
  |z| <= P2
  ;SOURCE: la-mod.frm
}


MyFract-7new {;Linda Allison
  c = z = 1/pixel:
  z = fn1(z^1.5) + (c + P1)/(z*2)
  |z| <= P1
  ;SOURCE: allison2.frm
}


MyFractal {; Fractal Creations example
  c = z = 1/pixel:
  z = sqr(z) + c
  |z| <= 4
  ;SOURCE: fractint.frm
}


MyFractal-lla {; Linda Allison
  z = pixel:
  z = fn1(z) + fn2((z ^ 2)/p1)
  |z| <= 100
  ;SOURCE: allison2.frm
}


MyFractal2 {; *Fractal Creations* formula, modified by Linda Allison
  c = z = 1/pixel:
  z = fn1(z) + c + P1
  |z| <= P2
  ;SOURCE: la-mod.frm
}


MyMandel {
  z=pixel:
  z=real(z)^2+real(z)*imag(z)+flip(imag(z)^2-real(z)*imag(z))+pixel
  |z|<=4
  ;SOURCE: fract002.frm
}


Mystic {; Jim Muth
  c=pixel, z=sqr(pixel)+(p1*(pixel)):
  z=sqr(sqr(z)+(p2*(c)))+(p3*(fn1(c)))
  c=fn2(c)
  LastSqr <= 100
  ;SOURCE: 97msg.frm
}


Mystic2 {; Jim Muth
  a=real(p1), b=imag(p1), c=real(p2)
  d=imag(p2), k=real(p3), f=imag(p3)
  g=pixel, z=(pixel)^a+(b*(pixel))^c:
  z=(fn1(z)+(d*(g)))^k+(f*(cos(g)))
  g=sqr(g)
  LastSqr <= 100
  ;SOURCE: 97msg.frm
}


Mytest02  {; Jim Muth
  z=c=pixel:
  z=((z*(z+p1))^p2)^p3+c
  |z|<100
  ;SOURCE: 97msg.frm
}


Mytest04  {; Jim Muth
  z=c=pixel, a=p3^(-p3):
  z=((z+p1)^p2)^a+c
  |z|<=100
  ;SOURCE: 99msg.frm
}


Mytest05 {; Jim Muth
  z=c=pixel, a=real(p1), b=imag(p1):
  z=(((z^a)*(z+b))^p2)^p3+c
  |z|<=100
  ;SOURCE: 97msg.frm
}


Mytest06 {; Jim Muth
  z=c=pixel:
  z=(((z^p1)*(p2*z))^p3)^(-p3)+c
  |z|<=100
  ;SOURCE: 97msg.frm
}


Mytest06_ver2 {; Jim Muth
  z=c=pixel:
  z=(((z^p1)*(p2*z))^p3)^(-p3)+c
  |z|<=100
  ;SOURCE: frac_art.frm
}


Mytest06a  {; Jim Muth
  z=c=pixel:
  z=(((z^p1)*(p2*z))^p3)^(-p3)+c
  |z|<=100
  ;SOURCE: 0from_ml.frm
}


Mytest07 {; Jim Muth
  z=pixel, a=real(p2), b=imag(p2), c=b*(pixel):
  z=(((z^p1)*(z+a))^p3)^(-p3)+c
  |z|<=100
  ;SOURCE: 97msg.frm
}


Mytest08 {; Jim Muth
  z=fn1(pixel), a=real(p3)
  b=imag(p3), c=a+(b*pixel):
  z=(((z^p1)*z)^p2)^(-p2)+c
  |z|<=100
  ;SOURCE: 97msg.frm
}


Mytest10 {; Jim Muth
  z=c=pixel:
  z=z^p1+p2*((z^p3)^(-p3))+c
  |z|<=100
  ;SOURCE: 97msg.frm
}


Mytest11 {; Jim Muth
  z=c=pixel:
  z=z^p1+(p2*((z^p3)^(-p3)))+c
  |z|<=100
  ;SOURCE: 97msg.frm
}


Mytest12 {; Jim Muth
  z=c=pixel, a=real(p1), b=imag(p1):
  z=(a*((z^p2)^(-p2)))+(b*((z^p3)^(-p3)))+c
  |z|<=100
  ;SOURCE: 97msg.frm
}


MytestAB {; Jim Muth
  z=c=pixel
  a=real(p3), b=imag(p3):
  z=(a*(z^p1))+(b*((-z)^p2))+c
  |z|<=100
  ;SOURCE: 97msg.frm
}


MytestAC {; Jim Muth
  z=pixel, a=real(p1), b=imag(p1), d=real(p2)
  f=imag(p2), g=real(p3), h=imag(p3), c=g+(h*pixel):
  z=(a*(z^b))+(d*((-z)^f))+c
  |z|<=2500
  ;SOURCE: 97msg.frm
}


MytestAD {; Jim Muth
          ; fn1=ident=mandelbrot, fn1=zero=julia
          ; p3 = C-value of julia
  z=pixel, a=real(p1), b=imag(p1), d=real(p2)
  f=imag(p2), c=p3+fn1(pixel):
  z=(a*(z^b))+(d*((-z)^f))+c
  |z|<=2500
  ;SOURCE: 97msg.frm
}


MytestAE {; Jim Muth
  z=sqr(p3)+pixel, a=real(p1), b=imag(p1)
  d=real(p2), f=imag(p2), c=fn1(pixel):
  z=(a*(z^b))+(d*((-z)^f))+c
  |z|<=2500
  ;SOURCE: 97msg.frm
}


MytestAG {; Jim Muth
  z=c=pixel
  a=flip(real(p1)), b=flip(imag(p1)):
  z=(z^a)^(-b)+c
  |z|<=100
  ;SOURCE: 97msg.frm
}


MytestAH {; Jim Muth
  z=1, c=pixel:
  z=z^p1+z^(-p1)+c
  |z|<=100
  ;SOURCE: 98msg.frm
}


mz {
  z=0, c=pixel:
  z=sqr(z)+c
  c=c+p1*z
  |z| <= 4
  ;SOURCE: explode.frm
}

