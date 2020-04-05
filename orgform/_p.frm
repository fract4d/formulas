

P02-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (Euler method)
        ;
        ; P(n+1) = ((2n+1)xP(n)-nP(n-1))/(n+1)
        ; P(0)  = 1
        ; P(1)  = x
        ;
        ; = (3zP01-P00)/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(3*x*x-1)/2
  Ty=(3*y*y-1)/2
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


P02-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; Chebyshev Types:
                 ; Inspired by Clifford A. Pickover:
                 ; Dynamic
                 ;
                 ; P(n+1) = ((2n+1)xP(n)-nP(n-1))/(n+1)
                 ; P(0)  = 1
                 ; P(1)  = x
                 ;
                 ; = (3zP01-P00)/2
  bailout=p1+4, z=pixel:
  z=(3*z*z-1)/2
  |z|<=bailout
  ;SOURCE: chby2.frm
}


P02-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Julia)
        ;
        ; P(n+1) = ((2n+1)xP(n)-nP(n-1))/(n+1)
        ; P(0)  = 1
        ; P(1)  = x
        ;
        ; = (3zP01-P00)/2
  const=p1, z=pixel:
  z=(3*z*z-1)/2+const
  |z|<100
  ;SOURCE: chby3.frm
}


P02-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Mandelbrot)
        ;
        ; P(n+1) = ((2n+1)xP(n)-nP(n-1))/(n+1)
        ; P(0)  = 1
        ; P(1)  = x
        ;
        ; = (3zP01-P00)/2
  const=pixel, z=p1:
  z=(3*z*z-1)/2+const
  |z|<100
  ;SOURCE: chby4.frm
}


P02-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Newton Method
        ;
        ; P(n+1) = ((2n+1)zP(n)-nP(n-1))/(n+1)
        ; T(0)  = 1
        ; T(1)  = z
        ;
        ; = (3zP(1)-P(0))/2
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(3*z*z-1)/2
  fd=6*z/2
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


P02-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Halley Method
        ;
        ; P(n+1) = ((2n+1)zP(n)-nP(n-1))/(n+1)
        ; P(0) = 1
        ; P(1) = z
        ;
        ; = ( 3zP01-P00)/2
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(3*z*z-1)/2
  fd=3*z
  fdd=3
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


P02-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; Chebyshev Types:
                 ; Inspired by Bradley Beacham
                 ; Cubic Method
                 ;
                 ; P(n+1) = ((2n+1)zP(n)-nP(n-1))/(n+1)
                 ; P(0) = 1
                 ; P(1) = z
                 ;
                 ; = ( 3zP01-P00)/2
  bailout=real(p2)/10000, z=pixel:
  f=(3*z*z-1)/2
  fd=3*z
  oz=z
  w=z-f/fd
  fw=(3*w*w-1)/2
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


P02-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler method)
        ;
        ; P(n+1) = ((2n+1)xP(n)-nP(n-1))/(n+1)
        ; P(0)  = 1
        ; P(1)  = x
        ;
        ;  = ( 3zP01-1P00)/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin((3*x*x-1)/2)
  Ty=sin((3*y*y-1)/2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


P02-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler Method)
        ;
        ; P(n+1) = ((2n+1)xP(n)-nP(n-1))/(n+1)
        ; P(0)  = 1
        ; P(1)  = x
        ;
        ;  = ( 3zP01-1P00)/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((3*x*x-1)/2)
  Ty=fn1((3*y*y-1)/2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


P02-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; Chebyshev Types:
        ; Inspired by Mike Wareman:
        ; Secant Method
        ;
        ; P(n+1) = ((2n+1)zP(n)-nP(n-1))/(n+1)
        ; P(0) = 1
        ; P(1) = z
        ;
        ; = ( 3zP01-P00)/2
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(3*p1*p1-1)/2:
  zt=z
  foz=fz
  fz=(3*z*z-1)/2
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


P02-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Julia)
        ;
        ; P(n+1) = ((2n+1)xP(n)-nP(n-1))/(n+1)
        ; P(0)  = 1
        ; P(1)  = x
        ;
        ; = (3zP01-P00)/2
  const=p1, z=pixel:
  z=(3*z*z-1)/2*const
  |z|<100
  ;SOURCE: chby11.frm
}


P02-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Mandelbrot)
        ;
        ; P(n+1) = ((2n+1)xP(n)-nP(n-1))/(n+1)
        ; P(0)  = 1
        ; P(1)  = x
        ;
        ; = (3zP01-P00)/2
  const=pixel, z=p1:
  z=(3*z*z-1)/2*const
  |z|<100
  ;SOURCE: chby12.frm
}


P02-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Halley Method with weird bailout test
        ;
        ; P(n+1) = ((2n+1)zP(n)-nP(n-1))/(n+1)
        ; P(0) = 1
        ; P(1) = z
        ;
        ; = ( 3zP01-P00)/2
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(3*z*z-1)/2
  fd=3*z
  fdd=3
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


P02-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; Chebyshev Types:
                 ; Inspired by Bradley Beacham
                 ; Cubic Method with weird bailout test
                 ;
                 ; P(n+1) = ((2n+1)zP(n)-nP(n-1))/(n+1)
                 ; P(0) = 1
                 ; P(1) = z
                 ;
                 ; = ( 3zP01-P00)/2
  bailout=real(p2)/10000, z=pixel:
  f=(3*z*z-1)/2
  fd=3*z
  oz=z
  w=z-f/fd
  fw=(3*w*w-1)/2
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


P02-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Newton Method with weird bailout test
        ;
        ; P(n+1) = ((2n+1)zP(n)-nP(n-1))/(n+1)
        ; T(0)  = 1
        ; T(1)  = z
        ;
        ; = (3zP(1)-P(0))/2
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(3*z*z-1)/2
  fd=6*z/2
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


P02-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; Chebyshev Types:
        ; Inspired by Mike Wareman:
        ; Secant Method with weird bailout test
        ;
        ; P(n+1) = ((2n+1)zP(n)-nP(n-1))/(n+1)
        ; P(0) = 1
        ; P(1) = z
        ;
        ; = ( 3zP01-P00)/2
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(3*p1*p1-1)/2:
  zt=z
  foz=fz
  fz=(3*z*z-1)/2
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


P02-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; Chebyshev Types
        ; Inspired by Mike Wareman
        ; Secant Method with Girvan perturbations and weird bailout test
        ;
        ; P(n+1) = ((2n+1)zP(n)-nP(n-1))/(n+1)
        ; P(0) = 1
        ; P(1) = z
        ;
        ; = ( 3zP01-P00)/2
  z=pixel, oz=0
  fz=-1/2
  zt=fn1(z)+p1:
  foz=fz
  fz=(3*z*z-1)/2
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


P02-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; Chebyshev Types
        ; Inspired by Mike Wareman
        ; Secant Method with Girvan perturbations and weird bailout test
        ;
        ; P(n+1) = ((2n+1)zP(n)-nP(n-1))/(n+1)
        ; P(0) = 1
        ; P(1) = z
        ;
        ; = ( 3zP01-P00)/2
  z=pixel, oz=0
  fz=-1/2
  zt=fn1(z)+p1:
  foz=fz
  fz=(3*z*z-1)/2
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


P02-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (Implicit Euler method)
        ;
        ; P(n+1) = ((2n+1)xP(n)-nP(n-1))/(n+1)
        ; P(0)  = 1
        ; P(1)  = x
        ;
        ; = (3zP01-P00)/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*((3*x*x-1)/2)
  x=x-t*((3*y*y-1)/2)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


P02-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler method)
        ;
        ; P(n+1) = ((2n+1)xP(n)-nP(n-1))/(n+1)
        ; P(0)  = 1
        ; P(1)  = x
        ;
        ; = ( 3zP01-1P00)/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin((3*x*x-1)/2)
  x=x-t*sin((3*y*y-1)/2)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


P02-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler method)
        ;
        ; P(n+1) = ((2n+1)xP(n)-nP(n-1))/(n+1)
        ; P(0)  = 1
        ; P(1)  = x
        ;
        ;  = ( 3zP01-1P00)/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1((3*x*x-1)/2))
  x=x-t*(fn1((3*y*y-1)/2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


P02-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler method)
        ;
        ; P(n+1) = ((2n+1)xP(n)-nP(n-1))/(n+1)
        ; P(0)  = 1
        ; P(1)  = x
        ;
        ; = ( 3zP01-1P00)/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((3*x*x-1)/2)
  Ty=fn2((3*y*y-1)/2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


P02-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler method)
        ;
        ; P(n+1) = ((2n+1)xP(n)-nP(n-1))/(n+1)
        ; P(0)  = 1
        ; P(1)  = x
        ;
        ;  = ( 3zP01-1P00)/2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1((3*x*x-1)/2)
  Ty=fn2((3*y*y-1)/2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


P02-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler Method)
        ;
        ; P(n+1) = ((2n+1)xP(n)-nP(n-1))/(n+1)
        ; P(0)  = 1
        ; P(1)  = x
        ;
        ; = ( 3zP01-1P00)/2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1((3*x*x-1)/2))
  x=x-t*(fn2((3*y*y-1)/2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


P02-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler Method)
        ;
        ; P(n+1) = ((2n+1)xP(n)-nP(n-1))/(n+1)
        ; P(0)  = 1
        ; P(1)  = x
        ;
        ; = ( 3zP01-1P00)/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1((3*x*x-1)/2))
  x=x-t*(fn2((3*y*y-1)/2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


P02-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Kathy Roth:
        ; Dynamic (modified implicit Euler Method, gravitated)
        ;
        ; Lagandre polynomials
        ; P[0] = 1
        ; P[1] = z
        ; P[n+1] = ((2n+1)zP[n]-nP[n-1])/(n+1)
        ;
        ;  = ( 3zP01-1P00)/2
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1((3*x*x-1)/2))
  Ty=(fn1((3*y*y-1)/2))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


P02-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Kathy Roth:
        ; Dynamic (modified implicit Euler Method, popped)
        ;
        ; Lagandre polynomials
        ; P[0] = 1
        ; P[1] = z
        ; P[n+1] = ((2n+1)zP[n]-nP[n-1])/(n+1)
        ;
        ;  = ( 3zP01-1P00)/2
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1((3*x*x-1)/2))
  Ty=(fn1((3*y*y-1)/2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


P02-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Kathy Roth:
        ; Dynamic (modified implicit Euler Method, popped)
        ;
        ; Lagandre polynomials
        ; P[0] = 1
        ; P[1] = z
        ; P[n+1] = ((2n+1)zP[n]-nP[n-1])/(n+1)
        ;
        ;  = ( 3zP01-1P00)/2
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1((3*x*x-1)/2))
  Ty=(fn1((3*y*y-1)/2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


P02-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler method, Sylvie Gallet test)
        ;
        ; Lagandre polynomials
        ; P[0] = 1
        ; P[1] = z
        ; P[n+1] = ((2n+1)zP[n]-nP[n-1])/(n+1)
        ;
        ;  = ( 3zP01-1P00)/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1((3*x*x-1)/2))
  Ty=(fn1((3*y*y-1)/2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


P02-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Ray Parracho:
        ; Regula-Falsi Method
        ;
        ; Lagandre polynomials
        ; P[0] = 1
        ; P[1] = z
        ; P[n+1] = ((2n+1)zP[n]-nP[n-1])/(n+1)
        ;
        ; = (3zP01-P00)/2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=(3*x0*x0-1)/2
  Fx1=(3*x1*x1-1)/2
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


P03-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (5zP02-2P01)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(5*x*x-3)/2
  Ty=y*(5*y*y-3)/2
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


P03-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (5zP02-2P01)/3
  bailout=p1+4, z=pixel:
  z=z*(5*z*z-3)/2
  |z|<=bailout
  ;SOURCE: chby2.frm
}


P03-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (5zP02-2P01)/3
  const=p1, z=pixel:
  z=z*(5*z*z-3)/2+const
  |z|<100
  ;SOURCE: chby3.frm
}


P03-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (5zP02-2P01)/3
  const=pixel, z=p1:
  z=z*(5*z*z-3)/2+const
  |z|<100
  ;SOURCE: chby4.frm
}


P03-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (5zP(2)-2P(1))/3
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(5*zz-3)/2
  fd=3*(5*zz-1)/2
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


P03-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 5zP02-2P01)/3
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(5*zz-3)/2
  fd=(15*zz-3)/2
  fdd=15*z
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


P03-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = ( 5zP02-2P01)/3
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(5*zz-3)/2
  fd=(15*zz-3)/2
  oz=z
  w=z-f/fd
  fw=w*(5*w*w-3)/2
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


P03-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ;  = ( 5zP02-2P01)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(x*(5*x*x-3)/2)
  Ty=sin(y*(5*y*y-3)/2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


P03-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ;  = ( 5zP02-2P01)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(5*x*x-3)/2)
  Ty=fn1(y*(5*y*y-3)/2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


P03-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 5zP02-2P01)/3
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(5*p1*p1-3)/2:
  zt=z
  foz=fz
  fz=z*(5*z*z-3)/2
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


P03-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (5zP02-2P01)/3
  const=p1, z=pixel:
  z=z*(5*z*z-3)/2*const
  |z|<100
  ;SOURCE: chby11.frm
}


P03-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (5zP02-2P01)/3
  const=pixel, z=p1:
  z=z*(5*z*z-3)/2*const
  |z|<100
  ;SOURCE: chby12.frm
}


P03-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 5zP02-2P01)/3
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(5*zz-3)/2
  fd=(15*zz-3)/2
  fdd=15*z
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


P03-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = ( 5zP02-2P01)/3
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(5*zz-3)/2
  fd=(15*zz-3)/2
  oz=z
  w=z-f/fd
  fw=w*(5*w*w-3)/2
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


P03-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (5zP(2)-2P(1))/3
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(5*zz-3)/2
  fd=3*(5*zz-1)/2
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


P03-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 5zP02-2P01)/3
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(5*p1*p1-3)/2:
  zt=z
  foz=fz
  fz=z*(5*z*z-3)/2
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


P03-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 5zP02-2P01)/3
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(5*z*z-3)/2
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


P03-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 5zP02-2P01)/3
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(5*z*z-3)/2
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


P03-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (5zP02-2P01)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(x*(5*x*x-3)/2)
  x=x-t*(y*(5*y*y-3)/2)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


P03-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 5zP02-2P01)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(x*(5*x*x-3)/2)
  x=x-t*sin(y*(5*y*y-3)/2)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


P03-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ;  = ( 5zP02-2P01)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(5*x*x-3)/2))
  x=x-t*(fn1(y*(5*y*y-3)/2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


P03-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 5zP02-2P01)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(5*x*x-3)/2)
  Ty=fn2(y*(5*y*y-3)/2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


P03-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ;  = ( 5zP02-2P01)/3
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(x*(5*x*x-3)/2)
  Ty=fn2(y*(5*y*y-3)/2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


P03-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 5zP02-2P01)/3
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(5*x*x-3)/2))
  x=x-t*(fn2(y*(5*y*y-3)/2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


P03-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 5zP02-2P01)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(5*x*x-3)/2))
  x=x-t*(fn2(y*(5*y*y-3)/2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


P03-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = ( 5zP02-2P01)/3
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(x*(5*x*x-3)/2))
  Ty=(fn1(y*(5*y*y-3)/2))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


P03-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = ( 5zP02-2P01)/3
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(5*x*x-3)/2))
  Ty=(fn1(y*(5*y*y-3)/2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


P03-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = ( 5zP02-2P01)/3
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(5*x*x-3)/2))
  Ty=(fn1(y*(5*y*y-3)/2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


P03-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = ( 5zP02-2P01)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1(x*(5*x*x-3)/2))
  Ty=(fn1(y*(5*y*y-3)/2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


P03-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = (5zP02-2P01)/3
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(5*x0*x0-3)/2
  Fx1=x1*(5*x1*x1-3)/2
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


P04-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (7zP03-3P02)/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=(5*xx*(7*xx-6)+3)/8
  Ty=(5*yy*(7*yy-6)+3)/8
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


P04-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (7zP03-3P02)/4
  bailout=p1+4, z=pixel:
  zz=z*z
  z=(5*zz*(7*zz-6)+3)/8
  |z|<=bailout
  ;SOURCE: chby2.frm
}


P04-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (7zP03-3P02)/4
  const=p1, z=pixel:
  zz=z*z
  z=(5*zz*(7*zz-6)+3)/8+const
  |z|<100
  ;SOURCE: chby3.frm
}


P04-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (7zP03-3P02)/4
  const=pixel, z=p1:
  zz=z*z
  z=(5*zz*(7*zz-6)+3)/8+const
  |z|<100
  ;SOURCE: chby4.frm
}


P04-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (7zP(3)-3P(2))/4
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(5*zz*(7*zz-6)+3)/8
  fd=5*z*(7*zz-3)/2
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


P04-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 7zP03-3P02)/4
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(5*zz*(7*zz-6)+3)/8
  fd=5*z*(7*zz-3)
  fdd=105*zz-15
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


P04-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = ( 7zP03-3P02)/4
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(5*zz*(7*zz-6)+3)/8
  fd=5*z*(7*zz-3)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=(5*ww*(7*ww-6)+3)/8
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


P04-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ;  = ( 7zP03-3P02)/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin((5*xx*(7*xx-6)+3)/8)
  Ty=sin((5*yy*(7*yy-6)+3)/8)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


P04-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 7zP03-3P02)/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1((5*xx*(7*xx-6)+3)/8)
  Ty=fn1((5*yy*(7*yy-6)+3)/8)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


P04-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 7zP03-3P02)/4
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=(5*zz*(7*zz-6)+3)/8:
  zz=z*z
  zt=z
  foz=fz
  fz=(5*zz*(7*zz-6)+3)/8
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


P04-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (7zP03-3P02)/4
  const=p1, z=pixel:
  zz=z*z
  z=(5*zz*(7*zz-6)+3)/8*const
  |z|<100
  ;SOURCE: chby11.frm
}


P04-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (7zP03-3P02)/4
  const=pixel, z=p1:
  zz=z*z
  z=(5*zz*(7*zz-6)+3)/8*const
  |z|<100
  ;SOURCE: chby12.frm
}


P04-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 7zP03-3P02)/4
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(5*zz*(7*zz-6)+3)/8
  fd=5*z*(7*zz-3)
  fdd=105*zz-15
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


P04-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = ( 7zP03-3P02)/4
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(5*zz*(7*zz-6)+3)/8
  fd=5*z*(7*zz-3)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=(5*ww*(7*ww-6)+3)/8
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


P04-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (7zP(3)-3P(2))/4
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(5*zz*(7*zz-6)+3)/8
  fd=5*z*(7*zz-3)/2
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


P04-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 7zP03-3P02)/4
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=(5*zz*(7*zz-6)+3)/8:
  zz=z*z
  zt=z
  foz=fz
  fz=(5*zz*(7*zz-6)+3)/8
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


P04-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 7zP03-3P02)/4
  z=pixel, oz=0
  fz=3/8
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=(5*zz*(7*zz-6)+3)/8
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


P04-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 7zP03-3P02)/4
  z=pixel, oz=0
  fz=3/8
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=(5*zz*(7*zz-6)+3)/8
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


P04-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (7zP03-3P02)/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*((5*xx*(7*xx-6)+3)/8)
  yy=y*y
  x=x-t*((5*yy*(7*yy-6)+3)/8)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


P04-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 7zP03-3P02)/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin((5*xx*(7*xx-6)+3)/8)
  yy=y*y
  x=x-t*sin((5*yy*(7*yy-6)+3)/8)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


P04-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ;  = ( 7zP03-3P02)/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1((5*xx*(7*xx-6)+3)/8))
  yy=y*y
  x=x-t*(fn1((5*yy*(7*yy-6)+3)/8))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


P04-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 7zP03-3P02)/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1((5*xx*(7*xx-6)+3)/8)
  Ty=fn2((5*yy*(7*yy-6)+3)/8)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


P04-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ;  = ( 7zP03-3P02)/4
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1((5*xx*(7*xx-6)+3)/8)
  Ty=fn2((5*yy*(7*yy-6)+3)/8)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


P04-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 7zP03-3P02)/4
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1((5*xx*(7*xx-6)+3)/8))
  yy=y*y
  x=x-t*(fn2((5*yy*(7*yy-6)+3)/8))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


P04-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 7zP03-3P02)/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1((5*xx*(7*xx-6)+3)/8))
  yy=y*y
  x=x-t*(fn2((5*yy*(7*yy-6)+3)/8))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


P04-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = ( 7zP03-3P02)/4
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1((5*xx*(7*xx-6)+3)/8))
  yy=y*y
  Ty=(fn1((5*yy*(7*yy-6)+3)/8))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


P04-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = ( 7zP03-3P02)/4
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1((5*xx*(7*xx-6)+3)/8))
  yy=y*y
  Ty=(fn1((5*yy*(7*yy-6)+3)/8))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


P04-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = ( 7zP03-3P02)/4
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1((5*xx*(7*xx-6)+3)/8))
  yy=y*y
  Ty=(fn1((5*yy*(7*yy-6)+3)/8))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


P04-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = ( 7zP03-3P02)/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1((5*xx*(7*xx-6)+3)/8))
  yy=y*y
  Ty=(fn1((5*yy*(7*yy-6)+3)/8))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


P04-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = (7zP03-3P02)/4
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=(5*xx*(7*xx-6)+3)/8
  Fx1=(5*yy*(7*yy-6)+3)/8
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


P05-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (9zP04-4P03)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=x*(7*xx*(9*xx-10)+15)/8
  Ty=y*(7*yy*(9*yy-10)+15)/8
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


P05-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (9zP04-4P03)/5
  bailout=p1+4, z=pixel:
  zz=z*z
  z=z*(7*zz*(9*zz-10)+15)/8
  |z|<=bailout
  ;SOURCE: chby2.frm
}


P05-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (9zP04-4P03)/5
  const=p1, z=pixel:
  zz=z*z
  z=z*(7*zz*(9*zz-10)+15)/8+const
  |z|<100
  ;SOURCE: chby3.frm
}


P05-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (9zP04-4P03)/5
  const=pixel, z=p1:
  zz=z*z
  z=z*(7*zz*(9*zz-10)+15)/8+const
  |z|<100
  ;SOURCE: chby4.frm
}


P05-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (9zP(4)-4P(3))/5
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(7*zz*(9*zz-10)+15)/8
  fd=15*(7*zz*(3*zz-2)+1)/8
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


P05-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 9zP04-4P03)/5
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(7*zz*(9*zz-10)+15)/8
  fd=(105*zz*(3*zz-2)+15)/8
  fdd=105*z*(3*zz-1)/2
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


P05-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = ( 9zP04-4P03)/5
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(7*zz*(9*zz-10)+15)/8
  fd=(105*zz*(3*zz-2)+15)/8
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(7*ww*(9*ww-10)+15)/8
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


P05-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ;  = ( 9zP04-4P03)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(x*(7*xx*(9*xx-10)+15)/8)
  Ty=sin(y*(7*yy*(9*yy-10)+15)/8)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


P05-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 9zP04-4P03)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(7*xx*(9*xx-10)+15)/8)
  Ty=fn1(y*(7*yy*(9*yy-10)+15)/8)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


P05-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 9zP04-4P03)/5
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(7*zz*(9*zz-10)+15)/8:
  zz=z*z
  zt=z
  foz=fz
  fz=z*(7*zz*(9*zz-10)+15)/8
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


P05-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (9zP04-4P03)/5
  const=p1, z=pixel:
  zz=z*z
  z=z*(7*zz*(9*zz-10)+15)/8*const
  |z|<100
  ;SOURCE: chby11.frm
}


P05-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (9zP04-4P03)/5
  const=pixel, z=p1:
  zz=z*z
  z=z*(7*zz*(9*zz-10)+15)/8*const
  |z|<100
  ;SOURCE: chby12.frm
}


P05-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 9zP04-4P03)/5
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(7*zz*(9*zz-10)+15)/8
  fd=(105*zz*(3*zz-2)+15)/8
  fdd=105*z*(3*zz-1)/2
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
 bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


P05-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = ( 9zP04-4P03)/5
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(7*zz*(9*zz-10)+15)/8
  fd=(105*zz*(3*zz-2)+15)/8
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(7*ww*(9*ww-10)+15)/8
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


P05-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (9zP(4)-4P(3))/5
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(7*zz*(9*zz-10)+15)/8
  fd=15*(7*zz*(3*zz-2)+1)/8
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


P05-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 9zP04-4P03)/5
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(7*zz*(9*zz-10)+15)/8:
  zz=z*z
  zt=z
  foz=fz
  fz=z*(7*zz*(9*zz-10)+15)/8
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


P05-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 9zP04-4P03)/5
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(7*zz*(9*zz-10)+15)/8
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


P05-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 9zP04-4P03)/5
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(7*zz*(9*zz-10)+15)/8
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


P05-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (9zP04-4P03)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(x*(7*xx*(9*xx-10)+15)/8)
  yy=y*y
  x=x-t*(y*(7*yy*(9*yy-10)+15)/8)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


P05-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 9zP04-4P03)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(x*(7*xx*(9*xx-10)+15)/8)
  yy=y*y
  x=x-t*sin(y*(7*yy*(9*yy-10)+15)/8)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


P05-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ;  = ( 9zP04-4P03)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(7*xx*(9*xx-10)+15)/8))
  yy=y*y
  x=x-t*(fn1(y*(7*yy*(9*yy-10)+15)/8))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


P05-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 9zP04-4P03)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(7*xx*(9*xx-10)+15)/8)
  Ty=fn2(y*(7*yy*(9*yy-10)+15)/8)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


P05-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ;  = ( 9zP04-4P03)/5
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(7*xx*(9*xx-10)+15)/8)
  Ty=fn2(y*(7*yy*(9*yy-10)+15)/8)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


P05-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 9zP04-4P03)/5
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(7*xx*(9*xx-10)+15)/8))
  yy=y*y
  x=x-t*(fn2(y*(7*yy*(9*yy-10)+15)/8))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


P05-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 9zP04-4P03)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(7*xx*(9*xx-10)+15)/8))
  yy=y*y
  x=x-t*(fn2(y*(7*yy*(9*yy-10)+15)/8))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


P05-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = ( 9zP04-4P03)/5
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(x*(7*xx*(9*xx-10)+15)/8))
  yy=y*y
  Ty=(fn1(y*(7*yy*(9*yy-10)+15)/8))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


P05-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = ( 9zP04-4P03)/5
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(x*(7*xx*(9*xx-10)+15)/8))
  yy=y*y
  Ty=(fn1(y*(7*yy*(9*yy-10)+15)/8))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


P05-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = ( 9zP04-4P03)/5
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(x*(7*xx*(9*xx-10)+15)/8))
  yy=y*y
  Ty=(fn1(y*(7*yy*(9*yy-10)+15)/8))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


P05-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = ( 9zP04-4P03)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(x*(7*xx*(9*xx-10)+15)/8))
  yy=y*y
  Ty=(fn1(y*(7*yy*(9*yy-10)+15)/8))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


P05-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = (9zP04-4P03)/5
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=x0*(7*xx*(9*xx-10)+15)/8
  Fx1=x1*(7*yy*(9*yy-10)+15)/8
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


P06-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (11zP05-5P04)/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=(21*xx*(xx*(11*xx-15)+5)-5)/16
  Ty=(21*yy*(yy*(11*yy-15)+5)-5)/16
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


P06-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (11zP05-5P04)/6
  bailout=p1+4, z=pixel:
  zz=z*z
  z=(21*zz*(zz*(11*zz-15)+5)-5)/16
  |z|<=bailout
  ;SOURCE: chby2.frm
}


P06-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (11zP05-5P04)/6
  const=p1, z=pixel:
  zz=z*z
  z=(21*zz*(zz*(11*zz-15)+5)-5)/16+const
  |z|<100
  ;SOURCE: chby3.frm
}


P06-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (11zP05-5P04)/6
  const=pixel, z=p1:
  zz=z*z
  z=(21*zz*(zz*(11*zz-15)+5)-5)/16+const
  |z|<100
  ;SOURCE: chby4.frm
}


P06-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (11zP(5)-5P(4))/6
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(21*zz*(zz*(11*zz-15)+5)-5)/16
  fd=21*z*(3*zz*(11*zz-10)+5)/8
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


P06-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (11zP05-5P04)/6
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(21*zz*(zz*(11*zz-15)+5)-5)/16
  fd=21*z*(zz*(33*zz-30)+5)/8
  fdd=(315*zz*(11*zz-6)+105)/8
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


P06-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (11zP05-5P04)/6
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(21*zz*(zz*(11*zz-15)+5)-5)/16
  fd=21*z*(zz*(33*zz-30)+5)/8
  oz=z
  w=z-f/fd
  ww=w*w
  fw=(21*ww*(ww*(11*ww-15)+5)-5)/16
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


P06-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ;  = (11zP05-5P04)/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin((21*xx*(xx*(11*xx-15)+5)-5)/16)
  Ty=sin((21*yy*(yy*(11*yy-15)+5)-5)/16)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


P06-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (11zP05-5P04)/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1((21*xx*(xx*(11*xx-15)+5)-5)/16)
  Ty=fn1((21*yy*(yy*(11*yy-15)+5)-5)/16)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


P06-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (11zP05-5P04)/6
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=(21*zz*(zz*(11*zz-15)+5)-5)/16:
  zz=z*z
  zt=z
  foz=fz
  fz=(21*zz*(zz*(11*zz-15)+5)-5)/16
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


P06-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (11zP05-5P04)/6
  const=p1, z=pixel:
  zz=z*z
  z=(21*zz*(zz*(11*zz-15)+5)-5)/16*const
  |z|<100
  ;SOURCE: chby11.frm
}


P06-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (11zP05-5P04)/6
  const=pixel, z=p1:
  zz=z*z
  z=(21*zz*(zz*(11*zz-15)+5)-5)/16*const
  |z|<100
  ;SOURCE: chby12.frm
}


P06-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (11zP05-5P04)/6
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(21*zz*(zz*(11*zz-15)+5)-5)/16
  fd=21*z*(zz*(33*zz-30)+5)/8
  fdd=(315*zz*(11*zz-6)+105)/8
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


P06-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (11zP05-5P04)/6
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(21*zz*(zz*(11*zz-15)+5)-5)/16
  fd=21*z*(zz*(33*zz-30)+5)/8
  oz=z
  w=z-f/fd
  ww=w*w
  fw=(21*ww*(ww*(11*ww-15)+5)-5)/16
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


P06-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (11zP(5)-5P(4))/6
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(21*zz*(zz*(11*zz-15)+5)-5)/16
  fd=21*z*(3*zz*(11*zz-10)+5)/8
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


P06-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (11zP05-5P04)/6
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=(21*zz*(zz*(11*zz-15)+5)-5)/16:
  zz=z*z
  zt=z
  foz=fz
  fz=(21*zz*(zz*(11*zz-15)+5)-5)/16
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


P06-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (11zP05-5P04)/6
  z=pixel, oz=0
  fz=-5/16
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=(21*zz*(zz*(11*zz-15)+5)-5)/16
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


P06-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (11zP05-5P04)/6
  z=pixel, oz=0
  fz=-5/16
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=(21*zz*(zz*(11*zz-15)+5)-5)/16
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


P06-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (11zP05-5P04)/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*((21*xx*(xx*(11*xx-15)+5)-5)/16)
  yy=y*y
  x=x-t*((21*yy*(yy*(11*yy-15)+5)-5)/16)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


P06-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (11zP05-5P04)/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin((21*xx*(xx*(11*xx-15)+5)-5)/16)
  yy=y*y
  x=x-t*sin((21*yy*(yy*(11*yy-15)+5)-5)/16)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


P06-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ;  = (11zP05-5P04)/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1((21*xx*(xx*(11*xx-15)+5)-5)/16))
  yy=y*y
  x=x-t*(fn1((21*yy*(yy*(11*yy-15)+5)-5)/16))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


P06-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (11zP05-5P04)/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1((21*xx*(xx*(11*xx-15)+5)-5)/16)
  Ty=fn2((21*yy*(yy*(11*yy-15)+5)-5)/16)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


P06-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ;  = (11zP05-5P04)/6
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1((21*xx*(xx*(11*xx-15)+5)-5)/16)
  Ty=fn2((21*yy*(yy*(11*yy-15)+5)-5)/16)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


P06-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (11zP05-5P04)/6
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1((21*xx*(xx*(11*xx-15)+5)-5)/16))
  yy=y*y
  x=x-t*(fn2((21*yy*(yy*(11*yy-15)+5)-5)/16))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


P06-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (11zP05-5P04)/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1((21*xx*(xx*(11*xx-15)+5)-5)/16))
  yy=y*y
  x=x-t*(fn2((21*yy*(yy*(11*yy-15)+5)-5)/16))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


P06-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = (11zP05-5P04)/6
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1((21*xx*(xx*(11*xx-15)+5)-5)/16))
  yy=y*y
  Ty=(fn1((21*yy*(yy*(11*yy-15)+5)-5)/16))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


P06-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = (11zP05-5P04)/6
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1((21*xx*(xx*(11*xx-15)+5)-5)/16))
  yy=y*y
  Ty=(fn1((21*yy*(yy*(11*yy-15)+5)-5)/16))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


P06-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = (11zP05-5P04)/6
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1((21*xx*(xx*(11*xx-15)+5)-5)/16))
  yy=y*y
  Ty=(fn1((21*yy*(yy*(11*yy-15)+5)-5)/16))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


P06-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = (11zP05-5P04)/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1((21*xx*(xx*(11*xx-15)+5)-5)/16))
  yy=y*y
  Ty=(fn1((21*yy*(yy*(11*yy-15)+5)-5)/16))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


P06-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = (11zP05-5P04)/6
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=(21*xx*(xx*(11*xx-15)+5)-5)/16
  Fx1=(21*yy*(yy*(11*yy-15)+5)-5)/16
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


P07-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (13zP06-6P05)/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=x*(3*xx*(11*xx*(13*xx-21)+105)-35)/16
  Ty=y*(3*yy*(11*yy*(13*yy-21)+105)-35)/16
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


P07-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (13zP06-6P05)/7
  bailout=p1+4, z=pixel:
  zz=z*z
  z=z*(3*zz*(11*zz*(13*zz-21)+105)-35)/16
  |z|<=bailout
  ;SOURCE: chby2.frm
}


P07-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (13zP06-6P05)/7
  const=p1, z=pixel:
  zz=z*z
  z=z*(3*zz*(11*zz*(13*zz-21)+105)-35)/16+const
  |z|<100
  ;SOURCE: chby3.frm
}


P07-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (13zP06-6P05)/7
  const=pixel, z=p1:
  zz=z*z
  z=z*(3*zz*(11*zz*(13*zz-21)+105)-35)/16+const
  |z|<100
  ;SOURCE: chby4.frm
}


P07-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (13zP(6)-6P(5))/7
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(3*zz*(11*zz*(13*zz-21)+105)-35)/16
  fd=7*(3*zz*(11*zz*(13*zz-15)+45)-5)/16
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


P07-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (13zP06-6P05)/7
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(3*zz*(11*zz*(13*zz-21)+105)-35)/16
  fd=(21*zz*(11*zz*(13*zz-15)+45)-35)/16
  fdd=21*z*(11*zz*(13*zz-10)+45)/8
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


P07-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (13zP06-6P05)/7
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(3*zz*(11*zz*(13*zz-21)+105)-35)/16
  fd=(21*zz*(11*zz*(13*zz-15)+45)-35)/16
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(3*ww*(11*ww*(13*ww-21)+105)-35)/16
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


P07-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ;  = (13zP06-6P05)/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(x*(3*xx*(11*xx*(13*xx-21)+105)-35)/16)
  Ty=sin(y*(3*yy*(11*yy*(13*yy-21)+105)-35)/16)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


P07-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (13zP06-6P05)/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(3*xx*(11*xx*(13*xx-21)+105)-35)/16)
  Ty=fn1(y*(3*yy*(11*yy*(13*yy-21)+105)-35)/16)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


P07-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (13zP06-6P05)/7
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(3*zz*(11*zz*(13*zz-21)+105)-35)/16:
  zz=z*z
  zt=z
  foz=fz
  fz=z*(3*zz*(11*zz*(13*zz-21)+105)-35)/16
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


P07-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (13zP06-6P05)/7
  const=p1, z=pixel:
  zz=z*z
  z=z*(3*zz*(11*zz*(13*zz-21)+105)-35)/16*const
  |z|<100
  ;SOURCE: chby11.frm
}


P07-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (13zP06-6P05)/7
  const=pixel, z=p1:
  zz=z*z
  z=z*(3*zz*(11*zz*(13*zz-21)+105)-35)/16*const
  |z|<100
  ;SOURCE: chby12.frm
}


P07-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (13zP06-6P05)/7
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(3*zz*(11*zz*(13*zz-21)+105)-35)/16
  fd=(21*zz*(11*zz*(13*zz-15)+45)-35)/16
  fdd=21*z*(11*zz*(13*zz-10)+45)/8
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


P07-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (13zP06-6P05)/7
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(3*zz*(11*zz*(13*zz-21)+105)-35)/16
  fd=(21*zz*(11*zz*(13*zz-15)+45)-35)/16
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(3*ww*(11*ww*(13*ww-21)+105)-35)/16
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


P07-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (13zP(6)-6P(5))/7
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(3*zz*(11*zz*(13*zz-21)+105)-35)/16
  fd=7*(3*zz*(11*zz*(13*zz-15)+45)-5)/16
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


P07-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (13zP06-6P05)/7
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(3*zz*(11*zz*(13*zz-21)+105)-35)/16:
  zz=z*z
  zt=z
  foz=fz
  fz=z*(3*zz*(11*zz*(13*zz-21)+105)-35)/16
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


P07-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (13zP06-6P05)/7
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(3*zz*(11*zz*(13*zz-21)+105)-35)/16
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


P07-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (13zP06-6P05)/7
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(3*zz*(11*zz*(13*zz-21)+105)-35)/16
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


P07-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (13zP06-6P05)/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(x*(3*xx*(11*xx*(13*xx-21)+105)-35)/16)
  yy=y*y
  x=x-t*(y*(3*yy*(11*yy*(13*yy-21)+105)-35)/16)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


P07-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (13zP06-6P05)/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(x*(3*xx*(11*xx*(13*xx-21)+105)-35)/16)
  yy=y*y
  x=x-t*sin(y*(3*yy*(11*yy*(13*yy-21)+105)-35)/16)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


P07-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ;  = (13zP06-6P05)/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(3*xx*(11*xx*(13*xx-21)+105)-35)/16))
  yy=y*y
  x=x-t*(fn1(y*(3*yy*(11*yy*(13*yy-21)+105)-35)/16))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


P07-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (13zP06-6P05)/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(3*xx*(11*xx*(13*xx-21)+105)-35)/16)
  Ty=fn2(y*(3*yy*(11*yy*(13*yy-21)+105)-35)/16)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


P07-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ;  = (13zP06-6P05)/7
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(3*xx*(11*xx*(13*xx-21)+105)-35)/16)
  Ty=fn2(y*(3*yy*(11*yy*(13*yy-21)+105)-35)/16)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


P07-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (13zP06-6P05)/7
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(3*xx*(11*xx*(13*xx-21)+105)-35)/16))
  yy=y*y
  x=x-t*(fn2(y*(3*yy*(11*yy*(13*yy-21)+105)-35)/16))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


P07-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (13zP06-6P05)/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(3*xx*(11*xx*(13*xx-21)+105)-35)/16))
  yy=y*y
  x=x-t*(fn2(y*(3*yy*(11*yy*(13*yy-21)+105)-35)/16))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


