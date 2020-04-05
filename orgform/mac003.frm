comment = { ­Mis fractales!.}

Mac301 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel*pixel)/c :
    z = fn2(z - c + p3) * fn3(z + c - p3)
    z = fn4(z) + c
    Real(z) < bailout
}

Mac302 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel*pixel)/c :
    z = fn2(z - c + p3) * fn3(z + c - p3)
    z = fn4(z) + c
    Real(z) < bailout
}

Mac303 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(c*c)/pixel :
    z = fn2(z - c + p3) * fn3(z + c - p3)
    z = fn4(z) + c
    Real(z) < bailout
}

Mac304 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(c*c)/pixel :
    z = fn2(z - c + p3) * fn3(z + c - p3)
    z = fn4(z) + c
    Real(z) < bailout
}

Mac305 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel+c) :
    z = fn2(z*c + p3) * fn3(z/c - p3)
    z = fn4(z) + c
    Real(z) < bailout
}

Mac306 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel+c) :
    z = fn2(z*c + p3) * fn3(z/c - p3)
    z = fn4(z) + c
    Real(z) < bailout
}

Mac307 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = fn1(pixel+c) :
    z = fn2(z*c + p3) + fn3(z/c - p3)
    z = fn4(z) + c
    Real(z) < bailout
}

Mac308 {
  bailout = ( 16 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1(pixel+c) :
    z = fn2(z*c + p3) + fn3(z/c - p3)
    z = fn4(z) + c
    Real(z) < bailout
}

comment = { OldManoWar }
Mac309 {
  z0 = 0,
  z1 = 0,
  test = p1 + 3,
  c = pixel :
    z = fn1(z1*z1) + fn2(z0) + fn3(c)
    z0 = z1
    z1 = z,
    |z| < test
}

Mac310 {
  test = Real(p1) + 4,
  z0 = p2,
  c = pixel,
  z = 0 :
    z = fn1(z0) * fn2(z) + fn3(c)
    z0 = (z0 + p2)/z0,
    |z| < test
}


Mac311 {
  test = Real(p1) + 4,
  z0 = p2,
  c = pixel,
  z = 0 :
    z = fn1(z) * fn2(z0) + fn3(c)
    z0 = z0 + p2/z0,
    |z| < test
}

Mac312 {
  test = Real(p1) + 4,
  z0 = p2,
  c = pixel,
  z = 0 :
    z = fn1(z/z0) + fn3(c)
    z0 = z0 - p2/z0,
    |z| < test
}

Mac313 {
  test = Real(p1) + 4,
  z0 = p2,
  c = pixel,
  z = 0 :
    z = fn1(z)^2 + fn2(z0)^2 + fn3(c)
    z0 = z0 + p2,
    |z| < test
}

Orbit1 {
  Valst = Real(p1) + 100
  y = 0
  x = 0
  t = 0 :
    t = t + 1
    y = y + fn1(x)
    x = x - fn2(y)
    z = x + flip(y),
    Real(t) < Valst
}    

Mac200 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel
  count = 0:
    x = fn1(z) * ( count <= p3 )
    y = fn2(z) * ( count > p3 )
    z = (x + y)^2 + c
    count = count + 1
    |z| < bailout
}

Mac201 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel
  count = 0:
    x = fn1(z) * ( count <= p3 )
    y = fn2(z) * ( count > p3 )
    z = (x + y)^2 + c
    count = count + 1
    |z| < bailout
}

Mac202 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel
  count = 0:
    x = fn1(z) * ( count <= p3 )
    y = fn2(z) * ( count > p3 )
    z = fn3(x) + fn4(y) + c
    count = count + 1
    |z| < bailout
}

Mac203 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel
  count = 0:
    x = fn1(z) * ( count <= p3 )
    y = fn2(z) * ( count > p3 )
    z = fn3(x) + fn4(y) + c
    count = count + 1
    |z| < bailout
}

Mac204 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel
  count = 0:
    x = fn1(z) * ( count <= p3 )
    y = fn2(z) * ( count > p3 )
    z = c/(x + y)^2
    count = count + 1
    |z| < bailout
}

