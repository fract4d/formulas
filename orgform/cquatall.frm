comment {
  These fomulas are can be used both FRACTINT
  and Ultra Fractal.
  CQuatN formula is equal to CQuatXXN formula.
}

CQuat0 {; Junichi Sato
  q0 = Pixel
  q1 = p1
  q2 = p2
  q3 = p3
  z0 = q0
  z1 = q1
  z2 = q2
  z3 = q3:
   w0 = z0*z0 - z1*z1 - z2*z2 - z3*z3
   w1 = 2*z0*z1
   w2 = 2*z0*z2
   w3 = 2*z0*z3
   z0 = w0 + q0
   z1 = w1 + q1
   z2 = w2 + q2
   z3 = w3 + q3
   z = |z0| + |z1| + |z2| + |z3|
    z <= 4
  }

CQuat1 {; Junichi Sato
  q0 = p1
  q1 = Pixel
  q2 = p2
  q3 = p3
  z0 = q0
  z1 = q1
  z2 = q2
  z3 = q3:
   w0 = z0*z0 - z1*z1 - z2*z2 - z3*z3
   w1 = 2*z0*z1
   w2 = 2*z0*z2
   w3 = 2*z0*z3
   z0 = w0 + q0
   z1 = w1 + q1
   z2 = w2 + q2
   z3 = w3 + q3
   z = |z0| + |z1| + |z2| + |z3|
    z <= 4
  }

CQuat2 {; Junichi Sato
  q0 = real(Pixel) + flip(real(p1))
  q1 = imag(Pixel) + flip(imag(p1))
  q2 = p2
  q3 = p3
  z0 = q0
  z1 = q1
  z2 = q2
  z3 = q3:
   w0 = z0*z0 - z1*z1 - z2*z2 - z3*z3
   w1 = 2*z0*z1
   w2 = 2*z0*z2
   w3 = 2*z0*z3
   z0 = w0 + q0
   z1 = w1 + q1
   z2 = w2 + q2
   z3 = w3 + q3
   z = |z0| + |z1| + |z2| + |z3|
    z <= 4
  }

CQuat3 {; Junichi Sato
  q0 = real(p1) + flip(real(Pixel))
  q1 = imag(p1) + flip(imag(Pixel))
  q2 = p2
  q3 = p3
  z0 = q0
  z1 = q1
  z2 = q2
  z3 = q3:
   w0 = z0*z0 - z1*z1 - z2*z2 - z3*z3
   w1 = 2*z0*z1
   w2 = 2*z0*z2
   w3 = 2*z0*z3
   z0 = w0 + q0
   z1 = w1 + q1
   z2 = w2 + q2
   z3 = w3 + q3
   z = |z0| + |z1| + |z2| + |z3|
    z <= 4
  }

CQuat4 {; Junichi Sato
  q0 = real(Pixel) + flip(real(p1))
  q1 = imag(p1) + flip(imag(Pixel))
  q2 = p2
  q3 = p3
  z0 = q0
  z1 = q1
  z2 = q2
  z3 = q3:
   w0 = z0*z0 - z1*z1 - z2*z2 - z3*z3
   w1 = 2*z0*z1
   w2 = 2*z0*z2
   w3 = 2*z0*z3
   z0 = w0 + q0
   z1 = w1 + q1
   z2 = w2 + q2
   z3 = w3 + q3
   z = |z0| + |z1| + |z2| + |z3|
    z <= 4
  }

CQuat5 {; Junichi Sato
  q0 = real(p1) + flip(real(Pixel))
  q1 = imag(Pixel) + flip(imag(p1))
  q2 = p2
  q3 = p3
  z0 = q0
  z1 = q1
  z2 = q2
  z3 = q3:
   w0 = z0*z0 - z1*z1 - z2*z2 - z3*z3
   w1 = 2*z0*z1
   w2 = 2*z0*z2
   w3 = 2*z0*z3
   z0 = w0 + q0
   z1 = w1 + q1
   z2 = w2 + q2
   z3 = w3 + q3
   z = |z0| + |z1| + |z2| + |z3|
    z <= 4
  }

CQuat6 {; Junichi Sato
  q0 = p2
  q1 = real(Pixel) + flip(real(p1))
  q2 = imag(Pixel) + flip(imag(p1))
  q3 = p3
  z0 = q0
  z1 = q1
  z2 = q2
  z3 = q3:
   w0 = z0*z0 - z1*z1 - z2*z2 - z3*z3
   w1 = 2*z0*z1
   w2 = 2*z0*z2
   w3 = 2*z0*z3
   z0 = w0 + q0
   z1 = w1 + q1
   z2 = w2 + q2
   z3 = w3 + q3
   z = |z0| + |z1| + |z2| + |z3|
    z <= 4
  }

CQuat7 {; Junichi Sato
  q0 = p2
  q1 = real(p1) + flip(real(Pixel))
  q2 = imag(p1) + flip(imag(Pixel))
  q3 = p3
  z0 = q0
  z1 = q1
  z2 = q2
  z3 = q3:
   w0 = z0*z0 - z1*z1 - z2*z2 - z3*z3
   w1 = 2*z0*z1
   w2 = 2*z0*z2
   w3 = 2*z0*z3
   z0 = w0 + q0
   z1 = w1 + q1
   z2 = w2 + q2
   z3 = w3 + q3
   z = |z0| + |z1| + |z2| + |z3|
    z <= 4
  }

