comment {
The fractals in this file are some of my first attempts
at using the formula complier.  (At least those I was willing
to show others <G>).  Comments are welcome as always!
The accompanying parameter file (RCL.PAR) provides a simple
example generated from each formula.

Ron Lewen
CIS: 76376,2567 
 }

RCL_Cross1  { ; Ron Lewen
  ; Try p1=(0,1), fn1=sin and fn2=sqr.  Set corners at
  ; -10/10/-7.5/7.5 to see a cross shape.  The larger 
  ; lakes at the center of the cross have good detail
  ; to zoom in on.
  ; Use floating point.
  ;
  z=pixel:
    z=p1*fn1(fn2(z+p1)),
      |z| <= 4
  }

RCL_Cross2 { ; Ron Lewen
  ; Try p1=(0,1), fn1=sin and fn2=sqr.  Set corners at
  ; -10/10/-7.5/7.5 to see a deformed cross shape. 
  ; The larger lakes at the center of the cross have
  ; good detail to zoom in on.
  ; Try corner=-1.58172/.976279/-1.21088/-.756799 to see
  ; a deformed mandelbrot set.
  ; Use floating point.
  ;
  z=pixel:
    z=pixel*fn1(fn2(z+p1)),
      |z| <= 4
  }

RCL_Mandel (XAXIS) { ; Ron Lewen
  ; The traditional Mandelbrot formula with a different
  ; escape condition.  Try p1=(1,0).  This is basically the M-Set
  ; with more chaos outside.  p1=(0,0) yields a distorted M-set.
  ; Use floating point
  ;
  z=pixel:
    z=sqr(z) + pixel,
      sin(z) <= p1
  }

RCL_Logistic_1 (XAXIS) { ; Ron Lewen
  ; Based on logistic equation  x -> c(x)(1-x) used
  ; to model animal populations.  Try p1=(3,0.1) to
  ; see a family of spiders out for a walk <G>!
  ;
  z=pixel:
    z=p1*z*(1-z),
      |z| <= 1
  }

RCL_Pick1 (XAXIS) { ; Ron Lewen
  ; Try corners=2.008874/-3.811126/-3.980167/3.779833/
  ; -3.811126/3.779833 to see Figure 9.7 (P. 123) in 
  ; Pickover's Computers, Pattern, Chaos and Beauty.
  ; Figures 9.9 - 9.13 can be found by zooming.
  ; Use floating point
  ;
  z=0:
    z=cosh(z) + pixel,
      abs(z) < 40
  }

RCL_Pick2_M (XAXIS) { ; Ron Lewen
  ; Generates a biomorph of a Pseudo-Mandelbrot set with
  ; extra tails.  Part of Pickover's Biomorph Zoo Collection
  ; Formula is adapted from Pickover's book, Figure 8.9
  ; (p. 105) but the result is different.  Set corners=
  ; -2.640801/1.359199/-1.5/1.5 to center image.  I use the
  ; color map that comes as default in WINFRACT. (I guess I
  ; like purple <G>).
  ; Use floating point
  ;
  z=pixel:
    z=sin(z) + z^2 + pixel,
      |real(z)| < 100 || |imag(z)| < 100
  }
 
RCL_Pick2_J { ; Ron Lewen
  ;  A julia set based on the formula in Figure 8.9
  ;  (p. 105) of Pickover's book.  Very similar to 
  ;  the Frontpiece for Appendix A.
  ;
  z=pixel:
    z=sin(z) + z^2 + p1,
      abs(real(z)) < 100 || abs(imag(z)) < 100
  }

RCL_Pick3 (XAXIS) { ; Ron Lewen
  ; Generates Figure 9.18 (p. 134) from Pickover's book.
  ; Set maxiter >= 1000 to see good detail in the spirals
  ; in the three large lakes.  Also set inside=0.
  ;
  z=0.5:
    z=z*pixel-pixel/sqr(z),
      abs(z) < 8
  }

RCL_Pick4 (XAXIS) { ; Ron Lewen
  ; Variation of formula for Figure 9.18 (p. 134) from Pickover's
  ; book.
  ; Set inside=0 to see three large lakes around a blue "core".
  ;
  z=pixel:
    z=z*pixel-pixel/sqr(z),
      |z| <= 4
  }

RCL_Pick5 (XAXIS) { ; Ron Lewen
  ;
  ; Adapted from Pickover's Biomorph Zoo Collection in
  ; Figure 8.7 (p. 102).
  ;
  z=pixel:
    z=z^z + z^5 + pixel,
      |real(z)| <= 100 || |imag(z)| <= 100
  }

RCL_Pick6 (XAXIS) { ; Ron Lewen
  ;
  ; Adapted from Pickover's Biomorph Zoo Collection in
  ; Figure 8.7 (p. 102).
  ;
  z=pixel:
    z=z^z + z^6 + pixel,
      |real(z)| <= 100 || |imag(z)| <= 100
  }

