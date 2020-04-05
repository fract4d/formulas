

j+c2821 {; Sylvie Gallet frm. [101324,3444],1997
         ; Modified for IF..ELSE logic by Sylvie Gallet, March 1997
   z = real(pixel)/real(p1) + flip (imag(pixel)/imag(p1)) - p2
   pixinv = 0.1/pixel, p9 = 0.9*pixinv
   c = (0.3459989467084647,0.0835267537688434)
   b4 = pixel - flip(pixinv) - conj(0.01*pixinv)
   b5 = pixel - conj(pixinv)
   odev = iter = wait = 0, continue = 1 :
   IF (iter < 600)
      IF (wait == 0)
         IF (|z| < 16)
            z = z*z + c, odev = odev == 0
         ELSE
            wait = 1
         ENDIF
      ENDIF
   ELSEIF (iter == 600)
      IF (wait == 0)
         odev = odev == 0
      ENDIF
      IF (odev)
         c = b4 - p9, z = z0 = b5, mz = |z|
      ELSE
         c = -b4 - p9, z = z0 = -b5, mz = |z|
      ENDIF
      continue = mz < 16
   ELSE
      IF (iter == 800)
         IF (odev)
            c = (z0^1.2)*1.5 - p9
         ELSE
            c = (z0^1.2)*(-1.5) - p9
         ENDIF
      ELSEIF (iter == 900)
         c = conj(z0)*2.25 - p9
      ELSEIF (iter == 1000)
         c = flip(z0)*3.3375 - p9
      ELSEIF (iter == 1150)
         c = flip(z0)*5.0625 - p9
      ENDIF
      z = mz*0.2 + z*z + c, mz = |z|, continue = mz < 16
   ENDIF
   iter = iter + 1
   continue
  ;SOURCE: ifs196.frm
}


J-decomp {; Binary decomp (c) Jay Hill 1997
  done = 1               ; Iteration flag.
  z = 0, c = pixel:      ; Mandelbrot initialization.
  z = sqr(z) + c         ; Mandelbrot calculation.
  IF (|z| >= 4)          ; Point exceeds bailout.
    done = -1            ; Set flag to force an exit.
    w=1                  ; Color 1 on one side
    IF (real(z)<0)
      w=2                ; Color 2 on the other
    ENDIF
    z=w
  ENDIF
  done >= 0              ; Continue if the flag >=0.
  ;SOURCE: decomp.frm
}


J-decomp1 {; Binary decomp (c) Jay Hill 1997
           ; modified by dmj 1998
           ; use outside=real
  done = 1, iter = 0     ; Iteration flag.
  weight = 1, w = 0, b = 2^4096
  dummy=maxit            ; forces float=yes
  z = 0, c = pixel:      ; Mandelbrot initialization.
  z = sqr(z) + c         ; Mandelbrot calculation.
  m = |z|
  weight = weight * 0.5
  IF (m >= 1048576)      ; Point exceeds threshold.
    IF (imag(z) > 0)
      w = w + weight     ; Color 2 on the other
    ENDIF
    IF (m >= b)          ; Point exceeds bailout.
      z = w*1024 - iter - 8 ; fixed color scale
      done = -1
    ENDIF
  ENDIF
  iter = iter + 1
  done >= 0              ; Continue if the flag >=0.
  ;SOURCE: decomp.frm
}


J-decomp15 {; 15-ary decomp (c) Jay Hill 1997
  done = 1               ; Iteration flag.
  iter = 0               ; Sylvie Gallet's suggestion
  z = 0, c = pixel:      ; Mandelbrot initialization.
  z = sqr(z) + c         ; Mandelbrot calculation.
  z = sqr(z) + c         ; Mandelbrot calculation.
  z = sqr(z) + c         ; Mandelbrot calculation.
  z = sqr(z) + c         ; Mandelbrot calculation.
  IF (|z| >= 100)        ; Point exceeds bailout.
    done = -1            ; Set flag to force an exit.
    y=.5*imag(log(z))/pi
    IF (y<0) 
      y=y+1 
    ENDIF
    w=15*y
    z=w - iter - 8       ; Sylvie Gallet's suggestion
  ENDIF
  iter = iter + 1        ; Sylvie Gallet's suggestion
  done >= 0              ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}


J-decomp3 {; Trinary decomp (c) Jay Hill 1997
           ; One boundary leads to -.75
           ; Another boundary leads to +i.
  done = 1               ; Iteration flag.
  iter = 0               ; Sylvie Gallet's suggestion
  z = 0, c = pixel:      ; Mandelbrot initialization.
  z = sqr(z) + c         ; Mandelbrot calculation.
  z = sqr(z) + c         ; Mandelbrot calculation.
  IF (|z| >= 100)        ; Point exceeds bailout.
    done = -1            ; Set flag to force an exit.
    y=.5*imag(log(z))/pi
    IF (y<0) 
      y=y+1 
    ENDIF
    w=3*y
    z=w - iter - 8       ; Sylvie Gallet's suggestion
  ENDIF
  iter = iter + 1        ; Sylvie Gallet's suggestion
  done >= 0              ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}


J-decomp31 {; 31-ary decomp (c) Jay Hill 1997
  done = 1               ; Iteration flag.
  iter = 0               ; Sylvie Gallet's suggestion
  z = 0, c = pixel:      ; Mandelbrot initialization.
  z = sqr(z) + c         ; Mandelbrot calculation.
  z = sqr(z) + c         ; Mandelbrot calculation.
  z = sqr(z) + c         ; Mandelbrot calculation.
  z = sqr(z) + c         ; Mandelbrot calculation.
  z = sqr(z) + c         ; Mandelbrot calculation.
  IF (|z| >= 10000)      ; Point exceeds bailout.
    done = -1            ; Set flag to force an exit.
    y=.5*imag(log(z))/pi
    IF (y<0) 
      y=y+1 
    ENDIF
    w=31*y
    z=w - iter - 8       ; Sylvie Gallet's suggestion
  ENDIF
  iter = iter + 1        ; Sylvie Gallet's suggestion
  done >= 0              ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}


J-decomp63 {; 63-ary decomp (c) Jay Hill 1997
  done = 1               ; Iteration flag.
  iter = 0               ; Sylvie Gallet's suggestion
  z = 0, c = pixel:      ; Mandelbrot initialization.
  z = sqr(z) + c         ; Mandelbrot calculation.
  z = sqr(z) + c         ; Mandelbrot calculation.
  z = sqr(z) + c         ; Mandelbrot calculation.
  z = sqr(z) + c         ; Mandelbrot calculation.
  z = sqr(z) + c         ; Mandelbrot calculation.
  z = sqr(z) + c         ; Mandelbrot calculation.
  IF (|z| >= 10000)      ; Point exceeds bailout.
    done = -1            ; Set flag to force an exit.
    y=.5*imag(log(z))/pi
    IF (y<0) 
      y=y+1 
    ENDIF
    w=63*y
    z=w - iter - 8       ; Sylvie Gallet's suggestion
  ENDIF
  iter = iter + 1        ; Sylvie Gallet's suggestion
  done >= 0              ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}


J-decomp7 {; 7-ary decomp (c) Jay Hill 1997
  done = 1               ; Iteration flag.
  iter = 0               ; Sylvie Gallet's suggestion
  z = 0, c = pixel:      ; Mandelbrot initialization.
  z = sqr(z) + c         ; Mandelbrot calculation.
  z = sqr(z) + c         ; Mandelbrot calculation.
  z = sqr(z) + c         ; Mandelbrot calculation.
  IF (|z| >= 100)        ; Point exceeds bailout.
    done = -1            ; Set flag to force an exit.
    y=.5*imag(log(z))/pi
    IF (y<0) 
      y=y+1 
    ENDIF
    w=7*y
    z=w - iter - 8       ; Sylvie Gallet's suggestion
  ENDIF
  iter = iter + 1        ; Sylvie Gallet's suggestion
  done >= 0              ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}


J-decompx {; Binary decomp (c) Jay Hill 1997
           ; Modified by Sylvie Gallet
  done = 1, iter = 0     ; Iteration flag.
  z = 0, c = pixel:      ; Mandelbrot initialization.
  z = sqr(z) + c         ; Mandelbrot calculation.
  IF (|z| >= 1048576)    ; Point exceeds bailout.
    done = -1            ; Set flag to force an exit.
    w=1                  ; Color 1 on one side
    IF(real(z)<0)
      w=2                ; Color 2 on the other
    ENDIF
    z = w - iter - 8
  ENDIF
  iter = iter + 1
  done >= 0              ; Continue if the flag >=0.
  ;SOURCE: decomp.frm
}


J-in-Jello {; Jay Hill, 1998
            ; use outside=summ periodicity=0 passes=1 inside=249
            ; p1=width of root finding
            ; p2 = shift of first midget
            ; p3 = scaling factor of first midget
  done = 1
  IF( whitesq)
    z = 0, zc = c = (p3*pixel+p2)
    s=|c|, t1=(256*s - 96)*s + 32*Real(c) 
    t2=16*s + 32*Real(c) + 16
              ; component tests
    B=sqrt(-4*c-7), t3=|8+4*c*(1-B)|, t4=|8+4*c*(1+B)| 
              ; set colors
    z=z + 249*(t1<=3) + 250*(t2<=1) + 251*(t3<=1) + 252*(t4<=1) 
    IF (z>0)  ; for periods 1, 2, 3
      done=-1 ; color is set, skip iterations
    ENDIF
  ELSE        ; not whitesq
    c = pixel, z = iter = 0
    range = 15, w = 7/8
    R=(-1)^(2/15), R2=sqr(R)
    root1 = 1, root2 = c^(1/15), root3 = root2*R
    root4 = root2*R2, root5 = root4*R, root6 = root4*R2
    root7 = root6*R, root8 = root6*R2, root9 = root8*R
    root10= root8*R2, root11= root10*R, root12= root10*R2
    root13= root12*R, root14= root12*R2, root15= root14*R
    root16= root14*R2
  ENDIF
  :
  IF (whitesq)
    zc=sqr(zc) + c ; standard MSet iteration
    IF (|zc| >= 4) ; Bailout at 4
      done=-1      ; Set flag to force an exit.
    ENDIF
  ELSE             ; not whitesq
    w14 = w^14
    deltaw=(((w - 1)*w14 - c)*w + c)/((16*w - 15)*w14 - c)
    w = w - deltaw
    IF (|deltaw| < p1)
      angle=abs(imag(log(deltaw)))
      range_num = (|w - root2| < p1)+\
        2*(|w - root3| < p1) + 3*(|w - root4| < p1)+\
        4*(|w - root5| < p1) + 5*(|w - root6| < p1)+\
        6*(|w - root7| < p1) + 7*(|w - root8| < p1)+\
        8*(|w - root9| < p1) + 9*(|w -root10| < p1)+\
       10*(|w -root10| < p1)+11*(|w -root12| < p1)+\
       12*(|w -root12| < p1)+13*(|w -root14| < p1)+\
       14*(|w -root14| < p1)+15*(|w -root16| < p1)
      done=-1 ; Set flag to force an exit.
      z = range*(angle/pi + range_num)-angle/pi + 1
    ENDIF
    iter = iter + 1
    z = z - iter
  ENDIF
  done >= 0 ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}


j1 {
   ; see also alx1 in _a.frm - a formula formerly named j1, changed
   ; to avoid duplication of name with this formula.
  z=pixel, c=p1:
  z=sqr(z)+c
  c=c+p2
  |z| <= 4
  ;SOURCE: explode.frm
}


J3_Maxi (XAXIS_NOIMAG) {; A Mix on the basis of z^3+c.
                        ; p1 is the bailout value,
                        ; p2 the constant
  z = pixel
  IF(p1==0)
    bailout=8
  ELSE
    bailout = |p1|
  ENDIF
  a = p2
  b = (-.5,.8660125403784) * p2
  c = (-.5,-.8660125403784) * p2:
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


J3_Mini (XAXIS_NOIMAG) {; A Mix on the basis of z^3+c.
                        ; |p1| is the bailout value, p2 the constant!
  z = pixel
  IF(p1==0)
    bailout=8
  ELSE
    bailout = |p1|
  ENDIF
  a = p2
  b = (-.5,.8660125403784) * p2
  c = (-.5,-.8660125403784) * p2:
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


J_Lagandre2 {
  c = pixel, z = P1:
  z = (3 * z*z - 1) / 2 + c
  |z| < 100
  ;SOURCE: tchebych.frm
}


J_Lagandre3 {
  c = pixel, z = P1:
  z = z * (5 * z*z - 3) / 2 + c
  |z| < 100
  ;SOURCE: tchebych.frm
}


J_Lagandre4 {
  c = pixel, z = P1:
  z = (z*z*(35 * z*z - 30) + 3) / 8 + c
  |z| < 100
  ;SOURCE: fractint.frm
}


J_Lagandre5 {
  c = pixel, z = P1:
  z = z* (z*z*(63 * z*z - 70) + 15 ) / 8 + c
  |z| < 100
  ;SOURCE: tchebych.frm
}


J_Lagandre6 {
  c = pixel, z = P1:
  z = (z*z*(z*z*(231 * z*z - 315)  + 105 ) - 5) / 16 + c
  |z| < 100
  ;SOURCE: tchebych.frm
}


J_Lagandre7 {
  c = pixel, z = P1:
  z = z* (z*z*(z*z*(429 * z*z - 693) + 315) - 35 ) / 16 + c
  |z| < 100
  ;SOURCE: tchebych.frm
}


J_Laguenew2 {
  z = pixel, c = p1 :
  z = (z*(z - 4) +2 ) / 2 + c
  |z| <= 100
  ;SOURCE: newtchb2.frm
}


J_Laguenew3 {
  z = pixel, c = p1 :
  z = (z*(z*(-z + 9) -18) + 6 ) / 6 + c
  |z| <= 100
  ;SOURCE: newtchb2.frm
}


J_Laguenew4 {
  z = pixel, c = p1 :
  z = (z * ( z * ( z * ( z - 16)+ 72) - 96)+ 24 ) / 24 + c
  |z| <= 100
  ;SOURCE: newtchb2.frm
}


J_Laguenew5 {
  z = pixel, c = p1 :
  z=(z*(z*(z*(z*(-z+25)-200)+600)-600)+120)/120+c
  |z| <= 100
  ;SOURCE: newtchb2.frm
}


J_Laguenew6 {
  z = pixel, c = p1 :
  z=(z*(z*(z*(z*(z*(z-36)+450)-2400)+5400)-4320)+720 )/720 + c
  |z| <= 100
  ;SOURCE: newtchb2.frm
}


J_Laguerre2 {
  c = pixel, z = P1:
  z = (z*(z - 4) +2 ) / 2 + c
  |z| < 100
  ;SOURCE: fractint.frm
}


J_Laguerre3 {
  c = pixel, z = P1:
  z = (z*(z*(-z + 9) -18) + 6 ) / 6 + c
  |z| < 100
  ;SOURCE: fractint.frm
}


J_Laguerre4 {
  c = pixel, z = P1:
  z = (z * ( z * ( z * ( z - 16)+ 72) - 96)+ 24 ) / 24 + c
  |z| < 100
  ;SOURCE: tchebych.frm
}


J_Laguerre5 {
  c = pixel, z = P1:
  z=(z*(z*(z*(z*(-z+25)-200)+600)-600)+120)/120 + c
  |z| < 100
  ;SOURCE: tchebych.frm
}


J_Laguerre6 {
  c = pixel, z = P1:
  z=(z*(z*(z*(z*(z*(z-36)+450)-2400)+5400)-4320)+720) / 720 + c
  |z| < 100
  ;SOURCE: tchebych.frm
}


J_Legendre2 (ORIGIN) {
  z = pixel, c = p1 :
  z = (3 * z*z - 1) / 2 + c
  |z| <= 100
  ;SOURCE: newtcheb.frm
}


J_Legendre3 {; asymmetric
  z = pixel, c = p1 :
  z = z * (5 * z*z - 3) / 2 + c
  |z| <= 100
  ;SOURCE: newtcheb.frm
}


J_Legendre4 (ORIGIN) {
  z = pixel, c = p1 :
  z = (z*z*(35 * z*z - 30) + 3) / 8 + c
  |z| <= 100
  ;SOURCE: newtcheb.frm
}


J_Legendre5 {; asymmetric
  z = pixel, c = p1 :
  z = z* (z*z*(63 * z*z - 70) + 15 ) / 8 + c
  |z| <= 100
  ;SOURCE: newtcheb.frm
}


J_Legendre6 (ORIGIN) {
  z = pixel, c = p1 :
  z = (z*z*(z*z*(231 * z*z - 315)  + 105 ) - 5) / 16 + c
  |z| <= 100
  ;SOURCE: newtcheb.frm
}


J_Legendre7 {; asymmetric
  z = pixel, c = p1 :
  z = z* (z*z*(z*z*(429 * z*z - 693) + 315) - 35 ) / 16 + c
  |z| <= 100
  ;SOURCE: newtcheb.frm
}


j_reel_1 {; copyright Sylvie Gallet
  z=pixel, x=real(z), y=imag(z) :
  x2=x*x, y2=y*y, x3=x2*x, y3= y2*y
  x=x3-y3+y, y=x2-y2, z=x+flip(y)
  |z|<=p1
  ;SOURCE: forummsg.frm
}


J_TchebychevC2 {
  c = pixel, z = P1:
  z = c*(z*z-2)
  |z|<100
  ;SOURCE: tchebych.frm
}


J_TchebychevC3 {
  c = pixel, z = P1:
  z = c*z*(z*z-3)
  |z|<100
  ;SOURCE: fractint.frm
}


J_TchebychevC4 {
  c = pixel, z = P1:
  z = c*(z*z*(z*z-4)+2)
  |z|<100
  ;SOURCE: tchebych.frm
}


J_TchebychevC5 { 
  c = pixel, z = P1:
  z = c*z*(z*z*(z*z-5)+5)
  |z|<100
  ;SOURCE: tchebych.frm
}


J_TchebychevC6 {
  c = pixel, z = P1:
  z = c*(z*z*(z*z*(z*z-6)+9)-2)
  |z|<100
  ;SOURCE: tchebych.frm
}


J_TchebychevC7 {
  c = pixel, z = P1:
  z = c*z*(z*z*(z*z*(z*z-7)+14)-7)
  |z|<100
  ;SOURCE: fractint.frm
}


J_TchebychevS2 {
  c = pixel, z = P1:
  z = c*(z*z-1)
  |z|<100
  ;SOURCE: tchebych.frm
}


J_TchebychevS3 {  
  c = pixel, z = P1:
  z = c*z*(z*z-2)
  |z|<100
  ;SOURCE: tchebych.frm
}


J_TchebychevS4 {
  c = pixel, z = P1:
  z = c*(z*z*(z*z-3)+1)
  |z|<100
  ;SOURCE: fractint.frm
}


J_TchebychevS5 { 
  c = pixel, z = P1:
  z = c*z*(z*z*(z*z-4)+3)
  |z|<100
  ;SOURCE: tchebych.frm
}


J_TchebychevS6 {
  c = pixel, z = P1:
  z = c*(z*z*(z*z*(z*z-5)+6)-1)
  |z|<100
  ;SOURCE: fractint.frm
}


J_TchebychevS7 {
  c = pixel, z = P1:
  z = c*z*(z*z*(z*z*(z*z-6)+10)-4)
  |z|<100
  ;SOURCE: fractint.frm
}


J_TchebychevT2 {
  c = pixel, z = P1:
  z = c*(2*z*z-1)
  |z|<100
  ;SOURCE: tchebych.frm
}


J_TchebychevT3 {
  c = pixel, z = P1:
  z = c*z*(4*z*z-3)
  |z|<100
  ;SOURCE: tchebych.frm
}


J_TchebychevT4 {
  c = pixel, z = P1:
  z = c*(z*z*(8*z*z+8)+1)
  |z|<100
  ;SOURCE: tchebych.frm
}


J_TchebychevT5 {    
  c = pixel, z = P1:
  z = c*(z*(z*z*(16*z*z-20)+5))
  |z|<100
  ;SOURCE: tchebych.frm
}


J_TchebychevT6 {
  c = pixel, z = P1:
  z = c*(z*z*(z*z*(32*z*z-48)+18)-1)
  |z|<100
  ;SOURCE: tchebych.frm
}


J_TchebychevT7 {     
  c = pixel, z = P1:
  z = c*z*(z*z*(z*z*(64*z*z-112)+56)-7)
  |z|<100
  ;SOURCE: tchebych.frm
}


J_TchebychevU2 {
  c = pixel, z = P1:
  z = c*(4*z*z-1)
  |z|<100
  ;SOURCE: tchebych.frm
}


J_TchebychevU3 {   
  c = pixel, z = P1:
  z = c*z*(8*z*z-4)
  |z|<100
  ;SOURCE: tchebych.frm
}


J_TchebychevU4 {
  c = pixel, z = P1:
  z = c*(z*z*(16*z*z-12)+1)
  |z|<100
  ;SOURCE: tchebych.frm
}


J_TchebychevU5 {    
  c = pixel, z = P1:
  z = c*z*(z*z*(32*z*z-32)+6)
  |z|<100
  ;SOURCE: tchebych.frm
}


J_TchebychevU6 {
  c = pixel, z = P1:
  z = c*(z*z*(z*z*(64*z*z-80)+24)-1)
  |z|<100
  ;SOURCE: tchebych.frm
}


J_TchebychevU7 {     
  c = pixel, z = P1:
  z = c*z*(z*z*(z*z*(128*z*z-192)+80)-8)
  |z|<100
  ;SOURCE: tchebych.frm
}


J_TchebycnewC2 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*(z*z-2)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


J_TchebycnewC3 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*z*(z*z-3)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


J_TchebycnewC4 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*(z*z*(z*z-4)+2)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


J_TchebycnewC5 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*z*(z*z*(z*z-5)+5)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


J_TchebycnewC6 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*(z*z*(z*z*(z*z-6)+9)-2)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


J_TchebycnewC7 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*z*(z*z*(z*z*(z*z-7)+14)-7)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


J_TchebycnewS2 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*(z*z-1)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


J_TchebycnewS3 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*z*(z*z-2)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


J_TchebycnewS4 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*(z*z*(z*z-3)+1)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


J_TchebycnewS5 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*z*(z*z*(z*z-4)+3)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


J_TchebycnewS6 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*(z*z*(z*z*(z*z-5)+6)-1)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


J_TchebycnewS7 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*z*(z*z*(z*z*(z*z-6)+10)-4)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


J_TchebycnewT2 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*(2*z*z-1)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


J_TchebycnewT3 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*z*(4*z*z-3)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


J_TchebycnewT4 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*(z*z*(8*z*z+8)+1)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


J_TchebycnewT5 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*(z*(z*z*(16*z*z-20)+5))
  |z|<=100
  ;SOURCE: newtchb2.frm
}


J_TchebycnewT6 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*(z*z*(z*z*(32*z*z-48)+18)-1)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


J_TchebycnewT7 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*z*(z*z*(z*z*(64*z*z-112)+56)-7)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


J_TchebycnewU2 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*(4*z*z-1)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


J_TchebycnewU3 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*z*(8*z*z-4)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


J_TchebycnewU4 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*(z*z*(16*z*z-12)+1)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


J_TchebycnewU5 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*z*(z*z*(32*z*z-32)+6)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


J_TchebycnewU6 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*(z*z*(z*z*(64*z*z-80)+24)-1)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


J_TchebycnewU7 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1:
  z = c*z*(z*z*(z*z*(128*z*z-192)+80)-8)
  |z|<=100
  ;SOURCE: newtchb2.frm
}


janet {
  z=zp1=pixel, zp2 = (0,0), huge = 1.0e32:
  temp = z
  z = sin(z) - zp2
  zp2 = zp1
  zp1 = p1/temp
  (|zp2| <= 4 && |z| <= huge) 
  ;SOURCE: noel.frm
}


January {; Sylvie Gallet, Dec 1997
         ; Based on Scott Burns equation solver applied to z^3-1 = 0
         ; Use decomp = 256
  z1 = pixel, iter = 0
  a = 23*(0,0.0245436)       ; 23 * 2i pi / 256
  mz = abs(cabs(z1)-1)
  :
  IF (mz>=0.1)
    z = exp((iter + 10*mz)*a)
    cont = 0
  ELSE
    z2 = z1*z1
    z1 = ((1,-1)*z2*z2 + (7,1)*z1) / (2*z1*z2 + 6)
    mz = abs(cabs(z1)-1) 
    cont = 1
    iter = iter + 1
  ENDIF
  cont
  ;SOURCE: 97msg.frm
}


January-2 {; Sylvie Gallet, Dec 1997
           ; Based on Scott Burns equation solver applied to z^3 - 1 = 0
           ; Use decomp = 256 and periodicity = 0
  z1 = pixel, iter = 0
  a = real(p1)*(0,0.0245436)    ; real(p1) * 2i pi / 256
  mz = abs(cabs(z1)-1) 
  :
  IF (mz >= 0.1)
    z2 = z1*z1
    z1 = (p2*z2*z2 + p3*z1) / (2*z1*z2 + imag(p1))
    mz = abs(cabs(z1)-1)
    cont = 1
    iter = iter + 1
  ELSE
    z = exp((iter + 10*mz)*a)
    cont = 0
  ENDIF
  cont
  ;SOURCE: 97msg.frm
}


January-3 {; Sylvie Gallet, Dec 1997
           ; Based on Scott Burns equation solver applied to z^4 - 1 = 0
           ; Use decomp = 256 and periodicity = 0
  z1 = pixel, iter = 0
  a = real(p1)*(0,0.0245436)    ; real(p1) * 2i pi / 256
  mz = abs(cabs(z1)-1) 
  :
  IF (mz >= 0.1)
    z2 = z1*z1
    z1 = (p2*z2*z2 + p3)*z1 / (3*z2*z2 + imag(p1))
    mz = abs(cabs(z1)-1)
    cont = 1
    iter = iter + 1
  ELSE
    z = exp((iter + 10*mz)*a)
    cont = 0
  ENDIF
  cont
  ;SOURCE: 97msg.frm
}


January_gen  { ; Modified Sylvie Gallet "january" formula
          ; Based on Scott Burns equation solver applied to z^3-1 = 0
          ; Use decomp = 256
          ; generalized by Les St Clair, Dec 1997
          ; use p1(real)=6, p2(real)=10, fn1=abs, fn2=cabs & fn3=exp 
          ; for default behaviour
  z1 = pixel, iter = 0
  a = 23*(0,0.0245436)       ; 23 * 2i pi / 256
  mz = fn1(fn2(z1)-1)
  :
  IF (mz >= 0.1)
    z2 = z1*z1
    z1 = ((1,-1)*z2*z2 + (7,1)*z1) / (2*z1*z2 + p1)
    mz = fn1(fn2(z1)-1)
    cont = 1
    iter = iter + 1
  ELSE
    z = fn3((iter + p2*mz)*a)
    cont = 0
  ENDIF
  cont
  ;SOURCE: 97msg.frm
}


Jax {; The original
  z=c=2/pixel:
  z =(z^4)*(c^4) + c
  |z| <=4
  ;SOURCE: jax.frm
}


jc {
  z=pixel, c=p1:
  z=sqr(z)+c
  c=c+p2*c
  |z| <= 4
  ;SOURCE: explode.frm
}


jcamp03 {
  u = x = real(pixel)
  v = y = imag(pixel)
  :
  x = x^2 + flip(y^2) + u
  y = 2*u*y + v
  z = x + y
  |z| <= 4
  ;SOURCE: 98msg.frm
}


jcamp03pc {; jcamp_03 as modified by Paul Carlson
  u = real(pixel)
  v = imag(pixel)
  z = 0
  :
  x = real(z)
  y = imag(z)
  old_x = x
  x = x^2 - y^2 + u
  y = 2 * old_x * y + v
  z = x + flip(y)
  |z| <= 4
  ;SOURCE: 98msg.frm
}


jcamp08 {
  c = pixel
  z = 0
  :
  z=1-.5*z^2+(1/24)*z^4-(1/720)*z^6+(1/40320)*z^8\ 
      -(1/3628800)*z^10+c
  |z| <= real(p1)
  ;SOURCE: 98msg.frm
}


jcamp09 {
  c = pixel
  z = 0
  t = 1
  :
  z = t^(imag(p1))*(1 - .5*(z-c)^2 + (1/24)*(z-c)^4 - (1/720)*(z-c)^6\ 
        + (1/40320)*(z-c)^8 - (1/3628800)*(z-c)^10)
  t = t + real(p2)
  |z| <= real(p1)
  ;SOURCE: 98msg.frm
}


