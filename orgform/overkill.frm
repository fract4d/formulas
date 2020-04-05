comment {
  This Fractint formula file is by Bradley Beacham, (c) April 1994.
  I encourage you to copy and distribute it, but only if it is unaltered.
  If you make changes to any of these formulas, please put your changes in
  a new '.FRM' file.

  Early versions of most of these formulas have already been released in
  either BLB.FRM or MONGO.FRM.  This file collects them in an improved
  format and adds ten new formulas.

  The parameter file OVERKILL.PAR has many examples of the images I have
  created with these formulas, as well as lots of other fractal types.
  
  I welcome any comments.  Reach me at:

    CIS: 74223,2745    Internet: 74223,2745@compuserve.com

    U.S. Mail: Bradley Beacham
               1343 S. Tyler
               Salt Lake City, Utah  84105
               U.S.A.
  
  NOTE: You'll usually get more interesting results by using floating-point
        math.  
}

{-------------------------------------------------------------------------}

comment {
  Earlier versions of the formulas OK-01 to OK-22 appeared in the file
  BLB.FRM (June 1993), where they were named BLB-1 to BLB-22.  In these
  'improved' versions, I added default values for any numeric parameters
  you may supply, so you don't get a blank screen by leaving them at zero.

  These were my first attempts at inventing new formulas.  I basically used
  the 'monkey-pounding-on-the-keyboard' technique, but still got some
  interesting results.
}

OK-01 { ;TRY P1 REAL = 10000, FN1 = SQR
   z = 0, c = pixel:
   z = (c^z) + c;
   z = fn1(z),
   |z| <= (5 + p1)
  }

OK-02 { ;TRY FN1 = COTAN
   z = c = pixel, k = 1 + p1:
   z = (c^z) + c;
   z = fn1(z) * k,
   |z| <= (5 + p2)
  }

OK-03 { ;TRY P1 REAL = 500, FN1 = COS, FN2 = SQR
   z = c = pixel:
   z = fn1(z)/c;
   z = fn2(z),
   |z| <= (5 + p1)
  }

OK-04 { ;TRY FN2 = SQR, DIFFERENT FUNCTIONS FOR FN1
   z = 0, c = fn1(pixel):
   z = fn2(z) + c,
   |z| <= (5 + p1)
  }

OK-05 {
   z = pixel, k = -2,2 + p1:
   z = (z^k + z) / k,
   (1 + p2) <= |z|
  }

OK-06 { ;TRY FN1 = SQR, FN2 = SQR
   z = c = pixel, d = fn1(pixel):
   z = fn2(z / d) + c 
   |z| <= (5 + p1)
  }

OK-07 {
   z = 0, c = pixel:
   z = c * (z + c);
   z = fn1(z + c),
   |z| <= (5 + p1)
  }

OK-08 {
   z = pixel, c = fn1(pixel):
   z = z^z / fn2(z);
   z = c / z,
   |z| <= (5 + p1)
  }

OK-09 {
   z = c = pixel, d = fn1(pixel), k = 1 + p1:
   z = z^c * k;
   z = d / z,
   |z| <= (5 + p2)
  }

OK-10 {
   z = 0, c = pixel, k1 = 1 + p1, k2 = 1 + p2:
   z = (z * k1) + c;
   z = fn1(z) / (k2 + c),
   |z| <= (k2)
  }

OK-11 { ;TRY FN1 = SQR, FN2 = SQR
   z = 0, v = pixel:
   z = fn1(v) + z;
   v = fn2(z) + v,
   |z| <= (5 + p1)
  }

OK-12 { ;TRY FN1 = SQR, FN2 = SQR
   z = c = pixel:
   z = fn1(z) + c;
   z = fn2(z) / c,
   |z| <= (5 + p1)
  }

OK-13 { ;TRY FN1 = SQR, FN2 = SQR
   z = 0, c = fn1(pixel) :
   z = fn1(z) + c;
   z = fn2(z),
   |z| <= (5 + p1)
  }

OK-14 { ;FOUR FUNCTIONS TO PLAY WITH HERE.  GO CRAZY.
   z = 0, c = pixel :
   z = fn1(z+c) + c;
   z = fn2(z-c) + c;
   z = fn3(z*c) + c;
   z = fn4(z/c) + c,
   |z| <= (5 + p1)
  }

OK-15 {
   z = 0, v = pixel :
   z = fn1(v*z) + v;
   v = fn2(v/z),
   |z| <= (5 + p1)
  }

OK-16 {
   z = v = pixel :
   z = fn1(z)^v;
   v = v + z,
   |z| <= (5 + p1)
  }

OK-17 {
   z = c = pixel, r = real(pixel), i = imag(pixel):
   z = z^r + z^i + c;
   z = z + real(fn1(z)) + imag(fn2(z)),
   |z| <= (5 + p1)
  }

OK-18 {
   z = v = pixel:
   z = fn1(v) + real(z);
   v = fn2(z) + imag(v),
   |z| <= (5 + p1)
  }
  
