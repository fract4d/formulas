

G-1-test002 {; Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = pixel, x = real(z), y = imag(z) 
  x1 = x - p2*fn1(y+p3*fn2(y)) 
  coracao=x1+flip(y1)
  y1 = y - p2*fn1(x+p3*fn2(x))
  z1 = c1 = 1.5*z, z2 = c2 = fn3(coracao)
  l1 = real(p1), l2 = imag(p1) 
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2) 
  z = z*(1-(t1||t2)) + z1*t1 + z2*t2 
  c = c*(1-(t1||t2)) + c1*t1 + c2*t2 
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: bej011.frm
}


G-1-test005 {; Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = pixel, x = real(z), y = imag(z)
  x1 = x - p2*fn1(y*y+p3*fn2(y)), coracao=x1+flip(y1)
  y1 = y - p2*fn1(x*x+p3*fn2(x))
  z1 = c1 = 1.5*z, z2 = c2 = fn3(coracao)
  l1 = real(p1), l2 = imag(p1) 
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2) 
  z = z*(1-(t1||t2)) + z1*t1 + z2*t2 
  c = c*(1-(t1||t2)) + c1*t1 + c2*t2 
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: bej011.frm
}


G-1-test006 {; Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = pixel, x = real(z), y = imag(z) 
  x1 = x - p2*fn1(y*y+p3*fn2(y)), coracao=x1+flip(y1)
  y1 = y - p2*fn1(x*x+p3*fn2(x))
  z1 = c1 = 1.5*z, z2 = c2 = fn3((coracao)*pixel)
  l1 = real(p1), l2 = imag(p1) 
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2) 
  z = z*(1-(t1||t2)) + z1*t1 + z2*t2 
  c = c*(1-(t1||t2)) + c1*t1 + c2*t2 
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: bej011.frm
}


G-1-test007 {; Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = pixel, x = real(z), y = imag(z)
  x1 = x - p2*fn1(y*y+p3*fn2(y)), coracao=x1+flip(y1)
  y1 = y - p2*fn1(x*x+p3*fn2(x))
  z1 = c1 = 1.5*z, z2 = c2 = fn3((coracao)/pixel*pixel)
  l1 = real(p1), l2 = imag(p1) 
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2) 
  z = z*(1-(t1||t2)) + z1*t1 + z2*t2 
  c = c*(1-(t1||t2)) + c1*t1 + c2*t2 
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: bej011.frm
}


G-1-test017 {; Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
   ; Edited for Fractint v20 by G. Martin
  c = z = pixel, x = real(z), y = imag(z)
  x1 = x - p2*fn1(y*y+p3*fn2(y)), coracao=x1+flip(y1)
  y1 = y - p2*fn1(x*x+p3*fn2(x))
  z1 = c1 = atan(fn3((coracao)*pixel))
  l1 = real(p1), l2 = imag(p1) 
  bailout = 16, iter = 0 :
  t1 = (iter==l1) 
  z = z*(1-(t1)) + z1*t1 
  c = c*(1-(t1)) + c1*t1
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: bej011.frm
}


G-3-03-M  { ; Sylvie Gallet [101324,3444], 1996
            ; Modified Gallet-3-03 formula
  z = pixel :
  x = real(z), y = imag(z)
  x1 = x - p1 * fn1(y*y + round(p2*fn2(y)))
  y1 = y - p1 * fn1(x*x + round(p2*fn2(x)))
  z = x1 + flip(y1)
  |z| <= 4
  ;SOURCE: fractint.frm
}


g1 {
  z=pixel, t=fn1(z/1-z/p1)*(1-z+p2):
  z=z-fn2(p3/z)+p3*(z)*(1-t)/fn3(t)
  |z|>=4
  ;SOURCE: new.frm
}


g_offset {; modification of Kerry Mitchell's offset_rx=ry_jul
    ;
    ; "2 offset circles" coloring method for Julia sets
    ; p1 = c = Julia parameter
    ; p2 = approximate circle center
    ; real(p3) = (both) circle radius
    ; imag(p3) = center offsets--added to p2 for
    ;   centerx, subtracted from p2 for centery
    ; bailout hardcoded to 10^12
    ; use "decomp=256" coloring
    ;
  zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
  cenx=p2*(1+imag(p3)), radx=real(p3), rad2x=radx*radx
  ceny=p2*(1-imag(p3)), rad2y=rad2x:
  iter=iter+1, w=fn1(zc)
  zc=fn3(1/fn2(w*w))
  tempx=|zc-cenx|-rad2x
  tempy=|zc-ceny|-rad2y
  temp=tempx+flip(tempy), r=|temp|
  IF (r<rmin)
    rmin=r, z=temp
  ENDIF
  IF ((|zc|>bailout)||(iter==maxit))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


Gallet-10-01 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Oct 1997
  z1 = c = pixel, mz1 = cabs(fn2(z1)), k = real(p1)*mz1
  bailout = real(p2), z = imag(p1) :
  z1 = sqr(sqr(z1) + c) + c
  z1 = fn1(real(z1)) + flip(imag(z1)), mz1 = cabs(z1)
  IF (mz1 <= k)
    z1 = z1 + p3, mz1 = cabs(z1)
  ENDIF
  IF (mz1 < imag(p1))
    z = z1^imag(p2)
  ENDIF
  mz1 <= bailout
  ;SOURCE: gallet10.frm
}


Gallet-10-02 {; Modified Paul W. Carlson formula ( Petals_Mset)
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = radius of the circles
    ;   p2       = circle offset factor
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
  w = 0
  c = pixel
  r = real(p1), bailout = imag(p1)
  r2 = r * r
  ro = r + r * p2
  f = 1 - (2 + p2) * p2
  k = r * (p2 + sqrt(f))    ;abs val of petal center (k,k)
  k1 = k*(1,1), k2 = conj(k1)
  plsqd = 2 * r2 * f        ;petal length squared
  z = 0
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  range_num = 0
  iter = 0:
    ;
  w = 1 / (w*w + c)
    ;****************************************************
    ; Determine which pair of overlapping circles the
    ; orbit point falls in, if any.
    ;****************************************************
  c1 = (|w - ro| < r2)
  c2 = (|w + flip(ro)| < r2)
  c3 = (|w + ro| < r2)
  c4 = (|w - flip(ro)| < r2)
  IF (c1 && c4)
    d = |w-k1|
  ELSEIF (c1 && c2)
    d = |w-k2|
  ELSEIF (c2 && c3)
    d = |w+k1|
  ELSEIF (c3 && c4)
    d = |w+k2|
  ELSE
    d = 0
  ENDIF
    ;
  IF (d > 0)
    ;************************************************
    ; Set z equal to the index into the colormap.
    ;************************************************
    index = colors_in_range * d / plsqd
    z = index + range_num * colors_in_range + 1
  ENDIF
    ;
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  d == 0 && |w| < bailout
  ;SOURCE: 98msg.frm
}


Gallet-10-03 {; Modified Paul W. Carlson formula ( Petals_Mset)
              ; Sylvie Gallet, sylvie_gallet@compuserve.com, 1998
    ;
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = radius of the circles
    ;   imag(p1) = b, try 0.563 or 0.56667
    ;   p2       = circle offset factor
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
  w = x = y  = pixel
  r = real(p1), b = imag(p1)
  r2 = r * r
  ro = r + r * p2
  f = 1 - (2 + p2) * p2
  k = r * (p2 + sqrt(f))    ; abs val of petal center (k,k)
  k1 = k*(1,1), k2 = conj(k1)
  plsqd = 2 * r2 * f        ; petal length squared
  z = 0
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  range_num = 0
  iter = 0:
    ;
  w = w*w - 0.5*w + b, x = w*w - 0.5*y + b, y = w, w = x
    ;****************************************************
    ; Determine which pair of overlapping circles the
    ; orbit point falls in, if any.
    ;****************************************************
  c1 = (|w - ro| < r2)
  c2 = (|w + flip(ro)| < r2)
  c3 = (|w + ro| < r2)
  c4 = (|w - flip(ro)| < r2)
  IF (c1 && c4)
    d = |w-k1|
  ELSEIF (c1 && c2)
    d = |w-k2|
  ELSEIF (c2 && c3)
    d = |w+k1|
  ELSEIF (c3 && c4)
    d = |w+k2|
  ELSE
    d = 0
  ENDIF
    ;
  IF (d > 0)
    ;************************************************
    ; Set z equal to the index into the colormap.
    ;************************************************
    index = colors_in_range * d / plsqd
    z = index + range_num * colors_in_range + 1
  ENDIF
    ;
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  d == 0 && |w| < 16
  ;SOURCE: gallet10.frm
}


Gallet-10-04 {; Sylvie Gallet, sylvie_gallet@compuserve.com, 1998
  ; Yet another formula based on Earl Hinrich's "Invasion" algorithm
  ;
  r = real(p1), t = imag(p1), r_t = r - t, index = z = iter = 0
  w = c = pixel, pw = 0, dw = 0.1, mw = p3
  :
  w = w*w + c
  w = w*w + c, w = fn1(real(w)) + flip(imag(w))
  ww = w, w = w*w + c, w0 = w
  w = w - pw, d = |w|
  w = ww - dw, w = w*w + c
  w = w - pw, dd = |w|
  IF (d < dd)
    w = ww + dw, w = w*w + c
    w = w + pw, dd = |w|
    IF (d < dd)
      w0 = w0 + mw
    ENDIF
  ENDIF
  w = w0, m = cabs(w)
  IF (abs(m-r) < t)
    index = 1 + 127.5*(m - r_t)/t
  ENDIF
  iter = iter + 1
  z = index - iter
  m <= 10
  ;SOURCE: gallet10.frm
}


Gallet-10-05 {; Modified Paul W. Carlson formula
              ; Sylvie Gallet, sylvie_gallet@compuserve.com, 1998
    ;
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = coordinates of the Julia set
    ;   real(p2) = radius of the circles - this controls
    ;              the size of the petals
    ;   imag(p2)   Not Used
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
  w = pixel
  c = p1
  z = 0
  r = real(p2)
  r2 = r * r
  k = 0.35355339 * r    ; Don't mess with this constant
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  range_num = 0
  iter = 0:
    ;
  w = c*fn1(w)
    ;
  wr = real(w), wi = imag(w)
  c1 = (((wr-r) * (wr-r) + wi * wi) < r2)
  c2 = ((wr * wr + (wi+r) * (wi+r)) < r2)
  c3 = (((wr+r) * (wr+r) + wi * wi) < r2)
  c4 = ((wr * wr + (wi-r) * (wi-r)) < r2)
  IF (c1 && c4)
    d = (wr-k) * (wr-k) + (wi-k) * (wi-k)
  ELSEIF (c1 && c2)
    d = (wr-k) * (wr-k) + (wi+k) * (wi+k)
  ELSEIF (c2 && c3)
    d = (wr+k) * (wr+k) + (wi+k) * (wi+k)
  ELSEIF (c3 && c4)
    d = (wr+k) * (wr+k) + (wi-k) * (wi-k)
  ELSE
    d = 0
  ENDIF
  IF (d > 0)
    index = colors_in_range * d / r2
    z = index + range_num * colors_in_range + 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  d == 0 && |w| < 16000
  ;SOURCE: gallet10.frm
}


gallet-2-01 {; Sylvie Gallet [101324,3444], 1995
  c = z = fn1(pixel), fn2c = fn2(c) : 
  z = z*z+fn2c, z = fn1(z*z)*(z+pixel)+fn2c
  |z| <= 100
  ;SOURCE: gallet-2.frm
}


gallet-2-02 {; Sylvie Gallet [101324,3444], 1995 
  a = pixel, z=a 
  b = real(pixel), a2 = 3*a*a :
  z = z^3 - a2*z + b
  |z| <= 100  
  ;SOURCE: gallet-2.frm
}


gallet-2-03 {; Sylvie Gallet [101324,3444], 1995 
  a = pixel, z = -a 
  b = fn1(pixel), a2 = 3*a*a :
  z = z^3 - a2*z + b
  |z| <= 100  
  ;SOURCE: gallet-2.frm
}


gallet-2-04 (XAXIS) {; Sylvie Gallet [101324,3444], 1995 
  a=pixel, z=a, b=0, a2=3*a*a :
  z = z^3 - a2*z + b
  b = b+.01
  |z| <= 100  
  ;SOURCE: gallet-2.frm
}


gallet-2-05 {; Sylvie Gallet [101324,3444], 1995 
             ; z -> cos(z^2)+sin(z^3)-1 = 0
             ; solution z = 0
  z = 1/pixel, test = (|z| < 100) :
  z2 = z*z, z3 = z2*z
  z = z-(cos(z2)+sin(z3)-1)/(-2*z*sin(z2)+3*z2*cos(z3))
  (|z| >= real(p1)) && test  
  ;SOURCE: gallet-2.frm
}


gallet-2-06 (YAXIS) {; Sylvie Gallet [101324,3444], 1995
  z = flip(pixel) :
  sinz = sin(z)
  z0 = sinz^(p1-1), z1 = (sinz*z0+z)/(p1*z0+1)
  z = z-z1
  |z1| >= 0.000001
  ;SOURCE: gallet-2.frm
}


gallet-2-07 {; Sylvie Gallet [101324,3444], 1995
             ; (sin z)^p1 + z = 0 solution = 0
  z = pixel:
  sinz = sin(z)
  z0 = sinz^(p1-1), z1 = (sinz*z0+z)/(p1*z0*cos(z)+1)
  z = z-z1
  |z1| >= 0.000001
  ;SOURCE: gallet-2.frm
}


gallet-2-07b {; Modified Sylvie Gallet frm [101324,3444], 1995
              ; (sin z)^p1 + z = 0 solution = 0
  z = pixel, c=pixel:
  z1=z*z+c
  sqrz = flip(z)
  z0 = recipz^(p1-1), z1 = (sqrz*z0+z)/(p1*z0*acosh(z)+1)
  z =fn1(fn2(z+z1))
  |z1| >= 0.000001
  ;SOURCE: bej3.frm
}


gallet-2-07e {; Modified Sylvie Gallet frm [101324,3444], 1995
              ; (sin z)^p1 + z = 0 solution = 0
  z = pixel, c=pixel, Root=1:
  z1=z*z+c
  sqrz = flip(z)
  z0 = recipz^(p1-1), z1 = (sqrz*z0+z)/(p1*z0*acosh(z)+1)
  z =Root-fn1(fn2(z*z+c))+pixel/p1
  |z1-Root| >= 0.000001
  ;SOURCE: bej3.frm
}


gallet-2-08 {; Sylvie Gallet [101324,3444], 1995
  z = pixel, p = p1-1 :
  zp = z^p
  z1 = (z*zp-1)/(p1*zp*fn1(z))
  z = z-z1
  |z1| >= 0.000001
  ;SOURCE: gallet-2.frm
}


gallet-2-09 {; Sylvie Gallet [101324,3444], 1995
  z = pixel, p = p1-1 :
  sinz = sin(z)
  z0 = sinz^p, z1 = (sinz*z0+z)/(p1*z0*fn1(z)+1)
  z = z-z1
  |z1| >= 0.000001
  ;SOURCE: gallet-2.frm
}


gallet-2-10 {; Sylvie Gallet [101324,3444], 1995
             ; Halley's method applied to 
             ; z -->  z^p1-z = 0
  z = pixel, a = p1-1, b = p1-2, ap1 = a*p1 :
  zb = z^b, za = z*zb, zp1 = z*za, n1 = zp1-z, n2 = p1*za-1
  z = z - n1/(n2 - ap1*zb*n1/(2*n2)) 
  |n1| >= 0.000001
  ;SOURCE: gallet-2.frm
}


gallet-2-11 {; Sylvie Gallet [101324,3444], 1995
  z = pixel, a = p1-1, b = p1-2, ap1 = a*p1 :
  zb = z^b, za = z*zb, zp1 = z*za, n1 = zp1-z, n2 = p1*za-1
  z1 = n1/(n2 - ap1*zb*fn1(z)*n1/(2*n2)) 
  z = z-z1
  |z1| >= 0.000001
  ;SOURCE: gallet-2.frm
}


gallet-2-12 {; Sylvie Gallet [101324,3444], 1995
             ; Newton's method applied to
             ; x -> sin(y)^2+cos(x) = 0
             ; y -> cos(x)^2+sin(y) = 0
  z=pixel, x=real(z), y=imag(z)
  sx=sin(x), sy=sin(y), cx=cos(x), cy=cos(y) :
  d=-1+4*sy*cx
  x=x+(sy*sy-cx+2*sy*cx*cx)/(d*sx)
  y=y-(2*cx*sy*sy+cx*cx-sy)/(d*cy)
  sx=sin(x), sy=sin(y), cx=cos(x), cy=cos(y)
  z=x+flip(y)
  |sy*sy+cx+flip(cx*cx+sy)|>=0.000001
  ;SOURCE: gallet-2.frm
}


Gallet-3-01 (XAXIS) {; Sylvie Gallet [101324,3444], 1996
            ; choose p1, p2 such as
            ; 0 < real(p1) < imag(p1) < real(p2) < maxiter
  z = c = pixel, z1 = c1=1.5*z, z2 = c2=2.25*z, z3 = c3=3.375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  tt = 1 - (t1||t2||t3), z = z * real(tt)
  c = c * real(tt) + c1*real(t1) + c2*real(t2) + c3*real(t3)
  z = z*z+c, iter = iter+1
  |z| <= bailout
  ;SOURCE: gallet-3.frm
}


Gallet-3-02 {; Sylvie Gallet [101324,3444], 1996
  z = pixel :
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(y+p2*fn2(y))
  y1 = y - p1*fn1(x+p2*fn2(x))
  z = x1+flip(y1)
  |z| <= 4
  ;SOURCE: gallet-3.frm
}


Gallet-3-03 {; Sylvie Gallet [101324,3444], 1996
  z = pixel :
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(y*y+p2*fn2(y))
  y1 = y - p1*fn1(x*x+p2*fn2(x))
  z = x1+flip(y1)
  |z| <= 4
  ;SOURCE: gallet-3.frm
}


Gallet-3-04 {; Sylvie Gallet [101324,3444], 1996
             ; choose p1, p2 such as
             ; 0 < real(p1) < imag(p1) < real(p2) < maxiter
  z = c = 1/(pixel-conj(1/pixel)-flip(1/pixel))
  z1 = c1=1.5*z, z2 = c2=2.25*z, z3 = c3=3.375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  tt = 1 - (t1||t2||t3), z = z * real(tt)
  c = c * real(tt) + c1*real(t1) + c2*real(t2) + c3*real(t3)
  z = z*z+c, iter = iter+1
  |z| <= bailout
  ;SOURCE: gallet-3.frm
}


Gallet-3-05 {; Sylvie Gallet [101324,3444], 1996 
  z = pixel, c = p1, bailout = real(p3) :
  test = (flip(c*z) >= 0)
  a = (z-p2)*test, b = (z+flip(p2))*(1-test), z = (a+b)*c 
  (sqr(real(z)) < bailout) || (sqr(imag(z)) < bailout)
  ;SOURCE: gallet-3.frm
}


Gallet-3-06 {; Sylvie Gallet [101324,3444], 1996 
             ; Revised for Fractint v20 by Sylvie Gallet
  z = pixel, c = p1, bailout = sqrt(real(p3)):
  IF (z*(c-z) >= 0)
    z = z - p2 
  ELSE  
    z = z + p2
  ENDIF
  z = z*c
  abs(z) < bailout || abs(imag(z)) < bailout
  ;SOURCE: gallet-3.frm
}


