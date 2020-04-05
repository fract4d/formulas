

C {
  z=pixel 
  c=3.141592653589793:
  z = log(c*pixel*z) + z 
  |z| <= 50
  ;SOURCE: hubert.frm
}


C02-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (Euler method)
        ;
        ; C(n+1) = xC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = x
        ;
        ; = zC01-C00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*x-2
  Ty=y*y-2
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


C02-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; Chebyshev Types:
                 ; Inspired by Clifford A. Pickover:
                 ; Dynamic
                 ;
                 ; C(n+1) = xC(n)-C(n-1)
                 ; C(0)  = 2
                 ; C(1)  = x
                 ;
                 ; = zC01-C00
  bailout=p1+4, z=pixel:
  z=z*z-2
  |z|<=bailout
  ;SOURCE: chby2.frm
}


C02-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Julia)
        ;
        ; C(n+1) = xC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = x
        ;
        ; = zC01-C00
  const=p1, z=pixel:
  z=z*z-2+const
  |z|<100
  ;SOURCE: chby3.frm
}


C02-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Mandelbrot)
        ;
        ; C(n+1) = xC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = x
        ;
        ; = zC01-C00
  const=pixel, z=p1:
  z=z*z-2+const
  |z|<100
  ;SOURCE: chby4.frm
}


C02-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Newton Method
        ;
        ; C(n+1) = zC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = z
        ;
        ; = zC01-C00
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*z-2
  fd=2*z
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


C02-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Halley Method
        ;
        ; C(n+1) = zC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = z
        ;
        ; = zC01-C00
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*z-2
  fd=z+z
  fdd=2
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


C02-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; Chebyshev Types:
                 ; Inspired by Bradley Beacham
                 ; Cubic Method
                 ;
                 ; C(n+1) = zC(n)-C(n-1)
                 ; C(0)  = 2
                 ; C(1)  = z
                 ;
                 ; = zC01-C00
  bailout=real(p2)/10000, z=pixel:
  f=z*z-2
  fd=z+z
  oz=z
  w=z-f/fd
  fw=w*w-2
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


C02-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler method)
        ;
        ; C(n+1) = xC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = x
        ;
        ; = zC01-C00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(x*x-2)
  Ty=sin(y*y-2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


C02-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler Method)
        ;
        ; C(n+1) = xC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = x
        ;
        ; = zC01-C00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*x-2)
  Ty=fn1(y*y-2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


C02-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Mike Wareman:
        ; Secant Method
        ;
        ; C(n+1) = zC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = z
        ;
        ; = zC01-C00
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*p1-2:
  zt=z
  foz=fz
  fz=z*z-2
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


C02-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Julia)
        ;
        ; C(n+1) = xC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = x
        ;
        ; = zC01-C00
  const=p1, z=pixel:
  z=(z*z-2)*const
  |z|<100
  ;SOURCE: chby11.frm
}


C02-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Mandelbrot)
        ;
        ; C(n+1) = xC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = x
        ;
        ; = zC01-C00
  const=pixel, z=p1:
  z=(z*z-2)*const
  |z|<100
  ;SOURCE: chby12.frm
}


C02-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Halley Method with weird bailout test
        ;
        ; C(n+1) = zC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = z
        ;
        ; = zC01-C00
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*z-2
  fd=2*z
  fdd=2
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


C02-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; Chebyshev Types:
                 ; Inspired by Bradley Beacham
                 ; Cubic Method with weird bailout test
                 ;
                 ; C(n+1) = zC(n)-C(n-1)
                 ; C(0)  = 2
                 ; C(1)  = z
                 ;
                 ; = zC01-C00
  bailout=real(p2)/10000, z=pixel:
  f=z*z-2
  fd=z+z
  oz=z
  w=z-f/fd
  fw=w*w-2
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


C02-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Newton Method with weird bailout test
        ;
        ; C(n+1) = zC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = z
        ;
        ; = zC01-C00
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*z-2
  fd=2*z
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


C02-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Mike Wareman:
        ; Secant Method with weird bailout test
        ;
        ; C(n+1) = zC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = z
        ;
        ; = zC01-C00
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*p1-2:
  zt=z
  foz=fz
  fz=z*z-2
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


C02-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Mike Wareman
        ; Secant Method with Girvan perturbations and weird bailout test
        ;
        ; C(n+1) = zC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = z
        ;
        ; = zC01-C00
  z=pixel, oz=0
  fz=-2
  zt=fn1(z)+p1:
  foz=fz
  fz=z*z-2
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


C02-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Mike Wareman
        ; Secant Method with Girvan perturbations and weird bailout test
        ;
        ; C(n+1) = zC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = z
        ;
        ; = zC01-C00
  z=pixel, oz=0
  fz=-2
  zt=fn1(z)+p1:
  foz=fz
  fz=z*z-2
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


C02-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (Implicit Euler method)
        ;
        ; C(n+1) = xC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = x
        ;
        ; = zC01-C00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(x*x-2)
  x=x-t*(y*y-2)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


C02-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler method)
        ;
        ; C(n+1) = xC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = x
        ;
        ; = zC01-C00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(x*x-2)
  x=x-t*sin(y*y-2)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


C02-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler method)
        ;
        ; C(n+1) = xC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = x
        ;
        ; = zC01-C00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*x-2))
  x=x-t*(fn1(y*y-2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


C02-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler method)
        ;
        ; C(n+1) = xC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = x
        ;
        ; = zC01-C00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*x-2)
  Ty=fn2(y*y-2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


C02-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler method)
        ;
        ; C(n+1) = xC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = x
        ;
        ; = zC01-C00
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(x*x-2)
  Ty=fn2(y*y-2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


C02-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler Method)
        ;
        ; C(n+1) = xC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = x
        ;
        ; = zC01-C00
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*x-2))
  x=x-t*(fn2(y*y-2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


C02-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler Method)
        ;
        ; C(n+1) = xC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = x
        ;
        ; = zC01-C00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*x-2))
  x=x-t*(fn2(y*y-2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


C02-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Kathy Roth:
        ; Dynamic (modified implicit Euler Method, gravitated)
        ;
        ; Chebyshev polynomials
        ; C[0] = 2
        ; C[1] = z
        ; C[n+1] = zC[n]-C[n-1]
        ;
        ; = zC01-C00
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(x*x-2))
  Ty=(fn1(y*y-2))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


C02-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Kathy Roth:
        ; Dynamic (modified implicit Euler Method, popped)
        ;
        ; Chebyshev polynomials
        ; C[0] = 2
        ; C[1] = z
        ; C[n+1] = zC[n]-C[n-1]
        ;
        ; = zC01-C00
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(x*x-2))
  Ty=(fn1(y*y-2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


C02-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Kathy Roth:
        ; Dynamic (modified implicit Euler Method, popped)
        ;
        ; Chebyshev polynomials
        ; C[0] = 2
        ; C[1] = z
        ; C[n+1] = zC[n]-C[n-1]
        ;
        ; = zC01-C00
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(x*x-2))
  Ty=(fn1(y*y-2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


C02-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler method, Sylvie Gallet test)
        ;
        ; Chebyshev polynomials
        ; C[0] = 2
        ; C[1] = z
        ; C[n+1] = zC[n]-C[n-1]
        ;
        ; = zC01-C00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1(x*x-2))
  Ty=(fn1(y*y-2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


C02-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Ray Parracho:
        ; Regula-Falsi Method
        ;
        ; Chebyshev polynomials
        ; C[0] = 2
        ; C[1] = z
        ; C[n+1] = zC[n]-C[n-1]
        ;
        ; = zC01-C00
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*x0-2
  Fx1=x1*x1-2
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


C03-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(x*x-3)
  Ty=y*(y*y-3)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


C03-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC02-C01
  bailout=p1+4, z=pixel:
  z=z*(z*z-3)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


C03-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  const=p1, z=pixel:
  z=z*(z*z-3)+const
  |z|<100
  ;SOURCE: chby3.frm
}


C03-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  const=pixel, z=p1:
  z=z*(z*z-3)+const
  |z|<100
  ;SOURCE: chby4.frm
}


C03-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz-3)
  fd=3*zz-3
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


C03-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz-3)
  fd=3*zz-3
  fdd=6*z
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


C03-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC02-C01
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz-3)
  fd=3*zz-3
  oz=z
  w=z-f/fd
  fw=w*(w*w-3)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


C03-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(x*(x*x-3))
  Ty=sin(y*(y*y-3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


C03-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*x-3))
  Ty=fn1(y*(y*y-3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


C03-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(p1*p1-3):
  zt=z
  foz=fz
  fz=z*(z*z-3)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


C03-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  const=p1, z=pixel:
  z=z*(z*z-3)*const
  |z|<100
  ;SOURCE: chby11.frm
}


C03-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  const=pixel, z=p1:
  z=z*(z*z-3)*const
  |z|<100
  ;SOURCE: chby12.frm
}


C03-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz-3)
  fd=3*zz-3
  fdd=6*z
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


C03-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC02-C01
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz-3)
  fd=3*zz-3
  oz=z
  w=z-f/fd
  fw=w*(w*w-3)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


C03-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz-3)
  fd=3*zz-3
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


C03-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(p1*p1-3):
  zt=z
  foz=fz
  fz=z*(z*z-3)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


C03-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*z-3)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


C03-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*z-3)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


C03-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(x*(x*x-3))
  x=x-t*(y*(y*y-3))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


C03-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(x*(x*x-3))
  x=x-t*sin(y*(y*y-3))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


C03-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*x-3)))
  x=x-t*(fn1(y*(y*y-3)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


C03-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*x-3))
  Ty=fn2(y*(y*y-3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


C03-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*x-3))
  Ty=fn2(y*(y*y-3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


C03-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*x-3)))
  x=x-t*(fn2(y*(y*y-3)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


C03-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*x-3)))
  x=x-t*(fn2(y*(y*y-3)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


C03-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*x-3)))
  Ty=(fn1(y*(y*y-3)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


C03-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*x-3)))
  Ty=(fn1(y*(y*y-3)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


C03-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*x-3)))
  Ty=(fn1(y*(y*y-3)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout  
  ;SOURCE: chby28.frm
}


C03-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*x-3)))
  Ty=(fn1(y*(y*y-3)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


C03-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*x0-3)
  Fx1=x1*(x1*x1-3)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


C04-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=xx*(xx-4)+2
  Ty=yy*(yy-4)+2
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


C04-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC03-C02
  bailout=p1+4, z=pixel:
  zz=z*z
  z=zz*(zz-4)+2
  |z|<=bailout
  ;SOURCE: chby2.frm
}


C04-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  const=p1, z=pixel:
  zz=z*z
  z=zz*(zz-4)+2+const
  |z|<100
  ;SOURCE: chby3.frm
}


C04-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  const=pixel, z=p1:
  zz=z*z
  z=zz*(zz-4)+2+const
  |z|<100
  ;SOURCE: chby4.frm
}


C04-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz-4)+2
  fd=4*z*(zz-2)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


C04-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz-4)+2
  fd=4*z*(zz-2)
  fdd=4*(3*zz-2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


C04-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC03-C02
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz-4)+2
  fd=4*z*(zz-2)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww-4)+2
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


C04-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(xx*(xx-4)+2)
  Ty=sin(yy*(yy-4)+2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


C04-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx-4)+2)
  Ty=fn1(yy*(yy-4)+2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


C04-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz-4)+2:
  zz=z*z
  zt=z
  foz=fz
  fz=zz*(zz-4)+2
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


C04-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  const=p1, z=pixel:
  zz=z*z
  z=(zz*(zz-4)+2)*const
  |z|<100
  ;SOURCE: chby11.frm
}


C04-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  const=pixel, z=p1:
  zz=z*z
  z=(zz*(zz-4)+2)*const
  |z|<100
  ;SOURCE: chby12.frm
}


C04-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz-4)+2
  fd=4*z*(zz-2)
  fdd=4*(3*zz-2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


C04-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC03-C02
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz-4)+2
  fd=4*z*(zz-2)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww-4)+2
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


C04-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz-4)+2
  fd=4*z*(zz-2)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


C04-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz-4)+2:
  zz=z*z
  zt=z
  foz=fz
  fz=zz*(zz-4)+2
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


C04-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  z=pixel, oz=0
  fz=2
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=zz*(zz-4)+2
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


C04-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  z=pixel, oz=0
  fz=2
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=zz*(zz-4)+2
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


C04-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(xx*(xx-4)+2)
  yy=y*y
  x=x-t*(yy*(yy-4)+2)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


C04-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(xx*(xx-4)+2)
  yy=y*y
  x=x-t*sin(yy*(yy-4)+2)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


C04-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx-4)+2))
  yy=y*y
  x=x-t*(fn1(yy*(yy-4)+2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


C04-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx-4)+2)
  Ty=fn2(yy*(yy-4)+2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


C04-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx-4)+2)
  Ty=fn2(yy*(yy-4)+2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


C04-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx-4)+2))
  yy=y*y
  x=x-t*(fn2(yy*(yy-4)+2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


C04-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx-4)+2))
  yy=y*y
  x=x-t*(fn2(yy*(yy-4)+2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


C04-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(xx*(xx-4)+2))
  yy=y*y
  Ty=(fn1(yy*(yy-4)+2))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


C04-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(xx*(xx-4)+2))
  yy=y*y
  Ty=(fn1(yy*(yy-4)+2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


C04-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(xx*(xx-4)+2))
  yy=y*y
  Ty=(fn1(yy*(yy-4)+2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


C04-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(xx*(xx-4)+2))
  yy=y*y
  Ty=(fn1(yy*(yy-4)+2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


C04-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=xx*(xx-4)+2
  Fx1=yy*(yy-4)+2
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


C05-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=x*(xx*(xx-5)+3)
  Ty=y*(yy*(yy-5)+3)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


C05-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC04-C03
  bailout=p1+4, z=pixel:
  zz=z*z
  z=z*(zz*(zz-5)+3)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


C05-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  const=p1, z=pixel:
  zz=z*z
  z=z*(zz*(zz-5)+3)+const
  |z|<100
  ;SOURCE: chby3.frm
}


C05-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  const=pixel, z=p1:
  zz=z*z
  z=z*(zz*(zz-5)+3)+const
  |z|<100
  ;SOURCE: chby4.frm
}


C05-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz-5)+3)
  fd=5*zz*(zz-3)+3
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


C05-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz-5)+3)
  fd=5*zz*(zz-3)+3
  fdd=10*z*(zz+zz-3)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


C05-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC04-C03
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz-5)+3)
  fd=5*zz*(zz-3)+3
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(ww*(ww-5)+3)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


C05-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(x*(xx*(xx-5)+3))
  Ty=sin(y*(yy*(yy-5)+3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


C05-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(xx*(xx-5)+3))
  Ty=fn1(y*(yy*(yy-5)+3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


C05-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(zz*(zz-5)+3):
  zz=z*z
  zt=z
  foz=fz
  fz=z*(zz*(zz-5)+3)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


C05-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  const=p1, z=pixel:
  zz=z*z
  z=z*(zz*(zz-5)+3)*const
  |z|<100
  ;SOURCE: chby11.frm
}


C05-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  const=pixel, z=p1:
  zz=z*z
  z=z*(zz*(zz-5)+3)*const
  |z|<100
  ;SOURCE: chby12.frm
}


C05-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz-5)+3)
  fd=5*zz*(zz-3)+3
  fdd=10*z*(2*zz-3)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


C05-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC04-C03
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz-5)+3)
  fd=5*zz*(zz-3)+3
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(ww*(ww-5)+3)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


C05-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz-5)+3)
  fd=5*zz*(zz-3)+3
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


C05-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(zz*(zz-5)+3):
  zz=z*z
  zt=z
  foz=fz
  fz=z*(zz*(zz-5)+3)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


C05-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(zz*(zz-5)+3)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


C05-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(zz*(zz-5)+3)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


C05-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(x*(xx*(xx-5)+3))
  yy=y*y
  x=x-t*(y*(yy*(yy-5)+3))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


C05-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(x*(xx*(xx-5)+3))
  yy=y*y
  x=x-t*sin(y*(yy*(yy-5)+3))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


C05-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx-5)+3)))
  yy=y*y
  x=x-t*(fn1(y*(yy*(yy-5)+3)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


C05-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(xx*(xx-5)+3))
  Ty=fn2(y*(yy*(yy-5)+3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


C05-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(xx*(xx-5)+3))
  Ty=fn2(y*(yy*(yy-5)+3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


C05-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx-5)+3)))
  yy=y*y
  x=x-t*(fn2(y*(yy*(yy-5)+3)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


C05-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx-5)+3)))
  yy=y*y
  x=x-t*(fn2(y*(yy*(yy-5)+3)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


C05-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(x*(xx*(xx-5)+3)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy-5)+3)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


C05-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(x*(xx*(xx-5)+3)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy-5)+3)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


C05-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(x*(xx*(xx-5)+3)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy-5)+3)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


C05-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(x*(xx*(xx-5)+3)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy-5)+3)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


C05-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=x0*(xx*(xx-5)+3)
  Fx1=x1*(yy*(yy-5)+3)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


C06-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=xx*(xx*(xx-6)+7)-2
  Ty=yy*(yy*(yy-6)+7)-2
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


C06-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC05-C04
  bailout=p1+4, z=pixel:
  zz=z*z
  z=zz*(zz*(zz-6)+7)-2
  |z|<=bailout
  ;SOURCE: chby2.frm
}


C06-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  const=p1, z=pixel:
  zz=z*z
  z=zz*(zz*(zz-6)+7)-2+const
  |z|<100
  ;SOURCE: chby3.frm
}


C06-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  const=pixel, z=p1:
  zz=z*z
  z=zz*(zz*(zz-6)+7)-2+const
  |z|<100
  ;SOURCE: chby4.frm
}


C06-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz-6)+7)-2
  fd=2*z*(3*zz*(zz-4)+7)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


C06-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz-6)+7)-2
  fd=(z+z)*(3*zz*(zz-4)+7)
  fdd=6*zz*(5*zz-12)+14
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


C06-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC05-C04
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz-6)+7)-2
  fd=(z+z)*(3*zz*(zz-4)+7)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww*(ww-6)+7)-2
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


C06-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(xx*(xx*(xx-6)+7)-2)
  Ty=sin(yy*(yy*(yy-6)+7)-2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


C06-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx*(xx-6)+7)-2)
  Ty=fn1(yy*(yy*(yy-6)+7)-2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


C06-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz*(zz-6)+7)-2:
  zz=z*z
  zt=z
  foz=fz
  fz=zz*(zz*(zz-6)+7)-2
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


C06-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  const=p1, z=pixel:
  zz=z*z
  z=(zz*(zz*(zz-6)+7)-2)*const
  |z|<100
  ;SOURCE: chby11.frm
}


C06-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  const=pixel, z=p1:
  zz=z*z
  z=(zz*(zz*(zz-6)+7)-2)*const
  |z|<100
  ;SOURCE: chby12.frm
}


C06-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz-6)+7)-2
  fd=2*z*(3*zz*(zz-4)+7)
  fdd=6*zz*(5*zz-12)+14
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


C06-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC05-C04
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz-6)+7)-2
  fd=(z+z)*(3*zz*(zz-4)+7)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww*(ww-6)+7)-2
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


C06-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz-6)+7)-2
  fd=2*z*(3*zz*(zz-4)+7)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


C06-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz*(zz-6)+7)-2:
  zz=z*z
  zt=z
  foz=fz
  fz=zz*(zz*(zz-6)+7)-2
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


C06-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  z=pixel, oz=0
  fz=-2
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=zz*(zz*(zz-6)+7)-2
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


C06-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  z=pixel, oz=0
  fz=-2
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=zz*(zz*(zz-6)+7)-2
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


C06-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(xx*(xx*(xx-6)+7)-2)
  yy=y*y
  x=x-t*(yy*(yy*(yy-6)+7)-2)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


C06-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(xx*(xx*(xx-6)+7)-2)
  yy=y*y
  x=x-t*sin(yy*(yy*(yy-6)+7)-2)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


C06-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx-6)+7)-2))
  yy=y*y
  x=x-t*(fn1(yy*(yy*(yy-6)+7)-2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


C06-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx*(xx-6)+7)-2)
  Ty=fn2(yy*(yy*(yy-6)+7)-2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


C06-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx*(xx-6)+7)-2)
  Ty=fn2(yy*(yy*(yy-6)+7)-2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


C06-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx-6)+7)-2))
  yy=y*y
  x=x-t*(fn2(yy*(yy*(yy-6)+7)-2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


C06-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx-6)+7)-2))
  yy=y*y
  x=x-t*(fn2(yy*(yy*(yy-6)+7)-2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


C06-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(xx*(xx*(xx-6)+7)-2))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy-6)+7)-2))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


C06-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(xx*(xx*(xx-6)+7)-2))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy-6)+7)-2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


C06-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(xx*(xx*(xx-6)+7)-2))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy-6)+7)-2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


C06-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(xx*(xx*(xx-6)+7)-2))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy-6)+7)-2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


C06-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=xx*(xx*(xx-6)+7)-2
  Fx1=yy*(yy*(yy-6)+7)-2
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


C07-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=x*(xx*(xx*(xx-7)+12)-5)
  Ty=y*(yy*(yy*(yy-7)+12)-5)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


C07-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC06-C05
  bailout=p1+4, z=pixel:
  zz=z*z
  z=z*(zz*(zz*(zz-7)+12)-5)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


C07-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  const=p1, z=pixel:
  zz=z*z
  z=z*(zz*(zz*(zz-7)+12)-5)+const
  |z|<100
  ;SOURCE: chby3.frm
}


C07-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  const=pixel, z=p1:
  zz=z*z
  z=z*(zz*(zz*(zz-7)+12)-5)+const
  |z|<100
  ;SOURCE: chby4.frm
}


C07-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz-7)+12)-5)
  fd=zz*(7*zz*(zz-5)+36)-5
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


C07-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz-7)+12)-5)
  fd=zz*(7*zz*(zz-5)+36)-5
  fdd=(z+z)*(7*zz*(3*zz-10)+36)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


C07-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC06-C05
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz-7)+12)-5)
  fd=zz*(7*zz*(zz-5)+36)-5
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(ww*(ww*(ww-7)+12)-5)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


C07-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(x*(xx*(xx*(xx-7)+12)-5))
  Ty=sin(y*(yy*(yy*(yy-7)+12)-5))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


C07-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(xx*(xx*(xx-7)+12)-5))
  Ty=fn1(y*(yy*(yy*(yy-7)+12)-5))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


C07-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(zz*(zz*(zz-7)+12)-5):
  zz=z*z
  zt=z
  foz=fz
  fz=z*(zz*(zz*(zz-7)+12)-5)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


C07-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  const=p1, z=pixel:
  zz=z*z
  z=z*(zz*(zz*(zz-7)+12)-5)*const
  |z|<100
  ;SOURCE: chby11.frm
}


C07-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  const=pixel, z=p1:
  zz=z*z
  z=z*(zz*(zz*(zz-7)+12)-5)*const
  |z|<100
  ;SOURCE: chby12.frm
}


C07-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz-7)+12)-5)
  fd=zz*(7*zz*(zz-5)+36)-5
  fdd=2*z*(7*zz*(3*zz-10)+36)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


C07-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC06-C05
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz-7)+12)-5)
  fd=zz*(7*zz*(zz-5)+36)-5
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(ww*(ww*(ww-7)+12)-5)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


C07-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz-7)+12)-5)
  fd=zz*(7*zz*(zz-5)+36)-5
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


C07-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(zz*(zz*(zz-7)+12)-5):
  zz=z*z
  zt=z
  foz=fz
  fz=z*(zz*(zz*(zz-7)+12)-5)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


C07-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(zz*(zz*(zz-7)+12)-5)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


C07-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(zz*(zz*(zz-7)+12)-5)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


C07-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(x*(xx*(xx*(xx-7)+12)-5))
  yy=y*y
  x=x-t*(y*(yy*(yy*(yy-7)+12)-5))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


C07-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(x*(xx*(xx*(xx-7)+12)-5))
  yy=y*y
  x=x-t*sin(y*(yy*(yy*(yy-7)+12)-5))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


C07-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx*(xx-7)+12)-5)))
  yy=y*y
  x=x-t*(fn1(y*(yy*(yy*(yy-7)+12)-5)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


C07-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(xx*(xx*(xx-7)+12)-5))
  Ty=fn2(y*(yy*(yy*(yy-7)+12)-5))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


C07-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(xx*(xx*(xx-7)+12)-5))
  Ty=fn2(y*(yy*(yy*(yy-7)+12)-5))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


C07-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx*(xx-7)+12)-5)))
  yy=y*y
  x=x-t*(fn2(y*(yy*(yy*(yy-7)+12)-5)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


C07-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx*(xx-7)+12)-5)))
  yy=y*y
  x=x-t*(fn2(y*(yy*(yy*(yy-7)+12)-5)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


C07-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(x*(xx*(xx*(xx-7)+12)-5)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy*(yy-7)+12)-5)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


C07-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(x*(xx*(xx*(xx-7)+12)-5)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy*(yy-7)+12)-5)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


C07-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(x*(xx*(xx*(xx-7)+12)-5)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy*(yy-7)+12)-5)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


C07-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(x*(xx*(xx*(xx-7)+12)-5)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy*(yy-7)+12)-5)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


C07-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=x0*(xx*(xx*(xx-7)+12)-5)
  Fx1=x1*(yy*(yy*(yy-7)+12)-5)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


C08-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=xx*(xx*(xx*(xx-8)+18)-12)+2
  Ty=yy*(yy*(yy*(yy-8)+18)-12)+2
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


C08-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC07-C06
  bailout=p1+4, z=pixel:
  zz=z*z
  z=zz*(zz*(zz*(zz-8)+18)-12)+2
  |z|<=bailout
  ;SOURCE: chby2.frm
}


C08-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  const=p1, z=pixel:
  zz=z*z
  z=zz*(zz*(zz*(zz-8)+18)-12)+2+const
  |z|<100
  ;SOURCE: chby3.frm
}


C08-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  const=pixel, z=p1:
  zz=z*z
  z=zz*(zz*(zz*(zz-8)+18)-12)+2+const
  |z|<100
  ;SOURCE: chby4.frm
}


C08-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz-8)+18)-12)+2
  fd=8*z*(zz*(zz*(zz-6)+9)-3)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


C08-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz-8)+18)-12)+2
  fd=8*z*(zz*(zz*(zz-6)+9)-3)
  fdd=8*(zz*(zz*(7*zz-30)+27)-3)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


C08-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC07-C06
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz-8)+18)-12)+2
  fd=8*z*(zz*(zz*(zz-6)+9)-3)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww*(ww*(ww-8)+18)-12)+2
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


C08-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(xx*(xx*(xx*(xx-8)+18)-12)+2)
  Ty=sin(yy*(yy*(yy*(yy-8)+18)-12)+2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


C08-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx*(xx*(xx-8)+18)-12)+2)
  Ty=fn1(yy*(yy*(yy*(yy-8)+18)-12)+2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


C08-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz*(zz*(zz-8)+18)-12)+2:
  zz=z*z
  zt=z
  foz=fz
  fz=zz*(zz*(zz*(zz-8)+18)-12)+2
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


C08-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  const=p1, z=pixel:
  zz=z*z
  z=(zz*(zz*(zz*(zz-8)+18)-12)+2)*const
  |z|<100
  ;SOURCE: chby11.frm
}


C08-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  const=pixel, z=p1:
  zz=z*z
  z=(zz*(zz*(zz*(zz-8)+18)-12)+2)*const
  |z|<100
  ;SOURCE: chby12.frm
}


C08-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz-8)+18)-12)+2
  fd=8*z*(zz*(zz*(zz-6)+9)-3)
  fdd=8*(zz*(zz*(7*zz-30)+27)-3)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


C08-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC07-C06
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz-8)+18)-12)+2
  fd=8*z*(zz*(zz*(zz-6)+9)-3)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww*(ww*(ww-8)+18)-12)+2
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


C08-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz-8)+18)-12)+2
  fd=8*z*(zz*(zz*(zz-6)+9)-3)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


C08-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz*(zz*(zz-8)+18)-12)+2:
  zz=z*z
  zt=z
  foz=fz
  fz=zz*(zz*(zz*(zz-8)+18)-12)+2
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


C08-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  z=pixel, oz=0
  fz=2
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=zz*(zz*(zz*(zz-8)+18)-12)+2
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


C08-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  z=pixel, oz=0
  fz=2
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=zz*(zz*(zz*(zz-8)+18)-12)+2
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


C08-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(xx*(xx*(xx*(xx-8)+18)-12)+2)
  yy=y*y
  x=x-t*(yy*(yy*(yy*(yy-8)+18)-12)+2)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


C08-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(xx*(xx*(xx*(xx-8)+18)-12)+2)
  yy=y*y
  x=x-t*sin(yy*(yy*(yy*(yy-8)+18)-12)+2)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


