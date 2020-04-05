

O-varesc {; Jim Muth  real(z),imag(c)
  a=sqr(p3), z=real(pixel)+p1
  c=flip(imag(pixel))+p2:
  z=sqr(z)+c
  |z| < a
  ;SOURCE: 99msg.frm
}


O02-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Clifford A. Pickover
        ;
        ; Dynamic (Euler method)
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)sin(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Fx=(x2+4)/(x2*x)
  Fy=(y2+4)/(y2*y)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


O02-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)fn1(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  bailout=p1+4, z=pixel:
  z2=z*z
  z=(z2+4)/(z2*z)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


O02-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Julia)
        ;
        ; {Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)fn1(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  const=p1, z=pixel:
  z2=z*z
  z=const+((z2+4)/(z2*z))
  |z|<100
  ;SOURCE: chby3.frm
}


O02-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Mandelbrot)
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)fn1(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  const=pixel, z=p1:
  z2=z*z
  z=const+((z2+4)/(z2*z))
  |z|<100
  ;SOURCE: chby4.frm
}


O02-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Newton Method
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)sin(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z
  f=((z2+4)/(z2*z))
  fd=((4-z)*z-12)/(z2*z2)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


O02-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Halley Method
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)sin(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=((z2+4)/(z2*z))
  fd=((4-z)*z-12)/z4
  fdd=((24-10*z)*z-96)/(z4*z)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


O02-07 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Bradley Beacham
        ; Cubic Method
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)sin(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z
  f=((z2+4)/(z2*z))
  fd=((4-z)*z-12)/(z2*z2)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=((w2+4)/(w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


O02-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler method)
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)sin(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=sin((x2+4)/(x2*x))
  Ty=sin((y2+4)/(y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


O02-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler Method)
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)fn1(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((x2+4)/(x2*x))
  Ty=fn1((y2+4)/(y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


O02-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Mike Wareman:
        ; Secant Method
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)sin(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=((pp2+4)/(pp2*p1)):
  z2=z*z
  zt=z
  foz=fz
  fz=((z2+4)/(z2*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


O02-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Julia)
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)sin(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  const=p1, z=pixel:
  z2=z*z
  z=const*((z2+4)/(z2*z))
  |z|<100
  ;SOURCE: chby11.frm
}


O02-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Mandelbrot)
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)fn1(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  const=pixel, z=p1:
  z2=z*z
  z=const*((z2+4)/(z2*z))
  |z|<100
  ;SOURCE: chby12.frm
}


O02-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Halley Method with weird bailout test
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)fn1(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=((z2+4)/(z2*z))
  fd=((4-z)*z-12)/z4
  fdd=((24-10*z)*z-96)/(z4*z)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


O02-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Bradley Beacham
        ; Cubic Method with weird bailout test
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)fn1(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z
  f=((z2+4)/(z2*z))
  fd=((4-z)*z-12)/(z2*z2)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=((w2+4)/(w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


O02-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Newton Method with weird bailout test
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)fn1(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z
  f=((z2+4)/(z2*z))
  fd=((4-z)*z-12)/(z2*z2)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


O02-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Mike Wareman:
        ; Secant Method with weird bailout test
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)fn1(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=((pp2+4)/(pp2*p1)):
  z2=z*z
  zt=z
  foz=fz
  fz=((z2+4)/(z2*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


O02-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (Implicit Euler method)
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)fn1(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*((x2+4)/(x2*x))
  x=x-t*((y2+4)/(y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


O02-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler method)
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)fn1(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*sin((x2+4)/(x2*x))
  x=x-t*sin((y2+4)/(y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


O02-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler Method)
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)fn1(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((x2+4)/(x2*x))
  x=x-t*fn1((y2+4)/(y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


O02-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler method)
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)fn1(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((x2+4)/(x2*x))
  Ty=fn2((y2+4)/(y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


O02-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler method)
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)fn1(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((x2+4)/(x2*x))
  Ty=fn2((y2+4)/(y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


O02-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler Method)
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)fn1(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((x2+4)/(x2*x))
  x=x-t*fn2((y2+4)/(y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


O02-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler Method)
        ;
        ; Neumann Polynomials
        ; [0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)fn1(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((x2+4)/(x2*x))
  x=x-t*fn2((y2+4)/(y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


O02-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Kathy Roth:
        ; Dynamic (modified implicit Euler Method, gravitated)
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)fn1(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((x2+4)/(x2*x))
  Ty=fn1((y2+4)/(y2*y))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


O02-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Kathy Roth:
        ; Dynamic (modified implicit Euler Method, popped)
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)fn1(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1((x2+4)/(x2*x))
  Ty=fn1((y2+4)/(y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


O02-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Kathy Roth:
        ; Dynamic (modified implicit Euler Method, popped)
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)fn1(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1((x2+4)/(x2*x))
  Ty=fn1((y2+4)/(y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


O02-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler method, Sylvie Gallet test)
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)fn1(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((x2+4)/(x2*x))
  Ty=fn1((y2+4)/(y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


O02-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Ray Parracho:
        ; Regula-Falsi Method
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)fn1(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=(xx+4)/(xx*x0)
  Fx1=(yy+4)/(yy*x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


O03-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)sin(2*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Fx=(((6-3*x)*x-12)*x+24)/(x2*x2)
  Fy=(((6-3*y)*y-12)*y+24)/(y2*y2)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


O03-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)sin(2*pi/2)^2
  bailout=p1+4, z=pixel:
  z2=z*z
  z=(((6-3*z)*z-12)*z+24)/(z2*z2)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


O03-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)sin(2*pi/2)^2
  const=p1, z=pixel:
  z2=z*z
  z=const+((((6-3*z)*z-12)*z+24)/(z2*z2))
  |z|<100
  ;SOURCE: chby3.frm
}


O03-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)sin(2*pi/2)^2
  const=pixel, z=p1:
  z2=z*z
  z=const+((((6-3*z)*z-12)*z+24)/(z2*z2))
  |z|<100
  ;SOURCE: chby4.frm
}


O03-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)sin(2*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=((((6-3*z)*z-12)*z+24)/z4)
  fd=(((3*z-12)*z+36)*z-96)/(z4*z)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


O03-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)sin(2*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=((((6-3*z)*z-12)*z+24)/z4)
  fd=(((3*z-12)*z+36)*z-96)/(z4*z)
  fdd=(((42*z-156)*z+432)*z-1056)/(z4*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


O03-07 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)sin(2*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=((((6-3*z)*z-12)*z+24)/z4)
  fd=(((3*z-12)*z+36)*z-96)/(z4*z)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=((((6-3*w)*w-12)*w+24)/(w2*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


O03-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)sin(2*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=sin((((6-3*x)*x-12)*x+24)/(x2*x2))
  Ty=sin((((6-3*y)*y-12)*y+24)/(y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


O03-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)fn1(2*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((6-3*x)*x-12)*x+24)/(x2*x2))
  Ty=fn1((((6-3*y)*y-12)*y+24)/(y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


O03-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)sin(2*pi/2)^2
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=((((6-3*p1)*p1-12)*p1+24)/(pp2*pp2)):
  z2=z*z
  zt=z
  foz=fz
  fz=((((6-3*z)*z-12)*z+24)/(z2*z2))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


O03-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)sin(2*pi/2)^2
  const=p1, z=pixel:
  z2=z*z
  z=const*((((6-3*z)*z-12)*z+24)/(z2*z2))
  |z|<100
  ;SOURCE: chby11.frm
}


O03-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)sin(2*pi/2)^2
  const=pixel, z=p1:
  z2=z*z
  z=const*((((6-3*z)*z-12)*z+24)/(z2*z2))
  |z|<100
  ;SOURCE: chby12.frm
}


O03-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)sin(2*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=((((6-3*z)*z-12)*z+24)/z4)
  fd=(((3*z-12)*z+36)*z-96)/(z4*z)
  fdd=(((42*z-156)*z+432)*z-1056)/(z4*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


O03-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)sin(2*pi/2)^2
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=((((6-3*z)*z-12)*z+24)/z4)
  fd=(((3*z-12)*z+36)*z-96)/(z4*z)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=((((6-3*w)*w-12)*w+24)/(w2*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


O03-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)sin(2*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=((((6-3*z)*z-12)*z+24)/z4)
  fd=(((3*z-12)*z+36)*z-96)/(z4*z)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


O03-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)sin(2*pi/2)^2
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=((((6-3*p1)*p1-12)*p1+24)/(pp2*pp2)):
  z2=z*z
  zt=z
  foz=fz
  fz=((((6-3*z)*z-12)*z+24)/(z2*z2))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


O03-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)sin(2*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*((((6-3*x)*x-12)*x+24)/(x2*x2))
  x=x-t*((((6-3*y)*y-12)*y+24)/(y2*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


O03-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)sin(2*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*sin((((6-3*x)*x-12)*x+24)/(x2*x2))
  x=x-t*sin((((6-3*y)*y-12)*y+24)/(y2*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


O03-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)fn1(2*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((((6-3*x)*x-12)*x+24)/(x2*x2))
  x=x-t*fn1((((6-3*y)*y-12)*y+24)/(y2*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


O03-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)fn1(2*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((6-3*x)*x-12)*x+24)/(x2*x2))
  Ty=fn2((((6-3*y)*y-12)*y+24)/(y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


O03-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)fn1(2*pi/2)^2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((6-3*x)*x-12)*x+24)/(x2*x2))
  Ty=fn2((((6-3*y)*y-12)*y+24)/(y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


O03-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)fn1(2*pi/2)^2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((((6-3*x)*x-12)*x+24)/(x2*x2))
  x=x-t*fn2((((6-3*y)*y-12)*y+24)/(y2*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


O03-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)fn1(2*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((((6-3*x)*x-12)*x+24)/(x2*x2))
  x=x-t*fn2((((6-3*y)*y-12)*y+24)/(y2*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


O03-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)fn1(2*pi/2)^2
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((6-3*x)*x-12)*x+24)/(x2*x2))
  Ty=fn1((((6-3*y)*y-12)*y+24)/(y2*y2))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


O03-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)fn1(2*pi/2)^2
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1((((6-3*x)*x-12)*x+24)/(x2*x2))
  Ty=fn1((((6-3*y)*y-12)*y+24)/(y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


O03-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)fn1(2*pi/2)^2
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1((((6-3*x)*x-12)*x+24)/(x2*x2))
  Ty=fn1((((6-3*y)*y-12)*y+24)/(y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


O03-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)fn1(2*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((6-3*x)*x-12)*x+24)/(x2*x2))
  Ty=fn1((((6-3*y)*y-12)*y+24)/(y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


O03-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)sin(2*pi/2)^2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=(((6-3*x0)*x0-12)*x0+24)/(xx*xx)
  Fx1=(((6-3*x1)*x1-12)*x1+24)/(yy*yy)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


O04-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)sin(3*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Fx=((((12*x-36)*x+72)*x-144)*x+192)/(x2*x2*x)
  Fy=((((12*y-36)*y+72)*y-144)*y+192)/(y2*y2*y)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


O04-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)sin(3*pi/2)^2
  bailout=p1+4, z=pixel:
  z2=z*z
  z=((((12*z-36)*z+72)*z-144)*z+192)/(z2*z2*z)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


O04-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)sin(3*pi/2)^2
  const=p1, z=pixel:
  z2=z*z
  z=const+(((((12*z-36)*z+72)*z-144)*z+192)/(z2*z2*z))
  |z|<100
  ;SOURCE: chby3.frm
}


O04-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)sin(3*pi/2)^2
  const=pixel, z=p1:
  z2=z*z
  z=const+(((((12*z-36)*z+72)*z-144)*z+192)/(z2*z2*z))
  |z|<100
  ;SOURCE: chby4.frm
}


O04-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)sin(3*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=(((((12*z-36)*z+72)*z-144)*z+192)/(z4*z))
  fd=((((72-12*z)*z-216)*z+576)*z-960)/(z4*z2)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


O04-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)sin(3*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z6=z4*z2
  f=(((((12*z-36)*z+72)*z-144)*z+192)/(z4*z))
  fd=((((72-12*z)*z-216)*z+576)*z-960)/z6
  fdd=((((1224-216*z)*z-3456)*z+8640)*z-13440)/(z6*z)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


O04-07 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)sin(3*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=(((((12*z-36)*z+72)*z-144)*z+192)/(z4*z))
  fd=((((72-12*z)*z-216)*z+576)*z-960)/(z4*z2)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=(((((12*w-36)*w+72)*w-144)*w+192)/(w2*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


O04-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)sin(3*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=sin(((((12*x-36)*x+72)*x-144)*x+192)/(x2*x2*x))
  Ty=sin(((((12*y-36)*y+72)*y-144)*y+192)/(y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


O04-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)fn1(3*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((12*x-36)*x+72)*x-144)*x+192)/(x2*x2*x))
  Ty=fn1(((((12*y-36)*y+72)*y-144)*y+192)/(y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


O04-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)sin(3*pi/2)^2
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=(((((12*p1-36)*p1+72)*p1-144)*p1+192)/(pp2*pp2*p1)):
  z2=z*z
  zt=z
  foz=fz
  fz=(((((12*z-36)*z+72)*z-144)*z+192)/(z2*z2*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


O04-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)sin(3*pi/2)^2
  const=p1, z=pixel:
  z2=z*z
  z=const*(((((12*z-36)*z+72)*z-144)*z+192)/(z2*z2*z))
  |z|<100
  ;SOURCE: chby11.frm
}


O04-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)sin(3*pi/2)^2
  const=pixel, z=p1:
  z2=z*z
  z=const*(((((12*z-36)*z+72)*z-144)*z+192)/(z2*z2*z))
  |z|<100
  ;SOURCE: chby12.frm
}


O04-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)sin(3*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z6=z4*z2
  f=(((((12*z-36)*z+72)*z-144)*z+192)/(z4*z))
  fd=((((72-12*z)*z-216)*z+576)*z-960)/z6
  fdd=((((1224-216*z)*z-3456)*z+8640)*z-13440)/(z6*z)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


O04-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)sin(3*pi/2)^2
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=(((((12*z-36)*z+72)*z-144)*z+192)/(z4*z))
  fd=((((72-12*z)*z-216)*z+576)*z-960)/(z4*z2)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=(((((12*w-36)*w+72)*w-144)*w+192)/(w2*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


O04-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)sin(3*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=(((((12*z-36)*z+72)*z-144)*z+192)/(z4*z))
  fd=((((72-12*z)*z-216)*z+576)*z-960)/(z4*z2)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


O04-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)sin(3*pi/2)^2
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=(((((12*p1-36)*p1+72)*p1-144)*p1+192)/(pp2*pp2*p1)):
  z2=z*z
  zt=z
  foz=fz
  fz=(((((12*z-36)*z+72)*z-144)*z+192)/(z2*z2*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


O04-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)sin(3*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*(((((12*x-36)*x+72)*x-144)*x+192)/(x2*x2*x))
  x=x-t*(((((12*y-36)*y+72)*y-144)*y+192)/(y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


O04-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)sin(3*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*sin(((((12*x-36)*x+72)*x-144)*x+192)/(x2*x2*x))
  x=x-t*sin(((((12*y-36)*y+72)*y-144)*y+192)/(y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


O04-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)fn1(3*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((12*x-36)*x+72)*x-144)*x+192)/(x2*x2*x))
  x=x-t*fn1(((((12*y-36)*y+72)*y-144)*y+192)/(y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


O04-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)fn1(3*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((12*x-36)*x+72)*x-144)*x+192)/(x2*x2*x))
  Ty=fn2(((((12*y-36)*y+72)*y-144)*y+192)/(y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


O04-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)fn1(3*pi/2)^2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((12*x-36)*x+72)*x-144)*x+192)/(x2*x2*x))
  Ty=fn2(((((12*y-36)*y+72)*y-144)*y+192)/(y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


O04-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)fn1(3*pi/2)^2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((12*x-36)*x+72)*x-144)*x+192)/(x2*x2*x))
  x=x-t*fn2(((((12*y-36)*y+72)*y-144)*y+192)/(y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


O04-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)fn1(3*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((12*x-36)*x+72)*x-144)*x+192)/(x2*x2*x))
  x=x-t*fn2(((((12*y-36)*y+72)*y-144)*y+192)/(y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


O04-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)fn1(3*pi/2)^2
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((12*x-36)*x+72)*x-144)*x+192)/(x2*x2*x))
  Ty=fn1(((((12*y-36)*y+72)*y-144)*y+192)/(y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


O04-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)fn1(3*pi/2)^2
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1(((((12*x-36)*x+72)*x-144)*x+192)/(x2*x2*x))
  Ty=fn1(((((12*y-36)*y+72)*y-144)*y+192)/(y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


O04-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)fn1(3*pi/2)^2
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1(((((12*x-36)*x+72)*x-144)*x+192)/(x2*x2*x))
  Ty=fn1(((((12*y-36)*y+72)*y-144)*y+192)/(y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


O04-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)fn1(3*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((12*x-36)*x+72)*x-144)*x+192)/(x2*x2*x))
  Ty=fn1(((((12*y-36)*y+72)*y-144)*y+192)/(y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


O04-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)sin(3*pi/2)^2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=((((12*x0-36)*x0+72)*x0-144)*x0+192)/(xx*xx*x0)
  Fx1=((((12*x1-36)*x1+72)*x1-144)*x1+192)/(yy*yy*x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


O05-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)sin(4*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Fx=(((((180-20*x)*x-480)*x+960)*x-1760)*x+1920)/(x2*x2*x2)
  Fy=(((((180-20*y)*y-480)*y+960)*y-1760)*y+1920)/(y2*y2*y2)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


O05-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)sin(4*pi/2)^2
  bailout=p1+4, z=pixel:
  z2=z*z
  z=(((((180-20*z)*z-480)*z+960)*z-1760)*z+1920)/(z2*z2*z2)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


O05-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)sin(4*pi/2)^2
  const=p1, z=pixel:
  z2=z*z
  z=const+((((((180-20*z)*z-480)*z+960)*z-1760)*z+1920)/(z2*z2*z2))
  |z|<100
  ;SOURCE: chby3.frm
}


O05-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)sin(4*pi/2)^2
  const=pixel, z=p1:
  z2=z*z
  z=const+((((((180-20*z)*z-480)*z+960)*z-1760)*z+1920)/(z2*z2*z2))
  |z|<100
  ;SOURCE: chby4.frm
}


O05-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)sin(4*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z6=z2*z2*z2
  f=((((((180-20*z)*z-480)*z+960)*z-1760)*z+1920)/z6)
  fd=(((((20*z-360)*z+1440)*z-3840)*z+8800)*z-11520)/(z6*z)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


O05-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)sin(4*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z6=z2*z2*z2
  f=((((((180-20*z)*z-480)*z+960)*z-1760)*z+1920)/z6)
  fd=(((((20*z-360)*z+1440)*z-3840)*z+8800)*z-11520)/(z6*z)
  fdd=(((((440*z-7560)*z+28800)*z-72960)*z+158400)*z-195840)/(z6*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


O05-07 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)sin(4*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z6=z2*z2*z2
  f=((((((180-20*z)*z-480)*z+960)*z-1760)*z+1920)/z6)
  fd=(((((20*z-360)*z+1440)*z-3840)*z+8800)*z-11520)/(z6*z)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=((((((180-20*w)*w-480)*w+960)*w-1760)*w+1920)/(w2*w2*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


O05-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)sin(4*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=sin((((((180-20*x)*x-480)*x+960)*x-1760)*x+1920)/(x2*x2*x2))
  Ty=sin((((((180-20*y)*y-480)*y+960)*y-1760)*y+1920)/(y2*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


O05-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)fn1(4*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((((180-20*x)*x-480)*x+960)*x-1760)*x+1920)/(x2*x2*x2))
  Ty=fn1((((((180-20*y)*y-480)*y+960)*y-1760)*y+1920)/(y2*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


O05-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)sin(4*pi/2)^2
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=((((((180-20*p1)*p1-480)*p1+960)*p1-1760)*p1+1920)/(pp2*pp2*pp2)):
  z2=z*z
  zt=z
  foz=fz
  fz=((((((180-20*z)*z-480)*z+960)*z-1760)*z+1920)/(z2*z2*z2))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


O05-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)sin(4*pi/2)^2
  const=p1, z=pixel:
  z2=z*z
  z=const*((((((180-20*z)*z-480)*z+960)*z-1760)*z+1920)/(z2*z2*z2))
  |z|<100
  ;SOURCE: chby11.frm
}


O05-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)sin(4*pi/2)^2
  const=pixel, z=p1:
  z2=z*z
  z=const*((((((180-20*z)*z-480)*z+960)*z-1760)*z+1920)/(z2*z2*z2))
  |z|<100
  ;SOURCE: chby12.frm
}


O05-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)sin(4*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z6=z2*z2*z2
  f=((((((180-20*z)*z-480)*z+960)*z-1760)*z+1920)/z6)
  fd=(((((20*z-360)*z+1440)*z-3840)*z+8800)*z-11520)/(z6*z)
  fdd=(((((440*z-7560)*z+28800)*z-72960)*z+158400)*z-195840)/(z6*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


O05-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)sin(4*pi/2)^2
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z6=z2*z2*z2
  f=((((((180-20*z)*z-480)*z+960)*z-1760)*z+1920)/z6)
  fd=(((((20*z-360)*z+1440)*z-3840)*z+8800)*z-11520)/(z6*z)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=((((((180-20*w)*w-480)*w+960)*w-1760)*w+1920)/(w2*w2*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


O05-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)sin(4*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z6=z2*z2*z2
  f=((((((180-20*z)*z-480)*z+960)*z-1760)*z+1920)/z6)
  fd=(((((20*z-360)*z+1440)*z-3840)*z+8800)*z-11520)/(z6*z)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


O05-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)sin(4*pi/2)^2
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=((((((180-20*p1)*p1-480)*p1+960)*p1-1760)*p1+1920)/(pp2*pp2*pp2)):
  z2=z*z
  zt=z
  foz=fz
  fz=((((((180-20*z)*z-480)*z+960)*z-1760)*z+1920)/(z2*z2*z2))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


O05-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)sin(4*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*((((((180-20*x)*x-480)*x+960)*x-1760)*x+1920)/(x2*x2*x2))
  x=x-t*((((((180-20*y)*y-480)*y+960)*y-1760)*y+1920)/(y2*y2*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


O05-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)sin(4*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*sin((((((180-20*x)*x-480)*x+960)*x-1760)*x+1920)/(x2*x2*x2))
  x=x-t*sin((((((180-20*y)*y-480)*y+960)*y-1760)*y+1920)/(y2*y2*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


O05-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)fn1(4*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((((((180-20*x)*x-480)*x+960)*x-1760)*x+1920)/(x2*x2*x2))
  x=x-t*fn1((((((180-20*y)*y-480)*y+960)*y-1760)*y+1920)/(y2*y2*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


O05-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)fn1(4*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((((180-20*x)*x-480)*x+960)*x-1760)*x+1920)/(x2*x2*x2))
  Ty=fn2((((((180-20*y)*y-480)*y+960)*y-1760)*y+1920)/(y2*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


O05-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)fn1(4*pi/2)^2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((((180-20*x)*x-480)*x+960)*x-1760)*x+1920)/(x2*x2*x2))
  Ty=fn2((((((180-20*y)*y-480)*y+960)*y-1760)*y+1920)/(y2*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


O05-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)fn1(4*pi/2)^2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((((((180-20*x)*x-480)*x+960)*x-1760)*x+1920)/(x2*x2*x2))
  x=x-t*fn2((((((180-20*y)*y-480)*y+960)*y-1760)*y+1920)/(y2*y2*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


O05-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)fn1(4*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((((((180-20*x)*x-480)*x+960)*x-1760)*x+1920)/(x2*x2*x2))
  x=x-t*fn2((((((180-20*y)*y-480)*y+960)*y-1760)*y+1920)/(y2*y2*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


O05-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)fn1(4*pi/2)^2
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((((180-20*x)*x-480)*x+960)*x-1760)*x+1920)/(x2*x2*x2))
  Ty=fn1((((((180-20*y)*y-480)*y+960)*y-1760)*y+1920)/(y2*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


O05-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)fn1(4*pi/2)^2
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1((((((180-20*x)*x-480)*x+960)*x-1760)*x+1920)/(x2*x2*x2))
  Ty=fn1((((((180-20*y)*y-480)*y+960)*y-1760)*y+1920)/(y2*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


O05-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)fn1(4*pi/2)^2
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1((((((180-20*x)*x-480)*x+960)*x-1760)*x+1920)/(x2*x2*x2))
  Ty=fn1((((((180-20*y)*y-480)*y+960)*y-1760)*y+1920)/(y2*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


O05-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)fn1(4*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1((((((180-20*x)*x-480)*x+960)*x-1760)*x+1920)/(x2*x2*x2))
  Ty=fn1((((((180-20*y)*y-480)*y+960)*y-1760)*y+1920)/(y2*y2*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


O05-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)sin(4*pi/2)^2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=(((((180-20*x0)*x0-480)*x0+960)*x0-1760)*x0+1920)/(xx*xx*xx)
  Fx1=(((((180-20*x1)*x1-480)*x1+960)*x1-1760)*x1+1920)/(yy*yy*yy)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


O06-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)sin(5*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Fx=((((((40*x-510)*x+2880)*x-7200)*x+14160)*x-24000)*x+23040)/(x2*x2*x2*x)
  Fy=((((((40*y-510)*y+2880)*y-7200)*y+14160)*y-24000)*y+23040)/(y2*y2*y2*y)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


O06-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)sin(5*pi/2)^2
  bailout=p1+4, z=pixel:
  z2=z*z
  z=((((((40*z-510)*z+2880)*z-7200)*z+14160)*z-24000)*z+23040)/(z2*z2*z2*z)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


O06-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)sin(5*pi/2)^2
  const=p1, z=pixel:
  z2=z*z
  z=const+(((((((40*z-510)*z+2880)*z-7200)*z+14160)*z-24000)*z+23040)/(z2*z2*z2*z))
  |z|<100
  ;SOURCE: chby3.frm
}


O06-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)sin(5*pi/2)^2
  const=pixel, z=p1:
  z2=z*z
  z=const+(((((((40*z-510)*z+2880)*z-7200)*z+14160)*z-24000)*z+23040)/(z2*z2*z2*z))
  |z|<100
  ;SOURCE: chby4.frm
}


O06-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)sin(5*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z6=z2*z2*z2
  f=(((((((40*z-510)*z+2880)*z-7200)*z+14160)*z-24000)*z+23040)/(z6*z))
  fd=((((((1020-40*z)*z-8640)*z+28800)*z-70800)*z+144000)*z-161280)/(z6*z2)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


O06-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)sin(5*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z6=z2*z2*z2, z7=z6*z
  f=(((((((40*z-510)*z+2880)*z-7200)*z+14160)*z-24000)*z+23040)/z7)
  fd=((((((1020-40*z)*z-8640)*z+28800)*z-70800)*z+144000)*z-161280)/(z6*z2)
  fdd=((((((25500-1040*z)*z-207360)*z+662400)*z-1557600)*z+3024000)*z-3225600)/(z7*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


O06-07 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)sin(5*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z6=z2*z2*z2
  f=(((((((40*z-510)*z+2880)*z-7200)*z+14160)*z-24000)*z+23040)/(z6*z))
  fd=((((((1020-40*z)*z-8640)*z+28800)*z-70800)*z+144000)*z-161280)/(z6*z2)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=(((((((40*w-510)*w+2880)*w-7200)*w+14160)*w-24000)*w+23040)/(w2*w2*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


O06-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)sin(5*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=sin(((((((40*x-510)*x+2880)*x-7200)*x+14160)*x-24000)*x+23040)/(x2*x2*x2*x))
  Ty=sin(((((((40*y-510)*y+2880)*y-7200)*y+14160)*y-24000)*y+23040)/(y2*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


O06-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)fn1(5*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((((40*x-510)*x+2880)*x-7200)*x+14160)*x-24000)*x+23040)/(x2*x2*x2*x))
  Ty=fn1(((((((40*y-510)*y+2880)*y-7200)*y+14160)*y-24000)*y+23040)/(y2*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


O06-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)sin(5*pi/2)^2
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=(((((((40*p1-510)*p1+2880)*p1-7200)*p1+14160)*p1-24000)*p1+23040)/(pp2*pp2*pp2*p1)):
  z2=z*z
  zt=z
  foz=fz
  fz=(((((((40*z-510)*z+2880)*z-7200)*z+14160)*z-24000)*z+23040)/(z2*z2*z2*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


O06-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)sin(5*pi/2)^2
  const=p1, z=pixel:
  z2=z*z
  z=const*(((((((40*z-510)*z+2880)*z-7200)*z+14160)*z-24000)*z+23040)/(z2*z2*z2*z))
  |z|<100
  ;SOURCE: chby11.frm
}


O06-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)sin(5*pi/2)^2
  const=pixel, z=p1:
  z2=z*z
  z=const*(((((((40*z-510)*z+2880)*z-7200)*z+14160)*z-24000)*z+23040)/(z2*z2*z2*z))
  |z|<100
  ;SOURCE: chby12.frm
}


O06-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)sin(5*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z6=z2*z2*z2, z7=z6*z
  f=(((((((40*z-510)*z+2880)*z-7200)*z+14160)*z-24000)*z+23040)/z7)
  fd=((((((1020-40*z)*z-8640)*z+28800)*z-70800)*z+144000)*z-161280)/(z6*z2)
  fdd=((((((25500-1040*z)*z-207360)*z+662400)*z-1557600)*z+3024000)*z-3225600)/(z7*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


O06-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)sin(5*pi/2)^2
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z6=z2*z2*z2
  f=(((((((40*z-510)*z+2880)*z-7200)*z+14160)*z-24000)*z+23040)/(z6*z))
  fd=((((((1020-40*z)*z-8640)*z+28800)*z-70800)*z+144000)*z-161280)/(z6*z2)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=(((((((40*w-510)*w+2880)*w-7200)*w+14160)*w-24000)*w+23040)/(w2*w2*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


O06-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)sin(5*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z6=z2*z2*z2
  f=(((((((40*z-510)*z+2880)*z-7200)*z+14160)*z-24000)*z+23040)/(z6*z))
  fd=((((((1020-40*z)*z-8640)*z+28800)*z-70800)*z+144000)*z-161280)/(z6*z2)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


O06-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)sin(5*pi/2)^2
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=(((((((40*p1-510)*p1+2880)*p1-7200)*p1+14160)*p1-24000)*p1+23040)/(pp2*pp2*pp2*p1)):
  z2=z*z
  zt=z
  foz=fz
  fz=(((((((40*z-510)*z+2880)*z-7200)*z+14160)*z-24000)*z+23040)/(z2*z2*z2*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


O06-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)sin(5*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*(((((((40*x-510)*x+2880)*x-7200)*x+14160)*x-24000)*x+23040)/(x2*x2*x2*x))
  x=x-t*(((((((40*y-510)*y+2880)*y-7200)*y+14160)*y-24000)*y+23040)/(y2*y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


O06-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)sin(5*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*sin(((((((40*x-510)*x+2880)*x-7200)*x+14160)*x-24000)*x+23040)/(x2*x2*x2*x))
  x=x-t*sin(((((((40*y-510)*y+2880)*y-7200)*y+14160)*y-24000)*y+23040)/(y2*y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


O06-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)fn1(5*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((((40*x-510)*x+2880)*x-7200)*x+14160)*x-24000)*x+23040)/(x2*x2*x2*x))
  x=x-t*fn1(((((((40*y-510)*y+2880)*y-7200)*y+14160)*y-24000)*y+23040)/(y2*y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


O06-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)fn1(5*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((((40*x-510)*x+2880)*x-7200)*x+14160)*x-24000)*x+23040)/(x2*x2*x2*x))
  Ty=fn2(((((((40*y-510)*y+2880)*y-7200)*y+14160)*y-24000)*y+23040)/(y2*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


O06-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)fn1(5*pi/2)^2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((((40*x-510)*x+2880)*x-7200)*x+14160)*x-24000)*x+23040)/(x2*x2*x2*x))
  Ty=fn2(((((((40*y-510)*y+2880)*y-7200)*y+14160)*y-24000)*y+23040)/(y2*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


O06-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)fn1(5*pi/2)^2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((((40*x-510)*x+2880)*x-7200)*x+14160)*x-24000)*x+23040)/(x2*x2*x2*x))
  x=x-t*fn2(((((((40*y-510)*y+2880)*y-7200)*y+14160)*y-24000)*y+23040)/(y2*y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


O06-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)fn1(5*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((((40*x-510)*x+2880)*x-7200)*x+14160)*x-24000)*x+23040)/(x2*x2*x2*x))
  x=x-t*fn2(((((((40*y-510)*y+2880)*y-7200)*y+14160)*y-24000)*y+23040)/(y2*y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


O06-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)fn1(5*pi/2)^2
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((((40*x-510)*x+2880)*x-7200)*x+14160)*x-24000)*x+23040)/(x2*x2*x2*x))
  Ty=fn1(((((((40*y-510)*y+2880)*y-7200)*y+14160)*y-24000)*y+23040)/(y2*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


O06-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)fn1(5*pi/2)^2
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1(((((((40*x-510)*x+2880)*x-7200)*x+14160)*x-24000)*x+23040)/(x2*x2*x2*x))
  Ty=fn1(((((((40*y-510)*y+2880)*y-7200)*y+14160)*y-24000)*y+23040)/(y2*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


O06-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)fn1(5*pi/2)^2
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y
  Tx=fn1(((((((40*x-510)*x+2880)*x-7200)*x+14160)*x-24000)*x+23040)/(x2*x2*x2*x))
  Ty=fn1(((((((40*y-510)*y+2880)*y-7200)*y+14160)*y-24000)*y+23040)/(y2*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


O06-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)fn1(5*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  Tx=fn1(((((((40*x-510)*x+2880)*x-7200)*x+14160)*x-24000)*x+23040)/(x2*x2*x2*x))
  Ty=fn1(((((((40*y-510)*y+2880)*y-7200)*y+14160)*y-24000)*y+23040)/(y2*y2*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


O06-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)sin(5*pi/2)^2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=((((((40*x0-510)*x0+2880)*x0-7200)*x0+14160)*x0-24000)*x0+23040)/(xx*xx*xx*x0)
  Fx1=((((((40*x1-510)*x1+2880)*x1-7200)*x1+14160)*x1-24000)*x1+23040)/(yy*yy*yy*x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


O07-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)sin(6*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Fx=(((((((1274-56*x)*x-11172)*x+50400)*x-120624)*x+231840)*x-368256)*x+322560)/(x4*x4)
  Fy=(((((((1274-56*y)*y-11172)*y+50400)*y-120624)*y+231840)*y-368256)*y+322560)/(y4*y4)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


O07-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)sin(6*pi/2)^2
  bailout=p1+4, z=pixel:
  z2=z*z, z4=z2*z2
  z=(((((((1274-56*z)*z-11172)*z+50400)*z-120624)*z+231840)*z-368256)*z+322560)/(z4*z4)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


O07-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)sin(6*pi/2)^2
  const=p1, z=pixel:
  z2=z*z, z4=z2*z2
  z=const+((((((((1274-56*z)*z-11172)*z+50400)*z-120624)*z+231840)*z-368256)*z+322560)/(z4*z4))
  |z|<100
  ;SOURCE: chby3.frm
}


O07-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)sin(6*pi/2)^2
  const=pixel, z=p1:
  z2=z*z, z4=z2*z2
  z=const+((((((((1274-56*z)*z-11172)*z+50400)*z-120624)*z+231840)*z-368256)*z+322560)/(z4*z4))
  |z|<100
  ;SOURCE: chby4.frm
}


O07-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)sin(6*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=((((((((1274-56*z)*z-11172)*z+50400)*z-120624)*z+231840)*z-368256)*z+322560)/z8)
  fd=(((((((56*z-2548)*z+33516)*z-201600)*z+603120)*z-1391040)*z+2577792)*z-2580480)/(z8*z)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


O07-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)sin(6*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=((((((((1274-56*z)*z-11172)*z+50400)*z-120624)*z+231840)*z-368256)*z+322560)/z8)
  fd=(((((((56*z-2548)*z+33516)*z-201600)*z+603120)*z-1391040)*z+2577792)*z-2580480)/(z8*z)
  fdd=(((((((1680*z-73892)*z+938448)*z-5443200)*z+15681120)*z-34776000)*z+61867008)*z-59351040)/(z8*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


O07-07 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)sin(6*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=((((((((1274-56*z)*z-11172)*z+50400)*z-120624)*z+231840)*z-368256)*z+322560)/z8)
  fd=(((((((56*z-2548)*z+33516)*z-201600)*z+603120)*z-1391040)*z+2577792)*z-2580480)/(z8*z)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  fw=((((((((1274-56*w)*w-11172)*w+50400)*w-120624)*w+231840)*w-368256)*w+322560)/(w4*w4))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


O07-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)sin(6*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=sin((((((((1274-56*x)*x-11172)*x+50400)*x-120624)*x+231840)*x-368256)*x+322560)/(x4*x4))
  Ty=sin((((((((1274-56*y)*y-11172)*y+50400)*y-120624)*y+231840)*y-368256)*y+322560)/(y4*y4))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


O07-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)fn1(6*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1((((((((1274-56*x)*x-11172)*x+50400)*x-120624)*x+231840)*x-368256)*x+322560)/(x4*x4))
  Ty=fn1((((((((1274-56*y)*y-11172)*y+50400)*y-120624)*y+231840)*y-368256)*y+322560)/(y4*y4))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


O07-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)sin(6*pi/2)^2
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1, pp4=pp2*pp2
  fz=((((((((1274-56*p1)*p1-11172)*p1+50400)*p1-120624)*p1+231840)*p1-368256)*p1+322560)/(pp4*pp4)):
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=((((((((1274-56*z)*z-11172)*z+50400)*z-120624)*z+231840)*z-368256)*z+322560)/(z4*z4))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


O07-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)sin(6*pi/2)^2
  const=p1, z=pixel:
  z2=z*z, z4=z2*z2
  z=const*((((((((1274-56*z)*z-11172)*z+50400)*z-120624)*z+231840)*z-368256)*z+322560)/(z4*z4))
  |z|<100
  ;SOURCE: chby11.frm
}


O07-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)sin(6*pi/2)^2
  const=pixel, z=p1:
  z2=z*z, z4=z2*z2
  z=const*((((((((1274-56*z)*z-11172)*z+50400)*z-120624)*z+231840)*z-368256)*z+322560)/(z4*z4))
  |z|<100
  ;SOURCE: chby12.frm
}


O07-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)sin(6*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=((((((((1274-56*z)*z-11172)*z+50400)*z-120624)*z+231840)*z-368256)*z+322560)/z8)
  fd=(((((((56*z-2548)*z+33516)*z-201600)*z+603120)*z-1391040)*z+2577792)*z-2580480)/(z8*z)
  fdd=(((((((1680*z-73892)*z+938448)*z-5443200)*z+15681120)*z-34776000)*z+61867008)*z-59351040)/(z8*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


O07-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)sin(6*pi/2)^2
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=((((((((1274-56*z)*z-11172)*z+50400)*z-120624)*z+231840)*z-368256)*z+322560)/z8)
  fd=(((((((56*z-2548)*z+33516)*z-201600)*z+603120)*z-1391040)*z+2577792)*z-2580480)/(z8*z)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  fw=((((((((1274-56*w)*w-11172)*w+50400)*w-120624)*w+231840)*w-368256)*w+322560)/(w4*w4))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


O07-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)sin(6*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=((((((((1274-56*z)*z-11172)*z+50400)*z-120624)*z+231840)*z-368256)*z+322560)/z8)
  fd=(((((((56*z-2548)*z+33516)*z-201600)*z+603120)*z-1391040)*z+2577792)*z-2580480)/(z8*z)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


O07-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)sin(6*pi/2)^2
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1, pp4=pp2*pp2
  fz=((((((((1274-56*p1)*p1-11172)*p1+50400)*p1-120624)*p1+231840)*p1-368256)*p1+322560)/(pp4*pp4)):
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=((((((((1274-56*z)*z-11172)*z+50400)*z-120624)*z+231840)*z-368256)*z+322560)/(z4*z4))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


O07-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)sin(6*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*((((((((1274-56*x)*x-11172)*x+50400)*x-120624)*x+231840)*x-368256)*x+322560)/(x4*x4))
  x=x-t*((((((((1274-56*y)*y-11172)*y+50400)*y-120624)*y+231840)*y-368256)*y+322560)/(y4*y4))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


O07-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)sin(6*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*sin((((((((1274-56*x)*x-11172)*x+50400)*x-120624)*x+231840)*x-368256)*x+322560)/(x4*x4))
  x=x-t*sin((((((((1274-56*y)*y-11172)*y+50400)*y-120624)*y+231840)*y-368256)*y+322560)/(y4*y4))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


O07-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)fn1(6*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1((((((((1274-56*x)*x-11172)*x+50400)*x-120624)*x+231840)*x-368256)*x+322560)/(x4*x4))
  x=x-t*fn1((((((((1274-56*y)*y-11172)*y+50400)*y-120624)*y+231840)*y-368256)*y+322560)/(y4*y4))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


O07-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)fn1(6*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1((((((((1274-56*x)*x-11172)*x+50400)*x-120624)*x+231840)*x-368256)*x+322560)/(x4*x4))
  Ty=fn2((((((((1274-56*y)*y-11172)*y+50400)*y-120624)*y+231840)*y-368256)*y+322560)/(y4*y4))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


O07-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)fn1(6*pi/2)^2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1((((((((1274-56*x)*x-11172)*x+50400)*x-120624)*x+231840)*x-368256)*x+322560)/(x4*x4))
  Ty=fn2((((((((1274-56*y)*y-11172)*y+50400)*y-120624)*y+231840)*y-368256)*y+322560)/(y4*y4))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


O07-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)fn1(6*pi/2)^2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1((((((((1274-56*x)*x-11172)*x+50400)*x-120624)*x+231840)*x-368256)*x+322560)/(x4*x4))
  x=x-t*fn2((((((((1274-56*y)*y-11172)*y+50400)*y-120624)*y+231840)*y-368256)*y+322560)/(y4*y4))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


O07-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)fn1(6*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1((((((((1274-56*x)*x-11172)*x+50400)*x-120624)*x+231840)*x-368256)*x+322560)/(x4*x4))
  x=x-t*fn2((((((((1274-56*y)*y-11172)*y+50400)*y-120624)*y+231840)*y-368256)*y+322560)/(y4*y4))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


O07-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)fn1(6*pi/2)^2
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1((((((((1274-56*x)*x-11172)*x+50400)*x-120624)*x+231840)*x-368256)*x+322560)/(x4*x4))
  Ty=fn1((((((((1274-56*y)*y-11172)*y+50400)*y-120624)*y+231840)*y-368256)*y+322560)/(y4*y4))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


O07-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)fn1(6*pi/2)^2
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1((((((((1274-56*x)*x-11172)*x+50400)*x-120624)*x+231840)*x-368256)*x+322560)/(x4*x4))
  Ty=fn1((((((((1274-56*y)*y-11172)*y+50400)*y-120624)*y+231840)*y-368256)*y+322560)/(y4*y4))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


O07-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)fn1(6*pi/2)^2
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1((((((((1274-56*x)*x-11172)*x+50400)*x-120624)*x+231840)*x-368256)*x+322560)/(x4*x4))
  Ty=fn1((((((((1274-56*y)*y-11172)*y+50400)*y-120624)*y+231840)*y-368256)*y+322560)/(y4*y4))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


O07-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)fn1(6*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1((((((((1274-56*x)*x-11172)*x+50400)*x-120624)*x+231840)*x-368256)*x+322560)/(x4*x4))
  Ty=fn1((((((((1274-56*y)*y-11172)*y+50400)*y-120624)*y+231840)*y-368256)*y+322560)/(y4*y4))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


O07-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)sin(6*pi/2)^2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1, x4=xx*xx, y4=yy*yy
  Fx0=(((((((1274-56*x0)*x0-11172)*x0+50400)*x0-120624)*x0+231840)*x0-368256)*x0+322560)/(x4*x4)
  Fx1=(((((((1274-56*x1)*x1-11172)*x1+50400)*x1-120624)*x1+231840)*x1-368256)*x1+322560)/(y4*y4)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


O08-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)sin(7*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Fx=((((((((266/3*x-7784/3)*x+35280)*x-245952)*x+967232)*x-2239104)*x+4200448)*x-6322176)*x+5160960)/(x4*x4*x)
  Fy=((((((((266/3*y-7784/3)*y+35280)*y-245952)*y+967232)*y-2239104)*y+4200448)*y-6322176)*y+5160960)/(y4*y4*y)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


O08-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)sin(7*pi/2)^2
  bailout=p1+4, z=pixel:
  z2=z*z, z4=z2*z2
  z=((((((((266/3*z-7784/3)*z+35280)*z-245952)*z+967232)*z-2239104)*z+4200448)*z-6322176)*z+5160960)/(z4*z4*z)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


O08-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)sin(7*pi/2)^2
  const=p1, z=pixel:
  z2=z*z, z4=z2*z2
  z=const+(((((((((266/3*z-7784/3)*z+35280)*z-245952)*z+967232)*z-2239104)*z+4200448)*z-6322176)*z+5160960)/(z4*z4*z))
  |z|<100
  ;SOURCE: chby3.frm
}


O08-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)sin(7*pi/2)^2
  const=pixel, z=p1:
  z2=z*z, z4=z2*z2
  z=const+(((((((((266/3*z-7784/3)*z+35280)*z-245952)*z+967232)*z-2239104)*z+4200448)*z-6322176)*z+5160960)/(z4*z4*z))
  |z|<100
  ;SOURCE: chby4.frm
}


