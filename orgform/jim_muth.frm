
AllNewDivideBrot   { ; Jim Muth
  z=(0,0), c=pixel, a=-(real(p1)-2),
  b=imag(p1)+0.00000000000000000001:
  z=b*(z^2*fn1(z^(a)+b))+c
  |z| < 1000000
}

AllNewDivideBrot2  { ; Jim Muth
  z=(0,0), c=pixel, a=-(real(p1)-2),
  b=imag(p1)+0.00000000000000000001:
  z=(-b)*(z*z*fn1(z^(a)+b))+c
  |z| < 1000000
}

BackwardBrot       { ; Jim Muth
  z=c=pixel:
  z=p1^(z^p2)+(p3*c),
  |z| < 16
}

Bubbles            {; Jim Muth
  z=c=pixel:
  a=sqr(z)+(c-1)*z-c
  b=3*sqr(z)+c-1
  z=z-2*a/b,
  .000000000000000000000000000001 &lt;= |a|
}

C4G           { ; p1 is (plus or minus) 1 or i 
  x=real(pixel), y=imag(pixel)*p1
  a=b=0:
  a1 = a^2-p1^2*b^2
  b1 = 2*a*b
  a=a1+x, b=b1+y
  z = sqrt(a^2 + b^2)
  z < 4
}

Cascade            { ; Jim Muth
  z=c=pixel:
  a=sqr(z)+(c-1)*z-c
  b=3*sqr(z)+c-1
  z=z-2*a/b,
  .000000000000000000000000000001 <= |a|
}

CrazyMidgets       { ; Jim Muth
  c=pixel, a=real(p1), b=imag(p1), d=real(p2), f=imag(p2),
  g=1/f, h=1/d, j=1/(f-b), z=(-a*b*g*h)^j:
  z=(a*(z^b))+(d*(z^f))+c,
  |z| <= 100
}

DivideBrot2        { ; Jim Muth
  z=0, c=pixel, aa=real(p1), bb=imag(p1),
  dd=real(p2), ff=imag(p2)+64:
  z=z^aa/(z^bb+dd)+c
  |z| <= ff
}

DivideBrot3        { ; Jim Muth
  z=0, c=pixel, a=real(p1),
  b=imag(p1), d=real(p2)+100:
  z=sqr(z)/(z^(-a)+b)+c
  |z| < d
}

DivideBrot4        { ; Jim Muth
  z=0, c=pixel, a=real(p1)-2,
  b=imag(p1), d=real(p2)+100:
  z=sqr(z)/(z^(-a)+b)+c
  |z| < d
}

DivideBrot5        { ; Jim Muth
  z=0, c=pixel, a=real(p1)-2,
  b=imag(p1)+0.00000000000000000001:
  z=sqr(z)/(z^(-a)+b)+c
  |z| < 1000000
}

DivideBrot5a       { ; Jim Muth
  z=0, c=pixel, a=real(p1)-2, d=real(p2)+16
  b=imag(p1)+0.00000000000000000001:
  z=sqr(z)/(z^(-a)+b)+c
  |z| < d
}

DivideBrot5b       { ; Jim Muth
  z=0, c=fn1(pixel), a=real(p1), b=imag(p1)-2,
  d=real(p2)+0.00000000000000000001, f=imag(p2)+16:
  z=(z^a)/(z^(-b)+d)+c
  |z| < f
}

DivideBrot5Julia   { ; Jim Muth
  z=pixel, c=(p2), a=real(p1)-2,
  b=imag(p1)+0.00000000000000000001:
  z=sqr(z)/(z^(-a)+b)+c
  |z| < 1000000
}

DivideBrot6        { ; Jim Muth
  z=(0,0), c=pixel, a=real(p1), b=imag(p1)-2,
  d=real(p2)+0.00000000000000000001, f=imag(p2)+16:
  z=z^(a)/(z^(-b)+d)+c
  |z| < f
}

DivideBrot6Julia   { ; Jim Muth
  z=pixel, c=(p3), a=real(p1), b=imag(p1)-2,
  d=real(p2)+0.00000000000000000001, f=imag(p2)+16:
  z=z^(a)/(z^(-b)+d)+c
  |z| < f
}

DivideJulibrot     { ; Jim Muth   (first version)
                     ; draws slices of DivideBrot Julibrots
  pix=pixel, u=real(pix), v=imag(pix),
  a=pi*real(p1*0.0055555555555556),
  b=pi*imag(p1*0.0055555555555556),
  g=pi*real(p2*0.0055555555555556),
  d=pi*imag(p2*0.0055555555555556),
  ca=cos(a), cb=cos(b), sb=sin(b), cg=cos(g),
  sg=sin(g), cd=cos(d), sd=sin(d),
  aa=real(p5)-2, bb=imag(p5)+0.00000000000000000001,
  p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd),
  r=u*sg+v*ca*sb*cg, s=v*sin(a),
  c=p+flip(q)+p3, z=r+flip(s)+p4:
  z=sqr(z)/(z^(-aa)+bb)+c
  |z|< 1000000
}