JConj_Maxi(XYAXIS) {; an automatic Mix
  z = pixel
  a = p2
  b = conj(p2)
  IF(p1==0)
    bailout=8+|p2|
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


JConj_Mini(XYAXIS) {; an automatic Mix
  z = pixel
  a = p2
  b = conj(p2)
  IF(p1==0)
    bailout=8+|p2|
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


JD-G-4-06 {; modified Sylvie Gallet [101324,3444], 1996
           ; PTC 24 bits formula
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  sq3 = 0.5 + flip(sqrt(3)/2)
  c = (r == 0) + sq3*(r == 1) + conj(sq3)*(r == 2)
  z = c * pixel
  :
  x = real(z), y = imag(z)
  x1 = x - p1 * fn1(y*y + p2*fn2(y))
  y1 = y - p1 * fn1(x*x + p2*fn2(x))
  z = x1 + flip(y1)
  |z| <= 4
  ;SOURCE: jdflake.frm
}


JD-LS-JM {; Jan Maarten van der Valk [100256,3721], 1996
          ; Requires passes=1
          ; Eliminated assignment to "pixel". G. Martin 6/29/99
  f1 = sin(.5*pixel)
  f2 = 1/pixel
  c = whitesq * f1 + (whitesq==0) * f2
  z = 0:
  z = log(z)*z+c
  |z| < 4
  ;SOURCE: phc.frm
}


JD-LS0 {; Lee Skinner [75450,3631], 1996  Requires passes=1
        ; Eliminated assignment to "pixel". G. Martin 6/29/99
  f1 = sin(.5*pixel)
  f2 = 1/pixel
  c = whitesq * f1 + (whitesq==0) * f2
  z = 0:
  z = z*z + c
  |z| < 4
  ;SOURCE: phc.frm
}


JD-SG-01 {; Sylvie Gallet [101324,3444], 1996  Requires passes=1
     ; Mandel: z^(p1+1) + c , inverted Newton: z^p1 - 1 = 0
     ; use p2 to adjust the size of the inverted Newton set
  z = pixel * whitesq + (p2/(pixel-p2) + 1) * (whitesq == 0)
  c = pixel, b1 = 256, b2 = 0.000001, ex = p1 - 1
  :
  zd = z^ex , zn = zd*z , n = zn - 1 , d = p1 * zd
  zo = zn*z + c , ze = z - n/d
  z = zo * whitesq + ze * (whitesq == 0)
  (|z| <= b1 && whitesq) || (|n| >= b2 && whitesq == 0)
  ;SOURCE: phc.frm
}


JD-SG-02 {; Sylvie Gallet [101324,3444], 1996  Requires passes=1
     ; Mandel: z^2 + c, inverted Newton: z^p1 - 1 = 0
     ; use p2 to adjust the size of the inverted Newton set
  z = pixel * whitesq + (p2/(pixel-p2) + 1) * (whitesq == 0)
  c = pixel, b1 = 256, b2 = 0.000001, ex = p1 - 1
  :
  zd = z^ex, zn = zd*z, n = zn - 1, d = p1 * zd
  zo = z*z + c, ze = z - n/d
  z = zo * whitesq + ze * (whitesq == 0)
  (|z| <= b1 && whitesq) || (|n| >= b2 && whitesq == 0)
  ;SOURCE: phc.frm
}


JD-SG-03 {; Sylvie Gallet [101324,3444], 1996  Requires passes=1
     ; Mandel: z^(p1+1) + c , Newton: z^p1 - 1 = 0
     ; use p2 to adjust the size of the inverted Newton set
  z = c = pixel, b1 = 256, b2 = 0.000001, ex = p1 - 1
  :
  zd = z^ex, zn = zd*z, n = zn - 1, d = p1 * zd
  zo = zn*z + c, ze = z - n/d
  z = zo * whitesq + ze * (whitesq == 0)
  (|z| <= b1 && whitesq) || (|n| >= b2 && whitesq == 0)
  ;SOURCE: phc.frm
}


JD-SG-04 {; Sylvie Gallet [101324,3444], 1996  Requires passes=1
    ; use p1 and p2 to adjust the inverted Mandel
  z = c = pixel * whitesq + (p1 / (pixel+p2)) * (whitesq==0) :
  z = z*z + c
  |z| < 4
  ;SOURCE: phc.frm
}


JD-SG-04-1 {; Sylvie Gallet [101324,3444], 1996
    ; On an original idea by Jim Deutch [104074,3171]
    ; Modified for if..else logic 3/21/97 by Sylvie Gallet
    ; use p1 and p2 to adjust the inverted Mandel
    ; 16-bit Pseudo-HiColor
  IF (whitesq)
    z = c = pixel
  ELSE
    z = c = p1 / (pixel+p2)
  ENDIF
  :
  z = z*z + c
  |z| < 4
  ;SOURCE: fract196.frm
}


JD-SG-05 {; Sylvie Gallet [101324,3444], 1996  Requires passes=1
    ; use p1 and p2 to adjust the 2nd Mandel
    ; p1 = -1 (default)
    ; Modified for IF..ELSE logic by Sylvie Gallet, 05/15/97
  z = 0
  IF (whitesq)
    c = pixel
  ELSE
    IF (p1)
      c = p1*pixel + p2
    ELSE
      c = - pixel + p2
    ENDIF
  ENDIF
  :
  z = z*z + c
  |z| < 4
  ;SOURCE: phctopng.frm
}


JD-SG-06 {; Sylvie Gallet [101324,3444], 1996  Requires passes=1
  IF (whitesq)
    z = real(p1)
  ELSE
    z = flip(imag(p1))
  ENDIF
  :
  z = z*z + pixel
  |z| < 4
  ;SOURCE: phctopng.frm
}


JD-SG-06m {; Sylvie Gallet [101324,3444], 1996  Requires passes=1
  whitesq = whitesq*(real(p2)==0)+(real(p2)>0)
  z = flip(imag(p1)) * (whitesq == 0) + real(p1) * whitesq
  c = pixel
  :
  z = z*z + c
  |z| < 4
  ;SOURCE: 96msg.frm
}


JD-SG-07 {; Sylvie Gallet [101324,3444], 1996  Requires passes=1
          ; p1 = perturbation of z(0) for the Mandel set
          ; p2 = parameter for the Julia set
  c = pixel * (whitesq==0) + p2 * whitesq
  z = (c + p1) * (whitesq==0) + pixel * whitesq
  :
  z = z*z + c
  |z| < 4
  ;SOURCE: phc.frm
}


JD-SG-08 {; Sylvie Gallet [101324,3444], 1996  Requires passes=1
          ; p1 = parameter for the 1st Julia set
          ; p2 = parameter for the 2nd Julia set
  c = p1 * (whitesq==0) + p2 * whitesq
  z = pixel
  :
  z = z*z + c
  |z| < 4
  ;SOURCE: phc.frm
}


JD-SG-09 {; Sylvie Gallet [101324,3444], 1996  Requires passes=1
          ; use p1 and p2 to adjust the 2nd Mandel:
          ; real(p1) = size factor
      ; imag(p1) = rotation angle (in degrees), negative = clockwise
      ; p2 = translation, positive = right/up
  sf = abs(real(p1)), r = -flip(imag(p1))*pi/180
  z = 0, c = pixel * whitesq + exp(r)*(pixel-p2)/sf * (whitesq==0):
  z = z*z + c
  |z| < 4
  ;SOURCE: phc.frm
}


JDCarr2289b  {; Modified Carr/Gallet frm. Jim Deutch 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
   ; Added variable "newpixel". G. Martin 6/29/99
  y=((imag(scrnpix)/(imag(scrnmax)-1)))*imag(scrnmax)/real(scrnmax)-.85
  x=(real(scrnpix)/(real(scrnmax)-1))-.37
  r=x*x+y*y
  rain=(r<.42)*(r>.32)*whitesq
  ind=(r-.32)/(.42-.32)*109
  newpixel = -abs(real(pixel))+flip(imag(pixel))
  c = newpixel+newpixel-flip(0.0010/newpixel)-conj(0.010/newpixel)
  z = (newpixel-conj(asin(newpixel+newpixel+0.32)))*(rain==0)+ind*rain
  d1 = flip(-0.00059350/newpixel)
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0, d4 = 4*d1:
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z*t + ct)*(rain==0)+z*rain
  c = c*t + ct
  z = (z*z+c)*(rain==0)+(z-1)*rain
  iter = iter+1
  (rain==0)*(|real(z)|)+rain <= bailout*(rain==0)+rain*z
  ;SOURCE: 96msg.frm
}


JDCarr2330c {; Modified Carr/Sylvie Gallet frm. Jim Deutch 1996
             ; thanks to Tim Wegner for correcting my error
             ; Added variable "newpixel". G. Martin 6/27/99
  y=((imag(scrnpix)/(imag(scrnmax)-1)))*imag(scrnmax)/real(scrnmax)-.85
  x=(real(scrnpix)/(real(scrnmax)-1))-.67
  r=x*x+y*y
  rain=(r<.42)*(r>.35)*(whitesq==0)
  ind=(r-.35)/(.42-.35)*109+1
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  m=tan(newpixel)-tanh(newpixel)
  z=(2*m+flip(newpixel))*(rain==0)+ind*rain
  c=(-0.7,0.2)
  d1=conj(conj(0.0003545/-newpixel))+(tanh(0.00010/newpixel))
  z1=c1=(1*z+d1), z2=c2=(1.5*z+d1), z3=c3=(2.25*z+d1), z4=c4=(3.375*z+d1)
  z5=c5=(5.0625*z+d1)
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2)), l5=(300)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  z=(z*(1-(t1||t2||t3||t4))+(z1*t1-d1)+(z2*t2+d1)\
    +(z3*t3+d1)+(z4*t4+d1)+(z5*t5+d1))*(rain==0)+z*rain
  c=c*(1-(t1||t2||t3||t4))+(c1*t1+d1)+(c2*t2+d1)\
    +(c3*t3+d1)+(c4*t4+d1)+(c5*t5+d1)
  z=(z^2.45+c+sinh(z/6))*(rain==0)+rain*(z-1)
  iter=iter+1
  (rain==0)*(|real(z)|)+rain <=bailout*(rain==0)+rain*z
  ;SOURCE: jdwork4.frm
}


JDFancyFract {; requires Fractint 19.5
  row=imag(scrnpix)
  col=real(scrnpix)
  rows=imag(scrnmax)
  cols=real(scrnmax)
  y=row/(rows-1)
  x=col/(cols-1)
  in=0
  in=in+(x>.070&&x<.132&&y<.729&&y>.687)
  in=in+(x>.054&&x<.070&&y<.718&&y>.666)
  in=in+(x>.132&&x<.148&&y<.718&&y>.687)
  in=in+(x>.046&&x<.054&&y<.708&&y>.645)
  in=in+(x>.148&&x<.164&&y<.708&&y>.687)
  in=in+(x>.031&&x<.046&&y<.697&&y>.635)
  in=in+(x>.164&&x<.179&&y<.697&&y>.677)
  in=in+(x>.179&&x<.187&&y<.687&&y>.656)
  in=in+(x>.187&&x<.195&&y<.677&&y>.645)
  in=in+(x>.195&&x<.203&&y<.666&&y>.635)
  in=in+(x>.203&&x<.210&&y<.656&&y>.614)
  in=in+(x>.210&&x<.218&&y<.635&&y>.572)
  in=in+(x>.218&&x<.234&&y<.625&&y>.458)
  in=in+(x>.328&&x<.351&&y<.604&&y>.447)
  in=in+(x>.421&&x<.445&&y<.604&&y>.562)
  in=in+(x>.476&&x<.492&&y<.604&&y>.531)
  in=in+(x>.546&&x<.570&&y<.604&&y>.572)
  in=in+(x>.648&&x<.664&&y<.604&&y>.395)
  in=in+(x>.710&&x<.734&&y<.604&&y>.489)
  in=in+(x>.765&&x<.781&&y<.604&&y>.593)
  in=in+(x>.835&&x<.859&&y<.604&&y>.447)
  in=in+(x>.906&&x<.929&&y<.604&&y>.468)
  in=in+(x>.414&&x<.421&&y<.593&&y>.531)
  in=in+(x>.445&&x<.453&&y<.593&&y>.572)
  in=in+(x>.492&&x<.5&&y<.593&&y>.427)
  in=in+(x>.539&&x<.546&&y<.593&&y>.479)
  in=in+(x>.570&&x<.585&&y<.593&&y>.572)
  in=in+(x>.640&&x<.648&&y<.593&&y>.562)
  in=in+(x>.664&&x<.671&&y<.593&&y>.375)
  in=in+(x>.734&&x<.742&&y<.593&&y>.572)
  in=in+(x>.773&&x<.796&&y<.593&&y>.520)
  in=in+(x>.453&&x<.460&&y<.583&&y>.572)
  in=in+(x>.531&&x<.539&&y<.583&&y>.5)
  in=in+(x>.585&&x<.601&&y<.583&&y>.572)
  in=in+(x>.671&&x<.679&&y<.583&&y>.572)
  in=in+(x>.742&&x<.75&&y<.583&&y>.562)
  in=in+(x>.234&&x<.242&&y<.572&&y>.354)
  in=in+(x>.460&&x<.468&&y<.572&&y>.562)
  in=in+(x>.546&&x<.562&&y<.572&&y>.562)
  in=in+(x>.593&&x<.609&&y<.572&&y>.562)
  in=in+(x>.421&&x<.437&&y<.562&&y>.5)
  in=in+(x>.468&&x<.476&&y<.562&&y>.541)
  in=in+(x>.546&&x<.554&&y<.562&&y>.458)
  in=in+(x>.5&&x<.515&&y<.552&&y>.427)
  in=in+(x>.351&&x<.359&&y<.531&&y>.427)
  in=in+(x>.437&&x<.445&&y<.531&&y>.458)
  in=in+(x>.484&&x<.492&&y<.531&&y>.479)
  in=in+(x>.734&&x<.742&&y<.531&&y>.427)
  in=in+(x>.796&&x<.804&&y<.531&&y>.427)
  in=in+(x>.781&&x<.796&&y<.520&&y>.437)
  in=in+(x>.859&&x<.867&&y<.520&&y>.427)
  in=in+(x>.242&&x<.25&&y<.510&&y>.302)
  in=in+(x>.382&&x<.390&&y<.510&&y>.479)
  in=in+(x>.429&&x<.437&&y<.5&&y>.468)
  in=in+(x>.554&&x<.562&&y<.5&&y>.447)
  in=in+(x>.156&&x<.218&&y<.489&&y>.458)
  in=in+(x>.25&&x<.289&&y<.489&&y>.458)
  in=in+(x>.359&&x<.367&&y<.489&&y>.468)
  in=in+(x>.390&&x<.398&&y<.489&&y>.437)
  in=in+(x>.671&&x<.679&&y<.489&&y>.364)
  in=in+(x>.726&&x<.734&&y<.489&&y>.437)
  in=in+(x>.804&&x<.812&&y<.489&&y>.479)
  in=in+(x>.929&&x<.937&&y<.489&&y>.364)
  in=in+(x>.367&&x<.375&&y<.479&&y>.458)
  in=in+(x>.398&&x<.406&&y<.479&&y>.427)
  in=in+(x>.445&&x<.453&&y<.479&&y>.447)
  in=in+(x>.742&&x<.75&&y<.479&&y>.416)
  in=in+(x>.812&&x<.828&&y<.479&&y>.468)
  in=in+(x>.320&&x<.328&&y<.468&&y>.458)
  in=in+(x>.375&&x<.390&&y<.468&&y>.447)
  in=in+(x>.562&&x<.570&&y<.468&&y>.437)
  in=in+(x>.601&&x<.609&&y<.468&&y>.427)
  in=in+(x>.703&&x<.726&&y<.468&&y>.458)
  in=in+(x>.765&&x<.773&&y<.468&&y>.458)
  in=in+(x>.820&&x<.835&&y<.468&&y>.458)
  in=in+(x>.914&&x<.929&&y<.468&&y>.395)
  in=in+(x>.226&&x<.234&&y<.458&&y>.375)
  in=in+(x>.406&&x<.414&&y<.458&&y>.427)
  in=in+(x>.453&&x<.460&&y<.458&&y>.437)
  in=in+(x>.710&&x<.726&&y<.458&&y>.447)
  in=in+(x>.773&&x<.781&&y<.458&&y>.447)
  in=in+(x>.804&&x<.812&&y<.458&&y>.427)
  in=in+(x>.335&&x<.351&&y<.447&&y>.437)
  in=in+(x>.359&&x<.367&&y<.447&&y>.427)
  in=in+(x>.460&&x<.492&&y<.447&&y>.427)
  in=in+(x>.570&&x<.601&&y<.447&&y>.427)
  in=in+(x>.843&&x<.859&&y<.447&&y>.437)
  in=in+(x>.093&&x<.109&&y<.437&&y>.333)
  in=in+(x>.632&&x<.648&&y<.437&&y>.427)
  in=in+(x>.679&&x<.703&&y<.437&&y>.427)
  in=in+(x>.851&&x<.859&&y<.437&&y>.427)
  in=in+(x>.890&&x<.914&&y<.437&&y>.427)
  in=in+(x>.937&&x<.968&&y<.437&&y>.427)
  in=in+(x>.25&&x<.257&&y<.416&&y>.302)
  in=in+(x>.679&&x<.687&&y<.416&&y>.354)
  in=in+(x>.937&&x<.945&&y<.416&&y>.354)
  in=in+(x>.921&&x<.929&&y<.395&&y>.375)
  in=in+(x>.734&&x<.757&&y<.375&&y>.333)
  in=in+(x>.109&&x<.117&&y<.364&&y>.312)
  in=in+(x>.117&&x<.140&&y<.343&&y>.302)
  in=in+(x>.257&&x<.265&&y<.343&&y>.302)
  in=in+(x>.101&&x<.109&&y<.333&&y>.312)
  in=in+(x>.140&&x<.242&&y<.333&&y>.302)
  in=in+(x>.265&&x<.304&&y<.333&&y>.302)
  out=in==0
  test=in+out*4
  c=newpixel
  z=in*(x+y/8)*689:
  z=(z-1)*in+(z*z+c)*out
  out*|z|+in<test*out+z*in
  ;SOURCE: jdmask1.frm
}


JDfrm010 {; Jim Deutch [104074,3171], 1996.  The Original PHC formula
          ; Requires passes=1
  z = 0
  c = whitesq * pixel - (whitesq == 0) * pixel:
  z = z*z + c
  |z| < 4
  ;SOURCE: phc.frm
}


JDfrm010m1 {; Jim Deutch/modified by Lee Skinner.
            ; Eliminated assignment to "pixel". G. Martin 6/29/99
  countreset = (count < 1600)
  count = count * countreset
  evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
  oddeven = (evenodd < 1)
  count = count + 1
  c = evenodd * pixel + oddeven * -pixel
  z = 0:
  z = z*z + c
  |z| < 4
  ;SOURCE: jd10.frm
}


JDfrm010m3 {; Jim Deutch/modified by Lee Skinner.
            ; Eliminated assignment to "pixel". G. Martin 6/29/99
  countreset = (count < 320)
  count = count * countreset
  evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
  oddeven = (evenodd < 1)
  count = count + 1
  c = evenodd * pixel + oddeven * -pixel
  z = 0:
  z = z*z + c
  |z| < 4
  ;SOURCE: jd10.frm
}


JDfrm010m5 {; Jim Deutch/modified by Lee Skinner.
            ; Eliminated assignment to "pixel". G. Martin 6/29/99
  countreset = (count < 640)
  count = count * countreset
  evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
  oddeven = (evenodd < 1)
  count = count + 1
  c = evenodd * pixel + oddeven * -pixel
  z = 0:
  z = z*z + c
  |z| < 4
  ;SOURCE: jd10.frm
}


JDfrm010m6 {; Jim Deutch/modified by Lee Skinner.
            ; Eliminated assignment to "pixel". G. Martin 6/29/99
  countreset = (count < 800)
  count = count * countreset
  evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
  oddeven = (evenodd < 1)
  count = count + 1
  c = evenodd * pixel + oddeven * -pixel
  z = 0:
  z = z*z + c
  |z| < 4
  ;SOURCE: jd10.frm
}


JDfrm010m7 {; Jim Deutch/modified by Lee Skinner.
            ; Eliminated assignment to "pixel". G. Martin 6/29/99
  countreset = (count < 1024)
  count = count * countreset
  evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
  oddeven = (evenodd < 1)
  count = count + 1
  c = evenodd * pixel + oddeven * -pixel
  z = 0:
  z = z*z + c
  |z| < 4
  ;SOURCE: jd10.frm
}


JDfrm010m9 {; Jim Deutch/modified by Lee Skinner.
            ; Eliminated assignment to "pixel". G. Martin 6/29/99
  countreset = (count < 1280)
  count = count * countreset
  evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
  oddeven = (evenodd < 1)
  count = count + 1
  c = evenodd * pixel + oddeven * -pixel
  z = 0:
  z = z*z + c
  |z| < 4
  ;SOURCE: jd10.frm
}


JDfrm021a {; Jim Deutch [104074,3171], 1996   Requires passes=1
  a = pixel, r = |a|, b = abs(a)
  q = conj(flip(b)) / real(r)
  z = a * real(whitesq) :
  z2 = z*z
  rz2 = z2 * real(r)
  sinzoz = sin(z) / (z+(whitesq==0))
  z=sinzoz/(rz2+(whitesq==0))*real(whitesq)+(q + z2)*real((whitesq==0))
  |z| - 4 < 10000000 * whitesq
  ;SOURCE: phc.frm
}


JDfrm021a7 {; Jim Deutch pseudo-Hicolor
  a = pixel
  b = abs(a)
  c = flip(a)
  r = |a|
  countreset = (count < 1024)
  count = count * countreset
  evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
  oddeven = (evenodd < 1)
  count = count + 1
  z = a * evenodd:
  z2 = z*z
  rz2 = r*z2
  sinzoz = sin(z) / (z+oddeven)
  z=(b/c/a + z2)*oddeven + (sinzoz/(rz2+oddeven))*evenodd
  |z| < 4 + 10000000*evenodd
  ;SOURCE: 96msg.frm
}


JDfrm031 {; Jim Deutch [104074,3171], 1996   Requires passes=1
          ; generalized 2-Julia pseudo-HiColor
          ; p1 = 1st julia parameters
          ; p2 = 2nd julia parameters
          ; p3 slides 1st julia around the plane wrt the 2nd
  z = pixel + p3*whitesq
  p = p1*whitesq + p2*(whitesq==0) :
  z = z*z + p
  |z| < 4
  ;SOURCE: phc.frm
}


JDfrm031SF1 {; Jim Deutch: generalized 2-Julia Pseudo-HiColor
             ; resolution specific - 1600x1200 only
             ; p1 = 1st julia parameters
             ; p2 = 2nd julia parameters
             ; p3 slides 1st julia around the plane wrt the 2nd
             ; Edited for Fractint v. 20 by George Martin, 10/98
  count = (count + 1) * (count != 1599)
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z = pixel + p3*evenodd 
  p = p1*evenodd + p2*oddeven:
  z=z*z + p
  |z| < 4
  ;SOURCE: phc_1.frm
}


JDfrm031SF3 {; Jim Deutch: generalized 2-Julia pseudo-HiColor
             ; resolution specific - 320x200
             ; p1 = 1st julia parameters
             ; p2 = 2nd julia parameters
             ; p3 slides 1st julia around the plane wrt the 2nd
             ; Edited for Fractint v. 20 by George Martin, 10/98
  count = (count + 1) * (count != 319)
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z = pixel + p3*evenodd
  p = p1*evenodd + p2*oddeven:
  z=z*z + p
  |z| < 4
  ;SOURCE: phc_1.frm
}


JDfrm031SF5 {; Jim Deutch: generalized 2-Julia pseudo-HiColor
             ; resolution specific - 640x480
             ; p1 = 1st julia parameters
             ; p2 = 2nd julia parameters
             ; p3 slides 1st julia around the plane wrt the 2nd
             ; Edited for Fractint v. 20 by George Martin, 10/98
  count = (count + 1) * (count != 639)
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z = pixel + p3*evenodd
  p = p1*evenodd + p2*oddeven:
  z=z*z + p
  |z| < 4
  ;SOURCE: phc_1.frm
}


JDfrm031SF6 {; Jim Deutch: generalized 2-Julia pseudo-HiColor
             ; resolution specific - 800x600
             ; p1 = 1st julia parameters
             ; p2 = 2nd julia parameters
             ; p3 slides 1st julia around the plane wrt the 2nd
             ; Edited for Fractint v. 20 by George Martin, 10/98
  count = (count + 1) * (count != 799)
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z = pixel + p3*evenodd
  p = p1*evenodd + p2*oddeven:
  z=z*z + p
  |z| < 4
  ;SOURCE: phc_1.frm
}


JDfrm031SF7 {; Jim Deutch: generalized 2-Julia pseudo-HiColor
             ; resolution specific - 1024x768
             ; p1 = 1st julia parameters
             ; p2 = 2nd julia parameters
             ; p3 slides 1st julia around the plane wrt the 2nd
  count = (count + 1) * (count != 1023)
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z=pixel + p3*evenodd
  p = p1*evenodd + p2*oddeven:
  z=z*z + p
  |z| < 4
  ;SOURCE: phc_1.frm
}


JDfrm031SF9 {; Jim Deutch: generalized 2-Julia pseudo-HiColor
             ; resolution specific - 1280x1024
             ; p1 = 1st julia parameters
             ; p2 = 2nd julia parameters
             ; p3 slides 1st julia around the plane wrt the 2nd
             ; Edited for Fractint v. 20 by George Martin, 10/98
  count = (count + 1) * (count != 1279)
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z = pixel + p3*evenodd
  p = p1*evenodd + p2*oddeven:
  z=z*z + p
  |z| < 4
  ;SOURCE: phc_1.frm
}


JDfrm038 {; Jim Deutch [104074,3171], 1996  Requires passes=1
          ; p1 = Julia parameters
          ; p2 = bailout test
  z = c = pixel
  r = |c|:
  rz2 = r * z * z
  sinzoz = sin(z) / (z+(whitesq==0))
  z = (sinzoz / rz2)*whitesq + (z*z+p1)*(whitesq==0)
  |z| < p2
  ;SOURCE: phc.frm
}


JDfrm038b {; Jim Deutch [104074,3171], 1996 requires 19.5
           ; p1 = Julia parameters
           ; p2 = Julia translation
           ; imag(p3) = demagnification
  z = c = pixel
  z=z*imag(p3)*whitesq+(z+p2)*(whitesq==0)
  r = |c|:
  rz2 = r * z * z
  sinzoz = sin(z) / (z+(whitesq==0))
  z = (sinzoz / rz2)*whitesq+(z*z+p1)*(whitesq==0)
  |z| < 4
  ;SOURCE: jdwork4.frm
}


JDfrm038C {; Jim Deutch [104074,3171], 1996 requires 19.5
           ; p1 = Julia parameters
           ; p2 = Julia translation
           ; imag(p3) = demagnification
  z = c = pixel
  z=z*imag(p3)*whitesq+(z+p2)*(whitesq==0)
  r = |c|:
  rz2 = r * z * z
  sinzoz = sin(z) / (z+(whitesq==0))
  z = (sinzoz / rz2)*whitesq+(z*z+p1)*(whitesq==0)
  |z| < 100000
  ;SOURCE: jdwork4.frm
}


JDFrmF01 {; Modified Gallet frm Jim Deutch 1996
  sq6=0.5+flip(sqrt(3)/2)
  z=pixel:
  x=real(z)
  y=imag(z)
  x1=x-p1*fn1(y*y+p2*fn2(y))
  y1=y=p1*fn1(x*x+p2*fn2(x))
  z=x1+flip(y1)
  z=z*sq6
  |z|<=4
  ;SOURCE: jdwork4.frm
}


JDFrmF05 {; Jim Deutch, 1996
  sq6=0.5+flip(sqrt(3)/2)
  z=pixel:
  z=z*sq6
  real(z)>-1
  ;SOURCE: jdflake.frm
}


JDFrmF17 {; Jim Deutch, 1996
  sq6=.5+flip(sqrt(3)/2)
  z=pixel:
  z=z*sq6
  fn1(z)<p1
  ;SOURCE: jdflake.frm
}


JDFrmF18b {; tanh is nice Jim Deutch 1996
  sq6=.5+flip(sqrt(3)/2)
  z=pixel
  ct=0:
  ct=ct+1
  z=z*sq6*(ct<8)+(z*z+p1*(ct>=8))
  fn1(z)*(ct<8)+(|z|*(ct>=8))<(ct<8)+4*(ct>=8)
  ;SOURCE: jdwork4.frm
}


JDFrmF23 {; Jim Deutch, 1996: PTC triple Julia
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  sq3 = 0.5 + flip(sqrt(3)/2)
  c = (r == 0) + sq3*(r == 1) + conj(sq3)*(r == 2)
  z =c*pixel:
  z=z*z+p1
  |z|<4
  ;SOURCE: jdflake.frm
}


JDFrmF26g {; Jim Deutch, 1996
  sq6=.5+flip(sqrt(3)/2)
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  sq3 = 0.5 + flip(sqrt(3)/2)
  c = (r == 0) + sq3*(r == 1) + conj(sq3)*(r == 2)
  z =c*pixel
  ct=0:
  ct=ct+1
  out=(ct<8)
  z=z*sq6*out+ (z*z+p1)*(out==0)
  (fn1(z*(p2+1))*out+ |z|*(out==0))<(out+ 4*(out==0))
  ;SOURCE: jdflake.frm
}


JDFrmF27 {; Jim Deutch, 1996
  sq6=.5+flip(sqrt(3)/2)
  out=1
  z =pixel*out+(1+(0,-0.65)/fn1(pixel+(0,0.75)))*(out==0)
  ct=0:
  ct=ct+1
  out=(ct<8)
  z2=z*z, z4=z2*z2, n=z4*z2-1
  z=z*sq6*out+(z-n/(6*z4*z))*(out==0)
  (asin(z)*out+ .0001*(out==0))<(out+ |n|*(out==0))
  ;SOURCE: jdflake.frm
}


JDFrmF28 {; Jim Deutch, 1996
  sq6=.5+flip(sqrt(3)/2)
  out=1
  z =pixel*out+(1+(0,-0.65)/(pixel+(0,0.75)))*(out==0)
  ct=0:
  ct=ct+1
  out=(ct<8)
  z2=z*z, z4=z2*z2, n=z4*z2-1
  z=z*sq6*out+(z-n/(6*z4*z))*(out==0)
  ((sinh(z)*out)+|n|*(out==0))>(-5*out+.0001*(out==0))
  ;SOURCE: jdflake.frm
}


JDFrmF31 {; Jim Deutch, 1996
          ; Added variable "newpixel". G. Martin 6/27/99
  sq6=-.5+flip(sqrt(3)/2)
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  sq3 = 0.5 + flip(sqrt(3)/2)
  c = (r == 0) + sq3*(r == 1) + conj(sq3)*(r == 2)
  newpixel=c*pixel
  z =(1+(0,-0.65)/(newpixel+(0,0.75))):
  z2=z*z, z4=z2*z2, n=z4*z2-1
  z=z-n/(6*z4*z)
  |n|>.0001
  ;SOURCE: jdflake.frm
}


JDFrmJT02 {
  z=pixel
  x=real(pixel)
  p=p1+x*p2:
  z=z*z+p
  |z|<4
  ;SOURCE: jdwork4.frm
}


JDFrmJT04 {
  z=pixel
  x=real(pixel)
  p=p1+x*(p1-p2):
  z=z*z+p
  |z|<4
  ;SOURCE: jdwork4.frm
}


JDG-7-01c {; Formula by Jim Deutch, Modified Sylvie Gallet frm
           ; image and 60 deg rotation w/ palette divided
  j = -0.5 + flip(0.5*sqrt(3)), j2 = conj(j)
  IF (whitesq)
    z = pixel
  ELSE
    z = -j2*pixel
  ENDIF
  :
  x = z*j , y = z*j2
  x1 = x - p1*fn1(y + fn2(p2*z))
  y1 = y - p1*fn1(z + fn2(p2*x))
  z1 = z - p1*fn1(x + fn2(p2*y))
  z = z1 + x1*j + y1*j2
  t1 = (|z| <= 32)
  t = t1 || (whitesq == (imag(z) >= 0))
  IF (t==0)
    z = conj(z)
  ENDIF
  t1
  ;SOURCE: sgjdg701.par
}