OK-19 {
   a = b = z = pixel:
   a = fn1(b) + fn2(z);
   b = fn1(z) + fn2(a);
   z = fn1(a) + fn2(b),
   |z| <= (5 + p1)
  }

OK-20 {
   a = b = c = z = pixel:
   a = fn1(b) + c^z;
   b = fn2(a+c);
   z = z + (a * b * c),
   |z| <= (5 + p1)
  }

OK-21 {
   z = pixel, c = fn1(pixel):
   z = fn2(z) + c,
   fn3(z) <= p1
  }

OK-22 {
   z = v = pixel:
   v = fn1(v) * fn2(z);
   z = fn1(z) / fn2(v),
   |z| <= (5 + p1)
  }

{-------------------------------------------------------------------------}

comment {
  Earlier versions of the formulas OK-23 to OK-35 appeared in the file
  MONGO.FRM (August 1993), where they were named MONGO-01 to MONGO-13.  In
  these 'improved' versions, I added default values for any numeric
  parameters you may supply, so you don't get a blank screen by leaving
  them at zero.

  Most of these formulas are experiments with a crude sort of IF/ELSE
  logic (an idea I swiped from Jon Osuch's SELECT.FRM) and produce images
  with interesting discontinuities.
}

OK-23 {
   z = c = pixel, k = 1 + p1:
   z = k * fn1(z^z + c) + c/z,
   |z| <= (5 + p2)
  }

OK-24 { ;TRY P1 REAL = -2, FN1 = SQR, FN2 = RECIP
   z = 0, c = pixel, k = 1 + p1:
   z = fn2(fn1(z) + c) + (k * z),
   |z| <= (5 + p2)
  }

OK-25 {
   z = c = pixel, k = 1 + p1:
   a = (abs(z) > k)  * (fn1(z) + c);
   b = (abs(z) <= k) * (fn2(z) + c);
   z = a + b,
   |z| <= (5 + p2)
  }

OK-26 {
   z = c = pixel, k = 2 + p1, test = k/(2 + p2):
   a = fn1(z);
   b = (|z| > test)  * (a - c);
   d = (|z| <= test) * (a + c);
   z = b + d,
   |z| <= k
  }

OK-27 {
   z = pixel, c = fn1(pixel), k = 1 + p1:
   a = fn2(z);
   b = (|z| >= k) * (a - c);
   d = (|z| < k) * (a + c);
   z = a + b + d,
   |z| <= (10 + p2)
  }

OK-28 {
   z = c = pixel, d = fn1(pixel), k = p1:
   a = fn2(z);
   b = (z <= k) * (a + c + d);
   e = (z > k) * (a + c - d);
   z = z + b + e,
   |z| <= (10 + p2)
  }

OK-29 {
   z = v = pixel, k = 1 + p1:
   oldz = z;
   z = fn1(z)^k + v;
   v = oldz,
   |z| <= (5 + p2)
  }

OK-30 {
   z = v = pixel, k = .5 + p1:
   a = fn1(z);
   b = (z <= k) * (a + v);
   e = (z > k) * (a - v);
   v = z;
   z = b + e,
   |z| <= (5 + p2)
  }

OK-31 {
   z = v = pixel, k = .1 + p1:
   a = fn1(z);
   b = (a <= k) * (a + v);
   e = (a > k) * fn2(a);
   v = z;
   z = b + e,
   |z| <= (5 + p2)
  }

OK-32 {
   z = y = x = pixel, k = 1 + p1:
   a = fn1(z);
   b = (a <= y) * ((a * k) + y);
   e = (a > y) * ((a * k) + x);
   x = y;
   y = z;
   z = b + e,
   |z| <= (5 + p2)
  }

OK-33 {
   z = y = x = pixel, k = 1 + p1:
   a = (|y| <= k) * fn1(y);
   b = (|x| <= k) * fn2(x);
   x = y;
   y = z;
   z = fn3(z) + a + b,
   |z| <= (10 + p2)
  }

OK-34 {
   z = pixel, c = (fn1(pixel) * p1):
   x = abs(real(z));
   y = abs(imag(z));
   a = (x <= y) * (fn2(z) + y + c);
   b = (x > y) * (fn2(z) + x + c);
   z = a + b,
   |z| <= (10 + p2)
  }

OK-35 {
   z = pixel, k = 1 + p1:
   v = fn1(z);
   x = (z*v);
   y = (z/v);
   a = (|x| <= |y|) * ((z + y) * k);
   b = (|x| > |y|) * ((z + x) * k);
   z = fn2((a + b) * v) + v,
   |z| <= (10 + p2)
  }

{-------------------------------------------------------------------------}

comment {
  The remaining formulas, OK-36 to OK-45, are new to OVERKILL.FRM.  Some of
  these formulas use an approach I call 'disection' (for lack of a better
  term), and were inspired by a nifty CD-ROM called "Fractal Ecstasy".
  (It's made by Deep River Publishing.)

  Anyway, the idea is to calculate the real and imaginary parts of complex
  numbers separately using standard algebra.  The advantage is that
  variables and functions can be applied in ways that would be difficult
  using the conventional approach.  The disadvantage is that the formula is
  more complicated.

  Suggestion:  When you experiment with the 'disected' formulas, start by
  setting all functions to IDENT.  Then change one or two of the parameters
  at a time.
}

OK-36 { ; DISECTED MANDELBROT
  ; TO GENERATE "STANDARD" MANDELBROT, SET P1 = 0,0 & ALL FN = IDENT
  z = pixel, cx = fn1(real(z)), cy = fn2(imag(z)), k = 2 + p1:
  zx = real(z), zy = imag(z);
  x = fn3(zx*zx - zy*zy) + cx;
  y = fn4(k * zx * zy) + cy;
  z = x + flip(y),
  |z| <  (10 + p2)
}

OK-37 { ; ANOTHER DISECTED MANDELBROT
  ; TO GENERATE "STANDARD" MANDELBROT, SET P1 = 0,0 & ALL FN = IDENT
  z = pixel, c = fn1(fn2(z)), cx = real(c), cy = imag(c), k = 2 + p1:
  zx = fn3(real(z)), zy = fn4(imag(z));
  x = zx*zx - zy*zy + cx;
  y = k * zx * zy + cy;
  z = x + flip(y),
  |z| <  (10 + p2)
}

OK-38 { ; DISECTED CUBIC MANDELBROT
  ; TO GENERATE "STANDARD" CUBIC MANDELBROT, SET P1 = 0,0 & ALL FN = IDENT
  z = pixel,  cx = fn1(real(pixel)), cy = fn2(imag(pixel)), k = 3 + p1:
  zx = real(z), zy = imag(z);
  x = fn3(zx*zx*zx - k*zx*zy*zy) + cx;
  y = fn4(k*zx*zx*zy - zy*zy*zy) + cy;
  z =  x + flip(y),
  |z| <  (4 + p2)
}

OK-39 { ; JUST AN EXPERIMENT
  z = pixel, c = fn1(z), k = p1:
  z = fn2(z*c + k) + c,
  |z| <= (20 + p2)
 }

OK-40 { ; DISECTED OK-39
  ; (ASSUMING YOU USE OK-39 WITH FN1= IDENT & FN2 = SQR...)
  z = pixel, cx = fn1(real(pixel)), cy = fn2(imag(pixel)), k = 2 + p1:
  zx = real(z), zy = imag(z);
  a = zx*cx - zy*cy;
  b = cx*zy + zx*cy;
  x = fn3(a*a - b*b) + cx;
  y = fn4(k*a*b) + cy;
  z = x + flip(y),
  |z| <= (10 + p2)
}

OK-41 { ; DISECTED MANDELLAMBDA
  z = 0.5 + p1, lx = fn1(real(pixel)), ly = fn2(imag(pixel)):
  zx = real(z), zy = imag(z);
  x = fn3(lx*zx + 2*ly*zx*zy - ly*zy - lx*zx*zx + lx*zy*zy);
  y = fn4(ly*zx - 2*lx*zx*zy + lx*zy - ly*zx*zx + ly*zy*zy);
  z = x + flip(y),
  |z| <= (10 + p2)
}

OK-42 { ; MUTATION OF FN + FN
  z = pixel, p1x = real(p1)+1, p1y = imag(p1)+1,
  p2x = real(p2)+1, p2y = imag(p2)+1:
  zx = real(z), zy = imag(z);
  x = fn1(zx*p1x - zy*p1y) + fn2(zx*p2x - zy*p2y);
  y = fn3(zx*p1y + zy*p1x) + fn4(zx*p2y + zy*p2x);
  z = x + flip(y),
  |z| <= 20
}

OK-43 { ; DISECTED SPIDER
  ; TO GENERATE "STANDARD" SPIDER, SET P1 = 0,0 & ALL FN = IDENT
  z = c = pixel, k = 2 + p1:
  zx = real(z), zy = imag(z);
  cx = real(c), cy = imag(c);
  x = fn1(zx*zx - zy*zy) + cx;
  y = fn2(k*zx*zy) + cy;
  z = x + flip(y);
  c = fn3((cx + flip(cy))/k) + z,
  |z| <  (10 + p2)
}

OK-44 { ; DISECTED MANOWAR
  ; TO GENERATE "STANDARD" MANOWAR, SET P1 = 0,0 & ALL FN = IDENT
  z = pixel, z1x = cx = real(pixel), z1y = cy = imag(pixel),
  k = 2 + p1:
  oldzx = zx = real(z), oldzy = zy = imag(z);
  x = fn1(zx*zx - zy*zy) + fn2(z1x) + cx;
  y = fn3(k*zx*zy) + fn4(z1y) + cy;
  z = x + flip(y);
  z1x = oldzx, z1y = oldzy,
  |z| <= (10 + p2)
}

OK-45 { ; ANOTHER LITTLE QUICKY
  z = pixel, c = fn1(pixel), ka = 1 + p1, kb = 1 + p2:
  a = fn2(z), b = fn3(z);
  z = ka*a*a*a + kb*b*b + c,
  |z| <= 10
 }

