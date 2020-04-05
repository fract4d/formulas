Hi, I`m Albrecht Niekamp, Duesseldorf
Niekamp@Online-club.de

This is my first try to publish formulas for the fractint users.
These frm-files correspond to the par-files with the same .name.
The basic formula (Nr.13 or 13a) was first used on my Multifrac 
program for the good old AtariXL.  All other formulas are 
variations of this one.  Try yourself, You`ll see that they are 
very easy to edit.  Suggstions, new par-files or variations are 
welcome.

--------------------------------------------------------------

multifrac1 {
  z = pixel:
  y2=y*y
  x2=x*x
  x=x2-y2-p1
  y=x2*x*y-p2
  z = sqr(z)
  |z| > (x2+y2)
  }

multifrac2 {
  z = pixel:
  y2=y*y
  x2=x*x
  x=x2-y2-p1
  y=x2*x*y-p2
  z = sqr(z)+x
  |z| > (x2+y2)
  }

multifrac3 {
  z = pixel:
  y2=y*y
  x2=x*x
  x=x2-y2-p1
  y=x2*x*y-p2
  z = sqr(z)+x+y
  |z| > (x2+y2)
  }

multifrac4 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = sqr(z+x+y)
  |z| > (x2+y2)
  }

multifrac5 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = sqr(z+x-y)
  |z| > (x2+y2)
  }

multifrac6 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = sqr(z-x+y)
  |z| > (x2+y2)
  }

multifrac7 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = z^(z+x-y)    
  |z| > (x2+y2)
  }

multifrac8 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = z^(z-x+y)    
  |z| > (x2+y2)
  }  

multifrac9 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = abs(x)*x*y-p2
  z = z^(z-x+y)    
  |z| > (x2+y2)
  }

multifrac10 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p1
  z = z^(z-x+y)    
  |z| > (x2+y2)
  }

multifrac11 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = sqr(z-x+y)
  |z| > (x2+y2+z)
  }
 
multifrac12 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = sqr(z)
  |z| > (x+y+z)
  }

multifrac13 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = sqr(z)
  |z| > (x2+y2)
  }
 
multifrac13a {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = fn1(z)
  |z| > (x2+y2)
  }

multifrac14 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = z^(z-x+y)    
  |z| > 4
  }

multifrac15 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = z^(z-x+y)    
  |z| > (x2*y2)
  }

multifrac16 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = sqr(z-x+y)    
  |z| > (x2*y2)
  }

multifrac17 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = sqr(z)    
  |z| > (x2*y2)
  }

multifrac18 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = sqr(z+x-y)    
  |z| > (x*y)
  }

multifrac19 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = z^(z-x+y)    
  |z| > (x*y)
  }

multifrac20 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  if (x<y)
  y=2*x*y-p2
  else
  y=2*x*y-p1
  endif
  z = z^(z-x+y)    
  |z| > (x2+y2)
  }
 
multifrac21 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  if (x<y)
  y=2*x*y-p2
  else
  y=abs(x)*y*x-p2
  endif
  z = z^(z-x+y)    
  |z| > (x2+y2)
  }
 
multifrac22 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  if (x<y)
  y=2*x*y-p2
  else
  y=abs(x)*y*x-p2
  endif
  z = z^(z-x+y)    
  |z| > (x2*y2)
  }

multifrac23 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  if (x<y)
  y=2*x*y-p2
  z=z^(z-x+y)
  else
  y=abs(x)*y*x-p2
  z=sqr(z-x+y)
  endif
  |z| > (x2*y2)
  }

multifrac24 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  if (x<y)
  y=abs(y)*x*y-p2
  z=z^(z-x+y)
  else
  y=abs(x)*y*x-p2
  z=sqr(z-x+y)
  endif
  |z| > (x2*y2)
  }

multifrac25 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  if (x<y)
  y=abs(y)*x*y-p2
  z=z^(z-x-y)
  else
  y=abs(x)*y*x-p2
  z=sqr(z-x+y)
  endif
  |z| > (x2*y2)
  }

multifrac26 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  if (x<y)
  y=abs(y)*x*y-p2
  z=z^(z-x-y)
  else
  y=abs(x)*y*x-p2
  z=sqr(z-x-y)
  endif
  |z| > (x2*y2)
  }

multifrac27 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  if (x2<y2)
  y=abs(y)*x*y-p2
  z=z^(z-x-y)
  else
  y=abs(x)*y*x-p2
  z=sqr(z-x-y)
  endif
  |z| > (x2*y2)
  }

multifrac28 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  if (x2<y2)
  y=2*x*y-p2
  z=z^(z-x-y)
  else
  y=abs(x)*y*x-p2
  z=sqr(z-x-y)
  endif
  |z| > (x2*y2)
  }

multifrac29 {
  w = pixel:
  y2 = y*y
  x2 = x*x
  z2 = z*z
  x = x2-y2-p1
  y = 2*x*y-p2
  z = x2-z2-p3
  w = sqr(w-x-y-z)
  |w| > (x2+z2)
  }

multifrac30 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x = x2-y2-p1
  y = 2*x*y-p2
  w = x2-w2-p3
  z = sqr(z-x-y-w)
  |z| > (x2+w2+y2)
  }

multifrac31 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x = x2-y2-p1
  y = 2*x*y-p2
  w = x2-w2-p3
  z = z^(z-x-y-w)
  |z| > (x2+w2+y2)
  }

multifrac32 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x = x2-y2-p1
  y = 2*x*y-p2
  w = x2-w2-p3
  z = z^(z-x-y-w)
  |z| > (x2*w2*y2)
  }

multifrac33 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x=x2-y2-p1 
  if (x<y)
  y=abs(x)*x*y-p2
  w=x2-w2-p3  
  z=sqr(z-x-y-w)
  else
  w=2*x*w-p3
  y = abs(w)*x*y-p2
  z=z^(z-x-y-w)
  endif
  |z| > (x2+w2+y2)
  }

multifrac34 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x=x2-y2-p1 
  if (x<y)
  y=abs(x)*x*y-p2
  w=x2-w2-p3  
  z=sqr(z-x-y-w)
  else
  w=2*x*w-p3
  y = abs(w)*x*y-p2
  z=z^(z-x-y-w)
  endif
  |z| > (x2*w2*y2)
  }

multifrac35 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x=x2-y2-p1 
  if (x<y)
  y=abs(x)*x*y-p2
  w=x2-w2-p3  
  z=sqr(z-x-y-w)
  else
  y=abs(w)*x*y-p2
  if (x<w)
  w=abs(x)*x*w-p3
  else
  w=abs(y)*x*w-p3
  endif
  z=z^(z-x-y-w)
  endif
  |z| > (x2*w2*y2)
  }

multifrac36 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x=x2-y2-p1 
  if (x<y)
  y=abs(x)*x*y-p2
  if (y<w)
  w=x2-w2-p3  
  else
  w=y2-w2-p3
  endif
  z=sqr(z-x-y-w)
  else
  y=abs(w)*x*y-p2
  if (x<w)
  w=abs(x)*x*w-p3
  else
  w=abs(y)*x*w-p3
  endif
  z=z^(z-x-y-w)
  endif
  |z| > (x2*w2*y2)
  }

multifrac37 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x=x2-y2-w2-p1 
  if (x<y)
  y=abs(x)*x*y-p2
  if (y<w)
  w=x2-w2-p3  
  else
  w=y2-w2-p3
  endif
  z=sqr(z-x-y-w)
  else
  y=abs(w)*x*y-p2
  if (x<w)
  w=abs(x)*x*w-p3
  else
  w=abs(y)*x*w-p3
  endif
  z=z^(z-x-y-w)
  endif
  |z| > (x2*w2*y2)
  }

multifrac38 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x=x2-y2-w2-p1 
  if (x<y)
  y=abs(x)*x*y-p2
  if (y<w)
  w=x2-w2-p3  
  else
  w=y2-w2-p3
  endif
  z=sqr(z-x-y-w)
  else
  y=abs(w)*x*y-p2
  if (x<w)
  w=abs(y)*x*w-p3
  else
  w=abs(x)*y*w-p3
  endif
  z=z^(z-x-y-w)
  endif
  |z| > (x2*w2*y2)
  }

multifrac39 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x=x2-y2-w2-p1 
  if (x>y)
  y=abs(x)*x*y-p2
  if (y<w)
  w=x2-w2-p3  
  else
  w=y2-w2-p3
  endif
  z=sqr(z-x-y-w)
  else
  y=abs(w)*x*y-p2
  if (x>w)
  w=abs(y)*x*w-p3
  else
  w=abs(x)*y*w-p3
  endif
  z=z^(z-x-y-w)
  endif
  |z| > (x2*w2*y2)
  }

multifrac40 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x = x2-y2-p1
  y = 2*x*y-p2
  w = 2*x*w-p3
  z = z^(z-x-y-w)
  |z| > (x2*w2*y2)
  }

multifrac41 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x = x2-y2-w2-p1
  y = abs(w)*x*y-p2
  w = abs(y)*x*w-p3
  z = z^(z-x-y-w)
  |z| > (x2*w2*y2)
  }

multifrac42 {
  z = pixel:
  x = fn1(x)-y
  y = fn2(y)-x
  z = z^(z-x-y)
  |z| > (x*y)
  }

multifrac43 {
  z = pixel:
  x = fn1(x)-y
  y = fn2(y)-x
  w = fn3(w)-x
  z = z^(z-x-y-w)
  |z| > (x*y*w)
  }

multifrac44 {
  z = pixel:
  x = fn1(x)-y
  y = fn2(y)-x
  w = fn3(w)-x
  z = sqr(z)-x-y-w
  |z| > (x*y*w)
  }

multifrac45 {
  z = pixel:
  x = fn1(x)-y
  y = fn2(y)-x
  w = fn3(w)-y
  z = sqr(z)-x-y-w
  |z| > (x*y*w)
  }

multifrac46 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  w2=fn3(w)
  if (x2>y2)
  x = x2-y
  y = y2-w 
  w = w2-x
  z = z^(z-x-y-w)
  else
  x=2*x2*y
  y=2*y2*w
  w=2*w2*x
  z=sqr(z)-x-y-w
  endif
  |z| > (x*y*w)
  }

multifrac47 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  w2=fn3(w)
  if (x2>y2)
  x = x2-y
  y = y2-w 
  w = w2-x
  z = z^(z-x-y-w)
  else
  x=2*x2*y
  y=2*y2*w
  w=2*w2*x
  z=sqr(z-x-y-w)
  endif
  |z| > (x*y*w)
  }

multifrac48 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  w2=fn3(w)
  if (x2>y2)
  x = x2-y
  y = y2-w 
  w = w2-x
  z = z^(z)-x-y-w
  else
  x=2*x2*y
  y=2*y2*w
  w=2*w2*x
  z=sqr(z)-x-y-w
  endif
  |z| > (x*y*w)
  }

multifrac49 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  z2=fn3(z)
  if (x2>y2)
  x = x2-y
  y = y2-z 
  z = z2-x
  z = z^(z)-x-y
  else
  x=2*x2*y
  y=2*y2*w
  z=2*z2*x
  z=sqr(z)-x-y
  endif
  |z| > (x*y*z)
  }

multifrac50 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  z2=fn3(z)
  if (x2>y2)
  x = x2-y
  y = y2-z 
  z = z2-x
  z = z^(z-x-y)
  else
  x=2*x2*y
  y=2*y2*z
  z=2*z2*x
  z=sqr(z-x-y)
  endif
  |z| > (x*y-z)
  }

multifrac51 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  z2=fn3(z)
  if (x2>y2)
  x = x2-y2
  y = y2-z2
  z = z2-x2
  z = z^(z-x-y)
  else
  x=2*x2*y2
  y=2*y2*z2
  z=2*z2*x2
  z=sqr(z-x-y)
  endif
  |z| > (x*y*z)
  }

multifrac52 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  if (x2>y2)
  x = x2-y
  y = y2-z 
  z = z^(z-x-y)
  else
  x=2*x2*y
  y=2*y2*z
  z=sqr(z-x-y)
  endif
  |z| > (x*y)
  }
 
multifrac53 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  if (x2>y2)
  x = x2-y2
  y = y2-x2
  z = z^(z-x-y)
  else
  x=x2-y2
  y=2*y2*x2
  z=sqr(z-x-y)
  endif
  |z| > (x*y)
  }

multifrac54 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  if (x2>y2)
  x = x2-y2
  y = y2-x2
  z = z^(z-x-y)
  else
  x=fn3(x)+p1
  z=sqr(z)-x
  endif
  |z| > x
  }

