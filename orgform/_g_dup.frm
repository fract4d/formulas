

Gamma (XAXIS) {; Jm Richard-Collard
               ; try p1 = 6.2   
               ; note that p1 above is two times pi
  z = pixel:
  z = (p1*z)^(0.5)*(z^z)*exp(-z)+pixel
  |z|<=p2
  ;SOURCE: improved.frm
}


Gamma (XAXIS) {; Jm Richard-Collard - first order gamma function
   ; "It's pretty long to generate even on a 486-33 but there's a lot
   ; of corners to zoom in and zoom and zoom...beautiful pictures :)"
   ; try p1 = 6.283185307179586, p2 = 10, fn1 = exp
   ; note that p1 above is two times pi
  z = pixel:
  z = (p1*z)^(0.5)*(z^z)*fn1(-z)+pixel
  |z| <= p2
  ;SOURCE: improv2.frm
}


GLYNN (XAXIS) {; Based on an illustration in Science PROBE!  and a
               ; formula by Earl Glynn in Computers and the Imagination,
               ; by Clifford Pickover.   Try p1 = 1.5, p2 = -0.2
               ; Jon Horner, FRAC'Cetera
  z = pixel : 
  z = z ^ p1 - p2 
  |z| <=4 
  ;SOURCE: glynn.frm
}