DivideJulibrot     { ; Jim Muth   (second version)
                     ; draws 4-D slices of DivideBrot Julibrots
  pix=pixel, u=real(pix), v=imag(pix),
  a=pi*real(p1*0.0055555555555556),
  b=pi*imag(p1*0.0055555555555556),
  g=pi*real(p2*0.0055555555555556),
  d=pi*imag(p2*0.0055555555555556),
  ca=cos(a), cb=cos(b), sb=sin(b), cg=cos(g),
  sg=sin(g), cd=cos(d), sd=sin(d),
  aa=-(real(p5)-2), bb=imag(p5+0.00000000000000000001),
  p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd),
  r=u*sg+v*ca*sb*cg, s=v*sin(a),
  c=p+flip(q)+p3, z=r+flip(s)+p4:
  z=sqr(z)/(z^(aa)+bb)+c
  |z| < 1000000
}

DivideJulibrot     { ; Jim Muth   (third version)
                     ; draws 4-D slices of DivideBrot Julibrots
  pix=pixel, u=real(pix), v=imag(pix),
  a=pi*real(p1*0.0055555555555556),
  b=pi*imag(p1*0.0055555555555556),
  g=pi*real(p2*0.0055555555555556),
  d=pi*imag(p2*0.0055555555555556),
  ca=cos(a), cb=cos(b), sb=sin(b), cg=cos(g),
  sg=sin(g), cd=cos(d), sd=sin(d),
  aa=-(real(p5)-2), bb=(imag(p5)+0.00000000000000000000001),
  p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd),
  r=u*sg+v*ca*sb*cg, s=v*sin(a),
  c=p+flip(q)+p3, z=r+flip(s)+p4:
  z=sqr(z)/(z^(aa)+bb)+c
  |z| < 1000000
}

Elliptic           { ; Jim Muth
  imag(z),real(c)
  z=flip(imag(pixel))+p1,
  c=real(pixel)+p2:
  z=sqr(z)+c,
  |z| <= 16
}

EvenMoreSlices     { ; Jim Muth
  ; P1--exponent, P2--angle,
  ; P3--M center, P4--J center,
  z=pixel+(p4), c=p3+(pixel*p2):
  z=(-z)^(p1)+c,
  |z| < 16
}

FinalDivideBrot    { ; Jim Muth -- Thur, Feb. 04, 2010
  z=(0,0), c=pixel, a=-(real(p1)-2),
  esc=(real(p2)+16),
  b=imag(p1)+0.00000000000000000001:
  z=(-b)*(z*z*fn1(z^(a)+b))-c
  |z| < esc
}

FinDivBrot-2       { ; Jim Muth -- Fri, April 30, 2010
  z=(0,0), c=pixel, a=-(real(p1)-2),
  esc=(real(p2)+16), b=imag(p1):
  z=(b)*(z*z*fn1(z^(a)+b))+c
  |z| < esc
}

FrankJim04         { ; by Frank and Jim
  z=c=pixel:
  z=((z^z)^(1/z))^2+c,
  |z| <= 100
}

HyperMandelbrot    { ; periodicity must be turned off
  a=(p1),b=(0,0):
  q=sqr(a)-sqr(b)+pixel,
  b=(p2+2)*a*b+p3,
  a=q,
  |a|+|b| <= 100
}

HyperMandelbrot2   { ; periodicity must be turned off
  a=(p1),b=(p2):
  q=sqr(a)-sqr(b)+pixel,
  b=(p3+2)*a*b+p4,
  a=q,
  |a|+|b| <= 100
}

JimsCompMand       { ; Jim Muth
  z=c=pixel:
  z=z^p1*(c^(p2-1))+c,
  |z| <= p3+100
}

JimsCompMand2      { ; Jim Muth
  z=c=pixel:
  z=(-z)^p1*(c^p2)+c,
  |z| <= p3+100
}

JimsCompMand3      { ; Jim Muth
  z=c=pixel:
  z=z^p1*(c^p2)+c,
  |z| <= p3+100
}

JuliaMix-1         { ; Jim Muth
  z=pixel, c=p3, a=real(p1), b=imag(p1),
  d=real(p2), f=imag(p2):
  z=(a*(z^b))+(d*(z^f))+fn1(c),
  |z| <= 100
}

JuliaMixRecip      { ; Jim Muth
  z=pixel, c=p3,
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2):
  z=(a*(z^b))+(d*(z^f))+(1/c),
  |z| <= 100
}

JulibrotZ          { ; Jim Muth
      ; Draws oblique slices of order n Julibrot Figure
      ; P1 defines power of Z, P2 determines center of slice
      ; P3 determines angle of slice
  z=pixel, c=p2+(pixel*p3):
  z=z^p1+c,
  |z| < 100
}

