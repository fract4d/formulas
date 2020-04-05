;
;       These formulafile is from Karl Geigl 100327,156. 
;
;	oof means "only one formula"


  oof5 (XYAXIS) {
  z = pixel:
  z = p1 / fn1 (z*z) * (fn2(z))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
}