multifrac55 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  if (x2>y2)
  x = x2-y2
  y = y2-x2
  z = z^(z-x-y)
  else
  x=fn3(x)+p1
  z=sqr(z-x)
  endif
  |z| > x
  }

multifrac56 {
  z=p1 
  c =pixel:
  y2=fn2(y)
  x2=fn1(x)
  if (x2<y2)
  x = x2-y2
  y = y2-x2
  z = sqr(z)-x-y
  |z| > (x*y)
  else
  z=sqr(z)+c
  |z| < 4
  endif
  }

multifrac57 {
  z=p1 
  c =pixel:
  y2=fn2(y)
  x2=fn1(x)
  if (x2<y2)
  x = x2-y2
  y = 2*y2*x2
  z = sqr(z)-x-y
  |z| > (x*y)
  else
  z=sqr(z)+c
  |z| < 4
  endif
  }

multifrac58 {
  z=p1 
  c =pixel:
  y2=fn2(y)
  x2=fn1(x)
  if (x2>y2)
  x = x2-y2
  y = 2*y2*x2
  z = sqr(z)-x-y
  |z| > (x*y)
  else
  z=sqr(z)+c
  |z| < 4
  endif
  }

multifrac59 {
  z =pixel:
  y2=fn2(y)
  x2=fn1(x)
  x = x2-y2
  if (x2<y2)
  y = 2*y2*x2
  z = sqr(z)-x-y
  else
  y= y2-x2
  z=sqr(z-x-y)
  endif
  |z| > (x*y)
  }

multifrac60{
  z =pixel:
  y2=fn2(y)
  x2=fn1(x)
  x = x2-y2-p1
  if (x2<y2)
  y = 2*y2*x2-p2
  z = sqr(z)-x-y
  else
  y= y2-x2-p2
  z=sqr(z-x-y)
  endif
  |z| > (x-y)
  }

multifrac61 {
  z =pixel:
  y2=tan(y)
  x2=cabs(x)
  x = x2-y2-p1
  if (x2<y2)
  y = 2*y2*x2-p2
  z = sqr(z)-x-y
  else
  y= y2-x2-p2
  z=sqr(z-x-y)
  endif
  |z| > (x*y)
  }

multifrac62 {
  z = pixel:
  y2=fn2(y)+p1
  x2=fn1(x)+p2
  w2=fn3(w)+p3
  if (x2>y2)
  x = x2-y2
  y = y2-w2
  w = w2-x2
  z = z^(z-x-y-w)
  else
  x=2*x2*y2
  y=2*y2*w2
  w=2*w2*x2
  z=sqr(z-x-y-w)
  endif
  |z| > (x*y*w)
  }

multifrac63 {
  z = pixel:
  y2=fn2(y+p1)
  x2=fn1(x+p2)
  w2=fn3(w+p3)
  if (x2>y2)
  x = x2-y2
  y = y2-w2
  w = w2-x2
  z = z^(z-x-y-w)
  else
  x=2*x2*y2
  y=2*y2*w2
  w=2*w2*x2
  z=sqr(z-x-y-w)
  endif
  |z| > (x*y*w)
  }

multifrac64 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = y2-x2-p2
  z = fn1(z)+x+y
  |z| > (x2+y2)
  }

multifrac65 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2*y2-p1
  y = y2-x2-p2
  z = fn1(z)+x+y
  |z| > (x2*y2)
  }

multifrac66 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = y2-x2-p2
  z = fn1(z)+x+y
  |z| > (x2*y2)
  }

multifrac67 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  if (x2<y2)
  x=x2-y2-p1 
  y=y2-x2-p2
  if (y2<w2)
  w=w2-x2-p3  
  else
  w=w2-y2-p3
  endif
  z=fn1(z+x+y+w)
  else
  x=x2*y2-p1
  y=2*x2*y2-p2
  if (x2<w2)
  w=2*x2*w2-p3
  else
  w=2*y2*w2-p3
  endif
  z=fn2(z+x+y+w)
  endif
  |z| > (x2+w2+y2)
  }

multifrac68 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  if (x2<y2)
  x=x2-y2-p1 
  y=y2-x2-p2
  if (y2<w2)
  w=w2-x2-p3  
  else
  w=w2-y2-p3
  endif
  z=fn1(z+x+y+w)
  else
  x=x2*y2-p1
  y=2*x2*y2-p2
  if (x2<w2)
  w=2*x2*w2-p3
  else
  w=2*y2*w2-p3
  endif
  z=fn2(z-x-y-w)
  endif
  |z| > (x2+w2+y2)
  }



--------------------------------------------------------------
--------------------------------------------------------------


is this post-fractint? Kinda pick up the pieces
and make something new of it? I hope not.

It was supposed to be an update to Mandelmania
but it turned out to become something different,
more a tool then a formula. A tool to be used
without leaving fractint, which lets you compose your image,- or the first
approach to it. It mixes 4 fractals with seperate inside/ outside
options.Two basic formulas which are ismand compatible and two hybrid mandel
and julia variations.
Of course a huge number of inputs is needed, but I
have tried to make them as easy and comfortable as even possible.
The p1 values are used as Julia seed and shared to define the default
mandel, I call it shape.
If you need both start with the Julia values, see what basic image you get
and define it further with the
P6 input,(real P2) after the dot. The first 2 digits are used, they even can
be negative, a "minus" will be applied only to this value.
The other two digits are used to define the 2nd shape. This one has many
variations of mirrored mandels that can be combined to one special shape.
Use the evolver, max mutation for example 0.003. Both
are written by Puskás István. The default one is modified to enforce Julia
compatability and to use the "warp"effect for further modification.
The inputs are sorted as factor,border, maxiter, first shape, then in/out1
and in/out2. Border1 can be fractional, a border value of 1.4567 would
appear as (factor1).000014567.
The primary input Real P5 consists of five digits,
shape, out1, out2, in1, in2. You type the number of the fractal to be used
and add five to reset it, not the shape of course. A "-" will shut off
in/out1. Number 3 is Many_mods (mandel) by Linda Allison with a modification
by Sylvie Gallet. I like this because it creates beautiful structures and
its very complex. The circular form can be changed if you take a mandel as
basic shape.
It mixes very well with the hybrid Julia, (Nr.4),
own write, which also gains complexity with the warpeffect, as it shares
iteration. This one can be replaced by a different frm, if it dosnt need an
additional input. The other ones are "built in" so
some rewriting would be necessary in order to replace them.
If you want the shape only, no in/out options, just type one number.
Do not forget to set ismand according to your selection.
The secondary input consists of 2 digits.You type the
number out1/out2 and in1/in2 (or zero) to use the second basic formula, 3 if
you want to use it for both, add five to use it as shape. This input is
optional.
Resetting generally adjusts the concerned part to the
screen instead of the surroundings, it also helps avoid chaotic spots due to
overcomplexity. Many-mods gains complexity, the number of "sides", (real
P3,2nd input) is doubled if called as in/out option and again if twice f.e
"(bailout).00008". This also creates the multiplication in "cockpit", I
think.
Imag P5 is optional, one digit only, for resetting the
internal counter after shape (1) or after in/out1 (2),
3 if both. Add five or only 5 to use the warpeffect on
the shape. This sometimes helps if you dont get an inside image and lets you
see the difference. Counter resetting starts the calculation of the warp
effect from zero. If you dont reset it and use the same factor for all
options, the effect will increase with iteration.
The Lake input ,2nd input, is radically simplified
(sorry, Sylvie), you just type one six digits number,
2 digits for each value. 324151 means a frequency of 320, a level of 41% and
an amplitude of 0.51. Any input activates the lake effect.
The functions are used for the calculation of the warp effect, possibly a
new factor must be found if changed. Fn1 is shared with many_mods, so if you
dont
warp the shape it is free to use. I did not use fn4 or
fn5 for the 2nd function as at least 2 lines are needed to scroll the text.
If you dont want the outside options set the values higher then bailout, or
vv maxiter higher then maxiter on the x-screen.
It was not possible to include twoway border values and separate bailout
values, P6 is needed.
Its a good idea to have a hardcopy available when doing the inputs, also
some basic pars ready to modify.

There is one problem: Many_mods is n o t compatible
with the lake effect, as they both define "c", applying the effect to "z"
does not do the job and the image is partly distorted. P l e a s e tell me,
if you
see a solution, maybe only Sylvie can help.


If you have questions or bugs to report, I will answer immediately and --
please post your images.

Writing this was like a trip into a new country, and when you finally
detect, that it´s much more complex then it´s parts, well- that´s it.


Multifractal     { ; Albrecht Niekamp  -- Apr, 2003
;only integers as first input, second input 5 digits to the right
;real(p2) factor1,border1
;imag(p2) (-)maxiter1,input bas.frm1_2digits input bas.frm2_2digits
;real(p3) bailout,hyb.mandel: number of sides (Many_mods L.Allison)
;imag(p3) factor2,border2
;real(p4) maxiter2,factor3
;imag(p4) border3,maxiter3
;real(p5) 1digit_shape only  5digits: shape,out1,out2,in1,in2
; 1_mand 2_jul 3_hyb.mand 4_hyb.jul +5_reset (not shape) <0_no in/out1
;  optional basic frm2: out-nbr 1digit in-nbr 1digit 3_both +5_shape
;imag(p5) : 1_iter1reset 2_iter2reset 3_both +5_shape warpeffect
;  optional input2: frequency_2digits level_2digits amplitude_2digits
;
d=real(p2)
fac1=trunc(d)
b1=(d-fac1)*100000
;
d=imag(p2)
da=(d<0)
if (da)
 d=-d
endif
mi1=trunc(d)
d=round((d-mi1)*10000)
p6=trunc(d/100)/10
d=d-1000*p6
if (da)
 p6=-p6
endif
p7=d/10
;
d=real(p3)
ba=trunc(d)
mm=round((d-ba)*100000)
;
d=imag(p3)
fac2=trunc(d)
b2=(d-fac2)*100000
;
d=real(p4)
mi2=trunc(d)
fac3=round((d-mi2)*100000)
;
d=imag(p4)
b3=trunc(d)
mi3=round((d-b3)*100000)
;
da=real(p5)
t=(da<0)
if (t)
 da=-da
endif
start=2-t
dd=trunc(da)
if (dd<5)
 start=0
endif
vb=(dd==3)+(dd==4)
da=round((da-dd)*100)
d=trunc(dd/10000)
vb=(d==3)+(d==4)+vb
dd=dd-d*10000
d=trunc(dd/1000)
or1=(d>5)
d=d-5*or1
vv1=(d==3)
vv2=(d==4)
dd1=(d==2)+(d==4)
dd=dd-d*1000
d=trunc(dd/100)
or2=(d>5)
d=d-5*or2
vv3=(d==3)
vv4=(d==4)
dd2=(d==2)+(d==4)
dd=dd-d*100
d=trunc(dd/10)
inr1=(d>5)
d=d-5*inr1
v1=(d==3)
v2=(d==4)
d1=(d==2)+(d==4)
dd=dd-d*10
d=trunc(dd)
inr2=(d>5)
d=d-5*inr2
v3=(d==3)
v4=(d==4)
d2=(d==2)+(d==4)
d=trunc(da/10)
ab=(d>=5)
d=d-5*ab
da=da-10*d
bb1=(d==1)
bb2=(d==2)
d=da
ab=(d>=5)
d=d-5*ab
ab1=(d==1)
ab2=(d==2)
;
d=imag(p5)
wo=(d>=5)
d=d-5*wo
dd=trunc(d)
le=((d-dd)>0.1)
d=round((d-dd)*1000000)
ir1=(dd==1)+(dd==3)
ir2=(dd==2)+(dd==3)
if (le)
  freq=round((trunc(d/10000))*10)     ;frequency_lake effect by S.Gallet
  d=d-freq*1000
  level=(trunc(d/100))/100            ;water level
  d=d-level*10000
  ampl=d/100                          ;amplitude of the wave
  angle=real(rotskew*pi/180)
  t=exp(-flip(angle))
  h=1/real(magxmag)
  q=h/0.75*imag(magxmag)
  tanskew=tan(imag(rotskew*pi/180))
  w=2*q*t
  v=2*h*(tanskew+flip(1))*t
  z3rd=center+(-q-h*tanskew-flip(h))*t
  z=pixel-z3rd
  s=imag(conj(w)*z)/imag(conj(w)*v)
  if (s<=level)
   da=level-s
   z=z+2*da*(1+ampl*sin(freq*da^0.2))*v
  endif
  z=z+z3rd
endif
if (ismand)
 if (vb)
  c=0.4*log(sqr(pixel^mm))
  z=z*le
 else
  c=z*le+pixel*(le==0)
  z=0
 endif
else
 c=p1
 z=z*le+pixel*(le==0)
endif
t=0
d3=(ismand==0)
u=d3
:
if (vb)
 if (d3)
  z=(z*z-real(c))^(z*u+imag(c))       ;frm: Albrecht Niekamp
 else
  z2=fn1(z)+c                                   ;frm: Many_mods Linda
Allison
  sqz2=cos(z2)
  z=c*(1-sqz2)/(1+sqz2)
 endif
else if (ab)
 z=z*z+c+c*c-p7                           ;frm: Puskas Istvan
else
 z2=z*z                                          ;frm: Puskas Istvan
modified
 z=z2*z2+(p6+u)*z2+c-p1*(d3==0)
endif
bo=|z|
If (wo)
 t=t+1
 if ((t<mi1)+(bo>b1))
  u=2*(fn1(t/fac1))
  if (ismand)
   z=z*u
   if (vb)
    c=0.4*log(sqr(pixel^mm))
   else
    c=z*le+pixel*(le==0)
   endif
  else
   z=z*le+pixel*(le==0)
   c=p1*u
  endif
  wo=0
  if (ir1)
   t=0
  endif
 endif
elseif (start)
 t=t+1
 if (start==2)
  if (bo>b2)
   u=2*(fn2(t/fac2))
   rs=or1
   ab=bb1
   if (dd1)
    if (rs)
     z=pixel
    endif
    c=p1*u
    vb=vv2
    d3=vb
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=0
    endif
    vb=vv1
    if (vb)
     mm=mm+mm
     c=0.4*log(sqr(pixel^mm))
    endif
    start=1
   endif
  elseif (t>mi2)
   u=2*(fn2(t/fac2))
   rs=inr1
   ab=ab1
   if (d1)
    if (rs)
     z=pixel
    endif
    c=p1*u
    vb=v2
    d3=vb
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=0
    endif
    vb=v1
    if (vb)
     mm=mm+mm
     c=0.4*log(sqr(pixel^mm))
    endif
   endif
   start=1
   if (ir2)
    t=0
   endif
  endif
 elseif (start==1)
 if (bo>b3)
  u=2*(fn3(t/fac3))
  ab=bb2
  rs=or2
  if (dd2)
   if (rs)
    z=pixel
   endif
   c=p1*u
   vb=vv4
   d3=vb
  else
   d3=0
   z=z*u
   c=z
   if (rs)
    z=0
   endif
   vb=vv3
   if (vb)
    mm=mm+mm
    c=0.4*log(sqr(pixel^mm))
   endif
   start=0
  endif
 elseif (t>mi3)
  u=2*(fn3(t/fac3))
  ab=ab2
  rs=inr2
  if (d2)
   if (rs)
    z=pixel
   endif
   c=p1*u
   vb=v4
   d3=vb
  else
   d3=0
   z=z*u
   c=z
   if (rs)
    z=0
   endif
   vb=v3
   if (vb)
    mm=mm+mm
    c=0.4*log(sqr(pixel^mm))
   endif
  endif
  start=0
 endif
 endif
endif
bo<=ba
}

