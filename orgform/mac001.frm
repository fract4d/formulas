comment { ­Mis fractales!.}

Julia001 (origin) { ; p2 = 16
      bailout = ( 16 * ( p2 <= 0 ) ) + ( p2 * ( 0 < p2 ) )
      z = Pixel:
      z2 = z * z
      z = z2 * z2 + p1,
      |z| <= bailout
}

comment  { MandelBroot de tres puntas.}
Mand001 (xaxis) { ; p1 = 16
      bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
      c = z = Pixel:
      z2 = z * z  
      z = z2 * z2 + c,
      |z| <= bailout
}

comment  { Mandelbroot de cinco puntas.}
Mand002 (xaxis)  { ; p1 = 64
      bailout = ( 64 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
      c = z = Pixel:
      z2 = z * z  
      z = z2 * z2 * z2 + c,
      |z| <= bailout
}

comment  { Mandelbroot de dos puntas.}
Mand003 (xaxis)  { ; p1 = 64
      bailout = ( 64 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
      c = z = Pixel:
      z2 = z * z  
      z = z2 * z + c,
      |z| <= bailout
}

Mand004 (xaxis)  { ; p1 = 10000
      bailout = ( 10000 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
      c = z = Pixel:
      z2 = z * z * z  
      z = z2 * z2 * z2 + c,
      |z| <= bailout
}

Mand005 { ; p1 = 4
      bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
      c = z = Pixel:
      z = z * conj(z) + c,
      |z| <= bailout
}

Mand006 (xaxis)  { ; p1 = 64
      bailout = ( 64 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
      c = z = fn1(Pixel):
      z2 = z * z  
      z = z2 * z + c,
      |z| <= bailout
}

Mand007 { ; p1 = 16
      bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
      c = z = Pixel:
      z = z * z + c
      |z| <= bailout
      c = c * c + p2
      |c| <= bailout
}

Mand008 { ; p1 = 16
      bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
      c = z = Pixel:
      z = fn1( z ) + c
      c = fn2( c ),
      |z| > bailout
}

Mand009 (xaxis) { ; p1 = 16
      bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
      c = z = Pixel:
      z = z * z + c,
      |z| <= bailout
      z = z * z * z + c,
      |z| <= bailout
      z = z * z * z * z + c,
      |z| <= bailout
      z = z * z * z * z * z + c,
      |z| <= bailout
}

Mand010 (xaxis) { ; p1 = 16
      bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
      c = z = Pixel:
      z = z * fn1(z) + c,
      |z| <= bailout
      z = z * fn1(z) * fn2(z) + c,
      |z| <= bailout
      z = z * fn1(z) * fn2(z) * fn3(z) + c,
      |z| <= bailout
      z = z * fn1(z) * fn2(z) * fn3(z) * fn4(z) + c,
      |z| <= bailout
}

Mand011 (xaxis) { ; p1 = 16
      bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
      shift = real(p2)
      iter = 1
      c = z = Pixel:
      z1 = (z * fn1(z) + c) * (iter <= shift)
      z2 = (z * fn1(z) * fn2(z) + c) * (iter <= 2*shift) * (iter > shift)
      z3 = (z * fn1(z) * fn2(z) * fn3(z) + c) * (iter <= 3*shift) * (iter > 2*shift)
      z4 = (z * fn1(z) * fn2(z) * fn3(z) * fn4(z) + c) * (iter > 3*shift)
      z = z1 + z2 + z3 + z4
      iter = iter + 1
      |z| <= bailout
}

Mand012 (xaxis) { ; p1 = 16
      bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
      c = z = Pixel:
      z = z + fn1(z) + c,
      |z| <= bailout
      z = z + fn1(z) + fn2(z) + c,
      |z| <= bailout
      z = z + fn1(z) + fn2(z) + fn3(z) + c,
      |z| <= bailout
      z = z + fn1(z) + fn2(z) + fn3(z) + fn4(z) + c,
      |z| <= bailout
}

Mand013 (xaxis) { ; p1 = 16
      bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
      shift = real(p2)
      iter = 1
      c = z = Pixel:
      z1 = (z + fn1(z) + c) * (iter <= shift)
      z2 = (z + fn1(z) + fn2(z) + c) * (iter <= 2*shift) * (iter > shift)
      z3 = (z + fn1(z) + fn2(z) + fn3(z) + c) * (iter <= 3*shift) * (iter > 2*shift)
      z4 = (z + fn1(z) + fn2(z) + fn3(z) + fn4(z) + c) * (iter > 3*shift)
      z = z1 + z2 + z3 + z4
      iter = iter + 1
      |z| <= bailout
}

Manv001 (xaxis)  {
      bailout = ( 64 * ( p3 <= 0 ) ) + ( p3 * ( 0 < p3 ) )
      c = z = Pixel:
      z2 = z * z  
      z = z2 * z2 * z2 + P1 * z2 * z2 + P2 * z2 + c,
      |z| <= bailout
}

Manv002 (xaxis)  {
      bailout = ( 4 * ( p3 <= 0 ) ) + ( p3 * ( 0 < p3 ) )
      c = z = Pixel:
      z2 = z * z  
      z = (p1 - z2) * (z2 - p2) + c,
      |z| <= bailout
}

Msin001 (xaxis)  {
      bailout = ( 4 * ( p3 <= 0 ) ) + ( p3 * ( 0 < p3 ) )
      c = z = Pixel:
      z2 = z * z  
      z = sin(p1 - z2) * sin(z2 - p1) + c,
      |z| <= bailout
}

Msin002 (xaxis)  {
      bailout = ( 10 * ( p3 <= 0 ) ) + ( p3 * ( 0 < p3 ) )
      c = z = Pixel:
      z = z ^ sin(z) / z + c,
      |z| <= bailout
}

Newt001 (xaxis)  {
      bailout = ( 16 * ( p3 <= 0 ) ) + ( p3 * ( 0 < p3 ) )
      z = Pixel:
      z2 = z * z  
      z3 = z * z2  
      z = (2 * z3 + p1) / (3 * z2),
      |z| <= bailout
}

Newt002 (xaxis)  {
      bailout = ( 16 * ( p3 <= 0 ) ) + ( p3 * ( 0 < p3 ) )
      c = z = Pixel:
      z2 = z * z  
      z3 = z * z2
      z = (2 * z3 + p1) / (3 * z2) + c,
      |z| <= bailout
}

Newt003 (xaxis)  {
      bailout = ( 16 * ( p3 <= 0 ) ) + ( p3 * ( 0 < p3 ) )
      c = z = Pixel:
      z2 = z * z  
      z3 = z * z2  
      z = (2 * z3 + c) / (3 * z2) + p1,
      |z| <= bailout
}

Newt004 (xaxis)  {
      bailout = ( 256 * ( p3 <= 0 ) ) + ( p3 * ( 0 < p3 ) )
      z = Pixel:
      z2 = z * z  
      z3 = z2 * z  
      z6 = z3 * z3
      zf = z6 - p1 * z2 * z2
      zd = 6 * z3 * z2 - 3 * p1 * z3
      z = z - zf / zd,
      |z| <= bailout
}

Arana01 (XAXIS) {   ;p1=0.4444444 => Arana?, p2=4
      bailout = ( 4 * ( p2 <= 0 ) ) + ( p2 * ( 0 < p2 ) )
      c = z = Pixel:
      z = z * z * z + c  
      c = p1 * c + z,
      |z| <= bailout
}

Arana02 (XAXIS) { ; p2 = 16
      bailout = ( 16 * ( p2 <= 0 ) ) + ( p2 * ( 0 < p2 ) )
      c = z = Pixel:
      z = z * z * z * z + c  
      c = p1 * c + z,
      |z| <= bailout
}

Cubic01 (XAXIS)  {
      bailout = ( 16 * ( p2 <= 0 ) ) + ( p2 * ( 0 < p2 ) )
      z = pixel
      c = p1 :
      c3 = 3*c
      a = (c*c + 1) / c3
      b = 2*a*a*(c - 2) / c3
      z = z*z*z - 3*a*a*z*z + b,
      |z| <= bailout
}

Cubic02 (XAXIS)  {
      bailout = ( 16 * ( p2 <= 0 ) ) + ( p2 * ( 0 < p2 ) )
      z = pixel
      c = pixel + p1:
      c3 = 3*c
      a = (c*c + 1) / c3
      b = 2*a*a*(c - 2) / c3
      z = z*z*z - 3*a*a*z*z + b,
      |z| <= bailout
}

Cubic03 {; Lee Skinner
                ; Generalizada por Marcelo Anelli
      p = pixel, bailout = ( 3 * ( p2 <= 0 ) ) + ( p2 * ( 0 < p2 ) )
      t3 = 3*p, t2 = p*p
      a = (t2 + 1)/t3, b = 2*a*a*a + (t2 - 2)/t3
      aa3 = a*a*3, z = p1 - a :
      z = z*z*z - aa3*z + b
      |z| < bailout
}

fiboA { ;Fibonacci / H¡brido de Mandelbrot
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  z = oldz = c = pixel:
    temp = z
    z = z * oldz + c
    oldz = temp
    |z| < bailout
}

fiboB { ;Mutaci¢n of fiboA
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  z = oldz = c = pixel:
    temp = z
    z = fn1(z * oldz) + c
    oldz = temp
    |z| < bailout
}

fiboB1 { ;Mutaci¢n of fiboA
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  z = oldz = c = pixel:
    temp = z
    z = fn1(z) * fn2(oldz) + c
    oldz = temp
    |z| < bailout
}

fiboA1 { ;Fibonacci
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  z = oldz = c = pixel:
    temp = z
    z = z + oldz
    oldz = temp
    z = z * z + c
    |z| < bailout
}

fiboB2 { ;Fibonacci
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  z = oldz = c = pixel:
    temp = z
    z = z + oldz
    oldz = temp
    z = fn1( z ) * fn2( z ) + c
    |z| < bailout
}

Sierpin0 { ; Sierpinski
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte = ( 1 * ( p2 <= 0 ) ) + ( real( p2 ) * ( 0 < p2 ))
  c = p3
  z = pixel:
    x = 2 * real(z)
    y = 2 * imag(z)
    z = x + flip( y )
    z = z - ( x > corte ) * ( 1 - ( y > corte ))
    z = fn1( z - flip( y > corte ) ) + c
    |z| < bailout
}

Sierpin1 { ; Sierpinski
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte = ( 1 * ( p2 <= 0 ) ) + ( real( p2 ) * ( 0 < p2 ))
  c = z = pixel:
    x = 2 * real(z)
    y = 2 * imag(z)
    z = x + flip( y )
    z = z - ( x > corte ) * ( 1 - ( y > corte ))
    z = fn1( z - flip( y > corte ) ) + c
    |z| < bailout
}

Sierpin2 { ; Sierpinski, formula tradicional
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte = ( 1 * ( p2 <= 0 ) ) + ( real( p2 ) * ( 0 < p2 ))
  valor = p3 + p2
  c = p3
  z = pixel:
    x = 2 * real(z)
    y = 2 * imag(z)
    a1 = ( x + flip( y - valor ) ) * ( y > corte )
    a2 = ( ( x - valor ) + flip( y ) ) * ( y <= corte ) * ( x > corte )
    a3 = ( x + flip( y ) ) * ( y <= corte ) * ( x <= corte )
    z = fn1( a1 + a2 + a3 ) + c
    |z| < bailout
}

Sierpin3 { ; Sierpinski
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte = ( 1 * ( p2 <= 0 ) ) + ( real( p2 ) * ( 0 < p2 ))
  c = p3
  z = pixel:
    x = 2 * real(z)
    y = 2 * imag(z)
    z = x + flip( y )
    z = z - ( x > corte ) * ( 1 - ( y > corte ))
    z = fn1( z - flip( y > corte ) ) + c
    real(z) < bailout
}

Sierpin4 { ; Sierpinski
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte = ( 1 * ( p2 <= 0 ) ) + ( real( p2 ) * ( 0 < p2 ))
  c = p3
  z = pixel:
    x = 2 * real(z)
    y = 2 * imag(z)
    z = x + flip( y )
    z = z - ( x / |x| ) *( |x| > corte ) * ( 1 - ( |y| > corte ))
    z = fn1( z - ( y / |y| ) * flip( |y| > corte ) ) + c
    |z| < bailout
}

Sierpin5 { ; Sierpinski
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte = ( 1 * ( p2 <= 0 ) ) + ( real( p2 ) * ( 0 < p2 ))
  c = p3
  z = pixel:
    x = real(z)
    y = imag(z)
    z = x + flip( y )
    z = z - ( x > corte ) * ( 1 - ( y > corte ))
    z = fn1( z - flip( y > corte ) ) + c
    |z| < bailout
}

Sierpin6 { ; Sierpinski
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte = ( 1 * ( p2 <= 0 ) ) + ( real( p2 ) * ( 0 < p2 ))
  c = p3
  z = pixel:
    x = 2 * real(z)
    y = 2 * imag(z)
    z = x + flip( y )
    z = fn1( z - ( x > corte ) - flip( y > corte ) ) + c
    |z| < bailout
}

Sierpin7 { ; Sierpinski
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte = ( 1 * ( p2 <= 0 ) ) + ( real( p2 ) * ( 0 < p2 ))
  c = z = pixel:
    x = 2 * real(z)
    y = 2 * imag(z)
    z = x + flip( y )
    z = fn1( z - ( x > corte ) - flip( y > corte ) ) + c
    |z| < bailout
}

Sierpin8 { ; Sierpinski
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte1 = ( 1 * ( p2 <= 0 ) ) + ( real( p2 ) * ( 0 < p2 ))
  corte2 = ( 1 * ( p3 <= 0 ) ) + ( real( p3 ) * ( 0 < p3 ))
  c =  z = pixel:
    x = 2 * real(z)
    y = 2 * imag(z)
    z = x + flip( y )
    z = z - ( x > corte2 ) - ( x > corte1 )
    z = fn1( z - flip( y > corte1 ) - flip( y > corte2 ) ) + c
    |z| < bailout
}

Sierpin9 { ; Sierpinski
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte1 = ( 1 * ( p2 <= 0 ) ) + ( real( p2 ) * ( 0 < p2 ))
  corte2 = ( 1 * ( p3 <= 0 ) ) + ( real( p3 ) * ( 0 < p3 ))
  c =  z = pixel:
    x = 4 * real(z)
    y = 4 * imag(z)
    z = x + flip( y )
    z = z - ( x > corte2 ) - ( x > corte1 ) - ( x > ( corte1 + corte2 ) )
    z = z - flip( y > corte1 ) - flip( y > corte2 ) - flip( y > ( corte1 + corte2 ) )
    z = fn1( z ) + c
    |z| < bailout
}

Ran001 { 
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  srand(p2)
  c = z = pixel + rand:
    z = fn1(z) + c
    |z| < bailout
}

Ran002 { 
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  srand(p2)
  c = p3
  z = pixel + rand:
    z = fn1(z) + c
    |z| < bailout
}

Mac001 (XAXIS) { ; p1 = 32
      bailout = ( 32 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
      c = z = Pixel:
      z2 = fn1( z - 1 ) / fn2( z + 1 )
      z = fn3( z2 ) + c,
      |z| <= bailout
}

Mac002 (XAXIS) { ; p1 = 32
      bailout = ( 32 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
      c = z = Pixel:
      z2 = fn1( z + 1 ) / fn2( z - 1 )
      z = fn3( z2 ) + c,
      |z| <= bailout
}

Mac003 (XAXIS) { ; p1 = 32
      bailout = ( 32 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
      c = z = Pixel:
      z2 = fn1( z*z - 1 ) / fn2( z*z + 1 )
      z = fn3( z2 ) + c,
      |z| <= bailout
}

Mac004 { ; p1 = 32
      bailout = ( 32 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
      c = z = Pixel:
      z2 = fn1( z*z + 1 ) / fn2( z*z - 1 )
      z = fn3( z2 ) + c,
      |z| <= bailout
}

Mac005 { ; p1 = 32
      bailout = ( 32 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
      c = p2
      z = Pixel:
      z2 = fn1( z*z + 1 ) / fn2( z*z - 1 )
      z = fn3( z2 ) + c,
      |z| <= bailout
}

Mac006 { ; p1 = 32
      bailout = ( 32 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
      c = p2
      z = Pixel:
      z2 = fn1( z*z - 1 ) / fn2( z*z + 1 )
      z = fn3( z2 ) + c,
      |z| <= bailout
}

Mac007 (XAXIS) { ; p1 = 32
      bailout = ( 32 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
      c = p2
      z = Pixel:
      z2 = fn1( z - 1 ) / fn2( z + 1 )
      z = fn3( z2 ) + c,
      |z| <= bailout
}

Mac008 (XAXIS) { ; p1 = 32
      bailout = ( 32 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
      c = p2
      z = Pixel:
      z2 = fn1( z + 1 ) / fn2( z - 1 )
      z = fn3( z2 ) + c,
      |z| <= bailout
}

Mac009 (XAXIS) { ; p1 = 32
      bailout = ( 32 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
      c = z = Pixel:
      z2 = fn1( 1 - z ) / fn2( 1 + z )
      z = fn3( z2 ) + c,
      |z| <= bailout
}

Mac010 (XAXIS) { ; p1 = 32
      bailout = ( 32 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
      c = z = Pixel:
      z2 = fn1( 1 + z ) / fn2( 1 - z )
      z = fn3( z2 ) + c,
      |z| <= bailout
}

Mac011 (XAXIS) { ; p1 = 32
      bailout = ( 32 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
      c = z = Pixel:
      z2 = fn1( 1 - z*z ) / fn2( 1 + z*z )
      z = fn3( z2 ) + c,
      |z| <= bailout
}

Mac012 (XAXIS) { ; p1 = 32
      bailout = ( 32 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
      c = z = Pixel:
      z2 = fn1( 1 + z*z ) / fn2( 1 - z*z )
      z = fn3( z2 ) + c,
      |z| <= bailout
}

Mac013 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel:
    x = real(z)
    y = imag(z)
    z = fn1( x * x ) + fn2( y * y )
    |z| < bailout
}

Mac014 { 
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte = p2 + 1
  c = z = pixel:
    z = ( fn1( z ) * ( |z| < |corte| ) ) + ( fn2( z ) * ( |z| >= |corte| ) )
    z = z * z + c
    |z| < bailout
}

Mac015 { 
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte = p2 + 1
  c = p3
  z = pixel:
    z = ( fn1( z ) * ( |z| < |corte| ) ) + ( fn2( z ) * ( |z| >= |corte| ) )
    z = z * z + c
    |z| < bailout
}

Mac016 { 
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte = p2 + 1
  c = z = pixel:
    z = ( fn1( z ) * ( |z| < |corte| ) ) + ( fn2( z ) * ( |z| >= |corte| ) )
    z = fn3( z * z ) + c
    |z| < bailout
}

Mac017 { 
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte = p2 + 1
  c = p3
  z = pixel:
    z = ( fn1( z ) * ( |z| < |corte| ) ) + ( fn2( z ) * ( |z| >= |corte| ) )
    z = fn3( z * z ) + c
    |z| < bailout
}

Mac018 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel:
    x = real(z)
    y = imag(z)
    z = fn1( x * x ) - fn2( 2 * x * y ) + c
    |z| < bailout
}

Mac019 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel:
    x = real(z)
    y = imag(z)
    z = fn1( x * x ) - fn2( 2 * x * y ) + c
    |z| < bailout
}

Mac020 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel:
    x = real(z)
    y = imag(z)
    z = fn3( fn1( x ) + flip( fn2( y ) ) ) + c
    |z| < bailout
}

Mac021 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel:
    x = real(z)
    y = imag(z)
    z = fn3( fn1( x ) + flip( fn2( y ) ) ) + c
    |z| < bailout
}

Mac022 { 
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte = p2 + 1
  c = p3
  z = pixel:
    x = real(z)
    y = imag(z)
    z = fn1(x) + fn2(y)
    z = z - fn3(x) * (|x| > |corte|)
    z = z - fn3(y) * (|y| > |corte|)
    z = z * z + c
    |z| < bailout
}

Mac023 { 
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte = p2 + 1
  c = z = pixel:
    x = real(z)
    y = imag(z)
    z = fn1(x) + fn2(y)
    z = z - fn3(x) * (|x| > |corte|)
    z = z - fn3(y) * (|y| > |corte|)
    z = z * z + c
    |z| < bailout
}

Mac024 { 
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte = p2 + 1
  c = p3
  z = pixel:
    z = fn1(z) * fn2(z) * Imag(z) / |z| + c
    |z| < bailout
}

Mac025 { 
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte = p2 + 1
  c = z = pixel:
    z = fn1(z) * fn2(z) * Imag(z) / |z| + c
    |z| < bailout
}

Mac026a { 
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte1 = p2
  corte2 = p3
  c = p2
  z = pixel:
    t1 = fn1(z) * (|z| < corte1)
    t2 = fn2(z) * (|z| >=  corte1) * (|z| < corte2)
    t3 = fn3(z) * (|z| >= corte2)
    z = fn4(t1 + t2 + t3) + c
    |z| < bailout
}

Mac027a { 
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte1 = p2
  corte2 = p3
  c = z = pixel:
    t1 = fn1(z) * (|z| < corte1)
    t2 = fn2(z) * (|z| >=  corte1) * (|z| < corte2)
    t3 = fn3(z) * (|z| >= corte2)
    z = fn4(t1 + t2 + t3) + c
    |z| < bailout
}

Mac026 { 
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte1 = real(p2)
  corte2 = imag(p2)
  c = p3
  z = pixel:
    t1 = fn1(z) * (|z| < corte1)
    t2 = fn2(z) * (|z| >=  corte1) * (|z| < corte2)
    t3 = fn3(z) * (|z| >= corte2)
    z = fn4(t1 + t2 + t3) + c
    |z| < bailout
}

Mac027 { 
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte1 = real(p2)
  corte2 = imag(p2)
  c = z = pixel:
    t1 = fn1(z) * (|z| < corte1)
    t2 = fn2(z) * (|z| >=  corte1) * (|z| < corte2)
    t3 = fn3(z) * (|z| >= corte2)
    z = fn4(t1 + t2 + t3) + c
    |z| < bailout
}

Mac034 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    z = fn2( z / cos(z) ),
    |z| < bailout
}

Mac035 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2 = z = fn1(pixel):
    z = fn2( z / cos(z) ),
    |z| < bailout
}

Mac040 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    z = fn2( fn3(z) / fn4(z) )
    |z| < bailout
}

Mac040a {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    z = fn2( fn3(z) / fn4(z) )
    z <= bailout
}

Mac041 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    z = fn2( fn3(z) / fn4(z) )
    |z| < bailout
}

Mac041a {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    z = fn2( fn3(z) / fn4(z) )
    z <= bailout
}

Mac042 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    z = fn2( fn3(z) * fn4(z) )
    |z| < bailout
}

Mac043 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    z = fn2( fn3(z) * fn4(z) )
    |z| < bailout
}

Mac044 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    z = fn2( fn3(z) + fn4(z) )
    |z| < bailout
}

Mac045 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    z = fn2( fn3(z) + fn4(z) )
    |z| < bailout
}

Mac046 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    z = fn2( fn3(z) - fn4(z) )
    |z| < bailout
}

Mac047 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    z = fn2( fn3(z) - fn4(z) )
    |z| < bailout
}

Mac048 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    neg = (Real(z) < 0) + (Imag(z) < 0)
    pos = (Real(z) > 0) + (Imag(z) > 0)
    z = fn4( neg * fn2(z) + pos * fn3(z) ) + c
    |z| < bailout
}

