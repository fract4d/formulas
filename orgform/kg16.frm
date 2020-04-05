;
;       These formulafiles are from Karl Geigl 100327,156. 
;


  kg1601  {
  z = y = pixel-z:
  z = fn1(z) * fn2(y) 
  y = fn1(y) / fn2(z)	
  |z| <= p1
}

  kg1602  {
  z = y = pixel+z:
  z = fn1(z) / fn2(y) 
  y = fn1(y) / fn2(z)	
  |z| <= p1
}

  kg1603  {
  z = y = pixel+1/z:
  z = fn1(z) * fn2(y) 
  y = fn1(y) * fn2(z)	
  |z| <= p1
}

  kg1604  {
  z = y = pixel/z:
  z = fn1(z) / fn2(y) 
  y = fn1(y) * fn2(z)	
  |z| <= p1
}

