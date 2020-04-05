;
;       These formulafiles are from Karl Geigl 100327,156. 
;


  kg1401  {
  z = y = pixel-p2:
  z = fn1(z) * fn2(y) 
  y = fn1(y) / fn2(z)	
  |z| <= p1
}

  kg1402  {
  z = y = pixel+p2:
  z = fn1(z) / fn2(y) 
  y = fn1(y) / fn2(z)	
  |z| <= p1
}

  kg1403  {
  z = y = pixel*p2:
  z = fn1(z) * fn2(y) 
  y = fn1(y) * fn2(z)	
  |z| <= p1
}

  kg1404  {
  z = y = pixel/p2:
  z = fn1(z) / fn2(y) 
  y = fn1(y) * fn2(z)	
  |z| <= p1
}

