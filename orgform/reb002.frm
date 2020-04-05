;------------------------------------------------;
; REB002.FRM                                     ;
; Ron Barnett 70153,1233                         ;
;------------------------------------------------; 

   IkeGenM = {	; Ron Barnett, 1993
   z = ((1-pixel)/(3*p1))^0.5:
   z =p1*z*z*z + (pixel-1)*z - pixel, |z| <= 100
   }

   IkeGenJ = {	; Ron Barnett, 1993
   z = pixel:
   z =p1*z*z*z + (p2-1)*z - p2, |z| <= 100
   }

   FrRbtGenM = {; Ron Barnett, 1993
   z = pixel:
   z = p1*z*z*z + z*z + pixel, |z| <= 100
   }   

   FrRbtGenJ = {; Ron Barnett, 1993
   z = pixel:
   z = p1*z*z*z + z*z + p2, |z| <= 100
   }   
   
   IkeFrRbtGenM = {; Ron Barnett, 1993
   z = 2*(1-pixel)/(3*p1):
   z = p1*z*z*z + (pixel-1)*z*z - pixel, |z| <= 100
   }

   IkeFrRbtGenJ = {; Ron Barnett, 1993
   z = pixel:
   z = p1*z*z*z + (p2-1)*z*z - p2, |z| <= 100
   }

   PolyGen = {	; Ron Barnett, 1993
		;p1 must not be zero
   		;zero can be simulated with a small
   		;value for p1
   		;use floating point
   z=(-p2+(p2*p2+(1-pixel)*3*p1)^0.5)/(3*p1):
   z=p1*z*z*z+p2*z*z+(pixel-1)*z-pixel,|z| <= 100
   }

FlipProbM1 = {	; Ron Barnett, 1993
   z = pixel:
   z = flip(z)*(1-z) + pixel, |z| <= 100
   }

FlipProbJ1 = {	; Ron Barnett, 1993
   z = pixel:
   z = flip(z)*(1-z) + p1, |z| <= 100
   }

FlipProbM2 = {	; Ron Barnett, 1993
   z = pixel:
   z = z*(pixel-flip(z)) + pixel, |z| <= 100
   }

FlipProbJ2 = {	; Ron Barnett, 1993
   z = pixel:
   z = z*(p1-flip(z)) + p1, |z| <= 100
   }

FlipLambdaM = {	; Ron Barnett, 1993
   z = 0.5:
   z = pixel*z*(1-flip(z)*flip(z)), |z| <= 100
   }

FlipLambdaJ = {	; Ron Barnett, 1993
   z = pixel:
   z = p1*z*(1-flip(z)*flip(z)), |z| <= 100
   }

REBRefInd1 = {	; Ron Barnett, 1993
		; Use floating point
   z = pixel:
   z = (z*z-p1)/(z*z+p2)*fn1(z)*fn2(z) + pixel, |z| <= 100
   }

REBRefInd2 = {	; Ron Barnett, 1993
		; Use floating point
   z = pixel:
   z = (z*z-1)/(z*z+2)*fn1(z)*fn2(z) + p1, |z| <= 100
   }

REBRefInd3 = {	; Ron Barnett, 1993
		; Use floating point
   z = pixel:
   z = (z*z-1)/(z*z+2)*fn1(z) + p1, |z| <= 100
   }

REBRefInd4 = {	; Ron Barnett, 1993
		; Use floating point
   z = pixel:
   z = flip(z);
   z = (z*z-p1)/(z*z+p2)*fn1(z)*fn2(z) + pixel, |z| <= 100
   }

REBRefInd5 = {	; Ron Barnett, 1993
		; Use floating point
   z = pixel:
   z = flip(z);
   z = (z*z-1)/(z*z+2)*fn1(z)*fn2(z) + p1, |z| <= 100
   }