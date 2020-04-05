; FOTDv2.frm
; Compilation of Fractint formulas required for Jim Muth's FOTD series 12.Apr.98 - 11.Apr.99 
; This is a companion file to FOTDv2.par
; Compiled by Les St Cair.

--MandelPMnew {; Jim Muth
z=p2+10^(-100),
c=pixel+(p3)
a=real(p1)+1, b=imag(p1):
z=a*(z^b-(-z)^b)+c,
|z| <= 250
}

-EllipPMnew {; Jim Muth
z=flip(imag(pixel))+p2,
c=real(pixel)+p3
a=real(p1), b=imag(p1):
z=a*((-z)^b+z^b)+c,
|z| <= 250
}

-MandelPMnew {; Jim Muth
z=p2+10^(-100),
c=pixel+(p3)
a=real(p1), b=imag(p1):
z=a*((-z)^b+z^b)+c,
|z| <= 250
}

-RectPMnew {; Jim Muth
z=flip(real(pixel))+p2,
c=flip(imag(pixel))+p3,
a=real(p1), b=imag(p1):
z=a*((-z)^b+z^b)+c,
|z| <= 250
}

BackwardBrot   { ; Jim Muth
z=c=pixel:
z=p1^(z^p2)+(p3*c),
|z| <16  }

CrazyNewton { ; Jim Muth
a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), k=real(p3), f=imag(p3),
z=pixel:
zx=z^b
zy=c*(zx*z)
z=(d*zy+a)/(k*zx),
f<=|zy-a|
}

Elliptic {; Jim Muth  imag(z),real(c)
z=flip(imag(pixel))+p1,
c=real(pixel)+p2:
z=sqr(z)+c,
|z| <= 16
}

EllipticMiN {; Jim Muth
b=p1, z=flip(imag(pixel))+p2,
c=real(pixel)+p3:
z=(-z)^(b)+c,
|z| <= 16
}

HyperBrotI      {; Jim Muth
a=p1, b=0,0, d=real(p2),
h=imag(p2), f=p3:
g=sqr(a)-sqr(b)+pixel,
b=d*a*b+f,
a=h*g,
|a|+|b| <= 9
}

IfElse03 {; Jim Muth
z=y=pixel, a=real(p1), b=imag(p1),
c=p2+(p3*pixel), w=0:
IF(w), z=fn1(real(y))+fn2(imag(y)), w=0
ELSE, z=(y*a), w=w+1,
ENDIF,
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

JuliaPM {; Jim Muth
z=pixel, c=p1:
z=p2*((-z)^p3+z^p3)+c,
|z| <= 250
}

Mandel_4-D {; 4-D Mandelbrot, 8-D Julibrot
a=(p1), b=(0,0), d=p2+2:
z=z+1
f=sqr(a)-sqr(b)+pixel
b=d*a*b+p3
a=f
|a|+|b| <16
}

Mandel_4-Dd {; 4-D Mandelbrot, 8-D Julibrot
a=(p1), b=(0,0), d=p2+2:
f=sqr(a)-sqr(b)+pixel
b=d*a*b+p3
a=f
|a|/|b| <16
}

Mandel_4-Ddr {; 4-D Mandelbrot, 8-D Julibrot
a=(p1), b=(0,0), d=p2+2:
f=sqr(a)-sqr(b)+pixel
b=d*a*b+p3
a=f
|b|/|a| <16
}

Mandel_4-Dm  {; 4-D Mandelbrot, 8-D Julibrot
a=(p1), b=(0,0), d=p2+2:
f=sqr(a)-sqr(b)+pixel
b=d*a*b+p3
a=f
|a|*|b| <16
}

Mandel_4-Ds {; 4-D Mandelbrot, 8-D Julibrot
a=(p1), b=(0,0), d=p2+2:
f=sqr(a)-sqr(b)+pixel
b=d*a*b+p3
a=f
|a|-|b| <16
}

MandelbrotJM {; Jim Muth real(c),imag(c)
z=p1, c=pixel+p2:
z=sqr(z)+c,
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

MandelbrotMix4a {; Jim Muth
; "a" suffix added by L.StClair 3/6/99
; to differentiate this version from the one previously posted
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2), g=1/f,
h=1/d, j=1/(f-b), z=(-a*b*g*h)^j, k=real(p3)+1,
l=imag(p3)+100, c=fn1(pixel):
z=k*((a*(z^b))+(d*(z^f)))+c,
|z| < l
}

MandelbrotMix5 {; Jim Muth
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2), g=1/f,
h=1/d, j=1/(f-b), z=(-a*b*g*h)^j, c=pixel/(a*d):
z=(a*(z^b))+(d*(z^f))+c,
|z| <= 100
}

MandelbrotMix5a {; Jim Muth
; "a" suffix added by L.StClair 3/3/99
; to differentiate this version from the one previously posted
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2), g=1/f,
h=1/d, j=1/(f-b), z=(-a*b*g*h)^j, k=real(p3)+1,
l=imag(p3)+1, c=pixel:
z=k*((a*(z^b))+(d*(z^f)))+c^l,
|z| < 100
}