JulibrotZ-New      { ; Jim Muth
      ; Draws oblique slices of order n Julibrot Figure
      ; P1 defines power of Z, P2 determines center of slice
      ; P3 determines angle of slice
  z=pixel, c=p2+(pixel*p3):
  z=z^p1+c,
  |z| < p4+100
}

JulibrotZpwr       { ; Jim Muth
      ; Draws oblique slices of order n Julibrot Figure
      ; P1 defines power of Z, P2 sets center of slice
      ; P3 sets angle of slice
  z=pixel, c=p2+(pixel*p3):
  z=z^p1+c,
  |z| <= 100
}

Klein_tri_lattice(XYAXIS)  { 
  ang=pi/3
  r=1/2
  rr=r*r
  z=pixel
  t1=sin(ang)
  t2=tan(ang)
  t3=exp(flip(ang))
  :
  inside=0
  m = round(imag(z)/t1)
  n = round(real(z)-imag(z)/t2)
  c0=n+m*t3
  c1=n+(m-1)*t3
  c2=n+(m+1)*t3
  c3=(n-1)+m*t3
  c4=(n+1)+m*t3
  if(|z-c0|< rr)
      z=r*conj(r/(z-c0))+c0
      inside=1
  elseif(|z-c1|< rr)
      z=r*conj(r/(z-c1))+c1
      inside=1
  elseif(|z-c2|< rr)
      z=r*conj(r/(z-c2))+c2
      inside=1
  elseif(|z-c3|< rr)
      z=r*conj(r/(z-c3))+c3
      inside=1
  elseif(|z-c4|< rr)
      z=r*conj(r/(z-c4))+c4
      inside=1
  endif
  inside
}

MandAutoCritInZ    { ; Jim Muth -- April 12, 2007
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2),
  g=1/f, h=1/d, j=1/(f-b), z=(((-a*b*g*h)^j)+(p4)),
  k=real(p3)+1, l=imag(p3)+100, c=fn1(pixel):
  z=k*((a*(z^b))+(d*(z^f)))+c,
  |z| < l
}

MandAutoCritMinZ   { ; Jim Muth -- March 15, 2010
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2),
  g=1/f, h=1/d, j=1/(f-b), z=(((-a*b*g*h)^j)+(p4)),
  k=real(p3)+1, l=imag(p3)+100, c=fn1(pixel):
  z=k*((a*((-z)^b))+(d*((-z)^f)))+c,
  |z| < l
}

MandAutoCritMinZ2  { ; Jim Muth -- March 22, 2010
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2),
  g=1/f, h=1/d, j=1/(f-b), z=(((-a*b*g*h)^j)+(p4)),
  k=real(p3)+1, l=imag(p3)+100, c=fn1(pixel):
  z=k*((a*((-z)^b))+(d*(z^f)))+c,
  |z| < l
}

Mandel-V-Esc       { ; changeable bailout radius
  z=p1, c=pixel+p2:
  z=sqr(z)+c,
  |z| <= p3
}

MandelbrotBC       { ; Formula by Andrew Coppin
  e=p1
  p=real(p2)+PI
  q=2*PI*trunc(p/(2*PI))
  r=real(p2)-q
  Z=C=Pixel:
    Z=log(Z)
    IF(imag(Z) > r)
      Z=Z+flip(2*PI)
    ENDIF
    Z=exp(e*(Z+flip(q)))+C
  |Z| < 100
}

MandelbrotBC1      { ; by several Fractint users
  e=p1, a=imag(p2)+100
  p=real(p2)+PI
  q=2*PI*fn1(p/(2*PI))
  r=real(p2)-q
  Z=C=Pixel:
    Z=log(Z)
    IF(imag(Z) > r)
      Z=Z+flip(2*PI)
    ENDIF
    Z=exp(e*(Z+flip(q)))+C
  |Z| < a
}

MandelbrotBC2      { ; originally by several Fractint users
                     ; and then modified by Jim Muth
  e=p1, a=imag(p2)+100
  p=real(p2)+PI
  q=2*PI*floor(p/(2*PI))
  r=real(p2)-q
  Z=C=Pixel:
    Z=log(Z)
    IF(imag(Z) > r)
      Z=Z+flip(2*PI)
    ENDIF
    Z=exp(e*(Z+flip(q)))+C
  |Z| < a
}

MandelbrotBC3      { ; by several Fractint users
                     ; and then modified by Jim Muth
  e=p1, a=imag(p2)+100
  p=real(p2)+PI
  q=2*PI*fn1(p/(2*PI))
  r=real(p2)+PI-q
  Z=C=Pixel:
    Z=log(Z)
    IF(imag(Z) > r)
      Z=Z+flip(2*PI)
    ENDIF
    Z=exp(e*(Z+flip(q)))+C
  |Z| < a
}

MandelbrotCube     { ; Jim Muth  real(c),imag(c)
  z=p1, c=pixel+p2:
  z=z*(sqr(z))+c,
  |z| <= 16
}

