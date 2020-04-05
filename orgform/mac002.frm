comment = { ­Mis fractales!.}

Mac101 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  w1 = real(p3)
  w2 = imag(p3)
  z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z) + z + c
    |z| < bailout
}

Mac102 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  w1 = real(p3)
  w2 = imag(p3)
  z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z+c)/c
    |z| < bailout
}

Mac103 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  w1 = real(p3)
  w2 = imag(p3)
  z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z/c+1) + c
    |z| < bailout
}

Mac104 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  w1 = real(p3)
  w2 = imag(p3)
  z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z) + fn4(c)
    |z| < bailout
}

Mac105 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  w1 = real(p3)
  w2 = imag(p3)
  z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z) - fn4(c)
    |z| < bailout
}

Mac106 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  w1 = real(p3)
  w2 = imag(p3)
  z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z*z + 2*z*c + c*c)
    |z| < bailout
}

Mac107 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  w1 = real(p3)
  w2 = imag(p3)
  z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z*z) + fn4(2*z*c) + fn4(c*c)
    |z| < bailout
}

Mac108 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  w1 = real(p3)
  w2 = imag(p3)
  z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z*z - 2*z*c + c*c)
    |z| < bailout
}

Mac109 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  w1 = real(p3)
  w2 = imag(p3)
  c = z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z) + z + c
    |z| < bailout
}

Mac110 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  w1 = real(p3)
  w2 = imag(p3)
  c = z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z+c)/c
    |z| < bailout
}

Mac111 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  w1 = real(p3)
  w2 = imag(p3)
  c = z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z/c+1) + c
    |z| < bailout
}

Mac112 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  w1 = real(p3)
  w2 = imag(p3)
  c = z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z) + fn4(c)
    |z| < bailout
}

Mac113 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  w1 = real(p3)
  w2 = imag(p3)
  C = z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z) - fn4(c)
    |z| < bailout
}

Mac114 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  w1 = real(p3)
  w2 = imag(p3)
  c = z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z*z + 2*z*c + c*c)
    |z| < bailout
}

Mac115 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  w1 = real(p3)
  w2 = imag(p3)
  c = z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z*z) + fn4(2*z*c) + fn4(c*c)
    |z| < bailout
}

Mac116 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  w1 = real(p3)
  w2 = imag(p3)
  c = z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z*z - 2*z*c + c*c)
    |z| < bailout
}

Mac117 {  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  w1 = real(pixel)
  w2 = imag(pixel)
  z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z*z - 2*z*c + c*c)
    |z| < bailout
}

Mac118 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  w1 = real(pixel)
  w2 = imag(pixel)
  z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z*z - 2*z*c + c*c)
    |z| < bailout
}

Mac119 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  w1 = real(pixel)
  w2 = imag(pixel)
  z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z*z - 2*z*c + c*c)
    |z| < bailout
}

Mac120 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  w1 = real(pixel)
  w2 = imag(pixel)
  z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z*z - 2*z*c + c*c)
    |z| < bailout
}

Mac121 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  w1 = real(pixel)
  w2 = imag(pixel)
  z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z*z - 2*z*c + c*c)
    |z| < bailout
}

Mac122 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  w1 = real(pixel)
  w2 = imag(pixel)
  z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z*z - 2*z*c + c*c)
    |z| < bailout
}

Mac123 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  w1 = real(pixel)
  w2 = imag(pixel)
  z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z*z - 2*z*c + c*c)
    |z| < bailout
}

Mac124 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  w1 = real(pixel)
  w2 = imag(pixel)
  z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z*z - 2*z*c + c*c)
    |z| < bailout
}

Mac125 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  w1 = real(pixel)
  w2 = imag(pixel)
  c = z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z*z - 2*z*c + c*c)
    |z| < bailout
}

Mac126 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  w1 = real(pixel)
  w2 = imag(pixel)
  c = z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z*z - 2*z*c + c*c)
    |z| < bailout
}

Mac127 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  w1 = real(pixel)
  w2 = imag(pixel)
  c = z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z*z - 2*z*c + c*c)
    |z| < bailout
}

