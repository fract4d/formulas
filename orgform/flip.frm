phoenix_m { ; Mandelbrot stye map of the Phoenix curves
   z=x=y=nx=ny=x1=y1=x2=y2=0:
   x2 = sqr(x), y2 = sqr(y),
   x1 = x2 - y2 + real(pixel) + imag(pixel) * nx,
   y1 = 2 * x * y + imag(pixel) * ny,
   nx=x, ny=y, x=x1, y=y1, z=x + flip(y),
   |z| <= 4
   }
phoenix_j (XAXIS) { ; Use P1=0.56667/-0.5   &   .1/.8
   x=real(pixel), y=imag(pixel), z=nx=ny=x1=x2=y1=y2=0:
   x2 = sqr(x), y2 = sqr(y),
   x1 = x2 - y2 + real(p1) + imag(p1) * nx,
   y1 = 2 * x * y + imag(p1) * ny,
   nx=x, ny=y, x=x1, y=y1, z=nx + flip(ny),
   |z| <= 4
   }
non-conformal { ; From Media Magic Calender - August
   z=x=y=x2=y2=0:
   t = x * y,
   x = x2 + t + real(pixel),  y = y2 - t + imag(pixel),
   x2 = sqr(x),  y2 = sqr(y), z=x + flip(y),
   |z| <= 4
   }
flip0_man_m(XAXIS) {
   z=0:
   z = flip(sqr(z) + pixel),
   |z| <= 4
   }
flip0_man_j(ORIGIN) {
   z=pixel:
   z = flip(sqr(z) + p1),
   |z| <= 4
   }
flip1_man_m {
   z=0, q = pixel:
   q = flip(q),
   z = sqr(z) + q,
   |z| <= 4
   }
flip1_man_j(ORIGIN) {
   z=pixel, q = p1:
   q = flip(q),
   z = sqr(z) + q,
   |z| <= 4
   }
flip2_man_m { ;
   z=0, q = pixel:
   q = flip(q),
   z = flip(sqr(z) + q),
   |z| <= 4
   }
flip2_man_j(ORIGIN) {
   z=pixel, q = p1:
   q = flip(q),
   z = flip(sqr(z) + q),
   |z| <= 4
   }
flip3_man_m(XAXIS) { ;
   z = 0:
   z = 1/flip(sqr(z) + pixel),
   |z| <= 4
   }
flip3_man_j { ;
   z = pixel:
   z = 1/flip(sqr(z) + p1),
   |z| <= 4
   }

