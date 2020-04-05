;
;       These formulafiles are from Karl Geigl 100327,156. 
;
;


  1201 = {
  z = pixel:
  z = fn1 (1/z) + pixel
  |z| <= p2
}

  1202 = {
  z = pixel:
  z = fn1 (1/z) - pixel
  |z| <= p2
}

  1203 = {
  z = pixel:
  z = fn1 (1/z) + pixel * z
  |z| <= p2
}

  1204 = {
  z = pixel:
  z = fn1 (1/z) - pixel * z
  |z| <= p2
}

  1205 = {
  z = pixel:
  z = fn1 (1/z) + pixel + z
  |z| <= p2
}

  1206 = {
  z = pixel:
  z = fn1 (1/z) - pixel + z
  |z| <= p2
}


  1207 = {
  z = 1/pixel:
  z = fn1 (1/z) - pixel + z
  |z| <= p2
}

  1208 = {
  z = 1/pixel:
  z = fn1 (1/z) + pixel * z
  |z| <= p2
}

  1209 = {
  z = 1/pixel:
  z = fn1 (1/z) - pixel * z
  |z| <= p2
}

  1210 = {
  z = 1/pixel:
  z = fn1 (1/z) + pixel + z
  |z| <= p2
}

  1211 = {
  z = 1/pixel:
  z = fn1 (1/z) - pixel + z
  |z| <= p2
}

  1212 = {
  z = 2/pixel:
  z = fn1 (1/z) - pixel + z
  |z| <= p2
}


