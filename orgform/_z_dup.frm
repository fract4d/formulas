

Zexpe (XAXIS) { 
  z = Pixel:
  z = z ^ 2.71828182845905 + pixel
  |z| <= 100 
  ;SOURCE: imagelab.frm
}


ZZ (XAXIS) {; Jm Richard-Collard
            ; try fn1 = log, p1 = 0.001
            ; note--use floating point
  z  = pixel:
  z1 = z^z
  z2 = (fn1(z)+1)*z1
  z  = z-(z1-1)/z2
  p1 <= |1-z1|
  ;SOURCE: improved.frm
}


ZZ (XAXIS) {; Jm Richard-Collard using Newton-Raphson method
            ; try p1 = 0.001, p2 = 1, fn1 = log
            ; note--use floating point
  z  = pixel, test = p1, solution = p2:
  z1 = z^z
  z2 = (fn1(z)+1)*z1
  z  = z-(z1-1)/z2
  test <= |solution-z1|
  ;SOURCE: improv2.frm
}


ZZa (XAXIS) {; Jm Richard-Collard
             ; try p1 = 0.001, fn1 = log
             ; note--use floating point
  z  = pixel:
  z1 = z^(z-1)
  z2 = (((z-1)/z)+fn1(z))*z1
  z  = z-((z1-1)/z2)
  p1 <= |1-z1|
  ;SOURCE: improved.frm
}


ZZa (XAXIS) {; Jm Richard-Collard using Newton-Raphson method
             ; try p1 = 0.001, p2 = 1, fn1 = log
             ; note--use floating point
  z  = pixel, test = p1, solution = p2:
  z1 = z^(z-1)
  z2 = (((z-1)/z)+fn1(z))*z1
  z  = z-((z1-1)/z2)
  test <= |solution-z1|
  ;SOURCE: improv2.frm
}

