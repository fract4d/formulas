

palette {; use maxiter=255 and outside=summ
  z0 = 256 * real(scrnpix)/real(scrnmax), iter=0 :
  iter = iter + 1
  z = z0 - iter
  0
  ;SOURCE: 98msg.frm
}


Parabolic {; Jim Muth                    OLD version
  z=imag(pixel)+flip(real(p1))
  c=real(pixel)+flip(imag(p1)):
  z=sqr(z)+c
  |z| <= 36
  ;SOURCE: 98msg.frm
}


peacock {; Giuseppe Zito
  z = pixel
  c0=0.011108
  c6 = -0.541766
  c9 = -0.809815
  d2  = -0.546787
  d6 = 0.660456
  d8 = -0.200256
  d11 = 0.180210:
  x = real(z), y = imag(z)
  s1 = c0*y/x 
  newx = c6 * y * s1 * c9 + y
  t1 = x
  t2  = ((d2/x)/y)*t1+d6
  newy= ((y -d8) * t2) -x - d11
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4
  ;SOURCE: zg.frm
}


Phoenix {; Corrected typo in 2nd line, y=0.0 was commented out
  x = pixel, y = 0.0:
  z = (x * x) + p1 + (p2 * y)
  y = x
  x = z
  ;SOURCE: phoeni.frm
}


Phoenix {; Kriston Scott's implementation
         ; try p1=0.56667/p2=-0.5, or p1=0.1/p2=0.8
  z = pixel, c = 0.0 :
  t = (z * z) + p1 + (p2 * c)
  c = z
  z = t
  |z|<=4
  ;SOURCE: parser.frm
}

