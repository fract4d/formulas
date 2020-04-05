

H02-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (Euler method)
        ;
        ; H(n+1) = 2(xH(n)-nH(n-1))
        ; H(0)  = 1
        ; H(1)  = 2x
        ;
        ; = 2(xH(1)-H(0))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(x+x)*x-1
  Tx=Tx+Tx
  Ty=(y+y)*y-1
  Ty=Ty+Ty
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


H02-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; Chebyshev Types:
                 ; Inspired by Clifford A. Pickover:
                 ; Dynamic
                 ;
                 ; H(n+1) = 2(xH(n)-nH(n-1))
                 ; H(0)  = 1
                 ; H(1)  = 2x
                 ;
                 ; = 2(xH(1)-H(0))
  bailout=p1+4, z=pixel:
  z=2*(2*z*z-1)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


H02-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Julia)
        ;
        ; H(n+1) = 2(xH(n)-nH(n-1))
        ; H(0)  = 1
        ; H(1)  = 2x
        ;
        ; = 2(xH(1)-H(0))
  const=p1, z=pixel:
  z=4*zz-2+const
  |z|<100
  ;SOURCE: chby3.frm
}


H02-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Mandelbrot)
        ;
        ; H(n+1) = 2(xH(n)-nH(n-1))
        ; H(0)  = 1
        ; H(1)  = 2x
        ;
        ; = 2(xH(1)-H(0))
  const=pixel, z=p1:
  z=4*zz-2+const
  |z|<100
  ;SOURCE: chby4.frm
}


H02-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Newton Method
        ;
        ; H(n+1) = 2(xH(n)-nH(n-1))
        ; H(0)  = 1
        ; H(1)  = 2x
        ;
        ; = 2(xH(1)-H(0))
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=2*(2*z*z-1)
  fd=8*z
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


H02-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Halley Method
        ;
        ; H(n+1) = 2(xH(n)-nH(n-1))
        ; H(0)  = 1
        ; H(1)  = 2x
        ;
        ; = 2(xH(1)-H(0))
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=2*((z+z)*z-1)
  fd=16*z
  fdd=16
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


H02-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; Chebyshev Types:
                 ; Inspired by Bradley Beacham
                 ; Cubic Method
                 ;
                 ; H(n+1) = 2(xH(n)-nH(n-1))
                 ; H(0)  = 1
                 ; H(1)  = 2x
                 ;
                 ; = 2(xH(1)-H(0))
  bailout=real(p2)/10000, z=pixel:
  f=(z+z)*(z+z)-2
  fd=16*z
  oz=z
  w=z-f/fd
  fw=(w+w)*(w+w)-2
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


H02-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler method)
        ;
        ; H(n+1) = 2(xH(n)-nH(n-1))
        ; H(0)  = 1
        ; H(1)  = 2x
        ;
        ; = 2(xH(1)-H(0))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(4*x*x-2)
  Ty=sin(4*y*y-2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


H02-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler Method)
        ;
        ; H(n+1) = 2(xH(n)-nH(n-1))
        ; H(0)  = 1
        ; H(1)  = 2x
        ;
        ; = 2(xH(1)-H(0))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((x+x)*(x+x)-2)
  Ty=fn1((y+y)*(y+y)-2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


H02-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Mike Wareman:
        ; Secant Method
        ;
        ; H(n+1) = 2(xH(n)-nH(n-1))
        ; H(0)  = 1
        ; H(1)  = 2x
        ;
        ; = 2(xH(1)-H(0))
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(p1+p1)*(p1+p1)-2:
  zt=z
  foz=fz
  fz=(z+z)*(z+z)-2
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


H02-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Julia)
        ;
        ; H(n+1) = 2(xH(n)-nH(n-1))
        ; H(0)  = 1
        ; H(1)  = 2x
        ;
        ; = 2(xH(1)-H(0))
  const=p1, z=pixel:
  z=(4*zz-2)*const
  |z|<100
  ;SOURCE: chby11.frm
}


H02-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Mandelbrot)
        ;
        ; H(n+1) = 2(xH(n)-nH(n-1))
        ; H(0)  = 1
        ; H(1)  = 2x
        ;
        ; = 2(xH(1)-H(0))
  const=pixel, z=p1:
  z=(4*zz-2)*const
  |z|<100
  ;SOURCE: chby12.frm
}


H02-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Halley Method with weird bailout test
        ;
        ; H(n+1) = 2(xH(n)-nH(n-1))
        ; H(0)  = 1
        ; H(1)  = 2x
        ;
        ; = 2(xH(1)-H(0))
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=2*(2*z*z-1)
  fd=16*z
  fdd=16
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


H02-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; Chebyshev Types:
                 ; Inspired by Bradley Beacham
                 ; Cubic Method with weird bailout test
                 ;
                 ; H(n+1) = 2(xH(n)-nH(n-1))
                 ; H(0)  = 1
                 ; H(1)  = 2x
                 ;
                 ; = 2(xH(1)-H(0))
  bailout=real(p2)/10000, z=pixel:
  f=(z+z)*(z+z)-2
  fd=16*z
  oz=z
  w=z-f/fd
  fw=(w+w)*(w+w)-2
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


H02-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Newton Method with weird bailout test
        ;
        ; H(n+1) = 2(xH(n)-nH(n-1))
        ; H(0)  = 1
        ; H(1)  = 2x
        ;
        ; = 2(xH(1)-H(0))
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=2*(2*z*z-1)
  fd=8*z
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


H02-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Mike Wareman:
        ; Secant Method with weird bailout test
        ;
        ; H(n+1) = 2(xH(n)-nH(n-1))
        ; H(0)  = 1
        ; H(1)  = 2x
        ;
        ; = 2(xH(1)-H(0))
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(p1+p1)*(p1+p1)-2:
  zt=z
  foz=fz
  fz=(z+z)*(z+z)-2
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


H02-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Mike Wareman
        ; Secant Method with Girvan perturbations and weird bailout test
        ;
        ; H(n+1) = 2(xH(n)-nH(n-1))
        ; H(0)  = 1
        ; H(1)  = 2x
        ;
        ; = 2(xH(1)-H(0))
  z=pixel, oz=0
  fz=-2
  zt=fn1(z)+p1:
  foz=fz
  fz=(z+z)*(z+z)-2
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


H02-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Mike Wareman
        ; Secant Method with Girvan perturbations and weird bailout test
        ;
        ; H(n+1) = 2(xH(n)-nH(n-1))
        ; H(0)  = 1
        ; H(1)  = 2x
        ;
        ; = 2(xH(1)-H(0))
  z=pixel, oz=0
  fz=-2
  zt=fn1(z)+p1:
  foz=fz
  fz=(z+z)*(z+z)-2
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


H02-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (Implicit Euler method)
        ;
        ; H(n+1) = 2(xH(n)-nH(n-1))
        ; H(0)  = 1
        ; H(1)  = 2x
        ;
        ; = 2(xH(1)-H(0))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(4*x*x-2)
  x=x-t*(4*y*y-2)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


H02-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler method)
        ;
        ; H(n+1) = 2(xH(n)-nH(n-1))
        ; H(0)  = 1
        ; H(1)  = 2x
        ;
        ; = 2(xH(1)-H(0))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(4*x*x-2)
  x=x-t*sin(4*y*y-2)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