--------------------------------------------------------------
--------------------------------------------------------------

Multifractal_2    { ;  Albrecht Niekamp  070603
;only integers as first input, second input 5 digits to the right
;real(p2) 5digits: shape, outside, in1, in2, in3
; 0_off 1_mand 2_jul 3_hyb.mand 4_hyb.jul +5_reset digit1: +5_warp
;  input2 : five digits frm2 use : 0_no 1_yes
;imag(p2) (-)digit1 : many_mods multipl. off 1_out 2_in1 3_in2 4_all
;            digit2 : iter-reset 1_out 2_in1 3_in2 4_all
;  input2 : many_mods_2digits frm1_2digits frm2_2digits
;real(p3) many_mods bailout, bailout
;imag(p3) shape : factor (fn1), outside : border-in
;real(p4) outside : factor (fn2), border-out
;imag(p4) maxiter1, factor1 (fn2)
;real(p5) maxiter2, factor2 (fn3)
;imag(p5) maxiter3, factor3 (fn4)
;
da=real(p2)
dd=trunc(da)
da=round((da-dd)*100000)+11111
d=trunc(dd/10000)
ex0=d>5
d=d-5*ex0
vb=(d==3)+(d==4)
dd=dd-d*10000
d=trunc(dd/1000)
ex1=d>0
dd=dd-d*1000
rs1=d>5
d=d-5*rs1
v1m=(d==3)
v1j=(d==4)
dd1=(d==2)+(d==4)
d=trunc(dd/100)
ex2=d>0
dd=dd-d*100
rs2=d>5
d=d-5*rs2
v2m=(d==3)
v2j=(d==4)
dd2=(d==2)+(d==4)
d=trunc(dd/10)
ex3=d>0
dd=dd-d*10
rs3=d>5
d=d-5*rs3
v3m=(d==3)
v3j=(d==4)
dd3=(d==2)+(d==4)
ex4=dd>0
rs4=dd>5
dd=dd-rs4*5
v4m=(dd==3)
v4j=(dd==4)
dd4=(dd==2)+(dd==4)
tt=ex0+ex1+ex2+ex3+ex4
;
d=trunc(da/10000)
ab=(d==2)
da=da-d*10000
d=trunc(da/1000)
ab1=(d==2)
da=da-d*1000
d=trunc(da/100)
ab2=(d==2)
da=da-d*100
d=trunc(da/10)
ab3=(d==2)
da=da-d*10
ab4=(da==2)
;
d=imag(p2)
t=d<0
if (t)
 d=-d
endif
dd=trunc(d)
d=round((d-dd)*1000000)
da=trunc(dd/10)
so1=((da==1)+(da==4)==0)
so2=((da==2)+(da==4)==0)
so3=((da==3)+(da==4)==0)
dd=dd-10*da
ir1=(dd==1)+(dd==4)
ir2=(dd==2)+(dd==4)
ir3=(dd==3)+(dd==4)
;
mm=trunc(d/10000)
d=d-mm*10000
p6=trunc(d/100)/10
d=d-p6*1000
if (t)
 p6=-p6
endif
p7=d/10
;
d=real(p3)
mb=trunc(d)
ba=(d-mb)*100000
;
d=imag(p3)
sfac=trunc(d)
b1=(d-sfac)*100000
;
d=real(p4)
ofac=trunc(d)
b2=(d-ofac)*100000
;
d=imag(p4)
mi1=trunc(d)
fac1=(d-mi1)*100000
;
d=real(p5)
mi2=trunc(d)
fac2=(d-mi2)*100000
;
d=imag(p5)
mi3=trunc(d)
fac3=(d-mi3)*100000
;
if (ismand)
 z=0
 if (vb)
  c=0.4*log(sqr(pixel^mm))
 else
  c=pixel
 endif
else
 c=p1
 z=pixel
endif
t=0
d3=(ismand==0)
u=d3
:
bo=z
If (tt)
 t=t+1
 if (ex0)
   u=fn1(1/sfac)
   if (ismand)
    z=0
    if (vb)
     c=u*0.4*log(sqr(pixel^mm))
     ba=mb
    else
     c=pixel*u
    endif
   else
    z=pixel
    c=p1*u
   endif
   ex0=0
   tt=tt-1
 elseif ((ex1) && bo>b1 && bo<b2)
   u=2*(fn2(t/ofac))
   rs=rs1
   ab=ab1
   if (dd1)
    if (rs)
     z=pixel
    endif
    c=p1*u
    vb=v1j
    d3=1
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=0
    endif
    vb=v1m
    if (vb)
     if (so1)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   if (ir1)
    t=0
   endif
   ex1=0
   tt=tt-1
 elseif ((ex2) && t>mi1)
   u=2*(fn2(t/fac1))
   rs=rs2
   ab=ab2
   if (dd2)
    if (rs)
     z=pixel
    endif
    c=p1*u
    vb=v2j
    d3=1
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=0
    endif
    vb=v2m
    if (vb)
     if (so2)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   if (ir2)
    t=0
   endif
   ex2=0
   tt=tt-1
 elseif ((ex3) && t>mi2)
   u=2*(fn3(t/fac2))
   ab=ab3
   rs=rs3
   if (dd3)
    if (rs)
     z=pixel
    endif
    c=p1*u
    vb=v3j
    d3=1
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=0
    endif
    vb=v3m
    if (vb)
     if (so3)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   if (ir3)
    t=0
   endif
   ex3=0
   tt=tt-1
 elseif ((ex4) && t>mi3)
   u=2*(fn4(t/fac3))
   ab=ab4
   rs=rs4
   if (dd4)
    if (rs)
     z=pixel
    endif
    c=p1*u
    vb=v4j
    d3=1
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=0
    endif
    vb=v4m
    if (vb)
     if (so2)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   ex4=0
   tt=tt-1
 endif
endif
if (vb)
 if (d3)
  z=(z*z-real(c))^(z*u+imag(c))
 else
  z2=fn1(z)+c                            ;Linda Allison
  q=cos(z2)
  z=c*(1-q)/(1+q)
 endif
elseif (ab)
 z=z*z+c+c*c-p7                           ;Pusk s Istv n
elseif (d3)
 z2=z*z
 z=z2*z2+(p6+u)*z2+c
else
 z2=z*z                                   ;Pusk s Istv n
 z=z2*z2+(p6+u)*z2+c-p1
endif
|z|<=ba
}

--------------------------------------------------------------
--------------------------------------------------------------

