
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
