; lefto_96.frm, the required formulas for lefto_96.par compilation
; compiled by Les St Clair December 1997

Barnsley_PHC_3 {; formula adapted by Vincent Damion Presogna
  z = c = pixel
  c1 = p1*whitesq + c*(whitesq==0) , c2 = p2*(whitesq==0) :
   z1 = z - (z>=0) + (z<0)
   z = z1*c1 + c2
    |z| < 4
}

BEJ-N141 {
  z=pixel/1.1357,c=sqr(abs(pixel)):
  z=fn2(z)*pixel+fn1(c)
  z=z*z-c
  |0.0001|<z
}

BJ-BC-1e {; Modified Bob Carr modified Sylvie Gallet frm.
  z=pixel,
  c=pixel^2+0.25,
  iter=1,rad=6,center=(-7.6,-3.0)
  pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
  zn=(center+rad/(pix-center)),limit=real(p1)
  test0=1,b1=16,b2=0.0001,test3=0:
  test1=(iter<limit),test0=1-test0,test2=(iter!=limit)
  z=(z+zn)*test2-(zn),z2=z*z+c,z4=z2*z2,
  z6=z2*z4,z1=((z6*z-1)/(imag(p1)*z6)),
  z=(z*z+(c-((0.3,0.65))-c/8))*test1+((z-z1)*(1-test1)),
  test3=(test3 || (|z|>b1))
  z=z*1.01105*(1-(test3 && test0 && test1))
  iter=iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
}

Gallet-4-02 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , h = p1 , a = p2 :
   x = real(z) , y = imag(z)
   y1 = y + fn2(x + a*fn1(x+h))
   x1 = x - fn2(y + a*fn1(y+h))
   z = x1 + flip(y1)
    |z| <= 16
}

Gallet-4-03 {; Sylvie Gallet [101324,3444], 1996
  z2 = 0 , z1 = c = pixel :
   z = fn1(z1) + p1*real(c)*fn2(z1) + p2*imag(c)*z2
   z2 = z1 , z1 = z
    |z| <= 4
}

Gallet-4-04 {; Sylvie Gallet [101324,3444], 1996
             ; PHC formula
  z = pixel * whitesq + (whitesq == 0 ) / pixel :
   x = real(z) , y = imag(z)
   x1 = x - p1 * fn1(y + p2*fn2(y))
   y1 = y - p1 * fn1(x + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 4
}

Gallet-4-05 {; Sylvie Gallet [101324,3444], 1996
             ; PHC formula
  z = pixel :
   x = real(z) , y = imag(z)
   x1 = x - p1 * fn1(y*(y - whitesq) + p2*fn2(y))
   y1 = y - p1 * fn1(x*(x - (whitesq == 0)) + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 4
}

Gallet-4-11 {; Sylvie Gallet [101324,3444], 1996
  p = (0,1) * p1 , bailout = p2
  a = pixel + p , b = pixel - p :
   a = fn1(a) + flip(fn2(a))
   b = fn1(b) + flip(fn2(b))
   z = (a + b) / 2
    |a| <= bailout || |b| <= bailout
}

Gallet-5-01 {; Sylvie Gallet [101324,3444], 1996
  sq3 = sqrt(3) , sq32 = 0.5*sq3 , l = real(p1) , h = l*sq32 , l3 = 3*l
  h2 = 2*h , h3 = 3*h , h4 = h2 + h2 , l15 = 0.5*l3
  c1 = 0.5*l + flip(h) , c2 = l , rot = -0.5 + flip(sq32)
  y = imag(pixel) , x = real(pixel) - y/sq3
  y = y - floor(y/h3)*h3 , x = x - floor(x/l3)*l3 + y/sq3
  d = 0.5*y + sq32*x - h3 , x = x - d*sq3*(d>0) , y = y - d*(d>0)
  y = y - h2*(y>h2)
  t = y < sq3*x-h4 , x = x - l15*t , y = y + h*t
  q1 = abs(floor(y / h))
  d2 = -sq32*x + 0.5*y , q2 = abs(floor(d2 / h))
  d3 = sq32*x + 0.5*y - h , q3 = abs(floor(d3 / h))
  q = q1 + q2 + q3 , odd = q != 2*floor(q/2)
  y = y*(odd==0) + (h2-y)*odd
  t = y > -sq3*x + h4 , x = x - l15*t , y = y - h*t
  z = x + flip(y) , z = z * (y<=h) + ((z-c1)*conj(rot) + c1) * (y>h)
  x = real(z) , z = z * (x<l) + ((z-c2)*rot + c2) * (x>=l)
  z = c = p2*z + p3 :
   z = z*z + c
    |z| <= 4
}

Gallet-5-03 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z), y = imag(z) :
   x1 = x*x + p1*fn1((y) + fn2(p2*y))
   y1 = y*y + p1*fn1((x) + fn2(p2*x))
   x = x1 , y = y1
   z = fn3(x * y)
    |z| <= p3
}

