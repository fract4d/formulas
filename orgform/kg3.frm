;
;       These formulafiles are from Karl Geigl 100327,156. 
;
;

   301 = {
   z = pixel, c = fn1(z):
   z = z + c
   z= (z-p1)^p2 * (c+p2);
  |z| <= p1
}

   302 = {
   z = pixel, c = fn1(z):
   z = z + c
   z= (z-p1)^p2 * (c+p2);
  |z| < =p2
}

   303 = {
   z = pixel, c = fn1(z):
   z = z + c
   z= (z-p1)^p2 * (c-p2);
  |z| <=p1
}

   304 = {
   z = pixel, c = fn1(z):
   z = z + c
   z= (z+p1)^p2 * (c-p2);
  |z| <=p2
}


   305 = {
   z = pixel, c = fn1(z):
   z = z - c
   z= (z+p1)^p2 * (c+p2);
  |z| <=p1
}

   306 = {
   z = pixel, c = fn1(z):
   z = z + c
   z= (z-1)^2 * (c+3);
  |z| <=1
}

   307 = {
   z = pixel, c = fn1(z):
   z = z - c
   z= (z-p1)^p2 * (c+p1);
  |z| <= p2
}

   308 = {
   z = pixel, c = fn1(z):
   z = z - c
   z= (z-p1)^2 * (c+p2)^p1;
  |z| <= p1
}

   309 = {
   z = pixel, c = fn1(z):
   z = z + c
   z= (z-p1)^p2 + fn2(c+z)^p2;
  |z| <= p1
}