Gallet-3-07 (YAXIS) {; Sylvie Gallet [101324,3444], 1996
                     ; Newton's method applied to
                     ; x -> sin(y)^2+cos(x)^3 = 0
                     ; y -> cos(x)^2+sin(y)^3 = 0
  z = 0.05/pixel, x=real(z), y=imag(z) 
  cx=cos(x), sx=sin(x), cy=cos(y), sy=sin(y) 
  cx2=cx*cx, cx3=cx2*cx, sy2=sy*sy, sy3=sy2*sy :
  d = 6*(cx*sy-4)     ; normal value -->  d = 9*(cx*sy-4)
  x = x+(sy3+3*sy*cx3-2*cx2)/(cx*sx*d)
  y = y-(cx3+3*cx*sy3-2*sy2)/(sy*cy*d)
  z = x + flip(y)
  cx=cos(x), sx=sin(x), cy=cos(y), sy=sin(y) 
  cx2=cx*cx, cx3=cx2*cx, sy2=sy*sy, sy3=sy2*sy
  |sy2+cx3+flip(cx2+sy3)| > 0.00001
  ;SOURCE: gallet-3.frm
}


Gallet-3-08 {; Sylvie Gallet [101324,3444], 1996
             ; Newton's method applied to
             ; x -> sin(y)^2+cos(x) = 0
             ; y -> cos(x)^2+sin(y) = 0
  z = pixel/(1+pixel-flip(pixel)-conj(pixel)), x=real(z), y=imag(z)
  sx=sin(x), sy=sin(y), cx=cos(x), cy=cos(y) :
  d = -1+4*sy*cx
  x = x+(sy*sy-cx+2*sy*cx*cx)/(d*sx)
  y = y-(2*cx*sy*sy+cx*cx-sy)/(d*cy)
  sx=sin(x), sy=sin(y), cx=cos(x), cy=cos(y)
  z=x+flip(y)
  |sy*sy+cx+flip(cx*cx+sy)| >= 0.000001
  ;SOURCE: gallet-3.frm
}


Gallet-3-09 {; Sylvie Gallet [101324,3444], 1996
             ; Newton's method applied to
             ; x -> sin(y)^2+cos(x) = 0
             ; y -> cos(x)^2+sin(y) = 0
  z = 1+pixel-cos(pixel)-conj(1/pixel), x=real(z), y=imag(z)
  sx=sin(x), sy=sin(y), cx=cos(x), cy=cos(y) :
  d = -1+4*sy*cx
  x = x+(sy*sy-cx+2*sy*cx*cx)/(d*sx)
  y = y-(2*cx*sy*sy+cx*cx-sy)/(d*cy)
  sx=sin(x), sy=sin(y), cx=cos(x), cy=cos(y)
  z=x+flip(y)
  |sy*sy+cx+flip(cx*cx+sy)| >= 0.000001
  ;SOURCE: gallet-3.frm
}


Gallet-3-10 {; Sylvie Gallet [101324,3444], 1996
             ; Newton's method applied to
             ; x -> sin(y)^2+cos(x) = 0
             ; y -> cos(x)^2+sin(y) = 0
  z = 1+pixel-cos(pixel)-conj(1/pixel), x=real(z), y=imag(z)
  sx=sin(x), sy=sin(y), cx=cos(x), cy=cos(y) :
  d = -1+x*sy*cx           ; normal value -->  d=-1+4*sy*cx
  x = x+(sy*sy-cx+2*sy*cx*cx)/(d*sx)
  y = y-(2*cx*sy*sy+cx*cx-sy)/(d*cy)
  sx=sin(x), sy=sin(y), cx=cos(x), cy=cos(y)
  z=x+flip(y)
  |sy*sy+cx+flip(cx*cx+sy)| >= 0.000001
  ;SOURCE: gallet-3.frm
}


Gallet-3-11 {; Sylvie Gallet [101324,3444], 1996 
  z = pixel^p1/p2 + p2^pixel/(p1*pixel), p = p2/p1 :
  z = z*p
  z <= p1
  ;SOURCE: gallet-3.frm
}


Gallet-3-12 {; Sylvie Gallet [101324,3444], 1996 
  z = pixel^p1/p2 + p2^pixel/(p1*pixel), p = p1/p2 :
  z = z*p
  z <= p1
  ;SOURCE: gallet-3.frm
}


Gallet-3-13 {; Sylvie Gallet [101324,3444], 1996 
  z = pixel/(pixel*pixel+1) :
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(y+p2*fn2(y))
  y1 = y - p1*fn1(x+p2*fn2(x))
  z = x1+flip(y1)
  |z| <= 4
  ;SOURCE: gallet-3.frm
}


Gallet-3-14 {; Sylvie Gallet [101324,3444], 1996 
  z = Pixel:
  z = fn1(z)+flip(fn2(z))
  (|real(z)| <= 4) || (|imag(z)| <= 4) 
  ;SOURCE: gallet-3.frm
}


Gallet-3-15 {; Sylvie Gallet [101324,3444], 1996 
  z = Pixel*(0.0,1.0) :
  n = sin(z)-z-pixel, z = z-n/(cos(z)-pixel)
  |n| > real(p1) 
  ;SOURCE: gallet-3.frm
}


Gallet-4-01 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, h = p1, a = p2 :
   x = real(z), y = imag(z)
   x1 = x - fn2(x + a*fn1(x+h))
   y1 = y + fn2(y + a*fn1(y+h))
   z = x1 + flip(y1)
    |z| <= 4
  ;SOURCE: gallet-4.frm
}


Gallet-4-02 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, h = p1, a = p2 :
   x = real(z), y = imag(z)
   y1 = y + fn2(x + a*fn1(x+h))
   x1 = x - fn2(y + a*fn1(y+h))
   z = x1 + flip(y1)
    |z| <= 16
  ;SOURCE: gallet-4.frm
}


Gallet-4-03 {; Sylvie Gallet [101324,3444], 1996
  z2 = 0, z1 = c = pixel :
   z = fn1(z1) + p1*real(c)*fn2(z1) + p2*imag(c)*z2
   z2 = z1, z1 = z
    |z| <= 4
  ;SOURCE: gallet-4.frm
}


Gallet-4-04 {; Sylvie Gallet [101324,3444], 1996
             ; PHC formula
  z = pixel * whitesq + (whitesq == 0 ) / pixel :
   x = real(z), y = imag(z)
   x1 = x - p1 * fn1(y + p2*fn2(y))
   y1 = y - p1 * fn1(x + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 4
  ;SOURCE: gallet-4.frm
}


Gallet-4-05 {; Sylvie Gallet [101324,3444], 1996
             ; PHC formula
  z = pixel :
   x = real(z), y = imag(z)
   x1 = x - p1 * fn1(y*(y - whitesq) + p2*fn2(y))
   y1 = y - p1 * fn1(x*(x - (whitesq == 0)) + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 4
  ;SOURCE: gallet-4.frm
}


Gallet-4-06 {; Sylvie Gallet [101324,3444], 1996
             ; PTC formula
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  sq3 = -0.5 + flip(sqrt(3)/2)
  c = (r == 0) + sq3*(r == 1) + conj(sq3)*(r == 2)
  z = c * pixel :
   x = real(z), y = imag(z)
   x1 = x - p1 * fn1(y*y + p2*fn2(y))
   y1 = y - p1 * fn1(x*x + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 4
  ;SOURCE: gallet-4.frm
}


Gallet-4-06_A {; Sylvie Gallet [101324,3444], 1996
               ; PTC 24 bits formula
               ; Part A: r = 0
               ;  cr = real(scrnpix) + imag(scrnpix)
               ;  r = cr - 3 * trunc(cr / real(3))
  r = 0
  sq3 = -0.5 + flip(sqrt(3)/2)
  c = (r == 0) + sq3*(r == 1) + conj(sq3)*(r == 2)
  z = c * pixel:
  x = real(z), y = imag(z)
  x1 = x - p1 * fn1(y*y + p2*fn2(y))
  y1 = y - p1 * fn1(x*x + p2*fn2(x))
  z = x1 + flip(y1)
  |z| <= 4
  ;SOURCE: 99msg.frm
}


Gallet-4-06_B {; Sylvie Gallet [101324,3444], 1996
               ; PTC 24 bits formula
               ; Part B: r = 1
               ;  cr = real(scrnpix) + imag(scrnpix)
               ;  r = cr - 3 * trunc(cr / real(3))
  r = 1
  sq3 = -0.5 + flip(sqrt(3)/2)
  c = (r == 0) + sq3*(r == 1) + conj(sq3)*(r == 2)
  z = c * pixel:
  x = real(z), y = imag(z)
  x1 = x - p1 * fn1(y*y + p2*fn2(y))
  y1 = y - p1 * fn1(x*x + p2*fn2(x))
  z = x1 + flip(y1)
  |z| <= 4
  ;SOURCE: 99msg.frm
}


Gallet-4-06_C {; Sylvie Gallet [101324,3444], 1996
               ; PTC 24 bits formula
               ; Part C: r = 2
               ;  cr = real(scrnpix) + imag(scrnpix)
               ;  r = cr - 3 * trunc(cr / real(3))
  r = 2
  sq3 = -0.5 + flip(sqrt(3)/2)
  c = (r == 0) + sq3*(r == 1) + conj(sq3)*(r == 2)
  z = c * pixel:
  x = real(z), y = imag(z)
  x1 = x - p1 * fn1(y*y + p2*fn2(y))
  y1 = y - p1 * fn1(x*x + p2*fn2(x))
  z = x1 + flip(y1)
  |z| <= 4
  ;SOURCE: 99msg.frm
}


Gallet-4-07 {; Sylvie Gallet [101324,3444], 1996
             ; PHC formula
  z = 10 * pixel, bailout = real(p3)
   c = p1 * (whitesq + (0,1) * (whitesq == 0)) :
   test = flip(c*z) >= 0
   z = (z - p2 * (test - (test == 0))) * c
    abs(real(z)) < bailout || abs(imag(z)) < bailout
  ;SOURCE: gallet-4.frm
}


Gallet-4-08 {; Sylvie Gallet [101324,3444], 1996
             ; PHC formula
  z = pixel * (whitesq - (whitesq == 0))
  c = p1, bailout = real(p3) :
   test = flip(z*(c-z)) >= 0
   z = (z - p2 * (test - (test == 0))) * c
    abs(real(z)) < bailout || abs(imag(z)) < bailout
  ;SOURCE: gallet-4.frm
}


Gallet-4-09 {; Sylvie Gallet [101324,3444], 1996
  p = (0,1) * p1, bailout = p2
  a = pixel + p, b = pixel - p :
   a = fn1(a) + flip(fn2(a))
   b = fn1(b) + flip(fn2(b))
   z = (a + b)/2
    |a| + |b| <= bailout
  ;SOURCE: gallet-4.frm
}


Gallet-4-10 {; Sylvie Gallet [101324,3444], 1996
             ; PHC formula
  p = (0,1) * p1 * ((0,1) * whitesq - (whitesq == 0))
  a = pixel + p, b = pixel - p
  a1 = b1 = 0, a2 = 3*a*a, b2 = 3*b*b :
   a = a^3 - a2*a + a1, b = b^3 - b2*b + b1
   a1 = a1 + p2, b1 = b1 + p2
   z = (a + b)/2
    |z| <= p3
  ;SOURCE: gallet-4.frm
}


Gallet-4-11 {; Sylvie Gallet [101324,3444], 1996
  p = (0,1) * p1, bailout = p2
  a = pixel + p, b = pixel - p :
   a = fn1(a) + flip(fn2(a))
   b = fn1(b) + flip(fn2(b))
   z = (a + b) / 2
    |a| <= bailout || |b| <= bailout
  ;SOURCE: gallet-4.frm
}


Gallet-4-12 {; Sylvie Gallet [101324,3444], 1996
             ; PHC formula
  p = p1 * ((0,1) * whitesq - (whitesq == 0))
  a = pixel + p, b = pixel - p, c = p2/pixel
  a1 = b1 = 0, a2 = 3*a*a, b2 = 3*b*b :
   a = a^3 - a2*a + a1, b = b^3 - b2*b + b1
   a1 = a1 + c, b1 = b1 + c
   z = (a + b)/2
    |z| <= p3
  ;SOURCE: gallet-4.frm
}


Gallet-4-13 {; Sylvie Gallet [101324,3444], 1996
             ; Hypercomplex Mandel formula
   ; c = real(pixel) + i*imag(pixel) + j*real(p1) + k*imag(p1)
   ; h(0) = 0, h(n+1) = h(n)^2 + c
   ; |h| <= 64
  p = (0,1)*p1
  a = b = 0, ca = pixel + p, cb = pixel - p :
   a = a*a + ca, b = b*b + cb
   z = (a + b)/2
    |a| + |b| <= 128
  ;SOURCE: gallet-4.frm
}


Gallet-4-13m {; Sylvie Gallet [101324,3444], 1996
              ; Hypercomplex Mandel formula
     ; c = real(pixel) + i*imag(pixel) + j*real(p1) + k*imag(p1)
     ; h(0) = 0 , h(n+1) = h(n)^2 + c
     ; |h| <= 64
  p = (0,1)*p1
  a = b = 0, ca = pixel + p, cb = pixel - p:
  a = a*a + ca, b = b*b + cb
  |a| + |b| <= 128
  ;SOURCE: gallet_4.frm
}


Gallet-4-14 {; Sylvie Gallet [101324,3444], 1996
             ; Hypercomplex Newton formula applied to h^p2 - 1 = 0
   ; h(0) = real(pixel) + i*imag(pixel) + j*real(p1) + k*imag(p1)
   ; h(n+1) = h(n) - (h(n)^p2-1) / (p2*h(n)^(p2-1))
   ; |h| >= 0.0000005
  p = (0,1)*p1, ex = p2 - 1
  a = pixel + p, b = pixel - p :
   a2 = a^ex, b2 = b^ex
   na = a2*a - 1, da = p2*a2
   nb = b2*b - 1, db = p2*b2
   a = a - na/da, b = b - nb/db
    |na| + |nb| >= 0.000001
  ;SOURCE: gallet-4.frm
}


Gallet-5-01 {; Sylvie Gallet [101324,3444], 1996
  sq3 = sqrt(3), sq32 = 0.5*sq3, l = real(p1), h = l*sq32, l3 = 3*l
  h2 = 2*h, h3 = 3*h, h4 = h2 + h2, l15 = 0.5*l3
  c1 = 0.5*l + flip(h), c2 = l, rot = -0.5 + flip(sq32)
  y = imag(pixel), x = real(pixel) - y/sq3
  y = y - floor(y/h3)*h3, x = x - floor(x/l3)*l3 + y/sq3
  d = 0.5*y + sq32*x - h3, x = x - d*sq3*(d>0), y = y - d*(d>0)
  y = y - h2*(y>h2)
  t = y < sq3*x-h4, x = x - l15*t, y = y + h*t
  q1 = abs(floor(y / h))
  d2 = -sq32*x + 0.5*y, q2 = abs(floor(d2 / h))
  d3 = sq32*x + 0.5*y - h, q3 = abs(floor(d3 / h))
  q = q1 + q2 + q3, odd = q != 2*floor(q/2)
  y = y*(odd==0) + (h2-y)*odd
  t = y > -sq3*x + h4, x = x - l15*t, y = y - h*t
  z = x + flip(y), z = z * (y<=h) + ((z-c1)*conj(rot) + c1) * (y>h)
  x = real(z), z = z * (x<l) + ((z-c2)*rot + c2) * (x>=l)
  z = c = p2*z + p3 :
   z = z*z + c
    |z| <= 4
  ;SOURCE: gallet-5.frm
}


Gallet-5-02 {; Sylvie Gallet [101324,3444], 1996
  sq3 = sqrt(3), sq32 = 0.5*sq3, l = real(p1), h = l*sq32, l3 = 3*l
  h2 = 2*h, h3 = 3*h, h4 = h2 + h2, l15 = 0.5*l3
  c1 = 0.5*l + flip(h), c2 = l, rot = -0.5 + flip(sq32)
  y = imag(pixel), x = real(pixel) - y/sq3
  y = y - floor(y/h3)*h3, x = x - floor(x/l3)*l3 + y/sq3
  d = 0.5*y + sq32*x - h3, x = x - d*sq3*(d>0), y = y - d*(d>0)
  y = y - h2*(y>h2)
  t = y < sq3*x-h4, x = x - l15*t, y = y + h*t
  q1 = abs(floor(y / h))
  d2 = -sq32*x + 0.5*y, q2 = abs(floor(d2 / h))
  d3 = sq32*x + 0.5*y - h, q3 = abs(floor(d3 / h))
  q = q1 + q2 + q3, odd = q != 2*floor(q/2)
  y = y*(odd==0) + (h2-y)*odd
  t = y > -sq3*x + h4, x = x - l15*t, y = y - h*t
  z = x + flip(y), z = z * (y<=h) + ((z-c1)*conj(rot) + c1) * (y>h)
  x = real(z), z = z * (x<l) + ((z-c2)*rot + c2) * (x>=l)
  z = p2*z + p3 :
   z2 = z*z, n = z2*z2 - 1, d = 4*z2*z
   z = z - n / d
    |n| >= 0.000001
  ;SOURCE: gallet-5.frm
}


Gallet-5-03 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   x1 = x*x + p1*fn1((y) + fn2(p2*y))
   y1 = y*y + p1*fn1((x) + fn2(p2*x))
   x = x1, y = y1
   z = fn3(x * y)
    |z| <= p3
  ;SOURCE: gallet-5.frm
}


Gallet-5-04 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z)
  rp1 = real(p1), ip1 = imag(p1) :
   exp2x = exp(2*x), exp3y = exp(3*y)
   fx = x * exp3y - rp1, fy = y*(1 + exp2x) - ip1
   a = exp3y, b = 3*x * exp3y, c = 2*y * exp2x, d = 1 + exp2x
   div = a*d - b*c
   z = z - ((d*fx-b*fy) + flip(-c*fx+a*fy)) / div
   x = real(z), y = imag(z)
    |fx| > p2 || |fy| > p2
  ;SOURCE: gallet-5.frm
}


Gallet-5-05 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = z, y = conj(z) :
   hx = p1*fn1(x), hy = p1*fn2(y)
   x = x + hy, y = y + hx
   z = x + flip(y)
    (|hx|+|hy|) >= p2
  ;SOURCE: gallet-5.frm
}


Gallet-5-06 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = z, y = flip(z) :
   hx = p1*fn1(x), hy = p1*fn2(y)
   x = x + hy, y = y + hx
   z = x + flip(y)
    (|hx|+|hy|) <= p2
  ;SOURCE: gallet-5.frm
}


Gallet-5-07 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = z*(0,1), y = z*(0,-1) :
   hx = p1*fn1(x), hy = p1*fn2(y)
   x = x + hy, y = y + hx
   z = x + flip(y)
    (|hx|+|hy|) <= p2
  ;SOURCE: gallet-5.frm
}


Gallet-5-08 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   x1 = x - p1*fn1(y + fn2(p2*x) + fn3(p3*y))
   y1 = y - p1*fn1(x + fn2(p2*y) + fn3(p3*x))
   x = x1, y = y1
   z = x + flip(y)
    |z| <= 32
  ;SOURCE: gallet-5.frm
}


Gallet-5-08-mod {; Sylvie Gallet [101324,3444], 1996
                 ; Modified, Bill Decker
  g = real(p3), f = imag(p3)
  z = pixel, x = real(z), y = imag(z):
  x1 = x - p1*fn1(y + fn2(p2*x + fn3(g*y)))
  y1 = y - p1*fn1(x + fn2(p2*y + fn3(g*x)))
  x = x1, y = y1
  z = x + flip(y)
  |z| <= f
  ;SOURCE: 99msg.frm
}