Multifractal_3    { ;  Albrecht Niekamp  090603
;only integers as first input, second input 5 digits to the right
;real(p2) 5digits: shape, outside, in1, in2, in3
; 0_off 1_mand 2_jul 3_hyb.mand 4_hyb.jul +5_reset digit1: +5_warp
;  input2 : five digits frm2 use : 0_no 1_yes
;imag(p2) (-)digit1 : many_mods multipl. off 1_out 2_in1 3_in2 4_all
;            digit2 : iter-reset 1_out 2_in1 3_in2 4_all
;  input2 : many_mods_2digits frm1_2digits frm2_2digits bees_4digits
;real(p3) many_mods bailout, bailout
;imag(p3) shape : factor (fn1), outside : border-in
;real(p4) outside : factor (fn2), border-out
;imag(p4) maxiter1, factor1 (fn2)
;real(p5) maxiter2, factor2 (fn3)
;imag(p5) maxiter3, factor3 (fn4)
;
da=real(p2)
dd=trunc(da)
da=round((da-dd)*100000)+11111
d=trunc(dd/10000)
ex0=d>5
d=d-5*ex0
vb=(d==3)+(d==4)
dd=dd-d*10000
d=trunc(dd/1000)
ex1=d>0
dd=dd-d*1000
rs1=d>5
d=d-5*rs1
v1m=(d==3)
v1j=(d==4)
dd1=(d==2)+(d==4)
d=trunc(dd/100)
ex2=d>0
dd=dd-d*100
rs2=d>5
d=d-5*rs2
v2m=(d==3)
v2j=(d==4)
dd2=(d==2)+(d==4)
d=trunc(dd/10)
ex3=d>0
dd=dd-d*10
rs3=d>5
d=d-5*rs3
v3m=(d==3)
v3j=(d==4)
dd3=(d==2)+(d==4)
ex4=dd>0
rs4=dd>5
dd=dd-rs4*5
v4m=(dd==3)
v4j=(dd==4)
dd4=(dd==2)+(dd==4)
tt=ex0+ex1+ex2+ex3+ex4
;
d=trunc(da/10000)
ab=(d==2)
da=da-d*10000
d=trunc(da/1000)
ab1=(d==2)
da=da-d*1000
d=trunc(da/100)
ab2=(d==2)
da=da-d*100
d=trunc(da/10)
ab3=(d==2)
da=da-d*10
ab4=(da==2)
;
d=imag(p2)
t=d<0
if (t)
 d=-d
endif
dd=trunc(d)
d=round((d-dd)*100000000)
da=trunc(dd/10)
so1=((da==1)+(da==4)==0)
so2=((da==2)+(da==4)==0)
so3=((da==3)+(da==4)==0)
dd=dd-10*da
ir1=(dd==1)+(dd==4)
ir2=(dd==2)+(dd==4)
ir3=(dd==3)+(dd==4)
;
mm=trunc(d/1000000)
d=d-mm*1000000
p6=trunc(d/10000)/10
d=d-p6*100000
if (t)
 p6=-p6
endif
p7=trunc(d/100)/10
d=d-p7*1000
p8=d/100
;
d=real(p3)
mb=trunc(d)
ba=(d-mb)*100000
;
d=imag(p3)
sfac=trunc(d)
b1=(d-sfac)*100000
b0=b1/2
;
d=real(p4)
ofac=trunc(d)
b2=(d-ofac)*100000
;
d=imag(p4)
mi1=trunc(d)
fac1=(d-mi1)*100000
;
d=real(p5)
mi2=trunc(d)
fac2=(d-mi2)*100000
;
d=imag(p5)
mi3=trunc(d)
fac3=(d-mi3)*100000
;
if (ismand)
 z=0
 if (vb)
  c=0.4*log(sqr(pixel^mm))
 else
  c=pixel
 endif
else
 c=p1
 z=pixel
endif
t=0
d3=(ismand==0)
u=d3
:
bo=z
If (tt)
 t=t+1
 if ((ex0)&&bo>b0)
   u=fn1(t/sfac)
   if (ismand)
    z=z*u
    if (vb)
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    else
     c=pixel
    endif
   else
    z=pixel
    c=p1*u
   endif
   ex0=0
   tt=tt-1
 elseif ((ex1) && bo>b1 && bo<b2)
   u=2*(fn2(t/ofac))
   rs=rs1
   ab=ab1
   if (dd1)
    if (rs)
     z=pixel
    endif
    c=p1*u
    vb=v1j
    d3=1
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=0
    endif
    vb=v1m
    if (vb)
     if (so1)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   if (ir1)
    t=0
   endif
   ex1=0
   tt=tt-1
 elseif ((ex2) && t>mi1)
   u=2*(fn2(t/fac1))
   rs=rs2
   ab=ab2
   if (dd2)
    if (rs)
     z=pixel
    endif
    c=p1*u
    vb=v2j
    d3=1
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=0
    endif
    vb=v2m
    if (vb)
     if (so2)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   if (ir2)
    t=0
   endif
   ex2=0
   tt=tt-1
 elseif ((ex3) && t>mi2)
   u=2*(fn3(t/fac2))
   ab=ab3
   rs=rs3
   if (dd3)
    if (rs)
     z=pixel
    endif
    c=p1*u
    vb=v3j
    d3=1
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=0
    endif
    vb=v3m
    if (vb)
     if (so3)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   if (ir3)
    t=0
   endif
   ex3=0
   tt=tt-1
 elseif ((ex4) && t>mi3)
   u=2*(fn4(t/fac3))
   ab=ab4
   rs=rs4
   if (dd4)
    if (rs)
     z=pixel
    endif
    c=p1*u
    vb=v4j
    d3=1
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=0
    endif
    vb=v4m
    if (vb)
     if (so2)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   ex4=0
   tt=tt-1
 endif
endif
if (vb)
 if (d3)
  z=(z*z-real(c))^(z*u+imag(c))
 else
  z2=fn1(z)+c                            ;Linda Allison
  q=cos(z2)
  z=c*(1-q)/(1+q)
 endif
elseif (ab)
 z=z*z+c+c*c-p7                           ;Pusk s Istv n
elseif (d3)
  z1=sin(z)-c                            ;Ray Girvan
  z2=z1^p8-1
  z3=p8*(z1^(p8-1))
  z=z-(z2/z3)
else
 z2=z*z                                   ;Pusk s Istv n
 z=z2*z2+(p6+u)*z2+c-p1
endif
|z|<=ba
}

--------------------------------------------------------------
--------------------------------------------------------------

Multifractal_4    { ;  Albrecht Niekamp  110603
;only integers as first input, second input 5 digits to the right
;real(p2) 5digits: shape, outside, in1, in2, in3
; 0_off 1_mand 2_jul 3_hyb.mand 4_hyb.jul +5_reset digit1: +5_warp
;  input2 : five digits frm2 use : 0_no 1_yes
;imag(p2) (-)digit1 : many_mods multipl. off 1_out 2_in1 3_in2 4_all
;            digit2 : iter-reset 1_out 2_in1 3_in2 4_all
;  input2 : many_mods_2digits frm1_2digits frm2_2digits bees_4digits
;real(p3) many_mods bailout, bailout
;imag(p3) shape : factor (fn1), outside : border-in
;real(p4) outside : factor (fn2), border-out
;imag(p4) maxiter1, factor1 (fn2)
;real(p5) maxiter2, factor2 (fn3)
;imag(p5) maxiter3, factor3 (fn4)
;
da=real(p2)
dd=trunc(da)
da=round((da-dd)*100000)+11111
d=trunc(dd/10000)
ex0=d>5
d=d-5*ex0
vb=(d==3)+(d==4)
dd=dd-d*10000
d=trunc(dd/1000)
ex1=d>0
dd=dd-d*1000
rs1=d>5
d=d-5*rs1
v1m=(d==3)
v1j=(d==4)
dd1=(d==2)+(d==4)
d=trunc(dd/100)
ex2=d>0
dd=dd-d*100
rs2=d>5
d=d-5*rs2
v2m=(d==3)
v2j=(d==4)
dd2=(d==2)+(d==4)
d=trunc(dd/10)
ex3=d>0
dd=dd-d*10
rs3=d>5
d=d-5*rs3
v3m=(d==3)
v3j=(d==4)
dd3=(d==2)+(d==4)
ex4=dd>0
rs4=dd>5
dd=dd-rs4*5
v4m=(dd==3)
v4j=(dd==4)
dd4=(dd==2)+(dd==4)
tt=ex0+ex1+ex2+ex3+ex4
;
d=trunc(da/10000)
ab=(d==2)
da=da-d*10000
d=trunc(da/1000)
ab1=(d==2)
da=da-d*1000
d=trunc(da/100)
ab2=(d==2)
da=da-d*100
d=trunc(da/10)
ab3=(d==2)
da=da-d*10
ab4=(da==2)
;
d=imag(p2)
t=d<0
if (t)
 d=-d
endif
dd=trunc(d)
d=round((d-dd)*10000000000)
da=trunc(dd/10)
so1=((da==1)+(da==4)==0)
so2=((da==2)+(da==4)==0)
so3=((da==3)+(da==4)==0)
dd=dd-10*da
ir1=(dd==1)+(dd==4)
ir2=(dd==2)+(dd==4)
ir3=(dd==3)+(dd==4)
;
mm=trunc(d/100000000)
d=d-mm*100000000
p6=trunc(d/1000000)/10
d=d-p6*10000000
if (t)
 p6=-p6
endif
p7=trunc(d/10000)/10
d=d-p7*100000
p8=trunc(d/100)/100
d=d-p8*10000
p9=d/100
;
d=real(p3)
mb=trunc(d)
ba=(d-mb)*100000
;
d=imag(p3)
sfac=trunc(d)
b1=(d-sfac)*100000
b0=b1/2
;
d=real(p4)
ofac=trunc(d)
b2=(d-ofac)*100000
;
d=imag(p4)
mi1=trunc(d)
fac1=(d-mi1)*100000
;
d=real(p5)
mi2=trunc(d)
fac2=(d-mi2)*100000
;
d=imag(p5)
mi3=trunc(d)
fac3=(d-mi3)*100000
;
bg=((ab+vb)==0)
bg1=((ab1+v1j)==0)
bg2=((ab2+v2j)==0)
bg3=((ab3+v3j)==0)
bg4=((ab4+v4j)==0)
;
if (ismand)
 z=0
 if (vb)
  c=0.4*log(sqr(pixel^mm))
 else
  c=pixel
 endif
else
 if (bg)
  c=p9
 else
  c=p1
 endif
 z=pixel
endif
t=0
d3=(ismand==0)
u=d3
:
bo=z
If (tt)
 t=t+1
 if ((ex0)&&bo>b0)
   u=2*(fn1(t/sfac))
   if (ismand)
    z=z*u
    if (vb)
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    else
     c=pixel
    endif
   else
    z=pixel
    if (bg)
     c=p9*u
    else
     c=p1*u
    endif
   endif
   ex0=0
   tt=tt-1
 elseif ((ex1) && bo>b1 && bo<b2)
   u=2*(fn2(t/ofac))
   rs=rs1
   ab=ab1
   if (dd1)
    if (rs)
     z=pixel
    endif
    vb=v1j
    d3=1
    if (bg1)
     c=p9*u
    else
     c=p1*u
    endif
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=0
    endif
    vb=v1m
    if (vb)
     if (so1)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   if (ir1)
    t=0
   endif
   ex1=0
   tt=tt-1
 elseif ((ex2) && t>mi1)
   u=2*(fn2(t/fac1))
   rs=rs2
   ab=ab2
   if (dd2)
    if (rs)
     z=pixel
    endif
    vb=v2j
    if (bg2)
     c=p9*u
    else
     c=p1*u
    endif
    d3=1
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=0
    endif
    vb=v2m
    if (vb)
     if (so2)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   if (ir2)
    t=0
   endif
   ex2=0
   tt=tt-1
 elseif ((ex3) && t>mi2)
   u=2*(fn3(t/fac2))
   ab=ab3
   rs=rs3
   if (dd3)
    if (rs)
     z=pixel
    endif
    vb=v3j
    if (bg3)
     c=p9*u
    else
     c=p1*u
    endif
    d3=1
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=0
    endif
    vb=v3m
    if (vb)
     if (so3)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   if (ir3)
    t=0
   endif
   ex3=0
   tt=tt-1
 elseif ((ex4) && t>mi3)
   u=2*(fn4(t/fac3))
   ab=ab4
   rs=rs4
   if (dd4)
    if (rs)
     z=pixel
    endif
    vb=v4j
    if (bg4)
     c=p9*u
    else
     c=p1*u
    endif
    d3=1
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=0
    endif
    vb=v4m
    if (vb)
     if (so2)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   ex4=0
   tt=tt-1
 endif
endif
if (vb)
 if (d3)
  z=(z*z-real(c))^(z*u+imag(c))
 else
  z2=fn1(z)+c                            ;Linda Allison
  q=cos(z2)
  z=c*(1-q)/(1+q)
 endif
elseif (ab)
 z=z*z+c+c*c-p7                           ;Pusk s Istv n
elseif (d3)
  z1=fn1(z)-c                            ;Ray Girvan
  z2=z1^p8-1
  z3=p8*(z1^(p8-1))
  z=z-(z2/z3)
else
 z2=z*z                                   ;Pusk s Istv n
 z=z2*z2+(p6+u)*z2+c-p1
endif
|z|<=ba
}

--------------------------------------------------------------
--------------------------------------------------------------