MandelbrotGold     { ; Jim Muth
  z=p1, c=p2+pixel,
  a=((sqrt(5)+1)*0.5):
  z=(-z)^(a)+c,
  |z| < 16
}

MandelbrotMiN      { ; Jim Muth
  b=p1, z=p2, c=p3+pixel:
  z=(-z)^(b)+c,
  |z| <= 16
}

MandelbrotMix2     { ; Jim Muth
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2),
  g=1/f, h=1/d, j=1/(f-b), z=(((-a*b*g*h)^j)+(p4)),
  k=real(p3)+1, l=imag(p3)+100, c=fn1(pixel):
  z=k*((a*(z^b))+(d*(z^f)))+c,
  |z| < l
}

MandelbrotMix2way  { ; Jim Muth
  z=0,0, c=pixel,
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2):
  z=(a*(z^b))+(d*(z^f))+c,
  |z| <= 100
}

MandelbrotMix3     { ; Jim Muth
  z=real(p5), c=fn1(pixel), a=real(p1), b=imag(p1),
  d=real(p2), f=imag(p2), g=real(p3), h=imag(p3),
  j=real(p4), k=imag(p4), l=imag(p5)+100:
  z=(a*(z^b))+(d*(z^f))+(g*(z^h))+(j*(z^k))+c,
  |z| <= l
}

MandelbrotMix3a    { ; Jim Muth
  z=real(p5), c=fn1(pixel), a=real(p1), b=imag(p1),
  d=real(p2), f=imag(p2), g=real(p3), h=imag(p3),
  j=real(p4), k=imag(p4), l=imag(p5)+100:
  z=(a*(z^b))+(d*(z^f))+(g*(z^h))+(j*(z^k))+c,
  |z| <= l
}

MandelbrotMix4     { ; Jim Muth
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2), g=1/f
  h=1/d, j=1/(f-b), z=(-a*b*g*h)^j, k=real(p3)+1
  l=imag(p3)+100, c=fn1(pixel):
  z=k*((a*(z^b))+(d*(z^f)))+c
  |z| < l
}

MandelbrotMix4_v1  { ; Jim Muth
  c=pixel, a=real(p1), b=imag(p1), d=real(p2), f=imag(p2)
  g=1/f, h=1/d, j=1/(f-b), z=(-a*b*g*h)^j:
  z=(a*(z^b))+(d*(z^f))+c
  |z| <= 100
}

MandelbrotMix5way  { ; Jim Muth
  z=p5, c=pixel,
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2),
  g=real(p3), h=imag(p3), j=real(p4), k=imag(p4):
  z=(a*(z^b))+(d*(z^f))+(g*(z^h))+(j*(z^k))+c,
  |z| <= 100
}

MandelbrotMixImag  { ; Jim Muth -- April 29, 2007
  z=p3, c=fn1(pixel),
  a=real(p1), b=imag(p1),
  d=real(p2), f=imag(p2):
  z=a*(z^b)+d*(z^flip(f))+c,
  |z| <= 100
}

MandelbrotMixImag2 { ; Jim Muth -- March 06, 2008
  z=p3, c=fn1(pixel),
  a=real(p1), b=imag(p1),
  d=real(p2), f=imag(p2):
  z=(a*(z^b))+(d*(z^flip(f)))+c,
  |z| <= 100
}

MandelbrotN        { ; Jim Muth
  b=p1, z=p2, c=p3+pixel:
  z=z^(b)+c,
  |z| <= 16
}

MandelbrotN7       { ; Jim Muth
  z=p1, c=p2+pixel:
  z=z*z*z*z*z*z*z+c,
  |z| <= 16
}

MandelbrotVE       { ; Jim Muth (variable escape radius)
  z=p1, c=pixel+p2,
  b=sqr(real(p3)):
  z=sqr(z)+c,
  |z| <= b
}

MandelbrotVE-VP    { ; Jim Muth (variable escape and power)
  a=p1, z=p2, c=pixel+p3,
  b=sqr(real(p4)):
  z=z^(a)+c,
  |z| < b
}

MandelPMnew        { ; Jim Muth
  z=p2+10^(-100),
  c=pixel+(p3)
  a=real(p1)+1, b=imag(p1):
  z=a*((-z)^b+z^b)+c,
  |z| <= 250
}

MandNewt01         { ; Jim Muth
  z=c=pixel:
  a=z^3+(c-1)*z-(p1*c)
  b=3*z^2+(p2*c-1)
  z=z-p3*a/b
  .00005 <= |a|
}

MandNewt04         { ; Jim Muth
  z=c=pixel:
  a=z^3+(c-1)*z-c
  b=p1*z^2+c-1
  z=z-p2*a/b
  p3 <= |a|
}

MandNewt05         { ; Jim Muth
  z=c=fn1(pixel):
  a=z^2+(c-p1)*z-c
  b=p2*z^2+c-1
  z=z-1*a/b
  p3 <= |a|
}