Mac205 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel
  count = 0:
    x = fn1(z) * ( count <= p3 )
    y = fn2(z) * ( count > p3 )
    z = c/(x + y)^2
    count = count + 1
    |z| < bailout
}

Mac206 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel
  count = 0:
    x = fn1(z) * ( count <= p3 )
    y = fn2(z) * ( count > p3 )
    z = (fn3(x) + fn4(y))^2 / c
    count = count + 1
    |z| < bailout
}

Mac207 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel
  count = 0:
    x = fn1(z) * ( count <= p3 )
    y = fn2(z) * ( count > p3 )
    z = (fn3(x) + fn4(y))^2 / c
    count = count + 1
    |z| < bailout
}

Mac208 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel:
    z = fn4( fn1(z) + fn2(x) + fn3(c) )
    c = c + p3
    |z| < bailout
}

Mac209 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel:
    z = fn4( fn1(z) + fn2(x) + fn3(c) )
    c = c + p3
    |z| < bailout
}

Mac210 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel:
    z = fn4( fn1(z) + fn2(x) - fn3(c) )
    c = c + p3
    |z| < bailout
}

Mac211 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel:
    z = fn4( fn1(z) + fn2(x) - fn3(c) )
    c = c + p3
    |z| < bailout
}

Mac212 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel:
    z = fn4( fn1(z) + fn2(x) * fn3(c) )
    c = c + p3
    |z| < bailout
}

Mac213 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel:
    z = fn4( fn1(z) + fn2(x) * fn3(c) )
    c = c + p3
    |z| < bailout
}

Mac214 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel:
    z = fn4( fn1(z) + fn2(x) / fn3(c) )
    c = c + p3
    |z| < bailout
}

Mac215 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel:
    z = fn4( fn1(z) + fn2(x) + fn3(c) )
    c = c + p3
    |z| < bailout
}
Mac216 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel:
    z = fn4( fn1(z) * fn2(x) + fn3(c) )
    c = c + p3                
    |z| < bailout
}

Mac217 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel:
    z = fn4( fn1(z) * fn2(x) + fn3(c) )
    c = c + p3
    |z| < bailout
}

Mac218 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel:
    z = fn4( fn1(z) * fn2(x) / fn3(c) )
    c = c + p3
    |z| < bailout
}

Mac219 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel:
    z = fn4( fn1(z) * fn2(x) / fn3(c) )
    c = c + p3
    |z| < bailout
}

Mac220 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel:
    z = fn4( fn1(z) - fn2(x) + fn3(c) )
    c = c + p3
    |z| < bailout
}

Mac221 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel:
    z = fn4( fn1(z) - fn2(x) + fn3(c) )
    c = c + p3
    |z| < bailout
}

Mac222 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel:
    z = fn4( fn1(z) - fn2(x) - fn3(c) )
    c = c + p3
    |z| < bailout
}

Mac223 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel:
    z = fn4( fn1(z) - fn2(x) - fn3(c) )
    c = c + p3
    |z| < bailout
}

Mac224 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel:
    z = fn4( fn1(z) - fn2(x) * fn3(c) )
    c = c + p3
    |z| < bailout
}

Mac225 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel:
    z = fn4( fn1(z) - fn2(x) * fn3(c) )
    c = c + p3
    |z| < bailout
}

Mac226 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel:
    z = fn4( fn1(z) - fn2(x) / fn3(c) )
    c = c + p3
    |z| < bailout
}

Mac227 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel:
    z = fn4( fn1(z) - fn2(x) / fn3(c) )
    c = c + p3
    |z| < bailout
}

Mac228 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel:
    z = fn4( fn1(z) * fn2(x) - fn3(c) )
    c = c + p3
    |z| < bailout
}

Mac229 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel:
    z = fn4( fn1(z) * fn2(x) - fn3(c) )
    c = c + p3
    |z| < bailout
}

Mac230 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel:
    z = fn4( fn1(z) * fn2(x) * fn3(c) )
    c = c + p3
    |z| < bailout
}

Mac231 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel:
    z = fn4( fn1(z) * fn2(x) * fn3(c) )
    c = c + p3
    |z| < bailout
}

Mac232 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel:
    z = fn4( fn1(z) / fn2(x) / fn3(c) )
    c = c + p3
    |z| < bailout
}