C08-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx*(xx-8)+18)-12)+2))
  yy=y*y
  x=x-t*(fn1(yy*(yy*(yy*(yy-8)+18)-12)+2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


C08-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx*(xx*(xx-8)+18)-12)+2)
  Ty=fn2(yy*(yy*(yy*(yy-8)+18)-12)+2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


C08-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx*(xx*(xx-8)+18)-12)+2)
  Ty=fn2(yy*(yy*(yy*(yy-8)+18)-12)+2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


C08-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx*(xx-8)+18)-12)+2))
  yy=y*y
  x=x-t*(fn2(yy*(yy*(yy*(yy-8)+18)-12)+2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


C08-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx*(xx-8)+18)-12)+2))
  yy=y*y
  x=x-t*(fn2(yy*(yy*(yy*(yy-8)+18)-12)+2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


C08-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(xx*(xx*(xx*(xx-8)+18)-12)+2))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy*(yy-8)+18)-12)+2))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


C08-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(xx*(xx*(xx*(xx-8)+18)-12)+2))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy*(yy-8)+18)-12)+2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


C08-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(xx*(xx*(xx*(xx-8)+18)-12)+2))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy*(yy-8)+18)-12)+2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


C08-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(xx*(xx*(xx*(xx-8)+18)-12)+2))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy*(yy-8)+18)-12)+2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


C08-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=xx*(xx*(xx*(xx-8)+18)-12)+2
  Fx1=yy*(yy*(yy*(yy-8)+18)-12)+2
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


C09-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=x*(xx*(xx*(xx*(xx-9)+25)-24)+7)
  Ty=y*(yy*(yy*(yy*(yy-9)+25)-24)+7)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


C09-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC08-C07
  bailout=p1+4, z=pixel:
  zz=z*z
  z=z*(zz*(zz*(zz*(zz-9)+25)-24)+7)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


C09-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  const=p1, z=pixel:
  zz=z*z
  z=z*(zz*(zz*(zz*(zz-9)+25)-24)+7)+const
  |z|<100
  ;SOURCE: chby3.frm
}


C09-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  const=pixel, z=p1:
  zz=z*z
  z=z*(zz*(zz*(zz*(zz-9)+25)-24)+7)+const
  |z|<100
  ;SOURCE: chby4.frm
}


C09-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz*(zz-9)+25)-24)+7)
  fd=zz*(zz*(9*zz*(zz-7)+125)-72)+7
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


C09-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz*(zz-9)+25)-24)+7)
  fd=zz*(zz*(9*zz*(zz-7)+125)-72)+7
  fdd=(z+z)*(zz*(9*zz*(4*zz-21)+250)-72)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


C09-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC08-C07
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz*(zz-9)+25)-24)+7)
  fd=zz*(zz*(9*zz*(zz-7)+125)-72)+7
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(ww*(ww*(ww*(ww-9)+25)-24)+7)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


C09-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(x*(xx*(xx*(xx*(xx-9)+25)-24)+7))
  Ty=sin(y*(yy*(yy*(yy*(yy-9)+25)-24)+7))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


C09-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(xx*(xx*(xx*(xx-9)+25)-24)+7))
  Ty=fn1(y*(yy*(yy*(yy*(yy-9)+25)-24)+7))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


C09-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(zz*(zz*(zz*(zz-9)+25)-24)+7):
  zz=z*z
  zt=z
  foz=fz
  fz=z*(zz*(zz*(zz*(zz-9)+25)-24)+7)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


C09-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  const=p1, z=pixel:
  zz=z*z
  z=z*(zz*(zz*(zz*(zz-9)+25)-24)+7)*const
  |z|<100
  ;SOURCE: chby11.frm
}


C09-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  const=pixel, z=p1:
  zz=z*z
  z=z*(zz*(zz*(zz*(zz-9)+25)-24)+7)*const
  |z|<100
  ;SOURCE: chby12.frm
}


C09-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz*(zz-9)+25)-24)+7)
  fd=zz*(zz*(9*zz*(zz-7)+125)-72)+7
  fdd=2*z*(zz*(9*zz*(4*zz-21)+250)-72)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


C09-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC08-C07
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz*(zz-9)+25)-24)+7)
  fd=zz*(zz*(9*zz*(zz-7)+125)-72)+7
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(ww*(ww*(ww*(ww-9)+25)-24)+7)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


C09-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz*(zz-9)+25)-24)+7)
  fd=zz*(zz*(9*zz*(zz-7)+125)-72)+7
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


C09-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(zz*(zz*(zz*(zz-9)+25)-24)+7):
  zz=z*z
  zt=z
  foz=fz
  fz=z*(zz*(zz*(zz*(zz-9)+25)-24)+7)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


C09-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(zz*(zz*(zz*(zz-9)+25)-24)+7)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


C09-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(zz*(zz*(zz*(zz-9)+25)-24)+7)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


C09-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(x*(xx*(xx*(xx*(xx-9)+25)-24)+7))
  yy=y*y
  x=x-t*(y*(yy*(yy*(yy*(yy-9)+25)-24)+7))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


C09-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(x*(xx*(xx*(xx*(xx-9)+25)-24)+7))
  yy=y*y
  x=x-t*sin(y*(yy*(yy*(yy*(yy-9)+25)-24)+7))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


C09-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx*(xx*(xx-9)+25)-24)+7)))
  yy=y*y
  x=x-t*(fn1(y*(yy*(yy*(yy*(yy-9)+25)-24)+7)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


C09-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(xx*(xx*(xx*(xx-9)+25)-24)+7))
  Ty=fn2(y*(yy*(yy*(yy*(yy-9)+25)-24)+7))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


C09-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(xx*(xx*(xx*(xx-9)+25)-24)+7))
  Ty=fn2(y*(yy*(yy*(yy*(yy-9)+25)-24)+7))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


C09-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx*(xx*(xx-9)+25)-24)+7)))
  yy=y*y
  x=x-t*(fn2(y*(yy*(yy*(yy*(yy-9)+25)-24)+7)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


C09-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx*(xx*(xx-9)+25)-24)+7)))
  yy=y*y
  x=x-t*(fn2(y*(yy*(yy*(yy*(yy-9)+25)-24)+7)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


C09-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(x*(xx*(xx*(xx*(xx-9)+25)-24)+7)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy*(yy*(yy-9)+25)-24)+7)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


C09-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(x*(xx*(xx*(xx*(xx-9)+25)-24)+7)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy*(yy*(yy-9)+25)-24)+7)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


C09-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(x*(xx*(xx*(xx*(xx-9)+25)-24)+7)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy*(yy*(yy-9)+25)-24)+7)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


C09-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(x*(xx*(xx*(xx*(xx-9)+25)-24)+7)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy*(yy*(yy-9)+25)-24)+7)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


C09-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=x0*(xx*(xx*(xx*(xx-9)+25)-24)+7)
  Fx1=x1*(yy*(yy*(yy*(yy-9)+25)-24)+7)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


C10-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=xx*(xx*(xx*(xx*(xx-10)+33)-42)+19)-2
  Ty=yy*(yy*(yy*(yy*(yy-10)+33)-42)+19)-2
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


C10-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC09-C08
  bailout=p1+4, z=pixel:
  zz=z*z
  z=zz*(zz*(zz*(zz*(zz-10)+33)-42)+19)-2
  |z|<=bailout
  ;SOURCE: chby2.frm
}


C10-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  const=p1, z=pixel:
  zz=z*z
  z=zz*(zz*(zz*(zz*(zz-10)+33)-42)+19)-2+const
  |z|<100
  ;SOURCE: chby3.frm
}


C10-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  const=pixel, z=p1:
  zz=z*z
  z=zz*(zz*(zz*(zz*(zz-10)+33)-42)+19)-2+const
  |z|<100
  ;SOURCE: chby4.frm
}


C10-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz*(zz-10)+33)-42)+19)-2
  fd=2*z*(zz*(zz*(5*zz*(zz-8)+99)-84)+19)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


C10-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz*(zz-10)+33)-42)+19)-2
  fd=(z+z)*(zz*(zz*(5*zz*(zz-8)+99)-84)+19)
  fdd=(zz+zz)*(5*zz*(zz*(9*zz-56)+99)-252)+38
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


C10-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC09-C08
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz*(zz-10)+33)-42)+19)-2
  fd=(z+z)*(zz*(zz*(5*zz*(zz-8)+99)-84)+19)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww*(ww*(ww*(ww-10)+33)-42)+19)-2
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


C10-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(xx*(xx*(xx*(xx*(xx-10)+33)-42)+19)-2)
  Ty=sin(yy*(yy*(yy*(yy*(yy-10)+33)-42)+19)-2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


C10-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx*(xx*(xx*(xx-10)+33)-42)+19)-2)
  Ty=fn1(yy*(yy*(yy*(yy*(yy-10)+33)-42)+19)-2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


C10-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz*(zz*(zz*(zz-10)+33)-42)+19)-2:
  zz=z*z
  zt=z
  foz=fz
  fz=zz*(zz*(zz*(zz*(zz-10)+33)-42)+19)-2
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


C10-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  const=p1, z=pixel:
  zz=z*z
  z=(zz*(zz*(zz*(zz*(zz-10)+33)-42)+19)-2)*const
  |z|<100
  ;SOURCE: chby11.frm
}


C10-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  const=pixel, z=p1:
  zz=z*z
  z=(zz*(zz*(zz*(zz*(zz-10)+33)-42)+19)-2)*const
  |z|<100
  ;SOURCE: chby12.frm
}


C10-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz*(zz-10)+33)-42)+19)-2
  fd=2*z*(zz*(zz*(5*zz*(zz-8)+99)-84)+19)
  fdd=2*zz*(5*zz*(zz*(9*zz-56)+99)-252)+38
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


C10-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC09-C08
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz*(zz-10)+33)-42)+19)-2
  fd=(z+z)*(zz*(zz*(5*zz*(zz-8)+99)-84)+19)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww*(ww*(ww*(ww-10)+33)-42)+19)-2
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


C10-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz*(zz-10)+33)-42)+19)-2
  fd=2*z*(zz*(zz*(5*zz*(zz-8)+99)-84)+19)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


C10-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz*(zz*(zz*(zz-10)+33)-42)+19)-2:
  zz=z*z
  zt=z
  foz=fz
  fz=zz*(zz*(zz*(zz*(zz-10)+33)-42)+19)-2
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


C10-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  z=pixel, oz=0
  fz=-2
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=zz*(zz*(zz*(zz*(zz-10)+33)-42)+19)-2
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


C10-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  z=pixel, oz=0
  fz=-2
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=zz*(zz*(zz*(zz*(zz-10)+33)-42)+19)-2
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


C10-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(xx*(xx*(xx*(xx*(xx-10)+33)-42)+19)-2)
  yy=y*y
  x=x-t*(yy*(yy*(yy*(yy*(yy-10)+33)-42)+19)-2)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


C10-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(xx*(xx*(xx*(xx*(xx-10)+33)-42)+19)-2)
  yy=y*y
  x=x-t*sin(yy*(yy*(yy*(yy*(yy-10)+33)-42)+19)-2)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


C10-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx*(xx*(xx-10)+33)-42)+19)-2))
  yy=y*y
  x=x-t*(fn1(yy*(yy*(yy*(yy*(yy-10)+33)-42)+19)-2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


C10-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx*(xx*(xx*(xx-10)+33)-42)+19)-2)
  Ty=fn2(yy*(yy*(yy*(yy*(yy-10)+33)-42)+19)-2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


C10-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx*(xx*(xx*(xx-10)+33)-42)+19)-2)
  Ty=fn2(yy*(yy*(yy*(yy*(yy-10)+33)-42)+19)-2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


C10-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx*(xx*(xx-10)+33)-42)+19)-2))
  yy=y*y
  x=x-t*(fn2(yy*(yy*(yy*(yy*(yy-10)+33)-42)+19)-2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


C10-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx*(xx*(xx-10)+33)-42)+19)-2))
  yy=y*y
  x=x-t*(fn2(yy*(yy*(yy*(yy*(yy-10)+33)-42)+19)-2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


C10-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(xx*(xx*(xx*(xx*(xx-10)+33)-42)+19)-2))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy*(yy*(yy-10)+33)-42)+19)-2))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


C10-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(xx*(xx*(xx*(xx*(xx-10)+33)-42)+19)-2))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy*(yy*(yy-10)+33)-42)+19)-2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


C10-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(xx*(xx*(xx*(xx*(xx-10)+33)-42)+19)-2))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy*(yy*(yy-10)+33)-42)+19)-2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


C10-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(xx*(xx*(xx*(xx*(xx-10)+33)-42)+19)-2))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy*(yy*(yy-10)+33)-42)+19)-2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


C10-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=xx*(xx*(xx*(xx*(xx-10)+33)-42)+19)-2
  Fx1=yy*(yy*(yy*(yy*(yy-10)+33)-42)+19)-2
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


c3 {
  z=pixel, f=(fn2(fn1(z-1/pixel))):
  z=fn3(z/exp(z+1))*fn4(f)+c
  |z|<4
  ;SOURCE: ad1.frm
}


c5 {
  z=pixel, x=fn3(1/z+1), y=fn4(1/z-1):
  z=(fn1(z/x)*fn2(z/y))+c
  |z|<4
  ;SOURCE: ad1.frm
}


c7manderiv {; Copyright Ben Leighton 1998
            ; try sin(fn1) and cos (fn2)
  q=pixel, a=1, b=flip(1), last = 0:
  a=a+ fn1(imag(pixel)*10*(1/imag(q)))
  b=b+ fn2(real(pixel)*10*(1/real(q)))
  q=(q-a-b)^2 + pixel  
  (a+b) <= 300
  ;SOURCE: 98msg.frm
}


c9 {
  z=pixel, x=fn1(1/(z*tan(z+1)))*fn2(1/z+1):
  z=(fn3(x)/fn3(z))*fn4((x/z)+c)
  |z|<4
  ;SOURCE: ad1.frm
}


Ca02-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (a+1)xCa(1)-aCa(0)
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (Euler method)
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ;
         ; Ca(1) = 2ax
  a=p2, b=a+a+2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=a*(b*x*x-1)
  Ty=a*(b*y*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Ca02-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p2, b=2*(a+1)
  bailout=p1+4, z=pixel:
  z=a*(b*z*z-1)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Ca02-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Julia)
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p2, b=a+a+2
  const=p1, z=pixel:
  z=a*(b*z*z-1)+const
  |z|<100
  ;SOURCE: chby3.frm
}


Ca02-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Mandelbrot)
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p2, b=a+a+2
  const=pixel, z=p1:
  z=a*(b*z*z-1)+const
  |z|<100
  ;SOURCE: chby4.frm
}


