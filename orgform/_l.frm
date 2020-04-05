

L02-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (Euler method)
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(x/2-2)+1
  Ty=y*(y/2-2)+1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


L02-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  bailout=p1+4, z=pixel:
  z=z*(z/2-2)+1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


L02-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Julia)
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  const=p1+1, z=pixel:
  z=z*(z/2-2)+const
  |z|<100
  ;SOURCE: chby3.frm
}


L02-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Mandelbrot)
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  const=pixel+1, z=p1:
  z=z*(z/2-2)+const
  |z|<100
  ;SOURCE: chby4.frm
}


L02-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Newton Method
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z/2-2)+1
  fd=z-2
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


L02-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Halley Method
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z/2-2)+1
  fd=z-2
  oz=z
  z=z-r*f/(fd-f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


L02-07 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Bradley Beacham
        ; Cubic Method
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  bailout=real(p2)/10000, z=pixel:
  f=z*(z/2-2)+1
  fd=z-2
  oz=z
  w=f-f/fd
  fw=w*(w/2-2)+1
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


L02-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler method)
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(x*(x/2-2)+1)
  Ty=sin(y*(y/2-2)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


L02-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler Method)
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x/2-2)+1)
  Ty=fn1(y*(y/2-2)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


L02-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Mike Wareman:
        ; Secant Method
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1-2:
  zt=z
  foz=fz
  fz=z-2
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


L02-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Julia)
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  const=p1, z=pixel:
  z=(z*(z/2-2)+1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


L02-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Mandelbrot)
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  const=pixel, z=p1:
  z=(z*(z/2-2)+1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


L02-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Halley Method with weird bailout test
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z/2-2)+1
  fd=z-2
  oz=z
  z=z-f/(fd-f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


L02-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Bradley Beacham
        ; Cubic Method with weird bailout test
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  bailout=real(p2)/10000, z=pixel:
  f=z*(z/2-2)+1
  fd=z-2
  oz=z
  w=f-f/fd
  fw=w*(w/2-2)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


L02-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Newton Method with weird bailout test
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z/2-2)+1
  fd=z-2
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


L02-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Mike Wareman:
        ; Secant Method with weird bailout test
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1-2:
  zt=z
  foz=fz
  fz=z-2
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


L02-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Mike Wareman
        ; Secant Method with Girvan perturbations and weird bailout test
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  z=pixel, oz=0
  fz=-2
  zt=fn1(z)+p1:
  foz=fz
  fz=z-2
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


L02-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Mike Wareman
        ; Secant Method with Girvan perturbations and weird bailout test
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  z=pixel, oz=0
  fz=-2
  zt=fn1(z)+p1:
  foz=fz
  fz=z-2
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


L02-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (Implicit Euler method)
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(x*(x/2-2)+1)
  x=x-t*(y*(y/2-2)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


L02-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler method)
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(x*(x/2-2)+1)
  x=x-t*sin(y*(y/2-2)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


L02-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler method)
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x/2-2)+1))
  x=x-t*(fn1(y*(y/2-2)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


L02-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler method)
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x/2-2)+1)
  Ty=fn2(y*(y/2-2)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


L02-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler method)
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(x*(x/2-2)+1)
  Ty=fn2(y*(y/2-2)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


L02-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler Method)
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x/2-2)+1))
  x=x-t*(fn2(y*(y/2-2)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


L02-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler Method)
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x/2-2)+1))
  x=x-t*(fn2(y*(y/2-2)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


L02-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Kathy Roth:
        ; Dynamic (modified implicit Euler Method, gravitated)
        ;
        ; Laguerre Polynomials
        ; L[0]=1
        ; L[1]=1-z
        ; L[n+1] = ((2n+1-z)L[n]-nL[n-1])/(n+1)
        ;
        ; = ((3-z)L(1)-L(0))/2
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x/2-2)+1))
  Ty=(fn1(y*(y/2-2)+1))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


L02-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Kathy Roth:
        ; Dynamic (modified implicit Euler Method, popped)
        ;
        ; Laguerre Polynomials
        ; L[0]=1
        ; L[1]=1-z
        ; L[n+1] = ((2n+1-z)L[n]-nL[n-1])/(n+1)
        ;
        ; = ((3-z)L(1)-L(0))/2
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x/2-2)+1))
  Ty=(fn1(y*(y/2-2)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


L02-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Kathy Roth:
        ; Dynamic (modified implicit Euler Method, popped)
        ;
        ; Laguerre Polynomials
        ; L[0]=1
        ; L[1]=1-z
        ; L[n+1] = ((2n+1-z)L[n]-nL[n-1])/(n+1)
        ;
        ; = ((3-z)L(1)-L(0))/2
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x/2-2)+1))
  Ty=(fn1(y*(y/2-2)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


L02-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler method, Sylvie Gallet test)
        ;
        ; Laguerre Polynomials
        ; L[0]=1
        ; L[1]=1-z
        ; L[n+1] = ((2n+1-z)L[n]-nL[n-1])/(n+1)
        ;
        ; = ((3-z)L(1)-L(0))/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x/2-2)+1))
  Ty=(fn1(y*(y/2-2)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


L02-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Ray Parracho:
        ; Regula-Falsi Method
        ;
        ; Laguerre Polynomials
        ; L[0]=1
        ; L[1]=1-z
        ; L[n+1] = ((2n+1-z)L[n]-nL[n-1])/(n+1)
        ;
        ; = ((3-z)L(1)-L(0))/2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0/2-2)+1
  Fx1=x1*(x1/2-2)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


L03-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(x*(3-x/3)/2-3)+1
  Ty=y*(y*(3-y/3)/2-3)+1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


L03-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  bailout=p1+4, z=pixel:
  z=z*(z*(3-z/3)/2-3)+1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


L03-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  const=p1+1, z=pixel:
  z=z*(z*(3-z/3)/2-3)+const
  |z|<100
  ;SOURCE: chby3.frm
}


L03-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  const=pixel+1, z=p1:
  z=z*(z*(3-z/3)/2-3)+const
  |z|<100
  ;SOURCE: chby4.frm
}


L03-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(3-z/3)/2-3)+1
  fd=z*(3-z/2)-3
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


L03-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(3-z/3)/2-3)+1
  fd=z*(3-z/2)-3
  fdd=3-z
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


L03-07 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(3-z/3)/2-3)+1
  fd=z*(3-z/2)-3
  oz=z
  w=f-f/fd
  fw=w*(w*(3-w/3)/2-3)+1
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


L03-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(x*(x*(3-x/3)/2-3)+1)
  Ty=sin(y*(y*(3-y/3)/2-3)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


L03-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(3-x/3)/2-3)+1)
  Ty=fn1(y*(y*(3-y/3)/2-3)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


L03-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(3-p1/2)-3:
  zt=z
  foz=fz
  fz=z*(3-z/2)-3
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


L03-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  const=p1, z=pixel:
  z=(z*(z*(3-z/3)/2-3)+1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


L03-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  const=pixel, z=p1:
  z=(z*(z*(3-z/3)/2-3)+1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


L03-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(3-z/3)/2-3)+1
  fd=z*(3-z/2)-3
  fdd=3-z
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


L03-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(3-z/3)/2-3)+1
  fd=z*(3-z/2)-3
  oz=z
  w=f-f/fd
  fw=w*(w*(3-w/3)/2-3)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


L03-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(3-z/3)/2-3)+1
  fd=z*(3-z/2)-3
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


L03-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(3-p1/2)-3:
  zt=z
  foz=fz
  fz=z*(3-z/2)-3
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


L03-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  z=pixel, oz=0
  fz=-3
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(3-z/2)-3
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


L03-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  z=pixel, oz=0
  fz=-3
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(3-z/2)-3
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


L03-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(x*(x*(3-x/3)/2-3)+1)
  x=x-t*(y*(y*(3-y/3)/2-3)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


L03-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(x*(x*(3-x/3)/2-3)+1)
  x=x-t*sin(y*(y*(3-y/3)/2-3)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


L03-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(3-x/3)/2-3)+1))
  x=x-t*(fn1(y*(y*(3-y/3)/2-3)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


L03-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(3-x/3)/2-3)+1)
  Ty=fn2(y*(y*(3-y/3)/2-3)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


L03-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(3-x/3)/2-3)+1)
  Ty=fn2(y*(y*(3-y/3)/2-3)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


L03-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(3-x/3)/2-3)+1))
  x=x-t*(fn2(y*(y*(3-y/3)/2-3)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


L03-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(3-x/3)/2-3)+1))
  x=x-t*(fn2(y*(y*(3-y/3)/2-3)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


L03-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(3-x/3)/2-3)+1))
  Ty=(fn1(y*(y*(3-y/3)/2-3)+1))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


L03-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(3-x/3)/2-3)+1))
  Ty=(fn1(y*(y*(3-y/3)/2-3)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


L03-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(3-x/3)/2-3)+1))
  Ty=(fn1(y*(y*(3-y/3)/2-3)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


L03-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(3-x/3)/2-3)+1))
  Ty=(fn1(y*(y*(3-y/3)/2-3)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


L03-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(3-x0/3)/2-3)+1
  Fx1=x1*(x1*(3-x1/3)/2-3)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


L04-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(x*(x*(x/8-2)/3+3)-4)+1
  Ty=y*(y*(y*(y/8-2)/3+3)-4)+1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


L04-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  bailout=p1+4, z=pixel:
  z=z*(z*(z*(z/8-2)/3+3)-4)+1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


L04-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  const=p1+1, z=pixel:
  z=z*(z*(z*(z/8-2)/3+3)-4)+const
  |z|<100
  ;SOURCE: chby3.frm
}


L04-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  const=pixel+1, z=p1:
  z=z*(z*(z*(z/8-2)/3+3)-4)+const
  |z|<100
  ;SOURCE: chby4.frm
}


L04-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z/8-2)/3+3)-4)+1
  fd=z*(z*(z/6-2)+6)-4
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


L04-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z/8-2)/3+3)-4)+1
  fd=z*(z*(z/6-2)+6)-4
  fdd=(z*(z/3-2)+6)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


L04-07 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z/8-2)/3+3)-4)+1
  fd=z*(z*(z/6-2)+6)-4
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w/8-2)/3+3)-4)+1
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


L04-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(x*(x*(x*(x/8-2)/3+3)-4)+1)
  Ty=sin(y*(y*(y*(y/8-2)/3+3)-4)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


L04-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x/8-2)/3+3)-4)+1)
  Ty=fn1(y*(y*(y*(y/8-2)/3+3)-4)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


L04-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(p1*(p1*(p1/8-2)/3+3)-4)+1:
  zt=z
  foz=fz
  fz=z*(z*(z*(z/8-2)/3+3)-4)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


L04-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  const=p1, z=pixel:
  z=(z*(z*(z*(z/8-2)/3+3)-4)+1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


L04-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  const=pixel, z=p1:
  z=(z*(z*(z*(z/8-2)/3+3)-4)+1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


L04-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z/8-2)/3+3)-4)+1
  fd=z*(z*(z/6-2)+6)-4
  fdd=(z*(z/3-2)+6)
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


L04-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z/8-2)/3+3)-4)+1
  fd=z*(z*(z/6-2)+6)-4
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w/8-2)/3+3)-4)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


L04-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z/8-2)/3+3)-4)+1
  fd=z*(z*(z/6-2)+6)-4
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


L04-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(p1*(p1*(p1/8-2)/3+3)-4)+1:
  zt=z
  foz=fz
  fz=z*(z*(z*(z/8-2)/3+3)-4)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


L04-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z/8-2)/3+3)-4)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


L04-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z/8-2)/3+3)-4)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


L04-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(x*(x*(x*(x/8-2)/3+3)-4)+1)
  x=x-t*(y*(y*(y*(y/8-2)/3+3)-4)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


L04-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(x*(x*(x*(x/8-2)/3+3)-4)+1)
  x=x-t*sin(y*(y*(y*(y/8-2)/3+3)-4)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


L04-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x/8-2)/3+3)-4)+1))
  x=x-t*(fn1(y*(y*(y*(y/8-2)/3+3)-4)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


L04-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x/8-2)/3+3)-4)+1)
  Ty=fn2(y*(y*(y*(y/8-2)/3+3)-4)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


L04-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x/8-2)/3+3)-4)+1)
  Ty=fn2(y*(y*(y*(y/8-2)/3+3)-4)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


L04-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x/8-2)/3+3)-4)+1))
  x=x-t*(fn2(y*(y*(y*(y/8-2)/3+3)-4)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


L04-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x/8-2)/3+3)-4)+1))
  x=x-t*(fn2(y*(y*(y*(y/8-2)/3+3)-4)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


L04-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(x*(x/8-2)/3+3)-4)+1))
  Ty=(fn1(y*(y*(y*(y/8-2)/3+3)-4)+1))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


L04-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(x*(x/8-2)/3+3)-4)+1))
  Ty=(fn1(y*(y*(y*(y/8-2)/3+3)-4)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


L04-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(x*(x/8-2)/3+3)-4)+1))
  Ty=(fn1(y*(y*(y*(y/8-2)/3+3)-4)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


L04-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(x*(x/8-2)/3+3)-4)+1))
  Ty=(fn1(y*(y*(y*(y/8-2)/3+3)-4)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


L04-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(x0*(x0/8-2)/3+3)-4)+1
  Fx1=x1*(x1*(x1*(x1/8-2)/3+3)-4)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


L05-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(x*(x*(x*(5-x/5)/8-5)/3+5)-5)+1
  Ty=y*(y*(y*(y*(5-y/5)/8-5)/3+5)-5)+1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


L05-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  bailout=p1+4, z=pixel:
  z=z*(z*(z*(z*(5-z/5)/8-5)/3+5)-5)+1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


L05-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  const=p1+1, z=pixel:
  z=z*(z*(z*(z*(5-z/5)/8-5)/3+5)-5)+const
  |z|<100
  ;SOURCE: chby3.frm
}


L05-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  const=pixel+1, z=p1:
  z=z*(z*(z*(z*(5-z/5)/8-5)/3+5)-5)+const
  |z|<100
  ;SOURCE: chby4.frm
}


L05-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(5-z/5)/8-5)/3+5)-5)+1
  fd=z*(z*(z*(20-z)/24-5)+10)-5
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


L05-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(5-z/5)/8-5)/3+5)-5)+1
  fd=z*(z*(z*(20-z)/24-5)+10)-5
  fdd=(z*(z*(40-3*z)/24-5)+10)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


L05-07 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(5-z/5)/8-5)/3+5)-5)+1
  fd=z*(z*(z*(20-z)/24-5)+10)-5
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(5-w/5)/8-5)/3+5)-5)+1
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


L05-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(x*(x*(x*(x*(5-x/5)/8-5)/3+5)-5)+1)
  Ty=sin(y*(y*(y*(y*(5-y/5)/8-5)/3+5)-5)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


L05-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(5-x/5)/8-5)/3+5)-5)+1)
  Ty=fn1(y*(y*(y*(y*(5-y/5)/8-5)/3+5)-5)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


L05-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(p1*(p1*(p1*(5-p1/5)/8-5)/3+5)-5)+1:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(5-z/5)/8-5)/3+5)-5)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


L05-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  const=p1, z=pixel:
  z=(z*(z*(z*(z*(5-z/5)/8-5)/3+5)-5)+1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


L05-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  const=pixel, z=p1:
  z=(z*(z*(z*(z*(5-z/5)/8-5)/3+5)-5)+1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


L05-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(5-z/5)/8-5)/3+5)-5)+1
  fd=z*(z*(z*(20-z)/24-5)+10)-5
  fdd=(z*(z*(40-3*z)/24-5)+10)
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


L05-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(5-z/5)/8-5)/3+5)-5)+1
  fd=z*(z*(z*(20-z)/24-5)+10)-5
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(5-w/5)/8-5)/3+5)-5)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


L05-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(5-z/5)/8-5)/3+5)-5)+1
  fd=z*(z*(z*(20-z)/24-5)+10)-5
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


L05-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(p1*(p1*(p1*(5-p1/5)/8-5)/3+5)-5)+1:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(5-z/5)/8-5)/3+5)-5)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


L05-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(5-z/5)/8-5)/3+5)-5)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


L05-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(5-z/5)/8-5)/3+5)-5)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


L05-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(x*(x*(x*(x*(5-x/5)/8-5)/3+5)-5)+1)
  x=x-t*(y*(y*(y*(y*(5-y/5)/8-5)/3+5)-5)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


L05-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(x*(x*(x*(x*(5-x/5)/8-5)/3+5)-5)+1)
  x=x-t*sin(y*(y*(y*(y*(5-y/5)/8-5)/3+5)-5)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


L05-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(5-x/5)/8-5)/3+5)-5)+1))
  x=x-t*(fn1(y*(y*(y*(y*(5-y/5)/8-5)/3+5)-5)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


L05-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(5-x/5)/8-5)/3+5)-5)+1)
  Ty=fn2(y*(y*(y*(y*(5-y/5)/8-5)/3+5)-5)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


L05-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(5-x/5)/8-5)/3+5)-5)+1)
  Ty=fn2(y*(y*(y*(y*(5-y/5)/8-5)/3+5)-5)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


L05-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(5-x/5)/8-5)/3+5)-5)+1))
  x=x-t*(fn2(y*(y*(y*(y*(5-y/5)/8-5)/3+5)-5)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


L05-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(5-x/5)/8-5)/3+5)-5)+1))
  x=x-t*(fn2(y*(y*(y*(y*(5-y/5)/8-5)/3+5)-5)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


L05-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(x*(x*(5-x/5)/8-5)/3+5)-5)+1))
  Ty=(fn1(y*(y*(y*(y*(5-y/5)/8-5)/3+5)-5)+1))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


L05-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(x*(x*(5-x/5)/8-5)/3+5)-5)+1))
  Ty=(fn1(y*(y*(y*(y*(5-y/5)/8-5)/3+5)-5)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


L05-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(x*(x*(5-x/5)/8-5)/3+5)-5)+1))
  Ty=(fn1(y*(y*(y*(y*(5-y/5)/8-5)/3+5)-5)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


L05-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(x*(x*(5-x/5)/8-5)/3+5)-5)+1))
  Ty=(fn1(y*(y*(y*(y*(5-y/5)/8-5)/3+5)-5)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


L05-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(x0*(x0*(5-x0/5)/8-5)/3+5)-5)+1
  Fx1=x1*(x1*(x1*(x1*(5-x1/5)/8-5)/3+5)-5)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


L06-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(x*(x*(x*(x*(x/18-2)/5+5)/8-10/3)+15/2)-6)+1
  Ty=y*(y*(y*(y*(y*(y/18-2)/5+5)/8-10/3)+15/2)-6)+1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


L06-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  bailout=p1+4, z=pixel:
  z=z*(z*(z*(z*(z*(z/18-2)/5+5)/8-10/3)+15/2)-6)+1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


L06-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  const=p1+1, z=pixel:
  z=z*(z*(z*(z*(z*(z/18-2)/5+5)/8-10/3)+15/2)-6)+const
  |z|<100
  ;SOURCE: chby3.frm
}


L06-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  const=pixel+1, z=p1:
  z=z*(z*(z*(z*(z*(z/18-2)/5+5)/8-10/3)+15/2)-6)+const
  |z|<100
  ;SOURCE: chby4.frm
}


L06-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z/18-2)/5+5)/8-10/3)+15/2)-6)+1
  fd=z*(z*(z*(z*(z/15-2)+20)/8-10)+15)-6
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


L06-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z/18-2)/5+5)/8-10/3)+15/2)-6)+1
  fd=z*(z*(z*(z*(z/15-2)+20)/8-10)+15)-6
  fdd=(z*(z*(z*(z/3-8)+60)/8-20)+15)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


L06-07 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z/18-2)/5+5)/8-10/3)+15/2)-6)+1
  fd=z*(z*(z*(z*(z/15-2)+20)/8-10)+15)-6
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(w*(w/18-2)/5+5)/8-10/3)+15/2)-6)+1
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


L06-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(x*(x*(x*(x*(x*(x/18-2)/5+5)/8-10/3)+15/2)-6)+1)
  Ty=sin(y*(y*(y*(y*(y*(y/18-2)/5+5)/8-10/3)+15/2)-6)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


L06-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(x*(x/18-2)/5+5)/8-10/3)+15/2)-6)+1)
  Ty=fn1(y*(y*(y*(y*(y*(y/18-2)/5+5)/8-10/3)+15/2)-6)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


L06-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(p1*(p1*(p1*(p1*(p1/18-2)/5+5)/8-10/3)+15/2)-6)+1:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(z*(z/18-2)/5+5)/8-10/3)+15/2)-6)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


L06-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  const=p1, z=pixel:
  z=(z*(z*(z*(z*(z*(z/18-2)/5+5)/8-10/3)+15/2)-6)+1)*const
 |z|<100
  ;SOURCE: chby11.frm
}


L06-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  const=pixel, z=p1:
  z=(z*(z*(z*(z*(z*(z/18-2)/5+5)/8-10/3)+15/2)-6)+1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


L06-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z/18-2)/5+5)/8-10/3)+15/2)-6)+1
  fd=z*(z*(z*(z*(z/15-2)+20)/8-10)+15)-6
  fdd=(z*(z*(z*(z/3-8)+60)/8-20)+15)
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


L06-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z/18-2)/5+5)/8-10/3)+15/2)-6)+1
  fd=z*(z*(z*(z*(z/15-2)+20)/8-10)+15)-6
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(w*(w/18-2)/5+5)/8-10/3)+15/2)-6)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


L06-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z/18-2)/5+5)/8-10/3)+15/2)-6)+1
  fd=z*(z*(z*(z*(z/15-2)+20)/8-10)+15)-6
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


L06-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(p1*(p1*(p1*(p1*(p1/18-2)/5+5)/8-10/3)+15/2)-6)+1:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(z*(z/18-2)/5+5)/8-10/3)+15/2)-6)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


L06-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(z*(z/18-2)/5+5)/8-10/3)+15/2)-6)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


L06-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(z*(z/18-2)/5+5)/8-10/3)+15/2)-6)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


L06-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(x*(x*(x*(x*(x*(x/18-2)/5+5)/8-10/3)+15/2)-6)+1)
  x=x-t*(y*(y*(y*(y*(y*(y/18-2)/5+5)/8-10/3)+15/2)-6)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


L06-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(x*(x*(x*(x*(x*(x/18-2)/5+5)/8-10/3)+15/2)-6)+1)
  x=x-t*sin(y*(y*(y*(y*(y*(y/18-2)/5+5)/8-10/3)+15/2)-6)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


L06-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x/18-2)/5+5)/8-10/3)+15/2)-6)+1))
  x=x-t*(fn1(y*(y*(y*(y*(y*(y/18-2)/5+5)/8-10/3)+15/2)-6)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


L06-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(x*(x/18-2)/5+5)/8-10/3)+15/2)-6)+1)
  Ty=fn2(y*(y*(y*(y*(y*(y/18-2)/5+5)/8-10/3)+15/2)-6)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


L06-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(x*(x/18-2)/5+5)/8-10/3)+15/2)-6)+1)
  Ty=fn2(y*(y*(y*(y*(y*(y/18-2)/5+5)/8-10/3)+15/2)-6)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


L06-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x/18-2)/5+5)/8-10/3)+15/2)-6)+1))
  x=x-t*(fn2(y*(y*(y*(y*(y*(y/18-2)/5+5)/8-10/3)+15/2)-6)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


L06-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x/18-2)/5+5)/8-10/3)+15/2)-6)+1))
  x=x-t*(fn2(y*(y*(y*(y*(y*(y/18-2)/5+5)/8-10/3)+15/2)-6)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


L06-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(x*(x*(x*(x/18-2)/5+5)/8-10/3)+15/2)-6)+1))
  Ty=(fn1(y*(y*(y*(y*(y*(y/18-2)/5+5)/8-10/3)+15/2)-6)+1))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


L06-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(x*(x*(x*(x/18-2)/5+5)/8-10/3)+15/2)-6)+1))
  Ty=(fn1(y*(y*(y*(y*(y*(y/18-2)/5+5)/8-10/3)+15/2)-6)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


L06-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(x*(x*(x*(x/18-2)/5+5)/8-10/3)+15/2)-6)+1))
  Ty=(fn1(y*(y*(y*(y*(y*(y/18-2)/5+5)/8-10/3)+15/2)-6)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


L06-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(x*(x*(x*(x/18-2)/5+5)/8-10/3)+15/2)-6)+1))
  Ty=(fn1(y*(y*(y*(y*(y*(y/18-2)/5+5)/8-10/3)+15/2)-6)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


L06-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(x0*(x0*(x0*(x0/18-2)/5+5)/8-10/3)+15/2)-6)+1
  Fx1=x1*(x1*(x1*(x1*(x1*(x1/18-2)/5+5)/8-10/3)+15/2)-6)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


L07-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(x*(x*(x*(x*(x*(49-x)/2-441)/5+735)/84-35)/3+21)/2-7)+1
  Ty=y*(y*(y*(y*(y*(y*(49-y)/2-441)/5+735)/84-35)/3+21)/2-7)+1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


L07-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  bailout=p1+4, z=pixel:
  z=z*(z*(z*(z*(z*(z*(49-z)/2-441)/5+735)/84-35)/3+21)/2-7)+1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


L07-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  const=p1+1, z=pixel:
  z=z*(z*(z*(z*(z*(z*(49-z)/2-441)/5+735)/84-35)/3+21)/2-7)+const
  |z|<100
  ;SOURCE: chby3.frm
}


L07-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  const=pixel+1, z=p1:
  z=z*(z*(z*(z*(z*(z*(49-z)/2-441)/5+735)/84-35)/3+21)/2-7)+const
  |z|<100
  ;SOURCE: chby4.frm
}


L07-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(49-z)/2-441)/5+735)/84-35)/3+21)/2-7)+1
  fd=z*(z*(z*(z*(z*(42-z)/10-63)/12+35)/3-35)/2+21)-7
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


L07-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(49-z)/2-441)/5+735)/84-35)/3+21)/2-7)+1
  fd=z*(z*(z*(z*(z*(42-z)/10-63)/12+35)/3-35)/2+21)-7
  fdd=(z*(z*(z*(z*(21-3*z/5)/12-21)/3+35)/2-35)+21)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


L07-07 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(49-z)/2-441)/5+735)/84-35)/3+21)/2-7)+1
  fd=z*(z*(z*(z*(z*(42-z)/10-63)/12+35)/3-35)/2+21)-7
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(w*(w*(49-w)/2-441)/5+735)/84-35)/3+21)/2-7)+1
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


L07-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(x*(x*(x*(x*(x*(x*(49-x)/2-441)/5+735)/84-35)/3+21)/2-7)+1)
  Ty=sin(y*(y*(y*(y*(y*(y*(49-y)/2-441)/5+735)/84-35)/3+21)/2-7)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


L07-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(x*(x*(49-x)/2-441)/5+735)/84-35)/3+21)/2-7)+1)
  Ty=fn1(y*(y*(y*(y*(y*(y*(49-y)/2-441)/5+735)/84-35)/3+21)/2-7)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


L07-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(p1*(p1*(p1*(p1*(p1*(49-p1)/2-441)/5+735)/84-35)/3+21)/2-7)+1:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(49-z)/2-441)/5+735)/84-35)/3+21)/2-7)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


L07-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  const=p1, z=pixel:
  z=(z*(z*(z*(z*(z*(z*(49-z)/2-441)/5+735)/84-35)/3+21)/2-7)+1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


L07-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  const=pixel, z=p1:
  z=(z*(z*(z*(z*(z*(z*(49-z)/2-441)/5+735)/84-35)/3+21)/2-7)+1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


L07-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(49-z)/2-441)/5+735)/84-35)/3+21)/2-7)+1
  fd=z*(z*(z*(z*(z*(42-z)/10-63)/12+35)/3-35)/2+21)-7
  fdd=(z*(z*(z*(z*(21-3*z/5)/12-21)/3+35)/2-35)+21)
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


L07-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(49-z)/2-441)/5+735)/84-35)/3+21)/2-7)+1
  fd=z*(z*(z*(z*(z*(42-z)/10-63)/12+35)/3-35)/2+21)-7
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(w*(w*(49-w)/2-441)/5+735)/84-35)/3+21)/2-7)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


L07-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(49-z)/2-441)/5+735)/84-35)/3+21)/2-7)+1
  fd=z*(z*(z*(z*(z*(42-z)/10-63)/12+35)/3-35)/2+21)-7
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


L07-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(p1*(p1*(p1*(p1*(p1*(49-p1)/2-441)/5+735)/84-35)/3+21)/2-7)+1:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(49-z)/2-441)/5+735)/84-35)/3+21)/2-7)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


L07-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(49-z)/2-441)/5+735)/84-35)/3+21)/2-7)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


L07-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(49-z)/2-441)/5+735)/84-35)/3+21)/2-7)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


L07-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(x*(x*(x*(x*(x*(x*(49-x)/2-441)/5+735)/84-35)/3+21)/2-7)+1)
  x=x-t*(y*(y*(y*(y*(y*(y*(49-y)/2-441)/5+735)/84-35)/3+21)/2-7)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


L07-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(x*(x*(x*(x*(x*(x*(49-x)/2-441)/5+735)/84-35)/3+21)/2-7)+1)
  x=x-t*sin(y*(y*(y*(y*(y*(y*(49-y)/2-441)/5+735)/84-35)/3+21)/2-7)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


L07-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(49-x)/2-441)/5+735)/84-35)/3+21)/2-7)+1))
  x=x-t*(fn1(y*(y*(y*(y*(y*(y*(49-y)/2-441)/5+735)/84-35)/3+21)/2-7)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


L07-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(x*(x*(49-x)/2-441)/5+735)/84-35)/3+21)/2-7)+1)
  Ty=fn2(y*(y*(y*(y*(y*(y*(49-y)/2-441)/5+735)/84-35)/3+21)/2-7)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


L07-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(x*(x*(49-x)/2-441)/5+735)/84-35)/3+21)/2-7)+1)
  Ty=fn2(y*(y*(y*(y*(y*(y*(49-y)/2-441)/5+735)/84-35)/3+21)/2-7)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


L07-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(49-x)/2-441)/5+735)/84-35)/3+21)/2-7)+1))
  x=x-t*(fn2(y*(y*(y*(y*(y*(y*(49-y)/2-441)/5+735)/84-35)/3+21)/2-7)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


L07-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(49-x)/2-441)/5+735)/84-35)/3+21)/2-7)+1))
  x=x-t*(fn2(y*(y*(y*(y*(y*(y*(49-y)/2-441)/5+735)/84-35)/3+21)/2-7)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


L07-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(x*(x*(x*(x*(49-x)/2-441)/5+735)/84-35)/3+21)/2-7)+1))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(49-y)/2-441)/5+735)/84-35)/3+21)/2-7)+1))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


L07-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(x*(x*(x*(x*(49-x)/2-441)/5+735)/84-35)/3+21)/2-7)+1))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(49-y)/2-441)/5+735)/84-35)/3+21)/2-7)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


L07-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(x*(x*(x*(x*(49-x)/2-441)/5+735)/84-35)/3+21)/2-7)+1))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(49-y)/2-441)/5+735)/84-35)/3+21)/2-7)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


L07-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(x*(x*(x*(x*(49-x)/2-441)/5+735)/84-35)/3+21)/2-7)+1))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(49-y)/2-441)/5+735)/84-35)/3+21)/2-7)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30  
  ;SOURCE: chby29.frm
}


L07-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(x0*(x0*(x0*(x0*(49-x0)/2-441)/5+735)/84-35)/3+21)/2-7)+1
  Fx1=x1*(x1*(x1*(x1*(x1*(x1*(49-x1)/2-441)/5+735)/84-35)/3+21)/2-7)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