JDMaskHand {; requires Fractint 19.5
  row=imag(scrnpix)
  col=real(scrnpix)
  rows=imag(scrnmax)
  cols=real(scrnmax)
  y=row/(rows-1)
  x=col/(cols-1)
  in=0
  in=in+(x>.380&&x<.400&&y<.907&&y>.867)
  in=in+(x>.540&&x<.560&&y<.907&&y>.840)
  in=in+(x>.370&&x<.390&&y<.867&&y>.853)
  in=in+(x>.360&&x<.380&&y<.853&&y>.840)
  in=in+(x>.560&&x<.580&&y<.853&&y>.827)
  in=in+(x>.350&&x<.370&&y<.840&&y>.813)
  in=in+(x>.580&&x<.590&&y<.840&&y>.800)
  in=in+(x>.570&&x<.580&&y<.827&&y>.813)
  in=in+(x>.590&&x<.600&&y<.827&&y>.787)
  in=in+(x>.340&&x<.360&&y<.813&&y>.787)
  in=in+(x>.600&&x<.610&&y<.813&&y>.787)
  in=in+(x>.610&&x<.620&&y<.800&&y>.773)
  in=in+(x>.330&&x<.350&&y<.787&&y>.747)
  in=in+(x>.620&&x<.630&&y<.787&&y>.760)
  in=in+(x>.630&&x<.640&&y<.773&&y>.733)
  in=in+(x>.640&&x<.650&&y<.760&&y>.720)
  in=in+(x>.320&&x<.340&&y<.747&&y>.693)
  in=in+(x>.650&&x<.660&&y<.747&&y>.707)
  in=in+(x>.660&&x<.670&&y<.720&&y>.693)
  in=in+(x>.540&&x<.550&&y<.707&&y>.667)
  in=in+(x>.670&&x<.680&&y<.707&&y>.667)
  in=in+(x>.320&&x<.330&&y<.693&&y>.560)
  in=in+(x>.550&&x<.560&&y<.693&&y>.653)
  in=in+(x>.680&&x<.690&&y<.693&&y>.653)
  in=in+(x>.310&&x<.320&&y<.680&&y>.533)
  in=in+(x>.560&&x<.570&&y<.680&&y>.640)
  in=in+(x>.570&&x<.580&&y<.667&&y>.640)
  in=in+(x>.690&&x<.700&&y<.667&&y>.640)
  in=in+(x>.580&&x<.600&&y<.653&&y>.627)
  in=in+(x>.700&&x<.710&&y<.653&&y>.627)
  in=in+(x>.600&&x<.620&&y<.640&&y>.600)
  in=in+(x>.710&&x<.730&&y<.640&&y>.613)
  in=in+(x>.620&&x<.640&&y<.627&&y>.600)
  in=in+(x>.730&&x<.740&&y<.627&&y>.587)
  in=in+(x>.590&&x<.600&&y<.613&&y>.507)
  in=in+(x>.640&&x<.660&&y<.613&&y>.587)
  in=in+(x>.720&&x<.730&&y<.613&&y>.600)
  in=in+(x>.740&&x<.750&&y<.613&&y>.573)
  in=in+(x>.600&&x<.610&&y<.600&&y>.467)
  in=in+(x>.660&&x<.670&&y<.600&&y>.560)
  in=in+(x>.750&&x<.760&&y<.600&&y>.533)
  in=in+(x>.650&&x<.660&&y<.587&&y>.573)
  in=in+(x>.760&&x<.770&&y<.587&&y>.547)
  in=in+(x>.300&&x<.310&&y<.573&&y>.520)
  in=in+(x>.670&&x<.680&&y<.573&&y>.547)
  in=in+(x>.770&&x<.780&&y<.573&&y>.560)
  in=in+(x>.680&&x<.700&&y<.560&&y>.533)
  in=in+(x>.740&&x<.750&&y<.560&&y>.533)
  in=in+(x>.290&&x<.300&&y<.547&&y>.493)
  in=in+(x>.360&&x<.390&&y<.547&&y>.493)
  in=in+(x>.700&&x<.740&&y<.547&&y>.520)
  in=in+(x>.350&&x<.360&&y<.533&&y>.480)
  in=in+(x>.690&&x<.700&&y<.533&&y>.520)
  in=in+(x>.280&&x<.290&&y<.520&&y>.467)
  in=in+(x>.510&&x<.550&&y<.520&&y>.440)
  in=in+(x>.610&&x<.620&&y<.520&&y>.413)
  in=in+(x>.340&&x<.350&&y<.507&&y>.453)
  in=in+(x>.430&&x<.460&&y<.507&&y>.453)
  in=in+(x>.270&&x<.280&&y<.493&&y>.440)
  in=in+(x>.360&&x<.380&&y<.493&&y>.453)
  in=in+(x>.260&&x<.270&&y<.480&&y>.413)
  in=in+(x>.330&&x<.340&&y<.480&&y>.440)
  in=in+(x>.420&&x<.430&&y<.480&&y>.360)
  in=in+(x>.550&&x<.560&&y<.480&&y>.360)
  in=in+(x>.320&&x<.330&&y<.467&&y>.413)
  in=in+(x>.620&&x<.630&&y<.467&&y>.360)
  in=in+(x>.250&&x<.260&&y<.453&&y>.400)
  in=in+(x>.350&&x<.370&&y<.453&&y>.400)
  in=in+(x>.430&&x<.440&&y<.453&&y>.400)
  in=in+(x>.450&&x<.460&&y<.453&&y>.187)
  in=in+(x>.310&&x<.320&&y<.440&&y>.387)
  in=in+(x>.510&&x<.530&&y<.440&&y>.200)
  in=in+(x>.540&&x<.550&&y<.440&&y>.400)
  in=in+(x>.560&&x<.570&&y<.440&&y>.320)
  in=in+(x>.240&&x<.250&&y<.427&&y>.333)
  in=in+(x>.410&&x<.420&&y<.427&&y>.307)
  in=in+(x>.300&&x<.310&&y<.413&&y>.373)
  in=in+(x>.630&&x<.640&&y<.413&&y>.307)
  in=in+(x>.230&&x<.240&&y<.400&&y>.347)
  in=in+(x>.290&&x<.300&&y<.400&&y>.347)
  in=in+(x>.340&&x<.360&&y<.400&&y>.347)
  in=in+(x>.570&&x<.580&&y<.387&&y>.293)
  in=in+(x>.280&&x<.290&&y<.373&&y>.333)
  in=in+(x>.400&&x<.410&&y<.373&&y>.267)
  in=in+(x>.270&&x<.280&&y<.360&&y>.320)
  in=in+(x>.640&&x<.650&&y<.360&&y>.213)
  in=in+(x>.250&&x<.270&&y<.347&&y>.320)
  in=in+(x>.330&&x<.350&&y<.347&&y>.293)
  in=in+(x>.580&&x<.590&&y<.347&&y>.253)
  in=in+(x>.390&&x<.400&&y<.320&&y>.240)
  in=in+(x>.590&&x<.600&&y<.307&&y>.240)
  in=in+(x>.650&&x<.660&&y<.307&&y>.227)
  in=in+(x>.320&&x<.340&&y<.293&&y>.227)
  in=in+(x>.380&&x<.390&&y<.267&&y>.213)
  in=in+(x>.600&&x<.610&&y<.267&&y>.227)
  in=in+(x>.340&&x<.350&&y<.240&&y>.200)
  in=in+(x>.370&&x<.380&&y<.240&&y>.200)
  in=in+(x>.610&&x<.640&&y<.240&&y>.213)
  in=in+(x>.330&&x<.340&&y<.227&&y>.213)
  in=in+(x>.350&&x<.370&&y<.227&&y>.200)
  in=in+(x>.500&&x<.510&&y<.213&&y>.160)
  in=in+(x>.460&&x<.470&&y<.200&&y>.173)
  in=in+(x>.510&&x<.520&&y<.200&&y>.173)
  in=in+(x>.470&&x<.500&&y<.187&&y>.160)
  out=in==0
  test=in+out*4
  c=pixel
  z=in*255:
  z=(z-1)*in+(z*z+c)*out
  out*|z|+in<test*out+z*in
  ;SOURCE: jdmask1.frm
}


JDMaskMoonStar {; requires Fractint 19.5
  row=imag(scrnpix)
  col=real(scrnpix)
  rows=imag(scrnmax)
  cols=real(scrnmax)
  y=row/(rows-1)
  x=col/(cols-1)
  in=0
  in=in+(x>.370&&x<.470&&y<.760&&y>.720)
  in=in+(x>.340&&x<.370&&y<.747&&y>.667)
  in=in+(x>.470&&x<.500&&y<.747&&y>.720)
  in=in+(x>.320&&x<.340&&y<.733&&y>.640)
  in=in+(x>.500&&x<.520&&y<.733&&y>.707)
  in=in+(x>.300&&x<.320&&y<.720&&y>.600)
  in=in+(x>.370&&x<.430&&y<.720&&y>.707)
  in=in+(x>.520&&x<.540&&y<.720&&y>.707)
  in=in+(x>.290&&x<.300&&y<.707&&y>.533)
  in=in+(x>.370&&x<.400&&y<.707&&y>.693)
  in=in+(x>.280&&x<.290&&y<.693&&y>.267)
  in=in+(x>.370&&x<.380&&y<.693&&y>.680)
  in=in+(x>.270&&x<.280&&y<.680&&y>.280)
  in=in+(x>.260&&x<.270&&y<.667&&y>.293)
  in=in+(x>.340&&x<.350&&y<.667&&y>.653)
  in=in+(x>.250&&x<.260&&y<.653&&y>.307)
  in=in+(x>.240&&x<.250&&y<.640&&y>.320)
  in=in+(x>.320&&x<.330&&y<.640&&y>.627)
  in=in+(x>.230&&x<.240&&y<.613&&y>.347)
  in=in+(x>.300&&x<.310&&y<.600&&y>.573)
  in=in+(x>.220&&x<.230&&y<.587&&y>.373)
  in=in+(x>.590&&x<.600&&y<.573&&y>.560)
  in=in+(x>.500&&x<.520&&y<.560&&y>.547)
  in=in+(x>.580&&x<.590&&y<.560&&y>.520)
  in=in+(x>.210&&x<.220&&y<.547&&y>.413)
  in=in+(x>.510&&x<.530&&y<.547&&y>.507)
  in=in+(x>.560&&x<.580&&y<.547&&y>.453)
  in=in+(x>.530&&x<.560&&y<.533&&y>.427)
  in=in+(x>.520&&x<.530&&y<.507&&y>.453)
  in=in+(x>.510&&x<.520&&y<.493&&y>.453)
  in=in+(x>.580&&x<.590&&y<.493&&y>.453)
  in=in+(x>.490&&x<.510&&y<.480&&y>.453)
  in=in+(x>.590&&x<.610&&y<.480&&y>.453)
  in=in+(x>.470&&x<.490&&y<.467&&y>.453)
  in=in+(x>.610&&x<.620&&y<.467&&y>.453)
  in=in+(x>.560&&x<.570&&y<.453&&y>.440)
  in=in+(x>.290&&x<.300&&y<.427&&y>.253)
  in=in+(x>.540&&x<.560&&y<.427&&y>.400)
  in=in+(x>.540&&x<.550&&y<.400&&y>.387)
  in=in+(x>.300&&x<.310&&y<.387&&y>.240)
  in=in+(x>.310&&x<.320&&y<.360&&y>.240)
  in=in+(x>.320&&x<.330&&y<.333&&y>.227)
  in=in+(x>.330&&x<.340&&y<.320&&y>.227)
  in=in+(x>.340&&x<.350&&y<.307&&y>.213)
  in=in+(x>.350&&x<.370&&y<.293&&y>.213)
  in=in+(x>.370&&x<.380&&y<.280&&y>.200)
  in=in+(x>.380&&x<.400&&y<.267&&y>.200)
  in=in+(x>.400&&x<.430&&y<.253&&y>.200)
  in=in+(x>.500&&x<.540&&y<.253&&y>.240)
  in=in+(x>.430&&x<.520&&y<.240&&y>.227)
  in=in+(x>.430&&x<.500&&y<.227&&y>.213)
  in=in+(x>.430&&x<.470&&y<.213&&y>.200)
  out=in==0
  test=in+out*4
  c=pixel
  z=in*(x+y/8)*1530:
  z=(z-1)*in+(z*z+c)*out
  out*|z|+in<test*out+z*in
  ;SOURCE: jdmask1.frm
}


JDMaskSmile {; requires Fractint 19.5
  row=imag(scrnpix)
  col=real(scrnpix)
  rows=imag(scrnmax)
  cols=real(scrnmax)
  y=row/(rows-1)
  x=col/(cols-1)
  in=0
  in=in+(x>.425&&x<.485&&y<.742&&y>.680)
  in=in+(x>.407&&x<.425&&y<.738&&y>.680)
  in=in+(x>.485&&x<.507&&y<.738&&y>.680)
  in=in+(x>.392&&x<.407&&y<.733&&y>.676)
  in=in+(x>.507&&x<.521&&y<.733&&y>.676)
  in=in+(x>.382&&x<.392&&y<.728&&y>.671)
  in=in+(x>.521&&x<.528&&y<.728&&y>.671)
  in=in+(x>.375&&x<.382&&y<.723&&y>.671)
  in=in+(x>.528&&x<.539&&y<.723&&y>.671)
  in=in+(x>.364&&x<.375&&y<.719&&y>.666)
  in=in+(x>.539&&x<.55&&y<.719&&y>.666)
  in=in+(x>.357&&x<.364&&y<.714&&y>.661)
  in=in+(x>.55&&x<.553&&y<.714&&y>.661)
  in=in+(x>.35&&x<.357&&y<.709&&y>.657)
  in=in+(x>.553&&x<.564&&y<.709&&y>.657)
  in=in+(x>.346&&x<.35&&y<.704&&y>.652)
  in=in+(x>.564&&x<.571&&y<.704&&y>.652)
  in=in+(x>.339&&x<.346&&y<.7&&y>.652)
  in=in+(x>.571&&x<.575&&y<.7&&y>.647)
  in=in+(x>.332&&x<.339&&y<.695&&y>.647)
  in=in+(x>.575&&x<.582&&y<.695&&y>.647)
  in=in+(x>.328&&x<.332&&y<.690&&y>.642)
  in=in+(x>.582&&x<.585&&y<.690&&y>.642)
  in=in+(x>.321&&x<.328&&y<.685&&y>.638)
  in=in+(x>.585&&x<.589&&y<.685&&y>.638)
  in=in+(x>.317&&x<.321&&y<.680&&y>.633)
  in=in+(x>.407&&x<.417&&y<.680&&y>.676)
  in=in+(x>.489&&x<.507&&y<.680&&y>.676)
  in=in+(x>.589&&x<.596&&y<.680&&y>.633)
  in=in+(x>.314&&x<.317&&y<.676&&y>.628)
  in=in+(x>.514&&x<.521&&y<.676&&y>.671)
  in=in+(x>.596&&x<.6&&y<.676&&y>.628)
  in=in+(x>.310&&x<.314&&y<.671&&y>.628)
  in=in+(x>.375&&x<.378&&y<.671&&y>.666)
  in=in+(x>.532&&x<.539&&y<.671&&y>.666)
  in=in+(x>.6&&x<.603&&y<.671&&y>.623)
  in=in+(x>.307&&x<.310&&y<.666&&y>.623)
  in=in+(x>.364&&x<.367&&y<.666&&y>.661)
  in=in+(x>.542&&x<.55&&y<.666&&y>.661)
  in=in+(x>.603&&x<.607&&y<.666&&y>.623)
  in=in+(x>.303&&x<.307&&y<.661&&y>.619)
  in=in+(x>.607&&x<.614&&y<.661&&y>.619)
  in=in+(x>.3&&x<.303&&y<.657&&y>.614)
  in=in+(x>.296&&x<.3&&y<.652&&y>.614)
  in=in+(x>.339&&x<.342&&y<.652&&y>.647)
  in=in+(x>.614&&x<.617&&y<.652&&y>.609)
  in=in+(x>.292&&x<.296&&y<.647&&y>.609)
  in=in+(x>.578&&x<.582&&y<.647&&y>.642)
  in=in+(x>.617&&x<.625&&y<.647&&y>.609)
  in=in+(x>.289&&x<.292&&y<.642&&y>.604)
  in=in+(x>.625&&x<.628&&y<.642&&y>.6)
  in=in+(x>.285&&x<.289&&y<.638&&y>.6)
  in=in+(x>.282&&x<.285&&y<.633&&y>.595)
  in=in+(x>.628&&x<.632&&y<.633&&y>.595)
  in=in+(x>.278&&x<.282&&y<.628&&y>.590)
  in=in+(x>.632&&x<.635&&y<.628&&y>.590)
  in=in+(x>.275&&x<.278&&y<.623&&y>.585)
  in=in+(x>.635&&x<.639&&y<.623&&y>.585)
  in=in+(x>.610&&x<.614&&y<.619&&y>.614)
  in=in+(x>.639&&x<.642&&y<.619&&y>.585)
  in=in+(x>.271&&x<.275&&y<.614&&y>.580)
  in=in+(x>.267&&x<.271&&y<.609&&y>.576)
  in=in+(x>.621&&x<.625&&y<.609&&y>.604)
  in=in+(x>.642&&x<.646&&y<.609&&y>.576)
  in=in+(x>.264&&x<.267&&y<.604&&y>.580)
  in=in+(x>.646&&x<.65&&y<.604&&y>.580)
  in=in+(x>.260&&x<.264&&y<.6&&y>.585)
  in=in+(x>.65&&x<.653&&y<.6&&y>.585)
  in=in+(x>.653&&x<.657&&y<.595&&y>.590)
  in=in+(x>.457&&x<.475&&y<.547&&y>.371)
  in=in+(x>.446&&x<.457&&y<.542&&y>.366)
  in=in+(x>.435&&x<.446&&y<.538&&y>.361)
  in=in+(x>.457&&x<.464&&y<.371&&y>.366)
  in=in+(x>.446&&x<.453&&y<.366&&y>.361)
  in=in+(x>.435&&x<.442&&y<.361&&y>.357)
  in=in+(x>.353&&x<.375&&y<.3&&y>.223)
  in=in+(x>.528&&x<.55&&y<.3&&y>.223)
  in=in+(x>.346&&x<.353&&y<.295&&y>.228)
  in=in+(x>.375&&x<.382&&y<.295&&y>.228)
  in=in+(x>.521&&x<.528&&y<.295&&y>.228)
  in=in+(x>.55&&x<.557&&y<.295&&y>.228)
  in=in+(x>.342&&x<.346&&y<.290&&y>.233)
  in=in+(x>.382&&x<.385&&y<.290&&y>.233)
  in=in+(x>.517&&x<.521&&y<.290&&y>.233)
  in=in+(x>.557&&x<.560&&y<.290&&y>.233)
  in=in+(x>.339&&x<.342&&y<.285&&y>.238)
  in=in+(x>.385&&x<.389&&y<.285&&y>.238)
  in=in+(x>.514&&x<.517&&y<.285&&y>.238)
  in=in+(x>.560&&x<.564&&y<.285&&y>.238)
  in=in+(x>.335&&x<.339&&y<.276&&y>.247)
  in=in+(x>.389&&x<.392&&y<.276&&y>.247)
  in=in+(x>.510&&x<.514&&y<.276&&y>.247)
  in=in+(x>.564&&x<.567&&y<.276&&y>.247)
  out=in==0
  test=in+out*4
  c=pixel
  z=in*(x+y/8)*536:
  z=(z-1)*in+(z*z+c)*out
  out*|z|+in<test*out+z*in
  ;SOURCE: jdmask1.frm
}


jdphc01 {
  cr=real(pixel)
  cq=imag(pixel)
  z=(cr*real(p1)+flip(cq*imag(p1)))*whitesq+\
    ((cr*real(p2)+flip(cq*imag(p2)))+p3)*(whitesq==0)
  p=(-.528,-.538)*whitesq+(.378,.303)*(whitesq==0):
  z=z*z+p
  |z|<4
  ;SOURCE: jdphc02.frm
}


jdphc02 {
  cr=real(pixel)
  cq=imag(pixel)
  z=(cr*real(p1)+flip(cq*imag(p1)))*whitesq+\
    ((cr*real(p2)+flip(cq*imag(p2)))+p3)*(whitesq==0)
  p=(.354,.35)*whitesq+(-.528,-.538)*(whitesq==0):
  z=z*z+p
  |z|<4
  ;SOURCE: jdphc02.frm
}


jdphc05 {
  z=pixel*whitesq+pixel*(whitesq==0)*(.9,.4)
  p=(-1.5,0)*whitesq+(-1,0)*(whitesq==0):
  z=z*z+p
  |z|<4
  ;SOURCE: jdphc02.frm
}


jdphc07 {
  cr=real(pixel)
  cq=imag(pixel)
  z=(fn1(cr)*real(p1)+flip(fn2(cq)*imag(p1)))*whitesq+\
    ((fn3(cr)*real(p2)+flip(fn4(cq)*imag(p2)))+p3)*(whitesq==0)
  p=(.3,.5)*whitesq+(.296,.53)*(whitesq==0):
  z=z*z+p
  |z|<4
  ;SOURCE: jdphc02.frm
}


jdphc08 {
  z=pixel*whitesq+(pixel+p3)*(whitesq==0)
  p=p1*whitesq+p2*(whitesq==0):
  z=z*z+p
  |z|<4
  ;SOURCE: jdphc02.frm
}


jdphc11 {; * copyright Jim Deutch, 1997
  z=pixel*whitesq + conj(pixel)*(whitesq==0):
  z=z*z*z*z*p1-fn1(z*z*p2)
  zr=real(z)
  zq=imag(z)
  (|z|<p3 && zr<zq)
  ;SOURCE: jdphc03.frm
}


jdphc12 {; * copyright Jim Deutch, 1997
  z=pixel*whitesq + conj(pixel)*(whitesq==0):
  z=z*z*fn2(z*z)*p1-fn1(z*z*p2)
  zr=real(z)
  zq=imag(z)
  (zr>p3 || zr>zq)
  ;SOURCE: jdphc03.frm
}


jdphc13 {; * copyright Jim Deutch, 1997
  z=pixel*whitesq + flip(pixel)*(whitesq==0):
  z=z*fn2(z*z)*p1-fn1(z*z*p2)
  zr=real(z)
  zq=imag(z)
  (zr>p3 || zr>zq*zq)
  ;SOURCE: jdphc03.frm
}


jdphc16 {; * copyright Jim Deutch, 1997
  z=pixel:
  z1=|z|-flip(imag(z))
  z2=imag(z)-flip(|z|)
  c=z1&&z2
  t1=z*z1
  t2=z2*z2
  z=z*z*z1*whitesq + z*z*z2*(whitesq==0)
  z=z*(t1-t2)
  t1*z1>t2*z2*p1
  ;SOURCE: jdphc03.frm
}


jdphc19 {; * copyright Jim Deutch, 1997
  w=whitesq*2-1
  z=pixel
  z1=real(z)*real(z)
  z2=real(z)*imag(z):
  t1=z*z*fn1(z1)
  t2=z*z*fn2(z2)
  z=(whitesq*t1*z1+t2*z2+z*z*(z1+w*z2))
  |z|<p1+4
  ;SOURCE: jdphc03.frm
}


jdphc20 {; * copyright Jim Deutch, 1997
  w=whitesq*2-1
  z=pixel
  z1=real(z)*real(z)
  z2=real(z)*imag(z):
  t1=z*z1*fn1(z)
  t2=z*z2*fn2(z)
  z=(whitesq*t1*z1+t2*z2+z*z*(z1+w*z2))
  h=t1/(t2||z2)
  z=h+z
  real(z)<p1+4
  ;SOURCE: jdphc03.frm
}


jdphc21 {; * copyright Jim Deutch, 1997
  w=whitesq*2-1
  z=pixel
  z1=real(z)*real(z)
  z2=real(z)*imag(z):
  t1=z*z1*fn1(z)
  t2=z*z2*fn2(z)
  z=(whitesq*t1*z1+t2*z2+z*z*(z1+w*z2))
  h=t1/(t2||z2)
  z=z^h+z
  real(z)<p1+4
  ;SOURCE: jdphc03.frm
}


jdphc22 {; * copyright Jim Deutch, 1997
  w=whitesq*2-1
  z=pixel
  z1=real(z)*real(z)
  z2=real(z)*imag(z):
  t1=z*z1*fn1(z)
  t2=z*z2*fn2(z)
  z=(whitesq*t1*z1+t2*z2+z*z*(z1+w*z2))
  h=t1/(t2||z2)
  z=z^h
  real(z)<p1+4
  ;SOURCE: jdphc03.frm
}


jdphc23 {; * copyright Jim Deutch, 1997
  w=whitesq*2-1
  z=pixel
  z1=real(z)*real(z)
  z2=real(z)*imag(z):
  t1=z*z1*fn1(z)
  t2=z*z2*fn2(z)
  z=(whitesq*t1*z1+t2*z2+z*z*(z1+w*z2))
  h=t1/(t2||z2)
  z=(h*z+1)*(z/h)
  real(z)<p1+4
  ;SOURCE: jdphc03.frm
}


jdphc24 {; * copyright Jim Deutch, 1997
  bail=real(p1)+4
  w=whitesq*2-1
  z=pixel*(whitesq+flip(whitesq-1))
  z1=real(z)*real(z)
  z2=real(z)*imag(z):
  t1=z*z*fn1(z1)
  t2=z*z*fn2(z2)
  z=whitesq*t1*z1+t2*z2+z*z*(z1+w*z2)
  h=t1/(t2||z2)
  z=z/h/h
  imag(z)<bail
  ;SOURCE: jdphc03.frm
}


jdphc30 {; * copyright Jim Deutch, 1997
  w1=whitesq*2-1             ; +1/-1
  w2=whitesq+flip(whitesq-1) ; (1,0)/(0,-1)
  w3=-.5+flip(sqrt(3)/2*w1)  ; +/- 120 deg rot
  c=fn1(pixel)
  z=pixel:
  z=z*z*c*w3
  (real(z)<bail)&&(imag(z)<bail)
  ;SOURCE: jdphc03.frm
}


jdphc31 {; * copyright Jim Deutch, 1997
  w1=whitesq*2-1             ; +1/-1
  w2=whitesq+flip(whitesq-1) ; (1,0)/(0,-1)
  w3=-.5+flip(sqrt(3)/2*w1)  ; +/- 120 deg rot
  c=fn1(pixel)
  z=pixel:
  z=z*z*c*w3-z*(z+c)*w2
  (real(z)<bail)&&(imag(z)<bail)
  ;SOURCE: jdphc03.frm
}


jdphc32 {; * copyright Jim Deutch, 1997
  w1=whitesq*2-1            ; +1/-1
  w3=-.5+flip(sqrt(3)/2*w1) ; +/- 120 deg rot
  c=fn1(pixel)
  z=pixel:
  z=z*z*c*w3-z*(z+c)*w1
  (real(z)<bail)&&(imag(z)<bail)
  ;SOURCE: jdphc03.frm
}


jdphc33 {; * copyright Jim Deutch, 1997
  bail=real(p1)
  w1=whitesq*2-1            ; +1/-1
  w3=-.5+flip(sqrt(3)/2*w1) ; +/- 120 deg rot
  c=fn1(pixel)
  z=pixel:
  z=z*z*c*w3-z*(z+c)*fn2(w3)
  (real(z)<bail)&&(imag(z)<bail)
  ;SOURCE: jdphc03.frm
}


jdphc34 {; * copyright Jim Deutch, 1997
  bail=real(p1)
  w1=whitesq*2-1            ; +1/-1
  w3=-.5+flip(sqrt(3)/2*w1) ; +/- 120 deg rot
  w4=.5+flip(sqrt(3)/2*w1)  ; +/- 60 deg rot
  c=fn1(pixel)
  z=pixel:
  z=z*z*pixel*fn2(w4)+z*z*c*w3
  (real(z)<bail)&&(imag(z)<bail)
  ;SOURCE: jdphc03.frm
}


jdphc35 {; * copyright Jim Deutch, 1997
  bail=real(p1)
  w1=whitesq*2-1            ; +1/-1
  w4=.5+flip(sqrt(3)/2*w1)  ; +/- 60 deg rot
  c=fn1(pixel)*whitesq+fn2(pixel)*(whitesq==0)
  z=pixel:
  z=z*z*c*w4
  (real(z)<bail)&&(imag(z)<bail)
  ;SOURCE: jdphc03.frm
}


jdphc36 {; * copyright Jim Deutch, 1997
  bail=real(p1)
  w1=whitesq*2-1             ; +1/-1
  w2=whitesq+flip(whitesq-1) ; (1,0)/(0,-1)
  w3=-.5+flip(sqrt(3)/2*w1)  ; +/- 120 deg rot
  w4=.5+flip(sqrt(3)/2*w1)   ; +/- 60 deg rot
  c=fn1(pixel*w2)
  z=pixel:
  z=z*z*c*w4+z*fn2(z+c)*p2
  |z|<bail
  ;SOURCE: jdphc03.frm
}


jdphc37 {; * modified OldManowar copyright Jim Deutch, 1997
  w1=whitesq*2-1            ; +1/-1
  w4=.5+flip(sqrt(3)/2*w1)  ; +/- 60 deg rot
  z0 = 0
  z1 = 0
  test = p1 + 3
  c = pixel*w4:
   z = z1*z1 + z0 + c
   z0 = z1
   z1 = z
    |z| < test
  ;SOURCE: jdphc03.frm
}


jdphc38 {; * Mod of Chuck Ebbert's Liar4, by Jim Deutch
         ; X: X is as true as (p1+1) times Y
         ; Y: Y is as true as X is false
         ; Calculate new x and y values simultaneously.
         ; Real part of p1 changes probability.  Use floating point.
         ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  sq2=sqrt(2)/2
  w=whitesq+(sq2+flip(sq2))*(whitesq==0)
  offset=(.5,.5)
  z=pixel*w+offset
  p = p1 + 1:
  z = 1-abs(imag(z)*p-real(z))+flip(1-abs(1-real(z)-imag(z)))
  |z| <= 1
  ;SOURCE: jdphc03.frm
}


jdphc38b {; * Mod of Chuck Ebbert's Liar1, by Jim Deutch
          ; p1=center of rotation offset
          ; real(p2) = rotation (deg) default = 45
          ; imag(p2) = magnification of rotated, default = 1
          ; X: X is as true as Y
          ; Y: Y is as true as X is false
          ; Calculate new x and y values simultaneously.
          ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  rotdeg=45*(real(p2)==0)+real(p2)*(real(p2)!=0)
  rotc=cos(rotdeg*pi/180)+flip(sin(rotdeg*pi/180))
  mag=(imag(p2)==0)+imag(p2)*(imag(p2)!=0)
  rotc=rotc/mag
  w=whitesq+rotc*(whitesq==0)
  offset=(.5,.5)+p1
  z=pixel*w+offset:
  z = 1-abs(imag(z)-real(z))+flip(1-abs(1-real(z)-imag(z)))
  |z| <= 1
  ;SOURCE: jdphc03.frm
}


jdphc38c1 {; * Mod of Chuck Ebbert's Liar1, by Jim Deutch
           ; p1=center of rotation offset
           ; real(p2) = rotation (deg) default = 45
           ; imag(p2) = magnification of rotated, default = 1
           ; requires periodicity=0
  rotdeg=45*(real(p2)==0)+real(p2)*(real(p2)!=0)
  rotc=cos(rotdeg*pi/180)+flip(sin(rotdeg*pi/180))
  mag=(imag(p2)==0)+imag(p2)*(imag(p2)!=0)
  rotc=rotc/mag
  w=whitesq+rotc*(whitesq==0)
  offset=(.5,.5)+p1
  iter=108
  z=pixel*w+offset:
  iter=iter+1
  z=z+(pixel*w+offset)*(iter==128)
  z = 1-abs(imag(z)-real(z))+flip(1-abs(1-real(z)-imag(z)))
  z = z*(iter>=128)*whitesq+z*(iter<128)*(whitesq==0)
  |z| <= 1
  ;SOURCE: jdphc03.frm
}