Ca02-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Newton Method
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p1
  b1=2*(a+1)
  b2=4*a*(a+1)
  bailout=real(p2)/10000, z=pixel:
  f=a*(b1*z*z-1)
  fd=b2*z
  oz=z
  z=z-f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Ca02-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Halley Method
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p1
  b1=a+a+2
  b2=4*a*(a+1)
  b3=4*a*(a+1)
  bailout=real(p2)/10000
  z=pixel:
  f=a*(b1*z*z-1)
  fd=b2*z
  fdd=b3
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Ca02-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Bradley Beacham
         ; Cubic Method
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p1
  b1=a+a+2
  b2=4*a*(a+1)
  bailout=real(p2)/10000
  z=pixel:
  f=a*(b2*z*z-1)
  fd=b2*z
  oz=z
  w=z-f/fd
  fw=b2*w
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Ca02-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified Euler method)
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p1
  b=a+a+2
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(a*(b*x*x-1))
  Ty=sin(a*(b*y*y-1))
  x=x+t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Ca02-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified Euler Method)
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p1
  b=a+a+2
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(a*(b*x*x-1))
  Ty=fn1(a*(b*y*y-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Ca02-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Mike Wareman:
         ; Secant Method
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p1
  b=a+a+2
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=-a:
  zt=z
  foz=fz
  fz=a*(b*z*z-1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Ca02-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Julia)
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p2, b=a+a+2
  const=p1, z=pixel:
  z=a*(b*z*z-1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


Ca02-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Mandelbrot)
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p2, b=a+a+2
  const=pixel, z=p1:
  z=a*(b*z*z-1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


Ca02-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Halley Method with weird bailout test
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p1
  b1=2*(a+1)
  b2=4*a*(a+1)
  b3=4*a*(a+1)
  bailout=real(p2)/10000
  z=pixel:
  f=a*(b1*z*z-1)
  fd=b2*z
  fdd=b3
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Ca02-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Bradley Beacham
         ; Cubic Method with weird bailout test
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p1
  b1=a+a+2
  b2=4*a*(a+1)
  bailout=real(p2)/10000
  z=pixel:
  f=a*(b2*z*z-1)
  fd=b2*z
  oz=z
  w=z-f/fd
  fw=b2*w
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


Ca02-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Newton Method with weird bailout test
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p1
  b1=2*(a+1)
  b2=4*a*(a+1)
  bailout=real(p2)/10000, z=pixel:
  f=a*(b1*z*z-1)
  fd=b2*z
  oz=z
  z=z-f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Ca02-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Mike Wareman:
         ; Secant Method with weird bailout test
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p1
  b=a+a+2
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=-a:
  zt=z
  foz=fz
  fz=a*(b*z*z-1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


Ca02-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Mike Wareman
         ; Secant Method with Girvan perturbations and weird bailout test
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p3
  b=a+a+2
  z=pixel, oz=0
  fz=-a
  zt=fn1(z)+p1:
  foz=fz
  fz=a*(b*z*z-1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Ca02-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Mike Wareman
         ; Secant Method with Girvan perturbations and weird bailout test
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p3
  b=a+a+2
  z=pixel, oz=0
  fz=-a
  zt=fn1(z)+p1:
  foz=fz
  fz=a*(b*z*z-1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


Ca02-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (Implicit Euler method)
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p2, b=a+a+2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(a*(b*x*x-1))
  x=x-t*(a*(b*y*y-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Ca02-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler method)
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p1
  b=a+a+2
  bailout=real(p2)/10000
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(a*(b*x*x-1))
  x=x-t*sin(a*(b*y*y-1))
  x=x+t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Ca02-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler method)
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p1
  b=a+a+2
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(a*(b*x*x-1)))
  x=x-t*(fn1(a*(b*y*y-1)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Ca02-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified Euler method)
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p1
  b=a+a+2
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(a*(b*x*x-1))
  Ty=fn2(a*(b*y*y-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Ca02-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified Euler method)
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p1
  b=a+a+2
  t=real(p2), bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(a*(b*x*x-1))
  Ty=fn2(a*(b*y*y-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Ca02-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler Method)
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p1
  b=a+a+2
  t=real(p2), bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(a*(b*x*x-1)))
  x=x-t*(fn2(a*(b*y*y-1)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Ca02-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler Method)
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p1
  b=a+a+2
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(a*(b*x*x-1)))
  x=x-t*(fn2(a*(b*y*y-1)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Ca02-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Kathy Roth:
         ; Dynamic (modified implicit Euler Method, gravitated)
         ;
         ; Ca[0] = 1
         ; Ca[1] = 2az
         ; Ca[n+1] = (2(a+n)zCa[n]-(2a+n-1)Ca[n-1])/(n+1)
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p1
  b=a+a+2
  t=real(p2), bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(a*(b*x*x-1)))
  Ty=(fn1(a*(b*y*y-1)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Ca02-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Kathy Roth:
         ; Dynamic (modified implicit Euler Method, popped)
         ;
         ; Ca[0] = 1
         ; Ca[1] = 2az
         ; Ca[n+1] = (2(a+n)zCa[n]-(2a+n-1)Ca[n-1])/(n+1)
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p1
  b=a+a+2
  t=real(p2), bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(a*(b*x*x-1)))
  Ty=(fn1(a*(b*y*y-1)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Ca02-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Kathy Roth:
         ; Dynamic (modified implicit Euler Method, popped)
         ;
         ; Ca[0] = 1
         ; Ca[1] = 2az
         ; Ca[n+1] = (2(a+n)zCa[n]-(2a+n-1)Ca[n-1])/(n+1)
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p1
  b=a+a+2
  t=real(p2), bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(a*(b*x*x-1)))
  Ty=(fn1(a*(b*y*y-1)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Ca02-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler method, Sylvie Gallet test)
         ;
         ; {C a[0] = 1
         ; Ca[1] = 2az
         ; Ca[n+1] = (2(a+n)zCa[n]-(2a+n-1)Ca[n-1])/(n+1)
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p1
  b=a+a+2
  t=real(p2), bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  x=real(z), y=imag(z)
  Tx=(fn1(a*(b*x*x-1)))
  Ty=(fn1(a*(b*y*y-1)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Ca02-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Ray Parracho:
         ; Regula-Falsi Method
         ;
         ; Ca[0] = 1
         ; Ca[1] = 2az
         ; Ca[n+1] = (2(a+n)zCa[n]-(2a+n-1)Ca[n-1])/(n+1)
         ;
         ; = (a+1)x0Ca(1)-aCa(0)
  a=p2, b=a+a+2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=a*(b*x0*x0-1)
  Fx1=a*(b*x1*x1-1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Ca03 {; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
      ; Prerelease version 20/01/1998
  a=p1
  b=2*a*(a+1)
  c=2*(a+2)/3
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=sqr(x), yy=sqr(y)
  Tx=fn1(b*x*(c*xx-1))
  Ty=fn1(b*y*(c*yy-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: 98msg.frm
}


Ca03-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p2, b=(a+a)*(a+1), c=(a+a+4)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=b*x*(c*x*x-1)
  Ty=b*y*(c*y*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Ca03-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p2, b=2*a*(a+1), c=2*(a+2)/3
  bailout=p1+4, z=pixel:
  z=b*z*(c*z*z-1)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Ca03-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p2, b=(a+a)*(a+1), c=(a+a+4)/3
  const=p1, z=pixel:
  z=b*z*(c*z*z-1)+const
  |z|<100
  ;SOURCE: chby3.frm
}


Ca03-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p2, b=(a+a)*(a+1), c=(a+a+4)/3
  const=pixel, z=p1:
  z=b*z*(c*z*z-1)+const
  |z|<100
  ;SOURCE: chby4.frm
}


Ca03-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p1
  b1=2*a*(a+1)
  c1=2*(a+2)/3
  b2=2*a*(a+1)
  c2=2*(a+2)
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=b1*z*(c1*zz-1)
  fd=b2*(c2*zz-1)
  oz=z
  z=z-f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Ca03-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p1
  b1=(a+a)*(a+1)
  c1=(a+a+4)/3
  b2=(a+a)*(a+1)
  c2=a+a+4
  b3=8*a*(a*(a+3)+2)
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*z*(c1*zz-1)
  fd=b2*(c2*zz-1)
  fdd=b3*z
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Ca03-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p1
  b=(a+a)*(a+1)
  c2=a+a+4
  c1=c2/3
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b*z*(c1*zz-1)
  fd=b*(c2*zz-1)
  oz=z
  w=z-f/fd
  fw=b*(c2*w*w-1)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Ca03-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p1
  b=(a+a)*(a+1)
  c=(a+a+4)/3
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(b*x*(c*xx-1))
  Ty=sin(b*y*(c*yy-1))
  x=x+t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Ca03-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p1
  b=(a+a)*(a+1)
  c=(a+a+4)/3
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(b*x*(c*xx-1))
  Ty=fn1(b*y*(c*yy-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Ca03-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p1
  b=(a+a)*(a+1)
  c=(a+a+4)/3
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=0:
  zt=z
  foz=fz
  fz=b*z*(c*z*z-1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Ca03-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p2, b=(a+a)*(a+1), c=(a+a+4)/3
  const=p1, z=pixel:
  z=b*z*(c*z*z-1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


Ca03-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p2, b=(a+a)*(a+1), c=(a+a+4)/3
  const=pixel, z=p1:
  z=b*z*(c*z*z-1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


Ca03-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p1
  b1=2*a*(a+1)
  c1=2*(a+2)/3
  b2=2*a*(a+1)
  c2=2*(a+2)
  b3=8*a*(a*(a+3)+2)
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*z*(c1*zz-1)
  fd=b2*(c2*zz-1)
  fdd=b3*z
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Ca03-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p1
  b=(a+a)*(a+1)
  c2=a+a+4
  c1=c2/3
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b*z*(c1*zz-1)
  fd=b*(c2*zz-1)
  oz=z
  w=z-f/fd
  fw=b*(c2*w*w-1)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


Ca03-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p1
  b1=2*a*(a+1)
  c1=2*(a+2)/3
  b2=2*a*(a+1)
  c2=2*(a+2)
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=b1*z*(c1*zz-1)
  fd=b2*(c2*zz-1)
  oz=z
  z=z-f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Ca03-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p1
  b=(a+a)*(a+1)
  c=(a+a+4)/3
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=0:
  zt=z
  foz=fz
  fz=b*z*(c*z*z-1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


Ca03-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p3
  b=(a+a)*(a+1)
  c=(a+a+4)/3
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  fz=b*z*(c*z*z-1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Ca03-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p3
  b=(a+a)*(a+1)
  c=(a+a+4)/3
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  fz=b*z*(c*z*z-1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


Ca03-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p2, b=(a+a)*(a+1), c=(a+a+4)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(b*x*(c*x*x-1))
  x=x-t*(b*y*(c*y*y-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Ca03-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p1
  b=(a+a)*(a+1)
  c=(a+a+4)/3
  bailout=real(p2)/10000
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(b*x*(c*xx-1))
  yy=y*y
  x=x-t*sin(b*y*(c*yy-1))
  x=x+t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Ca03-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p1
  b=(a+a)*(a+1)
  c=(a+a+4)/3
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*x*(c*xx-1)))
  yy=y*y
  x=x-t*(fn1(b*y*(c*yy-1)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Ca03-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p1
  b=(a+a)*(a+1)
  c=(a+a+4)/3
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(b*x*(c*xx-1))
  Ty=fn2(b*y*(c*yy-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Ca03-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p1
  b=(a+a)*(a+1)
  c=(a+a+4)/3
  t=real(p2), bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(b*x*(c*xx-1))
  Ty=fn2(b*y*(c*yy-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Ca03-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p1
  b=(a+a)*(a+1)
  c=(a+a+4)/3
  t=real(p2), bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*x*(c*xx-1)))
  yy=y*y
  x=x-t*(fn2(b*y*(c*yy-1)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Ca03-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p1
  b=(a+a)*(a+1)
  c=(a+a+4)/3
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*x*(c*xx-1)))
  yy=y*y
  x=x-t*(fn2(b*y*(c*yy-1)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Ca03-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p1
  b=(a+a)*(a+1)
  c=(a+a+4)/3
  t=real(p2), bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(b*x*(c*xx-1)))
  yy=y*y
  Ty=(fn1(b*y*(c*yy-1)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Ca03-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p1
  b=(a+a)*(a+1)
  c=(a+a+4)/3
  t=real(p2), bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(b*x*(c*xx-1)))
  yy=y*y
  Ty=(fn1(b*y*(c*yy-1)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Ca03-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p1
  b=(a+a)*(a+1)
  c=(a+a+4)/3
  t=real(p2), bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(b*x*(c*xx-1)))
  yy=y*y
  Ty=(fn1(b*y*(c*yy-1)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Ca03-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p1
  b=(a+a)*(a+1)
  c=(a+a+4)/3
  t=real(p2), bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(b*x*(c*xx-1)))
  yy=y*y
  Ty=(fn1(b*y*(c*yy-1)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Ca03-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)x0Ca(2)-(2a+1)Ca(1))/3
  a=p2, b=(a+a)*(a+1), c=(a+a+4)/3
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=b*x0*(c*x0*x0-1)
  Fx1=b*x1*(c*x1*x1-1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Ca04-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p2, b=a*(a+1)/2, c=4*(a+2), d=(a+3)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=b*(c*xx*(d*xx-1)+1)
  Ty=b*(c*yy*(d*yy-1)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Ca04-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p2, b=a*(a+1)/2, c=4*(a+2), d=(a+3)/3
  bailout=p1+4, z=pixel:
  zz=z*z
  z=b*(c*zz*(d*zz-1)+1)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Ca04-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p2, b=a*(a+1)/2, c=4*(a+2), d=(a+3)/3
  const=p1, z=pixel:
  zz=z*z
  z=b*(c*zz*(d*zz-1)+1)+const
  |z|<100
  ;SOURCE: chby3.frm
}


Ca04-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p2, b=a*(a+1)/2, c=4*(a+2), d=(a+3)/3
  const=pixel, z=p1:
  zz=z*z
  z=b*(c*zz*(d*zz-1)+1)+const
  |z|<100
  ;SOURCE: chby4.frm
}


Ca04-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p1
  b1=a*(a+1)/2
  c1=4*(a+2)
  d1=(a+3)/3
  b2=4*a*(a*(a+3)+2)
  c2=2*(a+3)/3
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz-1)+1)
  fd=b2*z*(c2*zz-1)
  oz=z
  z=z-f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Ca04-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p1
  b1=a*(a+1)/2
  c1=4*(a+2)
  d1=(a+3)/3
  b2=4*a*(a*(a+3)+2)
  c2=(a+a)/3+2
  b3=4*a*(a*(a+3)+2)
  c3=a+a+8
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz-1)+1)
  fd=b2*z*(c2*zz-1)
  fdd=b3*(c3*zz-1)
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Ca04-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p1
  b1=a*(a+1)/2
  c1=4*(a+2)
  d1=(a+3)/3
  b2=4*a*(a*(a+3)+2)
  c2=(a+a+6)/3
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz-1)+1)
  fd=b2*z*(c2*zz-1)
  oz=z
  w=z-f/fd
  fw=b2*z*(c2*w*w-1)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Ca04-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p1
  b=a*(a+1)/2
  c=4*(a+2)
  d=(a+3)/3
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(b*(c*xx*(d*xx-1)+1))
  Ty=sin(b*(c*yy*(d*yy-1)+1))
  x=x+t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Ca04-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p1
  b=a*(a+1)/2
  c=4*(a+2)
  d=(a+3)/3
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(b*(c*xx*(d*xx-1)+1))
  Ty=fn1(b*(c*yy*(d*yy-1)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Ca04-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p1
  b=a*(a+1)/2
  c=4*(a+2)
  d=(a+3)/3
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=b:
  zt=z
  foz=fz
  zz=z*z
  fz=b*(c*zz*(d*zz-1)+1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Ca04-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p2, b=a*(a+1)/2, c=4*(a+2), d=(a+3)/3
  const=p1, z=pixel:
  zz=z*z
  z=b*(c*zz*(d*zz-1)+1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


Ca04-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p2, b=a*(a+1)/2, c=4*(a+2), d=(a+3)/3
  const=pixel, z=p1:
  zz=z*z
  z=b*(c*zz*(d*zz-1)+1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


Ca04-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p1
  b1=a*(a+1)/2
  c1=4*(a+2)
  d1=(a+3)/3
  b2=4*a*(a*(a+3)+2)
  c2=2*(a+3)/3
  b3=4*a*(a*(a+3)+2)
  c3=2*(a+4)
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz-1)+1)
  fd=b2*z*(c2*zz-1)
  fdd=b3*(c3*zz-1)
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Ca04-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p1
  b1=a*(a+1)/2
  c1=4*(a+2)
  d1=(a+3)/3
  b2=4*a*(a*(a+3)+2)
  c2=(a+a+6)/3
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz-1)+1)
  fd=b2*z*(c2*zz-1)
  oz=z
  w=z-f/fd
  fw=b2*z*(c2*w*w-1)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


Ca04-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p1
  b1=a*(a+1)/2
  c1=4*(a+2)
  d1=(a+3)/3
  b2=4*a*(a*(a+3)+2)
  c2=2*(a+3)/3
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz-1)+1)
  fd=b2*z*(c2*zz-1)
  oz=z
  z=z-f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Ca04-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p1
  b=a*(a+1)/2
  c=4*(a+2)
  d=(a+3)/3
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=b:
  zt=z
  foz=fz
  zz=z*z
  fz=b*(c*zz*(d*zz-1)+1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


Ca04-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p3
  b=a*(a+1)/2
  c=4*(a+2)
  d=(a+3)/3
  z=pixel, oz=0
  fz=b
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=b*(c*zz*(d*zz-1)+1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Ca04-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p3
  b=a*(a+1)/2
  c=4*(a+2)
  d=(a+3)/3
  z=pixel, oz=0
  fz=b
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=b*(c*zz*(d*zz-1)+1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


Ca04-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p2, b=a*(a+1)/2, c=4*(a+2), d=(a+3)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(b*(c*xx*(d*xx-1)+1))
  yy=y*y
  x=x-t*(b*(c*yy*(d*yy-1)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Ca04-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p1
  b=a*(a+1)/2
  c=4*(a+2)
  d=(a+3)/3
  bailout=real(p2)/10000
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(b*(c*xx*(d*xx-1)+1))
  yy=y*y
  x=x-t*sin(b*(c*yy*(d*yy-1)+1))
  x=x+t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Ca04-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p1
  b=a*(a+1)/2
  c=4*(a+2)
  d=(a+3)/3
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*(c*xx*(d*xx-1)+1)))
  yy=y*y
  x=x-t*(fn1(b*(c*yy*(d*yy-1)+1)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Ca04-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p1
  b=a*(a+1)/2
  c=4*(a+2)
  d=(a+3)/3
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(b*(c*xx*(d*xx-1)+1))
  Ty=fn2(b*(c*yy*(d*yy-1)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Ca04-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p1
  b=a*(a+1)/2
  c=4*(a+2)
  d=(a+3)/3
  t=real(p2), bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(b*(c*xx*(d*xx-1)+1))
  Ty=fn2(b*(c*yy*(d*yy-1)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Ca04-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p1
  b=a*(a+1)/2
  c=4*(a+2)
  d=(a+3)/3
  t=real(p2), bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*(c*xx*(d*xx-1)+1)))
  yy=y*y
  x=x-t*(fn2(b*(c*yy*(d*yy-1)+1)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Ca04-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p1
  b=a*(a+1)/2
  c=4*(a+2)
  d=(a+3)/3
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*(c*xx*(d*xx-1)+1)))
  yy=y*y
  x=x-t*(fn2(b*(c*yy*(d*yy-1)+1)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Ca04-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p1
  b=a*(a+1)/2
  c=4*(a+2)
  d=(a+3)/3
  t=real(p2), bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(b*(c*xx*(d*xx-1)+1)))
  yy=y*y
  Ty=(fn1(b*(c*yy*(d*yy-1)+1)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Ca04-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p1
  b=a*(a+1)/2
  c=4*(a+2)
  d=(a+3)/3
  t=real(p2), bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(b*(c*xx*(d*xx-1)+1)))
  yy=y*y
  Ty=(fn1(b*(c*yy*(d*yy-1)+1)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Ca04-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p1
  b=a*(a+1)/2
  c=4*(a+2)
  d=(a+3)/3
  t=real(p2), bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(b*(c*xx*(d*xx-1)+1)))
  yy=y*y
  Ty=(fn1(b*(c*yy*(d*yy-1)+1)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout    
  ;SOURCE: chby28.frm
}


Ca04-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p1
  b=a*(a+1)/2
  c=4*(a+2)
  d=(a+3)/3
  t=real(p2), bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(b*(c*xx*(d*xx-1)+1)))
  yy=y*y
  Ty=(fn1(b*(c*yy*(d*yy-1)+1)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Ca04-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)x0Ca(3)-(a+1)Ca(2))/2
  a=p2, b=a*(a+1)/2, c=4*(a+2), d=(a+3)/3
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=b*(c*xx*(d*xx-1)+1)
  Fx1=b*(c*yy*(d*yy-1)+1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Ca05-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p2, b=a*(a*(a+3)+2)/3, c=4*(a+3), d=(a+4)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=b*x*(c*xx*(d*xx-1)+3)
  Ty=b*y*(c*yy*(d*yy-1)+3)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Ca05-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p2, b=a*(a*(a+3)+2)/3, c=4*(a+3), d=(a+4)/5
  bailout=p1+4, z=pixel:
  zz=z*z
  z=b*z*(c*zz*(d*zz-1)+3)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Ca05-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p2, b=a*(a*(a+3)+2)/3, c=4*(a+3), d=(a+4)/5
  const=p1, z=pixel:
  zz=z*z
  z=b*z*(c*zz*(d*zz-1)+3)+const
  |z|<100
  ;SOURCE: chby3.frm
}


Ca05-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p2, b=a*(a*(a+3)+2)/3, c=4*(a+3), d=(a+4)/5
  const=pixel, z=p1:
  zz=z*z
  z=b*z*(c*zz*(d*zz-1)+3)+const
  |z|<100
  ;SOURCE: chby4.frm
}


Ca05-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p1
  b1=a*(a*(a+3)+2)/3
  c1=4*(a+3)
  d1=(a+4)/5
  b2=a*(a*(a+3)+2)/3
  c2=4*(a+3)
  d2=a+4
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=b1*z*(c1*zz*(d1*zz-1)+3)
  fd=b2*(c2*zz*(d2*zz-3)+3)
  oz=z
  z=z-f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Ca05-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p1
  b1=a*(a*(a+3)+2)/3
  c1=4*(a+3)
  d1=(a+4)/5
  b2=a*(a*(a+3)+2)/3
  c2=4*(a+3)
  d2=a+4
  b3=8*a*(a*(a*(a+6)+11)+6)/3
  c3=a+a+8
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*z*(c1*zz*(d1*zz-1)+3)
  fd=b2*(c2*zz*(d2*zz-3)+3)
  fdd=b3*z*(c3*zz-3)
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Ca05-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p1
  b1=a*(a*(a+3)+2)/3
  c1=4*(a+3)
  d1=(a+4)/5
  b2=a*(a*(a+3)+2)/3
  c2=4*(a+3)
  d2=a+4
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*z*(c1*zz*(d1*zz-1)+3)
  fd=b2*(c2*zz*(d2*zz-3)+3)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=b2*(c2*ww*(d2*ww-3)+3)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Ca05-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p1
  b=a*(a*(a+3)+2)/3
  c=4*(a+3)
  d=(a+4)/5
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(b*x*(c*xx*(d*xx-1)+3))
  Ty=sin(b*y*(c*yy*(d*yy-1)+3))
  x=x+t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Ca05-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p1
  b=a*(a*(a+3)+2)/3
  c=4*(a+3)
  d=(a+4)/5
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(b*x*(c*xx*(d*xx-1)+3))
  Ty=fn1(b*y*(c*yy*(d*yy-1)+3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Ca05-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p1
  b=a*(a*(a+3)+2)/3
  c=4*(a+3)
  d=(a+4)/5
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=0:
  zt=z
  foz=fz
  zz=z*z
  fz=b*z*(c*zz*(d*zz-1)+3)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Ca05-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p2, b=a*(a*(a+3)+2)/3, c=4*(a+3), d=(a+4)/5
  const=p1, z=pixel:
  zz=z*z
  z=b*z*(c*zz*(d*zz-1)+3)*const
  |z|<100
  ;SOURCE: chby11.frm
}


Ca05-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p2, b=a*(a*(a+3)+2)/3, c=4*(a+3), d=(a+4)/5
  const=pixel, z=p1:
  zz=z*z
  z=b*z*(c*zz*(d*zz-1)+3)*const
  |z|<100
  ;SOURCE: chby12.frm
}


Ca05-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p1
  b1=a*(a*(a+3)+2)/3
  c1=4*(a+3)
  d1=(a+4)/5
  b2=a*(a*(a+3)+2)/3
  c2=4*(a+3)
  d2=a+4
  b3=8*a*(a*(a*(a+6)+11)+6)/3
  c3=2*(a+4)
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*z*(c1*zz*(d1*zz-1)+3)
  fd=b2*(c2*zz*(d2*zz-3)+3)
  fdd=b3*z*(c3*zz-3)
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Ca05-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p1
  b1=a*(a*(a+3)+2)/3
  c1=4*(a+3)
  d1=(a+4)/5
  b2=a*(a*(a+3)+2)/3
  c2=4*(a+3)
  d2=a+4
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*z*(c1*zz*(d1*zz-1)+3)
  fd=b2*(c2*zz*(d2*zz-3)+3)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=b2*(c2*ww*(d2*ww-3)+3)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


Ca05-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p1
  b1=a*(a*(a+3)+2)/3
  c1=4*(a+3)
  d1=(a+4)/5
  b2=a*(a*(a+3)+2)/3
  c2=4*(a+3)
  d2=a+4
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=b1*z*(c1*zz*(d1*zz-1)+3)
  fd=b2*(c2*zz*(d2*zz-3)+3)
  oz=z
  z=z-f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Ca05-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p1
  b=a*(a*(a+3)+2)/3
  c=4*(a+3)
  d=(a+4)/5
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=0:
  zt=z
  foz=fz
  zz=z*z
  fz=b*z*(c*zz*(d*zz-1)+3)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


Ca05-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p3
  b=a*(a*(a+3)+2)/3
  c=4*(a+3)
  d=(a+4)/5
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=b*z*(c*zz*(d*zz-1)+3)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Ca05-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p3
  b=a*(a*(a+3)+2)/3
  c=4*(a+3)
  d=(a+4)/5
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=b*z*(c*zz*(d*zz-1)+3)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


Ca05-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p2, b=a*(a*(a+3)+2)/3, c=4*(a+3), d=(a+4)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(b*x*(c*xx*(d*xx-1)+3))
  yy=y*y
  x=x-t*(b*y*(c*yy*(d*yy-1)+3))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Ca05-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p1
  b=a*(a*(a+3)+2)/3
  c=4*(a+3)
  d=(a+4)/5
  bailout=real(p2)/10000
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(b*x*(c*xx*(d*xx-1)+3))
  yy=y*y
  x=x-t*sin(b*y*(c*yy*(d*yy-1)+3))
  x=x+t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Ca05-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p1
  b=a*(a*(a+3)+2)/3
  c=4*(a+3)
  d=(a+4)/5
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*x*(c*xx*(d*xx-1)+3)))
  yy=y*y
  x=x-t*(fn1(b*y*(c*yy*(d*yy-1)+3)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Ca05-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p1
  b=a*(a*(a+3)+2)/3
  c=4*(a+3)
  d=(a+4)/5
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(b*x*(c*xx*(d*xx-1)+3))
  Ty=fn2(b*y*(c*yy*(d*yy-1)+3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Ca05-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p1
  b=a*(a*(a+3)+2)/3
  c=4*(a+3)
  d=(a+4)/5
  t=real(p2), bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(b*x*(c*xx*(d*xx-1)+3))
  Ty=fn2(b*y*(c*yy*(d*yy-1)+3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Ca05-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p1
  b=a*(a*(a+3)+2)/3
  c=4*(a+3)
  d=(a+4)/5
  t=real(p2), bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*x*(c*xx*(d*xx-1)+3)))
  yy=y*y
  x=x-t*(fn2(b*y*(c*yy*(d*yy-1)+3)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Ca05-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p1
  b=a*(a*(a+3)+2)/3
  c=4*(a+3)
  d=(a+4)/5
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*x*(c*xx*(d*xx-1)+3)))
  yy=y*y
  x=x-t*(fn2(b*y*(c*yy*(d*yy-1)+3)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Ca05-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p1
  b=a*(a*(a+3)+2)/3
  c=4*(a+3)
  d=(a+4)/5
  t=real(p2), bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(b*x*(c*xx*(d*xx-1)+3)))
  yy=y*y
  Ty=(fn1(b*y*(c*yy*(d*yy-1)+3)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Ca05-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p1
  b=a*(a*(a+3)+2)/3
  c=4*(a+3)
  d=(a+4)/5
  t=real(p2), bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(b*x*(c*xx*(d*xx-1)+3)))
  yy=y*y
  Ty=(fn1(b*y*(c*yy*(d*yy-1)+3)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Ca05-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p1
  b=a*(a*(a+3)+2)/3
  c=4*(a+3)
  d=(a+4)/5
  t=real(p2), bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(b*x*(c*xx*(d*xx-1)+3)))
  yy=y*y
  Ty=(fn1(b*y*(c*yy*(d*yy-1)+3)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Ca05-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p1
  b=a*(a*(a+3)+2)/3
  c=4*(a+3)
  d=(a+4)/5
  t=real(p2), bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(b*x*(c*xx*(d*xx-1)+3)))
  yy=y*y
  Ty=(fn1(b*y*(c*yy*(d*yy-1)+3)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Ca05-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)x0Ca(4)-(2a+3)Ca(3))/5
  a=p2, b=a*(a*(a+3)+2)/3, c=4*(a+3), d=(a+4)/5
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=b*x0*(c*xx*(d*xx-1)+3)
  Fx1=b*x1*(c*yy*(d*yy-1)+3)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Ca06-01 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p2, b=a*(a*(a+3)+2)/6, c=a+3, d=4*(a+4), k=(a+a+10)/15
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=b*(c*xx*(d*xx*(k*xx-1)+3)-1)
  Ty=b*(c*yy*(d*yy*(k*yy-1)+3)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Ca06-02 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p2, b=a*(a*(a+3)+2)/6, c=a+3, d=4*(a+4), k=2*(a+5)/15
  bailout=p1+4, z=pixel:
  zz=z*z
  z=b*(c*zz*(d*zz*(k*zz-1)+3)-1)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Ca06-03 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p2, b=a*(a*(a+3)+2)/6, c=a+3, d=4*(a+4), k=(a+a+10)/15
  const=p1, z=pixel:
  zz=z*z
  z=b*(c*zz*(d*zz*(k*zz-1)+3)-1)+const
  |z|<100
  ;SOURCE: chby3.frm
}


Ca06-04 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p2, b=a*(a*(a+3)+2)/6, c=a+3, d=4*(a+4), k=(a+a+10)/15
  const=pixel, z=p1:
  zz=z*z
  z=b*(c*zz*(d*zz*(k*zz-1)+3)-1)+const
  |z|<100
  ;SOURCE: chby4.frm
}


Ca06-05 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p1
  b1=a*(a*(a+3)+2)/6
  c1=a+3
  d1=4*(a+4)
  e1=2*(a+5)/15
  b2=a*(a*(a*(a+6)+11)+6)/3
  c2=8*(a+4)
  d2=(a+5)/5
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz*(e1*zz-1)+3)-1)
  fd=b2*z*(c2*zz*(d2*zz-1)+3)
  oz=z
  z=z-f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Ca06-06 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p1
  b1=a*(a*(a+3)+2)/6
  c1=a+3
  d1=4*(a+4)
  e1=(a+a+10)/15
  b2=a*(a*(a*(a+6)+11)+6)/3
  c2=8*(a+4)
  d2=(a+5)/5
  b3=a*(a*(a*(a+6)+11)+6)
  c3=8*(a+4)/3
  d3=a+5
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz*(e1*zz-1)+3)-1)
  fd=b2*z*(c2*zz*(d2*zz-1)+3)
  fdd=b3*(c3*zz*(d3*zz-3)+1)
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Ca06-07 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p1
  b1=a*(a*(a+3)+2)/6
  c1=a+3
  d1=4*(a+4)
  e1=(a+a+10)/15
  b2=a*(a*(a*(a+6)+11)+6)/3
  c2=8*(a+4)
  d2=(a+5)/5
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz*(e1*zz-1)+3)-1)
  fd=b2*z*(c2*zz*(d2*zz-1)+3)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=b2*w*(c2*ww*(d2*ww-1)+3)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Ca06-08 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p1
  b=a*(a*(a+3)+2)/6
  c=a+3
  d=4*(a+4)
  k=(a+a+10)/15
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(b*(c*xx*(d*xx*(k*xx-1)+3)-1))
  Ty=sin(b*(c*yy*(d*yy*(k*yy-1)+3)-1))
  x=x+t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Ca06-09 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p1
  b=a*(a*(a+3)+2)/6
  c=a+3
  d=4*(a+4)
  k=(a+a+10)/15
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(b*(c*xx*(d*xx*(k*xx-1)+3)-1))
  Ty=fn1(b*(c*yy*(d*yy*(k*yy-1)+3)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Ca06-10 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p1
  b=a*(a*(a+3)+2)/6
  c=a+3
  d=4*(a+4)
  k=(a+a+10)/15
  bailout=real(p2)/10000, z=pixel, oz=0
  zz=z*z
  fz=-b:
  zt=z
  foz=fz
  zz=z*z
  fz=b*(c*zz*(d*zz*(k*zz-1)+3)-1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Ca06-11 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p2, b=a*(a*(a+3)+2)/6, c=a+3, d=4*(a+4), k=(a+a+10)/15
  const=p1, z=pixel:
  zz=z*z
  z=b*(c*zz*(d*zz*(k*zz-1)+3)-1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


Ca06-12 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p2, b=a*(a*(a+3)+2)/6, c=a+3
  d=4*(a+4), k=(a+a+10)/15
  const=pixel, z=p1:
  zz=z*z
  z=b*(c*zz*(d*zz*(k*zz-1)+3)-1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


Ca06-13 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p1
  b1=a*(a*(a+3)+2)/6
  c1=a+3
  d1=4*(a+4)
  e1=2*(a+5)/15
  b2=a*(a*(a*(a+6)+11)+6)/3
  c2=8*(a+4)
  d2=(a+5)/5
  b3=a*(a*(a*(a+6)+11)+6)
  c3=8*(a+4)/3
  d3=a+5
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz*(e1*zz-1)+3)-1)
  fd=b2*z*(c2*zz*(d2*zz-1)+3)
  fdd=b3*(c3*zz*(d3*zz-3)+1)
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Ca06-14 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p1
  b1=a*(a*(a+3)+2)/6
  c1=a+3
  d1=4*(a+4)
  e1=(a+a+10)/15
  b2=a*(a*(a*(a+6)+11)+6)/3
  c2=8*(a+4)
  d2=(a+5)/5
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz*(e1*zz-1)+3)-1)
  fd=b2*z*(c2*zz*(d2*zz-1)+3)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=b2*w*(c2*ww*(d2*ww-1)+3)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


Ca06-15 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p1
  b1=a*(a*(a+3)+2)/6
  c1=a+3
  d1=4*(a+4)
  e1=2*(a+5)/15
  b2=a*(a*(a*(a+6)+11)+6)/3
  c2=8*(a+4)
  d2=(a+5)/5
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz*(e1*zz-1)+3)-1)
  fd=b2*z*(c2*zz*(d2*zz-1)+3)
  oz=z
  z=z-f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Ca06-16 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p1
  b=a*(a*(a+3)+2)/6
  c=a+3
  d=4*(a+4)
  k=(a+a+10)/15
  bailout=real(p2)/10000, z=pixel, oz=0
  zz=0*0
  fz=-b:
  zt=z
  foz=fz
  zz=z*z
  fz=b*(c*zz*(d*zz*(k*zz-1)+3)-1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


Ca06-17 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p3
  b=a*(a*(a+3)+2)/6
  c=a+3
  d=4*(a+4)
  k=(a+a+10)/15
  z=pixel, oz=0
  zz=z*z
  fz=-b
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=b*(c*zz*(d*zz*(k*zz-1)+3)-1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Ca06-18 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p3
  b=a*(a*(a+3)+2)/6
  c=a+3
  d=4*(a+4)
  k=(a+a+10)/15
  z=pixel, oz=0
  zz=z*z
  fz=-b
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=b*(c*zz*(d*zz*(k*zz-1)+3)-1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


Ca06-19 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p2, b=a*(a*(a+3)+2)/6, c=a+3, d=4*(a+4), k=(a+a+10)/15
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(b*(c*xx*(d*xx*(k*xx-1)+3)-1))
  yy=y*y
  x=x-t*(b*(c*yy*(d*yy*(k*yy-1)+3)-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Ca06-20 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p1
  b=a*(a*(a+3)+2)/6
  c=a+3
  d=4*(a+4)
  k=(a+a+10)/15
  bailout=real(p2)/10000
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(b*(c*xx*(d*xx*(k*xx-1)+3)-1))
  yy=y*y
  x=x-t*sin(b*(c*yy*(d*yy*(k*yy-1)+3)-1))
  x=x+t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Ca06-21 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p1
  b=a*(a*(a+3)+2)/6
  c=a+3
  d=4*(a+4)
  k=(a+a+10)/15
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*(c*xx*(d*xx*(k*xx-1)+3)-1)))
  yy=y*y
  x=x-t*(fn1(b*(c*yy*(d*yy*(k*yy-1)+3)-1)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Ca06-22 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p1
  b=a*(a*(a+3)+2)/6
  c=a+3
  d=4*(a+4)
  k=(a+a+10)/15
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(b*(c*xx*(d*xx*(k*xx-1)+3)-1))
  Ty=fn2(b*(c*yy*(d*yy*(k*yy-1)+3)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Ca06-23 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p1
  b=a*(a*(a+3)+2)/6
  c=a+3
  d=4*(a+4)
  k=(a+a+10)/15
  t=real(p2), bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(b*(c*xx*(d*xx*(k*xx-1)+3)-1))
  Ty=fn2(b*(c*yy*(d*yy*(k*yy-1)+3)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Ca06-24 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p1
  b=a*(a*(a+3)+2)/6
  c=a+3
  d=4*(a+4)
  k=(a+a+10)/15
  t=real(p2), bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*(c*xx*(d*xx*(k*xx-1)+3)-1)))
  yy=y*y
  x=x-t*(fn2(b*(c*yy*(d*yy*(k*yy-1)+3)-1)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Ca06-25 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p1
  b=a*(a*(a+3)+2)/6
  c=a+3
  d=4*(a+4)
  k=(a+a+10)/15
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*(c*xx*(d*xx*(k*xx-1)+3)-1)))
  yy=y*y
  x=x-t*(fn2(b*(c*yy*(d*yy*(k*yy-1)+3)-1)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Ca06-26 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p1
  b=a*(a*(a+3)+2)/6
  c=a+3
  d=4*(a+4)
  k=(a+a+10)/15
  t=real(p2), bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(b*(c*xx*(d*xx*(k*xx-1)+3)-1)))
  yy=y*y
  Ty=(fn1(b*(c*yy*(d*yy*(k*yy-1)+3)-1)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Ca06-27 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p1
  b=a*(a*(a+3)+2)/6
  c=a+3
  d=4*(a+4)
  k=(a+a+10)/15
  t=real(p2), bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(b*(c*xx*(d*xx*(k*xx-1)+3)-1)))
  yy=y*y
  Ty=(fn1(b*(c*yy*(d*yy*(k*yy-1)+3)-1)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Ca06-28 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p1
  b=a*(a*(a+3)+2)/6
  c=a+3
  d=4*(a+4)
  k=(a+a+10)/15
  t=real(p2), bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(b*(c*xx*(d*xx*(k*xx-1)+3)-1)))
  yy=y*y
  Ty=(fn1(b*(c*yy*(d*yy*(k*yy-1)+3)-1)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Ca06-29 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p1
  b=a*(a*(a+3)+2)/6
  c=a+3
  d=4*(a+4)
  k=(a+a+10)/15
  t=real(p2), bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(b*(c*xx*(d*xx*(k*xx-1)+3)-1)))
  yy=y*y
  Ty=(fn1(b*(c*yy*(d*yy*(k*yy-1)+3)-1)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Ca06-30 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)x0Ca(5)-(a+2)Ca(4))/3
  a=p2, b=a*(a*(a+3)+2)/6, c=a+3, d=4*(a+4), k=(a+a+10)/15
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=b*(c*xx*(d*xx*(k*xx-1)+3)-1)
  Fx1=b*(c*yy*(d*yy*(k*yy-1)+3)-1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Ca07-01 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p2, b=a*(a*(a*(a+6)+11)+6)/21, c=a+a+8
  d=((a+a)*(a+11)+60)/15, k=7*(a+5)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=b*x*(c*xx*((xx+xx)*(d*xx-k)+7)-7)
  Ty=b*y*(c*yy*((yy+yy)*(d*yy-k)+7)-7)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Ca07-02 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p2, b=a*(a*(a*(a+6)+11)+6)/21, c=2*(a+4)
  d=2*(a*(a+11)+30)/15, k=7*(a+5)/5
  bailout=p1+4, z=pixel:
  zz=z*z
  z=b*z*(c*zz*(2*zz*(d*zz-k)+7)-7)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Ca07-03 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p2, b=a*(a*(a*(a+6)+11)+6)/21, c=a+a+8, d=(a+a)*(a+11)/15+4
  k=7*(a+5)/5
  const=p1, z=pixel:
  zz=z*z
  z=b*z*(c*zz*((zz+zz)*(d*zz-k)+7)-7)+const
  |z|<100
  ;SOURCE: chby3.frm
}


Ca07-04 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p2, b=a*(a*(a*(a+6)+11)+6)/21, c=(a+a+8)
  d=(a*(a+a+22)+60)/15, k=7*(a+5)/5
  const=pixel, z=p1:
  zz=z*z
  z=b*z*(c*zz*((zz+zz)*(d*zz-k)+7)-7)+const
  |z|<100
  ;SOURCE: chby4.frm
}


Ca07-05 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p1
  b1=a*(a*(a*(a+6)+11)+6)/21
  c1=2*(a+4)
  d1=2*(a*(a+11)+30)/15
  k1=7*(a+5)/5
  b2=a*(a*(a*(a+6)+11)+6)/3
  c2=2*(a+4)
  d2=2*(a*(a+11)+30)/15
  k2=a+5
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=b1*z*(c1*zz*(2*zz*(d1*zz-k1)+7)-7)
  fd=b2*(c2*zz*(2*zz*(d2*zz-k2)+3)-1)
  oz=z
  z=z-f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Ca07-06 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p1
  b1=a*(a*(a*(a+6)+11)+6)/21
  c1=a+a+8
  d1=(a+a)*(a+11)/15+4
  k1=7*(a+5)/5
  b2=a*(a*(a*(a+6)+11)+6)/3
  c2=a+a+8
  k2=a+5
  b3=4*a*(a*(a*(a*(a+10)+35)+50)+24)/3
  c3=(a*(a+11)+30)/5
  d3=a+5
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*z*(c1*zz*((zz+zz)*(d1*zz-k1)+7)-7)
  fd=b2*(c2*zz*((zz+zz)*(d1*zz-k2)+3)-1)
  fdd=b3*z*(4*zz*(c3*zz-d3)+3)
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Ca07-07 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p1
  b2=a*(a*(a*(a+6)+11)+6)/3
  b1=b2/7
  c=a+a+8
  d=((a+a)*(a+11)+60)/15
  e2=a+5
  e1=7*e2/5
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*z*(c*zz*((zz+zz)*(d*zz-e1)+7)-7)
  fd=b2*(c*zz*((zz+zz)*(d*zz-e2)+3)-1)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=b2*(c*ww*((ww+ww)*(d*ww-e2)+3)-1)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Ca07-08 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/21
  c=(a+a+8)
  d=((a+a)*(a+11)+60)/15
  k=7*(a+5)/5
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(b*x*(c*xx*((xx+xx)*(d*xx-k)+7)-7))
  Ty=sin(b*y*(c*yy*((yy+yy)*(d*yy-k)+7)-7))
  x=x+t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Ca07-09 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/21
  c=a+a+8
  d=(a+a)*(a+11)/15+4
  k=7*(a+5)/5
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(b*x*(c*xx*((xx+xx)*(d*xx-k)+7)-7))
  Ty=fn1(b*y*(c*yy*((yy+yy)*(d*yy-k)+7)-7))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Ca07-10 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/21
  c=a+a+8
  d=(a+a)*(a+11)/15+4
  k=7*(a+5)/5
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=0:
  zt=z
  foz=fz
  zz=z*z
  fz=b*z*(c*zz*((zz+zz)*(d*zz-k)+7)-7)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Ca07-11 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p2, b=a*(a*(a*(a+6)+11)+6)/21, c=a+a+8
  d=(a+a)*(a+11)/15+4, k=7*(a+5)/5
  const=p1, z=pixel:
  zz=z*z
  z=b*z*(c*zz*((zz+zz)*(d*zz-k)+7)-7)*const
  |z|<100
  ;SOURCE: chby11.frm
}


Ca07-12 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p2, b=a*(a*(a*(a+6)+11)+6)/21, c=a+a+8
  d=(a+a)*(a+11)/15+4, k=7*(a+5)/5
  const=pixel, z=p1:
  zz=z*z
  z=b*z*(c*zz*((zz+zz)*(d*zz-k)+7)-7)*const
  |z|<100
  ;SOURCE: chby12.frm
}


Ca07-13 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p1
  b1=a*(a*(a*(a+6)+11)+6)/21
  c1=2*(a+4)
  d1=2*(a*(a+11)+30)/15
  k1=7*(a+5)/5
  b2=a*(a*(a*(a+6)+11)+6)/3
  c2=2*(a+4)
  d2=2*(a*(a+11)+30)/15
  k2=a+5
  b3=4*a*(a*(a*(a*(a+10)+35)+50)+24)/3
  c3=(a*(a+11)+30)/5
  d3=a+5
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*z*(c1*zz*(2*zz*(d1*zz-k1)+7)-7)
  fd=b2*(c2*zz*(2*zz*(d*zz-k2)+3)-1)
  fdd=b3*z*(4*zz*(c3*zz-d3)+3)
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Ca07-14 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p1
  b2=a*(a*(a*(a+6)+11)+6)/3
  b1=b2/7
  c=a+a+8
  d=((a+a)*(a+11)+60)/15
  e2=a+5
  e1=7*e2/5
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*z*(c*zz*((zz+zz)*(d*zz-e1)+7)-7)
  fd=b2*(c*zz*((zz+zz)*(d*zz-e2)+3)-1)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=b2*(c*ww*((ww+ww)*(d*ww-e2)+3)-1)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


Ca07-15 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p1
  b1=a*(a*(a*(a+6)+11)+6)/21
  c1=2*(a+4)
  d1=2*(a*(a+11)+30)/15
  k1=7*(a+5)/5
  b2=a*(a*(a*(a+6)+11)+6)/3
  c2=2*(a+4)
  d2=2*(a*(a+11)+30)/15
  k2=a+5
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=b1*z*(c1*zz*(2*zz*(d1*zz-k1)+7)-7)
  fd=b2*(c2*zz*(2*zz*(d*zz-k2)+3)-1)
  oz=z
  z=z-f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Ca07-16 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/21
  c=a+a+8
  d=(a+a)*(a+11)/15+4
  k=7*(a+5)/5
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=0:
  zt=z
  foz=fz
  zz=z*z
  fz=b*z*(c*zz*((zz+zz)*(d*zz-k)+7)-7)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


Ca07-17 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p3
  b=a*(a*(a*(a+6)+11)+6)/21
  c=a+a+8
  d=(a+a)*(a+11)/15+4
  k=7*(a+5)/5
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=b*z*(c*zz*((zz+zz)*(d*zz-k)+7)-7)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Ca07-18 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p3
  b=a*(a*(a*(a+6)+11)+6)/21
  c=a+a+8
  d=(a+a)*(a+11)/15+4
  k=7*(a+5)/5
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=b*z*(c*zz*((zz+zz)*(d*zz-k)+7)-7)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


Ca07-19 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p2, b=a*(a*(a*(a+6)+11)+6)/21, c=a+a+8
  d=((a+a)*(a+11)+60)/15, k=7*(a+5)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(b*x*(c*xx*((xx+xx)*(d*xx-k)+7)-7))
  yy=y*y
  x=x-t*(b*y*(c*yy*((yy+yy)*(d*yy-k)+7)-7))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Ca07-20 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/21
  c=(a+a+8)
  d=((a+a)*(a+11)+60)/15
  k=7*(a+5)/5
  bailout=real(p2)/10000
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(b*x*(c*xx*((xx+xx)*(d*xx-k)+7)-7))
  yy=y*y
  x=x-t*sin(b*y*(c*yy*((yy+yy)*(d*yy-k)+7)-7))
  x=x+t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Ca07-21 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/21
  c=a+a+8
  d=(a+a)*(a+11)/15+4
  k=7*(a+5)/5
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*x*(c*xx*((xx+xx)*(d*xx-k)+7)-7)))
  yy=y*y
  x=x-t*(fn1(b*y*(c*yy*((yy+yy)*(d*yy-k)+7)-7)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Ca07-22 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/21
  c=a+a+8
  d=(a+a)*(a+11)/15+4
  k=7*(a+5)/5
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(b*x*(c*xx*((xx+xx)*(d*xx-k)+7)-7))
  Ty=fn2(b*y*(c*yy*((yy+yy)*(d*yy-k)+7)-7))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Ca07-23 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/21
  c=a+a+8
  d=(a+a)*(a+11)/15+4
  k=7*(a+5)/5
  t=real(p2), bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(b*x*(c*xx*((xx+xx)*(d*xx-k)+7)-7))
  Ty=fn2(b*y*(c*yy*((yy+yy)*(d*yy-k)+7)-7))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Ca07-24 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/21
  c=a+a+8
  d=(a+a)*(a+11)/15+4
  k=7*(a+5)/5
  t=real(p2), bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*x*(c*xx*((xx+xx)*(d*xx-k)+7)-7)))
  yy=y*y
  x=x-t*(fn2(b*y*(c*yy*((yy+yy)*(d*yy-k)+7)-7)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Ca07-25 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/21
  c=a+a+8
  d=(a+a)*(a+11)/15+4
  k=7*(a+5)/5
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*x*(c*xx*((xx+xx)*(d*xx-k)+7)-7)))
  yy=y*y
  x=x-t*(fn2(b*y*(c*yy*((yy+yy)*(d*yy-k)+7)-7)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Ca07-26 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/21
  c=a+a+8
  d=(a+a)*(a+11)/15+4
  k=7*(a+5)/5
  t=real(p2), bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(b*x*(c*xx*((xx+xx)*(d*xx-k)+7)-7)))
  yy=y*y
  Ty=(fn1(b*y*(c*yy*((yy+yy)*(d*yy-k)+7)-7)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Ca07-27 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/21
  c=a+a+8
  d=(a+a)*(a+11)/15+4
  k=7*(a+5)/5
  t=real(p2), bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(b*x*(c*xx*((xx+xx)*(d*xx-k)+7)-7)))
  yy=y*y
  Ty=(fn1(b*y*(c*yy*((yy+yy)*(d*yy-k)+7)-7)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Ca07-28 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/21
  c=a+a+8
  d=(a+a)*(a+11)/15+4
  k=7*(a+5)/5
  t=real(p2), bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(b*x*(c*xx*((xx+xx)*(d*xx-k)+7)-7)))
  yy=y*y
  Ty=(fn1(b*y*(c*yy*((yy+yy)*(d*yy-k)+7)-7)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Ca07-29 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/21
  c=a+a+8
  d=(a+a)*(a+11)/15+4
  k=7*(a+5)/5
  t=real(p2), bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(b*x*(c*xx*((xx+xx)*(d*xx-k)+7)-7)))
  yy=y*y
  Ty=(fn1(b*y*(c*yy*((yy+yy)*(d*yy-k)+7)-7)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Ca07-30 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)x0Ca(6)-(2a+5)Ca(5))/7
  a=p2, b=a*(a*(a*(a+6)+11)+6)/21, c=a+a+8, d=((a+a)*(a+11)+60)/15
  k=7*(a+5)/5
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=b*x0*(c*xx*((xx+xx)*(d*xx-k)+7)-7)
  Fx1=b*x1*(c*yy*((yy+yy)*(d*yy-k)+7)-7)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Ca08-01 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p2, b=a*(a*(a*(a+6)+11)+6)/360, c=8*(a+4)
  d=a+5, k=4*(a+6), f=(a+7)/14
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=b*(c*xx*(d*xx*(k*xx*(f*xx-1)+15)-15)+15)
  Ty=b*(c*yy*(d*yy*(k*yy*(f*yy-1)+15)-15)+15)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Ca08-02 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p2, b=a*(a*(a*(a+6)+11)+6)/360, c=8*(a+4)
  d=a+5, k=4*(a+6), f=(a+7)/14
  bailout=p1+4, z=pixel:
  zz=z*z
  z=b*(c*zz*(d*zz*(k*zz*(f*zz-1)+15)-15)+15)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Ca08-03 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p2, b=a*(a*(a*(a+6)+11)+6)/360, c=8*(a+4)
  d=a+5, k=4*(a+6), f=(a+7)/14
  const=p1, z=pixel:
  zz=z*z
  z=b*(c*zz*(d*zz*(k*zz*(f*zz-1)+15)-15)+15)+const
  |z|<100
  ;SOURCE: chby3.frm
}


Ca08-04 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p2, b=a*(a*(a*(a+6)+11)+6)/360, c=8*(a+4)
  d=a+5, k=4*(a+6), f=(a+7)/14
  const=pixel, z=p1:
  zz=z*z
  z=b*(c*zz*(d*zz*(k*zz*(f*zz-1)+15)-15)+15)+const
  |z|<100
  ;SOURCE: chby4.frm
}


Ca08-05 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p1
  b1=a*(a*(a*(a+6)+11)+6)/360
  c1=8*(a+4)
  d1=a+5
  e1=4*(a+6)
  f1=(a+7)/14
  b2=2*a*(a*(a*(a*(a+10)+35)+500)+24)/45
  c2=2*(a+5)
  d2=2*(a+6)
  e2=2*(a+7)/7
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz*(e1*zz*(f1*zz-1)+15)-15)+15)
  fd=b2*z*(c2*zz*(d2*zz*(e2*zz-3)+15)-15)
  oz=z
  z=z-f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Ca08-06 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p1
  b1=a*(a*(a*(a+6)+11)+6)/360
  c1=8*a+32
  d1=a+5
  k1=4*a+24
  f1=(a+7)/14
  b2=(a+a)*(a*(a*(a*(a+10)+35)+500)+24)/45
  c2=d1+d1
  d2=a+a+12
  k2=(a+a)/7+2
  b3=(a+a)*(a*(a*(a*(a+10)+35)+50)+24)/45
  k3=7*e2
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz*(k1*zz*(f1*zz-1)+15)-15)+15)
  fd=b2*z*(c2*zz*(d2*zz*(k2*zz-3)+15)-15)
  fdd=b3*(c2*zz*(d2*zz*(k3*zz-15)+45)-15)
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Ca08-07 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p1
  b1=a*(a*(a*(a+6)+11)+6)/360
  c1=8*(a+4)
  d1=a+5
  e1=4*(a+6)
  f1=(a+7)/14
  b2=(a+a)*(a*(a*(a*(a+10)+35)+500)+24)/45
  c2=a+a+10
  d2=a+a+12
  e2=(a+a+14)/7
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz*(e1*zz*(f1*zz-1)+15)-15)+15)
  fd=b2*z*(c2*zz*(d2*zz*(e2*zz-3)+15)-15)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=b2*w*(c2*ww*(d2*ww*(e2*ww-3)+15)-15)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Ca08-08 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/360
  c=8*(a+4)
  d=a+5
  k=4*(a+6)
  f=(a+7)/14
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(b*(c*xx*(d*xx*(k*xx*(f*xx-1)+15)-15)+15))
  Ty=sin(b*(c*yy*(d*yy*(k*yy*(f*yy-1)+15)-15)+15))
  x=x+t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Ca08-09 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/360
  c=8*(a+4)
  d=a+5
  k=4*(a+6)
  f=(a+7)/14
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(b*(c*xx*(d*xx*(k*xx*(f*xx-1)+15)-15)+15))
  Ty=fn1(b*(c*yy*(d*yy*(k*yy*(f*yy-1)+15)-15)+15))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Ca08-10 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/360
  c=8*(a+4)
  d=a+5
  k=4*(a+6)
  f=(a+7)/14
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=15*b:
  zt=z
  foz=fz
  fz=b*(c*zz*(d*zz*(k*zz*(f*zz-1)+15)-15)+15)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Ca08-11 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p2, b=a*(a*(a*(a+6)+11)+6)/360, c=8*(a+4)
  d=a+5, k=4*(a+6), f=(a+7)/14
  const=p1, z=pixel:
  zz=z*z
  z=b*(c*zz*(d*zz*(k*zz*(f*zz-1)+15)-15)+15)*const
  |z|<100
  ;SOURCE: chby11.frm
}


Ca08-12 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p2, b=a*(a*(a*(a+6)+11)+6)/360, c=8*(a+4)
  d=a+5, k=4*(a+6), f=(a+7)/14
  const=pixel, z=p1:
  zz=z*z
  z=b*(c*zz*(d*zz*(k*zz*(f*zz-1)+15)-15)+15)*const
  |z|<100
  ;SOURCE: chby12.frm
}


Ca08-13 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p1
  b1=a*(a*(a*(a+6)+11)+6)/360
  c1=8*a+32
  d1=a+5
  k1=4*a+24
  f1=(a+7)/14
  b2=2*a*(a*(a*(a*(a+10)+35)+500)+24)/45
  c2=2*d1
  d2=2*(a+6)
  k2=2*(a+7)/7
  b3=2*a*(a*(a*(a*(a+10)+35)+50)+24)/45
  k3=7*e2
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz*(k1*zz*(f1*zz-1)+15)-15)+15)
  fd=b2*z*(c2*zz*(d2*zz*(k2*zz-3)+15)-15)
  fdd=b3*(c2*zz*(d2*zz*(k3*zz-15)+45)-15)
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Ca08-14 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p1
  b1=a*(a*(a*(a+6)+11)+6)/360
  c1=8*(a+4)
  d1=a+5
  e1=4*(a+6)
  f1=(a+7)/14
  b2=(a+a)*(a*(a*(a*(a+10)+35)+500)+24)/45
  c2=a+a+10
  d2=a+a+12
  e2=(a+a+14)/7
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz*(e1*zz*(f1*zz-1)+15)-15)+15)
  fd=b2*z*(c2*zz*(d2*zz*(e2*zz-3)+15)-15)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=b2*w*(c2*ww*(d2*ww*(e2*ww-3)+15)-15)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


Ca08-15 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p1
  b1=a*(a*(a*(a+6)+11)+6)/360
  c1=8*(a+4)
  d1=a+5
  e1=4*(a+6)
  f1=(a+7)/14
  b2=2*a*(a*(a*(a*(a+10)+35)+500)+24)/45
  c2=2*(a+5)
  d2=2*(a+6)
  e2=2*(a+7)/7
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz*(e1*zz*(f1*zz-1)+15)-15)+15)
  fd=b2*z*(c2*zz*(d2*zz*(e2*zz-3)+15)-15)
  oz=z
  z=z-f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Ca08-16 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/360
  c=8*(a+4)
  d=a+5
  k=4*(a+6)
  f=(a+7)/14
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=15*b:
  zt=z
  foz=fz
  fz=b*(c*zz*(d*zz*(k*zz*(f*zz-1)+15)-15)+15)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


Ca08-17 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p3
  b=a*(a*(a*(a+6)+11)+6)/360
  c=8*(a+4)
  d=a+5
  k=4*(a+6)
  f=(a+7)/14
  z=pixel, oz=0
  fz=15*b
  zt=fn1(z)+p1:
  foz=fz
  fz=b*(c*zz*(d*zz*(k*zz*(f*zz-1)+15)-15)+15)*const
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Ca08-18 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p3
  b=a*(a*(a*(a+6)+11)+6)/360
  c=8*(a+4)
  d=a+5
  k=4*(a+6)
  f=(a+7)/14
  z=pixel, oz=0
  fz=15*b
  zt=fn1(z)+p1:
  foz=fz
  fz=b*(c*zz*(d*zz*(k*zz*(f*zz-1)+15)-15)+15)*const
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


Ca08-19 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p2, b=a*(a*(a*(a+6)+11)+6)/360, c=8*(a+4)
  d=a+5, k=4*(a+6), f=(a+7)/14
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(b*(c*xx*(d*xx*(k*xx*(f*xx-1)+15)-15)+15))
  yy=y*y
  x=x-t*(b*(c*yy*(d*yy*(k*yy*(f*yy-1)+15)-15)+15))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Ca08-20 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/360
  c=8*(a+4)
  d=a+5
  k=4*(a+6)
  f=(a+7)/14
  bailout=real(p2)/10000
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(b*(c*xx*(d*xx*(k*xx*(f*xx-1)+15)-15)+15))
  yy=y*y
  x=x-t*sin(b*(c*yy*(d*yy*(k*yy*(f*yy-1)+15)-15)+15))
  x=x+t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Ca08-21 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/360
  c=8*(a+4)
  d=a+5
  k=4*(a+6)
  f=(a+7)/14
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*(c*xx*(d*xx*(k*xx*(f*xx-1)+15)-15)+15)))
  yy=y*y
  x=x-t*(fn1(b*(c*yy*(d*yy*(k*yy*(f*yy-1)+15)-15)+15)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Ca08-22 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/360
  c=8*(a+4)
  d=a+5
  k=4*(a+6)
  f=(a+7)/14
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(b*(c*xx*(d*xx*(k*xx*(f*xx-1)+15)-15)+15))
  Ty=fn2(b*(c*yy*(d*yy*(k*yy*(f*yy-1)+15)-15)+15))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Ca08-23 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/360
  c=8*(a+4)
  d=a+5
  k=4*(a+6)
  f=(a+7)/14
  t=real(p2), bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(b*(c*xx*(d*xx*(k*xx*(f*xx-1)+15)-15)+15))
  Ty=fn2(b*(c*yy*(d*yy*(k*yy*(f*yy-1)+15)-15)+15))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Ca08-24 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/360
  c=8*(a+4)
  d=a+5
  k=4*(a+6)
  f=(a+7)/14
  t=real(p2), bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*(c*xx*(d*xx*(k*xx*(f*xx-1)+15)-15)+15)))
  yy=y*y
  x=x-t*(fn2(b*(c*yy*(d*yy*(k*yy*(f*yy-1)+15)-15)+15)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Ca08-25 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/360
  c=8*(a+4)
  d=a+5
  k=4*(a+6)
  f=(a+7)/14
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*(c*xx*(d*xx*(k*xx*(f*xx-1)+15)-15)+15)))
  yy=y*y
  x=x-t*(fn2(b*(c*yy*(d*yy*(k*yy*(f*yy-1)+15)-15)+15)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Ca08-26 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/360
  c=8*(a+4)
  d=a+5
  k=4*(a+6)
  f=(a+7)/14
  t=real(p2), bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(b*(c*xx*(d*xx*(k*xx*(f*xx-1)+15)-15)+15)))
  yy=y*y
  Ty=(fn1(b*(c*yy*(d*yy*(k*yy*(f*yy-1)+15)-15)+15)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Ca08-27 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/360
  c=8*(a+4)
  d=a+5
  k=4*(a+6)
  f=(a+7)/14
  t=real(p2), bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(b*(c*xx*(d*xx*(k*xx*(f*xx-1)+15)-15)+15)))
  yy=y*y
  Ty=(fn1(b*(c*yy*(d*yy*(k*yy*(f*yy-1)+15)-15)+15)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Ca08-28 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/360
  c=8*(a+4)
  d=a+5
  k=4*(a+6)
  f=(a+7)/14
  t=real(p2), bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(b*(c*xx*(d*xx*(k*xx*(f*xx-1)+15)-15)+15)))
  yy=y*y
  Ty=(fn1(b*(c*yy*(d*yy*(k*yy*(f*yy-1)+15)-15)+15)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Ca08-29 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/360
  c=8*(a+4)
  d=a+5
  k=4*(a+6)
  f=(a+7)/14
  t=real(p2), bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(b*(c*xx*(d*xx*(k*xx*(f*xx-1)+15)-15)+15)))
  yy=y*y
  Ty=(fn1(b*(c*yy*(d*yy*(k*yy*(f*yy-1)+15)-15)+15)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Ca08-30 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)x0Ca(7)-(a+3)Ca(6))/4
  a=p2, b=a*(a*(a*(a+6)+11)+6)/360, c=8*(a+4), d=a+5
  k=4*(a+6), f=(a+7)/14
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=b*(c*xx*(d*xx*(k*xx*(f*xx-1)+15)-15)+15)
  Fx1=b*(c*yy*(d*yy*(k*yy*(f*yy-1)+15)-15)+15)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Ca09-01 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p2, b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c=a*(a*(a+a+36)+214)+420, d=(a+8)/18
  k=7*(a*(9*a+94)+270)/6, f=35*(a+5)/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=b*x*(16*xx*(xx*(c*xx*(d*xx-1)+k)-f)+105)
  Ty=b*y*(16*yy*(yy*(c*yy*(d*yy-1)+k)-f)+105)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Ca09-02 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p2, b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c=2*(a*(a*(a+18)+107)+210), d=(a+8)/18
  k=7*(a*(9*a+94)+270)/6, f=35*(a+5)/2
  bailout=p1+4, z=pixel:
  zz=z*z
  z=b*z*(16*zz*(zz*(c*zz*(d*zz-1)+k)-f)+105)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Ca09-03 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p2, b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c=(a+a)*(a*(a+18)+107)+420
  d=(a+8)/18, k=7*(a*(9*a+94)+270)/6, f=35*(a+5)/2
  const=p1, z=pixel:
  zz=z*z
  z=b*z*(16*zz*(zz*(c*zz*(d*zz-1)+k)-f)+105)+const
  |z|<100
  ;SOURCE: chby3.frm
}


Ca09-04 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p2, b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c=(a*(a*(a+a+36)+214)+420), d=(a+8)/18
  k=7*(a*(9*a+94)+270)/6, f=35*(a+5)/2
  const=pixel, z=p1:
  zz=z*z
  z=b*z*(16*zz*(zz*(c*zz*(d*zz-1)+k)-f)+105)+const
  |z|<100
  ;SOURCE: chby4.frm
}


Ca09-05 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p1
  b1=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c1=2*(a*(a*(a+18)+107)+210)
  d1=(a+8)/18
  e1=7*(a*(9*a+94)+270)/6
  f1=35*(a+5)/2
  b2=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c2=2*(a*(a*(a+18)+107)+210)
  d2=(a+8)/2
  e2=35*(a*(9*a+94)+270)/6
  f2=105*(a+5)/2
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=b1*z*(16*zz*(zz*(c1*zz*(d1*zz-1)+e1)-f1)+105)
  fd=b2*(16*zz*(zz*(c2*zz*(d2*zz-7)+e2)-f2)+105)
  oz=z
  z=z-f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Ca09-06 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p1
  b1=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c1=(a+a)*(a*(a+18)+107)+420
  d1=(a+8)/18
  e1=7*(a*(9*a+94)+270)/6
  f1=35*(a+5)/2
  b2=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  d2=(a+8)/2
  e2=35*(a*(9*a+94)+270)/6
  f2=105*(a+5)/2
  b3=4*a*(a*(a*(a*(a+10)+35)+50)+24)/405
  c3=(a+a)*(a*(a+18)+107)+420
  d3=a+a+16
  e3=35*(a*(9*a+94)+270)/3
  f3=105*(a+5)
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*z*(16*zz*(zz*(c1*zz*(d1*zz-1)+e1)-f1)+105)
  fd=b2*(16*zz*(zz*(c1*zz*(d2*zz-7)+e2)-f2)+105)
  fdd=b3*z*(2*zz*(c3*zz*(d3*zz-21)+e3)-f3)
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Ca09-07 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p1
  b1=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c1=(a+a)*(a*(a+18)+107)+420
  d1=(a+8)/18
  e1=7*(a*(9*a+94)+270)/6
  f1=35*(a+5)/2
  b2=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c2=(a+a)*(a*(a+18)+107)+420
  d2=(a+8)/2
  e2=35*(a*(9*a+94)+270)/6
  f2=105*(a+5)/2
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*z*(16*zz*(zz*(c1*zz*(d1*zz-1)+e1)-f1)+105)
  fd=b2*(16*zz*(zz*(c2*zz*(d2*zz-7)+e2)-f2)+105)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=b2*(16*ww*(ww*(c2*ww*(d2*ww-7)+e2)-f2)+105)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Ca09-08 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c=((a+a)*(a*(a+18)+107)+420)
  d=(a+8)/18
  k=7*(a*(9*a+94)+270)/6
  f=35*(a+5)/2
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(b*x*(16*xx*(xx*(c*xx*(d*xx-1)+k)-f)+105))
  Ty=sin(b*y*(16*yy*(yy*(c*yy*(d*yy-1)+k)-f)+105))
  x=x+t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Ca09-09 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c=(a+a)*(a*(a+18)+107)+420
  d=(a+8)/18
  k=7*(a*(9*a+94)+270)/6
  f=35*(a+5)/2
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(b*x*(16*xx*(xx*(c*xx*(d*xx-1)+k)-f)+105))
  Ty=fn1(b*y*(16*yy*(yy*(c*yy*(d*yy-1)+k)-f)+105))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Ca09-10 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c=(a+a)*(a*(a+18)+107)+420
  d=(a+8)/18
  k=7*(a*(9*a+94)+270)/6
  f=35*(a+5)/2
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=0:
  zt=z
  foz=fz
  zz=z*z
  fz=b*z*(16*zz*(zz*(c*zz*(d*zz-1)+k)-f)+105)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Ca09-11 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p2, b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c=(a+a)*(a*(a+18)+107)+420, d=(a+8)/18
  k=7*(a*(9*a+94)+270)/6, f=35*(a+5)/2
  const=p1, z=pixel:
  zz=z*z
  z=b*z*(16*zz*(zz*(c*zz*(d*zz-1)+k)-f)+105)*const
  |z|<100
  ;SOURCE: chby11.frm
}


Ca09-12 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p2, b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c=(a+a)*(a*(a+18)+107)+420, d=(a+8)/18
  k=7*(a*(9*a+94)+270)/6, f=35*(a+5)/2
  const=pixel, z=p1:
  zz=z*z
  z=b*z*(16*zz*(zz*(c*zz*(d*zz-1)+k)-f)+105)*const
  |z|<100
  ;SOURCE: chby12.frm
}


Ca09-13 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p1
  b1=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c1=2*(a*(a*(a+18)+107)+210)
  d1=(a+8)/18
  e1=7*(a*(9*a+94)+270)/6
  f1=35*(a+5)/2
  b2=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c2=2*(a*(a*(a+18)+107)+210)
  d2=(a+8)/2
  e2=35*(a*(9*a+94)+270)/6
  f2=105*(a+5)/2
  b3=4*a*(a*(a*(a*(a+10)+35)+50)+24)/405
  c3=2*(a*(a*(a+18)+107)+210)
  d3=2*(a+8)
  e3=35*(a*(9*a+94)+270)/3
  f3=105*(a+5)
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*z*(16*zz*(zz*(c1*zz*(d1*zz-1)+e1)-f1)+105)
  fd=b2*(16*zz*(zz*(c2*zz*(d2*zz-7)+e2)-f2)+105)
  fdd=b3*z*(2*zz*(c3*zz*(d3*zz-21)+e3)-f3)
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Ca09-14 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p1
  b1=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c1=(a+a)*(a*(a+18)+107)+420
  d1=(a+8)/18
  e1=7*(a*(9*a+94)+270)/6
  f1=35*(a+5)/2
  b2=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c2=(a+a)*(a*(a+18)+107)+420
  d2=(a+8)/2
  e2=35*(a*(9*a+94)+270)/6
  f2=105*(a+5)/2
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*z*(16*zz*(zz*(c1*zz*(d1*zz-1)+e1)-f1)+105)
  fd=b2*(16*zz*(zz*(c2*zz*(d2*zz-7)+e2)-f2)+105)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=b2*(16*ww*(ww*(c2*ww*(d2*ww-7)+e2)-f2)+105)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


Ca09-15 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p1
  b1=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c1=2*(a*(a*(a+18)+107)+210)
  d1=(a+8)/18
  e1=7*(a*(9*a+94)+270)/6
  f1=35*(a+5)/2
  b2=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c2=2*(a*(a*(a+18)+107)+210)
  d2=(a+8)/2
  e2=35*(a*(9*a+94)+270)/6
  f2=105*(a+5)/2
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=b1*z*(16*zz*(zz*(c1*zz*(d1*zz-1)+e1)-f1)+105)
  fd=b2*(16*zz*(zz*(c2*zz*(d2*zz-7)+e2)-f2)+105)
  oz=z
  z=z-f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Ca09-16 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c=(a+a)*(a*(a+18)+107)+420
  d=(a+8)/18
  k=7*(a*(9*a+94)+270)/6
  f=35*(a+5)/2
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=0:
  zt=z
  foz=fz
  zz=z*z
  fz=b*z*(16*zz*(zz*(c*zz*(d*zz-1)+k)-f)+105)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


Ca09-17 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p3
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c=(a+a)*(a*(a+18)+107)+420
  d=(a+8)/18
  k=7*(a*(9*a+94)+270)/6
  f=35*(a+5)/2
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=b*z*(16*zz*(zz*(c*zz*(d*zz-1)+k)-f)+105)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Ca09-18 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p3
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c=(a+a)*(a*(a+18)+107)+420
  d=(a+8)/18
  k=7*(a*(9*a+94)+270)/6
  f=35*(a+5)/2
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=b*z*(16*zz*(zz*(c*zz*(d*zz-1)+k)-f)+105)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


Ca09-19 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p2, b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c=a*(a*(a+a+36)+214)+420, d=(a+8)/18
  k=7*(a*(9*a+94)+270)/6, f=35*(a+5)/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(b*x*(16*xx*(xx*(c*xx*(d*xx-1)+k)-f)+105))
  yy=y*y
  x=x-t*(b*y*(16*yy*(yy*(c*yy*(d*yy-1)+k)-f)+105))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Ca09-20 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c=((a+a)*(a*(a+18)+107)+420)
  d=(a+8)/18
  k=7*(a*(9*a+94)+270)/6
  f=35*(a+5)/2
  bailout=real(p2)/10000
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(b*x*(16*xx*(xx*(c*xx*(d*xx-1)+k)-f)+105))
  yy=y*y
  x=x-t*sin(b*y*(16*yy*(yy*(c*yy*(d*yy-1)+k)-f)+105))
  x=x+t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Ca09-21 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c=(a+a)*(a*(a+18)+107)+420
  d=(a+8)/18
  k=7*(a*(9*a+94)+270)/6
  f=35*(a+5)/2
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*x*(16*xx*(xx*(c*xx*(d*xx-1)+k)-f)+105)))
  yy=y*y
  x=x-t*(fn1(b*y*(16*yy*(yy*(c*yy*(d*yy-1)+k)-f)+105)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Ca09-22 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c=(a+a)*(a*(a+18)+107)+420
  d=(a+8)/18
  k=7*(a*(9*a+94)+270)/6
  f=35*(a+5)/2
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(b*x*(16*xx*(xx*(c*xx*(d*xx-1)+k)-f)+105))
  Ty=fn2(b*y*(16*yy*(yy*(c*yy*(d*yy-1)+k)-f)+105))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Ca09-23 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c=(a+a)*(a*(a+18)+107)+420
  d=(a+8)/18
  k=7*(a*(9*a+94)+270)/6
  f=35*(a+5)/2
  t=real(p2), bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(b*x*(16*xx*(xx*(c*xx*(d*xx-1)+k)-f)+105))
  Ty=fn2(b*y*(16*yy*(yy*(c*yy*(d*yy-1)+k)-f)+105))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Ca09-24 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c=(a+a)*(a*(a+18)+107)+420
  d=(a+8)/18
  k=7*(a*(9*a+94)+270)/6
  f=35*(a+5)/2
  t=real(p2), bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*x*(16*xx*(xx*(c*xx*(d*xx-1)+k)-f)+105)))
  yy=y*y
  x=x-t*(fn2(b*y*(16*yy*(yy*(c*yy*(d*yy-1)+k)-f)+105)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Ca09-25 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c=(a+a)*(a*(a+18)+107)+420
  d=(a+8)/18
  k=7*(a*(9*a+94)+270)/6
  f=35*(a+5)/2
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*x*(16*xx*(xx*(c*xx*(d*xx-1)+k)-f)+105)))
  yy=y*y
  x=x-t*(fn2(b*y*(16*yy*(yy*(c*yy*(d*yy-1)+k)-f)+105)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Ca09-26 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c=(a+a)*(a*(a+18)+107)+420
  d=(a+8)/18
  k=7*(a*(9*a+94)+270)/6
  f=35*(a+5)/2
  t=real(p2), bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(b*x*(16*xx*(xx*(c*xx*(d*xx-1)+k)-f)+105)))
  yy=y*y
  Ty=(fn1(b*y*(16*yy*(yy*(c*yy*(d*yy-1)+k)-f)+105)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Ca09-27 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c=(a+a)*(a*(a+18)+107)+420
  d=(a+8)/18
  k=7*(a*(9*a+94)+270)/6
  f=35*(a+5)/2
  t=real(p2), bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(b*x*(16*xx*(xx*(c*xx*(d*xx-1)+k)-f)+105)))
  yy=y*y
  Ty=(fn1(b*y*(16*yy*(yy*(c*yy*(d*yy-1)+k)-f)+105)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Ca09-28 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c=(a+a)*(a*(a+18)+107)+420
  d=(a+8)/18
  k=7*(a*(9*a+94)+270)/6
  f=35*(a+5)/2
  t=real(p2), bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(b*x*(16*xx*(xx*(c*xx*(d*xx-1)+k)-f)+105)))
  yy=y*y
  Ty=(fn1(b*y*(16*yy*(yy*(c*yy*(d*yy-1)+k)-f)+105)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Ca09-29 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c=(a+a)*(a*(a+18)+107)+420
  d=(a+8)/18
  k=7*(a*(9*a+94)+270)/6
  f=35*(a+5)/2
  t=real(p2), bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(b*x*(16*xx*(xx*(c*xx*(d*xx-1)+k)-f)+105)))
  yy=y*y
  Ty=(fn1(b*y*(16*yy*(yy*(c*yy*(d*yy-1)+k)-f)+105)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Ca09-30 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)x0Ca(8)-(2a+7)Ca(7))/9
  a=p2, b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260, c=a*(a*(a+a+36)+214)+420
  d=(a+8)/18, k=7*(a*(9*a+94)+270)/6, f=35*(a+5)/2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=b*x0*(16*xx*(xx*(c*xx*(d*xx-1)+k)-f)+105)
  Fx1=b*x1*(16*yy*(yy*(c*yy*(d*yy-1)+k)-f)+105)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Ca10-01 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p2, b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5), d=a+a+12, k=a*(a+15)+56, f=(a+a+18)/45
  g=14*(a+a+13)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=b*(c*xx*(d*xx*(81*xx*(k*xx*(f*xx-1)+g)-1418)+2127)-31903)
  Ty=b*(c*yy*(d*yy*(81*yy*(k*yy*(f*yy-1)+g)-1418)+2127)-31903)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Ca10-02 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p2, b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5), d=2*(a+6), k=a*(a+15)+56, f=2*(a+9)/45
  g=14*(2*a+13)/5
  bailout=p1+4, z=pixel:
  zz=z*z
  z=b*(c*zz*(d*zz*(81*zz*(k*zz*(f*zz-1)+g)-1418)+2127)-31903)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Ca10-03 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p2, b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860, c=15*(a+5)
  d=a+a+12, k=a*(a+15)+56, f=(a+a+18)/45
  g=14*(a+a+13)/5
  const=p1, z=pixel:
  zz=z*z
  z=b*(c*zz*(d*zz*(81*zz*(k*zz*(f*zz-1)+g)-1418)+2127)-31903)+const
  |z|<100
  ;SOURCE: chby3.frm
}


Ca10-04 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p2, b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5), d=a+a+12, k=a*(a+15)+56, f=(a+a+18)/45
  g=14*(a+a+26)/5
  const=pixel, z=p1:
  zz=z*z
  z=b*(c*zz*(d*zz*(81*zz*(k*zz*(f*zz-1)+g)-1418)+2127)-31903)+const
  |z|<100
  ;SOURCE: chby4.frm
}


Ca10-05 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p1
  b1=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c1=15*(a+5)
  d1=2*(a+6)
  e1=a*(a+15)+56
  f1=2*(a+9)/45
  g1=14*(2*a+13)/5
  b2=a*(a*(a*(a*(a*(a+15)+85)+225)+274)+120)/12762
  e2=(a+9)/9
  f2=21*(2*a+13)/5
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz*(81*zz*(e1*zz*(f1*zz-1)+g1)-1418)+2127)-31903)
  fd=b2*z*(d1*zz*(162*zz*(e1*zz*(e2*zz-2)+f2)-2881)+2127)
  oz=z
  z=z-f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Ca10-06 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p1
  b1=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c1=15*(a+5)
  d1=a+a+12
  e1=a*(a+15)+56
  f1=(a+a+18)/45
  g1=14*(a+a+13)/5
  b2=a*(a*(a*(a*(a*(a+15)+85)+225)+274)+120)/12762
  e2=(a+9)/9
  f2=21*(a+a+13)/5
  b3=a*(a*(a*(a*(a*(a+15)+85)+225)+274)+120)/4254
  d3=a*(a+15)+56
  e3=a+9
  f3=21*(a+a+13)
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz*(81*zz*(e1*zz*(f1*zz-1)+g1)-1418)+2127)-31903)
  fd=b2*z*(d1*zz*(162*zz*(e1*zz*(e2*zz-2)+f2)-2881)+2127)
  fdd=b3*(d1*zz*(54*zz*(d3*zz*(e3*zz-14)+f3)-2881)+709)
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Ca10-07 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p1
  b1=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c1=15*(a+5)
  d1=a+a+12
  k1=a*(a+15)+56
  f1=(a+a+18)/45
  g1=14*(a+a+13)/5
  b2=a*(a*(a*(a*(a*(a+15)+85)+225)+274)+120)/12762
  d2=a*(a+15)+56
  k2=(a+9)/9
  f2=21*(a+a+13)/5
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz*(81*zz*(k1*zz*(f1*zz-1)+g1)-1418)+2127)-31903)
  fd=b2*z*(d1*zz*(162*zz*(d2*zz*(k2*zz-2)+f2)-2881)+2127)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=b2*w*(d1*ww*(162*ww*(d2*ww*(k2*ww-2)+f2)-2881)+2127)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Ca10-08 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5)
  d=a+a+12
  k=a*(a+15)+56
  f=(a+a+18)/45
  g=14*(a+a+13)/5
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(b*(c*xx*(d*xx*(81*xx*(k*xx*(f*xx-1)+g)-1418)+2127)-31903))
  Ty=sin(b*(c*yy*(d*yy*(81*yy*(k*yy*(f*yy-1)+g)-1418)+2127)-31903))
  x=x+t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Ca10-09 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5)
  d=a+a+12
  k=a*(a+15)+56
  f=(a+a+18)/45
  g=14*(a+a+26)/5
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(b*(c*xx*(d*xx*(81*xx*(k*xx*(f*xx-1)+g)-1418)+2127)-31903))
  Ty=fn1(b*(c*yy*(d*yy*(81*yy*(k*yy*(f*yy-1)+g)-1418)+2127)-31903))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Ca10-10 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5)
  d=a+a+12
  k=a*(a+15)+56
  f=(a+a+18)/45
  g=14*(a+a+13)/5
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=-31903*b:
  zt=z
  foz=fz
  zz=z*z
  fz=b*(c*zz*(d*zz*(81*zz*(k*zz*(f*zz-1)+g)-1418)+2127)-31903)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Ca10-11 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p2, b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5), d=a+a+12, k=a*(a+15)+56, f=(a+a+18)/45
  g=14*(a+a+13)/5
  const=p1, z=pixel:
  zz=z*z
  z=b*(c*zz*(d*zz*(81*zz*(k*zz*(f*zz-1)+g)-1418)+2127)-31903)*const
  |z|<100
  ;SOURCE: chby11.frm
}


Ca10-12 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p2, b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5), d=a+a+12, k=a*(a+15)+56, f=(a+a+18)/45
  g=14*(a+a+13)/5
  const=pixel, z=p1:
  zz=z*z
  z=b*(c*zz*(d*zz*(81*zz*(k*zz*(f*zz-1)+g)-1418)+2127)-31903)*const
  |z|<100
  ;SOURCE: chby12.frm
}


Ca10-13 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p1
  b1=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c1=15*(a+5)
  d1=2*(a+6)
  e1=a*(a+15)+56
  f1=2*(a+9)/45
  g1=14*(2*a+13)/5
  b2=a*(a*(a*(a*(a*(a+15)+85)+225)+274)+120)/12762
  e2=(a+9)/9
  f2=21*(2*a+13)/5
  b3=a*(a*(a*(a*(a*(a+15)+85)+225)+274)+120)/4254
  e3=a+9
  f3=21*(2*a+13)
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz*(81*zz*(e1*zz*(f1*zz-1)+g1)-1418)+2127)-31903)
  fd=b2*z*(d1*zz*(162*zz*(e1*zz*(e2*zz-2)+f2)-2881)+2127)
  fdd=b3*(d1*zz*(54*zz*(e1*zz*(e3*zz-14)+f3)-2881)+709)
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Ca10-14 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p1
  b1=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c1=15*(a+5)
  d1=a+a+12
  k1=a*(a+15)+56
  f1=(a+a+18)/45
  g1=14*(a+a+13)/5
  b2=a*(a*(a*(a*(a*(a+15)+85)+225)+274)+120)/12762
  k2=(a+9)/9
  f2=21*(a+a+13)/5
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz*(81*zz*(k1*zz*(f1*zz-1)+g1)-1418)+2127)-31903)
  fd=b2*z*(d1*zz*(162*zz*(k1*zz*(k2*zz-2)+f2)-2881)+2127)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=b2*w*(d1*ww*(162*ww*(k1*ww*(k2*ww-2)+f)-2881)+2127)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


Ca10-15 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p1
  b1=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c1=15*(a+5)
  d1=2*(a+6)
  e1=a*(a+15)+56
  f1=2*(a+9)/45
  g1=14*(2*a+13)/5
  b2=a*(a*(a*(a*(a*(a+15)+85)+225)+274)+120)/12762
  e2=(a+9)/9
  f2=21*(2*a+13)/5
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz*(81*zz*(e1*zz*(f1*zz-1)+g1)-1418)+2127)-31903)
  fd=b2*z*(d1*zz*(162*zz*(e1*zz*(e2*zz-2)+f2)-2881)+2127)
  oz=z
  z=z-f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Ca10-16 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5)
  d=a+a+12
  k=a*(a+15)+56
  f=(a+a+18)/45
  g=14*(a+a+13)/5
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=-31903*b:
  zt=z
  foz=fz
  zz=z*z
  fz=b*(c*zz*(d*zz*(81*zz*(k*zz*(f*zz-1)+g)-1418)+2127)-31903)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


Ca10-17 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p3
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5)
  d=a+a+12
  k=a*(a+15)+56
  f=(a+a+18)/45
  g=14*(a+a+13)/5
  z=pixel, oz=0
  fz=-31903*b
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=b*(c*zz*(d*zz*(81*zz*(k*zz*(f*zz-1)+g)-1418)+2127)-31903)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Ca10-18 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p3
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5)
  d=a+a+12
  k=a*(a+15)+56
  f=(a+a+18)/45
  g=14*(a+a+13)/5
  z=pixel, oz=0
  fz=-31903*b
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=b*(c*zz*(d*zz*(81*zz*(k*zz*(f*zz-1)+g)-1418)+2127)-31903)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


