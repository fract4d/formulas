

D (XAXIS_NOPARM) {; Edited for Fractint v. 20 by George Martin, 10/98 
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSEIF (x<20)
    z=sin(z)+pixel
  ELSE
    z=cos(z)+pixel
  ENDIF
  x=x+1 
  |z|<=4
  ;SOURCE: fract001.frm
}


D's_Mandel (XAXIS) {
  z = 0, c = pixel:
  z = z*z + c
  z = z + fn1(p1)
  z < 4
  ;SOURCE: damion.frm
}


D-ROCK {
  z = 0, c = pixel:
  z = sqr(z) + c
  c = c + p1 * z
  z = fn1(z)/c
  |z| <= 4
  ;SOURCE: d-rock.frm
}


D_Newt {
  z = pixel:
  n = z^3 - 1  + p1
  d = 3*fn2(z) + p2
  z = fn1(z) - n/d
  |n| >= 0.000001 
  ;SOURCE: astral.frm
}


DAFRM01 {;  Don Archer, 1993
  z = pixel :
  z = z ^ (z - 1) * (fn1(z) + pixel)
  |z| <= 4
  ;SOURCE: fractint.frm
}


DAFRM02 {  
  z = pixel :
  z = (z ^ (z - 1) + 7/11) * (fn1(z) + pixel)
  |z| <= 4
  ;SOURCE: form1.frm
}


DAFRM03 { 
  z = pixel :
  z = z * z^ (1 - z) * fn1(z) + pixel
  |z| < 4
  ;SOURCE: form1.frm
}


DAFRM04 {
  z = pixel, c = p1 :
  z = z ^ (z - 1) * fn1(z) + pixel
  c = c + p2
  |z| <= 4
  ;SOURCE: form1.frm
}


DAFRM05 {;  M_TchebychevT3
  c = P1, z = Pixel:
  z = c*z*(4*z*z-3)
  |z|<100
  ;SOURCE: form1.frm
}


DAFRM06  {;  var M_TchebychevT3
  c = P1, z = Pixel:
  z = 2*c*z*(z*z*3.14159)
  |z|<100
  ;SOURCE: da00.frm
}


DAFRM07 {
  z = pixel, c = p1 :
  z = z ^ (z - 1) * fn1(z) + pixel
  |z| <= 4
  ;SOURCE: fractint.frm
}


DAFRM08 {; Edited for Fractint v. 20 by George Martin, 10/98
         ; The revision is to give the result that the author 
         ; intended 
  z = pixel, c = z + z^ (1 - z):
  tmp = fn1(z)
  tmp = real(tmp)*real(c)-imag(tmp)*imag(c)\
          + flip(real(tmp)*imag(c)-imag(tmp)*real(c)) 
  z = tmp + pixel
  |z| <= 100
  ;SOURCE: da00.frm
}


DAFRM09 {; Edited for Fractint v. 20 by George Martin, 10/98
         ; The revision is to give the result that the author
         ; intended 
  z = pixel, c = z + z^ (z - 1):
  tmp = fn1(z)
  tmp = real(tmp)*real(c)-imag(tmp)*imag(c)\
         + flip(real(tmp)*imag(c)-imag(tmp)*real(c))
  z = tmp + pixel + 12
  |z| <= 4
  ;SOURCE: fractint.frm
}


DAFRM10 {; var Ron Barnett REB004K
  z = pixel:
  x = flip(pixel + fn1(4/z - z/5 + 125))
  z = x*z + p1 + 125 
  |z| <= 100
  ;SOURCE: da00.frm
}


DAFRM11 {; var Ron Barnett REB004L
  z = pixel:
  x = flip(pixel + fn1(2*p1/3*z - z/(p2+125)))
  z = x*z + pixel 
  |z| <= 100
  ;SOURCE: da00.frm
}


DAFRM12 {; var Ron Barnett REB004M
  z = pixel:
  x = real(z), y = imag(z)
  x1 = -fn1((x*x + y*y) - 6*x)*x/(2*x*x + y*y)
  y1 = -fn2((x*x + y*y) + 6*x)*y/(2*x*x + y*y)
  x2 = x1*x1 - y1*y1 + p1 + 25
  y2 = 3*x*y - 25
  z = x2 + flip(y2) 
  |z| <= 100
  ;SOURCE: da00.frm
}


dafrm21 {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = -fn1((x*x*x + y*y*y - 1) - 6*x)*x/(2*x*x*x + y*y*y - 1)
  y1 = -fn2((x*x*x + y*y*y - 1) + 6*x)*y/(2*x*x*x + y*y*y - 1)
  x2 = x1*x1*x1 - y1*y1*y1 + p1 + 5
  y2 = 4*x*y - 18
  z = x2 + flip(y2)
  |z| <= 100
  ;SOURCE: fractint.frm
}


Daisy (ORIGIN) {; Mark Peterson
  z = pixel:
  z = z*z + (0.11031, -0.67037)
  |z| <= 4
  ;SOURCE: fractint.frm
}


DaliJack (Yaxis) {
  z = pixel:
  C1 = fn1(z) / fn2(z)
  C2 = fn3(z) - fn4(z)
  C3 = fn1(z) * fn3(z)
  z = C1 * C2 - C3
  |z| <= 4
  ;SOURCE: orman2.frm
}


DaliJack2 (Yaxis) {
  z = pixel:
  C1 = fn1(z) * fn2(z)
  C2 = fn3(z) - fn4(z)
  C3 = fn1(z) / fn3(z)
  z = C1 / C2 - C3
  |z| <= 4
  ;SOURCE: orman2.frm
}


DaliJack3 {
  z = pixel:
  C1 = fn1(z) * fn2(z)
  C2 = fn3(z) * fn4(z)
  C3 = fn1(z) / fn3(z)
  z = C1 / C2 - C3
  |z| <= 4
  ;SOURCE: orman2.frm
}


DaliJack4(Xaxis) {
  z = pixel:
   C1 = fn1(z) * fn2(z)
   C2 = fn3(z) * fn4(z)
   C3 = fn1(z) + fn3(z)
   z = C1 * C2 - C3
   |z| <= 4
   ;SOURCE: jack5.frm
}


DaSum_PHC {
  z1 = pixel + p1, z2 = pixel:
  z1 = (z1 - 1) * (z1 + 0.5) * (z1*z1+1)
  z1 = (z1 * 0.3) - ((z1)/fn1(z1))
  z2 = z2 + p2, r = fn2(z2) * z2^2, q = z2^e
  z2 = (z2 - imag(1/r) / z2 - real(1/q)) 
  z = (z1 * (whitesq == 1)) + (z2 * (whitesq == 0))
  |z| <= 4
  ;SOURCE: beck.frm
}


davidsmask {
  c = pixel
  c2 = c*c, c75 = c2 + 0.75, c25 = c2 - 0.25
  c75p1 = c75 + p1
  z = pixel:
  z2 =z*z
  n = z*z2 - c75*z + c25
  d = 3*z2 - c75p1
  z = z- n/d
  0.000001 <= |n|
  ;SOURCE: davweird.frm
}


Db2_Expos_Newt1 {; Copyright (c) Paul W. Carlson, 1998
    ;
    ;   real(p1) = a factor controlling the size of the stalks
    ;   imag(p1) = minimum iterations
    ;   real(p2) = convergence test distance
    ;   imag(p2) = value of |w| for bailout
    ;
  z = bailout = iter = range_num = dist = 0
  c = pixel
  cm1 = c - 1
  tcm1 = cm1 + cm1
  w = sqrt((1 - c) / 6)
  sc = sqrt(-c)
  stalk_width = real(p1)
  skip_iters = imag(p1)
  cdist = real(p2)
  index_factor = 59 / stalk_width
  :
  w2 = w * w
  w = w - (w2 * w2 + cm1 * w2 - c) / (4 * w2 * w + tcm1 * w)
    ;
  IF (iter > skip_iters)
    IF (abs(real(w)) <= abs(imag(w)))
      min_dist = abs(real(w))
    ELSE
      min_dist = abs(imag(w))
    ENDIF
    IF (dist == 0 && min_dist < stalk_width)
      dist = min_dist
    ENDIF
    IF (|w + (-1,0)| < cdist)
      bailout = 1
      range_num = 0
    ELSEIF (|w + (1,0)| < cdist)
      bailout = 1
      range_num = 1
    ELSEIF (|w + sc| < cdist)
      bailout = 1
      range_num = 2
    ELSEIF (|w - sc| < cdist)
      bailout = 1
      range_num = 3
    ENDIF
  ENDIF
  IF (bailout == 1)
    z = index_factor * dist + range_num * 60 + 1
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < imag(p2)
  ;SOURCE: 98msg.frm
}