P07-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = (13zP06-6P05)/7
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(x*(3*xx*(11*xx*(13*xx-21)+105)-35)/16))
  yy=y*y
  Ty=(fn1(y*(3*yy*(11*yy*(13*yy-21)+105)-35)/16))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


P07-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = (13zP06-6P05)/7
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(x*(3*xx*(11*xx*(13*xx-21)+105)-35)/16))
  yy=y*y
  Ty=(fn1(y*(3*yy*(11*yy*(13*yy-21)+105)-35)/16))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


P07-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = (13zP06-6P05)/7
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(x*(3*xx*(11*xx*(13*xx-21)+105)-35)/16))
  yy=y*y
  Ty=(fn1(y*(3*yy*(11*yy*(13*yy-21)+105)-35)/16))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


P07-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = (13zP06-6P05)/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(x*(3*xx*(11*xx*(13*xx-21)+105)-35)/16))
  yy=y*y
  Ty=(fn1(y*(3*yy*(11*yy*(13*yy-21)+105)-35)/16))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


P07-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = (13zP06-6P05)/7
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=x0*(3*xx*(11*xx*(13*xx-21)+105)-35)/16
  Fx1=x1*(3*yy*(11*yy*(13*yy-21)+105)-35)/16
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


P08-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (15zP07-7P06)/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=(3*xx*(11*xx*(13*xx*(15*xx-28)+210)-420)+35)/128
  Ty=(3*yy*(11*yy*(13*yy*(15*yy-28)+210)-420)+35)/128
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


P08-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (15zP07-7P06)/8
  bailout=p1+4, z=pixel:
  zz=z*z
  z=(3*zz*(11*zz*(13*zz*(15*zz-28)+210)-420)+35)/128
  |z|<=bailout
  ;SOURCE: chby2.frm
}


P08-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (15zP07-7P06)/8
  const=p1, z=pixel:
  zz=z*z
  z=(3*zz*(11*zz*(13*zz*(15*zz-28)+210)-420)+35)/128+const
  |z|<100
  ;SOURCE: chby3.frm
}


P08-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (15zP07-7P06)/8
  const=pixel, z=p1:
  zz=z*z
  z=(3*zz*(11*zz*(13*zz*(15*zz-28)+210)-420)+35)/128+const
  |z|<100
  ;SOURCE: chby4.frm
}


P08-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (15zP(7)-7P(6))/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(3*zz*(11*zz*(13*zz*(15*zz-28)+210)-420)+35)/128
  fd=9*z*(11*zz*(39*zz*(5*zz-7)+35)-35)/16
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


P08-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (15zP07-7P06)/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(3*zz*(11*zz*(13*zz*(15*zz-28)+210)-420)+35)/128
  fd=9*z*(11*zz*(13*zz*(5*zz-7)+35)-35)/16
  fdd=(3465*zz*(13*zz*(zz-1)+3)-315)/16
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


P08-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (15zP07-7P06)/8
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(3*zz*(11*zz*(13*zz*(15*zz-28)+210)-420)+35)/128
  fd=9*z*(11*zz*(13*zz*(5*zz-7)+35)-35)/16
  oz=z
  w=z-f/fd
  ww=w*w
  fw=(3*ww*(11*ww*(13*ww*(15*ww-28)+210)-420)+35)/128
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


P08-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ;  = (15zP07-7P06)/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin((3*xx*(11*xx*(13*xx*(15*xx-28)+210)-420)+35)/128)
  Ty=sin((3*yy*(11*yy*(13*yy*(15*yy-28)+210)-420)+35)/128)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


P08-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ;  = (15zP07-7P06)/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1((3*xx*(11*xx*(13*xx*(15*xx-28)+210)-420)+35)/128)
  Ty=fn1((3*yy*(11*yy*(13*yy*(15*yy-28)+210)-420)+35)/128)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


P08-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (15zP07-7P06)/8
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=(3*zz*(11*zz*(13*zz*(15*zz-28)+210)-420)+35)/128:
  zz=z*z
  zt=z
  foz=fz
  fz=(3*zz*(11*zz*(13*zz*(15*zz-28)+210)-420)+35)/128
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


P08-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (15zP07-7P06)/8
  const=p1, z=pixel:
  zz=z*z
  z=(3*zz*(11*zz*(13*zz*(15*zz-28)+210)-420)+35)/128*const
  |z|<100
  ;SOURCE: chby11.frm
}


P08-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (15zP07-7P06)/8
  const=pixel, z=p1:
  zz=z*z
  z=(3*zz*(11*zz*(13*zz*(15*zz-28)+210)-420)+35)/128*const
  |z|<100
  ;SOURCE: chby12.frm
}


P08-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (15zP07-7P06)/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(3*zz*(11*zz*(13*zz*(15*zz-28)+210)-420)+35)/128
  fd=9*z*(11*zz*(13*zz*(5*zz-7)+35)-35)/16
  fdd=(3465*zz*(13*zz*(zz-1)+3)-315)/16
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


P08-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (15zP07-7P06)/8
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(3*zz*(11*zz*(13*zz*(15*zz-28)+210)-420)+35)/128
  fd=9*z*(11*zz*(13*zz*(5*zz-7)+35)-35)/16
  oz=z
  w=z-f/fd
  ww=w*w
  fw=(3*ww*(11*ww*(13*ww*(15*ww-28)+210)-420)+35)/128
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


P08-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (15zP(7)-7P(6))/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(3*zz*(11*zz*(13*zz*(15*zz-28)+210)-420)+35)/128
  fd=9*z*(11*zz*(39*zz*(5*zz-7)+35)-35)/16
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


P08-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (15zP07-7P06)/8
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=(3*zz*(11*zz*(13*zz*(15*zz-28)+210)-420)+35)/128:
  zz=z*z
  zt=z
  foz=fz
  fz=(3*zz*(11*zz*(13*zz*(15*zz-28)+210)-420)+35)/128
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


P08-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (15zP07-7P06)/8
  z=pixel, oz=0
  fz=35/128
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=(3*zz*(11*zz*(13*zz*(15*zz-28)+210)-420)+35)/128
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


P08-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (15zP07-7P06)/8
  z=pixel, oz=0
  fz=35/128
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=(3*zz*(11*zz*(13*zz*(15*zz-28)+210)-420)+35)/128
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


P08-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (15zP07-7P06)/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*((3*xx*(11*xx*(13*xx*(15*xx-28)+210)-420)+35)/128)
  yy=y*y
  x=x-t*((3*yy*(11*yy*(13*yy*(15*yy-28)+210)-420)+35)/128)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


P08-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (15zP07-7P06)/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin((3*xx*(11*xx*(13*xx*(15*xx-28)+210)-420)+35)/128)
  yy=y*y
  x=x-t*sin((3*yy*(11*yy*(13*yy*(15*yy-28)+210)-420)+35)/128)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


P08-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ;  = (15zP07-7P06)/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1((3*xx*(11*xx*(13*xx*(15*xx-28)+210)-420)+35)/128))
  yy=y*y
  x=x-t*(fn1((3*yy*(11*yy*(13*yy*(15*yy-28)+210)-420)+35)/128))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


P08-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (15zP07-7P06)/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1((3*xx*(11*xx*(13*xx*(15*xx-28)+210)-420)+35)/128)
  Ty=fn2((3*yy*(11*yy*(13*yy*(15*yy-28)+210)-420)+35)/128)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


P08-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ;  = (15zP07-7P06)/8
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1((3*xx*(11*xx*(13*xx*(15*xx-28)+210)-420)+35)/128)
  Ty=fn2((3*yy*(11*yy*(13*yy*(15*yy-28)+210)-420)+35)/128)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


P08-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (15zP07-7P06)/8
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1((3*xx*(11*xx*(13*xx*(15*xx-28)+210)-420)+35)/128))
  yy=y*y
  x=x-t*(fn2((3*yy*(11*yy*(13*yy*(15*yy-28)+210)-420)+35)/128))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


P08-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (15zP07-7P06)/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1((3*xx*(11*xx*(13*xx*(15*xx-28)+210)-420)+35)/128))
  yy=y*y
  x=x-t*(fn2((3*yy*(11*yy*(13*yy*(15*yy-28)+210)-420)+35)/128))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


P08-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = (15zP07-7P06)/8
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1((3*xx*(11*xx*(13*xx*(15*xx-28)+210)-420)+35)/128))
  yy=y*y
  Ty=(fn1((3*yy*(11*yy*(13*yy*(15*yy-28)+210)-420)+35)/128))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


P08-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = (15zP07-7P06)/8
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1((3*xx*(11*xx*(13*xx*(15*xx-28)+210)-420)+35)/128))
  yy=y*y
  Ty=(fn1((3*yy*(11*yy*(13*yy*(15*yy-28)+210)-420)+35)/128))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


P08-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = (15zP07-7P06)/8
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1((3*xx*(11*xx*(13*xx*(15*xx-28)+210)-420)+35)/128))
  yy=y*y
  Ty=(fn1((3*yy*(11*yy*(13*yy*(15*yy-28)+210)-420)+35)/128))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


P08-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = (15zP07-7P06)/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1((3*xx*(11*xx*(13*xx*(15*xx-28)+210)-420)+35)/128))
  yy=y*y
  Ty=(fn1((3*yy*(11*yy*(13*yy*(15*yy-28)+210)-420)+35)/128))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


P08-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = (15zP07-7P06)/8
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=(3*xx*(11*xx*(13*xx*(15*xx-28)+210)-420)+35)/128
  Fx1=(3*yy*(11*yy*(13*yy*(15*yy-28)+210)-420)+35)/128
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


P09-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (17zP08-8P07)/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=x*(11*xx*(13*xx*(5*xx*(17*xx-36)+126)-420)+315)/128
  Ty=y*(11*yy*(13*yy*(5*yy*(17*yy-36)+126)-420)+315)/128
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


P09-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (17zP08-8P07)/9
  bailout=p1+4, z=pixel:
  zz=z*z
  z=z*(11*zz*(13*zz*(5*zz*(17*zz-36)+126)-420)+315)/128
  |z|<=bailout
  ;SOURCE: chby2.frm
}


P09-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (17zP08-8P07)/9
  const=p1, z=pixel:
  zz=z*z
  z=z*(11*zz*(13*zz*(5*zz*(17*zz-36)+126)-420)+315)/128+const
  |z|<100
  ;SOURCE: chby3.frm
}


P09-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (17zP08-8P07)/9
  const=pixel, z=p1:
  zz=z*z
  z=z*(11*zz*(13*zz*(5*zz*(17*zz-36)+126)-420)+315)/128+const
  |z|<100
  ;SOURCE: chby4.frm
}


P09-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (17zP(8)-8P(7))/9
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(11*zz*(13*zz*(5*zz*(17*zz-36)+126)-420)+315)/128
  fd=11*zz*(13*zz*(zz*(17*zz-28)+14)-28)/128
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


P09-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (17zP08-8P07)/9
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(11*zz*(13*zz*(5*zz*(17*zz-36)+126)-420)+315)/128
  fd=(55*zz*(13*zz*(9*zz*(17*zz-28)+126)-252)+315)/128
  fdd=55*z*(13*zz*(18*zz*(17*zz-21)+63)-126)/32
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


P09-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (17zP08-8P07)/9
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(11*zz*(13*zz*(5*zz*(17*zz-36)+126)-420)+315)/128
  fd=(55*zz*(13*zz*(9*zz*(17*zz-28)+126)-252)+315)/128
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(11*ww*(13*ww*(5*ww*(17*ww-36)+126)-420)+315)/128
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


P09-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ;  = (17zP08-8P07)/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(x*(11*xx*(13*xx*(5*xx*(17*xx-36)+126)-420)+315)/128)
  Ty=sin(y*(11*yy*(13*yy*(5*yy*(17*yy-36)+126)-420)+315)/128)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


P09-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (17zP08-8P07)/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(11*xx*(13*xx*(5*xx*(17*xx-36)+126)-420)+315)/128)
  Ty=fn1(y*(11*yy*(13*yy*(5*yy*(17*yy-36)+126)-420)+315)/128)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


P09-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (17zP08-8P07)/9
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(11*zz*(13*zz*(5*zz*(17*zz-36)+126)-420)+315)/128:
  zz=z*z
  zt=z
  foz=fz
  fz=z*(11*zz*(13*zz*(5*zz*(17*zz-36)+126)-420)+315)/128
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


P09-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (17zP08-8P07)/9
  const=p1, z=pixel:
  zz=z*z
  z=z*(11*zz*(13*zz*(5*zz*(17*zz-36)+126)-420)+315)/128*const
  |z|<100
  ;SOURCE: chby11.frm
}


P09-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (17zP08-8P07)/9
  const=pixel, z=p1:
  zz=z*z
  z=z*(11*zz*(13*zz*(5*zz*(17*zz-36)+126)-420)+315)/128*const
  |z|<100
  ;SOURCE: chby12.frm
}


P09-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (17zP08-8P07)/9
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(11*zz*(13*zz*(5*zz*(17*zz-36)+126)-420)+315)/128
  fd=(55*zz*(13*zz*(9*zz*(17*zz-28)+126)-252)+315)/128
  fdd=55*z*(13*zz*(18*zz*(17*zz-21)+63)-126)/32
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


P09-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (17zP08-8P07)/9
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(11*zz*(13*zz*(5*zz*(17*zz-36)+126)-420)+315)/128
  fd=(55*zz*(13*zz*(9*zz*(17*zz-28)+126)-252)+315)/128
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(11*ww*(13*ww*(5*ww*(17*ww-36)+126)-420)+315)/128
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


P09-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (17zP(8)-8P(7))/9
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(11*zz*(13*zz*(5*zz*(17*zz-36)+126)-420)+315)/128
  fd=11*zz*(13*zz*(zz*(17*zz-28)+14)-28)/128
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


P09-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (17zP08-8P07)/9
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(11*zz*(13*zz*(5*zz*(17*zz-36)+126)-420)+315)/128:
  zz=z*z
  zt=z
  foz=fz
  fz=z*(11*zz*(13*zz*(5*zz*(17*zz-36)+126)-420)+315)/128
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


P09-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (17zP08-8P07)/9
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(11*zz*(13*zz*(5*zz*(17*zz-36)+126)-420)+315)/128
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


P09-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (17zP08-8P07)/9
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(11*zz*(13*zz*(5*zz*(17*zz-36)+126)-420)+315)/128
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


P09-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (17zP08-8P07)/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(x*(11*xx*(13*xx*(5*xx*(17*xx-36)+126)-420)+315)/128)
  yy=y*y
  x=x-t*(y*(11*yy*(13*yy*(5*yy*(17*yy-36)+126)-420)+315)/128)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


P09-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (17zP08-8P07)/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(x*(11*xx*(13*xx*(5*xx*(17*xx-36)+126)-420)+315)/128)
  yy=y*y
  x=x-t*sin(y*(11*yy*(13*yy*(5*yy*(17*yy-36)+126)-420)+315)/128)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


P09-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ;  = (17zP08-8P07)/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(11*xx*(13*xx*(5*xx*(17*xx-36)+126)-420)+315)/128))
  yy=y*y
  x=x-t*(fn1(y*(11*yy*(13*yy*(5*yy*(17*yy-36)+126)-420)+315)/128))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


P09-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (17zP08-8P07)/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(11*xx*(13*xx*(5*xx*(17*xx-36)+126)-420)+315)/128)
  Ty=fn2(y*(11*yy*(13*yy*(5*yy*(17*yy-36)+126)-420)+315)/128)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


P09-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ;  = (17zP08-8P07)/9
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(11*xx*(13*xx*(5*xx*(17*xx-36)+126)-420)+315)/128)
  Ty=fn2(y*(11*yy*(13*yy*(5*yy*(17*yy-36)+126)-420)+315)/128)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


P09-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (17zP08-8P07)/9
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(11*xx*(13*xx*(5*xx*(17*xx-36)+126)-420)+315)/128))
  yy=y*y
  x=x-t*(fn2(y*(11*yy*(13*yy*(5*yy*(17*yy-36)+126)-420)+315)/128))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


P09-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (17zP08-8P07)/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(11*xx*(13*xx*(5*xx*(17*xx-36)+126)-420)+315)/128))
  yy=y*y
  x=x-t*(fn2(y*(11*yy*(13*yy*(5*yy*(17*yy-36)+126)-420)+315)/128))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


P09-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = (17zP08-8P07)/9
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(x*(11*xx*(13*xx*(5*xx*(17*xx-36)+126)-420)+315)/128))
  yy=y*y
  Ty=(fn1(y*(11*yy*(13*yy*(5*yy*(17*yy-36)+126)-420)+315)/128))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


P09-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = (17zP08-8P07)/9
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(x*(11*xx*(13*xx*(5*xx*(17*xx-36)+126)-420)+315)/128))
  yy=y*y
  Ty=(fn1(y*(11*yy*(13*yy*(5*yy*(17*yy-36)+126)-420)+315)/128))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


P09-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = (17zP08-8P07)/9
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(x*(11*xx*(13*xx*(5*xx*(17*xx-36)+126)-420)+315)/128))
  yy=y*y
  Ty=(fn1(y*(11*yy*(13*yy*(5*yy*(17*yy-36)+126)-420)+315)/128))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


P09-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = (17zP08-8P07)/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(x*(11*xx*(13*xx*(5*xx*(17*xx-36)+126)-420)+315)/128))
  yy=y*y
  Ty=(fn1(y*(11*yy*(13*yy*(5*yy*(17*yy-36)+126)-420)+315)/128))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


P09-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = (17zP08-8P07)/9
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=x0*(11*xx*(13*xx*(5*xx*(17*xx-36)+126)-420)+315)/128
  Fx1=x1*(11*yy*(13*yy*(5*yy*(17*yy-36)+126)-420)+315)/128
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


P10-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (19zP09-9P08)/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=(11*xx*(13*xx*(xx*(17*xx*(19*xx-45)+630)-210)+315)-63)/128
  Ty=(11*yy*(13*yy*(yy*(17*yy*(19*yy-45)+630)-210)+315)-63)/128
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


P10-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (19zP09-9P08)/10
  bailout=p1+4, z=pixel:
  zz=z*z
  z=(11*zz*(13*zz*(zz*(17*zz*(19*zz-45)+630)-210)+315)-63)/128
  |z|<=bailout
  ;SOURCE: chby2.frm
}


P10-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (19zP09-9P08)/10
  const=p1, z=pixel:
  zz=z*z
  z=(11*zz*(13*zz*(zz*(17*zz*(19*zz-45)+630)-210)+315)-63)/128+const
  |z|<100
  ;SOURCE: chby3.frm
}


P10-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (19zP09-9P08)/10
  const=pixel, z=p1:
  zz=z*z
  z=(11*zz*(13*zz*(zz*(17*zz*(19*zz-45)+630)-210)+315)-63)/128+const
  |z|<100
  ;SOURCE: chby4.frm
}


P10-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (19zP(9)-9P(8))/10
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(11*zz*(13*zz*(zz*(17*zz*(19*zz-45)+630)-210)+315)-63)/256
  fd=110*z*(13*zz*(zz*(17*zz*(19*zz-36)+378)-84)+63)/256
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


P10-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (19zP09-9P08)/10
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(11*zz*(13*zz*(zz*(17*zz*(19*zz-45)+630)-210)+315)-63)/256
  fd=55*z*(13*zz*(zz*(17*zz*(19*zz-36)+378)-84)+63)/128
  fdd=495*(13*zz*(zz*(17*zz*(19*zz-28)+210)-28)+7)/128
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


P10-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (19zP09-9P08)/10
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(11*zz*(13*zz*(zz*(17*zz*(19*zz-45)+630)-210)+315)-63)/256
  fd=55*z*(13*zz*(zz*(17*zz*(19*zz-36)+378)-84)+63)/128
  oz=z
  w=z-f/fd
  ww=w*w
  fw=(11*ww*(13*ww*(ww*(17*ww*(19*ww-45)+630)-210)+315)-63)/256
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


P10-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ;  = (19zP09-9P08)/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin((11*xx*(13*xx*(xx*(17*xx*(19*xx-45)+630)-210)+315)-63)/256)
  Ty=sin((11*yy*(13*yy*(yy*(17*yy*(19*yy-45)+630)-210)+315)-63)/256)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


P10-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (19zP09-9P08)/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1((11*xx*(13*xx*(xx*(17*xx*(19*xx-45)+630)-210)+315)-63)/256)
  Ty=fn1((11*yy*(13*yy*(yy*(17*yy*(19*yy-45)+630)-210)+315)-63)/256)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


P10-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (19zP09-9P08)/10
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=(11*zz*(13*zz*(zz*(17*zz*(19*zz-45)+630)-210)+315)-63)/256:
  zt=z
  zz=z*z
  foz=fz
  fz=(11*zz*(13*zz*(zz*(17*zz*(19*zz-45)+630)-210)+315)-63)/256
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


P10-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (19zP09-9P08)/10
  const=p1, z=pixel:
  zz=z*z
  z=(11*zz*(13*zz*(zz*(17*zz*(19*zz-45)+630)-210)+315)-63)/128*const
  |z|<100
  ;SOURCE: chby11.frm
}


P10-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (19zP09-9P08)/10
  const=pixel, z=p1:
  zz=z*z
  z=(11*zz*(13*zz*(zz*(17*zz*(19*zz-45)+630)-210)+315)-63)/128*const
  |z|<100
  ;SOURCE: chby12.frm
}


P10-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (19zP09-9P08)/10
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(11*zz*(13*zz*(zz*(17*zz*(19*zz-45)+630)-210)+315)-63)/256
  fd=55*z*(13*zz*(zz*(17*zz*(19*zz-36)+378)-84)+63)/128
  fdd=495*(13*zz*(zz*(17*zz*(19*zz-28)+210)-28)+7)/128
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


P10-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (19zP09-9P08)/10
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(11*zz*(13*zz*(zz*(17*zz*(19*zz-45)+630)-210)+315)-63)/256
  fd=55*z*(13*zz*(zz*(17*zz*(19*zz-36)+378)-84)+63)/128
  oz=z
  w=z-f/fd
  ww=w*w
  fw=(11*ww*(13*ww*(ww*(17*ww*(19*ww-45)+630)-210)+315)-63)/256
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


P10-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (19zP(9)-9P(8))/10
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(11*zz*(13*zz*(zz*(17*zz*(19*zz-45)+630)-210)+315)-63)/256
  fd=110*z*(13*zz*(zz*(17*zz*(19*zz-36)+378)-84)+63)/256
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


P10-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (19zP09-9P08)/10
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=(11*zz*(13*zz*(zz*(17*zz*(19*zz-45)+630)-210)+315)-63)/256:
  zt=z
  zz=z*z
  foz=fz
  fz=(11*zz*(13*zz*(zz*(17*zz*(19*zz-45)+630)-210)+315)-63)/256
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


P10-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (19zP09-9P08)/10
  z=pixel, oz=0
  fz=-63/256
  zt=fn1(z)+p1:
  zz=z*z
  foz=fz
  fz=(11*zz*(13*zz*(zz*(17*zz*(19*zz-45)+630)-210)+315)-63)/256
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


P10-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (19zP09-9P08)/10
  z=pixel, oz=0
  fz=-63/256
  zt=fn1(z)+p1:
  zz=z*z
  foz=fz
  fz=(11*zz*(13*zz*(zz*(17*zz*(19*zz-45)+630)-210)+315)-63)/256
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


P10-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (19zP09-9P08)/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*((11*xx*(13*xx*(xx*(17*xx*(19*xx-45)+630)-210)+315)-63)/128)
  yy=y*y
  x=x-t*((11*yy*(13*yy*(yy*(17*yy*(19*yy-45)+630)-210)+315)-63)/128)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


P10-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (19zP09-9P08)/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin((11*xx*(13*xx*(xx*(17*xx*(19*xx-45)+630)-210)+315)-63)/256)
  yy=y*y
  x=x-t*sin((11*yy*(13*yy*(yy*(17*yy*(19*yy-45)+630)-210)+315)-63)/256)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


P10-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ;  = (19zP09-9P08)/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1((11*xx*(13*xx*(xx*(17*xx*(19*xx-45)+630)-210)+315)-63)/256))
  yy=y*y
  x=x-t*(fn1((11*yy*(13*yy*(yy*(17*yy*(19*yy-45)+630)-210)+315)-63)/256))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


P10-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (19zP09-9P08)/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1((11*xx*(13*xx*(xx*(17*xx*(19*xx-45)+630)-210)+315)-63)/256)
  Ty=fn2((11*yy*(13*yy*(yy*(17*yy*(19*yy-45)+630)-210)+315)-63)/256)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


P10-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ;  = (19zP09-9P08)/10
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1((11*xx*(13*xx*(xx*(17*xx*(19*xx-45)+630)-210)+315)-63)/256)
  Ty=fn2((11*yy*(13*yy*(yy*(17*yy*(19*yy-45)+630)-210)+315)-63)/256)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


P10-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (19zP09-9P08)/10
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1((11*xx*(13*xx*(xx*(17*xx*(19*xx-45)+630)-210)+315)-63)/256))
  yy=y*y
  x=x-t*(fn2((11*yy*(13*yy*(yy*(17*yy*(19*yy-45)+630)-210)+315)-63)/256))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


P10-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (19zP09-9P08)/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1((11*xx*(13*xx*(xx*(17*xx*(19*xx-45)+630)-210)+315)-63)/256))
  yy=y*y
  x=x-t*(fn2((11*yy*(13*yy*(yy*(17*yy*(19*yy-45)+630)-210)+315)-63)/256))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


P10-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = (19zP09-9P08)/10
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1((11*xx*(13*xx*(xx*(17*xx*(19*xx-45)+630)-210)+315)-63)/256))
  yy=y*y
  Ty=(fn1((11*yy*(13*yy*(yy*(17*yy*(19*yy-45)+630)-210)+315)-63)/256))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


P10-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = (19zP09-9P08)/10
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1((11*xx*(13*xx*(xx*(17*xx*(19*xx-45)+630)-210)+315)-63)/256))
  yy=y*y
  Ty=(fn1((11*yy*(13*yy*(yy*(17*yy*(19*yy-45)+630)-210)+315)-63)/256))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


P10-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = (19zP09-9P08)/10
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1((11*xx*(13*xx*(xx*(17*xx*(19*xx-45)+630)-210)+315)-63)/256))
  yy=y*y
  Ty=(fn1((11*yy*(13*yy*(yy*(17*yy*(19*yy-45)+630)-210)+315)-63)/256))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


P10-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ;  = (19zP09-9P08)/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1((11*xx*(13*xx*(xx*(17*xx*(19*xx-45)+630)-210)+315)-63)/256))
  yy=y*y
  Ty=(fn1((11*yy*(13*yy*(yy*(17*yy*(19*yy-45)+630)-210)+315)-63)/256))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


P10-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = (19zP09-9P08)/10
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=(11*xx*(13*xx*(xx*(17*xx*(19*xx-45)+630)-210)+315)-63)/128
  Fx1=(11*yy*(13*yy*(yy*(17*yy*(19*yy-45)+630)-210)+315)-63)/128
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


pa0001 {
  z=pixel, x=1-((z+1)^z)*fn1(z):
  z=(z*x)-fn2((whitesq^1/z^z)/fn3(whitesq^1/x))*fn4(x-z)
  |z|<=4
  ;SOURCE: ad4.frm
}


pa0002 {
  z=pixel, x=((1/z+1)^z)-fn1(z):
  z=fn2((z^p1)/fn3(whitesq^x))*fn4(x-z)
  |z|<=4
  ;SOURCE: ad4.frm
}


pa0003 {
  z=pixel, x=1-(cos(z+1)^z)-fn1(z):
  z=fn2((z+p1)/fn3(whitesq^x))+fn4(x*z)
  |z+p1|<4
  ;SOURCE: ad4.frm
}


pa0006 {
  z=c=pixel, x=fn3(p1/z)^2, y=fn4((p1/z)*(p1/z))^z:
  z=(fn1(z+1)/whitesq^x)^fn2(1/y)+c
  |z|<55
  ;SOURCE: ad4.frm
}


pa0x4 {
  z=pixel, x=1-real(pixel+whitesq), y=real(1-(pixel)):
  z=(fn1(z*x)/(z*(fn3(z*y)+whitesq)))
  fn2(|z|<4&&(2+whitesq))
  ;SOURCE: ad4.frm
}


pa0x7 {
  z=pixel, x=real(cotan(1/pixel)+whitesq), y=real(1-(pixel)):
  z=(fn1(x/z)*(z-(fn2(z+y)+whitesq)))
  |z|<4
  ;SOURCE: ad4.frm
}


pa0x8 {
  z=pixel, x=tan(pixel), y=real(1-(pixel))+whitesq:
  z=(fn1(z*x)-fn2(z+(fn3(z*y))))^fn4(x*y)
  |z|<4
  ;SOURCE: ad4.frm
}


pa0x9 {
  z=pixel, t=real(sqrt(z/5+sqrt(11))), y=(1-fn4(t))*fn3(t):
  z=(fn1(t/z-1)*fn2(y/z))+whitesq
  |z|<4
  ;SOURCE: ad4.frm
}


paa1 {
  t=real(pixel), u=(pixel)+whitesq
  z=sqrt(2*1-(t*t)*(fn2(t-1)))+(fn3(u))
  v=fn4(u/p1)*fn4(u/p2):
  z=fn1(tan(v)+fn3(cos(v)))
  |z|<=4
  ;SOURCE: ad5.frm
}


paa2 {
  z=pixel
  t=real(pixel), u=1/imag(pixel)
  z=sqr(t+(fn3(z/u)))
  v=fn4(z/p1)*fn4(u/p2):
  z=(fn1(tan(z+v)+fn2(cos(t+v/z))))+whitesq
  |z|<=4
  ;SOURCE: ad5.frm
}


paa4 {
  z=pixel
  t=real(pixel)+whitesq, u=imag(pixel)+whitesq:
  z=sqrt(t+(fn3(1-z/u)))
  v=fn4(t/p1)*fn4(u/p2)
  z=fn1(tan(v)+fn2(cos(v)))
  |z|<=4
  ;SOURCE: ad5.frm
}


Pablo {
   ; Any comments or question?
   ; E-Mail: Damion_P@Compuserve.com  -or- MDROCC@earthlink.net
  z = c = pixel:
  r = fn1(tan(1/z)+ c) + p1 
  q = fn2(flip(atan(z)) + c) + p2
  z = (q * (whitesq == 0)) + (r * (whitesq == 1)) 
  |z| < 4
  ;SOURCE: pablo.frm
}


palette {; Sylvie Gallet [101324,3444]
  z = trunc(pixel), x = real(z), y = imag(z)
  z = 16*abs(y) + x
  z = 257*(z==0) + z*(z!=0) :
  z = z - 1
  z > 0
  ;SOURCE: 96msg.frm
}


palette-256 {
  z0 = 256 * real(scrnpix)/real(scrnmax), iter=0:
  iter = iter + 1
  z = z0 - iter
  0
  ;SOURCE: test.frm
}


palette_ {
  K = real(p1)*real(pixel):
  K = real(K)-real(p2)
  |K| < real(p3)
  ;SOURCE: frac_ml.frm
}


PanoramaMandelbrot {; Panorama Mandelbrot set
  z = 0, c = exp(flip(pixel))-p2:
  z = z*z + c
  |z| < 4
  ;SOURCE: 98msg.frm
}


Parabol1J {; Same formula (See Parabol1Jp), p1 is the c-value.
           ; Paul Derbyshire (PGD) - Mar 1996
  z=pixel:
  z=z*z+p1*z
  |z|<=127
  ;SOURCE: parabol.frm
}


Parabol1Jp {; lambda x plus x squared from BOF section 2
            ; unit circle points are edge of a bud.
            ; p1, p2 polar coords of c-value (real components only please!)
            ; Angle p1 specified as a fraction of 1, not radians!
            ; Paul Derbyshire (PGD) - Mar 1996
  z=pixel
  c=p2*(cos(p1*3.141592654*2)+flip(sin(p1*2*3.141592654))):
  z=z*z+c*z
  |z|<=127
  ;SOURCE: parabol.frm
}


Parabol1M {; Mandelbrot set for Parabol1J.
           ; Paul Derbyshire (PGD) - Mar 1996
  c=pixel
  z=-c/2:
  z=z*z+c*z
  |z|<=127
  ;SOURCE: parabol.frm
}


Parabol2J {; Cubic formula with normal coordinates & new parameter.
           ; Never use p1=0!
           ; Paul Derbyshire (PGD) - Mar 1996
  z=pixel
  a=p2
  c=p1
  b=(a*a/c)/3:
  z=b*z*z*z+a*z*z+c*z
  |z|<=127
  ;SOURCE: parabol.frm
}


Parabol2Jp {; Cubic formula - unit circle points are edge of a bud.
            ; p1, p2 polar coords of c-value (real components only please!)
            ; Angle p1 specified as a fraction of 1, not radians!
            ; Never use p2=0!
            ; Paul Derbyshire (PGD) - Mar 1996
  z=pixel
  a=1
  c=p2*(cos(p1*3.141592654*2)+flip(sin(p1*2*3.141592654)))
  b=(a*a/c)/3:
  z=b*z*z*z+a*z*z+c*z
  |z|<=127
  ;SOURCE: parabol.frm
}


Parabol2M {; Mandelbrot set for cubic mapping.
           ; Never use p1=0!
           ; Paul Derbyshire (PGD) - Mar 1996
  a=p1
  c=pixel+0.000000001
  b=(a*a/c)/3
  z=-c/a:
  z=b*z*z*z+a*z*z+c*z
  |z|<=127
  ;SOURCE: parabol.frm
}


Parabolabrot1 {; Tom Schumm
   ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):       ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  imag(z) <= sqr(real(z))+4    ; Different escape boundry
  ;SOURCE: phong.frm
}


Parabolabrot2 {; Tom Schumm
   ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):        ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  imag(z) <= 16-sqr(real(z))    ; Different escape boundry
  ;SOURCE: phong.frm
}


Parabolaia1 (ORIGIN) {; Tom Schumm
   ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):       ; Just like julia
  z = z + p1
  z = Sqr(z)
  imag(z) <= sqr(real(z))+4    ; Different escape boundry
  ;SOURCE: phong2.frm
}


Parabolaia2 (ORIGIN) {; Tom Schumm
   ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):        ; Just like julia
  z = z + p1
  z = Sqr(z)
  imag(z) <= 16-sqr(real(z))    ; Different escape boundry
  ;SOURCE: phong2.frm
}


Parabolic {; Jim Muth  real(z),real(c)   NEW  version
  z=imag(pixel)+p1
  c=real(pixel)+p2:
  z=sqr(z)+c
  |z| <= 16
  ;SOURCE: 98msg.frm
}


ParabolicMiN {; Jim Muth
  b=p1, z=imag(pixel)+p2
  c=real(pixel)+p3:
  z=(-z)^(b)+c
  |z| <= 16
  ;SOURCE: 98msg.frm
}


ParabolicMiN_1 {; Jim Muth
  b=p1, z=imag(pixel)+p2
  c=real(pixel)+p3:
  z=(-z)^(b)+c
  |z| <= 16
  ;SOURCE: 0from_ml.frm
}


ParabolicMix {; Jim Muth
  z=imag(pixel)+flip(real(p3))
  c=real(pixel)+flip(imag(p3))
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2):
  z=(a*(z^b))+(d*(z^f))+c
  |z| <= 100
  ;SOURCE: 98msg.frm
}


parallel_jul {
        ;
        ; For an explanation of Kerry Mitchell's "2 lines coloring
        ;  method" see the end of formula general_man-2lines
        ;
        ; "2 parallel lines" coloring method for Julia sets
        ; p1 = c = Julia parameter
        ; real(p2) = x-line a = y-line a
        ; imag(p2) = x-line b = y-line b
        ; real(p3) = x-line c
        ; imag(p3) = y-line c
        ; bailout hardcoded to 10^12
        ; use "decomp=256" coloring
        ;
  zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
  ax=real(p2), bx=imag(p2), cx=real(p3)
  ay=ax, by=bx, cy=imag(p3):
  iter=iter+1, zc=sqr(zc)+c
  x=real(zc), y=imag(zc)
  tempx=ax*x+bx*y+cx
  tempy=ay*x+by*y+cy
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


Parallelogram {; Nature Leseul
  z=0, z1=0, z2=0, c=pixel:
  z1 = (real(z1)+imag(z2))
  z2 = (real(z2)+imag(z1))
  z = z1*z2 + c
  z1 = z1*z1 + c
  z2 = z2*z2 + c
  |z| < 4
  ;SOURCE: 99msg.frm
}


ParallelogramErr {; Nature Leseul
  z=0, z1=0, z2=0, c=pixel:
  z1 = (real(z1)+imag(z2))
  z = z1*z2 + c
  z1 = z1*z1 + c
  z2 = z2*z2 + c
  |z| < 4
  ;SOURCE: 99msg.frm
}


passion-frm (xaxis) {
  z=0, c=pixel, k=real(p1), r=imag(p1):
  z=sqr(z)+c, c=c+k*fn1(z)
  |z| <= r
  ;SOURCE: 98msg.frm
}


Pc02-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Clifford A. Pickover
         ;
         ; Dynamic (Euler method)
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Fx=(4*x-5)*x+1
  Fy=(4*y-5)*y+1
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Pc02-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic
         ; 
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  bailout=p1+4, z=pixel:
  z=(4*z-5)*z+1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Pc02-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Julia)
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  const=p1, z=pixel:
  z=const+((4*z-5)*z+1)
  |z|<100
  ;SOURCE: chby3.frm
}


Pc02-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Mandelbrot)
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  const=pixel, z=p1:
  z=const+((4*z-5)*z+1)
  |z|<100
  ;SOURCE: chby4.frm
}


Pc02-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Newton Method
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=((4*z-5)*z+1)
  fd=8*z-5
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Pc02-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Halley Method
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=((4*z-5)*z+1)
  fd=8*z-5
  fdd=8
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Pc02-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Bradley Beacham
         ; Cubic Method
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=((4*z-5)*z+1)
  fd=8*z-5
  oz=z
  w=z-f/fd
  fw=((4*w-5)*w+1)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Pc02-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified Euler method)
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin((4*x-5)*x+1)
  Ty=sin((4*y-5)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Pc02-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified Euler Method)
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((4*x-5)*x+1)
  Ty=fn1((4*y-5)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Pc02-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Mike Wareman:
         ; Secant Method
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=((4*p1-5)*p1+1):
  zt=z
  foz=fz
  fz=((4*z-5)*z+1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Pc02-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Julia)
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  const=p1, z=pixel:
  z=const*((4*z-5)*z+1)
  |z|<100
  ;SOURCE: chby11.frm
}


Pc02-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Mandelbrot)
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  const=pixel, z=p1:
  z=const*((4*z-5)*z+1)
  |z|<100
  ;SOURCE: chby12.frm
}


