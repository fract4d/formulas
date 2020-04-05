;
;	These formulas are from Karl Geigl CIS 100327,156
;
;

   601 = {
   z =  pixel, c = fn1(z):
   z = z + c
   z = (z-1)^2 * (c+3);
   z <= p1
}

   602 = {
   z = pixel, c = fn1(z):
   z = fn2(z)*fn3(z+c)
   |z| > p1
}

   603 = {
   z = c = pixel:
   z = fn1(c+z)*c
   z = fn2(z+c)
   z <= p1
}

   604 = {
   z = pixel, c = fn1(z):
   z = z^2 + fn2(fn3(z+c)^2)
  |z| <= p1
}

  605 = {
  z = c = pixel:
  z = z^c + fn1 (c);
  |z| <= p1
}

  606 = {
  z = c = pixel:
  z = z^c - fn1 (c);
  |z| <= p1
}
 
 607 = {
  z = c = pixel:
  z = z^c + fn1 (z+c);
  |z| <= p1
}

  608 = {
  z = c = pixel:
  z = z^c + fn1 (z-c);
  |z| <= p1
}

  609 = {
  z = c = pixel:
  z = z^c - fn1 (z+c);
  |z| <= p1
} 

  610 = {
  z = c = pixel:
  z = z^c - fn1 (z-c);
  |z| <= p1
}