Dbl_Exp_Newt1_J {; Copyright (c) Paul W. Carlson, 1998
    ;
    ;   real(p1) = a factor controlling the size of the stalks
    ;   imag(p1) = minimum iterations
    ;   real(p2) = convergence test distance
    ;   imag(p2) = color scheme:
    ;              1 = 8 ranges,  30 colors per range (default)
    ;              2 = 2 ranges, 125 colors per range
    ;   p3       = Julia set coordinates
    ;
  z = bailout = iter = range_num = dist = 0
  w = pixel
  c = p3
  cm1 = c - 1
  tcm1 = cm1 + cm1
  sc = sqrt(-c)
  stalk_width = real(p1)
  skip_iters = imag(p1)
  cdist = real(p2)
  IF (imag(p2) == 2)
    num_ranges = 2
    colors_in_range = 125
  ELSE
    num_ranges = 8
    colors_in_range = 30
  ENDIF
  index_factor = (colors_in_range - 1) / stalk_width
  :
  w2 = w * w
  w = w - (w2 * w2 + cm1 * w2 - c) / (4 * w2 * w + tcm1 * w)
    ;
  IF (iter > skip_iters)
    IF (abs(real(w)) <= abs(imag(w)))
      min_dist = abs(real(w))
    ELSE
      min_dist = abs(imag(w))
    ENDIF
    IF (dist == 0 && min_dist < stalk_width)
      dist = min_dist
    ENDIF
    IF (|w + (-1,0)| < cdist)
      bailout = 1
    ELSEIF (|w + (1,0)| < cdist)
      bailout = 1
    ELSEIF (|w + sc| < cdist)
      bailout = 1
    ELSEIF (|w - sc| < cdist)
      bailout = 1
    ENDIF
  ENDIF
  IF (bailout == 1)
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


Dbl_Expos_Newt1 {; Copyright (c) Paul W. Carlson, 1998
    ;
    ;   real(p1) = a factor controlling the size of the stalks
    ;   imag(p1) = minimum iterations
    ;   real(p2) = convergence test distance
    ;   imag(p2) = value of |w| for bailout
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in a range
    ;
  z = bailout = iter = range_num = dist = 0
  c = pixel
  cm1 = c - 1
  tcm1 = cm1 + cm1
  w = sqrt((1 - c) / 6)
  sc = sqrt(-c)
  stalk_width = real(p1)
  skip_iters = imag(p1)
  cdist = real(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  index_factor = (colors_in_range - 1) / stalk_width
  :
  w2 = w * w
  w = w - (w2 * w2 + cm1 * w2 - c) / (4 * w2 * w + tcm1 * w)
    ;
  IF (iter > skip_iters)
    IF (abs(real(w)) <= abs(imag(w)))
      min_dist = abs(real(w))
    ELSE
      min_dist = abs(imag(w))
    ENDIF
    IF (dist == 0 && min_dist < stalk_width)
      dist = min_dist
    ENDIF
    IF (|w + (-1,0)| < cdist)
      bailout = 1
    ELSEIF (|w + (1,0)| < cdist)
      bailout = 1
    ELSEIF (|w + sc| < cdist)
      bailout = 1
    ELSEIF (|w - sc| < cdist)
      bailout = 1
    ENDIF
  ENDIF
  IF (bailout == 1)
    z = index_factor * dist + range_num * colors_in_range + 1
    bailout = 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < imag(p2)
  ;SOURCE: 98msg.frm
}


Dbl_Expos_Newt2 {; Copyright (c) Paul W. Carlson, 1998
    ;
    ;   real(p1) = a factor controlling the size of the stalks
    ;   imag(p1) = minimum iterations
    ;   real(p2) = convergence test distance
    ;   imag(p2) = value of |w| for bailout
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in a range
    ;
  z = bailout = iter = range_num = dist = 0
  c = pixel
  csqd = c * c
  icsqd = 1 / csqd
  sc = sqrt(-icsqd)
  a = csqd - icsqd
  w = sqrt(a / 6)
  stalk_width = real(p1)
  skip_iters = imag(p1)
  cdist = real(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  index_factor = (colors_in_range - 1) / stalk_width
  :
  w2 = w * w
  w = (3 * w2 * w2 - a * w2 + 1) / (4 * w * w2 - 2 * a * w)
    ;
  IF (iter > skip_iters)
    IF (abs(real(w)) <= abs(imag(w)))
      min_dist = abs(real(w))
    ELSE
      min_dist = abs(imag(w))
    ENDIF
    IF (dist == 0 && min_dist < stalk_width)
      dist = min_dist
    ENDIF
    IF (|w + c| < cdist)
      bailout = 1
    ELSEIF (|w - c| < cdist)
      bailout = 1
    ELSEIF (|w + sc| < cdist)
      bailout = 1
    ELSEIF (|w - sc| < cdist)
      bailout = 1
    ENDIF
  ENDIF
  IF (bailout == 1)
    z = index_factor * dist + range_num * colors_in_range + 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < imag(p2)
  ;SOURCE: 98msg.frm
}


DD01 {
  Q1=p1
  Q1R=real(p1)
  Q1I=imag(p1)
  Q2=p2
  Q2R=real(p2)
  Q2I=imag(p2)
  R1R=8^abs(Q1R)
  IF (Q1R>0)
    S1R= 1
  ELSE 
    S1R = -1
  ENDIF
  Z=pixel:
  Z = Q1I*fn1(fn2(Q2R*z)) + fn3(fn4(Q2I*z))
  Q2R=Q2R*S1R
  |z| < R1R
  ;SOURCE: frac_ml.frm
}


DD02 {
  Q1=p1
  Q1R=real(p1)
  Q1I=imag(p1)
  Q2=p2
  Q2R=real(p2)
  Q2I=imag(p2)
  R1R=8^abs(Q1R)
  IF (Q1R>0)
    S1R= 1
  ELSE 
    S1R = -1
  ENDIF
  Z=pixel:
  Z = Q1I*fn1(fn2(Q2R*z)) * fn3(fn4(Q2I*z))
  Q2R=Q2R*S1R
  |z| < R1R
  ;SOURCE: frac_ml.frm
}


decomp-2 {; real(p1) = radius of the circle, default: 1
          ; use "inside=0" and the decomp= option
  IF (p1 != 0)
    r = abs(real(p1))
  ELSE
    r = 1
  ENDIF
  d = cabs(pixel)
  a = d * 2*pi / r
  z = e^((0,1) * d * 2*pi / r)
  IF (d > r)
    use_inside_color = 1
  ELSE
    use_inside_color = 0
  ENDIF
  :
  use_inside_color
  ;SOURCE: test.frm
}


decomposable-M {
  continue = 1      ; Set flag for continuation.
  z = 0
  c = pixel    ; set up the pixel to color
  iter = 0     ; keep our own count 
  :                 ; initialization.
  IF (|z| > 4)      ; Bailout at 4
    continue = 0    ; Set flag to force an exit.
    z = z - iter    ; take out the iterations (?1)
  ELSE              ; Fractint put in
    z = sqr(z) + c  ; standard MSet iteration
  ENDIF   ; Does if, else and endif have to be on separate lines????
  iter = iter + 1   ; keep our own count (?2)
  continue == 1     ; Continue while =1.
  ;SOURCE: 98msg.frm
}


deep_test {
  z = c = pixel:
  z = z*z + c
  |z| < 4
  ;SOURCE: test.frm
}


DeepSpaceProbe (XAXIS_NOPARM) { 
     ; Edited for Fractint v. 20 by George Martin 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=sin(z)+pixel
  z=cosxx(z)+pixel
  x=x+1
  |z|<=4 
  ;SOURCE: choice.frm
}


DeepSpaceProbeC (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSEIF (x<20)
    z=sin(z)+pixel
  ELSE
    z=cosxx(z)+pixel
  ENDIF
  x=x+1
  |z|<=4 
  ;SOURCE: choice.frm
}


DeepSpaceProbeC.1 (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSEIF (x<20)
    z=sin(z)+pixel
  ELSE
    z=cos(z)+pixel
  ENDIF
  x=x+1
  |z|<=4 
  ;SOURCE: choice.frm
}


DeepSpaceProbeTwo (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=exp(z)+pixel
  z=cos(z)+pixel
  x=x+1
  |z|<=4 
  ;SOURCE: form1.frm
}


DeepSpaceProbeTwoC (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98 
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSEIF (x<20)
    z=exp(z)+pixel
  ELSE
    z=cos(z)+pixel
  ENDIF
  x=x+1
  |z|<=4 
  ;SOURCE: form1.frm
}


DEFNEWT1 {; Ray Girvan May 1997
   ; deformed Newton 
   ; use floating point / periodicity=no / iterations = 1000
   ; try p1=(1.97,0) (1,0.8) (0.6,0.8) (0.1,0.4) 
  z=pixel:
  z1=z*z*z-1    ; any function f(z)
  z2=3*z*z      ; its derivative f'(z)
  z=z-(p1*z1/z2)
  |z1| >= 0.0001
  ;SOURCE: 97msg.frm
}


DEFNEWT2 {; Ray Girvan May 1997
          ; deformed Newton
          ; zoom out for interesting regions where sine comes in
          ; use floating point / periodicity=no / iterations = 1000
          ; try p1=(1.97,0) (1,0.8) (0.6,0.8)
  z=pixel:
  z1=sin(z)+z*z*z-1  ; any function f(z)
  z2=cos(z)+3*z*z    ; its derivative f'(z)
  z=z-(p1*z1/z2)
  |z1| >= 0.0001
  ;SOURCE: 97msg.frm
}


DEFNEWT3 {; Ray Girvan May 1997
   ; tiled deformed Newton 
   ; use floating point / periodicity=no / iterations = 1000
   ; p1 controls twist and texture (after Ron Barnett's IkeMandNewt) 
   ; p2 controls zoom on central motif.  Try:
   ; p1=(0.6,0.8) p2=(0.1,0)
   ; p1=(1,0.8) p2=(1,0)
   ; p1=(0.8,0.6) p2=(0.5,0)
  z=p2*(tan(sin(real(pixel)))+flip(tan(cos(imag(pixel))))):
  z1=z*z*z-1   ; any function f(z)
  z2=3*z*z     ; its derivative f'(z)
  z=z-(p1*z1/z2)
  |z1| >= 0.0001
  ;SOURCE: 97msg.frm
}


delt2-UcPop {; Bill Decker mod 8-10-98
             ; 5-29-98 kathy roth
             ; variant of Morgan Owens Uc03
  x=real(pixel), y=imag(pixel), h=imag(p2)
  t=p1, bailout = real(p2):
  newx = x+h*sin((y) - fn2(3*y))
  newy = y+h*sin((x) - fn2(3*x))
  x=newx, y=newy
  z=x-flip(y)
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  Tx=fn1(ax*(ax*ax+2))
  Ty=fn1(ay*(ay*ay+2))
  x=x+t*Ty, y=y-t*Tx
  z=x-flip(y)
  |z|<=bailout
  ;SOURCE: 99msg.frm
}


DeltaLog (XAXIS) {; Mark Peterson
  z = pixel, c = log(pixel):
  z = sqr(z) + c
  |z| <= 4
  ;SOURCE: fractint.frm
}


demon {; Giuseppe Zito
  z = pixel
  c5 = 0.062676
  d4 = 0.619874
  d5 = 0.50584
  d10 = 0.685094
  : 
  x = real(z), y = imag(z)
  s0 = x
  s0 = s0 -c5
  s0 = s0 *y
  newx = s0 
  s0 = y
  s0 = s0 +x
  s1 =d4
  s1 = s1 /d5
  s0 = s0 +s1
  s0 = s0 *d10
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


desert_sp {; <sylvie_gallet@compuserve.com>
  w = a = 0, c = pixel:
  w = w*w + c, mw = |w|
  a = a + imag(log(w))
  IF (mw <= p1)
    continue = 1
  ELSE
    continue = 0, z = exp(flip(imag(p1)*a))
  ENDIF
  continue
  ;SOURCE: desertsp.par
}


devil {; Copyright (c) Paul W. Carlson, 1998
       ; Based on one of Noel Giffin's formulas
  w = pixel
  z = iter = wp1 = wp2 = bailout = 0
  :
  old_w = w
  w = w * w - wp2
  wp2 = wp1
  wp1 = real(old_w) - flip(imag(old_w))
  IF (|w| > 4)
    bailout = 1
    z = 4 * iter + 30
    z = z - real(216) * trunc(z / real(216))
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0
  ;SOURCE: 98msg.frm
}


Devotion {
  z = pixel:
  z = z + p1
  r = fn1(z) * z * z  
  q = z^e 
  z = (z - imag(1/r)/z - real(1/q))
  |z| <= 4
  ;SOURCE: shakti.frm
}


Dharma (XAXIS) {
  z = c = pixel:
  z = z + p1
  r = tan(1/z) + pixel
  z = fn1(r) * z 
  |z| < 4
  ;SOURCE: shakti.frm
}


Diamont {; Use p1=2 to get the image
  z=pixel, j=(0, -1), k=(-1, 0), l=(0, 1), m=(1, 0):
  x=real(z)
  y=imag(z)
  y1=(y>.5)
  x1=(x>.5)
  y2=(y<-.5)
  x2=(x<-.5)
  z1=(y1==0 && x1==0)
  a=y1*j
  b=x1*(y1==0)*k
  c=z1*y2*l
  d=(z1>0 && y2==0)*x2*m
  p=a+b+c+d
  z=p1*z+p
  |z|<=100
  ;SOURCE: esc-ifs.frm
}


dissected-A {; A dissected Mandelbrot
  z = 0, c = pixel:
  x = real(z), y = imag(z)   ;isolate real and imaginary parts
  newx = x*x - y*y           ;calculate real part of z*z
  newy = 2*x*y               ;calculate imag part of z*z
  z =  newx + flip(newy) + c ;reassemble z
  |z| < 4
  ;SOURCE: frmtutor.frm
}


dissected-B {; A mutation of "dissected-A"
  z = 0, c = pixel, k = 2 + p1:
  x = real(z), y = imag(z)
  newx = fn1(x*x) - fn2(y*y)
  newy = k*fn3(x*y)
  z =  newx + flip(newy) + c
  |z| < 4
  ;SOURCE: frmtutor.frm
}


DivMandel1 (XAXIS) {  
  c = z = pixel:
  z = (z^2+c)/(z^p1-c) + c
  |z| <= 4
  ;SOURCE: robert.frm
}


DivMandel2 (XAXIS) {; try real(p1)=1, imag(p1)=2
  z = pixel:
  c = z^p1
  z = (z^4+c)/(z^3+c)
  |z| <= 4
  ;SOURCE: robert.frm
}


DivMandel3 (XAXIS) {  
  z = pixel:
  c = z^p1 + srand(3)
  z = (z^4+c)/(z^3+c) + srand(5)
  |z| <= 4
  ;SOURCE: robert.frm
}


dmj--Read-Me-First {; dmj-pub.frm 1.1 - October 5, 1997
        ; Replaced variable "e" with "ee" 5/06/99. G. Martin
        ; Scroll down (CTRL-DOWN) to see all of this text.
        ; See dmj--Copyright for copyright information.
        ; See dmj--What's-New for a revision history.
        ;
        ; This formula file contains formulae written by Damien M. Jones
        ; (whom you can contact via e-mail at dmj@icd.com).  You can get
        ; a current version of this file from:
        ;
        ;   http://www.geocities.com/SoHo/Lofts/2605/misc/dmj-pub.zip
        ;
        ; These formulae provide new coloring algorithms to the Mandelbrot
        ; fractal z[n+1] = z[n]^2 + c and Paul Derbyshire's NovaM type
        ; z[n+1] = z[n] - (z[n]^3-1) / (3z[n]^2) + c.
        ;
        ; You will need to use floating-point math (on the X page) with
        ; all of these types.  If you don't, you will generally get a
        ; solid-colored image which is rather dull.  NovaM fractals also
        ; require peridocity to be turned OFF (press g, type
        ; "periodicity=0").
        ;
        ; ORBIT TRAP METHODS
        ;   Formula names for orbit trap types are given as
        ;   dmj-XXX-YYY-ZZZ[-I].
        ;
        ; XXX: This is the fractal type.
        ;   Mand - Traditional Mandelbrot set.
        ;   Nova - Nova M-set.
        ;
        ; YYY: This is the orbit "trap" type.  Points do not actually
        ;      bail out when they are trapped, they are simply tagged
        ;      for later.
        ;   Pnt  - Point.  Whichever z[n] approaches closest to p1 is
        ;          used.  Distances can be distorted by changing p2i
        ;          to use "elliptical" distance instead of circular,
        ;          and rotated with p2r.
        ;   Hyp  - Hyperbola.  Whichever z[n] approaches closest to axes
        ;          drawn through p1 is used.  Distances are measured
        ;          "hyperbolically", so that "equidistant" points form
        ;          hyperbolae.  Use p2r to rotate the axes through p1.
        ;   Cir  - Circle.  Whichever z[n] approaches closest to a
        ;          ring at p1, radius p3i, is used.  By changing p2i to
        ;          a value other than 1 (or 0), the aspect ratio of the
        ;          ring can be altered, and the ellipse rotated with
        ;          p2r.
        ;   Cr2  - Circle^2.  This was an error created while making the
        ;          Circle trap type, but it produces interesting images
        ;          (especially with the Decomposition sub-type).
        ;   Pls  - Plus.  Whichever z[n] approaches closest to axes
        ;          drawn through p1 is used.  Distances are measured to
        ;          the closest axis; changing p2i will alter the "aspect"
        ;          to favor one axis over the other.  Axes may be rotated
        ;          with p2r.
        ;   Rct  - Rectangle.  Whichever z[n] approaches closest to p1 is
        ;          used.  Distances are measured to the farthest axis
        ;          drawn through p1, which can be rotated with p2r and
        ;          skewed to favor one axis over the other with p2i.
        ;   Spi  - Spiral.  Whichever z[n] approaches closest to a spiral
        ;          centered at p1 is used.  The spiral is logarithmic.
        ;          Tightness of the spiral is controlled with p2r, and a
        ;          minimum number of iterations specified with p2i.
        ;   Ray  - Ray.  Whichever z[n] approaches closest to a ray
        ;          originating at p1 with angle p2r is used.  A minimum
        ;          number of iterations can be specified with p2i.
        ;   DRy  - Dual Ray.  Whichever z[n] approaches closest to a pair
        ;          of rays originating at p1 with angles p2r and p2r+180
        ;          is used.  A minimum number of iterations can be
        ;          specified with p2i.
        ;
        ; ZZZ: This is the information that is returned from the coloring
        ;      algorithm.
        ;   Ang  - Angle.  The angle of the trapped point, relative to
        ;          the trap, is returned.  Use decomposition or outside =
        ;          atan on the X page to show it.
        ;   Dec  - Decomposition.  The angle of the trapped point,
        ;          relative to the origin, is returned.  Use
        ;          decomposition or outside = atan on the X page to show
        ;          it.
        ;   Dst  - Distance.  The distance of the trapped point from the
        ;          trap is returned.  Use outside = real on the X page to
        ;          show it.
        ;   Itr  - Iteration.  The iteration of the trapped point is
        ;          returned.  Use outside = real on the X page to show
        ;          it.
        ;
        ; -I: If this is at the end of the formula name, points that
        ;     would normally be "inside" will be rendered with the same
        ;     algorithm as the "outside" points.  You MUST turn
        ;     periodicity off for this to work properly.
        ;
        ; Parameters:                                          Default:
        ;   p1 : orbit trap center point / Julia c              (0,0)
        ;   p2r: rotation, in degrees, of trap                  0
        ;   p2i: aspect ratio (horizontal:vertical) of trap     1
        ;   p3r: color scaling value                            75
        ;   p3i: bailout / extra parameter                      128 / 1
        ;
        ; OTHER METHODS
        ;   A few other methods are also included here.  These are
        ;   named dmj-XXX-YYY[-I].  XXX is the fractal type, as listed
        ;   above.  -I, if present, indicates inside is colored also.
        ;
        ; YYY: This is the coloring method.
        ;   Smooth    - This is a continuous-color algorithm.  Changing
        ;               p3r will let you alter how quickly the palette
        ;               loops.  Each integer iteration band will have
        ;               p3r colors.  Try altern.map with p3r set to 255.
        ;               p3i is the bailout, default of 128.  (Based on
        ;               the work of Linas Vepstas.)
        ;   SmoothPHC - This is the same as Smooth, but uses two color
        ;               scales (p2r and p2i) and interleaves them with
        ;               the PHC dithering method.
        ;   SmoothX2  - This is similar to SmoothPHC, but the two color
        ;               ranges will use separate portions of the palette
        ;               (first half, second half).
        ;   Triangle  - This colors based on Kerry Mitchell's triangle
        ;               inequality method (but smoothly continuous).
        ;               Color scale is set by p3r; bailout by p3i.
        ;   ThetaW    - This colors based on the average angle of all
        ;               z[n].  The average is weighted so that the first
        ;               iteration counts the most.  (Inspired by Kerry
        ;               Mitchell.)
        ;   ThetaW2   - This colors based on the average angle of all
        ;               z[n].  The average is weighted so that the last
        ;               iteration counts the most.  (Inspired by Kerry
        ;               Mitchell.)
        ;
        ; CHANGING THE FORMULAE
        ;   Each formula is in three blocks.  The first part covers the
        ;   initialization of the algorithm and filling in default
        ;   parameters.  The second part contains the actual fractal
        ;   initialization and iteration (together).  This is the part
        ;   that should be replaced to change the fractal type.  The
        ;   third part contains the bulk of the coloring algorithm code;
        ;   towards the end, you should be sure to change the bailout IF
        ;   condition if your new fractal type has special bailout
        ;   considerations.

        y = pixel*2 - (3,-2.4), done = 0, count = 0, count2 = 0
        ee = abs(real(y)^2 + imag(y)^2)
        ee = abs(real(y)^3 + imag(y)^3) + ee
        ee = abs(real(y)^(-5) + imag(y)^(-5)) + ee
        ee = ee * 100000
        ee = ee - floor(ee/128)*128 + 32
        dummy = maxit
        z = 0:

        z = z + 1
        count = count + 1
        IF (real(y) < -0.45)
          d = |y - (-0.45,-0.05)|
          IF (d > 0.0025 && d < 0.0225)
            ;d curve
          ELSE
            done = -1
          ENDIF

        ELSEIF (real(y) <= -0.2)
          IF (real(y) <= -0.4)
            IF ((imag(y) > 0 && imag(y) < 0.1) || (imag(y) > -0.2 && imag(y) < -0.1))
              ;dcurvebars
            ELSE
              done = -1
            ENDIF
          ELSE IF (real(y) < -0.3 && imag(y) > -0.2 && imag(y) < 0.3)
            ;dstalk
          ELSE
            done = -1
          ENDIF
          
        ELSEIF (real(y) < 0.3)
          IF (imag(y) <= -0.05 && imag(y) > -0.2)
            IF (real(y) < -0.1 || real(y) > 0.2 || (real(y) > 0 && real(y) < 0.1))
              ;mstalks
            ELSE
              done = -1
            ENDIF
          ELSE IF (real(y) < 0.05)
            d = |y - (-0.05,-0.05)|
            IF (d > 0.0025 && d < 0.0225)
              ;mlefttop
            ELSE
              done = -1
            ENDIF
          ELSE
            d = |y - (0.15,-0.05)|
            IF (d > 0.0025 && d < 0.0225)
              ;mrighttop
            ELSE
              done = -1
            ENDIF
          ENDIF
          
        ELSE
          IF (imag(y) > 0.1)
            IF (real(y) > 0.5 && real(y) < 0.6 && imag(y) > 0.2 && imag(y) < 0.3)
              ;jdot
            ELSE
              done = -1
            ENDIF
          ELSEIF (imag(y) > -0.15)
            IF (real(y) > 0.5 && real(y) < 0.6)
              ;jstalk
            ELSE
              done = -1
            ENDIF
          ELSEIF (real(y) > 0.45)
            d = |y - (0.45,-0.15)|
            IF (d > 0.0025 && d < 0.0225)
              ;jcurve
            ELSE
              done = -1
            ENDIF
          ELSE
            IF (real(y) > 0.4 && imag(y) > -0.3 && imag(y) < -0.2)
              ;jtail
            ELSE
              done = -1
            ENDIF
          ENDIF
        
        ENDIF
        
        IF (done >= 0)
          y = (y - (0.05,-0.05)) * 1.02 + (0.05,-0.05)
          count2 = count2 + 1   
        ELSE
          IF (count2 == 0)
            z = ee - count
          ENDIF
        ENDIF
        
        done >= 0
  ;SOURCE: dmj-pub.frm
}


dmj--Redistribute {; dmj-pub.frm 1.1 - October 5, 1997
        ; Scroll down (CTRL-DOWN) to see all of this text.
        ; See dmj--Read-Me-First for instructions.
        ; See dmj--What's-New for a revision history.
        ;
        ; This file is not copyrighted.
        ;  * You may copy this file as many times as you like.
        ;  * You can put this on a CD and sell it.
        ;  * You can alter this file for your own personal use.
        ;  * You can distribute your altered versions, but it would
        ;    be VERY CONSIDERATE if you clearly label them as ALTERED
        ;    and include the URL for the original file:
        ;
        ;    http://www.geocities.com/SoHo/Lofts/2605/misc/dmj-pub.zip
        ;
        ;  * Images you create with these formulae are yours.  You own
        ;    them.
        ;  * The PAR entries labeled "Copyright 1997 Damien M. Jones"
        ;    are of course mine, and are simply examples of what I have
        ;    done with these formulae.  For distribution rights to these
        ;    images, please contact me personally at dmj@icd.com to work
        ;    out the details.
        ;
        ; If you expand on this work, it would also be nice if you sent
        ; me a copy, but this is by no means required.  This file is
        ; largely my own work, but some portions are also based on work
        ; done by Linas Vepstas, Kerry Mitchell, and Paul Derbyshire.

        y = pixel*2 - (3,-2.4), done = 0, count = 0, count2 = 0
        dummy = maxit
        c1 = (-0.795, 0.150)
        c2 = (-0.065, 0.338)
        z = pixel * 0.7 * (0,1)^(-0.3):

        count = count + 1
        IF (real(y) < -0.45)
          d = |y - (-0.45,-0.05)|
          IF (d > 0.0025 && d < 0.0225)
            ;d curve
          ELSE
            done = -1
          ENDIF

        ELSEIF (real(y) <= -0.2)
          IF (real(y) <= -0.4)
            IF ((imag(y) > 0 && imag(y) < 0.1) || (imag(y) > -0.2 && imag(y) < -0.1))
              ;dcurvebars
            ELSE
              done = -1
            ENDIF
          ELSE IF (real(y) < -0.3 && imag(y) > -0.2 && imag(y) < 0.3)
            ;dstalk
          ELSE
            done = -1
          ENDIF
          
        ELSEIF (real(y) < 0.3)
          IF (imag(y) <= -0.05 && imag(y) > -0.2)
            IF (real(y) < -0.1 || real(y) > 0.2 || (real(y) > 0 && real(y) < 0.1))
              ;mstalks
            ELSE
              done = -1
            ENDIF
          ELSE IF (real(y) < 0.05)
            d = |y - (-0.05,-0.05)|
            IF (d > 0.0025 && d < 0.0225)
              ;mlefttop
            ELSE
              done = -1
            ENDIF
          ELSE
            d = |y - (0.15,-0.05)|
            IF (d > 0.0025 && d < 0.0225)
              ;mrighttop
            ELSE
              done = -1
            ENDIF
          ENDIF
          
        ELSE
          IF (imag(y) > 0.1)
            IF (real(y) > 0.5 && real(y) < 0.6 && imag(y) > 0.2 && imag(y) < 0.3)
              ;jdot
            ELSE
              done = -1
            ENDIF
          ELSEIF (imag(y) > -0.15)
            IF (real(y) > 0.5 && real(y) < 0.6)
              ;jstalk
            ELSE
              done = -1
            ENDIF
          ELSEIF (real(y) > 0.45)
            d = |y - (0.45,-0.15)|
            IF (d > 0.0025 && d < 0.0225)
              ;jcurve
            ELSE
              done = -1
            ENDIF
          ELSE
            IF (real(y) > 0.4 && imag(y) > -0.3 && imag(y) < -0.2)
              ;jtail
            ELSE
              done = -1
            ENDIF
          ENDIF
        
        ENDIF
        
        IF (done >= 0)
          y = (y - (0.05,-0.05)) * 1.02 + (0.05,-0.05)
          count2 = count2 + 1
          z = z + 1
        
        ELSEIF (count2 > 0)
          z = count2 - count
          done = -2
          
        ELSE
          z = sqr(z) + c1
          c3 = c1
          c1 = c2
          c2 = c3
          
          IF (|z| > 4)
            done = -2
          ENDIF
        ENDIF
        
        done >= -1
  ;SOURCE: dmj-pub.frm
}


dmj--What's-New {; dmj-pub.frm 1.1 - October 5, 1997
        ; Scroll down (CTRL-DOWN) to see all of this text.
        ; See dmj--Copyright for copyright information.
        ; See dmj--Read-Me-First for instructions.
        ;
        ; Changes from version 1.0:
        ;  * -Dst and -Dst-I types would, in some cases, render some areas
        ;    in black at high color scale settings and low maxiter values,
        ;    due to the way FractInt clips with outside=real.  This has
        ;    been fixed, as long as maxiter is at least 260.
        ;  * dmj-Mand-Triangle and dmj-Mand-Triang-I contained some
        ;    discontinuities if the bailout (p3i) was set to a value
        ;    other than 128.  This was due to an error in the Linas
        ;    Vepstas smooth coloring algorithm used to interpolate colors,
        ;    and has been fixed.
        ;  * dmj-Mand-Smooth and dmj-Mand-SmoothPHC were both modified
        ;    slightly to correct an error in the Vepstas algorithm.
        ;    Images generated with the 1.0 version of the formula may need
        ;    to have their colors rotated slightly to match the colors to
        ;    the new version.
        ;  * dmj-Mand-SmoothX2 and all -ThetaW forms were also corrected,
        ;    but visual differences should be negligible if any.
        ;  * a PAR file and text file are now distributed in the package,
        ;    to help get you started more quickly.
        
        y = pixel*2 - (3,-2.4), done = 0, count = 0, count2 = 0
        dummy = maxit
        r = (0,1)^(-0.04)
        z = pixel-0.5, c = pixel-0.5:

        count = count + 1
        IF (real(y) < -0.45)
          d = |y - (-0.45,-0.05)|
          IF (d > 0.0025 && d < 0.0225)
            ;d curve
          ELSE
            done = -1
          ENDIF

        ELSEIF (real(y) <= -0.2)
          IF (real(y) <= -0.4)
            IF ((imag(y) > 0 && imag(y) < 0.1) || (imag(y) > -0.2 && imag(y) < -0.1))
              ;dcurvebars
            ELSE
              done = -1
            ENDIF
          ELSE IF (real(y) < -0.3 && imag(y) > -0.2 && imag(y) < 0.3)
            ;dstalk
          ELSE
            done = -1
          ENDIF
          
        ELSEIF (real(y) < 0.3)
          IF (imag(y) <= -0.05 && imag(y) > -0.2)
            IF (real(y) < -0.1 || real(y) > 0.2 || (real(y) > 0 && real(y) < 0.1))
              ;mstalks
            ELSE
              done = -1
            ENDIF
          ELSE IF (real(y) < 0.05)
            d = |y - (-0.05,-0.05)|
            IF (d > 0.0025 && d < 0.0225)
              ;mlefttop
            ELSE
              done = -1
            ENDIF
          ELSE
            d = |y - (0.15,-0.05)|
            IF (d > 0.0025 && d < 0.0225)
              ;mrighttop
            ELSE
              done = -1
            ENDIF
          ENDIF
          
        ELSE
          IF (imag(y) > 0.1)
            IF (real(y) > 0.5 && real(y) < 0.6 && imag(y) > 0.2 && imag(y) < 0.3)
              ;jdot
            ELSE
              done = -1
            ENDIF
          ELSEIF (imag(y) > -0.15)
            IF (real(y) > 0.5 && real(y) < 0.6)
              ;jstalk
            ELSE
              done = -1
            ENDIF
          ELSEIF (real(y) > 0.45)
            d = |y - (0.45,-0.15)|
            IF (d > 0.0025 && d < 0.0225)
              ;jcurve
            ELSE
              done = -1
            ENDIF
          ELSE
            IF (real(y) > 0.4 && imag(y) > -0.3 && imag(y) < -0.2)
              ;jtail
            ELSE
              done = -1
            ENDIF
          ENDIF
        
        ENDIF
        
        IF (done >= 0)
          y = (y - (0.05,-0.05)) * 1.02 + (0.05,-0.05)
          count2 = count2 + 1
          z = z + 1
        
        ELSEIF (count2 > 0)
          z = count2 - count
          done = -2
          
        ELSE
          z = sqr(z) + c
          c = c*r
          
          IF (|z| > 4)
            done = -2
          ENDIF
        ENDIF
        
        done >= -1
  ;SOURCE: dmj-pub.frm
}


dmj-Jul-Triangl-I (XAXIS) {; outside = real: triangle inequality average
        ; original idea and formula from L. Kerry Mitchell
        ; modified for total continuity by dmj

        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        sum = 0                         ; Running total.
        done = 1                        ; Iteration counter.
        ac = cabs(pixel)                ; Absolute value of pixel (precalc).
        il2 = 1/log(2.0)                ; Inverse log 2 (precalc).
        lp = log(log(imag(p3)))         ; log(log bailout) (precalc).
        f = -1                          ; No fractional iteration yet.
        
        z = pixel, c = p2:              ; Mandelbrot initialization.
        az2 = |z|                       ; Save absolute value of first term.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        lowbound = abs(az2 - ac)        ; Calculate lower bound for sum.
        sum = sum + (cabs(z) - lowbound) / (az2+ac - lowbound)
                                        ; Ratio between bounds.
        
        done = done + 1                 ; Done one more iteration.
        IF (az2 > imag(p3) || done > maxit-2)   ; Point exceeds bailout.
          IF (f < 0)                    ; First time; let it go again.
            f = il2*lp - il2*log(log(cabs(z))) + 2; Fractional iteration.
            oldsum = sum / done         ; Save the average ratio so far.
          ELSE                          ; Second time past bailout.
            sum = sum / done            ; Average ratio.
            f = oldsum + (sum-oldsum) * (f-1) ; Interpolate sum.
            z = f * real(p3)            ; Apply color scale.
            z = z - 255*trunc(z/real(255)) ; Wrap at 255.
            z = z - done - 5            ; Return value.
            done = -1                   ; Set flag to force an exit.
          ENDIF
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: 98msg.frm
}


dmj-Jul-Triangl2-I (XAXIS) {; outside = real: triangle inequality average
        ; original idea and formula from L. Kerry Mitchell
        ; modified for total continuity by dmj

        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        sum = 0                         ; Running total.
        done = 1                        ; Iteration counter.
        ac = cabs(p2)                   ; Absolute value of pixel (precalc).
        il2 = 1/log(2.0)                ; Inverse log 2 (precalc).
        lp = log(log(imag(p3)))         ; log(log bailout) (precalc).
        f = -1                          ; No fractional iteration yet.
        
        z = pixel, c = p2:              ; Mandelbrot initialization.
        az2 = |z|                       ; Save absolute value of first term.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        lowbound = abs(az2 - ac)        ; Calculate lower bound for sum.
        sum = sum + (cabs(z) - lowbound) / (az2+ac - lowbound)
                                        ; Ratio between bounds.
        
        done = done + 1                 ; Done one more iteration.
        IF (az2 > imag(p3) || done > maxit-2)   ; Point exceeds bailout.
          IF (f < 0)                    ; First time; let it go again.
            f = il2*lp - il2*log(log(cabs(z))) + 2; Fractional iteration.
            oldsum = sum / done         ; Save the average ratio so far.
          ELSE                          ; Second time past bailout.
            sum = sum / done            ; Average ratio.
            f = oldsum + (sum-oldsum) * (f-1) ; Interpolate sum.
            z = f * real(p3)            ; Apply color scale.
            z = z - 255*trunc(z/real(255)) ; Wrap at 255.
            z = z - done - 5            ; Return value.
            done = -1                   ; Set flag to force an exit.
          ENDIF
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: 98msg.frm
}


dmj-Jul-Triangle (XAXIS) {; outside = real: triangle inequality average
        ; original idea and formula from L. Kerry Mitchell
        ; modified for total continuity by dmj

        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        sum = 0                         ; Running total.
        done = 1                        ; Iteration counter.
        ac = cabs(pixel)                ; Absolute value of pixel (precalc).
        il2 = 1/log(2.0)                ; Inverse log 2 (precalc).
        lp = log(log(imag(p3)))         ; log(log bailout) (precalc).
        f = -1                          ; No fractional iteration yet.
        
        z = pixel, c = p2:              ; Mandelbrot initialization.
        az2 = |z|                       ; Save absolute value of first term.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        lowbound = abs(az2 - ac)        ; Calculate lower bound for sum.
        sum = sum + (cabs(z) - lowbound) / (az2+ac - lowbound)
                                        ; Ratio between bounds.
        
        done = done + 1                 ; Done one more iteration.
        IF (az2 > imag(p3))             ; Point exceeds bailout.
          IF (f < 0)                    ; First time; let it go again.
            f = il2*lp - il2*log(log(cabs(z))) + 2; Fractional iteration.
            oldsum = sum / done         ; Save the average ratio so far.
          ELSE                          ; Second time past bailout.
            sum = sum / done            ; Average ratio.
            f = oldsum + (sum-oldsum) * (f-1) ; Interpolate sum.
            z = f * real(p3)            ; Apply color scale.
            z = z - 255*trunc(z/real(255)) ; Wrap at 255.
            z = z - done - 5            ; Return value.
            done = -1                   ; Set flag to force an exit.
          ENDIF
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: 98msg.frm
}


dmj-Jul-Triangle2 (XAXIS) {; outside = real: triangle inequality average
        ; original idea and formula from L. Kerry Mitchell
        ; modified for total continuity by dmj

        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        sum = 0                         ; Running total.
        done = 1                        ; Iteration counter.
        ac = cabs(p2)                   ; Absolute value of pixel (precalc).
        il2 = 1/log(2.0)                ; Inverse log 2 (precalc).
        lp = log(log(imag(p3)))         ; log(log bailout) (precalc).
        f = -1                          ; No fractional iteration yet.
        
        z = pixel, c = p2:              ; Mandelbrot initialization.
        az2 = |z|                       ; Save absolute value of first term.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        lowbound = abs(az2 - ac)        ; Calculate lower bound for sum.
        sum = sum + (cabs(z) - lowbound) / (az2+ac - lowbound)
                                        ; Ratio between bounds.
        
        done = done + 1                 ; Done one more iteration.
        IF (az2 > imag(p3))             ; Point exceeds bailout.
          IF (f < 0)                    ; First time; let it go again.
            f = il2*lp - il2*log(log(cabs(z))) + 2; Fractional iteration.
            oldsum = sum / done         ; Save the average ratio so far.
          ELSE                          ; Second time past bailout.
            sum = sum / done            ; Average ratio.
            f = oldsum + (sum-oldsum) * (f-1) ; Interpolate sum.
            z = f * real(p3)            ; Apply color scale.
            z = z - 255*trunc(z/real(255)) ; Wrap at 255.
            z = z - done - 5            ; Return value.
            done = -1                   ; Set flag to force an exit.
          ENDIF
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: 98msg.frm
}


dmj-Jul2-TC001 {
;
; This formula combines three Julia2 fractal layers
; using a "Difference" merge mode. Each layer is
; colored using the Distance Estimator algorithm
; and a hand-picked gradient.
;
; This formula was designed to reproduce the
; image "Rich", created with Ultra Fractal. Since
; it doesn't use UF's spline interpolation on its
; gradients, it is not an exact match.
;
; initialization:
  r = 0
  g = 0
  b = 0
  done = 0
  i = 0

  e1 = 0                        ; distance estimates
  e2 = 0
  e3 = 0
  
  t = 1
  z = 0
  z1 = pixel                                    ; pixel
  z2 = (pixel - (0.225,-0.275)) * ((0,1)^(4/3)) + (0.225,-0.275) ; 120 deg.
  z3 = (pixel - (0.225,-0.275)) * ((0,1)^(8/3)) + (0.225,-0.275) ; 240 deg.
  done1 = 0
  done2 = 0
  done3 = 0
  z = pixel, c = pixel
  
  :

; iteration:
  z = z + 1                     ; thwart periodicity checking
  IF (t == 0)                   ; do Julia2 iteration
    t = 1
    IF (done1 == 0)
      z1 = sqr(z1) + p1
    ENDIF
    IF (done2 == 0)
      z2 = sqr(z2) + p1
    ENDIF
    IF (done3 == 0)
      z3 = sqr(z3) + p1
    ENDIF
  ELSE
    t = 0
    IF (done1 == 0)
      z1 = sqr(z1) + p2
    ENDIF
    IF (done2 == 0)
      z2 = sqr(z2) + p2
    ENDIF
    IF (done3 == 0)
      z3 = sqr(z3) + p2
    ENDIF
  ENDIF

  IF (|z1| < 1e20)
    e1 = 2*z1*e1+1              ; update distance estimate
  ELSE
    done1 = 1                   ; done with this one
  ENDIF
  IF (|z2| < 1e20)
    e2 = 2*z2*e2+1              ; update distance estimate
  ELSE
    done2 = 1                   ; done with this one
  ENDIF
  IF (|z3| < 1e20)
    e3 = 2*z3*e3+1              ; update distance estimate
  ELSE
    done3 = 1                   ; done with this one
  ENDIF
  
; bailout test:
  IF (done1+done2+done3 == 3 || i == maxit-2)   ; all three points are done
    done = 1
    
    ; point has bailed out, compute color

    ; final distances
    e1 = sqrt(2*log(cabs(z1)) * cabs(z1) / cabs(e1))
    e2 = sqrt(2*log(cabs(z2)) * cabs(z2) / cabs(e2))
    e3 = sqrt(2*log(cabs(z3)) * cabs(z3) / cabs(e3))
    
    ; transfer functions
    e1 = sqrt(e1*4)
    e2 = sqrt(e2*4)
    e3 = sqrt(e3*4)
    e1 = e1 - trunc(e1)
    e2 = e2 - trunc(e2)
    e3 = e3 - trunc(e3)
    
    ; gradients
    IF (e1 < 0.0225)            ; first part of gradient
      e1 = (e1+0.1975)/0.22
      r = 31 + (81-31)*e1
      g = 62 + (68-62)*e1
      b = 72 + (46-72)*e1
    ELSEIF (e1 < 0.4)           ; second part of gradient
      e1 = (e1-0.0225)/0.3775
      r = 81 + (235-81)*e1
      g = 68 + (232-68)*e1
      b = 46 + (220-46)*e1
    ELSEIF (e1 < 0.8025)        ; third part of gradient
      e1 = (e1-0.4)/0.4025
      r = 235 + (31-235)*e1
      g = 232 + (62-232)*e1
      b = 220 + (72-220)*e1
    ELSE                        ; last part of gradient
      e1 = (e1-0.8025)/0.22
      r = 31 + (81-31)*e1
      g = 62 + (68-62)*e1
      b = 72 + (46-72)*e1
    ENDIF
    IF (done1 == 0)             ; point is inside, use black
      r = 0
      g = 0
      b = 0
    ENDIF

    IF (e2 < 0.0225)            ; first part of gradient
      e2 = (e2+0.1975)/0.22
      r1 = 31 + (81-31)*e2
      g1 = 62 + (68-62)*e2
      b1 = 72 + (46-72)*e2
    ELSEIF (e2 < 0.4)           ; second part of gradient
      e2 = (e2-0.0225)/0.3775
      r1 = 81 + (235-81)*e2
      g1 = 68 + (232-68)*e2
      b1 = 46 + (220-46)*e2
    ELSEIF (e2 < 0.8025)        ; third part of gradient
      e2 = (e2-0.4)/0.4025
      r1 = 235 + (31-235)*e2
      g1 = 232 + (62-232)*e2
      b1 = 220 + (72-220)*e2
    ELSE                        ; last part of gradient
      e2 = (e2-0.8025)/0.22
      r1 = 31 + (81-31)*e2
      g1 = 62 + (68-62)*e2
      b1 = 72 + (46-72)*e2
    ENDIF
    IF (done2 == 0)             ; point is inside, use black
      r1 = 0
      g1 = 0
      b1 = 0
    ENDIF
    r = abs(r-r1)               ; Difference merge mode
    g = abs(g-g1)
    b = abs(b-b1)
    
    IF (e3 < 0.0225)            ; first part of gradient
      e3 = (e3+0.1975)/0.22
      r1 = 31 + (81-31)*e3
      g1 = 62 + (68-62)*e3
      b1 = 72 + (46-72)*e3
    ELSEIF (e3 < 0.4)           ; second part of gradient
      e3 = (e3-0.0225)/0.3775
      r1 = 81 + (235-81)*e3
      g1 = 68 + (232-68)*e3
      b1 = 46 + (220-46)*e3
    ELSEIF (e3 < 0.8025)        ; third part of gradient
      e3 = (e3-0.4)/0.4025
      r1 = 235 + (31-235)*e3
      g1 = 232 + (62-232)*e3
      b1 = 220 + (72-220)*e3
    ELSE                        ; last part of gradient
      e3 = (e3-0.8025)/0.22
      r1 = 31 + (81-31)*e3
      g1 = 62 + (68-62)*e3
      b1 = 72 + (46-72)*e3
    ENDIF
    IF (done3 == 0)             ; point is inside, use black
      r1 = 0
      g1 = 0
      b1 = 0
    ENDIF
    r = abs(r-r1)               ; Difference merge mode
    g = abs(g-g1)
    b = abs(b-b1)
    
  ENDIF
  i = i + 1

; color processing:
;  
; True Color Engine 1.0
; Copyright 1999 Damien M. Jones
; http://www.fractalus.com/
;
; This block of formula code provides simulated true color
; in FractInt by dithering. Simply feed red, green, and blue
; values into the variables r, g, and b, set done=1 when your
; values are ready, and store the iteration count in i. To
; view the results, use the associated true color palette,
; use outside=real, and use passes=1 or passes=2; don't use
; guessing.
;
; You can re-use this code in your own formulas, but please
; give credit. Thanks!
;
  IF (done > 0)
    ; 1. Clip to valid ranges
    IF (r > 255)                ; You can remove these lines
      r = 255                   ; if you are absolutely sure
    ENDIF                       ; your RGB values will never
    IF (g > 255)                ; be out of range. That will
      g = 255                   ; make your formula run a bit
    ENDIF                       ; faster.
    IF (b > 255)
      b = 255
    ENDIF
    IF (r < 0)
      r = 0
    ENDIF
    IF (g < 0)
      g = 0
    ENDIF
    IF (b < 0)
      b = 0
    ENDIF

    ; 2. Figure out which spot in the dither pattern to use
    ; The dither pattern is a 4x4 matrix; since there are
    ; only six shades of each color, in-between shades must
    ; be "mixed".
    xdither = real(scrnpix) - floor(real(scrnpix)*0.25)*4
    ydither = imag(scrnpix) - floor(imag(scrnpix)*0.25)*4

    ; 3. Calculate the dither threshold for each channel
    ; a. Determine quadrant in dither pattern
    IF (ydither > 1.5)          ; bottom half
      ydither = ydither - 2     ; move to top half
      IF (xdither < 1.5)        ; left half (lower left quadrant)
        rdither = 3
        gdither = 3
        bdither = 3
      ELSE                      ; right half (lower right quadrant)
        xdither = xdither - 2   ; move to left half
        rdither = 1
        gdither = 1
        bdither = 1
      ENDIF
    ELSE                        ; top half
      IF (xdither > 1.5)        ; right half (upper right quadrant)
        xdither = xdither - 2   ; move to left half
        rdither = 2
        gdither = 2
        bdither = 2
      ELSE                      ; left half (upper left quadrant)
        rdither = 0
        gdither = 0
        bdither = 0
      ENDIF
    ENDIF
    ; b. Determine precise cell in quadrant
    IF (ydither > 0.5)          ; bottom half
      IF (xdither < 0.5)        ; left half (bottom left cell)
        rdither = rdither + 12
        gdither = gdither + 12
        bdither = bdither + 12
      ELSE                      ; right half (bottom right cell)
        rdither = rdither + 4
        gdither = gdither + 4
        bdither = bdither + 4
      ENDIF
    ELSE                        ; top half
      IF (xdither > 0.5)        ; right half (upper right cell)
        rdither = rdither + 8
        gdither = gdither + 8
        bdither = bdither + 8
      ENDIF
    ENDIF

    ; 4. Scale r, g, b with dither weight added
    r = (r*80/255 + rdither) * 0.0625
    g = (g*80/255 + rdither) * 0.0625
    b = (b*80/255 + rdither) * 0.0625
    
    ; 5. Compute final color and fudge z
    r = floor(r) + floor(g)*6 + floor(b)*36
    z = r - i - 7
  ENDIF
  
; FractInt bailout:
  done == 0
  ;SOURCE: 99msg.frm
}


dmj-Magnet-Cir-Ang { 
     ; modified by jon camp
     ; outside = decomp: angle of
     ; closest z[n] to ring at p1
     ; This is the angle relative to p1.
  IF (imag(p2) == 0)                ; Invalid value for aspect ratio.
    p2 = (0,1) + real(p2)           ; Substitute a default value.
  ENDIF
  IF (real(p3) == 0)                ; Invalid value for color scale.
    p3 = 75 + flip(imag(p3))        ; Substitute a default value.
  ENDIF
  IF (imag(p3) == 0)                ; Invalid value for ring radius.
    p3 = (0,1) + real(p3)           ; Substitute a default value.
  ENDIF
  closest = 1e+38                   ; Closest approach so far.
  point = 0                         ; Point of that closest approach.
  done = 2                          ; Iteration counter.
  r = (0,1) ^ (real(p2)/90)         ; Compute rotation vector.
  z = 0, c = pixel:                 ; Magnet initialization.
  z = ((sqr(z) + (c-1))/(2*z + (c-2)))^2   ; Magnet calculation.
  done = done + 1                   ; Done one more iteration.
  z2 = (z-p1) * r                   ; Offset to p1 and rotate.
  z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
  d = abs(cabs(z2) - imag(p3))      ; Compute ring distance.
  IF (d < closest)                  ; Closer than previous value.
    point = z                       ; Save that point.
    closest = d                     ; Save the closest approach.
  ENDIF
  IF (|z| > 100)                    ; Point exceeds bailout.
    z = point - p1                  ; Return closest point.
    done = -1                       ; Set flag to force an exit.
  ENDIF
  done >= 0                         ; Continue if the flag is clear.
  ;SOURCE: 98msg.frm
}


dmj-Mand-Cir-Ang { ; outside = decomp: angle of closest z[n] to ring at p1
        ; This is the angle relative to p1.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs(cabs(z2) - imag(p3))    ; Compute ring distance.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > 128)                  ; Point exceeds bailout.
          z = point - p1                ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Cir-Ang-I { ; outside = decomp: angle of closest z[n] to ring at p1
        ; This is the angle relative to p1.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs(cabs(z2) - imag(p3))    ; Compute ring distance.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > 128 || done >= maxit) ; Point exceeds bailout / inside.
          z = point - p1                ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Cir-Dec { ; outside = decomp: angle of closest z[n] to ring at p1
        ; This is the angle relative to the origin.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs(cabs(z2) - imag(p3))    ; Compute ring distance.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > 128)                  ; Point exceeds bailout.
          z = point                     ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Cir-Dec-I { ; outside = decomp: angle of closest z[n] to ring at p1
        ; This is the angle relative to the origin.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs(cabs(z2) - imag(p3))    ; Compute ring distance.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > 128 || done >= maxit) ; Point exceeds bailout / inside.
          z = point                     ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Cir-Dst { ; outside = real: closest z[n] to ring at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs(cabs(z2) - imag(p3))    ; Compute ring distance.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > 128)                  ; Point exceeds bailout.
          z = closest * real(p3)        ; Apply color scale.
          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done                  ; Return value.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Cir-Dst-I { ; outside = real: closest z[n] to ring at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs(cabs(z2) - imag(p3))    ; Compute ring distance.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > 128 || done >= maxit) ; Point exceeds bailout / inside.
          z = closest * real(p3)        ; Apply color scale.
          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done                  ; Return value.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Cir-Itr { ; outside = real: n of closest z[n] to ring at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs(cabs(z2) - imag(p3))    ; Compute ring distance.
        IF (d < closest)                ; Closer than previous value.
          point = done                  ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > 128)                  ; Point exceeds bailout.
          z = point - done              ; Return iteration of closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Cir-Itr-I { ; outside = real: n of closest z[n] to ring at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs(cabs(z2) - imag(p3))    ; Compute ring distance.
        IF (d < closest)                ; Closer than previous value.
          point = done                  ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > 128 || done >= maxit) ; Point exceeds bailout / inside.
          z = point - done              ; Return iteration of closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Cr2-Ang { ; outside = decomp: angle of closest z[n] to ring at p1
        ; This is the angle relative to p1.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        radius = sqr(imag(p3))          ; Calculate radius squared.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs((|z2|) - radius)        ; Compute ring distance squared.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > 128)                  ; Point exceeds bailout.
          z = point - p1                ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Cr2-Ang-I { ; outside = decomp: angle of closest z[n] to ring at p1
        ; This is the angle relative to p1.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        radius = sqr(imag(p3))          ; Calculate radius squared.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs((|z2|) - radius)        ; Compute ring distance squared.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > 128 || done >= maxit) ; Point exceeds bailout / inside.
          z = point - p1                ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Cr2-Dec { ; outside = decomp: angle of closest z[n] to ring at p1
        ; This is the angle relative to the origin.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        radius = sqr(imag(p3))          ; Calculate radius squared.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs((|z2|) - radius)        ; Compute ring distance squared.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > 128)                  ; Point exceeds bailout.
          z = point                     ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Cr2-Dec-I { ; outside = decomp: angle of closest z[n] to ring at p1
        ; This is the angle relative to the origin.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        radius = sqr(imag(p3))          ; Calculate radius squared.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs((|z2|) - radius)        ; Compute ring distance squared.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > 128 || done >= maxit) ; Point exceeds bailout / inside.
          z = point                     ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Cr2-Dst { ; outside = real: closest z[n] to ring at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        radius = sqr(imag(p3))          ; Calculate radius squared.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs((|z2|) - radius)        ; Compute ring distance squared.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > 128)                  ; Point exceeds bailout.
          z = closest * real(p3)        ; Apply color scale.
          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done                  ; Return value.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Cr2-Dst-I { ; outside = real: closest z[n] to ring at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        radius = sqr(imag(p3))          ; Calculate radius squared.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs((|z2|) - radius)        ; Compute ring distance squared.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > 128 || done >= maxit) ; Point exceeds bailout / inside.
          z = closest * real(p3)        ; Apply color scale.
          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done                  ; Return value.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Cr2-Itr { ; outside = real: n of closest z[n] to ring at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        radius = sqr(imag(p3))          ; Calculate radius squared.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs((|z2|) - radius)        ; Compute ring distance squared.
        IF (d < closest)                ; Closer than previous value.
          point = done                  ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > 128)                  ; Point exceeds bailout.
          z = point - done              ; Return iteration of closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Cr2-Itr-I { ; outside = real: n of closest z[n] to ring at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        radius = sqr(imag(p3))          ; Calculate radius squared.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs((|z2|) - radius)        ; Compute ring distance squared.
        IF (d < closest)                ; Closer than previous value.
          point = done                  ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > 128 || done >= maxit) ; Point exceeds bailout / inside.
          z = point - done              ; Return iteration of closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Hyp-2Dec {; outside = decomp: 2nd-closest z[n] to hyp. at p1
  IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
    p2 = (0,1) + real(p2)         ; Substitute a default value.
  ENDIF
  IF (real(p3) == 0)              ; Invalid value for color scale.
    p3 = 75 + imag(p3)            ; Substitute a default value.
  ENDIF
  IF (imag(p3) == 0)              ; Invalid value for bailout.
    p3 = (0,128) + real(p3)       ; Substitute a default value.
  ENDIF
  closest = 1e+38                 ; Closest approach so far.
  closest2 = closest              ; Second-closest.
  point = 0                       ; Point of that closest approach.
  done = 2                        ; Iteration counter.
  r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.

  z = 0, c = pixel:               ; Mandelbrot initialization.
  z = sqr(z) + c                  ; Mandelbrot calculation.

  done = done + 1                 ; Done one more iteration.
  z2 = (z-p1) * r                 ; Offset to p1 and rotate.
  d = abs(imag(z2) * real(z2))    ; Compute hyperbolic distance.
  IF (d < closest)                ; Closer than previous value.
    point2 = point                ; Old closest is now 2nd closest.
    closest2 = closest
    point = z                     ; Save that point.
    closest = d                   ; Save the closest approach.
  ELSEIF (d < closest2)           ; Wasn't closest, but was 2nd closest.
    point2 = z                    ; Save that point.
    closest2 = d
  ENDIF
  IF (|z| > imag(p3))             ; Point exceeds bailout.
    z = point2 - point            ; Return difference between points.
    done = -1                     ; Set flag to force an exit.
  ENDIF
        
  done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-2j98.frm
}


dmj-Mand-Hyp-Ang { ; outside = decomp: angle of closest z[n] to hyperbola at p1
        ; This is the angle relative to p1.

        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2) * real(z2))    ; Compute hyperbolic distance.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3))             ; Point exceeds bailout.
          z = point - p1                ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Hyp-Ang-I { ; outside = decomp: angle of closest z[n] to hyperbola at p1
        ; This is the angle relative to p1.

        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2) * real(z2))    ; Compute hyperbolic distance.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3) || done >= maxit) ; Point exceeds bailout / inside.
          z = point - p1                ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Hyp-Dec { ; outside = decomp: angle of closest z[n] to hyperbola at p1
        ; This is the angle relative to the origin.

        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2) * real(z2))    ; Compute hyperbolic distance.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3))             ; Point exceeds bailout.
          z = point                     ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Hyp-Dec-I { ; outside = decomp: angle of closest z[n] to hyperbola at p1
        ; This is the angle relative to the origin.

        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2) * real(z2))    ; Compute hyperbolic distance.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3) || done >= maxit) ; Point exceeds bailout / inside.
          z = point                     ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Hyp-Dst { ; outside = real: closest z[n] to hyperbola at p1

        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2) * real(z2))    ; Compute hyperbolic distance.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3))             ; Point exceeds bailout.
          z = closest * real(p3)        ; Apply color scale.
          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done                  ; Return value.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Hyp-Dst-I { ; outside = real: closest z[n] to hyperbola at p1

        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2) * real(z2))    ; Compute hyperbolic distance.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3) || done >= maxit) ; Point exceeds bailout / inside.
          z = closest * real(p3)        ; Apply color scale.
          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done                  ; Return value.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Hyp-Itr { ; outside = real: n of closest z[n] to hyperbola at p1

        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2) * real(z2))    ; Compute hyperbolic distance.
        IF (d < closest)                ; Closer than previous value.
          point = done                  ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3))             ; Point exceeds bailout.
          z = point - done              ; Return iteration of closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Hyp-Itr-I { ; outside = real: n of closest z[n] to hyperbola at p1

        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2) * real(z2))    ; Compute hyperbolic distance.
        IF (d < closest)                ; Closer than previous value.
          point = done                  ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3) || done >= maxit) ; Point exceeds bailout / inside.
          z = point - done              ; Return iteration of closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Light { ; outside = real: smooth iteration coloring
        ; p1r: rotation angle of light
        ; p1i: elevation angle of light
        ; p2r: ambient light
        ; p2i: slope spacing
        ; p3r: maximum brightness
        ; p3i: bailout (default is 128)

        IF (imag(p2) == 0)              ; Invalid value for slope spacing.
          p2 = (0,0.0001) + real(p2)    ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 255 + flip(imag(p3))     ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        done = 2                        ; Iteration counter.
        il2 = 1/log(2.0)                ; Inverse log 2 (precalc).
        lp = log(log(imag(p3)))         ; log(log bailout) (precalc).

        z1 = 0, c1 = pixel + imag(p2)
        z2 = 0, c2 = pixel + flip(imag(p2))
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.
        z1 = sqr(z1) + c1
        z2 = sqr(z2) + c2

        done = done + 1                 ; Done one more iteration.
        IF (|z| > imag(p3))             ; Point exceeds bailout.
          IF (|z1| < 4 || |z2| < 4)     ; One of the parallel points is inside.
            z = 0                       ; Color it inside.
          ELSE                          ; All three points are outside.
            ; determine continuous iteration (height) for each point
            z  = done + il2*lp - il2*log(log(cabs(z)))
            z1 = done + il2*lp - il2*log(log(cabs(z1)))
            z2 = done + il2*lp - il2*log(log(cabs(z2)))
            ; determine surface normal
            vx = z1-z
            vy = z2-z
            vz = -imag(p2)
            ; normalize vector
            vd = 1/sqrt(sqr(vx)+sqr(vy)+sqr(vz))
            vx = vx*vd
            vy = vy*vd
            vz = vz*vd
            ; create light vector
            d2r = pi/180
            lx = cos(real(p1)*d2r) * cos(imag(p1)*d2r)
            ly = sin(real(p1)*d2r) * cos(imag(p1)*d2r)
            lz = -sin(imag(p1)*d2r)
            ; compute cosine of angle between these vectors
            l = lx*vx + ly*vy + lz*vz
            IF (l < real(p2))
              l = real(p2)
            ENDIF
            z = l * real(p3)            ; Final light value.
          ENDIF

          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done - 5              ; Pass value back to FractInt.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: 98msg.frm
}


