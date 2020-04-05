

r3 {
  z=pixel, r=(12/fn1(z-1))/p2:
  z=fn2(z)*fn3(r/z)
  |z|>=p1
  ;SOURCE: ad99_1.frm
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
  ;SOURCE: 98msg.frm
}


R4_Mandel {; Copyright (c) Paul W. Carlson, 1998
      ; Edited for Fractint v. 20 by George Martin, 10/98
  w = z = bailout = range_num = iter = 0
  k = (0.5,0.5)
  c = pixel
  size = real(p1)
  skip = imag(p1)
  num_ranges = real(p2)
  colors_in_range = imag(p2)
  index_factor = (colors_in_range - 1) / size:
    ;****************************************************
    w = w * w + c
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
  bailout == 0  && |w| < 1.0e10
  ;SOURCE: carlson2.frm
}


R_&_B {
  z = c = pixel:
  c = fn1(c) + z 
  z = z + p1
  z = z / c  
  |z| < 6
  ;SOURCE: gestalt.frm
}


ra3 {
  c=z=pixel, b=fn3(fn2(z)), k=real(p1)*b, o=imag(p1):
  z=fn4(fn4(z)+c)+o
  z=fn1(real(z))+flip(imag(z))*(b+fn3(z))
  IF (b<=k)
    z=(z+p3)+(fn2(b/(1-fn3(z)+whitesq)))
  ENDIF
  IF (b<imag(p1))
    z=fn1(z*imag(p2))+(fn3(z/k)*o)
  ENDIF
  |z|<4
  ;SOURCE: ad978-1.frm
}


Rabadon {; Revised by George Martin to correct commented out calculations
  z = pixel/2 
  q = z^sin(pixel)
  g = pixel:
  z = z^q/g
  z = (log(q) + sqr(g)) / z
  z = 4^z / q^g*2
  |real(z)| <=8
  ;SOURCE: fractals.frm
}


Ramanujan1 (ORIGIN) {
  z = pixel:
  z = (cosh(p1 * sqr(z)) - sinh(p2 * sqr(z))/(p2 * sqr(z)))/z
  |z|<= 4
  ;SOURCE: fract002.frm
}


rand_generic {; ****   PARAMETER 1 MUST BE > 0   ****
              ; Thierry Boudet 101355.2112ompuserve.com
              ; 19 Juillet 1997
  z = srand(z):
  z = fn1(z) + fn2(pixel)
  |z| <= real(p1)
  ;SOURCE: 97msg.frm
}


rand_generic_float {; ****   PARAMETER 1 MUST BE > 0   ****
                    ; modified by Sylvie Gallet
                    ; Thierry Boudet 101355.2112ompuserve.com
                    ; 19 Juillet 1997
  IF (p1 <= 0)
    p1 = 0.5
  ENDIF
  z = srand(z):
  z = fn1(z) + fn2(pixel)
  |z| <= p1
  ;SOURCE: 98msg.frm
}


Random_Olio {
  z = pixel, rand = srand(z):
  z = z + p1
  z = z + rand
  |z| < 4
  ;SOURCE: olio.frm
}