Gallet-5-04 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z) , y = imag(z)
  rp1 = real(p1) , ip1 = imag(p1) :
   exp2x = exp(2*x) , exp3y = exp(3*y)
   fx = x * exp3y - rp1 , fy = y*(1 + exp2x) - ip1
   a = exp3y , b = 3*x * exp3y , c = 2*y * exp2x , d = 1 + exp2x
   div = a*d - b*c,
   z = z - ((d*fx-b*fy) + flip(-c*fx+a*fy)) / div
   x = real(z) , y = imag(z)
    |fx| > p2 || |fy| > p2
}

Gallet-5-05 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = z , y = conj(z) :
   hx = p1*fn1(x) , hy = p1*fn2(y)
   x = x + hy , y = y + hx
   z = x + flip(y)
    (|hx|+|hy|) >= p2
}

Gallet-5-06 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = z , y = flip(z) :
   hx = p1*fn1(x) , hy = p1*fn2(y)
   x = x + hy , y = y + hx
   z = x + flip(y)
    (|hx|+|hy|) <= p2
}

Gallet-5-07 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = z*(0,1) , y = z*(0,-1) :
   hx = p1*fn1(x) , hy = p1*fn2(y)
   x = x + hy , y = y + hx
   z = x + flip(y)
    (|hx|+|hy|) <= p2
}

Gallet-5-08 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z) , y = imag(z) :
   x1 = x - p1*fn1(y + fn2(p2*x) + fn3(p3*y))
   y1 = y - p1*fn1(x + fn2(p2*y) + fn3(p3*x))
   x = x1 , y = y1
   z = x + flip(y)
    |z| <= 32
}

jowe_13 {; Jo Weber, July 1996
  c=p1
  z=pixel:
  z=fn1(z)-c/fn2(z)
}

JoWe_xy_01 = { ; Jo Weber [100424,35] 9/1996 
               ; p1 is bailout
                  z = pixel, bailout=p1:
                  x=real(z), y=imag(z),
                  x=p2*x+conj(z), y=p3*y+flip(z)
                  z=x+y
                  z=sqr(z)
                  z=fn1(z)+fn2(z)
                  |z|<=bailout
}

JoWe_XY_13a {; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z = sin(pixel)-fn3(1-pixel) :
  x1=real(z),  y1= imag(z)
  x1=p1*x1+fn1(x1+fn2(x1))
  y1=p2*y1-fn1(y1-fn2(y1))
  z=x1+y1
  |z|<=bailout
}

Lesfrm01g (xaxis)  { ; Les St Clair, 1996
                     ; modified Lesfrm01r
                     ; generalised version for development
                     ; some functions requires Fractint 19.4 or later
                     ; use fn3 to select round, floor, ceil, trunc
c=z=pixel:
p=p1*((fn1(c)/fn2(z))/(c*c*c))
q=fn3(p)
r=q/p1
z=z+r,|z| <=4
}

Lesfrm01r {; Les St Clair, 1996
           ; modified Lesfrm01 to include rounding function
           ; requires Fractint 19.4 or later
           ; p1 sets degree of rounding
           ; smaller p1 = coarser rounding
  c=z=pixel:
  p=p1*((fn1(c)/fn2(z))/(c*c*c))
  q=round(p)
  r=q/p1
  z=z+r,
  |z| <=4
}

Lesfrm04r (xaxis) { ; Les St Clair, 1996
                    ; modified Lesfrm04 to include rounding function
                    ; requires Fractint 19.4 or later
                    ; p1 sets degree of rounding
                    ; smaller p1 = coarser rounding
c=z=pixel:
p=p1*((fn1(c^2)/fn2(z^2))/(c*c*c*c))
q=round(p)
r=q/p1
z=z+r,|z| <=6
}

Lesfrm13 { ; Les St Clair, 1996
 z = pixel 
 x = fn1(z) , y = fn2(z):
 x = x*p1*pi
 y = y*p2*pi 
 z = x/y
 |z| <= 4
}

