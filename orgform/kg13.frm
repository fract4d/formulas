;
;       These formulafiles are from Karl Geigl 100327,156. 
;
;


  1301 = {
  z = 1/pixel:
  z = fn1(z/pixel) * fn2(pixel)
  z = z^p2 + fn1 (c-p1)
  |z| <= p2
}

  1311 = {
  z = 1/pixel+1:
  z = fn1(z/pixel) * fn2(pixel)
  z = z^p2 + fn1 (c-p1)
  |z| <= p2
}

  1321 = {
  z = 1/pixel-1:
  z = fn1(z/pixel) * fn2(pixel)
  z = z^p2 + fn1 (c-p1)
  |z| <= p2
}

  1302 = {
  z = 1/pixel:
  z = fn1(z/pixel) / fn2(pixel)
  z = z^p2 + fn1 (c-p1)
  |z| <= p2
}

  1303 = {
  z = 1/pixel:
  z = fn1(z/pixel) * fn2(pixel)
  z = z^p2 - fn1 (c-p1)
  |z| <= p2
}

  1304 = {
  z = 1/pixel:
  z = fn1(z/pixel) / fn2(pixel)
  z = z^p2 * fn1 (c-p1)
  |z| <= p2
}

  1305 = {
  z = pixel:
  z = fn1 ( fn2 (fn3 (z)))
  |z| <= p1
} 

  1306 = {
  z = 0.1/pixel:
  z = fn1 ( fn2 (fn3 (z)))
  |z| <= p1
} 