Mac049 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    neg = (Real(z) < 0) + (Imag(z) < 0)
    pos = (Real(z) > 0) + (Imag(z) > 0)
    z = fn4( neg * fn2(z) + pos * fn3(z) ) + c
    |z| < bailout
}

Mac050 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    neg = (Real(z) < 0) + (Imag(z) < 0)
    pos = (Real(z) > 0) + (Imag(z) > 0)
    z = fn4( neg * fn2(z) - pos * fn3(z) ) + c
    |z| < bailout
}

Mac051 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    neg = (Real(z) < 0) + (Imag(z) < 0)
    pos = (Real(z) > 0) + (Imag(z) > 0)
    z = fn4( neg * fn2(z) - pos * fn3(z) ) + c
    |z| < bailout
}

Mac052 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    neg = (Real(z) < 0) + (Imag(z) < 0)
    pos = (Real(z) > 0) + (Imag(z) > 0)
    z = fn4( neg * fn2(z) * pos * fn3(z) ) + c
    |z| < bailout
}

Mac053 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    neg = (Real(z) < 0) + (Imag(z) < 0)
    pos = (Real(z) > 0) + (Imag(z) > 0)
    z = fn4( neg * fn2(z) * pos * fn3(z) ) + c
    |z| < bailout
}

Mac054 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    neg = (Real(z) < 0) + (Imag(z) < 0)
    pos = (Real(z) > 0) + (Imag(z) > 0)
    z = fn4( neg * fn2(z) / pos * fn3(z) ) + c
    |z| < bailout
}

