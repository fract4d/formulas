;------------------------------------------------;
; REB007.FRM                                     ;
; Ron Barnett 70153,1233                         ;
;------------------------------------------------; 

JMask2 = {      ; Ron Barnett, 1995      
      z = fn1(pixel):
      z = P1*fn2(z)^2 + P2*fn3(z)^2 + P3, |z| <= 4
   }

sjjulike01 {; Ron Barnett, 1995
        y = pixel,
        z=real(y)+flip(imag(y)*p1),
        c=p2+p1*real(p3)+flip(imag(p3)):
        z = z*z*z + (c - 1)*z - c, |z|<=100
      }
   
PolyGenJulia = {  ; Ron Barnett, 1995
                ;p1 must not be zero
                ;zero can be simulated with a small
                ;value for p1
                ;use floating point
   z=(-p2+(p2*p2+(1-pixel)*3*p1)^0.5)/(3*p1):
   z=p1*z*z*z+p2*z*z+(p3-1)*z-p3,|z| <= 100
   }

REBRefInd1Julia = {  ; Ron Barnett, 1995
                ; Use floating point
   z = pixel:
   z = (z*z-p1)/(z*z+p2)*fn1(z)*fn2(z) + p3, |z| <= 100
   }

REBRefInd4Julia = {  ; Ron Barnett, 1995
                ; Use floating point
   z = pixel:
   z = flip(z);
   z = (z*z-p1)/(z*z+p2)*fn1(z)*fn2(z) + p3, |z| <= 100
   }

FoamJulia {; Ron Barnett, 1995
   z = pixel:
   x = p3*(z - 1/z) + p1,
   z = p3*(x - 1/sqr(x) + p2), |z| <= 100
   }

REB004AJulia = {; Ron Barnett, 1995
   z = pixel:
   z =p1*fn1(z) + p1*p1*fn2(p2*z) + p3, |z| <= 100
   }

REB004LJulia = {; Ron Barnett, 1995
              ; floating point required
   z = pixel:
   x = flip(pixel + fn1(p1/z - z/(p2+1)));
   z = x*z + p3, |z| <= 100
   }

3RDIMIKENAGA01J {; Ron Barnett, 1995
              ; floating point required
        z=p1*real(pixel)+flip(imag(pixel)),
        c=p2+real(p3)+flip(imag(p3)*p1):
        z=z*z*z+(c-1)*z-c, |z|<=100}

SJIKENAGA02JULIA {; Ron Barnett, 1995
              ; floating point required
        z=real(pixel)+flip(imag(pixel)*p1),
        c=p2+p1*real(p3)+flip(imag(p3)),
        z=conj(z),c=conj(c):
        z=z*z*z+(c-1)*z-c, |z|<100}

3RDIMIKENAGA02J {; Ron Barnett, 1995
              ; floating point required
        z=p1*real(pixel)+flip(imag(pixel)),
        c=p2+real(p3)+flip(imag(p3)*p1),
        z=conj(z),c=conj(c):
        z=z*z*z+(c-1)*z-c, |z|<=100}

SJFRAME-ROBERTJ {; Ron Barnett, 1995
              ; floating point required
        z=real(pixel)+flip(imag(pixel)*p1),
        c=p2+p1*real(p3)+flip(imag(p3)):
        z=z*z*z/5+z*z+c, |z|<=100}

3RDIMFRAME-ROBERTJ {; Ron Barnett, 1995
              ; floating point required
        z=p1*real(pixel)+flip(imag(pixel)),
        c=p2+real(p3)+flip(imag(p3)*p1):
        z=z*z*z/5+z*z+c, |z|<=100}

SJSPIDER01JULIA {; Ron Barnett, 1995
              ; floating point required
        z=real(pixel)+flip(imag(pixel)*p1),
        c=p2+p1*real(p3)+flip(imag(p3)):
        z=z*z+c,
        c=c/2+z, |z|<=100}

3RDIMSPIDER01J {; Ron Barnett, 1995
              ; floating point required
        z=p1*real(pixel)+flip(imag(pixel)),
        c=p2+real(p3)+flip(imag(p3)*p1):
        z=z*z+c,
        c=c/2+z, |z|<=100}

SJMANOWAR01JULIA {; Ron Barnett, 1995
              ; floating point required
        z=z1=real(pixel)+flip(imag(pixel)*p1),
        c=p2+p1*real(p3)+flip(imag(p3)):
        z=z*z+z1+c,
        z1=z, |z|<=100}

3RDIMMANOWAR01J {; Ron Barnett, 1995
              ; floating point required
        z=z1=p1*real(pixel)+flip(imag(pixel)),
        c=p2+real(p3)+flip(imag(p3)*p1):
        z=z*z+z1+c,
        z1=z, |z|<=100}

SJIKENAGA03JULIA {; Ron Barnett, 1995
              ; floating point required
        z=real(pixel)-flip(imag(pixel)*p1),
        c=p2+p1*real(p3)-flip(imag(p3)):
        z=z*z*z+(c-1)*z-c, |z|<=100}














