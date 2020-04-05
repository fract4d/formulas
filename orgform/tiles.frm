Tiled_A {   x = real(fn3(fn4(pixel))), y = imag(fn3(fn4(pixel))),
             d1 = real(p1), d2 = imag(p1),
             x = real(p3)*x - d1 - d1*floor((real(p3)*x-d1/2)/d1),
             y = imag(p3)*y - d2 - d2*floor((imag(p3)*y-d2/2)/d2),
             z = fn1(x+flip(y)), c = fn2(x+flip(y))+p2 :
             z = z*z+c,
             |z| <= 128
         }
 
Tiled_B {   x = real(fn3(pixel)), y = imag(fn3(pixel)),
             d1 = real(p1), d2 = imag(p1),
             x = x - d1 - d1*floor((x-d1/2-real(p3))/d1),
             y = y - d2 - d2*floor((y-d2/2-imag(p3))/d2),
             z = fn1(x+flip(y)), c = fn2(x+flip(y))+p2 :
             z = z*z+c,
             |fn4(z)| <= 128
         }
 
Tiled_B2 {  x = real(fn3(pixel)*fn4(pixel)), y = imag(fn3(pixel)*fn4(pixel)),
             d1 = real(p1), d2 = imag(p1),
             x = (x - d1) - d1*floor((x-d1/2-real(p3))/d1),
             y = (y - d2) - d2*floor((y-d2/2-imag(p3))/d2),
             z = fn1(x+flip(y)), c = fn2(x+flip(y))+p2 :
             z = z*z+c,
             |z| <= 256
         }
 
Tiled_C {   x = real(pixel), y = imag(pixel),
             d1 = real(p1), d2 = imag(p1),
             x = - x + d1 - d1*ceil((-x+d1/2)/d1),
             y = y - d2 - d2*floor((y-d2/2)/d2),
             z = fn1(x+flip(y)), c = fn2(x+flip(y))+p2 :
             z = z*z+c,
             |z| <= 32
         }
 
JXMore { z = fn1(pixel^real(p2)),
           c = fn2(pixel^imag(p2))+p1, n=0 :
           z = z*z + c,
           if (|fn3(z)| > imag(p3))
             n = n+1,
             z = z/|1-z|
           endif
           (n <= real(p3)) && (|z| <= 128)
         }
 
Maxims { z = fn1(pixel^real(p3)),
          c = fn2(pixel^imag(p3)) + p1, m=0 :
          z = z*z+c,
          if (|fn3(z)| > m)
            m = |fn3(z)|,
            z = z/(real(p2)+|fn4(z)|)
          endif
          m <= imag(p2)
        }
 
Tiled_B3 {  x = real(fn3(pixel)^fn4(pixel)), y = imag(fn3(pixel)^fn4(pixel)),
             d1 = real(p1), d2 = imag(p1),
             x = x - d1 - d1*floor((x-d1/2-real(p3))/d1),
             y = y - d2 - d2*floor((y-d2/2-imag(p3))/d2),
             z = fn1(x+flip(y)), c = fn2(x+flip(y))+p2 :
             z = z*z+c,
             |z| <= 256
         }
 
Tiled_B4 {  x = real(fn3(pixel)), y = imag(fn3(pixel)),
             d1 = real(p1+fn4(pixel)), d2 = imag(p1+fn4(pixel)),
             x = (x - d1) - d1*floor((x-d1/2-real(p3))/d1),
             y = (y - d2) - d2*floor((y-d2/2-imag(p3))/d2),
             z = fn1(x+flip(y)), c = fn2(x+flip(y))+p2 :
             z = z*z+c,
             |z| <= 256
         }
 
LensA  {  z = c = pixel,
           d = SQRT((z-p1)*CONJ(z-p1)),
           IF (d <= real(p2))
            z = p1 + (1 + fn1(imag(p2)*d/real(p2)))*(z-p1)
           END IF :
           z = z*z+c,
           |z| <= 256
        }
 
Vortex {  z = fn2(pixel), c = fn3(pixel) + p2,
           r = |z - p1|,
           z = EXP(FLIP(fn1(r)))*(z-p1)+p1 :      
           z = z*z + c,
           |z| <= 256
        }
 
Harm    { z = fn1(pixel), c = fn2(pixel)+p1, h = z :
           z = z*z+c,
           h = h*z/(h+z),
           |fn4(fn3(z)-fn3(h))| < real(p2)
         }
