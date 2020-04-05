{ ; Gopalsamy1
  ; Ron Barnett, 1993
   z = pixel:
   x = real(z), y = imag(z)
   x1 = -2*x*y + p1
   y = y*y - x*x
   z = x1 + flip(y)
   |z| <= 4
}