Mac055 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    neg = (Real(z) < 0) + (Imag(z) < 0)
    pos = (Real(z) > 0) + (Imag(z) > 0)
    z = fn4( neg * fn2(z) / pos * fn3(z) ) + c
    |z| < bailout
}

Mac056 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel):
    part1 = (real(z) > 0) * fn2(z)
    part2 = (imag(z) > 0) * fn3(z)
    z = fn4( part1 + part2 ) + c
    |z| < bailout
}

Mac057 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel):
    part1 = (real(z) > 0) * fn2(z)
    part2 = (imag(z) > 0) * fn3(z)
    z = fn4( part1 + part2 ) + c
    |z| < bailout
}

Mac058 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte = ( 1 * ( p3 <= 0 ) ) + ( real( p3 ) * ( 0 < p3 ))
  c = p2
  z = fn1(pixel):
    part1 = ( |z| > corte )
    part2 = ( |z| < corte )
    part3 = ( (|z| - corte) > 0.001 )
    z = fn2(z) * part1 + fn3(z) * part2 + part3
    z = fn4( z ) + c
    |z| < bailout
}

Mac059 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte = ( 1 * ( p3 <= 0 ) ) + ( real( p3 ) * ( 0 < p3 ))
  c = z = fn1(pixel):
    part1 = ( |z| > corte )
    part2 = ( |z| < corte )
    part3 = ( (|z| - corte) > 0.001 )
    z = fn2(z) * part1 + fn3(z) * part2 + part3
    z = fn4( z ) + c
    |z| < bailout
}