Ca10-19 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p2, b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5), d=a+a+12, k=a*(a+15)+56, f=(a+a+18)/45
  g=14*(a+a+13)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(b*(c*xx*(d*xx*(81*xx*(k*xx*(f*xx-1)+g)-1418)+2127)-31903))
  yy=y*y
  x=x-t*(b*(c*yy*(d*yy*(81*yy*(k*yy*(f*yy-1)+g)-1418)+2127)-31903))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Ca10-20 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5)
  d=a+a+12
  k=a*(a+15)+56
  f=(a+a+18)/45
  g=14*(a+a+13)/5
  bailout=real(p2)/10000
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(b*(c*xx*(d*xx*(81*xx*(k*xx*(f*xx-1)+g)-1418)+2127)-31903))
  yy=y*y
  x=x-t*sin(b*(c*yy*(d*yy*(81*yy*(k*yy*(f*yy-1)+g)-1418)+2127)-31903))
  x=x+t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Ca10-21 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5)
  d=a+a+12
  k=a*(a+15)+56
  f=(a+a+18)/45
  g=14*(a+a+26)/5
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*(c*xx*(d*xx*(81*xx*(k*xx*(f*xx-1)+g)-1418)+2127)-31903)))
  yy=y*y
  x=x-t*(fn1(b*(c*yy*(d*yy*(81*yy*(k*yy*(f*yy-1)+g)-1418)+2127)-31903)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Ca10-22 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5)
  d=a+a+12
  k=a*(a+15)+56
  f=(a+a+18)/45
  g=14*(a+a+26)/5
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(b*(c*xx*(d*xx*(81*xx*(k*xx*(f*xx-1)+g)-1418)+2127)-31903))
  Ty=fn2(b*(c*yy*(d*yy*(81*yy*(k*yy*(f*yy-1)+g)-1418)+2127)-31903))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Ca10-23 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5)
  d=a+a+12
  k=a*(a+15)+56
  f=(a+a+18)/45
  g=14*(a+a+26)/5
  t=real(p2), bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(b*(c*xx*(d*xx*(81*xx*(k*xx*(f*xx-1)+g)-1418)+2127)-31903))
  Ty=fn2(b*(c*yy*(d*yy*(81*yy*(k*yy*(f*yy-1)+g)-1418)+2127)-31903))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Ca10-24 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5)
  d=a+a+12
  k=a*(a+15)+56
  f=(a+a+18)/45
  g=14*(a+a+26)/5
  t=real(p2), bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*(c*xx*(d*xx*(81*xx*(k*xx*(f*xx-1)+g)-1418)+2127)-31903)))
  yy=y*y
  x=x-t*(fn2(b*(c*yy*(d*yy*(81*yy*(k*yy*(f*yy-1)+g)-1418)+2127)-31903)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Ca10-25 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5)
  d=a+a+12
  k=a*(a+15)+56
  f=(a+a+18)/45
  g=14*(a+a+26)/5
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*(c*xx*(d*xx*(81*xx*(k*xx*(f*xx-1)+g)-1418)+2127)-31903)))
  yy=y*y
  x=x-t*(fn2(b*(c*yy*(d*yy*(81*yy*(k*yy*(f*yy-1)+g)-1418)+2127)-31903)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Ca10-26 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5)
  d=a+a+12
  k=a*(a+15)+56
  f=(a+a+18)/45
  g=14*(a+a+26)/5
  t=real(p2), bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(b*(c*xx*(d*xx*(81*xx*(k*xx*(f*xx-1)+g)-1418)+2127)-31903)))
  yy=y*y
  Ty=(fn1(b*(c*yy*(d*yy*(81*yy*(k*yy*(f*yy-1)+g)-1418)+2127)-31903)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Ca10-27 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5)
  d=a+a+12
  k=a*(a+15)+56
  f=(a+a+18)/45
  g=14*(a+a+26)/5
  t=real(p2), bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(b*(c*xx*(d*xx*(81*xx*(k*xx*(f*xx-1)+g)-1418)+2127)-31903)))
  yy=y*y
  Ty=(fn1(b*(c*yy*(d*yy*(81*yy*(k*yy*(f*yy-1)+g)-1418)+2127)-31903)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Ca10-28 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5)
  d=a+a+12
  k=a*(a+15)+56
  f=(a+a+18)/45
  g=14*(a+a+26)/5
  t=real(p2), bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(b*(c*xx*(d*xx*(81*xx*(k*xx*(f*xx-1)+g)-1418)+2127)-31903)))
  yy=y*y
  Ty=(fn1(b*(c*yy*(d*yy*(81*yy*(k*yy*(f*yy-1)+g)-1418)+2127)-31903)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Ca10-29 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5)
  d=a+a+12
  k=a*(a+15)+56
  f=(a+a+18)/45
  g=14*(a+a+26)/5
  t=real(p2), bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(b*(c*xx*(d*xx*(81*xx*(k*xx*(f*xx-1)+g)-1418)+2127)-31903)))
  yy=y*y
  Ty=(fn1(b*(c*yy*(d*yy*(81*yy*(k*yy*(f*yy-1)+g)-1418)+2127)-31903)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Ca10-30 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)x0Ca(9)-(a+4)Ca(8))/5
  a=p2, b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5), d=a+a+12, k=a*(a+15)+56, f=(a+a+18)/45
  g=14*(a+a+13)/5
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=b*(c*xx*(d*xx*(81*xx*(k*xx*(f*xx-1)+g)-1418)+2127)-31903)
  Fx1=b*(c*yy*(d*yy*(81*yy*(k*yy*(f*yy-1)+g)-1418)+2127)-31903)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Candy {; (c) Jay Hill, 1998
       ; use outside=summ periodicity=0 float=y
  done = 1, z = 0, zc = 0, c = pixel 
  t4=8+4*c*(1+sqrt(-4*c-7)) 
  IF (|t4|<=1)
    z=z+128*abs(imag(log((t4+sqrt(4.5)-1))))/pi
    done=-1 
  ELSE
    z=z+64
  ENDIF
  :             ; initialization.
  zc=sqr(zc) + c 
  IF (|zc| >= 4)
    done=-1 
  ENDIF
  done >= 0 
  ;SOURCE: 98msg.frm
}