Multifractal_5    { ;  Albrecht Niekamp  230603
;only integers as first input, second input 5 digits to the right
;real(p2) 5digits: shape, outside, in1, in2, in3
; 0_off 1_mand 2_jul/bees 3_many_mods 4_newtjul +5_reset digit1: +5_warp
;  input2 : 2digits_many_mods 5digits_frm2 use : 0_no 1_yes
;imag(p2)(-) 2-4digits : quasinewton input (max 2000)
;               1digit : many_mods multipl. off 1_out 2_in1 3_in2 4_all
;               1digit : iter-reset 1_out 2_in1 3_in2 4_all
;      input2 : 4digits(-)_frm1 2digits_frm2 4digits_bees
;real(p3) many_mods bailout, bailout
;imag(p3) shape : factor (fn1), outside : border-in
;real(p4) outside : factor (fn2), border-out
;imag(p4) inside1 : maxiter1, factor1 (fn2)
;real(p5) inside2 : maxiter2, factor2 (fn3)
;imag(p5) inside3 : maxiter3, factor3 (fn4)
;
da=real(p2)
dd=trunc(da)
da=round((da-dd)*10000000)+11111
d=trunc(dd/10000)
ex0=d>5
d=d-5*ex0
vb=(d==3)+(d==4)
dd=dd-d*10000
d=trunc(dd/1000)
ex1=d>0
dd=dd-d*1000
rs1=d>5
d=d-5*rs1
v1m=(d==3)
v1j=(d==4)
dd1=(d==2)+(d==4)
d=trunc(dd/100)
ex2=d>0
dd=dd-d*100
rs2=d>5
d=d-5*rs2
v2m=(d==3)
v2j=(d==4)
dd2=(d==2)+(d==4)
d=trunc(dd/10)
ex3=d>0
dd=dd-d*10
rs3=d>5
d=d-5*rs3
v3m=(d==3)
v3j=(d==4)
dd3=(d==2)+(d==4)
ex4=dd>0
rs4=dd>5
dd=dd-rs4*5
v4m=(dd==3)
v4j=(dd==4)
dd4=(dd==2)+(dd==4)
tt=ex0+ex1+ex2+ex3+ex4
;
mm=trunc(da/100000)
da=da-mm*100000
d=trunc(da/10000)
ab=(d==2)
da=da-d*10000
d=trunc(da/1000)
ab1=(d==2)
da=da-d*1000
d=trunc(da/100)
ab2=(d==2)
da=da-d*100
d=trunc(da/10)
ab3=(d==2)
da=da-d*10
ab4=(da==2)
;
d=imag(p2)
t=d<0
if (t)
 d=-d
endif
dd=trunc(d)
d=round((d-dd)*10000000000)
pp=trunc(dd/100)/10
dd=dd-1000*pp
da=trunc(dd/10)
so1=((da==1)+(da==4)==0)
so2=((da==2)+(da==4)==0)
so3=((da==3)+(da==4)==0)
dd=dd-10*da
ir1=(dd==1)+(dd==4)
ir2=(dd==2)+(dd==4)
ir3=(dd==3)+(dd==4)
;
p0=trunc(d/100000000)/10
d=d-p0*1000000000
p6=trunc(d/1000000)/10
d=d-p6*10000000
if (t)
 p6=-p6
endif
p7=trunc(d/10000)/10
d=d-p7*100000
p8=trunc(d/100)/100
d=d-p8*10000
p9=d/100
;
d=real(p3)
mb=trunc(d)
ba=(d-mb)*100000
;
d=imag(p3)
sfac=trunc(d)
b1=(d-sfac)*100000
b0=b1/2
;
d=real(p4)
ofac=trunc(d)
b2=(d-ofac)*100000
;
d=imag(p4)
mi1=trunc(d)
fac1=(d-mi1)*100000
;
d=real(p5)
mi2=trunc(d)
fac2=(d-mi2)*100000
;
d=imag(p5)
mi3=trunc(d)
fac3=(d-mi3)*100000
;
bg=((ab+vb)==0)
bg1=((ab1+v1j)==0)
bg2=((ab2+v2j)==0)
bg3=((ab3+v3j)==0)
bg4=((ab4+v4j)==0)
;
if (ismand)
 z=0
 if (vb)
  c=0.4*log(sqr(pixel^mm))
 else
  c=pixel
 endif
else
 if (bg)
  c=p9
 else
  c=p1
 endif
 z=pixel
endif
t=0
d3=(ismand==0)
u=d3
bo=z
p=pp
:
If (tt)
 t=t+1
 if ((ex0) && bo>b0)
   u=2*(fn1(t/sfac))
   if (ismand)
    z=z*u
    if (vb)
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    else
     c=pixel
    endif
   else
    z=pixel
    if (bg)
     c=p9*u
    else
     c=p1*u
     p=pp+u
    endif
   endif
   ex0=0
   tt=tt-1
 elseif ((ex1) && bo>b1 && bo<b2)
   u=2*(fn2(t/ofac))
   rs=rs1
   ab=ab1
   if (dd1)
    if (rs)
     z=pixel
    endif
    vb=v1j
    d3=1
    if (bg1)
     c=p9*u
    else
     c=p1*u
     p=pp+u
    endif
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=0
    endif
    vb=v1m
    if (vb)
     if (so1)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   if (ir1)
    t=0
   endif
   ex1=0
   tt=tt-1
 elseif ((ex2) && t>mi1)
   u=2*(fn2(t/fac1))
   rs=rs2
   ab=ab2
   if (dd2)
    if (rs)
     z=pixel
    endif
    vb=v2j
    if (bg2)
     c=p9*u
    else
     c=p1*u
     p=pp+u
    endif
    d3=1
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=0
    endif
    vb=v2m
    if (vb)
     if (so2)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   if (ir2)
    t=0
   endif
   ex2=0
   tt=tt-1
 elseif ((ex3) && t>mi2)
   u=2*(fn3(t/fac2))
   ab=ab3
   rs=rs3
   if (dd3)
    if (rs)
     z=pixel
    endif
    vb=v3j
    if (bg3)
     c=p9*u
    else
     c=p1*u
     p=pp+u
    endif
    d3=1
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=0
    endif
    vb=v3m
    if (vb)
     if (so3)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   if (ir3)
    t=0
   endif
   ex3=0
   tt=tt-1
 elseif ((ex4) && t>mi3)
   u=2*(fn4(t/fac3))
   ab=ab4
   rs=rs4
   if (dd4)
    if (rs)
     z=pixel
    endif
    vb=v4j
    if (bg4)
     c=p9*u
    else
     c=p1*u
     p=pp+u
    endif
    d3=1
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=0
    endif
    vb=v4m
    if (vb)
     if (so2)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   ex4=0
   tt=tt-1
 endif
endif
if (vb)
 if (d3)
  n=z^p-1
  d=p*z*z
  z=z-n/d
 else
  z2=fn1(z)+c                            ;Linda Allison
  q=cos(z2)
  z=c*(1-q)/(1+q)
 endif
elseif (ab)
 z=z*z+c+c*c-p7                          ;Pusk s Istv n
elseif (d3)
  z1=fn1(z)-c                            ;Ray Girvan
  z2=z1^p8-1
  z3=p8*(z1^(p8-1))
  z=z-(z2/z3)
else
 z2=z*z                                  ;Pusk s Istv n
 z=z2*z2+(p6+u)*z2+c-p0
endif
bo=|z|
bo<=ba
}

--------------------------------------------------------------
--------------------------------------------------------------

Multifractal_6    { ;  Albrecht Niekamp  020703
;only integers as first input, second input 5 digits to the right
;real(p2) 5digits: shape, outside, in1, in2, in3
; 0_off 1_secant/mand 2_bees/jul 3_m_mods 4_newt +5_reset (not shape)
;  input2 : 2digits_m_mods  5digits_mand/jul use : 0_no 1_yes +5_warp
;imag(p2)(-) 2-4digits : quasinewton input (max 2000)
;               1digit : no m_mods multipl. : 1_out 2_in1 3_in2 4_all
;               1digit : iter-reset 1_out 2_in1 3_in2 4_all
;      input2 : 4digits(-)_mand 2digits_secant 4digits_bees
;real(p3) many_mods bailout, bailout
;imag(p3) shape : factor (fn1), outside : border-in
;real(p4) outside : factor (fn2), border-out
;imag(p4) inside1 : maxiter1, factor1 (fn2)
;real(p5) inside2 : maxiter2, factor2 (fn3)
;imag(p5) inside3 : maxiter3, factor3 (fn4)
;fn(1) is shared by bees and many_mods
;
da=real(p2)
dd=trunc(da)
da=round((da-dd)*10000000)+11111
d=trunc(dd/10000)
t=d>5
dd=dd-d*10000
d=d-5*t
d3=(d==2)+(d==4)
d4=(d3==0)
vb=(d==3)+(d==4)
d=trunc(dd/1000)
ex1=d>0
dd=dd-d*1000
rs1=d>5
d=d-5*rs1
v1m=(d==3)
v1j=(d==4)
dd1=(d==2)+(d==4)
d=trunc(dd/100)
ex2=d>0
dd=dd-d*100
rs2=d>5
d=d-5*rs2
v2m=(d==3)
v2j=(d==4)
dd2=(d==2)+(d==4)
d=trunc(dd/10)
ex3=d>0
dd=dd-d*10
rs3=d>5
d=d-5*rs3
v3m=(d==3)
v3j=(d==4)
dd3=(d==2)+(d==4)
ex4=dd>0
rs4=dd>5
dd=dd-rs4*5
v4m=(dd==3)
v4j=(dd==4)
dd4=(dd==2)+(dd==4)
;
mm=trunc(da/100000)
da=da-mm*100000
d=trunc(da/10000)
ex0=d>5
ab=(d==2)+(d==7)
da=da-d*10000
d=trunc(da/1000)
w1=d>5
ab1=(d==2)+(d==7)
da=da-d*1000
d=trunc(da/100)
w2=d>5
ab2=(d==2)+(d==7)
da=da-d*100
d=trunc(da/10)
w3=d>5
ab3=(d==2)+(d==7)
da=da-d*10
w4=da>5
ab4=(da==2)+(da==7)
tt=ex0+ex1+ex2+ex3+ex4
;
d=imag(p2)
t=d<0
if (t)
 d=-d
endif
dd=trunc(d)
d=round((d-dd)*10000000000)
pp=trunc(dd/100)/10
dd=dd-1000*pp
da=trunc(dd/10)
so1=((da==1)+(da==4)==0)
so2=((da==2)+(da==4)==0)
so3=((da==3)+(da==4)==0)
dd=dd-10*da
ir1=(dd==1)+(dd==4)
ir2=(dd==2)+(dd==4)
ir3=(dd==3)+(dd==4)
;
p0=trunc(d/100000000)/10
d=d-p0*1000000000
p6=trunc(d/1000000)/10
d=d-p6*10000000
if (t)
 p6=-p6
endif
p7=trunc(d/10000)/10
d=d-p7*100000
p8=trunc(d/100)/100
d=d-p8*10000
p9=d/100
;
d=real(p3)
mb=trunc(d)
ba=(d-mb)*100000
;
d=imag(p3)
sfac=trunc(d)
b1=(d-sfac)*100000
b0=b1/2
;
d=real(p4)
ofac=trunc(d)
b2=(d-ofac)*100000
;
d=imag(p4)
mi1=trunc(d)
fac1=(d-mi1)*100000
;
d=real(p5)
mi2=trunc(d)
fac2=(d-mi2)*100000
;
d=imag(p5)
mi3=trunc(d)
fac3=(d-mi3)*100000
;
bg=((ab+vb)==0)
bg1=((ab1+v1j)==0)
bg2=((ab2+v2j)==0)
bg3=((ab3+v3j)==0)
bg4=((ab4+v4j)==0)
;
if (d4)
 z=0
 if (vb)
  c=0.4*log(sqr(pixel^mm))
 else
  c=pixel
  z=pixel*(ab==0)
 endif
else
 if (bg)
  c=p9
 else
  c=p1
 endif
 z=pixel
endif
t=0
u=d3
bo=z
p=pp
z0=p7
:
If (tt)
 t=t+1
 if ((ex0) && bo>b0)
   u=2*(fn1(t/sfac))
   if (d4)
    z=z*u
    if (vb)
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    else
     c=pixel
    endif
   else
    z=pixel
    if (bg)
     c=p9*u
    else
     c=p1*u
     p=pp*u
    endif
   endif
   ex0=0
   tt=tt-1
 elseif ((ex1) && bo>b1 && bo<b2)
  if (w1)
   u=2*(fn2(t/ofac))
  else
   u=1,0
  endif
   rs=rs1
   ab=ab1
   if (dd1)
    if (rs)
     z=pixel
    endif
    vb=v1j
    d3=1
    if (bg1)
     c=p9*u
    else
     c=p1*u
     p=pp*u
    endif
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=pixel*(ab==0)
    endif
    vb=v1m
    if (vb)
     if (so1)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   if (ir1)
    t=0
   endif
   ex1=0
   tt=tt-1
 elseif ((ex2) && t>mi1)
  if (w2)
   u=2*(fn2(t/fac1))
  else
   u=1,0
  endif
   rs=rs2
   ab=ab2
   if (dd2)
    if (rs)
     z=pixel
    endif
    vb=v2j
    if (bg2)
     c=p9*u
    else
     c=p1*u
     p=pp*u
    endif
    d3=1
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=pixel*(ab==0)
    endif
    vb=v2m
    if (vb)
     if (so2)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   if (ir2)
    t=0
   endif
   ex2=0
   tt=tt-1
 elseif ((ex3) && t>mi2)
  if (w3)
   u=2*(fn3(t/fac2))
  else
   u=1,0
  endif
   ab=ab3
   rs=rs3
   if (dd3)
    if (rs)
     z=pixel
    endif
    vb=v3j
    if (bg3)
     c=p9*u
    else
     c=p1*u
     p=pp*u
    endif
    d3=1
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=pixel*(ab==0)
    endif
    vb=v3m
    if (vb)
     if (so3)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   if (ir3)
    t=0
   endif
   ex3=0
   tt=tt-1
 elseif ((ex4) && t>mi3)
  if (w4)
   u=2*(fn4(t/fac3))
  else
   u=1,0
  endif
   ab=ab4
   rs=rs4
   if (dd4)
    if (rs)
     z=pixel
    endif
    vb=v4j
    if (bg4)
     c=p9*u
    else
     c=p1*u
     p=pp*u
    endif
    d3=1
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=pixel*(ab==0)
    endif
    vb=v4m
    if (vb)
     if (so2)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   ex4=0
   tt=tt-1
 endif
endif
if (vb)
 if (d3)                                 ;quasinewton  Pusk s Istv n
  z1=z^p-1
  z2=p*z*z
  z=z-z1/z2
 else
  z2=fn1(z)+c                            ;many_mods Linda Allison
  q=cos(z2)
  z=c*(1-q)/(1+q)
 endif
elseif (ab)
 z2=z*z                                  ;mandel   Pusk s Istv n
 z=z2*z2+p6*z2+c-p0
elseif (d3)
  z1=fn1(z)-c                            ;bees  Ray Girvan
  z2=z1^p8-1
  z3=p8*(z1^(p8-1))
  z=z-(z2/z3)
else
 z3=z                                    ;secant   unknown
 z1=z0*z0*z0*z0-1
 z2=z*z*z*z-1
 z=z-z2*(z-z0)/(z2-z1)
 z0=z3
endif
bo=|z|
bo<=ba
}