O08-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)sin(7*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=(((((((((266/3*z-7784/3)*z+35280)*z-245952)*z+967232)*z-2239104)*z+4200448)*z-6322176)*z+5160960)/(z8*z))
  fd=((((((((15568-266*z)*z/3-105840)*z+983808)*z-4836160)*z+13434624)*z-29403136)*z+50577408)*z-46448640)/(z8*z2)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


O08-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)sin(7*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4, z10=z8*z2
  f=(((((((((266/3*z-7784/3)*z+35280)*z-245952)*z+967232)*z-2239104)*z+4200448)*z-6322176)*z+5160960)/(z8*z))
  fd=((((((((15568-266*z)*z/3-105840)*z+983808)*z-4836160)*z+13434624)*z-29403136)*z+50577408)*z-46448640)/z10
  fdd=((((((((171248-9044/3*z)*z-3386880)*z+30498048)*z-145084800)*z+389604096)*z-823287808)*z+1365590016)*z-1207664640)/(z10*z)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


O08-07 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)sin(7*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=(((((((((266*z-7784)*z/3+35280)*z-245952)*z+967232)*z-2239104)*z+4200448)*z-6322176)*z+5160960)/(z8*z))
  fd=((((((((15568-266*z)*z/3-105840)*z+983808)*z-4836160)*z+13434624)*z-29403136)*z+50577408)*z-46448640)/(z8*z2)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  fw=(((((((((266*w-7784)*w/3+35280)*w-245952)*w+967232)*w-2239104)*w+4200448)*w-6322176)*w+5160960)/(w4*w4*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


O08-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)sin(7*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=sin(((((((((266/3*x-7784/3)*x+35280)*x-245952)*x+967232)*x-2239104)*x+4200448)*x-6322176)*x+5160960)/(x4*x4*x))
  Ty=sin(((((((((266/3*y-7784/3)*y+35280)*y-245952)*y+967232)*y-2239104)*y+4200448)*y-6322176)*y+5160960)/(y4*y4*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


O08-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)fn1(7*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((266/3*x-7784/3)*x+35280)*x-245952)*x+967232)*x-2239104)*x+4200448)*x-6322176)*x+5160960)/(x4*x4*x))
  Ty=fn1(((((((((266/3*y-7784/3)*y+35280)*y-245952)*y+967232)*y-2239104)*y+4200448)*y-6322176)*y+5160960)/(y4*y4*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


O08-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)sin(7*pi/2)^2
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1, pp4=p2*p2
  fz=(((((((((266*p1-7784)*p1/3+35280)*p1-245952)*p1+967232)*p1-2239104)*p1+4200448)*p1-6322176)*p1+5160960)/(pp4*pp4*p1)):
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=(((((((((266*z-7784)*z/3+35280)*z-245952)*z+967232)*z-2239104)*z+4200448)*z-6322176)*z+5160960)/(z4*z4*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


O08-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)sin(7*pi/2)^2
  const=p1, z=pixel:
  z2=z*z, z4=z2*z2
  z=const*(((((((((266/3*z-7784/3)*z+35280)*z-245952)*z+967232)*z-2239104)*z+4200448)*z-6322176)*z+5160960)/(z4*z4*z))
  |z|<100
  ;SOURCE: chby11.frm
}


O08-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)sin(7*pi/2)^2
  const=pixel, z=p1:
  z2=z*z, z4=z2*z2
  z=const*(((((((((266/3*z-7784/3)*z+35280)*z-245952)*z+967232)*z-2239104)*z+4200448)*z-6322176)*z+5160960)/(z4*z4*z))
  |z|<100
  ;SOURCE: chby12.frm
}