CQuat8 {; Junichi Sato
  q0 = p2
  q1 = real(Pixel) + flip(real(p1))
  q2 = imag(p1) + flip(imag(Pixel))
  q3 = p3
  z0 = q0
  z1 = q1
  z2 = q2
  z3 = q3:
   w0 = z0*z0 - z1*z1 - z2*z2 - z3*z3
   w1 = 2*z0*z1
   w2 = 2*z0*z2
   w3 = 2*z0*z3
   z0 = w0 + q0
   z1 = w1 + q1
   z2 = w2 + q2
   z3 = w3 + q3
   z = |z0| + |z1| + |z2| + |z3|
    z <= 4
  }

CQuat9 {; Junichi Sato
  q0 = p2
  q1 = real(p1) + flip(real(Pixel))
  q2 = imag(Pixel) + flip(imag(p1))
  q3 = p3
  z0 = q0
  z1 = q1
  z2 = q2
  z3 = q3:
   w0 = z0*z0 - z1*z1 - z2*z2 - z3*z3
   w1 = 2*z0*z1
   w2 = 2*z0*z2
   w3 = 2*z0*z3
   z0 = w0 + q0
   z1 = w1 + q1
   z2 = w2 + q2
   z3 = w3 + q3
   z = |z0| + |z1| + |z2| + |z3|
    z <= 4
  }

