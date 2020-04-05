
Gallet-5-01 { ; Sylvie Gallet [101324,3444], 1996
  sq3 = sqrt(3) , sq32 = 0.5*sq3 , l = real(p1) , h = l*sq32 , l3 = 3*l
  h2 = 2*h , h3 = 3*h , h4 = h2 + h2 , l15 = 0.5*l3
  c1 = 0.5*l + flip(h) , c2 = l , rot = -0.5 + flip(sq32)
  y = imag(pixel) , x = real(pixel) - y/sq3
  y = y - floor(y/h3)*h3 , x = x - floor(x/l3)*l3 + y/sq3
  d = 0.5*y + sq32*x - h3 , x = x - d*sq3*(d>0) , y = y - d*(d>0)
  y = y - h2*(y>h2)
  t = y < sq3*x-h4 , x = x - l15*t , y = y + h*t
  q1 = abs(floor(y / h))
  d2 = -sq32*x + 0.5*y , q2 = abs(floor(d2 / h))
  d3 = sq32*x + 0.5*y - h , q3 = abs(floor(d3 / h))
  q = q1 + q2 + q3 , odd = q != 2*floor(q/2)
  y = y*(odd==0) + (h2-y)*odd
  t = y > -sq3*x + h4 , x = x - l15*t , y = y - h*t
  z = x + flip(y) , z = z * (y<=h) + ((z-c1)*conj(rot) + c1) * (y>h)
  x = real(z) , z = z * (x<l) + ((z-c2)*rot + c2) * (x>=l)
  z = c = p2*z + p3 :
   z = z*z + c
    |z| <= 4
  }

Gallet-5-02 { ; Sylvie Gallet [101324,3444], 1996
  sq3 = sqrt(3) , sq32 = 0.5*sq3 , l = real(p1) , h = l*sq32 , l3 = 3*l
  h2 = 2*h , h3 = 3*h , h4 = h2 + h2 , l15 = 0.5*l3
  c1 = 0.5*l + flip(h) , c2 = l , rot = -0.5 + flip(sq32)
  y = imag(pixel) , x = real(pixel) - y/sq3
  y = y - floor(y/h3)*h3 , x = x - floor(x/l3)*l3 + y/sq3
  d = 0.5*y + sq32*x - h3 , x = x - d*sq3*(d>0) , y = y - d*(d>0)
  y = y - h2*(y>h2)
  t = y < sq3*x-h4 , x = x - l15*t , y = y + h*t
  q1 = abs(floor(y / h))
  d2 = -sq32*x + 0.5*y , q2 = abs(floor(d2 / h))
  d3 = sq32*x + 0.5*y - h , q3 = abs(floor(d3 / h))
  q = q1 + q2 + q3 , odd = q != 2*floor(q/2)
  y = y*(odd==0) + (h2-y)*odd
  t = y > -sq3*x + h4 , x = x - l15*t , y = y - h*t
  z = x + flip(y) , z = z * (y<=h) + ((z-c1)*conj(rot) + c1) * (y>h)
  x = real(z) , z = z * (x<l) + ((z-c2)*rot + c2) * (x>=l)
  z = p2*z + p3 :
   z2 = z*z , n = z2*z2 - 1 , d = 4*z2*z
   z = z - n / d
    |n| >= 0.000001
  }

Gallet-5-03 { ; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z), y = imag(z) :
   x1 = x*x + p1*fn1((y) + fn2(p2*y))
   y1 = y*y + p1*fn1((x) + fn2(p2*x))
   x = x1 , y = y1
   z = fn3(x * y)
    |z| <= p3
  }

Gallet-5-04 { ; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z) , y = imag(z)
  rp1 = real(p1) , ip1 = imag(p1) :
   exp2x = exp(2*x) , exp3y = exp(3*y)
   fx = x * exp3y - rp1 , fy = y*(1 + exp2x) - ip1
   a = exp3y , b = 3*x * exp3y , c = 2*y * exp2x , d = 1 + exp2x
   div = a*d - b*c,
   z = z - ((d*fx-b*fy) + flip(-c*fx+a*fy)) / div
   x = real(z) , y = imag(z)
    |fx| > p2 || |fy| > p2
  }

Gallet-5-05 { ; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = z , y = conj(z) :
   hx = p1*fn1(x) , hy = p1*fn2(y)
   x = x + hy , y = y + hx
   z = x + flip(y)
    (|hx|+|hy|) >= p2
  }

Gallet-5-06 { ; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = z , y = flip(z) :
   hx = p1*fn1(x) , hy = p1*fn2(y)
   x = x + hy , y = y + hx
   z = x + flip(y)
    (|hx|+|hy|) <= p2
  }

Gallet-5-07 { ; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = z*(0,1) , y = z*(0,-1) :
   hx = p1*fn1(x) , hy = p1*fn2(y)
   x = x + hy , y = y + hx
   z = x + flip(y)
    (|hx|+|hy|) <= p2
  }

Gallet-5-08 { ; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z) , y = imag(z) :
   x1 = x - p1*fn1(y + fn2(p2*x) + fn3(p3*y))
   y1 = y - p1*fn1(x + fn2(p2*y) + fn3(p3*x))
   x = x1 , y = y1
   z = x + flip(y)
    |z| <= 32
  }

Gallet-5-09 { ; Sylvie Gallet [101324,3444], 1996
              ; PHC formula
  z = pixel * (whitesq - 0.5*(whitesq == 0 )) :
   x = real(z) , y = imag(z)
   x1 = x - p1 * fn1(y + p2*fn2(y))
   y1 = y - p1 * fn1(x + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 64
  }

Gallet-5-10 { ; Sylvie Gallet [101324,3444], 1996
  z = pixel :
   x = real(z) , y = imag(z)
   x1 = (x - p1) * fn1(y + p2*fn2(y))
   y1 = (y - p1) * fn1(x + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 64
  }

Gallet-5-11 { ; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = z*(0.5) , y = -z :
   hx = p1*fn1(x) , hy = p1*fn2(y)
   x = x + hy , y = y + hx
   z = x + flip(y)
    (|hx|+|hy|) <= p2
  }