O08-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)sin(7*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4, z10=z8*z2
  f=(((((((((266/3*z-7784/3)*z+35280)*z-245952)*z+967232)*z-2239104)*z+4200448)*z-6322176)*z+5160960)/(z8*z))
  fd=((((((((15568-266*z)*z/3-105840)*z+983808)*z-4836160)*z+13434624)*z-29403136)*z+50577408)*z-46448640)/z10
  fdd=((((((((171248-9044/3*z)*z-3386880)*z+30498048)*z-145084800)*z+389604096)*z-823287808)*z+1365590016)*z-1207664640)/(z10*z)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


O08-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)sin(7*pi/2)^2
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=(((((((((266*z-7784)*z/3+35280)*z-245952)*z+967232)*z-2239104)*z+4200448)*z-6322176)*z+5160960)/(z8*z))
  fd=((((((((15568-266*z)*z/3-105840)*z+983808)*z-4836160)*z+13434624)*z-29403136)*z+50577408)*z-46448640)/(z8*z2)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  fw=(((((((((266*w-7784)*w/3+35280)*w-245952)*w+967232)*w-2239104)*w+4200448)*w-6322176)*w+5160960)/(w4*w4*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


O08-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)sin(7*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=(((((((((266/3*z-7784/3)*z+35280)*z-245952)*z+967232)*z-2239104)*z+4200448)*z-6322176)*z+5160960)/(z8*z))
  fd=((((((((15568-266*z)*z/3-105840)*z+983808)*z-4836160)*z+13434624)*z-29403136)*z+50577408)*z-46448640)/(z8*z2)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


O08-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)sin(7*pi/2)^2
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1, pp4=p2*p2
  fz=(((((((((266*p1-7784)*p1/3+35280)*p1-245952)*p1+967232)*p1-2239104)*p1+4200448)*p1-6322176)*p1+5160960)/(pp4*pp4*p1)):
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=(((((((((266*z-7784)*z/3+35280)*z-245952)*z+967232)*z-2239104)*z+4200448)*z-6322176)*z+5160960)/(z4*z4*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


O08-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)sin(7*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*(((((((((266/3*x-7784/3)*x+35280)*x-245952)*x+967232)*x-2239104)*x+4200448)*x-6322176)*x+5160960)/(x4*x4*x))
  x=x-t*(((((((((266/3*y-7784/3)*y+35280)*y-245952)*y+967232)*y-2239104)*y+4200448)*y-6322176)*y+5160960)/(y4*y4*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


O08-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)sin(7*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*sin(((((((((266/3*x-7784/3)*x+35280)*x-245952)*x+967232)*x-2239104)*x+4200448)*x-6322176)*x+5160960)/(x4*x4*x))
  x=x-t*sin(((((((((266/3*y-7784/3)*y+35280)*y-245952)*y+967232)*y-2239104)*y+4200448)*y-6322176)*y+5160960)/(y4*y4*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


O08-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)fn1(7*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1(((((((((266/3*x-7784/3)*x+35280)*x-245952)*x+967232)*x-2239104)*x+4200448)*x-6322176)*x+5160960)/(x4*x4*x))
  x=x-t*fn1(((((((((266/3*y-7784/3)*y+35280)*y-245952)*y+967232)*y-2239104)*y+4200448)*y-6322176)*y+5160960)/(y4*y4*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


O08-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)fn1(7*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((266/3*x-7784/3)*x+35280)*x-245952)*x+967232)*x-2239104)*x+4200448)*x-6322176)*x+5160960)/(x4*x4*x))
  Ty=fn2(((((((((266/3*y-7784/3)*y+35280)*y-245952)*y+967232)*y-2239104)*y+4200448)*y-6322176)*y+5160960)/(y4*y4*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


O08-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)fn1(7*pi/2)^2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((266/3*x-7784/3)*x+35280)*x-245952)*x+967232)*x-2239104)*x+4200448)*x-6322176)*x+5160960)/(x4*x4*x))
  Ty=fn2(((((((((266/3*y-7784/3)*y+35280)*y-245952)*y+967232)*y-2239104)*y+4200448)*y-6322176)*y+5160960)/(y4*y4*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


O08-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)fn1(7*pi/2)^2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1(((((((((266/3*x-7784/3)*x+35280)*x-245952)*x+967232)*x-2239104)*x+4200448)*x-6322176)*x+5160960)/(x4*x4*x))
  x=x-t*fn2(((((((((266/3*y-7784/3)*y+35280)*y-245952)*y+967232)*y-2239104)*y+4200448)*y-6322176)*y+5160960)/(y4*y4*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


O08-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)fn1(7*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1(((((((((266/3*x-7784/3)*x+35280)*x-245952)*x+967232)*x-2239104)*x+4200448)*x-6322176)*x+5160960)/(x4*x4*x))
  x=x-t*fn2(((((((((266/3*y-7784/3)*y+35280)*y-245952)*y+967232)*y-2239104)*y+4200448)*y-6322176)*y+5160960)/(y4*y4*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


O08-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)fn1(7*pi/2)^2
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((266/3*x-7784/3)*x+35280)*x-245952)*x+967232)*x-2239104)*x+4200448)*x-6322176)*x+5160960)/(x4*x4*x))
  Ty=fn1(((((((((266/3*y-7784/3)*y+35280)*y-245952)*y+967232)*y-2239104)*y+4200448)*y-6322176)*y+5160960)/(y4*y4*y))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


