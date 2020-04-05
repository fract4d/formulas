

test (xyaxis) {; =phi 
  z = ((sqrt 5 + 1)/2)/pixel:
  z =  z*z + pixel*((sqrt 5 + 1)/2)
  |z| <= 4
  ;SOURCE: drcha.frm
}


test { 
  z = 0, c=pixel: 
  z = sqr(z)+c 
  c=c+p1/z 
  |z| <= 4 
  ;SOURCE: quad.frm
}


test {; Michael Theroux [71673,2767]
      ; fix and generalization by Ron Barnett [70153,1233]
      ; =phi
      ; try p1 = 2.236067977 for the golden mean
  z = ((p1 + 1)/2)/pixel:
  z =  z*z + pixel*((p1 + 1)/2)
  |z| <= 4
  ;SOURCE: fract003.frm
}


test1 {; Michael Theroux [71673,2767]
       ; fix and generalization by Ron Barnett [70153,1233]
       ; =phi
       ; try p1 = 2.236067977 for the golden mean
  c = pixel
  z = ((p1 + 1)/2):
  z =  z*z + pixel*((p1 + 1)/2) + c
  |z| <= 4
  ;SOURCE: fract003.frm
}


Test1 {; Rolf Freericks
  z1=z=pixel, z2=sqr(z), out=4*(p2<=0)+p2*(p2>0):
  z1=z1*z1+p1+(-1.1,0.25)
  z2=z2*z2+p1+(-1.1,0.25)
  z=z1*z2
  |z|<out
  ;SOURCE: 97msg.frm
}


test2 {; Michael Theroux [71673,2767]
       ; fix and generalization by Ron Barnett [70153,1233]
       ; =phi
       ; try p1 = 2.236067977 for the golden mean
  z = ((p1 + 1)/2)/pixel:
  z =  z*z*z + pixel*((p1 + 1)/2)
  |z| <= 4
  ;SOURCE: fract003.frm
}


test3 (xyaxis) {; =phi 
  z = ((sqrt 5 + 1)/2)/pixel:
  z =  z*z + pixel*((sqrt 5 + 1)/2)/((sqrt 5 - 1)/2)
  |z| <= 4
  ;SOURCE: drcha.frm
}


TestSinMandC (XAXIS_NOPARM) {; Jon Osuch
                             ; Try: p1=4, fn1=sin, fn2=sqr    
                             ; Rewritten for Fractint v. 20 by
                             ; George Martin, 10/98
  z  = p1
  x  = |z|:
  IF (x > 1)
    z = fn1(z)
  ENDIF
  z  = fn2(z)+pixel
  x  = |z|
  x <= p1
  ;SOURCE: select.frm
}


Tetrate (XAXIS) {; duplicate of built-in type.
      ; p1=initial perturbation of z(0), p2 changes bailout from 4.
  z = pixel + p1, b = real(p2) + 4:
  z = pixel ^ z
  |z| <= b
  ;SOURCE: ebbert.frm
}


Tetrate {; Chuck Ebbert - from BUILTN.FRM
         ; requires float=yes -JH
         ; p1 = initial perturbation of z(0).
         ; real(p2) changes bailout (default = 4)
         ; Edited for Fractint v. 20 by George Martin, 10/98
  z = pixel + p1, c = pixel                       ; c added JH
  t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = c ^ z                                       ; c subs for pixel JH
  |z| <= t
  ;SOURCE: parser.frm
}


Tim's_Error {; Chuck Ebbert - from BUILTN.FRM    added 12 Jan 1994
   ; set co-ords as TLx=-2.5,TLy=2.0,BRx=3.0,BRy=-2.0 -JH
   ; same as built-in "tim's_error" type
 ; p1 = initial perturbation of z, real(p2) changes bailout (default = 4)
  t = (4 * (real(p2)<=0) + real(p2) * (0<p2) )
  z = pixel + p1, c = z ^ (z-1):
  z = fn1(z)
   ; must be careful to leave imag part of z unchanged   13 Jan 1994
  z = real(z) * real(c) - imag(z) * imag(c) + flip(imag(z))
  z = real(z) + flip(real(z) * imag(c) - imag(z) * real(c) ) + pixel
  |z| <= t
  ;SOURCE: parser.frm
}


TjerDragon (ORIGIN) {; Mark Peterson
  z = Pixel:
  z = tan(z) + (-0.74543, 0.2)
  |z| <= 4
  ;SOURCE: june22.frm
}


Tobey3 (XAXIS) { 
  z=Pixel, c=Pixel-sqr(z): 
  c=Pixel+c/z, z=c-z*pixel 
  |z|<4 
  ;SOURCE: newform.frm
}


TurtleC (XAXIS_NOPARM) {; Jon Osuch
                        ; Try p1=0, p2=4, fn1=sqr, fn2=sqr
                        ; Note:  use floating point
                        ; Edited for fractint v. 20 by George Martin
  z = p1:
  x = real(z)
  IF (x<0)
    z = fn1(z)+pixel
  ELSE
    z = fn2(z)-pixel
  ENDIF
  |z| <= p2
  ;SOURCE: select.frm
}