Mac060 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte = ( 1 * ( p3 <= 0 ) ) + ( real( p3 ) * ( 0 < p3 ))
  c = p2
  z = fn1(pixel):
    part1 = ( |z| > corte )
    part2 = ( |z| < corte )
    part3 = ( (|z| - corte) > 0.001 )
    z = fn2(z) * part1 + fn3(z) * part2 + part3
    z = fn4( z + c )
    |z| < bailout
}

Mac061 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte = ( 1 * ( p3 <= 0 ) ) + ( real( p3 ) * ( 0 < p3 ))
  c = z = fn1(pixel):
    part1 = ( |z| > corte )
    part2 = ( |z| < corte )
    part3 = ( (|z| - corte) > 0.001 )
    z = fn2(z) * part1 + fn3(z) * part2 + part3
    z = fn4( z + c )
    |z| < bailout
}

Mac062 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte = ( 1 * ( p3 <= 0 ) ) + ( real( p3 ) * ( 0 < p3 ))
  c = p2
  z = fn1(pixel):
    part1 = ( |z| > corte )
    part2 = ( |z| < corte )
    part3 = ( (|z| - corte) > 0.001 )
    z = fn2(z) * part1 + fn3(z) * part2 + part3
    z = fn4( z + c ) / c
    |z| < bailout
}