MandNewt06         { ; Jim Muth
  z=c=(pixel*p1):
  a=z^3+(c-p2)*z-c
  b=p3*z^2+c-1
  z=z-1*a/b
  0.000000000000000000000000000001 <= |a|
}

MandNewt07         { ; Jim Muth
  z=c=(pixel*p1):
  a=z^3+(c-p2)*z-c
  b=3*z^2+c-1
  z=z-p3*a/b
  .000000000000000000000000000001 <= |a|
}

MandNewt08         { ; Jim Muth
  z=c=(pixel*p1):
  a=z^p2+(c-1)*z-c
  b=p3*z^2+c-1
  z=z-1*a/b
  0.000000000000000000000000000001 <= |a|
}

MandNewt11         { ; Jim Muth
  z=g=pixel, a=real(p1), b=imag(p1), c=real(p2),
  d=imag(p2), e=real(p3), f=imag(p3):
  h=z^a+(g-b)*z-f
  j=c*z^d+g
  z=z-e*h/j,
  .0000000000000000000000000000005 <= |h|
}

MandNewt12         { ; Jim Muth
  z=g=pixel, a=real(p1), b=imag(p1), c=real(p2),
  d=imag(p2), e=real(p3), f=imag(p3):
  h=z^a+(g-1)*(z-b)
  j=c*z^d+g
  z=z-e*h/(f*j),
  .0000000000000000000000000000005 <= |h|
}

MandNewt13         { ; Jim Muth
  z=g=pixel, a=real(p1), b=imag(p1), c=real(p2),
  d=imag(p2), e=real(p3), f=imag(p3):
  h=z^a+(g-b)*z-f
  j=c*z^d+g
  z=z-e*h/j,
  0.000000000000000000000000000001 <= |h|
}

MandNewt14         { ; Jim Muth
  z=g=pixel, a=real(p1), b=imag(p1), c=real(p2),
  d=imag(p2), e=real(p3), f=imag(p3):
  h=z^a+(g-1)*(z-b)
  j=c*z^d+g
  z=z-e*h/(f*j),
  0.000000000000000000000000000001 <= |h|
}

ManJul2CPwr        { ; Jim Muth
      ; Creates and rotates ^2 Hyperbrot Figure
      ; P1 sets point of rotation, P2 sets angle of rotation
      ; P3 sets power of C
  z=c=pixel:
  z=sqr(z)+p1+(p2*(c^p3)),
  |z| <= 100
}

ManZpwrAbs         { ; Jim Muth
  z=c=pixel:
  z=(p1*(z^|z|))+(p2*z^p3)+c,
  |z| <= 100
}

MoreSlices         { ; Jim Muth
               ; P1 -- M-center of slice
               ; P2 -- angle of slice
               ; P3 -- J-center of slice
  z=pixel+(p3), c=p1+(pixel*p2):
  z=sqr(z)+c,
  |z| < 16
}

Mult-XY-ZW-compjb  { ; Jim Muth
      ; draws 6 planes and rotations
      ;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
      ;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p4,
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p5:
  z=z^p2*(c^(p3-1))+c,
  |z| < 400
}

Multimin-XY-ZW-new { ; Jim Muth
      ; draws 6 planes and rotations
      ;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
      ;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p3,
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p4:
  z=(-z)^(p2)+c,
  |z| <= 36
}

Multirot-XY-ZW     { ; Jim Muth
      ; draws 6 planes and many rotations
      ; when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
      ; when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2,
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
  z=sqr(z)+c,
  |z| <= 36
}

Multirot-XY-ZW-new { ; Jim Muth
      ; draws 6 planes and rotations
      ; when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
      ; when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p3,
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p4:
  z=z^(p2)+c,
  |z| <= 36
}

Multirot-XY-ZW-VE  { ; Jim Muth
      ; draws 6 planes and rotations
      ; when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
      ; when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p3,
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p4:
  z=z^(p2)+c,
  |z| <= sqr(p5)
}

Multirot-XZ-YW     { ; Jim Muth
      ; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
  e=exp(flip(real(p1*.01745329251994))),
  f=exp(flip(imag(p1*.01745329251994))),
  z=f*real(pixel)+p2, c=e*imag(pixel)+p3:
  z=sqr(z)+c,
  |z| <= 36
}

Multirot-XZ-YW-new { ; Jim Muth
      ; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
  e=exp(flip(real(p1*.01745329251994))),
  f=exp(flip(imag(p1*.01745329251994))),
  z=f*real(pixel)+p3, c=e*imag(pixel)+p4:
  z=z^(p2)+c,
  |z| <= 36
}

MultXYZWcompjb-min { ; Jim Muth
      ; draws 6 planes and rotations
      ;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
      ;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p4,
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p5,
  q=(c^(p3-1)):
  z=(-z)^(p2)*(q)+c,
  |z| < 400
}

