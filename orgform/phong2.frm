;Credits go to all members of the Coteric Continuum:
;  Phong                     =           Tom Schumm 
;  Dan the Math+(Man)ý       =          Dan Laursen 
;  Aquatic Nusiance          =         Ryan Mahoney   

VerLineia(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like a julia
   z = z + p1
    z = Sqr(z)
    real(z) <= 4	  ; Different escape boundry
  }

HorLineia(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like a julia
   z = z + p1
   z = Sqr(z)
    imag(z) <= 4	  ; Different escape boundry
  }

Multia(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    imag(z)*real(z) <= 4   ; Different escape boundry
  }

Summia(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    imag(z)+real(z) <= 4   ; Different escape boundry
  }

SummAbsia(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    abs(imag(z))+abs(real(z)) <= 4   ; Different escape boundry
  }  

AbsSummia(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    abs(imag(z)+real(z)) <= 4   ; Different escape boundry
  }  

Parabolaia1(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    imag(z) <= sqr(real(z))+4    ; Different escape boundry
  }  

Parabolaia2(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    imag(z) <= 16-sqr(real(z))    ; Different escape boundry
  }  
 
Hyperbolaia1(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    sqr(imag(z)) >= (sqr(real(z))-16)    ; Different escape boundry
  }  

Hyperbolaia2(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    sqr(imag(z)) <= (sqr(real(z))+16)    ; Different escape boundry
  }  

Sineia01(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    imag(z) <= sin(real(z))+4    ; Different escape boundry
  }  

Sineia02(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    5*sin(Lastsqr) <= 4    ; Different escape boundry
  }  

Sineia03(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    Lastsqr <= 4+sin(10*Lastsqr)    ; Different escape boundry
  }  

Sineia04(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    Lastsqr <= 4+sin(20*Lastsqr)    ; Different escape boundry
  }  

Sineia05(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    Lastsqr <= 4+sin(30*Lastsqr)    ; Different escape boundry
  }

Sineia06(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    sqr(imag(z)-sin(real(z))) <= 16-sqr(real(z))    ; Different escape boundry
  }  

Sineia07(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    sqr(imag(z)-sin(2*real(z))) <= 16-sqr(real(z))    ; Different escape boundry
  }  

Sineia08(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    sqr(imag(z)-sin(2*real(z))) <= 16-sqr(real(z)+sin(real(z)))    ; Different escape boundry
  }  

Sineia09(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    sqr(imag(z)-sin(2*real(z))) <= 16-sqr(real(z)+sin(imag(z)))    ; Different escape boundry
  }  

Sineia10(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    (imag(z)-sin(2*real(z)))^3 <= 16-sqr(real(z)+sin(imag(z)))    ; Different escape boundry
  }  

Sineia11(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    sqr(imag(z)-sin(2*real(z))) <= 64-(real(z)+sin(imag(z)))^3    ; Different escape boundry
  }  

Sineia12(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    (imag(z)-sin(2*real(z)))^5 <= 16-sqr(real(z)+sin(imag(z)))    ; Different escape boundry
  }  

Sineia13(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    (imag(z)-sin(2*real(z)))^7 <= 16-sqr(real(z)+sin(imag(z)))    ; Different escape boundry
  }  

SineTangentia1(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    tan(imag(z)-sin(2*real(z))) <= 16-sqr(real(z)+sin(imag(z)))    ; Different escape boundry
  }  

SineTangentia2(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    tan(imag(z)-sin(2*real(z))) <= 16-sqr(real(z)+sin(2*imag(z)))    ; Different escape boundry
  }  

SineTangentia3(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    tan(imag(z)-sin(4*real(z))) <= 16-sqr(real(z)+sin(2*imag(z)))    ; Different escape boundry
  }  

Cosecantia(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    imag(z) <= 4/sin(real(z))    ; Different escape boundry
  }  

Cosineia(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    imag(z) <= cos(real(z))+4    ; Different escape boundry
  }

Secantia(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    imag(z) <= 4/cos(real(z))    ; Different escape boundry
  }

AbsArcTangentia1(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    imag(z) <= abs(1/tan(real(z)))     ; Different escape boundry
  }  

AbsArcTangentia2(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    imag(z) <= abs(1/tan(real(z))+4)     ; Different escape boundry
  }  

AbsArcTangentia3(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    imag(z) <= abs(1/tan(real(z)))+4     ; Different escape boundry
  }  

Tangentia1(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    imag(z) <= tan(real(z)) + 2    ; Different escape boundry
  }  

Tangentia2(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    imag(z) <= tan(real(z))+4    ; Different escape boundry
  }  

Tangentia3(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    imag(z) <= tan(real(z))+6    ; Different escape boundry
  }  

Tangentia4(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    imag(z) <= tan(real(z))+8    ; Different escape boundry
  }  

Tangentia5(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    imag(z) <= tan(real(z))+10    ; Different escape boundry
  }  

Absia1(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    imag(z) <= 4-abs(real(z))    ; Different escape boundry
  }  

Absia2(ORIGIN) {; Tom Schumm
  ; Attempt to change the shape of the escape boundry
  z = Pixel, z = Sqr(z):  ; Just like julia
   z = z + p1
   z = Sqr(z)
    imag(z) <= 4+abs(real(z))    ; Different escape boundry
  }  