RCL_Pick7 (XAXIS) { ; Ron Lewen
  ;
  ; Adapted from Pickover's Biomorph Zoo Collection in
  ; Figure 8.7 (p. 102).
  ;
  z=pixel:
    z=z^5 + pixel,
      |real(z)| <= 100 || |imag(z)| <= 100
  }

RCL_Pick8 (XAXIS) { ; Ron Lewen
  ;
  ; Adapted from Pickover's Biomorph Zoo Collection in
  ; Figure 8.7 (p. 102).
  ;
  z=pixel:
    z=z^3 + pixel,
      |real(z)| <= 100 || |imag(z)| <= 100
  }

RCL_Pick9 (XAXIS) { ; Ron Lewen
  ;
  ; Adapted from Pickover's Biomorph Zoo Collection in
  ; Figure 8.7 (p. 102).
  ;
  z=pixel:
    z=sin(z) + 2.71828^z + pixel,
      |real(z)| <= 100 || |imag(z)| <= 100
  }

RCL_Pick10 (XAXIS) { ; Ron Lewen
  ;
  ;  Variation of Figure 9.18 (p.134) from Pickover's
  ;  Book.  Generates an interesting Biomorph.
  ;
  z=pixel:
    z=z/pixel-pixel*sqr(z),
      abs(z) < 8
  }

RCL_Pick11 (XAXIS) { ; Ron Lewen
  ;
  ;  Formula from Figure 8.3 (p. 98) of Pickover's
  ;  book.  Generates a biomorph.  Figure 8.3 is a
  ;  zoom on one of the shapes at the corner of the
  ;  biomorph.
  ;
  ;  Use Floating Point
  ;
  z=pixel:
    z=z^2+0.5
      |real(z)| <= 100 || |imag(z)| <= 100
  }

RCL_Pick12 { ; Ron Lewen
  ;
  ;  Formula from Figure 12.7 (p. 202) of Pickover's
  ;  book.
  ;
  ;  Use Floating Point
  ;
  z=pixel:
    z=(2.71828^(p1)) * z * (1-z),
      abs(real(z)) < 10 || abs(imag(z)) < 10
  }

RCL_Pick13 { ; Ron Lewen
  ;
  ;  Formula from Frontpiece for Appendix C 
  ;  and Credits in Pickover's book.
  ;  Set p1=(3,0) to generate the Frontpiece
  ;  for Appendix C and to (2,0) for Credits
  ;
  ;  Use Floating Point
  ;
  z=.001:
    z=z^p1+(1/pixel)^p1,
      |z| <= 100
  }

RCL_1 (XAXIS) { ; Ron Lewen
  ;
  ;  An interesting Biomorph inspired by Pickover's
  ;  Computers, Pattern, Choas and Beauty.
  ;
  ;  Use Floating Point
  ;
  z=pixel:
    z=pixel/z-z^2,
      |real(z)| <= 100 || |imag(z)| <= 100
  }

RCL_2 (XAXIS) { ; Ron Lewen
  ;
  ;  A biomorph flower?  Simply a change in initial
  ;  conditions from RCL_1 above
  ;
  ;  Use Floating Point
  ;
  z=1/pixel:
    z=pixel/z-z^2
      |real(z)| <= 100 || |imag(z)| <= 100
  }

RCL_3 (XAXIS) { ; Ron Lewen
  ;
  ;  A seemingly endless vertical pattern.  The most activity
  ;  is around the center of the image.
  ;
  ;  Use Floating Point
  ;
  z=pixel:
    z=pixel^z+z^pixel,
      |real(z)| <= 100 || |imag(z)| <= 100
  }

RCL_Quaternion_J (ORIGIN) { ; Ron Lewen
  ;
  ;  From Pseudocode 10.5 (p. 169) of Pickover's book.
  ;  Looks at Julia set for a0,a2 plane.  p1 selects
  ;  slice in to look at.
  ;  p2 correspondes to a point on the Quaternion
  ;  Mandelbrot set (see below).
  ;  Try (-.745,.113) as a starting point.
  ;
    a0=real(pixel), a2=imag(pixel), a1=real(p1), a3=imag(p1):
    savea0=a0^2-a1^2-a2^2-a3^2+p2
    savea2=2*a0*a2+p2
    a0=savea0
    a2=savea2
      (a0^2+a1^2+a2^2+a3^2) <= 2
  }

RCL_Quaternion_M (XAXIS) { ; Ron Lewen
  ;
  ;  From Pseudocode 10.5 (p. 169) of Pickover's book.
  ;  Looks at Mandelbrot set for a0,a2 plane.
  ;  p1 selects slice in to look at.  p1 should
  ;  not be (0,0) (this yields a blank screen!).
  ;
    a0=a2=pixel, a1=real(p1), a3=imag(p1):
    savea0=a0^2-a1^2-a2^2-a3^2+pixel
    savea2=2*a0*a2+pixel
    a0=savea0
    a2=savea2
      (a0^2+a1^2+a2^2+a3^2) <= 2
  }