Mystic2            { ; Jim Muth
  a=real(p1), b=imag(p1), c=real(p2),
  d=imag(p2), k=real(p3), f=imag(p3),
  g=pixel, z=(pixel)^a+(b*(pixel))^c:
  z=(fn1(z)+(d*(g)))^k+(f*(cos(g)))
  g=sqr(g),
  LastSqr <= 100
}

MyTestAF           { ; Jim Muth
  z=c=pixel,
  a=flip(real(p1)), b=flip(imag(p1)):
  z=z^a+(-z)^b+c,
  |z| <= 100
}

MytestAG           { ; Jim Muth
  z=c=pixel,
  a=flip(real(p1)), b=flip(imag(p1)):
  z=(z^a)^(-b)+c,
  |z| <= 100
}

MytestAGnew        { ; Jim Muth
  z=c=pixel,
  a=flip(real(p1)), b=flip(imag(p1)),
  d=real(p2), f=imag(p2):
  z=(d*(z^a))^(f*(-b))+c,
  |z| <= 100
}

MytestAH           { ; Jim Muth
  z=1, c=pixel:
  z=z^p1+z^(-p1)+c,
  |z| <= 100
}

Mytest07           { ; Jim Muth
  z=pixel, a=real(p2), b=imag(p2), c=b*(pixel):
  z=(((z^p1)*(z+a))^p3)^(-p3)+c,
  |z| <= 100
}

MyTest08c          { ; Jim Muth
  z=fn1(pixel), a=real(p3),
  b=imag(p3), c=a+(b*pixel):
  z=(((z^p1)*z)^p2)^(-p2)+c,
  |z| <= 100
}

Mytest09           { ; Jim Muth
  z=fn1(pixel), a=real(p3),
  b=imag(p3), c=a+(b*pixel):
  z=(((z^p1)*fn2(z))^p2)^(-p2)+c,
  |z| <= 100
}

NewDivideBrot      { ; Jim Muth
  z=(0,0), c=pixel, a=-(real(p1)-2),
  b=imag(p1)+0.00000000000000000001:
  z=z^2*fn1(z^(a)+b)+c
  |z| < 1000000
}

NewtonTest27       { ; Jim Muth
  a=real(p1), b=imag(p1), c=real(p2),
  d=imag(p2), k=real(p3), f=imag(p3),
  z=(pixel):
  zx=(z^b)-a
  zy=(c*z)^d
  z=z-(k*zx/zy),
  |zx| >= f
}

Oblate             { ; Jim Muth  real(z),imag(c)
  z=real(pixel)+p1,
  c=flip(imag(pixel))+p2:
  z=sqr(z)+c,
  |z| <= 16
}

OblateMix2         { ; Jim Muth
  z=real(pixel)+flip(real(p3)),
  c=fn1(flip(imag(pixel)))+imag(p3),
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2):
  z=(a*(z^b))+(d*(z^f))+c,
  |z| <= 100
}

OblateN            { ; Jim Muth
  b=p1, z=real(pixel)+p2,
  c=flip(imag(pixel))+p3:
  z=z^(b)+c,
  |z| <= 16
}

ObliqueMand        { ; Jim Muth
  z=c=pixel:
  z=sqr(z)+p1+(c*p2),
  |z| <= 100
}

ObliqueManPlus     { ; Jim Muth
  z=p1+pixel, c=p2+(p3*pixel):
  z=sqr(z)+c,
  |z| <= 100
}

ObliqueSqrt        { ; Jim Muth
  z=c=pixel:
  z=z^(1.4142)+p1+(c*p2),
  |z| <= 100
}

OldOblate          { ; Jim Muth
  real(z),imag(c)
  z=real(pixel)+flip(real(p1)),
  c=flip(imag(pixel))+imag(p1):
  z=sqr(z)+c,
  |z| <= 16
}

Parabolic          { ; Jim Muth  real(z),real(c)
  z=imag(pixel)+p1,
  c=real(pixel)+p2:
  z=sqr(z)+c,
  |z| <= 16
}

ParabolicMix3      { ; Jim Muth
  z=imag(pixel)+flip(real(p5)),
  c=fn1(real(pixel))+flip(imag(p5)),
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2),
  g=real(p3), h=imag(p3), j=real(p4), k=imag(p4):
  z=(a*(z^b))+(d*(z^f))+(g*(z^h))+(j*(z^k))+c,
  |z| <= 100
}

PosiTail           { ; Jim Muth
  z=c=pixel:
  z=sqr(z)-0.19*(z*z*z)+c,
  |z| <= 100
}

Rectangular        { ; Jim Muth  imag(z),imag(c)
  z=flip(real(pixel))+p1,
  c=flip(imag(pixel))+p2:
  z=sqr(z)+c,
  |z| <= 16
}

SliceJB-new        { ; from John R. H. Goering, July 1999
  pix=pixel, u=real(pix), v=imag(pix), a=pi*real(p1),
  b=pi*imag(p1), g=pi*real(p2), d=pi*imag(p2), ca=cos(a),
  cb=cos(b), sb=sin(b), cg=cos(g), sg=sin(g), cd=cos(d),
  sd=sin(d), p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd), r=u*sg+v*ca*sb*cg,
  s=v*sin(a), c=p+flip(q)+(p4), z=r+flip(s)+(p5):
  z=z^(p3)+c
  |z| <= 9
}

