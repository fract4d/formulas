

S02-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (Euler method)
        ;
        ; S(n+1) = xS(n)-S(n-1)
        ; S(0)  = 1
        ; S(1)  = x
        ;
        ; = zS01-S00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*x-1
  Ty=y*y-1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


S02-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; Chebyshev Types:
                 ; Inspired by Clifford A. Pickover:
                 ; Dynamic
                 ;
                 ; S(n+1) = xS(n)-S(n-1)
                 ; S(0)  = 1
                 ; S(1)  = x
                 ;
                 ; = zS01-S00
  bailout=p1+4, z=pixel:
  z=z*z-1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


S02-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Julia)
        ;
        ; S(n+1) = xS(n)-S(n-1)
        ; S(0)  = 1
        ; S(1)  = x
        ;
        ; = zS01-S00
  const=p1-1, z=pixel:
  z=z*z+const
  |z|<100
  ;SOURCE: chby3.frm
}


S02-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Mandelbrot)
        ;
        ; S(n+1) = xS(n)-S(n-1)
        ; S(0)  = 1
        ; S(1)  = x
        ;
        ; = zS01-S00
  const=pixel-1, z=p1:
  z=z*z+const
  |z|<100
  ;SOURCE: chby4.frm
}


S02-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Newton Method
        ;
        ; S(n+1) = zS(n)-S(n-1)
        ; S(0)  = 1
        ; S(1)  = z
        ;
        ; = zS01-S00
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*z-1
  fd=2*z
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


S02-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Halley Method
        ;
        ; S(n+1) = zS(n)-S(n-1)
        ; S(0)  = 1
        ; S(1)  = z
        ;
        ; = zS01-S00
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*z-1
  fd=z+z
  fdd=2
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


S02-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; Chebyshev Types:
                 ; Inspired by Bradley Beacham
                 ; Cubic Method
                 ;
                 ; S(n+1) = zS(n)-S(n-1)
                 ; S(0)  = 1
                 ; S(1)  = z
                 ;
                 ; = zS01-S00
  bailout=real(p2)/10000, z=pixel:
  f=z*z-1
  fd=z+z
  oz=z
  w=z-f/fd
  fw=w*w-1
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


S02-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler method)
        ;
        ; S(n+1) = xS(n)-S(n-1)
        ; S(0)  = 1
        ; S(1)  = x
        ;
        ; = zS01-S00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(x*x-1)
  Ty=sin(y*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


S02-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler Method)
        ;
        ; S(n+1) = xS(n)-S(n-1)
        ; S(0)  = 1
        ; S(1)  = x
        ;
        ; = zS01-S00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*x-1)
  Ty=fn1(y*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


S02-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Mike Wareman:
        ; Secant Method
        ;
        ; S(n+1) = zS(n)-S(n-1)
        ; S(0)  = 1
        ; S(1)  = z
        ;
        ; = zS01-S00
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*p1-1:
  zt=z
  foz=fz
  fz=z*z-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


S02-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Julia)
        ;
        ; S(n+1) = xS(n)-S(n-1)
        ; S(0)  = 1
        ; S(1)  = x
        ;
        ; = zS01-S00
  const=p1, z=pixel:
  z=(z*z-1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


S02-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Mandelbrot)
        ;
        ; S(n+1) = xS(n)-S(n-1)
        ; S(0)  = 1
        ; S(1)  = x
        ;
        ; = zS01-S00
  const=pixel, z=p1:
  z=(z*z-1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


S02-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Halley Method with weird bailout test
        ;
        ; S(n+1) = zS(n)-S(n-1)
        ; S(0)  = 1
        ; S(1)  = z
        ;
        ; = zS01-S00
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*z-1
  fd=2*z
  fdd=2
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


S02-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; Chebyshev Types:
                 ; Inspired by Bradley Beacham
                 ; Cubic Method with weird bailout test
                 ;
                 ; S(n+1) = zS(n)-S(n-1)
                 ; S(0)  = 1
                 ; S(1)  = z
                 ;
                 ; = zS01-S00
  bailout=real(p2)/10000, z=pixel:
  f=z*z-1
  fd=z+z
  oz=z
  w=z-f/fd
  fw=w*w-1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


S02-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Newton Method with weird bailout test
        ;
        ; S(n+1) = zS(n)-S(n-1)
        ; S(0)  = 1
        ; S(1)  = z
        ;
        ; = zS01-S00
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*z-1
  fd=2*z
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


S02-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Mike Wareman:
        ; Secant Method with weird bailout test
        ;
        ; S(n+1) = zS(n)-S(n-1)
        ; S(0)  = 1
        ; S(1)  = z
        ;
        ; = zS01-S00
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*p1-1:
  zt=z
  foz=fz
  fz=z*z-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


S02-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Mike Wareman
        ; Secant Method with Girvan perturbations and weird bailout test
        ;
        ; S(n+1) = zS(n)-S(n-1)
        ; S(0)  = 1
        ; S(1)  = z
        ;
        ; = zS01-S00
  z=pixel, oz=0
  fz=-1
  zt=fn1(z)+p1:
  foz=fz
  fz=z*z-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


S02-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Mike Wareman
        ; Secant Method with Girvan perturbations and weird bailout test
        ;
        ; S(n+1) = zS(n)-S(n-1)
        ; S(0)  = 1
        ; S(1)  = z
        ;
        ; = zS01-S00
  z=pixel, oz=0
  fz=-1
  zt=fn1(z)+p1:
  foz=fz
  fz=z*z-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


S02-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (Implicit Euler method)
        ;
        ; S(n+1) = xS(n)-S(n-1)
        ; S(0)  = 1
        ; S(1)  = x
        ;
        ; = zS01-S00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(x*x-1)
  x=x-t*(y*y-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


S02-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler method)
        ;
        ; S(n+1) = xS(n)-S(n-1)
        ; S(0)  = 1
        ; S(1)  = x
        ;
        ; = zS01-S00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(x*x-1)
  x=x-t*sin(y*y-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


S02-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler method)
        ;
        ; S(n+1) = xS(n)-S(n-1)
        ; S(0)  = 1
        ; S(1)  = x
        ;
        ; = zS01-S00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*x-1))
  x=x-t*(fn1(y*y-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


S02-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler method)
        ;
        ; S(n+1) = xS(n)-S(n-1)
        ; S(0)  = 1
        ; S(1)  = x
        ;
        ; = zS01-S00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*x-1)
  Ty=fn2(y*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


S02-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler method)
        ;
        ; S(n+1) = xS(n)-S(n-1)
        ; S(0)  = 1
        ; S(1)  = x
        ;
        ; = zS01-S00
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(x*x-1)
  Ty=fn2(y*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


S02-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler Method)
        ;
        ; S(n+1) = xS(n)-S(n-1)
        ; S(0)  = 1
        ; S(1)  = x
        ;
        ; = zS01-S00
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*x-1))
  x=x-t*(fn2(y*y-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


S02-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler Method)
        ;
        ; S(n+1) = xS(n)-S(n-1)
        ; S(0)  = 1
        ; S(1)  = x
        ;
        ; = zS01-S00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*x-1))
  x=x-t*(fn2(y*y-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


S02-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Kathy Roth:
        ; Dynamic (modified implicit Euler Method, gravitated)
        ;
        ; S[0] = 1
        ; S[1] = z
        ; S[n+1] = zS[n]-S[n-1]
        ;
        ; = zS01-S00
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(x*x-1))
  Ty=(fn1(y*y-1))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


S02-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Kathy Roth:
        ; Dynamic (modified implicit Euler Method, popped)
        ;
        ; S[0] = 1
        ; S[1] = z
        ; S[n+1] = zS[n]-S[n-1]
        ;
        ; = zS01-S00
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(x*x-1))
  Ty=(fn1(y*y-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


S02-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Kathy Roth:
        ; Dynamic (modified implicit Euler Method, popped)
        ;
        ; S[0] = 1
        ; S[1] = z
        ; S[n+1] = zS[n]-S[n-1]
        ;
        ; = zS01-S00
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(x*x-1))
  Ty=(fn1(y*y-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


S02-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler method, Sylvie Gallet test)
        ;
        ; S[0] = 1
        ; S[1] = z
        ; S[n+1] = zS[n]-S[n-1]
        ;
        ; = zS01-S00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1(x*x-1))
  Ty=(fn1(y*y-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30  
  ;SOURCE: chby29.frm
}


S02-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Ray Parracho:
        ; Regula-Falsi Method
        ;
        ; S[0] = 1
        ; S[1] = z
        ; S[n+1] = zS[n]-S[n-1]
        ;
        ; = zS01-S00
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*x0-1
  Fx1=x1*x1-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


S03-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(x*x-2)
  Ty=y*(y*y-2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


S03-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS02-S01
  bailout=p1+4, z=pixel:
  z=z*(z*z-2)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


S03-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  const=p1, z=pixel:
  z=z*(z*z-2)+const
  |z|<100
  ;SOURCE: chby3.frm
}


S03-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  const=pixel, z=p1:
  z=z*(z*z-2)+const
  |z|<100
  ;SOURCE: chby4.frm
}


S03-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz-2)
  fd=3*zz-2
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


S03-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz-2)
  fd=3*zz-2
  fdd=6*z
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


S03-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS02-S01
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz-2)
  fd=3*zz-2
  oz=z
  w=z-f/fd
  fw=w*(w*w-2)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


S03-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(x*(x*x-2))
  Ty=sin(y*(y*y-2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


S03-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*x-2))
  Ty=fn1(y*(y*y-2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


S03-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(p1*p1-2):
  zt=z
  foz=fz
  fz=z*(z*z-2)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


S03-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  const=p1, z=pixel:
  z=z*(z*z-2)*const
  |z|<100
  ;SOURCE: chby11.frm
}


S03-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  const=pixel, z=p1:
  z=z*(z*z-2)*const
  |z|<100
  ;SOURCE: chby12.frm
}


S03-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz-2)
  fd=3*zz-2
  fdd=6*z
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


S03-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS02-S01
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz-2)
  fd=3*zz-2
  oz=z
  w=z-f/fd
  fw=w*(w*w-2)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


S03-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz-2)
  fd=3*zz-2
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


S03-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(p1*p1-2):
  zt=z
  foz=fz
  fz=z*(z*z-2)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


S03-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*z-2)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


S03-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*z-2)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


S03-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(x*(x*x-2))
  x=x-t*(y*(y*y-2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


S03-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(x*(x*x-2))
  x=x-t*sin(y*(y*y-2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


S03-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*x-2)))
  x=x-t*(fn1(y*(y*y-2)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


S03-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*x-2))
  Ty=fn2(y*(y*y-2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


S03-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*x-2))
  Ty=fn2(y*(y*y-2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


S03-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*x-2)))
  x=x-t*(fn2(y*(y*y-2)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


S03-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*x-2)))
  x=x-t*(fn2(y*(y*y-2)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


S03-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*x-2)))
  Ty=(fn1(y*(y*y-2)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


S03-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*x-2)))
  Ty=(fn1(y*(y*y-2)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


S03-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*x-2)))
  Ty=(fn1(y*(y*y-2)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


S03-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*x-2)))
  Ty=(fn1(y*(y*y-2)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


S03-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*x0-2)
  Fx1=x1*(x1*x1-2)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


S04-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=xx*(xx-3)+1
  Ty=yy*(yy-3)+1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


S04-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS03-S02
  bailout=p1+4, z=pixel:
  zz=z*z
  z=zz*(zz-3)+1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


S04-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  const=p1+1, z=pixel:
  zz=z*z
  z=zz*(zz-3)+const
  |z|<100
  ;SOURCE: chby3.frm
}


S04-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  const=pixel+1, z=p1:
  zz=z*z
  z=zz*(zz-3)+const
  |z|<100
  ;SOURCE: chby4.frm
}


S04-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz-3)+1
  fd=2*z*(2*zz-3)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


S04-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz-3)+1
  fd=(z+z)*(zz+zz-3)
  fdd=6*(zz+zz-1)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


S04-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS03-S02
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz-3)+1
  fd=(z+z)*(zz+zz-3)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww-3)+1
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


S04-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(xx*(xx-3)+1)
  Ty=sin(yy*(yy-3)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


S04-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx-3)+1)
  Ty=fn1(yy*(yy-3)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


S04-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz-3)+1:
  zz=z*z
  zt=z
  foz=fz
  fz=zz*(zz-3)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


S04-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  const=p1, z=pixel:
  zz=z*z
  z=(zz*(zz-3)+1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


S04-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  const=pixel, z=p1:
  zz=z*z
  z=(zz*(zz-3)+1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


S04-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz-3)+1
  fd=2*z*(2*zz-3)
  fdd=6*(2*zz-1)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


S04-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS03-S02
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz-3)+1
  fd=(z+z)*(zz+zz-3)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww-3)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


S04-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz-3)+1
  fd=2*z*(2*zz-3)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


S04-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz-3)+1:
  zz=z*z
  zt=z
  foz=fz
  fz=zz*(zz-3)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


S04-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  z=pixel, oz=0
  fz=1
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=zz*(zz-3)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


S04-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  z=pixel, oz=0
  fz=1
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=zz*(zz-3)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


S04-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(xx*(xx-3)+1)
  yy=y*y
  x=x-t*(yy*(yy-3)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


S04-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(xx*(xx-3)+1)
  yy=y*y
  x=x-t*sin(yy*(yy-3)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


S04-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx-3)+1))
  yy=y*y
  x=x-t*(fn1(yy*(yy-3)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


S04-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx-3)+1)
  Ty=fn2(yy*(yy-3)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


S04-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx-3)+1)
  Ty=fn2(yy*(yy-3)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


S04-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx-3)+1))
  yy=y*y
  x=x-t*(fn2(yy*(yy-3)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


S04-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx-3)+1))
  yy=y*y
  x=x-t*(fn2(yy*(yy-3)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


S04-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(xx*(xx-3)+1))
  yy=y*y
  Ty=(fn1(yy*(yy-3)+1))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


S04-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(xx*(xx-3)+1))
  yy=y*y
  Ty=(fn1(yy*(yy-3)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


S04-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(xx*(xx-3)+1))
  yy=y*y
  Ty=(fn1(yy*(yy-3)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


S04-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(xx*(xx-3)+1))
  yy=y*y
  Ty=(fn1(yy*(yy-3)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


S04-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=xx*(xx-3)+1
  Fx1=yy*(yy-3)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


S05-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=x*(xx*(xx-4)+3)
  Ty=y*(yy*(yy-4)+3)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


S05-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS04-S03
  bailout=p1+4, z=pixel:
  zz=z*z
  z=z*(zz*(zz-4)+3)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


S05-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  const=p1, z=pixel:
  zz=z*z
  z=z*(zz*(zz-4)+3)+const
  |z|<100
  ;SOURCE: chby3.frm
}


S05-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  const=pixel, z=p1:
  zz=z*z
  z=z*(zz*(zz-4)+3)+const
  |z|<100
  ;SOURCE: chby4.frm
}


S05-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz-4)+3)
  fd=zz*(5*zz-12)+3
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


S05-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz-4)+3)
  fd=zz*(5*zz-12)+3
  fdd=4*z*(5*zz-6)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


S05-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS04-S03
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz-4)+3)
  fd=zz*(5*zz-12)+3
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(ww*(ww-4)+3)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


S05-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(x*(xx*(xx-4)+3))
  Ty=sin(y*(yy*(yy-4)+3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


S05-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(xx*(xx-4)+3))
  Ty=fn1(y*(yy*(yy-4)+3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


S05-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(zz*(zz-4)+3):
  zz=z*z
  zt=z
  foz=fz
  fz=z*(zz*(zz-4)+3)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


S05-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  const=p1, z=pixel:
  zz=z*z
  z=z*(zz*(zz-4)+3)*const
  |z|<100
  ;SOURCE: chby11.frm
}


S05-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  const=pixel, z=p1:
  zz=z*z
  z=z*(zz*(zz-4)+3)*const
  |z|<100
  ;SOURCE: chby12.frm
}


S05-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz-4)+3)
  fd=zz*(5*zz-12)+3
  fdd=4*z*(5*zz-6)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


S05-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS04-S03
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz-4)+3)
  fd=zz*(5*zz-12)+3
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(ww*(ww-4)+3)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


S05-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz-4)+3)
  fd=zz*(5*zz-12)+3
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


S05-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(zz*(zz-4)+3):
  zz=z*z
  zt=z
  foz=fz
  fz=z*(zz*(zz-4)+3)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


S05-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(zz*(zz-4)+3)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


S05-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(zz*(zz-4)+3)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


S05-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(x*(xx*(xx-4)+3))
  yy=y*y
  x=x-t*(y*(yy*(yy-4)+3))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


S05-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(x*(xx*(xx-4)+3))
  yy=y*y
  x=x-t*sin(y*(yy*(yy-4)+3))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


S05-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx-4)+3)))
  yy=y*y
  x=x-t*(fn1(y*(yy*(yy-4)+3)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


S05-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(xx*(xx-4)+3))
  Ty=fn2(y*(yy*(yy-4)+3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


S05-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(xx*(xx-4)+3))
  Ty=fn2(y*(yy*(yy-4)+3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


S05-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx-4)+3)))
  yy=y*y
  x=x-t*(fn2(y*(yy*(yy-4)+3)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


S05-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx-4)+3)))
  yy=y*y
  x=x-t*(fn2(y*(yy*(yy-4)+3)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


S05-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(x*(xx*(xx-4)+3)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy-4)+3)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


S05-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(x*(xx*(xx-4)+3)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy-4)+3)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


S05-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(x*(xx*(xx-4)+3)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy-4)+3)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


S05-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(x*(xx*(xx-4)+3)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy-4)+3)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


S05-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=x0*(xx*(xx-4)+3)
  Fx1=x1*(yy*(yy-4)+3)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


S06-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=xx*(xx*(xx-5)+6)-1
  Ty=yy*(yy*(yy-5)+6)-1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


S06-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS05-S04
  bailout=p1+4, z=pixel:
  zz=z*z
  z=zz*(zz*(zz-5)+6)-1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


S06-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  const=p1-1, z=pixel:
  zz=z*z
  z=zz*(zz*(zz-5)+6)+const
  |z|<100
  ;SOURCE: chby3.frm
}


S06-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  const=pixel-1, z=p1:
  zz=z*z
  z=zz*(zz*(zz-5)+6)+const
  |z|<100
  ;SOURCE: chby4.frm
}


S06-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz-5)+6)-1
  fd=2*z*(zz*(3*zz-10)+6)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


S06-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz-5)+6)-1
  fd=(z+z)*(zz*(3*zz-10)+6)
  fdd=6*(5*zz*(zz-2)+2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


S06-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS05-S04
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz-5)+6)-1
  fd=(z+z)*(zz*(3*zz-10)+6)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww*(ww-5)+6)-1
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


S06-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(xx*(xx*(xx-5)+6)-1)
  Ty=sin(yy*(yy*(yy-5)+6)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


S06-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx*(xx-5)+6)-1)
  Ty=fn1(yy*(yy*(yy-5)+6)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


S06-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz*(zz-5)+6)-1:
  zz=z*z
  zt=z
  foz=fz
  fz=zz*(zz*(zz-5)+6)-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


S06-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  const=p1, z=pixel:
  zz=z*z
  z=(zz*(zz*(zz-5)+6)-1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


S06-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  const=pixel, z=p1:
  zz=z*z
  z=(zz*(zz*(zz-5)+6)-1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


S06-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz-5)+6)-1
  fd=2*z*(zz*(3*zz-10)+6)
  fdd=6*(5*zz*(zz-2)+2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


S06-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS05-S04
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz-5)+6)-1
  fd=(z+z)*(zz*(3*zz-10)+6)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww*(ww-5)+6)-1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


S06-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz-5)+6)-1
  fd=2*z*(zz*(3*zz-10)+6)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


S06-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz*(zz-5)+6)-1:
  zz=z*z
  zt=z
  foz=fz
  fz=zz*(zz*(zz-5)+6)-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


S06-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  z=pixel, oz=0
  fz=-1
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=zz*(zz*(zz-5)+6)-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


S06-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  z=pixel, oz=0
  fz=-1
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=zz*(zz*(zz-5)+6)-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


S06-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(xx*(xx*(xx-5)+6)-1)
  yy=y*y
  x=x-t*(yy*(yy*(yy-5)+6)-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


S06-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(xx*(xx*(xx-5)+6)-1)
  yy=y*y
  x=x-t*sin(yy*(yy*(yy-5)+6)-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


S06-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx-5)+6)-1))
  yy=y*y
  x=x-t*(fn1(yy*(yy*(yy-5)+6)-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


S06-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx*(xx-5)+6)-1)
  Ty=fn2(yy*(yy*(yy-5)+6)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


S06-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx*(xx-5)+6)-1)
  Ty=fn2(yy*(yy*(yy-5)+6)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


S06-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx-5)+6)-1))
  yy=y*y
  x=x-t*(fn2(yy*(yy*(yy-5)+6)-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


S06-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx-5)+6)-1))
  yy=y*y
  x=x-t*(fn2(yy*(yy*(yy-5)+6)-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


S06-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(xx*(xx*(xx-5)+6)-1))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy-5)+6)-1))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


S06-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(xx*(xx*(xx-5)+6)-1))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy-5)+6)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


S06-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(xx*(xx*(xx-5)+6)-1))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy-5)+6)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


S06-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(xx*(xx*(xx-5)+6)-1))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy-5)+6)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30  
  ;SOURCE: chby29.frm
}


S06-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=xx*(xx*(xx-5)+6)-1
  Fx1=yy*(yy*(yy-5)+6)-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


S07-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=x*(xx*(xx*(xx-6)+10)-4)
  Ty=y*(yy*(yy*(yy-6)+10)-4)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


S07-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS06-S05
  bailout=p1+4, z=pixel:
  zz=z*z
  z=z*(zz*(zz*(zz-6)+10)-4)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


S07-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  const=p1, z=pixel:
  zz=z*z
  z=z*(zz*(zz*(zz-6)+10)-4)+const
  |z|<100
  ;SOURCE: chby3.frm
}


S07-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  const=pixel, z=p1:
  zz=z*z
  z=z*(zz*(zz*(zz-6)+10)-4)+const
  |z|<100
  ;SOURCE: chby4.frm
}


S07-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz-6)+10)-4)
  fd=zz*(zz*(7*zz-30)+30)-4
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


S07-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz-6)+10)-4)
  fd=zz*(zz*(7*zz-30)+30)-4
  fdd=6*z*(zz*(7*zz-20)+10)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


S07-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS06-S05
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz-6)+10)-4)
  fd=zz*(zz*(7*zz-30)+30)-4
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(ww*(ww*(ww-6)+10)-4)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


S07-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(x*(xx*(xx*(xx-6)+10)-4))
  Ty=sin(y*(yy*(yy*(yy-6)+10)-4))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


S07-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(xx*(xx*(xx-6)+10)-4))
  Ty=fn1(y*(yy*(yy*(yy-6)+10)-4))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


S07-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(zz*(zz*(zz-6)+10)-4):
  zz=z*z
  zt=z
  foz=fz
  fz=z*(zz*(zz*(zz-6)+10)-4)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


S07-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  const=p1, z=pixel:
  zz=z*z
  z=(z*(zz*(zz*(zz-6)+10)-4))*const
  |z|<100
  ;SOURCE: chby11.frm
}


S07-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  const=pixel, z=p1:
  zz=z*z
  z=(z*(zz*(zz*(zz-6)+10)-4))*const
  |z|<100
  ;SOURCE: chby12.frm
}


S07-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz-6)+10)-4)
  fd=zz*(zz*(7*zz-30)+30)-4
  fdd=6*z*(zz*(7*zz-20)+10)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


S07-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS06-S05
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz-6)+10)-4)
  fd=zz*(zz*(7*zz-30)+30)-4
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(ww*(ww*(ww-6)+10)-4)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


S07-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz-6)+10)-4)
  fd=zz*(zz*(7*zz-30)+30)-4
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


S07-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(zz*(zz*(zz-6)+10)-4):
  zz=z*z
  zt=z
  foz=fz
  fz=z*(zz*(zz*(zz-6)+10)-4)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


S07-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(zz*(zz*(zz-6)+10)-4)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


S07-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(zz*(zz*(zz-6)+10)-4)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


S07-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(x*(xx*(xx*(xx-6)+10)-4))
  yy=y*y
  x=x-t*(y*(yy*(yy*(yy-6)+10)-4))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


S07-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(x*(xx*(xx*(xx-6)+10)-4))
  yy=y*y, x=x-t*sin(y*(yy*(yy*(yy-6)+10)-4))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


S07-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx*(xx-6)+10)-4)))
  yy=y*y
  x=x-t*(fn1(y*(yy*(yy*(yy-6)+10)-4)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


S07-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(xx*(xx*(xx-6)+10)-4))
  Ty=fn2(y*(yy*(yy*(yy-6)+10)-4))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


S07-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(xx*(xx*(xx-6)+10)-4))
  Ty=fn2(y*(yy*(yy*(yy-6)+10)-4))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


S07-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx*(xx-6)+10)-4)))
  yy=y*y
  x=x-t*(fn2(y*(yy*(yy*(yy-6)+10)-4)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


S07-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx*(xx-6)+10)-4)))
  yy=y*y
  x=x-t*(fn2(y*(yy*(yy*(yy-6)+10)-4)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


S07-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(x*(xx*(xx*(xx-6)+10)-4)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy*(yy-6)+10)-4)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


S07-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(x*(xx*(xx*(xx-6)+10)-4)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy*(yy-6)+10)-4)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


S07-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(x*(xx*(xx*(xx-6)+10)-4)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy*(yy-6)+10)-4)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


S07-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(x*(xx*(xx*(xx-6)+10)-4)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy*(yy-6)+10)-4)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


S07-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=x0*(xx*(xx*(xx-6)+10)-4)
  Fx1=x1*(yy*(yy*(yy-6)+10)-4)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


S08-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=xx*(xx*(xx*(xx-7)+15)-10)+1
  Ty=yy*(yy*(yy*(yy-7)+15)-10)+1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


S08-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS07-S06
  bailout=p1+4, z=pixel:
  zz=z*z
  z=zz*(zz*(zz*(zz-7)+15)-10)+1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


S08-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  const=p1+1, z=pixel:
  zz=z*z
  z=zz*(zz*(zz*(zz-7)+15)-10)+const
  |z|<100
  ;SOURCE: chby3.frm
}


S08-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  const=pixel+1, z=p1:
  zz=z*z
  z=zz*(zz*(zz*(zz-7)+15)-10)+const
  |z|<100
  ;SOURCE: chby4.frm
}


S08-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz-7)+15)-10)+1
  fd=2*z*(zz*(zz*(4*zz-21)+30)-10)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


S08-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  f=zz*(zz*(zz*(zz-7)+15)-10)+1
  fd=(z+z)*(zz*(zz*(a-21)+30)-10)
  fdd=(zz+zz)*(7*zz*(a-15)+90)-20
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


S08-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS07-S06
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz-7)+15)-10)+1
  fd=(z+z)*(zz*(zz*(4*zz-21)+30)-10)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww*(ww*(ww-7)+15)-10)+1
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


S08-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(xx*(xx*(xx*(xx-7)+15)-10)+1)
  Ty=sin(yy*(yy*(yy*(yy-7)+15)-10)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


S08-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx*(xx*(xx-7)+15)-10)+1)
  Ty=fn1(yy*(yy*(yy*(yy-7)+15)-10)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


S08-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz*(zz*(zz-7)+15)-10)+1:
  zz=z*z
  zt=z
  foz=fz
  fz=zz*(zz*(zz*(zz-7)+15)-10)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


S08-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  const=p1, z=pixel:
  zz=z*z
  z=(zz*(zz*(zz*(zz-7)+15)-10)+1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


S08-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  const=pixel, z=p1:
  zz=z*z
  z=(zz*(zz*(zz*(zz-7)+15)-10)+1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


S08-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  f=zz*(zz*(zz*(zz-7)+15)-10)+1
  fd=2*z*(zz*(zz*(a-21)+30)-10)
  fdd=2*zz*(7*zz*(a-15)+90)-20
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


S08-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS07-S06
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz-7)+15)-10)+1
  fd=(z+z)*(zz*(zz*(4*zz-21)+30)-10)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww*(ww*(ww-7)+15)-10)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


S08-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz-7)+15)-10)+1
  fd=2*z*(zz*(zz*(4*zz-21)+30)-10)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


S08-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz*(zz*(zz-7)+15)-10)+1:
  zz=z*z
  zt=z
  foz=fz
  fz=zz*(zz*(zz*(zz-7)+15)-10)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


S08-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  z=pixel, oz=0
  fz=1
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=zz*(zz*(zz*(zz-7)+15)-10)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


S08-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  z=pixel, oz=0
  fz=1
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=zz*(zz*(zz*(zz-7)+15)-10)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


S08-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(xx*(xx*(xx*(xx-7)+15)-10)+1)
  yy=y*y
  x=x-t*(yy*(yy*(yy*(yy-7)+15)-10)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


S08-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(xx*(xx*(xx*(xx-7)+15)-10)+1)
  yy=y*y
  x=x-t*sin(yy*(yy*(yy*(yy-7)+15)-10)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


S08-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx*(xx-7)+15)-10)+1))
  yy=y*y
  x=x-t*(fn1(yy*(yy*(yy*(yy-7)+15)-10)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


S08-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx*(xx*(xx-7)+15)-10)+1)
  Ty=fn2(yy*(yy*(yy*(yy-7)+15)-10)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


S08-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx*(xx*(xx-7)+15)-10)+1)
  Ty=fn2(yy*(yy*(yy*(yy-7)+15)-10)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


S08-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx*(xx-7)+15)-10)+1))
  yy=y*y
  x=x-t*(fn2(yy*(yy*(yy*(yy-7)+15)-10)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


S08-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx*(xx-7)+15)-10)+1))
  yy=y*y
  x=x-t*(fn2(yy*(yy*(yy*(yy-7)+15)-10)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


S08-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(xx*(xx*(xx*(xx-7)+15)-10)+1))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy*(yy-7)+15)-10)+1))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


S08-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(xx*(xx*(xx*(xx-7)+15)-10)+1))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy*(yy-7)+15)-10)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


S08-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(xx*(xx*(xx*(xx-7)+15)-10)+1))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy*(yy-7)+15)-10)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


S08-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(xx*(xx*(xx*(xx-7)+15)-10)+1))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy*(yy-7)+15)-10)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


S08-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=xx*(xx*(xx*(xx-7)+15)-10)+1
  Fx1=yy*(yy*(yy*(yy-7)+15)-10)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


S09-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=x*(xx*(xx*(xx*(xx-8)+21)-20)+5)
  Ty=y*(yy*(yy*(yy*(yy-8)+21)-20)+5)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


S09-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS08-S07
  bailout=p1+4, z=pixel:
  zz=z*z
  z=z*(zz*(zz*(zz*(zz-8)+21)-20)+5)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


S09-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  const=p1, z=pixel:
  zz=z*z
  z=z*(zz*(zz*(zz*(zz-8)+21)-20)+5)+const
  |z|<100
  ;SOURCE: chby3.frm
}


S09-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  const=pixel, z=p1:
  zz=z*z
  z=z*(zz*(zz*(zz*(zz-8)+21)-20)+5)+const
  |z|<100
  ;SOURCE: chby4.frm
}


S09-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz*(zz-8)+21)-20)+5)
  fd=zz*(zz*(zz*(9*zz-56)+105)-60)+5
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


S09-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz*(zz-8)+21)-20)+5)
  fd=zz*(zz*(zz*(9*zz-56)+105)-60)+5
  fdd=12*z*(zz*((zz+zz)*(3*zz-14)+35)-10)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


S09-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS08-S07
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz*(zz-8)+21)-20)+5)
  fd=zz*(zz*(zz*(9*zz-56)+105)-60)+5
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(ww*(ww*(ww*(ww-8)+21)-20)+5)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


S09-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(x*(xx*(xx*(xx*(xx-8)+21)-20)+5))
  Ty=sin(y*(yy*(yy*(yy*(yy-8)+21)-20)+5))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


S09-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(xx*(xx*(xx*(xx-8)+21)-20)+5))
  Ty=fn1(y*(yy*(yy*(yy*(yy-8)+21)-20)+5))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


S09-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(zz*(zz*(zz*(zz-8)+21)-20)+5):
  zz=z*z
  zt=z
  foz=fz
  fz=z*(zz*(zz*(zz*(zz-8)+21)-20)+5)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


S09-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  const=p1, z=pixel:
  zz=z*z
  z=z*(zz*(zz*(zz*(zz-8)+21)-20)+5)*const
  |z|<100
  ;SOURCE: chby11.frm
}


S09-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  const=pixel, z=p1:
  zz=z*z
  z=z*(zz*(zz*(zz*(zz-8)+21)-20)+5)*const
  |z|<100
  ;SOURCE: chby12.frm
}


S09-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz*(zz-8)+21)-20)+5)
  fd=zz*(zz*(zz*(9*zz-56)+105)-60)+5
  fdd=12*z*(zz*(2*zz*(3*zz-14)+35)-10)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


S09-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS08-S07
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz*(zz-8)+21)-20)+5)
  fd=zz*(zz*(zz*(9*zz-56)+105)-60)+5
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(ww*(ww*(ww*(ww-8)+21)-20)+5)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


