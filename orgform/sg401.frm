{ ; Gallet-4-01
  ; Sylvie Gallet [101324,3444], 1996
    h = p1, a = p2, z = pixel :
    x = real(z), y = imag(z)
    x1 = x - fn2(x + a*fn1(x + h))
    y1 = y + fn2(y + a*fn1(y + h))
    z = x1 + flip(y1)
    |z| <= 4
}