SliceJB-new-min    { ; by John R. H. Goering, July 1999
  pix=pixel, u=real(pix), v=imag(pix), a=pi*real(p1),
  b=pi*imag(p1), g=pi*real(p2), d=pi*imag(p2), ca=cos(a),
  cb=cos(b), sb=sin(b), cg=cos(g), sg=sin(g), cd=cos(d),
  sd=sin(d), p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd), r=u*sg+v*ca*sb*cg,
  s=v*sin(a), c=p+flip(q)+(p4), z=r+flip(s)+(p5):
  z=(-z)^(p3)+c
  |z| <= 100
}

SliceJulibrot      { ; Jim Muth
                     ; draws most oblique slices
  pix=pixel, u=real(pix), v=imag(pix), a=pi*real(p1),
  b=pi*imag(p1), g=pi*real(p2), d=pi*imag(p2), ca=cos(a),
  cb=cos(b), sb=sin(b), cg=cos(g), sg=sin(g), cd=cos(d),
  sd=sin(d), p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd), r=u*sg+v*ca*sb*cg,
  s=v*sin(a), c=p+flip(q)+p3, z=r+flip(s)+p4:
  z=sqr(z)+c
  |z| <= 9
}

SliceJulibrot2     { ; Jim Muth
                     ; draws most slices of Julibrot
  pix=pixel, u=real(pix), v=imag(pix),
  a=pi*real(p1*0.0055555555555556),
  b=pi*imag(p1*0.0055555555555556),
  g=pi*real(p2*0.0055555555555556),
  d=pi*imag(p2*0.0055555555555556),
  ca=cos(a), cb=cos(b), sb=sin(b), cg=cos(g),
  sg=sin(g), cd=cos(d), sd=sin(d),
  p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd),
  r=u*sg+v*ca*sb*cg, s=v*sin(a),
  c=p+flip(q)+p3, z=r+flip(s)+p4:
  z=sqr(z)+c
  |z| <= 9
}

SliceJulibrot2a    { ; Jim Muth
                     ; draws most slices of Julibrot
  pix=pixel, u=real(pix), v=imag(pix),
  a=pi*real(p1*0.0055555555555556),
  b=pi*imag(p1*0.0055555555555556),
  g=pi*real(p2*0.0055555555555556),
  d=pi*imag(p2*0.0055555555555556),
  ca=cos(a), cb=cos(b), sb=sin(b), cg=cos(g),
  sg=sin(g), cd=cos(d), sd=sin(d),
  p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd),
  r=u*sg+v*ca*sb*cg, s=v*sin(a),
  c=p+flip(q)+p3, z=r+flip(s)+p4:
  z=sqr(z)+c
  |z| <= real(p5+9)
}

SliceJulibrot3     { ; Jim Muth
                     ; draws most slices of Julibrot
  pix=pixel, u=real(pix), v=imag(pix),
  a=pi*real(p1*0.0055555555555556),
  b=pi*imag(p1*0.0055555555555556),
  g=pi*real(p2*0.0055555555555556),
  d=pi*imag(p2*0.0055555555555556),
  ca=cos(a), cb=cos(b), sb=sin(b), cg=cos(g),
  sg=sin(g), cd=cos(d), sd=sin(d),
  p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd),
  r=u*sg+v*ca*sb*cg, s=v*sin(a),
  c=p+flip(q)+p3, z=r+flip(s)+sqrt(p4):
  z=sqr(z)+c
  |z| <= 9
}

SliceJulibrot4     { ; Jim Muth
                     ; draws most slices of Julibrot
  pix=pixel, u=real(pix), v=imag(pix),
  a=pi*real(p1*0.0055555555555556),
  b=pi*imag(p1*0.0055555555555556),
  g=pi*real(p2*0.0055555555555556),
  d=pi*imag(p2*0.0055555555555556),
  ca=cos(a), cb=cos(b), sb=sin(b), cg=cos(g),
  sg=sin(g), cd=cos(d), sd=sin(d),
  p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd),
  r=u*sg+v*ca*sb*cg, s=v*sin(a),
  c=p+flip(q)+p3, z=r+flip(s)+p4:
  z=z^(p5)+c
  |z| <= 9
}

SliceJulibrot5     { ; Jim Muth
                     ; draws slices of (-Z)^n Julibrot
  pix=pixel, u=real(pix), v=imag(pix),
  a=pi*real(p1*0.0055555555555556),
  b=pi*imag(p1*0.0055555555555556),
  g=pi*real(p2*0.0055555555555556),
  d=pi*imag(p2*0.0055555555555556),
  ca=cos(a), cb=cos(b), sb=sin(b), cg=cos(g),
  sg=sin(g), cd=cos(d), sd=sin(d),
  p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd),
  r=u*sg+v*ca*sb*cg, s=v*sin(a),
  c=p+flip(q)+p3, z=r+flip(s)+p4:
  z=(-z)^(p5)+c
  |z|<=9
}