MandelbrotMix6 {; Jim Muth
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2), g=1/f,
h=1/d, j=1/(f-b), z=(-a*b*g*h)^j, k=real(p3)+1,
l=imag(p3)+100, c=pixel*k:
z=(a*(z^b))+(d*(z^f))+c,
|z| <= l
}

MandelbrotMix7 {; Jim Muth
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2), g=1/f,
h=1/d, j=1/(f-b), z=(-a*b*g*h)^j, k=real(p3)+1,
l=imag(p3)+100, c=pixel*k:
z=(a*((-z)^b))+(d*((-z)^f))+c,
|z| <= l
}

MandelbrotMix7a {; Jim Muth
; "a" suffix added by L.StClair 9/1/99
; to differentiate this version from the one previously posted
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2), g=1/f,
h=1/d, j=1/(f-b), z=(-a*b*g*h)^j, k=real(p3)+1,
l=imag(p3)+100, c=pixel:
z=k*((a*(z^b))+(d*(z^f)))+c,
|z| <= l
}


MandelbrotN {; Jim Muth
b=p1, z=p2, c=p3+pixel:
z=z^(b)+c,
|z| <= 16
}

MandelbrotQud {; Jim Muth
z=p3, c=pixel,
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2):
z=sqr(z)+(.2*(z*z*z))+(a*(z^b))+(d*(z^f))+c,
|z| <= 100
}