S09-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz*(zz-8)+21)-20)+5)
  fd=zz*(zz*(zz*(9*zz-56)+105)-60)+5
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


S09-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(zz*(zz*(zz*(zz-8)+21)-20)+5):
  zz=z*z
  zt=z
  foz=fz
  fz=z*(zz*(zz*(zz*(zz-8)+21)-20)+5)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


S09-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(zz*(zz*(zz*(zz-8)+21)-20)+5)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


S09-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(zz*(zz*(zz*(zz-8)+21)-20)+5)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


S09-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(x*(xx*(xx*(xx*(xx-8)+21)-20)+5))
  yy=y*y
  x=x-t*(y*(yy*(yy*(yy*(yy-8)+21)-20)+5))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


S09-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(x*(xx*(xx*(xx*(xx-8)+21)-20)+5))
  yy=y*y
  x=x-t*sin(y*(yy*(yy*(yy*(yy-8)+21)-20)+5))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


S09-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx*(xx*(xx-8)+21)-20)+5)))
  yy=y*y
  x=x-t*(fn1(y*(yy*(yy*(yy*(yy-8)+21)-20)+5)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


S09-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(xx*(xx*(xx*(xx-8)+21)-20)+5))
  Ty=fn2(y*(yy*(yy*(yy*(yy-8)+21)-20)+5))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


S09-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(xx*(xx*(xx*(xx-8)+21)-20)+5))
  Ty=fn2(y*(yy*(yy*(yy*(yy-8)+21)-20)+5))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


S09-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx*(xx*(xx-8)+21)-20)+5)))
  yy=y*y
  x=x-t*(fn2(y*(yy*(yy*(yy*(yy-8)+21)-20)+5)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


S09-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx*(xx*(xx-8)+21)-20)+5)))
  yy=y*y
  x=x-t*(fn2(y*(yy*(yy*(yy*(yy-8)+21)-20)+5)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


S09-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(x*(xx*(xx*(xx*(xx-8)+21)-20)+5)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy*(yy*(yy-8)+21)-20)+5)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


S09-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(x*(xx*(xx*(xx*(xx-8)+21)-20)+5)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy*(yy*(yy-8)+21)-20)+5)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


S09-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(x*(xx*(xx*(xx*(xx-8)+21)-20)+5)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy*(yy*(yy-8)+21)-20)+5)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


S09-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(x*(xx*(xx*(xx*(xx-8)+21)-20)+5)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy*(yy*(yy-8)+21)-20)+5)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


S09-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=x0*(xx*(xx*(xx*(xx-8)+21)-20)+5)
  Fx1=x1*(yy*(yy*(yy*(yy-8)+21)-20)+5)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


S10-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=xx*(xx*(xx*(xx*(xx-9)+28)-35)+15)-1
  Ty=yy*(yy*(yy*(yy*(yy-9)+28)-35)+15)-1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


S10-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS09-S08
  bailout=p1+4, z=pixel:
  zz=z*z
  z=zz*(zz*(zz*(zz*(zz-9)+28)-35)+15)-1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


S10-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  const=p1-1, z=pixel:
  zz=z*z
  z=zz*(zz*(zz*(zz*(zz-9)+28)-35)+15)+const
  |z|<100
  ;SOURCE: chby3.frm
}


S10-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  const=pixel-1, z=p1:
  zz=z*z
  z=zz*(zz*(zz*(zz*(zz-9)+28)-35)+15)+const
  |z|<100
  ;SOURCE: chby4.frm
}


S10-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz*(zz-9)+28)-35)+15)-1
  fd=2*z*(zz*(zz*(zz*(5*zz-36)+84)-70)+15)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


S10-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz*(zz-9)+28)-35)+15)-1
  fd=(z+z)*(zz*(zz*(zz*(5*zz-36)+84)-70)+15)
  fdd=6*(zz*(zz*(3*zz*(5*zz-28)+140)-70)+5)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


S10-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS09-S08
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz*(zz-9)+28)-35)+15)-1
  fd=(z+z)*(zz*(zz*(zz*(5*zz-36)+84)-70)+15)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww*(ww*(ww*(ww-9)+28)-35)+15)-1
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


S10-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(xx*(xx*(xx*(xx*(xx-9)+28)-35)+15)-1)
  Ty=sin(yy*(yy*(yy*(yy*(yy-9)+28)-35)+15)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


S10-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx*(xx*(xx*(xx-9)+28)-35)+15)-1)
  Ty=fn1(yy*(yy*(yy*(yy*(yy-9)+28)-35)+15)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


S10-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz*(zz*(zz*(zz-9)+28)-35)+15)-1:
  zz=z*z
  zt=z
  foz=fz
  fz=zz*(zz*(zz*(zz*(zz-9)+28)-35)+15)-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


S10-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  const=p1, z=pixel:
  zz=z*z
  z=(zz*(zz*(zz*(zz*(zz-9)+28)-35)+15)-1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


S10-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  const=pixel, z=p1:
  zz=z*z
  z=(zz*(zz*(zz*(zz*(zz-9)+28)-35)+15)-1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


S10-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz*(zz-9)+28)-35)+15)-1
  fd=2*z*(zz*(zz*(zz*(5*zz-36)+84)-70)+15)
  fdd=6*(zz*(zz*(3*zz*(5*zz-28)+140)-70)+5)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


S10-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS09-S08
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz*(zz-9)+28)-35)+15)-1
  fd=(z+z)*(zz*(zz*(zz*(5*zz-36)+84)-70)+15)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww*(ww*(ww*(ww-9)+28)-35)+15)-1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


S10-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz*(zz-9)+28)-35)+15)-1
  fd=2*z*(zz*(zz*(zz*(5*zz-36)+84)-70)+15)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


S10-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz*(zz*(zz*(zz-9)+28)-35)+15)-1:
  zz=z*z
  zt=z
  foz=fz
  fz=zz*(zz*(zz*(zz*(zz-9)+28)-35)+15)-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


S10-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  z=pixel, oz=0
  fz=-1
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=zz*(zz*(zz*(zz*(zz-9)+28)-35)+15)-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


S10-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  z=pixel, oz=0
  fz=-1
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=zz*(zz*(zz*(zz*(zz-9)+28)-35)+15)-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


S10-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(xx*(xx*(xx*(xx*(xx-9)+28)-35)+15)-1)
  yy=y*y
  x=x-t*(yy*(yy*(yy*(yy*(yy-9)+28)-35)+15)-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


S10-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(xx*(xx*(xx*(xx*(xx-9)+28)-35)+15)-1)
  yy=y*y
  x=x-t*sin(yy*(yy*(yy*(yy*(yy-9)+28)-35)+15)-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


S10-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx*(xx*(xx-9)+28)-35)+15)-1))
  yy=y*y
  x=x-t*(fn1(yy*(yy*(yy*(yy*(yy-9)+28)-35)+15)-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


S10-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx*(xx*(xx*(xx-9)+28)-35)+15)-1)
  Ty=fn2(yy*(yy*(yy*(yy*(yy-9)+28)-35)+15)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


S10-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx*(xx*(xx*(xx-9)+28)-35)+15)-1)
  Ty=fn2(yy*(yy*(yy*(yy*(yy-9)+28)-35)+15)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


S10-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx*(xx*(xx-9)+28)-35)+15)-1))
  yy=y*y
  x=x-t*(fn2(yy*(yy*(yy*(yy*(yy-9)+28)-35)+15)-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


S10-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx*(xx*(xx-9)+28)-35)+15)-1))
  yy=y*y
  x=x-t*(fn2(yy*(yy*(yy*(yy*(yy-9)+28)-35)+15)-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


S10-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(xx*(xx*(xx*(xx*(xx-9)+28)-35)+15)-1))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy*(yy*(yy-9)+28)-35)+15)-1))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


S10-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(xx*(xx*(xx*(xx*(xx-9)+28)-35)+15)-1))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy*(yy*(yy-9)+28)-35)+15)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


S10-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(xx*(xx*(xx*(xx*(xx-9)+28)-35)+15)-1))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy*(yy*(yy-9)+28)-35)+15)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


S10-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(xx*(xx*(xx*(xx*(xx-9)+28)-35)+15)-1))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy*(yy*(yy-9)+28)-35)+15)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


S10-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=xx*(xx*(xx*(xx*(xx-9)+28)-35)+15)-1
  Fx1=yy*(yy*(yy*(yy*(yy-9)+28)-35)+15)-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


S2Z (XAXIS) {; resol. sin(sin(z)=z - Jm Collard-Richard -  Use float=yes
  z=pixel:
  z1=sin(sin(z))-z
  z2=cos(z)*cos(sin(z))-1
  z=z-(z1/z2)
  0.001<=|z1| 
  ;SOURCE: jmcr2.frm
}


s8 {; Revised 4/27/96 to eliminate superfluous "+c"
    ; Original version of this formula may be discarded
  z=pixel, t=fn3(pixel*1/z)/cosxx(z-1):
  z=fn1(pixel/(t*t))/fn2(z^t)
  |z|<=p1
  ;SOURCE: new.frm
}


saddle {; Sylvie Gallet [101324,3444], 1996
        ; formula based on Tim Wegner's Graph-3
  x = real(pixel), y = imag(pixel)
  value = (x^2-y^2)
  min = real(p1), max = imag(p1)
  incr = (max - min)/256, z = min :
  z = z + incr
  z <= value
  ;SOURCE: 96msg.frm
}


Sam_0(XAXIS) {
  z = Pixel:  
  z = z^z - pixel
  ;SOURCE: sam.frm
}


Sam_1 (XAXIS) {
  z = Pixel: 
  z = z^(-z) - pixel
  ;SOURCE: sam.frm
}


Sam_10 (XYAXIS) {
  z = Pixel: 
  z = sin(1/z)
  ;SOURCE: sam.frm
}


Sam_11 (XAXIS) {; Try this with periodicity=none command line
  z = Pixel: 
  z = sinh(1/z)
  ;SOURCE: sam.frm
}


Sam_2 (XAXIS) {
  z = Pixel: 
  z = z^(1/z) - pixel
  ;SOURCE: sam.frm
}


Sam_3 (XAXIS) {
  z = Pixel: 
  z = z^z^z - pixel
  ;SOURCE: sam.frm
}


Sam_4 (XAXIS) {
  z = Pixel: 
  z = z^(z^(1/z)) - pixel
  ;SOURCE: sam.frm
}


Sam_5 (XAXIS) {
  z = Pixel: 
  z = z^2.718281828 + pixel
  ;SOURCE: sam.frm
}


Sam_6 (XYAXIS) {
  z = Pixel: 
  z = z*cos(z) - pixel
  ;SOURCE: sam.frm
}


Sam_7 (XAXIS) {
  z = Pixel: 
  z = z*sin(z) - pixel
  ;SOURCE: sam.frm
}


Sam_8 {
  z = Pixel: 
  z = z^c
  ;SOURCE: sam.frm
}


Sam_9 (XYAXIS) {
  z = Pixel: 
  z = z*tanh(z)
  ;SOURCE: sam.frm
}


SanMarcoFractal {; (as Mandelbrot himself called it) is probably a well
                 ; known Julia set; it corresponds to the intersection 
                 ; of the cardioid and circle of the Mandelbrot set.
  z = pixel, c = -0.7498431447893381 
  z = z*z + c
  |z| < 4
  ;SOURCE: 99msg.frm
}


sargassi {; Giuseppe Zito
  z = pixel
  c0 = 0.492479
  c3 = -0.705575
  d12 = -0.538524
  : 
  x = real(z), y = imag(z)
  s0 =c0
  s0 = s0 *y
  s0 = s0 /c3
  newx = s0 
  s0 = x
  s0 = s0 *x
  s0 = s0 -x
  s0 = s0 +x
  s0 = s0 *y
  s0 = s0 -y
  s0 = s0 /y
  s1 = y
  s1 = s1 /d12
  s0 = s0 *s1
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


Sattva {
  z = pixel + p1:
  r = fn1(tan(1/z)) + pixel 
  z = z * fn2(r)
  |z| < 4
  ;SOURCE: shakti.frm
}


Sc02-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Clifford A. Pickover
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Fx=2/x
  Fy=2/y
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Sc02-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  bailout=p1+4, z=pixel:
  z=2/z
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Sc02-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Julia)
         ;
         ; {Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  const=p1, z=pixel:
  z=const+(2/z)
  |z|<100
  ;SOURCE: chby3.frm
}


Sc02-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Mandelbrot)
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  const=pixel, z=p1:
  z=const+(2/z)
  |z|<100
  ;SOURCE: chby4.frm
}


Sc02-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Newton Method
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(2/z)
  fd=-2/(z*z)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Sc02-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Halley Method
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z
  f=2/z
  fd=-2/z2
  fdd=-4/(z2*z)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Sc02-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Bradley Beacham
         ; Cubic Method
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(2/z)
  fd=-2/(z*z)
  oz=z
  w=z-f/fd
  fw=2/w
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Sc02-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified Euler method)
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(2/x)
  Ty=sin(2/y)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Sc02-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified Euler Method)
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(2/x)
  Ty=fn1(2/y)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Sc02-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Mike Wareman:
         ; Secant Method
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(2/p1):
  zt=z
  foz=fz
  fz=(2/z)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Sc02-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Julia)
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  const=p1, z=pixel:
  z=const*(2/z)
  |z|<100
  ;SOURCE: chby11.frm
}


Sc02-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Mandelbrot)
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  const=pixel, z=p1:
  z=const*(2/z)
  |z|<100
  ;SOURCE: chby12.frm
}


Sc02-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Halley Method with weird bailout test
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z
  f=2/z
  fd=-2/z2
  fdd=-4/(z2*z)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Sc02-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Bradley Beacham
         ; Cubic Method with weird bailout test
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  f=(2/z)
  fd=-2/(z*z)
  oz=z
  w=z-f/fd
  fw=2/w
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Sc02-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Newton Method with weird bailout test
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(2/z)
  fd=-2/(z*z)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Sc02-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Mike Wareman:
         ; Secant Method with weird bailout test
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(2/p1):
  zt=z
  foz=fz
  fz=(2/z)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Sc02-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (Implicit Euler method)
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(2/x)
  x=x-t*(2/y)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Sc02-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler method)
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(2/x)
  x=x-t*sin(2/y)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Sc02-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler Method)
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1(2/x)
  x=x-t*fn1(2/y)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Sc02-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified Euler method)
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(2/x)
  Ty=fn2(2/y)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Sc02-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified Euler method)
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(2/x)
  Ty=fn2(2/y)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Sc02-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler Method)
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1(2/x)
  x=x-t*fn2(2/y)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Sc02-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler Method)
         ;
         ; Schlafi Polynomials 
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1(2/x)
  x=x-t*fn2(2/y)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Sc02-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Kathy Roth:
         ; Dynamic (modified implicit Euler Method, gravitated)
         ; 
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=fn1(2/x)
  Ty=fn1(2/y)
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Sc02-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Kathy Roth:
         ; Dynamic (modified implicit Euler Method, popped)
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=fn1(2/x)
  Ty=fn1(2/y)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Sc02-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Kathy Roth:
         ; Dynamic (modified implicit Euler Method, popped)
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=fn1(2/x)
  Ty=fn1(2/y)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Sc02-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler method, Sylvie Gallet test)
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(2/x)
  Ty=fn1(2/y)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Sc02-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Ray Parracho:
         ; Regula-Falsi Method
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=2/x0
  Fx1=2/x1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Sc03-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Fx=4/(x*x)
  Fy=4/(y*y)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Sc03-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  bailout=p1+4, z=pixel:
  z=4/(z*z)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Sc03-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  const=p1, z=pixel:
  z=const+(4/(z*z))
  |z|<100
  ;SOURCE: chby3.frm
}


Sc03-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  const=pixel, z=p1:
  z=const+(4/(z*z))
  |z|<100
  ;SOURCE: chby4.frm
}