O08-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)fn1(7*pi/2)^2
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((266/3*x-7784/3)*x+35280)*x-245952)*x+967232)*x-2239104)*x+4200448)*x-6322176)*x+5160960)/(x4*x4*x))
  Ty=fn1(((((((((266/3*y-7784/3)*y+35280)*y-245952)*y+967232)*y-2239104)*y+4200448)*y-6322176)*y+5160960)/(y4*y4*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


O08-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)fn1(7*pi/2)^2
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((266/3*x-7784/3)*x+35280)*x-245952)*x+967232)*x-2239104)*x+4200448)*x-6322176)*x+5160960)/(x4*x4*x))
  Ty=fn1(((((((((266/3*y-7784/3)*y+35280)*y-245952)*y+967232)*y-2239104)*y+4200448)*y-6322176)*y+5160960)/(y4*y4*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


O08-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)fn1(7*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((266/3*x-7784/3)*x+35280)*x-245952)*x+967232)*x-2239104)*x+4200448)*x-6322176)*x+5160960)/(x4*x4*x))
  Ty=fn1(((((((((266/3*y-7784/3)*y+35280)*y-245952)*y+967232)*y-2239104)*y+4200448)*y-6322176)*y+5160960)/(y4*y4*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


O08-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)sin(7*pi/2)^2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1, x4=xx*xx, y4=yy*yy
  Fx0=((((((((266/3*x0-7784/3)*x0+35280)*x0-245952)*x0+967232)*x0-2239104)*x0+4200448)*x0-6322176)*x0+5160960)/(x4*x4*x0)
  Fx1=((((((((266/3*x1-7784/3)*x1+35280)*x1-245952)*x1+967232)*x1-2239104)*x1+4200448)*x1-6322176)*x1+5160960)/(y4*y4*x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


O09-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)sin(8*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Fx=(((((((((4932-114*x)*x-92064)*x+951264)*x-5670720)*x+20289024)*x-45704448)*x+83736576)*x-120434688)*x+92897280)/(x4*x4*x2)
  Fy=(((((((((4932-114*y)*y-92064)*y+951264)*y-5670720)*y+20289024)*y-45704448)*y+83736576)*y-120434688)*y+92897280)/(y4*y4*y2)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


O09-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)sin(8*pi/2)^2
  bailout=p1+4, z=pixel:
  z2=z*z, z4=z2*z2
  z=(((((((((4932-114*z)*z-92064)*z+951264)*z-5670720)*z+20289024)*z-45704448)*z+83736576)*z-120434688)*z+92897280)/(z4*z4*z2)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


O09-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)sin(8*pi/2)^2
  const=p1, z=pixel:
  z2=z*z, z4=z2*z2
  z=const+((((((((((4932-114*z)*z-92064)*z+951264)*z-5670720)*z+20289024)*z-45704448)*z+83736576)*z-120434688)*z+92897280)/(z4*z4*z2))
  |z|<100
  ;SOURCE: chby3.frm
}


O09-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)sin(8*pi/2)^2
  const=pixel, z=p1:
  z2=z*z, z4=z2*z2
  z=const+((((((((((4932-114*z)*z-92064)*z+951264)*z-5670720)*z+20289024)*z-45704448)*z+83736576)*z-120434688)*z+92897280)/(z4*z4*z2))
  |z|<100
  ;SOURCE: chby4.frm
}