--------------------------------------------------------------
--------------------------------------------------------------

Multifractal_7    { ;  Albrecht Niekamp  240703
;p1 (spider)julia-seed
;real(p2) 5digits: frm-use: shape, outside, inside1, inside2, inside3
; 0_off 1_secant/mand 2_bees/jul 3_m_mods/phoen 4_newt/spider +5_reset
;  input2 : 2digits_many-mods  2digits_phoenix  2digits_spider
;           5digits_secondary frm use : 0_no 1_yes +5_warp
;imag(p2)(-) 2-4digits : quasinewton input (max 2000)
;               1digit : no many_mods multipl. 1_out 2_in1 3_in2 4_all
;               1digit : iter-reset 1_out 2_in1 3_in2 4_all
;  input2 : 4digits(-)_mand/jul 2digits_secant 4digits_bees
;real(p3) many_mods bailout, bailout
;imag(p3) shape   : factor (fn1), outside : border-in (5digits+fract)
;real(p4) outside : factor (fn2), border-out (5digits+fract)
;imag(p4) inside1 : maxiter1, 5digits_factor1 (fn2)
;real(p5) inside2 : maxiter2, 5digits_factor2 (fn3)
;imag(p5) inside3 : maxiter3, 5digits_factor3 (fn4)
;fn(1) is shared by many_mods, bees
da=real(p2)
dd=trunc(da)
da=round((da-dd)*100000000000)+11111
d=trunc(dd/10000)
t=d>5
dd=dd-d*10000
d=d-5*t
d3=(d==2)+(d==4)
d4=(d3==0)
vb=(d==3)+(d==4)
d=trunc(dd/1000)
ex1=d>0
dd=dd-d*1000
rs1=d>5
d=d-5*rs1
v1m=(d==3)
v1j=(d==4)
dd1=(d==2)+(d==4)
d=trunc(dd/100)
ex2=d>0
dd=dd-d*100
rs2=d>5
d=d-5*rs2
v2m=(d==3)
v2j=(d==4)
dd2=(d==2)+(d==4)
d=trunc(dd/10)
ex3=d>0
dd=dd-d*10
rs3=d>5
d=d-5*rs3
v3m=(d==3)
v3j=(d==4)
dd3=(d==2)+(d==4)
ex4=dd>0
rs4=dd>5
dd=dd-rs4*5
v4m=(dd==3)
v4j=(dd==4)
dd4=(dd==2)+(dd==4)
;
mm=trunc(da/1000000000)
da=da-mm*1000000000
ph=trunc(da/10000000)/100
da=da-ph*1000000000
sp=trunc(da/100000)/100
da=da-sp*10000000
d=trunc(da/10000)
ex0=d>4
ab=(d==2)+(d==7)
da=da-d*10000
d=trunc(da/1000)
w1=d>4
ab1=(d==2)+(d==7)
da=da-d*1000
d=trunc(da/100)
w2=d>4
ab2=(d==2)+(d==7)
da=da-d*100
d=trunc(da/10)
w3=d>4
ab3=(d==2)+(d==7)
d=round(da-d*10)
w4=d>4
ab4=(d==2)+(d==7)
tt=ex0+ex1+ex2+ex3+ex4
;
d=imag(p2)
t=d<0
if (t)
 d=-d
endif
dd=trunc(d)
d=round((d-dd)*10000000000)
pp=trunc(dd/100)/10
dd=dd-1000*pp
da=trunc(dd/10)
so1=((da==1)+(da==4)==0)
so2=((da==2)+(da==4)==0)
so3=((da==3)+(da==4)==0)
dd=dd-10*da
ir1=(dd==1)+(dd==4)
ir2=(dd==2)+(dd==4)
ir3=(dd==3)+(dd==4)
;
p0=trunc(d/100000000)/10
d=d-p0*1000000000
p6=trunc(d/1000000)/10
d=d-p6*10000000
if (t)
 p6=-p6
endif
p7=trunc(d/10000)/10
d=d-p7*100000
p8=trunc(d/100)/100
d=d-p8*10000
p9=d/100
;
d=real(p3)
mb=trunc(d)
ba=(d-mb)*100000
;
d=imag(p3)
sfac=trunc(d)
b1=(d-sfac)*100000
b0=b1/2
;
d=real(p4)
ofac=trunc(d)
b2=(d-ofac)*100000
;
d=imag(p4)
mi1=trunc(d)
fac1=(d-mi1)*100000
;
d=real(p5)
mi2=trunc(d)
fac2=(d-mi2)*100000
;
d=imag(p5)
mi3=trunc(d)
fac3=(d-mi3)*100000
;
mo=vb>ab
mo1=v1m>ab1
mo2=v2m>ab2
mo3=v3m>ab3
mo4=v4m>ab4
;
sc=((ab+vb)==0)
sc1=((ab1+v1m)==0)
sc2=((ab2+v2m)==0)
sc3=((ab3+v3m)==0)
sc4=((ab4+v4m)==0)
;
px=((ab+vb)==2)
px1=((ab1+v1m)==2)
px2=((ab2+v2m)==2)
px3=((ab3+v3m)==2)
px4=((ab4+v4m)==2)
;
if (d4)
 z=0
 if (vb)
  if (mo)
   c=0.4*log(sqr(pixel^mm))
  else
   c=pixel
   z=pixel
  endif
 else
  c=pixel
  z=pixel*sc
 endif
else
 c=p1
 z=pixel
endif
t=0
u=d3
bo=z
p=pp
z0=p7
zold=(0.0,0.0)
cb=p9
:
If (tt)
 t=t+1
 if ((ex0) && bo>b0)
   u=2*(fn1(t/sfac))
   if (d4)
    z=z*u
    if (mo)
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    else
     c=pixel
    endif
   else
    z=pixel
    cb=p9*u
    c=p1*u
    p=pp*u
   endif
   ex0=0
   tt=tt-1
 elseif ((ex1) && bo>b1 && bo<b2)
  if (w1)
   u=2*(fn2(t/ofac))
  else
   u=1,0
  endif
   rs=rs1
   ab=ab1
   if (dd1)
    if (rs)
     z=pixel
     cb=p9*u
     c=p1*u
     p=pp*u
    else
     c=p1
     z=z*u
     cb=p9
    endif
    vb=v1j
    d3=1
   else
    d3=0
    if (rs)
     c=z*u
     z=pixel*(sc1+px1)
     z0=p7*u
     ph=ph*u
    else
     c=z
     z=z*u
    endif
    vb=v1m
    if (mo1)
     if (so1)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   if (ir1)
    t=0
   endif
   ex1=0
   tt=tt-1
 elseif ((ex2) && t>mi1)
  if (w2)
   u=2*(fn2(t/fac1))
  else
   u=1,0
  endif
   rs=rs2
   ab=ab2
   if (dd2)
    if (rs)
     z=pixel
     cb=p9*u
     c=p1*u
     p=pp*u
    else
     cb=p9
     c=p1
     z=z*u
    endif
    vb=v2j
    d3=1
   else
    d3=0
    if (rs)
     c=z*u
     z=pixel*(sc2+px2)
     z0=p7*u
     ph=ph*u
    else
     c=z
     z=z*u
    endif
    vb=v2m
    if (mo2)
     if (so2)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   if (ir2)
    t=0
   endif
   ex2=0
   tt=tt-1
 elseif ((ex3) && t>mi2)
  if (w3)
   u=2*(fn3(t/fac2))
  else
   u=1,0
  endif
   ab=ab3
   rs=rs3
   if (dd3)
    if (rs)
     z=pixel
     cb=p9*u
     c=p1*u
     p=pp*u
    else
     cb=p9
     c=p1
     z=z*u
    endif
    vb=v3j
    d3=1
   else
    d3=0
    if (rs)
     c=z*u
     z=pixel*(sc3+px3)
     z0=p7*u
     ph=ph*u
    else
     c=z
     z=z*u
    endif
    vb=v3m
    if (mo3)
     if (so3)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   if (ir3)
    t=0
   endif
   ex3=0
   tt=tt-1
 elseif ((ex4) && t>mi3)
  if (w4)
   u=2*(fn4(t/fac3))
  else
   u=1,0
  endif
   ab=ab4
   rs=rs4
   if (dd4)
    if (rs)
     z=pixel
     cb=p9*u
     c=p1*u
     p=pp*u
    else
     cb=p9
     c=p1
     z=z*u
    endif
    vb=v4j
    d3=1
   else
    d3=0
    if (rs)
     c=z*u
     z=pixel*(sc4+px4)
     z0=p7*u
     ph=ph*u
    else
     c=z
     z=z*u
    endif
    vb=v4m
    if (mo4)
     if (so2)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   ex4=0
   tt=tt-1
 endif
endif
if (vb)
 if (d3)
  if (ab)
   z=z*z+c                                ;Spiderjul     John Horner
   c=c*sp+z
  else
   z1=z^p-1                               ;Qusinewton    Pusk s Istv n
   z2=p*z*z
   z=z-z1/z2
  endif
 elseif (ab)
   zt=z*z+ph-0.5*zold                     ;Phoenix       Mike Wareman
   zold=z
   z=zt
 else
  z2=fn1(z)+c                             ;Many_mods     Linda Allison
  q=cos(z2)
  z=c*(1-q)/(1+q)
 endif
elseif (d3)
 if (ab)
  z2=z*z                                  ;Julia         Pusk s Istv n
  z=z2*z2+p6*z2+c-p0
 else
  z1=fn1(z)-cb                            ;Bees          Ray Girvan
  z2=z1^p8-1
  z3=p8*(z1^(p8-1))
  z=z-(z2/z3)
 endif
elseif (ab)
 z2=z*z                                   ;Mandel        Pusk s Istv n
 z=z2*z2+p6*z2+c-p0
else
 z3=z                                     ;Secant        Mike Wareman
 z1=z0*z0*z0*z0-1
 z2=z*z*z*z-1
 z=z-z2*(z-z0)/(z2-z1)
 z0=z3
endif
bo=|z|
bo<=ba
}


--------------------------------------------------------------
--------------------------------------------------------------