H02-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler method)
        ;
        ; H(n+1) = 2(xH(n)-nH(n-1))
        ; H(0)  = 1
        ; H(1)  = 2x
        ;
        ; = 2(xH(1)-H(0))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1((x+x)*(x+x)-2))
  x=x-t*(fn1((y+y)*(y+y)-2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


H02-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler method)
        ;
        ; H(n+1) = 2(xH(n)-nH(n-1))
        ; H(0)  = 1
        ; H(1)  = 2x
        ;
        ; = 2(xH(1)-H(0))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((x+x)*(x+x)-2)
  Ty=fn2((y+y)*(y+y)-2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


H02-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler method)
        ;
        ; H(n+1) = 2(xH(n)-nH(n-1))
        ; H(0)  = 1
        ; H(1)  = 2x
        ;
        ; = 2(xH(1)-H(0))
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1((x+x)*(x+x)-2)
  Ty=fn2((y+y)*(y+y)-2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


H02-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler Method)
        ;
        ; H(n+1) = 2(xH(n)-nH(n-1))
        ; H(0)  = 1
        ; H(1)  = 2x
        ;
        ; = 2(xH(1)-H(0))
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1((x+x)*(x+x)-2))
  x=x-t*(fn2((y+y)*(y+y)-2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


H02-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler Method)
        ;
        ; H(n+1) = 2(xH(n)-nH(n-1))
        ; H(0)  = 1
        ; H(1)  = 2x
        ;
        ; = 2(xH(1)-H(0))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=x+x
  y=y+t*(fn1(ax*ax-2))
  ay=y+y
  x=x-t*(fn2(ay*ay-2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


H02-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Kathy Roth:
        ; Dynamic (modified implicit Euler Method, gravitated)
        ;
        ; Hermite polynomials
        ; H[0] = 1
        ; H[1] = 2z
        ; H[n+1] = 2(zH[n]-nH[n-1])
        ;
        ; = 2(xH(1)-H(0))
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  ax=x+x
  Tx=(fn1(ax*ax-2))
  ay=y+y
  Ty=(fn1(ay*ay-2))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


H02-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Kathy Roth:
        ; Dynamic (modified implicit Euler Method, popped)
        ;
        ; Hermite polynomials
        ; H[0] = 1
        ; H[1] = 2z
        ; H[n+1] = 2(zH[n]-nH[n-1])
        ;
        ; = 2(xH(1)-H(0))
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  ax=x+x
  Tx=(fn1(ax*ax-2))
  ay=y+y
  Ty=(fn1(ay*ay-2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


H02-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Kathy Roth:
        ; Dynamic (modified implicit Euler Method, popped)
        ;
        ; Hermite polynomials
        ; H[0] = 1
        ; H[1] = 2z
        ; H[n+1] = 2(zH[n]-nH[n-1])
        ;
        ; = 2(xH(1)-H(0))
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  ax=x+x
  Tx=(fn1(ax*ax-2))
  ay=y+y
  Ty=(fn1(ay*ay-2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


H02-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler method, Sylvie Gallet test)
        ;
        ; Hermite polynomials
        ; H[0] = 1
        ; H[1] = 2z
        ; H[n+1] = 2(zH[n]-nH[n-1])
        ;
        ; = 2(xH(1)-H(0))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=x+x
  Tx=(fn1(ax*ax-2))
  ay=y+y
  Ty=(fn1(ay*ay-2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


H02-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Ray Parracho:
        ; Regula-Falsi Method
        ;
        ; Hermite polynomials
        ; H[0] = 1
        ; H[1] = 2z
        ; H[n+1] = 2(zH[n]-nH[n-1])
        ;
        ; = 2(x0H(1)-H(0))
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=(x0+x0)*x0-1
  Fx0=Fx0+Fx0
  Fx1=(x1+x1)*x1-1
  Fx1=Fx1+Fx1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


H03-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=4*x*((x+x)*x-3)
  Ty=4*y*((y+y)*y-3)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


H03-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(2)-2H(1))
  bailout=p1+4, z=pixel:
  z=4*z*(2*z*z-3)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


H03-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  const=p1, z=pixel:
  z=4*z*(zz+zz-3)+const
  |z|<100
  ;SOURCE: chby3.frm
}


H03-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  const=pixel, z=p1:
  z=4*z*(zz+zz-3)+const
  |z|<100
  ;SOURCE: chby4.frm
}


H03-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=2*z*z
  f=4*z*(a-3)
  fd=12*(a-1)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


H03-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=(z+z)*z
  f=4*z*(a-3)
  fd=12*(a-1)
  fdd=48*z
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


H03-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(2)-2H(1))
  bailout=real(p2)/10000, z=pixel:
  a=(z+z)*z
  f=4*z*(a-3)
  fd=12*(a-1)
  oz=z
  w=z-f/fd
  fw=4*w*((w+w)*w-3)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


H03-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(4*x*((x+x)*x-3))
  Ty=sin(4*y*((y+y)*y-3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


H03-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(4*x*((x+x)*x-3))
  Ty=fn1(4*y*((y+y)*y-3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


H03-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=4*p1*((p1+p1)*p1-3):
  zt=z
  foz=fz
  fz=4*z*((z+z)*z-3)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


H03-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  const=p1, z=pixel:
  z=4*z*(zz+zz-3)*const
  |z|<100
  ;SOURCE: chby11.frm
}


H03-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  const=pixel, z=p1:
  z=4*z*(zz+zz-3)*const
  |z|<100
  ;SOURCE: chby12.frm
}


H03-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=2*z*z
  f=4*z*(a-3)
  fd=12*(a-1)
  fdd=48*z
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


H03-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(2)-2H(1))
  bailout=real(p2)/10000, z=pixel:
  a=(z+z)*z
  f=4*z*(a-3)
  fd=12*(a-1)
  oz=z
  w=z-f/fd
  fw=4*w*((w+w)*w-3)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


H03-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=2*z*z
  f=4*z*(a-3)
  fd=12*(a-1)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


H03-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=4*p1*((p1+p1)*p1-3):
  zt=z
  foz=fz
  fz=4*z*((z+z)*z-3)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


H03-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  fz=4*z*((z+z)*z-3)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


H03-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  fz=4*z*((z+z)*z-3)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


H03-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(4*x*((x+x)*x-3))
  x=x-t*(4*y*((y+y)*y-3))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


H03-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(4*x*((x+x)*x-3))
  x=x-t*sin(4*y*((y+y)*y-3))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


H03-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(4*x*((x+x)*x-3)))
  x=x-t*(fn1(4*y*((y+y)*y-3)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


H03-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(4*x*((x+x)*x-3))
  Ty=fn2(4*y*((y+y)*y-3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


H03-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(4*x*((x+x)*x-3))
  Ty=fn2(4*y*((y+y)*y-3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


H03-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(4*x*((x+x)*x-3)))
  x=x-t*(fn2(4*y*((y+y)*y-3)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


H03-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(4*x*((x+x)*x-3)))
  x=x-t*(fn2(4*y*((y+y)*y-3)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


H03-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(4*x*((x+x)*x-3)))
  Ty=(fn1(4*y*((y+y)*y-3)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


H03-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(4*x*((x+x)*x-3)))
  Ty=(fn1(4*y*((y+y)*y-3)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


H03-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(4*x*((x+x)*x-3)))
  Ty=(fn1(4*y*((y+y)*y-3)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


H03-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1(4*x*((x+x)*x-3)))
  Ty=(fn1(4*y*((y+y)*y-3)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


H03-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(x0H(2)-2H(1))
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=4*x0*((x0+x0)*x0-3)
  Fx1=4*x1*((x1+x1)*x1-3)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


H04-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=4*(4*xx*(xx-3)+3)
  Ty=4*(4*yy*(yy-3)+3)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


H04-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(3)-3H(2))
  bailout=p1+4, z=pixel:
  zz=z*z
  z=4*(4*zz*(zz-3)+3)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


H04-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  const=p1, z=pixel:
  zz=z*z
  z=16*zz*(zz-3)+12+const
  |z|<100
  ;SOURCE: chby3.frm
}


H04-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  const=pixel, z=p1:
  zz=z*z
  z=16*zz*(zz-3)+12+const
  |z|<100
  ;SOURCE: chby4.frm
}


H04-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=4*(4*zz*(zz-3)+3)
  fd=32*z*(2*zz-3)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


H04-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  f=4*(4*zz*(zz-3)+3)
  fd=32*z*(a-3)
  fdd=96*(a-1)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


H04-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(3)-3H(2))
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=4*(4*zz*(zz-3)+3)
  fd=32*z*(zz+zz-3)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=4*(4*ww*(ww-3)+3)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


H04-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(4*(4*xx*(xx-3)+3))
  Ty=sin(4*(4*yy*(yy-3)+3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


H04-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(4*(4*xx*(xx-3)+3))
  Ty=fn1(4*(4*yy*(yy-3)+3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


H04-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=4*(4*zz*(zz-3)+3):
  zt=z
  foz=fz
  zz=z*z
  fz=4*(4*zz*(zz-3)+3)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


H04-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  const=p1, z=pixel:
  zz=z*z
  z=(16*zz*(zz-3)+12)*const
  |z|<100
  ;SOURCE: chby11.frm
}


H04-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  const=pixel, z=p1:
  zz=z*z
  z=(16*zz*(zz-3)+12)*const
  |z|<100
  ;SOURCE: chby12.frm
}


H04-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  f=4*(4*zz*(zz-3)+3)
  fd=32*z*(a-3)
  fdd=96*(a-1)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


H04-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(3)-3H(2))
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=4*(4*zz*(zz-3)+3)
  fd=32*z*(zz+zz-3)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=4*(4*ww*(ww-3)+3)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


H04-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=4*(4*zz*(zz-3)+3)
  fd=32*z*(2*zz-3)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


H04-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=4*(4*zz*(zz-3)+3):
  zt=z
  foz=fz
  zz=z*z
  fz=4*(4*zz*(zz-3)+3)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


H04-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  z=pixel, oz=0
  fz=12
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=4*(4*zz*(zz-3)+3)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


H04-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  z=pixel, oz=0
  fz=12
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=4*(4*zz*(zz-3)+3)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


H04-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(4*(4*xx*(xx-3)+3))
  yy=y*y
  x=x-t*(4*(4*yy*(yy-3)+3))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


H04-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(4*(4*xx*(xx-3)+3))
  yy=y*y
  x=x-t*sin(4*(4*yy*(yy-3)+3))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


H04-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(4*(4*xx*(xx-3)+3)))
  yy=y*y
  x=x-t*(fn1(4*(4*yy*(yy-3)+3)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


H04-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(4*(4*xx*(xx-3)+3))
  Ty=fn2(4*(4*yy*(yy-3)+3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


H04-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(4*(4*xx*(xx-3)+3))
  Ty=fn2(4*(4*yy*(yy-3)+3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


H04-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(4*(4*xx*(xx-3)+3)))
  yy=y*y
  x=x-t*(fn2(4*(4*yy*(yy-3)+3)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


H04-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(4*(4*xx*(xx-3)+3)))
  yy=y*y
  x=x-t*(fn2(4*(4*yy*(yy-3)+3)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


H04-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(4*(4*xx*(xx-3)+3)))
  yy=y*y
  Ty=(fn1(4*(4*yy*(yy-3)+3)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


H04-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(4*(4*xx*(xx-3)+3)))
  yy=y*y
  Ty=(fn1(4*(4*yy*(yy-3)+3)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


H04-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(4*(4*xx*(xx-3)+3)))
  yy=y*y
  Ty=(fn1(4*(4*yy*(yy-3)+3)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


H04-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(4*(4*xx*(xx-3)+3)))
  yy=y*y
  Ty=(fn1(4*(4*yy*(yy-3)+3)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


H04-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(x0H(3)-3H(2))
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=4*(4*xx*(xx-3)+3)
  Fx1=4*(4*yy*(yy-3)+3)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


H05-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=8*x*(4*xx*(xx-5)-9)
  Ty=8*y*(4*yy*(yy-5)-9)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


H05-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(4)-4H(3))
  bailout=p1+4, z=pixel:
  zz=z*z
  z=8*z*(4*zz*(zz-5)-9)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


H05-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  const=p1, z=pixel:
  zz=z*z
  z=8*z*(4*zz*(zz-5)-9)+const
  |z|<100
  ;SOURCE: chby3.frm
}


H05-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  const=pixel, z=p1:
  zz=z*z
  z=8*z*(4*zz*(zz-5)-9)+const
  |z|<100
  ;SOURCE: chby4.frm
}


H05-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=8*z*(4*zz*(zz-5)-9)
  fd=8*(20*zz*(zz-3)-9)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


H05-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=8*z*(4*zz*(zz-5)-9)
  fd=8*(20*zz*(zz-3)-9)
  fdd=320*z*(zz+zz-3)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


H05-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(4)-4H(3))
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=8*z*(4*zz*(zz-5)-9)
  fd=8*(20*zz*(zz-3)-9)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=8*w*(4*ww*(ww-5)-9)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


H05-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(8*x*(4*xx*(xx-5)-9))
  Ty=sin(8*y*(4*yy*(yy-5)-9))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


H05-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(8*x*(4*xx*(xx-5)-9))
  Ty=fn1(8*y*(4*yy*(yy-5)-9))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


H05-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=8*p1*(4*zz*(zz-5)-9):
  zt=z
  foz=fz
  zz=z*z
  fz=8*z*(4*zz*(zz-5)-9)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


H05-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  const=p1, z=pixel:
  zz=z*z
  z=8*z*(4*zz*(zz-5)-9)*const
  |z|<100
  ;SOURCE: chby11.frm
}


H05-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  const=pixel, z=p1:
  zz=z*z
  z=8*z*(4*zz*(zz-5)-9)*const
  |z|<100
  ;SOURCE: chby12.frm
}


H05-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=8*z*(4*zz*(zz-5)-9)
  fd=8*(20*zz*(zz-3)-9)
  fdd=320*z*(2*zz-3)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


H05-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(4)-4H(3))
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=8*z*(4*zz*(zz-5)-9)
  fd=8*(20*zz*(zz-3)-9)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=8*w*(4*ww*(ww-5)-9)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


H05-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=8*z*(4*zz*(zz-5)-9)
  fd=8*(20*zz*(zz-3)-9)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


H05-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=8*p1*(4*zz*(zz-5)-9):
  zt=z
  foz=fz
  zz=z*z
  fz=8*z*(4*zz*(zz-5)-9)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


H05-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=8*z*(4*zz*(zz-5)-9)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


H05-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=8*z*(4*zz*(zz-5)-9)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


H05-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(8*x*(4*xx*(xx-5)-9))
  yy=y*y
  x=x-t*(8*y*(4*yy*(yy-5)-9))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


H05-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(8*x*(4*xx*(xx-5)-9))
  yy=y*y
  x=x-t*sin(8*y*(4*yy*(yy-5)-9))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


H05-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(8*x*(4*xx*(xx-5)-9)))
  yy=y*y
  x=x-t*(fn1(8*y*(4*yy*(yy-5)-9)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


H05-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(8*x*(4*xx*(xx-5)-9))
  Ty=fn2(8*y*(4*yy*(yy-5)-9))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


H05-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(8*x*(4*xx*(xx-5)-9))
  Ty=fn2(8*y*(4*yy*(yy-5)-9))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


H05-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(8*x*(4*xx*(xx-5)-9)))
  yy=y*y
  x=x-t*(fn2(8*y*(4*yy*(yy-5)-9)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


H05-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(8*x*(4*xx*(xx-5)-9)))
  yy=y*y
  x=x-t*(fn2(8*y*(4*yy*(yy-5)-9)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


H05-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(8*x*(4*xx*(xx-5)-9)))
  yy=y*y
  Ty=(fn1(8*y*(4*yy*(yy-5)-9)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


H05-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(8*x*(4*xx*(xx-5)-9)))
  yy=y*y
  Ty=(fn1(8*y*(4*yy*(yy-5)-9)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


H05-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(8*x*(4*xx*(xx-5)-9)))
  yy=y*y
  Ty=(fn1(8*y*(4*yy*(yy-5)-9)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


H05-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(8*x*(4*xx*(xx-5)-9)))
  yy=y*y
  Ty=(fn1(8*y*(4*yy*(yy-5)-9)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


H05-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(x0H(4)-4H(3))
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=8*x0*(4*xx*(xx-5)-9)
  Fx1=8*x1*(4*yy*(yy-5)-9)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


H06-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=(x+x)*x, ay=(y+y)*y
  Tx=8*(ax*(ax*(ax-15)+21)-15)
  Ty=8*(ay*(ay*(ay-15)+21)-15)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


H06-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(5)-5H(4))
  bailout=p1+4, z=pixel:
  a=2*z*z
  z=8*(a*(a*(a-15)+21)-15)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


H06-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  const=p1, z=pixel:
  zz=z*z
  a=zz+zz
  z=16*zz*(a*(a-15)+21)-120+const
  |z|<100
  ;SOURCE: chby3.frm
}


H06-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  const=pixel, z=p1:
  zz=z*z
  a=zz+zz
  z=16*zz*(a*(a-15)+21)-120+const
  |z|<100
  ;SOURCE: chby4.frm
}


H06-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  f=8*(a*(a*(a-15)+21)-15)
  fd=96*z*(4*zz*(zz-5)+7)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


H06-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  f=8*(a*(a*(a-15)+21)-15)
  fd=96*z*(4*zz*(zz-5)+7)
  fdd=96*(20*zz*(zz-3)+7)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


H06-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(5)-5H(4))
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  f=8*(a*(a*(a-15)+21)-15)
  fd=96*z*(4*zz*(zz-5)+7)
  oz=z
  w=z-f/fd
  a=(w+w)*w
  fw=8*(a*(a*(a-15)+21)-15)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


H06-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=(x+x)*x, ay=(y+y)*y
  Tx=sin(8*(ax*(ax*(ax-15)+21)-15))
  Ty=sin(8*(ay*(ay*(ay-15)+21)-15))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


H06-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=(x+x)*x, ay=(y+y)*y
  Tx=fn1(8*(ax*(ax*(ax-15)+21)-15))
  Ty=fn1(8*(ay*(ay*(ay-15)+21)-15))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


H06-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=(p1+p1)*p1
  fz=8*(a*(a*(a-15)+21)-15):
  zt=z
  foz=fz
  a=(z+z)*z
  fz=8*(a*(a*(a-15)+21)-15)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


H06-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  const=p1, z=pixel:
  zz=z*z
  a=zz+zz
  z=(16*zz*(a*(a-15)+21)-120)*const
  |z|<100
  ;SOURCE: chby11.frm
}


H06-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  const=pixel, z=p1:
  zz=z*z
  a=zz+zz
  z=(16*zz*(a*(a-15)+21)-120)*const
  |z|<100
  ;SOURCE: chby12.frm
}


H06-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  f=8*(a*(a*(a-15)+21)-15)
  fd=96*z*(4*zz*(zz-5)+7)
  fdd=96*(20*zz*(zz-3)+7)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


H06-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(5)-5H(4))
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  f=8*(a*(a*(a-15)+21)-15)
  fd=96*z*(4*zz*(zz-5)+7)
  oz=z
  w=z-f/fd
  a=(w+w)*w
  fw=8*(a*(a*(a-15)+21)-15)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


H06-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  f=8*(a*(a*(a-15)+21)-15)
  fd=96*z*(4*zz*(zz-5)+7)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


H06-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=(p1+p1)*p1
  fz=8*(a*(a*(a-15)+21)-15):
  zt=z
  foz=fz
  a=(z+z)*z
  fz=8*(a*(a*(a-15)+21)-15)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


H06-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  z=pixel, oz=0
  fz=120
  zt=fn1(z)+p1:
  foz=fz
  a=(z+z)*z
  fz=8*(a*(a*(a-15)+21)-15)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


H06-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  z=pixel, oz=0
  fz=120
  zt=fn1(z)+p1:
  foz=fz
  a=(z+z)*z
  fz=8*(a*(a*(a-15)+21)-15)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


H06-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=(x+x)*x
  y=y+t*(8*(ax*(ax*(ax-15)+21)-15))
  ay=(y+y)*y
  x=x-t*(8*(ay*(ay*(ay-15)+21)-15))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


H06-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=(x+x)*x
  y=y+t*sin(8*(ax*(ax*(ax-15)+21)-15))
  ay=(y+y)*y
  x=x-t*sin(8*(ay*(ay*(ay-15)+21)-15))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


H06-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=(x+x)*x
  y=y+t*(fn1(8*(ax*(ax*(ax-15)+21)-15)))
  ay=(y+y)*y
  x=x-t*(fn1(8*(ay*(ay*(ay-15)+21)-15)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


H06-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=(x+x)*x, ay=(y+y)*y
  Tx=fn1(8*(ax*(ax*(ax-15)+21)-15))
  Ty=fn2(8*(ay*(ay*(ay-15)+21)-15))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


H06-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=(x+x)*x, ay=(y+y)*y
  Tx=fn1(8*(ax*(ax*(ax-15)+21)-15))
  Ty=fn2(8*(ay*(ay*(ay-15)+21)-15))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


H06-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=(x+x)*x
  y=y+t*(fn1(8*(ax*(ax*(ax-15)+21)-15)))
  ay=(y+y)*y
  x=x-t*(fn2(8*(ay*(ay*(ay-15)+21)-15)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


H06-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=(x+x)*x
  y=y+t*(fn1(8*(ax*(ax*(ax-15)+21)-15)))
  ay=(y+y)*y
  x=x-t*(fn2(8*(ay*(ay*(ay-15)+21)-15)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


H06-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  ax=(x+x)*x
  Tx=(fn1(8*(ax*(ax*(ax-15)+21)-15)))
  ay=(y+y)*y
  Ty=(fn1(8*(ay*(ay*(ay-15)+21)-15)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


H06-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  ax=(x+x)*x
  Tx=(fn1(8*(ax*(ax*(ax-15)+21)-15)))
  ay=(y+y)*y
  Ty=(fn1(8*(ay*(ay*(ay-15)+21)-15)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


H06-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  ax=(x+x)*x
  Tx=(fn1(8*(ax*(ax*(ax-15)+21)-15)))
  ay=(y+y)*y
  Ty=(fn1(8*(ay*(ay*(ay-15)+21)-15)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


H06-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=(x+x)*x
  Tx=(fn1(8*(ax*(ax*(ax-15)+21)-15)))
  ay=(y+y)*y
  Ty=(fn1(8*(ay*(ay*(ay-15)+21)-15)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


H06-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(x0H(5)-5H(4))
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax=(x0+x0)*x0, ax1=(x1+x1)*x1
  Fx0=8*(ax*(ax*(ax-15)+21)-15)
  Fx1=8*(ax1*(ax1*(ax1-15)+21)-15)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


H07-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=(x+x)*x, ay=(y+y)*y
  Tx=16*x*(ax*(ax*(ax-21)+81)+39)
  Ty=16*y*(ay*(ay*(ay-21)+81)+39)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


H07-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(6)-6H(5))
  bailout=p1+4, z=pixel:
  a=2*z*z
  z=16*z*(a*(a*(a-21)+81)+39)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


H07-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  const=p1, z=pixel:
  a=(z+z)*z
  z=16*z*(a*(a*(a-21)+81)+39)+const
  |z|<100
  ;SOURCE: chby3.frm
}


H07-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  const=pixel, z=p1:
  a=(z+z)*z
  z=16*z*(a*(a*(a-21)+81)+39)+const
  |z|<100
  ;SOURCE: chby4.frm
}


H07-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  f=16*z*(a*(a*(a-21)+81)+39)
  fd=16*(a*(14*zz*(a-15)+243)+39)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


H07-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  f=16*z*(a*(a*(a-21)+81)+39)
  fd=16*(a*(14*zz*(a-15)+243)+39)
  fdd=192*z*(28*zz*(zz-5)+81)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


H07-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(6)-6H(5))
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  f=16*z*(a*(a*(a-21)+81)+39)
  fd=16*(a*(14*zz*(a-15)+243)+39)
  oz=z
  w=z-f/fd
  a=(w+w)*w
  fw=16*w*(a*(a*(a-21)+81)+39)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


H07-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=(x+x)*x, ay=(y+y)*y
  Tx=sin(16*x*(ax*(ax*(ax-21)+81)+39))
  Ty=sin(16*y*(ay*(ay*(ay-21)+81)+39))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


H07-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=(x+x)*x, ay=(y+y)*y
  Tx=fn1(16*x*(ax*(ax*(ax-21)+81)+39))
  Ty=fn1(16*y*(ay*(ay*(ay-21)+81)+39))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


H07-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=(p1+p1)*p1
  fz=16*p1*(a*(a*(a-21)+81)+39):
  zt=z
  foz=fz
  a=(z+z)*z
  fz=16*z*(a*(a*(a-21)+81)+39)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


H07-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  const=p1, z=pixel:
  a=(z+z)*z
  z=16*z*(a*(a*(a-21)+81)+39)*const
  |z|<100
  ;SOURCE: chby11.frm
}


H07-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  const=pixel, z=p1:
  a=(z+z)*z
  z=16*z*(a*(a*(a-21)+81)+39)*const
  |z|<100
  ;SOURCE: chby12.frm
}


H07-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  f=16*z*(a*(a*(a-21)+81)+39)
  fd=16*(a*(14*zz*(a-15)+243)+39)
  fdd=192*z*(28*zz*(zz-5)+81)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


H07-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(6)-6H(5))
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  f=16*z*(a*(a*(a-21)+81)+39)
  fd=16*(a*(14*zz*(a-15)+243)+39)
  oz=z
  w=z-f/fd
  a=(w+w)*w
  fw=16*w*(a*(a*(a-21)+81)+39)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


H07-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  f=16*z*(a*(a*(a-21)+81)+39)
  fd=16*(a*(14*zz*(a-15)+243)+39)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


H07-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=(p1+p1)*p1
  fz=16*p1*(a*(a*(a-21)+81)+39):
  zt=z
  foz=fz
  a=(z+z)*z
  fz=16*z*(a*(a*(a-21)+81)+39)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


H07-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  a=(z+z)*z
  fz=16*z*(a*(a*(a-21)+81)+39)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


H07-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  a=(z+z)*z
  fz=16*z*(a*(a*(a-21)+81)+39)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


H07-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=(x+x)*x
  y=y+t*(16*x*(ax*(ax*(ax-21)+81)+39))
  ay=(y+y)*y
  x=x-t*(16*y*(ay*(ay*(ay-21)+81)+39))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


H07-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=(x+x)*x
  y=y+t*sin(16*x*(ax*(ax*(ax-21)+81)+39))
  ay=(y+y)*y
  x=x-t*sin(16*y*(ay*(ay*(ay-21)+81)+39))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


H07-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=(x+x)*x
  y=y+t*(fn1(16*x*(ax*(ax*(ax-21)+81)+39)))
  ay=(y+y)*y
  x=x-t*(fn1(16*y*(ay*(ay*(ay-21)+81)+39)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


H07-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=(x+x)*x, ay=(y+y)*y
  Tx=fn1(16*x*(ax*(ax*(ax-21)+81)+39))
  Ty=fn2(16*y*(ay*(ay*(ay-21)+81)+39))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


H07-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=(x+x)*x, ay=(y+y)*y
  Tx=fn1(16*x*(ax*(ax*(ax-21)+81)+39))
  Ty=fn2(16*y*(ay*(ay*(ay-21)+81)+39))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


H07-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=(x+x)*x
  y=y+t*(fn1(16*x*(ax*(ax*(ax-21)+81)+39)))
  ay=(y+y)*y
  x=x-t*(fn2(16*y*(ay*(ay*(ay-21)+81)+39)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


H07-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=(x+x)*x
  y=y+t*(fn1(16*x*(ax*(ax*(ax-21)+81)+39)))
  ay=(y+y)*y
  x=x-t*(fn2(16*y*(ay*(ay*(ay-21)+81)+39)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


H07-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  ax=(x+x)*x
  Tx=(fn1(16*x*(ax*(ax*(ax-21)+81)+39)))
  ay=(y+y)*y
  Ty=(fn1(16*y*(ay*(ay*(ay-21)+81)+39)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


H07-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  ax=(x+x)*x
  Tx=(fn1(16*x*(ax*(ax*(ax-21)+81)+39)))
  ay=(y+y)*y
  Ty=(fn1(16*y*(ay*(ay*(ay-21)+81)+39)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


H07-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  ax=(x+x)*x
  Tx=(fn1(16*x*(ax*(ax*(ax-21)+81)+39)))
  ay=(y+y)*y
  Ty=(fn1(16*y*(ay*(ay*(ay-21)+81)+39)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


H07-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=(x+x)*x
  Tx=(fn1(16*x*(ax*(ax*(ax-21)+81)+39)))
  ay=(y+y)*y
  Ty=(fn1(16*y*(ay*(ay*(ay-21)+81)+39)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


H07-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(x0H(6)-6H(5))
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax=(x0+x0)*x0, ax1=(x1+x1)*x1
  Fx0=16*x0*(ax*(ax*(ax-21)+81)+39)
  Fx1=16*x1*(ax1*(ax1*(ax1-21)+81)+39)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


H08-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=xx+xx, ay=yy+yy
  Tx=16*(4*xx*(ax*(ax*(xx-14)+93)-93)+105)
  Ty=16*(4*yy*(ay*(ay*(yy-14)+93)-93)+105)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


H08-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(7)-7H(6))
  bailout=p1+4, z=pixel:
  zz=z*z
  a=2*zz
  z=16*(4*zz*(a*(a*(zz-14)+93)-93)+105)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


H08-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  const=p1, z=pixel:
  zz=z*z
  a=zz+zz
  z=64*zz*(a*(a*(zz-14)+93)-93)+1680+const
  |z|<100
  ;SOURCE: chby3.frm
}


H08-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  const=pixel, z=p1:
  zz=z*z
  a=zz+zz
  z=64*zz*(a*(a*(zz-14)+93)-93)+1680+const
  |z|<100
  ;SOURCE: chby4.frm
}


H08-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  b=4*zz
  f=16*(b*(a*(a*(zz-14)+93)-93)+105)
  fd=328*z*(b*(a*(a-21)+93)-93)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


H08-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  f=16*(b*(a*(a*(zz-14)+93)-93)+105)
  fd=328*z*(b*(a*(a-21)+93)-93)
  fdd=328*(b*(14*zz*(a-15)+279)-93)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


H08-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(7)-7H(6))
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  f=16*(b*(a*(a*(zz-14)+93)-93)+105)
  fd=328*z*(b*(a*(a-21)+93)-93)
  oz=z
  w=z-f/fd
  ww=w*w
  a=ww+ww
  fw=16*(4*ww*(a*(a*(ww-14)+93)-93)+105)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


H08-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=xx+xx, ay=yy+yy
  Tx=sin(16*(4*xx*(ax*(ax*(xx-14)+93)-93)+105))
  Ty=sin(16*(4*yy*(ay*(ay*(yy-14)+93)-93)+105))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


H08-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=xx+xx, ay=yy+yy
  Tx=fn1(16*(4*xx*(ax*(ax*(xx-14)+93)-93)+105))
  Ty=fn1(16*(4*yy*(ay*(ay*(yy-14)+93)-93)+105))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


H08-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  a=zz+zz
  fz=16*(4*zz*(a*(a*(zz-14)+93)-93)+105):
  zt=z
  foz=fz
  zz=z*z
  a=zz+zz
  fz=16*(4*zz*(a*(a*(zz-14)+93)-93)+105)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


H08-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  const=p1, z=pixel:
  zz=z*z
  a=zz+zz
  z=(64*zz*(a*(a*(zz-14)+93)-93)+1680)*const
  |z|<100
  ;SOURCE: chby11.frm
}


H08-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  const=pixel, z=p1:
  zz=z*z
  a=zz+zz
  z=(64*zz*(a*(a*(zz-14)+93)-93)+1680)*const
  |z|<100
  ;SOURCE: chby12.frm
}


H08-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  b=4*zz
  f=16*(b*(a*(a*(zz-14)+93)-93)+105)
  fd=328*z*(b*(a*(a-21)+93)-93)
  fdd=328*(b*(14*zz*(a-15)+279)-93)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


H08-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(7)-7H(6))
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  f=16*(b*(a*(a*(zz-14)+93)-93)+105)
  fd=328*z*(b*(a*(a-21)+93)-93)
  oz=z
  w=z-f/fd
  ww=w*w
  a=ww+ww
  fw=16*(4*ww*(a*(a*(ww-14)+93)-93)+105)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


H08-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  b=4*zz
  f=16*(b*(a*(a*(zz-14)+93)-93)+105)
  fd=328*z*(b*(a*(a-21)+93)-93)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


H08-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  a=zz+zz
  fz=16*(4*zz*(a*(a*(zz-14)+93)-93)+105):
  zt=z
  foz=fz
  zz=z*z
  a=zz+zz
  fz=16*(4*zz*(a*(a*(zz-14)+93)-93)+105)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


H08-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  z=pixel, oz=0
  fz=1680
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  a=zz+zz
  fz=16*(4*zz*(a*(a*(zz-14)+93)-93)+105)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


H08-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  z=pixel, oz=0
  fz=1680
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  a=zz+zz
  fz=16*(4*zz*(a*(a*(zz-14)+93)-93)+105)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


H08-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  y=y+t*(16*(4*xx*(ax*(ax*(xx-14)+93)-93)+105))
  yy=y*y, ay=yy+yy
  x=x-t*(16*(4*yy*(ay*(ay*(yy-14)+93)-93)+105))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


H08-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  y=y+t*sin(16*(4*xx*(ax*(ax*(xx-14)+93)-93)+105))
  yy=y*y, ay=yy+yy
  x=x-t*sin(16*(4*yy*(ay*(ay*(yy-14)+93)-93)+105))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


H08-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  y=y+t*(fn1(16*(4*xx*(ax*(ax*(xx-14)+93)-93)+105)))
  yy=y*y, ay=yy+yy
  x=x-t*(fn1(16*(4*yy*(ay*(ay*(yy-14)+93)-93)+105)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


H08-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=xx+xx, ay=yy+yy
  Tx=fn1(16*(4*xx*(ax*(ax*(xx-14)+93)-93)+105))
  Ty=fn2(16*(4*yy*(ay*(ay*(yy-14)+93)-93)+105))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


H08-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=xx+xx, ay=yy+yy
  Tx=fn1(16*(4*xx*(ax*(ax*(xx-14)+93)-93)+105))
  Ty=fn2(16*(4*yy*(ay*(ay*(yy-14)+93)-93)+105))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


H08-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  y=y+t*(fn1(16*(4*xx*(ax*(ax*(xx-14)+93)-93)+105)))
  yy=y*y, ay=yy+yy
  x=x-t*(fn2(16*(4*yy*(ay*(ay*(yy-14)+93)-93)+105)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


H08-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  y=y+t*(fn1(16*(4*xx*(ax*(ax*(xx-14)+93)-93)+105)))
  yy=y*y, ay=yy+yy
  x=x-t*(fn2(16*(4*yy*(ay*(ay*(yy-14)+93)-93)+105)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


H08-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  Tx=(fn1(16*(4*xx*(ax*(ax*(xx-14)+93)-93)+105)))
  yy=y*y, ay=yy+yy
  Ty=(fn1(16*(4*yy*(ay*(ay*(yy-14)+93)-93)+105)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


H08-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x, ax=xx+xx
  Tx=(fn1(16*(4*xx*(ax*(ax*(xx-14)+93)-93)+105)))
  yy=y*y, ay=yy+yy
  Ty=(fn1(16*(4*yy*(ay*(ay*(yy-14)+93)-93)+105)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


H08-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x, ax=xx+xx
  Tx=(fn1(16*(4*xx*(ax*(ax*(xx-14)+93)-93)+105)))
  yy=y*y, ay=yy+yy
  Ty=(fn1(16*(4*yy*(ay*(ay*(yy-14)+93)-93)+105)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


H08-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  Tx=(fn1(16*(4*xx*(ax*(ax*(xx-14)+93)-93)+105)))
  yy=y*y, ay=yy+yy
  Ty=(fn1(16*(4*yy*(ay*(ay*(yy-14)+93)-93)+105)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


H08-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(x0H(7)-7H(6))
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  ax=xx+xx, ax1=yy+yy
  Fx0=16*(4*xx*(ax*(ax*(xx-14)+93)-93)+105)
  Fx1=16*(4*yy*(ax1*(ax1*(yy-14)+93)-93)+105)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


H09-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=xx+xx, ay=yy+yy
  Tx=32*x*(4*xx*(ax*(ax*(xx-18)+177)-417)-207)
  Ty=32*y*(4*yy*(ay*(ay*(yy-18)+177)-417)-207)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


H09-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(8)-8H(7))
  bailout=p1+4, z=pixel:
  zz=z*z
  a=2*zz
  z=32*z*(4*zz*(a*(a*(zz-18)+177)-417)-207)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


H09-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  const=p1, z=pixel:
  zz=z*z
  a=zz+zz
  z=32*z*(4*zz*(a*(a*(zz-18)+177)-417)-207)+const
  |z|<100
  ;SOURCE: chby3.frm
}


H09-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  const=pixel, z=p1:
  zz=z*z
  a=zz+zz
  z=32*z*(4*zz*(a*(a*(zz-18)+177)-417)-207)+const
  |z|<100
  ;SOURCE: chby4.frm
}


H09-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  b=4*zz
  f=32*z*(b*(a*(a*(zz-18)+177)-417)-207)
  fd=96*(b*(a*(6*zz*(zz-14)+295)-417)-69)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


H09-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  c=b+a
  f=32*z*(b*(a*(a*(zz-18)+177)-417)-207)
  fd=96*(b*(a*(c*(zz-14)+295)-417)-69)
  fdd=768*z*(5*zz*(c*(a-21)+295)-417)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


H09-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(8)-8H(7))
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  f=32*z*(b*(a*(a*(zz-18)+177)-417)-207)
  fd=96*(b*(a*(6*zz*(zz-14)+295)-417)-69)
  oz=z
  w=z-f/fd
  ww=w*w
  a=ww+ww
  fw=32*w*(4*ww*(a*(a*(ww-18)+177)-417)-207)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


H09-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=xx+xx, ay=yy+yy
  Tx=sin(32*x*(4*xx*(ax*(ax*(xx-18)+177)-417)-207))
  Ty=sin(32*y*(4*yy*(ay*(ay*(yy-18)+177)-417)-207))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


H09-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=xx+xx, ay=yy+yy
  Tx=fn1(32*x*(4*xx*(ax*(ax*(xx-18)+177)-417)-207))
  Ty=fn1(32*y*(4*yy*(ay*(ay*(yy-18)+177)-417)-207))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


H09-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  a=zz+zz
  fz=32*p1*(4*zz*(a*(a*(zz-18)+177)-417)-207):
  zt=z
  foz=fz
  zz=z*z
  a=zz+zz
  fz=32*z*(4*zz*(a*(a*(zz-18)+177)-417)-207)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


H09-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  const=p1, z=pixel:
  zz=z*z
  a=zz+zz
  z=32*z*(4*zz*(a*(a*(zz-18)+177)-417)-207)*const
  |z|<100
  ;SOURCE: chby11.frm
}


H09-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  const=pixel, z=p1:
  zz=z*z
  a=zz+zz
  z=32*z*(4*zz*(a*(a*(zz-18)+177)-417)-207)*const
  |z|<100
  ;SOURCE: chby12.frm
}


H09-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  b=4*zz
  c=6*zz
  f=32*z*(b*(a*(a*(zz-18)+177)-417)-207)
  fd=96*(b*(a*(c*(zz-14)+295)-417)-69)
  fdd=768*z*(5*zz*(c*(a-21)+295)-417)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


H09-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(8)-8H(7))
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  f=32*z*(b*(a*(a*(zz-18)+177)-417)-207)
  fd=96*(b*(a*(6*zz*(zz-14)+295)-417)-69)
  oz=z
  w=z-f/fd
  ww=w*w
  a=ww+ww
  fw=32*w*(4*ww*(a*(a*(ww-18)+177)-417)-207)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


H09-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  b=4*zz
  f=32*z*(b*(a*(a*(zz-18)+177)-417)-207)
  fd=96*(b*(a*(6*zz*(zz-14)+295)-417)-69)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


H09-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  a=zz+zz
  fz=32*p1*(4*zz*(a*(a*(zz-18)+177)-417)-207):
  zt=z
  foz=fz
  zz=z*z
  a=zz+zz
  fz=32*z*(4*zz*(a*(a*(zz-18)+177)-417)-207)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


H09-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  a=zz+zz
  fz=32*z*(4*zz*(a*(a*(zz-18)+177)-417)-207)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


H09-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  a=zz+zz
  fz=32*z*(4*zz*(a*(a*(zz-18)+177)-417)-207)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


H09-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  y=y+t*(32*x*(4*xx*(ax*(ax*(xx-18)+177)-417)-207))
  yy=y*y, ay=yy+yy
  x=x-t*(32*y*(4*yy*(ay*(ay*(yy-18)+177)-417)-207))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


H09-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  y=y+t*sin(32*x*(4*xx*(ax*(ax*(xx-18)+177)-417)-207))
  yy=y*y, ay=yy+yy
  x=x-t*sin(32*y*(4*yy*(ay*(ay*(yy-18)+177)-417)-207))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


H09-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  y=y+t*(fn1(32*x*(4*xx*(ax*(ax*(xx-18)+177)-417)-207)))
  yy=y*y, ay=yy+yy
  x=x-t*(fn1(32*y*(4*yy*(ay*(ay*(yy-18)+177)-417)-207)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


H09-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=xx+xx, ay=yy+yy
  Tx=fn1(32*x*(4*xx*(ax*(ax*(xx-18)+177)-417)-207))
  Ty=fn2(32*y*(4*yy*(ay*(ay*(yy-18)+177)-417)-207))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


H09-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=xx+xx, ay=yy+yy
  Tx=fn1(32*x*(4*xx*(ax*(ax*(xx-18)+177)-417)-207))
  Ty=fn2(32*y*(4*yy*(ay*(ay*(yy-18)+177)-417)-207))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


H09-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  y=y+t*(fn1(32*x*(4*xx*(ax*(ax*(xx-18)+177)-417)-207)))
  yy=y*y, ay=yy+yy
  x=x-t*(fn2(32*y*(4*yy*(ay*(ay*(yy-18)+177)-417)-207)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


H09-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  y=y+t*(fn1(32*x*(4*xx*(ax*(ax*(xx-18)+177)-417)-207)))
  yy=y*y, ay=yy+yy
  x=x-t*(fn2(32*y*(4*yy*(ay*(ay*(yy-18)+177)-417)-207)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


H09-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  Tx=(fn1(32*x*(4*xx*(ax*(ax*(xx-18)+177)-417)-207)))
  yy=y*y, ay=yy+yy
  Ty=(fn1(32*y*(4*yy*(ay*(ay*(yy-18)+177)-417)-207)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


H09-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x, ax=xx+xx
  Tx=(fn1(32*x*(4*xx*(ax*(ax*(xx-18)+177)-417)-207)))
  yy=y*y, ay=yy+yy
  Ty=(fn1(32*y*(4*yy*(ay*(ay*(yy-18)+177)-417)-207)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


H09-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x, ax=xx+xx
  Tx=(fn1(32*x*(4*xx*(ax*(ax*(xx-18)+177)-417)-207)))
  yy=y*y, ay=yy+yy
  Ty=(fn1(32*y*(4*yy*(ay*(ay*(yy-18)+177)-417)-207)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


H09-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  Tx=(fn1(32*x*(4*xx*(ax*(ax*(xx-18)+177)-417)-207)))
  yy=y*y, ay=yy+yy
  Ty=(fn1(32*y*(4*yy*(ay*(ay*(yy-18)+177)-417)-207)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


H09-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(x0H(8)-8H(7))
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  ax=xx+xx, ax1=yy+yy
  Fx0=32*x0*(4*xx*(ax*(ax*(xx-18)+177)-417)-207)
  Fx1=32*x1*(4*yy*(ax1*(ax1*(yy-18)+177)-417)-207)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


H10-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=xx+xx, ay=yy+yy
  Tx=32*(ax*(4*xx*(ax*(xx*(ax-45)+303)-1254)+1467)-945)
  Ty=32*(ay*(4*yy*(ay*(yy*(ay-45)+303)-1254)+1467)-945)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


H10-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(9)-9H(8))
  bailout=p1+4, z=pixel:
  zz=z*z
  a=2*zz
  z=32*(a*(4*zz*(a*(zz*(a-45)+303)-1254)+1467)-945)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


H10-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  const=p1, z=pixel:
  zz=z*z
  a=zz+zz
  z=64*zz*(4*zz*(a*(zz*(a-45)+303)-1254)+1467)-30240+const
  |z|<100
  ;SOURCE: chby3.frm
}


H10-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  const=pixel, z=p1:
  zz=z*z
  a=zz+zz
  z=64*zz*(4*zz*(a*(zz*(a-45)+303)-1254)+1467)-30240+const
  |z|<100
  ;SOURCE: chby4.frm
}


H10-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  f=32*(a*(4*zz*(a*(zz*(a-45)+303)-1254)+1467)-945)
  fd=128*z*(8*zz*(zz*(10*zz*(zz-18)+909)-1254)+1467)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


H10-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=8*zz
  f=32*(a*(4*zz*(a*(zz*(a-45)+303)-1254)+1467)-945)
  fd=128*z*(b*(zz*(10*zz*(zz-18)+909)-1254)+1467)
  fdd=1152*(b*(5*zz*(a*(zz-14)+101)-418)+163)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


H10-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(9)-9H(8))
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  f=32*(a*(4*zz*(a*(zz*(a-45)+303)-1254)+1467)-945)
  fd=128*z*(8*zz*(zz*(10*zz*(zz-18)+909)-1254)+1467)
  oz=z
  w=z-f/fd
  ww=w*w
  a=ww+ww
  fw=32*(a*(4*ww*(a*(ww*(a-45)+303)-1254)+1467)-945)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


H10-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=xx+xx, ay=yy+yy
  Tx=sin(32*(ax*(4*xx*(ax*(xx*(ax-45)+303)-1254)+1467)-945))
  Ty=sin(32*(ay*(4*yy*(ay*(yy*(ay-45)+303)-1254)+1467)-945))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


H10-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=xx+xx, ay=yy+yy
  Tx=fn1(32*(ax*(4*xx*(ax*(xx*(ax-45)+303)-1254)+1467)-945))
  Ty=fn1(32*(ay*(4*yy*(ay*(yy*(ay-45)+303)-1254)+1467)-945))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


H10-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  a=zz+zz
  fz=32*(a*(4*zz*(a*(zz*(a-45)+303)-1254)+1467)-945):
  zt=z
  foz=fz
  zz=z*z
  a=zz+zz
  fz=32*(a*(4*zz*(a*(zz*(a-45)+303)-1254)+1467)-945)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


H10-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  const=p1, z=pixel:
  zz=z*z
  a=zz+zz
  z=(64*zz*(4*zz*(a*(zz*(a-45)+303)-1254)+1467)-30240)*const
  |z|<100
  ;SOURCE: chby11.frm
}


H10-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  const=pixel, z=p1:
  zz=z*z
  a=zz+zz
  z=(64*zz*(4*zz*(a*(zz*(a-45)+303)-1254)+1467)-30240)*const
  |z|<100
  ;SOURCE: chby12.frm
}


H10-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  b=8*zz
  f=32*(a*(4*zz*(a*(zz*(a-45)+303)-1254)+1467)-945)
  fd=128*z*(b*(zz*(10*zz*(zz-18)+909)-1254)+1467)
  fdd=1152*(b*(5*zz*(a*(zz-14)+101)-418)+163)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


H10-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(9)-9H(8))
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  f=32*(a*(4*zz*(a*(zz*(a-45)+303)-1254)+1467)-945)
  fd=128*z*(8*zz*(zz*(10*zz*(zz-18)+909)-1254)+1467)
  oz=z
  w=z-f/fd
  ww=w*w
  a=ww+ww
  fw=32*(a*(4*ww*(a*(ww*(a-45)+303)-1254)+1467)-945)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


H10-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  f=32*(a*(4*zz*(a*(zz*(a-45)+303)-1254)+1467)-945)
  fd=128*z*(8*zz*(zz*(10*zz*(zz-18)+909)-1254)+1467)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


H10-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  a=zz+zz
  fz=32*(a*(4*zz*(a*(zz*(a-45)+303)-1254)+1467)-945):
  zt=z
  foz=fz
  zz=z*z
  a=zz+zz
  fz=32*(a*(4*zz*(a*(zz*(a-45)+303)-1254)+1467)-945)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


H10-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  z=pixel, oz=0
  fz=30240
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  a=zz+zz
  fz=32*(a*(4*zz*(a*(zz*(a-45)+303)-1254)+1467)-945)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


H10-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  z=pixel, oz=0
  fz=30240
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  a=zz+zz
  fz=32*(a*(4*zz*(a*(zz*(a-45)+303)-1254)+1467)-945)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


H10-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  y=y+t*(32*(ax*(4*xx*(ax*(xx*(ax-45)+303)-1254)+1467)-945))
  yy=y*y, ay=yy+yy
  x=x-t*(32*(ay*(4*yy*(ay*(yy*(ay-45)+303)-1254)+1467)-945))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


H10-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  y=y+t*sin(32*(ax*(4*xx*(ax*(xx*(ax-45)+303)-1254)+1467)-945))
  yy=y*y, ay=yy+yy
  x=x-t*sin(32*(ay*(4*yy*(ay*(yy*(ay-45)+303)-1254)+1467)-945))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


H10-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  y=y+t*(fn1(32*(ax*(4*xx*(ax*(xx*(ax-45)+303)-1254)+1467)-945)))
  yy=y*y, ay=yy+yy
  x=x-t*(fn1(32*(ay*(4*yy*(ay*(yy*(ay-45)+303)-1254)+1467)-945)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


H10-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=xx+xx, ay=yy+yy
  Tx=fn1(32*(ax*(4*xx*(ax*(xx*(ax-45)+303)-1254)+1467)-945))
  Ty=fn2(32*(ay*(4*yy*(ay*(yy*(ay-45)+303)-1254)+1467)-945))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


H10-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=xx+xx, ay=yy+yy
  Tx=fn1(32*(ax*(4*xx*(ax*(xx*(ax-45)+303)-1254)+1467)-945))
  Ty=fn2(32*(ay*(4*yy*(ay*(yy*(ay-45)+303)-1254)+1467)-945))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


H10-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  y=y+t*(fn1(32*(ax*(4*xx*(ax*(xx*(ax-45)+303)-1254)+1467)-945)))
  yy=y*y, ay=yy+yy
  x=x-t*(fn2(32*(ay*(4*yy*(ay*(yy*(ay-45)+303)-1254)+1467)-945)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


H10-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  y=y+t*(fn1(32*(ax*(4*xx*(ax*(xx*(ax-45)+303)-1254)+1467)-945)))
  yy=y*y, ay=yy+yy
  x=x-t*(fn2(32*(ay*(4*yy*(ay*(yy*(ay-45)+303)-1254)+1467)-945)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


H10-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  Tx=(fn1(32*(ax*(4*xx*(ax*(xx*(ax-45)+303)-1254)+1467)-945)))
  yy=y*y, ay=yy+yy
  Ty=(fn1(32*(ay*(4*yy*(ay*(yy*(ay-45)+303)-1254)+1467)-945)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


H10-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x, ax=xx+xx
  Tx=(fn1(32*(ax*(4*xx*(ax*(xx*(ax-45)+303)-1254)+1467)-945)))
  yy=y*y, ay=yy+yy
  Ty=(fn1(32*(ay*(4*yy*(ay*(yy*(ay-45)+303)-1254)+1467)-945)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


H10-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x, ax=xx+xx
  Tx=(fn1(32*(ax*(4*xx*(ax*(xx*(ax-45)+303)-1254)+1467)-945)))
  yy=y*y, ay=yy+yy
  Ty=(fn1(32*(ay*(4*yy*(ay*(yy*(ay-45)+303)-1254)+1467)-945)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


H10-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  Tx=(fn1(32*(ax*(4*xx*(ax*(xx*(ax-45)+303)-1254)+1467)-945)))
  yy=y*y, ay=yy+yy
  Ty=(fn1(32*(ay*(4*yy*(ay*(yy*(ay-45)+303)-1254)+1467)-945)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


H10-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(x0H(9)-9H(8))
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  ax=xx+xx, ax1=yy+yy
  Fx0=32*(ax*(4*xx*(ax*(xx*(ax-45)+303)-1254)+1467)-945)
  Fx1=32*(ax1*(4*yy*(ax1*(yy*(ax1-45)+303)-1254)+1467)-945)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


h4 {
  z=pixel, t=1-fn1(1-z), n=1/fn2(z-1):
  z=fn3(t+z)*fn4(n+t)-z
  |z|>=4
  ;SOURCE: ad3.frm
}


Hall {
   ;These equations were derived from Symmetry in Chaos.
   ; (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = pixel:
  z = (-2.7 + 5 * z * conj(z) + 1.5 * real(z ^ 6)) * z + 1 * conj(z * z)
  |z| <= 4
  ;SOURCE: hallween.frm
}


Hall-100 {
   ; (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   z = pixel:
   z = (-2.7+5*z*conj(z) + 1.5 * real(z^6)) * z + 1 * conj(z*z)
  |z| <= 100
  ;SOURCE: hallween.frm
}


Hall-c {
   ; (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = pixel:
  z = (-2.7+5*z*conj(z)+1.5*real(z^6))*z+1*conj(z*z)+c
  |z| <= 4
  ;SOURCE: hallween.frm
}


Hall-c-100 {
   ; (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = pixel:
  z = (-2.7+5*z*conj(z)+1.5*real(z^6))*z+1*conj(z*z)
  |z| <= 100
  ;SOURCE: hallween.frm
}


Halley (xyaxis) {; Chris Green. Halley's formula applied to x^7-x=0.
   ; P1 real usually 1 to 1.5, P1 imag usually zero. Use floating point.
   ; Setting P1 to 1 creates the picture on page 277 of Pickover's book
  z=pixel:
  z5=z*z*z*z*z
  z6=z*z5
  z7=z*z6
  z=z-p1*((z7-z)/ ((7.0*z6-1)-(42.0*z5)*(z7-z)/(14.0*z6-2)))
  0.0001 <= |z7-z|
  ;SOURCE: fractint.frm
}


Halley4_Mset {; Copyright (c) Paul W. Carlson, 1998
    ; Parameters:
    ;   real(p1) = exponent of z (use integers, 4 thru 9)
    ;   imag(p1)   not used
    ;   p2       = relaxation factor (usually (1,0) )
    ;   real(p3) = 1,    z^p1 -   z - c   = 0  (default)
    ;            = 2,    z^p1 -   z - c^2 = 0
    ;            = 3,    z^p1 - c*z - c^2 = 0
    ;            = 4,    z^p1 - c*z - c^4 = 0
    ;   imag(p3)   not used
    ;
  c = pixel
  c2 = c * c
  z = 0
  p = real(p1)
  s = real(p3)
  IF (s == 2)
    a = 1
    b = c2
  ELSEIF (s == 3)
    (s == 2)
    a = c
    b = c2
  ELSEIF (s == 4)
    a = c
    b = c2 * c2
  ELSE
    a = 1
    b = c
  ENDIF
  pm1 = p - 1
  pm2 = pm1 - 1
  ppm1 = p * pm1
  :
  fnc = z^p - a * z - b
  der1 = p * z^pm1 - a
  der2 = ppm1 * z^pm2
  k = p2 * fnc / (der1 - der2 * fnc / (der1 + der1))
  z = z - k
  |k| > 0.00000001
  ;SOURCE: 98msg.frm
}


halley6 { ; Chris Green. Halley's for x(x^6-1)=0.  Mods by C. Ebbert.
   ; Same as built-in halley type with order = 6
   ; P1 = relaxation coefficient, usually 1 to 1.5 (default 1)
   ; P2 = epsilon (default .0001).
  m = (1 * (|real(p1)|<=0) + p1 ),      ; force 1 if p1=0
  d = (.0001 * (|real(p2)|<=0) + p2 )   ; force .0001 if p2=0
  z=pixel, sqrz=sqr(z):
  oldmod = lastsqr                      ; save old modulus
  z5=sqrz*sqrz*z, z6=z5*z, z7mz=(z6-1)*z
  z = z7mz / (z5*42*z7mz/(z6*14-2) - z6*7 + 1 ) * real(m) + z
  sqrz = sqr(z)                         ; lastsqr now contains |z|
  abs(lastsqr - oldmod ) >= d       ; bailout changed to match built-in
  ;SOURCE: builtn.frm
}


Halley7_3Way {; Copyright (c) Paul W. Carlson, 1998
    ; Alyways use float=y, outdide=summ
    ; real(p1) = escape circle radius squared
    ; imag(p1) = number of iterations to skip
    ; real(p2) = number of color ranges
    ; imag(p2) = number of colors in a range
    ; p3       = relaxation factor
  z = k = iter = range_num = bailout = 0
  w = pixel
  prev_modw2 = 1.0e20
  rad2 = real(p1)
  skip_iters = imag(p1)
  num_ranges = real(p2)
  colors_in_range = imag(p2)
  colors_in_range_1 = colors_in_range - 1
  :
  w5 = w^5, w6 = w * w5, w7 = w * w6
  w = w - p3 * (w7-w)/((7*w6-1)-(42*w5)*(w7-w)/(14*w6-2))
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
  bailout == 0 && |w| < 1.0e10
  ;SOURCE: 98msg.frm
}


Halley_n {; Halley applied to z^n-1, compare with builtin newtbasin.
          ; p1: n (may be complex).
          ; p3 real: orbit trap radius.
  n=p1, r=real(p3), z=pixel
  n2=2*n, n2pn=n*n+n, n2mn=n*n-n
  :
  zn=z^n
  zn1=zn-1
  z=z-n2*z*zn1/(n2pn*zn+n2mn)
  |zn1|>=r
  ;SOURCE: 98msg.frm
}


Halley_n_r {; Relaxed Halley applied to z^n-1, 
            ; compare with builtin newtbasin.
            ; p1: n (may be complex).
            ; p2: relaxation coefficient (may be complex).
            ; p3 real: orbit trap radius.
  h=p2, n=p1, r=real(p3), z=pixel
  hn2=2*h*n, n2pn=n*n+n, n2mn=n*n-n
  :
  zn=z^n
  zn1=zn-1
  z=z-hn2*z*zn1/(n2pn*zn+n2mn)
  |zn1|>=r
  ;SOURCE: 98msg.frm
}


Halley_test31 {; Peter Anders anders@physik.hu-berlin.de
  z=c=pixel, r=p2+1, g=p2+1:
  f1=z^r+c
  f2=r*z^(r-1)
  f3=r*(r-1)*z^(r-2)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z|>p1
  ;SOURCE: halley.frm
}


Halley_test32 {; Peter Anders anders@physik.hu-berlin.de
  z=c=pixel, r=p2+1, g=p2+1:
  f1=z^r+c
  f2=r*z^(r-1)
  f3=r*(r-1)*z^(r-2)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z|<p1 
  ;SOURCE: halley.frm
}


Halley_test41 {; Peter Anders anders@physik.hu-berlin.de
  z=c=pixel, r=p2+1, g=p2+1:
  d=z
  f1=z^r+c
  f2=r*z^(r-1)
  f3=r*(r-1)*z^(r-2)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-d|>p1
  ;SOURCE: halley.frm
}


Halley_test42 {; Peter Anders anders@physik.hu-berlin.de
  z=c=pixel, r=p2+1, g=p2+1:
  d=z
  f1=z^r+c
  f2=r*z^(r-1)
  f3=r*(r-1)*z^(r-2)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-d|<p1 
  ;SOURCE: halley.frm
}


HalleyJack (xyaxis) {
  z=pixel:
  s=fn1(z), c=fn2(z)
  z=z-p1*(s/(c-(s*s)/(c+c)))
  p2<=|s|
  ;SOURCE: orman2.frm
}


HalleyNova3J {; HalleyNova Julia sets for z^3-1
              ; p2: Julia parameter
              ; p3 real: orbit trap radius.
  c=p2, r=real(p3), z=pixel
  n2=6, n2pn=12, n2mn=6
  :
  oz=z
  zn=z*sqr(z)
  zn1=zn-1
  z=z-n2*z*zn1/(n2pn*zn+n2mn)+c
  |oz-z|>=r
  ;SOURCE: 98msg.frm
}


HalleyNova3M {; HalleyNova Mandelbrot set for z^3-1
              ; p3 real: orbit trap radius.
  c=pixel, r=real(p3), z=1
  n2=6, n2pn=12, n2mn=6
  :
  oz=z
  zn=z*sqr(z)
  zn1=zn-1
  z=z-n2*z*zn1/(n2pn*zn+n2mn)+c
  |oz-z|>=r
  ;SOURCE: 98msg.frm
}


HalleyNovanJ {; HalleyNova Julia sets for z^n-1
              ; p1: n (may be complex).
              ; p2: Julia parameter
              ; p3 real: orbit trap radius.
  n=p1, c=p2, r=real(p3), z=pixel
  n2=2*n, n2pn=n*n+n, n2mn=n*n-n
  :
  oz=z
  zn=z^n
  zn1=zn-1
  z=z-n2*z*zn1/(n2pn*zn+n2mn)+c
  |oz-z|>=r
  ;SOURCE: 98msg.frm
}


HalleyNovanM {; HalleyNova Mandelbrot set for z^n-1 (SLOW)
              ; p1: n (may be complex).
              ; p3 real: orbit trap radius.
  n=p1, c=pixel, r=real(p3), z=1
  n2=2*n, n2pn=n*n+n, n2mn=n*n-n, ns=n*n, ns1=ns-1
  :
  oz=z
  zn=z^n
  zn1=zn-1
  z=z-n2*z*zn1/(n2pn*zn+n2mn)+c
  |oz-z|>=r
  ;SOURCE: 98msg.frm
}


halleySin (XYAXIS) {; Chris Green. Halley's formula applied to sin(x)=0.
   ; Use floating point.
   ; P1 real = 0.1 will create the picture from page 281 of Pickover's book.
  z=pixel:
  s=sin(z), c=cos(z)
  z=z-p1*(s/(c-(s*s)/(c+c)))
  0.0001 <= |s|
  ;SOURCE: fractint.frm
}


HalSin[tan[z]] {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, g=p2+1:
  c=z
  f1=sin(tan(z)+p2)+p1
  f2=cos(tan(z)+p2)*(tan(z)*tan(z)+1)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.0001
  ;SOURCE: halley.frm
}


HalSin[z^a+b] {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, a=p1, b=p2, g=p2+1:
  c=z
  f1=sin(z^a+b)
  f2=a*z^(a-1)*cos(z^a+b)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


HalSin[z^a+b]Pix1 {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, a=pixel, b=p2, g=p2+1:
  c=z
  f1=sin(z^a+b)
  f2=a*z^(a-1)*cos(z^a+b)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


HalSin[z^a+b]Pix2 {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, a=p1, b=pixel, g=p2+1:
  c=z
  f1=sin(z^a+b)
  f2=a*z^(a-1)*cos(z^a+b)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


HalSin[z^a+b]Pix3 {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, a=pixel, b=pixel, g=p2+1:
  c=z
  f1=sin(z^a+b)
  f2=a*z^(a-1)*cos(z^a+b)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.000001
  ;SOURCE: halley.frm
}


HalSin[z^c+b]^a {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, a=real(p1), c=imag(p1), b=p2, g=p2+1:
  c=z
  f1=sin((z^c+b)^a)
  f2=c*z^(c-1)*a*(z^c+b)^(a-1)*cos((z^c+b)^a)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.0001
  ;SOURCE: halley.frm
}


HalSin[z^c+b]^aPx1 {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, a=pixel, c=imag(p1), b=p2, g=p2+1:
  c=z
  f1=sin((z^c+b)^a)
  f2=c*z^(c-1)*a*(z^c+b)^(a-1)*cos((z^c+b)^a)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.0001
  ;SOURCE: halley.frm
}


HalSin[z^c+b]^aPx2 {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, a=real(p1), c=pixel, b=p2, g=p2+1:
  c=z
  f1=sin((z^c+b)^a)
  f2=c*z^(c-1)*a*(z^c+b)^(a-1)*cos((z^c+b)^a)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.0001
  ;SOURCE: halley.frm
}


HalSin[z^c+b]^aPx3 {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, a=real(p1), c=imag(p1), b=pixel, g=p2+1:
  c=z
  f1=sin((z^c+b)^a)
  f2=c*z^(c-1)*a*(z^c+b)^(a-1)*cos((z^c+b)^a)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.0001
  ;SOURCE: halley.frm
}


HalSin[z^c+b]^aPx4 {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, a=pixel, c=pixel, b=pixel, g=p2+1:
  c=z
  f1=sin((z^c+b)^a)
  f2=c*z^(c-1)*a*(z^c+b)^(a-1)*cos((z^c+b)^a)
  z=z-g*f1/(f2-f3*f1/(2*f2))
  |z-c| >0.0001
  ;SOURCE: halley.frm
}


Happy_New_Year {; Formula uses whitesq to cast soft shadow
                ; Created with FracText 1.0 alpha 6 by
                ; Jan Maarten van der Valk
                ; 100256.3721@compuserve.com
                ; 'periodicity=0' and 'passes=1' recommended
                ; Added variable "newpixel". G. Martin, 6/27/99
  x=real(scrnpix)/real(scrnmax), y=(imag(scrnmax)-imag(scrnp\
  ix))/real(scrnmax), z=x+flip(y)
  chrH1 = x<0.1315||x>0.184||(y<0.62825&&y>0.59675)&&x>0.1&&\
  x<0.2155
  chra2 = abs(cabs(z+(-0.27369,-0.61556))-0.02494)<0.01575&&\
  x<0.27369||(abs(cabs(z+(-0.29119,-0.61556))-0.02494)<0.015\
  75&&x>0.29119)&&y>0.61556||((abs(cabs(z+(-0.27369,-0.56569\
  ))-0.02494)<0.01575&&x<0.27369)||(abs(cabs(z+(-0.29119,-0.\
  56569))-0.02494)<0.01575&&x>0.29119))||(x>0.27369&&x<0.291\
  19&&(y<0.5565||(y>0.62475&&y<0.65625)||(y>0.57488&&y<0.606\
  37)))||(x>0.30037&&x<0.33188&&y<0.61556)
  chrp3 = x>0.34938&&x<0.38088&&y<0.65625&&y>0.45937||(abs(c\
  abs(z+(-0.41369,-0.59062))-0.04988)<0.01575&&x>0.38088)
  chrp4 = x>0.49681&&x<0.52831&&y<0.65625&&y>0.45937||(abs(c\
  abs(z+(-0.56113,-0.59062))-0.04988)<0.01575&&x>0.52831)
  xy=2.5*x
  chry5 = y<xy-1.195&&y>xy-1.27982||(y>-xy+2.245&&y<-xy+2.32\
  982)&&y>xy-1.27982&&y<0.65625&&y>0.4375
  test1 = chrH1||chra2&&y>0.525||chrp3||chrp4||chry5&&y<0.7
  chrH6 = x<0.1465||x>0.199||(y<0.60325&&y>0.57175)&&x>0.115\
  &&x<0.2305
  chra7 = abs(cabs(z+(-0.28869,-0.59056))-0.02494)<0.01575&&\
  x<0.28869||(abs(cabs(z+(-0.30619,-0.59056))-0.02494)<0.015\
  75&&x>0.30619)&&y>0.59056||((abs(cabs(z+(-0.28869,-0.54069\
  ))-0.02494)<0.01575&&x<0.28869)||(abs(cabs(z+(-0.30619,-0.\
  54069))-0.02494)<0.01575&&x>0.30619))||(x>0.28869&&x<0.306\
  19&&(y<0.5315||(y>0.59975&&y<0.63125)||(y>0.54988&&y<0.581\
  38)))||(x>0.31538&&x<0.34688&&y<0.59056)
  chrp8 = x>0.36438&&x<0.39588&&y<0.63125&&y>0.43438||(abs(c\
  abs(z+(-0.42869,-0.56562))-0.04988)<0.01575&&x>0.39588)
  chrp9 = x>0.51181&&x<0.54331&&y<0.63125&&y>0.43438||(abs(c\
  abs(z+(-0.57613,-0.56562))-0.04988)<0.01575&&x>0.54331)
  chry10 = y<xy-1.2575&&y>xy-1.34232||(y>-xy+2.2575&&y<-xy+2\
  .34232)&&y>xy-1.34232&&y<0.63125&&y>0.4125
  test2 = chrH6||chra7&&y>0.5||chrp8||chrp9||chry10&&y<0.675
  xCN=2.5*x
  chrN11 = x>0.1&&x<0.1208||(x>0.152&&x<0.1744)||(y>-xCN+0.5\
  1&&y<-xCN+0.56601)
  chre12 = abs(cabs(z+(-0.23615,-0.17875))-0.03835)<0.0104&&\
  (x<0.23615||y>0.17528||y<0.15448)||(y>0.17528&&y<0.19608&&\
  x>0.1978&&x<0.2745)
  xw=4*x
  chrw13 = y<xw-1.15911&&y>xw-1.24487||(y>-xw+1.59244&&y<-xw\
  +1.6782)&&y<0.21667||(y>-xw+1.41911&&y<-xw+1.50487)||(y<xw\
  -1.33244&&y>xw-1.4182)&&y<0.2275
  xCY=2*x
  chrY15 = y<xCY-0.87485&&y>xCY-0.92136||(y>-xCY+1.23885&&y<\
  -xCY+1.28536)&&y>xCY-0.92136
  chre16 = abs(cabs(z+(-0.65243,-0.17875))-0.03835)<0.0104&&\
  (x<0.65243||y>0.17528||y<0.15448)||(y>0.17528&&y<0.19608&&\
  x>0.61408&&x<0.69078)
  chra17 = abs(cabs(z+(-0.74376,-0.19792))-0.01918)<0.0104&&\
  x<0.74376||(abs(cabs(z+(-0.75676,-0.19792))-0.01918)<0.010\
  4&&x>0.75676)&&y>0.19792||((abs(cabs(z+(-0.74376,-0.15958)\
  )-0.01918)<0.0104&&x<0.74376)||(abs(cabs(z+(-0.75676,-0.15\
  958))-0.01918)<0.0104&&x>0.75676))||(x>0.74376&&x<0.75676&\
  &(y<0.1508||(y>0.2067&&y<0.2275)||(y>0.16835&&y<0.18915)))\
  ||(x>0.76553&&x<0.78633&&y<0.19792)
  chrr18 = x>0.79933&&x<0.82013&&y<0.2275||(abs(cabs(z+(-0.8\
  35,-0.19183))-0.02527)<0.0104&&y>0.19183)
  chrXM19 = x>0.88367&&x<0.90447&&(y<0.1508||y>0.1612)
  test3 = chrN11||chre12||chrw13||chrY15||chre16||chra17||ch\
  rr18||chrXM19&&y>0.13&&y<0.26
  chrN20 = x>0.115&&x<0.1358||(x>0.167&&x<0.1894)||(y>-xCN+0\
  .5325&&y<-xCN+0.58851)
  chre21 = abs(cabs(z+(-0.25115,-0.16375))-0.03835)<0.0104&&\
  (x<0.25115||y>0.16028||y<0.13948)||(y>0.16028&&y<0.18108&&\
  x>0.2128&&x<0.2895)
  chrw22 = y<xw-1.23411&&y>xw-1.31987||(y>-xw+1.63744&&y<-xw\
  +1.7232)&&y<0.20167||(y>-xw+1.46411&&y<-xw+1.54987)||(y<xw\
  -1.40744&&y>xw-1.4932)&&y<0.2125
  chrY24 = y<xCY-0.91985&&y>xCY-0.96636||(y>-xCY+1.25385&&y<\
  -xCY+1.30036)&&y>xCY-0.96636
  chre25 = abs(cabs(z+(-0.66743,-0.16375))-0.03835)<0.0104&&\
  (x<0.66743||y>0.16028||y<0.13948)||(y>0.16028&&y<0.18108&&\
  x>0.62908&&x<0.70578)
  chra26 = abs(cabs(z+(-0.75876,-0.18292))-0.01918)<0.0104&&\
  x<0.75876||(abs(cabs(z+(-0.77176,-0.18292))-0.01918)<0.010\
  4&&x>0.77176)&&y>0.18292||((abs(cabs(z+(-0.75876,-0.14458)\
  )-0.01918)<0.0104&&x<0.75876)||(abs(cabs(z+(-0.77176,-0.14\
  458))-0.01918)<0.0104&&x>0.77176))||(x>0.75876&&x<0.77176&\
  &(y<0.1358||(y>0.1917&&y<0.2125)||(y>0.15335&&y<0.17415)))\
  ||(x>0.78053&&x<0.80133&&y<0.18292)
  chrr27 = x>0.81433&&x<0.83513&&y<0.2125||(abs(cabs(z+(-0.8\
  5,-0.17683))-0.02527)<0.0104&&y>0.17683)
  chrXM28 = x>0.89867&&x<0.91947&&(y<0.1358||y>0.1462)
  test4 = chrN20||chre21||chrw22||chrY24||chre25||chra26||ch\
  rr27||chrXM28&&y>0.115&&y<0.245
  xc=1*x
  chrCR29 = abs(cabs(z+(-0.62125,-0.01125))-0.00531)<0.00094\
  ||(abs(cabs(z+(-0.62125,-0.01125))-0.00219)<0.00094&&(x<0.\
  62125||y>xc-0.61||y<-xc+0.6325))
  x1=1.5*x
  chr130 = y<x1-0.92885&&y>x1-0.93223&&y>-x/1.5+0.43208||(x>\
  0.63128&&x<0.63316)
  chr931 = abs(cabs(z+(-0.63738,-0.00859))-0.00266)<0.00094&\
  &y<0.00859||abs(cabs(z+(-0.63738,-0.01391))-0.00266)<0.000\
  94||(x>0.63909&&x<0.64097&&y>0.00859&&y<0.01391)
  chr932 = abs(cabs(z+(-0.64519,-0.00859))-0.00266)<0.00094&\
  &y<0.00859||abs(cabs(z+(-0.64519,-0.01391))-0.00266)<0.000\
  94||(x>0.64691&&x<0.64878&&y>0.00859&&y<0.01391)
  chr633 = abs(cabs(z+(-0.653,-0.01391))-0.00266)<0.00094&&y\
  >0.01391||abs(cabs(z+(-0.653,-0.00859))-0.00266)<0.00094||\
  (x>0.64941&&x<0.65128&&y>0.00859&&y<0.01391)
  chrJ42 = abs(cabs(z+(-0.71081,-0.00859))-0.00266)<0.00094&\
  &y<=0.00812||(x>0.71253&&y>0.00812)&&x<0.71441
  xCM=2.5*x
  chrM43 = y>-xCM+1.80508&&y<-xCM+1.81013||(y<xCM-1.78675&&y\
  >xCM-1.79179)&&y>0.00917||(x>0.71503&&x<0.71691)||(x>0.721\
  84&&x<0.72372)
  xv=3*x
  chrv45 = y>-xv+2.20615&&y<-xv+2.21208||y<xv-2.19615&&y>xv-\
  2.20208&&y<0.01438
  xSL=4*x
  chrSL46 = y<xSL-2.95278&&y>xSL-2.96051
  chrd47 = x>0.75216&&x<0.75403||(abs(cabs(z+(-0.74981,-0.00\
  969))-0.00375)<0.00094&&x<0.75216)
  xCV=3.5*x
  chrV49 = y>-xCV+2.68068&&y<-xCV+2.6875||y<xCV-2.67068&&y>x\
  CV-2.6775
  chra50 = abs(cabs(z+(-0.77344,-0.01156))-0.00188)<0.00094&\
  &x<0.77344||(abs(cabs(z+(-0.77469,-0.01156))-0.00188)<0.00\
  094&&x>0.77469)&&y>0.01156||((abs(cabs(z+(-0.77344,-0.0078\
  1))-0.00188)<0.00094&&x<0.77344)||(abs(cabs(z+(-0.77469,-0\
  .00781))-0.00188)<0.00094&&x>0.77469))||(x>0.77344&&x<0.77\
  469&&(y<0.00688||(y>0.0125&&y<0.01438)||(y>0.00875&&y<0.01\
  062)))||(x>0.77563&&x<0.7775&&y<0.01156)
  chrl51 = x<0.78&&x>0.77813
  xk=1.25*x
  chrk52 = x<0.7825||(y<xk-0.96766&&y>xk-0.97066&&y<0.01438)\
  ||(y>-xk+0.98703&&y<-xk+0.99003&&y<xk-0.96766)&&x>0.78063
  test5 = chrCR29||chr130||chr931||chr932||chr633||chrJ42||c\
  hrM43||chrv45||chrSL46||chrd47||chrV49||chra50||chrl51||ch\
  rk52&&y>0.005&&y<0.0175
  xUA=2*x
  chrUA53 = y<xUA-0.405&&y<-xUA+1.355&&y>=0.395||(x>0.42&&x<\
  0.46&&y<0.395&&(x>0.42667&&x<0.43667||y>0.325))||(abs(cabs\
  (z+(-0.46,-0.325))-0.02)<0.00333&&y<=0.325&&x<0.46)&&y>0.0\
  75
  test6 = chrUA53&&y<0.475
  test=test1||test3
  test0=test2||test4||test5||test6
  test0=test0&&whitesq
  test0=(test0==0)
  test0=((test0||test)==0)
  f1=sin(.5*pixel)
  f2=1/(32*pixel)
  newpixel=(test==0)*f2+test*f1
  z=1+(0,-0.65)/fn3(newpixel+(0,0.75)):
  z2=z*z, z4=z2*z2, n=z4*z2-1, z=z-n/(6*z4*z)
  |n|>=.0001&&test0==0
  ;SOURCE: 96msg.frm
}


Harpo {; Mutation of 'Gopalsamy3'. Mutated by Bradley Beacham [74223,2745]
   ; Original formula by Ron Barnett [70153,1233]
   ; For 'Gopalsamy3' with Ron's suggested parameters,
   ; set FN1 & FN2 = IDENT and P1 & P2 = default
   ; p1 = Parameter (default 1.099,0), real(p2) = Bailout (default 4)
  z = pixel
   ; The next line sets c=default if p1=0, else c=p1
  c = ((1.099,0) * (|p1|<=0) + p1)
   ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2)):
  x = real(z), y = imag(z)
  x1 = fn1(3*x*y*y - x*x*x) + c
  y = fn2(y*y*y - 3*x*x*y)
  z = x1 + flip(y)
  |z| <= test
  ;SOURCE: dons.frm
}


HC_Julstar {; a modified Paul W. Carlson formula
            ; cobbled together by P. DiGiorgi - 10/98
  z = w = iter = range_num = bailout = 0
  pts = real(p2)     ; order of radial symmetry
  colors = imag(p2)  ; use (0)2x125 or (1)4x63 or (2)8x30
  pa = abs(real(p3)), pb = imag(p3)
  IF (colors == 1)
    num_r = 4, num_c = 63
  ELSEIF (colors == 2)
    num_r = 8, num_c = 30
  ELSE
    num_r = 2, num_c = 125
  ENDIF
  w = fn3(abs(log(pixel^pts)/pts))
  c = p1
  i = (0,1)
  k = 1.2 - pb
  :
  c = fn1(fn2(c))
  w = w * w, wr = real(w)
  w = w - wr + abs(wr) - c
  angle = atan(imag(w)/wr)
  ka = k * angle / pb
  rw = k * cos(angle) + pb * cos(ka)
  iw = k * sin(angle) + pb * sin(ka)
  ww = rw + i * iw
  IF (real(p3) >= 0)
    ww = fn4(ww)
  ELSE
    ww = fn4(1 - ww)/ww
  ENDIF
  dist = abs(|w|-|ww|)
  IF (dist < pa && iter > 1)
    bailout = 1
    index = num_c * dist / pa
    z = index + range_num * num_c + 1
  ENDIF
  iter = iter + 1
  range_num = range_num + 1
  IF (range_num == num_r)
    range_num = 0
  ENDIF
  z = z - iter
  bailout == 0 && |w| < 10000
  ;SOURCE: 98msg.frm
}


HC_Julstar_pdg {; a modified Paul W. Carlson formula
                ; cobbled together by P. DiGiorgi
                ; Added variable "newpixel". G. Martin, 6/28/99
  newpixel = pixel
  z = w = iter = range_num = bailout = 0
  pts = real(p2)   ; order of radial symmetry
  colors = abs(imag(p2))  ; use (0)2x125, (1)4x63, or (2)8x30
       ; use imag(p2) < 0 for tiled images
  pa = abs(real(p3)), pb = imag(p3)
  IF (colors == 1)
    num_r = 4, num_c = 63
  ELSEIF (colors == 2)
    num_r = 8, num_c = 30
  ELSE
    num_r = 2, num_c = 125
  ENDIF
  IF (imag(p2) < 0)
    xpix = asin(sin(1.13*real(pixel)))
    ypix = asin(sin(1.13*imag(pixel)))
    newpixel = xpix + flip(ypix)
  ENDIF
  IF (pts == 0)
    w = fn3(abs(pixel)*0.333)
  ELSE
    w = fn3(abs(log(newpixel^pts)/pts))
  ENDIF
  c = p1
  i = (0,1)
  k = 1.2 - pb
  :
  c = fn1(fn2(c))
  w = w * w, wr = real(w)
  w = w - wr + abs(wr) - c
  angle = atan(imag(w)/wr)
  ka = k * angle / pb
  rw = k * cos(angle) + pb * cos(ka)
  iw = k * sin(angle) + pb * sin(ka)
  ww = rw + i * iw
  IF (real(p3) >= 0)
    ww = fn4(ww)
  ELSE
    ww = fn4(1 - ww)/ww
  ENDIF
  dist = abs(|w|-|ww|)
  IF (dist < pa && iter > 1)
    bailout = 1
    index = num_c * dist / pa
    z = index + range_num * num_c + 1
  ENDIF
  iter = iter + 1
  range_num = range_num + 1
  IF (range_num == num_r)
    range_num = 0
  ENDIF
  z = z - iter
  bailout == 0 && |w| < 10000
  ;SOURCE: 98msg.frm
}


He02-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (Euler method)
         ;
         ; He(n+1) = xHe(n)-nHe(n-1)
         ; He(0)  = 1
         ; He(1)  = sqrt(2)x
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2), t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=s*x*x-1
  Ty=s*y*y-1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


He02-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; Chebyshev Types:
                  ; Inspired by Clifford A. Pickover:
                  ; Dynamic
                  ;
                  ; He(n+1) = xHe(n)-nHe(n-1)
                  ; He(0)  = 1
                  ; He(1)  = sqrt(2)x
                  ;
                  ; = xHe(1)-He(0)
  s=sqrt(2), bailout=p1+4, z=pixel:
  z=s*z*z-1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


He02-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Julia)
         ;
         ; He(n+1) = xHe(n)-nHe(n-1)
         ; He(0)  = 1
         ; He(1)  = sqrt(2)x
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2), const=p1-1, z=pixel:
  z=s*z*z+const
  |z|<100
  ;SOURCE: chby3.frm
}


He02-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Mandelbrot)
         ;
         ; He(n+1) = xHe(n)-nHe(n-1)
         ; He(0)  = 1
         ; He(1)  = sqrt(2)x
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2), const=pixel-1, z=p1:
  z=s*z*z+const
  |z|<100
  ;SOURCE: chby4.frm
}


He02-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Newton Method
         ;
         ; He(n+1) = xHe(n)-nHe(n-1)
         ; He(0)  = 1
         ; He(1)  = sqrt(2)x
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2)
  a=2*s
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=s*z*z-1
  fd=a*z
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


He02-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Halley Method
         ;
         ; He(n+1) = xHe(n)-nHe(n-1)
         ; He(0)  = 1
         ; He(1)  = sqrt(2)x
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2), a=s+s
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=s*z*z-1
  fd=a*z
  fdd=a
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


He02-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; Chebyshev Types:
                  ; Inspired by Bradley Beacham
                  ; Cubic Method
                  ;
                  ; He(n+1) = xHe(n)-nHe(n-1)
                  ; He(0)  = 1
                  ; He(1)  = sqrt(2)x
                  ;
                  ; = xHe(1)-He(0)
  s=sqrt(2), a=s+s
  bailout=real(p2)/10000, z=pixel:
  f=s*z*z-1
  fd=a*z
  oz=z
  w=z-f/fd
  fw=s*w*w-1
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


He02-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified Euler method)
         ;
         ; He(n+1) = xHe(n)-nHe(n-1)
         ; He(0)  = 1
         ; He(1)  = sqrt(2)x
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2), t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(s*x*x-1)
  Ty=sin(s*y*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


He02-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified Euler Method)
         ;
         ; He(n+1) = xHe(n)-nHe(n-1)
         ; He(0)  = 1
         ; He(1)  = sqrt(2)x
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2), t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(s*x*x-1)
  Ty=fn1(s*y*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


He02-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Mike Wareman:
         ; Secant Method
         ;
         ; He(n+1) = xHe(n)-nHe(n-1)
         ; He(0)  = 1
         ; He(1)  = sqrt(2)x
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2), bailout=real(p2)/10000, z=pixel, oz=p1
  fz=s*p1*p1-1:
  zt=z
  foz=fz
  fz=s*z*z-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


He02-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Julia)
         ;
         ; He(n+1) = xHe(n)-nHe(n-1)
         ; He(0)  = 1
         ; He(1)  = sqrt(2)x
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2), const=p1, z=pixel:
  z=(s*z*z-1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


He02-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Mandelbrot)
         ;
         ; He(n+1) = xHe(n)-nHe(n-1)
         ; He(0)  = 1
         ; He(1)  = sqrt(2)x
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2), const=pixel, z=p1:
  z=(s*z*z-1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


He02-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Halley Method with weird bailout test
         ;
         ; He(n+1) = xHe(n)-nHe(n-1)
         ; He(0)  = 1
         ; He(1)  = sqrt(2)x
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2), a=2*s
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=s*z*z-1
  fd=a*z
  fdd=a
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


He02-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; Chebyshev Types:
                  ; Inspired by Bradley Beacham
                  ; Cubic Method with weird bailout test
                  ;
                  ; He(n+1) = xHe(n)-nHe(n-1)
                  ; He(0)  = 1
                  ; He(1)  = sqrt(2)x
                  ;
                  ; = xHe(1)-He(0)
  s=sqrt(2), a=s+s
  bailout=real(p2)/10000, z=pixel:
  f=s*z*z-1
  fd=a*z
  oz=z
  w=z-f/fd
  fw=s*w*w-1
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


He02-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Newton Method with weird bailout test
         ;
         ; He(n+1) = xHe(n)-nHe(n-1)
         ; He(0)  = 1
         ; He(1)  = sqrt(2)x
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2)
  a=2*s
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=s*z*z-1
  fd=a*z
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


He02-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Mike Wareman:
         ; Secant Method with weird bailout test
         ;
         ; He(n+1) = xHe(n)-nHe(n-1)
         ; He(0)  = 1
         ; He(1)  = sqrt(2)x
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2), bailout=real(p2)/10000, z=pixel, oz=p1
  fz=s*p1*p1-1:
  zt=z
  foz=fz
  fz=s*z*z-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


He02-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Mike Wareman
         ; Secant Method with Girvan perturbations and weird bailout test
         ;
         ; He(n+1) = xHe(n)-nHe(n-1)
         ; He(0)  = 1
         ; He(1)  = sqrt(2)x
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2), z=pixel, oz=0
  fz=-1
  zt=fn1(z)+p1:
  foz=fz
  fz=s*z*z-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


He02-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Mike Wareman
         ; Secant Method with Girvan perturbations and weird bailout test
         ;
         ; He(n+1) = xHe(n)-nHe(n-1)
         ; He(0)  = 1
         ; He(1)  = sqrt(2)x
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2), z=pixel, oz=0
  fz=-1
  zt=fn1(z)+p1:
  foz=fz
  fz=s*z*z-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


He02-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (Implicit Euler method)
         ;
         ; He(n+1) = xHe(n)-nHe(n-1)
         ; He(0)  = 1
         ; He(1)  = sqrt(2)x
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2), t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(s*x*x-1)
  x=x-t*(s*y*y-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


He02-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler method)
         ;
         ; He(n+1) = xHe(n)-nHe(n-1)
         ; He(0)  = 1
         ; He(1)  = sqrt(2)x
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2), t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(s*x*x-1)
  x=x-t*sin(s*y*y-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


He02-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler method)
         ;
         ; He(n+1) = xHe(n)-nHe(n-1)
         ; He(0)  = 1
         ; He(1)  = sqrt(2)x
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2), t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(s*x*x-1))
  x=x-t*(fn1(s*y*y-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


He02-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified Euler method)
         ;
         ; He(n+1) = xHe(n)-nHe(n-1)
         ; He(0)  = 1
         ; He(1)  = sqrt(2)x
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2), t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(s*x*x-1)
  Ty=fn2(s*y*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


He02-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified Euler method)
         ;
         ; He(n+1) = xHe(n)-nHe(n-1)
         ; He(0)  = 1
         ; He(1)  = sqrt(2)x
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2), t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(s*x*x-1)
  Ty=fn2(s*y*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


He02-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler Method)
         ;
         ; He(n+1) = xHe(n)-nHe(n-1)
         ; He(0)  = 1
         ; He(1)  = sqrt(2)x
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2), t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(s*x*x-1))
  x=x-t*(fn2(s*y*y-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


He02-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler Method)
         ;
         ; He(n+1) = xHe(n)-nHe(n-1)
         ; He(0)  = 1
         ; He(1)  = sqrt(2)x
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2), t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(s*x*x-1))
  x=x-t*(fn2(s*y*y-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


He02-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Kathy Roth:
         ; Dynamic (modified implicit Euler Method, gravitated)
         ;
         ; Hermite polynomials
         ; He[0] = 1
         ; He[1] = sz
         ; He[n+1] = zHe[n]-nHe[n-1]
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2), t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(s*x*x-1))
  Ty=(fn1(s*y*y-1))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


He02-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Kathy Roth:
         ; Dynamic (modified implicit Euler Method, popped)
         ;
         ; Hermite polynomials
         ; He[0] = 1
         ; He[1] = sz
         ; He[n+1] = zHe[n]-nHe[n-1]
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2), t=p1, bailout=real(p2), z=pixel
  x=real(pixel), y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(s*x*x-1))
  Ty=(fn1(s*y*y-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


He02-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Kathy Roth:
         ; Dynamic (modified implicit Euler Method, popped)
         ;
         ; Hermite polynomials
         ; He[0] = 1
         ; He[1] = sz
         ; He[n+1] = zHe[n]-nHe[n-1]
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2), t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(s*x*x-1))
  Ty=(fn1(s*y*y-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


He02-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler method, Sylvie Gallet test)
         ;
         ; Hermite polynomials
         ; He[0] = 1
         ; He[1] = sz
         ; He[n+1] = zHe[n]-nHe[n-1]
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2), t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1(s*x*x-1))
  Ty=(fn1(s*y*y-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


He02-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Ray Parracho:
         ; Regula-Falsi Method
         ;
         ; Hermite polynomials
         ; He[0] = 1
         ; He[1] = sz
         ; He[n+1] = zHe[n]-nHe[n-1]
         ;
         ; = x0He(1)-He(0)
  s=sqrt(2), z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=s*x0*x0-1
  Fx1=s*x1*x1-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


He03-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2), t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(s*(x*x-2)-1)
  Ty=y*(s*(y*y-2)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


He03-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(2)-2He(1)
  s=sqrt(2), bailout=p1+4, z=pixel:
  z=z*(s*(z*z-2)-1)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


He03-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2), const=p1, z=pixel:
  z=z*(s*(z*z-2)-1)+const
  |z|<100
  ;SOURCE: chby3.frm
}


He03-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2), const=pixel, z=p1:
  z=z*(s*(z*z-2)-1)+const
  |z|<100
  ;SOURCE: chby4.frm
}


He03-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2)
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(s*(zz-2)-1)
  fd=s*(3*zz-3)-1
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


He03-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2), a=s+s
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(s*(zz-2)-1)
  fd=s*(3*zz-3)-1
  fdd=a*(3*z-1)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


He03-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(2)-2He(1)
  s=sqrt(2), a=s+s
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(s*(zz-2)-1)
  fd=s*(3*zz-3)-1
  oz=z
  w=z-f/fd
  fw=w*(s*(w*w-2)-1)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


He03-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2), t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(x*(s*(x*x-2)-1))
  Ty=sin(y*(s*(y*y-2)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


He03-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2), t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(s*(x*x-2)-1))
  Ty=fn1(y*(s*(y*y-2)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


He03-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2), bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(s*(p1*p1-2)-1):
  zt=z
  foz=fz
  fz=z*(s*(z*z-2)-1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


He03-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2), const=p1, z=pixel:
  z=z*(s*(z*z-2)-1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


He03-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2), const=pixel, z=p1:
  z=z*(s*(z*z-2)-1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


He03-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2), a=2*s
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(s*(zz-2)-1)
  fd=s*(3*zz-3)-1
  fdd=a*(3*z-1)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


He03-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(2)-2He(1)
  s=sqrt(2), a=s+s
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(s*(zz-2)-1)
  fd=s*(3*zz-3)-1
  oz=z
  w=z-f/fd
  fw=w*(s*(w*w-2)-1)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


He03-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2)
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(s*(zz-2)-1)
  fd=s*(3*zz-3)-1
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


He03-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2), bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(s*(p1*p1-2)-1):
  zt=z
  foz=fz
  fz=z*(s*(z*z-2)-1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


He03-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2), z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(s*(z*z-2)-1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


He03-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2), z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(s*(z*z-2)-1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


He03-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2), t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(x*(s*(x*x-2)-1))
  x=x-t*(y*(s*(y*y-2)-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


He03-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2), t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(x*(s*(x*x-2)-1))
  x=x-t*sin(y*(s*(y*y-2)-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


He03-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2), t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(s*(x*x-2)-1)))
  x=x-t*(fn1(y*(s*(y*y-2)-1)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


He03-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2), t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(s*(x*x-2)-1))
  Ty=fn2(y*(s*(y*y-2)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


He03-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2), t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(x*(s*(x*x-2)-1))
  Ty=fn2(y*(s*(y*y-2)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


He03-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2), t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(s*(x*x-2)-1)))
  x=x-t*(fn2(y*(s*(y*y-2)-1)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


He03-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2), t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(s*(x*x-2)-1)))
  x=x-t*(fn2(y*(s*(y*y-2)-1)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


He03-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2), t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(x*(s*(x*x-2)-1)))
  Ty=(fn1(y*(s*(y*y-2)-1)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


He03-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2), t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(s*(x*x-2)-1)))
  Ty=(fn1(y*(s*(y*y-2)-1)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


He03-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2), t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(s*(x*x-2)-1)))
  Ty=(fn1(y*(s*(y*y-2)-1)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


He03-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2), t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1(x*(s*(x*x-2)-1)))
  Ty=(fn1(y*(s*(y*y-2)-1)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


He03-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = x0He(2)-2He(1)
  s=sqrt(2), z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(s*(x0*x0-2)-1)
  Fx1=x1*(s*(x1*x1-2)-1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


He04-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2), t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=xx*(s*(xx-5)-1)+3
  Ty=yy*(s*(yy-5)-1)+3
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


He04-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(3)-3He(2)
  s=sqrt(2), bailout=p1+4, z=pixel:
  zz=z*z
  z=zz*(s*(zz-5)-1)+3
  |z|<=bailout
  ;SOURCE: chby2.frm
}


He04-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2), const=p1, z=pixel:
  zz=z*z
  z=zz*(s*(zz-5)-1)+3+const
  |z|<100
  ;SOURCE: chby3.frm
}


He04-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2), const=pixel, z=p1:
  zz=z*z
  z=zz*(s*(zz-5)-1)+3+const
  |z|<100
  ;SOURCE: chby4.frm
}


He04-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2)
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(s*(zz-5)-1)+3
  fd=2*z*(s*(2*zz-5)-1)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


He04-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2), a=s+s
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(s*(zz-5)-1)+3
  fd=(z+z)*(s*(zz+zz-5)-1)
  fdd=a*(6*zz-5)-20
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


He04-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(3)-3He(2)
  s=sqrt(2), bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(s*(zz-5)-1)+3
  fd=(z+z)*(s*(zz+zz-5)-1)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(s*(ww-5)-1)+3
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


He04-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2), t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(xx*(s*(xx-5)-1)+3)
  Ty=sin(yy*(s*(yy-5)-1)+3)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


He04-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2), t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(s*(xx-5)-1)+3)
  Ty=fn1(yy*(s*(yy-5)-1)+3)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


He04-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2), bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(s*(zz-5)-1)+3:
  zt=z
  foz=fz
  zz=z*z
  fz=zz*(s*(zz-5)-1)+3
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


He04-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2), const=p1, z=pixel:
  zz=z*z
  z=(zz*(s*(zz-5)-1)+3)*const
  |z|<100
  ;SOURCE: chby11.frm
}


He04-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2), const=pixel, z=p1:
  zz=z*z
  z=(zz*(s*(zz-5)-1)+3)*const
  |z|<100
  ;SOURCE: chby12.frm
}


He04-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2), r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(s*(zz-5)-1)+3
  fd=2*z*(s*(2*zz-5)-1)
  fdd=2*(s*(6*zz-5)-10)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


He04-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(3)-3He(2)
  s=sqrt(2), bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(s*(zz-5)-1)+3
  fd=(z+z)*(s*(zz+zz-5)-1)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(s*(ww-5)-1)+3
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


He04-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2)
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(s*(zz-5)-1)+3
  fd=2*z*(s*(2*zz-5)-1)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


He04-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2), bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(s*(zz-5)-1)+3:
  zt=z
  foz=fz
  zz=z*z
  fz=zz*(s*(zz-5)-1)+3
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


He04-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2), z=pixel, oz=0
  fz=3
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=zz*(s*(zz-5)-1)+3
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


He04-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2), z=pixel, oz=0
  fz=3
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=zz*(s*(zz-5)-1)+3
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


He04-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2), t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(xx*(s*(xx-5)-1)+3)
  yy=y*y
  x=x-t*(yy*(s*(yy-5)-1)+3)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


He04-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2), t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(xx*(s*(xx-5)-1)+3)
  yy=y*y
  x=x-t*sin(yy*(s*(yy-5)-1)+3)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


He04-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2), t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(s*(xx-5)-1)+3))
  yy=y*y
  x=x-t*(fn1(yy*(s*(yy-5)-1)+3))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


He04-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2), t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(s*(xx-5)-1)+3)
  Ty=fn2(yy*(s*(yy-5)-1)+3)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


