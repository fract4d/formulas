comment {

 Gallet-4.frm contains the following PHC and PTC formulas:
   Gallet-4-04, Gallet-4-05, Gallet-4-06, Gallet-4-07, Gallet-4-08
   Gallet-4-10 and Gallet-4-12.

 The formulas:
   Gallet-4-09, Gallet-4-10, Gallet-4-11, Gallet-4-12, Gallet-4-13
   Gallet-4-14
 are a first attempt at using hypercomplex numbers.

 Hypercomplex numbers are a four dimensional generalization of complex
 numbers.  Any hypercomplex h can be represented as a linear combination
 h = x + yi + zj + wk of the basis vectors just as any complex number can
 be written in the form z = a + bi.

 I recently discovered that if h is represented as the pair of complex
 numbers (a,b) with: a = (x-w) + i(y+z) and b = (x+w) + i(y-z), the basic
 operations (addition, multiplication,...) are REALLY easy to compute!
 Let
      h = (a,b),  h1 = (a1,b1)  and  h2 = (a2,b2).
 Then:
      h1 + h2 = (a1+a2,b1+b2)
      h1 * h2 = (a1*a2,b1*b2)
      h1 / h2 = (a1/a2,b1/b2)
      1 / h1  = (1/a1,1/b1)
      |h| = (|a|+|b|) / 2
      h^p = (a^p,b^p)      [p is a complex number]

 I used these rules to implement the built-in hypercomplex Mandel type in
 Gallet-4-13.  Note that I added the statement "z = (a + b)/2" to allow
 the use of all the coloring schemes.

}


Gallet-4-01 { ; Sylvie Gallet [101324,3444], 1996
  z = pixel , h = p1 , a = p2 :
   x = real(z) , y = imag(z)
   x1 = x - fn2(x + a*fn1(x+h))
   y1 = y + fn2(y + a*fn1(y+h))
   z = x1 + flip(y1)
    |z| <= 4
  }

Gallet-4-02 { ; Sylvie Gallet [101324,3444], 1996
  z = pixel , h = p1 , a = p2 :
   x = real(z) , y = imag(z)
   y1 = y + fn2(x + a*fn1(x+h))
   x1 = x - fn2(y + a*fn1(y+h))
   z = x1 + flip(y1)
    |z| <= 16
  }

Gallet-4-03 { ; Sylvie Gallet [101324,3444], 1996
  z2 = 0 , z1 = c = pixel :
   z = fn1(z1) + p1*real(c)*fn2(z1) + p2*imag(c)*z2
   z2 = z1 , z1 = z
    |z| <= 4
  }

Gallet-4-04 { ; Sylvie Gallet [101324,3444], 1996
              ; PHC formula
  z = pixel * whitesq + (whitesq == 0 ) / pixel :
   x = real(z) , y = imag(z)
   x1 = x - p1 * fn1(y + p2*fn2(y))
   y1 = y - p1 * fn1(x + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 4
  }

Gallet-4-05 { ; Sylvie Gallet [101324,3444], 1996
              ; PHC formula
  z = pixel :
   x = real(z) , y = imag(z)
   x1 = x - p1 * fn1(y*(y - whitesq) + p2*fn2(y))
   y1 = y - p1 * fn1(x*(x - (whitesq == 0)) + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 4
  }

Gallet-4-06 { ; Sylvie Gallet [101324,3444], 1996
              ; PTC 24 bits formula
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  sq3 = -0.5 + flip(sqrt(3)/2)
  c = (r == 0) + sq3*(r == 1) + conj(sq3)*(r == 2)
  z = c * pixel :
   x = real(z) , y = imag(z)
   x1 = x - p1 * fn1(y*y + p2*fn2(y))
   y1 = y - p1 * fn1(x*x + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 4
  }

Gallet-4-07 { ; Sylvie Gallet [101324,3444], 1996
              ; PHC formula
  z = 10 * pixel , bailout = real(p3)
   c = p1 * (whitesq + (0,1) * (whitesq == 0)) :
   test = flip(c*z) >= 0
   z = (z - p2 * (test - (test == 0))) * c
    abs(real(z)) < bailout || abs(imag(z)) < bailout
  }

Gallet-4-08 { ; Sylvie Gallet [101324,3444], 1996
              ; PHC formula
  z = pixel * (whitesq - (whitesq == 0))
  c = p1 , bailout = real(p3) :
   test = flip(z*(c-z)) >= 0
   z = (z - p2 * (test - (test == 0))) * c
    abs(real(z)) < bailout || abs(imag(z)) < bailout
  }

Gallet-4-09 { ; Sylvie Gallet [101324,3444], 1996
  p = (0,1) * p1 , bailout = p2
  a = pixel + p , b = pixel - p :
  a = fn1(a) + flip(fn2(a))
  b = fn1(b) + flip(fn2(b))
  z = (a + b)/2
   |a| + |b| <= bailout
  }

Gallet-4-10 { ; Sylvie Gallet [101324,3444], 1996
              ; PHC formula
  p = (0,1) * p1 * ((0,1) * whitesq - (whitesq == 0))
  a = pixel + p , b = pixel - p
  a1 = b1 = 0 , a2 = 3*a*a , b2 = 3*b*b :
   a = a^3 - a2*a + a1 , b = b^3 - b2*b + b1
   a1 = a1 + p2 , b1 = b1 + p2
   z = (a + b)/2
    |z| <= p3
}

Gallet-4-11 { ; Sylvie Gallet [101324,3444], 1996
  p = (0,1) * p1 , bailout = p2
  a = pixel + p , b = pixel - p :
  a = fn1(a) + flip(fn2(a))
  b = fn1(b) + flip(fn2(b))
  z = (a + b) / 2
   |a| <= bailout || |b| <= bailout
  }

Gallet-4-12 { ; Sylvie Gallet [101324,3444], 1996
              ; PHC formula
  p = p1 * ((0,1) * whitesq - (whitesq == 0))
  a = pixel + p , b = pixel - p , c = p2/pixel
  a1 = b1 = 0 , a2 = 3*a*a , b2 = 3*b*b :
   a = a^3 - a2*a + a1 , b = b^3 - b2*b + b1
   a1 = a1 + c , b1 = b1 + c
   z = (a + b)/2
    |z| <= p3
}

Gallet-4-13 { ; Sylvie Gallet [101324,3444], 1996
              ; Hypercomplex Mandel formula
  ; c = real(pixel) + i*imag(pixel) + j*real(p1) + k*imag(p1)
  ; h(0) = 0 , h(n+1) = h(n)^2 + c
  ; |h| <= 64
  p = (0,1)*p1
  a = b = 0 , ca = pixel + p , cb = pixel - p :
   a = a*a + ca , b = b*b + cb
   z = (a + b)/2
    |a| + |b| <= 128
  }

Gallet-4-14 { ; Sylvie Gallet [101324,3444], 1996
              ; Hypercomplex Newton formula applied to h^p2 - 1 = 0
  ; h(0) = real(pixel) + i*imag(pixel) + j*real(p1) + k*imag(p1)
  ; h(n+1) = h(n) - (h(n)^p2-1) / (p2*h(n)^(p2-1))
  ; |h| >= 0.0000005
  p = (0,1)*p1 , ex = p2 - 1
  a = pixel + p , b = pixel - p :
   a2 = a^ex , b2 = b^ex
   na = a2*a - 1 , da = p2*a2
   nb = b2*b - 1 , db = p2*b2
   a = a - na/da , b = b - nb/db
    |na| + |nb| >= 0.000001
  }