dmj-Mand-Pls-Ang { ; outside = decomp: angle of closest z[n] to cross at p1
        ; This is the angle relative to p1.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 < d)                     ; Second distance is closer.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3))             ; Point exceeds bailout.
          z = point - p1                ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Pls-Ang-I { ; outside = decomp: angle of closest z[n] to cross at p1
        ; This is the angle relative to p1.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 < d)                     ; Second distance is closer.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3) || done >= maxit) ; Point exceeds bailout / inside.
          z = point - p1                ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Pls-Dec { ; outside = decomp: angle of closest z[n] to cross at p1
        ; This is the angle relative to the origin.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 < d)                     ; Second distance is closer.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3))             ; Point exceeds bailout.
          z = point                     ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Pls-Dec-I { ; outside = decomp: angle of closest z[n] to cross at p1
        ; This is the angle relative to the origin.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 < d)                     ; Second distance is closer.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3) || done >= maxit) ; Point exceeds bailout / inside.
          z = point                     ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Pls-Dst { ; outside = real: closest z[n] to cross at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 < d)                     ; Second distance is closer.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3))             ; Point exceeds bailout.
          z = closest * real(p3)        ; Apply color scale.
          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done                  ; Return value.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Pls-Dst-I { ; outside = real: closest z[n] to cross at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 < d)                     ; Second distance is closer.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3) || done >= maxit) ; Point exceeds bailout / inside.
          z = closest * real(p3)        ; Apply color scale.
          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done                  ; Return value.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Pls-Dst1 {; outside = real: closest z[n] to cross at p1
                   ; this frm modified slightly by David Shanholtzer, 1998
                   ; original frm: dmj-Mand-Pls-Dst by Damien M. Jones
  IF (imag(p2) == 0)            ; Invalid value for aspect ratio.
    p2 = (0,1) + real(p2)       ; Substitute a default value.
  ENDIF
  IF (real(p3) == 0)            ; Invalid value for color scale.
    p3 = 75 + flip(imag(p3))    ; Substitute a default value.
  ENDIF
  IF (imag(p3) == 0)            ; Invalid value for bailout.
    p3 = (0,128) + real(p3)     ; Substitute a default value.
  ENDIF
  closest = 1e+38               ; Closest approach so far.
  point = 0                     ; Point of that closest approach.
  done = 2                      ; Iteration counter.
  r = (0,1) ^ (real(p2)/90)     ; Compute rotation vector.
  z = 0, c = pixel:             ; Mandelbrot initialization.
  z = sqr(z) + c                ; Mandelbrot calculation.
  done = done + 2               ; Done two more iterations.
  z2 = (z-p1) * r               ; Offset to p1 and rotate.
  d = abs(imag(z2))             ; First distance.
  d2 = abs(real(z2)*imag(p2))   ; Second distance.
  IF (d2 << d)                  ; Second distance is closer.
    d = d2                      ; Use it instead.
  ENDIF
  IF (d << closest)             ; Closer than previous value.
    point = z                   ; Save that point.
    closest = d                 ; Save the closest approach.
  ENDIF
  IF (|z| > imag(p3))           ; Point exceeds bailout.
    z = closest * real(p3)      ; Apply color scale.
    z = z - 255*trunc(z/real(255)) ; Wrap at 255.
    z = z - done                ; Return value.
    done = -1                   ; Set flag to force an exit.
  ENDIF
  done >= 0                     ; Continue if the flag is clear.
  ;SOURCE: 98msg.frm
}


