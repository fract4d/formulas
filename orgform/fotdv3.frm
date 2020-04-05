; FOTDv3.frm
; Compilation of Fractint formulas required for Jim Muth's FOTD series 12.Apr.99 - 11.Apr.00. 
; This is a companion file to FOTD_v3.par
; Compiled by Les St Cair.

CrazyNewton { ; Jim Muth
a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), k=real(p3), f=imag(p3),
z=pixel:
zx=z^b
zy=c*(zx*z)
z=(d*zy+a)/(k*zx),
f<=|zy-a|
}

defnewt6   {; Another Newton Failure
a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), k=real(p3), f=imag(p3),
z=(pixel*a):
z1=z^b-1
z2=c*z*z
z=z-(d*z1/z2)^k,
|z1| >= f
}

HyperSquare {; Jim Muth
a=(p1),b=(0,0):
q=sqr(a)-sqr(b)+pixel
b=p2*a*b+p3
a=q,
|a|+|b| <= 100
}

IfElse03 {; Jim Muth
z=y=pixel, a=real(p1), b=imag(p1),
c=p2+(p3*pixel), w=0:
IF(w), z=fn1(real(y))+fn2(imag(y)), w=0
ELSE, z=(y*a), w=w+1, ENDIF
z=z^b+c, y=z,
|z| <= 100 
}

JimsCompMand {; Jim Muth
z=c=pixel:
z=z^p1*(c^p2)+c,
|z| <= p3+100
}

JuliaMiN {; Jim Muth
b=p1, z=pixel+p2, c=p3:
z=(-z)^(b)+c,
|z| <= 16
}

JuliaN {; Jim Muth
b=p1, z=p2+pixel, c=p3:
z=z^(b)+c,
|z| <= 16
}

MandelbrotCube {; Jim Muth  real(c),imag(c)
z=p1, c=pixel+p2:
z=z*(sqr(z))+c,
|z| <= 16
}

MandelbrotMiN {; Jim Muth
b=p1, z=p2, c=p3+pixel:
z=(-z)^(b)+c,
|z| <= 16
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

MandelPMnew {; Jim Muth
z=p2+10^(-100),
c=pixel+(p3)
a=real(p1)+1, b=imag(p1):
z=a*((-z)^b+z^b)+c,
|z| <= 250
}

MandNewt01 {; Jim Muth
z=c=pixel:
a=z^3+(c-1)*z-(p1*c)
b=3*z^2+(p2*c-1)
z=z-p3*a/b
.00005 <= |a|
}

MandNewt02 {; Jim Muth
z=c=pixel:
a=z^p1+(c-1)*z-c
b=3*z^p2+c-1
z=z-p3*a/b
.000000000000000000000000000001 <= |a|
}

MandNewt04 {; Jim Muth
z=c=pixel:
a=z^3+(c-1)*z-c
b=p1*z^2+c-1
z=z-p2*a/b
p3 <= |a|
}

MandNewt05 {; Jim Muth
z=c=fn1(pixel):
a=z^2+(c-p1)*z-c
b=p2*z^2+c-1
z=z-1*a/b
p3 <= |a|
}

MandNewt06 {; Jim Muth
z=c=(pixel*p1):
a=z^3+(c-p2)*z-c
b=p3*z^2+c-1
z=z-1*a/b
.000000000000000000000000000001 <= |a|
}

MandNewt08 {; Jim Muth
z=c=(pixel*p1):
a=z^p2+(c-1)*z-c
b=p3*z^2+c-1
z=z-1*a/b
.000000000000000000000000000001 <= |a|
}

MandNewt09 {; Jim Muth
z=c=pixel:
a=z^3+(c-1)*z-c
b=p1*z^p2+c-1
z=z-1*a/b
p3 <= |a|
}

MandNewt10 {; Jim Muth
z=g=pixel, a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), e=real(p3), f=imag(p3):
h=z^a+(g-b)*z-g
j=c*z^d+g
z=z-e*h/j,
f <= |h|
}

MandNewt11 {; Jim Muth
z=g=pixel, a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), e=real(p3), f=imag(p3):
h=z^a+(g-b)*z-f
j=c*z^d+g
z=z-e*h/j,
.0000000000000000000000000000005 <= |h|
}

MandNewt12 {; Jim Muth
z=g=pixel, a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), e=real(p3), f=imag(p3):
h=z^a+(g-1)*(z-b)
j=c*z^d+g
z=z-e*h/(f*j),
.0000000000000000000000000000005 <= |h|
}

mult2-003-XY-ZW {; draws 6 planes and many rotations
;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
a=(real(p1)+10^(-100))*.01745329251994,
b=imag(p1)*.01745329251994,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2,
c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
z=z^2.003+c,
|z| <= 36  }

mult2-003-XY-ZWa { ; "a" suffix added to differentiate from
                   ; slightly different version previously posted
                   ; draws 6 planes and many rotations
;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
a=(real(p1)+10^(-100))*.01745329251994,
b=imag(p1)*.01745329251994,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2,
c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
z=z^2.003005+c,
|z| <= 36  }

mult2-003-XZ-YW {; Jim Muth
; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
e=exp(flip(real(p1*.01745329251994))),
f=exp(flip(imag(p1*.01745329251994))),
z=f*real(pixel)+p2, c=e*imag(pixel)+p3:
z=z^2.003+c,
|z| <= 36  }

multesc4-XY-ZW {; draws 6 planes and many rotations
;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2,
c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
z=sqr(z)+c,
|z| < 4  }

multirot03-XY-ZW {; draws 6 planes and rotations
;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2,
c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
z=z*z*z+c,
|z| <= 36  }