Mac063 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte = ( 1 * ( p3 <= 0 ) ) + ( real( p3 ) * ( 0 < p3 ))
  c = z = fn1(pixel):
    part1 = ( |z| > corte )
    part2 = ( |z| < corte )
    part3 = ( (|z| - corte) > 0.001 )
    z = fn2(z) * part1 + fn3(z) * part2 + part3
    z = fn4( z + c ) / c
    |z| < bailout
}

Mac064 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte = ( 1 * ( p3 <= 0 ) ) + ( real( p3 ) * ( 0 < p3 ))
  c = p2
  z = fn1(pixel):
    part1 = ( |z| > corte )
    part2 = ( |z| < corte )
    part3 = ( (|z| - corte) > 0.001 )
    z = fn2(z) * part1 + fn3(z) * part2 + part3
    z = fn4( z - c ) + c
    |z| < bailout
}

Mac065 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte = ( 1 * ( p3 <= 0 ) ) + ( real( p3 ) * ( 0 < p3 ))
  c = z = fn1(pixel):
    part1 = ( |z| > corte )
    part2 = ( |z| < corte )
    part3 = ( (|z| - corte) > 0.001 )
    z = fn2(z) * part1 + fn3(z) * part2 + part3
    z = fn4( z - c ) + c
    |z| < bailout
}

