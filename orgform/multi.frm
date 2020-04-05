; ----------------------start-frms------------------------------
; Formulas by Albrecht Niekamp, Duesseldorf
;            <Albrecht.niekamp@t-online.de>
; 
; All formulas ending "a" are a basic variation, where
; x and y values are set to zero in the initial sequence.
; The formulas which are something in between Mandel and Julia,
; as elements of both are present, are converted to a Julia
; modification.
; This makes it easier to achieve pictures but the results
; possibly are less variable.
; Not all of the variations are fully tested.
; --------------------------------------------------------------

multifrac1 {
  z = pixel:
  y2=y*y
  x2=x*x
  x=x2-y2-p1
  y=x2*x*y-p2
  z = sqr(z)
  |z| > (x2+y2)
  }

multifrac1a {
  x=0
  y=0
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

multifrac2a {
  x=0
  y=0
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

multifrac3a {
  x=0
  y=0
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

multifrac4a {
  x=0
  y=0
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

multifrac5a {
  x=0
  y=0
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

multifrac6a {
  x=0
  y=0
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

multifrac7a {
  x=0
  y=0
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

multifrac8a {
  x=0
  y=0
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

multifrac9a {
  x=0
  y=0
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

multifrac10a {
  x=0
  y=0
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

multifrac11a {
  x=0
  y=0
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

multifrac12a {
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

multifrac13c {
  x=0
  y=0
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

multifrac13aa {
  x=0
  y=0
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

multifrac14a {
  X=0
  y=0
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

multifrac15a {
  x=0
  y=0
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

multifrac16a {
  x=0
  y=0
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

multifrac17a {
  x=0
  y=0
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

multifrac18a {
  x=0
  y=0
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

multifrac19a {
  x=0
  y=0
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

multifrac20a {
  x=0
  y=0
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

multifrac21a {
  x=0
  y=0
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

multifrac22a {
  x=0
  y=0
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

multifrac23a {
  x=0
  y=0
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

multifrac24a {
  x=0
  y=0
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

multifrac25a {
  x=0
  y=0
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

multifrac26a {
  x=0
  y=0
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

multifrac27a {
  x=0
  y=0
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

multifrac28a {
  x=0
  y=0
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

multifrac29a {
  x=0
  y=0
  z=0
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

multifrac30a {
  x=0
  y=0
  w=0
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

multifrac31a {
  x=0
  y=0
  w=0
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

multifrac30a {
  x=0
  y=0
  w=0
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

multifrac31a {
  x=0
  y=0
  w=0
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

multifrac32a {
  x=0
  y=0
  w=0
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

multifrac33a {
  x=0
  y=0
  w=0
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

multifrac34a {
  x=0
  y=0
  w=0
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

multifrac35a {
  x=0
  y=0
  w=0
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

multifrac36a {
  x=0
  y=0
  w=0
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

multifrac37a {
  x=0
  y=0
  w=0
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

multifrac38a {
  x=0
  y=0
  w=0
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

multifrac39a {
  x=0
  y=0
  w=0
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

multifrac40a  {
  x=0
  y=0
  w=0
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

multifrac41a {
  x=0
  y=0
  w=0
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

multifrac42a {
  x=0
  y=0
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

multifrac43a {
  x=0
  y=0
  w=0
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

multifrac44a {
  x=0
  y=0
  w=0
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

multifrac45a {
  x=0
  y=0
  w=0
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

multifrac46a {
  x=0
  y=0
  w=0
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

multifrac47a {
  x=0
  y=0
  w=0
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

multifrac48a {
  x=0
  y=0
  w=0
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

multifrac49a {
  x=0
  y=0
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
  y=2*y2*z
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

multifrac50a {
  x=0
  y=0
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

multifrac51a {
  x=0
  y=0
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

multifrac52a {
  x=0
  y=0
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

multifrac53a {
  x=0
  y=0
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

multifrac54a {
  x=0
  y=0
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

multifrac55a {
  x=0
  y=0
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

multifrac56a {
  x=0
  y=0
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

multifrac57a {
  x=0
  y=0
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

multifrac58a {
  x=0
  y=0
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

multifrac59a {
  x=0
  y=0
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

multifrac60a {
  x=0
  y=0
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

multifrac61a {
  x=0
  y=0
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

multifrac62a {
  x=0
  y=0
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

multifrac63a {
  x=0
  y=0
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

multifrac64a {
  x=0
  y=0
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

multifrac65a {
  x=0
  y=0
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

multifrac66a {
  x=0
  y=0
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

multifrac67a {
  x=0
  y=0
  w=0
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

multifrac68a {
  x=0
  y=0
  w=0
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

multifrac69 {
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
  x=x2*y2+p1
  y=2*x2*y2+p2
  if (x2<w2)
  w=2*x2*w2+p3
  else
  w=2*y2*w2+p3
  endif
  z=fn2(z-x-y-w)
  endif
  |z| > (x2+w2+y2)
  }

multifrac69a {
  x=0
  y=0
  w=0
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
  x=x2*y2+p1
  y=2*x2*y2+p2
  if (x2<w2)
  w=2*x2*w2+p3
  else
  w=2*y2*w2+p3
  endif
  z=fn2(z-x-y-w)
  endif
  |z| > (x2+w2+y2)
  }

multifrac70 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  if (x2<y2)
  x=x2-y2-p1
  y=y2-w2-p2
  if (y2<w2)
  w=w2-x2-p3
  else
  w=w2-y2-p3
  endif
  z=fn1(z+x+y+w)
  else
  x=x2*y2+p1
  y=2*x2*w2+p2
  if (x2<w2)
  w=2*x2*w2+p3
  else
  w=2*y2*w2+p3
  endif
  z=fn2(z-x-y-w)
  endif
  |z| > (x2+w2+y2)
  }

multifrac70a {
  x=0
  y=0
  w=0
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  if (x2<y2)
  x=x2-y2-p1
  y=y2-w2-p2
  if (y2<w2)
  w=w2-x2-p3
  else
  w=w2-y2-p3
  endif
  z=fn1(z+x+y+w)
  else
  x=x2*y2+p1
  y=2*x2*w2+p2
  if (x2<w2)
  w=2*x2*w2+p3
  else
  w=2*y2*w2+p3
  endif
  z=fn2(z-x-y-w)
  endif
  |z| > (x2+w2+y2)
  }

multifrac71 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  if (x2<y2)
  x=x2-y2-p1
  y=y2-w2-p2
  if (y2<w2)
  w=w2-x2-p3
  else
  w=w2-y2-p3
  endif
  z=fn1(z+x+y+w)
  else
  x=x2*y2+p1
  y=x2*w2+p2
  if (x2<w2)
  w=x2*w2+p3
  else
  w=y2*w2+p3
  endif
  z=fn2(z-x-y-w)
  endif
  |z| > (x2+w2+y2)
  }

multifrac71a {
  x=0
  y=0
  w=0
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  if (x2<y2)
  x=x2-y2-p1
  y=y2-w2-p2
  if (y2<w2)
  w=w2-x2-p3
  else
  w=w2-y2-p3
  endif
  z=fn1(z+x+y+w)
  else
  x=x2*y2+p1
  y=x2*w2+p2
  if (x2<w2)
  w=x2*w2+p3
  else
  w=y2*w2+p3
  endif
  z=fn2(z-x-y-w)
  endif
  |z| > (x2+w2+y2)
  }

multifrac72 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  if (x2>y2)
  x=x2-y2-p1
  y=y2-w2-p2
  if (y2>w2)
  w=w2-x2-p3
  else
  w=w2-y2-p3
  endif
  z=fn1(z+x+y+w)
  else
  x=x2*y2+p1
  y=x2*w2+p2
  if (x2>w2)
  w=x2*w2+p3
  else
  w=y2*w2+p3
  endif
  z=fn2(z-x-y-w)
  endif
  |z| > (x2+w2+y2)
  }

multifrac72a {
  x=0
  y=0
  w=0
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  if (x2>y2)
  x=x2-y2-p1
  y=y2-w2-p2
  if (y2>w2)
  w=w2-x2-p3
  else
  w=w2-y2-p3
  endif
  z=fn1(z+x+y+w)
  else
  x=x2*y2+p1
  y=x2*w2+p2
  if (x2>w2)
  w=x2*w2+p3
  else
  w=y2*w2+p3
  endif
  z=fn2(z-x-y-w)
  endif
  |z| > (x2+w2+y2)
  }

multifrac73 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  if (x2<y2)
  x=x2-y2-p1
  y=y2-w2-p2
  if (y2<w2)
  w=w2-x2-p3
  else
  w=w2-y2-p3
  endif
  z=fn1(z+x+y+w)
  phc_bailout = |z| > (x2*y2*w2)
  else
  x=x2*y2+p1
  y=x2*w2+p2
  if (x2<w2)
  w=x2*w2+p3
  else
  w=y2*w2+p3
  endif
  z=fn2(z-x-y-w)
  phc_bailout = |z| > (x2+y2+w2)
  endif
  phc_bailout
  }

multifrac73a {
  x=0
  y=0
  w=0
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  if (x2<y2)
  x=x2-y2-p1
  y=y2-w2-p2
  if (y2<w2)
  w=w2-x2-p3
  else
  w=w2-y2-p3
  endif
  z=fn1(z+x+y+w)
  phc_bailout = |z| > (x2*y2*w2)
  else
  x=x2*y2+p1
  y=x2*w2+p2
  if (x2<w2)
  w=x2*w2+p3
  else
  w=y2*w2+p3
  endif
  z=fn2(z-x-y-w)
  phc_bailout = |z| > (x2+y2+w2)
  endif
  phc_bailout
  }

multifrac74 {
  cr=real(scrnpix)+2*imag(scrnpix)
  r=cr-4*trunc(cr/real(4))
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  if (r<2)
  x=2*x2-y2-p1
  y=2*y2-w2-p2
  if (r==0)
  w=2*w2-x2-p3
  else
  w=2*w2-y2-p3
  endif
  z=fn1(z+x+y+w)
  phc_bailout = |z| > (x2*y2*w2)
  else
  x=x2*y2+p1
  y=x2*w2+p2
  if (r==2)
  w=x2*w2+p3
  else
  w=y2*w2+p3
  endif
  z=fn2(z-x-y-w)
  phc_bailout = |z| > (x2+y2+w2)
  endif
  phc_bailout
  }

multifrac74a {
  cr=real(scrnpix)+2*imag(scrnpix)
  r=cr-4*trunc(cr/real(4))
  x=0
  y=0
  w=0
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  if (r<2)
  x=2*x2-y2-p1
  y=2*y2-w2-p2
  if (r==0)
  w=2*w2-x2-p3
  else
  w=2*w2-y2-p3
  endif
  z=fn1(z+x+y+w)
  phc_bailout = |z| > (x2*y2*w2)
  else
  x=x2*y2+p1
  y=x2*w2+p2
  if (r==2)
  w=x2*w2+p3
  else
  w=y2*w2+p3
  endif
  z=fn2(z-x-y-w)
  phc_bailout = |z| > (x2+y2+w2)
  endif
  phc_bailout
  }

multifrac75 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  if (x2<y2)
  x=2*x2-y2-p1
  y=2*y2-w2-p2
  w=2*w2-x2-p3
  z=fn1(z+x+y+w)
  phc_bailout = |z| > (x*y)
  elseif (y2<w2)
  x=2*x2-y2-p1
  y=2*y2-w2-p2
  w=2*w2-y2-p3
  z=fn1(z+x+y+w)
  phc_bailout = |z| > (x*w)
  elseif (x2<w2)
  x=x2*y2+p1
  y=x2*w2+p2
  w=x2*w2+p3
  z=fn2(z-x-y-w)
  phc_bailout = |z| > (x+y)
  else
  x=x2*y2+p1
  y=x2*w2+p2
  w=y2*w2+p3
  z=fn2(z-x-y-w)
  phc_bailout = |z| > (x+w)
  endif
  phc_bailout
  }

multifrac75a {
  x=0
  y=0
  w=0
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  if (x2<y2)
  x=2*x2-y2-p1
  y=2*y2-w2-p2
  w=2*w2-x2-p3
  z=fn1(z+x+y+w)
  phc_bailout = |z| > (x*y)
  elseif (y2<w2)
  x=2*x2-y2-p1
  y=2*y2-w2-p2
  w=2*w2-y2-p3
  z=fn1(z+x+y+w)
  phc_bailout = |z| > (x*w)
  elseif (x2<w2)
  x=x2*y2+p1
  y=x2*w2+p2
  w=x2*w2+p3
  z=fn2(z-x-y-w)
  phc_bailout = |z| > (x+y)
  else
  x=x2*y2+p1
  y=x2*w2+p2
  w=y2*w2+p3
  z=fn2(z-x-y-w)
  phc_bailout = |z| > (x+w)
  endif
  phc_bailout
  }

multifrac76 {
  cr=real(scrnpix)+2*imag(scrnpix)
  r=cr-4*trunc(cr/real(4))
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  if (r==0)
  x=2*x2-y2-p1
  y=2*y2-w2-p2
  w=2*w2-x2-p3
  z=fn1(z+x+y+w)
  phc_bailout = |z| > (x*y*w)
  elseif (r==1)
  x=2*x2-y2-p1
  y=2*y2-w2-p2
  w=2*w2-y2-p3
  z=fn1(z+x+y-w)
  phc_bailout = |z| > ((x*y)/w)
  elseif (r==2)
  x=x2*y2+p1
  y=x2*w2+p2
  w=x2*w2+p3
  z=fn2(z-x-y-w)
  phc_bailout = |z| > (x+y+w)
  else
  x=x2*y2+p1
  y=x2*w2+p2
  w=y2*w2+p3
  z=fn2(z-x-y+w)
  phc_bailout = |z| > (x+y-w)
  endif
  phc_bailout
  }

multifrac76a {
  cr=real(scrnpix)+2*imag(scrnpix)
  r=cr-4*trunc(cr/real(4))
  x=0
  y=0
  w=0
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  if (r==0)
  x=2*x2-y2-p1
  y=2*y2-w2-p2
  w=2*w2-x2-p3
  z=fn1(z+x+y+w)
  phc_bailout = |z| > (x*y*w)
  elseif (r==1)
  x=2*x2-y2-p1
  y=2*y2-w2-p2
  w=2*w2-y2-p3
  z=fn1(z+x+y-w)
  phc_bailout = |z| > ((x*y)/w)
  elseif (r==2)
  x=x2*y2+p1
  y=x2*w2+p2
  w=x2*w2+p3
  z=fn2(z-x-y-w)
  phc_bailout = |z| > (x+y+w)
  else
  x=x2*y2+p1
  y=x2*w2+p2
  w=y2*w2+p3
  z=fn2(z-x-y+w)
  phc_bailout = |z| > (x+y-w)
  endif
  phc_bailout
  }

multifrac77 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  if (x2<y2)
  x=2*x2-y2-p1
  y=2*y2-w2-p2
  w=2*w2-x2-p3
  z=fn1(z+x+y+w)
  ptc_bailout = |z| > (x*y*w)
  elseif (y2<w2)
  x=2*x2-y2-p1
  y=2*y2-w2-p2
  w=2*w2-y2-p3
  z=fn2(z+x+y+w)
  ptc_bailout = |z| > (x*w)
  elseif (x2<w2)
  x=x2*y2+p1
  y=x2*w2+p2
  w=x2*w2+p3
  z=fn3(z-x-y-w)
  phc_bailout = |z| > (x+y+w)
  else
  x=x2*y2+p1
  y=x2*w2+p2
  w=y2*w2+p3
  z=fn4(z-x-y-w)
  phc_bailout = |z| > (x+w)
  endif
  phc_bailout
  }

multifrac77a {
  x=0
  y=0
  w=0
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  if (x2<y2)
  x=2*x2-y2-p1
  y=2*y2-w2-p2
  w=2*w2-x2-p3
  z=fn1(z+x+y+w)
  ptc_bailout = |z| > (x*y*w)
  elseif (y2<w2)
  x=2*x2-y2-p1
  y=2*y2-w2-p2
  w=2*w2-y2-p3
  z=fn2(z+x+y+w)
  ptc_bailout = |z| > (x*w)
  elseif (x2<w2)
  x=x2*y2+p1
  y=x2*w2+p2
  w=x2*w2+p3
  z=fn3(z-x-y-w)
  phc_bailout = |z| > (x+y+w)
  else
  x=x2*y2+p1
  y=x2*w2+p2
  w=y2*w2+p3
  z=fn4(z-x-y-w)
  phc_bailout = |z| > (x+w)
  endif
  phc_bailout
  }

multifrac78 {
  cr=real(scrnpix)+2*imag(scrnpix)
  r=cr-4*trunc(cr/real(4))
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  if (r==0)
  x=2*x2-y2-p1
  y=2*y2-w2-p2
  w=2*w2-x2-p3
  z=fn1(z+x+y+w)
  ptc_bailout = |z| > (x*y*w)
  elseif (r==1)
  x=2*x2-y2-p1
  y=2*y2-w2-p2
  w=2*w2-y2-p3
  z=fn2(z+x+y-w)
  ptc_bailout = |z| > ((x*y)/w)
  elseif (r==2)
  x=x2*y2+p1
  y=x2*w2+p2
  w=x2*w2+p3
  z=fn3(z-x-y-w)
  ptc_bailout = |z| > (x+y+w)
  else
  x=x2*y2+p1
  y=x2*w2+p2
  w=y2*w2+p3
  z=fn4(z-x-y+w)
  ptc_bailout = |z| > (x+y-w)
  endif
  ptc_bailout
  }

multifrac78a {
  cr=real(scrnpix)+2*imag(scrnpix)
  r=cr-4*trunc(cr/real(4))
  x=0
  y=0
  w=0
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  if (r==0)
  x=2*x2-y2-p1
  y=2*y2-w2-p2
  w=2*w2-x2-p3
  z=fn1(z+x+y+w)
  ptc_bailout = |z| > (x*y*w)
  elseif (r==1)
  x=2*x2-y2-p1
  y=2*y2-w2-p2
  w=2*w2-y2-p3
  z=fn2(z+x+y-w)
  ptc_bailout = |z| > ((x*y)/w)
  elseif (r==2)
  x=x2*y2+p1
  y=x2*w2+p2
  w=x2*w2+p3
  z=fn3(z-x-y-w)
  ptc_bailout = |z| > (x+y+w)
  else
  x=x2*y2+p1
  y=x2*w2+p2
  w=y2*w2+p3
  z=fn4(z-x-y+w)
  ptc_bailout = |z| > (x+y-w)
  endif
  ptc_bailout
  }

multifrac79 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  if (whitesq)
  if (X2<y2)
  x=2*x2-y2-p1
  y=2*y2-w2-p2
  w=2*w2-x2-p3
  z=fn1(z+x+y+w)
  ptc_bailout = |z| > (x*y*w)
  else
  x=2*x2-y2-p1
  y=2*y2-w2-p2
  w=2*w2-y2-p3
  z=fn2(z+x+y-w)
  ptc_bailout = |z| > ((x*y)/w)
  endif
  elseif (x2<w2)
  x=x2*y2+p1
  y=x2*w2+p2
  w=x2*w2+p3
  z=fn3(z-x-y-w)
  ptc_bailout = |z| > (x+y+w)
  else
  x=x2*y2+p1
  y=x2*w2+p2
  w=y2*w2+p3
  z=fn4(z-x-y+w)
  ptc_bailout = |z| > (x+y-w)
  endif
  ptc_bailout
  }

multifrac79a {
  x=0
  y=0
  w=0
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  if (whitesq)
  if (X2<y2)
  x=2*x2-y2-p1
  y=2*y2-w2-p2
  w=2*w2-x2-p3
  z=fn1(z+x+y+w)
  ptc_bailout = |z| > (x*y*w)
  else
  x=2*x2-y2-p1
  y=2*y2-w2-p2
  w=2*w2-y2-p3
  z=fn2(z+x+y-w)
  ptc_bailout = |z| > ((x*y)/w)
  endif
  elseif (x2<w2)
  x=x2*y2+p1
  y=x2*w2+p2
  w=x2*w2+p3
  z=fn3(z-x-y-w)
  ptc_bailout = |z| > (x+y+w)
  else
  x=x2*y2+p1
  y=x2*w2+p2
  w=y2*w2+p3
  z=fn4(z-x-y+w)
  ptc_bailout = |z| > (x+y-w)
  endif
  ptc_bailout
  }

multifrac80 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  if (whitesq)
  if (X2<y2)
  x=2*x2-y2-p1
  y=2*y2-x2-p2
  z=fn1(z+x+y)
  ptc_bailout = |z| > (x*y)
  else
  x=2*x2-y2-p1
  y=2*y2-x2-p2
  z=fn2(z+x-y)
  ptc_bailout = |z| > (x/y)
  endif
  elseif (x2<y2)
  x=x2*y2+p1
  y=x2*y2+p2
  z=fn3(z-x+y)
  ptc_bailout = |z| > (x+y)
  else
  x=x2*y2*p1
  y=y2*x2*p2
  z=fn4(z-x-y)
  ptc_bailout = |z| > (x-y)
  endif
  ptc_bailout
  }

multifrac80a {
  x=0
  y=0
  z = pixel:
  y2 = y*y
  x2 = x*x
  if (whitesq)
  if (X2<y2)
  x=2*x2-y2-p1
  y=2*y2-x2-p2
  z=fn1(z+x+y)
  ptc_bailout = |z| > (x*y)
  else
  x=2*x2-y2-p1
  y=2*y2-x2-p2
  z=fn2(z+x-y)
  ptc_bailout = |z| > (x/y)
  endif
  elseif (x2<y2)
  x=x2*y2+p1
  y=x2*y2+p2
  z=fn3(z-x+y)
  ptc_bailout = |z| > (x+y)
  else
  x=x2*y2*p1
  y=y2*x2*p2
  z=fn4(z-x-y)
  ptc_bailout = |z| > (x-y)
  endif
  ptc_bailout
  }

multifrac81 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  if (whitesq)
  if (X2<y2)
  x=2*x2-y2-p1
  y=2*y2-x2-p2
  z=fn1(z+x+y)
  phc_bailout = |z| > (x*y)
  else
  x=2*x2-y2-p1
  y=2*y2-x2-p2
  z=fn2(z+x-y)
  phc_bailout = |z| < (x/y)
  endif
  elseif (x2<y2)
  x=x2*y2+p1
  y=x2*y2+p2
  z=fn3(z-x+y)
  ptc_bailout = |z| > (x+y)
  else
  x=x2*y2*p1
  y=y2*x2*p2
  z=fn4(z-x-y)
  ptc_bailout = |z| > (x-y)
  endif
  ptc_bailout
  }

multifrac81a {
  x=0
  y=0
  z = pixel:
  y2 = y*y
  x2 = x*x
  if (whitesq)
  if (X2<y2)
  x=2*x2-y2-p1
  y=2*y2-x2-p2
  z=fn1(z+x+y)
  phc_bailout = |z| > (x*y)
  else
  x=2*x2-y2-p1
  y=2*y2-x2-p2
  z=fn2(z+x-y)
  phc_bailout = |z| < (x/y)
  endif
  elseif (x2<y2)
  x=x2*y2+p1
  y=x2*y2+p2
  z=fn3(z-x+y)
  ptc_bailout = |z| > (x+y)
  else
  x=x2*y2*p1
  y=y2*x2*p2
  z=fn4(z-x-y)
  ptc_bailout = |z| > (x-y)
  endif
  ptc_bailout
  }

multifrac82 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  if ((x2*y2)<0)
  if (X2<y2)
  x=2*x2-y2-p1
  y=2*y2-x2-p2
  z=fn1(z+x+y)
  phc_bailout = |z| > (x*y)
  else
  x=2*x2-y2-p1
  y=y2*x2-p2
  z=fn2(z+x-y)
  phc_bailout = |z| > (y-x)
  endif
  elseif (x2<y2)
  x=x2*y2+p1
  y=y2-x2+p2
  z=fn3(z-x+y)
  ptc_bailout = |z| > (x+y)
  else
  x=x2*y2+p1
  y=x2*y2+p2
  z=fn4(z-x-y)
  ptc_bailout = |z| > (x-y)
  endif
  ptc_bailout
  }

multifrac82a {
  x=0
  y=0
  z = pixel:
  y2 = y*y
  x2 = x*x
  if ((x2*y2)<0)
  if (X2<y2)
  x=2*x2-y2-p1
  y=2*y2-x2-p2
  z=fn1(z+x+y)
  phc_bailout = |z| > (x*y)
  else
  x=2*x2-y2-p1
  y=y2*x2-p2
  z=fn2(z+x-y)
  phc_bailout = |z| > (y-x)
  endif
  elseif (x2<y2)
  x=x2*y2+p1
  y=y2-x2+p2
  z=fn3(z-x+y)
  ptc_bailout = |z| > (x+y)
  else
  x=x2*y2+p1
  y=x2*y2+p2
  z=fn4(z-x-y)
  ptc_bailout = |z| > (x-y)
  endif
  ptc_bailout
  }

multifrac83 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  if ((x2*y2)<0)
  if (X2<y2)
  x=2*x2-y2-p1
  y=2*y2-x2-p2
  z=fn1(z+x+y)
  phc_bailout = |z| > (x*y)
  else
  x=2*x2-y2-p1
  y=y2*x2-p2
  z=fn2(z+x-y)
  phc_bailout = |z| > (y-x)
  endif
  elseif (x2<y2)
  x=x2*y2+p1
  y=y2-x2+p2
  z=fn3(z-x+y)
  ptc_bailout = |z| > (x+y)
  else
  x=x2*y2+p1
  y=x2*y2+p2
  z=fn4(z-x-y)
  ptc_bailout = |z| > (x-y)
  endif
  ptc_bailout
  }

multifrac83a {
  x=0
  y=0
  z = pixel:
  y2 = y*y
  x2 = x*x
  if ((x2*y2)<0)
  if (X2<y2)
  x=2*x2-y2-p1
  y=2*y2-x2-p2
  z=fn1(z+x+y)
  phc_bailout = |z| > (x*y)
  else
  x=2*x2-y2-p1
  y=y2*x2-p2
  z=fn2(z+x-y)
  phc_bailout = |z| > (y-x)
  endif
  elseif (x2<y2)
  x=x2*y2+p1
  y=y2-x2+p2
  z=fn3(z-x+y)
  ptc_bailout = |z| > (x+y)
  else
  x=x2*y2+p1
  y=x2*y2+p2
  z=fn4(z-x-y)
  ptc_bailout = |z| > (x-y)
  endif
  ptc_bailout
  }

multifrac84 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  if ((x2*y2)<0)
  if (X2<y2)
  x=2*x2-y2+p1
  y=2*y2-x2+p2
  z=fn1(z+x+y)
  phc_bailout = |z| > (x-y)
  else
  x=2*x2-y2+p1
  y=y2*x2-p2
  z=fn2(z+x-y)
  phc_bailout = |z| > (y-x)
  endif
  elseif (x2<y2)
  x=x2*y2+p1
  y=y2-x2+p2
  z=fn3(z-x+y)
  ptc_bailout = |z| > (x+y)
  else
  x=x2*y2-p1
  y=x2*y2+p2
  z=fn4(z-x-y)
  ptc_bailout = |z| > (x*y)
  endif
  ptc_bailout
  }

multifrac84a {
  x=0
  y=0
  z = pixel:
  y2 = y*y
  x2 = x*x
  if ((x2*y2)<0)
  if (X2<y2)
  x=2*x2-y2+p1
  y=2*y2-x2+p2
  z=fn1(z+x+y)
  phc_bailout = |z| > (x-y)
  else
  x=2*x2-y2+p1
  y=y2*x2-p2
  z=fn2(z+x-y)
  phc_bailout = |z| > (y-x)
  endif
  elseif (x2<y2)
  x=x2*y2+p1
  y=y2-x2+p2
  z=fn3(z-x+y)
  ptc_bailout = |z| > (x+y)
  else
  x=x2*y2-p1
  y=x2*y2+p2
  z=fn4(z-x-y)
  ptc_bailout = |z| > (x*y)
  endif
  ptc_bailout
  }

multifrac85 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  if ((x2*y2)<0)
  if (X2<y2)
  x=2*x2-y2+p1
  y=2*y2-x2+p2
  z=fn1(z+x+y)
  ptc_bailout = |z| > (x*y)
  else
  x=2*x2-y2+p1
  y=y2*x2-p2
  z=fn2(z+x-y)
  ptc_bailout = |z| > (y-x)
  endif
  elseif (x2<y2)
  x=x2*y2+p1
  y=y2-x2+p2
  z=fn3(z-x+y)
  ptc_bailout = |z| > (x+y)
  else
  x=x2*y2-p1
  y=x2*y2+p2
  z=fn4(z-x-y)
  ptc_bailout = |z| > (x-y)
  endif
  ptc_bailout
  }

multifrac85a {
  x=0
  y=0
  z = pixel:
  y2 = y*y
  x2 = x*x
  if ((x2*y2)<0)
  if (X2<y2)
  x=2*x2-y2+p1
  y=2*y2-x2+p2
  z=fn1(z+x+y)
  ptc_bailout = |z| > (x*y)
  else
  x=2*x2-y2+p1
  y=y2*x2-p2
  z=fn2(z+x-y)
  ptc_bailout = |z| > (y-x)
  endif
  elseif (x2<y2)
  x=x2*y2+p1
  y=y2-x2+p2
  z=fn3(z-x+y)
  ptc_bailout = |z| > (x+y)
  else
  x=x2*y2-p1
  y=x2*y2+p2
  z=fn4(z-x-y)
  ptc_bailout = |z| > (x-y)
  endif
  ptc_bailout
  }

multifrac86 {
  x2=x*x
  y2=y*y
  if ((x2*y2)<0)
  if (x2<y2)
  z = fn1(pixel)
  else
  z=fn2(pixel)
  endif
  elseif (x2<y2)
  z=fn3(pixel)
  else
  z=fn4(pixel)
  endif:
  if ((x2*y2)<0)
  if (X2<y2)
  x=2*x2-y2+p1
  y=2*y2-x2+p2
  z=fn1(z+x+y)
  phc_bailout = |z| > (x-y)
  else
  x=2*x2-y2+p1
  y=y2*x2-p2
  z=fn2(z+x-y)
  phc_bailout = |z| > (y-x)
  endif
  elseif (x2<y2)
  x=x2*y2+p1
  y=y2-x2+p2
  z=fn3(z-x+y)
  ptc_bailout = |z| > (x+y)
  else
  x=x2*y2-p1
  y=x2*y2+p2
  z=fn4(z-x-y)
  ptc_bailout = |z| > (x*y)
  endif
  ptc_bailout
  }

multifrac87 {
  x2=x*x
  y2=y*y
  if ((x2*y2)<0)
  if (x2<y2)
  z = fn4(pixel)
  else
  z=fn3(pixel)
  endif
  elseif (x2<y2)
  z=fn2(pixel)
  else
  z=fn1(pixel)
  endif:
  if ((x2*y2)<0)
  if (X2<y2)
  x=2*x2-y2+p1
  y=2*y2-x2+p2
  z=fn1(z+x+y)
  phc_bailout = |z| > (x-y)
  else
  x=2*x2-y2+p1
  y=y2*x2-p2
  z=fn2(z+x-y)
  phc_bailout = |z| > (y-x)
  endif
  elseif (x2<y2)
  x=x2*y2+p1
  y=y2-x2+p2
  z=fn3(z-x+y)
  ptc_bailout = |z| > (x+y)
  else
  x=x2*y2-p1
  y=x2*y2+p2
  z=fn4(z-x-y)
  ptc_bailout = |z| > (x*y)
  endif
  ptc_bailout
  }

multifrac88 {
  x2=x*x
  y2=y*y
  if (whitesq)
  if (x2<y2)
  z = fn1(pixel)
  else
  z=fn2(pixel)
  endif
  elseif (x2<y2)
  z=fn3(pixel)
  else
  z=fn4(pixel)
  endif:
  if (whitesq)
  if (X2<y2)
  x=2*x2-y2+p1
  y=2*y2-x2+p2
  z=fn1(z+x+y)
  phc_bailout = |z| > (x-y)
  else
  x=2*x2-y2+p1
  y=y2*x2-p2
  z=fn2(z+x-y)
  phc_bailout = |z| > (y-x)
  endif
  elseif (x2<y2)
  x=x2*y2+p1
  y=y2-x2+p2
  z=fn3(z-x+y)
  ptc_bailout = |z| > (x+y)
  else
  x=x2*y2-p1
  y=x2*y2+p2
  z=fn4(z-x-y)
  ptc_bailout = |z| > (x*y)
  endif
  phc_bailout
  }

multifrac89 {
  x2=x*x
  y2=y*y
  if (whitesq)
  if (x2<y2)
  z = pixel
  else
  z=-pixel
  endif
  elseif (x2<y2)
  z=1/pixel
  else
  z=Z/pixel
  endif:
  if (whitesq)
  if (X2<y2)
  x=2*x2-y2+p1
  y=2*y2-x2+p2
  z=fn1(z+x+y)
  phc_bailout = |z| > (x-y)
  else
  x=2*x2-y2+p1
  y=y2*x2-p2
  z=fn2(z+x-y)
  phc_bailout = |z| > (y-x)
  endif
  elseif (x2<y2)
  x=x2*y2+p1
  y=y2-x2+p2
  z=fn3(z-x+y)
  ptc_bailout = |z| > (x+y)
  else
  x=x2*y2-p1
  y=x2*y2+p2
  z=fn4(z-x-y)
  ptc_bailout = |z| > (x*y)
  endif
  phc_bailout
  }

multifrac90 {
  x2=x*x
  y2=y*y
  w2=w*w
  if ((x2*y2)<0)
  if (x2<y2)
  z = fn1(pixel)
  else
  z=fn2(pixel)
  endif
  elseif (x2<w2)
  z=fn3(pixel)
  else
  z=fn4(pixel)
  endif:
  if ((x2*y2)<0)
  if (X2<y2)
  x=2*x2-y2+p1
  y=2*y2-x2+p2
  w=2*w2-x2+p3
  z=fn1(z+x+y+w)
  phc_bailout = |z| > (-x-y-w)
  else
  x=2*x2-y2+p1
  y=y2*x2-p2
  w=w2*x2-p3
  z=fn2(z+x+y-w)
  phc_bailout = |z| > (-x-y+w)
  endif
  elseif (x2<w2)
  x=x2*y2+p1
  y=y2-x2+p2
  w=w2-x2+p3
  z=fn3(z-x-y-w)
  ptc_bailout = |z| > (x+y+w)
  else
  x=x2*y2-p1
  y=x2*y2+p2
  w=x2*w2+p3
  z=fn4(z-x+y+w)
  ptc_bailout = |z| > (x-y-w)
  endif
  ptc_bailout
  }

multifrac91 {
  x2=x*x
  y2=y*y
  w2=w*w
  if ((x2*y2)<0)
  if (x2<y2)
  z = fn1(pixel)
  else
  z=fn2(pixel)
  endif
  elseif (x2<w2)
  z=fn3(pixel)
  else
  z=fn4(pixel)
  endif:
  if ((x2*y2)<0)
  if (X2<y2)
  x=2*x2-y2+p1
  y=2*y2-x2+p2
  w=2*w2-x2+p3
  z=fn1(z+x+y+w)
  phc_bailout = |z| > (-x-y-w)
  else
  x=2*x2-y2+p1
  y=y2*x2-p2
  w=w2*x2-p3
  z=fn2(z+x+y-w)
  phc_bailout = |z| > (-x-y+w)
  endif
  elseif (x2<w2)
  x=x2*y2+p1
  y=2*y2-x2+p2
  w=2*w2-x2+p3
  z=fn3(z-x-y-w)
  ptc_bailout = |z| > (x+y+w)
  else
  x=x2*y2-p1
  y=x2*y2+p2
  w=x2*w2+p3
  z=fn4(z-x+y+w)
  ptc_bailout = |z| > (x-y-w)
  endif
  ptc_bailout
  }

; ----------------------start-frms------------------------------
; Formulas by Albrecht Niekamp, Duesseldorf
;            <Albrecht.niekamp@t-online.de>
; 
; All formulas ending "a" are a basic variation, where
; x and y values are set to zero in the initial sequence.
; The formulas which are something in between Mandel and Julia,
; as elements of both are present, are converted to a Julia
; modification.
; This makes it easier to achieve pictures but the results
; possibly are less variable.
; Not all of the variations are fully tested.
; --------------------------------------------------------------

Multifrac_202f {
  fac=real(p1)
  bailout=imag(p1)
  z=0
  t=0
  start=1
  c=pixel
  :
  if (start)
    t=t+1
    z=z^2+c
    if (|z|>4) || (t>647)
      u=fn1(t\fac)
      z=0
      start=0
    endif
  else
    z=(z+u)^2+c
  endif
  |z|<=bailout
  }

Multifrac_202 {
  fac=real(p1)
  bailout=imag(p1)
  z=0
  t=0
  start=1
  c=pixel
  :
  if (start)
    t=t+1
    z=z^2+c
    if (|z|>4) || (t>647)
      u=fn1(t/fac)
      z=0
      start=0
    endif
  else
    z=(z+u)^2+c
  endif
  |z|<=bailout
  }

Multifrac_203f {
  fac=real(p1)
  bailout=imag(p1)
  z=0
  t=0
  start=1
  c=pixel
  :
  if (start)
    t=t+1
    z=z^2+c
    if (|z|>4) || (t>647)
      u=fn1(t\fac)
      z=0
      c=c*u
      start=0
    endif
  else
    z=z^2+c
  endif
  |z|<=bailout
  }

Multifrac_203 {
  fac=real(p1)
  bailout=imag(p1)
  z=0
  t=0
  start=1
  c=pixel
  :
  if (start)
    t=t+1
    z=z^2+c
    if (|z|>4) || (t>647)
      u=fn1(t/fac)
      z=0
      c=c*u
      start=0
    endif
  else
    z=z^2+c
  endif
  |z|<=bailout
  }

Multifrac_204 {
  fac=real(p1)
  bailout=imag(p1)
  z=0
  t=0
  start=1
  c=pixel
  :
  if (start)
    t=t+1
    z=z^2+c
    if (|z|>4) || (t>647)
      u=fn1(t/fac)
      z=0
      start=0
    endif
  else
    z=(z*u)^2+c
  endif
  |z|<=bailout
  }

Multifrac_204af {
  fac=real(p1)
  bailout=imag(p1)
  z=0
  t=0
  start=1
  c=pixel
  :
  if (start)
    t=t+1
    z=z^2+c
    if (|z|>4) || (t>647)
      u=fn1(t\fac)
      z=0
      start=0
      endif
  else
    z=(z*u)^2+c
  endif
  |z|<=bailout
  }

Multifrac_204a {
  fac=real(p1)
  bailout=imag(p1)
  z=0
  t=0
  start=1
  c=pixel
  :
  if (start)
    t=t+1
    z=z^2+c
    if (|z|>4) || (t>647)
      u=fn1(t/fac)
      z=0
      start=0
    endif
  else
    z=(z*u)^2+c
  endif
  |z|<=bailout
  }

Multifrac_204b {
  fac=real(p1)
  bailout=imag(p1)
  border=real(p2)
  out=imag(p2)
  z=0
  t=0
  start=1
  c=pixel
  :
  if (start)
    t=t+1
    z=z^2+c
    if (|z|>=border) || (t>out)
      u=fn1(t/fac)
      z=0
      start=0
    endif
  else
    z=(z*u)^2+c
  endif
  |z|<=bailout
  }

Multifrac_204c {
  fac=real(p1)
  bailout=imag(p1)
  border=real(p2)
  out=imag(p2)
  z=0
  t=0
  start=1
  c=pixel
  :
  if (start)
    t=t+1
    z=z^2+c
    if (|z|>=border) || (t>out)
      u=2*(fn1(t/fac))
      z=0
      start=0
    endif
  else
    z=z^u+c
  endif
  |z|<=bailout
  }

Multifrac_204e {
  fac=real(p1)
  bailout=imag(p1)
  border=real(p2)
  out=imag(p2)
  z=0
  t=0
  start=1
  c=pixel
  :
  z=z^2+c
  if (start)
    t=t+1
    if (|z|>=border)
      u=2*(fn1(t/fac))
      z=z*u
      start=0
    endif
    if (t>out)
      u=2*(fn1(t/fac))
      z=z/u
      start=0
    endif
  endif
  |z|<=bailout
  }

Multifrac_204f {
  fac=real(p1)
  bailout=imag(p1)
  border=real(p2)
  out=imag(p2)
  z=0
  t=0
  start=1
  c=pixel
  :
  z=z^2+c
  if (start)
    t=t+1
    if (|z|>=border)
      u=2*(fn1(t/fac))
      z=z^u
      start=0
    endif
    if (t>out)
      u=2*(fn1(t/fac))
      z=z/u
      start=0
    endif
  endif
  |z|<=bailout
  }

Multifrac_205 {
  fac=real(p1)
  bailout=imag(p1)
  out=real(p2)
  border=imag(p2)
  z=0
  t=0
  start=1
  c=pixel
  :
  if (start)
    t=t+1
    z=z^z+c
    if (|z|>=border) || (t>out)
      u=fn1(t/fac)
      z=0
      start=0
    endif
  else
    z=(z*u)^z+c
  endif
  |z|<=bailout
  }

Multifrac_206 {
  fac=real(p1)
  bailout=imag(p1)
  out=real(p2)
  border=imag(p2)
  z=0
  t=0
  start=1
  c=pixel
  :
  if (start)
    t=t+1
    z=z^z+c
    if (|z|>=border) || (t>out)
      u=fn1(t/fac)
      z=0
      start=0
    endif
  else
    z=z^(z*c)+c
  endif
  |z|<=bailout
  }

Multifrac_207 {
  fac=real(p1)
  bailout=imag(p1)
  out=real(p2)
  border=imag(p2)
  z=pixel
  t=0
  start=1
  c=p3
  :
  if (start)
    t=t+1
    z=z^2+c
    if (|z|>=border) || (t>out)
      u=fn1(t/fac)
      z=pixel
      c=p3*u
      start=0
    endif
  else
    z=z^2+c
  endif
  |z|<=bailout
  }
  
Multifrac_208 {
  fac=real(p1)
  bailout=imag(p1)
  out=real(p2)
  border=imag(p2)
  z=pixel
  t=0
  start=1
  c=p3
  :
  if (start)
    t=t+1
    z=z^2+c
    if (|z|>=border) || (t>out)
      u=fn1(t/fac)
      z=pixel
      c=p3/u
      start=0
    endif
  else
    z=z^2+c
  endif
  |z|<=bailout
  }
  
Multifrac_209 {
  fac=real(p1)
  bailout=imag(p1)
  out=real(p2)
  border=imag(p2)
  z=pixel
  t=0
  start=1
  c=p3
  :
  z=z^z+c
  if (start)
    if (|z|>=border) || (t>out)
      u=fn1(t/fac)
      z=pixel
      c=p3/u
      start=0
    endif
  endif
  |z|<=bailout
  }
  
Multifrac_210 {
  fac=real(p1)
  bailout=imag(p1)
  out=real(p2)
  border=imag(p2)
  z=pixel
  t=0
  start=1
  c=p3
  :
  z=z^z+c
  if (start)
    t=t+1
    if (|z|>=border) || (t>out)
      u=fn1(t/fac)
      z=pixel
      c=p3*u
      start=0
    endif
  endif
  |z|<=bailout
  }
  
Multifrac_211 {
  fac=real (p1)
  bailout=imag(p1)
  out=real (p2)
  border=imag(p2)
  if (ismand)
    z = 0
    c = pixel
  else
    z = pixel
    c = p3
  endif
  t=0
  start=1
  x=0
  y=0
  :
  y2=y*y
  x2=x*x
  if (start)
    t=t+1
    x = x2-y2-real(c)
    y = 2*x*y-imag(c)
    z = z^(z+x-y)
    if (|z|>=border) || (t>out)
      u=fn1(t/fac)
      if (ismand)
        z=0
        c=pixel
      else
        z=pixel
        c=p3*u
      endif
      start=0
      x=0
      y=0
    endif
  else
    if (ismand)
      z=(z*u)^z+c
    else
      z=z^z+c
    endif
  endif
  |z| <=bailout
  }
  
Multifrac_212 {
  fac=real (p1)
  bailout=imag(p1)
  out=real (p2)
  border=imag(p2)
  if (ismand)
    z = 0
    c = pixel
  else
    z = pixel
    c = p3
  endif
  t=0
  start=1
  x=0
  y=0
  :
  y2=y*y
  x2=x*x
  if (start)
    t=t+1
    x = x2-y2-real(c)
    y = 2*x*y-imag(c)
    z = z^(z+x-y)
    if (|z|>=border) || (t>out)
      u=2*(fn1(t/fac))
      if (ismand)
        z=0
        c=pixel
      else
        z=pixel
        c=p3*u
      endif
      start=0
      x=0
      y=0
    endif
  else
    x=x2-y2-real(c)
    y=2*x*y-imag(c)
    if (ismand)
      z=(z*u)^(z+x-y)
    else
      z=z^(z+x-y)
    endif
  endif
  |z| <=bailout
  }
  
Multifrac_213 {
  ;p3=julia seed
  fac=real (p1)
  bailout=imag(p1)
  out=real (p2)
  border=imag(p2)
  z=pixel
  c=p3
  t=0
  start=1
  x=0
  y=0
  :
  y2=y*y
  x2=x*x
  x=x2-y2-real(c)
  y=2*x*y-imag(c)
  z=z^(z+x-y)
  if (start)
    t=t+1
    if (|z|>=border) || (t>out)
      u=2*(fn1(t/fac))
      z=pixel
      c=p3*u
      start=0
      x=0
      y=0
    endif
  endif
  |z| <=bailout
  }
  
Multifrac_214 {
  ;p3=julia seed
  fac=real (p1)
  bailout=imag(p1)
  out=real (p2)
  border=imag(p2)
  z=pixel
  c=p3
  t=0
  start=1
  x=0
  y=0
  :
  y2=y*y
  x2=x*x
  x=x2-y2-real(c)
  y=2*x*y-imag(c)
  z=z^(z+x-y)
  if (start)
    t=t+1
    if (|z|>=border) || (t>out)
      u=2*(fn1(t/fac))
      z=pixel
      c=p3^u
      start=0
      x=0
      y=0
    endif
  endif
  |z| <=bailout
  }
  
Multifrac_214 {
  ;p3=julia seed
  fac=real (p1)
  bailout=imag(p1)
  out=real (p2)
  border=imag(p2)
  z=pixel
  c=p3
  t=0
  start=1
  x=0
  y=0
  :
  y2=y*y
  x2=x*x
  x=x2-y2-real(c)
  y=2*x*y-imag(c)
  z=z^(z+x-y)
  if (start)
    t=t+1
    if (|z|>=border) || (t>out)
      u=2*(fn1(t/fac))
      z=pixel
      c=p3^u
      start=0
      x=0
      y=0
    endif
  endif
  |z| <=bailout
  }
  
Multifrac_215 {
  ;p3=julia seed
  fac=real (p1)
  bailout=imag(p1)
  out=real (p2)
  border=imag(p2)
  z=pixel
  c=p3
  t=0
  start=1
  x=0
  y=0
  :
  y2=y*y
  x2=x*x
  x=x2-y2-real(c)
  y=2*x*y-imag(c)
  z=(z*x)^(z*y)
  if (start)
    t=t+1
    if (|z|>=border) || (t>out)
      u=2*(fn1(t/fac))
      z=pixel
      c=p3*u
      start=0
      x=0
      y=0
    endif
  endif
  |z| <=bailout
  }
  
Multifrac_216f {
  fac=real(p1)
  bailout=imag(p1)
  out=real(p2)
  border=imag(p2)
  z=pixel
  t=0
  start=1
  c=p3
  :
  z=(z+imag(c))^(z+real(c))
  if (start)
    t=t+1
    if (|z|>=border) || (t>out)
      u=2*(fn1(t\fac))
      z=pixel
      c=p3*u
      start=0
    endif
  endif
  |z|<=bailout
  }
  
Multifrac_216 {
  fac=real(p1)
  bailout=imag(p1)
  out=real(p2)
  border=imag(p2)
  z=pixel
  t=0
  start=1
  c=p3
  :
  z=(z+imag(c))^(z+real(c))
  if (start)
    t=t+1
    if (|z|>=border) || (t>out)
      u=2*(fn1(t/fac))
      z=pixel
      c=p3*u
      start=0
    endif
  endif
  |z|<=bailout
  }
  
Multifrac_216a {
  fac=real(p1)
  bailout=imag(p1)
  out=real(p2)
  border=imag(p2)
  z=pixel
  t=0
  start=1
  c=p3
  :
  z=(z+imag(c))^(z+real(c))
  if (start)
    t=t+1
    if (|z|>=border) || (t>out)
      u=2*(fn1(t/fac))
      z=pixel
      c=p3*u
      start=0
    endif
  endif
  |z|<=bailout
  }

Multifrac_217 {
  fac=real(p1)
  bailout=imag(p1)
  border=real(p2)
  out=imag(p2)
  z=0
  t=0
  v=2
  start=1
  c=pixel
  :
  z=z^v+c
  if (start)
   t=t+1
   if (|z|>=border)
    u=2*(fn1(t/fac))
    v=u
    z=0
    start=0
   endif
   if (t>out)
    u=2*(fn2(t/fac))
    z=z/u
    start=0
   endif
  endif
  |z|<=bailout
  }
  
Multifrac_217a {
  fac=real(p1)
  bailout=imag(p1)
  border=real(p2)
  out=imag(p2)
  z=0
  t=0
  v=2
  start=1
  c=pixel
  :
  z=z^v+c
  if (start)
   t=t+1
   if (|z|>=border)
    u=2*(fn1(t/fac))
    v=u
    start=0
   endif
   if (t>out)
    u=2*(fn2(t/fac))
    z=z/u
    start=0
   endif
  endif
  |z|<=bailout
  }
  
Multifrac_218 {
  fac=real(p1)
  bailout=imag(p1)
  border=real(p2)
  out=imag(p2)
  z=0
  t=0
  start=1
  c=pixel
  :
  z=z^2+c
  if (start)
   t=t+1
   if (|z|>=border)
    u=2*(fn1(t/fac))
    z=z^u
    start=0
   endif
   if (t>out)
    u=2*(fn2(t/fac))
    z=pixel
    c=p3*u
    start=0
   endif
  endif
  |z|<=bailout
  }
  
Multifrac_218a {
  fac=real(p1)
  bailout=imag(p1)
  border=real(p2)
  out=imag(p2)
  z=0
  t=0
  start=1
  c=pixel
  :
  z=z^2+c
  if (start)
   t=t+1
   if (|z|>=border)
    u=2*(fn1(t/fac))
    z=z^u
    start=0
   endif
   if (t>out)
    u=2*(fn2(t/fac))
    c=p3*u
    start=0
   endif
  endif
  |z|<=bailout
  }
  
Multifrac_218ab {
  fac=real(p1)
  bailout=imag(p1)
  border=real(p2)
  out=imag(p2)
  z=0
  t=0
  start=1
  c=pixel
  :
  z=z^2+c
  if (start)
   t=t+1
   if (|z|>=border)
    u=2*(fn1(t/fac))
    z=z^u
    start=0
   endif
   if (t>out)
    u=2*(fn2(t/fac))
    z=z/u
    c=p3/u
    start=0
   endif
  endif
  |z|<=bailout
  }
  
Multifrac_219 {
  fac=real(p1)
  bailout=imag(p1)
  border=real(p2)
  out=imag(p2)
  z=0
  t=0
  start=1
  c=pixel
  :
  if (start)
   z=z^2+c
   t=t+1
   if (|z|>=border)
    u=2*(fn1(t/fac))
    z=z^u
    start=0
   endif
   if (t>out)
    u=2*(fn2(t/fac))
    z=z/u
    c=p3*u
    start=0
   endif
   else
   z=z^z+c
  endif
  |z|<=bailout
  }
  
Multifrac_219a {
  fac=real(p1)
  bailout=imag(p1)
  border=real(p2)
  out=imag(p2)
  z=0
  t=0
  start=1
  c=pixel
  :
  if (start)
   z=z^2+c
   t=t+1
   if (|z|>=border)
    u=2*(fn1(t/fac))
    z=z^u
    start=0
   endif
   if (t>out)
    u=2*(fn2(t/fac))
    z=z/u
    c=p3*u
    start=0
   endif
   else
   z=z^z+c
  endif
  |z|<=bailout
  }
  
Multifrac_219c {
  fac=real(p1)
  bailout=imag(p1)
  border=real(p2)
  out=imag(p2)
  z=0
  t=0
  start=1
  c=pixel
  :
  if (start)
   z=z^2+c
   t=t+1
   if (|z|>=border)
    u=2*(fn1(t/fac))
    z=z^u
    start=0
   endif
   if (t>out)
    u=2*(fn2(t/fac))
    z=z/u
    c=p3/u
    start=0
   endif
   else
   z=z^z+c
  endif
  |z|<=bailout
  }
  
Multifrac_219d {
  fac=real(p1)
  bailout=imag(p1)
  border=real(p2)
  out=imag(p2)
  z=0
  t=0
  start=1
  c=pixel
  :
  if (start)
   z=z^2+c
   t=t+1
   if (|z|>=border)
    u=2*(fn1(t/fac))
    z=z^u
    start=0
   endif
   if (t>out)
    u=2*(fn2(t/fac))
    z=z/u
    c=p3^u
    start=0
   endif
   else
   z=z^z+c
  endif
  |z|<=bailout
  }
  
Multifrac_220 {
  fac=real(p1)
  bailout=imag(p1)
  border=real(p2)
  out=imag(p2)
  z=0
  t=0
  start=1
  c=pixel
  x=0
  :
  If (x)
    z=(z/u)^z+c
  else
    z=z^z+c
  endif
  if (start)
   t=t+1
   if (|z|>=border)
    u=2*(fn1(t/fac))
    z=z^u
    start=0
    x=1
   endif
   if (t>out)
    u=2*(fn2(t/fac))
    z=z/u
    c=p3/u
    start=0
   endif
  endif
  |z|<=bailout
  }
  
Multifrac_220a {
  fac=real(p1)
  bailout=imag(p1)
  border=real(p2)
  out=imag(p2)
  z=0
  t=0
  start=1
  c=pixel
  x=0
  :
  If (x)
    z=z^(z/u)+c
  else
    z=z^z+c
  endif
  if (start)
   t=t+1
   if (|z|>=border)
    u=2*(fn1(t/fac))
    z=pixel
    start=0
    x=1
   endif
   if (t>out)
    u=2*(fn2(t/fac))
    z=z/u
    c=p3/u
    start=0
   endif
  endif
  |z|<=bailout
  }
  
Multifrac_223 {
  fac=real(p1)
  bailout=imag(p1)
  out=real(p2)
  border=imag(p2)
  z=pixel
  t=0
  x=0
  start=1
  c=p3
  :
  if (x)
   z=z^(z*u)+c
  else
   z=z^z+c
  endif
  if (start)
   t=t+1
    if (|z|>=border)
     u=2*(fn1(t/fac))
     z=z/u
     c=p3*u
     start=0
    endif
    if (t>out)
     u=2*(fn2(t/fac))
     z=0
     c=pixel
     x=1
     start=0
    endif
  endif
  |z|<=bailout
  }
  
Multifrac_224 {
  fac=real(p1)
  bailout=imag(p1)
  out=real(p2)
  border=imag(p2)
  z=pixel
  t=0
  x=0
  start=1
  c=p3
  :
  if (x)
   z=z^(z*u)+c
  else
   z=z^z+c
  endif
  if (start)
   t=t+1
   if (t>out)
     u=2*(fn1(t/fac))
     z=z/u
     c=p3*u
     start=0
    endif
   if (|z|>=border)
   u=2*(fn2(t/fac))
     z=z/u
     c=pixel
     x=1
     start=0
    endif
  endif
  |z|<=bailout
  }
  
Multifrac_225 {
  fac=real(p1)
  bailout=imag(p1)
  out=real(p2)
  border=imag(p2)
  z=pixel
  t=0
  x=0
  start=1
  c=p3
  :
  z=z^z+c
  if (start)
   t=t+1
   if (t>out) || (|z|>=border)
     u=2*(fn1(t/fac))
     z=z/u
     c=p3*u
     start=0
    endif
  endif
  |z|<=bailout
  }
  
Multifrac_226 {
  fac=real(p1)
  bailout=imag(p1)
  out=real(p2)
  border=imag(p2)
  z=pixel
  t=0
  x=0
  start=1
  c=p3
  :
  if (x)
   z=z^(z/u)+c
  else
   z=z^z+c
  endif
  if (start)
   t=t+1
   if (t>out) || (|z|>=border)
     u=2*(fn1(t/fac))
     z=z/u
     c=pixel
     start=0
     x=1
    endif
  endif
  |z|<=bailout
  }
  
Multifrac_227 {
  fac=real(p1)
  bailout=imag(p1)
  out=real(p2)
  border=imag(p2)
  z=pixel
  t=0
  x=0
  start=1
  c=p3
  :
  z=(z+real(c))^(z+imag(c))
  if (start)
   t=t+1
   if (t>out) || (|z|>=border)
     u=2*(fn1(t/fac))
     z=z/u
     c=p3*u
     start=0
    endif
  endif
  |z|<=bailout
  }
  
Multifrac_228 {
  fac=real(p1)
  bailout=imag(p1)
  out=real(p2)
  border=imag(p2)
  z=pixel
  t=0
  x=0
  start=1
  c=p3
  :
  if (start)
  z=(z+real(c))^(z+imag(c))
   t=t+1
   if (t>out) || (|z|>=border)
     u=2*(fn1(t/fac))
     z=z/u
     c=PIXEL
     start=0
    endif
  ELSE
  z=(z+real(c))^((z/u)+imag(c))
  endif
  |z|<=bailout
  }
  
Multifrac_229 {
  fac=real(p1)
  bailout=imag(p1)
  out=real(p2)
  border=imag(p2)
  z=0
  t=0
  x=0
  start=1
  c=pixel
  :
  if (start)
  z=(z+real(c))^(z+imag(c))
   t=t+1
   if (t>out) || (|z|>=border)
     u=2*(fn1(t/fac))
     z=z/u
     start=0
    endif
  ELSE
    z=(z+real(c))^((z/u)+imag(c))
  endif
  |z|<=bailout
  }


; ----------------------start-frms------------------------------
; Formulas by Albrecht Niekamp, Duesseldorf
;            <Albrecht.niekamp@t-online.de>
; using the lake formula by Sylvie Gallet.
;
; This file continues the Multi2 and Multi3 formula files.
; All formulas ending "a" are a basic variation.
; As some of the new features are used, be sure you have
; downloaded the latest Fractint version, Fractint 20.02.4 or
; later.
; The fomulas correspond to the par-files (Multlke.par)
; with the same number.
;
; I´ll be happy to get some feedback of any kind!
;
; Not all of the variations are fully tested.
; --------------------------------------------------------------
  
  
Multi_lake1  { ; Sylvie Gallet, Jan 16, 2000
  ; Multifrac variations Albrecht Niekamp
  ; p1: Julia seed
  ; real part of p2: bailout value
  ; imag part of p2: 0 = lake transform disabled
  ;                  any value between 0 and 100: water level in % of
  ;                  the screen height (0 = bottom, 100 = top)
  ; real part of p3: amplitude of the wave (try 0.2)
  ; imag part of p3: frequency (try 300)
  ;
  ; This formula uses the new predefined variables:
  ; center  = (x  , y)
  ; magxmag = (mag, xmagfactor)
  ; rotskew = (rot, skew)
  
  bailout = real(p2)
  
  if (imag(p2) > 0 && imag(p2) <= 100)
  
    level = imag(p2) / 100         ; water level
    ampl = real(p3)                ; amplitude of the wave
    freq = imag(p3)                ; frequency
  
    angle = real(rotskew * pi / 180)
    exp_irot = exp(-flip(angle))
    h = 1 / real(magxmag)
    w = h / 0.75 * imag(magxmag)
    tanskew = tan(imag(rotskew * pi / 180))
  
    u = 2 * w * exp_irot
    v = 2 * h * (tanskew + flip(1)) * exp_irot
  
    z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  
    z = pixel - z3rd
  
    b = imag(conj(u)*z) / imag(conj(u)*v)
  
    if (b <= level)
      dy = level - b
      z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v
    endif
  
    z = z + z3rd
  
  else
    z = pixel
  endif
  
  if (ismand)
    c = z
  else
    c = p1
  endif
  :
  
  ; multifrac3
    y2=y*y
    x2=x*x
    x=x2-y2-real(p1)
    y=x2*x*y-imag(p1)
    z = sqr(z)+x+y
    |z| <=bailout
    }
  
  
; --------------------------------------------------------------
; This file requires fractint 20.02.4 or later
;
Multi_lake2 {
  ;
  ; p1: Julia seed
  ; real part of p2: bailout value
  ; imag part of p2: water level in % of the screen height
  ; real part of p3: amplitude of the wave (try 0.2)
  ; imag part of p3: frequency (try 300)
  bailout = real(p2)
  if (imag(p2) > 0 && imag(p2) <= 100)
    level = imag(p2) / 100         ; water level
    ampl = real(p3)                ; amplitude of the wave
    freq = imag(p3)                ; frequency
    angle = real(rotskew * pi / 180)
    exp_irot = exp(-flip(angle))
    h = 1 / real(magxmag)
    w = h / 0.75 * imag(magxmag)
    tanskew = tan(imag(rotskew * pi / 180))
    u = 2 * w * exp_irot
    v = 2 * h * (tanskew + flip(1)) * exp_irot
    z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
    z = pixel - z3rd
    b = imag(conj(u)*z) / imag(conj(u)*v)
    if (b <= level)
      dy = level - b
      z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v
    endif
    z = z + z3rd
  else
    z = pixel
  endif
  if (ismand)
    c = z
  else
    c = p1
  endif
  x=0
  y=0
  :
  ; multifrac7
    y2 = y*y
    x2 = x*x
    x = x2-y2-real(p1)
    y = 2*x*y-imag(p1)
    z = z^(z+x-y)
    |z| <=bailout
    }
  
  
; --------------------------------------------------------------
; This file requires fractint 20.02.4 or later
;
Multi_lake3 {
  ;
  ; p1: Julia seed
  ; real part of p2: bailout value
  ; imag part of p2: water level in % of the screen height
  ; real part of p3: amplitude of the wave (try 0.2)
  ; imag part of p3: frequency (try 300)
  bailout = real(p2)
  if (imag(p2) > 0 && imag(p2) <= 100)
    level = imag(p2) / 100         ; water level
    ampl = real(p3)                ; amplitude of the wave
    freq = imag(p3)                ; frequency
    angle = real(rotskew * pi / 180)
    exp_irot = exp(-flip(angle))
    h = 1 / real(magxmag)
    w = h / 0.75 * imag(magxmag)
    tanskew = tan(imag(rotskew * pi / 180))
    u = 2 * w * exp_irot
    v = 2 * h * (tanskew + flip(1)) * exp_irot
    z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
    z = pixel - z3rd
    b = imag(conj(u)*z) / imag(conj(u)*v)
    if (b <= level)
      dy = level - b
      z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v
    endif
    z = z + z3rd
  else
    z = pixel
  endif
  if (ismand)
    c = z
  else
    c = p1
  endif
  x=0
  y=0
  :
  ; multifrac 20 variation
    y2 = y*y
    x2 = x*x
    x = x2-y2-c
    if (whitesq)
    y=2*x*y-p1
    z = z^(z-x-y)
    else
    y=2*x*y-p1
    z = z^(z-x+y)
    endif
    |z| <= bailout
    }
  
  
; --------------------------------------------------------------
; This file requires fractint 20.02.4 or later
;
Multi_lake3a {
  ;
  ; p1: Julia seed
  ; real part of p2: bailout value
  ; imag part of p2: water level in % of the screen height
  ; real part of p3: amplitude of the wave (try 0.2)
  ; imag part of p3: frequency (try 300)
  bailout = real(p2)
  if (imag(p2) > 0 && imag(p2) <= 100)
    level = imag(p2) / 100         ; water level
    ampl = real(p3)                ; amplitude of the wave
    freq = imag(p3)                ; frequency
    angle = real(rotskew * pi / 180)
    exp_irot = exp(-flip(angle))
    h = 1 / real(magxmag)
    w = h / 0.75 * imag(magxmag)
    tanskew = tan(imag(rotskew * pi / 180))
    u = 2 * w * exp_irot
    v = 2 * h * (tanskew + flip(1)) * exp_irot
    z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
    z = pixel - z3rd
    b = imag(conj(u)*z) / imag(conj(u)*v)
    if (b <= level)
      dy = level - b
      z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v
    endif
    z = z + z3rd
  else
    z = pixel
  endif
  if (ismand)
    c = z
  else
    c = p1
  endif
  x=0
  y=0
  :
  ; multifrac 20 variation
    y2 = y*y
    x2 = x*x
    x = x2-y2-c
    if (whitesq)
    y=2*x*y-real(c)
    z = z^(z-x+y)
    else
    y=2*x*y-imag(c)
    z = z^(z+x-y)
    endif
    |z| <= bailout
    }
  
  
; --------------------------------------------------------------
; This file requires fractint 20.0.6 or later
;
Multi_lake3b {
  ;
  ; p1: Julia seed
  ; real part of p2: bailout value
  ; imag part of p2: water level in % of the screen height
  ; real part of p3: amplitude of the wave (try 0.2)
  ; imag part of p3: frequency (try 300)
  bailout = real(p2)
  if (imag(p2) > 0 && imag(p2) <= 100)
    level = imag(p2) / 100         ; water level
    ampl = real(p3)                ; amplitude of the wave
    freq = imag(p3)                ; frequency
    angle = real(rotskew * pi / 180)
    exp_irot = exp(-flip(angle))
    h = 1 / real(magxmag)
    w = h / 0.75 * imag(magxmag)
    tanskew = tan(imag(rotskew * pi / 180))
    u = 2 * w * exp_irot
    v = 2 * h * (tanskew + flip(1)) * exp_irot
    z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
    z = pixel - z3rd
    b = imag(conj(u)*z) / imag(conj(u)*v)
    if (b <= level)
      dy = level - b
      z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v
    endif
    z = z + z3rd
  else
    z = pixel
  endif
  if (ismand)
    c = z
  else
    c = p1
  endif
  x=0
  y=0
  :
  ; multifrac 20 variation
    y2 = y*y
    x2 = x*x
    x = x2-y2-c
    if (whitesq)
    y=2*x*y-real(c)
    else
    y=2*x*y-imag(c)
    endif
    z=z*z-x-y
    |z| <= bailout
    }
  
  
; --------------------------------------------------------------
; This file requires fractint 20.0.6 or later
;
Multi_lake3c {
  ;
  ; p1: Julia seed
  ; real part of p2: bailout value
  ; imag part of p2: water level in % of the screen height
  ; real part of p3: amplitude of the wave (try 0.2)
  ; imag part of p3: frequency (try 300)
  bailout = real(p2)
  if (whitesq)
  if (imag(p2) > 0 && imag(p2) <= 100)
    level = imag(p2) / 100         ; water level
    ampl = real(p3)                ; amplitude of the wave
    freq = imag(p3)                ; frequency
    angle = real(rotskew * pi / 180)
    exp_irot = exp(-flip(angle))
    h = 1 / real(magxmag)
    w = h / 0.75 * imag(magxmag)
    tanskew = tan(imag(rotskew * pi / 180))
    u = 2 * w * exp_irot
    v = 2 * h * (tanskew + flip(1)) * exp_irot
    z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
    z = pixel - z3rd
    b = imag(conj(u)*z) / imag(conj(u)*v)
    if (b <= level)
      dy = level - b
      z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v
    endif
    z = z + z3rd
  else
    z = pixel
  endif
  if (ismand)
    c = z
  else
    c = p1
  endif
  else
  z=pixel
  c=p1
  endif
  x=0
  y=0
  :
  ; multifrac 20 variation
    y2 = y*y
    x2 = x*x
    x = x2-y2-c
    if (whitesq)
    y=2*x*y-real(c)
    else
    y=2*x*y-imag(c)
    endif
    z=z*z-x-y
    |z| <= bailout
    }
  
  
; --------------------------------------------------------------
; This file requires fractint 20.0.6 or later
;
Multi_lake4 {
  ;
  ; p1: Julia seed
  ; real part of p2: bailout value
  ; imag part of p2: water level in % of the screen height
  ; real part of p3: amplitude of the wave (try 0.2)
  ; imag part of p3: frequency (try 300)
  bailout = real(p2)
  if (imag(p2) > 0 && imag(p2) <= 100)
    level = imag(p2) / 100         ; water level
    ampl = real(p3)                ; amplitude of the wave
    freq = imag(p3)                ; frequency
    angle = real(rotskew * pi / 180)
    exp_irot = exp(-flip(angle))
    h = 1 / real(magxmag)
    w = h / 0.75 * imag(magxmag)
    tanskew = tan(imag(rotskew * pi / 180))
    u = 2 * w * exp_irot
    v = 2 * h * (tanskew + flip(1)) * exp_irot
    z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
    z = pixel - z3rd
    b = imag(conj(u)*z) / imag(conj(u)*v)
    if (b <= level)
      dy = level - b
      z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v
    endif
    z = z + z3rd
  else
    z = pixel
  endif
  if (ismand)
    c = z
  else
    c = p1
  endif
  x=0
  y=0
  :
  ; multifrac7
    y2 = y*y
    x2 = x*x
    x = x2-y2-real(c)
    y = 2*x*y-imag(c)
    z = z^(z+x-y)
    |z| <=bailout
    }
  
  
; --------------------------------------------------------------
Multi_lake5 {
  ;
  ; p1: Julia seed
  ; real part of p2: bailout value
  ; imag part of p2: water level in % of the screen height
  ; real part of p3: amplitude of the wave (try 0.2)
  ; imag part of p3: frequency (try 300)
  bailout = real(p2)
  if (imag(p2) > 0 && imag(p2) <= 100)
    level = imag(p2) / 100         ; water level
    ampl = real(p3)                ; amplitude of the wave
    freq = imag(p3)                ; frequency
    angle = real(rotskew * pi / 180)
    exp_irot = exp(-flip(angle))
    h = 1 / real(magxmag)
    w = h / 0.75 * imag(magxmag)
    tanskew = tan(imag(rotskew * pi / 180))
    u = 2 * w * exp_irot
    v = 2 * h * (tanskew + flip(1)) * exp_irot
    z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
    z = pixel - z3rd
    b = imag(conj(u)*z) / imag(conj(u)*v)
    if (b <= level)
      dy = level - b
      z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v
    endif
    z = z + z3rd
  else
    z = pixel
  endif
  if (ismand)
    c = z
  else
    c = p1
  endif
  x=0
  y=0
  :
  ;multifrac13
    y2 = y*y
    x2 = x*x
    x = x2-y2-real(c)
    y = 2*x*y-imag(c)
    z = sqr(z+x2+y2)
    |z| <= bailout
    }
  
  
; --------------------------------------------------------------
Multilake_6 {
  ; p1: all layers
  ; real part of p2: bailout value
  ; imag part of p2: water level in % of the screen height
  ; real part of p3: amplitude of the wave (try 0.2)
  ; imag part of p3: frequency (try 300)
  ; p4:third axis layers 2,3
  
  cr=real(scrnpix)+2*imag(scrnpix)
  r=cr-4*trunc(cr/real(4))
  bailout = real(p2)
  if (r==0)
   if (imag(p2) > 0 && imag(p2) <= 100)
    level = imag(p2) / 100         ; water level
    ampl = real(p3)                ; amplitude of the wave
    freq = imag(p3)                ; frequency
    angle = real(rotskew * pi / 180)
    exp_irot = exp(-flip(angle))
    h = 1 / real(magxmag)
    m = h / 0.75 * imag(magxmag)
    tanskew = tan(imag(rotskew * pi / 180))
    u = 2 * m * exp_irot
    v = 2 * h * (tanskew + flip(1)) * exp_irot
    z3rd = center + (-m-h*tanskew - flip(h)) * exp_irot
    z = pixel - z3rd
    b = imag(conj(u)*z) / imag(conj(u)*v)
    if (b <= level)
      dy = level - b
      z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v
    endif
    z = z + z3rd
    else
    z=pixel
    endif
   if (ismand)
    c = z
    else
    c = p1
   endif
  elseif (r==1)
   if (imag(p2) > 0 && imag(p2) <= 100)
    level = imag(p2) / 100         ; water level
    ampl = real(p3+0.1)                ; amplitude of the wave
    freq = imag(p3+100)                ; frequency
    angle = real(rotskew * pi / 180)
    exp_irot = exp(-flip(angle))
    h = 1 / real(magxmag)
    m = h / 0.75 * imag(magxmag)
    tanskew = tan(imag(rotskew * pi / 180))
    u = 2 * m * exp_irot
    v = 2 * h * (tanskew + flip(1)) * exp_irot
    z3rd = center + (-m-h*tanskew - flip(h)) * exp_irot
    z = pixel - z3rd
    b = imag(conj(u)*z) / imag(conj(u)*v)
    if (b <= level)
      dy = level - b
      z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v
    endif
    z = z + z3rd
    else
    z=pixel
    endif
   if (ismand)
    c = z
   else
    c = p1
   endif
  else
    z=pixel
    c=p1
  endif
    x=0
    y=0
    w=0
    :
    y2 = y*y
    x2 = x*x
    w2 = w*w
    x=x2-y2-real(c)
    if (r==0)
    y=2*y2*x2-imag(c)
    z=fn1(z+x+y)
    phc_bailout = |z| <(bailout-(x2*y2))
    elseif (r==1)
    y=2*y2*x2-imag(c)
    w=2*w2*x2-real(p4)
    z=fn1(z+x+y+w)
    phc_bailout = |z| < (bailout-(x2*y2*w2))
    elseif (r==2)
    y=2*y2*x2-imag(c)
    w=2*w2*y2-imag(p4)
    z=fn1(z+x+y+w)
    phc_bailout = |z| < (bailout-(x2*y2*w2))
    else
    y=2*x2*y2-imag(c)
    z=fn1(z+x+y)
    phc_bailout = |z| < (bailout-(x2+y2))
    endif
    phc_bailout
    }
  
  
; --------------------------------------------------------------
Multilake_7 {
  ; p1: all layers
  ; real part of p2: bailout value
  ; imag part of p2: water level in % of the screen height
  ; real part of p3: amplitude of the wave (try 0.2)
  ; imag part of p3: frequency (try 300)
  ; real part of p4: amplitude second lake
  ; imag part of p4: frequency second lake
  ; p5: third axis, layers 2 and 3
  ;
  cr=real(scrnpix)+2*imag(scrnpix)
  r=cr-4*trunc(cr/real(4))
  bailout = real(p2)
  if (r==0)
   if (imag(p2) > 0 && imag(p2) <= 100)
    level = imag(p2) / 100
    ampl = real(p3)
    freq = imag(p3)
    angle = real(rotskew * pi / 180)
    exp_irot = exp(-flip(angle))
    h = 1 / real(magxmag)
    m = h / 0.75 * imag(magxmag)
    tanskew = tan(imag(rotskew * pi / 180))
    u = 2 * m * exp_irot
    v = 2 * h * (tanskew + flip(1)) * exp_irot
    z3rd = center + (-m-h*tanskew - flip(h)) * exp_irot
    z = pixel - z3rd
    b = imag(conj(u)*z) / imag(conj(u)*v)
    if (b <= level)
      dy = level - b
      z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v
    endif
    z = z + z3rd
    else
    z=pixel
    endif
   if (ismand)
    c = z
    else
    c = p1
   endif
  elseif (r==1)
   if (imag(p2) > 0 && imag(p2) <= 100)
    level = imag(p2) / 100
    ampl = real(p4)
    freq = imag(p4)
    angle = real(rotskew * pi / 180)
    exp_irot = exp(-flip(angle))
    h = 1 / real(magxmag)
    m = h / 0.75 * imag(magxmag)
    tanskew = tan(imag(rotskew * pi / 180))
    u = 2 * m * exp_irot
    v = 2 * h * (tanskew + flip(1)) * exp_irot
    z3rd = center + (-m-h*tanskew - flip(h)) * exp_irot
    z = pixel - z3rd
    b = imag(conj(u)*z) / imag(conj(u)*v)
    if (b <= level)
      dy = level - b
      z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v
    endif
    z = z + z3rd
    else
    z=pixel
    endif
   if (ismand)
    c = z
   else
    c = p1
   endif
  else
    z=pixel
    c=p1
  endif
    x=0
    y=0
    w=0
    :
    y2 = y*y
    x2 = x*x
    w2 = w*w
    x=x2-y2-real(c)
    if (r==0)
    y=2*y2*x2-imag(c)
    z=fn1(z+x+y)
    phc_bailout = |z| <(bailout-(x2*y2))
    elseif (r==1)
    y=2*y2*x2-imag(c)
    w=2*w2*x2-real(p5)
    z=fn1(z+x+y+w)
    phc_bailout = |z| < (bailout-(x2*y2*w2))
    elseif (r==2)
    y=2*y2*x2-imag(c)
    w=2*w2*y2-imag(p5)
    z=fn1(z+x+y+w)
    phc_bailout = |z| < (bailout-(x2*y2*w2))
    else
    y=2*x2*y2-imag(c)
    z=fn1(z+x+y)
    phc_bailout = |z| < (bailout-(x2+y2))
    endif
    phc_bailout
    }
  
  
; --------------------------------------------------------------
; This file requires fractint 20.0.6 or later
;
Multi_lake8 {
  ;
  ; p1: Julia seed
  ; real part of p2: bailout value
  ; imag part of p2: water level in % of the screen height
  ; real part of p3: amplitude of the wave (try 0.2)
  ; imag part of p3: frequency (try 300)
  bailout = real(p2)
  if (imag(p2) > 0 && imag(p2) <= 100)
    level = imag(p2) / 100         ; water level
    ampl = real(p3)                ; amplitude of the wave
    freq = imag(p3)                ; frequency
    angle = real(rotskew * pi / 180)
    exp_irot = exp(-flip(angle))
    h = 1 / real(magxmag)
    w = h / 0.75 * imag(magxmag)
    tanskew = tan(imag(rotskew * pi / 180))
    u = 2 * w * exp_irot
    v = 2 * h * (tanskew + flip(1)) * exp_irot
    z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
    z = pixel - z3rd
    b = imag(conj(u)*z) / imag(conj(u)*v)
    if (b <= level)
      dy = level - b
      z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v
    endif
    z = z + z3rd
  else
    z = pixel
  endif
  if (ismand)
    c = z
  else
    c = p1
  endif
  x=0
  y=0
  :
  ; multifrac7
    y2 = y*y
    x2 = x*x
    x = x2-y2-real(p1)
    y = 2*x*y-imag(p1)
    z = (z+x-y)^z
    |z| <=bailout
    }
  
  
; --------------------------------------------------------------
; This file requires fractint 20.0.6 or later
;
Multi_lake9 {
  ;
  ; p1: Julia seed
  ; real part of p2: bailout value
  ; imag part of p2: water level in % of the screen height
  ; real part of p3: amplitude of the wave (try 0.2)
  ; imag part of p3: frequency (try 300)
  bailout = real(p2)
  if (imag(p2) > 0 && imag(p2) <= 100)
    level = imag(p2) / 100         ; water level
    ampl = real(p3)                ; amplitude of the wave
    freq = imag(p3)                ; frequency
    angle = real(rotskew * pi / 180)
    exp_irot = exp(-flip(angle))
    h = 1 / real(magxmag)
    w = h / 0.75 * imag(magxmag)
    tanskew = tan(imag(rotskew * pi / 180))
    u = 2 * w * exp_irot
    v = 2 * h * (tanskew + flip(1)) * exp_irot
    z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
    z = pixel - z3rd
    b = imag(conj(u)*z) / imag(conj(u)*v)
    if (b <= level)
      dy = level - b
      z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v
    endif
    z = z + z3rd
  else
    z = pixel
  endif
  if (ismand)
    c = z
  else
    c = p1
  endif
  x=0
  y=0
  :
  ; multifrac7
    y2 = y*y
    x2 = x*x
    x = x2-y2-real(c)
    y = 2*x*y-imag(c)
    z = z^(z+x+y)
    |z| <=bailout
    }
  
  
; --------------------------------------------------------------
; This file requires fractint 20.0.6 or later
;
Multi_lake10 {
  ;
  ; p1: Julia seed
  ; real part of p2: bailout value
  ; imag part of p2: water level in % of the screen height
  ; real part of p3: amplitude
  ; imag part of p3: frequency (try 300)
  bailout = real(p2)
  if (imag(p2) > 0 && imag(p2) <= 100)
    level = imag(p2) / 100         ; water level
    ampl = real(p3)                ; amplitude of the wave
    freq = imag(p3)                ; frequency
    angle = real(rotskew * pi / 180)
    exp_irot = exp(-flip(angle))
    h = 1 / real(magxmag)
    w = h / 0.75 * imag(magxmag)
    tanskew = tan(imag(rotskew * pi / 180))
    u = 2 * w * exp_irot
    v = 2 * h * (tanskew + flip(1)) * exp_irot
    z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
    z = pixel - z3rd
    b = imag(conj(u)*z) / imag(conj(u)*v)
    if (b <= level)
      dy = level - b
      z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v
    endif
    z = z + z3rd
  else
    z = pixel
  endif
  if (ismand)
    c = z
  else
    c = p1
  endif
  x=0
  y=0
  :
  ; multifrac7 variation
    y2 = y*y
    x2 = x*x
    x = x2-y2-real(c)
    y = 2*x*y-imag(c)
    z =(z+x)^(z-y)
    |z| <=bailout
    }
  
  
; --------------------------------------------------------------
; This file requires fractint 20.0.6 or later
;
Multi_lake11 {
  ;
  ; p1: Julia seed
  ; real part of p2: bailout value
  ; imag part of p2: water level in % of the screen height
  ; real part of p3: amplitude of the wave (try 0.2)
  ; imag part of p3: frequency (try 300)
  bailout = real(p2)
  if (imag(p2) > 0 && imag(p2) <= 100)
    level = imag(p2) / 100         ; water level
    ampl = real(p3)                ; amplitude of the wave
    freq = imag(p3)                ; frequency
    angle = real(rotskew * pi / 180)
    exp_irot = exp(-flip(angle))
    h = 1 / real(magxmag)
    w = h / 0.75 * imag(magxmag)
    tanskew = tan(imag(rotskew * pi / 180))
    u = 2 * w * exp_irot
    v = 2 * h * (tanskew + flip(1)) * exp_irot
    z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
    z = pixel - z3rd
    b = imag(conj(u)*z) / imag(conj(u)*v)
    if (b <= level)
      dy = level - b
      z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v
    endif
    z = z + z3rd
  else
    z = pixel
  endif
  if (ismand)
    c = z
  else
    c = p1
  endif
  x=0
  y=0
  :
  ; multifrac7 variation
    y2 = y*y
    x2 = x*x
    x = x2-y2-real(c)
    y = 2*x*y-imag(c)
    z =(z-x)^(z-y)
    |z| <=bailout
    }
  
  
; --------------------------------------------------------------
Multi_lake12 {
  ;
  ; p1: Julia seed
  ; real part of p2: bailout value
  ; imag part of p2: water level in % of the screen height
  ; real part of p3: amplitude of the wave (try 0.2)
  ; imag part of p3: frequency (try 300)
  bailout = real(p2)
  if (imag(p2) > 0 && imag(p2) <= 100)
    level = imag(p2) / 100         ; water level
    ampl = real(p3)                ; amplitude of the wave
    freq = imag(p3)                ; frequency
    angle = real(rotskew * pi / 180)
    exp_irot = exp(-flip(angle))
    h = 1 / real(magxmag)
    w = h / 0.75 * imag(magxmag)
    tanskew = tan(imag(rotskew * pi / 180))
    u = 2 * w * exp_irot
    v = 2 * h * (tanskew + flip(1)) * exp_irot
    z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
    z = pixel - z3rd
    b = imag(conj(u)*z) / imag(conj(u)*v)
    if (b <= level)
      dy = level - b
      z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v
    endif
    z = z + z3rd
  else
    z = pixel
  endif
  if (ismand)
    c = z
  else
    c = p1
  endif
  x=0
  y=0
  :
  ; multifrac7 variation
    y2 = y*y
    x2 = x*x
    x = x2-y2-real(c)
    y = 2*x*y-imag(c)
    z =(z*x)^(z*y)
    |z| <=bailout
    }
  
  
; --------------------------------------------------------------
Multi_lake13 {
  ;
  ; p1: Julia seed
  ; real part of p2: bailout value
  ; imag part of p2: water level in % of the screen height
  ; real part of p3: amplitude of the wave (try 0.2)
  ; imag part of p3: frequency (try 300)
  bailout = real(p2)
  if (imag(p2) > 0 && imag(p2) <= 100)
    level = imag(p2) / 100         ; water level
    ampl = real(p3)                ; amplitude of the wave
    freq = imag(p3)                ; frequency
    angle = real(rotskew * pi / 180)
    exp_irot = exp(-flip(angle))
    h = 1 / real(magxmag)
    w = h / 0.75 * imag(magxmag)
    tanskew = tan(imag(rotskew * pi / 180))
    u = 2 * w * exp_irot
    v = 2 * h * (tanskew + flip(1)) * exp_irot
    z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
    z = pixel - z3rd
    b = imag(conj(u)*z) / imag(conj(u)*v)
    if (b <= level)
      dy = level - b
      z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v
    endif
    z = z + z3rd
  else
    z = pixel
  endif
  if (ismand)
    c = z
  else
    c = p1
  endif
  x=0
  y=0
  :
  ; multifrac7 variation
    y2 = y*y
    x2 = x*x
    x = x2-y2-real(c)
    y = 2*x*y-imag(c)
    z =(z+x)^(z*y)
    |z| <=bailout
    }
  
  
; --------------------------------------------------------------
Multi_lake14   { ;additional 3d effect
  ;
  ; p1: Julia seed
  ; real part of p2: bailout value
  ; imag part of p2: water level in % of the screen height
  ; real part of p3: amplitude of the wave (try 0.2)
  ; imag part of p3: frequency (try 300)
  bailout = real(p2)
  fac = real(p4)
  if (imag(p2) > 0 && imag(p2) <= 100)
    level = imag(p2) / 100         ; water level
    ampl = real(p3)                ; amplitude of the wave
    freq = imag(p3)                ; frequency
    angle = real(rotskew * pi / 180)
    exp_irot = exp(-flip(angle))
    h = 1 / real(magxmag)
    w = h / 0.75 * imag(magxmag)
    tanskew = tan(imag(rotskew * pi / 180))
    u = 2 * w * exp_irot
    v = 2 * h * (tanskew + flip(1)) * exp_irot
    z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
    z = pixel - z3rd
    b = imag(conj(u)*z) / imag(conj(u)*v)
    if (b <= level)
      dy = level - b
      z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v
    endif
    z = z + z3rd
  else
    z = pixel
  endif
  u=fn1(t/fac)
  if (ismand)
    c = z+u
  else
    c = p1+u
  endif
  x=0
  y=0
  t=0
  :
  ; multifrac7_3d_variation
    t=t+1
    y2 = y*y
    x2 = x*x
    x = x2-y2-real(c)
    y = 2*x*y-imag(c)
    z =(z+x)^(z*y)
    |z| <=bailout
    }
  
  
; --------------------------------------------------------------
Multi_lake15   { ;additional 3d effect
  ;
  ; p1: Julia seed
  ; real part of p2: bailout value
  ; imag part of p2: water level in % of the screen height
  ; real part of p3: amplitude of the wave (try 0.2)
  ; imag part of p3: frequency (try 300)
  bailout = real(p2)
  fac = real(p4)
  if (imag(p2) > 0 && imag(p2) <= 100)
    level = imag(p2) / 100         ; water level
    ampl = real(p3)                ; amplitude of the wave
    freq = imag(p3)                ; frequency
    angle = real(rotskew * pi / 180)
    exp_irot = exp(-flip(angle))
    h = 1 / real(magxmag)
    w = h / 0.75 * imag(magxmag)
    tanskew = tan(imag(rotskew * pi / 180))
    u = 2 * w * exp_irot
    v = 2 * h * (tanskew + flip(1)) * exp_irot
    z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
    z = pixel - z3rd
    b = imag(conj(u)*z) / imag(conj(u)*v)
    if (b <= level)
      dy = level - b
      z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v
    endif
    z = z + z3rd
  else
    z = pixel
  endif
  u=cos(t/fac)
  if (ismand)
    c = z*u
  else
    c = p1*u
  endif
  x=0
  y=0
  t=0
  :
  ; multifrac7_3d_variation
    t=t+1
    y2 = y*y
    x2 = x*x
    x = x2-y2+imag(c)
    y = 2*x*y+real(c)
    z =(z*x)^(z*y)
    |z| <=bailout
    }
