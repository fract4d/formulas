

V-Euler {
  x=real(pixel)
  y=imag(pixel)
  h=real(p1)/2:
  u=x-x*y
  w=-y+x*y
  c=x+h*(u+u)
  d=y+h*(w+w)
  x=c
  y=d
  z=x+flip(y)
  |z|<=p2
  ;SOURCE: davfav1.frm
}


V-Heun {
  x=real(pixel)
  y=imag(pixel)
  p=real(p1)
  h=imag(p1)/2:
  u=x-x*y
  w=-y+x*y
  a=x+p*u
  b=y+p*w
  c=x+h*(u+(a-a*b))
  d=y+h*(w+(-b+a*b))
  x=c
  y=d
  z=x+flip(y)
  |z|<=p2
  ;SOURCE: davfav1.frm
}


vase {; Giuseppe Zito
  z = pixel
  d0=real(p1)
  IF (real(p1)==0)
    d0 = -0.425511
  ENDIF
  d4 = 0.580719
  d5 = -0.749466
  d9 = 0.794345
  : 
  x = real(z), y = imag(z)
  s0 = y
  newx = s0 
  s0 =d0
  s0 = s0 -x
  s0 = s0 -y
  s0 = s0 *x
  s0 = s0 +d4
  s0 = s0 -d5
  s0 = s0 *d9
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


VB-XY-YZrotation {; Jim Muth, thanks to Benno
   ; real(p1)=rotation angle in degrees, imag(p1)=bailout
   ; p2=parallel planes, p3=rotation point and parallel planes
  a=real(p1), b=sqr(imag(p1))
  z=sin(a*.01745329251994)*real(pixel)+p2
  c=cos(a*.01745329251994)*real(pixel)+flip(imag(pixel))+p3:
  z=sqr(z)+c
  |z| <= b
  ;SOURCE: 97msg.frm
}


Vector1J-w {; 4D Julia set parallel to the the W plane
            ; p1 Julia param, p2 chooses slice, p3 bailout.
  z=p2, w=pixel, c=p1:
  z2=sqr(z)
  w2=sqr(w)
  z=z2+w2+c
  w=c*z2*w2+1
  |z2+w2|<=p3
  ;SOURCE: frac_ml.frm
}


Vector1J-z {; 4D Julia set parallel to the the Z plane
            ; p1 Julia param, p2 chooses slice, p3 bailout.
  z=pixel, w=p2, c=p1:
  z2=sqr(z)
  w2=sqr(w)
  z=z2+w2+c
  w=c*z2*w2+1
  |z2+w2|<=p3
  ;SOURCE: frac_ml.frm
}


Vector1J-zw {; 4D Julia set parallel to another plane.
             ; p1 Julia param, p2 chooses slice, p3 bailout.
  z=pixel+p2, w=pixel-p2, c=p1:
  z2=sqr(z)
  w2=sqr(w)
  z=z2+w2+c
  w=c*z2*w2+1
  |z2+w2|<=p3
  ;SOURCE: frac_ml.frm
}


Vector1M {; 2D Mandelbrot set from vector valued function.
          ; p3 bailout.
  z=0, w=0, c=pixel:
  z2=sqr(z)
  w2=sqr(w)
  z=z2+w2+c
  w=c*z2*w2+1
  |z2+w2|<=p3
  ;SOURCE: 98msg.frm
}


Vector2J-w {; 4D Julia set parallel to the the W plane
            ; p1 Julia param, p2 chooses slice, p3 bailout.
  z=p2, w=pixel, c=p1:
  z2=sqr(z)
  w2=sqr(w)
  z=z2+2*w*z+w2+c
  w=z*Z2+w*w2+w2*z2+c
  |z2+w2|<=p3
  ;SOURCE: frac_ml.frm
}


Vector2J-z {; 4D Julia set parallel to the the Z plane
            ; p1 Julia param, p2 chooses slice, p3 bailout.
  z=pixel, w=p2, c=p1:
  z2=sqr(z)
  w2=sqr(w)
  z=z2+2*w*z+w2+c
  w=z*Z2+w*w2+w2*z2+c
  |z2+w2|<=p3
  ;SOURCE: frac_ml.frm
}


Vector2J-zw {; 4D Julia set parallel to another plane.
             ; p1 Julia param, p2 chooses slice, p3 bailout.
  z=pixel+p2, w=pixel-p2, c=p1:
  z2=sqr(z)
  w2=sqr(w)
  z=z2+2*w*z+w2+c
  w=z*Z2+w*w2+w2*z2+c
  |z2+w2|<=p3
  ;SOURCE: frac_ml.frm
}


Vector2M {; 2D Mandelbrot set from vector valued function.
          ; p3 bailout.
  z=0, w=0, c=pixel:
  z2=sqr(z)
  w2=sqr(w)
  z=z2+2*w*z+w2+c
  w=z*Z2+w*w2+w2*z2+c
  |z2+w2|<=p3
  ;SOURCE: 98msg.frm
}


Veda {
  z = pixel + p1:
  r = tan(1/z) + pixel
  z = fn1(z * r)
  |z| < 4
  ;SOURCE: shakti.frm
}


veil {; Giuseppe Zito
  z = pixel
  c0 = -0.9324374492105978
  c1 = 0.71361
  d3 = 0.752888
  d13 = 0.110017
  : 
  x = real(z), y = imag(z)
  s0 =c0
  s0 = s0 *c1
  s0 = s0 -y
  newx = s0 
  s0 = y
  s0 = s0 -y
  s0 = s0 *d3
  s0 = s0 /x
  s1 = y
  s0 = s0 *s1
  s0 = s0 -x
  s0 = s0 +x
  s0 = s0 +x
  s1 = x
  s2 =d13
  s3 = y
  s3 = s3 +y
  s2 = s2 *s3
  s2 = s2 -x
  s2 = s2 -x
  s1 = s1 *s2
  s0 = s0 +s1
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


Ventura (XAXIS) {
  z = pixel, sspix = sin(sqr(pixel)):
  z = z * sspix + p1
  z = fn1(z) + pixel
  z < 4
  ;SOURCE: altura.frm
}


Ventura_2 (XAXIS) {
  z = pixel, sspix = sqr(sin(pixel)):
  z = z * sspix + p1
  z = fn1(z) + pixel
  z < 4
  ;SOURCE: altura.frm
}


VerLinebrot (XAXIS) {; Tom Schumm
                     ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like a mandel
  z = z + Pixel
  z = Sqr(z)
  real(z) <= 4          ; Different escape boundry
  ;SOURCE: phong.frm
}


VerLineia (ORIGIN) {; Tom Schumm
                    ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like a julia
  z = z + p1
  z = Sqr(z)
  real(z) <= 4            ; Different escape boundry
  ;SOURCE: phong2.frm
}

