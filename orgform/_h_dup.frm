

Halley (XYAXIS) {; Chris Green
   ; try p1 = 1.0 and p2 = 0.0001
   ; note--use floating point
  z  = pixel:
  z5 = z*z*z*z*z
  z6 = z*z5
  z7 = z*z6
  z  = z-p1*((z7-z)/((7.0*z6-1)-(42.0*z5)*(z7-z)/(14.0*z6-2)))
  p2 <= |z7-z|
  ;SOURCE: improved.frm
}


Halley {; v18 - Chris Green - Halley's for x(x^6-1)=0.
        ; Mods by Chuck Ebbert - BUILTN.FRM
        ; Use float=yes - JH
        ; Same as built-in halley type with order = 6
        ; real(p1) = relaxation coefficient, usually 1 to 1.5 (default 1)
        ; real(p2) = epsilon (default .0001).
  m = (1 * (abs(real(p1))<=0) + p1 ),      ; force 1 if real(p1)=0
  d = (.0001 * (abs(real(p2))<=0) + p2 )   ; force .0001 if real(p2)=0
  z = pixel, sqrz=sqr(z):
  oldmod = lastsqr             ; save old modulus
  z5=sqrz*sqrz*z, z6=z5*z, z7mz=(z6-1)*z
  z = z7mz / (z5*42*z7mz/(z6*14-2) - z6*7 + 1 ) * real(m) + z
  sqrz = sqr(z)                ; lastsqr now contains |z|
  abs(lastsqr - oldmod ) >= d  ; bailout changed to match built-in
  ;SOURCE: parser.frm
}


halley6 {; Chris Green. Halley's for x(x^6-1)=0.  Mods by C. Ebbert.
         ; Same as built-in halley type with order = 6
   ; real(p1) = relaxation coefficient, usually 1 to 1.5 (default 1)
   ; real(p2) = epsilon (default .0001).
  m = (1 * (abs(real(p1))<=0) + p1 )       ; force 1 if real(p1)=0
  d = (.0001 * (abs(real(p2))<=0) + p2 )   ; force .0001 if real(p2)=0
  z=pixel, sqrz=sqr(z):
  oldmod = lastsqr             ; save old modulus
  z5=sqrz*sqrz*z, z6=z5*z, z7mz=(z6-1)*z
  z = z7mz / (z5*42*z7mz/(z6*14-2) - z6*7 + 1 ) * real(m) + z
  sqrz = sqr(z)                ; lastsqr now contains |z|
  abs(lastsqr - oldmod ) >= d  ; bailout changed to match built-in
  ;SOURCE: builtn2.frm
}


HalleySin (XYAXIS) {; Chris Green
                    ; try p1 = 0.1, p2 = 0.0001, fn1 = sin, fn2 = cos
                    ; note--use floating point
  z  = pixel:
  s  = fn1(z)
  c  = fn2(z)
  z=z-p1*(s/(c-(s*s)/(c+c)))
  p2 <= |s|
  ;SOURCE: improved.frm
}


heart {; Giuseppe Zito
  z = pixel
  d6 = -0.466358
  d7 = 0.907923
  d12 = -0.39404
  d15 = -0.481785
  d16 = -0.216375
  : 
  x = real(z), y = imag(z)
  s0 = y
  newx = s0 
  s0 = x
  s0 = s0 -y
  s0 = s0 *y
  s0 = s0 *d6
  s0 = s0 *d7
  s0 = s0 +x
  s0 = s0 -y
  s0 = s0 *y
  s0 = s0 +d12
  s0 = s0 -d15
  s0 = s0 *d16
  s0 = s0 +x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


hypercomplex {; Chuck Ebbert -- must use periodicity=0, float=yes
              ; P1 is (cj,ck), bailout is real(p2) (default 64)
  z = zi = 0
  t = (64 * (real(p2)<=0) + real(p2) * (0<p2) ):
  a = fn1(z-imag(zi)+flip(real(zi)) )
  b = fn1(z+imag(zi)-flip(real(zi)) )
  z = (b+a)/2 + pixel
  zi = (flip(real(b))+imag(a)-imag(b)-flip(real(a)) ) / 2 + p1
  |zi| + |z| <= t
  ;SOURCE: builtn.frm
}


HyperMandel {; Chris Green.
             ; try p1 = 1.8, p2 = 2.0, fn1 = sqr
             ; note--use floating point
  a = (0,0)
  b = (0,0):
  z = z+1
  anew = fn1(a)-fn1(b)+pixel
  b = p2*a*b+p1
  a = anew
  |a|+|b| <= 4
  ;SOURCE: improved.frm
}


HyperMandel {; Chris Green.  A four-dimensional version of the M-set.
   ; Use P1 to select which 2-D plane of the 4-D set you wish
   ; to examine.  try p1 = 1.8, p2 = 2.0, fn1/fn2 = sqr
   ; use floating point
  a = (0,0), b = (0,0):
  z = z+1
  anew = fn1(a)-fn2(b)+pixel
  b = p2*a*b+p1
  a = anew
  |a|+|b| <= 4
  ;SOURCE: improv2.frm
}