O09-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)sin(8*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z10=z4*z4*z2
  f=((((((((((4932-114*z)*z-92064)*z+951264)*z-5670720)*z+20289024)*z-45704448)*z+83736576)*z-120434688)*z+92897280)/z10)
  fd=(((((((((114*z-9864)*z+276192)*z-3805056)*z+28353600)*z-121734144)*z+319931136)*z-669892608)*z+1083912192)*z-928972800)/(z10*z)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


O09-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)sin(8*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z10=z4*z4*z2
  f=((((((((((4932-114*z)*z-92064)*z+951264)*z-5670720)*z+20289024)*z-45704448)*z+83736576)*z-120434688)*z+92897280)/z10)
  fd=(((((((((114*z-9864)*z+276192)*z-3805056)*z+28353600)*z-121734144)*z+319931136)*z-669892608)*z+1083912192)*z-928972800)/(z10*z)
  fdd=(((((((((4332*z-364968)*z+9942912)*z-133176960)*z+964022400)*z-4017226752)*z+10237796352)*z-20766670848)*z+32517365760)*z-26940211200)/(z10*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


O09-07 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)sin(8*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z10=z4*z4*z2
  f=((((((((((4932-114*z)*z-92064)*z+951264)*z-5670720)*z+20289024)*z-45704448)*z+83736576)*z-120434688)*z+92897280)/z10)
  fd=(((((((((114*z-9864)*z+276192)*z-3805056)*z+28353600)*z-121734144)*z+319931136)*z-669892608)*z+1083912192)*z-928972800)/(z10*z)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  fw=((((((((((4932-114*w)*w-92064)*w+951264)*w-5670720)*w+20289024)*w-45704448)*w+83736576)*w-120434688)*w+92897280)/(w4*w4*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


O09-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)sin(8*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=sin((((((((((4932-114*x)*x-92064)*x+951264)*x-5670720)*x+20289024)*x-45704448)*x+83736576)*x-120434688)*x+92897280)/(x4*x4*x2))
  Ty=sin((((((((((4932-114*y)*y-92064)*y+951264)*y-5670720)*y+20289024)*y-45704448)*y+83736576)*y-120434688)*y+92897280)/(y4*y4*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


O09-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)fn1(8*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1((((((((((4932-114*x)*x-92064)*x+951264)*x-5670720)*x+20289024)*x-45704448)*x+83736576)*x-120434688)*x+92897280)/(x4*x4*x2))
  Ty=fn1((((((((((4932-114*y)*y-92064)*y+951264)*y-5670720)*y+20289024)*y-45704448)*y+83736576)*y-120434688)*y+92897280)/(y4*y4*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


O09-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)sin(8*pi/2)^2
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1, pp4=pp2*pp2
  fz=((((((((((4932-114*p1)*p1-92064)*p1+951264)*p1-5670720)*p1+20289024)*p1-45704448)*p1+83736576)*p1-120434688)*p1+92897280)/(pp4*pp4*pp2)):
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=((((((((((4932-114*z)*z-92064)*z+951264)*z-5670720)*z+20289024)*z-45704448)*z+83736576)*z-120434688)*z+92897280)/(z4*z4*z2))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


O09-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)sin(8*pi/2)^2
  const=p1, z=pixel:
  z2=z*z, z4=z2*z2
  z=const*((((((((((4932-114*z)*z-92064)*z+951264)*z-5670720)*z+20289024)*z-45704448)*z+83736576)*z-120434688)*z+92897280)/(z4*z4*z2))
  |z|<100
  ;SOURCE: chby11.frm
}


O09-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)sin(8*pi/2)^2
  const=pixel, z=p1:
  z2=z*z, z4=z2*z2
  z=const*((((((((((4932-114*z)*z-92064)*z+951264)*z-5670720)*z+20289024)*z-45704448)*z+83736576)*z-120434688)*z+92897280)/(z4*z4*z2))
  |z|<100
  ;SOURCE: chby12.frm
}


O09-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)sin(8*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z10=z4*z4*z2
  f=((((((((((4932-114*z)*z-92064)*z+951264)*z-5670720)*z+20289024)*z-45704448)*z+83736576)*z-120434688)*z+92897280)/z10)
  fd=(((((((((114*z-9864)*z+276192)*z-3805056)*z+28353600)*z-121734144)*z+319931136)*z-669892608)*z+1083912192)*z-928972800)/(z10*z)
  fdd=(((((((((4332*z-364968)*z+9942912)*z-133176960)*z+964022400)*z-4017226752)*z+10237796352)*z-20766670848)*z+32517365760)*z-26940211200)/(z10*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


O09-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)sin(8*pi/2)^2
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2, z10=z4*z4*z2
  f=((((((((((4932-114*z)*z-92064)*z+951264)*z-5670720)*z+20289024)*z-45704448)*z+83736576)*z-120434688)*z+92897280)/z10)
  fd=(((((((((114*z-9864)*z+276192)*z-3805056)*z+28353600)*z-121734144)*z+319931136)*z-669892608)*z+1083912192)*z-928972800)/(z10*z)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  fw=((((((((((4932-114*w)*w-92064)*w+951264)*w-5670720)*w+20289024)*w-45704448)*w+83736576)*w-120434688)*w+92897280)/(w4*w4*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


O09-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)sin(8*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z10=z4*z4*z2
  f=((((((((((4932-114*z)*z-92064)*z+951264)*z-5670720)*z+20289024)*z-45704448)*z+83736576)*z-120434688)*z+92897280)/z10)
  fd=(((((((((114*z-9864)*z+276192)*z-3805056)*z+28353600)*z-121734144)*z+319931136)*z-669892608)*z+1083912192)*z-928972800)/(z10*z)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


O09-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)sin(8*pi/2)^2
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1, pp4=pp2*pp2
  fz=((((((((((4932-114*p1)*p1-92064)*p1+951264)*p1-5670720)*p1+20289024)*p1-45704448)*p1+83736576)*p1-120434688)*p1+92897280)/(pp4*pp4*pp2)):
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=((((((((((4932-114*z)*z-92064)*z+951264)*z-5670720)*z+20289024)*z-45704448)*z+83736576)*z-120434688)*z+92897280)/(z4*z4*z2))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


O09-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)sin(8*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*((((((((((4932-114*x)*x-92064)*x+951264)*x-5670720)*x+20289024)*x-45704448)*x+83736576)*x-120434688)*x+92897280)/(x4*x4*x2))
  x=x-t*((((((((((4932-114*y)*y-92064)*y+951264)*y-5670720)*y+20289024)*y-45704448)*y+83736576)*y-120434688)*y+92897280)/(y4*y4*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


O09-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)sin(8*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*sin((((((((((4932-114*x)*x-92064)*x+951264)*x-5670720)*x+20289024)*x-45704448)*x+83736576)*x-120434688)*x+92897280)/(x4*x4*x2))
  x=x-t*sin((((((((((4932-114*y)*y-92064)*y+951264)*y-5670720)*y+20289024)*y-45704448)*y+83736576)*y-120434688)*y+92897280)/(y4*y4*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


O09-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)fn1(8*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1((((((((((4932-114*x)*x-92064)*x+951264)*x-5670720)*x+20289024)*x-45704448)*x+83736576)*x-120434688)*x+92897280)/(x4*x4*x2))
  x=x-t*fn1((((((((((4932-114*y)*y-92064)*y+951264)*y-5670720)*y+20289024)*y-45704448)*y+83736576)*y-120434688)*y+92897280)/(y4*y4*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


O09-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)fn1(8*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1((((((((((4932-114*x)*x-92064)*x+951264)*x-5670720)*x+20289024)*x-45704448)*x+83736576)*x-120434688)*x+92897280)/(x4*x4*x2))
  Ty=fn2((((((((((4932-114*y)*y-92064)*y+951264)*y-5670720)*y+20289024)*y-45704448)*y+83736576)*y-120434688)*y+92897280)/(y4*y4*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


O09-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)fn1(8*pi/2)^2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1((((((((((4932-114*x)*x-92064)*x+951264)*x-5670720)*x+20289024)*x-45704448)*x+83736576)*x-120434688)*x+92897280)/(x4*x4*x2))
  Ty=fn2((((((((((4932-114*y)*y-92064)*y+951264)*y-5670720)*y+20289024)*y-45704448)*y+83736576)*y-120434688)*y+92897280)/(y4*y4*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


O09-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)fn1(8*pi/2)^2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1((((((((((4932-114*x)*x-92064)*x+951264)*x-5670720)*x+20289024)*x-45704448)*x+83736576)*x-120434688)*x+92897280)/(x4*x4*x2))
  x=x-t*fn2((((((((((4932-114*y)*y-92064)*y+951264)*y-5670720)*y+20289024)*y-45704448)*y+83736576)*y-120434688)*y+92897280)/(y4*y4*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


O09-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)fn1(8*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1((((((((((4932-114*x)*x-92064)*x+951264)*x-5670720)*x+20289024)*x-45704448)*x+83736576)*x-120434688)*x+92897280)/(x4*x4*x2))
  x=x-t*fn2((((((((((4932-114*y)*y-92064)*y+951264)*y-5670720)*y+20289024)*y-45704448)*y+83736576)*y-120434688)*y+92897280)/(y4*y4*y2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


O09-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)fn1(8*pi/2)^2
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1((((((((((4932-114*x)*x-92064)*x+951264)*x-5670720)*x+20289024)*x-45704448)*x+83736576)*x-120434688)*x+92897280)/(x4*x4*x2))
  Ty=fn1((((((((((4932-114*y)*y-92064)*y+951264)*y-5670720)*y+20289024)*y-45704448)*y+83736576)*y-120434688)*y+92897280)/(y4*y4*y2))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


O09-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)fn1(8*pi/2)^2
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1((((((((((4932-114*x)*x-92064)*x+951264)*x-5670720)*x+20289024)*x-45704448)*x+83736576)*x-120434688)*x+92897280)/(x4*x4*x2))
  Ty=fn1((((((((((4932-114*y)*y-92064)*y+951264)*y-5670720)*y+20289024)*y-45704448)*y+83736576)*y-120434688)*y+92897280)/(y4*y4*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


O09-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)fn1(8*pi/2)^2
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1((((((((((4932-114*x)*x-92064)*x+951264)*x-5670720)*x+20289024)*x-45704448)*x+83736576)*x-120434688)*x+92897280)/(x4*x4*x2))
  Ty=fn1((((((((((4932-114*y)*y-92064)*y+951264)*y-5670720)*y+20289024)*y-45704448)*y+83736576)*y-120434688)*y+92897280)/(y4*y4*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


O09-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)fn1(8*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1((((((((((4932-114*x)*x-92064)*x+951264)*x-5670720)*x+20289024)*x-45704448)*x+83736576)*x-120434688)*x+92897280)/(x4*x4*x2))
  Ty=fn1((((((((((4932-114*y)*y-92064)*y+951264)*y-5670720)*y+20289024)*y-45704448)*y+83736576)*y-120434688)*y+92897280)/(y4*y4*y2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


O09-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)sin(8*pi/2)^2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1, x4=xx*xx, y4=yy*yy
  Fx0=(((((((((4932-114*x0)*x0-92064)*x0+951264)*x0-5670720)*x0+20289024)*x0-45704448)*x0+83736576)*x0-120434688)*x0+92897280)/(x4*x4*xx)
  Fx1=(((((((((4932-114*x1)*x1-92064)*x1+951264)*x1-5670720)*x1+20289024)*x1-45704448)*x1+83736576)*x1-120434688)*x1+92897280)/(y4*y4*yy)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


O10-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)sin(9*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Fx=((((((((((321/2*x-8445)*x+213720)*x-3030360)*x+26113680)*x-138775680)*x+462911040)*x-1018759680)*x+1825274880)*x-2524815360)*x+1857945600)/(x4*x4*x2*x)
  Fy=((((((((((321/2*y-8445)*y+213720)*y-3030360)*y+26113680)*y-138775680)*y+462911040)*y-1018759680)*y+1825274880)*y-2524815360)*y+1857945600)/(y4*y4*y2*y)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


O10-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)sin(9*pi/2)^2
  bailout=p1+4, z=pixel:
  z2=z*z, z4=z2*z2
  z=((((((((((321/2*z-8445)*z+213720)*z-3030360)*z+26113680)*z-138775680)*z+462911040)*z-1018759680)*z+1825274880)*z-2524815360)*z+1857945600)/(z4*z4*z2*z)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


O10-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)sin(9*pi/2)^2
  const=p1, z=pixel:
  z2=z*z, z4=z2*z2
  z=const+(((((((((((321/2*z-8445)*z+213720)*z-3030360)*z+26113680)*z-138775680)*z+462911040)*z-1018759680)*z+1825274880)*z-2524815360)*z+1857945600)/(z4*z4*z2*z))
  |z|<100
  ;SOURCE: chby3.frm
}


O10-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)sin(9*pi/2)^2
  const=pixel, z=p1:
  z2=z*z, z4=z2*z2
  z=const+(((((((((((321/2*z-8445)*z+213720)*z-3030360)*z+26113680)*z-138775680)*z+462911040)*z-1018759680)*z+1825274880)*z-2524815360)*z+1857945600)/(z4*z4*z2*z))
  |z|<100
  ;SOURCE: chby4.frm
}


O10-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)sin(9*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=(((((((((((321/2*z-8445)*z+213720)*z-3030360)*z+26113680)*z-138775680)*z+462911040)*z-1018759680)*z+1825274880)*z-2524815360)*z+1857945600)/(z8*z2*z))
  fd=((((((((((16890-321/2*z)*z-641160)*z+12121440)*z-130568400)*z+832654080)*z-3240377280)*z+8150077440)*z-16427473920)*z+25248153600)*z-20437401600)/(z8*z4)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


O10-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)sin(9*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4, z12=z8*z4
  f=(((((((((((321/2*z-8445)*z+213720)*z-3030360)*z+26113680)*z-138775680)*z+462911040)*z-1018759680)*z+1825274880)*z-2524815360)*z+1857945600)/(z8*z2*z))
  fd=((((((((((16890-321/2*z)*z-641160)*z+12121440)*z-130568400)*z+832654080)*z-3240377280)*z+8150077440)*z-16427473920)*z+25248153600)*z-20437401600)/z12
  fdd=((((((((((-6741*z+692490)*z-25646400)*z+472736160)*z-4961599200)*z+30808200960)*z-116653582080)*z+285252710400)*z-558534113280)*z+833189068800)*z-653996851200)/(z12*z)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


O10-07 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)sin(9*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=(((((((((((321/2*z-8445)*z+213720)*z-3030360)*z+26113680)*z-138775680)*z+462911040)*z-1018759680)*z+1825274880)*z-2524815360)*z+1857945600)/(z8*z2*z))
  fd=((((((((((16890-321/2*z)*z-641160)*z+12121440)*z-130568400)*z+832654080)*z-3240377280)*z+8150077440)*z-16427473920)*z+25248153600)*z-20437401600)/(z8*z4)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  fw=(((((((((((321/2*w-8445)*w+213720)*w-3030360)*w+26113680)*w-138775680)*w+462911040)*w-1018759680)*w+1825274880)*w-2524815360)*w+1857945600)/(w4*w4*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


O10-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)sin(9*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=sin(((((((((((321/2*x-8445)*x+213720)*x-3030360)*x+26113680)*x-138775680)*x+462911040)*x-1018759680)*x+1825274880)*x-2524815360)*x+1857945600)/(x4*x4*x2*x))
  Ty=sin(((((((((((321/2*y-8445)*y+213720)*y-3030360)*y+26113680)*y-138775680)*y+462911040)*y-1018759680)*y+1825274880)*y-2524815360)*y+1857945600)/(y4*y4*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


O10-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)fn1(9*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((((321/2*x-8445)*x+213720)*x-3030360)*x+26113680)*x-138775680)*x+462911040)*x-1018759680)*x+1825274880)*x-2524815360)*x+1857945600)/(x4*x4*x2*x))
  Ty=fn1(((((((((((321/2*y-8445)*y+213720)*y-3030360)*y+26113680)*y-138775680)*y+462911040)*y-1018759680)*y+1825274880)*y-2524815360)*y+1857945600)/(y4*y4*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


O10-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)sin(9*pi/2)^2
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1, pp4=pp2*pp2
  fz=(((((((((((321/2*p1-8445)*p1+213720)*p1-3030360)*p1+26113680)*p1-138775680)*p1+462911040)*p1-1018759680)*p1+1825274880)*p1-2524815360)*p1+1857945600)/(pp4*pp4*pp2*p1)):
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=(((((((((((321/2*z-8445)*z+213720)*z-3030360)*z+26113680)*z-138775680)*z+462911040)*z-1018759680)*z+1825274880)*z-2524815360)*z+1857945600)/(z4*z4*z2*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


O10-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)sin(9*pi/2)^2
  const=p1, z=pixel:
  z2=z*z, z4=z2*z2
  z=const*(((((((((((321/2*z-8445)*z+213720)*z-3030360)*z+26113680)*z-138775680)*z+462911040)*z-1018759680)*z+1825274880)*z-2524815360)*z+1857945600)/(z4*z4*z2*z))
  |z|<100
  ;SOURCE: chby11.frm
}


O10-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)sin(9*pi/2)^2
  const=pixel, z=p1:
  z2=z*z, z4=z2*z2
  z=const*(((((((((((321/2*z-8445)*z+213720)*z-3030360)*z+26113680)*z-138775680)*z+462911040)*z-1018759680)*z+1825274880)*z-2524815360)*z+1857945600)/(z4*z4*z2*z))
  |z|<100
  ;SOURCE: chby12.frm
}


O10-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)sin(9*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4, z12=z8*z4
  f=(((((((((((321/2*z-8445)*z+213720)*z-3030360)*z+26113680)*z-138775680)*z+462911040)*z-1018759680)*z+1825274880)*z-2524815360)*z+1857945600)/(z8*z2*z))
  fd=((((((((((16890-321/2*z)*z-641160)*z+12121440)*z-130568400)*z+832654080)*z-3240377280)*z+8150077440)*z-16427473920)*z+25248153600)*z-20437401600)/z12
  fdd=((((((((((-6741*z+692490)*z-25646400)*z+472736160)*z-4961599200)*z+30808200960)*z-116653582080)*z+285252710400)*z-558534113280)*z+833189068800)*z-653996851200)/(z12*z)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


O10-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)sin(9*pi/2)^2
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=(((((((((((321/2*z-8445)*z+213720)*z-3030360)*z+26113680)*z-138775680)*z+462911040)*z-1018759680)*z+1825274880)*z-2524815360)*z+1857945600)/(z8*z2*z))
  fd=((((((((((16890-321/2*z)*z-641160)*z+12121440)*z-130568400)*z+832654080)*z-3240377280)*z+8150077440)*z-16427473920)*z+25248153600)*z-20437401600)/(z8*z4)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  fw=(((((((((((321/2*w-8445)*w+213720)*w-3030360)*w+26113680)*w-138775680)*w+462911040)*w-1018759680)*w+1825274880)*w-2524815360)*w+1857945600)/(w4*w4*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


O10-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)sin(9*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=(((((((((((321/2*z-8445)*z+213720)*z-3030360)*z+26113680)*z-138775680)*z+462911040)*z-1018759680)*z+1825274880)*z-2524815360)*z+1857945600)/(z8*z2*z))
  fd=((((((((((16890-321/2*z)*z-641160)*z+12121440)*z-130568400)*z+832654080)*z-3240377280)*z+8150077440)*z-16427473920)*z+25248153600)*z-20437401600)/(z8*z4)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


O10-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)sin(9*pi/2)^2
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1, pp4=pp2*pp2
  fz=(((((((((((321/2*p1-8445)*p1+213720)*p1-3030360)*p1+26113680)*p1-138775680)*p1+462911040)*p1-1018759680)*p1+1825274880)*p1-2524815360)*p1+1857945600)/(pp4*pp4*pp2*p1)):
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=(((((((((((321/2*z-8445)*z+213720)*z-3030360)*z+26113680)*z-138775680)*z+462911040)*z-1018759680)*z+1825274880)*z-2524815360)*z+1857945600)/(z4*z4*z2*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


O10-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)sin(9*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*(((((((((((321/2*x-8445)*x+213720)*x-3030360)*x+26113680)*x-138775680)*x+462911040)*x-1018759680)*x+1825274880)*x-2524815360)*x+1857945600)/(x4*x4*x2*x))
  x=x-t*(((((((((((321/2*y-8445)*y+213720)*y-3030360)*y+26113680)*y-138775680)*y+462911040)*y-1018759680)*y+1825274880)*y-2524815360)*y+1857945600)/(y4*y4*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


O10-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)sin(9*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*sin(((((((((((321/2*x-8445)*x+213720)*x-3030360)*x+26113680)*x-138775680)*x+462911040)*x-1018759680)*x+1825274880)*x-2524815360)*x+1857945600)/(x4*x4*x2*x))
  x=x-t*sin(((((((((((321/2*y-8445)*y+213720)*y-3030360)*y+26113680)*y-138775680)*y+462911040)*y-1018759680)*y+1825274880)*y-2524815360)*y+1857945600)/(y4*y4*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


O10-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)fn1(9*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1(((((((((((321/2*x-8445)*x+213720)*x-3030360)*x+26113680)*x-138775680)*x+462911040)*x-1018759680)*x+1825274880)*x-2524815360)*x+1857945600)/(x4*x4*x2*x))
  x=x-t*fn1(((((((((((321/2*y-8445)*y+213720)*y-3030360)*y+26113680)*y-138775680)*y+462911040)*y-1018759680)*y+1825274880)*y-2524815360)*y+1857945600)/(y4*y4*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


O10-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)fn1(9*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((((321/2*x-8445)*x+213720)*x-3030360)*x+26113680)*x-138775680)*x+462911040)*x-1018759680)*x+1825274880)*x-2524815360)*x+1857945600)/(x4*x4*x2*x))
  Ty=fn2(((((((((((321/2*y-8445)*y+213720)*y-3030360)*y+26113680)*y-138775680)*y+462911040)*y-1018759680)*y+1825274880)*y-2524815360)*y+1857945600)/(y4*y4*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


O10-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)fn1(9*pi/2)^2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((((321/2*x-8445)*x+213720)*x-3030360)*x+26113680)*x-138775680)*x+462911040)*x-1018759680)*x+1825274880)*x-2524815360)*x+1857945600)/(x4*x4*x2*x))
  Ty=fn2(((((((((((321/2*y-8445)*y+213720)*y-3030360)*y+26113680)*y-138775680)*y+462911040)*y-1018759680)*y+1825274880)*y-2524815360)*y+1857945600)/(y4*y4*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


O10-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)fn1(9*pi/2)^2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1(((((((((((321/2*x-8445)*x+213720)*x-3030360)*x+26113680)*x-138775680)*x+462911040)*x-1018759680)*x+1825274880)*x-2524815360)*x+1857945600)/(x4*x4*x2*x))
  x=x-t*fn2(((((((((((321/2*y-8445)*y+213720)*y-3030360)*y+26113680)*y-138775680)*y+462911040)*y-1018759680)*y+1825274880)*y-2524815360)*y+1857945600)/(y4*y4*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


O10-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)fn1(9*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1(((((((((((321/2*x-8445)*x+213720)*x-3030360)*x+26113680)*x-138775680)*x+462911040)*x-1018759680)*x+1825274880)*x-2524815360)*x+1857945600)/(x4*x4*x2*x))
  x=x-t*fn2(((((((((((321/2*y-8445)*y+213720)*y-3030360)*y+26113680)*y-138775680)*y+462911040)*y-1018759680)*y+1825274880)*y-2524815360)*y+1857945600)/(y4*y4*y2*y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


O10-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)fn1(9*pi/2)^2
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((((321/2*x-8445)*x+213720)*x-3030360)*x+26113680)*x-138775680)*x+462911040)*x-1018759680)*x+1825274880)*x-2524815360)*x+1857945600)/(x4*x4*x2*x))
  Ty=fn1(((((((((((321/2*y-8445)*y+213720)*y-3030360)*y+26113680)*y-138775680)*y+462911040)*y-1018759680)*y+1825274880)*y-2524815360)*y+1857945600)/(y4*y4*y2*y))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


O10-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)fn1(9*pi/2)^2
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((((321/2*x-8445)*x+213720)*x-3030360)*x+26113680)*x-138775680)*x+462911040)*x-1018759680)*x+1825274880)*x-2524815360)*x+1857945600)/(x4*x4*x2*x))
  Ty=fn1(((((((((((321/2*y-8445)*y+213720)*y-3030360)*y+26113680)*y-138775680)*y+462911040)*y-1018759680)*y+1825274880)*y-2524815360)*y+1857945600)/(y4*y4*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


O10-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)fn1(9*pi/2)^2
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((((321/2*x-8445)*x+213720)*x-3030360)*x+26113680)*x-138775680)*x+462911040)*x-1018759680)*x+1825274880)*x-2524815360)*x+1857945600)/(x4*x4*x2*x))
  Ty=fn1(((((((((((321/2*y-8445)*y+213720)*y-3030360)*y+26113680)*y-138775680)*y+462911040)*y-1018759680)*y+1825274880)*y-2524815360)*y+1857945600)/(y4*y4*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


O10-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)fn1(9*pi/2)^2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((((321/2*x-8445)*x+213720)*x-3030360)*x+26113680)*x-138775680)*x+462911040)*x-1018759680)*x+1825274880)*x-2524815360)*x+1857945600)/(x4*x4*x2*x))
  Ty=fn1(((((((((((321/2*y-8445)*y+213720)*y-3030360)*y+26113680)*y-138775680)*y+462911040)*y-1018759680)*y+1825274880)*y-2524815360)*y+1857945600)/(y4*y4*y2*y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


O10-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)sin(9*pi/2)^2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1, x4=xx*xx, y4=yy*yy
  Fx0=((((((((((321/2*x0-8445)*x0+213720)*x0-3030360)*x0+26113680)*x0-138775680)*x0+462911040)*x0-1018759680)*x0+1825274880)*x0-2524815360)*x0+1857945600)/(x4*x4*xx*x0)
  Fx1=((((((((((321/2*x1-8445)*x1+213720)*x1-3030360)*x1+26113680)*x1-138775680)*x1+462911040)*x1-1018759680)*x1+1825274880)*x1-2524815360)*x1+1857945600)/(y4*y4*yy*x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Oblate {; Jim Muth  real(z),imag(c)    NEW version
  z=real(pixel)+p1
  c=flip(imag(pixel))+p2:
  z=sqr(z)+c
  |z| <= 16
  ;SOURCE: 98msg.frm
}


OblateMiN {; Jim Muth
  b=p1, z=real(pixel)+p2
  c=flip(imag(pixel))+p3:
  z=(-z)^(b)+c
  |z| <= 16
  ;SOURCE: 98msg.frm
}


OblateMix {; Jim Muth
  z=real(pixel)+flip(real(p3))
  c=flip(imag(pixel))+imag(p3)
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2):
  z=(a*(z^b))+(d*(z^f))+c
  |z| <= 100
  ;SOURCE: 97msg.frm
}


OblateN {; Jim Muth
  b=p1, z=real(pixel)+p2
  c=flip(imag(pixel))+p3:
  z=z^(b)+c
  |z| <= 16
  ;SOURCE: 98msg.frm
}


OblateNa {; Jim Muth
  b=p1, z=real(pixel)+p2
  c=flip(imag(pixel))+p3:
  z=z^b+c
  |z| <= 16
  ;SOURCE: 0from_ml.frm
}


OblatePM {; formula Jim Muth
  z=real(pixel)+flip(real(p1))
  c=flip(imag(pixel))+imag(p1):
  z=p2*(.5*((-z)^p3+z^p3))+c
  |z| <= 250
  ;SOURCE: 98msg.frm
}


OblateVB {; Jim Muth
  z=real(pixel)+flip(real(p1))
  c=flip(imag(pixel))+imag(p1)
  a=sqr(p2):
  z=sqr(z)+c
  |z| <= a
  ;SOURCE: 97msg.frm
}


OblateXLow {; Jim Muth
  z=real(pixel)+flip(real(p3))
  c=flip(imag(pixel))+imag(p3)
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2):
  z=(a*(z^b))+(d*((-z)^f))+c
  |z| <=2500
  ;SOURCE: 97msg.frm
}


ObliqueMand {; Jim Muth (as posted in Fractal-Art, 4/8/97)
             ; See JulibrotZpwr and JulibrotInvZ for generalized
             ; versions of this formula and additional explanatory
             ; text in the formula comments
  z=pixel
  c=p1+(pixel*p2):
  z=z^(1.4142)+c
  |z| <= 100
  ;SOURCE: 97msg.frm
}


ObliqueManPlus {; Jim Muth
  z=p1+pixel, c=p2+(p3*pixel):
  z=sqr(z)+c
  |z| <=100
  ;SOURCE: 97msg.frm
}


ObliqueMixPlus {; Jim Muth
  z=p1+pixel, c=p2+(p3*pixel):
  z=sqr(z)+(0.2*(z*z*z))+c
  |z| <=100
  ;SOURCE: 98msg.frm
}


ObliqueSqrt {; Jim Muth
             ; optimized by G. Martin 4/9/97
  z=pixel
  c=p1+(pixel*p2):
  z=z^(1.4142)+c
  |z| <= 100
  ;SOURCE: 97msg.frm
}


OblManPlusLow {; Jim Muth
  z=p1+pixel, c=p2+(p3*pixel):
  z=sqr(z)+c
  |z| <=4
  ;SOURCE: 97msg.frm
}


octet {
   ; The ht varient of the octo formula
  z = pixel,zp=(0,0),huge=1.0e32:
  temp = z
  z = z^3 + zp
  zp = p1/temp
  (|zp| <=64) && (|z| <= huge) 
  ;SOURCE: noel.frm
}


octo (XYAXIS) {
   ; The next obvious thing to try is different powers
   ; Note. Changing sign in this one like the trillium only rotates 22.5 deg.
  z = pixel, zp=(0,0):
  temp = z
  z = z^3 + zp
  zp = temp
  |zp| <= 4 
  ;SOURCE: noel.frm
}


