;
;       These formulafiles are from Karl Geigl 100327,156. 
;
;

   401 = {
   z = x = pixel:
   z = fn1 (z) * fn2 (x)
   x = fn1 (x) / fn2 (z)
   |z| < 11;
}

   402 = {
   z = x = pixel:
   x = fn1 (z) / fn2 (x)
   z = fn1 (x) * fn2 (z)
   |z| < 11;
}

   403 = {
   z = x = pixel:
   x = fn1 (z) * fn2 (x)
   z = fn1 (x) + fn2 (z)
   |z| < 11;
}

   404 = {
   z = x = pixel:
   x = fn1 (z) / fn2 (x)
   z = fn1 (x) + fn2 (z)
   |z| < 11;
}