dmj-Mand-Pls-Itr { ; outside = real: n of closest z[n] to cross at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 < d)                     ; Second distance is closer.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = done                  ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3))             ; Point exceeds bailout.
          z = point - done              ; Return iteration of closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Pls-Itr-I { ; outside = real: n of closest z[n] to cross at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 < d)                     ; Second distance is closer.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = done                  ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3) || done >= maxit) ; Point exceeds bailout / inside.
          z = point - done              ; Return iteration of closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Pnt-Ang { ; outside = decomp: angle of closest z[n] to point at p1
        ; outside = atan will give a slightly different coloring.
        ; This is the angle relative to p1.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + imag(p3)            ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.

        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = |z2|                        ; Compute distance to p1 (squared).
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3))             ; Point exceeds bailout.
          z = point - p1                ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Pnt-Ang-I { ; outside = decomp: angle of closest z[n] to point at p1
        ; outside = atan will give a slightly different coloring.
        ; This is the angle relative to p1.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + imag(p3)            ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.

        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = |z2|                        ; Compute distance to p1 (squared).
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3) || done >= maxit)   ; Point exceeds bailout / inside.
          z = point - p1                ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Pnt-Dec { ; outside = decomp: angle of closest z[n] to point at p1
        ; outside = atan will give a slightly different coloring.
        ; This is the angle relative to the origin.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + imag(p3)            ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.

        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = |z2|                        ; Compute distance to p1 (squared).
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3))             ; Point exceeds bailout.
          z = point                     ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Pnt-Dec-I { ; outside = decomp: angle of closest z[n] to point at p1
        ; outside = atan will give a slightly different coloring.
        ; This is the angle relative to the origin.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + imag(p3)            ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.

        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = |z2|                        ; Compute distance to p1 (squared).
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3) || done >= maxit)   ; Point exceeds bailout / inside.
          z = point                     ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Pnt-Dst { ; outside = real: closest distance z[n] to point at p1
        ; With p1 = (0,0), p2 = (0,0) this is the same as the bof60 inside
        ; coloring option (except it works outside).  It is also similar
        ; to Paul Carlson's "Bubbles" type.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + imag(p3)            ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.

        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = |z2|                        ; Compute distance to p1 (squared).
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3))             ; Point exceeds bailout.
          z = sqrt(closest) * real(p3)  ; Apply color scale.
          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done                  ; Return value.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Pnt-Dst-I { ; outside = real: closest distance z[n] to point at p1
        ; With p1 = (0,0), this is the same as the bof60 inside coloring
        ; option (except it works outside).  It is also similar to Paul
        ; Carlson's "Bubbles" type.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + imag(p3)            ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.

        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = |z2|                        ; Compute distance to p1 (squared).
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3) || done >= maxit)  ; Point exceeds bailout / inside.
          z = sqrt(closest) * real(p3)  ; Apply color scale.
          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done                  ; Return value.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Pnt-Itr { ; outside = real: n of closest z[n] to point at p1
        ; With p1 = (0,0), this is the same as the bof61 inside coloring
        ; option (except it works outside).

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + imag(p3)            ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.

        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = |z2|                        ; Compute distance to p1 (squared).
        IF (d < closest)                ; Closer than previous value.
          point = done                  ; Save the iteration number.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3))             ; Point exceeds bailout.
          z = point - done              ; Return iteration of closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Pnt-Itr-I { ; outside = real: n of closest z[n] to point at p1
        ; With p1 = (0,0), this is the same as the bof61 inside coloring
        ; option (except it works outside).

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + imag(p3)            ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.

        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = |z2|                        ; Compute distance to p1 (squared).
        IF (d < closest)                ; Closer than previous value.
          point = done                  ; Save the iteration number.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3) || done >= maxit)   ; Point exceeds bailout / inside.
          z = point - done              ; Return iteration of closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Rct-Ang { ; outside = decomp: angle of closest z[n] to rectangle at p1
        ; This is the angle relative to p1.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 > d)                     ; Second distance is farther.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3))             ; Point exceeds bailout.
          z = point - p1                ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Rct-Ang-I { ; outside = decomp: angle of closest z[n] to rectangle at p1
        ; This is the angle relative to p1.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 > d)                     ; Second distance is farther.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3) || done >= maxit) ; Point exceeds bailout / inside.
          z = point - p1                ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Rct-Dec { ; outside = decomp: angle of closest z[n] to rectangle at p1
        ; This is the angle relative to the origin.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 > d)                     ; Second distance is farther.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3))             ; Point exceeds bailout.
          z = point                     ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Rct-Dec-I { ; outside = decomp: angle of closest z[n] to rectangle at p1
        ; This is the angle relative to the origin.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 > d)                     ; Second distance is farther.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3) || done >= maxit) ; Point exceeds bailout / inside.
          z = point                     ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Rct-Dst { ; outside = real: closest z[n] to rectangle at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 > d)                     ; Second distance is farther.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3))             ; Point exceeds bailout.
          z = closest * real(p3)        ; Apply color scale.
          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done                  ; Return value.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Rct-Dst-I { ; outside = real: closest z[n] to rectangle at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 > d)                     ; Second distance is farther.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3) || done >= maxit) ; Point exceeds bailout / inside.
          z = closest * real(p3)        ; Apply color scale.
          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done                  ; Return value.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Rct-Itr { ; outside = real: n of closest z[n] to rectangle at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 > d)                     ; Second distance is farther.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = done                  ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3))             ; Point exceeds bailout.
          z = point - done              ; Return iteration of closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Rct-Itr-I { ; outside = real: n of closest z[n] to rectangle at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 > d)                     ; Second distance is farther.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = done                  ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3) || done >= maxit) ; Point exceeds bailout / inside.
          z = point - done              ; Return iteration of closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Smooth(XAXIS) { ; outside = real: smooth iteration coloring
        ; p3r: color scaling factor (default is 1 = integer bands)
        ; p3i: bailout (default is 128)

        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 1 + flip(imag(p3))       ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        done = 2                        ; Iteration counter.
        il2 = 1/log(2.0)                ; Inverse log 2 (precalc).
        lp = log(log(imag(p3)))         ; log(log bailout) (precalc).
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        IF (|z| > imag(p3))             ; Point exceeds bailout.
          z = (done + il2*lp - il2*log(log(cabs(z)))) * real(p3)
          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done - 5              ; Pass value back to FractInt.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-SmoothPHC { ; outside = real: smooth iteration coloring
        ; p2r: color scaling factor 1 (default is 1 = integer bands)
        ; p2i: color scaling factor 2 (default is 1 = integer bands)
        ; p3i: bailout (default is 128)

        IF (real(p2) == 0)              ; Invalid value for color scale.
          p2 = 1 + flip(imag(p2))       ; Substitute a default value.
        ENDIF
        IF (imag(p2) == 0)              ; Invalid value for color scale.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        done = 2                        ; Iteration counter.
        il2 = 1/log(2.0)                ; Inverse log 2 (precalc).
        lp = log(log(imag(p3)))         ; log(log bailout) (precalc).
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        IF (|z| > imag(p3))             ; Point exceeds bailout.
          IF (whitesq)                  ; Alternates each square.
            z = (done + il2*lp - il2*log(log(cabs(z)))) * real(p2)
          ELSE
            z = (done + il2*lp - il2*log(log(cabs(z)))) * imag(p2)
          ENDIF
          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done - 8              ; Pass value back to FractInt.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-SmoothX2 { ; outside = real: smooth iteration coloring
        ; colors 0-127 are affected by scaling factor 1
        ; colors 128-255 are affected by scaling factor 2
        ; p2r: color scaling factor 1 (default is 1 = integer bands)
        ; p2i: color scaling factor 2 (default is 1 = integer bands)
        ; p3i: bailout (default is 128)

        IF (real(p2) == 0)              ; Invalid value for color scale.
          p2 = 1 + flip(imag(p2))       ; Substitute a default value.
        ENDIF
        IF (imag(p2) == 0)              ; Invalid value for color scale.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        done = 2                        ; Iteration counter.
        il2 = 1/log(2.0)                ; Inverse log 2 (precalc).
        lp = log(log(imag(p3)))         ; log(log bailout) (precalc).
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        IF (|z| > imag(p3))             ; Point exceeds bailout.
          IF (whitesq)                  ; Alternates each square.
            z = (done + il2*lp - il2*log(log(cabs(z)))) * real(p2)
            z = 128*((z*0.0078125) - trunc(z*0.0078125))
          ELSE
            z = (done + il2*lp - il2*log(log(cabs(z)))) * imag(p2)
            z = 128*((z*0.0078125) - trunc(z*0.0078125)) + 128
          ENDIF
          z = z - done - 5              ; Remove iteration count.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Spi-Ang { ; outside = decomp: angle of closest z[n] to spiral at p1
        ; This is the angle relative to p1.

        IF (real(p2) == 0)              ; Invalid value for tightness.
          p2 = 1 + flip(imag(p2))       ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = z - p1                     ; Offset to p1.
        d = 1/(cabs(z2)) * real(p2)     ; Figure distance (inverted).
        r = (0,1) ^ d                   ; Compute rotation vector.
        z2 = z2 * r                     ; Rotate.
        d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3) && done > imag(p2)) ; Point exceeds bailout.
          z = point - p1                ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Spi-Ang-I { ; outside = decomp: angle of closest z[n] to spiral at p1
        ; This is the angle relative to p1.

        IF (real(p2) == 0)              ; Invalid value for tightness.
          p2 = 1 + flip(imag(p2))       ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = z - p1                     ; Offset to p1.
        d = 1/(cabs(z2)) * real(p2)     ; Figure distance (inverted).
        r = (0,1) ^ d                   ; Compute rotation vector.
        z2 = z2 * r                     ; Rotate.
        d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF ((|z| > imag(p3) && done > imag(p2)) || done >= maxit) ; Out!
          z = point - p1                ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Spi-Dec { ; outside = decomp: angle of closest z[n] to spiral at p1
        ; This is the angle relative to the origin.

        IF (real(p2) == 0)              ; Invalid value for tightness.
          p2 = 1 + flip(imag(p2))       ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = z - p1                     ; Offset to p1.
        d = 1/(cabs(z2)) * real(p2)     ; Figure distance (inverted).
        r = (0,1) ^ d                   ; Compute rotation vector.
        z2 = z2 * r                     ; Rotate.
        d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3) && done > imag(p2)) ; Point exceeds bailout.
          z = point                     ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Spi-Dec-I { ; outside = decomp: angle of closest z[n] to spiral at p1
        ; This is the angle relative to the origin.

        IF (real(p2) == 0)              ; Invalid value for tightness.
          p2 = 1 + flip(imag(p2))       ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = z - p1                     ; Offset to p1.
        d = 1/(cabs(z2)) * real(p2)     ; Figure distance (inverted).
        r = (0,1) ^ d                   ; Compute rotation vector.
        z2 = z2 * r                     ; Rotate.
        d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF ((|z| > imag(p3) && done > imag(p2)) || done >= maxit) ; Out!
          z = point                     ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Spi-Dst { ; outside = real: closest z[n] to spiral at p1

        IF (real(p2) == 0)              ; Invalid value for tightness.
          p2 = 1 + flip(imag(p2))       ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = z - p1                     ; Offset to p1.
        d = 1/(cabs(z2)) * real(p2)     ; Figure distance (inverted).
        r = (0,1) ^ d                   ; Compute rotation vector.
        z2 = z2 * r                     ; Rotate.
        d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3) && done > imag(p2)) ; Point exceeds bailout.
          z = closest * real(p3)        ; Apply color scale.
          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done                  ; Return value.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Spi-Dst-I { ; outside = real: closest z[n] to spiral at p1

        IF (real(p2) == 0)              ; Invalid value for tightness.
          p2 = 1 + flip(imag(p2))       ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = z - p1                     ; Offset to p1.
        d = 1/(cabs(z2)) * real(p2)     ; Figure distance (inverted).
        r = (0,1) ^ d                   ; Compute rotation vector.
        z2 = z2 * r                     ; Rotate.
        d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF ((|z| > imag(p3) && done > imag(p2)) || done >= maxit) ; Out!
          z = closest * real(p3)        ; Apply color scale.
          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done                  ; Return value.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Spi-Itr { ; outside = real: n of closest z[n] to spiral at p1

        IF (real(p2) == 0)              ; Invalid value for tightness.
          p2 = 1 + flip(imag(p2))       ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = z - p1                     ; Offset to p1.
        d = 1/(cabs(z2)) * real(p2)     ; Figure distance (inverted).
        r = (0,1) ^ d                   ; Compute rotation vector.
        z2 = z2 * r                     ; Rotate.
        d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
        IF (d < closest)                ; Closer than previous value.
          point = done                  ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3) && done > imag(p2)) ; Point exceeds bailout.
          z = point - done              ; Return iteration of closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Spi-Itr-I { ; outside = real: n of closest z[n] to spiral at p1

        IF (real(p2) == 0)              ; Invalid value for tightness.
          p2 = 1 + flip(imag(p2))       ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = z - p1                     ; Offset to p1.
        d = 1/(cabs(z2)) * real(p2)     ; Figure distance (inverted).
        r = (0,1) ^ d                   ; Compute rotation vector.
        z2 = z2 * r                     ; Rotate.
        d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
        IF (d < closest)                ; Closer than previous value.
          point = done                  ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF ((|z| > imag(p3) && done > imag(p2)) || done >= maxit) ; Out!
          z = point - done              ; Return iteration of closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-TC001 {
;
; This formula places three traps on the complex
; plane, each a wide straight line. Each trap is
; a different color; as the orbit falls into the
; trap, it is "blended" towards the color of the
; trap. Colors accumulate until the point bails
; out.
;
; p1r   Trap 1 width
; p1i   Trap 2 width
; p2r   Trap 3 width
;
; To modify the trap centers, rotations, or
; colors, clone this formula, add your initials
; and a number onto the end of the formula name,
; and make your changes.
;
; initialization:
  r = 0
  g = 0
  b = 0
  done = 0
  i = 0

  t1 = (1.0, 0.5)               ; trap centers
  t2 = (0.0, 1.0)
  t3 = (-0.5, -1.0)
  t1r = 255, t1g = 0, t1b = 64  ; trap colors
  t2r = 255, t2g = 192, t2b = 0
  t3r = 0, t3g = 192, t3b = 255
  r1 = (0,1)^(0/90)             ; trap rotations
  r2 = (0,1)^(45/90)
  r3 = (0,1)^(60/90)
  IF (real(p1) == 0)            ; default thresholds
    p1 = 0.5 + flip(imag(p1))
  ENDIF
  IF (imag(p1) == 0)
    p1 = real(p1) + (0,0.5)
  ENDIF
  IF (real(p2) == 0)
    p2 = 0.5 + flip(imag(p2))
  ENDIF
  tt1 = 1 / real(p1)            ; reciprocals of trap thresholds
  tt2 = 1 / imag(p1)
  tt3 = 1 / real(p2)
  
  z = pixel, c = pixel
  
  :

; iteration:
  z = sqr(z) + c

  d1 = abs(real((t1-z)*r1))
  d2 = abs(real((t2-z)*r2))
  d3 = abs(real((t3-z)*r3))
  
  IF (d1 < real(p1))
    r = r + (t1r-r)*sqr(d1*tt1)
    g = g + (t1g-g)*sqr(d1*tt1)
    b = b + (t1b-b)*sqr(d1*tt1)
  ENDIF
  IF (d2 < imag(p1))
    r = r + (t2r-r)*sqr(d2*tt2)
    g = g + (t2g-g)*sqr(d2*tt2)
    b = b + (t2b-b)*sqr(d2*tt2)
  ENDIF
  IF (d3 < real(p2))
    r = r + (t3r-r)*sqr(d3*tt3)
    g = g + (t3g-g)*sqr(d3*tt3)
    b = b + (t3b-b)*sqr(d3*tt3)
  ENDIF

; bailout test:
  IF (|z| > 128 ); || i == maxit-2)     ; include last part for inside
    done = 1
  ENDIF
  i = i + 1

; color processing:
;  
; True Color Engine 1.0
; Copyright 1999 Damien M. Jones
; http://www.fractalus.com/
;
; This block of formula code provides simulated true color
; in FractInt by dithering. Simply feed red, green, and blue
; values into the variables r, g, and b, set done=1 when your
; values are ready, and store the iteration count in i. To
; view the results, use the associated true color palette,
; use outside=real, and use passes=1 or passes=2; don't use
; guessing.
;
; You can re-use this code in your own formulas, but please
; give credit. Thanks!
;
  IF (done > 0)
    ; 1. Clip to valid ranges
    IF (r > 255)                ; You can remove these lines
      r = 255                   ; if you are absolutely sure
    ENDIF                       ; your RGB values will never
    IF (g > 255)                ; be out of range. That will
      g = 255                   ; make your formula run a bit
    ENDIF                       ; faster.
    IF (b > 255)
      b = 255
    ENDIF
    IF (r < 0)
      r = 0
    ENDIF
    IF (g < 0)
      g = 0
    ENDIF
    IF (b < 0)
      b = 0
    ENDIF

    ; 2. Figure out which spot in the dither pattern to use
    ; The dither pattern is a 4x4 matrix; since there are
    ; only six shades of each color, in-between shades must
    ; be "mixed".
    xdither = real(scrnpix) - floor(real(scrnpix)*0.25)*4
    ydither = imag(scrnpix) - floor(imag(scrnpix)*0.25)*4

    ; 3. Calculate the dither threshold for each channel
    ; a. Determine quadrant in dither pattern
    IF (ydither > 1.5)          ; bottom half
      ydither = ydither - 2     ; move to top half
      IF (xdither < 1.5)        ; left half (lower left quadrant)
        rdither = 3
        gdither = 3
        bdither = 3
      ELSE                      ; right half (lower right quadrant)
        xdither = xdither - 2   ; move to left half
        rdither = 1
        gdither = 1
        bdither = 1
      ENDIF
    ELSE                        ; top half
      IF (xdither > 1.5)        ; right half (upper right quadrant)
        xdither = xdither - 2   ; move to left half
        rdither = 2
        gdither = 2
        bdither = 2
      ELSE                      ; left half (upper left quadrant)
        rdither = 0
        gdither = 0
        bdither = 0
      ENDIF
    ENDIF
    ; b. Determine precise cell in quadrant
    IF (ydither > 0.5)          ; bottom half
      IF (xdither < 0.5)        ; left half (bottom left cell)
        rdither = rdither + 12
        gdither = gdither + 12
        bdither = bdither + 12
      ELSE                      ; right half (bottom right cell)
        rdither = rdither + 4
        gdither = gdither + 4
        bdither = bdither + 4
      ENDIF
    ELSE                        ; top half
      IF (xdither > 0.5)        ; right half (upper right cell)
        rdither = rdither + 8
        gdither = gdither + 8
        bdither = bdither + 8
      ENDIF
    ENDIF

    ; 4. Scale r, g, b with dither weight added
    r = (r*80/255 + rdither) * 0.0625
    g = (g*80/255 + rdither) * 0.0625
    b = (b*80/255 + rdither) * 0.0625
    
    ; 5. Compute final color and fudge z
    r = floor(r) + floor(g)*6 + floor(b)*36
    z = r - i - 6
  ENDIF
  
; FractInt bailout:
  done == 0
  ;SOURCE: 99msg.frm
}


dmj-Mand-TC002 {
;
; This formula places three traps on the complex
; plane, each a circle. Each trap is
; a different color; as the orbit falls into the
; trap, it is "blended" towards the color of the
; trap. Colors accumulate until the point bails
; out.
;
; p1r   Trap 1 width
; p1i   Trap 2 width
; p2r   Trap 3 width
;
; To modify the trap centers, rotations, or
; colors, clone this formula, add your initials
; and a number onto the end of the formula name,
; and make your changes.
;
; initialization:
  r = 0
  g = 0
  b = 0
  done = 0
  i = 0

  t1 = (0.75, 0.75)             ; trap centers
  t2 = (-0.25, 0.0)
  t3 = (-2.0, -0.25)
  t1r = 255, t1g = 0, t1b = 128 ; trap colors
  t2r = 0, t2g = 255, t2b = 128
  t3r = 0, t3g = 64, t3b = 255
  r1 = (0,1)^(0/90)             ; trap rotations
  r2 = (0,1)^(45/90)
  r3 = (0,1)^(60/90)
  IF (real(p1) == 0)            ; default thresholds
    p1 = 0.5 + flip(imag(p1))
  ENDIF
  IF (imag(p1) == 0)
    p1 = real(p1) + (0,0.5)
  ENDIF
  IF (real(p2) == 0)
    p2 = 0.5 + flip(imag(p2))
  ENDIF
  tt1 = 1 / real(p1)            ; reciprocals of trap thresholds
  tt2 = 1 / imag(p1)
  tt3 = 1 / real(p2)
  
  z = pixel, c = pixel
  
  :

; iteration:
  z = sqr(z) + c

  d1 = |t1-z|
  d2 = |t2-z|
  d3 = |t3-z|
  
  IF (d1 < real(p1))
    r = r + (t1r-r)*(1-sqrt(d1*tt1))
    g = g + (t1g-g)*(1-sqrt(d1*tt1))
    b = b + (t1b-b)*(1-sqrt(d1*tt1))
  ENDIF
  IF (d2 < imag(p1))
    r = r + (t2r-r)*(1-sqrt(d2*tt2))
    g = g + (t2g-g)*(1-sqrt(d2*tt2))
    b = b + (t2b-b)*(1-sqrt(d2*tt2))
  ENDIF
  IF (d3 < real(p2))
    r = r + (t3r-r)*(1-sqrt(d3*tt3))
    g = g + (t3g-g)*(1-sqrt(d3*tt3))
    b = b + (t3b-b)*(1-sqrt(d3*tt3))
  ENDIF

; bailout test:
  IF (|z| > 128 ); || i == maxit-2)     ; include last part for inside
    done = 1
  ENDIF
  i = i + 1

; color processing:
;  
; True Color Engine 1.0
; Copyright 1999 Damien M. Jones
; http://www.fractalus.com/
;
; This block of formula code provides simulated true color
; in FractInt by dithering. Simply feed red, green, and blue
; values into the variables r, g, and b, set done=1 when your
; values are ready, and store the iteration count in i. To
; view the results, use the associated true color palette,
; use outside=real, and use passes=1 or passes=2; don't use
; guessing.
;
; You can re-use this code in your own formulas, but please
; give credit. Thanks!
;
  IF (done > 0)
    ; 1. Clip to valid ranges
    IF (r > 255)                ; You can remove these lines
      r = 255                   ; if you are absolutely sure
    ENDIF                       ; your RGB values will never
    IF (g > 255)                ; be out of range. That will
      g = 255                   ; make your formula run a bit
    ENDIF                       ; faster.
    IF (b > 255)
      b = 255
    ENDIF
    IF (r < 0)
      r = 0
    ENDIF
    IF (g < 0)
      g = 0
    ENDIF
    IF (b < 0)
      b = 0
    ENDIF

    ; 2. Figure out which spot in the dither pattern to use
    ; The dither pattern is a 4x4 matrix; since there are
    ; only six shades of each color, in-between shades must
    ; be "mixed".
    xdither = real(scrnpix) - floor(real(scrnpix)*0.25)*4
    ydither = imag(scrnpix) - floor(imag(scrnpix)*0.25)*4

    ; 3. Calculate the dither threshold for each channel
    ; a. Determine quadrant in dither pattern
    IF (ydither > 1.5)          ; bottom half
      ydither = ydither - 2     ; move to top half
      IF (xdither < 1.5)        ; left half (lower left quadrant)
        rdither = 3
        gdither = 3
        bdither = 3
      ELSE                      ; right half (lower right quadrant)
        xdither = xdither - 2   ; move to left half
        rdither = 1
        gdither = 1
        bdither = 1
      ENDIF
    ELSE                        ; top half
      IF (xdither > 1.5)        ; right half (upper right quadrant)
        xdither = xdither - 2   ; move to left half
        rdither = 2
        gdither = 2
        bdither = 2
      ELSE                      ; left half (upper left quadrant)
        rdither = 0
        gdither = 0
        bdither = 0
      ENDIF
    ENDIF
    ; b. Determine precise cell in quadrant
    IF (ydither > 0.5)          ; bottom half
      IF (xdither < 0.5)        ; left half (bottom left cell)
        rdither = rdither + 12
        gdither = gdither + 12
        bdither = bdither + 12
      ELSE                      ; right half (bottom right cell)
        rdither = rdither + 4
        gdither = gdither + 4
        bdither = bdither + 4
      ENDIF
    ELSE                        ; top half
      IF (xdither > 0.5)        ; right half (upper right cell)
        rdither = rdither + 8
        gdither = gdither + 8
        bdither = bdither + 8
      ENDIF
    ENDIF

    ; 4. Scale r, g, b with dither weight added
    r = (r*80/255 + rdither) * 0.0625
    g = (g*80/255 + rdither) * 0.0625
    b = (b*80/255 + rdither) * 0.0625
    
    ; 5. Compute final color and fudge z
    r = floor(r) + floor(g)*6 + floor(b)*36
    z = r - i - 6
  ENDIF
  
; FractInt bailout:
  done == 0
  ;SOURCE: 99msg.frm
}


dmj-Mand-TC003 {
;
; This formula places a single rainbow-colored
; ring trap on the complex plane. As the orbit falls
; into the trap, it is "blended" towards the
; color of the trap at the point it lands.
; Colors accumulate until the point bails out.
;
; p1r   Trap 1 width
; p1i   Trap 1 diameter
; p2r   Trap rotation
; p2i   Trap aspect
; p3    Trap center
;
; To modify the trap centers, rotations, or
; colors, clone this formula, add your initials
; and a number onto the end of the formula name,
; and make your changes.
;
; initialization:
  r = 0
  g = 0
  b = 0
  done = 0
  i = 0

  t1 = p3 ;(0.75, 0.75)         ; trap centers
  r1 = (0,1)^(0/90)             ; trap rotations
  IF (real(p1) == 0)            ; default thresholds
    p1 = 0.5 + flip(imag(p1))
  ENDIF
  IF (imag(p1) == 0)
    p1 = real(p1) + (0,0.25)
  ENDIF
  IF (imag(p2) == 0)
    p2 = real(p2) + (0,1.0)
  ENDIF
  r1 = (0,1)^(real(p2)/90)      ; trap rotations
  a1 = imag(p2)                 ; aspect ratio
  tt1 = 1 / real(p1)            ; reciprocals of trap thresholds
  
  z = pixel, c = pixel
  
  :

; iteration:
  z = sqr(z) + c

  z1 = (z-t1) * r1
  z1 = real(z1) + flip(imag(z1)*a1)
  d1 = abs(cabs(z1)-imag(p1))
  
  IF (d1 < real(p1))
    d1 = 1 - (d1*tt1)
    h = (atan(imag(z1)/real(z1)) + pi/2) * 127.5/pi
    IF (real(z1) < 0)
      h = h + 127.5
    ENDIF
    s = 255
    l = 255 * sqr(d1)
    
    ; HSL -> RGB conversion code
    IF (s == 0)                 ; zero saturation (grey shade)
      t1r = l, t1g = l, t1b = l ; take the easy way out
    ELSE                        ; non-zero saturation
      IF (l < 128)              ; lightness in the low half
        ls2 = l * (255+s) / 255 ; compute lightest value
      ELSE                      ; lightness in the high half
        ls2 = l+s - (l*s) / 255 ; compute lightest value
      ENDIF
      ls1 = 2*l - ls2           ; compute darkest value
      IF (h < 42.6666667)       ; first sixth: red to yellow
        t1r = 255
        t1g = h * 6
        t1b = 0
      ELSEIF (h < 87.3333333)   ; second sixth: yellow to green
        t1r = (87.3333333 - h) * 6
        t1g = 255
        t1b = 0
      ELSEIF (h < 128)          ; third sixth: green to cyan
        t1r = 0
        t1g = 255
        t1b = (h-87.3333333) * 6
      ELSEIF (h < 170.6666667)  ; fourth sixth: cyan to blue
        t1r = 0
        t1g = (170.6666667 - h) * 6
        t1b = 255
      ELSEIF (h < 214.3333333)  ; fifth sixth: blue to magenta
        t1r = (h-170.6666667) * 6
        t1g = 0
        t1b = 255
      ELSE                      ; last sixth: magenta to red
        t1r = 255
        t1g = 0
        t1b = (255 - h) * 6
      ENDIF
      ls2 = (ls2 - ls1) / 255   ; brightness range
      t1r = ls1 + t1r*ls2       ; scale RGB accordingly
      t1g = ls1 + t1g*ls2
      t1b = ls1 + t1b*ls2
    ENDIF
    r = r + (t1r-r)*(d1)
    g = g + (t1g-g)*(d1)
    b = b + (t1b-b)*(d1)
  ENDIF

; bailout test:
  IF (|z| > 128 ); || i == maxit-2)     ; include last part for inside
    done = 1
  ENDIF
  i = i + 1

; color processing:
;  
; True Color Engine 1.0
; Copyright 1999 Damien M. Jones
; http://www.fractalus.com/
;
; This block of formula code provides simulated true color
; in FractInt by dithering. Simply feed red, green, and blue
; values into the variables r, g, and b, set done=1 when your
; values are ready, and store the iteration count in i. To
; view the results, use the associated true color palette,
; use outside=real, and use passes=1 or passes=2; don't use
; guessing.
;
; You can re-use this code in your own formulas, but please
; give credit. Thanks!
;
  IF (done > 0)
    ; 1. Clip to valid ranges
    IF (r > 255)                ; You can remove these lines
      r = 255                   ; if you are absolutely sure
    ENDIF                       ; your RGB values will never
    IF (g > 255)                ; be out of range. That will
      g = 255                   ; make your formula run a bit
    ENDIF                       ; faster.
    IF (b > 255)
      b = 255
    ENDIF
    IF (r < 0)
      r = 0
    ENDIF
    IF (g < 0)
      g = 0
    ENDIF
    IF (b < 0)
      b = 0
    ENDIF

    ; 2. Figure out which spot in the dither pattern to use
    ; The dither pattern is a 4x4 matrix; since there are
    ; only six shades of each color, in-between shades must
    ; be "mixed".
    xdither = real(scrnpix) - floor(real(scrnpix)*0.25)*4
    ydither = imag(scrnpix) - floor(imag(scrnpix)*0.25)*4

    ; 3. Calculate the dither threshold for each channel
    ; a. Determine quadrant in dither pattern
    IF (ydither > 1.5)          ; bottom half
      ydither = ydither - 2     ; move to top half
      IF (xdither < 1.5)        ; left half (lower left quadrant)
        rdither = 3
        gdither = 3
        bdither = 3
      ELSE                      ; right half (lower right quadrant)
        xdither = xdither - 2   ; move to left half
        rdither = 1
        gdither = 1
        bdither = 1
      ENDIF
    ELSE                        ; top half
      IF (xdither > 1.5)        ; right half (upper right quadrant)
        xdither = xdither - 2   ; move to left half
        rdither = 2
        gdither = 2
        bdither = 2
      ELSE                      ; left half (upper left quadrant)
        rdither = 0
        gdither = 0
        bdither = 0
      ENDIF
    ENDIF
    ; b. Determine precise cell in quadrant
    IF (ydither > 0.5)          ; bottom half
      IF (xdither < 0.5)        ; left half (bottom left cell)
        rdither = rdither + 12
        gdither = gdither + 12
        bdither = bdither + 12
      ELSE                      ; right half (bottom right cell)
        rdither = rdither + 4
        gdither = gdither + 4
        bdither = bdither + 4
      ENDIF
    ELSE                        ; top half
      IF (xdither > 0.5)        ; right half (upper right cell)
        rdither = rdither + 8
        gdither = gdither + 8
        bdither = bdither + 8
      ENDIF
    ENDIF

    ; 4. Scale r, g, b with dither weight added
    r = (r*80/255 + rdither) * 0.0625
    g = (g*80/255 + rdither) * 0.0625
    b = (b*80/255 + rdither) * 0.0625
    
    ; 5. Compute final color and fudge z
    r = floor(r) + floor(g)*6 + floor(b)*36
    z = r - i - 6
  ENDIF
  
; FractInt bailout:
  done == 0
  ;SOURCE: 99msg.frm
}


