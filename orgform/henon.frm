Henon_M2 { ; p1 is a point in the Henon map. Screen coordinates are parameters 'a' and 'b'.
           ; Escape pixels escaped radius 1000. Try non-standard inside options with
           ; periodicity checking enabled.
  a = real(pixel), b = imag(pixel), z = p1:
  z = a - b*imag(z) - sqr(real(z)) + (0,1)*real(z),
  |z| < 1000000
}
 
Henon_M3 { ; Henon map on complex numbers.
           ; p1 and p2 are a point in the Henon map. Screen coordinates are parameter 'b'.
           ; Escape pixels escaped radius 1000. Try non-standard inside options with
           ; periodicity checking DISabled.
  a = 1.4, b = pixel, z = p1, w = p2:
  z1 = a - b*w - sqr(z)
  w = z
  z = z1,
  lastsqr+|w| < 1000000
}
 
Henon_M4 { ; Screen coordinates are parameters 'a' and 'b'.
           ; Escape pixels escaped radius 1000. Try non-standard inside options with
           ; periodicity checking enabled. Composite view.
  a = real(pixel), b = imag(pixel), z = 0, r = 0, done = 0:
  z = a - b*imag(z) - sqr(real(z)) + (0,1)*real(z),
  IF (|z| > 1000000)
    IF (r == 0)
      z = 1
      r = 1
    ELSEIF (r == 1)
      z = (0,1)
      r = 2
    ELSEIF (r == 2)
      z = -1
      r = 3
    ELSEIF (r == 3)
      z = -(0,1)
      r = 4
    ELSEIF (r == 4)
      z = 1+(0,1)
      r = 5
    ELSEIF (r == 5)
      z = 1-(0,1)
      r = 6
    ELSEIF (r == 6)
      z = -1+(0,1)
      r = 7
    ELSEIF (r == 7)
      z = -1-(0,1)
      r = 8
    ELSE
      done = 1
    ENDIF
  ENDIF
  done == 0
}
 
Henon_M5 { ; Henon map on complex numbers. Screen coordinates are parameter 'b'.
           ; Escape pixels escaped radius 1000. Try non-standard inside options with
           ; periodicity checking DISabled. Composite view.
  a = 1.4, b = pixel, z = 0, w = 0, r = 0, done = 0:
  z1 = a - b*w - sqr(z)
  w = z
  z = z1,
  IF (lastsqr+|w| > 1000000)
    IF (r == 0)
      z = 1
      w = 0
      r = 1
    ELSEIF (r == 1)
      z = 0
      w = 1
      r = 2
    ELSEIF (r == 2)
      z = -1
      w = 0
      r = 3
    ELSEIF (r == 3)
      z = 0
      w = -1
      r = 4
    ELSEIF (r == 4)
      z = 1
      w = 1
      r = 5
    ELSEIF (r == 5)
      z = 1
      w = -1
      r = 6
    ELSEIF (r == 6)
      z = -1
      w = 1
      r = 7
    ELSEIF (r == 7)
      z = -1
      w = -1
      r = 8
    ELSE
      done = 1
    ENDIF
  ENDIF
  done == 0
}
 
Henon_J1 { ; Henon map on complex numbers.
           ; p1 and p2 are a and b. Screen coordinates are y. p3 is x.
           ; Escape pixels escaped radius 1000. Try non-standard inside options with
           ; periodicity checking DISabled.
  a = p1, b = p2, z = p3, w = pixel:
  z1 = a - b*w - sqr(z)
  w = z
  z = z1,
  lastsqr+|w| < 1000000
}
 
Henon_J2 { ; Henon map on complex numbers.
           ; p1 and p2 are a and b. Screen coordinates are real(x), real(y). p3 is imag(x), imag(y).
           ; Escape pixels escaped radius 1000. Try non-standard inside options with
           ; periodicity checking DISabled.
  a = p1, b = p2, z = real(pixel) + (0,1)*real(p3), w = imag(pixel) + (0,1)*imag(p3):
  z1 = a - b*w - sqr(z)
  w = z
  z = z1,
  lastsqr+|w| < 1000000
}