range-r-1_jul {; Kerry Mitchell
        ; See the end of range-r_jul for Kerry Mitchell's explanation of
        ; his "range" formulas
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
  lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
  :
        ;
        ; iteration
        ;   if magnitude of iterate falls into range, save iterate
        ;
  iter=iter+1, zc=sqr(zc)+c, r=|zc|
  IF ((r>lo)&&(r<hi))
    z=zc
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
  IF ((r>maxr)||(iter==maxit))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


range-r-2_jul {; Kerry Mitchell
        ; See the end of range-r_jul for Kerry Mitchell's explanation of
        ; his "range" formulas
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
  lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
  :
        ;
        ; iteration
        ;   if magnitude of iterate falls into range, save iterate
        ;
  iter=iter+1, zc=sqr(zc)+c, r=|zc|
  IF ((r>lo)&&(r<hi))
    z=zc
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
  IF ((r>maxr)||(iter==maxit))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


range-r-3_jul {; Kerry Mitchell
        ; See the end of range-r_jul for Kerry Mitchell's explanation of
        ; his "range" formulas
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
  lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
  :
        ;
        ; iteration
        ;   if magnitude of iterate falls into range, save iterate
        ;
  iter=iter+1, zc=sqr(zc)+c, r=|zc|
  IF ((r>lo)&&(r<hi))
    z=zc
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
  IF ((r>maxr)||(iter==maxit))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


range-r_jul {; Kerry Mitchell
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
  lo=real(p3), hi=imag(p3)
  :
        ;
        ; iteration
        ;   if magnitude of iterate falls into range, save iterate
        ;
  iter=iter+1, zc=sqr(zc)+c, r=|zc|
  IF ((r>lo)&&(r<hi))
    z=zc
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
  IF ((r>maxr)||(iter==maxit))
    iter=-1
  ENDIF
  iter>0

;**************************************************************
;**** Kerry Mitchell's explanation of his "range" formulas **** 
; The formulas are:
;     range-r_jul (above)
;     range-r-1_jul 
;     range-r-2_jul 
;     range-r-3_jul 
;     range-x_jul 
;     range-x-1_jul 
;     range-x-2_jul 
;     range-x-3_jul 
;     range-y_jul 
;     range-y-1_jul 
;     range-y-2_jul 
;     range-y-3_jul 
;     rangecount-r_jul 
;     rangecount-r-1_jul 
;     rangecount-r-2_jul 
;     rangecount-r-3_jul 
;     rangecount-x_jul 
;     rangecount-x-1_jul 
;     rangecount-x-2_jul 
;     rangecount-x-3_jul 
;     rangecount-y_jul 
;     rangecount-y-1_jul 
;     rangecount-y-2_jul 
;     rangecount-y-3_jul 
;
; the following narrative is copyright Kerry Mitchell, 1998
;
; Range
;
; In the range coloring schemes, the pixels of the Julia set images
; are only colored when the iterate (of a component of it) falls within
; a specified range.  This is similar to the bubble method, which only
; treats orbits that pass close to the origin.  With an appropriate
; choice of parameters, the range schemes can be forced to generate
; bubbles-type images.  However, the intent of the range method was
; to render Julia sets through thin rings of color, using a relatively
; small range of magnitudes in which to trap the orbit.
;
; The simplest case is shown in the range-r formulas.  Here, the orbit
; is monitored until the magnitude of the iterate falls within a
; specified range.  When this occurs, that iterate is saved.  Upon
; bailout (either escape or maximum iterations), the last iterate
; falling within the range is recalled, and its polar angle shown via
; decomposition coloring.  Depending on the range chosen, the results
; can be circular rings, pinched loops (figure "8"), or open loops.
; The shapes are definitely non-fractal, but are assembled in such a
; way to recover the underlying fractal structure.
;
; Choosing the range is very important, as a greatly impacts the image.
; The most direct route is to simply specify the upper and lower bounds
; of the range.  This is the method used in range-r, and can require a
; great deal of thought, to coordinate a range with the Julia parameter.
; The other formulas using this method adust the ranges depending on the
; Julia parameter c.  The range parameters are set by the user, the
; center and the width.  For example, choosing a center of 1.0 and a
; width of 0.1 means that the range will extend from 0.95 to 1.05, half
; the width either side of the center.  The value of the center depends
; on the the formula chosen.  In range-r-1, the basis for the range is
; |c|, so the above choices would result in a range from 95% |c| to
; 105% |c|.  This basis was chosen since c is the first iterate of 0
; (0^2 + c = c), and zero is the critical point of z^2 + c.  Another
; way of looking at it is that, by choosing a range centered around c,
; the orbit of 0 will fall into the range on the first iteration.  The
; formulas range-r-2 and -3 use the second and third iterations,
; respectively, so their bases are |sqr(c)+c| and |sqr(sqr(c)+c)+c|.  
;
; This method opens itself up to many variations.  For example, instead
; of monitoring the magnitude of the iterate, the real or imaginary
; components can be tracked.  The formulas range-x and range-y perform
; this.  In range-x, the real part of the iterate is watched.  When it
; falls into the target range, the imaginary part of the iterate is
; scaled and used as the decomposition angle.  Range-y does the same
; thing, switching the roles of the real and imaginary parts.  Each is
; offered with the 4 above range setting options:  explicit, c, sqr(c)+c,
; sqr(sqr(c)+c)+c (the formulas are named similar to the range-r entries,
; substituting -x or -y as appropriate).
;
; Each of the above formulas uses the last occurance of an iterate inside
; the target range to color the pixel.  If the orbit is such that the
; range is hit many times, that prior information is lost.  One manner to
; recover part of that information is with the rangecount formulas.  The
; basic setup is the same as the range formulas, but now the decomposition
; angle is the count of how many times the orbit landed in the range.  A
; scale factor is available to convert the count into a useable angle.
; This method seems to work especially well when the range width is
; increased, to increase the hit count and make more colors available.
; 
;*********************************************************************
  ;SOURCE: 98msg.frm
}


range-x-1_jul {; Kerry Mitchell
        ; See the end of range-r_jul for Kerry Mitchell's explanation of
        ; his "range" formulas
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
  IF (hi<lo)
    temp=lo, lo=hi, hi=temp
  ENDIF
  :
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   scale imaginary part into decomp angle
        ;
  iter=iter+1, zc=sqr(zc)+c, r=real(zc)
  IF ((r>lo)&&(r<hi))
    angle=scale*imag(zc)
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


range-x-2_jul {; Kerry Mitchell
        ; See the end of range-r_jul for Kerry Mitchell's explanation of
        ; his "range" formulas
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
  IF (hi<lo)
    temp=lo, lo=hi, hi=temp
  ENDIF
  :
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   scale imaginary part into decomp angle
        ;
  iter=iter+1, zc=sqr(zc)+c, r=real(zc)
  IF ((r>lo)&&(r<hi))
    angle=scale*imag(zc)
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


range-x-3_jul {; Kerry Mitchell
        ; See the end of range-r_jul for Kerry Mitchell's explanation of
        ; his "range" formulas
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
  IF (hi<lo)
    temp=lo, lo=hi, hi=temp
  ENDIF
  :
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   scale imaginary part into decomp angle
        ;
  iter=iter+1, zc=sqr(zc)+c, r=real(zc)
  IF ((r>lo)&&(r<hi))
    angle=scale*imag(zc)
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


range-x_jul {; Kerry Mitchell
        ; See the end of range-r_jul for Kerry Mitchell's explanation of
        ; his "range" formulas
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
  iter=1, angle=0, lo=real(p3), hi=imag(p3)
  :
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   scale imaginary part into decomp angle
        ;
  iter=iter+1, zc=sqr(zc)+c, r=real(zc)
  IF ((r>lo)&&(r<hi))
    angle=scale*imag(zc)
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


range-y-1_jul {; Kerry Mitchell
        ; See the end of range-r_jul for Kerry Mitchell's explanation of
        ; his "range" formulas
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
  IF (hi<lo)
    temp=lo, lo=hi, hi=temp
  ENDIF
  :
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   scale real part into decomp angle
        ;
  iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
  IF ((r>lo)&&(r<hi))
    angle=scale*real(zc)
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


range-y-2_jul {; Kerry Mitchell
        ; See the end of range-r_jul for Kerry Mitchell's explanation of
        ; his "range" formulas
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
  IF (hi<lo)
    temp=lo, lo=hi, hi=temp
  ENDIF
  :
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   scale real part into decomp angle
        ;
  iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
  IF ((r>lo)&&(r<hi))
    angle=scale*real(zc)
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


range-y-3_jul {; Kerry Mitchell
        ; See the end of range-r_jul for Kerry Mitchell's explanation of
        ; his "range" formulas
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
  IF (hi<lo)
    temp=lo, lo=hi, hi=temp
  ENDIF
  :
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   scale real part into decomp angle
        ;
  iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
  IF ((r>lo)&&(r<hi))
    angle=scale*real(zc)
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


range-y_jul {; Kerry Mitchell
        ; See the end of range-r_jul for Kerry Mitchell's explanation of
        ; his "range" formulas
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
  iter=1, angle=0, lo=real(p3), hi=imag(p3)
  :
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   scale real part into decomp angle
        ;
  iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
  IF ((r>lo)&&(r<hi))
    angle=scale*real(zc)
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


rangecount-r-1_jul {; Kerry Mitchell
        ; See the end of range-r_jul for Kerry Mitchell's explanation of
        ; his "range" formulas
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
  lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
  :
        ;
        ; iteration
        ;   if magnitude of iterate falls into range,
        ;     increment counter
        ;
  iter=iter+1, zc=sqr(zc)+c, r=|zc|
  IF ((r>lo)&&(r<hi))
    count=count+1
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
  IF ((r>maxr)||(iter==maxit))
    iter=-1
    angle=scale*count
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


rangecount-r-2_jul {; Kerry Mitchell
        ; See the end of range-r_jul for Kerry Mitchell's explanation of
        ; his "range" formulas
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
  lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
  :
        ;
        ; iteration
        ;   if magnitude of iterate falls into range,
        ;     increment counter
        ;
  iter=iter+1, zc=sqr(zc)+c, r=|zc|
  IF ((r>lo)&&(r<hi))
    count=count+1
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
  IF ((r>maxr)||(iter==maxit))
    iter=-1
    angle=scale*count
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


rangecount-r-3_jul {; Kerry Mitchell
        ; See the end of range-r_jul for Kerry Mitchell's explanation of
        ; his "range" formulas
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
  lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
  :
        ;
        ; iteration
        ;   if magnitude of iterate falls into range,
        ;     increment counter
        ;
  iter=iter+1, zc=sqr(zc)+c, r=|zc|
  IF ((r>lo)&&(r<hi))
    count=count+1
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
  IF ((r>maxr)||(iter==maxit))
    iter=-1
    angle=scale*count
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


rangecount-r_jul {; Kerry Mitchell
        ; See the end of range-r_jul for Kerry Mitchell's explanation of
        ; his "range" formulas
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
  iter=1, count=0, lo=real(p3), hi=imag(p3)
  :
        ;
        ; iteration
        ;   if magnitude of iterate falls into range,
        ;     increment counter
        ;
  iter=iter+1, zc=sqr(zc)+c, r=|zc|
  IF ((r>lo)&&(r<hi))
    count=count+1
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
  IF ((r>maxr)||(iter==maxit))
    iter=-1
    angle=scale*count
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


rangecount-x-1_jul {; Kerry Mitchell
        ; See the end of range-r_jul for Kerry Mitchell's explanation of
        ; his "range" formulas
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
  IF (hi<lo)
    temp=lo, lo=hi, hi=temp
  ENDIF
  :
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   increment counter
        ;
  iter=iter+1, zc=sqr(zc)+c, r=real(zc)
  IF ((r>lo)&&(r<hi))
    count=count+1
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    angle=scale*count
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


rangecount-x-2_jul {; Kerry Mitchell
        ; See the end of range-r_jul for Kerry Mitchell's explanation of
        ; his "range" formulas
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
  IF (hi<lo)
    temp=lo, lo=hi, hi=temp
  ENDIF
  :
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   increment counter
        ;
  iter=iter+1, zc=sqr(zc)+c, r=real(zc)
  IF ((r>lo)&&(r<hi))
    count=count+1
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    angle=scale*count
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


rangecount-x-3_jul {; Kerry Mitchell
        ; See the end of range-r_jul for Kerry Mitchell's explanation of
        ; his "range" formulas
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
  IF (hi<lo)
    temp=lo, lo=hi, hi=temp
  ENDIF
  :
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   increment counter
        ;
  iter=iter+1, zc=sqr(zc)+c, r=real(zc)
  IF ((r>lo)&&(r<hi))
    count=count+1
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    angle=scale*count
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


rangecount-x_jul {; Kerry Mitchell
        ; See the end of range-r_jul for Kerry Mitchell's explanation of
        ; his "range" formulas
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
  iter=1, count=0, lo=real(p3), hi=imag(p3)
  :
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   increment counter
        ;
  iter=iter+1, zc=sqr(zc)+c, r=real(zc)
  IF ((r>lo)&&(r<hi))
    count=count+1
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    angle=scale*count
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


rangecount-y-1_jul {; Kerry Mitchell
        ; See the end of range-r_jul for Kerry Mitchell's explanation of
        ; his "range" formulas
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
  IF (hi<lo)
    temp=lo, lo=hi, hi=temp
  ENDIF
  :
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   increment counter
        ;
  iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
  IF ((r>lo)&&(r<hi))
    count=count+1
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    angle=scale*count
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


rangecount-y-2_jul {; Kerry Mitchell
        ; See the end of range-r_jul for Kerry Mitchell's explanation of
        ; his "range" formulas
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
  IF (hi<lo)
    temp=lo, lo=hi, hi=temp
  ENDIF
  :
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   increment counter
        ;
  iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
  IF ((r>lo)&&(r<hi))
    count=count+1
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    angle=scale*count
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


rangecount-y-3_jul {; Kerry Mitchell
        ; See the end of range-r_jul for Kerry Mitchell's explanation of
        ; his "range" formulas
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
  IF (hi<lo)
    temp=lo, lo=hi, hi=temp
  ENDIF
  :
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   increment counter
        ;
  iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
  IF ((r>lo)&&(r<hi))
    count=count+1
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    angle=scale*count
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


rangecount-y_jul {; Kerry Mitchell
        ; See the end of range-r_jul for Kerry Mitchell's explanation of
        ; his "range" formulas
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
  iter=1, count=0, lo=real(p3), hi=imag(p3)
  :
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   increment counter
        ;
  iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
  IF ((r>lo)&&(r<hi))
    count=count+1
  ENDIF
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    angle=scale*count
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


Raphaelbrot (xyaxis) {; phi
  z = pixel:
  z = sqr(z) + ((sqrt 5 - 1)/2) 
  |z| <= 4
  ;SOURCE: drcha.frm
}


rat {
   ; Still more attempts at ht variants
  z = zp1 = pixel, zp2 = (0,0),huge=1.0e32:
  temp = z
  z = z*z - zp2
  zp2 = zp1
  zp1 = (temp/zp1)*p1
  (|zp1| <= 64) && (|z| <= huge) 
  ;SOURCE: noel.frm
}


Ratz { 
  z=pixel:
  z=(p1*fn1(z)^p2+pixel)/(p1*fn2(z)^(p2-1)+pixel)
  |z|<=10 
  ;SOURCE: test.frm
}


Ratz-fn {
  z = Pixel :  
  z = (z * z * z * fn1(z) * p1 + Pixel )/(z * z * fn2(z) * p1 + Pixel ) 
  | z | <= 10 
  ;SOURCE: ratz.frm
}


ratz1p12 {
  z=pixel: 
  z=p1*z/pixel+p2
  |z|<=10
  ;SOURCE: ratz.frm
}


ratz2j {
  z=pixel: 
  z=(z*z+p1)/(z+p1)
  |z|<=10
  ;SOURCE: ratz.frm
}


ratz3jp12 {
  z=pixel: 
  z=(z*z*z*p1+p2)/(z*z*p1+p2)
  |z|<=10
  ;SOURCE: ratz.frm
}


ratz3p12 {
  z=pixel: 
  z=(z*z*z*p1+pixel)/(z*z*p2+pixel)
  |z|<=10
  ;SOURCE: ratz.frm
}


ratz6j {
  z=pixel: 
  z=(z*z*z*z*z*z+p1)/(z*z*z*z*z+p1)
  ;SOURCE: ratz.frm
}


RCL_1 (XAXIS) {; Ron Lewen
               ; An interesting Biomorph inspired by Pickover's
               ; Computers, Pattern, Choas and Beauty.
               ; Use Floating Point
  z=pixel:
  z=pixel/z-z^2
  |real(z)| <= 100 || |imag(z)| <= 100
  ;SOURCE: fractint.frm
}


RCL_10 {; Ron Lewen, 76376,2567
  z=pixel:
  z=flip((z^2+pixel)/(pixel^2+z))
  |z| <= 4
  ;SOURCE: fractint.frm
}


RCL_11 {; Ron Lewen, 76376,2567
        ; A variation on the formula used to generate
        ; Figure 9.18 (p. 134) from Pickover's book.
        ; P1 sets the initial value for z.
        ; Try p1=.75, or p1=2, or just experiment!
  z=real(p1):
  z=z*pixel-pixel/sqr(z)
  z=flip(z)
  abs(z) < 8
  ;SOURCE: rclpar.frm
}


RCL_12 (XAXIS) {; Ron Lewen, 76376,2567
                ; Revised for Fractint v20 by G. Martin
  z=pixel:
  z=(z^2+3+pixel)/(z^2-3-pixel)
  |z| <= 10
  ;SOURCE: rclpar.frm
}


RCL_13 (XAXIS) {; Ron Lewen, 76376,2567
                ; Revised for Fractint v20 by G. Martin
  z=pixel:
  z=(z^2+2+pixel)/(z^2-2+pixel)
  |z| <= 100
  ;SOURCE: rclpar.frm
}


RCL_14 (XAXIS) {; Ron Lewen, 76376,2567
  z=pixel:
  z=z^pixel+pixel^z
  |z| <= 96
  ;SOURCE: rclpar.frm
}


RCL_15 (XAXIS) {; Ron Lewen, 76376,2567
                ; Adapted from Pickover's Biomorph Zoo Collection in
                ; Figure 8.7 (p. 102).
  z=pixel:
  z=z^2.71828 + pixel     
  |real(z)| <= 100 || |imag(z)| <= 100
  ;SOURCE: rclpar.frm
}


RCL_16 (XAXIS) {; Ron Lewen, 76376,2567
                ; Set fn1 to sqr to generate Figure 9.18 (p. 134)
                ; from Pickover's book.
                ; Set maxiter >= 1000 to see good detail in the spirals
                ; in the three large lakes.  Also set inside=0.
  z=0.5:
  z=z*pixel-pixel/fn1(z)
  abs(z) < 8
  ;SOURCE: rclpar.frm
}


RCL_2 (XAXIS) {; Ron Lewen
               ; A biomorph flower?  Simply a change in initial
               ; conditions from RCL_1 above
               ; Use Floating Point
  z=1/pixel:
  z=pixel/z-z^2
  |real(z)| <= 100 || |imag(z)| <= 100
  ;SOURCE: rcl.frm
}


RCL_3 (XAXIS) {; Ron Lewen
               ; A seemingly endless vertical pattern.  The most activity
               ; is around the center of the image.
               ; Use Floating Point
  z=pixel:
  z=pixel^z+z^pixel
  |real(z)| <= 100 || |imag(z)| <= 100
  ;SOURCE: rcl.frm
}


RCL_4_J {; Ron Lewen, 76376,2567
         ; A julia-style variation of the formula in Figure 8.9
         ; (p. 105) of Pickover's book.
  z=pixel:
  z=sin(z^2) + sin(z) + sin(p1)
  |z| <= 4
  ;SOURCE: rclpar.frm
}


RCL_4_M (XAXIS) {; Ron Lewen, 76376,2567
                 ; A Mandelbrot-style variation on Pickover's book,
                 ; Figure 8.9 (p. 105).
                 ; Use floating point
  z=pixel:
  z=sin(z^2) + sin(z) + sin(pixel)
  |z| <= 4
  ;SOURCE: rclpar.frm
}


RCL_5_J (ORIGIN) {; Ron Lewen, 76376,2567
                  ; A variation on the classical Julia set.
                  ; Use floating point
  z=pixel:
  z=sin(z^2+p1)
  |z| <= 4
  ;SOURCE: rclpar.frm
}


RCL_5_M (XAXIS) {; Ron Lewen, 76376,2567
                 ; A variation on the classical Mandelbrot set
                 ; formula.
                 ; Use floating point
  z=pixel:
  z=sin(z^2+pixel)
  |z| <= 4
  ;SOURCE: rclpar.frm
}


RCL_6_J (ORIGIN) {; Ron Lewen, 76376,2567
                  ; A variation on the classic Julia formula
                  ; use floating point
  z=pixel:
  z=sin(z)^2 + p1
  |z| <= 4
  ;SOURCE: rclpar.frm
}


RCL_6_M (XAXIS) {; Ron Lewen, 76376,2567
                 ; A variation on the classic Mandelbrot formula
                 ; Use floating point
  z=pixel:
  z=sin(z)^2 + pixel
  |z| <= 4
  ;SOURCE: rclpar.frm
}


RCL_7 (XAXIS) {; Ron Lewen, 76376,2567
               ; Inspired by the Spider
               ; fractal type included with Fractint
  z=c=pixel:
  z=z^2+pixel+c
  c=c^2+pixel+z
  |z| <= 4
  ;SOURCE: rclpar.frm
}


RCL_8_J (ORIGIN) {; Ron Lewen, 76376,2567
  z=pixel:
  z=z^2+flip(p1)
  |real(z)| <= 100 || |imag(z)| <= 100
  ;SOURCE: rclpar.frm
}


RCL_8_M {; Ron Lewen, 76376,2567
         ; Another variation on the classic Mandelbrot
         ; set.
  z=pixel:
  z=z^2+flip(pixel)
  |real(z)| <= 100 || |imag(z)| <= 100
  ;SOURCE: rclpar.frm
}


RCL_9 (XAXIS) {; Ron Lewen, 76376,2567
  z=pixel:
  z=(z^2+pixel)/(pixel^2+z)
  |z| <= 4
  ;SOURCE: rclpar.frm
}


RCL_Cosh (XAXIS) {; Ron Lewen, 76376,2567
                  ; Try corners=2.008874/-3.811126/-3.980167/3.779833/
                  ; -3.811126/3.779833 to see Figure 9.7 (P. 123) in 
                  ; Pickover's Computers, Pattern, Chaos and Beauty.
                  ; Figures 9.9 - 9.13 can be found by zooming.
                  ; Use floating point
  z=0:
  z=cosh(z) + pixel
  abs(z) < 40
  ;SOURCE: fractint.frm
}


RCL_Cosh_Flip (XAXIS) {; Ron Lewen, 76376,2567
                       ; A FLIPed version of RCL_Cosh.
                       ; An interesting repeating pattern with lots
                       ; of detail.
                       ; Use floating point
  z=0:
  z=flip(cosh(z) + pixel)
  abs(z) < 40
  ;SOURCE: rclpar.frm
}


RCL_Cosh_J {; Ron Lewen, 76376,2567
            ; A julia-style version of RCL_Cosh above.
            ; Lots of interesting detail to zoom in on.
            ; Use floating point
  z=pixel:
  z=cosh(z) + p1
  abs(z) < 40
  ;SOURCE: rclpar.frm
}


RCL_Cross1 {; Ron Lewen
            ; Try p1=(0,1), fn1=sin and fn2=sqr.  Set corners at
            ; -10/10/-7.5/7.5 to see a cross shape.  The larger 
            ; lakes at the center of the cross have good detail
            ; to zoom in on.
            ; Use floating point.
  z=pixel:
  z=p1*fn1(fn2(z+p1))
  |z| <= 4
  ;SOURCE: fractint.frm
}


RCL_Cross2 {; Ron Lewen
            ; Try p1=(0,1), fn1=sin and fn2=sqr.  Set corners at
            ; -10/10/-7.5/7.5 to see a deformed cross shape. 
            ; The larger lakes at the center of the cross have
            ; good detail to zoom in on.
            ; Try corner=-1.58172/.976279/-1.21088/-.756799 to see
            ; a deformed mandelbrot set.
            ; Use floating point.
  z=pixel:
  z=pixel*fn1(fn2(z+p1))
  |z| <= 4
  ;SOURCE: rcl.frm
}


RCL_Logistic_1 (XAXIS) {; Ron Lewen
                        ; Based on logistic equation  x -> c(x)(1-x) used
                        ; to model animal populations.  Try p1=(3,0.1) to
                        ; see a family of spiders out for a walk <G>!
  z=pixel:
  z=p1*z*(1-z)
  |z| <= 1
  ;SOURCE: rcl.frm
}


RCL_Mandel (XAXIS) {; Ron Lewen
   ; The traditional Mandelbrot formula with a different
   ; escape condition.  Try p1=(1,0).  This is basically the M-Set
   ; with more chaos outside.  p1=(0,0) yields a distorted M-set.
   ; Use floating point
  z=pixel:
  z=sqr(z) + pixel
  sin(z) <= p1
  ;SOURCE: rcl.frm
}


RCL_Pick1 (XAXIS) {; Ron Lewen
                   ; Try corners=2.008874/-3.811126/-3.980167/3.779833/
                   ; -3.811126/3.779833 to see Figure 9.7 (P. 123) in 
                   ; Pickover's Computers, Pattern, Chaos and Beauty.
                   ; Figures 9.9 - 9.13 can be found by zooming.
                   ; Use floating point
  z=0:
  z=cosh(z) + pixel
  abs(z) < 40
  ;SOURCE: rcl.frm
}


RCL_Pick10 (XAXIS) {; Ron Lewen
                    ;  Variation of Figure 9.18 (p.134) from Pickover's
                    ;  Book.  Generates an interesting Biomorph.
  z=pixel:
  z=z/pixel-pixel*sqr(z)
  abs(z) < 8
  ;SOURCE: rcl.frm
}


RCL_Pick11 (XAXIS) {; Ron Lewen
                    ; Formula from Figure 8.3 (p. 98) of Pickover's
                    ; book.  Generates a biomorph.  Figure 8.3 is a
                    ; zoom on one of the shapes at the corner of the
                    ; biomorph.
                    ;  Use Floating Point
  z=pixel:
  z=z^2+0.5
  |real(z)| <= 100 || |imag(z)| <= 100
  ;SOURCE: rcl.frm
}


RCL_Pick12 {; Ron Lewen
            ; Formula from Figure 12.7 (p. 202) of Pickover's
            ; book.
            ; Use Floating Point
  z=pixel:
  z=(2.71828^(p1)) * z * (1-z)
  abs(real(z)) < 10 || abs(imag(z)) < 10
  ;SOURCE: rcl.frm
}


RCL_Pick13 {; Ron Lewen
            ; Formula from Frontpiece for Appendix C 
            ; and Credits in Pickover's book.
            ; Set p1=(3,0) to generate the Frontpiece
            ; for Appendix C and to (2,0) for Credits
            ; Use Floating Point
  z=.001:
  z=z^p1+(1/pixel)^p1
  |z| <= 100
  ;SOURCE: fractint.frm
}


RCL_Pick2_J {; Ron Lewen
             ; A julia set based on the formula in Figure 8.9
             ; (p. 105) of Pickover's book.  Very similar to 
             ; the Frontpiece for Appendix A.
  z=pixel:
  z=sin(z) + z^2 + p1
  abs(real(z)) < 100 || abs(imag(z)) < 100
  ;SOURCE: rcl.frm
}


RCL_Pick2_M (XAXIS) {; Ron Lewen
   ; Generates a biomorph of a Pseudo-Mandelbrot set with
   ; extra tails.  Part of Pickover's Biomorph Zoo Collection
   ; Formula is adapted from Pickover's book, Figure 8.9
   ; (p. 105) but the result is different.  Set corners=
   ; -2.640801/1.359199/-1.5/1.5 to center image.  I use the
   ; color map that comes as default in WINFRACT. (I guess I
   ; like purple <G>).
   ; Use floating point
  z=pixel:
  z=sin(z) + z^2 + pixel
  |real(z)| < 100 || |imag(z)| < 100
  ;SOURCE: rcl.frm
}


RCL_Pick3 (XAXIS) {; Ron Lewen
   ; Generates Figure 9.18 (p. 134) from Pickover's book.
   ; Set maxiter >= 1000 to see good detail in the spirals
   ; in the three large lakes.  Also set inside=0.
  z=0.5:
  z=z*pixel-pixel/sqr(z)
  abs(z) < 8
  ;SOURCE: rcl.frm
}


RCL_Pick4 (XAXIS) {; Ron Lewen
   ; Variation of formula for Figure 9.18 (p. 134) from Pickover's
   ; book.
   ; Set inside=0 to see three large lakes around a blue "core".
  z=pixel:
  z=z*pixel-pixel/sqr(z)
  |z| <= 4
  ;SOURCE: rcl.frm
}


RCL_Pick5 (XAXIS) {; Ron Lewen
                   ; Adapted from Pickover's Biomorph Zoo Collection in
                   ; Figure 8.7 (p. 102).
  z=pixel:
  z=z^z + z^5 + pixel
  |real(z)| <= 100 || |imag(z)| <= 100
  ;SOURCE: rcl.frm
}


RCL_Pick6 (XAXIS) {; Ron Lewen
                   ; Adapted from Pickover's Biomorph Zoo Collection in
                   ; Figure 8.7 (p. 102).
  z=pixel:
  z=z^z + z^6 + pixel
  |real(z)| <= 100 || |imag(z)| <= 100
  ;SOURCE: rcl.frm
}


RCL_Pick7 (XAXIS) {; Ron Lewen
                   ; Adapted from Pickover's Biomorph Zoo Collection in
                   ; Figure 8.7 (p. 102).
  z=pixel:
  z=z^5 + pixel
  |real(z)| <= 100 || |imag(z)| <= 100
  ;SOURCE: rcl.frm
}


RCL_Pick8 (XAXIS) {; Ron Lewen
                   ; Adapted from Pickover's Biomorph Zoo Collection in
                   ; Figure 8.7 (p. 102).
  z=pixel:
  z=z^3 + pixel
  |real(z)| <= 100 || |imag(z)| <= 100
  ;SOURCE: rcl.frm
}


RCL_Pick9 (XAXIS) {; Ron Lewen
                   ; Adapted from Pickover's Biomorph Zoo Collection in
                   ; Figure 8.7 (p. 102).
  z=pixel:
  z=sin(z) + 2.71828^z + pixel
  |real(z)| <= 100 || |imag(z)| <= 100
  ;SOURCE: rcl.frm
}


RCL_Quaternion_J (ORIGIN) {; Ron Lewen
   ; From Pseudocode 10.5 (p. 169) of Pickover's book.
   ; Looks at Julia set for a0,a2 plane.  p1 selects
   ; slice in to look at.
   ; p2 correspondes to a point on the Quaternion
   ; Mandelbrot set (see below).
   ; Try (-.745,.113) as a starting point.
  a0=real(pixel), a2=imag(pixel), a1=real(p1), a3=imag(p1):
  savea0=a0^2-a1^2-a2^2-a3^2+p2
  savea2=2*a0*a2+p2
  a0=savea0
  a2=savea2
  (a0^2+a1^2+a2^2+a3^2) <= 2
  ;SOURCE: rcl.frm
}


RCL_Quaternion_M (XAXIS) {; Ron Lewen
   ; From Pseudocode 10.5 (p. 169) of Pickover's book.
   ; Looks at Mandelbrot set for a0,a2 plane.
   ; p1 selects slice in to look at.  p1 should
   ; not be (0,0) (this yields a blank screen!).
  a0=a2=pixel, a1=real(p1), a3=imag(p1):
  savea0=a0^2-a1^2-a2^2-a3^2+pixel
  savea2=2*a0*a2+pixel
  a0=savea0
  a2=savea2
  (a0^2+a1^2+a2^2+a3^2) <= 2
  ;SOURCE: rcl.frm
}


REB004A {; Ron Barnett, 1993
  z = pixel:
  z =p1*fn1(z) + p1*p1*fn2(p2*z) + pixel
  |z| <= 100
  ;SOURCE: fractint.frm
}


REB004AJulia {; Ron Barnett, 1995
  z = pixel:
  z =p1*fn1(z) + p1*p1*fn2(p2*z) + p3 
  |z| <= 100
  ;SOURCE: reb007.frm
}


REB004B {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  z = pixel + p1*(z/2 + z*z/6 + z*z*z/12) 
  |z| <= 100
  ;SOURCE: reb004.frm
}


REB004C {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  z = p2 + p1*(z/2 + z*z/6 + z*z*Z/12) 
  |z| <= 100
  ;SOURCE: reb004.frm
}


REB004D {; Ron Barnett, 1993
  z = pixel:
  z = pixel + fn1(2*z+1)/(2*z+p1) 
  |z| <= 100
  ;SOURCE: reb004.frm
}


REB004E {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  z = pixel + fn1(2*z+1)/(2*z+p1) 
  z = z + fn2(4*z+1)/(4*z+p2) 
  |z| <= 100
  ;SOURCE: reb004.frm
}


REB004F {; Ron Barnett, 1993
  z = pixel:
  z = p2 + fn1(2*z+1)/(2*z+p1) 
  |z| <= 100
  ;SOURCE: reb004.frm
}


REB004G {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  z = p2 + fn1(2*z+1)/(2*z+p1) 
  z = z + fn2(4*z+1)/(4*z+p1) 
  |z| <= 100
  ;SOURCE: reb004.frm
}


REB004H {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  z = pixel + fn1(3/z - z/4) 
  |z| <= 100
  ;SOURCE: reb004.frm
}


REB004I {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  z = p1 + fn1(3/z - z/4) 
  |z| <= 100
  ;SOURCE: reb004.frm
}


REB004J {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  x = flip(pixel + fn1(3/z - z/4))
  z = x*z + pixel 
  |z| <= 100
  ;SOURCE: reb004.frm
}


REB004K {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  x = flip(pixel + fn1(3/z - z/4))
  z = x*z + p1
  |z| <= 100
  ;SOURCE: fractint.frm
}


REB004L {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  x = flip(pixel + fn1(p1/z - z/(p2+1)))
  z = x*z + pixel
  |z| <= 100
  ;SOURCE: fractint.frm
}


REB004LJulia {; Ron Barnett, 1995
              ; floating point required
  z = pixel:
  x = flip(pixel + fn1(p1/z - z/(p2+1)))
  z = x*z + p3 
  |z| <= 100
  ;SOURCE: reb007.frm
}


REB004M {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  x = real(z), y = imag(z)
  const = x*x + y*y
  x1 = -fn1(const - 12*x)*x/(4*const)
  y1 = -fn2(const + 12*x)*y/(4*const)
  x2 = x1*x1 - y1*y1 + p1
  y2 = 2*x*y
  z = x2 + flip(y2)
  |z| <= 100
  ;SOURCE: fractint.frm
}


REB004N {; Ron Barnett [70153,1233]
  z = 0.5:
  x = pixel*(z - 1/z) + p1
  z = pixel*(x - 1/sqr(x) + p2)
  |z| <= 100
  ;SOURCE: fract003.frm
}


REB005A {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  x = real(z), y = imag(z)
  const = x*x + y*y
  x1 = -fn1(const - 12*x)*x/(4*const)
  y1 = -fn2(const + 12*y)*y/(4*const)
  x2 = x1*x1 - y1*y1 + p1
  y2 = 2*x1*y1
  z = x2 + flip(y2)
  |z| <= 100
  ;SOURCE: fractint.frm
}


REB005B {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  x = real(z), y = imag(z)
  const = x*x + y*y
  x1 = -fn1(const - x)*x/const
  y1 = -fn2(const + y)*y/const
  x2 = x1*x1 - y1*y1 + p1
  y2 = 2*x1*y1
  z = x2 + flip(y2) 
  |z| <= 100
  ;SOURCE: reb005.frm
}


REB005C {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  x = real(z), y = imag(z)
  const = x*x + y*y
  x1 = -fn1(const + p1*x)*x/const
  y1 = -fn2(const + y)*y/const
  x2 = x1*x1 - y1*y1 + p2
  y2 = 2*x1*y1
  z = x2 + flip(y2) 
  |z| <= 100
  ;SOURCE: reb005.frm
}


REB005D {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  x = real(z), y = imag(z)
  const = x*x + y*y
  x1 = -fn1((const + p1*x)*x/const)
  y1 = -fn2((const + y)*y/const)
  x2 = x1*x1 - y1*y1 + p2
  y2 = 2*x1*y1
  z = x2 + flip(y2) 
  |z| <= 100
  ;SOURCE: reb005.frm
}


REB005E {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  x = real(z), y = imag(z)
  const = x*x + y*y
  x1 = -fn1((const - x)*x/const)
  y1 = -fn2((const + y)*y/const)
  x2 = x1*x1 - y1*y1 + p1
  y2 = 2*x1*y1
  z = x2 + flip(y2)
  |z| <= 100
  ;SOURCE: fractint.frm
}


REB005F {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  x = real(z), y = imag(z)
  const = x*x + y*y
  x1 = -fn1((const - 12*x)*x/(4*const))
  y1 = -fn2((const + 12*y)*y/(4*const))
  x2 = x1*x1 - y1*y1 + p1
  y2 = 2*x1*y1
  z = x2 + flip(y2)
  |z| <= 100
  ;SOURCE: fractint.frm
}


REB005G {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  x = real(z), y = imag(z)
  const = x*x + y*y
  x1 = -fn1(const + p1*x)*y/const
  y1 = -fn2(const + y)*x/const
  x2 = x1*x1 - y1*y1 + p2
  y2 = 2*x1*y1
  z = x2 + flip(y2)
  |z| <= 100
  ;SOURCE: fractint.frm
}


REBRefInd1 {; Ron Barnett, 1993
            ; Use floating point
  z = pixel:
  z = (z*z-p1)/(z*z+p2)*fn1(z)*fn2(z) + pixel 
  |z| <= 100
  ;SOURCE: reb002.frm
}


REBRefInd1Julia {; Ron Barnett, 1995
                 ; Use floating point
  z = pixel:
  z = (z*z-p1)/(z*z+p2)*fn1(z)*fn2(z) + p3 
  |z| <= 100
  ;SOURCE: reb007.frm
}


REBRefInd2 {; Ron Barnett, 1993
            ; Use floating point
  z = pixel:
  z = (z*z-1)/(z*z+2)*fn1(z)*fn2(z) + p1
  |z| <= 100
  ;SOURCE: fractint.frm
}


REBRefInd3 {; Ron Barnett, 1993
            ; Use floating point
  z = pixel:
  z = (z*z-1)/(z*z+2)*fn1(z) + p1 
  |z| <= 100
  ;SOURCE: reb002.frm
}


REBRefInd4 {; Ron Barnett, 1993
            ; Use floating point
  z = pixel:
  z = flip(z)
  z = (z*z-p1)/(z*z+p2)*fn1(z)*fn2(z) + pixel
  |z| <= 100
  ;SOURCE: reb002.frm
}


REBRefInd4Julia {; Ron Barnett, 1995
                 ; Use floating point
  z = pixel:
  z = flip(z)
  z = (z*z-p1)/(z*z+p2)*fn1(z)*fn2(z) + p3 
  |z| <= 100
  ;SOURCE: reb007.frm
}


REBRefInd5 {; Ron Barnett, 1993
            ; Use floating point
  z = pixel:
  z = flip(z)
  z = (z*z-1)/(z*z+2)*fn1(z)*fn2(z) + p1 
  |z| <= 100
  ;SOURCE: reb002.frm
}


Recipfn {
  z=c=pixel:
  z=1/(fn1(z))*c 
  |z|<=100
  ;SOURCE: sample.frm
}


RecipIke {; Ron Barnett, 1993
  z = pixel:
  z = 1/(z*z*z + (p1-1)*z - p1) 
  |z| <= 4
  ;SOURCE: reb001.frm
}


Rectangular {; Jim Muth  imag(z),imag(c)
  z=flip(real(pixel))+p1
  c=flip(imag(pixel))+p2:
  z=sqr(z)+c
  |z| <= 16
  ;SOURCE: 98msg.frm
}


RectangularMiN {; Jim Muth
  b=p1, z=flip(real(pixel))+p2
  c=flip(imag(pixel))+p3:
  z=(-z)^(b)+c
  |z| <= 16
  ;SOURCE: 98msg.frm
}


RectangularMix {; Jim Muth
  z=flip(real(pixel))+real(p3)
  c=flip(imag(pixel))+imag(p3)
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2):
  z=(a*(z^b))+(d*(z^f))+c
  |z| <= 100
  ;SOURCE: 98msg.frm
}


RectangularN {; Jim Muth
  b=p1, z=flip(real(pixel))+p2
  c=flip(imag(pixel))+p3:
  z=z^(b)+c
  |z| <= 16
  ;SOURCE: 98msg.frm
}


RectangularN-1 {; formula Jim Muth
  z=flip(real(pixel))+p1
  c=flip(imag(pixel))+p2:
  z=z^p3+c
  |z| <= 16
  ;SOURCE: 0from_ml.frm
}


RectangularN-2 {; formula, Jim Muth
  z=flip(real(pixel))+p2
  c=flip(imag(pixel))+p3:
  z=z^p1+c
  |z| <= 16
  ;SOURCE: 0from_ml.frm
}


RectangularNa {; Jim Muth
  b=p1, z=flip(real(pixel))+p2
  c=flip(imag(pixel))+p3:
  z=z^(b)+c
  |z| <= 16
  ;SOURCE: 0from_ml.frm
}


RectangularPM {; Jim Muth
  z=flip(real(pixel))+real(p1)
  c=flip(imag(pixel))+imag(p1):
  z=p2*(.5*((-z)^p3+z^p3))+c
  |z| <= 250
  ;SOURCE: 98msg.frm
}


RectXLow {; Jim Muth
  z=flip(real(pixel))+real(p3)
  c=flip(imag(pixel))+imag(p3)
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2):
  z=(a*(z^b))+(d*((-z)^f))+c
  |z| <=2500
  ;SOURCE: 97msg.frm
}


red {; Kerry Mitchell 07sep98
  zc=0, c=pixel, bailout=1e3, iter=1, done=0
  cen1=p1, cen2=p2, radsqr1=|real(p3)|, radsqr2=|imag(p3)|
  count1=0, count2=0:
  iter=iter+1, zc=sqr(zc)+c
  temp1=|zc-cen1|
  IF (temp1<radsqr1)
    count1=count1+1
  ENDIF
  temp2=|zc-cen2|
  IF (temp2<radsqr2)
    count2=count2+1
  ENDIF
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    z=count1+flip(count2)
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


ReEntry (XAXIS) {; Try params=2/1000/0/0
  c=z=pixel: 
  z=z^Real(p1)+c 
  1/Imag(p1)<=|z^c|
                 ; "Shields up!  Hull temperature approaching critical!"
  ;SOURCE: fractfun.frm
}


Regula_falsi {; RSP 11NOV98
              ; p2 acts as a sort of relaxation constant
              ; p1 acts as a julia mapping
  IF (|p1|==0)
    z=pixel
  ELSE
    z=p1
  ENDIF
  x0=(1,1)
  c=x1=pixel
  :
  fx0=x0*x0*x0+3*x0*x0+2*x0+1
  fx1=x1*x1*x1+3*x1*x1+2*x1+1
  z=z-p2*(x1-x0)*fx1/(fx1-fx0)
  x2=z, x0=x1, x1=x2
  .0000001<|(x2)|
  ;SOURCE: 98msg.frm
}


REPEAT2 (XYAXIS) {; Mandelbrot tiler, Ray Girvan, May 1996
   ; use floating-point, and turn periodicity check off
   ; (press "g" and enter "periodicity=no")
   ; p1= location of motif centre in Mandelbrot
   ; p2 = magnification
   ; Try continuous colour palettes.  Some sample locations:
   ; p1 = (0.307221, 0.483906)  p2 = (4200, 0)
   ; p1 = (-0.74458557, 0.130943429)  p2 = (142000, 0)
   ; p1 = (-0.213479, 0.686147)  p2 = (2083, 0)
   ; p1 = (-1.3973763, 0.01034164)  p2 = (30000, 0)
  z=c=p1+(1/p2)*(tan(cos(real(pixel)))+flip(tan(cos(imag(pixel))))):
  z=z*z+c
  |z| <= 64
  ;SOURCE: girvmand.frm
}


rfr09u0 {
  z1=z=pixel, z2=sqr(z), out=4*(p2<=0)+p2*(p2>0):
  z1=z1*z1+p1+(-1.1,0.25)
  z2=z2*z2+p1+(-1.1,0.25)
  z=z1*z2
  |z|<out
  ;SOURCE: gal2.par
}


rfr0a41 {; Rolf Freericks
  IF (whitesq)
    z= pixel
  ELSE
    z=fn1(pixel)
  ENDIF:
  IF (whitesq)
    z = z*z*z*p1+z/p1
    PHC_bailout = z<=p3
  ELSE
    z=fn2(sin(z)-cos(z))-p2*z
    PHC_bailout = |z|<p3
  ENDIF
  PHC_bailout
  ;SOURCE: gal2.par
}


rfr0a51 {; Rolf Freericks
  z=pixel:
  z=(z*z-p1)/p2*z
  |z|<=4
  ;SOURCE: gal2.par
}


rfr0a53 {; Rolf Freericks
  z=zh=pixel:
  zh2=zh*zh
  zh=zh2*zh-zh
  zl=|z|
  zl=zl*zl
  IF (|zh|>zl)
    z=z*zh+p1
  ELSE
    z=z*z+p1
  ENDIF
  |z|>=p2
  ;SOURCE: gal2.par
}


rfr0a71 {; Rolf Freericks, rfreericks@compuserve.com
         ; requires floating point
         ; try integer for "nice erros"
         ; z=f(z)/f´(z) with f(z)=z^4-z^2-c
  z=pixel:
  z2=z*z
  z3=z*z2
  z4=z*z3
  z=(z4-z2-p1)/(4*z3-2*z)
  |z|>=p2
  ;SOURCE: gal2.par
}


rfr0a72 {; Rolf Freericks
         ; requires floating point
         ; try integer for "nice erros"
  z=pixel:
  z2=z*z
  z3=z*z2
  z4=z*z3
  z=(z4-z2-p1)/(4*z3-2*z)
  |z|>=p2
  ;SOURCE: gal2.par
}


rfr0a81 {; Rolf Freericks
  z=pixel, fourp2=4*p2:
  z2=z*z
  z3=z*z2
  z4=z*z3
  z=z-(p2*z4+4*z2-p1)/(fourp2*z3-8*z)
  |z|<=p3
  ;SOURCE: gal2.par
}


rfr0a84 {; Rolf Freericks
  z=sqr(pixel), fourp2=4*p2:
  z2=z*z
  z3=z*z2
  z4=z*z3
  z=fn1(z)-(fourp2*z3-3*z2+8*z)/(p2*z4-z3+4*z2-p1)
  |z|<=p3
  ;SOURCE: gal2.par
}


rfr0a91 {; Rolf Freericks
  z=pixel:
  z=z*sqr(z)-p1
  z<=p2
  ;SOURCE: gal2.par
}


rfr0a92 {; Rolf Freericks
  z=pixel:
  z=z*sqr(z)-p1
  abs(z)<=p2
  ;SOURCE: gal2.par
}


rfr0a93 {; Rolf Freericks
  z=pixel:
  z=z-((z*z-p1)/(2*z))*sin(2*z)-p2
  z<=p3
  ;SOURCE: gal2.par
}


rfr0aa1 {; Rolf Freericks
  z=pixel:
  z=z*z-p1
  z=fn1(z)+p2
  |z|<=p3
  ;SOURCE: gal2.par
}


rfr0ab1 {; Rolf Freericks
  zh=z=pixel:
  z=z*z-fn1(zh)
  z=abs(z)+p2*zh
  zh=fn2(zh)
  |z|<=p3
  ;SOURCE: gal2.par
}


rfr0ab2 {; Rolf Freericks
  zh=z=pixel, zh=fn1(zh+p1):
  z=z*z-zh
  zh=fn2(zh)-p2
  |z|<=p3
  ;SOURCE: gal2.par
}


rfr0ag2 {; by Jon Horner - 100112,1700 - FRAC'Cetera
         ; Complex-form of SPIDERJUL
         ; float=yes
         ; modified by Rolf Freericks 
         ; the original is cited at the end
  z = pixel, c = p1
  IF (whitesq)
    h=c
  ELSE
    h=(c-1/c)*p3
  ENDIF
  :
  z = z * z + c-h
  c = c * p2 + z
  |z| <= 4
    ; the original
    ;  z = pixel, c = p1:
    ;  z = z * z + c
    ;  c = c * p2 + z
    ;  |z| <= 4
  ;SOURCE: gal2.par
}


rfr0ag4 {; by Jon Horner - 100112,1700 - FRAC'Cetera
         ; Complex-form of SPIDERJUL
         ; float=yes
         ; modified by Rolf Freericks 
         ; the original is cited at the end
  z = pixel
  IF (whitesq)
    c=h=(1,0.1)
  ELSE
    c=p1
    h=(c-1/c)*p3
  ENDIF
  :
  z=z*z+c-h
  IF (whitesq)
    c=z
  ELSE
    c = c * p2 + z
  ENDIF
  |z| <= 4
    ; the original
    ;  z = pixel, c = p1:
    ;  z = z * z + c
    ;  c = c * p2 + z
    ;  |z| <= 4
  ;SOURCE: gal2.par
}


rfr0ah1 {; Rolf Freericks 
  z = pixel
  c=p1
  :
  h=fn1(c)-p2
  z=(z-c)*(z-h)*z-c*h
  c = h*c-z*h
  |z| <= 4
  ;SOURCE: gal2.par
}


rfr0ak1 {; Rolf Freericks 
  c = pixel
  h=z=p1
  :
  h=fn1(h)
  z=1-z*z*c-h
  |fn2(z)| >p2
  ;SOURCE: gal2.par
}


Richard1 (XYAXIS) {; Jm Collard-Richard
  z = pixel:
  sq=z*z, z=(sq*sin(sq)+sq)+pixel
  |z|<=50
  ;SOURCE: fractint.frm
}


Richard10 (XYAXIS) {; Jm Collard-Richard
  z=pixel:
  z=1/sin(1/(z*z))
  |z|<=50
  ;SOURCE: fractint.frm
}


Richard11 (XYAXIS) {; Jm Collard-Richard
  z=pixel:
  z=1/sinh(1/(z*z))
  |z|<=50
  ;SOURCE: fractint.frm
}


Richard2 (XYAXIS) {; Jm Collard-Richard
  z = pixel:
  z=1/(sin(z*z+pixel*pixel))
  |z|<=50
  ;SOURCE: fractint.frm
}


Richard3 (XAXIS) {; Jm Collard-Richard
  z = pixel:
  sh=sinh(z), z=(1/(sh*sh))+pixel
  |z|<=50
  ;SOURCE: fractint.frm
}


Richard4 (XAXIS) {; Jm Collard-Richard
  z = pixel:
  z2=z*z, z=(1/(z2*cos(z2)+z2))+pixel
  |z|<=50
  ;SOURCE: fractint.frm
}


Richard5 (XAXIS) {; Jm Collard-Richard
  z = pixel:
  z=sin(z*sinh(z))+pixel
  |z|<=50
  ;SOURCE: fractint.frm
}


Richard6 (XYAXIS) {; Jm Collard-Richard
  z = pixel:
  z=sin(sinh(z))+pixel
  |z|<=50
  ;SOURCE: fractint.frm
}


Richard7 (XAXIS) {; Jm Collard-Richard
  z=pixel:
  z=log(z)*pixel
  |z|<=50
  ;SOURCE: fractint.frm
}


Richard8 (XYAXIS) {; Jm Collard-Richard
                   ; This was used for the "Fractal Creations" cover
  z=pixel, sinp = sin(pixel):
  z=sin(z)+sinp
  |z|<=50
  ;SOURCE: fractint.frm
}


Richard9 (XAXIS) {; Jm Collard-Richard
  z=pixel:
  sqrz=z*z, z=sqrz + 1/sqrz + pixel
  |z|<=4
  ;SOURCE: fractint.frm
}


ring_jul {; Kerry MItchell 07sep98
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
  IF ((r>=r1)&&(r<=r2))
    done=1
    t=(r-r1)*fac
    z=cos(t)+flip(sin(t))
  ENDIF
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    z=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


ring_man {; Kerry MItchell 07sep98
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
  IF ((r>=r1)&&(r<=r2))
    done=1
    t=(r-r1)*fac
    z=cos(t)+flip(sin(t))
  ENDIF
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    z=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


ring_man-alt {; modified Kerry MItchell formula
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
  IF ((r>=r1)&&(r<=r2))
    done=1
    t=(r-r1)*fac
    IF (trunc(iter/2) == (iter/2))
      t=t+pi
    ENDIF
    z=cos(t)+flip(sin(t))
  ENDIF
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    z=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


ringc_jul {; Kerry MItchell 07sep98
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
  IF ((r>=r1)&&(r<=r2))
    done=1
    t=(r-r1)*fac
    z=cos(t)+flip(sin(t))
  ENDIF
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    z=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


ringc_jul-alt {; Kerry MItchell 07sep98
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
  IF ((r>=r1)&&(r<=r2))
    done=1
    t=(r-r1)*fac
    IF (trunc(iter/2)==(iter/2)) 
      t=t+pi
    ENDIF
    z=cos(t)+flip(sin(t))
  ENDIF
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    z=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


ringc_man {; Kerry MItchell 07sep98
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
  IF ((r>=r1)&&(r<=r2))
    done=1
    t=(r-r1)*fac
    z=cos(t)+flip(sin(t))
  ENDIF
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    z=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


ringmaster {; Giuseppe Zito
  z = pixel
  d0 = -0.161309
  d3 = -0.727477
  d8 = 0.280948
  : 
  x = real(z), y = imag(z)
  s0 = y
  newx = s0 
  s0 =d0
  s0 = s0 *x
  s0 = s0 +d3
  s0 = s0 +x
  s0 = s0 -x
  s0 = s0 *d8
  s0 = s0 *y
  s0 = s0 -x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


ripples {; Giuseppe Zito
  z = pixel
  c0 = 0.617724
  c1 = -0.491855
  c11 = 0.013087
  d0 = 0.514808
  d1 = -0.277046
  d2 = 0.909756
  d7 = -0.868067
  : 
  x = real(z), y = imag(z)
  s0 =c0
  s0 = s0 *c1
  s0 = s0 +y
  s0 = s0 *x
  s0 = s0 -y
  s1 = x
  s0 = s0 +s1
  s0 = s0 +y
  s1 = y
  s1 = s1 -c11
  s0 = s0 *s1
  s0 = s0 /x
  newx = s0 
  s0 =d0
  s0 = s0 *d1
  s0 = s0 /d2
  s1 = x
  s1 = s1 *y
  s1 = s1 -y
  s0 = s0 *s1
  s0 = s0 -d7
  s0 = s0 -x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


Robert1 (XAXIS) {  
  c = z = pixel:
  z = ((z+c)+(z*z+c*c)+(z*z*z+c*c*c)) + c 
  |z| <= 4
  ;SOURCE: robert.frm
}


Rollo_1 {
   ; These formulae, except Rollo_3, are PHC variations on Noel Giffins
   ; formulae. The formulae used can be found in Noel.frm
  z = pixel, zp = p1
  a = (whitesq == 1), b = (whitesq == 0):
  temp = z
  r = 1 - fn1(z) - zp
  q = z^.5 - zp
  zp = temp
  z = (q * a) + (r * b)
  |zp| <= 4
  ;SOURCE: rollo.frm
}


Rollo_2 {
   ; These formulae, except Rollo_3, are PHC variations on Noel Giffins
   ; formulae. The formulae used can be found in Noel.frm
  z = pixel, zp = p1
  a = (whitesq == 1), b = (whitesq == 0):
  temp = z
  r = z*z - zp
  q = z^3 + zp
  zp = temp
  z = (q * a) + (r * b)
  |zp| <= 4
  ;SOURCE: rollo.frm
}


Rollo_3 {
   ; These formulae, except Rollo_3, are PHC variations on Noel Giffins
   ; formulae. The formulae used can be found in Noel.frm
  z = pixel, c1 = p1, c2 = p2
  a = (whitesq == 1), b = (whitesq == 0):
  r = c1 * fn1(z)
  q = fn2(z*z) + c2
  z = (q * a) + (r * b)
  |z| <= 4
  ;SOURCE: rollo.frm
}


Rollo_4 {
   ; These formulae, except Rollo_3, are PHC variations on Noel Giffins
   ; formulae. The formulae used can be found in Noel.frm
  z = pixel, zp = (0,0), huge = 1.0e32
  a = (whitesq == 1), b = (whitesq == 0):
  temp = z
  r = fn1(z*z) - zp
  q = fn2(z*z) + zp
  zp = p1/conj(temp)
  z = (q * a) + (r * b)
  (|zp| <= 64) && (|z| <= huge)
  ;SOURCE: rollo.frm
}


Rollo_5 {
   ; These formulae, except Rollo_3, are PHC variations on Noel Giffins
   ; formulae. The formulae used can be found in Noel.frm
  z = pixel, zp = p1
  a = (whitesq == 1), b = (whitesq == 0):
  temp = z
  r =  - fn1(z) - zp
  q =  fn2(z) - zp
  zp = temp
  z = (q * a) + (r * b)
  |zp| <= 4 
  ;SOURCE: rollo.frm
}


Rollo_6 {
   ; These formulae, except Rollo_3, are PHC variations on Noel Giffins
   ; formulae. The formulae used can be found in Noel.frm
  z = pixel, zp = p1
  a = (whitesq == 1), b = (whitesq == 0):
  temp = z 
  r = fn1(z)^5 + zp 
  q = fn2(z)^5 + zp 
  zp = temp
  z = (q * a) + (r * b)
  |zp| <= 4 
  ;SOURCE: rollo.frm
}


Rollo_7 {
   ; These formulae, except Rollo_3, are PHC variations on Noel Giffins
   ; formulae. The formulae used can be found in Noel.frm
  z = pixel, zp = p2
  a = (whitesq == 1), b = (whitesq == 0):
  temp = z 
  r = fn1(z)^e + zp 
  q = fn2(z)^pi + zp 
  zp = temp
  z = (q * a) + (r * b)
  |zp| <= 4 
  ;SOURCE: rollo.frm
}


root_jul {; Kerry Mitchell 11feb98
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e30)
        ; imag(p2) = unused
        ; use decomp=something (only 2 colors are used)
  zc=pixel, c=p1, iter=1, maxr=real(p2):
  iter=iter+1, z2=sqr(zc), znew=z2+c
  IF ((|znew|>maxr)||(iter==maxit))
    w=sqrt(z2), r1=|zc-w|, r2=|zc+w|
    z=2*(r1<r2)-1
    iter=-1
  ELSE
    zc=znew
  ENDIF
  iter>0
        ;
        ; colors Julia set by whether or not previous iterate
        ;   is the principal root of the current z^2.
        ;
;*******Kerry Mitchell's explanation of his "root" formulas********
;           narrative copyright Kerry Mitchell 11feb98
;
; Applies to these formulas:
;   root_jul (above)
;   root_man 
;   rootcount_jul 
;   rootcount_man 
;
; Root
;
; Complex numbers, of which the real numbers are a subset, all have
; two square roots.  That is, for a given complex number a, there
; are two numbers, b1 and b2, such that b1*b1 (or b2*b2) = a.  It
; so happens that b2 = -b1, since -1 * -1 = 1.  One of these numbers
; (typically the one returned by the function sqrt(a)) is termed
; the principal square root of a.  For example, if a=9, then the
; square roots are 3 and -3.  3 is the principal square root.
;
; For the Mandelbrot and Julia sets, this concept is implemented by
; expanding the standard iteration loop.  Instead of:
;
; z_new = z_old * z_old + c, use
;
; w = z_old * z_old
; z_new = w + c.
;
; The question is then, is z_old the principal root of w?  This can
; be determined by assuming that sqrt(w) returns the principal root.
; Then, z_old is compared with sqrt(w) and -sqrt(w), to see which
; root of w z_old was.
;
; For the root (_man and _jul) formulas, this is performed on the
; last iteration.  The yes/no answer is converted to a binary coloring
; of the image.  The rootcount formulas make this determination for
; every iteration, incrementing a counter each time z_old was the
; principal root.  At the end, the counter is normalized by the total
; number of iterations, then scaled into an angle for coloring using
; the decomposition method.
;
;**********************************************************************
  ;SOURCE: 98msg.frm
}


root_man {; Kerry Mitchell 11feb98
          ; See the end of formula root_jul for Kerry Mitchell's
          ; explanation of his "root" formulas
        ; real(p1) = bailout (try 1e30)
        ; imag(p1) = unused
        ; use decomp=something (only 2 colors are used)
  zc=0, c=pixel, iter=1, maxr=real(p1):
  iter=iter+1, z2=sqr(zc), znew=z2+c
  IF ((|znew|>maxr)||(iter==maxit))
    w=sqrt(z2), r1=|zc-w|, r2=|zc+w|
    z=2*(r1<r2)-1
    iter=-1
  ELSE
    zc=znew
  ENDIF
  iter>0
        ;
        ; colors Mandelbrot set by whether or not previous
        ;   iterate is the principal root of the current z^2.
        ;
  ;SOURCE: 98msg.frm
}


rootcount_jul {; Kerry Mitchell 11feb98
               ; See the end of formula root_jul for Kerry Mitchell's
               ; explanation of his "root" formulas
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e30)
        ; imag(p2) = unused
        ; real(p3) = inner coloring speed (0 for outside only)
        ; imag(p3) = outer coloring speed (0 for inside only)
        ; use decomp=256
  zc=pixel, c=p1, iter=1, maxr=real(p2), count=0
  inspeed=real(p3)*pi*255/128
  outspeed=imag(p3)*pi*255/128:
  iter=iter+1, z2=sqr(zc), w=sqrt(z2)
  r1=|zc-w|, r2=|zc+w|, zc=z2+c
  IF (r1<r2)
    count=count+1
  ENDIF
  IF (iter==maxit)
    angle=inspeed*count/(iter-1)
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  IF (|zc|>maxr)
    angle=outspeed*count/(iter-1)
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
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
  ;SOURCE: 98msg.frm
}


rootcount_man {; Kerry Mitchell 11feb98
               ; See the end of formula root_jul for Kerry Mitchell's
               ; explanation of his "root" formulas
        ; real(p1) = bailout (try 1e30)
        ; imag(p1) = unused
        ; real(p2) = inner coloring speed (0 for outside only)
        ; imag(p2) = outer coloring speed (0 for inside only)
        ; use decomp=256
  zc=0, c=pixel, iter=1, maxr=real(p1), count=0
  inspeed=real(p2)*pi*255/128
  outspeed=imag(p2)*pi*255/128:
  iter=iter+1, z2=sqr(zc), w=sqrt(z2)
  r1=|zc-w|, r2=|zc+w|, zc=z2+c
  IF (r1<r2)
    count=count+1
  ENDIF
  IF (iter==maxit)
    angle=inspeed*count/(iter-1)
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  IF (|zc|>maxr)
    angle=outspeed*count/(iter-1)
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
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
  ;SOURCE: 98msg.frm
}


roote (XAXIS) {; from the Zexpi with square root of e 
  z = Pixel:
  z = z ^ 1.648721270697 + pixel
  |z| <= p1
  ;SOURCE: mikey.frm
}


roote3 (XAXIS) {; from the Zexpi with cube root of e 
  z = Pixel:
  z = z ^ 1.395612425086 + pixel
  |z| <= p1
  ;SOURCE: mikey.frm
}


Rootura {
  z = pixel, pix = pixel + p1:
  z = (1/sqrt(z)) + pix
  z = fn1(z) * z - pixel 
  |z| < 4
  ;SOURCE: altura.frm
}


rosa2 {; Giuseppe Zito
  z = pixel
  c1 = -0.143683
  c7 = 0.41926
  c9 = -0.297657
  c10 = -0.188083
  d1 = 0.956228
  : 
  x = real(z), y = imag(z)
  s0 = x
  s0 = s0 +c1
  s0 = s0 -c7
  s0 = s0 *c9
  s0 = s0 *c10
  s0 = s0 *y
  s0 = s0 -y
  newx = s0 
  s0 = x
  s0 = s0 -d1
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


Rota4 {; Agustin Martin Barbero   II-1998
       ; p1 deforming factor (expands black areas? Usually leave it 0)
       ; p2 = Bailout - 4      if u use imag(p3)=1, p2 should be high
       ;       but not too much...
       ; real(p3) scale factor for deformation waves. Keep it high if 
       ;   you want to see the big picture like an z^n + c formula
       ; imag(p3) exponent of z^n + c (no need to explain this)
  z=pixel
  c=z:
  z= cabs(z)*exp(flip(cabs(z - p1)))/real(p3) +z^imag(p3) + c
  |z|<=4+p2
  ;SOURCE: 98msg.frm
}


royal1 (XYAXIS) {
   ; Coupling conjugate functions with others produce some nice variants.
  z = pixel,  zp = (0,0):
  temp = z
  z = z*z  - cos(zp)
  zp = conj(temp) 
  |zp| <= 4 
  ;SOURCE: noel.frm
}


royal2 (XYAXIS) {
   ; Yet another Conjugate variation
  z = pixel, zp2 = zp1 = (0,0):
  temp = z
  z = z*z  - zp2
  zp2 = cos(zp1)
  zp1 = conj(temp) 
  |zp1| <= 4
  ;SOURCE: noel.frm
}


rseal {; Giuseppe Zito
  z = pixel
  c0 = 0.349121
  d0 = -0.09401
  d4 = -0.770229
  d6 = -0.386469
  d8 = -0.07426
  d9 = 0.977766
  d12 = -0.197748
  d14 = -0.941167
  : 
  x = real(z), y = imag(z)
  s0 =c0
  s0 = s0 -y
  newx = s0 
  s0 =d0
  s1 = x
  s0 = s0 *s1
  s0 = s0 *d4
  s1 = y
  s1 = s1 *d6
  s1 = s1 *y
  s1 = s1 -d8
  s1 = s1 *d9
  s0 = s0 -s1
  s0 = s0 *d12
  s0 = s0 *y
  s0 = s0 *d14
  s0 = s0 +x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


RSP_10060 {; rsp 28jul98
           ; Newt_Carlson typo and other mistakes
  c=pixel,  w=z=iter=bailout=0,  ca=.382683432365, cb=.923879532511
  d0=p2+p3
  IF (|P1|==0)
    d1=ca*p2
    d2=cb*p2
  ELSE
    d1=p1*p2
    d2=p1*p2
  ENDIF
  g=p2, h=p3
  dsq= g*(h*(2*(1-g)-h) + g*(2-d2*g) ) + h*h 
  :
  w2=w*w, fnc=w2*w2-w-c, der=4*w*w2-1, k=1*fnc/(der-12*w2*fnc/der/2)
  w=w-k
  IF (((abs(cabs(w)-p2))<p3) && (iter>0))
    bailout=1
    wr=real(w)
    awr=abs(wr)
    wi=imag(w), awi=abs(wi)
    IF (awr>=awi)
      dist=(awr-d2)*(awr-d2)+(awi-d1)*(awi-d1), adjust=1
    ELSE
      dist=(awr-d1)*(awr-d1)+(awi-d2)*(awi-d2), adjust=0
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
    bailout=1, z=252
  ENDIF
  iter=iter+1, z=z-iter
  bailout==0
  ;SOURCE: 98msg.frm
}


RSP_10061 {; rsp 28jul98
           ; Newt_Carlson typo and other mistakes
  c=pixel, w=z=iter=bailout=0, ca=real(pixel)
  cb=imag(pixel), d0=p2+p3
  IF (|P1|==0)
    d1=ca*p2
    d2=cb*p2
  ELSE
    d1=p1*p2
    d2=p1*p2
  ENDIF
  g=p2, h=p3, dsq= g*(h*(2*(1-g)-h) + g*(2-d2*g) ) + h*h
  :
  w2=w*w, fnc=w2*w2-w-c, der=4*w*w2-1, k=1*fnc/(der-12*w2*fnc/der/2)
  w=w-k
  IF (((abs(cabs(w)-p2))<p3) && (iter>0))
    bailout=1
    wr=real(w)
    awr=abs(wr)
    wi=imag(w), awi=abs(wi)
    IF (awr>=awi)
      dist=(awr-d2)*(awr-d2)+(awi-d1)*(awi-d1), adjust=1
    ELSE
      dist=(awr-d1)*(awr-d1)+(awi-d2)*(awi-d2), adjust=0
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
    bailout=1, z=252
  ENDIF
  iter=iter+1, z=z-iter
  bailout==0
  ;SOURCE: 98msg.frm
}


RSP_10062 {; rsp 28jul98
           ; Newt_Carlson typo and other mistakes
  c=w=pixel
  z=iter=bailout=0
  ca=real(pixel)
  cb=imag(pixel)
  d0=p2+p3
  IF (|P1|==0)
    d1=ca*p2
    d2=cb*p2
  ELSE
    d1=p1*p2
    d2=p1*p2
  ENDIF
  g=p2
  h=p3
  dsq = g*(h*(2*(1-g)-h) + g*(2-cb*g) ) + h*h
  :
  w2=w*w, pder=(1-w2/2+w2*w2/12-w2*w2*w2/720), fnc=w2*w2-w-sin(w)
  der=4*w*w2-1-pder
  k=1*fnc/(der-12*w2*fnc/der/2), w=w-k
  IF (((abs(cabs(w)-p2))<p3) && (iter>0))
    bailout=1
    wr=real(w)
    awr=abs(wr)
    wi=imag(w)
    awi=abs(wi)
    IF (awr>=awi)
      dist=(awr-d2)*(awr-d2)+(awi-d1)*(awi-d1)
      adjust=1
    ELSE
      dist=(awr-d1)*(awr-d1)+(awi-d2)*(awi-d2), adjust=0
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
    bailout=1, z=252
  ENDIF
  iter=iter+1, z=z-iter
  bailout==0
  ;SOURCE: 98msg.frm
}


RSP_10063 {; rsp 28jul98
           ; Newt_Carlson typo and other mistakes
  c=w=pixel, z=iter=bailout=0, ca=real(pixel/|pixel|)
  cb=imag(pixel/|pixel|)
  d0=p2+p3
  IF (|P1|==0)
    d1=ca*p2
    d2=cb*p2
  ELSE
    d1=p1*p2
    d2=p1*p2
  ENDIF
  g=p2
  h=p3
  dsq=(g*g-2*g*h)*h*d2/g/g-(3*g*g+2*h)*(g-2*d2)*h/g+6*g*h*(g-2*h)
  :
  w2=w*w, pder=(1-w2/2+w2*w2/12-w2*w2*w2/720), fnc=w2*w2-w-sin(w)
  der=4*w*w2-1-pder, k=1*fnc/(der-12*w2*fnc/der/2), w=w-k
  IF (((abs(cabs(w)-p2))<p3) && (iter>0))
    bailout=1
    wr=real(w), awr=abs(wr)
    wi=imag(w), awi=abs(wi)
    IF (awr>=awi)
      dist=(awr-d2)*(awr-d2)+(awi-d1)*(awi-d1) 
      adjust=1
    ELSE
      dist=(awr-d1)*(awr-d1)+(awi-d2)*(awi-d2)
      adjust=0
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
    bailout=1, z=252
  ENDIF
  iter=iter+1, z=z-iter
  bailout==0
  ;SOURCE: 98msg.frm
}


rsp_1010 {
  z=a=pixel 
  c=a*(a*a-1)/(a*a*a*a-3*a*a+1):
  z=z*z+c/a
  |z|<=64
  ;SOURCE: 98msg.frm
}


rsp_1011 {
  z=pixel, a=(pixel*(|p1|<=0)+p1) 
  c=a*(a*a-1)/(a*a*a*a-3*a*a+1):
  z=z*z+c/a
  |z|<=64
  ;SOURCE: 98msg.frm
}


rsp_1011m {; RSP 24MAY98
  bail=(64*(imag(p2)<=0)+imag(p2))
  z=(pixel*(|p1|<=0)+(2.5*pixel))
  a=(pixel*(|p1|<=0)+p1):
  b=sqr(a)
  c=(b-1)/(b*(b-z)+1)
  z=z*z+c
  (real(z)*imag(z))<=bail
  ;SOURCE: 98msg.frm
}


rsp_1012 {; *RSP 24MAY98
  bail=(64*(|p2|<=0)+(p2))
  z=(pixel*(|p1|<=0)+(2.5*pixel))
  a=(pixel*(|p1|<=0)+p1)
  b=sqr(a): 
  c=(b-1)/(b*(b-z)+1)
  y=real(z*c)
  x=flip(imag(c/z+1))
  z=x+y+c
  (real(z)*imag(z))>=bail
  ;SOURCE: 98msg.frm
}


rsp_1170 {; *RSP 11NOV98
          ; hex_iter1_zero
  IF (|p1|==0)
    c=pixel
  ELSE
    c=p1
  ENDIF
  z=pixel
  IF (|p2|==0)
    r=1
  ELSE
    r=p2
  ENDIF
  :
  z2=z*z
  z3=z*z2
  z=z-r*(c-z3*z3)/(z2)
  .00001 <= |z|
  ;SOURCE: 98msg.frm
}


rsp_1171 {; *RSP 11NOV98
          ; hex_iter1_escape
  IF (|p1|==0)
    c=pixel
  ELSE
    c=p1
  ENDIF
  z=pixel
  IF (|p2|==0)
    r=1
  ELSE
    r=p2
  ENDIF
  :
  z2=z*z
  z3=z*z2
  z=-c*r*(c-z3*z3)/(z2)
  |z|<=64
  ;SOURCE: 98msg.frm
}


rsp_3080 {; *RSP 29MAY98
  z=pixel
  n=p1: 
  z=z^n*sin(1/z)
  ;SOURCE: 98msg.frm
}


rsp_3090 {; *RSP 29MAY98
  z=pixel
  n=p1: 
  z=z^n*sin(n/z)
  ;SOURCE: 98msg.frm
}


rsp_3091 {; *RSP 29MAY98
  z=pixel
  bail=(64*(|p2|<=0)+p2)
  n=(1*(|p1|<=0)+p1): 
  z=z^n*sin(n/z)
  |z|<=bail
  ;SOURCE: 98msg.frm
}


rsp_3170 {; RSP 23MAY98
          ; P1 IS NORMALLY 1
  z=c=pixel:
  f=2.5*z*z*z-1.5*z
  g=7.5*z*z-1.5, h=15*z
  z=z-p1*f/(g-(h*(c-z)^2)/(2*g))
 .001<=|f|
  ;SOURCE: 98msg.frm
}


rsp_4060 {; RSP 27JUN98
  z=(1,1), c=100*pixel: 
  zz=sqr(z)
  f=(4*zz*z-3*z)+c, g=12*zz-3
  z=z-p1*f/g 
 .0001<|f|
  ;SOURCE: 98msg.frm
}


rsp_5010 {; RSP 23MAY98
          ; P1 IS ZOOM OUT CANT BE ZERO
          ; P2 IS BAILOUT VALUE
  z=c=p1*pixel: 
  f=1/tanh(z)
  g=log(sinh(z))
  z=z-f/g
  |f|<=p2
  ;SOURCE: 98msg.frm
}


rsp_5020 {;*RSP 27MAY98
          ; A different Runge adaptation
  xo=yo=z=(pixel)
  h=(pixel/|pixel|)
  bail=(4*(|p2|<=0)+p2)
  h2=(h*(|p1|<=0)+h/p1):
  xo=real(z)
  yo=imag(z)
  k1=fn1(h*(xo+flip(yo)))
  k2=fn2(h*(xo+h2+flip(yo+k1/2)))
  k3=fn3(h*(xo+h2+flip(yo+k2/2)))
  k4=fn4(h*(xo+h+flip(yo+k3)))
  z=flip(yo)+(k1+2*k2+2*k3+k4)/6
  |z|>=bail
  ;SOURCE: 98msg.frm
}


rsp_5060 {; rsp 27jun98
  r=(1*(|p1|<=0)+p1)
  c=3.1415927
  z=pixel:
  f=cos(z/2)
  z=z-c*(f-r/(2*sqr(f)))
  .001<|f|
  ;SOURCE: 98msg.frm
}


rsp_6010 {; rsp 14AUG98
  z=sqrt(-pixel), n=1, c=pixel:
  n=n+1, z=(z-c)*(z+c)*(z+1)
  |z|<=(256/n)
  ;SOURCE: 98msg.frm
}


rsp_6011 {; rsp 15AUG98
  z=-1/(2*pixel), c=pixel:
  f=z*z+c, oz=z, z=1/z, z=1-z
  z=1/(1-z), z=(z-1)/z
  z=z/(z-1), z=z*z*c+z
  fz=2*c*z+1
  real(f*fz/z)<=1000
  ;SOURCE: 98msg.frm
}


rsp_6040 {; rsp 16aug98
  z=c=p2*pixel:
  f=sin(z*z+z+1)
  g=(2*z+1)*cos(z*z+z+1)
  z=z-p1*f/g
  .00001<=|f|
  ;SOURCE: 98msg.frm
}


rsp_6050 {; rsp 16aug98
  x=pixel, c=real(pixel), d=imag(pixel), y=p1:
  g=x*x*x/(x-1), z=(g)+c+(d*y), y=x, x=z
  |z|<=4
  ;SOURCE: 98msg.frm
}


rsp_7060 (xaxis) {; 12050
  z=c=pixel
  c2=fn1(c):
  z=c*z+c2-.5*z*z
  |z|<=100+p2
  ;SOURCE: 98msg.frm
}


rsp_7140 {; rsp 28jul98
  Z=C=PIXEL, A=P1:
  Z=SQRT(Z*SQR(Z-A))-C
  |Z|<P2+64
  ;SOURCE: 98msg.frm
}


rsp_7150 {; rsp 16aug98
          ; z=(.537285,.537285)
  z=.015625
  c=pixel:
  z=z^5+z^2+c
  |z|<=164
  ;SOURCE: 98msg.frm
}


rsp_7160 {; rsp 15jul98
  c=pixel, n=1, p=3.1415927
  z=pixel:
  f=(1+cos( (2*z-1)*p/2/n))
  g=-2*sin((2*z-1)*p/2/n)
  z=z-f/g
  n=n+1
  .0001<=|f|
  ;SOURCE: 98msg.frm
}


rsp_a301 {; rsp 3/99
  r=p1, c=z=pixel:
  oz=z, z2=z*z
  z=r*(c/(z2*z2*z)+1/z2)
  |z/oz|>p2
  ;SOURCE: 99msg.frm
}


rsp_a304 {; 3/99     R Parracho
  c=z=pixel:
  oz=z, z=z*z+c
  test=|z|/|oz|
  |test|<1 || |test|>2
  ;SOURCE: 99msg.frm
}


rsp_a305 {; rsp 3/99
  c=z=pixel:
  oz=z
  z=z*z+c
  test=c*|z|/|oz|
  |test|<p1 || |test|>p2
  ;SOURCE: 99msg.frm
}


rsp_a309 {; rsp 3/99
  c=z=pixel:
  oz=z
  z=z*z+c
  test=fn1(z)/|oz|
  |test|<p1 || |test|>p2
  ;SOURCE: 99msg.frm
}


rsp_may002{
  z=10*pixel
  a=z, an=1, n=i=0
  :
  i=i+.5, n=a-i 
  an=an*n/(z^n), oz=z
  z=1+z+an
  |z-oz|>.00001
  ;SOURCE: 99msg.frm
}


rsp_may005 {
  z=w=c=pixel, n=p1
  :
  w=w*w+c, z=(w-floor(w))*n
  |w|<p2  
  ;SOURCE: 99msg.frm
}


rsp_may007 {
  z=w=pixel, c=pixel, n=p1
  :
  z=z*z+c, w=(w-floor(w))*n
  |z|<p2  || |w|>n
  ;SOURCE: 99msg.frm
}


rsp_may008 {
  z=w=pixel, c=pixel, n=p1
  :
  z=z*z+c, w=(z/n-floor(z/n))*n
  |z|<p2  || |w|>n
  ;SOURCE: 99msg.frm
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
  ;SOURCE: 99msg.frm
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
  ;SOURCE: 99msg.frm
}


rspf_4032 {; RSP 06JUN98
  z=4*pixel: 
  zz=sqr(z)
  f=4*zz*z-3*z
  g=12*zz-3
  h=24*z
  z=z-P1*f/(g-f*f/2/h)
  (1+real(z*h/g)) <=(0+P2)
  ;SOURCE: 98msg.frm
}


rspf_4050 {; RSP 06JUN98
  c=50*pixel, z=(1,1): 
  zz=sqr(z)
  f=zz*zz*z-zz*z+c
  g=5*zz*zz-3*zz
  h=20*zz*z-6*z
  z=z-p1*f/(g-f*f/2/h)
  .0001<=|f|
  ;SOURCE: 98msg.frm
}


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
  ;SOURCE: 98msg.frm
}


RSQ-TIT-MJ {; P1 is the Mandelbrot/Julia coordinates (real & imaginary)
     ; P2(real [decimal]) is the % remaining in Mandelbrot Space (0.13 = 13%)
  J=P1
  M=P2 ; (Only the REAL NEED BE USED... quite different if IMAGINARY GIVEN
  K=1-M ; % Julia given from Mandelbrot
  z = Pixel:
  z = (M*(sqr(z)+pixel))+(K*(sqr(z)+J)) 
  |z| <= 4
    ;Equation entries of 1st image: p1 real=-0.05; p1 imaginary=0.65
    ;                               p2 real= 0.1 ; p2 imaginary=0 (always)
  ;SOURCE: rsqtitmj.frm
}


Runge01 {; RSPF010 22MAY98
  z=c=pixel 
  h=real(p1)       ; step size start with whole + /- numbers
  b=imag(p1):      ; bailout value
  k1=fn1(z)+c 
  xb=real(z)+h/2
  yb=flip(imag(z))+h*k1/2
  k2=fn1(xb+yb)
  yb=flip(imag(z))+h*k2/2
  k3=fn1(xb+yb)
  x=imag(z)+h
  yb=flip(imag(z))+h*k3
  k4=fn1(x+yb)
  z=c+flip(imag(z))+h*(k1+2*k2+2*k3+k4)/6
  (real(z)*imag(z))<=b
  ;SOURCE: 98msg.frm
}


rxa0 {
  z=pixel, c=real(fn1(z+p1))^p2, d=(fn3(z)/p3)*fn4(tan(z-1)-p2):
  z=((fn2(d+c)^p3)-tan(z))+whitesq
  |z|<4
  ;SOURCE: ad99_1.frm
}


rxa1 {
  z=pixel, c=(real(fn1(z+p1))^p2):
  z=fn3(fn2((real(z+1)/sin(1/1-z)))*fn4(c-p3)/p1)+whitesq
  |z|<4
  ;SOURCE: ad99_1.frm
}


rxa10 {
  z=pixel, t=z+real(p1):
  z=fn2(real(fn3(z)^p1)/fn4(tan(t/(z-(fn1(1/(t)))))))+whitesq
  |z|<4
  ;SOURCE: ad99_1.frm
}


rxa2 {
  z=pixel, c=(fn1(z+p1)+whitesq)-1^p2:
  z=(fn2(fn3((z+c)))^p3)+c
  |(z)|<4
  ;SOURCE: ad99_1.frm
}


rxa4 {
  z=pixel:
  t=(fn2(z)^p3)+whitesq
  z=((fn1(t-1))+pixel)/(t*p1)
  |z|<4
  ;SOURCE: ad99_1.frm
}


rxa5 {
  z=pixel, b=fn3(z*p1), c=(fn1(z+1)/p2):
  z=fn2((b/p3)*fn4(c)+z)+whitesq
  |z|<4
  ;SOURCE: ad99_1.frm
}


rxa7 {
  z=pixel, s=fn1(z+p1), v=fn2(1/s)^2:
  z=(fn3(z*v)/p3)*fn4(tan((s)))+whitesq
  |z|<4
  ;SOURCE: ad99_1.frm
}


rxa91 {
  z=pixel:
  z=fn2((fn3(z))*fn4(tan((z+fn1(1)))))+whitesq
  |z|<4
  ;SOURCE: ad99_1.frm
}