Mac233 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel:
    z = fn4( fn1(z) / fn2(x) / fn3(c) )
    c = c + p3
    |z| < bailout
}

Mac234 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel:
    z = fn4( fn1(z) / fn2(x) * fn3(c) )
    c = c + p3
    |z| < bailout
}

Mac235 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel:
    z = fn4( fn1(z) / fn2(x) * fn3(c) )
    c = c + p3
    |z| < bailout
}

Mac236 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel:
    z = fn4( fn1(z) / fn2(x) + fn3(c) )
    c = c + p3
    |z| < bailout
}

Mac237 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel:
    z = fn4( fn1(z) / fn2(x) + fn3(c) )
    c = c + p3
    |z| < bailout
}

Mac238 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel:
    z = fn4( fn1(z) / fn2(x) - fn3(c) )
    c = c + p3
    |z| < bailout
}

Mac239 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel:
    z = fn4( fn1(z) / fn2(x) - fn3(c) )
    c = c + p3
    |z| < bailout
}

Mac240 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel
  count = 0:
    count = count + 1
    z = z * z + count * c
    |z| < bailout
}

Mac241 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel
  count = 0:
    count = count + 1
    z = z * z + count * c
    |z| < bailout
}

Mac242 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel
  count = 0:
    count = count + 1
    z = fn1(z * z) + count * c
    |z| < bailout
}

Mac243 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel
  count = 0:
    count = count + 1
    z = fn1(z * z) + count * c
    |z| < bailout
}

Mac244 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel
  count = 0:
    count = count + p3
    z = fn1(z * z) + count * c
    |z| < bailout
}

Mac245 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel
  count = 0:
    count = count + p3
    z = fn1(z * z) + count * c
    |z| < bailout
}

Mac246 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel
  count = 0:
    count = count + p3 / c
    z = fn1(z * z) + count * c
    |z| < bailout
}

Mac247 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel
  count = 0:
    count = count + p3 / c
    z = fn1(z * z) + count * c
    |z| < bailout
}

Mac248 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel
  count = 0:
    count = count + 1
    z = z * z + count * ( pixel + c )
    |z| < bailout
}

Mac249 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel
  count = 0:
    count = count + 1
    z = z * z + count * ( pixel + c )
    |z| < bailout
}

Mac250 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel
  count = 0:
    count = count + 1
    z = fn1(z * z) + count * ( pixel + c )
    |z| < bailout
}

Mac251 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel
  count = 0:
    count = count + 1
    z = fn1(z * z) + count * ( pixel + c )
    |z| < bailout
}

Mac252 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel
  count = 0:
    count = count + p3
    z = fn1(z * z) + count * ( pixel + c )
    |z| < bailout
}

Mac253 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel
  count = 0:
    count = count + p3
    z = fn1(z * z) + count * ( pixel + c )
    |z| < bailout
}

Mac254 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel
  count = 0:
    count = count + p3 / c
    z = fn1(z * z) + count * ( pixel + c )
    |z| < bailout
}

Mac255 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel
  count = 0:
    count = count + p3 / c
    z = fn1(z * z) + count * ( pixel + c )
    |z| < bailout
}

Mac256 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p2
  z = pixel
  count = 0:
    count = count + 0.1
    z = fn1(z * count) + c 
    |z| < bailout
}

Mac257 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel
  count = 0:
    count = count + 0.1
    z = fn1(z * count) + c 
    |z| < bailout
}

Mac258 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = p3
  z = pixel
  count = 0:
    count = count + p2
    z = fn1(z * z) + fn2(count * count) + c 
    |z| < bailout
}

Mac259 {
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = pixel
  count = 0:
    count = count + p2
    z = fn1(z * z) + fn2(count * count) + c 
    |z| < bailout
}