Mac128 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  w1 = real(pixel)
  w2 = imag(pixel)
  c = z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z*z - 2*z*c + c*c)
    |z| < bailout
}

Mac129 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  w1 = real(pixel)
  w2 = imag(pixel)
  C = z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z*z - 2*z*c + c*c)
    |z| < bailout
}

Mac130 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  w1 = real(pixel)
  w2 = imag(pixel)
  c = z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z*z - 2*z*c + c*c)
    |z| < bailout
}

Mac131 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  w1 = real(pixel)
  w2 = imag(pixel)
  c = z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z*z - 2*z*c + c*c)
    |z| < bailout
}

Mac132 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  w1 = real(pixel)
  w2 = imag(pixel)
  c = z = fn1(pixel):
    z = fn2(z) * w1 + fn3(z) * w2
    z = fn4(z*z - 2*z*c + c*c)
    |z| < bailout
}

Mac133 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = real(pixel)
  t2 = imag(pixel)
  c = p2
  z = fn1(pixel):
    z1 = fn2(z) * (|z| <= t1)
    z2 = fn3(z) * (|z| <= t2) * (|z| > t1)
    z3 = fn4(z) * (|z| > t2)
    z = z1 + z2 + z3
    z = z*z+c
    |z| < bailout
}

Mac134 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = real(pixel)
  t2 = imag(pixel)
  c = p2
  z = fn1(pixel):
    z1 = fn2(z) * (|z| <= t1)
    z2 = fn3(z) * (|z| <= t2) * (|z| > t1)
    z3 = fn4(z) * (|z| > t2)
    z = z1 + z2 + z3
    z = z+c
    |z| < bailout
}

Mac135 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = real(pixel)
  t2 = imag(pixel)
  c = p2
  z = fn1(pixel):
    z1 = fn2(z) * (|z| <= t1)
    z2 = fn3(z) * (|z| <= t2) * (|z| > t1)
    z3 = fn4(z) * (|z| > t2)
    z = z1 + z2 + z3
    z = z*z-2*z*c+c*c
    |z| < bailout
}

Mac136 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = real(pixel)
  t2 = imag(pixel)
  c = p2
  z = fn1(pixel):
    z1 = fn2(z) * (|z| <= t1)
    z2 = fn3(z) * (|z| <= t2) * (|z| > t1)
    z3 = fn4(z) * (|z| > t2)
    z = z1 + z2 + z3
    z = z*z-c
    |z| < bailout
}

Mac137 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = real(pixel)
  t2 = imag(pixel)
  c = p2
  z = fn1(pixel):
    z1 = fn2(z) * (|z| <= t1)
    z2 = fn3(z) * (|z| <= t2) * (|z| > t1)
    z3 = fn4(z) * (|z| > t2)
    z = z1 + z2 + z3
    z = z/c
    |z| < bailout
}

Mac138 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = real(pixel)
  t2 = imag(pixel)
  c = z = fn1(pixel):
    z1 = fn2(z) * (|z| <= t1)
    z2 = fn3(z) * (|z| <= t2) * (|z| > t1)
    z3 = fn4(z) * (|z| > t2)
    z = z1 + z2 + z3
    z = z*z+c
    |z| < bailout
}

Mac139 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = real(pixel)
  t2 = imag(pixel)
  c = z = fn1(pixel):
    z1 = fn2(z) * (|z| <= t1)
    z2 = fn3(z) * (|z| <= t2) * (|z| > t1)
    z3 = fn4(z) * (|z| > t2)
    z = z1 + z2 + z3
    z = z+c
    |z| < bailout
}

Mac140 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = real(pixel)
  t2 = imag(pixel)
  c = z = fn1(pixel):
    z1 = fn2(z) * (|z| <= t1)
    z2 = fn3(z) * (|z| <= t2) * (|z| > t1)
    z3 = fn4(z) * (|z| > t2)
    z = z1 + z2 + z3
    z = z*z-2*z*c+c*c
    |z| < bailout
}