Multifractal_8    { ;  Albrecht Niekamp  090803
;p1 (spider)julia-seed
;real(p2) 5digits : (1)shape (2)outside (3)inside1 (4)inside2 (5)inside3
; 0_off 1_secant 2_mand 3_bees 4_jul 5_m_mods 6_phoen 7_newt 8_spider
;  input2 :  2digits_many-mods  2digits_phoenix  2digits_spider
;            5digits_reset : 0_no 1_z-reset 2_iter-reset 3_both +5_warp
;imag(p2)(-) 2-4digits : newton input (max 2000)
;            2digits   : channel_alt-bailout1  channel_alt-bailout2
;  input2 :  4digits(-)_mand/jul 2digits_secant 4digits_bees
;real(p3) alt-bailout1, 5digits_bailout  6digits alt-bailout2
;imag(p3) shape  : factor (fn1), outside : border-in (5digits+fract.)
;real(p4) outside: factor (fn2), outside : border-out (5digits+fract.)
;imag(p4) inside1: maxit1, 1digit_use:1_maxit 2_bord-in 3_bord-out +5_both
;                  5digits_factor1 (fn2)  4digits+fract_border1
;real(p5) inside2: maxit2, 1digit_use:1_maxit 2_bord-in 3_bord-out +5_both
;                  5digits_factor2 (fn3)  4digits+fract_border2
;imag(p5) inside3: maxit3, 1digit_use:1_maxit 2_bord-in 3_bord-out +5_both
;                  5digits_factor3 (fn4)  4digits+fract_border3
;fn(1) shared by many-mods+bees
;
da=real(p2)
dd=trunc(da)
da=round((da-dd)*100000000000)+11111
dd=dd+1
d=trunc(dd/10000)
dd=dd-d*10000
d3=(d==3)+(d==4)+(d==7)+(d==8)
d4=(d3==0)
vb=d>4
ab=(d==2)+(d==4)+(d==6)+(d==8)
d=trunc(dd/1000)
dd=dd-d*1000
ex1=d>0
v1m=(d==5)+(d==6)
v1j=d>6
dd1=(d==3)+(d==4)+v1j
ab1=(d==2)+(d==4)+(d==6)+(d==8)
d=trunc(dd/100)
dd=dd-d*100
ex2=d>0
v2m=(d==5)+(d==6)
v2j=d>6
dd2=(d==3)+(d==4)+v2j
ab2=(d==2)+(d==4)+(d==6)+(d==8)
d=trunc(dd/10)
ex3=d>0
v3m=(d==5)+(d==6)
v3j=d>6
dd3=(d==3)+(d==4)+v3j
ab3=(d==2)+(d==4)+(d==6)+(d==8)
d=dd-d*10
ex4=d>1
v4m=(d==6)+(d==7)
v4j=d>7
dd4=(d==4)+(d==5)+v4j
ab4=(d==3)+(d==5)+(d==7)+(d==9)
;
mm=trunc(da/1000000000)
da=da-mm*1000000000
ph=trunc(da/10000000)/100
da=da-ph*1000000000
sp=trunc(da/100000)/100
da=da-sp*10000000
d=trunc(da/10000)
ex0=d>4
da=da-d*10000
d=d-5*ex0
ir0=(d==3)+(d==4)
d=trunc(da/1000)
w1=d>4
da=da-d*1000
d=d-5*w1
rs1=(d==2)+(d==4)
ir1=(d==3)+(d==4)
d=trunc(da/100)
w2=d>4
da=da-d*100
d=d-5*w2
rs2=(d==2)+(d==4)
ir2=(d==3)+(d==4)
d=trunc(da/10)
w3=d>4
da=da-d*10
d=d-5*w3
rs3=(d==2)+(d==4)
ir3=(d==3)+(d==4)
d=round(da)
w4=d>4
d=d-5*w4
rs4=(d==2)+(d==4)
tt=ex0+ex1+ex2+ex3+ex4
;
d=imag(p2)
t=d<0
if (t)
 d=-d
endif
dd=trunc(d)
d=round((d-dd)*10000000000)
pp=trunc(dd/100)/10
dd=dd-1000*pp
ba1=trunc(dd/10)
ba2=dd-10*ba1
;
p0=trunc(d/100000000)/10
d=d-p0*1000000000
p6=trunc(d/1000000)/10
d=d-p6*10000000
if (t)
 p6=-p6
endif
p7=trunc(d/10000)/10
d=d-p7*100000
p8=trunc(d/100)/100
d=d-p8*10000
p9=d/100
;
d=real(p3)
bb1=trunc(d)
da=(d-bb1)*10000000000
ba=trunc(da/100000)
bb2=da-100000*ba
;
d=imag(p3)
sfac=trunc(d)
b1=(d-sfac)*100000
b0=b1/2
;
d=real(p4)
ofac=trunc(d)
b2=(d-ofac)*100000
;
d=imag(p4)
mi1=trunc(d)
da=(d-mi1)*100000000000
d=trunc(da/10000000000)
bt1=d>6
da=da-d*10000000000
d=d-5*bt1
dt1=d>1
iv1=(d==3)
fac1=trunc(da/100000)
da=da-fac1*100000
bo1=(da/100000)/10
;
d=real(p5)
mi2=trunc(d)
da=(d-mi2)*100000000000
d=trunc(da/10000000000)
bt2=d>6
da=da-d*10000000000
d=d-5*bt2
dt2=d>1
iv2=(d==3)
fac2=trunc(da/100000)
da=da-fac2*100000
bo2=(da/100000)/10
;
d=imag(p5)
mi3=trunc(d)
da=(d-mi3)*100000000000
d=trunc(da/10000000000)
bt3=d>6
da=da-d*10000000000
d=d-5*bt3
dt3=d>1
iv3=(d==3)
fac3=trunc(da/100000)
da=da-fac3*100000
bo3=(da/100000)/10
;
mo=vb>ab
mo1=v1m>ab1
mo2=v2m>ab2
mo3=v3m>ab3
mo4=v4m>ab4
;
sc=((ab+vb)==0)
sc1=((ab1+v1m)==0)
sc2=((ab2+v2m)==0)
sc3=((ab3+v3m)==0)
sc4=((ab4+v4m)==0)
;
px=((ab+vb)==2)
px1=((ab1+v1m)==2)
px2=((ab2+v2m)==2)
px3=((ab3+v3m)==2)
px4=((ab4+v4m)==2)
;
mb0=(ba1==1)+(ba2==1)
mb1=(ba1==2)+(ba2==2)
mb2=(ba1==3)+(ba2==3)
mb3=(ba1==4)+(ba2==4)
mb4=(ba1==5)+(ba2==5)
;
if (d4)
 z=0
 if (vb)
  if (mo)
   c=0.4*log(sqr(pixel^mm))
  else
   c=pixel
   z=pixel
  endif
 else
  c=pixel
  z=pixel*sc
 endif
else
 c=p1
 z=pixel
endif
t=0
u=d3
bo=z
p=pp
z0=p7
zold=(0.0,0.0)
cb=p9
bx=ba
if (mb0)
 if (ba1==1)
  ba=bb1
 else
  ba=bb2
 endif
else
 ba=bx
endif
:
If (tt)
 t=t+1
 if (ex0)
  if (bo>b0)
   u=2*(fn1(t/sfac))
   if (d4)
    z=z*u
    if (mo)
     c=0.4*log(sqr(pixel^mm))
    else
     c=pixel
    endif
   else
    z=pixel
    cb=p9*u
    c=p1*u
    p=pp*u
   endif
   if (ir0)
    t=0
   endif
   ex0=0
   tt=tt-1
  endif
 elseif ((ex1) && bo>b1)
  if (b2>bo)
   d3=dd1
   if (w1)
    u=2*(fn2(t/ofac))
   else
    u=1,0
   endif
   ab=ab1
   if (d3)
    if (rs1)
     z=pixel
     cb=p9*u
     c=p1*u
     p=pp*u
    else
     c=p1
     z=z*u
     cb=p9
    endif
    vb=v1j
   else
    if (rs1)
     c=z*u
     z=pixel*(sc1+px1)
     z0=p7*u
     ph=ph*u
    else
     c=z
     z=z*u
    endif
    vb=v1m
    if (mo1)
     c=0.4*log(sqr(pixel^mm))
    endif
   endif
   if (mb1)
    if (ba1==2)
     ba=bb1
    else
     ba=bb2
    endif
   else
    ba=bx
   endif
   if (ir1)
    t=0
   endif
   ex1=0
   tt=tt-1
  endif
 elseif (ex2)
  if (dt1)
   if (iv1)
    d=bo>bo1
   else
    d=bo<bo1
   endif
   if (bt1)
    d=d+(t>mi1)
   endif
  else
   d=t>mi1
  endif
  if (d)
   if (w2)
    u=2*(fn2(t/fac1))
   else
    u=1,0
   endif
   ab=ab2
   d3=dd2
   if (d3)
    if (rs2)
     z=pixel
     cb=p9*u
     c=p1*u
     p=pp*u
    else
     cb=p9
     c=p1
     z=z*u
    endif
    vb=v2j
   else
    if (rs2)
     c=z*u
     z=pixel*(sc2+px2)
     z0=p7*u
     ph=ph*u
    else
     c=z
     z=z*u
    endif
    vb=v2m
    if (mo2)
     c=0.4*log(sqr(pixel^mm))
    endif
   endif
   if (mb2)
    if (ba1==3)
     ba=bb1
    else
     ba=bb2
    endif
   else
    ba=bx
   endif
   if (ir2)
    t=0
   endif
   ex2=0
   tt=tt-1
  endif
 elseif (ex3)
  if (dt2)
   if (iv2)
    d=bo>bo2
   else
    d=bo<bo2
   endif
   if (bt2)
    d=d+(t>mi2)
   endif
  else
   d=t>mi2
  endif
  if (d)
   if (w3)
    u=2*(fn3(t/fac2))
   else
    u=1,0
   endif
   ab=ab3
   d3=dd3
   if (d3)
    if (rs3)
     z=pixel
     cb=p9*u
     c=p1*u
     p=pp*u
    else
     cb=p9
     c=p1
     z=z*u
    endif
    vb=v3j
   else
    if (rs3)
     c=z*u
     z=pixel*(sc3+px3)
     z0=p7*u
     ph=ph*u
    else
     c=z
     z=z*u
    endif
    vb=v3m
    if (mo3)
     c=0.4*log(sqr(pixel^mm))
    endif
   endif
   if (mb3)
    if (ba1==4)
     ba=bb1
    else
     ba=bb2
    endif
   else
    ba=bx
   endif
   if (ir3)
    t=0
   endif
   ex3=0
   tt=tt-1
  endif
 elseif (ex4)
  if (dt3)
   if (iv3)
    d=bo>bo3
   else
    d=bo<bo3
   endif
   if (bt3)
    d=d+(t>mi3)
   endif
  else
   d=t>mi3
  endif
  if (d)
   if (w4)
    u=2*(fn4(t/fac3))
   else
    u=1,0
   endif
   if (mb4)
    if (ba1==5)
     ba=bb1
    else
     ba=bb2
    endif
   else
    ba=bx
   endif
   ab=ab4
   d3=dd4
   if (d3)
    if (rs4)
     z=pixel
     cb=p9*u
     c=p1*u
     p=pp*u
    else
     cb=p9
     c=p1
     z=z*u
    endif
    vb=v4j
   else
    if (rs4)
     c=z*u
     z=pixel*(sc4+px4)
     z0=p7*u
     ph=ph*u
    else
     c=z
     z=z*u
    endif
    vb=v4m
    if (mo4)
     c=0.4*log(sqr(pixel^mm))
    endif
   endif
   ex4=0
   tt=0
  endif
 endif
endif
if (vb)
 if (d3)
  if (ab)
   z=z*z+c                                ;Spiderjul     John Horner
   c=c*sp+z
  else
   z1=z^p-1                               ;Qusinewton    Pusk s Istv n
   z2=p*z*z
   z=z-z1/z2
  endif
 elseif (ab)
   zt=z*z+ph-0.5*zold                     ;Phoenix       Mike Wareman
   zold=z
   z=zt
 else
  z2=fn1(z)+c                             ;Many_mods     Linda Allison
  q=cos(z2)
  z=c*(1-q)/(1+q)
 endif
elseif (d3)
 if (ab)
  z2=z*z                                  ;Julia         Pusk s Istv n
  z=z2*z2+p6*z2+c-p0
 else
  z1=fn1(z)-cb                            ;Bees          Ray Girvan
  z2=z1^p8-1
  z3=p8*(z1^(p8-1))
  z=z-(z2/z3)
 endif
elseif (ab)
 z2=z*z                                   ;Mandel        Pusk s Istv n
 z=z2*z2+p6*z2+c-p0
else
 z3=z                                     ;Secant        Mike Wareman
 z1=z0*z0*z0*z0-1
 z2=z*z*z*z-1
 z=z-z2*(z-z0)/(z2-z1)
 z0=z3
endif
bo=|z|
bo<=ba
}


--------------------------------------------------------------
--------------------------------------------------------------

