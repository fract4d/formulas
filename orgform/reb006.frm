;------------------------------------------------;
; REB006.FRM                                     ;
; Ron Barnett 70153,1233                         ;
;------------------------------------------------; 

sjikenagamap01 {; Ron Barnett, 1994
	y = ((1-pixel)/3)^0.5,
	z=real(y)+flip(imag(y)*p1),
	c=p2+p1*real(pixel)+flip(imag(pixel)):
	z = z*z*z + (c - 1)*z - c, |z|<=100
      }

ikenagaoriginal {; Ron Barnett, 1994
	z = 0, c = pixel:
	z = z*z*z + (c - 1)*z - c, |z|<=100
      }

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

   Cubicfn = {; Ron Barnett, 1995
   z = c = pixel:
   z = fn1((z-1)*(z-1)*(z+1)) - c*P1 + P2; |z| <= 4
   }

Phoenix = {; Ron Barnett, 1993
	   ; This is an old formula of mine which
	   ; predates the current formuala in Fractint
	   ; The Fractint formula won't generate the
	   ; "birds" par in REB006.PAR. This one will.
      z = flip(pixel);
      x1 = 0;
      y = 0:
      x1 = z*z + P1 + P2*y;
      y = z;
      z = x1; |z|<= 50
   }