Gallet-5-09 {; Sylvie Gallet [101324,3444], 1996
             ; PHC formula
  z = pixel * (whitesq - 0.5*(whitesq == 0 )) :
   x = real(z), y = imag(z)
   x1 = x - p1 * fn1(y + p2*fn2(y))
   y1 = y - p1 * fn1(x + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 64
  ;SOURCE: gallet-5.frm
}


Gallet-5-10 {; Sylvie Gallet [101324,3444], 1996
  z = pixel :
   x = real(z), y = imag(z)
   x1 = (x - p1) * fn1(y + p2*fn2(y))
   y1 = (y - p1) * fn1(x + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 64
  ;SOURCE: gallet-5.frm
}


Gallet-5-11 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = z*(0.5), y = -z :
   hx = p1*fn1(x), hy = p1*fn2(y)
   x = x + hy, y = y + hx
   z = x + flip(y)
    (|hx|+|hy|) <= p2
  ;SOURCE: gallet-5.frm
}


Gallet-6-01 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   x1 = x - p1*fn1(y + p2*fn2(x - p3*fn3(y)))
   y1 = y - p1*fn1(x + p2*fn2(y - p3*fn3(x)))
   x = x1, y = y1
   z = x + flip(y)
    |z| <= 32
  ;SOURCE: gallet-6.frm
}


Gallet-6-02 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   hx = p1*fn1(x + p2*fn2(y)), hy = p1*fn1(y + p2*fn2(x))
   x = x + hy, y = y + hx
   z = x + flip(y), mhx = |hx|, mhy = |hy|
    (mhx+mhy) >= p3 && mhx <= 1e35 && mhy <= 1e35
  ;SOURCE: gallet-6.frm
}


Gallet-6-03 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
  x2 = x*x, y2 = y*y
   x1 = x2 - p1*fn1(y2 + fn2(p2*x) + fn3(p3*y))
   y1 = y2 - p1*fn1(x2 + fn2(p2*y) + fn3(p3*x))
   x = x1, y = y1
   z = x + flip(y)
    |z| <= 32
  ;SOURCE: gallet-6.frm
}


Gallet-6-04 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   x1 = x - p1*fn1(y + fn2(p2*x) * fn3(p3*y))
   y1 = y - p1*fn1(x + fn2(p2*y) * fn3(p3*x))
   x = x1, y = y1
   z = x + flip(y)
    |z| <= 32
  ;SOURCE: gallet-6.frm
}


Gallet-6-05 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   x1 = x - p1*fn1(y * fn2(p2*x) + fn3(p3*y))
   y1 = y - p1*fn1(x * fn2(p2*y) + fn3(p3*x))
   x = x1, y = y1
   z = x + flip(y)
    |z| <= 32
  ;SOURCE: gallet-6.frm
}


Gallet-6-06 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   hx = p1*fn1(x + p2*fn2(x)), hy = p1*fn1(y + p2*fn2(y))
   x = x + hy, y = y + hx
   z = x + flip(y), m = (|hx|+|hy|)
    m >= p3 && m <= 1e30
  ;SOURCE: gallet-6.frm
}


Gallet-6-07 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, h = p3, h2 = h + h
  n0 = - p1*fn1(p2*fn2(0)) :
   n = z - p1*fn1(z + p2*fn2(z)) - n0
   d = (h2 - p1*(fn1(z+h + p2*fn2(z+h)) - fn1(z-h + p2*fn2(z-h))))/h2
   z = z - n/d, m = |n|
    m > 0.000001 && m <= 1e40
  ;SOURCE: gallet-6.frm
}


Gallet-6-08 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   x1 = x - p1*fn1(y + fn2(p2*x) / fn3(p3*y))
   y1 = y - p1*fn1(x + fn2(p2*y) / fn3(p3*x))
   x = x1, y = y1
   z = x + flip(y)
    |z| <= 1024
  ;SOURCE: gallet-6.frm
}


Gallet-6-09 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   x1 = x ^ (p1 + y^(p2 + (x - p3*y)))
   y1 = y ^ (p1 + x^(p2 + (y - p3*x)))
   x = x1, y = y1
   z = x + flip(y)
    |z| <= 32
  ;SOURCE: gallet-6.frm
}


Gallet-7-01 {; Sylvie Gallet [101324,3444], 1996
  j = -0.5 + flip(0.5*sqrt(3)), j2 = j*j
  z = pixel :
   x = z*j, y = z*j2
   x1 = x - p1*fn1(y + fn2(p2*z))
   y1 = y - p1*fn1(z + fn2(p2*x))
   z1 = z - p1*fn1(x + fn2(p2*y))
   z = z1 + x1*j + y1*j2
    |z| <= 32
  ;SOURCE: gallet-7.frm
}


Gallet-7-02 {; Sylvie Gallet [101324,3444], 1997
  j = -0.5 + flip(0.5*sqrt(3)), j2 = j*j
  z = pixel:
   x = z*j, y = z*j2
   x1 = x - p1*fn1(y*z + p2*fn2(x))
   y1 = y - p1*fn1(z*x + p2*fn2(y))
   z1 = z - p1*fn1(x*y + p2*fn2(z))
   z = z1 + x1*j + y1*j2
    |z| <= 32
  ;SOURCE: gallet-7.frm
}


Gallet-7-03 {; Sylvie Gallet [101324,3444], 1997
  j = -0.5 + flip(0.5*sqrt(3)), j2 = j*j
  z = pixel:
   x = z*j, y = z*j2
   x1 = x - p1*fn1(x + p1*fn1(y + p2*fn2(z)))
   y1 = y - p1*fn1(y + p1*fn1(z + p2*fn2(x)))
   z1 = z - p1*fn1(z + p1*fn1(x + p2*fn2(y)))
   z = z1 + x1*j + y1*j2
    |z| <= 32
  ;SOURCE: gallet-7.frm
}


Gallet-7-04 {; Sylvie Gallet [101324,3444], 1997
  j = -0.5 + flip(0.5*sqrt(3)), j2 = j*j
  z = pixel:
   x = z*j, y = z*j2
   x1 = x - p1*fn1(x + fn2(p2*y) + fn3(p3*z))
   y1 = y - p1*fn1(y + fn2(p2*z) + fn3(p3*x))
   z1 = z - p1*fn1(z + fn2(p2*x) + fn3(p3*y))
   z = z1 + x1*j + y1*j2
    |z| <= 32
  ;SOURCE: gallet-7.frm
}


Gallet-7-05 {; Sylvie Gallet [101324,3444], 1997
  x = real(pixel), y = imag(pixel):
   dx = p1 * fn1(fn2(y)), dy = p1 * fn3(fn4(x))
   x = x + dx, y = y + dy
   z = x + flip(y)
    (|dx| + |dy|) >= p2
  ;SOURCE: gallet-7.frm
}


Gallet-7-06 {; Sylvie Gallet [101324,3444], 1997
  x = real(pixel), y = imag(pixel):
   dx = p1 * fn1(y)*x, dy = p1 * fn2(x)*y
   x = x + dx, y = y + dy
   z = x + flip(y)
    (|dx| + |dy|) >= p2
    ;SOURCE: gallet-7.frm
}


Gallet-7-07 {; Sylvie Gallet [101324,3444], 1997
  x = real(pixel), y = imag(pixel), z = pixel:
   dx = p1 * fn1(y*z), dy = p1 * fn2(x*z)
   x = x + dx, y = y + dy
   z = x + flip(y)
    (|dx| + |dy|) >= p2
  ;SOURCE: gallet-7.frm
}


Gallet-8-01 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; real(p2) = bailout value
   z = c = pixel, zc = 0 :
   IF (zc < 0)
      z = z - p1
   ELSE
      z = z - zc - p1
   ENDIF
   zc = z*c
   |z| <= p2
  ;SOURCE: gallet_8.frm
}


Gallet-8-02 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; real(p2) = bailout value
   z = c = pixel :
   z = 1 / (z*z + c)
   |z| <= p2
  ;SOURCE: gallet_8.frm
}


Gallet-8-03 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; Requires periodicity = 0
   z = c = zn = pixel :
   zn = zn*zn + c
   IF (|zn| < |z|)
      z = 0.6*zn
   ENDIF
   |zn| <= 4
  ;SOURCE: gallet_8.frm
}


Gallet-8-03gm {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
               ; Requires periodicity = 0
  z = c = zn = pixel:
  zn = zn*zn + c
  IF (|zn| < |z|)
    z = p1*zn
  ENDIF
  |zn| <= 4
  ;SOURCE: gallet_8.frm
}


Gallet-8-04 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; Requires periodicity = 0
             ; p1 = exponent
             ; p2 > 1
   z = zn = pixel, ex = p1 - 1
   IF (p2 || imag(p2))
      k = p2
   ELSE
      k = 1
   ENDIF
   :
   znex = zn^ex, num = znex*zn - 1, mnum = |num|
   den = p1*znex, zn = zn - num/den
   IF ( mnum > |z^p1-1|)
      z = zn * k
   ENDIF
   mnum >= 0.001
  ;SOURCE: gallet_8.frm
}


Gallet-8-05 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; Requires periodicity = 0
             ; 0 < p1 <= 1 (default = 1)
   z = c = zn = pixel
   IF (p1 || imag(p1))
      k = p1
   ELSE
      k = 1
   ENDIF
   :
   zn = zn*zn + c
   IF (abs(zn) < abs(z) || flip(abs(zn)) < flip(abs(z)))
      z = k*zn
   ENDIF
   |zn| <= 4
  ;SOURCE: gallet_8.frm
}


Gallet-8-06 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; Requires periodicity = 0
             ; 0 < p1 <= 1 (default = 1)
   z = c = zn = pixel
   IF (p1 || imag(p1))
      k = p1
   ELSE
      k = 1
   ENDIF
   :
   zn = zn*zn + c
   IF (abs(zn) < abs(z) && flip(abs(zn)) < flip(abs(z)))
      z = k*zn
   ENDIF
   |zn| <= 4
  ;SOURCE: gallet_8.frm
}


Gallet-8-07 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; Requires periodicity = 0
             ; 0 < p1 <= 1 (default = 1)
   z = c = zn = pixel
   IF (p1 || imag(p1))
      k = p1
   ELSE
      k = 1
   ENDIF
   :
   zn = zn*zn + c
   IF (abs(zn) < abs(z))
      z = k*real(zn) + flip(imag(z))
   ENDIF
   IF (flip(abs(zn)) < flip(abs(z)))
      z = real(z) + k*flip(imag(zn))
   ENDIF
   |zn| <= 4
  ;SOURCE: gallet_8.frm
}


Gallet-8-08 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; Requires periodicity = 0
             ; 0 < p2 <= 1 (default = 1)
   z = zn = pixel
   IF (p2 || imag(p2))
      k = p2
   ELSE
      k = 1
   ENDIF
   :
   zn = zn*zn + p1
   IF (abs(zn) < abs(z) && flip(abs(zn)) < flip(abs(z)))
      z = k*zn
   ENDIF
   |zn| <= 4
  ;SOURCE: gallet_8.frm
}


Gallet-8-09 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; Requires periodicity = 0
             ; a = p1 , b = p2
             ; Try a = 0.5, b = (0.563, 0.0) or (0.56667, 0.0)
   z = x = y = pixel, a = p1, b = p2 :
   z = z*z - a*z + b, x = z*z - a*y + b, y = z, z = x
   |z| <= 16
  ;SOURCE: gallet_8.frm
}


Gallet-8-10 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; Requires periodicity = 0
             ; a = p1, b = p2
   z = x = y  = pixel, a = p1, b = p2 :
   z = z*(z*z - a) + b, x = z*z*z - a*y + b, y = z, z = x
   |z| <= 16
  ;SOURCE: gallet_8.frm
}


Gallet-8-11 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; PHC, requires periodicity = 0 and passes = 1
             ; p1 = parameter for a Julia set
             ; p2 not used
             ; p3: real part = radius
             ;     imag part = refraction index
   h = cabs(pixel), r = real(p3), ir = imag(p3)
   IF (h >= r)
      IF (whitesq)
         z = pixel, c = p1
      ELSE
         z = 200
      ENDIF
   ELSE
      beta = asin(h/r), alpha = asin(h/r/ir)
      h2 = h - sqrt(r*r - h*h) * tan(beta - alpha)
      z = h2*pixel/h, c = p1
   ENDIF
   :
   z = z*z + c
   |z| <= 128
  ;SOURCE: gallet_8.frm
}


Gallet-8-11-m {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
               ; p1 = parameter for a Julia set
               ; p2 not used
               ; p3: real part = radius
               ;     imag part = refraction index
  h = cabs(pixel), r = real(p3), ir = imag(p3)
  IF (h >= r)
    z = pixel, c = p1
  ELSE
    beta = asin(h/r), alpha = asin(h/r/ir)
    h2 = h - sqrt(r*r - h*h) * tan(beta - alpha)
    z = h2*pixel/h, c = p1
  ENDIF
  :
  z = z*z + c
  |z| <= 128
  ;SOURCE: formulas.frm
}


Gallet-8-11gm {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
               ; vun mir (GM) ge„nnert.. P3 durch p2 ersaat!
               ; PHC, requires periodicity = 0 and passes = 1
               ; p1 = parameter for a Julia set
               ; p2: real part = radius
               ;     imag part = refraction index
  h = cabs(pixel), r = real(p2), ir = imag(p2)
  IF (h >= r)
    IF (whitesq)
      z = pixel, c = p1
    ELSE
      z = 200
    ENDIF
  ELSE
    beta = asin(h/r), alpha = asin(h/r/ir)
    h2 = h - sqrt(r*r - h*h) * tan(beta - alpha)
    z = h2*pixel/h, c = p1
  ENDIF
  :
  z = z*z + c
  |z| <= 128
  ;SOURCE: gallet_8.frm
}


Gallet-8-12 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; Requires periodicity = 0
             ; p2: real part = radius
             ;     imag part = refraction index
   h = cabs(pixel), pinv = 1/p1
   bailout = 2*p1, r = real(p2), ir = imag(p2)
   IF (h >= r)
      z = pixel
   ELSE
      beta = asin(h/r), alpha = asin(h/(r*ir))
      z = (h - sqrt(r*r - h*h) * tan(beta - alpha)) * pixel / h
   ENDIF
   center = round(p1*z) * pinv
   IF (cabs(z-center) < 0.45*pinv)
      z = cabs(center)
   ELSE
      z = cabs(center) + p1
   ENDIF
   :
   z = z + pinv
   z <= bailout
  ;SOURCE: gallet_8.frm
}


Gallet-8-13 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; Requires periodicity = 0
             ; a = p1, b = p2
   z = x = y  = pixel, a = p1, b = p2 :
   z = z*z - a*z + b, x = z*z - a*y + b, y = z, z = x
   b = b + 0.00001
   |z| <= 16
  ;SOURCE: gallet_8.frm
}


Gallet-8-14 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; Requires periodicity = 0 and decomp = 256
             ; 0 < p1 <= 1
   z = 0, c = zn = pixel, zmin = p1, k = flip(2*pi/zmin) :
   zn = zn*zn + c, znc = cabs(zn)
   IF (znc < zmin)
      zmin = znc, z = exp(zmin*k)
   ENDIF
   znc <= 4
  ;SOURCE: gallet_8.frm
}


Gallet-8-15 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; Requires periodicity = 0 and decomp = 256
             ; bailout = real(p2)
             ; 0 < imag(p2)
   z = 0, zn = x = y = pixel, zmin = imag(p2), k = flip(2*pi/zmin) :
   zn = zn*zn - 0.5*zn + p1, x = zn*zn - 0.5*y + p1
   y = zn, zn = x, znc = cabs(zn)
   IF (znc < zmin)
      zmin = znc, z = exp(zmin*k)
   ENDIF
   znc <= real(p2)
  ;SOURCE: gallet_8.frm
}


Gallet-8-16 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; Requires periodicity = 0 and decomp = 256
             ; 0 < p1
   z = -1, c = zn = pixel, xmin = ymin = real(p1)
   odd = 0, k = flip(pi/real(xmin)) :
   zn = zn*zn + c, odd = odd==0
   IF (odd)
      IF (abs(zn) < xmin)
         xmin = abs(zn), z = exp(xmin*k)
      ENDIF
   ELSE
      IF (abs(imag(zn)) < ymin)
         ymin = abs(imag(zn)), z = exp(-ymin*k)
      ENDIF
   ENDIF
   |zn| <= 16
  ;SOURCE: gallet_8.frm
}


Gallet-8-17 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; Requires periodicity = 0 and decomp = 256
             ; p1 = parameter for a Julia set (0 for the Mandelbrot set)
             ; 0 < p2
   IF (p1 || imag(p1))
      c = p1
   ELSE
      c = pixel
   ENDIF
   z = -1, zn = pixel, zmin = abs(real(p2))
   k = flip(pi/zmin), odd = 0 :
   zn = zn*zn + c, znc = abs(real(zn)) + abs(imag(zn))
   IF (znc < zmin)
      zmin = znc
      IF (odd)
         z = exp(zmin*k)
      ELSE
         z = exp(-zmin*k)
      ENDIF
   ENDIF
   odd = odd==0
   znc <= 4
  ;SOURCE: gallet_8.frm
}


Gallet-8-18 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; Requires periodicity = 0
             ; 0 < real(p3) < imag(p3)
   z = pixel, iter = 0, ex1 = p1-1, ex2 = p2-1
   c = 1, it = imag(p3) - real(p3), p = (p2-p1)/it :
   IF (iter < p3)
      zex = z^ex1, n = zex*z - 1, d = p1*zex, z = z - n/d
   ELSEIF (iter > imag(p3))
      zex = z^ex2, n = zex*z - 1, d = p2*zex, z = z - n/d
   ELSE
      pc = c*p, ex = ex1 + pc
      zex = z^ex, n = zex*z - 1, d = pc*zex, z = z - n/d
      c = c+1
   ENDIF
   iter = iter + 1
   |n| >= 0.0000000001
  ;SOURCE: gallet_8.frm
}


Gallet-8-19 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Apr 1997
             ; Choose 0 < real(p1) < imag(p1)
             ; Requires periodicity = 0
   z = c = pixel, count = 0, im1 = imag(p1) :
   count = count + 1
   IF (count > im1)
      count = 1
   ENDIF
   IF (count <= p1)
      z = z*z + c
   ELSE
      z = z*z*z + c
   ENDIF
   |z| <= 16
  ;SOURCE: gallet_8.frm
}


Gallet-8-20 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; Requires periodicity = 0 and decomp = 256
             ; real(p2) > 0
             ; Revised for Fractint v20 by Sylvie Gallet
   h = cabs(pixel), pinv = 1/real(p1)
   r = real(p2)
   IF (h >= r)
      z = -1
   ELSE
      z = pixel*real(p2) / sqrt(real(p2)*real(p2) - |pixel|)
      center = round(real(p1)*z) * pinv
      IF (cabs(z-center) < 0.45*pinv)
         z = exp(flip(atan(cabs(center))))
      ELSE
         z = exp(flip(atan(cabs(center))-pi))
      ENDIF
   ENDIF
   :
   z < -1
  ;SOURCE: gallet_8.frm
}