Multifractal_9    { ;  Albrecht Niekamp  170903
;p1 (spider)julia-seed
;real(p2) 5digits : (1)shape (2)outside (3)inside1 (4)inside2 (5)inside3
; 0_off 1_secant 2_mand 3_bees 4_jul 5_m_mods 6_phoen 7_newt 8_spider
;  input2 :  2digits_many-mods  2digits_phoenix  2digits_spider
;            5digits_reset : 0_no 1_z-reset 2_iter-reset 3_both +5_warp
;imag(p2)(-) 5digits_colour(bailout) number
;  input2 :  4digits(-)_mand/jul 2digits_secant 4digits_bees
;real(p3) 2digits_newt 4digits_colour1, 5digits_colour2  5digits_colour3
;imag(p3) shape  : factor (fn1), 5digits_colour4  5digits_colour5
;real(p4) outside: factor (fn2), 4+1digits_bord-out 4digits+fract_bord-in
;imag(p4) inside1: maxit1, 1digit_use:1_maxit 2(7)_bord-out 3(8)_bord-in
;                  5digits_factor1 (fn2)  4digits+fract_border1
;real(p5) inside2: maxit2, 1digit_use:1_maxit 2(7)_bord-out 3(8)_bord-in
;                  5digits_factor2 (fn3)  4digits+fract_border2
;imag(p5) inside3: maxit3, 1digit_use:1_maxit 2(7)_bord-out 3(8)_bord-in
;                  5digits_factor3 (fn4)  4digits+fract_border3
;fn(1) shared by many-mods+bees
;
da=real(p2)
dd=trunc(da)
da=round((da-dd)*100000000000)+11111
dd=dd+11111
d=trunc(dd/10000)
dd=dd-d*10000
d3=(d==4)+(d==5)+(d==8)+(d==9)
d4=d3==0
vb=d>5
sc=d==2
mo=d==6
px=d==7
ab=px+(d==3)+(d==5)+(d==9)
d=trunc(dd/1000)
dd=dd-d*1000
ex1=d>1
sc1=d==2
mo1=d==6
px1=d==7
v1m=mo1+px1
v1j=d>7
dd1=v1j+(d==4)+(d==5)
ab1=px1+(d==3)+(d==5)+(d==9)
d=trunc(dd/100)
dd=dd-d*100
ex2=d>1
sc2=d==2
mo2=d==6
px2=d==7
v2m=mo2+px2
v2j=d>7
dd2=v2j+(d==4)+(d==5)
ab2=px2+(d==3)+(d==5)+(d==9)
d=trunc(dd/10)
ex3=d>1
sc3=d==2
mo3=d==6
px3=d==7
v3m=mo3+px3
v3j=d>7
dd3=v3j+(d==4)+(d==5)
ab3=px3+(d==3)+(d==5)+(d==9)
d=dd-d*10
ex4=d>1
sc4=d==2
mo4=d==6
px4=d==7
v4m=mo4+px4
v4j=d>7
dd4=v4j+(d==4)+(d==5)
ab4=px4+(d==3)+(d==5)+(d==9)
;
mm=trunc(da/1000000000)
da=da-mm*1000000000
ph=trunc(da/10000000)/100
da=da-ph*1000000000
sp=trunc(da/100000)/100
da=da-sp*10000000
d=trunc(da/10000)
ex0=d>4
da=da-d*10000
d=d-5*ex0
ir0=(d==3)+(d==4)
d=trunc(da/1000)
w1=d>4
da=da-d*1000
d=d-5*w1
rs1=(d==2)+(d==4)
ir1=(d==3)+(d==4)
d=trunc(da/100)
w2=d>4
da=da-d*100
d=d-5*w2
rs2=(d==2)+(d==4)
ir2=(d==3)+(d==4)
d=trunc(da/10)
w3=d>4
da=da-d*10
d=d-5*w3
rs3=(d==2)+(d==4)
ir3=(d==3)+(d==4)
d=round(da)
w4=d>4
d=d-5*w4
rs4=(d==2)+(d==4)
tt=ex1+ex0+ex2+ex3+ex4
;
d=real(p3)
dd=trunc(d)
da=(d-dd)*10000000000
pp=trunc(dd/10000)
ba1=dd-10000*pp
ba2=trunc(da/100000)
ba3=da-100000*ba2
;
d=imag(p3)
sfac=trunc(d)
da=(d-sfac)*10000000000
ba4=trunc(da/100000)
ba5=da-ba4*100000
;
d=real(p4)
ofac=trunc(d)
da=(d-ofac)*10000000000
bh=trunc(da/100000)/10
bl=(da-bh*1000000)/10
bs=bl/2
;
d=imag(p2)
t=d<0
if (t)
 d=-d
endif
dd=trunc(d)
da=round((d-dd)*10000000000)
d=trunc(dd/10000)
dd=dd-d*10000
bb0=ba1*(d==1)+ba2*(d==2)+ba3*(d==3)+ba4*(d==4)+ba5*(d==5)
d=trunc(dd/1000)
dd=dd-d*1000
bb1=ba1*(d==1)+ba2*(d==2)+ba3*(d==3)+ba4*(d==4)+ba5*(d==5)
d=trunc(dd/100)
dd=dd-d*100
bb2=ba1*(d==1)+ba2*(d==2)+ba3*(d==3)+ba4*(d==4)+ba5*(d==5)
d=trunc(dd/10)
dd=dd-d*10
bb3=ba1*(d==1)+ba2*(d==2)+ba3*(d==3)+ba4*(d==4)+ba5*(d==5)
d=round(dd)
bb4=ba1*(d==1)+ba2*(d==2)+ba3*(d==3)+ba4*(d==4)+ba5*(d==5)
;
d=da
p0=trunc(d/100000000)/10
d=d-p0*1000000000
p6=trunc(d/1000000)/10
d=d-p6*10000000
if (t)
 p6=-p6
endif
p7=trunc(d/10000)/10
d=d-p7*100000
p8=trunc(d/100)/100
d=d-p8*10000
p9=d/100
;
d=imag(p4)
mi1=trunc(d)
da=(d-mi1)*100000000000
d=trunc(da/10000000000)
bt1=d>6
da=da-d*10000000000
d=d-5*bt1
dt1=d>1
iv1=d==3
fac1=trunc(da/100000)
da=da-fac1*100000
bo1=(da/100000)/10
;
d=real(p5)
mi2=trunc(d)
da=(d-mi2)*100000000000
d=trunc(da/10000000000)
bt2=d>6
da=da-d*10000000000
d=d-5*bt2
dt2=d>1
iv2=d==3
fac2=trunc(da/100000)
da=da-fac2*100000
bo2=(da/100000)/10
;
d=imag(p5)
mi3=trunc(d)
da=(d-mi3)*100000000000
d=trunc(da/10000000000)
bt3=d>6
da=da-d*10000000000
d=d-5*bt3
dt3=d>1
iv3=d==3
fac3=trunc(da/100000)
da=da-fac3*100000
bo3=(da/100000)/10
;
if (d4)
 z=0
 if (vb)
  if (mo)
   c=0.4*log(sqr(pixel^mm))
  else
   c=pixel
   z=pixel
  endif
 else
  c=pixel
  z=pixel*sc
 endif
else
 c=p1
 z=pixel
endif
t=0
bo=|z|
p=pp
z0=p7
zold=(0.0,0.0)
cb=p9
ba=bb0
:
if (tt)
 t=t+1
 if (ex0)
  ex0=t<mi1
  if (bo>bs)
   u=2*(fn1(t/sfac))
   ex0=0
   if (ir0)
    t=0
   endif
   if (d4)
    z=z*u
    if (mo)
     c=0.4*log(sqr(pixel^mm))
    else
     c=pixel
    endif
   else
    z=pixel
    cb=p9*u
    c=p1*u
    p=pp*u
   endif
   tt=tt-1+ex0
  endif
 elseif ((ex1)&&bo>bl)
  if (bo<bh)
   d3=dd1
   ba=bb1
   ab=ab1
   ex1=0
   tt=tt-1
   if (w1)
    u=2*(fn2(t/ofac))
   else
    u=1,0
   endif
   if (ir1)
    t=0
   endif
   if (d3)
    vb=v1j
    if (rs1)
     z=pixel
     cb=p9*u
     c=p1*u
     p=pp*u
    else
     c=p1
     z=z*u
     cb=p9
    endif
   else
    vb=v1m
    if (rs1)
     c=z*u
     z=pixel*(sc1+px1)
     z0=p7*u
     ph=ph*u
    else
     c=z
     z=z*u
    endif
    if (mo1)
     c=0.4*log(sqr(pixel^mm))
    endif
   endif
  endif
 elseif (ex2)
  if (dt1)
   if (iv1)
    d=bo>bo1
   else
    d=bo<bo1
   endif
   if (bt1)
    d=d+(t>mi1)
   endif
  else
   d=t>mi1
  endif
  if (d)
   ab=ab2
   d3=dd2
   ba=bb2
   ex2=0
   tt=tt-1
   if (w2)
    u=2*(fn2(t/fac1))
   else
    u=1,0
   endif
   if (ir2)
    t=0
   endif
   if (d3)
    vb=v2j
    if (rs2)
     z=pixel
     cb=p9*u
     c=p1*u
     p=pp*u
    else
     cb=p9
     c=p1
     z=z*u
    endif
   else
    vb=v2m
    if (rs2)
     c=z*u
     z=pixel*(sc2+px2)
     z0=p7*u
     ph=ph*u
    else
     c=z
     z=z*u
    endif
    if (mo2)
     c=0.4*log(sqr(pixel^mm))
    endif
   endif
  endif
 elseif (ex3)
  if (dt2)
   if (iv2)
    d=bo>bo2
   else
    d=bo<bo2
   endif
   if (bt2)
    d=d+(t>mi2)
   endif
  else
   d=t>mi2
  endif
  if (d)
   ab=ab3
   d3=dd3
   ba=bb3
   ex3=0
   tt=tt-1
   if (w3)
    u=2*(fn3(t/fac2))
   else
    u=1,0
   endif
   if (ir3)
    t=0
   endif
   if (d3)
    vb=v3j
    if (rs3)
     z=pixel
     cb=p9*u
     c=p1*u
     p=pp*u
    else
     cb=p9
     c=p1
     z=z*u
    endif
   else
    vb=v3m
    if (rs3)
     c=z*u
     z=pixel*(sc3+px3)
     z0=p7*u
     ph=ph*u
    else
     c=z
     z=z*u
    endif
    vb=v3m
    if (mo3)
     c=0.4*log(sqr(pixel^mm))
    endif
   endif
  endif
 elseif (ex4)
  if (dt3)
   if (iv3)
    d=bo>bo3
   else
    d=bo<bo3
   endif
   if (bt3)
    d=d+(t>mi3)
   endif
  else
   d=t>mi3
  endif
  if (d)
   ab=ab4
   d3=dd4
   ba=bb4
   ex4=0
   tt=0
   if (w4)
    u=2*(fn4(t/fac3))
   else
    u=1,0
   endif
   if (d3)
    vb=v4j
    if (rs4)
     z=pixel
     cb=p9*u
     c=p1*u
     p=pp*u
    else
     cb=p9
     c=p1
     z=z*u
    endif
   else
    vb=v4m
    if (rs4)
     c=z*u
     z=pixel*(sc4+px4)
     z0=p7*u
     ph=ph*u
    else
     c=z
     z=z*u
    endif
    if (mo4)
     c=0.4*log(sqr(pixel^mm))
    endif
   endif
  endif
 endif
endif
if (vb)
 if (d3)
  if (ab)
   z=z*z+c                                ;Spiderjul     John Horner
   c=c*sp+z
  else
   z1=z^p-1                               ;Qusinewton    Pusk s Istv n
   z2=p*z*z
   z=z-z1/z2
  endif
 elseif (ab)
   z1=z*z+ph-0.5*zold                     ;Phoenix       Mike Wareman
   zold=z
   z=z1
 else
  z2=fn1(z)+c                             ;Many_mods     Linda Allison
  z1=cos(z2)
  z=c*(1-z1)/(1+z1)
 endif
elseif (d3)
 if (ab)
  z2=z*z                                  ;Julia         Pusk s Istv n
  z=z2*z2+p6*z2+c-p0
 else
  z1=fn1(z)-cb                            ;Bees          Ray Girvan
  z2=z1^p8-1
  z3=p8*(z1^(p8-1))
  z=z-(z2/z3)
 endif
elseif (ab)
 z2=z*z                                   ;Mandel        Pusk s Istv n
 z=z2*z2+p6*z2+c-p0
else
 z3=z                                     ;Secant        Mike Wareman
 z1=z0*z0*z0*z0-1
 z2=z*z*z*z-1
 z=z-z2*(z-z0)/(z2-z1)
 z0=z3
endif
bo=|z|
bo<ba
}


--------------------------------------------------------------
--------------------------------------------------------------