L08-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(x*(x*(x*(x*(x*(x*(x/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1
  Ty=y*(y*(y*(y*(y*(y*(y*(y/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


L08-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  bailout=p1+4, z=pixel:
  z=z*(z*(z*(z*(z*(z*(z*(z/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


L08-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  const=p1+1, z=pixel:
  z=z*(z*(z*(z*(z*(z*(z*(z/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+const
  |z|<100
  ;SOURCE: chby3.frm
}


L08-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  const=pixel+1, z=p1:
  z=z*(z*(z*(z*(z*(z*(z*(z/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+const
  |z|<100
  ;SOURCE: chby4.frm
}


L08-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1
  fd=z*(z*(z*(z*(z*(z*(z/28-2)/3+14)/20-7)+35)/3-28)+28)-8
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


L08-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1
  fd=z*(z*(z*(z*(z*(z*(z/28-2)/3+14)/20-7)+35)/3-28)+28)-8
  fdd=(z*(z*(z*(z*(z*(z/12-4)+70)/20-28)/3+35)-56)+28)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


L08-07 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1
  fd=z*(z*(z*(z*(z*(z*(z/28-2)/3+14)/20-7)+35)/3-28)+28)-8
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(w*(w*(w*(w/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


L08-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(x*(x*(x*(x*(x*(x*(x*(x/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1)
  Ty=sin(y*(y*(y*(y*(y*(y*(y*(y/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


L08-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(x*(x*(x*(x/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1)
  Ty=fn1(y*(y*(y*(y*(y*(y*(y*(y/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


L08-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(p1*(p1*(p1*(p1*(p1*(p1*(p1/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


L08-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  const=p1, z=pixel:
  z=(z*(z*(z*(z*(z*(z*(z*(z/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


L08-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  const=pixel, z=p1:
  z=(z*(z*(z*(z*(z*(z*(z*(z/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


L08-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1
  fd=z*(z*(z*(z*(z*(z*(z/28-2)/3+14)/20-7)+35)/3-28)+28)-8
  fdd=(z*(z*(z*(z*(z*(z/12-4)+70)/20-28)/3+35)-56)+28)
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


L08-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1
  fd=z*(z*(z*(z*(z*(z*(z/28-2)/3+14)/20-7)+35)/3-28)+28)-8
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(w*(w*(w*(w/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


L08-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1
  fd=z*(z*(z*(z*(z*(z*(z/28-2)/3+14)/20-7)+35)/3-28)+28)-8
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


L08-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(p1*(p1*(p1*(p1*(p1*(p1*(p1/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


L08-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


L08-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


L08-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(x*(x*(x*(x*(x*(x*(x*(x/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1)
  x=x-t*(y*(y*(y*(y*(y*(y*(y*(y/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


L08-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(x*(x*(x*(x*(x*(x*(x*(x/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1)
  x=x-t*sin(y*(y*(y*(y*(y*(y*(y*(y/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


L08-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(x*(x/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1))
  x=x-t*(fn1(y*(y*(y*(y*(y*(y*(y*(y/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


L08-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(x*(x*(x*(x/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1)
  Ty=fn2(y*(y*(y*(y*(y*(y*(y*(y/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


L08-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(x*(x*(x*(x/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1)
  Ty=fn2(y*(y*(y*(y*(y*(y*(y*(y/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


L08-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(x*(x/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1))
  x=x-t*(fn2(y*(y*(y*(y*(y*(y*(y*(y/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


L08-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(x*(x/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1))
  x=x-t*(fn2(y*(y*(y*(y*(y*(y*(y*(y/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


L08-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(x*(x*(x*(x*(x*(x/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(y*(y/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


L08-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(x*(x*(x*(x*(x*(x/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(y*(y/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


L08-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(x*(x*(x*(x*(x*(x/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(y*(y/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


L08-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(x*(x*(x*(x*(x*(x/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(y*(y/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


L08-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(x0*(x0*(x0*(x0*(x0*(x0/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1
  Fx1=x1*(x1*(x1*(x1*(x1*(x1*(x1*(x1/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


L09-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(x*(x*(x*(x*(x*(x*(x*(81-x)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1
  Ty=y*(y*(y*(y*(y*(y*(y*(y*(81-y)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


L09-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  bailout=p1+4, z=pixel:
  z=z*(z*(z*(z*(z*(z*(z*(z*(81-z)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


L09-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  const=p1+1, z=pixel:
  z=z*(z*(z*(z*(z*(z*(z*(z*(81-z)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+const
  |z|<100
  ;SOURCE: chby3.frm
}


L09-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  const=pixel+1, z=p1:
  z=z*(z*(z*(z*(z*(z*(z*(z*(81-z)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+const
  |z|<100
  ;SOURCE: chby4.frm
}


L09-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(81-z)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1
  fd=z*(z*(z*(z*(z*(z*(z*(648-9*z)/16-1134)+15876)/5-23814)+95256)-252)+216)/17-9
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


L09-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(81-z)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1
  fd=z*(z*(z*(z*(z*(z*(z*(648-9*z)/16-1134)+15876)/5-23814)+95256)-252)+216)/17-9
  fdd=(z*(z*(z*(z*(z*(z*(567-9*z)/2-6804)/5+15876)-95256)+285768)-504)+216)/17
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


L09-07 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(81-z)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1
  fd=z*(z*(z*(z*(z*(z*(z*(648-9*z)/16-1134)+15876)/5-23814)+95256)-252)+216)/17-9
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(w*(w*(w*(w*(81-w)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


L09-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(x*(x*(x*(x*(x*(x*(x*(x*(81-x)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1)
  Ty=sin(y*(y*(y*(y*(y*(y*(y*(y*(81-y)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


L09-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(x*(x*(x*(x*(81-x)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1)
  Ty=fn1(y*(y*(y*(y*(y*(y*(y*(y*(81-y)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


L09-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(p1*(p1*(p1*(p1*(p1*(p1*(p1*(81-p1)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z*(81-z)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


L09-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  const=p1, z=pixel:
  z=(z*(z*(z*(z*(z*(z*(z*(z*(81-z)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


L09-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  const=pixel, z=p1:
  z=(z*(z*(z*(z*(z*(z*(z*(z*(81-z)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


L09-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(81-z)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1
  fd=z*(z*(z*(z*(z*(z*(z*(648-9*z)/16-1134)+15876)/5-23814)+95256)-252)+216)/17-9
  fdd=(z*(z*(z*(z*(z*(z*(567-9*z)/2-6804)/5+15876)-95256)+285768)-504)+216)/17
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


L09-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(81-z)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1
  fd=z*(z*(z*(z*(z*(z*(z*(648-9*z)/16-1134)+15876)/5-23814)+95256)-252)+216)/17-9
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(w*(w*(w*(w*(81-w)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


L09-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(81-z)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1
  fd=z*(z*(z*(z*(z*(z*(z*(648-9*z)/16-1134)+15876)/5-23814)+95256)-252)+216)/17-9
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


L09-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(p1*(p1*(p1*(p1*(p1*(p1*(p1*(81-p1)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z*(81-z)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


L09-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z*(81-z)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


L09-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z*(81-z)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


L09-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(x*(x*(x*(x*(x*(x*(x*(x*(81-x)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1)
  x=x-t*(y*(y*(y*(y*(y*(y*(y*(y*(81-y)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


L09-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(x*(x*(x*(x*(x*(x*(x*(x*(81-x)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1)
  x=x-t*sin(y*(y*(y*(y*(y*(y*(y*(y*(81-y)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


L09-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(x*(x*(81-x)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1))
  x=x-t*(fn1(y*(y*(y*(y*(y*(y*(y*(y*(81-y)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


L09-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(x*(x*(x*(x*(81-x)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1)
  Ty=fn2(y*(y*(y*(y*(y*(y*(y*(y*(81-y)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


L09-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(x*(x*(x*(x*(81-x)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1)
  Ty=fn2(y*(y*(y*(y*(y*(y*(y*(y*(81-y)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


L09-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(x*(x*(81-x)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1))
  x=x-t*(fn2(y*(y*(y*(y*(y*(y*(y*(y*(81-y)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


L09-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(x*(x*(81-x)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1))
  x=x-t*(fn2(y*(y*(y*(y*(y*(y*(y*(y*(81-y)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


L09-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(x*(x*(x*(x*(x*(x*(81-x)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(y*(y*(81-y)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


L09-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(x*(x*(x*(x*(x*(x*(81-x)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(y*(y*(81-y)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


L09-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(x*(x*(x*(x*(x*(x*(81-x)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(y*(y*(81-y)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


L09-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(x*(x*(x*(x*(x*(x*(81-x)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(y*(y*(81-y)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


L09-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(x0*(x0*(x0*(x0*(x0*(x0*(81-x0)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1
  Fx1=x1*(x1*(x1*(x1*(x1*(x1*(x1*(x1*(81-x1)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


L10-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(x*(x*(x*(x*(x*(x*(x*(x*(x/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1
  Ty=y*(y*(y*(y*(y*(y*(y*(y*(y*(y/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


L10-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  bailout=p1+4, z=pixel:
  z=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


L10-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  const=p1+1, z=pixel:
  z=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+const
  |z|<100
  ;SOURCE: chby3.frm
}


L10-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  const=pixel+1, z=p1:
  z=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+const
  |z|<100
  ;SOURCE: chby4.frm
}


L10-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1
  fd=z*(z*(z*(z*(z*(z*(z*(z*(z/10-9)/8+405)/2-378)+3969)/4-59535)+19845)-34020)+27025)/567-10
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


L10-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1
  fd=z*(z*(z*(z*(z*(z*(z*(z*(z/10-9)/8+405)/2-378)+3969)/4-59535)+19845)-34020)+27025)/567-10
  fdd=(z*(z*(z*(z*(z*(z*(z*(9*z/20-45)/16+810)-1323)+11907)/2-297675)+79380)-102060)+54050)/567
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


L10-07 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1
  fd=z*(z*(z*(z*(z*(z*(z*(z*(z/10-9)/8+405)/2-378)+3969)/4-59535)+19845)-34020)+27025)/567-10
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(w*(w*(w*(w*(w*(w/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


L10-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(x*(x*(x*(x*(x*(x*(x*(x*(x*(x/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1)
  Ty=sin(y*(y*(y*(y*(y*(y*(y*(y*(y*(y/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


L10-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(x*(x*(x*(x*(x*(x/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1)
  Ty=fn1(y*(y*(y*(y*(y*(y*(y*(y*(y*(y/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


L10-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(p1*(p1*(p1*(p1*(p1*(p1*(p1*(p1*(p1/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


L10-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  const=p1, z=pixel:
  z=(z*(z*(z*(z*(z*(z*(z*(z*(z*(z/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


L10-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  const=pixel, z=p1:
  z=(z*(z*(z*(z*(z*(z*(z*(z*(z*(z/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


L10-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1
  fd=z*(z*(z*(z*(z*(z*(z*(z*(z/10-9)/8+405)/2-378)+3969)/4-59535)+19845)-34020)+27025)/567-10
  fdd=(z*(z*(z*(z*(z*(z*(z*(9*z/20-45)/16+810)-1323)+11907)/2-297675)+79380)-102060)+54050)/567
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


L10-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1
  fd=z*(z*(z*(z*(z*(z*(z*(z*(z/10-9)/8+405)/2-378)+3969)/4-59535)+19845)-34020)+27025)/567-10
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(w*(w*(w*(w*(w*(w/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


L10-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1
  fd=z*(z*(z*(z*(z*(z*(z*(z*(z/10-9)/8+405)/2-378)+3969)/4-59535)+19845)-34020)+27025)/567-10
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


L10-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(p1*(p1*(p1*(p1*(p1*(p1*(p1*(p1*(p1/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


L10-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


L10-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


L10-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(x*(x*(x*(x*(x*(x*(x*(x*(x*(x/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1)
  x=x-t*(y*(y*(y*(y*(y*(y*(y*(y*(y*(y/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


L10-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(x*(x*(x*(x*(x*(x*(x*(x*(x*(x/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1)
  x=x-t*sin(y*(y*(y*(y*(y*(y*(y*(y*(y*(y/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


L10-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(x*(x*(x*(x/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1))
  x=x-t*(fn1(y*(y*(y*(y*(y*(y*(y*(y*(y*(y/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


L10-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(x*(x*(x*(x*(x*(x/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1)
  Ty=fn2(y*(y*(y*(y*(y*(y*(y*(y*(y*(y/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


L10-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(x*(x*(x*(x*(x*(x/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1)
  Ty=fn2(y*(y*(y*(y*(y*(y*(y*(y*(y*(y/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


L10-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(x*(x*(x*(x/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1))
  x=x-t*(fn2(y*(y*(y*(y*(y*(y*(y*(y*(y*(y/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


L10-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(x*(x*(x*(x/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1))
  x=x-t*(fn2(y*(y*(y*(y*(y*(y*(y*(y*(y*(y/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


L10-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(x*(x*(x*(x*(x*(x*(x*(x/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(y*(y*(y*(y/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


L10-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(x*(x*(x*(x*(x*(x*(x*(x/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(y*(y*(y*(y/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


L10-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(x*(x*(x*(x*(x*(x*(x*(x/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(y*(y*(y*(y/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


L10-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(x*(x*(x*(x*(x*(x*(x*(x/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(y*(y*(y*(y/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


L10-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(x0*(x0*(x0*(x0*(x0*(x0*(x0*(x0/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1
  Fx1=x1*(x1*(x1*(x1*(x1*(x1*(x1*(x1*(x1*(x1/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


l6 {
  z=pixel, z1=(1-pixel), y=fn4(1/z1), c=(y+y)^p1:
  z=fn1(z)*fn2(z1+1)
  z=(fn1((z1-2)/z+1)+(fn2(z1-1)))*1/(z1+z1) 
  z=fn2(z1*y)/fn3(1/c-1)/fn3(z1*((y+z)))+(c*z)
  |z|<4
  ;SOURCE: ad3.frm
}


La02-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (Euler method)
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p2, c=a+2, b=c*(a+1)/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(x/2-c)+b
  Ty=y*(y/2-c)+b
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


La02-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p2, c=a+2, b=c*(a+1)/2
  bailout=p1+4, z=pixel:
  z=z*(z/2-c)+b
  |z|<=bailout
  ;SOURCE: chby2.frm
}


La02-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Julia)
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p2, c=a+2, b=c*(a+1)/2
  const=p1, z=pixel:
  z=z*(z/2-c)+b+const
  |z|<100
  ;SOURCE: chby3.frm
}


La02-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Mandelbrot)
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p2, c=a+2, b=c*(a+1)/2
  const=pixel, z=p1:
  z=z*(z/2-c)+b+const
  |z|<100
  ;SOURCE: chby4.frm
}


La02-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Newton Method
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p1
  c=a+2
  b=c*(a+1)/2
  bailout=real(p2)/10000, z=pixel:
  f=z*(z/2-c)+b
  fd=z-c
  oz=z
  z=z-f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


La02-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Halley Method
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p1
  c=a+2
  b=c*(a+1)/2
  bailout=real(p2)/10000
  z=pixel:
  f=z*(z/2-c)+b
  fd=z-c
  oz=z
  z=z-f/(fd-f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


La02-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Bradley Beacham
         ; Cubic Method
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+ 3-z)La(1)-(a+1)La(0))/2
  a=p1
  c=a+2
  b=c*(a+1)/2
  bailout=real(p2)/10000, z=pixel:
  f=z*(z/2-c)+b
  fd=z-c
  oz=z
  w=f-f/fd
  fw=w-c
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


La02-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified Euler method)
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p2, c=a+2, b=c*(a+1)/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(x*(x/2-c)+b)
  Ty=sin(y*(y/2-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


La02-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified Euler Method)
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p2, c=a+2, b=c*(a+1)/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x/2-c)+b)
  Ty=fn1(y*(y/2-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


La02-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Mike Wareman:
         ; Secant Method
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p1, c=a+2, b=c*(a+1)/2
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=b:
  zt=z
  foz=fz
  fz=z*(z/2-c)+b
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


La02-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Julia)
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p2, c=a+2, b=c*(a+1)/2
  const=p1, z=pixel:
  z=(z*(z/2-c)+b)*const
  |z|<100
  ;SOURCE: chby11.frm
}


La02-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Mandelbrot)
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p2, c=a+2, b=c*(a+1)/2
  const=pixel, z=p1:
  z=(z*(z/2-c)+b)*const
  |z|<100
  ;SOURCE: chby12.frm
}


La02-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Halley Method with weird bailout test
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p1
  c=a+2
  b=c*(a+1)/2
  bailout=real(p2)/10000
  z=pixel:
  f=z*(z/2-c)+b
  fd=z-c
  oz=z
  z=z-f/(fd-f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


La02-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Bradley Beacham
         ; Cubic Method with weird bailout test
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+ 3-z)La(1)-(a+1)La(0))/2
  a=p1
  c=a+2
  b=c*(a+1)/2
  bailout=real(p2)/10000, z=pixel:
  f=z*(z/2-c)+b
  fd=z-c
  oz=z
  w=f-f/fd
  fw=w-c
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


La02-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Newton Method with weird bailout test
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p1
  c=a+2
  b=c*(a+1)/2
  bailout=real(p2)/10000, z=pixel:
  f=z*(z/2-c)+b
  fd=z-c
  oz=z
  z=z-f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


La02-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Mike Wareman:
         ; Secant Method with weird bailout test
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p1, c=a+2, b=c*(a+1)/2
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=b:
  zt=z
  foz=fz
  fz=z*(z/2-c)+b
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


La02-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Mike Wareman
         ; Secant Method with Girvan perturbations and weird bailout test
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p3, c=a+2, b=c*(a+1)/2
  z=pixel, oz=0
  fz=b
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z/2-c)+b
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


La02-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Mike Wareman
         ; Secant Method with Girvan perturbations and weird bailout test
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p3, c=a+2, b=c*(a+1)/2 
  z=pixel, oz=0
  fz=b
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z/2-c)+b
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


La02-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (Implicit Euler method)
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p2, c=a+2, b=c*(a+1)/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(x*(x/2-c)+b)
  x=x-t*(y*(y/2-c)+b)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


La02-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler method)
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p2, c=a+2, b=c*(a+1)/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(x*(x/2-c)+b)
  x=x-t*sin(y*(y/2-c)+b)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


La02-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler method)
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p2, c=a+2, b=c*(a+1)/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x/2-c)+b))
  x=x-t*(fn1(y*(y/2-c)+b))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


La02-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified Euler method)
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p2, c=a+2, b=c*(a+1)/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x/2-c)+b)
  Ty=fn2(y*(y/2-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


La02-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified Euler method)
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p2, c=a+2, b=c*(a+1)/2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(x*(x/2-c)+b)
  Ty=fn2(y*(y/2-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


La02-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler Method)
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p2, c=a+2, b=c*(a+1)/2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x/2-c)+b))
  x=x-t*(fn2(y*(y/2-c)+b))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


La02-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler Method)
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p2, c=a+2, b=c*(a+1)/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x/2-c)+b))
  x=x-t*(fn2(y*(y/2-c)+b))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


La02-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Kathy Roth:
         ; Dynamic (modified implicit Euler Method, gravitated)
         ;
         ; La[0]=1
         ; La[1]=(a+1-z)
         ; La[n+1] = ((a+2n+1-z)La[n]-(a+n)La[n-1])/(n+1)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p2, c=a+2, b=c*(a+1)/2, 
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x/2-c)+b))
  Ty=(fn1(y*(y/2-c)+b))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


La02-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Kathy Roth:
         ; Dynamic (modified implicit Euler Method, popped)
         ;
         ; La[0]=1
         ; La[1]=(a+1-z)
         ; La[n+1] = ((a+2n+1-z)La[n]-(a+n)La[n-1])/(n+1)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p2, c=a+2, b=c*(a+1)/2, 
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x/2-c)+b))
  Ty=(fn1(y*(y/2-c)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


La02-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Kathy Roth:
         ; Dynamic (modified implicit Euler Method, popped)
         ;
         ; La[0]=1
         ; La[1]=(a+1-z)
         ; La[n+1] = ((a+2n+1-z)La[n]-(a+n)La[n-1])/(n+1)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p2, c=a+2, b=c*(a+1)/2
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x/2-c)+b))
  Ty=(fn1(y*(y/2-c)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


La02-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler method, Sylvie Gallet test)
         ;
         ; La[0]=1
         ; La[1]=(a+1-z)
         ; La[n+1] = ((a+2n+1-z)La[n]-(a+n)La[n-1])/(n+1)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p2, c=a+2, b=c*(a+1)/2 
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x/2-c)+b))
  Ty=(fn1(y*(y/2-c)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


La02-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Ray Parracho:
         ; Regula-Falsi Method
         ;
         ; La[0]=1
         ; La[1]=(a+1-z)
         ; La[n+1] = ((a+2n+1-z)La[n]-(a+n)La[n-1])/(n+1)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p2, c=a+2, b=c*(a+1)/2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0/2-c)+b
  Fx1=x1*(x1/2-c)+b
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


La03-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p2, d=(a+3)/2, c=d*(a+2), b=c*(a+1)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(x*(d-x/6)-c)+b
  Ty=y*(y*(d-y/6)-c)+b
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


La03-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p2, d=(a+3)/2, c=d*(a+2), b=c*(a+1)/3
  bailout=p1+4, z=pixel:
  z=z*(z*(d-z/6)-c)+b
  |z|<=bailout
  ;SOURCE: chby2.frm
}


La03-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p2, d=(a+3)/2, c=d*(a+2), b=c*(a+1)/3
  const=p1, z=pixel:
  z=z*(z*(d-z/6)-c)+b+const
  |z|<100
  ;SOURCE: chby3.frm
}


La03-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p2, d=(a+3)/2, c=d*(a+2), b=c*(a+1)/3
  const=pixel, z=p1:
  z=z*(z*(d-z/6)-c)+b+const
  |z|<100
  ;SOURCE: chby4.frm
}


La03-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p1
  d1=(a+3)/2
  c1=d1*(a+2)
  b1=c1*(a+1)/3
  d2=a+3
  c2=d2*(a+2)/2
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(d1-z/2)-c1)+b
  fd=z*(d2-z/2)-c2
  oz=z
  z=z-f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


La03-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; =((a+5-z)La(2)-(a+2)La(1))/3
  a=p1
  d1=(a+3)/2
  c1=d1*(a+2)
  b1=c1*(a+1)/3
  d2=a+3
  c2=d2*(a+2)/2
  bailout=real(p2)/10000
  z=pixel:
  f=z*(z*(d1-z/2)-c1)+b
  fd=z*(d2-z/2)-c2
  fdd=d2-z
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


La03-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+ 5-z)La(2)-(a+2)La(1))/3
  a=p1
  d1=(a+3)/2
  c1=d1*(a+2)
  b1=c1*(a+1)/3
  d2=a+3
  c2=d2*(a+2)/2
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(d1-z/2)-c1)+b
  fd=z*(d2-z/2)-c2
  oz=z
  w=f-f/fd
  fw=w-(w*(d1-z/2)-c1)+b
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


La03-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p2, d=(a+3)/2, c=d*(a+2), b=c*(a+1)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(x*(x*(d-x/6)-c)+b)
  Ty=sin(y*(y*(d-y/6)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


La03-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p2, d=(a+3)/2, c=d*(a+2), b=c*(a+1)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(d-x/6)-c)+b)
  Ty=fn1(y*(y*(d-y/6)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


La03-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p1, d=(a+3)/2, c=d*(a+2), b=c*(a+1)/3
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=b:
  zt=z
  foz=fz
  fz=z*(z*(d-z/6)-c)+b
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


La03-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p2, d=(a+3)/2, c=d*(a+2), b=c*(a+1)/3
  const=p1, z=pixel:
  z=(z*(z*(d-z/6)-c)+b)*const
  |z|<100
  ;SOURCE: chby11.frm
}


La03-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p2, d=(a+3)/2, c=d*(a+2), b=c*(a+1)/3
  const=pixel, z=p1:
  z=(z*(z*(d-z/6)-c)+b)*const
  |z|<100
  ;SOURCE: chby12.frm
}


La03-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; =((a+5-z)La(2)-(a+2)La(1))/3
  a=p1
  d1=(a+3)/2
  c1=d1*(a+2)
  b1=c1*(a+1)/3
  d2=a+3
  c2=d2*(a+2)/2
  bailout=real(p2)/10000
  z=pixel:
  f=z*(z*(d1-z/2)-c1)+b
  fd=z*(d2-z/2)-c2
  fdd=d2-z
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


La03-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+ 5-z)La(2)-(a+2)La(1))/3
  a=p1
  d1=(a+3)/2
  c1=d1*(a+2)
  b1=c1*(a+1)/3
  d2=a+3
  c2=d2*(a+2)/2
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(d1-z/2)-c1)+b
  fd=z*(d2-z/2)-c2
  oz=z
  w=f-f/fd
  fw=w-(w*(d1-z/2)-c1)+b
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


La03-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p1
  d1=(a+3)/2
  c1=d1*(a+2)
  b1=c1*(a+1)/3
  d2=a+3
  c2=d2*(a+2)/2
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(d1-z/2)-c1)+b
  fd=z*(d2-z/2)-c2
  oz=z
  z=z-f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


La03-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p1, d=(a+3)/2, c=d*(a+2), b=c*(a+1)/3
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=b:
  zt=z
  foz=fz
  fz=z*(z*(d-z/6)-c)+b
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


La03-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p3, d=(a+3)/2, c=d*(a+2), b=c*(a+1)/3
  z=pixel, oz=0
  fz=b
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(d-z/6)-c)+b
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


La03-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p3, d=(a+3)/2, c=d*(a+2), b=c*(a+1)/3
  z=pixel, oz=0
  fz=b
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(d-z/6)-c)+b
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


La03-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p2, d=(a+3)/2, c=d*(a+2), b=c*(a+1)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(x*(x*(d-x/6)-c)+b)
  x=x-t*(y*(y*(d-y/6)-c)+b)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


La03-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p2, d=(a+3)/2, c=d*(a+2), b=c*(a+1)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(x*(x*(d-x/6)-c)+b)
  x=x-t*sin(y*(y*(d-y/6)-c)+b)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


La03-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p2, d=(a+3)/2, c=d*(a+2), b=c*(a+1)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(d-x/6)-c)+b))
  x=x-t*(fn1(y*(y*(d-y/6)-c)+b))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


La03-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p2, d=(a+3)/2, c=d*(a+2), b=c*(a+1)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(d-x/6)-c)+b)
  Ty=fn2(y*(y*(d-y/6)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


La03-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p2, d=(a+3)/2, c=d*(a+2), b=c*(a+1)/3
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(d-x/6)-c)+b)
  Ty=fn2(y*(y*(d-y/6)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


La03-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p2, d=(a+3)/2, c=d*(a+2), b=c*(a+1)/3
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(d-x/6)-c)+b))
  x=x-t*(fn2(y*(y*(d-y/6)-c)+b))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


La03-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p2, d=(a+3)/2, c=d*(a+2), b=c*(a+1)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(d-x/6)-c)+b))
  x=x-t*(fn2(y*(y*(d-y/6)-c)+b))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


La03-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p2, d=(a+3)/2, c=d*(a+2), b=c*(a+1)/3
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(d-x/6)-c)+b))
  Ty=(fn1(y*(y*(d-y/6)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


La03-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p2, d=(a+3)/2, c=d*(a+2), b=c*(a+1)/3
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(d-x/6)-c)+b))
  Ty=(fn1(y*(y*(d-y/6)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


La03-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p2, d=(a+3)/2, c=d*(a+2), b=c*(a+1)/3
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(d-x/6)-c)+b))
  Ty=(fn1(y*(y*(d-y/6)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


La03-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p2, d=(a+3)/2, c=d*(a+2), b=c*(a+1)/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(d-x/6)-c)+b))
  Ty=(fn1(y*(y*(d-y/6)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


La03-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p2, d=(a+3)/2, c=d*(a+2), b=c*(a+1)/3
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(d-x0/6)-c)+b
  Fx1=x1*(x1*(d-x1/6)-c)+b
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


La04-01 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p2, k=(a+4)/6, d=k*(a+3)*(3/2), c=d*(a+2)*(2/3), b=c*(a+1)/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(x*(x*(x/24-k)+d)-c)+b
  Ty=y*(y*(y*(y/24-k)+d)-c)+b
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


La04-02 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p2, k=(a+4)/6, d=k*(a+3)*(3/2), c=d*(a+2)*(2/3), b=c*(a+1)/4
  bailout=p1+4, z=pixel:
  z=z*(z*(z*(z/24-k)+d)-c)+b
  |z|<=bailout
  ;SOURCE: chby2.frm
}


La04-03 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p2, k=(a+4)/6, d=k*(a+3)*(3/2), c=d*(a+2)*(2/3), b=c*(a+1)/4
  const=p1, z=pixel:
  z=z*(z*(z*(z/24-k)+d)-c)+b+const
  |z|<100
  ;SOURCE: chby3.frm
}


La04-04 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p2, k=(a+4)/6, d=k*(a+3)*(3/2)
  c=d*(a+2)*(2/3), b=c*(a+1)/4
  const=pixel, z=p1:
  z=z*(z*(z*(z/24-k)+d)-c)+b+const
  |z|<100
  ;SOURCE: chby4.frm
}


La04-05 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p1
  e1= (a+4)/6
  d1=e1*(a+3)*(3/2)
  c1=d1*(a+2)*(2/3)
  b=c1*(a+1)/4
  e2= (a+4)/2
  d2=e2*(a+3)
  c2=d2*(a+2)/3
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z/24-e1)+d1)-c1)+b
  fd=z*(z*(z/6-e2)+d2)-c2
  oz=z
  z=z-f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


La04-06 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; =((a+7-z)La(3)-(a+3)La(2))/4
  a=p1
  e1=(a+4)/6
  d1=e1*(a+3)*(3/2)
  c1=d1*(a+a+4)/3
  b=c1*(a+1)/4
  e2=(a+4)/2
  d2=e2*(a+3)
  c2=d2*(a+2)/3
  e3=a+4
  d3=e3*(a+3)/2
  bailout=real(p2)/10000
  z=pixel:
  f=z*(z*(z*(z/24-e1)+d1)-c1)+b
  fd=z*(z*(z/6-e2)+d2)-c2
  fdd=z*(z/2-e3)+d3
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


La04-07 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+ 7-z)La(3)-(a+3)La(2))/4
  a=p1
  e1= (a+4)/6
  d1=e1*(a+3)*(3/2)
  c1=d1*(a+2)*(2/3)
  b=c1*(a+1)/4
  e2= (a+4)/2
  d2=e2*(a+3)
  c2=d2*(a+2)/3
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z/24-e1)+d1)-c1)+b
  fd=z*(z*(z/6-e2)+d2)-c2
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w/24-e1)+d1)-c1)+b
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


La04-08 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p2, k=(a+4)/6, d=k*(a+3)*(3/2), c=d*(a+2)*(2/3), b=c*(a+1)/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(x*(x*(x*(x/24-k)+d)-c)+b)
  Ty=sin(y*(y*(y*(y/24-k)+d)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


La04-09 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p2, k=(a+4)/6, d=k*(a+3)*(3/2), c=d*(a+a+4)/3, b=c*(a+1)/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x/24-k)+d)-c)+b)
  Ty=fn1(y*(y*(y*(y/24-k)+d)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


La04-10 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p1, k=(a+4)/6, d=k*(a+3)*(3/2), c=d*(a+2)*(2/3), b=c*(a+1)/4
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=b:
  zt=z
  foz=fz
  fz=z*(z*(z*(z/24-k)+d)-c)+b
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


La04-11 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p2, k=(a+4)/6, d=k*(a+3)*(3/2), c=d*(a+2)*(2/3)
  b=c*(a+1)/4
  const=p1, z=pixel:
  z=(z*(z*(z*(z/24-k)+d)-c)+b)*const
  |z|<100
  ;SOURCE: chby11.frm
}


La04-12 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p2, k=(a+4)/6, d=k*(a+3)*(3/2)
  c=d*(a+a+4)/3, b=c*(a+1)/4
  const=pixel, z=p1:
  z=(z*(z*(z*(z/24-k)+d)-c)+b)*const
  |z|<100
  ;SOURCE: chby12.frm
}


La04-13 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; =((a+7-z)La(3)-(a+3)La(2))/4
  a=p1
  e1=(a+4)/6
  d1=e1*(a+3)*(3/2)
  c1=d1*(a+2)*(2/3)
  b=c1*(a+1)/4
  e2=(a+4)/2
  d2=e2*(a+3)
  c2=d2*(a+2)/3
  e3=a+4
  d3=e3*(a+3)/2
  bailout=real(p2)/10000
  z=pixel:
  f=z*(z*(z*(z/24-e1)+d1)-c1)+b
  fd=z*(z*(z/6-e2)+d2)-c2
  fdd=z*(z/2-e3)+d3
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


La04-14 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+ 7-z)La(3)-(a+3)La(2))/4
  a=p1
  e1= (a+4)/6
  d1=e1*(a+3)*(3/2)
  c1=d1*(a+2)*(2/3)
  b=c1*(a+1)/4
  e2= (a+4)/2
  d2=e2*(a+3)
  c2=d2*(a+2)/3
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z/24-e1)+d1)-c1)+b
  fd=z*(z*(z/6-e2)+d2)-c2
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w/24-e1)+d1)-c1)+b
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


La04-15 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p1
  e1= (a+4)/6
  d1=e1*(a+3)*(3/2)
  c1=d1*(a+2)*(2/3)
  b=c1*(a+1)/4
  e2= (a+4)/2
  d2=e2*(a+3)
  c2=d2*(a+2)/3
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z/24-e1)+d1)-c1)+b
  fd=z*(z*(z/6-e2)+d2)-c2
  oz=z
  z=z-f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


La04-16 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p1, k=(a+4)/6, d=k*(a+3)*(3/2), c=d*(a+2)*(2/3), b=c*(a+1)/4
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=b:
  zt=z
  foz=fz
  fz=z*(z*(z*(z/24-k)+d)-c)+b
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


La04-17 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p3, k=(a+4)/6, d=k*(a+3)*(3/2), c=d*(a+2)*(2/3)
  b=c*(a+1)/4
  z=pixel, oz=0
  fz=b
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z/24-k)+d)-c)+b
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


La04-18 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p3, k=(a+4)/6, d=k*(a+3)*(3/2), c=d*(a+2)*(2/3), b=c*(a+1)/4
  z=pixel, oz=0
  fz=b
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z/24-k)+d)-c)+b
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


La04-19 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p2, k=(a+4)/6, d=k*(a+3)*(3/2)
  c=d*(a+2)*(2/3), b=c*(a+1)/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(x*(x*(x*(x/24-k)+d)-c)+b)
  x=x-t*(y*(y*(y*(y/24-k)+d)-c)+b)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


La04-20 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p2, k=(a+4)/6, d=k*(a+3)*(3/2)
  c=d*(a+2)*(2/3), b=c*(a+1)/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(x*(x*(x*(x/24-k)+d)-c)+b)
  x=x-t*sin(y*(y*(y*(y/24-k)+d)-c)+b)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


La04-21 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p2, k=(a+4)/6, d=k*(a+3)*(3/2), c=d*(a+a+4)/3, b=c*(a+1)/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x/24-k)+d)-c)+b))
  x=x-t*(fn1(y*(y*(y*(y/24-k)+d)-c)+b))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


La04-22 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p2, k=(a+4)/6, d=k*(a+3)*(3/2)
  c=d*(a+a+4)/3, b=c*(a+1)/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x/24-k)+d)-c)+b)
  Ty=fn2(y*(y*(y*(y/24-k)+d)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


La04-23 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p2, k=(a+4)/6, d=k*(a+3)*(3/2), c=d*(a+a+4)/3, b=c*(a+1)/4
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x/24-k)+d)-c)+b)
  Ty=fn2(y*(y*(y*(y/24-k)+d)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


La04-24 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p2, k=(a+4)/6, d=k*(a+3)*(3/2), c=d*(a+a+4)/3, b=c*(a+1)/4
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x/24-k)+d)-c)+b))
  x=x-t*(fn2(y*(y*(y*(y/24-k)+d)-c)+b))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


La04-25 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p2, k=(a+4)/6, d=k*(a+3)*(3/2), c=d*(a+a+4)/3, b=c*(a+1)/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x/24-k)+d)-c)+b))
  x=x-t*(fn2(y*(y*(y*(y/24-k)+d)-c)+b))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


La04-26 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p2, k=(a+4)/6, d=k*(a+3)*(3/2), c=d*(a+a+4)/3, b=c*(a+1)/4
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(x*(x/24-k)+d)-c)+b))
  Ty=(fn1(y*(y*(y*(y/24-k)+d)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


La04-27 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p2, k=(a+4)/6, d=k*(a+3)*(3/2), c=d*(a+a+4)/3, b=c*(a+1)/4
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(x*(x/24-k)+d)-c)+b))
  Ty=(fn1(y*(y*(y*(y/24-k)+d)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


La04-28 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p2, k=(a+4)/6, d=k*(a+3)*(3/2), c=d*(a+a+4)/3, b=c*(a+1)/4
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(x*(x/24-k)+d)-c)+b))
  Ty=(fn1(y*(y*(y*(y/24-k)+d)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


La04-29 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p2, k=(a+4)/6, d=k*(a+3)*(3/2), c=d*(a+a+4)/3, b=c*(a+1)/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(x*(x/24-k)+d)-c)+b))
  Ty=(fn1(y*(y*(y*(y/24-k)+d)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


La04-30 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p2, k=(a+4)/6, d=k*(a+3)*(3/2), c=d*(a+2)*(2/3), b=c*(a+1)/4
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(x0*(x0/24-k)+d)-c)+b
  Fx1=x1*(x1*(x1*(x1/24-k)+d)-c)+b
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


La05-01 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p2, f=(a+5)/24, k=(f+f)*(a+4), d=k*(a+3), c=d*(a+2)/2, b=c*(a+1)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(x*(x*(x*(f-x/120)-k)+d)-c)+b
  Ty=y*(y*(y*(y*(f-y/120)-k)+d)-c)+b
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


La05-02 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p2, f=(a+5)/24, k=2*f*(a+4), d=k*(a+3), c=d*(a+2)/2, b=c*(a+1)/5
  bailout=p1+4, z=pixel:
  z=z*(z*(z*(z*(f-z/120)-k)+d)-c)+b
  |z|<=bailout
  ;SOURCE: chby2.frm
}


La05-03 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p2, f=(a+5)/24, k=(f+f)*(a+4), d=k*(a+3)
  c=d*(a+2)/2, b=c*(a+1)/5
  const=p1, z=pixel:
  z=z*(z*(z*(z*(f-z/120)-k)+d)-c)+b+const
  |z|<100
  ;SOURCE: chby3.frm
}


La05-04 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p2, f=(a+5)/24, k=(f+f)*(a+4)
  d=k*(a+3), c=d*(a+2)/2, b=c*(a+1)/5
  const=pixel, z=p1:
  z=z*(z*(z*(z*(f-z/120)-k)+d)-c)+b+const
  |z|<100
  ;SOURCE: chby4.frm
}


La05-05 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p1
  f1= (a+5)/24
  e1=f1*(a+4)*2
  d1=e1*(a+3)
  c1=d1*(a+2)/2
  b=c1*(a+1)/5
  f2= (a+5)/6
  e2=f2*(a+4)*(3/2)
  d2=e2*(a+3)*(2/3)
  c2=d2*(a+2)/4
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(f1-z/120)-e1)+d1)-c1)+b
  fd=z*(z*(z*(f2-z/24)-e2)+d2)-c2
  oz=z
  z=z-f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


La05-06 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; =((a+9-z)La(4)-(a+4)La(3))/5
  a=p1
  f1=(a+5)/24
  e1=f1*(a+4)*2
  d1=e1*(a+3)
  c1=d1*(a+2)/2
  b=c1*(a+1)/5
  f2=(a+5)/6
  e2=f2*(a+4)*(3/2)
  d2=e2*(a+a+6)/3
  c2=d2*(a+2)/4
  f3=(a+5)/2
  e3=f3*(a+4)
  d3=e3*(a+3)/3
  bailout=real(p2)/10000
  z=pixel:
  f=z*(z*(z*(z*(f1-z/120)-e1)+d1)-c1)+b
  fd=z*(z*(z*(f2-z/24)-e2)+d2)-c2
  fdd=z*(z*(f3-z/6)-e3)+d3
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


La05-07 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+ 9-z)La(4)-(a+4)La(3))/5
  a=p1
  f1= (a+5)/24
  e1=f1*(a+4)*2
  d1=e1*(a+3)
  c1=d1*(a+2)/2
  b=c1*(a+1)/5
  f2= (a+5)/6
  e2=f2*(a+4)*(3/2)
  d2=e2*(a+3)*(2/3)
  c2=d2*(a+2)/4
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(f1-z/120)-e1)+d1)-c1)+b
  fd=z*(z*(z*(f2-z/24)-e2)+d2)-c2
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(f1-w/120)-e1)+d1)-c1)+b
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


La05-08 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p2, f=(a+5)/24, k=(f+f)*(a+4)
  d=k*(a+3), c=d*(a+2)/2, b=c*(a+1)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(x*(x*(x*(x*(f-x/120)-k)+d)-c)+b)
  Ty=sin(y*(y*(y*(y*(f-y/120)-k)+d)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


La05-09 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p2, f=(a+5)/24, k=(f+f)*(a+4), d=k*(a+3)
  c=d*(a+2)/2, b=c*(a+1)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(f-x/120)-k)+d)-c)+b)
  Ty=fn1(y*(y*(y*(y*(f-y/120)-k)+d)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


La05-10 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p1, f=(a+5)/24, k=(f+f)*(a+4), d=k*(a+3)
  c=d*(a+2)/2, b=c*(a+1)/5
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=b:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(f-z/120)-k)+d)-c)+b
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


La05-11 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p2, f=(a+5)/24, k=(f+f)*(a+4)
  d=k*(a+3), c=d*(a+2)/2, b=c*(a+1)/5
  const=p1, z=pixel:
  z=(z*(z*(z*(z*(f-z/120)-k)+d)-c)+b)*const
  |z|<100
  ;SOURCE: chby11.frm
}


La05-12 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p2, f=(a+5)/24, k=(f+f)*(a+4)
  d=k*(a+3), c=d*(a+2)/2, b=c*(a+1)/5
  const=pixel, z=p1:
  z=(z*(z*(z*(z*(f-z/120)-k)+d)-c)+b)*const
  |z|<100
  ;SOURCE: chby12.frm
}


La05-13 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; =((a+9-z)La(4)-(a+4)La(3))/5
  a=p1
  f1=(a+5)/24
  e1=f1*(a+4)*2
  d1=e1*(a+3)
  c1=d1*(a+2)/2
  b=c1*(a+1)/5
  f2=(a+5)/6
  e2=f2*(a+4)*(3/2)
  d2=e2*(a+3)*(2/3)
  c2=d2*(a+2)/4
  f3=(a+5)/2
  e3=f3*(a+4)
  d3=e3*(a+3)/3
  bailout=real(p2)/10000
  z=pixel:
  f=z*(z*(z*(z*(f1-z/120)-e1)+d1)-c1)+b
  fd=z*(z*(z*(f2-z/24)-e2)+d2)-c2
  fdd=z*(z*(f3-z/6)-e3)+d3
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


La05-14 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+ 9-z)La(4)-(a+4)La(3))/5
  a=p1
  f1= (a+5)/24
  e1=f1*(a+4)*2
  d1=e1*(a+3)
  c1=d1*(a+2)/2
  b=c1*(a+1)/5
  f2= (a+5)/6
  e2=f2*(a+4)*(3/2)
  d2=e2*(a+3)*(2/3)
  c2=d2*(a+2)/4
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(f1-z/120)-e1)+d1)-c1)+b
  fd=z*(z*(z*(f2-z/24)-e2)+d2)-c2
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(f1-w/120)-e1)+d1)-c1)+b
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


La05-15 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p1
  f1= (a+5)/24
  e1=f1*(a+4)*2
  d1=e1*(a+3)
  c1=d1*(a+2)/2
  b=c1*(a+1)/5
  f2= (a+5)/6
  e2=f2*(a+4)*(3/2)
  d2=e2*(a+3)*(2/3)
  c2=d2*(a+2)/4
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(f1-z/120)-e1)+d1)-c1)+b
  fd=z*(z*(z*(f2-z/24)-e2)+d2)-c2
  oz=z
  z=z-f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


La05-16 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p1, f=(a+5)/24, k=(f+f)*(a+4), d=k*(a+3), c=d*(a+2)/2, b=c*(a+1)/5
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=b:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(f-z/120)-k)+d)-c)+b
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


La05-17 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p3, f=(a+5)/24, k=(f+f)*(a+4), d=k*(a+3)
  c=d*(a+2)/2, b=c*(a+1)/5
  z=pixel, oz=0
  fz=b
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(f-z/120)-k)+d)-c)+b
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


La05-18 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p3, f=(a+5)/24, k=(f+f)*(a+4), d=k*(a+3)
  c=d*(a+2)/2, b=c*(a+1)/5
  z=pixel, oz=0
  fz=b
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(f-z/120)-k)+d)-c)+b
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


La05-19 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p2, f=(a+5)/24, k=(f+f)*(a+4), d=k*(a+3)
  c=d*(a+2)/2, b=c*(a+1)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(x*(x*(x*(x*(f-x/120)-k)+d)-c)+b)
  x=x-t*(y*(y*(y*(y*(f-y/120)-k)+d)-c)+b)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


La05-20 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p2, f=(a+5)/24, k=(f+f)*(a+4), d=k*(a+3)
  c=d*(a+2)/2, b=c*(a+1)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(x*(x*(x*(x*(f-x/120)-k)+d)-c)+b)
  x=x-t*sin(y*(y*(y*(y*(f-y/120)-k)+d)-c)+b)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


La05-21 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p2, f=(a+5)/24, k=(f+f)*(a+4), d=k*(a+3)
  c=d*(a+2)/2, b=c*(a+1)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(f-x/120)-k)+d)-c)+b))
  x=x-t*(fn1(y*(y*(y*(y*(f-y/120)-k)+d)-c)+b))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


La05-22 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p2, f=(a+5)/24, k=(f+f)*(a+4), d=k*(a+3)
  c=d*(a+2)/2, b=c*(a+1)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(f-x/120)-k)+d)-c)+b)
  Ty=fn2(y*(y*(y*(y*(f-y/120)-k)+d)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


La05-23 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p2, f=(a+5)/24, k=(f+f)*(a+4), d=k*(a+3)
  c=d*(a+2)/2, b=c*(a+1)/5
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(f-x/120)-k)+d)-c)+b)
  Ty=fn2(y*(y*(y*(y*(f-y/120)-k)+d)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


La05-24 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p2, f=(a+5)/24, k=(f+f)*(a+4), d=k*(a+3)
  c=d*(a+2)/2, b=c*(a+1)/5
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(f-x/120)-k)+d)-c)+b))
  x=x-t*(fn2(y*(y*(y*(y*(f-y/120)-k)+d)-c)+b))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


La05-25 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p2, f=(a+5)/24, k=(f+f)*(a+4), d=k*(a+3)
  c=d*(a+2)/2, b=c*(a+1)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(f-x/120)-k)+d)-c)+b))
  x=x-t*(fn2(y*(y*(y*(y*(f-y/120)-k)+d)-c)+b))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


La05-26 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p2, f=(a+5)/24, k=(f+f)*(a+4), d=k*(a+3), c=d*(a+2)/2, b=c*(a+1)/5
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(x*(x*(f-x/120)-k)+d)-c)+b))
  Ty=(fn1(y*(y*(y*(y*(f-y/120)-k)+d)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


La05-27 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p2, f=(a+5)/24, k=(f+f)*(a+4), d=k*(a+3)
  c=d*(a+2)/2, b=c*(a+1)/5
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(x*(x*(f-x/120)-k)+d)-c)+b))
  Ty=(fn1(y*(y*(y*(y*(f-y/120)-k)+d)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


La05-28 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p2, f=(a+5)/24, k=(f+f)*(a+4), d=k*(a+3)
  c=d*(a+2)/2, b=c*(a+1)/5
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(x*(x*(f-x/120)-k)+d)-c)+b))
  Ty=(fn1(y*(y*(y*(y*(f-y/120)-k)+d)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


La05-29 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p2, f=(a+5)/24, k=(f+f)*(a+4), d=k*(a+3)
  c=d*(a+2)/2, b=c*(a+1)/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(x*(x*(f-x/120)-k)+d)-c)+b))
  Ty=(fn1(y*(y*(y*(y*(f-y/120)-k)+d)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


La05-30 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p2, f=(a+5)/24, k=(f+f)*(a+4), d=k*(a+3), c=d*(a+2)/2, b=c*(a+1)/5
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(x0*(x0*(f-x0/120)-k)+d)-c)+b
  Fx1=x1*(x1*(x1*(x1*(f-x1/120)-k)+d)-c)+b
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


La06-01 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p2, g=(a+6)/120, f=g*(a+5)*(5/2), k=f*(a+4)*(4/3)
  d=k*(a+3)*(3/4), c=d*(a+2)*(2/5), b=c*(a+1)/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(x*(x*(x*(x*(x/720-g)+f)-k)+d)-c)+b
  Ty=y*(y*(y*(y*(y*(y/720-g)+f)-k)+d)-c)+b
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


La06-02 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p2, g=(a+6)/120, f=g*(a+5)*(5/2)
  k=f*(a+4)*(4/3), d=k*(a+3)*(3/4), c=d*(a+2)*(2/5), b=c*(a+1)/6
  bailout=p1+4, z=pixel:
  z=z*(z*(z*(z*(z*(z/720-g)+f)-k)+d)-c)+b
  |z|<=bailout
  ;SOURCE: chby2.frm
}


La06-03 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p2, g=(a+6)/120, f=g*(a+5)*(5/2), k=f*(a+4)*(4/3)
  d=k*(a+3)*(3/4), c=d*(a+2)*(2/5), b=c*(a+1)/6
  const=p1, z=pixel:
  z=z*(z*(z*(z*(z*(z/720-g)+f)-k)+d)-c)+b+const
  |z|<100
  ;SOURCE: chby3.frm
}


La06-04 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p2, g=(a+6)/120, f=g*(a+5)*(5/2)
  k=f*(a+4)*(4/3), d=k*(a+3)*(3/4)
  c=d*(a+2)*(2/5), b=c*(a+1)/6
  const=pixel, z=p1:
  z=z*(z*(z*(z*(z*(z/720-g)+f)-k)+d)-c)+b+const
  |z|<100
  ;SOURCE: chby4.frm
}


La06-05 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p1
  g1= (a+6)/120
  f1=g1*(a+5)*(5/2)
  e1=f1*(a+4)*(4/3)
  d1=e1*(a+3)*(3/4)
  c1=d1*(a+2)*(2/5)
  b=c1*(a+1)/6
  g2= (a+6)/24
  f2=g2*(a+5)*2
  e2=f2*(a+4)
  d2=e2*(a+3)/2
  c2=d2*(a+2)/5
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z/720-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z/120-g2)+f2)-e2)+d2)-c2
  oz=z
  z=z-f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


La06-06 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; =((a+11-z)La(5)-(a+5)La(4))/6
  a=p1
  g1=(a+6)/120
  f1=g1*(a+5)*(5/2)
  e1=f1*(a+4)*(4/3)
  d1=e1*(a+3)*(3/4)
  c1=d1*(a+a+4)/5
  b=c1*(a+1)/6
  g2=(a+6)/24
  f2=g2*(a+a+10)
  e2=f2*(a+4)
  d2=e2*(a+3)/2
  c2=d2*(a+2)/5
  g3=(a+6)/6
  f3=g3*(a+5)*(3/2)
  e3=f3*(a+a+8)/3
  d3=e3*(a+3)/4
  bailout=real(p2)/10000
  z=pixel:
  f=z*(z*(z*(z*(z*(z/720-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z/120-g2)+f2)-e2)+d2)-c2
  fdd=z*(z*(z*(z/24-g3)+f3)-e3)+d3
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


La06-07 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p1
  g1=(a+6)/120
  f1=g1*(a+5)*(5/2)
  e1=f1*(a+4)*(4/3)
  d1=e1*(a+3)*(3/4)
  c1=d1*(a+2)*(2/5)
  b=c1*(a+1)/6
  g2=(a+6)/24
  f2=g2*(a+5)*2
  e2=f2*(a+4)
  d2=e2*(a+3)/2
  c2=d2*(a+2)/5
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z/720-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z/120-g2)+f2)-e2)+d2)-c2
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(w*(w/720-g1)+f1)-e1)+d1)-c1)+b
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


La06-08 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p2, g=(a+6)/120, f=g*(a+5)*(5/2), k=f*(a+4)*(4/3)
  d=k*(a+3)*(3/4), c=d*(a+2)*(2/5), b=c*(a+1)/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(x*(x*(x*(x*(x*(x/720-g)+f)-k)+d)-c)+b)
  Ty=sin(y*(y*(y*(y*(y*(y/720-g)+f)-k)+d)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


La06-09 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p2, g=(a+6)/120, f=g*(a+5)*(5/2), k=f*(a+4)*(4/3)
  d=k*(a+3)*(3/4), c=d*(a+a+4)/5, b=c*(a+1)/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(x*(x/720-g)+f)-k)+d)-c)+b)
  Ty=fn1(y*(y*(y*(y*(y*(y/720-g)+f)-k)+d)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


La06-10 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p1, g=(a+6)/120, f=g*(a+5)*(5/2), k=f*(a+4)*(4/3)
  d=k*(a+3)*(3/4), c=d*(a+a+4)/5, b=c*(a+1)/6
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=b:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(z*(z/720-g)+f)-k)+d)-c)+b
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


La06-11 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p2, g=(a+6)/120, f=g*(a+5)*(5/2)
  k=f*(a+4)*(4/3), d=k*(a+3)*(3/4), c=d*(a+a+4)/5, b=c*(a+1)/6
  const=p1, z=pixel:
  z=(z*(z*(z*(z*(z*(z/720-g)+f)-k)+d)-c)+b)*const
  |z|<100
  ;SOURCE: chby11.frm
}


La06-12 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p2, g=(a+6)/120, f=g*(a+5)*(5/2)
  k=f*(a+4)*(4/3), d=k*(a+3)*(3/4), c=d*(a+a+4)/5, b=c*(a+1)/6
  const=pixel, z=p1:
  z=(z*(z*(z*(z*(z*(z/720-g)+f)-k)+d)-c)+b)*const
  |z|<100
  ;SOURCE: chby12.frm
}


La06-13 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; =((a+11-z)La(5)-(a+5)La(4))/6
  a=p1
  g1=(a+6)/120
  f1=g1*(a+5)*(5/2)
  e1=f1*(a+4)*(4/3)
  d1=e1*(a+3)*(3/4)
  c1=d1*(a+2)*(2/5)
  b=c1*(a+1)/6
  g2=(a+6)/24
  f2=g2*(a+5)*2
  e2=f2*(a+4)
  d2=e2*(a+3)/2
  c2=d2*(a+2)/5
  g3=(a+6)/6
  f3=g3*(a+5)*(3/2)
  e3=f3*(a+4)*(2/3)
  d3=e3*(a+3)/4
  bailout=real(p2)/10000
  z=pixel:
  f=z*(z*(z*(z*(z*(z/720-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z/120-g2)+f2)-e2)+d2)-c2
  fdd=z*(z*(z*(z/24-g3)+f3)-e3)+d3
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


La06-14 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p1
  g1= (a+6)/120
  f1=g1*(a+5)*(5/2)
  e1=f1*(a+4)*(4/3)
  d1=e1*(a+3)*(3/4)
  c1=d1*(a+2)*(2/5)
  b=c1*(a+1)/6
  g2=(a+6)/24
  f2=g2*(a+5)*2
  e2=f2*(a+4)
  d2=e2*(a+3)/2
  c2=d2*(a+2)/5
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z/720-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z/120-g2)+f2)-e2)+d2)-c2
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(w*(w/720-g1)+f1)-e1)+d1)-c1)+b
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


La06-15 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p1
  g1= (a+6)/120
  f1=g1*(a+5)*(5/2)
  e1=f1*(a+4)*(4/3)
  d1=e1*(a+3)*(3/4)
  c1=d1*(a+2)*(2/5)
  b=c1*(a+1)/6
  g2= (a+6)/24
  f2=g2*(a+5)*2
  e2=f2*(a+4)
  d2=e2*(a+3)/2
  c2=d2*(a+2)/5
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z/720-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z/120-g2)+f2)-e2)+d2)-c2
  oz=z
  z=z-f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


La06-16 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p1, g=(a+6)/120, f=g*(a+5)*(5/2), k=f*(a+4)*(4/3)
  d=k*(a+3)*(3/4), c=d*(a+a+4)/5, b=c*(a+1)/6
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=b:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(z*(z/720-g)+f)-k)+d)-c)+b
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


La06-17 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p3, g=(a+6)/120, f=g*(a+5)*(5/2), k=f*(a+4)*(4/3)
  d=k*(a+3)*(3/4), c=d*(a+a+4)/5, b=c*(a+1)/6
  z=pixel, oz=0
  fz=b
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(z*(z/720-g)+f)-k)+d)-c)+b
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
 |fz|>=0.0001
  ;SOURCE: chby17.frm
}


La06-18 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p3, g=(a+6)/120, f=g*(a+5)*(5/2), k=f*(a+4)*(4/3)
  d=k*(a+3)*(3/4), c=d*(a+a+4)/5, b=c*(a+1)/6
  z=pixel, oz=0
  fz=b
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(z*(z/720-g)+f)-k)+d)-c)+b
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


La06-19 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p2, g=(a+6)/120, f=g*(a+5)*(5/2)
  k=f*(a+4)*(4/3), d=k*(a+3)*(3/4), c=d*(a+2)*(2/5), b=c*(a+1)/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(x*(x*(x*(x*(x*(x/720-g)+f)-k)+d)-c)+b)
  x=x-t*(y*(y*(y*(y*(y*(y/720-g)+f)-k)+d)-c)+b)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


La06-20 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p2, g=(a+6)/120, f=g*(a+5)*(5/2), k=f*(a+4)*(4/3)
  d=k*(a+3)*(3/4), c=d*(a+2)*(2/5), b=c*(a+1)/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(x*(x*(x*(x*(x*(x/720-g)+f)-k)+d)-c)+b)
  x=x-t*sin(y*(y*(y*(y*(y*(y/720-g)+f)-k)+d)-c)+b)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


La06-21 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p2, g=(a+6)/120, f=g*(a+5)*(5/2), k=f*(a+4)*(4/3)
  d=k*(a+3)*(3/4), c=d*(a+a+4)/5, b=c*(a+1)/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x/720-g)+f)-k)+d)-c)+b))
  x=x-t*(fn1(y*(y*(y*(y*(y*(y/720-g)+f)-k)+d)-c)+b))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


La06-22 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p2, g=(a+6)/120, f=g*(a+5)*(5/2), k=f*(a+4)*(4/3)
  d=k*(a+3)*(3/4), c=d*(a+a+4)/5, b=c*(a+1)/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(x*(x/720-g)+f)-k)+d)-c)+b)
  Ty=fn2(y*(y*(y*(y*(y*(y/720-g)+f)-k)+d)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


La06-23 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p2, g=(a+6)/120, f=g*(a+5)*(5/2), k=f*(a+4)*(4/3)
  d=k*(a+3)*(3/4), c=d*(a+a+4)/5, b=c*(a+1)/6
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(x*(x/720-g)+f)-k)+d)-c)+b)
  Ty=fn2(y*(y*(y*(y*(y*(y/720-g)+f)-k)+d)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


La06-24 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p2, g=(a+6)/120, f=g*(a+5)*(5/2), k=f*(a+4)*(4/3)
  d=k*(a+3)*(3/4), c=d*(a+a+4)/5, b=c*(a+1)/6
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x/720-g)+f)-k)+d)-c)+b))
  x=x-t*(fn2(y*(y*(y*(y*(y*(y/720-g)+f)-k)+d)-c)+b))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


La06-25 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p2, g=(a+6)/120, f=g*(a+5)*(5/2), k=f*(a+4)*(4/3)
  d=k*(a+3)*(3/4), c=d*(a+a+4)/5, b=c*(a+1)/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x/720-g)+f)-k)+d)-c)+b))
  x=x-t*(fn2(y*(y*(y*(y*(y*(y/720-g)+f)-k)+d)-c)+b))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


La06-26 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p2, g=(a+6)/120, f=g*(a+5)*(5/2), k=f*(a+4)*(4/3)
  d=k*(a+3)*(3/4), c=d*(a+a+4)/5, b=c*(a+1)/6
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(x*(x*(x*(x/720-g)+f)-k)+d)-c)+b))
  Ty=(fn1(y*(y*(y*(y*(y*(y/720-g)+f)-k)+d)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


La06-27 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p2, g=(a+6)/120, f=g*(a+5)*(5/2), k=f*(a+4)*(4/3)
  d=k*(a+3)*(3/4), c=d*(a+a+4)/5, b=c*(a+1)/6
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(x*(x*(x*(x/720-g)+f)-k)+d)-c)+b))
  Ty=(fn1(y*(y*(y*(y*(y*(y/720-g)+f)-k)+d)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


La06-28 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p2, g=(a+6)/120, f=g*(a+5)*(5/2), k=f*(a+4)*(4/3)
  d=k*(a+3)*(3/4), c=d*(a+a+4)/5, b=c*(a+1)/6
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(x*(x*(x*(x/720-g)+f)-k)+d)-c)+b))
  Ty=(fn1(y*(y*(y*(y*(y*(y/720-g)+f)-k)+d)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


La06-29 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p2, g=(a+6)/120, f=g*(a+5)*(5/2), k=f*(a+4)*(4/3)
  d=k*(a+3)*(3/4), c=d*(a+a+4)/5, b=c*(a+1)/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(x*(x*(x*(x/720-g)+f)-k)+d)-c)+b))
  Ty=(fn1(y*(y*(y*(y*(y*(y/720-g)+f)-k)+d)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


La06-30 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p2, g=(a+6)/120, f=g*(a+5)*(5/2), k=f*(a+4)*(4/3)
  d=k*(a+3)*(3/4), c=d*(a+2)*(2/5), b=c*(a+1)/6
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(x0*(x0*(x0*(x0/720-g)+f)-k)+d)-c)+b
  Fx1=x1*(x1*(x1*(x1*(x1*(x1/720-g)+f)-k)+d)-c)+b
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


La07-01 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p2, h=(a+7)/720, g=h*(a+6)*3, f=g*(a+5)*(5/3), k=f*(a+4)
  d=k*(a+3)*(3/5), c=d*(a+2)/3, b=c*(a+1)/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(x*(x*(x*(x*(x*(h-x/5040)-g)+f)-k)+d)-c)+b
  Ty=y*(y*(y*(y*(y*(y*(h-y/5040)-g)+f)-k)+d)-c)+b
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


La07-02 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p2, h=(a+7)/720, g=h*(a+6)*3, f=g*(a+5)*(5/3)
  k=f*(a+4), d=k*(a+3)*(3/5), c=d*(a+2)/3, b=c*(a+1)/7
  bailout=p1+4, z=pixel:
  z=z*(z*(z*(z*(z*(z*(h-z/5040)-g)+f)-k)+d)-c)+b
  |z|<=bailout
  ;SOURCE: chby2.frm
}


La07-03 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p2, h=(a+7)/720, g=h*(a+6)*3, f=g*(a+5)*(5/3)
  k=f*(a+4), d=k*(a+3)*(3/5), c=d*(a+2)/3, b=c*(a+1)/7
  const=p1, z=pixel:
  z=z*(z*(z*(z*(z*(z*(h-z/5040)-g)+f)-k)+d)-c)+b+const
  |z|<100
  ;SOURCE: chby3.frm
}


La07-04 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p2, h=(a+7)/720, g=h*(a+6)*3, f=g*(a+5)*(5/3)
  k=f*(a+4), d=k*(a+3)*(3/5), c=d*(a+2)/3, b=c*(a+1)/7
  const=pixel, z=p1:
  z=z*(z*(z*(z*(z*(z*(h-z/5040)-g)+f)-k)+d)-c)+b+const
  |z|<100
  ;SOURCE: chby4.frm
}


La07-05 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p1
  h1=(a+7)/720
  g1=h1*(a+6)*3
  f1=g1*(a+5)*(5/3)
  e1=f1*(a+4)
  d1=e1*(a+3)*(3/5)
  c1=d1*(a+2)/3
  b=c1*(a+1)/7
  h2= (a+7)/120
  g2=h2*(a+6)*(5/2)
  f2=g2*(a+5)*(4/3)
  e2=f2*(a+4)*(3/4)
  d2=e2*(a+3)*(2/5)
  c2=d2*(a+2)/6
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(h1-z/5040)-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(h-z/720)-g2)+f2)-e2)+d2)-c2
  oz=z
  z=z-f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


La07-06 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; =((a+13-z)La(6)-(a+6)La(5))/7
  a=p1
  h1=(a+7)/720
  g1=h1*(a+6)*3
  f1=g1*(a+5)*(5/3)
  e1=f1*(a+4)
  d1=e1*(a+3)*(3/5)
  c1=d1*(a+2)/3
  b=c1*(a+1)/7
  h2=(a+7)/120
  g2=h2*(a+6)*(5/2)
  f2=g2*(a+5)*(4/3)
  e2=f2*(a+4)*(3/4)
  d2=e2*(a+a+6)/5
  c2=d2*(a+2)/6
  h3=(a+7)/24
  g3=h3*(a+a+12)
  f3=g3*(a+5)
  e3=f3*(a+4)/2
  d3=e3*(a+3)/5
  bailout=real(p2)/10000
  z=pixel:
  f=z*(z*(z*(z*(z*(z*(h1-z/5040)-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(h-z/720)-g2)+f2)-e2)+d2)-c2
  fdd=z*(z*(z*(z*(h3-z/120)-g3)+f3)-e3)+d3
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


La07-07 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p1
  h1=(a+7)/720
  g1=h1*(a+6)*3
  f1=g1*(a+5)*(5/3)
  e1=f1*(a+4)
  d1=e1*(a+3)*(3/5)
  c1=d1*(a+2)/3
  b=c1*(a+1)/7
  h2= (a+7)/120
  g2=h2*(a+6)*(5/2)
  f2=g2*(a+5)*(4/3)
  e2=f2*(a+4)*(3/4)
  d2=e2*(a+3)*(2/5)
  c2=d2*(a+2)/6
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(h1-z/5040)-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(h-z/720)-g2)+f2)-e2)+d2)-c2
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(w*(w*(h1-w/5040)-g1)+f1)-e1)+d1)-c1)+b
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


La07-08 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p2, h=(a+7)/720, g=h*(a+6)*3, f=g*(a+5)*(5/3)
  k=f*(a+4), d=k*(a+3)*(3/5), c=d*(a+2)/3, b=c*(a+1)/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(x*(x*(x*(x*(x*(x*(h-x/5040)-g)+f)-k)+d)-c)+b)
  Ty=sin(y*(y*(y*(y*(y*(y*(h-y/5040)-g)+f)-k)+d)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


La07-09 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p2, h=(a+7)/720, g=h*(a+6)*3, f=g*(a+5)*(5/3)
  k=f*(a+4), d=k*(a+3)*(3/5), c=d*(a+2)/3, b=c*(a+1)/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(x*(x*(h-x/5040)-g)+f)-k)+d)-c)+b)
  Ty=fn1(y*(y*(y*(y*(y*(y*(h-y/5040)-g)+f)-k)+d)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


La07-10 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p1, h=(a+7)/720, g=h*(a+6)*3, f=g*(a+5)*(5/3)
  k=f*(a+4), d=k*(a+3)*(3/5), c=d*(a+2)/3, b=c*(a+1)/7
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=b:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(h-z/5040)-g)+f)-k)+d)-c)+b
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


La07-11 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p2, h=(a+7)/720, g=h*(a+6)*3, f=g*(a+5)*(5/3)
  k=f*(a+4), d=k*(a+3)*(3/5), c=d*(a+2)/3, b=c*(a+1)/7
  const=p1, z=pixel:
  z=(z*(z*(z*(z*(z*(z*(h-z/5040)-g)+f)-k)+d)-c)+b)*const
  |z|<100
  ;SOURCE: chby11.frm
}


La07-12 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p2, h=(a+7)/720, g=h*(a+6)*3
  f=g*(a+5)*(5/3), k=f*(a+4), d=k*(a+3)*(3/5)
  c=d*(a+2)/3, b=c*(a+1)/7
  const=pixel, z=p1:
  z=(z*(z*(z*(z*(z*(z*(h-z/5040)-g)+f)-k)+d)-c)+b)*const
  |z|<100
  ;SOURCE: chby12.frm
}


La07-13 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; =((a+13-z)La(6)-(a+6)La(5))/7
  a=p1
  h1=(a+7)/720
  g1=h1*(a+6)*3
  f1=g1*(a+5)*(5/3)
  e1=f1*(a+4)
  d1=e1*(a+3)*(3/5)
  c1=d1*(a+2)/3
  b=c1*(a+1)/7
  h2=(a+7)/120
  g2=h2*(a+6)*(5/2)
  f2=g2*(a+5)*(4/3)
  e2=f2*(a+4)*(3/4)
  d2=e2*(a+3)*(2/5)
  c2=d2*(a+2)/6
  h3=(a+7)/24
  g3=h3*(a+6)*2
  f3=g3*(a+5)
  e3=f3*(a+4)/2
  d3=e3*(a+3)/5
  bailout=real(p2)/10000
  z=pixel:
  f=z*(z*(z*(z*(z*(z*(h1-z/5040)-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(h-z/720)-g2)+f2)-e2)+d2)-c2
  fdd=z*(z*(z*(z*(h3-z/120)-g3)+f3)-e3)+d3
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


La07-14 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p1
  h1=(a+7)/720
  g1=h1*(a+6)*3
  f1=g1*(a+5)*(5/3)
  e1=f1*(a+4)
  d1=e1*(a+3)*(3/5)
  c1=d1*(a+2)/3
  b=c1*(a+1)/7
  h2= (a+7)/120
  g2=h2*(a+6)*(5/2)
  f2=g2*(a+5)*(4/3)
  e2=f2*(a+4)*(3/4)
  d2=e2*(a+3)*(2/5)
  c2=d2*(a+2)/6
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(h1-z/5040)-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(h-z/720)-g2)+f2)-e2)+d2)-c2
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(w*(w*(h1-w/5040)-g1)+f1)-e1)+d1)-c1)+b
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


La07-15 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p1
  h1=(a+7)/720
  g1=h1*(a+6)*3
  f1=g1*(a+5)*(5/3)
  e1=f1*(a+4)
  d1=e1*(a+3)*(3/5)
  c1=d1*(a+2)/3
  b=c1*(a+1)/7
  h2= (a+7)/120
  g2=h2*(a+6)*(5/2)
  f2=g2*(a+5)*(4/3)
  e2=f2*(a+4)*(3/4)
  d2=e2*(a+3)*(2/5)
  c2=d2*(a+2)/6
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(h1-z/5040)-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(h-z/720)-g2)+f2)-e2)+d2)-c2
  oz=z
  z=z-f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


La07-16 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p1, h=(a+7)/720, g=h*(a+6)*3, f=g*(a+5)*(5/3)
  k=f*(a+4), d=k*(a+3)*(3/5), c=d*(a+2)/3, b=c*(a+1)/7
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=b:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(h-z/5040)-g)+f)-k)+d)-c)+b
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


La07-17 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p3, h=(a+7)/720, g=h*(a+6)*3, f=g*(a+5)*(5/3)
  k=f*(a+4), d=k*(a+3)*(3/5), c=d*(a+2)/3, b=c*(a+1)/7
  z=pixel, oz=0
  fz=b
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(h-z/5040)-g)+f)-k)+d)-c)+b
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


La07-18 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p3, h=(a+7)/720, g=h*(a+6)*3, f=g*(a+5)*(5/3)
  k=f*(a+4), d=k*(a+3)*(3/5), c=d*(a+2)/3, b=c*(a+1)/7
  z=pixel, oz=0
  fz=b
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(h-z/5040)-g)+f)-k)+d)-c)+b
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


La07-19 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p2, h=(a+7)/720, g=h*(a+6)*3, f=g*(a+5)*(5/3)
  k=f*(a+4), d=k*(a+3)*(3/5), c=d*(a+2)/3, b=c*(a+1)/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(x*(x*(x*(x*(x*(x*(h-x/5040)-g)+f)-k)+d)-c)+b)
  x=x-t*(y*(y*(y*(y*(y*(y*(h-y/5040)-g)+f)-k)+d)-c)+b)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


La07-20 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p2, h=(a+7)/720, g=h*(a+6)*3, f=g*(a+5)*(5/3)
  k=f*(a+4), d=k*(a+3)*(3/5), c=d*(a+2)/3, b=c*(a+1)/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(x*(x*(x*(x*(x*(x*(h-x/5040)-g)+f)-k)+d)-c)+b)
  x=x-t*sin(y*(y*(y*(y*(y*(y*(h-y/5040)-g)+f)-k)+d)-c)+b)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


La07-21 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p2, h=(a+7)/720, g=h*(a+6)*3, f=g*(a+5)*(5/3)
  k=f*(a+4), d=k*(a+3)*(3/5), c=d*(a+2)/3, b=c*(a+1)/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(h-x/5040)-g)+f)-k)+d)-c)+b))
  x=x-t*(fn1(y*(y*(y*(y*(y*(y*(h-y/5040)-g)+f)-k)+d)-c)+b))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


La07-22 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p2, h=(a+7)/720, g=h*(a+6)*3, f=g*(a+5)*(5/3)
  k=f*(a+4), d=k*(a+3)*(3/5)
  c=d*(a+2)/3, b=c*(a+1)/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(x*(x*(h-x/5040)-g)+f)-k)+d)-c)+b)
  Ty=fn2(y*(y*(y*(y*(y*(y*(h-y/5040)-g)+f)-k)+d)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


La07-23 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p2, h=(a+7)/720, g=h*(a+6)*3, f=g*(a+5)*(5/3)
  k=f*(a+4), d=k*(a+3)*(3/5), c=d*(a+2)/3, b=c*(a+1)/7
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(x*(x*(h-x/5040)-g)+f)-k)+d)-c)+b)
  Ty=fn2(y*(y*(y*(y*(y*(y*(h-y/5040)-g)+f)-k)+d)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


La07-24 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p2, h=(a+7)/720, g=h*(a+6)*3, f=g*(a+5)*(5/3)
  k=f*(a+4), d=k*(a+3)*(3/5), c=d*(a+2)/3, b=c*(a+1)/7
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(h-x/5040)-g)+f)-k)+d)-c)+b))
  x=x-t*(fn2(y*(y*(y*(y*(y*(y*(h-y/5040)-g)+f)-k)+d)-c)+b))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


La07-25 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p2, h=(a+7)/720, g=h*(a+6)*3, f=g*(a+5)*(5/3)
  k=f*(a+4), d=k*(a+3)*(3/5), c=d*(a+2)/3, b=c*(a+1)/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(h-x/5040)-g)+f)-k)+d)-c)+b))
  x=x-t*(fn2(y*(y*(y*(y*(y*(y*(h-y/5040)-g)+f)-k)+d)-c)+b))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


La07-26 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p2, h=(a+7)/720, g=h*(a+6)*3, f=g*(a+5)*(5/3)
  k=f*(a+4), d=k*(a+3)*(3/5), c=d*(a+2)/3, b=c*(a+1)/7
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(x*(x*(x*(x*(h-x/5040)-g)+f)-k)+d)-c)+b))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(h-y/5040)-g)+f)-k)+d)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


La07-27 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p2, h=(a+7)/720, g=h*(a+6)*3, f=g*(a+5)*(5/3)
  k=f*(a+4), d=k*(a+3)*(3/5), c=d*(a+2)/3, b=c*(a+1)/7
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(x*(x*(x*(x*(h-x/5040)-g)+f)-k)+d)-c)+b))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(h-y/5040)-g)+f)-k)+d)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


La07-28 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p2, h=(a+7)/720, g=h*(a+6)*3, f=g*(a+5)*(5/3)
  k=f*(a+4), d=k*(a+3)*(3/5), c=d*(a+2)/3, b=c*(a+1)/7
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(x*(x*(x*(x*(h-x/5040)-g)+f)-k)+d)-c)+b))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(h-y/5040)-g)+f)-k)+d)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


La07-29 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p2, h=(a+7)/720, g=h*(a+6)*3, f=g*(a+5)*(5/3)
  k=f*(a+4), d=k*(a+3)*(3/5), c=d*(a+2)/3, b=c*(a+1)/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(x*(x*(x*(x*(h-x/5040)-g)+f)-k)+d)-c)+b))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(h-y/5040)-g)+f)-k)+d)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


La07-30 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p2, h=(a+7)/720, g=h*(a+6)*3, f=g*(a+5)*(5/3)
  k=f*(a+4), d=k*(a+3)*(3/5), c=d*(a+2)/3, b=c*(a+1)/7
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(x0*(x0*(x0*(x0*(h-x0/5040)-g)+f)-k)+d)-c)+b
  Fx1=x1*(x1*(x1*(x1*(x1*(x1*(h-x1/5040)-g)+f)-k)+d)-c)+b
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


La08-01 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p2, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+6)*2
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2
  c=d*(a+2)*(2/7),b=c*(a+1)/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b
  Ty=y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


La08-02 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p2, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+6)*2
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2
  c=d*(a+2)*(2/7), b=c*(a+1)/8
  bailout=p1+4, z=pixel:
  z=z*(z*(z*(z*(z*(z*(z*(z/40320-i)+h)-g)+f)-k)+d)-c)+b
  |z|<=bailout
  ;SOURCE: chby2.frm
}


La08-03 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p2, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+6)*2
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2, c=d*(a+2)*(2/7)
  b=c*(a+1)/8
  const=p1, z=pixel:
  z=z*(z*(z*(z*(z*(z*(z*(z/40320-i)+h)-g)+f)-k)+d)-c)+b+const
  |z|<100
  ;SOURCE: chby3.frm
}


La08-04 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p2, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+6)*2
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2
  c=d*(a+2)*(2/7), b=c*(a+1)/8
  const=pixel, z=p1:
  z=z*(z*(z*(z*(z*(z*(z*(z/40320-i)+h)-g)+f)-k)+d)-c)+b+const
  |z|<100
  ;SOURCE: chby4.frm
}


La08-05 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p1
  i1= (a+8)/5040
  h1=i1*(a+7)*(7/2)
  g1=h1*(a+6)*2
  f1=g1*(a+5)*(5/4)
  e1=f1*(a+4)*(4/5)
  d1=e1*(a+3)/2
  c1=d1*(a+2)*(2/7)
  b=c1*(a+1)/8
  i2= (a+8)/720
  h2=i2*(a+7)
  g2=h2*(a+6)*(5/3)
  f2=g2*(a+5)
  e2=f2*(a+4)*(3/5)
  d2=e2*(a+3)/3
  c2=d2*(a+2)/7
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z/40320-i1)+h1)-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(z*(z/5040-i2)+h2)-g2)+f2)-e2)+d2)-c2
  oz=z
  z=z-f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


La08-06 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; =((a+15-z)La(7)-(a+7)La(6))/8
  a=p1
  i1=(a+8)/5040
  h1=i1*(a+7)*(7/2)
  g1=h1*(a+a+12)
  f1=g1*(a+5)*(5/4)
  e1=f1*(a+4)*(4/5)
  d1=e1*(a+3)/2
  c1=d1*(a+a+4)/7
  b=c1*(a+1)/8
  i2=(a+8)/720
  h2=i2*(a+7)
  g2=h2*(a+6)*(5/3)
  f2=g2*(a+5)
  e2=f2*(a+4)*(3/5)
  d2=e2*(a+3)/3
  c2=d2*(a+2)/7
  i3=(a+8)/120
  h3=i3*(a+7)*(5/6)
  g3=h3*(a+6)*(4/3)
  f3=g3*(a+5)*(3/4)
  e3=f3*(a+a+8)/5
  d3=e3*(a+3)/6
  bailout=real(p2)/10000
  z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z/40320-i1)+h1)-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(z*(z/5040-i2)+h2)-g2)+f2)-e2)+d2)-c2
  fdd=z*(z*(z*(z*(z*(z/720-i3)+h3)-g3)+f3)-e3)+d3
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


La08-07 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p1
  i1= (a+8)/5040
  h1=i1*(a+7)*(7/2)
  g1=h1*(a+6)*2
  f1=g1*(a+5)*(5/4)
  e1=f1*(a+4)*(4/5)
  d1=e1*(a+3)/2
  c1=d1*(a+2)*(2/7)
  b=c1*(a+1)/8
  i2= (a+8)/720
  h2=i2*(a+7)
  g2=h2*(a+6)*(5/3)
  f2=g2*(a+5)
  e2=f2*(a+4)*(3/5)
  d2=e2*(a+3)/3
  c2=d2*(a+2)/7
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z/40320-i1)+h1)-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(z*(z/5040-i2)+h2)-g2)+f2)-e2)+d2)-c2
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(w*(w*(w*(w/40320-i1)+h1)-g1)+f1)-e1)+d1)-c1)+b
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


La08-08 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p2, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+6)*2
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2, c=d*(a+2)*(2/7)
  b=c*(a+1)/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b)
  Ty=sin(y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


La08-09 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p2, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+a+12)
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2, c=d*(a+a+4)/7
  b=c*(a+1)/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b)
  Ty=fn1(y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


La08-10 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p1, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+6)*2
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2
  c=d*(a+a+4)/7, b=c*(a+1)/8
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=b:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z/40320-i)+h)-g)+f)-k)+d)-c)+b
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


La08-11 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p2, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+6)*2
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2
  c=d*(a+a+4)/7, b=c*(a+1)/8
  const=p1, z=pixel:
  z=(z*(z*(z*(z*(z*(z*(z*(z/40320-i)+h)-g)+f)-k)+d)-c)+b)*const
  |z|<100
  ;SOURCE: chby11.frm
}


La08-12 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p2, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+6)*2
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2
  c=d*(a+a+4)/7, b=c*(a+1)/8
  const=pixel, z=p1:
  z=(z*(z*(z*(z*(z*(z*(z*(z/40320-i)+h)-g)+f)-k)+d)-c)+b)*const
  |z|<100
  ;SOURCE: chby12.frm
}


La08-13 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; =((a+15-z)La(7)-(a+7)La(6))/8
  a=p1
  i1=(a+8)/5040
  h1=i1*(a+7)*(7/2)
  g1=h1*(a+6)*2
  f1=g1*(a+5)*(5/4)
  e1=f1*(a+4)*(4/5)
  d1=e1*(a+3)/2
  c1=d1*(a+2)*(2/7)
  b=c1*(a+1)/8
  i2=(a+8)/720
  h2=i2*(a+7)
  g2=h2*(a+6)*(5/3)
  f2=g2*(a+5)
  e2=f2*(a+4)*(3/5)
  d2=e2*(a+3)/3
  c2=d2*(a+2)/7
  i3=(a+8)/120
  h3=i3*(a+7)*(5/6)
  g3=h3*(a+6)*(4/3)
  f3=g3*(a+5)*(3/4)
  e3=f3*(a+4)*(2/5)
  d3=e3*(a+3)/6
  bailout=real(p2)/10000
  z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z/40320-i1)+h1)-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(z*(z/5040-i2)+h2)-g2)+f2)-e2)+d2)-c2
  fdd=z*(z*(z*(z*(z*(z/720-i3)+h3)-g3)+f3)-e3)+d3
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


La08-14 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p1
  i1= (a+8)/5040
  h1=i1*(a+7)*(7/2)
  g1=h1*(a+6)*2
  f1=g1*(a+5)*(5/4)
  e1=f1*(a+4)*(4/5)
  d1=e1*(a+3)/2
  c1=d1*(a+2)*(2/7)
  b=c1*(a+1)/8
  i2= (a+8)/720
  h2=i2*(a+7)
  g2=h2*(a+6)*(5/3)
  f2=g2*(a+5)
  e2=f2*(a+4)*(3/5)
  d2=e2*(a+3)/3
  c2=d2*(a+2)/7
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z/40320-i1)+h1)-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(z*(z/5040-i2)+h2)-g2)+f2)-e2)+d2)-c2
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(w*(w*(w*(w/40320-i1)+h1)-g1)+f1)-e1)+d1)-c1)+b
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


La08-15 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p1
  i1= (a+8)/5040
  h1=i1*(a+7)*(7/2)
  g1=h1*(a+6)*2
  f1=g1*(a+5)*(5/4)
  e1=f1*(a+4)*(4/5)
  d1=e1*(a+3)/2
  c1=d1*(a+2)*(2/7)
  b=c1*(a+1)/8
  i2= (a+8)/720
  h2=i2*(a+7)
  g2=h2*(a+6)*(5/3)
  f2=g2*(a+5)
  e2=f2*(a+4)*(3/5)
  d2=e2*(a+3)/3
  c2=d2*(a+2)/7
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z/40320-i1)+h1)-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(z*(z/5040-i2)+h2)-g2)+f2)-e2)+d2)-c2
  oz=z
  z=z-f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


La08-16 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p1, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+6)*2
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2
  c=d*(a+a+4)/7, b=c*(a+1)/8
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=b:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z/40320-i)+h)-g)+f)-k)+d)-c)+b
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


La08-17 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p3, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+6)*2
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2, c=d*(a+a+4)/7
  b=c*(a+1)/8
  z=pixel, oz=0
  fz=b
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z/40320-i)+h)-g)+f)-k)+d)-c)+b
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


La08-18 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p3, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+6)*2
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2
  c=d*(a+a+4)/7, b=c*(a+1)/8
  z=pixel, oz=0
  fz=b
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z/40320-i)+h)-g)+f)-k)+d)-c)+b
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


La08-19 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p2, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+6)*2
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2
  c=d*(a+2)*(2/7), b=c*(a+1)/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b)
  x=x-t*(y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


La08-20 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p2, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+6)*2
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2
  c=d*(a+2)*(2/7), b=c*(a+1)/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b)
  x=x-t*sin(y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


La08-21 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p2, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+a+12)
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2
  c=d*(a+a+4)/7, b=c*(a+1)/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b))
  x=x-t*(fn1(y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


La08-22 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p2, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+a+12)
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2
  c=d*(a+a+4)/7, b=c*(a+1)/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b)
  Ty=fn2(y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


La08-23 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p2, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+a+12)
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2
  c=d*(a+a+4)/7, b=c*(a+1)/8
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b)
  Ty=fn2(y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


La08-24 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p2, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+a+12)
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2
  c=d*(a+a+4)/7, b=c*(a+1)/8
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b))
  x=x-t*(fn2(y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


La08-25 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p2, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+a+12)
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2
  c=d*(a+a+4)/7, b=c*(a+1)/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b))
  x=x-t*(fn2(y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


La08-26 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p2, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+a+12)
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2
  c=d*(a+a+4)/7, b=c*(a+1)/8
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


La08-27 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p2, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+a+12)
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2
  c=d*(a+a+4)/7, b=c*(a+1)/8
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


La08-28 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p2, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+a+12)
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2, c=d*(a+a+4)/7
  b=c*(a+1)/8, t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


La08-29 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p2, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+a+12)
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2
  c=d*(a+a+4)/7, b=c*(a+1)/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


La08-30 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p2, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+6)*2
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2, c=d*(a+2)*(2/7)
  b=c*(a+1)/8
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(x0*(x0*(x0*(x0*(x0*(x0/40320-i)+h)-g)+f)-k)+d)-c)+b
  Fx1=x1*(x1*(x1*(x1*(x1*(x1*(x1*(x1/40320-i)+h)-g)+f)-k)+d)-c)+b
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


La09-01 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p2, j=(a+9)/40320, i=j*(a+8)*4, h=i*(a+7)*(7/3)
  g=h*(a+6)*(3/2), f=g*(a+5), k=f*(a+4)*(2/3), d=k*(a+3)*(3/7)
  c=d*(a+2)/4, b=c*(a+1)/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b
  Ty=y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


La09-02 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p2, j=(a+9)/40320, i=j*(a+8)*4, h=i*(a+7)*(7/3)
  g=h*(a+6)*(3/2), f=g*(a+5), k=f*(a+4)*(2/3), d=k*(a+3)*(3/7)
  c=d*(a+2)/4, b=c*(a+1)/9
  bailout=p1+4, z=pixel:
  z=z*(z*(z*(z*(z*(z*(z*(z/40320-i)+h)-g)+f)-k)+d)-c)+b
  |z|<=bailout
  ;SOURCE: chby2.frm
}


La09-03 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p2, j=(a+9)/40320, i=j*(a+8)*4, h=i*(a+7)*(7/3)
  g=h*(a+6)*(3/2), f=g*(a+5), k=f*(a+4)*(2/3), d=k*(a+3)*(3/7)
  c=d*(a+2)/4, b=c*(a+1)/9
  const=p1, z=pixel:
  z=z*(z*(z*(z*(z*(z*(z*(z/40320-i)+h)-g)+f)-k)+d)-c)+b+const
  |z|<100
  ;SOURCE: chby3.frm
}


La09-04 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p2, j=(a+9)/40320, i=j*(a+8)*4, h=i*(a+7)*(7/3)
  g=h*(a+6)*(3/2), f=g*(a+5), k=f*(a+4)*(2/3)
  d=k*(a+3)*(3/7), c=d*(a+2)/4, b=c*(a+1)/9
  const=pixel, z=p1:
  z=z*(z*(z*(z*(z*(z*(z*(z/40320-i)+h)-g)+f)-k)+d)-c)+b+const
  |z|<100
  ;SOURCE: chby4.frm
}


La09-05 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p1
  j1=(a+9)/40320
  i1=j1*(a+8)*4
  h1=i1*(a+7)*(7/3)
  g1=h1*(a+6)*(3/2)
  f1=g1*(a+5)
  e1=f1*(a+4)*(2/3)
  d1=e1*(a+3)*(3/7)
  c1=d1*(a+2)/4
  b=c1*(a+1)/9
  j2= (a+9)/5040
  i2=j2*(a+8)*(7/2)
  h2=i2*(a+7)
  g2=h2*(a+6)*(5/4)
  f2=g2*(a+5)*(4/5)
  e2=f2*(a+4)/2
  d2=e2*(a+3)*(2/7)
  c2=d2*(a+2)/8
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(j1-z/362880)-i1)+h1)-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(z*(z*(j2-z/40320)-i2)+h2)-g2)+f2)-e2)+d2)-c2
  oz=z
  z=z-f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


La09-06 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; =((a+17-z)La(8)-(a+8)La(7))/9
  a=p1
  j1=(a+9)/40320
  i1=j1*(a+8)*4
  h1=i1*(a+7)*(7/3)
  g1=h1*(a+6)*(3/2)
  f1=g1*(a+5)
  e1=f1*(a+a+8)/3
  d1=e1*(a+3)*(3/7)
  c1=d1*(a+2)/4
  b=c1*(a+1)/9
  j2=(a+9)/5040
  i2=j2*(a+8)*(7/2)
  h2=i2*(a+7)
  g2=h2*(a+6)*(5/4)
  f2=g2*(a+5)*(4/5)
  e2=f2*(a+4)/2
  d2=e2*(a+a+6)/7
  c2=d2*(a+2)/8
  j3=(a+9)*(7/720)
  i3=j3*(a+8)*(18/7)
  h3=i3*(a+7)*(25/36)
  g3=h3*(a+6)*(4/5)
  f3=g3*(a+5)*(9/20)
  e3=f3*(a+a+8)/9
  d3=e3*(a+3)/14
  bailout=real(p2)/10000
  z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(j1-z/362880)-i1)+h1)-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(z*(z*(j2-z/40320)-i2)+h2)-g2)+f2)-e2)+d2)-c2
  fdd=z*(z*(z*(z*(z*(z*(j3-z/5040)-i3)+h3)-g3)+f3)-e3)+d3
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


La09-07 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p1
  j1=(a+9)/40320
  i1=j1*(a+8)*4
  h1=i1*(a+7)*(7/3)
  g1=h1*(a+6)*(3/2)
  f1=g1*(a+5)
  e1=f1*(a+4)*(2/3)
  d1=e1*(a+3)*(3/7)
  c1=d1*(a+2)/4
  b=c1*(a+1)/9
  j2= (a+9)/5040
  i2=j2*(a+8)*(7/2)
  h2=i2*(a+7)
  g2=h2*(a+6)*(5/4)
  f2=g2*(a+5)*(4/5)
  e2=f2*(a+4)/2
  d2=e2*(a+3)*(2/7)
  c2=d2*(a+2)/8
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(j1-z/362880)-i1)+h1)-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(z*(z*(j2-z/40320)-i2)+h2)-g2)+f2)-e2)+d2)-c2
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(w*(w*(w*(w*(j1-w/362880)-i1)+h1)-g1)+f1)-e1)+d1)-c1)+b
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


La09-08 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p2, j=(a+9)/40320, i=j*(a+8)*4, h=i*(a+7)*(7/3)
  g=h*(a+6)*(3/2), f=g*(a+5), k=f*(a+4)*(2/3)
  d=k*(a+3)*(3/7), c=d*(a+2)/4, b=c*(a+1)/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b)
  Ty=sin(y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


La09-09 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p2, j=(a+9)/40320, i=j*(a+8)*4, h=i*(a+7)*(7/3)
  g=h*(a+6)*(3/2), f=g*(a+5), k=f*(a+a+8)/3
  d=k*(a+3)*(3/7), c=d*(a+2)/4, b=c*(a+1)/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b)
  Ty=fn1(y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


La09-10 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p1, j=(a+9)/40320, i=j*(a+8)*4, h=i*(a+7)*(7/3)
  g=h*(a+6)*(3/2), f=g*(a+5), k=f*(a+a+8)/3, d=k*(a+3)*(3/7)
  c=d*(a+2)/4, b=c*(a+1)/9
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=b:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z/40320-i)+h)-g)+f)-k)+d)-c)+b
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


La09-11 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p2, j=(a+9)/40320, i=j*(a+8)*4, h=i*(a+7)*(7/3)
  g=h*(a+6)*(3/2), f=g*(a+5), k=f*(a+4)*(2/3)
  d=k*(a+3)*(3/7), c=d*(a+2)/4, b=c*(a+1)/9
  const=p1, z=pixel:
  z=(z*(z*(z*(z*(z*(z*(z*(z/40320-i)+h)-g)+f)-k)+d)-c)+b)*const
  |z|<100
  ;SOURCE: chby11.frm
}


La09-12 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p2, j=(a+9)/40320, i=j*(a+8)*4, h=i*(a+7)*(7/3)
  g=h*(a+6)*(3/2), f=g*(a+5), k=f*(a+4)*(2/3)
  d=k*(a+3)*(3/7), c=d*(a+2)/4, b=c*(a+1)/9
  const=pixel, z=p1:
  z=(z*(z*(z*(z*(z*(z*(z*(z/40320-i)+h)-g)+f)-k)+d)-c)+b)*const
  |z|<100
  ;SOURCE: chby12.frm
}


La09-13 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; =((a+17-z)La(8)-(a+8)La(7))/9
  a=p1
  j1=(a+9)/40320
  i1=j1*(a+8)*4
  h1=i1*(a+7)*(7/3)
  g1=h1*(a+6)*(3/2)
  f1=g1*(a+5)
  e1=f1*(a+4)*(2/3)
  d1=e1*(a+3)*(3/7)
  c1=d1*(a+2)/4
  b=c1*(a+1)/9
  j2=(a+9)/5040
  i2=j2*(a+8)*(7/2)
  h2=i2*(a+7)
  g2=h2*(a+6)*(5/4)
  f2=g2*(a+5)*(4/5)
  e2=f2*(a+4)/2
  d2=e2*(a+3)*(2/7)
  c2=d2*(a+2)/8
  j3=(a+9)*(7/720)
  i3=j3*(a+8)*(18/7)
  h3=i3*(a+7)*(25/36)
  g3=h3*(a+6)*(4/5)
  f3=g3*(a+5)*(9/20)
  e3=f3*(a+4)*(2/9)
  d3=e3*(a+3)/14
  bailout=real(p2)/10000
  z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(j1-z/362880)-i1)+h1)-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(z*(z*(j2-z/40320)-i2)+h2)-g2)+f2)-e2)+d2)-c2
  fdd=z*(z*(z*(z*(z*(z*(j3-z/5040)-i3)+h3)-g3)+f3)-e3)+d3
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


La09-14 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p1
  j1=(a+9)/40320
  i1=j1*(a+8)*4
  h1=i1*(a+7)*(7/3)
  g1=h1*(a+6)*(3/2)
  f1=g1*(a+5)
  e1=f1*(a+4)*(2/3)
  d1=e1*(a+3)*(3/7)
  c1=d1*(a+2)/4
  b=c1*(a+1)/9
  j2= (a+9)/5040
  i2=j2*(a+8)*(7/2)
  h2=i2*(a+7)
  g2=h2*(a+6)*(5/4)
  f2=g2*(a+5)*(4/5)
  e2=f2*(a+4)/2
  d2=e2*(a+3)*(2/7)
  c2=d2*(a+2)/8
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(j1-z/362880)-i1)+h1)-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(z*(z*(j2-z/40320)-i2)+h2)-g2)+f2)-e2)+d2)-c2
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(w*(w*(w*(w*(j1-w/362880)-i1)+h1)-g1)+f1)-e1)+d1)-c1)+b
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


La09-15 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p1
  j1=(a+9)/40320
  i1=j1*(a+8)*4
  h1=i1*(a+7)*(7/3)
  g1=h1*(a+6)*(3/2)
  f1=g1*(a+5)
  e1=f1*(a+4)*(2/3)
  d1=e1*(a+3)*(3/7)
  c1=d1*(a+2)/4
  b=c1*(a+1)/9
  j2= (a+9)/5040
  i2=j2*(a+8)*(7/2)
  h2=i2*(a+7)
  g2=h2*(a+6)*(5/4)
  f2=g2*(a+5)*(4/5)
  e2=f2*(a+4)/2
  d2=e2*(a+3)*(2/7)
  c2=d2*(a+2)/8
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(j1-z/362880)-i1)+h1)-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(z*(z*(j2-z/40320)-i2)+h2)-g2)+f2)-e2)+d2)-c2
  oz=z
  z=z-f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


La09-16 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p1, j=(a+9)/40320, i=j*(a+8)*4, h=i*(a+7)*(7/3)
  g=h*(a+6)*(3/2), f=g*(a+5), k=f*(a+a+8)/3, d=k*(a+3)*(3/7)
  c=d*(a+2)/4, b=c*(a+1)/9
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=b:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z/40320-i)+h)-g)+f)-k)+d)-c)+b
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


La09-17 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p3, j=(a+9)/40320, i=j*(a+8)*4, h=i*(a+7)*(7/3)
  g=h*(a+6)*(3/2), f=g*(a+5), k=f*(a+a+8)/3, d=k*(a+3)*(3/7)
  c=d*(a+2)/4, b=c*(a+1)/9
  z=pixel, oz=0
  fz=b
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z/40320-i)+h)-g)+f)-k)+d)-c)+b
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


La09-18 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p3, j=(a+9)/40320, i=j*(a+8)*4, h=i*(a+7)*(7/3)
  g=h*(a+6)*(3/2), f=g*(a+5), k=f*(a+a+8)/3
  d=k*(a+3)*(3/7), c=d*(a+2)/4, b=c*(a+1)/9
  z=pixel, oz=0
  fz=b
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z/40320-i)+h)-g)+f)-k)+d)-c)+b
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


La09-19 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p2, j=(a+9)/40320, i=j*(a+8)*4, h=i*(a+7)*(7/3)
  g=h*(a+6)*(3/2), f=g*(a+5), k=f*(a+4)*(2/3)
  d=k*(a+3)*(3/7), c=d*(a+2)/4, b=c*(a+1)/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b)
  x=x-t*(y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


La09-20 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p2, j=(a+9)/40320, i=j*(a+8)*4, h=i*(a+7)*(7/3)
  g=h*(a+6)*(3/2), f=g*(a+5), k=f*(a+4)*(2/3)
  d=k*(a+3)*(3/7), c=d*(a+2)/4, b=c*(a+1)/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b)
  x=x-t*sin(y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


La09-21 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p2, j=(a+9)/40320, i=j*(a+8)*4, h=i*(a+7)*(7/3)
  g=h*(a+6)*(3/2), f=g*(a+5), k=f*(a+a+8)/3
  d=k*(a+3)*(3/7), c=d*(a+2)/4, b=c*(a+1)/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b))
  x=x-t*(fn1(y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


La09-22 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p2, j=(a+9)/40320, i=j*(a+8)*4, h=i*(a+7)*(7/3)
  g=h*(a+6)*(3/2), f=g*(a+5), k=f*(a+a+8)/3
  d=k*(a+3)*(3/7), c=d*(a+2)/4, b=c*(a+1)/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b)
  Ty=fn2(y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


La09-23 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p2, j=(a+9)/40320, i=j*(a+8)*4, h=i*(a+7)*(7/3)
  g=h*(a+6)*(3/2), f=g*(a+5), k=f*(a+a+8)/3, d=k*(a+3)*(3/7)
  c=d*(a+2)/4, b=c*(a+1)/9
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b)
  Ty=fn2(y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


La09-24 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p2, j=(a+9)/40320, i=j*(a+8)*4, h=i*(a+7)*(7/3)
  g=h*(a+6)*(3/2), f=g*(a+5), k=f*(a+a+8)/3
  d=k*(a+3)*(3/7), c=d*(a+2)/4, b=c*(a+1)/9
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b))
  x=x-t*(fn2(y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


La09-25 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p2, j=(a+9)/40320, i=j*(a+8)*4, h=i*(a+7)*(7/3)
  g=h*(a+6)*(3/2), f=g*(a+5), k=f*(a+a+8)/3
  d=k*(a+3)*(3/7), c=d*(a+2)/4, b=c*(a+1)/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b))
  x=x-t*(fn2(y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


La09-26 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p2, j=(a+9)/40320, i=j*(a+8)*4, h=i*(a+7)*(7/3)
  g=h*(a+6)*(3/2), f=g*(a+5), k=f*(a+a+8)/3, d=k*(a+3)*(3/7)
  c=d*(a+2)/4, b=c*(a+1)/9
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


La09-27 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p2, j=(a+9)/40320, i=j*(a+8)*4, h=i*(a+7)*(7/3)
  g=h*(a+6)*(3/2), f=g*(a+5), k=f*(a+a+8)/3, d=k*(a+3)*(3/7)
  c=d*(a+2)/4, b=c*(a+1)/9
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


La09-28 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p2, j=(a+9)/40320, i=j*(a+8)*4, h=i*(a+7)*(7/3), g=h*(a+6)*(3/2)
  f=g*(a+5), k=f*(a+a+8)/3, d=k*(a+3)*(3/7), c=d*(a+2)/4, b=c*(a+1)/9
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


La09-29 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p2, j=(a+9)/40320, i=j*(a+8)*4, h=i*(a+7)*(7/3)
  g=h*(a+6)*(3/2), f=g*(a+5), k=f*(a+a+8)/3
  d=k*(a+3)*(3/7), c=d*(a+2)/4, b=c*(a+1)/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


La09-30 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p2, j=(a+9)/40320, i=j*(a+8)*4, h=i*(a+7)*(7/3)
  g=h*(a+6)*(3/2), f=g*(a+5), k=f*(a+4)*(2/3), d=k*(a+3)*(3/7)
  c=d*(a+2)/4, b=c*(a+1)/9
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(x0*(x0*(x0*(x0*(x0*(x0/40320-i)+h)-g)+f)-k)+d)-c)+b
  Fx1=x1*(x1*(x1*(x1*(x1*(x1*(x1*(x1/40320-i)+h)-g)+f)-k)+d)-c)+b
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


La10-01 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p2, k=(a+10)/362880, j=k*(a+9)*45, i=j*(a+8)*(4/15)
  h=i*(a+7)*(7/4), g=h*(a+6)*12, f=g*(a+5)/12
  l=f*(a+4)*(4/7), d=l*(a+3)*(15/4), c=d*(a+2)/45, b=c*(a+1)/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=x*(x*(x*(x*(x*(x*(x*(x*(x*(x/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b
  Ty=y*(y*(y*(y*(y*(y*(y*(y*(y*(y/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b
  x=x-t*Ty,y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


La10-02 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p2, k=(a+10)/362880, j=k*(a+9)*45, i=j*(a+8)*(4/15), h=i*(a+7)*(7/4)
  g=h*(a+6)*12, f=g*(a+5)/12, l=f*(a+4)*(4/7), d=l*(a+3)*(15/4)
  c=d*(a+2)/45, b=c*(a+1)/10
  bailout=p1+4, z=pixel:
  z=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b
  |z|<=bailout
  ;SOURCE: chby2.frm
}


La10-03 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p2, k=(a+10)/362880, j=k*(a+9)*45, i=j*(a+8)*(4/15)
  h=i*(a+7)*(7/4), g=h*(a+6)*12, f=g*(a+5)/12, l=f*(a+4)*(4/7)
  d=l*(a+3)*(15/4), c=d*(a+2)/45, b=c*(a+1)/10
  const=p1, z=pixel:
  z=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b+const
  |z|<100
  ;SOURCE: chby3.frm
}


La10-04 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p2, k=(a+10)/362880, j=k*(a+9)*45, i=j*(a+8)*(4/15)
  h=i*(a+7)*(7/4), g=h*(a+6)*12, f=g*(a+5)/12, l=f*(a+4)*(4/7)
  d=l*(a+3)*(15/4), c=d*(a+2)/45, b=c*(a+1)/10
  const=pixel, z=p1:
  z=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b+const
  |z|<100
  ;SOURCE: chby4.frm
}


La10-05 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p1
  k1= (a+10)/362880
  j1=k1*(a+9)*45
  i1=j1*(a+8)*(4/15)
  h1=i1*(a+7)*(7/4)
  g1=11*h1*(a+6)
  f1=g1*(a+5)/12
  e1=f1*(a+4)*(4/7)
  d1=e1*(a+3)*(15/4)
  c1=d1*(a+2)/45
  b=c1*(a+1)/10
  k2=(a+10)/40320
  j2=40*k2*(a+9)
  i2=j2*(a+8)*(7/30)
  h2=i2*(a+7)*(3/2)
  g2=10*h2*(a+6)
  f2=g2*(a+5)/15
  e2=f2*(a+4)*(3/7)
  d2=e2*(a+3)*(5/2)
  c2=d2*(a+2)/90
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/3628800-k1)+j1)-i1)+h1)-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(z*(z*(z*(z/362880-k2)+j2)-i2)+h2)-g2)+f2)-e2)+d2)-c2
  oz=z
  z=z-f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


La10-06 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; =((a+19-z)La(9)-(a+9)La(8))/10
  a=p1
  k1=(a+10)/362880
  j1=k1*(a+9)*45
  i1=j1*(a+8)*(4/15)
  h1=i1*(a+7)*(7/4)
  g1=11*h1*(a+6)
  f1=g1*(a+5)/12
  e1=f1*(a+4)*(4/7)
  d1=e1*(a+3)*(15/4)
  c1=d1*(a+2)/45
  b=c1*(a+1)/10
  k2=(a+10)/40320
  j2=40*k2*(a+9)
  i2=j2*(a+8)*(7/30)
  h2=i2*(a+7)*(3/2)
  g2=10*h2*(a+6)
  f2=g2*(a+5)/15
  e2=f2*(a+4)*(3/7)
  d2=e2*(a+3)*(5/2)
  c2=d2*(a+2)/90
  k3=(a+10)*(8/5040)
  j3=k3*(a+9)*(245/8)
  i3=j3*(a+8)*(6/35)
  h3=i3*(a+7)*(25/24)
  g3=h3*(a+6)*(32/5)
  f3=g3*(a+5)*(3/80)
  e3=f3*(a+4)*(4/21)
  d3=e3*(a+3)*(5/8)
  bailout=real(p2)/10000
  z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/3628800-k1)+j1)-i1)+h1)-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(z*(z*(z*(z/362880-k2)+j2)-i2)+h2)-g2)+f2)-e2)+d2)-c2
  fdd=z*(z*(z*(z*(z*(z*(z*(z/40320-k3)+j3)-i3)+h3)-g3)+f3)-e3)+d3
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


La10-07 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p1
  k1= (a+10)/362880
  j1=k1*(a+9)*45
  i1=j1*(a+8)*(4/15)
  h1=i1*(a+7)*(7/4)
  g1=11*h1*(a+6)
  f1=g1*(a+5)/12
  e1=f1*(a+4)*(4/7)
  d1=e1*(a+3)*(15/4)
  c1=d1*(a+2)/45
  b=c1*(a+1)/10
  k2=(a+10)/40320
  j2=40*k2*(a+9)
  i2=j2*(a+8)*(7/30)
  h2=i2*(a+7)*(3/2)
  g2=10*h2*(a+6)
  f2=g2*(a+5)/15
  e2=f2*(a+4)*(3/7)
  d2=e2*(a+3)*(5/2)
  c2=d2*(a+2)/90
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/3628800-k1)+j1)-i1)+h1)-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(z*(z*(z*(z/362880-k2)+j2)-i2)+h2)-g2)+f2)-e2)+d2)-c2
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(w*(w*(w*(w*(w*(w/3628800-k1)+j1)-i1)+h1)-g1)+f1)-e1)+d1)-c1)+b
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


La10-08 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p2, k=(a+10)/362880, j=k*(a+9)*45, i=j*(a+8)*(4/15)
  h=i*(a+7)*(7/4), g=h*(a+6)*12, f=g*(a+5)/12, l=f*(a+4)*(4/7)
  d=l*(a+3)*(15/4), c=d*(a+2)/45, b=c*(a+1)/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(x*(x*(x*(x*(x*(x*(x*(x*(x*(x/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b)
  Ty=sin(y*(y*(y*(y*(y*(y*(y*(y*(y*(y/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


La10-09 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p2, k=(a+10)/362880, j=k*(a+9)*45, i=j*(a+8)*(4/15)
  h=i*(a+7)*(7/4), g=h*(a+6)*12, f=g*(a+5)/12, L=f*(a+4)*(4/7)
  d=L*(a+3)*(15/4), c=d*(a+2)/45, b=c*(a+1)/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(x*(x*(x*(x*(x*(x/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b)
  Ty=fn1(y*(y*(y*(y*(y*(y*(y*(y*(y*(y/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


La10-10 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p1, k=(a+10)/362880, j=k*(a+9)*45, i=j*(a+8)*(4/15)
  h=i*(a+7)*(7/4), g=h*(a+6)*12, f=g*(a+5)/12, l=f*(a+4)*(4/7)
  d=l*(a+3)*(15/4), c=d*(a+2)/45, b=c*(a+1)/10
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=b:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


La10-11 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p2, k=(a+10)/362880, j=k*(a+9)*45, i=j*(a+8)*(4/15)
  h=i*(a+7)*(7/4), g=h*(a+6)*12, f=g*(a+5)/12, l=f*(a+4)*(4/7)
  d=l*(a+3)*(15/4), c=d*(a+2)/45, b=c*(a+1)/10
  const=p1, z=pixel:
  z=(z*(z*(z*(z*(z*(z*(z*(z*(z*(z/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b)*const
  |z|<100
  ;SOURCE: chby11.frm
}


La10-12 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p2, k=(a+10)/362880, j=k*(a+9)*45, i=j*(a+8)*(4/15)
  h=i*(a+7)*(7/4), g=h*(a+6)*12, f=g*(a+5)/12, l=f*(a+4)*(4/7)
  d=l*(a+3)*(15/4), c=d*(a+2)/45, b=c*(a+1)/10
  const=pixel, z=p1:
  z=(z*(z*(z*(z*(z*(z*(z*(z*(z*(z/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b)*const
  |z|<100
  ;SOURCE: chby12.frm
}


La10-13 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p1
  k1=(a+10)/362880
  j1=k1*(a+9)*45
  i1=j1*(a+8)*(4/15)
  h1=i1*(a+7)*(7/4)
  g1=11*h1*(a+6)
  f1=g1*(a+5)/12
  k1=f1*(a+4)*(4/7)
  d1=k1*(a+3)*(15/4)
  c1=d1*(a+2)/45
  b=c1*(a+1)/10
  k2=(a+10)/40320
  j2=40*k2*(a+9)
  i2=j2*(a+8)*(7/30)
  h2=i2*(a+7)*(3/2)
  g2=10*h2*(a+6)
  f2=g2*(a+5)/15
  k2=f2*(a+4)*(3/7)
  d2=k2*(a+3)*(5/2)
  c2=d2*(a+2)/90
  k3=(a+10)*(8/5040)
  j3=k3*(a+9)*(245/8)
  i3=j3*(a+8)*(6/35)
  h3=i3*(a+7)*(25/24)
  g3=h3*(a+6)*(32/5)
  f3=g3*(a+5)*(3/80)
  k3=f3*(a+4)*(4/21)
  d3=k3*(a+3)*(5/8)
  bailout=real(p2)/10000
  z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/3628800-k1)+j1)-i1)+h1)-g1)+f1)-k1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(z*(z*(z*(z/362880-k2)+j2)-i2)+h2)-g2)+f2)-k2)+d2)-c2
  fdd=z*(z*(z*(z*(z*(z*(z*(z/40320-k3)+j3)-i3)+h3)-g3)+f3)-k3)+d3
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


La10-14 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p1
  k1= (a+10)/362880
  j1=k1*(a+9)*45
  i1=j1*(a+8)*(4/15)
  h1=i1*(a+7)*(7/4)
  g1=11*h1*(a+6)
  f1=g1*(a+5)/12
  l1=f1*(a+4)*(4/7)
  d1=l1*(a+3)*(15/4)
  c1=d1*(a+2)/45
  b=c1*(a+1)/10
  k2=(a+10)/40320
  j2=40*k2*(a+9)
  i2=j2*(a+8)*(7/30)
  h2=i2*(a+7)*(3/2)
  g2=10*h2*(a+6)
  f2=g2*(a+5)/15
  l2=f2*(a+4)*(3/7)
  d2=l2*(a+3)*(5/2)
  c2=d2*(a+2)/90
  bailout=real(p2)/10000,z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/3628800-k1)+j1)-i1)+h1)-g1)+f1)-l1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(z*(z*(z*(z/362880-k2)+j2)-i2)+h2)-g2)+f2)-l2)+d2)-c2
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(w*(w*(w*(w*(w*(w/3628800-k1)+j1)-i1)+h1)-g1)+f1)-l1)+d1)-c1)+b
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


La10-15 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p1
  k1= (a+10)/362880
  j1=k1*(a+9)*45
  i1=j1*(a+8)*(4/15)
  h1=i1*(a+7)*(7/4)
  g1=11*2*h1*(a+6)
  f1=g1*(a+5)/12
  l1=f1*(a+4)*(4/7)
  d1=l1*(a+3)*(15/4)
  c1=d1*(a+2)/45
  b=c1*(a+1)/10
  k2=(a+10)/40320
  j2=40*k2*(a+9)
  i2=j2*(a+8)*(7/30)
  h2=i2*(a+7)*(3/2)
  g2=10*h2*(a+6)
  f2=g2*(a+5)/15
  l2=f2*(a+4)*(3/7)
  d2=l2*(a+3)*(5/2)
  c2=d2*(a+2)/90
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/3628800-k1)+j1)-i1)+h1)-g1)+f1)-l1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(z*(z*(z*(z/362880-k2)+j2)-i2)+h2)-g2)+f2)-l2)+d2)-c2
  oz=z
  z=z-f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


La10-16 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p1, k=(a+10)/362880, j=k*(a+9)*45, i=j*(a+8)*(4/15)
  h=i*(a+7)*(7/4), g=h*(a+6)*12, f=g*(a+5)/12, l=f*(a+4)*(4/7)
  d=l*(a+3)*(15/4), c=d*(a+2)/45, b=c*(a+1)/10
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=b:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


La10-17 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p3, k=(a+10)/362880, j=k*(a+9)*45, i=j*(a+8)*(4/15)
  h=i*(a+7)*(7/4), g=h*(a+6)*12, f=g*(a+5)/12, l=f*(a+4)*(4/7)
  d=l*(a+3)*(15/4), c=d*(a+2)/45, b=c*(a+1)/10
  z=pixel, oz=0
  fz=b
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


La10-18 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p3, k=(a+10)/362880, j=k*(a+9)*45, i=j*(a+8)*(4/15)
  h=i*(a+7)*(7/4), g=h*(a+6)*12, f=g*(a+5)/12, l=f*(a+4)*(4/7)
  d=l*(a+3)*(15/4), c=d*(a+2)/45, b=c*(a+1)/10
  z=pixel, oz=0
  fz=b
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


La10-19 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p2, k=(a+10)/362880, j=k*(a+9)*45, i=j*(a+8)*(4/15)
  h=i*(a+7)*(7/4), g=h*(a+6)*12, f=g*(a+5)/12, l=f*(a+4)*(4/7)
  d=l*(a+3)*(15/4), c=d*(a+2)/45, b=c*(a+1)/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(x*(x*(x*(x*(x*(x*(x*(x*(x*(x/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b)
  x=x-t*(y*(y*(y*(y*(y*(y*(y*(y*(y*(y/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


La10-20 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p2, k=(a+10)/362880, j=k*(a+9)*45, i=j*(a+8)*(4/15)
  h=i*(a+7)*(7/4), g=h*(a+6)*12, f=g*(a+5)/12, l=f*(a+4)*(4/7)
  d=l*(a+3)*(15/4), c=d*(a+2)/45, b=c*(a+1)/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(x*(x*(x*(x*(x*(x*(x*(x*(x*(x/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b)
  x=x-t*sin(y*(y*(y*(y*(y*(y*(y*(y*(y*(y/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


La10-21 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p2, k=(a+10)/362880, j=k*(a+9)*45, i=j*(a+8)*(4/15)
  h=i*(a+7)*(7/4), g=h*(a+6)*12, f=g*(a+5)/12, l=f*(a+4)*(4/7)
  d=l*(a+3)*(15/4), c=d*(a+2)/45, b=c*(a+1)/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(x*(x*(x*(x/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b))
  x=x-t*(fn1(y*(y*(y*(y*(y*(y*(y*(y*(y*(y/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


La10-22 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p2, k=(a+10)/362880, j=k*(a+9)*45, i=j*(a+8)*(4/15)
  h=i*(a+7)*(7/4), g=h*(a+6)*12, f=g*(a+5)/12, l=f*(a+4)*(4/7)
  d=l*(a+3)*(15/4), c=d*(a+2)/45, b=c*(a+1)/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(x*(x*(x*(x*(x*(x/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b)
  Ty=fn2(y*(y*(y*(y*(y*(y*(y*(y*(y*(y/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


La10-23 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p2, k=(a+10)/362880, j=k*(a+9)*45, i=j*(a+8)*(4/15)
  h=i*(a+7)*(7/4), g=h*(a+6)*12, f=g*(a+5)/12, l=f*(a+4)*(4/7)
  d=l*(a+3)*(15/4), c=d*(a+2)/45, b=c*(a+1)/10
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(x*(x*(x*(x*(x*(x*(x*(x*(x*(x/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b)
  Ty=fn2(y*(y*(y*(y*(y*(y*(y*(y*(y*(y/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


La10-24 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p2, k=(a+10)/362880, j=k*(a+9)*45, i=j*(a+8)*(4/15)
  h=i*(a+7)*(7/4), g=h*(a+6)*12, f=g*(a+5)/12, l=f*(a+4)*(4/7)
  d=l*(a+3)*(15/4), c=d*(a+2)/45, b=c*(a+1)/10
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(x*(x*(x*(x/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b))
  x=x-t*(fn2(y*(y*(y*(y*(y*(y*(y*(y*(y*(y/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


La10-25 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p2, k=(a+10)/362880, j=k*(a+9)*45, i=j*(a+8)*(4/15)
  h=i*(a+7)*(7/4), g=h*(a+6)*12, f=g*(a+5)/12, l=f*(a+4)*(4/7)
  d=l*(a+3)*(15/4), c=d*(a+2)/45, b=c*(a+1)/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(x*(x*(x*(x/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b))
  x=x-t*(fn2(y*(y*(y*(y*(y*(y*(y*(y*(y*(y/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


La10-26 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p2, k=(a+10)/362880, j=k*(a+9)*45, i=j*(a+8)*(4/15)
  h=i*(a+7)*(7/4), g=h*(a+6)*12, f=g*(a+5)/12, l=f*(a+4)*(4/7)
  d=l*(a+3)*(15/4), c=d*(a+2)/45, b=c*(a+1)/10
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(x*(x*(x*(x*(x*(x*(x*(x/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(y*(y*(y*(y/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


La10-27 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p2, k=(a+10)/362880, j=k*(a+9)*45, i=j*(a+8)*(4/15)
  h=i*(a+7)*(7/4), g=h*(a+6)*12, f=g*(a+5)/12, l=f*(a+4)*(4/7)
  d=l*(a+3)*(15/4), c=d*(a+2)/45, b=c*(a+1)/10
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(x*(x*(x*(x*(x*(x*(x*(x/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(y*(y*(y*(y/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


La10-28 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p2, k=(a+10)/362880, j=k*(a+9)*45, i=j*(a+8)*(4/15)
  h=i*(a+7)*(7/4), g=h*(a+6)*12, f=g*(a+5)/12, l=f*(a+4)*(4/7)
  d=l*(a+3)*(15/4), c=d*(a+2)/45, b=c*(a+1)/10
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(x*(x*(x*(x*(x*(x*(x*(x*(x*(x/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(y*(y*(y*(y/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


La10-29 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p2, k=(a+10)/362880, j=k*(a+9)*45, i=j*(a+8)*(4/15)
  h=i*(a+7)*(7/4), g=h*(a+6)*12, f=g*(a+5)/12
  l=f*(a+4)*(4/7), d=l*(a+3)*(15/4), c=d*(a+2)/45, b=c*(a+1)/10
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1(x*(x*(x*(x*(x*(x*(x*(x*(x*(x/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b))
  Ty=(fn1(y*(y*(y*(y*(y*(y*(y*(y*(y*(y/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


La10-30 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p2, k=(a+10)/362880, j=k*(a+9)*45, i=j*(a+8)*(4/15)
  h=i*(a+7)*(7/4), g=h*(a+6)*12, f=g*(a+5)/12, l=f*(a+4)*(4/7)
  d=l*(a+3)*(15/4), c=d*(a+2)/45, b=c*(a+1)/10
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(x0*(x0*(x0*(x0*(x0*(x0*(x0*(x0/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b
  Fx1=x1*(x1*(x1*(x1*(x1*(x1*(x1*(x1*(x1*(x1/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


la103x {
  z=pixel, t=fn4(z+whitesq), n=fn1(t+z)-1:
  z=fn2((t*n)+whitesq)/fn3(z-p3)^p2
  |(z)|<4
  ;SOURCE: ad99_1.frm
}


la1061r {
  z=pixel, t=(z-p2), n=(fn1(z-p1))+fn2(z+whitesq):
  z=(fn3(n/-z)*fn4(z+t))+whitesq
  |z|<4
  ;SOURCE: ad99_1.frm
}


la1061x {
  z=pixel, t=(z+whitesq)+1, n=fn1(z+whitesq):
  z=fn3(n)*fn4(t+(t-z))
  |z|<4
  ;SOURCE: ad99_1.frm
}


la1061y {
  z=pixel, t=(z-p2)/p2, n=(fn1(p1+z))*fn2(z):
  z=fn3(n)*fn4(t+(z-t)+whitesq)*p3
  |z|<4
  ;SOURCE: ad99_1.frm
}


la1061z {
  z=pixel, t=(z-p2)+1, n=(fn1(z-p1))*fn2(z+whitesq):
  z=fn3(z+n)*fn4(t-z*(z-t))
  |z|<4
  ;SOURCE: ad99_1.frm
}


la13 {
  z=pixel:
  x=real(fn1(z+1)), c=real(fn2(z/p1)), y=imag(fn2(z))
  z=(fn3(y)+fn4(c))+fn4(fn1(x)+tan(x-1))+whitesq
  |z|<4
  ;SOURCE: ad99_1.frm
}


la14 {
  z=pixel:
  x=fn1(z+1), c=imag(fn2(z+1)), y=real(fn2(z))
  z=(fn3(y)+fn4(c))+fn4(fn1(x)*(tan(y-1)))+whitesq
  |z|<=4
  ;SOURCE: 99msg.frm
}


la17 {
  z=pixel:
  x=real(fn1(z+1)), c=(fn2(z/p1)), y=(fn2((z-1)))
  z=(fn3(y)+fn4(c))-fn4(fn1(x)+tan(y))+whitesq
  |z|<4
  ;SOURCE: ad99_1.frm
}


la61 {
  z=pixel, t=whitesq, n=(whitesq==0)+(fn1(p1+z)-fn2(p1-z)):
  z=fn3(z-n)+fn4(z-t)
  z=fn1(fn2(z-1)*(t+n))
  |z|<4
  ;SOURCE: ad99_1.frm
}


Lam_Fnc_3Way {; Copyright (c) Paul W. Carlson, 1998
    ;
    ; real(p1) = escape circle radius squared
    ; imag(p1) = number of iterations to skip
    ; p2       = bailout value for |w|
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
  z = iter = k = range_num = bailout = 0
  w = 0.5
  c = pixel
  prev_modw2 = 1.0e20
  rad2 = real(p1)
  skip_iters = imag(p1)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  colors_in_range_1 = colors_in_range - 1
  :
  w = c * w * (1 - w)
  w = w - fn1(w)
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
  bailout == 0 && |w| <= p2
  ;SOURCE: 98msg.frm
}


Lambda {; v7.x - Jon Horner - set p1 = (0.85, 0.6)
        ; The Z screen description in Fractint <v18 says
        ; (1-z^2) which produces a totally different fractal.
        ; - fixed in v18.  CAL calls it LogisticEquation-J.
  z = pixel, c = p1 :
  z = z * (1 - z ) * c 
  |z| <= 4
  ;SOURCE: parser.frm
}


lambda-2 {; Sylvie_Gallet@CompuServe.com, Sep 1997
  z = pixel
  IF (p1 || imag(p1))        ; if p1 different from (0,0)
    lambda = p1
  ELSE                       ; if p1 = (0,0)
    lambda = (0.85, 0.6)
  ENDIF
  :
  z = lambda * z * (1 - z)
  |z| <= 4
  ;SOURCE: 97msg.frm
}


Lambda01 {; Peter Anders (anders@physik.hu-berlin.de) 
  z=pixel:
  z=z*(p1-z)
  |fn1(z)|<real(p2) 
  ;SOURCE: lambda.frm
}


Lambda02 {; Peter Anders (anders@physik.hu-berlin.de) 
  z=p1:
  z=z*(pixel-z)
  |fn1(z)|<real(p2) 
  ;SOURCE: lambda.frm
}


Lambda03 (XAXIS) {; Peter Anders (anders@physik.hu-berlin.de) 
  z=0.5, c=pixel:
  z=c*z*(1-z)
  |fn1(z)|<real(p2) 
  ;SOURCE: lambda.frm
}


Lambda04 (XAXIS) {; Peter Anders (anders@physik.hu-berlin.de) 
  z=0.422649730811, c=pixel:
  z=c*z*(1-z)*(2-z)
  |fn1(z)|<real(p2) 
  ;SOURCE: lambda.frm
}


Lambda05 (XAXIS) {; Peter Anders (anders@physik.hu-berlin.de) 
  z=0.38197, c=pixel:
  z=c*z*(1-z)*(2-z)*(3-z)
  |fn1(z)|<real(p2) 
  ;SOURCE: lambda.frm
}


Lambda06 (XAXIS) {; Peter Anders (anders@physik.hu-berlin.de) 
  z=p1, c=pixel:
  z=c*z*(1-z)*(-1-z)
  |fn1(z)|<real(p2) 
  ;SOURCE: lambda.frm
}


Lambda07 (XAXIS) {; Peter Anders (anders@physik.hu-berlin.de) 
  z=0.577350269189, c=pixel:
  z=c*z*(1-z)*(-1-z)
  |fn1(z)|<real(p2) 
  ;SOURCE: lambda.frm
}


Lambda08 (XAXIS) {; Peter Anders (anders@physik.hu-berlin.de) 
  z=p1, c=pixel:
  z=c*z*(1-z)*(-1-z)*(2-z)*(-2-z)
  |fn1(z)|<real(p2) 
  ;SOURCE: lambda.frm
}


Lambda09 (XAXIS) {; Peter Anders (anders@physik.hu-berlin.de) 
  z=0.54391225591, c=pixel:
  z=c*z*(1-z)*(-1-z)*(2-z)*(-2-z)
  |fn1(z)|<real(p2) 
  ;SOURCE: lambda.frm
}


Lambda10 (XAXIS) {; Peter Anders (anders@physik.hu-berlin.de) 
  z=1.64443286815, c=pixel:
  z=c*z*(1-z)*(-1-z)*(2-z)*(-2-z)
  |fn1(z)|<real(p2) 
  ;SOURCE: lambda.frm
}


Lambda11 {; Peter Anders (anders@physik.hu-berlin.de) 
  z=(p1/(3^0.5)), c=pixel:
  z=c*z*(p1-z)*(-p1-z)
  |fn1(z)|<real(p2) 
  ;SOURCE: lambda.frm
}


Lambda12 {; Peter Anders (anders@physik.hu-berlin.de) 
  z=((0.3*p1^2+0.3*p2^2+(0.09*(p1^2+p2^2)^2-0.2*p1^2*p2^2)^0.5)^0.5) 
  c=pixel:
  z=c*z*(p1-z)*(-p1-z)* (p2-z)*(-p2-z)
  |fn1(z)|<100 
  ;SOURCE: lambda.frm
}


Lambda13 {; Peter Anders (anders@physik.hu-berlin.de) 
  z=((0.3*p1^2+0.3*p2^2-(0.09*(p1^2+p2^2)^2-0.2*p1^2*p2^2)^0.5)^0.5) 
  c=pixel:
  z=c*z*(p1-z)*(-p1-z)* (p2-z)*(-p2-z)
  |fn1(z)|<100 
  ;SOURCE: lambda.frm
}


Lambda14 {; Peter Anders (anders@physik.hu-berlin.de) 
  z=pixel, c=p1:
  z=c*z*(1-z)
  |fn1(z)|<real(p2) 
  ;SOURCE: lambda.frm
}


Lambda[Fn||Fn] {; v18 - Chuck Ebbert - runs 55.36s v19.0
   ; requires float=yes, m = lambda (default (1.0,0.1)
   ; imag(p2) changes bailout (default = 64)
   ; real(p2) changes shift value (s) (default = 1)
  z = pixel, modz = |z|
  t = (64 * (imag(p2)<=0) + imag(p2) * (0<p2) )
  m = ((1.0,0.1) * (|p1|<=0) + p1 )   ; force lambda value when p1=0
  s = real(p2) + 1 :
  z = m * (fn1(z) * (modz<s) + fn2(z) * (real(s)<=modz)) ; real superfluous? - JH
  modz = |z|
  modz <= t
  ;SOURCE: parser.frm
}


lambdafn {; Chuck Ebbert.
          ; P1 is lambda, P2 = bailout (default 64).
          ; lambda default is (1,.4)
  z = pixel
  m = ((1,.4) * (|p1|<=0) + p1 )  ; force (1,.4) when p1=0
  t = (64 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = fn1(z) * m
  abs(imag(z)) <= t && abs(real(z)) <= t
  ;SOURCE: builtn.frm
}


lambdafn-mod { 
  z = pixel
  m = ((1, 0.4) * (|p1|<=0) + p1 )  
  t = (64 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = fn1(z) * fn2(m)
  abs(imag(z)) <= t && abs(real(z)) <= t
  ;SOURCE: msg-1.frm
}


lambdafn-xw {; 1997 by Benno Schmid
  z=real(pixel)+flip(real(p1))
  c=flip(imag(pixel))+imag(p1):
  z=c*fn1(z)
  |z| <= 64
  ;SOURCE: 4d.frm
}


lambdafn-xy {; 1997 by Benno Schmid 
  z=pixel
  c=p1:
  z=c*fn1(z)
  |z| <= 64
  ;SOURCE: 4d.frm
}


lambdafn-xz {; 1997 by Benno Schmid
  z=real(pixel)+flip(real(p1))
  c=imag(pixel)+flip(imag(p1)):
  z=c*fn1(z)
  |z| <= 64
  ;SOURCE: 4d.frm
}


lambdafn-yw {; 1997 by Benno Schmid
   z=flip(real(pixel))+real(p1)
   c=flip(imag(pixel))+imag(p1):
   z=c*fn1(z)
   |z| <= 64
  ;SOURCE: 4d.frm
}


lambdafn-yz {; 1997 by Benno Schmid
  z=flip(real(pixel))+real(p1)
  c=imag(pixel)+flip(imag(p1)):
  z=c*fn1(z)
  |z| <= 64
  ;SOURCE: 4d.frm
}


lambdafn-zw {; 1997 by Benno Schmid 
  z=p1, c=pixel:
  z=c*fn1(z)
  |z| <= 64
  ;SOURCE: 4d.frm
}


lambdafnorfn {; Chuck Ebbert.  Same as 'lambda(fn|fn)'.  14 Jan 1993
   ; p1 is lambda (default (1.1), real(p2) = bailout (default 64)
   ; imag(p2) = shift value (default 1)
  z = pixel
  m = ((1, 0.1) * (|p1|<=0) + p1 )  ; force (1,.1) when p1=0
  s = (1 * (abs(imag(p2))<=0) + imag(p2) * (0<imag(p2)) )
  t = (64 * (real(p2)<=0) + real(p2) * (0<p2) ):
  modz = |z|
  z = ((fn1(z) * (real(modz)<s) + fn2(z) * (s<=modz) ) * m )
  abs(imag(z)) <= t && abs(real(z)) <= t
  ;SOURCE: builtn2.frm
}


lambdafroth2m (XYAxis) {
  bailout=(4*(|p2|<=0)+p2) ;I haven't actually got 19.6 yet
  z=lambda=pixel:
  z=lambda*z-lambda/z
  z=lambda*z-lambda/fn1(z)
  |z|<=bailout
  ;SOURCE: 97msg.frm
}


lambdafroth4m (XYAxis) {
  bailout=(4*(|p2|<=0)+p2)
  z=lambda=pixel:
  z=lambda*z-lambda/z
  z=lambda*z-lambda*fn1(fn2(z))
  |z|<=bailout
  ;SOURCE: 98msg.frm
}


LambdaLog (XAXIS) {
  z = pixel, c = log(pixel):  
  z = c * sqr(z) + pixel 
  |z| <= 4 
  ;SOURCE: skinner.frm
}


LambdaPwr {
  z = pixel:
  z = p1*z*(1 - z^p2) 
  |z| <= 100
  ;SOURCE: reb003.frm
}


lambtet1 {; fn1=sin & inside=bof60 gives a striking tropical fish!
          ; see file FISHY.GIF - New Images Nov. 
          ; set fn1=fn2=ident for simple tetrate fractal.            
  z=c=fn2(pixel): 
  z=fn1(c^z) 
  |z|<=4
  ;SOURCE: lamtet.frm
}


lambtet2 {
  z=c=fn2(pixel): 
  z=fn1(z^c) 
  |z|<=4
  ;SOURCE: lamtet.frm
}


lambtet3 {; fn1=recip will produce infinitely nested crustaceans!
  z=c=fn2(pixel): 
  z=c^fn1(z) 
  |z|<=4
  ;SOURCE: lamtet.frm
}


lambtet4 {
  z=c=fn2(pixel): 
  z=z^fn1(c) 
  |z|<=4
  ;SOURCE: lamtet.frm
}


lambtet5 { 
  z=c=fn2(pixel): 
  z=1/fn1(c^z) 
  |z|<=4
  ;SOURCE: lamtet.frm
}


lambtet6 {
  z=c=fn2(pixel): 
  z=1/fn1(z^c) 
  |z|<=4
  ;SOURCE: lamtet.frm
}


lambtet7 {
  z=c=fn2(pixel): 
  z=c^(1/fn1(z)) 
  |z|<=4
  ;SOURCE: lamtet.frm
}


lambtet8 { 
  z=c=fn2(pixel): 
  z=z^(1/fn1(c)) 
  |z|<=4
  ;SOURCE: lamtet.frm
}


lambtet9 {
  z=c=fn2(pixel): 
  z=fn1(c^fn3(z)) 
  |z|<=4
  ;SOURCE: lamtet.frm
}


Langolier {
  z = 0, c = pixel:
  z = (c / (-.013579, .2468)) + fn1(z)^2
  |z| < 4
  ;SOURCE: 98msg.frm
}


Langolier2 {; Nature102
            ; suggested by generalized by Jay Hill
            ; try p1= -.013579, .2468
  IF( |p1| == 0) 
    p1 = 1 ; default, don't want zero divide
  ENDIF
  IF( |p2| == 0) 
    p2 = 16 ; default bailout
  ENDIF
  z = 0, c = pixel, bailout = real(p2):
  z = c / p1 + fn1(z)^2
  |z| < bailout
  ;SOURCE: 98msg.frm
}


Langolier3 {; Nature102
            ; preferred generalization by Jay Hill
            ; try non-zero p1 
  IF( |p2| == 0) 
    p2 = 16 ; default bailout
  ENDIF
  z = 0, c = pixel, bailout = real(p2):
  z = p1*c + fn1(z)^2
  |z| < bailout
  ;SOURCE: 98msg.frm
}


Larry {; Mutation of 'Michaelbrot' and 'Element'
    ; Original formulas by Michael Theroux [71673,2767]
    ; Modified for if..else logic 3/19/97 by Sylvie Gallet
    ; For 'Michaelbrot', set FN1 & FN2 =IDENT and P1 & P2 = default
    ; For 'Element', set FN1=IDENT & FN2=SQR and P1 & P2 = default
    ; p1 = Parameter (default 0.5,0), real(p2) = Bailout (default 4)
   z = pixel
    ; The next line sets c=default if p1=0, else c=p1
   IF (real(p1) || imag(p1))
      c = p1
   ELSE
      c = 0.5
   ENDIF
    ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
   IF (real(p2) <= 0)
      test = 4
   ELSE
      test = real(p2)
   ENDIF
   :
   z = fn1(fn2(z*z)) + c
   |z| <= test
  ;SOURCE: fract196.frm
}


LeeMandel1 (XYAXIS) {; Kevin Lee
  z=Pixel:
   ;; c=sqr(pixel)/z, c=z+c, z=sqr(z),  this line was an error in v16
  c=sqr(pixel)/z, c=z+c, z=sqr(c)
  |z|<4
  ;SOURCE: fractint.frm
}


LeeMandel2 (XYAXIS) {; Kevin Lee
  z=Pixel:
  c=sqr(pixel)/z, c=z+c, z=sqr(c*pixel)
  |z|<4
  ;SOURCE: fractint.frm
}


LeeMandel3 (XAXIS) {; Kevin Lee
  z=Pixel, c=Pixel-sqr(z):
  c=Pixel+c/z, z=c-z*pixel
  |z|<4
  ;SOURCE: fractint.frm
}


Leeze (XAXIS) {
  s = exp(1.,0.), z = Pixel, f = Pixel ^ s:
  z = cosxx (z) + f
  |z| <= 50
  ;SOURCE: fractint.frm
}


Legendre (XAXIS) {; Advanced Fractal Programming in C  - Stevens
  z=0:
  zsq = z*z
  z=.125*(35*zsq*zsq-30*zsq+3)+pixel
  |z| <= 4
  ;SOURCE: hughes.frm
}


Lesfrm01 (xaxis) { 
  c=z=pixel:
  z=z+(fn1(c)/fn2(z))/c^3
  |z| <=4
  ;SOURCE: les.frm
}


Lesfrm01r {; Les St Clair, 1996
           ; modified Lesfrm01 to include rounding function
           ; requires Fractint 19.4 or later
           ; p1 sets degree of rounding
           ; smaller p1 = coarser rounding
  c=z=pixel:
  p=p1*((fn1(c)/fn2(z))/(c*c*c))
  q=round(p)
  r=q/p1
  z=z+r
  |z| <=4
  ;SOURCE: 96msg.frm
}


Lesfrm02 (xaxis) { 
  c=z=pixel:
  z=z+(fn1(z)/fn2(c))/c^3
  |z| <=4
  ;SOURCE: les.frm
}


Lesfrm02g_PHC {; Les St Clair [101461,2032], 1996  Requires passes=1
   ; modified Lesfrm02
   ; generalised version to incorporate new funcions
   ; some functions requires Fractint 19.4 or later
   ; use fn3 to select round, floor, ceil, trunc
   ; use p2 to select degree of influence for above functions
   ; Amalgamated with manjul_lace formula by George Martin to enable PHC
  z = whitesq * 1.5*pixel + (whitesq==0) * pixel
  c = whitesq * 1.5*pixel + (whitesq==0) * (-.75, .1234567)
  p = p2 / (fn2(c)*c*c*c) :
   ; begin iterations
  z = z + fn3(fn1(z)*p) / p2
  |z| <= 4
  ;SOURCE: phc.frm
}


Lesfrm03 (xaxis) { 
  z=pixel:
  z=z+(fn1(z)/fn2(z))/z^4
  |z| <=4
  ;SOURCE: les.frm
}


Lesfrm04 (xaxis) { 
  c=z=pixel:
  z=z+(fn1(c^2)/fn2(z^2))/c^4
  |z| <=6
  ;SOURCE: les.frm
}


Lesfrm05 (xaxis) { 
  c=z=pixel:
  z=z+p1/fn1(z^2)/c^3
  |z| <=6
  ;SOURCE: les.frm
}


Lesfrm05_a (xaxis) {
  c=z=pixel:
  z=z+p1/fn1(z*z)/(c*c*c)
  |z| <=6
  ;SOURCE: 96msg.frm
}


Lesfrm06 { 
  c=z=pixel:
  z=z+p1*fn1(z/0.213)/c
  |z| <=3
  ;SOURCE: les.frm
}


Lesfrm07 { 
  c=z=pixel:
  z=z+p1*fn1(z/0.416)/c^2
  |z| <=3
  ;SOURCE: les.frm
}


Lesfrm08 { 
  c=z=pixel:
  z=z+p1*fn1(z/3.142)/c^3.142
  |z| <=3.142
  ;SOURCE: les.frm
}


Lesfrm09 {; modified for v20 compatibility 
  c=z=tan(pixel):
  z=z+p1*fn1(z)
  |z| <=10
  ;SOURCE: les.frm
}


Lesfrm10 { 
  c=z=pixel:
  z=z+(fn1(fn2(Z)))+C/P1
  |z|<4
  ;SOURCE: les.frm
}


Lesfrm11 { 
  c=z=pixel:
  z=z+(((fn1(z)-P1)*fn2(z))/fn3(c))
  |z|<4
  ;SOURCE: les.frm
}


Lesfrm12 {; Les St Clair, 1996
  z = pixel:
  x = fn1(z), y = fn2(z)
  z = x*y
  |z| <= 4
  ;SOURCE: les.frm
}


Lesfrm13 {; Les St Clair, 1996
  z = pixel 
  x = fn1(z), y = fn2(z):
  x = x*p1*pi
  y = y*p2*pi 
  z = x/y
  |z| <= 4
  ;SOURCE: lesfrm13.frm
}


Lesfrm14 (xaxis) {; Les St Clair, 1996
  z = c = pixel:
  x = p1*fn1(z)
  y = p2*fn2(z)
  z = c + (x^y)
  |z| <= 4
  ;SOURCE: 96msg.frm
}


Lesfrm15 {; Les St Clair, 1996
  z = c = pixel:
  c = p1*c 
  z = fn1(c)^pi+fn2(z)+p2*c
  |z| <= 4
  ;SOURCE: les.frm
}


Lesfrm16 {; Les St Clair, 1996
  z = c = pixel:
  x = p1*fn1(z)
  y = p2*fn2(z)
  x1= x*x
  y1= y*y
  z = c + x1/y1
  |z| <= 4
  ;SOURCE: 96msg.frm
}


Lesfrm17 {; Les St Clair, 1996
  z = c = pixel:
  x=real(z), y=imag(z)
  x = fn1(z)*pi
  y = fn2(z)*pi
  x1 = x^2+c
  y1 = y^2-c
  z = x1/y1
  |z| <= 4
  ;SOURCE: les.frm
}


Lesfrm18 {; Les St Clair, 1996
  z = c = pixel:
  x=real(z), y=imag(z)
  x = fn1(x) + c
  y = fn2(y) + c
  x1 = p1*z + x
  y1 = p2*z + y
  z = x1^y1
  |z| <= 4
  ;SOURCE: les.frm
}


Lesfrm19 {; Les St Clair, 1996
  z = c = pixel:
  x=real(z), y=imag(z)
  x= fn1(z*x)+(p1^c)+c
  y= fn2(z*y)+(p2^c)+c
  z = x+flip(y)
  |z| <4
  ;SOURCE: 96msg.frm
}


Lesfrm20 {; Les St Clair, 1996
  z = c = pixel:
  x=real(z), y=imag(z)
  x= fn1(x) + p1*c
  y= fn2(y) + p2*c
  z = x+flip(y)
  |z| <4
  ;SOURCE: les.frm
}


Lesfrm21 {; Les St Clair, 1996
  z = c = pixel:
  x=real(z), y=imag(z)
  x= fn1(x) + p1*c*pi
  y= fn2(y) + p2*c*pi
  z = x+flip(y)
  |z| <4
  ;SOURCE: les.frm
}


Lesfrm22 {; Les St Clair, 1996
  z = c = pixel:
  x=real(z), y=imag(z)
  x= fn1(x) + fn2(y) +p1*c*pi
  y= fn2(y) - fn1(x) +p2*c*pi
  z = x+flip(y)
  |z| <4
  ;SOURCE: les.frm
}


Lesfrm23 {; Les St Clair, 1996
  z = c = pixel:
  x=real(z), y=imag(z)
  x= fn1(z) + p1*y
  y= fn2(z) + p2*x
  z = x+flip(y) + c*c
  |z| <4
  ;SOURCE: les.frm
}


Lesfrm30 {; Modified Sylvie Gallet formula
          ; Modified Gallet-5-08
          ; Les St Clair 1997
  z = pixel^0.5, x = real(z), y = imag(z) :
   x1 = x + p1*fn1(y + fn2(p2*x) + fn3(p3*y))
   y1 = y + p1*fn1(x + fn2(p2*y) + fn3(p3*x))
   x = x1*pi, y = (y1*pi)/(x*x*x)
   z = x + flip(y) 
    |z| <= 32
  ;SOURCE: 97msg.frm
}


Lesfrm34 {; Modified Sylvie Gallet formula
          ; Modified Gallet-5-08
          ; Les St Clair 1997
          ; Edited for Fractint v. 20 by George Martin, 10/98
  z = pixel*pi, x = real(z), y = imag(z):
  x1 = x - p1*fn1(y + 0.5*fn2(y+fn1(x)) + fn3(p2*x))  
  y1 = y - p1*fn1(x + 0.5*fn2(x+fn1(y)) + fn3(p2*y)) 
  x = x1^pi, y = y1^pi
  z = (x + flip(y))^pi
  |z| <= 32
  ;SOURCE: 97msg.frm
}


Lesfrm35 {; Modified Sylvie Gallet formula
          ; Modified Gallet-5-08
          ; Les St Clair 1997
  z = pixel*pi, x = real(z), y = imag(z):
   x1 = x - p1*fn1(y + 0.5*fn2(y+fn1(x)) + fn3(p2*x)) 
   y1 = y - p1*fn1(x + 0.5*fn2(x+fn1(y)) + fn3(p2*y))
   x = x1+p1^pi, y = y1+p2^pi
   z = (x + flip(y))
    |z| <= 32
  ;SOURCE: 97msg.frm
}


Lesfrm42    {; Modified Sylvie Gallet formula
             ; Modified (generalised) Gallet-8-12
             ; Les St Clair 1997
             ; Requires periodicity = 0
             ; default fn1=cabs, fn2=asin, fn3=sqrt, fn4=tan
  h = fn1(pixel), pinv = 1/p1
  bailout = 2*p1, r = real(p2), ir = imag(p2)
  beta = fn2(h/r), alpha = fn2(h/(r*ir))
  z = pixel * (((h - fn3(r*r - h*h) * fn4(beta - alpha)) / h) * (h < r) \
      + (h >= r))
  center = round(p1*z) * pinv 
  test = cabs(z-center) < 0.45*pinv
  z = cabs(center) + p1 * (test == 0)
  :
  z = z + pinv
  z=z+h
  z <= bailout
  ;SOURCE: 97msg.frm
}


Lesfrm43    {; Modified Sylvie Gallet formula
             ; Modified Gallet-8-12
             ; Les St Clair 1997
  h = fn1(pixel), pinv = 1/p1
  bailout = 2*p1, r = real(p2), ir = imag(p2)
  beta = fn2(h/r), alpha = fn2(h/(r*ir))
  z = pixel * (((h - fn3(r*r - h*h) * fn4(beta - alpha)) / h) * (h < r) \
      + (h >= r))
  center = round(p1*z) * pinv 
  test = cabs(z-center) < 0.45*pinv
  z = cabs(center) + p1 * (test == 0)
  :
  z = (z*z + pinv)/h
  z <= bailout
  ;SOURCE: 97msg.frm
}


LesPHCfrm01 {; Les St Clair [101461,2032], 1996  Requires passes=1
   ; Modified Vincent D. Presogna formula (Block_4.fmr)
   ; Amalgamated with manjul_lace.frm by George Martin to enable PHC
  z = whitesq * 1.5*pixel + (whitesq==0) * pixel
  c = whitesq * 1.5*pixel + (whitesq==0) * (-.75, .1234567):
  r = tan(1/z) + p1
  q = floor(z) - p2 * ceil(c) - p1
  z = fn1(z) * r * q
  round(z) < 4
  ;SOURCE: phc.frm
}


LesPHCfrm04 {; Les St Clair [101461,2032], 1996  Requires passes=1
             ; Based on Liar1 & Glynn formulas by Chuck Ebbert and
             ; Earl Glynn 
  z = pixel:
  x = 1 - abs(imag(z)-real(z))
  z = (1 - abs(imag(z)-real(z)) + flip(1 - abs(1-real(z)-imag(z))))\
      * (whitesq == 0) + (z ^ p1 - p2) * whitesq
  (|z| <= 1 && whitesq == 0) || (|z| <= 4 && whitesq)
  ;SOURCE: 96msg.frm
}


LGDF0001 {; Inspired by Bob Carr
          ; LGD (c)1996 [72332,507]
  z=pixel
  c=1/fn1(pixel*666):
  z=z*(c+sqr(p1*p2))+z
  c=sqr(flip(cos(c)))+c
  |z|<=4
  ;SOURCE: lgd001.frm
}


LGDF0002 {; A mangled Mandelbrot
          ; LGD (c)1996 [72332,507]
  z=pixel, c=z+pixel:
  z=z+sqr(z)+(c*p2)
  |z|<=p1
  ;SOURCE: lgd001.frm
}


LGDF0003 {; A mangled Mandelbrot
          ; LGD (c)1996 [72332,507]
  c=z=pixel:
  z=z*z+fn1(c^2)
  |z|<=p1
  ;SOURCE: lgd001.frm
}


LGDF0004 {; Headless Mandelbrot
          ; Set fn1 to log, p1 to 4
          ; p2 to about .765 for
          ; the headless Mandelbrot
          ; LGD (c)1996 [72332,507]
  z=pixel, c=pixel*p2:
  z=z+z^2+c+(fn1(c^z))
  |z|<=p1
  ;SOURCE: lgd001.frm
}


LGDF0005 {; What it is again
          ; LGD (c)1996 [72332,507]
  c=z=pixel:
  z=z*z+c^p2+(fn1(c^z))
  |z|<=p1
  ;SOURCE: lgd001.frm
}


LGDF0006 {; What it is more
          ; Use a big bailout (p1>1000000)
          ; LGD (c)1996 [72332,507]
  c=z=pixel:
  z=z*p3+(fn1(z^p2))/c
  |z|<=p1
  ;SOURCE: lgd001.frm
}


LGDF0007 {; Guess
          ; LGD (c)1996 [72332,507]
  c=fn1(pixel), z=pixel:
  z=z*(c+z)
  |z|<=p1
  ;SOURCE: lgd001.frm
}


LGDF0008 {; Guess Again
          ; LGD (c)1996 [72332,507]
  c=z=pixel, a=c+z+pixel:
  z=z*(z+fn1(p2)*a)
  |z|<=p1
  ;SOURCE: lgd001.frm
}


LGDF0009 (XAXIS) {; TwoFace Formula
                  ; Modified Sylvie Gallet frm.
                  ; Modified Carr1971 formula
                  ; LGD 1-11-96
  c=z=pixel 
  compt=0, limit=real(p1/pixel), bailout=4
  p=(-0.743380900000982,-0.131850030300002) :
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |z|<=bailout
  ;SOURCE: lgd001.frm
}


LGDF0010 {; Inspired by Bob Carr
          ; LGD (c)1996 [72332,507]
  z=pixel, c=1/fn1(pixel*p3):
  z=z*(c+sqr(p1*p2))+z
  c=flip(sqr(sin(c)))+c+c+z
  |z|<=4
  ;SOURCE: lgd001.frm
}


LGDF0011 {; Modified Sylvie Gallet frm.
          ; Modified Carr1971 formula
          ; LGD 3-6-96
  c=z=pixel 
  compt=0, limit=real(p1/pixel), bailout=4
  p=(p2) :
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+fn1(c)
  compt=compt+1
  |z|<=bailout
  ;SOURCE: lgd001.frm
}


LGDF0012 {; What it is more again
          ; Use a big bailout (p1>1000000)
          ; LGD (c)1996 [72332,507]
  c=z=pixel:
  z=z+z+c+z*(p3+(fn1(z^p2))/c)
  |z|<=p1
  ;SOURCE: lgd001.frm
}


LGDF0013 {; Another nothing
          ; LGD (c)1996 [72332,507]
  c=z=pixel:
  z=z*z*(z*p2)*c*z+z+z+z+z
  c=c+z
  |z|>=p1
  ;SOURCE: lgd001.frm
}


LGDF0014 {; Created with FracText
          ; requires 'periodicity=0'
  z=pixel, x=real(z), y=imag(z)
  chrL1 = x<-1.545||y<-0.145&&x>-1.6&&x<-1.445
  chrO2 = abs(cabs(z+(1.3325,0.075))-0.0975)<0.0275&&x<-1.2075
  xr=2*x
  chrR3 = y<-0.0475&&y>-0.1025||y>-0.005||x<-1.14&&x>-1.195\
          &&x<-1.09||(abs(cabs(z+(1.09,0.02625))-0.04875)\
          <0.0275&&x>-1.09)||(y<-0.075&&y<-xr-2.2275&&y>-xr-2.35048)
  chrE4 = x<-0.94625||y<-0.145||(y<-0.0475&&y>-0.1025)\
          ||y>-0.005&&x>-1.00125&&x<-0.84625
  xn=2.5*x
  chrN5 = x>-0.83375&&x<-0.77875||(x>-0.73375&&x<-0.67451)\
          ||(y>-xn-2.03437&&y<-xn-1.88628)
  test = chrL1||chrO2||chrR3||chrE4||chrN5&&y>-0.2&&y<0.05
  test=(test==0)
  z=c=pixel:
  z=z*z+c
  |z|<=4&&test==0
  ;SOURCE: lgd001.frm
}


LGDF0015 {; Created with FracText
          ; requires 'periodicity=0'
  c=z=pixel, x=real(z), y=imag(z)
  chrL1 = x<0.22||y<0.22&&x>0&&x<0.62
  chrO2 = abs(cabs(z+(-1.07,-0.5))-0.39)<0.11&&x<1.57
  xr=2*x
  chrR3 = y<0.61&&y>0.39||y>0.78||x<1.84&&x>1.62\
           &&x<2.04||(abs(cabs(z+(-2.04,-0.695))-0.195)<0.11\
           &&x>2.04)||(y<0.5&&y<-xr+4.69&&y>-xr+4.19806)
  chrE4 = x<2.615||y<0.22||(y<0.61&&y>0.39)||y>0.78&&x>2.395&&x<3.015
  xn=2.5*x
  chrN5 = x>3.065&&x<3.285||(x>3.465&&x<3.70195)\
          ||(y>-xn+8.6625&&y<-xn+9.25487)
  test = chrL1||chrO2||chrR3||chrE4||chrN5&&y>0&&y<1
  test=(test==0)
  z=c=pixel:
  z=z*z+fn1(c^2)
  |z|<=p1&&test==0
  ;SOURCE: lgd001.frm
}


LGDF0016 {; Return of the Son of Nothing
          ; LGD (c)1996 [72332,507]
  c=z=pixel:
  z=z*z*(c*p2)*z+fn1(z+c)
  c=c*fn2(z)
  |z|<=p1
  ;SOURCE: lgd001.frm
}


Liar1 {; by Chuck Ebbert.
       ; X: X is as true as Y
       ; Y: Y is as true as X is false
       ; Calculate new x and y values simultaneously.
       ; y(n+1)=abs((1-x(n) )-y(n)), x(n+1)=1-abs(y(n)-x(n))
  z = pixel:
  z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z) ) )
  |z| <= 1
  ;SOURCE: fractint.frm
}


Liar1M {; by Jon Horner - based on LIAR1 by Chuck Ebbert - 76306,1226
        ; X: X is as true as Y
        ; Y: Y is as true as X is false
        ; Calculate new x and y values simultaneously.
        ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = (0,0), c = pixel :
  z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z))) + c
  |z| <= 1 
  ;SOURCE: nuliar.frm
}


Liar2 {; by Chuck Ebbert.
       ; Same as Liar1 but use sequential reasoning, calculating
       ; new y value using new x value.
       ; x(n+1) = 1 - abs(y(n)-x(n) );
       ; y(n+1) = 1 - abs((1-x(n+1) )-y(n) );
  z = pixel:
  x = 1 - abs(imag(z)-real(z))
  z = flip(1 - abs(1-real(x)-imag(z) ) ) + real(x)
  |z| <= 1
  ;SOURCE: liar.frm
}


Liar2M {; by Jon Horner - based on LIAR2 by Chuck Ebbert.
        ; Same as Liar1M but uses sequential reasoning, calculating
        ; new y value using new x value.
        ; x(n+1) = 1 - abs(y(n)-x(n) );
        ; y(n+1) = 1 - abs((1-x(n+1) )-y(n) );
  z = (0,0), c = pixel :
  x = 1 - abs(imag(z) - real(z))
  z = flip(1 - abs(1-real(x)-imag(z))) + real(x) + c
  |z| <= 1 
  ;SOURCE: nuliar.frm
}


Liar3 {; by Chuck Ebbert.
   ; X: X is true to P1 times the extent that Y is true
   ; Y: Y is true to the extent that X is false.
   ; Sequential reasoning.  P1 usually 0 to 1.  P1=1 is Liar2 formula.
   ; x(n+1) = 1 - abs(p1*y(n)-x(n) );
   ; y(n+1) = 1 - abs((1-x(n+1) )-y(n) );
  z = pixel:
  x = 1 - abs(imag(z)*real(p1)-real(z) )
  z = flip(1 - abs(1-real(x)-imag(z) ) ) + real(x)
  |z| <= 1
  ;SOURCE: fractint.frm
}


Liar3M {; by Jon Horner - based on LIAR3 by Chuck Ebbert.
   ; X: X is true to P1 times the extent that Y is true
   ; Y: Y is true to the extent that X is false.
   ; Sequential reasoning.  P1 usually 0 to 1.  P1=1 is Liar2M formula.
   ; x(n+1) = 1 - abs(p1*y(n)-x(n) );
   ; y(n+1) = 1 - abs((1-x(n+1) )-y(n) );
  z = (0,0), c = pixel :
  x = 1 - abs(imag(z) * real(p1) -real(z) )
  z = flip(1 - abs(1-real(x)-imag(z) ) ) + real(x) + c
  |z| <= 1 
  ;SOURCE: nuliar.frm
}


Liar4 {; by Chuck Ebbert.
       ; X: X is as true as (p1+1) times Y
       ; Y: Y is as true as X is false
       ; Calculate new x and y values simultaneously.
       ; Real part of p1 changes probability.  Use floating point.
       ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = pixel, p = p1 + 1:
  z = 1-abs(imag(z)*p-real(z))+flip(1-abs(1-real(z)-imag(z)))
  |z| <= 1
  ;SOURCE: fractint.frm
}


Liar4M {; by Jon Horner - based on LIAR4 by Chuck Ebbert.
        ; X: X is as true as (p1+1) times Y
        ; Y: Y is as true as X is false
        ; Calculate new x and y values simultaneously.
        ; Real part of p1 changes probability.  Use floating point.
        ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = (0,0), c = pixel, p = p1 + 1:
  z = 1-abs(imag(z)*p-real(z))+flip(1-abs(1-real(z)-imag(z))) + c
  |z| <= p2 
  ;SOURCE: nuliar.frm
}


limerick {; Bradley Beacham  [74223,2745]
          ; Just an experiment -- nothing earth-shaking...
  z = c = pixel, test = p1 + 4:
  z = fn1(z)
  z = fn1(z)
  z = fn2(z)
  z = fn2(z)
  z = fn1(z) + c
  |z| < test
  ;SOURCE: zsazsa.frm
}


Lin-7new5 {; Linda Allison
  z = pixel:
  z = (fn1(1/z ^ 2))/p1 - p1  
  |z| <= p2
  ;SOURCE: allison2.frm
}


Lin-carr2new {; Original formula by Bob Carr, modified by Linda Allison
  z = pixel:
  z = (fn1(1/(z ^ 2)))/p1
  |z| <= p2
  ;SOURCE: allison2.frm
}


Lin-carr6new {; Robert Carr's formula modified by Linda Allison
  z = pixel:
  z = (fn1(p1/z ^ 3))/.5
  |z| <= p2
  ;SOURCE: la-mod.frm
}


Lin-x3 (XAXIS) {; Lee Skinner's MTet formula modified by Linda Allison
  z = pixel:
  z = (pixel ^ ((z + 1)/z)) + pixel
  |z| <= (p1 ^ z)
  ;SOURCE: la-mod.frm
}


Lin-y2new (XAXIS) {; Lee Skinner's MTet formula modified by Linda Allison
  z = pixel:
  z = (pixel ^ (z + 1.3/z)) + (fn1(P1))/3
  |z| <= (P2 + 5)
  ;SOURCE: la-mod.frm
}


lion {; Giuseppe Zito
  z = pixel
  c1 = 0.789868
  d5 = -0.043811
  d11 = 0.478921
  d14 = 0.77655101
  d16 = 0.463622
  d20 = -0.61109799
  d22 = -0.725802
  d23 = 0.493981
  d26 = 0.82094902
  d27 = -0.41908199
  d33 = -0.49559599
  d40 = -0.78277397
  d43 = 0.18307801
  : 
  x = real(z), y = imag(z)
  s0 = y
  s0 = s0 +c1
  newx = s0 
  s0 = y
  s0 = s0 +x
  s1 = y
  s1 = s1 +x
  s1 = s1 +d5
  s2 = y
  s2 = s2 +y
  s1 = s1 /s2
  s1 = s1 /d11
  s1 = s1 /d14
  s0 = s0 -s1
  s0 = s0 +d16
  s0 = s0 *y
  s0 = s0 *x
  s0 = s0 -d20
  s0 = s0 /y
  s1 =d22
  s1 = s1 -d23
  s1 = s1 /s2
  s1 = s1 -y
  s1 = s1 -d26
  s1 = s1 *d27
  s1 = s1 *x
  s1 = s1 /s2
  s1 = s1 *y
  s0 = s0 -s1
  s1 = y
  s1 = s1 *d33
  s0 = s0 *s1
  s0 = s0 +y
  s0 = s0 +d40
  s0 = s0 +y
  s1 =d43
  s0 = s0 *s1
  s0 = s0 -x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


Lister {; Might need periodicity=0 
  z = pixel + p1:
  r = tan(1/z)/e + pixel  
  z = fn1(z)/r 
  |z| < 4
  ;SOURCE: lister.frm
}


Lister_2 {; Might need periodicity=0 
  z = c = pixel + p1:
  r = tan(e/z)/pi
  z = fn1(z)/fn2(c/r) 
  |z| < 4
  ;SOURCE: lister.frm
}


Lister_3 {; Might need periodicity=0 
  z = pixel + p1:
  r = tan(1/z)/e
  z = fn1(1/z)*r/e   
  |z| < 4
  ;SOURCE: lister.frm
}


Lister_M {; Might need periodicity=0 
  z = c = pixel:
  r = tan(e/z)/c  
  z = r * fn1(z) - p1 
  |z| < 4
  ;SOURCE: lister.frm
}


Listerial {; Might need periodicity=0
  z = pixel, tp = tan(1/pixel):
  z = fn1(z) + p1
  r = tp/(imag(z)/real(z)) 
  z = tan(1/z)/sqrt(r)
  |z| < 4
  ;SOURCE: lister.frm
}


LKM-aveiter_jul { ; Kerry Mitchell
        ; Average together 8 Julia sets with same c, different bailouts
        ; to reduce banding.
        ; Colors by average iteration, use "decomp=256" coloring.
        ; c=p1, real(p2)=bailout >> 4, try 1000
        ; imag(p2)=coloring "speed" > 0, try 0.1
  c=p1, zc=pixel, iter=1, k=flip(imag(p2))
  b1=real(p2), fac=b1^0.125, b2=b1*fac, b3=b2*fac
  b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
  iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0:
  iter=iter+1, zc=sqr(zc)+c, r2zc=|zc|
  IF (r2zc>b1)
    IF (iter1==0)
      iter1=iter
    ENDIF
    IF (r2zc>b2)
      IF (iter2==0)
        iter2=iter
      ENDIF
      IF (r2zc>b3)
        IF (iter3==0)
          iter3=iter
        ENDIF
        IF (r2zc>b4)
          IF (iter4==0)
            iter4=iter
          ENDIF
          IF (r2zc>b5)
            IF (iter5==0)
              iter5=iter
            ENDIF
            IF (r2zc>b6)
              IF (iter6==0)
                iter6=iter
              ENDIF
              IF (r2zc>b7)
                IF (iter7==0)
                  iter7=iter
                ENDIF
                IF (r2zc>b8)
                  IF (iter8==0)
                    iter8=iter
                  ENDIF
                  iterave=(iter1+iter2+iter3+iter4+iter5+iter6+iter7+iter8)*0.125
                  z=exp(iterave*k)
                ENDIF
              ENDIF
            ENDIF
          ENDIF
        ENDIF
      ENDIF
    ENDIF
  ENDIF
  r2zc <= b8
  ;SOURCE: lkm.frm
}


LKM-aveiter_man {; Kerry Mitchell
        ; Average together 8 Mandelbrots with same c, different bailouts
        ; to reduce banding.
        ; Colors by average iteration, use "decomp=256" coloring.
        ; real(p1)=bailout >> 4, try 1000
        ; imag(p1)=coloring "speed" > 0, try 0.1
  c=zc=pixel, iter=1, k=flip(imag(p1))
  b1=real(p1), fac=b1^0.125, b2=b1*fac, b3=b2*fac
  b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
  iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0:
  iter=iter+1, zc=sqr(zc)+c, r2zc=|zc|
  IF (r2zc>b1)
    IF (iter1==0)
      iter1=iter
    ENDIF
    IF (r2zc>b2)
      IF (iter2==0)
        iter2=iter
      ENDIF
      IF (r2zc>b3)
        IF (iter3==0)
          iter3=iter
        ENDIF
        IF (r2zc>b4)
          IF (iter4==0)
            iter4=iter
          ENDIF
          IF (r2zc>b5)
            IF (iter5==0)
              iter5=iter
            ENDIF
            IF (r2zc>b6)
              IF (iter6==0)
                iter6=iter
              ENDIF
              IF (r2zc>b7)
                IF (iter7==0)
                  iter7=iter
                ENDIF
                IF (r2zc>b8)
                  IF (iter8==0)
                    iter8=iter
                  ENDIF
                  iterave=(iter1+iter2+iter3+iter4+iter5+iter6+iter7+iter8)*0.125
                  z=exp(iterave*k)
                ENDIF
              ENDIF
            ENDIF
          ENDIF
        ENDIF
      ENDIF
    ENDIF
  ENDIF
  r2zc <= b8
  ;SOURCE: lkm.frm
}


LKM-averoot_jul { ; Kerry Mitchell
        ; Average together 8 Julia sets with same c, different bailouts.
        ; Each iteration, ask if z is principal root of sqr(z),
        ; form ratio of times z_is_root to total_iterations.
        ; Colors by average ratio, use "decomp=256" coloring.
        ; c=p1, real(p2)=bailout >> 4, try 1e30
        ; imag(p2)=coloring "speed" > 0, try 6
  zc=pixel, c=p1, iter=1, k=flip(imag(p2)), tot=0
  b1=real(p2), fac=b1^0.125, b2=b1*fac, b3=b2*fac
  b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
  iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0:
  iter=iter+1, z2=sqr(zc), w=sqrt(z2)
  r1=|zc-w|, r2=|zc+w|, tot=tot+(r1<r2)
  zc=z2+c, r2zc=|zc|
  IF (r2zc>b1)
    IF (iter1==0)
      iter1=iter, q1=tot/iter
    ENDIF
    IF (r2zc>b2)
      IF (iter2==0)
        iter2=iter, q2=tot/iter
      ENDIF
      IF (r2zc>b3)
        IF (iter3==0)
          iter3=iter, q3=tot/iter
        ENDIF
        IF (r2zc>b4)
          IF (iter4==0)
            iter4=iter, q4=tot/iter
          ENDIF
          IF (r2zc>b5)
            IF (iter5==0)
              iter5=iter, q5=tot/iter
            ENDIF
            IF (r2zc>b6)
              IF (iter6==0)
                iter6=iter, q6=tot/iter
              ENDIF
              IF (r2zc>b7)
                IF (iter7==0)
                  iter7=iter, q7=tot/iter
                ENDIF
                IF (r2zc>b8)
                  IF (iter8==0)
                    iter8=iter, q8=tot/iter
                  ENDIF
                  qave=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
                  z=exp(qave*k)
                ENDIF
              ENDIF
            ENDIF
          ENDIF
        ENDIF
      ENDIF
    ENDIF
  ENDIF
  r2zc <= b8
  ;SOURCE: lkm.frm
}


LKM-averoot_man {; Kerry Mitchell
     ; Average together 8 Mandelbrots with same c, different bailouts.
     ; Each iteration, ask if z is principal root of sqr(z),
     ; form ratio of times z_is_root to total_iterations.
     ; Colors by average ratio, use "decomp=256" coloring.
     ; real(p1)=bailout >> 4, try 1e30
     ; imag(p1)=coloring "speed" > 0, try 6
  c=zc=pixel, iter=1, k=flip(imag(p1)), tot=0
  b1=real(p1), fac=b1^0.125, b2=b1*fac, b3=b2*fac
  b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
  iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0:
  iter=iter+1, z2=sqr(zc), w=sqrt(z2)
  r1=|zc-w|, r2=|zc+w|, tot=tot+(r1<r2)
  zc=z2+c, r2zc=|zc|
  IF (r2zc>b1)
    IF (iter1==0)
      iter1=iter, q1=tot/iter
    ENDIF
    IF (r2zc>b2)
      IF (iter2==0)
        iter2=iter, q2=tot/iter
      ENDIF
      IF (r2zc>b3)
        IF (iter3==0)
          iter3=iter, q3=tot/iter
        ENDIF
        IF (r2zc>b4)
          IF (iter4==0)
            iter4=iter, q4=tot/iter
          ENDIF
          IF (r2zc>b5)
            IF (iter5==0)
              iter5=iter, q5=tot/iter
            ENDIF
            IF (r2zc>b6)
              IF (iter6==0)
                iter6=iter, q6=tot/iter
              ENDIF
              IF (r2zc>b7)
                IF (iter7==0)
                  iter7=iter, q7=tot/iter
                ENDIF
                IF (r2zc>b8)
                  IF (iter8==0)
                    iter8=iter, q8=tot/iter
                  ENDIF
                  qave=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
                  z=exp(qave*k)
                ENDIF
              ENDIF
            ENDIF
          ENDIF
        ENDIF
      ENDIF
    ENDIF
  ENDIF
  r2zc <= b8
  ;SOURCE: lkm.frm
}


LKM-avetandi_jul {; Kerry Mitchell
     ; Average together 8 Julia sets with same c, different bailouts.
     ; Linearly slide from coloring by average angle at low iterations
     ; to coloring by average iteration at high iterations.
     ; Use "decomp=256" coloring.
     ; c=p1, real(p2)=bailout >> 4, try 1000
     ; imag(p2)="speed" of iteration coloring, try 0.1
     ; real(p3)=low, if iteration < low then color by angle
     ; imag(p3)=high, if iteration > high then color by iteration
  zc=pixel, c=p1, iter=1, k=imag(p2)
  b1=real(p2), fac=b1^0.125, b2=b1*fac, b3=b2*fac
  b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
  lo=real(p3), hi=imag(p3), slope=1/(hi-lo)
  iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0:
  iter=iter+1, zc=sqr(zc)+c, r2zc=|zc|
  IF (r2zc>b1)
    IF (iter1==0)
      iter1=iter, t1=(zc/sqrt(r2zc))^0.125
    ENDIF
    IF (r2zc>b2)
      IF (iter2==0)
        iter2=iter, t2=(zc/sqrt(r2zc))^0.125
      ENDIF
      IF (r2zc>b3)
        IF (iter3==0)
          iter3=iter, t3=(zc/sqrt(r2zc))^0.125
        ENDIF
        IF (r2zc>b4)
          IF (iter4==0)
            iter4=iter, t4=(zc/sqrt(r2zc))^0.125
          ENDIF
          IF (r2zc>b5)
            IF (iter5==0)
              iter5=iter, t5=(zc/sqrt(r2zc))^0.125
            ENDIF
            IF (r2zc>b6)
              IF (iter6==0)
                iter6=iter, t6=(zc/sqrt(r2zc))^0.125
              ENDIF
              IF (r2zc>b7)
                IF (iter7==0)
                  iter7=iter, t7=(zc/sqrt(r2zc))^0.125
                ENDIF
                IF (r2zc>b8)
                  IF (iter8==0)
                    iter8=iter, t8=(zc/sqrt(r2zc))^0.125
                  ENDIF
                  thetave=t1*t2*t3*t4*t5*t6*t7*t8
                  tt=imag(log(thetave))
                  iterave=(iter1+iter2+iter3+iter4+iter5+iter6+iter7+iter8)*0.125
                  ti=iterave*k
                  IF (iterave<lo)
                    t=tt
                  ELSEIF (iterave>hi)
                    t=ti
                  ELSE
                    fac=slope*(iterave-lo)
                    t=fac*ti+(1-fac)*tt
                  ENDIF
                  z=exp((0.0,1.0)*t)
                ENDIF
              ENDIF
            ENDIF
          ENDIF
        ENDIF
      ENDIF
    ENDIF
  ENDIF
  r2zc <= b8
  ;SOURCE: lkm.frm
}


LKM-avetandi_man {; Kerry Mitchell
     ; Average together 8 Mandelbrots with same c, different bailouts.
     ; Linearly slide from coloring by average angle at low iterations
     ; to coloring by average iteration at high iterations.
     ; Use "decomp=256" coloring.
     ; real(p1)=bailout >> 4, try 1000
     ; imag(p1)="speed" of iteration coloring, try 0.1
     ; real(p2)=low, if iteration < low then color by angle
     ; imag(p2)=high, if iteration > high then color by iteration
  zc=c=pixel, iter=1, k=imag(p1)
  b1=real(p1), fac=b1^0.125, b2=b1*fac, b3=b2*fac
  b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
  lo=real(p2), hi=imag(p2), slope=1/(hi-lo)
  iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0:
  iter=iter+1, zc=sqr(zc)+c, r2zc=|zc|
  IF (r2zc>b1)
    IF (iter1==0)
      iter1=iter, t1=(zc/sqrt(r2zc))^0.125
    ENDIF
    IF (r2zc>b2)
      IF (iter2==0)
        iter2=iter, t2=(zc/sqrt(r2zc))^0.125
      ENDIF
      IF (r2zc>b3)
        IF (iter3==0)
          iter3=iter, t3=(zc/sqrt(r2zc))^0.125
        ENDIF
        IF (r2zc>b4)
          IF (iter4==0)
            iter4=iter, t4=(zc/sqrt(r2zc))^0.125
          ENDIF
          IF (r2zc>b5)
            IF (iter5==0)
              iter5=iter, t5=(zc/sqrt(r2zc))^0.125
            ENDIF
            IF (r2zc>b6)
              IF (iter6==0)
                iter6=iter, t6=(zc/sqrt(r2zc))^0.125
              ENDIF
              IF (r2zc>b7)
                IF (iter7==0)
                  iter7=iter, t7=(zc/sqrt(r2zc))^0.125
                ENDIF
                IF (r2zc>b8)
                  IF (iter8==0)
                    iter8=iter, t8=(zc/sqrt(r2zc))^0.125
                  ENDIF
                  thetave=t1*t2*t3*t4*t5*t6*t7*t8
                  tt=imag(log(thetave))
                  iterave=(iter1+iter2+iter3+iter4+iter5+iter6+iter7+iter8)*0.125
                  ti=iterave*k
                  IF (iterave<lo)
                    t=tt
                  ELSEIF (iterave>hi)
                    t=ti
                  ELSE
                    fac=slope*(iterave-lo)
                    t=fac*ti+(1-fac)*tt
                  ENDIF
                  z=exp((0.0,1.0)*t)
                ENDIF
              ENDIF
            ENDIF
          ENDIF
        ENDIF
      ENDIF
    ENDIF
  ENDIF
  r2zc <= b8
  ;SOURCE: lkm.frm
}


LKM-avethet_jul {; Kerry Mitchell
    ; Average together 8 Julia sets with same c, different bailouts.
    ; Colors by average angle, use "decomp=256" coloring.
    ; c=p1, real(p2)=bailout >> 4, try 1000
  c=p1, zc=pixel, iter=1
  b1=real(p2), fac=b1^0.125, b2=b1*fac, b3=b2*fac
  b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
  iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0:
  iter=iter+1, zc=sqr(zc)+c, r2zc=|zc|
  IF (r2zc>b1)
    IF (iter1==0)
      iter1=iter, t1=(zc/sqrt(r2zc))^0.125
    ENDIF
    IF (r2zc>b2)
      IF (iter2==0)
        iter2=iter, t2=(zc/sqrt(r2zc))^0.125
      ENDIF
      IF (r2zc>b3)
        IF (iter3==0)
          iter3=iter, t3=(zc/sqrt(r2zc))^0.125
        ENDIF
        IF (r2zc>b4)
          IF (iter4==0)
            iter4=iter, t4=(zc/sqrt(r2zc))^0.125
          ENDIF
          IF (r2zc>b5)
            IF (iter5==0)
              iter5=iter, t5=(zc/sqrt(r2zc))^0.125
            ENDIF
            IF (r2zc>b6)
              IF (iter6==0)
                iter6=iter, t6=(zc/sqrt(r2zc))^0.125
              ENDIF
              IF (r2zc>b7)
                IF (iter7==0)
                  iter7=iter, t7=(zc/sqrt(r2zc))^0.125
                ENDIF
                IF (r2zc>b8)
                  IF (iter8==0)
                    iter8=iter, t8=(zc/sqrt(r2zc))^0.125
                  ENDIF
                  z=t1*t2*t3*t4*t5*t6*t7*t8
                ENDIF
              ENDIF
            ENDIF
          ENDIF
        ENDIF
      ENDIF
    ENDIF
  ENDIF
  r2zc <= b8
  ;SOURCE: lkm.frm
}


LKM-avethet_man {; Kerry Mitchell
     ; Average together 8 Mandelbrots with same c, different bailouts.
     ; Colors by average angle, use "decomp=256" coloring.
     ; real(p1)=bailout >> 4, try 1000
  zc=c=pixel, iter=1
  b1=real(p1), fac=b1^0.125, b2=b1*fac, b3=b2*fac
  b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
  iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0:
  iter=iter+1, zc=sqr(zc)+c, r2zc=|zc|
  IF (r2zc>b1)
    IF (iter1==0)
      iter1=iter, t1=(zc/sqrt(r2zc))^0.125
    ENDIF
    IF (r2zc>b2)
      IF (iter2==0)
        iter2=iter, t2=(zc/sqrt(r2zc))^0.125
      ENDIF
      IF (r2zc>b3)
        IF (iter3==0)
          iter3=iter, t3=(zc/sqrt(r2zc))^0.125
        ENDIF
        IF (r2zc>b4)
          IF (iter4==0)
            iter4=iter, t4=(zc/sqrt(r2zc))^0.125
          ENDIF
          IF (r2zc>b5)
            IF (iter5==0)
              iter5=iter, t5=(zc/sqrt(r2zc))^0.125
            ENDIF
            IF (r2zc>b6)
              IF (iter6==0)
                iter6=iter, t6=(zc/sqrt(r2zc))^0.125
              ENDIF
              IF (r2zc>b7)
                IF (iter7==0)
                  iter7=iter, t7=(zc/sqrt(r2zc))^0.125
                ENDIF
                IF (r2zc>b8)
                  IF (iter8==0)
                    iter8=iter, t8=(zc/sqrt(r2zc))^0.125
                  ENDIF
                  z=t1*t2*t3*t4*t5*t6*t7*t8
                ENDIF
              ENDIF
            ENDIF
          ENDIF
        ENDIF
      ENDIF
    ENDIF
  ENDIF
  r2zc <= b8
  ;SOURCE: lkm.frm
}


LKM-avetriang_jul {; Kerry Mitchell
     ; Average together 8 Julia sets with same c, different bailouts.
     ; Each iteration, see where |sqr(z)+c| lies between minimum
     ; and maximum bounds given by triangle inequality.
     ; Form scale = (|sqr(z)+c| - min)/(max - min).
     ; Colors by average scale, use "decomp=256" coloring.
     ; c=p1, real(p2)=bailout >> 4, try 1e6
     ; imag(p2)=coloring "speed" > 0, try 10
  zc=pixel, c=p1, rc=cabs(c), r2zc=|zc|
  iter=1, k=flip(imag(p2)), tot=0
  b1=real(p2), fac=b1^0.125, b2=b1*fac, b3=b2*fac
  b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
  iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0:
  iter=iter+1, z2=sqr(zc)+c, rz2=cabs(z2)
  fac=abs(r2zc-rc), q=(rz2-fac)/(r2zc+rc-fac), tot=tot+q
  zc=z2, r2zc=|zc|
  IF (r2zc>b1)
    IF (iter1==0)
      iter1=iter, q1=tot/iter
    ENDIF
    IF (r2zc>b2)
      IF (iter2==0)
        iter2=iter, q2=tot/iter
      ENDIF
      IF (r2zc>b3)
        IF (iter3==0)
          iter3=iter, q3=tot/iter
        ENDIF
        IF (r2zc>b4)
          IF (iter4==0)
            iter4=iter, q4=tot/iter
          ENDIF
          IF (r2zc>b5)
            IF (iter5==0)
              iter5=iter, q5=tot/iter
            ENDIF
            IF (r2zc>b6)
              IF (iter6==0)
                iter6=iter, q6=tot/iter
              ENDIF
              IF (r2zc>b7)
                IF (iter7==0)
                  iter7=iter, q7=tot/iter
                ENDIF
                IF (r2zc>b8)
                  IF (iter8==0)
                    iter8=iter, q8=tot/iter
                  ENDIF
                  qave=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
                  z=exp(qave*k)
                ENDIF
              ENDIF
            ENDIF
          ENDIF
        ENDIF
      ENDIF
    ENDIF
  ENDIF
  r2zc <= b8
  ;SOURCE: lkm.frm
}


LKM-avetriang_man { ; Kerry Mitchell
      ; Average together 8 Mandelbrots with same c, different bailouts.
      ; Each iteration, see where |sqr(z)+c| lies between minimum
      ; and maximum bounds given by triangle inequality.
      ; Form scale = (|sqr(z)+c| - min)/(max - min).
      ; Colors by average scale, use "decomp=256" coloring.
      ; real(p1)=bailout >> 4, try 1e6
      ; imag(p1)=coloring "speed" > 0, try 10
  c=zc=pixel, rc=cabs(c), r2zc=|zc|
  iter=1, k=flip(imag(p1)), tot=0
  b1=real(p1), fac=b1^0.125, b2=b1*fac, b3=b2*fac
  b4=b3*fac, b5=b4*fac, b6=b5*fac, b7=b6*fac, b8=b7*fac
  iter1=iter2=iter3=iter4=iter5=iter6=iter7=iter8=0:
  iter=iter+1, z2=sqr(zc)+c, rz2=cabs(z2)
  fac=abs(r2zc-rc), q=(rz2-fac)/(r2zc+rc-fac), tot=tot+q
  zc=z2, r2zc=|zc|
  IF (r2zc>b1)
    IF (iter1==0)
      iter1=iter, q1=tot/iter
    ENDIF
    IF (r2zc>b2)
      IF (iter2==0)
        iter2=iter, q2=tot/iter
      ENDIF
      IF (r2zc>b3)
        IF (iter3==0)
          iter3=iter, q3=tot/iter
        ENDIF
        IF (r2zc>b4)
          IF (iter4==0)
            iter4=iter, q4=tot/iter
          ENDIF
          IF (r2zc>b5)
            IF (iter5==0)
              iter5=iter, q5=tot/iter
            ENDIF
            IF (r2zc>b6)
              IF (iter6==0)
                iter6=iter, q6=tot/iter
              ENDIF
              IF (r2zc>b7)
                IF (iter7==0)
                  iter7=iter, q7=tot/iter
                ENDIF
                IF (r2zc>b8)
                  IF (iter8==0)
                    iter8=iter, q8=tot/iter
                  ENDIF
                  qave=(q1+q2+q3+q4+q5+q6+q7+q8)*0.125
                  z=exp(qave*k)
                ENDIF
              ENDIF
            ENDIF
          ENDIF
        ENDIF
      ENDIF
    ENDIF
  ENDIF
  r2zc <= b8
  ;SOURCE: lkm.frm
}


LKM-bailline_jul {; Kerry Mitchell
     ; Julia set bailout when z crosses a given line
     ; bails out when a*x + b*y > k
     ; c = p1, real(p2) = a, imag(p2) = b, real(p3) = k
  z=pixel, c=p1, a=real(p2), b=imag(p2), k=real(p3):
  z=sqr(z)+c 
  (a*real(z)+b*imag(z)) < k
  ;SOURCE: lkm.frm
}


LKM-bailline_man {; Kerry Mitchell
   ; Mandelbrot set bailout when z crosses a given line
   ; bails out when a*x + b*y > k
   ; real(p1) = a, imag(p1) = b, real(p2) = k
  z=0, c=pixel, a=real(p1), b=imag(p1), k=real(p2):
  z=sqr(z)+c 
  (a*real(z)+b*imag(z)) < k
  ;SOURCE: lkm.frm
}


LKM-bailstrict_jul {; Kerry Mitchell
     ; stricter bailout condition for Julia sets
     ; c=p1, bailout level computed automatically
  z=pixel, c=p1, r=4*cabs(c), r=sqrt(1+r), r=(1+r)/2, r=|r|:
  z=sqr(z)+c 
  |z| <= r
  ;SOURCE: lkm.frm
}


LKM-bailstrict_man (xaxis) {; Kerry Mitchell
      ; stricter bailout condition for Mandelbrot sets
      ; no parameters, bailout level computed automatically
  z=0, c=pixel, r=4*cabs(c), r=sqrt(1+r), r=(1+r)/2, r=|r|:
  z=sqr(z)+c 
  |z| <= r
  ;SOURCE: lkm.frm
}


LKM-bg_angle {; Kerry Mitchell
     ; non-fractal pattern suitable for a background
     ; bailout=0 to force 1 iteration
     ; use "decomp=256" coloring for radial lines
  z=pixel, r=0:
  1 < r
  ;SOURCE: lkm.frm
}


LKM-bg_fn1xfn2y {; Kerry Mitchell
      ; non-fractal pattern suitable for a background
      ; bailout=0 to force 1 iteration
      ; use "decomp=256" coloring
  x=real(pixel), y=imag(pixel), r=0:
  z=fn1(x)+flip(fn2(y)) 
  1 < r
  ;SOURCE: lkm.frm
}


LKM-bg_fn1z {; Kerry Mitchell
     ; non-fractal pattern suitable for a background
     ; bailout=0 to force 1 iteration
     ; use "decomp=256" coloring
  z=pixel, r=0:
  z=fn1(z) 
  1 < r
  ;SOURCE: lkm.frm
}


LKM-bg_fn1zfn2z {; Kerry Mitchell
      ; non-fractal pattern suitable for a background
      ; bailout=0 to force 1 iteration
      ; use "decomp=256" coloring
  z=pixel, r=0:
  z=fn1(z), z=fn2(z) 
  1 < r
  ;SOURCE: lkm.frm
}


LKM-bg_lines {; Kerry Mitchell
      ; non-fractal pattern suitable for a background
      ; bailout=0 to force 1 iteration
      ; use "outside=real" coloring
      ; use p1 to adjust scale and angle of lines
  z=pixel, r=0:
  z=p1*z 
  1 < r
  ;SOURCE: lkm.frm
}


LKM-bg_radius {; Kerry Mitchell
      ; non-fractal pattern suitable for a background
      ; bailout=0 to force 1 iteration
      ; use "outside=real" coloring for concentric circles
      ; use p1 to adjust scale
  z=pixel, r=0:
  z=p1*cabs(z) 
  1 < r
  ;SOURCE: lkm.frm
}


LKM-bof60_jul {; Kerry Mitchell
    ; scaleable version of Fractint's "inside=bof60"
    ; color with "inside=zmag" and use imag(p2) & fn1 to adjust levels
    ; c=p1, bailout=real(p2)
  c=p1, zc=sqr(pixel)+c, rmin=|zc|, rbig=real(p2), k=imag(p2):
  zc=sqr(zc)+c, rzc=|zc|
  IF (rzc<rmin)
    rmin=rzc, z=k*fn1(zc)
  ENDIF
  rzc < rbig
  ;SOURCE: lkm.frm
}


LKM-bof60_man {; Kerry Mitchell
    ; scaleable version of Fractint's "inside=bof60"
    ; color with "inside=zmag" and use imag(p1) & fn1 to adjust levels
    ; bailout=real(p1)
  c=pixel, zc=c, rmin=|zc|, rbig=real(p1), k=imag(p1):
  zc=sqr(zc)+c, rzc=|zc|
  IF (rzc<rmin)
    rmin=rzc 
    z=k*fn1(zc)
  ENDIF
  rzc < rbig
  ;SOURCE: lkm.frm
}


LKM-bof62_jul {; Kerry Mitchell
    ; colors by maximum value of z during iteration
    ; color with "inside=zmag" and use imag(p2) & fn1 to adjust levels
    ; c=p1, bailout=real(p2)
  c=p1, zc=sqr(pixel)+c, rmax=|zc|, rbig=real(p2), k=imag(p2):
  zc=sqr(zc)+c, rzc=|zc|
  IF (rzc>rmax)
    rmax=rzc
    z=k*fn1(zc)
  ENDIF
  rzc < rbig
  ;SOURCE: lkm.frm
}


LKM-bof62_man {; Kerry Mitchell
     ; colors by maximum value of z during iteration
     ; color with "inside=zmag" and use imag(p1) & fn1 to adjust levels
     ; bailout=real(p1)
  c=pixel, zc=c, rmax=|zc|, rbig=real(p1), k=imag(p1):
  zc=sqr(zc)+c, rzc=|zc|
  IF (rzc>rmax)
    rmax=rzc
    z=k*fn1(zc)
  ENDIF
  rzc < rbig
  ;SOURCE: lkm.frm
}


LKM-compound1_jul {; Kerry Mitchell
     ; Julia derivative, each iteration compound c by adding k
     ; c=p1, k=p2, real(p3)=bailout
  z=pixel, c=p1, k=p2, r=real(p3):
  z=sqr(z)+c, c=c+k 
  |z| <= r
  ;SOURCE: lkm.frm
}


LKM-compound1_man {; Kerry Mitchell
    ; Mandelbrot derivative, each iteration compound c by adding k
    ; k=p1, real(p2)=bailout
  z=c=pixel, k=p1, r=real(p2):
  z=sqr(z)+c, c=c+k 
  |z| <= r
  ;SOURCE: lkm.frm
}


LKM-compoundc_jul {; Kerry Mitchell
    ; Julia derivative, each iteration compound c by
    ; adding k*fn1(c), try small k, fn1=recip
    ; c=p1, k=p2, real(p3)=bailout
  z=c=pixel, c=p1, k=p2, r=real(p3):
  z=sqr(z)+c, c=c+k*fn1(c) 
  |z| <= r
  ;SOURCE: lkm.frm
}


LKM-compoundc_man {; Kerry Mitchell
    ; Mandelbrot derivative, each iteration compound c by
    ; adding k*fn1(c), try small k, fn1=recip
    ; k=p1, real(p2)=bailout
  z=c=pixel, k=p1, r=real(p2):
  z=sqr(z)+c, c=c+k*fn1(c) 
  |z| <= r
  ;SOURCE: lkm.frm
}


LKM-compoundz_jul {; Kerry Mitchell
    ; Julia derivative, each iteration compound c by
    ; adding k*fn1(z), try small k, fn1=recip
    ; c=p1, k=p2, real(p3)=bailout
  z=c=pixel, c=p1, k=p2, r=real(p3):
  z=sqr(z)+c, c=c+k*fn1(z) 
  |z| <= r
  ;SOURCE: lkm.frm
}


LKM-compoundz_man {; Kerry Mitchell
    ; Mandelbrot derivative, each iteration compound c by
    ; adding k*fn1(z), try small k, fn1=recip
    ; k=p1, real(p2)=bailout
  z=c=pixel, k=p1, r=real(p2):
  z=sqr(z)+c, c=c+k*fn1(z) 
  |z| <= r
  ;SOURCE: lkm.frm
}


LKM-contract_jul {; Kerry Mitchell
    ; x goes to x/2 +/- .5 depending on y,
    ; y goes to y/2 +/- .5 depending on x,
    ; z = c*(x,y)
    ; c=p1, real(p2) = bailout
  z=pixel, c=p1, r=real(p2):
  kx=(real(z)<=0)-0.5, ky=(imag(z)<=0)-0.5
  z=0.5*z+ky+flip(kx), z=c*z 
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-contract_man (xaxis) {; Kerry Mitchell
    ; x goes to x/2 +/- .5 depending on y,
    ; y goes to y/2 +/- .5 depending on x,
    ; z = c*(x,y)
    ; real(p1) = bailout
  z=0, c=pixel, r=real(p1):
  kx=(real(z)<=0)-0.5, ky=(imag(z)<=0)-0.5
  z=0.5*z+ky+flip(kx), z=c*z 
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-conxexpy_jul {; Kerry Mitchell
    ; x goes to x/2 +/- .5 depending on y,
    ; y goes to 2y +/- 1 depending on x,
    ; z = c*(x,y)
    ; c=p1, real(p2) = bailout
  z=pixel, c=p1, r=real(p2):
  x=real(z), y=imag(z)
  kx=1-2*(x<=0), ky=(y<=0)-0.5
  z=0.5*x+ky+flip(2*y+kx), z=c*z 
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-conxexpy_man (xaxis) {; Kerry Mitchell
        ; x goes to x/2 +/- .5 depending on y,
        ; y goes to 2y +/- 1 depending on x,
        ; z = c*(x,y)
        ; real(p1) = bailout
  z=0, c=pixel, r=real(p1):
  x=real(z), y=imag(z)
  kx=1-2*(x<=0), ky=(y<=0)-0.5
  z=0.5*x+ky+flip(2*y+kx)
  z=c*z
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-expand_jul {; Kerry Mitchell
        ; x goes to 2x +/- 1 depending on y,
        ; y goes to 2y +/- 1 depending on x,
        ; z = c*(x,y)
        ; c=p1, real(p2) = bailout
  z=pixel, c=p1, r=real(p2):
  kx=1-2*(real(z)<=0), ky=1-2*(imag(z)<=0)
  z=2*z+ky+flip(kx), z=c*z
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-expand_man (xaxis) {; Kerry Mitchell
        ; x goes to 2x +/- 1 depending on y,
        ; y goes to 2y +/- 1 depending on x,
        ; z = c*(x,y)
        ; real(p1) = bailout
  z=0, c=pixel, r=real(p1):
  kx=1-2*(real(z)<=0), ky=1-2*(imag(z)<=0)
  z=2*z+ky+flip(kx), z=c*z
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-expxcony_jul {; Kerry Mitchell
        ; x goes to 2x +/- 1 depending on y,
        ; y goes to y/2 +/- .5 depending on x,
        ; z = c*(x,y)
        ; c=p1, real(p2) = bailout
  z=pixel, c=p1, r=real(p2):
  x=real(z), y=imag(z)
  kx=(x<=0)-0.5, ky=1-2*(y<=0)
  z=2*x+ky+flip(0.5*y+kx), z=c*z
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-expxcony_man (xaxis) {; Kerry Mitchell
        ; x goes to 2x +/- 1 depending on y,
        ; y goes to y/2 +/- .5 depending on x,
        ; z = c*(x,y)
        ; real(p1) = bailout
  z=0, c=pixel, r=real(p1):
  x=real(z), y=imag(z)
  kx=(x<=0)-0.5, ky=1-2*(y<=0)
  z=2*x+ky+flip(0.5*y+kx), z=c*z
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-facadd_jul {; Kerry Mitchell
        ; add to each squaring a factor of k+real(z)*imag(z)
        ; c=p1, real(p2) = bailout, imag(p2) = k
  z=pixel, c=p1, r=real(p2), k=imag(p2):
  fac=k+real(z)*imag(z), z=fac+sqr(z)+c
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-facadd_man (xaxis) {; Kerry Mitchell
        ; add to each squaring a factor of k+real(z)*imag(z)
        ; real(p1) = bailout, imag(p1) = k
  z=0, c=pixel, r=real(p1), k=imag(p1):
  fac=k+real(z)*imag(z), z=fac+sqr(z)+c
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-facmult_jul {; Kerry Mitchell
        ; multiply each squaring by a factor of k*(real(z)+imag(z))
        ; c=p1, real(p2) = bailout, imag(p2) = k
  z=pixel, c=p1, r=real(p2), k=imag(p2):
  fac=k*(real(z)+imag(z)), z=fac*sqr(z)+c
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-facmult_man (xaxis) {; Kerry Mitchell
        ; multiply each squaring by a factor of k*(real(z)+imag(z))
        ; real(p1) = bailout, imag(p1) = k
  z=0, c=pixel, r=real(p1), k=imag(p1):
  fac=k*(real(z)+imag(z)), z=fac*sqr(z)+c
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-fire (xaxis) {; Kerry Mitchell
        ; use c+1/z for small z, c+sqr(z) for large z
        ; real(p1)=bailout
        ; use "volcano.map" to see the fire
  z=1, c=pixel, r=real(p1):
  r2z=|z|
  IF (r2z<1)
    f=1/z
  ELSE
    f=sqr(z)
  ENDIF
  z=f+c
  r2z < r
  ;SOURCE: lkm.frm
}


LKM-fofp-fn12a_jul {; Kerry Mitchell
        ; standard quadratic Julia map, but with different starting
        ; points--instead of z=pixel, use z=fn1(pixel)+fn2(pixel)
        ; c=p1, bailout=real(p2)
  z=fn1(pixel)+fn2(pixel), c=p1, r=real(p2):
  z=sqr(z)+c
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-fofp-fn12c_jul {; Kerry Mitchell
        ; standard quadratic Julia map, but with different starting
        ; points--instead of z=pixel, use z=fn2(fn1(pixel))
        ; c=p1, bailout=real(p2)
  z=fn1(pixel), z=fn2(z), c=p1, r=real(p2):
  z=sqr(z)+c
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-fofp-fn12m_jul {; Kerry Mitchell
        ; standard quadratic Julia map, but with different starting
        ; points--instead of z=pixel, use z=fn1(pixel)*fn2(pixel)
        ; c=p1, bailout=real(p2)
  z=fn1(pixel)*fn2(pixel), c=p1, r=real(p2):
  z=sqr(z)+c
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-fofp-iter_jul {; Kerry Mitchell
     ; standard quadratic Julia map, but with different starting
     ; points--instead of z=pixel, precompute z=sqr(pixel)+c
     ; c=p1, bailout=real(p2)
  c=p1, z=sqr(pixel)+c, r=real(p2):
  z=sqr(z)+c
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-gravity_dt2 {; Kerry Mitchell
     ; Loosely simulates gravitational attraction and orbit, z
     ; represents the orbital distance.  Gravity and centripetal
     ; forces are computed, and the satellite's orbit is moved
     ; forward in time using 2nd order integration.
     ; p1 = z = current orbit, usually around 1
     ; dt2 = time step (squared), real(p2) = bailout
  z0=1, z=p1, dt2=pixel, r=real(p2):
  f=1/z, f=f-sqr(f), z2=dt2*f+2*z-z0
  z0=z, z=z2 
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-gravity_z1 {; Kerry Mitchell
     ; Loosely simulates gravitational attraction and orbit, z
     ; represents the orbital distance.  Gravity and centripetal
     ; forces are computed, and the satellite's orbit is moved
     ; forward in time using 2nd order integration.
     ; p1 = dt2 = time step (squared), generally small
     ; z = current orbit, real(p2) = bailout
  z0=1, z=pixel, dt2=p1, r=real(p2):
  f=1/z, f=f-sqr(f), z2=dt2*f+2*z-z0
  z0=z, z=z2
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-newtcos {; Kerry Mitchell
      ; Newton's method for cos(zc)=c
      ; c=p1, bailout=real(p2) < 0.1
      ; z = increment to zc
  zc=pixel, c=p1, r=real(p2):
  z=(cos(zc)-c)/sin(zc), zc=zc+z
  r <= |z|
  ;SOURCE: lkm.frm
}


LKM-newtexplog (xaxis) {; Kerry Mitchell
     ; Newton's method for exp(zc)=log(zc)
     ; bailout=real(p2) < 0.1
     ; z = increment to zc
  zc=pixel, r=real(p1):
  f=exp(zc), fp=f-1/zc, f=f-log(zc)
  z=f/fp, zc=zc-z
  r < |z|
  ;SOURCE: lkm.frm
}


LKM-newtsin {; Kerry Mitchell
     ; Newton's method for sin(zc)=c
     ; c=p1, bailout=real(p2) < 0.1
     ; z = increment to zc
  zc=pixel, c=p1, r=real(p2):
  z=(c-sin(zc))/cos(zc), zc=zc+z
  r <= |z|
  ;SOURCE: lkm.frm
}


LKM-newttan {; Kerry Mitchell
     ; Newton's method for tan(zc)=c
     ; c=p1, bailout=real(p2) < 0.1
     ; z = increment to zc
  zc=pixel, c=p1, r=real(p2):
  cz=cos(zc), sz=sin(zc)
  z=(c*cz-sz)*cz, zc=zc+z
  r <= |z|
  ;SOURCE: lkm.frm
}


LKM-newtz22z (xaxis) {; Kerry Mitchell
     ; Newton's method for zc^2=2^zc
     ; c=p1, bailout=real(p2) < 0.1
     ; z = increment to zc
  zc=pixel, r=|p1|, l2=log(2):
  f=2^zc, fp=l2*f-2*zc, f=f-sqr(zc)
  z=f/fp, zc=zc-z
  r < |z|
  ;SOURCE: lkm.frm
}


LKM-newtz33z (xaxis) {; Kerry Mitchell
     ; Newton's method for zc^3=3^zc
     ; c=p1, bailout=real(p2) < 0.1
     ; z = increment to zc
  zc=pixel, r=|p1|, l3=log(3):
  z2=sqr(zc), f=3^zc, fp=l3*f-3*z2, f=f-zc*z2
  z=f/fp, zc=zc-z
  r < |z|
  ;SOURCE: lkm.frm
}


LKM-patch2_jul {; Kerry Mitchell
     ; Generate patchwork effect by rounding off z before squaring.
     ; Use fn1 = round or trunc, "decomp=256" coloring.
     ; c=p1, real(p2)=bailout, imag(p2)=rounding cutoff > 1
     ; example: if z=3.14 and cutoff=10 then
     ; new z = round(3.14 * 10)/10 = 3.1
     ; cutoff factor is increased each iteration
  z=pixel, c=p1, r=real(p2), kfac=imag(p2), k=kfac:
  z=fn1(z*k)/k, z=sqr(z)+c, k=k*kfac
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-patch2_man {; Kerry Mitchell
     ; Generate patchwork effect by rounding off z before squaring.
     ; Use fn1 = round or trunc, "decomp=256" coloring.
     ; real(p1)=bailout, imag(p1)=rounding cutoff > 1
     ; example: if z=3.14 and cutoff=10 then
     ; new z = round(3.14 * 10)/10 = 3.1
     ; cutoff factor is increased each iteration
  z=0, c=pixel, r=real(p1), kfac=imag(p1), k=kfac:
  z=fn1(z*k)/k, z=sqr(z)+c, k=k*kfac
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-patch_jul {; Kerry Mitchell
     ; Generate patchwork effect by rounding off z before squaring.
     ; Use fn1 = round or trunc, "decomp=256" coloring.
     ; c=p1, real(p2)=bailout, imag(p2)=rounding cutoff > 1
     ; example: if z=3.14 and cutoff=10 then
     ; new z = round(3.14 * 10)/10 = 3.1
  c=p1, z=pixel, r=real(p2), k=imag(p2):
  z=fn1(z*k)/k, z=sqr(z)+c
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-patch_man {; Kerry Mitchell
     ; Generate patchwork effect by rounding off z before squaring.
     ; Use fn1 = round or trunc, "decomp=256" coloring.
     ; real(p1)=bailout, imag(p1)=rounding cutoff > 1
     ; example: if z=3.14 and cutoff=10 then
     ; new z = round(3.14 * 10)/10 = 3.1
  z=0, c=pixel, r=real(p1), k=imag(p1):
  z=fn1(z*k)/k, z=sqr(z)+c
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-patcht_jul {; Kerry Mitchell
    ; Generate patchwork effect by rounding off z before squaring.
    ; Use fn1 = round or trunc, "decomp=256" coloring.
    ; c=p1, real(p2)=bailout, imag(p2)=initial rounding cutoff > 1
    ; example: if z=3.14 and cutoff=10 then
    ; new z = round(3.14 * 10)/10 = 3.1
    ; real(p3)=angle factor in radians, try 1 or 2
    ; angle gets increased by angle factor each iteration,
    ; cutoff is changed each iteration by cos(angle)
  z=pixel, c=p1, r=real(p2), kr=imag(p2), dt=real(p3), t=0:
  ct=cos(t), k=kr*ct, z=fn1(z*k)/k 
  z=sqr(z)+c, t=t+dt
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-patcht_man {; Kerry Mitchell
     ; Generate patchwork effect by rounding off z before squaring.
     ; Use fn1 = round or trunc, "decomp=256" coloring.
     ; real(p1)=bailout, imag(p1)=initial rounding cutoff > 1
     ; example: if z=3.14 and cutoff=10 then
     ; new z = round(3.14 * 10)/10 = 3.1
     ; real(p2)=angle factor in radians, try 1 or 2
     ; angle gets increased by angle factor each iteration,
     ; cutoff is changed each iteration by cos(angle)
  c=pixel, z=0, r=real(p1), kr=imag(p1), dt=real(p2), t=0:
  ct=cos(t), k=kr*ct, z=fn1(z*k)/k 
  z=sqr(z)+c, t=t+dt
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-quilte2 {; Kerry Mitchell
     ; quilted backgrounds
     ; uses 2 iterations of c*exp(z) with 2 different c's
     ; c1 and c2 are tiled periodically, with different frequencies
     ; z1 & z2 are multiplied together to add their angles
     ; use "decomp=256" coloring
     ; r=bailout=0 for swirly exteriors and no interiors
     ; real(p1), imag(p1) = x1, y1 frequencies for c1
     ; real(p2), imag(p2) = x2, y2 frequencies for c2
     ; try different fn1 and fn2 for added joy
  x=real(pixel), y=imag(pixel)
  a1=pi*real(p1), b1=pi*imag(p1)
  a2=pi*real(p2), b2=pi*imag(p2)
  x1=2*cos(a1*x), y1=2*cos(b1*y)
  x2=2*sin(a2*x), y2=2*sin(b2*y)
  c1=x1+flip(y1), c2=x2+flip(y2)
  z1=c1, z2=c2, r=0:
  z1=c1*exp(z1), z2=c2*exp(z2)
  z=fn1(z1)*fn2(z2)
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-quilte3 {; Kerry Mitchell
     ; quilted backgrounds
     ; uses 3 iterations of c*exp(z) with 2 different c's
     ; c1 and c2 are tiled periodically, with different frequencies
     ; z1 & z2 are multiplied together to add their angles
     ; use "decomp=256" coloring
     ; r=bailout=0 for swirly exteriors and no interiors
     ; real(p1), imag(p1) = x1, y1 frequencies for c1
     ; real(p2), imag(p2) = x2, y2 frequencies for c2
     ; try different fn1 and fn2 for added joy
  x=real(pixel), y=imag(pixel)
  a1=pi*real(p1), b1=pi*imag(p1)
  a2=pi*real(p2), b2=pi*imag(p2)
  x1=2*cos(a1*x), y1=2*cos(b1*y)
  x2=2*sin(a2*x), y2=2*sin(b2*y)
  c1=x1+flip(y1), c2=x2+flip(y2)
  z1=c1, z2=c2, r=0:
  z1=c1*exp(z1), z2=c2*exp(z2)
  z1=c1*exp(z1), z2=c2*exp(z2)
  z=fn1(z1)*fn2(z2)
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-quiltj2 {; Kerry Mitchell
     ; quilted backgrounds
     ; uses 3 iterations of 2 julia sets with different c's
     ; c1=p1, c2=p2, initial values of z1 and c2 are tiled
     ; periodically, with different frequencies
     ; final z1 & z2 are multiplied together to add their angles
     ; use "decomp=256" coloring
     ; r=bailout=0 for swirly exteriors and no interiors
     ; real(p3) = frequency for z1
     ; imag(p3) = frequency for z2
     ; try different fn1 and fn2 for added joy
  c1=p1, c2=p2, x=real(pixel), y=imag(pixel)
  k1=pi*real(p3), k2=pi*imag(p3)
  x1=2*cos(k1*x), y1=2*cos(k1*y)
  x2=2*sin(k2*x), y2=2*sin(k2*y)
  z1=x1+flip(y1), z2=x2+flip(y2), r=0:
  z1=sqr(z1)+c1, z2=sqr(z2)+c2
  z1=sqr(z1)+c1, z2=sqr(z2)+c2
  z=fn1(z1)*fn2(z2)
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-quiltj3{; Kerry Mitchell
     ; quilted backgrounds
     ; uses 3 iterations of 2 julia sets with different c's
     ; c1=p1, c2=p2, initial values of z1 and c2 are tiled
     ; periodically, with different frequencies
     ; final z1 & z2 are multiplied together to add their angles
     ; use "decomp=256" coloring
     ; r=bailout=0 for swirly exteriors and no interiors
     ; real(p3) = frequency for z1
     ; imag(p3) = frequency for z2
     ; try different fn1 and fn2 for added joy
  c1=p1, c2=p2, x=real(pixel), y=imag(pixel)
  k1=pi*real(p3), k2=pi*imag(p3)
  x1=2*cos(k1*x), y1=2*cos(k1*y)
  x2=2*sin(k2*x), y2=2*sin(k2*y)
  z1=x1+flip(y1), z2=x2+flip(y2), r=0:
  z1=sqr(z1)+c1, z2=sqr(z2)+c2
  z1=sqr(z1)+c1, z2=sqr(z2)+c2
  z1=sqr(z1)+c1, z2=sqr(z2)+c2
  z=fn1(z1)*fn2(z2)
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-quiltm2 {; Kerry Mitchell
     ; quilted backgrounds
     ; uses 2 iterations of 2 mandelbrot variables with different c's
     ; c1 and c2 are tiled periodically, with different frequencies
     ; z1 & z2 are multiplied together to add their angles
     ; use "decomp=256" coloring
     ; r=bailout=0 for swirly exteriors and no interiors
     ; real(p1), imag(p1) = x1, y1 frequencies for c1
     ; real(p2), imag(p2) = x2, y2 frequencies for c2
     ; try different fn1 and fn2 for added joy
  x=real(pixel), y=imag(pixel)
  a1=pi*real(p1), b1=pi*imag(p1)
  a2=pi*real(p2), b2=pi*imag(p2)
  x1=2*cos(a1*x), y1=2*cos(b1*y)
  x2=2*sin(a2*x), y2=2*sin(b2*y)
  c1=x1+flip(y1), c2=x2+flip(y2)
  z1=c1, z2=c2, r=0:
  z1=sqr(z1)+c1, z2=sqr(z2)+c2
  z=fn1(z1)*fn2(z2)
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-quiltm3 {; Kerry Mitchell
     ; quilted backgrounds
     ; uses 3 iterations of 2 mandelbrot variables with different c's
     ; c1 and c2 are tiled periodically, with different frequencies
     ; z1 & z2 are multiplied together to add their angles
     ; use "decomp=256" coloring
     ; r=bailout=0 for swirly exteriors and no interiors
     ; real(p1), imag(p1) = x1, y1 frequencies for c1
     ; real(p2), imag(p2) = x2, y2 frequencies for c2
     ; try different fn1 and fn2 for added joy
  x=real(pixel), y=imag(pixel)
  a1=pi*real(p1), b1=pi*imag(p1)
  a2=pi*real(p2), b2=pi*imag(p2)
  x1=2*cos(a1*x), y1=2*cos(b1*y)
  x2=2*sin(a2*x), y2=2*sin(b2*y)
  c1=x1+flip(y1), c2=x2+flip(y2)
  z1=c1, z2=c2, r=0:
  z1=sqr(z1)+c1, z2=sqr(z2)+c2
  z1=sqr(z1)+c1, z2=sqr(z2)+c2
  z=fn1(z1)*fn2(z2)
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-skewgenl_man {; Kerry Mitchell
     ; Linearly move from z^n+c to z^m+c Mandelbrot sets
     ; without branch cuts.
     ; n=real(p2)>2, m=imag(p2)>n
     ; p3 determines skewing from one set to another:
     ; p3=0 for z^n, p3=1 for z^m, try complex values
     ; bailout=real(p1)
  z=pixel, c=pixel, r=real(p1)
  n=real(p2), m=imag(p2), mmn=m-n, a=p3:
  k=1+a*z^mmn-a, z=k*z^n+c
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-skewgenla_jul {; Kerry Mitchell
     ; Linearly move from z^n+c to z^m+c Julia sets
     ; without branch cuts.
     ; n=real(p3)>2, m=imag(p3)>n
     ; imag(p2) determines skewing from one set to another:
     ; imag(p2)=0 for z^n, imag(p2)=1 for z^m
     ; c=p1, bailout=real(p2)
  z=pixel, c=p1, r=real(p2)
  n=real(p3), m=imag(p3), mmn=m-n, a=imag(p2):
  k=1+a*z^mmn-a, z=k*z^n+c
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-skewgenlb_jul {; Kerry Mitchell
     ; Linearly move from z^n+c to z^m+c Julia sets
     ; without branch cuts.
     ; n=real(p3)>2, m=imag(p3)>n
     ; p2 determines skewing from one set to another:
     ; p2=0 for z^n, p2=1 for z^m, try complex values too
     ; c=p1, bailout=100 (fixed)
  z=pixel, c=p1, r=100
  n=real(p3), m=imag(p3), mmn=m-n, a=p2:
  k=1+a*z^mmn-a, z=k*z^n+c
  |z| < r
  ;SOURCE: lkm.frm
}


LKM-step_jul {; Kerry Mitchell
     ; step map, z=c*f(z)
     ; f(z)=z-1 if real(z)>0
     ;     =z+1 if real(z)<0
     ; c=p1, real(p2) = bailout
  c=p1, z=pixel, r=real(p2):
  x=real(z), f=z-1
  IF (x<0)
    f=f+2
  ENDIF
  z=c*f
  |z|<r
  ;SOURCE: lkm.frm
}


LKM-step_man (xaxis) {; Kerry Mitchell
     ; step map, z=c*f(z)
     ; f(z)=z-1 if real(z)>0
     ;     =z+1 if real(z)<0
     ; real(p1) = bailout
  z=0, c=pixel, r=real(p1):
  x=real(z), f=z-1
  IF (x<0)
    f=f+2
  ENDIF
  z=c*f
  |z|<r
  ;SOURCE: lkm.frm
}


LKM-tent_jul {; Kerry Mitchell
    ; tent map, z=c*f(z)
    ; f(z)=2-z if real(z)>1
    ;     =  z if real(z)<1
    ; c=p1, real(p2) = bailout
  c=p1, z=pixel, r=real(p2):
  x=real(z), f=z
  IF (x>1)
    f=2-f
  ENDIF
  z=c*f
  |z|<r
  ;SOURCE: lkm.frm
}


LKM-tent_man (xaxis) {; Kerry Mitchell
     ; tent map, z=c*f(z)
     ; f(z)=2-z if real(z)>1
     ;     =  z if real(z)<1
     ; real(p1) = bailout
  z=1, c=pixel, r=real(p1):
  x=real(z), f=z
  IF (x>1)
    f=2-f
  ENDIF
  z=c*f
  |z|<r
  ;SOURCE: lkm.frm
}


LKM-vortex1r {; Kerry Mitchell
     ; Simulate 2d fluid flow with 2 vortices spinning in a loop.
     ; Determines velocities at each iteration, multiplies by
     ; time step to find distance moved, increments old location.
     ; Vortices will complete 1 loop in about real(p1) iterations.
     ; z1 and k1 are first vortex position & strength
     ; z2 and k2 are second vortex position & strength
     ; zp = field point location
     ; time step = 1/real(p1), real(p1) between 200 & 2000 works well
     ; fiddle with imag(p1) and fn1 to get a good picture
     ; colors by final field point location, so use "inside=zmag"
  gamma=4*flip(pi), fac=imag(p1)
  z1=(0,1), k1=gamma
  z2=(0,-1), k2=gamma
  zp=pixel, rmax=9, dt=1/real(p1):
  r1=zp-z1, r2=zp-z2
  v=k1*r1/|r1|+k2*r2/|r2|
  r2=z2-z1
  v1=k2*r2/|r2|
  r1=z1-z2
  v2=k1*r1/|r1|
  z1=z1+dt*v1, z2=z2+dt*v2
  zp=zp+dt*v
  z=fac*fn1(zp)
  |zp| < rmax
  ;SOURCE: lkm.frm
}


LKM-vortex1t {; Kerry Mitchell
     ; Simulate 2d fluid flow with 2 vortices spinning in a loop.
     ; Determines velocities at each iteration, multiplies by
     ; time step to find distance moved, increments old location.
     ; Vortices will complete 1 loop in about real(p1) iterations.
     ; z1 and k1 are first vortex position & strength
     ; z2 and k2 are second vortex position & strength
     ; z3 and k3 are third vortex position & strength
     ; zp = field point location
     ; time step = 1/real(p1), real(p1) between 200 & 2000 works well
     ; fiddle with imag(p1) to get a good picture
     ; colors by final field point angle, use "inside=zmag"
  gamma=4*flip(pi), fac=imag(p1)
  z1=(0,1), k1=gamma
  z2=(0,-1), k2=gamma
  zp=pixel, rmax=9, dt=1/real(p1):
  r1=zp-z1, r2=zp-z2
  v=k1*r1/|r1|+k2*r2/|r2|
  r2=z2-z1
  v1=k2*r2/|r2|
  r1=z1-z2
  v2=k1*r1/|r1|
  z1=z1+dt*v1, z2=z2+dt*v2
  zp=zp+dt*v
  z=cabs(imag(log(zp))), z=fac*sqrt(z)
  |zp| < rmax
  ;SOURCE: lkm.frm
}


LKM-vortex2r {; Kerry Mitchell
     ; Simulate 2d fluid flow with 2 vortices spinning in a loop.
     ; Determines velocities at each iteration, multiplies by
     ; time step to find distance moved, increments old location.
     ; Vortices will complete 1 loop in about real(p1) iterations.
     ; z1 and k1 are first vortex position & strength
     ; z2 and k2 are second vortex position & strength
     ; z3 and k3 are third vortex position & strength
     ; zp = field point location
     ; time step = 1/real(p1), real(p1) between 200 & 2000 works well
     ; fiddle with imag(p1) and fn1 to get a good picture
     ; colors by final field point location, so use "inside=zmag"
  gamma=4*flip(pi), fac=imag(p1)
  z1=(0,1), k1=gamma
  z2=(0,0), k2=-gamma
  z3=(0,-1), k3=gamma
  zp=pixel, rmax=9, dt=1/real(p1):
  r1=zp-z1, r2=zp-z2, r3=zp-z3
  v=k1*r1/|r1|+k2*r2/|r2|+k3*r3/|r3|
  r2=z2-z1, r3=z3-z1
  v1=k2*r2/|r2|+k3*r3/|r3|
  r1=z1-z2, r3=z3-z2
  v2=k1*r1/|r1|+k3*r3/|r3|
  r1=z1-z3, r2=z2-z3
  v3=k1*r1/|r1|+k2*r2/|r2|
  z1=z1+dt*v1, z2=z2+dt*v2, z3=z3+dt*v3
  zp=zp+dt*v
  z=fac*fn1(zp)
  |zp| < rmax
  ;SOURCE: lkm.frm
}


LKM-vortex2t {; Kerry Mitchell
      ; Simulate 2d fluid flow with 2 vortices spinning in a loop.
      ; Determines velocities at each iteration, multiplies by
      ; time step to find distance moved, increments old location.
      ; Vortices will complete 1 loop in about real(p1) iterations.
      ; z1 and k1 are first vortex position & strength
      ; z2 and k2 are second vortex position & strength
      ; z3 and k3 are third vortex position & strength
      ; zp = field point location
      ; time step = 1/real(p1), real(p1) between 200 & 2000 works well
      ; fiddle with imag(p1) to get a good picture
      ; colors by final field point angle, use "inside=zmag"
  gamma=4*flip(pi), fac=imag(p1)
  z1=(0,1), k1=gamma
  z2=(0,0), k2=-gamma
  z3=(0,-1), k3=gamma
  zp=pixel, rmax=9, dt=1/real(p1):
  r1=zp-z1, r2=zp-z2, r3=zp-z3
  v=k1*r1/|r1|+k2*r2/|r2|+k3*r3/|r3|
  r2=z2-z1, r3=z3-z1
  v1=k2*r2/|r2|+k3*r3/|r3|
  r1=z1-z2, r3=z3-z2
  v2=k1*r1/|r1|+k3*r3/|r3|
  r1=z1-z3, r2=z2-z3
  v3=k1*r1/|r1|+k2*r2/|r2|
  z1=z1+dt*v1, z2=z2+dt*v2, z3=z3+dt*v3
  zp=zp+dt*v
  z=cabs(imag(log(zp))), z=fac*sqrt(z)
  |zp| < rmax
  ;SOURCE: lkm.frm
}


LKM-vortex3r {; Kerry Mitchell
      ; Simulate 2d fluid flow with 2 vortices spinning in a loop.
      ; Determines velocities at each iteration, multiplies by
      ; time step to find distance moved, increments old location.
      ; Vortices will complete 1 loop in about real(p1) iterations.
      ; z1 and k1 are first vortex position & strength
      ; z2 and k2 are second vortex position & strength
      ; z3 and k3 are third vortex position & strength
      ; zp = field point location
      ; time step = 1/real(p1), real(p1) between 200 & 2000 works well
      ; fiddle with imag(p1) and fn1 to get a good picture
      ; colors by final field point location, so use "inside=zmag"
  gamma=4/3*flip(pi), fac=imag(p1)
  z1=(0,1), k1=gamma
  z2=(0,0), k2=gamma
  z3=(0,-1), k3=gamma
  zp=pixel, rmax=9, dt=1/real(p1):
  r1=zp-z1, r2=zp-z2, r3=zp-z3
  v=k1*r1/|r1|+k2*r2/|r2|+k3*r3/|r3|
  r2=z2-z1, r3=z3-z1
  v1=k2*r2/|r2|+k3*r3/|r3|
  r1=z1-z2, r3=z3-z2
  v2=k1*r1/|r1|+k3*r3/|r3|
  r1=z1-z3, r2=z2-z3
  v3=k1*r1/|r1|+k2*r2/|r2|
  z1=z1+dt*v1, z2=z2+dt*v2, z3=z3+dt*v3
  zp=zp+dt*v
  z=fac*fn1(zp)
  |zp| < rmax
  ;SOURCE: lkm.frm
}


LKM-vortex3t {; Kerry Mitchell
      ; Simulate 2d fluid flow with 2 vortices spinning in a loop.
      ; Determines velocities at each iteration, multiplies by
      ; time step to find distance moved, increments old location.
      ; Vortices will complete 1 loop in about real(p1) iterations.
      ; z1 and k1 are first vortex position & strength
      ; z2 and k2 are second vortex position & strength
      ; z3 and k3 are third vortex position & strength
      ; zp = field point location
      ; time step = 1/real(p1), real(p1) between 200 & 2000 works well
      ; fiddle with imag(p1) to get a good picture
      ; colors by final field point angle, use "inside=zmag"
  gamma=4/3*flip(pi), fac=imag(p1)
  z1=(0,1), k1=gamma
  z2=(0,0), k2=gamma
  z3=(0,-1), k3=gamma
  zp=pixel, rmax=9, dt=1/real(p1):
  r1=zp-z1, r2=zp-z2, r3=zp-z3
  v=k1*r1/|r1|+k2*r2/|r2|+k3*r3/|r3|
  r2=z2-z1, r3=z3-z1
  v1=k2*r2/|r2|+k3*r3/|r3|
  r1=z1-z2, r3=z3-z2
  v2=k1*r1/|r1|+k3*r3/|r3|
  r1=z1-z3, r2=z2-z3
  v3=k1*r1/|r1|+k2*r2/|r2|
  z1=z1+dt*v1, z2=z2+dt*v2, z3=z3+dt*v3
  zp=zp+dt*v
  z=cabs(imag(log(zp))), z=fac*sqrt(z)
  |zp| < rmax
  ;SOURCE: lkm.frm
}


LL-1-01 (XAXIS) {; first try
  z=0, c=pixel:        ;initialization
  z=z^2+c              ;iteration
  z<=4                 ;bailout
  ;SOURCE: leelane1.frm
}


LL-1-02 (XAXIS) {
  z = pixel:
  z = p1*z*z - z
  z < p1 + 3
  ;SOURCE: leelane1.frm
}


LL-1-03 {
  p = pixel, z = 0:
  z=z*p + p1
  z < p1 + 2
  ;SOURCE: leelane1.frm
}


LL-1-04 {
  p = pixel, z = 0 :
  z = z*p + log(p1)
  z < p2 + 2
  ;SOURCE: leelane1.frm
}


LL-1-05 {; try variables
  p = pixel, z = p, g = p1*p*p:
  z = cos(z) * g - z
  z < p1 + 2
  ;SOURCE: leelane1.frm
}


LL1-01 (XAXIS) {; first try
  z=0, c=pixel:        ;initialization
  z=z^2+c              ;iteration
  z<=4                 ;bailout
  ;SOURCE: leelane.frm
}


LL1-05 {; try variables
  z = pixel, g = p1*z*z, b = p1 + 2:
  z = cos(z) * g - z
  z < b
  ;SOURCE: leelane.frm
}


LL1-09 {
  z=pixel, b=p2+1:
  z=fn2(p1*fn1(z))
  |z|<b
  ;SOURCE: leelane.frm
}


LL1-12 {
  z=0, p=pixel, a=p1*p*p*p:
  z=fn2(fn1(a))*fn3(z)
  z<p2+2
  ;SOURCE: leelane.frm
}


LL2-01 {; overlay LL1-06 and LL1-09
  z = pixel, c = (p1+1)*fn2(z*z*z), b1 = p2+3, b2 = p2+1:
  IF (whitesq)
    z = fn1(z)*z*z+c
    PHC_bailout = |z| < b1
  ELSE
    z = fn2(p1*fn1(z))
    PHC_bailout = |z| < b2
  ENDIF
  PHC_bailout
  ;SOURCE: leelane.frm
}


LL2-02 {; overlay LL1-08 and LL1-11
  z = pixel, c = fn2(z^p1), b1 = p2+3, b2 = p2+1:
  IF (whitesq)
    z = fn1(z)*z*z+c
    PHC_bailout = |z| < b1
  ELSE
    z = p1*fn2(z*z*z*fn1(z)) + fn1(fn2(fn3(z)))
    PHC_bailout = z < b2
  ENDIF
  PHC_bailout
  ;SOURCE: leelane.frm
}


LL2-03 {; overlay LL1-11 and LL1-06
  z = pixel, c = (p1+1)*fn2(z*z*z), b1 = p2+3, b2 = p2+1:
  IF (whitesq)
    z = p1*fn2(z*z*z*fn1(z)) + fn1(fn2(fn3(z)))
    PHC_bailout = z < b2
  ELSE
    z = fn1(z)*z*z+c
    PHC_bailout = |z| < b1        
  ENDIF
  PHC_bailout
  ;SOURCE: leelane.frm
}


LL2-04 {; overlay LL1-09 and LL1-08
  z = pixel,c = fn2(z^p1),b1 = p2+3,b2 = p2+1:
  IF (whitesq)
    z = fn2(p1*fn1(z))
    PHC_bailout = |z| < b2
  ELSE
    z = fn1(z)*z*z+c
    PHC_bailout = |z| < b1
  ENDIF
  PHC_bailout
  ;SOURCE: leelane.frm
}


LL2-05 {
  z = pixel, c = sqr(fn2(z)), b1 = p2+3, b2 = p2+1:
  IF (whitesq)
    z = (fn1(z))^p1 - fn2(p1)
    PHC_bailout = z < b2
  ELSE
    z = fn1(c)*z*z+c
    PHC_bailout = |z| < b1
  ENDIF
  PHC_bailout
  ;SOURCE: leelane.frm
}


Log_Ser_3Way {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = escape circle radius squared
    ; imag(p1) = number of iterations to skip
    ; real(p2) = number of color ranges
    ; imag(p2) = number of colors in a range
    ;
  z = w = k = iter = range_num = bailout = 0
  c = pixel
  prev_modw2 = 1.0e20
  rad2 = real(p1)
  skip_iters = imag(p1)
  num_ranges = real(p2)
  colors_in_range = imag(p2)
  factor = (colors_in_range - 1) / rad2
  :
  w2=w*w, w4=w2*w2, w6=w2*w4, w8=w4*w4, w10=w6*w4, w12=w6*w6
  w = w2 - w4/2 + w6/3 - w8/4 + w10/5 - w12/6 + c
    ;
  IF ((prev_modw2 < rad2) && (|w| > rad2))
    bailout = 1
    IF (iter > skip_iters)
      k = 1
    ENDIF
    z = (factor*(rad2-prev_modw2)+range_num*colors_in_range+1)*k
  ENDIF
  prev_modw2 = |w|
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < 1.0e20
  ;SOURCE: 98msg.frm
}


Log_Series_Mset {; Copyright (c) Paul W. Carlson, 1998
  w = z = iter = range_num = bailout = 0
  c = pixel
  num_ranges = real(p2)
  colors_in_range = imag(p2)
  :
  prev_w = w
  w2=w*w, w4=w2*w2, w6=w2*w4, w8=w4*w4, w10=w6*w4, w12=w6*w6
  w = w2 - w4/2 + w6/3 - w8/4 + w10/5 - w12/6 + c
  IF (abs(real(w)) > p1)
    bailout = 1
    angle = abs(atan((imag(w)-imag(prev_w))/(real(w)-real(prev_w))))
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
  ;SOURCE: carlson2.frm
}


LogDog (YAXIS) { 
  z = Pixel, b = p1+2:  
  z = log( z ) * pixel  
  |z| <= b 
  ;SOURCE: newform.frm
}


LogExp (xaxis) {; Jm Collard-Richard  float=yes
                ; log(z)+exp(z)=0  une solution n'est *pas* z=0 ! 
                ; UNE solution: z=0.2...
  z=pixel:
  z1=log(z)+exp(z)
  z2=1/z+exp(z)
  z=z-(z1/z2)
  0.001<=|z1| 
  ;SOURCE: jmcr2.frm
}


logf {
   ; I never did work with logs that much but this one was interesting.
  z=pixel, zp = (0,0):
  temp = z
  z = z*z + zp
  zp = log(1-temp)
  |zp| <= 4 
  ;SOURCE: noel.frm
}


LogPlusSin (XAXIS) {
  z = pixel:
  z = log(z) + sin(z) + pixel
  |z| <= 4
  ;SOURCE: formulas.frm
}


LorentzJ{; Julia Set for LorentzM
         ; keep p1 between 0 and 1, <0.7 is best
         ; p2=julia parameter
         ; p3=bailout
  z=pixel
  c=p2:
  z=sqrt(1-(z*z)/(p1*p1))+c
  |z|<=p3
  ;SOURCE: 98msg.frm
}


LorentzM {; Mutated Mandelbrot set based on Lorentz contraction
          ; keep p1 between 0 and 1, <0.7 is best, negative values mirror
          ; Re(p1)=Im(p1) -> 0 converges to standard Mandel rotated by 90
          ; Size increases with |p1|
          ; p2=unused
          ; p3=bailout
  z=0 
  c=pixel:
  z=sqrt(1-(z*z)/(p1*p1))+c
  |z|<=p3
  ;SOURCE: 98msg.frm
}


LorentzM_FB {; Copyright (c) Paul W. Carlson, 1998
    ; keep p1 between 0 and 1, <0.7 is best, negative values mirror
    ; Re(p1)=Im(p1) -> 0 converges to standard Mandel rotated by 90
    ; Size increases with |p1|
    ; real(p2) = radius of center of ring (0.01 to 10)
    ; imag(p2) = one half thickness of ring (0.01 to real(p2))
    ; real(p3) = bailout test value
    ; imag(p3) = iterations to skip
  c = pixel
  w = z = iter = bailout = 0
  k = real(p2)
  d0 = k + imag(p2)
  test = real(p3)
  skip = imag(p3)
  d1 = 0.382683432365 * k
  d2 = 0.923879532511 * k
  dsqd = d0 * d0 + k * k - (d0 + d0) * d2:
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; Oliver Klimek's Lorentz equation (using w instead of z)
  w = sqrt(1 - (w * w) / (p1 * p1)) + c
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  IF ((abs(cabs(w) - k) < imag(p2)) && iter > skip)
    bailout = 1
    wr = real(w), wi = imag(w)
    awr = abs(wr), awi = abs(wi)
    IF (awr >= awi)
      dist = (awr - d2)*(awr - d2) + (awi - d1)*(awi - d1)
      adjust = 1
    ELSE
      dist = (awr - d1)*(awr - d1) + (awi - d2)*(awi - d2)
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
  bailout == 0 && |w| < test
  ;SOURCE: 98msg.frm
}


Lyapunov1 (XAXIS) {  
  z = pixel:
  value = 1 + p1
  z = value*z*(1-z)
  ;SOURCE: robert.frm
}


lz10_sin (xyaxis) { 
  z=0: 
  z=(1/((z*pixel)*sin(z*pixel)))*pixel 
  |z|<=4 
  ;SOURCE: formtype.frm
}


lz10_sinh (xyaxis) { 
  z=0: 
  z=(1/((z*pixel)*sinh(z*pixel)))*pixel 
  |z|<=4 
  ;SOURCE: formtype.frm
}


lz11_sin (xyaxis) {
  z=(z^pixel)*sin(z^pixel) 
  |z|<=4 
  ;SOURCE: formtype.frm
}


lz1_cos (xyaxis) {
  z=cos(z^pixel) 
  |z|<=4 
  ;SOURCE: formtype.frm
}


lz1_cosh (xyaxis) {
  z=cosh(z^pixel) 
  |z|<=4 
  ;SOURCE: formtype.frm
}


lz1_sin (xyaxis) {
  z=sin(z^pixel) 
  |z|<=4 
  ;SOURCE: formtype.frm
}


lz1_sinh (xyaxis) {
  z=sinh(z^pixel) 
  |z|<=4 
  ;SOURCE: formtype.frm
}


lz1l_sinh (xyaxis) {
  z=(z^pixel)*sinh(z^pixel) 
  |z|<=4 
  ;SOURCE: formtype.frm
}


lz2_cos (xyaxis) {
  z=cos(z^pixel)*pixel 
  |z|<=4 
  ;SOURCE: formtype.frm
}


lz2_cosh (xyaxis) {
  z=cosh(z^pixel)*pixel 
  |z|<-4 
  ;SOURCE: formtype.frm
}


lz2_sin (xyaxis) {
  z=sin(z^pixel)*pixel 
  |z|<=4 
  ;SOURCE: formtype.frm
}


lz2_sinh (xyaxis) {
  z=sinh(z^pixel)*pixel 
  |z|<=4 
  ;SOURCE: formtype.frm
}


lz3_cos (xyaxis) {
  z=1/cos(z^pixel) 
  |z|<=4 
  ;SOURCE: formtype.frm
}


lz3_cosh (xyaxis) {
  z=1/cosh(z^pixel) 
  |z|<=4 
  ;SOURCE: formtype.frm
}


lz3_sin (xyaxis) {
  z=1/sin(z^pixel) 
  |z|<=4 
  ;SOURCE: formtype.frm
}


lz3_sinh (xyaxis) {
  z=1/sinh(z^pixel) 
  |z|<=4 
  ;SOURCE: formtype.frm
}


lz4_cos (xyaxis) {
  z=1/cos(z*pixel)  
  |z|<=4 
  ;SOURCE: formtype.frm
}


lz4_cosh (xyaxis) {
  z=1/cosh(z*pixel)  
  |z|<=4 
  ;SOURCE: formtype.frm
}


lz4_sin (xyaxis) {
  z=1/sin(z*pixel)  
  |z|<=4 
  ;SOURCE: formtype.frm
}


lz4_sinh (xyaxis) {
  z=1/sinh(z*pixel)  
  |z|<=4 
  ;SOURCE: formtype.frm
}


lz5_cos (xyaxis) {
  z=(1/sin(z^pixel))*pixel  
  |z|<=4 
  ;SOURCE: formtype.frm
}


lz5_cosh (xyaxis) {
  z=(1/sin(z^pixel))*pixel  
  |z|<=4 
  ;SOURCE: formtype.frm
}


lz5_sin (xyaxis) {
  z=(1/sin(z^pixel))*pixel  
  |z|<=4 
  ;SOURCE: formtype.frm
}


lz5_sinh (xyaxis) {
  z=(1/sin(z^pixel))*pixel  
  |z|<=4 
  ;SOURCE: formtype.frm
}


lz6_cos (xyaxis) {
  z=(1/cos(z*pixel))*pixel 
  |4|<=4 
  ;SOURCE: formtype.frm
}


lz6_cosh (xyaxis) {
  z=(1/cosh(z*pixel))*pixel 
  |4|<=4 
  ;SOURCE: formtype.frm
}


lz6_sin (xyaxis) {
  z=(1/sin(z*pixel))*pixel 
  |4|<=4 
  ;SOURCE: formtype.frm
}


lz6_sinh (xyaxis) {
  z=(1/sinh(z*pixel))*pixel 
  |4|<=4 
  ;SOURCE: formtype.frm
}


lz7_cosh (xyaxis) {
  z=z*pixel*cosh(z*pixel) 
  |z|<=4 
  ;SOURCE: formtype.frm
}


lz7_sin (xyaxis) {
  z=z*pixel*sin(z*pixel) 
  |z|<=4 
  ;SOURCE: formtype.frm
}


lz7_sinh (xyaxis) {
  z=z*pixel*sinh(z*pixel) 
  |z|<=4 
  ;SOURCE: formtype.frm
}


lz8_cosh (xyaxis) {
  z=z*pixel*cosh(z*pixel)+pixel 
  |z|<=4 
  ;SOURCE: formtype.frm
}


lz8_sin (xyaxis) {
  z=z*pixel*sin(z*pixel)+pixel 
  |z|<=4 
  ;SOURCE: formtype.frm
}


lz8_sinh (xyaxis) {
  z=z*pixel*sinh(z*pixel)+pixel 
  |z|<=4 
  ;SOURCE: formtype.frm
}


lz9_sin (xyaxis) {; edited 5/6/96 for Orgform by George Martin
                  ; extra ")" at end of first expression deleted
  z=1/((z*pixel)*sin(z*pixel)) 
  |z|<=4 
  ;SOURCE: formtype.frm
}


lz9_sinh (xyaxis) {; edited 5/6/96 for Orgform by George Martin
                   ; extra ")" at end of first expression deleted
  z=1/((z*pixel)*sinh(z*pixel)) 
  |z|<=4 
  ;SOURCE: formtype.frm
}


LZZSHZ (Xaxis) {; Jm Collard-Richard
                ; Resol : log(z^z)=sinh(z)
  z=pixel:
  sh=sinh(z)
  ch=cosh(z)
  zz=z^z
  z1=log(zz)-sh
  z2=(((log(z)+1)*zz)/(zz))-ch
  z=z-(z1/z2)
  0.001<=|z1|  
  ;SOURCE: jmcr2.frm
}


LZZSZ (Xaxis) {; Jm Collard-Richard  - Use Float=Yes
               ; resol :  log(z^z)=sin(z)
  z=pixel:
  s=sin(z)
  c=cos(z)
  zz=z^z
  z1=log(zz)-s
  z2=(((log(z)+1)*zz)/(zz))-c
  z=z-(z1/z2)
  0.001<=|z1| 
  ;SOURCE: jmcr2.frm
}

