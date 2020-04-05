;
;       These formulafiles are from Karl Geigl 100327,156. 
;
;

   901 = {
   z = y = x = pixel:
   x = a*x + (b*x)*(x*x + y*y) + c*(x*x*x - 3*x*y*y) + d*(x*x - y)
   y = a*y + (b*y)*(x*x + y*y) + c*(3*x*x*y - y*y*y) -2*d*x*y
   a = p1
   b = -p1
   c = p2
   d = -p2
z < 21;

}

   902 = {
   z = z^p1 + x^p1 + y^1 + c
   x = p2*z*x + c
   y = p2*z*y + c 
   z < 5;
}

   903 = {
   z = pixel:
   z = z * (p1-z) + c * p2
   z < 1;
}

   904 = {
   z = pixel:
   z = z * (p1+z) + c * p2
   z < 1;
}

   905 = {
   z = pixel:
   z = z * (p1-z) - c * p2
   z < 1;
}

   906 = {
   z = pixel:
   z = z * (p1+z) - c * p2
   z < 1;
}

   907 = {
   z = pixel:
   z = fn1 (z^p1 + c)
   z < p2;
}

   908 = {
   z = x = pixel:
   z = fn1 (z) * fn2 (z)
   x = fn1 (x) / fn2 (x)
   z < p1;
}

   909 = {
   z = x = pixel:
   x = fn1 (x) * fn2 (x)
   z = fn1 (z) / fn2 (z)
   z < p1;
}

   910 = {
   z = x = pixel:
   z = fn1 (z) * fn2 (x)
   x = fn1 (x) / fn2 (z)
   |z| < p1;
}

   911 = {
   z = x = pixel:
   x = fn1 (x) * fn2 (z)
   z = fn1 (z) / fn2 (x)
   |z| < p1;
}