Mac066 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte = ( 1 * ( p3 <= 0 ) ) + ( real( p3 ) * ( 0 < p3 ))
  c = p2
  z = fn1(pixel):
    part1 = ( |z| > corte )
    part2 = ( |z| < corte )
    part3 = ( (|z| - corte) > 0.001 )
    z = fn2(z) * part1 + fn3(z) * part2 + part3
    z = fn4( (z + c)/c ) + c
    |z| < bailout
}

Mac067 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte = ( 1 * ( p3 <= 0 ) ) + ( real( p3 ) * ( 0 < p3 ))
  c = z = fn1(pixel):
    part1 = ( |z| > corte )
    part2 = ( |z| < corte )
    part3 = ( (|z| - corte) > 0.001 )
    z = fn2(z) * part1 + fn3(z) * part2 + part3
    z = fn4( (z + c)/c ) + c
    |z| < bailout
}

Mac068 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte = ( 1 * ( p3 <= 0 ) ) + ( real( p3 ) * ( 0 < p3 ))
  c = p2
  z = fn1(pixel):
    part1 = ( |z| > corte )
    part2 = ( |z| < corte )
    part3 = ( (|z| - corte) > 0.001 )
    z = fn2(z) * part1 + fn3(z) * part2 + part3
    z = fn4(z) + fn4(c)
    |z| < bailout
}

