

Sam_8 {; from SAM.FRM
       ; fix by Ron Barnett [70153,1233]   
  z = c = Pixel:
  z = z^c
  ;SOURCE: fract003.frm
}


SGG005 {
  z=pixel, t=p1/p2+.5
  z=fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel))
  z<=t+2
  ;SOURCE: 941227.frm
}


SinEgg (XAXIS_NOPARM) {; Jonathan Osuch [73277,1432]
                       ; Generalized by Tobey J. E. Reed [76437,375]
                       ; Try p1=0, p2=4, fn1=sin, fn2=sqr
                       ; Try p1=0, p2=4, fn1=sinh, fn2=sqr
                       ; Use floating point.
                       ; Edited for Fractint v. 20 by
                       ; George Martin, 10/98
  z = p1, x = |z|:
  z=fn1(z) + pixel
  z = fn2(z)+pixel, x  = |z|
  x <= p2
  ;SOURCE: fract003.frm
}


SinEggC (XAXIS_NOPARM) {; Jonathan Osuch [73277,1432]
                        ; Generalized by Tobey J. E. Reed [76437,375]
                        ; Try p1=0, p2=4, fn1=sinh, fn2=sqr
                        ; Try p1=0, p2=4, fn1=sin, fn2=sqr
                        ; Use floating point.
                        ; Edited for Fractint v. 20 by
                        ; George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z= fn1(z) + pixel
  ENDIF
  z=fn2(z)+pixel, x=|z|
  x<=p2
  ;SOURCE: fract003.frm
}


SinhEgg (XAXIS_NOPARM) {; Jon Osuch
                        ; Try p1=0, p2=4, fn1=sinh, fn2=sqr
                        ; Edited for Fractint v. 20 by 
                        ; George Martin, 10/98
  z = p1
  x = |z|:
  z=fn1(z) + pixel
  z = fn2(z)+pixel
  x = |z|
  x <= p2
  ;SOURCE: select.frm
}


spider {
  z=pixel, f=pixel: 
  f=f/p2+z
  z=fn1(z^p1)+fn2(f)
  |z| <= 4 
  ;SOURCE: test.frm
}


star {; Kerry Mitchell
  zc=pixel, c=(.439,.493), r=1e30
  t=real(p1)/180*pi, ct=cos(t), st=sin(t), qmin=99:
  zc=sqr(zc)+c, q=|ct*real(zc)+st*imag(zc)|
  IF (q<qmin)
    qmin=q
    t=log(q)
    z=cos(t)+flip(sin(t))
  ENDIF
  |zc| < r
  ;SOURCE: frac_ml.frm
}


Sterling (XAXIS) {; davisl
                  ; try p1 = 2.7182818, p2 = 6.2831853
  z = pixel:
  z = ((z/p1)^z)/fn1(p2*z)
  |z| <= 4
  ;SOURCE: improved.frm
}


Sterling2 (XAXIS) {; davisl
                   ; try p1 = 2.7182818, p2 = 6.2831853
  z = pixel:
  z = ((z/p1)^z)/fn1(p2*z) + pixel
  |z| <= 4
  ;SOURCE: improved.frm
}


Sterling2 (XAXIS) {
  z = pixel:  
  z = ((z/2.7182818)^z)/sqr(6.2631853*Z) + pixel
  |z| <= 4
  ;SOURCE: newforms.frm
}


Sterling3 (XAXIS) {; davisl
                   ; try p1 = 2.7182818, p2 = 6.2831853
  z = pixel:
  z = ((z/p1)^z)/fn1(p2*z) - pixel
  |z| <= 4
  ;SOURCE: improved.frm
}

