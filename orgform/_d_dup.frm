

Daisy (ORIGIN) {; Mark Peterson
   ; try p1 = (0.11031, -0.67037) and p2 = 4
   ; note p2 should not be zero
  z = pixel:
  z = z*z + p1
  |z| <= p2
  ;SOURCE: improved.frm
}


DeepSpaceProbe (XAXIS_NOPARM) {; Jon Osuch
   ; Try p1=0, p2=4, fn1=sqr, fn2=sin, fn3=cosxx
   ; Edited for Fractint v. 20 by George Martin 10/98
  z = p1
  x = 1:
  z=fn1(z) + pixel
  z=fn2(z)+pixel
  z=fn3(z) + pixel
  x = x+1
  |z| <= p2
  ;SOURCE: select.frm
}


DeepSpaceProbe (XAXIS_NOPARM) { 
  z=p1, x=1:
  z=sqr(z)+pixel
  z=sin(z)+pixel
  z=cos(z)+pixel
  x=x+1
  |z|<=4 
  ;SOURCE: form1.frm
}


DeepSpaceProbeC (XAXIS_NOPARM) {
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
  ;SOURCE: form1.frm
}


DeepSpaceProbeC (XAXIS_NOPARM) {; Jon Osuch
   ; Try p1=10, p2=20, fn1=sqr, fn2=sin, fn3=cosxx
   ; Note:  use floating point
   ; Edited for Fractint v. 20 by George Martin, 10/98
  z = p1
  x = 1:
  IF (x<10)
    z=fn1(z)+pixel
  ELSEIF (x<20)
    z=fn2(z)+pixel
  ELSE
    z=fn3(z)+pixel
  ENDIF
  x = x+1
  |z| <= 4
  ;SOURCE: select.frm
}


DeepSpaceProbeC (XAXIS_NOPARM) {; Jonathan Osuch [73277,1432]
   ; Generalized by Tobey J. E. Reed [76437,375]
   ; Try p1=0, p2=4, fn1=sin, fn2=exp, fn3=cosxx
   ; Note:  use floating point
   ; Edited for Fractint v. 20 by George Martin, 10/98
  z = p1, x = 1:
  IF (x<10)
    z=fn1(z)+pixel
  ELSEIF (x<20)
    z=fn2(z)+pixel
  ELSE
    z=fn3(z)+pixel
  ENDIF
  x = x+1
  |z| <= p2
  ;SOURCE: fract001.frm
}


DeltaLog (XAXIS) {; Mark Peterson
   ; try p1 = 1, p2 = 4, fn1 = log, fn2 = sqr
   ; note p2 should not be zero
  z = pixel, c = fn1(pixel):
  z = fn2(z) + c/p1
  |z| <= p2
  ;SOURCE: improved.frm
}


DeltaLog (XAXIS) {; Mark Peterson
   ; try p1 = 1, fn1 = log, fn2 = sqr
  z = pixel, c = fn1(pixel):
  z = fn2(z) + c/p1
  |z| <= (p2 + 4)
  ;SOURCE: improv2.frm
}


DpSpaceProbeTwoC (XAXIS_NOPARM) {; Jon Osuch
   ; Try p1=0, p2=4, fn1=sqr, fn2=exp, fn3=cosxx
   ; Note:  use floating point
   ; Edited for Fractint v. 20 by George Martin, 10/98
  z = p1
  x = 1:
  IF (x<10)
    z=fn1(z)+pixel
  ELSEIF (x<20)
    z=fn2(z)+pixel
  ELSE
    z=fn3(z)+pixel
  ENDIF
  x = x+1
  |z| <= p2
  ;SOURCE: select.frm
}


Dragon (ORIGIN) {; Mark Peterson
   ; try p1 = (-0.74543, 0.2), p2 = 4, fn1 = sqr
   ; note p2 should not be zero
  z = pixel:
  z = fn1(z) + p1
  |z| <= p2
  ;SOURCE: improved.frm
}


Dragon (ORIGIN) {; Mark Peterson
   ; try p1 = (-0.74543, 0.2), fn1 = sqr
  z = pixel:
  z = fn1(z) + p1
  |z| <= 4
  ;SOURCE: improv2.frm
}

