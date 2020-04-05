MandelbrotMix4 {
  ; Jim Muth
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2),
  g=1/f, h=1/d, j=1/(f-b), z=(-a*b*g*h)^j,
  k=real(p3)+1, l=imag(p3)+100, c=fn1(pixel):
  z=k*((a*(z^b))+(d*(z^f)))+c,
  |z| < l
}

MandelbrotMix2 {
  ; Jim Muth
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2),
  g=1/f, h=1/d, j=1/(f-b), z=(((-a*b*g*h)^j)+(p4)),
  k=real(p3)+1, l=imag(p3)+100, c=fn1(pixel):
  z=k*((a*(z^b))+(d*(z^f)))+c,
  |z| < l
}

MandelbrotMix3a {
  ; Jim Muth
  z=real(p5), c=fn1(pixel), a=real(p1), b=imag(p1),
  d=real(p2), f=imag(p2), g=real(p3), h=imag(p3),
  j=real(p4), k=imag(p4), l=imag(p5)+100:
  z=(a*(z^b))+(d*(z^f))+(g*(z^h))+(j*(z^k))+c,
  |z| <=l
}

multimin-XZ-YW-new {
  ; Jim Muth
  ; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
  e=exp(flip(real(p1*.01745329251994))),
  f=exp(flip(imag(p1*.01745329251994))),
  z=f*real(pixel)+p3, c=e*imag(pixel)+p4:
  z=(-z)^(p2)+c,
  |z| <= 36
}

multirot-XY-ZW-new {
  ; draws 6 planes and rotations
  ;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
  ;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p3,
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p4:
  z=z^(p2)+c,
  |z| <= 36
}

SliceJB-new {
  ; by John R. H. Goering, July 1999
  pix=pixel, u=real(pix), v=imag(pix), a=pi*real(p1),
  b=pi*imag(p1), g=pi*real(p2), d=pi*imag(p2), ca=cos(a),
  cb=cos(b), sb=sin(b), cg=cos(g), sg=sin(g), cd=cos(d),
  sd=sin(d), p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd), r=u*sg+v*ca*sb*cg,
  s=v*sin(a), c=p+flip(q)+(p4), z=r+flip(s)+(p5):
  z=z^(p3)+c
  |z| <= 9
}

Mystic2 {
  ; Jim Muth
  a=real(p1), b=imag(p1), c=real(p2),
  d=imag(p2), k=real(p3), f=imag(p3),
  g=pixel, z=(pixel)^a+(b*(pixel))^c:
  z=(fn1(z)+(d*(g)))^k+(f*(cos(g)))
  g=sqr(g),
  LastSqr <= 100
}

MandelbrotBC1 {
  ; by several Fractint users
  f=p1, a=imag(p2)+100
  p=real(p2)+PI
  q=2*PI*fn1(p/(2*PI))
  r=real(p2)-q
  Z=C=Pixel:
  Z=log(Z)
  IF(imag(Z) > r)
    Z=Z+flip(2*PI)
  ENDIF
  Z=exp(f*(Z+flip(q)))+C
  |Z|
}

multirot-XZ-YW-new {
  ; Jim Muth
  ; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
  d=exp(flip(real(p1*.01745329251994))),
  f=exp(flip(imag(p1*.01745329251994))),
  z=f*real(pixel)+p3, c=d*imag(pixel)+p4:
  z=z^(p2)+c,
  |z| <= 36
}

MandelbrotN {
  ; Jim Muth
  b=p1, z=p2, c=p3+pixel:
  z=z^(b)+c,
  |z| <= 16 
}

MandNewt06 {
  ; Jim Muth
  z=c=(pixel*p1):
  a=z^3+(c-p2)*z-c
  b=p3*z^2+c-1
  z=z-1*a/b
  0.000000000000000000000000000001 <= |a| 
}

MandNewt04 {
  ; Jim Muth
  z=c=pixel:
  a=z^3+(c-1)*z-c
  b=p1*z^2+c-1
  z=z-p2*a/b
  p3 <= |a| 
}

multimin-XY-ZW-new {
  ; draws 6 planes and rotations
  ;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
  ;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p3,
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p4:
  z=(-z)^(p2)+c,
  |z| <= 36 
}

MandelbrotCube {
  ; Jim Muth  real(c),imag(c)
  z=p1, c=pixel+p2:
  z=z*(sqr(z))+c,
  |z| <= 16 
}

MandelbrotMix2way {
  ; Jim Muth
  z=0,0, c=pixel,
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2):
  z=(a*(z^b))+(d*(z^f))+c,
  |z| <= 100 
}