jdphc39 {; * mod of Ent by Scott Taylor
         ; Try params=.5/.75 and the first function as exp.
         ; Zoom in on the swirls around the middle.  There's a
         ; symmetrical area surrounded by an asymmetric area.
  bail=real(p2)
  w1=whitesq*2-1  ; +1/-1
  z = real(Pixel) + flip(imag(pixel))*w1
  y = fn1(z) 
  base = log(p1):
  z = y * log(z)/base
  |z| <= bail
  ;SOURCE: jdphc03.frm
}


JDrag (ORIGIN) {
  z=pixel+.5
  c=P1:
  z=c*z*(1-z)
  |z| <=4
  ;SOURCE: crocker.frm
}


JDrings {; Jim Deutch [104074,3171], 1996 requires Fractint 19.5
         ; p1=julia params
         ; p2=translation
         ; real(p3)=rings
  rs=real(p3)
  row=imag(scrnpix)
  col=real(scrnpix)
  rows=imag(scrnmax)
  cols=real(scrnmax)
  y=row/(rows-1)-.5
  x=col/(cols-1)-.5
  r=sqrt(x*x+y*y)
  in=(sin(r*pi*rs)>=0)
  out=in==0
  z=pixel+in*p2:
  z=z*z+in*p1+out*(-.52,.52)
  |z|<4
  ;SOURCE: jdwork4.frm
}


JDringsB {; Jim Deutch [104074,3171], 1996 requires Fractint 19.5
          ; p1=julia params
          ; p2=translation
          ; real(p3)=rings
  rs=real(p3)
  row=imag(scrnpix)
  col=real(scrnpix)
  rows=imag(scrnmax)
  cols=real(scrnmax)
  y=row/(rows-1)-.5
  x=col/(cols-1)-.5
  r=sqrt(x*x+y*y)
  srand(.5)
  in=(sin(r*pi*rs)+rand-.5>=0)
  out=in==0
  z=pixel+in*p2:
  z=z*z+in*p1+out*(-.52,.52)
  |z|<4
  ;SOURCE: jdwork4.frm
}


JDringsC {; Jim Deutch [104074,3171], 1996 requires Fractint 19.5
          ; p1=julia params
          ; p2=translation
          ; real(p3)=rings
  rs=real(p3)
  row=imag(scrnpix)
  col=real(scrnpix)
  rows=imag(scrnmax)
  cols=real(scrnmax)
  y=row/(rows-1)-.5
  x=col/(cols-1)-.5
  r=sqrt(x*x+y*y)
  srand(.5)
  inw=(sin(r*pi*rs)+rand-.5>=0)
  inb=(cos(r*pi*rs)+rand-.5>=0)
  in=inw*whitesq+inb*(whitesq==0)
  out=in==0
  z=pixel+in*p2:
  z=z*z+in*p1+out*(-.52,.52)
  |z|<4
  ;SOURCE: jdwork4.frm
}


JDringsD {; Jim Deutch [104074,3171], 1996 requires Fractint 19.5
          ; p1=julia params
          ; p2=translation
          ; real(p3)=rings
  rs=real(p3)
  T1=imag(p3)
  row=imag(scrnpix)
  col=real(scrnpix)
  rows=imag(scrnmax)
  cols=real(scrnmax)
  y=row/(rows-1)-.5
  x=col/(cols-1)-.5
  r=sqrt(x*x+y*y)
  srand(.5)
  inw=(sin(r*pi*rs)+(rand-.5)*T1>=0)
  inb=(cos(r*pi*rs)+(rand-.5)*T1>=0)
  in=inw*whitesq+inb*(whitesq==0)
  out=in==0
  z=pixel+in*p2:
  z=z*z+in*p1+out*(-.52,.52)
  |z|<4
  ;SOURCE: jdwork4.frm
}


JDSlowtree {; Jim Deutch, 1996 - requires periodicity=0
  hitst=|pixel-op|
  op=pixel
  mp=(0,0)
  srand(-.5):
  r=rand
  r1=r<.25
  r2=r<.5*(r1==0)
  r3=r<.75*(r1==0)*(r2==0)
  r4=r>.75
  x=real(mp)
  y=imag(mp)
  mp=(.5+.5*x-.3*y+flip(.5+.5*y))*r1+(.5+.5*x+flip(.5+.6*y))\
     *r2+(.3*x+.25*y+flip(.25*x+.3*y))*r3+(y+flip(x))*r4
  |mp-pixel|>(p1+1)*hitst
  ;SOURCE: 96_msg_3.frm
}


JDTileJulia {; Tiling Mandelbrot, Jim Deutch, 1996
   ; NOTE!:
   ; imag(p3)=tiling order
   ; p2=Julia parameters
   ;
  to=imag(p3)
  to=(to==0)*2+to ; default to 2 if zero
  cols=real(scrnmax)
  rows=imag(scrnmax)
  col=real(scrnpix)
  row=imag(scrnpix)
   ; save 1st pixel
  pixel1=pixel1+pixel*(row==0)*(col==0)
   ; increment between columns
  xinc=xinc+(pixel-pixel1)*(row==0)*(col==1)
   ; increment between rows
  yinc=yinc+(pixel-pixel1)*(row==1)*(col==0)
   ; which repetition of the image (1st is 0,0)
  xreps=floor((col+1)*to/cols)
  yreps=floor(row*to/rows)
   ; normal,inverted,mirror, & inverted mirror images for tiling
  x=xreps/2
  mirror=(floor(x)!=x)
  x=yreps/2
  invert=(floor(x)==x)
   ; recompute col
  mycol=(mycol+to)*(mirror==0)+(mycol-to)*mirror
  mycol=mycol*(oldxreps==xreps)+cols*(oldxreps!=xreps)*mirror
  oldxreps=xreps
   ; recompute row
  myrow=row*to-yreps*rows
  myrow=myrow*invert+(rows-myrow)*(invert==0)
   ; recompute pixel
  mypixel=pixel1+xinc*mycol+yinc*myrow
  z=mypixel:
  z=z*z+p2
  |z|<4
  ;SOURCE: tiling.frm
}


JDTileMandel {;Tiling Mandelbrot, Jim Deutch, 1996
   ; NOTE!:
   ; imag(p3)=tiling order
   ;
  to=imag(p3)
  to=(to==0)*2+to ; default to 2 if zero
  cols=real(scrnmax)
  rows=imag(scrnmax)
  col=real(scrnpix)
  row=imag(scrnpix)
   ; save 1st pixel
  pixel1=pixel1+pixel*(row==0)*(col==0)
   ; increment between columns
  xinc=xinc+(pixel-pixel1)*(row==0)*(col==1)
   ; increment between rows
  yinc=yinc+(pixel-pixel1)*(row==1)*(col==0)
   ; which repetition of the image (1st is 0,0)
  xreps=floor((col+1)*to/cols)
  yreps=floor(row*to/rows)
   ; normal,inverted,mirror, & inverted mirror images for tiling
  x=xreps/2
  mirror=(floor(x)!=x)
  x=yreps/2
  invert=(floor(x)==x)
   ; recompute col
  mycol=(mycol+to)*(mirror==0)+(mycol-to)*mirror
  mycol=mycol*(oldxreps==xreps)+cols*(oldxreps!=xreps)*mirror
  oldxreps=xreps
   ; recompute row
  myrow=row*to-yreps*rows
  myrow=myrow*invert+(rows-myrow)*(invert==0)
   ; recompute pixel
  mypixel=pixel1+xinc*mycol+yinc*myrow
  c=mypixel
  z=0:
  z=z*z+c
  |z|<4
  ;SOURCE: tiling.frm
}


JDTileMandelB {; Tiling Mandelbrot, Jim Deutch, 1996
   ; NOTE!:
   ; real(p3)=resolution: 320, 640, 800, 1024, 1200
   ; imag(p3)=tiling order (must be > 0!)
   ;
  to=imag(p3)
  cols=real(p3-1)
   ; special case handles 320x200 (640x400 not!)
  rows=.75*cols*(cols!=319)+200*(cols==319)
   ; compute current column
  col=(col+1)*(col!=cols)
   ; compute current row
  row=row+(col==0)
   ; save 1st pixel
  pixel1=pixel1+pixel*(row==0)*(col==1)
   ; increment between columns
  xinc=xinc+(pixel-pixel1)*(row==0)*(col==2)
   ; increment between rows
  yinc=yinc+(pixel-pixel1)*(row==1)*(col==1)
   ; which repetition of the image (1st is 0,0)
  xreps=floor(col*to/cols)
  yreps=floor(row*to/rows)
   ; normal,inverted,mirror, & inverted mirror images for tiling
  x=xreps/2
  mirror=(floor(x)!=x)
  x=yreps/2
  invert=(floor(x)==x)
   ; recompute col
  mycol=(mycol+to)*(mirror==0)+(mycol-to)*mirror
  mycol=mycol*(oldxreps==xreps)+cols*(oldxreps!=xreps)*mirror
  oldxreps=xreps
   ; recompute row
  myrow=row*to-yreps*rows
  myrow=myrow*invert+(rows-myrow)*(invert==0)
   ; recompute pixel
  mypixel=pixel1+xinc*mycol+yinc*myrow
  c=mypixel
  z=0:
  z=z*z+c
  |z|<4
  ;SOURCE: tiling.frm
}


JDWhatzit3 {; Jim Deutch [104074,3171], 1996 requires 19.5
  col=real(scrnpix)
  cols=real(scrnmax)
  row=imag(scrnpix)
  rows=imag(scrnmax)
  y=row*pi/1.999
  x=col*pi/1.999
  z=pixel*(sin(x)+flip(cos(y))):
  z=z*z+p1
  |z|<4
  ;SOURCE: jdwork4.frm
}


JDWhatzit4 {; Jim Deutch [104074,3171], 1996 requires 19.5
  col=real(scrnpix)
  cols=real(scrnmax)
  row=imag(scrnpix)
  rows=imag(scrnmax)
  y=row*pi/rows*pixel
  x=col*pi/cols/pixel
  z=pixel:
  z=z*z+(sin(x)+flip(cos(y)))
  |z|<4
  ;SOURCE: jdwork4.frm
}


Jeff1 {; Revised for Fractint v20 by G. Martin 
  z = Pixel:  
  z = fn1(z) + pixel 
  |z| <= 4 
  ;SOURCE: jeff.frm
}


Jeff2 { 
  z = Pixel:  
  z = fn1((z+(22/7^(fn2(1/4)))) + fn3(22/7-1/3)) + pixel
  |z| <= 4 
  ;SOURCE: jeff.frm
}


Jeff3 {; Revised for Fractint v20 by G. Martin 
  z = Pixel:  
  z = fn1(-z + sqrt(-2)/z^2) + pixel 
  |z| <= 4 
  ;SOURCE: jeff.frm
}


Jeff4 { 
  z = Pixel:  
  z = fn1(z + p^e * (fn2(z^2-z^3))) + pixel
  |z| <=6 
  ;SOURCE: jeff.frm
}


Jeff5 {; Revised for Fractint v20 by G. Martin 
  z = Pixel:  
  z = ((-z + fn1(z^2 - 4)) / 2) + pixel 
  |z| <=4 
  ;SOURCE: jeff.frm
}


Jeff6 { 
  z = Pixel:  
  z = fn1((z^2-z^3)*(p-e)) + pixel 
  |z| <=4 
  ;SOURCE: jeff.frm
}


Jeff7 {; Revised for Fractint v20 by G. Martin 
  z = Pixel:  
  z = fn1(z^2+z^3) * (fn2(z/z^4)/2) + z * fn3((z^(-5)/z)/2) + pixel 
  |z| <=4 
  ;SOURCE: jeff.frm
}


Jeff8 {; Revised for Fractint v20 by G. Martin 
  z = Pixel:  
  z = fn1(pi^2+z^3) * (fn2(e/z^4)/2) + z * fn3((e^(-5)/pi)/2) + pixel 
  |z| <=4 
  ;SOURCE: jeff.frm
}


jenn001 {; Arno Jennen
  a=(sin(pixel-1.25)+|sqr(pixel)|)/pixel
  z=pixel+log(pixel-a):
  z=(cosxx(z+21))+flip(z)
  |(z^1.12)|<=(a*1.75)
  ;SOURCE: je090801.frm
}


jenn002 {; Arno Jennen
  a=(sin(pixel-1.25)+|sqr(pixel)|)/pixel
  z=pixel+log(pixel-a):
  z=(cosxx(z+21))+flip(sin(z+10))
  |(z^(z+1.12))|<=(a*1.75)
  ;SOURCE: je090801.frm
}


jenn003 {; Arno Jennen
  a=(sin(pixel-1.25)+|sqr(pixel)|)/pixel
  z=pixel+log(pixel-a):
  z=(log(z+21))+sin(sin(z+10))
  |(z/(z+1.12))|<=(a*1.75)+(z*a)
  ;SOURCE: je090801.frm
}


jenn004 {; Arno Jennen
  a=(sin(pixel-1.25)+|sqr(pixel)|)/pixel
  z=exp(pixel^1.1)+log(pixel-(a^2)):
  z=(log(z+21))+sin(sin(z+10))
  |(z/(z+1.12))|<=(a*1.75)+(z*a)
  ;SOURCE: je090801.frm
}


jenn005 {; Arno Jennen
  a=(sin(|pixel-1.25|))<pixel
  z=pixel+log(pixel-a):
  z=(cosxx(z+21))+flip(z)
  |(z^1.12)|<=(a*1.75)
  ;SOURCE: je090801.frm
}


jenn006 {; Arno Jennen
  a=(sin(|pixel-1.25|))<pixel
  z=pixel+log(pixel-a):
  z=(cosxx(z+21))+flip(z)
  |(z^(1-a))|<=(a*1.75)
  ;SOURCE: je090801.frm
}


jenn007 {; Arno Jennen
         ; Revised for Fractint v20 by G. Martin
  a=(sin(|pixel-1.25|))<pixel
  z=(pixel)+sqr(pixel-a):
  z=flip(z)
  |(z^(1-a))|<=(a*1.75)
  ;SOURCE: je090801.frm
}


jenn008 {; Arno Jennen
  a=(cotanh(pixel-6.47)+|tanh(pixel)|)/pixel
  z=sin(pixel+a)+exp(pixel-a):
  z=(cosxx(z+51))+flip(z)+sin(z)
  |(z^1.15)|<=(a*4.33)
  ;SOURCE: je090801.frm
}


jenn009 {; Arno Jennen
  a=(sin(|pixel-1.25|))<pixel
  z=(pixel+8.76)-(cos(pixel*7.79))
  z=pixel+cotan(pixel-a):
  z=(cosxx(z+82))+sin(z)
  |(z^(1-a))|<=(a*1.75)
  ;SOURCE: je090801.frm
}


jenn010 {; Arno Jennen
  a=(sin(|pixel-1.25|))<pixel
  z=(pixel+0.44)-(log(pixel*6.59))
  z=pixel+cotan(pixel-a):
  z=(cos(z+55))+sin(z)
  |(z^(1-a))|<=(a*1.15)
  ;SOURCE: je090801.frm
}


jenn011 {; Arno Jennen
  a=(exp(pixel))+(exp(pixel-1))
  z=pixel-a+b+cotan(pixel):
  z=a-(sin(z)+cotan(z))
  |(z)|>10
  ;SOURCE: je082701.frm
}


jenn012 {; Arno Jennen
  a=(exp(pixel))+(exp(pixel-1))
  z=pixel-a+cotan(pixel):
  z=sin(z-50)
  z=sqr(z*1.59)
  |(z)|<2000
  ;SOURCE: je082701.frm
}


jenn013 {; Arno Jennen
  a=(exp(pixel))+(exp(pixel-1))
  z=pixel-a+cotan(pixel):
  z=sin(z-25)+(z-atan(z))
  |(z)|<2000
  ;SOURCE: je082701.frm
}


jenn014 {; Arno Jennen
  a=(sin(pixel-1.25)+|sqr(pixel)|)/pixel
  z=pixel+log(pixel-a):
  z=(cosxx(z+21))+flip(z)
  |(z^1.12)|<=(a*1.75)
  ;SOURCE: je-001.frm
}


jenn015 {; Arno Jennen
  a=(sin(pixel-1.25)+|sqr(pixel)|)/pixel
  z=pixel+log(pixel-a):
  z=(cosxx(z+21))+flip(sin(z+10))
  |(z^(z+1.12))|<=(a*1.75)
  ;SOURCE: je-001.frm
}


jenn016 {; Arno Jennen
  a=(sin(pixel-1.25)+|sqr(pixel)|)/pixel
  z=pixel+log(pixel-a):
  z=(log(z+21))+sin(sin(z+10))
  |(z/(z+1.12))|<=(a*1.75)+(z*a)
  ;SOURCE: je-001.frm
}


jenn017 {; Arno Jennen
  a=(sin(pixel-1.25)+|sqr(pixel)|)/pixel
  z=exp(pixel^1.1)+log(pixel-(a^2)):
  z=(log(z+21))+sin(sin(z+10))
  |(z/(z+1.12))|<=(a*1.75)+(z*a)
  ;SOURCE: je-001.frm
}


jenn018 {; Arno Jennen
  a=(sin(|pixel-1.25|))<pixel
  z=pixel+log(pixel-a):
  z=(cosxx(z+21))+flip(z)
  |(z^1.12)|<=(a*1.75)
  ;SOURCE: je-001.frm
}


jenn019 {; Arno Jennen
  a=(sin(|pixel-1.25|))<pixel
  z=pixel+log(pixel-a):
  z=(cosxx(z+21))+flip(z)
  |(z^(1-a))|<=(a*1.75)
  ;SOURCE: je-001.frm
}


jenn020 {; Arno Jennen
         ; Revised for Fractint v20 by G. Martin 
  a=(sin(|pixel-1.25|))<pixel
  z=(pixel)+sqr(pixel-a):
  z=flip(z)
  |(z^(1-a))|<=(a*1.75)
  ;SOURCE: je-001.frm
}


jenn021 {; Arno Jennen
  a=(cotanh(pixel-6.47)+|tanh(pixel)|)/pixel
  z=sin(pixel+a)+exp(pixel-a):
  z=(cosxx(z+51))+flip(z)+sin(z)
  |(z^1.15)|<=(a*4.33)
  ;SOURCE: je-001.frm
}


jenn022 {; Arno Jennen
  a=(sin(|pixel-1.25|))<pixel
  z=(pixel+8.76)-(cos(pixel*7.79))
  z=pixel+cotan(pixel-a):
  z=(cosxx(z+82))+sin(z)
  |(z^(1-a))|<=(a*1.75)
  ;SOURCE: je-001.frm
}


jenn023 {; Arno Jennen
  a=(sin(|pixel-1.25|))<pixel
  z=(pixel+0.44)-(log(pixel*6.59))
  z=pixel+cotan(pixel-a):
  z=(cos(z+55))+sin(z)
  |(z^(1-a))|<=(a*1.15)
  ;SOURCE: je-001.frm
}


jenn024 {; Arno Jennen
  z=(pixel/(|pixel+9.95|)):
  a1=pixel+cosxx(z)
  a2=(a1+0.20)/pixel 
  z=(|z+pixel|)/(a1+a2)+sin(a2)
  |(z^(9.20-a1))|<=z
  ;SOURCE: je-001.frm
}


jenn025 {; Arno Jennen
  a=fn1(pixel-1)
  z=(a/p1)^(pixel*p2):
  z=fn2(z-1)+fn3(a^(z-p3))
  |z|<200
  ;SOURCE: je-001.frm
}


jenn026 {; Arno Jennen
  z=|pixel|-pixel+fn1(pixel*p1):
  z=sin(z)*sin(z*p1)
  |z|<78
  ;SOURCE: je-001.frm
}


jenn027 {; Arno Jennen
 a1=sin(pixel+1.125)
 a2=pixel/(pixel^1.775)
  z=|pixel-a1-a2|-pixel+sin(pixel*p1):
  z=sin(z)
  |z|<78
  ;SOURCE: je-001.frm
}


jenn028 {; Arno Jennen
  z=pixel^(pixel-1.25)
  z=(pixel*z)/(100-z):
  z=sin(z)+(z^2)+pixel
  z=sqr(z)+(pixel-(sin(z)))
  |z|<50
  ;SOURCE: je-001.frm
}


jenn029 {; Arno Jennen
  z=pixel^(pixel-6.50)
  z=(pixel*z)/(100-z):
  z=sin(z)+(z^2)+pixel
  z=conj(z)^(pixel+(cosxx(z)))
  |z|*50
  ;SOURCE: je-001.frm
}


jenn030 {; Arno Jennen
  z=pixel^(pixel-5.87)
  z=(pixel*z)/(12.5-(z*1.5)):
  z=log(z+z+log(z))*(z-(z*5.18)+(pixel-z))
  z=atanh(z)+((pixel*5.18)-(sin(z)))
  |z|<50
  ;SOURCE: je-001.frm
}


jenn031 {; Arno Jennen
  a=pixel
  z=pixel^(pixel-1.25)
  z=(pixel^(z*a)/(100-(z/a))):
  z=sin(z)+(z^2)+pixel
  z=sqr(z)+(pixel-(sin(z)))
  |z|<50
  ;SOURCE: je-001.frm
}


jenn032 {; Arno Jennen
 a1=pixel-1
 a2=(1/pixel)^sin(a1)
 a3=(a1*a2)^sqr(pixel)
  z=((a1/p1)^(pixel*a2))*a3*pixel:
  z=fn1(sin(z-sin(z)))+fn2(a1^(z-a2))+sqr(a3-z)+(a1*z)
  |z|<125
  ;SOURCE: je-001.frm
}


jenn033 {; Arno Jennen
  z=|pixel|+pixel+cosxx(pixel):
  z=fn1(z-5.75)
  |(z)|<78
  ;SOURCE: je082701.frm
}


jenn034 {; Arno Jennen
  z=|pixel|-pixel+flip(pixel):
  z=fn1(z+14)
  |(z)|<78
  ;SOURCE: je082701.frm
}


jenn035 {; Arno Jennen
  z=|pixel^14|+pixel+exp(pixel):
  z=(z-12/fn1(z))
  |(z)|<65
  ;SOURCE: je082701.frm
}


jenn036 {; Arno Jennen
  z=|fn1(pixel^14)|+pixel+(1-pixel):
  z=(z-12/fn1(z))
  |(z)|<65
  ;SOURCE: je082701.frm
}


jenn037 {; Arno Jennen
  z=|pixel+flip(pixel)|-pixel:
  z=fn1(z+14)
  z1=z*(fn1(0-pixel))
  z2=z1+z
  |z+z1|<50
  ;SOURCE: je082701.frm
}


jenn038 {; Arno Jennen
  z=pixel-|pixel|+cotan(pixel):
  z=fn1(z-5)
  |(z)|<20
  ;SOURCE: je082701.frm
}


jenn039 {; Arno Jennen
  a=(exp(pixel))+(exp(pixel-1))
  z=pixel-a+cotan(pixel):
  z=sin(z-50)
  |(z)|<2000
  ;SOURCE: je082701.frm
}


jenn040 {; Arno Jennen
  a=(exp(pixel))+(exp(pixel-1))
  z=pixel-a+cotan(pixel):
  z=sin((z*1.34)-50)
  |(z)|<2000
  ;SOURCE: je082701.frm
}


jenn041 {; Arno Jennen
  a=(exp(pixel))+(exp(pixel-1))
  z=pixel-a+cotan(pixel):
  z=sin((z*1.34)-50)
  z=a-(sin(z))
  |(z)|<2000
  ;SOURCE: je082701.frm
}


jenn042 {; Arno Jennen
  a=(exp(pixel))+(exp(pixel-1))
  z=pixel-a+b+cotan(pixel):
  z=a-(sin(z)+cotan(z))
  |(z)|<2000
  ;SOURCE: je082701.frm
}


jenn043 {; Arno Jennen
  a=(exp(pixel))+(exp(pixel-1))
  z=(pixel*1.47)-a+sqrt(pixel):
  z=sin(z*(z-(z*1.33)-(atan(z+25))))
  z=sin(a)+(pixel*2.25)+(z*1.75)
  |(z)|<2000
  ;SOURCE: je082701.frm
}


jenn044 {; Arno Jennen
  a1=(sin(pixel-p1)+|fn1(pixel)|)/pixel
  a2=a1^(flip(a1))
  a3=|a2-1.3|+a1
  z=pixel+log(pixel-a1-a2-a3):
  z=(fn2(z+21))+fn3(z)
  |(z^p2)|<=(a*p3)
  ;SOURCE: je-002.frm
}


jenn045 {; Arno Jennen
  a1=(flip(pixel-p1)-|fn1(pixel)|)/pixel
  a2=a1/(flip(a1))
  a3=|a2*1.3|+sin(a1)
  z=pixel+log(pixel-a1-a2-a3):
  z=(fn2(z*z))+fn3(z/p1)
  |(z^p2)|<=(a*p3)
  ;SOURCE: je-002.frm
}


jenn046 {; Arno Jennen
  q=real(pixel)+(pixel^2.5)
  x=flip(pixel-p1)
  y=sin(flip(pixel))
  z=(q^x)*(y^q):
  q=(z*p1)-(x*y)
  z=z+(q*x*y)^fn1(z)
  |(z+z)|<=100  
  ;SOURCE: je-002.frm
}


jenn047 {; Arno Jennen
  q=exp(pixel)
  z=fn1(q^2):
  z=q^z
  |(z)|<=100  
  ;SOURCE: je-002.frm
}


jenn048 {; Arno Jennen
  a=(sin(|flip(pixel/1.15)|))*pixel
  x=a+(a^(sin(pixel)))
  y=(a+x)^x
  z=(sqr(a)+sqr(x))-y:
  z=(fn1(z+y))+flip(z)
  |(z^a)|>(x*1.75)
  ;SOURCE: je-002.frm
}


jenn049 {; Arno Jennen
  q=(sin(|sin(pixel/p1)|))*pixel
  z=fn1(q^2):
  z=q^z
  |z|<=100  
  ;SOURCE: je-002.frm
}


jenn050 {; Arno Jennen
  z=fn1(pixel+0.05):
  z=sqr(flip(z)+(sqr(pixel)))
  |z|<=4
  ;SOURCE: je-003.frm
}


jenn051 {; Arno Jennen
  a=pixel+(0.5,1)
  z=sin(pixel+(cosh(1/a))):
  z=sqr(exp(z)+(fn1(pixel)))
  |z|<=10
  ;SOURCE: je-003.frm
}


jenn052 {; Arno Jennen
  z=sin(pixel+0.05):
  z=sqr(fn1(z)+(sqr(pixel)))
  |z|<=4-(sin(z))
  ;SOURCE: je-003.frm
}


jenn053 {; Arno Jennen
  z=pixel+(((4,2)-pixel)/(10,8)):
  z=fn1(z^(1.2,0.1))+pixel
  |z|<=4
  ;SOURCE: je-003.frm
}


jenn054 {; Arno Jennen
  z=sin(pixel+0.05):
  z=fn1(sin(z)/p1)
  |z|<=4-(sin(z))
  ;SOURCE: je-003.frm
}


jenn055 {; Arno Jennen
  z=pixel:
  z=sqr(z)+(log(pixel)*p1)
  z=(z+(cosh(z)))*(z^(fn1(z)))
  |z|<=4
  ;SOURCE: je-003.frm
}


jenn056 {; Arno Jennen
  z=pixel
  z1=(pixel/p1)+pixel:
  a=sin(z-1)*(pixel-1)
  z=fn1(a)+pixel
  z=z1=sin(z)
  |z|<=15
  ;SOURCE: je-003.frm
}


jenn057 {; Arno Jennen
  z=pixel
  test=(p1*p2)/pixel:
  z=fn1(sqr(z)+pixel)-test
  |z|<=4
  ;SOURCE: je-004.frm
}


jenn058 {; Arno Jennen
  x=sin(pixel)
  z=log(p1/pixel):
  z=x-(cotan(1/sin((x/z))))
  z=1-((exp(z)))*(x/2)*(fn1(z))
  |z|<=4
  ;SOURCE: je-004.frm
}


jenn059 {; Arno Jennen
  x=(sin(1/2/sin(pixel-tan(pixel/0.33))))+(pixel/(1/2/pixel))
  y=fn1(x)
  z=(x-pixel)*(pixel<(1/2/pixel)):
  z=(p1+(fn1(x)/sqr(z)/sqr(y)))*x
  |z|<=4
  ;SOURCE: je-004.frm
}


jenn060 {; Arno Jennen
  z=pixel^(1-pixel):
  za=fn1(z*(|fn2(z)*pixel+(fn3(e^4.8))|*0.015625*0.25))
  zb=sqr(sqr(za)*(za+za+za)*(za/z/za/z))
  zc=1-((cos(z)))*(x+p1)+(cos(z*p2))
  zd=zc<|(za-zc)|+(zb-zc)
  ze=za+zb, zf=zc+zd
  z=(za*ze*zc*zd)+(za+zb)+(zc*zf)
  |z|>4
  ;SOURCE: je-004.frm
}


jenn061 {; Arno Jennen
  a=(0.25,1)*(log(pixel)^e)
  b=(0.25,1)*(log(a)^e)
  z=pixel-(a/b):
  z=sqr(z)+pixel
  z=z=sin(z)
  |z|<=4
  ;SOURCE: je-004.frm
}


jenn062 {; Arno Jennen
  y=cotan(1/(1/pixel))
  z=y-sin(cabs(pixel*0.5)):
  z=|(fn1(z*10)+(pixel/4))|+sqr(z)
  |z|<=4
  ;SOURCE: je-005.frm
}


jenn063 {; Arno Jennen
  x=exp(pixel), y=cotan(1/(1/x/pixel))
  z=y-sin(cabs((pixel*0.5)+x)):
  yz=(z/2)+fn1(x)
  z=|(exp(z*10)+(pixel/4))|+sqr(yz)
  |z|<=4
  ;SOURCE: je-005.frm
}


jenn064 {; Arno Jennen
  c=p1
  d=0.5
  z=pixel*(pixel+d):
  z=((z^3+z^2+z)^2)+c
  |z|<=4
  ;SOURCE: je-005.frm
}


jenn065 {; Arno Jennen
  c=pixel*pixel*p1
  d=0.5^pixel
  z=pixel*(pixel+d):
  z=((z^3+z^2+z)^2)+c
  |z|<=4
  ;SOURCE: je-005.frm
}


jenn066 {; Arno Jennen
  z1=fn1(fn2((pixel)+p1))
  z2=(z1^2)+z1
  z3=z2^2
  z=cotan(z1+z2+z3):
  z=cosh((z*(1,-1)))+(pixel^3)
  |z|<=4
  ;SOURCE: je-005.frm
}


jenn067 {; Arno Jennen
  z=pixel:
  z=sin(sqr(z)+z)+pixel
  |z|<=4
  ;SOURCE: je-005.frm
}


jenn072 {; Arno Jennen
  z=pixel:
  z=fn1(sqr(z)+pixel)+pixel
  |z|<=4
  ;SOURCE: je-006.frm
}