Sc03-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z
  f=(4/(z2))
  fd=-8/(z2*z)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Sc03-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z
  f=4/z2
  fd=-8/(z2*z)
  fdd=-40/(z2*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Sc03-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z
  f=(4/(z2))
  fd=-8/(z2*z)
  oz=z
  w=z-f/fd
  fw=4/(w*w)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Sc03-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(4/(x*x))
  Ty=sin(4/(y*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Sc03-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(4/(x*x))
  Ty=fn1(4/(y*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Sc03-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(4/(p1*p1)):
  zt=z
  foz=fz
  fz=(4/(z*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Sc03-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  const=p1, z=pixel:
  z=const*(4/(z*z))
  |z|<100
  ;SOURCE: chby11.frm
}


Sc03-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  const=pixel, z=p1:
  z=const*(4/(z*z))
  |z|<100
  ;SOURCE: chby12.frm
}


Sc03-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z
  f=4/z2
  fd=-8/(z2*z)
  fdd=-40/(z2*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Sc03-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z
  f=(4/(z2))
  fd=-8/(z2*z)
  oz=z
  w=z-f/fd
  fw=4/(w*w)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Sc03-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z
  f=(4/(z2))
  fd=-8/(z2*z)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Sc03-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(4/(p1*p1)):
  zt=z
  foz=fz
  fz=(4/(z*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Sc03-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(4/(x*x))
  x=x-t*(4/(y*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Sc03-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(4/(x*x))
  x=x-t*sin(4/(y*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Sc03-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1(4/(x*x))
  x=x-t*fn1(4/(y*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Sc03-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(4/(x*x))
  Ty=fn2(4/(y*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Sc03-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(4/(x*x))
  Ty=fn2(4/(y*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Sc03-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1(4/(x*x))
  x=x-t*fn2(4/(y*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Sc03-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1(4/(x*x))
  x=x-t*fn2(4/(y*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Sc03-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=fn1(4/(x*x))
  Ty=fn1(4/(y*y))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Sc03-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=fn1(4/(x*x))
  Ty=fn1(4/(y*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Sc03-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=fn1(4/(x*x))
  Ty=fn1(4/(y*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Sc03-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(4/(x*x))
  Ty=fn1(4/(y*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Sc03-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=4/(x0*x0)
  Fx1=4/(x1*x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Sc04-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Fx=(((4-2*x)*x-8)*x+16)/(x*x*x)
  Fy=(((4-2*y)*y-8)*y+16)/(y*y*y)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Sc04-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  bailout=p1+4, z=pixel:
  z=(((4-2*z)*z-8)*z+16)/(z*z*z)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Sc04-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  const=p1, z=pixel:
  z=const+((((4-2*z)*z-8)*z+16)/(z*z*z))
  |z|<100
  ;SOURCE: chby3.frm
}


Sc04-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  const=pixel, z=p1:
  z=const+((((4-2*z)*z-8)*z+16)/(z*z*z))
  |z|<100
  ;SOURCE: chby4.frm
}


Sc04-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z
  f=((((4-2*z)*z-8)*z+16)/(z2*z))
  fd=((16-4*z)*z-48)/(z2*z2)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Sc04-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=((((4-2*z)*z-8)*z+16)/(z2*z))
  fd=((16-4*z)*z-48)/z4
  fdd=((144-40*z)*z-384)/(z4*z)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Sc04-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z
  f=((((4-2*z)*z-8)*z+16)/(z2*z))
  fd=((16-4*z)*z-48)/(z2*z2)
  oz=z
  w=z-f/fd
  fw=((((4-2*w)*w-8)*w+16)/(w*w*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Sc04-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin((((4-2*x)*x-8)*x+16)/(x*x*x))
  Ty=sin((((4-2*y)*y-8)*y+16)/(y*y*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Sc04-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((((4-2*x)*x-8)*x+16)/(x*x*x))
  Ty=fn1((((4-2*y)*y-8)*y+16)/(y*y*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Sc04-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=((((4-2*p1)*p1-8)*p1+16)/(p1*p1*p1)):
  zt=z
  foz=fz
  fz=((((4-2*z)*z-8)*z+16)/(z*z*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Sc04-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  const=p1, z=pixel:
  z=const*((((4-2*z)*z-8)*z+16)/(z*z*z))
  |z|<100
  ;SOURCE: chby11.frm
}


Sc04-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  const=pixel, z=p1:
  z=const*((((4-2*z)*z-8)*z+16)/(z*z*z))
  |z|<100
  ;SOURCE: chby12.frm
}


Sc04-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=((((4-2*z)*z-8)*z+16)/(z2*z))
  fd=((16-4*z)*z-48)/z4
  fdd=((144-40*z)*z-384)/(z4*z)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Sc04-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z
  f=((((4-2*z)*z-8)*z+16)/(z2*z))
  fd=((16-4*z)*z-48)/(z2*z2)
  oz=z
  w=z-f/fd
  fw=((((4-2*w)*w-8)*w+16)/(w*w*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Sc04-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z
  f=((((4-2*z)*z-8)*z+16)/(z2*z))
  fd=((16-4*z)*z-48)/(z2*z2)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Sc04-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=((((4-2*p1)*p1-8)*p1+16)/(p1*p1*p1)):
  zt=z
  foz=fz
  fz=((((4-2*z)*z-8)*z+16)/(z*z*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Sc04-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*((((4-2*x)*x-8)*x+16)/(x*x*x))
  x=x-t*((((4-2*y)*y-8)*y+16)/(y*y*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Sc04-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin((((4-2*x)*x-8)*x+16)/(x*x*x))
  x=x-t*sin((((4-2*y)*y-8)*y+16)/(y*y*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Sc04-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1((((4-2*x)*x-8)*x+16)/(x*x*x))
  x=x-t*fn1((((4-2*y)*y-8)*y+16)/(y*y*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Sc04-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((((4-2*x)*x-8)*x+16)/(x*x*x))
  Ty=fn2((((4-2*y)*y-8)*y+16)/(y*y*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Sc04-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1((((4-2*x)*x-8)*x+16)/(x*x*x))
  Ty=fn2((((4-2*y)*y-8)*y+16)/(y*y*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Sc04-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1((((4-2*x)*x-8)*x+16)/(x*x*x))
  x=x-t*fn2((((4-2*y)*y-8)*y+16)/(y*y*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Sc04-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1((((4-2*x)*x-8)*x+16)/(x*x*x))
  x=x-t*fn2((((4-2*y)*y-8)*y+16)/(y*y*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Sc04-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=fn1((((4-2*x)*x-8)*x+16)/(x*x*x))
  Ty=fn1((((4-2*y)*y-8)*y+16)/(y*y*y))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Sc04-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=fn1((((4-2*x)*x-8)*x+16)/(x*x*x))
  Ty=fn1((((4-2*y)*y-8)*y+16)/(y*y*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Sc04-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=fn1((((4-2*x)*x-8)*x+16)/(x*x*x))
  Ty=fn1((((4-2*y)*y-8)*y+16)/(y*y*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Sc04-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((((4-2*x)*x-8)*x+16)/(x*x*x))
  Ty=fn1((((4-2*y)*y-8)*y+16)/(y*y*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Sc04-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=(((4-2*x0)*x0-8)*x0+16)/(x0*x0*x0)
  Fx1=(((4-2*x1)*x1-8)*x1+16)/(x1*x1*x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Sc05-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Fx=((((11/2*x-18)*x+36)*x-72)*x+96)/(x2*x2)
  Fy=((((11/2*y-18)*y+36)*y-72)*y+96)/(y2*y2)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Sc05-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  bailout=p1+4, z=pixel:
  z2=z*z
  z=((((11/2*z-18)*z+36)*z-72)*z+96)/(z2*z2)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Sc05-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  const=p1, z=pixel:
  z2=z*z
  z=const+(((((11/2*z-18)*z+36)*z-72)*z+96)/(z2*z2))
 |z|<100
  ;SOURCE: chby3.frm
}


Sc05-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  const=pixel, z=p1:
  z2=z*z
  z=const+(((((11/2*z-18)*z+36)*z-72)*z+96)/(z2*z2))
  |z|<100
  ;SOURCE: chby4.frm
}


Sc05-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=(((((11/2*z-18)*z+36)*z-72)*z+96)/z4)
  fd=(((18*z-72)*z+216)*z-384)/(z4*z)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Sc05-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=(((((11/2*z-18)*z+36)*z-72)*z+96)/z4)
  fd=(((18*z-72)*z+216)*z-384)/(z4*z)
  fdd=(((252*z-936)*z+2592)*z-4224)/(z4*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Sc05-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=(((((11/2*z-18)*z+36)*z-72)*z+96)/z4)
  fd=(((18*z-72)*z+216)*z-384)/(z4*z)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=(((((11/2*w-18)*w+36)*w-72)*w+96)/(w2*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Sc05-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=sin(((((11/2*x-18)*x+36)*x-72)*x+96)/(x2*x2))
  Ty=sin(((((11/2*y-18)*y+36)*y-72)*y+96)/(y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Sc05-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((11/2*x-18)*x+36)*x-72)*x+96)/(x2*x2))
  Ty=fn1(((((11/2*y-18)*y+36)*y-72)*y+96)/(y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Sc05-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=(((((11/2*p1-18)*p1+36)*p1-72)*p1+96)/(pp2*pp2)):
  z2=z*z
  zt=z
  foz=fz
  fz=(((((11/2*z-18)*z+36)*z-72)*z+96)/(z2*z2))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Sc05-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  const=p1, z=pixel:
  z2=z*z
  z=const*(((((11/2*z-18)*z+36)*z-72)*z+96)/(z2*z2))
  |z|<100
  ;SOURCE: chby11.frm
}


Sc05-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  const=pixel, z=p1:
  z2=z*z
  z=const*(((((11/2*z-18)*z+36)*z-72)*z+96)/(z2*z2))
  |z|<100
  ;SOURCE: chby12.frm
}


Sc05-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=(((((11/2*z-18)*z+36)*z-72)*z+96)/z4)
  fd=(((18*z-72)*z+216)*z-384)/(z4*z)
  fdd=(((252*z-936)*z+2592)*z-4224)/(z4*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Sc05-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=(((((11/2*z-18)*z+36)*z-72)*z+96)/z4)
  fd=(((18*z-72)*z+216)*z-384)/(z4*z)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=(((((11/2*w-18)*w+36)*w-72)*w+96)/(w2*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Sc05-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=(((((11/2*z-18)*z+36)*z-72)*z+96)/z4)
  fd=(((18*z-72)*z+216)*z-384)/(z4*z)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Sc05-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=(((((11/2*p1-18)*p1+36)*p1-72)*p1+96)/(pp2*pp2)):
  z2=z*z
  zt=z
  foz=fz
  fz=(((((11/2*z-18)*z+36)*z-72)*z+96)/(z2*z2))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Sc05-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*(((((11/2*x-18)*x+36)*x-72)*x+96)/(x2*x2))
  x=x-t*(((((11/2*y-18)*y+36)*y-72)*y+96)/(y2*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Sc05-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*sin(((((11/2*x-18)*x+36)*x-72)*x+96)/(x2*x2))
  x=x-t*sin(((((11/2*y-18)*y+36)*y-72)*y+96)/(y2*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Sc05-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((11/2*x-18)*x+36)*x-72)*x+96)/(x2*x2))
  x=x-t*fn1(((((11/2*y-18)*y+36)*y-72)*y+96)/(y2*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Sc05-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((11/2*x-18)*x+36)*x-72)*x+96)/(x2*x2))
  Ty=fn2(((((11/2*y-18)*y+36)*y-72)*y+96)/(y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Sc05-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((11/2*x-18)*x+36)*x-72)*x+96)/(x2*x2))
  Ty=fn2(((((11/2*y-18)*y+36)*y-72)*y+96)/(y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Sc05-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((11/2*x-18)*x+36)*x-72)*x+96)/(x2*x2))
  x=x-t*fn2(((((11/2*y-18)*y+36)*y-72)*y+96)/(y2*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Sc05-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((11/2*x-18)*x+36)*x-72)*x+96)/(x2*x2))
  x=x-t*fn2(((((11/2*y-18)*y+36)*y-72)*y+96)/(y2*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Sc05-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((11/2*x-18)*x+36)*x-72)*x+96)/(x2*x2))
  Ty=fn1(((((11/2*y-18)*y+36)*y-72)*y+96)/(y2*y2))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Sc05-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1(((((11/2*x-18)*x+36)*x-72)*x+96)/(x2*x2))
  Ty=fn1(((((11/2*y-18)*y+36)*y-72)*y+96)/(y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Sc05-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1(((((11/2*x-18)*x+36)*x-72)*x+96)/(x2*x2))
  Ty=fn1(((((11/2*y-18)*y+36)*y-72)*y+96)/(y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Sc05-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((11/2*x-18)*x+36)*x-72)*x+96)/(x2*x2))
  Ty=fn1(((((11/2*y-18)*y+36)*y-72)*y+96)/(y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Sc05-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=((((11/2*x0-18)*x0+36)*x0-72)*x0+96)/(xx*xx)
  Fx1=((((11/2*x1-18)*x1+36)*x1-72)*x1+96)/(yy*yy)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Sc06-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Fx=(((((72-8*x)*x-192)*x+384)*x-704)*x+768)/(x2*x2*x)
  Fy=(((((72-8*y)*y-192)*y+384)*y-704)*y+768)/(y2*y2*y)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Sc06-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  bailout=p1+4, z=pixel:
  z2=z*z
  z=(((((72-8*z)*z-192)*z+384)*z-704)*z+768)/(z2*z2*z)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Sc06-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  const=p1, z=pixel:
  z2=z*z
  z=const+((((((72-8*z)*z-192)*z+384)*z-704)*z+768)/(z2*z2*z))
  |z|<100
  ;SOURCE: chby3.frm
}


Sc06-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  const=pixel, z=p1:
  z2=z*z
  z=const+((((((72-8*z)*z-192)*z+384)*z-704)*z+768)/(z2*z2*z))
  |z|<100
  ;SOURCE: chby4.frm
}


Sc06-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=((((((72-8*z)*z-192)*z+384)*z-704)*z+768)/(z4*z))
  fd=((((384-72*z)*z-1152)*z+2816)*z-3840)/(z4*z2)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Sc06-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z6=z4*z2
  f=((((((72-8*z)*z-192)*z+384)*z-704)*z+768)/(z4*z))
  fd=((((384-72*z)*z-1152)*z+2816)*z-3840)/z6
  fdd=((((6528-1296*z)*z-18432)*z+42240)*z-53760)/(z6*z)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Sc06-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=((((((72-8*z)*z-192)*z+384)*z-704)*z+768)/(z4*z))
  fd=((((384-72*z)*z-1152)*z+2816)*z-3840)/(z4*z2)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=((((((72-8*w)*w-192)*w+384)*w-704)*w+768)/(w2*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Sc06-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=sin((((((72-8*x)*x-192)*x+384)*x-704)*x+768)/(x2*x2*x))
  Ty=sin((((((72-8*y)*y-192)*y+384)*y-704)*y+768)/(y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Sc06-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((((72-8*x)*x-192)*x+384)*x-704)*x+768)/(x2*x2*x))
  Ty=fn1((((((72-8*y)*y-192)*y+384)*y-704)*y+768)/(y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Sc06-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=((((((72-8*p1)*p1-192)*p1+384)*p1-704)*p1+768)/(pp2*pp2*p1)):
  z2=z*z
  zt=z
  foz=fz
  fz=((((((72-8*z)*z-192)*z+384)*z-704)*z+768)/(z2*z2*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Sc06-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  const=p1, z=pixel:
  z2=z*z
  z=const*((((((72-8*z)*z-192)*z+384)*z-704)*z+768)/(z2*z2*z))
  |z|<100
  ;SOURCE: chby11.frm
}


Sc06-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  const=pixel, z=p1:
  z2=z*z
  z=const*((((((72-8*z)*z-192)*z+384)*z-704)*z+768)/(z2*z2*z))
  |z|<100
  ;SOURCE: chby12.frm
}


Sc06-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z6=z4*z2
  f=((((((72-8*z)*z-192)*z+384)*z-704)*z+768)/(z4*z))
  fd=((((384-72*z)*z-1152)*z+2816)*z-3840)/z6
  fdd=((((6528-1296*z)*z-18432)*z+42240)*z-53760)/(z6*z)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Sc06-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=((((((72-8*z)*z-192)*z+384)*z-704)*z+768)/(z4*z))
  fd=((((384-72*z)*z-1152)*z+2816)*z-3840)/(z4*z2)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=((((((72-8*w)*w-192)*w+384)*w-704)*w+768)/(w2*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Sc06-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=((((((72-8*z)*z-192)*z+384)*z-704)*z+768)/(z4*z))
  fd=((((384-72*z)*z-1152)*z+2816)*z-3840)/(z4*z2)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Sc06-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=((((((72-8*p1)*p1-192)*p1+384)*p1-704)*p1+768)/(pp2*pp2*p1)):
  z2=z*z
  zt=z
  foz=fz
  fz=((((((72-8*z)*z-192)*z+384)*z-704)*z+768)/(z2*z2*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Sc06-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*((((((72-8*x)*x-192)*x+384)*x-704)*x+768)/(x2*x2*x))
  x=x-t*((((((72-8*y)*y-192)*y+384)*y-704)*y+768)/(y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Sc06-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*sin((((((72-8*x)*x-192)*x+384)*x-704)*x+768)/(x2*x2*x))
  x=x-t*sin((((((72-8*y)*y-192)*y+384)*y-704)*y+768)/(y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Sc06-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((((((72-8*x)*x-192)*x+384)*x-704)*x+768)/(x2*x2*x))
  x=x-t*fn1((((((72-8*y)*y-192)*y+384)*y-704)*y+768)/(y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Sc06-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((((72-8*x)*x-192)*x+384)*x-704)*x+768)/(x2*x2*x))
  Ty=fn2((((((72-8*y)*y-192)*y+384)*y-704)*y+768)/(y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Sc06-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((((72-8*x)*x-192)*x+384)*x-704)*x+768)/(x2*x2*x))
  Ty=fn2((((((72-8*y)*y-192)*y+384)*y-704)*y+768)/(y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Sc06-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((((((72-8*x)*x-192)*x+384)*x-704)*x+768)/(x2*x2*x))
  x=x-t*fn2((((((72-8*y)*y-192)*y+384)*y-704)*y+768)/(y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Sc06-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((((((72-8*x)*x-192)*x+384)*x-704)*x+768)/(x2*x2*x))
  x=x-t*fn2((((((72-8*y)*y-192)*y+384)*y-704)*y+768)/(y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Sc06-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((((72-8*x)*x-192)*x+384)*x-704)*x+768)/(x2*x2*x))
  Ty=fn1((((((72-8*y)*y-192)*y+384)*y-704)*y+768)/(y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Sc06-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1((((((72-8*x)*x-192)*x+384)*x-704)*x+768)/(x2*x2*x))
  Ty=fn1((((((72-8*y)*y-192)*y+384)*y-704)*y+768)/(y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Sc06-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1((((((72-8*x)*x-192)*x+384)*x-704)*x+768)/(x2*x2*x))
  Ty=fn1((((((72-8*y)*y-192)*y+384)*y-704)*y+768)/(y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Sc06-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((((72-8*x)*x-192)*x+384)*x-704)*x+768)/(x2*x2*x))
  Ty=fn1((((((72-8*y)*y-192)*y+384)*y-704)*y+768)/(y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Sc06-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=(((((72-8*x0)*x0-192)*x0+384)*x0-704)*x0+768)/(xx*xx*x0)
  Fx1=(((((72-8*x1)*x1-192)*x1+384)*x1-704)*x1+768)/(yy*yy*x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Sc07-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Fx=((((((13*x-170)*x+960)*x-2400)*x+4720)*x-8000)*x+7680)/(x2*x2*x2)
  Fy=((((((13*y-170)*y+960)*y-2400)*y+4720)*y-8000)*y+7680)/(y2*y2*y2)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Sc07-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  bailout=p1+4, z=pixel:
  z2=z*z
  z=((((((13*z-170)*z+960)*z-2400)*z+4720)*z-8000)*z+7680)/(z2*z2*z2)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Sc07-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  const=p1, z=pixel:
  z2=z*z
  z=const+(((((((13*z-170)*z+960)*z-2400)*z+4720)*z-8000)*z+7680)/(z2*z2*z2))
  |z|<100
  ;SOURCE: chby3.frm
}


Sc07-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  const=pixel, z=p1:
  z2=z*z
  z=const+(((((((13*z-170)*z+960)*z-2400)*z+4720)*z-8000)*z+7680)/(z2*z2*z2))
  |z|<100
  ;SOURCE: chby4.frm
}


Sc07-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z6=z2*z2*z2
  f=(((((((13*z-170)*z+960)*z-2400)*z+4720)*z-8000)*z+7680)/z6)
  fd=(((((170*z-1920)*z+7200)*z-18880)*z+40000)*z-46080)/(z6*z)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Sc07-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z6=z2*z2*z2
  f=(((((((13*z-170)*z+960)*z-2400)*z+4720)*z-8000)*z+7680)/z6)
  fd=(((((170*z-1920)*z+7200)*z-18880)*z+40000)*z-46080)/(z6*z)
  fdd=(((((3740*z-40320)*z+144000)*z-358720)*z+720000)*z-783360)/(z6*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Sc07-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z6=z2*z2*z2
  f=(((((((13*z-170)*z+960)*z-2400)*z+4720)*z-8000)*z+7680)/z6)
  fd=(((((170*z-1920)*z+7200)*z-18880)*z+40000)*z-46080)/(z6*z)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=(((((((13*w-170)*w+960)*w-2400)*w+4720)*w-8000)*w+7680)/(w2*w2*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Sc07-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=sin(((((((13*x-170)*x+960)*x-2400)*x+4720)*x-8000)*x+7680)/(x2*x2*x2))
  Ty=sin(((((((13*y-170)*y+960)*y-2400)*y+4720)*y-8000)*y+7680)/(y2*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Sc07-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((((13*x-170)*x+960)*x-2400)*x+4720)*x-8000)*x+7680)/(x2*x2*x2))
  Ty=fn1(((((((13*y-170)*y+960)*y-2400)*y+4720)*y-8000)*y+7680)/(y2*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Sc07-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=(((((((13*p1-170)*p1+960)*p1-2400)*p1+4720)*p1-8000)*p1+7680)/(pp2*pp2*pp2)):
  z2=z*z
  zt=z
  foz=fz
  fz=(((((((13*z-170)*z+960)*z-2400)*z+4720)*z-8000)*z+7680)/(z2*z2*z2))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Sc07-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  const=p1, z=pixel:
  z2=z*z
  z=const*(((((((13*z-170)*z+960)*z-2400)*z+4720)*z-8000)*z+7680)/(z2*z2*z2))
  |z|<100
  ;SOURCE: chby11.frm
}


Sc07-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  const=pixel, z=p1:
  z2=z*z
  z=const*(((((((13*z-170)*z+960)*z-2400)*z+4720)*z-8000)*z+7680)/(z2*z2*z2))
  |z|<100
  ;SOURCE: chby12.frm
}


Sc07-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z6=z2*z2*z2
  f=(((((((13*z-170)*z+960)*z-2400)*z+4720)*z-8000)*z+7680)/z6)
  fd=(((((170*z-1920)*z+7200)*z-18880)*z+40000)*z-46080)/(z6*z)
  fdd=(((((3740*z-40320)*z+144000)*z-358720)*z+720000)*z-783360)/(z6*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Sc07-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z6=z2*z2*z2
  f=(((((((13*z-170)*z+960)*z-2400)*z+4720)*z-8000)*z+7680)/z6)
  fd=(((((170*z-1920)*z+7200)*z-18880)*z+40000)*z-46080)/(z6*z)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=(((((((13*w-170)*w+960)*w-2400)*w+4720)*w-8000)*w+7680)/(w2*w2*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Sc07-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z6=z2*z2*z2
  f=(((((((13*z-170)*z+960)*z-2400)*z+4720)*z-8000)*z+7680)/z6)
  fd=(((((170*z-1920)*z+7200)*z-18880)*z+40000)*z-46080)/(z6*z)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Sc07-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=(((((((13*p1-170)*p1+960)*p1-2400)*p1+4720)*p1-8000)*p1+7680)/(pp2*pp2*pp2)):
  z2=z*z
  zt=z
  foz=fz
  fz=(((((((13*z-170)*z+960)*z-2400)*z+4720)*z-8000)*z+7680)/(z2*z2*z2))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Sc07-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*(((((((13*x-170)*x+960)*x-2400)*x+4720)*x-8000)*x+7680)/(x2*x2*x2))
  x=x-t*(((((((13*y-170)*y+960)*y-2400)*y+4720)*y-8000)*y+7680)/(y2*y2*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Sc07-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*sin(((((((13*x-170)*x+960)*x-2400)*x+4720)*x-8000)*x+7680)/(x2*x2*x2))
  x=x-t*sin(((((((13*y-170)*y+960)*y-2400)*y+4720)*y-8000)*y+7680)/(y2*y2*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Sc07-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((((13*x-170)*x+960)*x-2400)*x+4720)*x-8000)*x+7680)/(x2*x2*x2))
  x=x-t*fn1(((((((13*y-170)*y+960)*y-2400)*y+4720)*y-8000)*y+7680)/(y2*y2*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Sc07-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((((13*x-170)*x+960)*x-2400)*x+4720)*x-8000)*x+7680)/(x2*x2*x2))
  Ty=fn2(((((((13*y-170)*y+960)*y-2400)*y+4720)*y-8000)*y+7680)/(y2*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Sc07-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((((13*x-170)*x+960)*x-2400)*x+4720)*x-8000)*x+7680)/(x2*x2*x2))
  Ty=fn2(((((((13*y-170)*y+960)*y-2400)*y+4720)*y-8000)*y+7680)/(y2*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Sc07-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((((13*x-170)*x+960)*x-2400)*x+4720)*x-8000)*x+7680)/(x2*x2*x2))
  x=x-t*fn2(((((((13*y-170)*y+960)*y-2400)*y+4720)*y-8000)*y+7680)/(y2*y2*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Sc07-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((((13*x-170)*x+960)*x-2400)*x+4720)*x-8000)*x+7680)/(x2*x2*x2))
  x=x-t*fn2(((((((13*y-170)*y+960)*y-2400)*y+4720)*y-8000)*y+7680)/(y2*y2*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Sc07-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((((13*x-170)*x+960)*x-2400)*x+4720)*x-8000)*x+7680)/(x2*x2*x2))
  Ty=fn1(((((((13*y-170)*y+960)*y-2400)*y+4720)*y-8000)*y+7680)/(y2*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Sc07-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1(((((((13*x-170)*x+960)*x-2400)*x+4720)*x-8000)*x+7680)/(x2*x2*x2))
  Ty=fn1(((((((13*y-170)*y+960)*y-2400)*y+4720)*y-8000)*y+7680)/(y2*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Sc07-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1(((((((13*x-170)*x+960)*x-2400)*x+4720)*x-8000)*x+7680)/(x2*x2*x2))
  Ty=fn1(((((((13*y-170)*y+960)*y-2400)*y+4720)*y-8000)*y+7680)/(y2*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Sc07-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((((13*x-170)*x+960)*x-2400)*x+4720)*x-8000)*x+7680)/(x2*x2*x2))
  Ty=fn1(((((((13*y-170)*y+960)*y-2400)*y+4720)*y-8000)*y+7680)/(y2*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Sc07-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=((((((13*x0-170)*x0+960)*x0-2400)*x0+4720)*x0-8000)*x0+7680)/(xx*xx*xx)
  Fx1=((((((13*x1-170)*x1+960)*x1-2400)*x1+4720)*x1-8000)*x1+7680)/(yy*yy*yy)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Sc08-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Fx=(((((((364-16*x)*x-3192)*x+14400)*x-34464)*x+66240)*x-105216)*x+92160)/(x2*x2*x2*x)
  Fy=(((((((364-16*y)*y-3192)*y+14400)*y-34464)*y+66240)*y-105216)*y+92160)/(y2*y2*y2*y)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Sc08-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  bailout=p1+4, z=pixel:
  z2=z*z
  z=(((((((364-16*z)*z-3192)*z+14400)*z-34464)*z+66240)*z-105216)*z+92160)/(z2*z2*z2*z)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Sc08-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  const=p1, z=pixel:
  z2=z*z
  z=const+((((((((364-16*z)*z-3192)*z+14400)*z-34464)*z+66240)*z-105216)*z+92160)/(z2*z2*z2*z))
  |z|<100
  ;SOURCE: chby3.frm
}


Sc08-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  const=pixel, z=p1:
  z2=z*z
  z=const+((((((((364-16*z)*z-3192)*z+14400)*z-34464)*z+66240)*z-105216)*z+92160)/(z2*z2*z2*z))
  |z|<100
  ;SOURCE: chby4.frm
}


Sc08-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=((((((((364-16*z)*z-3192)*z+14400)*z-34464)*z+66240)*z-105216)*z+92160)/(z4*z2*z))
  fd=((((((6384-364*z)*z-43200)*z+137856)*z-331200)*z+631296)*z-645120)/(z4*z4)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Sc08-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=((((((((364-16*z)*z-3192)*z+14400)*z-34464)*z+66240)*z-105216)*z+92160)/(z4*z2*z))
  fd=((((((6384-364*z)*z-43200)*z+137856)*z-331200)*z+631296)*z-645120)/z8
  fdd=((((((159600-9464*z)*z-1036800)*z+3170688)*z-7286400)*z+13257216)*z-12902400)/(z8*z)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Sc08-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=((((((((364-16*z)*z-3192)*z+14400)*z-34464)*z+66240)*z-105216)*z+92160)/(z4*z2*z))
  fd=((((((6384-364*z)*z-43200)*z+137856)*z-331200)*z+631296)*z-645120)/(z4*z4)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=((((((((364-16*w)*w-3192)*w+14400)*w-34464)*w+66240)*w-105216)*w+92160)/(w2*w2*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Sc08-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=sin((((((((364-16*x)*x-3192)*x+14400)*x-34464)*x+66240)*x-105216)*x+92160)/(x2*x2*x2*x))
  Ty=sin((((((((364-16*y)*y-3192)*y+14400)*y-34464)*y+66240)*y-105216)*y+92160)/(y2*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Sc08-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((((((364-16*x)*x-3192)*x+14400)*x-34464)*x+66240)*x-105216)*x+92160)/(x2*x2*x2*x))
  Ty=fn1((((((((364-16*y)*y-3192)*y+14400)*y-34464)*y+66240)*y-105216)*y+92160)/(y2*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Sc08-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=((((((((364-16*p1)*p1-3192)*p1+14400)*p1-34464)*p1+66240)*p1-105216)*p1+92160)/(pp2*pp2*pp2*p1)):
  z2=z*z
  zt=z
  foz=fz
  fz=((((((((364-16*z)*z-3192)*z+14400)*z-34464)*z+66240)*z-105216)*z+92160)/(z2*z2*z2*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Sc08-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  const=p1, z=pixel:
  z2=z*z
  z=const*((((((((364-16*z)*z-3192)*z+14400)*z-34464)*z+66240)*z-105216)*z+92160)/(z2*z2*z2*z))
  |z|<100
  ;SOURCE: chby11.frm
}


Sc08-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  const=pixel, z=p1:
  z2=z*z
  z=const*((((((((364-16*z)*z-3192)*z+14400)*z-34464)*z+66240)*z-105216)*z+92160)/(z2*z2*z2*z))
  |z|<100
  ;SOURCE: chby12.frm
}


Sc08-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=((((((((364-16*z)*z-3192)*z+14400)*z-34464)*z+66240)*z-105216)*z+92160)/(z4*z2*z))
  fd=((((((6384-364*z)*z-43200)*z+137856)*z-331200)*z+631296)*z-645120)/z8
  fdd=((((((159600-9464*z)*z-1036800)*z+3170688)*z-7286400)*z+13257216)*z-12902400)/(z8*z)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Sc08-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=((((((((364-16*z)*z-3192)*z+14400)*z-34464)*z+66240)*z-105216)*z+92160)/(z4*z2*z))
  fd=((((((6384-364*z)*z-43200)*z+137856)*z-331200)*z+631296)*z-645120)/(z4*z4)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=((((((((364-16*w)*w-3192)*w+14400)*w-34464)*w+66240)*w-105216)*w+92160)/(w2*w2*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Sc08-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=((((((((364-16*z)*z-3192)*z+14400)*z-34464)*z+66240)*z-105216)*z+92160)/(z4*z2*z))
  fd=((((((6384-364*z)*z-43200)*z+137856)*z-331200)*z+631296)*z-645120)/(z4*z4)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Sc08-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=((((((((364-16*p1)*p1-3192)*p1+14400)*p1-34464)*p1+66240)*p1-105216)*p1+92160)/(pp2*pp2*pp2*p1)):
  z2=z*z
  zt=z
  foz=fz
  fz=((((((((364-16*z)*z-3192)*z+14400)*z-34464)*z+66240)*z-105216)*z+92160)/(z2*z2*z2*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Sc08-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*((((((((364-16*x)*x-3192)*x+14400)*x-34464)*x+66240)*x-105216)*x+92160)/(x2*x2*x2*x))
  x=x-t*((((((((364-16*y)*y-3192)*y+14400)*y-34464)*y+66240)*y-105216)*y+92160)/(y2*y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Sc08-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*sin((((((((364-16*x)*x-3192)*x+14400)*x-34464)*x+66240)*x-105216)*x+92160)/(x2*x2*x2*x))
  x=x-t*sin((((((((364-16*y)*y-3192)*y+14400)*y-34464)*y+66240)*y-105216)*y+92160)/(y2*y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Sc08-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((((((((364-16*x)*x-3192)*x+14400)*x-34464)*x+66240)*x-105216)*x+92160)/(x2*x2*x2*x))
  x=x-t*fn1((((((((364-16*y)*y-3192)*y+14400)*y-34464)*y+66240)*y-105216)*y+92160)/(y2*y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Sc08-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((((((364-16*x)*x-3192)*x+14400)*x-34464)*x+66240)*x-105216)*x+92160)/(x2*x2*x2*x))
  Ty=fn2((((((((364-16*y)*y-3192)*y+14400)*y-34464)*y+66240)*y-105216)*y+92160)/(y2*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Sc08-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((((((364-16*x)*x-3192)*x+14400)*x-34464)*x+66240)*x-105216)*x+92160)/(x2*x2*x2*x))
  Ty=fn2((((((((364-16*y)*y-3192)*y+14400)*y-34464)*y+66240)*y-105216)*y+92160)/(y2*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Sc08-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((((((((364-16*x)*x-3192)*x+14400)*x-34464)*x+66240)*x-105216)*x+92160)/(x2*x2*x2*x))
  x=x-t*fn2((((((((364-16*y)*y-3192)*y+14400)*y-34464)*y+66240)*y-105216)*y+92160)/(y2*y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Sc08-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((((((((364-16*x)*x-3192)*x+14400)*x-34464)*x+66240)*x-105216)*x+92160)/(x2*x2*x2*x))
  x=x-t*fn2((((((((364-16*y)*y-3192)*y+14400)*y-34464)*y+66240)*y-105216)*y+92160)/(y2*y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Sc08-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((((((364-16*x)*x-3192)*x+14400)*x-34464)*x+66240)*x-105216)*x+92160)/(x2*x2*x2*x))
  Ty=fn1((((((((364-16*y)*y-3192)*y+14400)*y-34464)*y+66240)*y-105216)*y+92160)/(y2*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Sc08-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1((((((((364-16*x)*x-3192)*x+14400)*x-34464)*x+66240)*x-105216)*x+92160)/(x2*x2*x2*x))
  Ty=fn1((((((((364-16*y)*y-3192)*y+14400)*y-34464)*y+66240)*y-105216)*y+92160)/(y2*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Sc08-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1((((((((364-16*x)*x-3192)*x+14400)*x-34464)*x+66240)*x-105216)*x+92160)/(x2*x2*x2*x))
  Ty=fn1((((((((364-16*y)*y-3192)*y+14400)*y-34464)*y+66240)*y-105216)*y+92160)/(y2*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Sc08-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((((((364-16*x)*x-3192)*x+14400)*x-34464)*x+66240)*x-105216)*x+92160)/(x2*x2*x2*x))
  Ty=fn1((((((((364-16*y)*y-3192)*y+14400)*y-34464)*y+66240)*y-105216)*y+92160)/(y2*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Sc08-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=(((((((364-16*x0)*x0-3192)*x0+14400)*x0-34464)*x0+66240)*x0-105216)*x0+92160)/(xx*xx*xx*x0)
  Fx1=(((((((364-16*x1)*x1-3192)*x1+14400)*x1-34464)*x1+66240)*x1-105216)*x1+92160)/(yy*yy*yy*x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Sc09-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Fx=((((((((263/12*x-1946/3)*x+8820)*x-61488)*x+241808)*x-559776)*x+1050112)*x-1580544)*x+1290240)/(x4*x4)
  Fy=((((((((263/12*y-1946/3)*y+8820)*y-61488)*y+241808)*y-559776)*y+1050112)*y-1580544)*y+1290240)/(y4*y4)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Sc09-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  bailout=p1+4, z=pixel:
  z2=z*z, z4=z2*z2
  z=((((((((263/12*z-1946/3)*z+8820)*z-61488)*z+241808)*z-559776)*z+1050112)*z-1580544)*z+1290240)/(z4*z4)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Sc09-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  const=p1, z=pixel:
  z2=z*z, z4=z2*z2
  z=const+(((((((((263/12*z-1946/3)*z+8820)*z-61488)*z+241808)*z-559776)*z+1050112)*z-1580544)*z+1290240)/(z4*z4))
  |z|<100
  ;SOURCE: chby3.frm
}


Sc09-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  const=pixel, z=p1:
  z2=z*z, z4=z2*z2
  z=const+(((((((((263/12*z-1946/3)*z+8820)*z-61488)*z+241808)*z-559776)*z+1050112)*z-1580544)*z+1290240)/(z4*z4))
  |z|<100
  ;SOURCE: chby4.frm
}


Sc09-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=(((((((((263/12*z-1946/3)*z+8820)*z-61488)*z+241808)*z-559776)*z+1050112)*z-1580544)*z+1290240)/z8)
  fd=(((((((1946/3*z-17640)*z+184464)*z-967232)*z+2798880)*z-6300672)*z+11063808)*z-10321920)/(z8*z)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Sc09-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=(((((((((263/12*z-1946/3)*z+8820)*z-61488)*z+241808)*z-559776)*z+1050112)*z-1580544)*z+1290240)/z8)
  fd=(((((((1946/3*z-17640)*z+184464)*z-967232)*z+2798880)*z-6300672)*z+11063808)*z-10321920)/(z8*z)
  fdd=(((((((19460*z-511560)*z+5164992)*z-26115264)*z+72770880)*z-157516800)*z+265531392)*z-237404160)/(z8*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Sc09-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=(((((((((263/12*z-1946/3)*z+8820)*z-61488)*z+241808)*z-559776)*z+1050112)*z-1580544)*z+1290240)/z8)
  fd=(((((((1946/3*z-17640)*z+184464)*z-967232)*z+2798880)*z-6300672)*z+11063808)*z-10321920)/(z8*z)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  fw=(((((((((263/12*w-1946/3)*w+8820)*w-61488)*w+241808)*w-559776)*w+1050112)*w-1580544)*w+1290240)/(w4*w4))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Sc09-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=sin(((((((((263/12*x-1946/3)*x+8820)*x-61488)*x+241808)*x-559776)*x+1050112)*x-1580544)*x+1290240)/(x4*x4))
  Ty=sin(((((((((263/12*y-1946/3)*y+8820)*y-61488)*y+241808)*y-559776)*y+1050112)*y-1580544)*y+1290240)/(y4*y4))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Sc09-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((263/12*x-1946/3)*x+8820)*x-61488)*x+241808)*x-559776)*x+1050112)*x-1580544)*x+1290240)/(x4*x4))
  Ty=fn1(((((((((263/12*y-1946/3)*y+8820)*y-61488)*y+241808)*y-559776)*y+1050112)*y-1580544)*y+1290240)/(y4*y4))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Sc09-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1, pp4=pp2*pp2
  fz=(((((((((263/12*p1-1946/3)*p1+8820)*p1-61488)*p1+241808)*p1-559776)*p1+1050112)*p1-1580544)*p1+1290240)/(pp4*pp4)):
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=(((((((((263/12*z-1946/3)*z+8820)*z-61488)*z+241808)*z-559776)*z+1050112)*z-1580544)*z+1290240)/(z4*z4))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Sc09-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  const=p1, z=pixel:
  z2=z*z, z4=z2*z2
  z=const*(((((((((263/12*z-1946/3)*z+8820)*z-61488)*z+241808)*z-559776)*z+1050112)*z-1580544)*z+1290240)/(z4*z4))
  |z|<100
  ;SOURCE: chby11.frm
}


Sc09-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  const=pixel, z=p1:
  z2=z*z, z4=z2*z2
  z=const*(((((((((263/12*z-1946/3)*z+8820)*z-61488)*z+241808)*z-559776)*z+1050112)*z-1580544)*z+1290240)/(z4*z4))
  |z|<100
  ;SOURCE: chby12.frm
}


Sc09-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=(((((((((263/12*z-1946/3)*z+8820)*z-61488)*z+241808)*z-559776)*z+1050112)*z-1580544)*z+1290240)/z8)
  fd=(((((((1946/3*z-17640)*z+184464)*z-967232)*z+2798880)*z-6300672)*z+11063808)*z-10321920)/(z8*z)
  fdd=(((((((19460*z-511560)*z+5164992)*z-26115264)*z+72770880)*z-157516800)*z+265531392)*z-237404160)/(z8*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Sc09-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=(((((((((263/12*z-1946/3)*z+8820)*z-61488)*z+241808)*z-559776)*z+1050112)*z-1580544)*z+1290240)/z8)
  fd=(((((((1946/3*z-17640)*z+184464)*z-967232)*z+2798880)*z-6300672)*z+11063808)*z-10321920)/(z8*z)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  fw=(((((((((263/12*w-1946/3)*w+8820)*w-61488)*w+241808)*w-559776)*w+1050112)*w-1580544)*w+1290240)/(w4*w4))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Sc09-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=(((((((((263/12*z-1946/3)*z+8820)*z-61488)*z+241808)*z-559776)*z+1050112)*z-1580544)*z+1290240)/z8)
  fd=(((((((1946/3*z-17640)*z+184464)*z-967232)*z+2798880)*z-6300672)*z+11063808)*z-10321920)/(z8*z)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Sc09-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1, pp4=pp2*pp2
  fz=(((((((((263/12*p1-1946/3)*p1+8820)*p1-61488)*p1+241808)*p1-559776)*p1+1050112)*p1-1580544)*p1+1290240)/(pp4*pp4)):
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=(((((((((263/12*z-1946/3)*z+8820)*z-61488)*z+241808)*z-559776)*z+1050112)*z-1580544)*z+1290240)/(z4*z4))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Sc09-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*(((((((((263/12*x-1946/3)*x+8820)*x-61488)*x+241808)*x-559776)*x+1050112)*x-1580544)*x+1290240)/(x4*x4))
  x=x-t*(((((((((263/12*y-1946/3)*y+8820)*y-61488)*y+241808)*y-559776)*y+1050112)*y-1580544)*y+1290240)/(y4*y4))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Sc09-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*sin(((((((((263/12*x-1946/3)*x+8820)*x-61488)*x+241808)*x-559776)*x+1050112)*x-1580544)*x+1290240)/(x4*x4))
  x=x-t*sin(((((((((263/12*y-1946/3)*y+8820)*y-61488)*y+241808)*y-559776)*y+1050112)*y-1580544)*y+1290240)/(y4*y4))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Sc09-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1(((((((((263/12*x-1946/3)*x+8820)*x-61488)*x+241808)*x-559776)*x+1050112)*x-1580544)*x+1290240)/(x4*x4))
  x=x-t*fn1(((((((((263/12*y-1946/3)*y+8820)*y-61488)*y+241808)*y-559776)*y+1050112)*y-1580544)*y+1290240)/(y4*y4))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Sc09-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((263/12*x-1946/3)*x+8820)*x-61488)*x+241808)*x-559776)*x+1050112)*x-1580544)*x+1290240)/(x4*x4))
  Ty=fn2(((((((((263/12*y-1946/3)*y+8820)*y-61488)*y+241808)*y-559776)*y+1050112)*y-1580544)*y+1290240)/(y4*y4))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Sc09-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((263/12*x-1946/3)*x+8820)*x-61488)*x+241808)*x-559776)*x+1050112)*x-1580544)*x+1290240)/(x4*x4))
  Ty=fn2(((((((((263/12*y-1946/3)*y+8820)*y-61488)*y+241808)*y-559776)*y+1050112)*y-1580544)*y+1290240)/(y4*y4))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Sc09-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1(((((((((263/12*x-1946/3)*x+8820)*x-61488)*x+241808)*x-559776)*x+1050112)*x-1580544)*x+1290240)/(x4*x4))
  x=x-t*fn2(((((((((263/12*y-1946/3)*y+8820)*y-61488)*y+241808)*y-559776)*y+1050112)*y-1580544)*y+1290240)/(y4*y4))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Sc09-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1(((((((((263/12*x-1946/3)*x+8820)*x-61488)*x+241808)*x-559776)*x+1050112)*x-1580544)*x+1290240)/(x4*x4))
  x=x-t*fn2(((((((((263/12*y-1946/3)*y+8820)*y-61488)*y+241808)*y-559776)*y+1050112)*y-1580544)*y+1290240)/(y4*y4))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Sc09-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((263/12*x-1946/3)*x+8820)*x-61488)*x+241808)*x-559776)*x+1050112)*x-1580544)*x+1290240)/(x4*x4))
  Ty=fn1(((((((((263/12*y-1946/3)*y+8820)*y-61488)*y+241808)*y-559776)*y+1050112)*y-1580544)*y+1290240)/(y4*y4))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Sc09-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((263/12*x-1946/3)*x+8820)*x-61488)*x+241808)*x-559776)*x+1050112)*x-1580544)*x+1290240)/(x4*x4))
  Ty=fn1(((((((((263/12*y-1946/3)*y+8820)*y-61488)*y+241808)*y-559776)*y+1050112)*y-1580544)*y+1290240)/(y4*y4))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Sc09-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((263/12*x-1946/3)*x+8820)*x-61488)*x+241808)*x-559776)*x+1050112)*x-1580544)*x+1290240)/(x4*x4))
  Ty=fn1(((((((((263/12*y-1946/3)*y+8820)*y-61488)*y+241808)*y-559776)*y+1050112)*y-1580544)*y+1290240)/(y4*y4))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Sc09-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((263/12*x-1946/3)*x+8820)*x-61488)*x+241808)*x-559776)*x+1050112)*x-1580544)*x+1290240)/(x4*x4))
  Ty=fn1(((((((((263/12*y-1946/3)*y+8820)*y-61488)*y+241808)*y-559776)*y+1050112)*y-1580544)*y+1290240)/(y4*y4))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Sc09-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1, x4=xx*xx, y4=yy*yy
  Fx0=((((((((263/12*x0-1946/3)*x0+8820)*x0-61488)*x0+241808)*x0-559776)*x0+1050112)*x0-1580544)*x0+1290240)/(x4*x4)
  Fx1=((((((((263/12*x1-1946/3)*x1+8820)*x1-61488)*x1+241808)*x1-559776)*x1+1050112)*x1-1580544)*x1+1290240)/(y4*y4)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Sc10-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Fx=(((((((((1096-76/3*x)*x-61376/3)*x+211392)*x-1260160)*x+4508672)*x-10156544)*x+18608128)*x-26763264)*x+20643840)/(x4*x4*x)
  Fy=(((((((((1096-76/3*y)*y-61376/3)*y+211392)*y-1260160)*y+4508672)*y-10156544)*y+18608128)*y-26763264)*y+20643840)/(y4*y4*y)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Sc10-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  bailout=p1+4, z=pixel:
  z2=z*z, z4=z2*z2
  z=(((((((((1096-76/3*z)*z-61376/3)*z+211392)*z-1260160)*z+4508672)*z-10156544)*z+18608128)*z-26763264)*z+20643840)/(z4*z4*z)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Sc10-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  const=p1, z=pixel:
  z2=z*z, z4=z2*z2
  z=const+((((((((((1096-76/3*z)*z-61376/3)*z+211392)*z-1260160)*z+4508672)*z-10156544)*z+18608128)*z-26763264)*z+20643840)/(z4*z4*z))
  |z|<100
  ;SOURCE: chby3.frm
}


Sc10-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  const=pixel, z=p1:
  z2=z*z, z4=z2*z2
  z=const+((((((((((1096-76/3*z)*z-61376/3)*z+211392)*z-1260160)*z+4508672)*z-10156544)*z+18608128)*z-26763264)*z+20643840)/(z4*z4*z))
  |z|<100
  ;SOURCE: chby4.frm
}


Sc10-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=((((((((((1096-76/3*z)*z-61376/3)*z+211392)*z-1260160)*z+4508672)*z-10156544)*z+18608128)*z-26763264)*z+20643840)/(z8*z))
  fd=((((((((122752/3-1096*z)*z-634176)*z+5040640)*z-22543360)*z+60939264)*z-130256896)*z+214106112)*z-185794560)/(z8*z2)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Sc10-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4, z10=z8*z2
  f=((((((((((1096-76/3*z)*z-61376/3)*z+211392)*z-1260160)*z+4508672)*z-10156544)*z+18608128)*z-26763264)*z+20643840)/(z8*z))
  fd=((((((((122752/3-1096*z)*z-634176)*z+5040640)*z-22543360)*z+60939264)*z-130256896)*z+214106112)*z-185794560)/z10
  fdd=((((((((1350272-37264*z)*z-20293632)*z+156259840)*z-676300800)*z+1767238656)*z-3647193088)*z+5780865024)*z-4830658560)/(z10*z)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Sc10-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=((((((((((1096-76/3*z)*z-61376/3)*z+211392)*z-1260160)*z+4508672)*z-10156544)*z+18608128)*z-26763264)*z+20643840)/(z8*z))
  fd=((((((((122752/3-1096*z)*z-634176)*z+5040640)*z-22543360)*z+60939264)*z-130256896)*z+214106112)*z-185794560)/(z8*z2)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  fw=((((((((((1096-76/3*w)*w-61376/3)*w+211392)*w-1260160)*w+4508672)*w-10156544)*w+18608128)*w-26763264)*w+20643840)/(w4*w4*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Sc10-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=sin((((((((((1096-76/3*x)*x-61376/3)*x+211392)*x-1260160)*x+4508672)*x-10156544)*x+18608128)*x-26763264)*x+20643840)/(x4*x4*x))
  Ty=sin((((((((((1096-76/3*y)*y-61376/3)*y+211392)*y-1260160)*y+4508672)*y-10156544)*y+18608128)*y-26763264)*y+20643840)/(y4*y4*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Sc10-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1((((((((((1096-76/3*x)*x-61376/3)*x+211392)*x-1260160)*x+4508672)*x-10156544)*x+18608128)*x-26763264)*x+20643840)/(x4*x4*x))
  Ty=fn1((((((((((1096-76/3*y)*y-61376/3)*y+211392)*y-1260160)*y+4508672)*y-10156544)*y+18608128)*y-26763264)*y+20643840)/(y4*y4*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Sc10-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1, pp4=pp2*pp2
  fz=((((((((((1096-76/3*p1)*p1-61376/3)*p1+211392)*p1-1260160)*p1+4508672)*p1-10156544)*p1+18608128)*p1-26763264)*p1+20643840)/(pp4*pp4*p1)):
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=((((((((((1096-76/3*z)*z-61376/3)*z+211392)*z-1260160)*z+4508672)*z-10156544)*z+18608128)*z-26763264)*z+20643840)/(z4*z4*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Sc10-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  const=p1, z=pixel:
  z2=z*z, z4=z2*z2
  z=const*((((((((((1096-76/3*z)*z-61376/3)*z+211392)*z-1260160)*z+4508672)*z-10156544)*z+18608128)*z-26763264)*z+20643840)/(z4*z4*z))
  |z|<100
  ;SOURCE: chby11.frm
}


Sc10-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  const=pixel, z=p1:
  z2=z*z, z4=z2*z2
  z=const*((((((((((1096-76/3*z)*z-61376/3)*z+211392)*z-1260160)*z+4508672)*z-10156544)*z+18608128)*z-26763264)*z+20643840)/(z4*z4*z))
  |z|<100
  ;SOURCE: chby12.frm
}


Sc10-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4, z10=z8*z2
  f=((((((((((1096-76/3*z)*z-61376/3)*z+211392)*z-1260160)*z+4508672)*z-10156544)*z+18608128)*z-26763264)*z+20643840)/(z8*z))
  fd=((((((((122752/3-1096*z)*z-634176)*z+5040640)*z-22543360)*z+60939264)*z-130256896)*z+214106112)*z-185794560)/z10
  fdd=((((((((1350272-37264*z)*z-20293632)*z+156259840)*z-676300800)*z+1767238656)*z-3647193088)*z+5780865024)*z-4830658560)/(z10*z)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Sc10-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=((((((((((1096-76/3*z)*z-61376/3)*z+211392)*z-1260160)*z+4508672)*z-10156544)*z+18608128)*z-26763264)*z+20643840)/(z8*z))
  fd=((((((((122752/3-1096*z)*z-634176)*z+5040640)*z-22543360)*z+60939264)*z-130256896)*z+214106112)*z-185794560)/(z8*z2)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  fw=((((((((((1096-76/3*w)*w-61376/3)*w+211392)*w-1260160)*w+4508672)*w-10156544)*w+18608128)*w-26763264)*w+20643840)/(w4*w4*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Sc10-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=((((((((((1096-76/3*z)*z-61376/3)*z+211392)*z-1260160)*z+4508672)*z-10156544)*z+18608128)*z-26763264)*z+20643840)/(z8*z))
  fd=((((((((122752/3-1096*z)*z-634176)*z+5040640)*z-22543360)*z+60939264)*z-130256896)*z+214106112)*z-185794560)/(z8*z2)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Sc10-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1, pp4=pp2*pp2
  fz=((((((((((1096-76/3*p1)*p1-61376/3)*p1+211392)*p1-1260160)*p1+4508672)*p1-10156544)*p1+18608128)*p1-26763264)*p1+20643840)/(pp4*pp4*p1)):
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=((((((((((1096-76/3*z)*z-61376/3)*z+211392)*z-1260160)*z+4508672)*z-10156544)*z+18608128)*z-26763264)*z+20643840)/(z4*z4*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Sc10-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*((((((((((1096-76/3*x)*x-61376/3)*x+211392)*x-1260160)*x+4508672)*x-10156544)*x+18608128)*x-26763264)*x+20643840)/(x4*x4*x))
  x=x-t*((((((((((1096-76/3*y)*y-61376/3)*y+211392)*y-1260160)*y+4508672)*y-10156544)*y+18608128)*y-26763264)*y+20643840)/(y4*y4*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Sc10-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*sin((((((((((1096-76/3*x)*x-61376/3)*x+211392)*x-1260160)*x+4508672)*x-10156544)*x+18608128)*x-26763264)*x+20643840)/(x4*x4*x))
  x=x-t*sin((((((((((1096-76/3*y)*y-61376/3)*y+211392)*y-1260160)*y+4508672)*y-10156544)*y+18608128)*y-26763264)*y+20643840)/(y4*y4*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Sc10-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1((((((((((1096-76/3*x)*x-61376/3)*x+211392)*x-1260160)*x+4508672)*x-10156544)*x+18608128)*x-26763264)*x+20643840)/(x4*x4*x))
  x=x-t*fn1((((((((((1096-76/3*y)*y-61376/3)*y+211392)*y-1260160)*y+4508672)*y-10156544)*y+18608128)*y-26763264)*y+20643840)/(y4*y4*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Sc10-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1((((((((((1096-76/3*x)*x-61376/3)*x+211392)*x-1260160)*x+4508672)*x-10156544)*x+18608128)*x-26763264)*x+20643840)/(x4*x4*x))
  Ty=fn2((((((((((1096-76/3*y)*y-61376/3)*y+211392)*y-1260160)*y+4508672)*y-10156544)*y+18608128)*y-26763264)*y+20643840)/(y4*y4*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Sc10-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1((((((((((1096-76/3*x)*x-61376/3)*x+211392)*x-1260160)*x+4508672)*x-10156544)*x+18608128)*x-26763264)*x+20643840)/(x4*x4*x))
  Ty=fn2((((((((((1096-76/3*y)*y-61376/3)*y+211392)*y-1260160)*y+4508672)*y-10156544)*y+18608128)*y-26763264)*y+20643840)/(y4*y4*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Sc10-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1((((((((((1096-76/3*x)*x-61376/3)*x+211392)*x-1260160)*x+4508672)*x-10156544)*x+18608128)*x-26763264)*x+20643840)/(x4*x4*x))
  x=x-t*fn2((((((((((1096-76/3*y)*y-61376/3)*y+211392)*y-1260160)*y+4508672)*y-10156544)*y+18608128)*y-26763264)*y+20643840)/(y4*y4*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Sc10-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1((((((((((1096-76/3*x)*x-61376/3)*x+211392)*x-1260160)*x+4508672)*x-10156544)*x+18608128)*x-26763264)*x+20643840)/(x4*x4*x))
  x=x-t*fn2((((((((((1096-76/3*y)*y-61376/3)*y+211392)*y-1260160)*y+4508672)*y-10156544)*y+18608128)*y-26763264)*y+20643840)/(y4*y4*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Sc10-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1((((((((((1096-76/3*x)*x-61376/3)*x+211392)*x-1260160)*x+4508672)*x-10156544)*x+18608128)*x-26763264)*x+20643840)/(x4*x4*x))
  Ty=fn1((((((((((1096-76/3*y)*y-61376/3)*y+211392)*y-1260160)*y+4508672)*y-10156544)*y+18608128)*y-26763264)*y+20643840)/(y4*y4*y))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Sc10-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1((((((((((1096-76/3*x)*x-61376/3)*x+211392)*x-1260160)*x+4508672)*x-10156544)*x+18608128)*x-26763264)*x+20643840)/(x4*x4*x))
  Ty=fn1((((((((((1096-76/3*y)*y-61376/3)*y+211392)*y-1260160)*y+4508672)*y-10156544)*y+18608128)*y-26763264)*y+20643840)/(y4*y4*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Sc10-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1((((((((((1096-76/3*x)*x-61376/3)*x+211392)*x-1260160)*x+4508672)*x-10156544)*x+18608128)*x-26763264)*x+20643840)/(x4*x4*x))
  Ty=fn1((((((((((1096-76/3*y)*y-61376/3)*y+211392)*y-1260160)*y+4508672)*y-10156544)*y+18608128)*y-26763264)*y+20643840)/(y4*y4*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Sc10-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1((((((((((1096-76/3*x)*x-61376/3)*x+211392)*x-1260160)*x+4508672)*x-10156544)*x+18608128)*x-26763264)*x+20643840)/(x4*x4*x))
  Ty=fn1((((((((((1096-76/3*y)*y-61376/3)*y+211392)*y-1260160)*y+4508672)*y-10156544)*y+18608128)*y-26763264)*y+20643840)/(y4*y4*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Sc10-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1, x4=xx*xx, y4=yy*yy
  Fx0=(((((((((1096-76/3*x0)*x0-61376/3)*x0+211392)*x0-1260160)*x0+4508672)*x0-10156544)*x0+18608128)*x0-26763264)*x0+20643840)/(x4*x4*x0)
  Fx1=(((((((((1096-76/3*x1)*x1-61376/3)*x1+211392)*x1-1260160)*x1+4508672)*x1-10156544)*x1+18608128)*x1-26763264)*x1+20643840)/(y4*y4*x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Scary {
  z = c = pixel, halfe = e * (-0.5):
  r = sqr(fn1(1/z)) - c + p1
  q = fn2(z)/halfe + c + p2
  z = (q * (whitesq == 0)) + (r * (whitesq == 1))
  |z| <= 4
  ;SOURCE: scary.frm
}


Schizo {
  z = c = pixel:
  r = z * (1/fn1(z)) + p1
  z = fn2(r) * z + c 
  round(z) <= 4
  ;SOURCE: schizo.frm
}


Schnitz {
  z = pixel:
  z = cos(z^2)
  ;SOURCE: welner.frm
}


scorpio (XAXIS) {
    ; Throw in a second function and things get interesting again
  zp1 = zp2 = pixel, z = (0,0):
  temp = z
  z = zp1*zp1 - zp2
  zp2 = zp1
  zp1 = sin(temp)
  |zp1| <= 4
  ;SOURCE: noel.frm
}


ScottCos (XYAXIS) { 
  z = pixel 
  TEST = (p1+3): 
  z = cos(z) + sqr(z) 
  |z|<TEST 
  ;SOURCE: fracv13r.frm
}


ScottCosH (XYAXIS) { 
  z = pixel 
  TEST = (p1+3): 
  z = cosh(z) + sqr(z) 
  |z|<TEST 
  ;SOURCE: fracv13r.frm
}


ScottCZSA (XYAXIS) { 
  z = pixel 
  TEST = (p1+3): 
  z = cos(z*z) 
  |z|<TEST 
  ;SOURCE: fracv13r.frm
}


ScottCZSB (XYAXIS) { 
  z = pixel 
  TEST = (p1+3): 
  z = cos(z)*cos(z) 
  |z|<TEST 
  ;SOURCE: fracv13r.frm
}


ScottLPC (XAXIS) { 
  z = pixel, TEST = (p1+3): 
  z = log(z)+cosxx(z) 
  |z|<TEST 
  ;SOURCE: skinner.frm
}


ScottLPS (XAXIS) { 
  z = pixel, TEST = (p1+3): 
  z = log(z)+sin(z) 
  |z|<TEST 
  ;SOURCE: skinner.frm
}


ScottLTC (XAXIS) { 
  z = pixel, TEST = (p1+3): 
  z = log(z)*cosxx(z) 
  |z|<TEST 
  ;SOURCE: skinner.frm
}


ScottLTS (XAXIS) { 
  z = pixel, TEST = (p1+3): 
  z = log(z)*sin(z) 
  |z|<TEST 
  ;SOURCE: skinner.frm
}


ScottSIC (XYAXIS) { 
  z = pixel, TEST = (p1+3): 
  z = sqr(1/cosxx(z)) 
  |z|<TEST 
  ;SOURCE: skinner.frm
}


ScottSin(XAXIS) { 
  z = pixel 
  TEST = (p1+3): 
  z = sin(z) + sqr(z) 
  |z|<TEST 
  ;SOURCE: fracv13r.frm
}


ScottSinH (XAXIS) { 
  z = pixel 
  TEST = (p1+3): 
  z = sinh(z) + sqr(z) 
  |z|<TEST 
  ;SOURCE: fracv13r.frm
}


ScottSIS (XYAXIS) { 
  z = pixel, TEST = (p1+3): 
  z = sqr(1/sin(z)) 
  |z|<TEST 
  ;SOURCE: skinner.frm
}


ScottSZSA (XYAXIS) { 
  z = pixel 
  TEST = (p1+3): 
  z = sin(z*z) 
  |z|<TEST 
  ;SOURCE: fracv13r.frm
}


ScottSZSB (XYAXIS) { 
  z = pixel 
  TEST = (p1+3): 
  z = sin(z)*sin(z) 
  |z|<TEST 
  ;SOURCE: fracv13r.frm
}


ScottZCZZ (XYAXIS) { 
  z = pixel 
  TEST = (p1+3): 
  z = (z*cos(z))+z 
  |z|<TEST 
  ;SOURCE: fracv13r.frm
}


ScottZSZZ (XAXIS) { 
  z = pixel 
  TEST = (p1+3): 
  z = (z*sin(z))+z 
  |z|<TEST 
  ;SOURCE: fracv13r.frm
}


ScSkCos (XYAXIS) { 
  z = pixel 
  TEST = (p1+3): 
  z = cosxx(z) - sqr(z) 
  |z|<TEST 
  ;SOURCE: skinv13r.frm
}


ScSkCosH (XYAXIS) { 
  z = pixel, TEST = (p1+3): 
  z = cosh(z) - sqr(z) 
  |z|<TEST 
  ;SOURCE: skinner.frm
}


ScSkLMS (XAXIS) {
  z = pixel, TEST = (p1+3):
  z = log(z) - sin(z)
  |z|<TEST
  ;SOURCE: fractint.frm
}


ScSkSin (XAXIS) { 
  z = pixel 
  TEST = (p1+3): 
  z = sin(z) - sqr(z) 
  |z|<TEST 
  ;SOURCE: skinv13r.frm
}


ScSkSinH (XAXIS) { 
  z = pixel 
  TEST = (p1+3): 
  z = sinh(z) - sqr(z) 
  |z|<TEST 
  ;SOURCE: skinv13r.frm
}


ScSkZCZZ (XYAXIS) {
  z = pixel, TEST = (p1+3):
  z = (z*cosxx(z)) - z
  |z|<TEST
  ;SOURCE: fractint.frm
}


ScSkZSZZ (XAXIS) { 
  z = pixel 
  TEST = (p1+3): 
  z = (z*sin(z)) - z 
  |z|<TEST 
  ;SOURCE: skinv13r.frm
}


seashell {; Giuseppe Zito
  z = pixel
  c4 = -0.998097
  c6 = -0.078002
  d0 = -0.593396
  d3 = 0.763522
  d5 = -0.958196
  d7 = -0.068108
  d13 = 0.651859
  : 
  x = real(z), y = imag(z)
  s0 = x
  s0 = s0 /x
  s0 = s0 -x
  s0 = s0 +c4
  s0 = s0 *c6
  s0 = s0 +x
  s0 = s0 /y
  s0 = s0 -y
  s0 = s0 *x
  s0 = s0 /y
  newx = s0 
  s0 =d0
  s0 = s0 *d3
  s0 = s0 /d5
  s0 = s0 +d7
  s1 = y
  s1 = s1 -y
  s1 = s1 /x
  s0 = s0 *s1
  s0 = s0 /d13
  s0 = s0 -x
  s0 = s0 /y
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


seaweed {; Giuseppe Zito
  z = pixel
  d0 = 0.318533
  d4 = 0.70096
  d6 = 0.94905
  d9 = -0.491294
  d13 = 0.008099
  : 
  x = real(z), y = imag(z)
  s0 = y
  newx = s0 
  s0 =d0
  s0 = s0 +y
  s0 = s0 +d4
  s1 = x
  s1 = s1 *d6
  s1 = s1 *y
  s1 = s1 *d9
  s1 = s1 +y
  s1 = s1 -y
  s0 = s0 *s1
  s0 = s0 +d13
  s0 = s0 /x
  s0 = s0 -x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


Secant {
   ; (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = pixel
  z1 = (0, 0)
  z2 = (0, 0):
  z4 = z * z * z * z
  z = z1 - (z4 - 1) * ( z1 - z2) / ((z4 - 1) - z2)
  z1 = z
  z2 = z1
  |z| <= 4
  ;SOURCE: methods.frm
}


Secant-2 {
   ; (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = pixel
  z1 = (0, 0)
  z2 = (0, 0):
  z4 = z * z * z * z
  z = z1 - (z4 - 1) * ( z1 - z2) / ((z4 - 1) - z2)
  z1 = z
  z2 = z1
  |z| <= 0.004
  ;SOURCE: methods.frm
}


SECANT1 {; Ray Girvan, March 1998
         ; secant method for roots of f(z)=0
         ; z^5-1=0
         ; z_n+1 = z_n - f(z_n)*(z_n - z_n-1)/(f(z_n) - f(z_n-1))
         ; needs two seed values z0, z1
         ; Newton-like images, perturbed by choice of z1,
         ; a relaxation factor p2, and a function fn2
         ; inside the iteration loop 
  z=pixel, z0=(0,0), z1=fn1(z)+p1:
  f0=z0*z0*z0*z0*z0-1
  f1=z1*z1*z1*z1*z1-1 
  z=z-p2*f1*(z1-z0)/(f1-f0)
  z0=z1
  z1=fn2(z)
  |f1| >= 0.0001
  ;SOURCE: 98msg.frm
}


Secant_Sin {; Copyright (c) Paul W. Carlson, 1998
    ;
    ; F(w) = sin(w) - p3
    ;
    ; p1 = convergence test distance (I use 0.00000001)
    ; p2 = relaxation factor
    ; p3 = equation constant
    ;
  w0 = pixel
  w1 = flip(w0)
  z = iter = bailout = w = 0
  :
    ;
  f0 = sin(w0) - p3
  f1 = sin(w1) - p3
  w = w - p2 * f1 * (w1 - w0) / (f1 - f0)
    ;
  delta_w = w1 - w0
  IF (|delta_w| < p1)
    angle = atan(imag(delta_w) / real(delta_w))
    IF (delta_w >= 0)
      IF (imag(delta_w) < 0)
        angle = pi + angle
      ELSE
        angle = pi - angle
      ENDIF
    ELSEIF (imag(delta_w) > 0)
      angle = -angle
    ENDIF
    bailout = 1
    z = 249 * angle/pi + 1
  ENDIF
  w0 = w1
  w1 = w
  iter = iter + 1
  z = z - iter
  bailout == 0
  ;SOURCE: 98msg.frm
}


Secant_z4-1 {
   ; The Fractint formula for z^4-1 is:
  z = pixel
  z0 = p1:
  zt = z
  z1 = z0 * z0 * z0 * z0 - 1
  z2 = z * z * z * z - 1
  z = z - z2 * (z - z0) / (z2 - z1)
  z0 = zt
  |z2| > 0.001
  ;SOURCE: secant.frm
}


Secantbrot {; Tom Schumm
   ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  imag(z) <= 4/cos(real(z))    ; Different escape boundry
  ;SOURCE: phong.frm
}


Secantia (ORIGIN) {; Tom Schumm
   ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
  z = z + p1
  z = Sqr(z)
  imag(z) <= 4/cos(real(z))    ; Different escape boundry
  ;SOURCE: phong2.frm
}


septo (XAXIS) {
    ; We can save and use more than just the previous term
  z = pixel, zp1 = zp2 = (0,0):
  temp = z
  z = z*z - zp2
  zp2 = zp1
  zp1 = temp
  |zp1| <= 4 
  ;SOURCE: noel.frm
}


Series_Balls_Mset {; Copyright (c) Paul W. Carlson, 1998
    ;
    ; real(p1) = a factor controlling the size of the balls
    ;
  w = z = iter = color_num = bailout = 0
  c = pixel
  dist = 1.0e20
  size = real(p1)
  num_colors = 8
  aaa = 1 / 90, bbb = 1 / 113400, ccc = 1 / 681080400
  :
  w = w * w + c, w2 = w * w, w4 = w2 * w2, w6 = w2 * w4
  w10 = w4 * w6, w14 = w4 * w10
  w = w2 - aaa * w6 + bbb * w10 - ccc * w14 + c, w = w * w + c
    ;
  IF (|w + (0,-.5)| < size)
    dist = size - |w + (0,-.5)|
  ELSEIF (|w + (0,.5)| < size)
    dist = size - |w + (0,.5)|
  ELSEIF (|w + (-.5,0)| < size)
    dist = size - |w + (-.5,0)|
  ELSEIF (|w + (.5,0)| < size)
    dist = size - |w + (.5,0)|
  ENDIF
  IF (dist < size && iter > 0)
    bailout = 1
    z = color_num + 1.2
  ENDIF
  color_num = color_num + 1
  IF (color_num == num_colors)
    color_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < 100
  ;SOURCE: 97msg.frm
}


seta {; Giuseppe Zito
  z = pixel
  c0 = -0.381735
  d0 = 0.697324
  d4 = -0.225841
  d8 = 0.403391
  d11 = 0.993975
  d12 = 0.442516
  d14 = 0.739683
  : 
  x = real(z), y = imag(z)
  s0 =c0
  s0 = s0 *x
  s0 = s0 -y
  newx = s0 
  s0 =d0
  s0 = s0 *x
  s0 = s0 -x
  s1 = x
  s1 = s1 -d4
  s0 = s0 +s1
  s0 = s0 -x
  s0 = s0 *x
  s1 =d8
  s0 = s0 +s1
  s0 = s0 /d11
  s0 = s0 +d12
  s0 = s0 *d14
  s0 = s0 *x
  s0 = s0 +x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


seven {; Giuseppe Zito
  z = pixel
  c1 = -0.45124
  d1 = 0.001203
  d6 = 0.941406:
  x = real(z), y = imag(z)
  newx =x*c1-y
  s1 =y-d1
  newy=(d6*y/s1)+x
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4
  ;SOURCE: zg.frm
}


sfi-p160 {; Sylvie Gallet, Mar 1998
  z = pixel :
  z = e^(z-1)                       ; z = 1/e * e^z
  IF (z >= 50 && cos(imag(z)) >= 0)
    continue = 0
  ELSE
    continue = 1
  ENDIF
  continue
  ;SOURCE: 98msg.frm
}


sg-fractint {; Sylvie Gallet [101324,3444], 1996
  z = pixel-0.025, x=real(z), y=imag(z), x1=x*1.8, x3=3*x
  ty2 = ( (y<0.025) && (y>-0.025) ) || (y>0.175)
  f = ( (x<-1.2) || ty2 ) && ( (x>-1.25) && (x<-1) )
  r = ( (x<-0.9) || ty2 ) && ( (x>-0.95) && (x<-0.8) )
  r = r || ((cabs(sqrt(|z+(0.8,-0.1)|)-0.1)<0.025) && (x>-0.8))
  r = r || (((y<(-x1-1.44)) && (y>(-x1-1.53))) && (y<0.025))
  a = (y>(x3+1.5)) || (y>(-x3-1.2)) || ((y>-0.125) && (y<-0.075))
  a = a && ((y<(x3+1.65)) && (y<(-x3-1.05)))
  c = (cabs(sqrt(|z+0.05|)-0.2)<0.025) && (x<0.05)
  t1 = ((x>0.225) && (x<0.275) || (y>0.175)) && ((x>0.1) && (x<0.4))
  i = (x>0.45) && (x<0.5)
  n = (x<0.6) || (x>0.8) || ((y>-x1+1.215) && (y<-x1+1.305))
  n = n && (x>0.55) && (x<0.85)
  t2 = ((x>1.025) && (x<1.075) || (y>0.175)) && ((x>0.9) && (x<1.2))
  test = 1 - (real(f||r||a||c||t1||i||n||t2)*real(y>-0.225)*real(y<0.225))
  z = 1+(0.0,-0.65)/(pixel+(0.0,.75)) :
  z2 = z*z, z4 = z2*z2, n = z4*z2-1, z = z-n/(6*z4*z)
  (|n|>=0.0001) && test
  ;SOURCE: 9601.frm
}


sg_candy {
  z = iter = 0, c = pixel, esc = 10000, continue = 1
  :
  iter = iter + 1
  IF (continue == 1)
    z = z*z + c
    IF (|z| > esc)
      IF (imag(z) >= 0)
        color = 1 + 5*iter
      ELSE
        color = 4 + 5*iter
      ENDIF
      continue = 0
    ENDIF
  ENDIF
  IF (continue == 0)
    z = exp(2*pi*flip(color)/256)
  ENDIF
  continue
  ;SOURCE: sg_misc.frm
}


sg_ifs_45_J {
  a0=0.40944, b0=0.63556, c0=0.69977, d0=-0.36429
  a1=0.44003, b1=-0.21839, c1=0.41333, d1=0.37676
  a2=0.10788, b2=0.43864, c2=0.08479, d2=0.25711
  al0=-0.59391, k0=3.91945, l0=-3.79794
  al1=0.25605, k1=0.47092, l1=-2.67077
  al2=-0.00946, k2=1.93894, l2=-0.59695
  z=pixel:
  x=real(z)
  y=imag(z)
  o0=(d0*x-b0*y+k0)/al0+flip((-c0*x+a0*y+l0)/al0)
  op0=|o0-p2|
  o1=(d1*x-b1*y+k1)/al1+flip((-c1*x+a1*y+l1)/al1)
  op1=|o1-p2|
  o2=(d2*x-b2*y+k2)/al2+flip((-c2*x+a2*y+l2)/al2)
  op2=|o2-p2|
  IF (op0<op1 && op0<op2)
    z=o0
  ELSEIF (op1<op0 && op1<op2)
    z=o1
  ELSEIF (op2<op1 && op2<op0)
    z=o2
  ENDIF
  |z|<=p1
  ;SOURCE: 99msg.frm
}


SGG001 {
  z=pixel:
  z=z*exp(z)-(sqr(sqr(z)+pixel))
  ;SOURCE: guenzel.frm
}


SGG002 {
  z=pixel:
  z=z*cosh(1/z)-(exp(z)-pixel)
  ;SOURCE: guenzel.frm
}


SGG003 {
  z=pixel:
  z=sin(z+sqr(z))-1/pixel
  ;SOURCE: guenzel.frm
}


SGG004 {
  z=1/pixel:
  z=log(z)+sqr(z+pixel)
  ;SOURCE: guenzel.frm
}


SGG005 {
  z=pixel, t=p1/p2+.5
  z=fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel))
  |z|<=t+2
  ;SOURCE: guenzel.frm
}


SGG006 {
  z=pixel
  z=z*(log(z)/sqr(1/z+cosh(z*z)+pixel))
  ;SOURCE: guenzel.frm
}


SGG007 {
  z=pixel
  z=z*log(z)/sqr(1/z+cosh(z*z))
  |z|<=2.5
  ;SOURCE: guenzel.frm
}


SGG008 {
  z=pixel
  z=z+cosxx(z)*flip(z/sqr(z))
  ;SOURCE: guenzel.frm
}


SGG009 {
  z=pixel
  z=cotan(sqr(z))
  ;SOURCE: guenzel.frm
}


SGG010 {
  z=pixel
  z=cotanh(z)*real(z)/sinh(z)
  ;SOURCE: guenzel.frm
}


SGG011 {
  z=pixel
  z=sqr(z)*(sin(z)/cos(z*z))
  |z|<=2
  ;SOURCE: guenzel.frm
}


SGG012 {
  z=pixel
  b=sqr(z*z)
  z=sqr(b)/log(z)
  b=sqr(z)/log(b)
  |z|<=3
  ;SOURCE: guenzel.frm
}


SGG013 {
  z=y=x=pixel
  z=exp(z)/(sin(y)+sqr(x))
  |z|<=8
  ;SOURCE: guenzel.frm
}


SGG014 {
  z=y=pixel+sqr(pixel)
  z=exp(z)*sin(y)/cos(z)
  y=sin(z)*exp(y)*cos(y)
  |z|<=3
  ;SOURCE: guenzel.frm
}


SGG015 {
  z=pixel  
  z=sqr(z)/sin(z)+1/pixel
  |z|<=4
  ;SOURCE: guenzel.frm
}


SGG016 {
  z=1/pixel
  z1=exp(z)
  z2=sin(z)+z1*.666-z
  z=z+p1*(1/sqr(z2))+z1
  ;SOURCE: guenzel.frm
}


SGG017 {; modified Carr-95.frm
  z=c=pixel
  z=sqr(z*z)+sqr(c*c)
  z=sqr(z)+sin(c)
  z=sqr(z*z*z)+sin(c*c)
  |z|<=4
  ;SOURCE: guenzel.frm
}


SGG018 {; modified Carr-95.frm
  z=c=sqr(pixel*pixel*pixel)
  z=sqr(z*z)+sqr(c*c)
  z=sqr(z)+sin(c)
  z=sqr(z*z)*tan(c*c)
  |z|<=10
  ;SOURCE: guenzel.frm
}


SGG019 {; modified Carr-95.frm
  z=c=sqr(pixel*pixel*pixel)
  z=sqr(z*z)+sqr(c*c)
  z=sqr(c)+cos(z)
  z=sqr(z*z)*tan(c*c)
  |z|<=2
  ;SOURCE: guenzel.frm
}


SGG020 {; modified Carr-95.frm
  z=c=1/pixel+sqr(pixel)
  z=sqr(z*z)+sqr(c*c)
  c=sin(z)*sqr(z/c)
  z=sqr(z*z*z)+sin(c*c)
  |z|<=4
  ;SOURCE: guenzel.frm
}


SGG021 {; modified Carr-95.frm
  z=c=1/pixel+sqr(pixel)
  z=sqr(z)+cosh(c*z)
  c=sin(z)*sqr(z*c)
  z=sqr(z)+sin(c*z)
  |z|<=4
  ;SOURCE: guenzel.frm
}


SGG022 {
  z=pixel:
  a=cos(z)
  b=sin(a)+z
  z=z-p1*(a/b)/cosh(b)
  |z|<=2
  ;SOURCE: guenzel.frm
}


SGG023 {
  z=a=sqr(pixel*pixel):
  a=z*exp(log(a))
  z=a/sqr(z)
  a=sinh(z)*log(z)
  |z|<=6
  ;SOURCE: guenzel.frm
}


SGG024 {
  z=pixel:
  x=sin(z)^z
  y=sqr(x)+z
  z=z*z-exp(x+y)
  |z|<=100
  ;SOURCE: guenzel.frm
}


SGG025 {
  z=pixel+sqr(pixel):
  a=exp(z)
  b=sin(z)*(a-z)
  z=b-p1*b/tanh(a)-sqr(b)
  |z|<=3
  ;SOURCE: guenzel.frm
}


SGG026 {; Edited for Fractint v. 20 by George Martin, 10/98
  z=1/pixel:
  a=b=pixel
  z=sqr(z)+a
  b=a*sin(z)-b
  a=sin(z)+b/0.33
  |z|<=20
  ;SOURCE: guenzel.frm
}


SGG027 {
  z=pixel:
  c=cos(z)
  s=sqr(z)
  h=cosh(z)
  y=c+s/h
  z=sqr(z+y*y-c-s-h)
  |z|<=2
  ;SOURCE: guenzel.frm
}


SGG028 {
  z=pixel:
  c=cos(z)
  s=sqr(z)
  h=cosh(z)
  y=c+s/h
  z=sqr(z+y*y+c+s+h)
  |z|<=40
  ;SOURCE: guenzel.frm
}


SGG029 {
  z=pixel:
  c=cos(z)
  s=sqr(z)
  h=cosh(z)
  y=c+s/h
  z=sqr(z+y*y)+c+s/h
  |z|<=40
  ;SOURCE: guenzel.frm
}


SGG030 {; Replaced variable "e" with "ee", 5/7/99. G. Martin
  z=pixel:
  ee=exp(z)
  l=log(z)
  h=cosh(z)
  y=ee-l/h
  z=sinh((z+y^y)-y)+ee+h*l
  |z|<=20
  ;SOURCE: guenzel.frm
}


SGG031 {; Replaced variable "e" with "ee", 5/7/99. G. Martin
  z=pixel:
  ee=exp(z)
  h=cosh(z)
  y=ee+ee*(ee-h)
  z=sinh((z+y^y)-y)+log(z)
  |z|<=100
  ;SOURCE: guenzel.frm
}


SGG032 {; Edited for Fractint v. 20 by George Martin 10/98
  z=x=y=pixel:
  x=sqr(z*z*z)
  y=sin(z)+1/z
  x=z+p1+exp(y-x)
  y=z+cos(sqr(x*y))
  z=x*x-cosh(y)
  |z|<=4
  ;SOURCE: guenzel.frm
}


SGG033 {
  z=pixel:
  a=sqr(z)*z
  b=sin(a)-z
  z=a/b+exp(z)
  |z|<=40
  ;SOURCE: guenzel.frm
}


SGG034 {
  z=pixel+cos(pixel):
  a=exp(z)
  b=sqr(z)+1/a
  z=b-p1*b/sqr(a)+cosh(b)
  |z|<=2
  ;SOURCE: guenzel.frm
}


SGG035 {
  z=x=1/pixel:
  z=z*z+sin(x)
  x=1/z+sqr(x)
  |z|<=5
  ;SOURCE: guenzel.frm
}


SGG036 {
  z=1/pixel:
  x=exp(z)*z+z
  y=sqr(x)/(z*z)
  z=z*z-exp(x+y)
  |z|<=4
  ;SOURCE: guenzel.frm
}


SGG037 {; Edited for Fractint v. 20 by George Martin, 10/98
  z=1/pixel:
  a=b=pixel
  b=a/exp(cos(z))+b
  a=sqr(z*z*z)-b
  z=1/z+a+log(b)
  |z|<=4
  ;SOURCE: guenzel.frm
}


SGG038 {
  z=pixel:
  a=tanh(z)
  b=sqr(a)+sin(z)
  c=cosxx(z)
  d=c+b/a
  z=log(z+d*d-c-a*b)
  |z|<=2
  ;SOURCE: guenzel.frm
}


SGG039 {; Edited for Fractint v. 20 by George Martin, 10/98
  z=sqr(pixel):
  a=b=pixel
  z=cosxx(z)+sqr(b)
  b=a*log(z)-exp(a)
  a=sin(z)-cosh(z)
  |z|<=6
  ;SOURCE: guenzel.frm
}


SGG040 {
  z=1/pixel:
  x=exp(z)*z+z
  y=sqr(x)/(z*z)
  z=z*z-exp(x+y)
  |z|<=4
  ;SOURCE: guenzel.frm
}


SGG041 {
  z=pixel:
  x=sin(z)^z
  y=sqr(x)+z
  z=log(x)-y+tan(x+y)
  |z|<=4
  ;SOURCE: guenzel.frm
}


SGG042 {
  z=sqr(pixel):
  a=sin(z)
  b=sqr(z)
  c=exp(z)
  y=c+b*1/a
  z=sqr(z+y*y)+c
  |z|<=4
  ;SOURCE: guenzel.frm
}


SGG043 {; modified Carr-95.frm
  z=c=pixel+sqr(pixel)
  z=sqr(z*z)+sin(c*c)
  c=sin(z)*sqr(z/c)
  z=log(z*z*z*z)+exp(1/(c*c))
  |z|<=20
  ;SOURCE: guenzel.frm
}


SGG044 {
  z=pixel:
  b=sqr(z*z)
  c=b*3.14159265
  z=sqr(b)/sqr(z)+c
  b=sqr(z)/sin(c)
  |z|<=3
  ;SOURCE: guenzel.frm
}


SGG045 {
  z=y=pixel:
  y=sinh(z*3.1415926)
  z=sqr(z)/sin(z)+log(y)
  |z|<=4
  ;SOURCE: guenzel.frm
}


SGG046 {; Edited for Fractint v. 20 by George Martin, 10/98
  z=a=pixel*pixel:
  b=3.14159265
  a=z*sqr(a)
  b=b+log(a)
  z=a/sqr(z)
  a=sinh(z)+b
  |z|<=4
  ;SOURCE: guenzel.frm
}


SGG047 {
  z=pixel:
  v=cos(z) 
  w=flip(z)
  x=sqr(z)
  y=exp(z)
  z=((v*v)*(w*w))/((x*x)*(y*y))
  |z|<=50
  ;SOURCE: guenzel.frm
}


SGG048 {
  z=pixel:
  v=sqr(z) 
  w=sin(z)
  x=log(z)
  y=cos(z)
  z=((v*v)*(w*w))/((x*x)*(y*y))
  |z|<=50
  ;SOURCE: guenzel.frm
}


SGG049 {; Edited by George Martin to remove extra ":"
  z=pixel+p1:
  y=sin(z)+p2
  z=sqr(z)*y
  |z|<=10
  ;SOURCE: guenzel.frm
}


SGG050 {  
  z=sqr(pixel):
  z=(p1*cosxx(z))/sqr(p2)+1/z
  |z|<=20
  ;SOURCE: guenzel.frm
}


SGG051 {
  z=x=1/pixel:
  z=flip(z)/x
  z=sqr(z*z)
  x=x+sqr(z)
  |z|<=4
  ;SOURCE: guenzel.frm
}


SGG052 {  
  z=1/pixel+p1:
  x=sqr(z)
  x=cos(z)+0.31   
  z=x+log(z*z)
  |z| <=35
  ;SOURCE: guenzel.frm
}


SGG053 {
  z=x=pixel:
  z=sqr(1/z)+cotan(x)
  z=sqr(z*z)*(x+pixel)+cotan(x)
  x=cotan(z-sqr(x))
  |z|<=3
  ;SOURCE: guenzel.frm
}


SGG054 {
  z=pixel:
  x=cotanh(z)+conj(z*0.337)/pixel 
  z=x*log(z)-(z*z)+p1
  |z|<=10
  ;SOURCE: guenzel.frm
}


SGG055 {
  z=sqr(pixel), x=pixel:
  x=z*z*z-pixel
  x=log(x)
  z=flip(z)*(1/x)
  |z|<=6
  ;SOURCE: guenzel.frm
}


SGG056 {
  z=x=pixel:
  x=cosxx(z^z)
  z=sqr((z)*(z))+conj(x*pixel)
  |z|<=4
  ;SOURCE: guenzel.frm
}


SGG057 {
  z=1/pixel+p1, x=real(p2)+pixel:
  x=log(z^z+pixel)  
  z=z+sqr(x)
  |z|<20
  ;SOURCE: guenzel.frm
}


SGG058 {; 18.02.95
  z=x=log(pixel):
  z=(z*z+x)
  x=sqr(z)*sqr(x)
  z=(conj(x-1)^2)*sin(x)
  |z| <=pixel-1
  ;SOURCE: guenzel.frm
}


SGG059 {; 18.02.95
  z=x=sin(1/pixel):
  z=z^sqr(x+0.31)
  x=cos(z)
  |z|<=4
  ;SOURCE: guenzel.frm
}


SGG060 {; 18.02.1995
  z=pixel, x=p1, y=p2:
  x=x/(1/y+0.87)
  y=sqr(y)/flip(x+pixel)
  z=(x*x)/(cos(y*y))+pixel
  |z|<=100
  ;SOURCE: guenzel.frm
}


SGG061 {; 19.02.1995
  z=pixel:
  x=cosxx(z*z)+sin(z)
  y=sqr(x*x)/(1.5/z-x^2)
  z=flip((x*x)/(y+3.1415))
  |z|<=6
  ;SOURCE: guenzel.frm
}


SGG062 {; 21.02.95
  z=x=abs(pixel):
  z=(z*z+x)
  x=sqr(z)*sqr(x)
  z=(conj(x-1)^2)*sin(x)
  |z| <=20
  ;SOURCE: guenzel.frm
}


SGG063 {; 21.02.95
  z=x=abs(sin(1/pixel)):
  z=z^sqr(x+0.31)
  x=cos(z)
  |z|<=4
  ;SOURCE: guenzel.frm
}


SGG064 {; 21.02.1995
  z=real(pixel), x=p1, y=p2:
  x=x/(1/y+0.87)
  y=sqr(y)/flip(x+pixel)
  z=(x*x)/(cos(y*y))+pixel
  |z|<=100
  ;SOURCE: guenzel.frm
}


SGG065 {; 21.02.1995
  z=imag(1/pixel):
  x=cosxx(z*z)+sin(z)
  y=sqr(x*x)/(1.5/z-x^2)
  z=flip((x*x)/(y+3.1415))
  |z|<=6
  ;SOURCE: guenzel.frm
}


SGG066 {; 21.02.1995
  z=abs(pixel):
  x=cosxx(z*z)+sin(z)
  y=sqr(x*x)/(1.5/z-x^2)
  z=flip((x*x)/(y+3.1415))
  |z|<=6
  ;SOURCE: guenzel.frm
}


SGG067 {; 24.02.95
  z=x=real(sqr(pixel))*sqr(pixel):
  x=cosxx(z)+0.087
  z=1/sin(x^z)
  |z|<=6
  ;SOURCE: guenzel.frm
}


SGG068 {; 24.02.95
  z=x=sqr(pixel)*sqr(pixel):
  x=cosxx(z)+0.087
  z=1/sin(x^z)
  |z|<=3
  ;SOURCE: guenzel.frm
}


SGG069 {; 24.02.95
  z=x=real(sqr(pixel)*sqr(pixel)):
  x=cosxx(z)+0.087
  z=abs(1/sin(x^z))
  |z|<=100
  ;SOURCE: guenzel.frm
}


SGG070 {; 05.03.95
  z=x=pixel*0.87: 
  x=conj(z-(x+0.11))
  z=1.11/(flip(z^x))
  |z|<=8
  ;SOURCE: guenzel.frm
}


SGG071 {; 05.03.95
  z=pixel*0.87, x=sqr(pixel): 
  x=conj(z-(x+0.11))
  z=1.11/(flip(z^x))
  |z|<=x/(log(z))+2
  ;SOURCE: guenzel.frm
}


SGG072 {; 06.03.95
  z=pixel, x=1/pixel, y=log(x):
  y=z, w=p1*x*sqr(y)
  x=x*(1/y)*flip(x)
  z=p1*(z*z+abs(y))
  |z|<=10
  ;SOURCE: guenzel.frm
}


SGG073 {; 09.03.95
  z=x=conj(pixel):
  x=sin((z)/conj((z)-(x*x)))
  z=z*((1/x)+sqr(1/x))
  |z|<=10
  ;SOURCE: guenzel.frm
}


SGG074 {; 10.03.95
  z=pixel, x=0.87:
  x=z*z+x
  z=sqr(sin(x/z))
  z<=real(pixel)
  ;SOURCE: guenzel.frm
}


SGG075 {; 10.03.95
  z=0, x=sqr(1/pixel):
  z=sqr(x)+z
  x=sin(z)+x
  |z|<=8
  ;SOURCE: guenzel.frm
}


SGG076 {; 10.03.95
  z=pixel, x=sqr(pixel*pixel):
  x=x+sqr(z)
  z=cosxx(z)+1/x 
  |z|<=20
  ;SOURCE: guenzel.frm
}


SGG077 {; modCarr-726
        ; 04.03.95
  z=pixel-1/sqr(conj(0.5/pixel))
  c=flip(conj((1/pixel)/(1/(pixel-1)))):
  z=(conj(z*z*z+c)+sqr(z+0.87))/2
  |z| <=8
  ;SOURCE: guenzel.frm
}


SGG078 {; modCarr-727
        ; 04.03.95
  z=pixel-1/sqr(conj(0.5/pixel-1))
  c=flip(conj((1/pixel)/(1/pixel-1))):
  z=(conj(z+c*c)+cos(1.33))/2
  |z| <=10
  ;SOURCE: guenzel.frm
}


SGG079 {; modCarr-728
        ; 04.03.95
  z=(1/pixel)-1/sqr(conj(0.5/pixel-1))
  c=sinh(conj((1/pixel)/(1/pixel-0.75))):
  z=(conj(1/z+c*c)+cosh(1.87))/2
  |z| <=10
  ;SOURCE: guenzel.frm
}


SGG080 {; modCarr-729
        ; 05.03.95
  z=(1/pixel)-1/sqr(conj(0.5/pixel-1))+2.224
  c=log((conj((1/pixel)/(1/pixel-0.75)))+2.124):
  z=(conj(z*z*z*z+c)+(cosh(0.924))/7)
  |z| <=10
  ;SOURCE: guenzel.frm
}


SGG081 {; 11.03.95
        ; Revised for Fractint v20 by G. Martin
  z=0, x=pixel
  x1=(0.0,0.8), x2=(0.8,0.8), x3=(0.0,-0.8), x4=(0.8,-0.8):
  x=real(z)+x
  y=imag(z)+y
  w=conj(1/(x1+x2+x3+x4)+w)
  z=sqr(z+x)+sqr(w+y)
  |z|<=20
  ;SOURCE: guenzel1.frm
}


SGG082 {; 11.03.95
        ; Revised for Fractint v20 by G. Martin
  z=x=pixel
  x1=(0.0,0.87), x2=(0.87,0.87), x3=(0.0,-0.87), x4=(0.87,-0.87):
  x=real(z)+x
  y=imag(z)+y
  w=conj((x1+x2+x3+x4)+w)
  z=sqr(z+x)*sqr(w+y)
  |z|<=7
  ;SOURCE: guenzel1.frm
}


SGG083 {; 11.03.95
        ; Revised for Fractint v20 by G. Martin
  z=0, x=pixel
  x1=(0.0,0.8), x2=(0.8,0.8), x3=(0.0,-0.8), x4=(0.8,-0.8):
  x=real(z)+x
  y=imag(z)+y
  w=conj(1/(x1+x2+x3+x4))
  z=conj(sqr(x)*sqr(w-y))
  |z|<=20
  ;SOURCE: guenzel1.frm
}


SGG084 {; modCarr-730
        ; 05.03.95
  z=(1/pixel)-1/sqr(conj(0.5/pixel-1))+2.224
  c=((1/pixel)/(1/pixel-0.75)):
  z=conj(sqr(z*z*z*1/z+c)+cos(z))
  |z| <=10
  ;SOURCE: guenzel1.frm
}


SGG085 {; modCarr-725
        ; 04.03.95
  z=pixel*sqr(conj(0.5/pixel-1))
  c=conj((pixel)*(1/pixel-1)):
  z=(z*z+c)+cos(0.87)
  |z| <=10
  ;SOURCE: guenzel1.frm
}


SGG086 {; 13.03.95
  z=pixel, x=p1:
  z=cosxx(z^x+z)/x
  x=sqr(z+p2)+x
  |z|<=12
  ;SOURCE: guenzel1.frm
}


SGG087 {; 15.03.95
  z=x=pixel:
  y=z
  z=conj(z)^p1+sqr(x)
  x=real(y)+sqr(z)
  |z|<=p2
  ;SOURCE: guenzel1.frm
}


SGG088 {; 15.03.95
  z=1/pixel, x=real(pixel):
  y=conj(z)
  z=conj(z)^p1+sqr(x)
  x=conj(y+log(z))
  |z|<=4
  ;SOURCE: guenzel1.frm
}


SGG089 {; 15.03.95
  z=pixel, x=pixel^sqr(pixel):
  z=cosxx(z)+x
  |z|<= 6
  ;SOURCE: guenzel1.frm
}


SGG090 {; 15.03.95
  z=real(pixel), x=imag(pixel^sqr(pixel)):
  z=conj(cosxx(z)+x)
  |z|<=8
  ;SOURCE: guenzel1.frm
}


SGG1 {
  z=pixel:
  z=z*exp(z)-(sqr(sqr(z)+pixel))
  ;SOURCE: 941227.frm
}


SGG2 {
  z=pixel:
  z=z*cosh(1/z)-(exp(z)-pixel)
  ;SOURCE: 941227.frm
}


SGG3 {
  z=pixel:
  z=sin(z+sqr(z))-1/pixel
  ;SOURCE: 941227.frm
}


SGG4 {
  z=1/pixel:
  z=log(z)+sqr(z+pixel)
  ;SOURCE: 941227.frm
}


SGRM-5 {; Sylvie Gallet's Gallet-3-02 formula
        ; Adulterated by Bob Margolis
  z = fn1(pixel):
  x = real(z), y = imag(z)
  x1 = x - p1*fn2(y+p2*fn3(y))
  y1 = y - p1*fn2(x+p2*fn3(x))
  z = x1+flip(y1)
  |fn1(z)| <= 4
  ;SOURCE: 98msg.frm
}


sgrowth {; Giuseppe Zito
  z = pixel
  d0 = 0.454073
  d6 = -0.662253
  d12 = -0.9959
  : 
  x = real(z), y = imag(z)
  s0 = y
  newx = s0 
  s0 =d0
  s0 = s0 -x
  s0 = s0 -y
  s0 = s0 +d6
  s0 = s0 *x
  s0 = s0 -x
  s0 = s0 *x
  s0 = s0 -d12
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


ShadMinRot-XY-ZW {; draws 6 planes and many rotations
      ; when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
      ; when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=(real(p1)+10^(-100))*.01745329251994
  b=imag(p1)*.01745329251994, p=p2, k=p3
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+k
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+k:
  z=(-z)^p+c
  |z| <= 36
  ;SOURCE: 99msg.frm
}


ShadowRot-XZ-YW {; Jim Muth
                 ; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
  ee=exp(flip(real(p1*.01745329251994)))
  f=exp(flip(imag(p1*.01745329251994)))
  p=p2, k=p3
  z=f*real(pixel)+k, c=ee*imag(pixel)+k:
  z=z^p+c
  |z| <= 36
  ;SOURCE: 99msg.frm
}


Shakti {
  z = pixel:
  z = z + p1
  r = z * z * z 
  q = z^e 
  z = z * (r/q)
  |z| <= 4
  ;SOURCE: shakti.frm
}


SHARK (XAXIS) {
  z=pixel-1+p1: 
  z=sqr(z) + pixel + p2 
  |z|<=4  
  ;SOURCE: newform.frm
}


Shields_Mset {; Copyright (c) Paul W. Carlson, 1998
    ; Parameters:
    ;   real(p1) = controls the size of the shields (0.1 to 0.8)
    ;   imag(p1) = number of iterations to skip
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;   p3       = bailout value for |w|
    ;
  c = pixel
  w = z = bailout = iter = range_num = 0
  shield_size = real(p1)
  skip_iters = imag(p1)
  num_ranges = real(p2)
  colors_in_range = imag(p2)
  k = 0.5 + shield_size
  j = 0.5 - shield_size
  index_factor = (colors_in_range - 1) / shield_size:
    ;****************************************************
  w2=w*w, w4=.01*w2*w2, w8=w4*w4, w12=w4*w8, w16=w4*w12
  w = w2 - w4 - w8 - w12 - w16 + c
    ;****************************************************
  awr = abs(real(w)), awi = abs(imag(w))
  IF ((awr < k) && (awr > j) && (awi < k) && (awi > j))
    awr5 = abs(awr - 0.5), awi5 = abs(awi - 0.5)
    IF (awr5 <= awi5)
      min_dist = awr5
    ELSE
      min_dist = awi5
    ENDIF
    IF (min_dist < shield_size && iter > skip_iters)
      z = index_factor * min_dist + range_num * colors_in_range + 1
      bailout = 1
    ENDIF
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0  && |w| < p3
  ;SOURCE: 98msg.frm
}


shifter {; Use a counter to shift algorithms
  z = c = pixel, iter = 1, shift = p1, test = 4 + p2:
  lo = (z*z) * (iter <= shift)
  hi = (z*z*z) * (shift < iter)
  iter = iter + 1
  z = lo + hi + c
  |z| < test
  ;SOURCE: frmtutor.frm
}


shifter01 {; After shift, switch from z*z to z*z*z
           ; Bradley Beacham  [74223,2745]
           ; Modified for if..else logic 3/18/97 by Sylvie Gallet
           ; P1 = shift value, P2 varies bailout value
  z = c = pixel, iter = 1, shift = p1, test = 4 + p2 :
  IF (iter <= shift)
     z = z*z + c
  ELSE
     z = z*z*z + c
  ENDIF
  iter = iter + 1
  |z| < test
  ;SOURCE: fract196.frm
}


shifter02 {; After shift, flop sign of C on each iteration
           ; Bradley Beacham  [74223,2745]
           ; P1 = shift value, P2 varies bailout value
  z = c = pixel, iter = 1, shift = p1, test = 4 + p2:
  lo = (1) * (iter <= shift)
  hi = (-1) * (shift < iter)
  c = c * (lo + hi)
  iter = iter + 1
  z = fn1(z*z) + c
  |z| < test
  ;SOURCE: snazzy.frm
}


shifter03 {; After shift, switch from fn1(z) to fn2(z)
           ; Bradley Beacham  [74223,2745]
           ; P1 = shift value, P2 varies bailout value
  z = c = pixel, iter = 1, shift = p1, test = 4 + p2:
  lo = fn1(z) * (iter <= shift)
  hi = fn2(z) * (shift < iter)
  iter = iter + 1
  z = lo + hi + c
  |z| < test
  ;SOURCE: snazzy.frm
}


shifter04 {; After shift, switch from fn1(z*z) to fn2(z*z)
           ; Bradley Beacham  [74223,2745]
           ; P1 = shift value, P2 varies bailout value
  z = c = pixel, iter = 1, shift = p1, test = 4 + p2:
  lo = fn1(z*z) * (iter <= shift)
  hi = fn2(z*z) * (shift < iter)
  iter = iter + 1
  z = lo + hi + c
  |z| < test
  ;SOURCE: snazzy.frm
}


shifter05 {; After shift, switch from z^p1 to z^p2
           ; Bradley Beacham  [74223,2745]
           ; P1 & P2 are exponents (try 2 and 3, for example)
           ; P3 is shift value
  z = c = pixel, iter = 1, shift = p3:
  lo = (z^p1) * (iter <= shift)
  hi = (z^p2) * (shift < iter)
  iter = iter + 1
  z = lo + hi + c
  |z| < 4
  ;SOURCE: snazzy.frm
}


ShZ (XAXIS) {; Jm Collard-Richard
  z=pixel:
  z1=sinh(z)
  z2=cosh(z)
  z=z-(z1/z2)
  0.001<=|z1| 
  ;SOURCE: jmcr2.frm
}


Siamese (XAXIS) {; Try params=6/0/2/0  
                 ; Note: symmetry valid only for Real p1
  c=z=pixel: 
  z=z^p1+c 
  |z|<=Real(p2)
  ;SOURCE: fractfun.frm
}


Sierpinski {; Jonathan Osuch
            ; float = yes
            ; Edited for Fractint v. 20 by George Martin 10/98
  z=pixel:
  y=imag(z), x=real(z)
  z=2*z
  IF (y>0.5)
    z = z - (0,1)
  ELSEIF (x>0.5)
    z = z - (1,0)
  ENDIF
  |z| <= 127
  ;SOURCE: parser.frm
}


SierpinskiB {; Jonathan Osuch
             ; float = yes
             ; Edited for Fractint v. 20 by George Martin 10/98
  z=fn1(pixel), t = p2 + 127:
  y=imag(z), x=real(z)
  z=p1*z
  IF (y>0.5)
    z = z - (0,1)
  ELSEIF (x>0.5)
    z = z - (1,0)
  ENDIF
  |z| <= t
  ;SOURCE: parser.frm
}


Sierpinsky {; Use p1=2 for the triangle, 
            ; and p1=(1.3,.5) for a strange thing
  z=pixel, j=(0,-1), k=(-1, 0):
  x=real(z)
  y=imag(z)
  y1=(y>.5)
  x1=(x>.5)
  a=y1*j
  b=x1*(y1==0)*k
  p=a+b
  z=p1*z+p
  |z|<=100
  ;SOURCE: esc-ifs.frm
}


Silverado (XAXIS) {; Rollo Silver
                   ; Select p1 such that 0. <= p1 <= 1.
  z = Pixel, zz=z*z, zzz=zz*z 
  z = (1.-p1)*zz + (p1*zzz) 
  test = (p2+4)*(p2+4): 
  z = z + Pixel
  zsq = z*z
  zcu = zsq*z
  z = (1.-p1)*zsq + p1*zcu
  |z| <= test
  ;SOURCE: skinner.frm
}


Silverado2 {; Rollo Silver [71174,1453]
            ; Use floating point.
  st=1-p1, zz=pixel*pixel, z=zz*pixel*real(p1)+zz*real(st):
  z=z+pixel
  zz=sqr(z) ; and save mod in lastsqr
  z=zz*z*real(p1)+zz*real(st)
  4 > lastsqr
  ;SOURCE: fract003.frm
}


Simmetrico_random {; Giuseppe Zito
  z = pixel
  a = 2.8:
  x = real(z), y = imag(z)
  IF (rand > 0.5) 
    newx = -y
    newy = x
  ELSE
    newx = 1.+a*(x-1.)/(((x-1.)*(x-1.))+y*y+1.)
    newy = a*y/(((x-1)*(x-1))+y*y+1)
  ENDIF
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4
  ;SOURCE: zg.frm
}


simple01 (xAxis) {
  z = c = pixel:
  z = z^2 + c
  real(z) <= abs(z) + p1
  ;SOURCE: bailout.frm
}


simple02 {
  z = c = pixel:
  z = z^2 + c
  imag(z) <= abs(z) + p1
  ;SOURCE: bailout.frm
}


SimpleCurve {; Edited for Fractint v. 20 by G. Martin, 10/9/99
  z = Pixel:
      ; z = 10^(-sin(Pixel*z))
  z = -sin(Pixel*z)
  |z| < 4
  ;SOURCE: 99msg.frm
}


SimpleCurve1 {; Edited for Fractint v. 20 by G. Martin, 10/9/99
  z = Pixel:
  IF (|z| < 2)
      ; z = 10^(-sin(Pixel*z))
    z = -sin(Pixel*z)
  ELSE
    z=0.2*z*Pixel/(Pixel+1)
  ENDIF
  |z| < 4
  ;SOURCE: 99msg.frm
}


SimplePendulumG {
  bailout=real(p2)+4
  dt=real(p1)
  z=pixel
  pi2=Pi+Pi:
  x=real(z)
  y=imag(z)
  z=x+y*dt+flip(y+fn1(pi2*x)*dt)
  |z|<=bailout
  ;SOURCE: 99msg.frm
}


Sin1 (XAXIS) {  
  c = z = pixel:
  z = (1-(z^sin(1.1-z))) + c + p1
  |z| <= 4
  ;SOURCE: robert.frm
}


Sin2Z (XAXIS) {; Jm Collard-Richard
  z=pixel:
  z1=sin(z*z)-sin(z)
  z2=2*z*cos(z*z)-cos(z)
  z=z-(z1/z2)
  0.001<=|z1| 
  ;SOURCE: jmcr2.frm
}


SinCos1 (XAXIS) {  
  c = z = pixel:
  z = sin (cos(z^c)) +c +p1
  |z| <= 4
  ;SOURCE: robert.frm
}


SinDog (YAXIS) { 
  z = Pixel, b = p1+2:  
  z = sin( z ) * pixel  
  |z| <= b 
  ;SOURCE: newform.frm
}


SinE2 (XAXIS) {; Jm Collard-Richard
  z=pixel:
  expz2=exp(z*z)
  s=sin(z)
  c=cos(z)
  z1=expz2-exp(z)-s
  z2=2*z*expz2-exp(z)-c
  z=z-(z1/z2)
  0.001<=|z1| 
  ;SOURCE: jmcr2.frm
}


SinE2Z (XAXIS) {; Jm Collard-Richard
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=pixel:
  expz2=exp(z*z)
  s=sin(z)
  c=cos(z)
  s2=sin(z*z)
  c2=cos(z*z)
  z1=expz2-exp(z)-s2+s
  z2=2*z*expz2-exp(z)-z*c2*2+c
  z=z-(z1/z2)
  0.001<=|z1| 
  ;SOURCE: jmcr2.frm
}


Sinebrot01 {; Tom Schumm
            ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):       ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  imag(z) <= sin(real(z))+4    ; Different escape boundry
  ;SOURCE: phong.frm
}


Sinebrot02 (XAXIS) {; Tom Schumm
                    ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  5*sin(Lastsqr) <= 4     ; Different escape boundry
  ;SOURCE: phong.frm
}


Sinebrot03 (XAXIS) {; Tom Schumm
                    ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):          ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  Lastsqr <= 4+sin(10*Lastsqr)    ; Different escape boundry
  ;SOURCE: phong.frm
}


Sinebrot04 (XAXIS) {; Tom Schumm
                    ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):          ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  Lastsqr <= 4+sin(20*Lastsqr)    ; Different escape boundry
  ;SOURCE: phong.frm
}


Sinebrot05 (XAXIS) {; Tom Schumm
                    ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):          ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  Lastsqr <= 4+sin(30*Lastsqr)    ; Different escape boundry
  ;SOURCE: phong.frm
}


Sinebrot06 {; Tom Schumm
            ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):                       ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  sqr(imag(z)-sin(real(z))) <= 16-sqr(real(z)) ; Different escape boundry
  ;SOURCE: phong.frm
}


Sinebrot07 {; Tom Schumm
            ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):                       ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  sqr(imag(z)-sin(2*real(z)))<=16-sqr(real(z)) ; Different escape boundry
  ;SOURCE: phong.frm
}


Sinebrot08 {; Tom Schumm
            ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):                       ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  sqr(imag(z)-sin(2*real(z)))<=16-sqr(real(z)+sin(real(z)))
                                               ; Different escape boundry
  ;SOURCE: phong.frm
}


Sinebrot09 {; Tom Schumm
            ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):                   ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  sqr(imag(z)-sin(2*real(z))) <= 16-sqr(real(z)+sin(imag(z)))    
                                           ; Different escape boundry
  ;SOURCE: phong.frm
}


Sinebrot10 {; Tom Schumm
            ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):                     ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  (imag(z)-sin(2*real(z)))^3 <= 16-sqr(real(z)+sin(imag(z)))    
                                             ; Different escape boundry
  ;SOURCE: phong.frm
}


Sinebrot11 {; Tom Schumm
            ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):                   ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  sqr(imag(z)-sin(2*real(z))) <= 64-(real(z)+sin(imag(z)))^3    
                                           ; Different escape boundry
  ;SOURCE: phong.frm
}


Sinebrot12 {; Tom Schumm
            ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):                    ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  (imag(z)-sin(2*real(z)))^5 <= 16-sqr(real(z)+sin(imag(z)))    
                                             ; Different escape boundry
  ;SOURCE: phong.frm
}


Sinebrot13 {; Tom Schumm
            ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):                      ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  (imag(z)-sin(2*real(z)))^7 <= 16-sqr(real(z)+sin(imag(z)))    
                                              ; Different escape boundry
  ;SOURCE: phong.frm
}


SinEgg (XAXIS_NOPARM) {; Edited for Fractint v. 20 by 
                       ; George Martin 10/98
  z=p1, x=|z|:
  z=sin(z)+pixel
  z=sqr(z)+pixel, x=|z|
  x<=4 
  ;SOURCE: choice.frm
}


SinEggC (XAXIS_NOPARM) {; Edited for Fractint v. 20 by
                        ; George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z = sin(z) + pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4 
  ;SOURCE: choice.frm
}


Sineia01 (ORIGIN) {; Tom Schumm
                   ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):       ; Just like julia
  z = z + p1
  z = Sqr(z)
  imag(z) <= sin(real(z))+4    ; Different escape boundry
  ;SOURCE: phong2.frm
}


Sineia02 (ORIGIN) {; Tom Schumm
                   ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
  z = z + p1
  z = Sqr(z)
  5*sin(Lastsqr) <= 4     ; Different escape boundry
  ;SOURCE: phong2.frm
}


Sineia03 (ORIGIN) {; Tom Schumm
                   ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):          ; Just like julia
  z = z + p1
  z = Sqr(z)
  Lastsqr <= 4+sin(10*Lastsqr)    ; Different escape boundry
  ;SOURCE: phong2.frm
}


Sineia04 (ORIGIN) {; Tom Schumm
                   ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):          ; Just like julia
  z = z + p1
  z = Sqr(z)
  Lastsqr <= 4+sin(20*Lastsqr)    ; Different escape boundry
  ;SOURCE: phong2.frm
}


Sineia05 (ORIGIN) {; Tom Schumm
                   ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):          ; Just like julia
  z = z + p1
  z = Sqr(z)
  Lastsqr <= 4+sin(30*Lastsqr)    ; Different escape boundry
  ;SOURCE: phong2.frm
}


Sineia06 (ORIGIN) {; Tom Schumm
                   ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):                       ; Just like julia
  z = z + p1
  z = Sqr(z)
  sqr(imag(z)-sin(real(z))) <= 16-sqr(real(z)) ; Different escape boundry
  ;SOURCE: phong2.frm
}


Sineia07 (ORIGIN) {; Tom Schumm
                   ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):                       ; Just like julia
  z = z + p1
  z = Sqr(z)
  sqr(imag(z)-sin(2*real(z)))<=16-sqr(real(z)) ; Different escape boundry
  ;SOURCE: phong2.frm
}


Sineia08 (ORIGIN) {; Tom Schumm
                   ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):                     ; Just like julia
  z = z + p1
  z = Sqr(z)
  sqr(imag(z)-sin(2*real(z))) <= 16-sqr(real(z)+sin(real(z)))    
                                             ; Different escape boundry
  ;SOURCE: phong2.frm
}


Sineia09 (ORIGIN) {; Tom Schumm
                   ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):                    ; Just like julia
  z = z + p1
  z = Sqr(z)
  sqr(imag(z)-sin(2*real(z))) <= 16-sqr(real(z)+sin(imag(z)))    
                                            ; Different escape boundry
  ;SOURCE: phong2.frm
}


Sineia10 (ORIGIN) {; Tom Schumm
                   ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):                    ; Just like julia
  z = z + p1
  z = Sqr(z)
  (imag(z)-sin(2*real(z)))^3 <= 16-sqr(real(z)+sin(imag(z)))    
                                            ; Different escape boundry
  ;SOURCE: phong2.frm
}


Sineia11 (ORIGIN) {; Tom Schumm
                   ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):                   ; Just like julia
  z = z + p1
  z = Sqr(z)
  sqr(imag(z)-sin(2*real(z))) <= 64-(real(z)+sin(imag(z)))^3    
                                           ; Different escape boundry
  ;SOURCE: phong2.frm
}


Sineia12 (ORIGIN) {; Tom Schumm
                   ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):                   ; Just like julia
  z = z + p1
  z = Sqr(z)
  (imag(z)-sin(2*real(z)))^5 <= 16-sqr(real(z)+sin(imag(z)))    
                                           ; Different escape boundry
  ;SOURCE: phong2.frm
}


Sineia13 (ORIGIN) {; Tom Schumm
                   ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):                  ; Just like julia
  z = z + p1
  z = Sqr(z)
  (imag(z)-sin(2*real(z)))^7 <= 16-sqr(real(z)+sin(imag(z)))    
                                          ; Different escape boundry
  ;SOURCE: phong2.frm
}


SineMandel {
  z = y = c = pixel, iterate = 0:
  IF(iterate)
    z = sin(real(y)) + flip(imag(y)), iterate = 0
  ELSE
    z = y, iterate = iterate + 1
  ENDIF
  z = z*z + c 
  y = z 
  |z| <= 100 
  ;SOURCE: 97msg.frm
}


SineTangentbrot1 {; Tom Schumm
                  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):                   ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  tan(imag(z)-sin(2*real(z))) <= 16-sqr(real(z)+sin(imag(z)))    
                                           ; Different escape boundry
  ;SOURCE: phong.frm
}


SineTangentbrot2 {; Tom Schumm
                  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):                   ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  tan(imag(z)-sin(2*real(z))) <= 16-sqr(real(z)+sin(2*imag(z)))    
                                           ; Different escape boundry
  ;SOURCE: phong.frm
}


SineTangentbrot3 {; Tom Schumm
                  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):                 ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  tan(imag(z)-sin(4*real(z))) <= 16-sqr(real(z)+sin(2*imag(z)))    
                                         ; Different escape boundry
  ;SOURCE: phong.frm
}


SineTangentia1 (ORIGIN) {; Tom Schumm
   ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):                ; Just like julia
  z = z + p1
  z = Sqr(z)
  tan(imag(z)-sin(2*real(z))) <= 16-sqr(real(z)+sin(imag(z)))    
                                        ; Different escape boundry
  ;SOURCE: phong2.frm
}


SineTangentia2 (ORIGIN) {; Tom Schumm
   ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):                  ; Just like julia
  z = z + p1
  z = Sqr(z)
  tan(imag(z)-sin(2*real(z))) <= 16-sqr(real(z)+sin(2*imag(z)))    
                                          ; Different escape boundry
  ;SOURCE: phong2.frm
}


SineTangentia3 (ORIGIN) {; Tom Schumm
   ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):                 ; Just like julia
  z = z + p1
  z = Sqr(z)
  tan(imag(z)-sin(4*real(z))) <= 16-sqr(real(z)+sin(2*imag(z)))    
                                         ; Different escape boundry
  ;SOURCE: phong2.frm
}


SinHDog (YAXIS) { 
  z = Pixel, b = p1+2:  
  z = sinh( z ) * pixel 
  |z| <= b 
  ;SOURCE: newform.frm
}


SinhEgg (XAXIS_NOPARM) {; Edited for Fractint v. 20 by
                        ; George Martin, 10/98
  z=p1, x=|z|:
  z=sinh(z)+pixel
  z=sqr(z)+pixel, x=|z|
  x<=4 
  ;SOURCE: choice.frm
}


SinhEggC (XAXIS_NOPARM) {
  z=p1, x=|z|:
  IF (x>1)
    z = sinh(z) + pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4 
  ;SOURCE: choice.frm
}


SinhInvZ (XYAXIS) {
  z=pixel, inv=1/pixel+p1:
  z=sinh(inv/z)
  |z|<=4
  ;SOURCE: fract003.frm
}


SinInvZ (XYAXIS) {
  z=pixel, inv=1/pixel+p1:
  z=sin(inv/z)
  |z|<=4
  ;SOURCE: fract003.frm
}


SinZ1 (XAXIS) {; Resol. sin(z)^sin(z)=1  Jm Collard-Richard
               ; float=yes
  z=pixel:
  s=sin(z)
  c=cos(z)
  ss=s^s
  z1=ss-1
  z2=(c+c*log(s))*ss
  z=z-(z1/z2)
  0.001<=|z1| 
  ;SOURCE: jmcr2.frm
}


SinZ4 (XAXIS) {; Jm Collard-Richard
  z=pixel:
  z1=sin(z^4)+sin(z^3)+sin(z^2)+sin(z)
  z2=4*(z^3)*cos(z^4)+3*(z^2)*cos(z^3)+2*z*cos(z^2)+cos(z)
  z=z-(z1/z2)
  0.001<=|z1| 
  ;SOURCE: jmcr2.frm
}


SinZZ (XAXIS) {; Jm Collard-Richard
               ; float=yes
  z=pixel:
  zz=z^z
  szz=sin(z)^sin(z)
  z1=szz-zz
  z2=(cos(z)*log(sin(z))+cos(z))*szz-(log(z)+1)*zz
  z=z-(z1/z2)
  0.001<=|z1| 
  ;SOURCE: jmcr2.frm
}


SJFRAME-ROBERT {; Ron Barnett, 1994
                ; floating point required
  z=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(pixel)+flip(imag(pixel)):
  z=z*z*z/5+z*z+c 
  |z|<=100
  ;SOURCE: reb005.frm
}


SJFRAME-ROBERTJ {; Ron Barnett, 1995
                 ; floating point required
  z=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(p3)+flip(imag(p3)):
  z=z*z*z/5+z*z+c 
  |z|<=100
  ;SOURCE: reb007.frm
}


SJIKENAGA01 {; Ron Barnett, 1994
             ; floating point required
  z=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(pixel)+flip(imag(pixel)):
  z=z*z*z+(c-1)*z-c 
  |z|<=100
  ;SOURCE: reb005.frm
}


SJIKENAGA02 {; Ron Barnett, 1994
             ; floating point required
  z=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(pixel)+flip(imag(pixel))
  z=conj(z), c=conj(c):
  z=z*z*z+(c-1)*z-c 
  |z|<100
  ;SOURCE: reb005.frm
}


SJIKENAGA02JULIA {; Ron Barnett, 1995
                  ; floating point required
  z=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(p3)+flip(imag(p3))
  z=conj(z), c=conj(c):
  z=z*z*z+(c-1)*z-c 
  |z|<100
  ;SOURCE: reb007.frm
}


SJIKENAGA03 {; Ron Barnett, 1994
             ; floating point required
  z=real(pixel)-flip(imag(pixel)*p1)
  c=p2+p1*real(pixel)-flip(imag(pixel)):
  z=z*z*z+(c-1)*z-c 
  |z|<=100
  ;SOURCE: reb005.frm
}


SJIKENAGA03JULIA {; Ron Barnett, 1995
                  ; floating point required
  z=real(pixel)-flip(imag(pixel)*p1)
  c=p2+p1*real(p3)-flip(imag(p3)):
  z=z*z*z+(c-1)*z-c 
  |z|<=100
  ;SOURCE: reb007.frm
}


sjikenagamap01 {; Ron Barnett, 1994
  y = ((1-pixel)/3)^0.5
  z=real(y)+flip(imag(y)*p1)
  c=p2+p1*real(pixel)+flip(imag(pixel)):
  z = z*z*z + (c - 1)*z - c 
  |z|<=100
  ;SOURCE: reb006.frm
}


sjjulike01 {; Ron Barnett, 1995
  y = pixel
  z=real(y)+flip(imag(y)*p1)
  c=p2+p1*real(p3)+flip(imag(p3)):
  z = z*z*z + (c - 1)*z - c 
  |z|<=100
  ;SOURCE: reb006.frm
}


SJMAND01 {; Mandelbrot
  z=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(pixel)+flip(imag(pixel)):
  z=z*z+c
  |z|<=64
  ;SOURCE: fractint.frm
}


SJMAND02 {; Tetration
  z=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(pixel)+flip(imag(pixel)):
  z=c^z
  |z|<=32
  ;SOURCE: 4dfract.frm
}


SJMAND03 {; Mandelbrot function
  z=real(pixel)+p1*(flip(imag(pixel)))
  c=p2+p1*real(pixel)+flip(imag(pixel)):
  z=fn1(z)+c
  |z|<=64
  ;SOURCE: fractint.frm
}


SJMAND04 {; Tetrated function
  z=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(pixel)+flip(imag(pixel)):
  z=fn1(c)^z 
  |z|<=64
  ;SOURCE: 4dfract.frm
}


SJMAND05 {; Mandelbrot lambda function
  z=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(pixel)+flip(imag(pixel)):
  z=fn1(z)*c
  |z|<=64
  ;SOURCE: fractint.frm
}


SJMAND06 {
  z=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(pixel)+flip(imag(pixel))
  z=conj(z), c=conj(c):
  z=fn1(z)+c 
  |z|<=4
  ;SOURCE: 4dfract.frm
}


SJMAND07 {; Mandelbrot function
          ; changing real(p1) will now rotate between ZC & CZ planes
  z=(1-p1)*real(pixel)+p1*flip(imag(pixel))
  c=p1*real(pixel)+(1-p1)*flip(imag(pixel)):
  z=fn1(z)+c 
  |z|<=4
  ;SOURCE: 4dfract.frm
}


SJMAND08 {; Mandelbar
  z=real(pixel)+flip(imag(pixel))*p1
  c=p2+p1*real(pixel)+flip(imag(pixel)):
  z=conj(z*z)+c 
  |z|<=4
  ;SOURCE: 4dfract.frm
}


SJMAND09 { 
  z=real(pixel)+flip(imag(p2))
  c=real(p2)+flip(imag(pixel)):
  z=z*z+c 
  |z|<=4
  ;SOURCE: 4dfract.frm
}


SJMAND10 {; Mandelbrot power function
  z=real(pixel), c=p2+flip(imag(pixel)):
  z=(fn1(z)+c)^p1
  |z|<=4
  ;SOURCE: fractint.frm
}


SJMAND11 {; Mandelbrot lambda function - lower bailout
  z=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(pixel)+flip(imag(pixel)):
  z=fn1(z)*c
  |z|<=4
  ;SOURCE: fractint.frm
}


SJMAND12 {; Mandelbrot with perturbed initiator
  z=real(pixel)+p1, c=flip(imag(pixel))+p2:
  z=z*z+c 
  |z|<=4
  ;SOURCE: 4dfract.frm
}


SJMAND13 {; Mandelbrot function
  z=real(pixel)+p1*(flip(imag(pixel)))
  c=p2+p1*real(pixel)+flip(imag(pixel)):
  z=1/fn1(z)+c 
  |z|<=64
  ;SOURCE: 4dfract.frm
}


SJMAND14 {; Mandelbrot lambda function
  z=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(pixel)+flip(imag(pixel)):
  z=c/fn1(z) 
  |z|<=64
  ;SOURCE: 4dfract.frm
}


SJMANOWAR01 {; Ron Barnett, 1994
             ; floating point required
  z=z1=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(pixel)+flip(imag(pixel)):
  z=z*z+z1+c
  z1=z 
  |z|<=100
  ;SOURCE: reb005.frm
}


SJMANOWAR01JULIA {; Ron Barnett, 1995
                  ; floating point required
  z=z1=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(p3)+flip(imag(p3)):
  z=z*z+z1+c
  z1=z 
  |z|<=100
  ;SOURCE: reb007.frm
}


SJSPIDER01 {; Ron Barnett, 1994
            ; floating point required
  z=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(pixel)+flip(imag(pixel)):
  z=z*z+c
  c=c/2+z 
  |z|<=100
  ;SOURCE: reb005.frm
}


SJSPIDER01JULIA {; Ron Barnett, 1995
                 ; floating point required
  z=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(p3)+flip(imag(p3)):
  z=z*z+c
  c=c/2+z 
  |z|<=100
  ;SOURCE: reb007.frm
}


SkewPlanes {; Jim Muth
            ; p1=(0,0)=YW, (0,1)=XW, (1,0)=XZ, (1,1)=YZ
            ; p2=parallel planes, p3=proportional extra term
  a=real(p1), b=flip(cos(asin(real(p1)))), d=a+b
  f=imag(p1), g=flip(cos(asin(imag(p1)))), h=f+g
  z=real(pixel)+flip(real(p2))
  c=flip(imag(pixel))+imag(p2):
  z=(d*(sqr(z)))+(real(p3))*(z^(imag(p3)))+(h*c)
  |z| <= 36
  ;SOURCE: 97msg.frm
}


SkewPlanesSqr {; Jim Muth
               ; p1=(0,0)=YW, (0,1)=XW, (1,0)=XZ, (1,1)=YZ
  a=real(p1), b=flip(cos(asin(real(p1)))), d=a+b
  f=imag(p1), g=flip(cos(asin(imag(p1)))), h=f+g
  z=real(pixel)+flip(real(p2))
  c=flip(imag(pixel))+imag(p2):
  z=(d*(sqr(z)))+(h*c)
  |z| <= 36
  ;SOURCE: 97msg.frm
}


SkMandelCosine (XYAXIS) { 
  z = pixel:  
  z = cosxx(z) * pixel 
  |z| <= (p1 + 3) 
  ;SOURCE: skinv13r.frm
}


SkMandelHypCosine (XYAXIS) { 
  z = pixel: 
  z = cosh(z) * pixel 
  |z| <= (p1 + 3) 
  ;SOURCE: skinv13r.frm
}


SkMandelHypSine (XYAXIS) { 
  z = pixel:  
  z = sinh(z) * pixel 
  |z| <= (p1 + 3) 
  ;SOURCE: skinv13r.frm
}


SkMandelSine (XYAXIS) { 
  z = Pixel:  
  z = sin(z) * pixel 
  |z| <= (p1 + 3) 
  ;SOURCE: skinv13r.frm
}


sky {; Giuseppe Zito
  z = pixel
  c0 = -1.26
  c3 = -0.892095
  c4 = 0.504
  : 
  x = real(z), y = imag(z)
  s0 =c0
  s0 = s0 /y
  s0 = s0 +y
  s0 = s0 *c3
  s0 = s0 -c4
  s0 = s0 /y
  s0 = s0 /x
  newx = s0 
  s0 = y
  s0 = s0 *x
  s0 = s0 *x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


slider01 {; Bradley Beacham  [74223,2745]
          ; P1 = exponent A, P2 = exponent B
          ; P3 varies radius of bailout circle (default 2)
  z = c = pixel, limit = 2 + p3, f = 0 :
  z = ((f) * fn1(z^p1)) + ((1-f) * fn2(z^p2)) + c
  f = cabs(z) / limit
  f < 1.0
  ;SOURCE: dons.frm
}


slider02 {; Bradley Beacham  [74223,2745]
          ; P1 = exponent A, P2 = exponent B
          ; P3 varies radius of bailout circle (default 2)
  z = c = pixel, limit = 2 + p3, f = cabs(z) / limit:
  z = ((f) * fn1(z^p1)) + ((1-f) * fn2(z^p2)) + c
  f = cabs(z) / limit
  f < 1.0
  ;SOURCE: dons.frm
}


smooth {; Giuseppe Zito
  z = pixel
  d0 = 0.318941
  d3 = 0.879961
  : 
  x = real(z), y = imag(z)
  s0 = x
  s0 = s0 -y
  s0 = s0 *x
  s0 = s0 *y
  s0 = s0 +x
  s0 = s0 -y
  newx = s0 
  s0 =d0
  s0 = s0 *y
  s0 = s0 /d3
  s0 = s0 +x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


smooth_man {; Kerry Mitchell
   ; smooth iteration coloring based on Damien Jones'
   ; interpretation of Linas Vepstas' scheme
   ; real(p1) = bailout
   ; imag(p1) = color scaling factor (1 = integer bands)
   ; "decomp=256" coloring
  bailout=real(p1), scale=imag(p1)*pi/128
  ol2 = 1/log(2), fac=log(0.5*log(bailout))
  iter=1, z=0, c=pixel
  :
  iter=iter+1, z=sqr(z)+c
  IF(|z|>bailout)
    t=(iter+ol2*(fac-log(log(cabs(z)))))*scale
    z=cos(t)+flip(sin(t))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 97msg.frm
}


SMP_Quotient_G1 (XAXIS) {
  z = pixel:
  z = (fn1(z) + pixel) / (fn2(z) - pixel)
  |z| <= 42
  ;SOURCE: 97msg.frm
}


SnakeHead (xaxis) {; M.L. Newsted Jr.
  z = 0
  c = pixel:
  z = sqrt(z) / sqrt(c) + c
  |z| < 4
  ;SOURCE: 97msg.frm
}


SnakeTree {; Jim Muth
           ; Posted in Fractal-Art, 4/13/97
  z=pixel:
  z=(-z)^1.095+3.4
  |z| <= 100
  ;SOURCE: 97msg.frm
}


SnakeTree3 {
  z=pixel, a=0, b=10000*p1*p1:
  y=1-cos(p1*a), z=((-z)^(1.06+y/b)+3.4)*(1-p2*y), a=a+1
  |z|<=100
  ;SOURCE: 99msg.frm
}


snared {; Giuseppe Zito
  z = pixel
  c0 = -0.55134898
  c1 = 0.38316
  c4 = -0.116228
  c7 = 0.01356
  c8 = -0.99109602
  c9 = -0.002324
  c17 = 0.92009598
  d0 = 0.81386
  d1 = 0.043854
  d6 = 0.78535497
  d8 = -0.72237098
  : 
  x = real(z), y = imag(z)
  s0 =c0
  s1 =c1
  s0 = s0 -s1
  s0 = s0 -c4
  s0 = s0 -y
  s1 =c7
  s1 = s1 *c8
  s1 = s1 *c9
  s0 = s0 *s1
  s0 = s0 *x
  s0 = s0 +x
  s0 = s0 *c17
  s0 = s0 *y
  s0 = s0 -x
  newx = s0 
  s0 =d0
  s0 = s0 *d1
  s1 = x
  s0 = s0 +s1
  s0 = s0 *y
  s0 = s0 *d6
  s0 = s0 -y
  s0 = s0 +d8
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


Sneaky-D {
  z = 0, c = pixel:
  z = fn1(z) + c
  c = c + fn2(1/z) + p1
  z = c 
  |z| <= 6
  ;SOURCE: d-rock.frm
}


snowarch {; Jim Muth
  z=c=pixel:
  a=sqr(z)+c-p1*z-c
  b=p2*sqr(z)+c-1
  z=z-1*a/b
  p3 <= |a|
  ;SOURCE: 97msg.frm
}


Something (xaxis) {
  z = pixel:
  z = pixel + z*z + 1/z/z
  |z| <= 4
  ;SOURCE: fract003.frm
}


Somethingelse (xyaxis) {
  z = 1:
  z = pixel * (z*z + 1/z/z)
  |z| <= 1000000
  ;SOURCE: fract003.frm
}


Sow {
  z = c = pixel, p = sqr(pixel) + p1:
  z = z * z * p
  r = tan((1/z) / c)  
  z = z * z + fn1(r)
  |z| <= 4 + p2
  ;SOURCE: big_pig.frm
}


SpaceMandel_PHC {
  z = c = pixel, rand = srand(pixel):
  r = fn1(1/z) + rand 
  m = z*z + c
  z = m * (whitesq == 1) +  (z * r) * (whitesq == 0)
  |z| < 4 || 2 < |r|
  ;SOURCE: scary.frm
}


spalace {; Giuseppe Zito
  z = pixel
  c1 = -0.165646
  c5 = -0.163372
  c6 = -0.211834
  c10 = 0.54942
  d11 = -0.747369
  : 
  x = real(z), y = imag(z)
  s0 = x
  s0 = s0 +c1
  s0 = s0 *x
  s0 = s0 *x
  s0 = s0 +c5
  s0 = s0 -c6
  s0 = s0 -x
  s0 = s0 /c10
  s0 = s0 *y
  newx = s0 
  s0 = x
  s0 = s0 /x
  s0 = s0 *y
  s0 = s0 -x
  s0 = s0 +d11
  s0 = s0 +x
  s0 = s0 *y
  s0 = s0 -y
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


SPCZ (xaxis) {; resol. sin(z)^cos(z)=0 - Jm Collard-Richard 
              ; Use Float=yes
  z=pixel:
  s=sin(z)
  c=cos(z)
  co=cotan(z)
  sc=s^c
  z1=sc
  z2=((c*co)-(s*log(s)))*sc
  z=z-(z1/z2)
  0.001<=|z1| 
  ;SOURCE: dons.frm
}


SpecC (XAXIS_NOPARM) {
     ; modified for if..else by George Martin 3/18/97
   z = p1
   x = |z| :
   IF (x>1)
      z = fn1(z)+pixel
   ENDIF
   z = fn2(z)+pixel
   x = |z|
   x <= 4
  ;SOURCE: skinner.frm
}


Special1 {
  z=pixel:
  z=p1*z+(z^5)+(z^z) 
  |z|<=100
  ;SOURCE: sample.frm
}


Special2 {
  z=pixel:
  z=p1*z+(z^6)+(z^z) 
  |z|<100
  ;SOURCE: sample.frm
}


speed-A {; Demonstrates potential for speed-up
  z = 0:
  z = z*z + sin(pixel)
  |z| < 4
  ;SOURCE: frmtutor.frm
}


speed-B {; variation of speed-A showing one speed-up technique
  z = 0, sinp = sin(pixel):
  z = z*z + sinp
  |z| < 4
  ;SOURCE: frmtutor.frm
}


speed01 {; Speed chooses between functions, escape-time
         ; Bradley Beacham  [74223,2745]
         ; P1 is maximum speed for "slow"
         ; P2 varies bailout value
  z = oldz = c = pixel, limit = 4 + p2:
  x = real(z) - real(oldz)
  y = imag(z) - imag(oldz)
  speed = x*x + y*y
  slow = fn1(z*z) * (speed < p1)
  fast = fn2(z*z) * (speed >= p1)
  oldz = z
  z = slow + fast + c
  |z| <= limit
  ;SOURCE: snazzy.frm
}


speed02 {; Acceleration chooses between functions, 
         ; acceleration-limit-time
         ; Bradley Beacham  [74223,2745]
         ; P1 varies definition of acceleration
         ; P2 varies bailout value
  z = oldz = c = pixel, oldspeed = 0, limit = 4 + p2:
  x = real(z) - real(oldz)
  y = imag(z) - imag(oldz)
  speed = x*x + y*y
  accel = speed - oldspeed
  slower = fn1(z*z) * (accel <= p1)
  faster = fn2(z*z) * (accel > p1)
  oldz = z
  oldspeed = speed
  z = slower + faster + c
  accel <= limit
  ;SOURCE: snazzy.frm
}


spider {; Chuck Ebbert                       added 12 Jan 1993
        ; p1=initial perturbation of z
        ; bailout is real(p2) (default 4)
  z = pixel + p1, c = pixel
  t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = sqr(z) + c
  c = z + c/2
  |z| <= t
  ;SOURCE: builtn2.frm
}


Spider6 {; Peter Anders anders@physik.hu-berlin.de 
  c=z=pixel, a=real(p2), b=imag(p2):
  r=z
  c=(c-z)*b
  z=(r-c)^(1/a)
  |fn1(c)| <= real(p1) 
  ;SOURCE: anders.frm
}


spider_ellipse {; bailout variation by kathy roth
                ; by Jean-Pierre Louvet
                ; shortcut by Bud
  z=pixel, f=pixel, g =f+p2, a=real(p3), b=imag(p3):
  f=f/p1+z
  z=fn1(z^g)+fn2(f)
  real(z) * real(z)/ a + imag(z) * imag(z)/b < 1
  ;SOURCE: 98msg.frm
}


Spider_like (YAXIS) {
  z = (0,1)*pixel, c = z:
  z1=z*z, z=z1+c
  c=p1*c+z
  |z|<real(p2)
  ;SOURCE: gallet_0.frm
}


Spidercplx {; by Jon Horner - 100112,1700 - FRAC'Cetera
            ; Complex-form of SPIDER
            ; float=yes, p1=initial perturbation of z
  z = pixel + p1, c = pixel :
  z = z * z + c
  c = c * p2 + z
  |z| <= 64
  ;SOURCE: spidcplx.frm
}


SpiderJul {; by Jon Horner - 100112,1700 - FRAC'Cetera
           ; Julia-form of SPIDER
           ; float=yes
  z = pixel, c = p1:
  z = z * z + c
  c = c * 0.5 + z
  |z| <= 4
  ;SOURCE: spidcplx.frm
}


SpiderJulcplx {; by Jon Horner - 100112,1700 - FRAC'Cetera
               ; Complex-form of SPIDERJUL
               ; float=yes
  z = pixel, c = p1:
  z = z * z + c
  c = c * p2 + z
  |z| <= 4
  ;SOURCE: spidcplx.frm
}


SpiderJulcplx_RFR {; by Jon Horner - 100112,1700 - FRAC'Cetera
                   ; Complex-form of SPIDERJUL
                   ; float=yes
                   ; modified by Rolf Freericks 
  z = pixel, h=c = p1:
  z = z * z + c-h
  c = c * p2 + z
  |z| <= 4
    ; the original
    ;  z = pixel, c = p1:
    ; z = z * z + c
    ; c = c * p2 + z
    ; |z| <= 4
  ;SOURCE: gal2.par
}


spiderM {
  z=pixel, f=pixel, g=pixel: 
  f=f/p1+z
  z=fn1(z^(p2+g))+fn2(f)
  |z| <= 4 
  ;SOURCE: jpl1.frm
}


spiderM1 {; by Jean-Pierre Louvet
          ; minor shortcut by Bud 4/30/98
  z=pixel, f=pixel, g = f + p2:
  f=f/p1+z
  z=fn1(z^g)+fn2(f)
  |z| <= 4 
  ;SOURCE: 98msg.frm
}


Spir2_Trunc {; Copyright (c) Paul W. Carlson, 1998
    ;
    ;   p1       = Julia set coordinates
    ;   real(p2) = a factor controlling the width of stalks
    ;   imag(p2) = max. |w| for stalks (truncation value)
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in a range
    ;
  w = pixel
  c = p1
  z = bailout = iter = range_num = 0
  stalk_width = real(p2)
  max_wm = imag(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  index_factor = (colors_in_range - 1) / stalk_width
  :
  w = w * w - c, wr = real(w), awr = abs(wr)
  w = w - wr + awr
  awr = abs(real(w)), awi = abs(imag(w))
  IF (awr <= awi)
    dist = awr
  ELSE
    dist = awi
  ENDIF
    ;
  IF (dist < stalk_width && |w| < max_wm && iter > 1)
    z = index_factor * dist + range_num * colors_in_range + 1
    bailout = 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0  && |w| < 4
  ;SOURCE: 98msg.frm
}


Spir_Ang_Fnc {; Copyright (c) Paul W. Carlson, 1998
    ;
    ;   p1       = Julia set coordinates
    ;   real(p2) = a factor controlling the width of the elememts
    ;   imag(p2) = angle multiplier
    ;   real(p3) = max. early bailout itreation
    ;   imag(p3) = flag for extra squaring
    ;
  w = pixel
  c = p1
  z = bailout = iter = range_num = 0
  width = real(p2)
  k = imag(p2)
  num_ranges = 2
  index_factor = 124 / width
  :
  w = w * w, wr = real(w), awr = abs(wr)
  w = w - wr + awr - c
  IF (imag(p3) == 1)
    w = w * w
  ENDIF
  a = k * atan(imag(w) / real(w))
  a = a * a + c
  a = fn1(1 - a) / a
    ;
  dist = abs(|w| - |a|)
  IF (dist < width && iter > 1)
    z = index_factor * dist + range_num * 125 + 1
    bailout = 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  (bailout == 0  && |w| < 4) || iter > real(p3)
  ;SOURCE: 98msg.frm
}


Spir_Stalks_Jul {; Copyright (c) Paul W. Carlson, 1998
    ;
    ;   p1       = Julia set coordinates
    ;   real(p2) = a factor controlling the size of the stalks
    ;   imag(p2) = iterations to skip
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in a range
    ;
  w = pixel
  c = p1
  z = bailout = iter = range_num = 0
  stalk_width = real(p2)
  skip_iters = imag(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  index_factor = (colors_in_range - 1) / stalk_width
  :
  w = w * w - c, wr = real(w), awr = abs(wr)
  w = w - wr + awr
    ;
  IF (abs(real(w)) <= abs(imag(w)))
    dist = abs(real(w))
  ELSE
    dist = abs(imag(w))
  ENDIF
  IF (dist < stalk_width && iter > skip_iters)
    z = index_factor * dist + range_num * colors_in_range + 1
    bailout = 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0  && |w| < 4
  ;SOURCE: 98msg.frm
}


Spiral (XYAXIS) {
  z = pixel:
  z = sin(z) * (cos(z) + 1.) 
  |z| <= 42
  ;SOURCE: hubert.frm
}


spiral_J {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=0.78788, b0=-0.42424, c0=0.24242, d0=0.85985
  a1=-0.12121, b1=0.25758, c1=0.15152, d1=0.05303
  a2=0.18182, b2=-0.13636, c2=0.09091, d2=0.18182
  al0=0.78030, k0=-2.10953, l0=-0.68305
  al1=-0.04545, k1=0.71119, l1=-0.85149
  al2=0.04545, k2=-1.32039, l2=0.26818
  z=pixel:
  x=real(z)
  y=imag(z)
  o0=(d0*x-b0*y+k0)/al0+flip((-c0*x+a0*y+l0)/al0)
  op0=|o0-p2|
  o1=(d1*x-b1*y+k1)/al1+flip((-c1*x+a1*y+l1)/al1)
  op1=|o1-p2|
  o2=(d2*x-b2*y+k2)/al2+flip((-c2*x+a2*y+l2)/al2)
  op2=|o2-p2|
  IF (op0<op1 && op0<op2)
    z=o0
  ELSEIF (op1<op0 && op1<op2)
    z=o1
  ELSEIF (op2<op1 && op2<op0)
    z=o2
  ENDIF
  |z|<=p1
  ;SOURCE: ifsinv.frm
}


spiral_M {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=0.78788, b0=-0.42424, c0=0.24242, d0=0.85985
  a1=-0.12121, b1=0.25758, c1=0.15152, d1=0.05303
  a2=0.18182, b2=-0.13636, c2=0.09091, d2=0.18182
  al0=0.78030, k0=-2.10953, l0=-0.68305
  al1=-0.04545, k1=0.71119, l1=-0.85149
  al2=0.04545, k2=-1.32039, l2=0.26818
  z=pixel:
  x=real(z)
  y=imag(z)
  o0=(d0*x-b0*y+k0)/al0+flip((-c0*x+a0*y+l0)/al0)
  op0=|o0-pixel|
  o1=(d1*x-b1*y+k1)/al1+flip((-c1*x+a1*y+l1)/al1)
  op1=|o1-pixel|
  o2=(d2*x-b2*y+k2)/al2+flip((-c2*x+a2*y+l2)/al2)
  op2=|o2-pixel|
  IF (op0<op1 && op0<op2)
    z=o0
  ELSEIF (op1<op0 && op1<op2)
    z=o1
  ELSEIF (op2<op1 && op2<op0)
    z=o2
  ENDIF
  |z|<=p1
  ;SOURCE: ifsinv.frm
}


SpNewton4 (xyaxis) {; Jm Collard-Richard     (Cf M.I Hiver 93-94)
                    ; float=yes .Methode de Newton appliquee au polynome
   ; f(z)=(z^2-1)*(z^2+0.16)
   ; f(z)=0 ssi z=1,-1,0.4i,-0.4i
   ; Nf(z)=z-f(z)/f'(z) les pts fixes de Nf sont les racines de f.
   ; z1=f(z) z2=f'(z) z=z-z1/z2 on cherche les pts fixes.
  z=pixel:
  z1=(z*z-1)*(z*z+0.16)
  z2=4*z^3-1.68*z
  z=z-z1/z2
  0.001<=|z1|    
  ;SOURCE: jmcr2.frm
}


SPQR {
  z = Pixel:
  c = z + Pixel
  z = (cos(c))^(1/2)
  LastSqr <= 9
  ;SOURCE: welner.frm
}


Sqr[1/fn] (XYAXIS)  {; Jon Horner [ needs zoom-out ]
  z = pixel :
  z = sqr(1/fn1(z))
  |z| <= 64
  ;SOURCE: parser.frm
}


Sqr[fn] (XYAXIS)  {; Jon Horner [ needs zoom-out ]
  z = pixel :
  z = sqr(fn1(z))
  |z| <= 64
  ;SOURCE: parser.frm
}


SqrDog (YAXIS) { 
  z = Pixel, b = p1+2:  
  z = sqr( z ) * pixel  
  |z| <= b 
  ;SOURCE: newform.frm
}


sra4 {
  z=pixel, b=fn2(z), k=real(p1)*b, o=imag(p1):
  z1=fn4(fn4(z))+(b*o)
  z=fn1((z1))+flip(imag(z)), b=fn3(z1)+whitesq
  IF (b+(fn1(z+p1))/imag(p1))<k+(z+(p2))
    z=(z1+p3)*(1/fn3(z))+whitesq
  ENDIF
  IF (b+(fn1(z+p1))<imag(p1*(b-k)))
    z=(z1^(p2)+whitesq)+fn2(b/(k+o))
  ENDIF
  |z|<4
  ;SOURCE: ad978-1.frm
}


SS2Z (XAXIS) {; Jm Collard-Richard
  z=pixel:
  z1=sin(z)*sin(z)-sin(z*z)
  z2=sin(2*z)-z*cos(z*z)*2
  z=z-(z1/z2)
  0.001<=|z1| 
  ;SOURCE: jmcr2.frm
}


star (XAXIS) {
   ; Changing the sign back makes a simple but elegent fractal
  z=pixel, zp = (0,0):
  temp = z
  z = z*z + zp
  zp = conj(temp)
  |zp| <= 64 
  ;SOURCE: noel.frm
}


star-inout {; Kerry Mitchell 09oct98
        ;
        ; See the end of formula starbail_man for Kerry Mitchell's
        ;   explanation of his "Star" formulas.
        ;
        ; draws 5 point star--1 color inside, 1 color outside
        ; p1 = center of star
        ; real(p2) = size of star (try 1)
        ; imag(p2) = rotation angle, degrees (0 for point at top)
        ; use decomp=256
        ;
  zc=pixel, done=1
  center=p1, xcen=real(center), ycen=imag(center), r=real(p2)
  phi=(imag(p2)+18)/180*pi, twopi=2*pi, temp=twopi/10
  IF ((phi<0)||(phi>=temp))
    phi=0
  ENDIF
  t0=phi, t1=temp+phi, t2=2*temp+phi, t3=3*temp+phi
  t4=4*temp+phi, t5=5*temp+phi, t6=6*temp+phi
  t7=7*temp+phi, t8=8*temp+phi, t9=9*temp+phi
  x0=r*cos(t0)+xcen, y0=r*sin(t0)+ycen
  x1=r*cos(t2)+xcen, y1=r*sin(t2)+ycen
  x2=r*cos(t4)+xcen, y2=r*sin(t4)+ycen
  x3=r*cos(t6)+xcen, y3=r*sin(t6)+ycen
  x4=r*cos(t8)+xcen, y4=r*sin(t8)+ycen
  :
  x=real(zc), y=imag(zc), t=imag(log(zc-center))
  IF (t<0)
    t=t+twopi
  ENDIF
  flag=0
  IF ((t>t0)&&(t<=t1))
    f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
    IF (f<0)
      flag=1
    ENDIF
  ELSEIF ((t>t1)&&(t<=t2))
    f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
    IF (f>0)
      flag=1
    ENDIF
  ELSEIF ((t>t2)&&(t<=t3))
    f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
    IF (f<0)
      flag=1
    ENDIF
  ELSEIF ((t>t3)&&(t<=t4))
    f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
    IF (f>0)
      flag=1
    ENDIF
  ELSEIF ((t>t4)&&(t<=t5))
    f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
    IF (f<0)
      flag=1
    ENDIF
  ELSEIF ((t>t5)&&(t<=t6))
    f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
    IF (f>0)
      flag=1
    ENDIF
  ELSEIF ((t>t6)&&(t<=t7))
    f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
    IF (f<0)
      flag=1
    ENDIF
  ELSEIF ((t>t7)&&(t<=t8))
    f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
    IF (f>0)
      flag=1
    ENDIF
  ELSEIF ((t>t8)&&(t<=t9))
    f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
    IF (f<0)
      flag=1
    ENDIF
  ELSE
    f=x*(y0-y3)+y*(x3-x0)-x3*y0+x0*y3
    IF (f>0)
      flag=1
    ENDIF
  ENDIF
  z=0
  IF (flag==1)
    z=(0.0,1.0)
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


STAR1 {
  Z = pixel:
  Z = Z^2
  R = SINH(Z)^2
  X = (Z * R)*COS(Z)*SIN(R)
  Z = (R + Z)^X
  .000001 < |Z^2|
  ;SOURCE: 97msg.frm
}


STAR2 {
  Z = pixel^2:
  R = SINH(Z)^2
  X = (Z * R)*COS(Z)*SIN(R)
  Z = (R + Z)^X
  .000001 < |Z^10|
  ;SOURCE: 97msg.frm
}


star_km {; Kerry Mitchell 09oct98
        ;
        ; See the end of formula starbail_man for Kerry Mitchell's
        ;   explanation of his "Star" formulas.
        ;
        ; draws 5-point star, not a fractal
        ;
        ; p1 = center of star
        ; real(p2) = size of star (try 1)
        ; imag(p2) = rotation angle, degrees (0 for point at top)
        ; use decomp=256
        ;
  zc=pixel, done=1
  center=p1, xcen=real(center), ycen=imag(center), r=real(p2)
  phi=imag(p2)/180*pi, twopi=2*pi, temp=twopi/10
  t0=phi, t1=temp+phi, t2=2*temp+phi, t3=3*temp+phi
  t4=4*temp+phi, t5=5*temp+phi, t6=6*temp+phi
  t7=7*temp+phi, t8=8*temp+phi, t9=9*temp+phi
  x0=r*cos(t0)+xcen, y0=r*sin(t0)+ycen
  x1=r*cos(t2)+xcen, y1=r*sin(t2)+ycen
  x2=r*cos(t4)+xcen, y2=r*sin(t4)+ycen
  x3=r*cos(t6)+xcen, y3=r*sin(t6)+ycen
  x4=r*cos(t8)+xcen, y4=r*sin(t8)+ycen
  :
  x=real(zc), y=imag(zc), t=imag(log(zc-center))
  IF (t<0)
    t=t+twopi
  ENDIF
  IF ((t>t0)&&(t<=t1))
    f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
  ELSEIF ((t>t1)&&(t<=t2))
    f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
  ELSEIF ((t>t2)&&(t<=t3))
    f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
  ELSEIF ((t>t3)&&(t<=t4))
    f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
  ELSEIF ((t>t4)&&(t<=t5))
    f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
  ELSEIF ((t>t5)&&(t<=t6))
    f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
  ELSEIF ((t>t6)&&(t<=t7))
    f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
  ELSEIF ((t>t7)&&(t<=t8))
    f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
  ELSEIF ((t>t8)&&(t<=t9))
    f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
  ELSE
    f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
  ENDIF
  t=log(cabs(f))
  z=cos(t)+flip(sin(t))
  done==0
  ;SOURCE: 98msg.frm
}


starAstroid_Mset {; adapted from Paul Carlson by Kathy Roth
                  ; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = a factor controlling the width of the curves
    ;   imag(p1) = radius of the astroid
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
  w = 0
  c=log(sqr(sqr(pixel))*pixel)*0.2
  z = 0
  bailout = 0
  iter = 0
  range_num = 0
  i = (0,1)
  r = imag(p1)
    ;****************************************************
    ; In the accompanying par file, astmset.par,
    ; we have 8 color ranges with 30 colors in each range
    ; for a total of 240 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| < 10000.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
  num_ranges = real(p2)
  colors_in_range = imag(p2)
    ;****************************************************
    ; Real(p1) controls the width of the curves.
    ; These values will usually be in the range 0.001 to 0.1
    ;****************************************************
  width = real(p1)
  index_factor = (colors_in_range - 1) / width
  :
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be expressed in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This example uses the standard Mandelbrot set equation.
    ;****************************************************
  w = w * w + c
    ;****************************************************
    ; The orbit trap curve.  This example uses an "astroid"
    ; curve (which has absolutely nothing to do with huge
    ; rocks in outer space).  Any two-dimensional curve can
    ; be used which can be expressed in parametric form in
    ; terms of the angle from the origin.
    ;****************************************************
  ang = atan(imag(w) / real(w))
  astroid = r * (cos(ang)^3 + i * sin(ang)^3)
    ;****************************************************
    ; If the orbit point is within some distance of the curve,
    ; set z to the index into the colormap and set the bailout
    ; flag.  Note: the way we use the "distance" here has
    ; the effect of turning the curves inside-out in the image.
    ;****************************************************
  distance = abs(|w| - |astroid|)
  IF (distance < width && iter > 1)
    z = index_factor * distance + range_num * colors_in_range + 1
    bailout = 1
  ENDIF
    ;****************************************************
    ; Cycle through the range numbers (0 thru num_ranges - 1)
    ; With two color ranges, even iterations use color
    ; range 0, odd iterations use color range 1.
    ;****************************************************
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
    ;****************************************************
    ; Since we are using outside=summ, we have to subtract
    ; the number of iterations from z.
    ;****************************************************
  iter = iter + 1
  z = z - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
  bailout == 0  && |w| < 1000
  ;SOURCE: 98msg.frm
}


starbail_jul {; Kerry Mitchell 09oct98
        ;
        ; See the end of formula starbail_man for Kerry Mitchell's
        ;   explanation of his "Star" formulas.
        ;
        ; Julia set, bails out when orbit enters/leaves 5 point star
        ; p1 = Julia parameter
        ; p2 = center of star
        ; cabs(real(p3)) = star size of star (try 1)
        ; sign(real(p3)) = in/out flag:
        ;   + = bailout when orbit leaves star
        ;   - = bailout when orbit enters star
        ; imag(p3) = star rotation angle, degrees
        ;   only use angles from 0 to 36 degrees
        ;
        ;  initialize iteration parameters
        ;
  c=p1, zc=pixel, done=0, iter=1, bailout=1e12
  pixelflag=1  ; set by hand
        ;
        ;  star parameters
        ;
  center=p2, xcen=real(center), ycen=imag(center)
  r=cabs(real(p3)), inout=1
  IF (real(p3)<0)
    inout=0
  ENDIF
  phi=imag(p3)/180*pi, twopi=2*pi, temp=twopi/10
  t0=phi, t1=t0+temp
  t2=t1+temp, t3=t2+temp, t4=t3+temp, t5=t4+temp
  t6=t5+temp, t7=t6+temp, t8=t7+temp, t9=t8+temp
        ;
        ;  set up control points
        ;
  x0=r*cos(t0)+xcen, y0=r*sin(t0)+ycen
  x1=r*cos(t2)+xcen, y1=r*sin(t2)+ycen
  x2=r*cos(t4)+xcen, y2=r*sin(t4)+ycen
  x3=r*cos(t6)+xcen, y3=r*sin(t6)+ycen
  x4=r*cos(t8)+xcen, y4=r*sin(t8)+ycen
        ;
        ;  check pixel to see if it bailed
        ;
  IF (pixelflag!=0)
    x=real(zc), y=imag(zc), t=imag(log(zc-center))
    IF (t<0)
      t=t+twopi
    ENDIF
    flag=0
    IF ((t>t0)&&(t<=t1))
      f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t1)&&(t<=t2))
      f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t2)&&(t<=t3))
      f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t3)&&(t<=t4))
      f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t4)&&(t<=t5))
      f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t5)&&(t<=t6))
      f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t6)&&(t<=t7))
      f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t7)&&(t<=t8))
      f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t8)&&(t<=t9))
      f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
      IF (f<0)
        flag=1
      ENDIF
    ELSE
      f=x*(y0-y3)+y*(x3-x0)-x3*y0+x0*y3
      IF (f>0)
        flag=1
      ENDIF
    ENDIF
    IF (flag==inout)
      done=1
      z=zc-center
    ENDIF
  ENDIF
  :
        ;  standard iteration if pixel didn't bail
        ;
  IF (done==0)
    iter=iter+1, zc=sqr(zc)+c
    x=real(zc), y=imag(zc), t=imag(log(zc-center))
    IF (t<0)
      t=t+twopi
    ENDIF
        ;
        ;  see if orbit is inside or outside of star
        ;    by checking each side one at a time
        ;
    flag=0
    IF ((t>t0)&&(t<=t1))
      f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t1)&&(t<=t2))
      f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t2)&&(t<=t3))
      f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t3)&&(t<=t4))
      f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t4)&&(t<=t5))
      f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t5)&&(t<=t6))
      f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t6)&&(t<=t7))
      f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t7)&&(t<=t8))
      f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t8)&&(t<=t9))
      f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
      IF (f<0)
        flag=1
      ENDIF
    ELSE
      f=x*(y0-y3)+y*(x3-x0)-x3*y0+x0*y3
      IF (f>0)
        flag=1
      ENDIF
    ENDIF
        ;
        ;  if the orbit was on the appropriate side,
        ;    set "done" flag
        ;    set z to iteration variable for coloring
        ;
    IF (flag==inout)
      done=1
      z=zc-center
        ;
        ;  safety valve in case star doesn't catch orbit
        ;  if orbit goes to infinity or max iterations reached:
        ;     set "done" flag
        ;     set z to 1 to differentiate it from star trap
        ;
    ELSEIF ((|zc|>bailout)||(iter==maxit))
      done=1
      z=1
    ENDIF
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


starbail_man {; Kerry Mitchell 09oct98
        ;
        ; Kerry Mitchell's explanation of his "Star" formulas is at
        ;   the end of this formula
        ;
        ; Mandelbrot, bails out when orbit enters/leaves 5 point star
        ; p1 = center of star
        ; cabs(real(p2)) = star size of star (try 1)
        ; sign(real(p2)) = in/out flag:
        ;   + = bailout when orbit leaves star
        ;   - = bailout when orbit enters star
        ; imag(p2) = star rotation angle, degrees
        ;   only use angles from 0 to 36 degrees
        ;
        ;  initialize iteration parameters
        ;
  zc=0, c=pixel, done=0, iter=1, bailout=1e12
  pixelflag=0  ; set by hand
        ;
        ;  star parameters
        ;
  center=p1, xcen=real(center), ycen=imag(center)
  r=cabs(real(p2)), inout=1
  IF (real(p2)<0)
    inout=0
  ENDIF
  phi=imag(p2)/180*pi, twopi=2*pi, temp=twopi/10
  t0=phi, t1=t0+temp
  t2=t1+temp, t3=t2+temp, t4=t3+temp, t5=t4+temp
  t6=t5+temp, t7=t6+temp, t8=t7+temp, t9=t8+temp
        ;
        ;  set up control points
        ;
  x0=r*cos(t0)+xcen, y0=r*sin(t0)+ycen
  x1=r*cos(t2)+xcen, y1=r*sin(t2)+ycen
  x2=r*cos(t4)+xcen, y2=r*sin(t4)+ycen
  x3=r*cos(t6)+xcen, y3=r*sin(t6)+ycen
  x4=r*cos(t8)+xcen, y4=r*sin(t8)+ycen
        ;
        ;  check pixel to see if it bailed
        ;
  IF (pixelflag!=0)
    x=real(zc), y=imag(zc), t=imag(log(zc-center))
    IF (t<0)
      t=t+twopi
    ENDIF
    flag=0
    IF ((t>t0)&&(t<=t1))
      f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t1)&&(t<=t2))
      f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t2)&&(t<=t3))
      f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t3)&&(t<=t4))
      f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t4)&&(t<=t5))
      f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t5)&&(t<=t6))
      f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t6)&&(t<=t7))
      f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t7)&&(t<=t8))
      f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t8)&&(t<=t9))
      f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
      IF (f<0)
        flag=1
      ENDIF
    ELSE
      f=x*(y0-y3)+y*(x3-x0)-x3*y0+x0*y3
      IF (f>0)
        flag=1
      ENDIF
    ENDIF
    IF (flag==inout)
      done=1
      z=zc-center
    ENDIF
  ENDIF
  :
        ;  standard iteration if pixel didn't bail
        ;
  IF (done==0)
    iter=iter+1, zc=sqr(zc)+c
    x=real(zc), y=imag(zc), t=imag(log(zc-center))
    IF (t<0)
      t=t+twopi
    ENDIF
        ;
        ;  see if orbit is inside or outside of star
        ;    by checking each side one at a time
        ;
    flag=0
    IF ((t>t0)&&(t<=t1))
      f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t1)&&(t<=t2))
      f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t2)&&(t<=t3))
      f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t3)&&(t<=t4))
      f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t4)&&(t<=t5))
      f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t5)&&(t<=t6))
      f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t6)&&(t<=t7))
      f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
      IF (f<0)
        flag=1
      ENDIF
    ELSEIF ((t>t7)&&(t<=t8))
      f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
      IF (f>0)
        flag=1
      ENDIF
    ELSEIF ((t>t8)&&(t<=t9))
      f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
      IF (f<0)
        flag=1
      ENDIF
    ELSE
      f=x*(y0-y3)+y*(x3-x0)-x3*y0+x0*y3
      IF (f>0)
        flag=1
      ENDIF
    ENDIF
        ;
        ;  if the orbit was on the appropriate side,
        ;    set "done" flag
        ;    set z to iteration variable for coloring
        ;
    IF (flag==inout)
      done=1
      z=zc-center
        ;
        ;  safety valve in case star doesn't catch orbit
        ;  if orbit goes to infinity or max iterations reached:
        ;     set "done" flag
        ;     set z to 1 to differentiate it from star trap
        ;
    ELSEIF ((|zc|>bailout)||(iter==maxit))
      done=1
      z=1
    ENDIF
  ENDIF
  done==0
;******Kerry Mitchell's Explanation of his "Star" formulas*******
;
;          narrative copyright Kerry Mitchell 09oct98
;
;  Related formulas:
;    starbail_man  (above) 
;    starbail_jul
;    starnear_man
;    starnear_jul
;    star-inout 
;    star_km
;
; Seeing Stars
;
; Most fractal images involve circles in some respect:  either stopping
; the iteration when the orbit moves outside of a given circle, or
; coloring by how close the orbit comes to a certain circle, or some
; variation.  These formulas use a 5 point star instead of a circle.
; The "starnear" formulas color by how close the orbit comes to a star.
; The "starbail" formulas are set up to stop iterating either when the
; orbit comes into a star or when it leaves a star.
;
; The star is represented by the 5 outer points.  These are equally spaced
; on a circle.  The center and size of the circle are user-specified, as
; is the rotation angle of the star.
;
; How z at any iteration relates to the star (inside, outside, how close)
; is determined by looking at each of the 10 sides, one at a time.  Each
; side can be represented by a line A*x + B*y + C = 0, where A, B, and C
; come from the coordinates of the 2 outer points that are joined to make
; the side.  Given the numbers A, B, and C, the quantity
;
;         q = A*real(z) + B*imag(z) + C
;
; is computed.  If q is positive, then z is on one side of the line, and
; if q is negative, then z is on the other side of the line.  If |q| is
; very small, that means that z is very close to that side of the star.
; Taking the signs of q for all 10 sides will determine if z is inside or
; outside of the star.  Using the smallest value of |q| gives the distance
; from z to the star.
;
; To see this in action, use the formula "star".  It will draw the outline
; of a star, with the position, orientation and size that you choose.
; This formula, and the "starnear" formulas that are built on it, use a
; logarithmic transfer function from distance to angle (for decomposition
; coloring in Fractint).  This helps highlight the star without needing to
; find out if the point is exactly on the star or not.  The "star-inout"
; formula will draw a star in 2 colors.  Everything inside the star is one
; color, and everything outside of the star is the other color.  These 2
; formulas are simply to give an idea of how the method works.
;
; The fractal formulas need a bit of extra explanation.  In the
; "starnear_jul" formula, you have the option of whether or not to check
; the pixel (initial value of z) for its distance from the star.  If the
; star is centered at the origin (p2=0/0), this can make quite a difference.
; For example, use the "starnear2" parameter set.  As written, the real
; part of p3 is -0.28. The magnitude of real(p3) is the radius of the circle
; containing the 5 outer points.  If real(p3) is negative, that tells the
; formula to check the pixel for its distance before iterating.  In the
; image, this shows up as a star in the center.  Now, make real(p3) +0.28.
; You'll see that the outer portion of the image is unchanged, but the star
; in the middle has gone away.  In the "starbail" formulas, the flag to
; check the pixel before iterating (pixelflag) has been set in the formula,
; and is not interactively changeable (too many parameters).
;
; The "starnear" formulas use a standard bailout condition--stop when the
; iterate gets too big, or leaves a very large circle.  Conversely, in the
; "starbail" formulas, the bailout condition is built around a star.  If 
; the star is centered at the origin and is big enough, then you can
; essentially use the star instead of the traditional bailout circle.  This
; is what has been done in parameter set "starbail1".  The magnification
; was decreased to show the bailout star, and the fractal can clearly be
; seen in the middle.  It is also possible to bailout when the orbit enters
; a star.  This is similar to the orbit trap methods that others have
; written, and works particularly well for Julia sets that are dusts.  An
; example of this is in parameter set "starbail2".  Some care must be taken
; if the star is not centered on the origin.  The "starbail" formulas set
; z to a default (1,0) if the orbit was not caught by a star.  If the star
; is too far away or too small to catch many orbits, the majority of the
; screen will be one color (color 0 when using decomposition coloring).  If
; you use stars off of the origin, you may want to increase the size and
; set "pixelflag=0" in the formula, to prevent the image from being taken
; over by one huge rogue star.
;
; One final note:  This method uses angles a lot to figure out which side
; belongs to whom.  Consequently, the ability to rotate the star is a bit
; limited.  If the rotations are kept to the range of 0 to 36 degrees, there
; shouldn't be any problems.  Rotations outside this range (try it with the
; "star" formula) will result in branch cuts as the formula gets its angles
; confused.  Fortunately, since the star is symmetric, there shouldn't be
; a need to rotate it beyond those bounds.
;
;************************************************************************
  ;SOURCE: 98msg.frm
}


starFlexBalls_Mand {; adapted from Paul Carlson by Kathy Roth
                    ; Copyright (c) Paul W. Carlson, 1998
    ; p1 = radius of center of ring (0.01 to 10)
    ; p2 = one half thickness of ring (0.01 to p1)
    ;
  c=log(sqr(sqr(pixel))*pixel)*0.2
  w = z = iter = bailout = 0
  d0 = p1 + p2
  d1 = 0.382683432365 * p1
  d2 = 0.923879532511 * p1
  dsqd = d0 * d0 + p1 * p1 - (d0 + d0) * d2
  :
  w2=fn1(w)+c
  w=c*(1-w2*w2)/(1+w2*w2)
    ;
  IF ((abs(cabs(w) - p1) < p2) && iter > 0)
    bailout = 1
    wr = real(w), wi = imag(w)
    awr = abs(wr), awi = abs(wi)
    IF (awr >= awi)
      dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
      adjust = 1
    ELSE
      dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
      adjust = 0
    ENDIF
    IF (wr >= 0 && wi >= 0)
      range_num = 1 - adjust
    ELSEIF (wr < 0 && wi >= 0)
      range_num = 2 + adjust
    ELSEIF (wr < 0 && wi < 0)
      range_num = 5 - adjust
    ELSE
      range_num = 6 + adjust
    ENDIF
    ratio = sqrt(dist / dsqd)
    z = 29 * ratio + range_num * 30 + 1
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < 1000
  ;SOURCE: 98msg.frm
}


stargrav_2u {; variation of M. Christenson's gravijul
             ; P. DiGiorgi 10/98
  bailout = imag(p3), k = real(p3)
  pts = imag(p2)
  z = log(pixel^pts)/pts:
  x = real(z), y = imag(z)
  w = fn1(x) + k*y, v = fn1(y) + k*x
  u = fn2(w + flip(v))
  z = fn4(p1/fn3(u*u)) + real(p2)
  |z| < bailout
  ;SOURCE: frac_ml.frm
}


stargravijul {; kathy roth
              ; adapted from Mark Christenson and Linda Allison
  z = log(sqr(sqr(pixel))*pixel)*0.2:
  w = fn1(z)
  z = fn3(p1/fn2(w*w)) + p2
  |z| < p3
  ;SOURCE: 98msg.frm
}


starnear_jul {; Kerry Mitchell 09oct98
        ;
        ; See the end of formula starbail_man for Kerry Mitchell's
        ;   explanation of his "Star" formulas.
        ;
        ; Julia set, colors by nearest approach to 5 point star
        ; p1 = Julia parameter
        ; p2 = center of star
        ; cabs(real(p3)) = star size of star (try 1)
        ; sign(real(p3)) = pixel flag:
        ;   + = don't consider pixel--start after first iteration
        ;   - = consider pixel
        ; imag(p3) = star rotation angle, degrees
        ;   only use angles from 0 to 36 degrees
        ; use decomp=256, bailout hardcoded to 10^12
        ;
        ;  initialize iteration parameters
        ;
  c=p1, zc=pixel, done=0, iter=1
  bailout=1e12, fmin=bailout
        ;
        ;  star parameters
        ;
  center=p2, xcen=real(center), ycen=imag(center)
  r=cabs(real(p3)), pixelflag=0
  IF (real(p3)<0)
    pixelflag=1
  ENDIF
  phi=imag(p3)/180*pi, twopi=2*pi, temp=twopi/10
  t0=phi, t1=t0+temp
  t2=t1+temp, t3=t2+temp, t4=t3+temp, t5=t4+temp
  t6=t5+temp, t7=t6+temp, t8=t7+temp, t9=t8+temp
        ;
        ;  set up control points
        ;
  x0=r*cos(t0)+xcen, y0=r*sin(t0)+ycen
  x1=r*cos(t2)+xcen, y1=r*sin(t2)+ycen
  x2=r*cos(t4)+xcen, y2=r*sin(t4)+ycen
  x3=r*cos(t6)+xcen, y3=r*sin(t6)+ycen
  x4=r*cos(t8)+xcen, y4=r*sin(t8)+ycen
        ;
        ;  if pixel flag =/= 0, then check pixel for how close
        ;    it is to star
        ;
  IF (pixelflag!=0)
    x=real(zc), y=imag(zc), t=imag(log(zc-center))
    IF (t<0)
      t=t+twopi
    ENDIF
    IF ((t>t0)&&(t<=t1))
      f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
    ELSEIF ((t>t1)&&(t<=t2))
      f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
    ELSEIF ((t>t2)&&(t<=t3))
      f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
    ELSEIF ((t>t3)&&(t<=t4))
      f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
    ELSEIF ((t>t4)&&(t<=t5))
      f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
    ELSEIF ((t>t5)&&(t<=t6))
      f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
    ELSEIF ((t>t6)&&(t<=t7))
      f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
    ELSEIF ((t>t7)&&(t<=t8))
      f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
    ELSEIF ((t>t8)&&(t<=t9))
      f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
    ELSE
      f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
    ENDIF
    fmin=cabs(f)
  ENDIF
  :
        ;  standard iteration, find polar angle of iterate
        ;
  iter=iter+1, zc=sqr(zc)+c
  x=real(zc), y=imag(zc), t=imag(log(zc-center))
  IF (t<0)
    t=t+twopi
  ENDIF
        ;
        ;  compute how close iterate is to each side of star
        ;
  IF ((t>t0)&&(t<=t1))
    f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
  ELSEIF ((t>t1)&&(t<=t2))
    f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
  ELSEIF ((t>t2)&&(t<=t3))
    f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
  ELSEIF ((t>t3)&&(t<=t4))
    f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
  ELSEIF ((t>t4)&&(t<=t5))
    f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
  ELSEIF ((t>t5)&&(t<=t6))
    f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
  ELSEIF ((t>t6)&&(t<=t7))
    f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
  ELSEIF ((t>t7)&&(t<=t8))
    f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
  ELSEIF ((t>t8)&&(t<=t9))
    f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
  ELSE
    f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
  ENDIF
  f=cabs(f)
        ;
        ;  update minimum distance
        ;
  IF (f<fmin)
    fmin=f
    zmin=zc
  ENDIF
        ;
        ;  upon escape or maximum iterations:
        ;    set "done" flag
        ;    use minimum distance from star as polar angle of z
        ;      for use with decomp coloring
        ;
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    t=log(fmin)
    z=cos(t)+flip(sin(t))
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


starnear_man {; Kerry Mitchell 09oct98
        ;
        ; See the end of formula starbail_man for Kerry Mitchell's
        ;   explanation of his "Star" formulas.
        ;
        ;
        ; Mandelbrot, colors by nearest approach to 5 point star
        ; p1 = center of star
        ; cabs(real(p2)) = star size of star (try 1)
        ; sign(real(p2)) = pixel flag:
        ;   + = don't consider pixel--start after first iteration
        ;   - = consider pixel
        ; imag(p2) = star rotation angle, degrees
        ;   only use angles from 0 to 36 degrees
        ; use decomp=256, bailout hardcoded to 10^12
        ;
        ;  initialize iteration parameters
        ;
  zc=0, c=pixel, done=0, iter=1
  bailout=1e12, fmin=bailout
        ;
        ;  star parameters
        ;
  center=p1, xcen=real(center), ycen=imag(center)
  r=cabs(real(p2)), pixelflag=0
  IF (real(p2)<0)
    pixelflag=1
  ENDIF
  phi=imag(p2)/180*pi, twopi=2*pi, temp=twopi/10
  t0=phi, t1=t0+temp
  t2=t1+temp, t3=t2+temp, t4=t3+temp, t5=t4+temp
  t6=t5+temp, t7=t6+temp, t8=t7+temp, t9=t8+temp
        ;
        ;  set up control points
        ;
  x0=r*cos(t0)+xcen, y0=r*sin(t0)+ycen
  x1=r*cos(t2)+xcen, y1=r*sin(t2)+ycen
  x2=r*cos(t4)+xcen, y2=r*sin(t4)+ycen
  x3=r*cos(t6)+xcen, y3=r*sin(t6)+ycen
  x4=r*cos(t8)+xcen, y4=r*sin(t8)+ycen
        ;
        ;  if pixel flag =/= 0, then check pixel for how close
        ;    it is to star
        ;
  IF (pixelflag!=0)
    x=real(zc), y=imag(zc), t=imag(log(zc-center))
    IF (t<0)
      t=t+twopi
    ENDIF
    IF ((t>t0)&&(t<=t1))
      f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
    ELSEIF ((t>t1)&&(t<=t2))
      f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
    ELSEIF ((t>t2)&&(t<=t3))
      f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
    ELSEIF ((t>t3)&&(t<=t4))
      f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
    ELSEIF ((t>t4)&&(t<=t5))
      f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
    ELSEIF ((t>t5)&&(t<=t6))
      f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
    ELSEIF ((t>t6)&&(t<=t7))
      f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
    ELSEIF ((t>t7)&&(t<=t8))
      f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
    ELSEIF ((t>t8)&&(t<=t9))
      f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
    ELSE
      f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
    ENDIF
    fmin=cabs(f)
  ENDIF
  :
        ;  standard iteration, find polar angle of iterate
        ;
  iter=iter+1, zc=sqr(zc)+c
  x=real(zc), y=imag(zc), t=imag(log(zc-center))
  IF (t<0)
    t=t+twopi
  ENDIF
        ;
        ;  compute how close iterate is to each side of star
        ;
  IF ((t>t0)&&(t<=t1))
    f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
  ELSEIF ((t>t1)&&(t<=t2))
    f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
  ELSEIF ((t>t2)&&(t<=t3))
    f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
  ELSEIF ((t>t3)&&(t<=t4))
    f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
  ELSEIF ((t>t4)&&(t<=t5))
    f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
  ELSEIF ((t>t5)&&(t<=t6))
    f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
  ELSEIF ((t>t6)&&(t<=t7))
    f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
  ELSEIF ((t>t7)&&(t<=t8))
    f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
  ELSEIF ((t>t8)&&(t<=t9))
    f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
  ELSE
    f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
  ENDIF
  f=cabs(f)
        ;
        ;  update minimum distance
        ;
  IF (f<fmin)
    fmin=f
    zmin=zc
  ENDIF
        ;
        ;  upon escape or maximum iterations:
        ;    set "done" flag
        ;    use minimum distance from star as polar angle of z
        ;      for use with decomp coloring
        ;
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    t=log(fmin)
    z=cos(t)+flip(sin(t))
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


STEFF1(XAXIS) {; Ray Girvan, May 1996
   ; Steffensen's Method
   ; for finding roots of f(z)=0
   ; iteration is
   ;   g=[f(z+f(z)) - f(z)] / f(z)
   ;   z = z - f(z)/g
   ; use floating point
   ;
   ; this formula for f(z) = z^3-p2
   ; try p1=0.01, p2=0.1
   ;
   li=p1
   z=pixel:
   z1=z*z*z-p2
   g=((z+z1)*(z+z1)*(z+z1)-z1-p2)/z1     
   z=z-z1/g
   |z1| >= li
  ;SOURCE: girvan.frm
}


Sterling (XAXIS) {; davisl
  z = Pixel:
  z = ((z/2.7182818)^z)/sqr(6.2831853*z)
  |z| <= 4
  ;SOURCE: fractint.frm
}


Sterling2 (XAXIS) {; davisl
  z = Pixel:
  z = ((z/2.7182818)^z)/sqr(6.2831853*z) + pixel
  |z| <= 4
  ;SOURCE: fractint.frm
}


Sterling3 (XAXIS) {; davisl
  z = Pixel:
  z = ((z/2.7182818)^z)/sqr(6.2831853*z) - pixel
  |z| <= 4
  ;SOURCE: fractint.frm
}


stone {; Giuseppe Zito
  z = pixel
  c1 = -0.837412
  c4 = 2.37
  c5 = 0.46983
  c8 = 0.246683
  c9 = -0.624521
  : 
  x = real(z), y = imag(z)
  s0 = x
  s0 = s0 *c1
  s0 = s0 +x
  s0 = s0 /c4
  s0 = s0 *c5
  s1 = y
  s1 = s1 *c8
  s1 = s1 *c9
  s0 = s0 +s1
  s0 = s0 -y
  newx = s0 
  s0 = y
  s0 = s0 *x
  s0 = s0 *y
  s0 = s0 -x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


stone_s1 {; Created with FracText 1.0, by J.M v.d.Valk
          ; using Gallet-8.frm/Gallet-8-21
          ; and the original Par's and Map's. Many thanks to
          ; Paul C., Jan V., Sylvie G. & the Stone Soup Family
          ; (c) guy.marson@mnhn.lu
          ; 'periodicity=0' and 'passes=1' recommended
  x=real(scrnpix)/real(scrnmax), y=(imag(scrnmax)-imag(scrnpix))/real\
  (scrnmax), z=x+flip(y)
  chrP1 = y<0.58775&&y>0.56225||y>0.6245||x<0.21481&&x>0.18931&&x<0.2\
  4481||(abs(cabs(z+(-0.24481,-0.60612))-0.03113)<0.01275&&x>=0.24481\
  )
  chrl2 = x<0.32169&&x>0.29619
  chre3 = abs(cabs(z+(-0.38544,-0.55625))-0.0435)<0.01275&&(x<0.38544\
  ||y>0.552||y<0.53925)||(y>0.552&&y<0.5775&&x>0.34194&&x<0.42894)
  chra4 = abs(cabs(z+(-0.48369,-0.578))-0.02175)<0.01275&&x<0.48369||\
  (abs(cabs(z+(-0.49869,-0.578))-0.02175)<0.01275&&x>0.49869)&&y>0.57\
  8||((abs(cabs(z+(-0.48369,-0.5345))-0.02175)<0.01275&&x<0.48369)||(\
  abs(cabs(z+(-0.49869,-0.5345))-0.02175)<0.01275&&x>0.49869))||(x>0.\
  48369&&x<0.49869&&(y<0.5255||(y>0.587&&y<0.6125)||(y>0.5435&&y<0.56\
  9)))||(x>0.50769&&x<0.53319&&y<0.578)
  chrs5 = abs(cabs(z+(-0.57519,-0.578))-0.02175)<0.01275&&x<0.57519||\
  (abs(cabs(z+(-0.59019,-0.578))-0.02175)<0.01275&&x>0.59019)&&(x<0.5\
  7519||y>0.578)||((abs(cabs(z+(-0.57519,-0.5345))-0.02175)<0.01275&&\
  x<0.57519)||(abs(cabs(z+(-0.59019,-0.5345))-0.02175)<0.01275&&x>0.5\
  9019)&&(x>0.59019||y<0.5345))||(x>0.57519&&x<0.59019&&(y<0.5255||(y\
  >0.587&&y<0.6125)||(y>0.5435&&y<0.569)))
  chre6 = abs(cabs(z+(-0.68844,-0.55625))-0.0435)<0.01275&&(x<0.68844\
  ||y>0.552||y<0.53925)||(y>0.552&&y<0.5775&&x>0.64494&&x<0.73194)
  chrDT7 = y<0.5255&&x>0.75219&&x<0.77769
  chrDT8 = y<0.5255&&x>0.78519&&x<0.81069
  test1 = chrP1||chrl2||chre3||chra4||chrs5||chre6||chrDT7||chrDT8&&y\
  >0.5&&y<0.65
  chri9 = x>0.06017&&x<0.08417&&(y<0.372||y>0.396)
  chrn10 = x>0.09017&&x<0.11417&&y<0.39||(abs(cabs(z+(-0.12429,-0.355\
  88))-0.02212)<0.012&&y>0.35588)||(x>0.13442&&x<0.15842&&y<0.35588)
  xc=1*x
  chrc11 = abs(cabs(z+(-0.20942,-0.345))-0.033)<0.012&&(x<0.20942||y>\
  xc+0.13558||y<-xc+0.55442)
  chrr12 = x>0.24724&&x<0.27124&&y<0.39||(abs(cabs(z+(-0.28136,-0.355\
  88))-0.02212)<0.012&&y>0.35588)
  chre13 = abs(cabs(z+(-0.36649,-0.345))-0.033)<0.012&&(x<0.36649||y>\
  0.341||y<0.329)||(y>0.341&&y<0.365&&x>0.33349&&x<0.39949)
  chra14 = abs(cabs(z+(-0.44599,-0.3615))-0.0165)<0.012&&x<0.44599||(\
  abs(cabs(z+(-0.45799,-0.3615))-0.0165)<0.012&&x>0.45799)&&y>0.3615|\
  |((abs(cabs(z+(-0.44599,-0.3285))-0.0165)<0.012&&x<0.44599)||(abs(c\
  abs(z+(-0.45799,-0.3285))-0.0165)<0.012&&x>0.45799))||(x>0.44599&&x\
  <0.45799&&(y<0.324||(y>0.366&&y<0.39)||(y>0.333&&y<0.357)))||(x>0.4\
  6249&&x<0.48649&&y<0.3615)
  chrs15 = abs(cabs(z+(-0.52099,-0.3615))-0.0165)<0.012&&x<0.52099||(\
  abs(cabs(z+(-0.53299,-0.3615))-0.0165)<0.012&&x>0.53299)&&(x<0.5209\
  9||y>0.3615)||((abs(cabs(z+(-0.52099,-0.3285))-0.0165)<0.012&&x<0.5\
  2099)||(abs(cabs(z+(-0.53299,-0.3285))-0.0165)<0.012&&x>0.53299)&&(\
  x>0.53299||y<0.3285))||(x>0.52099&&x<0.53299&&(y<0.324||(y>0.366&&y\
  <0.39)||(y>0.333&&y<0.357)))
  chre16 = abs(cabs(z+(-0.61249,-0.345))-0.033)<0.012&&(x<0.61249||y>\
  0.341||y<0.329)||(y>0.341&&y<0.365&&x>0.57949&&x<0.64549)
  chrm18 = x>0.72349&&x<0.74749&&y<0.39||(abs(cabs(z+(-0.75761,-0.355\
  88))-0.02212)<0.012&&y>0.35588)||(x>0.76774&&x<0.79174&&y<0.35588)|\
  |(abs(cabs(z+(-0.80186,-0.35588))-0.02212)<0.012&&y>0.35588)||(x>0.\
  81199&&x<0.83599&&y<0.35588)
  xy=2.5*x
  chry19 = y<xy-1.89496&&y>xy-1.95959||(y>-xy+2.49496&&y<-xy+2.55959)\
  &&y>xy-1.95959&&y<0.39&&y>0.24
  test2 = chri9||chrn10||chrc11||chrr12||chre13||chra14||chrs15||chre\
  16||chrm18&&y>0.3||chry19&&y<0.42
  chrI20 = x>0.03268&&x<0.05668
  chrn21 = x>0.06268&&x<0.08668&&y<0.24||(abs(cabs(z+(-0.09681,-0.205\
  88))-0.02212)<0.012&&y>0.20588)||(x>0.10693&&x<0.13093&&y<0.20588)
  chrp22 = x>0.13693&&x<0.16093&&y<0.24&&y>0.105||(abs(cabs(z+(-0.183\
  43,-0.195))-0.033)<0.012&&x>0.16093)
  chru23 = x>0.23443&&x<0.25843&&y>0.18412&&y<0.24||(abs(cabs(z+(-0.2\
  6856,-0.18412))-0.02212)<0.012&&y<0.18412)||(x>0.27868&&x<0.30268&&\
  y<0.24)
  xt=1*x
  chrt24 = abs(cabs(z+(-0.35387,-0.18412))-0.02212)<0.012&&y<0.18412|\
  |(x>0.31975&&x<0.34375&&y>0.18412)||(x>0.30868&&x<0.36587&&y>0.216&\
  &y<0.24)
  chrS26 = abs(cabs(z+(-0.49,-0.234))-0.024)<0.012&&(x<=0.49||y>0.234\
  )||(abs(cabs(z+(-0.49,-0.186))-0.024)<0.012&&(x>0.49||y<0.186))
  chrp27 = x>0.532&&x<0.556&&y<0.24&&y>0.105||(abs(cabs(z+(-0.5785,-0\
  .195))-0.033)<0.012&&x>0.556)
  chra28 = abs(cabs(z+(-0.658,-0.2115))-0.0165)<0.012&&x<0.658||(abs(\
  cabs(z+(-0.67,-0.2115))-0.0165)<0.012&&x>0.67)&&y>0.2115||((abs(cab\
  s(z+(-0.658,-0.1785))-0.0165)<0.012&&x<0.658)||(abs(cabs(z+(-0.67,-\
  0.1785))-0.0165)<0.012&&x>0.67))||(x>0.658&&x<0.67&&(y<0.174||(y>0.\
  216&&y<0.24)||(y>0.183&&y<0.207)))||(x>0.6745&&x<0.6985&&y<0.2115)
  chrc29 = abs(cabs(z+(-0.7495,-0.195))-0.033)<0.012&&(x<0.7495||y>xc\
  -0.5545||y<-xc+0.9445)
  chre30 = abs(cabs(z+(-0.83232,-0.195))-0.033)<0.012&&(x<0.83232||y>\
  0.191||y<0.179)||(y>0.191&&y<0.215&&x>0.79932&&x<0.86532)
  chrDT31 = y<0.174&&x>0.88332&&x<0.90732
  chrDT32 = y<0.174&&x>0.91332&&x<0.93732
  chrXM33 = x>0.94332&&x<0.96732&&(y<0.174||y>0.186)
  test3 = chrI20||chrn21||chru23||chrt24||chrS26||chra28||chrc29||chr\
  e30||chrDT31||chrDT32||chrXM33&&y>0.15||chrp22||chrp27&&y<0.27
  chrt34 = abs(cabs(z+(-0.36506,-0.04138))-0.00737)<0.004&&y<0.04138|\
  |(x>0.35369&&x<0.36169&&y>0.04138)||(x>0.35&&x<0.36906&&y>0.052&&y<\
  0.06)
  chrh35 = x>0.37844&&x<0.38644||(abs(cabs(z+(-0.38981,-0.045))-0.007\
  37)<0.004&&y>0.045)||(x>0.39319&&x<0.40119&&y<0.045)
  chre36 = abs(cabs(z+(-0.41819,-0.045))-0.011)<0.004&&(x<0.41819||y>\
  0.04367||y<0.03967)||(y>0.04367&&y<0.05167&&x>0.40719&&x<0.42919)
  chrF38 = x<0.46319||(y<0.054&&y>0.046)||y>0.062&&x>0.45519&&x<0.479\
  19
  chrO39 = abs(cabs(z+(-0.50119,-0.05))-0.016)<0.004
  xCR=2*x
  chrR40 = y<0.054&&y>0.046||y>0.062||x<0.53119&&x>0.52319&&x<0.53919\
  ||(abs(cabs(z+(-0.53919,-0.058))-0.008)<0.004&&x>=0.53919)||(y<0.05\
  &&y<-xCR+1.13237&&y>-xCR+1.11449)
  xCM=2.5*x
  chrM41 = y>-xCM+1.45297&&y<-xCM+1.47451||(y<xCM-1.3663&&y>xCM-1.387\
  84)&&y>0.04333||(x>0.55319&&x<0.56119)||(x>0.57514&&x<0.58314)
  chrU42 = abs(cabs(z+(-0.59714,-0.042))-0.008)<0.004&&y<0.04||(x>0.5\
  8514&&y>0.04&&x<0.59314)||(x>0.60114&&x<0.60914)
  chrL43 = x<0.61914||y<0.038&&x>0.61114&&x<0.63514
  xCA=3*x
  chrA44 = y>xCA-1.90671||y>-xCA+2.02141||(y<0.046&&y>0.038)&&y<xCA-1\
  .88141&&y<-xCA+2.04671
  chrP46 = y<0.054&&y>0.046||y>0.062||x<0.70224&&x>0.69424&&x<0.71024\
  ||(abs(cabs(z+(-0.71024,-0.058))-0.008)<0.004&&x>=0.71024)
  chrA47 = y>xCA-2.16801||y>-xCA+2.28271||(y<0.046&&y>0.038)&&y<xCA-2\
  .14271&&y<-xCA+2.30801
  chrR48 = y<0.054&&y>0.046||y>0.062||x<0.76934&&x>0.76134&&x<0.77734\
  ||(abs(cabs(z+(-0.77734,-0.058))-0.008)<0.004&&x>=0.77734)||(y<0.05\
  &&y<-xCR+1.60867&&y>-xCR+1.59078)
  chrS49 = abs(cabs(z+(-0.80334,-0.058))-0.008)<0.004&&(x<=0.80334||y\
  >0.058)||(abs(cabs(z+(-0.80334,-0.042))-0.008)<0.004&&(x>0.80334||y\
  <0.042))
  chrE50 = x<0.82534||y<0.038||(y<0.054&&y>0.046)||y>0.062&&x>0.81734\
  &&x<0.84134
  chrR51 = y<0.054&&y>0.046||y>0.062||x<0.85134&&x>0.84334&&x<0.85934\
  ||(abs(cabs(z+(-0.85934,-0.058))-0.008)<0.004&&x>=0.85934)||(y<0.05\
  &&y<-xCR+1.77267&&y>-xCR+1.75478)
  test4 = chrt34||chrh35||chre36||chrF38||chrO39||chrR40||chrM41||chr\
  U42||chrL43||chrA44||chrP46||chrA47||chrR48||chrS49||chrE50||chrR51\
  &&y>0.03&&y<0.07
  test0=test1||test2||test3||test4
     ; Import of formula 'Gallet-8-21' from file GALLET-8.FRM
     ; Requires periodicity = 0 and decomp=256
     ; p1 = parameter for a Julia set (0 for the Mandelbrot set)
     ; 0 < real(p2) , 0 < imag(p2)
  im2 = imag(p2)
  IF (p1 || imag(p1))
    c = p1
  ELSE
    c = pixel
  ENDIF
  z = -1, zn = pixel, zmin = zmin0 = abs(real(p2))
  cmax = trunc(abs(real(p3)))
  IF (cmax < 2)
    cmax = 2
  ENDIF
  k = flip(6.28318530718/(zmin*real(cmax))), cnt = -1
  :
  cnt = cnt + 1
  IF (cnt == cmax)
    cnt = 0
  ENDIF
  zn = zn*zn + c, znc = cabs(im2*real(zn) + flip(imag(zn)))
  IF (znc < zmin)
    zmin = znc, z = exp((cnt*zmin0 + zmin)*k)
  ENDIF
  znc <= 4&&test0==0
  ;SOURCE: 98msg.frm
}


straw {; Giuseppe Zito
  z = pixel
  c7 = 0.68142
  c9 = -0.867481
  c11 = -0.786637
  c12 = 0.694595
  d3 = 0.96822
  d5 = 0.360598
  d8 = 0.133834
  : 
  x = real(z), y = imag(z)
  s0 = x
  s0 = s0 /x
  s0 = s0 +x
  s1 =c7
  s0 = s0 *s1
  s0 = s0 +c9
  s0 = s0 /c11
  s0 = s0 +c12
  s0 = s0 -y
  newx = s0 
  s0 = x
  s0 = s0 *y
  s0 = s0 +d3
  s1 =d5
  s1 = s1 *x
  s0 = s0 *s1
  s0 = s0 -d8
  s0 = s0 +x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


Stretch1 {; Flattened cardioid by Jay R. Hill, 1998
          ; Classic Mandelbrot set fractal, transformed
  p = 0.5*exp(Pixel), c=p*(1-p), z = 0, done = 1, zc = 0
  s=|c|, t1=(256*s - 96)*s + 32*Real(c), t2=16*s + 32*Real(c) + 16
  z=z + 250*(t1<=3) + 251*(t2<=1) ; set colors
  IF (z>0)         ; for periods 1 and 2.
    done=-1        ; color is set for c in a component, skip iterations
  ENDIF
  :                ; initialization.
  zc=sqr(zc) + c   ; standard MSet iteration
  IF (|zc| >= 4)   ; Bailout at 4
    done=-1        ; Set flag to force an exit.
  ENDIF
  done >= 0        ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}


Stretch3 {; Flattened cardioid by Jay R. Hill, 1998
          ; Classic Mandelbrot set fractal, transformed
          ; use: maxiter=256 inside=249 
          ; outside=summ symmetry=xaxis periodicity=0
  p = 0.5*exp(Pixel), c=p*(1-p), z = 0, done = 1, zc = 0
  s=|c|, t1=(256*s - 96)*s + 32*Real(c) ; period 1 cardioid test 
  t2=16*s + 32*Real(c) + 16 ; period 2 circle test
  B=sqrt(-4*c-7), t3=|8+4*c*(1-B)|, t4=|8+4*c*(1+B)| ; period 3 components test
  z=z + 249*(t1<=3) + 250*(t2<=1) + 251*(t3<=1) + 252*(t4<=1) ; set colors
  IF(z>0)       ; periods 1, 2 and 3 have z>0.
    done=-1     ; color is set for c in a known component, skip iterations
  ENDIF
  :             ; initialization.
  zc=sqr(zc) + c; standard MSet iteration
  IF (|zc| >= 4); Bailout at 4
    done=-1     ; Set flag to force an exit.
  ENDIF         
  done >= 0     ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}


Stretch3j {; Flattened cardioid by Jay R. Hill, 1998
           ; Classic Mandelbrot set fractal, transformed
           ; p1 = bailout
           ; use: maxiter=256 inside=249 
           ;      outside=summ symmetry=xaxis periodicity=0
  p = 0.5*exp(Pixel), c=p*(1-p), z = 0, done = 1, zc = 0, bailout=p1
  s=|c|, t1=(256*s - 96)*s + 32*Real(c); period 1 cardioid test
  t2=16*s + 32*Real(c) + 16            ; period 2 circle test
  B=sqrt(-4*c-7), t3=|8+4*c*(1-B)| 
  t4=|8+4*c*(1+B)|                     ; period 3 components test
  z=z + 249*(t1<=3) + 250*(t2<=1) + 251*(t3<=1) + 252*(t4<=1) ; set colors
  IF (z>0)                             ; periods 1, 2 and 3 have z>0.
    done=-1     ; color is set for c in a known component, skip iterations
  ENDIF
  :                                    ; initialization.
  zc=sqr(zc) + c                       ; standard MSet iteration
  IF (|zc| >= bailout)
    done=-1                            ; Set flag to force an exit.
  ENDIF
  done >= 0                            ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}


Stretch4 {; Flattened cardioid by Jay R. Hill, 1998
    ; Classic Mandelbrot set fractal, transformed
    ; use: maxiter=256 inside=246 outside=summ
    ; symmetry=xaxis periodicity=0
  p = 0.5*exp(Pixel), c=p*(1-p), z = 0, done = 1
  zc = 0 
  t1=(1-sqrt(1-4*c)), t2=4*(c+1)
  z=z + 246*(|t1|<=1) + 247*(|t2|<=1)
  IF (z==0)
    B=sqrt(-4*c-7), t3=8+4*c*(1-B), t4=8+4*c*(1+B) 
    z=z + 248*(|t3|<=1) + 249*(|t4|<=1) 
    IF (z==0)
      IF ((4*c+3) !=0)
        L0=L1=L2=2
        Y=pi*sqrt(-1)/1.5, X = 2*sqrt((4*c+3)/3)
        X3 = asinh(-16/X^3)/3, Zz = 2*(c+1)*c + 2
        F=X*sinh(X3), L0= 8*((c*(F+1)*F + Zz))
        F=X*sinh(X3 + Y), L1= 8*((c*(F+1)*F + Zz))
        F=X*sinh(X3 - Y), L2= 8*((c*(F+1)*F + Zz))
        z=z + 250*(|L0|<=1) + 251*(|L1|<=1) + 252*(|L2|<=1)
      ENDIF
    ENDIF
  ENDIF
  IF (z>0)       ; for periods 1 and 2.
    done=-1      ; color is set for c in a component, skip iterations
  ENDIF
  :              ; initialization.
  zc=sqr(zc) + c ; standard MSet iteration
  IF (|zc| >= 4) ; Bailout at 4
    done=-1      ; Set flag to force an exit.
  ENDIF
  done >= 0      ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}


Stretch4a {; Flattened cardioid by Jay R. Hill, 1998
     ; Classic Mandelbrot set fractal, transformed
     ; initial z = p1
     ; use: maxiter=256 inside=245 outside=summ
     ; symmetry=xaxis periodicity=0
  p = 0.5*exp(Pixel), c=p*(1-p)
  z = 0, done = 1, zc = p1
  :              ; initialization.
  zc=sqr(zc) + c ; standard MSet iteration
  IF (|zc| >= 4) ; Bailout at 4
    done=-1      ; Set flag to force an exit.
  ENDIF
  done >= 0      ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}


stretch_J {
  a0=0.51515, b0=-0.71970, c0=-0.69697, d0=-0.39394
  a1=0.39394, b1=0.16288, c1=0.42424, d1=-0.27652
  al0=-0.70455, k0=-2.56002, l0=-5.58475
  al1=-0.17803, k1=-0.26541, l1=-4.59526
  z=pixel:
  x=real(z)
  y=imag(z)
  o0=(d0*x-b0*y+k0)/al0+flip((-c0*x+a0*y+l0)/al0)
  op0=|o0-p2|
  o1=(d1*x-b1*y+k1)/al1+flip((-c1*x+a1*y+l1)/al1)
  op1=|o1-p2|
  IF (op0<=op1)
    z=o0
  ELSE
    z=o1
  ENDIF
  |z|<=p1
  ;SOURCE: 97msg.frm
}


strict_man {
  c=pixel 
  r=cabs(c) 
  r=(1+sqrt(1+4*r))/2 
  z=0:
  z=sqr(z)+c 
  cabs(z) < r
  ;SOURCE: strict.frm
}


Sublime {  
   ; Any comments or question?
   ; E-Mail: Damion_P@Compuserve.com  -or- MDROCC@earthlink.net
  z = (1,1), c = pixel: 
  z2 = z*z, z3 = z2*z
  r = z - p1 *(z3-pixel)/(3.0*z2)
  q = fn1(z) * fn2(z) + c + p2
  z = (q * (whitesq == 0)) + (r * (whitesq == 1)) 
  (|z| < 4 && whitesq == 0) || (0.0001 < |z3 - pixel| && whitesq)
  ;SOURCE: pablo.frm
}


Sublime_2 {
   ; Any comments or question?
   ; E-Mail: Damion_P@Compuserve.com  -or- MDROCC@earthlink.net
  z = c = pixel, Root = 1: 
  z3 = z*z*z, z4 = z3*z
  r = (3.0*z4 + Root)/(4 * z3)+ p1
  q = (fn1(z) * fn2(z))+ c + p2
  z = (q * (whitesq == 0)) + (r * (whitesq == 1)) 
  (|z| < 4 && whitesq == 0) || (0.004 < |z4 - Root| && whitesq)
  ;SOURCE: pablo.frm
}


Sumagramaton_PHC {
  z = c = pixel:
  r = fn1(1/z) + p1
  q = fn2(z^2) + p2
  z =  q * (whitesq == 1) +  r * (whitesq == 0)
  |z| <= 4
  ;SOURCE: scary.frm
}


SummAbsbrot (XAXIS) {; Tom Schumm
                     ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):           ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  abs(imag(z))+abs(real(z)) <= 4   ; Different escape boundry
  ;SOURCE: phong.frm
}


SummAbsia (ORIGIN) {; Tom Schumm
                    ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):           ; Just like julia
  z = z + p1
  z = Sqr(z)
  abs(imag(z))+abs(real(z)) <= 4   ; Different escape boundry
  ;SOURCE: phong2.frm
}


Summbrot {; Tom Schumm
          ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  imag(z)+real(z) <= 4    ; Different escape boundry
  ;SOURCE: phong.frm
}


Summia (ORIGIN) {; Tom Schumm
                 ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
  z = z + p1
  z = Sqr(z)
  imag(z)+real(z) <= 4    ; Different escape boundry
  ;SOURCE: phong2.frm
}


Sunglasses (xaxis) {; Merle L. Newsted Jr.
  z = 0          
  a = pixel
  b = pixel + 1
  c = pixel * 2:
  z = a*z*z + b*z + c ; What? No bailout test!!!
  ;SOURCE: 97msg.frm
}


super-fractint {; Sylvie Gallet [101324,3444], 1995
       ; limit = real portion of P1      (requires periodicity=0)
       ; iter <= limit ==> Mandelbrot set of  z^7+c
       ; iter >  limit ==> Newton's method applied to  z^6-1 = 0
  limit = real(p1), test0 = 1, test3=0, iter = 1, z = pixel-0.025
  x=real(z), y=imag(z), x1=x*1.8, x3=3*x
  ty2 = ( (y<0.025) && (y>-0.025) ) || (y>0.175)
  f = ( (x<-1.2) || ty2 ) && ( (x>-1.25) && (x<-1) )
  r = ( (x<-0.9) || ty2 ) && ( (x>-0.95) && (x<-0.8) )
  r = r || ((cabs(sqrt(|z+(0.8,-0.1)|)-0.1)<0.025) && (x>-0.8))
  r = r || (((y<(-x1-1.44)) && (y>(-x1-1.53))) && (y<0.025))
  a = (y>(x3+1.5)) || (y>(-x3-1.2)) || ((y>-0.125) && (y<-0.075))
  a = a && ((y<(x3+1.65)) && (y<(-x3-1.05)))
  c = (cabs(sqrt(|z+0.05|)-0.2)<0.025) && (x<0.05)
  t1 = ((x>0.225) && (x<0.275) || (y>0.175)) && ((x>0.1) && (x<0.4))
  i = (x>0.45) && (x<0.5)
  n = (x<0.6) || (x>0.8) || ((y>-x1+1.215) && (y<-x1+1.305))
  n = n && (x>0.55) && (x<0.85)
  t2 = ((x>1.025) && (x<1.075) || (y>0.175)) && ((x>0.9) && (x<1.2))
  test = real(f||r||a||c||t1||i||n||t2) * real(y>-0.225) * real(y<0.225)
  z = z0 = pixel :
  test1 = (iter<limit), test2=(iter!=limit), test0 = 1-test0
  z = (z-z0)*real(test2) + z0, z2 = z*z, z4 = z2*z2, n = z4*z2-1
  d = 6*z4*z, nd = n/d, z = z+(z*n+z0+nd)*real(test1)-nd
  test3 = (test3 || (|z|>64))
  z = z + (0.00000001 - z) * real(test3) * real(test0) * real(test1)
  iter = iter+1, z = z+real(test)*(65-z)
  ((|z|<=64)*real(test1) || (|n|>=0.0001)*(1-real(test1))) && (1-real(test))
  ;SOURCE: lskinner.frm
}


SuperNuker {; Justin Kolodziej
            ; mod. of Mr. Newstead's Nuke1
  z = 0
  c = pixel
  d = fn2(pixel):
  z = (fn1(z)+c)/d
  ;SOURCE: 97msg.frm
}


support {; Giuseppe Zito
  z = pixel
  c4 = 0.926907
  c5 = 0.108726
  c8 = 0.294713
  c10 = 0.539116
  d2 = -0.253814
  d3 = 0.596235
  d4 = -0.961538
  d8 = -0.968626
  d11 = 0.85732
  : 
  x = real(z), y = imag(z)
  s0 = x
  s0 = s0 *y
  s0 = s0 /c4
  s0 = s0 *c5
  s0 = s0 *y
  s0 = s0 +x
  s0 = s0 *c8
  s0 = s0 *c10
  s0 = s0 *x
  s0 = s0 -y
  s0 = s0 *x
  s0 = s0 /x
  newx = s0 
  s0 = x
  s0 = s0 *d2
  s0 = s0 /d3
  s0 = s0 /d4
  s0 = s0 -y
  s0 = s0 +y
  s0 = s0 *d8
  s0 = s0 *d11
  s0 = s0 /x
  s0 = s0 +x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


Surreal (XAXIS) {
  z = c = pixel:
  z = z * (fn1(c^2)/fn2(c^2))/c + (1/z)
  |z| <= 4
  ;SOURCE: surreal.frm
}


sushi {; Giuseppe Zito
  z = pixel
  c2 = -0.001036
  c4 = 0.029279
  c6 = -0.034425
  c12 = -0.431847
  c15 = -0.860962
  c19 = -0.503934
  c22 = 0.346487
  d0 = -0.815432
  d8 = 0.053317
  : 
  x = real(z), y = imag(z)
  s0 = x
  s0 = s0 +y
  s1 =c2
  s1 = s1 /y
  s1 = s1 -c4
  s1 = s1 -c6
  s0 = s0 *s1
  s0 = s0 +x
  s0 = s0 /x
  s0 = s0 -x
  s0 = s0 *c12
  s0 = s0 *c15
  s0 = s0 +y
  s0 = s0 -c19
  s0 = s0 +x
  s0 = s0 +c22
  newx = s0 
  s0 =d0
  s0 = s0 *x
  s0 = s0 /x
  s0 = s0 +d8
  s0 = s0 -x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


Sutra {
  z = pixel + p1:
  r = tan((1/z) + 1)
  z = fn1(z * r)/fn2(r) 
  |z| < 4
  ;SOURCE: shakti.frm
}


Swine {
  z = c = pixel:
  z = tan(1/z) 
  r = z * (e/z) + p1
  z = fn1(z) * fn2(r)
  |z| < 4
  ;SOURCE: big_pig.frm
}


swirl5_J {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=0.74546, b0=-0.45909, c0=0.40606, d0=0.88712
  a1=-0.42424, b1=-0.06515, c1=-0.17576, d1=-0.21818
  al0=0.84773, k0=-1.61271, l0=0.07780
  al1=0.08111, k1=0.39196, l1=2.19046
  z=pixel:
  x=real(z)
  y=imag(z)
  o0=(d0*x-b0*y+k0)/al0+flip((-c0*x+a0*y+l0)/al0)
  op0=|o0-p2|
  o1=(d1*x-b1*y+k1)/al1+flip((-c1*x+a1*y+l1)/al1)
  op1=|o1-p2|
  IF (op0<=op1)
    z=o0
  ELSE
    z=o1
  ENDIF
  |z|<=p1
  ;SOURCE: ifsinv.frm
}


swirl5_M {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=0.74546, b0=-0.45909, c0=0.40606, d0=0.88712
  a1=-0.42424, b1=-0.06515, c1=-0.17576, d1=-0.21818
  al0=0.84773, k0=-1.61271, l0=0.07780
  al1=0.08111, k1=0.39196, l1=2.19046
  z=pixel:
  x=real(z)
  y=imag(z)
  o0=(d0*x-b0*y+k0)/al0+flip((-c0*x+a0*y+l0)/al0)
  op0=|o0-pixel|
  o1=(d1*x-b1*y+k1)/al1+flip((-c1*x+a1*y+l1)/al1)
  op1=|o1-pixel|
  IF (op0<=op1)
    z=o0
  ELSE
    z=o1
  ENDIF
  |z|<=p1
  ;SOURCE: ifsinv.frm
}


Sylac { 
   ; Any comments or question?
   ; E-Mail: Damion_P@Compuserve.com  -or- MDROCC@earthlink.net
  c1 = flip(1/pixel), c2 = conj(1/pixel), z = c = pixel:
  r = ((fn1(z)* c1) * z) + p1
  q = ((fn2(z)* c2) * z + c) + p2
  z = (q * (whitesq == 0)) + (r * (whitesq == 1))
  |z| <= 4 
  ;SOURCE: pablo.frm
}


sym-A {; Non-symmetrical fractal
  z = c = pixel, k = (2.5,0.5):
  z = z^k + c
  |z| < 4
  ;SOURCE: frmtutor.frm
}


sym-B (xaxis) {; Sym-A with symmetry declared in error
  z = c = pixel, k = (2.5,0.5):
  z = z^k + c
  |z| < 4
  ;SOURCE: frmtutor.frm
}


SymmIcon {
  z = P1
  x = P2
  bar = (1,-1)
  l = real(P1)
  a = imag(P2)
  b = .2
  g = .1
  w = 0
  n = 5:
  zbar = z*bar
  z=((l+(a*z*zbar)+(b*real(z^n))+(w*i))*z)+g*(zbar^(n-1))+pixel
  ;SOURCE: symmic.frm
}


SymmIconFix {; Darell Shaffer [76040,2017]
   ; Fix by Jonathan Osuch [73277,1432]
  z = P1, x = P2
  l = real(P1), a = imag(P2)
  b = .2, g = .1, w = 0, n = 5:
  zbar = conj(z)
  z=((l+(a*z*zbar)+(b*real(z^n))+(w*i))*z)+g*(zbar^(n-1))+pixel
  ;SOURCE: fract003.frm
}


SZZCHZ (xaxis) {; Jm Collard-Richard - Use FLOAT=YES
                ; Resol : sin(z)+z^z=cosh(z)
  z=pixel:
  s=sin(z)
  c=cos(z)
  zz=z^z
  sz=sinh(z)
  cz=cosh(z)
  z1=s+zz-cz
  z2=c+(log(z)+1)*zz-sz
  z=z-(z1/z2)
  0.001<=|z1| 
  ;SOURCE: jmcr2.frm
}


SZZS (XAXIS) {; Jm Collard-Richard
              ; float=yes
  z=pixel:
  sz=sin(z)^z
  zs=z^sin(z)
  z1=sz-zs
  z2=(log(sin(z))+z*(cos(z)/sin(z)))*sz-(cos(z)*log(z)+sin(z)/z)*zs
  z=z-(z1/z2)
  0.001<=|z1| 
  ;SOURCE: jmcr2.frm
}

