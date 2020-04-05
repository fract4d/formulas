

CGhalley (XYAXIS) {; Chris Green
                   ; try p1 = 1, p2 = 0.0001
                   ; note--use floating point
  z   = (1,1):
  z5  = z*z*z*z*z
  z6  = z*z5
  z7  = z*z6
  z8  = z7 - z - pixel
  z   = z-p1*(z8/ ((7.0*z6-1)-(42.0*z5)*z8/(14.0*z6-2)))
  p2 <= |z8|
  ;SOURCE: improved.frm
}


Cubic (XYAXIS) {; Lee Skinner
                ; try p1 = 2, p2 = 3
  p = pixel, t2 = p*p, t3 = 3*p
  a = (t2 + 1)/t3, b = p1*a*a*a + (t2 - 2)/t3
  aa3 = a*a*p2, z = 0 - a :
  z = z*z*z - aa3*z + b
  |z| <=4
  ;SOURCE: improv2.frm
}


Cubic (XYAXIS) {; Lee Skinner
                ; try p1 = 2, p2 = 3
  t1 = pixel
  t2 = t1*t1 + 1
  t3 = 3*t1
  a  = t2/t3
  b  = p1*a*a*a + (t2 - 2)/t3
  d  = p2*a*a
  z  = 0 - a:
  z  = z*z*z - d*z + b
  |z| < p1 + 3
  ;SOURCE: improved.frm
}


Cubic {;This group of fractals were created in an attempt to
       ;find other tests.  The only one that seemed to produce
       ;anything of interest was:  |z - pixel| < some_value.
       ;(c) 1993 by:
       ;
       ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
       ;
       ; Michael G. Wareman
       ; P.O. Box 1856
       ; Olds, Alberta, Canada
       ; T0M 1P0
  z = c = pixel:
  z = 0.2 * z ^ 3 + z ^ 2 + c
  |z - pixel| < 4
  ;SOURCE: frame.frm
}