MandNewt12 {
  ; Jim Muth
  z=g=pixel, a=real(p1), b=imag(p1), c=real(p2),
  d=imag(p2), e=real(p3), f=imag(p3):
  h=z^a+(g-1)*(z-b)
  j=c*z^d+g
  z=z-e*h/(f*j),
  .0000000000000000000000000000005 <= |h| 
}

MandNewt01 {
  ; Jim Muth
  z=c=pixel:
  a=z^3+(c-1)*z-(p1*c)
  b=3*z^2+(p2*c-1)
  z=z-p3*a/b
  .00005 <= |a| 
}

OblateVB {
  ; Jim Muth
  z=real(pixel)+flip(real(p1)),
  c=flip(imag(pixel))+imag(p1),
  a=sqr(p2):
  z=sqr(z)+c,
  |z| <= a 
}

SnakeTree {
  ; Jim Muth
  z=pixel:
  z=(-z)^1.095+3.4
  |z| <= 100 
}

SliceJulibrot {
  ; draws most oblique slices
  pix=pixel, u=real(pix), v=imag(pix), a=pi*real(p1),
  b=pi*imag(p1), g=pi*real(p2), d=pi*imag(p2), ca=cos(a),
  cb=cos(b), sb=sin(b), cg=cos(g), sg=sin(g), cd=cos(d),
  sd=sin(d), p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd), r=u*sg+v*ca*sb*cg,
  s=v*sin(a), c=p+flip(q)+p3, z=r+flip(s)+p4:
  z=sqr(z)+c
  |z| <= 9 
}

SliceJulibrot2 {
  ; draws most slices of Julibrot
  pix=pixel, u=real(pix), v=imag(pix),
  a=pi*real(p1*0.0055555555555556),
  b=pi*imag(p1*0.0055555555555556),
  g=pi*real(p2*0.0055555555555556),
  d=pi*imag(p2*0.0055555555555556),
  ca=cos(a), cb=cos(b), sb=sin(b), cg=cos(g),
  sg=sin(g), cd=cos(d), sd=sin(d),
  p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd),
  r=u*sg+v*ca*sb*cg, s=v*sin(a),
  c=p+flip(q)+p3, z=r+flip(s)+p4:
  z=sqr(z)+c
  |z| <= 9 
}

Rectangular {
  ; Jim Muth  imag(z),imag(c)
  z=flip(real(pixel))+p1,
  c=flip(imag(pixel))+p2:
  z=sqr(z)+c,
  |z| <= 16 
}

SliceJulibrot3 {
  ; draws most slices of Julibrot
  pix=pixel, u=real(pix), v=imag(pix),
  a=pi*real(p1*0.0055555555555556),
  b=pi*imag(p1*0.0055555555555556),
  g=pi*real(p2*0.0055555555555556),
  d=pi*imag(p2*0.0055555555555556),
  ca=cos(a), cb=cos(b), sb=sin(b), cg=cos(g),
  sg=sin(g), cd=cos(d), sd=sin(d),
  p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd),
  r=u*sg+v*ca*sb*cg, s=v*sin(a),
  c=p+flip(q)+p3, z=r+flip(s)+sqrt(p4):
  z=sqr(z)+c
  |z| <= 9 
}

SliceJulibrot4 {
  ; draws most slices of Julibrot
  pix=pixel, u=real(pix), v=imag(pix),
  a=pi*real(p1*0.0055555555555556),
  b=pi*imag(p1*0.0055555555555556),
  g=pi*real(p2*0.0055555555555556),
  d=pi*imag(p2*0.0055555555555556),
  ca=cos(a), cb=cos(b), sb=sin(b), cg=cos(g),
  sg=sin(g), cd=cos(d), sd=sin(d),
  p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd),
  r=u*sg+v*ca*sb*cg, s=v*sin(a),
  c=p+flip(q)+p3, z=r+flip(s)+p4:
  z=z^(p5)+c
  |z| <= 9 
}

MandelbrotBC2 {
  ; by several Fractint users
  e=p1, a=imag(p2)+100
  p=real(p2)+PI
  q=2*PI*floor(p/(2*PI))
  r=real(p2)-q
  Z=C=Pixel:
    Z=log(Z)
    IF(imag(Z)>r)
      Z=Z+flip(2*PI)
    ENDIF
    Z=exp(e*(Z+flip(q)))+C
  |Z| < a 
}

MandelbrotMix5way {
  ; Jim Muth
  z=p5, c=pixel,
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2),
  g=real(p3), h=imag(p3), j=real(p4), k=imag(p4):
  z=(a*(z^b))+(d*(z^f))+(g*(z^h))+(j*(z^k))+c,
  |z| <= 100 
}
