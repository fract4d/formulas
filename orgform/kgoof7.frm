;
;       These formulafile is from Karl Geigl 100327,156. 
;
;	oof means "only one formula"


  oof7 (XYAXIS) {
  z = pixel:
  z = z^(fn1(z^(p1)))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
}