jenn073 {; Arno Jennen
  y=(pixel+1)*(pixel+2)
  z=y=pixel:
  z=(fn1(z)*sqr(z))+y
  |z|<=4
  ;SOURCE: je-006.frm
}


jenn074 {; Arno Jennen
  x=1/fn1(pixel)
  y=(x*x)+pixel
  z=y=pixel:
  z=fn1(sqr(y)*sqr(z))+pixel 
  |z|<=4
  ;SOURCE: je-006.frm
}


jenn075 {; Arno Jennen
  x=(1+pixel)/fn1(pixel)
  y=((x*x)/fn1(x))+pixel
  z=y=pixel:
  z=asin(fn1(y)*sqr(z))+pixel 
  |z|<=4
  ;SOURCE: je-006.frm
}


jenn076 {; Arno Jennen
  x=1/pixel
  x1=(1+pixel)/pixel
  y=(x*x*x)-x1
  z=y=pixel:
  z=sqr(sqr(y)*fn1(z))+pixel 
  |z|<=4
  ;SOURCE: je-006.frm
}


jenn077 {; Arno Jennen
  x=pixel
  y=x+fn1((x*fn1(x)))
  z=x=y=pixel-sqr(pixel):
  z=asin(fn1(y)*sqr(z))+pixel 
  |z|<=4
  ;SOURCE: je-006.frm
}


jenn078 {; Arno Jennen
  y=(pixel+1)*(pixel+2)
  z=y=sin(pixel+y):
  z=(sqr(z)*sqr(z))+(y*fn1(sqr(y)))
  |z|<=4
  ;SOURCE: je-006.frm
}


jenn079 {; Arno Jennen
  z=fn1(sin(pixel)+sqr(pixel)):
  z=sin(sqr(z)+pixel)+pixel
  |z|<=4
  ;SOURCE: je-006.frm
}


jenn080 {; Arno Jennen
  z=sinh(fn1(pixel)+sqr(pixel)):
  z=fn1(sqr(z)+pixel)+pixel
  |z|<=4
  ;SOURCE: je-006.frm
}


jenn081 {; Arno Jennen
  y=(pixel+1)*(pixel+2)
  z=y=pixel:
  z=(abs(z)*sqr(fn1(z*z)))+y
  |z|<=4
  ;SOURCE: je-006.frm
}


jenn082 {; Arno Jennen
  y=(pixel+1)*(pixel+2)
  z=y=pixel:
  z=(fn1(z)*fn2(z))+y
  |z|<=4
  ;SOURCE: je-006.frm
}


jenn11 {; Arno Jennen
  z=(pixel/(|pixel+9.95|)):
  a1=pixel+cosxx(z)
  a2=(a1+0.20)/pixel 
  z=(|z+pixel|)/(a1+a2)+sin(a2)
  |(z^(9.20-a1))|<=z
  ;SOURCE: je090801.frm
}


jfn2fn {
  z=pixel:
  power = fn2(z)
  z = fn1(z)^power + p1
  |z| < p2
  ;SOURCE: fractals.frm
}


jfnc {
  z=pixel, c=p1:
  z=sqr(z)+c
  c=c+p2*fn1(c)
  |z| <= 4
  ;SOURCE: explode.frm
}


jfnz {
  z=pixel, c=p1:
  z=sqr(z)+c
  c=c+p2*fn1(z)
  |z| <= 4
  ;SOURCE: explode.frm
}


JGen_Maxi {; generalized Minimax-JuliaSet 
           ; (p1 and p2 may not both be 0!)
           ; p3 is the constant!
           ; p1 = (-1,0) and p2 = (0,-1) gives Jpm
           ; p1 = (1,0)  and p2 = (0,-1) gives JConj
           ; p1 = (-1,0) and p2 = (0,1)  gives JXConj
  IF(p1==0)
    IF(p2==0)
      p1 = -1
      p2 = flip(-1) ; use Jpm as default
    ENDIF
  ENDIF
  z = pixel
  IF(p3==0)
    p3 = 0.3 + flip(0.6) ; default as in JULIA
  ENDIF
  a = p3
  ra = real(a)
  ia = imag(a)
  b = real(p1)*ra + real(p2)*ia + flip(imag(p1)*ra+imag(p2)*ia)
  bailout = 8 + |p3|:
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


JGen_Mini {; generalized Minimax-JuliaSet 
           ; (p1 and p2 may not both be 0!)
           ; p3 is the constant!
           ; p1 = (-1,0) and p2 = (0,-1) gives Jpm
           ; p1 = (1,0)  and p2 = (0,-1) gives JConj
           ; p1 = (-1,0) and p2 = (0,1)  gives JXConj
  IF(p1==0)
    IF(p2==0)
      p1 = -1
      p2 = flip(-1) ; use Jpm as default
    ENDIF
  ENDIF
  z = pixel
  IF(p3==0)
    p3 = 0.3 + flip(0.6) ; default as in JULIA
  ENDIF
  a = p3
  ra = real(a)
  ia = imag(a)
  b = real(p1)*ra + real(p2)*ia + flip(imag(p1)*ra+imag(p2)*ia)
  bailout = 8 + |p3|:
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


Ji_Maxi(ORIGIN) {; an automatic Mix
  z = pixel
  a = p2
  b = (0,1) * p2
  IF(p1==0)
    bailout=8+|p2|
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


Ji_Mini(ORIGIN) {; an automatic Mix
  z = pixel
  a = p2
  b = (0,1) * p2
  IF(p1==0)
    bailout=8+|p2|
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


JimsComMand2J {; Jim Muth
  z=c=pixel
  a=real(p1), b=imag(p1):
  z=(-z)^a*(c^b)+p2+(p3*c)
  |z| <= p3+100
  ;SOURCE: 97msg.frm
}


JimsComMandJ {; Jim Muth
  z=c=pixel
  a=real(p1), b=imag(p1):
  z=z^a*(c^b)+p2+(p3*c)
  |z| <=100
  ;SOURCE: 97msg.frm
}


JimsCompMand {; Jim Muth
  z=c=pixel:
  z=z^p1*(c^(p2-1))+c
  |z| <= p3+100
  ;SOURCE: 97msg.frm
}


JimsCompMand2 {; Jim Muth
               ; as posted in Fractal-Art, 4/28/97
  z=c=pixel:
  z=(-z)^p1*(c^p2)+c
  |z| <= p3+100
  ;SOURCE: 97msg.frm
}


JimsCompMand3 {; Jim Muth
  z=c=pixel:
  z=z^p1*(c^p2)+c
  |z| <= p3+100
  ;SOURCE: frac_art.frm
}


JimsCompMand_1 {; Jim Muth
  z=c=pixel:
  z=z^p1*(c^p2)+c
  |z| <= p3+100
  ;SOURCE: 0from_ml.frm
}


jix1 {
  z=pixel, c=whitesq+(z-1):
  z1=fn2(c)*p1
  z=(z1/fn1(z*fn4(z*p2)))
  |z|<4
  ;SOURCE: ad5.frm
}


jix2 {
  z1=pixel, f=fn1(z1)
  b1=abs(real(p1)), x=fn2(b1)
  k=real(p1)*(p2):
  w=(f-w)+whitesq
  u=b1-whitesq
  z1=w+u
  z2=fn4(k+(sin(u+tan(z))))
  z3=fn2(x+whitesq)-(p2*(u+whitesq)+cos(z))
  z=fn4(z1+(sin(z2+tan(z))))
  |z|<4
  ;SOURCE: ad6.frm
}


JJ_Maxi {; an automatic Mix
         ; with two J-Sets
         ; p1 <> p2!
  z = pixel
  IF(p1==p2)
    p2 = p2 + 0.1*(0,1)
  ENDIF
  a = p1
  b = p2
  bailout = |p1| + |p2| + 8:
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


JJ_Mini {; an automatic Mix
         ; with two J-Sets
         ; p1 <> p2!
  z = pixel
  IF(p1==p2)
    p2 = p2 + 0.1*(0,1)
  ENDIF
  a = p1
  b = p2
  bailout = |p1| + |p2| + 8:
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


Jm_01 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=(fn1(fn2(z^pixel)))*pixel
  |z|<=t
  ;SOURCE: fractint.frm
}


Jm_02 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=(z^pixel)*fn1(z^pixel)
  |z|<=t
  ;SOURCE: fractint.frm
}


Jm_03 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel))*pixel
  |z|<=t
  ;SOURCE: fractint.frm
}


Jm_03a {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel))+pixel
  |z|<=t
  ;SOURCE: fractint.frm
}


Jm_04 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel))
  |z|<=t
  ;SOURCE: fractint.frm
}


Jm_05 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(fn2((z^pixel)))
  |z|<=t
  ;SOURCE: fractint.frm
}


Jm_06 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(fn2(fn3((z^z)*pixel)))
  |z|<=t
  ;SOURCE: fractint.frm
}


Jm_07 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(fn2(fn3((z^z)*pixel)))*pixel
  |z|<=t
  ;SOURCE: fractint.frm
}


Jm_08 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(fn2(fn3((z^z)*pixel)))+pixel
  |z|<=t
  ;SOURCE: fractint.frm
}


Jm_09 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(fn2(fn3(fn4(z))))+pixel
  |z|<=t
  ;SOURCE: fractint.frm
}


Jm_10 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(fn2(fn3(fn4(z)*pixel)))
  |z|<=t
  ;SOURCE: fractint.frm
}


Jm_11 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(fn2(fn3(fn4(z)*pixel)))*pixel
  |z|<=t
  ;SOURCE: fractint.frm
}


Jm_11a {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(fn2(fn3(fn4(z)*pixel)))+pixel
  |z|<=t
  ;SOURCE: fractint.frm
}


Jm_12 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(fn2(fn3(z)*pixel))
  |z|<=t
  ;SOURCE: fractint.frm
}


Jm_13 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(fn2(fn3(z)*pixel))*pixel
  |z|<=t
  ;SOURCE: fractint.frm
}


Jm_14 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(fn2(fn3(z)*pixel))+pixel
  |z|<=t
  ;SOURCE: fractint.frm
}


Jm_15 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  f2=fn2(z), z=fn1(f2)*fn3(fn4(f2))*pixel
  |z|<=t
  ;SOURCE: fractint.frm
}


Jm_16 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  f2=fn2(z), z=fn1(f2)*fn3(fn4(f2))+pixel
  |z|<=t
  ;SOURCE: fractint.frm
}


Jm_17 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(z)*pixel*fn2(fn3(z))
  |z|<=t
  ;SOURCE: fractint.frm
}


Jm_18 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(z)*pixel*fn2(fn3(z)*pixel)
  |z|<=t
  ;SOURCE: fractint.frm
}


Jm_19 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(z)*pixel*fn2(fn3(z)+pixel)
  |z|<=t
  ;SOURCE: fractint.frm
}


Jm_20 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(z^pixel)
  |z|<=t
  ;SOURCE: fractint.frm
}


Jm_21 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(z^pixel)*pixel
  |z|<=t
  ;SOURCE: fractint.frm
}


Jm_22 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  sq=fn1(z), z=(sq*fn2(sq)+sq)+pixel
  |z|<=t
  ;SOURCE: fractint.frm
}


Jm_23 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(fn2(fn3(z)+pixel*pixel))
  |z|<=t
  ;SOURCE: fractint.frm
}


Jm_24 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z2=fn1(z), z=(fn2(z2*fn3(z2)+z2))+pixel
  |z|<=t
  ;SOURCE: fractint.frm
}


Jm_25 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(z*fn2(z)) + pixel
  |z|<=t
  ;SOURCE: fractint.frm
}


Jm_26 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(fn2(z)) + pixel
  |z|<=t
  ;SOURCE: fractint.frm
}


Jm_27 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  sqrz=fn1(z), z=sqrz + 1/sqrz + pixel
  |z|<=t
  ;SOURCE: fractint.frm
}


Jm_27a {; generalized Jm Richard-Collard type
  z = pixel
  t = p1+4:
  sqrz = fn1(z), z=sqrz + 1/sqrz + pixel
  |z|<=t
  ;SOURCE: improved.frm
}


Jm_28 (xaxis) {; Jm Collard-Richard
  z=pixel:
  z=fn1(z)^fn2(z)+pixel
  |z|<=4        
  ;SOURCE: jmcr2.frm
}


Jm_29 (xaxis) {; Jm Collard-Richard
  z=pixel:
  z=fn1(z)^fn2(z)*pixel
  |z|<=4        
  ;SOURCE: jmcr2.frm
}


Jm_30 (xaxis) {; Jm Collard-Richard
  z=pixel:
  z=fn1(z+pixel)^fn2(z+pixel)
  |z|<=4        
  ;SOURCE: jmcr2.frm
}


Jm_31 (xaxis) {; Jm Collard-Richard
  z=pixel:
  z=fn1(z*pixel)^fn2(z*pixel)
  |z|<=4        
  ;SOURCE: jmcr2.frm
}


Jm_32 (xaxis) {; Jm Collard-Richard
  z=pixel:
  z=fn1(z+pixel)^fn2(z*pixel)
  |z|<=4        
  ;SOURCE: jmcr2.frm
}


Jm_33 (xaxis) {; Jm Collard-Richard
  z=pixel:
  z=fn1(z*pixel)^fn2(z*pixel)*pixel
  |z|<=4        
  ;SOURCE: jmcr2.frm
}


Jm_34 (xaxis) {; Jm Collard-Richard
  z=pixel:
  z=fn1(z*pixel)^fn2(z*pixel)+pixel
  |z|<=4        
  ;SOURCE: jmcr2.frm
}


Jm_35 (xaxis) {; Jm Collard-Richard
  z=pixel:
  z=fn1(z+pixel)^fn2(z+pixel)+pixel
  |z|<=4        
  ;SOURCE: jmcr2.frm
}


Jm_36 (xaxis) {; Jm Collard-Richard
  z=pixel:
  z=fn1(z+pixel)^fn2(z+pixel)*pixel
  |z|<=4        
  ;SOURCE: jmcr2.frm
}


Jm_37 (xaxis) {; Jm Collard-Richard
  z=pixel:
  z=fn1(pixel)^fn2(z)
  |z|<=4       
  ;SOURCE: jmcr2.frm
}


Jm_38 (xaxis) {; Jm Collard-Richard
  z=pixel:
  z=fn1(z)^fn2(pixel)
  |z|<=4       
  ;SOURCE: jmcr2.frm
}


Jm_39 (xaxis) {; Jm Collard-Richard
  z=pixel:
  z=fn1(z)^fn2(1/z)+pixel
  |z|<=4       
  ;SOURCE: jmcr2.frm
}


Jm_40 (xaxis) {; Jm Collard-Richard
  z=pixel:
  z=fn1(z)^pixel+pixel^fn2(z)
  |z|<=4       
  ;SOURCE: jmcr2.frm
}


Jm_46 (xaxis) {; Jm Collard-Richard
  z=pixel:
  z=exp(-p1*z*z*cos(p2))*cos(p1*z*z*sin(p2))+pixel
  |z|<=4  
  ;SOURCE: jmcr2.frm
}


Jm_47 (xaxis) {; Jm Collard-Richard
  z=pixel:
  z=fn1(p1*z)/fn2(p2*z)+pixel
  |z|<=4 
  ;SOURCE: jmcr2.frm
}


Jm_50 (xaxis) {; Jm Collard-Richard
  z=pixel:
  z=fn1(z)/fn2(z)+fn3(pixel)
  |z|<=P1      
  ;SOURCE: jmcr2.frm
}


Jm_51 (xaxis) {; Jm Collard-Richard
  z=pixel, c=z^fn2(pixel):
  z=fn1(z)+c
  |z|<=25      
  ;SOURCE: jmcr2.frm
}


Jm_52 (xaxis) {; Jm Collard-Richard    -Use FLOAT
  z=pixel, c=z^fn2(pixel):
  z=fn1(z)+c
  c=fn3(c)+fn4(z)
  |z|<=25     
  ;SOURCE: jmcr2.frm
}


Jm_53 (xaxis) {; Jm Collard-Richard  -  Use Float
  c=z=pixel:
  z=fn1(z)+c
  c=fn2(c)+fn3(z)
  |z|<=25     
  ;SOURCE: jmcr2.frm
}


Jm_54 (xaxis) {; Jm Collard-Richard
               ; pouah !
  z=pixel:
  z=fn1(flip(z))+flip(fn2(z))+pixel
  ;SOURCE: jmcr2.frm
}


Jm_55 (xaxis) {; JM Collard-Richard
  z=pixel, stop=25:
  f1=z^p1
  f2=z^p2
  z=fn1(f1)*fn2(f2)+pixel
  |z|<=25      
  ;SOURCE: jmcr2.frm
}


Jm_56 (xaxis) {; Jm Collard-Richard
  z=pixel, stop=25:
  f1=z^p1
  f2=z^p2
  z=fn1(f1)/fn2(f2)+pixel
  |z|<=stop    
  ;SOURCE: jmcr2.frm
}


Jm_57 (xaxis) {; Jm Collard-Richard
  z=pixel, stop=25:
  f1=1/(z^p1)
  f2=1/(z^p2)
  z=fn1(f1)*fn2(f2)+pixel
  |z|<=stop    
  ;SOURCE: jmcr2.frm
}


Jm_58 (xaxis) {; Jm Collard-Richard
  z=pixel, stop=25:
  f1=1/(z^p1)
  f2=1/(z^p2)
  z=fn1(f1)/fn2(f2)+pixel
  |z|<=stop    
  ;SOURCE: jmcr2.frm
}


Jm_59 (xaxis) {; Jm Collard-Richard
  z=pixel, stop=25:
  f1=1/(z^p1)
  f2=1/(z^p2)
  z=(fn1(f1)/fn2(f2))*pixel
  |z|<=stop    
  ;SOURCE: jmcr2.frm
}


Jm_60 (xaxis) {; Jm Collard-Richard
  z=pixel, stop=25:
  f1=(z^p1)
  f2=(z^p2)
  z=(fn1(f1)/fn2(f2))*pixel
  |z|<=stop    
  ;SOURCE: jmcr2.frm
}


Jm_61 (xaxis) {; Jm Collard-Richard
  z=pixel, stop=25:
  f1=1/(z^p1)
  f2=1/(z^p2)
  z=fn1(f1)*fn2(f2)*pixel
  |z|<=stop    
  ;SOURCE: jmcr2.frm
}


Jm_62 (xaxis) {; Jm Collard-Richard
  z=pixel, stop=25:
  f1=(z^p1)
  f2=(z^p2)
  z=fn1(f1)*fn2(f2)*pixel
  |z|<=stop    
  ;SOURCE: jmcr2.frm
}


Jm_ducks (XAXIS) {; Jm Collard-Richard
   ; Not so ugly at first glance and lot of corners to zoom in.
   ; try this: corners=-1.178372/-0.978384/-0.751678/-0.601683
  z=pixel, tst=p1+4, t=1+pixel:
  z=sqr(z)+t
  |z|<=tst
  ;SOURCE: fractint.frm
}


jma10 {
  z=pixel:
  x=fn1(1-(p1/z))
  y=fn2(1+(p2/z))
  x1=(y*y-x*x)+(2*(x+y))
  y1=2*x*y-(2*(x+y))
  x2=1/x*1/x, y2=1/y*1/y, x3=x2*x, y3=y2*y
  a=real(p1), b=imag(p1)
  z=fn3(x3+(y3/z)-1)/(z*(a+b)+whitesq)
  |z|<4
  ;SOURCE: ad5.frm
}


JMask {; Ron Barnett, 1993
  z = fn1(pixel):
  z = P1*fn2(z)^2 + P2
  |z| <= 4
  ;SOURCE: fractint.frm
}


JMask2 {; Ron Barnett, 1995      
  z = fn1(pixel):
  z = P1*fn2(z)^2 + P2*fn3(z)^2 + P3 
  |z| <= 4
  ;SOURCE: reb006.frm
}


JMaskghost {; Ron Barnett, 1998
        ; use decomp=256
        ; real(p1) = bailout
        ; imag(p1) = "ghost" adjustment:
  maxr = real(p1), scale = imag(p1)*pi/128
  iterexp = 0, iter = 1, zc = fn1(pixel), background = pixel:
  iterexp = iterexp + exp(-cabs(zc)), iter = iter + 1
  zc = P2*fn2(zc)^2 + P3
  IF ((cabs(zc) > maxr) || (iter == maxit))
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


jmat2 {; Replaced variable "e" with "ee" 5/05/99. G. Martin
  z=g=pixel:
  a=real(p1), b=imag(p1), c=real(p2), d=real(p3), ee=imag(p3)
  h=fn1(z^a)/fn2(g-1/-ee)
  j=fn3((c*z)^(d+g))
  z=fn4(z*j)+whitesq
  |z|<4
  ;SOURCE: ad5.frm
}


jmx6 {
  z=pixel:
  z1=tan(fn4(cos(z)))
  a=fn2(z1*p1)
  z=(fn4(a))*fn1(p2/(a-whitesq)+1/z1)
  |z|<4
  ;SOURCE: ad5.frm
}


joc {
  z=pixel, c=p1:
  z=sqr(z)+c
  c=c+p2/c
  |z| <= 4
  ;SOURCE: explode.frm
}


joie {; Giuseppe Zito
  z = pixel
  c9 = 0.833795
  d3 = 0.844719
  : 
  x = real(z), y = imag(z)
  s0 = x
  s0 = s0 /x
  s0 = s0 -y
  s0 = s0 +c9
  s0 = s0 *x
  s0 = s0 *y
  newx = s0 
  s0 = x
  s0 = s0 *x
  s0 = s0 -d3
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4   
  ;SOURCE: zg.frm
}


JOne_Maxi {; generalized Minimax-Set (p1<>0!)
           ; normal J-Sets for p1=1
           ; p1 = 0 or p1 = -1 gives Jpm_Maxi
  z = pixel
  a = p2
  b = p1/cabs(p1) * p2
  IF(p3==0)
    bailout=8+|p2|
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


JOne_Mini {; generalized Minimax-Set (p1<>0!)
           ; normal J-Sets for p1=1
           ; p1 = -1 gives Jpm_Mini
  z = pixel
  a = p2
  b = p1/cabs(p1) * p2
  IF(p3==0)
    bailout=8+|p2|
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


JoWe-SG-8-12a {; Sylvie Gallet [101324,3444], Mar 1997
               ; modified by JoWeber 3/1997
               ; Requires periodicity = 0
  h = tan(pixel), pinv = 1/p1
  bailout = 2*p1, r = real(p2), ir = imag(p2)
  beta = asin(h/r), alpha = asin(h/(r*ir))
  z = pixel * (((h - sqrt(r*r - h*h) * tan(beta - alpha)) / h) * (h < r) \
      + (h >= r))
  center = round(p1*z) * pinv
  test = cabs(z-center) < 0.45*pinv
  z = cabs(center) + p1 * (test == 0)
  :
  z = z + pinv
  z <= bailout
  ;SOURCE: 97msg.frm
}


JoWe-SG-8-12b {; Sylvie Gallet [101324,3444], Mar 1997
               ; modified by JoWeber 3/1997
               ; Requires periodicity = 0
  h = tan(pixel), pinv = 1/p1
  bailout = 2*p1, r = real(p2), ir = imag(p2)
  beta = asin(h/r), alpha = asin(h/(r*ir))
  z = pixel * (((h - sqrt(r*r - h*h) * tan(beta - alpha)) / h) * (h < r) \
      + (h >= r))
  center = round(p1*z) * pinv
  test = cabs(z-center) < 0.7*pinv
  z = cabs(center) + p1 * (test == 0)
  :
  z = z + pinv
  z <= bailout
  ;SOURCE: 97msg.frm
}


JoWe-SG-8-12c {; Sylvie Gallet [101324,3444], Mar 1997
               ; modified by JoWeber 3/1997
               ; Requires periodicity = 0
  h = sin(pixel), pinv = 1/p1
  bailout = 2*p1, r = real(p2), ir = imag(p2)
  beta = asin(h/r), alpha = asin(h/(r*ir))
  z = pixel * (((h - sqrt(r*r - h*h) * tan(beta - alpha)) / h) * (h < r) \
      + (h >= r))
  center = round(p1*z) * pinv
  test = cabs(z-center) < 0.25*pinv
  z = cabs(center) + p1 * (test == 0)
  :
  z = z + pinv
  z <= bailout
  ;SOURCE: 97msg.frm
}


JoWe55c01 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
           ; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + cosxx(z) + 1/pixel:
  z=fn1(z) + c
  z=fn2(z) + c
  |z| <=10
  ;SOURCE: jo_we_55.frm
}


JoWe55c01if {; from a modified Carr-formula
             ; JoWeber 12/1997
  z = cosxx(z)
  c = z = 1/pixel + (z + 1/pixel):
  z = fn1(fn2(z) + c) + c
  |z| <= 10
  ;SOURCE: 97msg.frm
}


JoWe55c02 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
           ; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + fn3(z) + p1/pixel:
  z=fn1(z) + c
  z=fn2(z) + c
  |z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c02if {; from a modified Carr-formula
             ; JoWeber 12/1997
  z = fn3(z)
  c = z = 1/pixel + (z + p1/pixel):
  z = fn2(z) + c
  |z| <= p2
  ;SOURCE: 97msg.frm
}


JoWe55c03 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
           ; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + fn3(z) + p1/pixel:
  z=fn1(z) + c-0.14
  z=fn2(z) + c-0.14
  |z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c04 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
           ; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + fn3(z) + p1/pixel:
  z=fn1(z) + c-0.28
  z=fn2(z) + c-0.14
  |z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c05 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
           ; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=p1/pixel + fn3(z) + p1/pixel:
  z=fn1(z) + c*c
  z=fn2(z) + (c<0)
  |z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c06 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
           ; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=p1/pixel + fn3(z) + p1/pixel:
  z=fn1(z) + c*c
  z=fn2(z) + (z<0)
  |z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c07 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
  c=z=p1/pixel, c=fn1(z)+p1/pixel:
  z=(fn2(z*z)*fn3(z/pixel)-pixel)+c
  |z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c08 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
  z=oldz=c=p1/pixel, c=fn1(z):
  temp=z
  z=fn2((z*oldz+c)/pixel)
  oldz=temp
  z=fn3(z) + c
  |z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c09 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
  z=c=fn1(1/pixel):
  z=fn1(z*z) + fn2(z) + c
  |z| <=p1
  ;SOURCE: jo_we_55.frm
}


JoWe55c10 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
  z1=c1=fn1(1/pixel)
  z2=c2=fn2(1/pixel):
  z=(fn1(z1*z1) + tan(z1) + c1)*whitesq+(fn2(z2*z2)\ 
     + tan(z2) + c2)*(whitesq==0)
  z1=z
  z2=z
  |z| <=p1
  ;SOURCE: jo_we_55.frm
}


JoWe55c11 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
  c=z=p1/pixel, c=fn1(-1.1,0.24)/pixel:
  z=fn2(z) + c
  |z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c12 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
  c=z=p1/pixel, c1=flip(-1.1,0.24)/pixel, c2=conj(1.1,0.24)/pixel:
  z=(tan(z) + c1)*whitesq+(tan(z) + c2)*(whitesq==0)
  |z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c13 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
  c=z=p1/pixel, c1=flip(-1.1,0.24)/pixel, c2=conj(-1.1,0.24)/pixel:
  z=(tan(z) + c1)*whitesq+(tan(z) + c2)*(whitesq==0)
  |z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c14 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
  c=z=p1/pixel, c1=fn1(-1.1,0.24)/pixel, c2=fn2(-1.1,0.24)/pixel:
  z=(tan(z) + c1)*whitesq+(sin(z) + c2)*(whitesq==0)
  |z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c15 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
  c=z=p1/pixel, c1=fn1(-1.1,0.24)/pixel, c2=fn2(-1.1,0.24)/pixel:
  z=(fn3(z) + c1)*whitesq+(fn3(z) + c2)*(whitesq==0)
  |z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c16 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
  z=c=p1/pixel:
  z=fn1(c^z)/pixel
  z=(fn2(z) + 0.1) + c-1
  |z| <=p2
  ;SOURCE: jo_we_55.frm
}


Jowe55c17 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
  z=c=p1/pixel:
  z=(fn1(z)+c)/(z+0.5)+c
  |z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c18 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
  c=z=p1/pixel, c1=fn1(-1.1,0.24)/pixel, c2=fn2(1.1,0.24)/pixel
  c3=fn3(-1.1,-0.24)/pixel:
  z=(fn4(z) + c1)*(whitesq==1)+(fn4(z) + c2)*(whitesq==0)\
      +(fn4(z) + c3)*whitesq
  |z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c19 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
  z=c=p1/pixel:
  z=(fn2(fn1(z)) + c)/(z+0.75)+c
  |z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c20 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
  z=c=pixel:
  z=(fn2(fn1(z)) + c)/(z+0.75)+c
  |z| <=p1
  ;SOURCE: jo_we_55.frm
}


JoWe55c21 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
  z=c=p1/pixel:
  z=(fn2(fn1(z))+c)/(z-(fn3(-3,0.123)))+c
  |z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c22 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
  z=c=p1/pixel:
  a=z*z
  z=a+c+(a+(c-0.124))
  z=fn1(z)+c+(z*z+(c-0.124))
  |z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c22a {; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
  z=c=p1/pixel:
  a=z*z
  z=a+c+(a+(c-0.124))
  b=z*z
  z=b+c+(b+(c-0.124))
  |z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c23 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
  z=c=p1/pixel:
  a=z*z
  z=fn1(a+c)+(a+(c-0.124))/(z-0.75)+c
  |z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c24 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
  z=c=p1/pixel:
  a=z*z
  z=fn1(a+c)+(a+(c-0.124))/((z+1.25)+c)
  |z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c25 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
  z=c=p1/pixel:
  z=(z^2)*(z^2)+fn1(z-1.5)/fn2(pixel)
  |z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c26 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
  z=c=p1/pixel:
  z=(z^2)*(z^2)+fn1(z-0.3)/fn2(pixel)
  |z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c27 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
  z=c=p1/pixel:
  z=(z^2)*(z^2)+fn1(z-0.1)/fn2(pixel)
  |z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c28 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
  z=c=p1/pixel:
  z=(z^2)*(z^2)+fn1(z-0.3)/fn2(p2/pixel)
  |z| <=p3
  ;SOURCE: jo_we_55.frm
}


JoWe55c30 {; from a modified Carr-formula
           ; 5/1997 JoWeber CIS [100424,35]
  z=c=p1/pixel:
  z=(z*z*z)+fn1(z-0.3)/fn2(pixel-0.1)
  |z| <=p2
  ;SOURCE: 97msg.frm
}


JoWe55c34 {; from a modified Carr-formula
           ; 6/1997 JoWeber CIS [100424,35]
  c=z=p1/pixel:
  z=fn1(fn2(z^z^z^z^z)) + p2
  |z| <=p3
  ;SOURCE: 97msg.frm
}