Gallet-8-21 {; Sylvie Gallet [101324,3444], Apr 1997
             ; Requires periodicity = 0 and decomp = 256
             ; p1 = parameter for a Julia set (0 for the Mandelbrot set)
             ; 0 < real(p2) , 0 < imag(p2)
   im2 = imag(p2)
   IF (p1 || imag(p1))
      c = p1
   ELSE
      c = pixel
   ENDIF
   z = -1, zn = pixel, zmin = zmin0 = abs(real(p2))
   cmax = trunc(abs(real(p3)))
   IF (cmax < 2)
      cmax = 2
   ENDIF
   k = flip(6.28318530718/(zmin*real(cmax))), cnt = -1
   :
   cnt = cnt + 1
   IF (cnt == cmax)
      cnt = 0
   ENDIF
   zn = zn*zn + c, znc = cabs(im2*real(zn) + flip(imag(zn)))
   IF (znc < zmin)
      zmin = znc, z = exp((cnt*zmin0 + zmin)*k)
   ENDIF
   znc <= 4
  ;SOURCE: fract196.frm
}


Gallet-8-22 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Apr 1997
             ; Requires periodicity = 0 and decomp=256
             ; 0 < real(p2) , 0 < imag(p2)
   im2 = imag(p2)
   IF (p1 || imag(p1))
      c = p1
   ELSE
      c = pixel
   ENDIF
   z = -1, zn = pixel, zmin = zmin0 = abs(real(p2))
   cmax = trunc(abs(real(p3)))
   IF (cmax < 2)
      cmax = 2
   ENDIF
   k = flip(6.28318530718/(zmin*real(cmax))), cnt = -1
   :
   cnt = cnt + 1
   IF (cnt == cmax)
      cnt = 0
   ENDIF
   zn = c*fn1(zn), znc = cabs(im2*real(zn) + flip(imag(zn)))
   IF (znc < zmin)
      zmin = znc, z = exp((cnt*zmin0 + zmin)*k)
   ENDIF
   znc <= 256
  ;SOURCE: gallet_8.frm
}


Gallet-8-22-m {; Sylvie Gallet, sylvie_gallet@compuserve.com, Apr 1997
               ; Requires periodicity = 0 and decomp=256
               ; 0 < real(p2) , 0 < imag(p2)
  im2 = imag(p2)
  z = -1, zn = c = pixel, zmin = zmin0 = abs(real(p2))
  cmax = 2
  k = flip(6.28318530718/(zmin*real(cmax))), cnt = -1
  :
  cnt = cnt + 1
  IF (cnt == cmax)
    cnt = 0
  ENDIF
    zn = c*fn1(zn), znc = cabs(im2*real(zn) + flip(imag(zn)))
  IF (znc < zmin)
    zmin = znc, z = exp((cnt*zmin0 + zmin)*k)
  ENDIF
  znc <= 256
  ;SOURCE: formulas.frm
}


Gallet-9-01 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Aug 1997
  z = pixel :
  z = 1/(z*z + pixel)
  |z| >= p1
  ;SOURCE: gallet_9.frm
}


Gallet-9-02 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Aug 1997
  z1 = c = pixel, mz1 = cabs(fn2(z1)), k = real(p1)*mz1
  bailout = real(p2), z = imag(p1):
  z1 = z1*z1 + c
  z1 = fn1(real(z1)) + flip(imag(z1)), mz1 = cabs(z1)
  IF (mz1 <= k)
    z1 = (z1 + 1) * p3, mz1 = cabs(z1)
  ENDIF
  IF (mz1 < imag(p1))
    z = z1^imag(p2)
  ENDIF
  mz1 <= bailout
  ;SOURCE: 97msg.frm
}


Gallet-9-03 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Aug 1997
             ; Bailout: real part of p2 (must be > 0)
             ; Real and Imag parts of p1 must be > 0
             ; Imag part of p2 must be non-zero
             ; Use periodicity=0
  z1 = c = pixel, mz1 = cabs(z1*z1+z1), k = real(p1)*mz1
  bailout = real(p2), z = imag(p1) :
  z1 = z1*z1 + c
  z1 = fn1(real(z1)) + flip(imag(z1)), mz1 = cabs(z1)
  IF (mz1 <= k)
    z1 = z1 + p3, mz1 = cabs(z1)
  ENDIF
  IF (mz1 < imag(p1))
    z = z1^imag(p2)
  ENDIF
  mz1 <= bailout
  ;SOURCE: gallet_9.frm
}


Gallet-9-04 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Aug 1997
             ; Bailout: real part of p2 (must be > 0)
             ; Real and Imag parts of p1 must be > 0
             ; Imag part of p2 must be non-zero
             ; Use periodicity=0
  z1 = c = pixel, mz1 = cabs(fn2(z1)), k = real(p1)*mz1
  bailout = real(p2), z = imag(p1) :
  z1 = z1*z1 + c
  z1 = fn1(real(z1)) + flip(imag(z1)), mz1 = cabs(z1)
  IF (mz1 <= k)
    z1 = z1 + p3, mz1 = cabs(z1)
  ENDIF
  IF (mz1 < imag(p1))
    z = z1^imag(p2)
  ENDIF
  mz1 <= bailout
  ;SOURCE: gallet_9.frm
}


Gallet-9-05 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Aug 1997
  z1 = c = pixel , r1 = |real(p1)*z1|
  r2 = imag(p1)*imag(p1)
  bailout = real(p2), z = 0 :
  z1 = fn1(z1) + c
  mz1 = |z1|
  IF (mz1 <= r1)
    z1 = z1 + p3, mz1 = cabs(z1)
  ENDIF
  IF (mz1 < r2)
    z = z1^imag(p2)
  ENDIF
  mz1 <= bailout
  ;SOURCE: 97msg.frm
}


Gallet-9-06 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Aug 1997
             ; Bailout: real part of p2 (must be > 0)
             ; Real and Imag parts of p1 must be > 0
             ; Imag part of p2 must be non-zero
             ; Use periodicity=0
  z1 = c = pixel, mz1 = cabs(z1), k = real(p1)*mz1
  bailout = real(p2), z = imag(p1) :
  z1 = z1*z1 + c
  z1 = fn1(real(z1)) + flip(fn2(imag(z1))), mz1 = cabs(z1)
  IF (mz1 <= k)
    z1 = z1 + p3, mz1 = cabs(z1)
  ENDIF
  IF (mz1 < imag(p1))
    z = z1^imag(p2)
  ENDIF
  mz1 <= bailout
  ;SOURCE: gallet_9.frm
}


Gallet-9-07 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Aug 1997
             ; Bailout: real part of p1 (must be > 0)
             ; Imag part of p1 must be > 0
             ; p2 must be non-zero
             ; Use periodicity=0
  z1 = c = pixel, mz1 = |z1|
  bailout = real(p1), z = 0 :
  mz1old = mz1
  z1 = z1*z1 + c
  z1 = fn1(z1), mz1 = |z1|
  IF (mz1 <= mz1old)
    z1 = z1 + p3, mz1 = |z1|
  ENDIF
  IF (mz1 < imag(p1))
    z = z1^p2
  ENDIF
  mz1 <= bailout
  ;SOURCE: gallet_9.frm
}


Gallet-9-08 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Aug 1997
             ; Bailout: real part of p2 (must be > 0)
             ; Real and Imag parts of p1 must be > 0
             ; Imag part of p2 must be non-zero
             ; Use periodicity=0
  z1 = c = pixel, mz1 = |z1*z1+z1|, k = real(p1)*mz1
  bailout = real(p2), z = imag(p1) :
  z1 = sqr(sqr(z1) + c) + c
  z1 = fn1(real(z1)) + flip(imag(z1)), mz1 = |z1|
  IF (mz1 <= k)
    z1 = z1 + p3, mz1 = |z1|
  ENDIF
  IF (mz1 < imag(p1))
    z = z1^imag(p2)
  ENDIF
  mz1 <= bailout
  ;SOURCE: gallet_9.frm
}


Gallet-PHC3-03b {; Sylvie Gallet [101324,3444], 1996
  z = pixel:
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(y*y+p2*fn2(y))
  y1 = y - p1*fn1(x*x+p2*fn2(x))
  z = x1+flip(y1)* (whitesq == 0) + (x1*y1) * whitesq
  |z| <= 4
  ;SOURCE: bj-phc02.frm
}


game {; Giuseppe Zito
  z = pixel
  c0 = 0.720608
  c5 = -0.82347
  c7 = -0.699613
  c10 = -0.453915
  c12 = 0.320233
  d4 = 0.388393
  d5 = -0.049251
  : 
  x = real(z), y = imag(z)
  s0 =c0
  s0 = s0 -x
  s1 = x
  s1 = s1 /x
  s1 = s1 +c5
  s1 = s1 -x
  s1 = s1 +c7
  s0 = s0 *s1
  s0 = s0 +x
  s0 = s0 *c10
  s0 = s0 /c12
  newx = s0 
  s0 = x
  s0 = s0 -d4
  s0 = s0 *d5
  s0 = s0 -y
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


Gamma(XAXIS) {; first order gamma function from Prof. Jm
              ; "It's pretty long to generate even on a 486-33 
              ;  comp but there's a lot of corners to zoom in and 
              ;  zoom and zoom...beautiful pictures :)"
  z=pixel, twopi=6.283185307179586, r=10:
  z=(twopi*z)^(0.5)*(z^z)*exp(-z)+pixel
  |z|<=r
  ;SOURCE: fractint.frm
}


Gamma1(XAXIS) {; Jm Collard-Richard
  z=pixel, twopi=6.283185307179586, r=10:
  z=(twopi*z)^(0.5)*(z^z)*exp(-z)*pixel
  |z|<=10   
  ;SOURCE: jmcr2.frm
}


Gamut {; Jim Muth
       ; As posted in Fractal-Art 4/24/97
  z=g=pixel, a=real(p1), b=imag(p1), c=real(p2)
  d=imag(p2), e=real(p3), f=imag(p3):
  h=z^a+(g-b)*z-g
  j=c*z^d+g
  z=z-e*h/j
  f <= |h|
  ;SOURCE: 97msg.frm
}


