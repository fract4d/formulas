

BirdOfPrey (XAXIS_NOPARM) {; Jon Osuch
                           ; Try p1=0, p2=4, fn1=sqr, fn2=cosxx
      ; Edited for Fractint v. 20 by George Martin, 10/98
  z = p1
  x = 1:
  z=fn1(z)+pixel
  z=fn2(z)+pixel
  x = x+1
  |z| <=p2
  ;SOURCE: select.frm
}


BirdOfPrey (XAXIS_NOPARM) {
      ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=cos(z)+pixel
  x=x+1
  |z|<=4
  ;SOURCE: form1.frm
}


BirdOfPreyC (XAXIS_NOPARM) {; Jonathan Osuch [73277,1432]
           ; Generalized by Tobey J. E. Reed [76437,375]
           ; Try p1=0, p2=4, fn1=sqr, fn2=cos
           ; Note:  use floating point
           ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=fn1(z)+pixel
  ELSE
    z=fn2(z)+pixel
  ENDIF
  x=x+1
  |z|<=p2
  ;SOURCE: fract001.frm
}


BirdOfPreyC (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSE
    z=cos(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
  ;SOURCE: form1.frm
}


bubbles {; Formulas by Bob Carr and Paul Carlson 
         ; combined and modified by Linda Allison
  z = c = pixel:
  z2 = c * (1 - z * z)/(1 + z * z)
  z = fn1(z2) + fn2((z2 ^ 2)/p1)  
  |z| <= 100
  ;SOURCE: internet.frm
}