offset_jul {
        ; 
        ; For Kerry Mitchell's explanation of the "circle & line"
        ;    coloring method, see the end of formula
        ;    general_man-c&l
        ;
        ; "circle & offset line" coloring method for Julia sets
        ; p1 = c = Julia parameter
        ; p2 = x-circle center
        ; real(p3) = x-circle radius
        ; imag(p3) = angle of line from circle center to tangent
        ;    point, degrees.  y-line is parallel to tangent line
        ;    and offset by amount of radius.
        ; bailout hardcoded to 10^12
        ; use "decomp=256" coloring
        ;
  zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
  cenx=p2, radx=real(p3), rad=2*radx, rad2x=|radx|
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


offset_rx=ry_jul {; Kerry Mitchell 26aug98
        ; 
        ; See the end of the formula general_man-2circ for 
        ;    Kerry Mitchell's explanation of the "2 circles 
        ;    coloring method".
        ;
        ; "2 offset circles" coloring method for Julia sets
        ; p1 = c = Julia parameter
        ; p2 = approximate circle center
        ; real(p3) = (both) circle radius
        ; imag(p3) = center offsets--added to p2 for
        ;   centerx, subtracted from p2 for centery
        ; bailout hardcoded to 10^12
        ; use "decomp=256" coloring
        ;
  zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
  cenx=p2*(1+imag(p3)), radx=real(p3), rad2x=radx*radx
  ceny=p2*(1-imag(p3)), rad2y=rad2x:
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


Oink {
  z = c = pixel + p1:
  r = fn1(1/z) * imag(z)
  q = fn2(1/z) * real(z)
  z = sin(q) * cos(r) + c
  |z| < 4 + p2
  ;SOURCE: big_pig.frm
}


OK-01 {; TRY P1 REAL = 10000, FN1 = SQR
  z = 0, c = pixel:
  z = (c^z) + c
  z = fn1(z)
  |z| <= (5 + p1)
  ;SOURCE: fractint.frm
}


OK-02 {; TRY FN1 = COTAN
  z = c = pixel, k = 1 + p1:
  z = (c^z) + c
  z = fn1(z) * k
  |z| <= (5 + p2)
  ;SOURCE: overkill.frm
}


OK-03 {; TRY P1 REAL = 500, FN1 = COS, FN2 = SQR
  z = c = pixel:
  z = fn1(z)/c
  z = fn2(z)
  |z| <= (5 + p1)
  ;SOURCE: overkill.frm
}


OK-04 {; TRY FN2 = SQR, DIFFERENT FUNCTIONS FOR FN1
  z = 0, c = fn1(pixel):
  z = fn2(z) + c
  |z| <= (5 + p1)
  ;SOURCE: fractint.frm
}


OK-05 {
  z = pixel, k = -2,2 + p1:
  z = (z^k + z) / k
  (1 + p2) <= |z|
  ;SOURCE: overkill.frm
}


OK-06 {; TRY FN1 = SQR, FN2 = SQR
  z = c = pixel, d = fn1(pixel):
  z = fn2(z / d) + c 
  |z| <= (5 + p1)
  ;SOURCE: overkill.frm
}


OK-07 {
  z = 0, c = pixel:
  z = c * (z + c)
  z = fn1(z + c)
  |z| <= (5 + p1)
  ;SOURCE: overkill.frm
}


OK-08 {
  z = pixel, c = fn1(pixel):
  z = z^z / fn2(z)
  z = c / z
  |z| <= (5 + p1)
  ;SOURCE: fractint.frm
}


OK-09 {
  z = c = pixel, d = fn1(pixel), k = 1 + p1:
  z = z^c * k
  z = d / z
  |z| <= (5 + p2)
  ;SOURCE: overkill.frm
}


OK-10 {
  z = 0, c = pixel, k1 = 1 + p1, k2 = 1 + p2:
  z = (z * k1) + c
  z = fn1(z) / (k2 + c)
  |z| <= (k2)
  ;SOURCE: overkill.frm
}


OK-11 {; TRY FN1 = SQR, FN2 = SQR
  z = 0, v = pixel:
  z = fn1(v) + z
  v = fn2(z) + v
  |z| <= (5 + p1)
  ;SOURCE: overkill.frm
}


OK-12 {; TRY FN1 = SQR, FN2 = SQR
  z = c = pixel:
  z = fn1(z) + c
  z = fn2(z) / c
  |z| <= (5 + p1)
  ;SOURCE: overkill.frm
}


OK-13 {; TRY FN1 = SQR, FN2 = SQR
  z = 0, c = fn1(pixel) :
  z = fn1(z) + c
  z = fn2(z)
  |z| <= (5 + p1)
  ;SOURCE: overkill.frm
}


OK-14 {; FOUR FUNCTIONS TO PLAY WITH HERE.  GO CRAZY.
  z = 0, c = pixel :
  z = fn1(z+c) + c
  z = fn2(z-c) + c
  z = fn3(z*c) + c
  z = fn4(z/c) + c
  |z| <= (5 + p1)
  ;SOURCE: overkill.frm
}


OK-15 {
  z = 0, v = pixel :
  z = fn1(v*z) + v
  v = fn2(v/z)
  |z| <= (5 + p1)
  ;SOURCE: overkill.frm
}


OK-16 {
  z = v = pixel :
  z = fn1(z)^v
  v = v + z
  |z| <= (5 + p1)
  ;SOURCE: overkill.frm
}


OK-17 {
  z = c = pixel, r = real(pixel), i = imag(pixel):
  z = z^r + z^i + c
  z = z + real(fn1(z)) + imag(fn2(z))
  |z| <= (5 + p1)
  ;SOURCE: overkill.frm
}


OK-18 {
  z = v = pixel:
  z = fn1(v) + real(z)
  v = fn2(z) + imag(v)
  |z| <= (5 + p1)
  ;SOURCE: overkill.frm
}


OK-19 {
  a = b = z = pixel:
  a = fn1(b) + fn2(z)
  b = fn1(z) + fn2(a)
  z = fn1(a) + fn2(b)
  |z| <= (5 + p1)
  ;SOURCE: overkill.frm
}


OK-20 {
  a = b = c = z = pixel:
  a = fn1(b) + c^z
  b = fn2(a+c)
  z = z + (a * b * c)
  |z| <= (5 + p1)
  ;SOURCE: overkill.frm
}


OK-21 {
  z = pixel, c = fn1(pixel):
  z = fn2(z) + c
  fn3(z) <= p1
  ;SOURCE: fractint.frm
}


OK-22 {
  z = v = pixel:
  v = fn1(v) * fn2(z)
  z = fn1(z) / fn2(v)
  |z| <= (5 + p1)
  ;SOURCE: fractint.frm
}


OK-23 {
  z = c = pixel, k = 1 + p1:
  z = k * fn1(z^z + c) + c/z
  |z| <= (5 + p2)
  ;SOURCE: overkill.frm
}


OK-24 {; TRY P1 REAL = -2, FN1 = SQR, FN2 = RECIP
  z = 0, c = pixel, k = 1 + p1:
  z = fn2(fn1(z) + c) + (k * z)
  |z| <= (5 + p2)
  ;SOURCE: overkill.frm
}


OK-25 {
  z = c = pixel, k = 1 + p1:
  a = (abs(z) > k)  * (fn1(z) + c)
  b = (abs(z) <= k) * (fn2(z) + c)
  z = a + b
  |z| <= (5 + p2)
  ;SOURCE: overkill.frm
}


OK-26 {
  z = c = pixel, k = 2 + p1, test = k/(2 + p2):
  a = fn1(z)
  b = (|z| > test)  * (a - c)
  d = (|z| <= test) * (a + c)
  z = b + d
  |z| <= k
  ;SOURCE: overkill.frm
}


OK-27 {
  z = pixel, c = fn1(pixel), k = 1 + p1:
  a = fn2(z)
  b = (|z| >= k) * (a - c)
  d = (|z| < k) * (a + c)
  z = a + b + d
  |z| <= (10 + p2)
  ;SOURCE: overkill.frm
}


OK-28 {; Replaced variable "e" with "ee", 5/7/99. G. Martin
  z = c = pixel, d = fn1(pixel), k = p1:
  a = fn2(z)
  b = (z <= k) * (a + c + d)
  ee = (z > k) * (a + c - d)
  z = z + b + ee
  |z| <= (10 + p2)
  ;SOURCE: overkill.frm
}


OK-29 {
  z = v = pixel, k = 1 + p1:
  oldz = z
  z = fn1(z)^k + v
  v = oldz
  |z| <= (5 + p2)
  ;SOURCE: overkill.frm
}


OK-30 {; Replaced variable "e" with "ee", 5/7/99. G. Martin
  z = v = pixel, k = .5 + p1:
  a = fn1(z)
  b = (z <= k) * (a + v)
  ee = (z > k) * (a - v)
  v = z
  z = b + ee
  |z| <= (5 + p2)
  ;SOURCE: overkill.frm
}


OK-31 {; Replaced variable "e" with "ee", 5/7/99. G. Martin
  z = v = pixel, k = .1 + p1:
  a = fn1(z)
  b = (a <= k) * (a + v)
  ee = (a > k) * fn2(a)
  v = z
  z = b + ee
  |z| <= (5 + p2)
  ;SOURCE: overkill.frm
}


OK-32 {; Modified for if..else logic 3/19/97 by Sylvie Gallet
   z = y = x = pixel, k = 1 + p1, test = 5 + p2 :
   a = fn1(z)
   IF (a <= y)
      b = y
   ELSE
      b = x
   ENDIF
   x = y, y = z, z = a*k + b
   |z| <= test
  ;SOURCE: fract196.frm
}


OK-33 {
  z = y = x = pixel, k = 1 + p1:
  a = (|y| <= k) * fn1(y)
  b = (|x| <= k) * fn2(x)
  x = y
  y = z
  z = fn3(z) + a + b
  |z| <= (10 + p2)
  ;SOURCE: overkill.frm
}


OK-34 {; Modified for if..else logic 3/19/97 by Sylvie Gallet
   z = pixel, c = fn1(pixel) * p1, test = 10 + p2 :
   x = abs(real(z)), y = abs(imag(z))
   IF (x <= y)
      z = fn2(z) + y + c
   ELSE
      z = fn2(z) + x + c
   ENDIF
   |z| <= test
  ;SOURCE: fract196.frm
}


OK-35 {; Modified for if..else logic 3/19/97 by Sylvie Gallet
   z = pixel, k = 1 + p1, test = 10 + p2 :
   v = fn1(z), x = z*v, y = z/v
   IF (|x| <= |y|)
      z = fn2((z + y) * k * v) + v
   ELSE
      z = fn2((z + x) * k * v) + v
   ENDIF
   |z| <= test
  ;SOURCE: fract196.frm
}


OK-36 {; DISSECTED MANDELBROT
   ; TO GENERATE "STANDARD" MANDELBROT, SET P1 = 0,0 & ALL FN = IDENT
  z = pixel, cx = fn1(real(z)), cy = fn2(imag(z)), k = 2 + p1:
  zx = real(z), zy = imag(z)
  x = fn3(zx*zx - zy*zy) + cx
  y = fn4(k * zx * zy) + cy
  z = x + flip(y)
  |z| <  (10 + p2)
  ;SOURCE: fractint.frm
}


OK-37 {; ANOTHER DISECTED MANDELBROT
   ; TO GENERATE "STANDARD" MANDELBROT, SET P1 = 0,0 & ALL FN = IDENT
  z = pixel, c = fn1(fn2(z)), cx = real(c), cy = imag(c), k = 2 + p1:
  zx = fn3(real(z)), zy = fn4(imag(z))
  x = zx*zx - zy*zy + cx
  y = k * zx * zy + cy
  z = x + flip(y)
  |z| <  (10 + p2)
  ;SOURCE: overkill.frm
}


OK-38 {; DISSECTED CUBIC MANDELBROT
       ; TO GENERATE "STANDARD" CUBIC MANDELBROT, 
       ; SET P1 = 0,0 & ALL FN = IDENT
  z = pixel,  cx = fn1(real(pixel)), cy = fn2(imag(pixel)), k = 3 + p1:
  zx = real(z), zy = imag(z)
  x = fn3(zx*zx*zx - k*zx*zy*zy) + cx
  y = fn4(k*zx*zx*zy - zy*zy*zy) + cy
  z =  x + flip(y)
  |z| <  (4 + p2)
  ;SOURCE: fractint.frm
}


OK-39 {; JUST AN EXPERIMENT
  z = pixel, c = fn1(z), k = p1:
  z = fn2(z*c + k) + c
  |z| <= (20 + p2)
  ;SOURCE: overkill.frm
}


OK-40 {; DISECTED OK-39
       ; (ASSUMING YOU USE OK-39 WITH FN1= IDENT & FN2 = SQR...)
  z = pixel, cx = fn1(real(pixel)), cy = fn2(imag(pixel)), k = 2 + p1:
  zx = real(z), zy = imag(z)
  a = zx*cx - zy*cy
  b = cx*zy + zx*cy
  x = fn3(a*a - b*b) + cx
  y = fn4(k*a*b) + cy
  z = x + flip(y)
  |z| <= (10 + p2)
  ;SOURCE: overkill.frm
}


OK-41 {; DISECTED MANDELLAMBDA
  z = 0.5 + p1, lx = fn1(real(pixel)), ly = fn2(imag(pixel)):
  zx = real(z), zy = imag(z)
  x = fn3(lx*zx + 2*ly*zx*zy - ly*zy - lx*zx*zx + lx*zy*zy)
  y = fn4(ly*zx - 2*lx*zx*zy + lx*zy - ly*zx*zx + ly*zy*zy)
  z = x + flip(y)
  |z| <= (10 + p2)
  ;SOURCE: overkill.frm
}


OK-42 {; MUTATION OF FN + FN
  z = pixel, p1x = real(p1)+1, p1y = imag(p1)+1
  p2x = real(p2)+1, p2y = imag(p2)+1:
  zx = real(z), zy = imag(z)
  x = fn1(zx*p1x - zy*p1y) + fn2(zx*p2x - zy*p2y)
  y = fn3(zx*p1y + zy*p1x) + fn4(zx*p2y + zy*p2x)
  z = x + flip(y)
  |z| <= 20
  ;SOURCE: fractint.frm
}


OK-43 {; DISSECTED SPIDER
   ; TO GENERATE "STANDARD" SPIDER, SET P1 = 0,0 & ALL FN = IDENT
  z = c = pixel, k = 2 + p1:
  zx = real(z), zy = imag(z)
  cx = real(c), cy = imag(c)
  x = fn1(zx*zx - zy*zy) + cx
  y = fn2(k*zx*zy) + cy
  z = x + flip(y)
  c = fn3((cx + flip(cy))/k) + z
  |z| <  (10 + p2)
  ;SOURCE: fractint.frm
}


OK-44 {; DISECTED MANOWAR
   ; TO GENERATE "STANDARD" MANOWAR, SET P1 = 0,0 & ALL FN = IDENT
  z = pixel, z1x = cx = real(pixel), z1y = cy = imag(pixel)
  k = 2 + p1:
  oldzx = zx = real(z), oldzy = zy = imag(z)
  x = fn1(zx*zx - zy*zy) + fn2(z1x) + cx
  y = fn3(k*zx*zy) + fn4(z1y) + cy
  z = x + flip(y)
  z1x = oldzx, z1y = oldzy
  |z| <= (10 + p2)
  ;SOURCE: overkill.frm
}


OK-45 {; ANOTHER LITTLE QUICKY
  z = pixel, c = fn1(pixel), ka = 1 + p1, kb = 1 + p2:
  a = fn2(z), b = fn3(z)
  z = ka*a*a*a + kb*b*b + c
  |z| <= 10
  ;SOURCE: overkill.frm
}


okJ_05 {; Perturbed Julia set
        ; Julia parameter p1 is perturbed by p2*pixel
        ; p2=0 -> no perturbation 
        ; p3 = bailout
  z=pixel
  c=p1+p2*pixel:
  z=z*z+c
  |z|<=p3
  ;SOURCE: 98msg.frm
}


okJ_06 {; Generalized perturbed Julia set
        ; Julia parameter p1 is perturbed by p2*fn1(pixel)
        ; p2=0 -> no perturbation 
        ; p3 = bailout
  z=pixel
  c=p1+p2*fn1(pixel):
  z=z*z+c
  |z|<=p3
  ;SOURCE: 98msg.frm
}


okM_01 { 
  z=0
  c=pixel:
  z=z*z*z*z/(z*z+p1)+c
  |z|<=8
  ;SOURCE: 98msg.frm
}


OldCGNewtonSinExp (XAXIS) {
  z=pixel:
  z1=exp(z)
  z2=sin(z)+z1-z
  z=z-p1*z2/(cosxx(z)+z1)
  .0001 < |z2|
  ;SOURCE: dons.frm
}


OldHalleySin (XYAXIS) {
  z=pixel:
  s=sin(z)
  c=cosxx(z)
  z=z-p1*(s/(c-(s*s)/(c+c)))
  0.0001 <= |s|
  ;SOURCE: fractint.frm
}


OldJulibrot (ORIGIN) {; for Transparent3D
  z = real(zt) + flip(imag(xy))     ; These settings coorespond to the
  c = imag(zt) + flip(real(xy)):    ;  Julia axes as height/width and
                ; the Mandelbrot axes as time/depth
                ; for the 3D image.
  z = Sqr(z) + c
  LastSqr <= 4
  ;SOURCE: improved.frm
}


OldManowar (XAXIS) {
  z0 = 0
  z1 = 0
  test = p1 + 3
  c = pixel :
  z = z1*z1 + z0 + c
  z0 = z1
  z1 = z
  |z| < test
  ;SOURCE: fractint.frm
}


OldNewtonSinExp (XAXIS) {; Chris Green
   ; Newton's formula applied to sin(x)+exp(x)-1=0.
   ; Use floating point.
  z=pixel:
  z1=exp(z)
  z2=sin(z)+z1-1
  z=z-p1*z2/(cosxx(z)+z1)
  .0001 < |z2|
  ;SOURCE: dons.frm
}


Olio {
  z = c = pixel :
  z = z + p1
  z = c * fn1(pixel + z)
  z = sqr(1/z)
  |z| < 4
  ;SOURCE: olio.frm
}


Olio_2 (XAXIS) { 
  z = pixel, fpix = fn1(pixel) + p1:
  z = z + pixel 
  z = z * fpix 
  z = fn2(1/z) 
  |z| < 4
  ;SOURCE: olio.frm
}


Olio_3 (XAXIS) {
  z = pixel, fpix = fn1(pixel) + p1:
  z = z*z + pixel
  z = z * fpix 
  z = fn2(1/z) 
  |z| < 4
  ;SOURCE: olio.frm
}


Olio_4 (XAXIS) { 
  z = c = pixel:
  z = sin(sqr(z)) * fn1(1/c) 
  z = sin(z) + c   
  |z| < 4
  ;SOURCE: olio.frm
}


Olio_4_B (XAXIS) { 
  z = c = pixel:
  z = sin(sqr(z)) * fn1(1/sqr(z)) 
  z = sin(z) + c   
  |z| < 4
  ;SOURCE: olio.frm
}


Olio_5 (XAXIS) {
  z = pixel, sqpix = sqrt(pixel) + p1:
  z = (1/z+z) * sqpix 
  z = (pixel - 1/z) + fn1(z)
  |z| < 4
  ;SOURCE: olio.frm
}


Olio_6 (XAXIS) {
  z = c = pixel:
  z = sqr(c) / sqrt(z)
  z = z*z^1.5 + fn1(z)
  z = (z*3/-2+c^2)
  |z| < 4
  ;SOURCE: olio.frm
}


Olio_6_A (XAXIS) {
  z = c = pixel:
  z = sqr(z) - sqrt(c)
  z = z*z^1.5 + fn1(z)
  z = (z*3/-2+z^2)
  |z| < 4
  ;SOURCE: olio.frm
}


Olio_6_B (XAXIS) {
  z = c = pixel:
  z = sqr(z) - sqrt(c)
  z = z*z^1.5 + fn1(z)
  z = (z*3/-2+c^2)
  |z| < 4
  ;SOURCE: olio.frm
}


Olio_Magnet (XAXIS) {
  z = pixel :
  z = z + p1 + 0.5
  z = z * fn1(pixel) 
  z = sqr(1/z)
  |z| < 4
  ;SOURCE: olio.frm
}


Olio_Srand {
  z = pixel :
  z = z + p1
  z = z * z + srand(z)
  |z| < 4
  ;SOURCE: olio.frm
}


OMEN (XAXIS) {
  Z = PIXEL:
  Z = FN1(Z) + P1
  Z = (Z*Z + P1 - 1 / 2*Z + P1 -2)^2
  Z < 4
  ;SOURCE: the_omen.frm
}


OMEN_2 (XAXIS) {
  Z = PIXEL:
  Z = FN1(Z) + P1 
  Z = (Z*Z*Z+3*Z-1*Z+Z-1*Z-2 / 2*Z*Z+3*Z-2*Z+Z*Z-3*Z+3)^2
  ;SOURCE: the_omen.frm
}


OMEN_3 {
  Z = PIXEL:
  Z = COSH(Z) + (Z - PIXEL)  
  Z = (Z*Z + P1 - 1 / 2*Z + P1 -2) 
  Z = SQR(SIN(Z)) / SQRT(Z)
  |Z| < 4
  ;SOURCE: the_omen.frm
}


OMEN_4 {
  Z = PIXEL:
  Z = Z + Z + P1
  Z = (Z*Z*Z+3*Z-1*Z+Z-1*Z-2 / 2*Z*Z+3*Z-2*Z+Z*Z-3*Z+3)^2
  Z = FN1(Z*Z)/SQRT(Z*Z)
  Z < 4
  ;SOURCE: the_omen.frm
}


OMEN_5 {
  Z = PIXEL:
  Z = Z * Z + P1
  Z = (Z*Z+3*Z-1*Z+Z-2) - (Z*Z+3*Z-2*Z-3)^2
  Z = FN1(Z) + (PIXEL/3)    
  |Z| < 8
  ;SOURCE: the_omen.frm
}


OMEN_6 {
  Z = PIXEL:
  Z = Z * SIN(PIXEL) + P1
  Z = ((Z*Z+3*Z-1*Z+Z-2) - (Z*Z+3*Z-2*Z-3))^2
  Z = (FN1(Z) + SQRT(PIXEL) + PIXEL)    
  |Z| < 4
  ;SOURCE: the_omen.frm
}


Omicron {; Revised for Fractint v20 by G. Martin
  z = pixel:
  z = z + pixel + p1
  z = (1/sqrt(2*3.14)*(z^(-3/2))*(exp(-1/2)))
  |z| < 4
  ;SOURCE: omicron.frm
}


Omicron_2 {
  z = pixel :
  z = (1/sqr(z)) * (z - sqrt(z))
  z = z * fn1(z) + pixel
  z = (z*z*z) * pixel + p1 
  |z| < 16
  ;SOURCE: omicron.frm
}


Omicron_3 {
  z = pixel :
  z = z + pixel + p1
  z = (sqr(z) / sin(z)) * z + pixel
  |z| < 4
  ;SOURCE: omicron.frm
}


Omicron_4 (XAXIS) {
  z = pixel :
  z = (z*z)+(2*z)-3/(z*2)-(z*z)-2
  z = exp(z) * z / fn1(z)
  |z| < 4
  ;SOURCE: omicron.frm
}


Omicron_5 {
  z = pixel:
  z = (1/sqr(z*z))*(exp(-1/2*z))
  z = fn1(z) * z + pixel
  |z| < 4
  ;SOURCE: omicron.frm
}


Omicron_6 {
  z = sqr(pixel):
  z = z + sqr(z) + p1
  z = z + z + pixel
  |z| < 4
  ;SOURCE: omicron.frm
}


Omicron_7 {
  z = pixel:
  z = exp(z) * (z*acosh(z)) * (sqrt(z*z) + p1)
  z = z + pixel 
  |z| < 4
  ;SOURCE: omicron.frm
}


Onamata {; p2 is inverse bailout, set to small nonzero number
         ; like 0.000001.
         ; Freely distributable, by PGD.
  z=pixel
  c=p1:
  oz=z
  z2=z*z
  z3=z*z2
  z4=z*z3
  z5=z*z4
  z=(z5-z4-z3-z-1)/(5*z4-4*z3-3*z2-1)+c
  |z|<127 && |oz-z|>p2
  ;SOURCE: sci_frac.frm
}


One_Piece {; (c) Jay Hill, 1998
           ; use outside=summ periodicity=0 float=y
  done = 1, z = 0, zc = 0, c = pixel
  s=|c|, t1=(256*s - 96)*s + 32*Real(c), t2=16*s + 32*Real(c) + 16
  B=sqrt(-4*c-7), t3=|8+4*c*(1-B)|
  t4=|8+4*c*(1+B)| 
  z=z + 2*(t1<=3) + 2*(t2<=1) + 2*(t3<=1) + 2*(t4<=1)
  IF (z == 0)
    L1=2, L2=2
    IF ((4*c+3) !=0)
      Y=pi*sqrt(-1)/1.5, X = 2*sqrt((4*c+3)/3) 
      X3 = asinh(-16/X^3)/3, Zz = 2*(c+1)*c + 2
      F=X*sinh(X3 + Y), L1= 64*|(c*(F+1)*F + Zz)| 
      F=X*sinh(X3 + 2*Y), L2= 64*|(c*(F+1)*F + Zz)| 
      z=z + 2*(L1<=1) + 2*(L2<=1)
    ENDIF 
  ENDIF
  IF (z>0) 
    done=-1       ; color is set for c in a component, skip iterations
  ENDIF
  :               ; initialization.
  zc=sqr(zc) + c  ; standard MSet iteration
  IF (|zc| >= 4)  ; Bailout at 4
    done=-1       ; Set flag to force an exit.
  ENDIF
  done >= 0       ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}


One_Piece_1 {; (c) Jay Hill, 1998
             ; use outside=summ periodicity=0 float=y
  done = 1, z = 0, zc = 0, c = pixel
  s=|c| 
  t1=((256*s - 96)*s + 32*Real(c)+24)/27 
  t2=16*s + 32*Real(c) + 16
  B=sqrt(-4*c-7) 
  t3=|8+4*c*(1-B)|
  z=z + 128*t2*(t2<=1) +115*((t1<=1) + (t3<=1))
  IF (z == 0)
    L1=2, L2=2
    IF ((4*c+3) !=0)
      Y=pi*sqrt(-1)/1.5, X = 2*sqrt((4*c+3)/3) 
      X3 = asinh(-16/X^3)/3, Zz = 2*(c+1)*c + 2
      F=X*sinh(X3 + Y), L1= 64*|(c*(F+1)*F + Zz)| 
      F=X*sinh(X3 - Y), L2= 64*|(c*(F+1)*F + Zz)| 
      z=z + 115*((L1<=1) + (L2<=1))
    ENDIF 
  ENDIF
  IF (z>0) 
    done=-1     ; color is set for c in a component, skip iterations
  ELSE 
    z=z+128
  ENDIF
  :             ; initialization.
  zc=5
  IF (zc >= 4) 
    done=-1     ; Set flag to force an exit.
  ENDIF
  done >= 0     ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}


One_Piece_M {; (c) Jay Hill, 1998
             ; use outside=summ periodicity=0 float=y
  done = 1, z = 0, zc = 0, c = pixel
  t1=4*(c+1)
  IF (|t1|<1)
    c=2*t1*flip(-1)-.5   ; set up MSet
  ELSE
    t2=4*(c+1)
    t0=(1-sqrt(1-4*c))
    B=sqrt(-4*c-7) 
    t3=|8+4*c*(1-B)| 
    z=z + 2*(|t0|<=1) + 2*(|t2|<=1) + 2*(t3<=1)
    IF (z == 0)
      L1=2, L2=2
      IF ((4*c+3) !=0)
        Y=pi*sqrt(-1)/1.5, X = 2*sqrt((4*c+3)/3) 
        X3 = asinh(-16/X^3)/3, Zz = 2*(c+1)*c + 2
        F=X*sinh(X3 + Y), L1= 64*|(c*(F+1)*F + Zz)| 
        F=X*sinh(X3 - Y), L2= 64*|(c*(F+1)*F + Zz)| 
        z=z + 2*(L1<=1) + 2*(L2<=1)
      ENDIF
    ENDIF
    done=-1              ; color is set for c in a component
  ENDIF
  :                      ; initialization.
  zc=sqr(zc) + c         ; standard MSet iteration
  IF (|zc| >= 8)         ; Bailout at 4
    done=-1              ; Set flag to force an exit.
  ENDIF
  done >= 0              ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}


One_Plus_E {; (c) Jay Hill, 1998
            ; use outside=summ periodicity=0 float=y
  done = 1, z = 0, zc = 0, c = pixel
  t1=8+4*c*(1+sqrt(-4*c-7))
  IF (|t1|<1)
    c=2*t1/600-1.9405
    L1=L2=2
    IF ((4*c+3) !=0)
      Y=pi*sqrt(-1)/1.5, X = 2*sqrt((4*c+3)/3)
      X3 = asinh(-16/X^3)/3, Zz = 2*(c+1)*c + 2
      F=X*sinh(X3 + Y), L1= 64*|(c*(F+1)*F + Zz)|
      F=X*sinh(X3 - Y), L2= 64*|(c*(F+1)*F + Zz)|
      z=z + 2*(L1<=1) + 2*(L2<=1)
    ENDIF
    IF (z>0)
      done=-1
    ENDIF
  ELSE
    z=z + 2*(|t1|<=1)
    IF (z>0)
      done=-1
    ENDIF
  ENDIF
  :                      ; initialization.
  zc=sqr(zc) + c         ; standard MSet iteration
  IF (|zc| >= 800)
    done=-1              ; Set flag to force an exit.
  ENDIF
  done >= 0              ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}


oof1 (XAXIS) {
  z = pixel:
  z = p1 * (z^p2) + p2 * (z^p1)
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof1.frm
}


oof10 {
  z = 1/pixel
  c = pixel:
  z = c * fn1 (z*z) 
  |z| <= p2
  ;SOURCE: kgoof10.frm
}


oof11  {
  z = y = pixel:
  z = fn1(z) * fn2(y) 
  y = fn1(y) / fn2(z)   
  |z| <= p1
  ;SOURCE: kgoof11.frm
}


oof1w (XAXIS) {
  z = pixel * whitesq:
  z = p1 * (z^p2) + p2 * (z^p1)
  z = z + pixel * (whitesq==0)
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof1p.frm
}


oof1x (XAXIS) {; Added variable "newpixel". G. Martin 6/29/99
  newpixel = fn2 (pixel)
  z = newpixel:
  z = p1 * (z^p2) + p2 * (z^p1)
  z = z + newpixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof1x.frm
}


oof2 (XYAXIS) {
  z = pixel:
  z = p1 * (z^p2) - p2 * (z^p1)
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof2.frm
}


oof2w (XYAXIS) {
  z = pixel * whitesq:
  z = p1 * (z^p2) - p2 * (z^p1)
  z = z + pixel * (whitesq==0)
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof2p.frm
}


oof2x (XYAXIS) {; Added variable "newpixel". G. Martin 6/29/99
  newpixel = fn2 (pixel)
  z = p1 * (z^p2) - p2 * (z^p1)
  z = z + newpixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof2x.frm
}


oof3 (XYAXIS) {
  z = pixel:
  z = p1 * (z^p2) - p2 * (fn2(z))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof3.frm
}


oof3W (XYAXIS) {
  z = pixel* whitesq:
  z = p1 * (z^p2) - p2 * (fn2(z))
  z = z + pixel * (whitesq==0)
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof3p.frm
}


oof3x (XYAXIS) {; Added variable "newpixel". G. Martin 6/29/99
  newpixel = fn2 (pixel)
  z = p1 * (z^p2) - p2 * (fn2(z))
  z = z + newpixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof3x.frm
}


oof4 (XYAXIS) {
  z = pixel:
  z = p1 / fn1 (z*z) / (fn2(z))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof4.frm
}


oof4w (XYAXIS) {
  z = pixel * whitesq:
  z = p1 / fn1 (z*z) / (fn2(z))
  z = z + pixel* (whitesq==0)
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof4p.frm
}


oof4x (XYAXIS) {; Added variable "newpixel". G. Martin 6/29/99
  newpixel = fn2 (pixel)
  z = p1 / fn1 (z*z) / (fn2(z))
  z = z + newpixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof4x.frm
}


oof5 (XYAXIS) {
  z = pixel:
  z = p1 / fn1 (z*z) * (fn2(z))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof5.frm
}


oof5w (XYAXIS) {
  z = pixel * whitesq:
  z = p1 / fn1 (z*z) * (fn2(z))
  z = z + pixel* (whitesq==0)
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof5p.frm
}


oof5x (XYAXIS) {; Added variable "newpixel". G. Martin 6/29/99
  newpixel = fn1 (pixel)
  z = newpixel:
  z = p1 / fn1 (z*z) * (fn2(z))
  z = z + newpixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof5x.frm
}


oof6 (XYAXIS) {
  z = c = pixel:
  z = c * fn1 (z*z) * (fn2(z))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof6.frm
}


oof6w (XYAXIS) {
  z = c = pixel * whitesq:
  z = c * fn1 (z*z) * (fn2(z))
  z = z + pixel* (whitesq==0)
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof6p.frm
}


oof6x (XYAXIS) {; Added variable "newpixel". G. Martin 6/29/99
  newpixel = fn1 (pixel) + fn2 (pixel)
  z = c = newpixel:
  z = c * fn1 (z*z) * (fn2(z))
  z = z + newpixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof6x.frm
}


oof7 (XYAXIS) {
  z = pixel:
  z = z^(fn1(z^(p1)))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof7.frm
}


oof7w (XYAXIS) {
  z = pixel * whitesq:
  z = z^(fn1(z^(p1)))
  z = z + pixel* (whitesq==0)
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof7p.frm
}


oof7x (XYAXIS) {; Added variable "newpixel". G. Martin 6/29/99
  newpixel = fn2 (pixel)
  z = newpixel:
  z = z^(fn1(z^(p1)))
  z = z + newpixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof7x.frm
}


oof8 (XYAXIS) {; Revised for Fractint v20 by G. Martin
  z = pixel:
  z = z^(fn2(1))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof8.frm
}


oof8x (XYAXIS) {; Revised for Fractint v20 by G. Martin
                ; Added variable "newpixel". G. Martin 6/29/99  
  newpixel = fn1 (pixel) + fn2 (pixel)
  z = newpixel:
  z = z^(fn2(1))
  z = z + newpixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kgoof8x.frm
}


oof9 {
  z = c = pixel:
  z = c * fn1 (z*z) 
  |z| <= p2
  ;SOURCE: kgoof9.frm
}


oof9x {; Added variable "newpixel". G. Martin 6/29/99
  newpixel = |pixel| + pixel + fn2 (pixel)
  z = c = newpixel:
  z = c * fn1 (z*z) 
  |z| <= p2
  ;SOURCE: kgoof9x.frm
}


oppangle_jul {
        ;
        ; For an explanation of Kerry Mitchell's "2 lines coloring
        ;  method" see the end of formula general_man-2lines
        ;
        ; "2 opposing lines" coloring method for Julia sets
        ; p1 = c = Julia parameter
        ; real(p2) = x-line a = y-line a
        ; imag(p2) = x-line b = negative of y-line b
        ; real(p3) = x-line c
        ; imag(p3) = y-line c
        ; bailout hardcoded to 10^12
        ; use "decomp=256" coloring
        ;
  zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
  ax=real(p2), bx=imag(p2), cx=real(p3)
  ay=ax, by=-bx, cy=imag(p3):
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


oppl {
  z=pixel: 
  z=pixel+sin(pixel*z)+z*z
  |z|<=4
  ;SOURCE: test.frm
}


ORing_Series_Mset {; Copyright (c) Paul Carlson, 1998
    ; real(p1) = radius of large circle
    ; imag(p1) = number of iterations to skip
    ; real(p2) = number of color ranges
    ; imag(p2) = number of colors in a range
    ;
  w = z = iter = range_num = 0
  c = pixel
  r = real(p1)
  skip_iters = imag(p1)
  num_ranges = real(p2)
  colors_in_range = imag(p2)
  s2 = sqrt(2), ro = r * s2, r2 = r * r, k = r / s2
  index_factor = (colors_in_range - 1) / k
  :
  w2 = w*w, w4 = .01*w2*w2, w8 = w4*w4, w12 = w4*w8, w16 = w4*w12
  w = w2 - w4 - w8 - w12 - w16 + c
  wr = real(w), wi = imag(w), wr2 = wr * wr, wi2 = wi * wi
    ;
  c0 = ((wr2 + wi2) < r2)                   ; large circle
  c1 = (((wr - ro) * (wr - ro) + wi2) < r2) ; circle 1
  c2 = ((wr2 + (wi + ro) * (wi + ro)) < r2) ; circle 2
  c3 = (((wr + ro) * (wr + ro) + wi2) < r2) ; circle 3
  c4 = ((wr2 + (wi - ro) * (wi - ro)) < r2) ; circle 4
    ;
  IF (c0 && c1)     ; if inside large circle and circle 1
    dist = (wr - k) * (wr - k) + wi2
  ELSEIF (c0 && c2) ; if inside large circle and circle 2
    dist = wr2 + (wi + k) * (wi + k)
  ELSEIF (c0 && c3) ; if inside large circle and circle 3
    dist = (wr + k) * (wr + k) + wi2
  ELSEIF (c0 && c4) ; if inside large circle and circle 4
    dist = wr2 + (wi - k) * (wi - k)
  ELSE
    dist = 0
  ENDIF
  IF (dist > 0 && iter > skip_iters)
    index = index_factor * sqrt(dist)
    z = index + range_num * colors_in_range + 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  dist == 0 && |w| < 1.0e20
  ;SOURCE: 98msg.frm
}


Ormandel11 (YAXIS) {; Copr. 1995 by Jack A. Orman
  z=c=pixel, t=2+pixel:
  neg=(fn1(z)/fn2(z))^p1 * (z<t)
  pos=(fn1(z)/fn2(z))^p1 * (z>=t)
  z=neg + pos + c
  |z|<t
  ;SOURCE: jack5.frm
}


Ormandel12(YAXIS) {; Copr. 1995 by Jack A. Orman
  z=c=pixel, t=pixel:
  t=t+pixel
  neg=(fn1(z)/fn2(z))^p1 * (z<t)
  pos=(fn1(z)/fn2(z))^p1 * (z>=t)
  z=neg + pos + c
  |z|<t
  ;SOURCE: jack5.frm
}


Ormandel13(YAXIS) {; Copr. 1995 by Jack A. Orman
  z=c=pixel:
  neg= (fn1(z^3+z^2+z))^p1 * (z<pixel)
  pos= (fn2(z^3+z^2+z))^p2 * (z>=pixel)
  z=neg + pos + c
  |z|<16
  ;SOURCE: jack5.frm
}


Ormandel14(YAXIS) {; Copr. 1995 by Jack A. Orman
  z=c=pixel:
  neg= (fn1(z^3+z^2+z))^p1
  pos= (fn2(z^3+z^2+z))^p2
  z=(neg * pos) + c + (0.75,0)
  |z|<4
  ;SOURCE: jack5.frm
}


Ormandel15 {; Copr. 1995 by Jack A. Orman
  z=pixel, c=pixel^p1:
  z=fn1(z*z)+c
  ;SOURCE: jack5.frm
}


Ormandel16 {; Copr. 1995 by Jack A. Orman
z=c=pixel:
  temp=z
  neg= z^2 * (zp<pixel)
  pos= z^3 * (zp>pixel)
  z=neg + pos + c
  zp=fn1(temp)
  |z|<4
  ;SOURCE: jack5.frm
}


Ormandel17(YAXIS) {; Copr. 1995 by Jack A. Orman
z=c=pixel:
  temp=z
  neg= (fn1(z^3+z^2+z))^p1
  pos= (fn2(z^3+z^2+z))^p2
  z=(neg * pos) + c + zp
  zp=sqrt(temp)
  |z|<4
  ;SOURCE: jack5.frm
}


Ormandel17_m {; Copr. 1995 by Jack A. Orman
              ; assignment "zp=" moved higher up formula                                    
  z=c=pixel:
  temp=z
  zp=sqrt(temp)
  neg= (fn1(z^3+z^2+z))^p1
  pos= (fn2(z^3+z^2+z))^p2
  z=(neg * pos) + c + zp
  |z|<4
  ;SOURCE: 96msg.frm
}


Ormandel17a (YAXIS) {; Copr. 1995 by Jack A. Orman - revised by Sylvie Gallet
  z=c=pixel, zp = sqrt(pixel):
  temp=z
  polyz = z*(1+z*(z+1))  ; polyz = z^3+z^2+z
  neg= (fn1(polyz))^p1
  pos= (fn2(polyz))^p2
  z=(neg * pos) + c + zp
  zp=sqrt(temp)
  |z|<4
  ;SOURCE: orman17a.frm
}


Ormandel17m {; Copr. 1995 by Jack A. Orman 
  zp = pixel^(1/6)
  z=c=pixel :
  temp=z
  neg= (fn1(z^3+z^2+z))^p1
  pos= (fn2(z^3+z^2+z))^p2
  z=(neg * pos) + c + zp
  zp=sqrt(temp)
  |z|<4
  ;SOURCE: 96msg.frm
}


Ormandel18 {; Copr. 1995 by Jack A. Orman
  z=0, c=pixel, c1=pixel, c2=1/pixel:
  z=z^p1 + c1 + c2
  |z|<4
  ;SOURCE: jack5.frm
}


OrmanDelbrot1 {; Copr. 1995 by Jack Orman
  c = z = Pixel:
  z = fn1(z^3+z^2+z+c)*c
  |z| <= 4
  ;SOURCE: orman.frm
}


OrmanDelbrot10 {; Copr. 1995 by Jack Orman
  z = Pixel, c=fn1(pixel):
  z =(fn2(z^p1)*c)^p2+pixel
  |z| <= 16
  ;SOURCE: orman.frm
}


OrmanDelbrot11 {; Copr. 1995 by Jack Orman
  c = z = Pixel:
  z = fn1(z)^p1 + fn2(c)*p2
  |z| <= 16
  ;SOURCE: orman.frm
}


Ormandelbrot12 {; Copr. 1995 by Jack A. Orman
                ; Edited for Fractint v. 20 by George Martin, 10/98
  z=pixel, x=|z|:
  IF (x>1)
    z = fn1(z) + pixel
  ELSE
    z = fn1(z) + z
  ENDIF
  x<=4 
  ;SOURCE: orman.frm
}


OrmanDelbrot2 {; Copr. 1995 by Jack Orman
  c=z=pixel:
  z=(c*z)^p1+(c*z*z)+c
  |z|<=4
  ;SOURCE: orman.frm
}


Ormandelbrot20 {
  z=c=pixel:
  z=(z*z+c)/(z*z-c)
  |z|<4
  ;SOURCE: orman2.frm
}


Ormandelbrot20A {
  z=pixel, C=P1:
  z=(z*z+c)*(z*z-c)
  |z|<4
  ;SOURCE: orman2.frm
}


Ormandelbrot21 {
  z=c=pixel:
  z=(z*z-c)/(z*z+c)
  |z|<4
  ;SOURCE: orman2.frm
}


Ormandelbrot22 {
  z=c=pixel:
  z=(z*z+c)*(z*z-c)
  |z|<4
  ;SOURCE: orman2.frm
}


Ormandelbrot23 {
  z=c=pixel:
  z=(z*z+c)+(z*z-c)
  |z|<4
  ;SOURCE: orman2.frm
}


Ormandelbrot24 {
  z=c=pixel:
  z=fn1(z*z+c)/fn2(z*z-c)
  |z|<4
  ;SOURCE: orman2.frm
}


Ormandelbrot25 {
  z=c=pixel:
  z=fn1(z*z+c)*fn2(z*z-c)
  |z|<4
  ;SOURCE: orman2.frm
}


Ormandelbrot26 {
  z=c=pixel:
  z=fn1(z*z+c)+fn2(z*z-c)
  |z|<4
  ;SOURCE: orman2.frm
}


Ormandelbrot27 {
  z=c=pixel:
  z=fn1(z*z)/z*z + c
  |z|<4
  ;SOURCE: orman2.frm
}


Ormandelbrot28 {
  z=c=pixel:
  z=(z*z)/fn1(z*z) + c
  |z|<4
  ;SOURCE: orman2.frm
}


Ormandelbrot29 {
  z=c=pixel, x=.1:
  z= z*z + (c * fn1(z))
  c=c + x
  |z|<4
  ;SOURCE: orman2.frm
}


OrmanDelbrot3 {; Copr. 1995 by Jack Orman
  z = Pixel:
  z = pixel * fn1(z)
  |Real(z)| <=  32
  ;SOURCE: orman.frm
}


Ormandelbrot30 {
  z=c=pixel:
  z= z*z + (c * fn1(z))
  |z|<4
  ;SOURCE: orman2.frm
}


Ormandelbrot31 {
  z=c=oldz=pixel:
  neg=(|z|<=|oldz|) * (z*z + c)
  pos=(|oldz|<|z|)  * (z*z - c)
  oldz=z
  z=neg + pos
  oldz=temp
  |z|<=4
  ;SOURCE: orman2.frm
}


Ormandelbrot32 {
  z=c=pixel:
  z=1/(z*z + c) + 1/(z*z - c)
  |z|<4
  ;SOURCE: orman2.frm
}


Ormandelbrot33 {
  z=c=pixel:
  z=fn1(1/(z*z + c)) * fn2(1/(z*z - c))
  |z|<4
  ;SOURCE: orman2.frm
}


Ormandelbrot34 {
  z=c=pixel:
  z=fn1(fn2(z*z+c)*(z*z-c))
  |z|<4
  ;SOURCE: orman2.frm
}


Ormandelbrot35 {
  z=c=pixel:
  z=1/((z*z + c) * (z*z - c))
  |z|<4
  ;SOURCE: orman2.frm
}


Ormandelbrot36 {
  z=c=pixel:
  z=fn1(z*z-c)*(z*z+c)
  |z|<4
  ;SOURCE: orman2.frm
}


Ormandelbrot37 {
  z=c=pixel:
  z=fn1(pixel/(z*z-c)*(z*z+c))
  |z|<4
  ;SOURCE: orman2.frm
}


Ormandelbrot38 {
  z=c=pixel:
  z=fn1(z*z-c)/(z*z+c)
  |z|<4
  ;SOURCE: orman2.frm
}


Ormandelbrot38A {
  z=c=pixel:
  z=(z*z-c)/fn1(z*z+c)
  |z|<4
  ;SOURCE: orman2.frm
}


Ormandelbrot38B {
  z=c=pixel:
  z=fn1(z*z-c) && fn2(z*z+c)
  |z|<4
  ;SOURCE: orman2.frm
}


Ormandelbrot39 {
  z=c=pixel:
  z=fn1(z*z-c) || fn2(z*z+c)
  |z|<4
  ;SOURCE: orman2.frm
}


OrmanDelbrot4 {; Copr. 1995 by Jack Orman
  c = z = pixel:
  z = z^p1 + fn1(p2)
  |z| <= 4
  ;SOURCE: orman.frm
}


Ormandelbrot40 {
  c=z=pixel, zp=.1:
  z=z*z + zp + c
  zp=z
  |z|<4
  ;SOURCE: orman2.frm
}


Ormandelbrot41 {
  c=z=pixel, zp=.1:
  z=fn1((z*z+c)/(z*z-c))
  zp=z
  |z|<4
  ;SOURCE: orman2.frm
}


Ormandelbrot42 {
  z=pixel, c=p1:
  z=(z*z+c)/(z*z-c)
  |z|<4
  ;SOURCE: orman2.frm
}


Ormandelbrot43 {
  z=pixel, z=sqr(z), c=p1:
  z=z*z + c
  z=fn1(z)
  |z|<4
  ;SOURCE: orman2.frm
}


Ormandelbrot44 {
  z=pixel, c=p1:
  z=z*z + c
  z=fn1(z)
  |z|<4
  ;SOURCE: orman2.frm
}


Ormandelbrot45 {
  z=c=pixel:
  z=p1*z*(1-z)+c
  |z|<=4
  ;SOURCE: orman3.frm
}


Ormandelbrot46 {
  z=c=pixel:
  z=c*z*(1-z)
  |z|<=4
  ;SOURCE: orman3.frm
}


Ormandelbrot47 {
  z=pixel:
  z=p1*z*(1-z)
  |z|<=4
  ;SOURCE: orman3.frm
}


Ormandelbrot48 {
  z=pixel, c=p1:
  z=sqr(sqr(z)+fn1(c)/sqr(z)-fn2(c))
  |z|<=4
  ;SOURCE: orman3.frm
}


Ormandelbrot49 {
  z = c =pixel, d=p1:
  z = sqr(z) + C + D
  z <= 4 
  ;SOURCE: orman3.frm
}


OrmanDelbrot5 {; Copr. 1995 by Jack Orman
  z = Pixel:
  a=p1
  b=p1-1
  c=p1-2
  z = Z^a-z^b-z^c-p2
  |z| <= 4
  ;SOURCE: orman.frm
}


Ormandelbrot50 {; Mandel-Julia Hybrid
  z = c =pixel, d=p1:
  z = (sqr(z) + C)*(Sqr(z) + D)
  z <= 4 
  ;SOURCE: orman3.frm
}


Ormandelbrot51 {; Mandel-Julia Hybrid
  z = c =pixel, d=p1:
  z = (sqr(z) + C)+(Sqr(z) + D)
  z <= 4 
  ;SOURCE: orman3.frm
}


Ormandelbrot52 {
  z=c=pixel:
  z= z * fn1(z) + c
  z<=4
  ;SOURCE: orman3.frm
}


Ormandelbrot53 {
  z=c=pixel:
  z= sqr(z) + fn1(z)
  |z|<=4
  ;SOURCE: orman3.frm
}


Ormandelbrot54 {
  z=c=pixel:
  z= z * fn1(z)/fn2(z) + c
  z<=4
  ;SOURCE: orman3.frm
}


Ormandelbrot55 {
  z=c=pixel:
  z= p1*z*(1-3*fn1(z))
  |z|<=4
  ;SOURCE: orman3.frm
}


OrmanDelbrot6 {; Copr. 1995 by Jack Orman
  z = Pixel:
  a=p1
  b=p1-1
  c=p1-2
  z = ((Z^a-z^b-z^c)/p1)-p2
  |z| <= 8
  ;SOURCE: orman.frm
}


OrmanDelbrot7 {; Copr. 1995 by Jack Orman
  z = Pixel:
  z = cotan(z)^z + c
  |z| <= 8
  ;SOURCE: orman.frm
}


OrmanDelbrot8 {; Copr. 1995 by Jack Orman
  c = z = Pixel:
  z =  (z^6+z^5+z^4+z^3+z^2+z+c)/p1
  |z| <= 4
  ;SOURCE: orman.frm
}


OrmanDelbrot9 {; Copr. 1995 by Jack Orman
  z = Pixel:
  z = fn1(z^5 * z^4)/fn2(z^3 * z^2 * z) + c
  |z| <= 32
  ;SOURCE: orman.frm
}


OrmandelCycle {; Copr. 1995 by Jack Orman
  z = pixel, c = fn1(pixel):
  temp=z
  z = z*zp + c
  zp=temp
  |z| <= 4
  ;SOURCE: jack5.frm
}


OrmandelFunc {; Copr. 1995 by Jack Orman
  z = pixel, c = fn1(pixel):
  z = sqr(z) + c
  |z| <= 4
  ;SOURCE: orman.frm
}


OrmandelPower {; Copr. 1995 by Jack Orman
               ; Start with Fn1=ident and Fn2=cotanh
               ; and P1 = 2
  c=z=pixel:
  z=(fn1(z)/fn2(z))^p1 + c
  |z|<4
  ;SOURCE: orman.frm
}


OrmandelTemp {; Copr. 1995 by Jack Orman
              ; Start with Fn1=ident and Fn2=cotanh
              ; and P1 = 2
  c=cosxx(pixel/z), z=pixel:
  z=z^p1+ c + fn1(pixel)
  |z|<4
  ;SOURCE: jack5.frm
}


orthogonal_jul {
        ;
        ; For an explanation of Kerry Mitchell's "2 lines coloring
        ;  method" see the end of formula general_man-2lines
        ;
        ; "2 orthogonal lines" coloring method for Julia sets
        ; p1 = c = Julia parameter
        ; real(p2) = x-line a = negative of y-line b
        ; imag(p2) = x-line b = negative of y-line a
        ; real(p3) = x-line c
        ; imag(p3) = y-line c
        ; bailout hardcoded to 10^12
        ; use "decomp=256" coloring
        ;
  zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
  ax=real(p2), bx=imag(p2), cx=real(p3)
  ay=bx, by=-ax, cy=imag(p3):
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


OscillatorJul (XAxis) {; Should be a dynamical orbit, really
                       ; Source: Ian Stewart: "Portraits of Chaos"
                       ; The New Scientist Guide to Chaos
                       ; (Penguin Books, 1991)
  bailout=real(p2)
  p=real(p1)
  z=pixel:
  x=real(z)
  y=imag(z)
  t=2*(sqr(x)+sqr(y))-p
  x=t*x-(sqr(x)-sqr(y))/2
  y=(t+x)*y
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: 98msg.frm
}


Other {
   ; (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = pixel:
  z = z * z * z * z / (4 * z * z * z - 1)
  |z| <= 4
  ;SOURCE: methods.frm
}


other_Muth {; Jim Muth
            ; As Posted in Fractal-Art, 4/97
            ; Renamed from "other" because of name conflict
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=c=pixel:
  z=z+(-4*(z^(-4)))+c^10+c
  |z| <= 100
  ;SOURCE: 97msg.frm
}


Outer_Cres (XAXIS_NOIMAG) {; another M-Set to Moonworld
                           ; (c) 1997 Bernd Lehnhoff
                           ; use floating point and periodicity=no!
                           ; p1 is the radicand
  v = pixel
  a = log(|pixel|)-12
  c = sqr(p1)
  d = pixel - p1: 
  u = v
  v = (u + c/u)/2 + d
  z = v - u
  log(|z|) >= a
  ;SOURCE: 97msg.frm
}


Oval2 {; Giuseppe Zito
       ; c1 = 0.08
  z=pixel, c1 = real(p1), c2 = imag(p1):
  x = real(z), y = imag(z)
  newx = -y*y - c1
  newy = x*y + 2.*y 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4
  ;SOURCE: zg.frm
}


overflow {
  z = c = pixel, x = 0:
  x = (1,0.4)*sin(x)
  z = z*z + c
  |z| <= 4
  ;SOURCE: test.frm
}