Lesfrm16 {; Les St Clair, 1996
  z = c = pixel:
  x = p1*fn1(z)
  y = p2*fn2(z)
  x1= x*x
  y1= y*y
  z = c + x1/y1
  |z| <= 4
}

Lesfrm25 { ; Les St Clair, 1996
           ; Modified formula, sorry I don't remember who's!!
 z = 1/c = pixel
 x=real(z), y=imag(z)
 i = (x<.7) && (x>-.1)
 test = 1*real(i) || y<1:
 z = z*z + fn1(c^p1)
 y = y^4 + fn2(c^p2)
 (|z| <4) && test && (|y| <4)
}

Lesfrm26 { ; Les St Clair, 1996
           ; Modified formula, sorry I don't remember who's!!
 z = 1/c = pixel^p3
 x=real(z), y=imag(z)
 i = (x<.7) && (x>-.1)
 test = 1*real(i) || y<1:
 z = z*z + fn1(c^p1)
 y = y^4 + fn3(fn2(c^p2))
 (|z| <4) && test && (|y| <4)
}

Lesfrm28 { ; Les St Clair, 1996
           ; Modified Sylvie Gallet formula (Gallet-5-08)
  z = pixel , x = real(z) , y = imag(z) :
   x1 = x - p1*fn1(y + fn2(p2*x) + fn3(p3*y))
   y1 = y - p1*fn1(x + fn2(p2*y) + fn3(p3*x))
   x = x1*pi  , y = y1*pi
   z = x + flip(y)
    |z| <= 32
}

Lesfrm29 { ; Les St Clair, 1996
           ; Modified Sylvie Gallet formula (Gallet-5-08)
  z = pixel^2 , x = real(z) , y = imag(z) :
   x1 = x - p1*fn1(y + fn2(p2*x) + fn3(p3*y))
   y1 = y - p1*fn1(x + fn2(p2*y) + fn3(p3*x))
   x = x1*pi  , y = (y1*pi)/x
   z = x + flip(y) 
    |z| <= 32
}

LesPHCfrm02 { ; Les St Clair, 101461.2032@compuserve.com, 1996
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  ; Yikes! this is an old one - not updated for whitesq (sorry)
count = (count + 1) * (count != (p3-1))
evenodd = (evenodd == (count == 1))
oddeven = (evenodd == 0)
z = evenodd * pixel
c = oddeven / pixel:
z = z*z+c
|z| < 4
}

LesPHCfrm03 { ; Les St Clair [101461,2032], 1996  Requires passes=1
              ; PHC from LF_13 & LF_29 mod.
 z = pixel 
 x = fn1(z) , y = fn2(z)
 v = real(z) , w = imag(z) :
 x = x*p1*pi
 y = y*p2*pi 
 v1 = v - p1*fn1(w + fn2(p2*v) + fn3(p3*w))
 w1 = w - p1*fn1(v + fn2(p2*w) + fn3(p3*v))
 v = v1*pi  , w = (w1*pi)/v
 z = (x/y) * (whitesq == 0) + (v + flip(w)) * whitesq
 (|z| <= 4 && whitesq == 0) || (|z| <= 32 && whitesq)
}

LesPHCfrm04 {; Les St Clair [101461,2032], 1996  Requires passes=1
             ; Based on Liar1 & Glynn formulas by Chuck Ebbert and
             ; Earl Glynn 
  z = pixel:
  x = 1 - abs(imag(z)-real(z))
  z = (1 - abs(imag(z)-real(z)) + flip(1 - abs(1-real(z)-imag(z))))\
      * (whitesq == 0) + (z ^ p1 - p2) * whitesq
  (|z| <= 1 && whitesq == 0) || (|z| <= 4 && whitesq)
}

Moo_PHC {; by Vincent Damion Presogna, Oct. 18, 1996
  z = pixel 
  halfe = e*(-0.5) 
  quartere = e*(-.25):
  z = z + p1
  y = tan(1/z)
  r = y + pixel
  q = y * pixel
  z = fn2(z)*r^halfe*(whitesq == 0) + fn1(z)*q^quartere*(whitesq) 
  |z| <= 4
}

PD_411 {
  bailout = 4 + imag(p3)
  k = real(p3), z = z1 = pixel
  c = p1*tan(z):
  z1 = fn1(z1^k) + p2*fn2(z1*c)
  x1 = real(z1), y1 = imag(z1)
  z2 = -x1 + flip(y1)
  z = log(z1)*whitesq + log(z2)*(whitesq==0)
  (|real(z)| <= bailout) && (|imag(z)| <= bailout)
}