He04-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2), t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(s*(xx-5)-1)+3)
  Ty=fn2(yy*(s*(yy-5)-1)+3)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


He04-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2), t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(s*(xx-5)-1)+3))
  yy=y*y
  x=x-t*(fn2(yy*(s*(yy-5)-1)+3))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


He04-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2), t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(s*(xx-5)-1)+3))
  yy=y*y
  x=x-t*(fn2(yy*(s*(yy-5)-1)+3))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


He04-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2), t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(xx*(s*(xx-5)-1)+3))
  yy=y*y
  Ty=(fn1(yy*(s*(yy-5)-1)+3))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


He04-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2), t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(xx*(s*(xx-5)-1)+3))
  yy=y*y
  Ty=(fn1(yy*(s*(yy-5)-1)+3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


He04-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2), t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(xx*(s*(xx-5)-1)+3))
  yy=y*y
  Ty=(fn1(yy*(s*(yy-5)-1)+3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


He04-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2), t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(xx*(s*(xx-5)-1)+3))
  yy=y*y
  Ty=(fn1(yy*(s*(yy-5)-1)+3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


He04-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = x0He(3)-3He(2)
  s=sqrt(2), z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=xx*(s*(xx-5)-1)+3
  Fx1=yy*(s*(yy-5)-1)+3
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


He05-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=x*(xx*(s*(xx-9)-1)+a)
  Ty=y*(yy*(s*(yy-9)-1)+a)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


He05-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  bailout=p1+4, z=pixel:
  zz=z*z
  z=z*(zz*(s*(zz-9)-1)+a)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


He05-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  const=p1, z=pixel:
  zz=z*z
  z=z*(zz*(s*(zz-9)-1)+a)+const
  |z|<100
  ;SOURCE: chby3.frm
}


He05-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  const=pixel, z=p1:
  zz=z*z
  z=z*(zz*(s*(zz-9)-1)+a)+const
  |z|<100
  ;SOURCE: chby4.frm
}