Mac141 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = real(pixel)
  t2 = imag(pixel)
  c = z = fn1(pixel):
    z1 = fn2(z) * (|z| <= t1)
    z2 = fn3(z) * (|z| <= t2) * (|z| > t1)
    z3 = fn4(z) * (|z| > t2)
    z = z1 + z2 + z3
    z = z*z-c
    |z| < bailout
}

Mac142 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = real(pixel)
  t2 = imag(pixel)
  c = z = fn1(pixel):
    z1 = fn2(z) * (|z| <= t1)
    z2 = fn3(z) * (|z| <= t2) * (|z| > t1)
    z3 = fn4(z) * (|z| > t2)
    z = z1 + z2 + z3
    z = z/c
    |z| < bailout
}

Mac143 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    z = fn2(z/c) + fn3(pixel/c)
    z = fn4(z) + z + c
    |z| < bailout
}

Mac144 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    z = fn2(z/c) + fn3(pixel/c)
    z = fn4(z+c)/c
    |z| < bailout
}

Mac145 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    z = fn2(z/c) + fn3(pixel/c)
    z = fn4(z/c+1) + c
    |z| < bailout
}

Mac146 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    z = fn2(z/c) + fn3(pixel/c)
    z = fn4(z) + fn4(c)
    |z| < bailout
}

Mac147 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    z = fn2(z/c) + fn3(pixel/c)
    z = fn4(z) - fn4(c)
    |z| < bailout
}

Mac148 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    z = fn2(z/c) + fn3(pixel/c)
    z = fn4(z*z + 2*z*c + c*c)
    |z| < bailout
}

Mac149 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    z = fn2(z/c) + fn3(pixel/c)
    z = fn4(z*z) + fn4(2*z*c) + fn4(c*c)
    |z| < bailout
}

Mac150 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    z = fn2(z/c) + fn3(pixel/c)
    z = fn4(z*z - 2*z*c + c*c)
    |z| < bailout
}

Mac151 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    z = fn2(z/c) + fn3(pixel/c)
    z = fn4(z) + z + c
    |z| < bailout
}

Mac152 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    z = fn2(z/c) + fn3(pixel/c)
    z = fn4(z+c)/c
    |z| < bailout
}

Mac153 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    z = fn2(z/c) + fn3(pixel/c)
    z = fn4(z/c+1) + c
    |z| < bailout
}

Mac154 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    z = fn2(z/c) + fn3(pixel/c)
    z = fn4(z) + fn4(c)
    |z| < bailout
}

Mac155 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  C = z = fn1(pixel):
    z = fn2(z/c) + fn3(pixel/c)
    z = fn4(z) - fn4(c)
    |z| < bailout
}

Mac156 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    z = fn2(z/c) + fn3(pixel/c)
    z = fn4(z*z + 2*z*c + c*c)
    |z| < bailout
}

Mac157 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    z = fn2(z/c) + fn3(pixel/c)
    z = fn4(z*z) + fn4(2*z*c) + fn4(c*c)
    |z| < bailout
}

Mac158 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    z = fn2(z/c) + fn3(pixel/c)
    z = fn4(z*z - 2*z*c + c*c)
    |z| < bailout
}

Mac159 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    z = fn2( (z+pixel)/(z*c) )
    z = fn4(z) + z + c
    |z| < bailout
}

Mac160 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    z = fn2( (z+pixel)/(z*c) )
    z = fn4(z+c)/c
    |z| < bailout
}

Mac161 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    z = fn2( (z+pixel)/(z*c) )
    z = fn4(z/c+1) + c
    |z| < bailout
}

Mac162 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    z = fn2( (z+pixel)/(z*c) )
    z = fn4(z) + fn4(c)
    |z| < bailout
}

Mac163 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    z = fn2( (z+pixel)/(z*c) )
    z = fn4(z) - fn4(c)
    |z| < bailout
}

Mac164 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    z = fn2( (z+pixel)/(z*c) )
    z = fn4(z*z + 2*z*c + c*c)
    |z| < bailout
}

Mac165 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    z = fn2( (z+pixel)/(z*c) )
    z = fn4(z*z) + fn4(2*z*c) + fn4(c*c)
    |z| < bailout
}

