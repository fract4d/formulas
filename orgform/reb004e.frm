{ ; REB004E
  ; Ron Barnett, 1993
  ; floating point required
   z = pixel:
   z = pixel + fn1(2*z+1)/(2*z+p1); 
   z = z + fn2(4*z+1)/(4*z+p2)
   |z| <= 100
   }