He05-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2)
  a=8*s+7
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(s*(zz-9)-1)+a)
  fd=zz*(s*(5*zz-27)-3)+a
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


He05-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(s*(zz-9)-1)+a)
  fd=zz*(s*(5*zz-27)-3)+a
  fdd=(z+z)*(s*(10*zz-27)-3)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


He05-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(s*(zz-9)-1)+a)
  fd=zz*(s*(5*zz-27)-3)+a
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(ww*(s*(ww-9)-1)+a)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


He05-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(x*(xx*(s*(xx-9)-1)+a))
  Ty=sin(y*(yy*(s*(yy-9)-1)+a))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


He05-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(xx*(s*(xx-9)-1)+a))
  Ty=fn1(y*(yy*(s*(yy-9)-1)+a))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


He05-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(zz*(s*(zz-9)-1)+a):
  zt=z
  foz=fz
  zz=z*z
  fz=z*(zz*(s*(zz-9)-1)+a)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


He05-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  const=p1, z=pixel:
  zz=z*z
  z=z*(zz*(s*(zz-9)-1)+a)*const
  |z|<100
  ;SOURCE: chby11.frm
}


He05-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  const=pixel, z=p1:
  zz=z*z
  z=z*(zz*(s*(zz-9)-1)+a)*const
  |z|<100
  ;SOURCE: chby12.frm
}