dmj-Mand-ThetaW { ; outside = real: weighted decomposition average
        ; original idea and formula from L. Kerry Mitchell
        ; modified for weighting and total continuity by dmj, 9-9-97

        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        sum = 0                         ; Running total.
        weight = 1                      ; Current weight.
        done = 1                        ; Iteration counter.
        il2 = 1/log(2.0)                ; Inverse log 2 (precalc).
        lp = log(log(128))              ; log(log bailout) (precalc).
        f = -1                          ; No fractional iteration yet.
        
        z = pixel, c = pixel:           ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        IF (done > imag(p3))            ; Past minimum iteration.
          z2 = z-p2                     ; Offset to p2.
          sum = sum + atan(abs(imag(z2)/real(z2)))*weight ; Sum up angles.
          weight = weight * 0.5         ; Reduce weight.
        ENDIF

        done = done + 1                 ; Done one more iteration.
        IF (|z| > 128)                  ; Point exceeds bailout.
          IF (f < 0)                    ; First time; let it go again.
            f = il2*lp - il2*log(log(cabs(z))) + 2; Fractional iteration.
            oldsum = sum                ; Save the average ratio so far.
          ELSE                          ; Second time past bailout.
            f = oldsum + (sum-oldsum) * (f-2) ; Interpolate sum.
            z = f * real(p3)            ; Apply color scale.
            z = z - 255*trunc(z/real(255)) ; Wrap at 255.
            z = z - done - 5            ; Return value.
            done = -1                   ; Set flag to force an exit.
          ENDIF
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-ThetaW-I { ; outside = real: weighted decomposition average
        ; original idea and formula from L. Kerry Mitchell
        ; modified for weighting and total continuity by dmj, 9-9-97

        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        sum = 0                         ; Running total.
        weight = 1                      ; Current weight.
        done = 1                        ; Iteration counter.
        il2 = 1/log(2.0)                ; Inverse log 2 (precalc).
        lp = log(log(128))              ; log(log bailout) (precalc).
        f = -1                          ; No fractional iteration yet.
        
        z = pixel, c = pixel:           ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        IF (done > imag(p3))            ; Past minimum iteration.
          z2 = z-p2                     ; Offset to p2.
          sum = sum + atan(abs(imag(z2)/real(z2)))*weight ; Sum up angles.
          weight = weight * 0.5         ; Reduce weight.
        ENDIF
        
        done = done + 1                 ; Done one more iteration.
        IF (|z| > 128 || done >= maxit-1) ; Point exceeds bailout.
          IF (f < 0)                    ; First time; let it go again.
            f = il2*lp - il2*log(log(cabs(z))) + 2; Fractional iteration.
            oldsum = sum                ; Save the average ratio so far.
          ELSE                          ; Second time past bailout.
            f = oldsum + (sum-oldsum) * (f-2) ; Interpolate sum.
            z = f * real(p3)            ; Apply color scale.
            z = z - 255*trunc(z/real(255)) ; Wrap at 255.
            z = z - done - 5            ; Return value.
            done = -1                   ; Set flag to force an exit.
          ENDIF
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-ThetaW2 { ; outside = real: weighted decomposition average
        ; original idea and formula from L. Kerry Mitchell
        ; modified for weighting and total continuity by dmj, 9-9-97

        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        sum = 0                         ; Running total.
        done = 1                        ; Iteration counter.
        il2 = 1/log(2.0)                ; Inverse log 2 (precalc).
        lp = log(log(128))              ; log(log bailout) (precalc).
        f = -1                          ; No fractional iteration yet.
        
        z = pixel, c = pixel:           ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        IF (done > imag(p3))            ; Past minimum iteration.
          z2 = z-p2                     ; Offset to p2.
          sum = sum*0.5 + atan(abs(imag(z2)/real(z2))) ; Sum up angles.
        ENDIF
        
        done = done + 1                 ; Done one more iteration.
        IF (|z| > 128)                  ; Point exceeds bailout.
          IF (f < 0)                    ; First time; let it go again.
            f = il2*lp - il2*log(log(cabs(z))) + 2; Fractional iteration.
            oldsum = sum                ; Save the average ratio so far.
          ELSE                          ; Second time past bailout.
            f = oldsum + (sum-oldsum) * (f-2) ; Interpolate sum.
            z = f * real(p3)            ; Apply color scale.
            z = z - 255*trunc(z/real(255)) ; Wrap at 255.
            z = z - done - 5            ; Return value.
            done = -1                   ; Set flag to force an exit.
          ENDIF
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-ThetaW2-I { ; outside = real: weighted decomposition average
        ; original idea and formula from L. Kerry Mitchell
        ; modified for weighting and total continuity by dmj, 9-9-97

        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        sum = 0                         ; Running total.
        done = 1                        ; Iteration counter.
        il2 = 1/log(2.0)                ; Inverse log 2 (precalc).
        lp = log(log(128))              ; log(log bailout) (precalc).
        f = -1                          ; No fractional iteration yet.
        
        z = pixel, c = pixel:           ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        IF (done > imag(p3))            ; Past minimum iteration.
          z2 = z-p2                     ; Offset to p2.
          sum = sum*0.5 + atan(abs(imag(z2)/real(z2))) ; Sum up angles.
        ENDIF
        
        done = done + 1                 ; Done one more iteration.
        IF (|z| > 128 || done >= maxit-1) ; Point exceeds bailout.
          IF (f < 0)                    ; First time; let it go again.
            f = il2*lp - il2*log(log(cabs(z))) + 2; Fractional iteration.
            oldsum = sum                ; Save the average ratio so far.
          ELSE                          ; Second time past bailout.
            f = oldsum + (sum-oldsum) * (f-2) ; Interpolate sum.
            z = f * real(p3)            ; Apply color scale.
            z = z - 255*trunc(z/real(255)) ; Wrap at 255.
            z = z - done - 5            ; Return value.
            done = -1                   ; Set flag to force an exit.
          ENDIF
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Triangl-I(XAXIS) { ; outside = real: triangle inequality average
        ; original idea and formula from L. Kerry Mitchell
        ; modified for total continuity by dmj, 9-8-97

        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        sum = 0                         ; Running total.
        done = 1                        ; Iteration counter.
        ac = cabs(pixel)                ; Absolute value of pixel (precalc).
        il2 = 1/log(2.0)                ; Inverse log 2 (precalc).
        lp = log(log(imag(p3)))         ; log(log bailout) (precalc).
        f = -1                          ; No fractional iteration yet.
        
        z = pixel, c = pixel:           ; Mandelbrot initialization.
        az2 = |z|                       ; Save absolute value of first term.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        lowbound = abs(az2 - ac)        ; Calculate lower bound for sum.
        sum = sum + (cabs(z) - lowbound) / (az2+ac - lowbound)
                                        ; Ratio between bounds.
        
        done = done + 1                 ; Done one more iteration.
        IF (az2 > imag(p3) || done > maxit-2)   ; Point exceeds bailout.
          IF (f < 0)                    ; First time; let it go again.
            f = il2*lp - il2*log(log(cabs(z))) + 2; Fractional iteration.
            oldsum = sum / done         ; Save the average ratio so far.
          ELSE                          ; Second time past bailout.
            sum = sum / done            ; Average ratio.
            f = oldsum + (sum-oldsum) * (f-1) ; Interpolate sum.
            z = f * real(p3)            ; Apply color scale.
            z = z - 255*trunc(z/real(255)) ; Wrap at 255.
            z = z - done - 5            ; Return value.
            done = -1                   ; Set flag to force an exit.
          ENDIF
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Mand-Triangle(XAXIS) { ; outside = real: triangle inequality average
        ; original idea and formula from L. Kerry Mitchell
        ; modified for total continuity by dmj, 9-8-97

        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        sum = 0                         ; Running total.
        done = 1                        ; Iteration counter.
        ac = cabs(pixel)                ; Absolute value of pixel (precalc).
        il2 = 1/log(2.0)                ; Inverse log 2 (precalc).
        lp = log(log(imag(p3)))         ; log(log bailout) (precalc).
        f = -1                          ; No fractional iteration yet.
        
        z = pixel, c = pixel:           ; Mandelbrot initialization.
        az2 = |z|                       ; Save absolute value of first term.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        lowbound = abs(az2 - ac)        ; Calculate lower bound for sum.
        sum = sum + (cabs(z) - lowbound) / (az2+ac - lowbound)
                                        ; Ratio between bounds.
        
        done = done + 1                 ; Done one more iteration.
        IF (az2 > imag(p3))             ; Point exceeds bailout.
          IF (f < 0)                    ; First time; let it go again.
            f = il2*lp - il2*log(log(cabs(z))) + 2; Fractional iteration.
            oldsum = sum / done         ; Save the average ratio so far.
          ELSE                          ; Second time past bailout.
            sum = sum / done            ; Average ratio.
            f = oldsum + (sum-oldsum) * (f-1) ; Interpolate sum.
            z = f * real(p3)            ; Apply color scale.
            z = z - 255*trunc(z/real(255)) ; Wrap at 255.
            z = z - done - 5            ; Return value.
            done = -1                   ; Set flag to force an exit.
          ENDIF
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-MndZ-Triangl-I {; outside = real: triangle inequality average
        ; original idea and formula from L. Kerry Mitchell
        ; modified for total continuity by dmj

        IF (real(p2) == 0 && imag(p2) == 0) ; Invalid value for exponent.
          p2 = 3                        ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        sum = 0                         ; Running total.
        done = 1                        ; Iteration counter.
        ac = cabs(pixel)                ; Absolute value of pixel (precalc).
        il2 = 1/log(p2)                 ; Inverse log 2 (precalc).
        lp = log(log(imag(p3)))         ; log(log bailout) (precalc).
        f = -1                          ; No fractional iteration yet.
        
        z = pixel, c = pixel:           ; Mandelbrot initialization.
        z = z^p2 + c                    ; Mandelbrot calculation.

        az2 = cabs(z-c)                 ; Save absolute value of first term.
        lowbound = abs(az2 - ac)        ; Calculate lower bound for sum.
        sum = sum + (cabs(z) - lowbound) / (az2+ac - lowbound)
                                        ; Ratio between bounds.
        
        done = done + 1                 ; Done one more iteration.
        IF (az2 > imag(p3) || done > maxit-2)   ; Point exceeds bailout.
          IF (f < 0)                    ; First time; let it go again.
            f = il2*lp - il2*log(log(cabs(z))) + 10; Fractional iteration.
            oldsum = sum / done         ; Save the average ratio so far.
          ELSE                          ; Second time past bailout.
            sum = sum / done            ; Average ratio.
            f = oldsum + (sum-oldsum) * (f-9) ; Interpolate sum.
            z = f * real(p3)            ; Apply color scale.
            z = z - 255*trunc(z/real(255)) ; Wrap at 255.
            z = z - done - 5            ; Return value.
            done = -1                   ; Set flag to force an exit.
          ENDIF
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: 98msg.frm
}


dmj-MndZ-Triangle {; outside = real: triangle inequality average
        ; original idea and formula from L. Kerry Mitchell
        ; modified for total continuity by dmj

        IF (real(p2) == 0 && imag(p2) == 0) ; Invalid value for exponent.
          p2 = 3                        ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        sum = 0                         ; Running total.
        done = 1                        ; Iteration counter.
        ac = cabs(pixel)                ; Absolute value of pixel (precalc).
        il2 = 1/log(p2)                 ; Inverse log 2 (precalc).
        lp = log(log(imag(p3)))         ; log(log bailout) (precalc).
        f = -1                          ; No fractional iteration yet.
        
        z = pixel, c = pixel:           ; Mandelbrot initialization.
        z = z^p2 + c                    ; Mandelbrot calculation.

        az2 = cabs(z-c)                 ; Save absolute value of first term.
        lowbound = abs(az2 - ac)        ; Calculate lower bound for sum.
        sum = sum + (cabs(z) - lowbound) / (az2+ac - lowbound)
                                        ; Ratio between bounds.
        
        done = done + 1                 ; Done one more iteration.
        IF (az2 > imag(p3))             ; Point exceeds bailout.
          IF (f < 0)                    ; First time; let it go again.
            f = il2*lp - il2*log(log(cabs(z))) + 10; Fractional iteration.
            oldsum = sum / done         ; Save the average ratio so far.
          ELSE                          ; Second time past bailout.
            sum = sum / done            ; Average ratio.
            f = oldsum + (sum-oldsum) * (f-9) ; Interpolate sum.
            z = f * real(p3)            ; Apply color scale.
            z = z - 255*trunc(z/real(255)) ; Wrap at 255.
            z = z - done - 5            ; Return value.
            done = -1                   ; Set flag to force an exit.
          ENDIF
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: 98msg.frm
}


dmj-Nova-Cir-Ang { ; outside = decomp: angle of closest z[n] to ring at p1
        ; This is the angle relative to p1.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs(cabs(z2) - imag(p3))    ; Compute ring distance.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < 0.0000001)       ; Point exceeds bailout.
          z = point - p1                ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Cir-Ang-I { ; outside = decomp: angle of closest z[n] to ring at p1
        ; This is the angle relative to p1.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs(cabs(z2) - imag(p3))    ; Compute ring distance.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < 0.0000001 || done >= maxit) ; Point bailout / inside.
          z = point - p1                ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Cir-Dec { ; outside = decomp: angle of closest z[n] to ring at p1
        ; This is the angle relative to the origin.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs(cabs(z2) - imag(p3))    ; Compute ring distance.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < 0.0000001)       ; Point exceeds bailout.
          z = point                     ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Cir-Dec-I { ; outside = decomp: angle of closest z[n] to ring at p1
        ; This is the angle relative to the origin.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs(cabs(z2) - imag(p3))    ; Compute ring distance.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < 0.0000001 || done >= maxit) ; Point bailout / inside.
          z = point                     ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Cir-Dst { ; outside = real: closest z[n] to ring at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs(cabs(z2) - imag(p3))    ; Compute ring distance.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < 0.0000001)       ; Point exceeds bailout.
          z = closest * real(p3)        ; Apply color scale.
          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done                  ; Return value.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Cir-Dst-I { ; outside = real: closest z[n] to ring at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs(cabs(z2) - imag(p3))    ; Compute ring distance.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < 0.0000001 || done >= maxit) ; Point bailout / inside.
          z = closest * real(p3)        ; Apply color scale.
          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done                  ; Return value.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Cir-Itr { ; outside = real: n of closest z[n] to ring at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs(cabs(z2) - imag(p3))    ; Compute ring distance.
        IF (d < closest)                ; Closer than previous value.
          point = done                  ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < 0.0000001)       ; Point exceeds bailout.
          z = point - done              ; Return iteration of closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Cir-Itr-I { ; outside = real: n of closest z[n] to ring at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs(cabs(z2) - imag(p3))    ; Compute ring distance.
        IF (d < closest)                ; Closer than previous value.
          point = done                  ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < 0.0000001 || done >= maxit) ; Point bailout / inside.
          z = point - done              ; Return iteration of closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Cr2-Ang { ; outside = decomp: angle of closest z[n] to ring at p1
        ; This is the angle relative to p1.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        radius = sqr(imag(p3))          ; Calculate radius squared.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs((|z2|) - radius)        ; Compute ring distance squared.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < 0.0000001)       ; Point exceeds bailout.
          z = point - p1                ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Cr2-Ang-I { ; outside = decomp: angle of closest z[n] to ring at p1
        ; This is the angle relative to p1.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        radius = sqr(imag(p3))          ; Calculate radius squared.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs((|z2|) - radius)        ; Compute ring distance squared.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < 0.0000001 || done >= maxit) ; Point bailout / inside.
          z = point - p1                ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Cr2-Dec { ; outside = decomp: angle of closest z[n] to ring at p1
        ; This is the angle relative to the origin.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        radius = sqr(imag(p3))          ; Calculate radius squared.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs((|z2|) - radius)        ; Compute ring distance squared.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < 0.0000001)       ; Point exceeds bailout.
          z = point                     ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Cr2-Dec-I { ; outside = decomp: angle of closest z[n] to ring at p1
        ; This is the angle relative to the origin.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        radius = sqr(imag(p3))          ; Calculate radius squared.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs((|z2|) - radius)        ; Compute ring distance squared.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < 0.0000001 || done >= maxit) ; Point bailout / inside.
          z = point                     ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Cr2-Dst { ; outside = real: closest z[n] to ring at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        radius = sqr(imag(p3))          ; Calculate radius squared.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs((|z2|) - radius)        ; Compute ring distance squared.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < 0.0000001)       ; Point exceeds bailout.
          z = closest * real(p3)        ; Apply color scale.
          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done                  ; Return value.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Cr2-Dst-I { ; outside = real: closest z[n] to ring at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        radius = sqr(imag(p3))          ; Calculate radius squared.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs((|z2|) - radius)        ; Compute ring distance squared.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < 0.0000001 || done >= maxit) ; Point bailout / inside.
          z = closest * real(p3)        ; Apply color scale.
          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done                  ; Return value.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Cr2-Itr { ; outside = real: n of closest z[n] to ring at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        radius = sqr(imag(p3))          ; Calculate radius squared.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs((|z2|) - radius)        ; Compute ring distance squared.
        IF (d < closest)                ; Closer than previous value.
          point = done                  ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < 0.0000001)       ; Point exceeds bailout.
          z = point - done              ; Return iteration of closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Cr2-Itr-I { ; outside = real: n of closest z[n] to ring at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)         ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        radius = sqr(imag(p3))          ; Calculate radius squared.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs((|z2|) - radius)        ; Compute ring distance squared.
        IF (d < closest)                ; Closer than previous value.
          point = done                  ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < 0.0000001 || done >= maxit) ; Point bailout / inside.
          z = point - done              ; Return iteration of closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Hyp-Ang { ; outside = decomp: angle of closest z[n] to hyperbola at p1
        ; This is the angle relative to p1.

        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2) * real(z2))    ; Compute hyperbolic distance.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3))        ; Point exceeds bailout.
          z = point - p1                ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Hyp-Ang-I { ; outside = decomp: angle of closest z[n] to hyperbola at p1
        ; This is the angle relative to p1.

        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2) * real(z2))    ; Compute hyperbolic distance.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3) || done >= maxit)  ; Point exceeds bailout / inside.
          z = point - p1                ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Hyp-Dec { ; outside = decomp: angle of closest z[n] to hyperbola at p1
        ; This is the angle relative to the origin.

        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2) * real(z2))    ; Compute hyperbolic distance.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3))        ; Point exceeds bailout.
          z = point                     ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Hyp-Dec-I { ; outside = decomp: angle of closest z[n] to hyperbola at p1
        ; This is the angle relative to the origin.

        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2) * real(z2))    ; Compute hyperbolic distance.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3) || done >= maxit)  ; Point exceeds bailout / inside.
          z = point                     ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Hyp-Dst { ; outside = real: closest z[n] to hyperbola at p1

        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2) * real(z2))    ; Compute hyperbolic distance.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3))        ; Point exceeds bailout.
          z = closest * real(p3)        ; Apply color scale.
          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done                  ; Return value.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Hyp-Dst-I { ; outside = real: closest z[n] to hyperbola at p1

        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2) * real(z2))    ; Compute hyperbolic distance.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3) || done >= maxit)  ; Point exceeds bailout / inside.
          z = closest * real(p3)        ; Apply color scale.
          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done                  ; Return value.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Hyp-Itr { ; outside = real: n of closest z[n] to hyperbola at p1

        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2) * real(z2))    ; Compute hyperbolic distance.
        IF (d < closest)                ; Closer than previous value.
          point = done                  ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3))        ; Point exceeds bailout.
          z = point - done              ; Return iteration of closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Hyp-Itr-I { ; outside = real: n of closest z[n] to hyperbola at p1

        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2) * real(z2))    ; Compute hyperbolic distance.
        IF (d < closest)                ; Closer than previous value.
          point = done                  ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3) || done >= maxit)  ; Point exceeds bailout / inside.
          z = point - done              ; Return iteration of closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Pls-Ang { ; outside = decomp: angle of closest z[n] to cross at p1
        ; This is the angle relative to p1.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 < d)                     ; Second distance is closer.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3))        ; Point exceeds bailout.
          z = point - p1                ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Pls-Ang-I { ; outside = decomp: angle of closest z[n] to cross at p1
        ; This is the angle relative to p1.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 < d)                     ; Second distance is closer.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3) || done >= maxit) ; Point bailout / inside.
          z = point - p1                ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Pls-Dec { ; outside = decomp: angle of closest z[n] to cross at p1
        ; This is the angle relative to the origin.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 < d)                     ; Second distance is closer.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3))        ; Point exceeds bailout.
          z = point                     ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Pls-Dec-I { ; outside = decomp: angle of closest z[n] to cross at p1
        ; This is the angle relative to the origin.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 < d)                     ; Second distance is closer.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3) || done >= maxit) ; Point bailout / inside.
          z = point                     ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Pls-Dst { ; outside = real: closest z[n] to cross at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 < d)                     ; Second distance is closer.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3))        ; Point exceeds bailout.
          z = closest * real(p3)        ; Apply color scale.
          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done                  ; Return value.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Pls-Dst-I { ; outside = real: closest z[n] to cross at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 < d)                     ; Second distance is closer.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3) || done >= maxit) ; Point bailout / inside.
          z = closest * real(p3)        ; Apply color scale.
          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done                  ; Return value.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Pls-Itr { ; outside = real: n of closest z[n] to cross at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 < d)                     ; Second distance is closer.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = done                  ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3))        ; Point exceeds bailout.
          z = point - done              ; Return iteration of closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Pls-Itr-I { ; outside = real: n of closest z[n] to cross at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 < d)                     ; Second distance is closer.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = done                  ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3) || done >= maxit) ; Point bailout / inside.
          z = point - done              ; Return iteration of closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Pnt-Ang { ; outside = decomp: angle of closest z[n] to point at p1
        ; outside = atan will give a slightly different coloring.
        ; This is the angle relative to p1.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + imag(p3)            ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.

        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = |z2|                        ; Compute distance to p1 (squared).
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3))        ; Point exceeds bailout.
          z = point - p1                ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Pnt-Ang-I { ; outside = decomp: angle of closest z[n] to point at p1
        ; outside = atan will give a slightly different coloring.
        ; This is the angle relative to p1.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + imag(p3)            ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.

        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = |z2|                        ; Compute distance to p1 (squared).
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3) || done >= maxit)  ; Point exceeds bailout / inside.
          z = point - p1                ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Pnt-Dec { ; outside = decomp: angle of closest z[n] to point at p1
        ; outside = atan will give a slightly different coloring.
        ; This is the angle relative to the origin.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + imag(p3)            ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.

        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = |z2|                        ; Compute distance to p1 (squared).
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3))        ; Point exceeds bailout.
          z = point                     ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Pnt-Dec-I { ; outside = decomp: angle of closest z[n] to point at p1
        ; outside = atan will give a slightly different coloring.
        ; This is the angle relative to the origin.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + imag(p3)            ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.

        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = |z2|                        ; Compute distance to p1 (squared).
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3) || done >= maxit)  ; Point exceeds bailout / inside.
          z = point                     ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Pnt-Dst { ; outside = real: closest distance z[n] to point at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + imag(p3)            ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.

        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = |z2|                        ; Compute distance to p1 (squared).
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3))        ; Point exceeds bailout.
          z = sqrt(closest) * real(p3)  ; Apply color scale.
          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done                  ; Return value.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Pnt-Dst-I { ; outside = real: closest distance z[n] to point at p1
        ; With p1 = (0,0), this is the same as the bof60 inside coloring
        ; option (except it works outside).  It is also similar to Paul
        ; Carlson's "Bubbles" type.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + imag(p3)            ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.

        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = |z2|                        ; Compute distance to p1 (squared).
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3) || done >= maxit)  ; Point exceeds bailout / inside.
          z = sqrt(closest) * real(p3)  ; Apply color scale.
          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done                  ; Return value.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Pnt-Itr { ; outside = real: n of closest z[n] to point at p1
        ; With p1 = (0,0), this is the same as the bof61 inside coloring
        ; option (except it works outside).

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + imag(p3)            ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.

        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = |z2|                        ; Compute distance to p1 (squared).
        IF (d < closest)                ; Closer than previous value.
          point = done                  ; Save the iteration number.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3))        ; Point exceeds bailout.
          z = point - done              ; Return iteration of closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Pnt-Itr-I { ; outside = real: n of closest z[n] to point at p1
        ; With p1 = (0,0), this is the same as the bof61 inside coloring
        ; option (except it works outside).

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + imag(p3)            ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.

        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = |z2|                        ; Compute distance to p1 (squared).
        IF (d < closest)                ; Closer than previous value.
          point = done                  ; Save the iteration number.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3) || done >= maxit)  ; Point exceeds bailout / inside.
          z = point - done              ; Return iteration of closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Rct-Ang { ; outside = decomp: angle of closest z[n] to rectangle at p1
        ; This is the angle relative to p1.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 > d)                     ; Second distance is farther.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3))        ; Point exceeds bailout.
          z = point - p1                ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Rct-Ang-I { ; outside = decomp: angle of closest z[n] to rectangle at p1
        ; This is the angle relative to p1.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 > d)                     ; Second distance is farther.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3) || done >= maxit) ; Point bailout / inside.
          z = point - p1                ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Rct-Dec { ; outside = decomp: angle of closest z[n] to rectangle at p1
        ; This is the angle relative to the origin.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 > d)                     ; Second distance is farther.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3))        ; Point exceeds bailout.
          z = point                     ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Rct-Dec-I { ; outside = decomp: angle of closest z[n] to rectangle at p1
        ; This is the angle relative to the origin.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 > d)                     ; Second distance is farther.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3) || done >= maxit) ; Point bailout / inside.
          z = point                     ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Rct-Dst { ; outside = real: closest z[n] to rectangle at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 > d)                     ; Second distance is farther.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3))        ; Point exceeds bailout.
          z = closest * real(p3)        ; Apply color scale.
          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done                  ; Return value.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Rct-Dst-I { ; outside = real: closest z[n] to rectangle at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 > d)                     ; Second distance is farther.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3) || done >= maxit) ; Point bailout / inside.
          z = closest * real(p3)        ; Apply color scale.
          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done                  ; Return value.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Rct-Itr { ; outside = real: n of closest z[n] to rectangle at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 > d)                     ; Second distance is farther.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = done                  ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3))        ; Point exceeds bailout.
          z = point - done              ; Return iteration of closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Rct-Itr-I { ; outside = real: n of closest z[n] to rectangle at p1

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2))               ; First distance.
        d2 = abs(real(z2)*imag(p2))     ; Second distance.
        IF (d2 > d)                     ; Second distance is farther.
          d = d2                        ; Use it instead.
        ENDIF
        IF (d < closest)                ; Closer than previous value.
          point = done                  ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3) || done >= maxit) ; Point bailout / inside.
          z = point - done              ; Return iteration of closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Spi-Ang { ; outside = decomp: angle of closest z[n] to spiral at p1
        ; This is the angle relative to p1.

        IF (real(p2) == 0)              ; Invalid value for tightness.
          p2 = 1 + flip(imag(p2))       ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = z - p1                     ; Offset to p1.
        d = 1/(cabs(z2)) * real(p2)     ; Figure distance (inverted).
        r = (0,1) ^ d                   ; Compute rotation vector.
        z2 = z2 * r                     ; Rotate.
        d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3) && done > imag(p2)) ; Point exceeds bailout.
          z = point - p1                ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Spi-Ang-I { ; outside = decomp: angle of closest z[n] to spiral at p1
        ; This is the angle relative to p1.

        IF (real(p2) == 0)              ; Invalid value for tightness.
          p2 = 1 + flip(imag(p2))       ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = z - p1                     ; Offset to p1.
        d = 1/(cabs(z2)) * real(p2)     ; Figure distance (inverted).
        r = (0,1) ^ d                   ; Compute rotation vector.
        z2 = z2 * r                     ; Rotate.
        d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF ((|zold-z| < imag(p3) && done > imag(p2)) || done >= maxit) ; Out!
          z = point - p1                ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Spi-Dec { ; outside = decomp: angle of closest z[n] to spiral at p1
        ; This is the angle relative to the origin.

        IF (real(p2) == 0)              ; Invalid value for tightness.
          p2 = 1 + flip(imag(p2))       ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = z - p1                     ; Offset to p1.
        d = 1/(cabs(z2)) * real(p2)     ; Figure distance (inverted).
        r = (0,1) ^ d                   ; Compute rotation vector.
        z2 = z2 * r                     ; Rotate.
        d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3) && done > imag(p2)) ; Point exceeds bailout.
          z = point                     ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Spi-Dec-I { ; outside = decomp: angle of closest z[n] to spiral at p1
        ; This is the angle relative to the origin.

        IF (real(p2) == 0)              ; Invalid value for tightness.
          p2 = 1 + flip(imag(p2))       ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = z - p1                     ; Offset to p1.
        d = 1/(cabs(z2)) * real(p2)     ; Figure distance (inverted).
        r = (0,1) ^ d                   ; Compute rotation vector.
        z2 = z2 * r                     ; Rotate.
        d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF ((|zold-z| < imag(p3) && done > imag(p2)) || done >= maxit) ; Out!
          z = point                     ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Spi-Dst { ; outside = real: closest z[n] to spiral at p1

        IF (real(p2) == 0)              ; Invalid value for tightness.
          p2 = 1 + flip(imag(p2))       ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = z - p1                     ; Offset to p1.
        d = 1/(cabs(z2)) * real(p2)     ; Figure distance (inverted).
        r = (0,1) ^ d                   ; Compute rotation vector.
        z2 = z2 * r                     ; Rotate.
        d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3) && done > imag(p2)) ; Point exceeds bailout.
          z = closest * real(p3)        ; Apply color scale.
          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done                  ; Return value.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Spi-Dst-I { ; outside = real: closest z[n] to spiral at p1

        IF (real(p2) == 0)              ; Invalid value for tightness.
          p2 = 1 + flip(imag(p2))       ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = z - p1                     ; Offset to p1.
        d = 1/(cabs(z2)) * real(p2)     ; Figure distance (inverted).
        r = (0,1) ^ d                   ; Compute rotation vector.
        z2 = z2 * r                     ; Rotate.
        d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF ((|zold-z| < imag(p3) && done > imag(p2)) || done >= maxit) ; Out!
          z = closest * real(p3)        ; Apply color scale.
          z = z - 255*trunc(z/real(255)) ; Wrap at 255.
          z = z - done                  ; Return value.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Spi-Itr { ; outside = real: n of closest z[n] to spiral at p1

        IF (real(p2) == 0)              ; Invalid value for tightness.
          p2 = 1 + flip(imag(p2))       ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = z - p1                     ; Offset to p1.
        d = 1/(cabs(z2)) * real(p2)     ; Figure distance (inverted).
        r = (0,1) ^ d                   ; Compute rotation vector.
        z2 = z2 * r                     ; Rotate.
        d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
        IF (d < closest)                ; Closer than previous value.
          point = done                  ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3) && done > imag(p2)) ; Point exceeds bailout.
          z = point - done              ; Return iteration of closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Nova-Spi-Itr-I { ; outside = real: n of closest z[n] to spiral at p1

        IF (real(p2) == 0)              ; Invalid value for tightness.
          p2 = 1 + flip(imag(p2))       ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        
        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = z - p1                     ; Offset to p1.
        d = 1/(cabs(z2)) * real(p2)     ; Figure distance (inverted).
        r = (0,1) ^ d                   ; Compute rotation vector.
        z2 = z2 * r                     ; Rotate.
        d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
        IF (d < closest)                ; Closer than previous value.
          point = done                  ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF ((|zold-z| < imag(p3) && done > imag(p2)) || done >= maxit) ; Out!
          z = point - done              ; Return iteration of closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}


