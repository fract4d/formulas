{ ; Modification of Gallet-8-11 for Ikenaga Julias
  ; Ron Barnett, November 1998
  ; PHC, requires periodicity = 0 and passes = 1
  ; p1 = parameter for a Julia set
  ; p2 not used
  ; p3: real part = radius
  ;     imag part = refraction index
  h = cabs(pixel)
  r = real(p3)
  ir = imag(p3)
  IF h >= r 
     IF whitesq 
        z = pixel
        c = p1
     ELSE
        z = 200
     ENDIF
  ELSE
     beta = asin(h/r)
     alpha = asin(h/r/ir)
     h2 = h - sqrt(r*r - h*h) * tan(beta - alpha)
     z = h2*pixel/h
     c = p1
   ENDIF :
   z = z*z*z +(c-1)*z - c
   |z| <= 128
}