He05-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(s*(zz-9)-1)+a)
  fd=zz*(s*(5*zz-27)-3)+a
  fdd=2*z*(s*(10*zz-27)-3)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


He05-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(s*(zz-9)-1)+a)
  fd=zz*(s*(5*zz-27)-3)+a
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(ww*(s*(ww-9)-1)+a)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


He05-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2)
  a=8*s+7
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(s*(zz-9)-1)+a)
  fd=zz*(s*(5*zz-27)-3)+a
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


He05-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(zz*(s*(zz-9)-1)+a):
  zt=z
  foz=fz
  zz=z*z
  fz=z*(zz*(s*(zz-9)-1)+a)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


He05-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=z*(zz*(s*(zz-9)-1)+a)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


He05-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=z*(zz*(s*(zz-9)-1)+a)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


He05-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(x*(xx*(s*(xx-9)-1)+a))
  yy=y*y
  x=x-t*(y*(yy*(s*(yy-9)-1)+a))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


He05-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(x*(xx*(s*(xx-9)-1)+a))
  yy=y*y
  x=x-t*sin(y*(yy*(s*(yy-9)-1)+a))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


He05-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(s*(xx-9)-1)+a)))
  yy=y*y
  x=x-t*(fn1(y*(yy*(s*(yy-9)-1)+a)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


He05-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(xx*(s*(xx-9)-1)+a))
  Ty=fn2(y*(yy*(s*(yy-9)-1)+a))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


He05-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(xx*(s*(xx-9)-1)+a))
  Ty=fn2(y*(yy*(s*(yy-9)-1)+a))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


He05-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(s*(xx-9)-1)+a)))
  yy=y*y
  x=x-t*(fn2(y*(yy*(s*(yy-9)-1)+a)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


He05-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(s*(xx-9)-1)+a)))
  yy=y*y
  x=x-t*(fn2(y*(yy*(s*(yy-9)-1)+a)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


He05-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(x*(xx*(s*(xx-9)-1)+a)))
  yy=y*y
  Ty=(fn1(y*(yy*(s*(yy-9)-1)+a)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


He05-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  t=p1, bailout=real(p2), z=pixel, x=real(pixel), y=imag(pixel)
  h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(x*(xx*(s*(xx-9)-1)+a)))
  yy=y*y
  Ty=(fn1(y*(yy*(s*(yy-9)-1)+a)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


He05-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(x*(xx*(s*(xx-9)-1)+a)))
  yy=y*y
  Ty=(fn1(y*(yy*(s*(yy-9)-1)+a)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


He05-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(x*(xx*(s*(xx-9)-1)+a)))
  yy=y*y
  Ty=(fn1(y*(yy*(s*(yy-9)-1)+a)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


He05-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = x0He(4)-4He(3)
  s=sqrt(2), a=8*s+7
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=x0*(xx*(s*(xx-9)-1)+a)
  Fx1=x1*(yy*(s*(yy-9)-1)+a)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


He06-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2), a=33*s+12
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=xx*(xx*(s*(xx-14)-1)+a)-15
  Ty=yy*(yy*(s*(yy-14)-1)+a)-15
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


He06-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(5)-5He(4)
  s=sqrt(2), a=33*s+12
  bailout=p1+4, z=pixel:
  zz=z*z
  z=zz*(zz*(s*(zz-14)-1)+a)-15
  |z|<=bailout
  ;SOURCE: chby2.frm
}


He06-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2), a=33*s+12
  const=p1, z=pixel:
  zz=z*z
  z=zz*(zz*(s*(zz-14)-1)+a)-15+const
  |z|<100
  ;SOURCE: chby3.frm
}


He06-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2), a=33*s+12
  const=pixel, z=p1:
  zz=z*z
  z=zz*(zz*(s*(zz-14)-1)+a)-15+const
  |z|<100
  ;SOURCE: chby4.frm
}


He06-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2)
  a=33*s+12
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(s*(zz-14)-1)+a)-15
  fd=2*z*(zz*(s*(3*zz-28)-2)+a)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


He06-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2), a1=33*s+12, a2=66*s+24
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(s*(zz-14)-1)+a1)-15
  fd=(z+z)*(zz*(s*(3*zz-28)-2)+a1)
  fdd=6*zz*(s*(5*zz-28)-2)+a2
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


He06-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(5)-5He(4)
  s=sqrt(2), a1=33*s+12
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(s*(zz-14)-1)+a)-15
  fd=(z+z)*(zz*(s*(3*zz-28)-2)+a)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww*(s*(ww-14)-1)+a)-15
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


He06-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2), a=33*s+12
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(xx*(xx*(s*(xx-14)-1)+a)-15)
  Ty=sin(yy*(yy*(s*(yy-14)-1)+a)-15)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


He06-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2), a=33*s+12
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx*(s*(xx-14)-1)+a)-15)
  Ty=fn1(yy*(yy*(s*(yy-14)-1)+a)-15)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


He06-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2), a=33*s+12
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz*(s*(zz-14)-1)+a)-15:
  zt=z
  foz=fz
  zz=z*z
  fz=zz*(zz*(s*(zz-14)-1)+a)-15
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


He06-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2), a=33*s+12
  const=p1, z=pixel:
  zz=z*z
  z=(zz*(zz*(s*(zz-14)-1)+a)-15)*const
  |z|<100
  ;SOURCE: chby11.frm
}


He06-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2), a=33*s+12
  const=pixel, z=p1:
  zz=z*z
  z=(zz*(zz*(s*(zz-14)-1)+a)-15)*const
  |z|<100
  ;SOURCE: chby12.frm
}


He06-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2), a1=33*s+12, a2=66*s+24
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(s*(zz-14)-1)+a1)-15
  fd=2*z*(zz*(s*(3*zz-28)-2)+a1)
  fdd=6*zz*(s*(5*zz-28)-2)+a2
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


He06-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(5)-5He(4)
  s=sqrt(2), a1=33*s+12
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(s*(zz-14)-1)+a)-15
  fd=(z+z)*(zz*(s*(3*zz-28)-2)+a)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww*(s*(ww-14)-1)+a)-15
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


He06-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2)
  a=33*s+12
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(s*(zz-14)-1)+a)-15
  fd=2*z*(zz*(s*(3*zz-28)-2)+a)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


He06-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2), a=33*s+12
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz*(s*(zz-14)-1)+a)-15:
  zt=z
  foz=fz
  zz=z*z
  fz=zz*(zz*(s*(zz-14)-1)+a)-15
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


He06-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2), a=33*s+12
  z=pixel, oz=0
  fz=-15
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=zz*(zz*(s*(zz-14)-1)+a)-15
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


He06-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2), a=33*s+12
  z=pixel, oz=0
  fz=-15
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=zz*(zz*(s*(zz-14)-1)+a)-15
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


He06-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2), a=33*s+12
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(xx*(xx*(s*(xx-14)-1)+a)-15)
  yy=y*y
  x=x-t*(yy*(yy*(s*(yy-14)-1)+a)-15)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


He06-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2), a=33*s+12
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(xx*(xx*(s*(xx-14)-1)+a)-15)
  yy=y*y
  x=x-t*sin(yy*(yy*(s*(yy-14)-1)+a)-15)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


He06-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2), a=33*s+12
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(s*(xx-14)-1)+a)-15))
  yy=y*y
  x=x-t*(fn1(yy*(yy*(s*(yy-14)-1)+a)-15))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


He06-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2), a=33*s+12
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx*(s*(xx-14)-1)+a)-15)
  Ty=fn2(yy*(yy*(s*(yy-14)-1)+a)-15)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


He06-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2), a=33*s+12
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx*(s*(xx-14)-1)+a)-15)
  Ty=fn2(yy*(yy*(s*(yy-14)-1)+a)-15)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


He06-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2), a=33*s+12
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(s*(xx-14)-1)+a)-15))
  yy=y*y
  x=x-t*(fn2(yy*(yy*(s*(yy-14)-1)+a)-15))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


He06-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2), a=33*s+12
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(s*(xx-14)-1)+a)-15))
  yy=y*y
  x=x-t*(fn2(yy*(yy*(s*(yy-14)-1)+a)-15))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


He06-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2), a=33*s+12
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(xx*(xx*(s*(xx-14)-1)+a)-15))
  yy=y*y
  Ty=(fn1(yy*(yy*(s*(yy-14)-1)+a)-15))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


He06-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2), a=33*s+12
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(xx*(xx*(s*(xx-14)-1)+a)-15))
  yy=y*y
  Ty=(fn1(yy*(yy*(s*(yy-14)-1)+a)-15))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


He06-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2), a=33*s+12
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(xx*(xx*(s*(xx-14)-1)+a)-15))
  yy=y*y
  Ty=(fn1(yy*(yy*(s*(yy-14)-1)+a)-15))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


He06-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2), a=33*s+12
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(xx*(xx*(s*(xx-14)-1)+a)-15))
  yy=y*y
  Ty=(fn1(yy*(yy*(s*(yy-14)-1)+a)-15))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


He06-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = x0He(5)-5He(4)
  s=sqrt(2), a=33*s+12
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=xx*(xx*(s*(xx-14)-1)+a)-15
  Fx1=yy*(yy*(s*(yy-14)-1)+a)-15
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


He07-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2), a=87*s+18, b=8*s-57
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=x*(xx*(xx*(s*(xx-20)-1)+a)+b)
  Ty=y*(yy*(yy*(s*(yy-20)-1)+a)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


He07-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(6)-6He(5)
  s=sqrt(2), a=87*s+18, b=8*s-57
  bailout=p1+4, z=pixel:
  zz=z*z
  z=z*(zz*(zz*(s*(zz-20)-1)+a)+b)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


He07-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2), a=87*s+18, b=8*s-57
  const=p1, z=pixel:
  zz=z*z
  z=z*(zz*(zz*(s*(zz-20)-1)+a)+b)+const
  |z|<100
  ;SOURCE: chby3.frm
}


He07-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2), a=87*s+18, b=8*s-57
  const=pixel, z=p1:
  zz=z*z
  z=z*(zz*(zz*(s*(zz-20)-1)+a)+b)+const
  |z|<100
  ;SOURCE: chby4.frm
}


He07-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2)
  a1=87*s+18
  b=8*s-57
  a2=261*s+54
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(s*(zz-20)-1)+a1)+b)
  fd=zz*(zz*(s*(7*zz-520)-5)+a2)+b
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


He07-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2), a1=87*s+18, b=8*s-57, a2=261*s+54
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(s*(zz-20)-1)+a1)+b)
  fd=zz*(zz*(s*(7*zz-520)-5)+a2)+b
  fdd=(z+z)*(zz*(s*(21*zz-1040)-10)+a2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


He07-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(6)-6He(5)
  s=sqrt(2), a1=87*s+18, b=8*s-57, a2=261*s+54
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(s*(zz-20)-1)+a1)+b)
  fd=zz*(zz*(s*(7*zz-520)-5)+a2)+b
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(ww*(ww*(s*(ww-20)-1)+a1)+b)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


He07-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2), a=87*s+18, b=8*s-57
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(x*(xx*(xx*(s*(xx-20)-1)+a)+b))
  Ty=sin(y*(yy*(yy*(s*(yy-20)-1)+a)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


He07-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2), a=87*s+18, b=8*s-57
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(xx*(xx*(s*(xx-20)-1)+a)+b))
  Ty=fn1(y*(yy*(yy*(s*(yy-20)-1)+a)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


He07-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2), a=87*s+18, b=8*s-57
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(zz*(zz*(s*(zz-20)-1)+a)+b):
  zt=z
  foz=fz
  zz=z*z
  fz=z*(zz*(zz*(s*(zz-20)-1)+a)+b)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


He07-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2), a=87*s+18, b=8*s-57
  const=p1, z=pixel:
  zz=z*z
  z=z*(zz*(zz*(s*(zz-20)-1)+a)+b)*const
  |z|<100
  ;SOURCE: chby11.frm
}


He07-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2), a=87*s+18, b=8*s-57
  const=pixel, z=p1:
  zz=z*z
  z=z*(zz*(zz*(s*(zz-20)-1)+a)+b)*const
  |z|<100
  ;SOURCE: chby12.frm
}


He07-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2), a1=87*s+18, b=8*s-57, a2=261*s+54
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(s*(zz-20)-1)+a1)+b)
  fd=zz*(zz*(s*(7*zz-520)-5)+a2)+b
  fdd=2*z*(zz*(s*(21*zz-1040)-10)+a2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


He07-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(6)-6He(5)
  s=sqrt(2), a1=87*s+18, b=8*s-57, a2=261*s+54
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(s*(zz-20)-1)+a1)+b)
  fd=zz*(zz*(s*(7*zz-520)-5)+a2)+b
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(ww*(ww*(s*(ww-20)-1)+a1)+b)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


He07-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2)
  a1=87*s+18
  b=8*s-57
  a2=261*s+54
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(s*(zz-20)-1)+a1)+b)
  fd=zz*(zz*(s*(7*zz-520)-5)+a2)+b
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


He07-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2), a=87*s+18, b=8*s-57
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(zz*(zz*(s*(zz-20)-1)+a)+b):
  zt=z
  foz=fz
  zz=z*z
  fz=z*(zz*(zz*(s*(zz-20)-1)+a)+b)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


He07-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2), a=87*s+18, b=8*s-57
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=z*(zz*(zz*(s*(zz-20)-1)+a)+b)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


He07-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2), a=87*s+18, b=8*s-57
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=z*(zz*(zz*(s*(zz-20)-1)+a)+b)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


He07-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2), a=87*s+18, b=8*s-57
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(x*(xx*(xx*(s*(xx-20)-1)+a)+b))
  yy=y*y
  x=x-t*(y*(yy*(yy*(s*(yy-20)-1)+a)+b))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


He07-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2), a=87*s+18, b=8*s-57
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(x*(xx*(xx*(s*(xx-20)-1)+a)+b))
  yy=y*y
  x=x-t*sin(y*(yy*(yy*(s*(yy-20)-1)+a)+b))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


He07-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2), a=87*s+18, b=8*s-57
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx*(s*(xx-20)-1)+a)+b)))
  yy=y*y
  x=x-t*(fn1(y*(yy*(yy*(s*(yy-20)-1)+a)+b)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


He07-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2), a=87*s+18, b=8*s-57
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(xx*(xx*(s*(xx-20)-1)+a)+b))
  Ty=fn2(y*(yy*(yy*(s*(yy-20)-1)+a)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


He07-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2), a=87*s+18, b=8*s-57
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(xx*(xx*(s*(xx-20)-1)+a)+b))
  Ty=fn2(y*(yy*(yy*(s*(yy-20)-1)+a)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


He07-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2), a=87*s+18, b=8*s-57
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx*(s*(xx-20)-1)+a)+b)))
  yy=y*y
  x=x-t*(fn2(y*(yy*(yy*(s*(yy-20)-1)+a)+b)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


He07-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2), a=87*s+18, b=8*s-57
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx*(s*(xx-20)-1)+a)+b)))
  yy=y*y
  x=x-t*(fn2(y*(yy*(yy*(s*(yy-20)-1)+a)+b)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


He07-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2), a=87*s+18, b=8*s-57
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(x*(xx*(xx*(s*(xx-20)-1)+a)+b)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy*(s*(yy-20)-1)+a)+b)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


