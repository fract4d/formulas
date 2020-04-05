;
;       These formulafile is from Karl Geigl 100327,156. 
;
;	oof means "only one formula"

  oof1 (XAXIS) {
  z = pixel:
  z = p1 * (z^p2) + p2 * (z^p1)
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
}

  oof2 (XYAXIS) {
  z = pixel:
  z = p1 * (z^p2) - p2 * (z^p1)
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
}