CANON1 {; 12/2/94 a,b,c are modified by fn(), z value is bailout 
  z=pixel, c=1, a=p1, b=p2:
  z=fn1(z)+(a*b*c)
  |z|<=4
  a=(fn2(z)+a)/2
  |z|<=8
  b=(fn3(z)+b)/4
  |z|<=16
  c=(fn4(z)+c)/8
  |z|<=32
  ;SOURCE: canon.frm
}


CANON2 {; 12/2/94 z is modified by fn()
  z=pixel, c=1, a=p1, b=p2:
  z=fn1(z)+(a*b*c)
  |z|<=4
  z=(fn2(z)+a)/2
  |z|<=8
  z=(fn3(z)+b)/4
  |z|<=16
  z=(fn4(z)+c)/8
  |z|<=32
  ;SOURCE: canon.frm
}


CANON3 {; 12/2/94
  z=pixel, c=1, a=p1, b=p2:
  z=fn1(z)+(a*b*c)
  |z|<=4
  a=(fn2(z)*a)/2
  |z|<=8
  b=(fn3(z)*b)/4
  |z|<=16
  c=(fn4(z)*c)/8
  |z|<=32
  ;SOURCE: canon.frm
}


CANON4 {; 12/3/94
  z=pixel, c=z^2, a=p1, b=p2:
  z=fn1(z)+(a*b*c)
  |z|<=4
  a=(fn2(z)*a)/2
  |z|<=8
  b=(fn3(z)*b)/4
  |z|<=16
  c=(fn4(z)*c)/8
  |z|<=32
  ;SOURCE: canon.frm
}


CANON5 {; 12/3/94
  z=pixel, c=z^2, a=p1, b=p2:
  z=fn1(z)+(a*b*c)
  |z|<=4
  z=(fn2(z)*a)/2
  |z|<=8
  z=(fn3(z)*b)/4
  |z|<=16
  z=(fn4(z)*c)/8
  |z|<=32
  a=z/2
  b=z/4
  c=z/8
  ;SOURCE: canon.frm
}


CANON6 {; 12/3/94
  z=pixel, c=z^2, a=p1, b=p2:
  z=fn1(z)-(a*b*c)
  |z|<=4
  a=(fn2(z)-a)/2
  |z|<=8
  b=(fn3(z)-b)/4
  |z|<=16
  c=(fn4(z)-c)/8
  |z|<=32
  ;SOURCE: canon.frm
}


Cardioid {; author not listed
  z = 0, x = real(pixel), y=imag(pixel)
  c=x*(cos(y)+x*sin(y)):
  z=sqr(z)+c
  |z| < 4
  ;SOURCE: frmtutor.frm
}