Mac069 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte = ( 1 * ( p3 <= 0 ) ) + ( real( p3 ) * ( 0 < p3 ))
  c = z = fn1(pixel):
    part1 = ( |z| > corte )
    part2 = ( |z| < corte )
    part3 = ( (|z| - corte) > 0.001 )
    z = fn2(z) * part1 + fn3(z) * part2 + part3
    z = fn4(z) + fn4(c)
    |z| < bailout
}

Mac070 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte = ( 1 * ( p3 <= 0 ) ) + ( real( p3 ) * ( 0 < p3 ))
  c = p2
  z = fn1(pixel):
    part1 = ( |z| > corte )
    part2 = ( |z| < corte )
    part3 = ( (|z| - corte) > 0.001 )
    z = fn2(z) * part1 + fn3(z) * part2 + part3
    z = fn4(z) + z + c
    |z| < bailout
}

Mac071 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  corte = ( 1 * ( p3 <= 0 ) ) + ( real( p3 ) * ( 0 < p3 ))
  c = z = fn1(pixel):
    part1 = ( |z| > corte )
    part2 = ( |z| < corte )
    part3 = ( (|z| - corte) > 0.001 )
    z = fn2(z) * part1 + fn3(z) * part2 + part3
    z = fn4(z) + z + c
    |z| < bailout
}

Mac072 {
  c = z = pixel:
    z = p1 * fn1(z) + p2 * fn2(z) + fn3(z) + fn4(z) + c
    |z| < 4
}

Mac073 {
  c = p3
  z = pixel:
    z = p1 * fn1(z) + p2 * fn2(z) + fn3(z) + fn4(z) + c
    |z| < 4
}

Mac074 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = p3
  t2 = 1 - p3
  oldz = 0
  c = p2
  z = fn1(pixel):
    temp = z
    z = fn2(z) * t1 + fn3(oldz) * t2 + c
    oldz = temp
    |z| < bailout
}

Mac075 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = p3
  t2 = 1 - p3
  oldz = 0
  c = z = fn1(pixel):
    temp = z
    z = fn2(z) * t1 + fn3(oldz) * t2 + c
    oldz = temp
    |z| < bailout
}

Mac076 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = p3
  t2 = 1 - p3
  oldz = 0
  c = p2
  z = fn1(pixel):
    temp = z
    z = fn2(z) * t1 - fn3(oldz) * t2 + c
    oldz = temp
    |z| < bailout
}

Mac077 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = p3
  t2 = 1 - p3
  oldz = 0
  c = z = fn1(pixel):
    temp = z
    z = fn2(z) * t1 - fn3(oldz) * t2 + c
    oldz = temp
    |z| < bailout
}

Mac078 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = p3
  t2 = 1 - p3
  oldz = 0
  c = p2
  z = fn1(pixel):
    temp = z
    z = fn2(z) * t1 * fn3(oldz) * t2 + c
    oldz = temp
    |z| < bailout
}

Mac079 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = p3
  t2 = 1 - p3
  oldz = 0
  c = z = fn1(pixel):
    temp = z
    z = fn2(z) * t1 * fn3(oldz) * t2 + c
    oldz = temp
    |z| < bailout
}

Mac080 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = p3
  t2 = 1 - p3
  oldz = 0
  c = p2
  z = fn1(pixel):
    temp = z
    z = fn2(z) * t1 / fn3(oldz) * t2 + c
    oldz = temp
    |z| < bailout
}

Mac081 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = p3
  t2 = 1 - p3
  oldz = 0
  c = z = fn1(pixel):
    temp = z
    z = fn2(z) * t1 / fn3(oldz) * t2 + c
    oldz = temp
    |z| < bailout
}

Mac082 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = p3
  t2 = 1 - p3
  t3 = t1 - t2
  oldz = olddz = 0
  c = p2
  z = pixel:
    temp = z
    tempp = oldz
    z = t1 * fn1(z) + t2 * fn2(oldz) + t3 * fn3(olddz) + c
    olddz = tempp
    oldz = temp
    |z| < bailout
}

Mac083 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = p3
  t2 = 1 - p3
  t3 = t1 - t2
  oldz = olddz = 0
  c = z = pixel:
    temp = z
    tempp = oldz
    z = t1 * fn1(z) + t2 * fn2(oldz) + t3 * fn3(olddz) + c
    olddz = tempp
    oldz = temp
    |z| < bailout
}

Mac084 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = p3
  t2 = 1 - p3
  t3 = t1 - t2
  oldz = olddz = 0
  c = p2
  z = pixel:
    temp = z
    tempp = oldz
    z = t1 * fn1(z) + t2 * fn2(oldz) * t3 * fn3(olddz) + c
    olddz = tempp
    oldz = temp
    |z| < bailout
}