Pc02-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Halley Method with weird bailout test
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=((4*z-5)*z+1)
  fd=8*z-5
  fdd=8
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Pc02-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Bradley Beacham
         ; Cubic Method with weird bailout test
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  f=((4*z-5)*z+1)
  fd=8*z-5
  oz=z
  w=z-f/fd
  fw=((4*w-5)*w+1)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Pc02-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Newton Method with weird bailout test
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=((4*z-5)*z+1)
  fd=8*z-5
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Pc02-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Mike Wareman:
         ; Secant Method with weird bailout test
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=((4*p1-5)*p1+1):
  zt=z
  foz=fz
  fz=((4*z-5)*z+1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Pc02-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Mike Wareman
         ; Secant Method with Girvan perturbations and weird bailout test
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=((4*z-5)*z+1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Pc02-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Mike Wareman
         ; Secant Method with Girvan perturbations and weird bailout test
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=((4*z-5)*z+1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |(|z|)-(|oz|)|>=0.00000001
  ;SOURCE: chby18.frm
}


Pc02-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (Implicit Euler method)
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*((4*x-5)*x+1)
  x=x-t*((4*y-5)*y+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Pc02-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler method)
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin((4*x-5)*x+1)
  x=x-t*sin((4*y-5)*y+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Pc02-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler Method)
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1((4*x-5)*x+1)
  x=x-t*fn1((4*y-5)*y+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Pc02-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified Euler method)
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((4*x-5)*x+1)
  Ty=fn2((4*y-5)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Pc02-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified Euler method)
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1((4*x-5)*x+1)
  Ty=fn2((4*y-5)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Pc02-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler Method)
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1((4*x-5)*x+1)
  x=x-t*fn2((4*y-5)*y+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Pc02-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler Method)
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1((4*x-5)*x+1)
  x=x-t*fn2((4*y-5)*y+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Pc02-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Kathy Roth:
         ; Dynamic (modified implicit Euler Method, gravitated)
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=fn1((4*x-5)*x+1)
  Ty=fn1((4*y-5)*y+1)
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Pc02-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Kathy Roth:
         ; Dynamic (modified implicit Euler Method, popped)
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=fn1((4*x-5)*x+1)
  Ty=fn1((4*y-5)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Pc02-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Kathy Roth:
         ; Dynamic (modified implicit Euler Method, popped)
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=fn1((4*x-5)*x+1)
  Ty=fn1((4*y-5)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Pc02-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler method, Sylvie Gallet test)
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((4*x-5)*x+1)
  Ty=fn1((4*y-5)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Pc02-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Ray Parracho:
         ; Regula-Falsi Method
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=(4*x0-5)*x0+1
  Fx1=(4*x1-5)*x1+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Pc03-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Fx=((8*x-50/3)*x+9)*x-1
  Fy=((8*y-50/3)*y+9)*y-1
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Pc03-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  bailout=p1+4, z=pixel:
  z=((8*z-50/3)*z+9)*z-1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Pc03-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  const=p1, z=pixel:
  z=const+(((8*z-50/3)*z+9)*z-1)
  |z|<100
  ;SOURCE: chby3.frm
}


Pc03-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  const=pixel, z=p1:
  z=const+(((8*z-50/3)*z+9)*z-1)
  |z|<100
  ;SOURCE: chby4.frm
}


Pc03-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(((8*z-50/3)*z+9)*z-1)
  fd=(24*z-100/3)*z+9
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Pc03-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(((8*z-50/3)*z+9)*z-1)
  fd=(24*z-100/3)*z+9
  fdd=48*z-100/3
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Pc03-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(((8*z-50/3)*z+9)*z-1)
  fd=(24*z-100/3)*z+9
  oz=z
  w=z-f/fd
  fw=(((8*w-50/3)*w+9)*w-1)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Pc03-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(((8*x-50/3)*x+9)*x-1)
  Ty=sin(((8*y-50/3)*y+9)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Pc03-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(((8*x-50/3)*x+9)*x-1)
  Ty=fn1(((8*y-50/3)*y+9)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Pc03-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(((8*p1-50/3)*p1+9)*p1-1):
  zt=z
  foz=fz
  fz=(((8*z-50/3)*z+9)*z-1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Pc03-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  const=p1, z=pixel:
  z=const*(((8*z-50/3)*z+9)*z-1)
  |z|<100
  ;SOURCE: chby11.frm
}


Pc03-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  const=pixel, z=p1:
  z=const*(((8*z-50/3)*z+9)*z-1)
  |z|<100
  ;SOURCE: chby12.frm
}


Pc03-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(((8*z-50/3)*z+9)*z-1)
  fd=(24*z-100/3)*z+9
  fdd=48*z-100/3
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Pc03-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  f=(((8*z-50/3)*z+9)*z-1)
  fd=(24*z-100/3)*z+9
  oz=z
  w=z-f/fd
  fw=(((8*w-50/3)*w+9)*w-1)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Pc03-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(((8*z-50/3)*z+9)*z-1)
  fd=(24*z-100/3)*z+9
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Pc03-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(((8*p1-50/3)*p1+9)*p1-1):
  zt=z
  foz=fz
  fz=(((8*z-50/3)*z+9)*z-1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Pc03-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  z=pixel, oz=0
  fz=-1
  zt=fn1(z)+p1:
  foz=fz
  fz=(((8*z-50/3)*z+9)*z-1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Pc03-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  z=pixel, oz=0
  fz=-1
  zt=fn1(z)+p1:
  foz=fz
  fz=(((8*z-50/3)*z+9)*z-1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |(|z|)-(|oz|)|>=0.00000001
  ;SOURCE: chby18.frm
}


Pc03-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(((8*x-50/3)*x+9)*x-1)
  x=x-t*(((8*y-50/3)*y+9)*y-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Pc03-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(((8*x-50/3)*x+9)*x-1)
  x=x-t*sin(((8*y-50/3)*y+9)*y-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Pc03-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1(((8*x-50/3)*x+9)*x-1)
  x=x-t*fn1(((8*y-50/3)*y+9)*y-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Pc03-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(((8*x-50/3)*x+9)*x-1)
  Ty=fn2(((8*y-50/3)*y+9)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Pc03-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(((8*x-50/3)*x+9)*x-1)
  Ty=fn2(((8*y-50/3)*y+9)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Pc03-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1(((8*x-50/3)*x+9)*x-1)
  x=x-t*fn2(((8*y-50/3)*y+9)*y-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Pc03-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1(((8*x-50/3)*x+9)*x-1)
  x=x-t*fn2(((8*y-50/3)*y+9)*y-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Pc03-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=fn1(((8*x-50/3)*x+9)*x-1)
  Ty=fn1(((8*y-50/3)*y+9)*y-1)
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Pc03-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=fn1(((8*x-50/3)*x+9)*x-1)
  Ty=fn1(((8*y-50/3)*y+9)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Pc03-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=fn1(((8*x-50/3)*x+9)*x-1)
  Ty=fn1(((8*y-50/3)*y+9)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Pc03-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(((8*x-50/3)*x+9)*x-1)
  Ty=fn1(((8*y-50/3)*y+9)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Pc03-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=((8*x0-50/3)*x0+9)*x0-1
  Fx1=((8*x1-50/3)*x1+9)*x1-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Pc04-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Fx=(((16*x-142/3)*x+265/6)*x-14)*x+1
  Fy=(((16*y-142/3)*y+265/6)*y-14)*y+1
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Pc04-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  bailout=p1+4, z=pixel:
  z=(((16*z-142/3)*z+265/6)*z-14)*z+1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Pc04-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  const=p1, z=pixel:
  z=const+((((16*z-142/3)*z+265/6)*z-14)*z+1)
  |z|<100
  ;SOURCE: chby3.frm
}


Pc04-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  const=pixel, z=p1:
  z=const+((((16*z-142/3)*z+265/6)*z-14)*z+1)
  |z|<100
  ;SOURCE: chby4.frm
}


Pc04-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=((((16*z-142/3)*z+265/6)*z-14)*z+1)
  fd=((64*z-142)*z+265/3)*z-14
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Pc04-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=((((16*z-142/3)*z+265/6)*z-14)*z+1)
  fd=((64*z-142)*z+265/3)*z-14
  fdd=(192*z-284)*z+265/3
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Pc04-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=((((16*z-142/3)*z+265/6)*z-14)*z+1)
  fd=((64*z-142)*z+265/3)*z-14
  oz=z
  w=z-f/fd
  fw=((((16*w-142/3)*w+265/6)*w-14)*w+1)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Pc04-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin((((16*x-142/3)*x+265/6)*x-14)*x+1)
  Ty=sin((((16*y-142/3)*y+265/6)*y-14)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Pc04-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((((16*x-142/3)*x+265/6)*x-14)*x+1)
  Ty=fn1((((16*y-142/3)*y+265/6)*y-14)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Pc04-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=((((16*p1-142/3)*p1+265/6)*p1-14)*p1+1):
  zt=z
  foz=fz
  fz=((((16*z-142/3)*z+265/6)*z-14)*z+1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Pc04-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  const=p1, z=pixel:
  z=const*((((16*z-142/3)*z+265/6)*z-14)*z+1)
  |z|<100
  ;SOURCE: chby11.frm
}


Pc04-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  const=pixel, z=p1:
  z=const*((((16*z-142/3)*z+265/6)*z-14)*z+1)
  |z|<100
  ;SOURCE: chby12.frm
}


Pc04-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=((((16*z-142/3)*z+265/6)*z-14)*z+1)
  fd=((64*z-142)*z+265/3)*z-14
  fdd=(192*z-284)*z+265/3
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Pc04-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  f=((((16*z-142/3)*z+265/6)*z-14)*z+1)
  fd=((64*z-142)*z+265/3)*z-14
  oz=z
  w=z-f/fd
  fw=((((16*w-142/3)*w+265/6)*w-14)*w+1)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Pc04-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=((((16*z-142/3)*z+265/6)*z-14)*z+1)
  fd=((64*z-142)*z+265/3)*z-14
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Pc04-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=((((16*p1-142/3)*p1+265/6)*p1-14)*p1+1):
  zt=z
  foz=fz
  fz=((((16*z-142/3)*z+265/6)*z-14)*z+1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Pc04-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=((((16*z-142/3)*z+265/6)*z-14)*z+1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Pc04-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=((((16*z-142/3)*z+265/6)*z-14)*z+1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |(|z|)-(|oz|)|>=0.00000001
  ;SOURCE: chby18.frm
}


Pc04-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*((((16*x-142/3)*x+265/6)*x-14)*x+1)
  x=x-t*((((16*y-142/3)*y+265/6)*y-14)*y+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Pc04-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin((((16*x-142/3)*x+265/6)*x-14)*x+1)
  x=x-t*sin((((16*y-142/3)*y+265/6)*y-14)*y+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Pc04-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1((((16*x-142/3)*x+265/6)*x-14)*x+1)
  x=x-t*fn1((((16*y-142/3)*y+265/6)*y-14)*y+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Pc04-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((((16*x-142/3)*x+265/6)*x-14)*x+1)
  Ty=fn2((((16*y-142/3)*y+265/6)*y-14)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Pc04-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1((((16*x-142/3)*x+265/6)*x-14)*x+1)
  Ty=fn2((((16*y-142/3)*y+265/6)*y-14)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Pc04-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1((((16*x-142/3)*x+265/6)*x-14)*x+1)
  x=x-t*fn2((((16*y-142/3)*y+265/6)*y-14)*y+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Pc04-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1((((16*x-142/3)*x+265/6)*x-14)*x+1)
  x=x-t*fn2((((16*y-142/3)*y+265/6)*y-14)*y+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Pc04-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=fn1((((16*x-142/3)*x+265/6)*x-14)*x+1)
  Ty=fn1((((16*y-142/3)*y+265/6)*y-14)*y+1)
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Pc04-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=fn1((((16*x-142/3)*x+265/6)*x-14)*x+1)
  Ty=fn1((((16*y-142/3)*y+265/6)*y-14)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Pc04-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=fn1((((16*x-142/3)*x+265/6)*x-14)*x+1)
  Ty=fn1((((16*y-142/3)*y+265/6)*y-14)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Pc04-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((((16*x-142/3)*x+265/6)*x-14)*x+1)
  Ty=fn1((((16*y-142/3)*y+265/6)*y-14)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Pc04-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=(((16*x0-142/3)*x0+265/6)*x0-14)*x0+1
  Fx1=(((16*x1-142/3)*x1+265/6)*x1-14)*x1+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Pc05-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Fx=((((32*x-1852/15)*x+2507/15)*x-565/6)*x+20)*x-1
  Fy=((((32*y-1852/15)*y+2507/15)*y-565/6)*y+20)*y-1
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Pc05-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  bailout=p1+4, z=pixel:
  z=((((32*z-1852/15)*z+2507/15)*z-565/6)*z+20)*z-1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Pc05-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  const=p1, z=pixel:
  z=const+(((((32*z-1852/15)*z+2507/15)*z-565/6)*z+20)*z-1)
  |z|<100
  ;SOURCE: chby3.frm
}


Pc05-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  const=pixel, z=p1:
  z=const+(((((32*z-1852/15)*z+2507/15)*z-565/6)*z+20)*z-1)
  |z|<100
  ;SOURCE: chby4.frm
}


Pc05-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(((((32*z-1852/15)*z+2507/15)*z-565/6)*z+20)*z-1)
  fd=(((160*z-7408/15)*z+2507/5)*z-565/3)*z+20
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Pc05-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(((((32*z-1852/15)*z+2507/15)*z-565/6)*z+20)*z-1)
  fd=(((160*z-7408/15)*z+2507/5)*z-565/3)*z+20
  fdd=((640*z-7408/5)*z+5014/5)*z-565/3
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Pc05-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(((((32*z-1852/15)*z+2507/15)*z-565/6)*z+20)*z-1)
  fd=(((160*z-7408/15)*z+2507/5)*z-565/3)*z+20
  oz=z
  w=z-f/fd
  fw=(((((32*w-1852/15)*w+2507/15)*w-565/6)*w+20)*w-1)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Pc05-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(((((32*x-1852/15)*x+2507/15)*x-565/6)*x+20)*x-1)
  Ty=sin(((((32*y-1852/15)*y+2507/15)*y-565/6)*y+20)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Pc05-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(((((32*x-1852/15)*x+2507/15)*x-565/6)*x+20)*x-1)
  Ty=fn1(((((32*y-1852/15)*y+2507/15)*y-565/6)*y+20)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Pc05-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(((((32*p1-1852/15)*p1+2507/15)*p1-565/6)*p1+20)*p1-1):
  zt=z
  foz=fz
  fz=(((((32*z-1852/15)*z+2507/15)*z-565/6)*z+20)*z-1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Pc05-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  const=p1, z=pixel:
  z=const*(((((32*z-1852/15)*z+2507/15)*z-565/6)*z+20)*z-1)
  |z|<100
  ;SOURCE: chby11.frm
}


Pc05-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  const=pixel, z=p1:
  z=const*(((((32*z-1852/15)*z+2507/15)*z-565/6)*z+20)*z-1)
  |z|<100
  ;SOURCE: chby12.frm
}


Pc05-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(((((32*z-1852/15)*z+2507/15)*z-565/6)*z+20)*z-1)
  fd=(((160*z-7408/15)*z+2507/5)*z-565/3)*z+20
  fdd=((640*z-7408/5)*z+5014/5)*z-565/3
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Pc05-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  f=(((((32*z-1852/15)*z+2507/15)*z-565/6)*z+20)*z-1)
  fd=(((160*z-7408/15)*z+2507/5)*z-565/3)*z+20
  oz=z
  w=z-f/fd
  fw=(((((32*w-1852/15)*w+2507/15)*w-565/6)*w+20)*w-1)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Pc05-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(((((32*z-1852/15)*z+2507/15)*z-565/6)*z+20)*z-1)
  fd=(((160*z-7408/15)*z+2507/5)*z-565/3)*z+20
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Pc05-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(((((32*p1-1852/15)*p1+2507/15)*p1-565/6)*p1+20)*p1-1):
  zt=z
  foz=fz
  fz=(((((32*z-1852/15)*z+2507/15)*z-565/6)*z+20)*z-1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Pc05-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  z=pixel, oz=0
  fz=-1
  zt=fn1(z)+p1:
  foz=fz
  fz=(((((32*z-1852/15)*z+2507/15)*z-565/6)*z+20)*z-1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Pc05-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  z=pixel, oz=0
  fz=-1
  zt=fn1(z)+p1:
  foz=fz
  fz=(((((32*z-1852/15)*z+2507/15)*z-565/6)*z+20)*z-1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |(|z|)-(|oz|)|>=0.00000001
  ;SOURCE: chby18.frm
}


Pc05-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(((((32*x-1852/15)*x+2507/15)*x-565/6)*x+20)*x-1)
  x=x-t*(((((32*y-1852/15)*y+2507/15)*y-565/6)*y+20)*y-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Pc05-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(((((32*x-1852/15)*x+2507/15)*x-565/6)*x+20)*x-1)
  x=x-t*sin(((((32*y-1852/15)*y+2507/15)*y-565/6)*y+20)*y-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Pc05-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1(((((32*x-1852/15)*x+2507/15)*x-565/6)*x+20)*x-1)
  x=x-t*fn1(((((32*y-1852/15)*y+2507/15)*y-565/6)*y+20)*y-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Pc05-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(((((32*x-1852/15)*x+2507/15)*x-565/6)*x+20)*x-1)
  Ty=fn2(((((32*y-1852/15)*y+2507/15)*y-565/6)*y+20)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Pc05-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(((((32*x-1852/15)*x+2507/15)*x-565/6)*x+20)*x-1)
  Ty=fn2(((((32*y-1852/15)*y+2507/15)*y-565/6)*y+20)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Pc05-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1(((((32*x-1852/15)*x+2507/15)*x-565/6)*x+20)*x-1)
  x=x-t*fn2(((((32*y-1852/15)*y+2507/15)*y-565/6)*y+20)*y-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Pc05-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1(((((32*x-1852/15)*x+2507/15)*x-565/6)*x+20)*x-1)
  x=x-t*fn2(((((32*y-1852/15)*y+2507/15)*y-565/6)*y+20)*y-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Pc05-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=fn1(((((32*x-1852/15)*x+2507/15)*x-565/6)*x+20)*x-1)
  Ty=fn1(((((32*y-1852/15)*y+2507/15)*y-565/6)*y+20)*y-1)
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Pc05-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=fn1(((((32*x-1852/15)*x+2507/15)*x-565/6)*x+20)*x-1)
  Ty=fn1(((((32*y-1852/15)*y+2507/15)*y-565/6)*y+20)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Pc05-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=fn1(((((32*x-1852/15)*x+2507/15)*x-565/6)*x+20)*x-1)
  Ty=fn1(((((32*y-1852/15)*y+2507/15)*y-565/6)*y+20)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Pc05-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(((((32*x-1852/15)*x+2507/15)*x-565/6)*x+20)*x-1)
  Ty=fn1(((((32*y-1852/15)*y+2507/15)*y-565/6)*y+20)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Pc05-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=((((32*x0-1852/15)*x0+2507/15)*x0-565/6)*x0+20)*x0-1
  Fx1=((((32*x1-1852/15)*x1+2507/15)*x1-565/6)*x1+20)*x1-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Pc06-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Fx=(((((64*x-1528/5)*x+24628/45)*x-4553/10)*x+1055/6)*x-27)*x+1
  Fy=(((((64*y-1528/5)*y+24628/45)*y-4553/10)*y+1055/6)*y-27)*y+1
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Pc06-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  bailout=p1+4, z=pixel:
  z=(((((64*z-1528/5)*z+24628/45)*z-4553/10)*z+1055/6)*z-27)*z+1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Pc06-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  const=p1, z=pixel:
  z=const+((((((64*z-1528/5)*z+24628/45)*z-4553/10)*z+1055/6)*z-27)*z+1)
  |z|<100
  ;SOURCE: chby3.frm
}


Pc06-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  const=pixel, z=p1:
  z=const+((((((64*z-1528/5)*z+24628/45)*z-4553/10)*z+1055/6)*z-27)*z+1)
  |z|<100
  ;SOURCE: chby4.frm
}


Pc06-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=((((((64*z-1528/5)*z+24628/45)*z-4553/10)*z+1055/6)*z-27)*z+1)
  fd=((((384*z-1528)*z+98512/45)*z-13659/10)*z+1055/3)*z-27
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Pc06-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=((((((64*z-1528/5)*z+24628/45)*z-4553/10)*z+1055/6)*z-27)*z+1)
  fd=((((384*z-1528)*z+98512/45)*z-13659/10)*z+1055/3)*z-27
  fdd=(((1920*z-6112)*z+98512/15)*z-13659/5)*z+1055/3
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Pc06-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=((((((64*z-1528/5)*z+24628/45)*z-4553/10)*z+1055/6)*z-27)*z+1)
  fd=((((384*z-1528)*z+98512/45)*z-13659/10)*z+1055/3)*z-27
  oz=z
  w=z-f/fd
  fw=((((((64*w-1528/5)*w+24628/45)*w-4553/10)*w+1055/6)*w-27)*w+1)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Pc06-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin((((((64*x-1528/5)*x+24628/45)*x-4553/10)*x+1055/6)*x-27)*x+1)
  Ty=sin((((((64*y-1528/5)*y+24628/45)*y-4553/10)*y+1055/6)*y-27)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Pc06-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((((((64*x-1528/5)*x+24628/45)*x-4553/10)*x+1055/6)*x-27)*x+1)
  Ty=fn1((((((64*y-1528/5)*y+24628/45)*y-4553/10)*y+1055/6)*y-27)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Pc06-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=((((((64*p1-1528/5)*p1+24628/45)*p1-4553/10)*p1+1055/6)*p1-27)*p1+1):
  zt=z
  foz=fz
  fz=((((((64*z-1528/5)*z+24628/45)*z-4553/10)*z+1055/6)*z-27)*z+1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Pc06-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  const=p1, z=pixel:
  z=const*((((((64*z-1528/5)*z+24628/45)*z-4553/10)*z+1055/6)*z-27)*z+1)
  |z|<100
  ;SOURCE: chby11.frm
}


Pc06-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  const=pixel, z=p1:
  z=const*((((((64*z-1528/5)*z+24628/45)*z-4553/10)*z+1055/6)*z-27)*z+1)
  |z|<100
  ;SOURCE: chby12.frm
}


Pc06-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=((((((64*z-1528/5)*z+24628/45)*z-4553/10)*z+1055/6)*z-27)*z+1)
  fd=((((384*z-1528)*z+98512/45)*z-13659/10)*z+1055/3)*z-27
  fdd=(((1920*z-6112)*z+98512/15)*z-13659/5)*z+1055/3
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Pc06-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  f=((((((64*z-1528/5)*z+24628/45)*z-4553/10)*z+1055/6)*z-27)*z+1)
  fd=((((384*z-1528)*z+98512/45)*z-13659/10)*z+1055/3)*z-27
  oz=z
  w=z-f/fd
  fw=((((((64*w-1528/5)*w+24628/45)*w-4553/10)*w+1055/6)*w-27)*w+1)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Pc06-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=((((((64*z-1528/5)*z+24628/45)*z-4553/10)*z+1055/6)*z-27)*z+1)
  fd=((((384*z-1528)*z+98512/45)*z-13659/10)*z+1055/3)*z-27
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Pc06-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=((((((64*p1-1528/5)*p1+24628/45)*p1-4553/10)*p1+1055/6)*p1-27)*p1+1):
  zt=z
  foz=fz
  fz=((((((64*z-1528/5)*z+24628/45)*z-4553/10)*z+1055/6)*z-27)*z+1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Pc06-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=((((((64*z-1528/5)*z+24628/45)*z-4553/10)*z+1055/6)*z-27)*z+1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Pc06-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=((((((64*z-1528/5)*z+24628/45)*z-4553/10)*z+1055/6)*z-27)*z+1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |(|z|)-(|oz|)|>=0.00000001
  ;SOURCE: chby18.frm
}


Pc06-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*((((((64*x-1528/5)*x+24628/45)*x-4553/10)*x+1055/6)*x-27)*x+1)
  x=x-t*((((((64*y-1528/5)*y+24628/45)*y-4553/10)*y+1055/6)*y-27)*y+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Pc06-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin((((((64*x-1528/5)*x+24628/45)*x-4553/10)*x+1055/6)*x-27)*x+1)
  x=x-t*sin((((((64*y-1528/5)*y+24628/45)*y-4553/10)*y+1055/6)*y-27)*y+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Pc06-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1((((((64*x-1528/5)*x+24628/45)*x-4553/10)*x+1055/6)*x-27)*x+1)
  x=x-t*fn1((((((64*y-1528/5)*y+24628/45)*y-4553/10)*y+1055/6)*y-27)*y+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Pc06-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((((((64*x-1528/5)*x+24628/45)*x-4553/10)*x+1055/6)*x-27)*x+1)
  Ty=fn2((((((64*y-1528/5)*y+24628/45)*y-4553/10)*y+1055/6)*y-27)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Pc06-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1((((((64*x-1528/5)*x+24628/45)*x-4553/10)*x+1055/6)*x-27)*x+1)
  Ty=fn2((((((64*y-1528/5)*y+24628/45)*y-4553/10)*y+1055/6)*y-27)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Pc06-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1((((((64*x-1528/5)*x+24628/45)*x-4553/10)*x+1055/6)*x-27)*x+1)
  x=x-t*fn2((((((64*y-1528/5)*y+24628/45)*y-4553/10)*y+1055/6)*y-27)*y+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Pc06-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1((((((64*x-1528/5)*x+24628/45)*x-4553/10)*x+1055/6)*x-27)*x+1)
  x=x-t*fn2((((((64*y-1528/5)*y+24628/45)*y-4553/10)*y+1055/6)*y-27)*y+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Pc06-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=fn1((((((64*x-1528/5)*x+24628/45)*x-4553/10)*x+1055/6)*x-27)*x+1)
  Ty=fn1((((((64*y-1528/5)*y+24628/45)*y-4553/10)*y+1055/6)*y-27)*y+1)
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Pc06-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=fn1((((((64*x-1528/5)*x+24628/45)*x-4553/10)*x+1055/6)*x-27)*x+1)
  Ty=fn1((((((64*y-1528/5)*y+24628/45)*y-4553/10)*y+1055/6)*y-27)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Pc06-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=fn1((((((64*x-1528/5)*x+24628/45)*x-4553/10)*x+1055/6)*x-27)*x+1)
  Ty=fn1((((((64*y-1528/5)*y+24628/45)*y-4553/10)*y+1055/6)*y-27)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Pc06-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((((((64*x-1528/5)*x+24628/45)*x-4553/10)*x+1055/6)*x-27)*x+1)
  Ty=fn1((((((64*y-1528/5)*y+24628/45)*y-4553/10)*y+1055/6)*y-27)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Pc06-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=(((((64*x0-1528/5)*x0+24628/45)*x0-4553/10)*x0+1055/6)*x0-27)*x0+1
  Fx1=(((((64*x1-1528/5)*x1+24628/45)*x1-4553/10)*x1+1055/6)*x1-27)*x1+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Pc07-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Fx=((((((128*x-25552/35)*x+514928/315)*x-573667/315)*x+31619/30)*x-1799/6)*x+35)*x-1
  Fy=((((((128*y-25552/35)*y+514928/315)*y-573667/315)*y+31619/30)*y-1799/6)*y+35)*y-1
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Pc07-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  bailout=p1+4, z=pixel:
  z=((((((128*z-25552/35)*z+514928/315)*z-573667/315)*z+31619/30)*z-1799/6)*z+35)*z-1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Pc07-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  const=p1, z=pixel:
  z=const+(((((((128*z-25552/35)*z+514928/315)*z-573667/315)*z+31619/30)*z-1799/6)*z+35)*z-1)
  |z|<100
  ;SOURCE: chby3.frm
}


Pc07-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  const=pixel, z=p1:
  z=const+(((((((128*z-25552/35)*z+514928/315)*z-573667/315)*z+31619/30)*z-1799/6)*z+35)*z-1)
  |z|<100
  ;SOURCE: chby4.frm
}


Pc07-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(((((((128*z-25552/35)*z+514928/315)*z-573667/315)*z+31619/30)*z-1799/6)*z+35)*z-1)
  fd=(((((896*z-153312/35)*z+514928/63)*z-2294668/315)*z+31619/10)*z-1799/3)*z+35
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Pc07-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(((((((128*z-25552/35)*z+514928/315)*z-573667/315)*z+31619/30)*z-1799/6)*z+35)*z-1)
  fd=(((((896*z-153312/35)*z+514928/63)*z-2294668/315)*z+31619/10)*z-1799/3)*z+35
  fdd=((((5376*z-153312/7)*z+2059712/63)*z-2294668/105)*z+31619/5)*z-1799/3
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Pc07-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(((((((128*z-25552/35)*z+514928/315)*z-573667/315)*z+31619/30)*z-1799/6)*z+35)*z-1)
  fd=(((((896*z-153312/35)*z+514928/63)*z-2294668/315)*z+31619/10)*z-1799/3)*z+35
  oz=z
  w=z-f/fd
  fw=(((((((128*w-25552/35)*w+514928/315)*w-573667/315)*w+31619/30)*w-1799/6)*w+35)*w-1)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Pc07-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(((((((128*x-25552/35)*x+514928/315)*x-573667/315)*x+31619/30)*x-1799/6)*x+35)*x-1)
  Ty=sin(((((((128*y-25552/35)*y+514928/315)*y-573667/315)*y+31619/30)*y-1799/6)*y+35)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Pc07-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(((((((128*x-25552/35)*x+514928/315)*x-573667/315)*x+31619/30)*x-1799/6)*x+35)*x-1)
  Ty=fn1(((((((128*y-25552/35)*y+514928/315)*y-573667/315)*y+31619/30)*y-1799/6)*y+35)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Pc07-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(((((((128*p1-25552/35)*p1+514928/315)*p1-573667/315)*p1+31619/30)*p1-1799/6)*p1+35)*p1-1):
  zt=z
  foz=fz
  fz=(((((((128*z-25552/35)*z+514928/315)*z-573667/315)*z+31619/30)*z-1799/6)*z+35)*z-1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Pc07-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  const=p1, z=pixel:
  z=const*(((((((128*z-25552/35)*z+514928/315)*z-573667/315)*z+31619/30)*z-1799/6)*z+35)*z-1)
  |z|<100
  ;SOURCE: chby11.frm
}


Pc07-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  const=pixel, z=p1:
  z=const*(((((((128*z-25552/35)*z+514928/315)*z-573667/315)*z+31619/30)*z-1799/6)*z+35)*z-1)
  |z|<100
  ;SOURCE: chby12.frm
}


Pc07-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(((((((128*z-25552/35)*z+514928/315)*z-573667/315)*z+31619/30)*z-1799/6)*z+35)*z-1)
  fd=(((((896*z-153312/35)*z+514928/63)*z-2294668/315)*z+31619/10)*z-1799/3)*z+35
  fdd=((((5376*z-153312/7)*z+2059712/63)*z-2294668/105)*z+31619/5)*z-1799/3
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Pc07-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  f=(((((((128*z-25552/35)*z+514928/315)*z-573667/315)*z+31619/30)*z-1799/6)*z+35)*z-1)
  fd=(((((896*z-153312/35)*z+514928/63)*z-2294668/315)*z+31619/10)*z-1799/3)*z+35
  oz=z
  w=z-f/fd
  fw=(((((((128*w-25552/35)*w+514928/315)*w-573667/315)*w+31619/30)*w-1799/6)*w+35)*w-1)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Pc07-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(((((((128*z-25552/35)*z+514928/315)*z-573667/315)*z+31619/30)*z-1799/6)*z+35)*z-1)
  fd=(((((896*z-153312/35)*z+514928/63)*z-2294668/315)*z+31619/10)*z-1799/3)*z+35
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Pc07-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(((((((128*p1-25552/35)*p1+514928/315)*p1-573667/315)*p1+31619/30)*p1-1799/6)*p1+35)*p1-1):
  zt=z
  foz=fz
  fz=(((((((128*z-25552/35)*z+514928/315)*z-573667/315)*z+31619/30)*z-1799/6)*z+35)*z-1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Pc07-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  z=pixel, oz=0
  fz=-1
  zt=fn1(z)+p1:
  foz=fz
  fz=(((((((128*z-25552/35)*z+514928/315)*z-573667/315)*z+31619/30)*z-1799/6)*z+35)*z-1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Pc07-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  z=pixel, oz=0
  fz=-1
  zt=fn1(z)+p1:
  foz=fz
  fz=(((((((128*z-25552/35)*z+514928/315)*z-573667/315)*z+31619/30)*z-1799/6)*z+35)*z-1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |(|z|)-(|oz|)|>=0.00000001
  ;SOURCE: chby18.frm
}


Pc07-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(((((((128*x-25552/35)*x+514928/315)*x-573667/315)*x+31619/30)*x-1799/6)*x+35)*x-1)
  x=x-t*(((((((128*y-25552/35)*y+514928/315)*y-573667/315)*y+31619/30)*y-1799/6)*y+35)*y-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Pc07-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(((((((128*x-25552/35)*x+514928/315)*x-573667/315)*x+31619/30)*x-1799/6)*x+35)*x-1)
  x=x-t*sin(((((((128*y-25552/35)*y+514928/315)*y-573667/315)*y+31619/30)*y-1799/6)*y+35)*y-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Pc07-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1(((((((128*x-25552/35)*x+514928/315)*x-573667/315)*x+31619/30)*x-1799/6)*x+35)*x-1)
  x=x-t*fn1(((((((128*y-25552/35)*y+514928/315)*y-573667/315)*y+31619/30)*y-1799/6)*y+35)*y-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Pc07-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(((((((128*x-25552/35)*x+514928/315)*x-573667/315)*x+31619/30)*x-1799/6)*x+35)*x-1)
  Ty=fn2(((((((128*y-25552/35)*y+514928/315)*y-573667/315)*y+31619/30)*y-1799/6)*y+35)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Pc07-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(((((((128*x-25552/35)*x+514928/315)*x-573667/315)*x+31619/30)*x-1799/6)*x+35)*x-1)
  Ty=fn2(((((((128*y-25552/35)*y+514928/315)*y-573667/315)*y+31619/30)*y-1799/6)*y+35)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Pc07-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1(((((((128*x-25552/35)*x+514928/315)*x-573667/315)*x+31619/30)*x-1799/6)*x+35)*x-1)
  x=x-t*fn2(((((((128*y-25552/35)*y+514928/315)*y-573667/315)*y+31619/30)*y-1799/6)*y+35)*y-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Pc07-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1(((((((128*x-25552/35)*x+514928/315)*x-573667/315)*x+31619/30)*x-1799/6)*x+35)*x-1)
  x=x-t*fn2(((((((128*y-25552/35)*y+514928/315)*y-573667/315)*y+31619/30)*y-1799/6)*y+35)*y-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Pc07-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=fn1(((((((128*x-25552/35)*x+514928/315)*x-573667/315)*x+31619/30)*x-1799/6)*x+35)*x-1)
  Ty=fn1(((((((128*y-25552/35)*y+514928/315)*y-573667/315)*y+31619/30)*y-1799/6)*y+35)*y-1)
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Pc07-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=fn1(((((((128*x-25552/35)*x+514928/315)*x-573667/315)*x+31619/30)*x-1799/6)*x+35)*x-1)
  Ty=fn1(((((((128*y-25552/35)*y+514928/315)*y-573667/315)*y+31619/30)*y-1799/6)*y+35)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Pc07-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=fn1(((((((128*x-25552/35)*x+514928/315)*x-573667/315)*x+31619/30)*x-1799/6)*x+35)*x-1)
  Ty=fn1(((((((128*y-25552/35)*y+514928/315)*y-573667/315)*y+31619/30)*y-1799/6)*y+35)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Pc07-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(((((((128*x-25552/35)*x+514928/315)*x-573667/315)*x+31619/30)*x-1799/6)*x+35)*x-1)
  Ty=fn1(((((((128*y-25552/35)*y+514928/315)*y-573667/315)*y+31619/30)*y-1799/6)*y+35)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Pc07-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=((((((128*x0-25552/35)*x0+514928/315)*x0-573667/315)*x0+31619/30)*x0-1799/6)*x0+35)*x0-1
  Fx1=((((((128*x1-25552/35)*x1+514928/315)*x1-573667/315)*x1+31619/30)*x1-1799/6)*x1+35)*x1-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Pc08-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Fx=(((((((256*x-59504/35)*x+1443406/315)*x-289799/45)*x+2542045/504)*x-32662/15)*x+1435/3)*x-44)*x+1
  Fy=(((((((256*y-59504/35)*y+1443406/315)*y-289799/45)*y+2542045/504)*y-32662/15)*y+1435/3)*y-44)*y+1
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Pc08-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  bailout=p1+4, z=pixel:
  z=(((((((256*z-59504/35)*z+1443406/315)*z-289799/45)*z+2542045/504)*z-32662/15)*z+1435/3)*z-44)*z+1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Pc08-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  const=p1, z=pixel:
  z=const+((((((((256*z-59504/35)*z+1443406/315)*z-289799/45)*z+2542045/504)*z-32662/15)*z+1435/3)*z-44)*z+1)
  |z|<100
  ;SOURCE: chby3.frm
}


Pc08-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  const=pixel, z=p1:
  z=const+((((((((256*z-59504/35)*z+1443406/315)*z-289799/45)*z+2542045/504)*z-32662/15)*z+1435/3)*z-44)*z+1)
  |z|<100
  ;SOURCE: chby4.frm
}


Pc08-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=((((((((256*z-59504/35)*z+1443406/315)*z-289799/45)*z+2542045/504)*z-32662/15)*z+1435/3)*z-44)*z+1)
  fd=((((((2048*z-59504/5)*z+2886812/105)*z-289799/9)*z+2542045/126)*z-32662/5)*z+2870/3)*z-44
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Pc08-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=((((((((256*z-59504/35)*z+1443406/315)*z-289799/45)*z+2542045/504)*z-32662/15)*z+1435/3)*z-44)*z+1)
  fd=((((((2048*z-59504/5)*z+2886812/105)*z-289799/9)*z+2542045/126)*z-32662/5)*z+2870/3)*z-44
  fdd=(((((14336*z-357024/5)*z+2886812/21)*z-1159196/9)*z+2542045/42)*z-65324/5)*z+2870/3
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Pc08-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=((((((((256*z-59504/35)*z+1443406/315)*z-289799/45)*z+2542045/504)*z-32662/15)*z+1435/3)*z-44)*z+1)
  fd=((((((2048*z-59504/5)*z+2886812/105)*z-289799/9)*z+2542045/126)*z-32662/5)*z+2870/3)*z-44
  oz=z
  w=z-f/fd
  fw=((((((((256*w-59504/35)*w+1443406/315)*w-289799/45)*w+2542045/504)*w-32662/15)*w+1435/3)*w-44)*w+1)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Pc08-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin((((((((256*x-59504/35)*x+1443406/315)*x-289799/45)*x+2542045/504)*x-32662/15)*x+1435/3)*x-44)*x+1)
  Ty=sin((((((((256*y-59504/35)*y+1443406/315)*y-289799/45)*y+2542045/504)*y-32662/15)*y+1435/3)*y-44)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Pc08-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((((((((256*x-59504/35)*x+1443406/315)*x-289799/45)*x+2542045/504)*x-32662/15)*x+1435/3)*x-44)*x+1)
  Ty=fn1((((((((256*y-59504/35)*y+1443406/315)*y-289799/45)*y+2542045/504)*y-32662/15)*y+1435/3)*y-44)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Pc08-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=((((((((256*p1-59504/35)*p1+1443406/315)*p1-289799/45)*p1+2542045/504)*p1-32662/15)*p1+1435/3)*p1-44)*p1+1):
  zt=z
  foz=fz
  fz=((((((((256*z-59504/35)*z+1443406/315)*z-289799/45)*z+2542045/504)*z-32662/15)*z+1435/3)*z-44)*z+1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Pc08-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  const=p1, z=pixel:
  z=const*((((((((256*z-59504/35)*z+1443406/315)*z-289799/45)*z+2542045/504)*z-32662/15)*z+1435/3)*z-44)*z+1)
  |z|<100
  ;SOURCE: chby11.frm
}


Pc08-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  const=pixel, z=p1:
  z=const*((((((((256*z-59504/35)*z+1443406/315)*z-289799/45)*z+2542045/504)*z-32662/15)*z+1435/3)*z-44)*z+1)
  |z|<100
  ;SOURCE: chby12.frm
}


Pc08-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=((((((((256*z-59504/35)*z+1443406/315)*z-289799/45)*z+2542045/504)*z-32662/15)*z+1435/3)*z-44)*z+1)
  fd=((((((2048*z-59504/5)*z+2886812/105)*z-289799/9)*z+2542045/126)*z-32662/5)*z+2870/3)*z-44
  fdd=(((((14336*z-357024/5)*z+2886812/21)*z-1159196/9)*z+2542045/42)*z-65324/5)*z+2870/3
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Pc08-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  f=((((((((256*z-59504/35)*z+1443406/315)*z-289799/45)*z+2542045/504)*z-32662/15)*z+1435/3)*z-44)*z+1)
  fd=((((((2048*z-59504/5)*z+2886812/105)*z-289799/9)*z+2542045/126)*z-32662/5)*z+2870/3)*z-44
  oz=z
  w=z-f/fd
  fw=((((((((256*w-59504/35)*w+1443406/315)*w-289799/45)*w+2542045/504)*w-32662/15)*w+1435/3)*w-44)*w+1)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Pc08-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=((((((((256*z-59504/35)*z+1443406/315)*z-289799/45)*z+2542045/504)*z-32662/15)*z+1435/3)*z-44)*z+1)
  fd=((((((2048*z-59504/5)*z+2886812/105)*z-289799/9)*z+2542045/126)*z-32662/5)*z+2870/3)*z-44
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Pc08-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=((((((((256*p1-59504/35)*p1+1443406/315)*p1-289799/45)*p1+2542045/504)*p1-32662/15)*p1+1435/3)*p1-44)*p1+1):
  zt=z
  foz=fz
  fz=((((((((256*z-59504/35)*z+1443406/315)*z-289799/45)*z+2542045/504)*z-32662/15)*z+1435/3)*z-44)*z+1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Pc08-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=((((((((256*z-59504/35)*z+1443406/315)*z-289799/45)*z+2542045/504)*z-32662/15)*z+1435/3)*z-44)*z+1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Pc08-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=((((((((256*z-59504/35)*z+1443406/315)*z-289799/45)*z+2542045/504)*z-32662/15)*z+1435/3)*z-44)*z+1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |(|z|)-(|oz|)|>=0.00000001
  ;SOURCE: chby18.frm
}


Pc08-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*((((((((256*x-59504/35)*x+1443406/315)*x-289799/45)*x+2542045/504)*x-32662/15)*x+1435/3)*x-44)*x+1)
  x=x-t*((((((((256*y-59504/35)*y+1443406/315)*y-289799/45)*y+2542045/504)*y-32662/15)*y+1435/3)*y-44)*y+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Pc08-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin((((((((256*x-59504/35)*x+1443406/315)*x-289799/45)*x+2542045/504)*x-32662/15)*x+1435/3)*x-44)*x+1)
  x=x-t*sin((((((((256*y-59504/35)*y+1443406/315)*y-289799/45)*y+2542045/504)*y-32662/15)*y+1435/3)*y-44)*y+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Pc08-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1((((((((256*x-59504/35)*x+1443406/315)*x-289799/45)*x+2542045/504)*x-32662/15)*x+1435/3)*x-44)*x+1)
  x=x-t*fn1((((((((256*y-59504/35)*y+1443406/315)*y-289799/45)*y+2542045/504)*y-32662/15)*y+1435/3)*y-44)*y+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Pc08-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((((((((256*x-59504/35)*x+1443406/315)*x-289799/45)*x+2542045/504)*x-32662/15)*x+1435/3)*x-44)*x+1)
  Ty=fn2((((((((256*y-59504/35)*y+1443406/315)*y-289799/45)*y+2542045/504)*y-32662/15)*y+1435/3)*y-44)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Pc08-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1((((((((256*x-59504/35)*x+1443406/315)*x-289799/45)*x+2542045/504)*x-32662/15)*x+1435/3)*x-44)*x+1)
  Ty=fn2((((((((256*y-59504/35)*y+1443406/315)*y-289799/45)*y+2542045/504)*y-32662/15)*y+1435/3)*y-44)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Pc08-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1((((((((256*x-59504/35)*x+1443406/315)*x-289799/45)*x+2542045/504)*x-32662/15)*x+1435/3)*x-44)*x+1)
  x=x-t*fn2((((((((256*y-59504/35)*y+1443406/315)*y-289799/45)*y+2542045/504)*y-32662/15)*y+1435/3)*y-44)*y+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Pc08-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1((((((((256*x-59504/35)*x+1443406/315)*x-289799/45)*x+2542045/504)*x-32662/15)*x+1435/3)*x-44)*x+1)
  x=x-t*fn2((((((((256*y-59504/35)*y+1443406/315)*y-289799/45)*y+2542045/504)*y-32662/15)*y+1435/3)*y-44)*y+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Pc08-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=fn1((((((((256*x-59504/35)*x+1443406/315)*x-289799/45)*x+2542045/504)*x-32662/15)*x+1435/3)*x-44)*x+1)
  Ty=fn1((((((((256*y-59504/35)*y+1443406/315)*y-289799/45)*y+2542045/504)*y-32662/15)*y+1435/3)*y-44)*y+1)
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Pc08-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=fn1((((((((256*x-59504/35)*x+1443406/315)*x-289799/45)*x+2542045/504)*x-32662/15)*x+1435/3)*x-44)*x+1)
  Ty=fn1((((((((256*y-59504/35)*y+1443406/315)*y-289799/45)*y+2542045/504)*y-32662/15)*y+1435/3)*y-44)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Pc08-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=fn1((((((((256*x-59504/35)*x+1443406/315)*x-289799/45)*x+2542045/504)*x-32662/15)*x+1435/3)*x-44)*x+1)
  Ty=fn1((((((((256*y-59504/35)*y+1443406/315)*y-289799/45)*y+2542045/504)*y-32662/15)*y+1435/3)*y-44)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Pc08-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((((((((256*x-59504/35)*x+1443406/315)*x-289799/45)*x+2542045/504)*x-32662/15)*x+1435/3)*x-44)*x+1)
  Ty=fn1((((((((256*y-59504/35)*y+1443406/315)*y-289799/45)*y+2542045/504)*y-32662/15)*y+1435/3)*y-44)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Pc08-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=(((((((256*x0-59504/35)*x0+1443406/315)*x0-289799/45)*x0+2542045/504)*x0-32662/15)*x0+1435/3)*x0-44)*x0+1
  Fx1=(((((((256*x1-59504/35)*x1+1443406/315)*x1-289799/45)*x1+2542045/504)*x1-32662/15)*x1+1435/3)*x1-44)*x1+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Pc09-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Fx=((((((((512*x-1223392/315)*x+772508/63)*x-8458976/405)*x+26206517/1260)*x-2060215/168)*x+20664/5)*x-725)*x+54)*x-1
  Fy=((((((((512*y-1223392/315)*y+772508/63)*y-8458976/405)*y+26206517/1260)*y-2060215/168)*y+20664/5)*y-725)*y+54)*y-1
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Pc09-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  bailout=p1+4, z=pixel:
  z=((((((((512*z-1223392/315)*z+772508/63)*z-8458976/405)*z+26206517/1260)*z-2060215/168)*z+20664/5)*z-725)*z+54)*z-1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Pc09-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  const=p1, z=pixel:
  z=const+(((((((((512*z-1223392/315)*z+772508/63)*z-8458976/405)*z+26206517/1260)*z-2060215/168)*z+20664/5)*z-725)*z+54)*z-1)
  |z|<100
  ;SOURCE: chby3.frm
}


Pc09-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  const=pixel, z=p1:
  z=const+(((((((((512*z-1223392/315)*z+772508/63)*z-8458976/405)*z+26206517/1260)*z-2060215/168)*z+20664/5)*z-725)*z+54)*z-1)
  |z|<100
  ;SOURCE: chby4.frm
}


Pc09-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(((((((((512*z-1223392/315)*z+772508/63)*z-8458976/405)*z+26206517/1260)*z-2060215/168)*z+20664/5)*z-725)*z+54)*z-1)
  fd=(((((((4608*z-9787136/315)*z+772508/9)*z-16917952/135)*z+26206517/252)*z-2060215/42)*z+61992/5)*z-1450)*z+54
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Pc09-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(((((((((512*z-1223392/315)*z+772508/63)*z-8458976/405)*z+26206517/1260)*z-2060215/168)*z+20664/5)*z-725)*z+54)*z-1)
  fd=(((((((4608*z-9787136/315)*z+772508/9)*z-16917952/135)*z+26206517/252)*z-2060215/42)*z+61992/5)*z-1450)*z+54
  fdd=((((((36864*z-9787136/45)*z+1545016/3)*z-16917952/27)*z+26206517/63)*z-2060215/14)*z+123984/5)*z-1450
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Pc09-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(((((((((512*z-1223392/315)*z+772508/63)*z-8458976/405)*z+26206517/1260)*z-2060215/168)*z+20664/5)*z-725)*z+54)*z-1)
  fd=(((((((4608*z-9787136/315)*z+772508/9)*z-16917952/135)*z+26206517/252)*z-2060215/42)*z+61992/5)*z-1450)*z+54
  oz=z
  w=z-f/fd
  fw=(((((((((512*w-1223392/315)*w+772508/63)*w-8458976/405)*w+26206517/1260)*w-2060215/168)*w+20664/5)*w-725)*w+54)*w-1)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Pc09-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(((((((((512*x-1223392/315)*x+772508/63)*x-8458976/405)*x+26206517/1260)*x-2060215/168)*x+20664/5)*x-725)*x+54)*x-1)
  Ty=sin(((((((((512*y-1223392/315)*y+772508/63)*y-8458976/405)*y+26206517/1260)*y-2060215/168)*y+20664/5)*y-725)*y+54)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Pc09-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(((((((((512*x-1223392/315)*x+772508/63)*x-8458976/405)*x+26206517/1260)*x-2060215/168)*x+20664/5)*x-725)*x+54)*x-1)
  Ty=fn1(((((((((512*y-1223392/315)*y+772508/63)*y-8458976/405)*y+26206517/1260)*y-2060215/168)*y+20664/5)*y-725)*y+54)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Pc09-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(((((((((512*p1-1223392/315)*p1+772508/63)*p1-8458976/405)*p1+26206517/1260)*p1-2060215/168)*p1+20664/5)*p1-725)*p1+54)*p1-1):
  zt=z
  foz=fz
  fz=(((((((((512*z-1223392/315)*z+772508/63)*z-8458976/405)*z+26206517/1260)*z-2060215/168)*z+20664/5)*z-725)*z+54)*z-1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Pc09-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  const=p1, z=pixel:
  z=const*(((((((((512*z-1223392/315)*z+772508/63)*z-8458976/405)*z+26206517/1260)*z-2060215/168)*z+20664/5)*z-725)*z+54)*z-1)
  |z|<100
  ;SOURCE: chby11.frm
}


Pc09-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  const=pixel, z=p1:
  z=const*(((((((((512*z-1223392/315)*z+772508/63)*z-8458976/405)*z+26206517/1260)*z-2060215/168)*z+20664/5)*z-725)*z+54)*z-1)
  |z|<100
  ;SOURCE: chby12.frm
}


Pc09-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(((((((((512*z-1223392/315)*z+772508/63)*z-8458976/405)*z+26206517/1260)*z-2060215/168)*z+20664/5)*z-725)*z+54)*z-1)
  fd=(((((((4608*z-9787136/315)*z+772508/9)*z-16917952/135)*z+26206517/252)*z-2060215/42)*z+61992/5)*z-1450)*z+54
  fdd=((((((36864*z-9787136/45)*z+1545016/3)*z-16917952/27)*z+26206517/63)*z-2060215/14)*z+123984/5)*z-1450
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Pc09-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  f=(((((((((512*z-1223392/315)*z+772508/63)*z-8458976/405)*z+26206517/1260)*z-2060215/168)*z+20664/5)*z-725)*z+54)*z-1)
  fd=(((((((4608*z-9787136/315)*z+772508/9)*z-16917952/135)*z+26206517/252)*z-2060215/42)*z+61992/5)*z-1450)*z+54
  oz=z
  w=z-f/fd
  fw=(((((((((512*w-1223392/315)*w+772508/63)*w-8458976/405)*w+26206517/1260)*w-2060215/168)*w+20664/5)*w-725)*w+54)*w-1)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Pc09-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(((((((((512*z-1223392/315)*z+772508/63)*z-8458976/405)*z+26206517/1260)*z-2060215/168)*z+20664/5)*z-725)*z+54)*z-1)
  fd=(((((((4608*z-9787136/315)*z+772508/9)*z-16917952/135)*z+26206517/252)*z-2060215/42)*z+61992/5)*z-1450)*z+54
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Pc09-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(((((((((512*p1-1223392/315)*p1+772508/63)*p1-8458976/405)*p1+26206517/1260)*p1-2060215/168)*p1+20664/5)*p1-725)*p1+54)*p1-1):
  zt=z
  foz=fz
  fz=(((((((((512*z-1223392/315)*z+772508/63)*z-8458976/405)*z+26206517/1260)*z-2060215/168)*z+20664/5)*z-725)*z+54)*z-1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Pc09-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  z=pixel, oz=0
  fz=-1
  zt=fn1(z)+p1:
  foz=fz
  fz=(((((((((512*z-1223392/315)*z+772508/63)*z-8458976/405)*z+26206517/1260)*z-2060215/168)*z+20664/5)*z-725)*z+54)*z-1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Pc09-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  z=pixel, oz=0
  fz=-1
  zt=fn1(z)+p1:
  foz=fz
  fz=(((((((((512*z-1223392/315)*z+772508/63)*z-8458976/405)*z+26206517/1260)*z-2060215/168)*z+20664/5)*z-725)*z+54)*z-1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |(|z|)-(|oz|)|>=0.00000001
  ;SOURCE: chby18.frm
}


Pc09-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(((((((((512*x-1223392/315)*x+772508/63)*x-8458976/405)*x+26206517/1260)*x-2060215/168)*x+20664/5)*x-725)*x+54)*x-1)
  x=x-t*(((((((((512*y-1223392/315)*y+772508/63)*y-8458976/405)*y+26206517/1260)*y-2060215/168)*y+20664/5)*y-725)*y+54)*y-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Pc09-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(((((((((512*x-1223392/315)*x+772508/63)*x-8458976/405)*x+26206517/1260)*x-2060215/168)*x+20664/5)*x-725)*x+54)*x-1)
  x=x-t*sin(((((((((512*y-1223392/315)*y+772508/63)*y-8458976/405)*y+26206517/1260)*y-2060215/168)*y+20664/5)*y-725)*y+54)*y-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Pc09-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1(((((((((512*x-1223392/315)*x+772508/63)*x-8458976/405)*x+26206517/1260)*x-2060215/168)*x+20664/5)*x-725)*x+54)*x-1)
  x=x-t*fn1(((((((((512*y-1223392/315)*y+772508/63)*y-8458976/405)*y+26206517/1260)*y-2060215/168)*y+20664/5)*y-725)*y+54)*y-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Pc09-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(((((((((512*x-1223392/315)*x+772508/63)*x-8458976/405)*x+26206517/1260)*x-2060215/168)*x+20664/5)*x-725)*x+54)*x-1)
  Ty=fn2(((((((((512*y-1223392/315)*y+772508/63)*y-8458976/405)*y+26206517/1260)*y-2060215/168)*y+20664/5)*y-725)*y+54)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Pc09-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(((((((((512*x-1223392/315)*x+772508/63)*x-8458976/405)*x+26206517/1260)*x-2060215/168)*x+20664/5)*x-725)*x+54)*x-1)
  Ty=fn2(((((((((512*y-1223392/315)*y+772508/63)*y-8458976/405)*y+26206517/1260)*y-2060215/168)*y+20664/5)*y-725)*y+54)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Pc09-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1(((((((((512*x-1223392/315)*x+772508/63)*x-8458976/405)*x+26206517/1260)*x-2060215/168)*x+20664/5)*x-725)*x+54)*x-1)
  x=x-t*fn2(((((((((512*y-1223392/315)*y+772508/63)*y-8458976/405)*y+26206517/1260)*y-2060215/168)*y+20664/5)*y-725)*y+54)*y-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Pc09-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1(((((((((512*x-1223392/315)*x+772508/63)*x-8458976/405)*x+26206517/1260)*x-2060215/168)*x+20664/5)*x-725)*x+54)*x-1)
  x=x-t*fn2(((((((((512*y-1223392/315)*y+772508/63)*y-8458976/405)*y+26206517/1260)*y-2060215/168)*y+20664/5)*y-725)*y+54)*y-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Pc09-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=fn1(((((((((512*x-1223392/315)*x+772508/63)*x-8458976/405)*x+26206517/1260)*x-2060215/168)*x+20664/5)*x-725)*x+54)*x-1)
  Ty=fn1(((((((((512*y-1223392/315)*y+772508/63)*y-8458976/405)*y+26206517/1260)*y-2060215/168)*y+20664/5)*y-725)*y+54)*y-1)
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Pc09-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=fn1(((((((((512*x-1223392/315)*x+772508/63)*x-8458976/405)*x+26206517/1260)*x-2060215/168)*x+20664/5)*x-725)*x+54)*x-1)
  Ty=fn1(((((((((512*y-1223392/315)*y+772508/63)*y-8458976/405)*y+26206517/1260)*y-2060215/168)*y+20664/5)*y-725)*y+54)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Pc09-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=fn1(((((((((512*x-1223392/315)*x+772508/63)*x-8458976/405)*x+26206517/1260)*x-2060215/168)*x+20664/5)*x-725)*x+54)*x-1)
  Ty=fn1(((((((((512*y-1223392/315)*y+772508/63)*y-8458976/405)*y+26206517/1260)*y-2060215/168)*y+20664/5)*y-725)*y+54)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Pc09-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(((((((((512*x-1223392/315)*x+772508/63)*x-8458976/405)*x+26206517/1260)*x-2060215/168)*x+20664/5)*x-725)*x+54)*x-1)
  Ty=fn1(((((((((512*y-1223392/315)*y+772508/63)*y-8458976/405)*y+26206517/1260)*y-2060215/168)*y+20664/5)*y-725)*y+54)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Pc09-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=((((((((512*x0-1223392/315)*x0+772508/63)*x0-8458976/405)*x0+26206517/1260)*x0-2060215/168)*x0+20664/5)*x0-725)*x0+54)*x0-1
  Fx1=((((((((512*x1-1223392/315)*x1+772508/63)*x1-8458976/405)*x1+26206517/1260)*x1-2060215/168)*x1+20664/5)*x1-725)*x1+54)*x1-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Pc10-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Fx=(((((((((1024*x-2753216/315)*x+2375464/75)*x-900686282/14175)*x+312488741/4050)*x-4193867/72)*x+22702079/840)*x-36713/5)*x+1055)*x-65)*x+1
  Fy=(((((((((1024*y-2753216/315)*y+2375464/75)*y-900686282/14175)*y+312488741/4050)*y-4193867/72)*y+22702079/840)*y-36713/5)*y+1055)*y-65)*y+1
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Pc10-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  bailout=p1+4, z=pixel:
  z=(((((((((1024*z-2753216/315)*z+2375464/75)*z-900686282/14175)*z+312488741/4050)*z-4193867/72)*z+22702079/840)*z-36713/5)*z+1055)*z-65)*z+1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Pc10-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  const=p1, z=pixel:
  z=const+((((((((((1024*z-2753216/315)*z+2375464/75)*z-900686282/14175)*z+312488741/4050)*z-4193867/72)*z+22702079/840)*z-36713/5)*z+1055)*z-65)*z+1)
  |z|<100
  ;SOURCE: chby3.frm
}


Pc10-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  const=pixel, z=p1:
  z=const+((((((((((1024*z-2753216/315)*z+2375464/75)*z-900686282/14175)*z+312488741/4050)*z-4193867/72)*z+22702079/840)*z-36713/5)*z+1055)*z-65)*z+1)
  |z|<100
  ;SOURCE: chby4.frm
}


Pc10-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=((((((((((1024*z-2753216/315)*z+2375464/75)*z-900686282/14175)*z+312488741/4050)*z-4193867/72)*z+22702079/840)*z-36713/5)*z+1055)*z-65)*z+1)
  fd=((((((((10240*z-2753216/35)*z+19003712/75)*z-900686282/2025)*z+312488741/675)*z-20969335/72)*z+22702079/210)*z-110139/5)*z+2110)*z-65
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Pc10-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=((((((((((1024*z-2753216/315)*z+2375464/75)*z-900686282/14175)*z+312488741/4050)*z-4193867/72)*z+22702079/840)*z-36713/5)*z+1055)*z-65)*z+1)
  fd=((((((((10240*z-2753216/35)*z+19003712/75)*z-900686282/2025)*z+312488741/675)*z-20969335/72)*z+22702079/210)*z-110139/5)*z+2110)*z-65
  fdd=(((((((92160*z-22025728/35)*z+133025984/75)*z-1801372564/675)*z+312488741/135)*z-20969335/18)*z+22702079/70)*z-220278/5)*z+2110
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Pc10-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=((((((((((1024*z-2753216/315)*z+2375464/75)*z-900686282/14175)*z+312488741/4050)*z-4193867/72)*z+22702079/840)*z-36713/5)*z+1055)*z-65)*z+1)
  fd=((((((((10240*z-2753216/35)*z+19003712/75)*z-900686282/2025)*z+312488741/675)*z-20969335/72)*z+22702079/210)*z-110139/5)*z+2110)*z-65
  oz=z
  w=z-f/fd
  fw=((((((((((1024*w-2753216/315)*w+2375464/75)*w-900686282/14175)*w+312488741/4050)*w-4193867/72)*w+22702079/840)*w-36713/5)*w+1055)*w-65)*w+1)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Pc10-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin((((((((((1024*x-2753216/315)*x+2375464/75)*x-900686282/14175)*x+312488741/4050)*x-4193867/72)*x+22702079/840)*x-36713/5)*x+1055)*x-65)*x+1)
  Ty=sin((((((((((1024*y-2753216/315)*y+2375464/75)*y-900686282/14175)*y+312488741/4050)*y-4193867/72)*y+22702079/840)*y-36713/5)*y+1055)*y-65)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Pc10-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((((((((((1024*x-2753216/315)*x+2375464/75)*x-900686282/14175)*x+312488741/4050)*x-4193867/72)*x+22702079/840)*x-36713/5)*x+1055)*x-65)*x+1)
  Ty=fn1((((((((((1024*y-2753216/315)*y+2375464/75)*y-900686282/14175)*y+312488741/4050)*y-4193867/72)*y+22702079/840)*y-36713/5)*y+1055)*y-65)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Pc10-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=((((((((((1024*p1-2753216/315)*p1+2375464/75)*p1-900686282/14175)*p1+312488741/4050)*p1-4193867/72)*p1+22702079/840)*p1-36713/5)*p1+1055)*p1-65)*p1+1):
  zt=z
  foz=fz
  fz=((((((((((1024*z-2753216/315)*z+2375464/75)*z-900686282/14175)*z+312488741/4050)*z-4193867/72)*z+22702079/840)*z-36713/5)*z+1055)*z-65)*z+1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Pc10-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  const=p1, z=pixel:
  z=const*((((((((((1024*z-2753216/315)*z+2375464/75)*z-900686282/14175)*z+312488741/4050)*z-4193867/72)*z+22702079/840)*z-36713/5)*z+1055)*z-65)*z+1)
  |z|<100
  ;SOURCE: chby11.frm
}


Pc10-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  const=pixel, z=p1:
  z=const*((((((((((1024*z-2753216/315)*z+2375464/75)*z-900686282/14175)*z+312488741/4050)*z-4193867/72)*z+22702079/840)*z-36713/5)*z+1055)*z-65)*z+1)
  |z|<100
  ;SOURCE: chby12.frm
}


Pc10-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=((((((((((1024*z-2753216/315)*z+2375464/75)*z-900686282/14175)*z+312488741/4050)*z-4193867/72)*z+22702079/840)*z-36713/5)*z+1055)*z-65)*z+1)
  fd=((((((((10240*z-2753216/35)*z+19003712/75)*z-900686282/2025)*z+312488741/675)*z-20969335/72)*z+22702079/210)*z-110139/5)*z+2110)*z-65
  fdd=(((((((92160*z-22025728/35)*z+133025984/75)*z-1801372564/675)*z+312488741/135)*z-20969335/18)*z+22702079/70)*z-220278/5)*z+2110
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Pc10-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  f=((((((((((1024*z-2753216/315)*z+2375464/75)*z-900686282/14175)*z+312488741/4050)*z-4193867/72)*z+22702079/840)*z-36713/5)*z+1055)*z-65)*z+1)
  fd=((((((((10240*z-2753216/35)*z+19003712/75)*z-900686282/2025)*z+312488741/675)*z-20969335/72)*z+22702079/210)*z-110139/5)*z+2110)*z-65
  oz=z
  w=z-f/fd
  fw=((((((((((1024*w-2753216/315)*w+2375464/75)*w-900686282/14175)*w+312488741/4050)*w-4193867/72)*w+22702079/840)*w-36713/5)*w+1055)*w-65)*w+1)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Pc10-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=((((((((((1024*z-2753216/315)*z+2375464/75)*z-900686282/14175)*z+312488741/4050)*z-4193867/72)*z+22702079/840)*z-36713/5)*z+1055)*z-65)*z+1)
  fd=((((((((10240*z-2753216/35)*z+19003712/75)*z-900686282/2025)*z+312488741/675)*z-20969335/72)*z+22702079/210)*z-110139/5)*z+2110)*z-65
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Pc10-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=((((((((((1024*p1-2753216/315)*p1+2375464/75)*p1-900686282/14175)*p1+312488741/4050)*p1-4193867/72)*p1+22702079/840)*p1-36713/5)*p1+1055)*p1-65)*p1+1):
  zt=z
  foz=fz
  fz=((((((((((1024*z-2753216/315)*z+2375464/75)*z-900686282/14175)*z+312488741/4050)*z-4193867/72)*z+22702079/840)*z-36713/5)*z+1055)*z-65)*z+1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Pc10-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=((((((((((1024*z-2753216/315)*z+2375464/75)*z-900686282/14175)*z+312488741/4050)*z-4193867/72)*z+22702079/840)*z-36713/5)*z+1055)*z-65)*z+1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Pc10-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=((((((((((1024*z-2753216/315)*z+2375464/75)*z-900686282/14175)*z+312488741/4050)*z-4193867/72)*z+22702079/840)*z-36713/5)*z+1055)*z-65)*z+1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |(|z|)-(|oz|)|>=0.00000001
  ;SOURCE: chby18.frm
}


Pc10-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*((((((((((1024*x-2753216/315)*x+2375464/75)*x-900686282/14175)*x+312488741/4050)*x-4193867/72)*x+22702079/840)*x-36713/5)*x+1055)*x-65)*x+1)
  x=x-t*((((((((((1024*y-2753216/315)*y+2375464/75)*y-900686282/14175)*y+312488741/4050)*y-4193867/72)*y+22702079/840)*y-36713/5)*y+1055)*y-65)*y+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Pc10-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin((((((((((1024*x-2753216/315)*x+2375464/75)*x-900686282/14175)*x+312488741/4050)*x-4193867/72)*x+22702079/840)*x-36713/5)*x+1055)*x-65)*x+1)
  x=x-t*sin((((((((((1024*y-2753216/315)*y+2375464/75)*y-900686282/14175)*y+312488741/4050)*y-4193867/72)*y+22702079/840)*y-36713/5)*y+1055)*y-65)*y+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Pc10-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1((((((((((1024*x-2753216/315)*x+2375464/75)*x-900686282/14175)*x+312488741/4050)*x-4193867/72)*x+22702079/840)*x-36713/5)*x+1055)*x-65)*x+1)
  x=x-t*fn1((((((((((1024*y-2753216/315)*y+2375464/75)*y-900686282/14175)*y+312488741/4050)*y-4193867/72)*y+22702079/840)*y-36713/5)*y+1055)*y-65)*y+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Pc10-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((((((((((1024*x-2753216/315)*x+2375464/75)*x-900686282/14175)*x+312488741/4050)*x-4193867/72)*x+22702079/840)*x-36713/5)*x+1055)*x-65)*x+1)
  Ty=fn2((((((((((1024*y-2753216/315)*y+2375464/75)*y-900686282/14175)*y+312488741/4050)*y-4193867/72)*y+22702079/840)*y-36713/5)*y+1055)*y-65)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Pc10-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1((((((((((1024*x-2753216/315)*x+2375464/75)*x-900686282/14175)*x+312488741/4050)*x-4193867/72)*x+22702079/840)*x-36713/5)*x+1055)*x-65)*x+1)
  Ty=fn2((((((((((1024*y-2753216/315)*y+2375464/75)*y-900686282/14175)*y+312488741/4050)*y-4193867/72)*y+22702079/840)*y-36713/5)*y+1055)*y-65)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Pc10-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1((((((((((1024*x-2753216/315)*x+2375464/75)*x-900686282/14175)*x+312488741/4050)*x-4193867/72)*x+22702079/840)*x-36713/5)*x+1055)*x-65)*x+1)
  x=x-t*fn2((((((((((1024*y-2753216/315)*y+2375464/75)*y-900686282/14175)*y+312488741/4050)*y-4193867/72)*y+22702079/840)*y-36713/5)*y+1055)*y-65)*y+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Pc10-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1((((((((((1024*x-2753216/315)*x+2375464/75)*x-900686282/14175)*x+312488741/4050)*x-4193867/72)*x+22702079/840)*x-36713/5)*x+1055)*x-65)*x+1)
  x=x-t*fn2((((((((((1024*y-2753216/315)*y+2375464/75)*y-900686282/14175)*y+312488741/4050)*y-4193867/72)*y+22702079/840)*y-36713/5)*y+1055)*y-65)*y+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Pc10-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=fn1((((((((((1024*x-2753216/315)*x+2375464/75)*x-900686282/14175)*x+312488741/4050)*x-4193867/72)*x+22702079/840)*x-36713/5)*x+1055)*x-65)*x+1)
  Ty=fn1((((((((((1024*y-2753216/315)*y+2375464/75)*y-900686282/14175)*y+312488741/4050)*y-4193867/72)*y+22702079/840)*y-36713/5)*y+1055)*y-65)*y+1)
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Pc10-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=fn1((((((((((1024*x-2753216/315)*x+2375464/75)*x-900686282/14175)*x+312488741/4050)*x-4193867/72)*x+22702079/840)*x-36713/5)*x+1055)*x-65)*x+1)
  Ty=fn1((((((((((1024*y-2753216/315)*y+2375464/75)*y-900686282/14175)*y+312488741/4050)*y-4193867/72)*y+22702079/840)*y-36713/5)*y+1055)*y-65)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Pc10-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=fn1((((((((((1024*x-2753216/315)*x+2375464/75)*x-900686282/14175)*x+312488741/4050)*x-4193867/72)*x+22702079/840)*x-36713/5)*x+1055)*x-65)*x+1)
  Ty=fn1((((((((((1024*y-2753216/315)*y+2375464/75)*y-900686282/14175)*y+312488741/4050)*y-4193867/72)*y+22702079/840)*y-36713/5)*y+1055)*y-65)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Pc10-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((((((((((1024*x-2753216/315)*x+2375464/75)*x-900686282/14175)*x+312488741/4050)*x-4193867/72)*x+22702079/840)*x-36713/5)*x+1055)*x-65)*x+1)
  Ty=fn1((((((((((1024*y-2753216/315)*y+2375464/75)*y-900686282/14175)*y+312488741/4050)*y-4193867/72)*y+22702079/840)*y-36713/5)*y+1055)*y-65)*y+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Pc10-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=(((((((((1024*x0-2753216/315)*x0+2375464/75)*x0-900686282/14175)*x0+312488741/4050)*x0-4193867/72)*x0+22702079/840)*x0-36713/5)*x0+1055)*x0-65)*x0+1
  Fx1=(((((((((1024*x1-2753216/315)*x1+2375464/75)*x1-900686282/14175)*x1+312488741/4050)*x1-4193867/72)*x1+22702079/840)*x1-36713/5)*x1+1055)*x1-65)*x1+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


pc_popcorn_jul {; Copyright (c) Paul W. Carlson, 1998
    ; Always use float=yes
    ;
    ; real(p1) = h in popcorn formula
    ; imag(p1) = bailout value
    ; real(p2) = controls width of elements
    ; imag(p2)   not used
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
  z = iter = bailout = range_num = 0
  x = real(pixel)
  y = imag(pixel)
  h = real(p1)
  width = real(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  index_factor = (colors_in_range - 1) / width
  :
  prev_x = x
  x = x - h * sin(y + tan(3 * y))
  y = y - h * sin(prev_x + tan(3 * prev_x))
  w = x + flip(y)
  dist = abs(|w|-.25)
  IF (dist < width && iter > 0)
    bailout = 1
    z = index_factor * dist + range_num * colors_in_range + 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < imag(p1)
  ;SOURCE: 98msg.frm
}


pc_series {; Carlson Series Formula
           ; Copyright (c) Paul W. Carlson, 1997
           ; Use float=y
  z = 0, c = pixel
  :
  z2 = z * z
  z4 = 0.01 * z2 * z2
  z8  = z4 * z4
  z12 = z4 * z8
  z16 = z4 * z12
  z = z2 - z4 - z8 - z12 - z16 + c
  |z| < 1000
  ;SOURCE: 98msg.frm
}


pcut {; Giuseppe Zito
  z = pixel
  c2 = 0.91723502
  c3 = 0.064943
  c6 = -0.63427699
  c10 = 0.56935799
  c12 = -0.20840099
  c14 = 0.942972
  c18 = 0.215078
  d1 = -0.143446
  d12 = 0.40633699
  d16 = 0.91389698
  d22 = -0.064093
  : 
  x = real(z), y = imag(z)
  s0 = x
  s0 = s0 *c2
  s0 = s0 -c3
  s0 = s0 +y
  s0 = s0 *c6
  s0 = s0 +x
  s0 = s0 -x
  s0 = s0 /c10
  s0 = s0 *c12
  s0 = s0 *c14
  s0 = s0 -y
  s1 =c18
  s0 = s0 +s1
  newx = s0 
  s0 = y
  s0 = s0 +d1
  s1 = x
  s1 = s1 *x
  s1 = s1 -x
  s0 = s0 *s1
  s0 = s0 +x
  s0 = s0 /x
  s0 = s0 -d12
  s0 = s0 -y
  s0 = s0 -x
  s0 = s0 *d16
  s0 = s0 +y
  s1 = x
  s0 = s0 +s1
  s0 = s0 *y
  s0 = s0 +x
  s0 = s0 -d22
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


pd-HC_Grav {; formula by P. DiGiorgi, May, 1998
            ; uses P. Carlson's Hi_Cycle method
            ; applied to the Gravijul formula
            ; by Mark Christenson
  z = w = iter = range_num = bailout = 0
  pa = real(p3), pb = imag(p3)
  w = fn4(pixel)
  c = p2
  i = (0,1)
  k = 1.2 - pb
  :
  u = fn1(w)
  w = fn3(p1/fn2(u*u))
  wr = real(w)
  w = w - wr + abs(wr) - c
  angle = atan(imag(w)/wr)
  ka = k * angle / pb
  rw = k * cos(angle) + pb * cos(ka)
  iw = k * sin(angle) + pb * sin(ka)
  ww = rw + i * iw
  dist = abs(|w|-|ww|)
  IF (dist < pa && iter > 1)
    bailout = 1
    index = 63 * dist / pa
    z = index + range_num * 63 + 1
  ENDIF
  iter = iter + 1
  range_num = range_num + 1
  IF (range_num == 4)
    range_num = 0
  ENDIF
  z = z - iter
  bailout == 0 && |w| < 100
  ;SOURCE: 98msg.frm
}


pd-HC_Grav2 {; formula by P. DiGiorgi, May, 1998
             ; P. Carlson's Hi_Cycle method (modified)
             ; applied to Mark Christenson's Gravijul formula
  z = w = iter = range_num = bailout = 0
  pa = real(p3), pb = imag(p3)
  w = pixel
  c = p2
  i = (0,1)
  k = 1.2 - pb
  :
  u = fn1(w)
  w = fn3(p1/fn2(u*u))
  wr = real(w)
  w = w - wr + abs(wr) - c
  angle = atan(imag(w)/wr)
  ka = k * angle / pb
  rw = k * cos(angle) + pb * cos(ka)
  iw = k * sin(angle) + pb * sin(ka)
  ww = rw + i * iw
  ww = fn4(1 - ww)/ww
  dist = abs(|w|-|ww|)
  IF (dist < pa && iter > 1)
    bailout = 1
    index = 63 * dist / pa
    z = index + range_num * 63 + 1
  ENDIF
  iter = iter + 1
  range_num = range_num + 1
  IF (range_num == 4)
    range_num = 0
  ENDIF
  z = z - iter
  bailout == 0 && |w| < 100
  ;SOURCE: 98msg.frm
}


pd-HC_PCJul {; formula by P. DiGiorgi, June, 1998
             ; Paul Carlson's Hi_Cycle method (modified)
             ; applied to a generalized PopcornJul type
  z = w = iter = range_num = bailout = 0
  pa = abs(real(p3)), pb = imag(p3)
  h = real(p1)
  w = abs(pixel)
  x = real(w), y = imag(w)
  i = (0,1)
  k = 1.2 - pb
  :
  x1 = p2*x - h*fn1(y - fn2(fn3(3*y)))
  y1 = p2*y - h*fn1(x - fn2(fn3(3*x)))
  w = x1 + flip(y1)
  x = x1, y = y1
  wr = real(w)
  w = w - wr + abs(wr)
  angle = atan(imag(w)/wr)
  ka = k * angle / pb
  rw = k * cos(angle) + pb * cos(ka)
  iw = k * sin(angle) + pb * sin(ka)
  ww = rw + i * iw
  IF (real(p3) < 0)
    ww = fn4(ww)
  ELSE
    ww = fn4(1 - ww)/ww
  ENDIF
  dist = abs(|w|-|ww|)
  IF (dist < pa && iter > 1)
    bailout = 1
    index = 125 * dist / pa
    z = index + range_num * 125 + 1
  ENDIF
  iter = iter + 1
  range_num = range_num + 1
  IF (range_num == 2)
    range_num = 0
  ENDIF
  z = z - iter
  bailout == 0 && |w| < imag(p1)
  ;SOURCE: 98msg.frm
}


pd301_cd    {; Formula by P. DiGiorgi - December 97
             ; Uses coloring algorithm [Cir-Dst]
             ; from DMJ-PUB.FRM by Damion M. Jones
             ; outside = real: closest z[n] to ring at p1

  IF (imag(p2) == 0)                      ; Invalid value for aspect ratio.
    p2 = (0,1) + real(p2)                 ; Substitute a default value.
  ENDIF
  IF (real(p3) == 0)                      ; Invalid value for color scale.
    p3 = 75 + flip(imag(p3))              ; Substitute a default value.
  ENDIF
  IF (imag(p3) == 0)                      ; Invalid value for ring radius.
    p3 = (0,1) + real(p3)                 ; Substitute a default value.
  ENDIF
  closest = 1e+38                         ; Closest approach so far.
  point = 0                               ; Point of that closest approach.
  done = 2                                ; Iteration counter.
  r = (0,1) ^ (real(p2)/90)               ; Compute rotation vector.
  
  z = pixel:                              ; fractal calculation.
  c = .15*(fn1(z) + fn2(z) + 1.5)
  z = fn3(z*z) + fn4(c)

  done = done + 1                         ; Done one more iteration.
  z2 = (z-p1) * r                         ; Offset to p1 and rotate.
  z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
  d = abs(cabs(z2) - imag(p3))            ; Compute ring distance.
  IF (d < closest)                        ; Closer than previous value.
    point = z                             ; Save that point.
    closest = d                           ; Save the closest approach.
  ENDIF
  IF (|z| > 128)                          ; Point exceeds bailout.
    z = closest * real(p3)                ; Apply color scale.
    z = z - 255*trunc(z/real(255))        ; Wrap at 255.
    z = z - done                          ; Return value.
    done = -1                             ; Set flag to force an exit.
  ENDIF
  done >= 0                               ; Continue if the flag is clear.
  ;SOURCE: 97msg.frm
}


PD_201 {
  z = pixel, test = p1:
  y = sqr(z*p1)
  x = fn1(pixel + fn2(p2/(z+(z*y)) - z/(y+z)))
  z = x*z + pixel
  |z| <= (100 + p1)
  ;SOURCE: pdg02.frm
}


PD_202 {
  z = pixel:
  z = fn1(z*z*z + p1)/fn2(-z*pixel)
  |z| <= p2
  ;SOURCE: pdg02.frm
}


PD_203 {
  z=pixel
  x=real(pixel)
  y=imag(pixel)
  d=fn1(x*x)+fn2(y*y):
  z=(((z*z)/-z^p1)*d)+fn3(d/z)
  |z|<=p2
  ;SOURCE: pdg02.frm
}


PD_204 {
  z = c = pixel:
  z=fn1(z*z)+fn2(p2/c)
  |z|<4
  ;SOURCE: pdg02.frm
}


PD_205 {; Revised for Fractint v20 by G. Martin
  z = pixel, n = oldn = 1
  c = fn1(fn2(pixel)):
  z = fn3(z^((n + p1)/oldn)) - c
  oldn = n
  n = fn4(n + 1 + p2)
  |real(z)| < p3 
  ;SOURCE: pdg02.frm
}


PD_206 {
  z1 = z2 = pixel:
  x = real(z1), y = imag(z1)
  c = x*x + y*y
  x1 = -fn1((c - x)*x/c)
  y1 = -fn2((c + y)*y/c)
  x2 = x1*x1 - y1*y1 + p1
  y2 = 2*x1*y1
  z1 = x2 + flip(y2)
  z2 = (z2*z2 - p2)/(z2*z2 + p2)*fn1(z2)*fn2(z2) + pixel
  z = fn3(z1 - z2)
  |z| <= (100 + p3)
  ;SOURCE: pdg02.frm
}


PD_207 {
  z = pixel
  x = real(pixel), y = imag(pixel)
  c = fn1(x^p1) + fn1(y^p1):
  z = fn2(fn3(z^p2)) + fn4(c)
  |z| <= p3
  ;SOURCE: pdg02.frm
}


PD_208 {
  z = pixel
  x = real(pixel), y = imag(pixel)
  c = fn1(x*x) + fn2(y*y):
  z = fn3(z*z) + p1*(fn4(c*c))
  |z| <= p2
  ;SOURCE: pdg02.frm
}


PD_209 {
  z = pixel, lastz = 0
  x = (real(sin(pixel)))^2
  y = (imag(sin(pixel)))^2:
  c = fn1(x*y) + fn2(1/(x*y))
  z = fn3(z^p1) + fn4(c + lastz)
  lastz = z
  |z| <= p2
  ;SOURCE: pdg02.frm
}


PD_210 {
  a = fn1(pixel*pixel) - conj(pixel) + fn1(pixel)
  z = flip(a*a) / abs(a-pixel):
  x = real(z), y = imag(z)
  x = (p1 + x*x) - fn2(x - y)
  y = (p1 + y*y) - fn3(y - x)
  z = x + y
  |z| <= p2
  ;SOURCE: pdg02.frm
}


PD_211 {
  a = (pixel*pixel), b = conj(1-pixel), c = flip(1-pixel)
  z = fn1(a*p1) - b - c:
  x = real(z), y = imag(z)
  x = fn2(x*x + p2) - fn3(b - c)
  y = fn2(y*y + p2) - fn3(b - c)
  z = x + y
  |z| <= p3
  ;SOURCE: pdg02.frm
}


PD_212 {
  z1 = fn1(pixel), z2 = fn2(1/pixel)
  x1 = real(z1), y1 = imag(z1)
  x2 = real(z2), y2 = imag(z2)
  c = tan(x1*x2) + tan(y1*y2):
  z1 = fn3((z1^(p1*2)) + (z1^p1)) + c
  z2 = fn4((z2^(p1*2)) + (z2^p1)) + c
  z = z1 + flip(z2)
  (|z1| <= p2) || (|z2| <= p2)
  ;SOURCE: pdg02.frm
}


PD_301 {
  bailout = p3
  z = pixel:
  c = fn1(z) + fn2(z) + p1
  z = fn3(z*z) + fn4(p2*c)
  |z| <= bailout
  ;SOURCE: pdg03.frm
}


PD_302 {
  bailout = p3
  z = pixel:
  z2 = z*z
  c = sin(z2) + cos(z2)
  za = (fn1(z2) + fn2(p1*c))*(z <= c)
  zb = (fn3(p2/z) + fn4(z))*(c < z)
  z = za + zb
  |z| <= bailout
  ;SOURCE: pdg03.frm
}


PD_303 {; Replaced variable "e" with "ee", 5/7/99. G. Martin
  bailout = 4 + imag(p3)
  ee = real(p3), z = c = pixel:
  ze = fn1(z^ee), c = z + p1
  z = fn3(fn2(ze + p2)/pixel) + fn4(c)
  |z| <= bailout
  ;SOURCE: pdg03.frm
}


PD_304 {
  bailout = 4 + imag(p3)
  a = conj(pixel*pixel)
  z = a/pixel, n = fn3(1/pixel):
  c = fn1(z*a + p1)
  z = fn2(z^p2*n) + |fn4(c*real(p3))|
  |z| <= bailout
  ;SOURCE: pdg03.frm
}


PD_305 {
  bailout = 4 + p3
  z = pixel, x = real(pixel), y = imag(pixel)
  c = fn1(p1*x*x*x) + fn2(p2*y*y*y)
  d = cabs(pixel)/2:
  z = fn3(z) + fn4(c) + z*c + d
  |z| <= bailout
  ;SOURCE: pdg03.frm
}


PD_306 {
  bailout = 4 + p3
  z = pixel:
  c = p1*fn1(1/z) + p2
  z = fn2(z^z) + fn3(c)
  |z| <= bailout
  ;SOURCE: pdg03.frm
}


PD_307 {
  bailout = 4 + p2, z = pixel:
  c = fn1(real(z) + p1) / fn2(imag(z) + p1)
  z = fn3(z*c) - 1/z
  |z| <= bailout
  ;SOURCE: pdg03.frm
}


PD_308 {
  bailout = 4 + p3, z = pixel:
  a = fn1(z - pixel)
  b = fn2(z*(z + p1))
  c = fn3(pixel - z)
  z = fn4(a*b/(c + p2))
  (|real(z)| <= bailout) && (|imag(z)| <= bailout)
  ;SOURCE: pdg03.frm
}


PD_309 {; Replaced variable "e" with "ee", 5/7/99. G. Martin
  bailout = 4 + imag(p3)
  z = conj(fn1(pixel + p1))
  ee = fn4(pixel + real(p3)):
  z = fn2(flip(z^ee)) + fn3(|z*p2|)
  |z| <= bailout
  ;SOURCE: pdg03.frm
}


PD_310 {
  bailout = 4 + p3
  z = pixel, c = z*z*p1:
  z = fn1(z*(p2 - z) + conj(c))
  c = fn2(c)/(p2*c)
  |z| <= bailout
  ;SOURCE: pdg03.frm
}


PD_311 {
  bailout = 4 + imag(p3)
  z = tanh(p1 - 1/conj(pixel))
  x = real(z), y = imag(z)
  c = fn4(real(p3)/pixel):
  x1 = fn1(x*sin(x) - x)
  y1 = fn1(y*sin(y) - y)
  x2 = fn2(x1*x1) + p2*conj(y1*x) + c
  y2 = fn3(y1*y1) + p2*conj(x1*y) + c
  z = x2 + flip(y2)
  x = x1, y = y1
  |z| <= bailout
  ;SOURCE: pdg03.frm
}


PD_312 {; Revised for Fractint v20 by G. Martin
  bailout = 4 + imag(p3)
  expo = 1 + real(p3)
  z = fn4(1/conj(pixel))
  x = real(z), y = imag(z):
  x1 = acosh(x*sin(x) - p1*x^expo)
  y1 = acosh(y*sin(y) - p1*y^expo)
  x2 = fn1(p2*conj(x1*x))
  y2 = fn2(p2*conj(y1*y)) + log(y1*y1)
  z = x2 + flip(y2)
  x = x1, y = y1
  |z| <= bailout
  ;SOURCE: pdg03.frm
}


PD_313 {
  bailout = 4 + p3, z = pixel
  c = fn1(p1 + z):
  z2 = z*z + p2
  z = fn2(z^z2) + c
  |z| <= bailout
  ;SOURCE: pdg03.frm
}


PD_314 {
  bailout = 4 + imag(p3), k = real(p3)
  z = pixel:
  x = real(z), y = imag(z)
  v = x*y
  x1 = fn1(x*x + p1) + fn2(v)
  y1 = fn3(p2 - y*y) + flip(v)
  z = x1 + flip(y1 + k/fn4(|z|))
  |z| <= bailout
  ;SOURCE: pdg03.frm
}


PD_315 {; Revised for Fractint v20 by G. Martin
  bailout = 4 + imag(p3)
  z = pixel, expo = real(p3)
  x = fn1(real(z)), y = fn2(imag(z)):
  xn = fn3(x + p1) + fn4(p2 - x^expo)
  yn = fn3(y + p1) + fn4(p2 - y^expo)
  z = xn + flip(yn)
  x = xn, y = yn
  |z| <= bailout
  ;SOURCE: pdg03.frm
}


PD_411 {; Modified for IF..ELSE logic by Sylvie Gallet, 05/20/97
   bailout = sqrt(4 + imag(p3))
   k = real(p3), z = z1 = pixel
   c = p1*tan(z) :
   z1 = fn1(z1^k) + p2*fn2(z1*c)
   IF (whitesq)
      z = log(z1)
   ELSE
      z = log(- conj(z1))
   ENDIF
   abs(real(z)) <= bailout && abs(imag(z)) <= bailout
  ;SOURCE: phctopng.frm
}


PD_412 {
  bailout = 4 + imag(p3)
  k = real(p3), z = z1 = pixel
  c = p1*fn3(z):
  z1 = fn1(z1^k) + p2*fn2(z1*c)
  x1 = real(z1), y1 = imag(z1)
  z2 = -x1 + flip(y1)
  z = log(z1)*whitesq + log(z2)*(whitesq==0)
  (|real(z)| <= bailout) && (|imag(z)| <= bailout)
  ;SOURCE: pdg04.frm
}


PD_413 {
  bailout = 4 + imag(p3)
  k = real(p3), z = z1 = pixel
  c = p1*fn3(z):
  z1 = fn1(z1^k)/fn2(p2 + z1*c)
  x1 = real(z1), y1 = imag(z1)
  z2 = -x1 + flip(y1)
  z = log(z1)*whitesq + log(z2)*(whitesq==0)
  (|real(z)| <= bailout) && (|imag(z)| <= bailout)
  ;SOURCE: pdg04.frm
}


PD_414 {; PHC version of PD_207
  bailout = 4 + p3
  z = z1 = pixel
  x = real(pixel), y = imag(pixel)
  c = fn1(x^p1) + fn1(y^p1):
  z1 = fn2(fn3(z1^p2)) + fn4(c)
  x1 = real(z1), y1 = imag(z1)
  z2 = -x1 + flip(y1)
  z = log(z1)*whitesq + log(z2)*(whitesq==0)
  |z| <= bailout
  ;SOURCE: pdg04.frm
}


Pd_5cb {
  bailout = imag(p2)
  k = real(p2), z = fn1(pixel):
  c = pixel/z^k
  z = fn2(z + p1) + fn3(c)
  |z| <= bailout
  ;SOURCE: pdg05.frm
}


pd_lm_x   {; Formula by P. DiGiorgi, 7/97
    ; Generalized formula based on Lambda(fn||fn).
    ; Use integers +/- 1 to 8 for real(p3) to control
    ; image symmetry.  Negative values change bailout
    ; criteria from [real(z)] to [real(z) && imag(z)].
    ; Imag(p3) = bailout value.
  z = fn4(pixel)
  test1 = real(p2), test2 = imag(p2)
  sym = abs(real(p3))
  IF (sym == 1)
    z = abs(z)
  ELSEIF (sym == 2)
    z = conj(abs(z))
  ELSEIF (sym == 3)
    z = -abs(z)
  ELSEIF (sym == 4)
    z = conj(-abs(z))
  ELSEIF (sym == 5)
    z = real(z) + flip(abs(imag(z)))
  ELSEIF (sym == 6)
    z = real(z) + flip(-abs(imag(z)))
  ELSEIF (sym == 7)
    z = abs(real(z)) + flip(imag(z))
  ELSEIF (sym == 8)
    z = -abs(real(z)) + flip(imag(z))
  ENDIF
  bailout = imag(p3):
  IF (cabs(z) > test1)
    z = p1*fn1(z)*fn2(1 - z)
  ELSEIF (cabs(z) > test2)
    z = p1*fn1(z)*fn3(1 + z)
  ELSE
    z = p1*fn1(z)*fn2(1 - z)
  ENDIF
  IF (real(p3) >= 0)
    exit = (z <= bailout)
  ELSE
    exit = ((real(z) <= bailout) && (imag(z) <= bailout))
  ENDIF
  exit
  ;SOURCE: pd_lm.frm
}


pd_mm_fn {; A "many-man" variation by P. DiGiorgi
          ; Original formula by Stephen C. Ferguson
          ; adapted for Fractint by Les St Clair, 1997
  k = real(p1), bailout = imag(p1)
  e0 = real(p2), e1 = imag(p2)
  z = 0, c = pixel
  r = real(p3)*whitesq + imag(p3)*(whitesq==0)
  v = fn1(k*fn2(c^r)/r):
  IF (whitesq)
    a = fn3(z^e1)
  ELSE
    a = fn4(z^e0)
  ENDIF
  z = a + v
  (|real(z)| <= bailout)||(|imag(z)| <= bailout)
  ;SOURCE: pdg05.frm
}


pd_pcj {; modified PopcornJul by P. DiGiorgi
  h = real(p3), bailout = imag(p3)
  z = fn4(pixel)
  x = real(z), y = imag(z):
  x1 = p1*x - h*fn1(y - fn2(fn3(p2*y)))
  y1 = p1*y - h*fn1(x - fn2(fn3(p2*x)))
  z = x1 + flip(y1)
  x = x1, y = y1
  |z| <= bailout
  ;SOURCE: pdg05.frm
}


pd_wpp {; formula by P. DiGiorgi
  z = pixel
  x = real(z), y = imag(z):
  rx = 1/fn2(x), ry = 1/fn2(y)
  IF (whitesq==0)
    rx = -conj(rx)
    ry = -conj(ry)
  ENDIF
  x = p1 - p2*fn1(rx)
  y = p1 - p2*fn1(ry)
  z = fn3(x + flip(y))
  (|real(z)| <= 4) && (|imag(z)| <= 4)
  ;SOURCE: pdg05.frm
}


pd_wpp_orig {; formula by P. DiGiorgi
  z = pixel, k = p1*fn1(p3)
  x = real(z), y = imag(z):
  rx = 1/fn3(x), ry = 1/fn3(y)
  IF (whitesq==0)
    rx = -conj(rx)
    ry = -conj(ry)
  ENDIF
  x = k - p2*fn2(rx)
  y = k - p2*fn2(ry)
  z = fn4(x + flip(y))
  (|real(z)| <= 4) && (|imag(z)| <= 4)
  ;SOURCE: pdg05.frm
}


Peace_Magnet_PHC {
  z = r = pixel, c1 = p1 - 1, c2 = p1 - 2:
  r = ((z*z + (p2 - 1)) / (2*z + (p2 - 2)))^2
  z = (z*z + c1)/(z+z+c2) 
  z = (z*z * (whitesq == 1)) + (r * z * (whitesq == 0))
  |z| < 100
  ;SOURCE: beck.frm
}


Peace_PHC {
  z = pixel:
  r = ((z*z + (p1 - 1)) / (2*z + (p1 - 2)))^2
  q = fn1(z) * fn2(z) + p2
  z = (r * (whitesq == 1)) + (q * (whitesq == 0))  
  |z| < 100
  ;SOURCE: beck.frm
}


peacock (XAXIS) {
   ; The next obvious function to try
  z = pixel, zp = (0,0):
  temp = z
  z = -cos(z) - zp
  zp = temp 
  |zp| <= 4 
  ;SOURCE: noel.frm
}


penmand1 {
  a=(-1)^.4
  b=pixel
  c=sin(real(b))+flip(sin(imag(b)))
  b=b*a
  c=c*a+sin(real(b))+flip(sin(imag(b)))
  b=b*a
  c=c*a+sin(real(b))+flip(sin(imag(b)))
  b=b*a
  c=c*a+sin(real(b))+flip(sin(imag(b)))
  b=b*a
  c=c*a+sin(real(b))+flip(sin(imag(b)))
  c=c*p1
  z=0:
  z=sqr(z)+c
  |z|<=1000
  ;SOURCE: 99msg.frm
}


penta (XAXIS) {
   ; introducing a second function can add lots of variety.
  z = pixel, zp = (0,0):
  temp = z
  z = z*z - zp
  zp = conj(temp)
  |zp| <= 4 
  ;SOURCE: noel.frm
}


penta2 (XAXIS) {
   ; A simple technique of changing init params to map to a function.
  z = pixel^2, zp = (0,0):
  temp = z
  z = z*z - zp
  zp = conj(temp)
  |zp| <= 4 
  ;SOURCE: noel.frm
}


pentet {
   ; the HT variant of the penta formula
  z = pixel, zp = (0,0), huge=1.0e32:
  temp = z
  z = z*z - zp
  zp = p1/conj(temp) 
  (|zp| <= 64) && (|z| <= huge) 
  ;SOURCE: noel.frm
}


Petals_Barnsley1 {; Copyright (c) Paul W. Carlson, 1998
    ;   p1       = coordinates of the Julia set
    ;   real(p2) = radius of the circles - this controls
    ;              the size of the petals
    ;   imag(p2)   not Used
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
  w = pixel
  c = p1
  z = range_num = iter = 0
  r = real(p2)
  ir = flip(r)
  r2 = r * r
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  index_factor = (colors_in_range - 1) / (r2 + r2)
  :
  IF (real(w) >= 0)
    w = (w - 1) * c
  ELSE
    w = (w + 1) * c
  ENDIF
    ;
  c1 = (|w -  r| < r2)
  c2 = (|w + ir| < r2)
  c3 = (|w +  r| < r2)
  c4 = (|w - ir| < r2)
  IF (c1 && c4)
    d = |w - r - ir|
  ELSEIF (c1 && c2)
    d = |w - r + ir|
  ELSEIF (c2 && c3)
    d = |w + r + ir|
  ELSEIF (c3 && c4)
    d = |w + r - ir|
  ELSE
    d = 0
  ENDIF
  IF (d > 0)
    z = index_factor * d + range_num * colors_in_range + 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  d == 0 && |w| < 1.0e20
  ;SOURCE: 98msg.frm
}


Petals_Julia {; Paul Carlson
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = coordinates of the Julia set
    ;   real(p2) = radius of the circles - this controls
    ;              the size of the petals
    ;   imag(p2)   Not Used
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    w = pixel
    c = p1
    z = 0
    r = real(p2)
    r2 = r * r
    k = 0.35355339 * r    ; Don't mess with this constant
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    range_num = 0
    iter = 0:
    ;
    w = w * w + c
    ;
    wr = real(w), wi = imag(w)
    c1 = (((wr-r) * (wr-r) + wi * wi) < r2)
    c2 = ((wr * wr + (wi+r) * (wi+r)) < r2)
    c3 = (((wr+r) * (wr+r) + wi * wi) < r2)
    c4 = ((wr * wr + (wi-r) * (wi-r)) < r2)
    IF (c1 && c4)
      d = (wr-k) * (wr-k) + (wi-k) * (wi-k)
    ELSEIF (c1 && c2)
      d = (wr-k) * (wr-k) + (wi+k) * (wi+k)
    ELSEIF (c2 && c3)
      d = (wr+k) * (wr+k) + (wi+k) * (wi+k)
    ELSEIF (c3 && c4)
      d = (wr+k) * (wr+k) + (wi-k) * (wi-k)
    ELSE
      d = 0
    ENDIF
    IF (d > 0)
        index = colors_in_range * d / r2
        z = index + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    d == 0 && |w| < 1000
  ;SOURCE: 98msg.frm
}


Petals_Mset {; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = radius of the circles
    ;   p2       = circle offset factor
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    w = 0
    c = pixel
    r = p1
    ro = r + r * p2
    r2 = r * r
    f = 1 - 2 * p2 - p2 * p2
    k = p2 * r + r * sqrt(f)  ;abs val of petal center (k,k)
    plsqd = 2 * r2 * f        ;petal length squared
    z = 0
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    range_num = 0
    iter = 0:
    ;****************************************************
    ; The Carlson Series (I had to name it something)  :)
    ;****************************************************
    w2 = w * w
    w4 = 0.01 * w2 * w2
    w8  = w4 * w4
    w12 = w4 * w8
    w16 = w4 * w12
    w = w2 - w4 - w8 - w12 - w16 + c
    ;****************************************************
    ; Determine which pair of overlapping circles the
    ; orbit point falls in, if any.
    ;****************************************************
    wr = real(w), wi = imag(w)
    c1 = (((wr-ro) * (wr-ro) + wi * wi) < r2)
    c2 = ((wr * wr + (wi+ro) * (wi+ro)) < r2)
    c3 = (((wr+ro) * (wr+ro) + wi * wi) < r2)
    c4 = ((wr * wr + (wi-ro) * (wi-ro)) < r2)
    IF (c1 && c4)
      d = (wr-k) * (wr-k) + (wi-k) * (wi-k)
    ELSEIF (c1 && c2)
      d = (wr-k) * (wr-k) + (wi+k) * (wi+k)
    ELSEIF (c2 && c3)
      d = (wr+k) * (wr+k) + (wi+k) * (wi+k)
    ELSEIF (c3 && c4)
      d = (wr+k) * (wr+k) + (wi-k) * (wi-k)
    ELSE
      d = 0
    ENDIF
    ;
    IF (d > 0)
        ;************************************************
        ; Set z equal to the index into the colormap.
        ;************************************************
        index = colors_in_range * d / plsqd
        z = index + range_num * colors_in_range + 1
    ENDIF
    ;
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    d == 0 && |w| < 1000
  ;SOURCE: 98msg.frm
}


petcock (XAXIS) {
  z = pixel, zp = (0,0):
  temp = z
  z = -cos(z) - zp
  zp = 1/temp 
  |zp| <=64 
  ;SOURCE: noel.frm
}


Peter_104M {; Peter Anders anders@physik.hu-berlin.de
  z=p1, c=pixel:
  z=fn1(z^2)*fn2(c)*z
  abs(z)<=4 
  ;SOURCE: anders.frm
}


Peter_1A01 (XAXIS) {; Peter Anders anders@physik.hu-berlin.de 
  z=p1, c=pixel:
  z=z*z+c
  |fn1(z)|<real(p2) 
  ;SOURCE: peterman.frm
}


Peter_1A02 (XAXIS) {; Peter Anders anders@physik.hu-berlin.de
  z=p1, c=pixel:
  z=z*z+c
  abs(fn1(z))<real(p2)
  ;SOURCE: peterman.frm
}


Peter_1A03 (XAXIS) {; Peter Anders anders@physik.hu-berlin.de
  z=p1, c=pixel:
  z=z*z+c
  |fn1(z)|>real(p2) 
  ;SOURCE: peterman.frm
}


Peter_1A04 (XAXIS) {; Peter Anders anders@physik.hu-berlin.de
  z=p1, c=pixel:
  z=z*z+c
  abs(fn1(z))>real(p2)
  ;SOURCE: peterman.frm
}


Peter_1A05 {; Peter Anders anders@physik.hu-berlin.de 
  z=p1, c=pixel:
  z=z*z+c
  |fn1(real(z))-fn2(imag(z))|<real(p2) 
  ;SOURCE: peterman.frm
}


Peter_1A06 {; Peter Anders anders@physik.hu-berlin.de 
  z=p1, c=pixel:
  z=z*z+c
  abs(fn1(real(z))-fn2(imag(z)))<real(p2) 
  ;SOURCE: peterman.frm
}


Peter_1A07 {; Peter Anders anders@physik.hu-berlin.de 
  z=p1, c=pixel:
  z=z*z+c
  |fn1(real(z))-fn2(imag(z))|>real(p2) 
  ;SOURCE: peterman.frm
}


Peter_1A08 {; Peter Anders anders@physik.hu-berlin.de 
  z=p1, c=pixel:
  z=z*z+c
  abs(fn1(real(z))-fn2(imag(z)))>real(p2) 
  ;SOURCE: peterman.frm
}


Peter_1A09 (XAXIS) {; Peter Anders anders@physik.hu-berlin.de 
  z=p1, c=pixel:
  d=z
  z=z*z+c
  |fn1(real(z))-fn1(real(d))|>real(p2) 
  ;SOURCE: peterman.frm
}


Peter_1A10 {; Peter Anders anders@physik.hu-berlin.de 
  z=p1, c=pixel:
  d=z
  z=z*z+c          
  |fn1(imag(z))-fn1(imag(d))|>real(p2) 
  ;SOURCE: peterman.frm
}


Peter_1A11 {; Peter Anders anders@physik.hu-berlin.de 
  z=p1, c=pixel:
  d=z
  z=z*z+c          
  |fn1(real(z))-fn1(real(d))|<real(p2) 
  ;SOURCE: peterman.frm
}


Peter_1A12 {; Peter Anders anders@physik.hu-berlin.de 
  z=p1, c=pixel:
  d=z
  z=z*z+c          
  |fn1(imag(z))-fn1(imag(d))|<real(p2) 
  ;SOURCE: peterman.frm
}


Peter_1A13 (XAXIS) {; Peter Anders anders@physik.hu-berlin.de 
  z=p1, c=pixel:
  d=z
  z=z*z+c
  abs(fn1(real(z))-fn1(real(d)))>real(p2) 
  ;SOURCE: peterman.frm
}


Peter_1A14 {; Peter Anders anders@physik.hu-berlin.de 
  z=p1, c=pixel:
  d=z
  z=z*z+c
  abs(fn1(imag(z))-fn1(imag(d)))>real(p2) 
  ;SOURCE: peterman.frm
}


Peter_1A15 (XAXIS) {; Peter Anders anders@physik.hu-berlin.de 
  z=p1, c=pixel:
  d=z
  z=z*z+c
  abs(fn1(real(z))-fn1(real(d)))<real(p2) 
  ;SOURCE: peterman.frm
}


Peter_1A16 {; Peter Anders anders@physik.hu-berlin.de 
  z=p1, c=pixel:
  d=z
  z=z*z+c          
  abs(fn1(imag(z))-fn1(imag(d)))<real(p2) 
  ;SOURCE: peterman.frm
}


Peter_1HalCos {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=cos(z)
  f2=-sin(z)
  f3=-cos(z)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_1HalCosF {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=cos(z)
  f2=-sin(z)
  f3=-cos(z)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  z=z+cos(z)/sin(z)
  |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001 
  ;SOURCE: halley.frm
}


Peter_1HalCot {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=cotan(z)
  f2=-1/(sin(z))^2
  f3=2*cos(z)/(sin(z))^3
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_1HalCotF {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, g=p2+1:
  c=z
  f1=cotan(z)
  f2=-1/(sin(z))^2
  f3=2*cos(z)/(sin(z))^3
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001 
  ;SOURCE: halley.frm
}


Peter_1HalLog {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=log(z)
  f2=1/z
  f3=-1/(z*z)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_1HalLogF {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=log(z)
  f2=1/z
  f3=-1/(z*z)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001 
  ;SOURCE: halley.frm
}


Peter_1HalPoly {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, r=real(p1), g=p2+1:
  c=z
  f1=z^r-1
  f2=r*x^(r-1)
  f3=r*(r-1)*x^(r-2)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_1HalPolyII {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, r=real(p1), g=p2+1:
  c=z
  f1=z^r-1
  f2=r*x^(r-1)
  f3=r*(r-1)*x^(r-2)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  abs(real(z)-real(c)) >0.000001, abs(imag(z)-imag(c)) >0.000001
  ;SOURCE: halley.frm
}


Peter_1HalPolyR {; Peter Anders anders@physik.hu-berlin.de
   ; real Halley formula for polynoms,
   ; use floating point (only for real exponents)
  z=pixel, r=real(p1), g=p2+1:
  c=z
  f1=z^r-1
  f2=r*z^(r-1)
  f3=r*(r-1)*z^(r-2)
  z=z-g*f1/(f2-(f3*f1/(2*f2)))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_1HalPolyRFu {; Peter Anders anders@physik.hu-berlin.de
   ; real Halley formula for polynoms, use floating point
  z=fn1(pixel), r=p1, g=p2+1:
  c=z
  f1=z^r-1
  f2=r*z^(r-1)
  f3=r*(r-1)*z^(r-2)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_1HalPolyRFu2 {; Peter Anders anders@physik.hu-berlin.de
   ; real Halley formula for polynoms, use floating point
  z=pixel^real(p2)-imag(p2), r=p1, g=p2+1:
  c=z
  f1=z^r-1
  f2=r*z^(r-1)
  f3=r*(r-1)*z^(r-2)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_1HalPolyRFu3 {; Peter Anders anders@physik.hu-berlin.de
   ; real Halley formula for polynoms, use floating point
  z=pixel^4-1.25*pixel^2+0.25, r=p1, g=p2+1:
  c=z
  f1=z^r-1
  f2=r*z^(r-1)
  f3=r*(r-1)*z^(r-2)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_1HalPolyRFu4 {; Peter Anders anders@physik.hu-berlin.de
   ; real Halley formula for polynoms, use floating point
  a=fn1(real(pixel)), b=fn1(imag(pixel)), z=a+b*(0,1), r=p1, g=p2+1:
  c=z
  f1=z^r-1
  f2=r*z^(r-1)
  f3=r*(r-1)*z^(r-2)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_1HalPolyRFu5 {; Peter Anders anders@physik.hu-berlin.de
   ; real Halley formula for polynoms, use floating point
  z=fn1(fn2(pixel)), r=p1, g=p2+1:
  c=z
  f1=z^r-1
  f2=r*z^(r-1)
  f3=r*(r-1)*z^(r-2)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_1HalPolyRFu6 {; Peter Anders anders@physik.hu-berlin.de
   ; real Halley formula for polynoms, use floating point
  z=fn1(pixel^real(p2)+imag(p2)), r=p1, g=p2+1:
  c=z
  f1=z^r-1
  f2=r*z^(r-1)
  f3=r*(r-1)*z^(r-2)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_1HalPolyRII {; Peter Anders anders@physik.hu-berlin.de
   ; real Halley formula for polynoms, use floating point
  z=pixel, r=p1, g=p2+1:
  c=z
  f1=z^r-1
  f2=r*z^(r-1)
  f3=r*(r-1)*z^(r-2)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_1HalPolyRIII {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=(z^p1)-(z^p2)
  f2=(p1*z^(p1-1))-(p2*z^(p2-1))
  f3=(p1*(p1-1)*z^(p1-2))-(p2*(p2-1)*z^(p2-2))
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_1HalPolyRIV {; Peter Anders anders@physik.hu-berlin.de
   ; real Halley formula for polynoms, use floating point
  z=pixel, r=real(p1), a=p2, g=p2+1:
  c=z
  f1=z^r-1
  f2=r*z^(r-a)
  f3=r*(r-a)*z^(r-a-1)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >imag(p1)
  ;SOURCE: halley.frm
}


Peter_1HalPolyRV {; Peter Anders anders@physik.hu-berlin.de
   ; real Halley formula for polynoms, use floating point
  z=pixel, r=real(p1), a=p2, g=p2+1:
  c=z
  f1=z^r-1
  f2=r*z^(r-a)
  f3=r*(r-a)*z^(r-a-1)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  real(|z-c|) <imag(p1)
  ;SOURCE: halley.frm
}


Peter_1HalPolyRVI {; Peter Anders anders@physik.hu-berlin.de
   ; real Halley formula for polynoms, use floating point
  z=pixel, r=real(p1), a=p2, g=p2+1:
  c=z
  f1=z^r-1
  f2=r*z^(r-a)
  f3=r*(r-a)*z^(r-a-1)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  real(|fn1(z)|)<imag(p1)
  ;SOURCE: halley.frm
}


Peter_1HalPolyRVII {; Peter Anders anders@physik.hu-berlin.de
   ; real Halley formula for polynoms, use floating point
  z=pixel, r=real(p1), a=p2, g=p2+1:
  c=z
  f1=z^r-1
  f2=r*z^(r-a)
  f3=r*(r-a)*z^(r-a-1)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  real(|fn1(z)|)>imag(p1)
  ;SOURCE: halley.frm
}


Peter_1HalPolyX {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, r=real(p1), g=p2+1:
  c=z
  f1=z^r-1
  f2=r*z^(r-1)
  f3=r*(r-1)*z^(r-2)
  z=z-g*2*f2*f1/(2*f2*f2-f3*f1)
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_1HalSin {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=sin(z)
  f2=cos(z)
  f3=-sin(z)
  z=z-g*f1/(f2-(f3*f1/(2*f2)))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_1HalSinF {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=sin(z)
  f2=cos(z)
  f3=-sin(z)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001 
  ;SOURCE: halley.frm
}


Peter_1HalTan {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=tan(z)
  f2=1/(cos(z))^2
  f3=2*sin(z)/(cos(z))^3
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_1HalTanF {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, g=p2+1:
  c=z
  f1=tan(z)
  f2=1/(cos(z))^2
  f3=2*sin(z)/(cos(z))^3
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001 
  ;SOURCE: halley.frm
}


Peter_2A01 (XAXIS) {; Peter Anders anders@physik.hu-berlin.de
  z=c=pixel:
  z=z*z+c           
  |fn1(z)|<real(p2) 
  ;SOURCE: peterman.frm
}


Peter_2A02 (XAXIS) {; Peter Anders anders@physik.hu-berlin.de
  z=c=pixel:
  z=z*z+c           
  abs(fn1(z))<real(p2)
  ;SOURCE: peterman.frm
}


Peter_2A03 (XAXIS) {; Peter Anders anders@physik.hu-berlin.de
  z=c=pixel:
  z=z*z+c           
  |fn1(z)|>real(p2) 
  ;SOURCE: peterman.frm
}


Peter_2A04 (XAXIS) {; Peter Anders anders@physik.hu-berlin.de
  z=c=pixel:
  z=z*z+c           
  abs(fn1(z))>real(p2)
  ;SOURCE: peterman.frm
}


Peter_2A05 {; Peter Anders anders@physik.hu-berlin.de 
  z=c=pixel:
  z=z*z+c           
  |fn1(real(z))-fn2(imag(z))|<real(p2) 
  ;SOURCE: peterman.frm
}


Peter_2A06 {; Peter Anders anders@physik.hu-berlin.de 
  z=c=pixel:
  z=z*z+c           
  abs(fn1(real(z))-fn2(imag(z)))<real(p2) 
  ;SOURCE: peterman.frm
}


Peter_2A07 {; Peter Anders anders@physik.hu-berlin.de 
  z=c=pixel:
  z=z*z+c           
  |fn1(real(z))-fn2(imag(z))|>real(p2) 
  ;SOURCE: peterman.frm
}


Peter_2A08 {; Peter Anders anders@physik.hu-berlin.de 
  z=c=pixel:
  z=z*z+c           
  abs(fn1(real(z))-fn2(imag(z)))>real(p2) 
  ;SOURCE: peterman.frm
}


Peter_2A09 (XAXIS) {; Peter Anders anders@physik.hu-berlin.de
  z=c=pixel:
  d=z
  z=z*z+c          
  |fn1(real(z))-fn1(real(d))|>real(p2) 
  ;SOURCE: peterman.frm
}


Peter_2A10 {; Peter Anders anders@physik.hu-berlin.de 
  z=c=pixel:
  d=z
  z=z*z+c          
  |fn1(imag(z))-fn1(imag(d))|>real(p2) 
  ;SOURCE: peterman.frm
}


Peter_2A11 {; Peter Anders anders@physik.hu-berlin.de 
  z=c=pixel:
  d=z
  z=z*z+c          
  |fn1(real(z))-fn1(real(d))|<real(p2) 
  ;SOURCE: peterman.frm
}


Peter_2A12 {; Peter Anders anders@physik.hu-berlin.de 
  z=c=pixel:
  d=z
  z=z*z+c          
  |fn1(imag(z))-fn1(imag(d))|<real(p2) 
  ;SOURCE: peterman.frm
}


Peter_2A13 (XAXIS) {; Peter Anders anders@physik.hu-berlin.de
  z=c=pixel:
  d=z
  z=z*z+c          
  abs(fn1(real(z))-fn1(real(d)))>real(p2) 
  ;SOURCE: peterman.frm
}


Peter_2A14 {; Peter Anders anders@physik.hu-berlin.de 
  z=c=pixel:
  d=z
  z=z*z+c          
  abs(fn1(imag(z))-fn1(imag(d)))>real(p2) 
  ;SOURCE: peterman.frm
}


Peter_2A15 (XAXIS) {; Peter Anders anders@physik.hu-berlin.de
  z=c=pixel:
  d=z
  z=z*z+c          
  abs(fn1(real(z))-fn1(real(d)))<real(p2) 
  ;SOURCE: peterman.frm
}


Peter_2A16 {; Peter Anders anders@physik.hu-berlin.de 
  z=c=pixel:
  d=z
  z=z*z+c          
  abs(fn1(imag(z))-fn1(imag(d)))<real(p2)  
  ;SOURCE: peterman.frm
}


Peter_2HalCos^2 {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=cos(z)*cos(z)+p1
  f2=-2*cos(z)*sin(z)
  f3=-2*(2*cos(z)*cos(z)-1)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2HalCosCosH {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=cos(z)*cosh(z)+p1
  f2=cos(z)*sinh(z)-sin(z)*cosh(z)
  f3=-sin(z)*(sinh(z)+cosh(z))
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2HalCosH/Tan {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, g=p2+1:
  c=z
  f1=(cosh(z)/tan(z))+p1
  f21=sinh(z)*tan(z)-cosh(z)*(tan(z)*tan(z)+1)
  f22=tan(z)*tan(z)
  f2=f21/f22
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2HalCosH^2 {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=cosh(z)*cosh(z)+p1
  f2=2*cosh(z)*sinh(z)
  f3=2*(cosh(z)*cosh(z)+sinh(z)*sinh(z))
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2HalCosHTanH {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=cosh(z)*tanh(z)+p1
  f2=cosh(z)*(1-tanh(z)*tanh(z))+sinh(z)*tanh(z)
  f31=-2*cosh(z)*tanh(z)*(1-tanh(z)*tanh(z))+sinh(z)*(1-tanh(z)*tanh(z))
  f32=cosh(z)*tanh(z)+sinh(z)*(1-tanh(z)*tanh(z))
  f3=f31+f32
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2HalCosTan {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=tan(z)*cos(z)+p1
  f2=cos(z)*(tan(z)*tan(z)+1)-sin(z)*tan(z)
  f31=2*cos(z)*tan(z)*(tan(z)*tan(z)+1)-sin(z)*(tan(z)*tan(z)+1)
  f32=cos(z)*tan(z)+sin(z)*(tan(z)*tan(z)+1)
  f3=f31-f32
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2HalCosTanH {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=tanh(z)*cos(z)+p1
  f2=cos(z)*(1-tanh(z)*tanh(z))-sin(z)*tanh(z)
  f31=-2*cos(z)*tanh(z)*(1-tanh(z)*tanh(z))-sin(z)*(1-tanh(z)*tanh(z))
  f32=cos(z)*tanh(z)+sin(z)*(1-tanh(z)*tanh(z))
  f3=f31-f32
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2HalSin^2 {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=sin(z)*sin(z)+p1
  f2=2*cos(z)*sin(z)
  f3=2*(cos(z)*cos(z)-sin(z)*sin(z))
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2HalSinCos {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=sin(z)*cos(z)+p1
  f2=2*cos(z)*cos(z)-1
  f3=4*cos(z)*sin(z)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2HalSinCosH {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=sin(z)*cosh(z)+p1
  f2=cos(z)*cosh(z)+sin(z)*sinh(z)
  f3=2*cos(z)*sinh(z)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2HalSinH/Tan {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, g=p2+1:
  c=z
  f1=(sinh(z)/tan(z))+p1
  f21=cosh(z)*tan(z)-sinh(z)*(tan(z)*tan(z)+1)
  f22=tan(z)*tan(z)
  f2=f21/f22
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2HalSinH^2 {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=sinh(z)*sinh(z)+p1
  f2=2*cosh(z)*sinh(z)
  f3=2*(cosh(z)*cosh(z)+sinh(z)*sinh(z))
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2HalSinHCos {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=sinh(z)*cos(z)+p1
  f2=cos(z)*cosh(z)-sin(z)*sinh(z)
  f3=-2*sin(z)*cosh(z)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2HalSinHCosH {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=sinh(z)*cosh(z)+p1
  f2=cosh(z)*cosh(z)+sinh(z)*sinh(z)
  f3=4*sinh(z)*cosh(z)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2HalSinHTanH {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=tanh(z)*sinh(z)+p1
  f2=sinh(z)*(1-tanh(z)*tanh(z))+cosh(z)*tanh(z)
  f31=-2*sinh(z)*tanh(z)*(1-tanh(z)*tanh(z))+cosh(z)*(1-tanh(z)*tanh(z))
  f32=sinh(z)*tanh(z)+cosh(z)*(1-tanh(z)*tanh(z))
  f3=f31+f32
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2HalSinLog {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=sin(z)*log(z)+p1
  f2=sin(z)/z+cos(z)*log(z)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2HalSinSinH {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=sinh(z)*sin(z)+p1
  f2=cos(z)*sinh(z)+sin(z)*cosh(z)
  f3=2*cos(z)*cosh(z)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2HalSinTan {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=sin(z)*tan(z)+p1
  f2=cos(z)*tan(z)+sin(z)*(tan(z)*tan(z)+1)
  f31=2*sin(z)*tan(z)*(tan(z)*tan(z)+1)+cos(z)*(tan(z)*tan(z)+1)
  f32=-sin(z)*tan(z)+cos(z)*(tan(z)*tan(z)+1)
  f3=f31+f32
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2HalSinTanH {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=tanh(z)*sin(z)+p1
  f2=cos(z)*tanh(z)+sin(z)*(1-tanh(z)*tanh(z))
  f31=cos(z)*(1-tanh(z)*tanh(z))-sin(z)*tanh(z)
  f32=-2*sin(z)*tanh(z)*(1-tanh(z)*tanh(z))+cos(z)*(1-tanh(z)*tanh(z))
  f3=f31+f32
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2HalTan^2 {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=tan(z)*tan(z)+p1
  f2=2*tan(z)/(cos(z)*cos(z))
  f3=2*((tan(z)*tan(z)+1)*cos(z)+tan(z)*2*sin(z))/(cos(z)*cos(z)*cos(z))
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2HalTanCosH {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=cosh(z)*tan(z)+p1
  f2=sinh(z)*tan(z)+cosh(z)*(tan(z)*tan(z)+1)
  f31=sinh(z)*(tan(z)*tan(z)+1)+cosh(z)*tan(z)
  f32=2*cosh(z)*tan(z)*(tan(z)*tan(z)+1)+sinh(z)*(tan(z)*tan(z)+1)
  f3=f31+f32
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2HalTanH/Tan (Yaxis) {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, g=p2+1:
  c=z
  f1=(tanh(z)/tan(z))+p1
  f21=(1-tanh(z)*tanh(z))*tan(z)-tanh(z)*(tan(z)*tan(z)+1)
  f22=tan(z)*tan(z)
  f2=f21/f22
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2HalTanH^2 {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=tanh(z)*tanh(z)+p1
  f2=2*sinh(z)/(cosh(z)*cosh(z)*cosh(z))
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2HalTanLog {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=log(z)*tan(z)+p1
  f2=tan(z)/z+log(z)*(tan(z)*tan(z)+1)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2HalTanSinH {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=tan(z)*sinh(z)+p1
  f2=sinh(z)*(tan(z)*tan(z)+1)+cosh(z)*tan(z)
  f31=cosh(z)*(tan(z)*tan(z)+1)+sinh(z)*2*tan(z)*(tan(z)*tan(z)+1)
  f32=sinh(z)*tan(z)+cosh(z)*(tan(z)*tan(z)+1)
  f3=f31+f32
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2HalTanTanH {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=tan(z)*tanh(z)+p1
  f2=(tan(z)*tan(z)+1)*tanh(z)+tan(z)*(1-tanh(z)*tanh(z))
  f31=(tan(z)*tan(z)+1)*(1-tanh(z)*tanh(z))+2*tan(z)*\
      (tan(z)*tan(z)+1)*tanh(z)
  f32=(tan(z)*tan(z)+1)*(1-tanh(z)*tanh(z))-tan(z)*2*tanh(z)*\
      (1-tanh(z)*tanh(z))
  f3=f31+f32
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2Halz^aLog {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, a=p1, g=p2+1:
  c=z
  f1=z^a*log(z)+p2
  f2=a*z^(a-1)*log(z)+z^a/z
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2Halz^aLog2 {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, a=pixel, g=p2+1:
  c=z
  f1=z^a*log(z)+p2
  f2=a*z^(a-1)*log(z)+z^a/z
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2Halz^aLog3 {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, a=p1, g=p2+1:
  c=z
  f1=z^a*log(z)+pixel
  f2=a*z^(a-1)*log(z)+z^a/z
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2Halz^aSin {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, a=p1, g=p2+1:
  c=z
  f1=z^a*sin(z)+p2
  f2=a*z^(a-1)*sin(z)+z^a*cos(z)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2Halz^aSin2 {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, a=pixel, g=p2+1:
  c=z
  f1=z^a*sin(z)+p2
  f2=a*z^(a-1)*sin(z)+z^a*cos(z)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2Halz^aSin3 {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, a=p1, g=p2+1:
  c=z
  f1=z^a*sin(z)+pixel
  f2=a*z^(a-1)*sin(z)+z^a*cos(z)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2Halz^aSin7 {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, a=pixel, g=p2+1:
  c=z
  z=z-(z^a*sin(z)+p2)/(a*z^(a-1)*sin(z)+z^a*cos(z))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2Halz^aTan {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, a=p1, g=p2+1:
  c=z
  f1=z^a*tan(z)+p2
  f2=a*z^(a-1)*sin(z)+z^a*(tan(z)*tan(z)+1)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2Halz^aTan2 {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, a=pixel, g=p2+1:
  c=z
  f1=z^a*tan(z)+p2
  f2=a*z^(a-1)*sin(z)+z^a*(tan(z)*tan(z)+1)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_2Halz^aTan3 {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, a=p1, g=p2+1:
  c=z
  f1=z^a*tan(z)+pixel
  f2=a*z^(a-1)*sin(z)+z^a*(tan(z)*tan(z)+1)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


Peter_3A01 {; Peter Anders anders@physik.hu-berlin.de 
  z=p1, c=pixel:
  z=z*z+c           
  |real(z)|<100  || |imag(z)|<100 
  ;SOURCE: peterman.frm
}


Peter_3A02 {; Peter Anders anders@physik.hu-berlin.de 
  z=p1, c=pixel:
  z=z*z+c           
  abs(real(z))<100  ||  abs(imag(z))<100 
  ;SOURCE: peterman.frm
}


Peter_3A03 {; Peter Anders anders@physik.hu-berlin.de 
  z=p1, c=pixel:
  z=z*z+c           
  |real(z)|<100 && |imag(z)|<100 
  ;SOURCE: peterman.frm
}


Peter_3A04 {; Peter Anders anders@physik.hu-berlin.de 
  z=p1, c=pixel:
  z=z*z+c           
  abs(real(z))<100 && abs(imag(z))<100 
  ;SOURCE: peterman.frm
}


Peter_3A05 {; Peter Anders anders@physik.hu-berlin.de 
  z=p1, c=pixel:
  z=-z*z+c           
  |fn1(z)|<real(p2) 
  ;SOURCE: peterman.frm
}


Peter_3A06 {; Peter Anders anders@physik.hu-berlin.de 
  z=p1, c=pixel:
  z=z*z-c
  |fn1(z)|<real(p2) 
  ;SOURCE: peterman.frm
}


Peter_3A07 {; Peter Anders anders@physik.hu-berlin.de 
  z=p1, c=pixel:
  z=(z+c)*(z+c)
  |fn1(z)|<real(p2) 
  ;SOURCE: peterman.frm
}


Peter_3A08 {; Peter Anders anders@physik.hu-berlin.de 
  z=p1, c=pixel:
  z=(z-c)*(z+c)
  |fn1(z)|<real(p2) 
  ;SOURCE: peterman.frm
}


Peter_3A09 {; Peter Anders anders@physik.hu-berlin.de 
  z=p1, c=pixel:
  z=(z-c)*(z-c)
  |fn1(z)|<real(p2)
  ;SOURCE: peterman.frm
}


Peter_3P02 {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel:
  z=z^z           
  abs(fn1(z))<real(p2)
  ;SOURCE: anders.frm
}


pgad2 {
  z=pixel, x=real(z) :
  n=fn1((z/(p1*x)))+pixel
  m=fn2(z/(p1*(x+whitesq)))+pixel
  z=fn3(m*n)
  |real(z)|<=4
  ;SOURCE: ad4.frm
}


phc+3mandels {; Sylvie Gallet [101324,3444], 1996
              ; NOT A PHC - This is a 24-bit PTC  (Pseudo True-Color)
  scp = scrnpix - 3 * trunc((scrnpix+0.1)/3)
  r = imag(scp) + real(scp)
  r = r - 3 * (r > 2)
  c = r == 0, c1 = p1 * (r == 1)
  c2 = p2 * (r == 2)
  z = c = pixel * (c + c1 + c2) :
  z = z * z + c
  |z| <= 4
  ;SOURCE: 96msg.frm
}


phc+4mandels {; Sylvie Gallet [101324,3444], 1996 
              ; Requires passes=1
  iter = 0, limit = trunc(maxit/2)*(maxit<400) + 200 * (maxit >= 400)
  z = c = pixel * (whitesq + p1 * (whitesq==0))
  c1 = pixel * (p2 * whitesq + p3 * (whitesq==0)) :
   z = z * (iter != limit)
   c = c * (iter < limit) + c1 * (iter >= limit)
   z = z*z + c
   iter = iter + 1
    |z| <= 4
  ;SOURCE: phc.frm
}


phc+4mandels-1 {; Sylvie Gallet [101324,3444], 1996  Requires passes=1
  iter=0, limit=trunc(maxit/2)*(maxit<400)+200*(maxit>=400)
  z = c = pixel * (whitesq + p1 * (whitesq == 0))
  c1 = pixel * (p2 * whitesq + p3 * (whitesq == 0)) :
  z = z * (iter != limit)
  c = c * (iter < limit) + c1 * (iter >= limit)
  z = z*z + c
  iter = iter + 1
  |z| <= 4
  ;SOURCE: 96msg.frm
}


phc+4mandels-2 {; Sylvie Gallet [101324,3444], 1996  Requires passes=1
  row2 = imag(scrnpix) / 2, roweven = row2 == trunc(row2)
  c = whitesq && roweven
  c1 = p1 * (whitesq && roweven == 0)
  c2 = p2 * (whitesq == 0 && roweven )
  c3 = p3 * (whitesq == 0 && roweven == 0)
  z = c = pixel * (c + c1 + c2 + c3) :
  z = z * z + c
  |z| <= 4
  ;SOURCE: 96msg.frm
}


phc+4mandels-3 {; Sylvie Gallet [101324,3444], 1996  Requires passes=1
                ; NOT A PHC - This is a 32-bit PTC  (Pseudo True-Color)
  r = imag(scrnpix) - 2 * trunc(imag(scrnpix)/2)
  c = real(scrnpix) - 4 * trunc(real(scrnpix)/4)
  r = 2 * r + c, r = r - 4 * (r > 3)
  c = r == 0, c1 = p1 * (r == 1)
  c2 = p2 * (r == 2), c3 = p3 * (r == 3)
  z = c = pixel * (c + c1 + c2 + c3) :
  z = z * z + c
  |z| <= 4
  ;SOURCE: 96msg.frm
}


phc+mjn {; Sylvie Gallet [101324,3444], 1996
         ; NOT A PHC - This is a 24-bit PTC  (Pseudo True-Color)
         ; Mandel: z^2 + c , Julia: z^2 + p1 , Newton: z^p2 - 1 = 0
  scp = scrnpix - 3 * trunc((scrnpix+0.1)/3)
  r = imag(scp) + real(scp), r = r - 3 * (r > 2)  ; r = 0, 1, or 2
  z = pixel, b1 = 256, b2 = 0.000001, ex = p2 - 1
  c = pixel * (r==0) + p1 * (r==1) :
  zd = z^ex, zn = zd*z, n = zn - 1, d = p2 * zd
  z = (z*z + c) * (r!=2) + (z - n/d) * (r==2)
  ((|z| <= b1) && (r!=2)) || ((|n| >= b2 ) && (r==2))
  ;SOURCE: 96msg.frm
}


PHC-Frame-Robert {; Ron Barnett [70153,1233], 1996  Requires passes=1
  z=whitesq*(real(pixel)+flip(imag(pixel)*p1))\
    +(whitesq==0)*(p1*real(pixel)+flip(imag(pixel)))
  c=whitesq*(p2+p1*real(pixel)+flip(imag(pixel)))\
    +(whitesq==0)*(p2+real(pixel)+flip(imag(pixel)*p1)):
  z=z*z*z/5+z*z+c 
  |z|<=100
  ;SOURCE: phc.frm
}


PHC-Ikenaga01 {; Ron Barnett [70153,1233], 1996  Requires passes=1
  z=whitesq*(real(pixel)+flip(imag(pixel)*p1))\
    +(whitesq==0)*(p1*real(pixel)+flip(imag(pixel)))
  c=whitesq*(p2+p1*real(pixel)+flip(imag(pixel)))\
    +(whitesq==0)*(p2+real(pixel)+flip(imag(pixel)*p1)):
  z=z*z*z+(c-1)*z-c 
  |z|<=100
  ;SOURCE: phc.frm
}


PHC-Ikenaga02 {; Ron Barnett [70153,1233], 1996  Requires passes=1
  z=whitesq*(real(pixel)+flip(imag(pixel)*p1))\
    +(whitesq==0)*(p1*real(pixel)+flip(imag(pixel)))
  c=whitesq*(p2+p1*real(pixel)+flip(imag(pixel)))\
    +(whitesq==0)*(p2+real(pixel)+flip(imag(pixel)*p1))
  z=conj(z), c=conj(c):
  z=z*z*z+(c-1)*z-c 
  |z|<=100
  ;SOURCE: phc.frm
}


PHC-Ikenaga03 {; Ron Barnett [70153,1233], 1996  Requires passes=1
  z=whitesq*(real(pixel)-flip(imag(pixel)*p1))\
    +(whitesq==0)*(p1*real(pixel)-flip(imag(pixel)))
  c=whitesq*(p2+p1*real(pixel)-flip(imag(pixel)))\
    +(whitesq==0)*(p2+real(pixel)-flip(imag(pixel)*p1)):
  z=z*z*z+(c-1)*z-c 
  |z|<=100
  ;SOURCE: phc.frm
}


PHC-m+j+n-01 {; Sylvie Gallet [101324,3444], 1996 
  ; real(p1) = size of the Mandelbrot set
  ; imag(p1) = rotation angle (degrees): negative = clockwise
  ; p2 = parameter for the Julia set
  ; p3 = exponent for the Newton set
  p0 = p3 - 1, iter = tj = tn = tw = 0, odev = tm = 1
  z = cm = pixel * (whitesq == 0) + (exp(-flip(imag(p1)) * 0.01745329252)) * whitesq  / abs(real(p1)) :
   tw = tw || (|z| >= 16) || (iter == 300)
   z = (z*z+cm) * (tw == 0) + z * tw
   z = z * (iter != 300) + pixel * (iter == 300)
   zp0 = z^p0, d = zp0 * p3, n = zp0 * z - 1
   z = (-n/d+z) * tn + z * tm + (z*z+p2) * tj
   iter = iter + 1, odev = (odev == tw)
   tj = (odev == 0) && (iter > 300)
   tn = odev && (iter > 300)
   tm = (iter <= 300)
    tm || ((|z| < 16) && tj) || ((|n| > 0.000001) && tn)
  ;SOURCE: bj-mjn-1.frm
}


PHC-Manowar01 {; Ron Barnett [70153,1233], 1996  Requires passes=1
  z=z1=whitesq*(real(pixel)+flip(imag(pixel)*p1))\
    +(whitesq==0)*(p1*real(pixel)+flip(imag(pixel)))
  c=whitesq*(p2+p1*real(pixel)+flip(imag(pixel)))\
    +(whitesq==0)*(p2+real(pixel)+flip(imag(pixel)*p1)):
  z=z*z+z1+c
  z1=z 
  |z|<=100
  ;SOURCE: phc.frm
}


PHC-PHOENIX {; Ron Barnett, 1996        
             ; Typo in bailout corrected, G. Martin 6/98
  z = (whitesq==0)*flip(pixel)+whitesq*(pixel+p3)
  x1 = 0
  y = 0:
  x1 = z*z + P1 + P2*y
  y = (whitesq==0)*z+whitesq*flip(z)
  z = x1
  |z|<= 50
  ;SOURCE: reb008.frm
}


PHC-Spider01 {; Ron Barnett [70153,1233], 1996  Requires passes=1
  z=whitesq*(real(pixel)+flip(imag(pixel)*p1))\
    +(whitesq==0)*(p1*real(pixel)+flip(imag(pixel)))
  c=whitesq*(p2+p1*real(pixel)+flip(imag(pixel)))\
    +(whitesq==0)*(p2+real(pixel)+flip(imag(pixel)*p1)):
  z=z*z+c
  c=c/2+z 
  |z|<=100
  ;SOURCE: phc.frm
}


phc_4m_A {; overlay four Mandels with different initializations
          ; and bailout tests
          ; Isn't it terrific???
  cr = real(scrnpix) + 2*imag(scrnpix)
  r = cr - 4 * trunc(cr / 4)
  c0 = sin(pixel) * (r == 0)
  c1 = pixel * (r == 1)
  c2 = 1/pixel * (r == 2)
  c3 = -pixel * (r == 3)
  z = c = c0 + c1 + c2 + c3 :
   z = z*z + c
   test_0 = |real(z)| <= 4  &&  r == 0
   test_1 = |z| <= 4  &&  r == 1
   test_2 = |imag(z)| <= 4  &&  r == 2
   test_3 = |real(z)+imag(z)| <= 4  &&  r == 3
    test_0 || test_1 || test_2 || test_3
  ;SOURCE: phctutor.frm
}


phc_4m_B {; overlay four Mandels with different initializations
          ; and bailout tests
          ; Isn't it terrific???
  cr = real(scrnpix) + 2*imag(scrnpix)
  r = cr - 4 * trunc(cr / 4)
  c0 = sin(pixel) * (r == 0)
  c2 = 1/pixel * (r == 2)
  z = c = c0 + c2 + pixel * ((r == 1) - (r == 3)) :
   z = z*z + c
   test_0 = |real(z)| <= 4  &&  r == 0
   test_1 = |z| <= 4  &&  r == 1
   test_2 = |imag(z)| <= 4  &&  r == 2
   test_3 = |real(z)+imag(z)| <= 4  &&  r == 3
    test_0 || test_1 || test_2 || test_3
  ;SOURCE: phctutor.frm
}


phc_map {; Sylvie Gallet [101324,3444], 1996  Requires passes=1
   ; requires maxiter = 256, inside = 0 and outside = iter
  d = scrnmax / 256
  z = real(scrnpix) / real(d) * whitesq + \
      imag(scrnpix) / imag(d) * (whitesq == 0)
  z = 257 * (z < 1) + z * (z >= 1) :
   z = z - 1
    z >= 1
  ;SOURCE: phc.frm
}


phc_mj {; overlay the Mandel set of z^2 + c with
        ; the Julia set of z^2 + (-0.75,0.1234)
        ; Modified for if..else logic, April 1997
   z = pixel
   IF (whitesq)
      c = (-0.75,0.1234)
   ELSE
      c = pixel
   ENDIF
   :
   z = z*z + c
   |z| <= 4
   ;SOURCE: phctutor.frm
}


phc_mn_A {; overlay the Mandel set of z^2 + c with the Julia
          ; set of Newton's method applied to z^3 - 1 = 0
          ; Modified for if..else logic, April 1997
   z = pixel :
   IF (whitesq)
      n = z^3 - 1, d = 3*z^2, z = z - n/d
      PHC_bailout = |n| >= 0.000001
   ELSE
      z = z*z + pixel, PHC_bailout = |z| <= 4
   ENDIF
   PHC_bailout
   ;SOURCE: phctutor.frm
}


phc_mn_B {; overlay the Mandel set of z^2 + c with the Julia
          ; set of Newton's method applied to z^3 - 1 = 0
          ; Modified for if..else logic, April 1997
  z = pixel :
  IF (whitesq)
    z2 = z*z, n = z2*z - 1, d = 3*z2, z = z - n/d
    PHC_bailout = |n| >= 0.000001
  ELSE
    z = z*z + pixel, PHC_bailout = |z| <= 4
  ENDIF
  PHC_bailout
  ;SOURCE: phctutor.frm
}


phcab2 {
  z=(pixel)
  t=fn2((whitesqr)+(z-realz)):
  z=(1/(fn1(whitesq))+(z*fn3(t)))*fn4(t^z-p1)/p1
  |z|>=4
  ;SOURCE: ad3.frm
}


phcab2z {
  z=(pixel):
  p=fn2((whitesqr)/sin(1/z))
  u=fn3(p-z)+whitesq
  z=((fn1(u)/p2))*((whitesq)*(z-1))
  |z|>=4
  ;SOURCE: ad3.frm
}


phcab3 {
  z=(pixel):
  t=1-(z*(whitesq==0)*(p2))
  u=fn1(t-(fn3(z+1)))*fn2(z)
  z=((fn1(u)+p2))+(pixel/p3)
  |z|>=4
  ;SOURCE: ad3.frm
}


phcad2 {
  z=pixel:
  t=1-(z*(whitesq==0)*(p2))
  z=fn1(t-(fn3(z+1)))*fn2(z)
  |(z)|>=4
  ;SOURCE: ad3.frm
}


phcad3 {
  z=pixel
  t=(whitesq+(p1)+(p2)*(whitesq==0)):
  z=fn1(t-(fn3(z+1)))*fn2(z)-1
  |real(z)|>=4
  ;SOURCE: ad3.frm
}


phcbbb {
  z=pixel:
  m=cotan(z*real(p1+whitesq))*fn2(((pixel)))
  z=fn1((m)+fn3(z))
  |z|<=4
  ;SOURCE: ad4.frm
}


phcbbb1 {
  z=pixel:
  m=fn4(z*whitesq)*fn2((z-1))
  z=fn1(real(z-1))+fn3(m*(.6,1.1))
  |z|<=4
  ;SOURCE: ad4.frm
}


phcbbb3 {
  z=pixel, x=fn3(abs((z)-real(z))):
  m=cotan(x*real(z))*fn2((z))
  z=fn1(real(z)*whitesq)+fn3(m)
  |z|<=4
  ;SOURCE: ad4.frm
}


phcdd4 {
  z=pixel:
  z=z+pixel*(whitesq==0)
  t=(fn3(z)+whitesq)^P1
  z=fn2(cos(1-z)+sin(1/z))*1-fn1(1/z*sin(t)+fn4(t))
  |z|<=4  
  ;SOURCE: ad4.frm
}


phcjx22y {
  z=pixel:
  z=fn1(1/z)*whitesq
  t=(z*p2)+pixel
  m=(fn1(sin(t)+cos(u)))
  z=(fn4(m)+fn3(m))/fn2(t)+whitesq
  |z|>=p3
  ;SOURCE: ad978-1.frm
}


phcsary6 {; from spacemandel_phc by Damion presogna, 11/18/96
          ; modified by alex dukay 11/22/96
  z=pixel, r=(pixel*whitesq):
  r=fn1(1/z)+r 
  m=fn2((1-(z*z))*imag(flip(z)))
  z=(m*(whitesq)+(r-1))
  |z|<4||2<|r|
  ;SOURCE: ad4.frm
}


phcsary7 {; from spacemandel_phc by Damion presogna, 11/18/96
          ; modified by alex dukay 11/22/96
  z=pixel, r=(pixel*whitesq):
  r=fn1(1/z)+r 
  m=fn2((1-(z*z))*imag(flip(z)))
  z=(m*(whitesq))+(r-1)
  |z|<=4
  ;SOURCE: ad4.frm
}


phcx01c {; Jim Deutch/modified by Alex Dukay.july/96
  z=pixel, c=(whitesq-1)^(pixel/fn4(tan(z-1))):
  z=(p1*(fn1(c+z)))+(fn2(z)/whitesq)
  |z|<=4
  ;SOURCE: ad4.frm
}


phcx07 {
  z=pixel, x=fn1(z)+log(tan(z)):
  z=fn2(z+x)/(fn3(whitesq+p1/2)*z)
  |z|<=4
  ;SOURCE: ad5.frm
}


phcx0x1 {
  z=pixel, t=whitesq*((fn1(tan(real(z+tan(real(z))))))):
  z=(fn2(z-t))
  |z|<=4
  ;SOURCE: ad4.frm
}


phcxa8 {; Added variable "newpixel". G. Martin 6/29/99
  countreset = (count < 1024)
  count = count * countreset
  evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
  oddeven = (evenodd < 1)
  count = count + 1
  newpixel = evenodd * pixel + oddeven * -pixel
  z = newpixel:
  x = flip(newpixel + fn1(p1/z - z/(p2+1)))
  z = x*z + p3
  |z| >=4
  ;SOURCE: ad3.frm
}


phcxa9 {; Added variable "newpixel". G. Martin 6/29/99
  countreset = (count < 1024)
  count = count * countreset
  evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
  oddeven = (evenodd < 1)
  count = count + 1
  newpixel = evenodd * pixel + oddeven * -pixel
  z=real(newpixel)+flip(imag(newpixel))
  c=fn1(p2+real(p3)+flip(imag(p3)*p1)):
  z=fn2(z*(c-1))*fn3(z-c)
  |z|>=4
  ;SOURCE: ad3.frm
}


phcxaxa {; Elimated superfluous variable "e" 5/7/99. G. Martin
  z=pixel:
  d=(.4), k=sin(.22+d)+whitesq
  ko=sinh(k*real(p2)), x=fn1(ko*k)*fn2(k*ko)
  f=(z+x)/p3
  z=((fn3(f-ko)*z)+fn4(f-x))+log(f)
  z>=4
  ;SOURCE: ad4.frm
}


phcxaxx {
  z=pixel:
  t=(.4), n=(.22), o=sin(t+n)+whitesq
  k=sinh(o*real(p2)), x=fn1(k*o)*fn2(k*o)
  f=(z+x)/p3
  z=((fn3(f-k)*z)+fn4(f-x))+log(f)
  z>=4
  ;SOURCE: ad4.frm
}


phcxxy5 {
  z=pixel, n=conj(flip(z-1)^2), t=(n*whitesq):
  z=(fn2(n)+fn2(z))
  z=fn1(t-1)+fn3((1-z))
  |z|<=4
  ;SOURCE: ad4.frm
}


phcxyy6 {
  z=pixel, t=conj(real(whitesq))+1:
  z=fn1(z+t)*fn2(1/fn3(t))
  |z|>=4
  ;SOURCE: ad5.frm
}


phcxyz7 {
  z=whitesq+pixel, t=pixel:
  z=(fn1(t-1)-real(fn2(z)))+fn3(t+whitesq/t)-1
  |z|>=4
  ;SOURCE: ad5.frm
}


phcyy9 {; Jim Deutch/modified by Alex Dukay.july/96
  z=whitesq
  c=pixel:
  z=(p1*(fn1(z-1)))-(fn2(z*z)-c)
  |c|<4
  ;SOURCE: ad4.frm
}


pheon2 (XAXIS) {
   ; A square root mapping of the pheonix. Interesting because of the
   ; discontinuites introduced in the folded symmetry.
  z = pixel^.5, zp1 = zp2 = (0,0):
  temp = z
  z  = z*z - zp2
  zp2 = zp1
  zp1 = conj(temp) 
  |zp1| <= 4 
  ;SOURCE: noel.frm
}


pheonabs (XAXIS) {
   ; A pheonix variant
  z = pixel, zp1 = zp2 = (0,0):
  temp = z
  z  = z*z - abs(zp2)
  zp2 = zp1
  zp1 = conj(temp)
  |zp1| <= 4 
  ;SOURCE: noel.frm
}


pheonix (XAXIS) {
   ; Add conjugation and produce a great fractal even if it's spelt wrong.
  z = pixel, zp1 = zp2 = (0,0):
  temp = z
  z  = z*z - zp2
  zp2 = zp1
  zp1 = conj(temp)
  |zp1| <= 4 
  ;SOURCE: noel.frm
}


pheot {
   ; The ht flavour of the pheonix fractal gives some nice escher like
   ; fractals
  z = pixel, zp1 = zp2 = (0,0), huge=1.0e32:
  temp = z
  z  = z*z - zp2
  zp2 = zp1
  zp1 = p1/conj(temp)
  (|zp1| <= 64) && (|z| <= huge) 
  ;SOURCE: noel.frm
}


pheot1 {
   ; The ht flavour of the pheonix fractal gives some nice escher like
   ; fractals
  z = pixel, zp1 = zp2 = (0,0), bail=real(p2), huge=1.0e32:
  temp = z
  z  = z*z - zp2
  zp2 = zp1
  zp1 = p1/conj(temp)
  (|zp1| <= bail) && (|z| <= huge) 
  ;SOURCE: noel.frm
}


phfx2 {
  z=pixel, l=whitesq+(z*p1):
  a=1+(fn1(z-1))/tan(l)-fn4((z+2)*p2)
  b=fn2(fn1(l))+log(l)-(fn3(l*p2)*z)/log(z)
  z=((fn1(a))*1/(z))*fn3((b)*p2)-cotan(log(z))+whitesq
  |z|<p3
  ;SOURCE: ad5.frm
}


phi01 (xyaxis) {; try inside=maxiter and outside=imag on these
  z = ((sqrt 5 + 1)/2)/pixel:
  z =  z*z + pixel*((sqrt 5 + 1)/2)
  |z| <= 4
  ;SOURCE: formulas.frm
}


phi02 (xyaxis) {; try inside=maxiter and outside=imag on these
  c = pixel 
  z = ((sqrt 5 + 1)/2):
  z =  z*z + pixel*((sqrt 5 + 1)/2) + c
  |z| <= 4
  ;SOURCE: formulas.frm
}


phi03 (xyaxis) {; try inside=maxiter and outside=imag on these
  z = ((sqrt 5 + 1)/2)/pixel:
  z =  z*z*z + pixel*((sqrt 5 + 1)/2)
  |z| <= 4
  ;SOURCE: formulas.frm
}


phi04 (xyaxis) {; try inside=maxiter and outside=imag on these
  z = ((sqrt 5 + 1)/2)/pixel:
  z =  z*z + pixel*((sqrt 5 + 1)/2)/((sqrt 5 - 1)/2)
  |z| <= 4
  ;SOURCE: formulas.frm
}


phif0 {
  z=pixel, it=22/7:
  IF(itirate)
    z=(fn1(z-1)+whitesq)+flip(pixel)>it+p1
  ELSE
    z=(fn2(z-whitesq)*p2)/cos(pixel)+((iter)+p1)
  ENDIF
  z=(fn3(z+whitesq)/p3)+fn4(tan(z)-p2)
   |z|<.000001
  ;SOURCE: ad5.frm
}


phif4 {
  z=pixel, it=fn2(z)*((22/7)+p1):
  IF(itirate)
    z=(fn1(z-1)+whitesq)+flip(pixel)>fn3(it*p2)
  ELSE
    z=((fn2(z-whitesq)*p2)/cos(pixel))+((it)*p1)
  ENDIF
  z=(fn3(z+whitesq)/p3)+(fn4(tan(z)-p2))
  |z|<4
  ;SOURCE: ad5.frm
}


phif5 {
  z=pixel, i=real(z+whitesq):
  IF(itirate)
    z=(fn1(z-1)+whitesq)+(pixel)>(z*(i*p1))
  ELSE
    z=(fn2(z+whitesq)*p2)/cos(pixel)+((i*p1)/2)
  ENDIF
  z=(fn3(z+whitesq)/p3)+fn4(tan(z-1)-p2)/whitesq
  |z|<4
  ;SOURCE: ad5.frm
}


phnax4 {
  z=pixel, t=p1:
  r=fn1(log(log(z)))
  IF ((z*p2)>(r*p1))
    z=fn3((r+whitesq)-1)*(t+z)
  ENDIF
  z=fn4(r+whitesq)*fn3(z+p2)/p3
  |z|<4
  ;SOURCE: ad978-1.frm
}


Phoenix {; Ron Barnett, 1993
         ; This is an old formula of mine which
         ; predates the current formuala in Fractint
         ; The Fractint formula won't generate the
         ; "birds" par in REB006.PAR. This one will.
  z = flip(pixel)
  x1 = 0
  y = 0:
  x1 = z*z + P1 + P2*y
  y = z
  z = x1 
  |z|<= 50
  ;SOURCE: reb006.frm
}


Phoenix2-1 {
   ; This is the Phoenix formula as described by 
   ; Shigehiro Ushiki.  The other formulas come from
   ; Fractal programming in C.
   ; (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = pixel
  zold = (0.0, 0.0):
  zt = z * z + 0.56667 - 0.5 * zold
  zold = z
  z = zt
  |z| < 4
  ;SOURCE: phoenix2.frm
}


Phoenix2-2 {
   ; (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = pixel
  zold = (0.0, 0.0):
  zt = z * z + 0.288732 + 0.510029 * zold
  zold = z
  z = zt
  |z| < 4
  ;SOURCE: phoenix2.frm
}


Phoenix2-3 {
   ; (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = pixel
  zold = (0.0, 0.0):
  zt = z * z + 0.356338 - 1.209169 * zold
  zold = z
  z = zt
  |z| < 4
  ;SOURCE: phoenix2.frm
}


Phoenix2-4 {
   ; (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = pixel
  zold = (0.0, 0.0):
  zt = z * z - 0.550704 - 1.255014 * zold
  zold = z
  z = zt
  |z| < 4
  ;SOURCE: phoenix2.frm
}


Phoenix_Atan {; Copyright (c) Paul W. Carlson, 1998
    ; Parameters:
    ;   p1       = coordinates of the Julia set
    ;   real(p2) = bailout value for real(w)
    ;   imag(p2)   not used
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
  prev_w = y = pixel
  c = p1
  z = bailout = iter = range_num = 0
  num_ranges = real(p3)
  colors_in_range = imag(p3):
    ;****************************************************
  w = prev_w * prev_w - 0.5 * prev_w + c
  b = w * w - 0.5 * y + c
  y = w
  w = b
    ;****************************************************
  IF (abs(real(w)) > real(p2))
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
  ;SOURCE: 98msg.frm
}


Phoenix_Function {; Copyright (c) Paul W. Carlson, 1998
    ;   p1       = coordinates of the Julia set
    ;   real(p2) = width factor
    ;   imag(p2) = angle multiplier
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
  w = y = pixel
  c = p1
  z = bailout = iter = range_num = 0
  width = real(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  index_factor = (colors_in_range - 1) / width
  :
  w = w * w - 0.5 * w + c
  b = w * w - 0.5 * y + c
  y = w
  w = b
    ;
  ang = imag(p2) * atan(imag(w) / real(w))
  ang = ang * ang + c
  ang = fn1(1 - ang) / ang
  dist = abs(|w| - |ang|)
  IF (dist < width && iter > 1)
    z = index_factor * dist + range_num * colors_in_range + 1
    bailout = 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < 100
  ;SOURCE: 98msg.frm
}


phoenix_j (XAXIS) {; Use P1=0.56667/-0.5   &   .1/.8
  x=real(pixel), y=imag(pixel), z=nx=ny=x1=x2=y1=y2=0:
  x2 = sqr(x), y2 = sqr(y)
  x1 = x2 - y2 + real(p1) + imag(p1) * nx
  y1 = 2 * x * y + imag(p1) * ny
  nx=x, ny=y, x=x1, y=y1, z=nx + flip(ny)
  |z| <= 4
  ;SOURCE: flip.frm
}


phoenix_m {; Mandelbrot style map of the Phoenix curves
  z=x=y=nx=ny=x1=y1=x2=y2=0:
  x2 = sqr(x), y2 = sqr(y)
  x1 = x2 - y2 + real(pixel) + imag(pixel) * nx
  y1 = 2 * x * y + imag(pixel) * ny
  nx=x, ny=y, x=x1, y=y1, z=x + flip(y)
  |z| <= 4
  ;SOURCE: fractint.frm
}


PhonyMandelJ {
  z=pixel
  f=15/8:
  k=z*z
  z=(k*k/4-k*z*f/3-k/2+f*z-.25)*p1
  |z|<=127
  ;SOURCE: pderb.frm
}


PhonyMandelM {
  c=pixel
  f=15/8
  z=1:
  k=z*z
  z=(k*k/4-k*z*f/3-k/2+f*z-.25)*c
  |z|<=127
  ;SOURCE: pderb.frm
}


phxx {
  z=pixel, b=iter+1, iter=real(z)+p1
  c=(fn1(z+b)+whitesq), d=(fn4(z+p1)*p2):
  z=fn2(c)+fn3(c-z)
  |z|<4
  ;SOURCE: ad5.frm
}


picasso {; Giuseppe Zito
  z = pixel
  c2 = -0.39160001
  c4 = -0.030243
  c7 = -0.49485701
  c11 = -0.59975803
  c13 = 0.21419001
  d0 = 0.016549
  d7 = 0.025483
  d9 = -0.81212801
  d10 = 0.247522
  d11 = -0.99330801
  d12 = 0.070017
  d20 = -0.039135
  : 
  x = real(z), y = imag(z)
  s0 = x
  s0 = s0 -x
  s0 = s0 /c2
  s0 = s0 /y
  s0 = s0 +c4
  s0 = s0 -x
  s0 = s0 /x
  s0 = s0 -c7
  s0 = s0 -x
  s0 = s0 *c11
  s0 = s0 +c13
  s0 = s0 +y
  s0 = s0 -x
  newx = s0 
  s0 =d0
  s0 = s0 -y
  s0 = s0 -x
  s0 = s0 +y
  s1 =d7
  s1 = s1 *y
  s1 = s1 *d9
  s1 = s1 *d10
  s1 = s1 -d11
  s2 =d12
  s2 = s2 *x
  s1 = s1 *s2
  s1 = s1 +y
  s1 = s1 -y
  s0 = s0 *s1
  s1 = y
  s0 = s0 +s1
  s0 = s0 *d20
  s0 = s0 -y
  s0 = s0 -x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


picassof {; Giuseppe Zito
  z = pixel
  c4 = -0.768977
  d2 = -0.364262
  d12 = 0.579906
  : 
  x = real(z), y = imag(z)
  s0 = y
  s0 = s0 *x
  s0 = s0 -y
  s0 = s0 +c4
  newx = s0 
  s0 = x
  s0 = s0 *d2
  s0 = s0 +y
  s0 = s0 *y
  s0 = s0 *x
  s0 = s0 +y
  s0 = s0 /y
  s0 = s0 -d12
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


pienza {; Giuseppe Zito
  z = pixel
  c2 = -0.3916
  c4 = -0.030243
  c7 = -0.494857
  c11 = -0.599758
  c13 = 0.21419
  d0 = 0.016549
  : 
  x = real(z), y = imag(z)
  s0 = x
  s0 = s0 -x
  s0 = s0 /c2
  s0 = s0 /y
  s0 = s0 +c4
  s0 = s0 -x
  s0 = s0 /x
  s0 = s0 -c7
  s0 = s0 -x
  s0 = s0 *c11
  s0 = s0 +c13
  s0 = s0 +y
  s0 = s0 -x
  newx = s0 
  s0 =d0
  s0 = s0 -y
  s0 = s0 -x
  s0 = s0 +y
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


pif16 {
  z=pixel:
  z1=(z+whitesq+(fn1(z)/(fn2(z))^p2)/p1)
  z2=(z+whitesq)*(fn1(1/z)^p2)/p3
  z=fn3((z2+1)-fn4(z2))*1/(fn4(z2)+fn3(z1))
  |z|<4
  ;SOURCE: ad5.frm
}


pif17 {
  z=pixel:
  z1=(fn1(z-1))
  z2=(fn3(z1+fn4(z-p1/(z-1)))/fn4((z2)-p2/fn3(z1)))
  z=fn3((z1+z)-fn4(z2-1))*1-fn4((z2)+fn3(z1)-whitesq)
  |z|<4
  ;SOURCE: ad6.frm
}


pif171 {
  z=pixel:
  z1=fn1(z*p3)/p1
  z2=fn2(z)*p2/p1
  z3=fn3(z1)+fn4(z2)
  z=(z3+whitesq)+(z)
  |z|<4
  ;SOURCE: ad5.frm
}


pif172 {
  z=pixel:
  z1=fn1(z*p3)/p1
  z2=fn2(z)*p2/p1
  z3=fn3(z1)+fn4(z2)
  z=(z3+whitesq)+(z)
  |z|<4
  ;SOURCE: ad5.frm
}


pif9 {
  z=pixel:
  z1=((fn1(z-1)*fn2(z))+p3)/p3
  z2=((fn2(z+1)*fn1(z))+p3)/p3
  z=real(fn3((z1+whitesq)+fn4(z2)))*fn4((z2+whitesq)+fn3(z1))
  |z|<4
  ;SOURCE: ad5.frm
}


Pig_Tails {
  z = c = pixel:
  z = z + p1
  q = fn2(z)^e 
  r = fn1(z) * q
  z = tan(r / q) * z + c 
  |z| < 4
  ;SOURCE: big_pig.frm
}


Pigalleto {
  z = c = pixel:
  r = fn1((1/z) / z) + p1 
  z = fn2(z / r)
  z = z + c
  |z| < 4 + p2
  ;SOURCE: big_pig.frm
}


Piglet {
  z = c = pixel, p = pixel + p1:
  z = z * z * p
  r = tan((1/z) / c)  
  z = fn2(z) + fn1(r)
  |z| < 4 + p2
  ;SOURCE: big_pig.frm
}


Pigs {
  z = pixel:
  r = z * fn1(z)^e   
  z = (fn2(z) / r) + p1
  |z| < 4
  ;SOURCE: big_pig.frm
}


Pilsner {; Revised for Fractint v20 by G. Martin  
  z = 0, c = pixel, ppix = pixel^(-1) + p1:
  z = (z*1/ppix) * fn1(ppix)
  z = fn2(z) + c
  |z| < 4
  ;SOURCE: korfu.frm
}


Pimpernel {
  z = pixel:
  z = cos(z^2)/z
  ;SOURCE: welner.frm
}


Pimpernel2 {
  z = pixel:
  z = cos(z^2)/z^2
  ;SOURCE: welner.frm
}


Pimpernel3 {
  z = pixel:
  z = cos(cos(z^2)/z)
  ;SOURCE: welner.frm
}


Pimpernel4 {
  z = pixel:
  z = cos(z^2)/sin(z)
  ;SOURCE: welner.frm
}


piram {; Giuseppe Zito
  z = pixel
  c3 = 0.184679
  d3 = -0.462973
  d5 = -0.906456
  d8 = -0.145095
  : 
  x = real(z), y = imag(z)
  s0 = y
  s0 = s0 +x
  s0 = s0 *y
  s0 = s0 -c3
  newx = s0 
  s0 = y
  s0 = s0 +x
  s0 = s0 *d3
  s0 = s0 *x
  s0 = s0 -d5
  s0 = s0 -x
  s0 = s0 -d8
  s0 = s0 +x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


pixey00 (XAXIS_NOPARM) {     
  z = pixel + p1:
  z = z*z + pixel
  z <= 4 
  ;SOURCE: pixey.frm
}


pixey01 {     
  z = pixel + p1:
  z = z^2.71828182845905 + pixel
  z <= 4 
  ;SOURCE: pixey.frm
}


pixey02 {; Added variable "newpixel". G. Martin 6/29/99     
  newpixel = pixel
  z = newpixel + p1, c = newpixel:
  temp = z
  z = z*z + newpixel + c
  newpixel = temp
  z <= 4 
  ;SOURCE: pixey.frm
}


pixey03 {
  z = pixel
  x = real(z + p1), y = imag(z + p2):
  x = fn1(x*x - fn2(y*y))
  y = fn3(y*y - fn4(x*x))
  z = x*x + y*y 
  |z| <= 4
  ;SOURCE: pixey.frm
}


pixey04 {
  z = pixel + p1 
  c = pixel:
  z = fn1(z*2.71828182845905) + fn2(c)  
  |z| <= 16
  ;SOURCE: pixey.frm
}


pixey05 {
  z = pixel + p1 
  c = pixel:
  z = fn1(z^2.71828182845905) + fn2(c)  
  |z| <= 16
  ;SOURCE: pixey.frm
}


pixey06 {
  z = pixel + p1 
  c = pixel:
  z = fn1(z)^2.71828182845905 + fn2(c)  
  |z| <= 16
  ;SOURCE: pixey.frm
}


pixey07 {
  z = pixel + p1 
  c = pixel:
  z = fn1(z-1/pixel)^2.71828182845905 + fn2(c)  
  |z| <= 16
  ;SOURCE: pixey.frm
}


pixey08 { 
  z = pixel + p1
  c = pixel - fn1(z):
  c = pixel + c/z
  z = c - z*pixel
  |z| <=16
  ;SOURCE: pixey.frm
}


pixey09 { 
  z = pixel + p1
  c = fn1(pixel - fn2(z)):
  z = c - z*pixel
  |z| <=16
  ;SOURCE: pixey.frm
}


pixey10 {
  z = fn1(pixel + p1)
  c = fn2(pixel - sqr(z)):
  z = c - z*pixel
  |z| <=16
  ;SOURCE: pixey.frm
}


pixey11 { 
  z = fn1(pixel + p1)
  c = fn2(pixel - sqr(z)):
  z = (c - z*pixel)/(pixel - c*c)
  |z| <=16
  ;SOURCE: pixey.frm
}


pixey12 { 
  z =fn1(pixel + p1)
  c =fn2(pixel - sqr(z)):
  z =c + z^2.71828182845905 - 1
  |z| <=16
  ;SOURCE: pixey.frm
}


pixey13 { 
  z = fn1(pixel + p1)
  c = fn2(pixel - sqr(z)):
  z = z^2.71828182845905 + c
  |z| <=16
  ;SOURCE: pixey.frm
}


PixJack {
   z = pixel, c = p1:
   z = z*z + c * pixel
   z <= 4 
   ;SOURCE: orman3.frm
}


PixJack2 {
   z = pixel, c = p1, d=c/pixel:
   z = z*z + c + d
   z <= 4 
   ;SOURCE: orman3.frm
}


PixNwt { 
  z = pixel, Root = fn1(p2 * pixel):
  z = ((p1-1) * z^p1 + Root) / (p1 * z^(p1-1))
  .001 <= |z^p1 - Root|
  ;SOURCE: crazynwt.frm
}


PixNwt1/ { 
  z = pixel, Root = 1/(2*fn1(p2 * pixel)) + 1/(2*fn2(p2 * pixel)):
  z = ((p1-1) * z^p1 + Root) / (p1 * z^(p1-1))
  .001 <= |z^p1 - Root|
  ;SOURCE: crazynwt.frm
}


PixNwtpwr { 
  z = pixel, Root = pixel^p2 :
  z = ((p1-1) * z^p1 + Root) / (p1 * z^(p1-1))
  .001 <= |z^p1 - Root|
  ;SOURCE: crazynwt.frm
}


pn02 {
  z=pixel, t=(1-conj(z))+(1-fn4(1/z)), u=flip(conj((z-1)))
  v=tan((t*u)):
  l=(fn1(v-t)+fn2(v+u))-(t+u)/whitesq
  z=(fn3(l)+fn4(l+(-whitesq)))
  |z|<=4
  ;SOURCE: ad4.frm
}


pn1 {
  z=pixel:
  a=cotan(z)^p2, b=z*(fn1(z/p3))
  IF (fn1(a)>fn2(b/p2)/p3)
    z1=(fn3(fn1(z)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ENDIF
  IF (fn1(b)/p2>fn2(a/p3))
    z1=(fn3(fn1(z)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ENDIF
  z=(fn3(fn1(z1+(a)+whitesq)*fn2(b*(z/a))))
  |z|<4
  ;SOURCE: ad7.frm
}


pn10zyy {
  z=pixel:
  d=(fn2(z-1)*(fn1(z+whitesq)))/p1
  z=fn3(z*fn4(d))+whitesq
  |z|<4
  ;SOURCE: ad978-1.frm
}


pn12zy {
  z=pixel:
  d=(fn2(z-1)*(fn1(z+whitesq)))/p1
  z=(fn3(z/((d/p2)))*fn4(pixel))+whitesq
  |z|<4
  ;SOURCE: ad978-1.frm
}


pn3 {
  z=((imag(flip(pixel))))+flip(imag(pixel)):
  a=cotan(z)^p2, b=z*(fn1(z/p3))
  IF (fn1(a)<=fn2(b/p2)/p3)
    z1=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ENDIF
  IF (fn1(b)/p2<=fn2(a/p3))
    z1=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ENDIF
  z=(fn3(fn1(z1+(a)+whitesq)*fn2(b*(z/a))))
  |z|<4
  ;SOURCE: ad7.frm
}


pn8z {
  z=pixel:
  d=((z-1)*(fn1(1/pixel)))/p1
  z=(fn3(z*(1-(d/p2)))*fn4(pixel))+whitesq
  |z|<4
  ;SOURCE: ad978-1.frm
}


poem {; created using FracText 1.0 à6 - by Jan Maarten van der Valk
      ; 100256.3721@compuserve.com
      ; 'periodicity=0' and 'passes=1' recommended
      ; Added variable "newpixel". G. Martin 6/27/99
  x=real(scrnpix)/real(scrnmax), y=(imag(scrnmax)-imag(scrnpix))/real\
  (scrnmax), z=x+flip(y)
  chrI1 = x>0.03&&x<0.0487
  xCW=4*x
  chrW3 = y<xCW-0.0188&&y>xCW-0.0959||(y>-xCW+1.26547&&y<-xCW+1.34257\
  )&&y<0.62333||(y>-xCW+1.1188&&y<-xCW+1.1959)||(y<xCW-0.16547&&y>xCW\
  -0.24257)
  chra4 = abs(cabs(z+(-0.26194,-0.6072))-0.01595)<0.00935&&x<0.26194|\
  |(abs(cabs(z+(-0.27294,-0.6072))-0.01595)<0.00935&&x>0.27294)&&y>0.\
  6072||((abs(cabs(z+(-0.26194,-0.5753))-0.01595)<0.00935&&x<0.26194)\
  ||(abs(cabs(z+(-0.27294,-0.5753))-0.01595)<0.00935&&x>0.27294))||(x\
  >0.26194&&x<0.27294&&(y<0.5687||(y>0.6138&&y<0.6325)||(y>0.5819&&y<\
  0.6006)))||(x>0.27954&&x<0.29824&&y<0.6072)
  chrn5 = x>0.30924&&x<0.32794&&y<0.6325||(abs(cabs(z+(-0.3397,-0.602\
  04))-0.02111)<0.00935&&y>0.60204)||(x>0.35145&&x<0.37015&&y<0.60204\
  )
  chrd6 = x>0.44303&&x<0.46173||(abs(cabs(z+(-0.4224,-0.59125))-0.031\
  9)<0.00935&&x<0.44303)
  chre7 = abs(cabs(z+(-0.51398,-0.59125))-0.0319)<0.00935&&(x<0.51398\
  ||y>0.58813||y<0.57411)||(y>0.58813&&y<0.60683&&x>0.48208&&x<0.5458\
  8)
  chrr8 = x>0.56623&&x<0.58493&&y<0.6325||(abs(cabs(z+(-0.59669,-0.60\
  204))-0.02111)<0.00935&&y>0.60204)
  chre9 = abs(cabs(z+(-0.67939,-0.59125))-0.0319)<0.00935&&(x<0.67939\
  ||y>0.58813||y<0.57411)||(y>0.58813&&y<0.60683&&x>0.64749&&x<0.7112\
  9)
  chrd10 = x>0.79352&&x<0.81222||(abs(cabs(z+(-0.77289,-0.59125))-0.0\
  319)<0.00935&&x<0.79352)
  test1 = chrI1||chrW3||chra4||chrn5||chrd6||chre7||chrr8||chre9||chr\
  d10&&y>0.55&&y<0.66
  chrI11 = x>0.04&&x<0.0587
  chrW13 = y<xCW-0.0713&&y>xCW-0.1484||(y>-xCW+1.29297&&y<-xCW+1.3700\
  7)&&y<0.61083||(y>-xCW+1.1463&&y<-xCW+1.2234)||(y<xCW-0.21797&&y>xC\
  W-0.29507)
  chra14 = abs(cabs(z+(-0.27194,-0.5947))-0.01595)<0.00935&&x<0.27194\
  ||(abs(cabs(z+(-0.28294,-0.5947))-0.01595)<0.00935&&x>0.28294)&&y>0\
  .5947||((abs(cabs(z+(-0.27194,-0.5628))-0.01595)<0.00935&&x<0.27194\
  )||(abs(cabs(z+(-0.28294,-0.5628))-0.01595)<0.00935&&x>0.28294))||(\
  x>0.27194&&x<0.28294&&(y<0.5562||(y>0.6013&&y<0.62)||(y>0.5694&&y<0\
  .5881)))||(x>0.28954&&x<0.30824&&y<0.5947)
  chrn15 = x>0.31924&&x<0.33794&&y<0.62||(abs(cabs(z+(-0.3497,-0.5895\
  4))-0.02111)<0.00935&&y>0.58954)||(x>0.36145&&x<0.38015&&y<0.58954)
  chrd16 = x>0.45303&&x<0.47173||(abs(cabs(z+(-0.4324,-0.57875))-0.03\
  19)<0.00935&&x<0.45303)
  chre17 = abs(cabs(z+(-0.52398,-0.57875))-0.0319)<0.00935&&(x<0.5239\
  8||y>0.57563||y<0.56161)||(y>0.57563&&y<0.59433&&x>0.49208&&x<0.555\
  88)
  chrr18 = x>0.57623&&x<0.59493&&y<0.62||(abs(cabs(z+(-0.60669,-0.589\
  54))-0.02111)<0.00935&&y>0.58954)
  chre19 = abs(cabs(z+(-0.68939,-0.57875))-0.0319)<0.00935&&(x<0.6893\
  9||y>0.57563||y<0.56161)||(y>0.57563&&y<0.59433&&x>0.65749&&x<0.721\
  29)
  chrd20 = x>0.80352&&x<0.82222||(abs(cabs(z+(-0.78289,-0.57875))-0.0\
  319)<0.00935&&x<0.80352)
  test2 = chrI11||chrW13||chra14||chrn15||chrd16||chre17||chrr18||chr\
  e19||chrd20&&y>0.5375&&y<0.6475
  chrL21 = x<0.0487||y<0.3687&&x>0.03&&x<0.0927
  chro22 = abs(cabs(z+(-0.14495,-0.39125))-0.0319)<0.00935
  chrn23 = x>0.1972&&x<0.2159&&y<0.4325||(abs(cabs(z+(-0.22766,-0.402\
  04))-0.02111)<0.00935&&y>0.40204)||(x>0.23941&&x<0.25811&&y<0.40204\
  )
  chre24 = abs(cabs(z+(-0.31036,-0.39125))-0.0319)<0.00935&&(x<0.3103\
  6||y>0.38813||y<0.37411)||(y>0.38813&&y<0.40683&&x>0.27846&&x<0.342\
  26)
  chrl25 = x<0.38131&&x>0.36261
  xy=2.5*x
  chry26 = y<xy-0.71328&&y>xy-0.76363||(y>-xy+1.41328&&y<-xy+1.46363)\
  &&y>xy-0.76363&&y<0.4325&&y>0.295
  test3 = chrL21||chro22||chrn23||chre24||chrl25&&y>0.35||chry26&&y<0\
  .46
  chrL27 = x<0.0587||y<0.3562&&x>0.04&&x<0.1027
  chro28 = abs(cabs(z+(-0.15495,-0.37875))-0.0319)<0.00935
  chrn29 = x>0.2072&&x<0.2259&&y<0.42||(abs(cabs(z+(-0.23766,-0.38954\
  ))-0.02111)<0.00935&&y>0.38954)||(x>0.24941&&x<0.26811&&y<0.38954)
  chre30 = abs(cabs(z+(-0.32036,-0.37875))-0.0319)<0.00935&&(x<0.3203\
  6||y>0.37563||y<0.36161)||(y>0.37563&&y<0.39433&&x>0.28846&&x<0.352\
  26)
  chrl31 = x<0.39131&&x>0.37261
  chry32 = y<xy-0.75078&&y>xy-0.80113||(y>-xy+1.42578&&y<-xy+1.47613)\
  &&y>xy-0.80113&&y<0.42&&y>0.2825
  test4 = chrL27||chro28||chrn29||chre30||chrl31&&y>0.3375||chry32&&y\
  <0.4475
  chra33 = abs(cabs(z+(-0.0553,-0.2072))-0.01595)<0.00935&&x<0.0553||\
  (abs(cabs(z+(-0.0663,-0.2072))-0.01595)<0.00935&&x>0.0663)&&y>0.207\
  2||((abs(cabs(z+(-0.0553,-0.1753))-0.01595)<0.00935&&x<0.0553)||(ab\
  s(cabs(z+(-0.0663,-0.1753))-0.01595)<0.00935&&x>0.0663))||(x>0.0553\
  &&x<0.0663&&(y<0.1687||(y>0.2138&&y<0.2325)||(y>0.1819&&y<0.2006)))\
  ||(x>0.0729&&x<0.0916&&y<0.2072)
  chrs34 = abs(cabs(z+(-0.1279,-0.2072))-0.01595)<0.00935&&x<0.1279||\
  (abs(cabs(z+(-0.1389,-0.2072))-0.01595)<0.00935&&x>0.1389)&&(x<0.12\
  79||y>0.2072)||((abs(cabs(z+(-0.1279,-0.1753))-0.01595)<0.00935&&x<\
  0.1279)||(abs(cabs(z+(-0.1389,-0.1753))-0.01595)<0.00935&&x>0.1389)\
  &&(x>0.1389||y<0.1753))||(x>0.1279&&x<0.1389&&(y<0.1687||(y>0.2138&\
  &y<0.2325)||(y>0.1819&&y<0.2006)))
  chra36 = abs(cabs(z+(-0.2555,-0.2072))-0.01595)<0.00935&&x<0.2555||\
  (abs(cabs(z+(-0.2665,-0.2072))-0.01595)<0.00935&&x>0.2665)&&y>0.207\
  2||((abs(cabs(z+(-0.2555,-0.1753))-0.01595)<0.00935&&x<0.2555)||(ab\
  s(cabs(z+(-0.2665,-0.1753))-0.01595)<0.00935&&x>0.2665))||(x>0.2555\
  &&x<0.2665&&(y<0.1687||(y>0.2138&&y<0.2325)||(y>0.1819&&y<0.2006)))\
  ||(x>0.2731&&x<0.2918&&y<0.2072)
  xCC=1*x
  chrC38 = abs(cabs(z+(-0.4128,-0.205))-0.04565)<0.00935&&(x<0.4128||\
  y>xCC-0.2078||y<-xCC+0.6178)
  chrl39 = x<0.48139&&x>0.46269
  chro40 = abs(cabs(z+(-0.53364,-0.19125))-0.0319)<0.00935
  chru41 = x>0.58589&&x<0.60459&&y>0.18046&&y<0.2325||(abs(cabs(z+(-0\
  .61635,-0.18046))-0.02111)<0.00935&&y<0.18046)||(x>0.6281&&x<0.6468\
  &&y<0.2325)
  chrd42 = x>0.71968&&x<0.73838||(abs(cabs(z+(-0.69905,-0.19125))-0.0\
  319)<0.00935&&x<0.71968)
  chrDT43 = y<0.1687&&x>0.74938&&x<0.76808
  chrDT44 = y<0.1687&&x>0.77908&&x<0.79778
  chrDT45 = y<0.1687&&x>0.80878&&x<0.82748
  test5 = chra33||chrs34||chra36||chrC38||chrl39||chro40||chru41||chr\
  d42||chrDT43||chrDT44||chrDT45&&y>0.15&&y<0.26
  chra46 = abs(cabs(z+(-0.0653,-0.1947))-0.01595)<0.00935&&x<0.0653||\
  (abs(cabs(z+(-0.0763,-0.1947))-0.01595)<0.00935&&x>0.0763)&&y>0.194\
  7||((abs(cabs(z+(-0.0653,-0.1628))-0.01595)<0.00935&&x<0.0653)||(ab\
  s(cabs(z+(-0.0763,-0.1628))-0.01595)<0.00935&&x>0.0763))||(x>0.0653\
  &&x<0.0763&&(y<0.1562||(y>0.2013&&y<0.22)||(y>0.1694&&y<0.1881)))||\
  (x>0.0829&&x<0.1016&&y<0.1947)
  chrs47 = abs(cabs(z+(-0.1379,-0.1947))-0.01595)<0.00935&&x<0.1379||\
  (abs(cabs(z+(-0.1489,-0.1947))-0.01595)<0.00935&&x>0.1489)&&(x<0.13\
  79||y>0.1947)||((abs(cabs(z+(-0.1379,-0.1628))-0.01595)<0.00935&&x<\
  0.1379)||(abs(cabs(z+(-0.1489,-0.1628))-0.01595)<0.00935&&x>0.1489)\
  &&(x>0.1489||y<0.1628))||(x>0.1379&&x<0.1489&&(y<0.1562||(y>0.2013&\
  &y<0.22)||(y>0.1694&&y<0.1881)))
  chra49 = abs(cabs(z+(-0.2655,-0.1947))-0.01595)<0.00935&&x<0.2655||\
  (abs(cabs(z+(-0.2765,-0.1947))-0.01595)<0.00935&&x>0.2765)&&y>0.194\
  7||((abs(cabs(z+(-0.2655,-0.1628))-0.01595)<0.00935&&x<0.2655)||(ab\
  s(cabs(z+(-0.2765,-0.1628))-0.01595)<0.00935&&x>0.2765))||(x>0.2655\
  &&x<0.2765&&(y<0.1562||(y>0.2013&&y<0.22)||(y>0.1694&&y<0.1881)))||\
  (x>0.2831&&x<0.3018&&y<0.1947)
  chrC51 = abs(cabs(z+(-0.4228,-0.1925))-0.04565)<0.00935&&(x<0.4228|\
  |y>xCC-0.2303||y<-xCC+0.6153)
  chrl52 = x<0.49139&&x>0.47269
  chro53 = abs(cabs(z+(-0.54364,-0.17875))-0.0319)<0.00935
  chru54 = x>0.59589&&x<0.61459&&y>0.16796&&y<0.22||(abs(cabs(z+(-0.6\
  2635,-0.16796))-0.02111)<0.00935&&y<0.16796)||(x>0.6381&&x<0.6568&&\
  y<0.22)
  chrd55 = x>0.72968&&x<0.74838||(abs(cabs(z+(-0.70905,-0.17875))-0.0\
  319)<0.00935&&x<0.72968)
  chrDT56 = y<0.1562&&x>0.75938&&x<0.77808
  chrDT57 = y<0.1562&&x>0.78908&&x<0.80778
  chrDT58 = y<0.1562&&x>0.81878&&x<0.83748
  test6 = chra46||chrs47||chra49||chrC51||chrl52||chro53||chru54||chr\
  d55||chrDT56||chrDT57||chrDT58&&y>0.1375&&y<0.2475
  test=test2||test4||test6
  test0=test1||test3||test5
  f1=sin(.5*pixel)
  f2=1/(32*pixel)
  newpixel=(test==0)*f2+test*f1
  z=1+(0,-0.65)/fn3(newpixel+(0,0.75)):
  z2=z*z, z4=z2*z2, n=z4*z2-1, z=z-n/(6*z4*z)
  |n|>=.0001&&test0==0
  ;SOURCE: 98msg.frm
}


PokornyConesJulia {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = coordinates of the Julia set
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    prev_w = pixel
    c = p1
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    ;****************************************************
    ; In the accompanying par files, pkcones1 & 2.par,
    ; we have 2 color ranges with 125 colors in each range
    ; for a total of 250 colors. The first range starts at
    ; color 1.  Pixels will use color 255 when w < 1.0.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ;****************************************************
    num_ranges = real(p2)
    colors_in_range = imag(p2):
    ;****************************************************
    ; The equation being iterated.  This is the
    ; Pokorny equation.
    ;****************************************************
    w = 1 / (prev_w * prev_w + c)
    ;****************************************************
    ; If |w| exceeds a value of 4.0, set z to the index
    ; into the colormap and set the bailout flag.
    ;****************************************************
    IF (|w| > 4)
        ;***************************************************
        ; Compute the angle between the last 2 orbit points
        ;***************************************************
        delta_i = imag(w) - imag(prev_w)
        delta_r = real(w) - real(prev_w)
        angle = abs(atan(delta_i / delta_r))
        IF (delta_r < 0)
            angle = pi - angle
        ENDIF
        bailout = 1
        range_index = colors_in_range * angle / pi
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


polar {; Kerry Mitchell 14nov98
       ;
       ; Kerry Mitchell's explanation of his "Polar Curves" formulas 
       ; is at the end of this formula
       ;
       ; draws polar curve r = cabs(a*fn1(b*theta))^n+r0
       ;
       ; real(p1) = coloring flag:
       ;   1 to color by nearness to curve
       ;   2 to color by inside/outside
       ; imag(p1) = negative r handling flag:
       ;   1 to ignore r<0
       ;   2 to use |r| instead of r
       ; real(p2) = a = amplitude
       ; imag(p2) = b = frequency
       ; real(p3) = n = exponent
       ; imag(p3) = r0 = baseline
       ;
       ; use decomp=256, float=yes, periodicity=no
       ;
  zc=pixel, done=1, twopi=2*pi
  a=real(p2), b=imag(p2), n=real(p3), r0=imag(p3)
  colflag=real(p1), negrflag=imag(p1)
  :
  t=imag(log(zc))
  IF (t<0)
    t=t+twopi
  ENDIF
  r=a*fn1(b*t)
  IF (r>=0)
    r=r^n
  ELSE
    r=-((-r)^n)
  ENDIF
  r=r+r0
  IF (colflag==1)
    IF (negrflag==1)
      err=r-cabs(zc)
    ELSE
      err=|r|-|zc|
    ENDIF
    err=cabs(err)
    t=log(err)
    z=cos(t)+flip(sin(t))
  ELSE
    IF (negrflag==1)
      IF (r<cabs(zc))
        t=0
      ELSE
        t=1
      ENDIF
    ELSE
      IF (|r|<|zc|)
        t=0
      ELSE
        t=1
      ENDIF
    ENDIF
    z=cos(t)+flip(sin(t))
  ENDIF
  done==0
;*****Kerry Mitchell's explanation of his "Polar Curves" formulas****** 
;
;              copyright Kerry Mitchell 14nov98
;
;    Related formulas:
;        polar (above)
;        polar-near_man
;        polar-near_jul
;        polar-inout_man
;        polar-inout_jul
;
; Polar Curves
;
; Typically, points in a plane are thought of in terms of their x- and
; y-coordinates, that is, how far away (and on which side) the point is
; from the horizontal x-axis and the vertical y-axis.  Another way of
; looking at the point is with polar coordinates, which specify the
; distance of the point from the origin (r) and its direction (t).  The
; two methods are equivalent:
;
; x = r*cos(t), y=r*sin(t), or
; r^2 = x^2 + y^2, tan(t) = y/x.
;
; Polar curves are curves that specify r as a function of t, instead of
; y as a function of x.  The curve used in this coloring method is:
;
; r = [a * f(b*t)]^n + r0,
;
; where f is one of Fractint's builtin functions (e.g., sin, cos, exp,
; etc.), a is an amplitude scaling factor, and b is a frequency factor.
; The exponent n is useful for making the curve wider or thinner, and r0
; is a expansion or contraction constant.
;
; Some special curves can be generated using this function.  Spirals can
; be made by using the "ident" function.  Here, the exponent n controls
; how tightly wound the spiral is.  However, only one revolution of the
; spiral will be drawn, as t is limited to the range 0 to 2*pi.
;
; "Rose" curves are made by using either sin or cos functions.  The
; parameter a controls the size of the curve.  The number of "petals"
; is b, so long as b is a positive integer.  Increasing n from 1 will
; make the petals thinner; decreasing it toward 0 will make them thicker.
; Leave r0=0 for the standard rose curve, where the petals all join at
; the origin.
;
; Since the sin and cos functions generate negative values, the "rose"
; curves will have some regions of negative r.  How this is handled
; depends on r0 and "negrflag", the negative r flag.  Setting negrflag to
; 1 will make the routine ignore negative r values.  This, with r0 is set
; to 0, will cause the rose curve to have "b" number of petals, all of
; them the same size.  Setting negrflag=2 will make the routine consider
; negative r's the same as positive r's.  Thus, the rose curve will have
; 2*b petals.  Increasing r0 from 0 will make r positive more often than
; negative.  This will also increase the number of petals from b to 2*b,
; but half of the petals will be small and half will be large.
;
; The best way to see the effects of the parameter choices is to use the
; "polar" formula.  This formula doesn't draw a fractal, just the polar
; curve determined by a, b, n, r0, the chosen function, and the negative r
; flag.  Another flag determines how the curve is shown.  If the coloring
; flag "colflag" is set to 1, then the image will be colored by how close
; the pixel is to the polar curve.  Is essence, this will outline the curve.
; If colflag=2, then the area outside of the curve is colored black (color
; 0), and the inside is rendered in a second color (color 40).
;
; The other formulas use polar curves to color fractals.  There are 2
; basic rendering methods:  how close the orbit comes to the polar curve,
; and how often the orbit is inside the polar curve.  The "polar-near_man"
; and "polar-near_jul" formulas color the Mandelbrot and Julia sets in the
; first manner.  The "polar-inout_man" and "polar-inout_jul" formulas take
; the second tack.  In the Julia cases, the bailout value and the negative
; r flag are hardcoded, to allow full freedom in specifying a, b, n, and r0.
;*************************************************************************
  ;SOURCE: 98msg.frm
}


polar-inout_jul {; Kerry Mitchell 14nov98
        ; 
        ; Kerry Mitchell's explanation of his "Polar Curves" formulas
        ; is at the end of formula "polar"
        ;
        ; colors Julia set by how often orbit is inside
        ; polar curve r = cabs(a*fn1(b*theta))^n+r0
        ;
        ; p1 = c = Julia parameter
        ; real(p2) = a = amplitude
        ; imag(p2) = b = frequency
        ; real(p3) = n = exponent
        ; imag(p3) = r0 = baseline
        ;
        ; bailout=1000 (hardcoded)
        ; negative r handling flag = 1 (hardcoded)
        ;   1 to ignore r<0
        ;   2 to use |r| instead of r
        ;
        ; colors inside & outside points the same way
        ; use decomp=256, float=yes, periodicity=no
        ;
  zc=pixel, c=p1, iter=1, done=0
  bailout=1000, incount=0
  a=real(p2), b=imag(p2), n=real(p3), r0=imag(p3)
  twopi=2*pi, negrflag=1
        :
        ;
        ; standard iteration
        ;
  iter=iter+1, zc=sqr(zc)+c
        ;
        ; compute polar angle t from new value of zc
        ;   adjust t to be in range [0, 2pi]
        ;
  t=imag(log(zc))
  IF (t<0)
    t=t+twopi
  ENDIF
        ;
        ; find polar radius from angle t
        ;
  r=a*fn1(b*t)
  IF (r>=0)
    r=r^n
  ELSE
    r=-((-r)^n)
  ENDIF
  r=r+r0
        ;
        ; if negrflag = 1, compare r with magnitude of zc--
        ;   this ignores negative r values
        ; if negrflag = 2, compare magnitude squared of r
        ;   with magnitude squared of zc--this treats -r as r
        ;
  IF (negrflag==1)
    err=cabs(zc)-r
  ELSE
    err=|zc|-|r|
  ENDIF
        ;
        ; update inside counter if err<0
        ;
  IF (err<0)
    incount=incount+1
  ENDIF
        ;
        ; bailout at escape or maximum iterations
        ;   set "done" flag
        ;   use ratio of incount to iterations as angle for decomp coloring
        ;
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    t=twopi*incount/(iter-1)
    z=cos(t)+flip(sin(t))
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


polar-inout_man {; Kerry Mitchell 14nov98
        ; 
        ; Kerry Mitchell's explanation of his "Polar Curves" formulas
        ; is at the end of formula "polar"
        ;
        ; colors Mandelbrot set by how often orbit is inside
        ; polar curve r = cabs(a*fn1(b*theta))^n+r0
        ;
        ; real(p1) = bailout
        ; imag(p1) = negative r handling flag:
        ;   1 to ignore r<0
        ;   2 to use |r| instead of r
        ; real(p2) = a = amplitude
        ; imag(p2) = b = frequency
        ; real(p3) = n = exponent
        ; imag(p3) = r0 = baseline
        ;
        ; colors inside & outside points the same way
        ; use decomp=256, float=yes, periodicity=no
        ;
  zc=0, c=pixel, iter=1, done=0
  bailout=real(p1), incount=0
  a=real(p2), b=imag(p2), n=real(p3), r0=imag(p3)
  twopi=2*pi, negrflag=imag(p1)
  :
        ;
        ; standard iteration
        ;
  iter=iter+1, zc=sqr(zc)+c
        ;
        ; compute polar angle t from new value of zc
        ;   adjust t to be in range [0, 2pi]
        ;
  t=imag(log(zc))
  IF (t<0)
    t=t+twopi
  ENDIF
        ;
        ; find polar radius from angle t
        ;
  r=a*fn1(b*t)
  IF (r>=0)
    r=r^n
  ELSE
    r=-((-r)^n)
  ENDIF
  r=r+r0
        ;
        ; if negrflag = 1, compare r with magnitude of zc--
        ;   this ignores negative r values
        ; if negrflag = 2, compare magnitude squared of r
        ;   with magnitude squared of zc--this treats -r as r
        ;
  IF (negrflag==1)
    err=cabs(zc)-r
  ELSE
    err=|zc|-|r|
  ENDIF
        ;
        ; update inside counter if err<0
        ;
  IF (err<0)
    incount=incount+1
  ENDIF
        ;
        ; bailout at escape or maximum iterations
        ;   set "done" flag
        ;   use ratio of incount to iterations as angle for decomp coloring
        ;
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    t=twopi*incount/(iter-1)
    z=cos(t)+flip(sin(t))
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


polar-near_jul { ; Kerry Mitchell 14nov98
        ; 
        ; Kerry Mitchell's explanation of his "Polar Curves" formulas
        ; is at the end of formula "polar"
        ;
        ; colors Julia set by orbit's closet approach to
        ; polar curve r = cabs(a*fn1(b*theta))^n+r0
        ;
        ; p1 = c = Julia parameter
        ; real(p2) = a = amplitude
        ; imag(p2) = b = frequency
        ; real(p3) = n = exponent
        ; imag(p3) = r0 = baseline
        ;
        ; bailout = 1000 (hardcoded)
        ; negative r handling flag = 1 (hardcoded)
        ;   1 to ignore r<0
        ;   2 to use |r| instead of r
        ;
        ; colors inside & outside points the same way
        ; use decomp=256, float=yes, periodicity=no
        ;
  zc=pixel, c=p1, iter=1, done=0
  bailout=1000, errmin=bailout
  a=real(p2), b=imag(p2), n=real(p3), r0=imag(p3)
  twopi=2*pi, negrflag=1
  :
        ;
        ; standard iteration
        ;
  iter=iter+1, zc=sqr(zc)+c
        ;
        ; compute polar angle t from new value of zc
        ;   adjust t to be in range [0, 2pi]
        ;
  t=imag(log(zc))
  IF (t<0)
    t=t+twopi
  ENDIF
        ;
        ; find polar radius from angle t
        ;
  r=a*fn1(b*t)
  IF (r>=0)
    r=r^n
  ELSE
    r=-((-r)^n)
  ENDIF
  r=r+r0
        ;
        ; if negrflag = 1, compare r with magnitude of zc--
        ;   this ignores negative r values
        ; if negrflag = 2, compare magnitude squared of r
        ;   with magnitude squared of zc--this treats -r as r
        ;
  IF (negrflag==1)
    err=cabs(r-cabs(zc))
  ELSE
    err=cabs(|r|-|zc|)
  ENDIF
        ;
        ; update minimum distance if a new smaller error is found
        ;
  IF (err<errmin)
    errmin=err
  ENDIF
        ;
        ; bailout at escape or maximum iterations
        ;   set "done" flag
        ;   use log(minimum distance) as angle for decomp coloring
        ;
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    t=log(errmin)
    z=cos(t)+flip(sin(t))
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


polar-near_man {; Kerry Mitchell 14nov98
        ; 
        ; Kerry Mitchell's explanation of his "Polar Curves" formulas
        ; is at the end of formula "polar"
        ;
        ; colors Mandelbrot set by orbit's closet approach to
        ; polar curve r = cabs(a*fn1(b*theta))^n+r0
        ;
        ; real(p1) = bailout
        ; imag(p1) = negative r handling flag:
        ;   1 to ignore r<0
        ;   2 to use |r| instead of r
        ; real(p2) = a = amplitude
        ; imag(p2) = b = frequency
        ; real(p3) = n = exponent
        ; imag(p3) = r0 = baseline
        ;
        ; colors inside & outside points the same way
        ; use decomp=256, float=yes, periodicity=no
        ;
  zc=0, c=pixel, iter=1, done=0
  bailout=real(p1), errmin=bailout
  a=real(p2), b=imag(p2), n=real(p3), r0=imag(p3)
  twopi=2*pi, negrflag=imag(p1)
  :
        ;
        ; standard iteration
        ;
  iter=iter+1, zc=sqr(zc)+c
        ;
        ; compute polar angle t from new value of zc
        ;   adjust t to be in range [0, 2pi]
        ;
  t=imag(log(zc))
  IF (t<0)
    t=t+twopi
  ENDIF
        ;
        ; find polar radius from angle t
        ;
  r=a*fn1(b*t)
  IF (r>=0)
    r=r^n
  ELSE
    r=-((-r)^n)
  ENDIF
  r=r+r0
        ;
        ; if negrflag = 1, compare r with magnitude of zc--
        ;   this ignores negative r values
        ; if negrflag = 2, compare magnitude squared of r
        ;   with magnitude squared of zc--this treats -r as r
        ;
  IF (negrflag==1)
    err=cabs(r-cabs(zc))
  ELSE
    err=cabs(|r|-|zc|)
  ENDIF
        ;
        ; update minimum distance if a new smaller error is found
        ;
  IF (err<errmin)
    errmin=err
  ENDIF
        ;
        ; bailout at escape or maximum iterations
        ;   set "done" flag
        ;   use log(minimum distance) as angle for decomp coloring
        ;
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    t=log(errmin)
    z=cos(t)+flip(sin(t))
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


Polka {
  z = c = pixel:
  z = z + p1
  c = fn1(c) 
  z = fn2((z*z+c-2)/(2*z+c+1))
  |z| < 4
  ;SOURCE: gestalt.frm
}


pollen {; Giuseppe Zito
  z = pixel
  d2 = -0.547846
  : 
  x = real(z), y = imag(z)
  s0 = y
  s0 = s0 -x
  newx = s0 
  s0 = x
  s0 = s0 *y
  s0 = s0 +d2
  s0 = s0 *x
  s0 = s0 -y
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


PolyGen {; Ron Barnett, 1993
         ; p1 must not be zero
         ; zero can be simulated with a small
         ; value for p1
         ; use floating point
  z=(-p2+(p2*p2+(1-pixel)*3*p1)^0.5)/(3*p1):
  z=p1*z*z*z+p2*z*z+(pixel-1)*z-pixel
  |z| <= 100
  ;SOURCE: reb002.frm
}


PolyGenJulia {; Ron Barnett, 1995
              ; p1 must not be zero
              ; zero can be simulated with a small
              ; value for p1
              ; use floating point
  z=(-p2+(p2*p2+(1-pixel)*3*p1)^0.5)/(3*p1):
  z=p1*z*z*z+p2*z*z+(p3-1)*z-p3
  |z| <= 100
  ;SOURCE: reb007.frm
}


PolyRI {; Peter Anders anders@physik.hu-berlin.de
   ; real Halley formula for polynoms, use floating point
  z=pixel, r=p1, g=p2+1:
  c=z
  f1=z^r-1
  f2=r*z^(r-1)
  f3=r*(r-1)*z^(r-2)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  z=z+p2
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


PolyRII {; Peter Anders anders@physik.hu-berlin.de
   ; real Halley formula for polynoms, use floating point
  z=pixel, r=p1, g=p2+1:
  c=z
  f1=z^r-1
  f2=r*z^(r-1)
  f3=r*(r-1)*z^(r-2)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  z=z*p2
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


PolyRIII {; Peter Anders anders@physik.hu-berlin.de
   ; real Halley formula for polynoms, use floating point
  z=pixel, r=p1, g=p2+1:
  c=z
  f1=z^r-1
  f2=r*z^(r-1)
  f3=r*(r-1)*z^(r-2)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  z=fn1(z)
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


PolyTestI {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, r=p1:
  c=z
  f1=z^r-1
  f2=r*z^(r-1)
  f3=r*(r-1)*z^(r-2)
  z=z-(p2+1)*f1/(f2-(f3*f1/(2*f2)))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


PolyTestII {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, r=p1:
  c=z
  f1=sin(z)
  f2=cos(z)
  f3=-sin(z)
  z=z-(p2+1)*f1/(f2-(f3*f1/(2*f2)))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


PolyTestIII {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, r=p1:
  c=z
  f1=z^(r+1)-z
  f2=(r+1)*z^r-1
  f3=r*(r+1)*z^(r-1)
  z=z-(p2+1)*f1/(f2-(f3*f1/(2*f2)))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


pop01 { 
  h = (0.05 * ((p1)<=0) + (p1) * (0<p1))
  k = (3.0 * ((p2)<=0) + (p2) * (0<p2))
  x = real(pixel), y = imag(pixel):
  a = x - h*fn1((y) + fn2(k*y))
  b = y - h*fn1((x) + fn2(k*x))
  x = a, y = b
  z = fn3(x) * fn4(y)
  |z| <= 64
  ;SOURCE: pop.frm
}


pop02 { 
  h = (0.05 * ((p1)<=0))
  k = (3.00 * ((p2)<=0))
  x = real(pixel) + p1, y = imag(pixel) + p2:
  a = x - h*fn1((y) + fn2(k*y))
  b = y - h*fn1((x) + fn2(k*x))
  x = a, y = b
  z = fn3(x) * fn4(y)
  |z| <= 64
  ;SOURCE: pop.frm
}


pop03 { 
  h = (0.05 * ((p1)<=0) + (p1) * (0<p1))
  k = (3.00 * ((p2)<=0) + (p2) * (0<p2))
  x = real(pixel), y = imag(pixel):
  a = x - h*fn1((y) + fn2(k*y))
  b = y - h*fn1((x) + fn2(k*x))
  x = a, y = b
  z = fn3(x) * fn4(y) + h + k
  |z| <= 64
  ;SOURCE: pop.frm
}


pop04 { 
  h = (0.10 * ((p1)<=0) + (p1) * (0<p1))
  k = (5.00 * ((p2)<=0) + (p2) * (0<p2))
  x = real(pixel), y = imag(pixel):
  a = x - h*fn1((y) + fn2(k*y))
  b = y - h*fn1((x) + fn2(k*x))
  x = a, y = b
  z = fn3(x) * fn4(y) *  fn3(x) * fn4(y)  
  |z| <= 64
  ;SOURCE: pop.frm
}


pop05 { 
  h = (0.05 * ((p1)<=0) + (p1) * (0<p1))
  k = (3.00 * ((p2)<=0) + (p2) * (0<p2))
  c = pixel
  x = real(pixel), y = imag(pixel):
  a = x - h*fn1((y) + fn2(k*y))
  b = y - h*fn1((x) + fn2(k*x))
  x = a, y = b
  z = fn3(x*x) + fn4(y*y) + c
  |z| <= 64
  ;SOURCE: pop.frm
}


pop06 { 
  h = (0.05 * ((p1)<=0) + (p1) * (0<p1))
  k = (3.00 * ((p2)<=0) + (p2) * (0<p2))
  x = real(pixel), y = imag(pixel):
  a = x - h*fn1((y) + fn2(k*y))
  b = y - h*fn1((x) + fn2(k*x))
  x = a, y = b
  z = fn3(x*x) + fn4(y*y) + x*y
  |z| <= 64
  ;SOURCE: pop.frm
}


pop07 { 
  h = (0.05 * ((p1)<=0) + (p1) * (0<p1))
  k = (3.0 * ((p2)<=0) + (p2) * (0<p2))
  x = real(pixel), y = imag(pixel):
  a = x*x - h*fn1((y) + fn2(k*y))
  b = y*y - h*fn1((x) + fn2(k*x))
  x = a, y = b
  z = fn3(x) * fn4(y)
  |z| <= 64
  ;SOURCE: pop.frm
}


pop08 { 
  h = (0.05 * ((p1)<=0) + (p1) * (0<p1))
  k = (3.0 * ((p2)<=0) + (p2) * (0<p2))
  x = real(pixel), y = imag(pixel):
  a = x*x + h*fn1((y) - fn2(k*y))
  b = y*y + h*fn1((x) - fn2(k*x))
  x = a, y = b
  z = fn3(x) * fn4(y)
  |z| <= 64
  ;SOURCE: pop.frm
}


pop09 { 
  h = (0.05 * ((p1)<=0) + (p1) * (0<p1))
  k = (3.0 * ((p2)<=0) + (p2) * (0<p2))
  x = real(pixel), y = imag(pixel):
  a = x*x + h*fn1((y) + fn2(k*y))
  b = y*y + h*fn1((x) + fn2(k*x))
  x = a, y = b
  z = fn3(x) * fn4(y)
  |z| <= 64
  ;SOURCE: pop.frm
}


Popcorn_3Way {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = h in popcorn formula
    ; imag(p1) = bailout value
    ; real(p2) = escape circle radius squared
    ; imag(p2) = number of iterations to skip
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
  z = w = k = iter = range_num = bailout = 0
  prev_w = pixel
  x = real(pixel)
  y = imag(pixel)
  h = real(p1)
  prev_modw2 = 1.0e20
  rad2 = real(p2)
  skip_iters = imag(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  colors_in_range_1 = colors_in_range - 1
  :
  prev_x = x
  x = x - h * sin(y + tan(3 * y))
  y = y - h * sin(prev_x + tan(3 * prev_x))
  w = x + flip(y)
    ;
  IF ((prev_modw2 < rad2) && (|w| > rad2))
    bailout = 1
    IF (iter > skip_iters)
      k = 1
    ENDIF
    index = colors_in_range_1 * (rad2 - prev_modw2) / rad2
    z = (index + range_num * colors_in_range + 1) * k
  ENDIF
  prev_modw2 = |w|
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| <= imag(p1)
  ;SOURCE: 98msg.frm
}


popcorn_balls {; Copyright (c) Paul W. Carlson, 1998
    ; Always use float=y, outside=summ
    ; real(p1) = h in popcorn formula
    ; imag(p1) = bailout value
    ; real(p2) = controls size of balls
    ; imag(p2)   not used
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
  z = iter = bailout = range_num = 0
  prev_w = pixel
  x = real(pixel)
  y = imag(pixel)
  h = real(p1)
  max_r = real(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  index_factor = (colors_in_range - 1) / max_r
  :
  prev_x = x
  x = x - h * sin(y + tan(3 * y))
  y = y - h * sin(prev_x + tan(3 * prev_x))
  w = x + flip(y)
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


popcorn_jul {; Paul Carlson, 1998
    ; Always use float=yes
    ;
    ; real(p1) = h in popcorn formula
    ; imag(p1) = bailout value
    ;
  x = real(pixel)
  y = imag(pixel)
  h = real(p1)
  :
  prev_x = x
  x = x - h * sin(y + tan(3 * y))
  y = y - h * sin(prev_x + tan(3 * prev_x))
  z = x + flip(y)
  |z| <= imag(p1)
  ;SOURCE: 98msg.frm
}


Popcorn_R4 {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = h in popcorn formula
    ; imag(p1) = bailout value
    ; real(p2) = size factor
    ; imag(p2) = iterations to skip
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
  z = bailout = range_num = iter = 0
  x = real(pixel)
  y = imag(pixel)
  h = real(p1)
  k = (0.5,0.5)
  size = real(p2)
  skip = imag(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  index_factor = (colors_in_range - 1) / size:
    ;
  prev_x = x
  x = x - h * sin(y + tan(3 * y))
  y = y - h * sin(prev_x + tan(3 * prev_x))
  w = x + flip(y)
    ;
  IF (iter > skip)
    dist = abs(|w - k| - 0.1)
    IF (dist < size)
      bailout = 1
    ENDIF
  ENDIF
  IF (bailout)
    z = index_factor * dist + range_num * colors_in_range + 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0  && |w| < imag(p1)
  ;SOURCE: 98msg.frm
}


PopcornJul (origin) {; adaptation by Bradley Beacham  [74223,2745]
       ; The next line sets h=0.05 if real(p1)<=0, else h=real(p1)
  h = (0.05 * (real(p1)<=0) + real(p1) * (0<p1))
  x = real(pixel), y = imag(pixel):
  newx = x - h*sin((y) + tan(3*y))
  newy = y - h*sin((x) + tan(3*x))
  x = newx, y = newy
  z = x + flip(y)
  |z| < 4
  ;SOURCE: pj.frm
}


PopCornJulCplx {; Jon Horner & Bradley Beacham - May 1995
   ; p1 = step size (default 0.05), p2 = parameter (default 3)
   ; p3 = bailout value (default 4)
   ; set co-ords = -3/3/-2.25/2.25, fn1=sin, fn2=tan, fn3=ident, fn4=flip
  h = (0.05 * ((p1)<=0) + (p1) * (0<p1))
  k = (3.0 * ((p2)<=0) + (p2) * (0<p2))
  test = (4.0 * ((p3)<=0) + (p3) * (0<p3))
  x = real(pixel), y = imag(pixel):
  newx = x - h*fn1((y) + fn2(k*y))
  newy = y - h*fn1((x) + fn2(k*x))
  x = newx, y = newy
  z = fn3(x) + fn4(y)
  |z| < test
  ;SOURCE: snazzy.frm
}


Porker {
  z = c = pixel:
  L = (1/tan(z)) + c
  r = fn1(1/z) + p1
  z = (r/L)
  |z| < 4 + p2
  ;SOURCE: big_pig.frm
}


PosiTail {; Jim Muth
  z=c=pixel:
  z=sqr(z)-0.19*(z*z*z)+c
  |z| <= 100
  ;SOURCE: 97msg.frm
}


Power {
  z=pixel:
  z=z^(p1)
  |z|<=1000
  ;SOURCE: sample.frm
}


power1 {
  c = p1
  x = pixel
  a = 0:
  a = a + 1
  z = c
  z = z +  c ^ log(a) * x ^ a
  |z| <= 100000
  ;SOURCE: 97msg.frm
}


pr12 {
  z=c=pixel:
  z=(fn1(z)+whitesq)^fn2(1/p3*(z*z*z)*(c/p1)/fn3(p2))
  |z|<4
  ;SOURCE: ad6.frm
}


pr15 {
  z=c=pixel:
  z=fn1((z+whitesq)*(p1))
  z1=fn2((z+whitesq)*real(p1))
  z2=fn3((z1+whitesq)*(p2))
  z3=fn4((z2+whitesq)*real(p2))
  z=(z3*(z2+z1))/c
  |z|<4
  ;SOURCE: ad5.frm
}


pr18 {
  z=pixel, t=tan(fn1(z)*cos(z))^exp(fn2(z)*cotan(z))^fn3(z):
  z1=fn1(whitesq*t)-1
  z=(z1*fn2(z+z/1-whitesq))*t
  |z|<4
  ;SOURCE: ad5.frm
}


pr19 {
  z=pixel, t=z/1-(whitesq):
  z=fn1((z+whitesq)*(p1))
  z1=fn1((z*p1))
  z2=fn1((z1/p2))
  z3=fn1((z2-p2))
  z=(z3*fn2(z2+z1))/t
  |z|<4
  ;SOURCE: ad5.frm
}


pr23 {
  z=pixel, c=fn3(pixel+whitesq):
  n=(fn1(z-2)+fn2(c-1))+c
  z=(p1*1/tan(n*n))/cos(n*n*n)+whitesq
  |z|<4
  ;SOURCE: ad5.frm
}


pr24{
  z=pixel:
  a=fn1(real(pixel)*abs(pixel))
  a=fn1(real(whitesq)*abs(pixel))
  b=fn2(1/sinh(z+whitesq))
  n=(z*fn3(a+b))/(whitesq)*(z+1)
  t=log(pixel-2)*fn3(z)
  z=fn1(t+whitesq)+fn3(n)
  |z|<4
  ;SOURCE: ad5.frm
}


pr27 {
  z=pixel:
  z1=fn3((z/.5)*pixel)
  z=(fn2(z1*real(1-z1))*fn1(1/imag(z1-1)))+whitesq
  |z|<4
  ;SOURCE: ad5.frm
}


pr31 {
  c=z=pixel, t=(fn1(pixel+whitesq)+1):
  z=fn4(fn2(t)/real(fn3(z*whitesq)))+c      
  |z|<4
  ;SOURCE: ad5.frm
}


Pratz001 {
  z = (Pixel*p1)+sqrt(p2), c = Pixel:
  z = (fn1(z)*fn2(c))
  |z| <= p3
  ;SOURCE: 97msg.frm
}


PrecognaJ {
   ; p1 is Julia parameter.
   ; Precogna.frm, formulas PrecognaJ, PrecognaM
   ; Copyright (C) 1997 PGD.
   ; Distribute it as you see fit, as long as these comments remain 
   ; attached and the two formulas unaltered. Formulas you derive from 
   ; these by changing anything, and images and par files generated with 
   ; this, are yours to do with as you please.
  z=pixel, p=0, c=p1:
  t=sqr(p)*p+sqr(z)+c
  p=z
  z=t
  lastsqr<=2048
  ;SOURCE: precogna.frm
}


PrecognaM (XAXIS) {
   ; p1 is Julia parameter.
   ; Precogna.frm, formulas PrecognaJ, PrecognaM
   ; Copyright (C) 1997 PGD.
   ; Distribute it as you see fit, as long as these comments remain 
   ; attached and the two formulas unaltered. Formulas you derive from 
   ; these by changing anything, and images and par files generated with 
   ; this, are yours to do with as you please.
  z=0, p=0, c=pixel:
  t=sqr(p)*p+sqr(z)+c
  p=z
  z=t
  lastsqr<=2048
  ;SOURCE: precogna.frm
}


Primal {; Rollo Silver
        ; Select p1 such that 0. <= p1 <= 1.
  z = c = Pixel, t = real(p1), test = (p2+10)*(p2+10):
  zsq = z*z
  zcu = zsq*z
  z = (1.-t)*zsq + t*zcu + c
  |z| <= test
  ;SOURCE: primal.frm
}


PRN_01 {; Paul Novak, 1996
  z=c=pixel, upper=4+p2:
  t= (z +  z*(fn1(fn2(z))))
  z= -1*t + c
  |z| < upper
  ;SOURCE: novak_1.frm
}


PRN_02 {; Paul Novak, 1996
  z=c=pixel, z2=z*z, upper=4+p2, m=p1, m1=.005+p1:
  m= m + m1
  b= (z2 + z*(fn1(fn2(z))))
  t= (z +  z*(fn2(fn3(z))))
  z= m*b + (m-1)*t + c
  |z| < upper
  ;SOURCE: novak_1.frm
}


PRN_03 {; Paul Novak, 1996
  z=c=pixel, z2=z*z, upper=4+p2, m=p1, m1=.005+p1:
  m= m + m1/(1.5*m)
  b= (z2 + z*(fn1(fn2(z))))
  t= (z +  z*(fn2(fn3(z))))
  z= m*b + (m-1)*t + c
  |z| < upper
  ;SOURCE: novak_1.frm
}


PRN_04 {; Paul Novak, 1996
  z = c = pixel, z2=z*z, upper=4+p2, m=p1, m1=.005+p1:
  m = m + m1*(1.25*(1/m))
  b = (z2 + z*(fn1(fn2(z))))
  t = (z2 + z + z*(fn1(fn3(z))))
  z = m*b + (1/m)*t + c
  |z| < upper
  ;SOURCE: novak_1.frm
}


proof {; Giuseppe Zito
  z = pixel
  c0 = 0.49834201
  : 
  x = real(z), y = imag(z)
  s0 =c0
  s0 = s0 -y
  s0 = s0 /y
  s0 = s0 /y
  s0 = s0 -x
  newx = s0 
  s0 = y
  s0 = s0 +x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4   
  ;SOURCE: zg.frm
}


Prop (XAXIS) {
  z=0
  c=pixel:
  z=sqr(z)
  z=-z
  z=conj(z)
  z=z+c
  |z| <=4
  ;SOURCE: crocker.frm
}


Prop2 {
  z=0
  c=pixel:
  z=sqr(z)
  z=-z
  z=conj(z)
  z=z+c+imag(c)
  |z| <=4
  ;SOURCE: crocker.frm
}


Prop2J (ORIGIN) {
  c=P1
  z=pixel:
  z=sqr(z)
  z=-z
  z=conj(z)
  z=z+c+imag(c)
  |z| <=4
  ;SOURCE: crocker.frm
}


Prop3 {
  z=0
  c=pixel:
  z=sqr(z)
  z=-z
  z=conj(z)
  z=z+c-imag(c)
  |z| <=4
  ;SOURCE: crocker.frm
}


Prop3J (ORIGIN) {
  c=P1
  z=pixel:
  z=sqr(z)
  z=-z
  z=conj(z)
  z=z+c-imag(c)
  |z| <=4
  ;SOURCE: crocker.frm
}


Prop4 {
  z=0
  c=pixel:
  z=sqr(z)
  z=-z
  z=conj(z)
  z=z+c+imag(z)
  |z| <=4
  ;SOURCE: crocker.frm
}


Prop4J (ORIGIN) {
  c=P1
  z=pixel:
  z=sqr(z)
  z=-z
  z=conj(z)
  z=z+c+imag(z)
  |z| <=4
  ;SOURCE: crocker.frm
}


Prop5 {
  z=0
  c=pixel:
  z=sqr(z)
  z=-z
  z=conj(z)
  z=z+c-imag(z)
  |z| <=4
  ;SOURCE: crocker.frm
}


Prop5J (ORIGIN) {
  c=P1
  z=pixel:
  z=sqr(z)
  z=-z
  z=conj(z)
  z=z+c-imag(z)
  |z| <=4
  ;SOURCE: crocker.frm
}


PropMiIm {
  z=0
  c=pixel:
  z=sqr(z)
  z=-z
  z=conj(z)
  z=z+c-imag(z)
  |z| <=4
  ;SOURCE: crocker.frm
}


PropPlIm {
  z=0
  c=pixel:
  z=sqr(z)
  z=-z
  z=conj(z)
  z=z+c+imag(z)
  |z| <=4
  ;SOURCE: crocker.frm
}


Prueba_000 { 
  z=fn1(pixel), c=fn2(pixel):
  z=fn2(p1/z^4) - fn1(p2/z^2) + c
  |z|<64
  ;SOURCE: 98msg.frm
}


Prueba_002 {; Bill Decker mod 10/98 of Prueba_000
            ; Miguel Fliguer - Buenos Aires, Argentina
            ; m_fliguer@miniphone.com.ar
  a = real(p1), b = imag(p1)
  c = real(p2), d = imag(p2)
  e1 = real(p3), f1 = imag(p3)
  z=fn1(pixel), c1=fn2(pixel):
  z=fn2(p1/z^(e1*fn3(z))) - fn1(p2/z^(f1*fn4(z))) + c1
  |z|<64
  ;SOURCE: 98msg.frm
}


Prueba_003 {; Bill Decker mod 10/98 of Prueba_000
            ; Miguel Fliguer - Buenos Aires, Argentina
            ; m_fliguer@miniphone.com.ar
  z=fn1(pixel), c=fn2(pixel)
  e1=real(p3), e2=e1*2, f=imag(p3):
  z=fn2(p1/z^e2) - fn1(p2/z^e1) + c
  |z|<f
  ;SOURCE: 99msg.frm
}


Prueba_pop {; (c) by Miguel Fliguer 
  z=c=pixel, step1=p1, step2=p2:
  rz=real(z)
  iz=imag(z)
  z=(rz-step1*sin(rz)+tan(step2*rz))+(iz-step1*sin(iz)+tan(step2*iz))
  |z|<4
  ;SOURCE: 98msg.frm
}


pseudo-iain {; use decomp=256
  zc=pixel, c=p1, bailout=real(p2), range=imag(p2) 
  iter=1:
  iter=iter+1, zc=sqr(zc)+c, test=fn1(zc)
  IF (test<range)
    t=test/range*twopi
  ENDIF
  IF ((|zc|>bailout)||(iter==maxit))
    iter=-1
    z=cos(t)+flip(sin(t))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


PseudoLambda {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = -p1*(x - x*x + y*y) + p2
  y = -p1*(y - 2*x*y)
  z = x1 + flip(y) 
  |z| <= 100
  ;SOURCE: reb003.frm
}


PseudoMandel (XAXIS) {; davisl
                      ; try p1 = 2.7182818, p2 = 6.2831853, fn1 = sqr
  z = pixel:
  z = ((z/p1)^z)*fn1(p2*z) + pixel
  |z| <= 4
  ;SOURCE: improved.frm
}


PseudoMandelLambda {
  z = 0.5, c = pixel:
  x = real(z), y = imag(z)
  x1 = -c*(x - x*x + y*y) + p1
  y = -c*(y - 2*x*y)
  z = x1 + flip(y)
  |z| <= 100
  ;SOURCE: reb003.frm
}


PseudoZeePi {; Ron Barnett, 1993
  z = pixel:
  x = 1-z^p1
  z = z*((1-x)/(1+x))^(1/p1) + p2
  |z| <= 4
  ;SOURCE: fractint.frm
}


PsudoMandel (XAXIS) {; davisl - try center=0,0/magnification=28
  z = Pixel:
  z = ((z/2.7182818)^z)*sqr(6.2831853*z) + pixel
  |z| <= 4
  ;SOURCE: fractint.frm
}


Psyche {
  z = c = pixel
  bail = floor(|z|):
  r = z * (1/fn1(z)) + p1
  z = r * fn2(z) + c
  bail <= 4
  ;SOURCE: schizo.frm
}


Psyche_2 {
  z = c = pixel:
  r = z * (1/fn1(z)) + p1
  z = r * fn2(z) + c
  floor(|Z|) <= 4
  ;SOURCE: schizo_2.frm
}


Psyche_Test {; by Presogna
  z = c = pixel
  bail = floor(|z|):
  r = z * (1/asin(z)) + p1
  z = r * (z*z) + c
  bail <= 4
  ;SOURCE: psyche.frm
}


Psyche_Test1 {; identical to Psyche_Test  (by Gallet)
  z = c = pixel :
  r = z * (1/asin(z)) + p1
  z = r * (z*z) + c
  ;SOURCE: psyche.frm
}


Psyche_Test2 {; by Gallet
  z = c = pixel
  bail = floor(|z|):
  z = (z*z) + c
  bail <= 4
  ;SOURCE: psyche.frm
}


psycho (XAXIS) {
   ;  Another nice two function variation
  z = pixel, zp = (0,0):
  temp = z
  z = z*z - zp
  zp = sin(-temp)
  |zp| <= 4 
  ;SOURCE: noel.frm
}


ptc+3mandels {; Sylvie Gallet [101324,3444], 1996  Requires passes=1
              ; 24-bit ptc
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  c = r == 0, c1 = p1 * (r == 1)
  c2 = p2 * (r == 2)
  z = c = pixel * (c + c1 + c2) :
   z = z * z + c
    |z| <= 4
  ;SOURCE: phc.frm
}


ptc+4mandels {; Sylvie Gallet [101324,3444], 1996
              ; 32-bit Pseudo-TrueColor
              ; Modified for if..else logic 3/21/97 by Sylvie Gallet
   cr = real(scrnpix) + 2*imag(scrnpix)
   r = cr - 4 * trunc(cr / 4)
   IF (r == 0)
      z = c = pixel
   ELSEIF (r == 1)
      z = c = pixel * p1
   ELSEIF (r == 2)
      z = c = pixel * p2
   ELSE
      z = c = pixel * p3
   ENDIF
   :
   z = z * z + c
   |z| <= 4
  ;SOURCE: fract196.frm
}


ptc+mjn {; Sylvie Gallet [101324,3444], 1996
         ; Modified for if..else logic 3/19/97 by Sylvie Gallet
         ; 24-bit Pseudo-TrueColor
         ; Mandel: z^2 + c , Julia: z^2 + p1 , Newton: z^p2 - 1 = 0
   cr = real(scrnpix) + imag(scrnpix)
   r = cr - 3 * trunc(cr / real(3)), z = pixel
   IF (r == 0)
      c = pixel, b1 = 256
   ELSEIF (r == 1)
      c = p1, b1 = 256
   ELSE
      c = 0, b2 = 0.000001, ex = p2 - 1
   ENDIF
   :
   IF (r == 2)
      zd = z^ex, n = zd*z - 1
      z = z - n / (p2*zd), continue = (|n| >= b2)
   ELSE
      z = z*z + c, continue = (|z| <= b1)
   ENDIF
   continue
  ;SOURCE: fract196.frm
}


ptc_4m_A {; overlay four Mandels with different initializations
          ; and bailout tests
          ; Isn't it terrific???
          ; Modified for if..else logic, April 1997
  cr = real(scrnpix) + 2 * imag(scrnpix)
  r = cr - 4 * trunc(cr / 4)
  IF (r == 0)
     z = c = sin(pixel)
  ELSEIF (r == 1)
     z = c = pixel
  ELSEIF (r == 2)
     z = c = 1/pixel
  ELSE
     z = c = -pixel
  ENDIF
  :
  z = z*z + c
  IF (r == 0)
     PTC_bailout = |real(z)| <= 4
  ELSEIF (r == 1)
     PTC_bailout = |z| <= 4
  ELSEIF (r == 2)
     PTC_bailout = |imag(z)| <= 4
  ELSE
     PTC_bailout = |real(z)+imag(z)| <= 4
  ENDIF
  PTC_bailout
  ;SOURCE: phctutor.frm
}


ptc_mjn_A {; overlay the Mandel set of z^2 + c with the Julia set
           ; of z^2 + (-0.75,0.1234) and the Julia set of Newton's
           ; method applied to z^3 - 1 = 0
           ; Modified for if..else logic, April 1997
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  z = pixel
  IF (r == 0)
     c = pixel
  ELSEIF (r == 1)
     c = (-0.75,0.1234)
  ENDIF
  :
  IF (r == 2)
     n = z^3 - 1, d = 3*z^2, z = z - n/d
     PTC_bailout = |n| >= 0.000001
  ELSE
     z = z*z + c
     PTC_bailout = |z| <= 4
  ENDIF
  PTC_bailout
  ;SOURCE: phctutor.frm
}


ptc_mjn_B {; overlay the Mandel set of z^2 + c with the Julia set
           ; of z^2 + (-0.75,0.1234) and the Julia set of Newton's
           ; method applied to z^3 - 1 = 0
           ; Modified for if..else logic, April 1997
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  z = pixel
  IF (r == 0)
     c = pixel
  ELSEIF (r == 1)
     c = (-0.75,0.1234)
  ENDIF
  :
  IF (r == 2)
     z2 = z*z, n = z2*z - 1, d = 3*z2, z = z - n/d
     PTC_bailout = |n| >= 0.000001
  ELSE
     z = z*z + c
     PTC_bailout = |z| <= 4
  ENDIF
  PTC_bailout
  ;SOURCE: phctutor.frm
}


punkt-2 {; Original formula by Guy Marson
         ; Optimized by Sylvie Gallet
         ; 'periodicity=0' and 'passes=1' recommended
  width = real(scrnmax/10)
  x = trunc(real(scrnpix)/width + 0.5)
  y = trunc(imag(scrnmax - scrnpix)/width/0.75)
  IF ( x+y == 2*trunc((x+y)/2) )
    pix = sin(.5*pixel)
  ELSE
    pix = 1/(32*pixel)
  ENDIF
         ; Import of formula 'Nwtbumps3' from file _N.FRM
  z = pix + fn1( fn2( fn3( (pix/|pix|) * exp( p2 * |pix|))))
  Root = 1, p1_1 = p1 - 1, zp1_1 = z^p1_1
  a = 1 - 1/p1, b = root/p1 :
  z = a*z + b/zp1_1
  zp1_1 = z^p1_1
  .001 <= |zp1_1*z - Root|
  ;SOURCE: 99msg.frm
}


purse {; Giuseppe Zito
  z = pixel
  c3 = -0.995286
  d0 = 0.737082
  d4 = -0.930929
  d7 = -0.301807
  d8 = -0.593822
  : 
  x = real(z), y = imag(z)
  s0 = x
  s0 = s0 /c3
  s0 = s0 +x
  s0 = s0 /y
  s0 = s0 -y
  newx = s0 
  s0 =d0
  s0 = s0 /d4
  s0 = s0 +x
  s0 = s0 +d7
  s0 = s0 -d8
  s0 = s0 /x
  s0 = s0 /x
  s0 = s0 -x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


pwr-bug-1 {
  z = 0, c = pixel:
  z = z^3 + c
  |z| <= 4
  ;SOURCE: pwr-bug.par
}


pwr-bug-2 {
  z = 0, c = pixel, a = 3:
  z = z^a + c
  |z| <= 4
  ;SOURCE: pwr-bug.par
}


pwr-bug-3 {
  z = 1, c = pixel, a = 3:
  z = z^a + c
  |z| <= 4
  ;SOURCE: pwr-bug.par
}


pwr-bug-4 {
  z = 0, c = pixel:
  z = z^p1 + c
  |z| <= 4
  ;SOURCE: pwr-bug.par
}


px1 {
  z=pixel, t=fn1(real(z+p3)), x=z+(z/pi), y=z+(z/pi):
  x=(x*p1)
  y=(y*p2)/pi 
  z=fn4(x-1)+fn3(y)
  z=(fn2(whitesqr==0)*x)-(fn3(whitesqr)+z)
  |z|>=4
  ;SOURCE: ad5.frm
}


pxa0b4 {
  z=pixel:
  n=(log(z*p1)/p2)+(fn4(z+1)/2)+whitesq
  z=(fn1(n)+(fn2((.02,1.1)+(n-z))/z-1))*fn3(tan(z)/whitesq)
  |z|<p3
  ;SOURCE: ad5.frm
}


pxtest2 {
  u=sqrt(p1)+whitesq
  z=pixel:
  x= z*(u-1)/whitesq, y=z*u/2
  x1=fn1(1-fn2(p2*z))
  y1=(y+fn2(p2*x))
  z1=x1*fn1(y1)
  z=z1+x1*y1
  |z|<p3
  ;SOURCE: ad5.frm
}


pxtest5 {
  u=flip(sqr(p1)+whitesq)
  z=pixel :
  x= imag(z*(u-1)/whitesq), y=real(1-z/2)
  x1=fn1(y+fn2(p2*z))
  y1=fn1(z+fn2(p2*x))
  z1=fn1(x+fn2(p2*y))
  z=fn3(z1+x1)*fn4(j+y1*j2)
  |z|<p3
  ;SOURCE: ad5.frm
}


pxtest6 {
  z = pixel:
  r = fn1(z)*tan(real(z))
  z2 =((r*z)-1)*(real(z/p1))
  o = fn3(sin(z) +fn2(z+whitesq))
  z = (whitesq+(z2+o))*(whitesq-z)
  |z| <4
  ;SOURCE: ad5.frm
}


pxtest7 {
  u=flip(sqr(p1)+whitesq)
  z=pixel :
  x= (z*(u-1)/(whitesq)), y=(z*2)/(whitesq/2)
  x1=fn1(y+fn2(p2*z))
  y1=fn1(z+fn2(p2*x))
  z1=fn1(x+fn2(p2*y))
  z=fn3(z1+x1*j)+fn4(y1*j2)
  |z|<p3
  ;SOURCE: ad5.frm
}


pxtest8 {
  u=(sqr(p1)+whitesq)
  z=pixel :
  x= z*(u-1)/whitesq, y=z*(1/(u/2))
  x1=fn1(y+fn2(p2*z))
  y1=y-p1*fn1(z+fn2(p+whitesq/2*x))
  z1=z-p1*fn1(x+fn2(p2*y))
  z=z1+x1*y1
  |z|<p3
  ;SOURCE: ad978-1.frm
}


pxx02 {
  z=pixel
  c=pixel+(whitesq):
  z=fn1(c-(fn2(exp(z)/log(tan(z)*cos(z+c)))/fn4(cosxx(z))))
  |z|<4
  ;SOURCE: ad5.frm
}


py1 {
  z=pixel, t=fn1(z-1):
  z1=fn2(pixel)/fn3(whitesq+(conj(z/3)))
  z2=fn2(z1)+(z+t+pixel)
  z=((z1)+conj(t))-(whitesq/fn4(z2))
  |z|<=4
  ;SOURCE: ad5.frm
}


py10 {
  z=pixel:
  x=fn1(z-p1), y=fn1(z-p2)
  x1=fn2(x*y)-(1/z), y1=fn2((x*y)/whitesq)
  z=fn3((x1)+(y1))
  |z|<4
  ;SOURCE: missing.frm
}


py11 {
  z=pixel, n=tan(pixel*p1), m=cotan(pixel*p1):
  x=fn1(n+p1), y=fn1((m*p1)+p1)
  x1=fn2(x+whitesq), y1=fn2(y+whitesq)
  z=fn3(flip(x1)^flip(y1))+(fn4(x+y)-(n^m))
  |z|<4
  ;SOURCE: missing.frm
}


py12 {
  z=pixel:
  x=fn1(z-p1)/pi, y=fn1(z-p2)/e
  x1=fn2((x*y)^1/z)+whitesq, y1=fn2((x*y)/whitesq)
  z=fn3((x1)+fn4(y1))
  |z|<4
  ;SOURCE: missing.frm
}


py3 {
  c=pixel, z=fn1(pixel)+(1-pixel):
  z=fn4(fn2(z)+whitesq)+fn3(c/whitesq)
  c=p1-conj(flip(c))
  |c|<=4
  ;SOURCE: missing.frm
}


py4{
  c=pixel, z=fn1(pixel):
  z=fn1(fn2(z))+(fn3(c)/whitesq)
  c=fn4(flip(c)+conj(z))
  |z|<=4
  ;SOURCE: ad5.frm
}


py6 {
  z=pixel, u=(tan(z+1)*fn3(z)):
  x=u-z, y=z*u/2
  x1=fn1(y+fn2(u/z))/p2
  y1=y*fn1(x+fn2(z+x))
  z1=z*fn1(x+fn2(p2*y))
  z=fn2(z1+x1)+fn4(z1+y1)
  z=((fn3(z/((22/7)))/whitesq))-fn2(u)
  |z|<=4
  ;SOURCE: ad5.frm
}


py7 {
  z=pixel:
  z=(fn1(z+tan(real(whitesq))))*fn2(((22/7))+(z))/(whitesq-1)
  z=fn1(pixel*z)/fn4(real(z+(whitesq)))
  |z|<=4
  ;SOURCE: ad5.frm
}


py9 {
  z=pixel, n=real(pixel*p1), m=imag(pixel*p1):
  x=fn1(n*e), y=fn1(m*pi)
  x1=fn2(x+whitesq), y1=fn2(y+whitesq)
  z=fn3(flip(x1)^flip(y1))+(fn4(x+y)-(n^m))
  |z|<4
  ;SOURCE: ad5.frm
}

