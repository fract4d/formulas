;
;       These formulafile is from Karl Geigl 100327,156. 
;
;	oof means "only one formula"


  oof6 (XYAXIS) {
  z = c = pixel:
  z = c * fn1 (z*z) * (fn2(z))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
}