He07-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2), a=87*s+18, b=8*s-57
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(x*(xx*(xx*(s*(xx-20)-1)+a)+b)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy*(s*(yy-20)-1)+a)+b)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


He07-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2), a=87*s+18, b=8*s-57
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(x*(xx*(xx*(s*(xx-20)-1)+a)+b)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy*(s*(yy-20)-1)+a)+b)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


He07-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2), a=87*s+18, b=8*s-57
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(x*(xx*(xx*(s*(xx-20)-1)+a)+b)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy*(s*(yy-20)-1)+a)+b)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


He07-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = x0He(6)-6He(5)
  s=sqrt(2), a=87*s+18, b=8*s-57
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=x0*(xx*(xx*(s*(xx-20)-1)+a)+b)
  Fx1=x1*(yy*(yy*(s*(yy-20)-1)+a)+b)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


He08-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2), a=185*s+25, b=41*s-141
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=xx*(xx*(xx*(s*(xx-27)-1)+a)+b)+105
  Ty=yy*(yy*(yy*(s*(yy-27)-1)+a)+b)+105
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


He08-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(7)-7He(6)
  s=sqrt(2), a=185*s+25, b=41*s-141
  bailout=p1+4, z=pixel:
  zz=z*z
  z=zz*(zz*(zz*(s*(zz-27)-1)+a)+b)+105
  |z|<=bailout
  ;SOURCE: chby2.frm
}


He08-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2), a=185*s+25, b=41*s-141
  const=p1, z=pixel:
  zz=z*z
  z=zz*(zz*(zz*(s*(zz-27)-1)+a)+b)+105+const
  |z|<100
  ;SOURCE: chby3.frm
}


He08-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2), a=185*s+25, b=41*s-141
  const=pixel, z=p1:
  zz=z*z
  z=zz*(zz*(zz*(s*(zz-27)-1)+a)+b)+105+const
  |z|<100
  ;SOURCE: chby4.frm
}


He08-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2)
  a1=185*s+25
  b=41*s-141
  a2=370*s+50
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(s*(zz-27)-1)+a1)+b)+105
  fd=2*z*(zz*(zz*(s*(4*zz-81)-3)+a2)+b)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


He08-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2), a1=185*s+25, b1=41*s-141, a2=370*s+50
  a3=3*a2, b2=b1+b1
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(s*(zz-27)-1)+a1)+b1)+105
  fd=(z+z)*(zz*(zz*(s*(4*zz-81)-3)+a2)+b1)
  fdd=(zz+zz)*(zz*(s*(28*zz-405)-15)+a3)+b2
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


He08-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(7)-7He(6)
  s=sqrt(2), a1=185*s+25, b=41*s-141, a2=370*s+50
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(s*(zz-27)-1)+a1)+b)+105
  fd=(z+z)*(zz*(zz*(s*(4*zz-81)-3)+a2)+b)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww*(ww*(s*(ww-27)-1)+a1)+b)+105
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


He08-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2), a=185*s+25, b=41*s-141
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(xx*(xx*(xx*(s*(xx-27)-1)+a)+b)+105)
  Ty=sin(yy*(yy*(yy*(s*(yy-27)-1)+a)+b)+105)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


He08-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2), a=185*s+25, b=41*s-141
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx*(xx*(s*(xx-27)-1)+a)+b)+105)
  Ty=fn1(yy*(yy*(yy*(s*(yy-27)-1)+a)+b)+105)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


He08-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2), a=185*s+25, b=41*s-141
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz*(zz*(s*(zz-27)-1)+a)+b)+105:
  zt=z
  foz=fz
  zz=z*z
  fz=zz*(zz*(zz*(s*(zz-27)-1)+a)+b)+105
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


He08-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2), a=185*s+25, b=41*s-141
  const=p1, z=pixel:
  zz=z*z
  z=(zz*(zz*(zz*(s*(zz-27)-1)+a)+b)+105)*const
  |z|<100
  ;SOURCE: chby11.frm
}


He08-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2), a=185*s+25, b=41*s-141
  const=pixel, z=p1:
  zz=z*z
  z=(zz*(zz*(zz*(s*(zz-27)-1)+a)+b)+105)*const
  |z|<100
  ;SOURCE: chby12.frm
}


He08-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2), a1=185*s+25, b1=41*s-141, a2=370*s+50
  a3=3*a2, b2=2*b1
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(s*(zz-27)-1)+a1)+b1)+105
  fd=2*z*(zz*(zz*(s*(4*zz-81)-3)+a2)+b1)
  fdd=2*zz*(zz*(s*(28*zz-405)-15)+a3)+b2
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


He08-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(7)-7He(6)
  s=sqrt(2), a1=185*s+25, b=41*s-141, a2=370*s+50
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(s*(zz-27)-1)+a1)+b)+105
  fd=(z+z)*(zz*(zz*(s*(4*zz-81)-3)+a2)+b)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww*(ww*(s*(ww-27)-1)+a1)+b)+105
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


He08-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2)
  a1=185*s+25
  b=41*s-141
  a2=370*s+50
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(s*(zz-27)-1)+a1)+b)+105
  fd=2*z*(zz*(zz*(s*(4*zz-81)-3)+a2)+b)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


He08-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2), a=185*s+25, b=41*s-141
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz*(zz*(s*(zz-27)-1)+a)+b)+105:
  zt=z
  foz=fz
  zz=z*z
  fz=zz*(zz*(zz*(s*(zz-27)-1)+a)+b)+105
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


He08-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2), a=185*s+25, b=41*s-141
  z=pixel, oz=0
  fz=105
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=zz*(zz*(zz*(s*(zz-27)-1)+a)+b)+105
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


He08-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2), a=185*s+25, b=41*s-141
  z=pixel, oz=0
  fz=105
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=zz*(zz*(zz*(s*(zz-27)-1)+a)+b)+105
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


He08-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2), a=185*s+25, b=41*s-141
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(xx*(xx*(xx*(s*(xx-27)-1)+a)+b)+105)
  yy=y*y
  x=x-t*(yy*(yy*(yy*(s*(yy-27)-1)+a)+b)+105)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


He08-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2), a=185*s+25, b=41*s-141
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(xx*(xx*(xx*(s*(xx-27)-1)+a)+b)+105)
  yy=y*y
  x=x-t*sin(yy*(yy*(yy*(s*(yy-27)-1)+a)+b)+105)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


He08-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2), a=185*s+25, b=41*s-141
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx*(s*(xx-27)-1)+a)+b)+105))
  yy=y*y
  x=x-t*(fn1(yy*(yy*(yy*(s*(yy-27)-1)+a)+b)+105))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


He08-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2), a=185*s+25, b=41*s-141
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx*(xx*(s*(xx-27)-1)+a)+b)+105)
  Ty=fn2(yy*(yy*(yy*(s*(yy-27)-1)+a)+b)+105)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


He08-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2), a=185*s+25, b=41*s-141
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx*(xx*(s*(xx-27)-1)+a)+b)+105)
  Ty=fn2(yy*(yy*(yy*(s*(yy-27)-1)+a)+b)+105)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


He08-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2), a=185*s+25, b=41*s-141
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx*(s*(xx-27)-1)+a)+b)+105))
  yy=y*y
  x=x-t*(fn2(yy*(yy*(yy*(s*(yy-27)-1)+a)+b)+105))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


He08-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2), a=185*s+25, b=41*s-141
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx*(s*(xx-27)-1)+a)+b)+105))
  yy=y*y
  x=x-t*(fn2(yy*(yy*(yy*(s*(yy-27)-1)+a)+b)+105))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


He08-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2), a=185*s+25, b=41*s-141
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(xx*(xx*(xx*(s*(xx-27)-1)+a)+b)+105))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy*(s*(yy-27)-1)+a)+b)+105))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


He08-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2), a=185*s+25, b=41*s-141
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(xx*(xx*(xx*(s*(xx-27)-1)+a)+b)+105))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy*(s*(yy-27)-1)+a)+b)+105))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


He08-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2), a=185*s+25, b=41*s-141
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(xx*(xx*(xx*(s*(xx-27)-1)+a)+b)+105))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy*(s*(yy-27)-1)+a)+b)+105))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


He08-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2), a=185*s+25, b=41*s-141
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(xx*(xx*(xx*(s*(xx-27)-1)+a)+b)+105))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy*(s*(yy-27)-1)+a)+b)+105))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


He08-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = x0He(7)-7He(6)
  s=sqrt(2), a=185*s+25, b=41*s-141
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=xx*(xx*(xx*(s*(xx-27)-1)+a)+b)+105
  Fx1=yy*(yy*(yy*(s*(yy-27)-1)+a)+b)+105
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


He09-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2), a=345*s+33, b=136*s-285
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=x*(xx*(xx*(xx*(s*(xx-35)-1)+a)+b)+561)
  Ty=y*(yy*(yy*(yy*(s*(yy-35)-1)+a)+b)+561)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


He09-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(8)-8He(7)
  s=sqrt(2), a=345*s+33, b=136*s-285
  bailout=p1+4, z=pixel:
  zz=z*z
  z=z*(zz*(zz*(zz*(s*(zz-35)-1)+a)+b)+561)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


He09-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2), a=345*s+33, b=136*s-285
  const=p1, z=pixel:
  zz=z*z
  z=z*(zz*(zz*(zz*(s*(zz-35)-1)+a)+b)+561)+const
  |z|<100
  ;SOURCE: chby3.frm
}


He09-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2), a=345*s+33, b=136*s-285
  const=pixel, z=p1:
  zz=z*z
  z=z*(zz*(zz*(zz*(s*(zz-35)-1)+a)+b)+561)+const
  |z|<100
  ;SOURCE: chby4.frm
}


He09-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2)
  a1=345*s+33
  b1=136*s-285
  a2=1725*s+165
  b2=3*b1
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz*(s*(zz-35)-1)+a1)+b1)+561)
  fd=zz*(zz*(zz*(s*(9*zz-245)-7)+a2)+b2)+561
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


He09-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2), a1=345*s+33, b1=136*s-285, a2=1725*s+165
  b2=3*b1, a3=10*a1
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz*(s*(zz-35)-1)+a1)+b1)+561)
  fd=zz*(zz*(zz*(s*(9*zz-245)-7)+a2)+b2)+561
  fdd=(z+z)*(zz*(3*zz*(s*(12*zz-245)-7)+a3)+b2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


He09-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(8)-8He(7)
  s=sqrt(2), a1=345*s+33, b1=136*s-285, a2=1725*s+165
  b2=3*b1, a3=10*a1
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz*(s*(zz-35)-1)+a1)+b1)+561)
  fd=zz*(zz*(zz*(s*(9*zz-245)-7)+a2)+b2)+561
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(ww*(ww*(ww*(s*(ww-35)-1)+a1)+b1)+561)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


He09-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2), a=345*s+33, b=136*s-285
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(x*(xx*(xx*(xx*(s*(xx-35)-1)+a)+b)+561))
  Ty=sin(y*(yy*(yy*(yy*(s*(yy-35)-1)+a)+b)+561))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


He09-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2), a=345*s+33, b=136*s-285
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(xx*(xx*(xx*(s*(xx-35)-1)+a)+b)+561))
  Ty=fn1(y*(yy*(yy*(yy*(s*(yy-35)-1)+a)+b)+561))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


He09-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2), a=345*s+33, b=136*s-285
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(zz*(zz*(zz*(s*(zz-35)-1)+a)+b)+561):
  zt=z
  foz=fz
  zz=z*z
  fz=z*(zz*(zz*(zz*(s*(zz-35)-1)+a)+b)+561)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


He09-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2), a=345*s+33, b=136*s-285
  const=p1, z=pixel:
  zz=z*z
  z=z*(zz*(zz*(zz*(s*(zz-35)-1)+a)+b)+561)*const
  |z|<100
  ;SOURCE: chby11.frm
}


He09-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2), a=345*s+33, b=136*s-285
  const=pixel, z=p1:
  zz=z*z
  z=z*(zz*(zz*(zz*(s*(zz-35)-1)+a)+b)+561)*const
  |z|<100
  ;SOURCE: chby12.frm
}


He09-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2), a1=345*s+33, b1=136*s-285, a2=1725*s+165
  b2=3*b1, a3=10*a1
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz*(s*(zz-35)-1)+a1)+b1)+561)
  fd=zz*(zz*(zz*(s*(9*zz-245)-7)+a2)+b2)+561
  fdd=2*z*(zz*(3*zz*(s*(12*zz-245)-7)+a3)+b2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


He09-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(8)-8He(7)
  s=sqrt(2), a1=345*s+33, b1=136*s-285, a2=1725*s+165
  b2=3*b1, a3=10*a1
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz*(s*(zz-35)-1)+a1)+b1)+561)
  fd=zz*(zz*(zz*(s*(9*zz-245)-7)+a2)+b2)+561
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(ww*(ww*(ww*(s*(ww-35)-1)+a1)+b1)+561)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


He09-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2)
  a1=345*s+33
  b1=136*s-285
  a2=1725*s+165
  b2=3*b1
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz*(s*(zz-35)-1)+a1)+b1)+561)
  fd=zz*(zz*(zz*(s*(9*zz-245)-7)+a2)+b2)+561
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


He09-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2), a=345*s+33, b=136*s-285
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(zz*(zz*(zz*(s*(zz-35)-1)+a)+b)+561):
  zt=z
  foz=fz
  zz=z*z
  fz=z*(zz*(zz*(zz*(s*(zz-35)-1)+a)+b)+561)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


He09-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2), a=345*s+33, b=136*s-285
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=z*(zz*(zz*(zz*(s*(zz-35)-1)+a)+b)+561)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


He09-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2), a=345*s+33, b=136*s-285
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=z*(zz*(zz*(zz*(s*(zz-35)-1)+a)+b)+561)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


He09-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2), a=345*s+33, b=136*s-285
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(x*(xx*(xx*(xx*(s*(xx-35)-1)+a)+b)+561))
  yy=y*y
  x=x-t*(y*(yy*(yy*(yy*(s*(yy-35)-1)+a)+b)+561))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


He09-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2), a=345*s+33, b=136*s-285
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(x*(xx*(xx*(xx*(s*(xx-35)-1)+a)+b)+561))
  yy=y*y
  x=x-t*sin(y*(yy*(yy*(yy*(s*(yy-35)-1)+a)+b)+561))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


He09-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2), a=345*s+33, b=136*s-285
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx*(xx*(s*(xx-35)-1)+a)+b)+561)))
  yy=y*y
  x=x-t*(fn1(y*(yy*(yy*(yy*(s*(yy-35)-1)+a)+b)+561)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


He09-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2), a=345*s+33, b=136*s-285
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(xx*(xx*(xx*(s*(xx-35)-1)+a)+b)+561))
  Ty=fn2(y*(yy*(yy*(yy*(s*(yy-35)-1)+a)+b)+561))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


He09-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2), a=345*s+33, b=136*s-285
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(x*(xx*(xx*(xx*(s*(xx-35)-1)+a)+b)+561))
  Ty=fn2(y*(yy*(yy*(yy*(s*(yy-35)-1)+a)+b)+561))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


He09-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2), a=345*s+33, b=136*s-285
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx*(xx*(s*(xx-35)-1)+a)+b)+561)))
  yy=y*y
  x=x-t*(fn2(y*(yy*(yy*(yy*(s*(yy-35)-1)+a)+b)+561)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


He09-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2), a=345*s+33, b=136*s-285
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx*(xx*(s*(xx-35)-1)+a)+b)+561)))
  yy=y*y
  x=x-t*(fn2(y*(yy*(yy*(yy*(s*(yy-35)-1)+a)+b)+561)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


He09-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2), a=345*s+33, b=136*s-285
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(x*(xx*(xx*(xx*(s*(xx-35)-1)+a)+b)+561)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy*(yy*(s*(yy-35)-1)+a)+b)+561)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


He09-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2), a=345*s+33, b=136*s-285
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(x*(xx*(xx*(xx*(s*(xx-35)-1)+a)+b)+561)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy*(yy*(s*(yy-35)-1)+a)+b)+561)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


He09-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2), a=345*s+33, b=136*s-285
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(x*(xx*(xx*(xx*(s*(xx-35)-1)+a)+b)+561)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy*(yy*(s*(yy-35)-1)+a)+b)+561)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


He09-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2), a=345*s+33, b=136*s-285
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(x*(xx*(xx*(xx*(s*(xx-35)-1)+a)+b)+561)))
  yy=y*y
  Ty=(fn1(y*(yy*(yy*(yy*(s*(yy-35)-1)+a)+b)+561)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


He09-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = x0He(8)-8He(7)
  s=sqrt(2), a=345*s+33, b=136*s-285
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=x0*(xx*(xx*(xx*(s*(xx-35)-1)+a)+b)+561)
  Fx1=x1*(yy*(yy*(yy*(s*(yy-35)-1)+a)+b)+561)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


He10-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2), a=588*s+42, b=321*s-510, c=41*s-1830
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=xx*(xx*(xx*(xx*(s*(xx-44)-1)+a)+b)+c)-945
  Ty=yy*(yy*(yy*(yy*(s*(yy-44)-1)+a)+b)+c)-945
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


He10-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(9)-9He(8)
  s=sqrt(2), a=588*s+42, b=321*s-510, c=41*s-1830
  bailout=p1+4, z=pixel:
  zz=z*z
  z=zz*(zz*(zz*(zz*(s*(zz-44)-1)+a)+b)+c)-945
  |z|<=bailout
  ;SOURCE: chby2.frm
}


He10-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2), a=588*s+42, b=321*s-510, c=41*s-1830
  const=p1, z=pixel:
  zz=z*z
  z=zz*(zz*(zz*(zz*(s*(zz-44)-1)+a)+b)+c)-945+const
  |z|<100
  ;SOURCE: chby3.frm
}


He10-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2), a=588*s+42, b=321*s-510, c=41*s-1830
  const=pixel, z=p1:
  zz=z*z
  z=zz*(zz*(zz*(zz*(s*(zz-44)-1)+a)+b)+c)-945+const
  |z|<100
  ;SOURCE: chby4.frm
}


He10-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2)
  a1=588*s+42
  b1=321*s-510
  c=41*s-1830
  a2=1764*s+126
  b2=642*s-1020
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz*(s*(zz-44)-1)+a1)+b1)+c)-945
  fd=2*z*(zz*(zz*(zz*(s*(5*zz-176)-4)+a2)+b2)+c)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


He10-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2), a1=588*s+42, b1=321*s-510, c1=41*s-1830
  a2=1764*s+126, b2=642*s-1020, a3=8820*s+630, b3=1926*s-3060
  c2=c1+c1
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz*(s*(zz-44)-1)+a1)+b1)+c1)-945
  fd=(z+z)*(zz*(zz*(zz*(s*(5*zz-176)-4)+a2)+b2)+c1)
  fdd=(zz+zz)*(zz*(zz*(s*(45*zz-1232)-28)+a3)+b3)+c2
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


He10-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(9)-9He(8)
  s=sqrt(2), a1=588*s+42, b1=321*s-510
  c=41*s-1830, a2=1764*s+126, b2=642*s-1020
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz*(s*(zz-44)-1)+a1)+b1)+c)-945
  fd=(z+z)*(zz*(zz*(zz*(s*(5*zz-176)-4)+a2)+b2)+c)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww*(ww*(ww*(s*(ww-44)-1)+a1)+b1)+c)-945
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


He10-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2), a=588*s+42, b=321*s-510, c=41*s-1830
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(xx*(xx*(xx*(xx*(s*(xx-44)-1)+a)+b)+c)-945)
  Ty=sin(yy*(yy*(yy*(yy*(s*(yy-44)-1)+a)+b)+c)-945)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


He10-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2), a=588*s+42, b=321*s-510, c=41*s-1830
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx*(xx*(xx*(s*(xx-44)-1)+a)+b)+c)-945)
  Ty=fn1(yy*(yy*(yy*(yy*(s*(yy-44)-1)+a)+b)+c)-945)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


He10-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2), a=588*s+42, b=321*s-510, c=41*s-1830
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz*(zz*(zz*(s*(zz-44)-1)+a)+b)+c)-945:
  zt=z
  foz=fz
  zz=z*z
  fz=zz*(zz*(zz*(zz*(s*(zz-44)-1)+a)+b)+c)-945
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


He10-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2), a=588*s+42, b=321*s-510, c=41*s-1830
  const=p1, z=pixel:
  zz=z*z
  z=(zz*(zz*(zz*(zz*(s*(zz-44)-1)+a)+b)+c)-945)*const
  |z|<100
  ;SOURCE: chby11.frm
}


He10-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2), a=588*s+42, b=321*s-510, c=41*s-1830
  const=pixel, z=p1:
  zz=z*z
  z=(zz*(zz*(zz*(zz*(s*(zz-44)-1)+a)+b)+c)-945)*const
  |z|<100
  ;SOURCE: chby12.frm
}


He10-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2), a1=588*s+42, b1=321*s-510
  c1=41*s-1830, a2=1764*s+126, b2=642*s-1020
  a3=8820*s+630, b3=1926*s-3060, c2=2*c1
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz*(s*(zz-44)-1)+a1)+b1)+c1)-945
  fd=2*z*(zz*(zz*(zz*(s*(5*zz-176)-4)+a2)+b2)+c1)
  fdd=2*zz*(zz*(zz*(s*(45*zz-1232)-28)+a3)+b3)+c2
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


He10-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(9)-9He(8)
  s=sqrt(2), a1=588*s+42, b1=321*s-510, c=41*s-1830
  a2=1764*s+126, b2=642*s-1020
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz*(s*(zz-44)-1)+a1)+b1)+c)-945
  fd=(z+z)*(zz*(zz*(zz*(s*(5*zz-176)-4)+a2)+b2)+c)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww*(ww*(ww*(s*(ww-44)-1)+a1)+b1)+c)-945
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


He10-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2)
  a1=588*s+42
  b1=321*s-510
  c=41*s-1830
  a2=1764*s+126
  b2=642*s-1020
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz*(s*(zz-44)-1)+a1)+b1)+c)-945
  fd=2*z*(zz*(zz*(zz*(s*(5*zz-176)-4)+a2)+b2)+c)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


He10-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2), a=588*s+42, b=321*s-510, c=41*s-1830
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz*(zz*(zz*(s*(zz-44)-1)+a)+b)+c)-945:
  zt=z
  foz=fz
  zz=z*z
  fz=zz*(zz*(zz*(zz*(s*(zz-44)-1)+a)+b)+c)-945
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


He10-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2), a=588*s+42, b=321*s-510, c=41*s-1830
  z=pixel, oz=0
  fz=-945
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=zz*(zz*(zz*(zz*(s*(zz-44)-1)+a)+b)+c)-945
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


He10-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2), a=588*s+42, b=321*s-510, c=41*s-1830
  z=pixel, oz=0
  fz=-945
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=zz*(zz*(zz*(zz*(s*(zz-44)-1)+a)+b)+c)-945
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


He10-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2), a=588*s+42, b=321*s-510, c=41*s-1830
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(xx*(xx*(xx*(xx*(s*(xx-44)-1)+a)+b)+c)-945)
  yy=y*y
  x=x-t*(yy*(yy*(yy*(yy*(s*(yy-44)-1)+a)+b)+c)-945)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


He10-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2), a=588*s+42, b=321*s-510, c=41*s-1830
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(xx*(xx*(xx*(xx*(s*(xx-44)-1)+a)+b)+c)-945)
  yy=y*y
  x=x-t*sin(yy*(yy*(yy*(yy*(s*(yy-44)-1)+a)+b)+c)-945)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


He10-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2), a=588*s+42, b=321*s-510, c=41*s-1830
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx*(xx*(s*(xx-44)-1)+a)+b)+c)-945))
  yy=y*y
  x=x-t*(fn1(yy*(yy*(yy*(yy*(s*(yy-44)-1)+a)+b)+c)-945))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


He10-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2), a=588*s+42, b=321*s-510, c=41*s-1830
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx*(xx*(xx*(s*(xx-44)-1)+a)+b)+c)-945)
  Ty=fn2(yy*(yy*(yy*(yy*(s*(yy-44)-1)+a)+b)+c)-945)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


He10-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2), a=588*s+42, b=321*s-510, c=41*s-1830
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(xx*(xx*(xx*(xx*(s*(xx-44)-1)+a)+b)+c)-945)
  Ty=fn2(yy*(yy*(yy*(yy*(s*(yy-44)-1)+a)+b)+c)-945)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