Mac085 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = p3
  t2 = 1 - p3
  t3 = t1 - t2
  oldz = olddz = 0
  c = z = pixel:
    temp = z
    tempp = oldz
    z = t1 * fn1(z) + t2 * fn2(oldz) * t3 * fn3(olddz) + c
    olddz = tempp
    oldz = temp
    |z| < bailout
}

Mac086 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = p3
  t2 = 1 - p3
  t3 = t1 - t2
  oldz = olddz = 0
  c = p2
  z = pixel:
    temp = z
    tempp = oldz
    z = t1 * fn1(z) + t2 * fn2(oldz) - t3 * fn3(olddz) + c
    olddz = tempp
    oldz = temp
    |z| < bailout
}

Mac087 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = p3
  t2 = 1 - p3
  t3 = t1 - t2
  oldz = olddz = 0
  c = z = pixel:
    temp = z
    tempp = oldz
    z = t1 * fn1(z) + t2 * fn2(oldz) - t3 * fn3(olddz) + c
    olddz = tempp
    oldz = temp
    |z| < bailout
}

Mac088 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = p3
  t2 = 1 - p3
  t3 = t1 - t2
  oldz = olddz = 0
  c = p2
  z = pixel:
    temp = z
    tempp = oldz
    z = t1 * fn1(z) + t2 * fn2(oldz) / t3 * fn3(olddz) + c
    olddz = tempp
    oldz = temp
    |z| < bailout
}

Mac089 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = p3
  t2 = 1 - p3
  t3 = t1 - t2
  oldz = olddz = 0
  c = z = pixel:
    temp = z
    tempp = oldz
    z = t1 * fn1(z) + t2 * fn2(oldz) / t3 * fn3(olddz) + c
    olddz = tempp
    oldz = temp
    |z| < bailout
}

Mac090 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = p3
  t2 = 1 - p3
  t3 = t1 - t2
  oldz = olddz = 0
  c = p2
  z = pixel:
    temp = z
    tempp = oldz
    z = t1 * fn1(z) * t2 * fn2(oldz) * t3 + fn3(olddz) + c
    olddz = tempp
    oldz = temp
    |z| < bailout
}

Mac091 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = p3
  t2 = 1 - p3
  t3 = t1 - t2
  oldz = olddz = 0
  c = z = pixel:
    temp = z
    tempp = oldz
    z = t1 * fn1(z) * t2 * fn2(oldz) * t3 + fn3(olddz) + c
    olddz = tempp
    oldz = temp
    |z| < bailout
}

Mac092 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = p3
  t2 = 1 - p3
  t3 = t1 - t2
  oldz = olddz = 0
  c = p2
  z = pixel:
    temp = z
    tempp = oldz
    z = t1 * fn1(z) * t2 * fn2(oldz) - t3 * fn3(olddz) + c
    olddz = tempp
    oldz = temp
    |z| < bailout
}

Mac093 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = p3
  t2 = 1 - p3
  t3 = t1 - t2
  oldz = olddz = 0
  c = z = pixel:
    temp = z
    tempp = oldz
    z = t1 * fn1(z) * t2 * fn2(oldz) - t3 * fn3(olddz) + c
    olddz = tempp
    oldz = temp
    |z| < bailout
}

Mac094 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = p3
  t2 = 1 - p3
  t3 = t1 - t2
  oldz = olddz = 0
  c = p2
  z = pixel:
    temp = z
    tempp = oldz
    z = t1 * fn1(z) * t2 * fn2(oldz) * t3 * fn3(olddz) + c
    olddz = tempp
    oldz = temp
    |z| < bailout
}

Mac095 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = p3
  t2 = 1 - p3
  t3 = t1 - t2
  oldz = olddz = 0
  c = z = pixel:
    temp = z
    tempp = oldz
    z = t1 * fn1(z) * t2 * fn2(oldz) * t3 * fn3(olddz) + c
    olddz = tempp
    oldz = temp
    |z| < bailout
}

Mac096 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = p3
  t2 = 1 - p3
  t3 = t1 - t2
  oldz = olddz = 0
  c = p2
  z = pixel:
    temp = z
    tempp = oldz
    z = t1 * fn1(z) * t2 * fn2(oldz) / t3 * fn3(olddz) + c
    olddz = tempp
    oldz = temp
    |z| < bailout
}

Mac097 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  t1 = p3
  t2 = 1 - p3
  t3 = t1 - t2
  oldz = olddz = 0
  c = z = pixel:
    temp = z
    tempp = oldz
    z = t1 * fn1(z) * t2 * fn2(oldz) / t3 * fn3(olddz) + c
    olddz = tempp
    oldz = temp
    |z| < bailout
}

Mac098 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel
  count = 0:
    x = fn1(z) * ( count <= p3 )
    y = fn2(z) * ( count > p3 )
    z = x + y + c
    count = count + 1
    |z| < bailout
}

Mac099 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel
  count = 0:
    x = fn1(z) * ( count <= p3 )
    y = fn2(z) * ( count > p3 )
    z = x + y + c
    count = count + 1
    |z| < bailout
}