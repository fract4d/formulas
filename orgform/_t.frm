

T.B.Quest {
  z = c = pixel:
  z = z + p1
  z = (z * fn1(sqrt(z))) / fn2(c) 
  z = z  +  sqr(c)
  |z| < 4
  ;SOURCE: d-rock.frm
}


T02-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (Euler method)
        ;
        ; T(n+1) = 2xT(n)-T(n-1)
        ; T(0)  = 1
        ; T(1)  = x
        ;
        ; = 2zT01-T00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(x+x)*x-1
  Ty=(y+y)*y-1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


T02-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; Chebyshev Types:
                 ; Inspired by Clifford A. Pickover:
                 ; Dynamic
                 ; 
                 ; T(n+1) = 2zT(n)-T(n-1)
                 ; T(0)  = 1
                 ; T(1)  = z
                 ;
                 ; = 2zT01-T00
  bailout=p1+4, z=pixel:
  z=2*z*z-1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


T02-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Julia)
        ; 
        ; T(n+1) = 2zT(n)-T(n-1)
        ; T(0)  = 1
        ; T(1)  = z
        ;
        ; = 2zT01-T00
  const=p1-1, z=pixel:
  z=(z+z)*z+const
  |z|<100
  ;SOURCE: chby3.frm
}


T02-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Mandelbrot)
        ; 
        ; T(n+1) = 2zT(n)-T(n-1)
        ; T(0)  = 1
        ; T(1)  = z
        ;
        ; = 2zT01-T00
  const=pixel-1, z=p1:
  z=(z+z)*z+const
  |z|<100
  ;SOURCE: chby4.frm
}


T02-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Newton Method
        ; 
        ; T(n+1) = 2zT(n)-T(n-1)
        ; T(0)  = 1
        ; T(1)  = z
        ;
        ; = 2zT01-T00
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=2*z*z-1
  fd=4*z
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


T02-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Halley Method
        ; 
        ; T(n+1) = 2zT(n)-T(n-1)
        ; T(0)  = 1
        ; T(1)  = z
        ;
        ; = 2zT01-T00
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(z+z)*z-1
  fd=4*z
  oz=z
  z=z-r*f/(fd-(f+f)/fd)
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


T02-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; Chebyshev Types:
                 ; Inspired by Bradley Beacham
                 ; Cubic Method
                 ; 
                 ; T(n+1) = 2zT(n)-T(n-1)
                 ; T(0)  = 1
                 ; T(1)  = z
                 ;
                 ; = 2zT01-T00
  bailout=real(p2)/10000, z=pixel:
  f=(z+z)*z-1
  fd=4*z
  oz=z
  w=z-f/fd
  fw=(w+w)*w-1
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