JoWe55c36a {; from a modified Carr-formula
            ; 6/1997 JoWeber CIS [100424,35]
  c=z=p1/pixel:
  z1=fn1(z) + c
  z=fn2(z1) + p2
  |z| <=p3
  ;SOURCE: jo_we_71.frm
}


JoWe55c36b {; from a modified Carr-formula
            ; 6/1997 JoWeber CIS [100424,35]
  c=z1=z2=p1/pixel:
  z1=fn2(fn1(z1) + c) + p2
  z2=fn4(fn3(z2) + c) + p2
  z=z1*whitesq+z2*(whitesq==0)
  |z| <=p3
  ;SOURCE: jo_we_71.frm
}


JoWe55c45 {; from a modified Carr-formula
           ; 6/1997 JoWeber CIS [100424,35]
  c=z=1/pixel:
  z=sqr(z*(z+1.918)) + c
  z=sin(z*z) + c
  |z| <= 4
  ;SOURCE: 97msg.frm
}


JoWe55d36a {; from a modified Carr-formula
            ; 5/1999 JoWeber CIS [100424,35]
  c=z=p1/pixel:
  z1=fn1(z) + c
  z=fn2(z1) + c/p2
  |z| <=p3
  ;SOURCE: jo_we_71.frm
}


JoWe_01 (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  a1=sqr(z), a2=1/a1, a3=1/(sqr(a1)) 
  z=a1+a2+a3+pixel
  ;SOURCE: jo_we_32.frm
}


JoWe_02 (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  p=1*(|p1|<=0)+p1, q=1*(|p2|<=0)+p2:
  a1=sqr(z), a2=p/a1, a3=q/(sqr(a1)) 
  z=(fn1(a1)+fn2(a2)*fn1(a3))*pixel
  ;SOURCE: jo_we_32.frm
}


JoWe_02_1 (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  a1=sqr(z), a2=p1/a1, a3=p2/(sqr(a1)) 
  z=(fn1(a1)+fn2(a2)*fn1(a3))*pixel
  ;SOURCE: jo_we_33.frm
}


JoWe_02_PHC (XYAXIS) {; Jo Weber [100424,35], 1996  Requires passes=1
  z = pixel
  p=1*(|p1|<=0)+p1, q=1*(|p2|<=0)+p2:
  a1=sqr(z), a2=p/a1, a3=q/(sqr(a1))
  z=(fn1(a1)*whitesq+fn2(a2)*fn1(a3)*(whitesq==0))*pixel
  ;SOURCE: phc.frm
}


JoWe_02a (XAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  p=1*(|p1|<=0)+p1, q=1*(|p2|<=0)+p2:
  a1=sqr(z), a2=p/a1, a3=q/(sqr(a1)) 
  z=(fn1(a1)+fn1(a2)*fn1(a3))*pixel
  ;SOURCE: jo_we_32.frm
}


JoWe_03 (XAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  p=1*(|p1|<=0)+p1, q=1*(|p2|<=0)+p2:
  a1=sqr(z), a2=p/a1, a3=q/(sqr(a1)) 
  z=(fn1(a1)+fn2(a2)+fn1(a3))*z
  ;SOURCE: jo_we_32.frm
}


JoWe_03_PHC_n {; Jo Weber [100424,35], 1996     Requires passes=1
  z = c = pixel:
  a1=sqr(z), a2=p1*a1, a3=p2/(sqr(a1))
  t=fn1(z)
  z = (c^(sqr(t))-c*fn2(t))*whitesq+(c^(fn1(a3)/fn2(a2)))*(whitesq==0)+c
  |z|>=0.5
  ;SOURCE: phc.frm
}


JoWe_03_PHC_n1 {; Jo Weber [100424,35], 1996    Requires passes=1
  z = c = pixel:
  a1=sqr(z), a2=p1*a1, a3=p2/(sqr(a1))
  t=fn1(z)
  b1 = (c^(sqr(t)))*whitesq-c*fn2(t)*(whitesq==0)
  b2=(fn1(a2)-fn2(a1)*fn2(a3))*whitesq-(c^(fn1(a3)/fn2(a2)))*(whitesq==0)
  z=b1
  b3=(1.0>=|z|)
  if b3 then z=b2
  ;SOURCE: phc.frm
}


JoWe_03a (XAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  p=1*(|p1|<=0)+p1, q=1*(|p2|<=0)+p2:
  a1=sqr(z), a2=p/a1, a3=q/(sqr(a1)) 
  z=(fn1(a1)+fn1(a2)+fn1(a3))*z
  ;SOURCE: jo_we_32.frm
}


JoWe_03m {; Jo Weber [100424,35], 6/1996
  z = pixel:
  z=fn1(z)*z
  |z|>=0.05
  ;SOURCE: jowe_43.frm
}


JoWe_04 (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel:
  a1=fn1(z), a2=p1/a1 
  z=a1+a2+pixel
  ;SOURCE: jo_we_32.frm
}


JoWe_04_PHC {; Jo Weber [100424,35], 1996       Requires passes=1
  z = c =pixel:
  t=fn1(z)
  b1 = (c^(sqr(t)))*whitesq-c*fn2(t)*(whitesq==0)
  a1=fn1(z), a2=p1/a1
  b2=(a1-a2+pixel)*(whitesq==0)+c*a1*(a2-0.34)*whitesq
  z=b1
  b3=(|z|<=4)
  if b3 then z=b2
  ;SOURCE: phc.frm
}


JoWe_04a (XYAXIS) {; Jo Weber [100424,35], 6/1996
                   ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=abs(real(pixel)) + flip(imag(pixel))
  newpixel=real(newpixel) + flip(abs(imag(newpixel)))
  z = newpixel:
  a1=fn1(z), a2=p1/a1 
  z=a1+a2+newpixel
  ;SOURCE: jo_we_32.frm
}


JoWe_04a_PHC (XYAXIS) {; Jo Weber [100424,35], 1996  Requires passes=1
                       ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=abs(real(pixel)) + flip(imag(pixel))
  newpixel=real(newpixel) + flip(abs(imag(newpixel)))
  z = newpixel:
  a1=fn1(z), a2=p1/a1
  z=a1*whitesq+a2*(whitesq==0)+newpixel
  ;SOURCE: phc.frm
}


JoWe_04b (XYAXIS) {; Jo Weber [100424,35], 6/1996
                   ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=pixel*(-1)^(pixel>0)
  z = newpixel:
  a1=fn1(z), a2=p1/a1 
  z=a1+a2+newpixel
  ;SOURCE: jo_we_32.frm
}


JoWe_04b_PHC (XYAXIS) {; Jo Weber [100424,35], 1996  Requires passes=1
                       ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=pixel*(-1)^(pixel>0)
  z = newpixel:
  a1=fn1(z), a2=fn2(p1/a1)
  z=a1*whitesq+a2*(whitesq==0)+newpixel
  ;SOURCE: phc.frm
}


JoWe_04b_XY {; Jo Weber [100424,35], 10/1996
             ; Added variable "newpixel". G. Martin 6/27/99
  bailout=p3
  newpixel=pixel*(-1)^(pixel>0)
  z = newpixel:
  x1=real(z),  y1= imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y2))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}


JoWe_04c (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel:
  a1=fn1(z), a2=p1/a1 
  z=fn2(a1)+fn3(a2)+pixel
  ;SOURCE: jo_we_32.frm
}


JoWe_04c_PHC (XYAXIS) {; Jo Weber [100424,35], 1996  Requires passes=1
  z = pixel:
  a1=fn1(z), a2=p1/a1
  z=fn2(a1)*(whitesq==0)+fn3(a2)*whitesq+pixel
  ;SOURCE: phc.frm
}


JoWe_05 (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  p=1*(|p1|<0)+p1:
  a1=fn1(z), a2=p/a1 
  z=a1+a2+pixel
  ;SOURCE: jo_we_32.frm
}


JoWe_05m {; Jo Weber [100424,35] 9/1996
  z = pixel:
  a1=sqr(z), a2=1/a1
  z=fn1(a1)+a2+pixel
  |z|>=0.05
  ;SOURCE: jowe_43.frm
}


JoWe_05m2 {; Jo Weber [100424,35] 9/1996
  z = pixel:
  z=fn1(z*z)+(1/z*z)+pixel
  |z|>=0.05
  ;SOURCE: jowe_43.frm
}


JoWe_06 (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  p=1*(|p1|<0)+p1:
  a1=fn1(z), a2=p/a1 
  z=a1+a2
  ;SOURCE: jo_we_32.frm
}


JoWe_06m_01 {; Jo Weber [100424,35], 10/1996
  z = pixel:
  a1=1/fn1(z)
  z=a1+pixel
  ;SOURCE: jo_we_46.frm
}


JoWe_06m_02 {; Jo Weber [100424,35], 10/1996
  z = pixel:
  z=fn1(z)*fn1(z)*p2-pixel
  ;SOURCE: jo_we_46.frm
}


JoWe_06m_03a {; Jo Weber [100424,35], 10/1996
              ; bailout = p2
  z = pixel
  bailout=p2:
  a1=fn2(p1/fn1(z))
  z=a1+pixel
  |z|<=bailout
  ;SOURCE: jo_we_46.frm
}


JoWe_06m_03b {; Jo Weber [100424,35], 10/1996
              ; bailout = p2
  z = pixel
  bailout=p2:
  a1=fn2(p1/fn1(z))
  z=a1+z
  |z|<=bailout
  ;SOURCE: jo_we_46.frm
}


JoWe_06m_04 {; Jo Weber [100424,35], 10/1996
             ; bailout = p3
  z = pixel
  bailout = p3 :
  temp=p1/(fn2(z)*fn3(z))
  a1=1/temp
  a2=pixel^2
  z=a1+a2
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}


JoWe_06m_05 {; Jo Weber [100424,35], 10/1996
             ; bailout = p3
  z = pixel*pixel-(1-pixel)
  bailout = p3 :
  temp=p1/(fn1(z)*fn2(z))
  a1=1/temp
  a2=pixel^2
  z=a1+a2
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}


JoWe_06m_05o {; Jo Weber [100424,35], 10/1996
              ; bailout = p1
  z = pixel
  bailout=p1:
  z=fn1(z*z)*pixel+z
  |z|<=bailout
  ;SOURCE: jo_we_46.frm
}


JoWe_06m_PHC {; Jo Weber [100424,35], 10/1996
  z = pixel:
  a1=1/fn2(z)
  z=(fn1(z)*z)*(whitesq==0)+a1*whitesq+pixel
  ;SOURCE: jo_we_47.frm
}


JoWe_06m_PHC_1 {; Jo Weber [100424,35], 10/1996
  z = pixel:
  a1=p1/fn2(z)
  z=(fn1(z)*fn1(z)*p2-pixel)*(whitesq==0)+(a1-pixel)*whitesq
  ;SOURCE: jo_we_47.frm
}


JoWe_06m_PHC_1a {; Jo Weber [100424,35], 10/1996
                 ; baiout = p2
  z = pixel
  bailout=p2:
  a1=p1/fn2(z)
  z=(fn1(z*z)*pixel+z)*whitesq+(a1+pixel)*(whitesq==0)
  |z|<=bailout
  ;SOURCE: jo_we_47.frm
}


JoWe_06m_PHC_2 {; Jo Weber [100424,35], 10/1996
                ; bailout = p3
  z = pixel
  bailout=p3:
  a1=fn3(p1/fn2(z))
  z=(fn1(z)*fn1(z)*p2+pixel^2)*(whitesq==0)+(a1+pixel)*whitesq
  |z|<=bailout
  ;SOURCE: jo_we_47.frm
}


JoWe_07 (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  p=1*(|p1|<0)+p1:
  a1=fn1(z), a2=p/a1 
  z=a1+a2-pixel
  ;SOURCE: jo_we_32.frm
}


JoWe_08 (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  p=1*(|p1|<0)+p1:
  a1=fn1(z), a2=p/a1 
  z=(a1+a2)*pixel
  ;SOURCE: jo_we_32.frm
}


JoWe_09 (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  p=1*(|p1|<0)+p1:
  a1=fn1(z), a2=p/a1 
  z=(a1+a2)/pixel
  ;SOURCE: jo_we_32.frm
}


JoWe_10 (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  p = 1*(|p1|<0)+p1:
  a1 = fn1(z), a2=p/a1 
  z = (a1+a2)^pixel
  |z|>=0.1
  ;SOURCE: jo_we_32.frm
}


JoWe_10a (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  p=1*(|p1|<0)+p1:
  a1=fn1(z), a2=fn2(p)/a1 
  z=(a1+a2)^pixel
  |z|>=0.1
  ;SOURCE: jo_we_35.frm
}


JoWe_10b (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  p=1*(|p1|<0)+p1:
  a1=fn1(z), a2=fn2(p/a1) 
  z=(a1+a2)^pixel
  |z|>=0.1
  ;SOURCE: jo_we_35.frm
}


JoWe_11 (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  p=1*(|p1|<0)+p1 :
  a1=fn1(z), a2=p/a1 
  z=(a1+a2)^pixel
  |z|<=4
  ;SOURCE: jo_we_32.frm
}


JoWe_11a (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  p=1*(|p1|<0)+p1:
  a1=fn1(z), a2=fn2(p)/a1 
  z=(a1+a2)^pixel
  |z|<=4
  ;SOURCE: jo_we_35.frm
}


JoWe_11b (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  p=1*(|p1|<0)+p1:
  a1=fn1(z), a2=fn2(p/a1) 
  z=(a1+a2)^pixel
  |z|<=4
  ;SOURCE: jo_we_35.frm
}


JoWe_11b_PHC (XYAXIS) {; Jo Weber [100424,35], 1996 Requires passes=1
  z = pixel
  p=1*(|p1|<0)+p1:
  a1=fn1(z), a2=fn2(p/a1)
  a1=a1*whitesq, a2=a2*(whitesq==0)
  z=(a1+a2)^pixel
  |z|<=4
  ;SOURCE: phc.frm
}


JoWe_11b_PHC2 (XYAXIS) {; Jo Weber [100424,35], 1996, Requires passes=1
  z = pixel
  p=1*(|p1|<0)+p1:
  a1=fn1(z), a2=fn2(p/a1)
  a1=a1*whitesq, a2=a2*(whitesq==0)
  z=(a1-a2)^pixel
  |z|<=4
  ;SOURCE: phc.frm
}


jowe_12 {; Jo Weber, July 1996
  c=p1
  z=pixel:
  z=fn1(z)-c/fn2(z)
  |z|<5
  ;SOURCE: jo_we_38.frm
}


jowe_13 {; Jo Weber, July 1996
  c=p1
  z=pixel:
  z=fn1(z)-c/fn2(z)
  ;SOURCE: jo_we_38.frm
}


JoWe_13_PHC {; Jo Weber [100424,35], 1996   Requires passes=1
  c = p1
  z = pixel:
  a = fn1(z)
  b = c/fn2(z)
  z = (a-b)*whitesq+(a^b)*(whitesq==0)
  ;SOURCE: phc.frm
}


JoWe_14_PHC {; Jo Weber [100424,35], 1996  Requires passes=1
  z = c =pixel:
  a = fn1(z)
  b = c/fn2(z)
  z = (a/b)*whitesq+(a*b)*(whitesq==0)
  ;SOURCE: phc.frm
}


JoWe_14_PHC_2 {; Jo Weber [100424,35], 1996  Requires passes=1
  c=p1
  z=pixel:
  a=fn1(z)*c*whitesq
  b=c/fn2(z)*(whitesq==0)
  z=a+b*pixel
  ;SOURCE: phc.frm
}


JoWe_14_PHC_3 {; Jo Weber [100424,35], 1996  Requires passes=1
  c=p1*(whitesq==0)
  z=pixel:
  a=fn1(z)*c*whitesq
  b=c/fn2(z)*(whitesq==0)
  z=(a+b)*pixel
  ;SOURCE: phc.frm
}


JoWe_19_PHC {; Jo Weber [100424,35], 1996  Requires passes=1
  z = c = pixel:
  t=fn1(z)
  z = (c^(sqr(t)))*whitesq
  |z|>=0.5
  ;SOURCE: phc.frm
}


JoWe_19_PHC_2 {; Jo Weber [100424,35], 1996  Requires passes=1
  z = c = pixel:
  t=fn1(z)
  z = (c^(sqr(t)))*whitesq-c*fn2(t)*(whitesq==0)
  |z|>=0.5
  ;SOURCE: phc.frm
}


JoWe_19_PHC_3 {; Jo Weber [100424,35], 1996  Requires passes=1
  z = c = pixel:
  t=fn1(z)
  z = (c^(fn2(t)))*whitesq-p1*fn3(t)*(whitesq==0)
  |z|>=0.5
  ;SOURCE: phc.frm
}


JoWe_19_PHC_4 {; Jo Weber [100424,35], 1996  Requires passes=1
  z = c = pixel:
  t=fn1(z)
  z = (c^(fn2(t)))*whitesq+(c*fn2(t)*(whitesq==0))
  ;SOURCE: phc.frm
}


JoWe_20_PHC {; Jo Weber [100424,35], 1996  Requires passes=1
  z = c = pixel:
  t=fn1(z)
  t1=c^t
  u=fn2(z)
  t2=c^u
  t3=t1*(whitesq==0)+t2*whitesq
  z = c^(sqr(t3))
  |z|>=0.5
  ;SOURCE: phc.frm
}


JoWe_22_PHC  {; Jo Weber [100424,35] 9/1996
              ; mandel+julia needs passes=1
  z = c = pixel:
  z=(z*z+c)*whitesq+(z*z*z+(p1-1)*z-p1)*(whitesq==0)
  |z|<=4
  ;SOURCE: jowe_43.frm
}


JoWe_22_PHC_1  {; Jo Weber [100424,35] 9/1996 
                ; needs passes=1
  z = c = pixel:
  z=(z*z+c)*whitesq+(sqr(z)+p1)*(whitesq==0)
  |z|<=4
  ;SOURCE: jowe_43.frm
}


JoWe_22_PHC_4  {; Jo Weber [100424,35] 9/1996 
                ; needs passes=1
  z = c = pixel
  temp = p2:
  z=(temp*temp+c)*whitesq+(z*z*z+(p1-1)*z-p1)*(whitesq==0)
  temp=z
  |z|<=4
  ;SOURCE: jowe_43.frm
}


JoWe_24 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=sin(sqr(cos(p1*z+p2)))
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_25 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=p1*tan(z)-p2*sin(z)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_25_PHC {; Jo Weber [100424,35] 9/1996 
             ; needs passes=1
  z = c = pixel, temp=sqr(z):
  a=temp*z+c
  b=p1*temp
  z=a*whitesq+fn1(b)*(whitesq==0)
  ;SOURCE: jowe_43.frm
}