He10-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2), a=588*s+42, b=321*s-510, c=41*s-1830
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx*(xx*(s*(xx-44)-1)+a)+b)+c)-945))
  yy=y*y
  x=x-t*(fn2(yy*(yy*(yy*(yy*(s*(yy-44)-1)+a)+b)+c)-945))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


He10-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2), a=588*s+42, b=321*s-510, c=41*s-1830
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx*(xx*(s*(xx-44)-1)+a)+b)+c)-945))
  yy=y*y
  x=x-t*(fn2(yy*(yy*(yy*(yy*(s*(yy-44)-1)+a)+b)+c)-945))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


He10-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2), a=588*s+42, b=321*s-510, c=41*s-1830
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(xx*(xx*(xx*(xx*(s*(xx-44)-1)+a)+b)+c)-945))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy*(yy*(s*(yy-44)-1)+a)+b)+c)-945))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


He10-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2), a=588*s+42, b=321*s-510, c=41*s-1830
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(xx*(xx*(xx*(xx*(s*(xx-44)-1)+a)+b)+c)-945))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy*(yy*(s*(yy-44)-1)+a)+b)+c)-945))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


He10-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2), a=588*s+42, b=321*s-510, c=41*s-1830
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(xx*(xx*(xx*(xx*(s*(xx-44)-1)+a)+b)+c)-945))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy*(yy*(s*(yy-44)-1)+a)+b)+c)-945))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


He10-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2), a=588*s+42, b=321*s-510, c=41*s-1830
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(xx*(xx*(xx*(xx*(s*(xx-44)-1)+a)+b)+c)-945))
  yy=y*y
  Ty=(fn1(yy*(yy*(yy*(yy*(s*(yy-44)-1)+a)+b)+c)-945))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


He10-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = x0He(9)-9He(8)
  s=sqrt(2), a=588*s+42, b=321*s-510, c=41*s-1830
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=xx*(xx*(xx*(xx*(s*(xx-44)-1)+a)+b)+c)-945
  Fx1=yy*(yy*(yy*(yy*(s*(yy-44)-1)+a)+b)+c)-945
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Heart {; (c) Jay Hill, 1998
  done = 1, z = 0, zc = 0, c = sqrt(pixel+.75)
  s=|c|, t1=(256*s - 96)*s + 32*Real(c), t2=16*s + 32*Real(c) + 16
  z=z + 251*(t1<=3) + 252*(t2<=1) ; set colors
  IF (z>0)                        ; for periods 1, 2
    done=-1      ; color is set for c in a component, skip iterations
  ENDIF
  :                               ; initialization.
  zc=sqr(zc) + c                  ; standard MSet iteration
  IF (|zc| >= 4)                  ; Bailout at 4
    done=-1                       ; Set flag to force an exit.
  ENDIF
  done >= 0                       ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}


