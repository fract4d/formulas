;
;       These formulafile is from Karl Geigl 100327,156. 
;
;	oof means "only one formula"


  xof1 (XAXIS) {
  z = pixel+z:
  z = p1 * (z^p2) + p2 * (z^p1)
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
}

  xof2 (XYAXIS) {
  z = pixel/p2:
  z = p1 * (z^p2) - p2 * (z^p1)
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
}

  xof3 (XYAXIS) {
  z = pixel/z:
  z = p1 * (z^p2) - p2 * (fn2(z))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
}

 xof4 (XYAXIS) {
  z = pixel+z:
  z = p1 / fn1 (z*z) / (fn2(z))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
}

  xof5 (XYAXIS) {
  z = pixel + z:
  z = p1 / fn1 (z*z) * (fn2(z))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
}

  xof6 (XYAXIS) {
  z = 1/pixel + z:
  z = p1 / fn1 (z*z) * (fn2(z))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
}

  xof7 (XYAXIS) {
  z = pixel + 1/z:
  z = p1 / fn1 (z*z) * (fn2(z))
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
}
