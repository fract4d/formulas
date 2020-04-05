;
;       These formulafiles are from Karl Geigl 100327,156. 
;
;

   801 = {
   z = x = p1/pixel:
   z = fn1 (z) * fn2 (x)
   x = fn1 (x) / fn2 (z)
   |z| < p2;
}

   802 = {
   z = x = p1/pixel:
   x = fn1 (z) / fn2 (x)
   z = fn1 (x) * fn2 (z)
   |z| < p2;
}

   803 = {
   z = x = p1/pixel:
   x = fn1 (z) * fn2 (x)
   z = fn1 (x) + fn2 (z)
   |z| < p2;
}

   804 = {
   z = x = p1/pixel:
   x = fn1 (z) / fn2 (x)
   z = fn1 (x) + fn2 (z)
   |z| < p2;
}

  805 = {
  z = c = 1/pixel:
  z = (fn1 (z) + c) / (z + c + p1)
  |z| <= p2;
}

  806 = {
  z = c = 1/pixel:
  z = (fn1 (z) + c) * (z + c + p1)
  |z| <= p2;
}

  807 = {
  z = c = 1/pixel:
  z = (fn1 (z) + c) / (z - c + p1)
  |z| <= p2;
}   

  808 = {
  z = c = 1/pixel:
  z = (fn1 (z) - c) * (z + c + p1)
  |z| <= p2;
}   

  809 = {
  z = c = p1/pixel:
  z = (fn1 (z) + c) * (z + c + p2)
  |z| <= p2;
}

  810 = {
  z = c = p1/pixel:
  z = (fn1 (z) + c) * (z + c + p1)
  |z| <= p2;
}   

  811 = {
  z = c = p2/pixel:
  z = (fn1 (z) + c) * (z + c + p1)
  |z| <= p2;
}   