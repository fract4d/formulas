

lambdafn {; Chuck Ebbert.
          ; P1 is lambda, P2 = bailout (default 64).
          ; lambda default is (1,.4)
  z = pixel
   ; CAE added leading zero below in (1,.4)   12 Jan 1993
  m = ((1, 0.4) * (|p1|<=0) + p1 )   ; force (1,.4) when p1=0
  t = (64 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = fn1(z) * m
  abs(imag(z)) <= t && abs(real(z)) <= t
  ;SOURCE: builtn2.frm
}


LambdaFn (ORIGIN) {; v7.x/9.1 - Chuck Ebbert - from BUILTN.FRM
   ; p1 is lambda (default = 1.0,0.4), 
   ; real(p2) changes bailout (default = 64).
   ; float=yes, set co-ords = -4/3/4/-3              - JH
  z = pixel
   ; CAE added leading zero below in (1,.4)                 12 Jan 1993
  m = ((1, 0.4) * (|p1|<=0) + p1 )            ; force (1,0.4) when p1=0
  t = (64 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = fn1(z) * m
  abs(imag(z)) <= t && abs(real(z)) <= t
  ;SOURCE: parser.frm
}


lambdafn { 
  z = pixel
  m = ((1, 0.4) * (|p1|<=0) + p1 )  
  t = (64 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = fn1(z) * fn2(m)
  abs(imag(z)) <= t && abs(real(z)) <= t
  ;SOURCE: bejones.frm
}


LambdaFnOrFn {; Chuck Ebbert
   ; Duplicate of built-in 'lambda(fn||fn).'
   ; P1 = lambda, real(p2) changes shift value from default of 1,
   ;  imag(p2) changes bailout from default of 64.
  z = pixel, modz = |z|, b = imag(p2) + 64, t = real(p2) + 1:
  z = ( fn1(z) * (modz<t) + fn2(z) * (real(t)<=modz ) ) * p1
  modz = |z|
  modz <= b
  ;SOURCE: ebbert.frm
}


LeeMandel1 (XYAXIS) {; Kevin Lee
                     ; try p1 = 0, p2 = 4, fn1 = sqr, fn2 = sqr
  z = pixel + p1:
  c = fn1(pixel)/z, c=z+c, z=fn2(z)
  |z| < p2
  ;SOURCE: improved.frm
}


LeeMandel1 (XYAXIS) {; Kevin Lee
                     ; try p1 = 0, fn1 = sqr, fn2 = sqr
  z = pixel + p1:
   ; c = fn1(pixel)/z, c=z+c, z=fn2(z), this line was an error
  c = fn1(pixel)/z, c=z+c, z=fn2(c)
  |z| < (p2 + 4)
  ;SOURCE: improv2.frm
}


LeeMandel1 (XYAXIS) {
  z = pixel:
  c = sqr(pixel)/z
  c = z + c
  z = sqr(z)
  |z| < P1 
  ;SOURCE: newforms.frm
}


LeeMandel1 (XYAXIS) { 
  z=Pixel: 
  c=sqr(pixel)/z, c=z+c, z=sqr(z)  
  |z|<4 
  ;SOURCE: newform.frm
}


LeeMandel2 (XYAXIS) {; Kevin Lee
                     ; try p1 = 0, p2 = 4, fn1 = sqr, fn2 = sqr
  z = pixel + p1:
  c = fn1(pixel)/z, c=z+c, z=fn2(c*pixel)
  |z| < p2
  ;SOURCE: improved.frm
}


LeeMandel2 (XYAXIS) {; Kevin Lee
                     ; try p1 = 0, fn1 = sqr, fn2 = sqr
  z = pixel + p1:
  c = fn1(pixel)/z, c=z+c, z=fn2(c*pixel)
  |z| <= (p2 + 4)
  ;SOURCE: improv2.frm
}


LeeMandel3 (XAXIS) {; Kevin Lee
                    ; try p1 = 0, p2 = 4, fn1 = sqr
  z = pixel + p1
  c = pixel-fn1(z):
  c = pixel+c/z
  z = c-z*pixel
  |z| < p1
  ;SOURCE: improved.frm
}


LeeMandel3 (XAXIS) {; Kevin Lee
                    ; try p1 = 0, fn1 = sqr
  z = pixel + p1, c = pixel-fn1(z):
  c = pixel+c/z
  z = c-z*pixel
  |z| <= (p2 + 4)
  ;SOURCE: improv2.frm
}


LeeMandel3 (XYAXIS) { 
  z=Pixel, c=Pixel-sqr(z): 
  c=Pixel+c/z, z=c-z*pixel 
  |z|<4
  ;SOURCE: newform.frm
}