Macm001 { ;mutation of Carr-786
  bailout = ( 10 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  z = fn1( fn2( fn2( 1 / pixel - p2 ) ) )
  c = fn3( fn3( 1 / pixel - p3 ) ):
  z = 1 / z ^ z * z + fn4( c * c )
  |z| <= bailout
}

Macm002 { ;mutation of Carr-775
  bailout = ( 10 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  c = z = fn1( fn2( 1 / pixel - p2 ) ):
  z = fn3(z) + c - p2
  |z| <= bailout
}

Macm003 { ;mutation of SinEgg
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  z = p2
  x = |z|:
  ( 1 < x ) * ( z = fn1(z) + pixel )
  z = fn2(z) + pixel
  x = |z|
  x <= bailout
}

Macm004 { ;mutation of SinEggC
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  z = p2
  x = |z|:
  ( z = fn1(z) + pixel ) * ( 1 < x ) + ( z = z ) * ( x <= 1 )
  z = fn2(z) + pixel
  x = |z|
  x <= bailout
}

Macm005 { ;mutation of RCL_4_M
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  z = pixel:
  z = fn1( fn2( z ) ) + fn3( z ) + fn4( pixel )
  |z| <= bailout
}

Macm006 { ;mutation of RCL_4_J
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  z = pixel
  c = p2:
  z = fn1( fn2( z ) ) + fn3( z ) + fn4( pixel )
  |z| <= bailout
}

Macm007 { ;mutation of Carr-142
  bailout = ( 10 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  z = c = 1 / pixel:
  z = fn1( z ) + c
  z = fn2( z ) + c
  |z| <= bailout }

Macm008 { ;mutation
  bailout = ( 2.124 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  z = c = 1 / ( pixel ^p2 ):
  z = fn1( z ^p2 ) + fn2( c )
  abs(z) <= bailout }

Macm009 { ;mutation of Carr-746/47
  bailout = ( 2.124 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  z = c = 1 / pixel:
  z = fn1( z ) + fn2( c )
  fn3(z) <= bailout }

Macm010 { ;mutation of Carr-627
  bailout = ( 10 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  point = ( (-2.6064,0.3124) * ( p2 <= 0 ) ) + ( p2 * ( 0 < p2 ) )
  cut = ( 0.324 * ( p3 <= 0 ) ) + ( p3 * ( 0 < p3 ) )
  des = ( 0.024 * ( p4 <= 0 ) ) + ( p4 * ( 0 < p4 ) )
  z = fn1( 1 / pixel - cut )
  c = fn2( fn1( point ) ):
  z = fn3( z ) + ( c - des )
  |z| <= bailout }

Macm011 { ;mutation of Carr-626
  bailout = ( 10 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  point = ( (-2.6064,0.3124) * ( p2 <= 0 ) ) + ( p2 * ( 0 < p2 ) )
  cut = ( 0.324 * ( p3 <= 0 ) ) + ( p3 * ( 0 < p3 ) )
  des = ( 0.024 * ( p4 <= 0 ) ) + ( p4 * ( 0 < p4 ) )
  z = fn1( 1 / pixel - cut )
  c = fn2( fn3( point ) ):
  z = fn4( z ) + c
  |z| <= bailout }

Macm012 { ;mutation of Carr-628
  bailout = ( 10 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  point = ( (-2.6064,0.3124) * ( p2 <= 0 ) ) + ( p2 * ( 0 < p2 ) )
  cut = ( 0.324 * ( p3 <= 0 ) ) + ( p3 * ( 0 < p3 ) )
  des = ( 0.024 * ( p4 <= 0 ) ) + ( p4 * ( 0 < p4 ) )
  z = fn1( fn2( 1 / pixel - cut ) )
  c = fn2( fn1( point ) ):
  z = fn3( z ) + ( c - des )
  |z| <= bailout }

Macm013 { ;mutation of Carr-150/149
  bailout = ( 10 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  z = c = 1 / pixel:
  z = fn1( fn2( z * z * z )) + c
  z = fn3( fn4( z * z * z )) + c
  |z| <= bailout }

Macm014 { ;mutation of Carr-162/3
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  z = c = fn1( 1 / pixel ):
  z = fn2( z ) + c
  z = fn3( z ) + c
  |z| <= bailout }

Macm015 { ;mutation of Carr-162/3
  bailout = ( 4 * ( p1 <= 0 ) ) + ( p1 * ( 0 < p1 ) )
  z = c = fn1( 1 / pixel ):
  z = fn3( fn2( z * z ) + c ) + c
  |z| <= bailout }