T02-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler method)
        ; 
        ; T(n+1) = 2xT(n)-T(n-1)
        ; T(0)  = 1
        ; T(1)  = x
        ;
        ; = 2zT01-T00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin((x+x)*x-1)
  Ty=sin((y+y)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


T02-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler Method)
        ; 
        ; T(n+1) = 2xT(n)-T(n-1)
        ; T(0)  = 1
        ; T(1)  = x
        ;
        ; = 2zT01-T00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((x+x)*x-1)
  Ty=fn1((y+y)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


T02-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Mike Wareman:
        ; Secant Method
        ; 
        ; T(n+1) = 2zT(n)-T(n-1)
        ; T(0)  = 1
        ; T(1)  = z
        ;
        ; = 2zT01-T00
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(p1+p1)*p1-1:
  zt=z
  foz=fz
  fz=(z+z)*z-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


T02-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Julia)
        ; 
        ; T(n+1) = 2zT(n)-T(n-1)
        ; T(0)  = 1
        ; T(1)  = z
        ;
        ; = 2zT01-T00
  const=p1, z=pixel:
  z=((z+z)*z-1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


T02-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Mandelbrot)
        ; 
        ; T(n+1) = 2zT(n)-T(n-1)
        ; T(0)  = 1
        ; T(1)  = z
        ;
        ; = 2zT01-T00
  const=pixel, z=p1:
  z=((z+z)*z-1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


T02-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Halley Method with weird bailout test
        ; 
        ; T(n+1) = 2zT(n)-T(n-1)
        ; T(0)  = 1
        ; T(1)  = z
        ;
        ; = 2zT01-T00
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=2*z*z-1
  fd=4*z
  fdd=4
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


T02-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; Chebyshev Types:
                 ; Inspired by Bradley Beacham
                 ; Cubic Method with weird bailout test
                 ; 
                 ; T(n+1) = 2zT(n)-T(n-1)
                 ; T(0)  = 1
                 ; T(1)  = z
                 ;
                 ; = 2zT01-T00
  bailout=real(p2)/10000, z=pixel:
  f=(z+z)*z-1
  fd=4*z
  oz=z
  w=z-f/fd
  fw=(w+w)*w-1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


T02-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Newton Method with weird bailout test
        ; 
        ; T(n+1) = 2zT(n)-T(n-1)
        ; T(0)  = 1
        ; T(1)  = z
        ;
        ; = 2zT01-T00
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=2*z*z-1
  fd=4*z
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


T02-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Mike Wareman:
        ; Secant Method with weird bailout test
        ; 
        ; T(n+1) = 2zT(n)-T(n-1)
        ; T(0)  = 1
        ; T(1)  = z
        ;
        ; = 2zT01-T00
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(p1+p1)*p1-1:
  zt=z
  foz=fz
  fz=(z+z)*z-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


T02-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Mike Wareman
        ; Secant Method with Girvan perturbations and weird bailout test
        ; 
        ; T(n+1) = 2zT(n)-T(n-1)
        ; T(0)  = 1
        ; T(1)  = z
        ;
        ; = 2zT01-T00
  z=pixel, oz=0
  fz=-1
  zt=fn1(z)+p1:
  foz=fz
  fz=(z+z)*z-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


T02-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Mike Wareman
        ; Secant Method with Girvan perturbations and weird bailout test
        ; 
        ; T(n+1) = 2zT(n)-T(n-1)
        ; T(0)  = 1
        ; T(1)  = z
        ;
        ; = 2zT01-T00
  z=pixel, oz=0
  fz=-1
  zt=fn1(z)+p1:
  foz=fz
  fz=(z+z)*z-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


T02-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (Implicit Euler method)
        ; 
        ; T(n+1) = 2xT(n)-T(n-1)
        ; T(0)  = 1
        ; T(1)  = x
        ;
        ; = 2zT01-T00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*((x+x)*x-1)
  x=x-t*((y+y)*y-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


T02-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler method)
        ; 
        ; T(n+1) = 2xT(n)-T(n-1)
        ; T(0)  = 1
        ; T(1)  = x
        ;
        ; = 2zT01-T00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin((x+x)*x-1)
  x=x-t*sin((y+y)*y-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


T02-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler Method)
        ; 
        ; T(n+1) = 2xT(n)-T(n-1)
        ; T(0)  = 1
        ; T(1)  = x
        ;
        ; = 2zT01-T00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1((x+x)*x-1))
  x=x-t*(fn1((y+y)*y-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


T02-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler method)
        ; 
        ; T(n+1) = 2xT(n)-T(n-1)
        ; T(0)  = 1
        ; T(1)  = x
        ;
        ; = 2zT01-T00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((x+x)*x-1)
  Ty=fn2((y+y)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


T02-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler method)
        ; 
        ; T(n+1) = 2xT(n)-T(n-1)
        ; T(0)  = 1
        ; T(1)  = x
        ;
        ; = 2zT01-T00
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1((x+x)*x-1)
  Ty=fn2((y+y)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


T02-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler Method)
        ; 
        ; T(n+1) = 2xT(n)-T(n-1)
        ; T(0)  = 1
        ; T(1)  = x
        ;
        ; = 2zT01-T00
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1((x+x)*x-1))
  x=x-t*(fn2((y+y)*y-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


T02-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler Method)
        ; 
        ; T(n+1) = 2xT(n)-T(n-1)
        ; T(0)  = 1
        ; T(1)  = x
        ;
        ; = 2zT01-T00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1((x+x)*x-1))
  x=x-t*(fn2((y+y)*y-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


T02-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens 
        ; Chebyshev Types:
        ; Inspired by Kathy Roth:
        ; Dynamic (modified implicit Euler Method, gravitated)
        ;
        ; Tchebychev polynomials
        ; T[0]=1
        ; T[1]=z
        ; T[n+1]=2zT[n]-T[n-1]
        ;
        ; = 2zT01-T00
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1((x+x)*x-1))
  Ty=(fn1((y+y)*y-1))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


T02-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Kathy Roth:
        ; Dynamic (modified implicit Euler Method, popped)
        ;
        ; Tchebychev polynomials
        ; T[0]=1
        ; T[1]=z
        ; T[n+1]=2zT[n]-T[n-1]
        ;
        ; = 2zT01-T00
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1((x+x)*x-1))
  Ty=(fn1((y+y)*y-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


T02-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Kathy Roth:
        ; Dynamic (modified implicit Euler Method, popped)
        ;
        ; Tchebychev polynomials
        ; T[0]=1
        ; T[1]=z
        ; T[n+1]=2zT[n]-T[n-1]
        ;
        ; = 2zT01-T00
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1((x+x)*x-1))
  Ty=(fn1((y+y)*y-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


T02-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler method, Sylvie Gallet test)
        ;
        ; Tchebychev polynomials
        ; T[0]=1
        ; T[1]=z
        ; T[n+1]=2zT[n]-T[n-1]
        ;
        ; = 2zT01-T00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1((x+x)*x-1))
  Ty=(fn1((y+y)*y-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


T02-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Ray Parracho
        ; Regula-Falsi Method
        ;
        ; Tchebychev polynomials
        ; T[0]=1
        ; T[1]=z
        ; T[n+1]=2zT[n]-T[n-1]
        ;
        ; = 2zT01-T00
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=(x0+x0)*x0-1
  Fx1=(x1+x1)*x1-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


T03-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(4*x*x-3)
  Ty=y*(4*y*y-3)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


T03-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT02-T01
  bailout=p1+4, z=pixel:
  z=z*(4*z*z-3)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


T03-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  const=p1, z=pixel:
  z=z*(4*z*z-3)+const
  |z|<100
  ;SOURCE: chby3.frm
}


T03-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  const=pixel, z=p1:
  z=z*(4*z*z-3)+const
  |z|<100
  ;SOURCE: chby4.frm
}


T03-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(4*zz-3)
  fd=12*zz-3
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


T03-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(4*zz-3)
  fd=12*zz-3
  oz=z
  z=z-r*f/(fd-12*z*f/fd)
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


T03-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT02-T01
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(4*zz-3)
  fd=12*zz-3
  oz=z
  w=z-f/fd
  fw=w*(4*w*w-3)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


T03-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(x*(4*x*x-3))
  Ty=sin(y*(4*y*y-3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


T03-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(4*x*x-3))
  Ty=fn1(y*(4*y*y-3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


T03-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(4*p1*p1-3):
  zt=z
  foz=fz
  fz=z*(4*z*z-3)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


T03-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  const=p1, z=pixel:
  z=z*(4*z*z-3)*const
  |z|<100
  ;SOURCE: chby11.frm
}


T03-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  const=pixel, z=p1:
  z=z*(4*z*z-3)*const
  |z|<100
  ;SOURCE: chby12.frm
}


T03-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(4*zz-3)
  fd=12*zz-3
  fdd=24*z
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


T03-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT02-T01
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(4*zz-3)
  fd=12*zz-3
  oz=z
  w=z-f/fd
  fw=w*(4*w*w-3)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


T03-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(4*zz-3)
  fd=12*zz-3
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


T03-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(4*p1*p1-3):
  zt=z
  foz=fz
  fz=z*(4*z*z-3)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


T03-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(4*z*z-3)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


T03-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(4*z*z-3)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


T03-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(x*(4*x*x-3))
  x=x-t*(y*(4*y*y-3))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


T03-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(x*(4*x*x-3))
  x=x-t*sin(y*(4*y*y-3))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


T03-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(4*x*x-3)))
  yy=y*y
  x=x-t*(fn1(y*(4*y*y-3)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


T03-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(4*x*x-3))
  Ty=fn2(y*(4*y*y-3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


T03-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(4*x*x-3))
  Ty=fn2(y*(4*y*y-3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


T03-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(4*x*x-3)))
  x=x-t*(fn2(y*(4*y*y-3)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


T03-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(4*x*x-3)))
  x=x-t*(fn2(y*(4*y*y-3)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


T03-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(x*(4*x*x-3)))
  Ty=(fn1(y*(4*y*y-3)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


T03-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(4*x*x-3)))
  Ty=(fn1(y*(4*y*y-3)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


T03-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(4*x*x-3)))
  Ty=(fn1(y*(4*y*y-3)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


T03-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1(x*(4*x*x-3)))
  Ty=(fn1(y*(4*y*y-3)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


T03-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(4*x0*x0-3)
  Fx1=x1*(4*x1*x1-3)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


T04-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=8*xx*(xx-1)+1
  Ty=8*yy*(yy-1)+1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


T04-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT03-T02
  bailout=p1+4, z=pixel:
  zz=z*z
  z=8*zz*(zz-1)+1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


T04-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  const=p1+1, z=pixel:
  zz=z*z
  z=8*zz*(zz-1)+const
  |z|<100
  ;SOURCE: chby3.frm
}


T04-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  const=pixel+1, z=p1:
  zz=z*z
  z=8*zz*(zz-1)+const
  |z|<100
  ;SOURCE: chby4.frm
}


T04-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=8*zz*(zz-1)+1
  fd=16*z*(2*zz-1)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


T04-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=8*zz*(zz-1)+1
  fd=16*z*(zz+zz-1)
  fdd=16*(6*zz-1)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


T04-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT03-T02
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=8*zz*(zz-1)+1
  fd=16*z*(zz+zz-1)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=8*ww*(ww-1)+1
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


T04-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(8*xx*(xx-1)+1)
  Ty=sin(8*yy*(yy-1)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


T04-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(8*xx*(xx-1)+1)
  Ty=fn1(8*yy*(yy-1)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


T04-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=8*zz*(zz-1)+1:
  zz=z*z
  zt=z
  foz=fz
  fz=8*zz*(zz-1)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


T04-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  const=p1, z=pixel:
  zz=z*z
  z=(8*zz*(zz-1)+1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


T04-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  const=pixel, z=p1:
  zz=z*z
  z=(8*zz*(zz-1)+1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


T04-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=8*zz*(zz-1)+1
  fd=16*z*(2*zz-1)
  fdd=16*(6*zz-1)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


T04-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT03-T02
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=8*zz*(zz-1)+1
  fd=16*z*(zz+zz-1)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=8*ww*(ww-1)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


T04-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=8*zz*(zz-1)+1
  fd=16*z*(2*zz-1)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


T04-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=8*zz*(zz-1)+1:
  zz=z*z
  zt=z
  foz=fz
  fz=8*zz*(zz-1)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


T04-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  z=pixel, oz=0
  fz=1
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=8*zz*(zz-1)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


T04-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  z=pixel, oz=0
  fz=1
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=8*zz*(zz-1)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


T04-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(8*xx*(xx-1)+1)
  yy=y*y
  x=x-t*(8*yy*(yy-1)+1)
  x=x-t*Fy, y=y+F*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


T04-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(8*xx*(xx-1)+1)
  yy=y*y
  x=x-t*sin(8*yy*(yy-1)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


T04-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(8*xx*(xx-1)+1))
  yy=y*y
  x=x-t*(fn1(8*yy*(yy-1)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


T04-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(8*xx*(xx-1)+1)
  Ty=fn2(8*yy*(yy-1)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


T04-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(8*xx*(xx-1)+1)
  Ty=fn2(8*yy*(yy-1)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


T04-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(8*xx*(xx-1)+1))
  yy=y*y
  x=x-t*(fn2(8*yy*(yy-1)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


T04-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(8*xx*(xx-1)+1))
  yy=y*y
  x=x-t*(fn2(8*yy*(yy-1)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


T04-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(8*xx*(xx-1)+1))
  yy=y*y
  Ty=(fn1(8*yy*(yy-1)+1))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


T04-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(8*xx*(xx-1)+1))
  yy=y*y
  Ty=(fn1(8*yy*(yy-1)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


T04-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(8*xx*(xx-1)+1))
  yy=y*y
  Ty=(fn1(8*yy*(yy-1)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


T04-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(8*xx*(xx-1)+1))
  yy=y*y
  Ty=(fn1(8*yy*(yy-1)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


T04-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=8*xx*(xx-1)+1
  Fx1=8*yy*(yy-1)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


T05-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x*x, ay=4*y*y
  Tx=x*(ax*(ax-5)+5)
  Ty=x*(ay*(ay-5)+5)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


T05-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT04-T03
  bailout=p1+4, z=pixel:
  a=4*z*z
  z=z*(a*(a-5)+5)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


T05-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  const=p1, z=pixel:
  a=4*z*z
  z=z*(a*(a-5)+5)+const
  |z|<100
  ;SOURCE: chby3.frm
}


T05-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  const=pixel, z=p1:
  zz=z*z
  a=4*z*z
  z=z*(a*(a-5)+5)+const
  |z|<100
  ;SOURCE: chby4.frm
}


T05-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  f=z*(a*(a-5)+5)
  fd=20*zz*(a-3)+5
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


T05-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  f=z*(a*(a-5)+5)
  fd=20*zz*(4*zz-3)+5
  fdd=40*z*(8*zz-3)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


T05-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT04-T03
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  f=z*(a*(a-5)+5)
  fd=20*zz*(a-3)+5
  oz=z
  w=z-f/fd
  a=4*w*w
  fw=w*(a*(a-5)+5)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


T05-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x*x, ay=4*y*y
  Tx=sin(x*(ax*(ax-5)+5))
  Ty=sin(x*(ay*(ay-5)+5))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


T05-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x*x, ay=4*y*y
  Tx=fn1(x*(ax*(ax-5)+5))
  Ty=fn1(x*(ay*(ay-5)+5))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


T05-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1*p1
  fz=p1*(a*(a-5)+5):
  a=4*z*z
  zt=z
  foz=fz
  fz=z*(a*(a-5)+5)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


T05-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  const=p1, z=pixel:
  a=4*z*z
  z=z*(a*(a-5)+5)*const
  |z|<100
  ;SOURCE: chby11.frm
}


T05-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  const=pixel, z=p1:
  a=4*z*z
  z=z*(a*(a-5)+5)*const
  |z|<100
  ;SOURCE: chby12.frm
}


T05-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  f=z*(a*(a-5)+5)
  fd=20*zz*(4*zz-3)+5
  fdd=40*z*(8*zz-3)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


T05-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT04-T03
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  f=z*(a*(a-5)+5)
  fd=20*zz*(a-3)+5
  oz=z
  w=z-f/fd
  a=4*w*w
  fw=w*(a*(a-5)+5)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


T05-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  f=z*(a*(a-5)+5)
  fd=20*zz*(a-3)+5
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


T05-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1*p1
  fz=p1*(a*(a-5)+5):
  a=4*z*z
  zt=z
  foz=fz
  fz=z*(a*(a-5)+5)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


T05-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  z=pixel, oz=0
  fz=0
  a=4*z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(a*(a-5)+5)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


T05-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  z=pixel, oz=0
  fz=0
  a=4*z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(a*(a-5)+5)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


T05-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x*x
  y=y+t*(x*(ax*(ax-5)+5))
  ay=4*y*y
  x=x-t*(x*(ay*(ay-5)+5))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


T05-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x*x
  y=y+t*sin(x*(ax*(ax-5)+5))
  ay=4*y*y
  x=x-t*sin(x*(ay*(ay-5)+5))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


T05-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x*x
  y=y+t*(fn1(x*(ax*(ax-5)+5)))
  ay=4*y*y
  x=x-t*(fn1(x*(ay*(ay-5)+5)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


T05-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x*x, ay=4*y*y
  Tx=fn1(x*(ax*(ax-5)+5))
  Ty=fn2(x*(ay*(ay-5)+5))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


T05-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x*x, ay=4*y*y
  Tx=fn1(x*(ax*(ax-5)+5))
  Ty=fn2(x*(ay*(ay-5)+5))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


T05-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x*x
  y=y+t*(fn1(x*(ax*(ax-5)+5)))
  ay=4*y*y
  x=x-t*(fn2(x*(ay*(ay-5)+5)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


T05-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x*x
  y=y+t*(fn1(x*(ax*(ax-5)+5)))
  ay=4*y*y
  x=x-t*(fn2(x*(ay*(ay-5)+5)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


T05-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  ax=4*x*x
  Tx=(fn1(x*(ax*(ax-5)+5)))
  ay=4*y*y
  Ty=(fn1(x*(ay*(ay-5)+5)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


T05-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  ax=4*x*x
  Tx=(fn1(x*(ax*(ax-5)+5)))
  ay=4*y*y
  Ty=(fn1(x*(ay*(ay-5)+5)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


T05-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  ax=4*x*x
  Tx=(fn1(x*(ax*(ax-5)+5)))
  ay=4*y*y
  Ty=(fn1(x*(ay*(ay-5)+5)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


T05-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x*x
  Tx=(fn1(x*(ax*(ax-5)+5)))
  ay=4*y*y
  Ty=(fn1(x*(ay*(ay-5)+5)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


T05-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax=4*x0*x0, ax1=4*x1*x1
  Fx0=x0*(ax*(ax-5)+5)
  Fx1=x0*(ax1*(ax1-5)+5)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


T06-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=xx+xx, ay=yy+yy
  Tx=ax*(8*xx*(ax-3)+9)-1
  Ty=ay*(8*yy*(ay-3)+9)-1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


T06-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT05-T04
  bailout=p1+4, z=pixel:
  zz=z*z
  a=2*zz
  z=a*(8*zz*(a-3)+9)-1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


T06-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  const=p1-1, z=pixel:
  zz=z*z
  a=zz+zz
  z=a*(8*zz*(a-3)+9)+const
  |z|<100
  ;SOURCE: chby3.frm
}


T06-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  const=pixel-1, z=p1:
  zz=z*z
  a=zz+zz
  z=a*(8*zz*(a-3)+9)+const
  |z|<100
  ;SOURCE: chby4.frm
}


T06-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  f=a*(8*zz*(a-3)+9)-1
  fd=12*z*(16*zz*(zz-1)+3)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


T06-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  f=a*(8*zz*(a-3)+9)-1
  fd=12*z*(16*zz*(zz-1)+3)
  fdd=12*(16*zz*(5*zz-3)+3)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


T06-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT05-T04
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  f=a*(8*zz*(a-3)+9)-1
  fd=32*z*(3*zz*(zz-2)+1)
  oz=z
  w=z-f/fd
  ww=w*w
  a=ww+ww
  fw=a*(8*ww*(a-3)+9)-1
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


T06-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=xx+xx, ay=yy+yy
  Tx=sin(ax*(8*xx*(ax-3)+9)-1)
  Ty=sin(ay*(8*yy*(ay-3)+9)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


T06-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=xx+xx, ay=yy+yy
  Tx=fn1(ax*(8*xx*(ax-3)+9)-1)
  Ty=fn1(ay*(8*yy*(ay-3)+9)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


T06-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  a=zz+zz
  fz=a*(8*zz*(a-3)+9)-1:
  zz=z*z, ozz=oz*oz
  a=zz+zz
  zt=z
  foz=fz
  fz=a*(8*zz*(a-3)+9)-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


T06-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  const=p1, z=pixel:
  zz=z*z
  a=zz+zz
  z=(a*(8*zz*(a-3)+9)-1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


T06-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  const=pixel, z=p1:
  zz=z*z
  a=zz+zz
  z=(a*(8*zz*(a-3)+9)-1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


T06-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  f=a*(8*zz*(a-3)+9)-1
  fd=12*z*(16*zz*(zz-1)+3)
  fdd=12*(16*zz*(5*zz-3)+3)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


T06-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT05-T04
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  f=a*(8*zz*(a-3)+9)-1
  fd=32*z*(3*zz*(zz-2)+1)
  oz=z
  w=z-f/fd
  ww=w*w
  a=ww+ww
  fw=a*(8*ww*(a-3)+9)-1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


T06-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  f=a*(8*zz*(a-3)+9)-1
  fd=12*z*(16*zz*(zz-1)+3)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


T06-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  a=zz+zz
  fz=a*(8*zz*(a-3)+9)-1:
  zz=z*z, ozz=oz*oz
  a=zz+zz
  zt=z
  foz=fz
  fz=a*(8*zz*(a-3)+9)-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


T06-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  z=pixel, oz=0
  fz=-1
  zz=z*z, ozz=oz*oz
  a=zz+zz
  zt=fn1(z)+p1:
  foz=fz
  fz=a*(8*zz*(a-3)+9)-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


T06-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  z=pixel, oz=0
  fz=-1
  zz=z*z, ozz=oz*oz
  a=zz+zz
  zt=fn1(z)+p1:
  foz=fz
  fz=a*(8*zz*(a-3)+9)-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


T06-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  y=y+t*(ax*(8*xx*(ax-3)+9)-1)
  yy=y*y, ay=yy+yy
  x=x-t*(ay*(8*yy*(ay-3)+9)-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


T06-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  y=y+t*sin(ax*(8*xx*(ax-3)+9)-1)
  yy=y*y, ay=yy+yy
  x=x-t*sin(ay*(8*yy*(ay-3)+9)-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


T06-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  y=y+t*(fn1(ax*(8*xx*(ax-3)+9)-1))
  yy=y*y, ay=yy+yy
  x=x-t*(fn1(ay*(8*yy*(ay-3)+9)-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


T06-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=xx+xx, ay=yy+yy
  Tx=fn1(ax*(8*xx*(ax-3)+9)-1)
  Ty=fn2(ay*(8*yy*(ay-3)+9)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


T06-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=xx+xx, ay=yy+yy
  Tx=fn1(ax*(8*xx*(ax-3)+9)-1)
  Ty=fn2(ay*(8*yy*(ay-3)+9)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


T06-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  y=y+t*(fn1(ax*(8*xx*(ax-3)+9)-1))
  yy=y*y, ay=yy+yy
  x=x-t*(fn2(ay*(8*yy*(ay-3)+9)-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


T06-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  y=y+t*(fn1(ax*(8*xx*(ax-3)+9)-1))
  yy=y*y, ay=yy+yy
  x=x-t*(fn2(ay*(8*yy*(ay-3)+9)-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


T06-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  Tx=(fn1(ax*(8*xx*(ax-3)+9)-1))
  yy=y*y, ay=yy+yy
  Ty=(fn1(ay*(8*yy*(ay-3)+9)-1))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


T06-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x, ax=xx+xx
  Tx=(fn1(ax*(8*xx*(ax-3)+9)-1))
  yy=y*y, ay=yy+yy
  Ty=(fn1(ay*(8*yy*(ay-3)+9)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


T06-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x, ax=xx+xx
  Tx=(fn1(ax*(8*xx*(ax-3)+9)-1))
  yy=y*y, ay=yy+yy
  Ty=(fn1(ay*(8*yy*(ay-3)+9)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


T06-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  Tx=(fn1(ax*(8*xx*(ax-3)+9)-1))
  yy=y*y, ay=yy+yy
  Ty=(fn1(ay*(8*yy*(ay-3)+9)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


T06-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  ax=xx+xx, ax1=yy+yy
  Fx0=ax*(8*xx*(ax-3)+9)-1
  Fx1=ax1*(8*yy*(ax1-3)+9)-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


T07-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=x*(8*xx*((xx+xx)*(4*xx-7)+7)-7)
  Ty=y*(8*yy*((yy+yy)*(4*yy-7)+7)-7)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


T07-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT06-T05
  bailout=p1+4, z=pixel:
  zz=z*z
  z=z*(8*zz*(2*zz*(4*zz-7)+7)-7)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


T07-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  const=p1, z=pixel:
  zz=z*z
  z=z*(8*zz*((zz+zz)*(4*zz-7)+7)-7)+const
  |z|<100
  ;SOURCE: chby3.frm
}


T07-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  const=pixel, z=p1:
  zz=z*z
  z=z*(8*zz*((zz+zz)*(4*zz-7)+7)-7)+const
  |z|<100
  ;SOURCE: chby4.frm
}


T07-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  b=4*zz
  f=z*(8*zz*(a*(b-7)+7)-7)
  fd=56*zz*(a*(b-5)+3)-7
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


T07-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  f=z*(8*zz*(a*(b-7)+7)-7)
  fd=56*zz*(a*(b-5)+3)+7
  fdd=112*z*(b*(6*zz-5)+3)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


T07-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT06-T05
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  f=z*(8*zz*(a*(b-7)+7)-7)
  fd=56*zz*(a*(b-5)+3)+7
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(8*ww*((ww+ww)*(4*ww-7)+7)-7)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


T07-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(x*(8*xx*((xx+xx)*(4*xx-7)+7)-7))
  Ty=sin(y*(8*yy*((yy+yy)*(4*yy-7)+7)-7))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


T07-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(8*xx*((xx+xx)*(4*xx-7)+7)-7))
  Ty=fn1(y*(8*yy*((yy+yy)*(4*yy-7)+7)-7))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


T07-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(8*zz*((zz+zz)*(4*zz-7)+7)-7):
  zz=z*z
  zt=z
  foz=fz
  fz=z*(8*zz*((zz+zz)*(4*zz-7)+7)-7)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


T07-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  const=p1, z=pixel:
  zz=z*z
  z=z*(8*zz*((zz+zz)*(4*zz-7)+7)-7)*const
  |z|<100
  ;SOURCE: chby11.frm
}


T07-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  const=pixel, z=p1:
  zz=z*z
  z=z*(8*zz*((zz+zz)*(4*zz-7)+7)-7)*const
  |z|<100
  ;SOURCE: chby12.frm
}


T07-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  b=4*zz
  f=z*(8*zz*(a*(b-7)+7)-7)
  fd=56*zz*(a*(b-5)+3)+7
  fdd=112*z*(b*(6*zz-5)+3)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


T07-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT06-T05
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  f=z*(8*zz*(a*(b-7)+7)-7)
  fd=56*zz*(a*(b-5)+3)+7
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(8*ww*((ww+ww)*(4*ww-7)+7)-7)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


T07-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  b=4*zz
  f=z*(8*zz*(a*(b-7)+7)-7)
  fd=56*zz*(a*(b-5)+3)-7
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


T07-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(8*zz*((zz+zz)*(4*zz-7)+7)-7):
  zz=z*z
  zt=z
  foz=fz
  fz=z*(8*zz*((zz+zz)*(4*zz-7)+7)-7)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


T07-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(8*zz*((zz+zz)*(4*zz-7)+7)-7)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


T07-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(8*zz*((zz+zz)*(4*zz-7)+7)-7)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


T07-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(x*(8*xx*((xx+xx)*(4*xx-7)+7)-7))
  yy=y*y
  x=x-t*(y*(8*yy*((yy+yy)*(4*yy-7)+7)-7))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


T07-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(x*(8*xx*((xx+xx)*(4*xx-7)+7)-7))
  yy=y*y
  x=x-t*sin(y*(8*yy*((yy+yy)*(4*yy-7)+7)-7))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


T07-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(8*xx*((xx+xx)*(4*xx-7)+7)-7)))
  yy=y*y
  x=x-t*(fn1(y*(8*yy*((yy+yy)*(4*yy-7)+7)-7)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


T07-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(8*xx*((xx+xx)*(4*xx-7)+7)-7))
  Ty=fn2(y*(8*yy*((yy+yy)*(4*yy-7)+7)-7))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


T07-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(8*xx*((xx+xx)*(4*xx-7)+7)-7))
  Ty=fn2(y*(8*yy*((yy+yy)*(4*yy-7)+7)-7))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


T07-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(8*xx*((xx+xx)*(4*xx-7)+7)-7)))
  yy=y*y
  x=x-t*(fn2(y*(8*yy*((yy+yy)*(4*yy-7)+7)-7)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


T07-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(8*xx*((xx+xx)*(4*xx-7)+7)-7)))
  yy=y*y
  x=x-t*(fn2(y*(8*yy*((yy+yy)*(4*yy-7)+7)-7)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


T07-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(x*(8*xx*((xx+xx)*(4*xx-7)+7)-7)))
  yy=y*y
  Ty=(fn1(y*(8*yy*((yy+yy)*(4*yy-7)+7)-7)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


T07-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(x*(8*xx*((xx+xx)*(4*xx-7)+7)-7)))
  yy=y*y
  Ty=(fn1(y*(8*yy*((yy+yy)*(4*yy-7)+7)-7)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


T07-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(x*(8*xx*((xx+xx)*(4*xx-7)+7)-7)))
  yy=y*y
  Ty=(fn1(y*(8*yy*((yy+yy)*(4*yy-7)+7)-7)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


T07-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(x*(8*xx*((xx+xx)*(4*xx-7)+7)-7)))
  yy=y*y
  Ty=(fn1(y*(8*yy*((yy+yy)*(4*yy-7)+7)-7)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


T07-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=x0*(8*xx*((xx+xx)*(4*xx-7)+7)-7)
  Fx1=x1*(8*yy*((yy+yy)*(4*yy-7)+7)-7)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


T08-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=32*xx*(xx*(4*xx*(xx-2)+5)-1)+1
  Ty=32*yy*(yy*(4*yy*(yy-2)+5)-1)+1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


T08-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT07-T06
  bailout=p1+4, z=pixel:
  zz=z*z
  z=32*zz*(zz*(4*zz*(zz-2)+5)+1)+1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


T08-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  const=p1+1, z=pixel:
  zz=z*z
  z=32*zz*(zz*(4*zz*(zz-2)+5)-1)+const
  |z|<100
  ;SOURCE: chby3.frm
}


T08-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  const=pixel+1, z=p1:
  zz=z*z
  z=32*zz*(zz*(4*zz*(zz-2)+5)-1)+const
  |z|<100
  ;SOURCE: chby4.frm
}


T08-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  b=4*zz
  f=32*zz*(zz*(b*(zz-2)+5)-1)+1
  fd=64*z*(a*(b*(a-3)+5)-1)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


T08-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  f=32*zz*(zz*(b*(zz-2)+5)-1)+1
  fd=64*z*(a*(b*(a-3)+5)-1)
  fdd=64*((zz+zz)*(a*(28*zz-30)+15)-1)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


T08-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT07-T06
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  f=32*zz*(zz*(b*(zz-2)+5)-1)+1
  fd=64*z*(a*(b*(a-3)+5)-1)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=32*ww*(ww*(4*ww*(ww-2)+5)-1)+1
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


T08-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(32*xx*(xx*(4*xx*(xx-2)+5)-1)+1)
  Ty=sin(32*yy*(yy*(4*yy*(yy-2)+5)-1)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


T08-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(32*xx*(xx*(4*xx*(xx-2)+5)-1)+1)
  Ty=fn1(32*yy*(yy*(4*yy*(yy-2)+5)-1)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


T08-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=32*zz*(zz*(4*zz*(zz-2)+5)-1)+1:
  zz=z*z
  zt=z
  foz=fz
  fz=32*zz*(zz*(4*zz*(zz-2)+5)-1)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


T08-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  const=p1, z=pixel:
  zz=z*z
  z=(32*zz*(zz*(4*zz*(zz-2)+5)-1)+1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


T08-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  const=pixel, z=p1:
  zz=z*z
  z=(32*zz*(zz*(4*zz*(zz-2)+5)-1)+1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


T08-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  b=4*zz
  f=32*zz*(zz*(b*(zz-2)+5)-1)+1
  fd=64*z*(a*(b*(a-3)+5)-1)
  fdd=64*(2*zz*(a*(28*zz-30)+15)-1)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


T08-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT07-T06
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  f=32*zz*(zz*(b*(zz-2)+5)-1)+1
  fd=64*z*(a*(b*(a-3)+5)-1)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=32*ww*(ww*(4*ww*(ww-2)+5)-1)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


T08-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  b=4*zz
  f=32*zz*(zz*(b*(zz-2)+5)-1)+1
  fd=64*z*(a*(b*(a-3)+5)-1)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


T08-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=32*zz*(zz*(4*zz*(zz-2)+5)-1)+1:
  zz=z*z
  zt=z
  foz=fz
  fz=32*zz*(zz*(4*zz*(zz-2)+5)-1)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


T08-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  z=pixel, oz=0
  fz=1
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=32*zz*(zz*(4*zz*(zz-2)+5)-1)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


T08-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  z=pixel, oz=0
  fz=1
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=32*zz*(zz*(4*zz*(zz-2)+5)-1)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


T08-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(32*xx*(xx*(4*xx*(xx-2)+5)-1)+1)
  yy=y*y
  x=x-t*(32*yy*(yy*(4*yy*(yy-2)+5)-1)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


T08-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(32*xx*(xx*(4*xx*(xx-2)+5)-1)+1)
  yy=y*y
  x=x-t*sin(32*yy*(yy*(4*yy*(yy-2)+5)-1)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


T08-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(32*xx*(xx*(4*xx*(xx-2)+5)-1)+1))
  yy=y*y
  x=x-t*(fn1(32*yy*(yy*(4*yy*(yy-2)+5)-1)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


T08-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(32*xx*(xx*(4*xx*(xx-2)+5)-1)+1)
  Ty=fn2(32*yy*(yy*(4*yy*(yy-2)+5)-1)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


T08-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(32*xx*(xx*(4*xx*(xx-2)+5)-1)+1)
  Ty=fn2(32*yy*(yy*(4*yy*(yy-2)+5)-1)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


T08-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(32*xx*(xx*(4*xx*(xx-2)+5)-1)+1))
  yy=y*y
  x=x-t*(fn2(32*yy*(yy*(4*yy*(yy-2)+5)-1)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


T08-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(32*xx*(xx*(4*xx*(xx-2)+5)-1)+1))
  yy=y*y
  x=x-t*(fn2(32*yy*(yy*(4*yy*(yy-2)+5)-1)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


T08-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(32*xx*(xx*(4*xx*(xx-2)+5)-1)+1))
  yy=y*y
  Ty=(fn1(32*yy*(yy*(4*yy*(yy-2)+5)-1)+1))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


T08-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(32*xx*(xx*(4*xx*(xx-2)+5)-1)+1))
  yy=y*y
  Ty=(fn1(32*yy*(yy*(4*yy*(yy-2)+5)-1)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


T08-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(32*xx*(xx*(4*xx*(xx-2)+5)-1)+1))
  yy=y*y
  Ty=(fn1(32*yy*(yy*(4*yy*(yy-2)+5)-1)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


T08-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(32*xx*(xx*(4*xx*(xx-2)+5)-1)+1))
  yy=y*y
  Ty=(fn1(32*yy*(yy*(4*yy*(yy-2)+5)-1)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


T08-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=32*xx*(xx*(4*xx*(xx-2)+5)-1)+1
  Fx1=32*yy*(yy*(4*yy*(yy-2)+5)-1)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


T09-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=4*xx, ay=4*yy
  Tx=x*(8*xx*((xx+xx)*(ax*(ax-9)+27)-15)+9)
  Ty=y*(8*yy*((yy+yy)*(ay*(ay-9)+27)-15)+9)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


T09-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT08-T07
  bailout=p1+4, z=pixel:
  zz=z*z
  a=4*zz
  z=z*(8*zz*(2*zz*(a*(a-9)+27)-15)+9)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


T09-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  const=p1, z=pixel:
  zz=z*z
  a=4*zz
  z=z*(8*zz*((zz+zz)*(a*(a-9)+27)-15)+9)+const
  |z|<100
  ;SOURCE: chby3.frm
}


T09-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  const=pixel, z=p1:
  zz=z*z
  a=4*zz
  z=z*(8*zz*((zz+zz)*(a*(a-9)+27)-15)+9)+const
  |z|<100
  ;SOURCE: chby4.frm
}


T09-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  b=4*zz
  f=z*(8*zz*(a*(b*(b-9)+27)-15)+9)
  fd=72*zz*(a*(b*(b-7)+15)-5)+9
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


T09-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  f=z*(8*zz*(a*(b*(b-9)+27)-15)+9)
  fd=72*zz*(a*(b*(b-7)+15)-5)+9
  fdd=144*z*(4*zz*((zz+zz)*(16*zz-21)+15)-5)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


T09-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT08-T07
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  f=z*(8*zz*(a*(b*(b-9)+27)-15)+9)
  fd=72*zz*(a*(b*(b-7)+15)-5)+9
  oz=z
  w=z-f/fd
  ww=w*w
  b=4*ww
  fw=w*(8*ww*((ww+ww)*(b*(b-9)+27)-15)+9)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


T09-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=4*xx, ay=4*yy
  Tx=sin(x*(8*xx*((xx+xx)*(ax*(ax-9)+27)-15)+9))
  Ty=sin(y*(8*yy*((yy+yy)*(ay*(ay-9)+27)-15)+9))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


T09-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=4*xx, ay=4*yy
  Tx=fn1(x*(8*xx*((xx+xx)*(ax*(ax-9)+27)-15)+9))
  Ty=fn1(y*(8*yy*((yy+yy)*(ay*(ay-9)+27)-15)+9))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


T09-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  a=4*zz
  fz=p1*(8*zz*((zz+zz)*(a*(a-9)+27)-15)+9):
  zz=z*z
  a=4*zz
  zt=z
  foz=fz
  fz=z*(8*zz*((zz+zz)*(a*(a-9)+27)-15)+9)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


T09-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  const=p1, z=pixel:
  zz=z*z
  a=4*zz
  z=z*(8*zz*((zz+zz)*(a*(a-9)+27)-15)+9)*const
  |z|<100
  ;SOURCE: chby11.frm
}


T09-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  const=pixel, z=p1:
  zz=z*z
  a=4*zz
  z=z*(8*zz*((zz+zz)*(a*(a-9)+27)-15)+9)*const
  |z|<100
  ;SOURCE: chby12.frm
}


T09-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  b=4*zz
  f=z*(8*zz*(a*(b*(b-9)+27)-15)+9)
  fd=72*zz*(a*(b*(b-7)+15)-5)+9
  fdd=144*z*(4*zz*(2*zz*(16*zz-21)+15)-5)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


T09-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT08-T07
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  f=z*(8*zz*(a*(b*(b-9)+27)-15)+9)
  fd=72*zz*(a*(b*(b-7)+15)-5)+9
  oz=z
  w=z-f/fd
  ww=w*w
  b=4*ww
  fw=w*(8*ww*((ww+ww)*(b*(b-9)+27)-15)+9)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


T09-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  b=4*zz
  f=z*(8*zz*(a*(b*(b-9)+27)-15)+9)
  fd=72*zz*(a*(b*(b-7)+15)-5)+9
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


T09-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  a=4*zz
  fz=p1*(8*zz*((zz+zz)*(a*(a-9)+27)-15)+9):
  zz=z*z
  a=4*zz
  zt=z
  foz=fz
  fz=z*(8*zz*((zz+zz)*(a*(a-9)+27)-15)+9)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


T09-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  z=pixel, oz=0
  fz=0
  zz=z*z
  a=4*zz
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(8*zz*((zz+zz)*(a*(a-9)+27)-15)+9)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


T09-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  z=pixel, oz=0
  fz=0
  zz=z*z
  a=4*zz
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(8*zz*((zz+zz)*(a*(a-9)+27)-15)+9)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


T09-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=4*xx
  y=y+t*(x*(8*xx*((xx+xx)*(ax*(ax-9)+27)-15)+9))
  yy=y*y, ay=4*yy
  x=x-t*(y*(8*yy*((yy+yy)*(ay*(ay-9)+27)-15)+9))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


T09-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=4*xx
  y=y+t*sin(x*(8*xx*((xx+xx)*(ax*(ax-9)+27)-15)+9))
  yy=y*y, ay=4*yy
  x=x-t*sin(y*(8*yy*((yy+yy)*(ay*(ay-9)+27)-15)+9))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


T09-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=4*xx
  y=y+t*(fn1(x*(8*xx*((xx+xx)*(ax*(ax-9)+27)-15)+9)))
  yy=y*y, ay=4*yy
  x=x-t*(fn1(y*(8*yy*((yy+yy)*(ay*(ay-9)+27)-15)+9)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


T09-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=4*xx, ay=4*yy
  Tx=fn1(x*(8*xx*((xx+xx)*(ax*(ax-9)+27)-15)+9))
  Ty=fn2(y*(8*yy*((yy+yy)*(ay*(ay-9)+27)-15)+9))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


T09-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=4*xx, ay=4*yy
  Tx=fn1(x*(8*xx*((xx+xx)*(ax*(ax-9)+27)-15)+9))
  Ty=fn2(y*(8*yy*((yy+yy)*(ay*(ay-9)+27)-15)+9))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


T09-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, ax=4*xx
  y=y+t*(fn1(x*(8*xx*((xx+xx)*(ax*(ax-9)+27)-15)+9)))
  yy=y*y, ay=4*yy
  x=x-t*(fn2(y*(8*yy*((yy+yy)*(ay*(ay-9)+27)-15)+9)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


T09-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=4*xx
  y=y+t*(fn1(x*(8*xx*((xx+xx)*(ax*(ax-9)+27)-15)+9)))
  yy=y*y, ay=4*yy
  x=x-t*(fn2(y*(8*yy*((yy+yy)*(ay*(ay-9)+27)-15)+9)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


T09-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x, ax=4*xx
  Tx=(fn1(x*(8*xx*((xx+xx)*(ax*(ax-9)+27)-15)+9)))
  yy=y*y, ay=4*yy
  Ty=(fn1(y*(8*yy*((yy+yy)*(ay*(ay-9)+27)-15)+9)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


T09-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x, ax=4*xx
  Tx=(fn1(x*(8*xx*((xx+xx)*(ax*(ax-9)+27)-15)+9)))
  yy=y*y, ay=4*yy
  Ty=(fn1(y*(8*yy*((yy+yy)*(ay*(ay-9)+27)-15)+9)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


T09-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x, ax=4*xx
  Tx=(fn1(x*(8*xx*((xx+xx)*(ax*(ax-9)+27)-15)+9)))
  yy=y*y, ay=4*yy
  Ty=(fn1(y*(8*yy*((yy+yy)*(ay*(ay-9)+27)-15)+9)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


T09-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=4*xx
  Tx=(fn1(x*(8*xx*((xx+xx)*(ax*(ax-9)+27)-15)+9)))
  yy=y*y, ay=4*yy
  Ty=(fn1(y*(8*yy*((yy+yy)*(ay*(ay-9)+27)-15)+9)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


T09-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  ax=4*xx, ax1=4*yy
  Fx0=x0*(8*xx*((xx+xx)*(ax*(ax-9)+27)-15)+9)
  Fx1=x1*(8*yy*((yy+yy)*(ax1*(ax1-9)+27)-15)+9)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


T10-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=xx+xx, ay=yy+yy
  bx=8*xx, by=8*yy
  Tx=ax*(bx*(ax*(bx*(ax-5)+35)-11)+25)-1
  Ty=ay*(by*(ay*(by*(ay-5)+35)-11)+25)-1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


T10-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT09-T08
  bailout=p1+4, z=pixel:
  zz=z*z
  a=2*zz
  b=8*zz
  z=a*(b*(a*(b*(a-5)+35)-11)+25)-1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


T10-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  const=p1-1, z=pixel:
  zz=z*z
  a=zz+zz
  b=8*zz
  z=a*(b*(a*(b*(a-5)+35)-11)+25)+const
  |z|<100
  ;SOURCE: chby3.frm
}


T10-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  const=pixel-1, z=p1:
  zz=z*z
  a=zz+zz
  b=8*zz
  z=a*(b*(a*(b*(a-5)+35)-11)+25)+const
  |z|<100
  ;SOURCE: chby4.frm
}


T10-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  b=8*zz
  f=a*(b*(a*(b*(a-5)+35)-25)+25)-1
  fd=20*z*(16*zz*(zz*(16*zz*(zz-2)+21)-5)+5)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


T10-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=8*zz
  c=16*zz
  f=a*(b*(a*(b*(a-5)+35)-25)+25)-1
  fd=20*z*(c*(zz*(c*(zz-2)+21)-5)+5)
  fdd=20*(16*zz*(zz*(c*(9*zz-14)+105)-15)+5)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


T10-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT09-T08
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  c=16*zz
  f=a*(b*(a*(b*(a-5)+35)-11)-25)-1
  fd=a*(c*(5*zz*(c*(zz-2)+21)-11)+25)
  oz=z
  w=z-f/fd
  ww=w*w
  a=ww+ww
  b=a+a
  fw=a*(b*(a*(b*(a-5)+35)-11)-25)-1
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


T10-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=xx+xx, ay=yy+yy
  bx=8*xx, by=8*yy
  Tx=sin(ax*(bx*(ax*(bx*(ax-5)+35)-11)+25)-1)
  Ty=sin(ay*(by*(ay*(by*(ay-5)+35)-11)+25)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


T10-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=xx+xx, ay=yy+yy
  bx=8*xx, by=8*yy
  Tx=fn1(ax*(bx*(ax*(bx*(ax-5)+35)-11)+25)-1)
  Ty=fn1(ay*(by*(ay*(by*(ay-5)+35)-11)+25)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


T10-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  a=zz+zz
  b=8*zz
  fz=a*(b*(a*(b*(a-5)+35)-25)+25)-1:
  zz=z*z
  a=zz+zz
  b=8*zz
  zt=z
  foz=fz
  fz=a*(b*(a*(b*(a-5)+35)-25)+25)-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


T10-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  const=p1, z=pixel:
  zz=z*z
  a=zz+zz
  b=8*zz
  z=(a*(b*(a*(b*(a-5)+35)-11)+25)-1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


T10-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  const=pixel, z=p1:
  zz=z*z
  a=zz+zz
  b=8*zz
  z=(a*(b*(a*(b*(a-5)+35)-11)+25)-1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


T10-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  b=8*zz
  c=16*zz
  f=a*(b*(a*(b*(a-5)+35)-25)+25)-1
  fd=20*z*(c*(zz*(c*(zz-2)+21)-5)+5)
  fdd=20*(16*zz*(zz*(c*(9*zz-14)+105)-15)+5)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


T10-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT09-T08
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  c=16*zz
  f=a*(b*(a*(b*(a-5)+35)-11)-25)-1
  fd=a*(c*(5*zz*(c*(zz-2)+21)-11)+25)
  oz=z
  w=z-f/fd
  ww=w*w
  a=ww+ww
  b=a+a
  fw=a*(b*(a*(b*(a-5)+35)-11)-25)-1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


T10-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  b=8*zz
  f=a*(b*(a*(b*(a-5)+35)-25)+25)-1
  fd=20*z*(16*zz*(zz*(16*zz*(zz-2)+21)-5)+5)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


T10-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  a=zz+zz
  b=8*zz
  fz=a*(b*(a*(b*(a-5)+35)-25)+25)-1:
  zz=z*z
  a=zz+zz
  b=8*zz
  zt=z
  foz=fz
  fz=a*(b*(a*(b*(a-5)+35)-25)+25)-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


T10-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  z=pixel, oz=0
  fz=-1
  zz=z*z
  a=zz+zz
  b=8*zz
  zt=fn1(z)+p1:
  foz=fz
  fz=a*(b*(a*(b*(a-5)+35)-25)+25)-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


T10-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  z=pixel, oz=0
  fz=-1
  zz=z*z
  a=zz+zz
  b=8*zz
  zt=fn1(z)+p1:
  foz=fz
  fz=a*(b*(a*(b*(a-5)+35)-25)+25)-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


T10-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx, bx=8*xx
  Tx=ax*(bx*(ax*(bx*(ax-5)+35)-11)+25)-1
  yy=y*y, ay=yy+yy, by=8*yy
  Ty=ay*(by*(ay*(by*(ay-5)+35)-11)+25)-1
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


T10-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx, bx=8*xx
  y=y+t*sin(ax*(bx*(ax*(bx*(ax-5)+35)-11)+25)-1)
  yy=y*y, ay=yy+yy, by=8*yy
  x=x-t*sin(ay*(by*(ay*(by*(ay-5)+35)-11)+25)-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


T10-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx, bx=8*xx
  y=y+t*(fn1(ax*(bx*(ax*(bx*(ax-5)+35)-11)+25)-1))
  yy=y*y, ay=yy+yy, by=8*yy
  x=x-t*(fn1(ay*(by*(ay*(by*(ay-5)+35)-11)+25)-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


T10-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=xx+xx, ay=yy+yy
  bx=8*xx, by=8*yy
  Tx=fn1(ax*(bx*(ax*(bx*(ax-5)+35)-11)+25)-1)
  Ty=fn2(ay*(by*(ay*(by*(ay-5)+35)-11)+25)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


T10-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=xx+xx, ay=yy+yy
  bx=8*xx, by=8*yy
  Tx=fn1(ax*(bx*(ax*(bx*(ax-5)+35)-11)+25)-1)
  Ty=fn2(ay*(by*(ay*(by*(ay-5)+35)-11)+25)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


T10-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx, bx=8*xx
  y=y+t*(fn1(ax*(bx*(ax*(bx*(ax-5)+35)-11)+25)-1))
  yy=y*y, ay=yy+yy, by=8*yy
  x=x-t*(fn2(ay*(by*(ay*(by*(ay-5)+35)-11)+25)-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


T10-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx, bx=8*xx
  y=y+t*(fn1(ax*(bx*(ax*(bx*(ax-5)+35)-11)+25)-1))
  yy=y*y, ay=yy+yy, by=8*yy
  x=x-t*(fn2(ay*(by*(ay*(by*(ay-5)+35)-11)+25)-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


T10-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx, bx=8*xx
  Tx=(fn1(ax*(bx*(ax*(bx*(ax-5)+35)-11)+25)-1))
  yy=y*y, ay=yy+yy, by=8*yy
  Ty=(fn1(ay*(by*(ay*(by*(ay-5)+35)-11)+25)-1))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


T10-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x, ax=xx+xx, bx=8*xx
  Tx=(fn1(ax*(bx*(ax*(bx*(ax-5)+35)-11)+25)-1))
  yy=y*y, ay=yy+yy, by=8*yy
  Ty=(fn1(ay*(by*(ay*(by*(ay-5)+35)-11)+25)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


T10-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x, ax=xx+xx, bx=8*xx
  Tx=(fn1(ax*(bx*(ax*(bx*(ax-5)+35)-11)+25)-1))
  yy=y*y, ay=yy+yy, by=8*yy
  Ty=(fn1(ay*(by*(ay*(by*(ay-5)+35)-11)+25)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


T10-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx, bx=8*xx
  Tx=(fn1(ax*(bx*(ax*(bx*(ax-5)+35)-11)+25)-1))
  yy=y*y, ay=yy+yy, by=8*yy
  Ty=(fn1(ay*(by*(ay*(by*(ay-5)+35)-11)+25)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


T10-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  ax=xx+xx, ax1=yy+yy
  bx0=8*xx, bx1=8*yy
  Fx0=ax*(bx0*(ax*(bx0*(ax-5)+35)-11)+25)-1
  Fx1=ax1*(bx1*(ax1*(bx1*(ax1-5)+35)-11)+25)-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


t2 {
  z=pixel, t=1-(pixel)^1/sqr(1/sqrt(pixel)):
  a=fn1(1/t^fn4(t))
  z=fn2(1/a^3)^fn3(z)
  |z|<=4+p1
  ;SOURCE: ad3.frm
}


t5 {; Revised 4/27/96 to eliminate superfluous "+c"
    ; Original version of this formula may be discarded
  z=pixel: 
  z=fn3(7/pixel)^(pixel*(1/pixel)), t=fn4(1/pixel)^(22/(1/pixel))
  z=fn1(z^1/z)*fn2(t^1/t)
  |z|<=4
  ;SOURCE: new.frm
}


t6 {; Revised 4/27/96 to eliminate superfluous "+c"
    ; Original version of this formula may be discarded
  z=(pixel^(1/tan(pixel^p1)))^(fn1(pixel^(1/pixel^p2))):
  z=fn2(z^fn3(1/z^2.5878))
  |real(z)|<=4
  ;SOURCE: new.frm
}


t7 {; Revised 4/27/96 to eliminate superfluous "+c"
    ; Original version of this formula may be discarded
  z=(pixel^(1/tan(pixel^p1)))^(fn1(pixel^(1/pixel^p2))):
  z=fn2(z^fn3(1/z^2.5878))
  |z|<=4
  ;SOURCE: new.frm
}


Tan_Spirals {; Copyright (c) Paul W. Carlson, 1997
  width = real(p2), ratio = 124 / width, w = pixel, z = 0
  iter = 0, toggle = -1:
  w = p1 * tan(w)
  awr = abs(real(w))
  awi = abs(imag(w))
  IF (awr < awi)
    minw = awr
  ELSE
    minw = awi
  ENDIF
  bailout = (minw < width && |w| <= p3)
  toggle = -1 * toggle
  iter = iter + 1
  IF (bailout)
    z = ratio * minw + (toggle > 0) * 125 + 1
  ENDIF
  z = z - iter
  bailout == 0
  ;SOURCE: 98msg.frm
}


tangent {; Scientific American puzzle.
  z=pixel
  c=pixel:
  z=z*tan(z)+c
  |z| <=4
  ;SOURCE: crocker.frm
}


tangent_jul {
        ; 
        ; For Kerry Mitchell's explanation of the "circle & line"
        ;    coloring method, see the end of formula
        ;    general_man-c&l
        ;
        ; "circle & tangent line" coloring method for Julia sets
        ; p1 = c = Julia parameter
        ; p2 = x-circle center
        ; real(p3) = x-circle radius
        ; imag(p3) = angle of line from circle center to tangent
        ;    point of y-line, degrees
        ; bailout hardcoded to 10^12
        ; use "decomp=256" coloring
        ;
  zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
  cenx=p2, radx=real(p3), rad=radx, rad2x=|radx|
  theta=imag(p3)*pi/180, ct=cos(theta), st=sin(theta)
  xt=real(cenx)+rad*ct, yt=imag(cenx)+rad*st
  phi=theta+pi/2, cp=cos(phi), sp=sin(phi)
  ay=sp, by=-cp, cy=cp*yt-sp*xt:
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


Tangentbrot1 {; Tom Schumm
              ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):         ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  imag(z) <= tan(real(z)) + 2    ; Different escape boundry
  ;SOURCE: phong.frm
}


Tangentbrot2 {; Tom Schumm
              ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):       ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  imag(z) <= tan(real(z))+4    ; Different escape boundry
  ;SOURCE: phong.frm
}


Tangentbrot3 {; Tom Schumm
              ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):       ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  imag(z) <= tan(real(z))+6    ; Different escape boundry
  ;SOURCE: phong.frm
}


Tangentbrot4 {; Tom Schumm
              ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):       ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  imag(z) <= tan(real(z))+8    ; Different escape boundry
  ;SOURCE: phong.frm
}


Tangentbrot5 {; Tom Schumm
              ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):        ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  imag(z) <= tan(real(z))+10    ; Different escape boundry
  ;SOURCE: phong.frm
}


Tangentia1 (ORIGIN) {; Tom Schumm
    ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):         ; Just like julia
  z = z + p1
  z = Sqr(z)
  imag(z) <= tan(real(z)) + 2    ; Different escape boundry
  ;SOURCE: phong2.frm
}


Tangentia2 (ORIGIN) {; Tom Schumm
    ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):       ; Just like julia
  z = z + p1
  z = Sqr(z)
  imag(z) <= tan(real(z))+4    ; Different escape boundry
  ;SOURCE: phong2.frm
}


Tangentia3 (ORIGIN) {; Tom Schumm
     ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):       ; Just like julia
  z = z + p1
  z = Sqr(z)
  imag(z) <= tan(real(z))+6    ; Different escape boundry
  ;SOURCE: phong2.frm
}


Tangentia4 (ORIGIN) {; Tom Schumm
     ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):       ; Just like julia
  z = z + p1
  z = Sqr(z)
  imag(z) <= tan(real(z))+8    ; Different escape boundry
  ;SOURCE: phong2.frm
}


Tangentia5 (ORIGIN) {; Tom Schumm
     ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):        ; Just like julia
  z = z + p1
  z = Sqr(z)
  imag(z) <= tan(real(z))+10    ; Different escape boundry
  ;SOURCE: phong2.frm
}


Tango {; Fabian Labeau Abril 98
  z=pixel:
  a=z/z^3
  b=z*pixel
  z=z*(a^z)*pixel+(z^b)
  |z| <= 6
  ;SOURCE: 98msg.frm
}


Tango_02 {; Fabian Labeau Abril 98
  z=pixel:
  a=z/z^3
  b=z*pixel
  g=1/b
  z1=z*(-g^z)/log(pixel+(g^b))
  z2=a/b*1/g
  z=z1^1.23+z2
  |z| <= 6
  ;SOURCE: 98msg.frm
}


TanhInvZ (XYAXIS) {
  z=pixel, inv=1/pixel+p1:
  z=tanh(inv/z)
  |z|<=4
  ;SOURCE: fract003.frm
}


TanInvZ (XYAXIS) {
  z=pixel, inv=1/pixel+p1:
  t=inv/z
  z=sin(t)/cos(t)
  |z|<=4
  ;SOURCE: fract003.frm
}


TBalls_Newt1_Mset {; Copyright (c) Paul W. Carlson, 1998
    ;  real(p1) = ball size factor
    ;  imag(p1) = iterations to skip
    ;  real(p2) = convergence test distance
    ;
  z = iter = 0
  c = pixel
  cm1 = c - 1
  tcm1 = cm1 + cm1
  w = sqrt((1 - c) / 6)
  sc = sqrt(-c)
  ro  = 2.613125929753 * p1
  ros = 1.847759065023 * p1
  r2 = p1 * p1
  dr0 = -flip(ro)
  dr1 = -ros - flip(ros)
  dr2 = -ro
  dr3 = -ros + flip(ros)
  dr4 = -dr0
  dr5 = -dr1
  dr6 = -dr2
  dr7 = -dr3
  index_factor = 29 / p1
  bailout = 1
  :
  w2 = w * w
  w = w - (w2 * w2 + cm1 * w2 - c) / (4 * w2 * w + tcm1 * w)
    ;
  IF (|w + dr0| < r2)
    dist = |w + dr0|
    range_num = 0
  ELSEIF (|w + dr1| < r2)
    dist = |w + dr1|
    range_num = 1
  ELSEIF (|w + dr2| < r2)
    dist = |w + dr2|
    range_num = 2
  ELSEIF (|w + dr3| < r2)
    dist = |w + dr3|
    range_num = 3
  ELSEIF (|w + dr4| < r2)
    dist = |w + dr4|
    range_num = 4
  ELSEIF (|w + dr5| < r2)
    dist = |w + dr5|
    range_num = 5
  ELSEIF (|w + dr6| < r2)
    dist = |w + dr6|
    range_num = 6
  ELSEIF (|w + dr7| < r2)
    dist = |w + dr7|
    range_num = 7
  ELSEIF (|w + (-1,0)| < p2)
    bailout = 1
    z = 252
  ELSEIF (|w + (1,0)| < p2)
    bailout = 1
    z = 252
  ELSEIF (|w + sc| < p2)
    bailout = 1
    z = 252
  ELSEIF (|w - sc| < p2)
    bailout = 1
    z = 252
  ELSE
    bailout = 0
    dist = 0
  ENDIF
  IF (dist > 0 && iter > imag(p1))
    bailout = 1
    z = index_factor * sqrt(dist) + range_num * 30 + 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == 8)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0  && |w| < 1.0e20
  ;SOURCE: 98msg.frm
}


Tc02-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (Euler method)
         ;
         ; Tc(n+1) = 2(2x-1)Tc(n)-Tc(n-1)
         ; Tc(0) = 1
         ; Tc(1) = 2(x+1)
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=4*x*(x+x+1)-5
  Ty=4*y*(y+y+1)-5
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Tc02-02 (XAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; Chebyshev Types:
                 ; Inspired by Clifford A. Pickover:
                 ; Dynamic
                 ; 
                 ; Tc(n+1) = 2(2x-1)Tc(n)-Tc(n-1)
                 ; Tc(0) = 1
                 ; Tc(1) = 2(x+1)
                 ;
                 ; = 2(2z-1)Tc(1)-Tc(0)
  bailout=p1+4, z=pixel:
  z=4*z*(2*z+1)-5
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Tc02-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Julia)
         ; 
         ; Tc(n+1) = 2(2x-1)Tc(n)-Tc(n-1)
         ; Tc(0) = 1
         ; Tc(1) = 2(x+1)
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  const=p1, z=pixel:
  z=4*z*(z+z+1)-5+const
  |z|<100
  ;SOURCE: chby3.frm
}


Tc02-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Mandelbrot)
         ; 
         ; Tc(n+1) = 2(2x-1)Tc(n)-Tc(n-1)
         ; Tc(0) = 1
         ; Tc(1) = 2(x+1)
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  const=pixel, z=p1:
  z=4*z*(z+z+1)-5+const
  |z|<100
  ;SOURCE: chby4.frm
}


Tc02-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Newton Method
         ; 
         ; Tc(n+1) = 2(2x-1)Tc(n)-Tc(n-1)
         ; Tc(0) = 1
         ; Tc(1) = 2(x+1)
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=4*z*(2*z+1)-5
  fd=16*z+4
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Tc02-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Halley Method
         ; 
         ; Tc(n+1) = 2(2x-1)Tc(n)-Tc(n-1)
         ; Tc(0) = 1
         ; Tc(1) = 2(x+1)
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=4*z*(z+z+1)-5
  fd=16*z+4
  fdd=16
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Tc02-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Bradley Beacham
         ; Cubic Method
         ; 
         ; Tc(n+1) = 2(2x-1)Tc(n)-Tc(n-1)
         ; Tc(0) = 1
         ; Tc(1) = 2(x+1)
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  bailout=real(p2)/10000, z=pixel:
  f=4*z*(z+z+1)-5
  fd=16*z+4
  oz=z
  w=f-f/fd
  fw=16*w+4
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Tc02-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified Euler method)
         ; 
         ; Tc(n+1) = 2(2z-1)Tc(n)-Tc(n-1)
         ; Tc(0) = 1
         ; Tc(1) = 2(z+1)
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(4*x*(x+x+1)-5)
  Ty=sin(4*y*(y+y+1)-5)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Tc02-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified Euler Method)
         ; 
         ; Tc(n+1) = 2(2z-1)Tc(n)-Tc(n-1)
         ; Tc(0) = 1
         ; Tc(1) = 2(z+1)
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(4*x*(x+x+1)-5)
  Ty=fn1(4*y*(y+y+1)-5)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Tc02-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Mike Wareman:
         ; Secant Method
         ; 
         ; Tc(n+1) = 2(2z-1)Tc(n)-Tc(n-1)
         ; Tc(0) = 1
         ; Tc(1) = 2(z+1)
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=4*p1*(p1+p1+1)-5:
  zt=z
  foz=fz
  fz=4*z*(z+z+1)-5
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Tc02-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Julia)
         ; 
         ; Tc(n+1) = 2(2x-1)Tc(n)-Tc(n-1)
         ; Tc(0) = 1
         ; Tc(1) = 2(x+1)
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  const=p1, z=pixel:
  z=4*z*(z+z+1)-5+const
  |z|<100
  ;SOURCE: chby11.frm
}


Tc02-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Mandelbrot)
         ; 
         ; Tc(n+1) = 2(2x-1)Tc(n)-Tc(n-1)
         ; Tc(0) = 1
         ; Tc(1) = 2(x+1)
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  const=pixel, z=p1:
  z=4*z*(z+z+1)-5+const
  |z|<100
  ;SOURCE: chby12.frm
}


Tc02-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Halley Method with weird bailout test
         ; 
         ; Tc(n+1) = 2(2x-1)Tc(n)-Tc(n-1)
         ; Tc(0) = 1
         ; Tc(1) = 2(x+1)
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=4*z*(2*z+1)-5
  fd=16*z+4
  fdd=16
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Tc02-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Bradley Beacham
         ; Cubic Method with weird bailout test
         ; 
         ; Tc(n+1) = 2(2x-1)Tc(n)-Tc(n-1)
         ; Tc(0) = 1
         ; Tc(1) = 2(x+1)
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  bailout=real(p2)/10000, z=pixel:
  f=4*z*(z+z+1)-5
  fd=16*z+4
  oz=z
  w=f-f/fd
  fw=16*w+4
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


Tc02-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Newton Method with weird bailout test
         ; 
         ; Tc(n+1) = 2(2x-1)Tc(n)-Tc(n-1)
         ; Tc(0) = 1
         ; Tc(1) = 2(x+1)
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=4*z*(2*z+1)-5
  fd=16*z+4
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Tc02-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Mike Wareman:
         ; Secant Method with weird bailout test
         ; 
         ; Tc(n+1) = 2(2z-1)Tc(n)-Tc(n-1)
         ; Tc(0) = 1
         ; Tc(1) = 2(z+1)
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=4*p1*(p1+p1+1)-5:
  zt=z
  foz=fz
  fz=4*z*(z+z+1)-5
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


Tc02-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Mike Wareman
         ; Secant Method with Girvan perturbations and weird bailout test
         ; 
         ; Tc(n+1) = 2(2z-1)Tc(n)-Tc(n-1)
         ; Tc(0) = 1
         ; Tc(1) = 2(z+1)
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  z=pixel, oz=0
  fz=-5
  zt=fn1(z)+p1:
  foz=fz
  fz=4*z*(z+z+1)-5
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Tc02-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Mike Wareman
         ; Secant Method with Girvan perturbations and weird bailout test
         ; 
         ; Tc(n+1) = 2(2z-1)Tc(n)-Tc(n-1)
         ; Tc(0) = 1
         ; Tc(1) = 2(z+1)
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  z=pixel, oz=0
  fz=-5
  zt=fn1(z)+p1:
  foz=fz
  fz=4*z*(z+z+1)-5
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


Tc02-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (Implicit Euler method)
         ; 
         ; Tc(n+1) = 2(2x-1)Tc(n)-Tc(n-1)
         ; Tc(0) = 1
         ; Tc(1) = 2(x+1)
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(4*x*(x+x+1)-5)
  x=x-t*(4*y*(y+y+1)-5)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Tc02-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler method)
         ; 
         ; Tc(n+1) = 2(2z-1)Tc(n)-Tc(n-1)
         ; Tc(0) = 1
         ; Tc(1) = 2(z+1)
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(4*x*(x+x+1)-5)
  x=x-t*sin(4*y*(y+y+1)-5)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Tc02-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler method)
         ; 
         ; Tc(n+1) = 2(2z-1)Tc(n)-Tc(n-1)
         ; Tc(0) = 1
         ; Tc(1) = 2(z+1)
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(4*x*(x+x+1)-5))
  x=x-t*(fn1(4*y*(y+y+1)-5))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Tc02-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified Euler method)
         ; 
         ; Tc(n+1) = 2(2z-1)Tc(n)-Tc(n-1)
         ; Tc(0) = 1
         ; Tc(1) = 2(z+1)
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(4*x*(x+x+1)-5)
  Ty=fn2(4*y*(y+y+1)-5)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Tc02-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified Euler method)
         ; 
         ; Tc(n+1) = 2(2z-1)Tc(n)-Tc(n-1)
         ; Tc(0) = 1
         ; Tc(1) = 2(z+1)
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(4*x*(x+x+1)-5)
  Ty=fn2(4*y*(y+y+1)-5)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Tc02-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler Method)
         ; 
         ; Tc(n+1) = 2(2z-1)Tc(n)-Tc(n-1)
         ; Tc(0) = 1
         ; Tc(1) = 2(z+1)
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(4*x*(x+x+1)-5))
  x=x-t*(fn2(4*y*(y+y+1)-5))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Tc02-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler Method)
         ; 
         ; Tc(n+1) = 2(2z-1)Tc(n)-Tc(n-1)
         ; Tc(0) = 1
         ; Tc(1) = 2(z+1)
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(4*x*(x+x+1)-5))
  x=x-t*(fn2(4*y*(y+y+1)-5))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Tc02-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Kathy Roth:
         ; Dynamic (modified implicit Euler Method, gravitated)
         ;
         ; Tc[0] = 1
         ; Tc[1] = 2z+2
         ; Tc[n+1] = 2(2z-1)Tc[n]-Tc[n-1]
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(4*x*(x+x+1)-5))
  Ty=(fn1(4*y*(y+y+1)-5))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Tc02-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Kathy Roth:
         ; Dynamic (modified implicit Euler Method, popped)
         ;
         ; Tc[0] = 1
         ; Tc[1] = 2z+2
         ; Tc[n+1] = 2(2z-1)Tc[n]-Tc[n-1]
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(4*x*(x+x+1)-5))
  Ty=(fn1(4*y*(y+y+1)-5))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Tc02-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Kathy Roth:
         ; Dynamic (modified implicit Euler Method, popped)
         ;
         ; Tc[0] = 1
         ; Tc[1] = 2z+2
         ; Tc[n+1] = 2(2z-1)Tc[n]-Tc[n-1]
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(4*x*(x+x+1)-5))
  Ty=(fn1(4*y*(y+y+1)-5))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Tc02-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler method, Sylvie Gallet test)
         ;
         ; Tc[0] = 1
         ; Tc[1] = 2z+2
         ; Tc[n+1] = 2(2z-1)Tc[n]-Tc[n-1]
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1(4*x*(x+x+1)-5))
  Ty=(fn1(4*y*(y+y+1)-5))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Tc02-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Ray Parracho:
         ; Regula-Falsi Method
         ;
         ; Tc[0] = 1
         ; Tc[1] = 2z+2
         ; Tc[n+1] = 2(2z-1)Tc[n]-Tc[n-1]
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=4*x0*(x0+x0+1)-5
  Fx1=4*x1*(x1+x1+1)-5
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Tc03-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(x+x)*(16*x*x-15)+8
  Ty=(y+y)*(16*y*y-15)+8
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Tc03-02 (XAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(2z-1)Tc(2)-Tc(1)
  bailout=p1+4, z=pixel:
  z=2*z*(16*z*z-15)+8
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Tc03-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  const=p1, z=pixel:
  z=(z+z)*(16*z*z-15)+8+const
  |z|<100
  ;SOURCE: chby3.frm
}


Tc03-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  const=pixel, z=p1:
  z=(z+z)*(16*z*z-15)+8+const
  |z|<100
  ;SOURCE: chby4.frm
}


Tc03-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=2*z*(16*zz-15)+8
  fd=96*zz-30
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Tc03-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(z+z)*(16*zz-15)+8
  fd=96*zz-30
  fdd=192*z
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Tc03-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(z+z)*(16*zz-15)+8
  fd=96*zz-30
  oz=z
  w=f-f/fd
  fw=96*w*w-30
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Tc03-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin((x+x)*(16*x*x-15)+8)
  Ty=sin((y+y)*(16*y*y-15)+8)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Tc03-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((x+x)*(16*x*x-15)+8)
  Ty=fn1((y+y)*(16*y*y-15)+8)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Tc03-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(p1+p1)*(16*p1*p1-15)+8:
  zt=z
  foz=fz
  fz=(z+z)*(16*z*z-15)+8
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Tc03-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  const=p1, z=pixel:
  z=((z+z)*(16*z*z-15)+8)*const
  |z|<100
  ;SOURCE: chby11.frm
}


Tc03-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  const=pixel, z=p1:
  z=((z+z)*(16*z*z-15)+8)*const
  |z|<100
  ;SOURCE: chby12.frm
}


Tc03-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=2*z*(16*zz-15)+8
  fd=96*zz-30
  fdd=192*z
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Tc03-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(z+z)*(16*zz-15)+8
  fd=96*zz-30
  oz=z
  w=f-f/fd
  fw=96*w*w-30
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


Tc03-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=2*z*(16*zz-15)+8
  fd=96*zz-30
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Tc03-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(p1+p1)*(16*p1*p1-15)+8:
  zt=z
  foz=fz
  fz=(z+z)*(16*z*z-15)+8
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


Tc03-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  z=pixel, oz=0
  fz=8
  zt=fn1(z)+p1:
  foz=fz
  fz=(z+z)*(16*z*z-15)+8
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Tc03-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  z=pixel, oz=0
  fz=8
  zt=fn1(z)+p1:
  foz=fz
  fz=(z+z)*(16*z*z-15)+8
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


Tc03-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*((x+x)*(16*x*x-15)+8)
  x=x-t*((y+y)*(16*y*y-15)+8)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Tc03-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin((x+x)*(16*x*x-15)+8)
  x=x-t*sin((y+y)*(16*y*y-15)+8)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Tc03-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1((x+x)*(16*x*x-15)+8))
  x=x-t*(fn1((y+y)*(16*y*y-15)+8))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Tc03-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((x+x)*(16*x*x-15)+8)
  Ty=fn2((y+y)*(16*y*y-15)+8)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Tc03-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1((x+x)*(16*x*x-15)+8)
  Ty=fn2((y+y)*(16*y*y-15)+8)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Tc03-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1((x+x)*(16*x*x-15)+8))
  x=x-t*(fn2((y+y)*(16*y*y-15)+8))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Tc03-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1((x+x)*(16*x*x-15)+8))
  x=x-t*(fn2((y+y)*(16*y*y-15)+8))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Tc03-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1((x+x)*(16*x*x-15)+8))
  Ty=(fn1((y+y)*(16*y*y-15)+8))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Tc03-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  t=p1, bailout=real(p2), z=pixel, x=real(pixel), y=imag(pixel)
  h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1((x+x)*(16*x*x-15)+8))
  Ty=(fn1((y+y)*(16*y*y-15)+8))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Tc03-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1((x+x)*(16*x*x-15)+8))
  Ty=(fn1((y+y)*(16*y*y-15)+8))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Tc03-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1((x+x)*(16*x*x-15)+8))
  Ty=(fn1((y+y)*(16*y*y-15)+8))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Tc03-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=(x0+x0)*(16*x0*x0-15)+8
  Fx1=(x1+x1)*(16*x1*x1-15)+8
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Tc04-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=8*x, ay=8*y
  Tx=ax*(ax*(x*(x+x-1)-2)+11)-11
  Ty=ay*(ay*(y*(y+y-1)-2)+11)-11
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Tc04-02 (XAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(2z-1)Tc(3)-Tc(2)
  bailout=p1+4, z=pixel:
  a=8*z
  z=a*(a*(z*(2*z-1)-2)+11)-11
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Tc04-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  const=p1, z=pixel:
  a=8*z
  z=a*(a*(z*(z+z-1)-2)+11)-11+const
  |z|<100
  ;SOURCE: chby3.frm
}


Tc04-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  const=pixel, z=p1:
  a=8*z
  z=a*(a*(z*(z+z-1)-2)+11)-11+const
  |z|<100
  ;SOURCE: chby4.frm
}


Tc04-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=8*z
  z=a*(a*(z*(2*z-1)-2)+11)-11
  fd=64*z*(z*(a-3)-4)+88
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Tc04-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=8*z
  z=a*(a*(z*(z+z-1)-2)+11)-11
  fd=64*z*(z*(a-3)-4)+88
  fdd=384*z*(4*z-1)-256
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Tc04-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  bailout=real(p2)/10000, z=pixel:
  a=8*z
  z=a*(a*(z*(z+z-1)-2)+11)-11
  fd=64*z*(z*(a-3)-4)+88
  oz=z
  w=f-f/fd
  fw=64*w*(w*(8*w-3)-4)+88
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Tc04-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=8*x, ay=8*y
  Tx=sin(ax*(ax*(x*(x+x-1)-2)+11)-11)
  Ty=sin(ay*(ay*(y*(y+y-1)-2)+11)-11)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Tc04-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=8*x, ay=8*y
  Tx=fn1(ax*(ax*(x*(x+x-1)-2)+11)-11)
  Ty=fn1(ay*(ay*(y*(y+y-1)-2)+11)-11)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Tc04-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=8*p1*(8*p1*(p1*(p1+p1-1)-2)+11)-11:
  a=8*z
  fz=a*(a*(z*(z+z-1)-2)+11)-11
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Tc04-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  const=p1, z=pixel:
  a=8*z
  z=(a*(a*(z*(z+z-1)-2)+11)-11)*const
  |z|<100
  ;SOURCE: chby11.frm
}


Tc04-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  const=pixel, z=p1:
  a=8*z
  z=(a*(a*(z*(z+z-1)-2)+11)-11)*const
  |z|<100
  ;SOURCE: chby12.frm
}


Tc04-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=8*z
  z=a*(a*(z*(2*z-1)-2)+11)-11
  fd=64*z*(z*(a-3)-4)+88
  fdd=384*z*(4*z-1)-256
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Tc04-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  bailout=real(p2)/10000, z=pixel:
  a=8*z
  z=a*(a*(z*(z+z-1)-2)+11)-11
  fd=64*z*(z*(a-3)-4)+88
  oz=z
  w=f-f/fd
  fw=64*w*(w*(8*w-3)-4)+88
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


Tc04-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=8*z
  z=a*(a*(z*(2*z-1)-2)+11)-11
  fd=64*z*(z*(a-3)-4)+88
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Tc04-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=8*p1*(8*p1*(p1*(p1+p1-1)-2)+11)-11:
  a=8*z
  fz=a*(a*(z*(z+z-1)-2)+11)-11
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


Tc04-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  z=pixel, oz=0
  fz=-11
  zt=fn1(z)+p1:
  foz=fz
  a=8*z
  fz=a*(a*(z*(z+z-1)-2)+11)-11
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Tc04-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  z=pixel, oz=0
  fz=-11
  zt=fn1(z)+p1:
  foz=fz
  a=8*z
  fz=a*(a*(z*(z+z-1)-2)+11)-11
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


Tc04-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=8*x
  y=y+t*(ax*(ax*(x*(x+x-1)-2)+11)-11)
  ay=8*y
  x=x-t*(ay*(ay*(y*(y+y-1)-2)+11)-11)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Tc04-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=8*x
  y=y+t*sin(ax*(ax*(x*(x+x-1)-2)+11)-11)
  ay=8*y
  x=x-t*sin(ay*(ay*(y*(y+y-1)-2)+11)-11)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Tc04-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=8*x
  y=y+t*(fn1(ax*(ax*(x*(x+x-1)-2)+11)-11))
  ay=8*y
  x=x-t*(fn1(ay*(ay*(y*(y+y-1)-2)+11)-11))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Tc04-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=8*x, ay=8*y
  Tx=fn1(ax*(ax*(x*(x+x-1)-2)+11)-11)
  Ty=fn2(ay*(ay*(y*(y+y-1)-2)+11)-11)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Tc04-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=8*x, ay=8*y
  Tx=fn1(ax*(ax*(x*(x+x-1)-2)+11)-11)
  Ty=fn2(ay*(ay*(y*(y+y-1)-2)+11)-11)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Tc04-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=8*x
  y=y+t*(fn1(ax*(ax*(x*(x+x-1)-2)+11)-11))
  ay=8*y
  x=x-t*(fn2(ay*(ay*(y*(y+y-1)-2)+11)-11))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Tc04-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=8*x
  y=y+t*(fn1(ax*(ax*(x*(x+x-1)-2)+11)-11))
  ay=8*y
  x=x-t*(fn2(ay*(ay*(y*(y+y-1)-2)+11)-11))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Tc04-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  ax=8*x
  Tx=(fn1(ax*(ax*(x*(x+x-1)-2)+11)-11))
  ay=8*y
  Ty=(fn1(ay*(ay*(y*(y+y-1)-2)+11)-11))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Tc04-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  ax=8*x
  Tx=(fn1(ax*(ax*(x*(x+x-1)-2)+11)-11))
  ay=8*y
  Ty=(fn1(ay*(ay*(y*(y+y-1)-2)+11)-11))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Tc04-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  ax=8*x
  Tx=(fn1(ax*(ax*(x*(x+x-1)-2)+11)-11))
  ay=8*y
  Ty=(fn1(ay*(ay*(y*(y+y-1)-2)+11)-11))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Tc04-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=8*x
  Tx=(fn1(ax*(ax*(x*(x+x-1)-2)+11)-11))
  ay=8*y
  Ty=(fn1(ay*(ay*(y*(y+y-1)-2)+11)-11))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Tc04-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax0=8*x0, ax1=8*x1
  Fx0=ax0*(ax0*(x0*(x0+x0-1)-2)+11)-11
  Fx1=ax1*(ax1*(x1*(x1+x1-1)-2)+11)-11
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Tc05-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=16*x, ay=16*y
  Tx=(x+x)*(ax*(x*(ax*(x-1)-13)+19)-95)+14
  Ty=(y+y)*(ay*(y*(ay*(y-1)-13)+19)-95)+14
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Tc05-02 (XAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(2z-1)Tc(4)-Tc(3)
  bailout=p1+4, z=pixel:
  a=16*z
  z=2*z*(a*(z*(a*(z-1)-13)+19)-95)+14
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Tc05-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  const=p1, z=pixel:
  a=16*z
  z=(z+z)*(a*(z*(a*(z-1)-13)+19)-95)+14+const
  |z|<100
  ;SOURCE: chby3.frm
}


Tc05-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  const=pixel, z=p1:
  a=16*z
  z=(z+z)*(a*(z*(a*(z-1)-13)+19)-95)+14+const
  |z|<100
  ;SOURCE: chby4.frm
}


Tc05-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=16*z
  z=2*z*(a*(z*(a*(z-1)-13)+19)-95)+14
  fd=32*z*(z*(a*(5*z-4)-39)+38)-190
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Tc05-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=16*z
  b=32*z
  c=5*z
  z=(z+z)*(a*(z*(a*(z-1)-13)+19)-95)+14
  fd=b*(z*(a*(c-4)-39)+38)-190
  fdd=64*z*(b*(c-3)-39)+1216
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Tc05-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  bailout=real(p2)/10000, z=pixel:
  a=16*z
  z=(z+z)*(a*(z*(a*(z-1)-13)+19)-95)+14
  fd=32*z*(z*(a*(5*z-4)-39)+38)-190
  oz=z
  w=f-f/fd
  fw=32*w*(w*(16*w*(5*w-4)-39)+38)-190
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Tc05-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=16*x, ay=16*y
  Tx=sin((x+x)*(ax*(x*(ax*(x-1)-13)+19)-95)+14)
  Ty=sin((y+y)*(ay*(y*(ay*(y-1)-13)+19)-95)+14)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Tc05-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=16*x, ay=16*y
  Tx=fn1((x+x)*(ax*(x*(ax*(x-1)-13)+19)-95)+14)
  Ty=fn1((y+y)*(ay*(y*(ay*(y-1)-13)+19)-95)+14)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Tc05-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=16*p1
  fz=(p1+p1)*(a*(p1*(a*(p1-1)-13)+19)-95)+14:
  a=16*z
  fz=(z+z)*(a*(z*(a*(z-1)-13)+19)-95)+14
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Tc05-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  const=p1, z=pixel:
  a=16*z
  z=((z+z)*(a*(z*(a*(z-1)-13)+19)-95)+14)*const
  |z|<100
  ;SOURCE: chby11.frm
}


Tc05-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  const=pixel, z=p1:
  a=16*z
  z=((z+z)*(a*(z*(a*(z-1)-13)+19)-95)+14)*const
  |z|<100
  ;SOURCE: chby12.frm
}


Tc05-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=16*z
  b=32*z
  c=5*z
  z=2*z*(a*(z*(a*(z-1)-13)+19)-95)+14
  fd=b*(z*(a*(c-4)-39)+38)-190
  fdd=64*z*(b*(c-3)-39)+1216
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Tc05-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  bailout=real(p2)/10000, z=pixel:
  a=16*z
  z=(z+z)*(a*(z*(a*(z-1)-13)+19)-95)+14
  fd=32*z*(z*(a*(5*z-4)-39)+38)-190
  oz=z
  w=f-f/fd
  fw=32*w*(w*(16*w*(5*w-4)-39)+38)-190
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


Tc05-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=16*z
  z=2*z*(a*(z*(a*(z-1)-13)+19)-95)+14
  fd=32*z*(z*(a*(5*z-4)-39)+38)-190
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Tc05-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=16*p1
  fz=(p1+p1)*(a*(p1*(a*(p1-1)-13)+19)-95)+14:
  a=16*z
  fz=(z+z)*(a*(z*(a*(z-1)-13)+19)-95)+14
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


Tc05-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  z=pixel, oz=0
  fz=14
  zt=fn1(z)+p1:
  foz=fz
  a=16*z
  fz=(z+z)*(a*(z*(a*(z-1)-13)+19)-95)+14
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Tc05-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  z=pixel, oz=0
  fz=14
  zt=fn1(z)+p1:
  foz=fz
  a=16*z
  fz=(z+z)*(a*(z*(a*(z-1)-13)+19)-95)+14
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


Tc05-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=16*x
  y=y+t*((x+x)*(ax*(x*(ax*(x-1)-13)+19)-95)+14)
  ay=16*y
  x=x-t*((y+y)*(ay*(y*(ay*(y-1)-13)+19)-95)+14)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Tc05-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=16*x
  y=y+t*sin((x+x)*(ax*(x*(ax*(x-1)-13)+19)-95)+14)
  ay=16*y
  x=x-t*sin((y+y)*(ay*(y*(ay*(y-1)-13)+19)-95)+14)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Tc05-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=16*x
  y=y+t*(fn1((x+x)*(ax*(x*(ax*(x-1)-13)+19)-95)+14))
  ay=16*y
  x=x-t*(fn1((y+y)*(ay*(y*(ay*(y-1)-13)+19)-95)+14))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Tc05-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=16*x, ay=16*y
  Tx=fn1((x+x)*(ax*(x*(ax*(x-1)-13)+19)-95)+14)
  Ty=fn2((y+y)*(ay*(y*(ay*(y-1)-13)+19)-95)+14)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Tc05-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=16*x, ay=16*y
  Tx=fn1((x+x)*(ax*(x*(ax*(x-1)-13)+19)-95)+14)
  Ty=fn2((y+y)*(ay*(y*(ay*(y-1)-13)+19)-95)+14)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Tc05-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=16*x
  y=y+t*(fn1((x+x)*(ax*(x*(ax*(x-1)-13)+19)-95)+14))
  ay=16*y
  x=x-t*(fn2((y+y)*(ay*(y*(ay*(y-1)-13)+19)-95)+14))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Tc05-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=16*x
  y=y+t*(fn1((x+x)*(ax*(x*(ax*(x-1)-13)+19)-95)+14))
  ay=16*y
  x=x-t*(fn2((y+y)*(ay*(y*(ay*(y-1)-13)+19)-95)+14))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Tc05-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  ax=16*x
  Tx=(fn1((x+x)*(ax*(x*(ax*(x-1)-13)+19)-95)+14))
  ay=16*y
  Ty=(fn1((y+y)*(ay*(y*(ay*(y-1)-13)+19)-95)+14))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Tc05-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  ax=16*x
  Tx=(fn1((x+x)*(ax*(x*(ax*(x-1)-13)+19)-95)+14))
  ay=16*y
  Ty=(fn1((y+y)*(ay*(y*(ay*(y-1)-13)+19)-95)+14))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Tc05-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  ax=16*x
  Tx=(fn1((x+x)*(ax*(x*(ax*(x-1)-13)+19)-95)+14))
  ay=16*y
  Ty=(fn1((y+y)*(ay*(y*(ay*(y-1)-13)+19)-95)+14))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Tc05-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=16*x
  Tx=(fn1((x+x)*(ax*(x*(ax*(x-1)-13)+19)-95)+14))
  ay=16*y
  Ty=(fn1((y+y)*(ay*(y*(ay*(y-1)-13)+19)-95)+14))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Tc05-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax0=16*x0, ax1=16*x1
  Fx0=(x0+x0)*(ax0*(x0*(ax0*(x0-1)-13)+19)-95)+14
  Fx1=(x1+x1)*(ax1*(x1*(ax1*(x1-1)-13)+19)-95)+14
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Tc06-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=x+x, ay=y+y
  bx=ax+ax, by=ay+ay
  Tx=bx*(ax*(32*x*(x*(bx*(ax-3)-3)+13)-231)+87)-17
  Ty=by*(ay*(32*y*(y*(by*(ay-3)-3)+13)-231)+87)-17
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Tc06-02 (XAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(2z-1)Tc(5)-Tc(4)
  bailout=p1+4, z=pixel:
  a=2*z
  b=4*z
  z=b*(a*(32*z*(z*(b*(a-3)-3)+13)-231)+87)-17
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Tc06-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  const=p1, z=pixel:
  a=z+z
  b=a+a
  z=b*(a*(32*z*(z*(b*(a-3)-3)+13)-231)+87)-17+const
  |z|<100
  ;SOURCE: chby3.frm
}


Tc06-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  const=pixel, z=p1:
  a=z+z
  b=a+a
  z=b*(a*(32*z*(z*(b*(a-3)-3)+13)-231)+87)-17+const
  |z|<100
  ;SOURCE: chby4.frm
}


Tc06-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=2*z
  b=4*z
  z=b*(a*(32*z*(z*(b*(a-3)-3)+13)-231)+87)-17
  fd=48*z*(16*z*(b*(z*(b-5)-1)+13)-77)+348
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Tc06-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=z+z
  b=a+a
  z=b*(a*(32*z*(z*(b*(a-3)-3)+13)-231)+87)-17
  fd=48*z*(16*z*(b*(z*(b-5)-1)+13)-77)+348
  fdd=1536*z*(a*(20*(z-1)-3)+13)-3696
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Tc06-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  bailout=real(p2)/10000, z=pixel:
  a=z+z
  b=a+a
  z=b*(a*(32*z*(z*(b*(a-3)-3)+13)-231)+87)-17
  fd=48*z*(16*z*(b*(z*(b-5)-1)+13)-77)+348
  oz=z
  w=f-f/fd
  bw=4*z
  fw=48*w*(16*w*(bw*(w*(bw-5)-1)+13)-77)+348
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Tc06-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=x+x, ay=y+y
  bx=ax+ax, by=ay+ay
  Tx=sin(bx*(ax*(32*x*(x*(bx*(ax-3)-3)+13)-231)+87)-17)
  Ty=sin(by*(ay*(32*y*(y*(by*(ay-3)-3)+13)-231)+87)-17)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Tc06-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=x+x, ay=y+y
  bx=ax+ax, by=ay+ay
  Tx=fn1(bx*(ax*(32*x*(x*(bx*(ax-3)-3)+13)-231)+87)-17)
  Ty=fn1(by*(ay*(32*y*(y*(by*(ay-3)-3)+13)-231)+87)-17)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Tc06-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=p1+p1, b=a+a
  fz=b*(a*(32*p1*(p1*(b*(a-3)-3)+13)-231)+87)-17:
  a=z+z, b=a+a
  fz=b*(a*(32*z*(z*(b*(a-3)-3)+13)-231)+87)-17
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Tc06-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  const=p1, z=pixel:
  a=z+z
  b=a+a
  z=(b*(a*(32*z*(z*(b*(a-3)-3)+13)-231)+87)-17)*const
  |z|<100
  ;SOURCE: chby11.frm
}


Tc06-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  const=pixel, z=p1:
  a=z+z
  b=a+a
  z=(b*(a*(32*z*(z*(b*(a-3)-3)+13)-231)+87)-17)*const
  |z|<100
  ;SOURCE: chby12.frm
}


Tc06-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=2*z
  b=4*z
  z=b*(a*(32*z*(z*(b*(a-3)-3)+13)-231)+87)-17
  fd=48*z*(16*z*(b*(z*(b-5)-1)+13)-77)+348
  fdd=1536*z*(a*(20*(z-1)-3)+13)-3696
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Tc06-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  bailout=real(p2)/10000, z=pixel:
  a=z+z
  b=a+a
  z=b*(a*(32*z*(z*(b*(a-3)-3)+13)-231)+87)-17
  fd=48*z*(16*z*(b*(z*(b-5)-1)+13)-77)+348
  oz=z
  w=f-f/fd
  bw=4*z
  fw=48*w*(16*w*(bw*(w*(bw-5)-1)+13)-77)+348
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


Tc06-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=2*z
  b=4*z
  z=b*(a*(32*z*(z*(b*(a-3)-3)+13)-231)+87)-17
  fd=48*z*(16*z*(b*(z*(b-5)-1)+13)-77)+348
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Tc06-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=p1+p1, b=a+a
  fz=b*(a*(32*p1*(p1*(b*(a-3)-3)+13)-231)+87)-17:
  a=z+z, b=a+a
  fz=b*(a*(32*z*(z*(b*(a-3)-3)+13)-231)+87)-17
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


Tc06-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  z=pixel, oz=0
  fz=-17
  a=z+z, b=a+a
  fz=b*(a*(32*z*(z*(b*(a-3)-3)+13)-231)+87)-17
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Tc06-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  z=pixel, oz=0
  fz=-17
  a=z+z, b=a+a
  fz=b*(a*(32*z*(z*(b*(a-3)-3)+13)-231)+87)-17
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


Tc06-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=x+x, bx=ax+ax
  y=y+t*(bx*(ax*(32*x*(x*(bx*(ax-3)-3)+13)-231)+87)-17)
  ay=y+y, by=ay+ay
  x=x-t*(by*(ay*(32*y*(y*(by*(ay-3)-3)+13)-231)+87)-17)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Tc06-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=x+x, bx=ax+ax
  y=y+t*sin(bx*(ax*(32*x*(x*(bx*(ax-3)-3)+13)-231)+87)-17)
  ay=y+y, by=ay+ay
  x=x-t*sin(by*(ay*(32*y*(y*(by*(ay-3)-3)+13)-231)+87)-17)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Tc06-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=x+x, bx=ax+ax
  y=y+t*(fn1(bx*(ax*(32*x*(x*(bx*(ax-3)-3)+13)-231)+87)-17))
  ay=y+y, by=ay+ay
  x=x-t*(fn1(by*(ay*(32*y*(y*(by*(ay-3)-3)+13)-231)+87)-17))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Tc06-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=x+x, ay=y+y
  bx=ax+ax, by=ay+ay
  Tx=fn1(bx*(ax*(32*x*(x*(bx*(ax-3)-3)+13)-231)+87)-17)
  Ty=fn2(by*(ay*(32*y*(y*(by*(ay-3)-3)+13)-231)+87)-17)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Tc06-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=x+x, ay=y+y
  bx=ax+ax, by=ay+ay
  Tx=fn1(bx*(ax*(32*x*(x*(bx*(ax-3)-3)+13)-231)+87)-17)
  Ty=fn2(by*(ay*(32*y*(y*(by*(ay-3)-3)+13)-231)+87)-17)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Tc06-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=x+x, bx=ax+ax
  y=y+t*(fn1(bx*(ax*(32*x*(x*(bx*(ax-3)-3)+13)-231)+87)-17))
  ay=y+y, by=ay+ay
  x=x-t*(fn2(by*(ay*(32*y*(y*(by*(ay-3)-3)+13)-231)+87)-17))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Tc06-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=x+x, bx=ax+ax
  y=y+t*(fn1(bx*(ax*(32*x*(x*(bx*(ax-3)-3)+13)-231)+87)-17))
  ay=y+y, by=ay+ay
  x=x-t*(fn2(by*(ay*(32*y*(y*(by*(ay-3)-3)+13)-231)+87)-17))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Tc06-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  ax=x+x, bx=ax+ax
  Tx=(fn1(bx*(ax*(32*x*(x*(bx*(ax-3)-3)+13)-231)+87)-17))
  ay=y+y, by=ay+ay
  Ty=(fn1(by*(ay*(32*y*(y*(by*(ay-3)-3)+13)-231)+87)-17))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Tc06-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  ax=x+x, bx=ax+ax
  Tx=(fn1(bx*(ax*(32*x*(x*(bx*(ax-3)-3)+13)-231)+87)-17))
  ay=y+y, by=ay+ay
  Ty=(fn1(by*(ay*(32*y*(y*(by*(ay-3)-3)+13)-231)+87)-17))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Tc06-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  ax=x+x, bx=ax+ax
  Tx=(fn1(bx*(ax*(32*x*(x*(bx*(ax-3)-3)+13)-231)+87)-17))
  ay=y+y, by=ay+ay
  Ty=(fn1(by*(ay*(32*y*(y*(by*(ay-3)-3)+13)-231)+87)-17))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Tc06-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=x+x, bx=ax+ax
  Tx=(fn1(bx*(ax*(32*x*(x*(bx*(ax-3)-3)+13)-231)+87)-17))
  ay=y+y, by=ay+ay
  Ty=(fn1(by*(ay*(32*y*(y*(by*(ay-3)-3)+13)-231)+87)-17))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Tc06-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax0=x0+x0, ax1=x1+x1
  bx0=ax0+ax0, bx1=ax1+ax1
  Fx0=bx0*(ax0*(32*x0*(x0*(bx0*(ax0-3)-3)+13)-231)+87)-17
  Fx1=bx1*(ax1*(32*x1*(x1*(bx1*(ax1-3)-3)+13)-231)+87)-17
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Tc07-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(x+x)*(32*x*(x*(8*x*(x*(16*x*(x-2)+5)+30)-213)+71)-287)+20
  Ty=(y+y)*(32*y*(y*(8*y*(y*(16*y*(y-2)+5)+30)-213)+71)-287)+20
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Tc07-02 (XAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(2z-1)Tc(6)-Tc(5)
  bailout=p1+4, z=pixel:
  z=2*z*(32*z*(z*(8*z*(z*(16*z*(z-2)+5)+30)-213)+71)-287)+20
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Tc07-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  const=p1, z=pixel:
  z=(z+z)*(32*z*(z*(8*z*(z*(16*z*(z-2)+5)+30)-213)+71)-287)+20+const
  |z|<100
  ;SOURCE: chby3.frm
}


Tc07-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  const=pixel, z=p1:
  z=(z+z)*(32*z*(z*(8*z*(z*(16*z*(z-2)+5)+30)-213)+71)-287)+20+const
  |z|<100
  ;SOURCE: chby4.frm
}


Tc07-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=8*z
  b=16*z
  f=2*z*(32*z*(z*(a*(z*(b*(z-2)+5)+30)-213)+71)-287)+20
  fd=64*z*(z*(a*(z*(b*(7*z-12)+25)+120)-639)+71)-1148
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Tc07-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=8*z
  b=16*z
  f=(z+z)*(32*z*(z*(a*(z*(b*(z-2)+5)+30)-213)+71)-287)+20
  fd=64*z*(z*(a*(z*(b*(7*z-12)+25)+120)-639)+71)-1148
  fdd=128*z*(b*(z*(24*z*(7*z-10)+25)+90)-639)+4544
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Tc07-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  bailout=real(p2)/10000, z=pixel:
  a=8*z
  b=16*z
  f=(z+z)*(32*z*(z*(a*(z*(b*(z-2)+5)+30)-213)+71)-287)+20
  fd=64*z*(z*(a*(z*(b*(7*z-12)+25)+120)-639)+71)-1148
  oz=z
  w=f-f/fd
  fw=64*w*(w*(8*w*(w*(16*w*(7*w-12)+25)+120)-639)+71)-1148
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Tc07-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin((x+x)*(32*x*(x*(8*x*(x*(16*x*(x-2)+5)+30)-213)+71)-287)+20)
  Ty=sin((y+y)*(32*y*(y*(8*y*(y*(16*y*(y-2)+5)+30)-213)+71)-287)+20)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Tc07-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((x+x)*(32*x*(x*(8*x*(x*(16*x*(x-2)+5)+30)-213)+71)-287)+20)
  Ty=fn1((y+y)*(32*y*(y*(8*y*(y*(16*y*(y-2)+5)+30)-213)+71)-287)+20)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Tc07-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(p1+p1)*(32*p1*(p1*(8*p1*(p1*(16*p1*(p1-2)+5)+30)-213)+71)-287)+20:
  zt=z
  foz=fz
  fz=(z+z)*(32*z*(z*(8*z*(z*(16*z*(z-2)+5)+30)-213)+71)-287)+20
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Tc07-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  const=p1, z=pixel:
  z=((z+z)*(32*z*(z*(8*z*(z*(16*z*(z-2)+5)+30)-213)+71)-287)+20)*const
  |z|<100
  ;SOURCE: chby11.frm
}


Tc07-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  const=pixel, z=p1:
  z=((z+z)*(32*z*(z*(8*z*(z*(16*z*(z-2)+5)+30)-213)+71)-287)+20)*const
  |z|<100
  ;SOURCE: chby12.frm
}


Tc07-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=8*z
  b=16*z
  f=2*z*(32*z*(z*(a*(z*(b*(z-2)+5)+30)-213)+71)-287)+20
  fd=64*z*(z*(a*(z*(b*(7*z-12)+25)+120)-639)+71)-1148
  fdd=128*z*(b*(z*(24*z*(7*z-10)+25)+90)-639)+4544
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Tc07-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  bailout=real(p2)/10000, z=pixel:
  a=8*z
  b=16*z
  f=(z+z)*(32*z*(z*(a*(z*(b*(z-2)+5)+30)-213)+71)-287)+20
  fd=64*z*(z*(a*(z*(b*(7*z-12)+25)+120)-639)+71)-1148
  oz=z
  w=f-f/fd
  fw=64*w*(w*(8*w*(w*(16*w*(7*w-12)+25)+120)-639)+71)-1148
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


Tc07-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=8*z
  b=16*z
  f=2*z*(32*z*(z*(a*(z*(b*(z-2)+5)+30)-213)+71)-287)+20
  fd=64*z*(z*(a*(z*(b*(7*z-12)+25)+120)-639)+71)-1148
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Tc07-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(p1+p1)*(32*p1*(p1*(8*p1*(p1*(16*p1*(p1-2)+5)+30)-213)+71)-287)+20:
  zt=z
  foz=fz
  fz=(z+z)*(32*z*(z*(8*z*(z*(16*z*(z-2)+5)+30)-213)+71)-287)+20
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


Tc07-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  z=pixel, oz=0
  fz=20
  zt=fn1(z)+p1:
  foz=fz
  fz=(z+z)*(32*z*(z*(8*z*(z*(16*z*(z-2)+5)+30)-213)+71)-287)+20
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Tc07-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  fz=20
  zt=fn1(z)+p1:
  foz=fz
  fz=(z+z)*(32*z*(z*(8*z*(z*(16*z*(z-2)+5)+30)-213)+71)-287)+20
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


Tc07-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*((x+x)*(32*x*(x*(8*x*(x*(16*x*(x-2)+5)+30)-213)+71)-287)+20)
  x=x-t*((y+y)*(32*y*(y*(8*y*(y*(16*y*(y-2)+5)+30)-213)+71)-287)+20)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Tc07-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin((x+x)*(32*x*(x*(8*x*(x*(16*x*(x-2)+5)+30)-213)+71)-287)+20)
  x=x-t*sin((y+y)*(32*y*(y*(8*y*(y*(16*y*(y-2)+5)+30)-213)+71)-287)+20)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Tc07-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1((x+x)*(32*x*(x*(8*x*(x*(16*x*(x-2)+5)+30)-213)+71)-287)+20))
  x=x-t*(fn1((y+y)*(32*y*(y*(8*y*(y*(16*y*(y-2)+5)+30)-213)+71)-287)+20))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Tc07-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((x+x)*(32*x*(x*(8*x*(x*(16*x*(x-2)+5)+30)-213)+71)-287)+20)
  Ty=fn2((y+y)*(32*y*(y*(8*y*(y*(16*y*(y-2)+5)+30)-213)+71)-287)+20)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Tc07-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1((x+x)*(32*x*(x*(8*x*(x*(16*x*(x-2)+5)+30)-213)+71)-287)+20)
  Ty=fn2((y+y)*(32*y*(y*(8*y*(y*(16*y*(y-2)+5)+30)-213)+71)-287)+20)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Tc07-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1((x+x)*(32*x*(x*(8*x*(x*(16*x*(x-2)+5)+30)-213)+71)-287)+20))
  x=x-t*(fn2((y+y)*(32*y*(y*(8*y*(y*(16*y*(y-2)+5)+30)-213)+71)-287)+20))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Tc07-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1((x+x)*(32*x*(x*(8*x*(x*(16*x*(x-2)+5)+30)-213)+71)-287)+20))
  x=x-t*(fn2((y+y)*(32*y*(y*(8*y*(y*(16*y*(y-2)+5)+30)-213)+71)-287)+20))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Tc07-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1((x+x)*(32*x*(x*(8*x*(x*(16*x*(x-2)+5)+30)-213)+71)-287)+20))
  Ty=(fn1((y+y)*(32*y*(y*(8*y*(y*(16*y*(y-2)+5)+30)-213)+71)-287)+20))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Tc07-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1((x+x)*(32*x*(x*(8*x*(x*(16*x*(x-2)+5)+30)-213)+71)-287)+20))
  Ty=(fn1((y+y)*(32*y*(y*(8*y*(y*(16*y*(y-2)+5)+30)-213)+71)-287)+20))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Tc07-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1((x+x)*(32*x*(x*(8*x*(x*(16*x*(x-2)+5)+30)-213)+71)-287)+20))
  Ty=(fn1((y+y)*(32*y*(y*(8*y*(y*(16*y*(y-2)+5)+30)-213)+71)-287)+20))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Tc07-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1((x+x)*(32*x*(x*(8*x*(x*(16*x*(x-2)+5)+30)-213)+71)-287)+20))
  Ty=(fn1((y+y)*(32*y*(y*(8*y*(y*(16*y*(y-2)+5)+30)-213)+71)-287)+20))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Tc07-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=(x0+x0)*(32*x0*(x0*(8*x0*(x0*(16*x0*(x0-2)+5)+30)-213)+71)-287)+20
  Fx1=(x1+x1)*(32*x1*(x1*(8*x1*(x1*(16*x1*(x1-2)+5)+30)-213)+71)-287)+20
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Tc08-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=x+x, ay=y+y
  bx=ax+ax, by=ay+ay
  cx=16*x, cy=16*y
  Tx=cx*(bx*(ax*(cx*(x*(bx*(ax*(ax-5)+5)+29)+420+329)-149)+55)-23)
  Ty=cy*(by*(ay*(cy*(y*(by*(ay*(ay-5)+5)+29)+420+329)-149)+55)-23)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Tc08-02 (XAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(2z-1)Tc(7)-Tc(6)
  bailout=p1+4, z=pixel:
  a=2*z
  b=4*z
  c=16*z
  z=c*(b*(a*(c*(z*(b*(a*(a-5)+5)+29)+420+329)-149)+55)-23)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Tc08-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  const=p1, z=pixel:
  a=z+z
  b=a+a
  c=16*z
  z=c*(b*(a*(c*(z*(b*(a*(a-5)+5)+29)+420+329)-149)+55)-23)+const
  |z|<100
  ;SOURCE: chby3.frm
}


Tc08-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  const=pixel, z=p1:
  a=z+z
  b=a+a
  c=16*z
  z=c*(b*(a*(c*(z*(b*(a*(a-5)+5)+29)+420+329)-149)+55)-23)+const
  |z|<100
  ;SOURCE: chby4.frm
}


Tc08-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=2*z
  b=4*z
  c=16*z
  f=c*(b*(a*(c*(z*(b*(a*(a-5)+5)+29)+420+329)-149)+55)-23)
  fd=128*z*(z*(c*(z*(8*z*(z*(c-35)+15)+145)+168)+987)-149)+880
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Tc08-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=z+z
  b=a+a
  c=16*z
  f=c*(b*(a*(c*(z*(b*(a*(a-5)+5)+29)+420+329)-149)+55)-23)
  fd=128*z*(z*(c*(z*(8*z*(z*(c-35)+15)+145)+168)+987)-149)+880
  fdd=256*z*(32*z*(z*(a*(14*z*(8*z-15)+75)+145)+126)+987)-19072
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Tc08-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  bailout=real(p2)/10000, z=pixel:
  a=z+z
  b=a+a
  c=16*z
  f=c*(b*(a*(c*(z*(b*(a*(a-5)+5)+29)+420+329)-149)+55)-23)
  fd=128*z*(z*(c*(z*(8*z*(z*(c-35)+15)+145)+168)+987)-149)+880
  oz=z
  w=f-f/fd
  cw=16*w
  fw=128*w*(w*(cw*(w*(8*w*(w*(cw-35)+15)+145)+168)+987)-149)+880
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Tc08-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=x+x, ay=y+y
  bx=ax+ax, by=ay+ay
  cx=16*x, cy=16*y
  Tx=sin(cx*(bx*(ax*(cx*(x*(bx*(ax*(ax-5)+5)+29)+420+329)-149)+55)-23))
  Ty=sin(cy*(by*(ay*(cy*(y*(by*(ay*(ay-5)+5)+29)+420+329)-149)+55)-23))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Tc08-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=x+x, ay=y+y
  bx=ax+ax, by=ay+ay
  cx=16*x, cy=16*y
  Tx=fn1(cx*(bx*(ax*(cx*(x*(bx*(ax*(ax-5)+5)+29)+420+329)-149)+55)-23))
  Ty=fn1(cy*(by*(ay*(cy*(y*(by*(ay*(ay-5)+5)+29)+420+329)-149)+55)-23))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Tc08-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=p1+p1, b=a+a, c=16*p1
  fz=c*(b*(a*(c*(p1*(b*(a*(2*p1-5)+5)+29)+420+329)-149)+55)-23):
  zt=z
  foz=fz
  a=z+z, b=a+a, c=16*z
  fz=c*(b*(a*(c*(z*(b*(a*(a-5)+5)+29)+420+329)-149)+55)-23)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Tc08-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  const=p1, z=pixel:
  a=z+z
  b=a+a
  c=16*z
  z=c*(b*(a*(c*(z*(b*(a*(a-5)+5)+29)+420+329)-149)+55)-23)*const
  |z|<100
  ;SOURCE: chby11.frm
}


Tc08-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  const=pixel, z=p1:
  a=z+z
  b=a+a
  c=16*z
  z=c*(b*(a*(c*(z*(b*(a*(a-5)+5)+29)+420+329)-149)+55)-23)*const
  |z|<100
  ;SOURCE: chby12.frm
}


Tc08-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=2*z
  b=4*z
  c=16*z
  f=c*(b*(a*(c*(z*(b*(a*(a-5)+5)+29)+420+329)-149)+55)-23)
  fd=128*z*(z*(c*(z*(8*z*(z*(c-35)+15)+145)+168)+987)-149)+880
  fdd=256*z*(32*z*(z*(a*(14*z*(8*z-15)+75)+145)+126)+987)-19072
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Tc08-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  bailout=real(p2)/10000, z=pixel:
  a=z+z
  b=a+a
  c=16*z
  f=c*(b*(a*(c*(z*(b*(a*(a-5)+5)+29)+420+329)-149)+55)-23)
  fd=128*z*(z*(c*(z*(8*z*(z*(c-35)+15)+145)+168)+987)-149)+880
  oz=z
  w=f-f/fd
  cw=16*w
  fw=128*w*(w*(cw*(w*(8*w*(w*(cw-35)+15)+145)+168)+987)-149)+880
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


Tc08-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=2*z
  b=4*z
  c=16*z
  f=c*(b*(a*(c*(z*(b*(a*(a-5)+5)+29)+420+329)-149)+55)-23)
  fd=128*z*(z*(c*(z*(8*z*(z*(c-35)+15)+145)+168)+987)-149)+880
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Tc08-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=p1+p1, b=a+a, c=16*p1
  fz=c*(b*(a*(c*(p1*(b*(a*(2*p1-5)+5)+29)+420+329)-149)+55)-23):
  zt=z
  foz=fz
  a=z+z, b=a+a, c=16*z
  fz=c*(b*(a*(c*(z*(b*(a*(a-5)+5)+29)+420+329)-149)+55)-23)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


Tc08-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  a=z+z, b=a+a, c=16*z
  fz=c*(b*(a*(c*(z*(b*(a*(a-5)+5)+29)+420+329)-149)+55)-23)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Tc08-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  a=z+z, b=a+a, c=16*z
  fz=c*(b*(a*(c*(z*(b*(a*(a-5)+5)+29)+420+329)-149)+55)-23)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


Tc08-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=x+x, bx=ax+ax, cx=16*x
  y=y+t*(cx*(bx*(ax*(cx*(x*(bx*(ax*(ax-5)+5)+29)+420+329)-149)+55)-23))
  ay=y+y, by=ay+ay, cy=16*y
  x=x-t*(cy*(by*(ay*(cy*(y*(by*(ay*(ay-5)+5)+29)+420+329)-149)+55)-23))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Tc08-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=x+x, bx=ax+ax, cx=16*x
  y=y+t*sin(cx*(bx*(ax*(cx*(x*(bx*(ax*(ax-5)+5)+29)+420+329)-149)+55)-23))
  ay=y+y, by=ay+ay, cy=16*y
  x=x-t*sin(cy*(by*(ay*(cy*(y*(by*(ay*(ay-5)+5)+29)+420+329)-149)+55)-23))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Tc08-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=x+x, bx=ax+ax, cx=16*x
  y=y+t*(fn1(cx*(bx*(ax*(cx*(x*(bx*(ax*(ax-5)+5)+29)+420+329)-149)+55)-23)))
  ay=y+y, by=ay+ay, cy=16*y
  x=x-t*(fn1(cy*(by*(ay*(cy*(y*(by*(ay*(ay-5)+5)+29)+420+329)-149)+55)-23)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Tc08-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=x+x, ay=y+y
  bx=ax+ax, by=ay+ay
  cx=16*x, cy=16*y
  Tx=fn1(cx*(bx*(ax*(cx*(x*(bx*(ax*(ax-5)+5)+29)+420+329)-149)+55)-23))
  Ty=fn2(cy*(by*(ay*(cy*(y*(by*(ay*(ay-5)+5)+29)+420+329)-149)+55)-23))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Tc08-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=x+x, ay=y+y
  bx=ax+ax, by=ay+ay
  cx=16*x, cy=16*y
  Tx=fn1(cx*(bx*(ax*(cx*(x*(bx*(ax*(ax-5)+5)+29)+420+329)-149)+55)-23))
  Ty=fn2(cy*(by*(ay*(cy*(y*(by*(ay*(ay-5)+5)+29)+420+329)-149)+55)-23))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Tc08-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=x+x, bx=ax+ax, cx=16*x
  y=y+t*(fn1(cx*(bx*(ax*(cx*(x*(bx*(ax*(ax-5)+5)+29)+420+329)-149)+55)-23)))
  ay=y+y, by=ay+ay, cy=16*y
  x=x-t*(fn2(cy*(by*(ay*(cy*(y*(by*(ay*(ay-5)+5)+29)+420+329)-149)+55)-23)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Tc08-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=x+x, bx=ax+ax, cx=16*x
  y=y+t*(fn1(cx*(bx*(ax*(cx*(x*(bx*(ax*(ax-5)+5)+29)+420+329)-149)+55)-23)))
  ay=y+y, by=ay+ay, cy=16*y
  x=x-t*(fn2(cy*(by*(ay*(cy*(y*(by*(ay*(ay-5)+5)+29)+420+329)-149)+55)-23)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Tc08-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  ax=x+x, bx=ax+ax, cx=16*x
  Tx=(fn1(cx*(bx*(ax*(cx*(x*(bx*(ax*(ax-5)+5)+29)+420+329)-149)+55)-23)))
  ay=y+y, by=ay+ay, cy=16*y
  Ty=(fn1(cy*(by*(ay*(cy*(y*(by*(ay*(ay-5)+5)+29)+420+329)-149)+55)-23)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Tc08-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  ax=x+x, bx=ax+ax, cx=16*x
  Tx=(fn1(cx*(bx*(ax*(cx*(x*(bx*(ax*(ax-5)+5)+29)+420+329)-149)+55)-23)))
  ay=y+y, by=ay+ay, cy=16*y
  Ty=(fn1(cy*(by*(ay*(cy*(y*(by*(ay*(ay-5)+5)+29)+420+329)-149)+55)-23)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Tc08-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  ax=x+x, bx=ax+ax, cx=16*x
  Tx=(fn1(cx*(bx*(ax*(cx*(x*(bx*(ax*(ax-5)+5)+29)+420+329)-149)+55)-23)))
  ay=y+y, by=ay+ay, cy=16*y
  Ty=(fn1(cy*(by*(ay*(cy*(y*(by*(ay*(ay-5)+5)+29)+420+329)-149)+55)-23)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Tc08-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=x+x, bx=ax+ax, cx=16*x
  Tx=(fn1(cx*(bx*(ax*(cx*(x*(bx*(ax*(ax-5)+5)+29)+420+329)-149)+55)-23)))
  ay=y+y, by=ay+ay, cy=16*y
  Ty=(fn1(cy*(by*(ay*(cy*(y*(by*(ay*(ay-5)+5)+29)+420+329)-149)+55)-23)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Tc08-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax0=x0+x0, ax1=x1+x1
  bx0=ax0+ax0, bx1=ax1+ax1
  cx0=16*x0, cx1=16*x1
  Fx0=cx0*(bx0*(ax0*(cx0*(x0*(bx0*(ax0*(ax0-5)+5)+29)+420+329)-149)+55)-23)
  Fx1=cx1*(bx1*(ax1*(cx1*(x1*(bx1*(ax1*(ax1-5)+5)+29)+420+329)-149)+55)-23)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Tc09-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=8*x, ay=8*y
  Tx=(x+x)*(32*x*(x*(ax*(x*(16*x*(x*(ax*(x+x-7)+59)+11)+435)-37)+1041)+282)-639)+26
  Ty=(y+y)*(32*y*(y*(ay*(y*(16*y*(y*(ay*(y+y-7)+59)+11)+435)-37)+1041)+282)-639)+26
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Tc09-02 (XAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(2z-1)Tc(8)-Tc(7)
  bailout=p1+4, z=pixel:
  a=8*z
  z=2*z*(32*z*(z*(a*(z*(16*z*(z*(a*(2*z-7)+59)+11)+435)-37)+1041)+282)-639)+26
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Tc09-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  const=p1, z=pixel:
  a=8*z
  z=(z+z)*(32*z*(z*(a*(z*(16*z*(z*(a*(z+z-7)+59)+11)+435)-37)+1041)+282)-639)+26+const
  |z|<100
  ;SOURCE: chby3.frm
}


Tc09-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  const=pixel, z=p1:
  a=8*z
  b=z+z
  z=b*(32*z*(z*(a*(z*(16*z*(z*(a*(b-7)+59)+11)+435)-37)+1041)+282)-639)+26+const
  |z|<100
  ;SOURCE: chby4.frm
}


Tc09-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=8*z
  b=16*z
  c=2*z
  f=c*(32*z*(z*(a*(z*(b*(z*(a*(c-7)+59)+11)+435)-37)+1041)+282)-639)+26
  fd=64*z*(z*(a*(z*(b*(z*(b*(9*z-28)+413)+66)+2175)-148)+3123)+564)-1278
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Tc09-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=8*z
  b=16*z
  c=z+z
  f=c*(32*z*(z*(a*(z*(b*(z*(a*(c-7)+59)+11)+435)-37)+1041)+282)-639)+26
  fd=64*z*(z*(a*(z*(b*(z*(b*(9*z-28)+413)+66)+2175)-148)+3123)+564)-1278
  fdd=128*z*(b*(z*(a*(z*(32*z*(18*z-49)+1239)+165)+2175)-111)+3123)+36096
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Tc09-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  bailout=real(p2)/10000, z=pixel:
  a=8*z
  b=16*z
  c=z+z
  f=c*(32*z*(z*(a*(z*(b*(z*(a*(c-7)+59)+11)+435)-37)+1041)+282)-639)+26
  fd=64*z*(z*(a*(z*(b*(z*(b*(9*z-28)+413)+66)+2175)-148)+3123)+564)-1278
  oz=z
  w=f-f/fd
  bw=16*w
  fw=64*w*(w*(8*w*(w*(bw*(w*(bw*(9*w-28)+413)+66)+2175)-148)+3123)+564)-1278
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Tc09-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=x+x, ay=y+y
  bx=8*x, by=8*y
  Tx=sin(ax*(32*x*(x*(bx*(x*(16*x*(x*(bx*(ax-7)+59)+11)+435)-37)+1041)+282)-639)+26)
  Ty=sin(ay*(32*y*(y*(by*(y*(16*y*(y*(by*(ay-7)+59)+11)+435)-37)+1041)+282)-639)+26)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Tc09-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=8*x, ay=8*y
  bx=x+x, by=y+y
  Tx=fn1(bx*(32*x*(x*(ax*(x*(16*x*(x*(ax*(bx-7)+59)+11)+435)-37)+1041)+282)-639)+26)
  Ty=fn1(by*(32*y*(y*(ay*(y*(16*y*(y*(ay*(by-7)+59)+11)+435)-37)+1041)+282)-639)+26)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Tc09-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=8*p1, b=p1+p1
  fz=b*(32*p1*(p1*(a*(p1*(16*p1*(p1*(a*(b-7)+59)+11)+435)-37)+1041)+282)-639)+26:
  zt=z
  foz=fz
  a=8*z, b=z+z
  fz=b*(32*z*(z*(a*(z*(16*z*(z*(a*(b-7)+59)+11)+435)-37)+1041)+282)-639)+26
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Tc09-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  const=p1, z=pixel:
  a=8*z, b=z+z
  z=(b*(32*z*(z*(a*(z*(16*z*(z*(a*(b-7)+59)+11)+435)-37)+1041)+282)-639)+26)*const
  |z|<100
  ;SOURCE: chby11.frm
}


Tc09-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  const=pixel, z=p1:
  a=8*z, b=z+z
  z=(b*(32*z*(z*(a*(z*(16*z*(z*(a*(b-7)+59)+11)+435)-37)+1041)+282)-639)+26)*const
  |z|<100
  ;SOURCE: chby12.frm
}


Tc09-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=8*z
  b=16*z
  c=2*z
  f=c*(32*z*(z*(a*(z*(b*(z*(a*(c-7)+59)+11)+435)-37)+1041)+282)-639)+26
  fd=64*z*(z*(a*(z*(b*(z*(b*(9*z-28)+413)+66)+2175)-148)+3123)+564)-1278
  fdd=128*z*(b*(z*(a*(z*(32*z*(18*z-49)+1239)+165)+2175)-111)+3123)+36096
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Tc09-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  bailout=real(p2)/10000, z=pixel:
  a=8*z
  b=16*z
  c=z+z
  f=c*(32*z*(z*(a*(z*(b*(z*(a*(c-7)+59)+11)+435)-37)+1041)+282)-639)+26
  fd=64*z*(z*(a*(z*(b*(z*(b*(9*z-28)+413)+66)+2175)-148)+3123)+564)-1278
  oz=z
  w=f-f/fd
  bw=16*w
  fw=64*w*(w*(8*w*(w*(bw*(w*(bw*(9*w-28)+413)+66)+2175)-148)+3123)+564)-1278
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


Tc09-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=8*z
  b=16*z
  c=2*z
  f=c*(32*z*(z*(a*(z*(b*(z*(a*(c-7)+59)+11)+435)-37)+1041)+282)-639)+26
  fd=64*z*(z*(a*(z*(b*(z*(b*(9*z-28)+413)+66)+2175)-148)+3123)+564)-1278
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Tc09-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=8*p1, b=p1+p1
  fz=b*(32*p1*(p1*(a*(p1*(16*p1*(p1*(a*(b-7)+59)+11)+435)-37)+1041)+282)-639)+26:
  zt=z
  foz=fz
  a=8*z, b=z+z
  fz=b*(32*z*(z*(a*(z*(16*z*(z*(a*(b-7)+59)+11)+435)-37)+1041)+282)-639)+26
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


Tc09-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  z=pixel, oz=0
  fz=26
  zt=fn1(z)+p1:
  foz=fz
  a=8*z, b=z+z
  fz=b*(32*z*(z*(a*(z*(16*z*(z*(a*(b-7)+59)+11)+435)-37)+1041)+282)-639)+26
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Tc09-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  z=pixel, oz=0
  fz=26
  zt=fn1(z)+p1:
  foz=fz
  a=8*z, b=z+z
  fz=b*(32*z*(z*(a*(z*(16*z*(z*(a*(b-7)+59)+11)+435)-37)+1041)+282)-639)+26
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


Tc09-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=8*x
  y=y+t*((x+x)*(32*x*(x*(ax*(x*(16*x*(x*(ax*(x+x-7)+59)+11)+435)-37)+1041)+282)-639)+26)
  ay=8*y
  x=x-t*((y+y)*(32*y*(y*(ay*(y*(16*y*(y*(ay*(y+y-7)+59)+11)+435)-37)+1041)+282)-639)+26)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Tc09-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=x+x, bx=8*x
  y=y+t*sin(ax*(32*x*(x*(bx*(x*(16*x*(x*(bx*(ax-7)+59)+11)+435)-37)+1041)+282)-639)+26)
  ay=y+y, by=8*y
  x=x-t*sin(ay*(32*y*(y*(by*(y*(16*y*(y*(by*(ay-7)+59)+11)+435)-37)+1041)+282)-639)+26)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Tc09-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=8*x, bx=x+x
  y=y+t*(fn1(bx*(32*x*(x*(ax*(x*(16*x*(x*(ax*(bx-7)+59)+11)+435)-37)+1041)+282)-639)+26))
  ay=8*y, by=y+y
  x=x-t*(fn1(by*(32*y*(y*(ay*(y*(16*y*(y*(ay*(by-7)+59)+11)+435)-37)+1041)+282)-639)+26))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Tc09-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=8*x, ay=8*y
  bx=x+x, by=y+y
  Tx=fn1(bx*(32*x*(x*(ax*(x*(16*x*(x*(ax*(bx-7)+59)+11)+435)-37)+1041)+282)-639)+26)
  Ty=fn2(by*(32*y*(y*(ay*(y*(16*y*(y*(ay*(by-7)+59)+11)+435)-37)+1041)+282)-639)+26)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Tc09-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=8*x, ay=8*y
  bx=x+x, by=y+y
  Tx=fn1(bx*(32*x*(x*(ax*(x*(16*x*(x*(ax*(bx-7)+59)+11)+435)-37)+1041)+282)-639)+26)
  Ty=fn2(by*(32*y*(y*(ay*(y*(16*y*(y*(ay*(by-7)+59)+11)+435)-37)+1041)+282)-639)+26)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Tc09-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=8*x, bx=x+x
  y=y+t*(fn1(bx*(32*x*(x*(ax*(x*(16*x*(x*(ax*(bx-7)+59)+11)+435)-37)+1041)+282)-639)+26))
  ay=8*y, by=y+y
  x=x-t*(fn2(by*(32*y*(y*(ay*(y*(16*y*(y*(ay*(by-7)+59)+11)+435)-37)+1041)+282)-639)+26))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Tc09-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=8*x, bx=x+x
  y=y+t*(fn1(bx*(32*x*(x*(ax*(x*(16*x*(x*(ax*(bx-7)+59)+11)+435)-37)+1041)+282)-639)+26))
  ay=8*y, by=y+y
  x=x-t*(fn2(by*(32*y*(y*(ay*(y*(16*y*(y*(ay*(by-7)+59)+11)+435)-37)+1041)+282)-639)+26))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Tc09-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  ax=8*x, bx=x+x
  Tx=(fn1(bx*(32*x*(x*(ax*(x*(16*x*(x*(ax*(bx-7)+59)+11)+435)-37)+1041)+282)-639)+26))
  ay=8*y, by=y+y
  Ty=(fn1(by*(32*y*(y*(ay*(y*(16*y*(y*(ay*(by-7)+59)+11)+435)-37)+1041)+282)-639)+26))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Tc09-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  ax=8*x, bx=x+x
  Tx=(fn1(bx*(32*x*(x*(ax*(x*(16*x*(x*(ax*(bx-7)+59)+11)+435)-37)+1041)+282)-639)+26))
  ay=8*y, by=y+y
  Ty=(fn1(by*(32*y*(y*(ay*(y*(16*y*(y*(ay*(by-7)+59)+11)+435)-37)+1041)+282)-639)+26))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Tc09-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  ax=8*x, bx=x+x
  Tx=(fn1(bx*(32*x*(x*(ax*(x*(16*x*(x*(ax*(bx-7)+59)+11)+435)-37)+1041)+282)-639)+26))
  ay=8*y, by=y+y
  Ty=(fn1(by*(32*y*(y*(ay*(y*(16*y*(y*(ay*(by-7)+59)+11)+435)-37)+1041)+282)-639)+26))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Tc09-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=8*x, bx=x+x
  Tx=(fn1(bx*(32*x*(x*(ax*(x*(16*x*(x*(ax*(bx-7)+59)+11)+435)-37)+1041)+282)-639)+26))
  ay=8*y, by=y+y
  Ty=(fn1(by*(32*y*(y*(ay*(y*(16*y*(y*(ay*(by-7)+59)+11)+435)-37)+1041)+282)-639)+26))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Tc09-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax0=8*x0, ax1=8*x1
  Fx0=(x0+x0)*(32*x0*(x0*(ax0*(x0*(16*x0*(x0*(ax0*(x0+x0-7)+59)+11)+435)-37)+1041)+282)-639)+26
  Fx1=(x1+x1)*(32*x1*(x1*(ax1*(x1*(16*x1*(x1*(ax1*(x1+x1-7)+59)+11)+435)-37)+1041)+282)-639)+26
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Tc10-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x, ay=4*y
  bx=32*x, by=32*y
  cx=x+x, cy=y+y
  Tx=ax*(cx*(bx*(x*(ax*(cx*(bx*(x*(8*x*(x-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29
  Ty=ay*(cy*(by*(y*(ay*(cy*(by*(y*(8*y*(y-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Tc10-02 (XAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(2z-1)Tc(9)-Tc(8)
  bailout=p1+4, z=pixel:
  a=4*z
  b=32*z
  c=2*z
  z=a*(c*(b*(z*(a*(c*(b*(z*(8*z*(z-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Tc10-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  const=p1, z=pixel:
  b=32*z
  c=z+z
  a=c+c
  z=a*(c*(b*(z*(a*(c*(b*(z*(8*z*(z-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29+const
  |z|<100
  ;SOURCE: chby3.frm
}


Tc10-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  const=pixel, z=p1:
  a=4*z
  b=32*z
  c=z+z
  z=a*(c*(b*(z*(a*(c*(b*(z*(8*z*(z-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29+const
  |z|<100
  ;SOURCE: chby4.frm
}


Tc10-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=4*z
  b=32*z
  c=2*z
  d=16*z
  f=a*(c*(b*(z*(a*(c*(b*(z*(8*z*(z-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29
  fd=d*(d*(z*(a*(a*(128*z*(z*(2*z*(5*z-18)+43)-7)+981)-2835)+3414)-1209)-3959)+1780
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Tc10-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=4*z
  b=32*z
  c=z+z
  d=16*z
  f=a*(c*(b*(z*(a*(c*(b*(z*(8*z*(z-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29
  fd=d*(d*(z*(a*(a*(128*z*(z*(c*(5*z-18)+43)-7)+981)-2835)+3414)-1209)-3959)+1780
  fdd=512*z*(z*(8*z*(z*(128*z*(z*(18*z*(5*z-16)+301)-42)+4905)-2835)+5121)-1209)-63344
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Tc10-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  bailout=real(p2)/10000, z=pixel:
  a=4*z
  b=32*z
  c=z+z
  d=16*z
  f=a*(c*(b*(z*(a*(c*(b*(z*(8*z*(z-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29
  fd=d*(d*(z*(a*(a*(128*z*(z*((z+z)*(5*z-18)+43)-7)+981)-2835)+3414)-1209)-3959)+1780
  oz=z
  w=f-f/fd
  aw=4*w
  dw=16*w
  fw=dw*(dw*(w*(aw*(aw*(128*w*(w*((w+w)*(5*w-18)+43)-7)+981)-2835)+3414)-1209)-3959)+1780
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Tc10-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x, ay=4*y
  bx=32*x, by=32*y
  cx=x+x, cy=y+y
  Tx=sin(ax*(cx*(bx*(x*(ax*(cx*(bx*(x*(8*x*(x-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29)
  Ty=sin(ay*(cy*(by*(y*(ay*(cy*(by*(y*(8*y*(y-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Tc10-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x, ay=4*y
  bx=32*x, by=32*y
  cx=x+x, cy=y+y
  Tx=fn1(ax*(cx*(bx*(x*(ax*(cx*(bx*(x*(8*x*(x-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29)
  Ty=fn1(ay*(cy*(by*(y*(ay*(cy*(by*(y*(8*y*(y-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Tc10-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  bailout=real(p2)/10000, z=pixel, oz=p1
  b=32*p1, c=p1+p1, a=c+c
  fz=a*(c*(b*(p1*(a*(c*(b*(p1*(8*p1*(p1-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29:
  zt=z
  foz=fz
  b=32*z, c=z+z, a=c+c
  fz=a*(c*(b*(z*(a*(c*(b*(z*(8*z*(z-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Tc10-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  const=p1, z=pixel:
  a=4*z
  b=32*z
  c=z+z
  z=(a*(c*(b*(z*(a*(c*(b*(z*(8*z*(z-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29)*const
  |z|<100
  ;SOURCE: chby11.frm
}


Tc10-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  const=pixel, z=p1:
  a=4*z
  b=32*z
  c=z+z
  z=(a*(c*(b*(z*(a*(c*(b*(z*(8*z*(z-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29)*const
  |z|<100
  ;SOURCE: chby12.frm
}


Tc10-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=4*z
  b=32*z
  c=2*z
  d=16*z
  f=a*(c*(b*(z*(a*(c*(b*(z*(8*z*(z-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29
  fd=d*(d*(z*(a*(a*(128*z*(z*(2*z*(5*z-18)+43)-7)+981)-2835)+3414)-1209)-3959)+1780
  fdd=512*z*(z*(8*z*(z*(128*z*(z*(18*z*(5*z-16)+301)-42)+4905)-2835)+5121)-1209)-63344
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Tc10-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  bailout=real(p2)/10000, z=pixel:
  a=4*z
  b=32*z
  c=z+z
  d=16*z
  f=a*(c*(b*(z*(a*(c*(b*(z*(8*z*(z-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29
  fd=d*(d*(z*(a*(a*(128*z*(z*((z+z)*(5*z-18)+43)-7)+981)-2835)+3414)-1209)-3959)+1780
  oz=z
  w=f-f/fd
  aw=4*w
  dw=16*w
  fw=dw*(dw*(w*(aw*(aw*(128*w*(w*((w+w)*(5*w-18)+43)-7)+981)-2835)+3414)-1209)-3959)+1780
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


Tc10-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=4*z
  b=32*z
  c=2*z
  d=16*z
  f=a*(c*(b*(z*(a*(c*(b*(z*(8*z*(z-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29
  fd=d*(d*(z*(a*(a*(128*z*(z*(2*z*(5*z-18)+43)-7)+981)-2835)+3414)-1209)-3959)+1780
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Tc10-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  bailout=real(p2)/10000, z=pixel, oz=p1
  b=32*p1, c=p1+p1, a=c+c
  fz=a*(c*(b*(p1*(a*(c*(b*(p1*(8*p1*(p1-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29:
  zt=z
  foz=fz
  b=32*z, c=z+z, a=c+c
  fz=a*(c*(b*(z*(a*(c*(b*(z*(8*z*(z-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


Tc10-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  z=pixel, oz=0
  fz=-29
  zt=fn1(z)+p1:
  foz=fz
  b=32*z, c=z+z, a=c+c
  fz=a*(c*(b*(z*(a*(c*(b*(z*(8*z*(z-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Tc10-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  z=pixel, oz=0
  fz=-29
  zt=fn1(z)+p1:
  foz=fz
  b=32*z, c=z+z, a=c+c
  fz=a*(c*(b*(z*(a*(c*(b*(z*(8*z*(z-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


Tc10-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x, bx=32*x, cx=x+x
  y=y+t*(ax*(cx*(bx*(x*(ax*(cx*(bx*(x*(8*x*(x-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29)
  ay=4*y, by=32*y, cy=y+y
  x=x-t*(ay*(cy*(by*(y*(ay*(cy*(by*(y*(8*y*(y-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Tc10-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=x+x, bx=32*x, cx=ax+ax
  y=y+t*sin(cx*(ax*(bx*(x*(cx*(ax*(bx*(x*(8*x*(x-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29)
  ay=y+y, by=32*y, c=ay+ay
  x=x-t*sin(cy*(ay*(by*(y*(cy*(ay*(by*(y*(8*y*(y-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Tc10-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x, bx=32*x, cx=x+x
  y=y+t*(fn1(ax*(cx*(bx*(x*(ax*(cx*(bx*(x*(8*x*(x-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29))
  ay=4*y, by=32*y, cy=y+y
  x=x-t*(fn1(ay*(cy*(by*(y*(ay*(cy*(by*(y*(8*y*(y-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Tc10-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x, ay=4*y
  bx=32*x, by=32*y
  cx=x+x, cy=y+y
  Tx=fn1(ax*(cx*(bx*(x*(ax*(cx*(bx*(x*(8*x*(x-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29)
  Ty=fn2(ay*(cy*(by*(y*(ay*(cy*(by*(y*(8*y*(y-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Tc10-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x, ay=4*y
  bx=32*x, by=32*y
  cx=x+x, cy=y+y
  Tx=fn1(ax*(cx*(bx*(x*(ax*(cx*(bx*(x*(8*x*(x-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29)
  Ty=fn2(ay*(cy*(by*(y*(ay*(cy*(by*(y*(8*y*(y-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Tc10-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x, bx=32*x, cx=x+x
  y=y+t*(fn1(ax*(cx*(bx*(x*(ax*(cx*(bx*(x*(8*x*(x-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29))
  ay=4*y, by=32*y, cy=y+y
  x=x-t*(fn2(ay*(cy*(by*(y*(ay*(cy*(by*(y*(8*y*(y-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Tc10-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x, bx=32*x, cx=x+x
  y=y+t*(fn1(ax*(cx*(bx*(x*(ax*(cx*(bx*(x*(8*x*(x-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29))
  ay=4*y, by=32*y, cy=y+y
  x=x-t*(fn2(ay*(cy*(by*(y*(ay*(cy*(by*(y*(8*y*(y-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Tc10-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  ax=4*x, bx=32*x, cx=x+x
  Tx=(fn1(ax*(cx*(bx*(x*(ax*(cx*(bx*(x*(8*x*(x-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29))
  ay=4*y, by=32*y, cy=y+y
  Ty=(fn1(ay*(cy*(by*(y*(ay*(cy*(by*(y*(8*y*(y-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Tc10-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  ax=4*x, bx=32*x, cx=x+x
  Tx=(fn1(ax*(cx*(bx*(x*(ax*(cx*(bx*(x*(8*x*(x-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29))
  ay=4*y, by=32*y, cy=y+y
  Ty=(fn1(ay*(cy*(by*(y*(ay*(cy*(by*(y*(8*y*(y-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Tc10-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  ax=4*x, bx=32*x, cx=x+x
  Tx=(fn1(ax*(cx*(bx*(x*(ax*(cx*(bx*(x*(8*x*(x-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29))
  ay=4*y, by=32*y, cy=y+y
  Ty=(fn1(ay*(cy*(by*(y*(ay*(cy*(by*(y*(8*y*(y-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Tc10-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x, bx=32*x, cx=x+x
  Tx=(fn1(ax*(cx*(bx*(x*(ax*(cx*(bx*(x*(8*x*(x-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29))
  ay=4*y, by=32*y, cy=y+y
  Ty=(fn1(ay*(cy*(by*(y*(ay*(cy*(by*(y*(8*y*(y-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Tc10-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax0=4*x0, ax1=4*x1
  bx0=32*x0, bx1=32*x1
  cx0=x0+x0, cx1=x1+x1
  Fx0=ax0*(cx0*(bx0*(x0*(ax0*(cx0*(bx0*(x0*(8*x0*(x0-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29
  Fx1=ax1*(cx1*(bx1*(x1*(ax1*(cx1*(bx1*(x1*(8*x1*(x1-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


tC1108 {; generalized CARR1108, by Caren Park
  z = fn1( p1 / (4 / p1))
  c = fn2( p2 / (1 / p2)):
  z = (z * 1 / c) / (fn3 (pixel) - c * c)
  z = z / c
  |real(z)| <=100 
  ;SOURCE: forummsg.frm
}


tC1126 {; generalized CARR1126, by Caren Park
  z = fn1( p1) / (p1 + pixel)
  c = (fn1( 1 / pixel * p2 / pixel))/(0.3, 0.6):
  z = z + c - fn2 (imag( z))
  |real(z)| <=100 
  ;SOURCE: forummsg.frm
}


tC1197 {; generalized CARR1197, by Caren Park
    ; where fn1 = conj, fn2 = exp, fn3 = cosxx, fn4 = sqr
    ;
  z  = fn1(1 / pixel * 0.91 / pixel)
  z2 = z + fn2( fn3(1 / pixel))
  z3 = z * z2
  c  = ( 1 / fn3( fn4( pixel))) / (1.099, 0):
  z = (z * 1 / c)
  z2 = z3 - (z2 + z / c)
  z3 = z2 - (z3 + z2)
  |real(z)| <= 100 
  ;SOURCE: forummsg.frm
}


tC1258 {; where fn1 = conj, fn2 = cosxx, fn3 = sqr,
        ; fn4 = abs
  z = fn1( 1 / (pixel * pixel * pixel))
  c = fn2( fn3( 0.56 / pixel * 1 / pixel)):
  z = (fn4(imag(pixel/z)) * cabs(real(pixel/c))) / (pixel-c*c)
  |real(z)| <=100 
  ;SOURCE: testcarr.frm
}


tC1273 {; generalized CARR1273, by Caren Park
        ; where fn1, fn2, and fn3 = sqr
        ;  p1 = 2.5, p2 = 1.5
  z = fn1( fn2( fn3( p1 - pixel)))
  c = z - (pixel - p2):
  z = z * 1 / ( c * c - 1 / pixel)
  |real(z)| <=100 
  ;SOURCE: forummsg.frm
}


tC1293 {; generalized CARR1293, by Caren Park
        ; where fn1 = log, fn2 = sqr, fn3 = sqr, fn4 = log
  z = fn1( fn2( 1 / pixel))
  c = 1 / fn3( fn4( pixel))
  c1= z / c^c / z:
  z = z / c1
  z = (z - (z^c1)) / (c * c - pixel)
  |real(z)| <=100 
  ;SOURCE: forummsg.frm
}


tcar {; Giuseppe Zito
  z = pixel
  c1 = 0.66879201
  d1 = -0.400875
  d18 = 0.92012
  d21 = 0.348672
  d22 = -0.71811002
  : 
  x = real(z), y = imag(z)
  s0 = y
  s0 = s0 -c1
  newx = s0 
  s0 = x
  s0 = s0 -d1
  s0 = s0 *x
  s0 = s0 +x
  s0 = s0 +x
  s0 = s0 *x
  s0 = s0 *x
  s1 = y
  s1 = s1 -d18
  s0 = s0 *s1
  s0 = s0 +y
  s0 = s0 *d21
  s0 = s0 *d22
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


Tchebychev-c6 (XYAXIS) {; Advanced Fractal Programming in C  - Stevens
  z=0:
  zsq = z*z
  z = pixel * (zsq*zsq*zsq - 6*zsq*zsq + 9*zsq - 2)
  |z| <= 4
  ;SOURCE: tchebych.frm
}


Tchebychev-t5 (XYAXIS) {; Advanced Fractal Programming in C  - Stevens
  z=(0.654,0):
  zcube = z*z*z
  z = pixel * (16*z*z*zcube - 20*zcube + 5*z)
  |z| <= 4
  ;SOURCE: tchebych.frm
}


TCosH (XAXIS) {
  z = c = cosh(pixel):
  z = c ^ z
  |z| <= (p1 + 3)
  ;SOURCE: skinv13r.frm
}


Techno1 (xyaxis) {; Peter Anders anders@physik.hu-berlin.de
  xo=real(p1), yo=imag(p1):
  x=fn2(xo)*real(pixel)
  y=fn2(yo)*imag(pixel)
  z=x+y*(0,1)
  xo=x
  yo=y           
  |fn1(z)|<real(p2) 
  ;SOURCE: anders.frm
}


Techno2 (xyaxis) {; Peter Anders anders@physik.hu-berlin.de
  xo=real(p1), yo=imag(p1):
  x=fn2(xo)+real(pixel)
  y=fn2(yo)+imag(Pixel)
  z=x+y*(0,1)
  xo=x
  yo=y           
  |fn1(z)|<real(p2) 
  ;SOURCE: anders.frm
}


TEL (XAXIS) {
  z = c = exp(pixel) * log(pixel):
  z = c ^ z
  |z| <= (p1 + 3)
  ;SOURCE: skinv13r.frm
}


tent_in_mod {; Modified Sylvie Gallet formula
             ; Modified tent_inside.frm (generalized by Les St Clair)
             ; use fn1,fn2,fn4=abs & fn3=cabs for default behaviour
             ; set p1=0, p2=0.001 for default behaviour
  IF (p1 || flip(p1))
    r = p1
  ELSE
    r = 1
  ENDIF
  z = 0 :
  l = r+p1
  z = z*z + pixel
  UV = (5,5) - fn1((5,5) - fn2(z))
  r = fn3(UV)
  fn4(l-r) >= p2 && r < 4
  ;SOURCE: tent_mod.par
}


tent_inside {; Sylvie Gallet [101324,3444], Apr 1997
  r = 1, z = 0:
   l = r
   z = z*z + pixel
   UV = (5,5) - abs((5,5) - abs(z))
   r = cabs(UV)
    abs(l-r) >= 0.001 && r < 4
  ;SOURCE: 97msg.frm
}


TESS1 {; Ray Girvan / 1995
       ; repeating fractal
       ; use continous colour palette
       ; try p1=(1, 0.4)
  i=(0,1)
  z = 0.5*tan(cos(Real(pixel))) + 0.5*i*tan(sin(Imag(pixel))), c=p1:
  z = c*sin(z)
  |z| <= 64
  ;SOURCE: tess.frm
}


TESS1A {; Ray Girvan / 1995
        ; repeating fractal
        ; use continous colour palette
        ; try p1=(1, 0.4)
  z = 0.5*tan(cos(Real(pixel))) + 0.5*flip(tan(sin(Imag(pixel)))), c=p1:
  z = c*sin(z)
  |z| <= 64
  ;SOURCE: tess.frm
}


TESS2 {; Ray Girvan  -  03.04.95
       ; repeating fractal
       ; use continous colour palette
       ; try p1=(1, 0.4)  
  i=(0,1)
  z=0.5*tan(sin(real(pixel)))+i*0.5*tan(sin(imag(pixel))), c=p1:
  z=c*sin(z)
  |z| <= 64
  ;SOURCE: tess.frm
}


test {; Edited for Fractint v. 20 by George Martin, 10/98
      ; The error in the formula as originally written rendered 
      ; it trivial. This is what the author intended.
  z=pixel, c=p1:
  z = z* (z*z*(z*z*(429 * z*z - 693) + 315) - 35 ) / (16 * (z+c))
  |z| < 100
  ;SOURCE: tchebych.frm
}


Test0035 {; Jim Muth
  a=real(p1), b=imag(p1), d=real(p3), f=imag(p3)
  z=p2, c=fn1(pixel^b)/b:
  z=z^a+(d*z^f)+c
  |z| <=100
  ;SOURCE: 98msg.frm
}


test01{
  z=c=pixel:
  t=real(z)/imag(z)
  z=fn1(z)+fn2(t)
  |z|<4
  ;SOURCE: 98msg.frm
}


Test02 {; Jim Muth
  z=pixel, d=real(p3)
  f=imag(p3), c=d*(pixel^f):
  z=sqr(z)+(p1*z^p2)+c
  |z| <= 100
  ;SOURCE: 97msg.frm
}


Test0323 {; Jim Muth
  z=p1, c=pixel:
  z=z*c^fn1(z)
  |z| <16
  ;SOURCE: 98msg.frm
}


Test0622 {; Jim Muth
  z=p1, c=fn1(pixel)+p2:
  z=sqr(z)+c
  |z| <16  
  ;SOURCE: 98msg.frm
}


Test0622a {; Jim Muth
  z=fn1(pixel)+sqr(p1)
  c=fn2(pixel)+p2:
  z=sqr(z)+c
  |z| <16
  ;SOURCE: 98msg.frm
}


test1 (xyaxis) {; =phi
  c = pixel 
  z = ((sqrt 5 + 1)/2):
  z =  z*z + pixel*((sqrt 5 + 1)/2) + c
  |z| <= 4
  ;SOURCE: drcha.frm
}


Test11 {; Jim Muth
  z=c=pixel:
  a=z^p1+(c-1)*z-c
  b=3*z^p2+c-1
  z=z-p3*a/b
  .000000000000000000000000000001 <= |a|
  ;SOURCE: 98msg.frm
}


Test14 {; Jim Muth
  z=c=pixel:
  a=z^3+(c-p2)*z-c
  b=p1*z^2+c-1
  z=z-1*a/b
  p3 <= |a|
  ;SOURCE: 99msg.frm
}


Test15 {; Jim Muth
  z=pixel, a=real(p1), b=imag(p1), c=real(p2)
  d=imag(p2), k=real(p3), f=imag(p3), g=f*(pixel):
  z=((a*(z^b))+(c*(z^d)))^k+g
  |z| <= 100
  ;SOURCE: 97msg.frm
}


Test16 {; Jim Muth
  z=pixel, a=real(p1), b=imag(p1), c=real(p2)
  d=imag(p2), k=real(p3), f=imag(p3), g=f*(pixel):
  z=((a*(-z^b))+(c*(-z^d)))^k+g
  |z| <= 100
  ;SOURCE: 97msg.frm
}


Test17 {; Jim Muth
  z=pixel, a=real(p1), b=imag(p1), c=real(p2)
  d=imag(p2), k=real(p3), f=imag(p3), g=f*(pixel):
  z=(((a/z)^b)+((c/z)^d))^k+g
  |z| <= 100
  ;SOURCE: 97msg.frm
}


test2 (xyaxis) {; =phi 
  z = ((sqrt 5 + 1)/2)/pixel:
  z =  z*z*z + pixel*((sqrt 5 + 1)/2)
  |z| <= 4
  ;SOURCE: drcha.frm
}


test3 {; Michael Theroux [71673,2767]
       ; fix and generalization by Ron Barnett [70153,1233]
       ; =phi
       ; try p1 = 2.236067977 for the golden mean
  z = ((p1 + 1)/2)/pixel:
  z =  z*z + pixel*((p1 + 1)/2)/((p1 - 1)/2)
  |z| <= 4
  ;SOURCE: fractint.frm
}


test667 { 
  z=pixel:
  z=fn1(p1/z)/fn2(p2/pixel)
  |z|<4
  ;SOURCE: 98msg.frm
}


test97c {; Dewey Odhner
         ; Using the following formula with parameter (0, -1) I get 
         ; a fractal with threefold symmetry that contains miniatures 
         ; of itself and of the M-set.
  c = Pixel, d = p1*flip(Pixel), z = Sqr(c)+d:
  z = Sqr(Sqr(z)+c)+d
  LastSqr <= 4
  ;SOURCE: 97msg.frm
}


test_formula {
  z = 0, c=pixel:
  z = sqr(z)+c
  c=c+p1/z
  |z| <= 4
  ;SOURCE: fract003.frm
}


testm { 
  z = 0, c=pixel: 
  z = sqr(z)+c 
  c=c+(p1 * (|z| <= p2)) 
  |z| <= 4 
  ;SOURCE: quad.frm
}


TestSinMandC (XAXIS_NOPARM) {; Rewritten for Fractint v. 20 by
                             ; George Martin, 10/98
  z=p1, x=|z|:
  IF (x > 1)
    z = sin(z)
  ENDIF
  z=sqr(z)+pixel
  x=|z|
  x<=4
  ;SOURCE: choice.frm
}


Tetragramaton_PHC {
  z = c = pixel:
  r = fn1(1/z) + p1
  q = fn2(z) + p2
  z = (z * q) * (whitesq == 1) + (z * r) * (whitesq == 0)
  |z| <= 4
  ;SOURCE: scary.frm
}


tetrate {
   ; p1 = initial perturbation of z(0).
   ; real part of p2 = bailout (default 4)
  z = pixel + p1
  t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = pixel ^ z
  |z| <= t
  ;SOURCE: builtn.frm
}


Tetratephi (xyaxis) {; ?
  z  = c = ((sqrt 5 +1)/2)/pixel:
  z = c^z + ((sqrt 5 +1)/2) 
  |z| <= 4
  ;SOURCE: drcha.frm
}


TExp (XAXIS) {
  z = c = exp(pixel):
  z = c ^ z
  |z| <= (p1 + 3)
  ;SOURCE: skinv13r.frm
}


texp1 (XAXIS) {
   ; Lets try a different constant with a non-zero imaginary component
  z = pixel, c = (1.5,0.5), zp = (0,0):
  temp = z
  z = -exp(z) - zp
  zp = c/temp
  |zp| <= 4 
  ;SOURCE: noel.frm
}


textur1 (XAXIS) {
; Zoom into the noise region outside the 2.0 radius with 256 colour decomp
; or try boundary tracing in iter=summ or mult mode. Make sure float=yes
; earlier versions of fractint had more trouble with this equation
; and broke inside as well.
  z = zp1 = pixel, zp2 = (0,0):
  temp = z
  z = zp1*zp1 - zp2
  zp2 = zp1
  zp1 = temp^0.5
  |zp1| <= 4
  ;SOURCE: noel.frm
}


textur2 (XAXIS) {
     ; A minor variation on the previous formula to see what happens
     ; Zoom in far enough and find some strange moire' patterns.
  z = zp1 = zp2 = pixel:
  temp = z
  z = zp1*zp1 - zp2
  zp2 = zp1
  zp1 = temp^0.5
  |zp1| <= 4
  ;SOURCE: noel.frm
}


TgSinZ (XAXIS) {; Jm Collard-Richard
  z=pixel:
  z1=sin(z)/cos(z)-sin(z)
  z2=1+(sin(z)/cos(z))^2-cos(z)
  z=z-(z1/z2)
  0.001<=|z1| 
  ;SOURCE: jmcr2.frm
}


TgZ (XAXIS) {; Jm Collard-Richard
  z=pixel:
  z1=sin(z)/cos(z)
  z2=1+z1*z1
  z=z-(z1/z2)
  0.001<=|z1| 
  ;SOURCE: jmcr2.frm
}


TgZz (XAXIS) {; Jm Collard-Richard
  z=pixel:
  z1=sin(z)/cos(z)-z
  z2=(sin(z)/cos(z))^2
  z=z-(z1/z2)
  0.001<=|z1| 
  ;SOURCE: jmcr2.frm
}


The_Primal_Heterot {
  z = c = pixel
  b = p1, a = 1-p1:
  z = sqr(z) * (a + b*z) + c
  |z| <= 128
  ;SOURCE: test.frm
}


three (XAXIS) {
; A very different idea. Don't use the current value, just previous ones.
; You still have to save it of course.
  z = pixel,  zp1 = zp2 = (0,0):
  temp = z
  z = zp2*zp2  - zp1
  zp2 = zp1
  zp1 = temp
  |zp1| <= 4
  ;SOURCE: noel.frm
}


threefea {; Giuseppe Zito
  z = pixel
  c6 = 0.742865
  c7 = 0.081965
  d1 = -0.393971
  : 
  x = real(z), y = imag(z)
  s0 = x
  s0 = s0 *y
  s0 = s0 *x
  s0 = s0 /x
  s0 = s0 *y
  s0 = s0 *c6
  s0 = s0 -c7
  s0 = s0 -x
  s0 = s0 -y
  newx = s0 
  s0 = y
  s0 = s0 *d1
  s0 = s0 *x
  s0 = s0 +x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


tile2j1j2 {; tiled backgrounds, 2 iterations of 2 julias, sum of angles
           ; p1 = c1
           ; p2 = c2
           ; real(p3) = 1 scale factor
           ; imag(p3) = 2 scale factor
  c1=p1, c2=p2, x=real(pixel), y=imag(pixel)
  k1=pi*real(p3), k2=pi*imag(p3)
  x1=2*cos(k1*x), y1=2*cos(k1*y)
  x2=2*sin(k2*x), y2=2*sin(k2*y)
  z1=x1+(0.0,1.0)*y1, z2=x2+(0.0,1.0)*y2, r=0:
  z1=sqr(z1)+c1, z2=sqr(z2)+c2
  z1=sqr(z1)+c1, z2=sqr(z2)+c2
  z=fn1(z1)*fn2(z2) 
  |z| < r
  ;SOURCE: 97msg.frm
}


tile2julia {; Kerry Mitchell 17oct98
        ;
        ; Creates tiled backgrounds from 2
        ; Julia sets and adds their polar angles
        ;
        ; p1 = c1 = first Julia parameter
        ; p2 = c2 = second Julia parameter
        ; real(p3) = Julia 1 scale factor
        ; imag(p3) = Julia 2 scale factor
        ;
        ; use small number of iterations (2 - 5) and decomp=256
        ;
  iter=1, c1=p1, c2=p2, x=real(pixel), y=imag(pixel)
  scale1=pi*real(p3), scale2=pi*imag(p3)
  x1=2*cos(scale1*x), y1=2*cos(scale1*y)
  x2=2*sin(scale2*x), y2=2*sin(scale2*y)
  z1=x1+(0.0,1.0)*y1, z2=x2+(0.0,1.0)*y2
  :
  z1=sqr(z1)+c1, z2=sqr(z2)+c2
  iter=iter+1, z=fn1(z1)*fn2(z2)
  iter<maxit
  ;SOURCE: tile.frm
}


tile3j1j2 {; tiled backgrounds, 3 iterations of 2 julias, sum of angles
           ; p1 = c1
           ; p2 = c2
           ; real(p3) = 1 scale factor
           ; imag(p3) = 2 scale factor
  c1=p1, c2=p2, x=real(pixel), y=imag(pixel)
  k1=pi*real(p3), k2=pi*imag(p3)
  x1=2*cos(k1*x), y1=2*cos(k1*y)
  x2=2*sin(k2*x), y2=2*sin(k2*y)
  z1=x1+(0.0,1.0)*y1, z2=x2+(0.0,1.0)*y2, r=0:
  z1=sqr(z1)+c1, z2=sqr(z2)+c2
  z1=sqr(z1)+c1, z2=sqr(z2)+c2
  z1=sqr(z1)+c1, z2=sqr(z2)+c2
  z=fn1(z1)*fn2(z2) 
  |z| < r
  ;SOURCE: 97msg.frm
}


TileJulia {; Terren Suydam (terren@io.com), 1996
           ; modified by Sylvie Gallet [101324,3444]
           ; Modified for if..else logic 3/19/97 by Sylvie Gallet
   ; p1 = center = coordinates for a good Julia
   ; 0 <= real(p2) = magnification. Default for magnification is 1/3
   ; 0 <= imag(p2) = numtiles. Default for numtiles is 3
   ; p3 is the Julia set parameter
  center = p1
  IF (p2 > 0)
     mag = real(p2)
  ELSE
     mag = 1/3
  ENDIF
  IF (imag(p2) > 0)
     numtiles = imag(p2)
  ELSE
     numtiles = 3
  ENDIF
  omega = numtiles*2*pi/3
  x = asin(sin(omega*real(pixel))), y = asin(sin(omega*imag(pixel)))
  z = (x+flip(y)) / mag + center:
  z = z*z + p3
  |z| <= 4
  ;SOURCE: fract196.frm
}


TileMandel {; Terren Suydam (terren@io.com), 1996
            ; modified by Sylvie Gallet [101324,3444]
            ; Modified for if..else logic 3/19/97 by Sylvie Gallet
            ; p1 = center = coordinates for a good Mandel
   ; 0 <= real(p2) = magnification. Default for magnification is 1/3
   ; 0 <= imag(p2) = numtiles. Default for numtiles is 3
  center = p1
  IF (p2 > 0)
     mag = real(p2)
  ELSE
     mag = 1/3
  ENDIF
  IF (imag(p2) > 0)
     numtiles = imag(p2)
  ELSE
     numtiles = 3
  ENDIF
  omega = numtiles*2*pi/3
  x = asin(sin(omega*real(pixel))), y = asin(sin(omega*imag(pixel)))
  z = c = (x+flip(y)) / mag + center:
  z = z*z + c
  |z| <= 4
  ;SOURCE: fract196.frm
}


TILING1 {; Ray Girvan, April 1997 (as posted in Fractal-Art, 4/7/97)
         ; tiled lamda sine function
         ; try iteration z=flip(c)*sin(z) also
         ; try p1=(1,0.4), p2=(0.5,0)
         ; (p2 is a scaling factor)
  z = p2*(tan(cos(Real(pixel)))+flip(tan(sin(Imag(pixel))))) 
  c=p1:
  z = c*sin(z)
  |z| <= 64
  ;SOURCE: 97msg.frm
}


Tim's_Error (XAXIS) {
  z = pixel, c = z ^ (z - 1):
  z = sqr(z)
  t2 = real(z)*real(c) + imag(z)*imag(c)
  t3 = real(t2)*imag(c) - imag(z)*real(c)
  z = t2 + t3 + pixel
  |z| <= 4
  ;SOURCE: newforms.frm
}


Tim's_fract {; Example of a more or less random formula
  z = Pixel:
   ; I have no clue what the point of this formula is
   ; it came straight from my subconcious <g!>
  z = (sinh(z*z + log(z)))/(z*z + 2)
  |z| <= 16
  ;SOURCE: 97msg.frm
}


Tim's_Newton {; Modified Newt_ellipt_oops by Tim Wegner
              ; Use floating point. 
  z = pixel, z2 = z*z, z3 = z*z2:
  num = (z3 + fn1(p1)*z2 + 1)^.5      
  denom = (1.5*z2 + p1*z)/num    
  z = z - (num/denom)            
  z2 = z*z+c
  z3 = z*z2
  fn2(p2) <= |z3 + p1*z2 + 1| 
  ;SOURCE: bej's2.frm
}


Tim's_Newton_a {
  z = pixel, z2 = z*z, z3 = z*z2:
  num = (z3 + p1*z2 + 1)^.5      
  denom = (1.5*z2 + p1*z)/num    
  z = z - (num/denom)            
  z2 = z*z+c
  z3 = z*z2
  p2 <= |z3 + p1*z2 + 1| 
  ;SOURCE: bej's2.frm
}


Tim's_Newton_b {; Modified Newt_ellipt_oops by Tim Wegner
                ; Use floating point. 
  z = pixel, z2 = z*z, z3 = z*z2
  t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  num = (z3 + fn1(p1)*z2 + 1)^.5      
  denom = (1.5*z2 + p1*z)/num    
  z = z - (num/denom)            
  z = sqr(z) + p1
  z2 = z*z+c
  z3 = z*z2
  fn2(p2+t) <= |z3 + p1*z2 + 1| 
  ;SOURCE: bej's2.frm
}


Tims_Random_Formul {
  z=pixel:
  z = sin(z*z+floor(atan(z+4)))
  z = c + log(z) - sin(z)
  |z| < 10
  ;SOURCE: 96msg.frm
}


timserrda3 {; Chuck Ebbert
            ; same as built-in "tim's_error" type
   ; p1 = initial perturbation of z, real(p2) = bailout (default 4)
  t = (4 * (real(p2)<=0) + real(p2) * (0<p2) )
  z = pixel + p1, c = z ^ z ^ z:
  z = fn1(z)
   ; must be careful to leave imag part of z unchanged     13 Jan 1993
  z = real(z) * real(c) - imag(z) * imag(c) + flip(imag(z))
  z = real(z) + flip(real(z) * imag(c) - imag(z) * real(c) ) + pixel
  |z| <= t
  ;SOURCE: form2.frm
}


timserror {; Chuck Ebbert                    added 12 Jan 1993
           ; same as built-in "tim's_error" type
   ; p1 = initial perturbation of z, real(p2) = bailout (default 4)
  t = (4 * (real(p2)<=0) + real(p2) * (0<p2) )
  z = pixel + p1, c = z ^ (z-1):
  z = fn1(z)
   ; must be careful to leave imag part of z unchanged     13 Jan 1993
  z = real(z) * real(c) - imag(z) * imag(c) + flip(imag(z))
  z = real(z) + flip(real(z) * imag(c) - imag(z) * real(c) ) + pixel
  |z| <= t
  ;SOURCE: builtn2.frm
}


Tinsel {
  z = pixel, v = sin(e)/cos(pi):
  r = z + v + p1
  z = r * fn1(z)^fn2(1/z) 
  |r| >= 0.000001 && round(|v|) < 4
  ;SOURCE: tinsel.frm
}


Tinsel_2 {
  z = pixel:
  r = tan(1/z) + p1
  z = fn1(z) *  fn2(r) 
  |z| < 4
  ;SOURCE: tinsel.frm
}


Tinsel_3 {
  z = pixel, c = real(pixel) * imag(pixel): 
  r = tan(1/z)  + p1 
  z = fn2(r)/fn1(z) * c + p2
  |z| < 4 
  ;SOURCE: tinsel.frm
}


Tinsel_3_PHC {
  z = pixel, c = real(pixel) * (whitesq == 0) + imag(pixel) * whitesq: 
  r = tan(1/z)  + p1 
  z = fn2(r)/fn1(z) * c + p2
  |z| < 4 
  ;SOURCE: tinsel.frm
}


Tinsel_4 {
  z = pixel: 
  x = real(z), y =imag(z)
  xr = z * fn1(1/y) + 3
  yq = z / fn2(1/x) ^ e
  z = xr * yq * z
  |z| < 4
  ;SOURCE: tinsel.frm
}


Tinsel_5 {
  z = pixel: 
  x = real(z), y =imag(z)
  xr = x * fn1(z) 
  yq = z * fn2(1/y) 
  z  = xr * yq 
  |z| < 4
  ;SOURCE: tinsel.frm
}


tivoli {; Giuseppe Zito
  z = pixel
  d0 = 0.554116
  d3 = 0.036678
  d4 = -0.479308
  d9 = -0.989336
  d11 = -0.846385
  d16 = -0.944297
  d17 = 0.758434
  d18 = 0.277343
  d20 = 0.751142
  d21 = 0.486961
  d23 = -0.812101
  d33 = -0.105733
  d34 = -0.495095
  d39 = -0.620228
  : 
  x = real(z), y = imag(z)
  s0 = x
  s0 = s0 *y
  s0 = s0 -y
  newx = s0 
  s0 =d0
  s0 = s0 -x
  s0 = s0 *y
  s1 =d3
  s1 = s1 *d4
  s1 = s1 *x
  s2 = y
  s1 = s1 -s2
  s2 =d9
  s2 = s2 -y
  s2 = s2 -d11
  s1 = s1 *s2
  s1 = s1 +y
  s0 = s0 -s1
  s0 = s0 /d16
  s0 = s0 /d17
  s0 = s0 -d18
  s0 = s0 +x
  s0 = s0 *d20
  s0 = s0 *d21
  s0 = s0 /d23
  s0 = s0 -y
  s0 = s0 +x
  s0 = s0 -x
  s0 = s0 +y
  s0 = s0 -d33
  s0 = s0 *d34
  s0 = s0 *x
  s0 = s0 -y
  s0 = s0 *y
  s0 = s0 *d39
  s0 = s0 -y
  s0 = s0 +x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


TjerCGhalley (XYAXIS) {; Chris Green -- Halley's formula
                       ; Modified by Tobey J. E. Reed [76437,375]
   ; P1 usually 1 to 1.5, P2 usually zero. Use floating point.
  z=(1,1):
  z5=z*z*z*z*z
  z6=z*z5, z7=z*z6
  z=z-p1*((z7-z+pixel)/ ((p1*z6-3)-(8.0*z5)*(z7+z-pixel)/(3.30*z6-12)))
  0.0001 <= |z7-z-pixel|
  ;SOURCE: fract003.frm
}


TjerCubic (XYAXIS) {; Lee Skinner [75450,3631]
                    ; Modified by Tobey J. E. Reed [76437,375]
  p = pixel, test = p1 + 3
  t3 = 5*p, t2 = p*p
  a = (t2 + 1)/t3+t2, b = 3.149*a*a*a + (t2 - 5)/t2
  aa3 = a*a*p1, z = 0 - a:
  z = z*z - aa3*z + a
  |z| < test
  ;SOURCE: fract003.frm
}


TjerDeltaLog (XAXIS) {; Mark Peterson
                      ; Modified by Tobey J. E. Reed [76437,375]
  z = pixel, c = log(pixel):
  z = cosh(z) + c/2
  |z| <= 4
  ;SOURCE: fract003.frm
}


TjerDragon {; Mark Peterson
            ; Modified by Tobey J. E. Reed [76437,375]
  z = Pixel:
  z = tan(z) + (-0.74543, 0.2)
  |z| <= 4
  ;SOURCE: fract003.frm
}


TjerEnt {; Scott Taylor
         ; Modified by Tobey J. E. Reed [76437,375]
         ; Try params=.5/.75 and the first function as exp.
         ; Zoom in on the swirls around the middle.  There's a
         ; symmetrical area surrounded by an asymmetric area.
  z = Pixel, y = fn1(z)+p1, base = log(p1):
  z = y * 3.1416 * log(z)/base
  |z| <= 5
  ;SOURCE: fract003.frm
}


TjerFzppfnpo {; Lee Skinner [75450,3631]
              ; Modified by Tobey J. E. Reed [76437,375]
  z = pixel, f = 2*(pixel)^(pixel):
  z = fn1(z) + f
  |z| <= 50
  ;SOURCE: fract003.frm
}


TjerFzppfnre {; Lee Skinner [75450,3631]
              ; Modified by Tobey J. E. Reed [76437,375]
  z = pixel, f = 1./(pixel):
  z = fn1(z) + f * p1
  |z| <= 50
  ;SOURCE: fract003.frm
}


TjerHyperMandel {; Chris Green.
      ; Modified and Generalized by Tobey J. E. Reed [76437,375]
      ; A four dimensional version of the mandelbrot set.
      ; Use P1 to select which two-dimensional plane of the
      ; four dimensional set you wish to examine.
      ; Use floating point.
  a=(0,0), b=(0,0):
  z=z+1, anew=fn1(a)-fn1(b)+pixel
  b=3.17*a*b-p1, a=anew
  |a|+|b| <= 4
  ;SOURCE: fract003.frm
}


TjerInvMandel (XAXIS) {; Mark Peterson
                       ; Modified by Tobey J. E. Reed [76437,375]
  c = z = 1 / pixel:
  z = cos(z) + 2*c
  |z| <= 4
  ;SOURCE: fract003.frm
}


TjerMandelTangent {; Fractal Creations example (revised for v.16)
                   ; Modified by Tobey J. E. Reed [76437,375]
  z = pixel:
  z = pixel * tan(z) * 3.14159 * p1
  |real(z)| < 32
  ;SOURCE: fract003.frm
}


TjerMTet (XAXIS) {; Mandelbrot form 1 of the Tetration formula -- Lee Skinner  
                  ; Modified and Generalized by Tobey J. E. Reed [76437,375]
  z = pixel:
  z = (pixel ^ z + pixel) + fn1(pixel)
  |z| <= (P1 + 3)
  ;SOURCE: fract003.frm
}


TjerNewton4(XYAXIS) {; Mark Peterson
                     ; Modified by Tobey J. E. Reed [76437,375]
  z = pixel, Root = 1:
  z3 = z*z*z
  z4 = z3 * z
  z = (3 / z4 - Root) / (6 * z3)
  .004 <= |z4 - Root|
  ;SOURCE: fract003.frm
}


TjerNewtonSinExp (XAXIS) {; Chris Green
       ; Generalized by Tobey J. E. Reed [76437,375]
       ; Newton's formula applied to sin(x)+exp(x)-1=0.
       ; Use floating point.
  z=pixel:
  z1=exp(z)
  z2=sin(z)+z1-1
  z=z-p1*z2/(fn1(z)-z1)
  .0001 < |z2|
  ;SOURCE: fract003.frm
}


TLog (XAXIS) {
  z = c = log(pixel):
  z = c ^ z
  z <= (p1 + 3)
  ;SOURCE: skinner.frm
}


TLSQ (XAXIS) {
  z = c = log(pixel) * sqr(pixel):
  z = c ^ z
  |z| <= (p1 + 3)
  ;SOURCE: skinv13r.frm
}


Tobey3 (XAXIS) {
  z = pixel:
  c = pixel - sqr(z)
  c = pixel + c/z
  z = c - z * pixel
  |z| < 4
  ;SOURCE: fract003.frm
}


TobeyCGNewton3 {; Chris Green -- A variation on newton iteration.
    ; Modified and Generalized by Tobey J. E. Reed [76437,375]
    ; The initial guess is fixed at (1,1), but the equation solved
    ; is different at each pixel ( x^3-pixel=0 is solved).
    ; Use floating point.
    ; Try P1=1.8.
  z=(1,1):
  z2=z*z, z3=z*z2
  z=z-p1*fn1((z2-pixel)/(2.13*z2))
  0.0001 < |z3-pixel|
  ;SOURCE: fract003.frm
}


TobeyHalley (XYAXIS) {; Chris Green. Halley's formula applied to x^7-x=0.
   ; Modified and Generalized by Tobey J. E. Reed [76437,375]
   ; P1 usually 1 to 1.5, P2 usually zero. Use floating point.
   ; Setting P1 to 1 creates the picture on page 277 of Pickover's book
  z=pixel:
  z5=z*z*z*z*z, z6=fn1(z*z5)
  z7=fn2(z*z6)
  z=fn2(z-p1*((z7-z))/ (fn1((7.0*z6-1)-(42.0*z5)*(z7-z)/(14.0*z6-2))))
  0.0001 <= |z7-z|
  ;SOURCE: fract003.frm
}


TobeyHalleySin (XYAXIS) {; Chris Green. Halley's formula applied 
                         ;to sin(x)=0.
    ; Generalized by Tobey J. E. Reed [76437,375]
    ; Use floating point.
    ; P1 = 0.1 will create the picture from page 281 of Pickover's book.
  z=pixel:
  s=fn1(z), c=fn2(z)
  z=z+p1*(s/(c-(s-s)/(c*c)))
  0.0001 <= |s|
  ;SOURCE: fract003.frm
}


TobeyLeeMandel1 (XYAXIS) {; Kevin Lee
                          ; Generalized by Tobey J. E. Reed [76437,375]
  z=Pixel:
  c=fn1(pixel)/z
  c=z+2*c
  z=fn2(z+1)
  |z|<4
  ;SOURCE: fract003.frm
}


TobeyLeeMandel2 (XYAXIS) {; Kevin Lee
                          ; Generalized by Tobey J. E. Reed [76437,375]
  z=Pixel:
  c=fn1(pixel)/z
  c=z+c
  z=fn2(c*pixel)
  |z|<4
  ;SOURCE: fract003.frm
}


TobeyLeeMandel3 (XAXIS) {; Kevin Lee
                         ; Generalized by Tobey J. E. Reed [76437,375]
  z=Pixel, c=Pixel-fn1(z):
  c=Pixel+c/z
  z=c-fn2(z*pixel)
  |z|<4
  ;SOURCE: fract003.frm
}


TobeyMyFractal {; Fractal Creations example
                ; Generalized by Tobey J. E. Reed [76437,375]
  c = z = 1/pixel:
  z = fn1(z) + c/p1
  |z| <= 4
  ;SOURCE: fract003.frm
}


TobeyPsudoMandel (XAXIS) {; davisl - try center=0,0/magnification=28
                          ; Generalized by Tobey J. E. Reed [76437,375]
  z = Pixel:
  z = ((z/2.7182818)^z)*fn1(6.2831853*z) + pixel
  |z| <= 4
  ;SOURCE: fract003.frm
}


TobeyRichard1 (XYAXIS) {; Jm Richard-Collard
                        ; Generalized by Tobey J. E. Reed [76437,375]
  z = pixel:
  sq=z*z, z=(sq*fn1(sq)+sq)+pixel
  |z|<=50
  ;SOURCE: fract003.frm
}


TobeyRichard2 (XYAXIS) {; Jm Richard-Collard
                        ; Generalized by Tobey J. E. Reed [76437,375]
  z = pixel:
  z=1/(fn1(z*z+pixel*pixel))
  |z|<=50
  ;SOURCE: fract003.frm
}


TobeyRichard3 (XAXIS) {; Jm Richard-Collard
                       ; Generalized by Tobey J. E. Reed [76437,375]
  z = pixel:
  sh=fn1(z), z=(1/(sh*sh))+pixel
  |z|<=50
  ;SOURCE: fract003.frm
}


TobeySterling (XYAXIS) {; davisl
                        ; Generalized by Tobey J. E. Reed [76437,375]
  z = Pixel:
  z = (fn1((z/2.7182818)^z))/fn2(6.2831853*z)
  |z| <= 4
  ;SOURCE: fract003.frm
}


TobeySterling2 (XAXIS) {; davisl
                        ; Generalized by Tobey J. E. Reed [76437,375]
  z = Pixel:
  z = ((z/2.7182818)^z)/fn1(6.2831853*z) + pixel
  |z| <= 4
  ;SOURCE: fract003.frm
}


TobeyWineglass (XAXIS) {; Pieter Branderhorst
    ; Modified and Generalized by Tobey J. E. Reed [76437,375]
  c = z = pixel:
  z = z * z + c
  c = (1+flip(imag(fn1(c)))) * real(fn1(c)) / 3 + z
  |z| <= 4 
  ;SOURCE: fract003.frm
}


torta {; Giuseppe Zito
  z = pixel
  c7 = 0.018957
  c11 = 0.413481
  : 
  x = real(z), y = imag(z)
  s0 = x
  s0 = s0 -x
  s0 = s0 /x
  s0 = s0 /x
  s0 = s0 +c7
  s0 = s0 /x
  s0 = s0 +x
  s0 = s0 *c11
  s0 = s0 -y
  newx = s0 
  s0 = x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


TORUS {; Earl Hinrich torus method
   ; adaptation by Ray Girvan May 1997
   ; trial FRM ignoring scale factors
   ; p1=(x0,y0) centre of generating circle
   ; p2=(cx0,cy0) centre of generating circle
   ; real(p3) = zr radius of torus axis in z plane
   ; imag(p3) = cr radius of torus axis in c plane
   ; try p1=(0.5,0) p2=(-0.55103,0.534949) p3=(0.2,0.03)
  x=real(p1)+real(p3)*sin(imag(pixel))
  y=imag(p1)+real(p3)*cos(real(pixel))
  cx=real(p2)+imag(p3)*sin(real(pixel))
  cy=imag(p2)+imag(p3)*cos(imag(pixel))
  c=cx+flip(cy)
  z=x+flip(y):
  z=z*z+c
  |z| <= 4
  ;SOURCE: 97msg.frm
}


Tovaglia {; Giuseppe Zito
  z = pixel
  c0   = -0.639197
  c2  = -0.017288
  t3  = c0*c2
  t3 = real(p1)
  c10 = 0.282763
  c11 =   -0.709913
  t10 = c10/c11
  t10 =imag(p1):
  x = real(z), y = imag(z)
  s1 = t3 + x
  s2 = x/s1
  s3 = (x - s2) * t10
  newx = s3 - y  
  newy = x
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4
  ;SOURCE: zg.frm
}


TowerExp11 {; Jim Muth
  z=pixel, c=p2+(p3*pixel):
  z=z^(z^(z^(z^(z^(z^(z^(z^(z^(z^(z^(z+p1)))))))))))+c
  |z| <= 100
  ;SOURCE: 97msg.frm
}


TowerMinExp01 {; Jim Muth
  z=pixel, c=p2+(p3*pixel):
  z=z^(-z+p1)+c
  |z| <= 100
  ;SOURCE: 97msg.frm
}


TowerMinExp02 {; Jim Muth
  z=pixel, c=p2+(p3*pixel):
  z=z^(-z^(z+p1))+c
  |z| <= 100
  ;SOURCE: 97msg.frm
}


TowerMinExp03 {; Jim Muth
  z=pixel, c=p2+(p3*pixel):
  z=z^(-z^(z^(-z+p1)))+c
  |z| <= 100
  ;SOURCE: 97msg.frm
}


TowerMinExp04a {; Jim Muth
  z=pixel, c=p2+(p3*pixel):
  z=z^fn1(z^fn2(-z^fn3(z^fn4(-z+p1))))+c
  |z| <= 100
  ;SOURCE: 97msg.frm
}


TowerMinExp05 {; Jim Muth
  z=pixel, c=p2+(p3*pixel):
  z=z^(-z^(z^(-z^(z^(-z+p1)))))+c
  |z| <= 100
  ;SOURCE: 98msg.frm
}


TowerMinExp12 {; Jim Muth
  z=pixel, c=p2+(p3*pixel):
  z=z^(-z^(-z^(-z^(z^(z^(z^(z^(-z^(z^(z^(-z^(-z+p1))))))))))))+c
  |z| <= 100
  ;SOURCE: 98msg.frm
}


tpet {
  z = pixel, zp = (0,0), huge=1.0e32:
  temp = z
  z = -cos(z) - zp
  zp = p1/temp
  (|zp| <= 64) && (|z| <= huge) 
  ;SOURCE: noel.frm
}


tpet1 {
  z = pixel, zp = (0,0), huge=1.0e32:
  temp = z
  z = cos(z) - zp
  zp = p1/temp
  (|zp| <= 64) && (|z| <= huge) 
  ;SOURCE: noel.frm
}


tpet2 {
  z = pixel, zp = (0,0), huge=1.0e32:
  temp = z
  z = cos(z) + zp
  zp = p1/temp
  (|zp| <= 4) && (|z| <= huge) 
  ;SOURCE: noel.frm
}


tracykoller1 {; Flower formula series for Tracy
              ; Copr. 1995 by Jack A. Orman
  z=1/pixel, c=cosxx(z/pixel)*sqr(pixel):
  z=z*z+sqr(c-p1)
  |z| <=4
  ;SOURCE: tracy.frm
}


tracykoller2 {; Created by Jack A. Orman
              ; Copr. 1995
  z=1/pixel, c=cosxx(p2)/pixel:
  z=z^p1+sqr(c/pixel)
  |z| <=10
  ;SOURCE: tracy.frm
}


tracykoller3 {; Created by Jack A. Orman
              ; Copr. 1995
  z=1/pixel, c=sqr(p2)/pixel:
  z=z^p1+sqr(c/pixel)
  |z| <=10
  ;SOURCE: tracy.frm
}


tracykoller4 {; Created by Jack A. Orman
              ; Copr. 1995
  z=1/pixel, c=sqrt(p2)/pixel:
  z=z^p1+sqr(c/pixel)
  |z| <=10
  ;SOURCE: tracy.frm
}


Trans_Atan_Mset {; Copyright (c) Paul W. Carlson, 1998
  z = prev_w = bailout = iter = range_num = 0
  c = pixel
  max_real = real(p1)
  num_ranges = real(p2)
  colors_in_range = imag(p2):
    ;****************************************************
  w = fn1(prev_w) + c
    ;****************************************************
  IF (abs(real(w)) > max_real)
    angle = abs(atan((imag(w)-imag(prev_w))/(real(w)-real(prev_w))))
    bailout = 1
    z = colors_in_range * (2 * angle / pi + range_num) + 1
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


TransformingJulia0 {; Jim Deutch [104074,3171], 1996 requires 19.5
                    ; p1=initial julia
                    ; p2=final julia
                    ; this formula is pathological wrt the zoombox
  col=real(scrnpix)
  cols=real(scrnmax)
  p=p1+col/cols*(p2-p1)
  z=pixel:
  z=z*z+p
  |z|<4
  ;SOURCE: jdwork4.frm
}


tree(XAXIS) {; Try a different order of the terms.
  z = pixel,  zp1 = zp2 = (0,0):
  temp = z
  z = zp1*zp1  - zp2
  zp2 = zp1
  zp1 = temp
  |zp1| <= 4 
  ;SOURCE: noel.frm
}


tree_J {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=0.01000, d0=0.50000
  a1=0.42000, b1=-0.42000, c1=0.42000, d1=0.42000
  a2=0.42000, b2=0.42000, c2=-0.42000, d2=0.42000
  a3=0.10000, d3=0.10000
  al0=0.00500
  al1=0.35280, k1=-0.08400, l1=-0.08400
  al2=0.35280, k2=0.08400, l2=-0.08400
  al3=0.01000, l3=-0.02000
  z=pixel:
  x=real(z)
  y=imag(z)
  o0=(d0*x)/al0+flip((a0*y)/al0)
  op0=|o0-p2|
  o1=(d1*x-b1*y+k1)/al1+flip((-c1*x+a1*y+l1)/al1)
  op1=|o1-p2|
  o2=(d2*x-b2*y+k2)/al2+flip((-c2*x+a2*y+l2)/al2)
  op2=|o2-p2|
  o3=(d3*x)/al3+flip((a3*y+l3)/al3)
  op3=|o3-p2|
  IF (op0<op1 && op0<op2 && op0<op3)
    z=o0
  ELSEIF (op1<op0 && op1<op2 && op1<op3)
    z=o1
  ELSEIF (op2<op1 && op2<op0 && op2<op3)
    z=o2
  ELSEIF (op3<op0 && op3<op1 && op3<op2)
    z=o3
  ENDIF
  |z|<=p1
  ;SOURCE: ifsinv.frm
}


tree_M {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=0.01000, d0=0.50000
  a1=0.42000, b1=-0.42000, c1=0.42000, d1=0.42000
  a2=0.42000, b2=0.42000, c2=-0.42000, d2=0.42000
  a3=0.10000, d3=0.10000
  al0=0.00500
  al1=0.35280, k1=-0.08400, l1=-0.08400
  al2=0.35280, k2=0.08400, l2=-0.08400
  al3=0.01000, l3=-0.02000
  z=pixel:
  x=real(z)
  y=imag(z)
  o0=(d0*x)/al0+flip((a0*y)/al0)
  op0=|o0-pixel|
  o1=(d1*x-b1*y+k1)/al1+flip((-c1*x+a1*y+l1)/al1)
  op1=|o1-pixel|
  o2=(d2*x-b2*y+k2)/al2+flip((-c2*x+a2*y+l2)/al2)
  op2=|o2-pixel|
  o3=(d3*x)/al3+flip((a3*y+l3)/al3)
  op3=|o3-pixel|
  IF (op0<op1 && op0<op2 && op0<op3)
    z=o0
  ELSEIF (op1<op0 && op1<op2 && op1<op3)
    z=o1
  ELSEIF (op2<op1 && op2<op0 && op2<op3)
    z=o2
  ELSEIF (op3<op0 && op3<op1 && op3<op2)
    z=o3
  ENDIF
  |z|<=p1
  ;SOURCE: ifsinv.frm
}


Trekle {
  z = 0, c = pixel:
  z = z + p1
  z = (z * fn1(sqrt(z)))/fn2(c)
  z = z + sqr(c)
  |z| < 4
  ;SOURCE: d-rock.frm
}


tri-fn+fn {; Sylvie Gallet <sylvie_gallet@compuserve.com>, May 1997
           ; Thanks to Kerry Mitchell for the idea!
           ; real(p1) = bailout
           ; imag(p1) must be different from 0 (>=1 recommended)
           ; z=fn1(z) + p2*fn2(z)
   ; This formula must be used with decomp = 256 and periodicity = 0
   ;
   z1 = pixel, mz1 = cabs(z1), summ = iter = 0
   b1 = abs(real(p1)), f = b1^0.1
   b2 = b1*f, b3 = b2*f, b4 = b3*f, b5 = b4*f, b6 = b5*f
   b7 = b6*f, b8 = b7*f, b9 = b8*f, b10 = b9*f, b11 = b10*f
   iter1 = iter2 = iter3 = iter4 = iter5 = iter6 = iter7       \
         = iter8 = iter9 = iter10 = summ_tot = iter_tot = 0
   k = imag(p1) * (0.0,6.28319530718)
   :
   iter = iter + 1, za = fn1(z1), a = cabs(za)
   zb = p2*fn2(z1), b = cabs(zb)
   z1 = za + zb, mz1 = cabs(z1), a_b = abs(a - b)
   summ = summ + (mz1 - a_b) / (a+b - a_b)
   IF (mz1 > b1)
    IF (iter1==0)
     iter1 = iter
     iter_tot = iter_tot + iter1, summ_tot = summ_tot + summ
    ENDIF
    IF (mz1 > b2)
     IF (iter2==0)
      iter2 = iter
      iter_tot = iter_tot + iter2, summ_tot = summ_tot + summ
     ENDIF
     IF (mz1 > b3)
      IF (iter3==0)
       iter3 = iter
       iter_tot = iter_tot + iter3, summ_tot = summ_tot + summ
      ENDIF
      IF (mz1 > b4)
       IF (iter4==0)
        iter4 = iter
        iter_tot = iter_tot + iter4, summ_tot = summ_tot + summ
       ENDIF
       IF (mz1 > b5)
        IF (iter5==0)
         iter5 = iter
         iter_tot = iter_tot + iter5, summ_tot = summ_tot + summ
        ENDIF
        IF (mz1 > b6)
         IF (iter6==0)
          iter6 = iter
          iter_tot = iter_tot + iter6, summ_tot = summ_tot + summ
         ENDIF
         IF (mz1 > b7)
          IF (iter7==0)
           iter7 = iter
           iter_tot = iter_tot + iter7, summ_tot = summ_tot + summ
          ENDIF
          IF (mz1 > b8)
           IF (iter8==0)
            iter8 = iter
            iter_tot = iter_tot + iter8, summ_tot = summ_tot + summ
           ENDIF
           IF (mz1 > b9)
            IF (iter9==0)
             iter9 = iter
             iter_tot = iter_tot + iter9, summ_tot = summ_tot + summ
            ENDIF
            IF (mz1 > b10)
             IF (iter10==0)
              iter10 = iter
              iter_tot = iter_tot + iter10, summ_tot = summ_tot + summ
             ENDIF
             IF (mz1 > b11)
              iter_tot = iter_tot + iter, summ_tot = summ_tot + summ
              z = exp (summ_tot * k / iter_tot)
             ENDIF
            ENDIF
           ENDIF
          ENDIF
         ENDIF
        ENDIF
       ENDIF
      ENDIF
     ENDIF
    ENDIF
   ENDIF
   mz1 <= b11
  ;SOURCE: triangl.frm
}


tri-julia {; Sylvie Gallet <sylvie_gallet@compuserve.com>, May 1997
           ; Thanks to Kerry Mitchell for the idea!
           ; real(p1) = bailout (10^10 recommended)
           ; imag(p1) must be different from 0 (>=1 recommended)
           ; p2 = parameter for the Julia set
   ; This formula must be used with decomp = 256 and periodicity = 0
   ;
  z1 = pixel, mz1 = cabs(z1), b = cabs(p2), summ = 0
  iter = 0, bailout = real(p1), k = imag(p1)*(0.0,6.28319530718)
  :
  iter = iter + 1
  a = mz1 * mz1
  z1 = z1 * z1 + p2
  mz1 = cabs(z1)
  IF (mz1 > bailout)
    z = exp (summ * k / iter)
  ELSE
    summ = summ + (mz1-abs(a-b)) / (a+b - abs(a-b))
  ENDIF
  mz1 <= bailout
  ;SOURCE: triangl.frm
}


tri-julia-2 {; Sylvie Gallet <sylvie_gallet@compuserve.com>, May 1997
             ; Thanks to Kerry Mitchell for the idea!
             ; real(p1) = bailout (1024 recommended)
             ; imag(p1) must be different from 0 (>=1 recommended)
             ; p2 = parameter for the Julia set
   ; This formula must be used with decomp = 256 and periodicity = 0
   ;
  z1 = pixel, mz1 = cabs(z1), b = cabs(p2), summ = iter = 0
  b1 = abs(real(p1)), f = b1^0.1
  b2 = b1*f, b3 = b2*f, b4 = b3*f, b5 = b4*f, b6 = b5*f
  b7 = b6*f, b8 = b7*f, b9 = b8*f, b10 = b9*f, b11 = b10*f
  iter1 = iter2 = iter3 = iter4 = iter5 = iter6 = iter7 \
        = iter8 = iter9 = iter10 = summ_tot = iter_tot = 0
  k = imag(p1) * (0.0,6.28319530718)
  :
  iter = iter + 1, a = mz1 * mz1
  z1 = z1 * z1 + p2, mz1 = cabs(z1), a_b = abs(a - b)
  summ = summ + (mz1 - a_b) / (a+b - a_b)
  IF (mz1 > b1)
    IF (iter1==0)
      iter1 = iter
      iter_tot = iter_tot + iter1
      summ_tot = summ_tot + summ
    ENDIF
    IF (mz1 > b2)
      IF (iter2==0)
        iter2 = iter
        iter_tot = iter_tot + iter2
        summ_tot = summ_tot + summ
      ENDIF
      IF (mz1 > b3)
        IF (iter3==0)
          iter3 = iter
          iter_tot = iter_tot + iter3
          summ_tot = summ_tot + summ
        ENDIF
        IF (mz1 > b4)
          IF (iter4==0)
            iter4 = iter
            iter_tot = iter_tot + iter4
            summ_tot = summ_tot + summ
          ENDIF
          IF (mz1 > b5)
            IF (iter5==0)
              iter5 = iter
              iter_tot = iter_tot + iter5
              summ_tot = summ_tot + summ
            ENDIF
            IF (mz1 > b6)
              IF (iter6==0)
                iter6 = iter
                iter_tot = iter_tot + iter6
                summ_tot = summ_tot + summ
              ENDIF
              IF (mz1 > b7)
                IF (iter7==0)
                  iter7 = iter
                  iter_tot = iter_tot + iter7
                  summ_tot = summ_tot + summ
                ENDIF
                IF (mz1 > b8)
                  IF (iter8==0)
                    iter8 = iter
                    iter_tot = iter_tot + iter8
                    summ_tot = summ_tot + summ
                  ENDIF
                  IF (mz1 > b9)
                    IF (iter9==0)
                      iter9 = iter
                      iter_tot = iter_tot + iter9
                      summ_tot = summ_tot + summ
                    ENDIF
                    IF (mz1 > b10)
                      IF (iter10==0)
                        iter10 = iter
                        iter_tot = iter_tot + iter10
                        summ_tot = summ_tot + summ
                      ENDIF
                      IF (mz1 > b11)
                        iter_tot = iter_tot + iter
                        summ_tot = summ_tot + summ
                        z = exp (summ_tot * k / iter_tot)
                      ENDIF
                    ENDIF
                  ENDIF
                ENDIF
              ENDIF
            ENDIF
          ENDIF
        ENDIF
      ENDIF
    ENDIF
  ENDIF
  mz1 <= b11
  ;SOURCE: triangl.frm
}


tri-mandel {; Sylvie Gallet <sylvie_gallet@compuserve.com>, May 1997
            ; Thanks to Kerry Mitchell for the idea!
            ; real(p1) = bailout (10^10 recommended)
            ; imag(p1) must be different from 0 (>=1 recommended)
   ; This formula must be used with decomp = 256 and periodicity = 0
   ;
  c = z1 = pixel, b = mz1 = cabs(z1), summ = 1
  iter = 1, bailout = real(p1), k = imag(p1)*(0.0,6.28319530718)
  :
  iter = iter + 1
  a = mz1 * mz1
  z1 = z1 * z1 + c
  mz1 = cabs(z1)
  IF (mz1 > bailout)
    z = exp (summ * k / iter)
  ELSE
    summ = summ + (mz1-abs(a-b)) / (a+b - abs(a-b))
  ENDIF
  mz1 <= bailout
  ;SOURCE: triangl.frm
}


tri-mandel-2 {; Sylvie Gallet <sylvie_gallet@compuserve.com>, May 1997
              ; Thanks to Kerry Mitchell for the idea!
              ; real(p1) = bailout (1024 recommended)
              ; imag(p1) must be different from 0 (>=1 recommended)
   ; This formula must be used with decomp = 256 and periodicity = 0
   ;
   c = z1 = pixel, b = mz1 = cabs(z1), summ = iter = 1
   b1 = abs(real(p1)), f = b1^0.1
   b2 = b1*f, b3 = b2*f, b4 = b3*f, b5 = b4*f, b6 = b5*f
   b7 = b6*f, b8 = b7*f, b9 = b8*f, b10 = b9*f, b11 = b10*f
   iter1 = iter2 = iter3 = iter4 = iter5 = iter6 = iter7       \
         = iter8 = iter9 = iter10 = summ_tot = iter_tot = 0
   k = imag(p1) * (0.0,6.28319530718)
   :
   iter = iter + 1, a = mz1 * mz1
   z1 = z1 * z1 + c, mz1 = cabs(z1), a_b = abs(a - b)
   summ = summ + (mz1 - a_b) / (a+b - a_b)
   IF (mz1 > b1)
    IF (iter1==0)
     iter1 = iter
     iter_tot = iter_tot + iter1, summ_tot = summ_tot + summ
    ENDIF
    IF (mz1 > b2)
     IF (iter2==0)
      iter2 = iter
      iter_tot = iter_tot + iter2, summ_tot = summ_tot + summ
     ENDIF
     IF (mz1 > b3)
      IF (iter3==0)
       iter3 = iter
       iter_tot = iter_tot + iter3, summ_tot = summ_tot + summ
      ENDIF
      IF (mz1 > b4)
       IF (iter4==0)
        iter4 = iter
        iter_tot = iter_tot + iter4, summ_tot = summ_tot + summ
       ENDIF
       IF (mz1 > b5)
        IF (iter5==0)
         iter5 = iter
         iter_tot = iter_tot + iter5, summ_tot = summ_tot + summ
        ENDIF
        IF (mz1 > b6)
         IF (iter6==0)
          iter6 = iter
          iter_tot = iter_tot + iter6, summ_tot = summ_tot + summ
         ENDIF
         IF (mz1 > b7)
          IF (iter7==0)
           iter7 = iter
           iter_tot = iter_tot + iter7, summ_tot = summ_tot + summ
          ENDIF
          IF (mz1 > b8)
           IF (iter8==0)
            iter8 = iter
            iter_tot = iter_tot + iter8, summ_tot = summ_tot + summ
           ENDIF
           IF (mz1 > b9)
            IF (iter9==0)
             iter9 = iter
             iter_tot = iter_tot + iter9, summ_tot = summ_tot + summ
            ENDIF
            IF (mz1 > b10)
             IF (iter10==0)
              iter10 = iter
              iter_tot = iter_tot + iter10, summ_tot = summ_tot + summ
             ENDIF
             IF (mz1 > b11)
              iter_tot = iter_tot + iter, summ_tot = summ_tot + summ
              z = exp (summ_tot * k / iter_tot)
             ENDIF
            ENDIF
           ENDIF
          ENDIF
         ENDIF
        ENDIF
       ENDIF
      ENDIF
     ENDIF
    ENDIF
   ENDIF
   mz1 <= b11
  ;SOURCE: triangl.frm
}


triang_jul {; Kerry Mitchell 11feb98
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; imag(p2) = unused
        ; real(p3) = inner coloring speed (0 for outer only)
        ; imag(p3) = outer coloring speed (0 for inner only)
        ; use decomp=256
  zc=pixel, c=p1, rc=cabs(c), iter=1
  r2zc=|zc|, maxr=real(p2)
  inspeed=real(p3)*pi*255/128
  outspeed=imag(p3)*pi*255/128:
  iter=iter+1, z2=sqr(zc)+c, rz2=cabs(z2)
  fac=abs(r2zc-rc), q=(rz2-fac)/(r2zc+rc-fac)
  zc=z2, r2zc=|zc|
  IF (iter==maxit)
    angle=inspeed*q
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  IF (r2zc>maxr)
    angle=outspeed*q
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
        ;
        ; Colors Julia set by magnitude of last iterate
        ; within a range determined by the triangle inequality.
        ; Take location in range and scale into an angle for
        ; decomp coloring.  Decouple inside from outside by
        ; setting appropriate coloring speed to 0.
        ;
;*******Kerry Mitchell's explanation of his "triangle" formulas
;            narrative copyright Kerry Mitchell 11feb98
;
; Applies to formulas:
;     triang_jul (above)
;     triang_man
;     triangcount_jul
;     triangcount_man
;
; Triangle
;
; The triangle method is based on a simple characteristic of complex
; numbers:  the magnitude of the sum of two complex numbers, |a+b|,
; is strictly limited to a range determined by a and b:
;
; |a+b| >= ||a| - |b||, and
; |a+b| <= |a| + |b|,
;
; where |z| is the square root of the sum of the squares of the
; components, not the sum of the squares, as in Fractint.  The
; extremes of this inequality are easily seen with a few examples.
; If a=1 and b=2, then:
;
; |a| = 1, |b| = 2;
; ||a| - |b|| = |1-2| = |-1| = 1;
; |a| + |b| = 1+2 = 3;
; |a+b| = |3| = 3;
; 1 <= 3 <= 3.
;
; The upper bound occurs when both addends have the same polar angle.
; The geometric interpretation of this is that the complex numbers add
; up, and the length of the sum is simply the sum of the individual
; lengths.
;
; The lower bound occurs when the polar angles of the complex numbers
; differ by 180 degrees; the two numbers are diametrically opposed.
; Then, the length of the sum is the difference of the lengths.  For
; example, if a=3i and b=-5i, then:
;
; |a| = 3, |b| = 5;
; ||a| - |b|| = |3-5| = |-2| = 2;
; |a| + |b| = 3 + 5 = 8;
; |a+b| = |-2i| = 2;
; 2 <= 2 <= 8.
;
; In general, the length of the sum is somewhere inbetween, and can be
; thought of in terms of a triangle, which is how the inequality gets
; its name.  If |a| is the length of one side of a triangle, and |b|
; is the length of the second side, then |a+b| is the length of the
; third side, and lies somewhere within the range shown above.
;
; Back to fractals.  The two numbers of interest are z^2 and c.  Given
; z (the previous iterate) and c (the Mandelbrot or Julia parameter),
; the range for the magnitude of the new iterate can then be determined.
; With this range, the magnitude of the new iterate can be rescaled to
; a fraction between 0 and 1 inclusive:
;
; min = ||z_old^2| - |c||, max = |z_old^2| + |c|,
; z_new = z_old * z_old + c
; fraction = (|z_new| - min) / (max - min).
;
; This fraction is then scaled into an angle for coloring with the
; decomposition method.
;
; In the triang formulas (_man and _jul variations), this operation
; is performed on the last iterate.  The triangcount formulas compute
; the fraction at every iteration, and color the image based on the
; average fraction (over all iterations).
;
;**********************************************************************
  ;SOURCE: 98msg.frm
}


triang_man {; Kerry Mitchell 11feb98
            ; See the end of formula triang_jul for Kerry Mitchell's 
            ; explanation of his "triangle" formulas
        ; real(p1) = bailout (try 1e12)
        ; imag(p1) = unused
        ; real(p2) = inner coloring speed (0 for outer only)
        ; imag(p2) = outer coloring speed (0 for inner only)
        ; use decomp=256
  zc=pixel, c=pixel, rc=cabs(c), iter=1
  r2zc=|zc|, maxr=real(p1)
  inspeed=real(p2)*pi*255/128
  outspeed=imag(p2)*pi*255/128:
  iter=iter+1, z2=sqr(zc)+c, rz2=cabs(z2)
  fac=abs(r2zc-rc), q=(rz2-fac)/(r2zc+rc-fac)
  zc=z2, r2zc=|zc|
  IF (iter==maxit)
    angle=inspeed*q
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  IF (r2zc>maxr)
    angle=outspeed*q
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
        ;
        ; Colors Mandelbrot set by magnitude of last iterate
        ; within a range determined by the triangle inequality.
        ; Take location in range and scale into an angle for
        ; decomp coloring.  Decouple inside from outside by
        ; setting appropriate coloring speed to 0.
        ;
  ;SOURCE: 98msg.frm
}


triangcount_jul {; Kerry Mitchell 11feb98
                 ; See the end of formula triang_jul for Kerry Mitchell's 
                 ; explanation of his "triangle" formulas
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; imag(p2) = unused
        ; real(p3) = inner coloring speed (0 for outer only)
        ; imag(p3) = outer coloring speed (0 for inner only)
        ; use decomp=256
  zc=pixel, c=p1, rc=cabs(c), iter=1
  r2zc=|zc|, maxr=real(p2), count=0
  inspeed=real(p3)*pi*255/128
  outspeed=imag(p3)*pi*255/128:
  iter=iter+1, z2=sqr(zc)+c, rz2=cabs(z2)
  fac=abs(r2zc-rc), q=(rz2-fac)/(r2zc+rc-fac)
  count=count+q, zc=z2, r2zc=|zc|
  IF (iter==maxit)
    angle=inspeed*count/(iter-1)
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  IF (r2zc>maxr)
    angle=outspeed*count/(iter-1)
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
        ;
        ; Colors Julia set by average value of magnitude
        ; within a range determined by the triangle inequality.
        ; Scale average into an angle for decomp coloring.
        ; Decouple inside from outside by setting appropriate
        ; coloring speed to 0.
        ;
  ;SOURCE: 98msg.frm
}


triangcount_man {; Kerry Mitchell 11feb98
                 ; See the end of formula triang_jul for Kerry Mitchell's 
                 ; explanation of his "triangle" formulas
        ; real(p1) = bailout (try 1e12)
        ; imag(p1) = unused
        ; real(p2) = inner coloring speed (0 for outer only)
        ; imag(p2) = outer coloring speed (0 for inner only)
        ; use decomp=256
  zc=pixel, c=pixel, rc=cabs(c), iter=1
  r2zc=|zc|, maxr=real(p1), count=0
  inspeed=real(p2)*pi*255/128
  outspeed=imag(p2)*pi*255/128:
  iter=iter+1, z2=sqr(zc)+c, rz2=cabs(z2)
  fac=abs(r2zc-rc), q=(rz2-fac)/(r2zc+rc-fac)
  count=count+q, zc=z2, r2zc=|zc|
  IF (iter==maxit)
    angle=inspeed*count/(iter-1)
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  IF (r2zc>maxr)
    angle=outspeed*count/(iter-1)
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
        ;
        ; Colors Mandelbrot set by average value of magnitude
        ; within a range determined by the triangle inequality.
        ; Scale average into an angle for decomp coloring.
        ; Decouple inside from outside by setting appropriate
        ; coloring speed to 0.
        ;
  ;SOURCE: 98msg.frm
}


triangle_J {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=0.50000, d0=0.50000
  a1=0.50000, d1=0.50000
  a2=0.50000, d2=0.50000
  al0=0.25000
  al1=0.25000, l1=-0.50000
  al2=0.25000, k2=-0.50000, l2=-0.50000
  z=pixel:
  x=real(z)
  y=imag(z)
  o0=(d0*x)/al0+flip((a0*y)/al0)
  op0=|o0-p2|
  o1=(d1*x)/al1+flip((a1*y+l1)/al1)
  op1=|o1-p2|
  o2=(d2*x+k2)/al2+flip((a2*y+l2)/al2)
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


triangle_M {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=0.50000, d0=0.50000
  a1=0.50000, d1=0.50000
  a2=0.50000, d2=0.50000
  al0=0.25000
  al1=0.25000, l1=-0.50000
  al2=0.25000, k2=-0.50000, l2=-0.50000
  z=pixel:
  x=real(z)
  y=imag(z)
  o0=(d0*x)/al0+flip((a0*y)/al0)
  op0=|o0-pixel|
  o1=(d1*x)/al1+flip((a1*y+l1)/al1)
  op1=|o1-pixel|
  o2=(d2*x+k2)/al2+flip((a2*y+l2)/al2)
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


trick (XAXIS) {; An different method to work in a second function
  z = pixel, zp = (0,0):
  temp = z
  z = sin(z)*z - zp
  zp = (temp)
  |zp| <= 4 
  ;SOURCE: noel.frm
}


TricolorMand {; Parametrized cubic Mandelbrot sets, colored based on both
              ; critical points. p1 is alpha parameter. Use outside=real,
              ; float=y, periodicity=n, maxiter>=256, logmap=0.
              ; To get logmaplike effect, choose real p2 equal to lowest iteration
              ; and real p3 to nonzero, bigger means more colors are pushed to
              ; lower iterations. Use imag(p2) = 0.001 or similarly tiny.
              ; Color 0 is for both critical points trapped.
              ; Colors 1-85, 86-170, and 171-255 are separate ranges.
              ; Use first for outside, second and third for one
              ; critical point escapes, one trapped.
              ; Very beautiful.
    ; tricolor.frm
    ; Copyright (C) 1998 PGD.
    ; May be distributed freely or for distribution cost, but not for profit.
    ; This notice must be retained on all copies distributed. If a modified
    ; copy is distributed, the nature of the modifications must be described in
    ; a comment.
  a=p1, c=pixel, z1=sqrt(a), aa=3*a, z2=-z1, iter=0, done=0, z2done=0
  m=maxit-1, z1done=0, m2=floor(maxit/2), same=0, qq=imag(p2), z1a=z1
  z2a=z2, flag=0, z1d2=0, z2d2=0:
  IF(z2done==0)
    z2=z2*(sqr(z2)-aa)+c
    IF(lastsqr>400)
      z2done=iter
      z2d2=1
    ENDIF
  ENDIF
  IF(z1done==0)
    z1=z1*(sqr(z1)-aa)+c
    IF(lastsqr>400)
      z1done=iter
      z1d2=1
    ENDIF
  ENDIF
  iter=iter+1
  IF(iter==m2 && z1done==0 && z2done==0)
    z1chek=z1
    z2chek=z2
    flag=1
    spd=0
  ELSEIF(flag==1 && same==0)
    z1a=z1a*(sqr(z1a)-aa)+c
    z2a=z2a*(sqr(z2a)-aa)+c
    IF(|z1a-z2chek|<qq)
      same=1
    ENDIF
    IF(|z2a-z1chek|<qq)
      same=same+2
    ENDIF
    IF(|z1a-z1chek|<qq)
      z1d2=1
    ENDIF
    IF(|z2a-z2chek|<qq)
      z2d2=1
    ENDIF
    spd=spd+1
  ENDIF
  IF((z1d2>0 && z2d2>0) || iter==m || same!=0)
    k=real(p3)
    min=real(p2)
    IF(k==0)
      k=1
    ENDIF
    IF(z1done==0 || z2done==0)
      IF(z2done>0)
        color=((z2done-min)/(m-min))^(1/k)*85
        IF(color>85)
          color=85
        ENDIF
        color=color+170
      ELSEIF(z1done>0)
        color=((z1done-min)/(m-min))^(1/k)*85
        IF(color>85)
          color=85
        ENDIF
        color=color+85
      ELSEIF(same==1)
        color=(spd/m)^(1/k)*85
        IF(color>85)
          color=85
        ENDIF
        color=color+170
      ELSEIF(same==2)
        color=(spd/m)^(1/k)*85
        IF(color>85)
          color=85
        ENDIF
        color=color+85
      ELSEIF(same==3)
        color=(spd/m)^(1/k)*85
        IF(color>85)
          color=85
        ENDIF
      ELSE
        color=0
      ENDIF
    ELSE
      color=((iter-min)/(m-min))^(1/k)*85
      IF(color>85)
        color=85
      ENDIF
    ENDIF
    done=1
    z=color-iter-7
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


TricolorMandb {; Parametrized cubic Mandelbrot sets, colored based on both
               ; critical points. p1 is alpha parameter. Use outside=real,
               ; float=y, periodicity=n, maxiter>=256, logmap=0.
               ; To get logmaplike effect, choose real p2 equal to lowest iteration
               ; and real p3 to nonzero, bigger means more colors are pushed to
               ; lower iterations. Use imag(p2) = 0.001 or similarly tiny.
               ; Color 0 is for both critical points trapped.
               ; Colors 1-85, 86-170, and 171-255 are separate ranges.
               ; Use first for outside, second and third for one
               ; critical point escapes, one trapped.
               ; Very beautiful. Slight color variant.
     ; tricolor.frm
     ; Copyright (C) 1998 PGD.
     ; May be distributed freely or for distribution cost, but not for profit.
     ; This notice must be retained on all copies distributed. If a modified
     ; copy is distributed, the nature of the modifications must be described in
     ; a comment.
  a=p1, c=pixel, z1=sqrt(a), aa=3*a, z2=-z1, iter=0, done=0, z2done=0
  m=maxit-1, z1done=0, m2=floor(maxit/2), same=0, qq=imag(p2), z1a=z1
  z2a=z2, flag=0, z1d2=0, z2d2=0:
  IF(z2done==0)
    z2=z2*(sqr(z2)-aa)+c
    IF(lastsqr>400)
      z2done=iter
      z2d2=1
    ENDIF
  ENDIF
  IF(z1done==0)
    z1=z1*(sqr(z1)-aa)+c
    IF(lastsqr>400)
      z1done=iter
      z1d2=1
    ENDIF
  ENDIF
  iter=iter+1
  IF(iter==m2 && z1done==0 && z2done==0)
    z1chek=z1
    z2chek=z2
    flag=1
    spd1=0
    spd2=0
  ELSEIF(flag==1 && same==0)
    z1a=z1a*(sqr(z1a)-aa)+c
    z2a=z2a*(sqr(z2a)-aa)+c
    IF(|z1a-z2chek|<qq)
      same=1
    ELSE
      spd1=spd1+1
    ENDIF
    IF(|z2a-z1chek|<qq)
      same=same+2
    ELSE
      spd2=spd2+1
    ENDIF
    IF(|z1a-z1chek|<qq)
      z1d2=1
    ENDIF
    IF(|z2a-z2chek|<qq)
      z2d2=1
    ENDIF
  ENDIF
  IF((z1d2>0 && z2d2>0) || iter==m || same!=0)
    spd=abs(spd2-spd1)
    k=real(p3)
    min=real(p2)
    IF(k==0)
      k=1
    ENDIF
    IF(z1done==0 || z2done==0)
      IF(z2done>0)
        color=((z2done-min)/(m-min))^(1/k)*85
        IF(color>85)
          color=85
        ENDIF
        color=color+170
      ELSEIF(z1done>0)
        color=((z1done-min)/(m-min))^(1/k)*85
        IF(color>85)
          color=85
        ENDIF
        color=color+85
      ELSEIF(same==1)
        color=(spd/m)^(1/k)*85
        IF(color>85)
          color=85
        ENDIF
        color=color+170
      ELSEIF(same==2)
        color=(spd/m)^(1/k)*85
        IF(color>85)
          color=85
        ENDIF
        color=color+85
      ELSEIF(same==3)
        color=(spd/m)^(1/k)*85
        IF(color>85)
          color=85
        ENDIF
      ELSE
        color=0
      ENDIF
    ELSE
      color=((iter-min)/(m-min))^(1/k)*85
      IF(color>85)
        color=85
      ENDIF
    ENDIF
    done=1
    z=color-iter-7
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


trillium (XAXIS) {
    ; A minor variation in sign will produce a remarkable change
  z = pixel, zp = (0,0):
  temp = z
  z = z*z - zp
  zp = temp
  |zp| <= 4
  ;SOURCE: noel.frm
}


trinity {; Giuseppe Zito
  z = pixel
  c0 = -0.847402
  c1 = 0.70424
  d2 = 0.416143
  d9 = -0.2668
  : 
  x = real(z), y = imag(z)
  s0 =c0
  s0 = s0 /c1
  s0 = s0 -y
  newx = s0 
  s0 = y
  s0 = s0 *y
  s1 =d2
  s0 = s0 *s1
  s0 = s0 -y
  s0 = s0 -y
  s0 = s0 +y
  s0 = s0 +d9
  s0 = s0 +y
  s0 = s0 *y
  s1 = x
  s0 = s0 +s1
  s0 = s0 -y
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


Triple_alt {
    ; (c) 1993 by:
    ;
    ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
    ;
    ; Michael G. Wareman
    ; P.O. Box 1856
    ; Olds, Alberta, Canada
    ; T0M 1P0
  z = c = pixel:
  z = z * z * z + c
  |z - pixel| < 4
  ;SOURCE: frame.frm
}


TripleMutant{; Mandelbrot mutated by a combination of fn1, fn2 and fn3
             ; "sitting" at the points p1, p2 and p3
             ; The activities of the functions are decreasing with the
             ; inverse square of the distance to the current pixel
  z=0
  c=pixel
  a1=1/(|(pixel-p1)|^2)    ; calclulate the inverse square for 
  a2=1/(|(pixel-p2)|^2)    ; all three points
  a3=1/(|(pixel-p3)|^2):
  z=z*z+a1*fn1(z)+a2*fn2(z)+a3*fn3(z)+c  ; the functions are added
  |z|<=8
  ;SOURCE: 98msg.frm
}


TripleMutant2 {; Mandelbrot mutated by a combination of fn1, fn2 and fn3
               ; "sitting" at the points p1, p2 and p3
               ;  Not the iterated formula is modified
               ;  but the constant c 
  z=0
  c=pixel
  a1=1/(|(pixel-p1)|^2)   
  a2=1/(|(pixel-p2)|^2)    
  a3=1/(|(pixel-p3)|^2):
  c=c+a1*fn1(c)+a2*fn2(c)+a3*fn3(c)
  z=z*z+c   
  |z|<=8
  ;SOURCE: 98msg.frm
}


Trispine (XAXIS) {; Edited for Fractint v. 20 by George Martin
  z = pixel:
  z = sin(z + pixel)
  z = z + lambda + pixel 
  |z| <= 42
  ;SOURCE: hubert.frm
}


trm-011 {
  z=c=pixel:
  z=cotanh(z)*conj(z)*tan(z)*1/z+c
  |z|<=4
  ;SOURCE: 98msg.frm
}


trmoe-01 {
  z=c=pixel, c=c+5:
  IF(c<=10)
    z=z*cos(z+c)+1/c
  ELSEIF(c<=20)
    z=(cos(z)*tan(z)*atanh(z))+cosxx(c)
  ELSE
    z=(sqrt(z)*z)+cosh(c)
  ENDIF
  |z|<=256
  ;SOURCE: trmoe2.frm
}


trmoe-010 {
  z=Pixel/12.20, c=flip(atanh(conj(sqr(12, -20))))
  x=1.210*(z+c), y=(x*z)/.122*z:
  z=(z*fn1(x*y)-fn2(y*x))*c
  |z|<=1.22
  ;SOURCE: trmoe2.frm
}


trmoe-011 {
  z=c=pixel:
  z=fn1(z)*fn2(z)*fn3(z)*1/z+c
  |z|<=4
  ;SOURCE: trmoe2.frm
}


trmoe-012 {
  z=1/pixel-0.99, c=fn1(pixel):
  z=fn2(z)*.218+c
  |z|<=4
  ;SOURCE: trmoe2.frm
}


trmoe-013 {
  z=c=pixel, c=c+5:
  IF(imag(c)<=200)
    z=z*fn2(z+c)+1/c
  ELSEIF(imag(c)<=400)
    z=fn1(z)*fn2(z)*fn3(z)*1/z+c
  ELSEIF(imag(c)<=600)
    z=flip(fn1(fn2(fn3(pixel))))*1/pixel
  ELSE
    z=1/z*atan(fn1(fn2(fn3(z*c))))+c/-.1792
  ENDIF
  |z|<=256
  ;SOURCE: trmoe2.frm
}


trmoe-014 {
  z=pixel, c=pixel/2
  z=fn1(z)*fn2(z)*fn3(z)*1/z+c
  |z|<=4
  ;SOURCE: trmoe2.frm
}


trmoe-02 {
  z=c=pixel:
  z=fn1(z)*p1
  ;SOURCE: trmoe2.frm
}


trmoe-03 {
  z=c=1/pixel:
  z=fn1(z)*p1
  ;SOURCE: trmoe2.frm
}


trmoe-04 {
  z=flip(imag(cosh(sqr(pixel))))*1/pixel
  c=pixel+sqr(atan(z*z+1)):
  z=(z-(z*1/c)+sqr(1/pixel))/(pixel-z*z+c)
  |z|<=256
  ;SOURCE: trmoe2.frm
}


trmoe-05 {
  z=pixel, c=1/pixel
  x=(z+c)*sin(c)
  y=cos(x*z):
  z=z*(x*y)/abs(x)+c
  ;SOURCE: trmoe2.frm
}


trmoe-06 {
  z=(pixel*7.5)/2, c=sqr(z)*.00915
  x=cosxx(c/z), y=tanh(z*c):
  z=(z*1/c)*x+atanh(sqr(sqr(1/y)))
  |z|<=4
  ;SOURCE: trmoe2.frm
}


trmoe-07 {
  z=1/pixel*1.066, c=flip(sqr(z))*.1865
  z=(z+z)*c*z*z*z/cosxx(c+(z*z))+c
  |z|<4
  ;SOURCE: trmoe2.frm
}


trmoe-08 {
  z=pixel*-.1792, c=flip(cosxx(tan(sqr(z))))
  z=1/z*atan(cos(real(imag(z*c))))+c/-.1792
  |z|>.1792
  ;SOURCE: trmoe2.frm
}


trmoe-09 {
  z=-14.83/pixel, c=z^(z-.1483)
  z=(z*z*z)*cosxx(flip(z*c))+c+1.483
  |z|<.1483
  ;SOURCE: trmoe2.frm
}


trmoe-1 {; Revised for Fractint v20 by G. Martin
  z=pixel/2, c=cos(pixel/2):
  z=z*z+c
  |z|<=4
  ;SOURCE: trmoe1.frm
}


trmoe-10 {
  Z=2/PIXEL, C=cos(2/pixel):
  z=(z*z)+c
  |z|<=4
  ;SOURCE: trmoe1.frm
}


trmoe-11 {
  Z=2/PIXEL, C=fn1(2/pixel):
  z=fn2(z)+c
  |z|<=4
  ;SOURCE: trmoe1.frm
}


trmoe-12 {
  z=c=1/pixel
  y=fn1(c):
  z=z*y+fn2(c)
  ;SOURCE: trmoe1.frm
}


trmoe-13 {
  z=fn1(pixel), c=fn2(cos(1/pixel)), x=fn3(c+z)
  z=(z*z)+c/x
  |z|<=4
  ;SOURCE: trmoe1.frm
}


trmoe-14 {
  z=c=pixel:
  z=(z*z)+fn1(c)
  |Z|<=16
  ;SOURCE: trmoe1.frm
}


trmoe-15 {
  z=pixel:
  z=fn1(fn2(z))
  ;SOURCE: trmoe2.frm
}


trmoe-2 {
  z=fn1(cos(pixel/2)), c=fn2(cos(pixel)):
  z=z*z+c/p1
  |z|<=25
  ;SOURCE: trmoe1.frm
}


trmoe-3 {
  z=c=1/pixel:
  z=z*z+c+.025
  |z|<=16
  ;SOURCE: trmoe1.frm
}


trmoe-4 {
  z=c=1/pixel
  y=sin(c):
  z=z*y+atan(c)
  ;SOURCE: trmoe1.frm
}


trmoe-5 {
  z=pixel, c=p1:
  z=(z*z)*c
  |z|<=4
  ;SOURCE: trmoe1.frm
}


trmoe-6 {
  z=pixel, m=atan(pixel):
  z=m*(z*z)
  |z|<=150
  ;SOURCE: trmoe1.frm
}


trmoe-7 {
  z=pixel, x=fn1(1/pixel), y=fn2(1/pixel):
  z=x*(y*y)/p1
  |z|<=150
  ;SOURCE: trmoe1.frm
}


trmoe-8 {
  z=fn1(pixel), c=atan(cos(1/pixel)), x=cos(c+z)
  z=(z*z)+c/x
  |z|<=4
  ;SOURCE: trmoe1.frm
}


trmoe-9 {
  z=pixel, m=1/atan(pixel):
  z=m*(z*z)
  |z|>=4
  ;SOURCE: trmoe1.frm
}


TROPFISH (XAXIS) {
  z=pixel-cos(pixel)-p1:
  z=sqr(z)+sinh(pixel)-p2  
  |Z|<=4 
  ;SOURCE: newform.frm
}


TrueColor {; formula to place a pseudo-continuous 
           ; iteration value in the real portion 
           ; of z. 
  z = c = pixel 
  i = 0 
  zb = 0
  bailout = p1:
  IF (|z| <= bailout)
    z = z*z + c 
    i = i + 1
  ENDIF
  IF (|z| > bailout)
    zb = z 
    z = z*z + c ; These extra iterations
    z = z*z + c ; are added as suggested
                ; by L. Vepstas to minimize
                ; the error function
    z = i - log(log(cabs(z)))/log(2)
  ENDIF        
  |zb| <= bailout
  ;SOURCE: 97msg.frm
}


Truncated_Stalks {; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = if both real(p1) and imag(p1) equal 0 do Mset,
    ;              otherwise do Julia set
    ;   real(p2) = a factor controlling the width of the stalks
    ;   imag(p2) = a factor controlling the length of the stalks
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
  IF (real(p1) == 0 && imag(p1) == 0)
    w = 0
    c = pixel
  ELSE
    w = pixel
    c = p1
  ENDIF
  z = 0
  bailout = 0
  iter = 0
  range_num = 0
    ;****************************************************
    ; In the accompanying par files, trunspr1 and 2.par,
    ; we have 2 color ranges with 125 colors in each range
    ; for a total of 250 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| < 1000.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
  num_ranges = real(p3)
  colors_in_range = imag(p3)
    ;****************************************************
    ; Real(p2) controls the width of the stalks.
    ; Imag(p2) controls the length of the stalks.
    ;****************************************************
  stalk_width = real(p2)
  stalk_length = imag(p2)
  index_factor = (colors_in_range - 1) / stalk_width:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be expressed in terms of a complex variable
    ; and a complex constant will work with this method.
    ;****************************************************
  w = c * (1 - w) * (1 + w) / (1 + w * w)
    ;****************************************************
    ; Find which axis the orbit point is closest to.
    ;****************************************************
  IF (abs(real(w)) <= abs(imag(w)))
    min_dist_to_axis = abs(real(w))
  ELSE
    min_dist_to_axis = abs(imag(w))
  ENDIF
    ;****************************************************
    ; If the orbit point is within a stalk width of an axis,
    ; and the value of |w| is less than the stalk length, then
    ; set z to the index into the colormap and set the bailout flag.
    ;****************************************************
  IF (min_dist_to_axis < stalk_width && |w| < stalk_length && iter > 0)
    z = index_factor * min_dist_to_axis\ 
        + range_num * colors_in_range + 1
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


trydecomp {; Paul W. Carlson
    ; Bailout occurs when the absolute value of w exceeds real(p1).
    ; The spacing of the "field lines" is highly sensitive to
    ; this value.  Here absolute value means sqrt(|w|).
    ; A value of 10 will reproduce the pictures for the Mset and
    ; Julia sets in the book _The Beauty of Fractals_.
  w = 0
  c = pixel
  color = 0
  iter = 0
  bailout = 0:
    ;
  w = w * w + c
  IF (sqrt(|w|) > p1)
    bailout = 1
    IF (imag(w) > 0)
      color = 1
    ELSE
      color = 2
    ENDIF
  ENDIF
  iter = iter + 1
  z = color - iter
  bailout == 0
  ;SOURCE: decomp.frm
}


tsept {; Why not try this change on all the good formula so far?
  z = pixel, zp1 = zp2 = (0,0), huge = 1.0e32:
  temp = z
  z = z*z - zp2
  zp2 = zp1
  zp1 = p1/temp
  (|zp1| <= 64) && (|z| <= huge) 
  ;SOURCE: noel.frm
}


TSHCH (XAXIS) {
  z = c = sinh(pixel) * cosh(pixel):
  z = c ^ z
  |z| <= (p1 + 3)
  ;SOURCE: skinv13r.frm
}


TSin (XAXIS) {
  z = c = sin(pixel):
  z = c ^ z
  |z| <= (p1 + 3)
  ;SOURCE: skinv13r.frm
}


TSinh (XAXIS) {; Tetrated Hyperbolic Sine - Improper Bailout
  z = c = sinh(pixel):
  z = c ^ z
  z <= (p1 + 3)
  ;SOURCE: fractint.frm
}


TSLPS2 (XAXIS) {
  z = c = sqr( log(pixel) ) * sin(pixel) * sin(pixel):
  z = c ^ z
  |z| <= (p1 + 3)
  ;SOURCE: skinv13r.frm
}


Tsq (XYAXIS) {
  z = c = pixel * pixel:
  z = c ^ z
  |z| <= (p1 + 3)
  ;SOURCE: skinv13r.frm
}


TSqr (XYAXIS) {
  z = c = sqr(pixel):
  z = c ^ z
  |z| <= (p1 + 3)
  ;SOURCE: skinv13r.frm
}


TSSH (XYAXIS) {
  z = c = sin(pixel) * sinh(pixel):
  z = c ^ z
  |z| <= (p1 + 3)
  ;SOURCE: skinv13r.frm
}


tstar {; For the star fractal as well it makes a dramatic change.
       ; Use real 0.1 < p1 < 1.0
  z=pixel, zp = (0,0), huge=1.0e32:
  temp = z
  z = z*z + zp
  zp = p1/conj(temp)
  (|zp| <= 64) && (|z| <= huge) 
  ;SOURCE: noel.frm
}


tulip {; Giuseppe Zito
  z = pixel
  d0 = 0.218334
  d2 = 0.6919
  d9 = -0.708701
  d11 = 0.129863
  d12 = -0.849073
  d14 = -0.255493
  d15 = -0.470536
  : 
  x = real(z), y = imag(z)
  s0 = y
  newx = s0 
  s0 =d0
  s0 = s0 *d2
  s0 = s0 *x
  s0 = s0 *y
  s0 = s0 +y
  s0 = s0 *d9
  s0 = s0 +d11
  s0 = s0 *d12
  s0 = s0 -x
  s0 = s0 +d14
  s0 = s0 -d15
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


TurtleC (XAXIS_NOPARM) {; Edited for Fractint v. 20 by George Martin
  z=p1:
  x=real(z)
  IF (x<0)
    z=sqr(z)+pixel
  ELSE
    z=sqr(z)-pixel
  ENDIF
  |z|<=4
  ;SOURCE: choice.frm
}


Twins (xaxis) {; Two almost-connected 'Brots
               ; The authors left out the RECIP
               ; function outside of the fn
               ; choices, so the reciprocal formula
               ;  1/x  was used instead.
  z=0, c=pixel:
  z=z*z+c+(1/c)
  |z| < 4
  ;SOURCE: 99msg.frm
}


Twister2 {; p2 is inverse bailout, set to small nonzero number
          ; like 0.000001.
          ; Twister2 by PGD. Freely distributable.
  z=pixel
  c=p1:
  oz=z
  z2=z*z
  z3=z*z2
  z4=z*z3
  z5=z*z4
  z6=z*z5
  z=(z6+z4-z2+2*z-1)/(4*z3-2*z+2)+c
  |z|<127 && |oz-z|>p2
  ;SOURCE: sci_frac.frm
}


Twister4 {; p2 is inverse bailout, set to small nonzero number
          ; like 0.000001.
  z=pixel
  c=p1:
  oz=z
  z2=z*z
  z3=z*z2
  z4=z*z3
  z5=z*z4
  z=(z5+z4-z2+3*z-1)/(4*z3-2*z+3)+c
  |z|<127 && |oz-z|>p2
  ;SOURCE: novaexpo.frm
}


Two_Ellipse_Mset {; Copyright (c) Paul W. Carlson, 1998
    ; Parameters:
    ;   real(p1) = a factor controlling the width of the curves
    ;   imag(p1) = iterations to skip
    ;   real(p2) = major axis, ellipse 1
    ;   imag(p2) = minor axis, ellipse 1
    ;   real(p3) = major axis, ellipse 2
    ;   imag(p3) = minor axis, ellipse 2
    ;
  w = z = bailout = iter = 0
  c = pixel
  width = real(p1)
  skip_iters = imag(p1)
  a1 = real(p2),  b1 = imag(p2)
  a2 = real(p3),  b2 = imag(p3)
  i = (0,1)
  index_factor = 124 / width:
    ;
  w = w * w + c  ; classic Mandelbrot set
    ;
  ang = atan(imag(w) / real(w))
  ell1 = a1 * cos(ang) + i * b1 * sin(ang)
  dist1 = abs(cabs(w) - cabs(ell1))
  ell2 = b2 * cos(ang) + i * a2 * sin(ang)
  dist2 = abs(cabs(w) - cabs(ell2))
  IF (dist1 < dist2)
    range_num = 0
    distance = dist1
  ELSE
    range_num = 1
    distance = dist2
  ENDIF
  IF (distance < width && iter > skip_iters)
    z = index_factor * distance + range_num * 125 + 1
    bailout = 1
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0  && |w| < 1000
  ;SOURCE: 98msg.frm
}


Two_Plus_E {; (c) Jay Hill, 1998
            ; use outside=summ periodicity=0 float=y
  done = 1, z = 0, zc = 0, c = pixel
  t1=8+4*c*(1+sqrt(-4*c-7))
  IF (|t1|<1)
    c=2*t1/1000-1.941
    L1=L2=2
    IF ((4*c+3) !=0)
      Y=pi*sqrt(-1)/1.5, X = 2*sqrt((4*c+3)/3)
      X3 = asinh(-16/X^3)/3, Zz = 2*(c+1)*c + 2
      F=X*sinh(X3 + Y), L1= 8*((c*(F+1)*F + Zz)) 
      F=X*sinh(X3 - Y), L2= 8*((c*(F+1)*F + Zz)) 
      t2=L1*(|L1|<=1) + L2*(|L2|<=1)
      IF ((|L1|<=1) + (|L2|<=1))
        c=t2/4000-1.98536
      ENDIF
    ENDIF
  ENDIF
  :                  ; initialization.
  zc=sqr(zc) + c     ; standard MSet iteration
  IF (|zc| >= 800) 
    done=-1          ; Set flag to force an exit.
  ENDIF
  done >= 0          ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}


TwoBallsJulia {; Copyright (c) Paul Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1 = Julia set coordinates
    ;   real(p2) = a factor controlling the size of the balls
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
  w = pixel
  c = p1
  z = 0
  bailout = 0
  iter = 0
  range_num = 0
  num_ranges = 2
  colors_in_range = 125
    ;****************************************************
    ; Parameter real(p2) controls the size of the balls.
    ; These values will usually be in the range 0.001 to 0.5
    ;****************************************************
  ball_size = real(p2)
  index_factor = (colors_in_range - 1) / ball_size:
    ;****************************************************
    ; The equation being iterated.  This equation is from
    ; page 465 of "The Fractal Geometry of Nature."
    ;****************************************************
  w = c * (w - 1 / w)
    ;****************************************************
    ; Check if point falls in one of the orbit traps.  If
    ; it does, compute "delta" and set bailout flag.
    ;****************************************************
  wr = real(w), wi = imag(w)
  IF (wr * wr + (wi - .5) * (wi - .5) < ball_size)
    bailout = 1
    delta = ball_size - (wr * wr + (wi - .5) * (wi - .5))
  ELSEIF (wr * wr + (wi + .5) * (wi + .5) < ball_size)
    bailout = 1
    delta = ball_size - (wr * wr + (wi + .5) * (wi + .5))
  ELSEIF (wi * wi + (wr - .5) * (wr - .5) < ball_size)
    bailout = 1
    delta = ball_size - (wi * wi + (wr - .5) * (wr - .5))
  ELSEIF (wi * wi + (wr + .5) * (wr + .5) < ball_size)
    bailout = 1
    delta = ball_size - (wi * wi + (wr + .5) * (wr + .5))
  ENDIF
    ;
  IF (bailout)
      ;************************************************
      ; Set color range depending on sign of imag(w)
      ;************************************************
    IF (wi >= 0)
      range_num = 1
    ELSE
      range_num = 0
    ENDIF
      ;************************************************
      ; Set z to the index into the colormap.
      ;************************************************
    z = index_factor * delta +  range_num * colors_in_range + 1
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
  ;SOURCE: 97msg.frm
}


TwoFace (XAXIS) {; Modified Sylvie Gallet frm.
                 ; Modified Carr1971 formula
                 ; LGD 1-11-96
  c=z=pixel 
  compt=0, limit=real(p1/pixel), bailout=4
  p=(-0.743380900000982,-0.131850030300002):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |z|<=bailout
  ;SOURCE: 96msg.frm
}


Twofo_J {; Attractors are of no fixed address or type!
         ; Thus, periodicity checking: At half of maxit it saves z,
         ; then checks all future z against it to trap orbit.
         ; Turn periodicity off, use float, and p2 is orbit trap radius.
         ; p1 is Julia parameter. Use logmap=0, outside=real, and a
         ; two-tone colormap divided at top & bottom halves to get
         ; separate coloring of the 2 basins.
         ; Note: for speed fans, will check periodicity sooner at
         ; intervals, catch low periods this way sometimes.
  z=pixel, lambda=p1, r=real(p2), m=trunc(maxit/2)
  k=10, z2=0, iter=0, done=0, q=1, big=64, huge=big, flipflag=0, w=0
  IF(|lambda|>=1)
    bigflag=1
  ELSE
    bigflag=0
  ENDIF
  IF(|lambda-0.5|>=0.5)
    twoflag=0
  ELSE
    twoflag=1
  ENDIF
  ol=1/lambda
  tiny=1/huge
     ; Preiterate a few times
  IF(bigflag==0)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
    z=lambda*(z-1/z)
  ENDIF
  z1=z
  :
  iter=iter+1
  IF(flipflag==0)
    z=lambda*(z-1/z)
    IF(|z|>big)
      IF(bigflag==1)
        done=2
      ELSEIF(|z|>huge)
        w=1/z
        flipflag=1
      ENDIF
    ENDIF
    IF(iter>m)
      IF(|z-z2|<r)
        done=1
      ENDIF
    ELSEIF(iter==m)
      z2=z
    ELSEIF(iter>k)
      z1=z
      k=2*k
      q=q+1
    ELSE
      IF(|z-z1|<r)
        done=1
      ENDIF
    ENDIF
  ELSE
    w=ol*w/(1-sqr(w))
    IF(lastsqr>tiny)
      z=1/w
      flipflag=0
    ENDIF
  ENDIF
  IF(done!=0)
    IF(done==2 || twoflag==0)
      color=iter
      IF(imag(z)<0)
        color=color+1
      ENDIF
    ELSE
      color=q
    ENDIF
    IF(color<1)
      color=1
    ENDIF
    IF(color>127)
      color=trunc(128*((color/128)-trunc(color/128)))
    ENDIF
    IF(imag(z)<0 && done!=2 && twoflag==1)
      color=color+127
    ENDIF
    z=color-iter-7
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


TwoIkes {; Ron Barnett [70153,1233], 1996  Requires passes=1
   ; p3 will shift the two ikenaga sets wrt to each other
   ; Ron Barnett, 1996
  z = p1*whitesq*(pixel+p3)+p2*(whitesq==0)*((1-pixel)/3)^0.5
  c = pixel:
  z=z*z*z+(c-1)*z-c 
  |z|<=4
  ;SOURCE: phc.frm
}


TwoLogistic {; Peter Anders (anders@physik.hu-berlin.de)
  z=p1, c=pixel:
  r=rand
  if r<0.5 
  z=c*z*(1-z)
  if r>=0.5
  z=c*z*(z-1)
  |fn1(z)|<real(p2) 
  ;SOURCE: lambda.frm
}


TwoMands {; Ron Barnett [70153,1233], 1996  Requires passes=1
   ; p3 will shift the two mandelbrot sets wrt to each other
   ; Ron Barnett, 1996
  z = c = pixel+(whitesq==0)*p3:
  z=whitesq*(z^p1+c)+(whitesq==0)*(z^p2+c) 
  |z|<=4
  ;SOURCE: phc.frm
}


TwoPieces {; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = Julia set coordinates
    ;   real(p2) = the iteration count at which the value
    ;              of w is saved for periodicity checking
    ; Note that the equation variable is w, not z.
    ;****************************************************
  w = pixel
  c = p1
  save_iter = real(p2)
  iter = 0
  bailout = 0
  color = 0:
    ;****************************************************
    ; The equation being iterated.
    ;****************************************************
  w = c * (w - 1 / w)
    ;****************************************************
    ; if iter = save iter, save real(w) and imag(w)
    ;****************************************************
  IF (iter == save_iter)
    sr = real(w)
    si = imag(w)
  ENDIF
    ;****************************************************
    ; check if orbit is reapeating (periodicity check)
    ;****************************************************
  IF (iter > save_iter)
    IF (abs(real(w) - sr) < 0.00001 && abs(imag(w) - si) < 0.00001)
            ;****************************************************
            ; if it is, set color based on if imag(w) is + or -
            ; and set bailout flag.
            ;****************************************************
      bailout = 1
      IF (imag(w) >= 0)
        color = 1
      ELSE
        color = 2
      ENDIF
    ENDIF
  ENDIF
    ;****************************************************
    ; Since we are using outside=summ, z is equal to the
    ; color number minus the number of iterations.
    ;****************************************************
  iter = iter + 1
  z = color - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
  bailout == 0
  ;SOURCE: 98msg.frm
}


Twotrj {; This one make a dragon curve, use p1=(1.1,.9)
  z=pixel, k=-1, l=1:
  x=real(z)
  a=k*(x<0)
  b=l*(x>=0)
  p=a+b
  z=p1*z+p
  |z|<=100
  ;SOURCE: esc-ifs.frm
}


TZ0509-11 {
      ; from TieraZon2 fl-05-09.fll
      ; 11.) init z = 1; init t = z;  z = z-(z2-zcos*t)/(2*z-zsin)+c;
  z = 1
  t = z:
  z = z - (z^2 - cos(z) * t) / (2 * z - sin(z)) + pixel
  |z| < 4
  ;SOURCE: 99msg.frm
}

