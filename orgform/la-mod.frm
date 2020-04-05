; Collection of modified formulas from Linda Allison. Original formulas
; are from various sources.

MyFract-7 {;from the book *Fractal Creations* by Tim Wegner and Mark Peterson ;
modified by Linda Allison 
  c = z = 1/pixel:
   z = fn1(z) + (c + P1/z)
    |z| <= P2
}


Lin-y2new (XAXIS) {;;Lee Skinner's MTet formula modified by Linda Allison
  z = pixel:
   z = (pixel ^ (z + 1.3/z)) + (fn1(P1))/3
    |z| <= (P2 + 5)
  }


Lin-x3 (XAXIS) {;Lee Skinner's MTet formula modified by Linda Allison
  z = pixel:
   z = (pixel ^ ((z + 1)/z)) + pixel,
    |z| <= (p1 ^ z)
  }


Newton4-3 (XYAXIS) {;Mark Peterson's Newton4 formula modified by Linda Allison
  z = pixel, Root = 7:
   z3 = z * z * z
   z4 = z3 * z
   z = (p1 * z4 + Root) / (p1 * z3)
    .0009 <= |z4 - Root|
  }

Lin-x3 (XAXIS) {;Lee Skinner's MTet formula modified by Linda Allison
  z = pixel:
   z = (pixel ^ ((z + 1)/z)) + pixel,
    |z| <= (p1 ^ z)
  }


Lin-carr6new { ;Robert Carr's formula modified by Linda Allison
  z = pixel:
  z = (fn1(p1/z ^ 3))/.5
  |z| <= p2
  }
                                            

MyFractal2 {; *Fractal Creations* formula, modified by Linda Allison
  c = z = 1/pixel:
   z = fn1(z) + c + P1
    |z| <= P2
}