SliceJulibrot6     { ; Jim Muth
                     ; draws slices of DivideBrot
  pix=pixel, u=real(pix), v=imag(pix),
  a=pi*real(p1*0.0055555555555556),
  b=pi*imag(p1*0.0055555555555556),
  g=pi*real(p2*0.0055555555555556),
  d=pi*imag(p2*0.0055555555555556),
  ca=cos(a), cb=cos(b), sb=sin(b), cg=cos(g),
  sg=sin(g), cd=cos(d), sd=sin(d),
  aa=real(p5), bb=imag(p5)+0.00000000000000000001,
  p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd),
  r=u*sg+v*ca*sb*cg, s=v*sin(a),
  c=p+flip(q)+p3, z=r+flip(s)+p4:
  z=sqr(z)/(z^(-aa)+bb)+c
  |z|< 1000000
}

SliceJulibrotMin4  { ; Jim Muth
                     ; draws most slices of Julibrot
  pix=pixel, u=real(pix), v=imag(pix),
  a=pi*real(p1*0.0055555555555556),
  b=pi*imag(p1*0.0055555555555556),
  g=pi*real(p2*0.0055555555555556),
  d=pi*imag(p2*0.0055555555555556),
  ca=cos(a), cb=cos(b), sb=sin(b), cg=cos(g),
  sg=sin(g), cd=cos(d), sd=sin(d),
  p=u*cg*cd-v*(ca*sb*sg*cd+ca*cb*sd),
  q=u*cg*sd+v*(ca*cb*cd-ca*sb*sg*sd),
  r=u*sg+v*ca*sb*cg, s=v*sin(a),
  c=p+flip(q)+p3, z=r+flip(s)+p4:
  z=(-z)^(p5)+c
  |z| <= 9
}

Test-01            { ; Jim Muth
  z=real(pixel)+(p1*(fn1(imag(pixel))))
  c=p2*real(pixel)+fn2(imag(pixel)):
  z=z^p3+c
  |z| <= 100
}

Test0622           { ; Jim Muth
  z=p1, c=fn1(pixel)+p2:
  z=sqr(z)+c
  |z| < 16
}

TestZero           { ; Jim Muth
  z=p1, c=pixel:
  z=z*c^fn1(z),
  |z| <p2
}

TileWall           { ; Jim Muth
                     ; p1=Mandelbrot set coordinates
  z=c=p1+.05*(fn1(fn2(real(pixel)))\
  +flip(fn3(fn4(imag(pixel))))):
  z=sqr(z)+c,
  |z| <= 100
}

TMan1              { ; Russell Walsmith
                     ; Fri, 17 Jan 2003 11:12:25
  c1=flip(real(pixel)),c2=imag(pixel),c3=p1
  z1=z2=z3=0:
  t1=z1*z1+2*z2*z3
  t2=z3*z3+2*z1*z2
  t3=z2*z2+2*z3*z1
  z1=t1+c1,z2=t2-c2*c2,z3=t3+c3
  z=z1+z2+z3
  |z| < 8
}

TMan5              { ; Jim Muth
  c1=real(pixel),c2=imag(pixel),c3=p1
  z1=z2=z3=0:
  t1=z1*z1+2*z2*z3
  t2=z3*z3+2*z1*z2
  t3=z2*z2+2*z3*z1
  z1=t1+c1,z2=t2-c2*c2,z3=t3+c3
  z=z1-z2+z3
  |z| < 8
}

TowerExp02         { ; Jim Muth
  z=pixel, c=p2+(p3*pixel):
  z=z^(z^(z+p1))+c,
  |z| <= 100
}

TowerMinExp04a     { ; Jim Muth
  z=pixel, c=p2+(p3*pixel):
  z=z^fn1(z^fn2(-z^fn3(z^fn4(-z+p1))))+c,
  |z| <= 100
}

Triternion         { ; Jim Muth
                     ; adapted from Morgan Owens' formula
  c1=real(pixel)+(p1),
  c2=imag(pixel)+(p2),
  c3=(p3),z1=z2=z3=0:
  nz1=z1*z1+z2*z3+z3*z2+c1
  nz2=z1*z2+z2*z1+z3*z3+c2
  nz3=z1*z3+z2*z2+z3*z1+c3
  z1=nz1,z2=nz2,z3=nz3
  z=nz1+flip(nz2)
  |z-pixel| < 100
}

Wallpaper          { ; 
      ; use fp math, no periodicity, XY symmetry
      ; p1=location in M-set
      ; p2=magnitude
  z=c=p1+(1/p2)*(tan(cos(real(pixel)))\
  +flip(tan(cos(imag(pixel))))):
  z=z*z+c,
  |z| <= 64
}
