;
;       These formulafile is from Karl Geigl 100327,156. 
;


  kg1501  {
  z = pixel:
  a = z ^ p1
  b = 1 / a
  z = fn1(a) * fn2(b) 
  |z| <= p2
}

  kg1502  {
  z = 1/pixel:
  a = z ^ p1
  b = 1 / a
  z = fn1(a) * fn2(b) 
  |z| <= p2
}

