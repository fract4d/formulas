{ ;    REB004L 
  ; Ron Barnett, 1993
  ; floating point required
   z = pixel:
   x = flip(pixel + fn1(p1/z - z/(p2+1)))
   z = x*z + pixel
   |z| <= 100
}