CQuatXX0 {; Junichi Sato
  q0 = Pixel
  q1 = p1
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   z0 = x0*x0 - x1*x1 - x2*x2 - x3*x3
   z1 = 2*x0*x1
   z2 = 2*x0*x2
   z3 = 2*x0*x3
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXX1 {; Junichi Sato
  q0 = p1
  q1 = Pixel
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   z0 = x0*x0 - x1*x1 - x2*x2 - x3*x3
   z1 = 2*x0*x1
   z2 = 2*x0*x2
   z3 = 2*x0*x3
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXX2 {; Junichi Sato
  q0 = real(Pixel) + flip(real(p1))
  q1 = imag(Pixel) + flip(imag(p1))
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   z0 = x0*x0 - x1*x1 - x2*x2 - x3*x3
   z1 = 2*x0*x1
   z2 = 2*x0*x2
   z3 = 2*x0*x3
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXX3 {; Junichi Sato
  q0 = real(p1) + flip(real(Pixel))
  q1 = imag(p1) + flip(imag(Pixel))
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   z0 = x0*x0 - x1*x1 - x2*x2 - x3*x3
   z1 = 2*x0*x1
   z2 = 2*x0*x2
   z3 = 2*x0*x3
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXX4 {; Junichi Sato
  q0 = real(Pixel) + flip(real(p1))
  q1 = imag(p1) + flip(imag(Pixel))
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   z0 = x0*x0 - x1*x1 - x2*x2 - x3*x3
   z1 = 2*x0*x1
   z2 = 2*x0*x2
   z3 = 2*x0*x3
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXX5 {; Junichi Sato
  q0 = real(p1) + flip(real(Pixel))
  q1 = imag(Pixel) + flip(imag(p1))
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   z0 = x0*x0 - x1*x1 - x2*x2 - x3*x3
   z1 = 2*x0*x1
   z2 = 2*x0*x2
   z3 = 2*x0*x3
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXX6 {; Junichi Sato
  q0 = p2
  q1 = real(Pixel) + flip(real(p1))
  q2 = imag(Pixel) + flip(imag(p1))
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   z0 = x0*x0 - x1*x1 - x2*x2 - x3*x3
   z1 = 2*x0*x1
   z2 = 2*x0*x2
   z3 = 2*x0*x3
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXX7 {; Junichi Sato
  q0 = p2
  q1 = real(p1) + flip(real(Pixel))
  q2 = imag(p1) + flip(imag(Pixel))
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   z0 = x0*x0 - x1*x1 - x2*x2 - x3*x3
   z1 = 2*x0*x1
   z2 = 2*x0*x2
   z3 = 2*x0*x3
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXX8 {; Junichi Sato
  q0 = p2
  q1 = real(Pixel) + flip(real(p1))
  q2 = imag(p1) + flip(imag(Pixel))
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   z0 = x0*x0 - x1*x1 - x2*x2 - x3*x3
   z1 = 2*x0*x1
   z2 = 2*x0*x2
   z3 = 2*x0*x3
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXX9 {; Junichi Sato
  q0 = p2
  q1 = real(p1) + flip(real(Pixel))
  q2 = imag(Pixel) + flip(imag(p1))
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   z0 = x0*x0 - x1*x1 - x2*x2 - x3*x3
   z1 = 2*x0*x1
   z2 = 2*x0*x2
   z3 = 2*x0*x3
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXY0 {; Junichi Sato
  q0 = Pixel
  q1 = p1
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   y0 = z0 - q0
   y1 = z1 - q1
   y2 = z2 - q2
   y3 = z3 - q3
   z0 = x0*y0 - x1*y1 - x2*y2 - x3*y3
   z1 = x0*y1 + x1*y0 + x2*y3 - x3*y2
   z2 = x0*y2 + x2*y0 + x3*y1 - x1*y3
   z3 = x0*y3 + x3*y0 + x1*y2 - x2*y1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXY1 {; Junichi Sato
  q0 = p1
  q1 = Pixel
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   y0 = z0 - q0
   y1 = z1 - q1
   y2 = z2 - q2
   y3 = z3 - q3
   z0 = x0*y0 - x1*y1 - x2*y2 - x3*y3
   z1 = x0*y1 + x1*y0 + x2*y3 - x3*y2
   z2 = x0*y2 + x2*y0 + x3*y1 - x1*y3
   z3 = x0*y3 + x3*y0 + x1*y2 - x2*y1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXY2 {; Junichi Sato
  q0 = real(Pixel) + flip(real(p1))
  q1 = imag(Pixel) + flip(imag(p1))
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   y0 = z0 - q0
   y1 = z1 - q1
   y2 = z2 - q2
   y3 = z3 - q3
   z0 = x0*y0 - x1*y1 - x2*y2 - x3*y3
   z1 = x0*y1 + x1*y0 + x2*y3 - x3*y2
   z2 = x0*y2 + x2*y0 + x3*y1 - x1*y3
   z3 = x0*y3 + x3*y0 + x1*y2 - x2*y1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXY3 {; Junichi Sato
  q0 = real(p1) + flip(real(Pixel))
  q1 = imag(p1) + flip(imag(Pixel))
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   y0 = z0 - q0
   y1 = z1 - q1
   y2 = z2 - q2
   y3 = z3 - q3
   z0 = x0*y0 - x1*y1 - x2*y2 - x3*y3
   z1 = x0*y1 + x1*y0 + x2*y3 - x3*y2
   z2 = x0*y2 + x2*y0 + x3*y1 - x1*y3
   z3 = x0*y3 + x3*y0 + x1*y2 - x2*y1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXY4 {; Junichi Sato
  q0 = real(Pixel) + flip(real(p1))
  q1 = imag(p1) + flip(imag(Pixel))
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   y0 = z0 - q0
   y1 = z1 - q1
   y2 = z2 - q2
   y3 = z3 - q3
   z0 = x0*y0 - x1*y1 - x2*y2 - x3*y3
   z1 = x0*y1 + x1*y0 + x2*y3 - x3*y2
   z2 = x0*y2 + x2*y0 + x3*y1 - x1*y3
   z3 = x0*y3 + x3*y0 + x1*y2 - x2*y1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXY5 {; Junichi Sato
  q0 = real(p1) + flip(real(Pixel))
  q1 = imag(Pixel) + flip(imag(p1))
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   y0 = z0 - q0
   y1 = z1 - q1
   y2 = z2 - q2
   y3 = z3 - q3
   z0 = x0*y0 - x1*y1 - x2*y2 - x3*y3
   z1 = x0*y1 + x1*y0 + x2*y3 - x3*y2
   z2 = x0*y2 + x2*y0 + x3*y1 - x1*y3
   z3 = x0*y3 + x3*y0 + x1*y2 - x2*y1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXY6 {; Junichi Sato
  q0 = p2
  q1 = real(Pixel) + flip(real(p1))
  q2 = imag(Pixel) + flip(imag(p1))
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   y0 = z0 - q0
   y1 = z1 - q1
   y2 = z2 - q2
   y3 = z3 - q3
   z0 = x0*y0 - x1*y1 - x2*y2 - x3*y3
   z1 = x0*y1 + x1*y0 + x2*y3 - x3*y2
   z2 = x0*y2 + x2*y0 + x3*y1 - x1*y3
   z3 = x0*y3 + x3*y0 + x1*y2 - x2*y1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXY7 {; Junichi Sato
  q0 = p2
  q1 = real(p1) + flip(real(Pixel))
  q2 = imag(p1) + flip(imag(Pixel))
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   y0 = z0 - q0
   y1 = z1 - q1
   y2 = z2 - q2
   y3 = z3 - q3
   z0 = x0*y0 - x1*y1 - x2*y2 - x3*y3
   z1 = x0*y1 + x1*y0 + x2*y3 - x3*y2
   z2 = x0*y2 + x2*y0 + x3*y1 - x1*y3
   z3 = x0*y3 + x3*y0 + x1*y2 - x2*y1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXY8 {; Junichi Sato
  q0 = p2
  q1 = real(Pixel) + flip(real(p1))
  q2 = imag(p1) + flip(imag(Pixel))
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   y0 = z0 - q0
   y1 = z1 - q1
   y2 = z2 - q2
   y3 = z3 - q3
   z0 = x0*y0 - x1*y1 - x2*y2 - x3*y3
   z1 = x0*y1 + x1*y0 + x2*y3 - x3*y2
   z2 = x0*y2 + x2*y0 + x3*y1 - x1*y3
   z3 = x0*y3 + x3*y0 + x1*y2 - x2*y1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXY9 {; Junichi Sato
  q0 = p2
  q1 = real(p1) + flip(real(Pixel))
  q2 = imag(Pixel) + flip(imag(p1))
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   y0 = z0 - q0
   y1 = z1 - q1
   y2 = z2 - q2
   y3 = z3 - q3
   z0 = x0*y0 - x1*y1 - x2*y2 - x3*y3
   z1 = x0*y1 + x1*y0 + x2*y3 - x3*y2
   z2 = x0*y2 + x2*y0 + x3*y1 - x1*y3
   z3 = x0*y3 + x3*y0 + x1*y2 - x2*y1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXCX0 {; Junichi Sato
  q0 = Pixel
  q1 = p1
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   cx0 = conj(z0) + q0
   cx1 = -conj(z1) + q1
   cx2 = -conj(z2) + q2
   cx3 = -conj(z3) + q3
   z0 = x0*cx0 - x1*cx1 - x2*cx2 - x3*cx3
   z1 = x0*cx1 + x1*cx0 + x2*cx3 - x3*cx2
   z2 = x0*cx2 + x2*cx0 + x3*cx1 - x1*cx3
   z3 = x0*cx3 + x3*cx0 + x1*cx2 - x2*cx1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXCX1 {; Junichi Sato
  q0 = p1
  q1 = Pixel
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   cx0 = conj(z0) + q0
   cx1 = -conj(z1) + q1
   cx2 = -conj(z2) + q2
   cx3 = -conj(z3) + q3
   z0 = x0*cx0 - x1*cx1 - x2*cx2 - x3*cx3
   z1 = x0*cx1 + x1*cx0 + x2*cx3 - x3*cx2
   z2 = x0*cx2 + x2*cx0 + x3*cx1 - x1*cx3
   z3 = x0*cx3 + x3*cx0 + x1*cx2 - x2*cx1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXCX2 {; Junichi Sato
  q0 = real(Pixel) + flip(real(p1))
  q1 = imag(Pixel) + flip(imag(p1))
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   cx0 = conj(z0) + q0
   cx1 = -conj(z1) + q1
   cx2 = -conj(z2) + q2
   cx3 = -conj(z3) + q3
   z0 = x0*cx0 - x1*cx1 - x2*cx2 - x3*cx3
   z1 = x0*cx1 + x1*cx0 + x2*cx3 - x3*cx2
   z2 = x0*cx2 + x2*cx0 + x3*cx1 - x1*cx3
   z3 = x0*cx3 + x3*cx0 + x1*cx2 - x2*cx1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXCX3 {; Junichi Sato
  q0 = real(p1) + flip(real(Pixel))
  q1 = imag(p1) + flip(imag(Pixel))
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   cx0 = conj(z0) + q0
   cx1 = -conj(z1) + q1
   cx2 = -conj(z2) + q2
   cx3 = -conj(z3) + q3
   z0 = x0*cx0 - x1*cx1 - x2*cx2 - x3*cx3
   z1 = x0*cx1 + x1*cx0 + x2*cx3 - x3*cx2
   z2 = x0*cx2 + x2*cx0 + x3*cx1 - x1*cx3
   z3 = x0*cx3 + x3*cx0 + x1*cx2 - x2*cx1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXCX4 {; Junichi Sato
  q0 = real(Pixel) + flip(real(p1))
  q1 = imag(p1) + flip(imag(Pixel))
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   cx0 = conj(z0) + q0
   cx1 = -conj(z1) + q1
   cx2 = -conj(z2) + q2
   cx3 = -conj(z3) + q3
   z0 = x0*cx0 - x1*cx1 - x2*cx2 - x3*cx3
   z1 = x0*cx1 + x1*cx0 + x2*cx3 - x3*cx2
   z2 = x0*cx2 + x2*cx0 + x3*cx1 - x1*cx3
   z3 = x0*cx3 + x3*cx0 + x1*cx2 - x2*cx1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXCX5 {; Junichi Sato
  q0 = real(p1) + flip(real(Pixel))
  q1 = imag(Pixel) + flip(imag(p1))
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   cx0 = conj(z0) + q0
   cx1 = -conj(z1) + q1
   cx2 = -conj(z2) + q2
   cx3 = -conj(z3) + q3
   z0 = x0*cx0 - x1*cx1 - x2*cx2 - x3*cx3
   z1 = x0*cx1 + x1*cx0 + x2*cx3 - x3*cx2
   z2 = x0*cx2 + x2*cx0 + x3*cx1 - x1*cx3
   z3 = x0*cx3 + x3*cx0 + x1*cx2 - x2*cx1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXCX6 {; Junichi Sato
  q0 = p2
  q1 = real(Pixel) + flip(real(p1))
  q2 = imag(Pixel) + flip(imag(p1))
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   cx0 = conj(z0) + q0
   cx1 = -conj(z1) + q1
   cx2 = -conj(z2) + q2
   cx3 = -conj(z3) + q3
   z0 = x0*cx0 - x1*cx1 - x2*cx2 - x3*cx3
   z1 = x0*cx1 + x1*cx0 + x2*cx3 - x3*cx2
   z2 = x0*cx2 + x2*cx0 + x3*cx1 - x1*cx3
   z3 = x0*cx3 + x3*cx0 + x1*cx2 - x2*cx1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXCX7 {; Junichi Sato
  q0 = p2
  q1 = real(p1) + flip(real(Pixel))
  q2 = imag(p1) + flip(imag(Pixel))
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   cx0 = conj(z0) + q0
   cx1 = -conj(z1) + q1
   cx2 = -conj(z2) + q2
   cx3 = -conj(z3) + q3
   z0 = x0*cx0 - x1*cx1 - x2*cx2 - x3*cx3
   z1 = x0*cx1 + x1*cx0 + x2*cx3 - x3*cx2
   z2 = x0*cx2 + x2*cx0 + x3*cx1 - x1*cx3
   z3 = x0*cx3 + x3*cx0 + x1*cx2 - x2*cx1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXCX8 {; Junichi Sato
  q0 = p2
  q1 = real(Pixel) + flip(real(p1))
  q2 = imag(p1) + flip(imag(Pixel))
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   cx0 = conj(z0) + q0
   cx1 = -conj(z1) + q1
   cx2 = -conj(z2) + q2
   cx3 = -conj(z3) + q3
   z0 = x0*cx0 - x1*cx1 - x2*cx2 - x3*cx3
   z1 = x0*cx1 + x1*cx0 + x2*cx3 - x3*cx2
   z2 = x0*cx2 + x2*cx0 + x3*cx1 - x1*cx3
   z3 = x0*cx3 + x3*cx0 + x1*cx2 - x2*cx1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXCX9 {; Junichi Sato
  q0 = p2
  q1 = real(p1) + flip(real(Pixel))
  q2 = imag(Pixel) + flip(imag(p1))
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   cx0 = conj(z0) + q0
   cx1 = -conj(z1) + q1
   cx2 = -conj(z2) + q2
   cx3 = -conj(z3) + q3
   z0 = x0*cx0 - x1*cx1 - x2*cx2 - x3*cx3
   z1 = x0*cx1 + x1*cx0 + x2*cx3 - x3*cx2
   z2 = x0*cx2 + x2*cx0 + x3*cx1 - x1*cx3
   z3 = x0*cx3 + x3*cx0 + x1*cx2 - x2*cx1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXCY0 {; Junichi Sato
  q0 = Pixel
  q1 = p1
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   cy0 = conj(z0) - q0
   cy1 = -conj(z1) - q1
   cy2 = -conj(z2) - q2
   cy3 = -conj(z3) - q3
   z0 = x0*cy0 - x1*cy1 - x2*cy2 - x3*cy3
   z1 = x0*cy1 + x1*cy0 + x2*cy3 - x3*cy2
   z2 = x0*cy2 + x2*cy0 + x3*cy1 - x1*cy3
   z3 = x0*cy3 + x3*cy0 + x1*cy2 - x2*cy1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXCY1 {; Junichi Sato
  q0 = p1
  q1 = Pixel
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   cy0 = conj(z0) - q0
   cy1 = -conj(z1) - q1
   cy2 = -conj(z2) - q2
   cy3 = -conj(z3) - q3
   z0 = x0*cy0 - x1*cy1 - x2*cy2 - x3*cy3
   z1 = x0*cy1 + x1*cy0 + x2*cy3 - x3*cy2
   z2 = x0*cy2 + x2*cy0 + x3*cy1 - x1*cy3
   z3 = x0*cy3 + x3*cy0 + x1*cy2 - x2*cy1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXCY2 {; Junichi Sato
  q0 = real(Pixel) + flip(real(p1))
  q1 = imag(Pixel) + flip(imag(p1))
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   cy0 = conj(z0) - q0
   cy1 = -conj(z1) - q1
   cy2 = -conj(z2) - q2
   cy3 = -conj(z3) - q3
   z0 = x0*cy0 - x1*cy1 - x2*cy2 - x3*cy3
   z1 = x0*cy1 + x1*cy0 + x2*cy3 - x3*cy2
   z2 = x0*cy2 + x2*cy0 + x3*cy1 - x1*cy3
   z3 = x0*cy3 + x3*cy0 + x1*cy2 - x2*cy1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXCY3 {; Junichi Sato
  q0 = real(p1) + flip(real(Pixel))
  q1 = imag(p1) + flip(imag(Pixel))
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   cy0 = conj(z0) - q0
   cy1 = -conj(z1) - q1
   cy2 = -conj(z2) - q2
   cy3 = -conj(z3) - q3
   z0 = x0*cy0 - x1*cy1 - x2*cy2 - x3*cy3
   z1 = x0*cy1 + x1*cy0 + x2*cy3 - x3*cy2
   z2 = x0*cy2 + x2*cy0 + x3*cy1 - x1*cy3
   z3 = x0*cy3 + x3*cy0 + x1*cy2 - x2*cy1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXCY4 {; Junichi Sato
  q0 = real(Pixel) + flip(real(p1))
  q1 = imag(p1) + flip(imag(Pixel))
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   cy0 = conj(z0) - q0
   cy1 = -conj(z1) - q1
   cy2 = -conj(z2) - q2
   cy3 = -conj(z3) - q3
   z0 = x0*cy0 - x1*cy1 - x2*cy2 - x3*cy3
   z1 = x0*cy1 + x1*cy0 + x2*cy3 - x3*cy2
   z2 = x0*cy2 + x2*cy0 + x3*cy1 - x1*cy3
   z3 = x0*cy3 + x3*cy0 + x1*cy2 - x2*cy1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXCY5 {; Junichi Sato
  q0 = real(p1) + flip(real(Pixel))
  q1 = imag(Pixel) + flip(imag(p1))
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   cy0 = conj(z0) - q0
   cy1 = -conj(z1) - q1
   cy2 = -conj(z2) - q2
   cy3 = -conj(z3) - q3
   z0 = x0*cy0 - x1*cy1 - x2*cy2 - x3*cy3
   z1 = x0*cy1 + x1*cy0 + x2*cy3 - x3*cy2
   z2 = x0*cy2 + x2*cy0 + x3*cy1 - x1*cy3
   z3 = x0*cy3 + x3*cy0 + x1*cy2 - x2*cy1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXCY6 {; Junichi Sato
  q0 = p2
  q1 = real(Pixel) + flip(real(p1))
  q2 = imag(Pixel) + flip(imag(p1))
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   cy0 = conj(z0) - q0
   cy1 = -conj(z1) - q1
   cy2 = -conj(z2) - q2
   cy3 = -conj(z3) - q3
   z0 = x0*cy0 - x1*cy1 - x2*cy2 - x3*cy3
   z1 = x0*cy1 + x1*cy0 + x2*cy3 - x3*cy2
   z2 = x0*cy2 + x2*cy0 + x3*cy1 - x1*cy3
   z3 = x0*cy3 + x3*cy0 + x1*cy2 - x2*cy1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXCY7 {; Junichi Sato
  q0 = p2
  q1 = real(p1) + flip(real(Pixel))
  q2 = imag(p1) + flip(imag(Pixel))
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   cy0 = conj(z0) - q0
   cy1 = -conj(z1) - q1
   cy2 = -conj(z2) - q2
   cy3 = -conj(z3) - q3
   z0 = x0*cy0 - x1*cy1 - x2*cy2 - x3*cy3
   z1 = x0*cy1 + x1*cy0 + x2*cy3 - x3*cy2
   z2 = x0*cy2 + x2*cy0 + x3*cy1 - x1*cy3
   z3 = x0*cy3 + x3*cy0 + x1*cy2 - x2*cy1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXCY8 {; Junichi Sato
  q0 = p2
  q1 = real(Pixel) + flip(real(p1))
  q2 = imag(p1) + flip(imag(Pixel))
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   cy0 = conj(z0) - q0
   cy1 = -conj(z1) - q1
   cy2 = -conj(z2) - q2
   cy3 = -conj(z3) - q3
   z0 = x0*cy0 - x1*cy1 - x2*cy2 - x3*cy3
   z1 = x0*cy1 + x1*cy0 + x2*cy3 - x3*cy2
   z2 = x0*cy2 + x2*cy0 + x3*cy1 - x1*cy3
   z3 = x0*cy3 + x3*cy0 + x1*cy2 - x2*cy1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatXCY9 {; Junichi Sato
  q0 = p2
  q1 = real(p1) + flip(real(Pixel))
  q2 = imag(Pixel) + flip(imag(p1))
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   x0 = z0 + q0
   x1 = z1 + q1
   x2 = z2 + q2
   x3 = z3 + q3
   cy0 = conj(z0) - q0
   cy1 = -conj(z1) - q1
   cy2 = -conj(z2) - q2
   cy3 = -conj(z3) - q3
   z0 = x0*cy0 - x1*cy1 - x2*cy2 - x3*cy3
   z1 = x0*cy1 + x1*cy0 + x2*cy3 - x3*cy2
   z2 = x0*cy2 + x2*cy0 + x3*cy1 - x1*cy3
   z3 = x0*cy3 + x3*cy0 + x1*cy2 - x2*cy1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatCXCX0 {; Junichi Sato
  q0 = Pixel
  q1 = p1
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   cx0 = conj(z0) + q0
   cx1 = -conj(z1) + q1
   cx2 = -conj(z2) + q2
   cx3 = -conj(z3) + q3
   z0 = cx0*cx0 - cx1*cx1 - cx2*cx2 - cx3*cx3
   z1 = 2*cx0*cx1
   z2 = 2*cx0*cx2
   z3 = 2*cx0*cx3
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatCXCX1 {; Junichi Sato
  q0 = p1
  q1 = Pixel
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   cx0 = conj(z0) + q0
   cx1 = -conj(z1) + q1
   cx2 = -conj(z2) + q2
   cx3 = -conj(z3) + q3
   z0 = cx0*cx0 - cx1*cx1 - cx2*cx2 - cx3*cx3
   z1 = 2*cx0*cx1
   z2 = 2*cx0*cx2
   z3 = 2*cx0*cx3
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatCXCX2 {; Junichi Sato
  q0 = real(Pixel) + flip(real(p1))
  q1 = imag(Pixel) + flip(imag(p1))
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   cx0 = conj(z0) + q0
   cx1 = -conj(z1) + q1
   cx2 = -conj(z2) + q2
   cx3 = -conj(z3) + q3
   z0 = cx0*cx0 - cx1*cx1 - cx2*cx2 - cx3*cx3
   z1 = 2*cx0*cx1
   z2 = 2*cx0*cx2
   z3 = 2*cx0*cx3
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatCXCX3 {; Junichi Sato
  q0 = real(p1) + flip(real(Pixel))
  q1 = imag(p1) + flip(imag(Pixel))
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   cx0 = conj(z0) + q0
   cx1 = -conj(z1) + q1
   cx2 = -conj(z2) + q2
   cx3 = -conj(z3) + q3
   z0 = cx0*cx0 - cx1*cx1 - cx2*cx2 - cx3*cx3
   z1 = 2*cx0*cx1
   z2 = 2*cx0*cx2
   z3 = 2*cx0*cx3
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatCXCX4 {; Junichi Sato
  q0 = real(Pixel) + flip(real(p1))
  q1 = imag(p1) + flip(imag(Pixel))
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   cx0 = conj(z0) + q0
   cx1 = -conj(z1) + q1
   cx2 = -conj(z2) + q2
   cx3 = -conj(z3) + q3
   z0 = cx0*cx0 - cx1*cx1 - cx2*cx2 - cx3*cx3
   z1 = 2*cx0*cx1
   z2 = 2*cx0*cx2
   z3 = 2*cx0*cx3
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatCXCX5 {; Junichi Sato
  q0 = real(p1) + flip(real(Pixel))
  q1 = imag(Pixel) + flip(imag(p1))
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   cx0 = conj(z0) + q0
   cx1 = -conj(z1) + q1
   cx2 = -conj(z2) + q2
   cx3 = -conj(z3) + q3
   z0 = cx0*cx0 - cx1*cx1 - cx2*cx2 - cx3*cx3
   z1 = 2*cx0*cx1
   z2 = 2*cx0*cx2
   z3 = 2*cx0*cx3
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatCXCX6 {; Junichi Sato
  q0 = p2
  q1 = real(Pixel) + flip(real(p1))
  q2 = imag(Pixel) + flip(imag(p1))
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   cx0 = conj(z0) + q0
   cx1 = -conj(z1) + q1
   cx2 = -conj(z2) + q2
   cx3 = -conj(z3) + q3
   z0 = cx0*cx0 - cx1*cx1 - cx2*cx2 - cx3*cx3
   z1 = 2*cx0*cx1
   z2 = 2*cx0*cx2
   z3 = 2*cx0*cx3
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatCXCX7 {; Junichi Sato
  q0 = p2
  q1 = real(p1) + flip(real(Pixel))
  q2 = imag(p1) + flip(imag(Pixel))
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   cx0 = conj(z0) + q0
   cx1 = -conj(z1) + q1
   cx2 = -conj(z2) + q2
   cx3 = -conj(z3) + q3
   z0 = cx0*cx0 - cx1*cx1 - cx2*cx2 - cx3*cx3
   z1 = 2*cx0*cx1
   z2 = 2*cx0*cx2
   z3 = 2*cx0*cx3
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatCXCX8 {; Junichi Sato
  q0 = p2
  q1 = real(Pixel) + flip(real(p1))
  q2 = imag(p1) + flip(imag(Pixel))
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   cx0 = conj(z0) + q0
   cx1 = -conj(z1) + q1
   cx2 = -conj(z2) + q2
   cx3 = -conj(z3) + q3
   z0 = cx0*cx0 - cx1*cx1 - cx2*cx2 - cx3*cx3
   z1 = 2*cx0*cx1
   z2 = 2*cx0*cx2
   z3 = 2*cx0*cx3
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatCXCX9 {; Junichi Sato
  q0 = p2
  q1 = real(p1) + flip(real(Pixel))
  q2 = imag(Pixel) + flip(imag(p1))
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   cx0 = conj(z0) + q0
   cx1 = -conj(z1) + q1
   cx2 = -conj(z2) + q2
   cx3 = -conj(z3) + q3
   z0 = cx0*cx0 - cx1*cx1 - cx2*cx2 - cx3*cx3
   z1 = 2*cx0*cx1
   z2 = 2*cx0*cx2
   z3 = 2*cx0*cx3
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatCXCY0 {; Junichi Sato
  q0 = Pixel
  q1 = p1
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   cx0 = conj(z0) + q0
   cx1 = -conj(z1) + q1
   cx2 = -conj(z2) + q2
   cx3 = -conj(z3) + q3
   cy0 = conj(z0) - q0
   cy1 = -conj(z1) - q1
   cy2 = -conj(z2) - q2
   cy3 = -conj(z3) - q3
   z0 = cx0*cy0 - cx1*cy1 - cx2*cy2 - cx3*cy3
   z1 = cx0*cy1 + cx1*cy0 + cx2*cy3 - cx3*cy2
   z2 = cx0*cy2 + cx2*cy0 + cx3*cy1 - cx1*cy3
   z3 = cx0*cy3 + cx3*cy0 + cx1*cy2 - cx2*cy1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatCXCY1 {; Junichi Sato
  q0 = p1
  q1 = Pixel
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   cx0 = conj(z0) + q0
   cx1 = -conj(z1) + q1
   cx2 = -conj(z2) + q2
   cx3 = -conj(z3) + q3
   cy0 = conj(z0) - q0
   cy1 = -conj(z1) - q1
   cy2 = -conj(z2) - q2
   cy3 = -conj(z3) - q3
   z0 = cx0*cy0 - cx1*cy1 - cx2*cy2 - cx3*cy3
   z1 = cx0*cy1 + cx1*cy0 + cx2*cy3 - cx3*cy2
   z2 = cx0*cy2 + cx2*cy0 + cx3*cy1 - cx1*cy3
   z3 = cx0*cy3 + cx3*cy0 + cx1*cy2 - cx2*cy1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatCXCY2 {; Junichi Sato
  q0 = real(Pixel) + flip(real(p1))
  q1 = imag(Pixel) + flip(imag(p1))
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   cx0 = conj(z0) + q0
   cx1 = -conj(z1) + q1
   cx2 = -conj(z2) + q2
   cx3 = -conj(z3) + q3
   cy0 = conj(z0) - q0
   cy1 = -conj(z1) - q1
   cy2 = -conj(z2) - q2
   cy3 = -conj(z3) - q3
   z0 = cx0*cy0 - cx1*cy1 - cx2*cy2 - cx3*cy3
   z1 = cx0*cy1 + cx1*cy0 + cx2*cy3 - cx3*cy2
   z2 = cx0*cy2 + cx2*cy0 + cx3*cy1 - cx1*cy3
   z3 = cx0*cy3 + cx3*cy0 + cx1*cy2 - cx2*cy1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatCXCY3 {; Junichi Sato
  q0 = real(p1) + flip(real(Pixel))
  q1 = imag(p1) + flip(imag(Pixel))
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   cx0 = conj(z0) + q0
   cx1 = -conj(z1) + q1
   cx2 = -conj(z2) + q2
   cx3 = -conj(z3) + q3
   cy0 = conj(z0) - q0
   cy1 = -conj(z1) - q1
   cy2 = -conj(z2) - q2
   cy3 = -conj(z3) - q3
   z0 = cx0*cy0 - cx1*cy1 - cx2*cy2 - cx3*cy3
   z1 = cx0*cy1 + cx1*cy0 + cx2*cy3 - cx3*cy2
   z2 = cx0*cy2 + cx2*cy0 + cx3*cy1 - cx1*cy3
   z3 = cx0*cy3 + cx3*cy0 + cx1*cy2 - cx2*cy1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatCXCY4 {; Junichi Sato
  q0 = real(Pixel) + flip(real(p1))
  q1 = imag(p1) + flip(imag(Pixel))
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   cx0 = conj(z0) + q0
   cx1 = -conj(z1) + q1
   cx2 = -conj(z2) + q2
   cx3 = -conj(z3) + q3
   cy0 = conj(z0) - q0
   cy1 = -conj(z1) - q1
   cy2 = -conj(z2) - q2
   cy3 = -conj(z3) - q3
   z0 = cx0*cy0 - cx1*cy1 - cx2*cy2 - cx3*cy3
   z1 = cx0*cy1 + cx1*cy0 + cx2*cy3 - cx3*cy2
   z2 = cx0*cy2 + cx2*cy0 + cx3*cy1 - cx1*cy3
   z3 = cx0*cy3 + cx3*cy0 + cx1*cy2 - cx2*cy1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatCXCY5 {; Junichi Sato
  q0 = real(p1) + flip(real(Pixel))
  q1 = imag(Pixel) + flip(imag(p1))
  q2 = p2
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   cx0 = conj(z0) + q0
   cx1 = -conj(z1) + q1
   cx2 = -conj(z2) + q2
   cx3 = -conj(z3) + q3
   cy0 = conj(z0) - q0
   cy1 = -conj(z1) - q1
   cy2 = -conj(z2) - q2
   cy3 = -conj(z3) - q3
   z0 = cx0*cy0 - cx1*cy1 - cx2*cy2 - cx3*cy3
   z1 = cx0*cy1 + cx1*cy0 + cx2*cy3 - cx3*cy2
   z2 = cx0*cy2 + cx2*cy0 + cx3*cy1 - cx1*cy3
   z3 = cx0*cy3 + cx3*cy0 + cx1*cy2 - cx2*cy1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatCXCY6 {; Junichi Sato
  q0 = p2
  q1 = real(Pixel) + flip(real(p1))
  q2 = imag(Pixel) + flip(imag(p1))
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   cx0 = conj(z0) + q0
   cx1 = -conj(z1) + q1
   cx2 = -conj(z2) + q2
   cx3 = -conj(z3) + q3
   cy0 = conj(z0) - q0
   cy1 = -conj(z1) - q1
   cy2 = -conj(z2) - q2
   cy3 = -conj(z3) - q3
   z0 = cx0*cy0 - cx1*cy1 - cx2*cy2 - cx3*cy3
   z1 = cx0*cy1 + cx1*cy0 + cx2*cy3 - cx3*cy2
   z2 = cx0*cy2 + cx2*cy0 + cx3*cy1 - cx1*cy3
   z3 = cx0*cy3 + cx3*cy0 + cx1*cy2 - cx2*cy1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatCXCY7 {; Junichi Sato
  q0 = p2
  q1 = real(p1) + flip(real(Pixel))
  q2 = imag(p1) + flip(imag(Pixel))
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   cx0 = conj(z0) + q0
   cx1 = -conj(z1) + q1
   cx2 = -conj(z2) + q2
   cx3 = -conj(z3) + q3
   cy0 = conj(z0) - q0
   cy1 = -conj(z1) - q1
   cy2 = -conj(z2) - q2
   cy3 = -conj(z3) - q3
   z0 = cx0*cy0 - cx1*cy1 - cx2*cy2 - cx3*cy3
   z1 = cx0*cy1 + cx1*cy0 + cx2*cy3 - cx3*cy2
   z2 = cx0*cy2 + cx2*cy0 + cx3*cy1 - cx1*cy3
   z3 = cx0*cy3 + cx3*cy0 + cx1*cy2 - cx2*cy1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatCXCY8 {; Junichi Sato
  q0 = p2
  q1 = real(Pixel) + flip(real(p1))
  q2 = imag(p1) + flip(imag(Pixel))
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   cx0 = conj(z0) + q0
   cx1 = -conj(z1) + q1
   cx2 = -conj(z2) + q2
   cx3 = -conj(z3) + q3
   cy0 = conj(z0) - q0
   cy1 = -conj(z1) - q1
   cy2 = -conj(z2) - q2
   cy3 = -conj(z3) - q3
   z0 = cx0*cy0 - cx1*cy1 - cx2*cy2 - cx3*cy3
   z1 = cx0*cy1 + cx1*cy0 + cx2*cy3 - cx3*cy2
   z2 = cx0*cy2 + cx2*cy0 + cx3*cy1 - cx1*cy3
   z3 = cx0*cy3 + cx3*cy0 + cx1*cy2 - cx2*cy1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }

CQuatCXCY9 {; Junichi Sato
  q0 = p2
  q1 = real(p1) + flip(real(Pixel))
  q2 = imag(Pixel) + flip(imag(p1))
  q3 = p3
  z0 = 0
  z1 = 0
  z2 = 0
  z3 = 0:
   cx0 = conj(z0) + q0
   cx1 = -conj(z1) + q1
   cx2 = -conj(z2) + q2
   cx3 = -conj(z3) + q3
   cy0 = conj(z0) - q0
   cy1 = -conj(z1) - q1
   cy2 = -conj(z2) - q2
   cy3 = -conj(z3) - q3
   z0 = cx0*cy0 - cx1*cy1 - cx2*cy2 - cx3*cy3
   z1 = cx0*cy1 + cx1*cy0 + cx2*cy3 - cx3*cy2
   z2 = cx0*cy2 + cx2*cy0 + cx3*cy1 - cx1*cy3
   z3 = cx0*cy3 + cx3*cy0 + cx1*cy2 - cx2*cy1
   z = |z0| + |z1| + |z2| + |z3|
    z <= 16
  }
