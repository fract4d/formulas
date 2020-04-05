; frac_ml.frm, a collection of formulas posted to the Fractint mailing list
; Compiled by Les St Clair [les.stclair@btinternet.com] 1997-2000
; Some formulas corrected and others modified by George Martin 10/98 for compatibility with 
; Fractint v.20
; END IF statements changed to ENDIF for compatibility with Ultrafractal 3/99
; Some formulas corrected and others modified by George Martin 9/99 for compatibility with 
; Fractint v.20

_AA1 { ; generalized _AA0
; Q1 = P1 IF P1 <> 0  ELSE  Q1 = PIXEL,   Q1R = REAL(Q1),   Q1I = IMAG(Q1)
; Q2 = P2 IF P2 <> 0  ELSE  Q2 = PIXEL,   Q2R = REAL(Q2),   Q2I = IMAG(Q2)
; R1R = 8^ABS(Q1R) = BAILOUT,   S1R = 1 IF Q1R >0 ELSE S1R = -1
; Z0 = PIXEL   :
;   Z = Q1I*FN1(FN2(Q2R*Z))+FN3(FN4(Q2I*Z))
;   Q2R = Q2R*S1R      q1r<0 -> q2r alternates sign
;   |Z| < R1R
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1), R1R = 8^(ABS(Q1R))
  IF (Q1R >= 0)
      S1R = 1
    ELSE
      S1R = -1
    ENDIF
  Q1I = IMAG(Q1)
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  Q2R = REAL(Q2), Q2I = IMAG(Q2)
  Z = PIXEL
  :
  Z = Q1I*FN1(FN2(Q2R*Z))+FN3(FN4(Q2I*Z))
  ZM = |Z|
  Q2R = Q2R*S1R
  ZM <= R1R
}

_AB1 { ; generalized _AB0
; Q1 = P1 IF P1 <> 0  ELSE  Q1 = PIXEL,   Q1R = REAL(Q1),   Q1I = IMAG(Q1)
; Q2 = P2 IF P2 <> 0  ELSE  Q2 = PIXEL,   Q2R = REAL(Q2),   Q2I = IMAG(Q2)
; R1R = 8^ABS(Q1R) = BAILOUT,   S1R = 1 IF Q1R >0 ELSE S1R = -1
; Z0 = PIXEL   :
;   Z = Q1I*FN1(FN2(Q2R*Z))*FN3(FN4(Q2I*Z))
;   Q2R = Q2R*S1R      q1r<0 -> q2r alternates sign
;   |Z| < R1R
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1), R1R = 8^(ABS(Q1R))
  IF (Q1R >= 0)
      S1R = 1
    ELSE
      S1R = -1
    ENDIF
  Q1I = IMAG(Q1)
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  Q2R = REAL(Q2), Q2I = IMAG(Q2)
  Z = PIXEL
  :
  Z = Q1I*FN1(FN2(Q2R*Z))*FN3(FN4(Q2I*Z))
  ZM = |Z|
  Q2R = Q2R*S1R
  ZM <= R1R
}

_AC1 { ; generalized _AC0
; Q1 = P1 IF P1 <> 0  ELSE  Q1 = PIXEL,   Q1R = REAL(Q1),   Q1I = IMAG(Q1)
; Q2 = P2 IF P2 <> 0  ELSE  Q2 = PIXEL,   Q2R = REAL(Q2),   Q2I = IMAG(Q2)
; R1R = 8^ABS(Q1R) = BAILOUT,   S1R = 1 IF Q1R >0 ELSE S1R = -1
; Z0 = PIXEL   :
;   Z = Q1I*FN1(FN2(Q2R*Z))^FN3(FN4(Q2I*Z))
;   Q2R = Q2R*S1R      q1r<0 -> q2r alternates sign
;   |Z| < R1R
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1), R1R = 8^(ABS(Q1R))
  IF (Q1R >= 0)
      S1R = 1
    ELSE
      S1R = -1
    ENDIF
  Q1I = IMAG(Q1)
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  Q2R = REAL(Q2), Q2I = IMAG(Q2)
  Z = PIXEL
  :
  Z = Q1I*FN1(FN2(Q2R*Z))^FN3(FN4(Q2I*Z))
  ZM = |Z|
  Q2R = Q2R*S1R
  ZM <= R1R
}

=03 {
  z=c=pixel
  x=fn1(z-1/p1)
  y=fn2(x^(z)/p2):
  z=fn4(x-z)+fn3(y+(z-1))+c
  |z|<4
}

=05 {; Revised 4/27/96 to eliminate superfluous "+c"
     ; Original version of this formula may be discarded
  z=pixel
  x=fn1(tan(z))+pixel
  y=fn2(cotan(z))+(pixel^pixel)
  l=(x^y)^22:
  z=fn1(x)*fn2(y)*fn3(l)
  |z|<4
}

-b009 {
  z=fn1(fn2(1/pixel)),c=fn2(fn1(pixel)),c1=z/c^c/z:
  z=z/c1
  z=fn3(z-(z^c1))/(c*c-pixel)
  |z|<=4
}

0008 {
 z = pixel:
 z = pixel^z+sqr(z)-pixel/z:
; source KANAK.FRM
}

000b {
 z = pixel^p1:
 z = sqr(z^p2)-pixel^p3:
; source KANAK.FRM
}

0014 {
	z = pixel:
	z = sqr(pixel*z)+p2^z
; source KANAK.FRM
}

0015 { ; greed-disaster
	z = pixel:
	z = p1*sqr(pixel*z)+p2^z
; source KANAK.FRM
}

0016 { ; doubegg
	z = pixel:
	z = sqr(pixel/z)+p1^z
; source KANAK.FRM
}

0017 { ; ermello
	z = pixel:
	z = sqr(pixel*z)+p1^z
; source KANAK.FRM
}

0018 { 
	z = pixel:
	z = sqr(pixel*z)+z^p1
; source KANAK.FRM
}


003 (XYAXIS) {
  z = pixel:
  z = fn2(z) + fn1(z) + p1
  z <= 4
}

040797-001 { ;Linda Allison
  z = c = pixel:
  z2 = (1/z ^ p1)
  z = fn1(c * (1 - z2 ^ z2)/(1 + z2 ^ z2))
  |z| <= p2
  }

051597-002   {; Linda Allison May 15, 1997
 z=0;
 c=log(sqr(sqr(pixel))*pixel)*0.2:
 z2=fn1(z)+c
 z=c*(1-z2*z2)/(1+z2*z2)
 |z|<=p1
}

051597-002a   {; Linda Allison May 15, 1997
; stars modified by David Shanholtzer 
 z=0;
 c=log(sqr(sqr(pixel))*pixel)*0.4:
 z2=fn1(z)+c
 z=c*(1-z2*z2)/(1+z2*z2)
 |z|<=p1
}

051597-002-m1   {; Linda Allison May 15, 1997
                 ; modified by Sylvie Gallet
 ; 1st parameter: real(p1) = bailout
 ; 2nd parameter: imag(p1) = number of sides
 z = 0
 c = 0.2 * log(pixel^imag(p1)) :
 z2 = fn1(z) + c , sqz2 = sqr(z2)
 z = c * (1-sqz2)/(1+sqz2)
 |z| <= p1
}

051597-002-m1-m2   {; Linda Allison May 15,1997
                 ; modified by Sylvie Gallet
                 ; modified again by Linda Allison
 ; 1st parameter: real(p1) = bailout
 ; 2nd parameter: imag(p1) = number of sides
 z = 0
 c = 0.2 * log(pixel^imag(p1)) :
 z2 = fn1(z) + c , sqz2 = fn2(z2)
 z = c * (1-sqz2)/(1+sqz2)
 |z| <= p1
}

100296-005 { ;Linda Allison=20
  z = pixel:
  z = (fn1(1/z ^ p3))/p1 + (fn2(1/z ^ p3))/p2
  |z| <= .75 * p2
  }

3D_Balls_Julia {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = Julia set coordinates
    ;   real(p2) = a factor controlling the size of the balls
    ;   imag(p2) = number of iterations to skip
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
  w = pixel
  c = p1
  z = 0
  bailout = 0
  iter = 0
  range_num = 0
  skip = imag(p2)
    ;****************************************************
    ; In the accompanying par file, balloops.par,
    ; we will set the number of ranges to 2, with
    ; 125 colors in each range, but the colormap will
    ; be modified to 4 ranges to give the desired effect.
    ;****************************************************
  num_ranges = real(p3)
  colors_in_range = imag(p3)
    ;****************************************************
    ; Real(p2) controls the size of the balls.
    ; These values will usually be in the range 0.001 to 0.1
    ;****************************************************
    ball_size = real(p2)
    index_factor = (colors_in_range - 1) / ball_size:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be expressed in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This example uses a modified Pokorny equation.
    ;****************************************************
  w = 1 / (w * w + c) + c
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
      bailout = 1
      delta = ball_size - (wr * wr + (wi + .5) * (wi + .5))
    ELSEIF ((wr - .5) * (wr - .5) + wi * wi < ball_size)
      bailout = 1
      delta = ball_size - ((wr - .5) * (wr - .5) + wi * wi)
    ELSEIF ((wr + .5) * (wr + .5) + wi * wi < ball_size)
      bailout = 1
      delta = ball_size - ((wr + .5) * (wr + .5) + wi * wi)
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
}

3D_Balls_Mset (ORIGIN) {; Copyright (c) Paul W. Carlson, 1997
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
  index_factor = (colors_in_range - 1) / ball_size:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be express in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This example uses the standard Mandelbrot set equation.
    ;****************************************************
  w = w * w + c
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
      bailout = 1
      delta = ball_size - (wr * wr + (wi + .5) * (wi + .5))
    ELSEIF ((wr - .5) * (wr - .5) + wi * wi < ball_size)
      bailout = 1
      delta = ball_size - ((wr - .5) * (wr - .5) + wi * wi)
    ELSEIF ((wr + .5) * (wr + .5) + wi * wi < ball_size)
      bailout = 1
      delta = ball_size - ((wr + .5) * (wr + .5) + wi * wi)
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
}

3D_Balls_Phoenix {; Algorithm and comments shamelessly borrowed to
                  ; Paul W. Carlson by Sylvie Gallet
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = a factor controlling the size of the balls
    ;   imag(p1) = number of iterations to skip
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;   p3 = param for phoenix

    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
  w = pixel, y = 0
  z = 0
  bailout = 0
  iter = 0
  range_num = 0
  skip = imag(p1)
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
  index_factor = (colors_in_range - 1) / ball_size:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be express in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This example uses the standard Mandelbrot set equation.
    ;****************************************************
  w = w*w - .5*w + p3, X = w*w - .5*y + p3, Y = w, w = X
    ;****************************************************
    ; If the orbit point is within the specified distance of a circle,
    ; set z to the index into the colormap and set the bailout flag.
    ;****************************************************
  IF (iter > skip)
    wr = real(w), wi = imag(w)
    d = |w - (0,0.5)|
    IF (d < ball_size)
      bailout = 1
      delta = ball_size - d
    ELSEIF (|w + (0,0.5)| < ball_size)
      bailout = 1
      delta = ball_size - |w + (0,0.5)|
    ELSEIF (|w - 0.5| < ball_size)
      bailout = 1
      delta = ball_size - |w - 0.5|
    ELSEIF (|w + 0.5| < ball_size)
      bailout = 1
      delta = ball_size - |w + 0.5|
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
}

3D_Phoenix_Spirals {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = coordinates of the Julia set
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    prev_w = y = pixel
    c = p1
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    ;****************************************************
    ; In the accompanying par file, phxspirs.par,
    ; we have 2 color ranges with 125 colors in each range
    ; for a total of 250 colors. The first range starts at
    ; color 1.  Pixels will use color 255 when w < 1.0.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ;****************************************************
    num_ranges = real(p2)
    colors_in_range = imag(p2):
    ;****************************************************
    ; The equations being iterated.
    ;****************************************************
    w = prev_w * prev_w - 0.5 * prev_w + c
    b = w * w - 0.5 * y + c
    y = w
    w = b
    ;****************************************************
    ; If w exceeds a value of 1.0, set z to the index
    ; into the colormap and set the bailout flag.
    ;****************************************************
    IF (w > 1)
	;***************************************************
	; Compute the angle between the last 2 orbit points
	;***************************************************
	delta_i = imag(w) - imag(prev_w)
	delta_r = real(w) - real(prev_w)
	angle = abs(atan(delta_i / delta_r))
	IF (delta_r < 0)
	    angle = pi - angle
	ENDIF
	bailout = 1
	range_index = 2 * colors_in_range * angle / pi
	z = range_index + range_num * colors_in_range + 1
    ENDIF
    ;***************************************************
    ; Update previous value of w
    ;***************************************************
    prev_w = w
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
    bailout == 0
}

3DStalks_Julia (ORIGIN) {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1 = the value of complex constant c in the equation
    ;   real(p2) = a factor controlling the width of the stalks
    ;              (this is actually 1/2 the width of the "trap")
    ;   imag(p2) = bailout value for |w|
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    w = pixel
    c = p1
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    ;****************************************************
    ; In the accompanying par file, mnkyface.par,
    ; we have 2 color ranges with 98 colors in each range
    ; for a total of 196 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| < bailout.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    ;****************************************************
    ; Real(p2) controls the width of the stalks.
    ; These values will usually be in the range 0.001 to 0.5
    ;****************************************************
    stalk_width = real(p2)
    index_factor = (colors_in_range - 1) / stalk_width:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be expressed in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This line in the formula is the only one that needs
    ; to be changed for other equations.
    ; This example uses the "magnet2j" equation.
    ;****************************************************
    w=((w^3+3*w*(c-1)+(c-1)*(c-2))/(3*w*w+3*w*(c-2)+(c-1)*(c-2)+1))^2
    ;****************************************************
    ; Find which axis the orbit point is closest to.
    ;****************************************************
    IF (abs(real(w)) <= abs(imag(w)))
        min_dist_to_axis = abs(real(w))
    ELSE
        min_dist_to_axis = abs(imag(w))
    ENDIF
    ;****************************************************
    ; If the orbit point is within stalk_width of an axis,
    ; set z to the index into the colormap and set the bailout flag.
    ; Also, prevent bailout on the first two iterations.
    ;****************************************************
    IF (min_dist_to_axis < stalk_width && iter > 1)
      z = index_factor * min_dist_to_axis + range_num * colors_in_range + 1
      bailout = 1
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
    bailout == 0  && |w| < imag(p2)
}

3DStalks_Pokorny {; Copyright (c) Paul W. Carlson, 1998
    ;   p1       = Julia set coordinates
    ;   real(p2) = a factor controlling the width of the stalks
    ;   imag(p2) = bailout value for |w|
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    w = pixel
    c = p1
    z = bailout = iter = range_num = 0
    stalk_width = real(p2)
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    index_factor = (colors_in_range - 1) / stalk_width
    :
    w = 1 / (w * w + c)
    ;
    IF (abs(real(w)) <= abs(imag(w)))
	min_dist = abs(real(w))
    ELSE
	min_dist = abs(imag(w))
    ENDIF
    IF (min_dist < stalk_width && iter > 0)
	z = index_factor * min_dist + range_num * colors_in_range + 1
	bailout = 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0  && |w| < imag(p2)
}

39man (XAXIS) {
; Tentative Copyright Ben Leighton 
;(this is likely to have been done at some time somewhere)
z=a=pixel:
a=pixel+(flip(a)-z)
z=z*(z-a) +pixel
|z| <=4
}

3telescope {; (c) Jay Hill, 1998
            ; use outside=summ periodicity=0 
  done = 1, z = 0, zc = 0, c = pixel
  s=|c|, t1=(256*s - 96)*s + 32*Real(c)              ; period 1 test
  t2=16*s + 32*Real(c) + 16                          ; period 2 test
  B=sqrt(-4*c-7), t3=|8+4*c*(1-B)|, t4=|8+4*c*(1+B)| ; period 3 tests
  z=z + 249*(t1<=3) + 250*(t2<=1)\ 
       + 251*(t3<=1) + 252*(t4<=1)      ; set colors
  IF (z>0)                              ; for periods 1, 2, and 3.
    done=-1         ; color is set for c in a component, skip iterations
  ENDIF
  :                                     ; initialization.
  zc=sqr(zc) + c                        ; standard MSet iteration
  IF (|zc| >= 4)                        ; Bailout at 4
    done=-1                             ; Set flag to force an exit.
  ENDIF
  done >= 0                             ; Continue if the flag >=0.
}

a0 {; (c) by Miguel Fliguer 
z=c=pixel:
z=fn1(z/fn2(z/fn3(z/fn4(z))))+c
|z|<4
}

a1 {; (c) by Miguel Fliguer 
z=c=pixel:
z=fn1(p1*z/fn2(p2+z/fn3(p3-z/fn1(z))))+c
|z|<4
}

aaa-deals {
  z = pixel, a=real(z), b=imag(z), i=((0-1)^0.5):
   x = real(z)
   y = imag(z)
   u = x*x + y*y + a
   v = (0-2)*x*y + b
   z = u + v*i;
    |z|<p1
}

aa-mand-re(XAXIS) {
  z = c = pixel:
   z = sqr(z)+c;
    real(z)<p1
}

aa-z-to-c(XAXIS)  {
  z = pixel, c = z:
   z = exp(c*log(z));
    |z| <= p1
}

AbsArcTangentia1 (ORIGIN) {; Tom Schumm
    ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
  z = z + p1
  z = Sqr(z)
  imag(z) <= abs(1/tan(real(z)))     ; Different escape boundry
  ;SOURCE: phong2.frm
}


AbsArcTangentia2 (ORIGIN) {; Tom Schumm
                     ; Attempt to change the shape of the escape boundry

  z = Pixel, z = Sqr(z):  ; Just like julia
  z = z + p1
  z = Sqr(z)
  imag(z) <= abs(1/tan(real(z))+4)     ; Different escape boundry
  ;SOURCE: phong2.frm
}


AbsArcTangentia3 (ORIGIN) {; Tom Schumm
                     ; Attempt to change the shape of the escape boundry

  z = Pixel, z = Sqr(z):  ; Just like julia
  z = z + p1
  z = Sqr(z)
  imag(z) <= abs(1/tan(real(z)))+4     ; Different escape boundry
  ;SOURCE: phong2.frm
}

acc_man_mod {; Modified Sylvie Gallet formula
             ; Modified acceleration_man.frm (generalized by Les St Clair)
             ; use fn1=cabs, fn2=abs for default behaviour
             ; set p1=0 and p2=0 for default behaviour
  z2 = r = 0:
  l = r, z = z2
  z1 = z*z + pixel +p1
  vel1 = z1 - z
  z2 = z1*z1 + pixel +p2
  vel2 = z2 - z1
  acc = vel2 - vel1
  r = fn1(acc)
  r < 4 && fn2(l - r) >= 0.001
}

agravipop { ;5-29-98 kathy roth
            ;my mistake!
            ;imag p3 must be positive
            x=real(pixel), y=imag(pixel), h=imag(p3):
            newx = x-h*sin((y) + tan(3*y))
            newy = y-h*sin((x) + tan(3*x))
            x=newx, y=newy
            z=x + flip(y)
            newx = x-h*sin((y) + tan(3*y))
            newy = y-h*sin((x) + tan(3*x))
            x=newx, y=newy
            z=x + flip(y)
            w = fn1(z)
            z = fn3(p1/fn2(w*w)) + p2
            |z| < real(p3)
    }

Alpha04-22{;V.1.1 - earlier versions may be discarded
; = Alpha[4] = (exp(-z)-4Alpha[3])/z
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
x2=x*x,y2=y*y
Tx=fn1(((((x-4)*x+12)*x-24)*x+24)/(exp(x)*x2*x2*x))
Ty=fn2(((((y-4)*y+12)*y-24)*y+24)/(exp(y)*y2*y2*y))
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

andy23 {
  c = pixel^(-6), z = p1 * (c + 1):
  z = z * (fn1(p1 + c) + fn2(p2 + c));
  |z| <= 64
}

astroid { ; Kerry Mitchell 14nov98
        ;
        ; draws a astroid:  x^n + y^n = a^n
        ;
        ; real(p1) = coloring flag:
        ;   1 to color by nearness to curve
        ;   2 to color by inside/outside
        ; imag(p1) = rotation angle
        ; real(p2) = a = size
        ; imag(p2) = n = exponent
        ; p3 = astroid center
        ;
        ; use decomp=256, float=yes, periodicity=no
        ;
        zc=pixel, done=1, colflag=real(p1)
        a=real(p2), n=imag(p2), aton=a^n
        center=p3, rot=imag(p1)/180*pi, rot=exp(flip(rot))
        :
        temp=rot*(zc-center)
        x=cabs(real(temp)), y=cabs(imag(temp))
        err=x^n+y^n-aton
        if(colflag==1)
          t=log(cabs(err))
        else
          if(err<0)
            t=1
          else
            t=0
          endif
        endif
        z=cos(t)+flip(sin(t))
        done==0
        }

astroid-near_jul { ; Kerry Mitchell 14nov98
        ;
        ; colors Julia set by orbit's closet approach to
        ; a astroid:  x^n + y^n = a^n
        ;
        ; p1 = c = Julia parameter
        ; real(p2) = a = size
        ; imag(p2) = n = exponent
        ; p3 = center of astroid
        ; bailout = 1000 (hardcoded)
        ; rotation angle, degrees = 0 (hardcoded)
        ;
        ; colors inside & outside points the same way
        ; use decomp=256, float=yes, periodicity=no
        ;
        zc=pixel, c=p1, iter=1, done=0
        bailout=1000, errmin=bailout
        a=real(p2), n=imag(p2), aton=a^n
        center=p3, rot=0/180*pi, rot=exp(flip(rot))
        :
        ;
        ; standard iteration
        ;
        iter=iter+1, zc=sqr(zc)+c
        ;
        ; compute difference between actual location and
        ; astroid location; update minimum if necessary
        ;
        temp=(zc-center)*rot
        x=cabs(real(temp)), y=cabs(imag(temp))
        err=cabs(x^n+y^n-aton)
        if(err<errmin)
          errmin=err
        endif
        ;
        ; bailout at escape or maximum iterations
        ;   set "done" flag
        ;   use log(minimum) as angle for decomp coloring
        ;
        if((|zc|>bailout)||(iter==maxit))
          done=1
          t=log(errmin)
          z=cos(t)+flip(sin(t))
        endif
        done==0
        }

astroid-near_man { ; Kerry Mitchell 14nov98
        ;
        ; colors Mandelbrot set by orbit's closet approach to
        ; a astroid:  x^n + y^n = a^n
        ;
        ; real(p1) = bailout
        ; imag(p1) = rotation angle, degrees
        ; real(p2) = a = size
        ; imag(p2) = n = exponent
        ; p3 = center of astroid
        ;
        ; colors inside & outside points the same way
        ; use decomp=256, float=yes, periodicity=no
        ;
        zc=0, c=pixel, iter=1, done=0
        bailout=real(p1), errmin=bailout
        a=real(p2), n=imag(p2), aton=a^n
        center=p3, rot=imag(p1)/180*pi, rot=exp(flip(rot))
        :
        ;
        ; standard iteration
        ;
        iter=iter+1, zc=sqr(zc)+c
        ;
        ; compute difference between actual location and
        ; astroid location; update minimum if necessary
        ;
        temp=(zc-center)*rot
        x=cabs(real(temp)), y=cabs(imag(temp))
        err=cabs(x^n+y^n-aton)
        if(err<errmin)
          errmin=err
        endif
        ;
        ; bailout at escape or maximum iterations
        ;   set "done" flag
        ;   use log(minimum) as angle for decomp coloring
        ;
        if((|zc|>bailout)||(iter==maxit))
          done=1
          t=log(errmin)
          z=cos(t)+flip(sin(t))
        endif
        done==0
        }

astroid-inout_jul { ; Kerry Mitchell 14nov98
        ;
        ; colors Julia set by how often orbit is inside
        ; a astroid:  x^n + y^n = a^n
        ;
        ; p1 = c = Julia parameter
        ; real(p2) = a = size
        ; imag(p2) = n = exponent
        ; p3 = center of astroid
        ; bailout = 1000 (hardcoded)
        ; rotation angle, degrees = 0 (hardcoded)
        ;
        ; colors inside & outside points the same way
        ; use decomp=256, float=yes, periodicity=no
        ;
        zc=pixel, c=p1, iter=1, done=0
        bailout=1000, incount=0, speed=2*pi
        a=real(p2), n=imag(p2), aton=a^n
        center=p3, rot=0/180*pi, rot=exp(flip(rot))
        :
        ;
        ; standard iteration
        ;
        iter=iter+1, zc=sqr(zc)+c
        ;
        ; compute difference between actual location and
        ; astroid location; update minimum if necessary
        ;
        temp=(zc-center)*rot
        x=cabs(real(temp)), y=cabs(imag(temp))
        err=x^n+y^n-aton
        if(err<0)
          incount=incount+1
        endif
        ;
        ; bailout at escape or maximum iterations
        ;   set "done" flag
        ;   use incount/iterations as angle for decomp coloring
        ;
        if((|zc|>bailout)||(iter==maxit))
          done=1
          t=speed*incount/(iter-1)
          z=cos(t)+flip(sin(t))
        endif
        done==0
        }

astroid-inout_man { ; Kerry Mitchell 14nov98
        ;
        ; colors Mandelbrot set by how often orbit is inside
        ; a astroid:  x^n + y^n = a^n
        ;
        ; real(p1) = bailout
        ; imag(p1) = rotation angle, degrees
        ; real(p2) = a = size
        ; imag(p2) = n = exponent
        ; p3 = center of astroid
        ;
        ; colors inside & outside points the same way
        ; use decomp=256, float=yes, periodicity=no
        ;
        zc=0, c=pixel, iter=1, done=0
        bailout=real(p1), incount=0, speed=2*pi
        a=real(p2), n=imag(p2), aton=a^n
        center=p3, rot=imag(p1)/180*pi, rot=exp(flip(rot))
        :
        ;
        ; standard iteration
        ;
        iter=iter+1, zc=sqr(zc)+c
        ;
        ; compute difference between actual location and
        ; astroid location; update minimum if necessary
        ;
        temp=(zc-center)*rot
        x=cabs(real(temp)), y=cabs(imag(temp))
        err=x^n+y^n-aton
        if(err<0)
          incount=incount+1
        endif
        ;
        ; bailout at escape or maximum iterations
        ;   set "done" flag
        ;   use incount/iterations as angle for decomp coloring
        ;
        if((|zc|>bailout)||(iter==maxit))
          done=1
          t=speed*incount/(iter-1)
          z=cos(t)+flip(sin(t))
        endif
        done==0
        }

Astroid_Mset  {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = a factor controlling the width of the curves
    ;   imag(p1) = radius of the astroid
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
    i = (0,1)
    r = imag(p1)
    ;****************************************************
    ; In the accompanying par file, astmset.par,
    ; we have 8 color ranges with 30 colors in each range
    ; for a total of 240 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| < 10000.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    ;****************************************************
    ; Real(p1) controls the width of the curves.
    ; These values will usually be in the range 0.001 to 0.1
    ;****************************************************
    width = real(p1)
    index_factor = (colors_in_range - 1) / width:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be expressed in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This example uses the standard Mandelbrot set equation.
    ;****************************************************
    w = w * w + c
    ;****************************************************
    ; The orbit trap curve.  This example uses an "astroid"
    ; curve (which has absolutely nothing to do with huge
    ; rocks in outer space).  Any two-dimensional curve can
    ; be used which can be expressed in parametric form in
    ; terms of the angle from the origin.
    ;****************************************************
    ang = atan(imag(w) / real(w))
    astroid = r * (cos(ang)^3 + i * sin(ang)^3)
    ;****************************************************
    ; If the orbit point is within some distance of the curve,
    ; set z to the index into the colormap and set the bailout
    ; flag.  Note: the way we use the "distance" here has
    ; the effect of turning the curves inside-out in the image.
    ;****************************************************
    distance = abs(|w| - |astroid|)
    IF (distance < width && iter > 1)
        z = index_factor * distance + range_num * colors_in_range + 1
        bailout = 1
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
}

au0 {
  z=pixel,y=fn1(z-1)^fn1(z),x=(z-1)*fn1(z+1),t=(z/2)*fn1(z-1):
  z=fn1(fn2(t^y)/fn3(x^t))^fn4(t^z)
  |z|<4
}

August {; Sylvie Gallet, Dec 1997
        ; Newton's method applied to z^4 - 4 = 0
        ; Coloring algorithm by Scott Burns
        ; Use decomp = 256 and periodicity = 0
  z1 = pixel, iter = 0, sq2 = sqrt(2)
  a = real(p1)*(0,0.0245436)    ; real(p1) * 2i pi / 256
  mz = abs(cabs(z1)-sq2) 
  :
  IF (mz > 0.1)
    z2 = z1*z1
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
}

ave8rootcount_j { ; Kerry Mitchell 12feb98
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e10)
        ; imag(p2) = unused
        ; real(p3) = inner coloring speed (0 for outer only)
        ; imag(p3) = outer coloring speed (0 for inner only)
        zc=pixel, c=p1, iter=1, maxr=real(p2), count=0
        b1=maxr, fac=b1^0.125, b2=b1*fac, b3=b2*fac
        b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
        iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0
        inspeed=real(p3)*pi*255/128
        outspeed=imag(p3)*pi*255/128:
        iter=iter+1, z2=sqr(zc), w=sqrt(z2),
        r1=|zc-w|, r2=|zc+w|, count=count+(r1<r2),
        zc=z2+c, r2zc=|zc|
        if (r2zc>b1)
          if (iter1==0)
            iter1=iter, q1=count/iter
          endif
        if (r2zc>b2)
          if (iter2==0)
            iter2=iter, q2=count/iter
          endif
        if (r2zc>b3)
          if (iter3==0)
            iter3=iter, q3=count/iter
          endif
        if (r2zc>b4)
          if (iter4==0)
            iter4=iter, q4=count/iter
          endif
        if (r2zc>b5)
          if (iter5==0)
            iter5=iter, q5=count/iter
          endif
        if (r2zc>b6)
          if (iter6==0)
            iter6=iter, q6=count/iter
          endif
        if (r2zc>b7)
          if (iter7==0)
            iter7=iter, q7=count/iter
          endif
        if (r2zc>b8)
          if (iter8==0)
            iter8=iter, q8=count/iter
          endif
 
        iter=-1
        q=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
        angle=q*outspeed
        z=cos(angle)+flip(sin(angle))
 
        endif
        endif
        endif
        endif
        endif
        endif
        endif
        endif
 
        if (iter==maxit)
          q=count/iter
          angle=q*inspeed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
 
        iter>0
        }

ave8rootcount_m { ; Kerry Mitchell 12feb98
        ; real(p1) = bailout (try 1e10)
        ; imag(p1) = unused
        ; real(p2) = inner coloring speed (0 for outer only)
        ; imag(p2) = outer coloring speed (0 for inner only)
        zc=0, c=pixel, iter=1, maxr=real(p1), count=0
        b1=maxr, fac=b1^0.125, b2=b1*fac, b3=b2*fac
        b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
        iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0
        inspeed=real(p2)*pi*255/128
        outspeed=imag(p2)*pi*255/128:
        iter=iter+1, z2=sqr(zc), w=sqrt(z2),
        r1=|zc-w|, r2=|zc+w|, count=count+(r1<r2),
        zc=z2+c, r2zc=|zc|
        if (r2zc>b1)
          if (iter1==0)
            iter1=iter, q1=count/iter
          endif
        if (r2zc>b2)
          if (iter2==0)
            iter2=iter, q2=count/iter
          endif
        if (r2zc>b3)
          if (iter3==0)
            iter3=iter, q3=count/iter
          endif
        if (r2zc>b4)
          if (iter4==0)
            iter4=iter, q4=count/iter
          endif
        if (r2zc>b5)
          if (iter5==0)
            iter5=iter, q5=count/iter
          endif
        if (r2zc>b6)
          if (iter6==0)
            iter6=iter, q6=count/iter
          endif
        if (r2zc>b7)
          if (iter7==0)
            iter7=iter, q7=count/iter
          endif
        if (r2zc>b8)
          if (iter8==0)
            iter8=iter, q8=count/iter
          endif
 
        iter=-1
        q=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
        angle=q*outspeed
        z=cos(angle)+flip(sin(angle))
 
        endif
        endif
        endif
        endif
        endif
        endif
        endif
        endif
 
        if (iter==maxit)
          q=count/iter
          angle=q*inspeed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
 
        iter>0
        }

ave8template  ; Kerry Mitchell 13feb98
        ; real(p1) = bailout (try 10)
        ; imag(p1) = unused
        ; real(p2) = inner coloring speed (0 for outer only)
        ; imag(p2) = outer coloring speed (0 for inner only)
        zc=0, c=pixel, iter=1, maxr=real(p1), count=0
        b1=maxr, fac=b1^0.125, b2=b1*fac, b3=b2*fac
        b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
        iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0
        inspeed=real(p2)*pi*255/128
        outspeed=imag(p2)*pi*255/128
        :
        iter=iter+1, zc=sqr(zc)+c, r2zc=|zc|
        ;
        ; insert logic here to compute variable counter
        ;
        count=count+1
        if (r2zc>b1)
          if (iter1==0)
            iter1=iter, q1=count/iter
          endif
        if (r2zc>b2)
          if (iter2==0)
            iter2=iter, q2=count/iter
          endif
        if (r2zc>b3)
          if (iter3==0)
            iter3=iter, q3=count/iter
          endif
        if (r2zc>b4)
          if (iter4==0)
            iter4=iter, q4=count/iter
          endif
        if (r2zc>b5)
          if (iter5==0)
            iter5=iter, q5=count/iter
          endif
        if (r2zc>b6)
          if (iter6==0)
            iter6=iter, q6=count/iter
          endif
        if (r2zc>b7)
          if (iter7==0)
            iter7=iter, q7=count/iter
          endif
        if (r2zc>b8)
          if (iter8==0)
            iter8=iter, q8=count/iter
          endif
 
        iter=-1
        q=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
        angle=q*outspeed
        z=cos(angle)+flip(sin(angle))
 
        endif
        endif
        endif
        endif
        endif
        endif
        endif
        endif
 
        if (iter==maxit)
          q=count/iter
          angle=q*inspeed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
 
        iter>0
 
}

ave8triangcount_j {
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e6)
        ; imag(p2) = unused
        ; real(p3) = inner coloring speed (0 for outer only)
        ; imag(p3) = outer coloring speed (0 for inner only)
        zc=pixel, c=p1, rc=cabs(c), r2zc=|zc|
        iter=1, maxr=real(p2), count=0
        b1=maxr, fac=b1^0.125, b2=b1*fac, b3=b2*fac
        b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
        iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0
        inspeed=real(p3)*pi*255/128
        outspeed=imag(p3)*pi*255/128:
        iter=iter+1, z2=sqr(zc)+c, rz2=cabs(z2),
        fac=abs(r2zc-rc), q=(rz2-fac)/(r2zc+rc-fac)
        zc=z2, r2zc=|zc|, count=count+q
        if (r2zc>b1)
          if (iter1==0)
            iter1=iter, q1=count/iter
          endif
        if (r2zc>b2)
          if (iter2==0)
            iter2=iter, q2=count/iter
          endif
        if (r2zc>b3)
          if (iter3==0)
            iter3=iter, q3=count/iter
          endif
        if (r2zc>b4)
          if (iter4==0)
            iter4=iter, q4=count/iter
          endif
        if (r2zc>b5)
          if (iter5==0)
            iter5=iter, q5=count/iter
          endif
        if (r2zc>b6)
          if (iter6==0)
            iter6=iter, q6=count/iter
          endif
        if (r2zc>b7)
          if (iter7==0)
            iter7=iter, q7=count/iter
          endif
        if (r2zc>b8)
          if (iter8==0)
            iter8=iter, q8=count/iter
          endif
 
        iter=-1
        q=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
        angle=q*outspeed
        z=cos(angle)+flip(sin(angle))
 
        endif
        endif
        endif
        endif
        endif
        endif
        endif
        endif
 
        if (iter==maxit)
          q=count/iter
          angle=q*inspeed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
 
        iter>0
        }

ave8triangcount_m {
        ; real(p1) = bailout (try 1e6)
        ; imag(p1) = unused
        ; real(p2) = inner coloring speed (0 for outer only)
        ; imag(p2) = outer coloring speed (0 for inner only)
        zc=pixel, c=pixel, rc=cabs(c), r2zc=|zc|
        iter=1, maxr=real(p1), count=0
        b1=maxr, fac=b1^0.125, b2=b1*fac, b3=b2*fac
        b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
        iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0
        inspeed=real(p2)*pi*255/128
        outspeed=imag(p2)*pi*255/128:
        iter=iter+1, z2=sqr(zc)+c, rz2=cabs(z2),
        fac=abs(r2zc-rc), q=(rz2-fac)/(r2zc+rc-fac)
        zc=z2, r2zc=|zc|, count=count+q
        if (r2zc>b1)
          if (iter1==0)
            iter1=iter, q1=count/iter
          endif
        if (r2zc>b2)
          if (iter2==0)
            iter2=iter, q2=count/iter
          endif
        if (r2zc>b3)
          if (iter3==0)
            iter3=iter, q3=count/iter
          endif
        if (r2zc>b4)
          if (iter4==0)
            iter4=iter, q4=count/iter
          endif
        if (r2zc>b5)
          if (iter5==0)
            iter5=iter, q5=count/iter
          endif
        if (r2zc>b6)
          if (iter6==0)
            iter6=iter, q6=count/iter
          endif
        if (r2zc>b7)
          if (iter7==0)
            iter7=iter, q7=count/iter
          endif
        if (r2zc>b8)
          if (iter8==0)
            iter8=iter, q8=count/iter
          endif
 
        iter=-1
        q=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
        angle=q*outspeed
        z=cos(angle)+flip(sin(angle))
 
        endif
        endif
        endif
        endif
        endif
        endif
        endif
        endif
 
        if (iter==maxit)
          q=count/iter
          angle=q*inspeed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
 
        iter>0
        }

ave8xlty_jul { ; Kerry Mitchell 13feb98
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 10)
        ; imag(p2) = rounding factor (try 1)
        ; real(p3) = inner coloring speed (0 for outer only)
        ; imag(p3) = outer coloring speed (0 for inner only)
        ; fn1 = arbitrary function (try log)
        zc=pixel, c=p1, iter=1, maxr=real(p2), count=0
        b1=maxr, fac=b1^0.125, b2=b1*fac, b3=b2*fac
        b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
        iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0
        inspeed=real(p3)*pi*255/128, roundfac=imag(p2)
        outspeed=imag(p3)*pi*255/128:
        iter=iter+1, zc=sqr(zc)+c, r2zc=|zc|
        temp=fn1(zc)/roundfac, frac=roundfac*(temp-round(temp))
        if (real(frac)<imag(frac))
          count=count+1
          endif
        if (r2zc>b1)
          if (iter1==0)
            iter1=iter, q1=count/iter
          endif
        if (r2zc>b2)
          if (iter2==0)
            iter2=iter, q2=count/iter
          endif
        if (r2zc>b3)
          if (iter3==0)
            iter3=iter, q3=count/iter
          endif
        if (r2zc>b4)
          if (iter4==0)
            iter4=iter, q4=count/iter
          endif
        if (r2zc>b5)
          if (iter5==0)
            iter5=iter, q5=count/iter
          endif
        if (r2zc>b6)
          if (iter6==0)
            iter6=iter, q6=count/iter
          endif
        if (r2zc>b7)
          if (iter7==0)
            iter7=iter, q7=count/iter
          endif
        if (r2zc>b8)
          if (iter8==0)
            iter8=iter, q8=count/iter
          endif
 
        iter=-1
        q=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
        angle=q*outspeed
        z=cos(angle)+flip(sin(angle))
 
        endif
        endif
        endif
        endif
        endif
        endif
        endif
        endif
 
        if (iter==maxit)
          q=count/iter
          angle=q*inspeed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
 
        iter>0
        }

ave8xlty_man { ; Kerry Mitchell 13feb98
        ; real(p1) = bailout (try 10)
        ; imag(p1) = rounding factor (try 1)
        ; real(p2) = inner coloring speed (0 for outer only)
        ; imag(p2) = outer coloring speed (0 for inner only)
        ; fn1 = arbitrary function (try log)
        zc=0, c=pixel, iter=1, maxr=real(p1), count=0
        b1=maxr, fac=b1^0.125, b2=b1*fac, b3=b2*fac
        b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
        iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0
        inspeed=real(p2)*pi*255/128, roundfac=imag(p1)
        outspeed=imag(p2)*pi*255/128:
        iter=iter+1, zc=sqr(zc)+c, r2zc=|zc|
        temp=fn1(zc)/roundfac, frac=roundfac*(temp-round(temp))
        if (real(frac)<imag(frac))
          count=count+1
          endif
        if (r2zc>b1)
          if (iter1==0)
            iter1=iter, q1=count/iter
          endif
        if (r2zc>b2)
          if (iter2==0)
            iter2=iter, q2=count/iter
          endif
        if (r2zc>b3)
          if (iter3==0)
            iter3=iter, q3=count/iter
          endif
        if (r2zc>b4)
          if (iter4==0)
            iter4=iter, q4=count/iter
          endif
        if (r2zc>b5)
          if (iter5==0)
            iter5=iter, q5=count/iter
          endif
        if (r2zc>b6)
          if (iter6==0)
            iter6=iter, q6=count/iter
          endif
        if (r2zc>b7)
          if (iter7==0)
            iter7=iter, q7=count/iter
          endif
        if (r2zc>b8)
          if (iter8==0)
            iter8=iter, q8=count/iter
          endif
 
        iter=-1
        q=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
        angle=q*outspeed
        z=cos(angle)+flip(sin(angle))
 
        endif
        endif
        endif
        endif
        endif
        endif
        endif
        endif
 
        if (iter==maxit)
          q=count/iter
          angle=q*inspeed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
 
        iter>0
        }

ave8z1gtz2_jul { ; Kerry Mitchell 13feb98
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e10)
        ; imag(p2) = unused
        ; real(p3) = inner coloring speed (0 for outer only)
        ; imag(p3) = outer coloring speed (0 for inner only)
        z1=pixel, r1=|z1|, c=p1, iter=1, maxr=real(p2), count=0
        b1=maxr, fac=b1^0.125, b2=b1*fac, b3=b2*fac
        b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
        iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0
        inspeed=real(p3)*pi*255/128
        outspeed=imag(p3)*pi*255/128:
        iter=iter+1, z2=sqr(z1)+c, r2=|z2|
        if (r1>r2)
          count=count+1
          endif
        z1=z2, r1=r2
        if (r2>b1)
          if (iter1==0)
            iter1=iter, q1=count/iter
          endif
        if (r2>b2)
          if (iter2==0)
            iter2=iter, q2=count/iter
          endif
        if (r2>b3)
          if (iter3==0)
            iter3=iter, q3=count/iter
          endif
        if (r2>b4)
          if (iter4==0)
            iter4=iter, q4=count/iter
          endif
        if (r2>b5)
          if (iter5==0)
            iter5=iter, q5=count/iter
          endif
        if (r2>b6)
          if (iter6==0)
            iter6=iter, q6=count/iter
          endif
        if (r2>b7)
          if (iter7==0)
            iter7=iter, q7=count/iter
          endif
        if (r2>b8)
          if (iter8==0)
            iter8=iter, q8=count/iter
          endif
 
        iter=-1
        q=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
        angle=q*outspeed
        z=cos(angle)+flip(sin(angle))
 
        endif
        endif
        endif
        endif
        endif
        endif
        endif
        endif
 
        if (iter==maxit)
          q=count/iter
          angle=q*inspeed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
 
        iter>0
        }

ave8z1gtz2_man { ; Kerry Mitchell 13feb98
        ; real(p1) = bailout (try 1e10)
        ; imag(p1) = unused
        ; real(p2) = inner coloring speed (0 for outer only)
        ; imag(p2) = outer coloring speed (0 for inner only)
        z1=0, r1=|z1|, c=pixel, iter=1, maxr=real(p1), count=0
        b1=maxr, fac=b1^0.125, b2=b1*fac, b3=b2*fac
        b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
        iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0
        inspeed=real(p2)*pi*255/128
        outspeed=imag(p2)*pi*255/128:
        iter=iter+1, z2=sqr(z1)+c, r2=|z2|
        if (r1>r2)
          count=count+1
          endif
        z1=z2, r1=r2
        if (r2>b1)
          if (iter1==0)
            iter1=iter, q1=count/iter
          endif
        if (r2>b2)
          if (iter2==0)
            iter2=iter, q2=count/iter
          endif
        if (r2>b3)
          if (iter3==0)
            iter3=iter, q3=count/iter
          endif
        if (r2>b4)
          if (iter4==0)
            iter4=iter, q4=count/iter
          endif
        if (r2>b5)
          if (iter5==0)
            iter5=iter, q5=count/iter
          endif
        if (r2>b6)
          if (iter6==0)
            iter6=iter, q6=count/iter
          endif
        if (r2>b7)
          if (iter7==0)
            iter7=iter, q7=count/iter
          endif
        if (r2>b8)
          if (iter8==0)
            iter8=iter, q8=count/iter
          endif
 
        iter=-1
        q=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
        angle=q*outspeed
        z=cos(angle)+flip(sin(angle))
 
        endif
        endif
        endif
        endif
        endif
        endif
        endif
        endif
 
        if (iter==maxit)
          q=count/iter
          angle=q*inspeed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
 
        iter>0
        }

avetriang_man {
        ; Average together 8 Mandelbrots with same c, different bailouts.
        ; Each iteration, see where |sqr(z)+c| lies between minimum
        ; and maximum bounds given by triangle inequality.
        ; Form scale = (|sqr(z)+c| - min)/(max - min).
        ; Colors by average scale, use "decomp=256" coloring.
        ; real(p1)=bailout >> 4, try 1e6
        ; imag(p1)=coloring "speed" > 0, try 10
        c=zc=pixel, rc=cabs(c), r2zc=|zc|
        iter=1, k=flip(imag(p1)), tot=0
        b1=real(p1), fac=b1^0.125, b2=b1*fac, b3=b2*fac
        b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
        iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0:
        iter=iter+1, z2=sqr(zc)+c, rz2=cabs(z2),
        fac=abs(r2zc-rc), q=(rz2-fac)/(r2zc+rc-fac), tot=tot+q
        zc=z2, r2zc=|zc|
        if (r2zc>b1)
          if (iter1==0)
            iter1=iter, q1=tot/iter
          endif
          if (r2zc>b2)
            if (iter2==0)
              iter2=iter, q2=tot/iter
            endif
            if (r2zc>b3)
              if (iter3==0)
                iter3=iter, q3=tot/iter
              endif
              if (r2zc>b4)
                if (iter4==0)
                  iter4=iter, q4=tot/iter
                endif
                if (r2zc>b5)
                  if (iter5==0)
                    iter5=iter, q5=tot/iter
                  endif
                  if (r2zc>b6)
                    if (iter6==0)
                      iter6=iter, q6=tot/iter
                    endif
                    if (r2zc>b7)
                      if (iter7==0)
                        iter7=iter, q7=tot/iter
                      endif
                      if (r2zc>b8)
                        if (iter8==0)
                          iter8=iter, q8=tot/iter
                        endif
 
        qave=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
        z=exp(qave*k)
 
                      endif
                    endif
                  endif
                endif
              endif
            endif
          endif
        endif
 
        r2zc <= b8
        }

avw-2   {; Linda Allison Variation by wizzle 1998
 z=0;
 c=log(sqr(conj(pixel))*pixel)*0.2:
 z2=fn1(z)+c
 z=c*(1-z2*z2)/(1+z2*z2)
 |z|<=p1
}

bail2{ ;5-3-98 kathy roth
              ;variation of gravijul by Mark Christenson
   z = pixel, a=real(p3), b=imag(p3):
   w = fn1(z)
   z = fn3(p1/fn2(w*w)) + p2
   real(z)^ real(z)/ a + imag(z) * imag(z)/b < 1
   }


bail6{ ;5-3-98 kathy roth
              ;variation of gravijul by Mark Christenson
   z = pixel, a=real(p3), b=imag(p3):
   w = fn1(z)
   z = fn3(p1/fn2(w*w)) + p2
   fn4(real(z))/ a + fn4(imag(z))/b < 1
   }

bail7{ ;5-3-98 kathy roth
              ;variation of gravijul by Mark Christenson
   z = pixel, a=real(p3), b=imag(p3):
      z = fn1(p1/fn2((1/z)*(1/z))) + p2
   fn3(real(z))/ a + fn3(imag(z))/b < 1
   }

BESSEL-2 {
      c = z = pixel:
         z = cos(z) / z + pixel,
      |z| <= 100
}

Beta03-06 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=6*e1-6
  e3=ez*z2*z2
  f=(-(((z+3)*z+6)*z+e2)/e3)
  fd=((((z+4)*z+6)*z-e2)*z+24*e1+24)/(e3*z)
  fdd=(((((z+13)*z+38)*z-18*e1+48)*z+36*e1+60)*z+120*e1+120)/(e3*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}

Beta05-23{;V.1.1 - earlier versions may be discarded
; = Beta[5] = (-exp(-z)-5Beta[4])/z
t=p1,bailout=4,z=fn3(pixel):
x=real(z),y=imag(z)
ex=exp(x),ey=exp(y)
x2=x*x,y2=y*y
Tx=fn1(-(((((x+5)*x+20)*x+60)*x+120)*x+(120*ex*ex-120))/(x2*x2*x2*ex))
Ty=fn2(-(((((y+5)*y+20)*y+60)*y+120)*y+(120*ey*ey-120))/(y2*y2*y2*ey))
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

Beta07-09{;V.1.1 - earlier versions may be discarded
; = Beta[7] = (-exp(-z)-7Beta[6])/z
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
ex=exp(x),ey=exp(y)
x2=x*x,y2=y*y,x4=x2*x2,y4=y2*y2
Tx=fn1(-(((((((x+7)*x+42)*x+210)*x+840)*x+2520)*x+5040)*x+(5040*ex*ex-5040))/(x4*x4*ex))
Ty=fn1(-(((((((y+7)*y+42)*y+210)*y+840)*y+2520)*y+5040)*y+(5040*ey*ey-5040))/(y4*y4*ey))
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

bigmandel  { ; Mandel set of z^2 + c
  z=c=pixel:
  z=z*z+c;
  |z|<=400
}

bills_diff  { ; Mar-4-98
  c = x = pixel, y = pixel + p1:
  xtemp = x^p2 +c
  x = fn1(xtemp)
  ytemp = y^p3 +c
  y = fn1(ytemp)
  d = |x-y|
  z = d^2
  |z| < 2
}

bills_diff_delt1  { ; Apr-13-98
                   ; p1 = offset for y var
                   ; real p2 = base real exponent
                   ; imag p2 = base imag exponent
                   ; real p3 = exponent real delta
                   ; imag p3 = exponent imag delta
                   ;
  c = x = pixel, y = pixel + p1
  splus = real(p2) + real(p3) + flip(imag(p2) + imag(p3))
  sminus = real(p2) - real(p3) + flip(imag(p2) - imag(p3)):
  xtemp = x^splus +c
  x = fn1(xtemp)
  ytemp = y^sminus +c
  y = fn1(ytemp)
  d = |x-y|
  z = d^2
  |z| < 2
}

bills_wonder  {
  z = 1/pixel, a = real(p1), b = imag(p1):
  ztemp = z^a - z^b
  z = (fn1(ztemp)^p2)/z
  |z| < real(p3)
}

bills_wonder2  {
  z = 1/pixel, a = real(p1), b = imag(p1):
  ztemp = z^a - z^b
  z = (fn1(ztemp)^p2)/fn2(z)
  |z| < real(p3)
}

bills_xy-trade  {;
; revised Bill Decker, 04/99
  a = real(p1), b = imag(p1), z = pixel
  d = real(p2), g = imag(p2)
  bail = real(p3):
  x = real(z), x1 = z^a
  y = imag(z), y1 = z^b
  ztemp = fn1(x) + d*fn2(y1) + fn1(y) + g*fn2(x1)
  z = fn3(ztemp)
  |z| > bail
}


bills_xy-trade4  {;
; revised Bill Decker, 04/99
  a = real(p1), b = imag(p1)
  c = real(p2), d = imag(p2)
  g = real(p3), f = imag(p3)
  z = pixel+1/pixel
  zold = pixel^g:
  x = (real(z)-real(zold))^a
  y = (imag(z)-imag(zold))^b
  zold = z
  z = (y +flip(x))
  z = (fn1(z))^c - (fn2(zold))^d
  |z| < f
}

bills_xy-trade6  {;
; revised Bill Decker, 04/99
  a = real(p1), b = imag(p1)
  c = real(p2), d = imag(p2)
  g = real(p3), f = imag(p3)
  z = pixel+c/pixel
  zold = pixel^g:
  x = (real(z)-real(zold))^a
  y = (imag(z)-imag(zold))^b
  zold = fn3(z)
  z = (y +flip(x))
  z = ( (fn1(z)) - (fn2(zold)) )^d
  |z| < f
}

bills-rotate3 {;
; revised Bill Decker, 04/99
  a = real(p1), b = imag(p1)
  c = real(p2), d = imag(p2)
  g = real(p3), f = imag(p3)
  w = pixel
  x = pixel
  y = pixel
  z = pixel
  :
  w = fn1(x+y)^a + w
  x = fn2(y+w)^b + x
  y = fn3(w+x)^c + y
  z = (w^2 - (x^2) * (y^2))*d + z*g
  |z| < f
}

billsfn2i {
  z = pixel, a = zpoint = p1^z :
  temp = z
  z = (z^p3 - zpoint^p2) / a
  zpoint = fn1(temp), |zpoint| <= 4
}

billsfn3  {
  z = pixel, ztemp = p1 :
  z = ztemp^p2 - fn1(z^p3)
  ztemp = real(z)
  z < 4
}

billsfn4  {
  z = p1, temp = pixel :
  z = fn1(temp^p2)
  IF (5 < z)
    temp = fn2(temp)
  ELSE
    temp = fn3(z)
  ENDIF
  z < 100
}

billsfv4  {
  temp = pixel :
  z = fn1(temp^p1)
  IF (5 < z)
    temp = fn2(temp)
  ELSE
    temp = fn3(z)
  ENDIF
  z < 100
  }

BirdOfPrey (XAXIS_NOPARM) { ; Optimized by Sylvie Gallet
  z = p1 :
   z = cosxx(sqr(z) + pixel) + pixel
    |z| <= 4
}

BJ-Lesfrm13-002 {; Modified Les St Clair formula "Lesfrm13" 
  z = pixel 
  x = fn1(z) , y = fn2(z):
  x = x*p1*pi
  y = y*p2*pi 
  z = fn4(x/fn3(y))
  |z| <= 4
}

BJ-SG-3-03-gb {; Brian E. Jones [102702,2213]
   ;Modified Sylvie Gallet [101324,3444], 1996
  z = pixel, c = sin(conj(-0.81256,-0.1295)) :
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(x*x+p2*fn2(y)) * (whitesq == 0)+c* whitesq 
  y1 = y - p1*fn1(y*y+p2*fn2(x)) 
  z = x1+flip(y1)  
  |z| <= 4
}

BOFMaps61-65 {;A variation on Newton's method
;Use 0/-0.5 for P1, and Floating Point to create the fractals used for
;maps 61 through 65, on pages 90 and 91, in "The Beauty of Fractals".
z=Pixel:
z2=z*z;
z3=z*z*z;
z4=z*z*z*z;
z=z-((z4-z3*0.5+z2*0.5-z*0.5-0.5)/((z3*4-z2*1.5+z-.5)+P1)),
|(z4-z3*0.5+z2*0.5-z*0.5-0.5)| >= 0.00004
}

boring {;Candidate for contest
	;p2 = bailout value
z = p1
c1 = c2 = c3 = pixel
bailout = real(p2):
	z = z ^ 3 - c1 * z ^ 2 + c2 * z + c3
		|z| <= bailout
}

brbl {; Formula uses PHC to cast "soft" shadow
      ; October 1996 by Jan Maarten van der Valk
      ; 'periodicity=0' and 'passes=1' recommended
      ; Tanks to Sylvie Gallet, Paul Carlson, Jan M. v.d. Valk 
      ; (c) guy.marson@mnhn.lu
      ; Added variable "newpixel". G. Martin 6/27/99
  x=real(scrnpix)/real(scrnmax), y=(imag(scrnmax)-imag(scrnpix))/(rea\
  l(scrnmax)*0.75), z=x+flip(y)
  chrh1 = x>0.17777&&x<0.20477||(abs(cabs(z+(-0.22671,-0.7175))-0.035\
  44)<0.0135&&y>0.7175)||(x>0.24865&&x<0.27565&&y<0.7175)
  chra2 = abs(cabs(z+(-0.33415,-0.7445))-0.027)<0.0135&&x<0.33415||(a\
  bs(cabs(z+(-0.35215,-0.7445))-0.027)<0.0135&&x>0.35215)&&y>0.7445||\
  ((abs(cabs(z+(-0.33415,-0.6905))-0.027)<0.0135&&x<0.33415)||(abs(ca\
  bs(z+(-0.35215,-0.6905))-0.027)<0.0135&&x>0.35215))||(x>0.33415&&x<\
  0.35215&&(y<0.677||(y>0.758&&y<0.785)||(y>0.704&&y<0.731)))||(x>0.3\
  6565&&x<0.39265&&y<0.7445)
  chrp3 = x>0.41065&&x<0.43765&&y<0.785&&y>0.5825||(abs(cabs(z+(-0.47\
  14,-0.7175))-0.054)<0.0135&&x>0.43765)
  chrp4 = x>0.5569&&x<0.5839&&y<0.785&&y>0.5825||(abs(cabs(z+(-0.6176\
  5,-0.7175))-0.054)<0.0135&&x>0.5839)
  xy=2.5*x
  chry5 = y<xy-1.19787&&y>xy-1.27057||(y>-xy+2.49787&&y<-xy+2.57057)&\
  &y>xy-1.27057&&y<0.785&&y>0.56
  test1 = chrh1||chra2&&y>0.65||chrp3||chrp4||chry5&&y<0.83
  chrh6 = x>0.18777&&x<0.21477||(abs(cabs(z+(-0.23671,-0.6975))-0.035\
  44)<0.0135&&y>0.6975)||(x>0.25865&&x<0.28565&&y<0.6975)
  chra7 = abs(cabs(z+(-0.34415,-0.7245))-0.027)<0.0135&&x<0.34415||(a\
  bs(cabs(z+(-0.36215,-0.7245))-0.027)<0.0135&&x>0.36215)&&y>0.7245||\
  ((abs(cabs(z+(-0.34415,-0.6705))-0.027)<0.0135&&x<0.34415)||(abs(ca\
  bs(z+(-0.36215,-0.6705))-0.027)<0.0135&&x>0.36215))||(x>0.34415&&x<\
  0.36215&&(y<0.657||(y>0.738&&y<0.765)||(y>0.684&&y<0.711)))||(x>0.3\
  7565&&x<0.40265&&y<0.7245)
  chrp8 = x>0.42065&&x<0.44765&&y<0.765&&y>0.5625||(abs(cabs(z+(-0.48\
  14,-0.6975))-0.054)<0.0135&&x>0.44765)
  chrp9 = x>0.5669&&x<0.5939&&y<0.765&&y>0.5625||(abs(cabs(z+(-0.6276\
  5,-0.6975))-0.054)<0.0135&&x>0.5939)
  chry10 = y<xy-1.24287&&y>xy-1.31557||(y>-xy+2.50287&&y<-xy+2.57557)\
  &&y>xy-1.31557&&y<0.765&&y>0.54
  test2 = chrh6||chra7&&y>0.63||chrp8||chrp9||chry10&&y<0.81
  xCN=2.5*x
  chrN11 = x>0.06445&&x<0.09168||(x>0.13045&&x<0.15978)||(y>-xCN+0.50\
  113&&y<-xCN+0.57444)
  chre12 = abs(cabs(z+(-0.23815,-0.23688))-0.04826)<0.01361&&(x<0.238\
  15||y>0.23234||y<0.21872)||(y>0.23234&&y<0.25956&&x>0.18989&&x<0.28\
  641)
  xw=4*x
  chrw13 = y<xw-1.16865&&y>xw-1.28091||(y>-xw+1.73865&&y<-xw+1.85091)\
  &&y<0.285||(y>-xw+1.51865&&y<-xw+1.63091)||(y<xw-1.38865&&y>xw-1.50\
  091)&&y<0.29875
  xCY=2*x
  chrY15 = y<xCY-0.82383&&y>xCY-0.8847||(y>-xCY+1.30583&&y<-xCY+1.366\
  7)&&y>xCY-0.8847
  chre16 = abs(cabs(z+(-0.65773,-0.23688))-0.04826)<0.01361&&(x<0.657\
  73||y>0.23234||y<0.21872)||(y>0.23234&&y<0.25956&&x>0.60946&&x<0.70\
  599)
  chra17 = abs(cabs(z+(-0.77385,-0.26101))-0.02413)<0.01361&&x<0.7738\
  5||(abs(cabs(z+(-0.79035,-0.26101))-0.02413)<0.01361&&x>0.79035)&&y\
  >0.26101||((abs(cabs(z+(-0.77385,-0.21274))-0.02413)<0.01361&&x<0.7\
  7385)||(abs(cabs(z+(-0.79035,-0.21274))-0.02413)<0.01361&&x>0.79035\
  ))||(x>0.77385&&x<0.79035&&(y<0.20222||(y>0.27152&&y<0.29875)||(y>0\
  .22326&&y<0.25049)))||(x>0.80086&&x<0.82809&&y<0.26101)
  chrr18 = x>0.84459&&x<0.87182&&y<0.29875||(abs(cabs(z+(-0.89007,-0.\
  25327))-0.03187)<0.01361&&y>0.25327)
  test3 = chrN11||chre12||chrw13||chrY15||chre16||chra17||chrr18&&y>0\
  .175&&y<0.34
  chrN19 = x>0.07445&&x<0.10168||(x>0.14045&&x<0.16978)||(y>-xCN+0.51\
  113&&y<-xCN+0.58444)
  chre20 = abs(cabs(z+(-0.24815,-0.22188))-0.04826)<0.01361&&(x<0.248\
  15||y>0.21734||y<0.20372)||(y>0.21734&&y<0.24456&&x>0.19989&&x<0.29\
  641)
  chrw21 = y<xw-1.22365&&y>xw-1.33591||(y>-xw+1.76365&&y<-xw+1.87591)\
  &&y<0.27||(y>-xw+1.54365&&y<-xw+1.65591)||(y<xw-1.44365&&y>xw-1.555\
  91)&&y<0.28375
  chrY23 = y<xCY-0.85883&&y>xCY-0.9197||(y>-xCY+1.31083&&y<-xCY+1.371\
  7)&&y>xCY-0.9197
  chre24 = abs(cabs(z+(-0.66773,-0.22188))-0.04826)<0.01361&&(x<0.667\
  73||y>0.21734||y<0.20372)||(y>0.21734&&y<0.24456&&x>0.61946&&x<0.71\
  599)
  chra25 = abs(cabs(z+(-0.78385,-0.24601))-0.02413)<0.01361&&x<0.7838\
  5||(abs(cabs(z+(-0.80035,-0.24601))-0.02413)<0.01361&&x>0.80035)&&y\
  >0.24601||((abs(cabs(z+(-0.78385,-0.19774))-0.02413)<0.01361&&x<0.7\
  8385)||(abs(cabs(z+(-0.80035,-0.19774))-0.02413)<0.01361&&x>0.80035\
  ))||(x>0.78385&&x<0.80035&&(y<0.18722||(y>0.25653&&y<0.28375)||(y>0\
  .20826&&y<0.23549)))||(x>0.81086&&x<0.83809&&y<0.24601)
  chrr26 = x>0.85459&&x<0.88181&&y<0.28375||(abs(cabs(z+(-0.90007,-0.\
  23827))-0.03187)<0.01361&&y>0.23827)
  test4 = chrN19||chre20||chrw21||chrY23||chre24||chra25||chrr26&&y>0\
  .16&&y<0.325
  chrf27 = abs(cabs(z+(-0.48496,-0.07632))-0.00758)<0.0036&&y>0.07632\
  ||(x>0.47379&&x<0.48099&&y<0.07632)||(x>0.47&&x<0.48856&&y>0.0664&&\
  y<0.0736)
  chrr28 = x>0.50014&&x<0.50734&&y<0.08||(abs(cabs(z+(-0.51131,-0.068\
  82))-0.00758)<0.0036&&y>0.06882)
  chro29 = abs(cabs(z+(-0.54149,-0.065))-0.0114)<0.0036
  chrm30 = x>0.56049&&x<0.56769&&y<0.08||(abs(cabs(z+(-0.57166,-0.068\
  82))-0.00758)<0.0036&&y>0.06882)||(x>0.57564&&x<0.58284&&y<0.06882)\
  ||(abs(cabs(z+(-0.58681,-0.06882))-0.00758)<0.0036&&y>0.06882)||(x>\
  0.59079&&x<0.59799&&y<0.06882)
  chrS32 = abs(cabs(z+(-0.63379,-0.0782))-0.0082)<0.0036&&(x<=0.63379\
  ||y>0.0782)||(abs(cabs(z+(-0.63379,-0.0618))-0.0082)<0.0036&&(x>0.6\
  3379||y<0.0618))
  chru33 = x>0.64959&&x<0.65679&&y>0.06118&&y<0.08||(abs(cabs(z+(-0.6\
  6076,-0.06118))-0.00758)<0.0036&&y<0.06118)||(x>0.66474&&x<0.67194&\
  &y<0.08)
  chrs34 = abs(cabs(z+(-0.68524,-0.0707))-0.0057)<0.0036&&x<0.68524||\
  (abs(cabs(z+(-0.68924,-0.0707))-0.0057)<0.0036&&x>0.68924)&&(x<0.68\
  524||y>0.0707)||((abs(cabs(z+(-0.68524,-0.0593))-0.0057)<0.0036&&x<\
  0.68524)||(abs(cabs(z+(-0.68924,-0.0593))-0.0057)<0.0036&&x>0.68924\
  )&&(x>0.68924||y<0.0593))||(x>0.68524&&x<0.68924&&(y<0.0572||(y>0.0\
  728&&y<0.08)||(y>0.0614&&y<0.0686)))
  chry35 = y<xy-1.73134&&y>xy-1.75073||(y>-xy+1.83134&&y<-xy+1.85073)\
  &&y>xy-1.75073&&y<0.08&&y>0.03
  chra37 = abs(cabs(z+(-0.76559,-0.0707))-0.0057)<0.0036&&x<0.76559||\
  (abs(cabs(z+(-0.76959,-0.0707))-0.0057)<0.0036&&x>0.76959)&&y>0.070\
  7||((abs(cabs(z+(-0.76559,-0.0593))-0.0057)<0.0036&&x<0.76559)||(ab\
  s(cabs(z+(-0.76959,-0.0593))-0.0057)<0.0036&&x>0.76959))||(x>0.7655\
  9&&x<0.76959&&(y<0.0572||(y>0.0728&&y<0.08)||(y>0.0614&&y<0.0686)))\
  ||(x>0.77169&&x<0.77889&&y<0.0707)
  chrn38 = x>0.78289&&x<0.79009&&y<0.08||(abs(cabs(z+(-0.79407,-0.068\
  82))-0.00758)<0.0036&&y>0.06882)||(x>0.79804&&x<0.80524&&y<0.06882)
  chrd39 = x>0.83174&&x<0.83894||(abs(cabs(z+(-0.82424,-0.065))-0.011\
  4)<0.0036&&x<0.83174)
  chrG41 = abs(cabs(z+(-0.88294,-0.07))-0.0164)<0.0036&&(x<0.88294||y\
  <0.0736||y>0.0772)||(x>0.88294&&x<=0.89574&&y<0.0736&&y>0.0664)
  chru42 = x>0.90694&&x<0.91414&&y>0.06118&&y<0.08||(abs(cabs(z+(-0.9\
  1812,-0.06118))-0.00758)<0.0036&&y<0.06118)||(x>0.92209&&x<0.92929&\
  &y<0.08)
  chry43 = y<xy-2.30823&&y>xy-2.32762||(y>-xy+2.40823&&y<-xy+2.42762)\
  &&y>xy-2.32762&&y<0.08&&y>0.03
  test5 = chrf27||chrr28||chro29||chrm30||chrS32||chru33||chrs34||chr\
  a37||chrn38||chrd39||chrG41||chru42&&y>0.05||chry35||chry43&&y<0.09
  test=test1||test3||test5
  test0=test2||test4
  test0=test0&&whitesq
  test0=(test0==0)
  test0=((test0||test)==0)
  f1=sin(.5*pixel)
  f2=1/(32*pixel)
  newpixel=(test==0)*f2+test*f1
     ; Import of formula 'Gallet-8-21' from file GALLET-8.FRM
     ; Requires periodicity = 0 and decomp=256
     ; p1 = parameter for a Julia set (0 for the Mandelbrot set)
     ; 0 < real(p2) , 0 < imag(p2)
  im2 = imag(p2)
  IF (p1 || imag(p1))
    c = p1
  ELSE
    c = newpixel
  ENDIF
  z = -1 , zn = newpixel , zmin = zmin0 = abs(real(p2))
  cmax = trunc(abs(real(p3)))
  IF (cmax < 2)
    cmax = 2
  ENDIF
  k = flip(6.28318530718/(zmin*real(cmax))), cnt = -1
  :
  cnt = cnt + 1
  IF (cnt == cmax)
    cnt = 0
  ENDIF
  zn = zn*zn + c, znc = cabs(im2*real(zn) + flip(imag(zn)))
  IF (znc < zmin)
    zmin = znc, z = exp((cnt*zmin0 + zmin)*k)
  ENDIF
  znc <= 4&&test0==0
}

bubbleboth_jul { ; Kerry Mitchell
        ;
        ; color Julia sets with small bubbles
        ; filled with swirls (combination of rays and circles)
        ;
        ; use outside=iter, decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (at least 4)
        ; imag(p2) = radius of bubble (try ~ .1)
        ; real(p3) = amount of circles (0 for only rays, try 0.5)
        ; imag(p3) = amount of rays (0 for only circles, try 0.5)
        ; zc is the variable used for iteration, z for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), minr=imag(p2), scale=2*pi/minr
        minset=0, iter=1, rzc=cabs(zc), minzc=zc
        weight=real(p3)+imag(p3)
        weightc=real(p3)/weight, weightr=imag(p3)/weight
        ;
        ; initial check:  see if pixel magnitude falls within threshold
        ;   if so, set minset flag, update minimum to current magnitude
        ;
        if (rzc<minr)
          minr=rzc, minzc=zc, minset=1
          endif
        :
        iter=iter+1, zc=sqr(zc)+c, rzc=cabs(zc)
        ;
        ; iteration check:  see if iterate falls within threshold
        ;   if so, set minset flag, update minimum to current magnitude
        ;
        if (rzc<minr)
          minr=rzc, minzc=zc, minset=1
          endif
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   scale minr to find decomp angle for circles
        ;   take polar angle from minzc to ray decomp angle
        ;   final angle is weighted average of ray and circle angles
        ;   if a new minimum was never set (minset=0),
        ;   set z=0 (color 0 under decomp)
        ;
        if ((rzc>maxr)||(iter==maxit))
          iter=-1
          anglec=scale*minr, angler=imag(log(minzc))
          angle=weightc*anglec+weightr*angler
          z=(cos(angle)+flip(sin(angle)))*minset
          endif
        iter > 0
        }
        
bubbleboth_man { ; Kerry Mitchell
        ;
        ; color Mandelbrot set with small bubbles
        ; filled with swirls (combination of rays and circles)
        ;
        ; use outside=iter, decomp=256
        ; real(p1) = bailout (at least 4)
        ; imag(p1) = radius of bubble (try ~ .1)
        ; real(p2) = amount of circles (0 for only rays, try 0.5)
        ; imag(p2) = amount of rays (0 for only circles, try 0.5)
        ; zc is the variable used for iteration, z for coloring
        ;
        zc=pixel, c=pixel, maxr=real(p1), minr=imag(p1), scale=2*pi/minr
        minset=0, iter=1, rzc=cabs(zc), minzc=zc
        weight=real(p2)+imag(p2)
        weightc=real(p2)/weight, weightr=imag(p2)/weight
        ;
        ; initial check:  see if pixel magnitude falls within threshold
        ;   if so, set minset flag, update minimum to current magnitude
        ;
        if (rzc<minr)
          minr=rzc, minzc=zc, minset=1
          endif
        :
        iter=iter+1, zc=sqr(zc)+c, rzc=cabs(zc)
        ;
        ; iteration check:  see if iterate falls within threshold
        ;   if so, set minset flag, update minimum to current magnitude
        ;
        if (rzc<minr)
          minr=rzc, minzc=zc, minset=1
          endif
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   scale minr to find decomp angle for circles
        ;   take polar angle from minzc to ray decomp angle
        ;   final angle is weighted average of ray and circle angles
        ;   if a new minimum was never set (minset=0),
        ;   set z=0 (color 0 under decomp)
        ;
        if ((rzc>maxr)||(iter==maxit))
          iter=-1
          anglec=scale*minr, angler=imag(log(minzc))
          angle=weightc*anglec+weightr*angler
          z=(cos(angle)+flip(sin(angle)))*minset
          endif
        iter > 0
        }

Bubbles_Julia_Mset {; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;
    ;   p1       = if both real(p1) and imag(p1) are zero
    ;              do Mset, otherwise do Julia set.
    ;   real(p2) = maximum contour of minimum sqrt(|w|)
    ;              (this is the outside edge of the bubbles).
    ;   imag(p2) = Value of |w| at bailout.
    ;   real(p3) = number of color ranges.
    ;   imag(p3) = number of colors in each color range.
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    IF (real(p1) == 0 && imag(p1) == 0)
        w = 0
        c = pixel
    ELSE
        w = pixel
        c = p1
    ENDIF
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    max_w = imag(p2)
    ;****************************************************
    ; In the accompanying par files, bubsjul1 and 2.par,
    ; we have 2 color ranges with 125 colors in each range
    ; for a total of 250 colors. The first range starts at
    ; color 1.
    ;****************************************************
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    ;****************************************************
    ; Real(p2) is the largest value of contours that will
    ; be plotted. Typical values are 0.05 to 0.25.
    ;****************************************************
    max_min_w = real(p2)
    min_w = 1.0e20:
    ;****************************************************
    ; The equation being iterated.
    ; This example uses the standard Mandelbrot set equation.
    ;****************************************************
    w = w * w + c
    ;****************************************************
    ; Save the smallest value of sqrt(|w|).
    ;****************************************************
    temp = sqrt(|w|)
    IF (temp < min_w)
       min_w = temp
       save_range = range_num
    ENDIF
    ;****************************************************
    ; If the orbit point exceeds the maximum value, set z to
    ; the index into the colormap and set the bailout flag.
    ;****************************************************
    IF (|w| > max_w)
        IF (min_w < max_min_w)
            range_index = (min_w / max_min_w) * (colors_in_range - 1)
            z = range_index + save_range * colors_in_range + 1
        ELSE
            z = 0
        ENDIF
        bailout = 1
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
    bailout == 0  && |w| < max_w
}

bubblesGrav {; adapted from Paul Carlson
    ;original gravijul by Mark Christenson
    ; Parameters:
    ;
    ;   p1       = if both real(p1) and imag(p1) are zero
    ;              do Mset, otherwise do Julia set.
    ;   real(p2) = maximum contour of minimum sqrt(|w|)
    ;              (this is the outside edge of the bubbles).
    ;   imag(p2) = value of |w| at bailout.
    ;   real(p3) = number of color ranges.
    ;   imag(p3) = number of colors in each color range.
    ;
    IF (real(p1) == 0 && imag(p1) == 0)
 w = 0
 c = pixel
    ELSE
 w = pixel
 c = p1
    ENDIF
    z = bailout = iter = range_num = 0
    max_w = imag(p2)
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    max_min_w = real(p2)
    min_w = 1.0e20
    factor = (colors_in_range - 1) / max_min_w
    :
     q=fn1(w)
w=fn3(1/fn2(q*q))
    ;
    temp = sqrt(|w|)
    IF (temp < min_w)
       min_w = temp
       save_range = range_num
    ENDIF
    IF (|w| > max_w)
 IF (min_w < max_min_w)
     z = factor * min_w + save_range * colors_in_range + 1
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
}

BUG05 (XYAXIS) {
  z = 0:
  z = sin(z) + cos(pixel) + c + p1
  z = z ^ fn1(z) + z  
}

C02-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Halley Method with weird bailout test
        ;
        ; C(n+1) = zC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = z
        ;
        ; = zC01-C00
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*z-2
  fd=2*z
  fdd=2
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
}

C02-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Newton Method with weird bailout test
        ;
        ; C(n+1) = zC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = z
        ;
        ; = zC01-C00
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*z-2
  fd=2*z
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}

C03-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(x*x-3)
  Ty=y*(y*y-3)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
}

C03-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(x*(x*x-3))
  Ty=sin(y*(y*y-3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
}

C04-01{;V.1.0 - earlier versions may be discarded
; = zC03-C02
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
xx=x*x,yy=y*y
Tx=xx*(xx-4)+2
Ty=yy*(yy-4)+2
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

C04-09{;V.1.0 - earlier versions may be discarded
; = zC03-C02
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
xx=x*x,yy=y*y
Tx=fn1(xx*(xx-4)+2)
Ty=fn1(yy*(yy-4)+2)
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

C05-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=x*(xx*(xx-5)+3)
  Ty=y*(yy*(yy-5)+3)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
}

C05-07(xyaxis){;V.1.0 - earlier versions may be discarded
; = zC04-C03
bailout=real(p2)/10000,z=pixel:
zz=z*z
f=z*(zz*(zz-5)+3)
fd=5*zz*(zz-3)+3
oz=z
w=z-f/fd
ww=w*w
fw=w*(ww*(ww-5)+3)
z=w-fw/fd
bailout<=|z-oz|}

C05-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz-5)+3)
  fd=5*zz*(zz-3)+3
  fdd=10*z*(2*zz-3)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
}

C06-01{;V.1.0 - earlier versions may be discarded
; = zC05-C04
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
xx=x*x,yy=y*y
Tx=xx*(xx*(xx-6)+7)-2
Ty=yy*(yy*(yy-6)+7)-2
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

C06-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz-6)+7)-2
  fd=2*z*(3*zz*(zz-4)+7)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
}

C06-29{;V.1.1 - earlier versions may be discarded
; = zC05-C04
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
xx=x*x
Tx=(fn1(xx*(xx*(xx-6)+7)-2))
yy=y*y
Ty=(fn1(yy*(yy*(yy-6)+7)-2))
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
test=(|Tx|+|Ty|)
test>=bailout && test<=1e30}

C07-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=x*(xx*(xx*(xx-7)+12)-5)
  Ty=y*(yy*(yy*(yy-7)+12)-5)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
}

C07-09{;V.1.1 - earlier versions may be discarded
; = zC06-C05
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
xx=x*x,yy=y*y
Tx=fn1(x*(xx*(xx*(xx-7)+12)-5))
Ty=fn1(y*(yy*(yy*(yy-7)+12)-5))
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

C07-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz-7)+12)-5)
  fd=zz*(7*zz*(zz-5)+36)-5
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}

C08-01{;V.1.0 - earlier versions may be discarded
; = zC07-C06
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
xx=x*x,yy=y*y
Tx=xx*(xx*(xx*(xx-8)+18)-12)+2
Ty=yy*(yy*(yy*(yy-8)+18)-12)+2
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

C08-09{;V.1.0 - earlier versions may be discarded
; = zC07-C06
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
xx=x*x,yy=y*y
Tx=fn1(xx*(xx*(xx*(xx-8)+18)-12)+2)
Ty=fn1(yy*(yy*(yy*(yy-8)+18)-12)+2)
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

C08-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz-8)+18)-12)+2
  fd=8*z*(zz*(zz*(zz-6)+9)-3)
  fdd=8*(zz*(zz*(7*zz-30)+27)-3)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
}

C09-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=x*(xx*(xx*(xx*(xx-9)+25)-24)+7)
  Ty=y*(yy*(yy*(yy*(yy-9)+25)-24)+7)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
}

C10-01{;V.1.0 - earlier versions may be discarded
; = zC09-C08
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
xx=x*x,yy=y*y
Tx=xx*(xx*(xx*(xx*(xx-10)+33)-42)+19)-2
Ty=yy*(yy*(yy*(yy*(yy-10)+33)-42)+19)-2
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

C10-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz*(zz-10)+33)-42)+19)-2
  fd=2*z*(zz*(zz*(5*zz*(zz-8)+99)-84)+19)
  fdd=2*zz*(5*zz*(zz*(9*zz-56)+99)-252)+38
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
}

C10-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz*(zz-10)+33)-42)+19)-2
  fd=2*z*(zz*(zz*(5*zz*(zz-8)+99)-84)+19)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}

c7manderiv  { 
;Copyright Ben Leighton 1998
;try sin(fn1) and cos (fn2)
q=pixel, a=1, b=flip(1), last = 0:
a=a+ fn1(imag(pixel)*10*(1/imag(q)))
b=b+ fn2(real(pixel)*10*(1/real(q)))
q=(q-a-b)^2 + pixel  
(a+b) <= 300
}

Ca03{; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
     ; Prerelease version 20/01/1998
a=p1
b=2*a*(a+1)
c=2*(a+2)/3
t=real(p2),bailout=4,z=pixel:
x=real(z),y=imag(z)
xx=sqr(x),yy=sqr(y)
Tx=fn1(b*x*(c*xx-1))
Ty=fn1(b*y*(c*yy-1))
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

Ca04-01{;V.1.0 - earlier versions may be discarded
; = ((a+3)xCa(3)-(a+1)Ca(2))/2
a=p2,b=a*(a+1)/2,c=4*(a+2),d=(a+3)/3
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
xx=x*x,yy=y*y
Tx=b*(c*xx*(d*xx-1)+1)
Ty=b*(c*yy*(d*yy-1)+1)
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

Ca05-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p2, b=a*(a*(a+3)+2)/3, c=4*(a+3), d=(a+4)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=b*x*(c*xx*(d*xx-1)+3)
  Ty=b*y*(c*yy*(d*yy-1)+3)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
}

Ca06-01 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p2, b=a*(a*(a+3)+2)/6, c=a+3, d=4*(a+4), k=(a+a+10)/15
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=b*(c*xx*(d*xx*(k*xx-1)+3)-1)
  Ty=b*(c*yy*(d*yy*(k*yy-1)+3)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
}

Ca06-03 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p2, b=a*(a*(a+3)+2)/6, c=a+3, d=4*(a+4), k=(a+a+10)/15
  const=p1, z=pixel:
  zz=z*z
  z=b*(c*zz*(d*zz*(k*zz-1)+3)-1)+const
  |z|<100
}

Ca06-05 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p1
  b1=a*(a*(a+3)+2)/6
  c1=a+3
  d1=4*(a+4)
  e1=2*(a+5)/15
  b2=a*(a*(a*(a+6)+11)+6)/3
  c2=8*(a+4)
  d2=(a+5)/5
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz*(e1*zz-1)+3)-1)
  fd=b2*z*(c2*zz*(d2*zz-1)+3)
  oz=z
  z=z-f/fd
  bailout<=|z-oz|
}

Ca07-01 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p2, b=a*(a*(a*(a+6)+11)+6)/21, c=a+a+8
  d=((a+a)*(a+11)+60)/15, k=7*(a+5)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=b*x*(c*xx*((xx+xx)*(d*xx-k)+7)-7)
  Ty=b*y*(c*yy*((yy+yy)*(d*yy-k)+7)-7)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
}

Ca07-09 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/21
  c=a+a+8
  d=(a+a)*(a+11)/15+4
  k=7*(a+5)/5
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(b*x*(c*xx*((xx+xx)*(d*xx-k)+7)-7))
  Ty=fn1(b*y*(c*yy*((yy+yy)*(d*yy-k)+7)-7))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
}

Ca07-26{;V.1.1.1 - earlier versions may be discarded
; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
a=p1
b=a*(a*(a*(a+6)+11)+6)/21
c=a+a+8
d=(a+a)*(a+11)/15+4
k=7*(a+5)/5
t=real(p2),bailout=real(p3),z=pixel,v=imag(p3):
x=real(z),y=imag(z)
xx=x*x
Tx=(fn1(b*x*(c*xx*((xx+xx)*(d*xx-k)+7)-7)))
yy=y*y
Ty=(fn1(b*y*(c*yy*((yy+yy)*(d*yy-k)+7)-7)))
x=x-t*Ty,y=y+t*Tx
w=fn1(x+flip(y))
z=fn3(v/fn2(w*w))+p2
|z|<=bailout}

Ca09-01 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p2, b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c=a*(a*(a+a+36)+214)+420, d=(a+8)/18
  k=7*(a*(9*a+94)+270)/6, f=35*(a+5)/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=b*x*(16*xx*(xx*(c*xx*(d*xx-1)+k)-f)+105)
  Ty=b*y*(16*yy*(yy*(c*yy*(d*yy-1)+k)-f)+105)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
}

Ca10-08 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5)
  d=a+a+12
  k=a*(a+15)+56
  f=(a+a+18)/45
  g=14*(a+a+13)/5
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(b*(c*xx*(d*xx*(81*xx*(k*xx*(f*xx-1)+g)-1418)+2127)-31903))
  Ty=sin(b*(c*yy*(d*yy*(81*yy*(k*yy*(f*yy-1)+g)-1418)+2127)-31903))
  x=x+t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
}

Carr-900 {
  z=cotanh(pixel+1)/imag(1/pixel-0.334),
  c=sqr(sqr(sqr(pixel*1/pixel))):
  z=(z^real(2.124)+c)/1.7,
  |real(z)| <=100
}

Carr-930 {
  z=conj(4/pixel),c=cotanh(pixel-4):
  z=(((imag(z+2)/c)+((2.4*z)*4/c))/(pixel-c*c+1/pixel))/1.6,
  |z-1/pixel| <=100
}

Carr-969 {
  z=imag(1/(pixel*pixel*pixel)),
  c=(4.299,-1.2)/(1/abs(pixel*pixel+2)):
  z=(z*1/c)/(pixel-c*c),
  |real(z)| <=100
}

Carr1999 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z= c =pixel+1/log(pixel),
  c1=1.5*z , c2=2.25*z , c3=3.375*z , c4=5.0625*z,
  l1=real(p1) , l2=imag(p1) , l3=real(p2) , l4=imag(p2),
  bailout=16, iter=0 , pp2 = pixel/imag(p2):
  t1=(iter==l1) , t2=(iter==l2) , t3=(iter==l3) , t4=(iter==l4),
  t=1-(t1||t2||t3||t4) , z=z*t , c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c,
  iter=iter+1
  (|real(z)|) <= bailout
}

carr2821 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; Converted to if.else by Sylvie Gallet and George Martin 3/97
          ; passes=1 needs to be used with this PHC formula.
   pixinv = 0.1/pixel
   p9 = 0.9*pixinv
   imagp1 = imag(p1)
   imagp2 = imag(p2)
   IF (whitesq)
      z = zorig = pixel - conj(pixinv)
      c = pixel - flip(pixinv) - conj(0.01*pixinv) - p9
      mz = |z|
   ELSE
      c = flip(pixinv) + conj(0.01*pixinv) - pixel - p9
      z = zorig = conj(pixinv) - pixel
      mz = |z|
   ENDIF
   bailout = 16
   iter = 0
   :
   IF (iter==p1)
      z = mz = 0
      c = 1.5*zorig^1.2 - p9
   ELSEIF (iter==imagp1)
      z = mz = 0
      c = 2.25*conj(zorig) - p9
   ELSEIF (iter==p2)
      z = mz = 0
      c = 3.375*flip(zorig) - p9
   ELSEIF (iter==imagp2)
      z = mz = 0
      c = 5.0625*flip(zorig) - p9
   ENDIF
   z = mz*0.2 + z*z + c
   mz = |z|
   iter = iter + 1
   mz <= bailout
}

Carr2821a { ; Modified Sylvie Gallet frm. [101324,3444],1996
            ; Modified for IF..ELSE logic by Sylvie Gallet, March 1997
            ; Optimized by Sylvie Gallet, April 1997
            ; Changed variable e to ee, 5/04/99. G. Martin
  ee = -0.1/pixel, z = c = conj(ee) + pixel, r = |z|
  k = ee*0.9, p = k + flip(ee) + conj(0.01*ee) + pixel
  bailout = 16, im1 = imag(p1), im2 = imag(p2)
  iter = 0 :
  IF (iter == p1)
    p = (c^1.2)*1.5 + k, r = z = 0
  ELSEIF (iter == im1)
    p = conj(c)*2.25 + k, r = z = 0
  ELSEIF (iter == p2)
    p = flip(c)*3.375 + k, r = z = 0
  ELSEIF (iter == im2)
    p = flip(c)*5.0625 + k, r = z = 0
  ENDIF
  iter = iter + 1, z = real(r)*0.2 + sqr(z) + p, r = |z|
  r <= bailout
  ;SOURCE: phctopng.frm
}

Carr2821b {; Modified Sylvie Gallet frm. [101324,3444],1996
           ; Modified for IF..ELSE logic by Sylvie Gallet, March 1997
           ; Optimized by Sylvie Gallet, April 1997
           ; Changed variable e to ee, 5/04/99. G. Martin
  ee = 0.1/pixel, z = c = conj(ee) - pixel, r = |z|
  k = ee*(-0.9), p = k + flip(ee) + conj(0.01*ee) - pixel
  bailout = 16, im1 = imag(p1), im2 = imag(p2)
  iter = 0 :
  IF (iter == p1)
    p = (c^1.2)*1.5 + k, r = z = 0
  ELSEIF (iter == im1)
    p = conj(c)*2.25 + k, r = z = 0
  ELSEIF (iter == p2)
    p = flip(c)*3.375 + k, r = z = 0
  ELSEIF (iter == im2)
    p = flip(c)*5.0625 + k, r = z = 0
  ENDIF
  iter = iter + 1, z = real(r)*0.2 + sqr(z) + p, r = |z|
  r <= bailout
}

Carr2882 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b3=|sin(conj(conj(pixel^30.5)))|
  b4=(conj(conj(0.15/log(exp(conj(conj(pixel^450))-b3-0.4)-0.8))))
  b5=(-0.7564,0.21978)*((-1.099,-0.2249)/(-0.8606,-0.0959))\
      -flip(0.001/pixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21)
  iter=iter+1
  |z|<=bailout
}

Carr2884 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
          ; Rewritten for if..else by Sylvie Gallet 5/22/98
  if (whitesq)
    c = 0.15/log(exp(pixel^7 + |sin(pixel^3.5)| - 0.4) - 0.8)
    c = (-0.7456,-0.132) + c/10 - 1/(c*6000)
    z = zorig = (pixel - conj(0.1/pixel) - flip(0.01/pixel))^7
  else
    c = - 0.15/log(exp(pixel^7 + |sin(pixel^3.5)| - 0.4) - 0.8)
    c = (-0.7456,-0.132) + c/10 - 1/(c*6000)
    z = zorig = - (pixel - conj(0.1/pixel) - flip(0.01/pixel))^7
  endif
  bailout = 16 , iter = 0 :
  IF (iter == p1)
    z = c = (-0.7456,-0.132) + 0.15*zorig - 1/(zorig*9000)
  ELSEIF (iter == imag(p1))
    z = c = (-0.7456,-0.132) + 0.225*zorig - 1/(zorig*13500)
  ELSEIF (iter == p2)
    z = c = (-0.7456,-0.132) + 0.3375*zorig - 1/(zorig*20250)
  ELSEIF (iter == imag(p2))
    z = c = (-0.7456,-0.132) + 0.50625*zorig - 1/(zorig*30375)
  else
    z = z*z + c
  ENDIF
  iter = iter + 1
  |z| <= bailout
}

Carr2891 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel-conj(0.1/pixel)-flip(0.01/pixel)
  b3=|cos(conj(conj(pixel^30.5)))|
  b4=(conj(conj(0.15/log(exp(conj(conj(pixel^450))\
      -b3-0.4)-0.8))))+|flip(flip(2*b5^4))|
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}

Carr2904 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=(pixel-conj(0.1/pixel-flip(0.01/pixel)))^5
  b4=pixel-conj(0.1/pixel-flip(0.01/pixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  c=((z+c/2.125)-0.0125)
  iter=iter+1
  |z|<=bailout
}

Carr2907 (XYAXIS) {; Halley PHC
                   ; passes=1 needs to be used with this PHC formula.
  b5=1/pixel
  z=b5*(whitesq+b5*(whitesq==0)): 
  z5=z*z*z*z*z
  z6=z5*z
  z7=z6*z
  z=(z-p1*((z7-z)/((14.0*z6-2)-(84.0*z5)*(z7-z)/(28.0*z6-4))))
  0.0001<=|z7-z|
}

Carr2926 {; Modified-inandout04 
          ; passes=1 needs to be used with this PHC formula.
  k=((1)*(|p1|<=0)+p1)
  test=(4*(real(p2)<=0)+real(p2)*(0<p2))
  b4=cabs(pixel*2)-log(conj(0.5/pixel))
  b5=oldz=pixel-conj(pixel-1/log(tan(1/pixel))-1/log(2/pixel))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
  a=(|z|<=|oldz|)*(c)
  b=(|oldz|<|z|)*(c*k)
  c=(a+b)
  oldz=z
  z=z*z+c
  |z|<=test
}

Carr2929{ ; Modified OK-42
;passes=1 needs to be used with this PHC formula.
b5=1/pixel,
p1x=real(p1)+1,p1y=imag(p1)+1,
p2x=real(p2)+1,p2y=imag(p2)+1
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
zx=real(z),zy=imag(z),
x=fn1(zx*p1x-zy*p1y)+fn2(zx*p2x-zy*p2y),
y=fn3(zx*p1y+zy*p1x)+fn4(zx*p2y+zy*p2x),
z=x+flip(y),
|z|<=20
}


Carr2930{ ; Modified OK-42
;passes=1 needs to be used with this PHC formula.
b5=pixel,
p1x=real(p1)+1,p1y=imag(p1)+1,
p2x=real(p2)+1,p2y=imag(p2)+1
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
zx=real(z),zy=imag(z),
x=fn1(zx*p1x-zy*p1y)+fn2(zx*p2x-zy*p2y),
y=fn3(zx*p1y+zy*p1x)+fn4(zx*p2y+zy*p2x),
z=x+flip(y),
|z|<=4
}

Carr2931{ ; Modified OK-42
;passes=1 needs to be used with this PHC formula.
b5=pixel,
p1x=real(p1)+1,p1y=imag(p1)+1,
p2x=real(p2)+1,p2y=imag(p2)+1
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
zx=real(z),zy=imag(z),
x=fn1(zx*p1x-zy*p1y)+fn2(zx*p2x-zy*p2y),
y=fn3(zx*p1y+zy*p1x)+fn4(zx*p2y+zy*p2x),
z=x+flip(y)+(-0.7456,-0.132)+(x+flip(y))/10,
|z|<=4
}


Carr2932{ ; Modified OK-42
;passes=1 needs to be used with this PHC formula.
b5=pixel,
p1x=real(p1)+1,p1y=imag(p1)+1,
p2x=real(p2)+1,p2y=imag(p2)+1
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
zx=real(z),zy=imag(z),
x=fn1(zx*p1x-zy*p1y)+fn2(zx*p2x-zy*p2y),
y=fn3(zx*p1y+zy*p1x)+fn4(zx*p2y+zy*p2x),
z=(|x+flip(y)|)+(x+flip(y))+(-0.7456,-0.132)+(x+flip(y))/10,
|z|<=4
}

Carr2939{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=flip(flip(pixel/2))^5-conj(0.13/pixel)-flip(0.1/pixel)+0.3,
b4=pixel^3-conj(0.13/pixel-cabs(0.1/pixel))
c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=0.2*z^3+z^2+(-0.7656,-0.232)+c/10+c,
iter=iter+1
imag(flip(z))<=bailout
}

Carr2949 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(sqr(pixel))/(conj(2/pixel)*sin(2/pixel))
  b5=(b4/(cos(-0.7456,0.2)))-flip(0.1/pixel)+0.4
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.132)+c/10
  iter=iter+1
  imag(flip(z))<=bailout
}

Carr2958 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
          ; Converted to IF..ELSE logic by Sylvie Gallet, 02/21/98
  b4 = abs(sinh(0.5+pixel/2))^3 - conj(0.1/pixel) - flip(0.1/pixel) + 0.5
  if (whitesq)
    c = conj(b4)/10 + (-0.7456,-0.132) , z = zorig = sqr(b4)
  else
    c = - sqr(b4)/10 + (-0.7456,-0.132) , z = zorig = - conj(b4)
  endif
  imagp1 = imag(p1) , imagp2 = imag(p2) , bailout = 16 , iter = 0
  :
  if (iter == p1)
    z = 0 , c = 0.15 * zorig + (-0.7456,-0.132)
  elseif (iter == imagp1)
    z = 0 , c = 0.225 * zorig + (-0.7456,-0.132)
  elseif (iter == p2)
    z = 0 , c = 0.3375 * zorig + (-0.7456,-0.132)
  elseif (iter == imagp2)
    z = 0 , c = 0.50625 * zorig + (-0.7456,-0.132)
  endif
  iter = iter + 1
  z = z*z + c
  z <= bailout
  }

Carr3197 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Edited for Fractint v. 20 by George Martin, 10/98
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-cos(1/newpixel))
  b4=newpixel^2-(0.2*cabs(0.2-newpixel^(-0.025)))
  b5=flip(b4)^2-cabs(0.1/newpixel-flip(0.01/b4))-conj(0.1/newpixel)-0.65
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  (|z|)<=bailout
}

Carr3357 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=((tan(newpixel)-sin(newpixel))*(conj(newpixel)\
     -flip(newpixel)))-conj(0.08/newpixel)+0.15
  b4=newpixel*b5
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
}

Carr3371 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; Rewritten for if..else by George Martin 3/9/98
                  ; passes=1 needs to be used with this PHC formula
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  tenthinvpixel = .1/newpixel
  b6=conj(tenthinvpixel) 
  b7=flip(.1*tenthinvpixel) 
  b8=cabs(.02*tenthinvpixel+cabs(0.02*tenthinvpixel))
  b4=abs(newpixel^2)*conj(flip(newpixel^3))\
     -conj(tenthinvpixel-flip(0.1*tenthinvpixel))
  b5=(newpixel^3)*cabs(newpixel+0.125)^4-b7-b6+1.75*b8-0.2
  IF (whitesq)
    z = origz = b5^0.7456
    c = (-0.7456,-0.13214)+conj(.1*b4)
  ELSE
    z = origz = -b5
    c = (-0.7456,-0.13214)+conj(.1*(-b4))
  ENDIF
  bailout=16, imagp1 = imag(p1), imagp2 = imag(p2), iter=0
  :
  IF (iter == p1)
    z=0
    c=(-0.7456,-0.13214)+conj(.15*origz^1.2)     
  ELSEIF (iter == imagp1)
    z=0
    c=(-0.7456,-0.13214)+conj(.225*origz)   
  ELSEIF (iter == p2)
    z=0
    c=(-0.7456,-0.13214)+conj(.3375*origz)   
  ELSEIF (iter == imagp2)
    z=0
    c=(-0.7456,-0.13214)+conj(.50625*origz)   
  ENDIF
  z=z*z+c
  iter=iter+1
  |z|<=bailout
}




Carr3385 {; Modified Sylvie Gallet frm.1996
          ; passes=1 needs to be used with this PHC formula
          ; Some optimizations made by G. Martin
  d=sqrt(1/pixel-cosxx(1/pixel))
  b5=conj(conj(pixel))*cabs(pixel)-flip(0.01/pixel)-conj(0.1/pixel)-0.1
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=conj(|z|/30)+z^2+(-0.7556,-0.117)+flip(real(|d/70*pixel|))-0.001
  iter=iter+1
  |z|<=bailout
}

Carr3386 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=conj(conj(newpixel^2)*sin(abs(newpixel^3)))*cabs(newpixel^1.5)
  b5=b3-conj(0.1/newpixel-flip(0.01/newpixel))+0.16
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+c+flip(real(|d/70*newpixel|))
  iter=iter+1
  |z|<=bailout
}



Carr3395 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=cabs(newpixel)*abs(conj(newpixel^3)/(conj(newpixel-flip(0.08/newpixel))))
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7612073214,0.085496112)
  iter=iter+1
  |z|<=bailout
}




Carr3401 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)-0.1
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7612073214,0.080996112)
  iter=iter+1
  |z|<=bailout
}


Carr3402 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(newpixel)^4*conj(newpixel)^4-conj(0.15/newpixel)-flip(0.15/newpixel)+0.23
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7612073214,0.084496112)
  iter=iter+1
  |z|<=bailout
}

Carr3416 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=(1.224*cabs(newpixel^5)-flip(conj(newpixel)))
  b5=(((conj(b3/2))*abs(b3)*(b3)^3-conj(0.01/b3))/(tanh(0.6/newpixel)))+0.37
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7626073214,0.084796112)
  iter=iter+1
  z<=bailout
}




Carr3534 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3a=(0.1+|0.018/newpixel|)
  b1=(|0.026/newpixel|)-conj(|0.025/newpixel|)-real(0.025/newpixel)
  b1a=flip(conj(0.1+newpixel))*(newpixel)-(conj(0.1/newpixel))+sqr(flip(0.1/newpixel))
  b3=(b1a/((0.4/newpixel)))-conj(b3a)/newpixel
  b5=(|newpixel/2|)*b3^1.75-flip(flip(0.046/newpixel))^3.9+0.0015/newpixel-0.066824
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
  iter=iter+1
  |z|<=bailout
}

Cayley-jul {  ; Mark Townsend, 17 Feb 1999
; Always use floating point math and turn
; periodicity checking off.
;*****************************
  z = pixel, a = p1, oldz = 0:
;*****************************
  oldz = z
  z = (2 * z * z * z - (a - 1)) / (3 * z * z - a)
  |z-oldz| >= 0.00001
}

Cayley-mand { ; Mark Townsend, 17 Feb 1999
; Always use floating point math and turn
; periodicity checking off.
;*************************
  z = oldz = 0, a = pixel:
;*************************
  oldz = z
  z = (2 * z * z * z - (a - 1)) / (3 * z * z - a)
  |z - oldz| >= 0.00001
}

Cdp_Jul_Mand {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = 0 if Mset, otherwise Julia set
    ; imag(p1) = maximum value of ratio (try 0.01 to 0.3)
    ; p2       = Julia set coordinates (not used if Mset)
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
  z = iter = range_num = bailout = 0
  IF (real(p1) == 0)
    prev_w = 0
    c = pixel
  ELSE
    prev_w = pixel
    c = p2
  ENDIF
  max_r = imag(p1)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  index_factor = (colors_in_range - 1) / max_r
  :
  w = prev_w * prev_w + c
    ;
  r = |prev_w| / |w|
  prev_w = w
  IF (r < max_r && iter > 0)
    bailout = 1
    z = index_factor * r + range_num * colors_in_range + 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < 4
}

cell4 { ; Kerry Mitchell 29aug98
        z=pixel, cell=real(p1), fac=imag(p1)
        iter=-1, done=0, itermax=real(p2):
        x=real(z), y=imag(z)
        i=trunc(x/cell)*cell, x=x-i
        j=trunc(y/cell)*cell, y=y-j
        u=y, v=-x
        x=i+u, y=j+v
        iter=iter+1, z=x+flip(y), cell=cell*fac
        if (iter==itermax)
          done=1
          endif
        done==0
        }

Celtic_Grav{ ; Kathy Roth 9-5-98 adapted from Paul W. Carlson
            ;copyright (c) Paul W. Carlson, 1998
            ;original Gravijul by Mark Christenson
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
    q=fn1(w)
    w=fn3(1/fn2(q*q)), wr = real(w)
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
}

Celtic_Julia {; Copyright (c) Paul W. Carlson, 1998
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
}

center_jul {
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
        iter=iter+1, zc=sqr(zc)+c
        tempx=|zc-cenx|-rad2x
        tempy=ay*real(zc)+by*imag(zc)+cy
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

cenx=ceny_jul { ; Kerry Mitchell 26aug98
	;
	; "2 concentric circles" coloring method for Julia sets
	; p1 = c = Julia parameter
	; p2 = (both) circle center
        ; real(p3) = x-circle radius
        ; imag(p3) = y-circle radius
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
        cenx=p2, radx=real(p3), rad2x=radx*radx
        ceny=cenx, rady=imag(p3), rad2y=rady*rady:
        iter=iter+1, zc=sqr(zc)+c
        tempx=|zc-cenx|-rad2x
        tempy=|zc-ceny|-rad2y
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

cenx=-ceny_jul { ; Kerry Mitchell 26aug98
	;
	; "2 opposing circles" coloring method for Julia sets
	; p1 = c = Julia parameter
        ; p2 = x-circle center
        ; -p2 = y-circle center
        ; real(p3) = x-circle radius
        ; imag(p3) = y-circle radius
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
        cenx=p2, radx=real(p3), rad2x=radx*radx
        ceny=-cenx, rady=imag(p3), rad2y=rady*rady:
        iter=iter+1, zc=sqr(zc)+c
        tempx=|zc-cenx|-rad2x
        tempy=|zc-ceny|-rad2y
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

CGNewtonSinExp-M (XAXIS) {
  z=pixel:
   z1=exp(z)
   z2=sin(z)+z1-z
   z=z-p1*z2/(cos(z)+z1)
    p2 < |z2|
  }

ChaoticDualist1{
bailout=p1
z=pixel:
x=real(z)
y=imag(z)
nx=1-abs(x-y)
ny=1-abs(x+y-1)
z=nx+flip(ny)
|z|<=bailout}

ChaoticDualist2{
bailout=p1
z=pixel:
x=real(z)
y=imag(z)
nx=abs(x-y)
ny=1-abs(x+y-1)
z=nx+flip(ny)
|z|<=bailout}

ChaoticDualist3{
bailout=p1
z=pixel:
x=real(z)
y=imag(z)
nx=1-abs(x-y)
ny=abs(x+y-1)
z=nx+flip(ny)
|z|<=bailout}

ChaoticDualist4{
bailout=p1
z=pixel:
x=real(z)
y=imag(z)
nx=1-abs(x-y+1)
ny=1-abs(x+y-1)
z=nx+flip(ny)
|z|<=bailout}

ChaoticDualist1M{
bailout=pixel
z=pixel:
x=real(z)
y=imag(z)
nx=1-abs(x-y)
ny=1-abs(x+y-1)
z=nx+flip(ny)
|z|<=|bailout|}

ChaoticDualist2M{
bailout=pixel
z=pixel:
x=real(z)
y=imag(z)
nx=abs(x-y)
ny=1-abs(x+y-1)
z=nx+flip(ny)
|z|<=|bailout|}

ChaoticDualist3M{
bailout=pixel
z=pixel:
x=real(z)
y=imag(z)
nx=1-abs(x-y)
ny=abs(x+y-1)
z=nx+flip(ny)
|z|<=|bailout|}

ChaoticDualist4M{
bailout=pixel
z=pixel:
x=real(z)
y=imag(z)
nx=1-abs(x-y+1)
ny=1-abs(x+y-1)
z=nx+flip(ny)
|z|<=|bailout|}

CGNewton3 {; Chris Green -- A variation on newton iteration.
  ; The initial guess is fixed at (1,1), but the equation solved
  ; is different at each pixel ( x^3-pixel=0 is solved).
  ; Use floating point.
  ; Try P1=1.8.
  z=(1,1):
  z2=z*z
  z3=z*z2
  z=z-p1*(z3-pixel)/(3.0*z2)
  0.0001 < |z3-pixel|
}

classic-shift_ (XAXIS){ ; Jay Hill, 1998
continue = 1,
z = 0,
zc = c = pixel+.25 + ((pixel-p1)*p2) *whitesq 
   :
if (|zc| > 40)
    continue = 0
else
    zc = sqr(zc) + c
endif
continue == 1
}

classic_shift { ; Jay Hill, 1998
; shift one midget over another, merge images
; p1 = shift of first midget
; p2 = scaling factor of first midget relative to second
; p3 = shift of second midget
; use  outside=summ periodicity=0 passes=1float=y 
continue = 1,
z = 0,
zc = c = (pixel+p3)*(1-whitesq) + (pixel/p2+p1) *whitesq 
   :
if (|zc| > 40)
    continue = 0
else
    zc = sqr(zc) + c
endif
continue == 1
}

clips (XAXIS) {
   ; A rather bizzare varient made with a sign change.
  z = pixel, zp = (0,0):
  temp = z
  z = -(z^.5) - zp
  zp = temp, |zp| <= 4 
}

CmplxNewtghost = { ; Ron Barnett, 1998
        ; use decomp=256
        ; real(p1) = bailout
        ; imag(p1) = "ghost" adjustment:
        ; p2 = complex power
        ; p3 = complex root
        maxr = real(p1), scale = imag(p1)*pi/128
        oldz = 0
        iterexp = 0, iter = 1, zc = pixel, background = pixel:
        iterexp = iterexp + exp(-1/cabs(oldz - zc)), iter = iter + 1
        oldz = zc
        z1 = (p2-1)*zc^p2 + p3
        z2 = p2*zc^(p2-1)
        zc = z1/z2
        IF ((0.000001 > cabs(oldz-zc)) || (iter == maxit))
          smooth = iterexp*scale
          ang = cos(smooth)+flip(sin(smooth))
          z = background*ang
          IF (iter == maxit)
            z = background
          ENDIF
          iter = -1
        ENDIF
        iter > 0
        }

CnFrc_Fnc_Mset {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = controls size of elements (1 to 32)
    ; imag(p1)   not used
    ; real(p2) = usually 1
    ; imag(p2)   not used
    ; real(p2) = number of color ranges
    ; imag(p2) = number of colors in a range
    w = z = iter = range_num = bailout = 0
    c = pixel
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    :
    prev_w = w
    k = w * w + c
    w = k - fn1(p2/(k+p2/(k+p2/(k+p2/(k+p2/(k+p2))))))
    IF (abs(real(w)) > p1)
        bailout = 1
        angle = abs(atan((imag(w)-imag(prev_w))/(real(w)-\
                real(prev_w))))
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
}

conic {; Kerry Mitchell 12may98
       ; Replaced variable "e" with "ee" 5/6/99, G. Martin
       ;  Kerry Mitchell's explanation of his conic formulas is at
       ;  the end of this formula
       ;
       ; draws conic sections, not fractals
       ;   Ax^2 + Bx + Cy^2 + Dy + Exy + F = 0
       ;   A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
       ;   E=real(p3), F=imag(p3).  use decomp=256 coloring
       ;
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3), iter=-1:
  x=real(pixel), y=imag(pixel)
  t=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
  t=log(cabs(t))
  z=cos(t)+flip(sin(t))
  iter>0
;******************************************************************
;    Kerry Mitchell's explanation of his conic formulas 
;               (c) Kerry Mitchell, 1998
;
; Conic Sections
;
; Conic sections are sections of cones.  Specifically, take a double-ended
; cone, like 2 funnels placed tip-to-tip.  Then, form the intersection of
; the (double) cone with a plane.  The intersection, usually one or two
; curves, is a conic section.  Conic sections can be a point, one line, two
; lines, a parabola, an ellipse, a circle, or a hyperbola, depending on the
; orientation of the plane relative to the cone.  Analytically, they can all
; be expressed by the same formula:
;
; Ax^2 + Bx + Cy^2 + Dy + Exy + F = 0,
;
; where the parameters A through F determine the shape of the section, and x
; and y are the 2 spatial coordinates.  For example, the line y=x can be
; represented as
; 
; x - y = 0, or
; A = 0, B = 1, C = 0, D = -1, E = 0, F = 0.
;
; A circle centered at (1,0) with a radius of 2 would have the equation
;
; (x - 1)^2 + y^2 = 4, or
; x^2 - 2x + y^2 - 3 = 0, giving
; A = 1, B = -2, C = 1, D = 0, E = 0, F = -3.
;
; How can these shapes be used to render fractals?  First off, the "conic"
; formula simply draws the section determined by the six parameters A - F,
; to give the user an idea of how the parameter choices affect the section
; generated.
;
; The standard escape-time rendering method stops iterating when the
; magnitude of the iterate is larger than some threshold.  Since the iterate
; is a complex number, this means that the escape condition can be viewed in
; terms of a 2-dimensional shape.  Specifically, if x and y represent the
; real and imaginary parts of the iterate and the threshold level is r, then
; escape occurs when:
;
; x^2 + y^2 > r^2
;
; which just means that the orbit leaves a circle of radius r, centered at
; the origin.  Clearly, the circle could be replaced by any closed curve, so
; long as it is large enough to enclose the fractal.  Open curves can also
; be used as a bailout condition, so long as the appropriate side of the
; curve is chosen.
;
; This opportunity, changing the shape of the escape boundary, is coded into
; the "conic-bail" formulas.  The six parameters (real and imaginary parts
; of p1, p2, and p3) are used to determine a section; iteration ceases when
; the orbit leaves this section.  (In actuality, the escape condition is
; that the quantity
;
; Q = Ax^2 + Bx + Cy^2 + Dy + Exy + F
;
; become larger than 0.  Q=0 is the equation for the escape boundary.)
;
; (A note about the formulas:  Since 6 parameters are required to fully
; specify a conic section, this leaves no room in the Fractint scheme to
; interactively specify a Julia parameter.  Three versions of each Julia
; formula are presented, to give a quick idea of the effect of Julia
; parameter choice.  The user is free to change the specified parameter in
; the formula, to fit their own needs.)
;
; Fractint's "inside=zmag" coloring scheme is also built around the circle,
; and thus, easily altered to a general conic section.  In the "conic-mag"
; formulas, the standard bailout test is employed.  However, what is plotted
; is the value of Q, as specified above.  Q=0 is the equation for the
; boundary of the section, so this method effectively shows if the iterate
; was inside or outside of the section when iteration ended.
;
; The other two formula types record how the orbit interacts with the given
; section.  In "conic-near", the distance to the section is tallied, and the
; final color reflects the closest approach of the orbit to the section.  In
; "conic-count", a counter is incremented for each iteration where the orbit
; is inside the section.  This counter is scaled by the total number of
; iterations for that pixel, and this fraction is converted into an angle
; for "decomp=" plotting.
;
; The standard forms of the conic sections are given below.  With a bit of
; algebraic twiddling, they can be transformed into the general form, for
; use in the Fractint formulas.
;
; point (h,k)  x=h, y=k; or (x-h)^2 + (y-k)^2 = 0 [circle of radius 0
; centered at (h,k)].
;
; vertical line through (h,k):  x=h
;
; non-vertical line with slope m, through (h,k):  y-k = m*(x-h)
;
; parabola, opening up or down, with vertex at (h,k):
; y-k = 4*p*(x-h)^2 [p determines width; +/up, -/down]
;
; parabola, opening left or right, with vertex at (h,k):
; x-h = 4*p*(y-k)^2 [p determines width; +/right, -/left]
;
; ellipse centered at (h,k), semimajor axis alpha, semiminor axis beta:
; (x-h)^2/alpha^2 + (y-k)^2/beta^2 = 1
;
; circle centered at (h,k), with radius r:
; (x-h)^2 + (y-k)^2 = r^2
;
; hyperbola centered at (h,k), semimajor axis alpha, semiminor axis beta,
; opening left/right:  (x-h)^2/alpha^2 - (y-k)^2/beta^2 = 1
;
; hyperbola centered at (h,k), semimajor axis alpha, semiminor axis beta,
; opening up/down:  (y-k)^2/beta^2 - (x-h)^2/alpha^2 = 1
; 
; coordinate rotation, from (u,v) to (x,y), through an angle theta:
; u = x*cos(theta) + y*sin(theta)
; v = -x*sin(theta) + y*cos(theta)
; [rotating sections is how to generate non-zero E parameters]
;*******************************************************************
}

conic-bail_jul16 {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; Julia set, escapes "conic quantity" Q > 0
      ;   Q = Ax^2 + Bx + Cy^2 + Dy + Exy + F
      ;   A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;   E=real(p3), F=imag(p3).
      ;   Julia parameter set to point near 1/16 disk
      ;
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  cc=(0.2882,0.0106), zc=pixel, iter=1, ee=real(p3), f=imag(p3):
  iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
  conic=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
  IF ((conic>0)||(iter==maxit))
    iter=-1
    z=zc
  ENDIF
  iter>0
}


conic-bail_jul2 {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; Julia set, escapes "conic quantity" Q > 0
      ;     Q = Ax^2 + Bx + Cy^2 + Dy + Exy + F
      ;   A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;   E=real(p3), F=imag(p3).
      ;   Julia parameter set to -2
      ;
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  cc=-2, zc=pixel, iter=1, ee=real(p3), f=imag(p3):
  iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
  conic=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
  IF ((conic>0)||(iter==maxit))
    iter=-1
    z=zc
  ENDIF
  iter>0
}

conic-bail_juli { ; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; Julia set, escapes "conic quantity" Q > 0
      ;    Q = Ax^2 + Bx + Cy^2 + Dy + Exy + F
      ;  A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;  E=real(p3), F=imag(p3).
      ;  Julia parameter set to (0,1)
      ;
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  cc=(0,1), zc=pixel, iter=1, ee=real(p3), f=imag(p3):
  iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
  conic=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
  IF ((conic>0)||(iter==maxit))
    iter=-1
    z=zc
  ENDIF
  iter>0
}


conic-bail_man { ; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; Mandelbrot set, escapes "conic quantity" Q > 0
      ;    Q = Ax^2 + Bx + Cy^2 + Dy + Exy + F
      ;  A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;  E=real(p3), F=imag(p3).
      ;
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  zc=0, cc=pixel, iter=1, ee=real(p3), f=imag(p3):
  iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
  conic=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
  IF ((conic>0)||(iter==maxit))
    iter=-1
    z=zc
  ENDIF
  iter>0
}

conic-count_jul16 {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; colors Julia set by how often orbit is outside section
      ;   Ax^2 + Bx + Cy^2 + Dy + Exy + F = 0
      ;   A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;   E=real(p3), F=imag(p3).  use decomp=256 coloring
      ;   Julia parameter set to near 1/16 disk
      ;   bailout set to 10^12
      ;
  cc=(0.2882,0.0106), zc=pixel, maxr=1e12, iter=1
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3), kount=0, scale=6.2832:
  iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
  conic=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
  IF (conic>0)
    kount=kount+1
  ENDIF
  IF ((|zc|>maxr)||(iter==maxit))
    t=scale*kount/iter
    z=cos(t)+flip(sin(t))
    iter=-1
  ENDIF
  iter>0
}


conic-count_jul2 {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ;       colors Julia set by how often orbit is outside section
      ;          Ax^2 + Bx + Cy^2 + Dy + Exy + F = 0
      ;       A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;       E=real(p3), F=imag(p3).  use decomp=256 coloring
      ;       Julia parameter set to -2
      ;       bailout set to 10^12
      ;
  cc=-2, zc=pixel, maxr=1e12, iter=1
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3), kount=0, scale=6.2832:
  iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
  conic=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
  IF (conic>0)
    kount=kount+1
  ENDIF
  IF ((|zc|>maxr)||(iter==maxit))
    t=scale*kount/iter
    z=cos(t)+flip(sin(t))
    iter=-1
  ENDIF
  iter>0
}


conic-count_juli {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; colors Julia set by how often orbit is outside section
      ;     Ax^2 + Bx + Cy^2 + Dy + Exy + F = 0
      ;  A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;  E=real(p3), F=imag(p3).  use decomp=256 coloring
      ;  Julia parameter set to (0,1)
      ;  bailout set to 10^12
      ;
  cc=(0,1), zc=pixel, maxr=1e12, iter=1
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3), kount=0, scale=6.2832:
  iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
  conic=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
  IF (conic>0)
    kount=kount+1
  ENDIF
  IF ((|zc|>maxr)||(iter==maxit))
    t=scale*kount/iter
    z=cos(t)+flip(sin(t))
    iter=-1
  ENDIF
  iter>0
}


conic-count_man {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; colors Mandelbrot set by how often orbit is outside section
      ;    Ax^2 + Bx + Cy^2 + Dy + Exy + F = 0
      ;  A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;  E=real(p3), F=imag(p3).  use decomp=256 coloring
      ;  bailout set to 10^12
      ;
  zc=0, cc=pixel, maxr=1e12, iter=1
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3), kount=0, scale=6.2832:
  iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
  conic=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
  IF (conic>0)
    kount=kount+1
  ENDIF
  IF ((|zc|>maxr)||(iter==maxit))
    t=scale*kount/iter
    z=cos(t)+flip(sin(t))
    iter=-1
  ENDIF
  iter>0
}

conic-mag_jul16 {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
         ; colors Julia set by magnitude of "conic quantity"
         ;  Q = Ax^2 + Bx + Cy^2 + Dy + Exy + F
         ;  A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
         ;  E=real(p3), F=imag(p3).  use decomp=256 coloring
         ;  Julia parameter set to point near 1/16 disk
         ;  bailout set to 4
         ;
  cc=(0.2882,0.0106), zc=pixel, maxr=4, iter=1
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3):
  iter=iter+1, zc=sqr(zc)+cc
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    x=real(zc), y=imag(zc)
    t=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
    z=cos(t)+flip(sin(t))
  ENDIF
  iter>0
}


conic-mag_jul2 {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; colors Julia set by magnitude of "conic quantity"
      ;   Q = Ax^2 + Bx + Cy^2 + Dy + Exy + F
      ;   A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;   E=real(p3), E=imag(p3).  use decomp=256 coloring
      ;   Julia parameter set to -2
      ;   bailout set to 4
      ;
  cc=-2, zc=pixel, maxr=4, iter=1
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3):
  iter=iter+1, zc=sqr(zc)+cc
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    x=real(zc), y=imag(zc)
    t=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
    z=cos(t)+flip(sin(t))
  ENDIF
  iter>0
}


conic-mag_juli {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; colors Julia set by magnitude of "conic quantity"
      ;    Q = Ax^2 + Bx + Cy^2 + Dy + Exy + F
      ;  A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;  E=real(p3), F=imag(p3).  use decomp=256 coloring
      ;  Julia parameter set to (0,1)
      ;  bailout set to 4
      ;
  cc=(0,1), zc=pixel, maxr=4, iter=1
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3):
  iter=iter+1, zc=sqr(zc)+cc
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    x=real(zc), y=imag(zc)
    t=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
    z=cos(t)+flip(sin(t))
  ENDIF
  iter>0
}


conic-mag_man {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; colors Mandelbrot set by magnitude of "conic quantity"
      ;    Q = Ax^2 + Bx + Cy^2 + Dy + Exy + F
      ;  A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;  E=real(p3), F=imag(p3).  use decomp=256 coloring
      ;  bailout set to 4
      ;
  zc=0, cc=pixel, maxr=4, iter=1
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3):
  iter=iter+1, zc=sqr(zc)+cc
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    x=real(zc), y=imag(zc)
    t=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
    z=cos(t)+flip(sin(t))
  ENDIF
  iter>0
}

conic-near_jul16 {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; colors Julia set by nearest approach to conic section
      ;   Ax^2 + Bx + Cy^2 + Dy + Exy + F = 0
      ;   A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;   E=real(p3), F=imag(p3).  use decomp=256 coloring
      ;   Julia parameter set to near 1/16 disk
      ;   bailout set to 10^12
      ;
  cc=(0.2882,0.0106), zc=pixel, maxr=1e12, minr=maxr, iter=1
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3):
  iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
  conic=|x*(a*x+b)+y*(c*y+d)+ee*x*y+f|
  IF (conic<minr)
    minr=conic
  ENDIF
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    t=log(minr)
    z=cos(t)+flip(sin(t))
  ENDIF
  iter>0
}


conic-near_jul2 {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; colors Julia set by nearest approach to conic section
      ;    Ax^2 + Bx + Cy^2 + Dy + Exy + F = 0
      ;  A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;  E=real(p3), F=imag(p3).  use decomp=256 coloring
      ;  Julia parameter set to -2
      ;  bailout set to 10^12
      ;
  cc=-2, zc=pixel, maxr=1e12, minr=maxr, iter=1
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3):
  iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
  conic=|x*(a*x+b)+y*(c*y+d)+ee*x*y+f|
  IF (conic<minr)
    minr=conic
  ENDIF
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    t=log(minr)
    z=cos(t)+flip(sin(t))
  ENDIF
  iter>0
}


conic-near_juli {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; colors Julia set by nearest approach to conic section
      ;    Ax^2 + Bx + Cy^2 + Dy + Exy + F = 0
      ;  A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;  E=real(p3), F=imag(p3).  use decomp=256 coloring
      ;  Julia parameter set to (0,1)
      ;  bailout set to 10^12
      ;
  cc=(0,1), zc=pixel, maxr=1e12, minr=maxr, iter=1
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3):
  iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
  conic=|x*(a*x+b)+y*(c*y+d)+ee*x*y+f|
  IF (conic<minr)
    minr=conic
  ENDIF
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    t=log(minr)
    z=cos(t)+flip(sin(t))
  ENDIF
  iter>0
}


conic-near_man {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; colors Mandelbrot set by nearest approach to conic section
      ;    Ax^2 + Bx + Cy^2 + Dy + Exy + F = 0
      ;  A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;  E=real(p3), F=imag(p3).  use decomp=256 coloring
      ;  bailout set to 10^12
      ;
  zc=0, cc=pixel, maxr=1e12, minr=maxr, iter=1
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3):
  iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
  conic=|x*(a*x+b)+y*(c*y+d)+ee*x*y+f|
  IF (conic<minr)
    minr=conic
  ENDIF
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    t=log(minr)
    z=cos(t)+flip(sin(t))
  ENDIF
  iter>0
}

contest3aa (xaxis) {; Kerry Mitchell
     ; starts at one critical point of the function
        c=pixel, z=(c+sqrt(c*(c-3)))/3:
        z2=sqr(z), z=z*z2+c*(1+z-z2), |z| <= 256
        }

contest4 {; Kerry Mitchell
          ; slightly optimized version of Contest formula
          ; THIS IS THE ONE USED IN THE 1997 CONTEST
  z=p1, c=pixel:
  z2=sqr(z), z=z*z2+c*(1+z-z2),
  |z| <= 4
}

Color01 { ; New coloring technique #1 (bof60 outside)
	; outside = real: closest approach to p1
	; p2: color scaling factor
	; p3: bailout
	z = 0, c = pixel, closest = 100000, point = 0, done = 2:
	z = fn1(z) + c
	done = done + 1
	IF (|z-p1| < closest)
	  point = z
	  closest = |z-p1|
	ENDIF
	IF (|z| > p3)
	  point = point - p1
	  z = |point| * p2 - done
	  done = -1
	ENDIF
	done >= 0
}

Color01i { ; New coloring technique #1i - same as #1, does inside too
	; might want to turn off periodicity checking
	; outside = real: closest approach to p1
	; p2: color scaling factor
	; p3: bailout
	z = 0, c = pixel, closest = 100000, point = 0, done = 2:
	z = fn1(z) + c
	done = done + 1
	IF (|z-p1| < closest)
	  point = z
	  closest = |z-p1|
	ENDIF
	IF (|z| > p3 || done >= maxit)
	  z = |point-p1| * p2 - done
	  done = -1
	ENDIF
	done >= 0
}

Color05 { ; New coloring technique #5 (angle of closest approach)
	; might want to turn off periodicity checking
	; outside = decomp: angle of closest approach to p1
	; p2: bailout
	z = 0, c = pixel, closest = 100000, point = 0, done = 2:
	z = fn1(z) + c
	done = done + 1
	IF (|z-p1| < closest)
	  point = z
	  closest = |z-p1|
	ENDIF
	IF (|z| > p2)
	  z = point-p1
	  done = -1
	ENDIF
	done >= 0
}

Color05i { ; New coloring technique #5 (angle of closest approach)
	; might want to turn off periodicity checking
	; outside = decomp: angle of closest approach to p1
	; p2: bailout
	z = 0, c = pixel, closest = 100000, point = 0, done = 2:
	z = fn1(z) + c
	done = done + 1
	IF (|z-p1| < closest)
	  point = z
	  closest = |z-p1|
	ENDIF
	IF (|z| > p2 || done >= maxit)
	  z = point-p1
	  done = -1
	ENDIF
	done >= 0
}

Color11 { ; New coloring technique #11 (ring trap)
	; outside = decomp: angle at closest approach to ring at p1
	; p2r: unused
	; p2i: ring diameter
	; p3: bailout
	z = 0, c = pixel, closest = 100000, point = 0, done = 2,
	  range=imag(p2)*imag(p2):
	z = fn1(z) + c
	done = done + 1
	q = abs(|z-p1| - range)
	IF (q < closest)
	  point = z
	  closest = q
	ENDIF
	IF (|z| > p3)
	  z = point
	  done = -1
	ENDIF
	done >= 0
}

Color13(XAXIS) { ; New coloring technique #13 (continuous color)
	; outside = real: continuous color
	; p1r: color scaling (0 means default of 1--normal iteration bands)
	; p2r: bailout (0 means default of 128)
	IF (real(p1) == 0)
	  p1 = 1
	ENDIF
	IF (real(p2) == 0)
	  p2 = 128
	ENDIF
	z = pixel, c = pixel, done = 0, il2 = 1/log(2.0), lp = log(log(real(p2))):
	z2 = sqr(z)
	z = z2 + c
	done = done + 1
	IF (|z| > real(p2))
	  z = (done + 2*il2*lp - il2*log(log(cabs(z)))) * real(p1) - done
	  done = -1
	ENDIF
	done >= 0
}

Color13phc { ; New coloring technique #13 (continuous color, PHC)
	; outside = real: continuous color
	; p1r: color scaling 1 (0 means default of 1--normal iteration bands)
	; p1i: color scaling 2 (0 means default of 1--normal iteration bands)
	; p2r: bailout (0 means default of 128)
	IF (real(p1) == 0)
	  p1 = 1 + imag(p1)
	ENDIF
	IF (imag(p1) == 0)
	  p1 = real(p1) + (0,1)
	ENDIF
	IF (real(p2) == 0)
	  p2 = 128
	ENDIF
	z = pixel, c = pixel, done = 0, il2 = 1/log(2.0), lp = log(log(real(p2))):
	z2 = sqr(z)
	z = z2 + c
	done = done + 1
	IF (|z| > real(p2))
	  IF (whitesq)
	    z = (done + 2*il2*lp - il2*log(log(cabs(z)))) * real(p1) - done
	  ELSE
	    z = (done + 2*il2*lp - il2*log(log(cabs(z)))) * imag(p1) - done
	  ENDIF
	  done = -1
	ENDIF
	done >= 0
}

Colorit-3f {; (c) Jay Hill, 1998
            ; p1= light angle (cos a, sin a)
            ; use these, float=y inside=0 outside=real periodicity=0
  iter=0, zc = 0, c = pixel, dz=1
                         ; 23 is the color of the period 1 component.
  z=23*(|(2*sinh(asinh(sqrt(-6.75)*c)/3))|<=1.0)
  done=-(z>0)            ; done if we know z is not 0
  IF (p1==0)
    p1=1
  ENDIF
  :                      ; initialization.
  iter = iter+1          ; gotta count the iterations
  dz=3*sqr(zc)*dz+1      ; derivative, dz/dc, a slope for shading
  zc=zc*sqr(zc) + c      ; standard MSet cubic iteration  z=z^3+c
  IF (|zc| >= 1024)      ; Bailout 
    z = z -8 + ((sin(2*pi*iter/256)*Real(p1*dz/zc))>0) + iter
    done=-1              ; Set flag to force an exit.
  ENDIF
  done >= 0              ; Continue if the flag >=0.
}

ComplexNewton_11 {; Jon Horner 
                  ; modified by Jo Weber, 6/1996
  pm1 = p1-1.5,  pm2=p1-1, z = pixel :
  oldz = z,
  z = fn3(fn1(pm2*(z^p1) +1)/fn2(p1 * z^pm1)),
  |(z-oldz)|>=|0.005|
}

Cos_Rings_Mset {; Modified version of P. Carlson's Cosh_Rings_Mset
    ;   real(p1) = a factor controlling the width of the rings
    ;   imag(p1)   not used
    ;   p2       = bailout value for |w|
    c = pixel
    w = bailout = iter = 0
    ring_width = real(p1)
    index_factor = 124 / ring_width:
    w = cos(w) + c
    dist = abs(|w|-.25)
    bailout = (iter > 0) * (dist < ring_width)
    iter = iter + 1
    z = (index_factor * dist + 128) * bailout - iter
    bailout == 0 && |w| < p2
}

Cosh_Atan_Mset {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = maximum value of abs(real(w))
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    prev_w = 0
    c = pixel
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    max_real = real(p1)
    ;****************************************************
    ; In the accompanying par file coshatan.par,
    ; we have 2 color ranges with 125 colors in each range
    ; for a total of 250 colors. The first range starts at
    ; color 1.  Pixels will use color 253 for no bailout.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ;****************************************************
    num_ranges = real(p2)
    colors_in_range = imag(p2):
    ;****************************************************
    ; The equation being iterated.
    ;****************************************************
    w = cosh(prev_w) + c
    ;****************************************************
    ; If abs(real(w)) exceeds the value of max_real, set z to
    ; the index into the colormap and set the bailout flag.
    ;****************************************************
    IF (abs(real(w)) > max_real)
        ;***************************************************
        ; Compute the angle between the last 2 orbit points
        ;***************************************************
        delta_i = imag(w) - imag(prev_w)
        delta_r = real(w) - real(prev_w)
        angle = abs(atan(delta_i / delta_r))
        bailout = 1
        range_index = 2 * colors_in_range * angle / pi
        z = range_index + range_num * colors_in_range + 1
    ENDIF
    prev_w = w
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
    bailout == 0
}

Cosh_Rings_Mset {; Copyright (c) Paul W. Carlson, 1998
    ;   real(p1) = a factor controlling the width of the rings
    ;   imag(p1)   not used
    ;   p2       = bailout value for |w|
    c = pixel
    w = bailout = iter = 0
    ring_width = real(p1)
    index_factor = 124 / ring_width:
    w = cosh(w) + c
    dist = abs(|w|-.25)
    bailout = (iter > 0) * (dist < ring_width)
    iter = iter + 1
    z = (index_factor * dist + 128) * bailout - iter
    bailout == 0 && |w| < p2
}

CoszzcM {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = controls size of elements
    ; imag(p1)   not used
    ; real(p2) = number of color ranges
    ; imag(p2) = number of colors in a range
    ;
    pw = z = iter = range_num = bailout = 0
    c = pixel
    max_ratio = real(p1)
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    factor = (colors_in_range - 1) / max_ratio
    :
    w = cos(pw * pw) + c
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
}

Crentura_2 (XAXIS) {
  z = c = pixel - 0.5:
  z = (1/sqr(z)) * z + pixel 
  z = fn1(z) * c 
  |z| < 4
}


CrossN2Eyes (xaxis) { ; M.L. Newsted Jr.
	z = (pixel - 1) / pixel
	c = pixel:

	z = z*z + c
	|z| < 4
	}

crystal_J{
a0=0.69697,b0=-0.48106,c0=-0.39394,d0=-0.66288,
a1=0.09091,b1=-0.44318,c1=0.51515,d1=-0.09470,
al0=-0.65152,k0=-3.53667,l0=-8.03175,
al1=0.21970,k1=-0.89072,l1=1.94225,
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
}

CSin_Atan_Julia {; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = Julia set coordinates
    ;   real(p2) = maximum value of abs(real(w))
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;****************************************************
    prev_w = pixel
    c = p1
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    max_real = real(p2)
    num_ranges = real(p3)
    colors_in_range = imag(p3):
    ;****************************************************
    w = c * sin(prev_w)
    ;****************************************************
    IF (abs(real(w)) > max_real)
        delta_i = imag(w) - imag(prev_w)
        delta_r = real(w) - real(prev_w)
        angle = abs(atan(delta_i / delta_r))
        bailout = 1
        range_index = 2 * colors_in_range * angle / pi
        z = range_index + range_num * colors_in_range + 1
    ENDIF
    prev_w = w
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0
}

Curly { ; Mutation of 'Natura'. Mutated by Bradley Beacham [74223,2745]
        ; Original formula by Michael Theroux [71673,2767]
        ; For 'Natura', set FN1 & FN2 =IDENT and P1 & P2 = default
        ; p1 = Parameter (default 0.5,0), real(p2) = Bailout (default 4)
  z = pixel
        ; The next line sets c=default if p1=0, else c=p1
  c = ((0.5,0) * (|p1|<=0) + p1)
        ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2)):
  z = fn1(fn2(z*z*z)) + c
  |z| <= test
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
}

DD01 {; revised by G. Martin to put into fractint formula syntax
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
}


DD02 {; revised by G. Martin to put into fractint formula syntax
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
}

decomposable-M {
  continue = 1,     ; Set flag for continuation.
  z = 0,
  c = pixel,   ; set up the pixel to color
  iter = 0     ; keep our own count 
  :                 ; initialization.
  if (|z| > 4)      ; Bailout at 4
    continue = 0    ; Set flag to force an exit.
    z = z - iter    ; take out the iterations (?1)
  else              ; Fractint put in
    z = sqr(z) + c  ; standard MSet iteration
  endif   ; Does if, else and endif have to be on separate lines????
  iter = iter + 1   ; keep our own count (?2)
  continue == 1     ; Continue while =1.
}

delt2-UcPop {  ; Bill Decker mod 8-10-98
            ;5-29-98 kathy roth
            ;variant of Morgan Owens Uc03
            x=real(pixel), y=imag(pixel), h=imag(p2)
    t=p1, bailout = real(p2):
    newx = x+h*sin((y) - fn2(3*y))
    newy = y+h*sin((x) - fn2(3*x))
    x=newx, y=newy
    z=x-flip(y)
    x=real(z),y=imag(z)
    ax=4*x-2,ay=4*y-2
    Tx=fn1(ax*(ax*ax+2))
    Ty=fn1(ay*(ay*ay+2))
    x=x+t*Ty,y=y-t*Tx
    z=x-flip(y)
    |z|<=bailout
    }

DeltaLog(XAXIS) {; Mark Peterson
  z = pixel, c = log(pixel):
   z = sqr(z) + c
    |z| <= 4
  }


devil { ; Copyright (c) Paul W. Carlson, 1998
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
}

dmj-Jul-Triangle2(XAXIS) { ; outside = real: triangle inequality average
	; original idea and formula from L. Kerry Mitchell
	; modified for total continuity by dmj

	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	sum = 0				; Running total.
	done = 1			; Iteration counter.
	ac = cabs(p2)			; Absolute value of pixel (precalc).
	il2 = 1/log(2.0)		; Inverse log 2 (precalc).
	lp = log(log(imag(p3)))		; log(log bailout) (precalc).
	f = -1				; No fractional iteration yet.
	
	z = pixel, c = p2:		; Mandelbrot initialization.
	az2 = |z|			; Save absolute value of first term.
	z = sqr(z) + c			; Mandelbrot calculation.

	lowbound = abs(az2 - ac)	; Calculate lower bound for sum.
	sum = sum + (cabs(z) - lowbound) / (az2+ac - lowbound)
					; Ratio between bounds.
	
	done = done + 1			; Done one more iteration.
	IF (az2 > imag(p3))		; Point exceeds bailout.
	  IF (f < 0)			; First time; let it go again.
	    f = il2*lp - il2*log(log(cabs(z))) + 2; Fractional iteration.
	    oldsum = sum / done		; Save the average ratio so far.
	  ELSE				; Second time past bailout.
	    sum = sum / done		; Average ratio.
	    f = oldsum + (sum-oldsum) * (f-1) ; Interpolate sum.
	    z = f * real(p3)		; Apply color scale.
	    z = z - 255*trunc(z/real(255)) ; Wrap at 255.
	    z = z - done - 5		; Return value.
	    done = -1			; Set flag to force an exit.
	  ENDIF
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Jul-Triangl2-I(XAXIS) { ; outside = real: triangle inequality average
	; original idea and formula from L. Kerry Mitchell
	; modified for total continuity by dmj

	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	sum = 0				; Running total.
	done = 1			; Iteration counter.
	ac = cabs(p2)			; Absolute value of pixel (precalc).
	il2 = 1/log(2.0)		; Inverse log 2 (precalc).
	lp = log(log(imag(p3)))		; log(log bailout) (precalc).
	f = -1				; No fractional iteration yet.
	
	z = pixel, c = p2:		; Mandelbrot initialization.
	az2 = |z|			; Save absolute value of first term.
	z = sqr(z) + c			; Mandelbrot calculation.

	lowbound = abs(az2 - ac)	; Calculate lower bound for sum.
	sum = sum + (cabs(z) - lowbound) / (az2+ac - lowbound)
					; Ratio between bounds.
	
	done = done + 1			; Done one more iteration.
	IF (az2 > imag(p3) || done > maxit-2)	; Point exceeds bailout.
	  IF (f < 0)			; First time; let it go again.
	    f = il2*lp - il2*log(log(cabs(z))) + 2; Fractional iteration.
	    oldsum = sum / done		; Save the average ratio so far.
	  ELSE				; Second time past bailout.
	    sum = sum / done		; Average ratio.
	    f = oldsum + (sum-oldsum) * (f-1) ; Interpolate sum.
	    z = f * real(p3)		; Apply color scale.
	    z = z - 255*trunc(z/real(255)) ; Wrap at 255.
	    z = z - done - 5		; Return value.
	    done = -1			; Set flag to force an exit.
	  ENDIF
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
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

  e1 = 0			; distance estimates
  e2 = 0
  e3 = 0
  
  t = 1
  z = 0
  z1 = pixel					; pixel
  z2 = (pixel - (0.225,-0.275)) * ((0,1)^(4/3)) + (0.225,-0.275) ; 120 deg.
  z3 = (pixel - (0.225,-0.275)) * ((0,1)^(8/3)) + (0.225,-0.275) ; 240 deg.
  done1 = 0
  done2 = 0
  done3 = 0
  z = pixel, c = pixel
  
  :

; iteration:
  z = z + 1			; thwart periodicity checking
  IF (t == 0)			; do Julia2 iteration
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
    e1 = 2*z1*e1+1		; update distance estimate
  ELSE
    done1 = 1			; done with this one
  ENDIF
  IF (|z2| < 1e20)
    e2 = 2*z2*e2+1		; update distance estimate
  ELSE
    done2 = 1			; done with this one
  ENDIF
  IF (|z3| < 1e20)
    e3 = 2*z3*e3+1		; update distance estimate
  ELSE
    done3 = 1			; done with this one
  ENDIF
  
; bailout test:
  IF (done1+done2+done3 == 3 || i == maxit-2)	; all three points are done
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
    IF (e1 < 0.0225)		; first part of gradient
      e1 = (e1+0.1975)/0.22
      r = 31 + (81-31)*e1
      g = 62 + (68-62)*e1
      b = 72 + (46-72)*e1
    ELSEIF (e1 < 0.4)		; second part of gradient
      e1 = (e1-0.0225)/0.3775
      r = 81 + (235-81)*e1
      g = 68 + (232-68)*e1
      b = 46 + (220-46)*e1
    ELSEIF (e1 < 0.8025)	; third part of gradient
      e1 = (e1-0.4)/0.4025
      r = 235 + (31-235)*e1
      g = 232 + (62-232)*e1
      b = 220 + (72-220)*e1
    ELSE			; last part of gradient
      e1 = (e1-0.8025)/0.22
      r = 31 + (81-31)*e1
      g = 62 + (68-62)*e1
      b = 72 + (46-72)*e1
    ENDIF
    IF (done1 == 0)		; point is inside, use black
      r = 0
      g = 0
      b = 0
    ENDIF

    IF (e2 < 0.0225)		; first part of gradient
      e2 = (e2+0.1975)/0.22
      r1 = 31 + (81-31)*e2
      g1 = 62 + (68-62)*e2
      b1 = 72 + (46-72)*e2
    ELSEIF (e2 < 0.4)		; second part of gradient
      e2 = (e2-0.0225)/0.3775
      r1 = 81 + (235-81)*e2
      g1 = 68 + (232-68)*e2
      b1 = 46 + (220-46)*e2
    ELSEIF (e2 < 0.8025)	; third part of gradient
      e2 = (e2-0.4)/0.4025
      r1 = 235 + (31-235)*e2
      g1 = 232 + (62-232)*e2
      b1 = 220 + (72-220)*e2
    ELSE			; last part of gradient
      e2 = (e2-0.8025)/0.22
      r1 = 31 + (81-31)*e2
      g1 = 62 + (68-62)*e2
      b1 = 72 + (46-72)*e2
    ENDIF
    IF (done2 == 0)		; point is inside, use black
      r1 = 0
      g1 = 0
      b1 = 0
    ENDIF
    r = abs(r-r1)		; Difference merge mode
    g = abs(g-g1)
    b = abs(b-b1)
    
    IF (e3 < 0.0225)		; first part of gradient
      e3 = (e3+0.1975)/0.22
      r1 = 31 + (81-31)*e3
      g1 = 62 + (68-62)*e3
      b1 = 72 + (46-72)*e3
    ELSEIF (e3 < 0.4)		; second part of gradient
      e3 = (e3-0.0225)/0.3775
      r1 = 81 + (235-81)*e3
      g1 = 68 + (232-68)*e3
      b1 = 46 + (220-46)*e3
    ELSEIF (e3 < 0.8025)	; third part of gradient
      e3 = (e3-0.4)/0.4025
      r1 = 235 + (31-235)*e3
      g1 = 232 + (62-232)*e3
      b1 = 220 + (72-220)*e3
    ELSE			; last part of gradient
      e3 = (e3-0.8025)/0.22
      r1 = 31 + (81-31)*e3
      g1 = 62 + (68-62)*e3
      b1 = 72 + (46-72)*e3
    ENDIF
    IF (done3 == 0)		; point is inside, use black
      r1 = 0
      g1 = 0
      b1 = 0
    ENDIF
    r = abs(r-r1)		; Difference merge mode
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
    IF (r > 255)		; You can remove these lines
      r = 255			; if you are absolutely sure
    ENDIF			; your RGB values will never
    IF (g > 255)		; be out of range. That will
      g = 255			; make your formula run a bit
    ENDIF			; faster.
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
    IF (ydither > 1.5)		; bottom half
      ydither = ydither - 2	; move to top half
      IF (xdither < 1.5)	; left half (lower left quadrant)
        rdither = 3
	gdither = 3
	bdither = 3
      ELSE			; right half (lower right quadrant)
        xdither = xdither - 2	; move to left half
        rdither = 1
	gdither = 1
	bdither = 1
      ENDIF
    ELSE			; top half
      IF (xdither > 1.5)	; right half (upper right quadrant)
        xdither = xdither - 2	; move to left half
        rdither = 2
        gdither = 2
        bdither = 2
      ELSE			; left half (upper left quadrant)
        rdither = 0
        gdither = 0
        bdither = 0
      ENDIF
    ENDIF
    ; b. Determine precise cell in quadrant
    IF (ydither > 0.5)		; bottom half
      IF (xdither < 0.5)	; left half (bottom left cell)
        rdither = rdither + 12
        gdither = gdither + 12
        bdither = bdither + 12
      ELSE			; right half (bottom right cell)
        rdither = rdither + 4
        gdither = gdither + 4
        bdither = bdither + 4
      ENDIF
    ELSE			; top half
      IF (xdither > 0.5)	; right half (upper right cell)
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
}


dmj-Mand-Cir-Ang { ; outside = decomp: angle of
        ;closest z[n] to ring at p1
 ; This is the angle relative to p1.

 IF (imag(p2) == 0)  ; Invalid value for aspect ratio.
   p2 = (0,1) + real(p2)  ; Substitute a default value.
 ENDIF
 IF (real(p3) == 0)  ; Invalid value for color scale.
   p3 = 75 + flip(imag(p3)) ; Substitute a default value.
 ENDIF
 IF (imag(p3) == 0)  ; Invalid value for ring radius.
   p3 = (0,1) + real(p3)  ; Substitute a default value.
 ENDIF
 closest = 1e+38   ; Closest approach so far.
 point = 0   ; Point of that closest approach.
 done = 2   ; Iteration counter.
 r = (0,1) ^ (real(p2)/90) ; Compute rotation vector.

 z = 0, c = pixel:  ; Mandelbrot initialization.
 z = sqr(z) + c   ; Mandelbrot calculation.

 done = done + 1   ; Done one more iteration.
 z2 = (z-p1) * r   ; Offset to p1 and rotate.
 z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
 d = abs(cabs(z2) - imag(p3)) ; Compute ring distance.
 IF (d < closest)  ; Closer than previous value.
   point = z   ; Save that point.
   closest = d   ; Save the closest approach.
 ENDIF
 IF (|z| > 128)   ; Point exceeds bailout.
   z = point - p1  ; Return closest point.
   done = -1   ; Set flag to force an exit.
 ENDIF

 done >= 0   ; Continue if the flag is clear.
}

dmj-Mand-Cir-Ang-I { ; outside = decomp: angle of
         ;closest z[n] to ring at p1
 ; This is the angle relative to p1.

 IF (imag(p2) == 0)  ; Invalid value for aspect ratio.
   p2 = (0,1) + real(p2)  ; Substitute a default value.
 ENDIF
 IF (real(p3) == 0)  ; Invalid value for color scale.
   p3 = 75 + flip(imag(p3)) ; Substitute a default value.
 ENDIF
 IF (imag(p3) == 0)  ; Invalid value for ring radius.
   p3 = (0,1) + real(p3)  ; Substitute a default value.
 ENDIF
 closest = 1e+38   ; Closest approach so far.
 point = 0   ; Point of that closest approach.
 done = 2   ; Iteration counter.
 r = (0,1) ^ (real(p2)/90) ; Compute rotation vector.

 z = 0, c = pixel:  ; Mandelbrot initialization.
 z = sqr(z) + c   ; Mandelbrot calculation.

 done = done + 1   ; Done one more iteration.
 z2 = (z-p1) * r   ; Offset to p1 and rotate.
 z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
 d = abs(cabs(z2) - imag(p3)) ; Compute ring distance.
 IF (d < closest)  ; Closer than previous value.
   point = z   ; Save that point.
   closest = d   ; Save the closest approach.
 ENDIF
 IF (|z| > 128 || done >= maxit) ; Point exceeds bailout / inside.
   z = point - p1  ; Return closest point.
   done = -1   ; Set flag to force an exit.
 ENDIF

 done >= 0   ; Continue if the flag is clear.
}

dmj-Mand-Cir-Dec { ; outside = decomp: angle of closest z[n] to ring at p1
	; This is the angle relative to the origin.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for ring radius.
	  p3 = (0,1) + real(p3)		; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
	d = abs(cabs(z2) - imag(p3))	; Compute ring distance.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > 128)			; Point exceeds bailout.
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Cir-Dec-I { ; outside = decomp: angle of
         ;closest z[n] to ring at p1
 ; This is the angle relative to the origin.

 IF (imag(p2) == 0)  ; Invalid value for aspect ratio.
   p2 = (0,1) + real(p2)  ; Substitute a default value.
 ENDIF
 IF (real(p3) == 0)  ; Invalid value for color scale.
   p3 = 75 + flip(imag(p3)) ; Substitute a default value.
 ENDIF
 IF (imag(p3) == 0)  ; Invalid value for ring radius.
   p3 = (0,1) + real(p3)  ; Substitute a default value.
 ENDIF
 closest = 1e+38   ; Closest approach so far.
 point = 0   ; Point of that closest approach.
 done = 2   ; Iteration counter.
 r = (0,1) ^ (real(p2)/90) ; Compute rotation vector.

 z = 0, c = pixel:  ; Mandelbrot initialization.
 z = sqr(z) + c   ; Mandelbrot calculation.

 done = done + 1   ; Done one more iteration.
 z2 = (z-p1) * r   ; Offset to p1 and rotate.
 z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
 d = abs(cabs(z2) - imag(p3)) ; Compute ring distance.
 IF (d < closest)  ; Closer than previous value.
   point = z   ; Save that point.
   closest = d   ; Save the closest approach.
 ENDIF
 IF (|z| > 128 || done >= maxit) ; Point exceeds bailout / inside.
   z = point   ; Return closest point.
   done = -1   ; Set flag to force an exit.
 ENDIF

 done >= 0   ; Continue if the flag is clear.
}

dmj-Mand-Cir-Dst { ; outside = real: closest z[n] to ring at p1

 IF (imag(p2) == 0)  ; Invalid value for aspect ratio.
   p2 = (0,1) + real(p2)  ; Substitute a default value.
 ENDIF
 IF (real(p3) == 0)  ; Invalid value for color scale.
   p3 = 75 + flip(imag(p3)) ; Substitute a default value.
 ENDIF
 IF (imag(p3) == 0)  ; Invalid value for ring radius.
   p3 = (0,1) + real(p3)  ; Substitute a default value.
 ENDIF
 closest = 1e+38   ; Closest approach so far.
 point = 0   ; Point of that closest approach.
 done = 2   ; Iteration counter.
 r = (0,1) ^ (real(p2)/90) ; Compute rotation vector.

 z = 0, c = pixel:  ; Mandelbrot initialization.
 z = sqr(z) + c   ; Mandelbrot calculation.

 done = done + 1   ; Done one more iteration.
 z2 = (z-p1) * r   ; Offset to p1 and rotate.
 z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
 d = abs(cabs(z2) - imag(p3)) ; Compute ring distance.
 IF (d < closest)  ; Closer than previous value.
   point = z   ; Save that point.
   closest = d   ; Save the closest approach.
 ENDIF
 IF (|z| > 128)   ; Point exceeds bailout.
   z = closest * real(p3) ; Apply color scale.
   z = z - 255*trunc(z/real(255)) ; Wrap at 255.
   z = z - done   ; Return value.
   done = -1   ; Set flag to force an exit.
 ENDIF

 done >= 0   ; Continue if the flag is clear.
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
}

dmj-Mand-Hyp-2Dec { ; outside = decomp: 2nd-closest z[n] to hyp. at p1
 
        IF (imag(p2) == 0)                ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)        ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)                ; Invalid value for color scale.
          p3 = 75 + imag(p3)                ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)                ; Invalid value for bailout.
          p3 = (0,128) + real(p3)        ; Substitute a default value.
        ENDIF
        closest = 1e+38                        ; Closest approach so far.
        closest2 = closest                ; Second-closest.
        point = 0                        ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)        ; Compute rotation vector.
 
        z = 0, c = pixel:                ; Mandelbrot initialization.
        z = sqr(z) + c                        ; Mandelbrot calculation.
 
        done = done + 1                        ; Done one more iteration.
        z2 = (z-p1) * r                        ; Offset to p1 and rotate.
        d = abs(imag(z2) * real(z2))        ; Compute hyperbolic distance.
        IF (d < closest)                ; Closer than previous value.
          point2 = point                ; Old closest is now 2nd closest.
          closest2 = closest
          point = z                        ; Save that point.
          closest = d                        ; Save the closest approach.
        ELSEIF (d < closest2)                ; Wasn't closest, but was 2nd closest.
          point2 = z                        ; Save that point.
          closest2 = d
        ENDIF
        IF (|z| > imag(p3))                ; Point exceeds bailout.
          z = point2 - point                ; Return difference between points.
          done = -1                        ; Set flag to force an exit.
        ENDIF
        
        done >= 0                        ; Continue if the flag is clear.
}

dmj-Mand-Hyp-Ang { ; outside = decomp: angle of closest z[n] to hyperbola at p1
	; This is the angle relative to p1.

	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	d = abs(imag(z2) * real(z2))	; Compute hyperbolic distance.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3))		; Point exceeds bailout.
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Hyp-Dec { ; outside = decomp: angle of closest z[n] to hyperbola at p1
	; This is the angle relative to the origin.

	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	d = abs(imag(z2) * real(z2))	; Compute hyperbolic distance.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3))		; Point exceeds bailout.
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Pls-Dst { ; outside = real: closest z[n] to cross at p1

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 < d)			; Second distance is closer.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3))		; Point exceeds bailout.
	  z = closest * real(p3)	; Apply color scale.
	  z = z - 255*trunc(z/real(255)) ; Wrap at 255.
	  z = z - done			; Return value.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Smooth(XAXIS) {; outside = real: smooth iteration coloring
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
; p1r	Trap 1 width
; p1i	Trap 2 width
; p2r	Trap 3 width
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

  t1 = (1.0, 0.5)		; trap centers
  t2 = (0.0, 1.0)
  t3 = (-0.5, -1.0)
  t1r = 255, t1g = 0, t1b = 64	; trap colors
  t2r = 255, t2g = 192, t2b = 0
  t3r = 0, t3g = 192, t3b = 255
  r1 = (0,1)^(0/90)		; trap rotations
  r2 = (0,1)^(45/90)
  r3 = (0,1)^(60/90)
  IF (real(p1) == 0)		; default thresholds
    p1 = 0.5 + flip(imag(p1))
  ENDIF
  IF (imag(p1) == 0)
    p1 = real(p1) + (0,0.5)
  ENDIF
  IF (real(p2) == 0)
    p2 = 0.5 + flip(imag(p2))
  ENDIF
  tt1 = 1 / real(p1)		; reciprocals of trap thresholds
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
  IF (|z| > 128 ); || i == maxit-2)	; include last part for inside
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
    IF (r > 255)		; You can remove these lines
      r = 255			; if you are absolutely sure
    ENDIF			; your RGB values will never
    IF (g > 255)		; be out of range. That will
      g = 255			; make your formula run a bit
    ENDIF			; faster.
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
    IF (ydither > 1.5)		; bottom half
      ydither = ydither - 2	; move to top half
      IF (xdither < 1.5)	; left half (lower left quadrant)
        rdither = 3
	gdither = 3
	bdither = 3
      ELSE			; right half (lower right quadrant)
        xdither = xdither - 2	; move to left half
        rdither = 1
	gdither = 1
	bdither = 1
      ENDIF
    ELSE			; top half
      IF (xdither > 1.5)	; right half (upper right quadrant)
        xdither = xdither - 2	; move to left half
        rdither = 2
        gdither = 2
        bdither = 2
      ELSE			; left half (upper left quadrant)
        rdither = 0
        gdither = 0
        bdither = 0
      ENDIF
    ENDIF
    ; b. Determine precise cell in quadrant
    IF (ydither > 0.5)		; bottom half
      IF (xdither < 0.5)	; left half (bottom left cell)
        rdither = rdither + 12
        gdither = gdither + 12
        bdither = bdither + 12
      ELSE			; right half (bottom right cell)
        rdither = rdither + 4
        gdither = gdither + 4
        bdither = bdither + 4
      ENDIF
    ELSE			; top half
      IF (xdither > 0.5)	; right half (upper right cell)
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
; p1r	Trap 1 width
; p1i	Trap 2 width
; p2r	Trap 3 width
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

  t1 = (0.75, 0.75)		; trap centers
  t2 = (-0.25, 0.0)
  t3 = (-2.0, -0.25)
  t1r = 255, t1g = 0, t1b = 128	; trap colors
  t2r = 0, t2g = 255, t2b = 128
  t3r = 0, t3g = 64, t3b = 255
  r1 = (0,1)^(0/90)		; trap rotations
  r2 = (0,1)^(45/90)
  r3 = (0,1)^(60/90)
  IF (real(p1) == 0)		; default thresholds
    p1 = 0.5 + flip(imag(p1))
  ENDIF
  IF (imag(p1) == 0)
    p1 = real(p1) + (0,0.5)
  ENDIF
  IF (real(p2) == 0)
    p2 = 0.5 + flip(imag(p2))
  ENDIF
  tt1 = 1 / real(p1)		; reciprocals of trap thresholds
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
  IF (|z| > 128 ); || i == maxit-2)	; include last part for inside
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
    IF (r > 255)		; You can remove these lines
      r = 255			; if you are absolutely sure
    ENDIF			; your RGB values will never
    IF (g > 255)		; be out of range. That will
      g = 255			; make your formula run a bit
    ENDIF			; faster.
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
    IF (ydither > 1.5)		; bottom half
      ydither = ydither - 2	; move to top half
      IF (xdither < 1.5)	; left half (lower left quadrant)
        rdither = 3
	gdither = 3
	bdither = 3
      ELSE			; right half (lower right quadrant)
        xdither = xdither - 2	; move to left half
        rdither = 1
	gdither = 1
	bdither = 1
      ENDIF
    ELSE			; top half
      IF (xdither > 1.5)	; right half (upper right quadrant)
        xdither = xdither - 2	; move to left half
        rdither = 2
        gdither = 2
        bdither = 2
      ELSE			; left half (upper left quadrant)
        rdither = 0
        gdither = 0
        bdither = 0
      ENDIF
    ENDIF
    ; b. Determine precise cell in quadrant
    IF (ydither > 0.5)		; bottom half
      IF (xdither < 0.5)	; left half (bottom left cell)
        rdither = rdither + 12
        gdither = gdither + 12
        bdither = bdither + 12
      ELSE			; right half (bottom right cell)
        rdither = rdither + 4
        gdither = gdither + 4
        bdither = bdither + 4
      ENDIF
    ELSE			; top half
      IF (xdither > 0.5)	; right half (upper right cell)
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
}

dmj-Mand-TC003 {
;
; This formula places a single rainbow-colored
; ring trap on the complex plane. As the orbit falls
; into the trap, it is "blended" towards the
; color of the trap at the point it lands.
; Colors accumulate until the point bails out.
;
; p1r	Trap 1 width
; p1i	Trap 1 diameter
; p2r	Trap rotation
; p2i	Trap aspect
; p3	Trap center
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

  t1 = p3 ;(0.75, 0.75)		; trap centers
  r1 = (0,1)^(0/90)		; trap rotations
  IF (real(p1) == 0)		; default thresholds
    p1 = 0.5 + flip(imag(p1))
  ENDIF
  IF (imag(p1) == 0)
    p1 = real(p1) + (0,0.25)
  ENDIF
  IF (imag(p2) == 0)
    p2 = real(p2) + (0,1.0)
  ENDIF
  r1 = (0,1)^(real(p2)/90)	; trap rotations
  a1 = imag(p2)			; aspect ratio
  tt1 = 1 / real(p1)		; reciprocals of trap thresholds
  
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
    IF (s == 0)			; zero saturation (grey shade)
      t1r = l, t1g = l, t1b = l	; take the easy way out
    ELSE			; non-zero saturation
      IF (l < 128)		; lightness in the low half
        ls2 = l * (255+s) / 255	; compute lightest value
      ELSE			; lightness in the high half
        ls2 = l+s - (l*s) / 255	; compute lightest value
      ENDIF
      ls1 = 2*l - ls2		; compute darkest value
      IF (h < 42.6666667)	; first sixth: red to yellow
        t1r = 255
        t1g = h * 6
	t1b = 0
      ELSEIF (h < 87.3333333)	; second sixth: yellow to green
        t1r = (87.3333333 - h) * 6
        t1g = 255
	t1b = 0
      ELSEIF (h < 128)		; third sixth: green to cyan
        t1r = 0
        t1g = 255
        t1b = (h-87.3333333) * 6
      ELSEIF (h < 170.6666667)	; fourth sixth: cyan to blue
        t1r = 0
        t1g = (170.6666667 - h) * 6
	t1b = 255
      ELSEIF (h < 214.3333333)	; fifth sixth: blue to magenta
        t1r = (h-170.6666667) * 6
        t1g = 0
	t1b = 255
      ELSE			; last sixth: magenta to red
        t1r = 255
        t1g = 0
        t1b = (255 - h) * 6
      ENDIF
      ls2 = (ls2 - ls1) / 255	; brightness range
      t1r = ls1 + t1r*ls2	; scale RGB accordingly
      t1g = ls1 + t1g*ls2
      t1b = ls1 + t1b*ls2
    ENDIF
    r = r + (t1r-r)*(d1)
    g = g + (t1g-g)*(d1)
    b = b + (t1b-b)*(d1)
  ENDIF

; bailout test:
  IF (|z| > 128 ); || i == maxit-2)	; include last part for inside
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
    IF (r > 255)		; You can remove these lines
      r = 255			; if you are absolutely sure
    ENDIF			; your RGB values will never
    IF (g > 255)		; be out of range. That will
      g = 255			; make your formula run a bit
    ENDIF			; faster.
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
    IF (ydither > 1.5)		; bottom half
      ydither = ydither - 2	; move to top half
      IF (xdither < 1.5)	; left half (lower left quadrant)
        rdither = 3
	gdither = 3
	bdither = 3
      ELSE			; right half (lower right quadrant)
        xdither = xdither - 2	; move to left half
        rdither = 1
	gdither = 1
	bdither = 1
      ENDIF
    ELSE			; top half
      IF (xdither > 1.5)	; right half (upper right quadrant)
        xdither = xdither - 2	; move to left half
        rdither = 2
        gdither = 2
        bdither = 2
      ELSE			; left half (upper left quadrant)
        rdither = 0
        gdither = 0
        bdither = 0
      ENDIF
    ENDIF
    ; b. Determine precise cell in quadrant
    IF (ydither > 0.5)		; bottom half
      IF (xdither < 0.5)	; left half (bottom left cell)
        rdither = rdither + 12
        gdither = gdither + 12
        bdither = bdither + 12
      ELSE			; right half (bottom right cell)
        rdither = rdither + 4
        gdither = gdither + 4
        bdither = bdither + 4
      ENDIF
    ELSE			; top half
      IF (xdither > 0.5)	; right half (upper right cell)
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
}

dmj-Mand-Triangle(XAXIS) { ; outside = real: triangle inequality average
	; original idea and formula from L. Kerry Mitchell
	; modified for total continuity by dmj, 9-8-97

	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	sum = 0				; Running total.
	done = 1			; Iteration counter.
	ac = cabs(pixel)		; Absolute value of pixel (precalc).
	il2 = 1/log(2.0)		; Inverse log 2 (precalc).
	lp = log(log(imag(p3)))		; log(log bailout) (precalc).
	f = -1				; No fractional iteration yet.
	
	z = pixel, c = pixel:		; Mandelbrot initialization.
	az2 = |z|			; Save absolute value of first term.
	z = sqr(z) + c			; Mandelbrot calculation.

	lowbound = abs(az2 - ac)	; Calculate lower bound for sum.
	sum = sum + (cabs(z) - lowbound) / (az2+ac - lowbound)
					; Ratio between bounds.
	
	done = done + 1			; Done one more iteration.
	IF (az2 > imag(p3))		; Point exceeds bailout.
	  IF (f < 0)			; First time; let it go again.
	    f = il2*lp - il2*log(log(cabs(z))) + 2; Fractional iteration.
	    oldsum = sum / done		; Save the average ratio so far.
	  ELSE				; Second time past bailout.
	    sum = sum / done		; Average ratio.
	    f = oldsum + (sum-oldsum) * (f-1) ; Interpolate sum.
	    z = f * real(p3)		; Apply color scale.
	    z = z - 255*trunc(z/real(255)) ; Wrap at 255.
	    z = z - done - 5		; Return value.
	    done = -1			; Set flag to force an exit.
	  ENDIF
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Magnet-Cir-Ang { 
     ; modified by jon camp
     ; outside = decomp: angle of
     ; closest z[n] to ring at p1
     ; This is the angle relative to p1.

 IF (imag(p2) == 0)  ; Invalid value for aspect ratio.
   p2 = (0,1) + real(p2)  ; Substitute a default value.
 ENDIF
 IF (real(p3) == 0)  ; Invalid value for color scale.
   p3 = 75 + flip(imag(p3)) ; Substitute a default value.
 ENDIF
 IF (imag(p3) == 0)  ; Invalid value for ring radius.
   p3 = (0,1) + real(p3)  ; Substitute a default value.
 ENDIF
 closest = 1e+38   ; Closest approach so far.
 point = 0   ; Point of that closest approach.
 done = 2   ; Iteration counter.
 r = (0,1) ^ (real(p2)/90) ; Compute rotation vector.

 z = 0, c = pixel:  ; Magnet initialization.
 z = ((sqr(z) + (c-1))/(2*z + (c-2)))^2   ; Magnet calculation.

 done = done + 1   ; Done one more iteration.
 z2 = (z-p1) * r   ; Offset to p1 and rotate.
 z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
 d = abs(cabs(z2) - imag(p3)) ; Compute ring distance.
 IF (d < closest)  ; Closer than previous value.
   point = z   ; Save that point.
   closest = d   ; Save the closest approach.
 ENDIF
 IF (|z| > 100)   ; Point exceeds bailout.
   z = point - p1  ; Return closest point.
   done = -1   ; Set flag to force an exit.
 ENDIF

 done >= 0   ; Continue if the flag is clear.
}

dmj-Nova-Cir-Dst-I { ; outside = real: closest z[n] to ring at p1

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for ring radius.
	  p3 = (0,1) + real(p3)		; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 1, c = pixel:		; NovaM initialization.
	zsquared = sqr(z)
	zcubed = zsquared * z
	zold = z
	z = z-(zcubed-1)/(3*zsquared)+c	; NovaM calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
	d = abs(cabs(z2) - imag(p3))	; Compute ring distance.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < 0.0000001 || done >= maxit) ; Point bailout / inside.
	  z = closest * real(p3)	; Apply color scale.
	  z = z - 255*trunc(z/real(255)) ; Wrap at 255.
	  z = z - done			; Return value.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
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
}

dots {
  z = c = pixel:
   z = z^c + c
    |z|<p1
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
}

dragon_J{
a0=0.82407,b0=0.28148,c0=-0.21235,d0=0.86420,
a1=0.08827,b1=0.52099,c1=-0.46389,d1=-0.37778,
al0=0.77193,k0=1.59554,l0=0.49085,
al1=0.20833,k1=4.51450,l1=-1.07895,
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
}

ds2gravistalks {; adapted from Paul W. Carlson
;original gravijul by Mark Christenson
;kathy roth 1998
;David Shanholtzer 1998
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
}

emboss-iter_jul { ; Kerry Mitchell 11sep98
        ;
        ; "embossing" coloring scheme based on iteration levels
        ;
        ; uses elliptical bailout:  [real(z)*a]^2+[imag(z)*b]^2
        ; p1 = c = Julia parameter
        ; real(p2) = a <= 1
        ; imag(p2) = b <= 1
        ; a = b = 1 for strict bailout
        ;
        ; real(p3) = size of contour band
        ; imag(p3) = light source angle, in degrees
        ; use decomp=256 coloring, only 4 colors used
        ;
        ; initialize counters
        ;
        iter=1, done=0
        ;
        ; set up elliptical parameters
        ;
        c=p1, r=4*cabs(c), r=sqrt(1+r), bailout=|(1+r)/2|
        a=real(p2), b=imag(p2)
        ;
        ; first point is offset from pixel by lightangle
        ; second point is offset from pixel by (lightangle+180 deg)
        ;
        size=real(p3), lightangle=imag(p3)*pi/180
        dr=size*(cos(lightangle)+flip(sin(lightangle)))
        z1=pixel-dr, iter1=0, c1=p1
        z2=pixel+dr, iter2=0, c2=p1
        ;
        ; 4 variables with different angles for 4 different colors
        ;
        black=(1,0), white=(-1,0), gray=(0,1), other=(0,-1)
        :
        iter=iter+1
        ;
        ; iterate first point, it is hasn't already escaped
        ;
        if(iter1==0)
          z1=sqr(z1)+c1, r=|real(z1)*a|+|imag(z1)*b|
          ;
          ; set bailout counter if first point escaped
          ;
          if(r>bailout)
            iter1=iter
          endif
        endif
        ;
        ; iterate second point, it is hasn't already escaped
        ;
        if(iter2==0)
          z2=sqr(z2)+c2, r=|real(z2)*a|+|imag(z2)*b|
          ;
          ; set bailout counter if second point escaped
          ;
          if(r>bailout)
            iter2=iter
          endif
        endif
        ;
        ; if both points escaped, perform "embossing"
        ;
        if((iter1>0)&&(iter2>0))
          done=1
          ;
          ; color "black" if first point escaped first
          ;
          if(iter1<iter2)
            z=black
          ;
          ; color "white" if second point escaped first
          ;
          elseif(iter2<iter1)
            z=white
          ;
          ; color "gray" if both points escaped at same time
          ;
          else
            z=gray
          endif
        endif
        ;
        ; otherwise, assign z to "other"
        ;
        if(iter==maxit)
          done=1
          z=other
        endif
        ;
        ; continue if nothing happened
        ;
        done==0
        }

emboss-iter_man { ; Kerry Mitchell 11sep98
        ;
        ; "embossing" coloring scheme based on iteration levels
        ; Mandelbrot version
        ;
        ; uses elliptical bailout:  [real(z)*a]^2+[imag(z)*b]^2
        ; real(p1) = a <= 1
        ; imag(p1) = b <= 1
        ; a = b = 1 for strict bailout
        ;
        ; real(p2) = size of contour band
        ; imag(p2) = light source angle, in degrees
        ; use decomp=256 coloring, only 4 colors used
        ;
        ; initialize counters
        ;
        iter=1, done=0
        ;
        ; set up elliptical parameters
        ;
        c=pixel, r=4*cabs(c), r=sqrt(1+r), bailout=|(1+r)/2|
        a=real(p1), b=imag(p1)
        ;
        ; first point is offset from pixel by lightangle
        ; second point is offset from pixel by (lightangle+180 deg)
        ;
        size=real(p2), lightangle=imag(p2)*pi/180
        dr=size*(cos(lightangle)+flip(sin(lightangle)))
        c1=pixel-dr, iter1=0, z1=0
        c2=pixel+dr, iter2=0, z2=0
        ;
        ; 4 variables with different angles for 4 different colors
        ;
        black=(1,0), white=(-1,0), gray=(0,1), other=(0,-1)
        :
        iter=iter+1
        ;
        ; iterate first point, it is hasn't already escaped
        ;
        if(iter1==0)
          z1=sqr(z1)+c1, r=|real(z1)*a|+|imag(z1)*b|
          ;
          ; set bailout counter if first point escaped
          ;
          if(r>bailout)
            iter1=iter
          endif
        endif
        ;
        ; iterate second point, it is hasn't already escaped
        ;
        if(iter2==0)
          z2=sqr(z2)+c2, r=|real(z2)*a|+|imag(z2)*b|
          ;
          ; set bailout counter if second point escaped
          ;
          if(r>bailout)
            iter2=iter
          endif
        endif
        ;
        ; if both points escaped, perform "embossing"
        ;
        if((iter1>0)&&(iter2>0))
          done=1
          ;
          ; color "black" if first point escaped first
          ;
          if(iter1<iter2)
            z=black
          ;
          ; color "white" if second point escaped first
          ;
          elseif(iter2<iter1)
            z=white
          ;
          ; color "gray" if both points escaped at same time
          ;
          else
            z=gray
          endif
        endif
        ;
        ; otherwise, assign z to "other"
        ;
        if(iter==maxit)
          done=1
          z=other
        endif
        ;
        ; continue if nothing happened
        ;
        done==0
        }

epanal{
        z=pixel :
        oldz=z
        z=fn1(oldz)
        real(p1)<=|z-oldz|
}

Epsilon_Rot {;epsiloncross test rotated 45 degrees
    z=c=pixel:
    z=z*z+c
    r=real(z), i=imag(z)
    if ((((r-i)>-0.01) && ((r-i)<0.01)) || (((r+i)>-0.01) && ((r+i)<0.01)))
      z=1E6            ;forces escape
    endif
    |z| < 4
  }

Eqn_5 { ; Copyright (c) Paul W. Carlson, 1998
    ; Always use float=y, outside=summ
    ;
    ; real(p1) = escape circle radius squared
    ; imag(p1) = 0 if Mset, non-zero if Julia set
    ; p2       = Julia set coordinates
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
    z = iter = range_num = bailout = 0
    IF (imag(p1) != 0)
        w = pixel
	c = p2
    ELSE
	w = 0
        c = pixel
    ENDIF
    prev_modw2 = 1.0e20
    rad2 = real(p1)
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    colors_in_range_1 = colors_in_range - 1
    :
    w2 = w * w
    w = c * (1 - w2) / (1 + w2)
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
}

Eqn6_R4 {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = size factor
    ; imag(p1) = number of iterations to skip
    ; real(p2) = number of color ranges
    ; imag(p2) = number of colors in a range
    ;
    z = w = iter = range_num = bailout = 0
    c = pixel
    size = real(p1)
    skip_iters = imag(p1)
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    index_factor = (colors_in_range - 1) / size
    :
    w = c * ((w - 1)^2) / ((w + 1)^2)
    ;
    IF (iter > skip_iters)
	dist = abs(|w - k| - 0.1)
	IF (dist < size)
	    bailout = 1
	ENDIF
    ENDIF
    IF (bailout)
	z = index_factor * dist + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0  && |w| < 1.0e20
}

equ{
  z=Pixel:
  z=tan(z)/sin(cos(z))
  real(z)/Imag(z) < real(p1)
  }

Euler_3Way {; Copyright (c) Paul W. Carlson, 1998
    ; real(p3) = escape circle radius squared
    ; imag(p3) = number of iterations to skip
    z = iter = k = range_num = bailout = 0
    w = fn1(pixel)
    prev_modw2 = 1.0e20
    rad2 = real(p3)
    skip_iters = imag(p3)
    num_ranges = 8
    colors_in_range = 30
    colors_in_range_1 = colors_in_range - 1:
    ;
    ;;;;;;;;;; Gedeon's Euler equation ;;;;;;;;;;;;;
    w=fn2(w^p1) + p2 * fn3(exp(imag(w) * pi) + 1)
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
}

Euler2_3Way {; Copyright (c) Paul W. Carlson, 1998
    ; real(p3) = escape circle radius squared
    ; imag(p3) = number of iterations to skip
    z = iter = k = range_num = bailout = 0
    w = fn1(pixel)
    prev_modw2 = 1.0e20
    rad2 = real(p3)
    skip_iters = imag(p3)
    num_ranges = 8
    colors_in_range = 30
    colors_in_range_1 = colors_in_range - 1:
    ;
    ;;;;;;;;;; Gedeon's Euler2 equation ;;;;;;;;;;;;;
    w=fn2(w^p1) + p2 * fn3(exp(imag(w) * pi) - 1)
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
}

Explode_M_2j {; by Jay Hill, 1998
              ; after Paul Derbyshire
  c=pixel
  z=0, log2c=log(2*c) ; eight steps of Jay's formula
  z=.2*z+.8*(-2+exp((log2c-z)/3))
  z=.2*z+.8*(-2+exp((log2c-z)/3))
  z=.2*z+.8*(-2+exp((log2c-z)/3))
  z=.2*z+.8*(-2+exp((log2c-z)/3))
  z=.2*z+.8*(-2+exp((log2c-z)/3))
  z=.2*z+.8*(-2+exp((log2c-z)/3))
  z=.2*z+.8*(-2+exp((log2c-z)/3))
  z=.2*z+.8*(-2+exp((log2c-z)/3))
              ; finish with one of Derbyshire's Newton steps
  z2=z+2
  s=sqr(z2)
  t=z2*s
  ez=exp(z)
  func=t*ez-2*c
  der=3*s*ez+t*ez
  z=z-func/der
  :           ; Derbyshire's formula
  z=exp(z)+c/sqr(z+2)
  real(z)<=900000
}

Explode_M_2Ja (xaxis){ ; by Jay Hill 1998
                     ; after Paul Derbyshire
  c=pixel, c2=2*c,   z=0
; eight steps of Jay's formula for critical point
z=.2*z+.8*(-2+exp((log(c2)-z)/3))
z=.2*z+.8*(-2+exp((log(c2)-z)/3))
z=.2*z+.8*(-2+exp((log(c2)-z)/3))
z=.2*z+.8*(-2+exp((log(c2)-z)/3))
z=.2*z+.8*(-2+exp((log(c2)-z)/3))
z=.2*z+.8*(-2+exp((log(c2)-z)/3))
z=.2*z+.8*(-2+exp((log(c2)-z)/3))
z=.2*z+.8*(-2+exp((log(c2)-z)/3))
; finish with one of Derbyshire's Newton steps
  z2=z+2
  s=sqr(z2)
  t=z2*s
  ez=exp(z)
  func=t*ez-c2
  der=3*s*ez+t*ez
  z=z-func/der
 :   ; Paul Derbyshire's formula
  z=exp(z)+c/sqr(z+2),
  real(z)<=900000
}

F'Cetjoz {; fn1 added by Jon Horner
  z=pixel, c=p1:
  z=fn1(z)+c,
  c=c+p2/z,
  |z| <= 4
}

F'Liar1C {; Generalization by Jon Horner of Chuck Ebbert formula.
          ; X: X is as true as Y
          ; Y: Y is as true as X is false
          ; Calculate new x and y values simultaneously.
          ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = fn1(pixel):
  z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z) ) );
  fn2(abs(z))<p1 
}

F'Liar4C {; Generalization by Jon Horner of Chuck Ebbert formula.
          ; X: X is as true as (p1+1) times Y
          ; Y: Y is as true as X is false
          ; Calculate new x and y values simultaneously.
          ; Real part of p1 changes probability.  Use floating point.
          ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = fn1(pixel), p = p1 + 1, pp = p2 + 1:
  z = 1-abs(imag(z)*p-real(z))+flip(1-abs(1-real(z)-imag(z))),
  |imag(z)| <= pp || |real(z)| <= pp 
}

fastmand { ; Copyright (c) Paul W. Carlson, 1997
    ; This formula performs NO iterations if the point is
    ; in the large cardoid (the "lake") or the large
    ; period-2 bulb.
    ; float=y must be used.
    ;
    z = 0
    c = pixel
    pi3 = pi / 3
    bailout = 0:
    ;
    ;*****************************************************
    ; Check if point can be in either circle or cardoid
    ;*****************************************************
    aic = abs(imag(c))
    IF (aic < 0.6495190528)
        rc = real(c)
        ;*************************************************
        ; Check if point is in the circle
        ;*************************************************
        IF (aic < 0.25)
            delta = sqrt(0.0625 - aic * aic)
            IF ((rc > (-1 - delta)) && (rc < (-1 + delta)))
                bailout = 1
            ENDIF
        ENDIF
        ;*************************************************
        ; Check if point is in the cardoid
        ;*************************************************
        IF (rc > -0.75 && rc < 0.375)
            IF (rc > 0.25 && aic < 0.2165063508)
                t = abs(acos(0.5 * (1 + sqrt(3 - 8 * rc))))
            ELSE
                t = abs(acos(0.5 * (1 - sqrt(3 - 8 * rc))))
            ENDIF
            card_i  = 0.5 * sin(t) * (1.0 - cos(t))
            IF ((t > pi3 && aic < card_i) || (t <= pi3 && aic > card_i))
                bailout = 1
            ENDIF
        ENDIF
    ENDIF
    ;*****************************************************
    ; If point is in neither we have to iterate
    ;*****************************************************
    IF (bailout == 0)
        z = z * z + c
    ENDIF
    (bailout == 0) && |z| < 4
}

fatlog { ; by Jay Hill, 1998
  c=log(pixel),z=0:
  z=sqr(z)+c
  |z|<=100
}

FB_EqnMoP {; Copyright (c) Paul W. Carlson, 1998
    ; p1 = radius of center of ring (0.01 to 10)
    ; p2 = one half thickness of ring (0.01 to p1)
    ;
    c = pixel
    w = z = iter = bailout = 0
    d0 = p1 + p2
    d1 = 0.382683432365 * p1
    d2 = 0.923879532511 * p1
    dsqd = d0 * d0 + p1 * p1 - (d0 + d0) * d2
    :
    w2 = w * w
    w = c * (1 - w2) / (1 + w2)
    ;
    IF ((abs(cabs(w) - p1) < p2) && iter > 0)
	bailout = 1
	wr = real(w), wi = imag(w)
	awr = abs(wr), awi = abs(wi)
	IF (awr >= awi)
	    dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
	    adjust = 1
	ELSE
	    dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
	    adjust = 0
	ENDIF
	IF     (wr >= 0 && wi >= 0)
	    range_num = 1 - adjust
	ELSEIF (wr < 0 && wi >= 0)
	    range_num = 2 + adjust
	ELSEIF (wr < 0 && wi < 0)
	    range_num = 5 - adjust
	ELSE
	    range_num = 6 + adjust
	ENDIF
	ratio = sqrt(dist / dsqd)
	z = 29 * ratio + range_num * 30 + 1
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 1000
}

FB_Halley_M4 {; Copyright (c) Paul W. Carlson, 1998
    ; Halley solution of w^4 - w - c = 0
    ; Always use float=y, outside=summ
    ; p1 = relaxation factor
    ; p2 = radius of center of ring (0.01 to 10)
    ; p3 = one half thickness of ring (0.01 to p2)

    c = pixel
    w = z = iter = bailout = 0
    d0 = p2 + p3
    d1 = 0.382683432365 * p2
    d2 = 0.923879532511 * p2
    dsqd = d0 * d0 + p2 * p2 - (d0 + d0) * d2
    :
    w2 = w * w, fnc = w2 * w2 - w - c, der = 4 * w * w2 - 1
    k = p1 * fnc / (der - 12 * w2 * fnc / (der + der))
    w = w - k
    ;
    IF ((abs(cabs(w) - p2) < p3) && iter > 0)
	bailout = 1
	wr = real(w), wi = imag(w)
	awr = abs(wr), awi = abs(wi)
	IF (awr >= awi)
	    dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
	    adjust = 1
	ELSE
	    dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
	    adjust = 0
	ENDIF
	IF     (wr >= 0 && wi >= 0)
	    range_num = 1 - adjust
	ELSEIF (wr < 0 && wi >= 0)
	    range_num = 2 + adjust
	ELSEIF (wr < 0 && wi < 0)
	    range_num = 5 - adjust
	ELSE
	    range_num = 6 + adjust
	ENDIF
	ratio = sqrt(dist / dsqd)
	z = 29 * ratio + range_num * 30 + 1
    ELSEIF (|k| < 0.000001)
	bailout = 1
	z = 252
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0
}

FB_Halley_M42 {; Copyright (c) Paul W. Carlson, 1998
    ; Always use float=y, outside=summ
    ; p1 = relaxation factor
    ; p2 = radius of center of ring (0.01 to 10)
    ; p3 = one half thickness of ring (0.01 to p2)

    c = pixel, c4 = c*c*c*c
    w = z = iter = bailout = 0
    d0 = p2 + p3
    d1 = 0.382683432365 * p2
    d2 = 0.923879532511 * p2
    dsqd = d0 * d0 + p2 * p2 - (d0 + d0) * d2
    :
    w2 = w * w, fnc = w2 * w2 - c*w - c4, der = 4 * w * w2 - c
    k = p1 * fnc / (der - 12 * w2 * fnc / (der + der))
    w = w - k
    ;
    IF ((abs(cabs(w) - p2) < p3) && iter > 0)
	bailout = 1
	wr = real(w), wi = imag(w)
	awr = abs(wr), awi = abs(wi)
	IF (awr >= awi)
	    dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
	    adjust = 1
	ELSE
	    dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
	    adjust = 0
	ENDIF
	IF     (wr >= 0 && wi >= 0)
	    range_num = 1 - adjust
	ELSEIF (wr < 0 && wi >= 0)
	    range_num = 2 + adjust
	ELSEIF (wr < 0 && wi < 0)
	    range_num = 5 - adjust
	ELSE
	    range_num = 6 + adjust
	ENDIF
	ratio = sqrt(dist / dsqd)
	z = 29 * ratio + range_num * 30 + 1
    ELSEIF (|k| < 0.000001)
	bailout = 1
	z = 252
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0
}

FB_Popcorn {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = h in popcorn formula
    ; imag(p1) = bailout value
    ; real(p2) = radius of center of ring (0.01 to 10)
    ; imag(p2) = one half thickness of ring (0.01 to p1)
    ; real(p3) = iterations to skip
    ; imag(p3)   not used
    ;
    x = real(pixel)
    y = imag(pixel)
    h = real(p1)
    z = iter = bailout = 0
    d0 = real(p2) + imag(p2)
    d1 = 0.382683432365 * real(p2)
    d2 = 0.923879532511 * real(p2)
    dsqd = d0 * d0 + real(p2) * real(p2) - (d0 + d0) * d2
    :
    prev_x = x
    x = x - h * sin(y + tan(3 * y))
    y = y - h * sin(prev_x + tan(3 * prev_x))
    w = x + flip(y)
    ;
    IF ((abs(cabs(w) - real(p2)) < imag(p2)) && iter > real(p3))
	bailout = 1
	wr = real(w), wi = imag(w)
	awr = abs(wr), awi = abs(wi)
	IF (awr >= awi)
	    dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
	    adjust = 1
	ELSE
	    dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
	    adjust = 0
	ENDIF
	IF     (wr >= 0 && wi >= 0)
	    range_num = 1 - adjust
	ELSEIF (wr < 0 && wi >= 0)
	    range_num = 2 + adjust
	ELSEIF (wr < 0 && wi < 0)
	    range_num = 5 - adjust
	ELSE
	    range_num = 6 + adjust
	ENDIF
	ratio = sqrt(dist / dsqd)
	z = 29 * ratio + range_num * 30 + 1
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < imag(p1)
}

fdim_jul { ; Kerry Mitchell 26sep98
        ;
        ; p1 = c = Julia parameter
        ; real(p2) = coloring speed
        ; imag(p2) = plot flag
        ;   1:  plot x fdim
        ;   2:  plot y fdim
        ;   other:  x = x fdim, y = y fdim, plot angle
        ;
        c=p1, zc=pixel, iter=1, done=0
        speed=real(p2), plotflag=imag(p2)
        xmin=1e12, xmax=0, ymin=1e12, ymax=0
        ssx=0, sx=0, ssy=0, sy=0
        :
        iter=iter+1, zc=sqr(zc)+c
        x=cabs(real(zc)), y=cabs(imag(zc))
        ssx=ssx+sqr(x), sx=sx+x
        ssy=ssy+sqr(y), sy=sy+y
        if(x<xmin)
          xmin=x
        endif
        if(x>xmax)
          xmax=x
        endif
        if(y<ymin)
          ymin=y
        endif
        if(y>ymax)
          ymax=y
        endif
        if(|zc|>4)
          done=1
          z=1
        endif
        if(iter==maxit)
          done=1
          denom=log(iter)
          s=ssx-sx*sx/iter
          numer=-log((xmax-xmin)/(sqrt(s)*iter))
          fdimx=2-1/(0.5+numer/denom)
          s=ssy-sy*sy/iter
          numer=-log((ymax-ymin)/(sqrt(s)*iter))
          fdimy=2-1/(0.5+numer/denom)
          if(plotflag==1)
            t=speed*fdimx
            z=cos(t)+flip(sin(t))
          elseif(plotflag==2)
            t=speed*fdimy
            z=cos(t)+flip(sin(t))
          else
            z=fdimx+flip(fdimy)
            z=z^speed
          endif
        endif
        done==0
        }

fdim_man { ; Kerry Mitchell 26sep98
        ;
        ; real(p1) = coloring speed
        ; imag(p1) = plot flag
        ;   1:  plot x fdim
        ;   2:  plot y fdim
        ;   other:  x = x fdim, y = y fdim, plot angle
        ;
        zc=0, c=pixel, iter=1, done=0
        speed=real(p1), plotflag=imag(p1)
        xmin=1e12, xmax=0, ymin=1e12, ymax=0
        ssx=0, sx=0, ssy=0, sy=0
        :
        iter=iter+1, zc=sqr(zc)+c
        x=cabs(real(zc)), y=cabs(imag(zc))
        ssx=ssx+sqr(x), sx=sx+x
        ssy=ssy+sqr(y), sy=sy+y
        if(x<xmin)
          xmin=x
        endif
        if(x>xmax)
          xmax=x
        endif
        if(y<ymin)
          ymin=y
        endif
        if(y>ymax)
          ymax=y
        endif
        if(|zc|>4)
          done=1
          z=1
        endif
        if(iter==maxit)
          done=1
          denom=log(iter)
          s=ssx-sx*sx/iter
          numer=-log((xmax-xmin)/(sqrt(s)*iter))
          fdimx=2-1/(0.5+numer/denom)
          s=ssy-sy*sy/iter
          numer=-log((ymax-ymin)/(sqrt(s)*iter))
          fdimy=2-1/(0.5+numer/denom)
          if(plotflag==1)
            t=speed*fdimx
            z=cos(t)+flip(sin(t))
          elseif(plotflag==2)
            t=speed*fdimy
            z=cos(t)+flip(sin(t))
          else
            z=fdimx+flip(fdimy)
            z=z^speed
          endif
        endif
        done==0
        }

fdim2_jul { ; Kerry Mitchell 26sep98
        ;
        ; p1 = c = Julia parameter
        ; real(p2) = coloring speed
        ; imag(p2) = plot flag
        ;   1:  plot x fdim
        ;   2:  plot y fdim
        ;   3:  plot r fdim
        ;   other:  x = x fdim, y = y fdim, plot angle
        ;
        c=p1, zc=pixel, iter=1, done=0
        speed=real(p2), plotflag=imag(p2)
        xmin=1e12, xmax=-1e12, ymin=1e12, ymax=-1e12
        ssx=0, sx=0, ssy=0, sy=0
        rmin=1e12, rmax=-1e12, ssr=0, sr=0
        :
        iter=iter+1, zc=sqr(zc)+c
        x=real(zc), y=imag(zc), r=cabs(zc)
        ssx=ssx+sqr(x), sx=sx+x
        ssy=ssy+sqr(y), sy=sy+y
        ssr=ssr+sqr(r), sr=sr+r
        if(x<xmin)
          xmin=x
        endif
        if(x>xmax)
          xmax=x
        endif
        if(y<ymin)
          ymin=y
        endif
        if(y>ymax)
          ymax=y
        endif
        if(r<rmin)
          rmin=r
        endif
        if(r>rmax)
          rmax=r
        endif
        if(|zc|>4)
          done=1
          z=1
        endif
        if(iter==maxit)
          done=1
          s=sqrt(ssx-sx*sx/iter)
          fdimx=(xmax-xmin)/s
          s=sqrt(ssy-sy*sy/iter)
          fdimy=(ymax-ymin)/s
          s=sqrt(ssr-sr*sr/iter)
          fdimr=(rmax-rmin)/s
          if(plotflag==1)
            t=speed*fdimx
            z=cos(t)+flip(sin(t))
          elseif(plotflag==2)
            t=speed*fdimy
            z=cos(t)+flip(sin(t))
          elseif(plotflag==3)
            t=speed*fdimr
            z=cos(t)+flip(sin(t))
          else
            z=fdimx+flip(fdimy)
            z=z^speed
          endif
        endif
        done==0
        }

fdim2_man { ; Kerry Mitchell 26sep98
        ;
        ; real(p1) = coloring speed
        ; imag(p1) = plot flag
        ;   1:  plot x fdim
        ;   2:  plot y fdim
        ;   3:  plot r fdim
        ;   other:  x = x fdim, y = y fdim, plot angle
        ;
        zc=0, c=pixel, iter=1, done=0
        speed=real(p1), plotflag=imag(p1)
        xmin=1e12, xmax=-1e12, ymin=1e12, ymax=-1e12
        ssx=0, sx=0, ssy=0, sy=0
        rmin=1e12, rmax=-1e12, ssr=0, sr=0
        :
        iter=iter+1, zc=sqr(zc)+c
        x=real(zc), y=imag(zc), r=cabs(zc)
        ssx=ssx+sqr(x), sx=sx+x
        ssy=ssy+sqr(y), sy=sy+y
        ssr=ssr+sqr(r), sr=sr+r
        if(x<xmin)
          xmin=x
        endif
        if(x>xmax)
          xmax=x
        endif
        if(y<ymin)
          ymin=y
        endif
        if(y>ymax)
          ymax=y
        endif
        if(r<rmin)
          rmin=r
        endif
        if(r>rmax)
          rmax=r
        endif
        if(|zc|>4)
          done=1
          z=1
        endif
        if(iter==maxit)
          done=1
          s=sqrt(ssx-sx*sx/iter)
          fdimx=(xmax-xmin)/s
          s=sqrt(ssy-sy*sy/iter)
          fdimy=(ymax-ymin)/s
          s=sqrt(ssr-sr*sr/iter)
          fdimr=(rmax-rmin)/s
          if(plotflag==1)
            t=speed*fdimx
            z=cos(t)+flip(sin(t))
          elseif(plotflag==2)
            t=speed*fdimy
            z=cos(t)+flip(sin(t))
          elseif(plotflag==3)
            t=speed*fdimr
            z=cos(t)+flip(sin(t))
          else
            z=fdimx+flip(fdimy)
            z=z^speed
          endif
        endif
        done==0
        }

fern_J{
a0=0.01000,d0=0.16000,
a1=0.85000,b1=0.04000,c1=-0.04000,d1=0.85000,
a2=0.20000,b2=-0.26000,c2=0.23000,d2=0.22000,
a3=-0.15000,b3=0.28000,c3=0.26000,d3=0.24000,
al0=0.00160,
al1=0.72410,k1=0.06400,l1=-1.36000,
al2=0.10380,k2=-0.41600,l2=-0.32000,
al3=-0.10880,k3=0.12320,l3=0.06600,
z=pixel:
x=real(z)
y=imag(z)
o0=(d0*x)/al0+flip((a0*y)/al0)
op0=|o0-p2|
o1=(d1*x-b1*y+k1)/al1+flip((-c1*x+a1*y+l1)/al1)
op1=|o1-p2|
o2=(d2*x-b2*y+k2)/al2+flip((-c2*x+a2*y+l2)/al2)
op2=|o2-p2|
o3=(d3*x-b3*y+k3)/al3+flip((-c3*x+a3*y+l3)/al3)
op3=|o3-p2|
IF (op0<op1 && op0<op2 && op0<op3)
z=o0
ELSEIF (op1<op0 && op1<op2 && op1<op3)
z=o1
ELSEIF (op2<op1 && op2<op0 && op2<op3)
z=o2
ELSEIF (op3<op0 && op3<op1 && op3<op2)
z=o3
ENDIF
|z|<=p1
}

FGZ-J   { ; Jay Hill
   ; p1 is the Julia set parameter
   z = pixel, c = p1: 
   z = z * z + c;
   z = (3 * z * z) / (z + 3) + c,
   |z| <= 36
  }

FGZ-Julia   {
      z = c = pixel:
         z = z * z + (-0.6882, -0.1729);
         z = (3 * z * z) / (z + 3) + (-0.6882, -0.1729),
      |z| <= 4
   }


FGZ-Julia_alt (Origin) {; Michael G. Wareman
   ; try p1 = (3.0,0.5) p2 = (-0.6882, -0.1729)
   ; FGZ-Julia-02 thru -20 were the same formula as
   ; this, with different p1/p2 values - see table -- JH.
  z = c = pixel:  ; c is redundant - JH
   ;  z = z * z + (-0.6882, -0.1729);        ; original
  z = z * z + p2                             ; alternative by JH
   ;  z = (3 * z * z) / (z + 3) + (-0.6etc)  ; original
  z = (p1 * z * z) / (z + p1) + p2,          ; alternative by JH
  |z| <= 4
}

FGZ-Julia_gen   { ; (c) Jay Hill, 1998
  ; generalization of formula by Michael G. Wareman
  ; p3 is focus of Julia set
  z=pixel, c=p3:
  z1=z*z + c;
  z = p1*z1*z1/(z1 + p2) + c;
  |z| <= 16
  }

FGZ-Julia2   { ; (c) Jay Hill, 1998
  ; generalization of formula by Michael G. Wareman
  ; p3 is focus of Julia set
  z=pixel, c=p3:
  z1=z*z + c;
  z = p1*z1*z1/(z1 + p2) + c;
  |z| <= 64
  }

FGZ-Julia-5   {
      z = c = pixel:
         z = z * z + (-1.1266, 0.2666);
         z = (3 * z * z) / (z + 3) + (-1.1266, 0.2666),
      |z| <= 4
   }
 
FGZ-Julia-6   {
      z = c = pixel:
         z = z * z + (-0.97, 0.2709);
         z = (3 * z * z) / (z + 3) + (-0.97, 0.2709),
      |z| <= 4
   }
 
FGZ-Julia-7   {
      z = c = pixel:
         z = z * z + (-0.6908, 0.1185);
         z = (3 * z * z) / (z + 3) + (-0.6908, 0.1185),
      |z| <= 4
   }
 
FGZ-Julia-8   {
      z = c = pixel:
         z = z * z + (-0.5892, 0.0549);
         z = (3 * z * z) / (z + 3) + (-0.5892, 0.0549),
      |z| <= 4
   }
 
FGZ-Julia-9   {
      z = c = pixel:
         z = z * z + (-0.4919, 0.4572);
         z = (3 * z * z) / (z + 3) + (-0.4919, 0.4572),
      |z| <= 4
   }

FGZ-M    { ; Jay Hill
   c = pixel, 
   z=-sqrt(-c): ; approximate critical point
   z = z * z + c;
   z = (3 * z * z) / (z + 3) + c,
   |z| <= 36
  }

FGZ-Mand  { ; (c) Jay Hill, 1998
  IF( |p3| == 0) 
    p3 = 16
  ENDIF
  c=pixel, z=sqrt(-c), bailout = real(p3):
  z1=z*z + c;
  z = p1*z1*z1/(z1 + p2) + c;
  |z| <= bailout
}

field2_jul { ; Kerry Mitchell
        ;
        ; Colors Julia sets by nearest approach to
        ;   period 2 field lines
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; imag(p2) = number of field line to use: 0, 1, or 2
        ; 2 iterations per pixel
        ; variable zc used for calculation, z for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), minr=maxr, iter=1
        fieldangle=tan(imag(p2)*2*pi/3):
        ;
        ; iteration
        ;   compare tangent of polar angle with desired
        ;   field line angle, update minimum if needed
        ;
        iter=iter+2, zc=sqr(zc)+c, zc=sqr(zc)+c
        rzc=|zc|, tanangle=imag(zc)/real(zc),
        r=cabs(fieldangle-tanangle)
        if (r<minr)
          minr=r
          endif
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of minimum difference of angles as
        ;     decomposition angle
        ;
        if ((rzc>maxr)||(iter>=maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }

field3_jul { ; Kerry Mitchell
        ;
        ; Colors Julia sets by nearest approach to
        ;   period 3 field lines
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; imag(p2) = number of field line to use:
        ;   0, 1, 2, 3, 4, 5, 6, 7
        ; 3 iterations per pixel
        ; variable zc used for calculation, z for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), minr=maxr, iter=1
        fieldangle=tan(imag(p2)*2*pi/7):
        ;
        ; iteration
        ;   compare tangent of polar angle with desired
        ;   field line angle, update minimum if needed
        ;
        iter=iter+3, zc=sqr(zc)+c, zc=sqr(zc)+c, zc=sqr(zc)+c
        rzc=|zc|, tanangle=imag(zc)/real(zc),
        r=cabs(fieldangle-tanangle)
        if (r<minr)
          minr=r
          endif
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of minimum difference of angles as
        ;     decomposition angle
        ;
        if ((rzc>maxr)||(iter>=maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }

field4_jul { ; Kerry Mitchell
        ;
        ; Colors Julia sets by nearest approach to
        ;   period 4 field lines
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; imag(p2) = number of field line to use:  0 - 15
        ; 4 iterations per pixel
        ; variable zc used for calculation, z for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), minr=maxr, iter=1
        fieldangle=tan(imag(p2)*2*pi/15):
        ;
        ; iteration
        ;   compare tangent of polar angle with desired
        ;   field line angle, update minimum if needed
        ;
        iter=iter+4, zc=sqr(zc)+c, zc=sqr(zc)+c, zc=sqr(zc)+c
        zc=sqr(zc)+c, rzc=|zc|, tanangle=imag(zc)/real(zc),
        r=cabs(fieldangle-tanangle)
        if (r<minr)
          minr=r
          endif
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of minimum difference of angles as
        ;     decomposition angle
        ;
        if ((rzc>maxr)||(iter>=maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }

field2_man { ; Kerry Mitchell
        ;
        ; Colors Mandelbrot set by nearest approach to
        ;   period 2 field lines
        ;
        ; use decomp=256
        ; real(p1) = bailout (try 1e12)
        ; imag(p1) = number of field line to use: 0, 1, or 2
        ; 2 iterations per pixel
        ; variable zc used for calculation, z for coloring
        ;
        zc=0, c=pixel, maxr=real(p1), minr=maxr, iter=1
        fieldangle=tan(imag(p1)*2*pi/3):
        ;
        ; iteration
        ;   compare tangent of polar angle with desired
        ;   field line angle, update minimum if needed
        ;
        iter=iter+2, zc=sqr(zc)+c, zc=sqr(zc)+c
        rzc=|zc|, tanangle=imag(zc)/real(zc),
        r=cabs(fieldangle-tanangle)
        if (r<minr)
          minr=r
          endif
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of minimum difference of angles as
        ;     decomposition angle
        ;
        if ((rzc>maxr)||(iter>=maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }

field3_man { ; Kerry Mitchell
        ;
        ; Colors Mandelbrot set by nearest approach to
        ;   period 3 field lines
        ;
        ; use decomp=256
        ; real(p1) = bailout (try 1e12)
        ; imag(p1) = number of field line to use:
        ;   0, 1, 2, 3, 4, 5, 6, 7
        ; 3 iterations per pixel
        ; variable zc used for calculation, z for coloring
        ;
        zc=0, c=pixel, maxr=real(p1), minr=maxr, iter=1
        fieldangle=tan(imag(p1)*2*pi/7):
        ;
        ; iteration
        ;   compare tangent of polar angle with desired
        ;   field line angle, update minimum if needed
        ;
        iter=iter+3, zc=sqr(zc)+c, zc=sqr(zc)+c, zc=sqr(zc)+c
        rzc=|zc|, tanangle=imag(zc)/real(zc),
        r=cabs(fieldangle-tanangle)
        if (r<minr)
          minr=r
          endif
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of minimum difference of angles as
        ;     decomposition angle
        ;
        if ((rzc>maxr)||(iter>=maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }

field4_man { ; Kerry Mitchell
        ;
        ; Colors Mandelbrot set by nearest approach to
        ;   period 4 field lines
        ;
        ; use decomp=256
        ; real(p1) = bailout (try 1e12)
        ; imag(p1) = number of field line to use:  0 - 15
        ; 4 iterations per pixel
        ; variable zc used for calculation, z for coloring
        ;
        zc=0, c=pixel, maxr=real(p1), minr=maxr, iter=1
        fieldangle=tan(imag(p1)*2*pi/15):
        ;
        ; iteration
        ;   compare tangent of polar angle with desired
        ;   field line angle, update minimum if needed
        ;
        iter=iter+4, zc=sqr(zc)+c, zc=sqr(zc)+c, zc=sqr(zc)+c
        zc=sqr(zc)+c, rzc=|zc|, tanangle=imag(zc)/real(zc),
        r=cabs(fieldangle-tanangle)
        if (r<minr)
          minr=r
          endif
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of minimum difference of angles as
        ;     decomposition angle
        ;
        if ((rzc>maxr)||(iter>=maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }

fieldq2_man {
        zc=0, c=pixel, r=real(p1), k=imag(p1), qmin=r, iter=1:
        iter=iter+1, zc=sqr(zc)+c, zc=sqr(zc)+c
        rzc=|zc|, q=imag(zc)/real(zc), q=cabs(cabs(q)-k)
        if (q<qmin)
          qmin=q
          endif
        if ((rzc>r)||(iter==maxit))
          iter=-1, t=log(qmin)
          z=cos(t)+flip(sin(t))
          endif
        iter>0
        }

Flex_Newt1_Mand {; Copyright (c) Paul Carlson, 1998
    ; p1 = radius of center of ring (0.01 to 10)
    ; p2 = one half thickness of ring (0.01 to p1)
    ; p3 = max. |w - previous w| for early bailout
    ;
    c = pixel, cm1 = c - 1, tcm1 = cm1 + cm1
    w = sqrt(-cm1 / 6), prev_w = w
    z = iter = bailout = 0
    d0 = p1 + p2
    d1 = 0.382683432365 * p1
    d2 = 0.923879532511 * p1
    dsqd = d0 * d0 + p1 * p1 - (d0 + d0) * d2
    :
    w2 = w * w, w3 = w2 * w, w4 = w2 * w2
    w = w - (w4 + cm1 * w2 - c ) / (4 * w3 + tcm1 * w)
    wr=real(w), wi=imag(w)
    pr=real(prev_w), pm=imag(prev_w)
    IF ((abs(cabs(w) - p1) < p2) && iter > 0)
	bailout = 1
	wr = real(w), wi = imag(w)
	awr = abs(wr), awi = abs(wi)
	IF (awr >= awi)
	    dist = (awr - d2)*(awr - d2) + (awi - d1)*(awi - d1)
	    adjust = 1
	ELSE
	    dist = (awr - d1)*(awr - d1) + (awi - d2)*(awi - d2)
	    adjust = 0
	ENDIF
	IF     (wr >= 0 && wi >= 0)
	    range_num = 1 - adjust
	ELSEIF (wr < 0 && wi >= 0)
	    range_num = 2 + adjust
	ELSEIF (wr < 0 && wi < 0)
	    range_num = 5 - adjust
	ELSE
	    range_num = 6 + adjust
	ENDIF
	ratio = sqrt(dist / dsqd)
	z = 29 * ratio + range_num * 30 + 1
     ELSEIF (|w - prev_w| < p3)
	bailout = 1
	z = 252
    ENDIF
    iter = iter + 1
    prev_w = w
    z = z - iter
    bailout == 0 && |w| < 1.0e20
}

Flex_Newt2_Mand {; Copyright (c) Paul Carlson, 1998
    ; p1 = radius of center of ring (0.01 to 10)
    ; p2 = one half thickness of ring (0.01 to p1)
    ; p3 = max. |w - previous w| for early bailout
    ;
    c = pixel, c2 = c * c, c41 = c2 * c2 + 1
    w = sqrt(c41/(6*c2)), prev_w = w
    z = iter = bailout = 0
    d0 = p1 + p2
    d1 = 0.382683432365 * p1
    d2 = 0.923879532511 * p1
    dsqd = d0 * d0 + p1 * p1 - (d0 + d0) * d2
    :
    w2 = w * w, w3 = w2 * w, w4 = w2 * w2
    w = w - (c2*w4 - c41*w2 + c2) / (4*c2*w3 - 2*c41*w)
    wr=real(w), wi=imag(w)
    pr=real(prev_w), pm=imag(prev_w)
    IF ((abs(cabs(w) - p1) < p2) && iter > 0)
	bailout = 1
	wr = real(w), wi = imag(w)
	awr = abs(wr), awi = abs(wi)
	IF (awr >= awi)
	    dist = (awr - d2)*(awr - d2) + (awi - d1)*(awi - d1)
	    adjust = 1
	ELSE
	    dist = (awr - d1)*(awr - d1) + (awi - d2)*(awi - d2)
	    adjust = 0
	ENDIF
	IF     (wr >= 0 && wi >= 0)
	    range_num = 1 - adjust
	ELSEIF (wr < 0 && wi >= 0)
	    range_num = 2 + adjust
	ELSEIF (wr < 0 && wi < 0)
	    range_num = 5 - adjust
	ELSE
	    range_num = 6 + adjust
	ENDIF
	ratio = sqrt(dist / dsqd)
	z = 29 * ratio + range_num * 30 + 1
     ELSEIF (|w - prev_w| < p3)
	bailout = 1
	z = 252
    ENDIF
    iter = iter + 1
    prev_w = w
    z = z - iter
    bailout == 0 && |w| < 1.0e20
}

FlexBalls_Cosh {; Copyright (c) Paul W. Carlson, 1998
    ; p1 = radius of center of ring (0.01 to 10)
    ; p2 = one half thickness of ring (0.01 to p1)
    ;
    c = pixel
    w = z = iter = bailout = 0
    d0 = p1 + p2
    d1 = 0.382683432365 * p1
    d2 = 0.923879532511 * p1
    dsqd = d0 * d0 + p1 * p1 - (d0 + d0) * d2
    :
    w = cosh(w) + c
    ;
    IF ((abs(cabs(w) - p1) < p2) && iter > 0)
	bailout = 1
	wr = real(w), wi = imag(w)
	awr = abs(wr), awi = abs(wi)
	IF (awr >= awi)
	    dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
	    adjust = 1
	ELSE
	    dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
	    adjust = 0
	ENDIF
	IF     (wr >= 0 && wi >= 0)
	    range_num = 1 - adjust
	ELSEIF (wr < 0 && wi >= 0)
	    range_num = 2 + adjust
	ELSEIF (wr < 0 && wi < 0)
	    range_num = 5 - adjust
	ELSE
	    range_num = 6 + adjust
	ENDIF
	ratio = sqrt(dist / dsqd)
	z = 29 * ratio + range_num * 30 + 1
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 1000
}

FlexBalls_Cosww {; Copyright (c) Paul W. Carlson, 1998
    ; p1 = radius of center of ring (0.01 to 10)
    ; p2 = one half thickness of ring (0.01 to p1)
    ;
    c = pixel
    w = z = iter = bailout = 0
    d0 = p1 + p2
    d1 = 0.382683432365 * p1
    d2 = 0.923879532511 * p1
    dsqd = d0 * d0 + p1 * p1 - (d0 + d0) * d2
    :
    w = cos(w * w) + c
    ;
    IF ((abs(cabs(w) - p1) < p2) && iter > 0)
	bailout = 1
	wr = real(w), wi = imag(w)
	awr = abs(wr), awi = abs(wi)
	IF (awr >= awi)
	    dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
	    adjust = 1
	ELSE
	    dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
	    adjust = 0
	ENDIF
	IF     (wr >= 0 && wi >= 0)
	    range_num = 1 - adjust
	ELSEIF (wr < 0 && wi >= 0)
	    range_num = 2 + adjust
	ELSEIF (wr < 0 && wi < 0)
	    range_num = 5 - adjust
	ELSE
	    range_num = 6 + adjust
	ENDIF
	ratio = sqrt(dist / dsqd)
	z = 29 * ratio + range_num * 30 + 1
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 1000
}

FlexBalls_Mand {; Copyright (c) Paul W. Carlson, 1998
    ; p1 = radius of center of ring (0.01 to 10)
    ; p2 = one half thickness of ring (0.01 to p1)
    ;
    c = pixel
    w = z = iter = bailout = 0
    d0 = p1 + p2
    d1 = 0.382683432365 * p1
    d2 = 0.923879532511 * p1
    dsqd = d0 * d0 + p1 * p1 - (d0 + d0) * d2
    :
    w = w * w + c   ; Classic Mandelbrot set
    ;
    IF ((abs(cabs(w) - p1) < p2) && iter > 0)
	bailout = 1
	wr = real(w), wi = imag(w)
	awr = abs(wr), awi = abs(wi)
	IF (awr >= awi)
	    dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
	    adjust = 1
	ELSE
	    dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
	    adjust = 0
	ENDIF
	IF     (wr >= 0 && wi >= 0)
	    range_num = 1 - adjust
	ELSEIF (wr < 0 && wi >= 0)
	    range_num = 2 + adjust
	ELSEIF (wr < 0 && wi < 0)
	    range_num = 5 - adjust
	ELSE
	    range_num = 6 + adjust
	ENDIF
	ratio = sqrt(dist / dsqd)
	z = 29 * ratio + range_num * 30 + 1
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 1000
}

FlexBalls_Pky {; Copyright (c) Paul W. Carlson, 1998
    ; p1       = Julia set coordinates
    ; real(p1) = radius of center of ring (0.01 to 10)
    ; imag(p2) = one half thickness of ring (0.01 to p1)
    ; real(p3) = iterations to skip
    ; imag(p3) = bailout value for |w|
    ;
    w = pixel
    c = p1
    z = iter = bailout = 0
    d0 = real(p2) + imag(p2)
    d1 = 0.382683432365 * real(p2)
    d2 = 0.923879532511 * real(p2)
    dsqd = d0 * d0 + real(p2) * real(p2) - (d0 + d0) * d2
    :
    w = 1 / (w * w + c)
    ;
    IF ((abs(cabs(w) - real(p2)) < imag(p2)) && iter > real(p3))
	bailout = 1
	wr = real(w), wi = imag(w)
	awr = abs(wr), awi = abs(wi)
	IF (awr >= awi)
	    dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
	    adjust = 1
	ELSE
	    dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
	    adjust = 0
	ENDIF
	IF     (wr >= 0 && wi >= 0)
	    range_num = 1 - adjust
	ELSEIF (wr < 0 && wi >= 0)
	    range_num = 2 + adjust
	ELSEIF (wr < 0 && wi < 0)
	    range_num = 5 - adjust
	ELSE
	    range_num = 6 + adjust
	ENDIF
	ratio = sqrt(dist / dsqd)
	z = 29 * ratio + range_num * 30 + 1
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < imag(p3)
}

FlexBalls_R4 {; Copyright (c) Paul W. Carlson, 1998
    ; p1 = radius of center of ring (0.01 to 10)
    ; p2 = one half thickness of ring (0.01 to p1)
    ;
    c = pixel
    w = z = iter = bailout = 0
    d0 = p1 + p2
    d1 = 0.382683432365 * p1
    d2 = 0.923879532511 * p1
    dsqd = d0 * d0 + p1 * p1 - (d0 + d0) * d2
    :
    w = c * ((w - 1)^2) / ((w + 1)^2)
    ;
    IF ((abs(cabs(w) - p1) < p2) && iter > 0)
	bailout = 1
	wr = real(w), wi = imag(w)
	awr = abs(wr), awi = abs(wi)
	IF (awr >= awi)
	    dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
	    adjust = 1
	ELSE
	    dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
	    adjust = 0
	ENDIF
	IF     (wr >= 0 && wi >= 0)
	    range_num = 1 - adjust
	ELSEIF (wr < 0 && wi >= 0)
	    range_num = 2 + adjust
	ELSEIF (wr < 0 && wi < 0)
	    range_num = 5 - adjust
	ELSE
	    range_num = 6 + adjust
	ENDIF
	ratio = sqrt(dist / dsqd)
	z = 29 * ratio + range_num * 30 + 1
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 1000
}

FlyingSquirrelC (XAXIS_NOPARM) {; Edited for Fractint v. 20 
                                ; by George Martin 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=sin(z)/cosxx(z)+pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4 
}

Formulization { ; Copyright (c) Paul W. Carlson, 1998
    z = w = iter = range_num = bailout = 0
    c = pixel
    p = p1 + p1
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    colors_in_range_1 = colors_in_range - 1
    :
    ; Some random formulizationizating
    k = w * w + c
    w = k +  1 / (k * k) + k * c
    ;
    m = |w|
    IF ((p < p1) && (m > p1))
        bailout = 1
        index = colors_in_range_1 * (p1 - p) / p1
        z = index + range_num * colors_in_range + 1
    ENDIF
    p = m
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && m < 100
}

Four_In_One_Mset {; Copyright (c) Paul W. Carlson, 1998
		      ; This version allows passes=t
		      ; Zooming added by Sylvie Gallet, 6/7/98
    ; real(p1) = size factor, upper left  quadrant
    ; imag(p1) = size factor, upper right quadrant
    ; real(p2) = size factor, lower left  quadrant
    ; imag(p2) = size factor, lower right quadrant
    ;
    prev_w = z = bailout = iter = range_num = 0
    w1 = w2 = w3 = w4 = 0
    px = real(scrnpix), py = imag(scrnpix)
    hmx = 0.5 * real(scrnmax)
    hmy = 0.5 * imag(scrnmax)
    IF ((px < 2) || (px > (real(scrnmax) - 3)) || \
	(py < 2) || (py > (imag(scrnmax) - 3))  || \
       ((px > hmx - 2) && (px < hmx + 1))      || \
       ((py > hmy - 2) && (py < hmy + 1)))
	IF ((px > hmx - 2) && (px < hmx + 1) && \
	    (py > hmy - 2) && (py < hmy + 1))
	    z = 251
	ELSE
	    z = 252
	ENDIF
	bailout = 1
	IF (px == 0 && py == 0)
	    z0 = pixel
	ENDIF
	IF (px == 1 && py == 0)
	    delta_x = real(scrnmax) * (pixel - z0)
	ENDIF
	IF (px == 0 && py == 1)
	    delta_y = imag(scrnmax) * (pixel - z0)
	ENDIF
    ENDIF
    IF (bailout == 0)
	IF (px < hmx)
	    IF (py > hmy)
		c = z0 + 2 * (pixel - z0) - delta_y
		size = real(p2)
		a1 = 0.6, b1 = 0.3, a2 = 0.2, b2 = 0.4
		quad = 3
	    ELSE
		c = z0 + 2 * (pixel - z0)
		size = real(p1)
		rad = 0.5
		quad = 1
	    ENDIF
	ELSEIF (py > hmy)
	    c = z0 + 2 * (pixel - z0) - delta_x - delta_y
	    size = imag(p2)
	    k = 0.5 + size
	    j = 0.5 - size
	    quad = 4
	ELSE
	    c = z0 + 2 * (pixel - z0) - delta_x
	    size = imag(p1)
	    quad = 2
	ENDIF
	index_factor = 29 / size
    ENDIF
    :
    IF (bailout == 0)
	IF (quad == 1)
	    w1 = w1 * w1 + c
	    w = w1
	    ang = atan(imag(w1) / real(w1))
	    astroid = rad * (cos(ang)^3 + (0,1) * sin(ang)^3)
	    dist = abs(|w1| - |astroid|)
	ELSEIF (quad == 2)
	    w2 = w2 * w2 + c
	    w = w2
	    dist = abs(|w2| - .25)
	ELSEIF (quad == 3)
	    w3 = w3 * w3 + c
	    w = w3
	    ang = atan(imag(w3) / real(w3))
	    ell1 = a1 * cos(ang) + (0,1) * b1 * sin(ang)
	    dist1 = abs(cabs(w3) - cabs(ell1))
	    ell2 = b2 * cos(ang) + (0,1) * a2 * sin(ang)
	    dist2 = abs(cabs(w3) - cabs(ell2))
	    IF (dist1 < dist2)
		dist = dist1
	    ELSE
		dist = dist2
	    ENDIF
	ELSEIF (quad == 4)
	    w4 = w4 * w4 + c
	    w = w4
	    awr = abs(real(w4)), awi = abs(imag(w4))
	    IF ((awr < k) && (awr > j) && \
		(awi < k) && (awi > j))
		awr5 = abs(awr - 0.5), awi5 = abs(awi - 0.5)
		IF (awr5 <= awi5)
		    dist = awr5
		ELSE
		    dist = awi5
		ENDIF
	    ELSE
		dist = 1.0e30
	    ENDIF
	ENDIF
    ENDIF
    IF (dist < size && iter > 0)
	bailout = 1
	z = index_factor * dist + range_num * 30 + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == 8)
	range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 4
}

Four_Julias {; Copyright (c) Paul W. Carlson, 1998
    ; p1       = Julia set coordinates
    ; real(p2) = size factor, upper left  quadrant
    ; imag(p2) = size factor, upper right quadrant
    ; real(p3) = size factor, lower left  quadrant
    ; imag(p3) = size factor, lower right quadrant
    ;
    c = p1
    z = bailout = iter = range_num = 0
    px = real(scrnpix), py = imag(scrnpix)
    hmx = 0.5 * real(scrnmax)
    hmy = 0.5 * imag(scrnmax)
    IF ((px < 2) || (px > (real(scrnmax) - 3)) || \
	(py < 2) || (py > (imag(scrnmax) - 3)) || \
       ((px > hmx - 2) && (px < hmx + 1))      || \
       ((py > hmy - 2) && (py < hmy + 1)))
       z = 252
       bailout = 1
    ENDIF
    IF (bailout == 0)
	IF (px < hmx)
	    IF (py > hmy)
		w = 2 * (pixel + (1,0.75))
		size = real(p3)
		quad = 3
	    ELSE
		prev_w = 2 * (pixel + (1.0,-0.75))
		size = real(p2)
		quad = 1
	    ENDIF
	ELSE
	    IF (py > hmy)
		w = 2 * (pixel + (-1,0.75))
		size = imag(p3)
		k = 0.5 + size
		j = 0.5 - size
		quad = 4
	    ELSE
		w = 2 * (pixel + (-1.0,-0.75))
		size = imag(p2)
		quad = 2
	    ENDIF
	ENDIF
    index_factor = 29 / size
    ENDIF
    :
    IF (bailout == 0)
	IF (quad == 1)
	    w = prev_w * prev_w + c
	    dist = |prev_w| / |w|
	    prev_w = w
	ELSE
	    w = w * w + c
	    IF (quad == 2)
		dist = abs(|w|-.25)
	    ELSEIF (quad == 3)
		IF (abs(real(w)) <= abs(imag(w)))
		    dist = abs(real(w))
		ELSE
		    dist = abs(imag(w))
		ENDIF
	    ELSEIF (quad == 4)
		awr = abs(real(w)), awi = abs(imag(w))
		IF ((awr < k) && (awr > j) && \
		    (awi < k) && (awi > j))
		    awr5 = abs(awr - 0.5), awi5 = abs(awi - 0.5)
		    IF (awr5 <= awi5)
			dist = awr5
		    ELSE
			dist = awi5
		    ENDIF
		ELSE
		    dist = 1.0e30
		ENDIF
	    ENDIF
	ENDIF
	IF (dist < size && iter > 0)
	    bailout = 1
	    z = index_factor * dist + range_num * 30 + 1
	ENDIF
    ENDIF
    range_num = range_num + 1
    IF (range_num == 8)
	range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 4
}

Four_Julias_Z     {; Copyright (c) Paul W. Carlson, 1998
                       ; Zooming added by Sylvie Gallet, 6/7/98
    ; p1       = Julia set coordinates
    ; real(p2) = size factor, upper left  quadrant
    ; imag(p2) = size factor, upper right quadrant
    ; real(p3) = size factor, lower left  quadrant
    ; imag(p3) = size factor, lower right quadrant
    ;
    c = p1
    z = bailout = iter = range_num = 0
    px = real(scrnpix), py = imag(scrnpix)
    hmx = 0.5 * real(scrnmax)
    hmy = 0.5 * imag(scrnmax)
    IF ((px < 2) || (px > (real(scrnmax) - 3)) || \
	(py < 2) || (py > (imag(scrnmax) - 3)) || \
       ((px > hmx - 2) && (px < hmx + 1))      || \
       ((py > hmy - 2) && (py < hmy + 1)))
	z = 252
	bailout = 1
	IF (px == 0 && py == 0)
	    z0 = pixel
	ENDIF
	IF (px == 1 && py == 0)
	    delta_x = real(scrnmax) * (pixel - z0)
	ENDIF
	IF (px == 0 && py == 1)
	    delta_y = imag(scrnmax) * (pixel - z0)
	ENDIF
    ENDIF
    IF (bailout == 0)
	IF (px < hmx)
	    IF (py > hmy)
		w = z0 + 2 * (pixel - z0) - delta_y
		size = real(p3)
		quad = 3
	    ELSE
		prev_w = z0 + 2 * (pixel - z0)
		size = real(p2)
		skip = real(p3)
		quad = 1
	    ENDIF
	ELSEIF (py > hmy)
	    w = z0 + 2 * (pixel - z0) - delta_x - delta_y
	    size = imag(p3)
	    k = 0.5 + size
	    j = 0.5 - size
	    quad = 4
	ELSE
	    w = z0 + 2 * (pixel - z0) - delta_x
	    size = imag(p2)
	    quad = 2
	ENDIF
	index_factor = 29 / size
    ENDIF
    :
    IF (bailout == 0)
	IF (quad == 1)
	    w = prev_w * prev_w + c
	    dist = |prev_w| / |w|
	    prev_w = w
	ELSE
	    w = w * w + c
	    IF (quad == 2)
		dist = abs(|w|-.25)
	    ELSEIF (quad == 3)
		IF (abs(real(w)) <= abs(imag(w)))
		    dist = abs(real(w))
		ELSE
		    dist = abs(imag(w))
		ENDIF
	    ELSEIF (quad == 4)
		awr = abs(real(w)), awi = abs(imag(w))
		IF ((awr < k) && (awr > j) && \
		    (awi < k) && (awi > j))
		    awr5 = abs(awr - 0.5), awi5 = abs(awi - 0.5)
		    IF (awr5 <= awi5)
			dist = awr5
		    ELSE
			dist = awi5
		    ENDIF
		ELSE
		    dist = 1.0e30
		ENDIF
	    ENDIF
	ENDIF
	IF (dist < size && iter > 0)
	    bailout = 1
	    z = index_factor * dist + range_num * 30 + 1
	ENDIF
    ENDIF
    range_num = range_num + 1
    IF (range_num == 8)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 4
}

Four_Mandels     {; Copyright (c) Paul W. Carlson, 1998
                  ; Zooming added by Sylvie Gallet, 6/7/98
    ; real(p1) = size factor, upper left  quadrant
    ; imag(p1) = size factor, upper right quadrant
    ; real(p2) = size factor, lower left  quadrant
    ; imag(p2) = size factor, lower right quadrant
    ;
    prev_w = z = bailout = iter = range_num = 0
    w1 = w2 = w3 = w4 = 0
    px = real(scrnpix), py = imag(scrnpix)
    hmx = 0.5 * real(scrnmax)
    hmy = 0.5 * imag(scrnmax)
    IF ((px < 2) || (px > (real(scrnmax) - 3)) || \
	(py < 2) || (py > (imag(scrnmax) - 3))  || \
       ((px > hmx - 2) && (px < hmx + 1))      || \
       ((py > hmy - 2) && (py < hmy + 1)))
	z = 252
	bailout = 1
	IF (px == 0 && py == 0)
	    z0 = pixel
	ENDIF
	IF (px == 1 && py == 0)
	    delta_x = real(scrnmax) * (pixel - z0)
	ENDIF
	IF (px == 0 && py == 1)
	    delta_y = imag(scrnmax) * (pixel - z0)
	ENDIF
    ENDIF
    IF (bailout == 0)
	IF (px < hmx)
	    IF (py > hmy)
		c = z0 + 2 * (pixel - z0) - delta_y
		size = real(p2)
		a1 = 0.6, b1 = 0.3, a2 = 0.2, b2 = 0.4
		quad = 3
	    ELSE
		c = z0 + 2 * (pixel - z0)
		size = real(p1)
		rad = 0.5
		quad = 1
	    ENDIF
	ELSEIF (py > hmy)
	    c = z0 + 2 * (pixel - z0) - delta_x - delta_y
	    size = imag(p2)
	    k = 0.5 + size
	    j = 0.5 - size
	    quad = 4
	ELSE
	    c = z0 + 2 * (pixel - z0) - delta_x
	    size = imag(p1)
	    quad = 2
	ENDIF
	index_factor = 29 / size
    ENDIF
    :
    IF (bailout == 0)
	IF (quad == 1)
	    w1 = w1 * w1 + c
	    w = w1
	    ang = atan(imag(w1) / real(w1))
	    astroid = rad * (cos(ang)^3 + (0,1) * sin(ang)^3)
	    dist = abs(|w1| - |astroid|)
	ELSEIF (quad == 2)
	    w2 = w2 * w2 + c
	    w = w2
	    dist = abs(|w2| - .25)
	ELSEIF (quad == 3)
	    w3 = w3 * w3 + c
	    w = w3
	    ang = atan(imag(w3) / real(w3))
	    ell1 = a1 * cos(ang) + (0,1) * b1 * sin(ang)
	    dist1 = abs(cabs(w3) - cabs(ell1))
	    ell2 = b2 * cos(ang) + (0,1) * a2 * sin(ang)
	    dist2 = abs(cabs(w3) - cabs(ell2))
	    IF (dist1 < dist2)
		dist = dist1
	    ELSE
		dist = dist2
	    ENDIF
	ELSEIF (quad == 4)
	    w4 = w4 * w4 + c
	    w = w4
	    awr = abs(real(w4)), awi = abs(imag(w4))
	    IF ((awr < k) && (awr > j) && \
		(awi < k) && (awi > j))
		awr5 = abs(awr - 0.5), awi5 = abs(awi - 0.5)
		IF (awr5 <= awi5)
		    dist = awr5
		ELSE
		    dist = awi5
		ENDIF
	    ELSE
		dist = 1.0e30
	    ENDIF
	ENDIF
    ENDIF
    IF (dist < size && iter > 0)
	bailout = 1
	z = index_factor * dist + range_num * 30 + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == 8)
	range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 4
}

FourierJ{; Julia Set of FourierM
	  ; p1 and p2: coefficients of the sine waves
	  ; bailout fixed at 8
z=pixel
c=p3:
z=p1*sin(z)+p2*sin(2*z)+c
|z|<=8
}

FourierM{; First three terms of a Fourier series
	  ; p1 and p2: coefficients of the sine waves
	  ; bailout fixed at 8
z=0 
c=pixel:
z=p1*sin(z)+p2*sin(2*z)+c
|z|<=8
}

Fnww_Fnc_Mset { ; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) controls elements size (usually 2 to 16))
    ; imag(p1) not used
    ; real(p2) number of color ranges
    ; imag(p2) number of colors in a range
    z = w = iter = range_num = bailout = 0
    c = pixel
    p = p1 + p1
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    colors_in_range_1 = colors_in_range - 1:
    w = fn1(w * w + fn2(c))
    m = |w|
    IF ((p < p1) && (m > p1))
        bailout = 1
        index = colors_in_range_1 * (p1 - p) / p1
        z = index + range_num * colors_in_range + 1
    ENDIF
    p = m
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && m < 100
}

From_Jiho1 { ; Jiho Kim
   z = 0, c = Pixel:
   z = sin(z)+c,
   |fn1(z+p1)| > |fn2(z)|
  }

Fulano { ; Fabian Labeau Abril 98
z=pixel :
a=z-z^3
b=z+pixel
z=z*(z^z)*pixel+(a^b),
       |z| <= 6
}

fungus03{; Brian E. Jones
z = pixel , c = pixel * (whitesq == 0) + (-0.75,0.1234) * whitesq
x=imag(c), y=imag(z):
x = z + x / fn2(y)
y = z + fn1(y)
z = z * z + c
|z|<4
}

g_offset { ;modification of Kerry Mitchell's offset_rx=ry_jul
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
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

G-3-03-M  { ; Sylvie Gallet [101324,3444], 1996
            ; Modified Gallet-3-03 formula
  z = pixel :
  x = real(z) , y = imag(z)
  x1 = x - p1 * fn1(y*y + round(p2*fn2(y)))
  y1 = y - p1 * fn1(x*x + round(p2*fn2(x)))
  z = x1 + flip(y1)
  |z| <= 4
}

gallet-2-06 (YAXIS) {; Sylvie Gallet [101324,3444], 1995
  z = flip(pixel) :
  sinz = sin(z)
  z0 = sinz^(p1-1) , z1 = (sinz*z0+z)/(p1*z0+1)
  z = z-z1
  |z1| >= 0.000001
}

gallet-2-07 {; Sylvie Gallet [101324,3444], 1995
             ; (sin z)^p1 + z = 0 solution = 0
  z = pixel:
  sinz = sin(z)
  z0 = sinz^(p1-1) , z1 = (sinz*z0+z)/(p1*z0*cos(z)+1)
  z = z-z1
  |z1| >= 0.000001
}

gallet-2-09 {; Sylvie Gallet [101324,3444], 1995
  z = pixel , p = p1-1 :
  sinz = sin(z)
  z0 = sinz^p , z1 = (sinz*z0+z)/(p1*z0*fn1(z)+1)
  z = z-z1
  |z1| >= 0.000001
}

gallet-2-11 {; Sylvie Gallet [101324,3444], 1995
  z = pixel , a = p1-1 , b = p1-2 , ap1 = a*p1 :
  zb = z^b , za = z*zb , zp1 = z*za , n1 = zp1-z , n2 = p1*za-1
  z1 = n1/(n2 - ap1*zb*fn1(z)*n1/(2*n2)) 
  z = z-z1
  |z1| >= 0.000001
}

Gallet-3-01 (XAXIS) { ; Sylvie Gallet [101324,3444], 1996
            ; choose p1, p2 such as
            ; 0 < real(p1) < imag(p1) < real(p2) < maxiter
 z = c = pixel , z1 = c1=1.5*z , z2 = c2=2.25*z , z3 = c3=3.375*z
 l1=real(p1) , l2=imag(p1) , l3=real(p2) , bailout=16 , iter=0 :
 t1=(iter==l1) , t2=(iter==l2) , t3=(iter==l3)
 tt = 1 - (t1||t2||t3) , z = z * real(tt)
 c = c * real(tt) + c1*real(t1) + c2*real(t2) + c3*real(t3)
 z = z*z+c , iter = iter+1
 |z| <= bailout
}

Gallet-3-02 { ; Sylvie Gallet [101324,3444], 1996
 z = pixel :
 x = real(z) , y = imag(z)
 x1 = x - p1*fn1(y+p2*fn2(y))
 y1 = y - p1*fn1(x+p2*fn2(x))
 z = x1+flip(y1)
 |z| <= 4
}

Gallet-3-03 {; Sylvie Gallet [101324,3444], 1996
  z = pixel :
  x = real(z) , y = imag(z)
  x1 = x - p1*fn1(y*y+p2*fn2(y))
  y1 = y - p1*fn1(x*x+p2*fn2(x))
  z = x1+flip(y1)
  |z| <= 4
}

Gallet-3-05 { ; Sylvie Gallet [101324,3444], 1996
 z = pixel , c = p1 , bailout = real(p3) :
 test = (flip(c*z) >= 0)
 a = (z-p2)*test , b = (z+flip(p2))*(1-test) , z = (a+b)*c
 (sqr(real(z)) < bailout) || (sqr(imag(z)) < bailout)
}

Gallet-4-01 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , h = p1 , a = p2 :
   x = real(z) , y = imag(z)
   x1 = x - fn2(x + a*fn1(x+h))
   y1 = y + fn2(y + a*fn1(y+h))
   z = x1 + flip(y1)
    |z| <= 4
}

Gallet-4-02 { ; Sylvie Gallet [101324,3444], 1996
  z = pixel , h = p1 , a = p2 :
   x = real(z) , y = imag(z)
   y1 = y + fn2(x + a*fn1(x+h))
   x1 = x - fn2(y + a*fn1(y+h))
   z = x1 + flip(y1)
    |z| <= 16
  }

Gallet-4-03 {; Sylvie Gallet [101324,3444], 1996
  z2 = 0 , z1 = c = pixel :
   z = fn1(z1) + p1*real(c)*fn2(z1) + p2*imag(c)*z2
   z2 = z1 , z1 = z
    |z| <= 4
}

Gallet-4-05 {; Sylvie Gallet [101324,3444], 1996
             ; PHC formula
  z = pixel :
   x = real(z) , y = imag(z)
   x1 = x - p1 * fn1(y*(y - whitesq) + p2*fn2(y))
   y1 = y - p1 * fn1(x*(x - (whitesq == 0)) + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 4
}

Gallet-4-06 {; Sylvie Gallet [101324,3444], 1996
             ; PTC formula
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  sq3 = -0.5 + flip(sqrt(3)/2)
  c = (r == 0) + sq3*(r == 1) + conj(sq3)*(r == 2)
  z = c * pixel :
   x = real(z) , y = imag(z)
   x1 = x - p1 * fn1(y*y + p2*fn2(y))
   y1 = y - p1 * fn1(x*x + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 4
}

Gallet-4-10 {; Sylvie Gallet [101324,3444], 1996
             ; PHC formula
  p = (0,1) * p1 * ((0,1) * whitesq - (whitesq == 0))
  a = pixel + p , b = pixel - p
  a1 = b1 = 0 , a2 = 3*a*a , b2 = 3*b*b :
   a = a^3 - a2*a + a1 , b = b^3 - b2*b + b1
   a1 = a1 + p2 , b1 = b1 + p2
   z = (a + b)/2
    |z| <= p3
}

Gallet-4-11 {; Sylvie Gallet [101324,3444], 1996
p = (0,1) * p1 , bailout = p2
a = pixel + p , b = pixel - p :
a = fn1(a) + flip(fn2(a))
b = fn1(b) + flip(fn2(b))
z = (a + b) / 2
|a| <= bailout || |b| <= bailout
}
 
Gallet-5-01 { ; Sylvie Gallet [101324,3444], 1996
  sq3 = sqrt(3) , sq32 = 0.5*sq3 , l = real(p1) ,
  h = l*sq32 , l3 = 3*l
  h2 = 2*h , h3 = 3*h , h4 = h2 + h2 , l15 = 0.5*l3
  c1 = 0.5*l + flip(h) , c2 = l , rot = -0.5 + flip(sq32)
  y = imag(pixel) , x = real(pixel) - y/sq3
  y = y - floor(y/h3)*h3 , x = x - floor(x/l3)*l3 + y/sq3
  d = 0.5*y + sq32*x - h3 , x = x - d*sq3*(d>0) ,
  y = y - d*(d>0)
  y = y - h2*(y>h2)
  t = y < sq3*x-h4 , x = x - l15*t , y = y + h*t
  q1 = abs(floor(y / h))
  d2 = -sq32*x + 0.5*y , q2 = abs(floor(d2 / h))
  d3 = sq32*x + 0.5*y - h , q3 = abs(floor(d3 / h))
  q = q1 + q2 + q3 , odd = q != 2*floor(q/2)
  y = y*(odd==0) + (h2-y)*odd
  t = y > -sq3*x + h4 , x = x - l15*t , y = y - h*t
  z = x + flip(y) , z = z * (y<=h) + ((z-c1)*conj(rot) + c1) * (y>h)
  x = real(z) , z = z * (x<l) + ((z-c2)*rot + c2) * (x>=l)
  z = c = p2*z + p3 :
   z = z*z + c
    |z| <= 4
}

Gallet-5-03 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z), y = imag(z) :
   x1 = x*x + p1*fn1((y) + fn2(p2*y))
   y1 = y*y + p1*fn1((x) + fn2(p2*x))
   x = x1 , y = y1
   z = fn3(x * y)
    |z| <= p3
}

Gallet-5-06 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = z , y = flip(z) :
   hx = p1*fn1(x) , hy = p1*fn2(y)
   x = x + hy , y = y + hx
   z = x + flip(y)
    (|hx|+|hy|) <= p2
}

Gallet-5-07 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = z*(0,1) , y = z*(0,-1) :
   hx = p1*fn1(x) , hy = p1*fn2(y)
   x = x + hy , y = y + hx
   z = x + flip(y)
    (|hx|+|hy|) <= p2
}

Gallet-5-08 { ; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z) , y = imag(z) :
   x1 = x - p1*fn1(y + fn2(p2*x) + fn3(p3*y))
   y1 = y - p1*fn1(x + fn2(p2*y) + fn3(p3*x))
   x = x1 , y = y1
   z = x + flip(y)
    |z| <= 32
  }

Gallet-5-08-mod {; Sylvie Gallet [101324,3444], 1996
                 ; Modified, Bill Decker
  g = real(p3), f = imag(p3)
  z = pixel, x = real(z), y = imag(z):
  x1 = x - p1*fn1(y + fn2(p2*x + fn3(g*y)))
  y1 = y - p1*fn1(x + fn2(p2*y + fn3(g*x)))
  x = x1, y = y1
  z = x + flip(y)
  |z| <= f
}

Gallet-5-09 {; Sylvie Gallet [101324,3444], 1996
             ; PHC formula
  z = pixel * (whitesq - 0.5*(whitesq == 0 )) :
   x = real(z) , y = imag(z)
   x1 = x - p1 * fn1(y + p2*fn2(y))
   y1 = y - p1 * fn1(x + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 64
}

Gallet-5-11 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = z*(0.5) , y = -z :
   hx = p1*fn1(x) , hy = p1*fn2(y)
   x = x + hy , y = y + hx
   z = x + flip(y)
    (|hx|+|hy|) <= p2
}

Gallet-6-01 { ; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z) , y = imag(z) :
   x1 = x - p1*fn1(y + p2*fn2(x - p3*fn3(y)))
   y1 = y - p1*fn1(x + p2*fn2(y - p3*fn3(x)))
   x = x1 , y = y1
   z = x + flip(y)
    |z| <= 32
  }

Gallet-6-02 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z) , y = imag(z) :
   hx = p1*fn1(x + p2*fn2(y)) , hy = p1*fn1(y + p2*fn2(x))
   x = x + hy , y = y + hx
   z = x + flip(y) , mhx = |hx| , mhy = |hy|
    (mhx+mhy) >= p3 && mhx <= 1e35 && mhy <= 1e35
}

Gallet-6-03 { ; Sylvie Gallet, 1996
  z = pixel , x = real(z) , y = imag(z) :
  x2 = x*x , y2 = y*y
   x1 = x2 - p1*fn1(y2 + fn2(p2*x) + fn3(p3*y))
   y1 = y2 - p1*fn1(x2 + fn2(p2*y) + fn3(p3*x))
   x = x1 , y = y1
   z = x + flip(y)
    |z| <= 32
  }

Gallet-6-04 { ; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z) , y = imag(z) :
   x1 = x - p1*fn1(y + fn2(p2*x) * fn3(p3*y))
   y1 = y - p1*fn1(x + fn2(p2*y) * fn3(p3*x))
   x = x1 , y = y1
   z = x + flip(y)
    |z| <= 32
  }

Gallet-6-05 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z) , y = imag(z) :
   x1 = x - p1*fn1(y * fn2(p2*x) + fn3(p3*y))
   y1 = y - p1*fn1(x * fn2(p2*y) + fn3(p3*x))
   x = x1 , y = y1
   z = x + flip(y)
    |z| <= 32
}

Gallet-6-06 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z) , y = imag(z) :
   hx = p1*fn1(x + p2*fn2(x)) , hy = p1*fn1(y + p2*fn2(y))
   x = x + hy , y = y + hx
   z = x + flip(y), m = (|hx|+|hy|)
    m >= p3 && m <= 1e30
}

Gallet-6-07 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , h = p3 , h2 = h + h
  n0 = - p1*fn1(p2*fn2(0)) :
   n = z - p1*fn1(z + p2*fn2(z)) - n0
   d = (h2 - p1*(fn1(z+h + p2*fn2(z+h)) - fn1(z-h + p2*fn2(z-h))))/h2
   z = z - n/d , m = |n|
    m > 0.000001 && m <= 1e40
}

Gallet-6-08 { ; Sylvie Gallet, 1996
z = pixel , x = real(z) , y = imag(z) :
x1 = x - p1*fn1(y + fn2(p2*x) / fn3(p3*y))
y1 = y - p1*fn1(x + fn2(p2*y) / fn3(p3*x))
x = x1 , y = y1
z = x + flip(y)
|z| <= 1024
}

Gallet-6-09 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z) , y = imag(z) :
   x1 = x ^ (p1 + y^(p2 + (x - p3*y)))
   y1 = y ^ (p1 + x^(p2 + (y - p3*x)))
   x = x1 , y = y1
   z = x + flip(y)
    |z| <= 32
}

Gallet-7-03 {; Sylvie Gallet [101324,3444], 1997
  j = -0.5 + flip(0.5*sqrt(3)) , j2 = j*j
  z = pixel:
   x = z*j , y = z*j2
   x1 = x - p1*fn1(x + p1*fn1(y + p2*fn2(z)))
   y1 = y - p1*fn1(y + p1*fn1(z + p2*fn2(x)))
   z1 = z - p1*fn1(z + p1*fn1(x + p2*fn2(y)))
   z = z1 + x1*j + y1*j2
    |z| <= 32
}

Gallet-7-04 { ; Sylvie Gallet [101324,3444], 1997
  j = -0.5 + flip(0.5*sqrt(3)) , j2 = j*j
  z = pixel :
   x = z*j , y = z*j2
   x1 = x - p1*fn1(x + fn2(p2*y) + fn3(p3*z))
   y1 = y - p1*fn1(y + fn2(p2*z) + fn3(p3*x))
   z1 = z - p1*fn1(z + fn2(p2*x) + fn3(p3*y))
   z = z1 + x1*j + y1*j2
    |z| <= 32
  }

Gallet-7-07 {; Sylvie Gallet [101324,3444], 1997
  x = real(pixel), y = imag(pixel), z = pixel:
   dx = p1 * fn1(y*z), dy = p1 * fn2(x*z)
   x = x + dx , y = y + dy
   z = x + flip(y)
    (|dx| + |dy|) >= p2
}

Gallet-8-04 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
              ; Requires periodicity = 0
              ; p1 = exponent
              ; p2 > 1
   z = zn = pixel , ex = p1 - 1
   IF (p2 || imag(p2))
      k = p2
   ELSE
      k = 1
   ENDIF
   :
   znex = zn^ex , num = znex*zn - 1 , mnum = |num|
   den = p1*znex , zn = zn - num/den
   IF ( mnum > |z^p1-1|)
      z = zn * k
   ENDIF
   mnum >= 0.001
}

Gallet-8-05 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; Requires periodicity = 0
             ; 0 < p1 <= 1 (default = 1)
   z = c = zn = pixel
   IF (p1 || imag(p1))
      k = p1
   ELSE
      k = 1
   ENDIF
   :
   zn = zn*zn + c
   IF (abs(zn) < abs(z) || flip(abs(zn)) < flip(abs(z)))
      z = k*zn
   ENDIF
   |zn| <= 4
}

Gallet-8-08 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
              ; Requires periodicity = 0
              ; 0 < p2 <= 1 (default = 1)
   z = zn = pixel
   IF (p2 || imag(p2))
      k = p2
   ELSE
      k = 1
   ENDIF
   :
   zn = zn*zn + p1
   IF (abs(zn) < abs(z) && flip(abs(zn)) < flip(abs(z)))
      z = k*zn
   ENDIF
   |zn| <= 4
   }

Gallet-8-12 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
              ; Requires periodicity = 0
              ; p2: real part = radius
              ;     imag part = refraction index
   h = cabs(pixel) , pinv = 1/p1
   bailout = 2*p1 , r = real(p2) , ir = imag(p2)
   IF (h >= r)
      z = pixel
   ELSE
      beta = asin(h/r) , alpha = asin(h/(r*ir))
      z = (h - sqrt(r*r - h*h) * tan(beta - alpha)) * pixel / h
   ENDIF
   center = round(p1*z) * pinv
   IF (cabs(z-center) < 0.45*pinv)
      z = cabs(center)
   ELSE
      z = cabs(center) + p1
   ENDIF
   :
   z = z + pinv
   z <= bailout
}

Gallet-8-21 {; Sylvie Gallet [101324,3444], Apr 1997
             ; Requires periodicity = 0 and decomp = 256
             ; p1 = parameter for a Julia set (0 for the Mandelbrot set)
             ; 0 < real(p2) , 0 < imag(p2)
   im2 = imag(p2)
   IF (p1 || imag(p1))
      c = p1
   ELSE
      c = pixel
   ENDIF
   z = -1, zn = pixel, zmin = zmin0 = abs(real(p2))
   cmax = trunc(abs(real(p3)))
   IF (cmax < 2)
      cmax = 2
   ENDIF
   k = flip(6.28318530718/(zmin*real(cmax))), cnt = -1
   :
   cnt = cnt + 1
   IF (cnt == cmax)
      cnt = 0
   ENDIF
   zn = zn*zn + c, znc = cabs(im2*real(zn) + flip(imag(zn)))
   IF (znc < zmin)
      zmin = znc, z = exp((cnt*zmin0 + zmin)*k)
   ENDIF
   znc <= 4
}

Gallet-9-02 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Aug 1997
              ; Bailout: real part of p2 (must be > 0)
              ; Real and Imag parts of p1 must be > 0
              ; Imag part of p2 must be non-zero
              ; Use periodicity=0
   z1 = c = pixel , mz1 = cabs(fn2(z1)) , k = real(p1)*mz1
   bailout = real(p2) , z = imag(p1) :
   z1 = z1*z1 + c
   z1 = fn1(real(z1)) + flip(imag(z1)) , mz1 = cabs(z1)
   if (mz1 <= k)
      z1 = (z1 + 1) * p3 , mz1 = cabs(z1)
   endif
   if (mz1 < imag(p1))
      z = z1^imag(p2)
   endif
   mz1 <= bailout
   }

Gallet-9-03 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Aug 1997
             ; Bailout: real part of p2 (must be > 0)
             ; Real and Imag parts of p1 must be > 0
             ; Imag part of p2 must be non-zero
             ; Use periodicity=0
  z1 = c = pixel, mz1 = cabs(z1*z1+z1), k = real(p1)*mz1
  bailout = real(p2), z = imag(p1) :
  z1 = z1*z1 + c
  z1 = fn1(real(z1)) + flip(imag(z1)), mz1 = cabs(z1)
  IF (mz1 <= k)
    z1 = z1 + p3, mz1 = cabs(z1)
  ENDIF
  IF (mz1 < imag(p1))
    z = z1^imag(p2)
  ENDIF
  mz1 <= bailout
}

Gallet-9-04 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Aug 1997
             ; Bailout: real part of p2 (must be > 0)
             ; Real and Imag parts of p1 must be > 0
             ; Imag part of p2 must be non-zero
             ; Use periodicity=0
  z1 = c = pixel, mz1 = cabs(fn2(z1)), k = real(p1)*mz1
  bailout = real(p2), z = imag(p1) :
  z1 = z1*z1 + c
  z1 = fn1(real(z1)) + flip(imag(z1)), mz1 = cabs(z1)
  IF (mz1 <= k)
    z1 = z1 + p3, mz1 = cabs(z1)
  ENDIF
  IF (mz1 < imag(p1))
    z = z1^imag(p2)
  ENDIF
  mz1 <= bailout
}

Gallet-10-02 { ; Modified Paul W. Carlson formula ( Petals_Mset)
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = radius of the circles
    ;   p2       = circle offset factor
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    w = 0
    c = pixel
    r = real(p1) , bailout = imag(p1)
    r2 = r * r
    ro = r + r * p2
    f = 1 - (2 + p2) * p2
    k = r * (p2 + sqrt(f))  ;abs val of petal center (k,k)
    k1 = k*(1,1) , k2 = conj(k1)
    plsqd = 2 * r2 * f        ;petal length squared
    z = 0
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    range_num = 0
    iter = 0:
    ;
    w = 1 / (w*w + c)
    ;****************************************************
    ; Determine which pair of overlapping circles the
    ; orbit point falls in, if any.
    ;****************************************************
    c1 = (|w - ro| < r2)
    c2 = (|w + flip(ro)| < r2)
    c3 = (|w + ro| < r2)
    c4 = (|w - flip(ro)| < r2)
    IF (c1 && c4)
      d = |w-k1|
    ELSEIF (c1 && c2)
      d = |w-k2|
    ELSEIF (c2 && c3)
      d = |w+k1|
    ELSEIF (c3 && c4)
      d = |w+k2|
    ELSE
      d = 0
    ENDIF
    ;
    IF (d > 0)
    ;************************************************
    ; Set z equal to the index into the colormap.
    ;************************************************
    index = colors_in_range * d / plsqd
    z = index + range_num * colors_in_range + 1
    ENDIF
    ;
    range_num = range_num + 1
    IF (range_num == num_ranges)
      range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    d == 0 && |w| < bailout
    }

gap_jul { ; Kerry MItchell 07sep98
        ;
        ; bails out when orbit falls in the gap between
        ; 2 lines.  lines specified as a*x + b*y = c1 (or c2)
        ; p1 = c = Julia parameter
        ; real(p2) = a
        ; imag(p2) = b
        ; real(p3) = c1
        ; imag(p3) = c2
        ; bailout = 1000, use decomp=256
        ;
        c=p1, zc=pixel, bailout=1e3, iter=1, done=0
        a=real(p2), b=imag(p2), c1=real(p3), c2=imag(p3)
        fac=pi*2/(c2-c1):
        iter=iter+1, zc=sqr(zc)+c
        q=a*real(zc)+b*imag(zc)
        if((q>=c1)&&(q<=c2))
          done=1
          t=(q-c1)*fac
          z=cos(t)+flip(sin(t))
          endif
        if((|zc|>bailout)||(iter==maxit))
          done=1
          z=1
          endif
        done==0
        }

gap_man { ; Kerry MItchell 07sep98
        ;
        ; bails out when orbit falls in the gap between
        ; 2 lines.  lines specified as a*x + b*y = c1 (or c2)
        ; real(p1) = a
        ; imag(p1) = b
        ; real(p2) = c1
        ; imag(p2) = c2
        ; bailout = 1000, use decomp=256
        ;
        zc=0, c=pixel, bailout=1e3, iter=1, done=0
        a=real(p1), b=imag(p1), c1=real(p2), c2=imag(p2)
        fac=pi*2/(c2-c1):
        iter=iter+1, zc=sqr(zc)+c
        q=a*real(zc)+b*imag(zc)
        if((q>=c1)&&(q<=c2))
          done=1
          t=(q-c1)*fac
          z=cos(t)+flip(sin(t))
          endif
        if((|zc|>bailout)||(iter==maxit))
          done=1
          z=1
          endif
        done==0
        }

gapc_jul { ; Kerry MItchell 07sep98
        ;
        ; bails out when orbit falls in the gap between
        ; 2 lines.  lines based on c.
        ; p1 = c = Julia parameter
        ; real(p2) determines y-intercept of 1st line
        ; imag(p2) determines y-intercept of 2nd line
        ; bailout = 1000, use decomp=256
        ;
        c=p1, zc=pixel, bailout=1e3, iter=1, done=0
        a=imag(c), b=-real(c), c1=real(p2), c2=imag(p2)
        fac=pi*2/(c2-c1):
        iter=iter+1, zc=sqr(zc)+c
        q=a*real(zc)+b*imag(zc)
        if((q>=c1)&&(q<=c2))
          done=1
          t=(q-c1)*fac
          z=cos(t)+flip(sin(t))
          endif
        if((|zc|>bailout)||(iter==maxit))
          done=1
          z=1
          endif
        done==0
        }

gapc_man { ; Kerry MItchell 07sep98
        ;
        ; bails out when orbit falls in the gap between
        ; 2 lines.  lines based on c.
        ; real(p1) determines y-intercept of 1st line
        ; imag(p1) determines y-intercept of 2nd line
        ; bailout = 1000, use decomp=256
        ;
        zc=pixel, c=pixel, bailout=1e3, iter=1, done=0
        a=imag(c), b=-real(c), c1=real(p1), c2=imag(p1)
        fac=pi*2/(c2-c1):
        iter=iter+1, zc=sqr(zc)+c
        q=a*real(zc)+b*imag(zc)
        if((q>=c1)&&(q<=c2))
          done=1
          t=(q-c1)*fac
          z=cos(t)+flip(sin(t))
          endif
        if((|zc|>bailout)||(iter==maxit))
          done=1
          z=1
          endif
        done==0
        }

gaussint2_jul {
        ; colors Julia sets by angle of Gaussian integer that iteration
        ; comes closest to
        ; c=p1, bailout=real(p2), try 1e12
        ; use "decomp=256" coloring
        zc=pixel, c=p1, rmax=real(p2), rmin=1, z=zc:
        zc=sqr(zc)+c, zr=round(zc), q=|zc-zr|,
        if (q<rmin)
          rmin=q, z=zr
          endif
        |zc| < rmax
        }

gaussintr_jul { ; Kerry Mitchell
        ;
        ; Gaussian integer coloring of Julia sets
        ;   color by magnitude of nearest gaussian integer
        ;   inside and outside handled the same way
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; variable zc used for calculation; coloring done with z
        ;
        zc=pixel, c=p1, iter=1, rmax=real(p2), rmin=1:
        ;
        ; iteration
        ;   zr = gaussian integer
        ;   r = distance to zr
        ;   zmin = integer with minimum distance
        ;
        iter=iter+1, zc=sqr(zc)+c, zr=round(zc), r=|zc-zr|,
        if (r<rmin)
          rmin=r, zmin=zr
          endif
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of magnitude of nearest gaussian integer as
        ;     decomposition angle
        ;
        if ((|zc|>rmax)||(iter==maxit))
          iter=-1
          angle=log(cabs(zmin)+1)
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }

gaussintt_jul { ; Kerry Mitchell
        ;
        ; Gaussian integer coloring of Mandelbrot set
        ;   color by polar angle of nearest gaussian integer
        ;   inside and outside handled the same way
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; variable zc used for calculation; coloring done with z
        ;
        zc=pixel, c=p1, rmax=real(p2), rmin=1, iter=1:
        ;
        ; iteration
        ;   zr = gaussian integer
        ;   r = distance to zr
        ;   zmin = integer with minimum distance
        ;
        iter=iter+1, zc=sqr(zc)+c, zr=round(zc), q=|zc-zr|,
        if (q<rmin)
          rmin=q, zmin=zr
          endif
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   set z = nearest gaussian integer
        ;
        if ((|zc|>rmax)||(iter==maxit))
          iter=-1
          z=zmin
          endif
        iter>0
        }

gaussinttot_jul { ; Kerry Mitchell
        ;
        ; Gaussian integer coloring of Julia sets
        ;   color by average distance to nearest integer
        ;   inside and outside handled the same way
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; imag(p2) = scaling factor (try 30)
        ; variable zc used for calculation; coloring done with z
        ;
        zc=pixel, c=p1, rmax=real(p2), scale=imag(p2)
        iter=1, rmin=1, z=zc, tot=0:
        ;
        ; iteration
        ;   zr = gaussian integer
        ;   r = distance to zr
        ;   zmin = integer with minimum distance
        ;   tot = running sum of r's
        ;
        iter=iter+1, zc=sqr(zc)+c, rzc=|zc|
        zr=round(zc), r=|zc-zr|, tot=tot+r
        ;
        ; bailout
        ;   scale average distance to decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
        if ((rzc>rmax)||(iter==maxit))
          angle=scale*tot/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        iter>0
        }

gaussintr_man { ; Kerry Mitchell
        ;
        ; Gaussian integer coloring of Mandelbrot set
        ;   color by magnitude of nearest gaussian integer
        ;   inside and outside handled the same way
        ;
        ; use decomp=256
        ; real(p1) = bailout (try 1e12)
        ; variable zc used for calculation; coloring done with z
        ;
        zc=0, c=pixel, iter=1, rmax=real(p1), rmin=1:
        ;
        ; iteration
        ;   zr = gaussian integer
        ;   r = distance to zr
        ;   zmin = integer with minimum distance
        ;
        iter=iter+1, zc=sqr(zc)+c, zr=round(zc), r=|zc-zr|,
        if (r<rmin)
          rmin=r, zmin=zr
          endif
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of magnitude of nearest gaussian integer as
        ;     decomposition angle
        ;
        if ((|zc|>rmax)||(iter==maxit))
          iter=-1
          angle=log(cabs(zmin)+1)
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }

gaussintt_man { ; Kerry Mitchell
        ;
        ; Gaussian integer coloring of Mandelbrot set
        ;   color by polar angle of nearest gaussian integer
        ;   inside and outside handled the same way
        ;
        ; use decomp=256
        ; real(p1) = bailout (try 1e12)
        ; variable zc used for calculation; coloring done with z
        ;
        zc=0, c=pixel, rmax=real(p1), rmin=1, iter=1:
        ;
        ; iteration
        ;   zr = gaussian integer
        ;   r = distance to zr
        ;   zmin = integer with minimum distance
        ;
        iter=iter+1, zc=sqr(zc)+c, zr=round(zc), q=|zc-zr|,
        if (q<rmin)
          rmin=q, zmin=zr
          endif
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   set z = nearest gaussian integer
        ;
        if ((|zc|>rmax)||(iter==maxit))
          iter=-1
          z=zmin
          endif
        iter>0
        }

gaussinttot_man { ; Kerry Mitchell
        ;
        ; Gaussian integer coloring of Mandelbrot set
        ;   color by average distance to nearest integer
        ;   inside and outside handled the same way
        ;
        ; use decomp=256
        ; real(p1) = bailout (try 1e12)
        ; imag(p1) = scaling factor (try 30)
        ; variable zc used for calculation; coloring done with z
        ;
        zc=0, c=pixel, rmax=real(p1), scale=imag(p1)
        iter=1, rmin=1, z=zc, tot=0:
        ;
        ; iteration
        ;   zr = gaussian integer
        ;   r = distance to zr
        ;   zmin = integer with minimum distance
        ;   tot = running sum of r's
        ;
        iter=iter+1, zc=sqr(zc)+c, rzc=|zc|
        zr=round(zc), r=|zc-zr|, tot=tot+r
        ;
        ; bailout
        ;   scale average distance to decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
        if ((rzc>rmax)||(iter==maxit))
          angle=scale*tot/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        iter>0
        }

general_jul-2circ { ; Kerry Mitchell 26aug98
	;
	; "2 general circles" coloring method for Julia sets
	; c = Julia parameter, hardcoded
        ; p1 = x-circle center
        ; p2 = y-circle center
        ; real(p3) = x-circle radius
        ; imag(p3) = y-circle radius
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        zc=pixel, c=(0.39,0.44), bailout=1e12, iter=1, rmin=1e12
        cenx=p1, radx=real(p3), rad2x=radx*radx
        ceny=p2, rady=imag(p3), rad2y=rady*rady:
        iter=iter+1, zc=sqr(zc)+c
        tempx=|zc-cenx|-rad2x
        tempy=|zc-ceny|-rad2y
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

general_jul-2lines {
	;
        ; "2 general lines" coloring method for Julia sets
        ; c = Julia parameter, hardcoded
        ; real(p1) = x-line a
        ; imag(p1) = x-line b
        ; real(p2) = x-line c
        ; imag(p2) = y-line a
        ; real(p3) = y-line b
        ; imag(p3) = y-line c
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        zc=pixel, c=(.26,.0014), bailout=1e12, iter=1, rmin=1e12
        ax=real(p1), bx=imag(p1), cx=real(p2)
        ay=imag(p2), by=real(p3), cy=imag(p3):
        iter=iter+1, zc=sqr(zc)+c
        x=real(zc), y=imag(zc)
        tempx=ax*x+bx*y+cx
        tempy=ay*x+by*y+cy
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

general_jul-c&l {
	;
        ; "general circle & line" coloring method for Julia sets
        ; c = Julia parameter, hardcoded
        ; p1 = x-circle center
        ; real(p2) = x-circle radius
        ; imag(p2) = y-line a
        ; real(p3) = y-line b
        ; imag(p3) = y-line c
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        zc=pixel, c=(0,1), bailout=1e12, iter=1, rmin=1e12
        cenx=p1, radx=real(p2), rad2x=radx*radx
        ay=imag(p2), by=real(p3), cy=imag(p3):
        iter=iter+1, zc=sqr(zc)+c
        tempx=|zc-cenx|-rad2x
        tempy=ay*real(zc)+by*imag(zc)+cy
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

general_man-2circ { ; Kerry Mitchell 26aug98 
	;
	; "2 general circles" coloring method for Mandelbrot
	; c = pixel = Mandelbrot parameter
        ; p1 = x-circle center
        ; p2 = y-circle center
        ; real(p3) = x-circle radius
        ; imag(p3) = y-circle radius
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        c=pixel, zc=0, bailout=1e12, iter=1, rmin=1e12
        cenx=p1, radx=real(p3), rad2x=radx*radx
        ceny=p2, rady=imag(p3), rad2y=rady*rady:
        iter=iter+1, zc=sqr(zc)+c
        tempx=|zc-cenx|-rad2x
        tempy=|zc-ceny|-rad2y
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

general_man-2lines {
	;
        ; "2 general lines" coloring method for Mandelbrot
	; c = pixel = Mandelbrot parameter
        ; real(p1) = x-line a
        ; imag(p1) = x-line b
        ; real(p2) = x-line c
        ; imag(p2) = y-line a
        ; real(p3) = y-line b
        ; imag(p3) = y-line c
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        c=pixel, zc=0, bailout=1e12, iter=1, rmin=1e12
        ax=real(p1), bx=imag(p1), cx=real(p2)
        ay=imag(p2), by=real(p3), cy=imag(p3):
        iter=iter+1, zc=sqr(zc)+c
        x=real(zc), y=imag(zc)
        tempx=ax*x+bx*y+cx
        tempy=ay*x+by*y+cy
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

general_man-c&l {
	;
        ; "general circle & line" coloring method for Mandelbrot
	; c = pixel = Mandelbrot parameter
        ; p1 = x-circle center
        ; real(p2) = x-circle radius
        ; imag(p2) = y-line a
        ; real(p3) = y-line b
        ; imag(p3) = y-line c
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        c=pixel, zc=0, bailout=1e12, iter=1, rmin=1e12
        cenx=p1, radx=real(p2), rad2x=radx*radx
        ay=imag(p2), by=real(p3), cy=imag(p3):
        iter=iter+1, zc=sqr(zc)+c
        tempx=|zc-cenx|-rad2x
        tempy=ay*real(zc)+by*imag(zc)+cy
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

GenInvJmN-M    { ; Jm Collard-Richard
                 ; voir Rem de GenMand_N et InvJmN-M
c=z=1/(pixel^p2):
z=fn1(fn2(z^p2))+fn3(fn4(c)),
|z|<=4         }

GenInvMand1_N { ; Jm Collard-Richard
  c=z=1/pixel:
   z=fn1(z)*fn2(z)+fn3(fn4(c))
    |z|<=4
  }

gfpcyc01 {;Gedeon Peteri
   z=fn1(pixel):
   c=asin(imag(z)/cabs(z))
   x=z*(c-sin(c)), y=z*(1-cos(c))
   z=fn2(z^p1) + p2*fn3(x+y)
   |z|<=p3
   }

gfpdvc01 {;Inspired by equation of a damped vibration curve
   z=fn1(1/pixel):
   y=p1*exp(p2*z)*fn2(p3*z)
   z=fn3(z*z) - y
   |z|<=16
   }

ghost-horiz_jul { ; Kerry Mitchell
        ;
        ; colors Julia sets by combining the smoothed iteration
        ; with a background of horizontal lines
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout
        ; imag(p2) = "ghost" adjustment: set to 0 for only
        ;   background rays, try 2
        ; calculation performed on variable zc, z used for coloring
        ;
        maxr=real(p2), scale=imag(p2)*pi/128
        ol2=1/log(2), fac=log(0.5*log(maxr))
        iter=1, zc=pixel, c=p1
        ;
        ; generate horizontal lines
        ;
        yc=(imag(scrnmax)-1)/2, y=imag(scrnpix)
        t=y/yc*pi, background=cos(t)+flip(sin(t))
        :
        iter=iter+1, zc=sqr(zc)+c
        ;
        ; bailout
        ;   compute smoothed iteration as "angle"
        ;   multiply angle by background to get final z
        ;   set z to background for interior points
        ;   set "iteration done" flag (iter=-1)
        ;
        if ((|zc|>maxr)||(iter==maxit))
          smooth=(iter+ol2*(fac-log(log(cabs(zc)))))*scale
          angle=cos(smooth)+flip(sin(smooth))
          z=background*angle
          if (iter==maxit)
            z=background
            endif
          iter=-1
          endif
        iter>0
        }

ghost-horiz_man { ; Kerry Mitchell
        ;
        ; colors Mandelbrot set by combining the smoothed iteration
        ; with a background of horizontal lines
        ;
        ; use decomp=256
        ; real(p1) = bailout
        ; imag(p1) = "ghost" adjustment: set to 0 for only
        ;   background rays, try 2
        ; calculation performed on variable zc, z used for coloring
        ;
        maxr=real(p1), scale=imag(p1)*pi/128
        ol2=1/log(2), fac=log(0.5*log(maxr))
        iter=1, zc=0, c=pixel
        ;
        ; generate horizontal lines
        ;
        yc=(imag(scrnmax)-1)/2, y=imag(scrnpix)
        t=y/yc*pi, background=cos(t)+flip(sin(t))
        :
        iter=iter+1, zc=sqr(zc)+c
        ;
        ; bailout
        ;   compute smoothed iteration as "angle"
        ;   multiply angle by background to get final z
        ;   set z to background for interior points
        ;   set "iteration done" flag (iter=-1)
        ;
        if ((|zc|>maxr)||(iter==maxit))
          smooth=(iter+ol2*(fac-log(log(cabs(zc)))))*scale
          angle=cos(smooth)+flip(sin(smooth))
          z=background*angle
          if (iter==maxit)
            z=background
            endif
          iter=-1
          endif
        iter>0
        }

ghost_jul { ; Kerry Mitchell
        ;
        ; colors Julia sets by combining the smoothed iteration
        ; with a background of rays from the center
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout
        ; imag(p2) = "ghost" adjustment: set to 0 for only
        ;   background rays, try 2
        ; calculation performed on variable zc, z used for coloring
        ;
        maxr=real(p2), scale=imag(p2)*pi/128
        ol2=1/log(2), fac=log(0.5*log(maxr))
        iter=1, zc=pixel, c=p1, background=pixel
        :
        iter=iter+1, zc=sqr(zc)+c
        ;
        ; bailout
        ;   compute smoothed iteration as "angle"
        ;   multiply angle by background to get final z
        ;   set z to background for interior points
        ;   set "iteration done" flag (iter=-1)
        ;
        if ((|zc|>maxr)||(iter==maxit))
          smooth=(iter+ol2*(fac-log(log(cabs(zc)))))*scale
          angle=cos(smooth)+flip(sin(smooth))
          z=background*angle
          if (iter==maxit)
            z=background
            endif
          iter=-1
          endif
        iter>0
        }
 
ghost_man { ; Kerry Mitchell
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
        maxr=real(p1), scale=imag(p1)*pi/128
        ol2=1/log(2), fac=log(0.5*log(maxr))
        iter=1, zc=0, c=pixel, background=pixel
        :
        iter=iter+1, zc=sqr(zc)+c
        ;
        ; bailout
        ;   compute smoothed iteration as "angle"
        ;   multiply angle by background to get final z
        ;   set z to background for interior points
        ;   set "iteration done" flag (iter=-1)
        ;
        if ((|zc|>maxr)||(iter==maxit))
          smooth=(iter+ol2*(fac-log(log(cabs(zc)))))*scale
          angle=cos(smooth)+flip(sin(smooth))
          z=background*angle
          if (iter==maxit)
            z=background
            endif
          iter=-1
          endif
        iter>0
        }

ghost-vert_jul { ; Kerry Mitchell
        ;
        ; colors Julia sets by combining the smoothed iteration
        ; with a background of vertical lines
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout
        ; imag(p2) = "ghost" adjustment: set to 0 for only
        ;   background rays, try 2
        ; calculation performed on variable zc, z used for coloring
        ;
        maxr=real(p2), scale=imag(p2)*pi/128
        ol2=1/log(2), fac=log(0.5*log(maxr))
        iter=1, zc=pixel, c=p1
        ;
        ; generate vertical lines
        ;
        xc=(real(scrnmax)-1)/2, x=real(scrnpix)
        t=x/xc*pi, background=cos(t)+flip(sin(t))
        :
        iter=iter+1, zc=sqr(zc)+c
        ;
        ; bailout
        ;   compute smoothed iteration as "angle"
        ;   multiply angle by background to get final z
        ;   set z to background for interior points
        ;   set "iteration done" flag (iter=-1)
        ;
        if ((|zc|>maxr)||(iter==maxit))
          smooth=(iter+ol2*(fac-log(log(cabs(zc)))))*scale
          angle=cos(smooth)+flip(sin(smooth))
          z=background*angle
          if (iter==maxit)
            z=background
            endif
          iter=-1
          endif
        iter>0
        }

ghost-vert_man { ; Kerry Mitchell
        ;
        ; colors Mandelbrot set by combining the smoothed iteration
        ; with a background of vertical lines
        ;
        ; use decomp=256
        ; real(p1) = bailout
        ; imag(p1) = "ghost" adjustment: set to 0 for only
        ;   background rays, try 2
        ; calculation performed on variable zc, z used for coloring
        ;
        maxr=real(p1), scale=imag(p1)*pi/128
        ol2=1/log(2), fac=log(0.5*log(maxr))
        iter=1, zc=0, c=pixel
        ;
        ; generate vertical lines
        ;
        xc=(real(scrnmax)-1)/2, x=real(scrnpix)
        t=x/xc*pi, background=cos(t)+flip(sin(t))
        :
        iter=iter+1, zc=sqr(zc)+c
        ;
        ; bailout
        ;   compute smoothed iteration as "angle"
        ;   multiply angle by background to get final z
        ;   set z to background for interior points
        ;   set "iteration done" flag (iter=-1)
        ;
        if ((|zc|>maxr)||(iter==maxit))
          smooth=(iter+ol2*(fac-log(log(cabs(zc)))))*scale
          angle=cos(smooth)+flip(sin(smooth))
          z=background*angle
          if (iter==maxit)
            z=background
            endif
          iter=-1
          endif
        iter>0
        }

grav-lla     { ; Linda Allison's variation of
               ; Mark "Bud" Christenson's gravijul frm
               ; defaults: p1 = (1,0) p2 = (4,0)
   z = c = pixel:
   w = fn1(z)*fn1(z)
   z = fn3(p1/fn2(w*w)) + c
    |z| < p2
  }

gravlla2 { ; Linda Allison's 3-4-98 variation of the
               ; 1/25/98 generalized r^(-2) formula by Mark "Bud"
               ; Christenson
   z = c = pixel:
   w = fn1(z)^p1
   z = fn3(p2/fn2(w*w)) + c
    |z| < p3
  }

gravellipse { ;5-1-98 kathy roth
              ;variation of gravijul by Mark Christenson
   z = pixel, a=real(p3), b=imag(p3):
   w = fn1(z)
   z = fn3(p1/fn2(w*w)) + p2
   real(z) * real(z)/ a + imag(z) * imag(z)/b < 1
   }

gravellipse_2u {;bailout variation by kathy roth
; Phil DiGiorgi's variation of Mark Christenson's gravijul
  j = imag(p3), k = real(p3)
  z = abs(pixel):
  x = real(z), y = imag(z)
  w = fn1(x) + k*y, v = fn1(y) + k*x
  u = fn2(w + flip(v))
  z = fn4(p1/fn3(u*u)) + p2
 x * x/j + y * y/ k<1
}

gravibrot{ ; generalized r^(-2) by Mark "Bud" Christenson 3/13/98
; derived from gravijul
; defaults: p1 = (1,0) p2 = (0,0) p3 = (4,0)
   z = p2
   c = pixel:
 
   w = fn1(z)
   z = fn3(p1/fn2(w*w)) + c
    |z| < p3
  }

gravijul { ; r^(-2) Mark Christenson 1/25/98
; defaults: p1 = (1,0) p2 = (0,0) p3 = (4,0)
   z = pixel:
 
   w = fn1(z)
   z = fn3(p1/fn2(w*w)) + p2
    |z| < p3
  }

gravijul_2u { ; Variation of gravijul formula - PD 3/98
     ; Original formula by Mark Christenson
  bailout = imag(p3), k = real(p3)
  z = abs(pixel):
  x = real(z), y = imag(z)
  w = fn1(x) + k*y, v = fn1(y) + k*x
  u = fn2(w + flip(v))
  z = fn4(p1/fn3(u*u)) + p2
  |z| < bailout
}

gravijul-a' { ; generalized r^(-2) by Mark "Bud" Christenson 3/6/98
              ; defaults: p1 = (1,0) p2 = (0,0) p3 = (0,4)
  q4 = real(p2)
  q2 = p1
  q1 = imag(p2) ; new knob 1
  q3 = real(p3) ; new knob 2
  q5 = imag(p3) ; bailout
   z = pixel:
 
   v = fn1(z)
   w = q1*(v*v)
   z = q3*fn3(q2/fn2(w)) + q4
    |z| < q5
  }

gravijul-a1 { ; generalized r^(-2) by Mark "Bud" Christenson 3/6/98
              ; defaults: p1 = (1,0) p2 = (0,0) p3 = (0,4)
  q4 = real(p2)
  q2 = p1
  q1 = imag(p2) ; new knob 1
  q3 = real(p3) ; new knob 2
  q5 = imag(p3) ; bailout
   z = pixel:
   v = fn1(z)
   w = q1*(v*v)
   z = q3*fn3(q2/fn2(w)) + q4
    |z| < q5
  }
 
gravijul-a2 { ; generalized r^(-2) by Mark "Bud" Christenson 3/6/98
              ; favors p2
              ; defaults: p1 = (1,0) p2 = (0,0) p3 = (0,4)
  q4 = p2
  q2 =real(p1)
  q1 = imag(p1) ; new knob 1
  q3 = real(p3) ; new knob 2
  q5 = imag(p3) ; bailout
   z = pixel:
   v = fn1(z)
   w = q1*(v*v)
   z = q3*fn3(q2/fn2(w)) + q4
    |z| < q5
  }

gravijul-v1 { ; Variation on Mark Christenson's gravijul 
              ; by Sylvie Gallet
   z = pixel^imag(p3) :
   w = fn1(z)
   z = fn3(p1/fn2(w*w)) + p2
    |z| < p3
  }

gravijul-v2 { ; Variation on Mark Christenson's gravijul by Sylvie Gallet
   z = pixel :
   w = fn1(real(z)) , x = fn3(p1/fn2(w*w))
   w = fn1(imag(z)) , y = fn3(p1/fn2(w*w))
   z = x + flip(y) + p2
    |z| < p3
  }

gravijul-v3 {; Variation on Mark Christenson's gravijul by Sylvie Gallet
  z = pixel:
  w = fn1(z)
  z = fn3(fn2(w*w)^p1) + p2
  |z| < p3
}

gravijul4 { ;variation of a Mark Christenson frm
  bailout = imag(p3), k = real(p3)
  z = abs(pixel):
  v = fn1(z)*k
  w = fn2(v*v)
  z = fn4(p1/fn3(w*w)) + p2
  |z| < bailout
}

graviPok {;adapted from Paul W. Carlson
           ;original formula copyright Paul W. Carlson 1998
           ; Gravijul by Mark Christenson
      ; real(p1) = selects equation to iterate
    ;            1 = Mset of w = w * w + c (default)
    ;            2 = Julia set of w = w * w + c
    ;            3 = Julia set of w = 1 / (w * w + c)
    ; imag(p1) = a factor controlling the size of the elements
    ; p2       = Julia set coordinates
    ; real(p3) = selects color scheme
    ;            1 = 2 ranges, 125 colors per range (default)
    ;            2 = 8 ranges, 30  colors per range
    ; imag(p3) = number of iterations to skip
    ;
    z = bailout = range_num = iter = 0
    IF (real(p1) == 2 || real(p1) == 3) ; select Mset or Julia set
 w = pixel  ; Julia set
 c = p2
    ELSE
 w = 0      ; Mset
 c = pixel
    ENDIF
    k = (0.5,0.5)
    size = imag(p1)
    IF (real(p3) == 2) ; select coloring scheme
 num_ranges = 8
 colors_in_range = 30
    ELSE
 num_ranges = 2
 colors_in_range = 125
    ENDIF
    skip = imag(p3)
    index_factor = (colors_in_range - 1) / size
    :
    ;********** select equation to iterate **************
    IF (real(p1) < 3)
 q=fn1(w)
        w=fn3(1/fn2(w*w))
    ELSE
 w = 1 / (w * w + c) ; Pokorny
    ENDIF
    ;****************************************************
    IF (iter > skip)
 dist = abs(|w - k| - 0.1)
 IF (dist < size)
     bailout = 1
 ENDIF
    ENDIF
    IF (bailout)
 z = index_factor * dist + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0  && |w| < 1.0e20
}

gravipop { ;5-29-98 kathy roth
            ;imag p3 must be positive
            x=real(pixel), y=imag(pixel), h=imag(p3):
            newx = x-h*sin((y) + tan(3*y))
            newy = y-h*sin((x) + tan(3*x))
            x=newx, y=newy
            z=x + flip(y)
            w = fn1(z)
            z = fn3(p1/fn2(w*w)) + p2
            |z| < real(p3)
    }

gravipop_2u { ;5-29-98 kathy roth
  ;unholy matrimony of frm by Phil DiGiorgi,
  ;Mark Christenson & Bradley Beacham
  x=real(pixel), y=imag(pixel),k=real(p3), h=imag(p3):
    newx = x-h*sin((y) + tan(3*y))
    newy = y-h*sin((x) + tan(3*x))
    x=newx, y=newy
    z=x + flip(y)
    x = real(z), y = imag(z)
    w = fn1(x) + k*y, v = fn1(y) + k*x
    u = fn2(w + flip(v))
    z = fn4(p1/fn3(u*u)) + p2
    |z| < 0
    }

gravistalks {; adapted from Paul W. Carlson
      ;original gravijul by Mark Christenson
      ;kathy roth 1998
    ;
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
    max_wm = imag(p2)
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    index_factor = (colors_in_range - 1) / stalk_width
    :
    q=fn1(w)
w=fn3(1/fn2(q*q)), wr = real(w), awr = abs(wr)
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
}

gravistalks1 {; adapted from Paul W. Carlson
      ;original gravijul by Mark Christenson
      ;kathy roth 1998
    ;
    ;   p1       = gravijul coordinate
    ;   real(p2) = a factor controlling the size of the stalks
    ;   imag(p2) = iterations to skip
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in a range
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
w=fn3(p1/fn2(q*q)), wr = real(w), awr = abs(wr)
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
}

gravistalks2 {; adapted from Paul W. Carlson c. 1998
      ;original gravijul by Mark Christenson
      ;kathy roth 1998
    ;
    ;   p1       = gravijul parameter
    ;   real(p2) = a factor controlling the size of the stalks
    ;   imag(p2) = iterations to skip
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in a range
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
 w=fn3(real(p1)/fn2(q*q)) + imag(p1), wr = real(w), awr = abs(wr)
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
}

gravity-dt2=pix { ; Kerry Mitchell 23feb99
        ;
        ; loosely based on gravitational attraction formula
        ;
        ; set p1 to about 1 in magnitude, e.g, (1.0,0.1)
        ; 
        z1=1, z=p1, dt2=pixel, bailout=1000:
        z0=z1, z1=z, f=1/z-1/sqr(z)
        z=2*z1-z0+f*dt2, |z| < bailout
        }

gravity-z=pix { ; Kerry Mitchell 23feb99
        ;
        ; loosely based on gravitational attraction formula
        ;
        ; p1 = "time step", small in magnitude (about .1 or less)
        ; 
        z1=1, dt2=p1, z=pixel, bailout=1000:
        z0=z1, z1=z, f=1/z-1/sqr(z)
        z=2*z1-z0+f*dt2, |z| < bailout
        }

GregsBarnsleyC2E {;  Greg McClure -- Dual func with even constants
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/ident = standard Barnsley
  z = p1 + Pixel:
   ip = imag(p3)
   IF(IP<0)
     ip = abs(ip)-1
     z = z + p1
   ENDIF
   IF(real(z)>=0)
     z=(fn1(z)-p2)*Pixel
   ELSE
     z=(fn2(z)+p2)*Pixel
   ENDIF,
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(real(z)) + abs(imag(z)))
   ELSEIF(ip<6.1)
    ct = (real(z) + imag(z))
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsBarnsleyC2P {;  Greg McClure -- Dual func with pos constant
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/ident = standard Barnsley
  z = p1 + Pixel:
   ip = imag(p3)
   IF(IP<0)
     ip = abs(ip)-1
     z = z + p1
   ENDIF
   IF(real(z)>=0)
     z=(fn1(z)-p2)*Pixel
   ELSE
     z=(fn2(z)+1)*Pixel
   ENDIF,
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(real(z)) + abs(imag(z)))
   ELSEIF(ip<6.1)
    ct = (real(z) + imag(z))
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsBarnsleyC2N {;  Greg McClure -- Dual func with neg constant
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/ident = standard Barnsley
  z = p1 + Pixel:
   ip = imag(p3)
   IF(IP<0)
     ip = abs(ip)-1
     z = z + p1
   ENDIF
   IF(real(z)>=0)
     z=(fn1(z)-1)*Pixel
   ELSE
     z=(fn2(z)+p2)*Pixel
   ENDIF,
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(real(z)) + abs(imag(z)))
   ELSEIF(ip<6.1)
    ct = (real(z) + imag(z))
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsBarnsleyM2E {;  Greg McClure -- Dual func with even mult
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/ident = standard Barnsley
  z = p1 + Pixel:
   ip = imag(p3)
   IF(IP<0)
     ip = abs(ip)-1
     z = z + p1
   ENDIF
   IF(real(z)>=0)
     z=p2*(fn1(z)-1)*Pixel
   ELSE
     z=p2*(fn2(z)+1)*Pixel
   ENDIF,
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(real(z)) + abs(imag(z)))
   ELSEIF(ip<6.1)
    ct = (real(z) + imag(z))
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsBarnsleyM2P {;  Greg McClure -- Dual func with pos mult
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/ident = standard Barnsley
  z = p1 + Pixel:
   ip = imag(p3)
   IF(IP<0)
     ip = abs(ip)-1
     z = z + p1
   ENDIF
   IF(real(z)>=0)
     z=p2*(fn1(z)-1)*Pixel
   ELSE
     z=(fn2(z)+1)*Pixel
   ENDIF,
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(real(z)) + abs(imag(z)))
   ELSEIF(ip<6.1)
    ct = (real(z) + imag(z))
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsBarnsleyM2N {;  Greg McClure -- Dual func with neg mult
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/ident = standard Barnsley
  z = p1 + Pixel:
   ip = imag(p3)
   IF(IP<0)
     ip = abs(ip)-1
     z = z + p1
   ENDIF
   IF(real(z)>=0)
     z=(fn1(z)-1)*Pixel
   ELSE
     z=p2*(fn2(z)+1)*Pixel
   ENDIF,
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(real(z)) + abs(imag(z)))
   ELSEIF(ip<6.1)
    ct = (real(z) + imag(z))
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsBarnsJulC2E {;  Greg McClure -- Dual func with even constants
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/ident = standard Barns Julia f/p1
  z = Pixel:
   IF(real(z)>=0)
     z=(fn1(z)-p2)*p1
   ELSE
     z=(fn2(z)+p2)*p1
   ENDIF,
   ip = imag(p3)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(real(z)) + abs(imag(z)))
   ELSEIF(ip<6.1)
    ct = (real(z) + imag(z))
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsBarnsJulC2P {;  Greg McClure -- Dual func with pos constant
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/ident = standard Barns Julia f/p1
  z = Pixel:
   IF(real(z)>=0)
     z=(fn1(z)-p2)*p1
   ELSE
     z=(fn2(z)+1)*p1
   ENDIF,
   ip = imag(p3)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(real(z)) + abs(imag(z)))
   ELSEIF(ip<6.1)
    ct = (real(z) + imag(z))
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsBarnsJulC2N {;  Greg McClure -- Dual func with neg constant
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/ident = standard Barns Julia f/p1
  z = Pixel:
   IF(real(z)>=0)
     z=(fn1(z)-1)*p1
   ELSE
     z=(fn2(z)+p2)*p1
   ENDIF,
   ip = imag(p3)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(real(z)) + abs(imag(z)))
   ELSEIF(ip<6.1)
    ct = (real(z) + imag(z))
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsBarnsJulM2E {;  Greg McClure -- Dual func with even mult
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/ident = standard Barns Julia f/p1
  z = Pixel:
   IF(real(z)>=0)
     z=p2*(fn1(z)-1)*p1
   ELSE
     z=p2*(fn2(z)+1)*p1
   ENDIF,
   ip = imag(p3)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(real(z)) + abs(imag(z)))
   ELSEIF(ip<6.1)
    ct = (real(z) + imag(z))
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsBarnsJulM2P {;  Greg McClure -- Dual func with pos mult
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/ident = standard Barns Julia f/p1
  z = Pixel:
   IF(real(z)>=0)
     z=p2*(fn1(z)-1)*p1
   ELSE
     z=(fn2(z)+1)*p1
   ENDIF,
   ip = imag(p3)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(real(z)) + abs(imag(z)))
   ELSEIF(ip<6.1)
    ct = (real(z) + imag(z))
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsBarnsJulM2N {;  Greg McClure -- Dual func with neg mult
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/ident = standard Barns Julia f/p1
  z = Pixel:
   IF(real(z)>=0)
     z=(fn1(z)-1)*p1
   ELSE
     z=p2*(fn2(z)+1)*p1
   ENDIF,
   ip = imag(p3)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(real(z)) + abs(imag(z)))
   ELSEIF(ip<6.1)
    ct = (real(z) + imag(z))
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaE1 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = p2 * exp(fn1(z)) + p1:
   z = p2 * exp(fn1(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaE2 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 2/0, p3 = 2/0, fn1 = log = standard Julia for point p1
  z = Pixel, z = exp(p2 * fn1(z)) + p1:
   z = exp(p2 * fn1(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaE3 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 2/0, p3 = 2/0, fn1/fn2 = log/zero = standard Julia for point p1
; p2 = 2/0, p3 = 2/0, fn1/fn2 = zero/log = standard Julia for point p1
  z = Pixel, z = exp(p2 * (fn1(z) + fn2(z))) + p1:
   z = exp(p2 * (fn1(z) + fn2(z))) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaE4 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 2/0, p3 = 2/0, fn1/fn2 = zero/log = standard Julia for point p1
  z = Pixel, z = exp(fn1(z) + p2 * fn2(z)) + p1:
   z = exp(fn1(z) + p2 * fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaE5 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 2/0, p3 = 2/0, fn1/fn2 = zero/log = standard Julia for point p1
  z = Pixel, z = fn1(z) + exp(p2 * fn2(z)) + p1:
   z = fn1(z) + exp(p2 * fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaE6 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = p2 * exp(fn1(z) + fn2(z)) + p1:
   z = p2 * exp(fn1(z) + fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaE7 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = p2 * (fn1(z) + exp(fn2(z))) + p1:
   z = p2 * (fn1(z) + exp(fn2(z))) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaE8 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = p2 * fn1(z) + exp(fn2(z)) + p1:
   z = p2 * fn1(z) + exp(fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaE9 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = fn1(z) + p2 * exp(fn2(z)) + p1:
   z = fn1(z) + p2 * exp(fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaEA {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = exp(p2 * fn1(z)) + exp(p2 * fn2(z)) + p1:
   z = exp(p2 * fn1(z)) + exp(p2 * fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaEB {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = p2 * (exp(fn1(z)) + exp(fn2(z))) + p1:
   z = p2 * (exp(fn1(z)) + exp(fn2(z))) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaEC {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = exp(fn1(z)) + exp(p2 * fn2(z)) + p1:
   z = exp(fn1(z)) + exp(p2 * fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaED {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = exp(fn1(z)) + p2 * exp(fn2(z)) + p1:
   z = exp(fn1(z)) + p2 * exp(fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaF1 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/sqr = standard Julia for point p1
; p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/ident = standard Julia for point p1
  z = Pixel, z = p2 * fn1(fn2(z)) + p1:
   z = p2 * fn1(fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaF2 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/sqr = standard Julia for point p1
; p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/ident = standard Julia for point p1
; p2 = 2/0, p3 = 2/0, fn1/fn2 = exp/log = standard Julia for point p1
  z = Pixel, z = fn1(p2 * fn2(z)) + p1:
   z = fn1(p2 * fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaF3 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = fn1(fn2(z)^p2) + p1:
   z = fn1(fn2(z)^p2) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaF4 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = fn1(fn2(z))^p2 + p1:
   z = fn1(fn2(z))^p2 + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaHM1 {;  Greg McClure -- HyperJulia (Type ++00)
; p1 = point, p2 = multiplier, p3 = cutoff/type
; z(-1) = (xPixel,yPixel,0,0)
; z(n) = f[z(n-1)] + (xP1,yP1,xP2,yP2)
; imag(p3) = type = 0/MOD,  1/MODRI, 2/MODJK, 3/REAL, 4/IMAG,
;                 = 5/JMAG, 6/KMAG,  7/OR,    8/AND,  9/MANH, 10/MANR
  z1 = Pixel, z2 = 0, z = 0,
  f1 = real(z1) - imag(z2) + (0,1) * (imag(z1) + real(z2)),
  f2 = real(z1) + imag(z2) + (0,1) * (imag(z1) - real(z2)),
  f1 = fn1(f1), f2 = fn2(f2),
  z1 = (real(f1) + real(f2) + (0,1) * (imag(f1) + imag(f2))) / 2 + p1,
  z2 = (imag(f1) - imag(f2) + (0,1) * (real(f2) - real(f1))) / 2 + p2:
   f1 = real(z1) - imag(z2) + (0,1) * (imag(z1) + real(z2))
   f2 = real(z1) + imag(z2) + (0,1) * (imag(z1) - real(z2))
   f1 = fn1(f1)
   f2 = fn2(f2)
   z1 = (real(f1) + real(f2) + (0,1) * (imag(f1) + imag(f2))) / 2 + p1
   z2 = (imag(f1) - imag(f2) + (0,1) * (real(f2) - real(f1))) / 2 + p2
   z = sqrt(|z1| + |z2|)
   ip = imag(p3)
   rz = real(z1)
   iz = imag(z1)
   jz = real(z2)
   kz = imag(z2)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = z1
   ELSEIF(ip<2.1)
    ct = z2
   ELSEIF(ip<3.1)
    ct = rz
   ELSEIF(ip<4.1)
    ct = iz
   ELSEIF(ip<5.1)
    ct = jz
   ELSEIF(ip<6.1)
    ct = kz
   ELSEIF((ip<7.1) && (|rz|>=|iz|) && (|rz|>=|jz|) && (|rz|>=|kz|))
    ct = rz
   ELSEIF((ip<7.1) && (|iz|>=|rz|) && (|iz|>=|jz|) && (|iz|>=|kz|))
    ct = iz
   ELSEIF((ip<7.1) && (|jz|>=|rz|) && (|jz|>=|iz|) && (|jz|>=|kz|))
    ct = jz
   ELSEIF((ip<7.1) && (|kz|>=|rz|) && (|iz|>=|kz|) && (|kz|>=|jz|))
    ct = kz
   ELSEIF((ip<8.1) && (|rz|<|iz|) && (|rz|<|jz|) && (|rz|<|kz|))
    ct = rz
   ELSEIF((ip<8.1) && (|iz|<|rz|) && (|iz|<|jz|) && (|iz|<|kz|))
    ct = iz
   ELSEIF((ip<8.1) && (|jz|<|rz|) && (|jz|<|iz|) && (|jz|<|kz|))
    ct = jz
   ELSEIF((ip<8.1) && (|kz|<|rz|) && (|kz|<|iz|) && (|kz|<|jz|))
    ct = kz
   ELSEIF(ip<9.1)
    ct = (abs(rz) + abs(iz) + abs(jz) + abs(kz))
   ELSEIF(ip<10.1)
    ct = (rz + iz + jz + kz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaHM2 {;  Greg McClure -- HyperJulia (Type 00++)
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; z(-1) = (0,0,xPixel,yPixel)
; z(n) = f[z(n-1)] + (xP2,yP2,xP1,yP1)
; imag(p3) = type = 0/MOD,  1/MODRI, 2/MODJK, 3/REAL, 4/IMAG,
;                 = 5/JMAG, 6/KMAG,  7/OR,    8/AND,  9/MANH, 10/MANR
  z1 = 0, z2 = Pixel, z = 0,
  f1 = real(z1) - imag(z2) + (0,1) * (imag(z1) + real(z2)),
  f2 = real(z1) + imag(z2) + (0,1) * (imag(z1) - real(z2)),
  f1 = fn1(f1), f2 = fn2(f2),
  z1 = (real(f1) + real(f2) + (0,1) * (imag(f1) + imag(f2))) / 2 + p2,
  z2 = (imag(f1) - imag(f2) + (0,1) * (real(f2) - real(f1))) / 2 + p1:
   f1 = real(z1) - imag(z2) + (0,1) * (imag(z1) + real(z2))
   f2 = real(z1) + imag(z2) + (0,1) * (imag(z1) - real(z2))
   f1 = fn1(f1)
   f2 = fn2(f2)
   z1 = (real(f1) + real(f2) + (0,1) * (imag(f1) + imag(f2))) / 2 + p2
   z2 = (imag(f1) - imag(f2) + (0,1) * (real(f2) - real(f1))) / 2 + p1
   z = sqrt(|z1| + |z2|)
   ip = imag(p3)
   rz = real(z1)
   iz = imag(z1)
   jz = real(z2)
   kz = imag(z2)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = z1
   ELSEIF(ip<2.1)
    ct = z2
   ELSEIF(ip<3.1)
    ct = rz
   ELSEIF(ip<4.1)
    ct = iz
   ELSEIF(ip<5.1)
    ct = jz
   ELSEIF(ip<6.1)
    ct = kz
   ELSEIF((ip<7.1) && (|rz|>=|iz|) && (|rz|>=|jz|) && (|rz|>=|kz|))
    ct = rz
   ELSEIF((ip<7.1) && (|iz|>=|rz|) && (|iz|>=|jz|) && (|iz|>=|kz|))
    ct = iz
   ELSEIF((ip<7.1) && (|jz|>=|rz|) && (|jz|>=|iz|) && (|jz|>=|kz|))
    ct = jz
   ELSEIF((ip<7.1) && (|kz|>=|rz|) && (|iz|>=|kz|) && (|kz|>=|jz|))
    ct = kz
   ELSEIF((ip<8.1) && (|rz|<|iz|) && (|rz|<|jz|) && (|rz|<|kz|))
    ct = rz
   ELSEIF((ip<8.1) && (|iz|<|rz|) && (|iz|<|jz|) && (|iz|<|kz|))
    ct = iz
   ELSEIF((ip<8.1) && (|jz|<|rz|) && (|jz|<|iz|) && (|jz|<|kz|))
    ct = jz
   ELSEIF((ip<8.1) && (|kz|<|rz|) && (|kz|<|iz|) && (|kz|<|jz|))
    ct = kz
   ELSEIF(ip<9.1)
    ct = (abs(rz) + abs(iz) + abs(jz) + abs(kz))
   ELSEIF(ip<10.1)
    ct = (rz + iz + jz + kz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaHMA(ORIGIN) {;  Greg McClure -- HyperJulia (Type ++00)
; p1 = point, p2 = multiplier, p3 = cutoff/type
; z(-1) = (xPixel,yPixel,0,0)          \ FORCED SYMMETRY
; z(n) = f[z(n-1)] + (xP1,yP2,xP2,yP2) / AT ORIGIN
; imag(p3) = type = 0/MOD,  1/MODRI, 2/MODJK, 3/REAL, 4/IMAG,
;                 = 5/JMAG, 6/KMAG,  7/OR,    8/AND,  9/MANH, 10/MANR
  z1 = Pixel, z2 = 0, z = 0,
  f1 = real(z1) - imag(z2) + (0,1) * (imag(z1) + real(z2)),
  f2 = real(z1) + imag(z2) + (0,1) * (imag(z1) - real(z2)),
  f1 = fn1(f1), f2 = fn2(f2),
  z1 = (real(f1) + real(f2) + (0,1) * (imag(f1) + imag(f2))) / 2 + p1,
  z2 = (imag(f1) - imag(f2) + (0,1) * (real(f2) - real(f1))) / 2 + p2:
   f1 = real(z1) - imag(z2) + (0,1) * (imag(z1) + real(z2))
   f2 = real(z1) + imag(z2) + (0,1) * (imag(z1) - real(z2))
   f1 = fn1(f1)
   f2 = fn2(f2)
   z1 = (real(f1) + real(f2) + (0,1) * (imag(f1) + imag(f2))) / 2 + p1
   z2 = (imag(f1) - imag(f2) + (0,1) * (real(f2) - real(f1))) / 2 + p2
   z = sqrt(|z1| + |z2|)
   ip = imag(p3)
   rz = real(z1)
   iz = imag(z1)
   jz = real(z2)
   kz = imag(z2)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = z1
   ELSEIF(ip<2.1)
    ct = z2
   ELSEIF(ip<3.1)
    ct = rz
   ELSEIF(ip<4.1)
    ct = iz
   ELSEIF(ip<5.1)
    ct = jz
   ELSEIF(ip<6.1)
    ct = kz
   ELSEIF((ip<7.1) && (|rz|>=|iz|) && (|rz|>=|jz|) && (|rz|>=|kz|))
    ct = rz
   ELSEIF((ip<7.1) && (|iz|>=|rz|) && (|iz|>=|jz|) && (|iz|>=|kz|))
    ct = iz
   ELSEIF((ip<7.1) && (|jz|>=|rz|) && (|jz|>=|iz|) && (|jz|>=|kz|))
    ct = jz
   ELSEIF((ip<7.1) && (|kz|>=|rz|) && (|iz|>=|kz|) && (|kz|>=|jz|))
    ct = kz
   ELSEIF((ip<8.1) && (|rz|<|iz|) && (|rz|<|jz|) && (|rz|<|kz|))
    ct = rz
   ELSEIF((ip<8.1) && (|iz|<|rz|) && (|iz|<|jz|) && (|iz|<|kz|))
    ct = iz
   ELSEIF((ip<8.1) && (|jz|<|rz|) && (|jz|<|iz|) && (|jz|<|kz|))
    ct = jz
   ELSEIF((ip<8.1) && (|kz|<|rz|) && (|kz|<|iz|) && (|kz|<|jz|))
    ct = kz
   ELSEIF(ip<9.1)
    ct = (abs(rz) + abs(iz) + abs(jz) + abs(kz))
   ELSEIF(ip<10.1)
    ct = (rz + iz + jz + kz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaHMB(ORIGIN) {;  Greg McClure -- HyperJulia (Type 00++)
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; z(-1) = (0,0,xPixel,yPixel)          \ FORCED SYMMETRY
; z(n) = f[z(n-1)] + (xP2,yP2,xP1,yP1) / AT ORIGIN
; imag(p3) = type = 0/MOD,  1/MODRI, 2/MODJK, 3/REAL, 4/IMAG,
;                 = 5/JMAG, 6/KMAG,  7/OR,    8/AND,  9/MANH, 10/MANR
  z1 = real(Pixel), z2 = (0,1) * imag(Pixel), z = 0,
  f1 = real(z1) - imag(z2) + (0,1) * (imag(z1) + real(z2)),
  f2 = real(z1) + imag(z2) + (0,1) * (imag(z1) - real(z2)),
  f1 = fn1(f1), f2 = fn2(f2),
  z1 = (real(f1) + real(f2) + (0,1) * (imag(f1) + imag(f2))) / 2 + p2,
  z2 = (imag(f1) - imag(f2) + (0,1) * (real(f2) - real(f1))) / 2 + p1:
   f1 = real(z1) - imag(z2) + (0,1) * (imag(z1) + real(z2))
   f2 = real(z1) + imag(z2) + (0,1) * (imag(z1) - real(z2))
   f1 = fn1(f1)
   f2 = fn2(f2)
   z1 = (real(f1) + real(f2) + (0,1) * (imag(f1) + imag(f2))) / 2 + p2
   z2 = (imag(f1) - imag(f2) + (0,1) * (real(f2) - real(f1))) / 2 + p1
   z = sqrt(|z1| + |z2|)
   ip = imag(p3)
   rz = real(z1)
   iz = imag(z1)
   jz = real(z2)
   kz = imag(z2)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = z1
   ELSEIF(ip<2.1)
    ct = z2
   ELSEIF(ip<3.1)
    ct = rz
   ELSEIF(ip<4.1)
    ct = iz
   ELSEIF(ip<5.1)
    ct = jz
   ELSEIF(ip<6.1)
    ct = kz
   ELSEIF((ip<7.1) && (|rz|>=|iz|) && (|rz|>=|jz|) && (|rz|>=|kz|))
    ct = rz
   ELSEIF((ip<7.1) && (|iz|>=|rz|) && (|iz|>=|jz|) && (|iz|>=|kz|))
    ct = iz
   ELSEIF((ip<7.1) && (|jz|>=|rz|) && (|jz|>=|iz|) && (|jz|>=|kz|))
    ct = jz
   ELSEIF((ip<7.1) && (|kz|>=|rz|) && (|iz|>=|kz|) && (|kz|>=|jz|))
    ct = kz
   ELSEIF((ip<8.1) && (|rz|<|iz|) && (|rz|<|jz|) && (|rz|<|kz|))
    ct = rz
   ELSEIF((ip<8.1) && (|iz|<|rz|) && (|iz|<|jz|) && (|iz|<|kz|))
    ct = iz
   ELSEIF((ip<8.1) && (|jz|<|rz|) && (|jz|<|iz|) && (|jz|<|kz|))
    ct = jz
   ELSEIF((ip<8.1) && (|kz|<|rz|) && (|kz|<|iz|) && (|kz|<|jz|))
    ct = kz
   ELSEIF(ip<9.1)
    ct = (abs(rz) + abs(iz) + abs(jz) + abs(kz))
   ELSEIF(ip<10.1)
    ct = (rz + iz + jz + kz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaL1 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = p2 * log(fn1(z)) + p1:
   z = p2 * log(fn1(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaL2 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = log(p2 * fn1(z)) + p1:
   z = log(p2 * fn1(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaL3 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = log(p2 * (fn1(z) + fn2(z))) + p1:
   z = log(p2 * (fn1(z) + fn2(z))) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaL4 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = log(fn1(z) + p2 * fn2(z)) + p1:
   z = log(fn1(z) + p2 * fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaL5 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = fn1(z) + log(p2 * fn2(z)) + p1:
   z = fn1(z) + log(p2 * fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaL6 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = p2 * log(fn1(z) + fn2(z)) + p1:
   z = p2 * log(fn1(z) + fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaL7 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = p2 * (fn1(z) + log(fn2(z))) + p1:
   z = p2 * (fn1(z) + log(fn2(z))) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaL8 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = p2 * fn1(z) + log(fn2(z)) + p1:
   z = p2 * fn1(z) + log(fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaL9 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = fn1(z) + p2 * log(fn2(z)) + p1:
   z = fn1(z) + p2 * log(fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaLA {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = log(p2 * fn1(z)) + log(p2 * fn2(z)) + p1:
   z = log(p2 * fn1(z)) + log(p2 * fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaLB {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = p2 * (log(fn1(z)) + log(fn2(z))) + p1:
   z = p2 * (log(fn1(z)) + log(fn2(z))) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaLC {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = log(fn1(z)) + log(p2 * fn2(z)) + p1:
   z = log(fn1(z)) + log(p2 * fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaLD {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel, z = log(fn1(z)) + p2 * log(fn2(z)) + p1:
   z = log(fn1(z)) + p2 * log(fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaM1 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1 = sqr = standard Julia for point p1
  z = Pixel, z = p2 * fn1(z) + p1:
   z = p2 * fn1(z) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaM2 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 0/0, p3 = 2/0, fn1 = sqr/zero = standard Julia for point p1
; p2 = 1/0, p3 = 2/0, fn1 = zero/sqr = standard Julia for point p1
  z = Pixel, z = p2 * (fn1(z) + fn2(z)) + p1:
   z = p2 * (fn1(z) + fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaM3 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 0/0, p3 = 2/0, fn1 = sqr = standard Julia for point p1
; p2 = 1/0, p3 = 2/0, fn1 = zero/sqr = standard Julia for point p1
  z = Pixel, z = fn1(z) + p2 * fn2(z) + p1:
   z = fn1(z) + p2 * fn2(z) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaS1 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1 = ident = standard Julia for point p1
  z = Pixel, z = p2 * sqr(fn1(z)) + p1:
   z = p2 * sqr(fn1(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaS2 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/zero = standard Julia for point p1
; p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Julia for point p1
  z = Pixel, z = sqr(p2 * (fn1(z) + fn2(z))) + p1:
   z = sqr(p2 * (fn1(z) + fn2(z))) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaS3 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 0/0, p3 = 2/0, fn1 = ident = standard Julia for point p1
; p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Julia for point p1
  z = Pixel, z = sqr(fn1(z) + (p2 * fn2(z))) + p1:
   z = sqr(fn1(z) + p2 * fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaS4 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/zero = standard Julia for point p1
; p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Julia for point p1
  z = Pixel, z = p2 * (fn1(z) + sqr(fn2(z))) + p1:
   z = p2 * (fn1(z) + sqr(fn2(z))) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaS5 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Julia for point p1
; p2 = 0/0, p3 = 2/0, fn2 = sqr = standard Julia for point p1
  z = Pixel, z = p2 * fn1(z) + sqr(fn2(z)) + p1:
   z = p2 * fn1(z) + sqr(fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaS6 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 0/0, p3 = 2/0, fn1 = sqr = standard Julia for point p1
; p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Julia for point p1
  z = Pixel, z = fn1(z) + p2 * sqr(fn2(z)) + p1:
   z = fn1(z) + p2 * sqr(fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaS7 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/zero = standard Julia for point p1
; p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Julia for point p1
  z = Pixel, z = sqr(p2 * fn1(z)) + sqr(p2 * fn2(z)) + p1:
   z = sqr(p2 * fn1(z)) + sqr(p2 * fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaS8 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 0/0, p3 = 2/0, fn1 = ident = standard Julia for point p1
; p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Julia for point p1
  z = Pixel, z = sqr(fn1(z)) + sqr(p2 * fn2(z)) + p1:
   z = sqr(fn1(z)) + sqr(p2 * fn2(z)) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaZ1 {;  Greg McClure
; p1 = point, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2/fn3 = zero/ident/sqr = standard Julia for point p1
  z = Pixel, z = fn1(z)^fn2(z) + fn3(z)^p2 + p1:=20
   z = fn1(z)^fn2(z) + fn3(z)^p2 + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaZ2 {;  Greg McClure
; p1 = point, p2 = power, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2/fn3 = zero/ident/sqr = standard Julia for point p1
  z = Pixel, z = fn1(z)^fn2(z) + fn3(z)^p2 + p1:=20
   z = fn1(z)^fn2(-z) + fn3(z)^p2 + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaZ3 {;  Greg McClure
; p1 = point, p2 = power, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/zero = standard Mandelbrot
; p1 = 0/0, p2 = 2/0, p3 = 2/0, fn1/fn2 = ident/zero = standard Mandelbrot
  z = Pixel, z = fn1(z)^p2 + fn2(z)^(-p2) + p1:=20
   z = fn1(z)^p2 + fn2(z)^(-p2) + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaZ4 {;  Greg McClure
; p1 = point, p2 = modulus, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel,
  IF(|z|>real(p2))
    z = fn1(z) + p1
  ELSEIF(|z|>imag(p2))
    z = fn2(z) + p1
  ELSE
    z = fn3(z) + p1
  ENDIF:
   IF(|z|>real(p2))
     z = fn1(z) + p1
   ELSEIF(|z|>imag(p2))
     z = fn2(z) + p1
   ELSE
     z = fn3(z) + p1
   ENDIF
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaZ5 {;  Greg McClure
; p1 = point, p2 = modulus, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = Pixel,
  IF(|z|>real(p2))
    z = fn1(fn2(z)) + p1
  ELSEIF(|z|>imag(p2))
    z = fn1(fn3(z)) + p1
  ELSE
    z = fn1(fn4(z)) + p1
  ENDIF:
   IF(|z|>real(p2))
     z = fn1(fn2(z)) + p1
   ELSEIF(|z|>imag(p2))
     z = fn1(fn3(z)) + p1
   ELSE
     z = fn1(fn4(z)) + p1
   ENDIF
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelL1 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type =  0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = p2 * log(fn1(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaP1 {;  Greg McClure
; p1 = point, p2 = exponent, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1 = sqr = standard Julia for point p1
; p2 = 2/0, p3 = 2/0, fn1 = ident = standard Julia for point p1
  z = Pixel, z = fn1(z)^p2 + p1:
   z = fn1(z)^p2 + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaP2 {;  Greg McClure
; p1 = point, p2 = exponent, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/zero = standard Julia for point p1
; p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/sqr = standard Julia for point p1
; p2 = 2/0, p3 = 2/0, fn1/fn2 = ident/zero = standard Julia for point p1
; p2 = 2/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Julia for point p1
  z = Pixel, z = (fn1(z) + fn2(z))^p2 + p1:
   z = (fn1(z) + fn2(z))^p2 + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaP3 {;  Greg McClure
; p1 = point, p2 = exponent, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/zero = standard Julia for point p1
; p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/sqr = standard Julia for point p1
; p2 = 2/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Julia for point p1
  z = Pixel, z = fn1(z) + fn2(z)^p2 + p1:
   z = fn1(z) + fn2(z)^p2 + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsJuliaP4 {;  Greg McClure
; p1 = point, p2 = exponent, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/zero = standard Julia for point p1
; p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/sqr = standard Julia for point p1
; p2 = 2/0, p3 = 2/0, fn1/fn2 = ident/zero = standard Julia for point p1
; p2 = 2/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Julia for point p1
  z = Pixel, z = fn1(z)^p2 + fn2(z)^p2 + p1:
   z = fn1(z)^p2 + fn2(z)^p2 + p1
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelE1 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type =  0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = p2 * exp(fn1(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelE2 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type =  0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 2/0, p3 = 2/0, fn1 = log = standard Mandelbrot
  z = p1 + Pixel:
   z = exp(p2 * fn1(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelE3 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 2/0, p3 = 2/0, fn1/fn2 = log/zero = standard Mandelbrot
; p1 = 0/0, p2 = 2/0, p3 = 2/0, fn1/fn2 = zero/log = standard Mandelbrot
  z = p1 + Pixel:
   z = exp(p2 * (fn1(z) + fn2(z))) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelE4 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 2/0, p3 = 2/0, fn1/fn2 = zero/log = standard Mandelbrot
  z = p1 + Pixel:
   z = exp(fn1(z) + p2 * fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelE5 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 2/0, p3 = 2/0, fn1/fn2 = zero/log = standard Mandelbrot
  z = p1 + Pixel:
   z = fn1(z) + exp(p2 * fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelE6 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = p2 * exp(fn1(z) + fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelE7 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = p2 * (fn1(z) + exp(fn2(z))) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelE8 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = p2 * fn1(z) + exp(fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelE9 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = fn1(z) + p2 * exp(fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelEA {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = exp(p2 * fn1(z)) + exp(p2 * fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelEB {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = p2 * (exp(fn1(z)) + exp(fn2(z))) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelEC {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = exp(fn1(z)) + exp(p2 * fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelED {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = exp(fn1(z)) + p2 * exp(fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelF1 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/sqr = standard Mandelbrot
  z = p1 + Pixel:
   z = p2 * fn1(fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelF2 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/sqr = standard Mandelbrot
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/ident = standard Mandelbrot
; p1 = 0/0, p2 = 2/0, p3 = 2/0, fn1/fn2 = exp/log = standard Mandelbrot
  z = p1 + Pixel:
   z = fn1(p2 * fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelF3 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = fn1(fn2(z)^p2) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelF4 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = fn1(fn2(z))^p2 + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelHM1 {;  Greg McClure -- HyperMandel (Type ++--)
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; z(0) = (xP1+xPixel,yP1+yPixel,xP2,yP2)
; z(n) = f[z(n-1)] + (xPixel,yPixel,xP2,yP2)
; imag(p3) = type = 0/MOD,  1/MODRI, 2/MODJK, 3/REAL, 4/IMAG,
;                 = 5/JMAG, 6/KMAG,  7/OR,    8/AND,  9/MANH, 10/MANR
  z1 = p1 + Pixel, z2 = p2, z = 0:
   f1 = real(z1) - imag(z2) + (0,1) * (imag(z1) + real(z2))
   f2 = real(z1) + imag(z2) + (0,1) * (imag(z1) - real(z2))
   f1 = fn1(f1)
   f2 = fn2(f2)
   z1 = (real(f1) + real(f2) + (0,1) * (imag(f1) + imag(f2))) / 2 + Pixel
   z2 = (imag(f1) - imag(f2) + (0,1) * (real(f2) - real(f1))) / 2 + p2
   z = sqrt(|z1| + |z2|)
   ip = imag(p3)
   rz = real(z1)
   iz = imag(z1)
   jz = real(z2)
   kz = imag(z2)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = z1
   ELSEIF(ip<2.1)
    ct = z2
   ELSEIF(ip<3.1)
    ct = rz
   ELSEIF(ip<4.1)
    ct = iz
   ELSEIF(ip<5.1)
    ct = jz
   ELSEIF(ip<6.1)
    ct = kz
   ELSEIF((ip<7.1) && (|rz|>=|iz|) && (|rz|>=|jz|) && (|rz|>=|kz|))
    ct = rz
   ELSEIF((ip<7.1) && (|iz|>=|rz|) && (|iz|>=|jz|) && (|iz|>=|kz|))
    ct = iz
   ELSEIF((ip<7.1) && (|jz|>=|rz|) && (|jz|>=|iz|) && (|jz|>=|kz|))
    ct = jz
   ELSEIF((ip<7.1) && (|kz|>=|rz|) && (|iz|>=|kz|) && (|kz|>=|jz|))
    ct = kz
   ELSEIF((ip<8.1) && (|rz|<|iz|) && (|rz|<|jz|) && (|rz|<|kz|))
    ct = rz
   ELSEIF((ip<8.1) && (|iz|<|rz|) && (|iz|<|jz|) && (|iz|<|kz|))
    ct = iz
   ELSEIF((ip<8.1) && (|jz|<|rz|) && (|jz|<|iz|) && (|jz|<|kz|))
    ct = jz
   ELSEIF((ip<8.1) && (|kz|<|rz|) && (|kz|<|iz|) && (|kz|<|jz|))
    ct = kz
   ELSEIF(ip<9.1)
    ct = (abs(rz) + abs(iz) + abs(jz) + abs(kz))
   ELSEIF(ip<10.1)
    ct = (rz + iz + jz + kz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelHM2 {;  Greg McClure -- HyperMandel (Type --++)
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; z(0) = (xP2,yP2,xP1+xPixel,yP1+yPixel)
; z(n) = f[z(n-1)] + (xP2,yP2,xPixel,yPixel)
; imag(p3) = type = 0/MOD,  1/MODRI, 2/MODJK, 3/REAL, 4/IMAG,
;                 = 5/JMAG, 6/KMAG,  7/OR,    8/AND,  9/MANH, 10/MANR
  z1 = p2, z2 = p1 + Pixel, z = 0:
   f1 = real(z1) - imag(z2) + (0,1) * (imag(z1) + real(z2))
   f2 = real(z1) + imag(z2) + (0,1) * (imag(z1) - real(z2))
   f1 = fn1(f1)
   f2 = fn2(f2)
   z1 = (real(f1) + real(f2) + (0,1) * (imag(f1) + imag(f2))) / 2 + p2
   z2 = (imag(f1) - imag(f2) + (0,1) * (real(f2) - real(f1))) / 2 + Pixel
   z = sqrt(|z1| + |z2|)
   ip = imag(p3)
   rz = real(z1)
   iz = imag(z1)
   jz = real(z2)
   kz = imag(z2)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = z1
   ELSEIF(ip<2.1)
    ct = z2
   ELSEIF(ip<3.1)
    ct = rz
   ELSEIF(ip<4.1)
    ct = iz
   ELSEIF(ip<5.1)
    ct = jz
   ELSEIF(ip<6.1)
    ct = kz
   ELSEIF((ip<7.1) && (|rz|>=|iz|) && (|rz|>=|jz|) && (|rz|>=|kz|))
    ct = rz
   ELSEIF((ip<7.1) && (|iz|>=|rz|) && (|iz|>=|jz|) && (|iz|>=|kz|))
    ct = iz
   ELSEIF((ip<7.1) && (|jz|>=|rz|) && (|jz|>=|iz|) && (|jz|>=|kz|))
    ct = jz
   ELSEIF((ip<7.1) && (|kz|>=|rz|) && (|iz|>=|kz|) && (|kz|>=|jz|))
    ct = kz
   ELSEIF((ip<8.1) && (|rz|<|iz|) && (|rz|<|jz|) && (|rz|<|kz|))
    ct = rz
   ELSEIF((ip<8.1) && (|iz|<|rz|) && (|iz|<|jz|) && (|iz|<|kz|))
    ct = iz
   ELSEIF((ip<8.1) && (|jz|<|rz|) && (|jz|<|iz|) && (|jz|<|kz|))
    ct = jz
   ELSEIF((ip<8.1) && (|kz|<|rz|) && (|kz|<|iz|) && (|kz|<|jz|))
    ct = kz
   ELSEIF(ip<9.1)
    ct = (abs(rz) + abs(iz) + abs(jz) + abs(kz))
   ELSEIF(ip<10.1)
    ct = (rz + iz + jz + kz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelHMA(XAXIS) {;  Greg McClure -- HyperMandel (Type ++--)
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; z(0) = (xP1+xPixel,yP1+yPixel,xP2,yP2)     \ FORCED SYMMETRY
; z(n) = f[z(n-1)] + (xPixel,yPixel,xP2,yP2) / ON X-AXIS
; imag(p3) = type = 0/MOD,  1/MODRI, 2/MODJK, 3/REAL, 4/IMAG,
;                 = 5/JMAG, 6/KMAG,  7/OR,    8/AND,  9/MANH, 10/MANR
  z1 = p1 + Pixel, z2 = p2, z = 0:
   f1 = real(z1) - imag(z2) + (0,1) * (imag(z1) + real(z2))
   f2 = real(z1) + imag(z2) + (0,1) * (imag(z1) - real(z2))
   f1 = fn1(f1)
   f2 = fn2(f2)
   z1 = (real(f1) + real(f2) + (0,1) * (imag(f1) + imag(f2))) / 2 + Pixel
   z2 = (imag(f1) - imag(f2) + (0,1) * (real(f2) - real(f1))) / 2 + p2
   z = sqrt(|z1| + |z2|)
   ip = imag(p3)
   rz = real(z1)
   iz = imag(z1)
   jz = real(z2)
   kz = imag(z2)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = z1
   ELSEIF(ip<2.1)
    ct = z2
   ELSEIF(ip<3.1)
    ct = rz
   ELSEIF(ip<4.1)
    ct = iz
   ELSEIF(ip<5.1)
    ct = jz
   ELSEIF(ip<6.1)
    ct = kz
   ELSEIF((ip<7.1) && (|rz|>=|iz|) && (|rz|>=|jz|) && (|rz|>=|kz|))
    ct = rz
   ELSEIF((ip<7.1) && (|iz|>=|rz|) && (|iz|>=|jz|) && (|iz|>=|kz|))
    ct = iz
   ELSEIF((ip<7.1) && (|jz|>=|rz|) && (|jz|>=|iz|) && (|jz|>=|kz|))
    ct = jz
   ELSEIF((ip<7.1) && (|kz|>=|rz|) && (|iz|>=|kz|) && (|kz|>=|jz|))
    ct = kz
   ELSEIF((ip<8.1) && (|rz|<|iz|) && (|rz|<|jz|) && (|rz|<|kz|))
    ct = rz
   ELSEIF((ip<8.1) && (|iz|<|rz|) && (|iz|<|jz|) && (|iz|<|kz|))
    ct = iz
   ELSEIF((ip<8.1) && (|jz|<|rz|) && (|jz|<|iz|) && (|jz|<|kz|))
    ct = jz
   ELSEIF((ip<8.1) && (|kz|<|rz|) && (|kz|<|iz|) && (|kz|<|jz|))
    ct = kz
   ELSEIF(ip<9.1)
    ct = (abs(rz) + abs(iz) + abs(jz) + abs(kz))
   ELSEIF(ip<10.1)
    ct = (rz + iz + jz + kz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelHMB(XAXIS) {;  Greg McClure -- HyperMandel (Type --++)
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; z(0) = (xP2,yP2,xP1+xPixel,yP1+yPixel)     \ FORCED SYMMETRY
; z(n) = f[z(n-1)] + (xP2,yP2,xPixel,yPixel) / ON X-AXIS
; imag(p3) = type = 0/MOD,  1/MODRI, 2/MODJK, 3/REAL, 4/IMAG,
;                 = 5/JMAG, 6/KMAG,  7/OR,    8/AND,  9/MANH, 10/MANR
  z1 = p2, z2 = p1 + Pixel, z = 0:
   f1 = real(z1) - imag(z2) + (0,1) * (imag(z1) + real(z2))
   f2 = real(z1) + imag(z2) + (0,1) * (imag(z1) - real(z2))
   f1 = fn1(f1)
   f2 = fn2(f2)
   z1 = (real(f1) + real(f2) + (0,1) * (imag(f1) + imag(f2))) / 2 + p2
   z2 = (imag(f1) - imag(f2) + (0,1) * (real(f2) - real(f1))) / 2 + Pixel
   z = sqrt(|z1| + |z2|)
   ip = imag(p3)
   rz = real(z1)
   iz = imag(z1)
   jz = real(z2)
   kz = imag(z2)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = z1
   ELSEIF(ip<2.1)
    ct = z2
   ELSEIF(ip<3.1)
    ct = rz
   ELSEIF(ip<4.1)
    ct = iz
   ELSEIF(ip<5.1)
    ct = jz
   ELSEIF(ip<6.1)
    ct = kz
   ELSEIF((ip<7.1) && (|rz|>=|iz|) && (|rz|>=|jz|) && (|rz|>=|kz|))
    ct = rz
   ELSEIF((ip<7.1) && (|iz|>=|rz|) && (|iz|>=|jz|) && (|iz|>=|kz|))
    ct = iz
   ELSEIF((ip<7.1) && (|jz|>=|rz|) && (|jz|>=|iz|) && (|jz|>=|kz|))
    ct = jz
   ELSEIF((ip<7.1) && (|kz|>=|rz|) && (|iz|>=|kz|) && (|kz|>=|jz|))
    ct = kz
   ELSEIF((ip<8.1) && (|rz|<|iz|) && (|rz|<|jz|) && (|rz|<|kz|))
    ct = rz
   ELSEIF((ip<8.1) && (|iz|<|rz|) && (|iz|<|jz|) && (|iz|<|kz|))
    ct = iz
   ELSEIF((ip<8.1) && (|jz|<|rz|) && (|jz|<|iz|) && (|jz|<|kz|))
    ct = jz
   ELSEIF((ip<8.1) && (|kz|<|rz|) && (|kz|<|iz|) && (|kz|<|jz|))
    ct = kz
   ELSEIF(ip<9.1)
    ct = (abs(rz) + abs(iz) + abs(jz) + abs(kz))
   ELSEIF(ip<10.1)
    ct = (rz + iz + jz + kz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelL2 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type =  0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = log(p2 * fn1(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelL3 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = log(p2 * (fn1(z) + fn2(z))) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelL4 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = log(fn1(z) + p2 * fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelL5 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = fn1(z) + log(p2 * fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelL6 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = p2 * log(fn1(z) + fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelL7 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = p2 * (fn1(z) + log(fn2(z))) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelL8 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = p2 * fn1(z) + log(fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelL9 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = fn1(z) + p2 * log(fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelLA {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = log(p2 * fn1(z)) + log(p2 * fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelLB {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = p2 * (log(fn1(z)) + log(fn2(z))) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelLC {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = log(fn1(z)) + log(p2 * fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelLD {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   z = log(fn1(z)) + p2 * log(fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelM1 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1 = sqr = standard =
Mandelbrot
  z = p1 + Pixel:
   z = p2 * fn1(z) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelM2 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/zero = standard Mandelbrot
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/sqr = standard Mandelbrot
  z = p1 + Pixel:
   z = p2 * (fn1(z) + fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelM3 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 0/0, p3 = 2/0, fn1 = sqr = standard Mandelbrot
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/sqr = standard Mandelbrot
  z = p1 + Pixel:
   z = fn1(z) + p2 * fn2(z) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelP1 {;  Greg McClure
; p1 = offset, p2 = exponent, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1 = sqr = standard Mandelbrot
; p1 = 0/0, p2 = 2/0, p3 = 2/0, fn1 = ident = standard Mandelbrot
  z = p1 + Pixel:
   z = fn1(z)^p2 + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelP2 {;  Greg McClure
; p1 = offset, p2 = exponent, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/zero = standard Mandelbrot
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/sqr = standard Mandelbrot
; p1 = 0/0, p2 = 2/0, p3 = 2/0, fn1/fn2 = ident/zero = standard Mandelbrot
; p1 = 0/0, p2 = 2/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Mandelbrot
  z = p1 + Pixel:
   z = (fn1(z) + fn2(z))^p2 + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelP3 {;  Greg McClure
; p1 = offset, p2 = exponent, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/zero = standard Mandelbrot
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/sqr = standard Mandelbrot
; p1 = 0/0, p2 = 2/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Mandelbrot
  z = p1 + Pixel:
   z = fn1(z) + fn2(z)^p2 + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelP4 {;  Greg McClure
; p1 = offset, p2 = exponent, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/zero = standard Mandelbrot
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/sqr = standard Mandelbrot
; p1 = 0/0, p2 = 2/0, p3 = 2/0, fn1/fn2 = ident/zero = standard Mandelbrot
; p1 = 0/0, p2 = 2/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Mandelbrot
  z = p1 + Pixel:
   z = fn1(z)^p2 + fn2(z)^p2 + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelS1 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1 = ident = standard Mandelbrot
  z = p1 + Pixel:
   z = p2 * sqr(fn1(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelS2 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/zero = standard Mandelbrot
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Mandelbrot
  z = p1 + Pixel:
   z = sqr(p2 * (fn1(z) + fn2(z))) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelS3 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 0/0, p3 = 2/0, fn1 = ident = standard Mandelbrot
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Mandelbrot
  z = p1 + Pixel:
   z = sqr(fn1(z) + p2 * fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelS4 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/zero = standard Mandelbrot
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Mandelbrot
  z = p1 + Pixel:
   z = p2 * (fn1(z) + sqr(fn2(z))) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelS5 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/zero = standard Mandelbrot
; p1 = 0/0, p2 = 0/0, p3 = 2/0, fn2 = ident = standard Mandelbrot
  z = p1 + Pixel:
   z = p2 * fn1(z) + sqr(fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelS6 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 0/0, p3 = 2/0, fn1 = sqr = standard Mandelbrot
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Mandelbrot
  z = p1 + Pixel:
   z = fn1(z) + p2 * sqr(fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelS7 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = ident/zero = standard Mandelbrot
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Mandelbrot
  z = p1 + Pixel:
   z = sqr(p2 * fn1(z)) + sqr(p2 * fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelS8 {;  Greg McClure
; p1 = offset, p2 = multiplier, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 0/0, p3 = 2/0, fn1 = ident = standard Mandelbrot
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = zero/ident = standard Mandelbrot
  z = p1 + Pixel:
   z = sqr(fn1(z)) + sqr(p2 * fn2(z)) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelZ1 {;  Greg McClure
; p1 = offset, p2 = power, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2/fn3 = zero/ident/sqr = standard Mandelbrot
  z = p1 + Pixel:
   z = fn1(z)^fn2(z) + fn3(z)^p2 + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelZ2 {;  Greg McClure
; p1 = offset, p2 = power, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2/fn3 = zero/ident/sqr = standard Mandelbrot
  z = p1 + Pixel:
   z = fn1(z)^fn2(-z) + fn3(z)^p2 + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelZ3 {;  Greg McClure
; p1 = offset, p2 = power, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
; p1 = 0/0, p2 = 1/0, p3 = 2/0, fn1/fn2 = sqr/zero = standard Mandelbrot
; p1 = 0/0, p2 = 2/0, p3 = 2/0, fn1/fn2 = ident/zero = standard Mandelbrot
  z = p1 + Pixel:
   z = fn1(z)^p2 + fn2(z)^(-p2) + Pixel
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelZ4 {;  Greg McClure
; p1 = offset, p2 = modulus, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   IF(|z|>real(p2))
     z = fn1(z) + Pixel
   ELSEIF(|z|>imag(p2))
     z = fn2(z) + Pixel
   ELSE
     z = fn3(z) + Pixel
   ENDIF
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

GregsMandelZ5 {;  Greg McClure
; p1 = offset, p2 = modulus, p3 = cutoff/type
; imag(p3) = type = 0/MOD, 1/REAL, 2/IMAG, 3/OR, 4/AND, 5/MANH, 6/MANR
  z = p1 + Pixel:
   IF(|z|>real(p2))
     z = fn1(fn2(z)) + Pixel
   ELSEIF(|z|>imag(p2))
     z = fn1(fn3(z)) + Pixel
   ELSE
     z = fn1(fn4(z)) + Pixel
   ENDIF
   ip = imag(p3)
   rz = real(z)
   iz = imag(z)
   IF(ip<0.1)
    ct = z
   ELSEIF(ip<1.1)
    ct = real(z)
   ELSEIF(ip<2.1)
    ct = imag(z)
   ELSEIF((ip<3.1) && (|rz|>|iz|))
    ct = real(z)
   ELSEIF((ip<3.1) && (|rz|<=|iz|))
    ct = imag(z)
   ELSEIF((ip<4.1) && (|rz|<|iz|))
    ct = real(z)
   ELSEIF((ip<4.1) && (|rz|>=|iz|))
    ct = imag(z)
   ELSEIF(ip<5.1)
    ct = (abs(rz) + abs(iz))
   ELSEIF(ip<6.1)
    ct = (rz + iz)
   ELSE
    ct = z
   ENDIF,
    |ct| <= |real(p3)|
  }

Groucho {; Mutation of 'Fish2'.
    ; Original formula by Dave Oliver via Tim Wegner
    ; Modified for if..else logic 3/19/97 by Sylvie Gallet
    ; For 'Fish2', set FN1 & FN2 =IDENT and P1 & P2 = default
    ; p1 = Parameter (default 1,0), real(p2) = Bailout (default 4)
   z = c = pixel
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
   :
   z1 = c^(fn1(z)-k)
   z = fn2(((c*z1)-k)*(z1))
   |z| <= test
}

H02-01{;V.1.0 - earlier versions may be discarded
; = 2(xH(1)-H(0))
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
Tx=(x+x)*x-1
Tx=Tx+Tx
Ty=(y+y)*y-1
Ty=Ty+Ty
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

H02-25{;V.1.1 - earlier versions may be discarded
; = 2(xH(1)-H(0))
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
ax=x+x
y=y+t*(fn1(ax*ax-2))
ay=y+y
x=x-t*(fn2(ay*ay-2))
z=x+flip(y)
|z|<=bailout}

H03-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=2*z*z
  f=4*z*(a-3)
  fd=12*(a-1)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}

H04-14(XYAxis){;V.1.0 - earlier versions may be discarded
; = 2(xH(3)-3H(2))
bailout=real(p2)/10000,z=pixel:
zz=z*z
f=4*(4*zz*(zz-3)+3)
fd=32*z*(zz+zz-3)
oz=z
w=z-f/fd
ww=w*w
fw=4*(4*ww*(ww-3)+3)
z=w-fw/fd
bailout<=sqrt(|(|z|)-(|oz|)|)}

H04-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=4*(4*zz*(zz-3)+3)
  fd=32*z*(2*zz-3)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}

H04-26{;V.1.1 - earlier versions may be discarded
; = 2(xH(3)-3H(2))
t=p1,bailout=real(p3),z=pixel,v=imag(p3):
x=real(z),y=imag(z)
xx=x*x
Tx=(fn1(4*(4*xx*(xx-3)+3)))
yy=y*y
Ty=(fn1(4*(4*yy*(yy-3)+3)))
x=x-t*Ty,y=y+t*Tx
w=fn1(x+flip(y))
z=fn3(v/fn2(w*w))+p2
|z|<=bailout}

H05-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=8*z*(4*zz*(zz-5)-9)
  fd=8*(20*zz*(zz-3)-9)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}

H06-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  f=8*(a*(a*(a-15)+21)-15)
  fd=96*z*(4*zz*(zz-5)+7)
  fdd=96*(20*zz*(zz-3)+7)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
}

H08-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  f=16*(b*(a*(a*(zz-14)+93)-93)+105)
  fd=328*z*(b*(a*(a-21)+93)-93)
  fdd=328*(b*(14*zz*(a-15)+279)-93)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}

Halley4_Mset {; Copyright (c) Paul W. Carlson, 1998
    ; Parameters:
    ;   real(p1) = exponent of z (use integers, 4 thru 9)
    ;   imag(p1)   not used
    ;   p2       = relaxation factor (usually (1,0) )
    ;   real(p3) = 1,    z^p1 -   z - c   = 0  (default)
    ;            = 2,    z^p1 -   z - c^2 = 0
    ;            = 3,    z^p1 - c*z - c^2 = 0
    ;            = 4,    z^p1 - c*z - c^4 = 0
    ;   imag(p3)   not used
    ;
    c = pixel
    c2 = c * c
    z = 0
    p = real(p1)
    s = real(p3)
    IF (s == 2)
	a = 1
	b = c2
    ELSEIF (s == 3)
	(s == 2)
	a = c
	b = c2
    ELSEIF (s == 4)
	a = c
	b = c2 * c2
    ELSE
	a = 1
	b = c
    ENDIF
    pm1 = p - 1
    pm2 = pm1 - 1
    ppm1 = p * pm1
    :
    fnc = z^p - a * z - b
    der1 = p * z^pm1 - a
    der2 = ppm1 * z^pm2
    k = p2 * fnc / (der1 - der2 * fnc / (der1 + der1))
    z = z - k
    |k| > 0.00000001
}

Halley7_3Way {; Copyright (c) Paul W. Carlson, 1998
    ; Alyways use float=y, outdide=summ
    ; real(p1) = escape circle radius squared
    ; imag(p1) = number of iterations to skip
    ; real(p2) = number of color ranges
    ; imag(p2) = number of colors in a range
    ; p3       = relaxation factor
    z = k = iter = range_num = bailout = 0
    w = pixel
    prev_modw2 = 1.0e20
    rad2 = real(p1)
    skip_iters = imag(p1)
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    colors_in_range_1 = colors_in_range - 1
    :
    w5 = w^5, w6 = w * w5, w7 = w * w6
    w = w - p3 * (w7-w)/((7*w6-1)-(42*w5)*(w7-w)/(14*w6-2))
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
    bailout == 0 && |w| < 1.0e10
}

Halley_n { ; Halley applied to z^n-1, compare with builtin newtbasin.
           ; p1: n (may be complex).
           ; p3 real: orbit trap radius.
  n=p1, r=real(p3), z=pixel
  n2=2*n, n2pn=n*n+n, n2mn=n*n-n
  :
  zn=z^n
  zn1=zn-1
  z=z-n2*z*zn1/(n2pn*zn+n2mn),
  |zn1|>=r
}

Halley_n_r { ; Relaxed Halley applied to z^n-1, compare with builtin newtbasin.
             ; p1: n (may be complex).
             ; p2: relaxation coefficient (may be complex).
             ; p3 real: orbit trap radius.
  h=p2, n=p1, r=real(p3), z=pixel
  hn2=2*h*n, n2pn=n*n+n, n2mn=n*n-n
  :
  zn=z^n
  zn1=zn-1
  z=z-hn2*z*zn1/(n2pn*zn+n2mn),
  |zn1|>=r
}

HalleyNova3J { ; HalleyNova Julia sets for z^3-1
               ; p2: Julia parameter
               ; p3 real: orbit trap radius.
  c=p2, r=real(p3), z=pixel
  n2=6, n2pn=12, n2mn=6
  :
  oz=z
  zn=z*sqr(z)
  zn1=zn-1
  z=z-n2*z*zn1/(n2pn*zn+n2mn)+c,
  |oz-z|>=r
}

HalleyNova3M { ; HalleyNova Mandelbrot set for z^3-1
               ; p3 real: orbit trap radius.
  c=pixel, r=real(p3), z=1
  n2=6, n2pn=12, n2mn=6
  :
  oz=z
  zn=z*sqr(z)
  zn1=zn-1
  z=z-n2*z*zn1/(n2pn*zn+n2mn)+c,
  |oz-z|>=r
}

HalleyNovanJ { ; HalleyNova Julia sets for z^n-1
               ; p1: n (may be complex).
               ; p2: Julia parameter
               ; p3 real: orbit trap radius.
  n=p1, c=p2, r=real(p3), z=pixel
  n2=2*n, n2pn=n*n+n, n2mn=n*n-n
  :
  oz=z
  zn=z^n
  zn1=zn-1
  z=z-n2*z*zn1/(n2pn*zn+n2mn)+c,
  |oz-z|>=r
}

HalleyNovanM { ; HalleyNova Mandelbrot set for z^n-1 (SLOW)
               ; p1: n (may be complex).
               ; p3 real: orbit trap radius.
  n=p1, c=pixel, r=real(p3), z=1
  n2=2*n, n2pn=n*n+n, n2mn=n*n-n, ns=n*n, ns1=ns-1
  :
  oz=z
  zn=z^n
  zn1=zn-1
  z=z-n2*z*zn1/(n2pn*zn+n2mn)+c,
  |oz-z|>=r
}

Happy_New_Year {; Formula uses whitesq to cast soft shadow
                ; Created with FracText 1.0 alpha 6 by
                ; Jan Maarten van der Valk
                ; 100256.3721@compuserve.com
                ; 'periodicity=0' and 'passes=1' recommended
                ; Added variable "newpixel". G. Martin, 6/27/99
  x=real(scrnpix)/real(scrnmax), y=(imag(scrnmax)-imag(scrnp\
  ix))/real(scrnmax), z=x+flip(y)
  chrH1 = x<0.1315||x>0.184||(y<0.62825&&y>0.59675)&&x>0.1&&\
  x<0.2155
  chra2 = abs(cabs(z+(-0.27369,-0.61556))-0.02494)<0.01575&&\
  x<0.27369||(abs(cabs(z+(-0.29119,-0.61556))-0.02494)<0.015\
  75&&x>0.29119)&&y>0.61556||((abs(cabs(z+(-0.27369,-0.56569\
  ))-0.02494)<0.01575&&x<0.27369)||(abs(cabs(z+(-0.29119,-0.\
  56569))-0.02494)<0.01575&&x>0.29119))||(x>0.27369&&x<0.291\
  19&&(y<0.5565||(y>0.62475&&y<0.65625)||(y>0.57488&&y<0.606\
  37)))||(x>0.30037&&x<0.33188&&y<0.61556)
  chrp3 = x>0.34938&&x<0.38088&&y<0.65625&&y>0.45937||(abs(c\
  abs(z+(-0.41369,-0.59062))-0.04988)<0.01575&&x>0.38088)
  chrp4 = x>0.49681&&x<0.52831&&y<0.65625&&y>0.45937||(abs(c\
  abs(z+(-0.56113,-0.59062))-0.04988)<0.01575&&x>0.52831)
  xy=2.5*x
  chry5 = y<xy-1.195&&y>xy-1.27982||(y>-xy+2.245&&y<-xy+2.32\
  982)&&y>xy-1.27982&&y<0.65625&&y>0.4375
  test1 = chrH1||chra2&&y>0.525||chrp3||chrp4||chry5&&y<0.7
  chrH6 = x<0.1465||x>0.199||(y<0.60325&&y>0.57175)&&x>0.115\
  &&x<0.2305
  chra7 = abs(cabs(z+(-0.28869,-0.59056))-0.02494)<0.01575&&\
  x<0.28869||(abs(cabs(z+(-0.30619,-0.59056))-0.02494)<0.015\
  75&&x>0.30619)&&y>0.59056||((abs(cabs(z+(-0.28869,-0.54069\
  ))-0.02494)<0.01575&&x<0.28869)||(abs(cabs(z+(-0.30619,-0.\
  54069))-0.02494)<0.01575&&x>0.30619))||(x>0.28869&&x<0.306\
  19&&(y<0.5315||(y>0.59975&&y<0.63125)||(y>0.54988&&y<0.581\
  38)))||(x>0.31538&&x<0.34688&&y<0.59056)
  chrp8 = x>0.36438&&x<0.39588&&y<0.63125&&y>0.43438||(abs(c\
  abs(z+(-0.42869,-0.56562))-0.04988)<0.01575&&x>0.39588)
  chrp9 = x>0.51181&&x<0.54331&&y<0.63125&&y>0.43438||(abs(c\
  abs(z+(-0.57613,-0.56562))-0.04988)<0.01575&&x>0.54331)
  chry10 = y<xy-1.2575&&y>xy-1.34232||(y>-xy+2.2575&&y<-xy+2\
  .34232)&&y>xy-1.34232&&y<0.63125&&y>0.4125
  test2 = chrH6||chra7&&y>0.5||chrp8||chrp9||chry10&&y<0.675
  xCN=2.5*x
  chrN11 = x>0.1&&x<0.1208||(x>0.152&&x<0.1744)||(y>-xCN+0.5\
  1&&y<-xCN+0.56601)
  chre12 = abs(cabs(z+(-0.23615,-0.17875))-0.03835)<0.0104&&\
  (x<0.23615||y>0.17528||y<0.15448)||(y>0.17528&&y<0.19608&&\
  x>0.1978&&x<0.2745)
  xw=4*x
  chrw13 = y<xw-1.15911&&y>xw-1.24487||(y>-xw+1.59244&&y<-xw\
  +1.6782)&&y<0.21667||(y>-xw+1.41911&&y<-xw+1.50487)||(y<xw\
  -1.33244&&y>xw-1.4182)&&y<0.2275
  xCY=2*x
  chrY15 = y<xCY-0.87485&&y>xCY-0.92136||(y>-xCY+1.23885&&y<\
  -xCY+1.28536)&&y>xCY-0.92136
  chre16 = abs(cabs(z+(-0.65243,-0.17875))-0.03835)<0.0104&&\
  (x<0.65243||y>0.17528||y<0.15448)||(y>0.17528&&y<0.19608&&\
  x>0.61408&&x<0.69078)
  chra17 = abs(cabs(z+(-0.74376,-0.19792))-0.01918)<0.0104&&\
  x<0.74376||(abs(cabs(z+(-0.75676,-0.19792))-0.01918)<0.010\
  4&&x>0.75676)&&y>0.19792||((abs(cabs(z+(-0.74376,-0.15958)\
  )-0.01918)<0.0104&&x<0.74376)||(abs(cabs(z+(-0.75676,-0.15\
  958))-0.01918)<0.0104&&x>0.75676))||(x>0.74376&&x<0.75676&\
  &(y<0.1508||(y>0.2067&&y<0.2275)||(y>0.16835&&y<0.18915)))\
  ||(x>0.76553&&x<0.78633&&y<0.19792)
  chrr18 = x>0.79933&&x<0.82013&&y<0.2275||(abs(cabs(z+(-0.8\
  35,-0.19183))-0.02527)<0.0104&&y>0.19183)
  chrXM19 = x>0.88367&&x<0.90447&&(y<0.1508||y>0.1612)
  test3 = chrN11||chre12||chrw13||chrY15||chre16||chra17||ch\
  rr18||chrXM19&&y>0.13&&y<0.26
  chrN20 = x>0.115&&x<0.1358||(x>0.167&&x<0.1894)||(y>-xCN+0\
  .5325&&y<-xCN+0.58851)
  chre21 = abs(cabs(z+(-0.25115,-0.16375))-0.03835)<0.0104&&\
  (x<0.25115||y>0.16028||y<0.13948)||(y>0.16028&&y<0.18108&&\
  x>0.2128&&x<0.2895)
  chrw22 = y<xw-1.23411&&y>xw-1.31987||(y>-xw+1.63744&&y<-xw\
  +1.7232)&&y<0.20167||(y>-xw+1.46411&&y<-xw+1.54987)||(y<xw\
  -1.40744&&y>xw-1.4932)&&y<0.2125
  chrY24 = y<xCY-0.91985&&y>xCY-0.96636||(y>-xCY+1.25385&&y<\
  -xCY+1.30036)&&y>xCY-0.96636
  chre25 = abs(cabs(z+(-0.66743,-0.16375))-0.03835)<0.0104&&\
  (x<0.66743||y>0.16028||y<0.13948)||(y>0.16028&&y<0.18108&&\
  x>0.62908&&x<0.70578)
  chra26 = abs(cabs(z+(-0.75876,-0.18292))-0.01918)<0.0104&&\
  x<0.75876||(abs(cabs(z+(-0.77176,-0.18292))-0.01918)<0.010\
  4&&x>0.77176)&&y>0.18292||((abs(cabs(z+(-0.75876,-0.14458)\
  )-0.01918)<0.0104&&x<0.75876)||(abs(cabs(z+(-0.77176,-0.14\
  458))-0.01918)<0.0104&&x>0.77176))||(x>0.75876&&x<0.77176&\
  &(y<0.1358||(y>0.1917&&y<0.2125)||(y>0.15335&&y<0.17415)))\
  ||(x>0.78053&&x<0.80133&&y<0.18292)
  chrr27 = x>0.81433&&x<0.83513&&y<0.2125||(abs(cabs(z+(-0.8\
  5,-0.17683))-0.02527)<0.0104&&y>0.17683)
  chrXM28 = x>0.89867&&x<0.91947&&(y<0.1358||y>0.1462)
  test4 = chrN20||chre21||chrw22||chrY24||chre25||chra26||ch\
  rr27||chrXM28&&y>0.115&&y<0.245
  xc=1*x
  chrCR29 = abs(cabs(z+(-0.62125,-0.01125))-0.00531)<0.00094\
  ||(abs(cabs(z+(-0.62125,-0.01125))-0.00219)<0.00094&&(x<0.\
  62125||y>xc-0.61||y<-xc+0.6325))
  x1=1.5*x
  chr130 = y<x1-0.92885&&y>x1-0.93223&&y>-x/1.5+0.43208||(x>\
  0.63128&&x<0.63316)
  chr931 = abs(cabs(z+(-0.63738,-0.00859))-0.00266)<0.00094&\
  &y<0.00859||abs(cabs(z+(-0.63738,-0.01391))-0.00266)<0.000\
  94||(x>0.63909&&x<0.64097&&y>0.00859&&y<0.01391)
  chr932 = abs(cabs(z+(-0.64519,-0.00859))-0.00266)<0.00094&\
  &y<0.00859||abs(cabs(z+(-0.64519,-0.01391))-0.00266)<0.000\
  94||(x>0.64691&&x<0.64878&&y>0.00859&&y<0.01391)
  chr633 = abs(cabs(z+(-0.653,-0.01391))-0.00266)<0.00094&&y\
  >0.01391||abs(cabs(z+(-0.653,-0.00859))-0.00266)<0.00094||\
  (x>0.64941&&x<0.65128&&y>0.00859&&y<0.01391)
  chrJ42 = abs(cabs(z+(-0.71081,-0.00859))-0.00266)<0.00094&\
  &y<=0.00812||(x>0.71253&&y>0.00812)&&x<0.71441
  xCM=2.5*x
  chrM43 = y>-xCM+1.80508&&y<-xCM+1.81013||(y<xCM-1.78675&&y\
  >xCM-1.79179)&&y>0.00917||(x>0.71503&&x<0.71691)||(x>0.721\
  84&&x<0.72372)
  xv=3*x
  chrv45 = y>-xv+2.20615&&y<-xv+2.21208||y<xv-2.19615&&y>xv-\
  2.20208&&y<0.01438
  xSL=4*x
  chrSL46 = y<xSL-2.95278&&y>xSL-2.96051
  chrd47 = x>0.75216&&x<0.75403||(abs(cabs(z+(-0.74981,-0.00\
  969))-0.00375)<0.00094&&x<0.75216)
  xCV=3.5*x
  chrV49 = y>-xCV+2.68068&&y<-xCV+2.6875||y<xCV-2.67068&&y>x\
  CV-2.6775
  chra50 = abs(cabs(z+(-0.77344,-0.01156))-0.00188)<0.00094&\
  &x<0.77344||(abs(cabs(z+(-0.77469,-0.01156))-0.00188)<0.00\
  094&&x>0.77469)&&y>0.01156||((abs(cabs(z+(-0.77344,-0.0078\
  1))-0.00188)<0.00094&&x<0.77344)||(abs(cabs(z+(-0.77469,-0\
  .00781))-0.00188)<0.00094&&x>0.77469))||(x>0.77344&&x<0.77\
  469&&(y<0.00688||(y>0.0125&&y<0.01438)||(y>0.00875&&y<0.01\
  062)))||(x>0.77563&&x<0.7775&&y<0.01156)
  chrl51 = x<0.78&&x>0.77813
  xk=1.25*x
  chrk52 = x<0.7825||(y<xk-0.96766&&y>xk-0.97066&&y<0.01438)\
  ||(y>-xk+0.98703&&y<-xk+0.99003&&y<xk-0.96766)&&x>0.78063
  test5 = chrCR29||chr130||chr931||chr932||chr633||chrJ42||c\
  hrM43||chrv45||chrSL46||chrd47||chrV49||chra50||chrl51||ch\
  rk52&&y>0.005&&y<0.0175
  xUA=2*x
  chrUA53 = y<xUA-0.405&&y<-xUA+1.355&&y>=0.395||(x>0.42&&x<\
  0.46&&y<0.395&&(x>0.42667&&x<0.43667||y>0.325))||(abs(cabs\
  (z+(-0.46,-0.325))-0.02)<0.00333&&y<=0.325&&x<0.46)&&y>0.0\
  75
  test6 = chrUA53&&y<0.475
  test=test1||test3
  test0=test2||test4||test5||test6
  test0=test0&&whitesq
  test0=(test0==0)
  test0=((test0||test)==0)
  f1=sin(.5*pixel)
  f2=1/(32*pixel)
  newpixel=(test==0)*f2+test*f1
  z=1+(0,-0.65)/fn3(newpixel+(0,0.75)):
  z2=z*z, z4=z2*z2, n=z4*z2-1, z=z-n/(6*z4*z)
  |n|>=.0001&&test0==0
}


HC_Julstar {; a modified Paul W. Carlson formula
            ; cobbled together by P. DiGiorgi - 10/98
  z = w = iter = range_num = bailout = 0
  pts = real(p2)     ; order of radial symmetry
  colors = imag(p2)  ; use (0)2x125 or (1)4x63 or (2)8x30
  pa = abs(real(p3)), pb = imag(p3)
  IF (colors == 1)
    num_r = 4, num_c = 63
  ELSEIF (colors == 2)
    num_r = 8, num_c = 30
  ELSE
    num_r = 2, num_c = 125
  ENDIF
  w = fn3(abs(log(pixel^pts)/pts))
  c = p1
  i = (0,1)
  k = 1.2 - pb
  :
  c = fn1(fn2(c))
  w = w * w, wr = real(w)
  w = w - wr + abs(wr) - c
  angle = atan(imag(w)/wr)
  ka = k * angle / pb
  rw = k * cos(angle) + pb * cos(ka)
  iw = k * sin(angle) + pb * sin(ka)
  ww = rw + i * iw
  IF (real(p3) >= 0)
    ww = fn4(ww)
  ELSE
    ww = fn4(1 - ww)/ww
  ENDIF
  dist = abs(|w|-|ww|)
  IF (dist < pa && iter > 1)
    bailout = 1
    index = num_c * dist / pa
    z = index + range_num * num_c + 1
  ENDIF
  iter = iter + 1
  range_num = range_num + 1
  IF (range_num == num_r)
    range_num = 0
  ENDIF
  z = z - iter
  bailout == 0 && |w| < 10000
}

He02-01{;V.1.0 - earlier versions may be discarded
; = xHe(1)-He(0)
s=sqrt(2),t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
Tx=s*x*x-1
Ty=s*y*y-1
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

He02-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Newton Method with weird bailout test
         ;
         ; He(n+1) = xHe(n)-nHe(n-1)
         ; He(0)  = 1
         ; He(1)  = sqrt(2)x
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2)
  a=2*s
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=s*z*z-1
  fd=a*z
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}

Heart { ; (c) Jay Hill, 1998
done = 1, z = 0, zc = 0, c = sqrt(pixel+.75)
s=|c|, t1=(256*s - 96)*s + 32*Real(c), t2=16*s + 32*Real(c) + 16
z=z + 251*(t1<=3) + 252*(t2<=1) ; set colors
if(z>0) ; for periods 1, 2
done=-1 ; color is set for c in a component, skip iterations
endif
: ; initialization.
zc=sqr(zc) + c ; standard MSet iteration
if (|zc| >= 4) ; Bailout at 4
done=-1 ; Set flag to force an exit.
endif
done >= 0 ; Continue if the flag >=0.
} 

heart_jul { ; Kerry Mitchell
        ;
        ; colors by how often r < t, where r & t are the
        ; magnitude & polar angle of the fractional part of
        ; the iterate of the Julia set
        ; fills fractal with little hearts
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
        roundfac=p3:
        ;
        ; adjust iterate through arbitrary function and find
        ;   fractional part
        ;
        temp=fn2(zc)/roundfac, frac=temp-fn1(temp)
        r=cabs(frac)
        t=cabs(imag(log(frac))/twopi)
        ;
        ; update counter if conditions are right
        ;
        if (r<t)
          count=count+1
          endif
        ;
        ; bailout
        ;   scale counter into decomposition angle
        ;   set "iteration done" flag (iter = -1)
        ;
        if ((|zc|>maxr)||(iter==maxit))
          angle=speed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
        else
          iter=iter+1
          zc=sqr(zc)+c
        endif
        iter>0
        }

heart_man { ; Kerry Mitchell
        ;
        ; colors by how often r < t, where r & t are the
        ; magnitude & polar angle of the fractional part of
        ; the iterate of the Mandelbrot set
        ; fills fractal with little hearts
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
        roundfac=p2:
        ;
        ; adjust iterate through arbitrary function and find
        ;   fractional part
        ;
        temp=fn2(zc)/roundfac, frac=temp-fn1(temp)
        r=cabs(frac)
        t=cabs(imag(log(frac))/twopi)
        ;
        ; update counter if conditions are right
        ;
        if (r<t)
          count=count+1
          endif
        ;
        ; bailout
        ;   scale counter into decomposition angle
        ;   set "iteration done" flag (iter = -1)
        ;
        if ((|zc|>maxr)||(iter==maxit))
          angle=speed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
        else
          iter=iter+1
          zc=sqr(zc)+c
        endif
        iter>0
        }

HenonJul{
bailout=real(p2)
a=real(p1)
b=imag(p1)
z=pixel:
x=real(z)
z=1+imag(z)-a*sqr(x)+flip(b*x)
|z|<=bailout}

HenonMan{
bailout=real(p2)
z=pixel
a=real(pixel)
b=imag(pixel):
x=real(z)
z=1+imag(z)-a*sqr(x)+flip(b*x)
|z|<=bailout}

herman_alpha { ; Kerry Mitchell 15feb98
        ; real(p1) = z exponent (use integer >= 2; m=n-1)
        ; imag(p1) = coloring speed (try 4)
        ; p2 = c
        ; real(p3) = critical point selector (>0 for positive root)
        ; imag(p3) = unused                  (<0 for negative root)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        alpha=pixel, iter=1, n=real(p1), m=n-1, nfac=2*n-1
        maxr=1e6, minr=1/maxr, speed=imag(p1)*pi/128
        oln=1/log(n), fac=log(0.5*log(maxr)), c=p2
        c2=sqr(c), hypfac=sqr(n)+sqr(m), pn=1
        if (real(p3)<0)
          pn=-1
          endif
        if (real(c2)>hypfac)
          pn=-pn
        endif
        if (imag(c)<0)
          pn=-pn
        endif
        d=sqrt((c2-1)*(c2-sqr(nfac)))
        z=(nfac+c2+pn*d)/(2*n*c)
        :
        g=(z-c)/(1-c*z), z=alpha*z^n*g^m
        iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r<minr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r>maxr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          angle=angle+pi
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        iter>0
        }


herman_jul-cart { ; Kerry Mitchell 15feb98
        ; p1 = Julia parameter
        ; real(p2) = z exponent (use integer >= 2; m=n-1)
        ; imag(p2) = coloring speed (try 4)
        ; p3 = alpha (go nuts)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        z=pixel, c=p1, iter=1, n=real(p2), m=n-1
        maxr=1e6, minr=1/maxr, speed=imag(p2)*pi/128
        oln=1/log(n), fac=log(0.5*log(maxr)), alpha=p3
        :
        g=(z-c)/(1-c*z), z=alpha*z^n*g^m
        iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r<minr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r>maxr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          angle=angle+pi
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        iter>0
        }
 
herman_jul-polar {; Kerry Mitchell 15feb98
        ; p1 = Julia parameter
        ; real(p2) = z exponent (use integer >= 2; m=n-1)
        ; imag(p2) = coloring speed (try 4)
        ; real(p3) = alpha magnitude (try 1)
        ; imag(p3) = alpha polar angle (try integers)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
  z=pixel, c=p1, iter=1, n=real(p2), m=n-1
  maxr=1e6, minr=1/maxr, speed=imag(p2)*pi/128
  r=real(p3), t=imag(p3), alpha=r*(cos(t)+flip(sin(t)))
  oln=1/log(n), fac=log(0.5*log(maxr))
  :
  g=(z-c)/(1-c*z), z=alpha*z^n*g^m
  iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r<minr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r>maxr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    angle=angle+pi
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
}

herman_man-cart { ; Kerry Mitchell 15feb98
        ; real(p1) = z exponent (use integer >= 2; m=n-1)
        ; imag(p1) = coloring speed (try 4)
        ; p2 = alpha (go wild)
        ; real(p3) = critical point selector (>0 for positive root)
        ; imag(p3) = unused                  (<0 for negative root)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        c=pixel, iter=1, n=real(p1), m=n-1, nfac=2*n-1
        maxr=1e6, minr=1/maxr, speed=imag(p1)*pi/128
        oln=1/log(n), fac=log(0.5*log(maxr)), alpha=p2
        c2=sqr(c), hypfac=sqr(n)+sqr(m), pn=1
        if (real(p3)<0)
          pn=-1
          endif
        if (real(c2)>hypfac)
          pn=-pn
        endif
        if (imag(c)<0)
          pn=-pn
        endif
        d=sqrt((c2-1)*(c2-sqr(nfac)))
        z=(nfac+c2+pn*d)/(2*n*c)
        :
        g=(z-c)/(1-c*z), z=alpha*z^n*g^m
        iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r<minr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r>maxr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          angle=angle+pi
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        iter>0
        }

herman_man-polar { ; Kerry Mitchell 15feb98
        ; real(p1) = z exponent (use integer >= 2; m=n-1)
        ; imag(p1) = coloring speed (try 4)
        ; real(p2) = alpha magnitude (try 1)
        ; imag(p2) = alpha polar angle (try integers)
        ; real(p3) = critical point selector (>0 for positive root)
        ; imag(p3) = unused                  (<0 for negative root)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        c=pixel, iter=1, n=real(p1), m=n-1, nfac=2*n-1
        maxr=1e6, minr=1/maxr, speed=imag(p1)*pi/128
        r=real(p2), t=imag(p2), alpha=r*(cos(t)+flip(sin(t)))
        oln=1/log(n), fac=log(0.5*log(maxr))
        c2=sqr(c), hypfac=sqr(n)+sqr(m), pn=1
        if (real(p3)<0)
          pn=-1
          endif
        if (real(c2)>hypfac)
          pn=-pn
        endif
        if (imag(c)<0)
          pn=-pn
        endif
        d=sqrt((c2-1)*(c2-sqr(nfac)))
        z=(nfac+c2+pn*d)/(2*n*c)
        :
        g=(z-c)/(1-c*z), z=alpha*z^n*g^m
        iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r<minr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r>maxr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          angle=angle+pi
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        iter>0
        }

hermanm_alpha { ; Kerry Mitchell 16feb98
        ; real(p1) = z exponent (use integer >= 2; m=n-1)
        ; imag(p1) = g exponent (integers)
        ; p2 = c
        ; real(p3) = critical point selector (>0 for positive root)
        ; imag(p3) = unused                  (<0 for negative root)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        ; coloring speed hardcoded to 4
        c=p2, iter=1, n=real(p1), m=imag(p1), nfac=2*n-1
        maxr=1e6, minr=1/maxr, speed=4*pi/128, alpha=pixel
        oln=1/log(n), fac=log(0.5*log(maxr))
        c2=sqr(c), hypnum=sqr(n)+sqr(m), pn=1
        hypden=sqr(n-m), hypfac=hypnum/hypden
        if (real(p3)<0)
          pn=-1
          endif
        if (real(c2)>hypfac)
          pn=-pn
        endif
        if (imag(c)<0)
          pn=-pn
        endif
        afac=c*n, bfac=c2*(n-m)+(n+m), cfac=c*n
        d=sqrt(bfac*bfac-4*afac*cfac)
        z=(bfac+pn*d)/(2*afac)
        :
        g=(z-c)/(1-c*z), z=alpha*z^n*g^m
        iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r<minr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r>maxr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          angle=angle+pi
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        iter>0
        }

hermanm_jul-cart { ; Kerry Mitchell 16feb98
        ; p1 = Julia parameter
        ; real(p2) = z exponent (use integer >= 2; m=n-1)
        ; imag(p2) = g exponent (integers)
        ; p3 = alpha (go nuts)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        ; coloring speed hardcoded to 4
        z=pixel, c=p1, iter=1, n=real(p2), m=imag(p2), nfac=2*n-1
        maxr=1e6, minr=1/maxr, speed=4*pi/128, alpha=p3
        oln=1/log(n), fac=log(0.5*log(maxr))
        :
        g=(z-c)/(1-c*z), z=alpha*z^n*g^m
        iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r<minr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r>maxr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          angle=angle+pi
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        iter>0
        }

hermanm_jul-polar {; Kerry Mitchell 16feb98
        ; See the end of formula hermanm_alpha for Kerry Mitchell's
        ;  explanation of his hermanm formulas
        ; p1 = Julia parameter
        ; real(p2) = z exponent (use integer >= 2; m=n-1)
        ; imag(p2) = g exponent (integers)
        ; real(p3) = alpha magnitude (try 1)
        ; imag(p3) = alpha polar angle (try integers)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        ; coloring speed hardcoded to 4
  z=pixel, c=p1, iter=1, n=real(p2), m=imag(p2), nfac=2*n-1
  maxr=1e6, minr=1/maxr, speed=4*pi/128
  r=real(p3), t=imag(p3), alpha=r*(cos(t)+flip(sin(t)))
  oln=1/log(n), fac=log(0.5*log(maxr))
  :
  g=(z-c)/(1-c*z), z=alpha*z^n*g^m
  iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r<minr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r>maxr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    angle=angle+pi
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
}

hermanm_man-cart { ; Kerry Mitchell 16feb98
        ; real(p1) = z exponent (use integer >= 2; m=n-1)
        ; imag(p1) = g exponent (integers)
        ; p2 = alpha
        ; real(p3) = critical point selector (>0 for positive root)
        ; imag(p3) = unused                  (<0 for negative root)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        ; coloring speed hardcoded to 4
        c=pixel, iter=1, n=real(p1), m=imag(p1), nfac=2*n-1
        maxr=1e6, minr=1/maxr, speed=4*pi/128, alpha=p2
        oln=1/log(n), fac=log(0.5*log(maxr))
        c2=sqr(c), hypnum=sqr(n)+sqr(m), pn=1
        hypden=sqr(n-m), hypfac=hypnum/hypden
        if (real(p3)<0)
          pn=-1
          endif
        if (real(c2)>hypfac)
          pn=-pn
        endif
        if (imag(c)<0)
          pn=-pn
        endif
        afac=c*n, bfac=c2*(n-m)+(n+m), cfac=c*n
        d=sqrt(bfac*bfac-4*afac*cfac)
        z=(bfac+pn*d)/(2*afac)
        :
        g=(z-c)/(1-c*z), z=alpha*z^n*g^m
        iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r<minr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r>maxr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          angle=angle+pi
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        iter>0
        }

hermanm_man-polar { ; Kerry Mitchell 16feb98
        ; real(p1) = z exponent (use integer >= 2; m=n-1)
        ; imag(p1) = g exponent (integers)
        ; real(p2) = alpha magnitude (try 1)
        ; imag(p2) = alpha polar angle (try integers)
        ; real(p3) = critical point selector (>0 for positive root)
        ; imag(p3) = unused                  (<0 for negative root)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        ; coloring speed hardcoded to 4
        c=pixel, iter=1, n=real(p1), m=imag(p1), nfac=2*n-1
        maxr=1e6, minr=1/maxr, speed=4*pi/128
        r=real(p2), t=imag(p2), alpha=r*(cos(t)+flip(sin(t)))
        oln=1/log(n), fac=log(0.5*log(maxr))
        c2=sqr(c), hypnum=sqr(n)+sqr(m), pn=1
        hypden=sqr(n-m), hypfac=hypnum/hypden
        if (real(p3)<0)
          pn=-1
          endif
        if (real(c2)>hypfac)
          pn=-pn
        endif
        if (imag(c)<0)
          pn=-pn
        endif
        afac=c*n, bfac=c2*(n-m)+(n+m), cfac=c*n
        d=sqrt(bfac*bfac-4*afac*cfac)
        z=(bfac+pn*d)/(2*afac)
        :
        g=(z-c)/(1-c*z), z=alpha*z^n*g^m
        iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r<minr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r>maxr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          angle=angle+pi
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        iter>0
        }

Hill001a       { ; Flattened cardioid by Jay R. Hill, 1998
          ; Classic Mandelbrot set fractal, transformed
          ; Parameter p1: real & imaginary perturbations of z(0)
p = 0.5*exp(Pixel), c=p*(1-p), z = p1:
z = sqr(z) + c,
lastsqr <= 4
}

HorLineia (ORIGIN) {; Tom Schumm
                    ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like a julia
  z = z + p1
  z = Sqr(z)
  imag(z) <= 4          ; Different escape boundry
}

HRing_J { ; This thing is capable of generating Herman rings for alpha
          ; equal to exp(2*pi*i*a), a irrational.
          ; p1: alpha. p2: c. p3: Orbit trap radius about 0, reciprocal is
          ; used for infinity.
          ; Use outside=real, logmap=0, periodicity=0.
  z=pixel, a=p1, c=p2, r=real(p3), rr=1/r, iter=0, done=0:
  z2=sqr(z)
  z=a*z2*(z-c)/(1-c*z)
  iter=iter+1
  IF(lastsqr<r || lastsqr>rr)
    color=iter
    IF(color<1)
      color=1
    ELSEIF(color>127)
      color=127
    ENDIF
    IF(lastsqr<r)
      color=color+127
    ENDIF
    z=color-iter-7
    done=1
  ENDIF
  done==0
}

HRing_J2 { ; This thing is capable of generating Herman rings for alpha
           ; equal to exp(2*pi*i*a), a irrational.
           ; p1: alpha. p2: c. p3: Orbit trap radius about 0, reciprocal is
           ; used for infinity.
           ; Color variant: stretches to maxiter.
           ; Use outside=real, logmap=0, periodicity=0.
  z=pixel, a=p1, c=p2, r=real(p3), rr=1/r, iter=0, done=0:
  z2=sqr(z)
  z=a*z2*(z-c)/(1-c*z)
  iter=iter+1
  IF(lastsqr<r || lastsqr>rr)
    color=(iter/maxit)*127
    IF(color<1)
      color=1
    ELSEIF(color>127)
      color=127
    ENDIF
    IF(lastsqr<r)
      color=color+127
    ENDIF
    z=color-iter-7
    done=1
  ENDIF
  done==0
}

HRing_J256 { ; This thing is capable of generating Herman rings for alpha
             ; equal to exp(2*pi*i*a), a irrational.
             ; p1: alpha. p2: c. p3: Orbit trap radius about 0, reciprocal is
             ; used for infinity.
             ; Color variant: stretches to maxiter outside, decomp-128'd inside.
             ; Use outside=real, logmap=0, periodicity=0.
  z=pixel, a=p1, c=p2, r=real(p3), rr=1/r, iter=0, done=0:
  z2=sqr(z)
  z=a*z2*(z-c)/(1-c*z)
  iter=iter+1
  IF(lastsqr<r || lastsqr>rr)
    IF(lastsqr>rr)
      color=(iter/maxit)*127
      IF(color<1)
        color=1
      ELSEIF(color>127)
        color=127
      ENDIF
    ELSE
      cc=atan(imag(z)/real(z))
      IF(real(z)<0)
        cc=cc+PI
      ELSEIF(real(z)==0)
        IF(imag(z)<0)
          cc=-PI/2
        ELSE
          cc=PI/2
        ENDIF
      ENDIF
      IF(cc<0)
        cc=cc+2*PI
      ENDIF
      color=128+cc*64/PI
    ENDIF
    z=color-iter-7
    done=1
  ENDIF
  done==0
}

HRing_J256b { ; This thing is capable of generating Herman rings for alpha
              ; equal to exp(2*pi*i*a), a irrational.
              ; p1: alpha. p2: c. p3: Orbit trap radius about 0, reciprocal is
              ; used for infinity.
              ; Color variant: stretches to maxiter inside, decomp-128'd outside.
              ; Use outside=real, logmap=0, periodicity=0.
  z=pixel, a=p1, c=p2, r=real(p3), rr=1/r, iter=0, done=0:
  z2=sqr(z)
  z=a*z2*(z-c)/(1-c*z)
  iter=iter+1
  IF(lastsqr<r || lastsqr>rr)
    IF(lastsqr>rr)
      cc=atan(imag(z)/real(z))
      IF(real(z)<0)
        cc=cc+PI
      ELSEIF(real(z)==0)
        IF(imag(z)<0)
          cc=-PI/2
        ELSE
          cc=PI/2
        ENDIF
      ENDIF
      IF(cc<0)
        cc=cc+2*PI
      ENDIF
      color=1+cc*64/PI
    ELSE
      color=(iter/maxit)*127
      IF(color<1)
        color=1
      ELSEIF(color>127)
        color=127
      ENDIF
      color=color+128
    ENDIF
    z=color-iter-7
    done=1
  ENDIF
  done==0
}

HRing_Mc { ; Mandelbrot set slice, c varies, alpha fixed.
           ; p1: alpha. p3: Orbit trap radius about 0, reciprocal is
           ; used for infinity.
           ; Use outside=real, logmap=0, periodicity=0.
  a=p1, c=pixel, r=real(p3), rr=1/r, iter=0, done=0, flag=0, m=maxit
  z=(3+sqr(c)+sqrt(9-10*sqr(c)+sqr(sqr(c))))/(4*c)
  IF(real(c)*real(c)-imag(c)*imag(c)-5>=0)
    flag=1-flag
  ENDIF
  IF(imag(c)<0)
    flag=1-flag
  ENDIF
  IF(flag==1)
    z=(3+sqr(c)-sqrt(9-10*sqr(c)+sqr(sqr(c))))/(4*c)
  ENDIF
  :
  z2=sqr(z)
  z=a*z2*(z-c)/(1-c*z)
  iter=iter+1
  IF(lastsqr<r || lastsqr>rr)
    color=(iter/maxit)*127
    IF(color<1)
      color=1
    ELSEIF(color>127)
      color=127
    ENDIF
    IF(lastsqr<r)
      color=color+127
    ENDIF
    z=color-iter-7
    done=1
  ENDIF
  done==0
}

HRing_Ma { ; Mandelbrot set slice, alpha varies, c fixed.
           ; p2: c. p3: Orbit trap radius about 0, reciprocal is
           ; used for infinity.
           ; Use outside=real, logmap=0, periodicity=0.
  a=pixel, c=p2, r=real(p3), rr=1/r, iter=0, done=0, flag=0, m=maxit
  z=(3+sqr(c)+sqrt(9-10*sqr(c)+sqr(sqr(c))))/(4*c)
  IF(real(c)*real(c)-imag(c)*imag(c)-5>=0)
    flag=1-flag
  ENDIF
  IF(imag(c)<0)
    flag=1-flag
  ENDIF
  IF(flag==1)
    z=(3+sqr(c)-sqrt(9-10*sqr(c)+sqr(sqr(c))))/(4*c)
  ENDIF
  :
  z2=sqr(z)
  z=a*z2*(z-c)/(1-c*z)
  iter=iter+1
  IF(lastsqr<r || lastsqr>rr)
    color=(iter/maxit)*127
    IF(color<1)
      color=1
    ELSEIF(color>127)
      color=127
    ENDIF
    IF(lastsqr<r)
      color=color+127
    ENDIF
    z=color-iter-7
    done=1
  ENDIF
  done==0
}

ht1 {
   ; Ah! You can use a variable in the 
   ; inversion but now check for overflow.
   ; Good results are found when the real part 
   ; of p1 is in the range 0.1->1.0
   ; With some sort of special value aprox. 0.148148...
   ; Setting the imaginary part as well causes very strange fractals
  z = pixel, zp=temp=(0,0), huge=1.0e32:
  temp = z
  z = z*z + zp
  zp = p1/temp 
  (|zp| <= 64) && (|z| <= huge) 
}

htz0 {; From Noel Giffin noel@triumf.ca
      ; some unusual julia intializations
  z = pixel^3:
  z = z*z + p1
  (|z| <= 4.) 
}

hualp (XAXIS) {; (c) Copyright 1996 by Manfred W.Rupp
  z=pixel:
  z=fn1((z^z / (1/z^4)+p1) + pixel)*(1/z^1.257),
  |real(z)| <= real(p2) || |imag(z)| <= imag(p2)
}

HyCycl_Julia {; Copyright (c) Paul W. Carlson, 1998
    z = w = iter = range_num = bailout = 0
    w = pixel
    c = p1
    i = (0,1)
    k = 1.2 - p3
    :
    w = w * w, wr = real(w)
    w = w - wr + abs(wr) - c
    angle = atan(imag(w)/wr)
    ka = k * angle / p3
    rw = k * cos(angle) + p3 * cos(ka)
    iw = k * sin(angle) + p3 * sin(ka)
    ww = rw + i * iw
    dist = abs(|w|-|ww|)
    IF (dist < p2 && iter > 1)
        bailout = 1
        index = 125 * dist / p2
        z = index + range_num * 125 + 1
    ENDIF
    iter = iter + 1
    range_num = range_num + 1
    IF (range_num == 2)
        range_num = 0
    ENDIF
    z = z - iter
    bailout == 0 && |w| < 10000
}

Hyperbolic_Cosine (xaxis) { ;A hyperbolic cosine formula
            ;formulae by Joe McKenzie
            ;email: joemck@crosswinds.net
            ;You may use them freely as long as you:
            ;(1) distribute it as is and
            ;(3) LEAVE IN THIS ENTRY.
  z=0, c=pixel:
    z=cosh(z+c)
    |z| < 4
}

hypercomplex {; Chuck Ebbert -- must use periodicity=0
   ; P1 is (cj,ck), bailout is real(p2) (default 64)
  z = zi = 0,
  t = (64 * (real(p2)<=0) + real(p2) * (0<real(p2)) ):
  a = z - imag(zi) + flip(real(zi)),
  b = z + imag(zi) - flip(real(zi)),
  a = fn1(a),
  b = fn1(b),
  z = (a+b)/2 + pixel,
  zi = (imag(a)-imag(b)+flip(real(b))-flip(real(a)))/2 + p1,
  |z| + |zi| <= t
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
}
 
Ikeda{
;Standard:c1=.4,c2=.9,c3=6;rho=1
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
}

ilvp+fn123 { 
  Ground = pixel+fn1(fn2(fn3(p2*pixel)))+fn1(fn3(fn2(p2*pixel)))
  z=Ground:
  z=sqr(z)+Ground
  |z|<=4 
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
}

inandout02 { ; Modified for if..else logic 3/19/97 by Sylvie Gallet
   ; p1 = Parameter (default 0), real(p2) = Bailout (default 4)
   ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
  IF (p2 <= 0)
     test = 4
  ELSE
     test = real(p2)
  ENDIF
  z = oldz = pixel , moldz = mz = |z| :
  IF (mz <= moldz)
     oldz = z , moldz = mz , z = fn1(z) + p1 , mz = |z|  ;IN
  ELSE
     oldz = z , moldz = mz , z = fn2(z) + p1 , mz = |z|  ;OUT
  ENDIF
  mz <= test
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
   z = oldz = c = pixel , mz = moldz = |z|
   :
   IF (mz > moldz)
      c = c*k
   ENDIF
   oldz = z , moldz = mz , z = fn1(z*z) + c , mz = |z|
   mz <= test
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
}

inandout09 {; Bradley Beacham  [74223,2745]
            ;p1 = Parameter (default 1), real(p2) = Bailout (default 4)
            ;The next line sets k=default if p1=0, else k=p1
  k = ((1) * (|p1|<=0) + p1)
            ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = c = pixel, tgt = fn1(pixel), rt = real(tgt), it = imag(tgt),
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
}

InverseJuliaFnFn {; Pokorny modifie par J.P. Louvet
                  ; P1 = c
                  ; P2 = iter (normalement 4)
  z=pixel
  c=P1:
  z=fn1(1/(fn2(z)^2+c))
  |z|<=P2
}

IslandOfChaos (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=sin(z)/cosxx(z)+pixel
  x=x+1 
  |z|<=4
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
}

J-decomp3 { ; Trinary decomp (c) Jay Hill 1997
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
}

J-decomp7 { ; 7-ary decomp (c) Jay Hill 1997
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
}
 
J-decomp15 { ; 15-ary decomp (c) Jay Hill 1997
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
}
 
J-decomp31 { ; 31-ary decomp (c) Jay Hill 1997
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
}
 
J-decomp63 { ; 63-ary decomp (c) Jay Hill 1997
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
}

jcamp03 {
 u = x = real(pixel)
 v = y = imag(pixel)
 :
 x = x^2 + flip(y^2) + u
 y = 2*u*y + v
 z = x + y
 |z| <= 4
}

jcamp03pc {
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
}

jcamp08 {
	c = pixel
	z = 0
	:
	z = 1 - .5*z^2 + (1/24)*z^4 - (1/720)*z^6 + (1/40320)*z^8-(1/3628800)*z^10 + c
	|z| <= real(p1)
}

jcamp09 {
	c = pixel
	z = 0
	t = 1
	:
	z = t^(imag(p1))*(1 - .5*(z-c)^2 + (1/24)*(z-c)^4 - (1/720)*(z-c)^6 +(1/40320)*(z-c)^8 - (1/3628800)*(z-c)^10)
	t = t + real(p2)
	|z| <= real(p1)
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
}

jfn2fn {
  z=pixel:
  power = fn2(z);
  z = fn1(z)^power + p1,
  |z| < p2
}

Jm_03 {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  z=fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel))*pixel
  |z|<=t
}

Jm_03a {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  z=fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel))+pixel
  |z|<=t
}

Jm_04 {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  z=fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel))
  |z|<=t
}

Jm_06 {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  z=fn1(fn2(fn3((z^z)*pixel)))
  |z|<=t
}

Jm_07 {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  z=fn1(fn2(fn3((z^z)*pixel)))*pixel
  |z|<=t
}

Jm_16 {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  f2=fn2(z),z=fn1(f2)*fn3(fn4(f2))+pixel
  |z|<=t
}

Jm_23 {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  z=fn1(fn2(fn3(z)+pixel*pixel))
  |z|<=t
}

Jm_25 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(z*fn2(z)) + pixel
  |z|<=t
}

Jm_ducks (XAXIS) {; Jm Collard-Richard
   ; Not so ugly at first glance and lot of corners to zoom in.
   ; try this: corners=-1.178372/-0.978384/-0.751678/-0.601683
  z=pixel, tst=p1+4, t=1+pixel:
  z=sqr(z)+t
  |z|<=tst
}

JMaskghost = { ; Ron Barnett, 1998
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
}

JoWe_19_PHC_2 {; Jo Weber [100424,35], 1996  Requires passes=1
  z = c = pixel:
  t=fn1(z)
  z = (c^(sqr(t)))*whitesq-c*fn2(t)*(whitesq==0)
  |z|>=0.5
}

JoWe_19_PHC_4 {; Jo Weber [100424,35], 1996  Requires passes=1
  z = c = pixel:
  t=fn1(z)
  z = (c^(fn2(t)))*whitesq+(c*fn2(t)*(whitesq==0))
}

JoWe55c36a { ; from a modified Carr-formula
            ; 6/1997 JoWeber CIS [100424,35]
c=z=p1/pixel:
z1=fn1(z) + c
z=fn2(z1) + p2
|z| <=p3
 }

JoWe55c36b { ; from a modified Carr-formula
            ; 6/1997 JoWeber CIS [100424,35]
c=z1=z2=p1/pixel:
z1=fn2(fn1(z1) + c) + p2
z2=fn4(fn3(z2) + c) + p2
z=z1*whitesq+z2*(whitesq==0)
|z| <=p3
 }

JoWe55d36a { ; from a modified Carr-formula
            ; 5/1999 JoWeber CIS [100424,35]
c=z=p1/pixel:
z1=fn1(z) + c
z=fn2(z1) + c/p2
|z| <=p3
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
}

jul1-138{
z=pixel:
z=(1-sqr(p1))/sqr(1-p1*fn1(z)),
|z|<=4
}

jul1-146{
z=pixel:
z=sqr(fn1(z))/(1-p1*fn2(z))^5,
|z|<=4}

jul-Triangle{ ; variant of Damien Jones dmj-Mand-Triangle
        ;modified by Kathy Roth
 ; original idea and formula from L. Kerry Mitchell
 ; modified for total continuity by dmj, 9-8-97

 IF (real(p3) == 0)  ; Invalid value for color scale.
   p3 = 75 + flip(imag(p3)) ; Substitute a default value.
 ENDIF
 IF (imag(p3) == 0)  ; Invalid value for bailout.
   p3 = (0,128) + real(p3) ; Substitute a default value.
 ENDIF
 sum = 0    ; Running total.
 done = 1   ; Iteration counter.
 ac = cabs(pixel)  ; Absolute value of pixel (precalc).
 il2 = 1/log(2.0)  ; Inverse log 2 (precalc).
 lp = log(log(imag(p3)))  ; log(log bailout) (precalc).
 f = -1    ; No fractional iteration yet.

 z = pixel, c =p1:  ; Mandelbrot initialization.
 az2 = |z|   ; Save absolute value of first term.
 z = sqr(z) + c   ; Mandelbrot calculation.

 lowbound = abs(az2 - ac) ; Calculate lower bound for sum.
 sum = sum + (cabs(z) - lowbound) / (az2+ac - lowbound)
     ; Ratio between bounds.

 done = done + 1   ; Done one more iteration.
 IF (az2 > imag(p3))  ; Point exceeds bailout.
   IF (f < 0)   ; First time; let it go again.
     f = il2*lp - il2*log(log(cabs(z))) + 2; Fractional iteration.
     oldsum = sum / done  ; Save the average ratio so far.
   ELSE    ; Second time past bailout.
     sum = sum / done  ; Average ratio.
     f = oldsum + (sum-oldsum) * (f-1) ; Interpolate sum.
     z = f * real(p3)  ; Apply color scale.
     z = z - 255*trunc(z/real(255)) ; Wrap at 255.
     z = z - done - 5  ; Return value.
     done = -1   ; Set flag to force an exit.
   ENDIF
 ENDIF

 done >= 0   ; Continue if the flag is clear.
}

jul1-Triangle{; variant of Damien Jones dmj-Mand-Triangle
    ;kathy roth 9-98
   ;p1 does not work
 ; original idea and formula from L. Kerry Mitchell
        ;gravijul by Mark Christenson
        ; modified for total continuity by dmj, 9-8-97

 IF (real(p3) == 0)  ; Invalid value for color scale.
   p3 = 75 + flip(imag(p3)) ; Substitute a default value.
 ENDIF
 IF (imag(p3) == 0)  ; Invalid value for bailout.
   p3 = (0,128) + real(p3) ; Substitute a default value.
 ENDIF
 sum = 0    ; Running total.
 done = 1   ; Iteration counter.
 ac = cabs(pixel)  ; Absolute value of pixel (precalc).
 il2 = 1/log(2.0)  ; Inverse log 2 (precalc).
 lp = log(log(imag(p3)))  ; log(log bailout) (precalc).
 f = -1    ; No fractional iteration yet.

 z = pixel, c =p1:
 az2 = |z|   ; Save absolute value of first term.
 w=fn1(z)
       z=fn3(1/fn2(w*w))                 ;gravijul variant
 lowbound = abs(az2 - ac) ; Calculate lower bound for sum.
 sum = sum + (cabs(z) - lowbound) / (az2+ac - lowbound)
     ; Ratio between bounds.

 done = done + 1   ; Done one more iteration.
 IF (az2 > imag(p3))  ; Point exceeds bailout.
   IF (f < 0)   ; First time; let it go again.
     f = il2*lp - il2*log(log(cabs(z))) + 2; Fractional iteration.
     oldsum = sum / done  ; Save the average ratio so far.
   ELSE    ; Second time past bailout.
     sum = sum / done  ; Average ratio.
     f = oldsum + (sum-oldsum) * (f-1) ; Interpolate sum.
     z = f * real(p3)  ; Apply color scale.
     z = z - 255*trunc(z/real(255)) ; Wrap at 255.
     z = z - done - 5  ; Return value.
     done = -1   ; Set flag to force an exit.
   ENDIF
 ENDIF

 done >= 0   ; Continue if the flag is clear.
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
}

JuliaBC = { ; Z = Z^E + C
  e=p1
  p=real(p2)+PI
  q=2*PI*trunc(p/(2*PI))
  r=real(p2)-q
  C=p3
  Z=Pixel:
    Z=log(Z)
    IF(imag(Z)>r)
      Z=Z+flip(2*PI)
    ENDIF
    Z=exp(e*(Z+flip(q)))+C
  |Z|<4
}

julialyap{ ;P1 the C point P2 the bailout
z=0, c=p1, k=0, l=0, z1=pixel:
z1=z1*z1+c
dz1=2*z1
k=k+1
l=l+log(dz1)
z=l/k
|z1|<=p2
}

jw_jcamp03 { ; modified by JoWeber, May 98
 u = x = real(pixel)
 v = y = imag(pixel)
 :
 x = x^2 + fn1(y^2) + u
 y = 2*u*y + v
 z = x + y
 |z| <= p1
}

jw02_jcamp03 { ; modified by JoWeber, May 98
 z=pixel
 u = x = real(pixel)
 v = y = imag(pixel)
 :
 x = x^2 + fn1(y^2) + u
 y = 2*u*y + v
 z = fn2(x + y)
 |z| <= p1
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
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

k1barn {
     z=pixel:
     z=(z-1)*p1
     bailout <|p2|}

kbarn_Spir_Stalks_Jul {; adapted from Paul W. Carlson, c. 1998
    ;kathy roth
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
}

kbarnCeltic {;adapted from Paul Carlson
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
}

Kim_frm {; for Jiho Kim
   z=0, c=pixel;
   z=z*z+c,
   |cos(z)| <= |exp(c)|
}

koffset_rx=ry_jul { ;adapted from Kerry Mitchell
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
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

kquat_Celtic {;adapted from Paul Carlson by Kathy Roth
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
}

L02-01{;V.1.0 - earlier versions may be discarded
; = ((3-z)L(1)-L(0))/2
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
Tx=x*(x/2-2)+1
Ty=y*(y/2-2)+1
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

L03-01{;V.1.0 - earlier versions may be discarded
; = ((5-z)L(2)-2L(1))/3
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
Tx=x*(x*(3-x/3)/2-3)+1
Ty=y*(y*(3-y/3)/2-3)+1
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

L04-08{;V.1.0 - earlier versions may be discarded
; = ((7-z)L(3)-3L(2))/4
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
Tx=sin(x*(x*(x*(x/8-2)/3+3)-4)+1)
Ty=sin(y*(y*(y*(y/8-2)/3+3)-4)+1)
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

L04-29{;V.1.1 - earlier versions may be discarded
; = ((7-z)L(3)-3L(2))/4
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
Tx=(fn1(x*(x*(x*(x/8-2)/3+3)-4)+1))
Ty=(fn1(y*(y*(y*(y/8-2)/3+3)-4)+1))
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
test=(|Tx|+|Ty|)
test>=bailout && test<=1e30}

L08-08{;V.1.0 - earlier versions may be discarded
; = ((15-z)L(7)-7L(6))/8
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
Tx=sin(x*(x*(x*(x*(x*(x*(x*(x/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1)
Ty=sin(y*(y*(y*(y*(y*(y*(y*(y/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1)
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

L08-13{;V.1.0 - earlier versions may be discarded
; = ((15-z)L(7)-7L(6))/8
r=p1,bailout=real(p2)/10000,z=pixel:
f=z*(z*(z*(z*(z*(z*(z*(z/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1
fd=z*(z*(z*(z*(z*(z*(z/28-2)/3+14)/20-7)+35)/3-28)+28)-8
fdd=(z*(z*(z*(z*(z*(z/12-4)+70)/20-28)/3+35)-56)+28)
oz=z
z=z-f/(fd-fdd*f/(fd+fd))
bailout<=sqrt(|(|z|)-(|oz|)|)}

La08-01 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p2, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+6)*2
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2
  c=d*(a+2)*(2/7),b=c*(a+1)/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b
  Ty=y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
}

Lam_Fnc_3Way {; Copyright (c) Paul W. Carlson, 1998
    ;
    ; real(p1) = escape circle radius squared
    ; imag(p1) = number of iterations to skip
    ; p2       = bailout value for |w|
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
    z = iter = k = range_num = bailout = 0
    w = 0.5
    c = pixel
    prev_modw2 = 1.0e20
    rad2 = real(p1)
    skip_iters = imag(p1)
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    colors_in_range_1 = colors_in_range - 1
    :
    w = c * w * (1 - w)
    w = w - fn1(w)
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
    bailout == 0 && |w| <= p2
}

lambdafroth2m(XYAxis){
bailout=(4*(|p2|<=0)+p2) ;I haven't actually got 19.6 yet
z=lambda=pixel:
z=lambda*z-lambda/z
z=lambda*z-lambda/fn1(z)
|z|<=bailout
}

lambdafroth4m(XYAxis){
bailout=(4*(|p2|<=0)+p2)
z=lambda=pixel:
z=lambda*z-lambda/z
z=lambda*z-lambda*fn1(fn2(z))
|z|<=bailout}
}

Langolier {
        z = 0, c = pixel:
        z = (c / (-.013579, .2468)) + fn1(z)^2
        |z| < 4
}

Langolier2 { ; Nature102
            ; suggested by generalized by Jay Hill
            ; try p1= -.013579, .2468
  IF( |p1| == 0) 
    p1 = 1 ; default, don't want zero divide
  ENDIF
  IF( |p2| == 0) 
    p2 = 16 ; default bailout
  ENDIF
  z = 0, c = pixel, bailout = real(p2):
  z = c / p1 + fn1(z)^2
  |z| < bailout
}

Langolier3 { ; Nature102
            ; preferred generalization by Jay Hill
            ; try non-zero p1 
  IF( |p2| == 0) 
    p2 = 16 ; default bailout
  ENDIF
  z = 0, c = pixel, bailout = real(p2):
  z = p1*c + fn1(z)^2
  |z| < bailout
}

Larry {; Mutation of 'Michaelbrot' and 'Element'
    ; Original formulas by Michael Theroux [71673,2767]
    ; Modified for if..else logic 3/19/97 by Sylvie Gallet
    ; For 'Michaelbrot', set FN1 & FN2 =IDENT and P1 & P2 = default
    ; For 'Element', set FN1=IDENT & FN2=SQR and P1 & P2 = default
    ; p1 = Parameter (default 0.5,0), real(p2) = Bailout (default 4)
   z = pixel
    ; The next line sets c=default if p1=0, else c=p1
   IF (real(p1) || imag(p1))
      c = p1
   ELSE
      c = 0.5
   ENDIF
    ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
   IF (real(p2) <= 0)
      test = 4
   ELSE
      test = real(p2)
   ENDIF
   :
   z = fn1(fn2(z*z)) + c
   |z| <= test
}

LeeMandel1 (XYAXIS) {; Kevin Lee
  z=Pixel:
   ;; c=sqr(pixel)/z, c=z+c, z=sqr(z),  this line was an error in v16
  c=sqr(pixel)/z, c=z+c, z=sqr(c)
  |z|<4
}

LeeMandel2 (XYAXIS) {; Kevin Lee
  z=Pixel:
  c=sqr(pixel)/z, c=z+c, z=sqr(c*pixel)
  |z|<4
}

Lesfrm13 { ; Les St Clair, 1996
 z = pixel 
 x = fn1(z) , y = fn2(z):
 x = x*p1*pi
 y = y*p2*pi 
 z = x/y
 |z| <= 4
}

Lesfrm16 {; Les St Clair, 1996
  z = c = pixel:
  x = p1*fn1(z)
  y = p2*fn2(z)
  x1= x*x
  y1= y*y
  z = c + x1/y1
  |z| <= 4
}

Lesfrm34 {; Modified Sylvie Gallet formula
          ; Modified Gallet-5-08
          ; Les St Clair 1997
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z = pixel*pi, x = real(z), y = imag(z):
  x1 = x - p1*fn1(y + 0.5*fn2(y+fn1(x)) + fn3(p2*x))  
  y1 = y - p1*fn1(x + 0.5*fn2(x+fn1(y)) + fn3(p2*y)) 
  x = x1^pi, y = y1^pi
  z = (x + flip(y))^pi
  |z| <= 32
}

Liar1 {; by Chuck Ebbert.
       ; X: X is as true as Y
       ; Y: Y is as true as X is false
       ; Calculate new x and y values simultaneously.
       ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = pixel:
  z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z) ) )
  |z| <= 1
}

LL1-01 (XAXIS) {; first try
	z=0, c=pixel:        ;initialization
	z=z^2+c,             ;iteration
	z<=4                 ;bailout
	}

LL1-05 {; try variables
	z = pixel, g = p1*z*z, b = p1 + 2 :
	z = cos(z) * g - z
	z < b
	}

LL1-09  {z=pixel,b=p2+1:
	z=fn2(p1*fn1(z))
	|z|<b}

LL1-12  {z=0,p=pixel,a=p1*p*p*p:
	z=fn2(fn1(a))*fn3(z)
	z<p2+2}

LL2-01  { ; overlay LL1-06 and LL1-09
	z = pixel,c = (p1+1)*fn2(z*z*z),b1 = p2+3,b2 = p2+1:
	IF (whitesq)
	  z = fn1(z)*z*z+c
	  PHC_bailout = |z| < b1
	ELSE
	  z = fn2(p1*fn1(z))
	  PHC_bailout = |z| < b2
	ENDIF
	PHC_bailout}	  

LL2-02  { ; overlay LL1-08 and LL1-11
	z = pixel,c = fn2(z^p1),b1 = p2+3,b2 = p2+1:
	IF (whitesq)
	  z = fn1(z)*z*z+c
	  PHC_bailout = |z| < b1
	ELSE
          z = p1*fn2(z*z*z*fn1(z)) + fn1(fn2(fn3(z)))
	  PHC_bailout = z < b2
	ENDIF
	PHC_bailout}	  

LL2-03  { ; overlay LL1-11 and LL1-06
	z = pixel,c = (p1+1)*fn2(z*z*z),b1 = p2+3,b2 = p2+1:
	IF (whitesq)
	  z = p1*fn2(z*z*z*fn1(z)) + fn1(fn2(fn3(z)))
	  PHC_bailout = z < b2
	ELSE
	  z = fn1(z)*z*z+c
	  PHC_bailout = |z| < b1	
	ENDIF
	PHC_bailout}	  

LL2-04  { ; overlay LL1-09 and LL1-08
	z = pixel,c = fn2(z^p1),b1 = p2+3,b2 = p2+1:
	IF (whitesq)
	  z = fn2(p1*fn1(z))
	  PHC_bailout = |z| < b2
	ELSE
	  z = fn1(z)*z*z+c
	  PHC_bailout = |z| < b1
     	ENDIF
	PHC_bailout}

LL2-05  { ;
	z = pixel,c = sqr(fn2(z)),b1 = p2+3,b2 = p2+1:
	IF (whitesq)
	  z = (fn1(z))^p1 - fn2(p1)
	  PHC_bailout = z < b2
	ELSE
	  z = fn1(c)*z*z+c
	  PHC_bailout = |z| < b1
     	ENDIF
	PHC_bailout}

Log_Ser_3Way {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = escape circle radius squared
    ; imag(p1) = number of iterations to skip
    ; real(p2) = number of color ranges
    ; imag(p2) = number of colors in a range
    ;
    z = w = k = iter = range_num = bailout = 0
    c = pixel
    prev_modw2 = 1.0e20
    rad2 = real(p1)
    skip_iters = imag(p1)
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    factor = (colors_in_range - 1) / rad2
    :
    w2=w*w, w4=w2*w2, w6=w2*w4, w8=w4*w4, w10=w6*w4, w12=w6*w6
    w = w2 - w4/2 + w6/3 - w8/4 + w10/5 - w12/6 + c
    ;
    IF ((prev_modw2 < rad2) && (|w| > rad2))
	bailout = 1
	IF (iter > skip_iters)
	    k = 1
	ENDIF
	z = (factor*(rad2-prev_modw2)+range_num*colors_in_range+1)*k
    ENDIF
    prev_modw2 = |w|
    range_num = range_num + 1
    IF (range_num == num_ranges)
	range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 1.0e20
}

LorentzJ{; Julia Set for LorentzM
	  ;keep p1 between 0 and 1, <0.7 is best
	  ;p2=julia parameter
	  ;p3=bailout
z=pixel
c=p2:
z=sqrt(1-(z*z)/(p1*p1))+c
|z|<=p3
}

LorentzM{; Mutated Mandelbrot set based on Lorentz contraction
	  ;keep p1 between 0 and 1, <0.7 is best, negative values mirror
	  ;Re(p1)=Im(p1) -> 0 converges to standard Mandel rotated by 90 deg.
	  ;Size increases with |p1|
	  ;p2=unused
	  ;p3=bailout
z=0 
c=pixel:
z=sqrt(1-(z*z)/(p1*p1))+c
|z|<=p3
}

LorentzM_FB {; Copyright (c) Paul W. Carlson, 1998
    ;keep p1 between 0 and 1, <0.7 is best, negative values mirror
    ;Re(p1)=Im(p1) -> 0 converges to standard Mandel rotated by 90
    ;Size increases with |p1|
    ; real(p2) = radius of center of ring (0.01 to 10)
    ; imag(p2) = one half thickness of ring (0.01 to real(p2))
    ; real(p3) = bailout test value
    ; imag(p3) = iterations to skip
    c = pixel
    w = z = iter = bailout = 0
    k = real(p2)
    d0 = k + imag(p2)
    test = real(p3)
    skip = imag(p3)
    d1 = 0.382683432365 * k
    d2 = 0.923879532511 * k
    dsqd = d0 * d0 + k * k - (d0 + d0) * d2:
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; Oliver Klimek's Lorentz equation (using w instead of z)
    w = sqrt(1 - (w * w) / (p1 * p1)) + c
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    IF ((abs(cabs(w) - k) < imag(p2)) && iter > skip)
	bailout = 1
	wr = real(w), wi = imag(w)
	awr = abs(wr), awi = abs(wi)
	IF (awr >= awi)
	    dist = (awr - d2)*(awr - d2) + (awi - d1)*(awi - d1)
	    adjust = 1
	ELSE
	    dist = (awr - d1)*(awr - d1) + (awi - d2)*(awi - d2)
	    adjust = 0
	ENDIF
	IF     (wr >= 0 && wi >= 0)
	    range_num = 1 - adjust
	ELSEIF (wr < 0 && wi >= 0)
	    range_num = 2 + adjust
	ELSEIF (wr < 0 && wi < 0)
	    range_num = 5 - adjust
	ELSE
	    range_num = 6 + adjust
	ENDIF
	ratio = sqrt(dist / dsqd)
	z = 29 * ratio + range_num * 30 + 1
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < test
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
}

Mandel_lake { ; Sylvie Gallet, Jan 16, 2000
; This file requires fractint 20.0.6 or later
;
;
; p1: Julia seed
; real part of p2: bailout value
; imag part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; This formula uses the new predefined variables:
; center  = (x  , y)
; magxmag = (mag, xmagfactor)
; rotskew = (rot, skew)

bailout = real(p2)

; Lake transformation
; -------------------

if (imag(p2) > 0 && imag(p2) <= 100)

  level = imag(p2) / 100         ; water level
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency

  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))

; The complex numbers u and v are defined as follow:
;   u = bottom_right_corner - bottom_left_corner
;   v = top_left_corner - bottom_left_corner

  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot

; Bottom_left_corner:
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot

  z = pixel - z3rd

; solves the equation z = a*u + b*v which is equivalent to the system:
;   re_z = a * re_u + b * re_v
;   im_z = a * im_u + b * im_v
; the solution (a,b) is:
;       | re_z   re_v |        | re_u   re_z |
;       | im_z   im_v |        | im_u   im_z |
;   a = ---------------    b = ---------------
;       | re_u   re_v |        | re_u   re_v |
;       | im_u   im_v |        | im_u   im_v |
;
; Only b is used and 0 <= b <= 1
;   b = 0  <==>  pixel at the bottom of the screen
;   b = 1  <==>  pixel at the top of the screen
;
; Since the formula parser uses complex numbers, I thought the
; easiest way to calculate b was:

  b = imag(conj(u)*z) / imag(conj(u)*v)

; the heart of the lake transform:
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v 
  endif

  z = z + z3rd

else
  z = pixel
endif

; Classic mandel/julia formula
if (ismand)
  c = z
else
  c = p1
endif
:
z = z*z + c
|z| <= bailout
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
}

MandelbrotBC = { ; Z = Z^E + C
  e=p1
  p=real(p2)+PI
  q=2*PI*trunc(p/(2*PI))
  r=real(p2)-q
  Z=C=Pixel:
    Z=log(Z)
    IF(imag(Z)>r)
      Z=Z+flip(2*PI)
    ENDIF
    Z=exp(e*(Z+flip(q)))+C
  |Z|<4
}

MandelbrotMiN {; Jim Muth
b=p1, z=p2, c=p3+pixel:
z=(-z)^(b)+c,
|z| <= 16
}

Mandelbrot+ { ;addition to the Mandelbrot formula
            ;formulae by Joe McKenzie
            ;email: joemck@crosswinds.net
            ;You may use them freely as long as you:
            ;(1) distribute it as is and
            ;(3) LEAVE IN THIS ENTRY.
              ;two parameters:
              ;(1) function for z
              ;(2) function for c
  z=0, c=pixel:
    z=z*z+c+fn1(z)+fn2(c)
    |z| < 4
}

MandelbrotMix {; Jim Muth
z=p3, c=pixel,
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2):
z=(a*(z^b))+(d*(z^f))+c,
|z| <= 100
}

MandelbrotMix4 {; Jim Muth
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2), g=1/f
  h=1/d, j=1/(f-b), z=(-a*b*g*h)^j, k=real(p3)+1
  l=imag(p3)+100, c=fn1(pixel):
  z=k*((a*(z^b))+(d*(z^f)))+c
  |z| < l
}

MandelbrotMix4_v1 {; Jim Muth
  c=pixel, a=real(p1), b=imag(p1), d=real(p2), f=imag(p2)
  g=1/f, h=1/d, j=1/(f-b), z=(-a*b*g*h)^j:
  z=(a*(z^b))+(d*(z^f))+c
  |z| <= 100
}

MandelbrotMix4a {; Jim Muth
; "a" suffix added by L.StClair 3/6/99
; to differentiate this version from the one previously posted
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2), g=1/f,
h=1/d, j=1/(f-b), z=(-a*b*g*h)^j, k=real(p3)+1,
l=imag(p3)+100, c=fn1(pixel):
z=k*((a*(z^b))+(d*(z^f)))+c,
|z| < l
}

MandelbrotMix5 {; Jim Muth
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2), g=1/f,
h=1/d, j=1/(f-b), z=(-a*b*g*h)^j, k=real(p3)+1,
l=imag(p3)+1, c=pixel:
z=k*((a*(z^b))+(d*(z^f)))+c^l,
|z| < 100
}

MandelbrotMix6 {; Jim Muth
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2), g=1/f,
h=1/d, j=1/(f-b), z=(-a*b*g*h)^j, k=real(p3)+1,
l=imag(p3)+100, c=pixel*k:
z=(a*(z^b))+(d*(z^f))+c,
|z| <= l
} 

MandelbrotPanorama { ; Jay Hill, 1998
              ; Panorama Mandelbrot set
  z = 0, c = exp(flip(pixel))+p2:
    z = z*z + c
    |z| < 4
}

MandelLattes(XYAxis)){
bailout=real(p2)+100
z=c=pixel:
zz=sqr(z)
z=c*((zz+2)*zz+1)/(z*(zz-1))
|z|<=bailout}

MandelLattesGen(Origin){
bailout=real(p2)+100
z=c=pixel:
zz=sqr(z)
z=c*fn1(zz+1)/(z*(zz-1))
|z|<=bailout}

MandEllipse {; Uses an ellipse rather then a circle for the bailout
   ; value.  real(P1) is the square of it's width, and
   ; imag(P2) is the square of it's height.
 z = 0, c = pixel, a = real(p1), b = imag(p1):
 z = z * z + c
 real(z) * real(z) / a + imag(z) * imag(z) / b < 1
 }

MandelPM {; Jim Muth
z=p1+10^(-100), c=pixel:
z=p2*((-z)^p3+z^p3)+c,
|z| <= 250
}

MandExpGhost = { ; Ron Barnett, 1998  - modified from Kerry Mitchell
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
        }

mandlyap{ ;P1 is the bailout
z=0, c=pixel, k=0, l=0, z1=0:
z1=z1*z1+c
dz1=2*z1
k=k+1
l=l+log(dz1)
z=l/k
|z1|<=p1
}

MandNewt02 { ; Jim Muth
z=c=pixel:
a=z^p1+(c-1)*z-c
b=3*z^p2+c-1
z=z-p3*a/b
.000000000000000000000000000001 <= |a|
}

MandNewt06 {; Jim Muth
z=c=(pixel*p1):
a=z^3+(c-p2)*z-c
b=p3*z^2+c-1
z=z-1*a/b
.000000000000000000000000000001 <= |a|
}

MandNewt11 {; Jim Muth
            ; Replaced variable "e" with "ee" 5/05/99. G. Martin
  z=g=pixel, a=real(p1), b=imag(p1), c=real(p2)
  d=imag(p2), ee=real(p3), f=imag(p3):
  h=z^a+(g-b)*z-f
  j=c*z^d+g
  z=z-ee*h/j
  .0000000000000000000000000000005 <= |h|
}


MandNewt12 {; Jim Muth
            ; Replaced variable "e" with "ee" 5/05/99. G. Martin
  z=g=pixel, a=real(p1), b=imag(p1), c=real(p2)
  d=imag(p2), ee=real(p3), f=imag(p3):
  h=z^a+(g-1)*(z-b)
  j=c*z^d+g
  z=z-ee*h/(f*j)
  .0000000000000000000000000000005 <= |h|
}

ManInTheOzone (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=cos(z)+pixel
  z=sin(z)+pixel
  x=x+1 
  |z|<=4 
}

ManLakefnfn  {  ; combines Mandel_lake  by Sylvie Gallet withMandel(fn||fn)
                            ; function=fn1/fn2            
                            ; p1 = Julia seed
                            ; real(p2) = bailout value
                            ; imag part of p2: 0 = lake transform disabled
                            ;                  any value between 0 and 100: water level in % of
                            ;                  the screen height (0 = bottom, 100 = top)
                            ; real part of p3: amplitude of the wave (try 0.2)
                            ; imag part of p3: frequency (try 300)                       

bailout = real(p2),  shift = 0.5

; Lake transformation
; -------------------

if (imag(p2) > 0 && imag(p2) <= 100)

  level = imag(p2) / 100         ; water level
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency

  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))

; The complex numbers u and v are defined as follow:
;   u = bottom_right_corner - bottom_left_corner
;   v = top_left_corner - bottom_left_corner

  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot

; Bottom_left_corner:
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot

  z = pixel - z3rd

; solves the equation z = a*u + b*v which is equivalent to the system:
;   re_z = a * re_u + b * re_v
;   im_z = a * im_u + b * im_v
; the solution (a,b) is:
;       | re_z   re_v |        | re_u   re_z |
;       | im_z   im_v |        | im_u   im_z |
;   a = ---------------    b = ---------------
;       | re_u   re_v |        | re_u   re_v |
;       | im_u   im_v |        | im_u   im_v |
;
; Only b is used and 0 <= b <= 1
;   b = 0  <==>  pixel at the bottom of the screen
;   b = 1  <==>  pixel at the top of the screen
;
; Since the formula parser uses complex numbers, I thought the
; easiest way to calculate b was:

  b = imag(conj(u)*z) / imag(conj(u)*v)

; the heart of the lake transform:
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v 
  endif

  z = z + z3rd

else
  z = pixel
endif

; Classic mandel/julia formula
if (ismand)
  c = z
else
  c = p1
endif

:  ; (the all important colon - now iterate the following)

if (z*z <= shift)
  z = fn1(z) + c
else
  z = fn2(z) + c
endif
|z| <= bailout
}

Many_mods {; Linda Allison May 15,1997
               ; modified by Sylvie Gallet
               ; modified again by Linda Allison
               ; and again by David Shanholtzer
               ; 1st parameter: real(p1) = bailout
               ; 2nd parameter: imag(p1) = number of sides
z=0,
c=0.4*log(sqr(pixel^imag(p1))):
z2=fn1(z)+c,
sqz2=fn2(z2),
z=c*(1-sqz2)/(1+sqz2),
|z| <= p1
}

May-2    { ; Sylvie Gallet, Dec 1997
           ; Newton's method applied to z^3 - 1 = 0
           ; Use decomp = 256 and periodicity = 0
 z1 = pixel , iter = 0 , j = -0.5 + flip(sqrt(0.75)) , k = conj(j)
 a = p1*(0,0.0245436)    ; real(p1) * 2i pi / 256
 :
 mz = cabs(z1)
 z2 = z1*z1
 z1 = ((2.5,-0.7)*z1*z2 + (0.5,0.7)) / (3*z2)
 dz = abs(real(z1+0.5))
 if (dz > 0.1)
   dz = abs(real(z1*j+0.5))
   if (dz > 0.1)
     dz = abs(real(z1*k+0.5))
   endif
 endif
 if (dz <= 0.1)
   z = exp((iter + 10*dz)*a) , cont = 0
 elseif (mz <= 0.25)
   z = exp((256/p1-1 + 4*mz)*a) , cont = 0
 else
   iter = iter + 1 , cont = 1
 endif
 cont
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
}

minmaxc_jul { ; Kerry Mitchell
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
        if ((rzc>lo)&&(rzc<hi))
          z=-1
          endif
        rzc < r
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
}

mongo-12 {
  z = pixel, c = (fn1(pixel) * p1):
  x = abs(real(z));
  y = abs(imag(z));
  a = (x <= y) * (fn2(z) + y + c);
  b = (x > y) * (fn2(z) + x + c);
  z = a + b,
  |z| <= p2
}

Mosaic {;  p1=Mandelbrot set coordinates
z=c=p1+.05*(fn1(fn2(real(pixel)))+\
flip(fn3(fn4(imag(pixel))))):
z=sqr(z)+c,
|z| <= 100
}

MMix4-lake-0061 { ; 6990609 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-150,1.5)
p_p2 = (1.5,150)
p_p3 = (-0.9949,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0078 { ; 6990716 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-111,111)
p_p2 = (11,1)
p_p3 = (-0.9,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0139 { ; 6991107 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = -10^(-97) + flip(100)
p_p2 = (-100,1)
p_p3 = (-0.9898,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0139B { ; 6991107 - Formula by Sylvie Gallet & Jim Muth
;
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = -1e-97 + flip(100)
p_p2 = (-100,1)
p_p3 = (-0.9898,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0162 { ; 6991209 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (10,100)
p_p2 = (0.1,1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0169 { ; 6991223 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-3,-3)
p_p2 = (1,1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0177 { ; 6991231 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-11)
p_p2 = (-10,1)
p_p3 = (-0.88,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0197 { ; 6000122 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.6,0.6)
p_p2 = (-0.6,0.666)
p_p3 = (23.25,1000)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0203 { ; 6000130 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,365)
p_p2 = (-1,363)
p_p3 = (971,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0227 { ; 6000228 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-9999)
p_p2 = (1.3,2)
p_p3 = (-0.5,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0238 { ; 6000311 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1.5)
p_p2 = (-3,0.5)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0257 { ; 6000401 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,100)
p_p2 = (-2,0.01)
p_p3 = (35,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j ,
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0267 { ; 6000412 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1)
p_p2 = (1,-1.1)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0270 { ; 6000417 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1.1)
p_p2 = (-1,-1.11)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j ,
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0300 { ; 6ml30001 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.5,2)
p_p2 = (0.5,-33)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0303 { ; 6000524 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-0.3)
p_p2 = (1,-3)
p_p3 = (-0.5,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0304 { ; 6000525 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-0.5)
p_p2 = (1,-5)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0325 { ; 6000625 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-2)
p_p2 = (1,-200)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

mt_990128f { ;Mark Townsend, 28-01-99
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
  if (|z| < |s|)
     s = z
  endif
  if (abs(real(z)) < real(p2)) ; caught by Y axis
     z = fn2(z)^real(p1)
     iter = 0
  elseif (abs(imag(z)) < imag(p2)) ; caught by X axis
     z = fn3(z)^imag(p1)
     iter = 0
  elseif (|z| > 4)
     z  = fn4(s)
     iter = 0
  endif
  iter > 0
  }

multifract1 = { ; Ron Barnett, January 1999
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
}

multirot-XY-ZW {;draws all 6 planes and many rotations
;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2,
c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
z=sqr(z)+c,
|z| <= 36  }

multirot-XZ-YW {; Jim Muth
   ; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
   ; Replaced variable "e" with "ee" 5/05/99. G. Martin
  ee=exp(flip(real(p1*.01745329251994)))
  f=exp(flip(imag(p1*.01745329251994)))
  z=f*real(pixel)+p2, c=ee*imag(pixel)+p3:
  z=sqr(z)+c
  |z| <= 36  
}

multirot05-XZ-YW {; Jim Muth
; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
e=exp(flip(real(p1*.01745329251994))),
f=exp(flip(imag(p1*.01745329251994))),
z=f*real(pixel)+p2, c=e*imag(pixel)+p3:
z=z*(sqr(sqr(z)))+c,
|z| <= 36  }

Mutant_demo { ; Oliver Klimek's TripleMutant formula
                  ; as modified by Paul Carlson, 1998
    ; real(p1) = iteration count
    ;
    w = z = bailout = iter = 0
    c = pixel
    pt1 = (2.5,2.5),  pt2 = (-2.5,2.5),  pt3 = (2.5,-2.5)
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
}

Mutant_End { ; Oliver Klimek's TripleMutant formula
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
}

Mutant_Start { ; Oliver Klimek's TripleMutant formula
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
}

nearline-theta_jul { ; Kerry Mitchell
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
        if (r<minr)
          minr=r
          endif
        ;
        ; bailout--take log of minimum distance as decomp angle
        ;
        if ((rzc>maxr)||(iter==maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }
 
nearline01_jul { ; Kerry Mitchell
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
        if (r<minr)
          minr=r
          endif
        ;
        ; bailout--take log of minimum distance as decomp angle
        ;
        if ((rzc>maxr)||(iter==maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }
 
nearline02_jul { ; Kerry Mitchell
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
        if (r<minr)
          minr=r
          endif
        ;
        ; bailout--take log of minimum distance as decomp angle
        ;
        if ((rzc>maxr)||(iter==maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }
 
nearline03_jul { ; Kerry Mitchell
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
        if (r<minr)
          minr=r
          endif
        ;
        ; bailout--take log of minimum distance as decomp angle
        ;
        if ((rzc>maxr)||(iter==maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }
 
nearline-theta_man { ; Kerry Mitchell
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
        if (r<minr)
          minr=r
          endif
        ;
        ; bailout--take log of minimum distance as decomp angle
        ;
        if ((rzc>maxr)||(iter==maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }

newCGNewtonSinExp (XAXIS) {
z=pixel:
z1=exp(z)
z2=sin(z)+z1-z
z=z-p1*z2/(cos(z)+z1)
p2 < |z2|   ; p2 small like .0000001 or smaller, not zero
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
    w = sqrt((1 - c) / 6)  ;value where F''(w) = 0
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
        IF     (((wr-1) * (wr-1)) < t && (wi * wi) < t)
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
}

Newt2_Stalks_Mset {; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Newton's solution of (w*w-c*c)*(w*w+1/(c*c))=0
    ; Always use floating point math and outside=summ.
    ;
    ;   real(p1) = a factor controlling the size of the stalks
    ;   imag(p1)   not used
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in a range
    ;   real(p3) = value of |w| for bailout
    ;   imag(p3) = iterations count for early exit
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    c = pixel
    csqd = c * c
    icsqd = 1 / csqd
    sc = sqrt(-icsqd)
    cr1 = real(c),  ci1 = imag(c)
    cr2 = real(sc), ci2 = imag(sc)
    a = csqd - icsqd
    w = sqrt(a / 6) ; value where F''(w) = 0
    z = 0
    bailout = 0
    iter = 0
    stalk_width = real(p1)
    range_num = 0
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    index_factor = (colors_in_range - 1) / stalk_width:
    ;
    w = (3 * (w^4) - a * (w^2) + 1) / (4 * (w^3) - 2 * a * w)
    ;
    wr = real(w), wi = imag(w)
    IF (abs(wr) <= abs(wi))
        min_dist = abs(wr)
    ELSE
        min_dist = abs(wi)
    ENDIF
    ;
    IF (min_dist < stalk_width && iter > 0)
        z = index_factor * min_dist + range_num * colors_in_range + 1
        bailout = 1
    ENDIF
    ;****************************************************
    ; If we're no longer looking for stalks, check if
    ; we've converged on a root.
    ;****************************************************
    IF (iter > imag(p3))
        IF     (((wr-cr1) * (wr-cr1) + (wi-ci1) * (wi-ci1)) < 0.00001)
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
    ;
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    ;
    iter = iter + 1
    z = z - iter
    ;
    (bailout == 0) && |w| < real(p3)
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
}

Newt3_Atan_Mset {; Original formula by Paul Carlson
                       ; with optimizations by Sylvie Gallet
    ; F(w)   = w^3 + (c - 1) * w - c
    ; F'(w)  = 3 * w^2 + c - 1
    ; F''(w) = 6 * w,  so initialize w to zero
    ;
    ; p1 contols the "layering"
    ;
    c = pixel , c1 = c - 1
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
        IF     (|w - root1| < p1)
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
        IF     (|w - root1| < p1)
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
}

Newt6-JAtan-Mset {; (c) Jay R. Hill, 1998
         ; Newton method set up as a Mandelbrot set
         ; This formula searches for 6 roots of a function
         ; Inspired by Paul Carlson's Newt5_Atan_Mset 
  ; p1=precision of root finding, try =.001
  ; p2=A=scaling constant in formula, try =1
  ; F(w)   = w^6 - A*w^5 - w*c + A*c
  ; F'(w)  = 6*w^5 - 5*A*w^4 - c
  ; F''(w) = 30*w^4 - 20*A*w^3
  ; Set F''=0, solve for initial w, 20*A/30 = 2*A/3
  ;
  c = pixel, A=p2, z = iter = bailout = 0
  colors_in_range = 42
  R5=sqrt(5), R=1-.5*sqrt(5-3*R5-sqrt(10*R5-50)), R2=sqr(R)
  root1 = A, root2 = c^.2, root3 = root2*R, root4 = root2*R2
  root5 = root4*R, root6 = root4*R2
  w = 2*A/3
  :
  w4 = w^4
  deltaw=((w*w4 - A*w4 - c)*w + A*c)/(6*w*w4 - 5*A*w4 - c)
  w = w - deltaw
  ;
  IF (|deltaw| < p1)
    angle=abs(imag(log(deltaw)))
    range_num = (|w - root2| < p1)+2*(|w - root3| < p1)+\
      3*(|w - root4| < p1)+4*(|w - root5| < p1)+5*(|w - root6| < p1)
    bailout = 1
    z = colors_in_range*(angle/pi + range_num)-angle/pi + 1
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0
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
}

newton_reel_1 (ORIGIN) {; Sylvie Gallet
  z=pixel , x=real(z) , y=imag(z) :    ; Methode de Newton pour
  x2=x*x , y2=y*y , x3=x2*x , y3=y2*y  ; x -> x^3-y
  d=1+9*x2*y2                          ; y -> y^3+x
  x = (6*x3*y2 + 2*y3) / d             ; solution (0,0)
  y = (6*x2*y3 - 2*x3) / d   
  z = x+flip(y) 
  |z|>=.01
}

newton_z3_fn {; Sylvie Gallet [101324,3444], 1995
              ; equation z^3-1 = 0
              ; solution z = 1
  z = fn1(pixel) :
  z = (z+z-1/(z*z))/3 ; <==> z-(z*z2-1)/(3*z2)
  |z-(1.0,0.0)| >= real(p1)
}

Newton4 (XYAXIS) {; Mark Peterson
   ; Note that floating-point is required to make this compute accurately
  z = pixel, Root = 1:
  z3 = z*z*z
  z4 = z3 * z
  z = (3 * z4 + Root) / (4 * z3)
  .004 <= |z4 - Root|
}

No_Name{
z = c = pixel:
z = p1 * cosh(z * z * z  * z * z * z) + c
|z| <= 4
}

NoteW1 {
     A = ((sin(pixel)^2)*2), b = fn1(real(pixel)), c = pixel^2, z = pixel:
     z = z * z * a * b + c
     |Z| < 4
     }

NoteW2 { ; Blake Hyde, modified by Jay Hill
     A = ((sin(pixel)^2)*2), b = fn1(real(pixel)), c = pixel^2, z = pixel:
     z = z * z * a * b + c
     |Z| < 40
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
  z=z-(func/der)+c,
  |oz-z|>p2
}

novan_jul { ; Kerry Mitchell
	; variation on Paul Derbyshire's nova formula, Julia-type
	; Newton method for zc^n = 1, adding c each time
	; beginning value of zc = pixel, c = p1
	; inverse bailout = real(p2), exponent = imag(p2)
	; z = change in zc each iteration
        c=p1, zc=pixel, r=real(p2), nm1=imag(p2)-1, fac=1/(nm1+1):
        fp=zc^nm1, f=zc*fp-1, z=fac*f/fp+c,
        zc=zc-z, |z| > r
        }

novan_man { ; Kerry Mitchell
	; variation on Paul Derbyshire's nova formula, Mandelbrot-type
	; Newton method for zc^n = 1, adding c each time.
	; beginning value of zc = p1, c = pixel
	; inverse bailout = real(p2), exponent = imag(p2)
	; z = change of zc each iteration
        zc=p1, c=pixel, r=real(p2), nm1=imag(p2)-1, fac=1/(nm1+1):
        fp=zc^nm1, f=zc*fp-1, z=fac*f/fp+c,
        zc=zc-z, |z| > r
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
  z=z-(func/der)+c,
  |oz-z|>p2
}

Nuclear_Jul { ; p1, p2, p3 parameters. Use float=y.
  a=p1, c=p2, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2
  r3ac=r3*ac, ack=k*ac
  z=pixel:
  z2=sqr(z)
  z3=z*z2
  z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack,
  lastsqr<=1000000
}

Nuclear_JulCol { ; p1, p2, p3 parameters. Use float=y, outside=real, logmap=0,
                 ; periodicity=0. Colors from 4 ranges by finite attractors
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
}
 
Nuclear_JColLog { ; p1, p2, p3 parameters. Use float=y, outside=real, logmap=0,
                  ; periodicity=0. Colors from 4 ranges by finite attractors
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
}

Nuclear_Jul { ; p1, p2, p3 parameters. Use float=y.
  a=p1, c=p2, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2, 
  r3ac=r3*ac, ack=k*ac
  z=pixel:
  z2=sqr(z)
  z3=z*z2
  z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack,
  lastsqr<=1000000
}

Nuclear_JulCol { ; p1, p2, p3 parameters. Use float=y, outside=real,logmap=0,
                 ; periodicity=0. Colors from 4 ranges by finite attractors
                 ; and attracted to infinity.
  a=p1, c=p2, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2, 
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
}

Nuclear_JColLog { ; p1, p2, p3 parameters. Use float=y, outside=real,logmap=0,
                  ; periodicity=0. Colors from 4 ranges by finite attractors
                  ; and attracted to infinity. Uses a "logmap".
  a=p1, c=p2, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2, 
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
}

Nuclear_JColLogB { ; p1, p2, p3 parameters. Use float=y, outside=real,logmap=0,
                   ; periodicity=0. Colors from 4 ranges by finite attractors
                   ; and attracted to infinity. Uses a "logmap".
                   ; Variation: qq shrunk.
                   ; Suitable for deeper zooms.
  a=p1, c=p2, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2, 
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
}

Nuclear_JColLogC { ; p1, p2, p3 parameters. Use float=y, outside=real,logmap=0,
                   ; periodicity=0. Colors from 4 ranges by finite attractors
                   ; and attracted to infinity. Uses a "logmap".
                   ; Variation: Log reversed for high iterations.
  a=p1, c=p2, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2, 
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
}

Nuclear_M_k_0 { ; p1, p2 parameters. Use float=y. k is Mandel parameter,
                ; critical point 0.
  a=p1, c=p2, k=pixel, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2
  a6=3*a2, r3ac=r3*ac, ack=k*ac
  z=0:
  z2=sqr(z)
  z3=z*z2
  z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack,
  lastsqr<=1000000
}

Nuclear_M_k_0 { ; p1, p2 parameters. Use float=y. k is Mandel parameter,
                ; critical point 0.
  a=p1, c=p2, k=pixel, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2, 
  r3ac=r3*ac, ack=k*ac
  z=0:
  z2=sqr(z)
  z3=z*z2
  z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack,
  lastsqr<=1000000
}
 
Nuclear_M_k_1 { ; p1, p2 parameters. Use float=y. k is Mandel parameter,
                ; critical point 1.
  a=p1, c=p2, k=pixel, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2
  a6=3*a2, r3ac=r3*ac, ack=k*ac
  z=1:
  z2=sqr(z)
  z3=z*z2
  z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack,
  lastsqr<=1000000
}
 
Nuclear_M_k_-1 { ; p1, p2 parameters. Use float=y. k is Mandel parameter,
                ; critical point -1.
  a=p1, c=p2, k=pixel, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2
  a6=3*a2, r3ac=r3*ac, ack=k*ac
  z=-1:
  z2=sqr(z)
  z3=z*z2
  z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack,
  lastsqr<=1000000
}
 
Nuclear_M_c_0 { ; p1, p3 parameters. Use float=y. c is Mandel parameter,
                ; critical point 0.
  a=p1, c=pixel, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2
  a6=3*a2, r3ac=r3*ac, ack=k*ac
  z=0:
  z2=sqr(z)
  z3=z*z2
  z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack,
  lastsqr<=1000000
}
 
Nuclear_M_c_1 { ; p1, p3 parameters. Use float=y. c is Mandel parameter,
                ; critical point 1.
  a=p1, c=pixel, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2
  a6=3*a2, r3ac=r3*ac, ack=k*ac
  z=1:
  z2=sqr(z)
  z3=z*z2
  z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack,
  lastsqr<=1000000
}
 
Nuclear_M_c_-1 { ; p1, p3 parameters. Use float=y. c is Mandel parameter,
                ; critical point -1.
  a=p1, c=pixel, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2
  a6=3*a2, r3ac=r3*ac, ack=k*ac
  z=-1:
  z2=sqr(z)
  z3=z*z2
  z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack,
  lastsqr<=1000000
}
 
Nuclear_M_a_0 { ; p2, p3 parameters. Use float=y. a is Mandel parameter,
                ; critical point 0.
  a=pixel, c=p2, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2
  a6=3*a2, r3ac=r3*ac, ack=k*ac
  z=0:
  z2=sqr(z)
  z3=z*z2
  z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack,
  lastsqr<=1000000
}
 
Nuclear_M_a_1 { ; p2, p3 parameters. Use float=y. a is Mandel parameter,
                ; critical point 1.
  a=pixel, c=p2, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2
  a6=3*a2, r3ac=r3*ac, ack=k*ac
  z=1:
  z2=sqr(z)
  z3=z*z2
  z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack,
  lastsqr<=1000000
}
 
Nuclear_M_a_-1 { ; p2, p3 parameters. Use float=y. a is Mandel parameter,
                ; critical point -1.
  a=pixel, c=p2, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2
  a6=3*a2, r3ac=r3*ac, ack=k*ac
  z=-1:
  z2=sqr(z)
  z3=z*z2
  z=(r3a2*z3-a6*z2-r3ac*z-ac)/(r3*z+1)+ack,
  lastsqr<=1000000
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
}

Nuclear_M_cq { ; p1, p3 parameters. c is Mandel parameter. Colored based on all
               ; 3 critical points. Use outside=real, float=y, periodicity=n,
               ; maxiter>=256, and logmap=0.
               ; For logmap effect put real(p2) minimum iteration,
               ; imag(p2) bigger than 1, e.g. 2.
               ; Color 0 is for all critical points trapped.
               ; Colors 1-66, 67-129, 130-192, and 193-255 are separate ranges.
               ; Use first for outside, second thru fourth for two
               ; critical points escape, one trapped...
               ; Coloring variant.
  a=p1, c=pixel, k=p3, a2=a*a, ac=a*c, r3=sqrt(3), r3a2=r3*a2, a6=3*a2,r3ac=r3*ac, ack=k*ac
  min=real(p2)
  p=imag(p2)
  IF(p==0)
    p=1
  ENDIF
  z1=0, z2=1, z3=-1
  qq=0.001, iter=0, done=0, z2done=0, m=maxit-1, z1done=0, z3done=0, 
m2=floor(m/2), z1a=z1, z2a=z2, z3a=z3, flag=0, z1d2=0, z2d2=0, z3d2=0, 
qrl=1.5, q2=0.15
  qq2=0.0000001
  :
  IF(z3done==0)
    zz2=sqr(z3)
    zz3=z3*zz2
    z3=(r3a2*zz3-a6*zz2-r3ac*z3-ac)/(r3*z3+1)+ack,
    IF(lastsqr>10000)
      z3done=iter
      z3d2=1
    ENDIF
  ENDIF
  IF(z2done==0)
    zz2=sqr(z2)
    zz3=z2*zz2
    z2=(r3a2*zz3-a6*zz2-r3ac*z2-ac)/(r3*z2+1)+ack,
    IF(lastsqr>10000)
      z2done=iter
      z2d2=1
    ENDIF
  ENDIF
  IF(z1done==0)
    zz2=sqr(z1)
    zz3=z1*zz2
    z1=(r3a2*zz3-a6*zz2-r3ac*z1-ac)/(r3*z1+1)+ack,
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
}

Nuke2 (xaxis) { ; Jay Hill
     z = 0, c = pixel:  ; basic mandel up to here
     z = (z*z/c + 1)   ;  insideout eye shaped MSet
     }

NY002 { 
  z=pixel, c=fn1(z), zc=fn2(c+z):
  z=fn3(zc)-fn4((z*z)+c)
  |z|<16
}

ObliqueManPlus {;Jim Muth
z=p1+pixel, c=p2+(p3*pixel):
z=sqr(z)+c,
|z| <=100
}

OblManPlusLow {; Jim Muth
  z=p1+pixel, c=p2+(p3*pixel):
  z=sqr(z)+c,
  |z| <=4
}

offset_jul {
	;
        ; "circle & offset line" coloring method for Julia sets
        ; p1 = c = Julia parameter
        ; p2 = x-circle center
        ; real(p3) = x-circle radius
        ; imag(p3) = angle of line from circle center to tangent
        ;    point, degrees.  y-line is parallel to tangent line
        ;    and offset by amount of radius.
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
        cenx=p2, radx=real(p3), rad=2*radx, rad2x=|radx|
        theta=imag(p3)*pi/180, ct=cos(theta), st=sin(theta)
        xt=real(cenx)+rad*ct, yt=imag(cenx)+rad*st
        phi=theta+pi/2, cp=cos(phi), sp=sin(phi)
        ay=sp, by=-cp, cy=cp*yt-sp*xt:
        iter=iter+1, zc=sqr(zc)+c
        tempx=|zc-cenx|-rad2x
        tempy=ay*real(zc)+by*imag(zc)+cy
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

offset_rx=ry_jul { ; Kerry Mitchell 26aug98
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
        iter=iter+1, zc=sqr(zc)+c
        tempx=|zc-cenx|-rad2x
        tempy=|zc-ceny|-rad2y
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

OK-12 {; TRY FN1 = SQR, FN2 = SQR
  z = c = pixel:
  z = fn1(z) + c;
  z = fn2(z) / c,
  |z| <= (5 + p1)
}

OK-18 {
  z = v = pixel:
  z = fn1(v) + real(z);
  v = fn2(z) + imag(v),
  |z| <= (5 + p1)
}

OK-20 {
  a = b = c = z = pixel:
  a = fn1(b) + c^z;
  b = fn2(a+c);
  z = z + (a * b * c),
  |z| <= (5 + p1)
}

OK-22 {
  z = v = pixel:
  v = fn1(v) * fn2(z)
  z = fn1(z) / fn2(v)
  |z| <= (5 + p1)
}

OK-28 {; Replaced variable "e" with "ee", 5/7/99. G. Martin
  z = c = pixel, d = fn1(pixel), k = p1:
  a = fn2(z)
  b = (z <= k) * (a + c + d)
  ee = (z > k) * (a + c - d)
  z = z + b + ee
  |z| <= (10 + p2)
}




OK-31 {; Replaced variable "e" with "ee", 5/7/99. G. Martin
  z = v = pixel, k = .1 + p1:
  a = fn1(z)
  b = (a <= k) * (a + v)
  ee = (a > k) * fn2(a)
  v = z
  z = b + ee
  |z| <= (5 + p2)
}

OK-36 {; DISSECTED MANDELBROT
   ; TO GENERATE "STANDARD" MANDELBROT, SET P1 = 0,0 & ALL FN = IDENT
  z = pixel, cx = fn1(real(z)), cy = fn2(imag(z)), k = 2 + p1:
  zx = real(z), zy = imag(z)
  x = fn3(zx*zx - zy*zy) + cx
  y = fn4(k * zx * zy) + cy
  z = x + flip(y)
  |z| <  (10 + p2)
}

OK-41 {; DISECTED MANDELLAMBDA
  z = 0.5 + p1, lx = fn1(real(pixel)), ly = fn2(imag(pixel)):
  zx = real(z), zy = imag(z)
  x = fn3(lx*zx + 2*ly*zx*zy - ly*zy - lx*zx*zx + lx*zy*zy)
  y = fn4(ly*zx - 2*lx*zx*zy + lx*zy - ly*zx*zx + ly*zy*zy)
  z = x + flip(y)
  |z| <= (10 + p2)
}

okJ_05{ ; Perturbed Julia set
            ; Julia parameter p1 is perturbed by p2*pixel
            ; p2=0 -> no perturbation 
            ; p3 = bailout
z=pixel
c=p1+p2*pixel:
z=z*z+c
|z|<=p3
}

okJ_06{ ; Generalized perturbed Julia set
            ; Julia parameter p1 is perturbed by p2*fn1(pixel)
            ; p2=0 -> no perturbation 
            ; p3 = bailout
z=pixel
c=p1+p2*fn1(pixel):
z=z*z+c
|z|<=p3
}

Olio_3 (XAXIS) {
  z = pixel, fpix = fn1(pixel) + p1:
  z = z*z + pixel
  z = z * fpix
  z = fn2(1/z)
  |z| < 4
}

Olio_Srand {
  z = pixel :
  z = z + p1
  z = z * z + srand(z)
  |z| < 4
}

OMEN (XAXIS) {
  Z = PIXEL:
  Z = FN1(Z) + P1
  Z = (Z*Z + P1 - 1 / 2*Z + P1 -2)^2
  Z < 4
}

oppangle_jul {
	;
        ; "2 opposing lines" coloring method for Julia sets
        ; p1 = c = Julia parameter
        ; real(p2) = x-line a = y-line a
        ; imag(p2) = x-line b = negative of y-line b
        ; real(p3) = x-line c
        ; imag(p3) = y-line c
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
        ax=real(p2), bx=imag(p2), cx=real(p3)
        ay=ax, by=-bx, cy=imag(p3):
        iter=iter+1, zc=sqr(zc)+c
        x=real(zc), y=imag(zc)
        tempx=ax*x+bx*y+cx
        tempy=ay*x+by*y+cy
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

ORing_Series_Mset {; Copyright (c) Paul Carlson, 1998
    ; real(p1) = radius of large circle
    ; imag(p1) = number of iterations to skip
    ; real(p2) = number of color ranges
    ; imag(p2) = number of colors in a range
    ;
    w = z = iter = range_num = 0
    c = pixel
    r = real(p1)
    skip_iters = imag(p1)
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    s2 = sqrt(2), ro = r * s2, r2 = r * r, k = r / s2
    index_factor = (colors_in_range - 1) / k
    :
    w2 = w*w, w4 = .01*w2*w2, w8 = w4*w4, w12 = w4*w8, w16 = w4*w12
    w = w2 - w4 - w8 - w12 - w16 + c
    wr = real(w), wi = imag(w), wr2 = wr * wr, wi2 = wi * wi
    ;
    c0 = ((wr2 + wi2) < r2)                   ; large circle
    c1 = (((wr - ro) * (wr - ro) + wi2) < r2) ; circle 1
    c2 = ((wr2 + (wi + ro) * (wi + ro)) < r2) ; circle 2
    c3 = (((wr + ro) * (wr + ro) + wi2) < r2) ; circle 3
    c4 = ((wr2 + (wi - ro) * (wi - ro)) < r2) ; circle 4
    ;
    IF (c0 && c1)     ; if inside large circle and circle 1
      dist = (wr - k) * (wr - k) + wi2
    ELSEIF (c0 && c2) ; if inside large circle and circle 2
      dist = wr2 + (wi + k) * (wi + k)
    ELSEIF (c0 && c3) ; if inside large circle and circle 3
      dist = (wr + k) * (wr + k) + wi2
    ELSEIF (c0 && c4) ; if inside large circle and circle 4
      dist = wr2 + (wi - k) * (wi - k)
    ELSE
      dist = 0
    ENDIF
    IF (dist > 0 && iter > skip_iters)
	index = index_factor * sqrt(dist)
	z = index + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
	range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    dist == 0 && |w| < 1.0e20
}

Ormandel12(YAXIS) {; Copr. 1995 by Jack A. Orman
  z=c=pixel, t=pixel:
  t=t+pixel
  neg=(fn1(z)/fn2(z))^p1 * (z<t)
  pos=(fn1(z)/fn2(z))^p1 * (z>=t)
  z=neg + pos + c
  |z|<t
}

Ormandel15 {; Copr. 1995 by Jack A. Orman
  z=pixel, c=pixel^p1:
  z=fn1(z*z)+c
}

OrmanDelbrot10 {; Copr. 1995 by Jack Orman
  z = Pixel, c=fn1(pixel):
   z =(fn2(z^p1)*c)^p2+pixel
    |z| <= 16
}

Ormandelbrot43 {
  z=pixel,z=sqr(z),c=p1:
  z=z*z + c
  z=fn1(z)
  |z|<4
}

OrmandelPower {; Copr. 1995 by Jack Orman
               ; Start with Fn1=ident and Fn2=cotanh
               ; and P1 = 2
  c=z=pixel:
  z=(fn1(z)/fn2(z))^p1 + c
  |z|<4
}

orthogonal_jul {
	;
        ; "2 orthogonal lines" coloring method for Julia sets
        ; p1 = c = Julia parameter
        ; real(p2) = x-line a = negative of y-line b
        ; imag(p2) = x-line b = negative of y-line a
        ; real(p3) = x-line c
        ; imag(p3) = y-line c
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
        ax=real(p2), bx=imag(p2), cx=real(p3)
        ay=bx, by=-ax, cy=imag(p3):
        iter=iter+1, zc=sqr(zc)+c
        x=real(zc), y=imag(zc)
        tempx=ax*x+bx*y+cx
        tempy=ay*x+by*y+cy
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

OscillatorJul(XAxis){; Should be a dynamical orbit, really
;Source: Ian Stewart: "Portraits of Chaos"
;The New Scientist Guide to Chaos
;(Penguin Books, 1991)
bailout=real(p2)
p=real(p1)
z=pixel:
x=real(z)
y=imag(z)
t=2*(sqr(x)+sqr(y))-p
x=t*x-(sqr(x)-sqr(y))/2
y=(t+x)*y
z=x+flip(y)
|z|<=bailout
}

P02-01{;V.1.0 - earlier versions may be discarded
; = (3zP01-P00)/2
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
Tx=(3*x*x-1)/2
Ty=(3*y*y-1)/2
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

P03-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (5zP02-2P01)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(5*x*x-3)/2
  Ty=y*(5*y*y-3)/2
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
}

P04-01{;Morgan Owens
;comment Chebyshev Types
;Inspired by Clifford A. Pickover
;Dynamic (Euler method)
; = (7zP03-3P02)/4
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
xx=x*x,yy=y*y
Tx=(5*xx*(7*xx-6)+3)/8
Ty=(5*yy*(7*yy-6)+3)/8
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

P05-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (9zP04-4P03)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=x*(7*xx*(9*xx-10)+15)/8
  Ty=y*(7*yy*(9*yy-10)+15)/8
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
}

P06-01{;V.1.0 - earlier versions may be discarded
; = (11zP05-5P04)/6
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
xx=x*x,yy=y*y
Tx=(21*xx*(xx*(11*xx-15)+5)-5)/16
Ty=(21*yy*(yy*(11*yy-15)+5)-5)/16
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

P06-03{;V.1.0 - earlier versions may be discarded
; = (11zP05-5P04)/6
const=p1,z=pixel:
zz=z*z
z=(21*zz*(zz*(11*zz-15)+5)-5)/16+const
|z|<100}

P08-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (15zP(7)-7P(6))/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(3*zz*(11*zz*(13*zz*(15*zz-28)+210)-420)+35)/128
  fd=9*z*(11*zz*(39*zz*(5*zz-7)+35)-35)/16
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}

P10-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (19zP(9)-9P(8))/10
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(11*zz*(13*zz*(zz*(17*zz*(19*zz-45)+630)-210)+315)-63)/256
  fd=110*z*(13*zz*(zz*(17*zz*(19*zz-36)+378)-84)+63)/256
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
}

palette_ {
  K = real(p1)*real(pixel):
  K = real(K)-real(p2)
  |K| < real(p3)
}

palette { ; use maxiter=255 and outside=summ
  z0 = 256 * real(scrnpix)/real(scrnmax) , iter=0 :
  iter = iter + 1
  z = z0 - iter
  0
}

parallel_jul {
	;
        ; "2 parallel lines" coloring method for Julia sets
        ; p1 = c = Julia parameter
        ; real(p2) = x-line a = y-line a
        ; imag(p2) = x-line b = y-line b
        ; real(p3) = x-line c
        ; imag(p3) = y-line c
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
        ax=real(p2), bx=imag(p2), cx=real(p3)
        ay=ax, by=bx, cy=imag(p3):
        iter=iter+1, zc=sqr(zc)+c
        x=real(zc), y=imag(zc)
        tempx=ax*x+bx*y+cx
        tempy=ay*x+by*y+cy
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

Parallelogram {
 ;Nature Leseul
 z=0, z1=0, z2=0, c=pixel:
 z1 = (real(z1)+imag(z2))
 z2 = (real(z2)+imag(z1))
 z = z1*z2 + c
 z1 = z1*z1 + c
 z2 = z2*z2 + c
 |z| < 4
}

ParallelogramErr {
 ;Nature Leseul
 z=0, z1=0, z2=0, c=pixel:
 z1 = (real(z1)+imag(z2))
 z = z1*z2 + c
 z1 = z1*z1 + c
 z2 = z2*z2 + c
 |z| < 4
}

pc_popcorn_jul { ; Copyright (c) Paul W. Carlson, 1998
    ; Always use float=yes
    ;
    ; real(p1) = h in popcorn formula
    ; imag(p1) = bailout value
    ; real(p2) = controls width of elements
    ; imag(p2)   not used
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
    z = iter = bailout = range_num = 0
    x = real(pixel)
    y = imag(pixel)
    h = real(p1)
    width = real(p2)
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    index_factor = (colors_in_range - 1) / width
    :
    prev_x = x
    x = x - h * sin(y + tan(3 * y))
    y = y - h * sin(prev_x + tan(3 * prev_x))
    w = x + flip(y)
    dist = abs(|w|-.25)
    IF (dist < width && iter > 0)
	bailout = 1
	z = index_factor * dist + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
	range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < imag(p1)
}

pc_series { ; Carlson Series Formula
                ; Copyright (c) Paul W. Carlson, 1997
                ; Use float=y
    z = 0, c = pixel:
    ;
    z2 = z * z
    z4 = 0.01 * z2 * z2
    z8  = z4 * z4
    z12 = z4 * z8
    z16 = z4 * z12
    z = z2 - z4 - z8 - z12 - z16 + c
    |z| < 1000
}

Pc06-25{;V.1.1 - earlier versions may be discarded
; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
y=y+t*fn1((((((64*x-1528/5)*x+24628/45)*x-4553/10)*x+1055/6)*x-27)*x+1)
x=x-t*fn2((((((64*y-1528/5)*y+24628/45)*y-4553/10)*y+1055/6)*y-27)*y+1)
z=x+flip(y)
|z|<=bailout}

PD_201 {
  z = pixel, test = p1:
  y = sqr(z*p1)
  x = fn1(pixel + fn2(p2/(z+(z*y)) - z/(y+z)))
  z = x*z + pixel
  |z| <= (100 + p1)
}

PD_411 { ; Modified for IF..ELSE logic by Sylvie Gallet, 05/20/97
   bailout = sqrt(4 + imag(p3))
   k = real(p3), z = z1 = pixel
   c = p1*tan(z) :
   z1 = fn1(z1^k) + p2*fn2(z1*c)
   IF (whitesq)
      z = log(z1)
   ELSE
      z = log(- conj(z1))
   ENDIF
   abs(real(z)) <= bailout && abs(imag(z)) <= bailout
}

pd-HC_Grav     {; formula by P. DiGiorgi, May, 1998
    ; uses P. Carlson's Hi_Cycle method
       ; applied to the Gravijul formula
    ; by Mark Christenson
    z = w = iter = range_num = bailout = 0
 pa = real(p3), pb = imag(p3)
  w = fn4(pixel)
  c = p2
  i = (0,1)
     k = 1.2 - pb
     :
  u = fn1(w)
  w = fn3(p1/fn2(u*u))
  wr = real(w)
     w = w - wr + abs(wr) - c
  angle = atan(imag(w)/wr)
     ka = k * angle / pb
     rw = k * cos(angle) + pb * cos(ka)
     iw = k * sin(angle) + pb * sin(ka)
     ww = rw + i * iw
     dist = abs(|w|-|ww|)
     IF (dist < pa && iter > 1)
 bailout = 1
 index = 63 * dist / pa
 z = index + range_num * 63 + 1
     ENDIF
     iter = iter + 1
     range_num = range_num + 1
     IF (range_num == 4)
 range_num = 0
     ENDIF
     z = z - iter
     bailout == 0 && |w| < 100
 }

pd-HC_Grav2     {; formula by P. DiGiorgi, May, 1998
       ; P. Carlson's Hi_Cycle method (modified)
       ; applied to Mark Christenson's Gravijul formula
    z = w = iter = range_num = bailout = 0
 pa = real(p3), pb = imag(p3)
  w = pixel
  c = p2
  i = (0,1)
     k = 1.2 - pb
     :
  u = fn1(w)
  w = fn3(p1/fn2(u*u))
  wr = real(w)
     w = w - wr + abs(wr) - c
  angle = atan(imag(w)/wr)
     ka = k * angle / pb
     rw = k * cos(angle) + pb * cos(ka)
     iw = k * sin(angle) + pb * sin(ka)
     ww = rw + i * iw
     ww = fn4(1 - ww)/ww
  dist = abs(|w|-|ww|)
     IF (dist < pa && iter > 1)
 bailout = 1
 index = 63 * dist / pa
 z = index + range_num * 63 + 1
     ENDIF
     iter = iter + 1
     range_num = range_num + 1
     IF (range_num == 4)
 range_num = 0
     ENDIF
     z = z - iter
     bailout == 0 && |w| < 100
 }

pd-HC_PCJul    {; formula by P. DiGiorgi, June, 1998
                    ; Paul Carlson's Hi_Cycle method (modified)
                    ; applied to a generalized PopcornJul type
 z = w = iter = range_num = bailout = 0
 pa = abs(real(p3)), pb = imag(p3)
  h = real(p1)
  w = abs(pixel)
  x = real(w), y = imag(w)
  i = (0,1)
     k = 1.2 - pb
     :
  x1 = p2*x - h*fn1(y - fn2(fn3(3*y)))
  y1 = p2*y - h*fn1(x - fn2(fn3(3*x)))
  w = x1 + flip(y1)
  x = x1, y = y1
    wr = real(w)
     w = w - wr + abs(wr)
  angle = atan(imag(w)/wr)
     ka = k * angle / pb
     rw = k * cos(angle) + pb * cos(ka)
     iw = k * sin(angle) + pb * sin(ka)
     ww = rw + i * iw
     IF (real(p3) < 0)
 ww = fn4(ww)
  ELSE
 ww = fn4(1 - ww)/ww
  ENDIF
  dist = abs(|w|-|ww|)
     IF (dist < pa && iter > 1)
 bailout = 1
 index = 125 * dist / pa
 z = index + range_num * 125 + 1
     ENDIF
     iter = iter + 1
     range_num = range_num + 1
     IF (range_num == 2)
 range_num = 0
     ENDIF
     z = z - iter
     bailout == 0 && |w| < imag(p1)
  }

pd_pcj  { ; modified PopcornJul by P. DiGiorgi
        h = real(p3), bailout = imag(p3)
        z = fn4(pixel)
        x = real(z), y = imag(z):
        x1 = p1*x - h*fn1(y - fn2(fn3(p2*y)))
        y1 = p1*y - h*fn1(x - fn2(fn3(p2*x)))
        z = x1 + flip(y1)
        x = x1, y = y1
        |z| <= bailout
        }

penmand1 {
a=(-1)^.4,
b=pixel,
c=sin(real(b))+flip(sin(imag(b))),
b=b*a,
c=c*a+sin(real(b))+flip(sin(imag(b))),
b=b*a,
c=c*a+sin(real(b))+flip(sin(imag(b))),
b=b*a,
c=c*a+sin(real(b))+flip(sin(imag(b))),
b=b*a,
c=c*a+sin(real(b))+flip(sin(imag(b))),
c=c*p1,
z=0:
z=sqr(z)+c,
|z|<=1000
}

Petals_Barnsley1 {; Copyright (c) Paul W. Carlson, 1998
    ;   p1       = coordinates of the Julia set
    ;   real(p2) = radius of the circles - this controls
    ;              the size of the petals
    ;   imag(p2)   not Used
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    w = pixel
    c = p1
    z = range_num = iter = 0
    r = real(p2)
    ir = flip(r)
    r2 = r * r
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    index_factor = (colors_in_range - 1) / (r2 + r2)
    :
    IF (real(w) >= 0)
	w = (w - 1) * c
    ELSE
	w = (w + 1) * c
    ENDIF
    ;
    c1 = (|w -  r| < r2)
    c2 = (|w + ir| < r2)
    c3 = (|w +  r| < r2)
    c4 = (|w - ir| < r2)
    IF (c1 && c4)
	d = |w - r - ir|
    ELSEIF (c1 && c2)
	d = |w - r + ir|
    ELSEIF (c2 && c3)
	d = |w + r + ir|
    ELSEIF (c3 && c4)
	d = |w + r - ir|
    ELSE
      d = 0
    ENDIF
    IF (d > 0)
	z = index_factor * d + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    d == 0 && |w| < 1.0e20
}

Petals_Julia {; Paul Carlson
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = coordinates of the Julia set
    ;   real(p2) = radius of the circles - this controls
    ;              the size of the petals
    ;   imag(p2)   Not Used
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    w = pixel
    c = p1
    z = 0
    r = real(p2)
    r2 = r * r
    k = 0.35355339 * r    ; Don't mess with this constant
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    range_num = 0
    iter = 0:
    ;
    w = w * w + c
    ;
    wr = real(w), wi = imag(w)
    c1 = (((wr-r) * (wr-r) + wi * wi) < r2)
    c2 = ((wr * wr + (wi+r) * (wi+r)) < r2)
    c3 = (((wr+r) * (wr+r) + wi * wi) < r2)
    c4 = ((wr * wr + (wi-r) * (wi-r)) < r2)
    IF (c1 && c4)
      d = (wr-k) * (wr-k) + (wi-k) * (wi-k)
    ELSEIF (c1 && c2)
      d = (wr-k) * (wr-k) + (wi+k) * (wi+k)
    ELSEIF (c2 && c3)
      d = (wr+k) * (wr+k) + (wi+k) * (wi+k)
    ELSEIF (c3 && c4)
      d = (wr+k) * (wr+k) + (wi-k) * (wi-k)
    ELSE
      d = 0
    ENDIF
    IF (d > 0)
        index = colors_in_range * d / r2
        z = index + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    d == 0 && |w| < 1000
}

Petals_Mset {; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = radius of the circles
    ;   p2       = circle offset factor
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    w = 0
    c = pixel
    r = p1
    ro = r + r * p2
    r2 = r * r
    f = 1 - 2 * p2 - p2 * p2
    k = p2 * r + r * sqrt(f)  ;abs val of petal center (k,k)
    plsqd = 2 * r2 * f        ;petal length squared
    z = 0
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    range_num = 0
    iter = 0:
    ;****************************************************
    ; The Carlson Series (I had to name it something)  :)
    ;****************************************************
    w2 = w * w
    w4 = 0.01 * w2 * w2
    w8  = w4 * w4
    w12 = w4 * w8
    w16 = w4 * w12
    w = w2 - w4 - w8 - w12 - w16 + c
    ;****************************************************
    ; Determine which pair of overlapping circles the
    ; orbit point falls in, if any.
    ;****************************************************
    wr = real(w), wi = imag(w)
    c1 = (((wr-ro) * (wr-ro) + wi * wi) < r2)
    c2 = ((wr * wr + (wi+ro) * (wi+ro)) < r2)
    c3 = (((wr+ro) * (wr+ro) + wi * wi) < r2)
    c4 = ((wr * wr + (wi-ro) * (wi-ro)) < r2)
    IF (c1 && c4)
      d = (wr-k) * (wr-k) + (wi-k) * (wi-k)
    ELSEIF (c1 && c2)
      d = (wr-k) * (wr-k) + (wi+k) * (wi+k)
    ELSEIF (c2 && c3)
      d = (wr+k) * (wr+k) + (wi+k) * (wi+k)
    ELSEIF (c3 && c4)
      d = (wr+k) * (wr+k) + (wi-k) * (wi-k)
    ELSE
      d = 0
    ENDIF
    ;
    IF (d > 0)
        ;************************************************
        ; Set z equal to the index into the colormap.
        ;************************************************
        index = colors_in_range * d / plsqd
        z = index + range_num * colors_in_range + 1
    ENDIF
    ;
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    d == 0 && |w| < 1000
}

perturbedCubic{
z=sqrt(-p1/3),c=pixel:
z=z^3+p1*z+c
|z|<=4
}

perturbedQuadratic{
z=-p1/2,c=pixel:
z=z^2+p1*z+c
|z|<=4
}

Phoenix_Atan {; Copyright (c) Paul W. Carlson, 1998
    ; Parameters:
    ;   p1       = coordinates of the Julia set
    ;   real(p2) = bailout value for real(w)
    ;   imag(p2)   not used
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    prev_w = y = pixel
    c = p1
    z = bailout = iter = range_num = 0
    num_ranges = real(p3)
    colors_in_range = imag(p3):
    ;****************************************************
    w = prev_w * prev_w - 0.5 * prev_w + c
    b = w * w - 0.5 * y + c
    y = w
    w = b
    ;****************************************************
    IF (abs(real(w)) > real(p2))
	delta_i = imag(w) - imag(prev_w)
	delta_r = real(w) - real(prev_w)
	angle = abs(atan(delta_i / delta_r))
	bailout = 1
	range_index = 2 * colors_in_range * angle / pi
	z = range_index + range_num * colors_in_range + 1
    ENDIF
    prev_w = w
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
     ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0
}

Phoenix_Function {; Copyright (c) Paul W. Carlson, 1998
    ;   p1       = coordinates of the Julia set
    ;   real(p2) = width factor
    ;   imag(p2) = angle multiplier
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    w = y = pixel
    c = p1
    z = bailout = iter = range_num = 0
    width = real(p2)
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    index_factor = (colors_in_range - 1) / width
    :
    w = w * w - 0.5 * w + c
    b = w * w - 0.5 * y + c
    y = w
    w = b
    ;
    ang = imag(p2) * atan(imag(w) / real(w))
    ang = ang * ang + c
    ang = fn1(1 - ang) / ang
    dist = abs(|w| - |ang|)
    IF (dist < width && iter > 1)
	z = index_factor * dist + range_num * colors_in_range + 1
	bailout = 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 100
}

pheot {
   ; The ht flavour of the pheonix fractal gives some nice escher like
   ; fractals
  z = pixel, zp1 = zp2 = (0,0), huge=1.0e32:
  temp = z
  z  = z*z - zp2
  zp2 = zp1
  zp1 = p1/conj(temp)
  (|zp1| <= 64) && (|z| <= huge) 
}

poem {; created using FracText 1.0 à6 - by Jan Maarten van der Valk
      ; 100256.3721@compuserve.com
      ; 'periodicity=0' and 'passes=1' recommended
      ; Added variable "newpixel". G. Martin 6/27/99
  x=real(scrnpix)/real(scrnmax), y=(imag(scrnmax)-imag(scrnpix))/real\
  (scrnmax), z=x+flip(y)
  chrI1 = x>0.03&&x<0.0487
  xCW=4*x
  chrW3 = y<xCW-0.0188&&y>xCW-0.0959||(y>-xCW+1.26547&&y<-xCW+1.34257\
  )&&y<0.62333||(y>-xCW+1.1188&&y<-xCW+1.1959)||(y<xCW-0.16547&&y>xCW\
  -0.24257)
  chra4 = abs(cabs(z+(-0.26194,-0.6072))-0.01595)<0.00935&&x<0.26194|\
  |(abs(cabs(z+(-0.27294,-0.6072))-0.01595)<0.00935&&x>0.27294)&&y>0.\
  6072||((abs(cabs(z+(-0.26194,-0.5753))-0.01595)<0.00935&&x<0.26194)\
  ||(abs(cabs(z+(-0.27294,-0.5753))-0.01595)<0.00935&&x>0.27294))||(x\
  >0.26194&&x<0.27294&&(y<0.5687||(y>0.6138&&y<0.6325)||(y>0.5819&&y<\
  0.6006)))||(x>0.27954&&x<0.29824&&y<0.6072)
  chrn5 = x>0.30924&&x<0.32794&&y<0.6325||(abs(cabs(z+(-0.3397,-0.602\
  04))-0.02111)<0.00935&&y>0.60204)||(x>0.35145&&x<0.37015&&y<0.60204\
  )
  chrd6 = x>0.44303&&x<0.46173||(abs(cabs(z+(-0.4224,-0.59125))-0.031\
  9)<0.00935&&x<0.44303)
  chre7 = abs(cabs(z+(-0.51398,-0.59125))-0.0319)<0.00935&&(x<0.51398\
  ||y>0.58813||y<0.57411)||(y>0.58813&&y<0.60683&&x>0.48208&&x<0.5458\
  8)
  chrr8 = x>0.56623&&x<0.58493&&y<0.6325||(abs(cabs(z+(-0.59669,-0.60\
  204))-0.02111)<0.00935&&y>0.60204)
  chre9 = abs(cabs(z+(-0.67939,-0.59125))-0.0319)<0.00935&&(x<0.67939\
  ||y>0.58813||y<0.57411)||(y>0.58813&&y<0.60683&&x>0.64749&&x<0.7112\
  9)
  chrd10 = x>0.79352&&x<0.81222||(abs(cabs(z+(-0.77289,-0.59125))-0.0\
  319)<0.00935&&x<0.79352)
  test1 = chrI1||chrW3||chra4||chrn5||chrd6||chre7||chrr8||chre9||chr\
  d10&&y>0.55&&y<0.66
  chrI11 = x>0.04&&x<0.0587
  chrW13 = y<xCW-0.0713&&y>xCW-0.1484||(y>-xCW+1.29297&&y<-xCW+1.3700\
  7)&&y<0.61083||(y>-xCW+1.1463&&y<-xCW+1.2234)||(y<xCW-0.21797&&y>xC\
  W-0.29507)
  chra14 = abs(cabs(z+(-0.27194,-0.5947))-0.01595)<0.00935&&x<0.27194\
  ||(abs(cabs(z+(-0.28294,-0.5947))-0.01595)<0.00935&&x>0.28294)&&y>0\
  .5947||((abs(cabs(z+(-0.27194,-0.5628))-0.01595)<0.00935&&x<0.27194\
  )||(abs(cabs(z+(-0.28294,-0.5628))-0.01595)<0.00935&&x>0.28294))||(\
  x>0.27194&&x<0.28294&&(y<0.5562||(y>0.6013&&y<0.62)||(y>0.5694&&y<0\
  .5881)))||(x>0.28954&&x<0.30824&&y<0.5947)
  chrn15 = x>0.31924&&x<0.33794&&y<0.62||(abs(cabs(z+(-0.3497,-0.5895\
  4))-0.02111)<0.00935&&y>0.58954)||(x>0.36145&&x<0.38015&&y<0.58954)
  chrd16 = x>0.45303&&x<0.47173||(abs(cabs(z+(-0.4324,-0.57875))-0.03\
  19)<0.00935&&x<0.45303)
  chre17 = abs(cabs(z+(-0.52398,-0.57875))-0.0319)<0.00935&&(x<0.5239\
  8||y>0.57563||y<0.56161)||(y>0.57563&&y<0.59433&&x>0.49208&&x<0.555\
  88)
  chrr18 = x>0.57623&&x<0.59493&&y<0.62||(abs(cabs(z+(-0.60669,-0.589\
  54))-0.02111)<0.00935&&y>0.58954)
  chre19 = abs(cabs(z+(-0.68939,-0.57875))-0.0319)<0.00935&&(x<0.6893\
  9||y>0.57563||y<0.56161)||(y>0.57563&&y<0.59433&&x>0.65749&&x<0.721\
  29)
  chrd20 = x>0.80352&&x<0.82222||(abs(cabs(z+(-0.78289,-0.57875))-0.0\
  319)<0.00935&&x<0.80352)
  test2 = chrI11||chrW13||chra14||chrn15||chrd16||chre17||chrr18||chr\
  e19||chrd20&&y>0.5375&&y<0.6475
  chrL21 = x<0.0487||y<0.3687&&x>0.03&&x<0.0927
  chro22 = abs(cabs(z+(-0.14495,-0.39125))-0.0319)<0.00935
  chrn23 = x>0.1972&&x<0.2159&&y<0.4325||(abs(cabs(z+(-0.22766,-0.402\
  04))-0.02111)<0.00935&&y>0.40204)||(x>0.23941&&x<0.25811&&y<0.40204\
  )
  chre24 = abs(cabs(z+(-0.31036,-0.39125))-0.0319)<0.00935&&(x<0.3103\
  6||y>0.38813||y<0.37411)||(y>0.38813&&y<0.40683&&x>0.27846&&x<0.342\
  26)
  chrl25 = x<0.38131&&x>0.36261
  xy=2.5*x
  chry26 = y<xy-0.71328&&y>xy-0.76363||(y>-xy+1.41328&&y<-xy+1.46363)\
  &&y>xy-0.76363&&y<0.4325&&y>0.295
  test3 = chrL21||chro22||chrn23||chre24||chrl25&&y>0.35||chry26&&y<0\
  .46
  chrL27 = x<0.0587||y<0.3562&&x>0.04&&x<0.1027
  chro28 = abs(cabs(z+(-0.15495,-0.37875))-0.0319)<0.00935
  chrn29 = x>0.2072&&x<0.2259&&y<0.42||(abs(cabs(z+(-0.23766,-0.38954\
  ))-0.02111)<0.00935&&y>0.38954)||(x>0.24941&&x<0.26811&&y<0.38954)
  chre30 = abs(cabs(z+(-0.32036,-0.37875))-0.0319)<0.00935&&(x<0.3203\
  6||y>0.37563||y<0.36161)||(y>0.37563&&y<0.39433&&x>0.28846&&x<0.352\
  26)
  chrl31 = x<0.39131&&x>0.37261
  chry32 = y<xy-0.75078&&y>xy-0.80113||(y>-xy+1.42578&&y<-xy+1.47613)\
  &&y>xy-0.80113&&y<0.42&&y>0.2825
  test4 = chrL27||chro28||chrn29||chre30||chrl31&&y>0.3375||chry32&&y\
  <0.4475
  chra33 = abs(cabs(z+(-0.0553,-0.2072))-0.01595)<0.00935&&x<0.0553||\
  (abs(cabs(z+(-0.0663,-0.2072))-0.01595)<0.00935&&x>0.0663)&&y>0.207\
  2||((abs(cabs(z+(-0.0553,-0.1753))-0.01595)<0.00935&&x<0.0553)||(ab\
  s(cabs(z+(-0.0663,-0.1753))-0.01595)<0.00935&&x>0.0663))||(x>0.0553\
  &&x<0.0663&&(y<0.1687||(y>0.2138&&y<0.2325)||(y>0.1819&&y<0.2006)))\
  ||(x>0.0729&&x<0.0916&&y<0.2072)
  chrs34 = abs(cabs(z+(-0.1279,-0.2072))-0.01595)<0.00935&&x<0.1279||\
  (abs(cabs(z+(-0.1389,-0.2072))-0.01595)<0.00935&&x>0.1389)&&(x<0.12\
  79||y>0.2072)||((abs(cabs(z+(-0.1279,-0.1753))-0.01595)<0.00935&&x<\
  0.1279)||(abs(cabs(z+(-0.1389,-0.1753))-0.01595)<0.00935&&x>0.1389)\
  &&(x>0.1389||y<0.1753))||(x>0.1279&&x<0.1389&&(y<0.1687||(y>0.2138&\
  &y<0.2325)||(y>0.1819&&y<0.2006)))
  chra36 = abs(cabs(z+(-0.2555,-0.2072))-0.01595)<0.00935&&x<0.2555||\
  (abs(cabs(z+(-0.2665,-0.2072))-0.01595)<0.00935&&x>0.2665)&&y>0.207\
  2||((abs(cabs(z+(-0.2555,-0.1753))-0.01595)<0.00935&&x<0.2555)||(ab\
  s(cabs(z+(-0.2665,-0.1753))-0.01595)<0.00935&&x>0.2665))||(x>0.2555\
  &&x<0.2665&&(y<0.1687||(y>0.2138&&y<0.2325)||(y>0.1819&&y<0.2006)))\
  ||(x>0.2731&&x<0.2918&&y<0.2072)
  xCC=1*x
  chrC38 = abs(cabs(z+(-0.4128,-0.205))-0.04565)<0.00935&&(x<0.4128||\
  y>xCC-0.2078||y<-xCC+0.6178)
  chrl39 = x<0.48139&&x>0.46269
  chro40 = abs(cabs(z+(-0.53364,-0.19125))-0.0319)<0.00935
  chru41 = x>0.58589&&x<0.60459&&y>0.18046&&y<0.2325||(abs(cabs(z+(-0\
  .61635,-0.18046))-0.02111)<0.00935&&y<0.18046)||(x>0.6281&&x<0.6468\
  &&y<0.2325)
  chrd42 = x>0.71968&&x<0.73838||(abs(cabs(z+(-0.69905,-0.19125))-0.0\
  319)<0.00935&&x<0.71968)
  chrDT43 = y<0.1687&&x>0.74938&&x<0.76808
  chrDT44 = y<0.1687&&x>0.77908&&x<0.79778
  chrDT45 = y<0.1687&&x>0.80878&&x<0.82748
  test5 = chra33||chrs34||chra36||chrC38||chrl39||chro40||chru41||chr\
  d42||chrDT43||chrDT44||chrDT45&&y>0.15&&y<0.26
  chra46 = abs(cabs(z+(-0.0653,-0.1947))-0.01595)<0.00935&&x<0.0653||\
  (abs(cabs(z+(-0.0763,-0.1947))-0.01595)<0.00935&&x>0.0763)&&y>0.194\
  7||((abs(cabs(z+(-0.0653,-0.1628))-0.01595)<0.00935&&x<0.0653)||(ab\
  s(cabs(z+(-0.0763,-0.1628))-0.01595)<0.00935&&x>0.0763))||(x>0.0653\
  &&x<0.0763&&(y<0.1562||(y>0.2013&&y<0.22)||(y>0.1694&&y<0.1881)))||\
  (x>0.0829&&x<0.1016&&y<0.1947)
  chrs47 = abs(cabs(z+(-0.1379,-0.1947))-0.01595)<0.00935&&x<0.1379||\
  (abs(cabs(z+(-0.1489,-0.1947))-0.01595)<0.00935&&x>0.1489)&&(x<0.13\
  79||y>0.1947)||((abs(cabs(z+(-0.1379,-0.1628))-0.01595)<0.00935&&x<\
  0.1379)||(abs(cabs(z+(-0.1489,-0.1628))-0.01595)<0.00935&&x>0.1489)\
  &&(x>0.1489||y<0.1628))||(x>0.1379&&x<0.1489&&(y<0.1562||(y>0.2013&\
  &y<0.22)||(y>0.1694&&y<0.1881)))
  chra49 = abs(cabs(z+(-0.2655,-0.1947))-0.01595)<0.00935&&x<0.2655||\
  (abs(cabs(z+(-0.2765,-0.1947))-0.01595)<0.00935&&x>0.2765)&&y>0.194\
  7||((abs(cabs(z+(-0.2655,-0.1628))-0.01595)<0.00935&&x<0.2655)||(ab\
  s(cabs(z+(-0.2765,-0.1628))-0.01595)<0.00935&&x>0.2765))||(x>0.2655\
  &&x<0.2765&&(y<0.1562||(y>0.2013&&y<0.22)||(y>0.1694&&y<0.1881)))||\
  (x>0.2831&&x<0.3018&&y<0.1947)
  chrC51 = abs(cabs(z+(-0.4228,-0.1925))-0.04565)<0.00935&&(x<0.4228|\
  |y>xCC-0.2303||y<-xCC+0.6153)
  chrl52 = x<0.49139&&x>0.47269
  chro53 = abs(cabs(z+(-0.54364,-0.17875))-0.0319)<0.00935
  chru54 = x>0.59589&&x<0.61459&&y>0.16796&&y<0.22||(abs(cabs(z+(-0.6\
  2635,-0.16796))-0.02111)<0.00935&&y<0.16796)||(x>0.6381&&x<0.6568&&\
  y<0.22)
  chrd55 = x>0.72968&&x<0.74838||(abs(cabs(z+(-0.70905,-0.17875))-0.0\
  319)<0.00935&&x<0.72968)
  chrDT56 = y<0.1562&&x>0.75938&&x<0.77808
  chrDT57 = y<0.1562&&x>0.78908&&x<0.80778
  chrDT58 = y<0.1562&&x>0.81878&&x<0.83748
  test6 = chra46||chrs47||chra49||chrC51||chrl52||chro53||chru54||chr\
  d55||chrDT56||chrDT57||chrDT58&&y>0.1375&&y<0.2475
  test=test2||test4||test6
  test0=test1||test3||test5
  f1=sin(.5*pixel)
  f2=1/(32*pixel)
  newpixel=(test==0)*f2+test*f1
  z=1+(0,-0.65)/fn3(newpixel+(0,0.75)):
  z2=z*z, z4=z2*z2, n=z4*z2-1, z=z-n/(6*z4*z)
  |n|>=.0001&&test0==0
}

PokornyConesJulia {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = coordinates of the Julia set
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    prev_w = pixel
    c = p1
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    ;****************************************************
    ; In the accompanying par files, pkcones1 & 2.par,
    ; we have 2 color ranges with 125 colors in each range
    ; for a total of 250 colors. The first range starts at
    ; color 1.  Pixels will use color 255 when w < 1.0.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ;****************************************************
    num_ranges = real(p2)
    colors_in_range = imag(p2):
    ;****************************************************
    ; The equation being iterated.  This is the
    ; Pokorny equation.
    ;****************************************************
    w = 1 / (prev_w * prev_w + c)
    ;****************************************************
    ; If |w| exceeds a value of 4.0, set z to the index
    ; into the colormap and set the bailout flag.
    ;****************************************************
    IF (|w| > 4)
        ;***************************************************
        ; Compute the angle between the last 2 orbit points
        ;***************************************************
        delta_i = imag(w) - imag(prev_w)
        delta_r = real(w) - real(prev_w)
        angle = abs(atan(delta_i / delta_r))
        IF (delta_r < 0)
            angle = pi - angle
        ENDIF
        bailout = 1
        range_index = colors_in_range * angle / pi
        z = range_index + range_num * colors_in_range + 1
    ENDIF
    prev_w = w
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
    bailout == 0
}

polar { ; Kerry Mitchell 14nov98
        ;
        ; draws polar curve r = cabs(a*fn1(b*theta))^n+r0
        ;
        ; real(p1) = coloring flag:
        ;   1 to color by nearness to curve
        ;   2 to color by inside/outside
        ; imag(p1) = negative r handling flag:
        ;   1 to ignore r<0
        ;   2 to use |r| instead of r
        ; real(p2) = a = amplitude
        ; imag(p2) = b = frequency
        ; real(p3) = n = exponent
        ; imag(p3) = r0 = baseline
        ;
        ; use decomp=256, float=yes, periodicity=no
        ;
        zc=pixel, done=1, twopi=2*pi
        a=real(p2), b=imag(p2), n=real(p3), r0=imag(p3)
        colflag=real(p1), negrflag=imag(p1)
        :
        t=imag(log(zc))
        if(t<0)
          t=t+twopi
        endif
        r=a*fn1(b*t)
        if(r>=0)
          r=r^n
        else
          r=-((-r)^n)
        endif
        r=r+r0
        if(colflag==1)
          if(negrflag==1)
            err=r-cabs(zc)
          else
            err=|r|-|zc|
          endif
          err=cabs(err)
          t=log(err)
          z=cos(t)+flip(sin(t))
        else
          if(negrflag==1)
            if(r<cabs(zc))
              t=0
            else
              t=1
            endif
          else
            if(|r|<|zc|)
              t=0
            else
              t=1
            endif
          endif
          z=cos(t)+flip(sin(t))
        endif
        done==0
        }

polar-near_jul { ; Kerry Mitchell 14nov98
        ;
        ; colors Julia set by orbit's closet approach to
        ; polar curve r = cabs(a*fn1(b*theta))^n+r0
        ;
        ; p1 = c = Julia parameter
        ; real(p2) = a = amplitude
        ; imag(p2) = b = frequency
        ; real(p3) = n = exponent
        ; imag(p3) = r0 = baseline
        ;
        ; bailout = 1000 (hardcoded)
        ; negative r handling flag = 1 (hardcoded)
        ;   1 to ignore r<0
        ;   2 to use |r| instead of r
        ;
        ; colors inside & outside points the same way
        ; use decomp=256, float=yes, periodicity=no
        ;
        zc=pixel, c=p1, iter=1, done=0
        bailout=1000, errmin=bailout
        a=real(p2), b=imag(p2), n=real(p3), r0=imag(p3)
        twopi=2*pi, negrflag=1
        :
        ;
        ; standard iteration
        ;
        iter=iter+1, zc=sqr(zc)+c
        ;
        ; compute polar angle t from new value of zc
        ;   adjust t to be in range [0, 2pi]
        ;
        t=imag(log(zc))
        if(t<0)
          t=t+twopi
        endif
        ;
        ; find polar radius from angle t
        ;
        r=a*fn1(b*t)
        if(r>=0)
          r=r^n
        else
          r=-((-r)^n)
        endif
        r=r+r0
        ;
        ; if negrflag = 1, compare r with magnitude of zc--
        ;   this ignores negative r values
        ; if negrflag = 2, compare magnitude squared of r
        ;   with magnitude squared of zc--this treats -r as r
        ;
        if(negrflag==1)
          err=cabs(r-cabs(zc))
        else
          err=cabs(|r|-|zc|)
        endif
        ;
        ; update minimum distance if a new smaller error is found
        ;
        if(err<errmin)
          errmin=err
        endif
        ;
        ; bailout at escape or maximum iterations
        ;   set "done" flag
        ;   use log(minimum distance) as angle for decomp coloring
        ;
        if((|zc|>bailout)||(iter==maxit))
          done=1
          t=log(errmin)
          z=cos(t)+flip(sin(t))
        endif
        done==0
        }

polar-near_man { ; Kerry Mitchell 14nov98
        ;
        ; colors Mandelbrot set by orbit's closet approach to
        ; polar curve r = cabs(a*fn1(b*theta))^n+r0
        ;
        ; real(p1) = bailout
        ; imag(p1) = negative r handling flag:
        ;   1 to ignore r<0
        ;   2 to use |r| instead of r
        ; real(p2) = a = amplitude
        ; imag(p2) = b = frequency
        ; real(p3) = n = exponent
        ; imag(p3) = r0 = baseline
        ;
        ; colors inside & outside points the same way
        ; use decomp=256, float=yes, periodicity=no
        ;
        zc=0, c=pixel, iter=1, done=0
        bailout=real(p1), errmin=bailout
        a=real(p2), b=imag(p2), n=real(p3), r0=imag(p3)
        twopi=2*pi, negrflag=imag(p1)
        :
        ;
        ; standard iteration
        ;
        iter=iter+1, zc=sqr(zc)+c
        ;
        ; compute polar angle t from new value of zc
        ;   adjust t to be in range [0, 2pi]
        ;
        t=imag(log(zc))
        if(t<0)
          t=t+twopi
        endif
        ;
        ; find polar radius from angle t
        ;
        r=a*fn1(b*t)
        if(r>=0)
          r=r^n
        else
          r=-((-r)^n)
        endif
        r=r+r0
        ;
        ; if negrflag = 1, compare r with magnitude of zc--
        ;   this ignores negative r values
        ; if negrflag = 2, compare magnitude squared of r
        ;   with magnitude squared of zc--this treats -r as r
        ;
        if(negrflag==1)
          err=cabs(r-cabs(zc))
        else
          err=cabs(|r|-|zc|)
        endif
        ;
        ; update minimum distance if a new smaller error is found
        ;
        if(err<errmin)
          errmin=err
        endif
        ;
        ; bailout at escape or maximum iterations
        ;   set "done" flag
        ;   use log(minimum distance) as angle for decomp coloring
        ;
        if((|zc|>bailout)||(iter==maxit))
          done=1
          t=log(errmin)
          z=cos(t)+flip(sin(t))
        endif
        done==0
        }

polar-inout_jul { ; Kerry Mitchell 14nov98
        ;
        ; colors Julia set by how often orbit is inside
        ; polar curve r = cabs(a*fn1(b*theta))^n+r0
        ;
        ; p1 = c = Julia parameter
        ; real(p2) = a = amplitude
        ; imag(p2) = b = frequency
        ; real(p3) = n = exponent
        ; imag(p3) = r0 = baseline
        ;
        ; bailout=1000 (hardcoded)
        ; negative r handling flag = 1 (hardcoded)
        ;   1 to ignore r<0
        ;   2 to use |r| instead of r
        ;
        ; colors inside & outside points the same way
        ; use decomp=256, float=yes, periodicity=no
        ;
        zc=pixel, c=p1, iter=1, done=0
        bailout=1000, incount=0
        a=real(p2), b=imag(p2), n=real(p3), r0=imag(p3)
        twopi=2*pi, negrflag=1
        :
        ;
        ; standard iteration
        ;
        iter=iter+1, zc=sqr(zc)+c
        ;
        ; compute polar angle t from new value of zc
        ;   adjust t to be in range [0, 2pi]
        ;
        t=imag(log(zc))
        if(t<0)
          t=t+twopi
        endif
        ;
        ; find polar radius from angle t
        ;
        r=a*fn1(b*t)
        if(r>=0)
          r=r^n
        else
          r=-((-r)^n)
        endif
        r=r+r0
        ;
        ; if negrflag = 1, compare r with magnitude of zc--
        ;   this ignores negative r values
        ; if negrflag = 2, compare magnitude squared of r
        ;   with magnitude squared of zc--this treats -r as r
        ;
        if(negrflag==1)
          err=cabs(zc)-r
        else
          err=|zc|-|r|
        endif
        ;
        ; update inside counter if err<0
        ;
        if(err<0)
          incount=incount+1
        endif
        ;
        ; bailout at escape or maximum iterations
        ;   set "done" flag
        ;   use ratio of incount to iterations as angle for decomp coloring
        ;
        if((|zc|>bailout)||(iter==maxit))
          done=1
          t=twopi*incount/(iter-1)
          z=cos(t)+flip(sin(t))
        endif
        done==0
        }

polar-inout_man { ; Kerry Mitchell 14nov98
        ;
        ; colors Mandelbrot set by how often orbit is inside
        ; polar curve r = cabs(a*fn1(b*theta))^n+r0
        ;
        ; real(p1) = bailout
        ; imag(p1) = negative r handling flag:
        ;   1 to ignore r<0
        ;   2 to use |r| instead of r
        ; real(p2) = a = amplitude
        ; imag(p2) = b = frequency
        ; real(p3) = n = exponent
        ; imag(p3) = r0 = baseline
        ;
        ; colors inside & outside points the same way
        ; use decomp=256, float=yes, periodicity=no
        ;
        zc=0, c=pixel, iter=1, done=0
        bailout=real(p1), incount=0
        a=real(p2), b=imag(p2), n=real(p3), r0=imag(p3)
        twopi=2*pi, negrflag=imag(p1)
        :
        ;
        ; standard iteration
        ;
        iter=iter+1, zc=sqr(zc)+c
        ;
        ; compute polar angle t from new value of zc
        ;   adjust t to be in range [0, 2pi]
        ;
        t=imag(log(zc))
        if(t<0)
          t=t+twopi
        endif
        ;
        ; find polar radius from angle t
        ;
        r=a*fn1(b*t)
        if(r>=0)
          r=r^n
        else
          r=-((-r)^n)
        endif
        r=r+r0
        ;
        ; if negrflag = 1, compare r with magnitude of zc--
        ;   this ignores negative r values
        ; if negrflag = 2, compare magnitude squared of r
        ;   with magnitude squared of zc--this treats -r as r
        ;
        if(negrflag==1)
          err=cabs(zc)-r
        else
          err=|zc|-|r|
        endif
        ;
        ; update inside counter if err<0
        ;
        if(err<0)
          incount=incount+1
        endif
        ;
        ; bailout at escape or maximum iterations
        ;   set "done" flag
        ;   use ratio of incount to iterations as angle for decomp coloring
        ;
        if((|zc|>bailout)||(iter==maxit))
          done=1
          t=twopi*incount/(iter-1)
          z=cos(t)+flip(sin(t))
        endif
        done==0
        }

Popcorn_3Way {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = h in popcorn formula
    ; imag(p1) = bailout value
    ; real(p2) = escape circle radius squared
    ; imag(p2) = number of iterations to skip
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
    z = w = k = iter = range_num = bailout = 0
    prev_w = pixel
    x = real(pixel)
    y = imag(pixel)
    h = real(p1)
    prev_modw2 = 1.0e20
    rad2 = real(p2)
    skip_iters = imag(p2)
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    colors_in_range_1 = colors_in_range - 1
    :
    prev_x = x
    x = x - h * sin(y + tan(3 * y))
    y = y - h * sin(prev_x + tan(3 * prev_x))
    w = x + flip(y)
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
    bailout == 0 && |w| <= imag(p1)
}

popcorn_balls {; Copyright (c) Paul W. Carlson, 1998
    ; Always use float=y, outside=summ
    ; real(p1) = h in popcorn formula
    ; imag(p1) = bailout value
    ; real(p2) = controls size of balls
    ; imag(p2)   not used
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
    z = iter = bailout = range_num = 0
    prev_w = pixel
    x = real(pixel)
    y = imag(pixel)
    h = real(p1)
    max_r = real(p2)
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    index_factor = (colors_in_range - 1) / max_r
    :
    prev_x = x
    x = x - h * sin(y + tan(3 * y))
    y = y - h * sin(prev_x + tan(3 * prev_x))
    w = x + flip(y)
    ;
    r = |prev_w| / |w|
    prev_w = w
    IF (r < max_r && iter > 0)
	bailout = 1
	z = index_factor * r + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
	range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 4
}

popcorn_jul { ; Paul Carlson, 1998
    ; Always use float=yes
    ;
    ; real(p1) = h in popcorn formula
    ; imag(p1) = bailout value
    ;
    x = real(pixel)
    y = imag(pixel)
    h = real(p1)
    :
    prev_x = x
    x = x - h * sin(y + tan(3 * y))
    y = y - h * sin(prev_x + tan(3 * prev_x))
    z = x + flip(y)
    |z| <= imag(p1)
}

Popcorn_R4 { ; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = h in popcorn formula
    ; imag(p1) = bailout value
    ; real(p2) = size factor
    ; imag(p2) = iterations to skip
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
    z = bailout = range_num = iter = 0
    x = real(pixel)
    y = imag(pixel)
    h = real(p1)
    k = (0.5,0.5)
    size = real(p2)
    skip = imag(p2)
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    index_factor = (colors_in_range - 1) / size:
    ;
    prev_x = x
    x = x - h * sin(y + tan(3 * y))
    y = y - h * sin(prev_x + tan(3 * prev_x))
    w = x + flip(y)
    ;
    IF (iter > skip)
	dist = abs(|w - k| - 0.1)
	IF (dist < size)
	    bailout = 1
	ENDIF
    ENDIF
    IF (bailout)
	z = index_factor * dist + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0  && |w| < imag(p1)
}

PopcornJul (origin) {; adaptation by Bradley Beacham  [74223,2745]
       ; The next line sets h=0.05 if real(p1)<=0, else h=real(p1)
  h = (0.05 * (real(p1)<=0) + real(p1) * (0<p1))
  x = real(pixel), y = imag(pixel):
    newx = x - h*sin((y) + tan(3*y))
    newy = y - h*sin((x) + tan(3*x))
    x = newx, y = newy
    z = x + flip(y)
      |z| < 4
}

power1 {
c = p1
x = pixel
a = 0:
	a = a + 1
	z = c
	z = z +  c ^ log(a) * x ^ a
		|z| <= 100000
}

pp2
  z=z*z+c,
  iter=iter+1
  (|real(z)|) <= bailout
}

pr15 {
  z=c=pixel:
  z=fn1((z+whitesq)*(p1))
  z1=fn2((z+whitesq)*real(p1))
  z2=fn3((z1+whitesq)*(p2))
  z3=fn4((z2+whitesq)*real(p2))
  z=(z3*(z2+z1))/c
  |z|<4
}

Pratz001 {
  z = (Pixel*p1)+sqrt(p2), c = Pixel:
  z = (fn1(z)*fn2(c)),
  |z| <= p3
}

PrecognaJ {
  ; p1 is Julia parameter.
  z=pixel,p=0,c=p1:
  t=sqr(p)*p+sqr(z)+c
  p=z
  z=t,
  lastsqr<=2048
}

PrecognaM (XAXIS) {
  ; p1 is Julia parameter.
  z=0,p=0,c=pixel:
  t=sqr(p)*p+sqr(z)+c
  p=z
  z=t,
  lastsqr<=2048
}

PRN_02 {; Paul Novak, 1996
  z=c=pixel, z2=z*z, upper=4+p2, m=p1, m1=.005+p1:
  m= m + m1
  b= (z2 + z*(fn1(fn2(z))))
  t= (z +  z*(fn2(fn3(z))))
  z= m*b + (m-1)*t + c
  |z| < upper
}

Prop (XAXIS) {
  z=0
  c=pixel:
  z=sqr(z)
  z=-z
  z=conj(z)
  z=z+c
  |z| <=4
}

Prueba_000 {; 
z=fn1(pixel), c=fn2(pixel):
z=fn2(p1/z^4) - fn1(p2/z^2) + c
|z|<64
}

Prueba_002 {; Bill Decker mod 10/98 of Prueba_000
            ; Miguel Fliguer - Buenos Aires, Argentina
            ; m_fliguer@miniphone.com.ar
  a = real(p1), b = imag(p1)
  c = real(p2), d = imag(p2)
  e1 = real(p3), f1 = imag(p3)
  z=fn1(pixel), c1=fn2(pixel):
  z=fn2(p1/z^(e1*fn3(z))) - fn1(p2/z^(f1*fn4(z))) + c1
  |z|<64
}

Prueba_003 {; Bill Decker mod 10/98 of Prueba_000
            ; Miguel Fliguer - Buenos Aires, Argentina
            ; m_fliguer@miniphone.com.ar
  z=fn1(pixel), c=fn2(pixel)
  e1=real(p3), e2=e1*2, f=imag(p3):
  z=fn2(p1/z^e2) - fn1(p2/z^e1) + c
  |z|<f
}

Prueba_pop {; (c) by Miguel Fliguer 
z=c=pixel,step1=p1,step2=p2:
rz=real(z)
iz=imag(z)
z=(rz-step1*sin(rz)+tan(step2*rz))+(iz-step1*sin(iz)+tan(step2*iz))
|z|<4
}

pseudo-iain { ; use decomp=256
zc=pixel, c=p1, bailout=real(p2), range=imag(p2), iter=1:
iter=iter+1, zc=sqr(zc)+c, test=fn1(zc)
if(test<range)
  t=test/range*twopi
  endif
if((|zc|>bailout)||(iter==maxit))
  iter=-1
  z=cos(t)+flip(sin(t))
  endif
iter>0
}

ptc+4mandels {; Sylvie Gallet [101324,3444], 1996
              ; 32-bit Pseudo-TrueColor
              ; Modified for if..else logic 3/21/97 by Sylvie Gallet
   cr = real(scrnpix) + 2*imag(scrnpix)
   r = cr - 4 * trunc(cr / 4)
   IF (r == 0)
      z = c = pixel
   ELSEIF (r == 1)
      z = c = pixel * p1
   ELSEIF (r == 2)
      z = c = pixel * p2
   ELSE
      z = c = pixel * p3
   ENDIF
   :
   z = z * z + c
   |z| <= 4
}

punkt-2 { ; Original formula by Guy Marson
              ; Optimized by Sylvie Gallet
              ; 'periodicity=0' and 'passes=1' recommended
  width = real(scrnmax/10)
  x = trunc(real(scrnpix)/width + 0.5)
  y = trunc(imag(scrnmax - scrnpix)/width/0.75)
  if ( x+y == 2*trunc((x+y)/2) )
    pix = sin(.5*pixel)
  else
    pix = 1/(32*pixel)
  endif
  ; Import of formula 'Nwtbumps3' from file _N.FRM
  z = pix + fn1( fn2( fn3( (pix/|pix|) * exp( p2 * |pix|))))
  Root = 1 , p1_1 = p1 - 1 , zp1_1 = z^p1_1
  a = 1 - 1/p1 , b = root/p1 :
  z = a*z + b/zp1_1
  zp1_1 = z^p1_1
  .001 <= |zp1_1*z - Root|
  }

Quad {
  z = c = pixel,
  zv = (1.0, 0.4):
  zsqr = z * z,
  z = 0.25 * zsqr * zsqr + (zv / 3) * zsqr * z - 0.5 * zsqr + zv * z;
  |z - pixel| < 4
  }

QuadcolorMand { ; Parametrized quartic Mandelbrot sets, colored based on both
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
  a=p1, c=pixel, z1=a^(1/3), aa=4*a, z2=z1*(-0.5+(0,1)*sqrt(3)/2),
  z3=z1*(-0.5-(0,1)*sqrt(3)/2), iter=0, done=0, z2done=0, m=maxit-1,
  z1done=0, z3done=0, m2=floor(maxit/2), qq=imag(p2), z1a=z1, z2a=z2,
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
}

quartc {
; This makes for an unusual combination of fractal characteristics
; Recognizable sin fractal filled with chaotic banding.
; Real part of P1 should be about 0.1 and Imag portion can be 0.0
; Oh yes! You will have to zoom out to +/- 2pi on the x axis for full view.
       z=pixel, zp = (0,0), huge = 1.0e32:
       temp = z
       z = sin(z) - zp
       zp = p1/conj(temp),(|zp| <= 4 && |z| <= huge) 
  }

QuartzJ { ; Julia sets of Quartz formula
    z=pixel:
    a=z*z
    b=z*a
    c=z*b
    z=p2*(3*c-4*b-6*a+12*z)+p1,
    |z|<=127
}

QuartzM1A { ; Mandelbrot set 1 (critical point -1) sliced horizontally
    z=-1:
    a=z*z
    b=z*a
    c=z*b
    z=pixel*(3*c-4*b-6*a+12*z)+p1,
    |z|<=127}

QuartzM1D { ; Mandelbrot set 1 sliced at an arbitrary real angle set by p2
             ; (0-1, not 0-2pi)
    w=2*3.141592654*p2
    m=cos(w)
    n=sin(w)
    z=-1:
    a=z*z
    b=z*a
    c=z*b
    z=(pixel*m+p1*n)*(3*c-4*b-6*a+12*z)+(pixel*n-p1*m),
    |z|<=127
}

QuartzM2C { ; Mandelbrot set 2 sliced diagonally
    z=1:
    a=z*z
    b=z*a
    c=z*b
    z=(pixel+p1)*(3*c-4*b-6*a+12*z)+(pixel-p1),
    |z|<=127
    }

R4_Mand_Pok {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = selects equation to iterate
    ;            1 = Mset of w = w * w + c (default)
    ;            2 = Julia set of w = w * w + c
    ;            3 = Julia set of w = 1 / (w * w + c)
    ; imag(p1) = a factor controlling the size of the elements
    ; p2       = Julia set coordinates
    ; real(p3) = selects color scheme
    ;            1 = 2 ranges, 125 colors per range (default)
    ;            2 = 8 ranges, 30  colors per range
    ; imag(p3) = number of iterations to skip
    ;
    z = bailout = range_num = iter = 0
    IF (real(p1) == 2 || real(p1) == 3) ; select Mset or Julia set
	w = pixel  ; Julia set
	c = p2
    ELSE
	w = 0      ; Mset
	c = pixel
    ENDIF
    k = (0.5,0.5)
    size = imag(p1)
    IF (real(p3) == 2) ; select coloring scheme
	num_ranges = 8
	colors_in_range = 30
    ELSE
	num_ranges = 2
	colors_in_range = 125
    ENDIF
    skip = imag(p3)
    index_factor = (colors_in_range - 1) / size
    :
    ;********** select equation to iterate **************
    IF (real(p1) < 3)
	w = w * w + c       ; Mandelbrot
    ELSE
	w = 1 / (w * w + c) ; Pokorny
    ENDIF
    ;****************************************************
    IF (iter > skip)
	dist = abs(|w - k| - 0.1)
	IF (dist < size)
	    bailout = 1
	ENDIF
    ENDIF
    IF (bailout)
	z = index_factor * dist + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0  && |w| < 1.0e20
}

rand_generic {  ; ****   PARAMETER 1 MUST BE > 0   ****
                ; Thierry Boudet 101355.2112ompuserve.com
                ; 19 Juillet 1997
                z = rand:
                z = fn1(z) + fn2(pixel);
                |z| <= real(p1)
                }

range-r_jul { ; Kerry Mitchell
        ;
        ; colors Julia set only when magnitude of iterate
        ; falls in certain range; range explicity specified
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = unused
        ; real(p3) = lower bound of range (try 0.05)
        ; imag(p3) = upper bound of range (try 0.06)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), iter=1, z=1
        lo=real(p3), hi=imag(p3):
        ;
        ; iteration
        ;   if magnitude of iterate falls into range, save iterate
        ;
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
        if ((r>lo)&&(r<hi))
          z=zc
          endif
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

range-r-1_jul { ; Kerry Mitchell
        ;
        ; colors Julia set only when magnitude of iterate
        ; falls in certain range; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = unused
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by |c|
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), iter=1
        z=1, fac=|c|
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac:
        ;
        ; iteration
        ;   if magnitude of iterate falls into range, save iterate
        ;
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
        if ((r>lo)&&(r<hi))
          z=zc
          endif
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

range-r-2_jul { ; Kerry Mitchell
        ;
        ; colors Julia set only when magnitude of iterate
        ; falls in certain range; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = unused
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by |sqr(c)+c|
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), iter=1
        z=1, fac=|sqr(c)+c|
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac:
        ;
        ; iteration
        ;   if magnitude of iterate falls into range, save iterate
        ;
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
        if ((r>lo)&&(r<hi))
          z=zc
          endif
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

range-r-3_jul { ; Kerry Mitchell
        ;
        ; colors Julia set only when magnitude of iterate
        ; falls in certain range; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = unused
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by |sqr(sqr(c)+c)+c|
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), iter=1
        z=1, fac=|sqr(sqr(c)+c)+c|
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac:
        ;
        ; iteration
        ;   if magnitude of iterate falls into range, save iterate
        ;
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
        if ((r>lo)&&(r<hi))
          z=zc
          endif
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

range-x_jul { ; Kerry Mitchell
        ;
        ; colors Julia set by imaginary part of iterate, only
        ; when real part of iterate falls in certain range;
        ; range specified explicitly
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 16)
        ; real(p3) = lower end of range (try 0.05)
        ; imag(p3) = upper end of range (try 0.06)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2)
        iter=1, angle=0, lo=real(p3), hi=imag(p3):
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   scale imaginary part into decomp angle
        ;
        iter=iter+1, zc=sqr(zc)+c, r=real(zc)
        if ((r>lo)&&(r<hi))
          angle=scale*imag(zc)
          endif
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }

range-x-1_jul { ; Kerry Mitchell
        ;
        ; colors Julia set by imaginary part of iterate, only
        ; when real part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 16)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by real(c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        angle=0, fac=real(c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          endif
        :
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   scale imaginary part into decomp angle
        ;
        iter=iter+1, zc=sqr(zc)+c, r=real(zc)
        if ((r>lo)&&(r<hi))
          angle=scale*imag(zc)
          endif
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }

range-x-2_jul { ; Kerry Mitchell
        ;
        ; colors Julia set by imaginary part of iterate, only
        ; when real part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 16)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by real(sqr(c)+c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        angle=0, fac=real(sqr(c)+c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          endif
        :
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   scale imaginary part into decomp angle
        ;
        iter=iter+1, zc=sqr(zc)+c, r=real(zc)
        if ((r>lo)&&(r<hi))
          angle=scale*imag(zc)
          endif
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }

range-x-3_jul { ; Kerry Mitchell
        ;
        ; colors Julia set by imaginary part of iterate, only
        ; when real part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 16)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by real(sqr(sqr(c)+c)+c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        angle=0, fac=real(sqr(sqr(c)+c)+c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          endif
        :
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   scale imaginary part into decomp angle
        ;
        iter=iter+1, zc=sqr(zc)+c, r=real(zc)
        if ((r>lo)&&(r<hi))
          angle=scale*imag(zc)
          endif
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }

range-y_jul { ; Kerry Mitchell
        ;
        ; colors Julia set by real part of iterate, only
        ; when imaginary part of iterate falls in certain range;
        ; range specified explicitly
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 16)
        ; real(p3) = lower end of range (try 0.05)
        ; imag(p3) = upper end of range (try 0.06)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2)
        iter=1, angle=0, lo=real(p3), hi=imag(p3):
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   scale real part into decomp angle
        ;
        iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
        if ((r>lo)&&(r<hi))
          angle=scale*real(zc)
          endif
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }

range-y-1_jul { ; Kerry Mitchell
        ;
        ; colors Julia set by real part of iterate, only when
        ; imaginary part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 16)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by imag(c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        angle=0, fac=imag(c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          endif
        :
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   scale real part into decomp angle
        ;
        iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
        if ((r>lo)&&(r<hi))
          angle=scale*real(zc)
          endif
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }

range-y-2_jul { ; Kerry Mitchell
        ;
        ; colors Julia set by real part of iterate, only when
        ; imaginary part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 16)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by imag(sqr(c)+c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        angle=0, fac=imag(sqr(c)+c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          endif
        :
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   scale real part into decomp angle
        ;
        iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
        if ((r>lo)&&(r<hi))
          angle=scale*real(zc)
          endif
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }

range-y-3_jul { ; Kerry Mitchell
        ;
        ; colors Julia set by real part of iterate, only when
        ; imaginary part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 16)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by imag(sqr(sqr(c)+c)+c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        angle=0, fac=imag(sqr(sqr(c)+c)+c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          endif
        :
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   scale real part into decomp angle
        ;
        iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
        if ((r>lo)&&(r<hi))
          angle=scale*real(zc)
          endif
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }

rangecount-r_jul { ; Kerry Mitchell
        ;
        ; colors Julia set only when magnitude of iterate
        ; falls in certain range; range explicity specified
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = lower bound of range (try 0.05)
        ; imag(p3) = upper bound of range (try 0.06)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2)
        iter=1, count=0, lo=real(p3), hi=imag(p3):
        ;
        ; iteration
        ;   if magnitude of iterate falls into range,
        ;     increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
        if ((r>lo)&&(r<hi))
          count=count+1
          endif
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }

rangecount-r-1_jul { ; Kerry Mitchell
        ;
        ; colors Julia set only when magnitude of iterate
        ; falls in certain range; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by |c|
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2)
        iter=1, count=0, fac=|c|
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac:
        ;
        ; iteration
        ;   if magnitude of iterate falls into range,
        ;     increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
        if ((r>lo)&&(r<hi))
          count=count+1
          endif
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }

rangecount-r-2_jul { ; Kerry Mitchell
        ;
        ; colors Julia set only when magnitude of iterate
        ; falls in certain range; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by |sqr(c)+c|
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2)
        iter=1, count=0, fac=|sqr(c)+c|
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac:
        ;
        ; iteration
        ;   if magnitude of iterate falls into range,
        ;     increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
        if ((r>lo)&&(r<hi))
          count=count+1
          endif
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }

rangecount-r-3_jul { ; Kerry Mitchell
        ;
        ; colors Julia set only when magnitude of iterate
        ; falls in certain range; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by |sqr(sqr(c)+c)+c|
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2)
        iter=1, count=0, fac=|sqr(sqr(c)+c)+c|
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac:
        ;
        ; iteration
        ;   if magnitude of iterate falls into range,
        ;     increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
        if ((r>lo)&&(r<hi))
          count=count+1
          endif
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }

rangecount-x_jul { ; Kerry Mitchell
        ;
        ; colors Julia set according to how many times real
        ; part of iterate falls in certain range;
        ; range specified explicitly
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = lower end of range (try 0.05)
        ; imag(p3) = upper end of range (try 0.06)
        ; center of range is multiplied by real(c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2)
        iter=1, count=0, lo=real(p3), hi=imag(p3):
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=real(zc)
        if ((r>lo)&&(r<hi))
          count=count+1
          endif
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }

rangecount-x-1_jul { ; Kerry Mitchell
        ;
        ; colors Julia set according to how many times real
        ; part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by real(c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        count=0, fac=real(c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          endif
        :
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=real(zc)
        if ((r>lo)&&(r<hi))
          count=count+1
          endif
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }

rangecount-x-2_jul { ; Kerry Mitchell
        ;
        ; colors Julia set according to how many times real
        ; part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by real(sqr(c)+c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        count=0, fac=real(sqr(c)+c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          endif
        :
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=real(zc)
        if ((r>lo)&&(r<hi))
          count=count+1
          endif
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }

rangecount-x-3_jul { ; Kerry Mitchell
        ;
        ; colors Julia set according to how many times real
        ; part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by real(sqr(sqr(c)+c)+c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        count=0, fac=real(sqr(sqr(c)+c)+c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          endif
        :
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=real(zc)
        if ((r>lo)&&(r<hi))
          count=count+1
          endif
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }

rangecount-y_jul { ; Kerry Mitchell
        ;
        ; colors Julia set according to how many times imaginary
        ; part of iterate falls in certain range;
        ; range specified explicitly
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = lower end of range (try 0.05)
        ; imag(p3) = upper end of range (try 0.1)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2)
        iter=1, count=0, lo=real(p3), hi=imag(p3):
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
        if ((r>lo)&&(r<hi))
          count=count+1
          endif
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }

rangecount-y-1_jul { ; Kerry Mitchell
        ;
        ; colors Julia set according to how many times imaginary
        ; part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by imag(c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        count=0, fac=imag(c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          endif
        :
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
        if ((r>lo)&&(r<hi))
          count=count+1
          endif
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }

rangecount-y-2_jul { ; Kerry Mitchell
        ;
        ; colors Julia set according to how many times imaginary
        ; part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by imag(sqr(c)+c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        count=0, fac=imag(sqr(c)+c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          endif
        :
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
        if ((r>lo)&&(r<hi))
          count=count+1
          endif
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }

rangecount-y-3_jul { ; Kerry Mitchell
        ;
        ; colors Julia set according to how many times imaginary
        ; part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by imag(sqr(sqr(c)+c)+c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        count=0, fac=imag(sqr(sqr(c)+c)+c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          endif
        :
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
        if ((r>lo)&&(r<hi))
          count=count+1
          endif
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          endif
        iter>0
        }

red { ; Kerry Mitchell 07sep98
        zc=0, c=pixel, bailout=1e3, iter=1, done=0
        cen1=p1, cen2=p2, radsqr1=|real(p3)|, radsqr2=|imag(p3)|
        count1=0, count2=0:
        iter=iter+1, zc=sqr(zc)+c
        temp1=|zc-cen1|
        if(temp1<radsqr1)
          count1=count1+1
          endif
        temp2=|zc-cen2|
        if(temp2<radsqr2)
          count2=count2+1
          endif
        if((|zc|>bailout)||(iter==maxit))
          done=1
          z=count1+flip(count2)
          endif
        done==0
        }

Regula_falsi{	;RSP 11NOV98
	; p2 acts as a sort of relaxation constant
	; p1 acts as a julia mapping
 IF(|p1|==0)
 z=pixel
 ELSE
 z=p1
 ENDIF
 x0=(1,1),
 c=x1=pixel
 :
 fx0=x0*x0*x0+3*x0*x0+2*x0+1,
 fx1=x1*x1*x1+3*x1*x1+2*x1+1,
 z=z-p2*(x1-x0)*fx1/(fx1-fx0)
 x2=z, x0=x1, x1=x2
.0000001<|(x2)|}

Regula_falsi2{
     IF(|p1|==0)
    z=pixel
     ELSE
    z=p1
     ENDIF
 x0=(1,1), c=x1=pixel:
 fx0=x0*x0+pixel,
 fx1=x1*x1+pixel,
 z=z-p2*(x1-x0)*fx1/(fx1-fx0),
 x2=z, x0=x1, x1=x2
.0000001<|(x2)|
}

Richard1 (XYAXIS) {; Jm Collard-Richard
  z = pixel:
  sq=z*z, z=(sq*sin(sq)+sq)+pixel
  |z|<=50
}

Richard5 (XAXIS) {; Jm Collard-Richard
  z = pixel:
  z=sin(z*sinh(z))+pixel
  |z|<=50
}

ring_jul { ; Kerry Mitchell 07sep98
        ;
        ; bails out when orbit falls in the ring between
        ; 2 concentric circles
        ; p1 = c = Julia parameter
        ; p2 = center of circles
        ; real(p3) = radius of inner circle, as a factor or cabs(c)
        ; imag(p3) = radius of outer circle, as a factor of cabs(c)
        ; bailout = 1000, use decomp=256
        ;
        c=p1, zc=pixel, bailout=1e3, iter=1, done=0
        center=p2, r1=real(p3), r2=imag(p3), fac=pi*2/(r2-r1):
        iter=iter+1, zc=sqr(zc)+c, r=cabs(zc-center)
        if((r>=r1)&&(r<=r2))
          done=1
          t=(r-r1)*fac
          z=cos(t)+flip(sin(t))
          endif
        if((|zc|>bailout)||(iter==maxit))
          done=1
          z=1
          endif
        done==0
        }

ringc_jul-alt { ; Kerry Mitchell 07sep98
        ;
        ; bails out when orbit falls in the ring between
        ; 2 concentric circles.  center = c.
        ; p1 = c = Julia parameter
        ; real(p2) = radius of inner circle, as a factor or cabs(c)
        ; imag(p2) = radius of outer circle, as a factor of cabs(c)
        ; bailout = 1000, use decomp=256

	  ; modification - alternate between two colour ranges
	  ; every iteration - by Luke Plant, 9 Sep 98

        c=p1, zc=pixel, bailout=1e3, iter=1, done=0
        center=c, r1=real(p2)*cabs(c), r2=imag(p2)*cabs(c)
        fac=pi/(r2-r1):
        iter=iter+1, zc=sqr(zc)+c, r=cabs(zc-center)
        if((r>=r1)&&(r<=r2))
          done=1
          t=(r-r1)*fac
          IF (trunc(iter/2)==(iter/2)) 
            t=t+pi
          ENDIF
          z=cos(t)+flip(sin(t))
          endif
        if((|zc|>bailout)||(iter==maxit))
          done=1
          z=1
          endif
        done==0
        }

ring_man { ; Kerry Mitchell 07sep98
        ;
        ; bails out when orbit falls in the ring between
        ; 2 concentric circles
        ; p1 = center of circles
        ; real(p2) = radius of inner circle, as a factor or cabs(c)
        ; imag(p2) = radius of outer circle, as a factor of cabs(c)
        ; bailout = 1000, use decomp=256
        ;
        zc=0, c=pixel, bailout=1e3, iter=1, done=0
        center=p1, r1=real(p2), r2=imag(p2), fac=pi*2/(r2-r1):
        iter=iter+1, zc=sqr(zc)+c, r=cabs(zc-center)
        if((r>=r1)&&(r<=r2))
          done=1
          t=(r-r1)*fac
          z=cos(t)+flip(sin(t))
          endif
        if((|zc|>bailout)||(iter==maxit))
          done=1
          z=1
          endif
        done==0
        }

ring_man-alt { ; modified Kerry Mitchell formula
        ;
        ; bails out when orbit falls in the ring between
        ; 2 concentric circles
        ; p1 = center of circles
        ; real(p2) = radius of inner circle, as a factor or cabs(c)
        ; imag(p2) = radius of outer circle, as a factor of cabs(c)
        ; bailout = 1000, use decomp=256
        ;

	  ; modification - alternate between two colour ranges
	  ; every iteration - by Luke Plant, 9 Sep 98

        zc=0, c=pixel, bailout=1e3, iter=1, done=0
        center=p1, r1=real(p2), r2=imag(p2), fac=pi/(r2-r1):
        iter=iter+1, zc=sqr(zc)+c, r=cabs(zc-center)
        if((r>=r1)&&(r<=r2))
          done=1
          t=(r-r1)*fac
          IF  (trunc(iter/2) == (iter/2))
            t=t+pi
          ENDIF
          z=cos(t)+flip(sin(t))
          endif
        if((|zc|>bailout)||(iter==maxit))
          done=1
          z=1
          endif
        done==0
        }

ringc_jul { ; Kerry Mitchell 07sep98
        ;
        ; bails out when orbit falls in the ring between
        ; 2 concentric circles.  center = c.
        ; p1 = c = Julia parameter
        ; real(p2) = radius of inner circle, as a factor or cabs(c)
        ; imag(p2) = radius of outer circle, as a factor of cabs(c)
        ; bailout = 1000, use decomp=256
        ;
        c=p1, zc=pixel, bailout=1e3, iter=1, done=0
        center=c, r1=real(p2)*cabs(c), r2=imag(p2)*cabs(c)
        fac=pi*2/(r2-r1):
        iter=iter+1, zc=sqr(zc)+c, r=cabs(zc-center)
        if((r>=r1)&&(r<=r2))
          done=1
          t=(r-r1)*fac
          z=cos(t)+flip(sin(t))
          endif
        if((|zc|>bailout)||(iter==maxit))
          done=1
          z=1
          endif
        done==0
        }

ringc_man { ; Kerry Mitchell 07sep98
        ;
        ; bails out when orbit falls in the ring between
        ; 2 concentric circles.  center = c.
        ; real(p1) = radius of inner circle, as a factor or cabs(c)
        ; imag(p1) = radius of outer circle, as a factor of cabs(c)
        ; bailout = 1000, use decomp=256
        ;
        zc=pixel, c=pixel, bailout=1e3, iter=1, done=0
        center=c, r1=real(p2)*cabs(c), r2=imag(p2)*cabs(c)
        fac=pi*2/(r2-r1):
        iter=iter+1, zc=sqr(zc)+c, r=cabs(zc-center)
        if((r>=r1)&&(r<=r2))
          done=1
          t=(r-r1)*fac
          z=cos(t)+flip(sin(t))
          endif
        if((|zc|>bailout)||(iter==maxit))
          done=1
          z=1
          endif
        done==0
        }

root_jul { ; Kerry Mitchell 11feb98
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e30)
        ; imag(p2) = unused
        ; use decomp=something (only 2 colors are used)
        zc=pixel, c=p1, iter=1, maxr=real(p2):
        iter=iter+1, z2=sqr(zc), znew=z2+c
        if ((|znew|>maxr)||(iter==maxit))
          w=sqrt(z2), r1=|zc-w|, r2=|zc+w|
          z=2*(r1<r2)-1
          iter=-1
        else
          zc=znew
        endif
        iter>0
        ;
        ; colors Julia set by whether or not previous iterate
        ;   is the principal root of the current z^2.
        ;
        }

root_man { ; Kerry Mitchell 11feb98
        ; real(p1) = bailout (try 1e30)
        ; imag(p1) = unused
        ; use decomp=something (only 2 colors are used)
        zc=0, c=pixel, iter=1, maxr=real(p1):
        iter=iter+1, z2=sqr(zc), znew=z2+c
        if ((|znew|>maxr)||(iter==maxit))
          w=sqrt(z2), r1=|zc-w|, r2=|zc+w|
          z=2*(r1<r2)-1
          iter=-1
        else
          zc=znew
        endif
        iter>0
        ;
        ; colors Mandelbrot set by whether or not previous
        ;   iterate is the principal root of the current z^2.
        ;
        }

rootcount_jul { ; Kerry Mitchell 11feb98
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e30)
        ; imag(p2) = unused
        ; real(p3) = inner coloring speed (0 for outside only)
        ; imag(p3) = outer coloring speed (0 for inside only)
        ; use decomp=256
        zc=pixel, c=p1, iter=1, maxr=real(p2), count=0
        inspeed=real(p3)*pi*255/128
        outspeed=imag(p3)*pi*255/128:
        iter=iter+1, z2=sqr(zc), w=sqrt(z2),
        r1=|zc-w|, r2=|zc+w|, zc=z2+c
        if (r1<r2)
          count=count+1
          endif
        if (iter==maxit)
          angle=inspeed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        if (|zc|>maxr)
          angle=outspeed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        iter>0
        ;
        ; Colors Julia set by how often previous iterate
        ; is the principal root of the current z^2.  The
        ; count of principal root times is divided by the
        ; total number of iterations, and scaled into an
        ; angle for decomposition coloring.  Either inside
        ; or outside can be switched off by setting the
        ; appropriate coloring speed parameter to 0.
        ;
        }

rootcount_man { ; Kerry Mitchell 11feb98
        ; real(p1) = bailout (try 1e30)
        ; imag(p1) = unused
        ; real(p2) = inner coloring speed (0 for outside only)
        ; imag(p2) = outer coloring speed (0 for inside only)
        ; use decomp=256
        zc=0, c=pixel, iter=1, maxr=real(p1), count=0
        inspeed=real(p2)*pi*255/128
        outspeed=imag(p2)*pi*255/128:
        iter=iter+1, z2=sqr(zc), w=sqrt(z2),
        r1=|zc-w|, r2=|zc+w|, zc=z2+c
        if (r1<r2)
          count=count+1
          endif
        if (iter==maxit)
          angle=inspeed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        if (|zc|>maxr)
          angle=outspeed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        iter>0
        ;
        ; Colors Mandelbrot set by how often previous iterate
        ; is the principal root of the current z^2.  The
        ; count of principal root times is divided by the
        ; total number of iterations, and scaled into an
        ; angle for decomposition coloring.  Either inside
        ; or outside can be switched off by setting the
        ; appropriate coloring speed parameter to 0.
        ;
        }

Rota4 { ; Agustin Martin Barbero   II-1998
        ; p1 deforming factor (expands black areas? Usually leave it 0)
        ; p2 = Bailout - 4      if u use imag(p3)=1, p2 should be high
        ;        but not too much...
        ; real(p3) scale factor for deformation waves. Keep it high if 
        ;   you want to see the big picture like an z^n + c formula
        ; imag(p3) exponent of z^n + c (no need to explain this)
 z=pixel
 c=z:
  z= cabs(z)*exp(flip(cabs(z - p1)))/real(p3) +z^imag(p3) +c
 |z|<=4+p2
}

RSP_10060	{;rsp 28jul98
;Newt_Carlson typo and other mistakes
  c=pixel,  w=z=iter=bailout=0,  ca=.382683432365, cb=.923879532511,
d0=p2+p3,
IF (|P1|==0)	
  d1=ca*p2
  d2=cb*p2
ELSE		
  d1=p1*p2
  d2=p1*p2
ENDIF
g=p2, h=p3,		
dsq= g*(h*(2*(1-g)-h) + g*(2-d2*g) ) + h*h :
w2=w*w,   fnc=w2*w2-w-c,   der=4*w*w2-1,   k=1*fnc/(der-12*w2*fnc/der/2),
w=w-k,
IF (((abs(cabs(w)-p2))<p3) && (iter>0))
	  bailout=1,
	  wr=real(w), 
	  awr=abs(wr),
	  wi=imag(w), awi=abs(wi),
	IF (awr>=awi)
  		dist=(awr-d2)*(awr-d2)+(awi-d1)*(awi-d1), adjust=1,
		ELSE
  		dist=(awr-d1)*(awr-d1)+(awi-d2)*(awi-d2), adjust=0,
		ENDIF
		ENDIF
IF (wr>=0 && w1>=0)
  range_num=1-adjust
ELSEIF (wr<0 && w1>0)
  range_num=2+adjust
ELSEIF (wr<0 && w1<=0)
  range_num=2+adjust
ELSEIF (wr<0 && w1<=0)
  range_num=5-adjust
ELSE
  range_num=6+adjust
ENDIF
   ratio=sqrt(dist/dsq), z=29*ratio+range_num*30+1
IF( |k|< .00001 )
  bailout=1,    z=252,
ENDIF
  iter=iter+1,     z=z-iter,    bailout==0 }

RSP_10061	{;rsp 28jul98
;Newt_Carlson typo and other mistakes
  c=pixel, w=z=iter=bailout=0, ca=real(pixel), cb=imag(pixel), d0=p2+p3,
IF (|P1|==0)	 
  d1=ca*p2
  d2=cb*p2
ELSE		
  d1=p1*p2
  d2=p1*p2
ENDIF
g=p2, h=p3, dsq= g*(h*(2*(1-g)-h) + g*(2-d2*g) ) + h*h :
w2=w*w,   fnc=w2*w2-w-c,   der=4*w*w2-1,   k=1*fnc/(der-12*w2*fnc/der/2),
w=w-k,
IF (((abs(cabs(w)-p2))<p3) && (iter>0))
	  bailout=1,
	  wr=real(w), 
	  awr=abs(wr),
	  wi=imag(w), awi=abs(wi),
	IF (awr>=awi)
  		dist=(awr-d2)*(awr-d2)+(awi-d1)*(awi-d1), adjust=1,
		ELSE
  		dist=(awr-d1)*(awr-d1)+(awi-d2)*(awi-d2), adjust=0,
		ENDIF
		ENDIF
IF (wr>=0 && w1>=0)
  range_num=1-adjust
ELSEIF (wr<0 && w1>0)
  range_num=2+adjust
ELSEIF (wr<0 && w1<=0)
  range_num=2+adjust
ELSEIF (wr<0 && w1<=0)
  range_num=5-adjust
ELSE
  range_num=6+adjust
ENDIF
   ratio=sqrt(dist/dsq), z=29*ratio+range_num*30+1
IF( |k|< .0000001 )
  bailout=1,    z=252,
ENDIF
  iter=iter+1,     z=z-iter,    bailout==0 }

RSP_10062	{;rsp 28jul98
;Newt_Carlson typo and other mistakes
c=w=pixel, 
z=iter=bailout=0, 
ca=real(pixel), 
cb=imag(pixel), 
d0=p2+p3,
IF (|P1|==0)	
d1=ca*p2
d2=cb*p2
ELSE		
d1=p1*p2
d2=p1*p2
ENDIF
g=p2, 
h=p3,		
dsq= g*(h*(2*(1-g)-h) + g*(2-cb*g) ) + h*h :
w2=w*w, pder=(1-w2/2+w2*w2/12-w2*w2*w2/720), fnc=w2*w2-w-sin(w),
der=4*w*w2-1-pder,   
k=1*fnc/(der-12*w2*fnc/der/2), w=w-k,
IF (((abs(cabs(w)-p2))<p3) && (iter>0))
bailout=1,
wr=real(w), 
awr=abs(wr),
wi=imag(w), 
awi=abs(wi),
  IF (awr>=awi)
  dist=(awr-d2)*(awr-d2)+(awi-d1)*(awi-d1), 
  adjust=1,
  ELSE
  dist=(awr-d1)*(awr-d1)+(awi-d2)*(awi-d2), adjust=0,
  ENDIF
ENDIF
IF (wr>=0 && wi>=0)
range_num=1-adjust
ELSEIF (wr<0 && wi>0)
range_num=2+adjust
ELSEIF (wr<0 && wi<=0)
range_num=2+adjust
ELSEIF (wr<0 && wi<=0)
range_num=5-adjust
ELSE
range_num=6+adjust
ENDIF
ratio=sqrt(dist/dsq),  z=29*ratio+range_num*30+1
IF( |k|< .0000001 )
  bailout=1,    z=252,
ENDIF
  iter=iter+1,     z=z-iter,    bailout==0 }

RSP_10063	{;rsp 28jul98
;Newt_Carlson typo and other mistakes
c=w=pixel, z=iter=bailout=0, ca=real(pixel/|pixel|), cb=imag(pixel/|pixel|),
d0=p2+p3,
IF (|P1|==0)	
d1=ca*p2
d2=cb*p2
ELSE		
d1=p1*p2
d2=p1*p2
ENDIF
g=p2 
h=p3		
 dsq=(g*g-2*g*h)*h*d2/g/g-(3*g*g+2*h)*(g-2*d2)*h/g+6*g*h*(g-2*h) :
w2=w*w, pder=(1-w2/2+w2*w2/12-w2*w2*w2/720), fnc=w2*w2-w-sin(w),   
der=4*w*w2-1-pder, k=1*fnc/(der-12*w2*fnc/der/2),  w=w-k,
IF (((abs(cabs(w)-p2))<p3) && (iter>0))
bailout=1,
wr=real(w),  awr=abs(wr),
wi=imag(w),  awi=abs(wi),
  IF (awr>=awi)
  dist=(awr-d2)*(awr-d2)+(awi-d1)*(awi-d1), 
  adjust=1,
  ELSE
  dist=(awr-d1)*(awr-d1)+(awi-d2)*(awi-d2), 
  adjust=0,
  ENDIF
ENDIF
IF (wr>=0 && wi>=0)
 range_num=1-adjust
ELSEIF (wr<0 && wi>0)
 range_num=2+adjust
ELSEIF (wr<0 && wi<=0)
 range_num=2+adjust
ELSEIF (wr<0 && wi<=0)
 range_num=5-adjust
ELSE
 range_num=6+adjust
ENDIF
ratio=sqrt(dist/dsq), z=29*ratio+range_num*30+1
IF( |k|< .0000001 )
  bailout=1,    z=252,
ENDIF
  iter=iter+1,     z=z-iter,    bailout==0 }

rsp_1010{
z=a=pixel, 
c=a*(a*a-1)/(a*a*a*a-3*a*a+1):
z=z*z+c/a, |z|<=64}

rsp_1011{
z=pixel,a=(pixel*(|p1|<=0)+p1), 
c=a*(a*a-1)/(a*a*a*a-3*a*a+1):
z=z*z+c/a, |z|<=64}

rsp_1011m{ ;RSP 24MAY98
bail=(64*(imag(p2)<=0)+imag(p2)),
z=(pixel*(|p1|<=0)+(2.5*pixel)),
a=(pixel*(|p1|<=0)+p1):
b=sqr(a),
c=(b-1)/(b*(b-z)+1),
z=z*z+c,
(real(z)*imag(z))<=bail}

rsp_1012{; RSP 24MAY98
 bail=(64*(|p2|<=0)+(p2)),
 z=(pixel*(|p1|<=0)+(2.5*pixel)),
 a=(pixel*(|p1|<=0)+p1),
 b=sqr(a): 
 c=(b-1)/(b*(b-z)+1),
 y=real(z*c),
 x=flip(imag(c/z+1)),
 z=x+y+c, 
 (real(z)*imag(z))>=bail}

rsp_1170{	;*RSP 11NOV98
	;hex_iter1_zero
  IF(|p1|==0)
    c=pixel
    ELSE
    c=p1
  ENDIF
  z=pixel,
  IF(|p2|==0)
    r=1
    ELSE
    r=p2
  ENDIF
  :
  z2=z*z
  z3=z*z2
  z=z-r*(c-z3*z3)/(z2)
  .00001 <= |z|}




rsp_1171{	;*RSP 11NOV98
         	;hex_iter1_escape
  IF(|p1|==0)
    c=pixel
    ELSE
    c=p1
  ENDIF
  z=pixel,
  IF(|p2|==0)
    r=1
    ELSE
    r=p2
  ENDIF
  :
  z2=z*z
  z3=z*z2
  z=-c*r*(c-z3*z3)/(z2)
  |z|<=64}

rsp_3080   { ;*RSP 29MAY98
  z=pixel,
  n=p1: 
  z=z^n*sin(1/z)}

rsp_3090   { ;*RSP 29MAY98
  z=pixel,
  n=p1: 
  z=z^n*sin(n/z)}

rsp_3091   { ;*RSP 29MAY98
  z=pixel,
  bail=(64*(|p2|<=0)+p2),
  n=(1*(|p1|<=0)+p1): 
  z=z^n*sin(n/z)
  |z|<=bail}

rsp_3170	{; RSP 23MAY98
  z=c=pixel: ; P1 IS NORMALLY 1
  f=2.5*z*z*z-1.5*z, 
  g=7.5*z*z-1.5, h=15*z,
  z=z-p1*f/(g-(h*(c-z)^2)/(2*g)),
 .001<=|f|}

rsp_4060	{;RSP 27JUN98
 z=(1,1), c=100*pixel: 
 zz=sqr(z),
 f=(4*zz*z-3*z)+c, g=12*zz-3, 
 z=z-p1*f/g, 
 .0001<|f| }

rsp_5010	{; RSP 23MAY98
  ;P1 IS ZOOM OUT CANT BE ZERO
  ;P2 IS BAILOUT VALUE
  z=c=p1*pixel:	
  f=1/tanh(z),
  g=log(sinh(z)),
  z=z-f/g,
  |f|<=p2}

rsp_5020   { ;*RSP 27MAY98
		 ;A different Runge adaptation
       xo=yo=z=(pixel),
       h=(pixel/|pixel|),
       bail=(4*(|p2|<=0)+p2)
       h2=(h*(|p1|<=0)+h/p1):
       xo=real(z),
       yo=imag(z),
       k1=fn1(h*(xo+flip(yo))),
       k2=fn2(h*(xo+h2+flip(yo+k1/2))),
       k3=fn3(h*(xo+h2+flip(yo+k2/2))),
       k4=fn4(h*(xo+h+flip(yo+k3))),
       z=flip(yo)+(k1+2*k2+2*k3+k4)/6,
	|z|>=bail
	}

rsp_5060     {;rsp 27jun98
       r=(1*(|p1|<=0)+p1)
       c=3.1415927,
       z=pixel:
       f=cos(z/2),
       z=z-c*(f-r/(2*sqr(f))),
       .001<|f|}

rsp_6010  {;rsp 14AUG98
z=sqrt(-pixel),n=1, c=pixel:
n=n+1, z=(z-c)*(z+c)*(z+1),
|z|<=(256/n)}

rsp_6011  {;rsp 15AUG98
z=-1/(2*pixel), c=pixel:
f=z*z+c, oz=z, z=1/z, z=1-z, 
z=1/(1-z), z=(z-1)/z, 
z=z/(z-1), z=z*z*c+z,
fz=2*c*z+1
real(f*fz/z)<=1000}

rsp_6040{;rsp 16aug98
z=c=p2*pixel:
f=sin(z*z+z+1),
g=(2*z+1)*cos(z*z+z+1),
z=z-p1*f/g,
.00001<=|f|,}

rsp_6050 {;rsp 16aug98
x=pixel,  c=real(pixel), d=imag(pixel), y=p1:
g=x*x*x/(x-1), z=(g)+c+(d*y), y=x, x=z,
|z|<=4}

rsp_7060(xaxis){;12050
z=c=pixel,
c2=fn1(c):
z=c*z+c2-.5*z*z,
|z|<=100+p2}

rsp_7140{;rsp 28jul98
Z=C=PIXEL,A=P1:
Z=SQRT(Z*SQR(Z-A))-C,
|Z|<P2+64}

rsp_7150{;rsp 16aug98
;z=(.537285,.537285),
z=.015625
c=pixel:
z=z^5+z^2+c
|z|<=164}

rsp_7160{;rsp 15jul98
c=pixel,n=1,p=3.1415927
z=pixel:
f=(1+cos( (2*z-1)*p/2/n)),
g=-2*sin( (2*z-1)*p/2/n)
z=z-f/g
n=n+1
.0001<=|f|}

rsp_a301{;rsp 3/99
r=p1,c=z=pixel:
oz=z, z2=z*z, 
z=r*(c/(z2*z2*z)+1/z2)
|z/oz|>p2}

rsp_a304{;*rsp 3/99
c=z=pixel:
oz=z, z=z*z+c,test=|z|/|oz|
|test|<1 || |test|>2}

rsp_a305{;rsp 3/99
c=z=pixel:
oz=z
z=z*z+c
test=c*|z|/|oz|
|test|<p1 || |test|>p2}

rsp_a309{;rsp 3/99
c=z=pixel:
oz=z
z=z*z+c
test=fn1(z)/|oz|
|test|<p1 || |test|>p2}

rsp_may002{
    z=10*pixel
    a=z, an=1, n=i=0,
    :
    i=i+.5, n=a-i, 
    an=an*n/(z^n), oz=z,
    z=1+z+an
    |z-oz|>.00001
    }

rsp_may005 {
    z=w=c=pixel, n=p1,
    :
    w=w*w+c, z=(w-floor(w))*n
    |w|<p2  
    }

rsp_may007 {
    z=w=pixel, c=pixel, n=p1
    :
    z=z*z+c, w=(w-floor(w))*n
    |z|<p2  || |w|>n
    }

rsp_may008 {
    z=w=pixel, c=pixel, n=p1,
    :
    z=z*z+c, w=(z/n-floor(z/n))*n
    |z|<p2  || |w|>n
    }

rsp_may011 (xaxis) {; Added variable "ee", 7/26/99. G. Martin
  n=a=b=c=d=ee=f=g=f0=f1=0
  u=pixel, z=0, cc=pixel
  :
  n=n+1
  u=u*u+cc, a0=real(u), a1=imag(u)
  v=u*u+cc, b0=real(v), b1=imag(v)
  w=v*v+cc, c0=real(w), c1=imag(w)
  a=b0-a0, b=b1-a1, c=c0-a0, d=c1-a1
  ee=a*(a0+b0) + b*(a1+b1)
  f=c*(a0+c0) + d*(a1+c1)
  g=2*(a*(c1-b1)-b*(c0-b0))
  f0=(d*ee-b*g)/f, f1=(a*g-c*ee)/f
  r2=sqrt((a0-f0)*(a0-f0)+(a1-f1)*(a1-f1))
  z=ceil(cabs(v-u)+cabs(w-v)), count=n
  (|z|>=|r2*p1|)  || (count>257)
}


rsp_may012 {; Added variable "ee", 7/26/99. G. Martin
  n=a=b=c=d=ee=f=g=f0=f1=0
  u=pixel, z=0
  cc=p2
  :
  n=n+1
  u=u*u+cc, a0=real(u), a1=imag(u)
  v=u*u+cc, b0=real(v), b1=imag(v)
  w=v*v+cc, c0=real(w), c1=imag(w)
  a=b0-a0, b=b1-a1, c=c0-a0, d=c1-a1
  ee=a*(a0+b0) + b*(a1+b1)
  f=c*(a0+c0) + d*(a1+c1)
  g=2*(a*(c1-b1)-b*(c0-b0))
  f0=(d*ee-b*g)/f, f1=(a*g-c*ee)/f
  r2=sqrt((a0-f0)*(a0-f0)+(a1-f1)*(a1-f1))
  z=ceil(cabs(v-u)+cabs(w-v)), count=n
  (|z|>=|r2*p1|)  || (count>257)
}

rspf_4032	{;RSP 06JUN98
  z=4*pixel: 
zz=sqr(z),
f=4*zz*z-3*z, 
g=12*zz-3, 
h=24*z,
z=z-P1*f/(g-f*f/2/h)
(1+real(z*h/g)) <=(0+P2) }

rspf_4050	{;RSP 06JUN98
c=50*pixel, z=(1,1): 
zz=sqr(z),
f=zz*zz*z-zz*z+c, 
g=5*zz*zz-3*zz, 
h=20*zz*z-6*z, 
z=z-p1*f/(g-f*f/2/h), 
.0001<=|f|}

rspf_5030 {; RSP 07JUN98
           ; Revised for Fractint v20 by G. Martin
  z=pixel:
  g=sqr(z)*sqr(z)*z-z*sqr(z)+1
  h1=5*sqr(z)*sqr(z)-3*sqr(z)
  h2=20*z*sqr(z)-6
  h3=60*sqr(z)-6
  h=h1*h3/sqr(h2)
  z=z-p1*g/h
  .0001<=|g|
}

Runge01	   {;RSPF010 22MAY98
z=c=pixel, 
h=real(p1), 		;step size start with whole + /- numbers
b=imag(p1):		;bailout value
k1=fn1(z)+c, 
 xb=real(z)+h/2,
 yb=flip(imag(z))+h*k1/2,
k2=fn1(xb+yb),
 yb=flip(imag(z))+h*k2/2,
k3=fn1(xb+yb),
 x=imag(z)+h,
 yb=flip(imag(z))+h*k3,
k4=fn1(x+yb),
z=c+flip(imag(z))+h*(k1+2*k2+2*k3+k4)/6,
(real(z)*imag(z))<=b}

S02-01{;V.1.0 - earlier versions may be discarded
; = zS01-S00
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
Tx=x*x-1
Ty=y*y-1
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

S03-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(x*x-2)
  Ty=y*(y*y-2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
}

S04-01{;V.1.0 - earlier versions may be discarded
; = zS03-S02
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
xx=x*x,yy=y*y
Tx=xx*(xx-3)+1
Ty=yy*(yy-3)+1
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

S04-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz-3)+1
  fd=2*z*(2*zz-3)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}




S05-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=x*(xx*(xx-4)+3)
  Ty=y*(yy*(yy-4)+3)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
}

S06-01{;V.1.0 - earlier versions may be discarded
; = zS05-S04
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
xx=x*x,yy=y*y
Tx=xx*(xx*(xx-5)+6)-1
Ty=yy*(yy*(yy-5)+6)-1
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

S06-20{;V.1.0 - earlier versions may be discarded
; = zS05-S04
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
xx=x*x
y=y+t*sin(xx*(xx*(xx-5)+6)-1)
yy=y*y
x=x-t*sin(yy*(yy*(yy-5)+6)-1)
z=x+flip(y)
|z|<=bailout}

S07-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(x*(xx*(xx*(xx-6)+10)-4))
  Ty=sin(y*(yy*(yy*(yy-6)+10)-4))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
}

S08-01{;V.1.0 - earlier versions may be discarded
; = zS07-S06
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
xx=x*x,yy=y*y
Tx=xx*(xx*(xx*(xx-7)+15)-10)+1
Ty=yy*(yy*(yy*(yy-7)+15)-10)+1
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

S10-01{;V.1.0 - earlier versions may be discarded
; = zS09-S08
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
xx=x*x,yy=y*y
Tx=xx*(xx*(xx*(xx*(xx-9)+28)-35)+15)-1
Ty=yy*(yy*(yy*(yy*(yy-9)+28)-35)+15)-1
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

S10-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz*(zz-9)+28)-35)+15)-1
  fd=(z+z)*(zz*(zz*(zz*(5*zz-36)+84)-70)+15)
  fdd=6*(zz*(zz*(3*zz*(5*zz-28)+140)-70)+5)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}

Secant_Sin {; Copyright (c) Paul W. Carlson, 1998
    ;
    ; F(w) = sin(w) - p3
    ;
    ; p1 = convergence test distance (I use 0.00000001)
    ; p2 = relaxation factor
    ; p3 = equation constant
    ;
    w0 = pixel
    w1 = flip(w0)
    z = iter = bailout = w = 0
    :
    ;
    f0 = sin(w0) - p3
    f1 = sin(w1) - p3
    w = w - p2 * f1 * (w1 - w0) / (f1 - f0)
    ;
    delta_w = w1 - w0
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
	bailout = 1
	z = 249 * angle/pi + 1
    ENDIF
    w0 = w1;
    w1 = w,
    iter = iter + 1
    z = z - iter
    bailout == 0
}

SECANT1{; Ray Girvan, March 1998
    ; secant method for roots of f(z)=0
    ; z^5-1=0
    ; z_n+1 = z_n - f(z_n)*(z_n - z_n-1)/(f(z_n) - f(z_n-1))
    ; needs two seed values z0, z1
    ; Newton-like images, perturbed by choice of z1,
    ; a relaxation factor p2, and a function fn2
    ; inside the iteration loop 
   z=pixel, z0=(0,0), z1=fn1(z)+p1:
   f0=z0*z0*z0*z0*z0-1
   f1=z1*z1*z1*z1*z1-1 
   z=z-p2*f1*(z1-z0)/(f1-f0);
   z0=z1;
   z1=fn2(z),
   |f1| >= 0.0001
}

Series_Balls_Mset {; Copyright (c) Paul W. Carlson, 1998
    ;
    ; real(p1) = a factor controlling the size of the balls
    ;
  w = z = iter = color_num = bailout = 0
  c = pixel
  dist = 1.0e20
  size = real(p1)
  num_colors = 8
  aaa = 1 / 90, bbb = 1 / 113400, ccc = 1 / 681080400
  :
  w = w * w + c, w2 = w * w, w4 = w2 * w2, w6 = w2 * w4
  w10 = w4 * w6, w14 = w4 * w10
  w = w2 - aaa * w6 + bbb * w10 - ccc * w14 + c, w = w * w + c
    ;
  IF (|w + (0,-.5)| < size)
    dist = size - |w + (0,-.5)|
  ELSEIF (|w + (0,.5)| < size)
    dist = size - |w + (0,.5)|
  ELSEIF (|w + (-.5,0)| < size)
    dist = size - |w + (-.5,0)|
  ELSEIF (|w + (.5,0)| < size)
    dist = size - |w + (.5,0)|
  ENDIF
  IF (dist < size && iter > 0)
    bailout = 1
    z = color_num + 1.2
  ENDIF
  color_num = color_num + 1
  IF (color_num == num_colors)
    color_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < 100
}

sg_ifs_45_J{
a0=0.40944,b0=0.63556,c0=0.69977,d0=-0.36429,
a1=0.44003,b1=-0.21839,c1=0.41333,d1=0.37676,
a2=0.10788,b2=0.43864,c2=0.08479,d2=0.25711,
al0=-0.59391,k0=3.91945,l0=-3.79794,
al1=0.25605,k1=0.47092,l1=-2.67077,
al2=-0.00946,k2=1.93894,l2=-0.59695,
z=pixel:
x=real(z)
y=imag(z)
o0=(d0*x-b0*y+k0)/al0+flip((-c0*x+a0*y+l0)/al0)
op0=|o0-p2|
o1=(d1*x-b1*y+k1)/al1+flip((-c1*x+a1*y+l1)/al1)
op1=|o1-p2|
o2=(d2*x-b2*y+k2)/al2+flip((-c2*x+a2*y+l2)/al2)
op2=|o2-p2|
IF (op0<op1 && op0<op2)
z=o0
ELSEIF (op1<op0 && op1<op2)
z=o1
ELSEIF (op2<op1 && op2<op0)
z=o2
ENDIF
|z|<=p1
}

Shields_Mset {; Copyright (c) Paul W. Carlson, 1998
    ; Parameters:
    ;   real(p1) = controls the size of the shields (0.1 to 0.8)
    ;   imag(p1) = number of iterations to skip
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;   p3       = bailout value for |w|
    ;
    c = pixel
    w = z = bailout = iter = range_num = 0
    shield_size = real(p1)
    skip_iters = imag(p1)
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    k = 0.5 + shield_size
    j = 0.5 - shield_size
    index_factor = (colors_in_range - 1) / shield_size:
    ;****************************************************
    w2=w*w, w4=.01*w2*w2, w8=w4*w4, w12=w4*w8, w16=w4*w12
    w = w2 - w4 - w8 - w12 - w16 + c
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
    bailout == 0  && |w| < p3
}

sfi-p160 { ; Sylvie Gallet, Mar 1998
  z = pixel :
  z = e^(z-1)                       ; z = 1/e * e^z
  if (z >= 50 && cos(imag(z)) >= 0)
    continue = 0
  else
    continue = 1
  endif
  continue
}

SGG088 {; 15.03.95
  z=1/pixel, x=real(pixel):
  y=conj(z)
  z=conj(z)^p1+sqr(x)
  x=conj(y+log(z))
  |z|<=4
}

SGRM-5 { ; Sylvie Gallet's Gallet-3-02 formula
         ; Adulterated by Bob Margolis
 z = fn1(pixel) :
 x = real(z) , y = imag(z)
 x1 = x - p1*fn2(y+p2*fn3(y))
 y1 = y - p1*fn2(x+p2*fn3(x))
 z = x1+flip(y1)
 |fn1(z)| <= 4
}

Sierpinsky {; Use p1=2 for the triangle, 
            ; and p1=(1.3,.5) for a strange thing
  z=pixel, j=(0, -1), k=(-1, 0):
  x=real(z),
  y=imag(z),
  y1=(y>.5)
  x1=(x>.5)
  a=y1*j
  b=x1*(y1==0)*k
  p=a+b
  z=p1*z+p
  |z|<=100
}

SierpinskiB {; Jonathan Osuch
             ; float = yes
             ; Edited for Fractint v. 20 by George Martin 10/98
  z=fn1(pixel), t = p2 + 127:
  y=imag(z), x=real(z)
  z=p1*z
  IF (y>0.5)
    z = z - (0,1)
  ELSEIF (x>0.5)
    z = z - (1,0)
  ENDIF
  |z| <= t
}

SimpleCurve {; modified for compatibility with Fractint v20.0
             ; original line 2 was "z = 10^-sin(Pixel*z)"
             ; original version only works with v19.6 or lower
        z = Pixel:
        z = -sin(Pixel*z)
        |z| < 4
}

SimpleCurve1 {; modified for compatibility with Fractint v20.0
              ; original line 3 was "z = 10^-sin(Pixel*z)"
              ; original version only works with v19.6
        z = Pixel:
        if ( |z| < 2 )
        z = -sin(Pixel*z)
        else
         z=0.2*z*Pixel/(Pixel+1)
        endif
        |z| < 4
}

SimplePendulumG{
bailout=real(p2)+4
dt=real(p1)
z=pixel
pi2=Pi+Pi:
x=real(z)
y=imag(z)
z=x+y*dt+flip(y+fn1(pi2*x)*dt)
|z|<=bailout}

Sine_of_Brot (xaxis) { ;the sine of the Mandelbrot formula
            ;formulae by Joe McKenzie
            ;email: joemck@crosswinds.net
            ;You may use them freely as long as you:
            ;(1) distribute it as is and
            ;(3) LEAVE IN THIS ENTRY.
  z=0, c=pixel:
    z=sin(z^2+c)
    |z| < 4
}

SliceJB {; by John R. H. Goering, July 1999
;This formula produces 2D slices of the 4D Julibrot set. The numbers for
;p1 and p2 describe the rotation of the plane that slices the set (I
;call that plane the uv-plane -- the u-axis is the horizontal axis on 
;the screen and the v-axis is the vertical axis). I call the 4 axes
;in 4-space the p, q, r, & s axes. The M-set is in the pq-plane and the
;J-sets are in the rs-plane and planes "parallel" to it. The rotation angles
;are to be entered as fractions of pi (e.g., pi/4 would be entered as0.25).
;At first, the uv-plane is identical to the pq-plane.
;Then the rotations are performed counterclockwise in each plane as follows:
;First: real(p1)--the rotation in the qs-plane.  Then imag(p1)--qr-plane.
;real(p2)--pr-plane. imag(p2)--pq-plane.
;The origin of the resulting skewed uv-plane is then placed at the point
;(real(p3), imag(p3), 0, 0) in pqrs-space. To create the M-set, leave the
;parameters alone, or you may change p3 to change the position of the M-set 
;on the uv-plane.
;To create a J-set, set real(p1)=real(p2)=0.5, then set p3 equal to the
;constant for the J-set (let imag(p1)=imag(p2)=0).
;The parameters for p1 and p2 that are needed to put the uv-plane parallel to
;the various coordinate planes are as following (the numbers are given in the
;order -- real(p1), imag(p1), real(p2), imag(p2) ):
;pq-plane: 0, 0, 0, 0   pr-plane: 0, 0.5, 0, 0   ps-plane: 0.5, 0, 0, 0
;qr: 0, 0.5, 0, 0.5  qs: 0.5, 0, 0, 0.5  rs: 0.5, 0, 0.5, 0

  pix=pixel, u=real(pix), v=imag(pix), a=pi*real(p1), b=pi*imag(p1)
  g=pi*real(p2), d=pi*imag(p2), ca=cos(a), cb=cos(b), sb=sin(b), cg=cos(g)
  sg=sin(g), cd=cos(d), sd=sin(d)
  p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd)
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd)
  r=u*sg+v*ca*sb*cg, s=v*sin(a), c=p+flip(q) + p3, z=r+flip(s):
  z=z*z+c
  |z|<=4
}

smooth_man { ; Kerry Mitchell
        ; smooth iteration coloring based on Damien Jones'
        ; interpretation of Linas Vepstas' scheme
        ; real(p1) = bailout
        ; imag(p1) = color scaling factor (1 = integer bands)
        ; "decomp=256" coloring
        bailout=real(p1), scale=imag(p1)*pi/128
        ol2 = 1/log(2), fac=log(0.5*log(bailout))
        iter=1, z=0, c=pixel
        :
        iter=iter+1, z=sqr(z)+c
        if(|z|>bailout)
          t=(iter+ol2*(fac-log(log(cabs(z)))))*scale
          z=cos(t)+flip(sin(t))
          iter=-1
        endif
        iter>0
        }

SMP_Quotient_G1 (XAXIS) {
  z = pixel:
  z = (fn1(z) + pixel) / (fn2(z) - pixel),
  |z| <= 42
}

SnakeTree3 {
z=pixel, a=0, b=10000*p1*p1:
y=1-cos(p1*a), z=((-z)^(1.06+y/b)+3.4)*(1-p2*y), a=a+1
|z|<=100
}

spiral_J{
a0=0.78788,b0=-0.42424,c0=0.24242,d0=0.85985,
a1=-0.12121,b1=0.25758,c1=0.15152,d1=0.05303,
a2=0.18182,b2=-0.13636,c2=0.09091,d2=0.18182,
al0=0.78030,k0=-2.10953,l0=-0.68305,
al1=-0.04545,k1=0.71119,l1=-0.85149,
al2=0.04545,k2=-1.32039,l2=0.26818,
z=pixel:
x=real(z)
y=imag(z)
o0=(d0*x-b0*y+k0)/al0+flip((-c0*x+a0*y+l0)/al0)
op0=|o0-p2|
o1=(d1*x-b1*y+k1)/al1+flip((-c1*x+a1*y+l1)/al1)
op1=|o1-p2|
o2=(d2*x-b2*y+k2)/al2+flip((-c2*x+a2*y+l2)/al2)
op2=|o2-p2|
IF (op0<op1 && op0<op2)
z=o0
ELSEIF (op1<op0 && op1<op2)
z=o1
ELSEIF (op2<op1 && op2<op0)
z=o2
ENDIF
|z|<=p1
}

spider_ellipse{;bailout variation by kathy roth
               ; by Jean-Pierre Louvet
               ; shortcut by Bud
  z=pixel, f=pixel, g =f+p2, a=real(p3), b=imag(p3):
    f=f/p1+z,
    z=fn1(z^g)+fn2(f),
 real(z) * real(z)/ a + imag(z) * imag(z)/b < 1
   }

SpiderJulcplx {; by Jon Horner - 100112,1700 - FRAC'Cetera
               ; Complex-form of SPIDERJUL
               ; float=yes
  z = pixel, c = p1:
  z = z * z + c,
  c = c * p2 + z,
  |z| <= 4
}

spiderM { ; by Jean-Pierre Louvet
z=pixel,f=pixel,g=pixel:
f=f/p1+z,
z=fn1(z^(p2+g))+fn2(f),
|z| <= 4 }

spiderM1 {; by Jean-Pierre Louvet
; minor shortcut by Bud 4/30/98
z=pixel,f=pixel, g = f + p2:
f=f/p1+z,
z=fn1(z^g)+fn2(f),
|z| <= 4 }

Spir_Ang_Fnc {; Copyright (c) Paul W. Carlson, 1998
    ;
    ;   p1       = Julia set coordinates
    ;   real(p2) = a factor controlling the width of the elememts
    ;   imag(p2) = angle multiplier
    ;   real(p3) = max. early bailout itreation
    ;   imag(p3) = flag for extra squaring
    ;
    w = pixel
    c = p1
    z = bailout = iter = range_num = 0
    width = real(p2)
    k = imag(p2)
    num_ranges = 2
    index_factor = 124 / width
    :
    w = w * w, wr = real(w), awr = abs(wr)
    w = w - wr + awr - c
    IF (imag(p3) == 1)
 w = w * w
    ENDIF
    a = k * atan(imag(w) / real(w))
    a = a * a + c
    a = fn1(1 - a) / a
    ;
    dist = abs(|w| - |a|)
    IF (dist < width && iter > 1)
 z = index_factor * dist + range_num * 125 + 1
 bailout = 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    (bailout == 0  && |w| < 4) || iter > real(p3)
}

Spir_Stalks_Jul {; Copyright (c) Paul W. Carlson, 1998
    ;
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
    w = w * w - c, wr = real(w), awr = abs(wr)
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
}

Spir2_Trunc {; Copyright (c) Paul W. Carlson, 1998
    ;
    ;   p1       = Julia set coordinates
    ;   real(p2) = a factor controlling the width of stalks
    ;   imag(p2) = max. |w| for stalks (truncation value)
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in a range
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
    w = w * w - c, wr = real(w), awr = abs(wr)
    w = w - wr + awr
    awr = abs(real(w)), awi = abs(imag(w))
    IF (awr <= awi)
	dist = awr
    ELSE
	dist = awi
    ENDIF
    ;
    IF (dist < stalk_width && |w| < max_wm && iter > 1)
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
}

star    { ; Kerry Mitchell
        zc=pixel, c=(.439,.493), r=1e30
        t=real(p1)/180*pi, ct=cos(t), st=sin(t), qmin=99:
        zc=sqr(zc)+c, q=|ct*real(zc)+st*imag(zc)|
        if (q<qmin)
          qmin=q
          t=log(q)
          z=cos(t)+flip(sin(t))
          endif
        |zc| < r
        }

star_km { ; Kerry Mitchell 09oct98
        ; Re-named from the original "star" to avoid
        ; conflict with formula of same name previously posted
        ;
        ; draws 5-point star, not a fractal
        ;
        ; p1 = center of star
        ; real(p2) = size of star (try 1)
        ; imag(p2) = rotation angle, degrees (0 for point at top)
        ; use decomp=256
        ;
        zc=pixel, done=1
        center=p1, xcen=real(center), ycen=imag(center), r=real(p2)
        phi=imag(p2)/180*pi, twopi=2*pi, temp=twopi/10
        t0=phi, t1=temp+phi, t2=2*temp+phi, t3=3*temp+phi
        t4=4*temp+phi, t5=5*temp+phi, t6=6*temp+phi
        t7=7*temp+phi, t8=8*temp+phi, t9=9*temp+phi
        x0=r*cos(t0)+xcen, y0=r*sin(t0)+ycen
        x1=r*cos(t2)+xcen, y1=r*sin(t2)+ycen
        x2=r*cos(t4)+xcen, y2=r*sin(t4)+ycen
        x3=r*cos(t6)+xcen, y3=r*sin(t6)+ycen
        x4=r*cos(t8)+xcen, y4=r*sin(t8)+ycen
        :
        x=real(zc), y=imag(zc), t=imag(log(zc-center))
        if(t<0)
          t=t+twopi
        endif
        if((t>t0)&&(t<=t1))
          f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
        elseif((t>t1)&&(t<=t2))
          f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
        elseif((t>t2)&&(t<=t3))
          f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
        elseif((t>t3)&&(t<=t4))
          f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
        elseif((t>t4)&&(t<=t5))
          f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
        elseif((t>t5)&&(t<=t6))
          f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
        elseif((t>t6)&&(t<=t7))
          f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
        elseif((t>t7)&&(t<=t8))
          f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
        elseif((t>t8)&&(t<=t9))
          f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
        else
          f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
        endif
        t=log(cabs(f))
        z=cos(t)+flip(sin(t))
        done==0
        }

star-inout { ; Kerry Mitchell 09oct98
        ;
        ; draws 5 point star--1 color inside, 1 color outside
        ; p1 = center of star
        ; real(p2) = size of star (try 1)
        ; imag(p2) = rotation angle, degrees (0 for point at top)
        ; use decomp=256
        ;
        zc=pixel, done=1
        center=p1, xcen=real(center), ycen=imag(center), r=real(p2)
        phi=(imag(p2)+18)/180*pi, twopi=2*pi, temp=twopi/10
        if((phi<0)||(phi>=temp))
          phi=0
        endif
        t0=phi, t1=temp+phi, t2=2*temp+phi, t3=3*temp+phi
        t4=4*temp+phi, t5=5*temp+phi, t6=6*temp+phi
        t7=7*temp+phi, t8=8*temp+phi, t9=9*temp+phi
        x0=r*cos(t0)+xcen, y0=r*sin(t0)+ycen
        x1=r*cos(t2)+xcen, y1=r*sin(t2)+ycen
        x2=r*cos(t4)+xcen, y2=r*sin(t4)+ycen
        x3=r*cos(t6)+xcen, y3=r*sin(t6)+ycen
        x4=r*cos(t8)+xcen, y4=r*sin(t8)+ycen
        :
        x=real(zc), y=imag(zc), t=imag(log(zc-center))
        if(t<0)
          t=t+twopi
        endif
        flag=0
        if((t>t0)&&(t<=t1))
          f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
          if(f<0)
            flag=1
          endif
        elseif((t>t1)&&(t<=t2))
          f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
          if(f>0)
            flag=1
          endif
        elseif((t>t2)&&(t<=t3))
          f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
          if(f<0)
            flag=1
          endif
        elseif((t>t3)&&(t<=t4))
          f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
          if(f>0)
            flag=1
          endif
        elseif((t>t4)&&(t<=t5))
          f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
          if(f<0)
            flag=1
          endif
        elseif((t>t5)&&(t<=t6))
          f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
          if(f>0)
            flag=1
          endif
        elseif((t>t6)&&(t<=t7))
          f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
          if(f<0)
            flag=1
          endif
        elseif((t>t7)&&(t<=t8))
          f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
          if(f>0)
            flag=1
          endif
        elseif((t>t8)&&(t<=t9))
          f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
          if(f<0)
            flag=1
          endif
        else
          f=x*(y0-y3)+y*(x3-x0)-x3*y0+x0*y3
          if(f>0)
            flag=1
          endif
        endif
        z=0
        if(flag==1)
          z=(0.0,1.0)
        endif
        done==0
        }

starAstroid_Mset  {;adapted from Paul Carlson by Kathy Roth
    ; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = a factor controlling the width of the curves
    ;   imag(p1) = radius of the astroid
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    w = 0
    c=log(sqr(sqr(pixel))*pixel)*0.2
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    i = (0,1)
    r = imag(p1)
    ;****************************************************
    ; In the accompanying par file, astmset.par,
    ; we have 8 color ranges with 30 colors in each range
    ; for a total of 240 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| < 10000.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    ;****************************************************
    ; Real(p1) controls the width of the curves.
    ; These values will usually be in the range 0.001 to 0.1
    ;****************************************************
    width = real(p1)
    index_factor = (colors_in_range - 1) / width:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be expressed in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This example uses the standard Mandelbrot set equation.
    ;****************************************************
    w = w * w + c
    ;****************************************************
    ; The orbit trap curve.  This example uses an "astroid"
    ; curve (which has absolutely nothing to do with huge
    ; rocks in outer space).  Any two-dimensional curve can
    ; be used which can be expressed in parametric form in
    ; terms of the angle from the origin.
    ;****************************************************
    ang = atan(imag(w) / real(w))
    astroid = r * (cos(ang)^3 + i * sin(ang)^3)
    ;****************************************************
    ; If the orbit point is within some distance of the curve,
    ; set z to the index into the colormap and set the bailout
    ; flag.  Note: the way we use the "distance" here has
    ; the effect of turning the curves inside-out in the image.
    ;****************************************************
    distance = abs(|w| - |astroid|)
    IF (distance < width && iter > 1)
        z = index_factor * distance + range_num * colors_in_range + 1
        bailout = 1
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
}

starbail_jul { ; Kerry Mitchell 09oct98
        ;
        ; Julia set, bails out when orbit enters/leaves 5 point star
        ; p1 = Julia parameter
        ; p2 = center of star
        ; cabs(real(p3)) = star size of star (try 1)
        ; sign(real(p3)) = in/out flag:
        ;   + = bailout when orbit leaves star
        ;   - = bailout when orbit enters star
        ; imag(p3) = star rotation angle, degrees
        ;   only use angles from 0 to 36 degrees
        ;
        ;  initialize iteration parameters
        ;
        c=p1, zc=pixel, done=0, iter=1, bailout=1e12
        pixelflag=1  ; set by hand
        ;
        ;  star parameters
        ;
        center=p2, xcen=real(center), ycen=imag(center)
        r=cabs(real(p3)), inout=1
        if(real(p3)<0)
          inout=0
        endif
        phi=imag(p3)/180*pi, twopi=2*pi, temp=twopi/10
        t0=phi, t1=t0+temp
        t2=t1+temp, t3=t2+temp, t4=t3+temp, t5=t4+temp
        t6=t5+temp, t7=t6+temp, t8=t7+temp, t9=t8+temp
        ;
        ;  set up control points
        ;
        x0=r*cos(t0)+xcen, y0=r*sin(t0)+ycen
        x1=r*cos(t2)+xcen, y1=r*sin(t2)+ycen
        x2=r*cos(t4)+xcen, y2=r*sin(t4)+ycen
        x3=r*cos(t6)+xcen, y3=r*sin(t6)+ycen
        x4=r*cos(t8)+xcen, y4=r*sin(t8)+ycen
        ;
        ;  check pixel to see if it bailed
        ;
        if(pixelflag!=0)
        x=real(zc), y=imag(zc), t=imag(log(zc-center))
        if(t<0)
          t=t+twopi
        endif
        flag=0
        if((t>t0)&&(t<=t1))
          f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
          if(f<0)
            flag=1
          endif
        elseif((t>t1)&&(t<=t2))
          f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
          if(f>0)
            flag=1
          endif
        elseif((t>t2)&&(t<=t3))
          f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
          if(f<0)
            flag=1
          endif
        elseif((t>t3)&&(t<=t4))
          f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
          if(f>0)
            flag=1
          endif
        elseif((t>t4)&&(t<=t5))
          f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
          if(f<0)
            flag=1
          endif
        elseif((t>t5)&&(t<=t6))
          f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
          if(f>0)
            flag=1
          endif
        elseif((t>t6)&&(t<=t7))
          f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
          if(f<0)
            flag=1
          endif
        elseif((t>t7)&&(t<=t8))
          f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
          if(f>0)
            flag=1
          endif
        elseif((t>t8)&&(t<=t9))
          f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
          if(f<0)
            flag=1
          endif
        else
          f=x*(y0-y3)+y*(x3-x0)-x3*y0+x0*y3
          if(f>0)
            flag=1
          endif
        endif
        if(flag==inout)
          done=1
          z=zc-center
        endif
        endif
        :
        ;  standard iteration if pixel didn't bail
        ;
        if(done==0)
        iter=iter+1, zc=sqr(zc)+c
        x=real(zc), y=imag(zc), t=imag(log(zc-center))
        if(t<0)
          t=t+twopi
        endif
        ;
        ;  see if orbit is inside or outside of star
        ;    by checking each side one at a time
        ;
        flag=0
        if((t>t0)&&(t<=t1))
          f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
          if(f<0)
            flag=1
          endif
        elseif((t>t1)&&(t<=t2))
          f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
          if(f>0)
            flag=1
          endif
        elseif((t>t2)&&(t<=t3))
          f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
          if(f<0)
            flag=1
          endif
        elseif((t>t3)&&(t<=t4))
          f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
          if(f>0)
            flag=1
          endif
        elseif((t>t4)&&(t<=t5))
          f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
          if(f<0)
            flag=1
          endif
        elseif((t>t5)&&(t<=t6))
          f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
          if(f>0)
            flag=1
          endif
        elseif((t>t6)&&(t<=t7))
          f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
          if(f<0)
            flag=1
          endif
        elseif((t>t7)&&(t<=t8))
          f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
          if(f>0)
            flag=1
          endif
        elseif((t>t8)&&(t<=t9))
          f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
          if(f<0)
            flag=1
          endif
        else
          f=x*(y0-y3)+y*(x3-x0)-x3*y0+x0*y3
          if(f>0)
            flag=1
          endif
        endif
        ;
        ;  if the orbit was on the appropriate side,
        ;    set "done" flag
        ;    set z to iteration variable for coloring
        ;
        if(flag==inout)
          done=1
          z=zc-center
        ;
        ;  safety valve in case star doesn't catch orbit
        ;  if orbit goes to infinity or max iterations reached:
        ;     set "done" flag
        ;     set z to 1 to differentiate it from star trap
        ;
        elseif((|zc|>bailout)||(iter==maxit))
          done=1
          z=1
        endif
        endif
        done==0
        }

starbail_man { ; Kerry Mitchell 09oct98
        ;
        ; Mandelbrot, bails out when orbit enters/leaves 5 point star
        ; p1 = center of star
        ; cabs(real(p2)) = star size of star (try 1)
        ; sign(real(p2)) = in/out flag:
        ;   + = bailout when orbit leaves star
        ;   - = bailout when orbit enters star
        ; imag(p2) = star rotation angle, degrees
        ;   only use angles from 0 to 36 degrees
        ;
        ;  initialize iteration parameters
        ;
        zc=0, c=pixel, done=0, iter=1, bailout=1e12
        pixelflag=0  ; set by hand
        ;
        ;  star parameters
        ;
        center=p1, xcen=real(center), ycen=imag(center)
        r=cabs(real(p2)), inout=1
        if(real(p2)<0)
          inout=0
        endif
        phi=imag(p2)/180*pi, twopi=2*pi, temp=twopi/10
        t0=phi, t1=t0+temp
        t2=t1+temp, t3=t2+temp, t4=t3+temp, t5=t4+temp
        t6=t5+temp, t7=t6+temp, t8=t7+temp, t9=t8+temp
        ;
        ;  set up control points
        ;
        x0=r*cos(t0)+xcen, y0=r*sin(t0)+ycen
        x1=r*cos(t2)+xcen, y1=r*sin(t2)+ycen
        x2=r*cos(t4)+xcen, y2=r*sin(t4)+ycen
        x3=r*cos(t6)+xcen, y3=r*sin(t6)+ycen
        x4=r*cos(t8)+xcen, y4=r*sin(t8)+ycen
        ;
        ;  check pixel to see if it bailed
        ;
        if(pixelflag!=0)
        x=real(zc), y=imag(zc), t=imag(log(zc-center))
        if(t<0)
          t=t+twopi
        endif
        flag=0
        if((t>t0)&&(t<=t1))
          f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
          if(f<0)
            flag=1
          endif
        elseif((t>t1)&&(t<=t2))
          f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
          if(f>0)
            flag=1
          endif
        elseif((t>t2)&&(t<=t3))
          f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
          if(f<0)
            flag=1
          endif
        elseif((t>t3)&&(t<=t4))
          f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
          if(f>0)
            flag=1
          endif
        elseif((t>t4)&&(t<=t5))
          f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
          if(f<0)
            flag=1
          endif
        elseif((t>t5)&&(t<=t6))
          f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
          if(f>0)
            flag=1
          endif
        elseif((t>t6)&&(t<=t7))
          f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
          if(f<0)
            flag=1
          endif
        elseif((t>t7)&&(t<=t8))
          f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
          if(f>0)
            flag=1
          endif
        elseif((t>t8)&&(t<=t9))
          f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
          if(f<0)
            flag=1
          endif
        else
          f=x*(y0-y3)+y*(x3-x0)-x3*y0+x0*y3
          if(f>0)
            flag=1
          endif
        endif
        if(flag==inout)
          done=1
          z=zc-center
        endif
        endif
        :
        ;  standard iteration if pixel didn't bail
        ;
        if(done==0)
        iter=iter+1, zc=sqr(zc)+c
        x=real(zc), y=imag(zc), t=imag(log(zc-center))
        if(t<0)
          t=t+twopi
        endif
        ;
        ;  see if orbit is inside or outside of star
        ;    by checking each side one at a time
        ;
        flag=0
        if((t>t0)&&(t<=t1))
          f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
          if(f<0)
            flag=1
          endif
        elseif((t>t1)&&(t<=t2))
          f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
          if(f>0)
            flag=1
          endif
        elseif((t>t2)&&(t<=t3))
          f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
          if(f<0)
            flag=1
          endif
        elseif((t>t3)&&(t<=t4))
          f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
          if(f>0)
            flag=1
          endif
        elseif((t>t4)&&(t<=t5))
          f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
          if(f<0)
            flag=1
          endif
        elseif((t>t5)&&(t<=t6))
          f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
          if(f>0)
            flag=1
          endif
        elseif((t>t6)&&(t<=t7))
          f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
          if(f<0)
            flag=1
          endif
        elseif((t>t7)&&(t<=t8))
          f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
          if(f>0)
            flag=1
          endif
        elseif((t>t8)&&(t<=t9))
          f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
          if(f<0)
            flag=1
          endif
        else
          f=x*(y0-y3)+y*(x3-x0)-x3*y0+x0*y3
          if(f>0)
            flag=1
          endif
        endif
        ;
        ;  if the orbit was on the appropriate side,
        ;    set "done" flag
        ;    set z to iteration variable for coloring
        ;
        if(flag==inout)
          done=1
          z=zc-center
        ;
        ;  safety valve in case star doesn't catch orbit
        ;  if orbit goes to infinity or max iterations reached:
        ;     set "done" flag
        ;     set z to 1 to differentiate it from star trap
        ;
        elseif((|zc|>bailout)||(iter==maxit))
          done=1
          z=1
        endif
        endif
        done==0
        }

starFlexBalls_Mand {;adapted from Paul Carlson by Kathy Roth
    ; Copyright (c) Paul W. Carlson, 1998
    ; p1 = radius of center of ring (0.01 to 10)
    ; p2 = one half thickness of ring (0.01 to p1)
    ;
    c=log(sqr(sqr(pixel))*pixel)*0.2
    w = z = iter = bailout = 0
    d0 = p1 + p2
    d1 = 0.382683432365 * p1
    d2 = 0.923879532511 * p1
    dsqd = d0 * d0 + p1 * p1 - (d0 + d0) * d2
    :
     w2=fn1(w)+c
    w=c*(1-w2*w2)/(1+w2*w2)
    ;
    IF ((abs(cabs(w) - p1) < p2) && iter > 0)
 bailout = 1
 wr = real(w), wi = imag(w)
 awr = abs(wr), awi = abs(wi)
 IF (awr >= awi)
     dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
     adjust = 1
 ELSE
     dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
     adjust = 0
 ENDIF
 IF     (wr >= 0 && wi >= 0)
     range_num = 1 - adjust
 ELSEIF (wr < 0 && wi >= 0)
     range_num = 2 + adjust
 ELSEIF (wr < 0 && wi < 0)
     range_num = 5 - adjust
 ELSE
     range_num = 6 + adjust
 ENDIF
 ratio = sqrt(dist / dsqd)
 z = 29 * ratio + range_num * 30 + 1
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 1000
}

stargrav_2u { ; variation of M. Christenson's gravijul
                    ; P. DiGiorgi 10/98
  bailout = imag(p3), k = real(p3)
  pts = imag(p2)
  z = log(pixel^pts)/pts:
  x = real(z), y = imag(z)
  w = fn1(x) + k*y, v = fn1(y) + k*x
  u = fn2(w + flip(v))
  z = fn4(p1/fn3(u*u)) + real(p2)
  |z| < bailout
}

stargravijul { ;kathy roth
               ;adapted from Mark Christenson and Linda Allison
   z = log(sqr(sqr(pixel))*pixel)*0.2:
   w = fn1(z)
   z = fn3(p1/fn2(w*w)) + p2
    |z| < p3
  }

starnear_jul { ; Kerry Mitchell 09oct98
        ;
        ; Julia set, colors by nearest approach to 5 point star
        ; p1 = Julia parameter
        ; p2 = center of star
        ; cabs(real(p3)) = star size of star (try 1)
        ; sign(real(p3)) = pixel flag:
        ;   + = don't consider pixel--start after first iteration
        ;   - = consider pixel
        ; imag(p3) = star rotation angle, degrees
        ;   only use angles from 0 to 36 degrees
        ; use decomp=256, bailout hardcoded to 10^12
        ;
        ;  initialize iteration parameters
        ;
        c=p1, zc=pixel, done=0, iter=1
        bailout=1e12, fmin=bailout
        ;
        ;  star parameters
        ;
        center=p2, xcen=real(center), ycen=imag(center)
        r=cabs(real(p3)), pixelflag=0
        if(real(p3)<0)
          pixelflag=1
        endif
        phi=imag(p3)/180*pi, twopi=2*pi, temp=twopi/10
        t0=phi, t1=t0+temp
        t2=t1+temp, t3=t2+temp, t4=t3+temp, t5=t4+temp
        t6=t5+temp, t7=t6+temp, t8=t7+temp, t9=t8+temp
        ;
        ;  set up control points
        ;
        x0=r*cos(t0)+xcen, y0=r*sin(t0)+ycen
        x1=r*cos(t2)+xcen, y1=r*sin(t2)+ycen
        x2=r*cos(t4)+xcen, y2=r*sin(t4)+ycen
        x3=r*cos(t6)+xcen, y3=r*sin(t6)+ycen
        x4=r*cos(t8)+xcen, y4=r*sin(t8)+ycen
        ;
        ;  if pixel flag =/= 0, then check pixel for how close
        ;    it is to star
        ;
        if(pixelflag!=0)
          x=real(zc), y=imag(zc), t=imag(log(zc-center))
          if(t<0)
            t=t+twopi
          endif
          if((t>t0)&&(t<=t1))
            f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
          elseif((t>t1)&&(t<=t2))
            f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
          elseif((t>t2)&&(t<=t3))
            f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
          elseif((t>t3)&&(t<=t4))
            f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
          elseif((t>t4)&&(t<=t5))
            f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
          elseif((t>t5)&&(t<=t6))
            f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
          elseif((t>t6)&&(t<=t7))
            f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
          elseif((t>t7)&&(t<=t8))
            f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
          elseif((t>t8)&&(t<=t9))
            f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
          else
            f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
          endif
          fmin=cabs(f)
        endif
        :
        ;  standard iteration, find polar angle of iterate
        ;
        iter=iter+1, zc=sqr(zc)+c
        x=real(zc), y=imag(zc), t=imag(log(zc-center))
        if(t<0)
          t=t+twopi
        endif
        ;
        ;  compute how close iterate is to each side of star
        ;
        if((t>t0)&&(t<=t1))
          f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
        elseif((t>t1)&&(t<=t2))
          f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
        elseif((t>t2)&&(t<=t3))
          f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
        elseif((t>t3)&&(t<=t4))
          f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
        elseif((t>t4)&&(t<=t5))
          f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
        elseif((t>t5)&&(t<=t6))
          f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
        elseif((t>t6)&&(t<=t7))
          f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
        elseif((t>t7)&&(t<=t8))
          f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
        elseif((t>t8)&&(t<=t9))
          f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
        else
          f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
        endif
        f=cabs(f)
        ;
        ;  update minimum distance
        ;
        if(f<fmin)
          fmin=f
          zmin=zc
        endif
        ;
        ;  upon escape or maximum iterations:
        ;    set "done" flag
        ;    use minimum distance from star as polar angle of z
        ;      for use with decomp coloring
        ;
        if((|zc|>bailout)||(iter==maxit))
          done=1
          t=log(fmin)
          z=cos(t)+flip(sin(t))
        endif
        done==0
        }

starnear_man { ; Kerry Mitchell 09oct98
        ;
        ; Mandelbrot, colors by nearest approach to 5 point star
        ; p1 = center of star
        ; cabs(real(p2)) = star size of star (try 1)
        ; sign(real(p2)) = pixel flag:
        ;   + = don't consider pixel--start after first iteration
        ;   - = consider pixel
        ; imag(p2) = star rotation angle, degrees
        ;   only use angles from 0 to 36 degrees
        ; use decomp=256, bailout hardcoded to 10^12
        ;
        ;  initialize iteration parameters
        ;
        zc=0, c=pixel, done=0, iter=1
        bailout=1e12, fmin=bailout
        ;
        ;  star parameters
        ;
        center=p1, xcen=real(center), ycen=imag(center)
        r=cabs(real(p2)), pixelflag=0
        if(real(p2)<0)
          pixelflag=1
        endif
        phi=imag(p2)/180*pi, twopi=2*pi, temp=twopi/10
        t0=phi, t1=t0+temp
        t2=t1+temp, t3=t2+temp, t4=t3+temp, t5=t4+temp
        t6=t5+temp, t7=t6+temp, t8=t7+temp, t9=t8+temp
        ;
        ;  set up control points
        ;
        x0=r*cos(t0)+xcen, y0=r*sin(t0)+ycen
        x1=r*cos(t2)+xcen, y1=r*sin(t2)+ycen
        x2=r*cos(t4)+xcen, y2=r*sin(t4)+ycen
        x3=r*cos(t6)+xcen, y3=r*sin(t6)+ycen
        x4=r*cos(t8)+xcen, y4=r*sin(t8)+ycen
        ;
        ;  if pixel flag =/= 0, then check pixel for how close
        ;    it is to star
        ;
        if(pixelflag!=0)
          x=real(zc), y=imag(zc), t=imag(log(zc-center))
          if(t<0)
            t=t+twopi
          endif
          if((t>t0)&&(t<=t1))
            f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
          elseif((t>t1)&&(t<=t2))
            f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
          elseif((t>t2)&&(t<=t3))
            f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
          elseif((t>t3)&&(t<=t4))
            f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
          elseif((t>t4)&&(t<=t5))
            f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
          elseif((t>t5)&&(t<=t6))
            f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
          elseif((t>t6)&&(t<=t7))
            f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
          elseif((t>t7)&&(t<=t8))
            f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
          elseif((t>t8)&&(t<=t9))
            f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
          else
            f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
          endif
          fmin=cabs(f)
        endif
        :
        ;  standard iteration, find polar angle of iterate
        ;
        iter=iter+1, zc=sqr(zc)+c
        x=real(zc), y=imag(zc), t=imag(log(zc-center))
        if(t<0)
          t=t+twopi
        endif
        ;
        ;  compute how close iterate is to each side of star
        ;
        if((t>t0)&&(t<=t1))
          f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
        elseif((t>t1)&&(t<=t2))
          f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
        elseif((t>t2)&&(t<=t3))
          f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
        elseif((t>t3)&&(t<=t4))
          f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
        elseif((t>t4)&&(t<=t5))
          f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
        elseif((t>t5)&&(t<=t6))
          f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
        elseif((t>t6)&&(t<=t7))
          f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
        elseif((t>t7)&&(t<=t8))
          f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
        elseif((t>t8)&&(t<=t9))
          f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
        else
          f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
        endif
        f=cabs(f)
        ;
        ;  update minimum distance
        ;
        if(f<fmin)
          fmin=f
          zmin=zc
        endif
        ;
        ;  upon escape or maximum iterations:
        ;    set "done" flag
        ;    use minimum distance from star as polar angle of z
        ;      for use with decomp coloring
        ;
        if((|zc|>bailout)||(iter==maxit))
          done=1
          t=log(fmin)
          z=cos(t)+flip(sin(t))
        endif
        done==0
        }

stone_s1 { ; Created with FracText 1.0, by J.M v.d.Valk
           ; using Gallet-8.frm/Gallet-8-21
           ; and the original Par's and Map's. Many thanks to
           ; Paul C., Jan V., Sylvie G. & the Stone Soup Family
           ; (c) guy.marson@mnhn.lu
           ; 'periodicity=0' and 'passes=1' recommended
  x=real(scrnpix)/real(scrnmax), y=(imag(scrnmax)-imag(scrnpix))/real\
  (scrnmax), z=x+flip(y)
  chrP1 = y<0.58775&&y>0.56225||y>0.6245||x<0.21481&&x>0.18931&&x<0.2\
  4481||(abs(cabs(z+(-0.24481,-0.60612))-0.03113)<0.01275&&x>=0.24481\
  )
  chrl2 = x<0.32169&&x>0.29619
  chre3 = abs(cabs(z+(-0.38544,-0.55625))-0.0435)<0.01275&&(x<0.38544\
  ||y>0.552||y<0.53925)||(y>0.552&&y<0.5775&&x>0.34194&&x<0.42894)
  chra4 = abs(cabs(z+(-0.48369,-0.578))-0.02175)<0.01275&&x<0.48369||\
  (abs(cabs(z+(-0.49869,-0.578))-0.02175)<0.01275&&x>0.49869)&&y>0.57\
  8||((abs(cabs(z+(-0.48369,-0.5345))-0.02175)<0.01275&&x<0.48369)||(\
  abs(cabs(z+(-0.49869,-0.5345))-0.02175)<0.01275&&x>0.49869))||(x>0.\
  48369&&x<0.49869&&(y<0.5255||(y>0.587&&y<0.6125)||(y>0.5435&&y<0.56\
  9)))||(x>0.50769&&x<0.53319&&y<0.578)
  chrs5 = abs(cabs(z+(-0.57519,-0.578))-0.02175)<0.01275&&x<0.57519||\
  (abs(cabs(z+(-0.59019,-0.578))-0.02175)<0.01275&&x>0.59019)&&(x<0.5\
  7519||y>0.578)||((abs(cabs(z+(-0.57519,-0.5345))-0.02175)<0.01275&&\
  x<0.57519)||(abs(cabs(z+(-0.59019,-0.5345))-0.02175)<0.01275&&x>0.5\
  9019)&&(x>0.59019||y<0.5345))||(x>0.57519&&x<0.59019&&(y<0.5255||(y\
  >0.587&&y<0.6125)||(y>0.5435&&y<0.569)))
  chre6 = abs(cabs(z+(-0.68844,-0.55625))-0.0435)<0.01275&&(x<0.68844\
  ||y>0.552||y<0.53925)||(y>0.552&&y<0.5775&&x>0.64494&&x<0.73194)
  chrDT7 = y<0.5255&&x>0.75219&&x<0.77769
  chrDT8 = y<0.5255&&x>0.78519&&x<0.81069
  test1 = chrP1||chrl2||chre3||chra4||chrs5||chre6||chrDT7||chrDT8&&y\
  >0.5&&y<0.65
  chri9 = x>0.06017&&x<0.08417&&(y<0.372||y>0.396)
  chrn10 = x>0.09017&&x<0.11417&&y<0.39||(abs(cabs(z+(-0.12429,-0.355\
  88))-0.02212)<0.012&&y>0.35588)||(x>0.13442&&x<0.15842&&y<0.35588)
  xc=1*x
  chrc11 = abs(cabs(z+(-0.20942,-0.345))-0.033)<0.012&&(x<0.20942||y>\
  xc+0.13558||y<-xc+0.55442)
  chrr12 = x>0.24724&&x<0.27124&&y<0.39||(abs(cabs(z+(-0.28136,-0.355\
  88))-0.02212)<0.012&&y>0.35588)
  chre13 = abs(cabs(z+(-0.36649,-0.345))-0.033)<0.012&&(x<0.36649||y>\
  0.341||y<0.329)||(y>0.341&&y<0.365&&x>0.33349&&x<0.39949)
  chra14 = abs(cabs(z+(-0.44599,-0.3615))-0.0165)<0.012&&x<0.44599||(\
  abs(cabs(z+(-0.45799,-0.3615))-0.0165)<0.012&&x>0.45799)&&y>0.3615|\
  |((abs(cabs(z+(-0.44599,-0.3285))-0.0165)<0.012&&x<0.44599)||(abs(c\
  abs(z+(-0.45799,-0.3285))-0.0165)<0.012&&x>0.45799))||(x>0.44599&&x\
  <0.45799&&(y<0.324||(y>0.366&&y<0.39)||(y>0.333&&y<0.357)))||(x>0.4\
  6249&&x<0.48649&&y<0.3615)
  chrs15 = abs(cabs(z+(-0.52099,-0.3615))-0.0165)<0.012&&x<0.52099||(\
  abs(cabs(z+(-0.53299,-0.3615))-0.0165)<0.012&&x>0.53299)&&(x<0.5209\
  9||y>0.3615)||((abs(cabs(z+(-0.52099,-0.3285))-0.0165)<0.012&&x<0.5\
  2099)||(abs(cabs(z+(-0.53299,-0.3285))-0.0165)<0.012&&x>0.53299)&&(\
  x>0.53299||y<0.3285))||(x>0.52099&&x<0.53299&&(y<0.324||(y>0.366&&y\
  <0.39)||(y>0.333&&y<0.357)))
  chre16 = abs(cabs(z+(-0.61249,-0.345))-0.033)<0.012&&(x<0.61249||y>\
  0.341||y<0.329)||(y>0.341&&y<0.365&&x>0.57949&&x<0.64549)
  chrm18 = x>0.72349&&x<0.74749&&y<0.39||(abs(cabs(z+(-0.75761,-0.355\
  88))-0.02212)<0.012&&y>0.35588)||(x>0.76774&&x<0.79174&&y<0.35588)|\
  |(abs(cabs(z+(-0.80186,-0.35588))-0.02212)<0.012&&y>0.35588)||(x>0.\
  81199&&x<0.83599&&y<0.35588)
  xy=2.5*x
  chry19 = y<xy-1.89496&&y>xy-1.95959||(y>-xy+2.49496&&y<-xy+2.55959)\
  &&y>xy-1.95959&&y<0.39&&y>0.24
  test2 = chri9||chrn10||chrc11||chrr12||chre13||chra14||chrs15||chre\
  16||chrm18&&y>0.3||chry19&&y<0.42
  chrI20 = x>0.03268&&x<0.05668
  chrn21 = x>0.06268&&x<0.08668&&y<0.24||(abs(cabs(z+(-0.09681,-0.205\
  88))-0.02212)<0.012&&y>0.20588)||(x>0.10693&&x<0.13093&&y<0.20588)
  chrp22 = x>0.13693&&x<0.16093&&y<0.24&&y>0.105||(abs(cabs(z+(-0.183\
  43,-0.195))-0.033)<0.012&&x>0.16093)
  chru23 = x>0.23443&&x<0.25843&&y>0.18412&&y<0.24||(abs(cabs(z+(-0.2\
  6856,-0.18412))-0.02212)<0.012&&y<0.18412)||(x>0.27868&&x<0.30268&&\
  y<0.24)
  xt=1*x
  chrt24 = abs(cabs(z+(-0.35387,-0.18412))-0.02212)<0.012&&y<0.18412|\
  |(x>0.31975&&x<0.34375&&y>0.18412)||(x>0.30868&&x<0.36587&&y>0.216&\
  &y<0.24)
  chrS26 = abs(cabs(z+(-0.49,-0.234))-0.024)<0.012&&(x<=0.49||y>0.234\
  )||(abs(cabs(z+(-0.49,-0.186))-0.024)<0.012&&(x>0.49||y<0.186))
  chrp27 = x>0.532&&x<0.556&&y<0.24&&y>0.105||(abs(cabs(z+(-0.5785,-0\
  .195))-0.033)<0.012&&x>0.556)
  chra28 = abs(cabs(z+(-0.658,-0.2115))-0.0165)<0.012&&x<0.658||(abs(\
  cabs(z+(-0.67,-0.2115))-0.0165)<0.012&&x>0.67)&&y>0.2115||((abs(cab\
  s(z+(-0.658,-0.1785))-0.0165)<0.012&&x<0.658)||(abs(cabs(z+(-0.67,-\
  0.1785))-0.0165)<0.012&&x>0.67))||(x>0.658&&x<0.67&&(y<0.174||(y>0.\
  216&&y<0.24)||(y>0.183&&y<0.207)))||(x>0.6745&&x<0.6985&&y<0.2115)
  chrc29 = abs(cabs(z+(-0.7495,-0.195))-0.033)<0.012&&(x<0.7495||y>xc\
  -0.5545||y<-xc+0.9445)
  chre30 = abs(cabs(z+(-0.83232,-0.195))-0.033)<0.012&&(x<0.83232||y>\
  0.191||y<0.179)||(y>0.191&&y<0.215&&x>0.79932&&x<0.86532)
  chrDT31 = y<0.174&&x>0.88332&&x<0.90732
  chrDT32 = y<0.174&&x>0.91332&&x<0.93732
  chrXM33 = x>0.94332&&x<0.96732&&(y<0.174||y>0.186)
  test3 = chrI20||chrn21||chru23||chrt24||chrS26||chra28||chrc29||chr\
  e30||chrDT31||chrDT32||chrXM33&&y>0.15||chrp22||chrp27&&y<0.27
  chrt34 = abs(cabs(z+(-0.36506,-0.04138))-0.00737)<0.004&&y<0.04138|\
  |(x>0.35369&&x<0.36169&&y>0.04138)||(x>0.35&&x<0.36906&&y>0.052&&y<\
  0.06)
  chrh35 = x>0.37844&&x<0.38644||(abs(cabs(z+(-0.38981,-0.045))-0.007\
  37)<0.004&&y>0.045)||(x>0.39319&&x<0.40119&&y<0.045)
  chre36 = abs(cabs(z+(-0.41819,-0.045))-0.011)<0.004&&(x<0.41819||y>\
  0.04367||y<0.03967)||(y>0.04367&&y<0.05167&&x>0.40719&&x<0.42919)
  chrF38 = x<0.46319||(y<0.054&&y>0.046)||y>0.062&&x>0.45519&&x<0.479\
  19
  chrO39 = abs(cabs(z+(-0.50119,-0.05))-0.016)<0.004
  xCR=2*x
  chrR40 = y<0.054&&y>0.046||y>0.062||x<0.53119&&x>0.52319&&x<0.53919\
  ||(abs(cabs(z+(-0.53919,-0.058))-0.008)<0.004&&x>=0.53919)||(y<0.05\
  &&y<-xCR+1.13237&&y>-xCR+1.11449)
  xCM=2.5*x
  chrM41 = y>-xCM+1.45297&&y<-xCM+1.47451||(y<xCM-1.3663&&y>xCM-1.387\
  84)&&y>0.04333||(x>0.55319&&x<0.56119)||(x>0.57514&&x<0.58314)
  chrU42 = abs(cabs(z+(-0.59714,-0.042))-0.008)<0.004&&y<0.04||(x>0.5\
  8514&&y>0.04&&x<0.59314)||(x>0.60114&&x<0.60914)
  chrL43 = x<0.61914||y<0.038&&x>0.61114&&x<0.63514
  xCA=3*x
  chrA44 = y>xCA-1.90671||y>-xCA+2.02141||(y<0.046&&y>0.038)&&y<xCA-1\
  .88141&&y<-xCA+2.04671
  chrP46 = y<0.054&&y>0.046||y>0.062||x<0.70224&&x>0.69424&&x<0.71024\
  ||(abs(cabs(z+(-0.71024,-0.058))-0.008)<0.004&&x>=0.71024)
  chrA47 = y>xCA-2.16801||y>-xCA+2.28271||(y<0.046&&y>0.038)&&y<xCA-2\
  .14271&&y<-xCA+2.30801
  chrR48 = y<0.054&&y>0.046||y>0.062||x<0.76934&&x>0.76134&&x<0.77734\
  ||(abs(cabs(z+(-0.77734,-0.058))-0.008)<0.004&&x>=0.77734)||(y<0.05\
  &&y<-xCR+1.60867&&y>-xCR+1.59078)
  chrS49 = abs(cabs(z+(-0.80334,-0.058))-0.008)<0.004&&(x<=0.80334||y\
  >0.058)||(abs(cabs(z+(-0.80334,-0.042))-0.008)<0.004&&(x>0.80334||y\
  <0.042))
  chrE50 = x<0.82534||y<0.038||(y<0.054&&y>0.046)||y>0.062&&x>0.81734\
  &&x<0.84134
  chrR51 = y<0.054&&y>0.046||y>0.062||x<0.85134&&x>0.84334&&x<0.85934\
  ||(abs(cabs(z+(-0.85934,-0.058))-0.008)<0.004&&x>=0.85934)||(y<0.05\
  &&y<-xCR+1.77267&&y>-xCR+1.75478)
  test4 = chrt34||chrh35||chre36||chrF38||chrO39||chrR40||chrM41||chr\
  U42||chrL43||chrA44||chrP46||chrA47||chrR48||chrS49||chrE50||chrR51\
  &&y>0.03&&y<0.07
  test0=test1||test2||test3||test4
  ; Import of formula 'Gallet-8-21' from file GALLET-8.FRM
  ; Requires periodicity = 0 and decomp=256
  ; p1 = parameter for a Julia set (0 for the Mandelbrot set)
  ; 0 < real(p2) , 0 < imag(p2)
  im2 = imag(p2)
  IF (p1 || imag(p1))
  c = p1
  ELSE
  c = pixel
  ENDIF
  z = -1 , zn = pixel , zmin = zmin0 = abs(real(p2))
  cmax = trunc(abs(real(p3)))
  IF (cmax < 2)
  cmax = 2
  ENDIF
  k = flip(6.28318530718/(zmin*real(cmax))) , cnt = -1
  :
  cnt = cnt + 1
  IF (cnt == cmax)
  cnt = 0
  ENDIF
  zn = zn*zn + c , znc = cabs(im2*real(zn) + flip(imag(zn)))
  IF (znc < zmin)
  zmin = znc , z = exp((cnt*zmin0 + zmin)*k)
  ENDIF
  znc <= 4&&test0==0
  }

stretch_J{
a0=0.51515,b0=-0.71970,c0=-0.69697,d0=-0.39394,
a1=0.39394,b1=0.16288,c1=0.42424,d1=-0.27652,
al0=-0.70455,k0=-2.56002,l0=-5.58475,
al1=-0.17803,k1=-0.26541,l1=-4.59526,
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
}

Sunglasses (xaxis) { ; Merle L. Newsted Jr.
     z = 0,
     a = pixel,
     b = pixel + 1,
     c = pixel * 2:

     z = a*z*z + b*z + c ;What? No bailout test!!!
     }

swirl5_J{
a0=0.74546,b0=-0.45909,c0=0.40606,d0=0.88712,
a1=-0.42424,b1=-0.06515,c1=-0.17576,d1=-0.21818,
al0=0.84773,k0=-1.61271,l0=0.07780,
al1=0.08111,k1=0.39196,l1=2.19046,
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
}

T02-04{;V.1.0 - earlier versions may be discarded
; = 2zT01-T00
const=pixel-1,z=p1:
z=(z+z)*z+const
|z|<100}

T02-12{;V.1.0 - earlier versions may be discarded
; = 2zT01-T00
const=pixel,z=p1:
z=((z+z)*z-1)*const
|z|<100}

T03-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(4*x*x-3)
  Ty=y*(4*y*y-3)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
}

T04-01{;V.1.0 - earlier versions may be discarded
; = 2zT03-T02
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
xx=x*x,yy=y*y
Tx=8*xx*(xx-1)+1
Ty=8*yy*(yy-1)+1
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

T04-08{; = 2zT03-T02
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
xx=x*x,yy=y*y
Tx=sin(8*xx*(xx-1)+1)
Ty=sin(8*yy*(yy-1)+1)
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout
}

T06-01{;V.1.0 - earlier versions may be discarded
; = 2zT05-T04
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
xx=x*x,yy=y*y
ax=xx+xx,ay=yy+yy
Tx=ax*(8*xx*(ax-3)+9)-1
Ty=ay*(8*yy*(ay-3)+9)-1
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

T06-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  f=a*(8*zz*(a-3)+9)-1
  fd=12*z*(16*zz*(zz-1)+3)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}

T07-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=x*(8*xx*((xx+xx)*(4*xx-7)+7)-7)
  Ty=y*(8*yy*((yy+yy)*(4*yy-7)+7)-7)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
}

T08-01{;V.1.0 - earlier versions may be discarded
; = 2zT07-T06
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
xx=x*x,yy=y*y
Tx=32*xx*(xx*(4*xx*(xx-2)+5)-1)+1
Ty=32*yy*(yy*(4*yy*(yy-2)+5)-1)+1
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

T08-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  b=4*zz
  f=32*zz*(zz*(b*(zz-2)+5)-1)+1
  fd=64*z*(a*(b*(a-3)+5)-1)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}

T10-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  b=8*zz
  f=a*(b*(a*(b*(a-5)+35)-25)+25)-1
  fd=20*z*(16*zz*(zz*(16*zz*(zz-2)+21)-5)+5)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}

Tan_Spirals {; Copyright (c) Paul W. Carlson, 1997
    width = real(p2), ratio = 124 / width, w = pixel, z = 0
    iter = 0, toggle = -1:
    ;
    w = p1 * tan(w)
    awr = abs(real(w))
    awi = abs(imag(w))
    IF (awr < awi)
        minw = awr
    ELSE
        minw = awi
    ENDIF
    bailout = (minw < width && |w| <= p3)
    toggle = -1 * toggle
    iter = iter + 1
    IF (bailout)
        z = ratio * minw + (toggle > 0) * 125 + 1
    ENDIF
    z = z - iter
    bailout == 0
}

tangent_jul {
	;
        ; "circle & tangent line" coloring method for Julia sets
        ; p1 = c = Julia parameter
        ; p2 = x-circle center
        ; real(p3) = x-circle radius
        ; imag(p3) = angle of line from circle center to tangent
        ;    point of y-line, degrees
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
        cenx=p2, radx=real(p3), rad=radx, rad2x=|radx|
        theta=imag(p3)*pi/180, ct=cos(theta), st=sin(theta)
        xt=real(cenx)+rad*ct, yt=imag(cenx)+rad*st
        phi=theta+pi/2, cp=cos(phi), sp=sin(phi)
        ay=sp, by=-cp, cy=cp*yt-sp*xt:
        iter=iter+1, zc=sqr(zc)+c
        tempx=|zc-cenx|-rad2x
        tempy=ay*real(zc)+by*imag(zc)+cy
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

Tango { ; Fabian Labeau Abril 98
z=pixel :
a=z/z^3
b=z*pixel
z=z*(a^z)*pixel+(z^b),
       |z| <= 6
}

TBalls_Newt1_Mset {; Copyright (c) Paul W. Carlson, 1998
    ;  real(p1) = ball size factor
    ;  imag(p1) = iterations to skip
    ;  real(p2) = convergence test distance
    ;
    z = iter = 0
    c = pixel
    cm1 = c - 1
    tcm1 = cm1 + cm1
    w = sqrt((1 - c) / 6)
    sc = sqrt(-c)
    ro  = 2.613125929753 * p1
    ros = 1.847759065023 * p1
    r2 = p1 * p1
    dr0 = -flip(ro)
    dr1 = -ros - flip(ros)
    dr2 = -ro
    dr3 = -ros + flip(ros)
    dr4 = -dr0
    dr5 = -dr1
    dr6 = -dr2
    dr7 = -dr3
    index_factor = 29 / p1
    bailout = 1
    :
    w2 = w * w
    w = w - (w2 * w2 + cm1 * w2 - c) / (4 * w2 * w + tcm1 * w)
    ;
    IF (|w + dr0| < r2)
	dist = |w + dr0|
	range_num = 0
    ELSEIF (|w + dr1| < r2)
	dist = |w + dr1|
	range_num = 1
    ELSEIF (|w + dr2| < r2)
	dist = |w + dr2|
	range_num = 2
    ELSEIF (|w + dr3| < r2)
	dist = |w + dr3|
	range_num = 3
    ELSEIF (|w + dr4| < r2)
	dist = |w + dr4|
	range_num = 4
    ELSEIF (|w + dr5| < r2)
	dist = |w + dr5|
	range_num = 5
    ELSEIF (|w + dr6| < r2)
	dist = |w + dr6|
	range_num = 6
    ELSEIF (|w + dr7| < r2)
	dist = |w + dr7|
	range_num = 7
    ELSEIF (|w + (-1,0)| < p2)
	bailout = 1
	z = 252
    ELSEIF (|w + (1,0)| < p2)
	bailout = 1
	z = 252
    ELSEIF (|w + sc| < p2)
	bailout = 1
	z = 252
    ELSEIF (|w - sc| < p2)
	bailout = 1
	z = 252
    ELSE
	bailout = 0
	dist = 0
    ENDIF
    IF (dist > 0 && iter > imag(p1))
	bailout = 1
	z = index_factor * sqrt(dist) + range_num * 30 + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == 8)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0  && |w| < 1.0e20
}

Tc04-01{;V.1.0 - earlier versions may be discarded
; = 2(2z-1)Tc(3)-Tc(2)
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
ax=8*x,ay=8*y
Tx=ax*(ax*(x*(x+x-1)-2)+11)-11
Ty=ay*(ay*(y*(y+y-1)-2)+11)-11
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

tent_in_mod { ; Modified Sylvie Gallet formula
; Modified tent_inside.frm (generalized by Les St Clair)
; use fn1,fn2,fn4=abs & fn3=cabs for default behaviour
; set p1=0, p2=0.001 for default behaviour
IF (p1 || flip(p1))
r = p1
ELSE
r = 1
ENDIF
z = 0 :
l = r+p1
z = z*z + pixel
UV = (5,5) - fn1((5,5) - fn2(z))
r = fn3(UV)
fn4(l-r) >= p2 && r < 4
}

test01{
  z=c=pixel:
  t=real(z)/imag(z)
  z=fn1(z)+fn2(t)
  |z|<4
}

test97c {; Dewey Odhner
  c = Pixel, d = p1*flip(Pixel), z = Sqr(c)+d:
   z = Sqr(Sqr(z)+c)+d
    LastSqr <= 4
  }

Test0622a       { ; Jim Muth
z=fn1(pixel)+sqr(p1),
c=fn2(pixel)+p2:
z=sqr(z)+c
|z| <16  }

test667{; 
z=pixel:
z=fn1(p1/z)/fn2(p2/pixel)
|z|<4
}

TileMandel {; Terren Suydam (terren@io.com), 1996
            ; modified by Sylvie Gallet [101324,3444]
            ; Modified for if..else logic 3/19/97 by Sylvie Gallet
            ; p1 = center = coordinates for a good Mandel
   ; 0 <= real(p2) = magnification. Default for magnification is 1/3
   ; 0 <= imag(p2) = numtiles. Default for numtiles is 3
  center = p1
  IF (p2 > 0)
     mag = real(p2)
  ELSE
     mag = 1/3
  ENDIF
  IF (imag(p2) > 0)
     numtiles = imag(p2)
  ELSE
     numtiles = 3
  ENDIF
  omega = numtiles*2*pi/3
  x = asin(sin(omega*real(pixel))), y = asin(sin(omega*imag(pixel)))
  z = c = (x+flip(y)) / mag + center:
  z = z*z + c
  |z| <= 4
}

tim's_fract { ; Example of a more or less random formula
  z = Pixel:
   ; I have no clue what the point of this formula is
   ; it came straight from my subconcious <g!>
  z = (sinh(z*z + log(z)))/(z*z + 2)
  |z| <= 16
  }

TORUS {; Earl Hinrich torus method
   ; adaptation by Ray Girvan May 1997
   ; trial FRM ignoring scale factors
   ; p1=(x0,y0) centre of generating circle
   ; p2=(cx0,cy0) centre of generating circle
   ; real(p3) = zr radius of torus axis in z plane
   ; imag(p3) = cr radius of torus axis in c plane
   ; try p1=(0.5,0) p2=(-0.55103,0.534949) p3=(0.2,0.03)
  x=real(p1)+real(p3)*sin(imag(pixel));
  y=imag(p1)+real(p3)*cos(real(pixel));
  cx=real(p2)+imag(p3)*sin(real(pixel));
  cy=imag(p2)+imag(p3)*cos(imag(pixel));
  c=cx+flip(cy);
  z=x+flip(y):
  z=z*z+c,
  |z| <= 4
}

tracykoller1 {; Flower formula series for Tracy
              ; Copr. 1995 by Jack A. Orman
  z=1/pixel,c=cosxx(z/pixel)*sqr(pixel):
  z=z*z+sqr(c-p1),
  |z| <=4
}

Trans_Atan_Mset {; Copyright (c) Paul W. Carlson, 1998
    z = prev_w = bailout = iter = range_num = 0
    c = pixel
    max_real = real(p1)
    num_ranges = real(p2)
    colors_in_range = imag(p2):
    ;****************************************************
    w = fn1(prev_w) + c
    ;****************************************************
    IF (abs(real(w)) > max_real)
	angle = abs(atan((imag(w)-imag(prev_w))/(real(w)-real(prev_w))))
	bailout = 1
	z = colors_in_range * (2 * angle / pi + range_num) + 1
    ENDIF
    prev_w = w
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0
}

tri-fn+fn    { ; Sylvie Gallet <sylvie_gallet@compuserve.com>, May 1997
               ; Thanks to Kerry Mitchell for the idea!
               ; real(p1) = bailout
               ; imag(p1) must be different from 0 (>=1 recommended)
               ; z=fn1(z) + p2*fn2(z)
   ; This formula must be used with decomp = 256 and periodicity = 0
   ;
   z1 = pixel , mz1 = cabs(z1) , summ = iter = 0
   b1 = abs(real(p1)) , f = b1^0.1
   b2 = b1*f , b3 = b2*f , b4 = b3*f , b5 = b4*f , b6 = b5*f
   b7 = b6*f , b8 = b7*f , b9 = b8*f , b10 = b9*f , b11 = b10*f
   iter1 = iter2 = iter3 = iter4 = iter5 = iter6 = iter7       \
         = iter8 = iter9 = iter10 = summ_tot = iter_tot = 0
   k = imag(p1) * (0.0,6.28319530718)
   :
   iter = iter + 1 , za = fn1(z1) , a = cabs(za)
   zb = p2*fn2(z1) , b = cabs(zb)
   z1 = za + zb , mz1 = cabs(z1) , a_b = abs(a - b)
   summ = summ + (mz1 - a_b) / (a+b - a_b)
   IF (mz1 > b1)
    IF (iter1==0)
     iter1 = iter
     iter_tot = iter_tot + iter1 , summ_tot = summ_tot + summ
    ENDIF
    IF (mz1 > b2)
     IF (iter2==0)
      iter2 = iter
      iter_tot = iter_tot + iter2 , summ_tot = summ_tot + summ
     ENDIF
     IF (mz1 > b3)
      IF (iter3==0)
       iter3 = iter
       iter_tot = iter_tot + iter3 , summ_tot = summ_tot + summ
      ENDIF
      IF (mz1 > b4)
       IF (iter4==0)
        iter4 = iter
        iter_tot = iter_tot + iter4 , summ_tot = summ_tot + summ
       ENDIF
       IF (mz1 > b5)
        IF (iter5==0)
         iter5 = iter
         iter_tot = iter_tot + iter5 , summ_tot = summ_tot + summ
        ENDIF
        IF (mz1 > b6)
         IF (iter6==0)
          iter6 = iter
          iter_tot = iter_tot + iter6 , summ_tot = summ_tot + summ
         ENDIF
         IF (mz1 > b7)
          IF (iter7==0)
           iter7 = iter
           iter_tot = iter_tot + iter7 , summ_tot = summ_tot + summ
          ENDIF
          IF (mz1 > b8)
           IF (iter8==0)
            iter8 = iter
            iter_tot = iter_tot + iter8 , summ_tot = summ_tot + summ
           ENDIF
           IF (mz1 > b9)
            IF (iter9==0)
             iter9 = iter
             iter_tot = iter_tot + iter9 , summ_tot = summ_tot + summ
            ENDIF
            IF (mz1 > b10)
             IF (iter10==0)
              iter10 = iter
              iter_tot = iter_tot + iter10 , summ_tot = summ_tot + summ
             ENDIF
             IF (mz1 > b11)
              iter_tot = iter_tot + iter , summ_tot = summ_tot + summ
              z = exp (summ_tot * k / iter_tot)
             ENDIF
            ENDIF
           ENDIF
          ENDIF
         ENDIF
        ENDIF
       ENDIF
      ENDIF
     ENDIF
    ENDIF
   ENDIF
   mz1 <= b11
   }

tri-mandel-2 { ; Sylvie Gallet <sylvie_gallet@compuserve.com>, May 1997
               ; Thanks to Kerry Mitchell for the idea!
               ; real(p1) = bailout (1024 recommended)
               ; imag(p1) must be different from 0 (>=1 recommended)
   ; This formula must be used with decomp = 256 and periodicity = 0
   ;
   c = z1 = pixel , b = mz1 = cabs(z1) , summ = iter = 1
   b1 = abs(real(p1)) , f = b1^0.1
   b2 = b1*f , b3 = b2*f , b4 = b3*f , b5 = b4*f , b6 = b5*f
   b7 = b6*f , b8 = b7*f , b9 = b8*f , b10 = b9*f , b11 = b10*f
   iter1 = iter2 = iter3 = iter4 = iter5 = iter6 = iter7       \
         = iter8 = iter9 = iter10 = summ_tot = iter_tot = 0
   k = imag(p1) * (0.0,6.28319530718)
   :
   iter = iter + 1 , a = mz1 * mz1
   z1 = z1 * z1 + c , mz1 = cabs(z1) , a_b = abs(a - b)
   summ = summ + (mz1 - a_b) / (a+b - a_b)
   IF (mz1 > b1)
    IF (iter1==0)
     iter1 = iter
     iter_tot = iter_tot + iter1 , summ_tot = summ_tot + summ
    ENDIF
    IF (mz1 > b2)
     IF (iter2==0)
      iter2 = iter
      iter_tot = iter_tot + iter2 , summ_tot = summ_tot + summ
     ENDIF
     IF (mz1 > b3)
      IF (iter3==0)
       iter3 = iter
       iter_tot = iter_tot + iter3 , summ_tot = summ_tot + summ
      ENDIF
      IF (mz1 > b4)
       IF (iter4==0)
        iter4 = iter
        iter_tot = iter_tot + iter4 , summ_tot = summ_tot + summ
       ENDIF
       IF (mz1 > b5)
        IF (iter5==0)
         iter5 = iter
         iter_tot = iter_tot + iter5 , summ_tot = summ_tot + summ
        ENDIF
        IF (mz1 > b6)
         IF (iter6==0)
          iter6 = iter
          iter_tot = iter_tot + iter6 , summ_tot = summ_tot + summ
         ENDIF
         IF (mz1 > b7)
          IF (iter7==0)
           iter7 = iter
           iter_tot = iter_tot + iter7 , summ_tot = summ_tot + summ
          ENDIF
          IF (mz1 > b8)
           IF (iter8==0)
            iter8 = iter
            iter_tot = iter_tot + iter8 , summ_tot = summ_tot + summ
           ENDIF
           IF (mz1 > b9)
            IF (iter9==0)
             iter9 = iter
             iter_tot = iter_tot + iter9 , summ_tot = summ_tot + summ
            ENDIF
            IF (mz1 > b10)
             IF (iter10==0)
              iter10 = iter
              iter_tot = iter_tot + iter10 , summ_tot = summ_tot + summ
             ENDIF
             IF (mz1 > b11)
              iter_tot = iter_tot + iter , summ_tot = summ_tot + summ
              z = exp (summ_tot * k / iter_tot)
             ENDIF
            ENDIF
           ENDIF
          ENDIF
         ENDIF
        ENDIF
       ENDIF
      ENDIF
     ENDIF
    ENDIF
   ENDIF
   mz1 <= b11
   }

triang_jul { ; Kerry Mitchell 11feb98
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; imag(p2) = unused
        ; real(p3) = inner coloring speed (0 for outer only)
        ; imag(p3) = outer coloring speed (0 for inner only)
        ; use decomp=256
        zc=pixel, c=p1, rc=cabs(c), iter=1
        r2zc=|zc|, maxr=real(p2)
        inspeed=real(p3)*pi*255/128
        outspeed=imag(p3)*pi*255/128:
        iter=iter+1, z2=sqr(zc)+c, rz2=cabs(z2),
        fac=abs(r2zc-rc), q=(rz2-fac)/(r2zc+rc-fac)
        zc=z2, r2zc=|zc|
        if (iter==maxit)
          angle=inspeed*q
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        if (r2zc>maxr)
          angle=outspeed*q
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        iter>0
        ;
        ; Colors Julia set by magnitude of last iterate
        ; within a range determined by the triangle inequality.
        ; Take location in range and scale into an angle for
        ; decomp coloring.  Decouple inside from outside by
        ; setting appropriate coloring speed to 0.
        ;
        }

triang_man { ; Kerry Mitchell 11feb98
        ; real(p1) = bailout (try 1e12)
        ; imag(p1) = unused
        ; real(p2) = inner coloring speed (0 for outer only)
        ; imag(p2) = outer coloring speed (0 for inner only)
        ; use decomp=256
        zc=pixel, c=pixel, rc=cabs(c), iter=1
        r2zc=|zc|, maxr=real(p1)
        inspeed=real(p2)*pi*255/128
        outspeed=imag(p2)*pi*255/128:
        iter=iter+1, z2=sqr(zc)+c, rz2=cabs(z2),
        fac=abs(r2zc-rc), q=(rz2-fac)/(r2zc+rc-fac)
        zc=z2, r2zc=|zc|
        if (iter==maxit)
          angle=inspeed*q
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        if (r2zc>maxr)
          angle=outspeed*q
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        iter>0
        ;
        ; Colors Mandelbrot set by magnitude of last iterate
        ; within a range determined by the triangle inequality.
        ; Take location in range and scale into an angle for
        ; decomp coloring.  Decouple inside from outside by
        ; setting appropriate coloring speed to 0.
        ;
        }

triangcount_jul { ; Kerry Mitchell 11feb98
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; imag(p2) = unused
        ; real(p3) = inner coloring speed (0 for outer only)
        ; imag(p3) = outer coloring speed (0 for inner only)
        ; use decomp=256
        zc=pixel, c=p1, rc=cabs(c), iter=1
        r2zc=|zc|, maxr=real(p2), count=0
        inspeed=real(p3)*pi*255/128
        outspeed=imag(p3)*pi*255/128:
        iter=iter+1, z2=sqr(zc)+c, rz2=cabs(z2),
        fac=abs(r2zc-rc), q=(rz2-fac)/(r2zc+rc-fac)
        count=count+q, zc=z2, r2zc=|zc|
        if (iter==maxit)
          angle=inspeed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        if (r2zc>maxr)
          angle=outspeed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        iter>0
        ;
        ; Colors Julia set by average value of magnitude
        ; within a range determined by the triangle inequality.
        ; Scale average into an angle for decomp coloring.
        ; Decouple inside from outside by setting appropriate
        ; coloring speed to 0.
        ;
        }

triangcount_man { ; Kerry Mitchell 11feb98
        ; real(p1) = bailout (try 1e12)
        ; imag(p1) = unused
        ; real(p2) = inner coloring speed (0 for outer only)
        ; imag(p2) = outer coloring speed (0 for inner only)
        ; use decomp=256
        zc=pixel, c=pixel, rc=cabs(c), iter=1
        r2zc=|zc|, maxr=real(p1), count=0
        inspeed=real(p2)*pi*255/128
        outspeed=imag(p2)*pi*255/128:
        iter=iter+1, z2=sqr(zc)+c, rz2=cabs(z2),
        fac=abs(r2zc-rc), q=(rz2-fac)/(r2zc+rc-fac)
        count=count+q, zc=z2, r2zc=|zc|
        if (iter==maxit)
          angle=inspeed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        if (r2zc>maxr)
          angle=outspeed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        iter>0
        ;
        ; Colors Mandelbrot set by average value of magnitude
        ; within a range determined by the triangle inequality.
        ; Scale average into an angle for decomp coloring.
        ; Decouple inside from outside by setting appropriate
        ; coloring speed to 0.
        ;
        }

triangle_J{
a0=0.50000,d0=0.50000,
a1=0.50000,d1=0.50000,
a2=0.50000,d2=0.50000,
al0=0.25000,
al1=0.25000,l1=-0.50000,
al2=0.25000,k2=-0.50000,l2=-0.50000,
z=pixel:
x=real(z)
y=imag(z)
o0=(d0*x)/al0+flip((a0*y)/al0)
op0=|o0-p2|
o1=(d1*x)/al1+flip((a1*y+l1)/al1)
op1=|o1-p2|
o2=(d2*x+k2)/al2+flip((a2*y+l2)/al2)
op2=|o2-p2|
IF (op0<op1 && op0<op2)
z=o0
ELSEIF (op1<op0 && op1<op2)
z=o1
ELSEIF (op2<op1 && op2<op0)
z=o2
ENDIF
|z|<=p1
}

TricolorMand { ; Parametrized cubic Mandelbrot sets, colored based on both
               ; critical points. p1 is alpha parameter. Use outside=real,
               ; float=y, periodicity=n, maxiter>=256, logmap=0.
               ; To get logmaplike effect, choose real p2 equal to lowest iteration
               ; and real p3 to nonzero, bigger means more colors are pushed to
               ; lower iterations. Use imag(p2) = 0.001 or similarly tiny.
               ; Color 0 is for both critical points trapped.
               ; Colors 1-85, 86-170, and 171-255 are separate ranges.
               ; Use first for outside, second and third for one
               ; critical point escapes, one trapped.
               ; Very beautiful.
  a=p1, c=pixel, z1=sqrt(a), aa=3*a, z2=-z1, iter=0, done=0, z2done=0,
  m=maxit-1, z1done=0, m2=floor(maxit/2), same=0, qq=imag(p2), z1a=z1,
  z2a=z2, flag=0, z1d2=0, z2d2=0:
  IF(z2done==0)
    z2=z2*(sqr(z2)-aa)+c
    IF(lastsqr>400)
      z2done=iter
      z2d2=1
    ENDIF
  ENDIF
  IF(z1done==0)
    z1=z1*(sqr(z1)-aa)+c
    IF(lastsqr>400)
      z1done=iter
      z1d2=1
    ENDIF
  ENDIF
  iter=iter+1
  IF(iter==m2 && z1done==0 && z2done==0)
    z1chek=z1
    z2chek=z2
    flag=1
    spd=0
  ELSEIF(flag==1 && same==0)
    z1a=z1a*(sqr(z1a)-aa)+c
    z2a=z2a*(sqr(z2a)-aa)+c
    IF(|z1a-z2chek|<qq)
      same=1
    ENDIF
    IF(|z2a-z1chek|<qq)
      same=same+2
    ENDIF
    IF(|z1a-z1chek|<qq)
      z1d2=1
    ENDIF
    IF(|z2a-z2chek|<qq)
      z2d2=1
    ENDIF
    spd=spd+1
  ENDIF
  IF((z1d2>0 && z2d2>0) || iter==m || same!=0)
    k=real(p3)
    min=real(p2)
    IF(k==0)
      k=1
    ENDIF
    IF(z1done==0 || z2done==0)
      IF(z2done>0)
        color=((z2done-min)/(m-min))^(1/k)*85
        IF(color>85)
          color=85
        ENDIF
        color=color+170
      ELSEIF(z1done>0)
        color=((z1done-min)/(m-min))^(1/k)*85
        IF(color>85)
          color=85
        ENDIF
        color=color+85
      ELSEIF(same==1)
        color=(spd/m)^(1/k)*85
        IF(color>85)
          color=85
        ENDIF
        color=color+170
      ELSEIF(same==2)
        color=(spd/m)^(1/k)*85
        IF(color>85)
          color=85
        ENDIF
        color=color+85
      ELSEIF(same==3)
        color=(spd/m)^(1/k)*85
        IF(color>85)
          color=85
        ENDIF
      ELSE
        color=0
      ENDIF
    ELSE
      color=((iter-min)/(m-min))^(1/k)*85
      IF(color>85)
        color=85
      ENDIF
    ENDIF
    done=1
    z=color-iter-7
  ENDIF
  done==0
}

TricolorMandb { ; Parametrized cubic Mandelbrot sets, colored based on both
                ; critical points. p1 is alpha parameter. Use outside=real,
                ; float=y, periodicity=n, maxiter>=256, logmap=0.
                ; To get logmaplike effect, choose real p2 equal to lowest iteration
                ; and real p3 to nonzero, bigger means more colors are pushed to
                ; lower iterations. Use imag(p2) = 0.001 or similarly tiny.
                ; Color 0 is for both critical points trapped.
                ; Colors 1-85, 86-170, and 171-255 are separate ranges.
                ; Use first for outside, second and third for one
                ; critical point escapes, one trapped.
                ; Very beautiful. Slight color variant.
  a=p1, c=pixel, z1=sqrt(a), aa=3*a, z2=-z1, iter=0, done=0, z2done=0,
  m=maxit-1, z1done=0, m2=floor(maxit/2), same=0, qq=imag(p2), z1a=z1,
  z2a=z2, flag=0, z1d2=0, z2d2=0:
  IF(z2done==0)
    z2=z2*(sqr(z2)-aa)+c
    IF(lastsqr>400)
      z2done=iter
      z2d2=1
    ENDIF
  ENDIF
  IF(z1done==0)
    z1=z1*(sqr(z1)-aa)+c
    IF(lastsqr>400)
      z1done=iter
      z1d2=1
    ENDIF
  ENDIF
  iter=iter+1
  IF(iter==m2 && z1done==0 && z2done==0)
    z1chek=z1
    z2chek=z2
    flag=1
    spd1=0
    spd2=0
  ELSEIF(flag==1 && same==0)
    z1a=z1a*(sqr(z1a)-aa)+c
    z2a=z2a*(sqr(z2a)-aa)+c
    IF(|z1a-z2chek|<qq)
      same=1
    ELSE
      spd1=spd1+1
    ENDIF
    IF(|z2a-z1chek|<qq)
      same=same+2
    ELSE
      spd2=spd2+1
    ENDIF
    IF(|z1a-z1chek|<qq)
      z1d2=1
    ENDIF
    IF(|z2a-z2chek|<qq)
      z2d2=1
    ENDIF
  ENDIF
  IF((z1d2>0 && z2d2>0) || iter==m || same!=0)
    spd=abs(spd2-spd1)
    k=real(p3)
    min=real(p2)
    IF(k==0)
      k=1
    ENDIF
    IF(z1done==0 || z2done==0)
      IF(z2done>0)
        color=((z2done-min)/(m-min))^(1/k)*85
        IF(color>85)
          color=85
        ENDIF
        color=color+170
      ELSEIF(z1done>0)
        color=((z1done-min)/(m-min))^(1/k)*85
        IF(color>85)
          color=85
        ENDIF
        color=color+85
      ELSEIF(same==1)
        color=(spd/m)^(1/k)*85
        IF(color>85)
          color=85
        ENDIF
        color=color+170
      ELSEIF(same==2)
        color=(spd/m)^(1/k)*85
        IF(color>85)
          color=85
        ENDIF
        color=color+85
      ELSEIF(same==3)
        color=(spd/m)^(1/k)*85
        IF(color>85)
          color=85
        ENDIF
      ELSE
        color=0
      ENDIF
    ELSE
      color=((iter-min)/(m-min))^(1/k)*85
      IF(color>85)
        color=85
      ENDIF
    ENDIF
    done=1
    z=color-iter-7
  ENDIF
  done==0
}

TripleMutant{; Mandelbrot mutated by a combination of fn1, fn2 and fn3
             ; "sitting" at the points p1, p2 and p3
             ; The activities of the functions are decreasing with the
             ; inverse square of the distance to the current pixel
  z=0
  c=pixel
  a1=1/(|(pixel-p1)|^2)    ; calclulate the inverse square for 
  a2=1/(|(pixel-p2)|^2)    ; all three points
  a3=1/(|(pixel-p3)|^2):
  z=z*z+a1*fn1(z)+a2*fn2(z)+a3*fn3(z)+c  ; the functions are added
  |z|<=8
}

TripleMutant2{ ; Mandelbrot mutated by a combination of fn1, fn2 and fn3
                    ; "sitting" at the points p1, p2 and p3
                    ;  Not the iterated formula is modified
                    ;  but the constant c 
z=0
c=pixel
a1=1/(|(pixel-p1)|^2)   
a2=1/(|(pixel-p2)|^2)    
a3=1/(|(pixel-p3)|^2):
c=c+a1*fn1(c)+a2*fn2(c)+a3*fn3(c)
z=z*z+c   
|z|<=8
}

trm-011{
        z=c=pixel:
        z=cotanh(z)*conj(z)*tan(z)*1/z+c
        |z|<=4
        }

trmoe-011 {
  z=c=pixel:
  z=fn1(z)*fn2(z)*fn3(z)*1/z+c
  |z|<=4

Truncated_Stalks {; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = if both real(p1) and imag(p1) equal 0 do Mset,
    ;              otherwise do Julia set
    ;   real(p2) = a factor controlling the width of the stalks
    ;   imag(p2) = a factor controlling the length of the stalks
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    IF (real(p1) == 0 && imag(p1) == 0)
        w = 0
        c = pixel
    ELSE
        w = pixel
        c = p1
    ENDIF
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    ;****************************************************
    ; In the accompanying par files, trunspr1 and 2.par,
    ; we have 2 color ranges with 125 colors in each range
    ; for a total of 250 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| < 1000.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    ;****************************************************
    ; Real(p2) controls the width of the stalks.
    ; Imag(p2) controls the length of the stalks.
    ;****************************************************
    stalk_width = real(p2)
    stalk_length = imag(p2)
    index_factor = (colors_in_range - 1) / stalk_width:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be expressed in terms of a complex variable
    ; and a complex constant will work with this method.
    ;****************************************************
    w = c * (1 - w) * (1 + w) / (1 + w * w)
    ;****************************************************
    ; Find which axis the orbit point is closest to.
    ;****************************************************
    IF (abs(real(w)) <= abs(imag(w)))
        min_dist_to_axis = abs(real(w))
    ELSE
        min_dist_to_axis = abs(imag(w))
    ENDIF
    ;****************************************************
    ; If the orbit point is within a stalk width of an axis,
    ; and the value of |w| is less than the stalk length, then
    ; set z to the index into the colormap and set the bailout flag.
    ;****************************************************
    IF (min_dist_to_axis < stalk_width && |w| < stalk_length && iter > 0)
        z = index_factor * min_dist_to_axis + range_num * colors_in_range + 1
        bailout = 1
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
}

trydecomp { ; Paul W. Carlson
    ; Bailout occurs when the absolute value of w exceeds real(p1).
    ; The spacing of the "field lines" is highly sensitive to
    ; this value.  Here absolute value means sqrt(|w|).
    ; A value of 10 will reproduce the pictures for the Mset and
    ; Julia sets in the book _The Beauty of Fractals_.
    w = 0
    c = pixel
    color = 0
    iter = 0
    bailout = 0:
    ;
    w = w * w + c
    IF (sqrt(|w|) > p1)
        bailout = 1
        IF (imag(w) > 0)
            color = 1;
        ELSE
            color = 2;
        ENDIF
    ENDIF
    iter = iter + 1
    z = color - iter
    bailout == 0
}

Twins (xaxis) { ;Two almost-connected 'Brots
            ;formulae by Joe McKenzie
            ;email: joemck@crosswinds.net
            ;You may use them freely as long as you:
            ;(1) distribute it as is and
            ;(3) LEAVE IN THIS ENTRY.
                ;The authors left out the RECIP
                ;function outside of the fn
                ;choices, so the reciprocal formula
                ;  1/x  was used instead.
  z=0, c=pixel:
    z=z*z+c+(1/c)
    |z| < 4
}

Two_Ellipse_Mset {; Copyright (c) Paul W. Carlson, 1998
    ; Parameters:
    ;   real(p1) = a factor controlling the width of the curves
    ;   imag(p1) = iterations to skip
    ;   real(p2) = major axis, ellipse 1
    ;   imag(p2) = minor axis, ellipse 1
    ;   real(p3) = major axis, ellipse 2
    ;   imag(p3) = minor axis, ellipse 2
    ;
    w = z = bailout = iter = 0
    c = pixel
    width = real(p1)
    skip_iters = imag(p1)
    a1 = real(p2),  b1 = imag(p2)
    a2 = real(p3),  b2 = imag(p3)
    i = (0,1)
    index_factor = 124 / width:
    ;
    w = w * w + c  ; classic Mandelbrot set
    ;
    ang = atan(imag(w) / real(w))
    ell1 = a1 * cos(ang) + i * b1 * sin(ang)
    dist1 = abs(cabs(w) - cabs(ell1))
    ell2 = b2 * cos(ang) + i * a2 * sin(ang)
    dist2 = abs(cabs(w) - cabs(ell2))
    IF (dist1 < dist2)
        range_num = 0
        distance = dist1
    ELSE
        range_num = 1
        distance = dist2
    ENDIF
    IF (distance < width && iter > skip_iters)
	z = index_factor * distance + range_num * 125 + 1
	bailout = 1
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0  && |w| < 1000
}

TwoBallsJulia {; Copyright (c) Paul Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1 = Julia set coordinates
    ;   real(p2) = a factor controlling the size of the balls
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
  w = pixel
  c = p1
  z = 0
  bailout = 0
  iter = 0
  range_num = 0
  num_ranges = 2
  colors_in_range = 125
    ;****************************************************
    ; Parameter real(p2) controls the size of the balls.
    ; These values will usually be in the range 0.001 to 0.5
    ;****************************************************
  ball_size = real(p2)
  index_factor = (colors_in_range - 1) / ball_size:
    ;****************************************************
    ; The equation being iterated.  This equation is from
    ; page 465 of "The Fractal Geometry of Nature."
    ;****************************************************
  w = c * (w - 1 / w)
    ;****************************************************
    ; Check if point falls in one of the orbit traps.  If
    ; it does, compute "delta" and set bailout flag.
    ;****************************************************
  wr = real(w), wi = imag(w)
  IF (wr * wr + (wi - .5) * (wi - .5) < ball_size)
    bailout = 1
    delta = ball_size - (wr * wr + (wi - .5) * (wi - .5))
  ELSEIF (wr * wr + (wi + .5) * (wi + .5) < ball_size)
    bailout = 1
    delta = ball_size - (wr * wr + (wi + .5) * (wi + .5))
  ELSEIF (wi * wi + (wr - .5) * (wr - .5) < ball_size)
    bailout = 1
    delta = ball_size - (wi * wi + (wr - .5) * (wr - .5))
  ELSEIF (wi * wi + (wr + .5) * (wr + .5) < ball_size)
    bailout = 1
    delta = ball_size - (wi * wi + (wr + .5) * (wr + .5))
  ENDIF
    ;
  IF (bailout)
      ;************************************************
      ; Set color range depending on sign of imag(w)
      ;************************************************
    IF (wi >= 0)
      range_num = 1
    ELSE
      range_num = 0
    ENDIF
      ;************************************************
      ; Set z to the index into the colormap.
      ;************************************************
    z = index_factor * delta +  range_num * colors_in_range + 1
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
  bailout == 0
}

Twofo_J { ; Attractors are of no fixed address or type!
          ; Thus, periodicity checking: At half of maxit it saves z,
          ; then checks all future z against it to trap orbit.
          ; Turn periodicity off, use float, and p2 is orbit trap radius.
          ; p1 is Julia parameter. Use logmap=0, outside=real, and a
          ; two-tone colormap divided at top & bottom halves to get
          ; separate coloring of the 2 basins.
          ; Note: for speed fans, will check periodicity sooner at
          ; intervals, catch low periods this way sometimes.
  z=pixel, lambda=p1, r=real(p2), m=trunc(maxit/2), k=10, z2=0, iter=0, done=0, q=1, big=64, huge=big, flipflag=0, w=0
  IF(|lambda|>=1)
    bigflag=1
  ELSE
    bigflag=0
  ENDIF
  IF(|lambda-0.5|>=0.5)
    twoflag=0
  ELSE
    twoflag=1
  ENDIF
  ol=1/lambda
  tiny=1/huge
  ; Preiterate a few times
  IF(bigflag==0)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
  ENDIF
  z1=z
  :
  iter=iter+1
  IF(flipflag==0)
    z=lambda*(z-1/z)
    IF(|z|>big)
      IF(bigflag==1)
        done=2
      ELSEIF(|z|>huge)
        w=1/z
        flipflag=1
      ENDIF
    ENDIF
    IF(iter>m)
      IF(|z-z2|<r)
        done=1
      ENDIF
    ELSEIF(iter==m)
      z2=z
    ELSEIF(iter>k)
      z1=z
      k=2*k
      q=q+1
    ELSE
      IF(|z-z1|<r)
        done=1
      ENDIF
    ENDIF
  ELSE
    w=ol*w/(1-sqr(w))
    IF(lastsqr>tiny)
      z=1/w
      flipflag=0
    ENDIF
  ENDIF
  IF(done!=0)
    IF(done==2 || twoflag==0)
      color=iter
      IF(imag(z)<0)
        color=color+1
      ENDIF
    ELSE
      color=q
    ENDIF
    IF(color<1)
      color=1
    ENDIF
    IF(color>127)
      color=trunc(128*((color/128)-trunc(color/128)))
    ENDIF
    IF(imag(z)<0 && done!=2 && twoflag==1)
      color=color+127
    ENDIF
    z=color-iter-7
  ENDIF
  done==0
}
 
Twofo_M { ; Attractors are of no fixed address or type!
          ; Thus, periodicity checking: At half of maxit it saves z,
          ; then checks all future z against it to trap orbit.
          ; Turn periodicity off, use float, and p2 is orbit trap radius.
          ; Use logmap=0, outside=real, and a
          ; three-tone colormap divided in thirds to get
          ; separate coloring of the 2 M regions and outside.
          ; Note: for speed fans, will check periodicity sooner at
          ; intervals, catch low periods this way sometimes.
  lambda=pixel, z=sqrt(lambda/(lambda-1)), r=real(p2), m=trunc(maxit/2), k=10, z2=0, iter=0, done=0, q=1, big=64, huge=big, flipflag=0, w=0
  IF(|lambda|>=1)
    bigflag=1
  ELSE
    bigflag=0
  ENDIF
  IF(imag(z)<0)
    z=-z
  ENDIF
  IF(|lambda-0.5|>=0.5)
    twoflag=0
  ELSE
    twoflag=1
  ENDIF
  ol=1/lambda
  tiny=1/huge
  ; Preiterate a few times
  IF(bigflag==0)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
  ENDIF
  z1=z
  :
  iter=iter+1
  IF(flipflag==0)
    z=lambda*(z-1/z)
    IF(|z|>big)
      IF(bigpflag=0
    ENDIF
  ENDIF
  IF(done!=0)
    IF(done==2 || twoflag==0)
      color=iter
    ELSE
      color=q
    ENDIF
    IF(color<1)
      color=1
    ENDIF
    IF(color>85)
      color=trunc(86*((color/86)-trunc(color/86)))
    ENDIF
    IF(done==1 && twoflag==1)
      color=color+85
      IF(imag(z)<0)
        color=color+85
      ENDIF
    ENDIF
    z=color-iter-7
  ENDIF
  done==0
}

TwoPieces {; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = Julia set coordinates
    ;   real(p2) = the iteration count at which the value
    ;              of w is saved for periodicity checking
    ; Note that the equation variable is w, not z.
    ;****************************************************
    w = pixel
    c = p1
    save_iter = real(p2)
    iter = 0
    bailout = 0
    color = 0:
    ;****************************************************
    ; The equation being iterated.
    ;****************************************************
    w = c * (w - 1 / w)
    ;****************************************************
    ; if iter = save iter, save real(w) and imag(w)
    ;****************************************************
    IF (iter == save_iter)
        sr = real(w)
        si = imag(w)
    ENDIF
    ;****************************************************
    ; check if orbit is reapeating (periodicity check)
    ;****************************************************
    IF (iter > save_iter)
        IF (abs(real(w) - sr) < 0.00001 && abs(imag(w) - si) < 0.00001)
            ;****************************************************
            ; if it is, set color based on if imag(w) is + or -
            ; and set bailout flag.
            ;****************************************************
            bailout = 1
            IF (imag(w) >= 0)
                color = 1
            ELSE
                color = 2
            ENDIF
        ENDIF
    ENDIF
    ;****************************************************
    ; Since we are using outside=summ, z is equal to the
    ; color number minus the number of iterations.
    ;****************************************************
    iter = iter + 1
    z = color - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
    bailout == 0
}

u-draw33_04 { ; Don Archer '98
  q=fn1(flip(fn2(fn3(pixel+p1))^2))-cabs(conj((pixel+fn4(p2))^(pi*2)))-conj(0.01/pixel-flip(0.001/pixel))-0.3
  u=q-conj(|0.1/q|)
  c=abs(u)-cabs(u)
  z=zorig=abs(q)-cabs(flip(q)^pi)
  cp = c + pixel
  count = 0 :
if (count == 1000)
  z = 0 , c = 1.5000*zorig, cp = c + pixel
elseif (count == 1500)
  z = 0 , c = 2.2500*zorig, cp = c + pixel
elseif (count == 2000)
  z = 0 , c = 3.3750*zorig, cp = c + pixel
elseif (count == 2500)
  z = 0 , c = 5.0625*zorig, cp = c + pixel
elseif (count == 3000)
  z = 0, c = c + 6.25*zorig, cp = c + pixel
endif
  z = z*z+(-0.7496,-0.132)+flip(conj(c/10))
  count=count + 1
  |z|<=16
}

u-draw33_05 {; Don Archer '98
             ; Add variable "newpixel". G. Martin 6/27/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  q=fn1(flip(fn2(fn3(newpixel+p1))^2))-cabs(conj((newpixel+fn4(p2))^(pi/2)));-conj(0.01/newpixel-flip(0.001/newpixel))-0.3
  u=q-conj(|0.1/q|)
  c=tan(u)-sinh(u)
  z=zorig=abs(q)-cabs(flip(q)^pi)
  cp = c + newpixel
  count = 0 :
  IF (count == 1000)
    z = 0, c = 1.5000*zorig, cp = c + newpixel
  ELSEIF (count == 1500)
    z = 0, c = 2.2500*zorig, cp = c + newpixel
  ELSEIF (count == 2000)
    z = 0, c = 3.3750*zorig, cp = c + newpixel
  ELSEIF (count == 2500)
    z = 0, c = 5.0625*zorig, cp = c + newpixel
  ELSEIF (count == 3000)
    z = 0, c = c + 6.25*zorig, cp = c + newpixel
  ENDIF
  z = z*z+(-0.7496,-0.132)+flip(conj(c/10))
  count=count + 1
  |z|<=16
}


u-draw33_06 {; Don Archer '98
             ; Add variable "newpixel". G. Martin 6/27/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  q=fn1(flip(fn2(newpixel+p1))^2)-cabs(conj((newpixel+fn3(p2))^(pi)))
  u=fn4(q)
  c=tan(u)-sinh(u)
  z=zorig=sin(q)-tanh(flip(q)^pi)
  cp = c + newpixel
  count = 0 :
  IF (count == 1000)
    z = 0, c = 1.5000*zorig, cp = c + newpixel
  ELSEIF (count == 1500)
    z = 0, c = 2.2500*zorig, cp = c + newpixel
  ELSEIF (count == 2000)
    z = 0, c = 3.3750*zorig, cp = c + newpixel
  ELSEIF (count == 2500)
    z = 0, c = 5.0625*zorig, cp = c + newpixel
  ELSEIF (count == 3000)
    z = 0, c = c + 6.25*zorig, cp = c + newpixel
  ENDIF
  z = z*z+(-0.7496,-0.132)+flip(conj(c/10))
  count=count + 1
  |z|<=16
}


u-draw33_07 {; Don Archer '98
             ; Add variable "newpixel". G. Martin 6/27/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  q=fn1(flip(fn2(newpixel+p1))^pi)-cabs(conj((newpixel+fn3(p2))^(e*e)))
  u=fn4(q)
  c=tan(u)-sinh(u)
  z=zorig=sin(q)-tanh(flip(q)^2)
  cp = c + newpixel
  count = 0 :
  IF (count == 1000)
    z = 0, c = 1.5000*zorig, cp = c + newpixel
  ELSEIF (count == 1500)
    z = 0, c = 2.2500*zorig, cp = c + newpixel
  ELSEIF (count == 2000)
    z = 0, c = 3.3750*zorig, cp = c + newpixel
  ELSEIF (count == 2500)
    z = 0, c = 5.0625*zorig, cp = c + newpixel
  ELSEIF (count == 3000)
    z = 0, c = c + 6.25*zorig, cp = c + newpixel
  ENDIF
  z = z*z+(-0.7496,-0.132)+flip(conj(c/10))
  count=count + 1
  |z|<=16
}

U02-14(XYAxis){; = 2zU01-U00
bailout=real(p2)/10000,z=pixel:
f=4*z*z-1
fd=8*z
oz=z
w=z-f/fd
fw=4*w*w-1
z=w-fw/fd
bailout<=sqrt(|(|z|)-(|oz|)|)
}

U03-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=4*x*((x+x)*x-1)
  Ty=4*y*((y+y)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
}

U03-14(XYAxis){;V.1.0 - earlier versions may be discarded
; = 2zU02-U01
bailout=real(p2)/10000,z=pixel:
zz=z*z
f=4*z*(zz+zz-1)
fd=24*zz-4
oz=z
w=z-f/fd
fw=4*w*((w+w)*w-1)
z=w-fw/fd
bailout<=sqrt(|(|z|)-(|oz|)|)}

U04-01{;V.1.0 - earlier versions may be discarded
; = 2zU03-U02
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
ax=4*x*x,ay=4*y*y
Tx=ax*(ax-3)+1
Ty=ay*(ay-3)+1
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

Uc05-28{;V.1.1 - earlier versions may be discarded
; = 2z(2z-1)U04-U03
t=p1,bailout=real(p2),z=pixel,x=real(pixel),y=imag(pixel),h=imag(p2):
newx=x-h*fn2(y+fn3(3*y))
newy=y-h*fn2(x+fn3(3*x))
x=newx,y=newy
ax=4*x-2,aax=ax*ax
Tx=(fn1(ax*(aax*(aax-4)+3)))
ay=4*y-2,aay=ay*ay
Ty=(fn1(ay*(aay*(aay-4)+3)))
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

Uc06-01{;V.1.0 - earlier versions may be discarded
; = 2z(2z-1)U05-U04
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
ax=4*x-2,ay=4*y-2
aax=ax*ax,aay=ay*ay
Tx=aax*(aax*(aax-5)+6)-1
Ty=aay*(aay*(aay-5)+6)-1
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

U08-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  b=2*zz
  f=8*zz*(b*(a*(a-7)+15)-5)+1
  fd=16*z*(4*zz*(b*(16*zz-21)+15)-5)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}

U10-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  b=16*zz
  f=a*(a*(b*(zz*(a-9)+6)-35)+7)-1
  fd=8*z*(8*zz*(b*(2*zz*(5*zz-9)+9)-35)+7)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
}

Uc02-14{;V.1.0 - earlier versions may be discarded
; = 2z(2z-1)U01-U00
bailout=real(p2)/10000
z=pixel:
a=4*z-2
f=a*a-1
fd=8*a
oz=z
w=f-f/fd
aw=w*w
fw=aw*aw-1
z=w-fw/fd
bailout<=sqrt(|(|z|)-(|oz|)|)}

Uc03{; = 2z(2z-1)U02-U01
         ;Prerelease 16/04/1998
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
ax=4*x-2,ay=4*y-2
Tx=fn1(ax*(ax*ax-2))
Ty=fn1(ay*(ay*ay-2))
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

Uc03-09{;V.1.0 - earlier versions may be discarded
; = 2z(2z-1)U02-U01
t=p1,bailout=4,z=pixel:
x=real(z),y=imag(z)
ax=4*x-2,ay=4*y-2
Tx=fn1(ax*(ax*ax-2))
Ty=fn1(ay*(ay*ay-2))
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
|z|<=bailout}

Uc07-15{;V.1.0 - earlier versions may be discarded
; = 2z(2z-1)U06-U05
r=p1,bailout=real(p2)/10000,z=pixel:
a=4*z-2,aa=a*a
f=a*(aa*(aa*(aa-6)+10)-4)
fd=4*(aa*(aa*(7*aa-30)+30)-4)
oz=z
z=z-r*f/fd
bailout<=sqrt(|(|z|)-(|oz|)|)}

Ucgrav{;6-1-98 kathy roth
     ;variation on frm by Morgan Owens and Mark Christenson
t=p1,bailout=real(p3),z=pixel,v=imag(p3):
x=real(z),y=imag(z)
ax=4*x-2,ay=4*y-2
Tx=fn1(ax*(ax*ax-2))
Ty=fn1(ay*(ay*ay-2))
x=x-t*Ty,y=y+t*Tx
z=x+flip(y)
w = fn1(z)
   z = fn3(v/fn2(w*w)) + p2
    |z| < p3
  }

UcPop { ;5-29-98 kathy roth
            ;variant of Morgan Owens Uc03
            x=real(pixel), y=imag(pixel), h=imag(p2)
    t=p1, bailout = real(p2):
    newx = x-h*sin((y) + tan(3*y))
    newy = y-h*sin((x) + tan(3*x))
    x=newx, y=newy
    z=x+flip(y)
    x=real(z),y=imag(z)
    ax=4*x-2,ay=4*y-2
    Tx=fn1(ax*(ax*ax-2))
    Ty=fn1(ay*(ay*ay-2))
    x=x-t*Ty,y=y+t*Tx
    z=x+flip(y)
    |z|<=bailout
    }

Vector1J-z { ; 4D Julia set parallel to the the Z plane
             ; p1 Julia param, p2 chooses slice, p3 bailout.
  z=pixel, w=p2, c=p1:
  z2=sqr(z)
  w2=sqr(w)
  z=z2+w2+c
  w=c*z2*w2+1,
  |z2+w2|<=p3
}
 
Vector1J-w { ; 4D Julia set parallel to the the W plane
             ; p1 Julia param, p2 chooses slice, p3 bailout.
  z=p2, w=pixel, c=p1:
  z2=sqr(z)
  w2=sqr(w)
  z=z2+w2+c
  w=c*z2*w2+1,
  |z2+w2|<=p3
}
 
Vector1J-zw { ; 4D Julia set parallel to another plane.
              ; p1 Julia param, p2 chooses slice, p3 bailout.
  z=pixel+p2, w=pixel-p2, c=p1:
  z2=sqr(z)
  w2=sqr(w)
  z=z2+w2+c
  w=c*z2*w2+1,
  |z2+w2|<=p3
}
 
Vector1M { ; 2D Mandelbrot set from vector valued function.
           ; p3 bailout.
  z=0, w=0, c=pixel:
  z2=sqr(z)
  w2=sqr(w)
  z=z2+w2+c
  w=c*z2*w2+1,
  |z2+w2|<=p3
}
 
 
Vector2J-z { ; 4D Julia set parallel to the the Z plane
             ; p1 Julia param, p2 chooses slice, p3 bailout.
  z=pixel, w=p2, c=p1:
  z2=sqr(z)
  w2=sqr(w)
  z=z2+2*w*z+w2+c
  w=z*Z2+w*w2+w2*z2+c,
  |z2+w2|<=p3
}
 
Vector2J-w { ; 4D Julia set parallel to the the W plane
             ; p1 Julia param, p2 chooses slice, p3 bailout.
  z=p2, w=pixel, c=p1:
  z2=sqr(z)
  w2=sqr(w)
  z=z2+2*w*z+w2+c
  w=z*Z2+w*w2+w2*z2+c,
  |z2+w2|<=p3
}
 
Vector2J-zw { ; 4D Julia set parallel to another plane.
              ; p1 Julia param, p2 chooses slice, p3 bailout.
  z=pixel+p2, w=pixel-p2, c=p1:
  z2=sqr(z)
  w2=sqr(w)
  z=z2+2*w*z+w2+c
  w=z*Z2+w*w2+w2*z2+c,
  |z2+w2|<=p3
}
 
Vector2M { ; 2D Mandelbrot set from vector valued function.
           ; p3 bailout.
  z=0, w=0, c=pixel:
  z2=sqr(z)
  w2=sqr(w)
  z=z2+2*w*z+w2+c
  w=z*Z2+w*w2+w2*z2+c,
  |z2+w2|<=p3
}

Whatzit4 {; Dan Farmer  -  from thread in General Information.
  z = fn1(pixel):
  z = ((real(p1)*z^3) - (imag(p1)*z^2)+1) ^ p2
  |real(z)| <=100  ||  |imag(z)| <=100
}

Wineglass (XAXIS) {; Pieter Branderhorst
  c = z = pixel:
  z = z * z + c
  c = (1+flip(imag(c))) * real(c) / 2 + z
  |z| <= 4
}

WK980711 { ; Modified Cdp_Jul_Mand frm (Paul Carlson)
    ; Always use float=y, outside=summ
    ; real(p1) = 0 if Mset, otherwise Julia set
    ; imag(p1) = maximum value of ratio (try 0.01 to 0.40)
    ; p2       = Julia set coordinates (not used if Mset)
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
    z = iter = range_num = bailout = 0
    IF (real(p1) == 0)
	prev_w = 0
	c = pixel
    ELSE
	prev_w = pixel
	c = p2
    ENDIF
    max_r = imag(p1)^2
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    colors_in_range_1 = colors_in_range - 1
    :
    w = prev_w * prev_w + c
    ;
    r = |prev_w| / |w|
    prev_w = w
    IF (r < max_r && iter > 0)
	bailout = 1
	z = colors_in_range_1 * r / max_r + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
	range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 4
}

WK990208 {; Eliminated superfluous variable "c". G. Martin, 7/26/99
  z=pixel:
  z = z * z + pixel
  IF (fn1(|z|) < .05)
    z = z * 100
  ENDIF
  |z| < 4
}

Woven {; Jim Muth
       ; As Posted in Fractal-Art, 4/97
  z=pixel 
  c=p1:
  z=(-z)^1.05+c
  |z| <= 100
}

Xerreal {
  z = c = pixel:
  z = (sqrt(-1) * z /c)^2 * c + p1
  z = z * fn1(z) + pixel
  |z| <= 4
}

xlty_jul { ; Kerry Mitchell
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
        roundfac=p3:
        ;
        ; adjust iterate through arbitrary function and find
        ;   fractional part
        ;
        temp=fn2(zc)/roundfac, frac=roundfac*(temp-fn1(temp))
        ;
        ; update counter if conditions are right
        ;
        if (real(frac)<imag(frac))
          count=count+1
          endif
        ;
        ; bailout
        ;   scale counter into decomposition angle
        ;   set "iteration done" flag (iter = -1)
        ;
        if ((|zc|>maxr)||(iter==maxit))
          angle=speed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
        else
          iter=iter+1
          zc=sqr(zc)+c
        endif
        iter>0
        }

xlty_man { ; Kerry Mitchell
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
        roundfac=p2:
        ;
        ; adjust iterate through arbitrary function and find
        ;   fractional part
        ;
        temp=fn2(zc)/roundfac, frac=roundfac*(temp-fn1(temp))
        ;
        ; update counter if conditions are right
        ;
        if (real(frac)<imag(frac))
          count=count+1
          endif
        ;
        ; bailout
        ;   scale counter into decomposition angle
        ;   set "iteration done" flag (iter = -1)
        ;
        if ((|zc|>maxr)||(iter==maxit))
          angle=speed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
        else
          iter=iter+1
          zc=sqr(zc)+c
        endif
        iter>0
        }
 
Xmas2 {; Copyright (c) Paul W. Carlson, 1997
    x=0, c=pixel, iter=0, toggle=-1:
    x=x*x+c
    d=abs(|x|-.25), t=(d<0.1)
    toggle=-1*toggle, iter=iter+1
    z=(1240*d+(toggle>0)*125+1)*(|t|>0)-iter
    |t|<=0 && |x|<100
}

Xmas3 {; Copyright (c) Paul W. Carlson, 1997
    x=0, c=pixel, iter=0, toggle=-1:
    x=x*x+c
    xr=real(x), xi=imag(x)
    d=abs((xr-.5)*(xr-.5)+(xi-.5)*(xi-.5)-.1)
    toggle=-1*toggle, iter=iter+1
    z=(620*d+(toggle>0)*125+1)*(d<.2)-iter
    (d>=.2) && |x|<100
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
}

XmasSeaHorse {; Copyright (c) Paul W. Carlson, 1997
    x=pixel,  c=(-0.746410388,0.184309007), iter=0
    s=0.1887757, toggle=-1:
    x=x*x+c
    a=sqrt(|x|), w=(a<s)*toggle+(a>=s)*w, s=(a<s)*a+(a>=s)*s
    iter=iter+1, toggle=-1*toggle
    z=(570*s+(w<0)*126)*(|x|>=16)-iter
    |x|<16
}

yyt {
   ; Changing the yyy to the more general form using P1
  z = zp1 = pixel, zp2 = (0,0), huge=1.0e32:
  temp = z
  z = zp1^z - zp2
  zp2 = zp1
  zp1 = p1/temp, (|zp2| <= 64) && (|z| <= huge) 
}

z3_newtbasin { ; Written by Sylvie Gallet for Kirsteen Duncan
               ; February 5, 2000
;
; Newtbasin for (z-p1) * (z-p2) * (z-p3)
; Use periodicity=0 and outside=real
;
  y = pixel , z = stop = 0
  iter = 0
  :
  num = (y-p1)*(y-p2)*(y-p3)
  den = 3*sqr(y) - 2*(p1+p2+p3)*y + (p1*p2 + p1*p3 + p2*p3)
  y = y - num / den
  if (cabs(y-p1) <= 0.001)
    z = 0 , stop = 1
  elseif (cabs(y-p2) <= 0.001)
    z = 1 , stop = 1
    elseif (cabs(y-p3) <= 0.001)
    z = 2 , stop = 1
  endif
  if (stop == 1)
    z = z - iter - 7
  endif
  iter = iter + 1
  stop == 0
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
}

zeta {  ; Riemann Zeta function approximation.
        ; p1 Julia parameter. real(p3) bailout.
  r=real(p3)
  IF(r<=0)
    r=10000
  ENDIF
  z=pixel, c=p1:
  IF(real(z)<=-1)
    z=2^(z + 1/2)*exp(z - 1)*3.14159265359^(z - 1/2)*(-(139/(51840*(1 \
    - z)^3)) - 571/(2488320*(1 - z)^4) +1/(288*(1 - z)^2) + 1 + 1/(12 \
    * (1 - z)))*(1/3*2^(-(3*(1 - z)) - 5)*5^(z - 2)*(1 - z) +2^(z - 1)\
    + 3^(z - 1) + 4^(z - 1) +2^(-(3*(1 - z)) - 1)*5^(z - 1) + 5^(z -  \
    1) +6^(z - 1) + 7^(z - 1) + 8^(z - 1) + 9^(z - 1) +10^(z - 1) +   \
    11^(z - 1) + 12^(z - 1) + 13^(z - 1) +14^(z - 1) + 15^(z - 1) +   \
    16^(z - 1) + 17^(z - 1) +18^(z - 1) + 19^(z - 1) + 20^(z - 1) +   \
    21^(z - 1) +22^(z - 1) + 23^(z - 1) + 24^(z - 1) + 25^(z - 1) +   \
    26^(z - 1) + 27^(z - 1) + 28^(z - 1) + 29^(z - 1) +30^(z - 1) +   \
    31^(z - 1) + 32^(z - 1) + 33^(z - 1) +34^(z - 1) + 35^(z - 1) +   \
    36^(z - 1) + 37^(z - 1) +38^(z - 1) + 39^(z - 1) - 40^z/z + 1)*(1 \
    - z)^(1/2 - z)*sin((3.14159265359*z)/2)
  ELSE
    z=1/3*2^(-(3*z) - 5)*5^(-z - 1)*z + 2^(-z) + 3^(-z) +4^(-z) +    \
    5^(-z) + 6^(-z) + 7^(-z) + 8^(-z) + 9^(-z) +10^(-z) + 11^(-z) +  \
    12^(-z) + 13^(-z) + 14^(-z) +15^(-z) + 16^(-z) + 17^(-z) +       \
    18^(-z) + 19^(-z) +20^(-z) + 21^(-z) + 22^(-z) + 23^(-z) +       \
    24^(-z) +25^(-z) + 26^(-z) + 27^(-z) + 28^(-z) + 29^(-z) +       \
    30^(-z) + 31^(-z) + 32^(-z) + 33^(-z) + 34^(-z) +35^(-z) +       \
    36^(-z) + 37^(-z) + 38^(-z) + 39^(-z) +2^(-(3*z) - 1)/5^z +      \
    40^(1 - z)/(z - 1) + 1
  ENDIF
  z=z+c
  |z|<r
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
}

zigzag2_J{
a0=-0.63241,b0=-0.61481,c0=-0.54537,d0=0.65926,
a1=-0.03611,b1=0.44444,c1=0.21019,d1=0.03704,
al0=-0.75222,k0=-3.32049,l0=-1.28372,
al1=-0.09475,k1=3.62576,l1=0.73613,
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
}

zmincoszb {; David Walter
  z =c= pixel:
  z10=z*z+c
  fz = z - cos(z10);
  fdashz = 1 + sin(z);
  z = z - fz/(fdashz + P1);
  0.0001 <= |fz|
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
        if(|z|>r2)
          t=scale*iter
          if(cabs(real(z))<r)
            t=0
          endif
          if(cabs(imag(z))<r)
            t=0
          endif
          z=cos(t)+flip(sin(t))
          done=1
          endif
        done==0
        }
