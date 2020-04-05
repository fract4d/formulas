; FOTDv5.frm
; Compilation of Fractint formulas required for Jim Muth's Classic FOTD series 12.Apr.01 onward. 
; This is a companion file to FOTD_v5.par
; Compiled by Les St Cair.

JimsCompMand {; Jim Muth
z=c=pixel:
z=z^p1*(c^p2)+c,
|z| <= p3+100
}

MandelbrotBC   { ; Formula by Andrew Coppin etal
  e=p1
  p=real(p2)+PI
  q=2*PI*trunc(p/(2*PI))
  r=real(p2)-q
  Z=C=Pixel:
    Z=log(Z)
    IF(imag(Z) > r)
      Z=Z+flip(2*PI)
    ENDIF
    Z=exp(e*(Z+flip(q)))+C
  |Z| < 100
}

MandelbrotBC1   { ; by several Fractint users
  e=p1, a=imag(p2)+100
  p=real(p2)+PI
  q=2*PI*fn1(p/(2*PI))
  r=real(p2)-q
  Z=C=Pixel:
    Z=log(Z)
    IF(imag(Z) > r)
      Z=Z+flip(2*PI)
    ENDIF
    Z=exp(e*(Z+flip(q)))+C
  |Z| < a
}

MandelbrotMix4 {; Jim Muth
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2), g=1/f
  h=1/d, j=1/(f-b), z=(-a*b*g*h)^j, k=real(p3)+1
  l=imag(p3)+100, c=fn1(pixel):
  z=k*((a*(z^b))+(d*(z^f)))+c
  |z| < l
}

MandelbrotMix4_v1 {; Jim Muth
  c=pixel, a=real(p1), b=imag(p1), d=real(p2), f=imag(p2)
  g=1/f, h=1/d, j=1/(f-b), z=(-a*b*g*h)^j:
  z=(a*(z^b))+(d*(z^f))+c
  |z| <= 100
}

MandelbrotN {; Jim Muth
b=p1, z=p2, c=p3+pixel:
z=z^(b)+c,
|z| <= 16
}

MandelbrotVE {; Jim M.  (variable escape radius)
z=p1, c=pixel+p2,
b=sqr(real(p3)):
z=sqr(z)+c,
|z| <= b
}

MandNewt05 {; Jim Muth
z=c=fn1(pixel):
a=z^2+(c-p1)*z-c
b=p2*z^2+c-1
z=z-1*a/b
p3 <= |a|
}

MandNewt08 {; Jim Muth
z=c=(pixel*p1):
a=z^p2+(c-1)*z-c
b=p3*z^2+c-1
z=z-1*a/b
0.000000000000000000000000000001 <= |a|
}

MandNewt13 {; Jim Muth
z=g=pixel, a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), e=real(p3), f=imag(p3):
h=z^a+(g-b)*z-f
j=c*z^d+g
z=z-e*h/j,
0.000000000000000000000000000001 <= |h|
}

MandNewt14 {; Jim Muth
z=g=pixel, a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), e=real(p3), f=imag(p3):
h=z^a+(g-1)*(z-b)
j=c*z^d+g
z=z-e*h/(f*j),
0.000000000000000000000000000001 <= |h|
}

multirot-XY-ZW-new {; draws 6 planes and rotations
;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p3,
c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p4:
z=z^(p2)+c,
|z| <= 36  }

multirot-XZ-YW {; Jim Muth
; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
e=exp(flip(real(p1*.01745329251994))),
f=exp(flip(imag(p1*.01745329251994))),
z=f*real(pixel)+p2, c=e*imag(pixel)+p3:
z=sqr(z)+c,
|z| <= 36  }

multirot-XZ-YW-new {; Jim Muth
; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
e=exp(flip(real(p1*.01745329251994))),
f=exp(flip(imag(p1*.01745329251994))),
z=f*real(pixel)+p3, c=e*imag(pixel)+p4:
z=z^(p2)+c,
|z| <= 36  }

Mystic2 {; Jim Muth
a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), k=real(p3), f=imag(p3),
g=pixel, z=(pixel)^a+(b*(pixel))^c:
z=(fn1(z)+(d*(g)))^k+(f*(cos(g)))
g=sqr(g),
LastSqr <= 100
}

ObliqueManPlus {;Jim Muth
z=p1+pixel, c=p2+(p3*pixel):
z=sqr(z)+c,
|z| <= 100
}

SliceJB-new-min {; by John R. H. Goering, July 1999
  pix=pixel, u=real(pix), v=imag(pix), a=pi*real(p1),
  b=pi*imag(p1), g=pi*real(p2), d=pi*imag(p2), ca=cos(a),
  cb=cos(b), sb=sin(b), cg=cos(g), sg=sin(g), cd=cos(d),
  sd=sin(d), p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd), r=u*sg+v*ca*sb*cg,
  s=v*sin(a), c=p+flip(q)+(p4), z=r+flip(s)+(p5):
  z=(-z)^(p3)+c
  |z| <= 100
  }

TowerMinExp04a {; Jim Muth
z=pixel, c=p2+(p3*pixel):
z=z^fn1(z^fn2(-z^fn3(z^fn4(-z+p1))))+c,
|z| <= 100
}
