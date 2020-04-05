

IfElsefn1fn2fn3 (XAXIS_NOPARM) {; Jon Osuch
                                ; Try p1=0, p2=4, fn1,2,3=whatever
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


IfThenElsefn1fn2 (XAXIS_NOPARM) {; Jon Osuch
                                 ; Try p1=0, p2=4, fn1=sqr, fn2=sin
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z = p1
  x = |z|:
  IF (x>1)
    z = fn1(z)+pixel
  ELSE
    z=fn2(z)+pixel
  ENDIF
  x = |z|
  x <= p2
  ;SOURCE: select.frm
}


IfThenfn1fn2 (XAXIS_NOPARM) {; Jon Osuch
                             ; Try p1=0, p2=4, fn1=sin, fn2=cos
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z = p1
  x = |z|:
  IF (x>1)
    z = fn1(z)
  ENDIF
  z = fn2(z)  + pixel
  x = |z|
  x <= p2
  ;SOURCE: select.frm
}


InvMandel (XAXIS) {; Mark Peterson
                   ; try p1 = 1, p2 = 4, fn1 = sqr
                   ; note p2 should not be zero
  c = z = p1 / pixel:
  z = fn1(z) + c
  |z| <= p2
  ;SOURCE: improved.frm
}


InvMandel (XAXIS) {; Mark Peterson
                   ; try p1 = 1, fn1 = sqr
  c = z = p1 / pixel: 
  z = fn1(z) + c
  |z| <= (p2 + 4)
  ;SOURCE: improv2.frm
}


IslandOfChaos (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=sin(z)/cos(z)+pixel
  x=x+1 
  |z|<=4
  ;SOURCE: form1.frm
}


IslandOfChaos (XAXIS_NOPARM) {; Jon Osuch
   ; Try p1=0, p2=4, fn1=sqr, fn2=sin, fn3=cosxx
   ; Edited for Fractint v. 20 by George Martin, 10/98
  z = p1
  x = 1:
  z=fn1(z) + pixel
  z=fn2(z) / fn3(z) + pixel
  x = x+1
  |z| <= p2
  ;SOURCE: select.frm
}


IslandOfChaosC (XAXIS_NOPARM) {; Jonathan Osuch [73277,1432]
   ; Generalized by Tobey J. E. Reed [76437,375]
   ; Try p1=0, p2=4, fn1=sqr, fn2=sin, fn3=cos
   ; Note:  use floating point
   ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=fn1(z)+pixel
  ELSE
    z=fn2(z)/fn3(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
  ;SOURCE: fract002.frm
}


IslandOfChaosC (XAXIS_NOPARM) {
   ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSE
    z=sin(z)/cos(z)+pixel
  ENDIF
  x=x+1 
  |z|<=4
  ;SOURCE: form1.frm
}

