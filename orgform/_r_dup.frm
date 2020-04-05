

rand_generic {; ****   PARAMETER 1 MUST BE > 0   ****
              ; Thierry Boudet 101355.2112ompuserve.com
              ; 19 Juillet 1997
  z = rand:
  z = fn1(z) + fn2(pixel)
  |z| <= real(p1)
  ;SOURCE: frac_ml.frm
}


Raphaelbrot {; Michael Theroux [71673,2767]
   ; Fix and generalization by  Ron Barnett [70153,1233]   
   ; phi
   ; try p1 = 2.236067977 for the golden mean 
  z = pixel:
  z = sqr(z) + ((p1 - 1)/2)
  |z| <= 4
  ;SOURCE: fract002.frm
}


Richard1 (XYAXIS) {; Jm Richard-Collard
                   ; try p1 = 0, p2 = 50
  z  = pixel + p1:
  sq = z*z
  z = (sq*fn1(sq)+sq)+pixel
  |z| <= p2
  ;SOURCE: improved.frm
}


Richard1 (YAXIS) {
  c = z = pixel: 
  z=(z*z*sin(z*z)+z*z)+pixel 
  |z|<=50
  ;SOURCE: newform.frm
}


Richard10 (XYAXIS) {; Jm Richard-Collard
                    ; try p1 = 0, p2 = 50, fn1 = sin
  z = pixel + p1:
  z = 1 / fn1(1/(z*z))
  |z| <= p2
  ;SOURCE: improved.frm
}


Richard2 (XYAXIS) {; Jm Richard-Collard
                   ; try p1 = 0, p2 = 50, fn1 = sin
  z = pixel + p1:
  z = 1/(fn1(z*z+pixel*pixel))
  |z| <= p2
  ;SOURCE: improved.frm
}


Richard2 (YAXIS) {
  c = z = pixel: 
  z=1/(sin(z*z+pixel*pixel))
  |z|<=50
  ;SOURCE: newform.frm
}


Richard3 (XAXIS) {; Jm Richard-Collard
                  ; try p1 = 0, p2 = 50, fn1 = sinh
  z = pixel + p1:
  sh = fn1(z)
  z = (1/(sh*sh))+pixel
  |z| <= p2
  ;SOURCE: improv2.frm
}


Richard3 (YAXIS) {
  c = z = pixel: 
  z=(1/sinh(z)*sinh(z))+pixel
  |z|<=50
  ;SOURCE: newform.frm
}


Richard4 (XAXIS) {; Jm Richard-Collard
                  ; try p1 = 0, p2 = 50, fn1 = cos
  z = pixel + p1:
  z2 = z*z
  z = (1/(z2*fn1(z2)+z2))+pixel
  |z| <= p2
  ;SOURCE: improved.frm
}


Richard4 (YAXIS) {
  c = z = pixel: 
  z=(1/(z*z*cos(z*z)+z*z))+pixel
  |z|<=50
  ;SOURCE: newform.frm
}


Richard5 (XAXIS) {; Jm Richard-Collard
                  ; try p1 = 0, p2 = 50, fn1 = sin, fn2 = sinh
  z = pixel + p1:
  z = fn1(z*fn2(z))+pixel
  |z| <= p2
  ;SOURCE: improved.frm
}


Richard5 (YAXIS) {
  c = z = pixel: 
  z=sin(z*sinh(z))+pixel
  |z|<=50
  ;SOURCE: newform.frm
}


Richard6 (XYAXIS) {; Jm Richard-Collard
                   ; try p1 = 0, p2 = 50, fn1 = sin, fn2 = sinh
  z = pixel + p1:
  z = fn1(fn2(z))+pixel
  |z| <= p2
  ;SOURCE: improved.frm
}


Richard6 (YAXIS) {
  c = z = pixel: 
  z=sin(sinh(z))+pixel
  |z|<=50
  ;SOURCE: newform.frm
}


Richard7 (XAXIS) {; Jm Richard-Collard
                  ; try p1 = 0, p2 = 50, fn1 = log
  z = pixel:
  z = fn1(z)*pixel
  |z| <= p2
  ;SOURCE: improved.frm
}


Richard7 (XAXIS) {; Jm Richard-Collard
                  ; try p1 = 0, p2 = 50, fn1 = log
  z = pixel + p1:
  z = fn1(z)*pixel
  |z| <= p2
  ;SOURCE: improv2.frm
}


Richard7 (YAXIS) {
  c = z = pixel: 
  z=log(z)*pixel
  |z|<=50
  ;SOURCE: newform.frm
}


Richard8 (XYAXIS) {; Jm Richard-Collard
                   ; try p1 = 0, p2 = 50, fn1 = sin, fn2 = sin
                   ; note--used for cover of "Fractal Creations"
  z = pixel + p1
  z = fn1(z)+fn2(pixel)
  |z| <= p2
  ;SOURCE: improved.frm
}


Richard8 (XYAXIS) {; Jm Richard-Collard
                   ; try p1 = 0, p2 = 50, fn1 = sin, fn2 = sin
                   ; note--used for cover of "Fractal Creations"
  z = pixel + p1:
  z = fn1(z)+fn2(pixel)
  |z| <= p2
  ;SOURCE: improv2.frm
}


Richard8 (YAXIS) {
  c = z = pixel: 
  z=sin(z)+sin(pixel)
  |z|<=50
  ;SOURCE: newform.frm
}


Richard9 (XAXIS) {; Jm Richard-Collard
                  ; try p1 = 0, p2 = 4
  z = pixel + p1:
  s = z*z
  z = s + 1/s + pixel
  |z| <= p2
  ;SOURCE: improved.frm
}


Richard9 (XAXIS) {; Jm Richard-Collard
                  ; try p1 = 0
  z = pixel + p1:
  s = z*z
  z = s + 1/s + pixel
  |z| <= (p2 + 4)
  ;SOURCE: improv2.frm
}

