

01-Carr{
c=z=1/pixel + (z=c=cosxx(z) + 1/pixel):
z=sqr(z) + c;
z=sqr(z) + c,
|z| <=10
}


01A-Carr{
c=z=1/pixel + (z=c=cosxx(z) + 1/pixel):
z=sqr(z) + c*c;
z=sqr(z) + c*c,
|z| <=10
}


02-Carr{
c=z=1/pixel + (z=c=cosxx(z) + 1/pixel):
z=sqr(z*z) + c;
z=sin(z*z) + c,
|z| <=10
}


02A-Carr{
c=z=1/pixel + (z=c=cosxx(z) + 1/pixel):
z=sqr(z*z) + c*c;
z=sin(z*z) + c*c,
|z| <=10
}


03-Carr{
c=z=1/pixel + (z=c=cosxx(z) + 1/pixel):
z=sin(z) + c-0.14;
z=sin(z) + c-0.14,
|z| <=10
}


03A-Carr{
c=z=1/pixel + (z=c=cosxx(z) + 1/pixel):
z=sin(z) + c*c-0.14;
z=sin(z) + c*c-0.14,
|z| <=10
}


04-Carr{
c=z=1/pixel + (z=c=cosxx(z) + 1/pixel):
z=sqr(z) + c-0.14;
z=sqr(z) + c-0.14,
|z| <=10
}


04A-Carr{
c=z=1/pixel + (z=c=cosxx(z) + 1/pixel):
z=sqr(z) + c*c-0.14;
z=sqr(z) + c*c-0.14,
|z| <=10
}


05-Carr{
c=z=1/pixel + (z=c=tanh(z) + 0.33/pixel):
z=sqr(z) + c-0.14;
z=sqr(z) + c-0.14,
|z| <=10
}


05A-Carr{
c=z=1/pixel + (z=c=tanh(z) + 0.33/pixel):
z=sqr(z) + c*c-0.14;
z=sqr(z) + c*c-0.14,
|z| <=10
}


06-Carr{
c=z=1/pixel + (z=c=tanh(z) + 0.33/pixel):
z=cosxx(z) + c-0.14;
z=cosxx(z) + c-0.14,
|z| <=10
}


06A-Carr{
c=z=1/pixel + (z=c=tanh(z) + 0.33/pixel):
z=cosxx(z) + c*c-0.14;
z=cosxx(z) + c*c-0.14,
|z| <=10
}


07-Carr{
c=z=1/pixel + (z=c=flip(z) + 0.33/pixel):
z=cosxx(z) + c-0.14;
z=tanh(z) + c-0.14,
|z| <=10
}


07A-Carr{
c=z=1/pixel + (z=c=flip(z) + 0.33/pixel):
z=cosxx(z) + c*c-0.14;
z=tanh(z) + c*c-0.14,
|z| <=10
}


08-Carr{
c=z=1/pixel,c=cosxx(z)+1/pixel:
z=(sqr(z*z)*sin(z/pixel)-pixel)+c,
|z| <=10
}


08A-Carr{
c=z=1/pixel,c=cosxx(z)+1/pixel:
z=(sqr(z*z)*sin(z/pixel)-pixel)+c*c,
|z| <=10
}


09-Carr{
z=oldz=c=1/pixel, c=cosxx(z):
temp=z
z=z*oldz+c
oldz=temp
|z| <=4
}


09A-Carr{
z=oldz=c=1/pixel, c=cosxx(z):
temp=z
z=z*oldz+c*c
oldz=temp
|z| <=4
}


10-Carr{
z=oldz=c=1/pixel, c=cosxx(z):
temp=z
z=flip(z*oldz+c)
oldz=temp
|z| <=4
}


10A-Carr{
z=oldz=c=1/pixel, c=cosxx(z):
temp=z
z=flip(z*oldz+c*c)
oldz=temp
|z| <=4
}


11-Carr{
z=oldz=c=1/pixel, c=cosxx(z):
temp=z
z=cosxx((z*oldz+c)/pixel)
oldz=temp;
z=sqr(z) + c,
|z| <=4
}


11A-Carr{
z=oldz=c=1/pixel, c=cosxx(z):
temp=z
z=cosxx((z*oldz+c*c)/pixel)
oldz=temp;
z=sqr(z) + c*c,
|z| <=4
}


12-Carr{
z=c=cosxx(1/pixel):
z=cosxx(z*z) + (sin(z) + c,
|z| <=10
}


12A-Carr{
z=c=cosxx(1/pixel):
z=cosxx(z*z) + sin(z) + c*c,
|z| <=10
}


13-Carr{
c=z=1/pixel, c=flip(-1.1,0.24)/pixel:
z=sqr(z) + c,
|z| <=10
}


13A-Carr{
c=z=1/pixel, c=flip(-1.1,0.24)/pixel:
z=sqr(z) + c*c,
|z| <=10
}


14-Carr{
z=c=1/pixel:
z=cosxx(c^z)/pixel;
z=(sqr(z) + 0.1) + c-1,
|z| <=10
}


14A-Carr{
z=c=1/pixel:
z=cosxx(c^z)/pixel;
z=(sqr(z) + 0.1) + c*c-1,
|z| <=10
}



Carr-01 {; 
  
  z = Pixel, z = cosxx(z):
   z = z + Pixel
   z = sqr(z)
    |z| <=4          
}


Carr-02 {
c = z = 1 / pixel
 z = cosxx(z) + c;
  |z| <= 4
}


Carr-02A {
c=z=1/pixel:
z=sqr(z) + .33;
|z| <=4
}


Carr-02B {
c=z=1/pixel:
z=sqr(z^z) + .33;
|z| <=4
}


Carr-02C {
c=z=1/pixel:
z=sqr(conj(z^z^z^z^z)) + .33;
|z| <=4
}


Carr-02D {
c=z=(1/pixel)/pixel-0.25:
z=sqr(z) + 0.33;
|z| <=4
}


Carr-02E {Try using Distance Estimator function on this formula
c=z=1/pixel:
z=sqr(z) + c;
z1=sqr(z) + 0.33,
|z| <=4
}


Carr-03 {
c = z = 1 / pixel:
 z = sin((z*z) - (aa3*z)) +b,
  |z| <= (p2 + 3)
}


Carr-04 {
c = z = 1 / pixel 
 z = cosh(z) + c;
  |z| <= 4
}


Carr-05 {
a=(0,0) , b=(0,0): 
z=z+1
anew=sqr(a)-sqr(b)+pixel
b=2.0*a*b+p1
a=anew,
 |a|+|b| <= 4
c = z = 1 / pixel
 z = sqr(z) + c;
  |z| <= 4
}


Carr-06 {was OK-03 and was modified
z = c = pixel:
z = cosxx(z)/c;
z = sin(z),
|z| <= (5 + p1)
}


Carr-07 {was OK-02 and was modified
z = c = 1 / pixel, k = 1 + p1:
z = (c^z) + c:
z = cotan(z) * k,
|z| <= (5 + p2)
}


Carr-08 {was OK-01 and was modified
z = 0, c = 1 / pixel:
z = (c^z) + c;
z = sqr(z),
|z| <= (5 + p1)
}


Carr-09 {was OK-04 and was modified
z = 0, c = cosxx(pixel):
z = sqr(z) + c,
|z| <= (5 + p1)
}


Carr-10 {
c=z= 1/pixel:
z=(tanh(z)*tanh(1/z)*z) + c,
|z| <=(5 + p1)
}


Carr-100 {
z=c=pixel:
z=sqr(z*z) + sqr(c^c);
z=sqr(z*z) + sin(c^pixel);
z=sqr(z*z) + sin(c^pixel),
|z| <=4
  ;SOURCE: carr-2.frm
   ;SOURCE: to-bob-6.frm
}


Carr-101 {
z=c=pixel:
z=sqr(z*z) + sqr(c^c);
z=sin(z*z) + sin(c^pixel);
z=sqr(z*z) + sin(c^pixel),
|z| <=4
}


Carr-102 {
z=c=pixel:
z=sqr(z*z) + sqr(c*pixel);
z=sin(z*z) + sin(c^pixel);
z=sqr(z*z) + sin(c^pixel),
|z| <=4
}


Carr-103 {
z=c=pixel:
z=sqr(z*z) + sqr(c^pixel);
z=sin(z*z) + flip(sin(c^pixel));
z=sqr(z*z) + sin(c^pixel),
|z| <=4
}


Carr-104 {
z=c=pixel:
z=sqr(z*z) + sqr(c^pixel);
z=sin(z*z*z) + flip(sin(c^pixel));
z=sqr(z*z*z) + sin(c^pixel),
|z| <=4
}


Carr-105 {
z=c=pixel:
z=sqr(z) + sqr(c*c);
z=sin(z) + sin(c);
z=sqr(z) + sin(c*c),
|z| <=4
}


Carr-106 {
z=c=pixel:
z=sqr(z) + sqr(c*c);
z=sin(z) + flip(sin(c));
z=sqr(z) + flip(c*c),
|z| <=4
}


Carr-107 {
z=c=pixel:
z=sqr(z*z) + (c*c);
z=sin(z*z) + sin(c);
z=sin(z*z) + sin(c),
|z| <=4
}


Carr-107w{
z=c=1/pixel:
z=sqr(z*z) + (c*c);
z=sin(z*z)*(z+pixel) + sin(c);
z=sin(z*z)*(z+pixel) + sin(c),
|z| <=4
}


Carr-108 {
z=c=pixel:
z=sqr(z*z) + (c*c);
z=sin(z*z) + sin(c);
z=sin(z*(1/z)) + sin(c*c),
|z| <=4
}


Carr-109 {
z=c=pixel:
z=sqr(z*z) + (c*c);
z=sin(z*z) + sin(c*c);
z=sin(z*(1/z)) + tanh(c*c),
|z| <=4
}


Carr-11 {
c=z=1/pixel:
z=sqr(z*(z+1.918)) + c;
z=sin(z*z) + c,
|z| <= 4
}


Carr-110 {
z=c=pixel:
z=sqr(z*z) + (c*c);
z=sin(z*z) + sin(c*c);
z=sin(z*(1/z)) + cotanh(c*c),
|z| <=4
}


Carr-111 {
z=c=1/pixel:
z=sqr(z*z) + c;
z=sin(z*z) + sin(c*c);
z=sin(z*(1/z)) + (sqr(c + pixel)),
|z| <=4
}


Carr-112 {
z=c=pixel:
z=sqr(z*z) + c;
z=sin(z*z) + sin(c*c);
z=sin(z*(1/z)) + (sqr(c+pixel)),
|z| <=4
}


Carr-113 {
z=c=pixel:
z=sqr(z*z) + sqr(c*pixel);
z=sin(z*z) + sqr(c*pixel);
z=sin(z*(1/z)) + sin(c*pixel),
|z| <=4
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-114 {
z=pixel + p1, c=1/pixel,
ex=(2*(|p2|<=0) + p2):
z=z^real(ex) + c;
z=z^real(ex) + c,
|z| <=4
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-115 {
z=1/pixel + p1, c=1/pixel,
ex=(2*(|p2|<=0) + p2):
z=(z^real(ex)) + c/pixel;
z=z^z^(1/z) + ((z^real(ex)) + c),
|z| <=4
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-116 {
z=1/pixel + p1, c=1/pixel,
ex=(1.334*(|p2|<=0) + p2):
z=((z^real(ex))-0.33) + (c/pixel);
z=z*z^z^(1/z) + ((z^real(ex)) + c),
|z| <=4
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-117 {
z=c=1/pixel,
t=(64*(real(p2)<=0) + real(p2)*(0<p2)):
z=(fn1((z)*1/z)*fn2(z)) + c,
|z| <=t
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-118 {
z=c=1/pixel,
t=(64*(real(p2)<=0) + real(p2)*(0<p2)):
z=(fn1((z)*1/z)*fn2(z)*1/z) + c;
z=(fn1((z)*1/z)*fn2(z)*1/z) + c,
|z| <=t
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-119 {
z=c=1/pixel,
t=(64*(real(p2)<=0) + real(p2)*(0<p2)):
z=(fn1((z)*1/z)*fn2(z)*1/z) - (0.12*c);
z=(fn1((z)*1/z)*fn2(z)*1/z) - (0.12*c);
z=(fn1((z)*1/z)*fn2(z)*1/z) - (0.12*c),
|z| <=t
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-12 {
c=z=sqr(pixel):
z=sqr(z) + 2*c;
z=sqr(z) + c,
|z| <= 4
  ;SOURCE: carr-1.frm
    ;SOURCE: to-bob-6.frm
}


Carr-120 {
z=c=1/pixel,
t=(64*(real(p2)<=0) + real(p2)*(0<p2)):
z=(fn1((z)*1/z)*fn2(z)*1/z) - (0.51*c);
z=(fn1((z)*1/z)*fn2(z)*1/z) - (0.51*c);
z=(fn1((z)*1/z)*fn2(z)*1/z) - (0.51*c),
|z| <=t
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-121 {
z=c=1/pixel,
t=(64*(real(p2)<=0) + real(p2)*(0<p2)):
z=(fn1((z)*1/z)*fn2(z)*1/z) - (0.41*c);
z=(fn1((z)*1/z)*fn2(z)*1/z) - (0.41*c);
z=(fn1((z)*1/z)*fn2(z)*1/z) - (0.41*c),
|z| <=t
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-122 {
z=c=1/pixel,
t=(64*(real(p2)<=0) + real(p2)*(0<p2)):
z=(fn1((z)*1/z)*fn2(z)*1/z) + (0.41*c);
z=(fn1((z)*1/z)*fn2(z)*1/z) + (0.41*c);
z=(fn1((z)*1/z)*fn2(z)*1/z) + (0.41*c),
|z| <=t
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-123 {
z=c=1/pixel,
t=(64*(real(p2)<=0) + real(p2)*(0<p2)):
z=fn1((z)*1/z)*(sin(fn2(z)*1/z)) + (0.51*c);
z=fn1((z)*1/z)*(sin(fn2(z)*1/z)) + (0.51*c);
z=fn1((z)*1/z)*(sin(fn2(z)*1/z)) + (0.51*c),
|z| <=t
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-124 {
z=c=1/pixel,
t=(32*(real(p2)<=0) + real(p2)*(0<p2)):
z=2*(z/pixel)+fn1((1/z)*1/z)*(flip(fn2(z)*1/z)) + (0.51*c);
z=2*(z/pixel)+fn1((1/z)*1/z)*(flip(fn2(z)*1/z)) + (0.51*c);
z=2*(z/pixel)+fn1((1/z)*1/z)*(flip(fn2(z)*1/z)) + (0.51*c);
z=2*(z/pixel)+fn1((1/z)*1/z)*(flip(fn2(z)*1/z)) + (0.51*c),
|z| <=t
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-125 {
z=c=1/pixel,
t=(64*(real(p2)<=0) + real(p2)*(0<p2)):
z=(sin((z)*(1/z))*fn2(z)*1/z) + flip(pixel/c);
z=(sqr((z)*(1/z))*fn2(z)*1/z) + flip(pixel/c),
|z| <=4
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-126 {
z=c=1/pixel:
z=(fn1((z)*1/z)*fn2(z)*1/z)-(0.12*c);
z=(fn1((z)*1/z)*fn2(z)*1/z)-(0.12*c/pixel);
z=(fn1((z)*1/z)*fn2(z)*1/z)-(0.12*c);
z=(fn1((z)*1/z)*fn2(z)*1/z)-(0.12*c),
|z| <=t
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-127 {
z=c=1/pixel:
z=(fn1((z)*1/z)*fn2(z)*1/z)-(0.12*c);
z=sin(z*z) = c,
|z| <=t
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-128 {
z=c=1/(sqr(pixel)):
z=(sqr(1/cosxx(z))) + (sin(z^z^z));
z=(z+cosxx(pixel));
z=(sqr(z) + c),
|z| <=10
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-129 {
z=c=1/pixel:
z=(sqr(1/cosxx(z))) + (sin(z^z^z));
z= (z+cosxx(pixel));
z=(sqr(z) + c),
|z| <=10
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-13 {
c = z = cosxx(pixel):
z = cosxx(z) + 2;
zx = real(p2) +1, zy = imag(z);
c = z = 1 / sqr(pixel):
z = 1 / cosxx(z) +c;
|z| <= 4
  ;SOURCE: carr-1.frm
    ;SOURCE: to-bob-6.frm
}


Carr-130 {
z=c=pixel:
z=(sqr(1/cosxx(1/z))) + (sin(z*z*z));
z=(z+cosxx(pixel));
z=(sqr(z) + c),
|z| <=10
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-131 {
z=c=1/pixel:
z=(sqr(1/cosxx(1/z))) + (sin(z*z*z));
z=(z+cosxx(pixel));
z=(sqr(z) = c),
|z| <=10
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-132 {
z=c=1/pixel, z=cosxx(z):
z=z+(sqr(pixel));
z=(sqr(z) + c),
|z| <=10
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-133 {
z=c=1/pixel, z=cosxx(z):
z=z+(sqr(pixel));
z=(fn1((z)*1/z)*fn2(z)*1/z)-(0.12*c);
z=(sqr(z) + c),
|z| <=10
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-134 {
z=c=1/pixel, z=cosxx(z):
z=z*z*z*z*z*z*z;
z=(sin((z)*1/z)*tanh(z)*1/z)-(0.42*c);
z=(sqr(z) + c),
|z| <=10
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-135 {
z=c=1/pixel, z=cosxx(z):
z=sqr(z^z);
z=(sin((z)*z)*sin(z)*z)-(0.42*c);
z=(sqr(z) = c),
|z| <=10
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-136 {
z=c=1/pixel, z=tanh(z):
z=sqr(z^z^z);
z=(sin((z)*z)*sin(z)*z)-(0.42*c);
z=(sqr(z) + c/pixel),
|z| <=10
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-137 {
z=c=1/pixel, z=flip(z):
z=sqr(z^z^z);
z=(sin((z)*1/z)*sin(z)*1/z)-(0.42*c);
z=(sqr(z) + c/pixel),
|z| <=10
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-138 {
z=c=1/pixel, z=flip(z/pixel):
z=sqr(z^z^z);
z=(sin((z)*1/z)*sin(z)*1/z)-(0.42*c);
z=(tanh(z) + c/pixel),
|z| <=10
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-139 {
z=c=1/pixel, z=flip(z/pixel):
z=sqr(z*z*z);
z=(tanh(1/z) + c),
|z| <=10
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-14 {modified fnzp fnpix
z = 1 / tan(1 / pixel) +p1,
c = ((1 * (|p2|<=0) +p2) * fn2(1 / pixel) ):
z = fn1(z) * fn2(z),
 |z| <=64 
  ;SOURCE: carr-5.frm
   ;SOURCE: to-bob-6.frm
}


Carr-140 {
z=c=1/pixel, z=cosxx(z^z/pixel):
z=sqr(z*z*z);
z=(sin(z) + c),
|z| <=10
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-141 {
c=z=1/pixel, c=cosxx(z):
z=sqr(z) + c,
|z| <=4
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-142 {
c=z=1/pixel, c=cosxx(z):
z=sqr(z) + c;
z=sqr(z) + c,
|z| <=10
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-143 {
c=z=1/pixel, c=cosxx(z):
z=sqr(z) + c;
z=sin(z) + c,
|z| <=10
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-145{
z=c=sinh(pixel)/(1/pixel):
z=c^z,
|z| <=10
  ;SOURCE: carr-4.frm
   ;SOURCE: to-bob-6.frm
}


Carr-147{
z=c=1/pixel:
z=(flip(z*z)) + c;
z=(flip(z*z)) + c,
|z| <=10
  ;SOURCE: carr-4.frm
   ;SOURCE: to-bob-6.frm
}


Carr-149{
z=c=1/pixel:
z=sqr(flip(z*z*z)) + c;
z=sqr(flip(z*z*z)) + c,
|z| <=10
  ;SOURCE: carr-4.frm
   ;SOURCE: to-bob-6.frm
}


Carr-15(xaxis) {; Mark Peterson modified(Zoom all the way out & look)
  z = log(pixel) + 4c, z = cosxx(z): 
 z = z + cosxx(pixel);
 z = sqr(z)
     Lastsqr <=4 
  ;SOURCE: carr-5.frm
    ;SOURCE: to-bob-6.frm
}


Carr-150{
z=c=1/pixel:
z=sqr(flip(z*z*z)) + c;
z=sin(flip(z*z*z)) + c,
|z| <=10
  ;SOURCE: carr-4.frm
   ;SOURCE: to-bob-6.frm
}


Carr-151{;Dr. Chaosbrot 1 Modified
z=c=pixel:
z=sqr(z*z) + (((sqrt 5+1)/2)+c),
|z| <=4
  ;SOURCE: carr-4.frm
   ;SOURCE: to-bob-6.frm
}


Carr-152{
z=c=1/pixel:
z=cosxx(flip(z*z/pixel)) + (((sqrt 5+1)/2) + c);
z=sqr(flip(z))+c,
|z| <=4
  ;SOURCE: carr-4.frm
   ;SOURCE: to-bob-6.frm
}


Carr-153{
z=c=1/pixel:
z=tanh(z*z/pixel)+(((sqrt 5+1)/2)+c);
z=sqr(flip(z))+c,
|z| <=4
  ;SOURCE: carr-4.frm
   ;SOURCE: to-bob-6.frm
}


Carr-154{
z=c=1/pixel:
z=sqr(flip(z)) + c;
z=sqr(flip(z)) + c;
z=sqr(z) + c,
|z| <=4
  ;SOURCE: carr-4.frm
   ;SOURCE: to-bob-6.frm
}


Carr-155{
z=c=1/pixel:
z=sqr(flip(z)) + c;
z=sqr(flip(z)) + c;
z=sqr(z*z) + c,
|z| <=4
  ;SOURCE: carr-4.frm
   ;SOURCE: to-bob-6.frm
}


Carr-156{
z=c=pixel:
z=sqr(flip(z)) + c;
z=sqr(flip(z)) + c;
z=sqr(z*z) + c,
|z| <=4
  ;SOURCE: carr-4.frm
   ;SOURCE: to-bob-6.frm
}


Carr-157{
z=c=pixel:
z=sqr(flip(z*z)) + c;
z=sqr(flip(z*z)) + c;
z=sqr(z*z) + c,
|z| <=4
  ;SOURCE: carr-4.frm
   ;SOURCE: to-bob-6.frm
}


Carr-158{
z=c=1/pixel:
z=sqr(flip(z)) + c/pixel;
z=sqr(flip(z)) + c/pixel;
z=sqr(z*z*z) + c,
|z| <=4
  ;SOURCE: carr-4.frm
   ;SOURCE: to-bob-6.frm
}


Carr-159{
z=c=1/sqr(pixel):
z=sqr(z) + c;
z=sin(z) + c,
|z| <=4
  ;SOURCE: carr-4.frm
   ;SOURCE: to-bob-6.frm
}


Carr-16 {
z = 0:
z2 = z^z^z,
z = (cosxx(sqr(z-1)) ) + (sin(pixel));
 |z| <= 6
  ;SOURCE: carr-5.frm
    ;SOURCE: to-bob-6.frm
}


Carr-160{
z=c=sqr(pixel):
z=sqr(z) + c;
z=sin(z) + c,
|z| <=4
  ;SOURCE: carr-4.frm
   ;SOURCE: to-bob-6.frm
}


Carr-161{
z=c=sqr(pixel):
z=sqr(z*z) + c;
z=sin(z*z) + c,
|z| <=4
  ;SOURCE: carr-4.frm
   ;SOURCE: to-bob-6.frm
}


Carr-162{
z=c=sqr(1/pixel):
z=sqr(z*z) + c;
z=sin(z*z) + c,
|z| <=4
  ;SOURCE: carr-4.frm
   ;SOURCE: to-bob-6.frm
}


Carr-163{
z=c=sin(1/pixel):
z=sqr(z*z) + c;
z=sin(z*z) + c,
|z| <=4
  ;SOURCE: carr-4.frm
   ;SOURCE: to-bob-6.frm
}


Carr-164{
z=c=sin(pixel):
z=sqr(z*z) + c;
z=sin(z*z) + c,
|z| <=4
  ;SOURCE: carr-4.frm
   ;SOURCE: to-bob-6.frm
}


Carr-165{
z=c=sin(pixel):
z=sqr(z*z) + c;
z=sin(z*z) + c;
z=sqr(1/z*1/z) + c,
|z| <=4
  ;SOURCE: carr-4.frm
   ;SOURCE: to-bob-6.frm
}


Carr-166{
z=c=sin(1/pixel):
z=sqr(z*z) + c;
z=sin(z*z) + c;
z=sqr(1/z*1/z) + c,
|z| <=4
  ;SOURCE: carr-6.frm
   ;SOURCE: to-bob-6.frm
}


Carr-167{
z=c=sqr(1/pixel):
z=sqr(z*z) + c;
z=sin(z*z) + c;
z=sqr(1/z*1/z) + c,
|z| <=4
  ;SOURCE: carr-6.frm
   ;SOURCE: to-bob-6.frm
}


Carr-168{
z=c=sqr(1/pixel):
z=sin(z*z) + c;
z=sin(z*z) + c;
z=sin(1/z*1/z) + c,
|z| <=4
  ;SOURCE: carr-6.frm
   ;SOURCE: to-bob-6.frm
}


Carr-169{
z=c=1/pixel:
z=sqr(z) + c;
z=sin(z) + c,
|z| <1000
  ;SOURCE: carr-6.frm
   ;SOURCE: to-bob-6.frm
}


Carr-17(xaxis) {; Mark Peterson modified by Bob Carr
c = z = 1 / pixel:
z = sqr(z) +c;
z2 = sqr(z) +c,
  |z| <= 10
  ;SOURCE: carr-5.frm
     ;SOURCE: to-bob-6.frm
}


Carr-170{
z=c=f=sqr(1/pixel):
z=sqr(z) + f,
|z| <=50
  ;SOURCE: carr-6.frm
   ;SOURCE: to-bob-6.frm
}


Carr-171{
z=c=f=sqr(pixel):
z=sqr(z) + f,
|z| <=50
  ;SOURCE: carr-6.frm
   ;SOURCE: to-bob-6.frm
}


Carr-172{
z=c=f=sqr(1/pixel):
z=sin(z) + f;
z=sqr(z) + c,
|z| <=50
  ;SOURCE: carr-6.frm
   ;SOURCE: to-bob-6.frm
}


Carr-173{
z=c=f=y=sqr(1/pixel):
z=sin(z) + c,
|z| <=50
  ;SOURCE: carr-6.frm
   ;SOURCE: to-bob-6.frm
}


Carr-174{
z=y=sqr(1/pixel):
z=sqr(z) + y*y,
|z| <=50
  ;SOURCE: carr-6.frm
   ;SOURCE: to-bob-6.frm
}


Carr-175{
z=y=sqr(1/pixel):
z=sqr(y) + (z*z*z) + 1/pixel,
|z| <=50
  ;SOURCE: carr-6.frm
   ;SOURCE: to-bob-6.frm
}


Carr-176{
z=c=sqr(1/pixel):
z=cosxx(z) + c;
z=sqr(z) + c;
z=sqr(z) + c;
z=sqr(z) + c,
|z| <=10
  ;SOURCE: carr-6.frm
    ;SOURCE: to-bob-6.frm
}


Carr-177{
z=c=flip(1/pixel):
z=sin(z*z) + c;
z=sqr(z*z) + c;
z=sin(z) + c;
z=sqr(z) + c;
|z| <=10
  ;SOURCE: carr-6.frm
   ;SOURCE: to-bob-6.frm
}


Carr-178{
z=c=flip(1/pixel):
z=sqr(z*z) + c;
z=sqr(z) + c;
z=sin(z*z) + c;
z=sqr(z*z) = c,
|z| <=10
  ;SOURCE: carr-6.frm
   ;SOURCE: to-bob-6.frm
}


Carr-179{
z=c=1/pixel:
z=sqr(z*z) + (c+0.424);
z=sqr(z) + (c+0.324);
z=sin(z*z) + c;
z=sqr(z*z) + c,
|z| <=10
  ;SOURCE: carr-6.frm
   ;SOURCE: to-bob-6.frm
}


Carr-18 {
c = z= (sqr(pixel)):
z = (sqr(1 / cosxx(z)) ) + (sin(z^z^z));
  |z| <= 10
  ;SOURCE: carr-5.frm
     ;SOURCE: to-bob-6.frm
}


Carr-180{
z=c=flip(1/pixel):
z=sqr(z*z) + c;
z=sqr(z) + (c-0.224);
z=sin(z*z) + (c+0.124);
z=sqr(z*z) + (c-0.024),
|z| <=10
  ;SOURCE: carr-6.frm
   ;SOURCE: to-bob-6.frm
}


Carr-181{
z=c=flip(sqr(1/pixel)):
z=sqr(z*z) + c;
z=sqr(z) + (c-0.224);
z=sin(z*z) + (c+0.124);
z=sqr(z*z) + (c-0.024),
|z| <=10
  ;SOURCE: carr-6.frm
   ;SOURCE: to-bob-6.frm
}


Carr-182{
z=c=1/pixel:
z=sqr(z) + flip(c),
|z| <=10
  ;SOURCE: carr-6.frm
   ;SOURCE: to-bob-6.frm
}


Carr-183{
z=c=1/pixel:
z=sqr(1.027*z) + flip(c),
|z| <=10
  ;SOURCE: carr-7.frm
   ;SOURCE: to-bob-6.frm
}


Carr-184{
z=c=1/pixel:
z=(sqr(z*1/pixel)) + c;
z=sqr(z) + c;
z=sqr(z) + c,
|z| <=10
  ;SOURCE: carr-7.frm
   ;SOURCE: to-bob-6.frm
}


Carr-185{
z=c=sqr(1/pixel):
z=(sqr(z*1/pixel)) + c;
z=sin(z) + c,
|z| <=10
  ;SOURCE: carr-7.frm
   ;SOURCE: to-bob-6.frm
}


Carr-186{
z=c=1/pixel:
z=(cotanh(z*pixel)) + c;
z=sin(z) + c,
|z| <=10
  ;SOURCE: carr-7.frm
  ;SOURCE: to-bob-6.frm
}


Carr-187{
z=c=1/pixel:
z=c*sqr(1/z);
z=z*z + c,
|z| <=10
  ;SOURCE: carr-7.frm
   ;SOURCE: to-bob-6.frm
}


Carr-188{
z=c=1/pixel:
z=c*sqr(1/z);
z=z*z*z + c,
|z| <=10
  ;SOURCE: carr-7.frm
   ;SOURCE: to-bob-6.frm
}


Carr-189{
z=c=1/pixel:
z=c*sqr(1/z);
z=sqr(sqr(z/pixel*z*z)) + c,
|z| <=10
  ;SOURCE: carr-7.frm
   ;SOURCE: to-bob-6.frm
}


Carr-19 {
c = z = (sqr(1 / pixel)):
z = (sqr(1 / cosxx(z)) ) + (sin(z^z^z));
  |z| <= 10
  ;SOURCE: carr-5.frm
     ;SOURCE: to-bob-6.frm
}


Carr-190{
z=c=1/pixel/pixel:
z=sqr(z) + c,
|z| <=4
  ;SOURCE: carr-7.frm
   ;SOURCE: to-bob-6.frm
}


Carr-191{
z=c=1/pixel/pixel:
z=sqr(z*z) + c,
|z| <=4
  ;SOURCE: carr-7.frm
  ;SOURCE: to-bob-6.frm
}


Carr-192{
z=c=1/pixel/pixel:
z=sin(z) + c;
z=sqr(z) + c,
|z| <=4
  ;SOURCE: carr-7.frm
  ;SOURCE: to-bob-6.frm
}


Carr-193{
z=c=1/pixel:
z=z*z*z + (c-1)*z-c;
z=3*sqr(z) + c,
|z| <=10
  ;SOURCE: carr-7.frm
   ;SOURCE: to-bob-6.frm
}


Carr-194{
z=c=1/pixel:
z=z*z*z/5 + sqr(z) + flip(c),
|z| <=100
  ;SOURCE: carr-7.frm
   ;SOURCE: to-bob-6.frm
}


Carr-195{
z=c=1/pixel:
z=z*z*z/5 + sqr(z) + (-flip(c)),
|z| <=100 
  ;SOURCE: carr-7.frm
   ;SOURCE: to-bob-6.frm
}


Carr-196{
z=c=1/pixel:
z=c*(2*z*z-1);
z=flip(z),
|z| <=10
  ;SOURCE: carr-7.frm
  ;SOURCE: to-bob-6.frm
}


Carr-197{
z=c=1/pixel:
z=sqr(z) + c/pixel/flip(c);
z=sqr(z) + c/pixel/flip(c);
z=sqr(z) + c/pixel/flip(c);
z=sqr(z) + c/pixel/flip(c),
|z| <=10
  ;SOURCE: carr-7.frm
  ;SOURCE: to-bob-6.frm
}


Carr-198{
z=c=1/pixel:
z=sqr(z) + c;
z=flip(3*z*z)/flip((z+3)+c),
|z| <=10
  ;SOURCE: carr-7.frm
  ;SOURCE: to-bob-6.frm
}


Carr-199{
z=c=1/pixel:
z=sqr(z) + c;
z=((pixel)*z*z)/(z-1)+c,
|z| <=4
  ;SOURCE: carr-7.frm
  ;SOURCE: to-bob-6.frm
}


Carr-20 {
z = pixel, z = cosxx(z):
z = z + (sqr(pixel))
z = sqr (log(1 / (z)) )
  |z| <= 4
  ;SOURCE: carr-5.frm
     ;SOURCE: to-bob-6.frm
}


Carr-200{
z=c=1/pixel:
z=sqr(z) + c;
z=((1/pixel)*z*z)/(z-1) + c,
|z| <=4
  ;SOURCE: carr-7.frm
  ;SOURCE: to-bob-6.frm
}


Carr-201{
z=c=pixel:
z=sqr(z) + c;
z=((1/pixel)*z*z)/(z-1) + c,
|z| <=4
  ;SOURCE: carr-7.frm
  ;SOURCE: to-bob-6.frm
}


Carr-202{
z=c=1/pixel:
z=sqr(z) + c;
z=(1/pixel)*z*z/(z-0.5) + c,
|z| <=4
  ;SOURCE: carr-7.frm
  ;SOURCE: to-bob-6.frm
}


Carr-203{
z=c=1/pixel:
z=(sqr(z)+c)/(z-1)+c,
|z| <=4
  ;SOURCE: carr-7.frm
  ;SOURCE: to-bob-6.frm
}


Carr-204{
z=c=pixel:
z=(sqr(z)+c)/(z-1)+c,
|z| <=4
  ;SOURCE: carr-7.frm
  ;SOURCE: to-bob-6.frm
}


Carr-205{
z=c=1/pixel:
z=(sqr(z)+c)/(z+0.5)+c,
|z| <=4
  ;SOURCE: carr-8.frm
  ;SOURCE: to-bob-6.frm
}


Carr-206{
z=c=1/pixel:
z=(sqr(z*z) + c)/(z+0.75)+c,
|z| <=4
  ;SOURCE: carr-8.frm
  ;SOURCE: to-bob-6.frm
}


Carr-207{
z=c=pixel:
z=(sqr(z*z) + c)/(z+0.75)+c,
|z| <=4
  ;SOURCE: carr-8.frm
  ;SOURCE: to-bob-6.frm
}


Carr-208{
z=c=1/pixel:
z=(sqr(z*z)+c)/(z-(flip(-3,0.123)))+c,
|z| <=4
  ;SOURCE: carr-8.frm
  ;SOURCE: to-bob-6.frm
}


Carr-209{
z=c=1/pixel:
z=z*z+c+(z*z+(c-0.124));
z=sin(z)+c+(z*z+(c-0.124)),
|z| <=10
  ;SOURCE: carr-8.frm
  ;SOURCE: to-bob-6.frm
}


Carr-21 {
z = 1 / pixel, z = cosxx(z):
z = z + (sqr(pixel))
z = sqr (log(1 / (z)) )
  |z| <= 4
  ;SOURCE: carr-5.frm
     ;SOURCE: to-bob-6.frm
}


Carr-210{
z=c=1/pixel:
z=z*z+c+(z*z+(c-0.124))/(z-0.75)+c,
|z| <=10
  ;SOURCE: carr-8.frm
  ;SOURCE: to-bob-6.frm
}


Carr-211{
z=c=1/pixel:
z=z*z+c+(z*z+(c-0.124))/((z+1.25)+c),
|z| <=10
  ;SOURCE: carr-8.frm
  ;SOURCE: to-bob-6.frm
}


Carr-212{
z=c=1/pixel:
z=sin(z^2)+sin(z)/sin(pixel),
|z| <=10
  ;SOURCE: carr-8.frm
  ;SOURCE: to-bob-6.frm
}


Carr-213{
z=c=1/pixel:
z=(z^2)*(z^2)+sin(z-1)/sin(pixel),
|z| <=10
  ;SOURCE: carr-8.frm
  ;SOURCE: to-bob-6.frm
}


Carr-214{
z=c=1/pixel:
z=(z^2)*(z^2)+sin(z-1.5)/sin(pixel),
|z| <=10
  ;SOURCE: carr-8.frm
  ;SOURCE: to-bob-6.frm
}


Carr-215{
z=c=1/pixel:
z=(z^2)*(z^2)+sin(z-0.3)/sin(pixel),
|z| <=10
  ;SOURCE: carr-8.frm
  ;SOURCE: to-bob-6.frm
}


Carr-216{
z=c=1/pixel:
z=(z^2)*(z^2)+sin(z-0.1)/sin(pixel),
|z| <=10
  ;SOURCE: carr-8.frm
  ;SOURCE: to-bob-6.frm
}


Carr-217{
z=c=1/pixel:
z=(z^2)*(z^2)+sin(z-0.3)/cosxx(pixel),
|z| <=10
  ;SOURCE: carr-8.frm
  ;SOURCE: to-bob-6.frm
}


Carr-218{
z=c=1/pixel:
z=(z^2)*(z^2)+sin(z-0.3)/cos(pixel),
|z| <=10
  ;SOURCE: carr-8.frm
  ;SOURCE: to-bob-6.frm
}


Carr-219{
z=c=1/pixel:
z=(z^2)*(z^2)+sin(z-0.3)/cos(1/pixel),
|z| <=10
  ;SOURCE: carr-8.frm
  ;SOURCE: to-bob-6.frm
}


Carr-22 {
z = 1 / pixel, z = cosxx(z):
z = z + (sqr(pixel))
z = sqr (cosxx(1 / (z)) )
  |z| <= 4
  ;SOURCE: carr-5.frm
     ;SOURCE: to-bob-6.frm
}


Carr-220{;100's of diff. Inv. Mandels
z=c=1/pixel:
z=(z^2)*(z^2)+sin(z-0.3)/cos(sqr(pixel)),
|z| <=10
  ;SOURCE: carr-8.frm
  ;SOURCE: to-bob-6.frm
}


Carr-221{
z=c=1/pixel:
z=(z^2)*(z^2)+sin(z-0.3)/cos(pixel-0.1),
|z| <=10
  ;SOURCE: carr-8.frm
  ;SOURCE: to-bob-6.frm
}


Carr-222{
z=c=1/pixel:
z=(z^2)*(z^2)+sin(z-0.3)/cos(pixel+1.25),
|z| <=10
  ;SOURCE: carr-8.frm
  ;SOURCE: to-bob-6.frm
}


Carr-223{
z=c=1/pixel,cp2=cos(pixel/0.74):
z=(z^2)*(z^2)+sin(z-0.3)/cp2,
|z| <=10
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-224{
z=c=1/pixel,cp2=cos(pixel/0.74):
z=(z^2)*(z^2)+sin(z+0.3)/cp2,
|z| <=10
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-225{
z=c=1/pixel,cp2=cos(pixel/c*c+0.807):
z=(z^2)*(z^2)*(z^2)+sin(z+0.3)/cp2,
|z| <=10
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-226{
z=c=1/pixel,cp2=tan(pixel/c*c+0.807):
z=(z^2)*(z^2)*(z^2)+sin(z+0.3)/cp2,
|z| <=10
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-227{
z=c=1/pixel,cp2=log((pixel)/c*c+0.807):
z=(z^2)*(z^2)*(z^2)+sin(z+0.3)/cp2,
|z| <=10
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-228{;Note personalization of formula
z=c=1/pixel,Bob2=log((pixel)/c*c+0.807),Bob3=1/sin(z+0.3):
z=(z^2)*(z^2)*(z^2)+Bob3/Bob2,
|z| <=10
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-229{;Note personalization
z=c=1/pixel,Bob2=log((pixel)/c*c+0.807),Bob3=1/cosxx(z+0.3):
z=(z^2)*(z^2)*(z^2)+Bob3/Bob2;
z=sin(z*z) + c,
|z| <=10
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-23 {
z = 1 / pixel, z = cosxx(z):
z = z + (sqr(pixel))
z = sin(cosxx(1 / (z)) )
  |z| <= 4
  ;SOURCE: carr-5.frm
     ;SOURCE: to-bob-6.frm
}


Carr-230{
z=c=1/pixel,Bob2=log((pixel)/c*c+0.8),Bob3=1/cosxx(z+0.3):
z=(z^2)*(z^2)*(z^2)+Bob3/Bob2;
z=sin(z*z)+(c-0.124),
|z| <=10
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-231{
z=c=1/pixel,Bob2=log((1/pixel)/c*c+0.8),Bob3=1/cosxx(z+0.3):
z=(z^2)*(z^2)*(z^2)+Bob3/Bob2;
z=sin(z*z*z) + (c-0.124),
|z|<=10
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-232{
z=c=1/pixel,Bob2=log(pixel/(c/pixel*c)+0.8),Bob3=1/cosxx(z+0.3):
z=(z^2)*(z^2)*(z^2)+Bob3/Bob2;
z=z*pixel-pixel/sqr(z),
|z| <=10
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-233{
z=c=1/pixel,Bob2=log(pixel/(c/pixel*c)+0.8),Bob3=1/cosxx(z+0.3):
z=(z^2)*(z^2)*(z^2)-Bob3/Bob2;
z=z*pixel-pixel/sqr(z),
|z| <=10
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-234{
z=c=1/pixel,Bob2=log(pixel/(c/pixel*c))+0.8,Bob3=1/cosxx(z+0.3):
z=(z^2)*(z^2)*(z^2)+Bob3/Bob2;
z=flip(z*pixel-pixel/z*z),
|z| <=10
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-235{
z=c=1/pixel,Bob2=log(1/pixel/pixel)/c*c+1.2,Bob3=1/cosxx(z/0.3)/-1.1*c:
z=(z^2)*(z^2)*(z^2)+Bob3*Bob2;
z=sin(z*z) + (c-0.124),
|z| <=10
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-236{
z=c=1/pixel,Bob2=log(1/pixel/pixel)/c*c+1.2,Bob3=1/cosxx(z/0.3)/-1.1*c:
z=(z^2)*(z^2)*(z^2)+Bob3*Bob2;
z=sin(z*z) + (c-0.124);
z=z*z+c,
|z| <=10
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-237{
z=c=1/pixel,Bob2=sin(z^2)*(z^2)+sin(z-0.35),Bob3=cosxx(c*pixel+0.124):
z=Bob2/Bob3,
|z| <=10
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-238{
z=c=1/pixel,Bob2=sin(z^1.5)*(z^1.5)*(z^1.5)+sin(z-0.35),
Bob3=sin(c*pixel+0.124):
z=Bob2/Bob3,
|z| <=10
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-239{
z=c=1/pixel,Bob2=cosxx((z^1.5)*(z^1.5)*(z^1.5)-0.4)+conj(1/sin(z-0.35)),
Bob3=sin(c*pixel+0.124):
z=Bob2/Bob3,
|z| <=10
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-24 {InvRadius-Mandel formula manipulated
c=z=1/pixel:
z=sqr(z*z) - c;
|z| <=4
  ;SOURCE: carr-5.frm
   ;SOURCE: to-bob-6.frm
}


Carr-240{
z=c=1/pixel,Bob2=cosxx((z^1.5)*(z^1.5)*(z^1.5)-0.4)+conj(1/sin(z-0.35)),
Bob3=conj(c*pixel+0.124):
z=Bob2/Bob3,
|z| <=10
  ;SOURCE: b-carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-241{
z=c=1/pixel,
Bob2=cosxx((z^1.5)*(z^1.5)*(z^1.5)-0.4)+conj(sin(z-0.35)),
Bob3=conj(1/c*pixel+0.124):
z=Bob2/Bob3,
|z| <=10
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-242{
z=c=1/pixel,
Bob2=cosxx((z^3.5)*(z^3.5)*(z^3.5)-0.4)+conj(sin(z-0.35)),
Bob3=conj(1/c*pixel+0.124):
z=Bob2/Bob3;
z=sin(z*x)+(c-0.224),
|z| <=10
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-243{
z=c=1/pixel,
Bob2=cosxx((z^3.5)*(z^3.5)*(z^3.5)-0.4)+conj(sin(z-0.35)),
Bob3=conj(1/c*pixel+0.124):
z=Bob2/Bob3;
z=(z*z)*(z*z)+(c-0224);
z=sin(z)+c,
|z| <=10
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-244{
z=c=1/pixel,
Bob2=cosxx((z^3.5)*(z^3.5)*(z^3.5)-0.4)+conj(sin(z-0.35)),
Bob3=conj(1/c*1/pixel+0.124):
z=Bob2/Bob3;
z=flip((z*z)*(z*z))-(c-0.224);
z=1/z*1/z+c,
|z| <=10
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-245{
z=c=1/pixel,
Bob2=conj((z^3.5)*(z^3.5)*(z^3.5))+cosxx(1/sin(z-0.35)),
Bob3=conj(1/c*1/pixel+0.124):
z=Bob2/Bob3;
z=flip((z*z)*(z*z))-(c-0.224);
z=1/z*1/z+log(c),
|z| <=10
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-246{
z=c=1/pixel:
Bob2=conj((z^3.5)*(z^3.5)*(z^3.5)-0.4)+cosxx(sqr(z-0.35)),
Bob3=conj(c*1/pixel-0.124):
z=(Bob2/Bob3)/Bob3;
z=sin((z*z)*(z*z))-flip(c-0.224);
z=sqr(z*z)+flip(c-0.324),
|z| <=10
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-247{
z=1/pixel,
c=((0.6,0.55)*(|p1|<=1.3)+1/pixel):
z=(z*z)*(z*z)+(pixel/c-0.124);
z=sin(z*z)+(c-0.224),
|z| <=20
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-248{
z=1/pixel,c=1/pixel:
z=(z^2*pixel);
z=(z*z)+(c-0.124),
|z| <=10
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-249{
z=pixel,c=pixel:
z=(z^2*pixel);
z=(-z*z)+(c-0.124),
|z| <=10
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-25 { Carr-24 Modified
c=z=1/pixel:
z=sqr(z) + (c-1);
|z| <= 4
  ;SOURCE: carr-5.frm
    ;SOURCE: to-bob-6.frm
}


Carr-250{
z=pixel,c=pixel:
z=flip(pixel*pixel)/c;
z=(z*z)+(c-0.124),
|z| <=10
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-251{
z=pixel,c=pixel:
z=flip(pixel*pixel)/c;
z=(z*z*z*z*z*z)+(c-0.124),
|z| <=10
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-252{
z=pixel,c=pixel:
z=flip((1/pixel*pixel)/c-0.224);
z=(z*z)+(c-0.124),
|z| <=10
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-253{
z=1/pixel,c=1/pixel:
z=z*z-1/z/z;
z=sin(z*z)+(c-0.124),
|z| <=10
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-254{
c=0.5/pixel,z=1.5/pixel,a=p1,b=p2:
z=fn1(z*z)+fn2(z*b)+fn1(z^a);
z=sin(z*z)+(c-0.124);
z=z*z+(c-0.124),
|z| <=10
  ;SOURCE: carr-9.frm
  ;SOURCE: carr-9.frm
  ;SOURCE: to-bob-6.frm
}


Carr-255{;Modified Liar4
c=z=1/pixel,p=p1+1:
z=1-abs(imag(z)*p-real(z))+flip(1-abs(1-real(z)-imag(z)));
z=z*z+(c-0.124),
|z| <=10
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-256{;Modified Liar4
c=0.5/pixel,z=1.5/pixel,p=p1+1:
z=1.25-abs(imag(z)*p-real(z))+flip(1.35-abs(1.35-real(z)-imag(z)));
z=z*z+(c-0.124),
|z| <=10
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-257{;Modified Liar4
c=1/pixel,z=pixel,p=p1+1:
z=z*z+(c+0.124);
z=1-abs(imag(z)*p-real(z))+flip(1.35-abs(1.35-real(z)-imag(z))),
|z| <=10
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-258{;Modified Liar4
c=1/pixel,z=pixel,p=p1+1.3:
z=1-abs(real(z)*p-imag(z))+1/flip(1.75-abs(1.35-real(z)-imag(z)));
z=z*z+(c-0.524),
|z| <=10
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-259{;Modified Liar4
c=pixel,z-1/pixel,p=p1+1:
z=1-abs(real(z)*p-imag(z))+1/conj(flip(1.35-abs(1.35-real(z)-imag(z))));
z=z*z+(c-0.124),
|z| <=10
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-260{;Modified Liar4
c=pixel,z=1/pixel,p=p1+pixel:
z=1-abs(real(z)*p-imag(z))+1/conj(1.35-abs(1.35-real(z)-imag(z)));
z=z*z+(c-0.124),
|z| <=10
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-261{;Modified Liar3
z=pixel,c=1/pixel,x=cosxx(z*z)+c:
z=flip(1.35-abs(1.35-real(x)-imag(z)))+real(x),
|z| <=10
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-262{;Modified SJMAND05
z=real(1/pixel)+flip(imag(1/pixel))*p1,
c=p2+p1*real(1/pixel)+flip(imag(1/pixel)):
z=fn1(z)*c,
|z| <=64
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-263{;Modified SJMAND05
z=real(1/pixel)+flip(imag(1/pixel))*p1,
c=p2+p1*real(1/pixel)+conj(imag(1/pixel)):
z=fn1(z)*c,
|z| <=64
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-264{;Modified SJMAND05
z=real(1/pixel)+conj(imag(1/pixel))*p1,
c=p2+p1*real(1/pixel)+flip(imag(1/pixel)):
z=fn1(z)*c,
|z| <=64
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-265{;Modified SJMAND05
z=1/conj(real(1/pixel)+flip(imag(1/pixel))*p1),
c=1/conj(p2+p1*real(1/pixel)+flip(imag(1/pixel))):
z=1/conj(z*z)*(c-0.124),
|z| <=64
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-266{;Modified SJMAND05
z=1/conj(real(1/pixel)+1/flip(imag(1/pixel))*p1),
c=1/conj(p2+p1*real(1/pixel)+1/flip(imag(1/pixel))):
z=1/conj(z*z)*(c-0.124),
|z| <=64
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-267{;Modified SJMAND05
z=1/conj(real(1/pixel)+conj(1/flip(imag(1/pixel))*p1)),
c=1/conj(p2+p1*real(1/pixel)+conj(1/flip(imag(1/pixel)))):
z=1/conj(z*z)*(c-0.124),
|z| <=64
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-268{;InvSherrybrot
c=0.33/pixel,z=1.67/pixel:
c=sqr(1/pixel)/z;
c=z+c;
z=(z*z)*(z*z)-(c+0.0124),
|z| <=10
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-269{
z=1/pixel,c=1/sin(z):
z=(z*z)+(c-0.124);
z=z*1/(c-0.124),
|z| <=10
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-27 { Carr-24 Modified
c=z=1/pixel:
z=sqr(z) + (c-1 1/4);
 |z| <=10
  ;SOURCE: carr-5.frm
   ;SOURCE: to-bob-6.frm
}


Carr-270{
z=1/pixel,c=1/sin(z):
z=((z*z)+(flip(c-0.124)));
z=z*1/(c-0.124),
|z| <=10
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-271{
z=1/pixel,c=1/sin(z):
z=((z*z*z)+sqr(flip(c-0.124)));
z=z*1/(c-0.124),
|z| <=10
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-272{;Star-Mandelbrot
z=1/pixel,c=1/sin(z):
z=((z*z*z)+(flip(c-0.124)));
z=z*1/(c-0.124),
|z| <=10
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-273{
z=1/pixel,c=1/cosxx(z):
z=((z*z*z)+flip(c-0.124));
z=z*1/(c-0.124),
|z| <=10
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-274{
z=pixel,c=1/cosxx(z):
z=((z*z*z)+flip(c-0.124));
z=z*1/(c-0.124),
|z| <=10
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-275{
z=1/pixel,c=1/cosxx(z*z):
z=((z*z*z)+flip(c-0.124));
z=z*1/(c-0.124),
|z| <=10
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-276{;Great for CARR'S CRYSTALS. Use B-Trace
z=1/pixel,c=1/cosxx(z*z):
z=((z*z*z)+flip(c*c-0.124));
z=z*1/(c-0.124),
|z| <=10
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-277{
z=1/pixel,c=1/conj(z*z):
z=((z*z)+flip(c+0.124));
z=z*1/(c+0.124),
|z| <=10
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-278{
z=1/pixel,c=1/conj(z*z):
z=((z*z)-flip(c+0.124));
z=sqr(z*1/(c+0.124)),
|z| <=10
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-279{
z=1/pixel,c=1/conj(flip(z*z)):
z=((z*z)-flip(c+0.124));
z-z*1/(c+0.124),
|z| <=10
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-28 {Carr-24 Modified
c=z=1/pixel:
z=(z*z*z) + c;
|z| <= 4
  ;SOURCE: carr-5.frm
   ;SOURCE: to-bob-6.frm
}


Carr-280{
z=1/pixel:
z=z*z;
z=1/sin(z*z+pixel*pixel),
|z| <=10
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-281{
z=1/pixel:
z=1/cosxx(z*z+pixel*pixel),
|z| <=10
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-282{
z=1/pixel:
z=1/sin(z*z+cosxx(pixel*pixel)),
|z| <=10
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-283{
z=1/pixel,c=1/(sin(z*z+pixel*pixel)):
z=z*z+(pixel-0.124)*z-1/pixel;
z=c/pixel,
|z| <=10
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-284{
z=1/pixel,c=1/pixel:
z=(sqr(1/conj(z))+(c-0.124));
|z| <=10
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-285{
z=1/pixel:
z=1/conj(z*z)+(pixel*pixel),
|z| <=10
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-286{
z=p1*real(pixel*pixel)+flip(imag(pixel*pixel)),
c=p2+real(pixel)+flip(imag(pixel)+p1):
z=z*z+conj(c-0.124),
|z| <=64
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-287{
z=p1*real(pixel*pixel)+flip(imag(pixel*pixel)),
c=p2+real(pixel*pixel)+flip(imag(pixel*pixel)+p1):
z=z*z+flip(c-0.124),
|z| <=64
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-288{
z=p1*real(pixel*pixel)+conj(flip(imag(pixel*pixel))),
c=p2+real(pixel*pixel)+conj(flip(imag(pixel*pixel)+p1)):
z=z*z+log(sqr(c-0.124*c-0.124)),
|z| <=64
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-289{
z=p1*real(pixel*pixel)+conj(flip(imag(pixel*pixel))),
c=p2-real(pixel*pixel)+conj(flip(imag(pixel*pixel)+p1)):
z=z*z+log(sqr(c-0.124*c-0.124)),
|z| <=64
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-29 {Carr-24 Modified
c=z=1/pixel:
z=1-(z*z*z) + c;
|z| <= 4
  ;SOURCE: carr-5.frm
   ;SOURCE: to-bob-6.frm
}


Carr-290{
z=p1*real(pixal*pixel*pixel)-conj(flip(imag(pixel*pixel*pixel))),
c=p2-real(pixel*pixel*pixel)-conj(flip(imag(pixel*pixel*pixel)+p1)):
z=z*z/(c-0.124)/conj(pixel),
|z| <=64
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-291{;SJMAND09 Modified
z=real(pixel)+flip(imag(p2)),
c=real(p2)+flip(imag(pixel)):
z=z*z+(c-0.124),
|z| <=4
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-292{
z=real(pixel*pixel-0.2)+flip(imag(p2)),
c=real(p2)+(flip(imag(pixel*pixel-0.2))):
z=sin((z*z)+(c+0.524)),
|z| <=4
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-293{
z=1/pixel,c=p1:
z=cosxx(z-0.124)+(c+0.524);
c=c*p2;
z=(z*z)+(c-0.524),
|z| <=4
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-294{;Julia-Mandel Hybrid
z=1/pixel,c=1/pixel:
z=z*z+(-0.6882,-0.1729);
z=z*z+c,
|z| <=4
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-295{;Julia_Mandel Hybrid
z=1/pixel,c=1/pixel:
z=z*z+c;
z=z*z+(0.3,0.6);
z=z*z+c,
|z| <=4
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-296{
z=c=1/pixel:
z=(z*z+c)/(cos(z)/z+pixel),
|z| <=4
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-297{
c=z=1/pixel:
z=z*z+flip(c);
z=(z*z+flip(c))/(cos(z*z)+flip(c)),
|z| <=4
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-298{
z=c=1/pixel:
z=(z*z)+flip(c);
z=(z*z+flip(c))/(tanh(z*z)+flip(c)),
|z| <=4
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-299{;Works with Distance Estimator
c=log(pixel),z=1/pixel:
z=c*(2*z*z-1)/1/(sqr(z)+pixel),
|z| <=10
  ;SOURCE: 10carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-30 {Carr-24 Modified
c=z=1/pixel:
z=(z*z*z*z*z) +c;
|Z| <= 4
  ;SOURCE: carr-5.frm
   ;SOURCE: to-bob-6.frm
}


Carr-300{
c=log(pixel),z=1/pixel:
z=(c-3.124)*(4*z*z-1)/2/(sqr(z)+pixel),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-301{
c=log(pixel),z=1/pixel:
z=c*(4*z*z-1)/2/(sqr(z)+pixel),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-302{; CARRBROT? Why not?
z=1/(log(pixel)+cosxx(pixel)),c=1/pixel:
z=z*z+c,
|z| <=4
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-303{
z=1/(log(pixel)+cosxx(1/pixel)),c=sqr(pixel)/z:
z=z*z+c,
|z| <=4
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-304{
z=1/pixel,c=1/sin(z-2):
z=z*z+c;
z=z*1/c,
|z| <=4
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-305{
z=1/pixel,c=sqr(pixel)/z:
z=z*z+c;
z=z*1/c,
|z| <=4
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-306{
z=z*pixel+(pixel-1),c+pixel:
z=z*z+c,
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-307{
z=z*pixel+(pixel-1),c=1/pixel:
z=sqr(z*z)+(c-0.124),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-308{
z=z*pixel+(pixel-1),c=pixel:
z=sqr(z*z)+(c-0.124),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-309{;Great Crystals
z=1/(z*pixel+(pixel-1)),c=1/pixel:
z=z*z+(c-0.124);
z=z*z+(c-0.124),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-31 {Carr-24 Modified       
c=z=1/pixel:
z=(z*z*z*z*z*z) + c;
|z| <= 4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
    ;SOURCE: to-bob-6.frm
}


Carr-310{
z=sqr(1/(pixel*pixel)),c=1/pixel:
z=z*z+(flip(c)-0.124),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-311{
z=sqr(1/(pixel*pixel)),c=1/pixel/pixel:
z=z*z*z+(flip(c)-00.124),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-312{
z=1/conj(pixel),c=1/pixel:
z=c*(z*z-2)+flip(c),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-313{
z=1/conj(pixel),c=1/pixel:
z=imag(z)*(c*(z*z*(z*z-4)+2))+flip(c),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-314{
z=cotan(1/pixel*1/pixel),c=1/pixel:
z=z*z+flip(c),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-315{
z=1/cotan(1/pixel*1/pixel),c=1/pixel:
z=z*z+flip(c),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-316{
z=1/sqr(pixel*pixel),c=1/pixel:
z=z*z*z+flip(c),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-317{
z=1/pixel*(0.3,0.6),c=1/pixel:
z=z*z+c,
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-318{
z=1/pixel*(0.6,0.6),c=1/pixel:
z=z*z+flip(c),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-319{
z=1/pixel*(1.6,1.6),c=1/pixel:
z=z*z+flip(c),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-32 {Carr-24 Modified
c=z=pixel:
z=(z*z*z*z*z*z) + c;
|z| <= 4
  ;SOURCE: carr-5.frm
    ;SOURCE: to-bob-6.frm
}


Carr-320{;***
z=1/pixel*(3.6,2.6),c=1/pixel*(0.6,0.6):
z=z^z*z+flip(c*c),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-321{;***
z=1/pixel*(3.6,2.6),c=1/pixel*(0.6,0.6):
z=pixel-c*c,
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-322{
z=1/pixel*(3.6,2.6),c=1/pixel*(1.25,1.25):
z=pixel-(c*c*c*c),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-323{;Distance Estimator works with this FRM
z=c=1/pixel:
z=z*z+flip(c),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-324{;Distance Estimator works with this FRM
z=c=1/pixel:
z=z*z+flip(c*c),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-325{;Distance Estimator works with this FRM
z=c=1/pixel:
z=z*z*z+flip(c*c),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-326{;Distance Estimator works with this FRM
z=c=1/pixel:
z=z*z*z+flip(c*c*c),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-327{
z=c=1/pixel:
z=z*z*z/flip(c*c*c),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-328{
z=c=flip(1/pixel):
z=z*z+c;
z=sin(z*z)+c,
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-329{;Distance Estimator works with this FRM
z=c=flip(1/pixel):
z=z*z+conj(c*c),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-33 {Carr-24 Modified
c=z=1/pixel:
z=(z*z*z*z*z*z*z) + c;
 |z| <= 8
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
    ;SOURCE: to-bob-6.frm
}


Carr-330{;Distance Estimator works with this FRM
z=c=flip(1/pixel):
z=z*z*z+conj(c*c*c),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-331{
z=c=flip(1/pixel*1/pixel):
z=z*z+conj(c),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-332{
z=1/fn1(pixel),c=1/fn2(pixel):
z=z*z+c,
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-333{
z=1/fn1(1/pixel*1/pixel),c=1/fn2(1/pixel*1/pixel):
z=z*z/c-0.124,
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-334{
z=sqr(1/fn1(1/pixel*1/pixel)),c=sqr(1/fn2(1/pixel*1/pixel)):
z=z*z/c-0.124,
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-335{
z=sqr(1/fn1(1/pixel*1/pixel)),c=sqr(1/fn2(1/pixel*1/pixel)):
z=z*z*z/(c-0.124)*(c-0.124),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-336{
z=tan(1/fn1(1/pixel*1/pixel)),c=tan(1/fn2(1/pixel*1/pixel)):
z=flip((z*z+pixel)/(pixel*pixel+(c-0.124))),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-337{
z=tan(1/fn1(1/pixel*1/pixel)),c=tan(1/fn2(1/pixel*1/pixel)):
z=((z*z+pixel)/(pixel*pixel+(c-0.124))),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-338{
z=cosxx(1/fn1(1/pixel*1/pixel)),c=cotanh(1/fn2(1/pixel*1/pixel)):
z=z*z+c,
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-339{
z=sinh(1/fn1(1/pixel*1/pixel)),c=cotanh(1/fn2(1/pixel*1/pixel)):
z=z*z+c,
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-34 {Carr-24 Modified
c=z=pixel:
z=(z*z*z*z*z*z*z) + c;
 |z| <= 8
  ;SOURCE: carr-5.frm
    ;SOURCE: to-bob-6.frm
}


Carr-340{
z=sinh(1/fn1(1/pixel*1/pixel)),c=tanh(1/fn2(1/pixel*1/pixel)):
z=z*z+c,
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-341{
z=tanh(1/fn1(1/pixel*1/pixel)),c=conj(1/fn2(1/pixel*1/pixel)):
z=z*z+c,
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-342{
z=conj(1/fn1(1/pixel*1/pixel)),c=conj(1/fn2(1/pixel*1/pixel)):
z=z*z+c,
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-343{
z=conj(1/fn1(pixel*pixel)),c=conj(1/fn2(pixel*pixel)):
z=z*z+c,
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-344{
z=cosxx(1/fn1(pixel*pixel)),c=conj(1/fn2(pixel*pixel)):
z=z*z+c,
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-345{
z=tanh(1/fn1(pixel*pixel)),c=tan(1/fn2(pixel*pixel)):
z=z*z+c,
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-346{
z=1/sin(1/fn1(pixel*pixel)),c=tan(1/fn2(pixel*pixel)):
z=z*z+c,
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-347{
z=sin(1/fn1(pixel*pixel)),c=1/cosxx(1/fn2(pixel*pixel)):
z=z*z+c,
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-348{
z=sin(1/fn1(pixel*pixel)),c=1/cosxx(1/fn2(pixel*pixel)):
z=z*z+c*c,
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-349{
z=sin(1/fn1(pixel*pixel)),c=1/cosxx(1/fn2(pixel*pixel)):
z=z*z+(c/pixel*c/pixel),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-35 {Carr-24 Modified
c=z=1/pixel:
z=(z*z*z*z*z*z*z*z*z) +c;
 |z| <= 8
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
    ;SOURCE: to-bob-6.frm
}


Carr-350{
z=1/sin(1/fn1(pixel*pixel)),c=1/1/conj(1/fn2(pixel*pixel)):
z=z*z+(c/pixel*c/pixel),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-351{
z=1/sin(1/fn1(pixel+1)),c=1/log(1/fn2(pixel+1)):
z=z*z+(c/pixel-1*c/pixel-1),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-352{
z=tanh(1/fn1(pixel)),c=1/flip(1/fn2(pixel)):
z=z*z+(c/pixel*c/pixel),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-353{
z=tanh(1/fn1(pixel)),c=1/tan(1/fn2(pixel)):
z=z*z+(c/pixel*c/pixel),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-354{
z=tanh(1/fn1(pixel)),c=1/cosxx(1/fn2(pixel*z)):
z=z*z+(c/pixel*c/pixel),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-355{
z=tanh(1/fn1(pixel*c)),c=1/cosxx(1/fn2(pixel)):
z=z*z+(c/pixel*c/pixel),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-356{
z=cos(1/fn1(pixel*c)),c=1/cos(1/fn2(pixel)):
z=z*z+(c/pixel*c/pixel),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-357{
z=cotanh(1/fn1(pixel*c)),c=1/cos(1/fn2(pixel)):
z=z*z+(c/pixel*c/pixel),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-358{
z=sin(1/fn1(pixel*c)),c=1/sin(1/fn2(pixel)):
z=z*z+(c/pixel*c/pixel*c),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-359{
z=sin(1/fn1(pixel*c)),c=1/sin(1/fn2(pixel)):
z=z+1/conj(c*c*c),
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-36 { Modified Julia formula from BUILTIN.FRM file
z=1/cosxx(pixel),
c=((0.3,0.6) ^ (|p1| <=0) + p1),
t=4*(real(p2)<=0 + real(p2) ^ (0<p2)):
z=sqr(z*z*z*z) + c,
|z| <= 8
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-360{
z=sinh(1/fn1(pixel*c)),c=1/sqr(1/fn2(pixel)),Bob=sqr(c*c*c):
z=z/(1/pixel)+Bob,
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-361{
z=sinh(1/fn1(pixel*c)),c=1/sqr(1/fn2(pixel)),Bob=(1/c*1/c^1/c)*(c*c^c):
z=z/(1/pixel)+Bob,
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-362{
z=tanh(1/fn1(pix*c)),c=1/(1/fn2(pix)),Bob=(1/c*1/c^1/c)*(c*c^c):
z=z/(1/pixel)+Bob,
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-363{
z=1/tanh(1/fn2(1/pixel+1)),c=1/cosxx(1/fn2(1/pixel+1)):
z=z*z+c,
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-364{
z=1/tanh(1/fn2(1/pixel+2)),c=1/cosxx(1/fn2(1/pixel+2)):
z=z*z+c,
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-365{
z=1/cosxx(1/fn2(1/pixel+2)),c=1/tanh(1/fn2(1/pixel+2)):
z=z*z+c,
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-366{
z=flip(1/fn2(1/pixel+2)),c=conj(1/fn2(1/pixel+2)):
z=z*z+c,
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-367{
z=1/sinh(1/fn2(1/pixel+2)),c=1/tanh(1/fn2(1/pixel+2)):
z=z*z+c,
|z| <=10
  ;SOURCE: 09carr.frm
  ;SOURCE: 09carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-368{;Distance Estimator works with this FRM
c=z=sqr(1/fn2(1/pixel-1.5)):
z=z*z*z+c,
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-369{
c=z=sqr(1/fn2(1/pixel-1.5)):
z=z*z*z*z+flip(c*c),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-37 { Modified Julia formula from BUILTIN.FRM file
z=tan(1/pixel),
c=((0.4,0.8) ^ (|p1|<=0)) + p1,
t=(4^(real(p2)<=0) + real(p2) ^ (0<p2)):
z=sqr(z*z*z*z) + c,
|z|<=8
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-370{
c=z=sqr(1/fn2(1/pixel-1.5)):
z=z*z+flip(c),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-371{;Distance Estimator works with this FRM
c=z=sqr(1/fn2(1/pixel-1.5)):
z=c*(2*z*z-1),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-372{
c=z=sqr(1/fn2(1/pixel-1.5)):
z=(2*z*z-1)+flip(c),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-373{
z=sqr(1/fn2(1/pixel-1.5)),
c=sqr(1/fn2(1/pixel)):
z=log(z-2.7)*(z*z)+c,
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-374{
z=sqr(1/fn2(1/pixel-1.5)),c=sqr(1/fn2(1/pixel)):
z=log(z*z-2.7)*(z*z)/c,
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-375{
z=1/sqr(1/fn2(1/pixel-2.01)),c=1/sqr(1/fn2(1/pixel)):
z=conj(z+sqr(z-0.124))/pixel,
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-376{
z=1/sqr(1/fn2(1/pixel-2.01)),c=1/sqr(1/fn2(1/pixel)):
z=conj(z+sqr(z-0.324))/pixel,
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-377{
z=1/sqr(1/fn2(1.2/pixel-2.01)),c=1/sqr(1/fn2(1/pixel)):
z=conj(z+sqr(z-0.324))/pixel,
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-378{
z=1/sqr(1/fn2(1.15/pixel-2.01)),c=1/sqr(1/fn2(1/pixel)):
z=conj(z+sqr(z-0.324))/pixel,
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-379{
z=1/sqr(1/fn2(1.15/pixel-2.01)),c=1/sqr(1/fn2(1/pixel)):
z=conj(z+sqr(z-0.324))/(0.48/pixel),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-38 {Modified Julia formula from BUILTIN.FRM file
c=cosxx(1/pixel),
c=((0.4,0.8) ^ (|p1|<=0)) + p1,
t=(4^(real(p2)<=0) + real(p2) ^ (0<p2)):
z= sqr(z*z*z*z*z*z) + c,
|z| <= 8
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-380{
z=sqr(1/fn2(1.159/pixel-2.11)),c=1/sqr(1/fn2(1/pixel)):
z=conj(z+sqr(z-0.524))/(0.489/pixel),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-381{
z=sqr(0.78/fn2(1.159/pixel-2.11)),
c=1/sqr(1/fn2(1/pixel)):
z=conj((z/0.8)+sqr(z-0.324))/(0.489/pixel),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-382{
z=sqr(0.78/fn2(1.159/pixel-2.11)),c=1/sqr(1/fn2(1/pixel)):
z=flip(conj((z/0.8))+sqr(z-0.324))/(0.489/pixel),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-383{
z=1/sqr(0.78/fn2(1.159/pixel-2.11)):
z=flip(conj((z/0.8))+sqr(z-0.324))/(0.489/pixel),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-384{
z=1/sqr(0.78/fn2(1.159/pixel-2.11)):
z=0.7/sqr(conj((z/0.8))+sqr(z-0.324))/(0.489/pixel),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-385{
z=3/sqr(0.3/fn2(1.159/pixel-2.11)):
z=conj((z/0.8)+sqr(z-0.324))/(0.489/pixel),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-386{
z=3*sqr(fn2(1.159/pixel-2.11)):
z=conj((z/0.8)+sqr(z-0.324))/(0.489/pixel),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-387{;Dave Oliver formula modified.Distance Estimator works here.
z=1/pixel:
z=((pixel^z)-1)+(pixel^(z-1)),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-388{;Dave Oliver formula modified
z=((pixel^z)-1)*(pixel^(z-1)),c=1/pixel:
z=z*z+c,
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-389{;Dave Oliver formula modified
z=1/((pixel^z)-1)*(pixel^(z-1)),c=1/pixel:
z=z*z+c,
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-39 {Karl Geigl formula Modified
z=c=pixel:
z=((z*z*z*z+1/4)*2/z*(z*z-1))*c;
|z| <=4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-390{;Dave Oliver formula modified
z=1/((pixel^z)-2)*(pixel^(z-2)),c=1/pixel-1:
z=z*z+c,
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-391{
z=1/((pixel^z)+2)*(pixel^(z+2)),c=1/pixel-1:
z=z*z+c,
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-392{;Distance Estimator works here
z=c=((sqrt 5 + 1)/2)/pixel:
z=z*z+flip(c),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-393{;Distance Estimator works here
z=c=((sqrt 5 + 1)/2)/pixel:
z=z*z*z+flip(c*c),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-394{
z=c=((sqrt 3 + 0.5)/0.124)/pixel:
z=z*z*z+flip(c),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-395{
z=c=((sqrt 9 + 2.234)/0.324)/pixel:
z=z*z*z+flip(c),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-396{;Distance Estimator works here
z=c=((sqrt 5 + 1)/2)/pixel:
z=conj(z*z)+flip(c),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-397{;Distance Estimator works here
z=c=((sqrt 5 + 1)/2)/pixel:
z=1/conj(z*z)+flip(c),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-398{;Distance Estimator works here
z=c=((sqrt 5 + 1)/2)/pixel:
z=1/sqr(z*z)+flip(c),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-399{;Distance Estimator works here
z=c=((sqrt 5 + 1)/2)/pixel:
z=z*z+flip(c/2),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-40 {Karl Geigl formula Modified
z=c=1/pixel:
z=((z*z*z*z+1/4)*2/z*(z*z-1))*tan(c);
|z| <= 4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-400{
z=flip(real(1/pixel)),c=flip(imag(pixel)):
z=z*z+c,
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-401{
z=flip(real(1/pixel)),c=flip(imag(pixel)):
z=z*z+c+((sqrt5+1)/2)/pixel,
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-402{
z=flip(real(1/pixel)),c=flip(imag(pixel)):
z=z*z+c+((sqrt5+1)/2)*pixel,
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-403{;Distance Estimator works here
z=flip(real(1/pixel)),c=flip(imag(pixel)):
z=z*z+c+conj(((sqrt5+1)/2)*pixel),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-404{
z=exp(flip(real(1/pixel))),c=flip(imag(pix)):
z=z*z+c+conj(((sqrt5+1)/2)*pixel),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-405{
z=exp(flip(real(0.33/pixel))),c=flip(imag(0.124/pixel)):
z=z*z+c+conj(((sqrt5+1)/2)*pixel),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-406{; Distance Estimator works here
z=exp(flip(real(0.33/pixel))),c=flip(imag(0.124/pixel)):
z=z*z+c+conj(((sqrt5+1)/2)*flip(pixel)),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-407{
z=exp(flip(real(0.33/pixel))),c=flip(imag(0.124/pixel)):
z=z*z+c+conj(((sqrt5+1)/2)*flip(conj(pixel))),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-408{
z=exp(flip(real(0.33/pixel))),c=flip(imag(0.124/pixel)):
z=z*z+(c/pixel)+conj(((sqrt5+1)/2)*flip(conj(pixel))),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-409{
z=exp(flip(real(0.33/pixel))),c=exp(imag(0.124/pixel)):
z=z*z+(c/pixel)+conj(((sqrt5+1)/2)*exp(conj(pixel))),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-41 {Mark Peterson frm Modified
z=pixel, c=cosh(1/pixel):
z=sqr(z*z*z) + c,
|z| <= 4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
    ;SOURCE: to-bob-6.frm
}


Carr-410{;Based on Golden Mean frm from Graphdev. MODIFIED
;Distance Estimator works here.
z=((sqrt5-1)/2),c=1/pixel:
z=z*z+pixel*((sqrt5+1)/2)+c,
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-411{;Distance Estimator works here
z=((sqrt5-1)/2),c=1/pixel+log(z*z):
z=z*z+pixel*((sqrt5+1)/2)+c,
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-412{;Distance Estimator works here.
z=((sqrt5-1)/2),c=1/pixel+log(z*z):
z=z*z+pixel+((sqrt5+1)/2)+flip(c),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-413{;Distance Estimator works here
z=((sqrt5-1)/2),c=1/pixel+conj(flip(z*z*z)):
z=z*z+c,
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-414{
z=c*((sqrt5-1)/2),c=1/pixel+conj(flip(z*z*z)):
z=z*z+flip(c),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-415{
z=c*((sqrt5-1)/2)/((sqrt5+1)/2),c=1/pixel+conj(flip(z*z*z)):
z=z*z+flip(c),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-416{;Excellent
z=c*((sqrt5-1)/2)/((sqrt5+1)/2),c=1/pixel+conj(flip(z*z*z)):
z=z*z+(0.524/c)/((sqrt5-1)/2)/((sqrt5+1)/2),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-417{
z=c*((sqrt5-1)/2),c=1/pixel+conj(flip(z*z*z)):
z=z*z/fn2(pixel)+c,
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-418{
z=c/log(pixel),c=1/pixel+conj(flip(z)):
z=z*z+c,
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-419{
z=c/log(0.124/pixel),c=1/pixel+conj(z):
z=z*z+c,
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-42 {Mark Petersom frm Modified
z=pixel, c=cosh(1/pixel):
z=cosxx(z*z*z) + c,
|z| <= 4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
    ;SOURCE: to-bob-6.frm
}


Carr-420{;Distance Estimator works here
z=1/c*(0.524/pixel),c=1/pixel+conj(z):
z=z*z+c,
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-421{
z=1/c*(0.524/pixel),c=1/pixel+conj(z*z*z):
z=z*z*z+c,
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-422{
z=1/c*(0.524/pixel/c),c=1/pixel+conj(z*z):
z=z*z+flip(c),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-423{
z=0.124/c*(0.524/pixel/c),c=1/pixel:
z=z*z*z+flip(c+0.324);
z=z*z+sin(c);
z=z*z+conj(c+0.324),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-424{
z=(1.5,0.3)*((sqrt5+1)/2),c=1/pixel:
z=z*z+flip(c),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-425{
z=(1.5,0.3)*((sqrt5+1)/2),c=pixel:
z=z*z+cosxx(c),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-426{;Distance Estimator works here.
z=c*((1.5,0.7)*((sqrt5+1)/2)),c=1/pixel:
z=z*z+c,
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-427{;Distance Estimator works here
z=c*((1.5,0.7)*((sqrt5+1)/2)),c=1/pixel:
z=z*z+flip(c-0.324),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-428{;
z=1/pixel/(1/cotanh(1.0124)),c=1/pixel/cos(2):
z=z*z+flip(c*tan(c)),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-429{;Distance Estimator works here.
z=1/pixel-cos(1.124),c=1/pixel-tanh(1.08908):
z=z*z+c,
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-43 {Kevin Lee Modified
z=cosxx(pixel), c=pixel-tan(z*z*z):
c=pixel+ c*c/z, z=c-z*sqr(pixel),
|z| <= 4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
    ;SOURCE: to-bob-6.frm
}


Carr-430{;CARR'S RING
z=c=1/pixel:
z=pixel/c*c*pixel/z^(1.23),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-431{;CARR'S RING
z=c=1/pixel:
z=1/pixel/c*c*pixel/z^(1.23),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-432{;CARR'S RING
z=c=1/pixel:
z=1/pixel/c*c*c*pixel/z^(1.23),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-433{;CARR'S RING
z=c=1/pixel:
z=0.124/pixel/c*c*c*pixel/z^(1.23),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-434{
z=c=1/pixel:
z=0.124/pixel/c*c*c*pixel/z^(1.73),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-435{;CARR'S RING
z=c=1/pixel:
z=0.124/pixel/c*c*c*pixel/z^(1.38),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-436{;CARR'S RING, Distance Estimator works here.
z=c=1/pixel:
z=0.124/pixel/c*(c-0.124)*(c-0.524)*pixel/z^(1.38),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-437{;CARR'S RING
z=c=1/pixel/conj(1.353):
z=0.124/pixel/c*(c+0.524)*(c-0.524)*pixel/z^conj(1.38),
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-438{
z=cos(1.34)/pixel,c=cos(1.54/pixel):
z=z*z+c,
|z| <=10
  ;SOURCE: 08carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-439{
z=exp(1.04)/pixel,c=z*(2*z*z-1):
z=z*z+c,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-44 {Drcha.frm-test-1 Modified
c=pixel
z=((sqrt 5 +1)/2):
z=(z*z*z*z*z*z) + pixel*(sqrt 5 + 1)/2 +c
|z| <= 4;
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
    ;SOURCE: to-bob-6.frm
}


Carr-440{;Distance Estimator works here.
z=0.524/pixel,c=z*(4*z*z-2):
z=z*z+c,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-441{;Distance Estimator works here.
z=0.524/pixel,c=z*(4*z*z-2):
z=z*z+c*c,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-442{;Distance Estimator works here.
z=0.524/pixel,c=z*(4*z*z-2):
z=z*z+c;
z=z*z+c,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-443{;Distance Estimator works here.
z=0.524/pixel,c=z*(4*z*z-2):
z=z*z*z+c;
z=z*z*z+c,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-444{;Distance Estimator works here.
z=0.524/pixel,c=z*(4*z*z-2):
z=z*z*z+c*c;
z=z*z*z+c*c,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-445{
z=0.524/pixel,c=z*(4*z*z-2):
z=z*z*z+flip(c*c),
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-446{
z=0.524/pixel,c=z*(4*z*z-2):
z=z*z*z+cos(c*c),
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-447{;Distance Estimator works here.
z=0.524/pixel-1,c=z*(4*z*z-2)-0.124:
z=z*z*z+conj(1/c*1/c),
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-448{;Distance Estimator works here.
z=0.524/pixel-1,c=z*(4*z*z-2)-0.124:
z=z*z*z+conj(pixel/c*pixel/c),
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-449{;Formula made by mistake. Hit cap for z= and got z+
z+(0.6,0.3)*pixel,c=1/pixel:
z=z*z+c,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-45 {Mark Peterson frm Modified
c=z=1/pixel:
z=sqr(z) + sqr(c);
|z| <= 4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-450{;If it worked once, try it again.
z+(0.6,0.3)*pixel,c=1/pixel:
z=z*z*z+c*c,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-451{;And again.
z+(0.6,0.3)*pixel,c=1/pixel:
z=z*z+c;
z=sin(z*z)+c,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-452{;Yet another.
z+(1.6,-0.3)^pixel,c=1/pixel:
z=z*z*z+c;
z=sin(z*z*z)+c,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-452A{
z+(1.6,-0.3)^pixel,c=1/pixel:
z=sin(z*z*z)+c;
z=z*z*z+c,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-453{
z+1/pixel-0.124,c=1/pixel:
z=z*z*z+c,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-454{
z+1/pixel,c=1/pixel:
z=z*z*z+c;
z=(sin(z*z))+c*c;
z=sin(z*z*z)+c,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-455{;Distance Estimator works here.
z=1/pixel:
z=log(z*z)*pixel,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-456{;Distance Estimator works here.
z=1/pixel:
z=log(z*z*z)*pixel,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-457{;Distance Estimator works here.
z=1/pixel:
z=log(z*z*z*z)*pixel,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-458{;Distance Estimator works here.
z=1/pixel:
z=log(z*z*z*z*z*z)*pixel,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-459{;Distance Estimator works here.
z=1/pixel:
z=log(1/z*z*z*z*z*1/z)*pixel,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-46 {Mark Peterson frm Modified
c=z=1/pixel:
z=sqr(z*z*z*z) + (sqrt 5 - 1)/2 + c:
|z| <= 4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
    ;SOURCE: to-bob-6.frm
}


Carr-460{;Distance Estimator works here.
z=1/pixel:
z=log(z/pixel*z*z*z*z*z/pixel)*pixel,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-461{;Distance Estimator works here.
z=1/pixel:
z=log(z/pixel*z*z*z*z*z/pixel)*1/pixel,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-462{;Distance Estimator works here.
z=1/pixel:
z=log(z/pixel*z/pixel*z/pixel)*pixel,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-463{;Distance Estimator works here.
z=1/pixel:
z=log(z/pixel*z/pixel*z/pixel*1/z)*pixel,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-464{;Distance Estimator works here.
z=1/pixel:
z=1/log(z*z*z*z)*pixel,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-465{;Somebody's Modified, I don't know who.
z=1/pixel:
z=z*z*z+1/z*z*z+pixel,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-466{;Distance Estimator works here.
z=1/pixel:
z=z*z*z+1/z*z*z*pixel,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-467{;Distance Estimator works here.
z=1/pixel:
z=z*z*z+1/z*1/z*1/z*pixel,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-468{;Distance Estimator works here.
z=1/pixel:
z=z*z*z+1/(1/pixel*1/pixel*1/pixel)+pixel,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-469{;Distance Estimator works here.
z=1/pixel:
z=z*z*z+1/(pixel*pixel-1)*z-pixel,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-47 {Mark Peterson frm Modified
c=z=(1/pixel)/2:
z=sqr(z*z) + c;
|z| <= 4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
    ;SOURCE: to-bob-6.frm
}


Carr-470{
z=z*z*z+1/(pixel-1),c=1/pixel:
z=z*z+flip(c),
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-471{;Distance Estimator works here.
z=1/(pixel-1),c=1/pixel:
z=z*z+flip(c),
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-472{;Distance Estimator works here.
z=1/(pixel-1),c=1/pixel:
z=z*z+flip(c);
z=z*z+flip(c);
z=z*z+flip(c);
z=z*z+flip(c),
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-473{
z=1/(pixel-1),c=1/pixel:
z=z*z+conj(c);
z=z*z+flip(c);
z=z*z+flip(c);
z=z*z+conj(c),
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-474{;Distance Estimator works here.
z=conj(1/pixel*0.124),c=1/pixel:
z=z*z+conj(c);
z=z*z+conj(c);
z=z*z+conj(c);
z=z*z+conj(c),
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-475{;Distance Estimator works here.
z=conj(1/pixel*0.124),c=1/pixel:
z=z*z*z+conj(c);
z=z*z*z+conj(c);
z=z*z*z+conj(c);
z=z*z*z+conj(c),
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-476{
z=1/pixel*0.124,c=1/pixel:
z=fn1(z/pixel)*c,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-477{
z=1/pixel*0.124,c=1/pixel:
z=fn1(z/pixel*z/pixel)*c,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-478{;Very Strange !!
z=1/pixel*0.124,c=1/pixel:
z=1/(z*z)+c;
z=fn1(z/pixel)*c,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-479{;Distance Estimator works here.
z=1/pixel,c=fn2(z):
c=flip(c)+z;
z=z*z+c,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-48 {Mark Peterson frm Modified
c=z=1/-pixel:
z=sqr(z) + c;
|z| <= 4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-480{;Distance Estimator works here.
z=1/pixel,c=fn2(1/z):
c=flip(c)+z;
z=z*z+c,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-481{;Distance Estimator works here.
z=1/pixel,c=fn2(1/z):
c=flip(c)*z;
z=z*z*z+c,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-482{;Distance Estimator works here.
z=1/pixel,c=fn2(1/z):
c=flip(c*c)*z;
z=z*z+c,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-483{;Distance Estimator works here.
z=1/pixel,c=fn2(1/z):
c=flip(0.124*c+0.724)*z;
z=z*z+c,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-484{;Distance Estimator works here.
z=1/pixel,c=fn2(1/z):
c=flip(0.124*c+0.724)*z;
z=z*z*z+c,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-485{;Distance Estimator works here.
z=1/pixel,c=fn2(1/z):
c=flip(0.124*c+0.724)*z;
z=z*z*z*z+c,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-486{;Distance Estimator works here.
z=pixel,c=fn2(1/z):
c=flip(0.124*c+0.724)*z;
z=z*z*z*z+c,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-487{;Distance Estimator works here.
z=pixel,c=fn2(1/z):
c=flip(conj(0.124*c+0.724)*z);
z=z*z*z*z+c,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-488{;Distance Estimator works here.
z=1/pixel,c=fn2(1/z):
c=flip(conj(0.124*c+0.724)*z);
z=z*z*z*z+c,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-489{;Distance Estimator works here.
z=1/pixel,c=fn2(1/z):
c=flip(conj(0.324*c+0.924)*z);
z=z*z*z*z+c,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-49 {Mark Peterson frm Modified
c=z=1/-pixel:
z=sqr(z*z*z) + c;
|z| <= 4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
    ;SOURCE: to-bob-6.frm
}


Carr-490{;Distance Estimator works here.
z=1/pixel,c=fn2(1/z):
c=flip(conj(0.724*c+0.924)*z);
z=z*z*z*z+c,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-491{;Distance Estimator works here.
z=1/pixel,c=fn2(1/z):
c=flip(conj(0.724*c+0.924)*z);
z=z*z*z*z+c/pixel,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-492{;Distance Estimator works here.
z=1/pixel,c=fn2(1/z):
c=flip(conj(0.724*c+0.924)*z);
z=1/z*z*z*1/z+c/pixel,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-493{;Distance Estimator works here.
z=1/pixel,c=fn2(1/z):
c=flip(sqr(0.724*c+0.924)*z);
z=z*z*z*z+c/pixel,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-494{;Distance Estimator works here.
z=1/pixel,c=fn2(1/z):
c=flip(sqr(0.724*c+0.924)*z);
z=z+c/pixel,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-495{
z=1/pixel,c=fn2(1/z):
c=tanh(sqr(0.724*c+0.924)*z);
z=z*z+c/pixel,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-496{
z=1/pixel,c=fn2(1/z):
c=conj(log(0.742*c+0.924)*z);
z=z*z+c/pixel,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-497{
z=1/pixel,c=fn2(1/z):
c=conj(log(0.742*c+0.942)*z);
z=z*z*z+c/pixel,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-498{;Distance Estimator works here.
z=1/pixel,c=fn4(1/z):
c=conj(log(0.724*c+0.924)*z);
z=z*z*z+c/pixel,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-499{
z=1.5/pixel,c=fn4(z/pixel):
c=conj(sqr(0.724*c+0.924)*z);
z=z*z*z+c/pixel+0.324,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-50 {Mark Peterson frm Modified
c=z=1/cosxx(-pixel):
z=sqr(z) + c;
|z| <= 4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-500{;Distance Estimator works here.
z=1/pixel,c=fn1(fn2(1/z))+1/pixel;
z=z*z+c,
|z| <=10
  ;SOURCE: 07carr.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-501{;Distance Estimator works here.
z=1/pixel,c=exp(0.6,0.3)/pixel:
z=z*z*z*z*z+flip(c/pixel),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-502{;Distance Estimator works here.
z=1/pixel,c=exp(0.6,0.3)/pixel:
z=(z*z*z+(pixel-0.124)*z-1/pixel)/c,
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-503{
z=1/pixel,c=exp(0.6,0.3)/(1/pixel):
z=(z*z+(pixel-0.124)*z-1/pixel)/c,
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-504{;Distance Estimator works here.
z=1/pixel,c=exp(0.6,0.3)/(1/pixel):
z=(1/z*1/z+(pixel-0.124)*z-1/pixel)/c,
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-505{;Distance Estimator works here.
z=1/pixel,c=exp(0.6,0.3)/(1/pixel):
z=(1/z*1/z*1/z+(pixel-0.124)*z-1/pixel)/c,
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-506{;Distance Estimator works here.
z=1/pixel,c=exp(0.6,0.3)/(1/pixel):
z=(1/z*1/z+sqr(pixel-0.124)*z-1/pixel)/c,
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-507{
z=1/pixel,c=exp(0.6,0.3)/(0.5/pixel):
z=(z/pixel*z/pixel+(pixel+0.524)*z-1/pixel)/c,
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-508{
z=1/pixel,c=exp(0.6,0.3)/(0.5/pixel):
z=(z/(pixel-0.724)*z/(pixel-0.724)+(pixel+0.524)*-1/pixel)/c,
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-509{
z=1/pixel,c=sinh(z):
z=z*z*z+flip(c),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-51 {Mark Peterson frm Modified
c=z=1/tan(-pixel):
z=sqr(z*z*z) + c;
|z| <= 4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-510{
z=1/pixel,c=sinh(z):
z=z*z*z+flip(c-0.524),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-511{
z=1/pixel,c=sin(z):
z=z*z*z+flip(c-0.324),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-512{
z=1/pixel,c=cos(z):
z=z*z*z+flip(c-0.324),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-513{
z=1/pixel,c=cos(z):
z=z*z*z+flip(c),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-514{
z=1/pixel,c=cosh(z):
z=z*z*z+flip(c-0.324),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-515{
z=1/pixel,c=cosxx(z):
z=z*z*z+flip(c-0.324),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-516{
z=1/pixel,c=flip(tanh(z)):
z=z*z*z+flip(c-0.324),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-517{
z=1/pixel,c=sinh(z/pixel):
z=z*z*z+flip(c-0.324),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-518{
z=1/pixel,c=cos(z/pixel):
z=z*z*z+flip(c-0.324),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-519{
z=1/pixel,c=cos(z*1/pixel):
z+z*z*z+flip(c-0.324),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-52 {Mark Peterson frm Modified
c=z=1/tan(-pixel):
z=sqr(z*z*z) + 0.75;
|z| <= 4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
    ;SOURCE: to-bob-6.frm
}


Carr-520{
z=1/pixel,c=cos(z*1/pixel):
c=fn1(sinh(z));
z=z*z*z+flip(c-0.324),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-521{
z=1/pixel,c=cos(z+1/pixel):
c=fn2(sin(z/pixel));
z=z*z*z+flip(c-0.424),|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-522{
z=1/pixel,c=cos(z*1/pixel):
c=conj(fn2(sin(z/pixel)));
z=conj(z*z*z)+flip(c-0.424),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-523{
z=1/pixel,c=1/sin(1/(z*z)):
z=z*z+c,
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-524{;Excellent !!
z=1/pixel,c=1/sinh(1/(z*z)):
z=z*z*z+c,
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-525{;Excellent !!!
z=1/pixel,c=1/sinh(1/(z*z)):
z=z*z*z+(c-0.524),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-526{
z=1/pixel,c=1/sinh(1/(z*z)):
z=z*z*z+(c+0.924),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-527{
z=1/pixel,c=1/sinh(1/(z*z)):
z=z*z*z+(c+(0.6,0.3)),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-528{;Nice !!!
z=1/pixel,c=1/conj(1/(z*z)):
z=z*z*z+(c+(0.6,0.3)),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-529{
z=1/pixel,c=1/conj(1/(z*z)):
z=z*z*z+(c-0.224),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-53 {Mark Peterson frm Modified
c=z=1/conj(-pixel):
z=(sqr(z*z*z))/2 + 0.75;
|z| <= 4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-530{
z=1/pixel,c=1/conj(1/(z*z)):
z=z*z*z+(c-0.524),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-531{
z=1/pixel,c=1/conj(1/(z*z)):
z=z*z*z+(c-0.824),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-532{
z=1/pixel,c=1/conj(1/(z*z)):
z=z*z*z+(c/0.824),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-533{
z=1/pixel,c=1/conj(1/(z*z)):
z=z*z*z+(c/0.524),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-534{
z=1/pixel,c=1/conj(1/(z*z)):
z=z*z*z+(c/0.124),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-535{
z=1/pixel,c=1/cosh(1/(z*z)):
z=z*z*z+(c/0.324),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-536{
z=1/pixel,c=1/exp(1/(z*z)):
z=z*z*z+(c/0.324),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-537{
z=1/pixel,c=1/sinh(1/(z*z)):
z=z*z*z+(c/0.724),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-538{
z=1/pixel,c=1/sinh(1/(z*z)):
c=z*z+c;
z=z*z+c,
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-539{
z=1/pixel,c=1/sinh(1/(z*z)):
c=c*c*c+z;
z=z*z*z+c,
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-54 {Mark Peterson frm Modified
c=z=1/-pixel:
z=(sqr(z*z*z))/2 + 0.33;
|z| <= 4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-540{;Distance Estimator works here.
z=1/pixel,c=conj(sqr(z)+pixel):
z=z*z+c,
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-541{
z=1/pixel,c=1/sqr(1/z+conj(1/z*1/z)):
z=z*z+c,
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-542{
z=1/pixel,c=1/sqr(1/z+conj(1/z*1/z*1/z)):
z=z*z*z+(c+0.724),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-543{
z=1/pixel,c=1/sqr(1/z+conj(1/z*1/z*1/z)):
z=z*z+(c+0.724),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-544{
z=1/pixel,c=1/sqr(1/z+conj(1/z*1/z*1/z)):
z=z*z+(c+0.224),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-545{
z=1/pixel,c=1/sqr(1/z+conj(1/z*1/z*1/z)):
z=z*z+(c-0.424),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-546{
z=1/pixel,c=1/sqr(1/z+conj(1/z*1/z*1/z)):
z=z+z+(c-0.824),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-547{
z=1/pixel,c=1/cos(1/z+conj(1/z*1/z*1/z)):
z=z*z+(c-0.824)
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-548{
z=1/pixel,c=1/cos(1/z+conj(1/z*1/z*1/z)):
z=z*z+(c-0.324),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-549{
z=1/pixel,c=1/sqr(1/(pixel*pixel*pixel)):
z=z*z+(c-0.324),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-55 {
c=z=1/pixel:
z=z^2 + flip(pixel)/(pixel^2 + z);
|z| <= 4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-550{
z=1/pixel,c=1/sqr(1/(1/pixel*2/pixel*3/pixel)):
z=z*z+(c+1.02),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-551{
z=1/pixel,c=1/sqr(1/(3/pixel*1/pixel*3/pixel)):
z=z*z+(c-1.02),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-552{
z=1/pixel,c=1/conj(1/(1/pixel*1/pixel*1/pixel)):
z=z*z+(c-1.02),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-553{
z=1/pixel,c=1/conj(1/(1/pixel*1/pixel*1/pixel)):
z=z*z+(c+0.72),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-554{
z=1/pixel,c=1/conj(1/(1/pixel*1/pixel*1/pixel)):
z=z*z*z+(c+0.72),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-555{
z=1/pixel,c=1/fn2(pixel*pixel):
z=z*z+c,
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-556{
z=1/pixel,c=1/fn2(1/pixel*1/pixel):
z=z*z+c,
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-557{
z=1/pixel,c=1/conj(fn2(1/pixel*1/pixel)):
z=z*z*z+(c+0.524),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-558{
z=1/pixel,c=1/conj(fn2(1/pixel*1/pixel)):
z=z*z*z*z+(c+0.524),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-559{
z=1/pixel,c=1/conj(fn2(1/pixel*1/pixel)):
z=z*z*z*z+conj(sin(c-0.524)),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-56 {
c=z=sqr(1/pixel):
z=z^2 + flip(pixel)/(pixel^2 + z);
|z| <= 4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-560{
z=1/pixel,c=1/conj(fn2(1/pixel*1/pixel)):
z=z*z*z*z+conj(sin(c-1.5)),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-561{
z=1/pixel,c=1/conj(fn2(1/pixel*1/pixel*1/pixel)):
z=sqr(conj(z*z*z))+conj(sin(c-1.5)),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-562{
z=1/conj(pixel),c=z+cos(sqr(z*1/(pixel-0.124))):
z=z*z+c,
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-563{
z=1/conj(pixel),c=z+cos(sqr(z*1/(pixel-0.124)*(pixel-0.124))):
z=z*z+c,
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-564{
z=1/conj(pixel),c=z+cos(sqr(z*1/(pixel+0.924))):
z=z*z+(c-0.124),
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-565{;Distance Estimator works here.
z=1/conj(pixel-2.5),c=1/pixel:
z=z*z+c,
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-566{
z=1/conj(pixel-2.5),c=z+cos(sqr(z*1/(pixel-0.124))):
z=z*z+c,
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-567{
z=1/cos(pixel-0.5),c=z+cos(sqr(z*1/(pixel-0.124))):
z=z*z+c,
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-568{
z=1/cosh(pixel-0.5),c=z+cos(sqr(z*1/(pixel-0.124))):
z=z*z+c,
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-569{
z=1/cotan(pixel-0.5),c=sin(z)^log(z):
z=z*z+c,
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-57 {
z=c=1/pixel:
z=(z*z*z)*(c*4) + c
|z| <= 4

  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-570{
z=1/conj(pixel-0.5),c=sin(z)^conj(z):
z=z*z+c,
|z| <=10
  ;SOURCE: 06carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-571{;Also in 06CARR.FRM
z=1/conj(pixel-p1),c=sin(z/pixel)^conj(z/pixel):
z=z*z+(c-p2),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-572{
z=1/conj(pixel-p1),c=sin(z/pixel)^conj(z/pixel):
z=z*z+(c-p2),
|z| <=10 
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-573{
z=1/conj(pixel-p1),
c=conj(sin(z/pixel))^conj(z/pixel):
z=z*z+(c-p2),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-574{
z=1/conj(pixel-p1),
c=conj(cos(z/pixel))*conj(z/pixel):
z=z*z+conj(c-p2),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-575{
z=1/conj(pixel-p1),
c=conj(cos(z/pixel))/conj(z/pixel):
z=z*z+conj(c-p2),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-576{
z=1/conj(pixel-p1),
c=conj(cos(z/(1/pixel)))*conj(z(1/pixel)):
z=z*z*z+conj(c-p2),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-577{
z=1/conj(pixel),c=fn1(1/pixel):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-578{
z=1/conj(pixel-0.524),c=fn1(1/pixel):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-579{
z=1/conj(pixel-0.524),c=1/sin(1/(z*z)):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-58 {
z=c=pixel:
z=(z*z*z)*(c*4) + c
 |z| <= 4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr-580{
z=1/conj(pixel-0.524),c=1/sin(1/(z*z))+0.124*pixel:
z=z*z*z+conj(c),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-581{
z=1/conj(pixel-0.524),c=cosxx(1/(z*z))+0.124*pixel:
z=z*z*z+conj(c),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-582{
z=1/pixel,c=(1/pixel)^(1/pixel):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-583{
z=1/pixel,c=(1/pixel)*(1/pixel):
z=z*z+(c-0.124),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-584{z=1/pixel,c=conj((1/pixel)*(1/pixel)):
z=z*z+(c-0.124);
z=z*z+c;
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-585{
z=1/pixel,c=conj(z*z+pixel+1/pixel)/|z|:
z=z*z+conj(c/(1/|z|)),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-586{
z=1/pixel,c=fn1(z)+1/z:
z=z*z+conj(c/(1/pixel)),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-587{
z=1/pixel,c=1/conj(1/pixel*z*(z*z-3)):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-588{
z=1/pixel,c=tanh(1/pixel*z*conj(z*z-5)):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-589{
z=1/pixel,c=conj(1/z*(z/pixel)-1):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-59 {
z=c=1/pixel:
z=(z*z*z)*(tanh(c*4)) + c
 |z| <= 10
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-590{
z=1/pixel,c=1/conj(z^pixel-1)/3:
z=fn1(c^pixel-3),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-591{
z=1/pixel,c=2/conj(z*(1/pixel*(pixel-1)))/5:
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-592{
z=1/pixel,c=conj(1/(1+pixel)):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-593{;Distance Estimator works here.
z=1/real(pixel*pixel),c=1/pixel:
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-594{
z=1/(pixel*sin(pixel)),c=1/pixel:
z+z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-595{
z=1/(pixel*cos(5-pixel)),c=1/pixel:
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-596{
z=1/pixel,c=pixel:
z=z*z+(1/pixel)/(0.9,-0.6),
|z*pixel/z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-597{
z=1/cos(pixel),c=conj(tan(pixel)):
z=z*z*c-(1/pixel),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-598{
z=1/cos(pixel),c=conj(tan(pixel)):
z=z*z*z+(1/pixel),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-599{
z=1/cos(pixel),c=conj(tan(pixel)):
z=z*z*c+flip(1/pixel);
z=z*z*c+conj(1/pixel),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-60 {
z=c=1/pixel:
z=(z*z*z*z)*(cotanh(c*c*4)) + c/0.75,
|z| <= 10
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-600{
z=1/cos(pixel),c=conj(tan(pixel)):
z=z*z*c+conj(1/pixel);
z=z*z*c+flip(1/pixel);
z=z*z*c+conj(1/pixel),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-601{
z=1/cos(pixel),c=1/pixel-1/|z|:
z=z*c*c+flip(1/pixel);
z=z*c*c+conj(1/pixel),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-602{
z=1/conj(pixel),c=1/cosxx(z):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-603{
z=1/conj(pixel),c=1/cosxx(z):
z=z*z+flip(c-0.524),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-604{
z=1/conj(pixel),c=1/cosxx(z*z):
z=z*z*z+flip(c*c-0.924),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-605{
z=1/conj(pixel),c=1/cos(z*z):
z=z*z*z+cosxx(c*c-0.124),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-606{
z=1/flip(pixel),c=1/cos(z*z):
z=z*z*z+conj(flip(c-0.124)),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-607{
z=1/flip(pixel),c=1/cos(z*z*z):
z=z*z*z+flip(conj(c-0.624)),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-608{
z=1/flip(pixel),c=1/cos(z*z*z):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-609{
z=1/flip(pixel),c=1/cotanh(z*z*z):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-61 {
z=c=1/pixel:
z=(z*z*z*z)/cotanh(c*c*c*4) + c/0.75,
 |z| <= 10
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-610{
z=1/pixel,c=1/(sqr(pixel)/z*z+pixel):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-611{;Distance Estimator works here.
z=1/pixel,c=1/(sqr(pixel)/z*z+pixel):
z=conj(z*z+c),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-612{
z=1/conj(pixel),c=1/(sqr(pixel)/z*z+pixel):
z=conj(z*z+c),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-613{
z=1/pixel,c=cos(-2.6,0.3):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-614{
z=1/pixel,c=cos(-2.6,0.3):
z=z*z+(c-0.199),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-615{
z=1/pixel,c=cos(-2.6,-0.36):
z=z*z+(c-0.199),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-616{
z=1/pixel,c=cos(-2.115,-0.369):
z=z*z+(c-0.09),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-617{
z=1/pixel,c=cos(-2.095,-0.369):
z=z*z+(c-0.09),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-618{
z=1/pixel,c=cos(-2.9,-0.3):
z=z*z+(c-0.015),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-619{
z=tanh(1/pixel),c=cos(-2.9,-0.3):
z=z*z+(c-0.09815),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-62 {
c=z=pixel:
c=tanh(z^c)/z, c=(z*z*z*z*z) + (c/0.9), z=sqr(c*1/pixel),
|z| <= 4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-620{
z=tanh(1/pixel-0.124),c=cos(-2.6,0.3):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-621{
z=cotanh(1/pixel-0.124),c=cos(-2.6,0.3):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-622{
z=cosh(1/pixel-0.224),c=cos(-2.6231,0.3124):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-623{
z=cosh(1/pixel-0.224),c=sin(-2.6231,0.3124):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-624{
z=flip(1/pixel-0.224),c=sin(cos(-2.5231,0.3124)):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-625{
z=flip(1/pixel-0.324),c=sin(cos(-2.3231,0.3124)):
z=z+z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-626{
z=flip(1/pixel-0.324),c=sin(cosxx(-2.3064,0.3124)):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-627{
z=cosxx(1/pixel-0.324),c=sin(cosxx(-2.6064,0.3124)):
z=z*z+(c-0.024),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-628{
z=cosxx(sin(1/pixel-0.324)),c=sin(cosxx(-2.6064,0.3124)):
z=z*z+(c-0.024),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-629{
z=cosxx(sinh(1/pixel-0.394)),c=sin(cosxx(-2.9064,0.3124)):
z=z*z+(c-0.024),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-63 {
c=z=1/pixel:
c=tanh(z^c)/z, c=(z*z*z*z*z) + (c/0.9), z=sqr(c*1/pixel),
 |z| <= 4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-630{
z=cosxx(sinh(1/pixel-0.394)),c=sin(1/cosxx(-2.5064,0.3124)):
z=(z-0.124)*(z+0.287)+(c-0.024),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-631{
z=cosxx(sinh(1/pixel-0.394)),c=sin(1/tanh(-2.9064,-0.1124)):
z=(z-0.124)*(z-0.287)+(c-0.124),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-632{
z=cosxx(sinh(1/pixel-0.394)),c=sin(1/tanh(-2.9764,-0.1824)):
z=(z-0.094)*(z-0.087)+(c-0.194),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-633{
z=cosxx(sin(1/pixel-1.494)),c=conj(1/cotanh(-2.5764,-0.1824)):
z=z*z+c,
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-634{
z=cosxx(sin(1/pixel-3.594)),c=conj(1/cotanh(-3.9764,-0.1824)):
z=z*z+c/(1/(z+1)),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-635{
z=1/pixel,c=1/sqr(pixel)/z:
z=z*z+c,
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-636{
z=1.2/pixel,c=1/sqr(pixel)/z:
z=z*z+flip(c),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-637{
z=1.2/pixel,c=1/sqr(pixel)/z:
z=z*z+conj(tanh(c)),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-638{
z=0.85/pixel,c=1/sqr(pixel-1)/z:
z=z*z*z+(c-0.024),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-639{
z=0.5/pixel,c=1/sqr(pixel-1)/z:
z=z*z*(z/pixel)+flip(c-0.024),
|z/0.5| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-64 {
z=tanh(1/pixel):
c=sqr(real(1/pixel));
z=(z*z*z*z) - (sqr(c*c)),
|z| <=8
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-640{
z=0.5/pixel,c=1/sqr(pixel-1)/z:
z=z*z*(z/pixel)+sin(flip(c-0.024)),
|z/0.5| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-641{
z=1/pixel,c=z/pixel*z/pixel+pixel/z:
z=z*z+c,
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-642{
z=1/abs(pixel),c=1/pixel:
z=sin(z*z+c),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-643{
z=1.124/pixel,c=sin(1/pixel)/(z/(1/pixel)):
z=z*z+c,
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-644{
z=1.124/pixel,c=sin(1/pixel)/cosh(z/(1/pixel)):
z=z*z+flip(conj(c)),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-645{;*****
z=1.124/pixel,c=sin(1/pixel)/cosh((1/z)/(1/pixel)):
z=z*z+flip(conj(c)),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-646{
z=1.124/pixel,c=sin(1/pixel)/cosh((1/z)/(1/pixel)):
z=z*z+conj(c),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-647{
z=1.124/pixel,c=sin(1/pixel)/cosxx((1/z)/(1/pixel)):
z=z*z+conj(c),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-648{
z=1.124/pixel,c=sin(1/pixel)/cotan((0.8/z)/(0.8/pixel)):
z=z*z+conj(c),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-649{
z=1/pixel,c=sin(z)*(conj(-z))+1/abs(pixel):
z=z*z+c,
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-65 {
z=1/tanh(1/pixel):
c=sqr(real(1/pixel));
z=tanh(z*z*z*z) + (1/cotanh(c*c)),
|z| <=8
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-650{
z=1/pixel,c=sin(z)*(conj(-z))+1/real(pixel):
z=z*z+c,
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-651{
z=1/pixel,c=sin(z)*(conj(-z))+1/real(pixel):
z=z*z+conj(c),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-652{
z=1/pixel,c=sinh(z)*(conj(-z))+1/real(pixel):
z=z*z+conj(c),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-653{
z=1/pixel,c=tanh(z)*(conj(-z))+1/real(pixel):
z=z*z+conj(c),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-654{
z=1/pixel,c=sin(z)*(conj(-z))+1/real(pixel):
z=(z-0.004)*(z-0.004)+conj(c),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-655{
z=1/(pixel+0.024),c=sin(z)*(conj(-z))+1/real(pixel):
z=z*z+conj(c/1.05),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-656{
z=1/pixel,c=sin(z)*(conj(-z))+1/real(pixel):
z=z*z+conj(c*(cos(c))),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-657{
z=1/pixel,c=sin(z)*(conj(-z))+1/real(pixel):
z=z*z+conj(c*(cosxx(c))),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-658{
z=1/pixel,c=sin(0.6,0.3)/((sqrt5+1)/2):
z=sin(z)+sin(c)+sin(pixel),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-659{
z=imag(1/pixel-0.124),c=1/pixel-0.124:
z=(sin(z))*(z*z+c),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-66 {
c=z=(1/pixel)/cotan(pixel-.25):
z=sqr(z) + 0.33;
|z| <= 4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-660{
z=imag(1/pixel-0.124),c=(1/pixel-0.124):
z=(sin(c))*(z*z+c),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-661{
z=imag(1/pixel-0.124),c=(1/pixel-0.124):
z=(sin(c))*(z*z+real(c)),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-662{
z=real(1/pixel-0.124),c=(1/pixel-0.124):
z=(sin(c))*(z*z+imag(c)),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-663{
z=1/pixel,c=((1/pixel)*(z*z))/(0.6,0.3):
z=z*z+conj(c*(cosxx(c))),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-664{
z=1/conj(pixel),c=((1/pixel)*(z*z))/(2.6,-0.3):
z=z*z+conj(c*(cosxx(-c))),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-665{;***
z=1/conj(pixel),c=sinh((1/pixel)*(z*z))/(0.6,2.3):
z=z*z+conj(c*(sin(-c))),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-666{
z=1/conj(pixel),c=sinh((1/pixel)*(z*z))/(3.6,-0.3):
z=sin(z*z)+conj(c*(sin(-c))),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-667{
z=1/conj(pixel),c=sinh((1/pixel)*(z*z))/(3.6,-0.3):
z=cos(z*z)+conj(c*(sin(-c))),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-668{
z=1/conj(pixel),c=sinh((1/pixel)*(z*z))/(3.6,-0.3):
z=cos(z*1/pixel)+conj(c*(sin(-c))),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-669{
z=1/conj(pixel),c=sinh((1/pixel)*(z*z))/(3.6,-0.3):
z=cos(z^c)+conj(c*(sin(-c))),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-66A {
c=z=(1/pixel)/cotanh(pixel-.75):
z=sqr(z) + 0.33;
|z| <=4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-66B {
c=z=cotanh(pixel/0.33)/(pixel-.75):
z=sqr(z) + 0.33;
|z| <=4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-66C {
c=z=log(1/pixel/0.33)/(pixel-.75):
z=sqr(z) + 0.33;
|Z| <=4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-66D {
c=z=log(1/pixel/0.33)/sqr(pixel-.75):
z=sqr(z) + 0.33;
|z| <=4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-66E {
c=z=sqr(1/pixel/0.33)/(5.3/flip(pixel-.75))/0.33:
z=sqr(z) + 0.33;
|z| <=4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-66F {
c=z=sqr(1/pixel/0.33)/(9.3/flip(pixel-.75))/0.33:
z=sqr(z) + 0.33;
|z| <=4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-67 {use Distance Estimator funtion on this formula
c=z=pixel:
z=sqr(z) + c;
z1=sqr(z) + 0.33,
|z| <=4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-670{
z=1/cosxx(pixel),c=cosxx(1/pixel)/(6.6,-0.3):
z=tanh(real(c))/conj(z*(sin(z*z))),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-671{
z=1/pixel,c=1/pixel/(z-1)*pixel:
z=z*z+c,
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-672{
z=1/pixel,c=1/pixel/(z-1.05)*pixel:
z=z*z+c,
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-673{
z=1/pixel,c=1/pixel/(z-1)*pixel:
z=z*z+conj(c),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-674{
z=0.8/pixel,c=1/pixel+0.124/(z-1)*pixel:
z=z*z+conj(c),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-675{
z=1.8/pixel,c=1/pixel+0.194/(z-1)*pixel:
z=z*z+conj(c),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-676{
z=1/pixel,c=1/pixel-0.124/(z-1)*pixel:
z=z*z+sqr(flip(c)),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-677{
z=1/pixel,c=1/pixel-0.124/(z-1)*pixel:
z=z*z+flip((flip(c-0.124))*(conj(c-0.124))),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-678{
z=1/pixel,c=1/pixel-0.124/(z-1)*pixel:
z=z*z+sin((flip(c-0.124))*(conj(c-0.124))),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-679{
z=1/pixel,c=1/pixel-0.124/(z-1)*pixel:
z=z*z+sin((flip(c-0.124))*(cosxx(c-0.124))),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-68 {
c=z=1/pixel:
z=sqr(z*z) + c;
z=sin(z) + c;
z=sqr(z) + c;
z=sin(z*z) + c,
|z| <=4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-680{
z=1/pixel,c=1/pixel-0.124/(z-1)*pixel:
z=z*z+((sin(c-0.124))*(sin(c-0.124))),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-681{
z=1/pixel,c=1/pixel-0.124/(z-1)*pixel:
z=z*z+((c-0.224)*(c-1.024))/0.25,
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-682{
z=1/pixel,c=1/pixel/((z-1)/(1/pixel))*pixel:
z=z*z+((c-0.224)*(c))/0.25,
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-683{
z=1/pixel,c=1/pixel/((z-1)/(1/pixel))*pixel:
z=z*z+((c-0.224)*(c))/(2.6,-0.9),
|z| <=10
  ;SOURCE: 04carr.frm
  ;SOURCE: 04carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-684{
z=1/pixel,c=1/pixel/((z-1)/(1/pixel))*pixel:
z=z*z+((c-0.224)*(c/(1/pixel)))/(5.8,2.01),
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-685{
z=1/pixel,c=1/pixel/((z-1)/pixel+b),b=1/z-1/c-1/pixel:
z=z*z+c,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-686{
z=1/pixel,c=sin(conj(z^1.124))+0.124:
z=z*z+c,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-687{
z=1/pixel,c=sin(conj(z^2.124))+0.124:
z=z*z+c,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-688{
z=1/pixel,c=sin(conj(z^2.724))+0.124:
z=z*z+c,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-689{
z=1/pixel,c=sinh(sqr(z^2.724))+0.124:
z=z*z+c,
|z| <=10
  ;SOURCE: jo_we_06.frm
}


Carr-69 {
c=z=1/pixel:
z=sin(z*z) + c,
|z| <=4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-690{
z=1/sin(pixel),c=sin(conj(z^1.124))+0.124:
z=z*z+c,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-691{
z=1/pixel,c=(sin((z^1.124)))/(0.6,-0.3)+sin(0.124/pixel):
z=z*z+c,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-692{
z=1/tan(pixel),c=(sin((z^1.124)))/(2.6,-3.3)+sin(0.124/pixel):
z=z*z+c,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-693{
z=1/cotan(pixel),c=(sin((z^1.124)))/(2.6,-3.3)+sin(0.124/pixel):
z=z*z+c,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-694{
z=1/cotan(pixel),c=(sin(z^(-1.124)))/(2.6,-3.3)+sin(0.124/pixel):
z=z*z+c,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-695{
z=1/pixel+real(sin(1/pixel)),c=(z^(1.124))/(0.096,-0.093)+sin(0.124/pixel):
z=z*z+(sin(-c))*1/pixel,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-696{
z=1/pixel+real(sin(1/pixel)),c=(z^(1/124))/(0.096,-0.093)+sin(0.124/pixel):
z=z*z*z+(sin(-c))*1/pixel,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-697{
z=1/conj(1/pixel),c=1/conj(0.124/pixel):
z=z*z+c.
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-698{
z=1/conj(1/pixel),c=1/conj(0.124/pixel-1):
z=z*z+c,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-699{
z=1/conj(1/pixel),c=1/conj(0.124/pixel-0.924):
z=z*z+c,
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-70 {
c=z=1/pixel:
z=sin(z*z)/0.99 + 0.33,
|z| <=4
  ;SOURCE: carr-1.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-700{
z=1/conj(1/pixel),c=1/conj(sinh(0.324/pixel-1.5)):
z=z*z+c,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-701{
z=1/conj(1/pixel),c=1/conj(sinh(0.224/pixel-1.5))/real(1/pixel-1):
z=z*z+c,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-702{
z=1/conj(1/pixel),c=1/conj(sinh(0.224/pixel-1.5))/real(1/pixel-1.5):
z=z*z+c,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-703{
z=1/conj(1/pixel),c=1/conj(cosh(0.224/pixel-1.5))/real(1/pixel-1.5):
z=z*z+c,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-704{
z=1/conj(1/pixel-1.5),c=1/conj(fn2(0.224/pixel-1.5))/fn1(1/pixel-1.5):
z=sinh(z*z+c),
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-705{
z=1/conj(pixel-1.5),c=1/pixel-1.5:
z=z*z+c,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-706{;SLOW
z=1/conj(pixel-1.5),c=1/pixel-1.5:
z=(z*z+c)/(1/pixel-1.5),
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-707{
z=1/pixel,c=1/pixel:
z=z*z+c,
|1/z*z/pixel| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-708{
z=1/pixel,c=1/pixel:
z=z*z*z+c,
|1/z*z/pixel| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-709{
z=(1/pixel)-0.924,c=(1/pixel)-0.524:
z=z*z+c,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-71 {
c=z=1/pixel:
z=sin(z*z) + c;
z=sin(z*z)/0.99 + c;
z=sin(z*z*z) + c,
|z| <=4
  ;SOURCE: carr-3.frm
   ;SOURCE: to-bob-6.frm
}


Carr-710{
z=(1/pixel)-0.924/pixel,c=(1/pixel)-0.524:
z=z*z+c,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-711{
z=real(1/pixel)-conj(0.5/pixel),
c=real(1/pixel)+0.524/pixel:
z=z*z+c,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-712{
z=real(1/pixel)-sin(0.5/pixel),
c=real(1/pixel)+0.524/pixel:
z=z*z*z+c,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-713{
z=real(1/pixel)-sin(0.5/pixel),
c=real(1/pixel)+0.524/pixel:
z=z*z+c-(z-1/pixel)/2,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-714{
z=real(1/pixel)-conj(0.5/pixel),
c=real(1/pixel)+0.824/pixel:
z=1/sqr(z*z+c-(z-(0.75/pixel))/2),
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-715{
z=real(1/pixel)-conj(0.5/pixel),
c=real(1/pixel)+imag(1/pixel):
z=(z*z+c-(z-(0.75/pixel))/2),
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-716{
z=real(1/pixel)-conj(0.5/pixel),c=(z/(1/pixel-1)):
z=(z*z+c-(z-(0.75/pixel))/2),
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-717{;Reglar Mandel form inside of an inverted Mandel form
z=real(1/pixel)-conj(0.5/pixel),
c=((z-1/pixel)/(1/pixel-1)):
z=(z*z+c-(z-(0.75/pixel))/2),
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-718{
z=tanh(1/pixel)-conj(0.5/pixel),
c=tanh((z-1/pixel)/(1/pixel-1)):
z=(z*z+c-(z-(0.75/pixel))/2),
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-719{
z=tanh(1/pixel)-conj(0.5/pixel),
c=tanh((z-1/pixel)/(1/pixel-1)):
z=flip(z*z+c-(z-(0.75/pixel))/2),
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-72 {
c=z=1/pixel:
z=sinh(z*z) + c;
z=sinh(z*z) + c,
|z| <=10
  ;SOURCE: carr-3.frm
   ;SOURCE: to-bob-6.frm
}


Carr-720{
z=tanh(1/pixel)-conj(0.5/pixel),
c=tanh((z-1/pixel)/(1/pixel-1)):
z=conj(flip(z*z+c-(z-(0.75/pixel))/2)),
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-721{;Interesting !!
z=(1/pixel)-conj(0.5/pixel),
c=(1/pixel)/(1/pixel-1)+conj(z):
z=(z*z+c-(z-(0.75/pixel)/4)),
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-722{
z=sinh(1/pixel)-conj(0.5/pixel),
c=sinh((1/pixel)/(1/pixel-1)):
z=z*z+c,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-723{
z=sinh(1/pixel)-conj(0.5/pixel),
c=sinh((1/pixel)/(1/pixel-1)):
z=(z*z+2*c)/1.5,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-724{
z=sin(1/pixel)-conj(0.5/pixel-1),
c=sinh((1/pixel)/(1/pixel-1)):
z=(z*z+c)+0.124,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-725{
z=(1/pixel)-1/sqr(conj(0.5/pixel-1)),
c=conj((1/pixel)/(1/pixel-1)):
z=(z*z+c)+cos(0.124),
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-726{
z=(1/pixel)-1/sqr(conj(0.5/pixel)),
c=sinh(conj((1/pixel)/(1/pixel-1))):
z=(conj(z*z*z+c)+cos(0.124))/2,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-727{
z=(1/pixel)-1/sqr(conj(0.5/pixel-1)),
c=sinh(conj((1/pixel)/(1/pixel-1))):
z=(conj(z+c*c)+cos(0.524))/2,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-728{
z=(1/pixel)-1/sqr(conj(0.5/pixel-1)),
c=sinh(conj((1/pixel)/(1/pixel-0.75))):
z=(conj(z*z+c*c)+cos(0.924))/2,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-729{
z=(1/pixel)-1/sqr(conj(0.5/pixel-1))+2.224,
c=sinh(conj((1/pixel)/(1/pixel-0.75)))+2.124:
z=(conj(z*z*z*z+c)+cos(0.924))/2,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-73 {
c=z=1/pixel:
z=sqr(z*z) + c;
z=sqr(z*z^z) - c,
|z| <=10
  ;SOURCE: carr-3.frm
   ;SOURCE: to-bob-6.frm
}


Carr-730{
z=(1/pixel)-1/sqr(conj(0.5/pixel-1))+2.224,
c=((1/pixel)/(1/pixel-0.75))+2.124:
z=conj(z*z*z*1/z+c)+cos(0.124),
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-731{
z=(1/pixel)-1/sqr(conj(0.5/pixel-1))+2.224,
c=((1/pixel)/(1/pixel-0.75))+2.124:
z=conj(z*z*z*1/z+sinh(c/(0.25/pixel)))+cosh(5.124),
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-732{
z=1/pixel,c=1/pixel/(z-1)*pixel:
z=(z*z+flip(c))/2,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-733{
z=1/pixel,c=1/pixel/(z-1.5)*pixel:
z=z*z+c+z/(1/pixel),
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-734{
z=1/pixel,c=1/pixel-1/(z-1.5)*pixel:
z=z-1*z+c+z/sin(1/pixel-1),|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-735{
z=sin(1/pixel),c=(1/pixel)/1/(z-1.5)*pixel:
z=z*z+(c-0.00001),
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-736{
z=sin(1/pixel),c=(1/pixel)/1/(z-1.5)+pixel:
z=z*z+(c+0.2),
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-737{
z=sin(1/pixel),c=(1/pixel)/1/(z-1.5)+pixel:
z=(z*z*z+(c+0.2))/2,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-738{
z=sin(1/pixel),c=(1/pixel)/1/(z-1.5)+pixel:
z=(z*z*z*z+cos(sqr(c+0.1)))/2,
|z| <=10
  ;SOURCE: 03carr.frm
  ;SOURCE: 03carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-739{
z=1/pixel,c=(1/pixel)/2/(z-2.5)^(1/pixel):
z=z*z+c,
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-74 {
c=z=1/pixel:
z=(3.334/sin(z*z)) + (c/pixel);
|z| <=4
  ;SOURCE: carr-3.frm
   ;SOURCE: to-bob-6.frm
}


Carr-740{
z=1/pixel,c=(1/pixel)/2/(z-2.5)^(1/pixel-1):
z=z*z+(c-0.4),
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-741{
z=1/pixel-0.75,c=(1/pixel)/2/(z-2.5)^(1/pixel-1):
z=z*z+(c-0.489),
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-742{
z=1/pixel/1.75,c=(1/pixel)/2/(z-2.5)^(pixel-1)+2:
z=z*z+c,
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-743{
z=c*((1.5,0.7)*((sqrt5+1)/2)),c=1/pixel:
z=z*z+flip(c+0.124),
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-744{
z=c*((1.5,0.7)*((sqrt5+1)/2)),c=1/pixel-0.4:
z=z*z+flip(c+0.124),
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-745{
z=1/flip(pixel),c=1/flip(pixel+(0.6,0.3)):
z=z*z+flip(c),
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-746{
z=c=1/pixel:
z=z*z+c,
real(z)<2.124
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-747{
z=c=1/pixel:
z=z*z+c,
abs(z)<2.124
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-748{
z=sin(1/pixel),c=sin(|1/pixel|):
z=z*z+c,
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-749{
z=sin(1/pixel),c=sin(|1/pixel|):
z=z*z+c,
real(z)<2.124
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-75 {
c=z=(1/pixel):
z=(sin(z*z)) + ((sin(c-0.33))/pixel);
|z| <=4
  ;SOURCE: carr-3.frm
   ;SOURCE: to-bob-6.frm
}


Carr-750{
z=sin(1/pixel),c=sin(|1/pixel|):
z=((z*z)+0.004)+c,
real(z)<2.124
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-751{
z=sin(1/pixel),c=cosxx(|1/pixel|):
z=((z*z)+0.009)+(c-0.124),
real(z)<2.124
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-752{
z=conj(1/pixel),c=conj(sqr(|1/pixel|)):
z=z*z+c,
real(z)<2.124
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-753{
z=c=1/pixel:
z=(z*z+(c+(c-1)))/2,
real(z)<2.124
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-754{
z=conj(1/pixel),c=1/pixel:
z=(z*z+(c+(c-1)))/2,
real(z)<2.124
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-755{
z=conj(1/pixel-0.124),c=1/pixel:
z=conj(1.124)*(z*z+c)+real(c*(1/pixel-0.5)),
abs(z)<2.124
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-756{
z=conj(1/pixel-0.124),c=cosxx(z*z)/sin(z/(1/pixel)):
z=(z*z+c)/2,
abs(z)<2.124
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-757{
z=conj(1/pixel-0.124),c=z*log(1/pixel)/(1/z*1/z)+0.124:
z=z*z+c,
abs(z)<2.124
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-758{
z=conj(1/pixel-0.124),c=z*log(1/pixel)/(1/z*1/z)+0.724:
z=z*z+c,
abs(z)<2.124
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-759{
z=1/(((sqrt5+1)/2)*pixel),c=sin(1/(z*z)):
z=z*z+c,
abs(z)<2.124
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-76 {
c=z=pixel:
z=(sin(z*z)) + ((sin(c-0.33))/pixel),
|z| <=4
  ;SOURCE: carr-2.frm
   ;SOURCE: to-bob-6.frm
}


Carr-760{
z=((sqrt5+1)/2)*pixel,c=sin(1/(z*z)):
z=1/(z*z+c),
abs(z)<2.124
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-761{
z=((sqrt5+1)/2)*pixel,c=sqr(1/(z*z)):
z=1/(z*z+c-1.124),
abs(z)<2.124
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-762{
z=((sqrt5+1)/2)*pixel,c=sqr(1/(z*z)):
z=1/(z*z+c),
abs(z)<2.124
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-763{
z=((sqrt5+1)/2)*(1/pixel),c=(1/(z*z)):
z=(z*z+c)/c/z,
abs(z)<2.124
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-764{
z=((sqrt5+1)/2)*(1/pixel),c=(sqr(1/(z*z)))/pixel*z:
z=sqr(z*z+c),
real(z)<2.124
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-765{
z=1/pixel-0.05,c=1/pixel-0.1:
z=(z-0.3)*(z-0.25)+c,
abs(z/(1/pixel))<2.124
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-766{
z=1/pixel-0.05,c=1/pixel-0.1:
z=(z-0.3)*(z-0.35)+c+0.224,
abs(z*z/flip(pixel))<2.524
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-767{;This is a modification of a formula I saw somewhere. 
         ;If you know who's it is please let me know.
c=z=1/(pixel^1.245):
z=fn1(z^1.245)+fn2(c),
abs(z)<2.124
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-768{;Ditto above.
c=z=1/(pixel^1.245):
z=conj(z^2.245)+fn2(c),
abs(z)<2.124
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-769{
c=z=1/(pixel^2.45):
z=(z*z+c)+0.524,
abs(z)<2.124
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-77 {
c=z=(1/pixel):
z=(sin(z*z)) + ((sin(c-5.9))/pixel);
z=sqr(z) + c,
|z| <=4
  ;SOURCE: carr-3.frm
   ;SOURCE: to-bob-6.frm
}


Carr-770{
z=c=fn2(1/pixel):
z=(z*z+c-0.164)/0.3,
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-771{
c=z=fn2(1/pixel):
z=(z*z+c-0.164)/0.75,
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-772{
z=sqr(sinh(c)),c=sqr(sinh(1/pixel)):
z=z*z-flip(c),
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-773{
z=c=sqr(conj(1/pixel)):
z=z*z+c-0.324,
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-774{
z=c=sqr(cotan(1/pixel)):
z=z*z+c-0.724,
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-775{;Nice images produced
z=c=sqr(sqr(1/pixel)):
z=z*z+c-0.724,
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-776{
z=c=sqr(sqr(1/pixel+0.09)):
z=(z-0.09)*(z-0.09)+conj(c-0.724),
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-777{
z=c=sqr(sqr(1/pixel+0.09)):
z=(z-0.09)*(z-0.09)+flip(c-0.9245),
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-778{
z=c=sqr(sqr(1/pixel)):
z=(z*z+c-0.724)-0.01,
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-779{
z=c=sqr(sqr(1/pixel)):
z=(z*z+c-0.524)-0.01,
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-78 {
c=z=(1/pixel):
z=(sin(z*z)) + ((sin(c+8.9))/pixel);
z=sqr(z) + c,
|z| <=4
  ;SOURCE: carr-3.frm
   ;SOURCE: to-bob-6.frm
}


Carr-780{
z=c=sqr(sqr(sqr(1/pixel))):
z=((z*z+c-0.524)-0.01)/0.855,
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-781{
z=c=sqr(sqr(cosxx(1/pixel))):
z=z*z+c,
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-782{
z=sqr(sqr(cosxx(1/pixel))),c=sqr(sqr(1/pixel)):
z=z*z+c,
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-783{
z=sqr(sqr(sqr(1/pixel))),c=sqr(sqr(1/pixel)):
z=z*z+(c-0.024);
z=z+z+c+1/pixel,
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-784{
z=sqr(sqr(sqr(1/pixel+0.006))),c=sqr(sqr(1/pixel-0.009)):
z=z*z+(c-0.084);
z=z+z+c+1/pixel-0.03,
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-785{
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=z^z*z+flip(c*c),
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-786{;Very interesting image poosibilities !!
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=1/z^z*z+flip(c*c),
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-787{;Ditto above
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=1/z^z*z+conj((c+0.124)*(c+0.124)),
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-788{
Z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=1/z^z*z+tanh((c+0.129)*(c-0.129)),
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-789{
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=1/z^z*z+cotanh((c+0.129)*(c+0.129)),
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-79 {
c=z=pixel:
z=(sin(z*z)) + ((sin(c+8.9))/pixel);
z=sqr(z) + c,
|z| <=4
  ;SOURCE: carr-2.frm
   ;SOURCE: to-bob-6.frm
}


Carr-790{
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=1/z^z*z+tanh((c-0.129)*(c+0.129)),
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-791{
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=1/z^z*z+tanh((c-0.229)*(c+0.129)),
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-792{
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=(z*z+c-0.724)-0.01,
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-793{
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=(z*z+c-0.724)+0.01;
z=(z*z+c-0.724)-0.01,
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-794{
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=((z*z+c-0.724)+0.07)+0.03;
z=(z*z+c-0.724)/0.67,
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-795{
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=(z*z+c-0.724)+0.07;
z=(z*z+c-0.724)/0.87,
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-796{
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=(pixel-z*z)/(pixel-c*c),
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-797{
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=sin((pixel-z*z)/(pixel-c*c)),
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-798{
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=((pixel-z*z)/(pixel-c*c))-0.3,
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-799{
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=((pixel-z*z)/(pixel-(c-0.824)*(c-0.824)))-0.375,
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-80 {
c=z=(1/pixel):
z=(sin(z*z)) + ((sin(c+8.9))/pixel);
z=sqr(z) + (c-1),
|z| <=4
  ;SOURCE: carr-3.frm
   ;SOURCE: to-bob-6.frm
}


Carr-800{
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=((pixel-z*z)/(pixel-(c+0.624)*(c+0.624)))-0.375,
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-801{
z=sqr(sqr(sqr(1/pixel-0.006)))-0.01,c=sqr(sqr(1/pixel-0.009)):
z=((pixel-z*z)/(pixel-(c+0.624)*(c+0.624))),
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-802{;***
z=sqr(sqr(sqr(1/pixel-0.006))),c=sqr(sqr(1/pixel-0.009)):
z=z*z+c;
z=z/pixel*z*z+c/flip(c/pixel*c+z)-1/pixel,
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-803{
z=1/conj(pixel)+0.1/pixel,c=1/conj(conj(pixel))+1/pixel+z:
z=(1/z^z*z/7+z*z-c)/1.3,
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-804{;Modified SJMAND01
z=1/(real(pixel)+flip(imag(pixel)*1.224)),
c=1/(2.224+1.224*real(pixel)+flip(imag(pixel))):
z=z*z+c,
|z| <=10
  ;SOURCE: 02carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-805{;Modified SJMAND01
z=1/(real(pixel)+flip(imag(pixel)*1.224)),
c=1/(2.224+1.224*real(pixel)+conj(imag(pixel))):
z=z*z+c,
|z| <=10
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-806{;Modified SJMAND01
z=1/(real(pixel-0.124)+flip(imag(pixel-0.224)*1.224)),
c=1/(2.224+1.224*real(pixel)+flip(abs(pixel))):
z=z*z+c,
|z| <=10
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-807{;Modified SJMAND01
z=1/(real(pixel-0.124)+flip(imag(pixel-0.224)*1.224)),
c=1/(2.224+1.224*real(pixel)+flip(abs(pixel))):
z=(fn1(z))*z+c,
|z| <=10
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-808{;Modified SJMAND01
z=1/(real(pixel-0.124)+flip(imag(pixel-0.224)*1.224)),
c=1/(2.224+1.224*real(pixel)+flip(abs(pixel))):
z=(fn1(z))*z+c*2.324,
|z| <=10
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-809{;Modified SJMAND01
z=1/(real(pixel-0.124)+flip(imag(pixel-0.224)*1.524)),
c=1/(0.024+1.224*real(pixel+0.424)+flip(imag(pixel+0.524))):
z=(fn1(z))*z+c,
|z| <=10
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-81 {
c=z=(1/pixel):
z=(sin(z*z)) + ((sin(c+8.9))/pixel);
z=(sin(z*z)) + c,
|Z| <=4
  ;SOURCE: carr-3.frm
   ;SOURCE: to-bob-6.frm
}


Carr-810{;Modified SJMAND01
z=1/(real(pixel-0.124)+flip(abs(pixel-0.224)*1.524)),
c=1/(2.024+1.224*real(pixel+0.424)+flip(imag(pixel+0.524))):
z=(fn1(z))*(z+0.224)+(c+0.0002),
|z| <=10
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-811{;Modified SJMAND01
z=1/(real(pixel-1.124)+flip(abs(pixel-0.224)*2.524)),
c=1/(2.024+1.224*real(pixel+1.024)+flip(imag(pixel+1.024))):
z=(fn1(z))*(z+0.224)+(c+0.0002),
|z| <=10
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-812{;Modified SJMAND01
z=1/(2.224*real(pixel)+flip(imag(pixel))),
c=1/(2.024+1.224*real(pixel+1.024)+flip(imag(pixel+1.024))):
z=(fn1(z))*(z+0.224)+(c+0.0002),
|z| <=10
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-813{;Modified SJMAND01
z=1/(2.224*(pixel+2.324)+flip(abs(pixel+2.724))),
c=1/(2.324+1.224*real(pixel+1.024)+flip(imag(pixel+1.024))):
z=(fn1(z))*(z+0.224)+(c+0.0002),
|z| <=10
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-816{;Modified SJMAND01
z=flip(1/(1.899*imag(pixel)+flip(real(pixel)*1.024))),
c=tanh(1/(1.788+imag(pixel)+flip(real(pixel)*2.524))):
z=fn1(z)*z+(flip(conj(-c+0.1))),
|z| <=10
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-817{;Modified SJMAND01
z=flip(1/(1.899*imag(pixel)+flip(real(pixel)*1.724))),
c=conj(1/(2.788+imag(pixel)+flip(real(pixel)*2.524))):
z=(sinh(z*z+0.2)+c+c)^2.524,
|z| <=10
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-818{;Modified SJMAND01
z=flip(1/(1.899*imag(pixel)+flip(real(pixel)*1.724))),
c=conj(1/(2.788+imag(pixel)+flip(real(pixel)*2.524))):
z=abs(z*z+c);
z=real(z*z+c),
|z| <=10
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-819{;Hybrid FGZ-SJMAND01
z=1/(real(pixel)+flip(imag(pixel)*1.224)),
c=1/(2.224+1.224*real(pixel)+flip(imag(pixel))):
z=(3*z*z)/(z+3)+c,
|real(z)|<=10
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-82 {
z=c=1/pixel:
z=sin(z*z) + (conj(1/pixel)),
|z| <=4
  ;SOURCE: carr-3.frm
   ;SOURCE: to-bob-6.frm
}


Carr-820{;Modified SJMAND01
z=1/(real(pixel)+flip(imag(pixel)*1.224)),
c=1/(2.224+1.224*real(pixel)+flip(imag(pixel))):
z=z*z*z/5+z*z+c,
|real(z)| <=10
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-821{;Modified SJMAND01
z=1/(real(pixel)+flip(imag(pixel)*1.224)),
c=1/(0.224+1.224*real(pixel)+flip(imag(pixel))):
z=z*z*z/5+z*z+real(c+0.1),
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-822{;Modified SJMAND01
z=1/(real(pixel)+flip(imag(pixel)*1.224)),
c=1/(0.224+1.224*real(pixel)+flip(imag(pixel))):
z=z*z*z/5+z*z+real(c-0.1),
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-823{;Modified SJMAND01
z=conj(1/(real(pixel)+flip(imag(pixel)*1.224))),
c=conj(1/(0.224+1.224*real(pixel)+flip(imag(pixel^1.124)))):
z=(z*z+c+1/pixel)/2,
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-824{;Modified SJMAND01
z=conj(1/(real(pixel)+flip(imag(pixel)*2.224))),
c=conj(1/(2.224+1.224*real(pixel)+flip(imag(pixel^3.124)))):
z=(z*z+z+c+1/pixel)/3,
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-825{;Modified SJMAND01
z=cosxx(1/(real(pixel)+flip(imag(pixel)*1.724))),
c=conj(1/(1.524+1.224*real(pixel)+flip(imag(pixel*1/pixel)))):
z=((z*z+z+c)/pixel)/3,
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-826{;Modified SJMAND01
z=1/(real(pixel)+1.224*flip(imag(pixel)*1.724)),
c=conj(1/(1.524+1.224*real(pixel)+flip(imag(pixel)))):
z=real(pixel-z*z)/abs(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-827{;Modified SJMAND01
z=1/(real(pixel)+1.224*flip(imag(pixel)*1.724)),
c=conj(1/(1.524+1.224*real(pixel)+flip(imag(pixel)))):
z=real(pixel-z*z)/conj(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-828{;Modified SJMAND01
z=1/(real(pixel)+1.224*flip(imag(pixel)*1.724)),
c=conj(1/(1.524+1.224*real(pixel)+flip(imag(pixel)))):
z=((-pixel+z*flip(z))/flip(flip(pixel+(-c)*c))),
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-829{;Modified SJMAND01
z=(real(pixel))+1.224*(flip(imag(pixel))),
c=2.224+1.224*(real(pixel))+flip(imag(pixel)):
z=z*z+c;
z=abs(z*z+c),
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-83 {
z=c=1/pixel:
z=sin(z*z) + (conj(1/pixel))/(0.33/c),
|z| <=4
  ;SOURCE: carr-3.frm
   ;SOURCE: to-bob-6.frm
}


Carr-830{;Modified SJMAND01
z=(real(pixel))+1.224*(flip(imag(pixel))),
c=2.224+1.224*(real(pixel))+flip(imag(pixel)):
z=1/pixel*z+1/pixel*(c-1)+1/pixel*1/pixel,
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-831{;Modified SJMAND01
z=1/((real(pixel))+(flip(imag(pixel)))),
c=1/((imag(pixel))+(flip(real(pixel)))):
z=conj(z*z)+conj(c),
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-832{;Modified SJMAND01
z=1/((real(pixel))+(flip(imag(pixel)))),
c=1/((imag(pixel))+(flip(real(pixel)))):
z=conj(z*z)+flip(conj(c)*c),
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-833{;Modified SJMAND01
z=1/((real(pixel))+(flip(imag(pixel)))),
c=1/((imag(pizel))+(flip(real(pixel)))):
z=conj(z*z+0.3)+flip(conj(c*c)*c),
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-834{;Modified SJMAND01
z=1/((real(pixel))+(flip(imag(pixel)))),
c=1/((imag(pixel))+(flip(real(pixel)))):
z=flip(conj(z*z+0.1))+flip(conj(c*c)),
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-835{;Modified SJMAND01
z=1/((real(pixel))+(flip(imag(pixel)))),
c=1/((imag(pixel))+(flip(real(pixel)))):
z=(flip(conj(z*z-0.3))+flip(conj(c*c)))/1.7,
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-836{;SJMAND01 Modified
z=1/((real(pixel))+(flip(imag(pixel)))),
c=1/((imag(pixel))+(flip(real(pixel)))):
z=(flip(conj(z*z-0.3))+flip(conj(c/pixel*c/pixel)))/1.15,
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-837{;SJMAND01 Modified
z=1/((imag(pixel))+(flip(real(pixel)))),
c=1/((real(pixel))+(flip(imag(pixel)))):
z=conj(conj(1.124)*(z*z+c)+conj(sqr(c*(1/pixel)))),
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-838{;SJMAND01 Modified
z=1/((imag(pixel))+(flip(real(pixel)))),
c=1/((real(pixel))+(flip(imag(pixel)))):
z=tanh(z*z+conj(c/(1/pixel))),
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-839{;SJMAND01 Modified
z=1/((imag(pixel))+(flip(real(pixel)))),
c=1/((real(pixel))+(flip(imag(pixel)))):
z=z*c*c+conj(1/pixel),
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-84 {
z=c=1/pixel:
z=sin(z*z) + ((tanh(1/pixel))/(0.33/c)),
|z| <=4
  ;SOURCE: carr-3.frm
   ;SOURCE: to-bob-6.frm
}


Carr-840{;SJMAND01 Modified
z=1/((imag(pixel))+(flip(real(pixel)))),
c=1/((real(pixel))+(flip(imag(pixel)))):
z=z*z+conj(tanh(c)),
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-841{;SJMAND01 Modified
z=1/((imag(pixel))+(flip(real(pixel)))),
c=1/((real(pixel))+(flip(imag(pixel)))):
z=tanh(z*z)+conj((c-0.224)*(c/(1/pixel)))/conj(5.8,2.01),
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-842{;SJMAND01 Modified
z=1/((imag(pixel))+(flip(real(pixel)))),
c=1/((real(pixel))+(flip(imag(pixel)))):
z=(conj(1.124)*((z-2.2)*z+c)+real(c*(1/pixel-0.5)))/2.72,
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-843{;SJMAND01 Modified
z=1/((imag(pixel))+(flip(real(pixel)))),
c=1/((real(pixel))+(flip(imag(pixel)))):
z=(conj(3.124)*((z-1.7)*z+c)+real(c*(1/pixel-0.124)))/5,
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-844{;SJMAND01 Modified
z=1/((imag(pixel))+(flip(real(pixel)))),
c=1/((real(pixel))+(flip(imag(pixel)))):
z=(conj(3.424)*((z-1.7)*z+c)+real(c*(1/pixel-0.324)))/6.3,
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-845{;SJMAND01 Modified
z=1/((imag(pixel))+(flip(real(pixel)))),
c=1/((real(pixel))+(flip(imag(pixel)))):
z=(conj(3.124)*((z-1.85)*z+c)+real(-c*(1/pixel-0.724)))/6.3,
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-846{
z=(1/pixel)/1.75,c=((1/pixel)/2)/(z-2.5)^tanh(pixel-1):
z=(conj(z*z)+c)/4,
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-847{
z=(1/pixel)/1.75,c=((1/pixel)/2)/(z-2.5)^conj(tanh(pixel-1)):
z=(conj(z*z)+c)/4,
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-848{
z=(1/pixel)/1.85,
c=((1/pixel-0.224)/2)/conj(z-1.5)^conj(cotanh(pixel-0.5)):
z=(conj(z*z)+c)/4,
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-849{
z=(1/pixel)/1.85,
c=((1/pixel-0.524)/4)/conj(z-1.1)*z^conj(cotanh(pixel-0.2)):
z=(conj(z*z)+c)/4
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-85 {
z=c=1/pixel:
z=sqr(z) + c;
z=sqr(z) + conj(c),
|z| <=4
  ;SOURCE: carr-3.frm
   ;SOURCE: to-bob-6.frm
}


Carr-850{
z=(1/pixel)/1.95,
c=((1/pixel-0.524)/4)/conj(z-1.1)*z*z^conj(cotanh(pixel-0.2)):
z=(conj(z*z)+flip(c))/4,
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-851{
z=(1/pixel)/1.95,
c=((1/pixel-0.524)/4)/conj(z-1.1)*z*z^conj(cotanh(pixel-0.2)):
z=(conj(z*z*z)+flip(c))/4,
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-852{
z=conj(sinh((1/pixel)/1.95)),
c=((1/pixel-1.524)/4)/conj(z-2.1)*z*z^tanh(conj(cotanh(pixel-2.2))):
z=(conj(z*z)+flip(conj(c*c)))/4,
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-853{
z=(1/pixel)/1.75,
c=((1/pixel)/2)/z-2.5^tanh(pixel-1):
z=1/z*z*z+conj(2*c+1/pixel),
|real(z)|
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-854{
z=conj((1/pixel)/2.75),
c=((1/pixel)/2)/z-2.5^cotanh(pixel-1):
z=1/z*z*z+(2*c+conj(1/pixel)),
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-855{
z=conj((1/pixel)/1.91),
c=((1/pixel)/2)/z-2.5^cotanh(pixel-1.124):
z=(1/z*z*(z-2.7)+(2.3*c+conj(1/pixel)))/1.2,
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-856{
z=(1/pixel)/1.91,
c=((1/pixel)/2)/z-2.5^cotanh(pixel-1.124):
z=(conj(pixel-z*z)/(pixel-c*c))/1.35,
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-857{
z=1/(pixel*pixel),c=imag(1/pixel*0.91/pixel):
z=(1/z*z*z+z)/pixel-c*c,
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-858{
z=1/(pixel*pixel),c=imag(1/pixel*0.91/pixel):
z=(1/z*z*z+z)/pixel-(c-0.124*c-0.224),
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-859{
z=1/(pixel*pixel),c=imag(1/pixel*0.91/pixel):
z=(1/z*z*z+z)/pixel-(c-1.724*c-1.224),
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-86 {
z=c=pixel:
z=sqr(z) + c;
z=sqr(z) + conj(c),
|z| <=4
  ;SOURCE: carr-2.frm
   ;SOURCE: to-bob-6.frm
}


Carr-860{
z=1/(pixel*pixel),c=imag(1/pixel*0.91/pixel):
z=(1/z*z*z+2*z+1/pixel)/pixel-(c-0.954*c-0.424),
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-861{
z=1/(pixel*pixel*pixel),c=imag(1/pixel*0.91/pixel):
z=((1/z*z*z+2*z+1/pixel)/conj(pixel-(c-0.954*c-0.424*c)))/2.3,
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-862{
z=1/(pixel*pixel*pixel),c=imag(1/pixel*1.91/pixel):
z=((1/z*z*z+2*z+1/pixel)/conj(pixel-(c-0.954*c-0.424*c)))/2.3,
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-863{
z=1/(pixel*pixel*1/pixel),c=imag(1/pixel*0.5/pixel):
z=((1/z*z*z+z)/conj(pixel+(c-0.954*c-0.424*c)))/2.3,
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-864{
z=1/(pixel*pixel*1/pixel),c=imag(1.7/pixel*2.5/pixel):
z=(1/z*z*z+z+1/pixel)/(pixel+cotanh(c*c)),
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-865{
z=1/(pixel*pixel*1/pixel),c=imag(2.7/pixel*3.5/pixel):
z=(1/z*z*z+z+1/pixel)/(pixel+cotanh((c*c+pixel)/1.4)),
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-866{
z=1/((imag(pixel))+(flip(real(pixel)))),
c=1/((real(pixel))+(flip(imag(pixel)))):
z=z*(2.7,-1.4)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-867{
z=1/((imag(pixel))+(flip(real(pixel)))),
c=1/((real(pixel))+(flip(imag(pixel)))):
z=(z*z)*(-2.7,1.8)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-868{
z=1/((imag(pixel))+(flip(real(pixel)))),
c=1/((real(pixel))+(flip(imag(pixel)))):
z=(1/z*z*z)*(-2.7,1.8)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-869{
z=1/((imag(pixel))+(flip(real(pixel)))),
c=1/((real(pixel))+(flip(imag(pixel)))):
z=conj(flip(0.324+(1/z*z*z)*(2.7,1.8)))/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-87 {
z=c=1/pixel:
z=sqr(z) + c;
z=sin(z) + c;
z=sqr(z) + conj(c),
|z| <=4
  ;SOURCE: carr-3.frm
   ;SOURCE: to-bob-6.frm
}


Carr-870{
z=pixel*conj(5/pixel),
c=pixel*sqr(-2.6,4.2)+fn1(flip(1/pixel)):
z=(pixel-z*z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-871{
z=1/(pixel*conj(5/pixel+0.724)),
c=1/(imag((pixel-1.524)*sqr(1/pixel)+fn3(conj(1/pixel-0.524)))):
z=(pixel-z*z)/(pixel-c*c-0.124),
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-872{
z=1/(pixel*conj(5/pixel+0.724)),
c=1/(fn2((pixel-1.524)*sqr(1/pixel)+fn3(conj(1/pixel-0.524)))):
z=(pixel-z*z)/(pixel-c*c-0.124),
|real(z)| <=100
  ;SOURCE: 20carr.frm
  ;SOURCE: 20carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-873{
z=1/(pixel*conj(5/pixel+0.724)),
c=1/(fn4((pixel-1.524)*sqr(1/pixel)+fn2(conj(1/pixel-0.524)))):
z=(pixel+z*z)/(pixel-c*c-0.324),
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-874{
z=1/(pixel*conj(conj(5/pixel+0.724))),
c=1/(fn4((conj(pixel-1.524))*sqr(1/pixel)+fn2(conj(1/pixel-0.524)))):
z=flip((pixel+z*z)/(pixel-c*c-0.324)),
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-875{
z=1/(pixel*conj(conj(5/pixel+0.724))),
c=1/(fn4((conj(pixel-1.524))*sqr(1/pixel)/fn2(conj(1/pixel-0.524)))):
z=flip((pixel+z*z)/(pixel-c*c-0.324)),
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-876{
z=1/(pixel*conj(conj(2/pixel+0.724))),
c=1/(fn2((conj(pixel-1.524))*sqr(1/pixel)/fn2(conj(1/pixel-0.524)))):
z=flip(pixel+z*z)/(pixel-c*c-0.324),
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-877{
z=1/(pixel*conj(conj(2/pixel+0.794))),
c=1/(fn2((conj(pixel-1.784))*sqr(1/pixel-0.024)/fn2(conj(1/pixel-0.824)))):
z=conj(flip(pixel+z*z-0.025)/(pixel-c*c-0.494)),
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-878{
z=(1/pixel)/1.91,c=((1/pixel)/2)/z-2.5^cotanh(pixel-1.124):
z=(conj(pixel+z*z)/(pixel-c*c))/1.55,
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-879{
z=1/(pixel*pixel),
c=((1/pixel)/2)/z-2.5^cotanh(pixel-1.124):
z=(1/z*z*z+z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-88 {
z=c=1/pixel:
z=sqr(z) + sqr(c);
z=sin(z*z) + sqr(c);
z=sqr(z) + sqr(c),
|z| <=4
  ;SOURCE: carr-3.frm
   ;SOURCE: to-bob-6.frm
}


Carr-880{
z=real((1/pixel)/1.91)/(5.7,-1.3),
c=(1/pixel*0.91/pixel):
z=(pixel+z*z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-881{
z=((1/pixel)/0.91)/(2.7,-1.3),
c=(1/pixel*0.91/pixel):
z=(1/z*z*z+z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-882{
z=((1/pixel)/0.71)/(2.7,-1.3),
c=(1/pixel*0.51/pixel):
z=(1/z*z*z+z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-883{
z=((1/pixel)/0.71)/(2.7,-1.3),
c=(1/pixel*0.51/pixel):
z=(z^1/z+2*z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-884{
z=((1/pixel)/0.71)/(4.7,-0.3),
c=(1/pixel*0.51/pixel):
z=(z^(1/z*1/z)+3*z)/(pixel-conj(c*c)),
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-885{
z=((1/pixel)/0.71)/(4.7,-0.1),
c=(1/pixel*0.51/pixel):
z=(1/z*1/pixel*z*z+z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-886{
z=((1/pixel)/0.71)/(4.7,-0.1),
c=(1/pixel*0.51/pixel):
z=(1/z*1/pixel*z*z+z)/((pixel-1)-(c*c)),
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-887{
z=((1/pixel)/0.71)/(1/pixel),
c=((1/pixel)/2)/z-2.5^cotanh(pixel-1.124):
z=((1/z^1/pixel*z*z+z)/((pixel-1)-(c*c)))/1.7,
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-888{
z=((1/pixel)/0.71)/(0.85/pixel+1.124),
c=((1/pixel)/2)/z-2.8^cotanh(pixel-1.124)/(1/pixel):
z=((1/z^1/pixel*z*z)/((pixel-1)-(c*c)))/1.7,
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-889{
z=((1/pixel)/0.71)/(0.85/pixel+1.324),
c=((1/pixel)/2)/z-2.5^fn4(pixel-1.324)/(1/pixel):
z=((1/z^1/pixel*z*z)/((pixel-1)-(c*c)))/1.6,
|real(z)| <=100
  ;SOURCE: jo_we_03.frm
}


Carr-89 {
z=c=pixel:
z=sqr(z) + sqr(c);
z=sin(z*z) + sqr(c);
z=sqr(z) + sqr(c),
|z| <=4
  ;SOURCE: carr-2.frm
   ;SOURCE: to-bob-6.frm
}


Carr-890{;May not be mathmatically correct but...
z=(1/1/pixel^pixel*pixel),
c=1/conj(1/pixel^pixel+pixel):
z=(1/z*z*z)/(c*c),
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-891{
z=1/(1/pixel*pixel)/(3.7,-1.2),
c=cotanh(1/pixel^pixel+pixel):
z=(1/z*z*z+abs(1/pixel))/(1/pixel-(c*c+1/pixel)),
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-892{
z=(1/pixel*pixel)/cosh(1/pixel),
c=(1/pixel*pixel+pixel)/tanh(pixel+2):
z=flip((1/z*z*z+(1/pixel))/(pixel-c*c)),
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-893{
z=sqr(sqr(sqr(1/pixel-0.006))),
c=((1/pixel)/2)/z^2.5^cotanh(pixel-1.124):
z=(1/z*z*z+(1/pixel))/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-894{
z=sqr(sqr(sqr(1/pixel-0.006)))/conj(1/pixel),
c=(imag(1/pixel)/2)/real(z)-2.5^cotanh(pixel-1.124):
z=1/(pixel-z*z/(pixel*real(1/pixel)))/(pixel-c*c*pixel),
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-895{
z=cotanh(1/pixel),c=2+cotanh(1/pixel):
z=conj(2.124)*(z*z+c)+real(c*(1/pixel-0.5)),
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-896{
z=cotanh(1/pixel),c=2+cotanh(1/pixel*0.87/pixel):
z=(2.124)*(z*z+c)/real(c*(1/pixel-0.5)),
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-897{
z=1/(conj(pixel)),c=3.58+sqr(cotanh(1/pixel)):
z=((1/z*z*z+z)/(pixel-c*c))/1.68,
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-898{
z=1/(pixel*pixel),c=1/(sqr(sqr(sqr(pixel)))):
z=conj(pixel-z*z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-899{
z=cotanh(pixel+1)/real(1/pixel),
c=sqr(sqr(sqr(pixel))):
z=(z+pixel)/(c-pixel),
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-90 {
z=c=1/pixel:
z=sqr(z) + sqr(c-5);
z=sin(z*z) + sqr(c-2);
z=sqr(z) + sqr(c-0.67),
|z| <=4
  ;SOURCE: carr-3.frm
   ;SOURCE: to-bob-6.frm
}


Carr-900{
z=cotanh(pixel+1)/imag(1/pixel-0.334),
c=sqr(sqr(sqr(pixel*1/pixel))):
z=(z^real(2.124)+c)/1.7,
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-901{
z=cotanh(pixel+1)/imag(1/pixel-0.334),
c=sqr(sqr(sqr(pixel*1/pixel))):
z=tanh(z^real(2.524)+c)/1.7,
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-902{
z=sinh(pixel+1)/imag(1/pixel-0.334),
c=sqr(sqr(sqr(pixel*1/pixel))):
z=cotanh(z^exp(2.424)+c)/1.7,
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-903{
z=1/(pixel*pixel),
c=imag(1/pixel*0.91/pixel):
z=(sqr(conj(z))*conj(z)+conj(2.124))/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-904{
z=((1-pixel)/3)^0.5,c=(1-1/pixel)^0.5:
z=z*z+c,
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-905{;Modified Richard frm
z=1/pixel,c=pixel-sqr(z):
c=pixel +c/z;
z=c-z*pixel,
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-906{
z=1/pixel,c=conj(pixel-sqr(z)):
z=c-z*pixel,
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-907{
z=exp(1/pixel),c=conj(pixel-sqr(z)):
z=(c-z*pixel)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-908{
z=cotanh(exp(1/pixel)),
c=conj(pixel-sqr(z)):
z=c+z*pixel-1,
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-909{
z=conj(exp(1/pixel)),
c=conj(pixel-sqr(z)):
z=z*z+c;
z=z*1/c,
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-91 {
z=c=1/pixel:
z=sqr(z) + sqr(c-6);
z=sin(z*z) + sqr(c-3);
z=sqr(z) + sqr(c-2),
|z| <=4
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-910{
z=(1/pixel)/1.91,c=((1/pixel)/2)/z-2.5^tanh(pixel-1.124):
z=c-z*pixel;
z=z*1/c,
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-911{
z=1/(pixel*pixel),
c=imag(1/pixel*0.91/pixel):
z=c-z*pixel;
z=c^2+pixel+z,
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-912{
z=1/(pixel*pixel),
c=imag(1/pixel*0.91/pixel):
z=((1/(sin(z*z+pixel*pixel)))/(pixel-c*c))/1.7,
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-913{
z=1/(pixel*pixel),
c=imag(1/pixel*0.91/pixel):
z=((1/(fn2(z*z+pixel*pixel)))/(pixel-c*c))/1.7,
|real(z)| <=100
  ;SOURCE: jo_we_03.frm
}


Carr-914{
z=1/pixel+2.524,
c=((1*(|1.324|<=0)+1.324)*cotanh(pixel)):
z=c-z*pixel;
z=z*1/c,
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-915{
z=1/pixel+0.91/pixel,
c=((2.124*(|3.324|<=0)+1.324)*cotanh(pixel)):
z=c-z*pixel+1;
z=z*1/c,
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-916{
z=1/pixel,c=((2.124*(|3.124|<=0)+pixel)*cotanh(pixel)):
z=(pixel-z*z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-917{
z=1/(pixel*pixel),
c=flip(pixel+fn3(4/z-z/5+125)):
z=(pixel-z*z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: jo_we_03.frm
}


Carr-918{
z=1/(pixel*pixel),
c=conj(pixel+(4/z^z*z+250)):
z=z*1/c,
|real(z)| <=100
  ;SOURCE: 21carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-919{
z=1/(pixel*pixel),
c=abs(pixel*pixel+(4/z^z*z+250)):
z=(1/z^z*1/c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-92 {
z=c=1/pixel:
z=sqr(z) + sqr(c);
z=sqr(z) + sin(c);
z=sqr(z) + sin(c),
|z| <=4
  ;SOURCE: carr-3.frm
   ;SOURCE: to-bob-6.frm
}


Carr-920{
z=1/(pixel*pixel),
c=imag(pixel*pixel+(4/z^z*z+250)):
z=(pixel-z*z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-921{
z=1/(pixel*pixel),
c=imag(pixel*pixel+(4/z^z*z+250)):
z=z*z+c;
z=z*1/c,
|real(z)| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-922{
z=1/(pixel*pixel),
c=imag(pixel*pixel+(4/z^z*z+250)):
z=pixel;
z=conj(z*z*z+c);
z=z*z*1/c,
|real(z)| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-923{
z=imag(1/(pixel*pixel)),
c=imag(pixel*1/pixel+(4/z^z*z+1/pixel)):
z=((z*1/c)/(pixel-c*c))/0.8,
|real(z)| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-924{
z=1/pixel,c=pixel:
z=z*z+c;
z=z*1/c,
|real(z)| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-925{
z=1/pixel,c=pixel:
z=((imag(z)/c)+(z*1/c))/(pixel-c*c),
|z-1/pixel| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-926{
z=4/pixel,c=pixel+4:
z=((imag(z)/c)+(z*1/c))/(pixel-c*c),
|z-1/pixel| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-927{
z=conj(4/pixel),c=pixel+4:
z=((imag(z)/c)+(z*1/c))/(pixel-c*c),
|z-1/pixel| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-928{
z=conj(6/pixel),c=cosh(pixel+8):
z=(((imag(z)/c)+(z*1/c))/(pixel-c*c))/0.6,
|z-1/pixel| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-929{
z=conj(6/pixel),c=cotanh(pixel+8):
z=(((imag(z+2)/c)+((2.4*z)*1/c))/(pixel-c*c))/0.6,
|z-1/pixel| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-93 {
z=c=1/pixel:
z=sqr(z) + sqr(c*c);
z=sqr(z) + sin(c);
z=sqr(z) + sin(c*c),
|z| <=4
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-930{
z=conj(4/pixel),c=cotanh(pixel-4):
z=(((imag(z+2)/c)+((2.4*z)*4/c))/(pixel-c*c+1/pixel))/1.6,
|z-1/pixel| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-931{
z=conj(4/pixel*0.91/pixel),
c=pixel-4:
z=(((imag(z+2)/c*c)+((2.4*z)*4/c*c))/(pixel-c*c+1/pixel))/2.6,
|z-1/pixel| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-932{
z=conj(4/pixel*0.91/pixel),
c=pixel-4:
z=(((imag(z+2)/c*c)+((2.4*z)*4/c*c))/flip(1.5*conj(pixel-c*c+4/pixel)))/2.6,
|z-1/pixel| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-933{
z=conj(4/pixel*1.91/pixel),
c=4/(pixel*pixel-4):
z=(((imag(z+2)/c*c)+((2.4*z)*4/c*c))/flip(1.5*conj(pixel-c*c+4/pixel)))/2.6,
|z-1/pixel| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-934{
z=1/pixel,c=pixel:
z=(z^(cotanh(z^.5))+pixel)/(pixel-c*c),
|z-1/pixel| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-935{
z=imag(1/pixel),
c=1/(real(pixel)+flip(imag(pixel)*(-3.224))):
z=(pixel-1/z^z*z)/(pixel-c*c),
|z-1/pixel| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-936{
z=imag(1/pixel*0.91/pixel),
c=1/(2.924*real(pixel)+flip(imag(pixel)*3.224)):
z=(z*1/c)/(pixel-c*c),
|z-pixel| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-937{
z=imag(1/pixel),
c=1/(2.924*real(pixel)+flip(imag(pixel)*3.224)):
z=(1/fn1(z)+z)/(pixel-c*c),
|z-fn1(pixel)| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-938{
z=imag(1/pixel),
c=1/(2.924*real(pixel)+flip(imag(pixel)*3.224)):
z=(4/fn1(z)+pixel)/(pixel-c*c),
|z-fn1(pixel)| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-939{
z=1/pixel,c=pixel:
z=imag(z+fn1(z*1/pixel))/c/pixel,
|z-pixel| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-94 {
z=c=1/pixel:
z=sqr(z*z) + sqr(c*c);
z=sqr(z) + sin(c);
z=sqr(z*z) + sin(c*c),
|z| <=4
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-940{
z=1/pixel,c=fn2(pixel)/fn3(pixel):
z=(z*1/c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-941{
z=abs(1/pixel),c=fn2(pixel)/fn3(pixel):
z=(z*1/(c+2))/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-942{
z=abs(1/pixel),c=fn2(pixel)/fn3(pixel):
z=(z*1/(c-1.753))/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-943{
z=abs(1/pixel),c=fn2(pixel)/fn3(pixel):
z=(z*3/fn4(c*c-1.8))/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-944{
z=abs(1/pixel),c=fn2(pixel)/fn4(pixel):
z=((z*3/fn4(c*c-0.8))/(pixel-c*c))/3.4,
|real(z)| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-945{
z=abs(1/pixel*0.91/pixel),
c=fn2(pixel)/fn4(pixel):
z=(z*3/log(c*c-0.8))/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-946{
z=abs(1/pixel*4/pixel),
c=3/fn2(pixel)/(4/fn4(pixel)):
z=((z*3/log(c*c-1.8))/(pixel-c*c)),
|real(z)| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-947{
z=abs(1/pixel*4/pixel),
c=3/fn2(pixel)/(4/fn4(pixel)):
z=((z*3/cotanh(c*c-1.8))/(pixel-c*c)),
|real(z)| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-948{
z=abs(1/pixel*4/pixel),
c=3/fn2(pixel)/(4/fn4(pixel)):
z=((z*pixel-(c*c))/(pixel-c*c))/2.8,
|real(z)| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-949{
z=abs(1/pixel*4/pixel),
c=3/fn2(pixel)/(4/fn4(pixel)):
z=((imag(z*pixel)-(c*c))/(pixel-c*c))/2.8,
|real(z)| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-95 {
z=c=pixel:
z=sqr(z*z) + sqr(c*c);
z=sqr(z) + sin(c);
z=sqr(z*z) + sin(c*c),
|z| <=4
  ;SOURCE: carr-2.frm
   ;SOURCE: to-bob-6.frm
}


Carr-950{
z=abs(1/pixel*4/pixel),
c=3/fn2(pixel)/(4/fn4(pixel)):
z=((z*pixel)/(4/fn4(c*pixel)))/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-951{
z=abs(1/pixel*4/pixel),
c=3/fn2(pixel)/(4/fn4(pixel)):
z=(cotanh(z*pixel)/tanh(4/fn4(c*pixel)))/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-952{
z=abs(1/pixel*4/pixel),
c=3/fn2(pixel)/(4/fn4(pixel)):
z=(z*c+pixel)/(pixel),
|real(z)| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-953{
z=abs(1/pixel*4/pixel),
c=3/fn2(pixel)/(4/fn4(pixel)):
z=(z*(1/c^c)+pixel)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-954{
z=sqr(1/pixel*4/pixel),
c=3/fn2(pixel)/(4/fn4(pixel)):
z=(cotanh(z)*tanh(z)+fn3(fn4(c)))/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-955{
z=abs(1/pixel*4/pixel),
c=3/fn2(pixel)/(4/fn4(pixel)):
z=((pixel-z*z*4/z)/(pixel-c*c))/2.8,
|real(z)| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-956{
z=abs(1/pixel*4/pixel),
c=3/fn2(pixel)/(4/fn4(pixel)):
z=(conj(pixel-z*z*4/z)/(pixel-c*c))/1.7,
|real(z)| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-957{
z=abs(1/pixel*4/pixel),
c=3/fn2(pixel)/(4/fn4(pixel)):
z=((z/1/c/2.224)/(pixel-c*c))/1.4,
|real(z)| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-958{;Modified Julia
z=1/(pixel*pixel),
c=((0.3224,0.69)*(|-2.224|<0)+(-2.224)),
t=(4*(real(0.624)<=0)+real(0.624)*(0<0.624)):
z=(z*z*1/c)/(pixel-c*c),
|z| <=t
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-959{
z=1/(pixel*pixel),
c=(0.3224,-0.69)/pixel:
z=((z*1/c)/(pixel-c*c))/1.4,
|real(z)| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-96 {
z=c=pixel:
z=sqr(z*z) + sqr(c*c);
z=sqr(z) + sin(c^pixel);
z=sqr(z*z) + sin(c*c),
|z| <=4
  ;SOURCE: carr-2.frm
   ;SOURCE: to-bob-6.frm
}


Carr-960{
z=1/(pixel*pixel),
c=imag(0.3224,-0.69)/pixel:
z=((z*1/c)/(pixel-c*c))/1.39,
|real(z)| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-961{
z=1/(pixel*pixel),
c=imag(0.6,0.55)/pixel:
z=((z*1/c)/(pixel-c*c))/1.85,
|real(z)| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-962{
z=1/(pixel*pixel),
c=cosxx(0.6,0.55)/pixel:
z=((z*1/c)/(pixel-c*c)),
|real(z)| <=100
  ;SOURCE: 22carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-963{
z=1/(pixel*pixel),
c=cosxx(1.099,0)/pixel:
z=(z*1/c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-964{
z=1/(pixel*pixel),
c=(1.099,0)/pixel:
z=(z*1/c)/cotanh(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-965{
z=1/(pixel*pixel),
c=(1.099,0)/pixel:
z=(z*1/c)/sinh(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-966{
z=1/(pixel*pixel),
c=(1.099,0.01)/pixel:
z=(2^z*1/c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-967{
z=1/(pixel*pixel),
c=(1.099,0.01)/real(pixel):
z=(z/c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-968{
z=imag(1/(pixel*pixel*pixel)),
c=(1.099,0)/(1/abs(pixel*pixel+2)):
z=(z*1/c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-969{
z=imag(1/(pixel*pixel*pixel)),
c=(4.299,-1.2)/(1/abs(pixel*pixel+2)):
z=(z*1/c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-97 {
z=c=1/pixel:
z=sqr(z*z) + sqr(c*c);
z=sqr(z*z) + sin(c^pixel);
z=sqr(z*z) + sin(c*c),
|z| <=4
  ;SOURCE: carr-2.frm
  ;SOURCE: carr1499.frm
   ;SOURCE: to-bob-6.frm
}


Carr-970{
z=imag(1/(pixel*pixel*pixel)),
c=(4.299,-1.2)/(1/abs(pixel*pixel+2)):
z=(z*(1/c*1/c))/(pixel-c*c);
z=z*1/c,
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-971{
z=imag(1/((pixel+2)*pixel*pixel)),
c=(0.342,1.97)/(1/abs(pixel*pixel+2)):
z=(z*(1/c*1/c+4/pixel))/(pixel-c*c);
z=z*1/c,
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-972{
z=imag(1/((pixel+2)*pixel*pixel)),
c=(-0.742,-0.009)/(1/abs(pixel*pixel+2)):
z=(z*(1/c*1/c+4/pixel))/(pixel-c*c);
z=z*1/c

|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-973{
z=imag(1/((pixel+2)*pixel*pixel)),
c=(-5.742,-0.009)/(1/abs(pixel*pixel+2)):
z=(z*(1/c*1/c*1/c+4/pixel))/(pixel-c*c*1/c),
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-974{
z=imag(1/((pixel+2)*pixel*pixel)),
c=(-5.742,-0.009)/(1/abs(pixel*pixel+2)):
z=abs(z*(1/c*1/c*1/c+4/pixel))/(pixel-c*c*1/c),
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-975{
z=imag(1/((pixel+2)*pixel*pixel)),
c=(-1.7621,0.0141)/(1/abs(pixel*pixel+2)):
z=(abs(z*(1/c*1/c*1/c+4/pixel))/(pixel-c*c*1/c))/2.8,
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-976{
z=imag(1/((pixel+2)*pixel*pixel)),
c=(-1.7621,0.0141)/(1/abs(pixel*pixel+2)):
z=(abs(z*(4/c*4/c*4/c+4/pixel))/(pixel-c*c*4/c))/2.8,
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-977{
z=imag(1/((pixel+2)*pixel*pixel)),
c=(-0.1672,1.0413)/(1/abs(pixel*pixel+2)):
z=(abs(z*(1/c*1/c*1/c+4/pixel))/(pixel-c*c*4/c))/2.8,
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-978{
z=imag(1/((pixel+2)*pixel*pixel)),
c=(-0.1672,1.0413)/(1/abs(pixel*pixel+2)):
z=(abs(z*(1/c*4/c*4/c+4/pixel))/(pixel-c*c*4/c))/2.8,
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-979{
z=sqr(1/((pixel+2)*pixel*pixel)),
c=(-0.125,1.1187)/(1/abs(pixel*pixel+2)):
z=(z*1/c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-98 {
z=c=pixel:
z=sqr(z*z) + sqr(c*c);
z=sqr(z*z) + sin(c^pixel);
z=sqr(z*z) + sin(c*c),
|z| <=4
  ;SOURCE: carr-2.frm
   ;SOURCE: to-bob-6.frm
}


Carr-980{
z=sqr(1/((pixel+2)*pixel*(pixel+2))),
c=((1.099,-0.0099)/(0.342,1.97))^((sqrt5+1)/2):
z=((z*1/c*1/c*1/c)/(pixel-c*c))/2.8,
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-981{
z=sqr(1/((pixel+2)*pixel*(pixel+2))),
c=(1.099,-0.0099)/(pixel^pixel)/z:
z=1/(z*z+pixel*pixel)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-982{
z=sqr(1/((pixel+2)*pixel*(pixel+2))),
c=(0.342,1.97)^z:
z=((pixel-z*1/c)/(pixel-c*c))/2.8,
|real(z)|<=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-983{
z=1/pixel,
c=(-5.742,-0.009)+5.05:
z=(z*z*z+(2.734-1)*z-0.734)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-984{
z=1/pixel*4/pixel,
c=(-5.099,0.1)+5.05:
z=(z*(2.734-1)*z-0.734)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-985{
z=cotanh(1/pixel*4/pixel),
c=pixel:
z=((-0.7499,-0.014407)*(z*1/c))/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-986{
z=sqr(1/pixel*4/pixel),
c=pixel*pixel:
z=z*z*z/5+z*z+c,
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-987{
z=2.234*(real(pixel))+conj(imag(pixel)*0.734),
c=(4.299,-1.2)*sqr(conj(pixel)):
z=(z*1/c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-988{
z=2.234*(real(pixel))+conj(imag(pixel)*(1.099,0)),
c=(4.299,-1.2)*sqr(conj(pixel)):
z=(pixel-(1.099,0)*z)/(pixel-(1.099,0)*c),
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-989{
z=2.234*(real(pixel))+conj(imag(pixel)*(1.099,0)),
c=(4.299,-1.2)*sqr(conj(pixel)):
z=(pixel-(1.099,0)*(z*1/c))/(pixel-(1.099,0)*c*4/c),
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-99 {
z=c=pixel:
z=sqr(z*z) + sqr(c*c);
z=sqr(z*z) + sin(c^pixel);
z=sqr(z*z) + sin(c^pixel),
|z| <=4
  ;SOURCE: carr-2.frm
   ;SOURCE: to-bob-6.frm
}


Carr-990{
z=2.234*(real(pixel))+conj(imag(pixel)*(-5.742,-0.009)),
c=(-1.7621,-0.0141)*sqr(conj(pixel)):
z=(pixel-(1.0,0.4)*(z*1/c))/(pixel-(-1.099,0)*c*4/c),
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-991{
z=2.234*(real(pixel))+conj(imag(pixel)*(-5.742,-0.009)),
c=fn3(1/pixel)^(-1.7621,-0.0141)*sqr(conj(pixel)):
z=(pixel-(1.0,0.4)*(z*1/c))/(pixel-(-1.099,0)*c*4/c),
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-992{
z=((1/pixel)/0.71)/(0.85/pixel+1.324),
c=((1/pixel)/2)/z-2.5^fn4(pixel+1.324)/(4/pixel):
z=z*1/c,
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-993{
z=((1/pixel)/0.71)/(0.85/pixel+1.324),
c=((1/pixel)/2)/z-2.5^fn4(pixel+1.324)/(4/pixel);
z=((pixel-2)-z*1/c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-994{
z=((1/pixel)/0.71)/(0.85/pixel+1.324),
c=((1/pixel)/2)/z-2.5^fn4(pixel+1.324)/(0.5/pixel):
z=(1/z*z*z+z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-995{
z=((1/pixel)/0.71)/(0.85/pixel+2.324),
c=((1/pixel)/2)/z-2.5^fn4(pixel+2.324)/(0.5/pixel):
z=(1/z*z*z+z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-996{
z=((1/pixel)/0.71)/(0.85/pixel+2.324),
c=((1/pixel)/2)/z-2.5^fn3(pixel+2.324)/(0.5/pixel):
z=(1/z^z+c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-997{
z=((1/pixel)/0.71)/(0.85/pixel+2.324),
c=((1/pixel)/2)/z-2.5^(pixel+2.324)/(0.5/pixel):
z=(z*1/c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-998{
z=((1/pixel)/0.71)/(0.85/pixel+2.324),
c=((1/pixel)/2)/z-2.5^(pixel+2.324)/(0.5/pixel):
z=2*(z*1/c)/(pixel-c*c);
z=(z*1/c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-999{
z=((1/pixel)/0.71)/(0.85/pixel+2.324),
c=((1/pixel)/2)/z-2.5^(pixel+2.324)/(0.5/pixel):
z=(z*(cotanh(1/c))),
|real(z)| <=100
  ;SOURCE: 23carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr-Orman1{  ; Modified by Jack A. Orman
   z=1/pixel,c=fn1(z/pixel):
   z=z*z*z+fn2(c-p1),
   |z| <=10
  ;SOURCE: to-bob-6.frm
}


Carr-Orman2{; Modified by Jack A. Orman
   z=1/pixel,c=fn1(p2)/pixel:
   z=z^p1+fn2(c/pixel),
   |z| <=10
  ;SOURCE: to-bob-6.frm
}



Carr1000{
z=((1/pixel)/0.71)/(0.85/pixel+2.324),
c=((1/pixel)/2)/z-2.5^(pixel+2.324)/(0.5/pixel):
z=(z*1/sqr(cotanh(1/c))),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1001{
z=((1/pixel)/0.71)/(0.85/pixel+2.324),
c=((1/pixel)/2)/z-2.5^(pixel+2.324)/(0.5/pixel):
z=(z*1/fn4(cotanh(1/c))),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1002{
z=((1/pixel)/0.71)/(0.85/pixel+2.324),
c=((1/pixel)/2)/z-2.5^(pixel+2.324)/(0.5/pixel):
z=(z*sinh(1/(-c))),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1003{
z=((1/pixel)/0.71)/(0.85/pixel+2.324),
c=((1/pixel)/2)/z-2.5^(pixel+2.324)/(0.5/pixel):
z=(z*sinh(4/(-c))),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1004{
z=imag(1/(pixel*pixel)),
c=((1/pixel)/2)/z-2.5^(pixel+2.324)/(0.5/pixel):
z=z*z/c*c,
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1005{
z=(1/pixel^pixel+2.3),
c=conj(imag(pixel))/z-2.5^(pixel+2.324)/(5/pixel):
z=(z*1/c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1006{
z=(1/pixel^pixel+2.3),
c=(imag(1/(pixel*pixel)))/z-2.5^(pixel+2.324)/(5/pixel):
z=conj(z*1/c)/conj(pixel^pixel-c*c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1007{
z=sqr(sqr(sqr(1/pixel^pixel+2.3))),
c=(imag(1/(pixel*pixel)))/z-2.5^(pixel+2.324)/(5/pixel):
z=conj(z*1/c)/conj(pixel^pixel/c*c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1008{
z=(pixel*pixel+5.3)*(1.099,0),
c=z-2.5^(pixel*pixel)/(1.099,0):
z=z*1/c;
z=z*1/c;
z=(z*1/c)/(1.099,0),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1009{;Piece of Barnsley thrown in here.
z=1/(pixel*pixel),
c=((0.6,1.1)*(|3.324|<=0)+3.324):
z=z*z+1/c,
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1010{;Piece of Barnsley thrown in here.
z=1/(pixel*pixel+2),
c=((0.1,0.36)*(|3.324|<=0)+3.324):
z=z*z+1/c,
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1011{
z=1/((imag(pixel-2))+flip(real(pixel-2))),
c=((4.299,-1.2)*cotanh(|1.024|<=0)+(1.024)):
z=(pixel-z*z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1012{;SJMand variant
z=(real(pixel))+1.224*(flip(imag(pixel))),
c=2.224+(1.099,0)*(real(pixel))+flip(imag(pixel)):
z=fn2(z*1/c);
z=z*1/c,
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1013{;SJMand variant
z=(real(pixel))+1.224*(flip(imag(pixel))),
c=2.224+(1.224)*(real(pixel))+flip(imag(pixel)):
z=(1/pixel*(z*2.234))*1/c,
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1014{;SJMand variant
z=(real(pixel))+1.224*(flip(imag(pixel))),
c=2.224+(1.224)*(real(pixel))+flip(imag(pixel)):
z=((1/pixel*(z*(1.099,0)))*1/c)/((1.0,0.4)/(pixel-c*c)),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1015{
z=1/pixel,
c=2.224+(2.224)*(real(pixel))+flip(imag(pixel))-1/pixel:
z=(1/z^z*z+z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1016{
z=1/pixel,
c=2.224+(2.224)*(real(pixel))+flip(imag(pixel))-1/pixel:
z=(pixel-(1/z^z*z+z))/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1017{
z=1/pixel,
c=2.224+(2.224)*(real(pixel))+flip(imag(pixel))-1/pixel:
z=(pixel-(z*1/c))/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1018{
z=1/pixel,
c=2.224+(2.224)*(real(pixel))+flip(imag(pixel))-1/pixel:
z=(pixel-conj(z*z+c)+(1.099,0))/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1019{
z=1/(pixel*pixel*pixel),
c=2.224+(2.224)*(real(pixel))+flip(imag(pixel))-1/pixel:
z=((pixel-sqr(z+c))/(pixel-c*c))/1.3,
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1020{
z=1/flip(pixel),
c=1/cos(z*z):
z=(z/c/pixel)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1021{
z=pixel,c=1/(pixel^3):
z=(pixel-z*z)/(pixel-(z*1/c/pixel)),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1022{
z=pixel,
c=1/(pixel^fn1(z/(1/pixel))):
z=(pixel-(z*1/c))/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1023{
z=1/(pixel*pixel),
c=1/(pixel^real(z/cosxx(1/pixel))):
z=((pixel-sqr(z/c))/(pixel-c*c))/1.3,
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1024{
z=1/(pixel*pixel+2),
c=1/(pixel^real(z/cosxx(1/pixel+1))):
z=((pixel-sqr(z/c))/(pixel-c*c))/1.3,
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1025{
z=imag(1/(abs(pixel*pixel)/real(pixel))),
c=1/(pixel^real(z/cosxx(1/pixel+1))):
z=(1/z^z*z+z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1026{
z=imag(1/(abs(pixel*pixel)/real(pixel))),
c=1/(pixel^real(1/z^z/cosxx(1/pixel+1))):
z=(z/c/pixel)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1027{
z=imag(1/(abs(pixel*pixel)/real(pixel))),
c=1/(pixel^real(1/z^z/cosxx(1/pixel+3))):
z=(pixel-z*z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1028{
z=imag(1/(abs(pixel*pixel)/real(pixel))),
c=1/(pixel^real(1/z^z/cosxx(1/pixel+3))):
z=(pixel-z*z*z)/(pixel-c*c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1029{
z=imag(1/(abs(pixel*pixel)/real(pixel))),
c=1/(pixel^real(1/z^z/cosxx(1/pixel+3))):
z=(z^z*z+z)/(pixel-c*c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1030{
z=imag(1/(abs(pixel*pixel)/real(pixel))),
c=1/(pixel^real(1/z^z/cos(1/pixel+3))):
z=(z^z*z+z)/(pixel-c*c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1031{;For Fractint 19.2 and above.
z=1/pixel-1,
c=1/((pixel^z)-2)*(pixel^(z-2)):
z=sqrt(z*1/c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1032{;For Fractint 19.2 and above.
z=1/pixel-1,
c=1/atanh((pixel^z)+2)*(pixel^(z+2)):
z=sqrt(z*1/c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1033{;19.2 or above.
z=1/pixel-1,
c=1/((pixel^z)+2)*conj(pixel^(z+2)):
z=acosh(1/z^z*z+z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1034{
z=1/(pixel*pixel),
c=1/((pixel^z)+2)*(pixel^(z+2)):
z=(z*1/c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1035{
z=1/(pixel*pixel),
c=1/((pixel^z*z)+2)*(pixel^(z+2)):
z=sqrt(z*1/c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1036{
z=1/(pixel*pixel),
c=1/((pixel^z*z)+3)*(pixel^(z*z+3)):
z=(z*1/z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1037{
z=1/(pixel*pixel),
c=1/((pixel^z*z*z)+3)*(pixel^(z*z*z+3)):
z=(z*1/c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1038{
z=1/(pixel*pixel),
c=1/((pixel^z*z*z)+3)*(pixel^(z*z*z+3)):
z=(1/z^z*z+z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1039{
z=1/(pixel*pixel),
c=1/((pixel^z)+3)*(pixel^(z+3)):
z=(z*z+c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1040{
z=1/(pixel*pixel),
c=1/((pixel^z)+3)*(pixel^(z+3)):
z=(z*z*z+c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1041{
z=1/(pixel*pixel),
c=1/((pixel^z)+3)*(pixel^(z+3)):
z=(z^1/z+2*z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1042{
z=1/(pixel*pixel),
c=1/((pixel^z*z)-1)*(pixel^(z*z-1)):
z=(z^1/z+2*z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1043{
z=1/(pixel*pixel+2),
c=1/((pixel^z*z)+2)*(pixel^(z*z+2)):
z=(z^1/z+2*z*z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1044{
z=1/(pixel*pixel+2),
c=1/((pixel^z*z)+2)*(pixel^(z*z+2)):
z=(1/z*1/pixel*z*z+z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1045{
z=1/(pixel*pixel+2),
c=1/(sqrt(pixel^z*z)+2)*sqrt(pixel^(z*z+2)):
z=(1/z*1/pixel*z*z+z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1046{
z=1/(pixel*pixel+2),
c=1/(sqrt(pixel^z*z*1/z)+2)*sqrt(pixel^(z*z*1/z+2)):
z=(1/z*1/pixel*z*z+z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1047{
z=1/((pixel*pixel)+3),
c=1/(sqrt(pixel^z*z)+2)*sqrt(pixel^(z*z+2)):
z=((1/z*1/pixel*z*z+z)/sqrt(pixel-c*c))/1.4,
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1048{
z=1/((pixel*pixel)+3),
c=1/(sqrt(pixel^z*z)+2)*sqrt(pixel^(z*z+2)):
z=((z*1/c)/sqrt(pixel-c*c))/1.4,
|real(z)| <=100
  ;SOURCE: 24carr.frm
  ;SOURCE: 24carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1049{
z=1/(real(pixel)+flip(imag(pixel)*2.924)),
c=1/(sqrt(pixel^z*z)+2)*sqrt(pixel^(z*z+2)):
z=(z*1/c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1050{
z=sqrt(1/pixel*4/pixel),
c=1/(sqrt(pixel^z*z)+2)*sqrt(pixel^(z*z+2)):
z=(z*1/c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1051{
z=sqrt(1/pixel*4/pixel),
c=1/(sqrt(pixel^z*z)+2)*sqrt(pixel^(z*z+2)):
z=(z*1/c+1/pixel)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1052{
z=sqrt(1/pixel*4/pixel),
c=1/(sqrt(pixel^z*z)+2)*sqrt(pixel^(z*z+2)):
z=((z*2/c+4/pixel)/(pixel-c*c))/1.6,
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1053{
z=1/(pixel*pixel),
c=1/(sqrt(pixel^z*z)+3)*1/sqrt(pixel^(z*z+3)):
z=(z*1/c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1054{
z=1/(pixel*pixel),
c=pixel^z+pixel^1/z:
z=(z*1/c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1055{
z=1/(pixel*pixel),
c=pixel^z+pixel^1/z:
z=(z*z+flip(c*c))/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1056{
z=1/(pixel*pixel),
c=z^pixel+1/z^pixel:
z=(z*z+flip(c*c))/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1057{
z=1/(pixel*pixel),
c=pixel^z+pixel^1/z:
z=(z*1/c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1058{
z=1/(pixel*pixel),
c=sqrt(pixel^z+pixel^1/z):
z=(z*1/c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1059{
z=1/(pixel*pixel),
c=fn1(pixel^z+pixel^1/z):
z=(z*1/c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1060{
z=1/(pixel*pixel),
c=pixel^z+pixel^1/z:
z=(1/z^z*z+z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1061{
z=1/(pixel*pixel),
c=sqr(pixel^real(z)):
z=(z*1/c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1062{
z=1/(pixel*pixel),
c=sqr(pixel^(1/z)):
z=(z*1/c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1063{
z=1/(pixel*pixel),
c=pixel^z/pixel:
z=(z*1/c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1064{
z=1/(pixel*pixel),
c=pixel^z/pixel:
z=(2+(z*1/c)/(pixel-c*c))/1.67,
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1065{
z=real(1/(pixel*pixel)),
c=pixel^z/pixel:
z=((pixel-(z*1/c))/(pixel-c*c))/1.6,
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1066{
z=conj(1/(pixel*pixel*pixel)),
c=pixel^(z*z+z):
z=pixel*(z^1/c)/(pixel-conj(c^c)),
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1067{
z=conj(1/(pixel*pixel*pixel)),
c=pixel^(1/z^z*z+z):
z=(pixel*(z^1/c)/(pixel-conj(c^c)))/1.8,
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1068{
z=1/pixel,
c=z*z^z:
z=((pixel-z*z)/(pixel-c*c))/1.3,
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1069{
z=1/pixel,c=pixel^(z^(1/z^z*z+z)):
z=((2*z)*1/c)/(pixel-c*c);
z=((2*z*z)+c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1070{
z=1/pixel,c=1/cabs(1/pixel*1/pixel):
z=(z*z*1/abs(c))/(pixel-c*c*c*c),
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1071{
z=1/pixel,c=1/cabs(1/pixel*1/pixel):
z=(z*z*z*z+c)/(pixel-c*c*c*c),
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1072{
z=1/pixel,c=1/cabs(1/pixel*1/pixel):
z=(1/z^z*z+z)/(pixel-c*c*c*c),
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1073{
z=1/pixel*1/pixel,
c=(z-2)^pixel:
z=(1/z^z*z*z+z+2)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1074{
z=(1/pixel*0.91/pixel),
c=((z-3)^pixel)+1/pixel:
z=(z*1/c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1075{
z=(1/pixel*0.91/pixel),
c=((z-3)^pixel)+0.85/pixel:
z=(z*1/c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1076{
z=(pixel*0.91/pixel),
c=((1.8*(z-3)^pixel)+0.65/pixel):
z=(pixel-z*z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1077{
z=sqrt(0.91/pixel),
c=(z-3)-pixel:
z=1/z^z*z+z;
z=z*1/c,
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1078{;Modified Brad Beacham formula
z=1/pixel,c=1/z^z*z+z,f=0:
z=((f)*fn1(z))+((1-f)*fn2(c))+c,
f=(z*1/c)/(pixel-c*c),
f< 1.0
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1079{
z=1/pixel,c=1/pixel*0.91/pixel:
z=z*1/sin(c);
z=(z+(1/pixel-sin(c)))/(pixel-c*c),
|real(z)| <=100    
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1080{
z=1/pixel,c=cosxx(z/pixel)*sqr(1/pixel):
z=(2*z+(4/pixel-sqrt(c)))/(pixel-c*c),
|real(z)| <=100    
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1081{
z=1/pixel,c=cotanh(z/pixel)*sqr(1/pixel):
z=(2*z+(4/pixel-sqrt(c)))/(pixel-c*c),
|real(z)| <=100    
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1082{
z=1/pixel,c=cosxx(z^z/pixel-2):
z=((z*1/(c^c))/(pixel-c*c))/1.45;
|real(z)| <=100    
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1083{
z=pixel,c=z^(cosxx(2.524)/pixel):
z=z/c;
z=(z*1/c)/(pixel-c*c);
|real(z)| <=100    
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1084{
z=1/pixel,c=1/z^(z/pixel):
z=(z*1/c)/(pixel-c*c);
|real(z)| <=100    
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1085{
z=4/pixel,c=(z/pixel)/(z^(-z/pixel)):
z=(z*1/c)/(pixel-c*c);
|real(z)| <=100    
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1086{; DISECTED MANDELBROT
; TO GENERATE "STANDARD" MANDELBROT, SET P1 = 0,0 & ALL FN = IDENT
z=1/pixel,cx=flip(real(1/pixel)),cy=flip(imag(z)),k=2+p1:
zx=real(z),zy=imag(z);
x=z*(zx*zx-zy*zy)+cx;
y=cx*(k*zx*zy)+cy;
z=((1/z^z*z+z)/(pixel-cx*cx))/1.32,
|z| <(10+p2)
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1087{
z=1/pixel,c=abs(real(1/pixel)):
z=(sqr(z/pixel))/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1088{
z=1/pixel*0.91/pixel,c=abs(real(1/pixel)):
z=pixel-(1/z^2.224+1/pixel)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1089{ 
z=1/pixel*0.91/pixel,c=1.75/pixel:
z=((1.099,0)-z)/(pixel-c*c),
|z| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1090{;Use a counter to gradually change proportions of algorithms
	;Bradley Beacham  [74223,2745]
;Modofied Brad Beacham formula
  ;P1 sets starting value for k
  ;P2 varies step size for incrementing k
  ;P3 varies bailout value
  z =pixel, c=pixel, k = p1, kstep = .01 + p2, limit = 4 + p3:
    k = k + kstep
    z = k*(1/z^z*z+z) + (1-k)*(z*z) + c
      |z| < limit
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1091{;Use a counter to gradually change proportions of algorithms
	;Bradley Beacham  [74223,2745]
;Modified Brad Beacham formula
  ;P1 sets starting value for k
  ;P2 varies step size for incrementing k
  ;P3 varies bailout value
  z =pixel, c=pixel, k = p1, kstep = .01 + p2, limit = 4 + p3:
    k = k + kstep
    z = k*(1/z^z*z+z) + (1-k)*(z*1/c) + c
      |z| < limit
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1092{
z=pixel+4/pixel,c=z+1/pixel:
z=z/c;
z=z*z+c,
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1093{
z=sin(1/pixel)/(1.099,0),c=cosxx(1/pixel)/(1.099,0):
z=z/c;
z=z*z+c,
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1094{
z=sin(1/pixel)/(1.099,0),c=cosxx(1/pixel)/(1.099,0):
z=z*1/c;
z=z*z+c,
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1095{
z=sin(1/pixel)/(0.3,0),c=cosxx(1/pixel)/(0.3,0):
z=z*1/c;
z=z*z+c,
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1096{
z=sinh(1/pixel)/(0.3,0),c=cosh(1/pixel)/(0.3,0):
z=z*1/c;
z=z*z+c,
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1097{
z=sinh(1/pixel)/(0.45,0),c=cosh(1/pixel)/(0.45,0):
z=z*1/c;
z=z*z+c,
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1098{
z=sinh((1/pixel)/(0.95,0)),c=cosxx((1/pixel)/(0.95,0)):
z=(pixel-z*z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1099{
z=sinh((1/pixel)/(2.95,0)),c=cosxx((1/pixel)/(2.95,0)):
z=(pixel-sqr(z/c)-1/pixel)/(pixel-c*c);
z=z*1/c,
|real(z)| <=100
  ;SOURCE: 25carr.frm
  ;SOURCE: 25carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1100{
z=sinh((2.5/pixel)/(2.95,0)),c=cosxx((2.5/pixel)/(2.95,0)):
z=(pixel-sqr(z/c)-1/pixel)/(pixel-c*c);
z=z*1/c,
|real(z)| <=100
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1101{
z=sinh((2.5/pixel)/(1.099,0)),c=cosxx((2.5/pixel)/(1.099,0)):
z=(pixel-sqr(z/c)-2/pixel)/(pixel-c*c);
z=z*1/c,
|real(z)| <=100
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1102{
z=sinh((2.5/pixel)/(2.099,0)),c=cosxx((2.5/pixel)/(2.099,0)):
z=(pixel-sqr(z/c)-2/pixel)/(pixel-c*c);
z=sqr(z*1/c),
|real(z)| <=100
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1103{
z=sinh((2.5/pixel)/(2.099,0)),c=cosxx((2.5/pixel)/(2.099,0)):
z=(pixel-sqr(z/c)-2/pixel)/(pixel-c*c);
z=sinh(z*1/c),
|real(z)| <=100
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1104{
z=sinh((2.5/pixel)/(1.095,0)),c=cosxx((2.5/pixel)/(1.095,0)):
z=(pixel-sqr(z/c)-1.5/pixel)/(pixel-c*c);
z=(pixel-(z/c-1/pixel))/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1105{
z=sinh((2.5/pixel)/(1.095,0)),c=cosxx((2.5/pixel)/(1.095,0)):
z=(pixel-(z/c-1/pixel))/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1106{
z=sinh((2.5/pixel)/(1.095,0)),c=cosxx((2.5/pixel)/(1.095,0)):
z=z*z+c;
z=(pixel-(z*1/c-1/pixel))/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1107{
z=conj((2.5/pixel)/(1.095,0)),c=cosxx((2.5/pixel)/(1.095,0)):
z=(log(z^2)^conj(z*1/c)+1/pixel)/(pixel-c*c);
|real(z)| <=100
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1108{
z=conj((2.699,0)/(4/pixel)),c=flip((2.699,0)/(1/pixel)):
z=(z*1/c)/(pixel-c*c);
z=z/c,
|real(z)| <=100
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1109{
z=(1/pixel)/(1.099,0),c=pixel/(1.099,0):
z=(z*z/(sinh(z)))*1/c,
|z| <= 100
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1110{
z=(1/pixel)/(1.099,0),c=pixel/(1.099,0):
z=(z*z/(cosxx(z)))*1/c,
|z| <= 100
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1111{
z=1/pixel*0.91/pixel,c=cabs(1/pixel)/cotanh(1.099,0):
z=(sqr(conj(z*1/c))+(pixel)),
|real(z)| <=100          
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1112{
z=1/pixel*0.91/pixel,c=cabs(1/pixel*1/pixel)/cotanh(1.099,0):
z=((sqr(conj(z*1/c))+(pixel*pixel)))/(pixel-z*1/c),
|real(z)| <=100          
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1113{
z=cabs(1/pixel),c=cabs(1/pixel)/tanh(1.099,0):
z=((sqr(conj(z*1/c))+(pixel*pixel)))/(pixel-z/c),
|real(z)| <=100          
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1114{
z=(1/pixel)/(1.099,0),c=(pixel-0.5)/(1.099,0): 
z=sqr(z)+conj((pixel-c)-1),
|real(z)| <=100 
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1115{
z=(1/pixel)/(1.099,0),c=(pixel-0.5)/(1.099,0): 
z=(sqr(z)+conj((pixel-c)-1))/(pixel-z/c),
|real(z)| <=100 
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1116{
z=(1/pixel)/(2.0,0),c=(pixel-0.5)/(2.0,0): 
z=(sqr(conj(z*1/c))+conj((pixel-c)-1))/(pixel-z*z+c),
|real(z)| <=100 
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1117{
z=(2.0,0)/(1/pixel),c=(2.0,0)/(pixel-0.5): 
z=(sqr(conj(z))+conj((pixel-c)-1))/(pixel-z*1/c),
|real(z)| <=100 
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1118{
z=(2.3,0)/(1/pixel),c=(2.3,0)/(pixel-0.67): 
z=(sqr(conj(z-1/pixel))+conj((pixel-z/c)-1))/(pixel-z*1/c),
|real(z)| <=100 
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1119{
z=(2.3,0)/(4/pixel),c=(2.3,0)/(pixel-0.67):
z=z*1/c; 
z=(sqr(conj(z-1/pixel))+conj((pixel-z/c)-1))/(pixel-z*1/c),
|real(z)| <=100 
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1120{
z=(0.3,0)/(4/pixel),c=1/(pixel-0.87):
z=(z/c)/(pixel-c*c); 
z=(sqr(conj(z-1/pixel))+conj((pixel-z/c)-1))/(pixel-z*1/c),
|real(z)| <=100 
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1121{
z=(0.9,0)/(4/pixel),c=1.23/(pixel-0.87):
z=z*1/c;
z=(pixel-z*z)/((pixel-c*c)+1/pixel),
|real(z)| <=100 
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1122{
z=(0.3,0.6)/(3/pixel),c=1.63/(pixel-0.87):
z=(z*z+c)/1.34;
z=(pixel-z*z)/((pixel-c*c)+1/pixel),
|real(z)| <=100 
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1123{
z=(1.099,0)/(pixel-(1.099,0)),c=1/pixel:
z=pixel-((z-1)/z+exp(z))/(pixel-(z*1/c)),
|real(z)| <=100 
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1124{
z=(1.099,0)/(pixel-(1.099,0)),c=exp(1/pixel*0.91/pixel):
z=(z*1/c+1/pixel)/(pixel-conj(c*c));
z=z*1/c,
|real(z)| <=100 
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1125{
z=exp(1.099,0)/(pixel-(1.099,0)),c=exp(1/pixel*0.91/pixel):
z=(z*1/c+1/pixel)/(pixel-conj(c*c));
z=z*z*z+c,
|real(z)| <=100 
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1126{
z=exp(1.099,0)/((1.099,0)+pixel),
c=(exp(1/pixel*0.91/pixel))/(0.3,0.6):
z=z+c-abs(imag(z)),
|real(z)| <=100 
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1127{
z=exp(1.099,0)/((1.099,0)+pixel),
c=(exp(1/pixel*0.91/pixel))/(0.3,0.6):
z=(z+c-abs(imag(z)))/(pixel-c*c),
|real(z)| <=100 
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1128{
z=exp(2.099,0)/((1.099,0)+pixel),
c=(exp(1/pixel*0.91/pixel))/(1.099,0):
z=(z+c-abs(imag(z))),
|real(z)| <=100 
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1129{
z=sqrt(2.099,0)/((1.099,0)+pixel),
c=(exp(1/pixel*0.91/pixel))/(1.099,0):
z=(z+c-abs(imag(z)));
|real(z)| <=100 
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1130{
z=sqrt((1.099,0)+pixel)/(1.099,0),
c=(exp(1/pixel*0.91/pixel))/(1.099,0):
z=(z+c-abs(imag(z)));
|real(z)| <=100 
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1131{
z=sqrt((1.099,0)+pixel)/(1.099,0),
c=(1/pixel*0.91/pixel)/(1.099,0):
z=(z+c-abs(imag(conj(z))))/(1/pixel);
|real(z)| <=100 
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1132{
z=cotanh((1.099,0)+pixel)/(1.099,0),
c=(1/pixel*0.91/pixel)/(1.099,0):
z=(z+c-abs(imag(conj(z))))/(1/pixel);
|real(z)| <=100 
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1133{
z=cotanh((1.099,0)+pixel)/(1.099,0),
c=(1/pixel*0.91/pixel)/(1.099,0):
z=(z+c-abs(imag(conj(z))))/(1/pixel);
z=(z+c-abs(imag(conj(z))))/(1/pixel),
|real(z)| <=100 
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1134{
z=sqrt((1.099,0)+pixel)/sinh(1.099,0),
c=exp(1/pixel*0.91/pixel)/sinh(1.099,0):
z=(z+c-abs(imag(conj(z))))/(1/pixel);
z=(z+c-abs(imag(conj(z))))/(1/pixel),
|real(z)| <=100 
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1135{
z=sqrt((1.099,0)+pixel)/(1.099,0),
c=sqr(pixel)/sqr(1/(1.099,0)):
z=c-z*(1.099,0);
z=c-z*pixel;
|real(z)| <=100 
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1136{
z=sqrt((1.099,0)+pixel)/(1.099,0),
c=sqr(pixel)/sqr(1/(1.099,0)):
z=pixel-(c-z*(1.099,0));
z=(1.099,0)-(c-z*pixel);
|real(z)| <=100 
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1137  FractalFenderC modified(XAXIS_NOPARM) {z=(pixel)/(1.099,0),x=|z|:
(z=cosxx(z)+pixel)*(1<x)+(z=z)*(x<=1),
z=sqr(z)+pixel,
x=|z|,
x<=4 
  ;SOURCE: 26carr.frm
    ;SOURCE: to-bob-6.frm
}


Carr1138  FractalFenderC modified(XAXIS_NOPARM) {z=(pixel)/(2.099,0),x=|z|:
(z=sinh(z)+pixel)*(1<x)+(z=z)*(x<=1),
z=sqr(z)+(pixel),
x=|z|,
x<=4 
  ;SOURCE: 26carr.frm
    ;SOURCE: to-bob-6.frm
}


Carr1139  FractalFenderC modified(XAXIS_NOPARM) {z=(pixel)/(2.099,0),x=|z|:
(z=sinh(z)+pixel)*(1<x)+(z=z)*(x<=1),
z=(z*z)+(pixel*pixel*pixel),
x=|z|,
x<=4 
  ;SOURCE: 26carr.frm
    ;SOURCE: to-bob-6.frm
}


Carr1140{
z=pixel/((1.099,0)*(1/pixel)),
c=pixel^(1/cosxx(pixel)):
z=sqr(1/pixel)+conj(z+c-abs(imag(|z|))),
|real(z)| <=100
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1141{
z=pixel/((1.099,0)*(1/pixel)),
c=pixel^(1/cosxx(pixel)):
z=sqr(z*1/c)+conj(z+c-abs(imag(|z|))),
|real(z)| <=100
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1142{
z=pixel/((1.099,0)*(1/pixel)),
c=pixel^(1/cosxx(pixel)):
z=sqr(z*1/c)+sqrt(z+c-abs(imag(|z|))),
|real(z)| <=100
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1143{
z=imag(pixel/((1.099,0)*(1/pixel))),
c=pixel^(2/cosxx(pixel)):
z=sqr(z*1/c)+imag(z+c-abs(imag(|z|))),
|real(z)| <=100
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1144{
z=imag(pixel/((2.099,0)*(1/pixel))),
c=pixel^(2/conj(pixel)):
z=sqr(z/c)+imag(z+c-abs(imag(|z-0.002|))),
|real(z)| <=100
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1145{
z=imag(pixel/((2.099,0)*(1/pixel))),
c=pixel^(2/conj(pixel)):
z=sqr(1/z^z*z+z)+imag(z+c-abs(imag(|z-0.002|))),
|real(z)| <=100
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1146{
z=(pixel/((2.099,0)*cosxx(1/pixel))),
c=imag(pixel^(1/flip(pixel))):
z=(z*z+c)+imag(z+c-abs(imag(|z-0.002|))),
|real(z)| <=100
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1147{
z=(pixel/((2.099,0)*cosxx(1/pixel))),
c=imag(pixel^(1/sqr(pixel))):
z=(pixel-z*z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1148{
z=pixel^(sinh(pixel)/cosh(pixel)),
c=pixel/((1.099,0)*1/z):
z=(sinh(z)/cosh(c)),
|real(z)| <=100
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1149{
z=pixel^(sinh(1.099,0)/cosh(pixel)),
c=pixel/((2.099,0)*1/z):
z=(sinh(z*z))/(cosh(c*c)),
|real(z)| <=100
  ;SOURCE: 26carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1150{
z=pixel^(sinh(1.099,0)/cosh(pixel)),
c=pixel/((2.099,0)*1/z):
z=cosxx(z)+c,
|real(z)| <=100
  ;SOURCE: jo_we_03.frm
}


Carr1151{
z=pixel/((1.099,0)^(pixel)),
c=(pixel/((2.099,0)*1/z)):
z=(z*z+c)/(z*1/c),
|real(z)| <=100
  ;SOURCE: jo_we_03.frm
}


Carr1152{
z=pixel/((1.099,0)^(pixel)),
c=(pixel/((2.099,0)*1/z)):
z=cosxx((z*z+c)/(z*1/c)),
|real(z)| <=100
  ;SOURCE: jo_we_03.frm
}


Carr1153{
z=1/pixel,
c=(1.099,0)/(pixel-z):
z=(cotanh(z*z+(1/z*z)+pixel)/(pixel-c*c))/1.46,
|real(z)| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1154{
z=1/pixel,
c=(0.3,0.6)/(pixel-z*z):
z=(z*z-(pixel*pixel*pixel))/(z*z+c)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1155 FractalFenderC modified(XAXIS_NOPARM){;Modified Lee Skinner frm.
z=(pixel)/(1.099,0),x=|z|:
(z=cosxx(z)+sqr(pixel))*(1<x)+(z=z)*(x<=1),
z=sqr(z)+(pixel),
x=|z|,
x<=4 
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1156 FractalFenderC modified(XAXIS_NOPARM){;Ditto above
z=(pixel)/(1.099,0),x=|z|:
(z=cosxx(z)+sqr(pixel))*(1<x)+(z=z)*(x<=1),
z=sqr(z)+(pixel/(1.099,0)),
x=|z|,
x<=4 
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1157{;Modified Wareman formula
z=1/pixel,root=(1.099,0):
z3=z*z*z;
z4=z3*z;
z=(3*z4+root)/(4*z3);
|real(z)| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1158{
z=1/pixel*0.91/pixel,c=pixel/(1.099,0):
z=(c*sqr(z)+pixel)/(pixel-z*1/c),
|real(z)| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1159{
z=1/pixel*0.91/pixel,c=pixel/(1.099,0):
z=z-(c*sqr(z)+pixel)/(pixel-z*1/c),
|real(z)| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1160{
z=1/pixel*0.91/pixel,c=pixel/(1.099,0):
z=z-cosxx(c*sqr(z)+pixel)/(pixel-z*1/c),
|real(z)| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1161{
z=1/pixel*0.91/pixel,c=pixel/(1.099,0):
z=cabs(z)-cosxx(c*sqr(z)+pixel)/(pixel-z*1/c),
|real(z)| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1162{;Forms Faberge' Eggs
z=1/pixel*0.91/pixel,c=pixel/(1.099,0):
z=z-(cosh(z+pixel))/(z*1/c),
|real(z)| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1163{
z=1/pixel*0.91/pixel,c=pixel/(1.099,0):
z=z-(cosxx(z+pixel))/(z*1/c),
|real(z)| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1164{
z=1/pixel*0.91/pixel,c=pixel/(1.099,0):
z=z-(cotanh(z+pixel))/(z*1/c),
|real(z)| <=100
  ;SOURCE: jo_we_03.frm
}


Carr1165{
z=1/pixel*0.91/pixel,c=pixel/(1.099,0):
z=z-(cosxx(z*z+c)+pixel)/(z*1/c),
|real(z)| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1166{
z=1/pixel*0.91/pixel,c=(1.099,0)/pixel:
z=z-(cosxx(z*1/c+pixel))/sqr(z/c),
|real(z)| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1167{
z=sqr(1/pixel*0.91/pixel),c=(1.099,0)/pixel:
z=z-1/(cosxx(z/c+pixel))/sqr(z/c),
|real(z)| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1168{
z=sqr(1/pixel*0.91/pixel),c=(1.099,0)/pixel:
z=z-1/(sinh(z/c-pixel))/sqr(z/c),
|real(z)| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1169{
z=pixel/(1.099,0),
c=((1/pixel)/2)/z-2.5^(pixel+2.324)/(1.099,0):
z=pixel-(cosxx(z)-z*z+1/c+1/pixel),
|real(z)| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1170{
z=pixel/(1.099,0),
c=((1/pixel)/2)/z-2.5^(pixel+2.324)/(1.099,0):
z=(pixel-z*z+c)/(pixel-(cosxx(z)-z*z+1/c+1/pixel)),
|real(z)| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1171{
z=(4/pixel)/(1.099,0),
c=z-2.5^(pixel-2.324)/(1.099,0):
z=z-(pixel-z*z+c),
|real(z)| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1172{;Modified Noel Giffin formula
z=1/pixel,zp=(0,0):
temp=z
z=z*z-zp
zp=sin(-temp),
|zp| <= 4 
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1173{;Ditto above
z=1/pixel,zp=exp(1.099,0):
temp=real(z)
z=exp(z*z+zp)
zp=z-(cosxx(1/temp)),
|real(z)| <=100 
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1174{;Modified Noel Giffin formula
z=pixel,zp1=zp2=zp3=(0,0):
temp=z
z=z*z-zp3
zp3=zp2
zp2=zp1
zp1=conj(temp),
|zp1| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1175{;Modified Noel Giffin formula
z=pixel,zp1=zp2=zp3=(0,0):
temp=z
z=imag(z*z)-zp3
zp3=zp2
zp2=zp1
zp1=conj(temp),
|zp1| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1176{;Ditto above
z=1/pixel,zp=(0,0):
temp=z
z=z*z-cos(zp)
zp=conj(temp),
|zp| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1177{;Ditto above
z=cosxx(1/pixel*1/pixel*1/pixel),zp=(0,0):
temp=z
z=z*z-cos(zp)
zp=conj(temp),
|zp| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1178{;Modified Noel Giffin formula
z=cosxx(pixel),zp1=zp2=zp3=(0,0):
temp=z
z=z*z-zp3
zp3=zp2
zp2=zp1
zp1=conj(temp),
|zp1| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1179{;Modified Noel Giffin formula
z=sqr(pixel*pixel+pixel),zp1=zp2=zp3=(1/pixel):
temp=z
z=z*1/zp3
zp3=zp2
zp2=zp1
zp1=conj(temp),
|zp1| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1180{;Modified Noel Giffin formula
z=sqr(pixel*pixel+pixel),zp1=zp2=zp3=cotanh(1/-pixel):
temp=z
z=z*1/zp3
zp3=zp2
zp2=zp1
zp1=conj(temp),
|zp1| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1181{;Modified Noel Giffin formula
z=sqr(pixel*pixel+pixel),zp1=zp2=zp3=log(1/-pixel):
temp=z
z=z-(z*1/zp3)
zp3=zp2
zp2=zp1
zp1=conj(temp),
|zp1| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1182{;Modified Noel Giffin formula
z=sqr(pixel*pixel+pixel),zp1=zp2=zp3=log(1/-pixel):
temp=z
z=z-(z*1/zp3+1/pixel)
zp3=(zp2)
zp2=(zp1)
zp1=conj(temp),
|zp1| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1183{;Modified Noel Giffin formula
z=sqr(pixel*pixel+pixel),zp1=zp2=zp3=log(1/-pixel):
temp=cabs(z)
z=z-(z*1/zp3+conj(1/pixel))
zp3=(zp2)
zp2=(zp1)
zp1=conj(temp),
|zp1| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1184{;Modified Noel Giffin formula
z=sqr(pixel*pixel+pixel),zp1=zp2=zp3=sqr(1/-pixel):
temp=cabs(z-0.5)
z=z-(z*1/zp3+conj(1/pixel))
zp3=(zp2)
zp2=(zp1)
zp1=conj(temp),
|zp1| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1185{;Modified Noel Giffin formula
z=sqr(pixel*pixel+pixel),zp1=zp2=zp3=sqr(2*(1/-pixel)):
temp=cabs(z-0.25)
z=z-(z*1/zp3+conj(1/pixel))
zp3=(zp2)
zp2=(zp1)
zp1=conj(temp),
|zp1| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1186{;Modified Noel Giffin formula
z=sqr(pixel*pixel+pixel),zp1=zp2=zp3=sqr(cosxx(1/-pixel)):
temp=cabs(z-1.25)
z=z-(z*1/zp3+cabs(1/pixel))
zp3=(zp2)
zp2=(zp1)
zp1=conj(temp),
|zp1| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1187{;Modified Noel Giffin formula
z=zp1=pixel,zp2=(1.099,0):
temp=z
z=z-(z*zp2-zp1)
zp2=zp1^.5
zp1=temp,
|zp1| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1188{;Modified Noel Giffin formula
z=zp1=pixel,zp2=(1.099,0),zp3=sqr(1/pixel*0.91/pixel):
temp=z
z=z-(z*zp2-zp1)
zp2=zp1^z
zp3=1/pixel
zp1=(temp),
|zp1| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1189{;Modified Noel Giffin formula
z=pixel^2.34,zp1=zp2=zp3=(1/pixel)*(1.099,0),
c=z-(1/pixel):
temp=cabs(z)
z=z-(z*z+c)/(pixel-c*c)
zp3=(zp2)
zp2=(zp1)
zp1=conj(temp),
|zp1| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1190{
z=1/pixel,c=cosxx(1/pixel):
z=sqr(sqr(z*c))+c+(1.099,0);
|real(z)| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1191{
z=1/pixel,c=cosxx(1/pixel):
z=cosxx(sqr(sqr(z*1/c)))+c+(1.099,0);
|real(z)| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1192{;Modified (Modified Newton; Tim Wegner)
       ;from MISCBLB.FRM
z=1/pixel,z2=z*z+c,z3=z*(cosxx(z2)),c=cosxx(1/pixel*0.91/pixel):
z=z-(z3+p1*z2+1)/(6*z2+4*p1*z)      
z2=z*z/c*c
z3=z*z2,
p2<=|z3+p1*z2+1|
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1193{
z=conj(1/pixel*0.91/pixel),z2=z+conj(cosxx(1/pixel)),z3=z*z2,
c=1/cosxx(sqr(pixel)):
z=z*1/c;
z2=z2*1/c;
z3=z3*1/c;
|real(z)| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1194{;Creates VERY nice images
z=conj(1/pixel*0.91/pixel),z2=z+conj(cosxx(1/pixel)),z3=z*z2,
c=1/cosxx(sqr(pixel)):
z=z-(z*z+c);
z2=z2*1/c;
z3=z3*1/c;
|real(z)| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1195{
z=conj(1/pixel*0.91/pixel),z2=z+conj(cosxx(1/pixel)),z3=z*z2,
c=1/cosxx(sqr(pixel)):
z=(z*1/c)/(pixel-c*c);
z2=z2*1/c;
z3=z3*1/c;
|real(z)| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1196{
z=conj(1/pixel*0.91/pixel),z2=z+conj(cosxx(1/pixel)),z3=z*z2,
c=(1/cosxx(sqr(pixel)))/(1.099,0):
z=(z*1/c)/(pixel-c*c);
z2=z2*1/c;
z3=z3*1/c;
|real(z)| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1197{
z=conj(1/pixel*0.91/pixel),z2=z+exp(cosxx(1/pixel)),z3=z*z2,
c=(1/cosxx(sqr(pixel)))/(1.099,0):
z=(z*1/c);
z2=z3-(z2+z/c);
z3=z2-(z3+z2);
|real(z)| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1198{
z=conj(1/pixel*0.91/pixel),z2=z+exp(cosxx(1/pixel)),z3=z*z2,
c=(1/cosxx(sqr(pixel)))/(1.099,0):
z=(z/c)/(pixel-c*c);
z2=z3-(z2+z/c);
z3=z2-(z3+z2);
|real(z)| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1199{
z=exp(1/pixel*0.91/pixel),z2=z+exp(cosxx(1/pixel)),z3=z*z2,
c=(1/cosxx(sqr(pixel)))/(1.099,0):
z=(z-(z/c)/(pixel-c*c))/1.4;
z2=z3-(z2+z/c);
z3=z2-(z3+z2);
|real(z)| <=100
  ;SOURCE: 27carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1200{
z=1/pixel,z2=z+flip(cosxx(1/pixel)),z3=z+z2,
c=cosxx(sqr(imag(1/pixel))):
z=z*z2*z3+c;
z2=z2^z3;
z3=z3^z2;
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1201{
z=1/pixel,z2=z^1/z*z,z3=z^z2,
c=cosxx(1/pixel):
z=(z*z+c)*(z*z2*z3+c);
z2=z-(z2^z3);
z3=z-(z3^z2);
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1202{
z=cosxx(1/pixel),z2=z^1/z*z,z3=z^z2,
c=cabs(1/pixel):
z=(z*1/c)/(1/z^c*1/c);
z2=z-(z2^z3);
z3=z-(z3^z2);
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1203{
z=cosxx(1/pixel),z2=abs(real(z)),z3=abs(imag(z)),
c=cotanh(1/pixel):
z=(z*1/c)/(pixel-z*z);
z2=(1-z2^z3);
z3=(1-z3^z2);
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1204{
z=cosxx(1/pixel),z2=abs(real(z)),z3=abs(imag(z)),
c=cotanh(1/pixel):
z=sqr(sqr(z*c))+c+1.224;
z2=conj(z2^z3)/c;
z3=conj(z3^z2);
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1205{
z=cosxx(1/pixel),z2=flip(real(z)),z3=conj(imag(z)),
c=cotanh(1/pixel):
z=sqr(sqr(z*c))+c+1.224;
z2=conj(z2^z3)/c*c;
z3=conj(z3^z2)/c;
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1206{
z=cosxx(1/pixel),z2=flip(real(z)),z3=conj(imag(z)),
c=cotanh(1/pixel),z4=conj(sqr(pixel))/cosxx(sqr(pixel)):
z=(z*1/c)+z4;
z2=conj(z2^z3)/z;
z3=conj(z3^z4)/z;
z4=(1/z*z+z4)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1207{
z=cosxx(sqr(1/pixel)),c=cotanh(1/pixel),
z2=conj(sqr(pixel-1))/cosxx(sqr(pixel)):
z=z*1/c;
z2=z2*1/c,
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1208{
z=cosxx(sqr(1/pixel)),c=cotanh(1/pixel*0.91/pixel),
z2=conj(sqr(pixel-1))/cosxx(sqr(pixel+1)):
z=z*1/c;
z2=z2*1/z,
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1209{
z=cosxx(sqr(1/pixel)),c=cotanh(1/pixel*0.91/pixel),
z2=conj(sqr(pixel-1))/cosxx(sqr(pixel+1)):
z=(z-(z/c+z*1/c))/(pixel-c*c);
z2=z*1/z2;
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1210{
z=cosxx(sqr(1/pixel)),c=cotanh(1/pixel*0.91/pixel),
z2=conj(sqr(pixel-1))/cosxx(sqr(pixel+1)),zp1=z+c+z2:
z=(zp1-(z/c+z*1/c))/(pixel-c*c)
z=(z-(z/c+z*1/c))/(pixel-c*c);
z2=z*1/z2;
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1211{
z=cosxx(sqr(1/pixel)),c=cotanh(1/pixel*0.91/pixel),
z2=conj(sqr(pixel-1))/cosxx(sqr(pixel+1)),zp1=z+c+z2:
z=(zp1-(z*1/c))/(pixel-c*c);
z=(z-(z*1/c))/(pixel-c*c);
z2=z*1/zp1;
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1212{
z=cosxx(sqr(1/pixel)),c=cotanh(1/pixel*0.91/pixel),
z1=conj(sqr(pixel-1))/cosxx(sqr(pixel+1)),c1=conj(z+c+z1):
z=z*1/c;
z=z1*1/c1,
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1213{
z=cosxx(sqr(1/pixel)),c=cotanh(1/pixel*0.91/pixel),
z1=conj(sqr(pixel-1))/cosxx(sqr(pixel+1)),c1=conj(z+c+z1):
z=z*z+c;
z=z1*z1+c;
z=z*z+c1,
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1214{;Newton variant
z=sinh(sqr(1/pixel)),z1=conj(sqr(pixel-1))/flip(sqr(pixel+1)),
c1=sqr(z+c+z1):
z1=z*z*z;
c1=z1*z;
z=(3*c1+1)/(4*(z*z*z)),
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1215{;Newton variant (sort of)
z=sinh(sqr(1/pixel)),c=cosxx(1/pixel*0.91/pixel),
z1=conj(sqr(pixel-1))/flip(sqr(pixel+1)),c1=sqr(z+c+z1):
z1=conj(z*z*z);
c1=z1*z;
z=(3*c1+1)/(4*(z*z*z)),
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1216{
z=(real(1.099,0)+1)/pixel,c=(imag(2.0,0)-1)/pixel:
z=z/c;
z=z*z+c,
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1217{
z=(real(1.099,0)+1)/pixel,c=(imag(2.0,0)-1)/pixel:
z=cosxx(z/c);
z=z*z+c,
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1218{
z=(real(1.099,0)+1)/pixel,c=(imag(2.0,0)-1)/pixel:
z=(z/c);
z=z-(z*z+c);
z=z*1/c,
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1219{
z=1/(pixel*pixel),c=imag(cosxx(1/pixel)):
z=z-(pixel-z*z)/(pixel-c*c),
c=(1+flip(imag(c)))*real(c)/2+z,
|real(z)| <=100 
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1220{
z=1/(pixel*pixel*pixel),
c=pixel-sqr(imag(cosxx(1/pixel))):
z=c-z*pixel,
|real(z)| <=100 
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1221{
z=pixel,c=pixel,
z1=cosxx(pixel),c1=cosxx(pixel):
z=z*z1+c;
z=z1*z+c1,
|real(z)| <=100 
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1222{;Modified Rollo Silver formula
z=1/pixel,zz=z*z,zzz=zz*z,z=(1.-(1.099,0))*zz+((1.099,0)*zzz):
z=z+1/pixel;
zsq=z*1/z;
zcu=zsq*1/z;
z=(1.-(1.099,0))*zsq+(1.099,0)*1/zcu,
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1223{;Modified Rollo Silver formula
z=(1/pixel*0.91/pixel),zz=z*z,zzz=zz*z,
z=(1.-(2.099,0))*zz+((2.099,0)*zzz):
z=cosxx(z+1/pixel);
zsq=z*1/z;
zcu=zsq*1/z;
z=z-((1.-(2.099,0))*zsq+(2.099,0)*1/zcu),
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1224{;Modified Rollo Silver formula
z=(1/pixel*0.91/pixel),zz=z*z,zzz=zz*z,
z=(1.-(2.099,0))*zz+((2.099,0)*zzz):
z=cosxx(z+1/pixel)/(z*1/z);
zsq=z*1/z;
zcu=zsq*1/z;
z=z-((1.-(2.099,0))*zsq+(2.099,0)*1/zcu)/(pixel-z*z),
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1225{
z=(1/pixel*0.91/pixel),
c=(cosxx(1.7/z))/(1.099,0):
z=cotanh(sqr(z*1/c))+(2.099,0),
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1226{
z=(1/pixel*0.91/pixel):
z=z^(z-1)*cosxx(z)+pixel;
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1227{
z=(1/pixel*0.91/pixel),c=(1.7/z)/(1.099,0):
z=c-(z^(z-1)*cosxx(z)+pixel);
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1228{
z=(1/pixel*0.91/pixel),c=(1.7/z)/(1.099,0):
z=z*1/c+((1.099,0)-1)*z-(1.099,0);
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1229{
z=(1/pixel*0.91/pixel),c=tan(1.7/z)/(1.099,0):
z=z*1/c+((1.099,0)-1)*z-(1.099,0);
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1230{
z=(1/pixel*0.91/pixel),c=cotanh(1.7/z)/(1.099,0):
z=z/c;
z=z*1/c+((1.099,0)-1)*z-(1.099,0);
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1231{
z=(1/pixel*0.91/pixel),c=cotanh(1.4/z)/(2.099,0):
z=z/c;
z=z/c+((1.099,0)-1)*z-(1.099,0);
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1232{
z=1/sqr(pixel/(1.099,0)),c=(1.4/z)/(2.099,0):
z=z*1/c;
z=(z-(z*z+c))+((1.099,0)-1)*z-(1.099,0);
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1233{
z=sqr(1/pixel*1.4/pixel):
z=(1.099,0)*z*(1-flip(z)*flip(z));
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1234{
z=sqr(1/pixel*1.4/pixel):
z=(1.099,0)*z*(1-conj(z)*conj(z));
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1235{
z=cosxx(1/pixel*1.4/pixel),c=flip(pixel)-1:
z=z-(sqr(pixel/z))/c-(sqr(pixel/c));
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1236{
z=cosxx(1/pixel*1.4/pixel),c=flip(pixel)-1:
z=z-(sqr(pixel/z))/c-(sqr(pixel/c));
z=z/c,
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1237{
z=flip(1/sqr(pixel*pixel+pixel)),c=cosxx(1.6*pixel-0.5):
c=pixel+z/c;
z=c-z*pixel,
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1238{
z=conj(1/sqr(pixel*pixel+pixel)),c=cosxx(1.6*pixel-0.5):
c=pixel+z/c;
z=c-z*pixel,
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1239{
z=conj(1/sqr(pixel*pixel+pixel)),
c=cotanh(1.6*pixel-0.5):
c=pixel+z/c;
z=c-z*pixel,
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1240{
z=conj(1/sqr(pixel*pixel+pixel)),c=cotanh(1.6*pixel-0.5):
z=pixel+z*1/c;
z=(cosxx(c-z*pixel))/0.6,
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1241{
z=exp(1/pixel),c=z*(1/pixel):
z=z*c-(z*cosxx(z)-z)/(pixel-c*c);
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1242{
z=exp(1/pixel),c=z*(1/pixel):
z=z*c-(z*cotanh(z)-z)/(pixel-c*c);
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1243{
z=(exp(1/pixel*0.91/pixel)),c=z*(1/pixel):
z=z*c-(conj(z*z)-z)/(pixel-c*c);
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1244{
z=(exp(1/pixel*0.91/pixel)),c=sqr(z*(1/pixel)):
z=z*c-(conj(z*z)-z)/(pixel-c*c);
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1245{
z=(sqr(1/pixel*0.91/pixel)),
c=sqr(z*(1.4/pixel)):
z=(pixel^pixel-z^z)/(pixel^pixel-c^c);
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1246{
z=cabs(1/pixel),
c=abs(1/pixel):
z=(exp(z)*1/c)/(pixel-c*c);
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1247 FractalFenderC modified(XAXIS_NOPARM) {;Modified Lee Skinner frm.
z=(pixel)/(5.8,2.01),
x=|real(z)|,c=cosxx(sqr(1/pixel)):
(z=cosxx(z)+pixel)*(1<x)+(z=z)*(x<=1),
z=sqr(z*1/c)+pixel,
x=|real(z)|,
x<=4 
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1248 FractalFenderC modified(XAXIS_NOPARM) {;Modified Lee Skinner frm.
z=imag(sqr(pixel)),
x=|real(z)|,c=cosxx(sqr(pixel)):
(z=imag(cosxx(z)+pixel))*(1<x)+(z=z)*(x<=1),
z=sqr(z/c)+(pixel*pixel),
x=|real(z)|,
x<=100 
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1249{
z=(1/pixel),
c=cosxx(sqr(1/pixel)):
z=z-2*(c*pixel);
z=c-2*(z*pixel);
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1250{
z=(1/pixel),
c=cosxx(sqr(1/pixel)):
z=z-2*cabs(c*pixel);
z=c-2*cabs(z*pixel);
|real(z)| <=100
  ;SOURCE: 28carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1251{;Modified ZEPPO frm of Brad Beacham
z=1/(pixel*pixel*pixel),
c=conj(sqr(1/pixel*0.91/pixel)):
z=conj(abs(imag(z/pixel)*c-real(z/pixel)))+flip(conj(abs(real(z/pixel)-imag(z/pixel))))-(1.099,0);
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1252{;Modified ZEPPO frm of Brad Beacham
z=1/(pixel*pixel*pixel),
c=cotanh(sqr(1/pixel*0.91/pixel)):
z=conj(abs(imag(z/c)*c-real(z/c)))+flip(conj(abs(real(z/c)-imag(z/c))))-(1.099,0);
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1253{;Modified ZEPPO frm of Brad Beacham
z=abs(1/(pixel*pixel*pixel)),
c=cosxx(sqr(1/pixel*0.91/pixel)):
z=((abs(imag(z*1/c)*c-real(z/c)))+flip(conj(abs(real(z*1/c)-imag(z*1/c))))-(1.099,0))/1.34;
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1254{;Modified ZEPPO frm of Brad Beacham
z=abs(1/(pixel*pixel*pixel)),
c=cosxx(sqr(1/pixel*0.91/pixel)):
z=((abs(imag(z*1/c)*c-real(z/c)))+flip(conj(abs(real(z*1/c)-imag(z*1/c))))-(2.099,0))/0.34;
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1255{;Modified ZEPPO frm of Brad Beacham
z=abs(1/(pixel*pixel*pixel)),
c=cosxx(sqr(0.56/pixel*1/pixel)):
z=(conj(abs(imag(z*1/c)*c-real(z/c)))+flip(conj(abs(real(z*1/c)-imag(z*1/c))))-(1.099,0));
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1256{
z=sqr(1/(pixel*pixel*pixel)),
c=exp(sqr(0.56/pixel*1/pixel)):
z=(abs(imag(conj(z*1/c)/(pixel-c*c)))*c+(cabs(real(flip(z*1/c)/(pixel-c*c)))))/0.6;
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1257{
z=sqrt(1/(pixel*pixel*pixel)),
c=sinh(sqr(0.56/pixel*1/pixel)):
z=(abs(imag(conj(z*1/c)/(pixel-c*c)))*c+(cabs(real(flip(z*1/c)/(pixel-c*c)))))/0.6;
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1258{
z=conj(1/(pixel*pixel*pixel)),
c=cosxx(sqr(0.56/pixel*1/pixel)):
z=(abs(imag(pixel/z))*cabs(real(pixel/c)))/(pixel-c*c);
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1259{
z=conj(1/(pixel*pixel*pixel)),
c=cosxx(sqr(0.56/pixel*1/pixel)):
z=(abs(real(pixel/z))*cabs(imag(pixel/c)))/(pixel-c*1/z);
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1260{
z=conj(1/(pixel*pixel*pixel)),
c=cosxx(sqr(0.56/pixel*1/pixel)):
z=(z-(abs(real(z/pixel)))*z-(cabs(imag(c/pixel))))/(pixel-z/c);
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1261{
z=conj(1/(pixel*pixel*pixel)),
c=cosxx(sqr(0.56/pixel*1/pixel)):
z=((abs(real(z-1/pixel)))*(cabs(imag(c-pixel))))/(1/pixel*1/pixel);
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1262{
z=sinh(pixel),
c=cosxx(pixel):
z=(z*z+c)/(pixel-c*c);
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1263{
z=cotanh(pixel*pixel),
c=cosxx(pixel):
z=abs(conj(imag(z*z+c)))*abs(imag(cosxx(z*z*c)))+2.224;
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1264{
z=sqr(pixel*pixel),
c=cosxx(sqr(1/pixel*0.91/pixel)):
z=sqr(pixel)-(abs(conj(imag(pixel+z*z))))*(flip(real(abs(pixel-c*c))));
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1265{
z=sqr(pixel*pixel),
c=cosxx(sqr(1/pixel*0.91/pixel)):
z=sqr(pixel)-(abs(conj(imag(pixel+z*z))))*(abs(real(flip(sqr(pixel+c*c)))));
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1266{
z=sqr(pixel*pixel),
c=cosxx(sqr(1/pixel*0.91/pixel)):
z=(sqr(pixel)-z)*(sqr(pixel)-c);
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1267{
z=1.5-pixel,
c=cosxx(pixel-1.5):
z=((z-(z*z))+(c-(1/c*c))+pixel)/(z*1/c);
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1268{
z=1.5-pixel,
c=cosxx(pixel-1.5):
z=((z-(z*z))+(c-(1/c*c))+sqr(pixel))/sqrt(z*1/c);
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1269{
z=sqr(1.5-pixel),
c=exp(pixel-1.5):
z=z-(conj(sqr(z-1)*conj(sqr(z-2)))*sqr(pixel/c+1))/(c-(pixel-c*c));
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1270{
z=sqr(0.5-pixel),
c=sqr(pixel-1.5):
z=z-(cosxx(sqr(z-1)*cosxx(sqr(z-2)))*sqr(pixel/c+1))/(c-(pixel-c*c));
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1271{
z=sqr(sqr(sqr(0.5-pixel))),
c=(sqr(pixel-1.5)):
z=((z*z+pixel)+(z*z+(z/pixel)))/(c-(pixel/c));
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1272{;Modified Tchebychev formula
z=sqr(sqr(sqr(0.5-pixel))),
c=z*z:
z=z-(pixel*(c*c*c-6*c*c+9*c-2));
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1273{
z=sqr(sqr(sqr(2.5-pixel))),
c=z-(pixel-1.5):
z=z*1/(c*c-1/pixel);
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1274{;Modified Newton
z=pixel,c=(1.099,0):
z3=z*z*z;
z4=z3*z;
z5=z4*z;
z=(3*z4+c)/(4*z3)
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1275{;Modified Newton
z=abs(pixel),c=(1.099,0):
z3=conj(z*z*z);
z4=flip(z3*z);
z5=z4*z;
z6=z5*z;
z=(3*z4+c)/(4*z3)
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1276{
z=abs(pixel),c=cabs(sqr(flip(pixel))):
c=c-c*1/z;
z=z-z*1/c;
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1277{
z=abs(pixel-1),c=cabs(sqr(conj(pixel))):
c=c-c*1/z;
z=z-z*1/c;
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1278{
z=abs(sqr(pixel-1)),c=cabs(sqr(sqr(pixel))):
z=2*cabs(z)-sqr(3*(z*4/c));
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1279{
z=abs(sqr(pixel-1)),c=cabs(sqr(sqr(pixel))):
z=(2*cabs(z)-sqr(3*(z*4/c)))/(pixel-c*c);
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1280{
z=conj(sqr(1/pixel)),c=sqr(conj(1/pixel)):
z=z-(z^(z^(1/z))-pixel)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1281{
z=conj(sqr(1/pixel)),c=sqr(conj(1/pixel)):
z=z-(z^(z^(1/z*1/z))-pixel)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1282{
z=cosxx(pixel),c=cotanh(pixel):
z=pixel^z*1/(pixel^c);
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1283{
z=sinh(pixel),c=tanh(pixel):
z=(pixel*pixel^z)*(1/(pixel*pixel^c));
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1284{
z=cotanh(1/pixel-0.5),c=cosxx(pixel-1)
z=(z-(cosxx(sqr(imag(z*z+c))))-z*1/c)/(pixel-c*c);
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1285{
z=cotanh(1/pixel*0.91/pixel),c=cosxx(pixel*pixel)
z=(z-(cosxx(sqr(conj(z*z*z+c))))-z*1/c)/(pixel-c*c);
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1286{
z=flip(imag(pixel)),c=(1.099,0)+real(pixel):
z=(conj(z*z)*1/c)+z*1/c;
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1287{
z=flip(imag(pixel)),c=(1.099,0)+real(pixel):
z=((conj(z*z)*1/c)+z*1/c)^pixel;
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1288{
z=flip(imag(pixel)),c=(1.099,0)+real(pixel):
z=(z-(conj(z*z*z*z)*1/c)+z*1/c)^pixel*pixel;
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1289{
z=sqrt(pixel),c=log(pixel):
z=((c/z)-pixel)/(pixel-c*c);
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1290{
z=sqrt(pixel),c=log(pixel):
z=((abs(z)/cabs(c))-pixel)/(pixel-c*c);
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1291{
z=log(sqr(1/pixel)),c=1/sqr(log(pixel)):
z=(z-(z^c^pixel))/(c*c-pixel);
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1292{
z=log(sqr(1/pixel)),c=1/sqr(log(pixel)),c1=z/c^c/z:
z=z*1/c1;
z=(z-(z^c^pixel))/(c*c-pixel);
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1293{
z=log(sqr(1/pixel)),c=1/sqr(log(pixel)),c1=z/c^c/z:
z=z/c1;
z=(z-(z^c1))/(c*c-pixel);
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1294{
z=1/sqr(sqr(pixel)),c=sqr(sqr(cosxx(pixel))):
z=z-(z+c-conj(imag(z*1/c)));
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1295{
z=1/pixel,c=1/sqr(pixel):
z=z-(z*pixel)-(c-(pixel/sqr(z*1/c)));
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1296{
z=1/pixel,c=(1/sqr(pixel)):
z=z-(z*pixel)-(c-(pixel/sqr(z*1/c)));
z=z+(z*pixel)+(c+(pixel/sqr(z*1/c))),
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1297{
z=1/pixel,c=(1/sqr(pixel)):
z=(z-(z*pixel))/((1.099,0)-c*c);
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1298{
z=real(pixel)+flip(imag(pixel)),
c=real(pixel)+conj(imag(pixel)):
z=(z*z+pixel)/(pixel*pixel+z);
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1299{
z=real(pixel)+flip(imag(pixel)),
c=real(pixel)+conj(imag(pixel)):
z=((z*z+pixel*pixel)/(pixel*pixel+z));
|real(z)| <=100
  ;SOURCE: 29carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1300{;based on formulas by Brad Beacham and Gordon Lamb
z=real(1/pixel)+flip(imag(1/pixel))
c=real(pixel)+flip(imag(pixel))
count=z/c,shift=(1.099,0):
a=(z^2.71828182845905)*(count<=shift)
b=(z*1/c)*(shift<count)
count=count+1/pixel
z=z-(a+b+c)/(pixel-c*c)
|real(z)| <=100  
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1301{;based on formulas by Brad Beacham and Gordon Lamb
z=real(1/pixel)+flip(imag(1/pixel))
c=real(pixel)+flip(imag(pixel))
count=z/c,shift=(1.099,0):
a=(z^2.71828182845905)*(count<=shift)
b=(z*1/c)*(shift<count)
count=count+sqr(1/pixel)
z=z-((a+b)*1/c)/(pixel-c*c)
|real(z)| <=100  
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1302{;based on formulas by Brad Beacham and Gordon Lamb
z=conj(real(1/pixel))+flip(imag(1/pixel))
c=conj(real(pixel))+flip(imag(pixel))
count=z*1/c,shift=(1.099,0):
a=(z^2.71828182845905)*(count<=shift)
b=(z*1/c)*(shift<count)
count=count/(cosxx(1/pixel))
z=z-((a+b)*1/c)/(pixel-c*c)
|real(z)| <=100  
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1303{;based on formulas by Brad Beacham and Gordon Lamb
z=conj(real(pixel))+flip(imag(pixel))
c=conj(real(1/pixel))+flip(imag(1/pixel))
count=abs(z*1/c),shift=1/(2.099,0):
a=(z^2.71828182845905)*(count<=shift)
b=(z*1/c)*(shift<count)
count=count/(cosxx(sqr(2.5/pixel)))
z=(z-sqr(a+b)^c)/(pixel*pixel+c)
z=(pixel-z*z)/(pixel-c*c)
|real(z)| <=100  
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1304{
z=sqrt(5+1.224)*cosxx(pixel),c=sqrt(pixel)^pixel:
z=cosxx(z+2)+(z/c)/(z-2);
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1305{;Modified Cubic_alt.
z=sqrt(pixel)*cosxx(pixel):
z=z^3+z^2;
|z-pixel|<=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1306{
z=sqr(pixel)*cosxx(pixel),c=1/sqr(pixel)^pixel:
z=(z^3+z^4+z^5+sqr(z^3));
|z-pixel|<=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1307{
z=sqr(1/pixel)*cotanh(1/pixel),c=1/sqr(pixel)^pixel:
z=(pixel*pixel+z)-(z^3+z^4+z^5+sqr(z^3));
|z-pixel|<=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1308{
z=sqr(1/pixel)*cotanh(1/pixel),c=1/sqr(pixel)^pixel:
z=((pixel*pixel+z)-cosxx(z^3+z^4+z^5+sqr(z^3)))/(pixel-c*c);
|z-pixel|<=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1309{
z=sqr(1/pixel)*cotanh(1/pixel),c=1/sqr(pixel)^pixel+z:
z=((z+pixel)+(z^2+pixel)+(z^4+pixel))/((z*1/c)+pixel);
|z-pixel|<=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1310{;Cardiod modified
z=cosxx(1/pixel)*imag(1/pixel),
x=flip(imag(1/pixel)),y=conj(real(1/pixel)),
c=x*(cosh(y)+x*sinh(y)):
z=(pixel-z*z)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1311{;Cardiod modified
z=cosxx(1/pixel)*imag(1/pixel),
x=flip(imag(1/pixel)),y=conj(real(1/pixel)),
c=x*(cosh(y)+x*sinh(y)):
z=1/sqr(z*z+pixel)/(pixel-c*c),
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1312{;Creates Faceted Glass with "G"
z=pixel,c=c1-pixel,
y=pixel/z-(1.099,0),
c1=conj(imag(pixel))+y:
z=z-(pixel*(pixel^z*1/c));
|real(z)|<=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1313{;Creates Faceted Glass with "G"
z=1/pixel,c=c1^2+c2^2,
c2=pixel/z-(1.099,0),
c1=conj(imag(pixel))+c2:
z=z*z+c+sin(z);
|real(z)|<=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1313A { ;Rearrangement of Carr1313, with no ghosting
z=1/pixel,c2=pixel/z-(1.099,0),c1=conj(imag(pixel))+c2
c=c1^2+c2^2:
z=z*z+c+sin(z)
|real(z)| <= 100
  ;SOURCE: form2.frm
  ;SOURCE: carr1499.frm
  ;SOURCE: to-bob-6.frm
}


Carr1314{;Creates Faceted Glass with "G"
z=1/pixel,c=c1^2+c2^2,
c2=pixel*pixel/z-(1.099,0),
c1=conj(imag(pixel*pixel))+c2:
z=z*z+c+sin(z);
|real(z)|<=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1315{;Creates Faceted Glass with "G".
z=1/pixel,c=c1^2+c2^2,
c2=pixel*pixel/z-pixel,
c1=conj(imag(pixel*pixel))+c2:
z=z*z+c+sin(z*z);
|real(z)|<=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1316{;Creates Faceted Glass with "G".
z=1/pixel,c=c1^2+c2^2,
c2=pixel*pixel/z-pixel,
c1=conj(imag(pixel*pixel))+c2:
z=z-(pixel*pixel+z)/(pixel-c*c);
|real(z)|<=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1317{;Creates Faceted Glass with "G".
z=1/pixel,c=(c1/c2^c2/c1),
c2=sqr(z-1),
c1=1/(pixel*pixel*pixel)+c2:
z=(pixel*pixel+z)/(pixel-c*c);
|real(z)|<=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1318{;Creates Faceted Glass with "G".
z=1/pixel,c=(c1/c2^c2/c1),
c2=sqr(z-1),
c1=1/(pixel*pixel*pixel)+c2:
z=(pixel*pixel+z)/c-(pixel-c*c);
|real(z)|<=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1319{
z=1/pixel,c=(c1/c2^c2/c1),
c2=sqr(z*z-1),
c1=1/(pixel*pixel*pixel)+c2:
z=z-(c*1/z);
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1320{
z=1/pixel,c=c1/c2,
c2=pixel+z,
c1=pixel+c2:
z=z*z+c;
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1321{
z=1/pixel,c=c1/c2,
c2=pixel+z,
c1=pixel+c2:
z=z*1/c;
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1322{
z=4/pixel,c=pixel*2/z-c1/c2,
c2=pixel+z,
c1=pixel+c2:
z=z*1/c+1/pixel;
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1323{
z=4/pixel,c=pixel*2/z-c1/c2,
c2=pixel+z,
c1=pixel+c2:
z=(pixel-z*1/c)/(pixel*pixel+1/z^c);
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1324{
z=4/pixel,c=pixel*2/z-c1/c2,
c2=1.75*(z*pixel),
c1=0.5/pixel+c2:
z=(z/c)/(pixel*pixel+1/z^c);
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1325{
z=4/pixel,c2=1.75*(z*pixel),
c1=0.5/pixel+c2,c=pixel*2/z-c1/c2:
z=z-(z/c)/(pixel*pixel+1/z^c);
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1326{
z=4/pixel,c2=1.75*(z*pixel),
c1=0.5/pixel+c2,c=pixel*2/z-c1/c2:
z=z*1/c;
z=(z-(z+c+1/pixel))*(z+(z-c-1/pixel));
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1327{
z=4/pixel,c2=1.75*(z*pixel),
c1=0.5/pixel+c2,c=pixel*2/z-c1/c2:
z=z/c+1/pixel;
z=(z-(z+c+1/pixel))*(z+(z-c-1/pixel));
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1328{
c=z*z,z=1/pixel:
z=z*1/c;
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1329{
c=z*z*z,z=1/pixel:
z=(z*1/c)/(pixel-c*c);
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1330{
c=z*z,z=1/pixel:
z=(z*1/c)/(pixel*pixel+z);
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1331{
c=z*z+pixel,z=1/pixel*0.91/pixel:
z=sqr(z*1/c)/(pixel*pixel+z);
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1332{
c=conj(imag(pixel))/z-2.5^(pixel+2.324)/(5/pixel),
z=(1/pixel^pixel+2.3):
z=z*1/c,
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1333{
c=z+1/z+1/pixel,z=real(pixel)+1.5:
z=(z*1/c);
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1334{
c=z+1/z+1/pixel,z=real(pixel)+1.5:
z=(z*1/c)/(z*z+c);
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1335{
c=z+1/z+1/pixel,z=imag(pixel)+1.5:
z=(z*1/c)/(pixel-(z*z+c));
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1336{
z=imag(pixel)+1.5,c=z+1/z+1/pixel:
z=sqr(z*1/c)/(pixel-(z*z+c));
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1337{
z=1/pixel,c=1/pixel:
z=(pixel-z*z)/(pixel-(z*z+c));
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1338{
z=1/pixel,c=1/pixel:
z=z-(pixel-z*z)/(pixel-(z*z+c));
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1339{
z=sqr(pixel),c=sqr(1/pixel):
z=z-(pixel-z*z)/(pixel-(z*z+c));
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1340{
z=sqr(pixel),c=sqr(1/pixel):
z=z-cosxx(pixel-z*z)/(pixel-(z*z+c));
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1341{
z=sqr(pixel),c=sqr(1/pixel):
z=z-cotanh(pixel-z*z)/(pixel-(z*z+c));
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1342{
z=sqr(pixel),c=sqr(1/pixel):
z=z-(pixel*pixel-z*z)/(pixel-(z*z+c));
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1343{
z=sqr(pixel),c=sqr(1.5/pixel):
z=z-(pixel-z*z*z+1/pixel)/(pixel-(z*z+c));
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1344{
z=cosxx(1/pixel),z2=flip(real(z)),z3=conj(imag(z)),
c=cotanh(1/pixel),z4=conj(sqr(pixel))/cosxx(sqr(pixel)):
z=(z*1/c)+z4;
z2=conj(z2^z3)/z;
z3=conj(z3^z4)/z;
z4=(1/z*z+z4)/(pixel-z*z+c),
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1345{
z=cosxx(1/pixel),c=cotanh(1/pixel),
z4=conj(sqr(pixel))/cosxx(sqr(pixel)):
z=((z*1/c)+z4)/(pixel-z*z+c);
z4=(1/z*z+z4)/(pixel-z*z+c),
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1346{
z=cosxx(1/pixel*0.91/pixel),c=cotanh(1/pixel),
z4=conj(sqr(pixel))/cosxx(sqr(pixel)):
z=((z*1/c)+z4)/(pixel-z*z+c);
z4=(1/z*z+1/pixel)/(pixel-z*z+c),
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1347{
z=cosxx(1/pixel*0.91/pixel),
c=cotanh(pixel*pixel),
z4=conj(sqr(pixel))/cosxx(sqr(pixel)):
z=((z*1/c)+z4)/(pixel-z*z+c);
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1348{
z=1/sqr(pixel*pixel),
c=sqr(pixel)+log(sqrt(z)):
z=z-(z*1/c)/(pixel-(z*z+c));
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1349{
z=sqr(pixel*pixel),
c=sqr(pixel)+log(cosxx(z))
c1=log(sqrt(sqr(pixel*pixel)))+c:
z=z-(z/c1)/(pixel-(z*z+c));
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1350{
z=pixel,
c=1/pixel,
c1=(z-1)+(c-1):
z=z-(z*1/c1)/(pixel-(z*z+c));
|real(z)| <=100
  ;SOURCE: 30carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1351{
z=pixel,
c1=(z-1)/(1/pixel),
c=(c1)/z:
z=((z*1/c)/z-(pixel-z*z));
|real(z)| <=100
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1352{
z=1/pixel,
c1=z/pixel*pixel,
c=(c1)*z:
z=z-(z*1/c)/(pixel-z*z+c);
|real(z)| <=100
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1353{
z=1/pixel*0.91/pixel,
c1=(1.099,0),
c=z*sqr(c1):
z=cosxx(z)+c+sin(z/c1)+cosxx(1/pixel);
|real(z)| <=100
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1354{
z=1/pixel*0.91/pixel,
c1=(1.099,0),
c=sqr(c1)*pixel:
z=z-(cosxx(z)+c+sin(z/c1)+cosxx(1/pixel));
|real(z)| <=100
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1355{;Carr-brot 
z=log(3.1416)+1/pixel:
z=z-(sqr(z)+pixel),
|z| <= 4
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1356{
z=1/pixel,c=cosxx(pixel):
z=(1/flip(sqr(z)+(1.099,0)))/(z*z*z*z+c),
|real(z)| <=100
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1357{
z=pixel,z1=4/sqr(sqr(sqr(1.099,0))),
c=cosxx(pixel)+sqr(cotanh(z1)):
z=z-(z*1/c)+cosxx(1/pixel),
|real(z)| <=100
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1358{
z=pixel,z1=4/sqr(sqr(sqr(1.099,0))),
c=cosxx(pixel)+sqr(cotanh(z1)):
z=(z-(z*1/c)+cosxx(1/pixel))/(pixel*pixel+z),
|real(z)| <=100
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1359{
z=flip(imag(pixel*pixel)),z1=sqr(sqr(sqr(0.3,0.6))),
c=pixel+sqr(cotanh(z^z1+1)):
z=(z-(z*1/c)+sqr(1/pixel))/(pixel-z*z+c),
|real(z)| <=100
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1360{;Modified Peter Jack (Newton variation) frm.
z=pixel:
z2=cotanh(z*z);
z3=cotanh(z*z*z);
z=cotanh(z-((z3-z*.25-1.25)/((z2*3-.25)+P1))),
|(z3-z*.25-1.25)| >= 0.000001
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1361{;Modified Peter Jack (Newton variation) frm
z=pixel:
z2=z-(z*z);
z3=z-(z*z*z);
z=(z-((z3-z*.25-1.25)/((z2*3-.25)+2.224))),
|real(z3-z*.25-1.25)| >= 0.000001
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1362{;Modified Peter Jack (Newton variation) frm
z=pixel,c=1/pixel:
z2=z-(z*z)/(pixel-c*c);
z3=z-(z*z*z);
z=(z-((z3-z*.25-1.25)/((z2*3-.25)+2.224))),
|real(z3-z*.25-1.25)| >= 0.000001
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1363{;Modified Peter Jack (Newton variation) frm
z=pixel,c=1/pixel:
z2=z-(z*z)/(pixel-c*c);
z3=z-(z*z*z)/(pixel-c*c);
z=(z-((z3-z*.25-1.25)/((z2*3-.25)+2.224))),
|real(z3-z*.25-1.25)| >= 0.000001
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1364{;Modified Peter Jack (Newton variation) frm
z=imag(pixel),c=1/pixel*0.91/pixel:
z2=z-(z*z)/(pixel-c*c);
z3=z-(z*z*z)/(pixel-c*c);
z=(z-((z3-z*.25-1.25)/((z2*3-.25)+2.224))),
|real(z3-z*.25-1.25)| >= 0.000001
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1365{;Modified Peter Jack (Newton variation) frm
z=abs(pixel),c=sqr(1/pixel*0.91/pixel):
z2=z-(z*z)/(pixel-c*c);
z3=z-(z*z*z)/(pixel-c*c);
z=(z-((z3-z*.25-1.25)/((z2*3-.25)+2.224))),
|real(z3-z*.25-1.25)| >= 0.000001
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1366{;Modified Peter Jack (Newton variation) frm
z=abs(pixel),c=sqr(1/pixel*0.91/pixel):
z2=z-(z*z)/sinh(pixel-z*z+c);
z3=z-(z*z*z)/sinh(pixel-z*z+c);
z=(z-((z3-z*.25-1.25)/((z2*3-.25)+2.224))),
|real(z3-z*.25-1.25)| >= 0.000001
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1367 (XAXIS)  {;Modified Scott LPS
z=pixel,c=1/((1.099,0)+3):
z=log(z)*sin(z)+c,
|z|<=100
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1368{
c=1/pixel,z=((1/pixel)^2.12)+1.25:
z=(z*z)+c,
|z|<=4
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1369{
c=1/pixel,z=((1/pixel)^2.12)+1.25:
z=z-(z*z+c+sinh(z))/(pixel-c*c),
|z|<=4
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1370 (XYAXIS) {;Jm Richard-Collard frm. modified.
z=pixel^2.132,c=z-(1-pixel)/2.5:
sq=z*z,z=(sq*sin(sq)+sq)+c,
|z|<=50
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1371{;Julia
z=pixel,c=(-0.399,-1.1)^1.62+0.0224:
z=z*z+c,
|z| <= 4
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1372{;Julia
z=pixel,c=-0.724^1.59+0.0224:
z=z*z+c,
|z| <= 4
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1373{;Julia
z=pixel,c=-0.784^1.2786+0.0229:
z=z*z+c,
|z| <= 4
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1374{;Julia
z=pixel,c=(-0.784^1.2786+0.0229)+(1.099,0):
z=z*z+flip(c-1.2),
|z| <= 4
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1375{;Julia
z=pixel,c=(-0.784^1.2786+0.0229)+(1.099,0):
z=z*z+log(c+0.8),
|z| <= 4
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1376{;Julia Serpent
z=pixel,c=(-0.74543^1.2796+0.0799)+(-0.3,0.09586):
z=conj(z*z)+conj(c+0.999978),
|z| <= 4
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1377{;Julia
z=pixel,c=(-0.76943^1.27996+0.0799)+(-0.34,0.8):
z=conj(z*z)+conj(c+0.9899978),
|z| <= 4
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1378{;Julia
z=pixel,c=1/pixel+(1.099,0):
z=(z*z)+(c-1.5),
|z| <= 4
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1379{;Julia
z=pixel,c=(0.35/pixel)-0.2998:
z=(z*z)+c,
|z| <= 4
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1380{
z=pixel,c=(-0.5,0.042089):
z=z^2+(c-0.25),
|z| <= 4
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1381{
z=pixel,c=(-0.5,0.042089):
z=(z^2)-(c+0.1745),
|z| <= 4
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1382{;SpNewton modified
z=sqr(sqr(pixel)):
z1=(z*z-1)*(z*z+0.16);
z2=4*z^3-1.68*z;
z=z-z1/z2 ,
|real(z)| <=100
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1383{;SpNewton modified
z=sqr(sqr(pixel)):
z1=(z*z-0.1/z)*(z*z+0.16);
z2=4*z^3-1.68*z;
z=z-z1/z2 ,
|real(z)| <=100
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1384{;Julia
z=pixel:
z=z^2*z+(-0.7456,0.2)+0.18890342;
|z| <=4
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1385{;Frm by Paul J. Horn, JuliCon07
z=pixel:
z=sqr(sqr(z))+conj(-1.2199085),
|z| <= 4
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1386{
z=pixel,c=z^(z-1):
z=(z-z*1/(cotanh(c)/cosh(c)))/(pixel-z*z+c);
z=z-z*1/(cotanh(c)/cosh(c)),
|z| <= 4
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1387(XAXIS_NOPARM){;FractalFenderC Modified
z=0.224,x=|z|,c=z*1/pixel:
(z=cosh(z)+c)*(1<x)+(z=z)*(x<=1),
z=sqr(z)+pixel,x=|z|,
x<=4
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1388(XAXIS_NOPARM){;FractalFenderC Modified
z=cotanh(pixel*pixel),x=|real(z)|,c=z/pixel^z:
(z=z-(cotanh(sqr(z/c))))*(1<x)+(z=z)*(x<=1),
z=z-(z*1/c)/(pixel*pixel+z),
x=|z|,
x<=4
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1389{;Julia
z=pixel-0.009:
z=sqr(z)+sqrt(3.1416)-1.505809882,
|z| <= 4
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1390{;Creates a Leopard Spotted Julia?
z=pixel-0.009:
z=sqr(z)+sqrt(0.3,0.6)-1.32,
|z| <= 4
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1391{;Julia?-Mandel?-Neither?
z=pixel-0.009:
z=sqr(z)+sqrt(z)-1,
|z| <= 4
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1392{
z=pixel-0.009:
z=z^2.099+sqrt(z)-1.1528063,
|z| <= 4
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1393{;Julia
z=pixel-0.009:
z=(z^2)+sqrt(0.6,0.3)-1.9904,
|z| <= 4
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1394{;Julia
z=pixel-0.019:
z=(z^2.09905)+sqrt(4.29908,-1.2)-3.288955;
|z| <= 4;
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1395{
z=pixel-0.009,c=sqrt(0.3,0.6)-1.32:
z=(z*z+c)/(pixel*pixel+z),
|real(z)| <=100
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1396{
z=pixel-0.009,c=sqrt(0.3,0.6)-1.32:
z=(z*z+c)/(pixel*pixel+z);
z=(z*1/c),
|real(z)| <=100
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1397{
z=sqrt(1/pixel)/pixel,c=sqrt(0.3,0.6)-1.32:
z=z-(z^pixel+c)+1/c,
|real(z)| <=100 
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1398{
z=sqrt(1/pixel)/pixel,c=sqrt(0.3,0.6)-1.32:
z=(z*z+c)/(z*1/c),
|real(z)| <=100 
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1399{;Mark Peterson; Mod. by T.J.E. Reed; Modified 
z=pixel:
z=tan(z*z)+(-0.74543, 0.2)+0.02,    
|z| <= 4
  ;SOURCE: 31carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1400{
z=pixel/0.999,c=sqrt(flip(pixel)):
z=sqr(conj(z))+c-1.5,
|z|<=4
  ;SOURCE: jo_we_05.frm
}


Carr1401{
z=pixel/0.999,c=sqrt(1/(1/(1/(1/pixel)))):
z=z^2.09+c-0.5,
|z|<=4
  ;SOURCE: jo_we_05.frm
}


Carr1402{;Julia (I think??)
z=pixel,c=sqrt(1/(1/(1/(5/pixel)))):
z=z*z+(c-1),
|z|<=4
  ;SOURCE: jo_we_05.frm
}


Carr1403{;Modified T.J.E. Reed formula;Julia
c=z=pixel:   
z=z*z+c,   
c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/3+z,    
|z| <= 4
  ;SOURCE: jo_we_05.frm
}


Carr1404{;Modified T.J.E. Reed formula;Julia
c=z=pixel:   
z=z*z+c,   
c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/6+z,    
|z| <= 4
  ;SOURCE: jo_we_05.frm
}


Carr1405{;Modified T.J.E. Reed formula;Julia
c=z=pixel:   
z=z*z+c,   
c=(1+flip(imag(sqrt(flip(c)))))*real(sqrt(conj(c)))/6+z,    
|z| <= 4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1406{;Julia (?) that produces math errors.
         ;Modified T.J.E. Reed formula
c=z=pixel/0.995:   
z=z*z+c,   
c=(0.5+flip(imag(sqrt(flip(c)))))*real(sqrt(conj(c)))/9+z,    
|z| <= 4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1407{;Ditto above
z=pixel/0.995,c=(-0.74543,0.2):   
z=z*z+c,   
c=(0.5+flip(imag(sinh(sqrt(flip(c))))))*real(sqrt(conj(tan(c))))/7+z,    
|z| <= 4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1408{;Ditto above
z=pixel/0.995,c=(-1.09989,0.595927):   
z=z*z+c,   
c=(0.5+flip(imag(sinh(sqrt(flip(c))))))*real(sqrt(conj(tan(c))))/9+z,    
|z| <= 4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1409{;Ditto above.
z=pixel/0.995,c=1/pixel:   
z=z*z+c,   
c=(1+flip(imag(cosh(sqrt(flip(c))))))*real(sqrt(conj(tanh(c))))/9+z,    
|z| <= 4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1410{;Ditto above
z=pixel-1,c=sqr(1/pixel):   
z=z*z+(0.3,0.6),   
c=(1+flip(imag(cosh(sqrt(conj(c))))))*real(sqrt(conj(tanh(c))))/7.9+z,    
|z| <= 4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1411{;Ditto above.
z=pixel,c=sqrt(sqr(z*z*z*z)):   
z=z*z+c,   
c=(1+flip(imag(cosh(sqrt(conj(c))))))*real(sqrt(conj(tanh(c))))/9+z,    
|z| <= 4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1412{;Ditto above.
z=pixel,c=(-0.7549,0.209981):   
z=z*z+c,   
c=(1+imag(conj(sqrt(c))))*(real(conj(sqrt(c))))/9+tan(z-0.2),    
|z| <= 4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1413{;Ditto above.
z=pixel,c=(-0.745,0.213):   
z=z^2+c;
c=(1+imag(conj(sqrt(c))))*(real(conj(sqrt(c))))/6+z,    
|z| <= 4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1414{;Ditto above.
z=tan(pixel),c=conj(-0.89895,0.377913):   
z=z^2+c;
c=(1+imag(conj(sqrt(c))))*(real(conj(sqrt(c))))/6+z,    
|z| <= 4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1415{;Ditto above.
z=tan(pixel),c=asinh(-0.89895,0.377913):   
z=z^2+c;
c=(1+imag(conj(sqrt(c))))*(real(conj(sqrt(c))))/6+z,    
|z| <= 4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1416{;Ditto above.
z=tan(pixel),c=1.224*(-0.89895,0.577913):   
z=z^2+c;
c=(1+imag(conj(sqrt(c))))*(real(conj(sqrt(c))))/9+z,    
|z| <= 4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1417{;Ditto above.
z=tan(cosxx(pixel)),c=1.224*(1.2,-0.09):   
z=z^2+c;
c=cotan(1+imag(conj(sqrt(c))))*tan(real(conj(sqrt(c))))/9+z,    
|z| <= 4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1418{;Ditto above.
z=tan(cosxx(pixel)),c=1.224*(abs(imag(pixel))):   
z=z^2+sin(pixel);
c=cotan(1+imag(1/conj(sqrt(c))))*(real(conj(sqrt(c))))/9+z,    
|z| <= 4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1419{;Julia frm ?
z=pixel,c=1/pixel:   
z=z*z+(-0.7564,0.21978)+sin(sqrt(z-0.51)),
c=conj(real(sqrt(c)))*flip(imag(sqrt(c)))/9+z,    
|z| <= 4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1420{;Julia ?
z=cosxx(pixel):   
z=((z*z)+0.5)+(1/log(real(pixel*pixel-1.5))-1.55);
|z| <= 4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1421{;Modified BUILTN.FRM Julia
z=pixel,  
c=((-0.7456,0.39562)*(|(-0.7456,0.2)|<=0)+(-0.7456,0.2) ):
z=sqr(z*z)+c,
c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z, 
|z| <= 4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1422{;Modified BUILTN.FRM Julia
z=pixel,  
c=((-0.7456,0.39562)*(|(-0.7456,0.2)|<=0)+(-0.7456,0.2) ):
z=(z*z)+c,
c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z, 
|z| <= 4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1423{;Modified BUILTN.FRM Julia
z=pixel,  
c=((1.099,0)*(|(-0.7456,0.42362)|<=0)+sqr(-0.7456,0.42362) ):
z=(z*z)+(0.4,0.35),
c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z, 
|z| <=4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1424{; Modified BUILTN.FRM Julia
z=((1-pixel)/2.5^0.75),  
c=((1.099,0)*(|(-0.7456,0.42362)|<=0)+sqr(-0.7456,0.42362) ):
z=(z*z)+(-1.76,-0.014),
c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z, 
|z| <=4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1425{;Modified BUILTN.FRM Manowar
z=pixel+(1.099,0),z1=z,c=pixel,
t=(4*(real(1/pixel)<=0)+real(1/pixel)*(0<1/pixel)):
oldz=z,
z=sqr(oldz)+z1+c,
z1=oldz,
c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z, 
|z| <= t
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1426{;Modified BUILTN.FRM Manowar
z=cotanh(pixel)+(1.099,0),z1=z,c=sin(pixel),
t=(4*(real(pixel)<=0)+real(pixel)*(0<pixel)):
oldz=z,
z=sqr(oldz)+z1+c,
z1=oldz,
c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z, 
|z| <= t
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1427{;Modified BUILTN.FRM Manowar
z=cotan(pixel)+(1/pixel),z1=z,c=sin(pixel),
t=(4*(real(pixel)<=0)+real(pixel)*(0<pixel)):
oldz=z,
z=sqr(oldz)+z1+c,
z1=oldz,
c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z, 
|z| <= t
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1428{;Julia,Modified BUILTN.FRM Julia
z=pixel, 
c=((0.3,0.6)*(|(1/pixel)|<=0)+(1/pixel)),
t=(4*(real(1/pixel)<=0)+real(1/pixel)*(0<1/pixel)):
z=sqr(z)+c;
c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z, 
|z|<=t
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1429{;Julia
z=pixel,c=(-0.7456,0.2):
z=z*z+c,
c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z,
|z| <=4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1430{;"Dog Bone" Julia
z=pixel,c=1/(-0.7456,0.2):
z=z*z+c,
c=tan((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z),
|z| <=4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1431{;Modified Julzpower from BUILTN.FRM
z=pixel+(p1),c=((0.3,0.6)*(|p1|<=0)+p1),
m=(2*(|p2|<=0)+p2):
z=z^real(m)+c,
c=tan((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z),
|z|<=4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1432{;Julia
z=pixel+(1.099,0),c=(-0.7456,0.2):
z=z*z+c,
c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z),
|z| <=4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1433{;Julia
z=pixel+(1.099,0),c =(-0.7456,0.2):
z=sqr(z)+c,
z=z+c/4,
|z| <=4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1434{;Julia
z=sqr(sqr((1-pixel)/2.5^0.75)),c=(-0.7456,0.212):
z=z*z+c,
z=z+c/4,
|z| <=4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1435{;Julia
z=sqr(sqr(sqr((1-pixel)/2.5^0.75))),c=(-0.7456,0.212):
z=z*z+c,
z=z+c/4,
|z| <=4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1436{;Interesting Julia manipulation.
z=pixel,
c=0.25*(-0.7456,0.2):
z=sqr(z)+c*4;
z=z+c/1.3,
|z| <=4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1437{;What-ja-macallit ?
z=pixel,
c=(0.5/pixel)-(-0.7456,0.2):
z=sqr(z)+(c-1.2);
z=z+c/2,
|z| <=4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1438{;Seems to make spiders, julias & mandels.
z=pixel,
c=(0.3/pixel)-(0.342,1.97):
z=sqr(z)+1/log(c);
z=z+c/2,
|z| <=4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1439{
z=1-(1/pixel)^3.13,
c=tan(abs(pixel)):
z=sqr(z)+(c^(1/-pixel));
z=z+c/2,
|z| <=4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1440{;Julia
z=pixel-(1/pixel)^4.13,
c=(-0.7456,0.2):
z=sqr(z)+c;
c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z),
z=z+c/2,
|z| <=4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1441{;Julia
z=conj(pixel)-(1/pixel)^4.13,
c=(-0.7456,0.2):
z=sqr(z)+c;
c=((1+sin(imag(sqrt(-c))))*sin(real(sqrt(-c)))/9+z),
z=z+c/2,
|z| <=4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1442{;Fractal Fender C Modified.
z=0.224,x=|z|,c=(-0.7456,0.2):
(z=cosh(z)+c)*(1<x)+(z=z)*(x<=1),
z=sqr(z)+pixel,
x=|z|,
|z|<=4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1443{;Fractal Fender C Modified.
z=0.224,x=|z|,c=(-0.7456,0.2):
(z=cosh(z)+c)*(1<x)+(z=z)*(x<=1),
z=sqr(z)+pixel,
c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z),
x=|z|,
|z|<=4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1444{;Pseudo Spider?
z=sin(pixel+1),c=z-(conj(1/pixel^2*pixel)):
z=z*z+c;
c=(z/1.05)+c/2,
|z| <=4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1445{;Spider variant.
z=sin(pixel+1),c=(-0.7456,0.4):
z=z*z+c;
c=(z/1.0489)+c/2,
z=1.34*(-z),
|z| <=4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1446{
z=sin(pixel+1),c=pixel:
z=z*z+c-1.49;
c=((4-flip(imag(sqrt(c))))*real(sqrt(c))/9+z);
|z| <=4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1447{
z=sin(pixel*pixel+1),c=pixel:
z=z*z+c-1.49;
c=((4-flip(imag(sqrt(c))))*real(sqrt(c))/9+z);
|z| <=4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1448{
z=cotan(pixel*pixel+1),c=tan(pixel):
z=z*z+c-1.49;
c=((4-flip(imag(sqrt(c))))*real(sqrt(c))/9+z);
|z| <=4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1449{
z=cotan(pixel*pixel+1),c=sqr(1/pixel*0.91/pixel):
z=z*z+c-1.49;
c=((4-flip(imag(sqrt(c))))*real(sqrt(c))/9+z);
|z| <=4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1450{
z=conj(pixel*pixel+1),c=sqr(flip(0.4,0.35)):
z=(z*z)+c-1.49;
c=((4-flip(imag(sqrt(c))))*real(sqrt(c))/9+z);
|z| <=4
  ;SOURCE: 32carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1451{;Creates Julia.
z=cotan(pixel*pixel+1),c=sqr(1/pixel*0.91/pixel):
z=(z*z)+c-1.49;
c=1/z*z+1/pixel,
|z| <=4
  ;SOURCE: jo_we_06.frm
}


Carr1452{
z=flip(pixel*pixel),c=conj(pixel*pixel):
z=(z*z)+c-1.49;
c=1/z*z+1/pixel,
|z| <=4
  ;SOURCE: jo_we_06.frm
}


Carr1453{;Modified ManP1IMJ
z=pixel,c=(0.3,0.6):
z=sqr(z);
z=z+c+imag(z),
c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z),
|z| <=4
  ;SOURCE: jo_we_06.frm
}


Carr1454{;Modified ManP1IMJ
z=flip(pixel),c=(0.3,0.6):
z=sqr(z);
z=z+c+real(z),
c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1455{;Modified ManP1IMJ
z=pixel,c=sqr(0.3,0.6):
z=z*z;
z=z+c+sin(z),
c=z+c/2,
|z| <=4
  ;SOURCE: jo_we_06.frm
}


Carr1456{;Modified ManP1IMJ
z=pixel,c=(-0.7456,0.2):
z=z*z;
z=z+c+sin(z),
c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z),
|z| <=4
  ;SOURCE: jo_we_06.frm
}


Carr1457{;Julia
z=(1-pixel)/2^pixel,c=pixel:
z=sqr(z);
z=z+sin(z)+c,
c=z+c/2,
c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1458{;Julia
z=pixel,c=(0.9/-3.48)-0.88/pixel:
z=z*z+c;
c=z+c/2.125,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z|<=4
  ;SOURCE: jo_we_06.frm
}


Carr1459{;Julia
z=cosxx(pixel),c=(-0.6456,0.33):
z=z*z+(c),
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1460{
z=pixel,c=sinh(0.3,0.6):
z=conj(sqr(z)+c)*conj(z+0.5)*conj(c-0.95),
c=z+c/2.125
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1461{
z=pixel,c=tanh(pixel):
z=conj(sqr(z)+c)*conj(z+0.75)*conj(c-0.95),
c=z+c/2.125
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1462{
z=pixel,c=cosh(pixel):
z=conj(sqr(z)+c)*conj(z+1)*conj(c-0.95),
c=z+c/2.125
|z| <=4
  ;SOURCE: jo_we_06.frm
}


Carr1463{
z=pixel,c=cosh(pixel):
z=conj(sqr(z)+c)*conj(z+1)*conj(c-0.95),
c=z+c/6.125
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1464{;Faceted Glass modified Mandel
z=c,c=pixel:
z=z*z+c,
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1465{;Julia
z=pixel:
z=z*z+(-0.7456,0.2)
|cosxx(z)| <= 4 || |conj(z)| <= 4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1466{;Faceted Glass InvMandel
z=c,c=1/pixel:
z=z*z+c,
|cabs(z)| <= 4 || |asin(z)| <= 4 || |sin(z)| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1467{;ConjMandel creates Faceted Glass
z=c,c=conj(pixel):
z=z*z+c,
|cabs(z)| <= 4 || |asin(z)| <= 4 || |sin(z)| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1468{;TanMandel creates Faceted Glass
z=c,c=tan(pixel):
z=z*z+c,
|cabs(z)| <= 4 || |cosxx(z)| <= 4 || |sinh(z)| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1469{;Julia
z=pixel+flip(-0.5),c=(-1.7621,-0.0141):
z=(z*z)+(c),
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1470{;Same as 1469 but "cart before the horse".
z=z1,z1=pixel+flip(-0.5),c=(-1.7621,-0.0141):
z=(z*z)+(c),
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1471{;Faceted Glass Julia
z=z1,z1=conj(pixel*pixel)+flip(-0.5),c=(-1.7621,-0.2141):
z=(z*z)+(c),
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1472{;Faceted Glass Julia
z=z1,z1=cosxx(pixel*pixel)+flip(-0.5),c=(-1.7621,-0.2141):
z=(z*z)+(c),
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1473{;Faceted Glass Julia
z=z1,z1=sqr(1/pixel*1/pixel*pixel)+flip(-0.5),c=(1.1,0.9):
z=(z*z)+(c),
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1474{;BatMandelbrot, Faceted Glass
z=c,c=(conj(1/pixel)^2.32)-1.25:
z=z*z+c,
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1475{;Julia
z=(flip(1/pixel)^2.32)-1.25,c=z:
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1476{;Julia??
z=(cosxx(pixel)^2.32)-1.25,c=conj(z):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1477{;??-Julia-??
z=tan(1/exp(pixel)^2.32)-1.25,c=conj(z):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
  ;SOURCE: jo_we_06.frm
}


Carr1478{;Julia
z=conj(cosxx(pixel)^2.32)-1.25,c=(0.9/-2.48)-conj(0.2/pixel):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1479{;A REALLY different Julia ??
z=1/(pixel*conj(5/pixel-0.724)),
c=(0.3,0.6):
z=(z*z+c)/1.3,
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1480{;Julia??
z=1/(pixel+pixel-(5/pixel-0.724)),
c=flip(z*pixel):
z=(z*z+c),
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1481{;Julia?
z=conj(1-pixel)/2.33^1.75,
c=(conj(tan(1/pixel))^1.32)-1.25:
z=(z*z+c),
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1482{;Julia?
z=conj(1-pixel)/2.33^1.75,
c=(-0.7456,0.2315):
z=(z*z+c),
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c-0.1/pixel)))/9+z),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1483{;Julia?
z=conj(1-pixel)/2.33^1.75,
c=imag(4.299,-1.2):
z=(z*z+c),
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c-0.1/pixel)))/9+z),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1484{;Julia?
z=(pixel+pixel)/(sqr(1/pixel)),
c=((pixel-1.5)^1.637)/(z-1.2/pixel):
z=(z*z+c),
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1485{;Julia? Faceted Glass
z=z1,z1=(pixel+pixel)/(flip(1/pixel*0.91/pixel+0.2/pixel)),
c=1/conj(pixel-1.5)/(conj(z)-1.4/pixel):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1486{;Julia, Faceted Glass.
z=z1,z1=(pixel+pixel)/(flip(1/pixel*0.91/pixel+4/pixel)),
c=conj(pixel-1.5)/(flip(z)-1.4/pixel):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1487{;Julia
z=(pixel+pixel)/(1/flip(1/pixel*0.91/pixel+0.9/pixel)),
c=conj(pixel-1.5)/(flip(z)-3.4/pixel):
z=z*z+c,
c=((1+flip(imag(sqrt(sinh(c)))))*real(sqrt(tanh(c)))/9+z),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1488{;Faceted Glass Julia
z=z1,z1=(pixel+pixel)/(1/flip(1/pixel*0.91/pixel+0.9/sqr(pixel))),
c=c1,c1=conj(pixel-1.5)/(flip(z)-3.4/pixel):
z=z*z+c,
c=((1+flip(imag(sqrt(sinh(c)))))*real(sqrt(tanh(c)))/9+z),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1489{;Julia
z=(pixel+pixel)/(flip(1/pixel)),
c=z*(pixel)/flip(pixel-0.1):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1490{;Julia
z=(pixel+pixel-1)/(flip(1/-pixel)),
c=z*(pixel+1)/flip(pixel-0.1):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1491{;Julia
z=(pixel+pixel-1)/(flip(1/-pixel)),
c=z*sqr(pixel-1)/flip(pixel-0.1):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1492{;Julia
z=(pixel+pixel-1)/(flip(1/pixel*0.91/pixel)),
c=z*sqr(pixel)/flip(1.099,0):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1493{;VERY different Julia
z=1/(pixel+pixel)/(cosxx(1/pixel*4/pixel)),
c=z*conj(pixel)/((-1.76,-0.014)/(3/pixel)):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1494{;Julia
z=1/(pixel+pixel)/(cotan(1/pixel*4/pixel)),
c=z*1/conj(pixel+pixel)/((-5.742,-0.009)/(6/pixel)):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1495{;Julia
z=1/(pixel+pixel)/(cotan(1/pixel*4/pixel)),
c=z*1/conj(pixel+pixel)/((sqr(z-0.25)*pixel)/(6/pixel)):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
  ;SOURCE: jo_we_06.frm
}


Carr1496{;Julia
z=1/(pixel+pixel)/(tan(sqr(1/pixel*4/pixel))),
c=z*1/(pixel+pixel)/((sqr(pixel*z-1.55)*pixel)/(6/pixel)):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1497{;Julia
z=sqr(1-pixel)/(2^pixel-0.5),
c=z*1/conj(pixel+pixel)/(pixel/(6/pixel)):
z=sqr(z);
z=z+sin(z)+c,
c=z+c/2,
c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1498{;Julia?
z=1/(pixel*conj(5/pixel-0.724)),
c=pixel+(-0.7456,0.2):
z=sqr(z);
z=z+sin(z)+c,
c=z+c/2,
c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1499{;Julia
z=1/(pixel+pixel-(5/pixel-0.724)),
c=flip(z*pixel):
z=(z*z+c),
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
  ;SOURCE: 33carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1500{;Julia?
z=0.1/(pixel+pixel)/(flip(1/pixel)),
c=conj(pixel-1.5)/(z-1.2/pixel):
z=(z*z+c),
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1501{;Julia?
z=0.1/(pixel+pixel)/(flip(1/pixel*0.88/pixel)),
c=((-0.7456,0.2)-1.9/pixel)/cosxx(z*z-1.2/pixel):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1502{;Julia?
z=0.1/(pixel+pixel)/(flip(1/pixel*0.88/pixel)),
c=((-4.299,1.2)-1.9/pixel)/cosxx(z*z-1.2/pixel):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1503{;Julia?
z=1/(pixel+pixel)/(flip(1/pixel*6/pixel)),
c=((0.6,1.1))/cosxx(z*z-6/pixel):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1504{;Julia?
z=1/(pixel+pixel)/(flip(1/pixel*6/pixel)),
c=((0.6,1.1))/imag(z*z-6/pixel):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1505{;Julia?
z=0.1/(pixel+pixel)/(flip(1/pixel)),
c=conj(pixel-1.5)/(z-1.2/(1/flip(pixel))):
z=(z*z+c)/1.3,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1506{;Julia?
z=0.1/cosxx(pixel+pixel)/(flip(1/pixel)),
c=conj(pixel-1.5)/(z-1.2/(1/flip(pixel))):
z=(z*z+c)/1.3,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1507{;Julia?
z=0.1/(pixel+pixel+pixel)/(flip(6/pixel)),
c=conj((pixel+pixel)-1.5)/(z-1.2/(4/flip(pixel))):
z=(z*z+c)/1.4,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1508{;Julia?
z=0.1/(pixel^pixel+pixel)/(flip(6/pixel)),
c=flip((pixel+pixel)-1.5)/(z-1.2/(4/flip(pixel))):
z=(z*z+c)/1.4,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1509{;Julia?
z=0.1/(pixel+pixel)/(flip(1/pixel*0.88/pixel)),
c=conj(pixel*pixel)-(0.5456,0.2):
z=sqr(z);
z=z+sin(z)+c,
c=z+c/2,
c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z),
|z| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1510{;Julia?
z=0.1/(pixel+pixel)/(flip(1/pixel*0.88/pixel)),
c=conj(pixel*pixel)/flip(pixel)/cosxx(pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z),
|z| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1511{;Julia?
z=0.1/(pixel+pixel)/(flip(1/pixel*0.88/pixel)),
c=exp(flip((pixel+pixel)-1.5)/(z-1.2/(4/flip(pixel)))):
z=z*z+c;
c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z),
|z| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1512{;Julia?
z1=(pixel-0.5)^(sqrt(5)^1/pixel),
z=(z1)/(cosxx(pixel)),
c=conj(1-pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1513{
z=(conj(1/pixel)^2.32)-1.25,
c=(flip(1/pixel)^2.32)-1.25:
z=z*z+c;
c=z+c/2.125,
|z| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1514{;Julia?
z=pixel*(pixel^2.32),
c=(tan(pixel)^2.32):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1515{;Julia
z=real(pixel)+flip(imag(pixel)*(-0.3,0.3)),
c=(-0.7456,0.2)+(1.099,0)*real(pixel)+flip(imag(pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1516{;Julia
z=conj(real(pixel))+flip(imag(pixel)),
c=cosxx(4/pixel)+(2.924)*real(pixel)+flip(imag(pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1517{;Julia
z=conj(real(pixel))+flip(imag(pixel)),
c=exp(4/pixel)*real(pixel)+flip(imag(pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1518{;Julia
z=conj(abs(1/pixel))+(real(pixel))+flip(imag(pixel)),
c=exp(4/pixel)*real(pixel)+flip(imag(pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1519{;Julia
z=conj(abs(0.6/pixel))+(real(pixel))+flip(imag(pixel)),
c=exp(0.4/pixel)*real(pixel)+flip(imag(pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1520{;Julia
z=flip(exp(-5.742,-0.009))+(real(pixel))+flip(imag(pixel)),
c=exp(0.4/pixel)*real(pixel)+flip(imag(pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1522{;Julia
z=cotan(exp(-0.6882,-0.1729))+(real(pixel))+flip(imag(pixel)),
c=sqr(0.4/pixel)*real(pixel)+flip(imag(pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1523{;Julia
z=sin(exp(-5.742,-0.009))+(real(pixel*pixel))+flip(imag(pixel*pixel)),
c=sqr(0.1/pixel)*real(pixel*pixel)+flip(imag(pixel*pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1524{;Julia
z=conj(sqr(1/pixel)^2.12)+1.25,
c=sqr(0.1/pixel)*real(pixel*pixel)+flip(imag(pixel*pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1525{
z=(1/pixel)/1.85,
c=((1/pixel)/2)/(z-2.5)^conj(imag(pixel-1)):
z=z*z+c,
|real(z)| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1526{
z=(1/pixel)/1.85,
c=((1/pixel-0.524)/4)/conj(z-1.1)*z^conj(cotanh(pixel-0.2)):
z=z*z+c,
|real(z)| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1527{
z=(1/pixel)/1.85,
c=((1/pixel-0.524)/4)/conj(z-1.1)*z*z^conj(cotanh(pixel-0.2)):
z=z*z+c,
|real(z)| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1528{;Julia
z=(1/pixel*0.88/pixel),
c=((1/pixel-0.524)/4)/conj(z-1.1)*z*z^conj(cotanh(pixel-0.2)):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1529{;Julia
z=(1/pixel)/1.75,
c=((1/pixel)/2)/z-2.5^tanh(pixel-1):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1530{;Julia
z=sqr(1/pixel)/1.75,
c=((1/pixel)/2)/z-2.5^sin(pixel-1):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1531{;Julia
z=sqr(1/pixel)/1.75,
c=(2/pixel)/(z-2.5^cosxx(pixel-1)):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1532{;Julia
z=conj((1/pixel)/1.91),
c=(0.33/pixel)/z-2.5^cotanh(pixel-1.124):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1533{
z=(1/pixel)/1.85,
c=((1/pixel)/2)/(z-1.25)^conj(real(pixel-0.25)):
z=z*z+c,
|real(z)| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1534{
z=(1/pixel)/1.85,
c=((1/pixel)/2)/(z-1.25)^conj(real(pixel-0.25)):
z=z*z+c+sin(z),
|real(z)| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1535{;Julia
z=real((1/pixel)/1.91)/(5.7,-1.3),
c=(1/pixel*0.91/pixel):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1536{;Julia
z=((1/pixel)/0.71)/(pixel-1.324),
c=z-2.5^(pixel-1.324):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1537{;Julia
z=1/(pixel*pixel),
c=cosxx(pixel*pixel)/tan(pixel-z):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1538{
z=1/(pixel*pixel),
c=cosxx(pixel*pixel)/tan(pixel-z):
z=z*z+c,
|real(z)| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1539{;Julia
z=((1-pixel)/0.413)+1.924,
c=z-1/conj(z*z)+conj(pixel-z):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1540{
z=sqr(1/pixel)+sqr(pixel),
c=sin(tan(exp(z-1))):
z=z*z+c,
|real(z)| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1541{;Julia
z=conj(pixel),
c=z*z+pixel:
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1542{;Spider type.
z=flip(pixel*pixel),
c=pixel^(z-1):
z=z*z+c,
c=z+c/2.125
|real(z)| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1543{;Spider type.
z=conj(pixel*pixel),
c=flip(pixel)^(z-1):
z=z*z+c,
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1544{
z=(pixel*pixel)^0.54,
c=sqr(pixel)^(z-0.55):
z=(z*z+c),
|real(z)| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1545{;Spider type
z=(pixel*pixel)^0.54,
c=sqr(pixel)^(z-0.55):
z=(z*z+c),
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1546{;Spider type.
z=(pixel*pixel)^0.54,
c=cos(pixel)/sin(pixel):
z=(z*z+c),
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1547{;Julia
z=(pixel*pixel)^0.54,
c=real(pixel)/imag(pixel):
z=(z*z+c),
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1548{;Julia
z=(pixel*pixel)-sqrt(pixel*pixel),
c=sin(pixel)/cos(pixel):
z=sqr(z)+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1549{;Julia
z=(pixel*pixel)-log(pixel*pixel),
c=sin(pixel)/cos(pixel):
z=sqr(z)+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 34carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1550{;Julia, use floating point.
z=1/pixel-sqrt(1/pixel),
c=sin(1/pixel)/cosxx(1/pixel):
z=sqr(z)+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1551{;Julia
z=conj(1/pixel)/sqr(1/pixel),
c=cotanh(1/pixel)/cosh(1/pixel):
z=sqr(z)+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1552{
z=conj(pixel)/sqr(pixel),
c=conj(1/pixel)/exp(1/pixel):
z=(sqr(z)+c)/1.3;
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1553{;Spider type.
z=cos(pixel)/sin(0.3,0.6),
c=z/(sin(1/pixel+1)/cos(-0.7456,0.2)):
z=(sqr(z)+c);
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1554{;Crystalbrot.
z=sqr(pixel^pixel)/(tan(pixel)),
c=(sqr(2/pixel))/(cos(2/pixel)*sin(2/pixel)):
z=z*z+c;
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1555{;Julia
z=(pixel^pixel)/(cotan(pixel)),
c=(cos(1/pixel))/(cos(2/pixel)*sin(2/pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1556{;Spider type.
z=(pixel^pixel)/(cotan(pixel)),
c=(cos(1/pixel))/(cos(2/pixel)*sin(2/pixel)):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1557{;Spider type.
z=(pixel^pixel)/(conj(pixel)),
c=(cos(1/pixel))/(cos(2/pixel)*sin(2/pixel)):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1558{;Mandel type.
z=conj(pixel^pixel)/(flip(pixel)),
c=cos(pixel)/(conj(pixel)*cosxx(2/pixel)):
z=z*z+c;
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1559{;Julia
z=conj(pixel^pixel)/(flip(pixel^pixel)),
c=cos(pixel)/(conj(pixel)*cosxx(3/pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1560{;Julia
z=conj(pixel*pixel)/flip(pixel*pixel),
c=cos(pixel)/conj(pixel)^cosxx(3/pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1561{;Julia
z=conj(2/pixel*(2*pixel))/(flip(1-pixel)),
c=(cos(pixel))/(conj(3/pixel)^cosxx(pixel)):
z=(z*z+c);
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1561-A{;Julia,Faceted Glass
z=z1,z1=conj(2/pixel*(2*pixel))/(flip(1-pixel)),
c=(cos(pixel))/(conj(3/pixel)^cosxx(pixel)):
z=(z*z+c);
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1562{;Julia
z=sin(1/pixel)/(flip(1-pixel)),
c=(tan(pixel))/(conj(3/pixel)-cosxx(pixel)):
z=(z*z+c);
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1563{;Spider type.
z=sin(1/pixel)/(flip(1-pixel)),
c=(tan(pixel))/(conj(3/pixel)-cosxx(pixel)):
z=(z*z+c);
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1564{;Julia.
z=flip(pixel*pixel)/tan(sqr(pixel-0.5)),
c=sqr(sqr(pixel))/conj(sqr(pixel)):
z=(z*z+c);
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1565{;Mandelbrot type.
z=flip(pixel*pixel)/cosh(sqr(pixel-0.5)),
c=sqr(sqr(pixel))/sinh(sqr(pixel)):
z=(z*z+c);
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1566{;Julia.
z=(1/pixel*0.88/pixel),
c=((pixel^z)-1)*(pixel^(z-1)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1567{;Julia.
z=sqr(1/pixel*0.88/pixel),
c=((pixel^z)-1)/conj(pixel^(z)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1568{;Julia.
z=conj(sqr(1/pixel*0.88/pixel)),
c=((pixel^z)-1)/exp(pixel^(z)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1569{;Mandelbrot type.
z=1/conj(tan(0.91/pixel*0.88/pixel)),
c=(cos(pixel))/(conj(3/pixel)^cosxx(pixel)):
z=z*z+c;
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1570{;Mandelbrot type.
z=((-0.7456,0.2)+1)/pixel:
c=pixel*pixel/(0.3,0.6):
z=z*z+c;
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1571{;Mandel type.
z=((-0.7456,0.2)+1)/pixel,
c=pixel*pixel/(0.3,0.6)*(-0.3,0.3):
z=z*z+c;
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1572{;Spider type.
z=((-0.7456,0.2)+1)/pixel,
c=pixel*pixel/(0.3,0.6)*(-0.3,0.3):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1573{;Mandel type.
z=((-0.7456,0.2)+1)/pixel,
c=tan(pixel*pixel)/(0.3,0.6)*(-0.3,0.3):
z=z*z+c;
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1574{;Mandel type.
z=((-0.7456,0.2)+1)/pixel,
c=1/cos(pixel*pixel)/(0.3,0.6)*(-0.3,0.3):
z=z*z+c;
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1575{;Julia.
z=((-0.7456,0.2)+1)/pixel,
c=1/cos(pixel*pixel)/(0.3,0.6)*(-0.3,0.3):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1576{;Mandelbrot type.
z=((-0.94562,0.329)+1)/(pixel),
c=4/sin(3/tan(pixel*pixel))/((0.3,0.6)*(-0.3,0.3)):
z=z*z+c;
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1577{;Julia.
z=(conj(sin(2/pixel)))/sin(pixel),
c=((-0.3,0.3)/(0.3,0.6))/conj(pixel*pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1578{;Julia.
z=((-0.7456,0.2)+1)/pixel,
c=asin(pixel*pixel)/(0.3,0.6)*(-0.3,0.3):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1579{;Julia
z=1/asin(pixel*(1.099,0))/(4/sin(pixel*pixel)),
c=asin(pixel*pixel)/(0.3,0.6)*(-0.3,0.3):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1580{;Julia.
z=sqr(0.654,0)+sqr(pixel)-1.5,
c=sqr(z-0.1)/((0.654,0)-asin(1/pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1581{;Spider.
z=log(0.654,0)+sqrt(pixel)-0.75*(1/pixel),
c=sqrt(z-0.35)/((0.654,0)-asin(1/sqrt(pixel))):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1582{;Julia.
z=conj(cos(tan(0.18/pixel)))-0.25,
c=sin(conj(exp(1.79/pixel)))/(1.5/pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1583{;Spider type.
z=conj(cos(tan(0.18/pixel)))-0.25,
c=sin(conj(exp(1.79/pixel)))/(1.5/pixel):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1584{;Mandelbrot type.
z=conj(cos(tan(0.18/pixel)))-0.25,
c=sin(conj(exp(1.79/pixel)))/(1.5/pixel):
z=z*z+c;
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1585{;Julia.
z=conj(sin(cotan(1.18/pixel*1.12/pixel)))-0.25,
c=cosxx(conj(exp(1.79/pixel)))/(0.59/pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1586{;Hmmmmmmm....
z=conj(sin(cotan(1.18/pixel*1.12/pixel)))-0.25,
c=cosxx(conj(exp(1.79/pixel)))/(0.59/pixel):
z=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
c=z*z+c;
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1587{;Julia
z=((1/cosxx(1/sin(cotanh(1.18/pixel)))-0.25)/(conj(sqr(0.5/pixel))))-0.5,
c=1/cosxx(1/conj(asin(0.79/pixel)))-0.5:
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1588{;Julia.
z=1/asin(pixel),
c=1/conj(pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1589{;Julia.
z=1/acos(pixel),c=1/asin(pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1590{;Spider type.
z=1/acos(pixel),
c=1/asin(pixel):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1591{;Spider type.
z=1/acos(pixel+pixel),
c=1/asin(pixel):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1592{;Julia.
z=pixel/atan(pixel),
c=(1+pixel)/atan(pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1593{;Julia.
z=pixel/(1/asin(pixel)),
c=(1+pixel)/conj(pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1594{;Julia.
z=pixel/(2/acos(pixel+0.33)),
c=(1+pixel)/(cosxx(2/pixel-0.25)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1595{;Julia.
z=pixel/(2/acos(1/pixel*pixel+0.33)),
c=(1+1.5/pixel)/(cosxx(2/pixel-0.25)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1596{;Spider type.
z=pixel/(2/acos(1/pixel*pixel+0.33)),
c=(1+1.5/pixel)/(cosxx(2/pixel-0.25)):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1597{;Mandelbrot type.
z=pixel/(2/acos(1/pixel*pixel+0.33)),
c=(1+1.5/pixel)/(cosxx(2/pixel-0.25)):
z=z*z+c;
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1598{;Spider type.
z=asin(pixel)/(2/acos(1/pixel*pixel+0.33)),
c=(1+sin(pixel))/(1/conj(cosxx(2/pixel-0.25))):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1599{;Julia
z=sqrt(1/asin(pixel)),
c=(1+sin(pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 35carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1600{;Julia.
z=acos(exp(1/atanh(pixel-0.5))),
c=sqr(1+asin(pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1601{;Julia.
z=(1/log(pixel/0.2)-conj(1/pixel))/(acos(pixel)),
c=pixel*pixel/(asin(pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1602{;Spider type.
z=(1/log(pixel/0.2)-conj(1/pixel))/(acos(pixel)),
c=pixel*pixel/(asin(pixel)):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1603{;Mandelbrot type.
z=(1/log(pixel/0.2)-conj(1/pixel))/(acos(pixel)),
c=pixel*pixel/(asin(pixel)):
z=z*z+c;
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1604{;Julia.
z=(1/log(pixel/0.2)-1/conj(1/pixel))/(acos(pixel)),
c=conj(pixel*pixel)/(1/asin(pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1605{;Julia.
z=(1-pixel)/asinh(pixel+0.5),
c=(pixel)/(1/asin(1-pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1606{;Julia.
z=1/asinh(pixel),
c=log((pixel+4/pixel)/(1/asin(1-pixel))):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1607{;Julia.
z=0.9/pixel,
c=exp(pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1608{;Spider type.
z=(-0.3,0.3)*pixel,
c=pixel*pixel:
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1609{;Julia.
z=pixel+asin(conj(pixel)),
c=1+pixel*pixel:
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1610{;Julia.
z=1/cosxx(pixel)+1/asin(conj(pixel))-0.5,
c=1.34/(1+sqr(pixel*pixel+sin(1/pixel))):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1611{;Spider type.
z=1/cos(pixel)+2/cos(conj(pixel))-0.5,
c=1.34/(1+sqr(pixel*pixel+sin(1/pixel))):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1612{;Julia.
z=(1/cos(pixel)/cos(1/conj(pixel)))-2/pixel,
c=2.34/(1+sqr(pixel*pixel+1/asin(1/pixel))):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1613{;Julia.
z=(1/sin(pixel)/cos(1/flip(pixel)))-1.5/pixel,
c=2.34/(1.5+sqr(pixel*pixel+2/atan(1/pixel))):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1614{;Spider type.
z=(1/sin(pixel)/cos(1/flip(pixel)))-1.5/pixel,
c=2.34/(1.5+sqr(pixel*pixel+2/atan(1/pixel))):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1615{;Julia.
z=(1/cos(pixel)/sin(1/flip(pixel)))-2.5/pixel,
c=2.34/(1.75+sqr(pixel*pixel+2/acos(1/pixel))):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1616{;Spider type.
z=(1/cos(pixel)/sin(1/flip(pixel)))-2.5/pixel,
c=2.34/(1.75+sqr(pixel*pixel+2/acos(1/pixel))):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1617{;Julia.
z=(2.7/sin(pixel)/cos(1/flip(pixel)))-1.5/pixel,
c=2.34/(3.5+sqr(pixel*pixel+2/atan(1/pixel))):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1618{;Julia
z=(2.7/sin(pixel+pixel)/cos(1/flip(pixel)))-1.5/pixel,
c=2.34/(3.5+sqr(pixel*pixel+2/atan(1/pixel))):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1619{;Julia.
z=1/acos(1+pixel*pixel)/(1/asin(1-pixel)),
c=3.34/(1.5+sqr((pixel+0.5)*(pixel+0.5)+atan(pixel+pixel))):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1620{;Julia.
z=1/sin(1+2.23*(pixel))/(1/sin(1-pixel)),
c=0.34/(0.25+conj((pixel+0.5)*(pixel+0.5)+atan(pixel+1/pixel))):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1621{;Julia.
z=exp(1+2.23*(pixel))/(sqr(1-pixel)),
c=0.34/(0.25+conj(asin((pixel+0.5)*(pixel+0.5))+atan(pixel+1/pixel))):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1622{;Julia.
z=2/sin(pixel)/cos(1/pixel*1/pixel),
c=2/sin(3/pixel)/(cos(3/pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1623{;Spider type.
z=2/sin(pixel)/cos(1/pixel*1/pixel),
c=2/sin(3/pixel)/(cos(3/pixel)):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1624{;Julia.
z=3/sin(pixel)/cos(1/pixel*1/pixel),
c=2/sin(4/pixel)/(cos(4/pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1625{;Julia.
z=3/sin(1/pixel*1/pixel)/(2.5/cos(pixel*pixel)),
c=2/cosxx(4/pixel-1)/(cosxx(4/pixel+1)):
z=z*z+c;
c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1626{;Julia.
z=0.7/sin(1/pixel*1/pixel)/(2.5/cos(pixel*pixel)),
c=2/cosxx(4/pixel-1)/(cosxx(4/pixel+1)):
z=z*z+c;
c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1627{;Julia.
z=0.55/sinh(1/pixel)/(2.5/abs(pixel*1.33)),
c=0.38/cos(4/pixel-1)/(cos(4/pixel+1)):
z=z*z+c;
c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1628{;Julia.
z=2/sin(pixel)/(cos(1/pixel*1/pixel*0.91/pixel)),
c=imag(2/sin(3/pixel))/imag(cos(3/pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1629{;Julia.
z=(sqrt(pixel)^pixel)/sqr(sqr(pixel)),
c=(-0.3,0.3)/log(pixel+1/pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1630{;Julia.
z=(sqrt(pixel)^pixel)/sqr(sqr(1/asin(pixel))),
c=acos(pixel)/acos(pixel+1/pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1631{;Julia.
z=asin(sqrt(pixel)^pixel)/sqr(sqr(tan(1/asin(pixel)))),
c=acos(pixel)/acos(pixel+1/pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1632{;Julia.
z=sin(pixel)/cos(pixel),
c=(z+conj(pixel))/(z+exp(pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1633{;Spider type.
z=sin(pixel)/cos(pixel),
c=(z+conj(pixel))/(z+exp(pixel)):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1634{;Julia.
z=sin(pixel)/cos(pixel),
c=(z+conj(pixel))/(z+exp(pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1635{;Julia.
z=1/-sin(1/pixel*0.91/pixel),
c=1/-conj(5/pixel*0.88/pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1636{;Julia.
z=1/sin(1/pixel*0.91/pixel)*1/pixel,
c=1/conj(5/pixel*0.88/pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1637{;Julia.
z=sin(1/cosxx(1/pixel)),
c=1/atan(1/pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1638{;Julia.
z=(1/cosh(1/cotanh(0.5/pixel))),
c=1/cosh(1/tanh(1/pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1639{;Julia.
z=conj(1/cosh(1/cotanh(0.5/pixel))),
c=flip(1/cosh(1/tanh(1/pixel))):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1640{;Julia.
z=conj(1/sinh(1/tanh(0.5/pixel))),
c=flip(1/sinh(1/cosh(1/pixel))):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1641{;Spider type.
z=conj(1/sinh(1/tanh(0.75/pixel))),
c=conj(1/sinh(1/cosh(1/pixel))):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1642{;Spider type.
z=1/tan(1/conj(1/sinh(1/tanh(0.75/pixel)))),
c=1/tan(1/conj(1/sinh(1/cosh(1/pixel)))):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1643{;Julia.
z=sqr(1/sin(1/pixel)),
c=1/conj(sqr(sqr(1/pixel*0.88/pixel))):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1644{;Spider type.
z=sqr(sqr(1/sin(1/pixel))),
c=1/conj(sqr(sqr(1/pixel*0.88/pixel))):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1645{;Spider type.
z=1/cos(pixel)/(1.099,0)/pixel,
c=1/sin(pixel)/(1.099,0)/pixel:
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1646{;Mandel type.
z=1/tan(pixel)/(-0.7456,0.2)/pixel,
c=1/tan(pixel)/(-0.7456,0.2)/pixel:
z=z*z+c;
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1647{;Spider type.
z=1/tan(pixel)/(0.3,0.6)/pixel,
c=1/tan(pixel)/(0.3,0.6)/pixel:
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1648{;Julia.
z=(1/asin(pixel)/(0.3,0.6))/pixel,
c=(1/sin(pixel)/(0.3,0.6))/pixel:
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1649{;Julia
z=1/cosxx(pixel)/(-0.3,0.6)/pixel,
c=1/cosxx(pixel)/(-0.3,0.6)/pixel:
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 36carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1650{;Julia
z=1/sin(pixel)/(1.099,0)/(pixel),
c=(1/pixel)/(1.099,0)/(pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1651{;Spider type.
z=abs(1/tan(pixel)/sin(pixel)/(1/cos(pixel))),
c=1/sin(z^pixel):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1652{;Julia.
z=abs(1/tan(pixel)/sin(pixel)/(1/cos(pixel))),
c=1/cosxx(z^pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1653{;Spider type.
z=abs(1/tan(pixel)/sin(pixel)/(1/cos(pixel))),
c=1/cosxx(z^pixel):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1654{;Julia.
z=abs(1/tan(pixel)/sin(pixel)/(1/cos(pixel))),
c=1/asin(z^pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1655{;Julia.
z=abs(1/sin(pixel)),
c=(1/z^z*z+z):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1656{;Spider type.
z=abs(1/sin(pixel)),
c=(1/z^z*z+z):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1657{;Julia.
z=abs(1/tan(pixel*pixel)),
c=0.1*sin(z*z)/pixel:
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1658{;Julia.
z=conj(abs(tan(pixel*pixel))),
c=0.1*sin(z*z*z)/(pixel-0.5):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1659{;Julia.
z=1/sin(1/pixel)/(1/cos(1/pixel))/(cos(1-pixel)),
c=pixel+(-0.7456,0.2):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1660{;Spider type.
z=1/sin(2/pixel)/(1/cos(2/pixel))/(cos(1-conj(pixel))),
c=1/cosxx(pixel)+(-0.7456,0.2):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1661{;Spider type.
z=1/sin(2/pixel)/(1/cos(2/pixel))/(cos(1/pixel-conj(pixel))),
c=1/cos(pixel)+(-0.3,0.6):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1662{;Julia.
z=1/cosxx(2/pixel)/(cos(1/pixel-sin(pixel))),
c=1/sinh(pixel)/(1/cos(1.0,0.4)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1663{;Julia.
z=1/cosxx(sqr(3.2/pixel))/(cos(1.85/pixel-sin(pixel))),
c=z/pixel:
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1664{;Julia.
z=sin(pixel*pixel)/pixel,
c=pixel/conj(pixel*pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1665{;Julia.
z=1/cos(2.5/pixel)/(1/pixel-1),
c=1/cos(3.5/pixel)/(1/pixel+1):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1666{;Spider type.
z=1/cos(2.5/pixel)/(1/pixel-1),
c=1/cos(3.5/pixel)/(1/pixel+1):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1667{
z=pixel,c=sqrt(1/(1/(1/(5/pixel)))):
z=z*z+(c-1),
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|z|<=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1668{;Spider type.
z=1/cos(2.5/pixel)/(1/pixel-1),
c=sqrt(1/(1/(1/cos(5/pixel)))):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1669{;Spider type.
z=1/log(1/(1/(1/cos(5/pixel)))),
c=sqrt(1/(1/(1/cos(5/pixel)))):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1670{;Julia.
z=sqr(0.1-pixel),
c=1/log(z)^cos(pixel*sin(pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1671{;Spider type.
z=sqr(0.1-pixel),
c=1/log(z)^cos(pixel*sin(pixel)):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1672{;Julia.
z=sqr(conj(0.1-pixel)),
c=1/log(z)^sin(pixel*cosxx(pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1673{;Julia type.
z=sqr(sin(cos(0.1-pixel))),
c=log(z)^(1/sin(pixel*cosxx(pixel))):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1674{;Julia.
z=sqr(1/sin(1/cosxx(0.1-pixel))),
c=sqrt(z)^(1/sin(pixel*sin(pixel))):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1675{;Julia.
z=sqr(1/sin(1/cosxx(sqr(0.2-pixel)))),
c=sinh(z*z)/(sin(pixel*1/sin(pixel))):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1676{;Faceted Glass Julia.
z=z1,z1=sqr(1/sin(1/tanh(sqr(0.32-pixel)))),
c=sinh(z*z)-(sin(pixel*1/sin(pixel))):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1677{;Julia.
z=(0.25-pixel)/(conj(pixel)),
c=(0.33-pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z);
;c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1678{;Spider type.
z=(0.25-pixel)/(conj(pixel)),
c=(0.33-pixel):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1679{;Julia.
z=sin(0.25-pixel)/(sin(1/pixel)),
c=(0.33-sin(pixel))/(0.33-cos(pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1680{;Mandelbrot.
z=sin(0.25-pixel)/(sin(1/pixel)),
c=(0.33-sin(pixel))/(0.33-cos(pixel)):
z=z*z+c;
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1681{;Spider type.
z=sin(0.25-pixel)/(sin(1/pixel)),
c=(0.33-sin(pixel))/(0.33-cos(pixel)):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1682{;Julia.
z=1/cos(0.25-pixel)/(1/cosxx(1/pixel)),
c=(0.33-cosh(pixel))/(0.33-sinh(pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1683{;Julia.
z=sin(0.33-pixel),
c=(0.39-cos(0.33-pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1684{;Mandel type.
z=flip(0.33-1/cotan(pixel)),
c=(0.39-1/cotan(0.33-5/pixel))-1/pixel:
z=z*z+c;
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1685{;Julia.
z=sqr(1.33-cotan(flip(0.95/pixel/pixel))),
c=(0.39-asin(0.33-1.5/(-0.7456,0.2)))/sqr(flip(4/pixel/pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1686{;Spider type.
z=1/(pixel-1/pixel-0.9/pixel),
c=1/(pixel-1/pixel-0.9/pixel):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1687{;Julia.
z=z1,z1=1/(pixel-1/pixel-0.9/pixel),
c=1/(pixel-1/pixel-0.9/pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1688{;Spider type.
z=1/(pixel-sin(pixel)),
c=1/(pixel-sin(pixel)):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1689{;Mandel type.
z=1/(pixel-asin(pixel)),
c=1/(pixel-asin(pixel)):
z=z*z+c;
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1690{;Mandel type.
z=1/(pixel-flip(1/pixel)-conj(1/pixel)),
c=1/(pixel-flip(1/pixel)-conj(1/pixel)):
z=z*z+c;
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1691{;Mandel type.
z=1/(abs(pixel)-flip(sin(1/pixel))-conj(sin(1/pixel))),
c=1/(pixel-flip(sin(1/pixel))-conj(sin(1/pixel))):
z=z*z+c;
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1692{;Spider type.
z=1/(abs(pixel-0.5)-flip(sin(1/pixel))-conj(sin(1/pixel))),
c=1/(abs(pixel-0.5)-flip(sin(1/pixel))-conj(sin(1/pixel))):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1693{;Mandel type.
z=1/((pixel+pixel)+flip(1/pixel)-conj(1/pixel)),
c=1/(pixel+flip(1/pixel)-conj(1/pixel)-sin(1/pixel)):
z=z*z+c;
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1694{;Mandel type.
z=1/(pixel+5*pixel),
c=1/pixel-conj(pixel):
z=z*z+c;
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1695{;Julia 
z=1/(pixel+5*pixel),
c=1/pixel-conj(pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1696{;Mandel type.
z=((-0.7456,0.2))/(flip(pixel)),
c=1/((pixel-(1.099,0)/pixel)/pixel)/conj(pixel):
z=z*z+c;
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1697{;Mandel type.
c=(pixel)/(flip(pixel)-conj(1/pixel)),
z=(1/pixel)/(pixel-flip(1/pixel)-conj(1/pixel)):
z=z*z+c;
|real(z)| <=4
  ;SOURCE: jo_we_05.frm
}


Carr1698{;Spider type.
c=(pixel)/(flip(pixel)-conj(1/pixel)),
z=(1/pixel)/(pixel-flip(1/pixel)-conj(1/pixel)):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1699{;Mandel type.
c=(pixel)/(flip(1/pixel)-conj(1/pixel)),
z=(1/pixel)/(2*pixel-flip(1/pixel)-conj(1/pixel)):
z=z*z+c;
|real(z)| <=4
  ;SOURCE: 37carr.frm
  ;SOURCE: to-bob-6.frm
}


Carr1710{;Mandelbrot.
c=conj(pixel^1/pixel)/(pixel-(flip(1/pixel)-conj(1/pixel))),
z=(1/pixel)/(3*pixel-flip(1/pixel)-conj(1/pixel)):
z=z*z+c;
|real(z)| <=4
  ;SOURCE: jo_we_05.frm
}


Carr1791{
z=1/pixel,
c=1/(pixel-(0.124/z*(0.524/pixel/z))):
z=0.124/pixel/c*c*c*pixel/z^(1.23),
|real(z)| <=4
  ;SOURCE: jo_we_06.frm
}


Carr1795{
z=1/(pixel-real(1/pixel)-sinh(1/pixel-0.25)),
c=(1/(pixel-(0.124/z*(0.524/pixel/z)))):
z=0.124/pixel/c*c*c*pixel/z^(1.23),
|real(z)| <=4
  ;SOURCE: 39carr_s.frm
  ;SOURCE: to-bob-6.frm
}


Carr1797{
z=1/(pixel-cabs(cosh(5.5/pixel))-tanh(sin(1/pixel-0.25))),
c=(1/(pixel-(0.124/z*cos(0.524/pixel/z)))):
z=0.124/pixel/c*c*c*(pixel+cos(2.5/pixel))/z^(1.23),
|real(z)| <=4
  ;SOURCE: 39carr_s.frm
  ;SOURCE: to-bob-6.frm
}


Carr1798{
z=1/(pixel-cotanh(cosh(5.5/pixel))-tanh(sin(1/pixel-0.25))),
c=(1/(pixel-(0.124/z*cos(0.524/pixel/z)))):
z=0.124/pixel/c*c*c*(pixel+cos(2.5/pixel))/z^(1.23),
|real(z)| <=4
  ;SOURCE: 39carr_s.frm
  ;SOURCE: to-bob-6.frm
}


Carr1799{
z=1/(pixel-cotanh(cosh(5.5/pixel))-cosxx(sin(1/pixel-0.25))),
c=(1/(pixel-(0.124/z*cos(0.524/pixel/z)))):
z=0.124/pixel/c*c*c*(pixel+cos(2.5/pixel))/z^(1.23),
|real(z)| <=4
  ;SOURCE: 39carr_s.frm
  ;SOURCE: to-bob-6.frm
}



Carr2998 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; Converted to IF..RLSE logic by Sylvie Gallet, 13/02/98
  ; passes=1 needs to be used with this PHC formula.
  pixinv = .01/pixel
  c = pixel - flip(pixinv) - conj(0.1*pixinv)
  if (whitesq)
    c = flip(conj(0.1*c)) + (-0.7456,-0.132)
    z = zorig = pixel - conj(pixinv)
  else
    c = flip(conj(-0.1*c)) + (-0.7456,-0.132)
    z = zorig = - pixel + conj(pixinv)
  endif
  imagp1 = imag(p1) , imagp2 = imag(p2) , bailout = 16 , iter = 0
  :
  if (iter == p1)
    z = 0 , c = 0.15 * flip(conj(zorig)) + (-0.7456,-0.132)
  elseif (iter == imagp1)
    z = 0 , c = 0.225 * flip(conj(zorig)) + (-0.7456,-0.132)
  elseif (iter == p2)
    z = 0 , c = 0.3375 * flip(conj(zorig)) + (-0.7456,-0.132)
  elseif (iter == imagp2)
    z = 0 , c = 0.50625 * flip(conj(zorig)) + (-0.7456,-0.132)
  endif
  iter = iter + 1
  z = z*z + c
  z <= bailout
    ;SOURCE: c2998.frm
}



Carr3102 (YAXIS)  {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; Converted to IF..ELSE logic by Sylvie Gallet, 02/15/98
  ; passes=1 needs to be used with this PHC formula.
  pixel = -abs(real(pixel)) + flip(imag(pixel))
  if (whitesq)
    c = sqr(abs(pixel))*abs(pixel) - 0.65
    c1 = sqr(c/9) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + c/1.5
    z = zorig = sqr(pixel)*pixel
  else
    c = - sqr(abs(pixel))*abs(pixel) + 0.65
    c1 = sqr(c/9) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + c/1.5
    z = zorig = - sqr(pixel)*pixel
  endif
  imagp1 = imag(p1) , imagp2 = imag(p2) , bailout = 16 , iter = 0
  :
  if (iter == p1)
    z = 0 , c1 = sqr(zorig/6) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + zorig
  elseif (iter == imagp1)
    z = 0 , c1 = sqr(0.25*zorig) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + 1.5 * zorig
  elseif (iter == p2)
    z = 0 , c1 = sqr(0.375*zorig) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + 2.25 * zorig
  elseif (iter == imagp2)
    z = 0 , c1 = sqr(5.0625*zorig) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + 3.375 * zorig
  endif
  z2 = z*z , z = z2 - 0.0025 * |0.2*z2*z + z2 + c2| + c1
  |z| <= bailout
  ;SOURCE: c3102.frm
}