gap_jul {; Kerry MItchell 07sep98
        ;
        ; bails out when orbit falls in the gap between
        ; 2 lines.  lines specified as a*x + b*y = c1 (or c2)
        ; p1 = c = Julia parameter
        ; real(p2) = a
        ; imag(p2) = b
        ; real(p3) = c1
        ; imag(p3) = c2
        ; bailout = 1000, use decomp=256
        ;
  c=p1, zc=pixel, bailout=1e3, iter=1, done=0
  a=real(p2), b=imag(p2), c1=real(p3), c2=imag(p3)
  fac=pi*2/(c2-c1):
  iter=iter+1, zc=sqr(zc)+c
  q=a*real(zc)+b*imag(zc)
  IF ((q>=c1)&&(q<=c2))
    done=1
    t=(q-c1)*fac
    z=cos(t)+flip(sin(t))
  ENDIF
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    z=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


gap_man {; Kerry MItchell 07sep98
        ;
        ; bails out when orbit falls in the gap between
        ; 2 lines.  lines specified as a*x + b*y = c1 (or c2)
        ; real(p1) = a
        ; imag(p1) = b
        ; real(p2) = c1
        ; imag(p2) = c2
        ; bailout = 1000, use decomp=256
        ;
  zc=0, c=pixel, bailout=1e3, iter=1, done=0
  a=real(p1), b=imag(p1), c1=real(p2), c2=imag(p2)
  fac=pi*2/(c2-c1):
  iter=iter+1, zc=sqr(zc)+c
  q=a*real(zc)+b*imag(zc)
  IF ((q>=c1)&&(q<=c2))
    done=1
    t=(q-c1)*fac
    z=cos(t)+flip(sin(t))
  ENDIF
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    z=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


gapc_jul {; Kerry MItchell 07sep98
        ;
        ; bails out when orbit falls in the gap between
        ; 2 lines.  lines based on c.
        ; p1 = c = Julia parameter
        ; real(p2) determines y-intercept of 1st line
        ; imag(p2) determines y-intercept of 2nd line
        ; bailout = 1000, use decomp=256
        ;
  c=p1, zc=pixel, bailout=1e3, iter=1, done=0
  a=imag(c), b=-real(c), c1=real(p2), c2=imag(p2)
  fac=pi*2/(c2-c1):
  iter=iter+1, zc=sqr(zc)+c
  q=a*real(zc)+b*imag(zc)
  IF ((q>=c1)&&(q<=c2))
    done=1
    t=(q-c1)*fac
    z=cos(t)+flip(sin(t))
  ENDIF
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    z=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


gapc_man {; Kerry MItchell 07sep98
        ;
        ; bails out when orbit falls in the gap between
        ; 2 lines.  lines based on c.
        ; real(p1) determines y-intercept of 1st line
        ; imag(p1) determines y-intercept of 2nd line
        ; bailout = 1000, use decomp=256
        ;
  zc=pixel, c=pixel, bailout=1e3, iter=1, done=0
  a=imag(c), b=-real(c), c1=real(p1), c2=imag(p1)
  fac=pi*2/(c2-c1):
  iter=iter+1, zc=sqr(zc)+c
  q=a*real(zc)+b*imag(zc)
  IF ((q>=c1)&&(q<=c2))
    done=1
    t=(q-c1)*fac
    z=cos(t)+flip(sin(t))
  ENDIF
  IF ((|zc|>bailout)||(iter==maxit))
    done=1
    z=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


gaussint2_jul {
   ; colors Julia sets by angle of Gaussian integer that iteration
   ; comes closest to
   ; c=p1, bailout=real(p2), try 1e12
   ; use "decomp=256" coloring
  zc=pixel, c=p1, rmax=real(p2), rmin=1, z=zc:
  zc=sqr(zc)+c, zr=round(zc), q=|zc-zr|
  IF (q<rmin)
    rmin=q, z=zr
  ENDIF
  |zc| < rmax
  ;SOURCE: 97msg.frm
}


gaussintr_jul {; Kerry Mitchell
        ;
        ; Gaussian integer coloring of Julia sets
        ;   color by magnitude of nearest gaussian integer
        ;   inside and outside handled the same way
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; variable zc used for calculation; coloring done with z
        ;
  zc=pixel, c=p1, iter=1, rmax=real(p2), rmin=1:
        ;
        ; iteration
        ;   zr = gaussian integer
        ;   r = distance to zr
        ;   zmin = integer with minimum distance
        ;
  iter=iter+1, zc=sqr(zc)+c, zr=round(zc), r=|zc-zr|
  IF (r<rmin)
    rmin=r, zmin=zr
  ENDIF
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of magnitude of nearest gaussian integer as
        ;     decomposition angle
        ;
  IF ((|zc|>rmax)||(iter==maxit))
    iter=-1
    angle=log(cabs(zmin)+1)
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
;*********Kerry Mitchell's explanation of his "gauss" formulas********
;            narrative copyright Kerry Mitchell, 1998
;
; applicable to these formulas:
;     gaussintr_jul (above)
;     gaussintt_jul 
;     gaussinttot_jul 
;     gaussintr_man 
;     gaussintt_man 
;     gaussinttot_man 
;
;Gauss
;
;In the Fractint method bof60, the question of interest is how close
;the orbit comes to the origin (0+0i).  The origin is one of an infinity
;of "Gaussian integers."  These are complex numbers such that both the
;real and imaginary parts are integers.  Examples are:  (0,0), (-2,3),
;(17,-5), and (1000000,123456789).  The gaussian scheme is concerned with
;how close the orbit comes to a Gaussian integer.
;
;To find the gaussian integer which the orbit most closely approaches,
;the built-in function round() is used.  Round(zc) returns a complex
;number whose components are the rounded components of zc.  This is a
;Gaussian integer.  The distance from zc to round(zc) is simply the
;magnitude of zc - round(zc).  The gaussian method tracks this distance
;and records the value of zc for which the distance is the smallest.
;This value of zc is zmin.
;
;In the gaussintt methods (Julia and Mandelbrot variations), simply plots
;the polar angle of zmin, by assigning zmin to z and using the decomp
;coloring.  Since zmin can occur at any point in the orbit, there's no
;clear connection between the pixel value and the resulting color.
;However, nearby points can often have similar orbits, so the spots of
;constant color (polar angle) can have a variety of sizes.  Similar
;results are obtained with the gaussintr methods.  Here, the log of the
;magnitude of zmin is used as the polar angle for decomposition.
;
;For particular combinations of parameter c and initial zc, the orbit
;may be all Gaussian integers, for example, starting with zc=1 and c =
;(0,1).  For other combinations of zc and c, such as zc=0 and c=pi,
;the orbit will never be an integer.  Thus, it is reasonable to assume
;that some orbits will tend to be closer to integers than others.  This
;is illustrated with the gaussinttot methods.  A running sum of the
;distances, r, is kept for all iterations in the orbit.  The mean
;distance is then determined, and this is scaled into the decomposition
;angle.  The result is a grid-like pattern superimposed on the basic
;fractal structure.
;
;**********************************************************************
  ;SOURCE: 98msg.frm
}


gaussintr_man {; Kerry Mitchell
        ; See the end of gaussintr_jul for Kerry Mitchell's explanation 
        ; of the development of these "gauss" formulas.
        ;
        ; Gaussian integer coloring of Mandelbrot set
        ;   color by magnitude of nearest gaussian integer
        ;   inside and outside handled the same way
        ;
        ; use decomp=256
        ; real(p1) = bailout (try 1e12)
        ; variable zc used for calculation; coloring done with z
        ;
  zc=0, c=pixel, iter=1, rmax=real(p1), rmin=1:
        ;
        ; iteration
        ;   zr = gaussian integer
        ;   r = distance to zr
        ;   zmin = integer with minimum distance
        ;
  iter=iter+1, zc=sqr(zc)+c, zr=round(zc), r=|zc-zr|
  IF (r<rmin)
    rmin=r, zmin=zr
  ENDIF
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of magnitude of nearest gaussian integer as
        ;     decomposition angle
        ;
  IF ((|zc|>rmax)||(iter==maxit))
    iter=-1
    angle=log(cabs(zmin)+1)
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


gaussintt_jul {; Kerry Mitchell
        ; See the end of gaussintr_jul for Kerry Mitchell's explanation 
        ; of the development of these "gauss" formulas.
        ;
        ; Gaussian integer coloring of Mandelbrot set
        ;   color by polar angle of nearest gaussian integer
        ;   inside and outside handled the same way
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; variable zc used for calculation; coloring done with z
        ;
  zc=pixel, c=p1, rmax=real(p2), rmin=1, iter=1:
        ;
        ; iteration
        ;   zr = gaussian integer
        ;   r = distance to zr
        ;   zmin = integer with minimum distance
        ;
  iter=iter+1, zc=sqr(zc)+c, zr=round(zc), q=|zc-zr|
  IF (q<rmin)
    rmin=q, zmin=zr
  ENDIF
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   set z = nearest gaussian integer
        ;
  IF ((|zc|>rmax)||(iter==maxit))
    iter=-1
    z=zmin
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


gaussintt_man {; Kerry Mitchell
        ; See the end of gaussintr_jul for Kerry Mitchell's explanation 
        ; of the development of these "gauss" formulas.
        ;
        ; Gaussian integer coloring of Mandelbrot set
        ;   color by polar angle of nearest gaussian integer
        ;   inside and outside handled the same way
        ;
        ; use decomp=256
        ; real(p1) = bailout (try 1e12)
        ; variable zc used for calculation; coloring done with z
        ;
  zc=0, c=pixel, rmax=real(p1), rmin=1, iter=1:
        ;
        ; iteration
        ;   zr = gaussian integer
        ;   r = distance to zr
        ;   zmin = integer with minimum distance
        ;
  iter=iter+1, zc=sqr(zc)+c, zr=round(zc), q=|zc-zr|
  IF (q<rmin)
    rmin=q, zmin=zr
  ENDIF
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   set z = nearest gaussian integer
        ;
  IF ((|zc|>rmax)||(iter==maxit))
    iter=-1
    z=zmin
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


gaussinttot_jul {; Kerry Mitchell
        ; See the end of gaussintr_jul for Kerry Mitchell's explanation 
        ; of the development of these "gauss" formulas.
        ;
        ; Gaussian integer coloring of Julia sets
        ;   color by average distance to nearest integer
        ;   inside and outside handled the same way
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; imag(p2) = scaling factor (try 30)
        ; variable zc used for calculation; coloring done with z
        ;
  zc=pixel, c=p1, rmax=real(p2), scale=imag(p2)
  iter=1, rmin=1, z=zc, tot=0:
        ;
        ; iteration
        ;   zr = gaussian integer
        ;   r = distance to zr
        ;   zmin = integer with minimum distance
        ;   tot = running sum of r's
        ;
  iter=iter+1, zc=sqr(zc)+c, rzc=|zc|
  zr=round(zc), r=|zc-zr|, tot=tot+r
        ;
        ; bailout
        ;   scale average distance to decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
  IF ((rzc>rmax)||(iter==maxit))
    angle=scale*tot/(iter-1)
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


gaussinttot_man {; Kerry Mitchell
        ; See the end of gaussintr_jul for Kerry Mitchell's explanation 
        ; of the development of these "gauss" formulas.
        ;
        ; Gaussian integer coloring of Mandelbrot set
        ;   color by average distance to nearest integer
        ;   inside and outside handled the same way
        ;
        ; use decomp=256
        ; real(p1) = bailout (try 1e12)
        ; imag(p1) = scaling factor (try 30)
        ; variable zc used for calculation; coloring done with z
        ;
  zc=0, c=pixel, rmax=real(p1), scale=imag(p1)
  iter=1, rmin=1, z=zc, tot=0:
        ;
        ; iteration
        ;   zr = gaussian integer
        ;   r = distance to zr
        ;   zmin = integer with minimum distance
        ;   tot = running sum of r's
        ;
  iter=iter+1, zc=sqr(zc)+c, rzc=|zc|
  zr=round(zc), r=|zc-zr|, tot=tot+r
        ;
        ; bailout
        ;   scale average distance to decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
  IF ((rzc>rmax)||(iter==maxit))
    angle=scale*tot/(iter-1)
    z=cos(angle)+flip(sin(angle))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


Gen_01 {; generalized type
        ; p1=p2=0, fn1=fn2=fn3=ident, fn4=sqr gives Mandelbrot
  z=pixel, t=p1+4, q = (p2+1) * fn1(pixel):
  z=fn2(fn3(fn4(z))) + q
  |z|<=t
  ;SOURCE: ebbert.frm
}


general {; try p2=0.3 , p1=4
  z=pixel : 
  z=(p2*z^p1+pixel)/(p2*z^(p1-1)+pixel)
  |z|<=10
  ;SOURCE: ratz.frm
}


general_jul-2circ {; Kerry Mitchell 26aug98
        ; 
        ; See the end of the formula general_man-2circ for 
        ;    Kerry Mitchell's explanation of the "2 circles 
        ;    coloring method".
        ;
        ; "2 general circles" coloring method for Julia sets
        ; c = Julia parameter, hardcoded
        ; p1 = x-circle center
        ; p2 = y-circle center
        ; real(p3) = x-circle radius
        ; imag(p3) = y-circle radius
        ; bailout hardcoded to 10^12
        ; use "decomp=256" coloring
        ;
  zc=pixel, c=(0.39,0.44), bailout=1e12, iter=1, rmin=1e12
  cenx=p1, radx=real(p3), rad2x=radx*radx
  ceny=p2, rady=imag(p3), rad2y=rady*rady:
  iter=iter+1, zc=sqr(zc)+c
  tempx=|zc-cenx|-rad2x
  tempy=|zc-ceny|-rad2y
  temp=tempx+flip(tempy), r=|temp|
  IF (r<rmin)
    rmin=r, z=temp
  ENDIF
  IF ((|zc|>bailout)||(iter==maxit))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


general_jul-2lines {
        ;
        ; For an explanation of Kerry Mitchell's "2 lines coloring
        ;  method" see the end of formula general_man-2lines
        ;
        ; "2 general lines" coloring method for Julia sets
        ; c = Julia parameter, hardcoded
        ; real(p1) = x-line a
        ; imag(p1) = x-line b
        ; real(p2) = x-line c
        ; imag(p2) = y-line a
        ; real(p3) = y-line b
        ; imag(p3) = y-line c
        ; bailout hardcoded to 10^12
        ; use "decomp=256" coloring
        ;
  zc=pixel, c=(.26,.0014), bailout=1e12, iter=1, rmin=1e12
  ax=real(p1), bx=imag(p1), cx=real(p2)
  ay=imag(p2), by=real(p3), cy=imag(p3):
  iter=iter+1, zc=sqr(zc)+c
  x=real(zc), y=imag(zc)
  tempx=ax*x+bx*y+cx
  tempy=ay*x+by*y+cy
  temp=tempx+flip(tempy), r=|temp|
  IF (r<rmin)
    rmin=r, z=temp
  ENDIF
  IF ((|zc|>bailout)||(iter==maxit))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


general_jul-c&l {
        ; 
        ; For Kerry Mitchell's explanation of the "circle & line"
        ;    coloring method, see the end of formula
        ;    general_man-c&l
        ;
        ; "general circle & line" coloring method for Julia sets
        ; c = Julia parameter, hardcoded
        ; p1 = x-circle center
        ; real(p2) = x-circle radius
        ; imag(p2) = y-line a
        ; real(p3) = y-line b
        ; imag(p3) = y-line c
        ; bailout hardcoded to 10^12
        ; use "decomp=256" coloring
        ;
  zc=pixel, c=(0,1), bailout=1e12, iter=1, rmin=1e12
  cenx=p1, radx=real(p2), rad2x=radx*radx
  ay=imag(p2), by=real(p3), cy=imag(p3):
  iter=iter+1, zc=sqr(zc)+c
  tempx=|zc-cenx|-rad2x
  tempy=ay*real(zc)+by*imag(zc)+cy
  temp=tempx+flip(tempy), r=|temp|
  IF (r<rmin)
    rmin=r, z=temp
  ENDIF
  IF ((|zc|>bailout)||(iter==maxit))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


general_man-2circ {; Kerry Mitchell 26aug98 
        ;
        ; An explanation of Kerry Mitchell's 2 circle coloring method
        ;  is at the end of this formula
        ;
        ; "2 general circles" coloring method for Mandelbrot
        ; c = pixel = Mandelbrot parameter
        ; p1 = x-circle center
        ; p2 = y-circle center
        ; real(p3) = x-circle radius
        ; imag(p3) = y-circle radius
        ; bailout hardcoded to 10^12
        ; use "decomp=256" coloring
        ;
  c=pixel, zc=0, bailout=1e12, iter=1, rmin=1e12
  cenx=p1, radx=real(p3), rad2x=radx*radx
  ceny=p2, rady=imag(p3), rad2y=rady*rady:
  iter=iter+1, zc=sqr(zc)+c
  tempx=|zc-cenx|-rad2x
  tempy=|zc-ceny|-rad2y
  temp=tempx+flip(tempy), r=|temp|
  IF (r<rmin)
    rmin=r, z=temp
  ENDIF
  IF ((|zc|>bailout)||(iter==maxit))
    iter=-1
  ENDIF
  iter>0
;****KERRY MITCHELL'S EXPLANATION OF THE 2 CIRCLES COLORING METHOD***
;
;            narrative copyright Kerry Mitchell 26aug98
;
;    Related formulas:
;        general_jul-2circ
;        cenx=ceny_jul
;        cenx=-ceny_jul
;        offset_rx=ry_jul
;
; 2 Circles Coloring Method
;
; Several coloring schemes have been put together that color according 
; to the orbit's nearest approach to a specified point or curve.  This
; method extends that idea by coloring according to the orbit's nearest
; simultaneous approach to 2 specified circles.
;
; A circle in the x-y plane can be specified by (x - xcenter)^2 +
; (y - ycenter)^2 = radius^2, where (xcenter, ycenter) is the coordinate 
; of the center of the circle, and radius is the circle's radius.  For
; complex numbers z = x+i*y, (and center = xcenter+i*ycenter)
;
; f(z) = |z - center| - radius^2 (using Fractint's || convention)
;
; is a real-valued function that gives the relationship of z to the 
; circle.  If f(z) < 0, then z is inside the circle.  A positive
; value of f(z) means that z is outside of the circle, and f=0 means 
; that z is on the circle.
;
; Using 2 circles then results in 2 functions, fx(z) and fy(z).  One
; circle corresponds to fx, and the other to fy.  At each iteration,
; a new complex variable, w, can be defined as, w = fx(z)+i*fy(z).
; To check for the closest simultaneous approach of the orbit to both
; circles, it is sufficient to check for the smallest |w|.  This w is
; saved, and at the end of the iteration, "decomp=256" is used to color
; the pixel according to the polar angle of w.
;
; In its most general form, this method requires 6 real parameters:  
; 2 each for the x- and y-coordinates of the centers of the circles,
; and 2 for the radii of the 2 circles.  For Mandelbrot implementation,
; this requires hardcoding the bailout value, which has been set to 
; 10^12.  For Julia implementations, the bailout is also hardcoded, but
; another 2 parameters are needed to specify the Julia parameter, c.
; The "general_jul" formula is written with a hardcoded value of c, to
; allow for the greatest flexibility in choosing circles.
;
; A great deal of choice can still be allowed by only using 4 parameters
; to choose the circles, thereby freeing the other 2 for picking c.
; The "cenx=ceny_jul" method uses concentric circles (both having the 
; same center).  The radii of the circles are independently chosen.  
; A variation of this is the "cenx=-ceny_jul" formula, wherein the 
; centers of the circles are placed symmetrically with respect to the 
; origin of the complex plane.  Another variation uses the same radii
; for both circles, but different centers.  In "offset_rx=ry_jul", 
; this is accomplished by choosing a point on the plane.  One circle 
; is place a little outward of this point, and the other is a little
; inward of the chosen point.  The amount of shift along the radial
; line is 1 of the parameters.
; 
; Because of the wide variety of parameter settings, it's not possible
; to say what happens with the image as the circles are moved.  However,
; you'll get very different results if the circles don't intersect from
; when they do.  If they do intersect, you'll tend to see points in the
; image where all the colors come together (this corresponds to where
; the orbit found the intersection point).  Varied ribbon-like effects
; can be seen when the circles are very close to each other--either 
; concentric with slightly different radii, or offset by a small amount.
  ;SOURCE: 98msg.frm
}


general_man-2lines {
        ;
        ; An explanation of Kerry Mitchell's 2 lines coloring
        ;  method is at the end of this formula
        ;
        ; "2 general lines" coloring method for Mandelbrot
        ; c = pixel = Mandelbrot parameter
        ; real(p1) = x-line a
        ; imag(p1) = x-line b
        ; real(p2) = x-line c
        ; imag(p2) = y-line a
        ; real(p3) = y-line b
        ; imag(p3) = y-line c
        ; bailout hardcoded to 10^12
        ; use "decomp=256" coloring
        ;
  c=pixel, zc=0, bailout=1e12, iter=1, rmin=1e12
  ax=real(p1), bx=imag(p1), cx=real(p2)
  ay=imag(p2), by=real(p3), cy=imag(p3):
  iter=iter+1, zc=sqr(zc)+c
  x=real(zc), y=imag(zc)
  tempx=ax*x+bx*y+cx
  tempy=ay*x+by*y+cy
  temp=tempx+flip(tempy), r=|temp|
  IF (r<rmin)
    rmin=r, z=temp
  ENDIF
  IF ((|zc|>bailout)||(iter==maxit))
    iter=-1
  ENDIF
  iter>0
;**KERRY MITCHELL'S EXPLANATION OF THE 2 LINES COLORING METHOD***
;
;           narrative copyright Kerry Mitchell 26aug98
;
;   Related formulas:
;      general_jul-2lines
;      parallel_jul
;      orthogonal_jul
;      oppangle_jul
;
; 2 Lines Coloring Method
;
; Several coloring schemes have been put together that color according 
; to the orbit's nearest approach to a specified point or curve.  This
; method extends that idea by coloring according to the orbit's nearest
; simultaneous approach to 2 specified lines.
; 
; A line in the x-y plane can be specified by the standard form: a*x +
; b*y + c = 0, where the slope of the line = -a/b (when b=0, the line is
; vertical).  For complex numbers z = x+i*y, then function
;
; f(z) = a*real(z) + b*imag(z) + c
;
; is a real-valued function that gives the relationship of z to the 
; line.  If f(z) < 0, then z is on one side of the line, and if f(z) > 0,
; z is on the other side.  If f=0, then z is on the line.
;
; Using 2 lines then results in 2 functions, fx(z) and fy(z).  One line
; corresponds to fx, and the other to fy.  At each iteration, a new complex
; variable, w, can be defined as, w = fx(z)+i*fy(z).  To check for the
; closest simultaneous approach of the orbit to both lines, it is
; sufficient to check for the smallest |w|.  This w is saved, and at the
; end of the iteration, "decomp=256" is used to color the pixel according
; to the polar angle of w.
; 
; In its most general form, this method requires 6 real parameters:  
; 3 (a, b, c) for each line.  For Mandelbrot implementation, this requires
; hardcoding the bailout value, which has been set to 10^12.  For Julia
; implementations, the bailout is also hardcoded, but another 2 parameters
; are needed to specify the Julia parameter, c.  The "general_jul" formula
; is written with a hardcoded value of c, to allow for the greatest
; flexibility in choosing lines.
;
; A great deal of choice can still be allowed by only using 4 parameters
; to choose the lines, thereby freeing the other 2 for picking c.
; The "parallel_jul" method uses parallel lines.  A variation of this is
; the "orthogonal_jul" formula, wherein the lines meet at right angles.
; Another variation uses the opposite slopes for the 2 lines.  For example,
; if one line forms a 30 degree angle with the real axis, then the other
; line would make a -30 degree angle.
;
; Because of the wide variety of parameter settings, it's not possible
; to say what happens with the image as the lines are moved.  However,
; you'll get very different results if the lines don't intersect from
; when they do.  If they do intersect, you'll tend to see points in the
; image where all the colors come together (this corresponds to where
; the orbit found the intersection point).  Varied ribbon-like effects
; can be seen when the lines are very close to each other--either 
; parallel with a small gap between them, or with slightly different slopes.
;        
  ;SOURCE: 98msg.frm
}


general_man-c&l {
        ;
        ; Kerry Mitchell's explanation of the "circle & line 
        ;  coloring method" is at the end of this formula.
        ;
        ; "general circle & line" coloring method for Mandelbrot
        ; c = pixel = Mandelbrot parameter
        ; p1 = x-circle center
        ; real(p2) = x-circle radius
        ; imag(p2) = y-line a
        ; real(p3) = y-line b
        ; imag(p3) = y-line c
        ; bailout hardcoded to 10^12
        ; use "decomp=256" coloring
        ;
  c=pixel, zc=0, bailout=1e12, iter=1, rmin=1e12
  cenx=p1, radx=real(p2), rad2x=radx*radx
  ay=imag(p2), by=real(p3), cy=imag(p3):
  iter=iter+1, zc=sqr(zc)+c
  tempx=|zc-cenx|-rad2x
  tempy=ay*real(zc)+by*imag(zc)+cy
  temp=tempx+flip(tempy), r=|temp|
  IF (r<rmin)
    rmin=r, z=temp
  ENDIF
  IF ((|zc|>bailout)||(iter==maxit))
    iter=-1
  ENDIF
  iter>0
;***KERRY MITCHELL'S EXPLANATION OF THE CIRCLE & LINE COLORING METHOD**
;
;         narrative copyright Kerry Mitchell 26aug98
;
;    Related formulas:
;         general_jul-c&l
;         center_jul
;         tangent_jul
;         offset_jul
;
; Circle & Line Coloring Method
;
; Several coloring schemes have been put together that color according 
; to the orbit's nearest approach to a specified point or curve.  This
; method extends that idea by coloring according to the orbit's nearest
; simultaneous approach to a circle and a line.
;
; A circle in the x-y plane can be specified by (x - xcenter)^2 +
; (y - ycenter)^2 = radius^2, where (xcenter, ycenter) is the coordinate 
; of the center of the circle, and radius is the circle's radius.  For
; complex numbers z = x+i*y, (and center = xcenter+i*ycenter)
;
; f(z) = |z - center| - radius^2 (using Fractint's || convention)
;
; is a real-valued function that gives the relationship of z to the 
; circle.  If f(z) < 0, then z is inside the circle.  A positive
; value of f(z) means that z is outside of the circle, and f=0 means 
; that z is on the circle.
;
; A line in the x-y plane can be specified by the standard form: a*x +
; b*y + c = 0, where the slope of the line = -a/b (when b=0, the line is
; vertical).  For complex numbers z = x+i*y, then function
;
; f(z) = a*real(z) + b*imag(z) + c
;
; is a real-valued function that gives the relationship of z to the 
; line.  If f(z) < 0, then z is on one side of the line, and if f(z) > 0,
; z is on the other side.  If f=0, then z is on the line.
;
; Using both a circle and a line then results in 2 functions, fx(z) and
; fy(z).  The circle corresponds to fx, and the line to fy.  At each
; iteration, a new complex variable, w, can be defined as, w = fx(z) +
; i*fy(z).  To check for the closest simultaneous approach of the orbit
; to both curves, it is sufficient to check for the smallest |w|.  This
; w is saved, and at the end of the iteration, "decomp=256" is used to
; color the pixel according to the polar angle of w.
;
; In its most general form, this method requires 6 real parameters:  
; 2 for the x- and y-coordinates of the center of the circles and 1 for
; its radius, and 3 (a, b, c) for the line.  For Mandelbrot implementation,
; this requires hardcoding the bailout value, which has been set to 
; 10^12.  For Julia implementations, the bailout is also hardcoded, but
; another 2 parameters are needed to specify the Julia parameter, c.
; The "general_jul" formula is written with a hardcoded value of c, to
; allow for the greatest flexibility in choosing the circle and line.
;
; A great deal of choice can still be allowed by only using 4 parameters
; to choose the curves, thereby freeing the other 2 for picking c.
; The "center_jul" formula uses a diametric line through the center of
; the circle.  The radius of the circle and the slope of the line are
; independently chosen.  A variation of this is the "tangent_jul"
; formula, wherein the line is tangent to the circle.  The point of
; tangency is at a specified angle on the circle.  Another variation is
; the "offset_jul" formula.  This is similar to the tangent formula, but
; the line is offset from the circle by the amount of the radius.
;
; Because of the wide variety of parameter settings, it's not possible
; to say what happens with the image as the curves are moved.  However,
; you'll get very different results if they don't intersect from when
; they do.  If they do intersect, you'll tend to see points in the
; image where all the colors come together (this corresponds to where
; the orbit found the intersection point).
;
  ;SOURCE: 98msg.frm
}


GenInvJm1N1-J {; Jm Collard-Richard
  z=1/(pixel^p2):
  z=fn1(z^p2)*fn2(z^p2)+fn3(fn4(p1))
  |z|<=4         
  ;SOURCE: jmcr1.frm
}


GenInvJm1N1-M {; Jm Collard-Richard
  c=z=1/(pixel^p2):
  z=fn1(z^p2)*fn2(z^p2)+fn3(fn4(c))
  |z|<=4         
  ;SOURCE: jmcr1.frm
}


GenInvJm1N2-J {; Jm Collard-Richard
  z=1/(pixel^p2):
  z=fn1(z)*fn2(z)+fn3(fn4(p1))
  |z|<=4         
  ;SOURCE: jmcr1.frm
}


GenInvJm1N2-M {; Jm Collard-Richard
  c=z=1/(pixel^p2):
  z=fn1(z)*fn2(z)+fn3(fn4(c))
  |z|<=4         
  ;SOURCE: jmcr1.frm
}


GenInvJmN-J {;Jm Collard-Richard
             ; Voir Rem de GenMand_N et InvJmN-J
  z=1/(pixel^p2):
  z=fn1(fn2(z^p2))+fn3(fn4(p1))
  |z|<=4         
  ;SOURCE: jmcr1.frm
}


GenInvJmN-M {; Jm Collard-Richard
             ; voir Rem de GenMand_N et InvJmN-M
  c=z=1/(pixel^p2):
  z=fn1(fn2(z^p2))+fn3(fn4(c))
  |z|<=4         
  ;SOURCE: jmcr1.frm
}


GenInvJul1_N {; Jm Collard-Richard
  z=1/pixel:
  z=fn1(z)*fn2(z)+fn3(fn4(p1))
  |z|<=4         
  ;SOURCE: jmcr1.frm
}


GenInvJul_N {; Jm Collard-Richard (voir Rem de GenMand_N)
  z=1/pixel:
  z=fn1(fn2(z^p2))+fn3(fn4(p1))
  |z|<=4         
  ;SOURCE: jmcr1.frm
}


GenInvMand1_N {; Jm Collard-Richard
  c=z=1/pixel:
  z=fn1(z)*fn2(z)+fn3(fn4(c))
  |z|<=4
  ;SOURCE: fractint.frm
}


GenInvMand_N {; Jm Collard-Richard (voir Rem de GenMand_N)
  c=z=1/pixel:
  z=fn1(fn2(z^p2))+fn3(fn4(c))
  |z|<=4         
  ;SOURCE: jmcr1.frm
}


GenJul1_N {; Jm Collard-Richard
  z=pixel:
  z=fn1(z)*fn2(z)+fn3(fn4(p1))
  |z|<=4         
  ;SOURCE: jmcr1.frm
}


GenJul_N {; Jm Collard-Richard  (voir Rem de GenMand_N)
  z=pixel:
  z=fn1(fn2(z^p2))+fn3(fn4(p1))
  |z|<=4         
  ;SOURCE: jmcr1.frm
}


GenMand1_N {; Jm Collard-Richard
  c=z=pixel:
  z=fn1(z)*fn2(z)+fn3(fn4(c))
  |z|<=4         
  ;SOURCE: jmcr1.frm
}


GenMand_N {;Jm Collard-Richard
           ; fn1=flip fn2=conj ... fn3=conj fn4=ident ...
           ; fn3=flip fn4=ident   etc ...
  c=z=pixel:
  z=fn1(fn2(z^p2))+fn3(fn4(c))
  |z|<=4         
  ;SOURCE: jmcr1.frm
}


geyser {; Giuseppe Zito
  z = pixel
  c1 = -0.924325
  c8 = 0.601532
  d0 = -0.308613
  d1 = -0.818563
  : 
  x = real(z), y = imag(z)
  s0 = x
  s0 = s0 *c1
  s0 = s0 /x
  s1 = y
  s1 = s1 /x
  s1 = s1 *c8
  s1 = s1 *y
  s1 = s1 +x
  s0 = s0 *s1
  newx = s0 
  s0 =d0
  s0 = s0 -d1
  s1 = x
  s0 = s0 -s1
  s0 = s0 *y
  s0 = s0 /x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


gfpcau03 {; Formula by Gedeon Peteri
  z=flip(1/pixel):
  c=asin(imag(z)/cabs(z))
  x=.75*cos(c)-.25*cos(3*c)
  y=.75*sin(c)-.25*sin(3*c)
  z=fn1(z^p1)+p2*fn2(x-flip(y))
  |z|<=p3
  ;SOURCE: fraczoo.frm
}


gfpcyc01 {; Gedeon Peteri
  z=fn1(pixel):
  c=asin(imag(z)/cabs(z))
  x=z*(c-sin(c)), y=z*(1-cos(c))
  z=fn2(z^p1) + p2*fn3(x+y)
  |z|<=p3
  ;SOURCE: 98msg.frm
}


gfpdvc01 {; Inspired by equation of a damped vibration curve
  z=fn1(1/pixel):
  y=p1*exp(p2*z)*fn2(p3*z)
  z=fn3(z*z) - y
  |z|<=16
  ;SOURCE: 98msg.frm
}


gfpeul01 {; Eulers's equation e^(ipi)+1=0
  z=fn1(pixel):
  z=fn2(z^p1) + p2*fn3(exp(imag(z)*pi)+1)
  |z|<=p3
  ;SOURCE: gfpeuler.frm
}


gfpeul02 {; Eulers's equation e^(ipi)+1=0
  z=fn1(pixel):
  z=fn2(z^p1) + p2*fn3(exp(imag(z)*pi)-1)
  |z|<=p3
  ;SOURCE: gfpeuler.frm
}


gfpeul03 {; Eulers's equation e^(ipi)+1=0
  z=c=pixel:
  z=fn1(z^p1) + p2*fn2(exp(imag(c)*pi)+1)
  |z|<=p3
  ;SOURCE: gfpeuler.frm
}


gfphsp01 {; r=-a/(t^2)
  z=fn1(pixel), a=real(p3), b=imag(p3):
  z=fn2(z^p1) + p2*fn3(-a/(z*z))
  |z|<=b
  ;SOURCE: 99msg.frm
}


gfplob01 {; Lemniscate of Bernoulli
  z=fn1(pixel), x=real(z), y=imag(z):
  z=fn2(z^p1)+fn3(x*x-y*y-sqr(x*x+y*y))
  |z|<=4 + p2
  ;SOURCE: 99msg.frm
}


gfpngl01 {; Formula by Gedeon Peteri
  z=fn1(pixel):
  c=asin(imag(z)/cabs(z))
  z=fn2(z^p1) - p2*1/fn3(sqrt(abs(sin(c+pi/3)))+sqrt(abs(sin(c+2*pi/3))))
  |z|<=p3
  ;SOURCE: fraczoo.frm
}


ghost {; Demonstrates strange parser behavior
       ; To see effect, use floating point and make sure
       ; FN2() is not IDENT
  z = oldz = c1 = pixel, c2 = fn1(pixel)
  tgt = fn2(pixel), rt = real(tgt), it = imag(tgt):
  oldx = real(oldz) - rt
  oldy = imag(oldz) - it
  olddist = (oldx * oldx) + (oldy * oldy)
  x = real(z) - rt
  y = imag(z) - it
  dist = (x * x) + (y * y)
  a = (dist <= olddist) * (c1)
  b = (olddist < dist)  * (c2)
  oldz = z
  z = z*z + a + b
  |z| <= 4
  ;SOURCE: frmtutor.frm
}


ghost-horiz_jul {; Kerry Mitchell
        ; For Kerry Mitchell's explanation of his "ghost" formulas, see
        ;   the end of formula ghost_jul
        ;
        ; colors Julia sets by combining the smoothed iteration
        ; with a background of horizontal lines
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout
        ; imag(p2) = "ghost" adjustment: set to 0 for only
        ;   background rays, try 2
        ; calculation performed on variable zc, z used for coloring
        ;
  maxr=real(p2), scale=imag(p2)*pi/128
  ol2=1/log(2), fac=log(0.5*log(maxr))
  iter=1, zc=pixel, c=p1
        ;
        ; generate horizontal lines
        ;
  yc=(imag(scrnmax)-1)/2, y=imag(scrnpix)
  t=y/yc*pi, background=cos(t)+flip(sin(t))
  :
  iter=iter+1, zc=sqr(zc)+c
        ;
        ; bailout
        ;   compute smoothed iteration as "angle"
        ;   multiply angle by background to get final z
        ;   set z to background for interior points
        ;   set "iteration done" flag (iter=-1)
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    smooth=(iter+ol2*(fac-log(log(cabs(zc)))))*scale
    angle=cos(smooth)+flip(sin(smooth))
    z=background*angle
    IF (iter==maxit)
      z=background
    ENDIF
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


ghost-horiz_man {; Kerry Mitchell
        ; For Kerry Mitchell's explanation of his "ghost" formulas, see
        ;   the end of formula ghost_jul
        ;
        ; colors Mandelbrot set by combining the smoothed iteration
        ; with a background of horizontal lines
        ;
        ; use decomp=256
        ; real(p1) = bailout
        ; imag(p1) = "ghost" adjustment: set to 0 for only
        ;   background rays, try 2
        ; calculation performed on variable zc, z used for coloring
        ;
  maxr=real(p1), scale=imag(p1)*pi/128
  ol2=1/log(2), fac=log(0.5*log(maxr))
  iter=1, zc=0, c=pixel
        ;
        ; generate horizontal lines
        ;
  yc=(imag(scrnmax)-1)/2, y=imag(scrnpix)
  t=y/yc*pi, background=cos(t)+flip(sin(t))
  :
  iter=iter+1, zc=sqr(zc)+c
        ;
        ; bailout
        ;   compute smoothed iteration as "angle"
        ;   multiply angle by background to get final z
        ;   set z to background for interior points
        ;   set "iteration done" flag (iter=-1)
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    smooth=(iter+ol2*(fac-log(log(cabs(zc)))))*scale
    angle=cos(smooth)+flip(sin(smooth))
    z=background*angle
    IF (iter==maxit)
      z=background
    ENDIF
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


ghost-vert_jul {; Kerry Mitchell
        ; For Kerry Mitchell's explanation of his "ghost" formulas, see
        ;   the end of formula ghost_jul
        ;
        ; colors Julia sets by combining the smoothed iteration
        ; with a background of vertical lines
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout
        ; imag(p2) = "ghost" adjustment: set to 0 for only
        ;   background rays, try 2
        ; calculation performed on variable zc, z used for coloring
        ;
  maxr=real(p2), scale=imag(p2)*pi/128
  ol2=1/log(2), fac=log(0.5*log(maxr))
  iter=1, zc=pixel, c=p1
        ;
        ; generate vertical lines
        ;
  xc=(real(scrnmax)-1)/2, x=real(scrnpix)
  t=x/xc*pi, background=cos(t)+flip(sin(t))
  :
  iter=iter+1, zc=sqr(zc)+c
        ;
        ; bailout
        ;   compute smoothed iteration as "angle"
        ;   multiply angle by background to get final z
        ;   set z to background for interior points
        ;   set "iteration done" flag (iter=-1)
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    smooth=(iter+ol2*(fac-log(log(cabs(zc)))))*scale
    angle=cos(smooth)+flip(sin(smooth))
    z=background*angle
    IF (iter==maxit)
      z=background
    ENDIF
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


ghost-vert_man {; Kerry Mitchell
        ; For Kerry Mitchell's explanation of his "ghost" formulas, see
        ;   the end of formula ghost_jul
        ;
        ; colors Mandelbrot set by combining the smoothed iteration
        ; with a background of vertical lines
        ;
        ; use decomp=256
        ; real(p1) = bailout
        ; imag(p1) = "ghost" adjustment: set to 0 for only
        ;   background rays, try 2
        ; calculation performed on variable zc, z used for coloring
        ;
  maxr=real(p1), scale=imag(p1)*pi/128
  ol2=1/log(2), fac=log(0.5*log(maxr))
  iter=1, zc=0, c=pixel
        ;
        ; generate vertical lines
        ;
  xc=(real(scrnmax)-1)/2, x=real(scrnpix)
  t=x/xc*pi, background=cos(t)+flip(sin(t))
  :
  iter=iter+1, zc=sqr(zc)+c
        ;
        ; bailout
        ;   compute smoothed iteration as "angle"
        ;   multiply angle by background to get final z
        ;   set z to background for interior points
        ;   set "iteration done" flag (iter=-1)
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    smooth=(iter+ol2*(fac-log(log(cabs(zc)))))*scale
    angle=cos(smooth)+flip(sin(smooth))
    z=background*angle
    IF (iter==maxit)
      z=background
    ENDIF
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


ghost_jul {; Kerry Mitchell
        ;
        ; colors Julia sets by combining the smoothed iteration
        ; with a background of rays from the center
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout
        ; imag(p2) = "ghost" adjustment: set to 0 for only
        ;   background rays, try 2
        ; calculation performed on variable zc, z used for coloring
        ;
  maxr=real(p2), scale=imag(p2)*pi/128
  ol2=1/log(2), fac=log(0.5*log(maxr))
  iter=1, zc=pixel, c=p1, background=pixel
  :
  iter=iter+1, zc=sqr(zc)+c
        ;
        ; bailout
        ;   compute smoothed iteration as "angle"
        ;   multiply angle by background to get final z
        ;   set z to background for interior points
        ;   set "iteration done" flag (iter=-1)
        ;
   IF ((|zc|>maxr)||(iter==maxit))
     smooth=(iter+ol2*(fac-log(log(cabs(zc)))))*scale
     angle=cos(smooth)+flip(sin(smooth))
     z=background*angle
     IF (iter==maxit)
       z=background
     ENDIF
     iter=-1
   ENDIF
   iter>0
;********Kerry Mitchell's explanation of his "ghost" formulas
;           narrative copyright Kerry Mitchell, 1998
;  Applicable formulas:
;     ghost_jul (above)
;     ghost_man
;     ghost-horiz_jul
;     ghost-vert_jul
;     ghost-horiz_man
;     ghost-vert_man
;
;Ghost
;
;In the ghost coloring scheme, you can make the fractal appear or disappear
;against a gradient background.  It is based on the iteration smoothing
;routine of Linas Vepstas, and uses an adjustable parameter to determine
;how prevalent the fractal appears.
;
;The iteration smoothing technique works by letting the iterate go much
;beyond the required escape radius of 4, and converting its geometric
;growth into a real number.  When combined with the original iteration
;number, the result is a real number that can be plotted continuously
;with the decomposition (or outside=real) methods.  Here, the smoothed
;iteration count is scaled and made the polar angle for the decomposition
;coloring.
;
;The backgrounds for these images are gradients (using smooth color maps),
;running horizontally, vertically, or in rays from the origin (point 0+0i).
;In the latter case, the background is simply the polar angle of the pixel,
;which may or may not be centered on the screen, depending on the zoom of
;the image.  In the former two cases, the gradients are dynamically set to
;use the full color range irrespective of the pixel coordinates.  In any
;case, the background is represented by an angle, for use with decomposition.
;
;Given angles for both the iteration count and the background image, they
;are combined using the "ghost" parameter.  The iteration angle is scaled
;by "ghost" and added to the background angle.  When the ghost level is
;set to zero, then only the background angle remains, and that is what is
;shown in the image.  Increasing the ghost level results in the background
;being subtly, then significantly, perturbed by the fractal.  The disturbance
;starts with the highest iteration levels first (except that interior points
;are assigned 0 iteration, to clarify the boundary), and propagates to the
;lower iterations as the ghostliness is increased.  The effect on the image
;is to see the background gradient smoothly displaced by the fractal, but
;to not see the fractal directly.
;
;The best uses of this scheme seems to be on Julia dust (non-connected)
;fractals, in which there is lots of "empty" space for the background to
;show through.
;
;***********************************************************************
  ;SOURCE: 98msg.frm
}


ghost_man {; Kerry Mitchell
        ; For Kerry Mitchell's explanation of his "ghost" formulas, see
        ;   the end of formula ghost_jul
        ;
        ; colors Mandelbrot set by combining the smoothed iteration
        ; with a background of rays from the center
        ;
        ; use decomp=256
        ; real(p1) = bailout
        ; imag(p1) = "ghost" adjustment: set to 0 for only
        ;   background rays, try 2
        ; calculation performed on variable zc, z used for coloring
        ;
  maxr=real(p1), scale=imag(p1)*pi/128
  ol2=1/log(2), fac=log(0.5*log(maxr))
  iter=1, zc=0, c=pixel, background=pixel
  :
  iter=iter+1, zc=sqr(zc)+c
        ;
        ; bailout
        ;   compute smoothed iteration as "angle"
        ;   multiply angle by background to get final z
        ;   set z to background for interior points
        ;   set "iteration done" flag (iter=-1)
        ;
  IF ((|zc|>maxr)||(iter==maxit))
    smooth=(iter+ol2*(fac-log(log(cabs(zc)))))*scale
    angle=cos(smooth)+flip(sin(smooth))
    z=background*angle
    IF (iter==maxit)
      z=background
    ENDIF
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


ghostless-A {; One solution to the ghost problem  -- reorder expressions
  z = oldz = c1 = pixel, c2 = fn1(pixel)
  tgt = fn2(pixel), rt = real(tgt), it = imag(tgt):
  oldx = real(oldz) - rt
  oldy = imag(oldz) - it
  olddist = (oldx * oldx) + (oldy * oldy)
  x = real(z) - rt
  y = imag(z) - it
  dist = (x * x) + (y * y)
  a = (c1) * (dist <= olddist) ;Reverse order of value and comparison
  b = (c2) * (olddist < dist)  ;Ditto
  oldz = z
  z = z*z + a + b
  |z| <= 4
  ;SOURCE: frmtutor.frm
}


ghostless-B {; Another solution to the ghost problem -- reinitialize
  z = oldz = c1 = pixel, c2 = fn1(pixel)
  tgt = fn2(pixel), rt = real(tgt), it = imag(tgt):
  oldx = real(oldz) - rt
  oldy = imag(oldz) - it
  olddist = (oldx * oldx) + (oldy * oldy)
  x = real(z) - rt
  y = imag(z) - it
  dist = (x * x) + (y * y)
  a = b = 0                    ;Make sure a & b are set to zero
  a = (dist <= olddist) * (c1)
  b = (olddist < dist) * (c2)
  oldz = z
  z = z*z + a + b
  |z| <= 4
  ;SOURCE: frmtutor.frm
}


ghostless-C {; Yet another solution -- simplify!
  z = c1 = pixel, c2 = fn1(pixel), olddist = 100
  tgt = fn2(pixel), rt = real(tgt), it = imag(tgt):
  x = real(z) - rt
  y = imag(z) - it
  dist = (x * x) + (y * y)
  a = (dist <= olddist) * (c1)
  b = (olddist < dist)  * (c2)
  olddist = dist
  z = z*z + a + b
  |z| <= 4
  ;SOURCE: frmtutor.frm
}


gift {; Giuseppe Zito
  z = pixel
  c4 = 0.027719
  c5 = 0.044146
  d6 = -0.066358
  d7 = -0.129687
  d8 = -0.150311
  d13 = 0.466606
  d17 = -0.047804
  : 
  x = real(z), y = imag(z)
  s0 = y
  s0 = s0 *y
  s0 = s0 *c4
  s0 = s0 -c5
  s0 = s0 +y
  newx = s0 
  s0 = x
  s0 = s0 /x
  s0 = s0 *x
  s0 = s0 -x
  s1 =d6
  s1 = s1 -d7
  s1 = s1 +d8
  s1 = s1 -x
  s0 = s0 *s1
  s0 = s0 *x
  s0 = s0 *y
  s0 = s0 -d13
  s0 = s0 *y
  s0 = s0 -d17
  s0 = s0 -x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


Ginger  {; <sylvie_gallet@compuserve.com>
  z = z0 = pixel:
  x = 1 - imag(z) + abs(real(z))
  y = real(z)
  z = x + flip(y)
  |z - z0| >= p1
  ;SOURCE: ginger.par
}


Gita {
  z = pixel + p1:
  r = fn1(tan(1/z)) + pixel + 1
  z = (z*r)/fn2(r)
  |z| < 4
  ;SOURCE: shakti.frm
}


globe (XAXIS) {
   ; Will it work with just a square root?
  z = pixel, zp = (0,0):
  temp = z
  z = z^.5 - zp
  zp = temp
  |zp| <= 4 
  ;SOURCE: noel.frm
}


Glow (XAXIS) {; Try params=2/50/0/0
  c=z=pixel: 
  z=z^Real(p1)+c 
  |Real(z)|<=Imag(p1)
  ;SOURCE: fractfun.frm
}


GLYNN (XAXIS) {; Based on an illustration in Science PROBE!  and a
   ; formula by Earl Glynn in Computers and the Imagination,
   ; by Clifford Pickover.   Try p1 = 1.5, p2 = -0.2
   ; Jon Horner, FRAC'Cetera
   ;
  z = pixel :
  z = z ^ p1 + p2
  |z| <=4 
  ;SOURCE: fract001.frm
}


glynnout1 {; Mutation of GLYNN, by Bradley Beacham  [74223,2745]
           ; Original formula by Jon Horner [100112,1700]
           ; in-and-out relative to origin
  z = oldz = pixel:
  in  =  p2 * (|z| <= |oldz|)
  out = -p2 * (|oldz| < |z|)
  oldz = z
  z = fn1(z)^p1 + in + out
  |z| <= 4
  ;SOURCE: zsazsa.frm
}


glynnout2 {; Mutation of GLYNN, by Bradley Beacham  [74223,2745]
           ; Original formula by Jon Horner [100112,1700]
           ; in-and-out relative to origin
  z = oldz = pixel, k1 = fn1(p2), k2 = fn2(p2):
  in  = k1 * (|z| <= |oldz|)
  out = k2 * (|oldz| < |z|)
  oldz = z
  z = z^p1 + in + out
  |z| <= 4
  ;SOURCE: zsazsa.frm
}


glynnout3 {; Mutation of GLYNN, by Bradley Beacham  [74223,2745]
           ; Original formula by Jon Horner [100112,1700]
           ; in-and-out relative to fn1(pixel)
           ; p1 = Parameter (default 0), p2 = Parameter (default 0)
  z = pixel, tgt = fn1(pixel), rt=real(tgt), it=imag(tgt)
  olddist = 100:
  x = real(z) - rt
  y = imag(z) - it
  dist = x*x + y*y
  in  =  p2 * (dist <= olddist)
  out = -p2 * (olddist < dist)
  olddist = dist
  z = fn2(z^p1 + in + out)
  |z| <= 4
  ;SOURCE: zsazsa.frm
}


Gmandel_1 {; Sylvie Gallet 1995
           ; bailout = p1
  z=pixel/(conj(pixel)+(0.0,1.0)) 
  c=(1/pixel)/(flip(conj(pixel))-1.0) :
  z=z^2+c
  |z| <= p1
  ;SOURCE: forummsg.frm
}


Gmandel_2_b {; Sylvie Gallet [101324,3444]
             ; Robert W. Carr [73753,2420], 1995
  z = pixel/(conj(pixel)+(0.0,1.0)) 
  c = (1/pixel)/(flip(conj(pixel))-1.0) :
  c = z+c/2.125, z = z^2+c
  |real(z)| <= 4
  ;SOURCE: gallet-1.frm
}


Gmandel_3 {; Sylvie Gallet [101324,3444]
           ; Robert W. Carr [73753,2420], 1995
  z = pixel/(conj(pixel)+(0.0,1.0)) 
  c = (1/pixel)/(flip(conj(pixel))-1.0) :
  c = ((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  z = z^2+c
  |real(z)| <= 4
  ;SOURCE: gallet-1.frm
}


Gmandel_3_b {; Sylvie Gallet [101324,3444]
             ; Robert W. Carr [73753,2420], 1995
  z = pixel/(conj(pixel)+(0.0,1.0)) 
  c = (1/pixel)/(flip(conj(pixel))-1.0) :
  z = z^2+c
  c = ((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <= 4
  ;SOURCE: gallet-1.frm
}


goat (XAXIS) {
   ; What about a root of the negative sum?
  z = pixel, zp = (0,0):
  temp = z
  z = z*z + zp
  zp = (-temp)^.5
  |zp| <= 4 
  ;SOURCE: noel.frm
}


Gopalsamy1 {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = -2*x*y + p1
  y = y*y - x*x
  z = x1 + flip(y) 
  |z| <= 4
  ;SOURCE: reb003.frm
}


Gopalsamy2 {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = -4*x*y + p1
  y = 4*y*y - x*x
  z = x1 + flip(y) 
  |z| <= 4
  ;SOURCE: reb003.frm
}


Gopalsamy3 {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = 3*x*y*y - x*x*x + p1
  y = y*y*y - 3*x*x*y
  z = x1 + flip(y) 
  |z| <= 4
  ;SOURCE: reb003.frm
}


Gopalsamy4 {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = -x*y + p1
  y = 2*y*y - 3*x*x
  z = x1 + flip(y) 
  |z| <= 4
  ;SOURCE: reb003.frm
}


Gopalsamy5 {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = 2*x*y
  y1 = x*x - y*y
  x2 = -2*x1*y1 + p1
  y = y1*y1 - x1*x1
  z = x2 + flip(y) 
  |z| <= 4
  ;SOURCE: reb003.frm
}


GopalsamyExp {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = -exp(x)*cos(y) + p1
  y = -exp(x)*sin(y)
  z = x1 + flip(y) 
  |z| <= 100
  ;SOURCE: reb003.frm
}


GopalsamyExp2 {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = exp(x)*cos(y)
  y1 = exp(x)*sin(y)
  x2 = -2*x1*y1 + p1
  y = y1*y1 - x1*x1
  z = x2 + flip(y) 
  |z| <= 100
  ;SOURCE: reb003.frm
}


GopalsamyFn {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = fn1(x)*fn2(y)
  y1 = fn3(x)*fn4(y)
  x2 = -2*x1*y1 + p1
  y = y1*y1 - x1*x1
  z = x2 + flip(y)
  |z| <= 100
  ;SOURCE: fractint.frm
}


GopalsamySin {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = -sin(x)*cosh(y) + p1
  y = -cos(x)*sinh(y)
  z = x1 + flip(y) 
  |z| <= 100
  ;SOURCE: reb003.frm
}


GopalsamySin2 {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = sin(x)*cosh(y)
  y1 = cos(x)*sinh(y)
  x2 = -2*x1*y1 + p1
  y = y1*y1 - x1*x1
  z = x2 + flip(y) 
  |z| <= 100
  ;SOURCE: reb003.frm
}


GopalsamySinh {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = -sin(x)*cosh(y) + p1
  y = -cos(x)*sinh(y)
  z = x1 + flip(y) 
  |z| <= 100
  ;SOURCE: reb003.frm
}


GopalsamySinh2 {
  z = pixel:
  x = real(z), y = imag(z)
  x1 = sinh(x)*cos(y)
  y1 = cosh(x)*sin(y)
  x2 = -2*x1*y1 + p1
  y = y1*y1 - x1*x1
  z = x2 + flip(y) 
  |z| <= 100
  ;SOURCE: reb003.frm
}


gothic {; Jim Muth
        ; A variation of Chris Green's HyperMandel
        ; As Posted in Fractal-Art, 4/23/97
  a=(p1),b=(0,0):
  q=sqr(a)-sqr(b)+pixel
  b=p2*a*b+p3
  a=q
  |a|+|b| <= 100
  ;SOURCE: 97msg.frm
}


graal {; Giuseppe Zito
  z = pixel
  c4 = 0.54918
  c8 = 0.756465
  c9 = -0.25149
  d0=real(p1)
  IF (real(p1)==0)
    d0 = -0.449887
  ENDIF
  : 
  x = real(z), y = imag(z)
  s0 = y
  s0 = s0 /x
  s0 = s0 *y
  s0 = s0 -c4
  s0 = s0 +c8
  s0 = s0 +c9
  newx = s0 
  s0 =d0
  s0 = s0 -x
  s1 = y
  s0 = s0 *s1
  s0 = s0 -y
  s0 = s0 *x
  s1 = y
  s0 = s0 +s1
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


graft {; Giuseppe Zito
  z = pixel
  c0 = -0.063801
  d1 = 0.136092
  d4 = 0.052044
  d6 = 0.566749
  : 
  x = real(z), y = imag(z)
  s0 =c0
  s0 = s0 +y
  newx = s0 
  s0 = y
  s0 = s0 *d1
  s0 = s0 -x
  s1 =d4
  s2 = y
  s2 = s2 +d6
  s1 = s1 *s2
  s1 = s1 /y
  s0 = s0 +s1
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


Graph {; Sylvie Gallet [101324,3444], 1996
       ; Modified for if..else logic 3/17/97 by Sylvie Gallet
       ; 2 parameters: curves thickness = real(p1)
       ;                 axes thickness = imag(p1)
       ; choose for example real(p1) = 0.002 and imag(p1) = 0.001
   epsilon = abs(real(p1)), axes = abs(imag(p1))
   z = 0, x = round(real(pixel)/epsilon) * epsilon
   IF ((|real(pixel)| <= axes) || (|imag(pixel)| <= axes))
      z = z + 1
   ENDIF
   IF (|x + flip(fn1(x))-pixel| <= epsilon)
      z = z + 2
   ENDIF
   IF (|x + flip(fn2(x))-pixel| <= epsilon)
      z = z + 4
   ENDIF
   IF (|x + flip(fn3(x))-pixel| <= epsilon)
      z = z + 8
   ENDIF
   IF (|x + flip(fn4(x))-pixel| <= epsilon)
      z = z + 16
   ENDIF
   IF (z == 0)
      z = z + 100
   ENDIF
   :
   z = z - 1
   z > 0
  ;SOURCE: fract196.frm
}


graph-2 {; Sylvie Gallet
         ; choose for example real(p1) = 0.002  and  imag(p1) = 0.001
         ; Requires Fractint v 19.4 or later
  epsilon = abs(real(p1)), axes = abs(imag(p1))
  x = round(real(pixel)/epsilon) * epsilon
  z1 = x + flip(fn1(x)), z2 = x + flip(fn2(x))
  z3 = x + flip(fn3(x)), z4 = x + flip(fn4(x))
  testaxes = (|real(pixel)|<=axes) || (|imag(pixel)|<=axes)
  testfn1 = 2*(|z1-pixel|<=epsilon), testfn2 = 4*(|z2-pixel|<=epsilon)
  testfn3 = 8*(|z3-pixel|<=epsilon), testfn4 = 16*(|z4-pixel|<=epsilon)
  z = testaxes + testfn1 + testfn2 + testfn3 + testfn4
  z = z + 100*(z==0) :
  z = z - 1
  z > 0
  ;SOURCE: 96msg.frm
}


graph-3 {; Tim Wegner
         ; 3D graph
  value = fn1(pixel)
  min = real(p1)
  max = imag(p1)
  incr = (max - min)/256
  z = min:
  z = z + incr
  z < value 
  ;SOURCE: 96msg.frm
}


grav-lla {; Linda Allison's variation of
          ; Mark "Bud" Christenson's gravijul frm
          ; defaults: p1 = (1,0) p2 = (4,0)
  z = c = pixel:
  w = fn1(z)*fn1(z)
  z = fn3(p1/fn2(w*w)) + c
  |z| < p2
  ;SOURCE: 98msg.frm
}


grave {
  lambda = (1.192982456140351,-0.8729096989966555)
  z = pixel:
  IF (|z| < 10)
    z = lambda * tan(z)
  ELSE
    z = lambda / z
  ENDIF
  abs(imag(z)) <= 1
  ;SOURCE: grave.frm
}


gravellipse {; 5-1-98 kathy roth
             ; variation of gravijul by Mark Christenson
  z = pixel, a=real(p3), b=imag(p3):
  w = fn1(z)
  z = fn3(p1/fn2(w*w)) + p2
  real(z) * real(z)/ a + imag(z) * imag(z)/b < 1
  ;SOURCE: 98msg.frm
}


gravellipse_2u {; bailout variation by kathy roth
                ; Phil DiGiorgi's variation of Mark Christenson's gravijul
  j = imag(p3), k = real(p3)
  z = abs(pixel):
  x = real(z), y = imag(z)
  w = fn1(x) + k*y, v = fn1(y) + k*x
  u = fn2(w + flip(v))
  z = fn4(p1/fn3(u*u)) + p2
  x * x/j + y * y/k < 1
  ;SOURCE: 98msg.frm
}


gravibrot {; generalized r^(-2) by Mark "Bud" Christenson 3/13/98
           ; derived from gravijul
           ; defaults: p1 = (1,0) p2 = (0,0) p3 = (4,0)
  z = p2
  c = pixel:
  w = fn1(z)
  z = fn3(p1/fn2(w*w)) + c
  |z| < p3
  ;SOURCE: 98msg.frm
}


gravijul {; r^(-2) Mark Christenson 1/25/98
   ; defaults: p1 = (1,0) p2 = (0,0) p3 = (4,0)
  z = pixel:
  w = fn1(z)
  z = fn3(p1/fn2(w*w)) + p2
  |z| < p3
  ;SOURCE: 98msg.frm
}


gravijul-a' {; generalized r^(-2) by Mark "Bud" Christenson 3/6/98
             ; defaults: p1 = (1,0) p2 = (0,0) p3 = (0,4)
  q4 = real(p2)
  q2 = p1
  q1 = imag(p2) ; new knob 1
  q3 = real(p3) ; new knob 2
  q5 = imag(p3) ; bailout
  z = pixel:
  v = fn1(z)
  w = q1*(v*v)
  z = q3*fn3(q2/fn2(w)) + q4
  |z| < q5
  ;SOURCE: frac_ml.frm
}


gravijul-a1 {; generalized r^(-2) by Mark "Bud" Christenson 3/6/98
             ; defaults: p1 = (1,0) p2 = (0,0) p3 = (0,4)
  q4 = real(p2)
  q2 = p1
  q1 = imag(p2) ; new knob 1
  q3 = real(p3) ; new knob 2
  q5 = imag(p3) ; bailout
  z = pixel:
  v = fn1(z)
  w = q1*(v*v)
  z = q3*fn3(q2/fn2(w)) + q4
  |z| < q5
  ;SOURCE: 98msg.frm
}


gravijul-a2 {; generalized r^(-2) by Mark "Bud" Christenson 3/6/98
             ; favors p2
             ; defaults: p1 = (1,0) p2 = (0,0) p3 = (0,4)
  q4 = p2
  q2 =real(p1)
  q1 = imag(p1) ; new knob 1
  q3 = real(p3) ; new knob 2
  q5 = imag(p3) ; bailout
  z = pixel:
  v = fn1(z)
  w = q1*(v*v)
  z = q3*fn3(q2/fn2(w)) + q4
  |z| < q5
  ;SOURCE: 98msg.frm
}


gravijul-v1 {; Variation on Mark Christenson's gravijul by Sylvie Gallet
  z = pixel^imag(p3) :
  w = fn1(z)
  z = fn3(p1/fn2(w*w)) + p2
  |z| < p3
  ;SOURCE: 98msg.frm
}


gravijul-v2 {; Variation on Mark Christenson's gravijul by Sylvie Gallet
  z = pixel:
  w = fn1(real(z)), x = fn3(p1/fn2(w*w))
  w = fn1(imag(z)), y = fn3(p1/fn2(w*w))
  z = x + flip(y) + p2
  |z| < p3
  ;SOURCE: 98msg.frm
}


gravijul-v3 {; Variation on Mark Christenson's gravijul by Sylvie Gallet
  z = pixel:
  w = fn1(z)
  z = fn3(fn2(w*w)^p1) + p2
  |z| < p3
  ;SOURCE: 98msg.frm
}


gravijul-v4 {; Variation on Mark Christenson's gravijul by Sylvie Gallet
  z = pixel :
  w = fn1(1/z)
  z = fn3(fn2(w*w)^p1) + p2
  |z| < p3
  ;SOURCE: sg_gravj.par
}


gravijul-v5 { ; r^(-2) Mark Christenson 1/25/98
  z = pixel :
  w = fn1(z)
  z = fn3(p1/fn2(w*(1-w))) + p2
  |z| < p3
  ;SOURCE: sg_gravj.par
}


gravijul4 {; variation of a Mark Christenson frm
  bailout = imag(p3), k = real(p3)
  z = abs(pixel):
  v = fn1(z)*k
  w = fn2(v*v)
  z = fn4(p1/fn3(w*w)) + p2
  |z| < bailout
  ;SOURCE: 98msg.frm
}


gravijul_2u {; Variation of gravijul formula - PD 3/98
             ; Original formula by Mark Christenson
  bailout = imag(p3), k = real(p3)
  z = abs(pixel):
  x = real(z), y = imag(z)
  w = fn1(x) + k*y, v = fn1(y) + k*x
  u = fn2(w + flip(v))
  z = fn4(p1/fn3(u*u)) + p2
  |z| < bailout
  ;SOURCE: 98msg.frm
}


gravijul_p104 {; generalized r^(-2) by Mark "Bud" Christenson 1/25/98
               ; defaults: p1 = (1,0) p2 = (0,0) p3 = (4,0)
  p1=1, p2=0, p3=4
  z = pixel:
  w = fn1(z)
  z = fn3(p1/fn2(w*w)) + p2
  |z| < p3
  ;SOURCE: 0from_ml.frm
}


graviPok {; adapted from Paul W. Carlson
          ; original formula copyright Paul W. Carlson 1998
          ; Gravijul by Mark Christenson
          ; real(p1) = selects equation to iterate
    ;            1 = Mset of w = w * w + c (default)
    ;            2 = Julia set of w = w * w + c
    ;            3 = Julia set of w = 1 / (w * w + c)
    ; imag(p1) = a factor controlling the size of the elements
    ; p2       = Julia set coordinates
    ; real(p3) = selects color scheme
    ;            1 = 2 ranges, 125 colors per range (default)
    ;            2 = 8 ranges, 30  colors per range
    ; imag(p3) = number of iterations to skip
    ;
  z = bailout = range_num = iter = 0
  IF (real(p1) == 2 || real(p1) == 3) ; select Mset or Julia set
    w = pixel                         ; Julia set
    c = p2
  ELSE
    w = 0                             ; Mset
    c = pixel
  ENDIF
  k = (0.5,0.5)
  size = imag(p1)
  IF (real(p3) == 2)                  ; select coloring scheme
    num_ranges = 8
    colors_in_range = 30
  ELSE
    num_ranges = 2
    colors_in_range = 125
  ENDIF
  skip = imag(p3)
  index_factor = (colors_in_range - 1) / size
  :
    ;********** select equation to iterate **************
  IF (real(p1) < 3)
    q=fn1(w)
    w=fn3(1/fn2(w*w))
  ELSE
    w = 1 / (w * w + c) ; Pokorny
  ENDIF
    ;****************************************************
  IF (iter > skip)
    dist = abs(|w - k| - 0.1)
    IF (dist < size)
      bailout = 1
    ENDIF
  ENDIF
  IF (bailout)
    z = index_factor * dist + range_num * colors_in_range + 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0  && |w| < 1.0e20
  ;SOURCE: 98msg.frm
}


gravipop {; 5-29-98 kathy roth
          ; imag p3 must be positive
  x=real(pixel), y=imag(pixel), h=imag(p3):
  newx = x-h*sin((y) + tan(3*y))
  newy = y-h*sin((x) + tan(3*x))
  x=newx, y=newy
  z=x + flip(y)
  w = fn1(z)
  z = fn3(p1/fn2(w*w)) + p2
  |z| < real(p3)
  ;SOURCE: 98msg.frm
}


gravipop_2u {; 5-29-98 kathy roth
             ; unholy matrimony of frm by Phil DiGiorgi,
             ; Mark Christenson & Bradley Beacham
  x=real(pixel), y=imag(pixel),k=real(p3), h=imag(p3):
  newx = x-h*sin((y) + tan(3*y))
  newy = y-h*sin((x) + tan(3*x))
  x=newx, y=newy
  z=x + flip(y)
  x = real(z), y = imag(z)
  w = fn1(x) + k*y, v = fn1(y) + k*x
  u = fn2(w + flip(v))
  z = fn4(p1/fn3(u*u)) + p2
  |z| < 0
  ;SOURCE: 98msg.frm
}


gravistalks {; adapted from Paul W. Carlson
             ; original gravijul by Mark Christenson
             ; kathy roth 1998
    ;
    ;   p1       = Julia set coordinates
    ;   real(p2) = a factor controlling the size of the stalks
    ;   imag(p2) = iterations to skip
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in a range
    ;
  w = pixel
  c = p1
  z = bailout = iter = range_num = 0
  stalk_width = real(p2)
  max_wm = imag(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  index_factor = (colors_in_range - 1) / stalk_width
  :
  q=fn1(w)
  w=fn3(1/fn2(q*q)), wr = real(w), awr = abs(wr)
  w = w - wr + awr
    ;
  IF (abs(real(w)) <= abs(imag(w)))
    dist = abs(real(w))
  ELSE
    dist = abs(imag(w))
  ENDIF
  IF (dist < stalk_width && |w|<max_wm && iter>1)
    z = index_factor * dist + range_num * colors_in_range + 1
    bailout = 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0  && |w| < 4
  ;SOURCE: 98msg.frm
}


gravistalks1 {; adapted from Paul W. Carlson
      ;original gravijul by Mark Christenson
      ;kathy roth 1998
    ;
    ;   p1       = gravijul coordinate
    ;   real(p2) = a factor controlling the size of the stalks
    ;   imag(p2) = iterations to skip
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in a range
    ;
  w = pixel
  c = p1
  z = bailout = iter = range_num = 0
  stalk_width = real(p2)
  max_wm = imag(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  index_factor = (colors_in_range - 1) / stalk_width
  :
  q=fn1(w)
  w=fn3(p1/fn2(q*q)), wr = real(w), awr = abs(wr)
  w = w - wr + awr
    ;
  IF (abs(real(w)) <= abs(imag(w)))
    dist = abs(real(w))
  ELSE
    dist = abs(imag(w))
  ENDIF
  IF (dist < stalk_width && |w|<max_wm && iter>1)
    z = index_factor * dist + range_num * colors_in_range + 1
    bailout = 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0  && |w| < 4
  ;SOURCE: 98msg.frm
}


gravistalks2 {; adapted from Paul W. Carlson c. 1998
              ; original gravijul by Mark Christenson
              ; kathy roth 1998
    ;
    ;   p1       = gravijul parameter
    ;   real(p2) = a factor controlling the size of the stalks
    ;   imag(p2) = iterations to skip
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in a range
    ;
  w = pixel
  c = p1
  z = bailout = iter = range_num = 0
  stalk_width = real(p2)
  max_wm = imag(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  index_factor = (colors_in_range - 1) / stalk_width
  :
  q=fn1(w)
  w=fn3(real(p1)/fn2(q*q)) + imag(p1), wr = real(w), awr = abs(wr)
  w = w - wr + awr
    ;
  IF (abs(real(w)) <= abs(imag(w)))
    dist = abs(real(w))
  ELSE
    dist = abs(imag(w))
  ENDIF
  IF (dist < stalk_width && |w|<max_wm && iter>1)
    z = index_factor * dist + range_num * colors_in_range + 1
    bailout = 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0  && |w| < 4
  ;SOURCE: 98msg.frm
}


gravity-dt2=pix {; Kerry Mitchell 23feb99
        ;
        ; loosely based on gravitational attraction formula
        ;
        ; set p1 to about 1 in magnitude, e.g, (1.0,0.1)
        ; 
  z1=1, z=p1, dt2=pixel, bailout=1000:
  z0=z1, z1=z, f=1/z-1/sqr(z)
  z=2*z1-z0+f*dt2
  |z| < bailout
  ;SOURCE: 99msg.frm
}


gravity-z=pix {; Kerry Mitchell 23feb99
        ;
        ; loosely based on gravitational attraction formula
        ;
        ; p1 = "time step", small in magnitude (about .1 or less)
        ; 
  z1=1, dt2=p1, z=pixel, bailout=1000:
  z0=z1, z1=z, f=1/z-1/sqr(z)
  z=2*z1-z0+f*dt2
  |z| < bailout
  ;SOURCE: 99msg.frm
}


gravlla2 {; Linda Allison's 3-4-98 variation of the
          ; 1/25/98 generalized r^(-2) formula by Mark "Bud"
          ; Christenson
  z = c = pixel:
  w = fn1(z)^p1
  z = fn3(p2/fn2(w*w)) + c
  |z| < p3
  ;SOURCE: 98msg.frm
}


Groucho {; Mutation of 'Fish2'.
    ; Original formula by Dave Oliver via Tim Wegner
    ; Modified for if..else logic 3/19/97 by Sylvie Gallet
    ; For 'Fish2', set FN1 & FN2 =IDENT and P1 & P2 = default
    ; p1 = Parameter (default 1,0), real(p2) = Bailout (default 4)
   z = c = pixel
    ; The next line sets k=default if p1=0, else k=p1
   IF (real(p1) || imag(p1))
      k = p1
   ELSE
      k = 1
   ENDIF
    ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
   IF (real(p2) <= 0)
      test = 4
   ELSE
      test = real(p2)
   ENDIF
   :
   z1 = c^(fn1(z)-k)
   z = fn2(((c*z1)-k)*(z1))
   |z| <= test
  ;SOURCE: fract196.frm
}


Grunge { 
  z = c = pixel:
  z = z + p1 
  c = fn1(c) + z
  c1 = imag(z)  / imag(c)
  z1 = real(z) / real(c)
  z = z1 * c1 + pixel
  |z| < 4
  ;SOURCE: gestalt.frm
}


gscarab {; Giuseppe Zito
  z = pixel
  d0 = 0.695627
  d5 = -0.558278
  d8 = -0.071449
  : 
  x = real(z), y = imag(z)
  s0 = y
  s0 = s0 /x
  newx = s0 
  s0 =d0
  s0 = s0 *y
  s0 = s0 /x
  s0 = s0 +y
  s0 = s0 *d5
  s0 = s0 +d8
  s0 = s0 *y
  s0 = s0 *y
  s0 = s0 *x
  s0 = s0 -y
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


gtc01 {; Modified J_Lagandre2
  z = c = pixel:
  z = fn1((3 * z*z - 1) / 2 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc02 {; Modified J_Lagandre3
  z = c = pixel:
  z = fn1(z * (5 * z*z - 3) / 2 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc03 {; Modified J_Lagandre4
  z = c = pixel:
  z = fn1((z*z*(35 * z*z - 30) + 3) / 8 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc04 {; Modified J_Lagandre5
  z = c = pixel:
  z = fn1(z* (z*z*(63 * z*z - 70) + 15 ) / 8 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc05 {; Modified J_Lagandre6
  z = c = pixel:
  z = fn1((z*z*(z*z*(231 * z*z - 315)  + 105 ) - 5) / 16 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc06 {; Modified J_Lagandre7
  z = c = pixel:
  z = fn1(z* (z*z*(z*z*(429 * z*z - 693) + 315) - 35 ) / 16 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc07 {; Modified J_Laguerre2
  z = c = pixel:
  z = fn1((z*(z - 4) +2 ) / 2 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc08 {; Modified J_Laguerre3
  z = c = pixel:
  z = fn1((z*(z*(-z + 9) -18) + 6 ) / 6 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc09 {; Modified J_Laguerre4
  z = c = pixel:
  z = fn1((z * ( z * ( z * ( z - 16)+ 72) - 96)+ 24 ) / 24 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc10 {; Modified J_Laguerre5
  z = c = pixel:
  z=fn1((z*(z*(z*(z*(-z+25)-200)+600)-600)+120)/120 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc11 {; Modified J_Laguerre6
  z = c = pixel:
  z=fn1((z*(z*(z*(z*(z*(z-36)+450)-2400)+5400)-4320)+720) / 720 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc12 {; Modified J_Lagandre2
  z = c = pixel:
  z = fn1((3 * z*z - 1) / 2 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc13 {; Modified J_Lagandre3
  z = c = pixel:
  z = fn1(z * (5 * z*z - 3) / 2 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc14 {; Modified J_Lagandre4
  z = c = pixel:
  z = fn1((z*z*(35 * z*z - 30) + 3) / 8 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc15 {; Modified J_Lagandre5
  z = c = pixel:
  z = fn1(z* (z*z*(63 * z*z - 70) + 15 ) / 8 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc16 {; Modified J_Lagandre6
  z = c = pixel:
  z = fn1((z*z*(z*z*(231 * z*z - 315)  + 105 ) - 5) / 16 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc17 {; Modified J_Lagandre7
  z = c = pixel:
  z = fn1(z* (z*z*(z*z*(429 * z*z - 693) + 315) - 35 ) / 16 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc18 {; Modified M_Lagandre2
  z = c = pixel:
  z = fn1((3 * z*z - 1) / 2 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc19 {; Modified M_Lagandre3
  z = c = pixel:
  z = fn1(z * (5 * z*z - 3) / 2 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc20 {; Modified M_Lagandre4
  z = c = pixel:
  z = fn1((z*z*(35 * z*z - 30) + 3) / 8 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc21 {; Modified M_Lagandre5
  z = c = pixel:
  z = fn1(z* (z*z*(63 * z*z - 70) + 15 ) / 8 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc22 {; Modified M_Lagandre6
  z = c = pixel:
  z = fn1((z*z*(z*z*(231 * z*z - 315)  + 105 ) - 5) / 16 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc23 {; Modified M_Lagandre7
  z = c = pixel:
  z = fn1(z* (z*z*(z*z*(429 * z*z - 693) + 315) - 35 ) / 16 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc24 {; Modified M_Laguerre2
  z = c = pixel:
  z = fn1((z*(z - 4) +2 ) / 2 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc25 {; Modified M_Laguerre3
  z = c = pixel:
  z = fn1((z*(z*(-z + 9) -18) + 6 ) / 6 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc26 {; Modified M_Laguerre4
  z = c = pixel:
  z = fn1((z * ( z * ( z * ( z - 16)+ 72) - 96)+ 24 ) / 24 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc27 {; Modified M_Laguerre5
  z = c = pixel:
  z=fn1((z*(z*(z*(z*(-z+25)-200)+600)-600)+120)/120+c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc28 {; Modified M_Laguerre5
  z = c = pixel:
  z=fn1((z*(z*(z*(z*(z*(z-36)+450)-2400)+5400)-4320)+720)/ 720 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc29 {; Modified M_Lagandre2
  z = c = pixel:
  z = fn1((3 * z*z - 1) / 2 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc30 {; Modified M_Lagandre3
  z = c = pixel:
  z = fn1(z * (5 * z*z - 3) / 2 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc31 {; Modified M_Lagandre4
  z = c = pixel:
  z = fn1((z*z*(35 * z*z - 30) + 3) / 8 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc32 {; Modified M_Lagandre5
  z = c = pixel:
  z = fn1(z* (z*z*(63 * z*z - 70) + 15 ) / 8 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc33 {; Modified M_Lagandre6
  z = c = pixel:
  z = fn1((z*z*(z*z*(231 * z*z - 315)  + 105 ) - 5) / 16 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc34 {; Modified M_Lagandre7
  z = c = pixel:
  z = fn1(z* (z*z*(z*z*(429 * z*z - 693) + 315) - 35 ) / 16 + c)
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc35 {; Modified J_TchebychevC2
  z = c = pixel:
  z = fn1(c*(z*z-2))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc36 {; Modified J_TchebychevC3
  z = c = pixel:
  z = fn1(c*z*(z*z-3))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc37 {; Modified J_TchebychevC4
  z = c = pixel:
  z = fn1(c*(z*z*(z*z-4)+2))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc38 {; Modified J_TchebychevC5 
  z = c = pixel:
  z = fn1(c*z*(z*z*(z*z-5)+5))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc39 {; Modified J_TchebychevC6
  z = c = pixel:
  z = fn1(c*(z*z*(z*z*(z*z-6)+9)-2))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc40 {; Modified J_TchebychevC7
  z = c = pixel:
  z = fn1(c*z*(z*z*(z*z*(z*z-7)+14)-7))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc41 {; Modified J_TchebychevS2
  z = c = pixel:
  z = fn1(c*(z*z-1))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc42 {; Modified J_TchebychevS3  
  z = c = pixel:
  z = fn1(c*z*(z*z-2))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc43 {; Modified J_TchebychevS4
  z = c = pixel:
  z = fn1(c*(z*z*(z*z-3)+1))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc44 {; Modified J_TchebychevS5 
  z = c = pixel:
  z = fn1(c*z*(z*z*(z*z-4)+3))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc45 {; Modified J_TchebychevS6
  z = c = pixel:
  z = fn1(c*(z*z*(z*z*(z*z-5)+6)-1))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc46 {; Modified J_TchebychevS7
  z = c = pixel:
  z = fn1(c*z*(z*z*(z*z*(z*z-6)+10)-4))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc47 {; Modified J_TchebychevT2
  z = c = pixel:
  z = fn1(c*(2*z*z-1))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc48 {; Modified J_TchebychevT3
  z = c = pixel:
  z = fn1(c*z*(4*z*z-3))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc49 {; Modified J_TchebychevT4
  z = c = pixel:
  z = fn1(c*(z*z*(8*z*z+8)+1))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc50 {; Modified J_TchebychevT5    
  z = c = pixel:
  z = fn1(c*(z*(z*z*(16*z*z-20)+5)))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc51 {; Modified J_TchebychevT6
  z = c = pixel:
  z = fn1(c*(z*z*(z*z*(32*z*z-48)+18)-1))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc52 {; Modified J_TchebychevT7     
  z = c = pixel:
  z = fn1(c*z*(z*z*(z*z*(64*z*z-112)+56)-7))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc53 {; Modified J_TchebychevU2
  z = c = pixel:
  z = fn1(c*(4*z*z-1))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc54 {; Modified J_TchebychevU3    
  z = c = pixel:
  z = fn1(c*z*(8*z*z-4))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc55 {; Modified J_TchebychevU4
  z = c = pixel:
  z = fn1(c*(z*z*(16*z*z-12)+1))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc56 {; Modified J_TchebychevU5    
  z = c = pixel:
  z = fn1(c*z*(z*z*(32*z*z-32)+6))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc57 {; Modified J_TchebychevU6
  z = c = pixel:
  z = fn1(c*(z*z*(z*z*(64*z*z-80)+24)-1))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc58 {; Modified J_TchebychevU7     
  z = c = pixel:
  z = fn1(c*z*(z*z*(z*z*(128*z*z-192)+80)-8))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc59 {; Modified M_TchebychevC2
  z = c = pixel:
  z = fn1(c*(z*z-2))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc60 {; Modified M_TchebychevC3   
  z = c = pixel:
  z = fn1(c*z*(z*z-3))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc61 {; Modified M_TchebychevC4
  z = c = pixel:
  z = fn1(c*(z*z*(z*z-4)+2))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc62 {; Modified M_TchebychevC5
  z = c = pixel:
  z = fn1(c*z*(z*z*(z*z-5)+5))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc63 {; Modified M_TchebychevC6
  z = c = pixel:
  z = fn1(c*(z*z*(z*z*(z*z-6)+9)-2))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc64 {; Modified M_TchebychevC7     
  z = c = pixel:
  z = fn1(c*z*(z*z*(z*z*(z*z-7)+14)-7))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc65 {; Modified M_TchebychevS2
  z = c = pixel:
  z = fn1(c*(z*z-1))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc66 {; Modified M_TchebychevS3
  z = c = pixel:
  z = fn1(c*z*(z*z-2))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc67 {; Modified M_TchebychevS4
  z = c = pixel:
  z = fn1(c*(z*z*(z*z-3)+1))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc68 {; Modified M_TchebychevS5    
  z = c = pixel:
  z = fn1(c*z*(z*z*(z*z-4)+3))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc69 {; Modified M_TchebychevS6
  z = c = pixel:
  z = fn1(c*(z*z*(z*z*(z*z-5)+6)-1))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc70 {; Modified M_TchebychevS7     
  z = c = pixel:
  z = fn1(c*z*(z*z*(z*z*(z*z-6)+10)-4))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc71 {; Modified M_TchebychevT2
  z = c = pixel:
  z = fn1(c*(2*z*z-1))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc72 {; Modified M_TchebychevT3   
  z = c = pixel:
  z = fn1(c*z*(4*z*z-3))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc73 {; Modified M_TchebychevT4
  z = c = pixel:
  z = fn1(c*(z*z*(8*z*z+8)+1))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc74 {; Modified M_TchebychevT5
  z = c = pixel:
  z = fn1(c*(z*(z*z*(16*z*z-20)+5)))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc75 {; Modified M_TchebychevT6
  z = c = pixel:
  z = fn1(c*(z*z*(z*z*(32*z*z-48)+18)-1))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc76 {; Modified M_TchebychevT7     
  z = c = pixel:
  z = fn1(c*z*(z*z*(z*z*(64*z*z-112)+56)-7))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc77 {; Modified M_TchebychevU2
  z = c = pixel:
  z = fn1(c*(4*z*z-1))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc78 {; Modified M_TchebychevU3
  z = c = pixel:
  z = fn1(c*z*(8*z*z-4))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc79 {; Modified M_TchebychevU4
  z = c = pixel:
  z = fn1(c*(z*z*(16*z*z-12)+1))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc80 {; Modified M_TchebychevU5    
  z = c = pixel:
  z = fn1(c*z*(z*z*(32*z*z-32)+6))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc81 {; Modified M_TchebychevU6
  z = c = pixel:
  z = fn1(c*(z*z*(z*z*(64*z*z-80)+24)-1))
  |z| < p1
  ;SOURCE: gfptch.frm
}


gtc82 {; Modified M_TchebychevU7     
  z = c = pixel:
  z = fn1(c*z*(z*z*(z*z*(128*z*z-192)+80)-8))
  |z| < p1
  ;SOURCE: gfptch.frm
}


Guanaco { 
   ; Any comments or question?
   ; E-Mail: Damion_P@Compuserve.com  -or- MDROCC@earthlink.net
  z = pixel, Root = 1:
  z3 =z*z*z
  z4 = Z3 * z
  z5 = z4 * z
  z6 = z5 * z
  z7 = z6 * z
  r = (3 * z4 + Root) / ( 4*z3)
  q =  z - p1*((z7-z)/((7.0*z6-1)-(42.0*z5)*(z7-z)/(14.0*z6-2)))
  z = (r * whitesq ) + (q * (whitesq == 0)) 
  (.004 <= |z4-Root| && whitesq) || (0.0001 <= |z7-z| && whitesq == 0)
  ;SOURCE: pablo.frm
}


Guitar1 {
  z = pixel:
  z = log(z) * 1.0 / (sin(z) ) 
  |z| <= 50
  ;SOURCE: hubert.frm
}


Guitar2 {
  z=pixel:
  z = log(z) * 1.0 / (sin(z) ) 
  |z| <= 4
  ;SOURCE: hubert.frm
}

