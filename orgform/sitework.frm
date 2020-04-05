
G-3-03-M  { ; Sylvie Gallet [101324,3444], 1996
            ; Modified Gallet-3-03 formula
  z = pixel :
  x = real(z) , y = imag(z)
  x1 = x - p1 * fn1(y*y + round(p2*fn2(y)))
  y1 = y - p1 * fn1(x*x + round(p2*fn2(x)))
  z = x1 + flip(y1)
  |z| <= 4
  ;SOURCE: fractint.frm
}


TobeyRichard1 (XYAXIS) {; Jm Richard-Collard
                        ; Generalized by Tobey J. E. Reed [76437,375]
  z = pixel:
  sq=z*z, z=(sq*fn1(sq)+sq)+pixel,
  |z|<=50
  ;SOURCE: fract003.frm
}

Carr-Orman2 {; Modified by Jack A. Orman
  z=1/pixel,c=fn1(p2)/pixel:
  z=z^p1+fn2(c/pixel),
  |z| <=10
  ;SOURCE: j-carr.frm
}

magnet2j {; Chuck Ebbert.                       added 12 Jan 1993
          ; p1 = Parameter c
          ; real(p2) = bailout (default 100)
  z=pixel,c1=p1-1,c1x3=c1*3,c2x3=c1x3-3,c1c2=c1*c1-c1,c1c2p1=c1c2+1,
  t = (100 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = sqr( ( (z*z+c1x3 )*z+c1c2 ) / ( (z*3+c2x3 )*z+c1c2p1 ) ),
  |z-1| > .000030517578 && |z| <= t
  ;SOURCE: builtn2.frm
}

J_TchebychevC3 {
  c = pixel, z = P1:
  z = c*z*(z*z-3)
  |z|<100
  ;SOURCE: fractint.frm
}