MandelPM {; Jim Muth
z=p1+10^(-100), c=pixel:
z=p2*((-z)^p3+z^p3)+c,
|z| <= 250
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

MandNewt03 {; Jim Muth
z=c=pixel:
a=z^3+(c-1)*z-c
b=p1*z^p2+c-1
z=z-p3*a/b
.0001 <= |a|
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

MandNewt07 {; Jim Muth
z=c=(pixel*p1):
a=z^3+(c-p2)*z-c
b=3*z^2+c-1
z=z-p3*a/b
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

Mandring {; Jim Muth
z=p1, c=pixel:
z=sqr(z)+fn1(c^p2)/p2
|z| <=p3
}

MixInv2waypro {; Jim Muth
z=c=pixel:
z=(-z)^p1+(p2*(-z)^p3)+c,
|z| <= 100
}

minN-XY-YWrot {; Jim Muth  M to R rotation
; real(p1)=rotation angle in degrees, imag(p1)=power of Z
; p2 and p3 rotation point and parallel planes
a=real(p1), b=imag(p1),
z=sin(a*.01745329251994)*flip(real(pixel))+p2,
c=cos(a*.01745329251994)*real(pixel)+flip(imag(pixel))+p3:
z=(-z)^b+c,
|z| <= 16
}

mult1-5-XY-ZW {; draws all 6 planes and many rotations
;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
a=(real(p1)+10^(-100))*.01745329251994,
b=imag(p1)*.01745329251994,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2,
c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
z=z^1.5+c,
|z| <= 36  }

mult1-5-XZ-YW {; Jim Muth
; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
e=exp(flip(real(p1*.01745329251994))),
f=exp(flip(imag(p1*.01745329251994))),
z=f*real(pixel)+p2, c=e*imag(pixel)+p3:
z=z^1.5+c,
|z| <= 36  }

mult2-003-XY-ZW {; draws all 6 planes and many rotations
;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
a=real((p1)+10^-100)*.01745329251994,
b=imag(p1)*.01745329251994,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2,
c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
z=z^2.003+c,
|z| <= 36  }

mult2-003-XZ-YW {; Jim Muth
; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
e=exp(flip(real(p1*.01745329251994))),
f=exp(flip(imag(p1*.01745329251994))),
z=f*real(pixel)+p2, c=e*imag(pixel)+p3:
z=z^2.003+c,
|z| <= 36  }

mult2-5-XZ-YW {; Jim Muth
; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
e=exp(flip(real(p1*.01745329251994))),
f=exp(flip(imag(p1*.01745329251994))),
z=f*real(pixel)+p2, c=e*imag(pixel)+p3:
z=z^2.5+c,
|z| <= 36  }

multicub-XZ-YW {; Jim Muth
; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
e=exp(flip(real(p1*.01745329251994))),
f=exp(flip(imag(p1*.01745329251994))),
z=f*real(pixel)+p2, c=e*imag(pixel)+p3:
z=z*z*z+c,
|z| <= 36  }

multirot-XY-ZW {; draws all 6 planes and many rotations
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

multirot03-XY-ZW {; draws 6 planes and many rotations
;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2,
c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
z=z*z*z+c,
|z| <= 36  }

multirot04-XY-ZW {; draws 6 planes and many rotations
;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2,
c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
z=sqr(sqr(z))+c,
|z| <= 36  }

multirot04-XZ-YW {; Jim Muth
; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
e=exp(flip(real(p1*.01745329251994))),
f=exp(flip(imag(p1*.01745329251994))),
z=f*real(pixel)+p2, c=e*imag(pixel)+p3:
z=sqr(sqr(z))+c,
|z| <= 36  }

multirot05-XZ-YW {; Jim Muth
; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
e=exp(flip(real(p1*.01745329251994))),
f=exp(flip(imag(p1*.01745329251994))),
z=f*real(pixel)+p2, c=e*imag(pixel)+p3:
z=z*(sqr(sqr(z)))+c,
|z| <= 36  }

multirot06-XZ-YW {; Jim Muth
; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
e=exp(flip(real(p1*.01745329251994))),
f=exp(flip(imag(p1*.01745329251994))),
z=f*real(pixel)+p2, c=e*imag(pixel)+p3:
z=sqr(z)*sqr(sqr(z))+c,
|z| <= 36  }

multirot07-XY-ZW {; draws 6 planes and many rotations
;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2,
c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
z=z*(sqr(z)*sqr(sqr(z)))+c,
|z| <= 36  }

multmin1-5-XY-ZW {; draws 6 planes and many rotations
;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
a=(real(p1)+10^(-100))*.01745329251994,
b=imag(p1)*.01745329251994,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2,
c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
z=(-z)^1.5+c,
|z| <= 36  }

multmin3-5-XZ-YW {; Jim Muth
; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
e=exp(flip(real(p1*.01745329251994))),
f=exp(flip(imag(p1*.01745329251994))),
z=f*real(pixel)+p2, c=e*imag(pixel)+p3:
z=(-z)^3.5+c,
|z| < 36  }

Mystic2 {; Jim Muth
a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), k=real(p3), f=imag(p3),
g=pixel, z=(pixel)^a+(b*(pixel))^c:
z=(fn1(z)+(d*(g)))^k+(f*(cos(g)))
g=sqr(g),
LastSqr <= 100
}

Mytest04  {; Jim Muth
z=c=pixel, a=p3^(-p3):
z=((z+p1)^p2)^a+c,
|z|<=100
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

OblateMiN {; Jim Muth
b=p1, z=real(pixel)+p2,
c=flip(imag(pixel))+p3:
z=(-z)^(b)+c,
|z| <= 16
}

ObliqueManPlus {;Jim Muth
z=p1+pixel, c=p2+(p3*pixel):
z=sqr(z)+c,
|z| <=100
}

ObliqueMixPlus {;Jim Muth
z=p1+pixel, c=p2+(p3*pixel):
z=sqr(z)+(0.2*(z*z*z))+c,
|z| <=100
}

OblateN {; Jim Muth
b=p1, z=real(pixel)+p2,
c=flip(imag(pixel))+p3:
z=z^(b)+c,
|z| <= 16
}

Parabolic {; Jim Muth  real(z),real(c)
z=imag(pixel)+p1,
c=real(pixel)+p2:
z=sqr(z)+c,
|z| <= 16
}

Rectangular {; Jim Muth  imag(z),imag(c)
z=flip(real(pixel))+p1,
c=flip(imag(pixel))+p2:
z=sqr(z)+c,
|z| <= 16
}

RectangularMiN {; Jim Muth
b=p1, z=flip(real(pixel))+p2,
c=flip(imag(pixel))+p3:
z=(-z)^(b)+c,
|z| <= 16
}

RectangularMix {; Jim Muth
z=flip(real(pixel))+real(p3),
c=flip(imag(pixel))+imag(p3),
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2):
z=(a*(z^b))+(d*(z^f))+c,
|z| <= 100
}

Test11 {; Jim Muth
z=c=pixel:
a=z^p1+(c-1)*z-c
b=3*z^p2+c-1
z=z-p3*a/b
.000000000000000000000000000001 <= |a|
}

Test14 {; Jim Muth
z=c=pixel:
a=z^3+(c-p2)*z-c
b=p1*z^2+c-1
z=z-1*a/b
p3 <= |a|
}

Test0035 {; Jim Muth
a=real(p1), b=imag(p1), d=real(p3), f=imag(p3),
z=p2, c=fn1(pixel^b)/b:
z=z^a+(d*z^f)+c,
|z| <=100
}

Test0323       { ; Jim Muth
z=p1, c=pixel:
z=z*c^fn1(z),
|z| <16  }

Test0622       { ; Jim Muth
z=p1, c=fn1(pixel)+p2:
z=sqr(z)+c
|z| <16  }

TowerMinExp02 {; Jim Muth
z=pixel, c=p2+(p3*pixel):
z=z^(-z^(z+p1))+c,
|z| <= 100
}

TowerMinExp12 {; Jim Muth
z=pixel, c=p2+(p3*pixel):
z=z^(-z^(-z^(-z^(z^(z^(z^(z^(-z^(z^(z^\
(-z^(-z+p1))))))))))))+c,
|z| <= 100
}