Mac166 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    z = fn2( (z+pixel)/(z*c) )
    z = fn4(z*z - 2*z*c + c*c)
    |z| < bailout
}

Mac167 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    z = fn2( (z+pixel)/(z*c) )
    z = fn4(z) + z + c
    |z| < bailout
}

Mac168 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    z = fn2( (z+pixel)/(z*c) )
    z = fn4(z+c)/c
    |z| < bailout
}

Mac169 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    z = fn2( (z+pixel)/(z*c) )
    z = fn4(z/c+1) + c
    |z| < bailout
}

Mac170 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    z = fn2( (z+pixel)/(z*c) )
    z = fn4(z) + fn4(c)
    |z| < bailout
}

Mac171 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  C = z = fn1(pixel):
    z = fn2( (z+pixel)/(z*c) )
    z = fn4(z) - fn4(c)
    |z| < bailout
}

Mac172 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    z = fn2( (z+pixel)/(z*c) )
    z = fn4(z*z + 2*z*c + c*c)
    |z| < bailout
}

Mac173 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    z = fn2( (z+pixel)/(z*c) )
    z = fn4(z*z) + fn4(2*z*c) + fn4(c*c)
    |z| < bailout
}

Mac174 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    z = fn2( (z+pixel)/(z*c) )
    z = fn4(z*z - 2*z*c + c*c)
    |z| < bailout
}

Mac175 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    z = fn2( (z-pixel)/(z*c) )
    z = fn4(z) + z + c
    |z| < bailout
}

Mac176 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    z = fn2( (z-pixel)/(z*c) )
    z = fn4(z+c)/c
    |z| < bailout
}

Mac177 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    z = fn2( (z-pixel)/(z*c) )
    z = fn4(z/c+1) + c
    |z| < bailout
}

Mac178 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    z = fn2( (z-pixel)/(z*c) )
    z = fn4(z) + fn4(c)
    |z| < bailout
}

Mac179 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    z = fn2( (z-pixel)/(z*c) )
    z = fn4(z) - fn4(c)
    |z| < bailout
}

Mac180 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    z = fn2( (z-pixel)/(z*c) )
    z = fn4(z*z + 2*z*c + c*c)
    |z| < bailout
}

Mac181 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    z = fn2( (z-pixel)/(z*c) )
    z = fn4(z*z) + fn4(2*z*c) + fn4(c*c)
    |z| < bailout
}

Mac182 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    z = fn2( (z-pixel)/(z*c) )
    z = fn4(z*z - 2*z*c + c*c)
    |z| < bailout
}

Mac183 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    z = fn2( (z-pixel)/(z*c) )
    z = fn4(z) + z + c
    |z| < bailout
}

Mac184 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    z = fn2( (z-pixel)/(z*c) )
    z = fn4(z+c)/c
    |z| < bailout
}

Mac185 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    z = fn2( (z-pixel)/(z*c) )
    z = fn4(z/c+1) + c
    |z| < bailout
}

Mac186 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    z = fn2( (z-pixel)/(z*c) )
    z = fn4(z) + fn4(c)
    |z| < bailout
}

Mac187 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  C = z = fn1(pixel):
    z = fn2( (z-pixel)/(z*c) )
    z = fn4(z) - fn4(c)
    |z| < bailout
}

Mac188 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    z = fn2( (z-pixel)/(z*c) )
    z = fn4(z*z + 2*z*c + c*c)
    |z| < bailout
}

Mac189 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    z = fn2( (z-pixel)/(z*c) )
    z = fn4(z*z) + fn4(2*z*c) + fn4(c*c)
    |z| < bailout
}

Mac190 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    z = fn2( (z-pixel)/(z*c) )
    z = fn4(z*z - 2*z*c + c*c)
    |z| < bailout
}

Mac191 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    z = fn2( (z-pixel)/(z*c) )
    z = fn3(fn4(z*z - 2*z*c + c*c))
    |z| < bailout
}

Mac192 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel:
    z = (z-pixel)/(z*c)
    z = fn1(fn2(fn3(fn4(z*z - 2*z*c + c*c))))
    |z| < bailout
}

