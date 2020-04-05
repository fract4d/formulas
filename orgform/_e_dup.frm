

Element(xyaxis) {; Michael Theroux [71673,2767]
   ; fix and generalization by Ron Barnett [70153,1233] 
   ;phi lingam
   ;try p1 = 2.236067977 for the golden mean
  z = pixel:
  z = z*z*z*z + ((p1 + 1)/2)
  |z| <= 4
  ;SOURCE: fract001.frm
}


Ent {; Scott Taylor
     ; try p1 = (.5, .75), p1 = 0, p2 = 4, fn1 = exp
  z    = pixel
  y    = fn1(z)+p1
  base = log(p1):
  z    = y * log(z)/base
  |z| <= p2
  ;SOURCE: improved.frm
}


Ent {; Scott Taylor
     ; try p1 = (0.5,0.75), fn1 = exp
     ; Zoom in on the swirls around the middle.  There's a
     ; symmetrical area surrounded by an asymmetric area.
  z = pixel, y = fn1(z), base = log(p1):
  z = y * log(z)/base
  |z| <= (p2 + 4)
  ;SOURCE: improv2.frm
}


Ent2 {; Scott Taylor
      ; try p1 = 2, fn1 = cos, fn2 = cosh
      ; try potential = 255/355
  z    = pixel
  y    = fn1(z)
  base = log(p1):
  z    = fn2( y * log(z) / base )
  |z| <= p1
  ;SOURCE: improved.frm
}


Ent2 {; Scott Taylor
      ; try p1 = (2,1), fn1 = cos, fn2 = cosh
      ; try potential = 255/355
  z = pixel, y = fn1(z), base = log(p1):
  z = fn2( y * log(z) / base )
  |z| <= (p2 + 4)
  ;SOURCE: improv2.frm
}


EvilEyeC (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=sin(z)+pixel
  ELSE
    z=cos(z)+pixel
  ENDIF
  x=|z|
  x<=4
  ;SOURCE: form1.frm
}


EvilEyeC (XAXIS_NOPARM) {; Jon Osuch
                         ; Try p1=1, p2=4, fn1=sin, fn2=cosxx
                         ; Note:  use floating point
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z  =  p1
  x  = |z|:
  IF (x>1)
    z=fn1(z)+pixel
  ELSE
    z=fn2(z)+pixel
  ENDIF
  x  = |z|
  x <= p2
  ;SOURCE: select.frm
}


exp2 (XAXIS) {
   ; Init both terms to pixel ala bfly1 etc...
  z=zp=pixel:
  temp = z
  z = 1-exp(-z) - zp
  zp = temp
  |zp| <= 4 
  ;SOURCE: noel.frm
}


Eyeball (XAXIS_NOPARM) {; Jon Osuch
                        ; Try p1=0, p2=4, fn1=sqr, fn2=sinh
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z = p1
  x = 1:
  z=fn1(z) + pixel
  z=fn2(z) + pixel
  x = x+1
  |z| <= p2
  ;SOURCE: select.frm
}

