;Credits go to all members of the Coteric Continuum:
;  Phong                     =           Tom Schumm 
;  Dan the Math+(Man)ý       =          Dan Laursen 
;  Aquatic Nusiance          =         Ryan Mahoney   

VerLinebrot(XAXIS) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like a mandel
   z = z + Pixel
   z = Sqr(z)
    real(z) <= 4	  ; Different escape boundry
  }

HorLinebrot {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like a mandel
   z = z + Pixel
   z = Sqr(z)
    imag(z) <= 4	  ; Different escape boundry
  }

Multbrot {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    imag(z)*real(z) <= 4   ; Different escape boundry
  }

Summbrot {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    imag(z)+real(z) <= 4   ; Different escape boundry
  }

SummAbsbrot(XAXIS) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    abs(imag(z))+abs(real(z)) <= 4   ; Different escape boundry
  }  

AbsSummbrot {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    abs(imag(z)+real(z)) <= 4   ; Different escape boundry
  }  

Parabolabrot1 {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    imag(z) <= sqr(real(z))+4    ; Different escape boundry
  }  

Parabolabrot2 {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    imag(z) <= 16-sqr(real(z))    ; Different escape boundry
  }  
 
Hyperbolabrot1(XAXIS) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    sqr(imag(z)) >= (sqr(real(z))-16)    ; Different escape boundry
  }  

Hyperbolabrot2(XAXIS) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    sqr(imag(z)) <= (sqr(real(z))+16)    ; Different escape boundry
  }  

Sinebrot01 {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    imag(z) <= sin(real(z))+4    ; Different escape boundry
  }  

Sinebrot02(XAXIS) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    5*sin(Lastsqr) <= 4    ; Different escape boundry
  }  

Sinebrot03 (XAXIS){; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    Lastsqr <= 4+sin(10*Lastsqr)    ; Different escape boundry
  }  

Sinebrot04 (XAXIS){; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    Lastsqr <= 4+sin(20*Lastsqr)    ; Different escape boundry
  }  

Sinebrot05 (XAXIS){; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    Lastsqr <= 4+sin(30*Lastsqr)    ; Different escape boundry
  }

Sinebrot06{; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    sqr(imag(z)-sin(real(z))) <= 16-sqr(real(z))    ; Different escape boundry
  }  

Sinebrot07{; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    sqr(imag(z)-sin(2*real(z))) <= 16-sqr(real(z))    ; Different escape boundry
  }  

Sinebrot08{; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    sqr(imag(z)-sin(2*real(z))) <= 16-sqr(real(z)+sin(real(z)))    ; Different escape boundry
  }  

Sinebrot09{; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    sqr(imag(z)-sin(2*real(z))) <= 16-sqr(real(z)+sin(imag(z)))    ; Different escape boundry
  }  

Sinebrot10{; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    (imag(z)-sin(2*real(z)))^3 <= 16-sqr(real(z)+sin(imag(z)))    ; Different escape boundry
  }  

Sinebrot11{; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    sqr(imag(z)-sin(2*real(z))) <= 64-(real(z)+sin(imag(z)))^3    ; Different escape boundry
  }  

Sinebrot12{; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    (imag(z)-sin(2*real(z)))^5 <= 16-sqr(real(z)+sin(imag(z)))    ; Different escape boundry
  }  

Sinebrot13{; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    (imag(z)-sin(2*real(z)))^7 <= 16-sqr(real(z)+sin(imag(z)))    ; Different escape boundry
  }  

SineTangentbrot1{; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    tan(imag(z)-sin(2*real(z))) <= 16-sqr(real(z)+sin(imag(z)))    ; Different escape boundry
  }  

SineTangentbrot2{; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    tan(imag(z)-sin(2*real(z))) <= 16-sqr(real(z)+sin(2*imag(z)))    ; Different escape boundry
  }  

SineTangentbrot3{; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    tan(imag(z)-sin(4*real(z))) <= 16-sqr(real(z)+sin(2*imag(z)))    ; Different escape boundry
  }  

Cosecantbrot {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    imag(z) <= 4/sin(real(z))    ; Different escape boundry
  }  

Cosinebrot {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    imag(z) <= cos(real(z))+4    ; Different escape boundry
  }

Secantbrot {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    imag(z) <= 4/cos(real(z))    ; Different escape boundry
  }

AbsArcTangentbrot1 {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    imag(z) <= abs(1/tan(real(z)))     ; Different escape boundry
  }  

AbsArcTangentbrot2 {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    imag(z) <= abs(1/tan(real(z))+4)     ; Different escape boundry
  }  

AbsArcTangentbrot3 {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    imag(z) <= abs(1/tan(real(z)))+4     ; Different escape boundry
  }  

Tangentbrot1 {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    imag(z) <= tan(real(z)) + 2    ; Different escape boundry
  }  

Tangentbrot2 {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    imag(z) <= tan(real(z))+4    ; Different escape boundry
  }  

Tangentbrot3 {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    imag(z) <= tan(real(z))+6    ; Different escape boundry
  }  

Tangentbrot4 {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    imag(z) <= tan(real(z))+8    ; Different escape boundry
  }  

Tangentbrot5 {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    imag(z) <= tan(real(z))+10    ; Different escape boundry
  }  

Absbrot1 {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    imag(z) <= 4-abs(real(z))    ; Different escape boundry
  }  

Absbrot2 {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like mandel
   z = z + Pixel
   z = Sqr(z)
    imag(z) <= 4+abs(real(z))    ; Different escape boundry
  }  
