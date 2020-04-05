

k1barn {
  z=pixel:
  z=(z-1)*p1
  bailout <|p2|
  ;SOURCE: 98msg.frm
}


Kapetanov11 {
  c=pixel, z=pixel-cos(c):
  c=sqr(pixel)+z, z=c*sin(z)
  |z|<8
  ;SOURCE: kapet011.frm
}


Kapetanov12 {
  c=1/pixel, z=c-sin(pixel):
  c=tan(z), z=c^2+cosxx(c)
  |z|<8
  ;SOURCE: kapet012.frm
}


Kapetanov7 {
  c=z=pixel:
  z=sqr(z)+pixel/c, z=c^2/z
  |z|<14
  ;SOURCE: kapet007.frm
}


kbarn_Spir_Stalks_ {; adapted from Paul W. Carlson, c. 1998
    ; kathy roth
    ;   p1       = Julia set coordinates
    ;   real(p2) = a factor controlling the size of the stalks
    ;   imag(p2) = iterations to skip
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in a range
    ;
  w = pixel
  c = p1
  z = bailout = iter = range_num = 0
  stalk_width = real(p2)
  skip_iters = imag(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  index_factor = (colors_in_range - 1) / stalk_width
  :
  w=(w-1)*c, wr = real(w), awr = abs(wr)
  w = w - wr + awr
    ;
  IF (abs(real(w)) <= abs(imag(w)))
    dist = abs(real(w))
  ELSE
    dist = abs(imag(w))
  ENDIF
  IF (dist < stalk_width && iter > skip_iters)
    z = index_factor * dist + range_num * colors_in_range + 1
    bailout = 1
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


kbarnCeltic {; adapted from Paul Carlson
             ; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = Julia set coordinates
    ;   real(p2) = a factor controlling the width of the stalks
    ;   imag(p2) = maximum iterations for stalks
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in a color range
    ;****************************************************
  w = pixel
  c = p1
  z = 0
  bailout = 0
  iter = 0
  range_num = 0
  stalk_width = real(p2)
  max_iter = imag(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  ratio = (colors_in_range - 1) / stalk_width:
    ;
  w=(w-1)*p1
  w = w * w, wr = real(w)
  w = w - wr + abs(wr) - c
    ;
  IF (abs(real(w)) <= abs(imag(w)))
    min_dist_to_axis = abs(real(w))
  ELSE
    min_dist_to_axis = abs(imag(w))
  ENDIF
  IF (min_dist_to_axis < stalk_width && iter > 1 && iter <= max_iter)
    z = ratio * min_dist_to_axis + range_num * colors_in_range + 1
    bailout = 1
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


KC-1m {; via Jo Weber, July 1996
       ; Eliminated superfluous "e=p3". G. Martin 05/04/99
  c=p1
  d=p2
  z=pixel:
  z=fn1(z)/c - (d/fn2(z))
  |z|>p3
  ;SOURCE: 97msg.frm
}


KC-2 {; Ken Conrad, 9/96
  a=p1
  b=p2
  c=p3
  z=pixel:
  z=(fn1(z)-a)/(fn2(z)-b)
  |z|<c
  ;SOURCE: 97msg.frm
}


kcenter_jul {
        ;
        ; "circle & line thru center" coloring method for Julia sets
        ; p1 = c = Julia parameter
        ; p2 = x-circle center
        ; real(p3) = x-circle radius
        ; imag(p3) = y-line slope angle, degrees
        ; bailout hardcoded to 10^12
        ; use "decomp=256" coloring
        ;
  zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
  cenx=p2, radx=real(p3), rad2x=radx*radx
  theta=imag(p3)*pi/180, ct=cos(theta), st=sin(theta)
  ay=-st, by=ct, cy=-ct*imag(cenx)+st*real(cenx):
  iter=iter+1, w=fn1(zc)
  zc=fn3(1/fn2(w*w))
  tempx=|zc-cenx|-rad2x
  tempy=ay*real(zc)+by*imag(zc)+cy
  temp=tempx+flip(tempy), r=|temp|
  IF (r<rmin)
    rmin=r, z=temp
  ENDIF
  IF ((|zc|>bailout)||(iter==maxit))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


kfact2_jul {; formula file for patchwork
  z=pixel, c=p1, kfac=real(p2), dt=imag(p2)*pi, t=0, k=kfac:
  r=cos(t), kr=k*r, z=fn1(z*kr)/kr 
  z=sqr(z)+c, t=t+dt, k=k*kfac
  |z| < 4
  ;SOURCE: 97msg.frm
}


kg1401 {
  z = y = pixel-p2:
  z = fn1(z) * fn2(y) 
  y = fn1(y) / fn2(z)   
  |z| <= p1
  ;SOURCE: kg14.frm
}


kg1402 {
  z = y = pixel+p2:
  z = fn1(z) / fn2(y) 
  y = fn1(y) / fn2(z)   
  |z| <= p1
  ;SOURCE: kg14.frm
}


kg1403 {
  z = y = pixel*p2:
  z = fn1(z) * fn2(y) 
  y = fn1(y) * fn2(z)   
  |z| <= p1
  ;SOURCE: kg14.frm
}


kg1404 {
  z = y = pixel/p2:
  z = fn1(z) / fn2(y) 
  y = fn1(y) * fn2(z)   
  |z| <= p1
  ;SOURCE: kg14.frm
}


kg1501 {
  z = pixel:
  a = z ^ p1
  b = 1 / a
  z = fn1(a) * fn2(b) 
  |z| <= p2
  ;SOURCE: kg15.frm
}


kg1502 {
  z = 1/pixel:
  a = z ^ p1
  b = 1 / a
  z = fn1(a) * fn2(b) 
  |z| <= p2
  ;SOURCE: kg15.frm
}


kg1601 {
  z = y = pixel-z:
  z = fn1(z) * fn2(y) 
  y = fn1(y) / fn2(z)   
  |z| <= p1
  ;SOURCE: kg16.frm
}


kg1602 {
  z = y = pixel+z:
  z = fn1(z) / fn2(y) 
  y = fn1(y) / fn2(z)   
  |z| <= p1
  ;SOURCE: kg16.frm
}


kg1603 {
  z = y = pixel+1/z:
  z = fn1(z) * fn2(y) 
  y = fn1(y) * fn2(z)   
  |z| <= p1
  ;SOURCE: kg16.frm
}


kg1604 {
  z = y = pixel/z:
  z = fn1(z) / fn2(y) 
  y = fn1(y) * fn2(z)   
  |z| <= p1
  ;SOURCE: kg16.frm
}


kg1701 {; Karl Geigl 100327,156
  z=pixel, c=pixel:
  z=fn1(z)+c
  c=fn2(c)+z
  |z| <= p2
  ;SOURCE: kg17.frm
}


kg1702 {; Karl Geigl 100327,156
  z=pixel, c=p1:
  z=fn1(z)+fn2(c)
  c=p2+c
  |z| <= p1
  ;SOURCE: kg17.frm
}


kg1703 {; Karl Geigl 100327,156
  z=pixel, c=1/pixel:
  z=fn1(z)+c
  c=p2*c
  |z| <= p1
  ;SOURCE: kg17.frm
}


kg1704 {; Karl Geigl 100327,156
  z=1/pixel, c=p1:
  z=fn1(z)+c
  c=p2*fn2(c)
  |z| <= p1
  ;SOURCE: kg17.frm
}


kg1801 {; Karl Geigl 100327,156
  z = y = pixel:
  z = fn1(fn2(z) + pixel) 
  y = p1 / pixel        
  |z| <= p1
  ;SOURCE: kg18.frm
}


kg1802 {; Karl Geigl 100327,156
  z = y = pixel:
  z = fn1(fn2(z) - pixel) 
  y = p1 / pixel        
  |z| <= p1
  ;SOURCE: kg18.frm
}


kg1803 {; Karl Geigl 100327,156
  z = y = pixel:
  z = fn1(fn2(z) + pixel) 
  y = p1 * pixel        
  |z| <= p1
  ;SOURCE: kg18.frm
}


kg1804 {; Karl Geigl 100327,156
  z = y = pixel:
  z = fn1(fn2(z) * pixel) 
  y = p1 - pixel        
  |z| <= p1
  ;SOURCE: kg18.frm
}


kg1805 {; Karl Geigl 100327,156
  z = y = pixel:
  z = fn1(fn2(z) + pixel) - y 
  y = p1 / pixel        
  |z| <= p1
  ;SOURCE: kg18.frm
}


kg1806 {; Karl Geigl 100327,156
  z = y = pixel:
  z = fn1(fn2(z) + pixel) + y 
  y = p1 / pixel        
  |z| <= p1
  ;SOURCE: kg18.frm
}


kg1807 {; Karl Geigl 100327,156
  z = y = pixel:
  z = fn1(fn2(z) + pixel) * y 
  y = p1 / pixel        
  |z| <= p1
  ;SOURCE: kg18.frm
}


kg1808 {; Karl Geigl 100327,156
  z = y = pixel:
  z = fn1(fn2(z) + pixel) / y 
  y = p1 / pixel        
  |z| <= p1
  ;SOURCE: kg18.frm
}


kg1809 {; Karl Geigl 100327,156
  z = y = pixel:
  z = fn1(fn2(z) * pixel) + y 
  y = p1 / pixel        
  |z| <= p1
  ;SOURCE: kg18.frm
}


kg1810 {; Karl Geigl 100327,156
  z = y = pixel:
  z = fn1(fn2(z) - pixel) - y 
  y = p1 / pixel        
  |z| <= p1
  ;SOURCE: kg18.frm
}


kg1901 {
  z=pixel, c=z+pixel:
  z=1/(z)+fn1(c)
  c=z*fn2(z)
  |z| <= p2
  ;SOURCE: kg19.frm
}


kg1902 {
  z=1+pixel, c=p1-c:
  z=fn1(z+c)+fn2(c+z)
  c=p2+c
  |z| <= p1
  ;SOURCE: kg19.frm
}


kg1903 {
  z=z+1/pixel, c=1/pixel:
  z=1/fn1(z)+1/c
  c=p2*1/c+z
  |z| <= p1
  ;SOURCE: kg19.frm
}


kg1904 {
  z=1/pixel, c=pixel/p1:
  z=fn1(z)+c
  c=p2*c-fn2(c)
  |z| <= p1
  ;SOURCE: kg19.frm
}


kg2001 {
  z = y = pixel:
  z = fn1(z) + fn2(z-y) 
  y = p1 / z-y  
  |z| <= p1
  ;SOURCE: kg20.frm
}


kg2002 {
  z = y = pixel:
  z = fn1(z) + fn2(z+y) 
  y = y*y / z*z-y       
  |z| <= p1
  ;SOURCE: kg20.frm
}


kg2003 {
  z = y = pixel:
  z = fn1(z) + fn2(z*z-y) 
  y = p1*z / z-y        
  |z| <= p1
  ;SOURCE: kg20.frm
}


kg2004 {
  z = y = pixel:
  z = fn1(z) + fn2(z-y*y) 
  y = p1*y / z-y        
  |z| <= p1
  ;SOURCE: kg20.frm
}


kg2101 {
  z=pixel:
  z=fn1(z)^p1 + fn2(z)^p2 + c
  |z| <= p2
  ;SOURCE: kg21.frm
}


kg2102 {
  z=pixel:
  z=fn1(z)*p1 + fn2(z)^p2 + c
  |z| <= p2
  ;SOURCE: kg21.frm
}


kg2103 {
  z=pixel:
  z=fn1(z)/p1 + fn2(z)^p2 + c
  |z| <= p2
  ;SOURCE: kg21.frm
}


kg2104 {
  z=pixel:
  z=fn1(z)/p1 ^ fn2(z)^p2 + c
  |z| <= p2
  ;SOURCE: kg21.frm
}


kg2105 {
  z=pixel:
  z=fn1(z)/p1 ^ fn2(z)*p2 + c
  |z| <= p2
  ;SOURCE: kg21.frm
}


kg2201 {
  z=pixel+c:
  z=fn1(z)^p1 + fn2(z)^p2 + c
  |z| <= p2
  ;SOURCE: kg22.frm
}


kg2202 {
  z=p1+pixel:
  z=fn1(z)*p1 + fn2(z)^p2 + c
  |z| <= p2
  ;SOURCE: kg22.frm
}


kg2203 {
  z=p1-pixel:
  z=fn1(z)/p1 + fn2(z)^p2 + c
  |z| <= p2
  ;SOURCE: kg22.frm
}


kg2204 {
  z=pixel^p1:
  z=fn1(z)/p1 ^ fn2(z)^p2 + c
  |z| <= p2
  ;SOURCE: kg22.frm
}


kg2205 {
  z=p1/pixel:
  z=fn1(z)/p1 ^ fn2(z)*p2 + c
  |z| <= p2
  ;SOURCE: kg22.frm
}


kgexp1 { 
  z = Pixel:
  z = z ^ 2.71828182845905 + c + pixel
  |z| <= 100 
  ;SOURCE: kgexp.frm
}


kgexp10 { 
  z = Pixel:
  z = z + 2.71828182845905 ^ c + c
  |z| <= 100 
  ;SOURCE: kgexp.frm
}


kgexp11 { 
  z = Pixel:
  z = z ^ 2.71828182845905 + c ^ 2.71828182845905
  |z| <= 100 
  ;SOURCE: kgexp.frm
}


kgexp12 { 
  z = pixel:
  z = z ^ 2.71828182845905 + c
  |z| <= 100 
  ;SOURCE: kgexp.frm
}


kgexp13 { 
  z = Pixel:
  z = z ^ 2.71828182845905 + c
  |z| <= 100 
  ;SOURCE: kgexp.frm
}


kgexp14 { 
  z = Pixel:
  z = z ^ 2.71828182845905 + c
  |z| <= 100 
  ;SOURCE: kgexp.frm
}


kgexp2 { 
  z = Pixel, c=fn1(z):
  z = z ^ 2.71828182845905 - c + pixel
  |z| <= 100 
  ;SOURCE: kgexp.frm
}


kgexp3 { 
  z = Pixel, c=fn1(z):
  z = z ^ 2.71828182845905 + c * pixel
  |z| <= 100 
  ;SOURCE: kgexp.frm
}


kgexp4 { 
  z = Pixel, c=fn1(z):
  z = z ^ 2.71828182845905 + c ^ pixel
  |z| <= 100 
  ;SOURCE: kgexp.frm
}


kgexp5 { 
  z = Pixel:
  z = z ^0.5 * z ^ 2.71828182845905 + c + pixel
  |z| <= 100 
  ;SOURCE: kgexp.frm
}


kgexp6 { 
  z = Pixel:
  z = c ^ 2.71828182845905 * z ^ pixel
  |z| <= 100 
  ;SOURCE: kgexp.frm
}


kgexp7 { 
  z = Pixel:
  z = z + c - 2.71828182845905 ^z
  |z| <= 100 
  ;SOURCE: kgexp.frm
}


kgexp8 { 
  z = Pixel:
  z = z ^ 2.71828182845905 + c ^ pixel
  |z| <= 100 
  ;SOURCE: kgexp.frm
}


kgexp9 {; Revised for Fractint v20 by G. Martin 
  z = Pixel:
  z = z ^ (-2.71828182845905) + pixel
  |z| <= 100 
  ;SOURCE: kgexp.frm
}


kgfunc1 { 
  z = Pixel:
  z = z ^ 2 + c
  z = fn1(z)
  |z| <= 100 
  ;SOURCE: kgfunc.frm
}


kgfunc10 { 
  z = Pixel:
  z = (22/7)  / fn1(z) * z + c * fn2(z)
  |z| <= 100 
  ;SOURCE: kgfunc.frm
}


kgfunc2 { 
  z = Pixel:
  z = z ^ 2 + c + pixel
  z = fn1(z)
  |z| <= 100 
  ;SOURCE: kgfunc.frm
}


kgfunc3 { 
  z = Pixel:
  z = z ^ 2 + c
  c = fn1(z)
  |z| <= 100 
  ;SOURCE: kgfunc.frm
}


kgfunc4 { 
  z = Pixel:
  z = z ^ 2 + c + pixel
  z = fn1(c)
  |z| <= 100 
  ;SOURCE: kgfunc.frm
}


kgfunc5 { 
  z = Pixel:
  z = (22/7) *  fn1(z) + c
  |z| <= 100 
  ;SOURCE: kgfunc.frm
}


kgfunc6 { 
  z = Pixel:
  z = (22/7) / fn1(z) + c
  |z| <= 100 
  ;SOURCE: kgfunc.frm
}


kgfunc7 { 
  z = Pixel:
  z = (22/7) *  fn1(z) * z + c
  |z| <= 100 
  ;SOURCE: kgfunc.frm
}


kgfunc8 { 
  z = Pixel:
  z = (22/7) * z / fn1(z) + c
  |z| <= 100 
  ;SOURCE: kgfunc.frm
}


kgfunc9 { 
  z = Pixel:
  z = (22/7)  / fn1(z) * z + c
  |z| <= 100 
  ;SOURCE: kgfunc.frm
}


kilroy (XAXIS) {; The sign change trick makes a small change here
  z=pixel, zp = (0,0):
  temp = z
  z = z*z - zp
  zp = (temp)^.5
  |zp| <= 4 
  ;SOURCE: noel.frm
}


Kim_frm {; for Jiho Kim
  z=0, c=pixel
  z=z*z+c
  |cos(z)| <= |exp(c)|
  ;SOURCE: 98msg.frm
}


kissing {; Giuseppe Zito
  z = pixel
  d8 = -0.205525
  d13 = 0.699057
  d14 = -0.932866
  d17 = -0.224033
  d20 = 0.996985
  d22 = 0.729132
  : 
  x = real(z), y = imag(z)
  s0 = y
  s0 = s0 /x
  newx = s0 
  s0 = x
  s0 = s0 *x
  s1 = y
  s0 = s0 +s1
  s0 = s0 *d8
  s0 = s0 *x
  s0 = s0 -x
  s0 = s0 *d13
  s0 = s0 /d14
  s0 = s0 *x
  s0 = s0 +d17
  s0 = s0 -d20
  s0 = s0 -d22
  s0 = s0 -y
  s0 = s0 *y
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


kleep1 {
  z=pixel: 
  z=(z/imag(z)-z/real(z))*p1*conj(z)+pixel
  |z|<=4
  ;SOURCE: fkt.frm
}


kleep1c {
  z=pixel:
  z=(z/imag(z)-z/real(z))*p1*conj(z)+p2
  |z|<=4
  ;SOURCE: fkt.frm
}


Klesmer {
  z = c = pixel:
  z = z + p1
  c = sqrt(z)
  z1 = fn1(z) + pixel
  z2 = fn2(z) + pixel
  z3 = (c * (1/z))
  z = z3 * (z1/z2) 
  |z| < 4
  ;SOURCE: gestalt.frm
}


kmoe-010 {; by Kirsten Moe. Rewritten for Orgform by G. Martin 7/14/97
  z=pixel
  x=cos(sqr(z)):
  z=z*z*z*z*(25+x)
  x=sin(sqr(z))
  |z|<=4
  ;SOURCE: kmoe-02.frm
}


kmoe-02 {; by Kirsten Moe. Rewritten for Orgform by G. Martin, 7/14/97
  x=cos(sqr(pixel))
  zx=real(p2)+64*fn1(64):
  z=(x-1)*(x-2)*zx
  x=sin(sqr(z))
  |z|<=4
  ;SOURCE: kmoe-01.frm
}


kmoe-03 {; by Kirsten Moe. Rewritten by G. Martin for Orgform 7/14/97
  z=pixel 
  x=cos(sqr(z))       
  z=3/(x-3)*imag(z)
  z<12 
  ;SOURCE: kmoe-03.frm
}


Knot {; Giuseppe Zito c1=.95 
  z=pixel, c1=real(p1):
  x = real(z), y = imag(z)
  newx = -y 
  newy = c1*x*x*x -x -y 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4
  ;SOURCE: zg.frm
}


koch3_J {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=0.30769, d0=0.29412
  a1=0.19231, b1=-0.20588, c1=0.65385, d1=0.08823
  a2=0.19231, b2=0.20588, c2=-0.65385, d2=0.08823
  a3=0.30769, d3=0.29412
  a4=0.38462, d4=-0.29412
  al0=0.09050, k0=-1.21152, l0=-0.49362
  al1=0.15158, k1=-1.17017, l1=-1.60019
  al2=0.15158, k2=1.16858, l2=-1.58379
  al3=0.09050, k3=1.21663, l3=-0.49362
  al4=-0.11312, k4=-0.00227, l4=-1.13122
  z=pixel:
  x=real(z)
  y=imag(z)
  o0=(d0*x+k0)/al0+flip((a0*y+l0)/al0)
  op0=|o0-p2|
  o1=(d1*x-b1*y+k1)/al1+flip((-c1*x+a1*y+l1)/al1)
  op1=|o1-p2|
  o2=(d2*x-b2*y+k2)/al2+flip((-c2*x+a2*y+l2)/al2)
  op2=|o2-p2|
  o3=(d3*x+k3)/al3+flip((a3*y+l3)/al3)
  op3=|o3-p2|
  o4=(d4*x+k4)/al4+flip((a4*y+l4)/al4)
  op4=|o4-p2|
  IF (op0<op1 && op0<op2 && op0<op3 && op0<op4)
    z=o0
  ELSEIF (op1<op0 && op1<op2 && op1<op3 && op1<op4)
    z=o1
  ELSEIF (op2<op1 && op2<op0 && op2<op3 && op2<op4)
    z=o2
  ELSEIF (op3<op0 && op3<op1 && op3<op2 && op3<op4)
    z=o3
  ELSEIF (op4<op0 && op4<op1 && op4<op2 && op4<op3)
    z=o4
  ENDIF
  |z|<=p1
  ;SOURCE: ifsinv.frm
}


koch3_M {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=0.30769, d0=0.29412
  a1=0.19231, b1=-0.20588, c1=0.65385, d1=0.08823
  a2=0.19231, b2=0.20588, c2=-0.65385, d2=0.08823
  a3=0.30769, d3=0.29412
  a4=0.38462, d4=-0.29412
  al0=0.09050, k0=-1.21152, l0=-0.49362
  al1=0.15158, k1=-1.17017, l1=-1.60019
  al2=0.15158, k2=1.16858, l2=-1.58379
  al3=0.09050, k3=1.21663, l3=-0.49362
  al4=-0.11312, k4=-0.00227, l4=-1.13122
  z=pixel:
  x=real(z)
  y=imag(z)
  o0=(d0*x+k0)/al0+flip((a0*y+l0)/al0)
  op0=|o0-pixel|
  o1=(d1*x-b1*y+k1)/al1+flip((-c1*x+a1*y+l1)/al1)
  op1=|o1-pixel|
  o2=(d2*x-b2*y+k2)/al2+flip((-c2*x+a2*y+l2)/al2)
  op2=|o2-pixel|
  o3=(d3*x+k3)/al3+flip((a3*y+l3)/al3)
  op3=|o3-pixel|
  o4=(d4*x+k4)/al4+flip((a4*y+l4)/al4)
  op4=|o4-pixel|
  IF (op0<op1 && op0<op2 && op0<op3 && op0<op4)
    z=o0
  ELSEIF (op1<op0 && op1<op2 && op1<op3 && op1<op4)
    z=o1
  ELSEIF (op2<op1 && op2<op0 && op2<op3 && op2<op4)
    z=o2
  ELSEIF (op3<op0 && op3<op1 && op3<op2 && op3<op4)
    z=o3
  ELSEIF (op4<op0 && op4<op1 && op4<op2 && op4<op3)
    z=o4
  ENDIF
  |z|<=p1
  ;SOURCE: ifsinv.frm
}


koffset_rx=ry_jul {; adapted from Kerry Mitchell
     ;
     ; "2 offset circles" coloring method for Julia sets
     ; p1 = c = Julia parameter
     ; p2 = approximate circle center
     ; real(p3) = (both) circle radius
     ; imag(p3) = center offsets--added to p2 for
     ;   centerx, subtracted from p2 for centery
     ; bailout hardcoded to 10^12
     ; use "decomp=256" coloring
     ;
  zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
  cenx=p2*(1+imag(p3)), radx=real(p3), rad2x=radx*radx
  ceny=p2*(1-imag(p3)), rad2y=rad2x:
  iter=iter+1, w=fn1(zc)
  zc=fn3(1/fn2(w*w))
  tempx=|zc-cenx|-rad2x
  tempy=|zc-ceny|-rad2y
  temp=tempx+flip(tempy), r=|temp|
  IF (r<rmin)
    rmin=r, z=temp
  ENDIF
  IF ((|zc|>bailout)||(iter==maxit))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


Komplexmatsch {
  z=pixel+1/fn1(p2*pixel)+1/fn2(p2*pixel):
  z=((p1-1)*z^p1+1)/(p1*z^(p1-1)) 
  0.001<=|z^p1-1|
  ;SOURCE: crazynwt.frm
}


Korfu (YAXIS) {
  z = c = pixel:
  z = z + p1
  c = c/fn1(z) 
  z = z * fn2(c)
  |z| < 4
  ;SOURCE: korfu.frm
}


kpassion_balls {; variant of Paul W. Carlson and Kerry Mitchell
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = a factor controlling the size of the balls
    ;   imag(p1) = number of iterations to skip
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
  skip = imag(p1)
  k=real(p3)
  r=imag(p3)
    ;****************************************************
    ; In the accompanying par file, mndballs.par,
    ; we have 8 color ranges with 30 colors in each range
    ; for a total of 240 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| >= 1000.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
  num_ranges = real(p2)
  colors_in_range = imag(p2)
    ;****************************************************
    ; Real(p1) controls the size of the balls.
    ; These values will usually be in the range 0.001 to 0.1
    ;****************************************************
  ball_size = real(p1)
  index_factor = (colors_in_range - 1) / ball_size 
  :
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be express in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This example uses the standard Mandelbrot set equation.
    ;****************************************************
  w =w*w + c
  c= c + k*fn1(w)
    ;****************************************************
    ; If the orbit point is within the specified distance of a circle,
    ; set z to the index into the colormap and set the bailout flag.
    ;****************************************************
  IF (iter > skip)
    wr = real(w), wi = imag(w)
    d = wr * wr + (wi - .5) * (wi - .5)
    IF (d < ball_size)
      bailout = 1
      delta = ball_size - d
    ELSEIF (wr * wr + (wi + .5) * (wi + .5) < ball_size)
      d = wr * wr + (wi + .5) * (wi + .5)
      bailout = 1
      delta = ball_size - d
    ELSEIF ((wr - .5) * (wr - .5) + wi * wi < ball_size)
      d = (wr - .5) * (wr - .5) + wi * wi
      bailout = 1
      delta = ball_size - d
    ELSEIF ((wr + .5) * (wr + .5) + wi * wi < ball_size)
      d = (wr + .5) * (wr + .5) + wi * wi
      bailout = 1
      delta = ball_size - d
    ENDIF
  ENDIF
  IF (bailout)
    z = index_factor * delta + range_num * colors_in_range + 1
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


kquat_Celtic {; adapted from Paul Carlson by Kathy Roth
              ; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = Julia set coordinates
    ;   real(p2) = a factor controlling the width of the stalks
    ;   imag(p2) = maximum iterations for stalks
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in a color range
    ;****************************************************
  w = pixel
  c = p1
  z = 0
  bailout = 0
  iter = 0
  range_num = 0
  stalk_width = real(p2)
  max_iter = imag(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  ratio = (colors_in_range - 1) / stalk_width
  :
    ;
  w = w * w * w * w, wr = real(w)
  w = w - wr + abs(wr) - c
    ;
  IF (abs(real(w)) <= abs(imag(w)))
    min_dist_to_axis = abs(real(w))
  ELSE
    min_dist_to_axis = abs(imag(w))
  ENDIF
  IF (min_dist_to_axis < stalk_width && iter > 1 && iter <= max_iter)
    z = ratio * min_dist_to_axis + range_num * colors_in_range + 1
    bailout = 1
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


Kreagor {
  z = c = pixel:
  z = fn1(z) + c + p1
  x = real(z), y = imag(z)
  z = ((1/z) * (fn2(x)/fn1(y)))/ z + c
  |z| <= 4 + p2
  ;SOURCE: d-rock.frm
}


kx01 {
  z=pixel, x=fn4(|(z+1)^1.6180339|/p1), i=imag(z)+p2:
  z=fn1(i-pixel)+fn2(x)
  a=z+(1*i)
  z=fn1(a)+fn3(z)
  |z|<=4
  ;SOURCE: ad3.frm
}


kx02 {
  z=pixel, x=fn4(|(z+1)^1.6180339|/p1), i=imag(z)+p2:
  z=fn1(i-pixel)+fn2(x)
  a=z+(i^2)
  z=fn1(a)+fn3(z)
  |z|<=4
  ;SOURCE: ad3.frm
}