heart_jul {; Kerry Mitchell
        ; See end of formula xlty_jul for Kerry Mitchell's explanation
        ;  of his "fraction" formulas
        ;
        ; colors by how often r < t, where r & t are the
        ; magnitude & polar angle of the fractional part of
        ; the iterate of the Julia set
        ; fills fractal with little hearts
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = color speed (try 1)
        ; p3 = rounding factor (try 1)
        ; fn1 = rounding function, either round() or trunc()
        ; fn2 = arbitrary function of iterate (try log())
        ; calculation uses variable zc, z used for coloring
        ; use decomp=256
        ;
  zc=pixel, c=p1, iter=2, twopi=2*pi, count=0
  maxr=real(p2), speed=imag(p2)*twopi*255/256
  roundfac=p3
  :
        ;
        ; adjust iterate through arbitrary function and find
        ;   fractional part
        ;
  temp=fn2(zc)/roundfac, frac=temp-fn1(temp)
  r=cabs(frac)
  t=cabs(imag(log(frac))/twopi)
        ;
        ; update counter if conditions are right
        ;
  IF (r<t)
    count=count+1
  ENDIF
        ;
        ; bailout
        ;   scale counter into decomposition angle
        ;   set "iteration done" flag (iter = -1)
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    angle=speed*count/(iter-1)
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ELSE
    iter=iter+1
    zc=sqr(zc)+c
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


heart_man {; Kerry Mitchell
        ; See end of formula xlty_jul for Kerry Mitchell's explanation
        ;  of his "fraction" formulas
        ;
        ; colors by how often r < t, where r & t are the
        ; magnitude & polar angle of the fractional part of
        ; the iterate of the Mandelbrot set
        ; fills fractal with little hearts
        ;
        ; real(p1) = bailout (try 4)
        ; imag(p1) = color speed (try 1)
        ; p2 = rounding factor (try 1)
        ; fn1 = rounding function, either round() or trunc()
        ; fn2 = arbitrary function of iterate (try log())
        ; calculation uses variable zc, z used for coloring
        ; use decomp=256
        ;
  zc=0, c=pixel, iter=2, twopi=2*pi, count=0
  maxr=real(p1), speed=imag(p1)*twopi*255/256
  roundfac=p2
  :
        ;
        ; adjust iterate through arbitrary function and find
        ;   fractional part
        ;
  temp=fn2(zc)/roundfac, frac=temp-fn1(temp)
  r=cabs(frac)
  t=cabs(imag(log(frac))/twopi)
        ;
        ; update counter if conditions are right
        ;
  IF (r<t)
    count=count+1
  ENDIF
        ;
        ; bailout
        ;   scale counter into decomposition angle
        ;   set "iteration done" flag (iter = -1)
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    angle=speed*count/(iter-1)
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ELSE
    iter=iter+1
    zc=sqr(zc)+c
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


heartop {; Giuseppe Zito
  z = pixel
  c2 = real(p1)
  IF (real(p1)==0)
    c2 = 0.681623
  ENDIF
  d1 = -0.959452
  d5 = -0.458745
  d12 = -0.425805
  d15 = -0.271625
  : 
  x = real(z), y = imag(z) 
  s0 = y
  s0 = s0 /c2
  newx = s0 
  s0 = y
  s0 = s0 /d1
  s0 = s0 +y
  s0 = s0 *y
  s0 = s0 -d5
  s0 = s0 -y
  s0 = s0 +y
  s1 =d12
  s1 = s1 *x
  s1 = s1 /x
  s1 = s1 -d15
  s0 = s0 *s1
  s0 = s0 /x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


HenonJul {; Based on Fractint's "Henon" type.
  bailout=real(p2)
  a=real(p1)
  b=imag(p1)
  z=pixel:
  x=real(z)
  z=1+imag(z)-a*sqr(x)+flip(b*x)
  |z|<=bailout
  ;SOURCE: 99msg.frm
}


HenonMan {
  bailout=real(p2)
  z=pixel
  a=real(pixel)
  b=imag(pixel):
  x=real(z)
  z=1+imag(z)-a*sqr(x)+flip(b*x)
  |z|<=bailout
  ;SOURCE: 99msg.frm
}


herman_alpha {; Kerry Mitchell 15feb98
        ; real(p1) = z exponent (use integer >= 2; m=n-1)
        ; imag(p1) = coloring speed (try 4)
        ; p2 = c
        ; real(p3) = critical point selector (>0 for positive root)
        ; imag(p3) = unused                  (<0 for negative root)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
  alpha=pixel, iter=1, n=real(p1), m=n-1, nfac=2*n-1
  maxr=1e6, minr=1/maxr, speed=imag(p1)*pi/128
  oln=1/log(n), fac=log(0.5*log(maxr)), c=p2
  c2=sqr(c), hypfac=sqr(n)+sqr(m), pn=1
  IF (real(p3)<0)
    pn=-1
  ENDIF
  IF (real(c2)>hypfac)
    pn=-pn
  ENDIF
  IF (imag(c)<0)
    pn=-pn
  ENDIF
  d=sqrt((c2-1)*(c2-sqr(nfac)))
  z=(nfac+c2+pn*d)/(2*n*c)
  :
  g=(z-c)/(1-c*z), z=alpha*z^n*g^m
  iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r<minr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r>maxr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    angle=angle+pi
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
;*******Kerry Mitchell's explanation of his "Herman" formulas***********
;            narrative copyright Kerry Mitchell 15feb98
;
; Applicable to these formulas:
;           herman_alpha (above) 
;           herman_man-polar
;           herman_man-cart
;           herman_jul-polar 
;           herman_jul-cart 
;
; Higher order Herman Rings
;
; In Paul Derbyshire's posting about Herman Rings, he gave a formula 
; that was known to generate the rings:
;
; H(z) = alpha * z^2 * (z-c) / (1-c*z).
;
; Paul's examples tended to resemble, in overall shape, Julia sets 
; from the standard quadratic, f(z) = z^2 + c.  I surmised that this 
; was due to the z^2 factor in H(z), and conjectured that higher 
; order Herman Rings could be made by increasing the z exponent.  
; Just going from z^2 to z^3 was interesting, but didn't result in 
; the same sort of dynamics that H(z) had.  So, I generalized H(z)
; into F(z):
;
; F(z) = alpha * z^n * g(z)^m, where
; g(z) = (z-c)/(1-c*z).
; 
; The formula that Paul used had n=2 and m=1.  I tried n=3 and m=1 
; and determined it to be unsuccessful.  So, I tried n=3 and m=2, 
; and decided that, in general, m should be equal to n-1 for higher 
; order rings.
;
; Finding the critical points for F is not as hard as it may seem.  
; Using the derivative rules from calculus,
;
; F' = alpha * nz^(n-1) * g^m + alpha * z^n * mg'g^(m-1).
;
; Setting F' = 0 to find the critical points means that alpha,
; z^(n-1) and g^(m-1) can all be divided out as common factors.
; (The critical points associated with those factors are:  z=0,
; z=c, and z=1/c.  None of these has interesting dynamics.)  The
; result is:
;
; 0 = ng + mg'z, or
; z = -ng / (mg').
;
; Differentiating g(z),
;
; g' = (1-c^2) / (1-c*z)^2.
;
; Using this in the above equation for z results in a quadratic
; for z which is easily solved using the quadratic equation.  In
; fact, when m = n-1, the discriminant of the solution can be
; factored.  The result is:
;
; z = [c^2 + (2n-1)] +/- sqrt([c^2 - 1]*[c^2 - (2n-1)^2])] / (2nc).
;
; Using this directly as the starting point for Mandelbrot-type 
; images leads to discontinuities, where one root should be used 
; instead of the other.  These discontinuities occur when real(c^2) 
; = n^2 + m^2, and at the imaginary axis.  In the formulas below
; (herman_man and herman-alpha), they are automatically handled
; in the initialization.  Since Julia sets are not initialized
; using critical points, the herman_jul formulas lack this logic.
;
; The rotation parameter, alpha, is what seems to determine whether 
; or not Herman rings actually show up.  Two methods can be used to 
; set alpha--cartesian and polar coordinates.  For the cartesian 
; method (-cart formulas), the real and imaginary parts of alpha are 
; input directly.  With the polar method (-polar formulas), the 
; magnitude and polar angle of alpha are input.  This makes it very 
; easy to specify rotation by an irrational angle.  Simply specify a 
; *rational* number for the polar angle.  The irrationality of the 
; rotation angle is expressed as an irrational number of turns, not 
; radians.  Since the difference between turns and radians involves 
; a factor of pi, which is irrational, using a rational number of 
; radians insures that the number of turns is irrational.  The effect
; of alpha can be show through the special Mandelbrot-type formula,
; herman_alpha.  Here, c is input through parameters and z is
; initialized accordingly.  The parameter alpha is varied by being
; set to the pixel value.
;
; The following formulas all use the renormalization method to 
; reduce banding.  In this implementation, the actual coloring is 
; performed using the decomposition method.  This allows separate 
; rendering of the orbits that get attracted to infinity and those 
; that get attracted to 0.  After forming the decomposition angle 
; based on the iteration count, those pixels that escape to infinity 
; have their angle increased by pi.  This means that for the same 
; iteration count, two pixels with different basins of attraction 
; will be separarated by half of the color palette.  Those pixels 
; whose orbits are not attracted by either 0 or infinity are treated
; as inside pixels.
;
;***********************************************************************
  ;SOURCE: 98msg.frm
}


herman_jul-cart {; Kerry Mitchell 15feb98
        ; See the end of the formula herman_alpha for Kerry Mitchell's  
        ;  explanation of his "herman" formulas.
        ; p1 = Julia parameter
        ; real(p2) = z exponent (use integer >= 2; m=n-1)
        ; imag(p2) = coloring speed (try 4)
        ; p3 = alpha (go nuts)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
  z=pixel, c=p1, iter=1, n=real(p2), m=n-1
  maxr=1e6, minr=1/maxr, speed=imag(p2)*pi/128
  oln=1/log(n), fac=log(0.5*log(maxr)), alpha=p3
  :
  g=(z-c)/(1-c*z), z=alpha*z^n*g^m
  iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r<minr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r>maxr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    angle=angle+pi
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


herman_jul-polar {; Kerry Mitchell 15feb98
        ; See the end of the formula herman_alpha for Kerry Mitchell's  
        ;  explanation of his "herman" formulas.
        ; p1 = Julia parameter
        ; real(p2) = z exponent (use integer >= 2; m=n-1)
        ; imag(p2) = coloring speed (try 4)
        ; real(p3) = alpha magnitude (try 1)
        ; imag(p3) = alpha polar angle (try integers)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
  z=pixel, c=p1, iter=1, n=real(p2), m=n-1
  maxr=1e6, minr=1/maxr, speed=imag(p2)*pi/128
  r=real(p3), t=imag(p3), alpha=r*(cos(t)+flip(sin(t)))
  oln=1/log(n), fac=log(0.5*log(maxr))
  :
  g=(z-c)/(1-c*z), z=alpha*z^n*g^m
  iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r<minr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r>maxr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    angle=angle+pi
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


herman_jul-polar-r {; Kerry Mitchell 15feb98
        ; p1 = Julia parameter
        ; real(p2) = z exponent (use integer >= 2; m=n-1)
        ; imag(p2) = coloring speed (try 4)
        ; real(p3) = alpha magnitude (try 1)
        ; imag(p3) = alpha polar angle (try integers)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
  z=pixel, c=p1, iter=1, n=real(p2), m=n-1
  maxr=1e6, minr=1/maxr, speed=imag(p2)*pi/128
  r=real(p3), t=imag(p3), alpha=r*(cos(t)+flip(sin(t)))
  oln=1/log(n), fac=log(0.5*log(maxr))
  :
  g=(z-c)/(1-c*z), z=alpha*z^n*g^m
  iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r<minr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r>maxr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    angle=angle+pi
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 0from_ml.frm
}


herman_man-cart {; Kerry Mitchell 15feb98
        ; See the end of the formula herman_alpha for Kerry Mitchell's  
        ;  explanation of his "herman" formulas.
        ; real(p1) = z exponent (use integer >= 2; m=n-1)
        ; imag(p1) = coloring speed (try 4)
        ; p2 = alpha (go wild)
        ; real(p3) = critical point selector (>0 for positive root)
        ; imag(p3) = unused                  (<0 for negative root)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
  c=pixel, iter=1, n=real(p1), m=n-1, nfac=2*n-1
  maxr=1e6, minr=1/maxr, speed=imag(p1)*pi/128
  oln=1/log(n), fac=log(0.5*log(maxr)), alpha=p2
  c2=sqr(c), hypfac=sqr(n)+sqr(m), pn=1
  IF (real(p3)<0)
    pn=-1
  ENDIF
  IF (real(c2)>hypfac)
    pn=-pn
  ENDIF
  IF (imag(c)<0)
    pn=-pn
  ENDIF
  d=sqrt((c2-1)*(c2-sqr(nfac)))
  z=(nfac+c2+pn*d)/(2*n*c)
  :
  g=(z-c)/(1-c*z), z=alpha*z^n*g^m
  iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r<minr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r>maxr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    angle=angle+pi
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


herman_man-polar {; Kerry Mitchell 15feb98
        ; See the end of the formula herman_alpha for Kerry Mitchell's  
        ;  explanation of his "herman" formulas.
        ; real(p1) = z exponent (use integer >= 2; m=n-1)
        ; imag(p1) = coloring speed (try 4)
        ; real(p2) = alpha magnitude (try 1)
        ; imag(p2) = alpha polar angle (try integers)
        ; real(p3) = critical point selector (>0 for positive root)
        ; imag(p3) = unused                  (<0 for negative root)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
  c=pixel, iter=1, n=real(p1), m=n-1, nfac=2*n-1
  maxr=1e6, minr=1/maxr, speed=imag(p1)*pi/128
  r=real(p2), t=imag(p2), alpha=r*(cos(t)+flip(sin(t)))
  oln=1/log(n), fac=log(0.5*log(maxr))
  c2=sqr(c), hypfac=sqr(n)+sqr(m), pn=1
  IF (real(p3)<0)
    pn=-1
  ENDIF
  IF (real(c2)>hypfac)
    pn=-pn
  ENDIF
  IF (imag(c)<0)
    pn=-pn
  ENDIF
  d=sqrt((c2-1)*(c2-sqr(nfac)))
  z=(nfac+c2+pn*d)/(2*n*c)
  :
  g=(z-c)/(1-c*z), z=alpha*z^n*g^m
  iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r<minr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r>maxr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    angle=angle+pi
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


hermanm_alpha {; Kerry Mitchell 16feb98
        ; real(p1) = z exponent (use integer >= 2; m=n-1)
        ; imag(p1) = g exponent (integers)
        ; p2 = c
        ; real(p3) = critical point selector (>0 for positive root)
        ; imag(p3) = unused                  (<0 for negative root)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        ; coloring speed hardcoded to 4
  c=p2, iter=1, n=real(p1), m=imag(p1), nfac=2*n-1
  maxr=1e6, minr=1/maxr, speed=4*pi/128, alpha=pixel
  oln=1/log(n), fac=log(0.5*log(maxr))
  c2=sqr(c), hypnum=sqr(n)+sqr(m), pn=1
  hypden=sqr(n-m), hypfac=hypnum/hypden
  IF (real(p3)<0)
    pn=-1
  ENDIF
  IF (real(c2)>hypfac)
    pn=-pn
  ENDIF
  IF (imag(c)<0)
    pn=-pn
  ENDIF
  afac=c*n, bfac=c2*(n-m)+(n+m), cfac=c*n
  d=sqrt(bfac*bfac-4*afac*cfac)
  z=(bfac+pn*d)/(2*afac)
  :
  g=(z-c)/(1-c*z), z=alpha*z^n*g^m
  iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r<minr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r>maxr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    angle=angle+pi
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
;********Kerry Mitchell's exlanation of his "hermanm" formulas*********
;             narrative copyright Kerry Mitchell 16feb98
;
;  Applicable formulas are:
;      hermanm_alpha (above)
;      hermanm_jul-cart 
;      hermanm_man-cart 
;      hermanm_jul-polar 
;      hermanm_man-polar 
;
; Variations on Herman Rings
;
; The below formulas are based on the following formula, which is
; known to produce Herman rings:
;
; f(z) = alpha * z^2 * (z-c) / (1-c*z).
;
; This can be generalized to:
;
; F(z) = alpha * z^n * g(z)^m, where
; g(z) = (z-c) / (1-c*z).
;
; For the case of n >= 2 and m=n-1, it is believed that F(z) will
; generate higher order Herman rings.  The present formulas treat
; the general case, where m and n are independent.
;
; For the Mandelbrot-type formulas, the critical points of F(z)
; are readily determined by solving a quadratic equation.  To
; maintain continuity in the image, the selection of critical
; must be changed depending on the parameter c.  Otherwise, lines
; of discontinuity appear.  These lines are hyperbolic (plus the
; imaginary axis), according to (real(c))^2 - (imag(c))^2 = r^2.
; This value of r depends on the exponents n and m:
;
; r = (n^2 + m^2) / (n - m)^2.
;
; This adjustment of the critical point is made in the formula
; initialization.
; 
; The parameter alpha can be selected in two ways, either using
; cartesian or polar coordinates.  The advantage to polar coordinates
; is that entering an irrational rotation angle is easy; enter a
; *rational* polar angle for alpha, and the rotation angle (which
; involves a factor of pi) will be irrational.
; 
; Five formulas are included:  2 Mandelbrot types (cartesian and
; polar), 2 Julia types (cartesian and polar), and 1 Mandelbrot
; type where c is explicitly specified and alpha takes on the
; pixel value.  For the Mandelbrot types, the choice of critical
; point (using either the positive or negative root of the
; discriminant) is governed by the sign of real(p3).
;
;***********************************************************************
  ;SOURCE: 98msg.frm
}


hermanm_jul-cart {; Kerry Mitchell 16feb98
        ; See the end of formula hermanm_alpha for Kerry Mitchell's
        ;  explanation of his hermanm formulas
        ; p1 = Julia parameter
        ; real(p2) = z exponent (use integer >= 2; m=n-1)
        ; imag(p2) = g exponent (integers)
        ; p3 = alpha (go nuts)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        ; coloring speed hardcoded to 4
  z=pixel, c=p1, iter=1, n=real(p2), m=imag(p2), nfac=2*n-1
  maxr=1e6, minr=1/maxr, speed=4*pi/128, alpha=p3
  oln=1/log(n), fac=log(0.5*log(maxr))
  :
  g=(z-c)/(1-c*z), z=alpha*z^n*g^m
  iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r<minr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r>maxr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    angle=angle+pi
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


hermanm_jul-polar {; Kerry Mitchell 16feb98
        ; See the end of formula hermanm_alpha for Kerry Mitchell's
        ;  explanation of his hermanm formulas
        ; p1 = Julia parameter
        ; real(p2) = z exponent (use integer >= 2; m=n-1)
        ; imag(p2) = g exponent (integers)
        ; real(p3) = alpha magnitude (try 1)
        ; imag(p3) = alpha polar angle (try integers)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        ; coloring speed hardcoded to 4
  z=pixel, c=p1, iter=1, n=real(p2), m=imag(p2), nfac=2*n-1
  maxr=1e6, minr=1/maxr, speed=4*pi/128
  r=real(p3), t=imag(p3), alpha=r*(cos(t)+flip(sin(t)))
  oln=1/log(n), fac=log(0.5*log(maxr))
  :
  g=(z-c)/(1-c*z), z=alpha*z^n*g^m
  iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r<minr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r>maxr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    angle=angle+pi
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


hermanm_man-cart {; Kerry Mitchell 16feb98
        ; See the end of formula hermanm_alpha for Kerry Mitchell's
        ;  explanation of his hermanm formulas
        ; real(p1) = z exponent (use integer >= 2; m=n-1)
        ; imag(p1) = g exponent (integers)
        ; p2 = alpha
        ; real(p3) = critical point selector (>0 for positive root)
        ; imag(p3) = unused                  (<0 for negative root)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        ; coloring speed hardcoded to 4
  c=pixel, iter=1, n=real(p1), m=imag(p1), nfac=2*n-1
  maxr=1e6, minr=1/maxr, speed=4*pi/128, alpha=p2
  oln=1/log(n), fac=log(0.5*log(maxr))
  c2=sqr(c), hypnum=sqr(n)+sqr(m), pn=1
  hypden=sqr(n-m), hypfac=hypnum/hypden
  IF (real(p3)<0)
    pn=-1
  ENDIF
  IF (real(c2)>hypfac)
    pn=-pn
  ENDIF
  IF (imag(c)<0)
    pn=-pn
  ENDIF
  afac=c*n, bfac=c2*(n-m)+(n+m), cfac=c*n
  d=sqrt(bfac*bfac-4*afac*cfac)
  z=(bfac+pn*d)/(2*afac)
  :
  g=(z-c)/(1-c*z), z=alpha*z^n*g^m
  iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r<minr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r>maxr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    angle=angle+pi
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


hermanm_man-polar {; Kerry Mitchell 16feb98
        ; See the end of formula hermanm_alpha for Kerry Mitchell's
        ;  explanation of his hermanm formulas
        ; real(p1) = z exponent (use integer >= 2; m=n-1)
        ; imag(p1) = g exponent (integers)
        ; real(p2) = alpha magnitude (try 1)
        ; imag(p2) = alpha polar angle (try integers)
        ; real(p3) = critical point selector (>0 for positive root)
        ; imag(p3) = unused                  (<0 for negative root)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        ; coloring speed hardcoded to 4
  c=pixel, iter=1, n=real(p1), m=imag(p1), nfac=2*n-1
  maxr=1e6, minr=1/maxr, speed=4*pi/128
  r=real(p2), t=imag(p2), alpha=r*(cos(t)+flip(sin(t)))
  oln=1/log(n), fac=log(0.5*log(maxr))
  c2=sqr(c), hypnum=sqr(n)+sqr(m), pn=1
  hypden=sqr(n-m), hypfac=hypnum/hypden
  IF (real(p3)<0)
    pn=-1
  ENDIF
  IF (real(c2)>hypfac)
    pn=-pn
  ENDIF
  IF (imag(c)<0)
    pn=-pn
  ENDIF
  afac=c*n, bfac=c2*(n-m)+(n+m), cfac=c*n
  d=sqrt(bfac*bfac-4*afac*cfac)
  z=(bfac+pn*d)/(2*afac)
  :
  g=(z-c)/(1-c*z), z=alpha*z^n*g^m
  iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r<minr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
  IF (r>maxr)
    angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
    angle=angle+pi
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


Heterotope(XAXIS) {; Mt by way of Rollo Silver IIRC
  z = Pixel, c = pixel :
  z = (1-p1)*sqr(z) + p1*sqr(z)*z + c
  LastSqr <= |p2|
  ;SOURCE: hetero.frm
}


Heterotope2 (XAXIS) {;  Mt by way of Rollo Silver IIRC
  z = Pixel, c = pixel :
  z = (1-p1)*sqr(z) + p1*sqr(z)*z + c
  LastSqr <= |p2|
  ;SOURCE: hetero.frm
}


Heterotope3 {; Mt by way of Rollo Silver IIRC
  z = Pixel, c = pixel:
  z = (1-p1)*sqr(z) + p1*sqr(z)*c
  LastSqr <= |p2|
  ;SOURCE: hetero.frm
}


hexaflower {; Giuseppe Zito
  z = pixel
  c3 = -0.092155
  c4 = 0.036722
  c7 = -0.029237
  d0 = 0.10496
  d1 = 0.011968
  d9 = 0.229837
  : 
  x = real(z), y = imag(z)
  s0 = x
  s0 = s0 +x
  s0 = s0 *c3
  s0 = s0 *c4
  s0 = s0 +x
  s0 = s0 +y
  s0 = s0 *c7
  s0 = s0 -y
  newx = s0 
  s0 =d0
  s0 = s0 *d1
  s0 = s0 /y
  s0 = s0 +y
  s0 = s0 +x
  s0 = s0 -d9
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


hflip {
   ; A little non-standard math-function 
   ; produces chaotic bands like the
   ; conjugate function but the symmetry is now skew.
  z = pixel, zp=(0,0):
  temp = z
  z = z*z +  zp
  zp = flip(temp) 
  |zp| <= 4 
  ;SOURCE: noel.frm
}


hflip2 {
   ; The pixel squared mapping still doubles the symmetry.
  z = pixel^2, zp=(0,0):
  temp = z
  z = z*z +  zp
  zp = flip(temp) 
  |zp| <= 4 
  ;SOURCE: noel.frm
}


Hill001 {; Flattened cardioid by Jay R. Hill
         ; Classic Mandelbrot set fractal, transformed
         ; Two parameters: real & imaginary perturbations of z(0)
  p = 0.5*exp(Pixel), c=p*(1-p), z = p1:
  z = sqr(z) + c
  |z| <= 4
  ;SOURCE: 97msg.frm
}


Hill001a {; Flattened cardioid by Jay R. Hill, 1998
          ; Classic Mandelbrot set fractal, transformed
          ; Parameter p1: real & imaginary perturbations of z(0)
  p = 0.5*exp(Pixel), c=p*(1-p), z = p1:
  z = sqr(z) + c
  lastsqr <= 4
  ;SOURCE: 98msg.frm
}


Hill001a-a (XAXIS) {; Flattened cardioid by Jay R. Hill, 1998
                    ; Classic Mandelbrot set fractal, transformed
  p = 0.5*exp(Pixel), pix=p*(1-p), z = 0, done = 1, zc = 0, c = pix
  s=|c|, t1=(256*s - 96)*s + 32*Real(c), t2=16*s + 32*Real(c) + 16
  z=z + 250*(t1<=3) + 251*(t2<=1) ; set colors
  IF (z>0)          ; for periods 1 and 2.
    done=-1         ; color is set for c in a component, skip iterations
  ENDIF
  :                 ; initialization.
  zc=sqr(zc) + c    ; standard MSet iteration
  IF (|zc| >= 4)    ; Bailout at 4
    done=-1         ; Set flag to force an exit.
  ENDIF
  done >= 0         ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}


Hill001b {; Flattened cardioid by Jay R. Hill, 1998
          ; Cubic Mandelbrot set fractal, transformed
          ; Two parameters: real & imaginary perturbations of z(0)
  p = exp(Pixel)/sqrt(3), c=p*(1-sqr(p)), z = p1
  x=(real(Pixel)<0), iter=0: 
  z = z*sqr(z) + c, iter=iter+1
  (lastsqr+5*x*(iter>250)) <= 4
  ;SOURCE: 98msg.frm
}


Hill001b1 {; Flattened cardioid by Jay R. Hill, 1998
           ; Cubic Mandelbrot set fractal, transformed
           ; Two parameters: real & imaginary perturbations of z(0)
  p = exp(Pixel)/sqrt(3), c=p*(1-sqr(p)), z = p1
  x=(real(Pixel)<0), iter=0: 
  z = z*sqr(z) + c, iter=iter+1
  (lastsqr+5*x*(iter>1)) <= 4
  ;SOURCE: 98msg.frm
}


Hill002 {; Flattened cardioid reciprocal by Jay R. Hill
         ; Classic Mandelbrot set fractal, transformed
         ; Two parameters: real & imaginary perturbations of z(0)
  p = 0.5*exp(1/Pixel), c=(p*(1-p)), z = p1:
  z = sqr(z) + c
  |z| <= 4
  ;SOURCE: 97msg.frm
}


Hill003 {; Flattened circle by Jay R. Hill
         ; Classic Mandelbrot set fractal, transformed
         ; Two parameters: real & imaginary perturbations of z(0)
  c=.25*exp(Pixel)-1, z = p1:
  z = sqr(z) + c
  |z| <= 4
  ;SOURCE: 97msg.frm
}


Hill004 {; Flattened circle reciprocal by Jay R. Hill
         ; Classic Mandelbrot set fractal, transformed
         ; Two parameters: real & imaginary perturbations of z(0)
  c=.25*exp(1/Pixel)-1, z = p1:
  z = sqr(z) + c
  |z| <= 4
  ;SOURCE: 97msg.frm
}


HorLinebrot {; Tom Schumm
             ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like a mandel
  z = z + Pixel
  z = Sqr(z)
  imag(z) <= 4            ; Different escape boundry
  ;SOURCE: phong.frm
}


HorLineia (ORIGIN) {; Tom Schumm
                    ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like a julia
  z = z + p1
  z = Sqr(z)
  imag(z) <= 4            ; Different escape boundry
  ;SOURCE: phong2.frm
}


HRing_J {; This thing is capable of generating Herman rings for alpha
         ; equal to exp(2*pi*i*a), a irrational.
         ; p1: alpha. p2: c. p3: Orbit trap radius about 0, reciprocal is
         ; used for infinity.
         ; Use outside=real, logmap=0, periodicity=0.
  z=pixel, a=p1, c=p2, r=real(p3), rr=1/r, iter=0, done=0:
  z2=sqr(z)
  z=a*z2*(z-c)/(1-c*z)
  iter=iter+1
  IF(lastsqr<r || lastsqr>rr)
    color=iter
    IF(color<1)
      color=1
    ELSEIF(color>127)
      color=127
    ENDIF
    IF(lastsqr<r)
      color=color+127
    ENDIF
    z=color-iter-7
    done=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


HRing_J2 {; This thing is capable of generating Herman rings for alpha
          ; equal to exp(2*pi*i*a), a irrational.
          ; p1: alpha. p2: c. p3: Orbit trap radius about 0, reciprocal is
          ; used for infinity.
          ; Color variant: stretches to maxiter.
          ; Use outside=real, logmap=0, periodicity=0.
  z=pixel, a=p1, c=p2, r=real(p3), rr=1/r, iter=0, done=0:
  z2=sqr(z)
  z=a*z2*(z-c)/(1-c*z)
  iter=iter+1
  IF(lastsqr<r || lastsqr>rr)
    color=(iter/maxit)*127
    IF(color<1)
      color=1
    ELSEIF(color>127)
      color=127
    ENDIF
    IF(lastsqr<r)
      color=color+127
    ENDIF
    z=color-iter-7
    done=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


HRing_J256 {; This thing is capable of generating Herman rings for alpha
            ; equal to exp(2*pi*i*a), a irrational.
            ; p1: alpha. p2: c. p3: Orbit trap radius about 0, reciprocal is
            ; used for infinity.
            ; Color variant: stretches to 
            ; maxiter outside, decomp-128'd inside.
            ; Use outside=real, logmap=0, periodicity=0.
  z=pixel, a=p1, c=p2, r=real(p3), rr=1/r, iter=0, done=0:
  z2=sqr(z)
  z=a*z2*(z-c)/(1-c*z)
  iter=iter+1
  IF(lastsqr<r || lastsqr>rr)
    IF(lastsqr>rr)
      color=(iter/maxit)*127
      IF(color<1)
        color=1
      ELSEIF(color>127)
        color=127
      ENDIF
    ELSE
      cc=atan(imag(z)/real(z))
      IF(real(z)<0)
        cc=cc+PI
      ELSEIF(real(z)==0)
        IF(imag(z)<0)
          cc=-PI/2
        ELSE
          cc=PI/2
        ENDIF
      ENDIF
      IF(cc<0)
        cc=cc+2*PI
      ENDIF
      color=128+cc*64/PI
    ENDIF
    z=color-iter-7
    done=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


HRing_J256b {; This thing is capable of generating Herman rings for alpha
             ; equal to exp(2*pi*i*a), a irrational.
             ; p1: alpha. p2: c. p3: Orbit trap radius 
             ; about 0, reciprocal is used for infinity.
             ; Color variant: stretches to 
             ; maxiter inside, decomp-128'd outside.
             ; Use outside=real, logmap=0, periodicity=0.
  z=pixel, a=p1, c=p2, r=real(p3), rr=1/r, iter=0, done=0:
  z2=sqr(z)
  z=a*z2*(z-c)/(1-c*z)
  iter=iter+1
  IF(lastsqr<r || lastsqr>rr)
    IF(lastsqr>rr)
      cc=atan(imag(z)/real(z))
      IF(real(z)<0)
        cc=cc+PI
      ELSEIF(real(z)==0)
        IF(imag(z)<0)
          cc=-PI/2
        ELSE
          cc=PI/2
        ENDIF
      ENDIF
      IF(cc<0)
        cc=cc+2*PI
      ENDIF
      color=1+cc*64/PI
    ELSE
      color=(iter/maxit)*127
      IF(color<1)
        color=1
      ELSEIF(color>127)
        color=127
      ENDIF
      color=color+128
    ENDIF
    z=color-iter-7
    done=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


HRing_Ma {; Mandelbrot set slice, alpha varies, c fixed.
          ; p2: c. p3: Orbit trap radius about 0, reciprocal is
          ; used for infinity.
          ; Use outside=real, logmap=0, periodicity=0.
  a=pixel, c=p2, r=real(p3), rr=1/r, iter=0, done=0, flag=0, m=maxit
  z=(3+sqr(c)+sqrt(9-10*sqr(c)+sqr(sqr(c))))/(4*c)
  IF(real(c)*real(c)-imag(c)*imag(c)-5>=0)
    flag=1-flag
  ENDIF
  IF(imag(c)<0)
    flag=1-flag
  ENDIF
  IF(flag==1)
    z=(3+sqr(c)-sqrt(9-10*sqr(c)+sqr(sqr(c))))/(4*c)
  ENDIF
  :
  z2=sqr(z)
  z=a*z2*(z-c)/(1-c*z)
  iter=iter+1
  IF(lastsqr<r || lastsqr>rr)
    color=(iter/maxit)*127
    IF(color<1)
      color=1
    ELSEIF(color>127)
      color=127
    ENDIF
    IF(lastsqr<r)
      color=color+127
    ENDIF
    z=color-iter-7
    done=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


HRing_Mc {; Mandelbrot set slice, c varies, alpha fixed.
          ; p1: alpha. p3: Orbit trap radius about 0, reciprocal is
          ; used for infinity.
          ; Use outside=real, logmap=0, periodicity=0.
  a=p1, c=pixel, r=real(p3), rr=1/r, iter=0, done=0, flag=0, m=maxit
  z=(3+sqr(c)+sqrt(9-10*sqr(c)+sqr(sqr(c))))/(4*c)
  IF(real(c)*real(c)-imag(c)*imag(c)-5>=0)
    flag=1-flag
  ENDIF
  IF(imag(c)<0)
    flag=1-flag
  ENDIF
  IF(flag==1)
    z=(3+sqr(c)-sqrt(9-10*sqr(c)+sqr(sqr(c))))/(4*c)
  ENDIF
  :
  z2=sqr(z)
  z=a*z2*(z-c)/(1-c*z)
  iter=iter+1
  IF(lastsqr<r || lastsqr>rr)
    color=(iter/maxit)*127
    IF(color<1)
      color=1
    ELSEIF(color>127)
      color=127
    ENDIF
    IF(lastsqr<r)
      color=color+127
    ENDIF
    z=color-iter-7
    done=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


hroot (XAXIS) {
   ; Map hydra function to the Square root of the pixel value.
  z = pixel^0.5, zp=(0,0):
  temp = z
  z = z*z +  zp
  zp = temp 
  |zp| <= 4 
  ;SOURCE: noel.frm
}


hsqr (XYAXIS) {
   ; squaring the initialized value of the hydra fractal
  z = pixel^2, zp=(0,0):
  temp = z
  z = z*z +  zp
  zp = temp 
  |zp| <= 4 
  ;SOURCE: noel.frm
}


ht {
   ; Ah! You can use a variable in the 
   ; inversion but now check for overflow.
   ; Good results are found when the real part 
   ; of p1 is in the range 0.1->1.0
   ; With some sort of special value aprox. 0.148148...
   ; Setting the imaginary part as well causes very strange fractals
  z = pixel, zp=temp=(0,0), huge=1.0e32:
  temp = z
  z = z*z + zp
  zp = p1/temp 
  (|zp| <= 64) && (|z| <= huge) 
  ;SOURCE: noel.frm
}


ht1 {
   ; Ah! You can use a variable in the 
   ; inversion but now check for overflow.
   ; Good results are found when the real part 
   ; of p1 is in the range 0.1->1.0
   ; With some sort of special value aprox. 0.148148...
   ; Setting the imaginary part as well causes very strange fractals
  z = pixel, zp=temp=(0,0), huge=1.0e32:
  temp = z
  z = z*z + zp
  zp = p1/temp 
  (|zp| <= 64) && (|z| <= huge) 
  ;SOURCE: noel.frm
}


htc {
   ; You can do it with a constant too.
  z = c = pixel, zp=(0,0), huge=1.0e32:
  temp = z
  z = z*z + zp
  zp = c*p1/temp 
  (|zp| <= 64) && (|z| <= huge) 
  ;SOURCE: noel.frm
}


htd {
   ; Try a second order inductive term.
  z = zp2 = pixel, zp1 = (0,0), huge=1.0e32:
  temp = z
  z = zp1*zp1 - zp2
  zp2 = zp1
  zp1 = p1/temp 
  (|zp1| <= 64) && (|z| <= huge) 
  ;SOURCE: noel.frm
}


htexp1 {
   ; An exponential function can produce fractals as well
  z = pixel, bail=real(p2), zp = (0,0), huge=1.e32:
  temp = z
  z = -exp(z) - zp
  zp = p1/temp 
  (|zp| <=bail && |z| <=huge)
  ;SOURCE: noel.frm
}


htexp2 {
   ; An exponential function can produce fractals as well
  z = pixel, bail=real(p2), zp = (0,0), huge=1.e32:
  temp = z
  z = exp(z) - zp
  zp = p1/temp 
  (|zp| <=bail && |z| <=huge)
  ;SOURCE: noel.frm
}


htexp3 {
   ; An exponential function can produce fractals as well
  z = pixel, bail=real(p2), zp = (0,0), huge=1.e32:
  temp = z
  z = exp(z) + zp
  zp = p1/temp 
  (|zp| <=bail && |z| <=huge)
  ;SOURCE: noel.frm
}


htgen {
   ; Try a second order inductive term.
  z = pixel, zp1 = (0,0), bail=real(p2), huge=1.0e32:
  temp = z
  z = z*z + zp1
  zp1 = p1/temp
  (|zp1| <= bail) && (|z| <= huge) 
  ;SOURCE: noel.frm
}


htjul_inv {
  z =1/pixel, zp1=zp2=(0,0), huge=1.0e32:
  temp = z
  z = z*z + zp2
  zp2 = zp1
  zp1 = p1/temp*temp 
  (|zp2| <= huge) && (|z| <= huge) 
  ;SOURCE: fract182.frm
}


htjulia {; A new mandelbrot julia type from Noel Giffin.
  z = pixel, zp1=zp2=(0,0), huge=1.0e32:
  temp = z
  z = z*z + zp2
  zp2 = zp1
  zp1 = p1/temp*temp 
  (|zp2| <= huge) && (|z| <= huge) 
  ;SOURCE: fract182.frm
}


htree (XAXIS) {
   ; Try a different order of the terms.
  z = zp2 = pixel,  zp1 = (0,0), huge = 1.0e32:
  temp = z
  z = zp1*zp1  - zp2
  zp2 = zp1
  zp1 = p1/temp 
  (|zp1| <= 64) && (|z| <= huge) 
  ;SOURCE: noel.frm
}


htz0 {; From Noel Giffin noel@triumf.ca
      ; some unusual julia intializations
  z = pixel^3:
  z = z*z + p1
  (|z| <= 4.) 
  ;SOURCE: noel1.frm
}


htzi {; From Noel Giffin noel@triumf.ca
      ; some unusual julia intializations 
  z =(1.0,1.0)/pixel^4:
  z = z^2 + p1
  |z| <=32767.0 
  ;SOURCE: noel1.frm
}


htzsin {; From Noel Giffin noel@triumf.ca
        ; some unusual julia intializations 
  z = sin(pixel)^4:
  z = z*z + p1 
  |z| <=4.0 
  ;SOURCE: noel1.frm
}


htzsini {; From Noel Giffin noel@triumf.ca
         ; some unusual julia intializations 
  z = 1/sin(pixel)^4:
  z = z*z + p1
  |z| <=4.0 
  ;SOURCE: noel1.frm
}


hualp (XAXIS) {; (c) Copyright 1996 by Manfred W.Rupp
  z=pixel:
  z=fn1((z^z / (1/z^4)+p1) + pixel)*(1/z^1.257)
  |real(z)| <= real(p2) || |imag(z)| <= imag(p2)
  ;SOURCE: hualp.frm
}


hybrid-J {; An unusual hybrid julia type alternating 
          ; between two constants. Noel Giffin
  z = pixel, zp1 = p1, zp2 = p2:
  z = z*z + zp2
  temp = zp2
  zp2 = zp1
  zp1 = temp 
  |z| <= 4.0 
  ;SOURCE: noel2.frm
}


hybrid-M {; A hybrid mandelbrot/julia type where the calculation 
          ; alternates between a mandelbrot calculation and a Julia. 
          ; Noel Giffin
  z = zp1 = pixel, zp2 = p1:
  z = z*z + zp2
  temp = zp2
  zp2 = zp1
  zp1 = temp 
  |z| <= 4.0 
  ;SOURCE: noel2.frm
}


HyCycl_Julia {; Copyright (c) Paul W. Carlson, 1998
  z = w = iter = range_num = bailout = 0
  w = pixel
  c = p1
  i = (0,1)
  k = 1.2 - p3
  :
  w = w * w, wr = real(w)
  w = w - wr + abs(wr) - c
  angle = atan(imag(w)/wr)
  ka = k * angle / p3
  rw = k * cos(angle) + p3 * cos(ka)
  iw = k * sin(angle) + p3 * sin(ka)
  ww = rw + i * iw
  dist = abs(|w|-|ww|)
  IF (dist < p2 && iter > 1)
    bailout = 1
    index = 125 * dist / p2
    z = index + range_num * 125 + 1
  ENDIF
  iter = iter + 1
  range_num = range_num + 1
  IF (range_num == 2)
    range_num = 0
  ENDIF
  z = z - iter
  bailout == 0 && |w| < 10000
  ;SOURCE: 98msg.frm
}


hydra (XAXIS) {
   ; The first inductive formula I came up with.
  z = pixel, zp = (0,0):
  temp = z
  z = z*z + zp
  zp = temp 
  |zp| <= 4 
  ;SOURCE: noel.frm
}


Hyperbolabrot1 (XAXIS) {; Tom Schumm
   ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):               ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  sqr(imag(z)) >= (sqr(real(z))-16)    ; Different escape boundry
  ;SOURCE: phong.frm
}


Hyperbolabrot2 (XAXIS) {; Tom Schumm
   ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):               ; Just like mandel
  z = z + Pixel
  z = Sqr(z)
  sqr(imag(z)) <= (sqr(real(z))+16)    ; Different escape boundry
  ;SOURCE: phong.frm
}


Hyperbolaia1 (ORIGIN) {; Tom Schumm
   ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):               ; Just like julia
  z = z + p1
  z = Sqr(z)
  sqr(imag(z)) >= (sqr(real(z))-16)    ; Different escape boundry
  ;SOURCE: phong2.frm
}


Hyperbolaia2 (ORIGIN) {; Tom Schumm
   ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):               ; Just like julia
  z = z + p1
  z = Sqr(z)
  sqr(imag(z)) <= (sqr(real(z))+16)    ; Different escape boundry
  ;SOURCE: phong2.frm
}


HyperBrot {; formula Jim Muth
  a=real(p1), b=imag(p1)
  d=real(p2), h=imag(p2), f=p3:
  z=z+1
  g=sqr(a)-sqr(b)+pixel
  b=d*a*b+f
  a=h*g
  |a|+|b| <= 9
  ;SOURCE: 98msg.frm
}


HyperBrotI {; Jim Muth
  a=p1, b=(0,0), d=real(p2)
  h=imag(p2), f=p3:
  g=sqr(a)-sqr(b)+pixel
  b=d*a*b+f
  a=h*g
  |a|+|b| <= 9
  ;SOURCE: 98msg.frm
}


HyperBrotII {; Jim Muth
  a=p1, b=(0,0), d=real(p2)
  h=imag(p2), f=p3:
  g=sqr(a)-sqr(b)+pixel
  b=d*a*b+f
  a=h*g
  |a|-|b| <= 9
  ;SOURCE: 98msg.frm
}


HyperBrotIII {; Jim Muth
  a=p1, b=(0,0), d=real(p2)
  h=imag(p2), f=p3:
  g=sqr(a)-sqr(b)+pixel
  b=d*a*b+f
  a=h*g
  |a|*|b| <= 9
  ;SOURCE: 98msg.frm
}


HyperBrotVII {; Jim Muth, formula
  a=(0,0), b=(0,0), x=real(p1), y=imag(p1)
  d=real(p2), h=imag(p2), f=p3:
  g=a^x-b^y+pixel
  b=d*a*b+f
  a=h*g
  |a|+|b| <= 9
  ;SOURCE: 98msg.frm
}


hyperc-newton {
  p = (0,1)*p1, ex = p2 - 1
  a = pixel + p, b = pixel - p:
  a2 = a^ex, b2 = b^ex
  na = a2*a - 1, da = p2*a2
  nb = b2*b - 1, db = p2*b2
  a = a - na/da, b = b - nb/db
  |na| + |nb| >= 0.000001
  ;SOURCE: hyp_newt.frm
}


hypercomplex {; Chuck Ebbert -- must use periodicity=0
   ; P1 is (cj,ck), bailout is real(p2) (default 64)
  z = zi = 0
  t = (64 * (real(p2)<=0) + real(p2) * (0<real(p2)) ):
  a = z - imag(zi) + flip(real(zi))
  b = z + imag(zi) - flip(real(zi))
  a = fn1(a)
  b = fn1(b)
  z = (a+b)/2 + pixel
  zi = (imag(a)-imag(b)+flip(real(b))-flip(real(a)))/2 + p1
  |z| + |zi| <= t
  ;SOURCE: msg1.frm
}


HyperMandel {; Chris Green.
   ; A four dimensional version of the mandelbrot set.
   ; Use P1 to select which two-dimensional plane of the
   ; four dimensional set you wish to examine.
   ; Use floating point.
  a=(0,0), b=(0,0):
  z=z+1
  anew=sqr(a)-sqr(b)+pixel
  b=2.0*a*b+p1
  a=anew
  |a|+|b| <= 4
  ;SOURCE: fractint.frm
}


HyperSqrTest {; Jim Muth
              ; As posted in Fractal-Art, 5/3/97
              ; Replaced variable "e" with "ee", 5/7/99. G. Martin
  a=real(p1), b=imag(p1), c=real(p2)
  d=imag(p2), ee=real(p3), f=imag(p3):
  g=(a^c)-(b^d)+pixel
  b=ee*a*b+f
  a=g
  |a|+|b| <= 100
  ;SOURCE: 97msg.frm
}


HyperSquare {; Jim Muth
  a=(p1), b=(0,0):
  q=sqr(a)-sqr(b)+pixel
  b=p2*a*b+p3
  a=q
  |a|+|b| <= 100
  ;SOURCE: 97msg.frm
}