cardo {; Giuseppe Zito
  z = pixel
  c0 = -0.056743
  c1 = 0.028088
  c4 = -0.461535
  c6 = 0.210579
  c7 = 0.98124
  d0 = -0.53239
  d4 = -0.823486
  d6 = 0.0245
  : 
  x = real(z), y = imag(z)
  s0 =c0
  s0 = s0 *c1
  s0 = s0 /y
  s0 = s0 +c4
  s0 = s0 +y
  s1 =c6
  s1 = s1 -c7
  s1 = s1 *x
  s2 = x
  s1 = s1 +s2
  s0 = s0 +s1
  newx = s0 
  s0 =d0
  s0 = s0 +d4
  s0 = s0 *d6
  s0 = s0 -x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


CarlsonJ1 {; from P. Carlson, modified by J.P. Louvet
           ; P1 = c
           ; P2 = degre
           ; P3 = iter (normalement 4)
  z=pixel
  c=P1:
  Z=fn1(C*(Z^P2-1))
  |z|<=P3
  ;SOURCE: jpl1.frm
}


carnival {; Jim Muth
          ; As Posted in Fractal-Art, 4/97
  z=c=pixel:
  a=(z*z*z)+(c-2)*z-c
  b=2*(sqr(z))+c-1
  z=z-1*a/b
  .000000000000000000000000000001 <= |a|
  ;SOURCE: 97msg.frm
}


Cayley-jul {; Mark Townsend, 17 Feb 1999
            ; Always use floating point math and turn
            ; periodicity checking off.
;*****************************
  z = pixel, a = p1, oldz = 0:
;*****************************
  oldz = z
  z = (2 * z * z * z - (a - 1)) / (3 * z * z - a)
  |z-oldz| >= 0.00001
  ;SOURCE: 99msg.frm
}


Cayley-mand {; Mark Townsend, 17 Feb 1999
             ; Always use floating point math and turn
             ; periodicity checking off.
;*************************
  z = oldz = 0, a = pixel:
;*************************
  oldz = z
  z = (2 * z * z * z - (a - 1)) / (3 * z * z - a)
  |z - oldz| >= 0.00001
  ;SOURCE: 99msg.frm
}


cc3 {; Revised 4/27/96 to eliminate superfluous "+c"
     ; Original version of this formula may be discarded
  z=pixel, m=(z+1)+z, n=(z-1)+z
  x=srand(z), y=fn4(|z-1|^(x)):
  z=(fn1(m)*fn2(y^(n^z)))/fn3(x+1)+fn4(y)
  |z|<=4
  ;SOURCE: new.frm
}


Cdp_Jul_Mand {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = 0 if Mset, otherwise Julia set
    ; imag(p1) = maximum value of ratio (try 0.01 to 0.3)
    ; p2       = Julia set coordinates (not used if Mset)
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
  z = iter = range_num = bailout = 0
  IF (real(p1) == 0)
    prev_w = 0
    c = pixel
  ELSE
    prev_w = pixel
    c = p2
  ENDIF
  max_r = imag(p1)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  index_factor = (colors_in_range - 1) / max_r
  :
  w = prev_w * prev_w + c
    ;
  r = |prev_w| / |w|
  prev_w = w
  IF (r < max_r && iter > 0)
    bailout = 1
    z = index_factor * r + range_num * colors_in_range + 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < 4
  ;SOURCE: 98msg.frm
}


CDualist20 {
  z=pixel:
  x=real(z)
  y=imag(z)
  nx=1-abs(x-y)
  ny=fn2(abs(x+y-1))
  z=fn1(nx+flip(ny))+whitesq
  |z+1|<=4
  ;SOURCE: ad978-1.frm
}


CDualist21 {
  bailout=p1
  z=pixel:
  x=real(z)
  y=imag(z)
  nx=fn1(abs(x-y)+whitesq)
  ny=1-abs(x+y-1)
  z=nx+flip(ny)
  |z|<=bailout
  ;SOURCE: ad978-1.frm
}


CDualist3M {
  bailout=pixel
  z=pixel:
  x=fn1(real(z))+whitesq
  y=imag(z)
  nx=1-abs(x-y)
  ny=abs(x+y-1)
  z=fn2(nx)+fn4(flip(ny))
  |z|<=|bailout|
  ;SOURCE: ad978-1.frm
}


cell4 {; Kerry Mitchell 29aug98
  z=pixel, cell=real(p1), fac=imag(p1)
  iter=-1, done=0, itermax=real(p2):
  x=real(z), y=imag(z)
  i=trunc(x/cell)*cell, x=x-i
  j=trunc(y/cell)*cell, y=y-j
  u=y, v=-x
  x=i+u, y=j+v
  iter=iter+1, z=x+flip(y), cell=cell*fac
  IF (iter==itermax)
    done=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


Celtic_Grav{; Kathy Roth 9-5-98 adapted from Paul W. Carlson
            ; copyright (c) Paul W. Carlson, 1998
            ; original Gravijul by Mark Christenson
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = Julia set coordinates
    ;   real(p2) = a factor controlling the width of the stalks
    ;   imag(p2) = maximum iterations for stalks
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in a color range
    ;****************************************************
  w = pixel
  c = p1
  z = 0
  bailout = 0
  iter = 0
  range_num = 0
  stalk_width = real(p2)
  max_iter = imag(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  ratio = (colors_in_range - 1) / stalk_width:
    ;
  q=fn1(w)
  w=fn3(1/fn2(q*q)), wr = real(w)
  w = w - wr + abs(wr) - c
    ;
  IF (abs(real(w)) <= abs(imag(w)))
    min_dist_to_axis = abs(real(w))
  ELSE
    min_dist_to_axis = abs(imag(w))
  ENDIF
  IF (min_dist_to_axis < stalk_width && iter > 1 && iter <= max_iter)
    z = ratio * min_dist_to_axis + range_num * colors_in_range + 1
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


Celtic_Julia {; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = Julia set coordinates
    ;   real(p2) = a factor controlling the width of the stalks
    ;   imag(p2) = maximum iterations for stalks
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in a color range
    ;****************************************************
  w = pixel
  c = p1
  z = 0
  bailout = 0
  iter = 0
  range_num = 0
  stalk_width = real(p2)
  max_iter = imag(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  ratio = (colors_in_range - 1) / stalk_width:
    ;
  w = w * w, wr = real(w)
  w = w - wr + abs(wr) - c
    ;
  IF (abs(real(w)) <= abs(imag(w)))
    min_dist_to_axis = abs(real(w))
  ELSE
    min_dist_to_axis = abs(imag(w))
  ENDIF
  IF (min_dist_to_axis < stalk_width && iter > 1 && iter <= max_iter)
    z = ratio * min_dist_to_axis + range_num * colors_in_range + 1
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


center_jul {
        ; 
        ; For Kerry Mitchell's explanation of the "circle & line"
        ;    coloring method, see the end of formula
        ;    general_man-c&l
        ; 
        ; "circle & line thru center" coloring method for Julia sets
        ; p1 = c = Julia parameter
        ; p2 = x-circle center
        ; real(p3) = x-circle radius
        ; imag(p3) = y-line slope angle, degrees
        ; bailout hardcoded to 10^12
        ; use "decomp=256" coloring
        ;
  zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
  cenx=p2, radx=real(p3), rad2x=radx*radx
  theta=imag(p3)*pi/180, ct=cos(theta), st=sin(theta)
  ay=-st, by=ct, cy=-ct*imag(cenx)+st*real(cenx):
  iter=iter+1, zc=sqr(zc)+c
  tempx=|zc-cenx|-rad2x
  tempy=ay*real(zc)+by*imag(zc)+cy
  temp=tempx+flip(tempy), r=|temp|
  IF (r<rmin)
    rmin=r, z=temp
  ENDIF
  IF ((|zc|>bailout)||(iter==maxit))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


cenx=-ceny_jul {; Kerry Mitchell 26aug98
        ; 
        ; See the end of the formula general_man-2circ for 
        ;    Kerry Mitchell's explanation of the "2 circles 
        ;    coloring method".
        ;
        ; "2 opposing circles" coloring method for Julia sets
        ; p1 = c = Julia parameter
        ; p2 = x-circle center
        ; -p2 = y-circle center
        ; real(p3) = x-circle radius
        ; imag(p3) = y-circle radius
        ; bailout hardcoded to 10^12
        ; use "decomp=256" coloring
        ;
  zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
  cenx=p2, radx=real(p3), rad2x=radx*radx
  ceny=-cenx, rady=imag(p3), rad2y=rady*rady:
  iter=iter+1, zc=sqr(zc)+c
  tempx=|zc-cenx|-rad2x
  tempy=|zc-ceny|-rad2y
  temp=tempx+flip(tempy), r=|temp|
  IF (r<rmin)
    rmin=r, z=temp
  ENDIF
  IF ((|zc|>bailout)||(iter==maxit))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


cenx=ceny_jul {; Kerry Mitchell 26aug98
        ; 
        ; See the end of the formula general_man-2circ for 
        ;    Kerry Mitchell's explanation of the "2 circles 
        ;    coloring method".
        ; 
        ; "2 concentric circles" coloring method for Julia sets
        ; p1 = c = Julia parameter
        ; p2 = (both) circle center
        ; real(p3) = x-circle radius
        ; imag(p3) = y-circle radius
        ; bailout hardcoded to 10^12
        ; use "decomp=256" coloring
        ;
  zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
  cenx=p2, radx=real(p3), rad2x=radx*radx
  ceny=cenx, rady=imag(p3), rad2y=rady*rady:
  iter=iter+1, zc=sqr(zc)+c
  tempx=|zc-cenx|-rad2x
  tempy=|zc-ceny|-rad2y
  temp=tempx+flip(tempy), r=|temp|
  IF (r<rmin)
    rmin=r, z=temp
  ENDIF
  IF ((|zc|>bailout)||(iter==maxit))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


Cerreal (XAXIS) {
  z = c = pixel:
  z = z * (fn1(c^2)/sqrt(z^2))/c - z^2 + p1
  |z| < 4
  ;SOURCE: surreal.frm
}


cexp3 {; Giuseppe Zito
  z = pixel
  c0 = -0.133255
  c5 = 0.588995
  d0 = 0.054524
  d1 = -0.024335
  d3 = -0.104328
  d5 = 0.065463
  d8 = -0.626533
  d9 = 0.99893
  : 
  x = real(z), y = imag(z)
  s0 =c0
  s0 = s0 *c5
  s0 = s0 +y
  newx = s0 
  s0 =d0
  s0 = s0 *d1
  s0 = s0 /d3
  s0 = s0 +d5
  s0 = s0 *y
  s0 = s0 -x
  s0 = s0 -d8
  s0 = s0 /d9
  s0 = s0 +x
  s0 = s0 -x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


CGhalley (XYAXIS) {; Chris Green -- Halley's formula
   ; P1 real usually 1 to 1.5, P1 imag usually zero. Use floating point.
  z=(1,1):
  z5=z*z*z*z*z
  z6=z*z5
  z7=z*z6
  z=z-p1*((z7-z-pixel)/ ((7.0*z6-1)-(42.0*z5)*(z7-z-pixel)/(14.0*z6-2)))
  0.0001 <= |z7-z-pixel|
  ;SOURCE: fractint.frm
}


CGNewton3 {; Chris Green -- A variation on newton iteration.
  ; The initial guess is fixed at (1,1), but the equation solved
  ; is different at each pixel ( x^3-pixel=0 is solved).
  ; Use floating point.
  ; Try P1=1.8.
  z=(1,1):
  z2=z*z
  z3=z*z2
  z=z-p1*(z3-pixel)/(3.0*z2)
  0.0001 < |z3-pixel|
  ;SOURCE: fractint.frm
}


CGNewtonSinExp (XAXIS) {
  z=pixel:
  z1=exp(z)
  z2=sin(z)+z1-z
  z=z-p1*z2/(cos(z)+z1)
  .0001 < |z2|
  ;SOURCE: fractint.frm
}


CGNewtonSinExp-M (XAXIS) {; Modified by Sylvie Gallet
  z=pixel:
  z1=exp(z)
  z2=sin(z)+z1-z
  z=z-p1*z2/(cos(z)+z1)
  p2 < |z2|
  ;SOURCE: 97msg.frm
}


chaos {; Giuseppe Zito
  z = pixel
  c0 = -0.515386
  d0 = -0.571459
  d1 = 0.730458
  d5 = 0.429136
  d7 = -0.664959
  d13 = -0.773096
  : 
  x = real(z), y = imag(z)
  s0 =c0
  s0 = s0 /y
  s1 = x
  s1 = s1 -x
  s0 = s0 +s1
  s0 = s0 -x
  newx = s0 
  s0 =d0
  s0 = s0 *d1
  s1 =d5
  s1 = s1 -x
  s1 = s1 +d7
  s0 = s0 +s1
  s0 = s0 -x
  s0 = s0 +x
  s0 = s0 *d13
  s0 = s0 +y
  s0 = s0 -x
  s0 = s0 -x
  s0 = s0 -y
  s0 = s0 +x
  s0 = s0 -x
  s0 = s0 /y
  s0 = s0 /y
  s0 = s0 +y
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


Chaos12 {; Peter Anders anders@physik.hu-berlin.de
  cx=real(pixel), cy=imag(pixel), xo=0, yo=-cy/2:
  x=xo*xo-yo*yo+cx*yo
  y=2*xo*yo+cy*xo
  z=x+y*i
  xo=x
  yo=y           
  |fn1(z)|<real(p2) 
  ;SOURCE: anders.frm
}


ChaoticDualist1 {
  bailout=p1
  z=pixel:
  x=real(z)
  y=imag(z)
  nx=1-abs(x-y)
  ny=1-abs(x+y-1)
  z=nx+flip(ny)
  |z|<=bailout
  ;SOURCE: 98msg.frm
}


ChaoticDualist1M {
  bailout=pixel
  z=pixel:
  x=real(z)
  y=imag(z)
  nx=1-abs(x-y)
  ny=1-abs(x+y-1)
  z=nx+flip(ny)
  |z|<=|bailout|
  ;SOURCE: 98msg.frm
}


ChaoticDualist2 {
  bailout=p1
  z=pixel:
  x=real(z)
  y=imag(z)
  nx=abs(x-y)
  ny=1-abs(x+y-1)
  z=nx+flip(ny)
  |z|<=bailout
  ;SOURCE: 98msg.frm
}


ChaoticDualist2M {
  bailout=pixel
  z=pixel:
  x=real(z)
  y=imag(z)
  nx=abs(x-y)
  ny=1-abs(x+y-1)
  z=nx+flip(ny)
  |z|<=|bailout|
  ;SOURCE: 98msg.frm
}


ChaoticDualist3 {
  bailout=p1
  z=pixel:
  x=real(z)
  y=imag(z)
  nx=1-abs(x-y)
  ny=abs(x+y-1)
  z=nx+flip(ny)
  |z|<=bailout
  ;SOURCE: 98msg.frm
}


ChaoticDualist3M {
  bailout=pixel
  z=pixel:
  x=real(z)
  y=imag(z)
  nx=1-abs(x-y)
  ny=abs(x+y-1)
  z=nx+flip(ny)
  |z|<=|bailout|
  ;SOURCE: 98msg.frm
}


ChaoticDualist4 {
  bailout=p1
  z=pixel:
  x=real(z)
  y=imag(z)
  nx=1-abs(x-y+1)
  ny=1-abs(x+y-1)
  z=nx+flip(ny)
  |z|<=bailout
  ;SOURCE: 98msg.frm
}


ChaoticDualist4M {
  bailout=pixel
  z=pixel:
  x=real(z)
  y=imag(z)
  nx=1-abs(x-y+1)
  ny=1-abs(x+y-1)
  z=nx+flip(ny)
  |z|<=|bailout|
  ;SOURCE: 98msg.frm
}


Chebyshev (XAXIS) {; By Alastair Scott
  z = pixel:
  z = pixel * cos(p1*(1.57059-z*(1+0.16667*z*z+0.075*z*z*z*z+0.44643*z*z*z*z*z*z+0.030309*z*z*z*z*z*z*z*z)))
  |z|<=4 
  ;SOURCE: elliptic.frm
}


ChebyshevFN (XAXIS) {; Generalisation by Jon Horner
  z = pixel:
  z = pixel * fn1(p1*(1.57059-z*(1+0.16667*z*z+0.075*z*z*z*z+0.44643*z*z*z*z*z*z+0.030309*z*z*z*z*z*z*z*z)))
  |z|<=4 
  ;SOURCE: elliptic.frm
}


cheshire {; Giuseppe Zito
  z = pixel
  c2 = -0.412915
  c6 = -0.695646
  d1 = 0.964648
  d3 = -0.73963
  : 
  x = real(z), y = imag(z)
  s0 = y
  s0 = s0 +x
  s0 = s0 *c2
  s0 = s0 *y
  s0 = s0 *c6
  s0 = s0 *x
  s0 = s0 -y
  newx = s0 
  s0 = x
  s0 = s0 +d1
  s0 = s0 *x
  s0 = s0 +d3
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


Chico {; Mutation of 'M-SetInNewton'. Mutated by Bradley Beacham [74223,2745]
       ; Original formula by Jon Horner [100112,1700]
       ; For 'M-SetInNewton' set FN1 & FN2 =IDENT and P1 & P2 = default
       ; p1 & p2 = Parameters (default 3,0 and 0,0)
  z = 0, c = fn1(pixel), cminusone = c-1
   ; The next line sets k=default if p1=0, else k=p1
  k = (3 * (|p1|<=0) + p1)
  kminusone = k - 1:
  oldz = z
  nm = k*c-kminusone*z*cminusone
  dn = k*(k*z*z+cminusone)
  z = fn2(nm/dn)+kminusone*z/k + p2
  0.01 <= |(z-oldz)|
  ;SOURCE: dons.frm
}


Chimney (XAXIS) {; Classic fractal with different bailout criteria
  z=Pixel:
  z=sqr(z)+Pixel
  abs(real(z))<=real(p1)
  ;SOURCE: hutton.frm
}


ChZZ (XAXIS) {; Jm Collard-Richard
  z=pixel:
  zz=z^z
  z1=cosh(z)-zz
  z2=sinh(z)-(log(z)+1)*zz
  z=z-(z1/z2)
  0.001<=|z1| 
  ;SOURCE: jmcr2.frm
}


circola {; Giuseppe Zito
  z = pixel
  c3 = 0.639032
  c5 = -0.756293
  c11 = -0.239036
  c12 = 0.646753
  d8 = -0.646844
  : 
  x = real(z), y = imag(z)
  s0 = y
  s0 = s0 *c3
  s0 = s0 +x
  s0 = s0 *c5
  s0 = s0 +x
  s0 = s0 -x
  s0 = s0 /y
  s0 = s0 +c11
  s0 = s0 +c12
  newx = s0 
  s0 = x
  s0 = s0 /y
  s0 = s0 *x
  s0 = s0 +y
  s0 = s0 *d8
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


classic-M1 {; Jay Hill, 1998
            ; requires periodicity=0 and outside=summ
  continue = 1
  z = 0
  zc = c = pixel
  :
  IF (|zc| > 4)
    continue = 0     ; we want to stop
  ELSE
    zc = sqr(zc) + c
  ENDIF
  continue == 1      ; keep going while continue is 1
  ;SOURCE: 98msg.frm
}


classic-shift (XAXIS) {; Jay Hill, 1998
  continue = 1
  z = 0
  zc = c = pixel+.25 + ((pixel-p1)*p2) *whitesq 
  :
  IF (|zc| > 40)
    continue = 0
  ELSE
    zc = sqr(zc) + c
  ENDIF
  continue == 1
  ;SOURCE: 98msg.frm
}


classic-shift2 (XAXIS) {; Jay Hill, 1998
  continue = 1
  z = 0
  zc = c = pixel+.25 + ((pixel-p1)*p2) *whitesq
  :
  IF (|zc| > 40)
    continue = 0
  ELSE
    zc = sqr(zc) + c
  ENDIF
  continue == 1
  ;SOURCE: 0from_ml.frm
}


classic-shift_ (XAXIS) {; Jay Hill, 1998
  continue = 1
  z = 0
  zc = c = pixel+.25 + ((pixel-p1)*p2) *whitesq 
  :
  IF (|zc| > 40)
    continue = 0
  ELSE
    zc = sqr(zc) + c
  ENDIF
  continue == 1
  ;SOURCE: frac_ml.frm
}


classic_shift {; Jay Hill, 1998
               ; shift one midget over another, merge images
               ; p1 = shift of first midget
               ; p2 = scaling factor of first midget relative to second
               ; p3 = shift of second midget
               ; use  outside=summ periodicity=0 passes=1float=y 
  continue = 1
  z = 0
  zc = c = (pixel+p3)*(1-whitesq) + (pixel/p2+p1) *whitesq 
  :
  IF (|zc| > 40)
    continue = 0
  ELSE
    zc = sqr(zc) + c
  endif
  continue == 1
  ;SOURCE: 98msg.frm
}


classic_shift_b {; Jay Hill, 1998
    ; shift one midget over another, merge images
    ; p1 = shift of first midget
    ; p2 = scaling factor of first midget relative to second
    ; p3 = shift of second midget
    ; use outside=summ periodicity=0 passes=1float=y
  done = 1, z = 0
  zc = c = (pixel+p3)*(1-whitesq) + (pixel/p2+p1) * whitesq
  s=|c| 
  t1=(256*s - 96)*s + 32*Real(c), t2=16*s + 32*Real(c) + 16
  B=sqrt(-4*c-7), t3=|8+4*c*(1-B)|, t4=|8+4*c*(1+B)| 
   z=z + 249*(t1<=3) + 250*(t2<=1) + 251*(t3<=1) + 252*(t4<=1) 
  IF (z>0)         ; for periods 1, 2, 3
    done=-1        ; color is set for c in a component, skip iterations
  ENDIF
  :
  zc=sqr(zc) + c   ; standard MSet iteration
  IF (|zc| >= 4)   ; Bailout at 4
    done=-1        ; Set flag to force an exit.
  ENDIF
  done >= 0        ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}


classic_shift_c {; (c) Jay Hill, 1998
       ; shift one midget over another, merge images
       ; p1 = shift of first midget
       ; p2 = scaling factor of first midget relative to second
       ; p3 = shift of second midget
       ; use outside=summ periodicity=0 passes=1 float=y
  done = 1, z = 0
  zc = c = (pixel+p3)*(1-whitesq) + (pixel/p2+p1) * whitesq
  t1=(1-sqrt(1-4*c)), t2=4*(c+1)
  B=sqrt(-4*c-7), t3=8+4*c*(1-B), t4=8+4*c*(1+B)
  z=z+252*(|t1|<=1) + 251*(|t2|<=1) + 250*(|t3|<=1) + 249*(|t4|<=1)
  IF (z == 0)
    L0=2, L1=2, L2=2
    IF ((4*c+3) !=0)
      Y=pi*sqrt(-1)/1.5, X = 2*sqrt((4*c+3)/3)
      X3 = asinh(-16/X^3)/3, Zz = 2*(c+1)*c + 2
      F=X*sinh(X3), L0= 8*((c*(F+1)*F + Zz))
      F=X*sinh(X3 + Y), L1= 8*((c*(F+1)*F + Zz))
      F=X*sinh(X3 - Y), L2= 8*((c*(F+1)*F + Zz))
      z=z + 248*(|L0|<=1) + 247*(|L1|<=1) + 246*(|L2|<=1)
    ENDIF
  ENDIF
  IF (z==0)
    cr=c-(-1.941782090318198)
    q = 256*((1.599198516106379e+01) + ((-3.968470663915286e+01)/2 \
         + ((5.209992715716362e+01)/6 + ((-2.278857421875000e+01)/24 \
         )*cr)*cr)*cr)*cr
    z=z+245*(|q|<1)
  ENDIF
  IF (z>0)       ; for periods 1, 2, 3 and 4
    done=-1      ; color is set for c in a component, skip iterations
  ENDIF
  :
  zc=sqr(zc) + c ; standard MSet iteration
  IF (|zc| >= 4) ; Bailout at 4
    done=-1      ; Set flag to force an exit.
  ENDIF
  done >= 0      ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}


clipover (XAXIS) {
   ; Lets turn it inside out like the mandover mapping.
  z =1/pixel, zp = (0,0):
  temp = z
  z = -(z^.5) - zp
  zp = temp
  |zp| <= 4 
  ;SOURCE: noel.frm
}


clips (XAXIS) {
   ; A rather bizzare varient made with a sign change.
  z = pixel, zp = (0,0):
  temp = z
  z = -(z^.5) - zp
  zp = temp
  |zp| <= 4 
  ;SOURCE: noel.frm
}


clown {; Giuseppe Zito
  z = pixel
  c0=real(p1)
  IF (real(p1)==0)
    c0 = 0.596877
  ENDIF
  c1 = -0.439639
  c4 = 0.620626
  c7 = -0.644748
  d0 = 0.135564
  : 
  x = real(z), y = imag(z)
  s0 =c0
  s0 = s0 *c1
  s0 = s0 *y
  s0 = s0 *y
  s0 = s0 +c4
  s0 = s0 /c7
  s0 = s0 -y
  newx = s0 
  s0 =d0
  s0 = s0 *y
  s0 = s0 +x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


CmplxMarksJul {; Jon Horner/Jonathan Osuch - Jun 1994
               ; set p1 = (0.1,0.9), p2 = 1
  z = pixel, c = p1, one = (1,0) :
  z = (c ^ (p2-one)) * sqr(z) + c
  |z| <= 4
  ;SOURCE: parser.frm
}


CmplxMarksMand {; Jon Horner/Jonathan Osuch - Jun 1994
  z = pixel + p1, c = pixel, one=(1,0) :
  z = (c ^ (p2-one)) * sqr(z) + c
  |z| <= 4
  ;SOURCE: parser.frm
}


CmplxNewtghost {; Ron Barnett, 1998
        ; use decomp=256
        ; real(p1) = bailout
        ; imag(p1) = "ghost" adjustment:
        ; p2 = complex power
        ; p3 = complex root
  maxr = real(p1), scale = imag(p1)*pi/128
  oldz = 0
  iterexp = 0, iter = 1, zc = pixel, background = pixel:
  iterexp = iterexp + exp(-1/cabs(oldz - zc)), iter = iter + 1
  oldz = zc
  z1 = (p2-1)*zc^p2 + p3
  z2 = p2*zc^(p2-1)
  zc = z1/z2
  IF ((0.000001 > cabs(oldz-zc)) || (iter == maxit))
    smooth = iterexp*scale
    ang = cos(smooth)+flip(sin(smooth))
    z = background*ang
    IF (iter == maxit)
      z = background
    ENDIF
    iter = -1
  ENDIF
  iter > 0
  ;SOURCE: 98msg.frm
}


CN_02_phc_r (XAXIS) {; Jo Weber, 8/1996 
   ; p2 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p2-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  pm1 = p1-1.51,  z = pixel :
  oldz = z
  z = (pm1*(z^p1)*oddeven +1)/(p1 * z^pm1)+z*evenodd
  |(z-oldz)|>=|0.001|
  ;SOURCE: 96msg.frm
}


CnFrc_Fnc_Mset {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = controls size of elements (1 to 32)
    ; imag(p1)   not used
    ; real(p2) = usually 1
    ; imag(p2)   not used
    ; real(p2) = number of color ranges
    ; imag(p2) = number of colors in a range
      ; Modified continued fraction formula
      ; This formula uses the Mandelbrot set equation in a modified
      ; continued fraction, rendered with the Atan method. 
  w = z = iter = range_num = bailout = 0
  c = pixel
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  :
  prev_w = w
  k = w * w + c
  w = k - fn1(p2/(k+p2/(k+p2/(k+p2/(k+p2/(k+p2))))))
  IF (abs(real(w)) > p1)
    bailout = 1
    angle = abs(atan((imag(w)-imag(prev_w))/(real(w)-\
             real(prev_w))))
    index = 2 * colors_in_range * angle / pi
    z = index + range_num * colors_in_range + 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0
  ;SOURCE: 98msg.frm
}


CnFrc_FncJ1_Mset {; by Jay Hill, 1998
                  ; Original idea by Paul W. Carlson, 1998
                  ; real(p1) = controls bailout
                  ; imag(p1) not used
                  ; real(p2) = usually 1
                  ; imag(p2) usually 0
  z=0, c=pixel 
  :
  k = z * z + c
  z = k - fn1(p2/(k+p2/(k+p2/(k+p2/(k+p2/(k+p2))))))
  abs(real(z)) < p1
  ;SOURCE: 98msg.frm
}


cnigel (XAXIS) {
   ; Conjugates still show the chaotic banding it tends to
   ; produce in this fractal type.
  z = pixel, zp1=zp2=zp3=(0,0):
  temp = z
  z = z*z - zp3
  zp3 = zp2
  zp2 = zp1
  zp1 = conj(temp)
  |zp1| <= 4 
  ;SOURCE: noel.frm
}


cntr1 (XAXIS) {
   ; There are many different combinations on this theme.
  z = zp1 = zp2 = pixel:
  temp = z
  z  = z * zp2 + zp1
  zp2 = zp1
  zp1 = temp
  |zp1| <= 4 
  ;SOURCE: noel.frm
}


cntrpc (XYAXIS) {
   ; another interesting variant using two previous terms.
  z = zp1 = pixel, zp2 = (0,0):
  temp = z
  z  = z * zp1 - zp2
  zp2 = zp1
  zp1 = temp
  |zp1| <= 4 
  ;SOURCE: noel.frm
}


coin {; Giuseppe Zito
  z = pixel
  c8 = -0.89646
  c10=real(p1)
  IF (real(p1)==0)
    c10 = 0.155329
  ENDIF
  c15 = 0.741704
  c20 = -0.261235
  c24 = 0.148796
  c27 = 0.820889
  c28 = -0.889618
  d0 = -0.111785
  d1 = -0.012423
  : 
  x = real(z), y = imag(z)
  s0 = y
  s0 = s0 -y
  s0 = s0 +y
  s0 = s0 /y
  s0 = s0 +x
  s0 = s0 -y
  s0 = s0 +c8
  s0 = s0 +y
  s0 = s0 -c10
  s0 = s0 -y
  s0 = s0 -c15
  s0 = s0 -x
  s0 = s0 +y
  s0 = s0 -c20
  s0 = s0 *x
  s0 = s0 +c24
  s0 = s0 +x
  s0 = s0 *c27
  s0 = s0 /c28
  s0 = s0 -x
  s0 = s0 +x
  s0 = s0 +y
  newx = s0 
  s0 =d0
  s0 = s0 *d1
  s0 = s0 *y
  s0 = s0 /x
  s0 = s0 /y
  s0 = s0 -x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


Color01 {; (See formula "dmj-Mand-Pnt-Dst" for an update of this formula)
         ; New coloring technique #1 (bof60 outside)
         ; outside = real: closest approach to p1
         ; p2: color scaling factor
         ; p3: bailout
  z = 0, c = pixel, closest = 100000, point = 0, done = 2:
  z = fn1(z) + c
  done = done + 1
  IF (|z-p1| < closest)
    point = z
    closest = |z-p1|
  ENDIF
  IF (|z| > p3)
    point = point - p1
    z = |point| * p2 - done
    done = -1
  ENDIF
  done >= 0
  ;SOURCE: 97msg.frm
}


Color01i {; New coloring technique #1i - same as #1, does inside too
          ; might want to turn off periodicity checking
          ; outside = real: closest approach to p1
          ; p2: color scaling factor
          ; p3: bailout
  z = 0, c = pixel, closest = 100000, point = 0, done = 2:
  z = fn1(z) + c
  done = done + 1
  IF (|z-p1| < closest)
    point = z
    closest = |z-p1|
  ENDIF
  IF (|z| > p3 || done >= maxit)
    z = |point-p1| * p2 - done
    done = -1
  ENDIF
  done >= 0
  ;SOURCE: 97msg.frm
}


Color05 {; (See formula "dmj-Mand-Pnt-Ang" for an update of this formula) 
         ; New coloring technique #5 (angle of closest approach)
         ; might want to turn off periodicity checking
         ; outside = decomp: angle of closest approach to p1
         ; p2: bailout
  z = 0, c = pixel, closest = 100000, point = 0, done = 2:
  z = fn1(z) + c
  done = done + 1
  IF (|z-p1| < closest)
    point = z
    closest = |z-p1|
  ENDIF
  IF (|z| > p2)
    z = point-p1
    done = -1
  ENDIF
  done >= 0
  ;SOURCE: 97msg.frm
}


Color05i {; New coloring technique #5 (angle of closest approach)
          ; might want to turn off periodicity checking
          ; outside = decomp: angle of closest approach to p1
          ; p2: bailout
  z = 0, c = pixel, closest = 100000, point = 0, done = 2:
  z = fn1(z) + c
  done = done + 1
  IF (|z-p1| < closest)
    point = z
    closest = |z-p1|
  ENDIF
  IF (|z| > p2 || done >= maxit)
    z = point-p1
    done = -1
  ENDIF
  done >= 0
  ;SOURCE: 97msg.frm
}


Color11 {; (See formula "dmj-Mand-Cr2-Dec" for an update of this formula)  
         ; New coloring technique #11 (ring trap)
         ; outside = decomp: angle at closest approach to ring at p1
         ; p2r: unused
         ; p2i: ring diameter
         ; p3: bailout
   z = 0, c = pixel, closest = 100000, point = 0, done = 2
   range=imag(p2)*imag(p2):
   z = fn1(z) + c
   done = done + 1
   q = abs(|z-p1| - range)
   IF (q < closest)
     point = z
     closest = q
   ENDIF
   IF (|z| > p3)
     z = point
     done = -1
   ENDIF
   done >= 0
  ;SOURCE: 97msg.frm
}


Color12 {; New coloring technique #12 (absolute decomposition)
         ; outside = real: absolute decomposition
         ; p1r: decomposition color scaling (start with 256)
         ; p2r: bailout (start with 128)
  IF (real(p1) == 0)
    p1 = 256
  ENDIF
  IF (real(p2) == 0)
    p2 = 128
  ENDIF
  z = 0, c = pixel, done = 2, d = 0, dinc = 0.5:
  z = sqr(z) + c
  done = done + 1
  IF (imag(z) < 0)
    d = d + dinc
  ENDIF
  dinc = dinc * 0.5
  IF (|z| > real(p2))
    z = d * real(p1) - done
    done = -1
  ENDIF
  done >= 0
  ;SOURCE: 97msg.frm
}


Color13 (XAXIS) {; (See formula "dmj-Mand-Smooth" for an 
                 ;  update of this formula)
   ; New coloring technique #13 (continuous color)
   ; outside = real: continuous color
   ; p1r: color scaling (0 means default of 1--normal iteration bands)
   ; p2r: bailout (0 means default of 128)
  IF (real(p1) == 0)
    p1 = 1
  ENDIF
  IF (real(p2) == 0)
    p2 = 128
  ENDIF
  z = pixel, c = pixel, done = 0, il2 = 1/log(2.0) 
  lp = log(log(real(p2))):
  z2 = sqr(z)
  z = z2 + c
  done = done + 1
  IF (|z| > real(p2))
    z = (done + 2*il2*lp - il2*log(log(cabs(z)))) * real(p1) - done
    done = -1
  ENDIF
  done >= 0
  ;SOURCE: 97msg.frm
}


Color13phc {; (See formula "dmj-Mand-SmoothPHC" for 
            ;  an update of this formula)
   ; New coloring technique #13 (continuous color, PHC)
   ; outside = real: continuous color
   ; p1r: color scaling 1 (0 means default of 1--normal iteration bands)
   ; p1i: color scaling 2 (0 means default of 1--normal iteration bands)
   ; p2r: bailout (0 means default of 128)
  IF (real(p1) == 0)
    p1 = 1 + imag(p1)
  ENDIF
  IF (imag(p1) == 0)
    p1 = real(p1) + (0,1)
  ENDIF
  IF (real(p2) == 0)
    p2 = 128
  ENDIF
  z = pixel, c = pixel, done = 0 
  il2 = 1/log(2.0), lp = log(log(real(p2))):
  z2 = sqr(z)
  z = z2 + c
  done = done + 1
  IF (|z| > real(p2))
    IF (whitesq)
      z = (done + 2*il2*lp - il2*log(log(cabs(z)))) * real(p1) - done
    ELSE
      z = (done + 2*il2*lp - il2*log(log(cabs(z)))) * imag(p1) - done
    ENDIF
    done = -1
  ENDIF
  done >= 0
  ;SOURCE: 97msg.frm
}


Colorit-16JS {; (c) Jay Hill, 1998
     ; angle=real(p1)+sqrt(imag(p1)) 
     ; angle= log(Julia parameter)/pi
     ; when real(p1)=0, Julia is on edge of Period 1 component
  A=i*real(p1)+sqrt(-imag(p1))
  w=exp(A-log(16)/15), c=w-sqr(sqr(sqr(sqr(w)))), z=pixel:
  z=sqr(sqr(sqr(sqr(z)))) + c
  |z| <=4
  ;SOURCE: 98msg.frm
}


Colorit-2rPanx {; (c) Jay Hill, 1998
                ; p1= light angle (cos a, sin a)
                ; p2 = pan view point
  IF (p1==0)
    p1=1
  ENDIF 
  done = 1, iter=0, z = 0, zc = 0, dz=1
  c = exp(flip(pixel))+p2
  :                 ; initialization.
  iter = iter+1     ; gotta count em 
  dz=2*zc*dz+1      ; derivative, dz/dc
  zc=sqr(zc) + c    ; standard MSet iteration
  IF (|zc| >= 1024) ; Bailout 
    z = z -8 + ((sin(2*pi*iter/256)*Real(p1*dz/zc))>0) + iter
    done=-1         ; Set flag to force an exit.
  ENDIF
  done >= 0         ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}


Colorit-3 {; (c) Jay Hill, 1998
  b=p1                           ; p1=cos(a)+i*sin(a), a=light angle 
  IF(p1==0)
    p1=1
  ENDIF
  a=pi*p1/180, b=cos(a)+i*sin(a) ; p1= light angle (deg)
  done = 1, iter=0, z = 0 
  zc = 0, c = pixel, dz=1
  :                              ; initialization.
  iter = iter+1                  ; gotta count em 
  dz=3*sqr(zc)*dz+1              ; derivative, dz/dc
  zc=zc*sqr(zc) + c              ; standard MSet iteration
  IF (|zc| >= 1024)              ; Bailout 
    z = z -8 + ((sin(2*pi*iter/256)*Real(b*dz/zc))>0) + iter
    done=-1                      ; Set flag to force an exit.
  ENDIF
  done >= 0                      ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}


Colorit-3f {; (c) Jay Hill, 1998
            ; p1= light angle (cos a, sin a)
            ; use these, float=y inside=0 outside=real periodicity=0
  iter=0, zc = 0, c = pixel, dz=1
                         ; 23 is the color of the period 1 component.
  z=23*(|(2*sinh(asinh(sqrt(-6.75)*c)/3))|<=1.0)
  done=-(z>0)            ; done if we know z is not 0
  IF (p1==0)
    p1=1
  ENDIF
  :                      ; initialization.
  iter = iter+1          ; gotta count the iterations
  dz=3*sqr(zc)*dz+1      ; derivative, dz/dc, a slope for shading
  zc=zc*sqr(zc) + c      ; standard MSet cubic iteration  z=z^3+c
  IF (|zc| >= 1024)      ; Bailout 
    z = z -8 + ((sin(2*pi*iter/256)*Real(p1*dz/zc))>0) + iter
    done=-1              ; Set flag to force an exit.
  ENDIF
  done >= 0              ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}


Colorit-3fJS {; (c) Jay Hill, 1998
              ; angle=real(p1)+sqrt(imag(p1)) 
              ; angle= log(Julia parameter)/pi
              ; when real(p1)=0, Julia is on edge of Period 1 component
  A=(real(p1)+sqrt(imag(p1)))*sqrt(-1)
  c=sinh(3*asinh(.5*exp(pi*A)))/sqrt(-6.75)
  z=pixel:
  z=z*sqr(z) + c
  |z| <=4
  ;SOURCE: 98msg.frm
}


Colorit-3JS {; three corner Siegel disk (c) Jay Hill, 1998
    ; angle=real(p1)+sqrt(imag(p1)) 
    ; angle= log(Julia parameter)/pi
    ; when real(p1)=0, Julia is on edge of Period 1 component
  A=i*real(p1)+sqrt(-imag(p1))
  w=exp(A-.5*log(3)), c=w*(1-sqr(w)), z=pixel:
  z=z*sqr(z) + c
  |z| <=4
  ;SOURCE: 98msg.frm
}


Colorit-3r {; (c) Jay Hill, 1998
            ; p1=cos(a)+i*sin(a), a=light angle
  b=p1
  IF (p1==0)
    p1=1
  ENDIF
  a=pi*p1/180, b=cos(a)+i*sin(a) ; p1= light angle (deg)
  done = 1, iter=0, z = 0, zc = 0, c = pixel, dz=1
  :                 ; initialization.
  iter = iter+1     ; gotta count em
  dz=3*sqr(zc)*dz+1 ; derivative, dz/dc
  zc=zc*sqr(zc) + c ; standard MSet iteration
  IF (|zc| >= 1024) ; Bailout
    z = z -8 + ((sin(2*pi*iter/256)*Real(b*dz/zc))>0) + iter
    done=-1         ; Set flag to force an exit.
  ENDIF
  done >= 0         ; Continue if the flag >=0.
  ;SOURCE: 0from_ml.frm
}


Colorit-4JS {; four corner Siegel disk (c) Jay Hill, 1998
     ; angle=real(p1)+sqrt(imag(p1)) 
     ; angle= log(Julia parameter)/pi
     ; when real(p1)=0, Julia is on edge of Period 1 component
  A=i*real(p1)+sqrt(-imag(p1))
  w=exp(A-log(4)/3), c=w-sqr(sqr(w)), z=pixel:
  z=sqr(sqr(z)) + c
  |z| <=4
  ;SOURCE: 98msg.frm
}


Colorit-5JS {; five corner Siegel disk (c) Jay Hill, 1998
     ; angle=real(p1)+sqrt(imag(p1)) 
     ; angle= log(Julia parameter)/pi
     ; when real(p1)=0, Julia is on edge of Period 1 component
  A=i*real(p1)+sqrt(-imag(p1))
  w=exp(A-log(5)/4), c=w-w*sqr(sqr(w)), z=pixel:
  z=z*sqr(sqr(z)) + c
  |z| <=4
  ;SOURCE: 98msg.frm
}


Colorit-6JS {; six corner Siegel disk(c) Jay Hill, 1998
     ; angle=real(p1)+sqrt(imag(p1)) 
     ; angle= log(Julia parameter)/pi
     ; when real(p1)=0, Julia is on edge of Period 1 component
  A=i*real(p1)+sqrt(-imag(p1))
  w=exp(A-log(6)/5), c=w-sqr(w*sqr(w)), z=pixel:
  z=sqr(z*sqr(z)) + c
  |z| <=4
  ;SOURCE: 98msg.frm
}


Colorit-8JS {; eight corner Siegel disk (c) Jay Hill, 1998
     ; angle=real(p1)+sqrt(imag(p1)) 
     ; angle= log(Julia parameter)/pi
     ; when real(p1)=0, Julia is on edge of Period 1 component
  A=i*real(p1)+sqrt(-imag(p1))
  w=exp(A-log(8)/7), c=w-sqr(sqr(sqr(w))), z=pixel:
  z=sqr(sqr(sqr(z))) + c
  |z| <=4
  ;SOURCE: 98msg.frm
}


Colorit-nJS {; n corner Siegel disk (c) Jay Hill, 1998
  n=(real(p2)) ; z:=z^n+c 
               ; angle=real(p1)+sqrt(imag(p1)) 
               ; angle= log(Julia parameter)/pi
               ; when real(p1)=0, Julia is on edge of Period 1 component
  A=i*real(p1)+sqrt(-imag(p1))
  u=A+log(n)/(1-n)
  w=exp(u), c=w-exp(n*u), z=pixel:
  z=z^n + c
  |z| <=4
  ;SOURCE: 98msg.frm
}


Colorit2cove {; (c) Jay Hill, 1998
  done = 1, iter=0, z = 0, zc = 0, c = pixel, dz=1
  :                                   ; initialization.
  iter = iter+1                       ; gotta count em 
  dz=2*zc*dz+1                        ; derivative of z
  zc=sqr(zc) + c                      ; standard MSet iteration
  IF (|zc| >= 1024)                   ; Bailout 
    z = z -8 + ((sin(2*pi*iter/256)*Real(dz/zc))>0) + iter
    done=-1                           ; Set flag to force an exit.
  ENDIF
  done >= 0                           ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}


ColoritC {; (c) Jay Hill, 1998
          ; use outside=summ periodicity=0 
  done = 1, z = 0, zc = 0, c = pixel, s=|c| 
  t1=(256*s - 96)*s + 32*Real(c), t2=16*s + 32*Real(c) + 16
  B=sqrt(-4*c-7), t3=|8+4*c*(1-B)|, t4=|8+4*c*(1+B)|
  z=z + 249*(t1<=3) + 250*(t2<=1) + 251*(t3<=1) + 252*(t4<=1)
  IF (z>0)       ; for periods 1, 2, and 3.
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


ColoritL {; (c) Jay Hill, 1998
  done = 1, z = 0, zc = 0, c = pixel
  s=|c|, t1=(256*s - 96)*s + 32*Real(c), t2=16*s + 32*Real(c) + 16
  B=sqrt(-4*c-7), t3=|8+4*c*(1-B)|, t4=|8+4*c*(1+B)| ; component tests
  z=z + 249*(t1<=3) + 250*(t2<=1) + 251*(t3<=1) + 252*(t4<=1) ; set colors
  IF(z>0)              ; for periods 1, 2, and 3.
    done=-1            ; color is set for c in a component, skip iterations
  ENDIF
  :                    ; initialization.
  zc=sqr(zc) + c       ; standard MSet iteration
  IF (|zc| >= 4)       ; Bailout at 4
    done=-1            ; Set flag to force an exit.
  ENDIF
  done >= 0            ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}


ColoritM2 {; (c) Jay Hill, 1998
  done = 1, z = 0, zc = 0, c = pi*pixel
  s=|c|, t1=(256*s - 96)*s + 32*Real(c), t2=16*s + 32*Real(c) + 16
  z=z + 251*(t1<=3) + 252*(t2<=1) ; set colors
  IF(z>0)          ; for periods 1, 2
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


ColoritM3 {; (c) Jay Hill, 1998
  done = 1, z = 0, zc = 0, c = pixel
  s=|c|, t1=(256*s - 96)*s + 32*Real(c), t2=16*s + 32*Real(c) + 16
  z= z + 251*(t1<=3) + 252*(t2<=1) ; set colors
  IF (z>0)                         ; for periods 1, 2
    done=-1        ; color is set for c in a component, skip iterations
  ENDIF
  :                                ; initialization.
  zc=sqr(zc) + c                   ; standard MSet iteration
  IF (|zc| >= 4)                   ; Bailout at 4
    done=-1                        ; Set flag to force an exit.
  ENDIF
  done >= 0                        ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}


ComplexNewton (XAXIS) {; Jon Horner (ex-CAL) [not sure about this one]
                       ; requires float=yes  -JH
   ; This creates a fractal by solving the equation:
   ; Z^p -1 = 0.   p1 should be >1 or <0, float=yes
   ; Colour used is selected by the number of
   ; iterations until a solution `captures' z.
  pm1 = p1-1,  z = pixel :
  oldz = z
  z = (pm1*(z^p1) +1)/(p1 * z^pm1)
  |(z-oldz)|>=|0.01|
  ;SOURCE: parser.frm
}


ComplexNewton_01 {; Jon Horner (ex-CAL) [ not sure about this one ]
                  ; modified by Jo Weber, 6/1996
                  ; modified by Sylvie Gallet, runs 40% faster
  pr = 1/p1, pm1 = 1-pr, pm2 = 1-p1,  z = pixel :
  oldz = z
  z = pm1 * z + pr * z^pm2
  |(z-oldz)|>=0.000001
  ;SOURCE: jowe29.frm
}


ComplexNewton_02 (XAXIS) {; Jon Horner 
                          ; modified by Jo Weber, 6/1996 
  pm1 = p1-1.51,  z = pixel :
  oldz = z
  z = (pm1*(z^p1) +1)/(p1 * z^pm1)
  |(z-oldz)|>=|0.001|
  ;SOURCE: jowe29.frm
}


ComplexNewton_02a (YAXIS) {; Jon Horner 
                           ; modified by Jo Weber, 6/1996 
  pm1 = p1-1.51,  z = pixel :
  oldz = z
  z = (pm1*(z^p1) +1)/(p1 * z^pm1)
  |(z-oldz)|>=|0.001|
  ;SOURCE: jowe29.frm
}


ComplexNewton_03 (XAXIS) {; Jon Horner 
                          ; modified by Jo Weber, 6/1996 
  pm1 = p1-2,  pm2=p1-1, z = pixel :
  oldz = z
  z = (pm2*(z^p1) +1)/(p1 * z^pm1)
  |(z-oldz)|>=|0.0001|
  ;SOURCE: jowe29.frm
}


ComplexNewton_03a (YAXIS) {; Jon Horner 
                           ; modified by Jo Weber, 6/1996 
  pm1 = p1-2,  pm2=p1-1, z = pixel :
  oldz = z
  z = (pm2*(z^p1) +1)/(p1 * z^pm1)
  |(z-oldz)|>=|0.0001|
  ;SOURCE: jowe29.frm
}


ComplexNewton_04 (XAXIS) {; Jon Horner 
                          ; modified by Jo Weber, 6/1996 
  pm1 = p1-1.5,  pm2=p1-1, z = pixel :
  oldz = z
  z = (pm2*(z^p1) +1)/(p1 * z^pm1)
  |(z-oldz)|>=|0.005|
  ;SOURCE: jowe29.frm
}


ComplexNewton_04a (YAXIS) {; Jon Horner 
                           ; modified by Jo Weber, 6/1996 
  pm1 = p1-1.5,  pm2=p1-1, z = pixel :
  oldz = z
  z = (pm2*(z^p1) +1)/(p1 * z^pm1)
  |(z-oldz)|>=|0.005|
  ;SOURCE: jowe29.frm
}


ComplexNewton_05 (XAXIS) {; Jon Horner 
                          ; modified by Jo Weber, 6/1996 
  pm1 = p1-1,  z = pixel :
  oldz = z
  z = (pm1*(z^p1) +1)/(p1 * z^pm1)
  |(z-oldz)|>=|0.001|
  ;SOURCE: jowe29.frm
}


ComplexNewton_05a (YAXIS) {; Jon Horner 
                           ; modified by Jo Weber, 6/1996 
  pm1 = p1-1,  z = pixel :
  oldz = z
  z = (pm1*(z^p1) +1)/(p1 * z^pm1)
  |(z-oldz)|>=|0.001|
  ;SOURCE: jowe29.frm
}


ComplexNewton_06 {; Jon Horner 
                  ; modified by Jo Weber, 6/1996 
  pm1 = p1-1.51, z = pixel :
  oldz = z
  z = (pm1*(z^p1) +1)/(p1 * z^pm1)
  |(z-oldz)|>=|0.001|
  ;SOURCE: jowe29.frm
}


ComplexNewton_07 {; Jon Horner 
                  ; modified by Jo Weber, 6/1996 
  pm1 = p1-2, pm2=p1-1, z = pixel :
  oldz = z
  z = (pm2*(z^p1) +1)/(p1 * z^pm1)
  |(z-oldz)|>=|0.0001|
  ;SOURCE: jowe29.frm
}


ComplexNewton_08 {; Jon Horner 
                  ; modified by Jo Weber, 6/1996 
  pm1 = p1-1.5, pm2=p1-1, z = pixel :
  oldz = z
  z = (pm2*(z^p1) +1)/(p1 * z^pm1)
  |(z-oldz)|>=|0.005|
  ;SOURCE: jowe29.frm
}


ComplexNewton_09 {; Jon Horner 
                  ; modified by Jo Weber, 6/1996
                  ; requires float=yes                      
  pm1 = p1-1.5, pm2=p1-1, z = pixel :
  oldz = z
  z = fn1((pm2*(z^p1) +1)/(p1 * z^pm1))
  |(z-oldz)|>=|0.005|
  ;SOURCE: jowe29.frm
}


ComplexNewton_10 {; Jon Horner 
                  ; modified by Jo Weber, 6/1996
  pm1 = p1-1.5, pm2=p1-1, z = pixel :
  oldz = z
  z = fn1(pm2*(z^p1) +1)/fn2(p1 * z^pm1)
  |(z-oldz)|>=|0.005|
  ;SOURCE: jowe29.frm
}


ComplexNewton_11 {; Jon Horner 
                  ; modified by Jo Weber, 6/1996
  pm1 = p1-1.5, pm2=p1-1, z = pixel :
  oldz = z
  z = fn3(fn1(pm2*(z^p1) +1)/fn2(p1 * z^pm1))
  |(z-oldz)|>=|0.005|
  ;SOURCE: jowe29.frm
}


ComplexNewton_12 {; Jon Horner 
                  ; modified by Jo Weber, 6/1996 
  pm1 = p1-1, z = pixel :
  oldz = z
  z = (pm1*(z^p1) +0.5)/(p1 * z^pm1)
  |(z-oldz)|>=|0.001|
  ;SOURCE: jowe29.frm
}


condo {; Giuseppe Zito
  z = pixel
  d0 = -0.178926
  d3 = 0.137632
  d4 = -0.261971
  d5 = 0.473992
  : 
  x = real(z), y = imag(z)
  s0 = x
  s0 = s0 -x
  s0 = s0 +y
  newx = s0 
  s0 =d0
  s0 = s0 +x
  s0 = s0 -d3
  s0 = s0 +d4
  s1 =d5
  s1 = s1 +x
  s1 = s1 /x
  s0 = s0 /s1
  s0 = s0 /x
  s0 = s0 +x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


Conform7J {
  c=p1, z=pixel:
  a=exp(real(z))*sin(imag(z))
  b=-exp(real(z))*cos(imag(z))
  z=a+b*(0,1)+c
  real(z)<=1000000
  ;SOURCE: 97msg.frm
}


Conform7M {
  c=pixel, z=0:
  a=exp(real(z))*sin(imag(z))
  b=-exp(real(z))*cos(imag(z))
  z=a+b*(0,1)+c
  real(z)<=1000000
  ;SOURCE: 97msg.frm
}


Conform8J {
  c=p1, z=pixel:
  a=sinh(real(z))*cos(imag(z))
  b=cosh(real(z))*sin(imag(z))
  z=a+b*(0,1)+c
  |z|<=1000
  ;SOURCE: 97msg.frm
}


Conform8M {
  c=pixel, z=(0,1)*3.141592654/2:
  a=sinh(real(z))*cos(imag(z))
  b=cosh(real(z))*sin(imag(z))
  z=a+b*(0,1)+c
  |z|<=1000
  ;SOURCE: 97msg.frm
}


ConformalMapping {
  c = pixel, RealZ = Real(c), ImagZ = Imag(c):
  RealZ = Sqr(RealZ) + (RealZ * ImagZ) + Real(c)
  ImagZ = Sqr(ImagZ) + (RealZ * ImagZ) + Imag(c)
  z = RealZ + (ImagZ * (0, 1))
  |z| < 4
  ;SOURCE: fract001.frm
}


conic {; Kerry Mitchell 12may98
       ; Replaced variable "e" with "ee" 5/6/99, G. Martin
       ;  Kerry Mitchell's explanation of his conic formulas is at
       ;  the end of this formula
       ;
       ; draws conic sections, not fractals
       ;   Ax^2 + Bx + Cy^2 + Dy + Exy + F = 0
       ;   A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
       ;   E=real(p3), F=imag(p3).  use decomp=256 coloring
       ;
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3), iter=-1:
  x=real(pixel), y=imag(pixel)
  t=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
  t=log(cabs(t))
  z=cos(t)+flip(sin(t))
  iter>0
;******************************************************************
;    Kerry Mitchell's explanation of his conic formulas 
;               (c) Kerry Mitchell, 1998
;
; Conic Sections
;
; Conic sections are sections of cones.  Specifically, take a double-ended
; cone, like 2 funnels placed tip-to-tip.  Then, form the intersection of
; the (double) cone with a plane.  The intersection, usually one or two
; curves, is a conic section.  Conic sections can be a point, one line, two
; lines, a parabola, an ellipse, a circle, or a hyperbola, depending on the
; orientation of the plane relative to the cone.  Analytically, they can all
; be expressed by the same formula:
;
; Ax^2 + Bx + Cy^2 + Dy + Exy + F = 0,
;
; where the parameters A through F determine the shape of the section, and x
; and y are the 2 spatial coordinates.  For example, the line y=x can be
; represented as
; 
; x - y = 0, or
; A = 0, B = 1, C = 0, D = -1, E = 0, F = 0.
;
; A circle centered at (1,0) with a radius of 2 would have the equation
;
; (x - 1)^2 + y^2 = 4, or
; x^2 - 2x + y^2 - 3 = 0, giving
; A = 1, B = -2, C = 1, D = 0, E = 0, F = -3.
;
; How can these shapes be used to render fractals?  First off, the "conic"
; formula simply draws the section determined by the six parameters A - F,
; to give the user an idea of how the parameter choices affect the section
; generated.
;
; The standard escape-time rendering method stops iterating when the
; magnitude of the iterate is larger than some threshold.  Since the iterate
; is a complex number, this means that the escape condition can be viewed in
; terms of a 2-dimensional shape.  Specifically, if x and y represent the
; real and imaginary parts of the iterate and the threshold level is r, then
; escape occurs when:
;
; x^2 + y^2 > r^2
;
; which just means that the orbit leaves a circle of radius r, centered at
; the origin.  Clearly, the circle could be replaced by any closed curve, so
; long as it is large enough to enclose the fractal.  Open curves can also
; be used as a bailout condition, so long as the appropriate side of the
; curve is chosen.
;
; This opportunity, changing the shape of the escape boundary, is coded into
; the "conic-bail" formulas.  The six parameters (real and imaginary parts
; of p1, p2, and p3) are used to determine a section; iteration ceases when
; the orbit leaves this section.  (In actuality, the escape condition is
; that the quantity
;
; Q = Ax^2 + Bx + Cy^2 + Dy + Exy + F
;
; become larger than 0.  Q=0 is the equation for the escape boundary.)
;
; (A note about the formulas:  Since 6 parameters are required to fully
; specify a conic section, this leaves no room in the Fractint scheme to
; interactively specify a Julia parameter.  Three versions of each Julia
; formula are presented, to give a quick idea of the effect of Julia
; parameter choice.  The user is free to change the specified parameter in
; the formula, to fit their own needs.)
;
; Fractint's "inside=zmag" coloring scheme is also built around the circle,
; and thus, easily altered to a general conic section.  In the "conic-mag"
; formulas, the standard bailout test is employed.  However, what is plotted
; is the value of Q, as specified above.  Q=0 is the equation for the
; boundary of the section, so this method effectively shows if the iterate
; was inside or outside of the section when iteration ended.
;
; The other two formula types record how the orbit interacts with the given
; section.  In "conic-near", the distance to the section is tallied, and the
; final color reflects the closest approach of the orbit to the section.  In
; "conic-count", a counter is incremented for each iteration where the orbit
; is inside the section.  This counter is scaled by the total number of
; iterations for that pixel, and this fraction is converted into an angle
; for "decomp=" plotting.
;
; The standard forms of the conic sections are given below.  With a bit of
; algebraic twiddling, they can be transformed into the general form, for
; use in the Fractint formulas.
;
; point (h,k)  x=h, y=k; or (x-h)^2 + (y-k)^2 = 0 [circle of radius 0
; centered at (h,k)].
;
; vertical line through (h,k):  x=h
;
; non-vertical line with slope m, through (h,k):  y-k = m*(x-h)
;
; parabola, opening up or down, with vertex at (h,k):
; y-k = 4*p*(x-h)^2 [p determines width; +/up, -/down]
;
; parabola, opening left or right, with vertex at (h,k):
; x-h = 4*p*(y-k)^2 [p determines width; +/right, -/left]
;
; ellipse centered at (h,k), semimajor axis alpha, semiminor axis beta:
; (x-h)^2/alpha^2 + (y-k)^2/beta^2 = 1
;
; circle centered at (h,k), with radius r:
; (x-h)^2 + (y-k)^2 = r^2
;
; hyperbola centered at (h,k), semimajor axis alpha, semiminor axis beta,
; opening left/right:  (x-h)^2/alpha^2 - (y-k)^2/beta^2 = 1
;
; hyperbola centered at (h,k), semimajor axis alpha, semiminor axis beta,
; opening up/down:  (y-k)^2/beta^2 - (x-h)^2/alpha^2 = 1
; 
; coordinate rotation, from (u,v) to (x,y), through an angle theta:
; u = x*cos(theta) + y*sin(theta)
; v = -x*sin(theta) + y*cos(theta)
; [rotating sections is how to generate non-zero E parameters]
;*******************************************************************
  ;SOURCE: 98msg.frm
}


conic-bail_jul16 {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; Julia set, escapes "conic quantity" Q > 0
      ;   Q = Ax^2 + Bx + Cy^2 + Dy + Exy + F
      ;   A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;   E=real(p3), F=imag(p3).
      ;   Julia parameter set to point near 1/16 disk
      ;
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  cc=(0.2882,0.0106), zc=pixel, iter=1, ee=real(p3), f=imag(p3):
  iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
  conic=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
  IF ((conic>0)||(iter==maxit))
    iter=-1
    z=zc
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


conic-bail_jul2 {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; Julia set, escapes "conic quantity" Q > 0
      ;     Q = Ax^2 + Bx + Cy^2 + Dy + Exy + F
      ;   A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;   E=real(p3), F=imag(p3).
      ;   Julia parameter set to -2
      ;
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  cc=-2, zc=pixel, iter=1, ee=real(p3), f=imag(p3):
  iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
  conic=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
  IF ((conic>0)||(iter==maxit))
    iter=-1
    z=zc
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


conic-bail_juli { ; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; Julia set, escapes "conic quantity" Q > 0
      ;    Q = Ax^2 + Bx + Cy^2 + Dy + Exy + F
      ;  A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;  E=real(p3), F=imag(p3).
      ;  Julia parameter set to (0,1)
      ;
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  cc=(0,1), zc=pixel, iter=1, ee=real(p3), f=imag(p3):
  iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
  conic=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
  IF ((conic>0)||(iter==maxit))
    iter=-1
    z=zc
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


conic-bail_man { ; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; Mandelbrot set, escapes "conic quantity" Q > 0
      ;    Q = Ax^2 + Bx + Cy^2 + Dy + Exy + F
      ;  A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;  E=real(p3), F=imag(p3).
      ;
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  zc=0, cc=pixel, iter=1, ee=real(p3), f=imag(p3):
  iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
  conic=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
  IF ((conic>0)||(iter==maxit))
    iter=-1
    z=zc
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


conic-count_jul16 {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; colors Julia set by how often orbit is outside section
      ;   Ax^2 + Bx + Cy^2 + Dy + Exy + F = 0
      ;   A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;   E=real(p3), F=imag(p3).  use decomp=256 coloring
      ;   Julia parameter set to near 1/16 disk
      ;   bailout set to 10^12
      ;
  cc=(0.2882,0.0106), zc=pixel, maxr=1e12, iter=1
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3), kount=0, scale=6.2832:
  iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
  conic=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
  IF (conic>0)
    kount=kount+1
  ENDIF
  IF ((|zc|>maxr)||(iter==maxit))
    t=scale*kount/iter
    z=cos(t)+flip(sin(t))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


conic-count_jul2 {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ;       colors Julia set by how often orbit is outside section
      ;          Ax^2 + Bx + Cy^2 + Dy + Exy + F = 0
      ;       A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;       E=real(p3), F=imag(p3).  use decomp=256 coloring
      ;       Julia parameter set to -2
      ;       bailout set to 10^12
      ;
  cc=-2, zc=pixel, maxr=1e12, iter=1
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3), kount=0, scale=6.2832:
  iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
  conic=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
  IF (conic>0)
    kount=kount+1
  ENDIF
  IF ((|zc|>maxr)||(iter==maxit))
    t=scale*kount/iter
    z=cos(t)+flip(sin(t))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


conic-count_juli {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; colors Julia set by how often orbit is outside section
      ;     Ax^2 + Bx + Cy^2 + Dy + Exy + F = 0
      ;  A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;  E=real(p3), F=imag(p3).  use decomp=256 coloring
      ;  Julia parameter set to (0,1)
      ;  bailout set to 10^12
      ;
  cc=(0,1), zc=pixel, maxr=1e12, iter=1
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3), kount=0, scale=6.2832:
  iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
  conic=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
  IF (conic>0)
    kount=kount+1
  ENDIF
  IF ((|zc|>maxr)||(iter==maxit))
    t=scale*kount/iter
    z=cos(t)+flip(sin(t))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


conic-count_man {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; colors Mandelbrot set by how often orbit is outside section
      ;    Ax^2 + Bx + Cy^2 + Dy + Exy + F = 0
      ;  A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;  E=real(p3), F=imag(p3).  use decomp=256 coloring
      ;  bailout set to 10^12
      ;
  zc=0, cc=pixel, maxr=1e12, iter=1
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3), kount=0, scale=6.2832:
  iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
  conic=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
  IF (conic>0)
    kount=kount+1
  ENDIF
  IF ((|zc|>maxr)||(iter==maxit))
    t=scale*kount/iter
    z=cos(t)+flip(sin(t))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


conic-mag_jul16 {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
         ; colors Julia set by magnitude of "conic quantity"
         ;  Q = Ax^2 + Bx + Cy^2 + Dy + Exy + F
         ;  A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
         ;  E=real(p3), F=imag(p3).  use decomp=256 coloring
         ;  Julia parameter set to point near 1/16 disk
         ;  bailout set to 4
         ;
  cc=(0.2882,0.0106), zc=pixel, maxr=4, iter=1
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3):
  iter=iter+1, zc=sqr(zc)+cc
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    x=real(zc), y=imag(zc)
    t=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
    z=cos(t)+flip(sin(t))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


conic-mag_jul2 {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; colors Julia set by magnitude of "conic quantity"
      ;   Q = Ax^2 + Bx + Cy^2 + Dy + Exy + F
      ;   A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;   E=real(p3), E=imag(p3).  use decomp=256 coloring
      ;   Julia parameter set to -2
      ;   bailout set to 4
      ;
  cc=-2, zc=pixel, maxr=4, iter=1
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3):
  iter=iter+1, zc=sqr(zc)+cc
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    x=real(zc), y=imag(zc)
    t=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
    z=cos(t)+flip(sin(t))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


conic-mag_juli {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; colors Julia set by magnitude of "conic quantity"
      ;    Q = Ax^2 + Bx + Cy^2 + Dy + Exy + F
      ;  A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;  E=real(p3), F=imag(p3).  use decomp=256 coloring
      ;  Julia parameter set to (0,1)
      ;  bailout set to 4
      ;
  cc=(0,1), zc=pixel, maxr=4, iter=1
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3):
  iter=iter+1, zc=sqr(zc)+cc
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    x=real(zc), y=imag(zc)
    t=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
    z=cos(t)+flip(sin(t))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


conic-mag_man {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; colors Mandelbrot set by magnitude of "conic quantity"
      ;    Q = Ax^2 + Bx + Cy^2 + Dy + Exy + F
      ;  A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;  E=real(p3), F=imag(p3).  use decomp=256 coloring
      ;  bailout set to 4
      ;
  zc=0, cc=pixel, maxr=4, iter=1
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3):
  iter=iter+1, zc=sqr(zc)+cc
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    x=real(zc), y=imag(zc)
    t=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
    z=cos(t)+flip(sin(t))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


conic-near_jul16 {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; colors Julia set by nearest approach to conic section
      ;   Ax^2 + Bx + Cy^2 + Dy + Exy + F = 0
      ;   A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;   E=real(p3), F=imag(p3).  use decomp=256 coloring
      ;   Julia parameter set to near 1/16 disk
      ;   bailout set to 10^12
      ;
  cc=(0.2882,0.0106), zc=pixel, maxr=1e12, minr=maxr, iter=1
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3):
  iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
  conic=|x*(a*x+b)+y*(c*y+d)+ee*x*y+f|
  IF (conic<minr)
    minr=conic
  ENDIF
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    t=log(minr)
    z=cos(t)+flip(sin(t))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


conic-near_jul2 {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; colors Julia set by nearest approach to conic section
      ;    Ax^2 + Bx + Cy^2 + Dy + Exy + F = 0
      ;  A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;  E=real(p3), F=imag(p3).  use decomp=256 coloring
      ;  Julia parameter set to -2
      ;  bailout set to 10^12
      ;
  cc=-2, zc=pixel, maxr=1e12, minr=maxr, iter=1
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3):
  iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
  conic=|x*(a*x+b)+y*(c*y+d)+ee*x*y+f|
  IF (conic<minr)
    minr=conic
  ENDIF
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    t=log(minr)
    z=cos(t)+flip(sin(t))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


conic-near_juli {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; colors Julia set by nearest approach to conic section
      ;    Ax^2 + Bx + Cy^2 + Dy + Exy + F = 0
      ;  A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;  E=real(p3), F=imag(p3).  use decomp=256 coloring
      ;  Julia parameter set to (0,1)
      ;  bailout set to 10^12
      ;
  cc=(0,1), zc=pixel, maxr=1e12, minr=maxr, iter=1
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3):
  iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
  conic=|x*(a*x+b)+y*(c*y+d)+ee*x*y+f|
  IF (conic<minr)
    minr=conic
  ENDIF
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    t=log(minr)
    z=cos(t)+flip(sin(t))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


conic-near_man {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; colors Mandelbrot set by nearest approach to conic section
      ;    Ax^2 + Bx + Cy^2 + Dy + Exy + F = 0
      ;  A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;  E=real(p3), F=imag(p3).  use decomp=256 coloring
      ;  bailout set to 10^12
      ;
  zc=0, cc=pixel, maxr=1e12, minr=maxr, iter=1
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3):
  iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
  conic=|x*(a*x+b)+y*(c*y+d)+ee*x*y+f|
  IF (conic<minr)
    minr=conic
  ENDIF
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    t=log(minr)
    z=cos(t)+flip(sin(t))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


ConjFlipJul_N {; Jm Collard-Richard
  z=pixel:
  z=conj(flip(z^p2))+p1
  |z|<=4         
  ;SOURCE: jmcr1.frm
}


ConjFlipMand_N {; Jm Collard-Richard
  c=z=pixel:
  z=conj(flip(z^p1))+c
  |z|<=4         
  ;SOURCE: jmcr1.frm
}


ConjMandelbrot (XAXIS) {; Paul J. Horn
   ; This uses the last square function and should be the same as
   ; MandelConj, but with inside=bof60 and outside=summ and zooms
   ; it does not.
  z = Pixel, z = Sqr(conj(z)):
  z = z + Pixel
  z = Sqr(conj(z))
  LastSqr <= 4
  ;SOURCE: pjhcon.frm
}


connectc {; Giuseppe Zito
  z = pixel
  c0 = -0.202099
  c5 = -0.341258
  c11 = -0.581084
  c12 = 0.378955
  c31 = -0.06281
  c33 = -0.473788
  : 
  x = real(z), y = imag(z)
  s0 =c0
  s1 = y
  s1 = s1 -y
  s1 = s1 *x
  s1 = s1 +c5
  s0 = s0 *s1
  s0 = s0 *y
  s0 = s0 /y
  s0 = s0 /c11
  s0 = s0 /c12
  s0 = s0 -y
  s1 = y
  s2 = x
  s1 = s1 -s2
  s1 = s1 -x
  s1 = s1 *y
  s2 = y
  s2 = s2 +y
  s2 = s2 +x
  s1 = s1 *s2
  s1 = s1 +y
  s1 = s1 *y
  s1 = s1 *x
  s0 = s0 *s1
  s0 = s0 *c31
  s0 = s0 +x
  s1 =c33
  s0 = s0 *s1
  s0 = s0 -y
  newx = s0 
  s0 = x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


Contest {; Contest Material
  z = 0
  c = pixel:
  z = z*z*z - c * z*z + c * z + c
  |z| <= 4
  ;SOURCE: contest.frm
}


contest2 (xaxis) {; Kerry Mitchell
                  ; slightly optimized version of Contest formula
  z=0, c=pixel:
  z2=sqr(z), z=z*z2+c*(1+z-z2)
  |z| <= 4
  ;SOURCE: 97msg.frm
}


contest3a (xaxis) {; Kerry Mitchell
                   ; starts at one critical point of the function
  c=pixel, z=(c+sqrt(c*(c-3)))/3:
  z2=sqr(z), z=z*z2+c*(1+z-z2) 
  |z| <= 32
  ;SOURCE: 97msg.frm
}


contest3aa (xaxis) {; Kerry Mitchell
                    ; starts at one critical point of the function
  c=pixel, z=(c+sqrt(c*(c-3)))/3:
  z2=sqr(z), z=z*z2+c*(1+z-z2)
  |z| <= 256
  ;SOURCE: 97msg.frm
}


contest3b (xaxis) {; Kerry Mitchell
                   ; starts at the other critical point of the function
  c=pixel, z=(c-sqrt(c*(c-3)))/3:
  z2=sqr(z), z=z*z2+c*(1+z-z2) 
  |z| <= 32
  ;SOURCE: 97msg.frm
}


contest4 {; Kerry Mitchell
          ; slightly optimized version of Contest formula
          ; THIS IS THE ONE USED IN THE 1997 CONTEST
  z=p1, c=pixel:
  z2=sqr(z), z=z*z2+c*(1+z-z2)
  |z| <= 4
  ;SOURCE: contest.frm
}


contest4a {; Kerry Mitchell (variable bailout by JM)
           ; slightly optimized version of Contest formula
  z=p1, c=pixel:
  z2=sqr(z), z=z*z2+c*(1+z-z2)
  |z| <= p2
  ;SOURCE: 97msg.frm
}


contest4m {; Kerry Mitchell
           ; slightly optimized version of Contest formula
  z = p1, c = p3*pixel:
  z2 = sqr(z), z = p2*z*z2 + c*(1+z-z2)
  |z| <= 100
  ;SOURCE: test.frm
}


Continua1 {
   ; Real p1 is temporal resolution. Imag p1 is bailout. p2 is parameter.
  v=0, z=pixel, t=real(p1), b=imag(p1):
  a=z*z+p2
  v=v+a*t
  z=z+v*t
  |z|<=b
  ;SOURCE: pd-aug97.frm
}


coral_J {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=0.30769, b0=-0.53147, c0=-0.46154, d0=-0.29371
  a1=0.30769, b1=-0.07692, c1=0.15385, d1=-0.44755
  a2=0.01000, b2=0.54545, c2=0.69231, d2=-0.19580
  al0=-0.33566, k0=-3.01337, l0=-5.15633
  al1=-0.12587, k1=-0.89915, l1=-1.47711
  al2=-0.37958, k2=3.00715, l2=-3.46060
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


coral_M {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=0.30769, b0=-0.53147, c0=-0.46154, d0=-0.29371
  a1=0.30769, b1=-0.07692, c1=0.15385, d1=-0.44755
  a2=0.01000, b2=0.54545, c2=0.69231, d2=-0.19580
  al0=-0.33566, k0=-3.01337, l0=-5.15633
  al1=-0.12587, k1=-0.89915, l1=-1.47711
  al2=-0.37958, k2=3.00715, l2=-3.46060
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


Cos1 (XAXIS) {  
  c = z = pixel:
  z = (1-(z^cos(1.1-z))) + c + p1
  |z| <= 4
  ;SOURCE: robert.frm
}


Cos1z (XYAXIS) {
  z = Pixel:  
  z = cos(1/z) 
  |z| <= 50 
  ;SOURCE: skinv151.frm
}


Cos_Rings_Mset {; Modified version of P. Carlson's Cosh_Rings_Mset
    ;   real(p1) = a factor controlling the width of the rings
    ;   imag(p1)   not used
    ;   p2       = bailout value for |w|
  c = pixel
  w = bailout = iter = 0
  ring_width = real(p1)
  index_factor = 124 / ring_width:
  w = cos(w) + c
  dist = abs(|w|-.25)
  bailout = (iter > 0) * (dist < ring_width)
  iter = iter + 1
  z = (index_factor * dist + 128) * bailout - iter
  bailout == 0 && |w| < p2
  ;SOURCE: 98msg.frm
}


CosDog (YAXIS) { 
  z = Pixel, b = p1+2:  
  z = cos( z ) * pixel  
  |z| <= b 
  ;SOURCE: newform.frm
}


Cosecantbrot {; Tom Schumm
              ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):       ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  imag(z) <= 4/sin(real(z))    ; Different escape boundry
  ;SOURCE: phong.frm
}


Cosecantia (ORIGIN) {; Tom Schumm
                     ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):       ; Just like julia
  z = z + p1
  z = Sqr(z)
  imag(z) <= 4/sin(real(z))    ; Different escape boundry
  ;SOURCE: phong2.frm
}


Cosh_Atan_Mset {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = maximum value of abs(real(w))
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
  prev_w = 0
  c = pixel
  z = 0
  bailout = 0
  iter = 0
  range_num = 0
  max_real = real(p1)
    ;****************************************************
    ; In the accompanying par file coshatan.par,
    ; we have 2 color ranges with 125 colors in each range
    ; for a total of 250 colors. The first range starts at
    ; color 1.  Pixels will use color 253 for no bailout.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ;****************************************************
  num_ranges = real(p2)
  colors_in_range = imag(p2):
    ;****************************************************
    ; The equation being iterated.
    ;****************************************************
  w = cosh(prev_w) + c
    ;****************************************************
    ; If abs(real(w)) exceeds the value of max_real, set z to
    ; the index into the colormap and set the bailout flag.
    ;****************************************************
  IF (abs(real(w)) > max_real)
        ;***************************************************
        ; Compute the angle between the last 2 orbit points
        ;***************************************************
    delta_i = imag(w) - imag(prev_w)
    delta_r = real(w) - real(prev_w)
    angle = abs(atan(delta_i / delta_r))
    bailout = 1
    range_index = 2 * colors_in_range * angle / pi
    z = range_index + range_num * colors_in_range + 1
  ENDIF
  prev_w = w
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
  bailout == 0
  ;SOURCE: 98msg.frm
}


Cosh_Rings_Mset {; Copyright (c) Paul W. Carlson, 1998
    ;   real(p1) = a factor controlling the width of the rings
    ;   imag(p1)   not used
    ;   p2       = bailout value for |w|
  c = pixel
  w = bailout = iter = 0
  ring_width = real(p1)
  index_factor = 124 / ring_width:
  w = cosh(w) + c
  dist = abs(|w|-.25)
  bailout = (iter > 0) * (dist < ring_width)
  iter = iter + 1
  z = (index_factor * dist + 128) * bailout - iter
  bailout == 0 && |w| < p2
  ;SOURCE: 98msg.frm
}


CosHDog (YAXIS) { 
  z = Pixel, b = p1+2:  
  z = cosh( z ) * pixel 
  |z| <= b 
  ;SOURCE: newform.frm
}


CoshInvZ (XYAXIS) {
  z=pixel, inv=1/pixel+p1:
  z=cosh(inv/z)
  |z|<=4
  ;SOURCE: fract001.frm
}


Cosinebrot {; Tom Schumm
            ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):       ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  imag(z) <= cos(real(z))+4    ; Different escape boundry
  ;SOURCE: phong.frm
}


Cosineia (ORIGIN) {; Tom Schumm
                   ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):       ; Just like julia
  z = z + p1
  z = Sqr(z)
  imag(z) <= cos(real(z))+4    ; Different escape boundry
  ;SOURCE: phong2.frm
}


CosInvZ (XYAXIS) {
  z=pixel, inv=1/pixel+p1:
  z=cos(inv/z)
  |z|<=4
  ;SOURCE: fract001.frm
}


Coslider {
  z=pixel
  d=8
  b=d*2
  s=z+d
  n=z-d
  c=s*p2/b-n*p1/b:
  z=c*cos(z)
  |imag(z)|<127
  ;SOURCE: pderb.frm
}


CosSinZZ (XAXIS) {; resol. sin(z)^sin(z)=cos(z)^cos(z) Jm Collard-Richard
                  ; use float=yes
  z=pixel:
  s=sin(z), c=cos(z), ss=s^s, cc=c^c
  z1=ss-cc
  z2=(c+c*log(s))*ss+(s*log(c)+s)*cc
  z=z-(z1/z2)
  0.001<=|z1| 
  ;SOURCE: jmcr2.frm
}


CosZ1 (XYAXIS) {; Resol. cos(z)^cos(z)=1 Jm Collard-Richard
                ; float=yes
  z=pixel:
  s=sin(z)
  c=cos(z)
  cc=c^c
  z1=cc-1
  z2=(-s*log(c)-s)*cc
  z=z-(z1/z2)
  0.001<=|z1| 
  ;SOURCE: jmcr2.frm
}


CosZZ (XAXIS) { ; Jm Collard-Richard
  z=pixel:
  zz=z^z
  z1=cos(z)-zz
  z2=-sin(z)-(log(z)+1)*zz
  z=z-(z1/z2)
  0.001<=|z1| 
  ;SOURCE: jmcr2.frm
}


CoszzcM {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = controls size of elements
    ; imag(p1)   not used
    ; real(p2) = number of color ranges
    ; imag(p2) = number of colors in a range
    ;
  pw = z = iter = range_num = bailout = 0
  c = pixel
  max_ratio = real(p1)
  num_ranges = real(p2)
  colors_in_range = imag(p2)
  factor = (colors_in_range - 1) / max_ratio
  :
  w = cos(pw * pw) + c
    ;
  ratio = |pw| / |w|
  pw = w
  IF (ratio < max_ratio && iter > 0)
    bailout = 1
    z = factor * ratio + range_num * colors_in_range + 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < 1.0e20
  ;SOURCE: 98msg.frm
}


CrazyMidgets {; JM, draws very distorted midgets
  c=pixel, a=real(p1), b=imag(p1), d=real(p2), f=imag(p2)
  g=1/f, h=1/d, j=1/(f-b), z=(-a*b*g*h)^j:
  z=(a*(z^b))+(d*(z^f))+c
  |z| <= 100
  ;SOURCE: 98msg.frm
}


CrazyNewton {; Jim Muth
  a=real(p1), b=imag(p1), c=real(p2)
  d=imag(p2), k=real(p3), f=imag(p3)
  z=pixel:
  zx=z^b
  zy=c*(zx*z)
  z=(d*zy+a)/(k*zx)
  f<=|zy-a|
  ;SOURCE: 97msg.frm
}


Crentura (YAXIS) {
  z = c = pixel + p1:
  z = (1/sqr(z)) * c + pixel 
  z = fn1(z) * z 
  |z| < 4
  ;SOURCE: altura.frm
}


Crentura_2 (XAXIS) {
  z = c = pixel - 0.5:
  z = (1/sqr(z)) * z + pixel 
  z = fn1(z) * c 
  |z| < 4
  ;SOURCE: altura.frm
}


Crescent (XAXIS_NOIMAG) {; M-Set to Moonworld
                         ; (c) 1997 Bernd Lehnhoff
                         ; use floating point and periodicity=no!
                         ; starting with w1!
                         ; p2 is a perturbation
  IF(p2==0)
    p2=0.5
  ENDIF
  v = pixel + p2 
  a = log(|p2|)-12 
  c = sqr(pixel):
  u = v
  v = (u + c/u)/2 + p2
  z = v - u
  log(|z|) >= a
  ;SOURCE: 97msg.frm
}


Crescent_3 (XAXIS_NOIMAG) {; Generalized version of Crescent
                           ; (c) 1997 Bernd Lehnhoff
                           ; use floating point and periodicity=no!
                           ; p2 is a perturbation  
  IF(p2==0)
    p2=0.5
  ENDIF
  v = pixel
  a = log(|p2|)-12: 
  u = v
  v = u-u/3*(1-(pixel/u)^3)+p2
  z = v - u
  log(|z|) >= a
  ;SOURCE: 97msg.frm
}


Crescent_General (XAXIS_NOIMAG) {; Generalized version of Crescent
                                 ; (c) 1997 Bernd Lehnhoff
                                 ; use floating point and periodicity=no!
                                 ; p2 is a perturbation  
                                 ; p3 is the degree of the root
  IF(p2==0)
    p2=0.5
  ENDIF
  v = pixel
  a = log(|p2|)-12: 
  u = v
  v = u-u/p3*(1-(pixel/u)^p3)+p2
  z = v - u
  log(|z|) >= a
  ;SOURCE: 97msg.frm
}


Cross {; Edited for Fractint v. 20 by George Martin, 10/98
  z = pixel:
  z = cos(z) + pixel
  z = z + sqr(pixel) 
  |z| <= 42
  ;SOURCE: hubert.frm
}


CrossN2Eyes (xaxis) {; M.L. Newsted Jr.
  z = (pixel - 1) / pixel
  c = pixel:
  z = z*z + c
  |z| < 4
  ;SOURCE: 97msg.frm
}


crown (XAXIS) {
   ; some interesting combinations make some wierd formations.
  z = zp1 = pixel, zp2 = (0,0):
  temp = z
  z = z*zp2 - zp1
  zp2 = zp1^.5
  zp1 = temp
  |zp1| <= 4 
  ;SOURCE: noel.frm
}


crystal_J {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=0.69697, b0=-0.48106, c0=-0.39394, d0=-0.66288
  a1=0.09091, b1=-0.44318, c1=0.51515, d1=-0.09470
  al0=-0.65152, k0=-3.53667, l0=-8.03175
  al1=0.21970, k1=-0.89072, l1=1.94225
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


crystal_M {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=0.69697, b0=-0.48106, c0=-0.39394, d0=-0.66288
  a1=0.09091, b1=-0.44318, c1=0.51515, d1=-0.09470
  al0=-0.65152, k0=-3.53667, l0=-8.03175
  al1=0.21970, k1=-0.89072, l1=1.94225
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


cshell1 {; Giuseppe Zito c1=0.357057
  z=pixel, c1 = 0.357057 
  :
  x = real(z), y = imag(z)
  newx = x*x + c1*x -y 
  newy = x + y
  z = newx + flip(newy)
  |z|<4
  ;SOURCE: zg.frm
}


CshZZ (XAXIS) {; Jm Collard-Richard
  z=pixel:
  zz=z^z
  z1=cos(z)-sinh(z)-zz
  z2=-sin(z)-cosh(z)-(log(z)+1)*zz
  z=z-(z1/z2)
  0.001<=|z1| 
  ;SOURCE: jmcr2.frm
}


CSin_Atan_Julia {; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = Julia set coordinates
    ;   real(p2) = maximum value of abs(real(w))
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;****************************************************
  prev_w = pixel
  c = p1
  z = 0
  bailout = 0
  iter = 0
  range_num = 0
  max_real = real(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3):
    ;****************************************************
  w = c * sin(prev_w)
    ;****************************************************
  IF (abs(real(w)) > max_real)
    delta_i = imag(w) - imag(prev_w)
    delta_r = real(w) - real(prev_w)
    angle = abs(atan(delta_i / delta_r))
    bailout = 1
    range_index = 2 * colors_in_range * angle / pi
    z = range_index + range_num * colors_in_range + 1
  ENDIF
  prev_w = w
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0
  ;SOURCE: carlson.par
}


CSZZ (XAXIS) {; resol. cos(sin(z))=z^z     Jm Collard-Richard
              ; Use Float=yes
  z=pixel:
  zz=z^z
  s=sin(z)
  c=cos(z)
  z1=cos(s)-zz
  z2=-c*sin(s)-(log(z)+1)*zz
  z=z-(z1/z2)
  0.001<=|z1| 
  ;SOURCE: jmcr2.frm
}


Cubebrot2j {
  z=pixel:
  z=z*z*z/3+z+p1
  |z|<=25
  ;SOURCE: pderb.frm
}


Cubebrot2m {
  z=P1:
  z=z*z*z/3+z+pixel
  |z|<=25
  ;SOURCE: pderb.frm
}


Cubic (XYAXIS) {; Lee Skinner
  p = pixel, test = p1 + 3
  t3 = 3*p, t2 = p*p
  a = (t2 + 1)/t3, b = 2*a*a*a + (t2 - 2)/t3
  aa3 = a*a*3, z = 0 - a :
  z = z*z*z - aa3*z + b
  |z| < test
  ;SOURCE: fractint.frm
}


Cubic_alt {
   ;(c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = c = pixel:
  z = z ^ 3 + z ^ 2
  |z - pixel| < 4
  ;SOURCE: frame.frm
}


Cubic_reg {
   ;(c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = c = pixel:
  z = 0.2 * z ^ 3 + z ^ 2 + c
  |z| < 4
  ;SOURCE: frame.frm
}


cubicab1 {; (C) Jay Hill, 1998
          ; Bodil Branner's cubic
  a=p1, z=sqrt(a/3), b=pixel, e1=|b|, e2=sqrt(|a|+2)
  IF(e2>e1)
    e1=e2
  ENDIF
  :
  z=sqr(z)*(z+a)+b
  z<e1
  ;SOURCE: 98msg.frm
}


cubicab2 {; (C) Jay Hill, 1998
          ; Bodil Branner's cubic
  a=p1, z=-sqrt(a/3), b=pixel, e1=|b|, e2=sqrt(|a|+2)
  IF (e2>e1)
    e1=e2
  ENDIF
  :
  z=sqr(z)*(z+a)+b
  z<e1
  ;SOURCE: 98msg.frm
}


cubicab4 {; (C) Jay Hill, 1998
          ; Bodil Branner's cubic
  b=p1, z=-sqrt(a/3), a=pixel, e1=|b|
  e2=sqrt(|a|+2)
  IF(e2>e1)
    e1=e2
  ENDIF
  :
  z=z*(sqr(z)+a)+b
  z<e1*10
  ;SOURCE: 98msg.frm
}


Cubicfn {; Ron Barnett, 1995
  z = c = pixel:
  z = fn1((z-1)*(z-1)*(z+1)) - c*P1 + P2
  |z| <= 4
  ;SOURCE: reb006.frm
}


CubicJulia {
  A = p1
  B = p2
  T = 3*A*A
  Z = Pixel:
  Z = Z*Z*Z - T*Z + B
  |Z| < 4
  ;SOURCE: 99msg.frm
}


CubicMandelbrotB {
  A = p1
  B = Pixel
  T = 3*A*A
  X = A
  Y =-A
  X = X*X*X - T*X + B
  Y = Y*Y*Y - T*Y + B
  IF (|X|>|Y|)
    Z=X
  ELSE
    Z=Y
  ENDIF
  |Z| < 4
  ;SOURCE: 99msg.frm
}


CubicMandelbrotBP {
  A = p1
  B = Pixel
  T = 3*A*A
  Z = A:
  Z = Z*Z*Z - T*Z + B
  |Z| < 4
  ;SOURCE: 99msg.frm
}


Curfew {
  z = 0, c = pixel:
  z = z + c + p1
  z = z * fn1((1/c)/(1/z)) 
  |z| < 4
  ;SOURCE: korfu.frm
}


Curly {; Mutation of 'Natura'. Mutated by Bradley Beacham [74223,2745]
       ; Original formula by Michael Theroux [71673,2767]
       ; For 'Natura', set FN1 & FN2 =IDENT and P1 & P2 = default
       ; p1 = Parameter (default 0.5,0), real(p2) = Bailout (default 4)
  z = pixel
       ; The next line sets c=default if p1=0, else c=p1
  c = ((0.5,0) * (|p1|<=0) + p1)
       ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2)):
  z = fn1(fn2(z*z*z)) + c
  |z| <= test
  ;SOURCE: dons.frm
}