multirot03-XZ-YW {; Jim Muth
; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
e=exp(flip(real(p1*.01745329251994))),
f=exp(flip(imag(p1*.01745329251994))),
z=f*real(pixel)+p2, c=e*imag(pixel)+p3:
z=z*z*z+c,
|z| <= 36  }

multirot05-XY-ZW {; draws 6 planes and many rotations
;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2,
c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
z=z*(sqr(sqr(z)))+c,
|z| <= 36  }

multirot05-XZ-YW {; Jim Muth
; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
e=exp(flip(real(p1*.01745329251994))),
f=exp(flip(imag(p1*.01745329251994))),
z=f*real(pixel)+p2, c=e*imag(pixel)+p3:
z=z*(sqr(sqr(z)))+c,
|z| <= 36  }

multirot16-XY-ZW {; draws 6 planes and rotations
;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2,
c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
z=sqr(sqr(sqr(sqr(z))))+c,
|z| <= 36  }

multirot-XY-ZW {; draws 6 planes and many rotations
;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2,
c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
z=sqr(z)+c,
|z| <= 36  }

multirot-XZ-YW {; Jim Muth
; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
e=exp(flip(real(p1*.01745329251994))),
f=exp(flip(imag(p1*.01745329251994))),
z=f*real(pixel)+p2, c=e*imag(pixel)+p3:
z=sqr(z)+c,
|z| <= 36  }

multmin1-5-XY-ZW {; draws 6 planes and rotations
;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
a=(real(p1)+10^(-100))*.01745329251994,
b=imag(p1)*.01745329251994,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2,
c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
z=(-z)^1.5+c,
|z| <= 36  }

multmin1234XY-ZW {; draws 6 planes and rotations
;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
a=(real(p1)+10^(-100))*.01745329251994,
b=imag(p1)*.01745329251994,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2,
c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
z=(-z)^1.234+c,
|z| <= 36  }

MultValLog2 {; Jim Muth
z=p1+(1e-100), c=pixel:
z=(p2*(z^z))^(p3*(1/z))+c,
|z| <= 100
}

Mystic2 {; Jim Muth
a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), k=real(p3), f=imag(p3),
g=pixel, z=(pixel)^a+(b*(pixel))^c:
z=(fn1(z)+(d*(g)))^k+(f*(cos(g)))
g=sqr(g),
LastSqr <= 100
}

O-varesc {; Jim Muth  real(z),imag(c)
a=sqr(p3), z=real(pixel)+p1,
c=flip(imag(pixel))+p2:
z=sqr(z)+c,
|z| < a
}

Oblate {; Jim Muth  real(z),imag(c)
z=real(pixel)+p1,
c=flip(imag(pixel))+p2:
z=sqr(z)+c,
|z| <= 16
}

ObliqueManPlus {;Jim Muth
z=p1+pixel, c=p2+(p3*pixel):
z=sqr(z)+c,
|z| <=100
}

OblateMiN {; Jim Muth
b=p1, z=real(pixel)+p2,
c=flip(imag(pixel))+p3:
z=(-z)^(b)+c,
|z| <= 16
}

RectangularN {; Jim Muth
b=p1, z=flip(real(pixel))+p2,
c=flip(imag(pixel))+p3:
z=z^(b)+c,
|z| <= 16
}

RectPMnew {; Jim Muth
z=flip(real(pixel))+p2,
c=flip(imag(pixel))+p3,
a=real(p1)+1, b=imag(p1):
z=a*((-z)^b+z^b)+c,
|z| <= 250
}

ShadMinRot-XY-ZW {; draws 6 planes and many rotations
;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
a=(real(p1)+10^(-100))*.01745329251994,
b=imag(p1)*.01745329251994, p=p2, k=p3,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+k,
c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+k:
z=(-z)^p+c,
|z| <= 36  }


ShadowRot-XZ-YW {; Jim Muth
; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
e=exp(flip(real(p1*.01745329251994))),
f=exp(flip(imag(p1*.01745329251994))),
p=p2, k=p3,
z=f*real(pixel)+k, c=e*imag(pixel)+k:
z=z^p+c,
|z| <= 36  }

SliceJB {; by John R. H. Goering, July 1999
  pix=pixel, u=real(pix), v=imag(pix), a=pi*real(p1),
  b=pi*imag(p1), g=pi*real(p2), d=pi*imag(p2), ca=cos(a),
  cb=cos(b), sb=sin(b), cg=cos(g), sg=sin(g), cd=cos(d),
  sd=sin(d), p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd), r=u*sg+v*ca*sb*cg,
  s=v*sin(a), c=p+flip(q)+p3, z=r+flip(s):
  z=z*z+c
  |z|<=9
  }

SliceJB2003-PT {; from John R.H.Goering's formula
pix=pixel, u=real(pix), v=imag(pix), a=pi*real(p1),
b=pi*imag(p1), g=pi*real(p2), d=pi*imag(p2), ca=cos(a),
cb=cos(b), sb=sin(b), cg=cos(g), sg=sin(g), cd=cos(d),
sd=sin(d), p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd), r=u*sg+v*ca*sb*cg,
s=v*sin(a), c=p+flip(q)+p3, z=r+flip(s)+(.000216,.074279):
z=z^2.003+c
|z|<=9
}

testrot-XY-ZW {; draws 6 planes and many rotations
;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2,
c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
z=4*((-z)^0.9+z^0.9)+c,
|z| <= 36  }

Zexpe (XAXIS) {
  s = exp(1.,0.), z = Pixel:
   z = z ^ s + pixel
    |z| <= 100
  }