JoWe_26 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=sqr(cos(z))-sqr(sin(z))+tan(z)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_26_28_PHC {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=fn1(sqr(cos(z))-sqr(sin(z))\
    +tan(z))*whitesq+fn2(log(1-sqr(z)))*(whitesq==0)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_26_PHC {; Jo Weber [100424,35] 9/1996 
             ; needs passes=1
  z = c = pixel, temp=sqr(z):
  a=temp*z
  b=p1*temp
  z=a*whitesq+fn1(b)*(whitesq==0)
  temp=flip(sqr(z))*z
  ;SOURCE: jowe_43.frm
}


JoWe_27 {; Jo Weber [100424,35] 9/1996 
  z = pixel
  bailout=p3:
  z=fn1((p1+sqrt(z))/(p2*z-1))
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_27_PHC {; Jo Weber [100424,35] 9/1996 
             ; needs passes=1
   z = pixel:
   a=p1*fn1(z)
   b=p2*fn2(z)
   z=a*whitesq+b*(whitesq==0)
  ;SOURCE: jowe_43.frm
}


JoWe_27_PHC_1 {; Jo Weber [100424,35] 11/1996
  z=pixel:
  a=sqr((p1+sqrt(z))/(p2*z-1))
  b=sqrt((p3+sqrt(z))/(p2*z-1))
  z=a*whitesq+b*(whitesq==0)
  |z|<=25
  ;SOURCE: jo_we_50.frm
}


JoWe_28 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=log(1-sqr(z))
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_28_2 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  z=log(1-sqr(z))
  z=2*fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}


JoWe_28_3 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=log(1-sqr(z))
  z=p1*fn1(z)+p2*fn2(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_28_4 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=log(1-sqr(z))
  z=p1*fn1(z)+p2*fn2(z)
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_28_5 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=log(1-sqr(z))
  z=p1*fn1(z)+p2*fn2(z)
  z=fn3(z)-(z>=0)+(z<0)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_28_PHC {; Jo Weber [100424,35] 9/1996 
             ; needs passes=1
   z = pixel:
   a=p1*fn1(z)
   b=p2*fn2(z)
   z=a*whitesq+(sqr(z)+z+b)*(whitesq==0)
  ;SOURCE: jowe_43.frm
}


JoWe_28_PHC_1 {; Jo Weber [100424,35] 11/1996
               ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=log(1-sqr(pixel))
  z=newpixel
  bailout=p3:
  z=fn1(z)*whitesq+fn2(z)*(whitesq==0)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_28_PHC_2 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=log(1-sqr(z))
  z=fn1(z)*(whitesq==0)+fn2(z)*whitesq
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_29 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=log(sqrt((1-z)/(1+z)))
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_29_PHC {; Jo Weber [100424,35] 9/1996 
             ; needs passes=1
   z = pixel:
   a=p1*fn1(z)
   b=p2*fn2(z)
   z=a*whitesq+(sqr(z)+z+b)*(whitesq==0)
   |z|<=4
  ;SOURCE: jowe_43.frm
}


jowe_29m {; by Jo Weber, 100424,35 10/96
          ; bailout is p3
  z=pixel
  bailout=p3:
  z=fn1(fn2((p1-z)/(p2+z)))
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: 96msg.frm
}


JoWe_30 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=exp(z)*z^2/(p1-z)
  z=p2*fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_31 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  qad=sqr(z)
  z=exp(2*z)*(sqr(qad)-3*qad+6*z)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}


JoWe_32 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  qwurz=sqrt(z)
  su=p1^qwurz
  z=log((1+su)/(1-su))
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}


JoWe_33 {; Jo Weber [100424,35] 11/1996
         ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=pixel*pixel-(1-pixel)
  z=c=newpixel
  bailout=p3 :
  z=sqrt(p1*exp(z)+c)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}


JoWe_33_1 {; Jo Weber [100424,35] 11/1996
           ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=pixel*pixel-(1-pixel)
  z=c=newpixel
  bailout=p3 :
  z=sqr(p1*exp(z)+c)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_33_2 {; Jo Weber [100424,35] 11/1996
          ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=pixel*pixel-(1-pixel*pixel)
  z=c=newpixel
  bailout=p3:
  z=fn1(p1*fn2(z))+c
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_34 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  z=(exp(z)+1)/(exp(z)-1)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}


JoWe_34_1 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=(exp(z)+1)/(exp(z)-1)
  z=fn1(z)-(z>=0)+(z<0)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_35 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=3*sin(z)-5*sqr(sqr(sin(z)))
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_35_1 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=3*fn1(z)-5*fn2(fn2(fn3(z)))
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_35_1_PHC {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=3*fn1(z)*whitesq-5*fn2(fn2(fn3(z)))*(whitesq==0)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_35_2 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=p1*fn1(z)-p2*fn2(fn2(fn3(z)))
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_35_2_PHC {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=p1*fn1(z)*whitesq-p2*fn2(fn2(fn3(z)))*(whitesq==0)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_36 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  z=z/4-p1*sin(p2*z)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}


JoWe_37 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  qad=sqr(tan(z))
  z=sqr(qad)-2*qad*tan(z)+4*qad+tan(2*z)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_37_PHC {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  qad=sqr(tan(z))
  z=sqr(qad)-2*qad*tan(z)+4*qad+tan(2*z)
  z=fn1(z)*whitesq+fn2(z)*(whitesq==0)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_38 {; Jo Weber [100424,35] 11/1996
  z=c=pixel
  bailout=p3:
  z=p2*(fn1(z)/fn2(z))
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_38_1 {; Jo Weber [100424,35] 11/1996
  z=c=pixel
  bailout=p3:
  z=p2*fn1(z)+c-(z>=0)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_38_PHC {; Jo Weber [100424,35] 11/1996
  z=c=pixel
  bailout=p3:
  z=(p1*fn1(z)+c)*whitesq+(p2*(fn2(z)/fn3(z)))*(whitesq==0)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_39 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=3/8*z+0.25*sin(p1*z)+1/32*sin(p2*z)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_40 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  z=p1*log(sin(p2*z))
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}


JoWe_40_PHC {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=p1*log(sin(p2*z))
  z=fn1(z)*(whitesq==0)+fn2(z)*whitesq
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_41 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=(z+sqrt(z+1))/(z-sqrt(z-1))
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_42 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  qad=sqr(z)
  z=sqr(qad-sqrt(qad-1))
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


jowe_43 {; by Jo Weber, 100424,35 10/96
         ; bailout is p3
  z=c=pixel
  bailout=p3:
  qad=sqr(z)
  z=sqrt(qad/(qad-p1*c))
  z=p2*fn1(z)
  |z|<=bailout
  ;SOURCE: 96msg.frm
}


JoWe_44 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=(p1*z+sqrt(p2*z))/sqrt(z)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_45 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=p1/sqrt(p2*z)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_46 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  z=p1/(p2*sqr(z)*z)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}


JoWe_47 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  z=sqr(z)*z*sqrt(z)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}


JoWe_48 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=sqr(z)-p1*z+p2
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_49 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=p1*sqrt(p2*exp(z))
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_50 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=sqrt((exp(p1*z)+1)/(exp(p2*z)-1))
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_51m {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  z=fn1(fn2((p1-z)/(p2+z)))
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}


JoWe_52 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  h=fn1(z)+p1
  z=z*(h+z)/h
  z=p2*fn2(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_53 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  h=fn1(z)+p1
  z=z*(h+z)/h
  z=z-(z>=0)+(z<0)
  z=p2*fn2(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_54 {; Jo Weber [100424,35] 11/1996
         ; Added variable "newpixel". G. Martin 6/27/99
  bailout=p3
  newpixel=fn2(fn1((1-pixel*pixel)/(p1*pixel)))
  z=c=newpixel:
  z=c+(z<0)+newpixel
  |real(z)|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_54_1 {; Jo Weber [100424,35] 11/1996
           ; Added variable "newpixel". G. Martin 6/27/99
  bailout=p3
  newpixel=fn2(fn1((1-pixel*pixel)/(p1*pixel)))
  z=c=newpixel:
  z=z*z+c
  |real(z)|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_54_PHC {; Jo Weber [100424,35] 11/1996
             ; Added variable "newpixel". G. Martin 6/27/99
  bailout=p3
  newpixel=fn2(fn1((1-pixel*pixel)/(p1*pixel)))
  z=c=newpixel:
  z=z*z*whitesq+c+((z<0)+newpixel)*(whitesq==0)
  |real(z)|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_55 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  z=1+tan(z)+tan(z)^2
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}


JoWe_55_PHC {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  a=fn1(1+tan(z))
  b=fn2(tan(z)^2)
  z=a*(whitesq==0)+b*whitesq
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_56 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  z=sin(z)^3+3*sin(z)^2*cos(z)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}


JoWe_57 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=(1+tan(z)^2)/(-1-cotan(z)^2)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_58 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3:
  z=log(z)/z
  z=fn1(z)+real(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_58_1 {; by Jo Weber [100424,35], 11/1996
  z=pixel
  bailout=p3:
  z=z/4-p1*sin(p2*z)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_53.frm
}


JoWe_58_2 {; by Jo Weber [100424,35], 11/1996
  z=pixel
  bailout=p3:
  z=fn1(z/4)-fn2(p1*sin(p2*z))
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_53.frm
}


JoWe_58_3 {; by Jo Weber [100424,35], 11/1996
  z=pixel
  bailout=p3:
  q=real(z), r=imag(z)
  z=z/q-p1*sin(p2*z+r)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_53.frm
}


JoWe_58_4 {; by Jo Weber [100424,35], 11/1996
  z=pixel
  bailout=p3:
  q=real(z), r=imag(z)
  z=z/q-p1*sin(p2*z)/r
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_53.frm
}


JoWe_58_5 {; by Jo Weber [100424,35], 11/1996
  z=pixel
  bailout=p3:
  q=real(z), r=imag(z)
  z=z*q-p1*sin(p2*z)*r
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_53.frm
}


JoWe_58_5_1 {; by Jo Weber [100424,35], 11/1996
  z=pixel
  bailout=p3:
  q=real(z), r=imag(z)
  z=z*q-p1*sin(p2*z)^r
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_53.frm
}


JoWe_58_6 {; by Jo Weber [100424,35], 11/1996
  z=pixel
  bailout=p3:
  q=real(z), r=imag(z)
  z=z/q-fn1(p1*sin(p2*z+r))
  z=fn2(z)
  |z|<=bailout
  ;SOURCE: jo_we_53.frm
}


JoWe_58_7 {; by Jo Weber [100424,35], 11/1996
  z=pixel
  bailout=p3:
  q=real(z), r=imag(z)
  z=fn1(z/q)-fn2(p1*sin(p2*z+r))
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_53.frm
}


JoWe_59 {; Jo Weber [100424,35] 11/1996
  z=pixel
  a=p1-1, b=p2-2
  bailout=p3:
  z=log(z)/z
  z1=fn1(z)+real(z)
  z2=fn2(z)-real(z)
  z=a*flip(z1)/z1+b*conj(z2)/z2
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_60 {; Jo Weber [100424,35] 11/1996
  z=pixel
  a=p1-1, b=p2-2
  bailout=p3:
  z=(1-log(z))/z^2
  z1=fn1(z)+real(z)
  r1=real(z1)
  i1=imag(z1)
  z2=fn2(z)-real(z)
  r2=real(z2)
  i2=imag(z2)
  z=a*|z1+r1-r2|+b*(cabs(z2)-i1+i2)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_61 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  z1=sqr(sin(z))
  z=fn1(sin(z)*(3*cos(z)*(sin(z)+2*cos(z))-z1))
  |z|<=bailout
  ;SOURCE: jowe49.frm
}


jowe_62 {; by Jo Weber [100424,35], 11/1996
  z=pixel
  bailout=p3:
  q=real(z), r=imag(z)
  z1=z*q, z2=z/q
  z3=z*r, z4=z/r
  z1=z1-z4, z2=z2+z3
  z=z1^q+z2^r
  z=fn1(z/q)-fn2(p1*sin(p2*z+r))
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_53.frm
}


jowe_62_1 {; by Jo Weber [100424,35], 11/1996
  z=pixel
  bailout=p3:
  q=real(z), r=imag(z)
  z1=z*q, z2=z/q
  z3=z*r, z4=z/r
  z1=z1-z4, z2=z2+z3
  h1=r-q, h2=r+q
  z=z1^h1-z2^h2
  z=fn1(p1*fn2(p2*z))+h1*h2
  z=z+(z<0)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}


jowe_63 {; by Jo Weber [100424,35], 11/1996
  z=pixel
  bailout=p3:
  z=sin(z)*(1+2*tan(z))+tan(z)*cos(z)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}


jowe_64 {; by Jo Weber [100424,35], 11/1996
  z=pixel
  bailout=p3:
  z=sin(z)*(1+2*tan(z))+tan(z)*cos(z)
  q=real(z), r=imag(z)
  z1=z*q, z2=z/q
  z3=z*r, z4=z/r
  z1=z1-z4, z2=z2+z3
  z=fn1(z1-z2)-fn2(z2-z1)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}


jowe_65 {; by Jo Weber [100424,35], 11/1996
  z=pixel
  bailout=p3:
  z=tan(sin(z)^2-cos(z^2))
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}


jowe_65_1 {; by Jo Weber [100424,35], 11/1996
  z=pixel
  bailout=p3:
  z=tan(sin(z)^2-cos(z)^2)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}


jowe_65_1_phc {; by Jo Weber [100424,35], 11/1996
  z=pixel
  bailout=p3:
  z=tan(sin(z)^2-cos(z)^2)
  z=fn1(z)*(whitesq==0)+fn2(z)*whitesq
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}


jowe_66 {; by Jo Weber [100424,35], 11/1996
  z=pixel
  bailout=p3:
  z=(tan(z)^2+cotan(z)^2)/(sin(z)^2-cos(z)^2)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}


jowe_66_PHC {; by Jo Weber [100424,35], 11/1996
  z=pixel
  bailout=p3:
  z=(tan(z)^2+cotan(z)^2)/(sin(z)^2-cos(z)^2)
  z=fn1(z)*whitesq+fn2(z)*(whitesq==0)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}


jowe_67 {; by Jo Weber [100424,35], 12/1996
  z=pixel
  bailout=p3:
  z=(sin(z)-tan(z))/(cos(z)-cotan(z))
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}


jowe_67_1 {; by Jo Weber [100424,35], 12/1996
  z=pixel
  bailout=p3:
  z=(sin(z)-tan(z))/(sin(z)-cotan(z))
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}


jowe_67_2 {; by Jo Weber [100424,35], 12/1996
  z=c=pixel
  bailout=p3:
  z1=sin(z)-tan(z)
  z2=cos(z)-cotan(z)
  z1=z1+c
  z2=z2+(z1>=0)
  z=z1*z2
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}


jowe_67_3 {; by Jo Weber [100424,35], 12/1996
  z=pixel
  bailout=p3:
  z=fn1(sin(z)-tan(z))/fn2(cos(z)+cotan(z))
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}


jowe_68 {; by Jo Weber [100424,35], 12/1996
  z=pixel
  bailout=p3:
  z=(sin(z)-tan(z))/(sin(z)+tan(z))
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}


jowe_68_1 {; by Jo Weber [100424,35], 4/1997
  z=pixel
  bailout=p3:
  z=(sin(z)-cos(z))/(log(z)^2)
  z=fn1(z)-(z<0)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}


JoWe_68_2 {; JoWeber [100424,35], 4/1997
  z=pixel
  bailout=p3:
  z=(sin(z)-cos(z))/(log(z)^2)
  z=fn1(z)+(z>0)
  |z|<=bailout
  ;SOURCE: jo_we_55.frm
}


JoWe_68_3 {; JoWeber [100424,35], 4/1997
  z=pixel
  bailout=p3:
  z=(sin(z)-cos(z))/(log(z)^2)
  z=fn1(z)-(z<0)+(z>0)
  |z|<=bailout
  ;SOURCE: jo_we_55.frm
}


JoWe_68_4 {; JoWeber [100424,35], 4/1997
  z=pixel
  bailout=p3:
  z=(sin(z)-cos(z))/(log(z)^2)
  z=fn1(z)-(z<0)-(z>0)
  |z|<=bailout
  ;SOURCE: jo_we_55.frm
}


JoWe_68_5 {; JoWeber [100424,35], 4/1997
  z=pixel
  bailout=p3:
  z=(sin(z)-cos(z))/(log(z)^2)
  z=fn1(z)+(z<0)+(z>0)
  |z|<=bailout
  ;SOURCE: jo_we_55.frm
}


JoWe_68_6 {; JoWeber [100424,35], 4/1997
  z=pixel
  bailout=p3:
  z=(sin(z)-cos(z))/(log(z)^2)
  z=fn1(z)+fn2(z<0)+fn3(z>0)
  |z|<=bailout
  ;SOURCE: jo_we_55.frm
}


JoWe_69 {; JoWeber [100424,35], 4/1997
  z=pixel
  bailout=p3:
  z=(sin(z)-cos(z))/(exp(z)^2)
  z=fn1(z)-p1*fn2(z<0)+p2*fn3(z>=0)
  |z|<=bailout
  ;SOURCE: jo_we_55.frm
}


JoWe_70 {; JoWeber [100424,35], 4/1997
  z=pixel
  bailout=p3:
  z=(p1*sin(z)+p2*cos(z))/(exp(z)^2)
  z=fn1(z)-fn2(z<0)+fn3(z>=0)
  |z|<=bailout
  ;SOURCE: jo_we_55.frm
}


JoWe_71 {; JoWeber [100424,35], 4/1997
  z=pixel
  bailout=p3:
  z=(p1*real(sin(z))+p2*imag(cos(z)))/(log(z)^2)
  z=fn1(z)-(z<0)
  |z|<=bailout
  ;SOURCE: jo_we_55.frm
}


JoWe_71_phc {; JoWeber [100424,35], 4/1997
  z=pixel
  bailout=p3:
  z=(p1*real(sin(z))+p2*imag(sin(z)))/(cos(z)^2)
  z=(fn1(z)+(z>0))*whitesq+(fn1(z)-(z<=0))*(whitesq==0)
  |z|<=bailout
  ;SOURCE: jo_we_55.frm
}


JoWe_71a_phc {; JoWeber [100424,35], 4/1997
  z=pixel
  bailout=p3:
  z=(p1*real(sin(z))+p2*imag(sin(z)))/(cos(z)^2)
  z=(fn1(z)+(z>0))*whitesq+(fn2(z)-(z<=0))*(whitesq==0)
  |z|<=bailout
  ;SOURCE: jo_we_55.frm
}


JoWe_72 {; JoWeber [100424,35], 4/1997
  z=pixel
  bailout=p3:
  z=(p1*real(sin(z))+p2*imag(sin(z)))/(cos(z)^2)
  z=fn1(z)+(z>0)
  |z|<=bailout
  ;SOURCE: jo_we_55.frm
}


JoWe_73 {; JoWeber [100424,35], 4/1997
  z=c=pixel
  bailout=p3:
  z=real(sin(z))+fn1(z)+c
  |z|<=bailout
  ;SOURCE: jo_we_55.frm
}


JoWe_C_01 {; Modified Sylvie Gallet frm. [101324,3444]
           ; Jo Weber [100424,35] 11/1996
           ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=exp(2*pixel)*(sqr(sqr(pixel))-3*sqr(pixel)+6*pixel)
  z=(exp(conj(conj(newpixel^450))-cosh(conj(conj(newpixel^20.5)))-0.4)-0.5)
  c=(flip(imag(0.33-newpixel))*sqr(newpixel)\
    -conj(0.10/newpixel)-flip(0.010/newpixel))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
  z=z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_C_02 {; Modified Sylvie Gallet frm. [101324,3444]
           ; Jo Weber [100424,35] 11/1996
           ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=1+1/(1+1/(1+1/pixel))
  z=(exp(conj(conj(newpixel^450))-cosh(conj(conj(newpixel^20.5)))-0.4)-0.5)
  c=(flip(imag(0.33-newpixel))*sqr(newpixel)\
    -conj(0.10/newpixel)-flip(0.010/newpixel))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
  z=z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_C_03 {; Modified Sylvie Gallet frm. [101324,3444]
           ; Jo Weber [100424,35] 11/1996
           ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=1+1/(1+1/(1+1/pixel))
  z=(exp(conj(conj(newpixel^150))-cosh(conj(conj(newpixel^10.5)))-0.4)-0.5)
  c=(flip(imag(0.33-newpixel))*sqr(newpixel)\
    -conj(0.10/newpixel)-flip(0.010/newpixel))
  c1=0.75*z, c2=1.25*z, c3=2.375*z, c4=3.0625*z, c5=4.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.3
  z=z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_C_04 {; Modified Sylvie Gallet frm. [101324,3444]
           ; Jo Weber [100424,35] 11/1996
           ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=1+1/pixel
  z=(fn1(conj(conj(newpixel^400))-fn2(conj(conj(newpixel^10.5)))-0.4)-0.5)
  c=(flip(imag(0.33-newpixel))*sqr(newpixel)\
    -conj(0.10/newpixel)-flip(0.010/newpixel))
  c1=0.75*z, c2=1.25*z, c3=2.375*z, c4=3.0625*z, c5=4.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.3
  z=z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_C_28_5 {; Jo Weber [100424,35] 11/1996
  bailout=p3
  z=pixel
  z=log(1-z)
  z=fn3(p1/fn1(z)+p2/fn2(z))
  c=(flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)):
  z=z*z+c+0.2*pixel
  (|real(z)|) <= bailout
  ;SOURCE: 96msg.frm
}


JoWe_C_28_5_1 {; Jo Weber [100424,35] 11/1996
  bailout=p3
  z=pixel
  z=log(1-z)
  z=fn3(p1/fn1(z)+p2/fn2(z))
  c=(flip(imag(0.33-pixel))*sqr(pixel)\
    -conj(0.10/pixel)-flip(0.010/pixel)):
  z=z*z+c+pixel
  (|imag(z)|) <= bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_C_28_5_2 {; Jo Weber [100424,35] 11/1996
  bailout=p3
  z=pixel
  z=log(1-z)
  z=fn3(p1/fn1(z)+p2/fn2(z))
  c=(flip(imag(0.33-pixel))*sqr(pixel)\
    -conj(0.10/pixel)-flip(0.010/pixel)):
  z=z*z+c+pixel
  (|real(z)|+|imag(z)|) <= bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_C_28_PHC {; Jo Weber [100424,35] 11/1996
  bailout=p3
  z=pixel
  z=log(1-z)
  z=fn3(p1/fn1(z)+p2/fn2(z))
  c=(flip(imag(0.33-pixel))*sqr(pixel)\
    -conj(0.10/pixel)-flip(0.010/pixel)):
  z=z*z*whitesq+(c+pixel)*(whitesq==0)
  (|real(z)|+|imag(z)|) <= bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_C_28_PHC2 {; Jo Weber [100424,35] 11/1996
  bailout=p3
  z=pixel
  z=log(1-z)
  z=fn3(p1/fn1(z)+p2/fn2(z))
  c=(flip(imag(0.33-pixel))*sqr(pixel)\
    -conj(0.10/pixel)-flip(0.010/pixel)):
  z=z*z*whitesq+c+pixel*(whitesq==0)
  (|real(z)|+|imag(z)|) <= bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_C_28_PHC3 {; Jo Weber [100424,35] 11/1996
  bailout=p3
  z=pixel
  z=log(1-z)
  z=fn3(p1/fn1(z)+p2/fn2(z))
  c=(flip(imag(0.33-pixel))*sqr(pixel)\
    -conj(0.10/pixel)-flip(0.010/pixel)):
  z=log(z*z)*whitesq+c+pixel*(whitesq==0)
  (|real(z)|+|imag(z)|) <= bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_C_28_PHC4 {; Jo Weber [100424,35] 11/1996
  bailout=p3
  z=pixel
  z=log(1-z)
  z=fn3(p1/fn1(z)+p2/fn2(z))
  c=(flip(imag(0.33-pixel))*sqr(pixel)\
    -conj(0.10/pixel)-flip(0.010/pixel)):
  z=exp(z)*z*whitesq+c+pixel*(whitesq==0)
  (|real(z)|+|imag(z)|) <= bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_CN_01_PHC {; Jo Weber [100424,35], 1996  Requires passes=1
  pm1 = p1-1, z = pixel:
  oldz = z
  z = (pm1*(z^p1)*whitesq +1)/(p1 * z^pm1)+z*(whitesq==0)
  |(z-oldz)|>=|0.001|
  ;SOURCE: phc.frm
}


JoWe_CN_02_PHC (XAXIS) {; Jo Weber [100424,35], 1996, Requires passes=1
  pm1 = p1-1.51, z = pixel:
  oldz = z
  z = (pm1*(z^p1)*(whitesq==0) +1)/(p1 * z^pm1)+z*whitesq
  |(z-oldz)|>=|0.001|
  ;SOURCE: phc.frm
}


JoWe_CN_02a_PHC (YAXIS) {; Jo Weber [100424,35], 1996, Requires passes=1
  pm1 = p1-1.51, z = pixel:
  oldz = z
  z = (pm1*(z^p1)*whitesq +1)/(p1 * z^pm1)+oldz*(whitesq==0)
  |(z-oldz)|>=|0.001|
  ;SOURCE: phc.frm
}


JoWe_CN_12_PHC {; Jo Weber [100424,35], 1996   Requires passes=1
  pm1 = p1-1, z = pixel:
  oldz = z
  z = (pm1*(z^p1)*whitesq +0.5)/(p1 * z^pm1)+oldz*(whitesq==0)
  |(z-oldz)|>=|0.001|
  ;SOURCE: phc.frm
}


JoWe_CN_12_PHC_2 {; Jo Weber [100424,35], 1996  Requires passes=1
  pm1 = p1-1, z = pixel:
  oldz = z
  z = (pm1*(z^p1)*whitesq +0.5)/(p1 * z^pm1)+z*(whitesq==0)
  |(z-oldz)|>=|0.001|
  ;SOURCE: phc.frm
}


JoWe_what_02m_PHC {; Jo Weber [100424,35], 1996  Requires passes=1
  z = pixel:
  a1=sqr(z), a2=(2/a1)*whitesq
  z=a1*(whitesq==0)+a2+pixel
  ;SOURCE: phc.frm
}


JoWe_What_03m1_PHC {; Jo Weber [100424,35] 9/1996
                    ; needs passes=1
  z = c = pixel:
  a1=sqr(z)+c
  a2=(1/a1+c)*(whitesq==0)
  z=fn1(z)*z*whitesq+a2
  ;SOURCE: jowe_43.frm
}


JoWe_What_03m2_PHC {; Jo Weber [100424,35], 10/1996
  z = c = pixel:
  a1=sqr(z)+c
  a2=(1/a1+c)*(whitesq==0)
  z=fn1(z)*z*whitesq+a2
  ;SOURCE: jo_we_47.frm
}


JoWe_What_03m3_PHC {; Jo Weber [100424,35] 9/1996 
                    ; needs passes=1
  z = c = pixel:
  a1=sqr(z)+c
  a2=(1/a1+c)*z*(whitesq==0)
  z=fn1(z)*whitesq+a2
  ;SOURCE: jowe_43.frm
}


JoWe_What_03m_PHC {; Jo Weber [100424,35], 9/1996
                   ; needs passes=1
  z = c = pixel:
  a1=(sqr(z)+c)*whitesq
  a2=(1/a1+c)*(whitesq==0)
  z=fn1(z)*z+a2
  |z|>=0.05
  ;SOURCE: jowe_43.frm
}


JoWe_What_04_PHC {; Jo Weber [100424,35] 9/1996 
                  ; needs passes=1
  z = pixel:
  z=(fn1(z)*z)*whitesq+(1/z*z)*(whitesq==0)+pixel
  |z|>=0.05
  ;SOURCE: jowe_43.frm
}


JoWe_What_04m {; Jo Weber [100424,35] 9/1996 
  z = pixel:
  a1=1/fn1(z)
  z=a1+pixel
  ;SOURCE: jowe_43.frm
}


JoWe_What_04m_PHC {; Jo Weber [100424,35] 9/1996 
                   ; needs passes=1
  z = pixel:
  a1=sqr(z), a2=1/fn2(z)
  z=(fn1(z)*z)*(whitesq==0)+a2*whitesq+pixel
  ;SOURCE: jowe_43.frm
}


JoWe_What_05m_PHC {; Jo Weber [100424,35] 9/1996 
                   ; needs passes=1
  z = pixel:
  a1=sqr(z), a2=1/a1
  z=fn1(a1)*(whitesq==0)+(a2+pixel)*whitesq
  |z|>=0.05
  ;SOURCE: jowe_43.frm
}


JoWe_What_07m_PHC {; Jo Weber [100424,35] 9/1996 
                   ; needs passes=1
  z = pixel:
  a1=sqr(z), a2=1/a1
  z=fn1(z)*fn2(z)*whitesq+a2*(whitesq==0)+pixel
  ;SOURCE: jowe_43.frm
}


JoWe_what_10_PHC {; Jo Weber [100424,35], 1996  Requires passes=1
  z = pixel:
  a1=sqr(z), a2=p1/a1
  b1=(fn1(z)*fn2(z)+(p1/z*z)+pixel)*whitesq
  b2=(fn1(z)*fn2(z)+a2+pixel)*(whitesq==0)
  z=b1-b2
  |z|>=0.05
  ;SOURCE: phc.frm
}


JoWe_xy_01 {; Jo Weber [100424,35] 9/1996 
            ; p1 is bailout
  z = pixel, bailout=p1:
  x=real(z), y=imag(z)
  x=p2*x+conj(z), y=p3*y+flip(z)
  z=x+y
  z=sqr(z)
  z=fn1(z)+fn2(z)
  |z|<=bailout
  ;SOURCE: jowe_44.frm
}


JoWe_xy_02 {; Jo Weber [100424,35] 9/1996
            ; p1 is bailout
  z = pixel, bailout=p1:
  x=real(z), y=imag(z)
  x=p2*x+conj(z), y=p3*y+flip(z)
  z=x+y
  z=sqr(z)*z
  z=fn1(z)+fn2(z)
  |z|<=bailout
  ;SOURCE: jowe_44.frm
}


JoWe_xy_03 {; Jo Weber [100424,35] 9/1996
            ; p1 is bailout
  z = c = pixel, bailout=p1:
  x=real(z), y=imag(z)
  x=p2*x+conj(z), y=p3*y+flip(z)
  z=x+y
  z=sqr(z)*z+c
  z=fn1(z)+fn2(z)
  |z|<=bailout
  ;SOURCE: jowe_44.frm
}


JoWe_xy_04 {; Jo Weber [100424,35] 9/1996
            ; p1 is bailout
  z = c = pixel, bailout=p1:
  x=real(z), y=imag(z)
  x=p2*x+conj(z), y=p3*y+flip(z)
  z=x+y
  a1=sqr(z)
  a2=a1*z+c
  z=fn1(z)+fn2(z)
  |z|<=bailout
  ;SOURCE: jowe_44.frm
}


JoWe_xy_05 {; Jo Weber [100424,35] 9/1996
            ; p1 is bailout
  z = c = pixel, bailout=p1:
  x=real(z), y=imag(z)
  x=p2*x+conj(z), y=p3*y+flip(z)
  z=x+y
  a1=flip(z)+c
  a2=a1*z
  z=fn1(z)+fn2(z)/p1
  |z|<=bailout
  ;SOURCE: jowe_44.frm
}


JoWe_xy_06 {; Jo Weber, 9/1996
  z = pixel:
  x=real(z), y=imag(z)
  x=x+fn1(z)^p1, y=y-fn2(z)^p2
  z=x+y
  |z|<=4
  ;SOURCE: 96msg.frm
}


JoWe_xy_07 {; Jo Weber [100424,35] 9/1996
  z = pixel:
  a=real(z), b=imag(z)
  x2=a*fn1(z)/p1, y2=b-fn2(z)*p2
  z=x2+y2
  |z|<=4
  ;SOURCE: jowe_44.frm
}


JoWe_xy_08 {; Jo Weber [100424,35] 9/1996
  z = c = pixel, bailout=p3:
  a=real(z), b=imag(z)
  x2=a+fn1(z)*0.231
  y2=b-fn2(z)*0.531
  z=x2^p1+y2^p2
  z=conj(z)*z
  |z|<=bailout
  ;SOURCE: jowe_44.frm
}


JoWe_xy_09 {; Jo Weber [100424,35], 10/1996
            ; bailout = p3
  z = c = pixel
  bailout=p3
  pa1=real(p1), pb1=imag(p1)
  pa2=real(p2), pb2=imag(p2):
  x1=real(z), y1=imag(z)
  x=(x1*pa1-x1*pa2)+c
  y=(y1*pb1-y1*pb2)+c
  z=fn1(x+y)/2
  |z|<=bailout
  ;SOURCE: jo_we_46.frm
}


JoWe_xy_10 {; Jo Weber [100424,35], 10/1996
            ; bailout = p3
  z = c = pixel
  bailout=p3
  pa1=real(p1), pb1=imag(p1)
  pa2=real(p2), pb2=imag(p2):
  x1=real(z), y1=imag(z)
  x=x1*pa1+fn1(z+pa2)
  y=y1*pb1+fn1(z+pb2)
  z=fn2(x+y)
  |z|<=bailout
  ;SOURCE: jo_we_46.frm
}


JoWe_xy_11 {; Jo Weber [100424,35], 10/1996
            ; bailout = p3
  z = c = pixel
  bailout=p3
  pa1=real(p1), pb1=imag(p1)
  pa2=real(p2), pb2=imag(p2):
  x1=real(z), y1=imag(z)
  x=x1*pa1+fn1(z+pa2)
  y=y1*pb1+fn2(z+pb2)
  z=x+y
  |z|<=bailout
  ;SOURCE: jo_we_46.frm
}


JoWe_xy_12 {; Jo Weber [100424,35], 10/1996
            ; bailout = p3
  z = c = pixel
  bailout=p3
  pa1=real(p1), pb1=imag(p1)
  pa2=real(p2), pb2=imag(p2):
  x1=real(z), y1=imag(z)
  x=x1*pa1+fn1(z+pa2)
  y=y1*pb1+fn2(z+pb2)
  z=fn3(x)+fn3(y)
  |z|<=bailout
  ;SOURCE: jo_we_46.frm
}


JoWe_XY_13 {; Jo Weber [100424,35], 10/1996
            ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z = pixel*pixel-fn3(1-pixel):
  x1=real(z),  y1= imag(z)
  x1=p1*x1-fn1(x1-fn2(x1))
  y1=p2*y1-fn1(y1-fn2(y1))
  z=x1+y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}


JoWe_XY_13a {; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z = sin(pixel)-fn3(1-pixel):
  x1=real(z), y1= imag(z)
  x1=p1*x1+fn1(x1+fn2(x1))
  y1=p2*y1-fn1(y1-fn2(y1))
  z=x1+y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}


JoWe_XY_14 {; Jo Weber [100424,35], 10/1996
            ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z = pixel*pixel-fn3(1-pixel):
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y2))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}


JoWe_XY_14a {; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z = pixel*pixel-fn3((1-pixel)*(1-pixel)):
  x1=real(z), y1= imag(z)
  x1=p1*x1-fn1(x1-fn2(x1))
  y1=p2*y1-fn1(y1-fn2(y1))
  z=x1+y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}


JoWe_XY_14b {; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z = pixel*pixel-fn3((1-pixel)*(1+pixel)):
  x1=real(z), y1= imag(z)
  x1=p1*x1-fn1(x1-fn2(x1))
  y1=p2*y1-fn1(y1-fn2(y1))
  z=x1+y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}


JoWe_XY_14c {; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z = fn3((1+pixel)*(1+pixel))-conj(pixel)-fn3(flip(1-pixel)):
  x1=real(z), y1= imag(z)
  x1=p1*x1-fn1(x1-fn2(x1))
  y1=p2*y1-fn1(y1-fn2(y1))
  z=x1+y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}


JoWe_XY_16 {; Jo Weber [100424,35], 10/1996
            ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z = pixel*pixel-fn3(1-pixel):
  x1=real(z), y1= imag(z)
  x1=x1-p1*fn1(x1-fn2(x1))
  y1=y1-p2*fn1(y1-fn2(y1))
  z=x1+y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}


JoWe_XY_16a {; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z = pixel*pixel-fn3(1-pixel):
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: 96msg.frm
}


JoWe_XY_16b {; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z = pixel*pixel-fn3(1-pixel):
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=(p1*x1+p2*y1)/2
  |z|<=bailout
  ;SOURCE: 96msg.frm
}


JoWe_XY_17 {; Jo Weber [100424,35], 10/1996
            ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z = pixel*pixel-fn3(1-pixel):
  x1=real(z), y1= imag(z)
  x1=x1-p1*fn1(x1-fn2(y1))
  y1=y1-p2*fn1(y1-fn2(x1))
  z=x1*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}


JoWe_XY_17a {; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
             ; Added variable "newpixel". G. Martin 6/27/99
  bailout=p3
  newpixel=abs(real(pixel))+flip(imag(pixel))
  z = newpixel:
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}


JoWe_XY_17a0 {; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z = pixel*pixel-fn3(1-pixel):
  x1=real(z), y1= imag(z)
  x1=x1-p1*fn1(x1-fn2(y1))
  y1=y1-p2*fn1(y1-fn2(x1))
  z=x1/y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}


JoWe_XY_17a2 {; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
              ; Added variable "newpixel". G. Martin 6/27/99
  bailout=p3
  newpixel=abs(real(pixel))+flip(imag(pixel))
  z = newpixel:
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(y1))
  y1=y1-fn1(y1-fn2(x1))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}


JoWe_XY_17a3 {; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
              ; Added variable "newpixel". G. Martin 6/27/99
  bailout=p3
  newpixel=abs(real(pixel))+flip(imag(pixel))
  z = newpixel:
  x1=real(z), y1= imag(z)
  x1=x1-fn1(y1-fn2(y1))
  y1=y1-fn1(x1-fn2(x1))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}


JoWe_XY_17a4 {; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
              ; Added variable "newpixel". G. Martin 6/27/99
  bailout=p3
  newpixel=abs(real(pixel))+flip(imag(pixel))
  z = newpixel:
  x1=real(z), y1= imag(z)
  x1=x1-p1*fn1(y1-fn2(y1))
  y1=y1-p2*fn1(x1-fn2(x1))
  z=x1+y1
  |z|<=bailout
  ;SOURCE: 96msg.frm
}


JoWe_XY_17b {; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z=conj(conj(pixel/3-conj(0.10/pixel))):
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}


JoWe_XY_17b2 {; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z=conj(conj(pixel/3-conj(0.10/pixel))):
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(y1))
  y1=y1-fn1(y1-fn2(x1))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}


JoWe_XY_17b3 {; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z=conj(conj(pixel/3-conj(0.10/pixel))):
  x1=real(z), y1= imag(z)
  x1=x1-fn1(y1-fn2(y1))
  y1=y1-fn1(x1-fn2(x1))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}


JoWe_XY_17c {; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
             ; Added variable "newpixel". G. Martin 6/27/99
  bailout=p3
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=newpixel-1/(tanh(0.10/newpixel)-sqr(sinh(0.0250/newpixel)))^6:
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}


JoWe_XY_17d {; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
             ; Added variable "newpixel". G. Martin 6/27/99
  bailout=p3
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=cabs(2*newpixel)-1/(tanh(0.10/newpixel)-sqr(sinh(0.0250/newpixel)))^6:
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}


JoWe_XY_17d2 {; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
              ; Added variable "newpixel". G. Martin 6/27/99
  bailout=p3
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=cabs(2*newpixel)-1/(tanh(0.10/newpixel)-sqr(sinh(0.0250/newpixel)))^6:
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(y1))
  y1=y1-fn1(y1-fn2(x1))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}


JoWe_XY_17e {; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z=(pixel-conj(0.10/pixel))-0.4, c=2*pixel-1/log(cos(1/pixel)):
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}


JoWe_xy_17f {; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z=(2*pixel-conj(0.10/pixel)):
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}


JoWe_xy_17g {; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z=(2*conj(pixel)-conj(0.30/pixel))+0.2:
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}


JoWe_xy_17h {; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
             ; Added variable "newpixel". G. Martin 6/27/99
  bailout=p3
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(2*tanh(newpixel)-conj(0.10/newpixel))+0.2:
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}


JoWe_XY_18 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=1+1/pixel
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1+fn1(x1+fn2(x1))
  y1=y1+fn1(y1+fn2(y1))
  z=p1*x1+p2*y1
  z=1/fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_18a {; Jo Weber [100424,35] 11/1996
             ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=1+1/pixel
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1+fn1(x1+fn2(x1))
  y1=y1+fn1(y1+fn2(y1))
  z=p1*x1+p2*y1
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_18b {; Jo Weber [100424,35] 11/1996
             ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=1+1/pixel
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1+fn1(x1+fn2(x1))
  y1=y1+fn1(y1+fn2(y1))
  z=p1*x1+p2*y1
  z=fn3(z)+newpixel
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_18c {; Jo Weber [100424,35] 11/1996
             ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=1+1/pixel
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1+fn1(x1+fn2(x1))
  y1=y1+fn1(y1+fn2(y1))
  z=p1*x1+p2*y1
  z=fn3(z)+newpixel*newpixel
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_18d {; Jo Weber [100424,35] 11/1996
             ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=1+1/pixel
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1+fn1(x1+fn2(x1))
  y1=y1+fn1(y1+fn2(y1))
  z=p1*x1+p2*y1
  z=sqr(z)
  z=fn3(z)+newpixel
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_19 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=1+1/(1+1/(1+1/pixel))
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1+fn1(x1+fn2(x1))
  y1=y1+fn1(y1+fn2(y1))
  z=p1*x1+p2*y1
  z=1/fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_20 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=pixel*pixel*pixel-pixel*pixel-pixel-1
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1+fn1(x1+fn2(x1))
  y1=y1+fn1(y1+fn2(y1))
  z=p1*x1+p2*y1
  z=1/fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_20a {; Jo Weber [100424,35] 11/1996
             ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=pixel*pixel*pixel-pixel*pixel-pixel-1
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1+fn1(x1+fn2(x1))
  y1=y1+fn1(y1+fn2(y1))
  z=p1*x1+p2*y1
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_20b {; Jo Weber [100424,35] 11/1996
             ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=pixel*pixel*pixel-pixel*pixel-pixel-1
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1+fn1(x1+fn2(x1))
  y1=y1+fn1(y1+fn2(y1))
  z=p1*x1+p2*y1
  z=sqr(z)
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_20c {; Jo Weber [100424,35] 11/1996
             ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=pixel*pixel*pixel-pixel*pixel-pixel-1
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1+fn1(x1+fn2(x1))
  y1=y1+fn1(y1+fn2(y1))
  z=p1*x1+p2*y1
  z=sqr(z)*z+newpixel
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_20d {; Jo Weber [100424,35] 11/1996
             ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=pixel*pixel*pixel-pixel*pixel-pixel-1
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1+fn1(x1+fn2(x1))
  y1=y1+fn1(y1+fn2(y1))
  z=p1*x1+p2*y1
  z=sqr(z)*z
  z=fn3(z)+newpixel
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_21 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=sin(pixel)+cos(pixel)/(sin(pixel)-cos(pixel))
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1+fn1(x1+fn2(x1))
  y1=y1+fn1(y1+fn2(y1))
  z=p1*x1+p2*y1
  z=sqr(z)
  z=fn3(z)+newpixel
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_22 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=1+sqr(tan(pixel))
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1+fn1(x1+fn2(x1))
  y1=y1+fn1(y1+fn2(y1))
  z=p1*x1+p2*y1
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_23 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=-1-sqr(cotan(pixel))
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1+fn1(x1+fn2(x1))
  y1=y1+fn1(y1+fn2(y1))
  z=p1*x1+p2*y1
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_24 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=sin(sqr(cos(2*pixel+3)))
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1+fn1(x1+fn2(x1))
  y1=y1+fn1(y1+fn2(y1))
  z=p1*x1+p2*y1
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_25 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=0.5*tan(pixel)-2*sin(pixel)
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_25_PHC {; Jo Weber [100424,35] 11/1996
                ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=0.5*tan(pixel)-2*sin(pixel)
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  z=atanh(z)*whitesq+log(z)*(whitesq==0)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_26 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
            ; Corrected typo "pixe" to "pixel"
  newpixel=sqr(cos(pixel))-sqr(sin(pixel))+tan(pixel)
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_27 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=(1+sqrt(pixel))/(2*pixel-1)
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_28 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=log(1-sqr(pixel))
  z=newpixel
  bailout=p3:
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_28_PHC {; Jo Weber [100424,35] 11/1996
                ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=log(1-sqr(pixel))
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  z=fn1(z)*whitesq+fn2(z)*(whitesq==0)
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_29 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=log(sqrt((1-pixel)/(1+pixel)))
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_31 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  qad=sqr(pixel)
  newpixel=exp(2*pixel)*(sqr(qad)-3*qad+6*pixel)
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_31_PHC {; Jo Weber [100424,35] 11/1996
                ; Added variable "newpixel". G. Martin 6/27/99
  qad=sqr(pixel)
  newpixel=exp(2*pixel)*(sqr(qad)-3*qad+6*pixel)
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  z=z*whitesq+fn3(z)*(whitesq==0)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_xy_35 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=3*sin(pixel)-5*sqr(sqr(sin(pixel)))
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}


JoWe_XY_39 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=3/8*pixel+0.25*sin(pixel)+1/32*sin(pixel)
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_40 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=p1*log(sin(p2*pixel))
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1+fn1(x1+fn2(x1))
  y1=y1+fn1(y1+fn2(y1))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jowe49.frm
}


JoWe_XY_41 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=(pixel+sqrt(pixel+1))/(pixel-sqrt(pixel-1))
  z=newpixel
  bailout=p3:
  x=real(z), y=imag(z)
  x=x+fn1(x+fn2(x))
  y=y+fn1(y+fn2(y))
  z=p1*x+p2*y
  z=x+y
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_42 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=sqr(sqr(pixel)-sqrt(sqr(pixel)-1))
  z=newpixel
  bailout=p3:
  x=real(z), y=imag(z)
  x=x+fn1(x-fn2(x))
  y=y+fn1(y-fn2(y))
  z=(p1*x+p2*y)/2
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_43 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  qad=sqr(pixel)
  newpixel=sqrt(qad/(qad-pixel))
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_45 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=5/sqrt(0.5*pixel)
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_46 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=0.1+1/pixel
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1+fn1(x1+fn2(x1))
  y1=y1+fn1(y1+fn2(y1))
  z=p1*x1+p2*y1
  z=1/fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_51m {; Jo Weber [100424,35] 11/1996
             ; Added variable "newpixel". G. Martin 6/27/99
  k=(6 4), l = (0 4)
  newpixel=cos(sin((k-pixel)/(l+pixel)))
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_51m_1 {; Jo Weber [100424,35] 11/1996
               ; Added variable "newpixel". G. Martin 6/27/99
  k=(6,4), l = (0,4)
  newpixel=cos(sin((k-pixel)/(l+pixel)))
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}


JoWe_XY_51m_3 {; Jo Weber [100424,35] 11/1996
               ; Added variable "newpixel". G. Martin 6/27/99
  k=(0.6,0.44), l = (0,0.4)
  newpixel=cos(sin((k-pixel)/(l+pixel)))
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}


JoWe_XY_54 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  bailout=p3
  newpixel=fn2(fn1((1-pixel*pixel)/(p1*pixel)))
  z=c=newpixel:
  x=real(z), y=imag(z)
  r1=x*y, r2=p2*x/y, r3=x+y
  x=r1-r2, y=r2-r3
  z=(x+y)/2+(z>0)+newpixel
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_PHC_14 {; Jo Weber [100424,35], 10/1996
                ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z = pixel*pixel-fn3(1-pixel):
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y2))
  z=p1*x1*whitesq+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}


JoWe_XY_PHC_14c {; Jo Weber [100424,35], 10/1996
                 ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z = fn3((1+pixel)*(1+pixel))-conj(pixel)-fn3(flip(1-pixel)):
  x1=real(z), y1= imag(z)
  x1=p1*x1-fn1(x1-fn2(x1))
  y1=p2*y1-fn1(y1-fn2(y1))
  z=x1*whitesq+y1*(whitesq==0)
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}


joz {
  z=pixel, c=p1:
  z=sqr(z)+c
  c=c+p2/z
  |z| <= 4
  ;SOURCE: explode.frm
}


JPd {; PHC -- mandel, lambdafn
  IF (whitesq)
    z = c = pixel
  ELSE
    z = pixel + p1, c = p2
  ENDIF
  :
  IF (whitesq)
    z = z*z + c
    PHC_bailout = |z| <= 4
  ELSE
    z = c * sin(z)
    PHC_bailout = |z| <= 64
  ENDIF
    PHC_bailout
  ;SOURCE: 98msg.frm
}


JPL4' (yaxis) {; J.P. Louvet
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=Pixel
  c=Pixel:
  z=fn1(z^2+1)+c
  |z|<=4
  ;SOURCE: jpl1.frm
}


JPL4a' (yaxis) {; J.P. Louvet
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=Pixel
  c=Pixel:
  z=fn1(z^2+1)+c
  |z|<=4
  ;SOURCE: jpl1.frm
}


Jpm_Maxi(ORIGIN) {; an automatic Mix
  z = pixel
  a = p2
  IF(p1==0)
    bailout=8+|p2|
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


Jpm_Mini (ORIGIN) {; an automatic Mix
  z = pixel
  a = p2
  IF(p1==0)
    bailout=8+|p2|
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


JSomethingelse (xyaxis) {
  z = pixel:
  z = p1 * (z*z + 1/z/z)
  |z| <= 1000000
  ;SOURCE: fract002.frm
}


JTet (XAXIS) {; Julia form 1 of the Tetration formula --Lee Skinner
  z = pixel:
  z = (pixel ^ z) + P1
  |z| <= (P2 + 3)
  ;SOURCE: fractint.frm
}


jtofn {
  z=pixel:
  power = fn2(z)
  z = z^power + p1
  |z| < p2
  ;SOURCE: fractals.frm
}


jul-BO-14 {; Jon Horner
           ; Using a transcendental function for bailout criteria
  z = pixel, c = p1:
  z = z * z + c
  (fn1(z)) <= 4
  ;SOURCE: details.frm
}


jul-Triangle{; variant of Damien Jones dmj-Mand-Triangle
             ; modified by Kathy Roth
             ; original idea and formula from L. Kerry Mitchell
             ; modified for total continuity by dmj, 9-8-97
  IF (real(p3) == 0)         ; Invalid value for color scale.
    p3 = 75 + flip(imag(p3)) ; Substitute a default value.
  ENDIF
  IF (imag(p3) == 0)         ; Invalid value for bailout.
    p3 = (0,128) + real(p3)  ; Substitute a default value.
  ENDIF
  sum = 0                    ; Running total.
  done = 1                   ; Iteration counter.
  ac = cabs(pixel)           ; Absolute value of pixel (precalc).
  il2 = 1/log(2.0)           ; Inverse log 2 (precalc).
  lp = log(log(imag(p3)))    ; log(log bailout) (precalc).
  f = -1                     ; No fractional iteration yet.
                             ;
  z = pixel, c =p1:          ; Mandelbrot initialization.
  az2 = |z|                  ; Save absolute value of first term.
  z = sqr(z) + c             ; Mandelbrot calculation.
                             ;
  lowbound = abs(az2 - ac)   ; Calculate lower bound for sum.
  sum = sum + (cabs(z) - lowbound) / (az2+ac - lowbound)
                             ; Ratio between bounds.
                             ;
  done = done + 1            ; Done one more iteration.
  IF (az2 > imag(p3))        ; Point exceeds bailout.
    IF (f < 0)               ; First time; let it go again.
      f = il2*lp - il2*log(log(cabs(z))) + 2  ; Fractional iteration.
      oldsum = sum / done    ; Save the average ratio so far.
    ELSE                     ; Second time past bailout.
      sum = sum / done       ; Average ratio.
      f = oldsum + (sum-oldsum) * (f-1)       ; Interpolate sum.
      z = f * real(p3)       ; Apply color scale.
      z = z - 255*trunc(z/real(255))          ; Wrap at 255.
      z = z - done - 5       ; Return value.
      done = -1              ; Set flag to force an exit.
    ENDIF
  ENDIF
                             ;
  done >= 0                  ; Continue if the flag is clear.
  ;SOURCE: 98msg.frm
}


jul1-138 {
  z=pixel:
  z=(1-sqr(p1))/sqr(1-p1*fn1(z))
  |z|<=4
  ;SOURCE: 98msg.frm
}


jul1-146 {
  z=pixel:
  z=sqr(fn1(z))/(1-p1*fn2(z))^5
  |z|<=4
  ;SOURCE: 98msg.frm
}


jul1-353ad {
  z=pixel:
  z=p1*fn1(z)/fn2(z)
  |z|<=4
  ;SOURCE: 98msg.frm
}


jul1-Triangle{; variant of Damien Jones dmj-Mand-Triangle
              ; kathy roth 9-98
              ; p1 does not work
              ; original idea and formula from L. Kerry Mitchell
              ; gravijul by Mark Christenson
              ; modified for total continuity by dmj, 9-8-97
                             ;
  IF (real(p3) == 0)         ; Invalid value for color scale.
    p3 = 75 + flip(imag(p3)) ; Substitute a default value.
  ENDIF                      ;
  IF (imag(p3) == 0)         ; Invalid value for bailout.
    p3 = (0,128) + real(p3)  ; Substitute a default value.
  ENDIF                      ;
  sum = 0                    ; Running total.
  done = 1                   ; Iteration counter.
  ac = cabs(pixel)           ; Absolute value of pixel (precalc).
  il2 = 1/log(2.0)           ; Inverse log 2 (precalc).
  lp = log(log(imag(p3)))    ; log(log bailout) (precalc).
  f = -1                     ; No fractional iteration yet.
                             ;
  z = pixel, c =p1:          ;
  az2 = |z|                  ; Save absolute value of first term.
  w=fn1(z)                   ;
  z=fn3(1/fn2(w*w))          ; gravijul variant
  lowbound = abs(az2 - ac)   ; Calculate lower bound for sum.
  sum = sum + (cabs(z) - lowbound) / (az2+ac - lowbound)
                             ; Ratio between bounds.
                             ;
  done = done + 1            ; Done one more iteration.
  IF (az2 > imag(p3))        ; Point exceeds bailout.
    IF (f < 0)               ; First time; let it go again.
      f = il2*lp - il2*log(log(cabs(z))) + 2   ; Fractional iteration.
      oldsum = sum / done    ; Save the average ratio so far.
    ELSE                     ; Second time past bailout.
      sum = sum / done       ; Average ratio.
      f = oldsum + (sum-oldsum) * (f-1)        ; Interpolate sum.
      z = f * real(p3)       ; Apply color scale.
      z = z - 255*trunc(z/real(255))           ; Wrap at 255.
      z = z - done - 5       ; Return value.
      done = -1              ; Set flag to force an exit.
    ENDIF                    ;
  ENDIF                      ;
                             ;
  done >= 0                  ; Continue if the flag is clear.
  ;SOURCE: 98msg.frm
}


Julfn+Exp {; Jon Horner
  z = pixel, c = p1:
  z = fn1(z) + 2.7182818^z + c
  |z| <= 4
  ;SOURCE: parser.frm
}


Julfn+zsqrd {; Jon Horner
             ; set p1 = (-0.5,0.5)
  z = pixel, c = p1:
  z = fn1(z) + (z*z) + c
  |z| <= 4
  ;SOURCE: parser.frm
}


JulI2I3 (XAXIS) {
  z = pixel:
  q = sqr(z)
  z = imag(z*q) + flip(imag(q)) + p1
  |z| < 25
  ;SOURCE: 97msg.frm
}


JulI2R3 (XAXIS) {
  z = pixel:
  q = sqr(z)
  z = real(z*q) + flip(imag(q)) + p1
  |z| < 25
  ;SOURCE: 97msg.frm
}


JulI3I2 {
  z = pixel:
  q = sqr(z)
  z = imag(q) + flip(imag(z*q)) + p1
  |z| < 25
  ;SOURCE: 97msg.frm
}


JulI3R2 (YAXIS) {
  z = pixel:
  q = sqr(z)
  z = imag(z*q) + flip(real(q)) + p1
  |z| < 10
  ;SOURCE: 97msg.frm
}


juli^-1 (XAXIS) {;From this Newton is the Julia-Set
  z=pixel:
  z=((pixel-1)*z^pixel+1)/(pixel*z^(pixel-1)) 
  0.001<=|z^pixel-1|
  ;SOURCE: crazynwt.frm
}


julia {
   ; p1=parameter
   ; bailout is real(p2) (default 4)
  z = pixel
  t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = sqr(z) + p1
  |z| <= t
  ;SOURCE: builtn.frm
}


Julia+LambdaFn=PHC { 
  z = pixel:
  r = p1 * fn1(z)
  q = z^2 + p2
  z = (q * (whitesq == 0)) + (r * (whitesq == 1))
  ;SOURCE: scary.frm
}


julia4 {; Chuck Ebbert                      added 13 Jan 1993
        ; p1=Parameter (default (.6,.55) )
        ; bailout is real(p2) (default 4)
        ; force c=(.6,.55) if p1=0
  z = pixel, c = ((0.6,0.55) * (|p1|<=0) + p1 )
  t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = sqr(z*z) + c
  |z| <= t
  ;SOURCE: builtn2.frm
}


Julia[Fn||Fn] {; v18 - Jonathan Osuch
               ; Note: use floating point
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z = pixel, shift = real(p2), x = |z|:
  IF (x<shift)
    z=p1+fn1(z)
  ELSE
    z=p1+fn2(z)
  ENDIF
  x=|z|
  x<=64
  ;SOURCE: parser.frm
}


Julia_Ellipse {; Copyright (c) Paul W. Carlson, 1998
    ; p1       = Julia set coordinates
    ; real(p2) = ellipse real axis
    ; imag(p2) = ellipse imag axis
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
  z = iter = range_num = bailout = 0
  w = pixel
  c = p1
  a = real(p2)
  b = imag(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
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


Julia_N {; Jm Collard-Richard
         ; rentrer p1=c et p2 la puissance
  z=pixel:
  z=z^p2+p1
  |z|<=4                   
  ;SOURCE: jmcr1.frm
}


JULIA_RI (ORIGIN) {; try p1=.3
  Z=PIXEL:
  Z=SQR(Z)+P1
  Q=10*(|IMAG(Z)|<.0001)
  O=10*(|REAL(Z)|<.0001)
  P=(|Z|>=20)*10
  O+P+Q<=9
  ;SOURCE: ramiro.frm
}


JuliaBar_2 (xaxis) {; Jm Collard-Richard
  z=pixel:
  z=conj(z)^2+p1
  |z|<=4                   
  ;SOURCE: jmcr1.frm
}


JuliaBar_N {; Jm Collard-Richard
  z=pixel:
  z=conj(z)^p2+p1
  |z|<=4                   
  ;SOURCE: jmcr1.frm
}


JuliaConj (Origin) {; Paul J. Horn - a conjugate Julia (I think)
   ; try real part of p1 = -1.1 and imag part of p1 = .09
  z = pixel:   
  z = Sqr(conj(z)) + P1
  |z| <= 4          
  ;SOURCE: pjhcon.frm
}


julialyap {; P1 the C point P2 the bailout
  z=0, c=p1, k=0, l=0, z1=pixel:
  z1=z1*z1+c
  dz1=2*z1
  k=k+1
  l=l+log(dz1)
  z=l/k
  |z1|<=p2
  ;SOURCE: 97msg.frm
}


JuliaMiN {; formula, Jim Muth
  b=p1, z=pixel+p2, c=p3:
  z=(-z)^(b)+c
  |z| <= 16
  ;SOURCE: 98msg.frm
}


JuliaN {; Jim Muth
  b=p1, z=p2+pixel, c=p3:
  z=z^(b)+c
  |z| <= 16
  ;SOURCE: 99msg.frm
}


JuliaP {; Julia form of Prop formula. Is almost Origin symetrical.
  c=P1
  z=pixel:
  z=sqr(z)
  z=-z
  z=conj(z)
  z=z+c
  |z| <=4
  ;SOURCE: crocker.frm
}


JuliaPerturb {; z^2 + c + p3*z   try p1 = (-0.0125,0.639)
  z=pixel:  
  z=z*z + p1 + real(p3)*real(z)+imag(p3)*imag(z)
  |z| < 10 
  ;SOURCE: internet.frm
}


JuliaPM {; Jim Muth
  z=pixel, c=p1:
  z=p2*((-z)^p3+z^p3)+c
  |z| <= 250
  ;SOURCE: 98msg.frm
}


Juliapns {
  c=p1
  z=pixel:
  z=sqr(z)
  z=-z
  z=conj(z)
  z=z+c
  |z| <=4
  ;SOURCE: crocker.frm
}


JuliaXLow {; Jim Muth
  z=pixel, a=real(p1), b=imag(p1)
  d=real(p2), f=imag(p2), c=p3:
  z=(a*(z^b))+(d*((-z)^f))+c
  |z|<=2500
  ;SOURCE: 97msg.frm
}


JulibrotInvZ {; Jim Muth
    ; Draws oblique slices of order n inverse Julibrot Figure
    ; P1 defines power of Z, P2 determines center of slice
    ; P3 determines angle of slice
  z=pixel, c=p2+(pixel*p3):
  z=(-z)^p1+c
  |z| <= 100
  ;SOURCE: 97msg.frm
}


JulibrotSlice1 {; Randy Hutson - 2D slice of 4D Julibrot
  z = real(p1)+flip(imag(pixel)), c = real(pixel)+flip(imag(p1)):
  z = sqr(z)+c
  LastSqr <= 4
  ;SOURCE: fract002.frm
}


JulibrotZpwr {; Jim Muth
     ; Draws oblique slices of order n Julibrot Figure
     ; P1 defines power of Z, P2 sets center of slice
     ; P3 sets angle of slice
  z=pixel, c=p2+(pixel*p3):
  z=z^p1+c
  |z| <= 100
  ;SOURCE: 97msg.frm
}


JuliConj01 (Origin) {; Paul J. Horn - a conjugate Julia (I think)
                     ; Try real(p1) = -.93, imag(p1) = .3, map = blues
  z = pixel: 
  z = Sqr(z) + Conj(P1)
  |z| <= 4           
  ;SOURCE: pjhcon.frm
}


JuliConj02 (Origin) {; Paul J. Horn - a conjugate Julia (I think)
                     ; Try real(p1) = .3, imag(p1) = .25, map = neon
  z = pixel: 
  z = Sqr(Conj(z)) + Conj(P1)
  |z| <= 4
  ;SOURCE: pjhcon.frm
}


JuliConj03 {; Paul J. Horn - a conjugate Julia (I think)
            ; Try real(p1) = .40, imag(p1) = 0, map = glasses2
  z = pixel: 
  z = Sqr(conj(z))*conj(z) + P1
  |z| <= 4 
  ;SOURCE: pjhcon.frm
}


JuliConj04 {; Paul J. Horn - a conjugate Julia (I think)
            ;Try real(p1) = .53, imag(p1) = .63, map = volcano 
  z = pixel: 
  z = Sqr(z)*z + Conj(P1)
  |z| <= 4           
  ;SOURCE: pjhcon.frm
}


JuliConj05 {; Paul J. Horn - a conjugate Julia (I think)
            ; Try real(p1) = .6, imag(p1) = .4, map = chroma
  z = pixel:   
  z = Sqr(conj(z))*conj(z) + Conj(P1)
  |z| <= 4           
  ;SOURCE: pjhcon.frm
}


JuliConj06 (Origin) {; Paul J. Horn - a conjugate Julia (I think)
                     ; Try real(p1) = .99, imag(p1) = .72
  z = pixel:   
  z = Sqr(Sqr((conj(z)))) + P1
  |z| <= 4           
  ;SOURCE: pjhcon.frm
}


JuliConj07 (Origin) {; Paul J. Horn - a conjugate Julia (I think)
                     ; Try real(p1) = -.245, imag(p1) = .44, map = royal
  z = pixel:   
  z = Sqr(Sqr(z)) + Conj(P1)
  |z| <= 4           
  ;SOURCE: pjhcon.frm
}


JuliConj08 (Origin) {; Paul J. Horn - a conjugate Julia (I think)
                     ; Try real(p1) = -1, imag(p1) = .11, map = blues
  z = pixel:   
  z = Sqr(Sqr((conj(z)))) + Conj(P1)
  |z| <= 4           
  ;SOURCE: pjhcon.frm
}


JuliConj09 {; Paul J. Horn - a conjugate Julia (I think)
   ; Try real(p1) = -.677, imag(p1) = .333, real(p2) = 9, map = blues
  z = pixel:   
  z = (conj(z))^P2 + P1
  |z| <= 4           
  ;SOURCE: pjhcon.frm
}


JuliConj10 {; Paul J. Horn - a conjugate Julia (I think)
   ; Try real(p1) = .1005, imag(p1) = .68, real(p2) = 5, map = chroma
  z = pixel:   
  z = (z)^P2 + Conj(P1)
  |z| <= 4           
  ;SOURCE: pjhcon.frm
}


JuliConj11 {; Paul J. Horn - a conjugate Julia (I think)
   ; Try real(p1) = -.37, imag(p1) = .6, real(p2) = 6, map = volcano
  z = pixel:   
  z = (conj(z))^P2 + Conj(P1)
  |z| <= 4          
  ;SOURCE: pjhcon.frm
}


Julike {; Ron Barnett, 1993
        ; a Julia function based upon the Ikenaga function
  z = Pixel:
  z = z*z*z + (P1-1)*z - P1
  |z| <= 4
  ;SOURCE: fractint.frm
}


julioid {
    ; By PGD, Aug 1997. p2 is Julia parameter. 
    ; Set p1 small to get normal-
    ; looking Julias with subtle mutations. p1=0 gives a classic J-set.
    ; p1 more than an amount dependent on p2 gives 
    ; a noticeably altered J-set. 
    ; (p2 near M-set edge very sensitive.) Large values up to 3 give
    ; interesting results. Imaginary numbers warp symmetry.
    ; Replaced variable "e" with "ee" 5/05/99. G. Martin
  c=p2, z=pixel, a=0,  b=0, d=0, ee=0, f=0, g=0, h=0, i=0:
  z=sqr(z)+c+i
  i=h 
  h=g
  g=f
  f=ee
  ee=d
  d=b
  b=a
  a=z*p1
  lastsqr<=4
  ;SOURCE: 97msg.frm
}


Julitile1 {; Based on an idea by Ray Girvan
  z = fn1(real(pixel))+p1*fn2(imag(pixel)) :
  z = z * z + p2
  |z| <=4 
  ;SOURCE: julitile.frm
}


Julitile2XY (XYaxis) {; force x/y symmetry - Jon Horner
  z = (0,0)
  z = fn1(real(pixel))+p1*fn2(imag(pixel)) :
  z = z * z + p2
  |real(z)| <=10 || |imag(z)| <=10  
  ;SOURCE: julitile.frm
}


Julitile3b {; No sym - Jon Horner
  z = fn1(real(pixel))+p1*fn2(imag(pixel)) :
  z = z * z + p2
  |real(z)| <=10 || |imag(z)| <=10    
  ;SOURCE: julitile.frm
}


Julitile3c {; Jon Horner
  z = fn1(real(pixel))+p1*fn2(imag(pixel)), c = pixel:
  z = z * z + c
  |real(z)| <=10 || |imag(z)| <=10    
  ;SOURCE: julitile.frm
}


Julitile3d {; Jon Horner
  z = c = pixel
  z = fn1(real(pixel)) + c*fn2(imag(pixel))
  test = p1 + 10:
  z = z * z + p2
  |real(z)| <=test || |imag(z)| <=test    
  ;SOURCE: julitile.frm
}


Julitile3e {; Jon Horner
  z = c = pixel
  z = fn1(real(pixel)) + c*fn2(imag(pixel)):
  z = z ^ p1 + p2
  |real(z)| <=10   || |imag(z)| <=10      
  ;SOURCE: julitile.frm
}


JulR2I3 (XAXIS) {
  z = pixel:
  q = sqr(z)
  z = real(q) + flip(imag(z*q)) + p1
  |z| < 10
  ;SOURCE: 97msg.frm
}


JulR2R3 (XAXIS) {
  z = pixel:
  q = sqr(z)
  z = real(z*q) + flip(real(q)) + p1
  |z| < 10
  ;SOURCE: 97msg.frm
}


JulR3I2 {
  z = pixel:
  q = sqr(z)
  z = imag(q) + flip(real(z*q)) + p1
  |z| < 25
  ;SOURCE: 97msg.frm
}


JulR3R2 (XAXIS) {
  z = pixel:
  q = sqr(z)
  z = real(q) + flip(real(z*q)) + p1
  |z| < 10
  ;SOURCE: 97msg.frm
}


July-4th {; July-4th (c) Jay Hill 1997
          ; One boundary leads to -.75
          ; Another boundary leads to +i.
  done = 1            ; Iteration flag.
  iter = 0            ; Sylvie Gallet's suggestion
  zc=z = 0, c = pixel ; Mandelbrot initialization.
  t1=(1-sqrt(1-4*c)), t2=4*(c+1)
  B=sqrt(-4*c-7), t3=8+4*c*(1-B), t4=8+4*c*(1+B) 
  z = 242*(|t1|<=1) + 243*(|t2|<=1) + 244*(|t3|<=1)\
        + 245*(|t4|<=1)
  IF (z>0)            ; for periods 1, 2 and 3
    done=-1           ; color is set for c in a component, skip iterations
  ENDIF
  :                   ; end of initialization
  zc=sqr(zc) + c      ; standard MSet iteration
  zc=sqr(zc) + c      ; standard MSet iteration
  IF (|zc| >= 256)    ; Bailout at 100
    done=-1           ; Set flag to force an exit.
    y=.5*imag(log(zc))/pi
    IF (y<0) 
      y=y+1 
    ENDIF
    w=3*y
    z=w - iter - 8    ; Sylvie Gallet's suggestion
  ENDIF
  iter = iter + 1
  done >= 0           ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}


julzpower {; Chuck Ebbert                          added 12 Jan 1993
   ; p1 = Parameter C (default (0.3,0.6) )               13 Jan 1993
   ; p2 = exponent (default 2)
   ; bailout fixed at 4
  z = pixel + p1, c = ((0.3,0.6) * (|p1|<=0) + p1 )
  m = (2 * (|p2|<=0) + p2 ):  ; changed 'ex' to 'm'      13 Jan 1993
  z = z^real(m) + c           ; should be  real(int(m))  13 Jan 1993
  |z| <= 4
  ;SOURCE: builtn2.frm
}


julzzpwr {; Chuck Ebbert                           added   12 Jan 1993
          ;                                        renamed 13 Jan 1993
          ; p1 = Parameter C (default (-0.3,0.3) )         13 Jan 1993
          ; p2 = exponent (default 2)
          ; bailout fixed at 4
  z = pixel + p1, c = ((-0.3,0.3) * (|p1|<=0) + p1 )
  m = (2 * (|p2|<=0) + p2 ):
  z = z^z + z^real(m) + c   ; should be  real(int(m))      13 Jan 1993
  |z| <= 4
  ;SOURCE: builtn2.frm
}


Justin1 {; Fractal Snowman outline
  z = p1
  c = pixel:
  y = sqr(c*z)
  z = sqr(y) - z*c*y + y - c*z +c
  |z| <= 100
  ;SOURCE: 97msg.frm
}


Justin2 {; Wacked out!
         ; Use periodicity=no and float=y
  z = p1
  y = p2
  c = pixel:
  z = z^c + y
  |real(z)| + |imag(z)| <= 100
  ;SOURCE: 97msg.frm
}


Justin3 {; Undescribable
         ; Use periodicity=no
  z = p1
  a = real(pixel)
  b = imag(pixel):
  z = sqr(z) + a*z + b
  |real(z)| + |imag(z)| <= 100
  ;SOURCE: 97msg.frm
}


Justin4 {; A schizophrenic Mandelbrot?!
  z = p1
  c = pixel:
  z = z^3 - (c*z)^2 + cz - c
  |z| <= 50
  ;SOURCE: 97msg.frm
}


Justin5 {; A power series
         ; Best to use float = y, periodicity = no, and inside = bof61
         ; or just turn on orbits
  z = n = 0
  x = pixel
  c = p1:
  y = z   
  n = n + 1
  z = z + (n*(x-c)^n)/(4^n*(sqr(n)+1))
  |z-y| >= .000001
  ;SOURCE: 97msg.frm
}


Justin6 {; Taylor series for arctan x
         ; Best to use float = y, periodicity = no, and inside = bof61
         ; or just turn on orbits
  z = n = 0
  x = pixel
  b = real(p1):
  y = z
  n = n + 1
  z = z + (-1^n*x^(2*n+1))/(2*n+1)
  |z-y| >= b
  ;SOURCE: 97msg.frm
}


jw02_jcamp03 {; modified by JoWeber, May 98
  z=pixel
  u = x = real(pixel)
  v = y = imag(pixel)
  :
  x = x^2 + fn1(y^2) + u
  y = 2*u*y + v
  z = fn2(x + y)
  |z| <= p1
  ;SOURCE: 98msg.frm
}


jw_jcamp03 {; modified by JoWeber, May 98
  u = x = real(pixel)
  v = y = imag(pixel)
  :
  x = x^2 + fn1(y^2) + u
  y = 2*u*y + v
  z = x + y
  |z| <= p1
  ;SOURCE: 98msg.frm
}


jx2 {
  z=pixel, x=|(z+1)^1.6180339|:
  z=fn1(z)+fn2(x)
  a=z+1
  z=fn1(a)+tan(z)
  |z|<=4
  ;SOURCE: ad5.frm
}


JXConj_Maxi {; an automatic Mix
  z = pixel
  a = p2
  b = -conj(p2)
  IF(p1==0)
    bailout=8+|p2|
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


JXConj_Mini {; an automatic Mix
  z = pixel
  a = p2
  b = -conj(p2)
  IF(p1==0)
    bailout=8+|p2|
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


jz {
  z=pixel, c=p1:
  z=sqr(z)+c
  c=c+p2*z
  |z| <= 4
  ;SOURCE: explode.frm
}