dmj-Phnx-Triangle {; outside = real: triangle inequality average
        ; original idea and formula from L. Kerry Mitchell
        ; modified for total continuity by dmj

        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        sum = 0                         ; Running total.
        done = 1                        ; Iteration counter.
        ac = cabs(real(p2))             ; Absolute value of pixel (precalc).
        il2 = 1/log(2.0)                ; Inverse log 2 (precalc).
        lp = log(log(imag(p3)))         ; log(log bailout) (precalc).
        f = -1                          ; No fractional iteration yet.
        
        z = pixel, c = real(p2)         ; Phoenix initialization.
        y = 0, m = imag(p2):
        znew = sqr(z) + c + m*y         ; Phoenix calculation.
        y = z
        z = znew

        az2 = cabs(znew-c)
        lowbound = abs(az2 - ac)        ; Calculate lower bound for sum.
        sum = sum + (cabs(z) - lowbound) / (az2+ac - lowbound)
                                        ; Ratio between bounds.
        
        done = done + 1                 ; Done one more iteration.
        IF (az2 > imag(p3))             ; Point exceeds bailout.
          IF (f < 0)                    ; First time; let it go again.
            f = il2*lp - il2*log(log(cabs(z))) + 2; Fractional iteration.
            oldsum = sum / done         ; Save the average ratio so far.
          ELSE                          ; Second time past bailout.
            sum = sum / done            ; Average ratio.
            f = oldsum + (sum-oldsum) * (f-1) ; Interpolate sum.
            z = f * real(p3)            ; Apply color scale.
            z = z - 255*trunc(z/real(255)) ; Wrap at 255.
            z = z - done - 5            ; Return value.
            done = -1                   ; Set flag to force an exit.
          ENDIF
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: 98msg.frm
}


Don't_do_that! {
  c = pixel :
  c = e^c
  z = fn1(c)
  |z| <= 16
  ;SOURCE: 96msg.frm
}


Doozy18 (yaxis) {; Bill Rossi
                 ; Edited for Fractint v. 20 by George Martin, 10/98
  z = pixel, c=fn1(z)/fn2(z):
  t=fn3(z)
  l=t/fn1(t)
  z=l
  z=z/fn4(c)/l+fn1(z)
  |z| <= 4
  ;SOURCE: brossi.frm
}


dots {
  z = c = pixel:
  z = z^c + c
  |z|<p1
  ;SOURCE: eli.frm
}


Doublefeed_newt {
   ; (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = c = pixel
  zt = z * z + c
  ct = c * c * c + z:
  z = (zt * zt - ct) / (2 * zt)
  |z| <= 4
  ;SOURCE: methods.frm
}


doublerot-xy-zw {; 1997 by Benno Schmid
                 ; after an idea from Jim Muth
                 ; re(p1)=rotation angle x->z
                 ; im(p1)=rotation angle y->w
                 ; p2,p3=4d-coordinates of fixed point
  g2r=0.0174532925199433
  z=cos(imag(p1)*g2r)*real(pixel)+cos(real(p1)*g2r)*flip(imag(pixel))+p2
  c=sin(imag(p1)*g2r)*real(pixel)+sin(real(p1)*g2r)*flip(imag(pixel))+p3:
  z=sqr(z)+c
  |z| <= 16
  ;SOURCE: 4d.frm
}


doublerot-xz-yw {; 1997 by Benno Schmid
                 ; after an idea from Jim Muth
                 ; re(p1)=rotation angle x->y
                 ; im(p1)=rotation angle z->w
                 ; p2,p3=4d-coordinates of fixed point
                 ; Replaced variable "e" with "ee" 5/6/99, G. Martin
  g2r=0.0174532925199433
  ee=exp(flip(real(p1)*g2r))
  f=exp(flip(imag(p1)*g2r))
  z=f*real(pixel)+p2
  c=ee*imag(pixel)+p3:
  z=sqr(z)+c
  |z| <= 16
  ;SOURCE: 4d.frm
}


DpSpaceProbeTwo (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98 
  z=p1, x=1:
  z=sqr(z)+pixel
  z=exp(z)+pixel
  z=cosxx(z)+pixel
  x=x+1
  |z|<=4 
  ;SOURCE: choice.frm
}


DpSpaceProbeTwoC (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSEIF (x<20)
    z=exp(z)+pixel
  ELSE
    z=cosxx(z)+pixel
  ENDIF
  x=x+1
  |z|<=4 
  ;SOURCE: choice.frm
}


DpSpaceProbeTwoC.1 (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSEIF (x<20)
    z=exp(z)+pixel
  ELSE
    z=cos(z)+pixel
  ENDIF
  x=x+1
  |z|<=4 
  ;SOURCE: choice.frm
}


DR_E {; (c) Jay Hill, 1998
      ; use outside=summ periodicity=0 float=y
  done = 1, z = 0, zc = 0, c = pixel
  z=z+253*(|8+4*c*(1+sqrt(-4*c-7))| <=1)
  IF (z>0) 
    done=-1      ; color is set for c in a component, skip iterations 
  ENDIF
  :              ; initialization.
  zc=sqr(zc) + c ; standard MSet iteration
  if (|zc| >= 4) ; Bailout at 4
    done=-1      ; Set flag to force an exit.
  endif
  done >= 0      ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}


Dragon (ORIGIN) {; Mark Peterson
  z = Pixel:
  z = sqr(z) + (-0.74543, 0.2)
  |z| <= 4
  ;SOURCE: fractint.frm
}


Dragon2  {
 z=pixel:
   z=3*z*(1-z)
   z<=4
  ;SOURCE: orman3.frm
}


Dragon8 (ORIGIN) {; Linda Allison
                  ; Edited for Fractint v. 20 by George Martin, 10/98
  z = Pixel
  power = p1/p2:
  z = (fn1(z))/p1 - (fn2(z))/p2
  |z| <= power
  ;SOURCE: allison2.frm
}


dragon_J {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=0.82407, b0=0.28148, c0=-0.21235, d0=0.86420
  a1=0.08827, b1=0.52099, c1=-0.46389, d1=-0.37778
  al0=0.77193, k0=1.59554, l0=0.49085
  al1=0.20833, k1=4.51450, l1=-1.07895
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


dragon_M {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=0.82407, b0=0.28148, c0=-0.21235, d0=0.86420
  a1=0.08827, b1=0.52099, c1=-0.46389, d1=-0.37778
  al0=0.77193, k0=1.59554, l0=0.49085
  al1=0.20833, k1=4.51450, l1=-1.07895
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


Dragon_Orman {
 z=pixel:
 z=p1*z*(1-z)
 z<=4
 ;SOURCE: orman3.frm
}


Dragonbat (XAXIS) {; Dewey Odhner
  c = Pixel, z = Sqr(Pixel)+Pixel:
  z = Sqr(Sqr(z)+c)-c
  c = -c
  LastSqr <= 4
  ;SOURCE: dewey.frm
}


Dragonbat2 (XAXIS) {; Dewey Odhner
  c = Pixel, z = Sqr(Pixel)-Pixel:
  z = Sqr(Sqr(z)+c)+c
  c = -c
  LastSqr <= 4
  ;SOURCE: dragbat.frm
}


Dragonbat3 {; Dewey Odhner
  c = Pixel, z = Sqr(Pixel)+Pixel:
  z = Sqr(Sqr(z)+c)+flip(c)
  c = flip(c)
  LastSqr <= 4
  ;SOURCE: 97msg.frm
}


DrChaosbrot {; Michael Theroux [71673,2767]
   ;fix and generalization by Ron Barnett [70153,1233] 
   ;more phi
   ;try p1 = 2.236067977 for the golden mean
  z = c = pixel:
  z = sqr(z) + (((p1 + 1)/2)+c)
  |z| <= 4
  ;SOURCE: fract001.frm
}


DrChaosbrot1 (xaxis) {; more phi
  z = c = pixel:
  z = sqr(z) + (((sqrt 5 + 1)/2)+c)
  |z| <= 4
  ;SOURCE: drcha.frm
}


DrChaosbrot2 (xyaxis) {; more phi
  z = c = pixel:
  z = sqr(z) + (((sqrt 5 + 1)/2)+c)
  |z| <= 4
  ;SOURCE: drcha.frm
}


ds2gravistalks {; adapted from Paul W. Carlson
                ; original gravijul by Mark Christenson
                ; kathy roth 1998
                ; David Shanholtzer 1998
     ; p1       = Julia set coordinates
     ; real(p2) = a factor controlling the size of the stalks
     ; imag(p2) = iterations to skip
     ; real(p3) = number of color ranges
     ; imag(p3) = number of colors in a range
     ;
  w = pixel
  c = p1
  z = bailout = iter = range_num = 0
  stalk_width = real(p2)
  max_wm = imag(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  index_factor = (colors_in_range - 1) / stalk_width
  :
  q=fn1(w)
  w=fn3(1/fn2(q*q)), wr = real(w), awr = sqrt(wr)
  w = w - wr + awr
     ;
  IF (abs(real(w)) <= abs(imag(w)))
    dist = abs(real(w))
  ELSE
    dist = abs(imag(w))
  ENDIF
  IF (dist < stalk_width && |w|<max_wm && iter>1)
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


ducks (xaxis) {  
  z=pixel, t=1+pixel:   
  z=sqr(z)+t             
  |z|<=4
  ;SOURCE: fixrch.frm
}


duomo {; Giuseppe Zito
  z = pixel
  c0 = -0.002837
  c8 = 0.081632
  d0 = -0.176633
  d1 = -0.628706
  d4 = 0.962259
  : 
  x = real(z), y = imag(z)
  s0 =c0
  s0 = s0 /y
  s0 = s0 *c8
  s0 = s0 -y
  newx = s0 
  s0 =d0
  s1 =d1
  s0 = s0 *s1
  s0 = s0 /x
  s0 = s0 *d4
  s0 = s0 -x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}

