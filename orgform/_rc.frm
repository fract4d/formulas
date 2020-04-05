

Carr-01 { 
  z = Pixel, z = cosxx(z):
  z = z + Pixel
  z = sqr(z)
  |z| <=4          
  ;SOURCE: carr.frm
}


Carr-02 {
  c = z = 1 / pixel
  z = cosxx(z) + c
  |z| <= 4
  ;SOURCE: carr.frm
}


Carr-02A {
  c=z=1/pixel:
  z=sqr(z) + .33
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-02B {
  c=z=1/pixel:
  z=sqr(z^z) + .33
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-02C {
  c=z=1/pixel:
  z=sqr(conj(z^z^z^z^z)) + .33
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-02D {
  c=z=(1/pixel)/pixel-0.25:
  z=sqr(z) + 0.33
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-02E {; Try using Distance Estimator function on this formula
  c=z=1/pixel:
  z=sqr(z) + c
  z1=sqr(z) + 0.33
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-03 {
  c = z = 1 / pixel:
  z = sin((z*z) - (aa3*z)) +b
  |z| <= (p2 + 3)
  ;SOURCE: carr.frm
}


Carr-04 {
  c = z = 1 / pixel 
  z = cosh(z) + c
  |z| <= 4
  ;SOURCE: carr.frm
}


Carr-05 {
  a=(0,0), b=(0,0): 
  z=z+1
  anew=sqr(a)-sqr(b)+pixel
  b=2.0*a*b+p1
  a=anew
  |a|+|b| <= 4
  c = z = 1 / pixel
  z = sqr(z) + c
  |z| <= 4
  ;SOURCE: carr.frm
}


Carr-06 {; was OK-03 and was modified
  z = c = pixel:
  z = cosxx(z)/c
  z = sin(z)
  |z| <= (5 + p1)
  ;SOURCE: carr.frm
}


Carr-07 {; was OK-02 and was modified
         ; Edited for Fractint v. 20 by George Martin, 10/98
  z = c = 1 / pixel, k = 1 + p1:
  z = (c^z) + c
  z = cotan(z) * k
  |z| <= (5 + p2)
  ;SOURCE: carr.frm
}


Carr-08 {; was OK-01 and was modified
  z = 0, c = 1 / pixel:
  z = (c^z) + c
  z = sqr(z)
  |z| <= (5 + p1)
  ;SOURCE: carr.frm
}


Carr-09 {; was OK-04 and was modified
  z = 0, c = cosxx(pixel):
  z = sqr(z) + c
  |z| <= (5 + p1)
  ;SOURCE: carr.frm
}


Carr-10 {
  c=z= 1/pixel:
  z=(tanh(z)*tanh(1/z)*z) + c
  |z| <=(5 + p1)
  ;SOURCE: carr.frm
}


Carr-100 {
  z=c=pixel:
  z=sqr(z*z) + sqr(c^c)
  z=sqr(z*z) + sin(c^pixel)
  z=sqr(z*z) + sin(c^pixel)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-101 {
  z=c=pixel:
  z=sqr(z*z) + sqr(c^c)
  z=sin(z*z) + sin(c^pixel)
  z=sqr(z*z) + sin(c^pixel)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-102 {
  z=c=pixel:
  z=sqr(z*z) + sqr(c*pixel)
  z=sin(z*z) + sin(c^pixel)
  z=sqr(z*z) + sin(c^pixel)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-103 {
  z=c=pixel:
  z=sqr(z*z) + sqr(c^pixel)
  z=sin(z*z) + flip(sin(c^pixel))
  z=sqr(z*z) + sin(c^pixel)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-104 {
  z=c=pixel:
  z=sqr(z*z) + sqr(c^pixel)
  z=sin(z*z*z) + flip(sin(c^pixel))
  z=sqr(z*z*z) + sin(c^pixel)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-105 {
  z=c=pixel:
  z=sqr(z) + sqr(c*c)
  z=sin(z) + sin(c)
  z=sqr(z) + sin(c*c)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-106 {
  z=c=pixel:
  z=sqr(z) + sqr(c*c)
  z=sin(z) + flip(sin(c))
  z=sqr(z) + flip(c*c)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-107 {
  z=c=pixel:
  z=sqr(z*z) + (c*c)
  z=sin(z*z) + sin(c)
  z=sin(z*z) + sin(c)
  |z| <=4
  ;SOURCE: carr-2.frm
}


Carr-107w {
  z=c=1/pixel:
  z=sqr(z*z) + (c*c)
  z=sin(z*z)*(z+pixel) + sin(c)
  z=sin(z*z)*(z+pixel) + sin(c)
  |z| <=4
  ;SOURCE: formulas.frm
}


Carr-108 {
  z=c=pixel:
  z=sqr(z*z) + (c*c)
  z=sin(z*z) + sin(c)
  z=sin(z*(1/z)) + sin(c*c)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-109 {
  z=c=pixel:
  z=sqr(z*z) + (c*c)
  z=sin(z*z) + sin(c*c)
  z=sin(z*(1/z)) + tanh(c*c)
  |z| <=4
  ;SOURCE: carr-2.frm
}


Carr-11 {
  c=z=1/pixel:
  z=sqr(z*(z+1.918)) + c
  z=sin(z*z) + c
  |z| <= 4
  ;SOURCE: carr.frm
}


Carr-110 {
  z=c=pixel:
  z=sqr(z*z) + (c*c)
  z=sin(z*z) + sin(c*c)
  z=sin(z*(1/z)) + cotanh(c*c)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-111 {
  z=c=1/pixel:
  z=sqr(z*z) + c
  z=sin(z*z) + sin(c*c)
  z=sin(z*(1/z)) + (sqr(c + pixel))
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-112 {
  z=c=pixel:
  z=sqr(z*z) + c
  z=sin(z*z) + sin(c*c)
  z=sin(z*(1/z)) + (sqr(c+pixel))
  |z| <=4
  ;SOURCE: carr-2.frm
}


Carr-113 {
  z=c=pixel:
  z=sqr(z*z) + sqr(c*pixel)
  z=sin(z*z) + sqr(c*pixel)
  z=sin(z*(1/z)) + sin(c*pixel)
  |z| <=4
  ;SOURCE: carr-2.frm
}


Carr-114 {
  z=pixel + p1, c=1/pixel
  ex=(2*(|p2|<=0) + p2):
  z=z^real(ex) + c
  z=z^real(ex) + c
  |z| <=4
  ;SOURCE: carr-2.frm
}


Carr-115 {
  z=1/pixel + p1, c=1/pixel
  ex=(2*(|p2|<=0) + p2):
  z=(z^real(ex)) + c/pixel
  z=z^z^(1/z) + ((z^real(ex)) + c)
  |z| <=4
  ;SOURCE: carr-2.frm
}


Carr-116 {
  z=1/pixel + p1, c=1/pixel
  ex=(1.334*(|p2|<=0) + p2):
  z=((z^real(ex))-0.33) + (c/pixel)
  z=z*z^z^(1/z) + ((z^real(ex)) + c)
  |z| <=4
  ;SOURCE: carr-2.frm
}


Carr-117 {
  z=c=1/pixel
  t=(64*(real(p2)<=0) + real(p2)*(0<p2)):
  z=(fn1((z)*1/z)*fn2(z)) + c
  |z| <=t
  ;SOURCE: carr-2.frm
}


Carr-118 {
  z=c=1/pixel
  t=(64*(real(p2)<=0) + real(p2)*(0<p2)):
  z=(fn1((z)*1/z)*fn2(z)*1/z) + c
  z=(fn1((z)*1/z)*fn2(z)*1/z) + c
  |z| <=t
  ;SOURCE: carr-2.frm
}


Carr-119 {
  z=c=1/pixel
  t=(64*(real(p2)<=0) + real(p2)*(0<p2)):
  z=(fn1((z)*1/z)*fn2(z)*1/z) - (0.12*c)
  z=(fn1((z)*1/z)*fn2(z)*1/z) - (0.12*c)
  z=(fn1((z)*1/z)*fn2(z)*1/z) - (0.12*c)
  |z| <=t
  ;SOURCE: carr-2.frm
}


Carr-12 {
  c=z=sqr(pixel):
  z=sqr(z) + 2*c
  z=sqr(z) + c
  |z| <= 4
  ;SOURCE: carr.frm
}


Carr-120 {
  z=c=1/pixel
  t=(64*(real(p2)<=0) + real(p2)*(0<p2)):
  z=(fn1((z)*1/z)*fn2(z)*1/z) - (0.51*c)
  z=(fn1((z)*1/z)*fn2(z)*1/z) - (0.51*c)
  z=(fn1((z)*1/z)*fn2(z)*1/z) - (0.51*c)
  |z| <=t
  ;SOURCE: carr-2.frm
}


Carr-121 {
  z=c=1/pixel
  t=(64*(real(p2)<=0) + real(p2)*(0<p2)):
  z=(fn1((z)*1/z)*fn2(z)*1/z) - (0.41*c)
  z=(fn1((z)*1/z)*fn2(z)*1/z) - (0.41*c)
  z=(fn1((z)*1/z)*fn2(z)*1/z) - (0.41*c)
  |z| <=t
  ;SOURCE: carr-2.frm
}


Carr-122 {
  z=c=1/pixel
  t=(64*(real(p2)<=0) + real(p2)*(0<p2)):
  z=(fn1((z)*1/z)*fn2(z)*1/z) + (0.41*c)
  z=(fn1((z)*1/z)*fn2(z)*1/z) + (0.41*c)
  z=(fn1((z)*1/z)*fn2(z)*1/z) + (0.41*c)
  |z| <=t
  ;SOURCE: carr-2.frm
}


Carr-123 {
  z=c=1/pixel
  t=(64*(real(p2)<=0) + real(p2)*(0<p2)):
  z=fn1((z)*1/z)*(sin(fn2(z)*1/z)) + (0.51*c)
  z=fn1((z)*1/z)*(sin(fn2(z)*1/z)) + (0.51*c)
  z=fn1((z)*1/z)*(sin(fn2(z)*1/z)) + (0.51*c)
  |z| <=t
  ;SOURCE: carr-2.frm
}


Carr-124 {
  z=c=1/pixel
  t=(32*(real(p2)<=0) + real(p2)*(0<p2)):
  z=2*(z/pixel)+fn1((1/z)*1/z)*(flip(fn2(z)*1/z)) + (0.51*c)
  z=2*(z/pixel)+fn1((1/z)*1/z)*(flip(fn2(z)*1/z)) + (0.51*c)
  z=2*(z/pixel)+fn1((1/z)*1/z)*(flip(fn2(z)*1/z)) + (0.51*c)
  z=2*(z/pixel)+fn1((1/z)*1/z)*(flip(fn2(z)*1/z)) + (0.51*c)
  |z| <=t
  ;SOURCE: carr-2.frm
}


Carr-125 {
  z=c=1/pixel
  t=(64*(real(p2)<=0) + real(p2)*(0<p2)):
  z=(sin((z)*(1/z))*fn2(z)*1/z) + flip(pixel/c)
  z=(sqr((z)*(1/z))*fn2(z)*1/z) + flip(pixel/c)
  |z| <=4
  ;SOURCE: carr-2.frm
}


Carr-126 {
  z=c=1/pixel:
  z=(fn1((z)*1/z)*fn2(z)*1/z)-(0.12*c)
  z=(fn1((z)*1/z)*fn2(z)*1/z)-(0.12*c/pixel)
  z=(fn1((z)*1/z)*fn2(z)*1/z)-(0.12*c)
  z=(fn1((z)*1/z)*fn2(z)*1/z)-(0.12*c)
  |z| <=t
  ;SOURCE: carr-2.frm
}


Carr-127 {; Revised for Fractint v. 20 by George Martin 10/98
  z=c=1/pixel:
  z=(fn1((z)*1/z)*fn2(z)*1/z)-(0.12*c)
  z=c      ; z=sin(z*z) = c
  |z| <=t
  ;SOURCE: carr-2.frm
}


Carr-128 {
  z=c=1/(sqr(pixel)):
  z=(sqr(1/cosxx(z))) + (sin(z^z^z))
  z=(z+cosxx(pixel))
  z=(sqr(z) + c)
  |z| <=10
  ;SOURCE: carr-2.frm
}


Carr-129 {
  z=c=1/pixel:
  z=(sqr(1/cosxx(z))) + (sin(z^z^z))
  z=(z+cosxx(pixel))
  z=(sqr(z) + c)
  |z| <=10
  ;SOURCE: carr-2.frm
}


Carr-13 {; Edited for Fractint v. 20 by George Martin, 10/98
  c = z = cosxx(pixel):
  z = cosxx(z) + 2
  c = z = 1 / sqr(pixel)
  z = 1 / cosxx(z) +c
  |z| <= 4
  ;SOURCE: carr.frm
}


Carr-130 {
  z=c=pixel:
  z=(sqr(1/cosxx(1/z))) + (sin(z*z*z))
  z=(z+cosxx(pixel))
  z=(sqr(z) + c)
  |z| <=10
  ;SOURCE: carr-2.frm
}


Carr-131 {; Edited for Fractint v. 20 by George Martin, 10/98
          ; Replaced statement resolved to z=c, making formula trivial
  z=c=1/pixel:
  z=(sqr(1/cosxx(1/z))) + (sin(z*z*z))
  z=(z+cosxx(pixel))
  z = sqr(z) + c ; replaced z=(sqr(z) = c)
  |z| <=10
  ;SOURCE: carr-2.frm
}


Carr-132 {
  z=c=1/pixel, z=cosxx(z):
  z=z+(sqr(pixel))
  z=(sqr(z) + c)
  |z| <=10
  ;SOURCE: carr-2.frm
}


Carr-133 {
  z=c=1/pixel, z=cosxx(z):
  z=z+(sqr(pixel))
  z=(fn1((z)*1/z)*fn2(z)*1/z)-(0.12*c)
  z=(sqr(z) + c)
  |z| <=10
  ;SOURCE: carr-2.frm
 }


Carr-134 {
  z=c=1/pixel, z=cosxx(z):
  z=z*z*z*z*z*z*z
  z=(sin((z)*1/z)*tanh(z)*1/z)-(0.42*c)
  z=(sqr(z) + c)
  |z| <=10
  ;SOURCE: carr-2.frm
}


Carr-135 {; Edited for Fractint v. 20 by George Martin, 10/98
          ; Replaced statement resolved to z=c, making formula trivial
  z=c=1/pixel, z=cosxx(z):
  z=sqr(z^z)
  z=(sin((z)*z)*sin(z)*z)-(0.42*c)
  z = sqr(z) + c   ; Replaced z=(sqr(z) = c)
  |z| <=10
  ;SOURCE: carr-2.frm
}


Carr-136 {
  z=c=1/pixel, z=tanh(z):
  z=sqr(z^z^z)
  z=(sin((z)*z)*sin(z)*z)-(0.42*c)
  z=(sqr(z) + c/pixel)
  |z| <=10
  ;SOURCE: carr-2.frm
}


Carr-137 {
  z=c=1/pixel, z=flip(z):
  z=sqr(z^z^z)
  z=(sin((z)*1/z)*sin(z)*1/z)-(0.42*c)
  z=(sqr(z) + c/pixel)
  |z| <=10
  ;SOURCE: carr-2.frm
}


Carr-138 {
  z=c=1/pixel, z=flip(z/pixel):
  z=sqr(z^z^z)
  z=(sin((z)*1/z)*sin(z)*1/z)-(0.42*c)
  z=(tanh(z) + c/pixel)
  |z| <=10
  ;SOURCE: carr-2.frm
}


Carr-139 {
  z=c=1/pixel, z=flip(z/pixel):
  z=sqr(z*z*z)
  z=(tanh(1/z) + c)
  |z| <=10
  ;SOURCE: carr-2.frm
}


Carr-14 {; modified fnzp fnpix
  z = 1 / tan(1 / pixel) +p1
  c = ((1 * (|p2|<=0) +p2) * fn2(1 / pixel) ):
  z = fn1(z) * fn2(z)
  |z| <=64 
  ;SOURCE: carr.frm
}


Carr-140 {
  z=c=1/pixel, z=cosxx(z^z/pixel):
  z=sqr(z*z*z)
  z=(sin(z) + c)
  |z| <=10
  ;SOURCE: carr-2.frm
}


Carr-141 {
  c=z=1/pixel, c=cosxx(z):
  z=sqr(z) + c
  |z| <=4
  ;SOURCE: carr-2.frm
}


Carr-142 {
  c=z=1/pixel, c=cosxx(z):
  z=sqr(z) + c
  z=sqr(z) + c
  |z| <=10
  ;SOURCE: carr-2.frm
}


Carr-143 {
  c=z=1/pixel, c=cosxx(z):
  z=sqr(z) + c
  z=sin(z) + c
  |z| <=10
  ;SOURCE: carr-2.frm
}


Carr-145 {
  z=c=sinh(pixel)/(1/pixel):
  z=c^z
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-147 {
  z=c=1/pixel:
  z=(flip(z*z)) + c
  z=(flip(z*z)) + c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-149 {
  z=c=1/pixel:
  z=sqr(flip(z*z*z)) + c
  z=sqr(flip(z*z*z)) + c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-15 (xaxis) {; Mark Peterson modified(Zoom all the way out & look)
                 ; Edited for Fractint v20 by G. Martin
  z = log(pixel), z = cosxx(z): 
  z = z + cosxx(pixel)
  z = sqr(z)
  Lastsqr <=4 
  ;SOURCE: carr.frm
}


Carr-150 {
  z=c=1/pixel:
  z=sqr(flip(z*z*z)) + c
  z=sin(flip(z*z*z)) + c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-151 {; Dr. Chaosbrot 1 Modified
  z=c=pixel:
  z=sqr(z*z) + (((sqrt 5+1)/2)+c)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-152 {
  z=c=1/pixel:
  z=cosxx(flip(z*z/pixel)) + (((sqrt 5+1)/2) + c)
  z=sqr(flip(z))+c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-153 {
  z=c=1/pixel:
  z=tanh(z*z/pixel)+(((sqrt 5+1)/2)+c)
  z=sqr(flip(z))+c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-154 {
  z=c=1/pixel:
  z=sqr(flip(z)) + c
  z=sqr(flip(z)) + c
  z=sqr(z) + c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-155 {
  z=c=1/pixel:
  z=sqr(flip(z)) + c
  z=sqr(flip(z)) + c
  z=sqr(z*z) + c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-156 {
  z=c=pixel:
  z=sqr(flip(z)) + c
  z=sqr(flip(z)) + c
  z=sqr(z*z) + c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-157 {
  z=c=pixel:
  z=sqr(flip(z*z)) + c
  z=sqr(flip(z*z)) + c
  z=sqr(z*z) + c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-158 {
  z=c=1/pixel:
  z=sqr(flip(z)) + c/pixel
  z=sqr(flip(z)) + c/pixel
  z=sqr(z*z*z) + c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-159 {
  z=c=1/sqr(pixel):
  z=sqr(z) + c
  z=sin(z) + c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-16 {
  z = 0:
  z2 = z^z^z
  z = (cosxx(sqr(z-1)) ) + (sin(pixel))
  |z| <= 6
  ;SOURCE: carr.frm
}


Carr-160 {
  z=c=sqr(pixel):
  z=sqr(z) + c
  z=sin(z) + c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-161 {
  z=c=sqr(pixel):
  z=sqr(z*z) + c
  z=sin(z*z) + c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-162 {
  z=c=sqr(1/pixel):
  z=sqr(z*z) + c
  z=sin(z*z) + c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-163 {
  z=c=sin(1/pixel):
  z=sqr(z*z) + c
  z=sin(z*z) + c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-164 {
  z=c=sin(pixel):
  z=sqr(z*z) + c
  z=sin(z*z) + c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-165 {
  z=c=sin(pixel):
  z=sqr(z*z) + c
  z=sin(z*z) + c
  z=sqr(1/z*1/z) + c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-166 {
  z=c=sin(1/pixel):
  z=sqr(z*z) + c
  z=sin(z*z) + c
  z=sqr(1/z*1/z) + c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-167 {
  z=c=sqr(1/pixel):
  z=sqr(z*z) + c
  z=sin(z*z) + c
  z=sqr(1/z*1/z) + c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-168 {
  z=c=sqr(1/pixel):
  z=sin(z*z) + c
  z=sin(z*z) + c
  z=sin(1/z*1/z) + c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-169 {
  z=c=1/pixel:
  z=sqr(z) + c
  z=sin(z) + c
  |z| <1000
  ;SOURCE: carr.frm
}


Carr-17 (xaxis) {; Mark Peterson modified by Bob Carr
  c = z = 1 / pixel:
  z = sqr(z) +c
  z2 = sqr(z) +c
  |z| <= 10
  ;SOURCE: carr.frm
}


Carr-170 {
  z=c=f=sqr(1/pixel):
  z=sqr(z) + f
  |z| <=50
  ;SOURCE: carr.frm
}


Carr-171 {
  z=c=f=sqr(pixel):
  z=sqr(z) + f
  |z| <=50
  ;SOURCE: carr.frm
}


Carr-172 {
  z=c=f=sqr(1/pixel):
  z=sin(z) + f
  z=sqr(z) + c
  |z| <=50
  ;SOURCE: carr.frm
}


Carr-173 {
  z=c=f=y=sqr(1/pixel):
  z=sin(z) + c
  |z| <=50
  ;SOURCE: carr.frm
}


Carr-174 {
  z=y=sqr(1/pixel):
  z=sqr(z) + y*y
  |z| <=50
  ;SOURCE: carr.frm
}


Carr-175 {
  z=y=sqr(1/pixel):
  z=sqr(y) + (z*z*z) + 1/pixel
  |z| <=50
  ;SOURCE: carr.frm
}


Carr-176 {
  z=c=sqr(1/pixel):
  z=cosxx(z) + c
  z=sqr(z) + c
  z=sqr(z) + c
  z=sqr(z) + c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-177 {
  z=c=flip(1/pixel):
  z=sin(z*z) + c
  z=sqr(z*z) + c
  z=sin(z) + c
  z=sqr(z) + c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-178 {; Revised for Fractint v. 20 by George Martin 10/98
  z=c=flip(1/pixel):
  z=sqr(z*z) + c
  z=sqr(z) + c
  z=sin(z*z) + c
  z = c   ; z=sqr(z*z) = c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-179 {
  z=c=1/pixel:
  z=sqr(z*z) + (c+0.424)
  z=sqr(z) + (c+0.324)
  z=sin(z*z) + c
  z=sqr(z*z) + c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-18 {
  c = z= (sqr(pixel)):
  z = (sqr(1 / cosxx(z)) ) + (sin(z^z^z))
  |z| <= 10
  ;SOURCE: carr.frm
}


Carr-180 {
  z=c=flip(1/pixel):
  z=sqr(z*z) + c
  z=sqr(z) + (c-0.224)
  z=sin(z*z) + (c+0.124)
  z=sqr(z*z) + (c-0.024)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-181 {
  z=c=flip(sqr(1/pixel)):
  z=sqr(z*z) + c
  z=sqr(z) + (c-0.224)
  z=sin(z*z) + (c+0.124)
  z=sqr(z*z) + (c-0.024)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-182 {
  z=c=1/pixel:
  z=sqr(z) + flip(c)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-183 {
  z=c=1/pixel:
  z=sqr(1.027*z) + flip(c)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-184 {
  z=c=1/pixel:
  z=(sqr(z*1/pixel)) + c
  z=sqr(z) + c
  z=sqr(z) + c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-185 {
  z=c=sqr(1/pixel):
  z=(sqr(z*1/pixel)) + c
  z=sin(z) + c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-186 {
  z=c=1/pixel:
  z=(cotanh(z*pixel)) + c
  z=sin(z) + c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-187 {
  z=c=1/pixel:
  z=c*sqr(1/z)
  z=z*z + c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-188 {
  z=c=1/pixel:
  z=c*sqr(1/z)
  z=z*z*z + c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-189 {
  z=c=1/pixel:
  z=c*sqr(1/z)
  z=sqr(sqr(z/pixel*z*z)) + c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-19 {
  c = z = (sqr(1 / pixel)):
  z = (sqr(1 / cosxx(z)) ) + (sin(z^z^z))
  |z| <= 10
  ;SOURCE: carr.frm
}


Carr-190 {
  z=c=1/pixel/pixel:
  z=sqr(z) + c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-191 {
  z=c=1/pixel/pixel:
  z=sqr(z*z) + c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-192 {
  z=c=1/pixel/pixel:
  z=sin(z) + c
  z=sqr(z) + c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-193 {
  z=c=1/pixel:
  z=z*z*z + (c-1)*z-c
  z=3*sqr(z) + c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-194 {
  z=c=1/pixel:
  z=z*z*z/5 + sqr(z) + flip(c)
  |z| <=100
  ;SOURCE: carr.frm
}


Carr-195 {
  z=c=1/pixel:
  z=z*z*z/5 + sqr(z) + (-flip(c))
  |z| <=100 
  ;SOURCE: carr.frm
}


Carr-196 {
  z=c=1/pixel:
  z=c*(2*z*z-1)
  z=flip(z)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-197 {
  z=c=1/pixel:
  z=sqr(z) + c/pixel/flip(c)
  z=sqr(z) + c/pixel/flip(c)
  z=sqr(z) + c/pixel/flip(c)
  z=sqr(z) + c/pixel/flip(c)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-198 {
  z=c=1/pixel:
  z=sqr(z) + c
  z=flip(3*z*z)/flip((z+3)+c)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-199 {
  z=c=1/pixel:
  z=sqr(z) + c
  z=((pixel)*z*z)/(z-1)+c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-20 {
  z = pixel, z = cosxx(z):
  z = z + (sqr(pixel))
  z = sqr (log(1 / (z)) )
  |z| <= 4
  ;SOURCE: carr.frm
}


Carr-200 {
  z=c=1/pixel:
  z=sqr(z) + c
  z=((1/pixel)*z*z)/(z-1) + c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-201 {
  z=c=pixel:
  z=sqr(z) + c
  z=((1/pixel)*z*z)/(z-1) + c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-202 {
  z=c=1/pixel:
  z=sqr(z) + c
  z=(1/pixel)*z*z/(z-0.5) + c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-203 {
  z=c=1/pixel:
  z=(sqr(z)+c)/(z-1)+c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-204 {
  z=c=pixel:
  z=(sqr(z)+c)/(z-1)+c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-205 {
  z=c=1/pixel:
  z=(sqr(z)+c)/(z+0.5)+c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-206 {
  z=c=1/pixel:
  z=(sqr(z*z) + c)/(z+0.75)+c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-207 {
  z=c=pixel:
  z=(sqr(z*z) + c)/(z+0.75)+c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-208 {
  z=c=1/pixel:
  z=(sqr(z*z)+c)/(z-(flip(-3,0.123)))+c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-209 {
  z=c=1/pixel:
  z=z*z+c+(z*z+(c-0.124))
  z=sin(z)+c+(z*z+(c-0.124))
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-21 {
  z = 1 / pixel, z = cosxx(z):
  z = z + (sqr(pixel))
  z = sqr (log(1 / (z)) )
  |z| <= 4
  ;SOURCE: carr.frm
}


Carr-210 {
  z=c=1/pixel:
  z=z*z+c+(z*z+(c-0.124))/(z-0.75)+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-211 {
  z=c=1/pixel:
  z=z*z+c+(z*z+(c-0.124))/((z+1.25)+c)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-212 {
  z=c=1/pixel:
  z=sin(z^2)+sin(z)/sin(pixel)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-213 {
  z=c=1/pixel:
  z=(z^2)*(z^2)+sin(z-1)/sin(pixel)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-214 {
  z=c=1/pixel:
  z=(z^2)*(z^2)+sin(z-1.5)/sin(pixel)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-215 {
  z=c=1/pixel:
  z=(z^2)*(z^2)+sin(z-0.3)/sin(pixel)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-216 {
  z=c=1/pixel:
  z=(z^2)*(z^2)+sin(z-0.1)/sin(pixel)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-217 {
  z=c=1/pixel:
  z=(z^2)*(z^2)+sin(z-0.3)/cosxx(pixel)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-218 {
  z=c=1/pixel:
  z=(z^2)*(z^2)+sin(z-0.3)/cos(pixel)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-219 {
  z=c=1/pixel:
  z=(z^2)*(z^2)+sin(z-0.3)/cos(1/pixel)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-22 {
  z = 1 / pixel, z = cosxx(z):
  z = z + (sqr(pixel))
  z = sqr (cosxx(1 / (z)) )
  |z| <= 4
  ;SOURCE: carr.frm
}


Carr-220 {; 100's of diff. Inv. Mandels
  z=c=1/pixel:
  z=(z^2)*(z^2)+sin(z-0.3)/cos(sqr(pixel))
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-221 {
  z=c=1/pixel:
  z=(z^2)*(z^2)+sin(z-0.3)/cos(pixel-0.1)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-222 {
  z=c=1/pixel:
  z=(z^2)*(z^2)+sin(z-0.3)/cos(pixel+1.25)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-223 {
  z=c=1/pixel, cp2=cos(pixel/0.74):
  z=(z^2)*(z^2)+sin(z-0.3)/cp2
  |z| <=10
  ;SOURCE: carr-9.frm
}


Carr-224 {
  z=c=1/pixel, cp2=cos(pixel/0.74):
  z=(z^2)*(z^2)+sin(z+0.3)/cp2
  |z| <=10
  ;SOURCE: carr-9.frm
}


Carr-225 {
  z=c=1/pixel, cp2=cos(pixel/c*c+0.807):
  z=(z^2)*(z^2)*(z^2)+sin(z+0.3)/cp2
  |z| <=10
  ;SOURCE: carr-9.frm
}


Carr-226 {
  z=c=1/pixel, cp2=tan(pixel/c*c+0.807):
  z=(z^2)*(z^2)*(z^2)+sin(z+0.3)/cp2
  |z| <=10
  ;SOURCE: carr-9.frm
}


Carr-227 {
  z=c=1/pixel, cp2=log((pixel)/c*c+0.807):
  z=(z^2)*(z^2)*(z^2)+sin(z+0.3)/cp2
  |z| <=10
  ;SOURCE: carr-9.frm
}


Carr-228 {; Note personalization of formula
  z=c=1/pixel, Bob2=log((pixel)/c*c+0.807), Bob3=1/sin(z+0.3):
  z=(z^2)*(z^2)*(z^2)+Bob3/Bob2
  |z| <=10
  ;SOURCE: carr-9.frm
}


Carr-229 {; Note personalization
  z=c=1/pixel, Bob2=log((pixel)/c*c+0.807), Bob3=1/cosxx(z+0.3):
  z=(z^2)*(z^2)*(z^2)+Bob3/Bob2
  z=sin(z*z) + c
  |z| <=10
  ;SOURCE: carr-9.frm
}


Carr-23 {
  z = 1 / pixel, z = cosxx(z):
  z = z + (sqr(pixel))
  z = sin(cosxx(1 / (z)) )
  |z| <= 4
  ;SOURCE: carr.frm
}


Carr-230 {
  z=c=1/pixel, Bob2=log((pixel)/c*c+0.8), Bob3=1/cosxx(z+0.3):
  z=(z^2)*(z^2)*(z^2)+Bob3/Bob2
  z=sin(z*z)+(c-0.124)
  |z| <=10
  ;SOURCE: carr-9.frm
}


Carr-231 {
  z=c=1/pixel, Bob2=log((1/pixel)/c*c+0.8), Bob3=1/cosxx(z+0.3):
  z=(z^2)*(z^2)*(z^2)+Bob3/Bob2
  z=sin(z*z*z) + (c-0.124)
  |z|<=10
  ;SOURCE: carr-9.frm
}


Carr-232 {
  z=c=1/pixel, Bob2=log(pixel/(c/pixel*c)+0.8), Bob3=1/cosxx(z+0.3):
  z=(z^2)*(z^2)*(z^2)+Bob3/Bob2
  z=z*pixel-pixel/sqr(z)
  |z| <=10
  ;SOURCE: carr-9.frm
}


Carr-233 {
  z=c=1/pixel, Bob2=log(pixel/(c/pixel*c)+0.8), Bob3=1/cosxx(z+0.3):
  z=(z^2)*(z^2)*(z^2)-Bob3/Bob2
  z=z*pixel-pixel/sqr(z)
  |z| <=10
  ;SOURCE: carr-9.frm
}


Carr-234 {
  z=c=1/pixel, Bob2=log(pixel/(c/pixel*c))+0.8, Bob3=1/cosxx(z+0.3):
  z=(z^2)*(z^2)*(z^2)+Bob3/Bob2
  z=flip(z*pixel-pixel/z*z)
  |z| <=10
  ;SOURCE: carr-9.frm
}


Carr-235 {
  z=c=1/pixel, Bob2=log(1/pixel/pixel)/c*c+1.2
  Bob3=1/cosxx(z/0.3)/-1.1*c:
  z=(z^2)*(z^2)*(z^2)+Bob3*Bob2
  z=sin(z*z) + (c-0.124)
  |z| <=10
  ;SOURCE: carr-9.frm
}


Carr-236 {
  z=c=1/pixel, Bob2=log(1/pixel/pixel)/c*c+1.2
  Bob3=1/cosxx(z/0.3)/-1.1*c:
  z=(z^2)*(z^2)*(z^2)+Bob3*Bob2
  z=sin(z*z) + (c-0.124)
  z=z*z+c
  |z| <=10
  ;SOURCE: carr-9.frm
}


Carr-237 {
  z=c=1/pixel, Bob2=sin(z^2)*(z^2)+sin(z-0.35)
  Bob3=cosxx(c*pixel+0.124):
  z=Bob2/Bob3
  |z| <=10
  ;SOURCE: carr-9.frm
}


Carr-238 {
  z=c=1/pixel, Bob2=sin(z^1.5)*(z^1.5)*(z^1.5)+sin(z-0.35)
  Bob3=sin(c*pixel+0.124):
  z=Bob2/Bob3
  |z| <=10
  ;SOURCE: carr-9.frm
}


Carr-239 {
  z=c=1/pixel, Bob2=cosxx((z^1.5)*(z^1.5)*(z^1.5)-0.4)+conj(1/sin(z-0.35))
  Bob3=sin(c*pixel+0.124):
  z=Bob2/Bob3
  |z| <=10
  ;SOURCE: carr-9.frm
}


Carr-24 {; InvRadius-Mandel formula manipulated
  c=z=1/pixel:
  z=sqr(z*z) - c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-240 {
  z=c=1/pixel, Bob2=cosxx((z^1.5)*(z^1.5)*(z^1.5)-0.4)+conj(1/sin(z-0.35))
  Bob3=conj(c*pixel+0.124):
  z=Bob2/Bob3
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-241 {
  z=c=1/pixel
  Bob2=cosxx((z^1.5)*(z^1.5)*(z^1.5)-0.4)+conj(sin(z-0.35))
  Bob3=conj(1/c*pixel+0.124):
  z=Bob2/Bob3
  |z| <=10
  ;SOURCE: carr-9.frm
}


Carr-242 {
  z=c=1/pixel
  Bob2=cosxx((z^3.5)*(z^3.5)*(z^3.5)-0.4)+conj(sin(z-0.35))
  Bob3=conj(1/c*pixel+0.124):
  z=Bob2/Bob3
  z=sin(z*x)+(c-0.224)
  |z| <=10
  ;SOURCE: carr-9.frm
}


Carr-243 {
  z=c=1/pixel
  Bob2=cosxx((z^3.5)*(z^3.5)*(z^3.5)-0.4)+conj(sin(z-0.35))
  Bob3=conj(1/c*pixel+0.124):
  z=Bob2/Bob3
  z=(z*z)*(z*z)+(c-0224)
  z=sin(z)+c
  |z| <=10
  ;SOURCE: carr-9.frm
}


Carr-244 {
  z=c=1/pixel
  Bob2=cosxx((z^3.5)*(z^3.5)*(z^3.5)-0.4)+conj(sin(z-0.35))
  Bob3=conj(1/c*1/pixel+0.124):
  z=Bob2/Bob3
  z=flip((z*z)*(z*z))-(c-0.224)
  z=1/z*1/z+c
  |z| <=10
  ;SOURCE: carr-9.frm
}


Carr-245 {
  z=c=1/pixel
  Bob2=conj((z^3.5)*(z^3.5)*(z^3.5))+cosxx(1/sin(z-0.35))
  Bob3=conj(1/c*1/pixel+0.124):
  z=Bob2/Bob3
  z=flip((z*z)*(z*z))-(c-0.224)
  z=1/z*1/z+log(c)
  |z| <=10
  ;SOURCE: carr-9.frm
}


Carr-246 {
  z=c=1/pixel
  Bob2=conj((z^3.5)*(z^3.5)*(z^3.5)-0.4)+cosxx(sqr(z-0.35))
  Bob3=conj(c*1/pixel-0.124)
  z=(Bob2/Bob3)/Bob3 :
  z=sin((z*z)*(z*z))-flip(c-0.224)
  z=sqr(z*z)+flip(c-0.324)
  |z| <=10
  ;SOURCE: carr-9.frm
}


Carr-247 {
  z=1/pixel
  c=((0.6,0.55)*(|p1|<=1.3)+1/pixel):
  z=(z*z)*(z*z)+(pixel/c-0.124)
  z=sin(z*z)+(c-0.224)
  |z| <=20
  ;SOURCE: carr-9.frm
}


Carr-248 {
  z=1/pixel, c=1/pixel:
  z=(z^2*pixel)
  z=(z*z)+(c-0.124)
  |z| <=10
  ;SOURCE: carr-9.frm
}


Carr-249 {
  z=pixel, c=pixel:
  z=(z^2*pixel)
  z=(-z*z)+(c-0.124)
  |z| <=10
  ;SOURCE: carr-9.frm
}


Carr-25 {; Carr-24 Modified
  c=z=1/pixel:
  z=sqr(z) + (c-1)
  |z| <= 4
  ;SOURCE: carr.frm
}


Carr-250 {
  z=pixel, c=pixel:
  z=flip(pixel*pixel)/c
  z=(z*z)+(c-0.124)
  |z| <=10
  ;SOURCE: carr-9.frm
}


Carr-251 {
  z=pixel, c=pixel:
  z=flip(pixel*pixel)/c
  z=(z*z*z*z*z*z)+(c-0.124)
  |z| <=10
  ;SOURCE: carr-9.frm
}


Carr-252 {
  z=pixel, c=pixel:
  z=flip((1/pixel*pixel)/c-0.224)
  z=(z*z)+(c-0.124)
  |z| <=10
  ;SOURCE: carr-9.frm
}


Carr-253 {
  z=1/pixel, c=1/pixel:
  z=z*z-1/z/z
  z=sin(z*z)+(c-0.124)
  |z| <=10
  ;SOURCE: carr-9.frm
}


Carr-254 {
  c=0.5/pixel, z=1.5/pixel, a=p1, b=p2:
  z=fn1(z*z)+fn2(z*b)+fn1(z^a)
  z=sin(z*z)+(c-0.124)
  z=z*z+(c-0.124)
  |z| <=10
  ;SOURCE: carr-9.frm
}


Carr-255 {; Modified Liar4
  c=z=1/pixel, p=p1+1:
  z=1-abs(imag(z)*p-real(z))+flip(1-abs(1-real(z)-imag(z)))
  z=z*z+(c-0.124)
  |z| <=10
  ;SOURCE: 10carr.frm
}


Carr-256 {; Modified Liar4
  c=0.5/pixel, z=1.5/pixel, p=p1+1:
  z=1.25-abs(imag(z)*p-real(z))+flip(1.35-abs(1.35-real(z)-imag(z)))
  z=z*z+(c-0.124)
  |z| <=10
  ;SOURCE: 10carr.frm
}


Carr-257 {; Modified Liar4
  c=1/pixel, z=pixel, p=p1+1:
  z=z*z+(c+0.124)
  z=1-abs(imag(z)*p-real(z))+flip(1.35-abs(1.35-real(z)-imag(z)))
  |z| <=10
  ;SOURCE: 10carr.frm
}


Carr-258 {; Modified Liar4
  c=1/pixel, z=pixel, p=p1+1.3:
  z=1-abs(real(z)*p-imag(z))+1/flip(1.75-abs(1.35-real(z)-imag(z)))
  z=z*z+(c-0.524)
  |z| <=10
  ;SOURCE: 10carr.frm
}


Carr-259 {; Modified Liar4
  c=pixel, z-1/pixel, p=p1+1:
  z=1-abs(real(z)*p-imag(z))+1/conj(flip(1.35-abs(1.35-real(z)-imag(z))))
  z=z*z+(c-0.124)
  |z| <=10
  ;SOURCE: 10carr.frm
}


Carr-260 {; Modified Liar4
  c=pixel, z=1/pixel, p=p1+pixel:
  z=1-abs(real(z)*p-imag(z))+1/conj(1.35-abs(1.35-real(z)-imag(z)))
  z=z*z+(c-0.124)
  |z| <=10
  ;SOURCE: 10carr.frm
}


Carr-261 {; Modified Liar3
  z=pixel, c=1/pixel, x=cosxx(z*z)+c:
  z=flip(1.35-abs(1.35-real(x)-imag(z)))+real(x)
  |z| <=10
  ;SOURCE: 10carr.frm
}


Carr-262 {; Modified SJMAND05
  z=real(1/pixel)+flip(imag(1/pixel))*p1
  c=p2+p1*real(1/pixel)+flip(imag(1/pixel)):
  z=fn1(z)*c
  |z| <=64
  ;SOURCE: 10carr.frm
}


Carr-263 {; Modified SJMAND05
  z=real(1/pixel)+flip(imag(1/pixel))*p1
  c=p2+p1*real(1/pixel)+conj(imag(1/pixel)):
  z=fn1(z)*c
  |z| <=64
  ;SOURCE: 10carr.frm
}


Carr-264 {; Modified SJMAND05
  z=real(1/pixel)+conj(imag(1/pixel))*p1
  c=p2+p1*real(1/pixel)+flip(imag(1/pixel)):
  z=fn1(z)*c
  |z| <=64
  ;SOURCE: 10carr.frm
}


Carr-265 {; Modified SJMAND05
  z=1/conj(real(1/pixel)+flip(imag(1/pixel))*p1)
  c=1/conj(p2+p1*real(1/pixel)+flip(imag(1/pixel))):
  z=1/conj(z*z)*(c-0.124)
  |z| <=64
  ;SOURCE: 10carr.frm
}


Carr-266 {; Modified SJMAND05
  z=1/conj(real(1/pixel)+1/flip(imag(1/pixel))*p1)
  c=1/conj(p2+p1*real(1/pixel)+1/flip(imag(1/pixel))):
  z=1/conj(z*z)*(c-0.124)
  |z| <=64
  ;SOURCE: 10carr.frm
}


Carr-267 {; Modified SJMAND05
  z=1/conj(real(1/pixel)+conj(1/flip(imag(1/pixel))*p1))
  c=1/conj(p2+p1*real(1/pixel)+conj(1/flip(imag(1/pixel)))):
  z=1/conj(z*z)*(c-0.124)
  |z| <=64
  ;SOURCE: 10carr.frm
}


Carr-268 {; InvSherrybrot
  c=0.33/pixel, z=1.67/pixel:
  c=sqr(1/pixel)/z
  c=z+c
  z=(z*z)*(z*z)-(c+0.0124)
  |z| <=10
  ;SOURCE: 10carr.frm
}


Carr-269 {
  z=1/pixel, c=1/sin(z):
  z=(z*z)+(c-0.124)
  z=z*1/(c-0.124)
  |z| <=10
  ;SOURCE: 10carr.frm
}


Carr-27 {; Carr-24 Modified
  c=z=1/pixel:
  z=sqr(z) + (c-1 1/4)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-270 {
  z=1/pixel, c=1/sin(z):
  z=((z*z)+(flip(c-0.124)))
  z=z*1/(c-0.124)
  |z| <=10
  ;SOURCE: 10carr.frm
}


Carr-271 {
  z=1/pixel, c=1/sin(z):
  z=((z*z*z)+sqr(flip(c-0.124)))
  z=z*1/(c-0.124)
  |z| <=10
  ;SOURCE: 10carr.frm
}


Carr-272 {; Star-Mandelbrot
  z=1/pixel, c=1/sin(z):
  z=((z*z*z)+(flip(c-0.124)))
  z=z*1/(c-0.124)
  |z| <=10
  ;SOURCE: 10carr.frm
}


Carr-273 {
  z=1/pixel, c=1/cosxx(z):
  z=((z*z*z)+flip(c-0.124))
  z=z*1/(c-0.124)
  |z| <=10
  ;SOURCE: 10carr.frm
}


Carr-274 {
  z=pixel, c=1/cosxx(z):
  z=((z*z*z)+flip(c-0.124))
  z=z*1/(c-0.124)
  |z| <=10
  ;SOURCE: 10carr.frm
}


Carr-275 {
  z=1/pixel, c=1/cosxx(z*z):
  z=((z*z*z)+flip(c-0.124))
  z=z*1/(c-0.124)
  |z| <=10
  ;SOURCE: 10carr.frm
}


Carr-276 {; Great for CARR'S CRYSTALS. Use B-Trace
  z=1/pixel, c=1/cosxx(z*z):
  z=((z*z*z)+flip(c*c-0.124))
  z=z*1/(c-0.124)
  |z| <=10
  ;SOURCE: 10carr.frm
}


Carr-277 {
  z=1/pixel, c=1/conj(z*z):
  z=((z*z)+flip(c+0.124))
  z=z*1/(c+0.124)
  |z| <=10
  ;SOURCE: 10carr.frm
}


Carr-278 {
  z=1/pixel, c=1/conj(z*z):
  z=((z*z)-flip(c+0.124))
  z=sqr(z*1/(c+0.124))
  |z| <=10
  ;SOURCE: 10carr.frm
}


Carr-279 {
  z=1/pixel, c=1/conj(flip(z*z)):
  z=((z*z)-flip(c+0.124))
  z-z*1/(c+0.124)
  |z| <=10
  ;SOURCE: 10carr.frm
}


Carr-28 {; Carr-24 Modified
  c=z=1/pixel:
  z=(z*z*z) + c
  |z| <= 4
  ;SOURCE: carr.frm
}


Carr-280 {
  z=1/pixel:
  z=z*z
  z=1/sin(z*z+pixel*pixel)
  |z| <=10
  ;SOURCE: 10carr.frm
}


Carr-281 {
  z=1/pixel:
  z=1/cosxx(z*z+pixel*pixel)
  |z| <=10
  ;SOURCE: 10carr.frm
}


Carr-282 {
  z=1/pixel:
  z=1/sin(z*z+cosxx(pixel*pixel))
  |z| <=10
  ;SOURCE: 10carr.frm
}


Carr-283 {
  z=1/pixel, c=1/(sin(z*z+pixel*pixel)):
  z=z*z+(pixel-0.124)*z-1/pixel
  z=c/pixel
  |z| <=10
  ;SOURCE: 10carr.frm
}


Carr-284 {
  z=1/pixel, c=1/pixel:
  z=(sqr(1/conj(z))+(c-0.124))
  |z| <=10
  ;SOURCE: 10carr.frm
}


Carr-285 {
  z=1/pixel:
  z=1/conj(z*z)+(pixel*pixel)
  |z| <=10
  ;SOURCE: 10carr.frm
}


Carr-286 {
  z=p1*real(pixel*pixel)+flip(imag(pixel*pixel))
  c=p2+real(pixel)+flip(imag(pixel)+p1):
  z=z*z+conj(c-0.124)
  |z| <=64
  ;SOURCE: 10carr.frm
}


Carr-287 {
  z=p1*real(pixel*pixel)+flip(imag(pixel*pixel))
  c=p2+real(pixel*pixel)+flip(imag(pixel*pixel)+p1):
  z=z*z+flip(c-0.124)
  |z| <=64
  ;SOURCE: 10carr.frm
}


Carr-288 {
  z=p1*real(pixel*pixel)+conj(flip(imag(pixel*pixel)))
  c=p2+real(pixel*pixel)+conj(flip(imag(pixel*pixel)+p1)):
  z=z*z+log(sqr(c-0.124*c-0.124))
  |z| <=64
  ;SOURCE: 10carr.frm
}


Carr-289 {
  z=p1*real(pixel*pixel)+conj(flip(imag(pixel*pixel)))
  c=p2-real(pixel*pixel)+conj(flip(imag(pixel*pixel)+p1)):
  z=z*z+log(sqr(c-0.124*c-0.124))
  |z| <=64
  ;SOURCE: 10carr.frm
}


Carr-29 {; Carr-24 Modified
  c=z=1/pixel:
  z=1-(z*z*z) + c
  |z| <= 4
  ;SOURCE: carr.frm
}


Carr-290 {
  z=p1*real(pixal*pixel*pixel)-conj(flip(imag(pixel*pixel*pixel)))
  c=p2-real(pixel*pixel*pixel)-conj(flip(imag(pixel*pixel*pixel)+p1)):
  z=z*z/(c-0.124)/conj(pixel)
  |z| <=64
  ;SOURCE: 10carr.frm
}


Carr-291 {; SJMAND09 Modified
  z=real(pixel)+flip(imag(p2))
  c=real(p2)+flip(imag(pixel)):
  z=z*z+(c-0.124)
  |z| <=4
  ;SOURCE: 10carr.frm
}


Carr-292 {
  z=real(pixel*pixel-0.2)+flip(imag(p2))
  c=real(p2)+(flip(imag(pixel*pixel-0.2))):
  z=sin((z*z)+(c+0.524))
  |z| <=4
  ;SOURCE: 10carr.frm
}


Carr-293 {
  z=1/pixel, c=p1:
  z=cosxx(z-0.124)+(c+0.524)
  c=c*p2
  z=(z*z)+(c-0.524)
  |z| <=4
  ;SOURCE: 10carr.frm
}


Carr-294 {; Julia-Mandel Hybrid
  z=1/pixel, c=1/pixel:
  z=z*z+(-0.6882,-0.1729)
  z=z*z+c
  |z| <=4
  ;SOURCE: 10carr.frm
}


Carr-295 {; Julia_Mandel Hybrid
  z=1/pixel, c=1/pixel:
  z=z*z+c
  z=z*z+(0.3,0.6)
  z=z*z+c
  |z| <=4
  ;SOURCE: 10carr.frm
}


Carr-296 {
  z=c=1/pixel:
  z=(z*z+c)/(cos(z)/z+pixel)
  |z| <=4
  ;SOURCE: 10carr.frm
}


Carr-297 {
  c=z=1/pixel:
  z=z*z+flip(c)
  z=(z*z+flip(c))/(cos(z*z)+flip(c))
  |z| <=4
  ;SOURCE: 10carr.frm
}


Carr-298 {
  z=c=1/pixel:
  z=(z*z)+flip(c)
  z=(z*z+flip(c))/(tanh(z*z)+flip(c))
  |z| <=4
  ;SOURCE: 10carr.frm
}


Carr-299 {; Works with Distance Estimator
  c=log(pixel), z=1/pixel:
  z=c*(2*z*z-1)/1/(sqr(z)+pixel)
  |z| <=10
  ;SOURCE: 10carr.frm
}


Carr-30 {; Carr-24 Modified
  c=z=1/pixel:
  z=(z*z*z*z*z) +c
  |Z| <= 4
  ;SOURCE: carr.frm
}


Carr-300 {
  c=log(pixel), z=1/pixel:
  z=(c-3.124)*(4*z*z-1)/2/(sqr(z)+pixel)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-301 {
  c=log(pixel), z=1/pixel:
  z=c*(4*z*z-1)/2/(sqr(z)+pixel)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-302 {; CARRBROT? Why not?
  z=1/(log(pixel)+cosxx(pixel)), c=1/pixel:
  z=z*z+c
  |z| <=4
  ;SOURCE: 09carr.frm
}


Carr-303 {
  z=1/(log(pixel)+cosxx(1/pixel)), c=sqr(pixel)/z:
  z=z*z+c
  |z| <=4
  ;SOURCE: 09carr.frm
}


Carr-304 {
  z=1/pixel, c=1/sin(z-2):
  z=z*z+c
  z=z*1/c
  |z| <=4
  ;SOURCE: 09carr.frm
}


Carr-305 {
  z=1/pixel, c=sqr(pixel)/z:
  z=z*z+c
  z=z*1/c
  |z| <=4
  ;SOURCE: 09carr.frm
}


Carr-306 {
  z=z*pixel+(pixel-1), c+pixel:
  z=z*z+c
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-307 {
  z=z*pixel+(pixel-1), c=1/pixel:
  z=sqr(z*z)+(c-0.124)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-308 {
  z=z*pixel+(pixel-1), c=pixel:
  z=sqr(z*z)+(c-0.124)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-309 {; Great Crystals
  z=1/(z*pixel+(pixel-1)), c=1/pixel:
  z=z*z+(c-0.124)
  z=z*z+(c-0.124)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-31 {; Carr-24 Modified       
  c=z=1/pixel:
  z=(z*z*z*z*z*z) + c
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-310 {
  z=sqr(1/(pixel*pixel)), c=1/pixel:
  z=z*z+(flip(c)-0.124)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-311 {
  z=sqr(1/(pixel*pixel)), c=1/pixel/pixel:
  z=z*z*z+(flip(c)-00.124)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-312 {
  z=1/conj(pixel), c=1/pixel:
  z=c*(z*z-2)+flip(c)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-313 {
  z=1/conj(pixel), c=1/pixel:
  z=imag(z)*(c*(z*z*(z*z-4)+2))+flip(c)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-314 {
  z=cotan(1/pixel*1/pixel), c=1/pixel:
  z=z*z+flip(c)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-315 {
  z=1/cotan(1/pixel*1/pixel), c=1/pixel:
  z=z*z+flip(c)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-316 {
  z=1/sqr(pixel*pixel), c=1/pixel:
  z=z*z*z+flip(c)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-317 {
  z=1/pixel*(0.3,0.6), c=1/pixel:
  z=z*z+c
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-318 {
  z=1/pixel*(0.6,0.6), c=1/pixel:
  z=z*z+flip(c)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-319 {
  z=1/pixel*(1.6,1.6), c=1/pixel:
  z=z*z+flip(c)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-32 {; Carr-24 Modified
  c=z=pixel:
  z=(z*z*z*z*z*z) + c
  |z| <= 4
  ;SOURCE: carr.frm
}


Carr-320 {;***
  z=1/pixel*(3.6,2.6), c=1/pixel*(0.6,0.6):
  z=z^z*z+flip(c*c)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-321 {;***
  z=1/pixel*(3.6,2.6), c=1/pixel*(0.6,0.6):
  z=pixel-c*c
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-322 {
  z=1/pixel*(3.6,2.6), c=1/pixel*(1.25,1.25):
  z=pixel-(c*c*c*c)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-323 {; Distance Estimator works with this FRM
  z=c=1/pixel:
  z=z*z+flip(c)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-324 {; Distance Estimator works with this FRM
  z=c=1/pixel:
  z=z*z+flip(c*c)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-325 {; Distance Estimator works with this FRM
  z=c=1/pixel:
  z=z*z*z+flip(c*c)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-326 {; Distance Estimator works with this FRM
  z=c=1/pixel:
  z=z*z*z+flip(c*c*c)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-327 {
  z=c=1/pixel:
  z=z*z*z/flip(c*c*c)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-328 {
  z=c=flip(1/pixel):
  z=z*z+c
  z=sin(z*z)+c
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-329 {; Distance Estimator works with this FRM
  z=c=flip(1/pixel):
  z=z*z+conj(c*c)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-33 {; Carr-24 Modified
  c=z=1/pixel:
  z=(z*z*z*z*z*z*z) + c
  |z| <= 8
  ;SOURCE: carr-1.frm
}


Carr-330 {; Distance Estimator works with this FRM
  z=c=flip(1/pixel):
  z=z*z*z+conj(c*c*c)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-331 {
  z=c=flip(1/pixel*1/pixel):
  z=z*z+conj(c)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-332 {
  z=1/fn1(pixel), c=1/fn2(pixel):
  z=z*z+c
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-333 {
  z=1/fn1(1/pixel*1/pixel), c=1/fn2(1/pixel*1/pixel):
  z=z*z/c-0.124
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-334 {
  z=sqr(1/fn1(1/pixel*1/pixel)), c=sqr(1/fn2(1/pixel*1/pixel)):
  z=z*z/c-0.124
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-335 {
  z=sqr(1/fn1(1/pixel*1/pixel)), c=sqr(1/fn2(1/pixel*1/pixel)):
  z=z*z*z/(c-0.124)*(c-0.124)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-336 {
  z=tan(1/fn1(1/pixel*1/pixel)), c=tan(1/fn2(1/pixel*1/pixel)):
  z=flip((z*z+pixel)/(pixel*pixel+(c-0.124)))
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-337 {
  z=tan(1/fn1(1/pixel*1/pixel)), c=tan(1/fn2(1/pixel*1/pixel)):
  z=((z*z+pixel)/(pixel*pixel+(c-0.124)))
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-338 {
  z=cosxx(1/fn1(1/pixel*1/pixel)), c=cotanh(1/fn2(1/pixel*1/pixel)):
  z=z*z+c
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-339 {
  z=sinh(1/fn1(1/pixel*1/pixel)), c=cotanh(1/fn2(1/pixel*1/pixel)):
  z=z*z+c
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-34 {; Carr-24 Modified
  c=z=pixel:
  z=(z*z*z*z*z*z*z) + c
  |z| <= 8
  ;SOURCE: carr.frm
}


Carr-340 {
  z=sinh(1/fn1(1/pixel*1/pixel)), c=tanh(1/fn2(1/pixel*1/pixel)):
  z=z*z+c
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-341 {
  z=tanh(1/fn1(1/pixel*1/pixel)), c=conj(1/fn2(1/pixel*1/pixel)):
  z=z*z+c
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-342 {
  z=conj(1/fn1(1/pixel*1/pixel)), c=conj(1/fn2(1/pixel*1/pixel)):
  z=z*z+c
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-343 {
  z=conj(1/fn1(pixel*pixel)), c=conj(1/fn2(pixel*pixel)):
  z=z*z+c
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-344 {
  z=cosxx(1/fn1(pixel*pixel)), c=conj(1/fn2(pixel*pixel)):
  z=z*z+c
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-345 {
  z=tanh(1/fn1(pixel*pixel)), c=tan(1/fn2(pixel*pixel)):
  z=z*z+c
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-346 {
  z=1/sin(1/fn1(pixel*pixel)), c=tan(1/fn2(pixel*pixel)):
  z=z*z+c
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-347 {
  z=sin(1/fn1(pixel*pixel)), c=1/cosxx(1/fn2(pixel*pixel)):
  z=z*z+c
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-348 {
  z=sin(1/fn1(pixel*pixel)), c=1/cosxx(1/fn2(pixel*pixel)):
  z=z*z+c*c
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-349 {
  z=sin(1/fn1(pixel*pixel)), c=1/cosxx(1/fn2(pixel*pixel)):
  z=z*z+(c/pixel*c/pixel)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-35 {; Carr-24 Modified
  c=z=1/pixel:
  z=(z*z*z*z*z*z*z*z*z) +c
  |z| <= 8
  ;SOURCE: carr-1.frm
}


Carr-350 {
  z=1/sin(1/fn1(pixel*pixel)), c=1/1/conj(1/fn2(pixel*pixel)):
  z=z*z+(c/pixel*c/pixel)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-351 {
  z=1/sin(1/fn1(pixel+1)), c=1/log(1/fn2(pixel+1)):
  z=z*z+(c/pixel-1*c/pixel-1)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-352 {
  z=tanh(1/fn1(pixel)), c=1/flip(1/fn2(pixel)):
  z=z*z+(c/pixel*c/pixel)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-353 {
  z=tanh(1/fn1(pixel)), c=1/tan(1/fn2(pixel)):
  z=z*z+(c/pixel*c/pixel)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-354 {
  z=tanh(1/fn1(pixel)), c=1/cosxx(1/fn2(pixel*z)):
  z=z*z+(c/pixel*c/pixel)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-355 {
  z=tanh(1/fn1(pixel*c)), c=1/cosxx(1/fn2(pixel)):
  z=z*z+(c/pixel*c/pixel)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-356 {
  z=cos(1/fn1(pixel*c)), c=1/cos(1/fn2(pixel)):
  z=z*z+(c/pixel*c/pixel)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-357 {
  z=cotanh(1/fn1(pixel*c)), c=1/cos(1/fn2(pixel)):
  z=z*z+(c/pixel*c/pixel)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-358 {
  z=sin(1/fn1(pixel*c)), c=1/sin(1/fn2(pixel)):
  z=z*z+(c/pixel*c/pixel*c)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-359 {
  z=sin(1/fn1(pixel*c)), c=1/sin(1/fn2(pixel)):
  z=z+1/conj(c*c*c)
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-36 {; Modified Julia formula from BUILTIN.FRM file
  z=1/cosxx(pixel)
  c=((0.3,0.6) ^ (|p1| <=0) + p1)
  t=4*(real(p2)<=0 + real(p2) ^ (0<p2)):
  z=sqr(z*z*z*z) + c
  |z| <= 8
  ;SOURCE: carr-1.frm
}


Carr-360 {
  z=sinh(1/fn1(pixel*c)), c=1/sqr(1/fn2(pixel)), Bob=sqr(c*c*c):
  z=z/(1/pixel)+Bob
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-361 {
  z=sinh(1/fn1(pixel*c)), c=1/sqr(1/fn2(pixel))
  Bob=(1/c*1/c^1/c)*(c*c^c):
  z=z/(1/pixel)+Bob
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-362 {
  z=tanh(1/fn1(pix*c)), c=1/(1/fn2(pix))
  Bob=(1/c*1/c^1/c)*(c*c^c):
  z=z/(1/pixel)+Bob
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-363 {
  z=1/tanh(1/fn2(1/pixel+1)), c=1/cosxx(1/fn2(1/pixel+1)):
  z=z*z+c
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-364 {
  z=1/tanh(1/fn2(1/pixel+2)), c=1/cosxx(1/fn2(1/pixel+2)):
  z=z*z+c
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-365 {
  z=1/cosxx(1/fn2(1/pixel+2)), c=1/tanh(1/fn2(1/pixel+2)):
  z=z*z+c
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-366 {
  z=flip(1/fn2(1/pixel+2)), c=conj(1/fn2(1/pixel+2)):
  z=z*z+c
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-367 {
  z=1/sinh(1/fn2(1/pixel+2)), c=1/tanh(1/fn2(1/pixel+2)):
  z=z*z+c
  |z| <=10
  ;SOURCE: 09carr.frm
}


Carr-368 {; Distance Estimator works with this FRM
  c=z=sqr(1/fn2(1/pixel-1.5)):
  z=z*z*z+c 
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-369 {
  c=z=sqr(1/fn2(1/pixel-1.5)):
  z=z*z*z*z+flip(c*c)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-37 {; Modified Julia formula from BUILTIN.FRM file
  z=tan(1/pixel)
  c=((0.4,0.8) ^ (|p1|<=0)) + p1
  t=(4^(real(p2)<=0) + real(p2) ^ (0<p2)):
  z=sqr(z*z*z*z) + c
  |z|<=8
  ;SOURCE: carr-1.frm
}


Carr-370 {
  c=z=sqr(1/fn2(1/pixel-1.5)):
  z=z*z+flip(c)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-371 {; Distance Estimator works with this FRM
  c=z=sqr(1/fn2(1/pixel-1.5)):
  z=c*(2*z*z-1)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-372 {
  c=z=sqr(1/fn2(1/pixel-1.5)):
  z=(2*z*z-1)+flip(c)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-373 {
  z=sqr(1/fn2(1/pixel-1.5))
  c=sqr(1/fn2(1/pixel)):
  z=log(z-2.7)*(z*z)+c
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-374 {
  z=sqr(1/fn2(1/pixel-1.5)), c=sqr(1/fn2(1/pixel)):
  z=log(z*z-2.7)*(z*z)/c
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-375 {
  z=1/sqr(1/fn2(1/pixel-2.01)), c=1/sqr(1/fn2(1/pixel)):
  z=conj(z+sqr(z-0.124))/pixel
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-376 {
  z=1/sqr(1/fn2(1/pixel-2.01)), c=1/sqr(1/fn2(1/pixel)):
  z=conj(z+sqr(z-0.324))/pixel
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-377 {
  z=1/sqr(1/fn2(1.2/pixel-2.01)), c=1/sqr(1/fn2(1/pixel)):
  z=conj(z+sqr(z-0.324))/pixel
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-378 {
  z=1/sqr(1/fn2(1.15/pixel-2.01)), c=1/sqr(1/fn2(1/pixel)):
  z=conj(z+sqr(z-0.324))/pixel
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-379 {
  z=1/sqr(1/fn2(1.15/pixel-2.01)), c=1/sqr(1/fn2(1/pixel)):
  z=conj(z+sqr(z-0.324))/(0.48/pixel)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-38 {; Modified Julia formula from BUILTIN.FRM file
  c=cosxx(1/pixel) 
  c=((0.4,0.8) ^ (|p1|<=0)) + p1
  t=(4^(real(p2)<=0) + real(p2) ^ (0<p2)):
  z= sqr(z*z*z*z*z*z) + c
  |z| <= 8
  ;SOURCE: carr-1.frm
}


Carr-380 {
  z=sqr(1/fn2(1.159/pixel-2.11)), c=1/sqr(1/fn2(1/pixel)):
  z=conj(z+sqr(z-0.524))/(0.489/pixel)
  |z| <=10
  ; SOURCE: 08carr.frm
}


Carr-381 {
  z=sqr(0.78/fn2(1.159/pixel-2.11))
  c=1/sqr(1/fn2(1/pixel)):
  z=conj((z/0.8)+sqr(z-0.324))/(0.489/pixel)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-382 {
  z=sqr(0.78/fn2(1.159/pixel-2.11)), c=1/sqr(1/fn2(1/pixel)):
  z=flip(conj((z/0.8))+sqr(z-0.324))/(0.489/pixel)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-383 {
  z=1/sqr(0.78/fn2(1.159/pixel-2.11)):
  z=flip(conj((z/0.8))+sqr(z-0.324))/(0.489/pixel)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-384 {
  z=1/sqr(0.78/fn2(1.159/pixel-2.11)):
  z=0.7/sqr(conj((z/0.8))+sqr(z-0.324))/(0.489/pixel)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-385 {
  z=3/sqr(0.3/fn2(1.159/pixel-2.11)):
  z=conj((z/0.8)+sqr(z-0.324))/(0.489/pixel)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-386 {
  z=3*sqr(fn2(1.159/pixel-2.11)):
  z=conj((z/0.8)+sqr(z-0.324))/(0.489/pixel)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-387 {; Dave Oliver formula modified.Distance Estimator works here.
  z=1/pixel:
  z=((pixel^z)-1)+(pixel^(z-1))
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-388 {; Dave Oliver formula modified
  z=((pixel^z)-1)*(pixel^(z-1)), c=1/pixel:
  z=z*z+c
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-389 {; Dave Oliver formula modified
  z=1/((pixel^z)-1)*(pixel^(z-1)), c=1/pixel:
  z=z*z+c
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-39 {; Karl Geigl formula Modified
  z=c=pixel:
  z=((z*z*z*z+1/4)*2/z*(z*z-1))*c
  |z| <=4
  ;SOURCE: carr-1.frm
}


Carr-390 {; Dave Oliver formula modified
  z=1/((pixel^z)-2)*(pixel^(z-2)), c=1/pixel-1:
  z=z*z+c
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-391 {
  z=1/((pixel^z)+2)*(pixel^(z+2)), c=1/pixel-1:
  z=z*z+c
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-392 {; Distance Estimator works here
  z=c=((sqrt 5 + 1)/2)/pixel:
  z=z*z+flip(c)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-393 {; Distance Estimator works here
  z=c=((sqrt 5 + 1)/2)/pixel:
  z=z*z*z+flip(c*c)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-394 {
  z=c=((sqrt 3 + 0.5)/0.124)/pixel:
  z=z*z*z+flip(c)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-395 {
  z=c=((sqrt 9 + 2.234)/0.324)/pixel:
  z=z*z*z+flip(c)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-396 {; Distance Estimator works here
  z=c=((sqrt 5 + 1)/2)/pixel:
  z=conj(z*z)+flip(c)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-397 {; Distance Estimator works here
  z=c=((sqrt 5 + 1)/2)/pixel:
  z=1/conj(z*z)+flip(c)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-398 {; Distance Estimator works here
  z=c=((sqrt 5 + 1)/2)/pixel:
  z=1/sqr(z*z)+flip(c)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-399 {; Distance Estimator works here
  z=c=((sqrt 5 + 1)/2)/pixel:
  z=z*z+flip(c/2)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-40 {; Karl Geigl formula Modified
  z=c=1/pixel:
  z=((z*z*z*z+1/4)*2/z*(z*z-1))*tan(c)
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-400 {
  z=flip(real(1/pixel)), c=flip(imag(pixel)):
  z=z*z+c
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-401 {
  z=flip(real(1/pixel)), c=flip(imag(pixel)):
  z=z*z+c+((sqrt5+1)/2)/pixel
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-402 {
  z=flip(real(1/pixel)), c=flip(imag(pixel)):
  z=z*z+c+((sqrt5+1)/2)*pixel
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-403 {; Distance Estimator works here
  z=flip(real(1/pixel)), c=flip(imag(pixel)):
  z=z*z+c+conj(((sqrt5+1)/2)*pixel)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-404 {
  z=exp(flip(real(1/pixel))), c=flip(imag(pix)):
  z=z*z+c+conj(((sqrt5+1)/2)*pixel)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-405 {
  z=exp(flip(real(0.33/pixel))), c=flip(imag(0.124/pixel)):
  z=z*z+c+conj(((sqrt5+1)/2)*pixel)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-406 {; Distance Estimator works here
  z=exp(flip(real(0.33/pixel))), c=flip(imag(0.124/pixel)):
  z=z*z+c+conj(((sqrt5+1)/2)*flip(pixel))
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-407 {
  z=exp(flip(real(0.33/pixel))), c=flip(imag(0.124/pixel)):
  z=z*z+c+conj(((sqrt5+1)/2)*flip(conj(pixel)))
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-408 {
  z=exp(flip(real(0.33/pixel))), c=flip(imag(0.124/pixel)):
  z=z*z+(c/pixel)+conj(((sqrt5+1)/2)*flip(conj(pixel)))
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-409 {
  z=exp(flip(real(0.33/pixel))), c=exp(imag(0.124/pixel)):
  z=z*z+(c/pixel)+conj(((sqrt5+1)/2)*exp(conj(pixel)))
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-41 {; Mark Peterson frm Modified
  z=pixel, c=cosh(1/pixel):
  z=sqr(z*z*z) + c
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-410 {; Based on Golden Mean frm from Graphdev. MODIFIED
          ; Distance Estimator works here.
  z=((sqrt5-1)/2), c=1/pixel:
  z=z*z+pixel*((sqrt5+1)/2)+c
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-411 {; Distance Estimator works here
  z=((sqrt5-1)/2), c=1/pixel+log(z*z):
  z=z*z+pixel*((sqrt5+1)/2)+c
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-412 {; Distance Estimator works here.
  z=((sqrt5-1)/2), c=1/pixel+log(z*z):
  z=z*z+pixel+((sqrt5+1)/2)+flip(c)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-413 {; Distance Estimator works here
  z=((sqrt5-1)/2), c=1/pixel+conj(flip(z*z*z)):
  z=z*z+c
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-414 {
  z=c*((sqrt5-1)/2), c=1/pixel+conj(flip(z*z*z)):
  z=z*z+flip(c)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-415 {
  z=c*((sqrt5-1)/2)/((sqrt5+1)/2), c=1/pixel+conj(flip(z*z*z)):
  z=z*z+flip(c)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-416 {; Excellent
  z=c*((sqrt5-1)/2)/((sqrt5+1)/2), c=1/pixel+conj(flip(z*z*z)):
  z=z*z+(0.524/c)/((sqrt5-1)/2)/((sqrt5+1)/2)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-417 {
  z=c*((sqrt5-1)/2), c=1/pixel+conj(flip(z*z*z)):
  z=z*z/fn2(pixel)+c
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-418 {
  z=c/log(pixel), c=1/pixel+conj(flip(z)):
  z=z*z+c
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-419 {
  z=c/log(0.124/pixel), c=1/pixel+conj(z):
  z=z*z+c
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-42 {; Mark Petersom frm Modified
  z=pixel, c=cosh(1/pixel):
  z=cosxx(z*z*z) + c
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-420 {; Distance Estimator works here
  z=1/c*(0.524/pixel), c=1/pixel+conj(z):
  z=z*z+c
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-421 {
  z=1/c*(0.524/pixel), c=1/pixel+conj(z*z*z):
  z=z*z*z+c
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-422 {
  z=1/c*(0.524/pixel/c), c=1/pixel+conj(z*z):
  z=z*z+flip(c)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-423 {
  z=0.124/c*(0.524/pixel/c), c=1/pixel:
  z=z*z*z+flip(c+0.324)
  z=z*z+sin(c)
  z=z*z+conj(c+0.324)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-424 {
  z=(1.5,0.3)*((sqrt5+1)/2), c=1/pixel:
  z=z*z+flip(c)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-425 {
  z=(1.5,0.3)*((sqrt5+1)/2), c=pixel:
  z=z*z+cosxx(c)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-426 {; Distance Estimator works here.
  z=c*((1.5,0.7)*((sqrt5+1)/2)), c=1/pixel:
  z=z*z+c
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-427 {; Distance Estimator works here
  z=c*((1.5,0.7)*((sqrt5+1)/2)), c=1/pixel:
  z=z*z+flip(c-0.324)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-428 {
  z=1/pixel/(1/cotanh(1.0124)), c=1/pixel/cos(2):
  z=z*z+flip(c*tan(c))
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-429 {; Distance Estimator works here.
  z=1/pixel-cos(1.124), c=1/pixel-tanh(1.08908):
  z=z*z+c
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-43 {; Kevin Lee Modified
  z=cosxx(pixel), c=pixel-tan(z*z*z):
  c=pixel+ c*c/z, z=c-z*sqr(pixel)
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-430 {; CARR'S RING
  z=c=1/pixel:
  z=pixel/c*c*pixel/z^(1.23)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-431 {; CARR'S RING
  z=c=1/pixel:
  z=1/pixel/c*c*pixel/z^(1.23)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-432 {; CARR'S RING
  z=c=1/pixel:
  z=1/pixel/c*c*c*pixel/z^(1.23)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-433 {; CARR'S RING
  z=c=1/pixel:
  z=0.124/pixel/c*c*c*pixel/z^(1.23)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-434 {
  z=c=1/pixel:
  z=0.124/pixel/c*c*c*pixel/z^(1.73)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-435 {; CARR'S RING
  z=c=1/pixel:
  z=0.124/pixel/c*c*c*pixel/z^(1.38)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-436 {; CARR'S RING, Distance Estimator works here.
  z=c=1/pixel:
  z=0.124/pixel/c*(c-0.124)*(c-0.524)*pixel/z^(1.38)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-437 {; CARR'S RING
  z=c=1/pixel/conj(1.353):
  z=0.124/pixel/c*(c+0.524)*(c-0.524)*pixel/z^conj(1.38)
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-438 {
  z=cos(1.34)/pixel, c=cos(1.54/pixel):
  z=z*z+c
  |z| <=10
  ;SOURCE: 08carr.frm
}


Carr-439 {
  z=exp(1.04)/pixel, c=z*(2*z*z-1):
  z=z*z+c
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-44 {; Drcha.frm-test-1 Modified
  c=pixel
  z=((sqrt 5 +1)/2):
  z=(z*z*z*z*z*z) + pixel*(sqrt 5 + 1)/2 +c
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-440 {; Distance Estimator works here.
  z=0.524/pixel, c=z*(4*z*z-2):
  z=z*z+c
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-441 {; Distance Estimator works here.
  z=0.524/pixel, c=z*(4*z*z-2):
  z=z*z+c*c
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-442 {; Distance Estimator works here.
  z=0.524/pixel, c=z*(4*z*z-2):
  z=z*z+c
  z=z*z+c
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-443 {; Distance Estimator works here.
  z=0.524/pixel, c=z*(4*z*z-2):
  z=z*z*z+c
  z=z*z*z+c
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-444 {; Distance Estimator works here.
  z=0.524/pixel, c=z*(4*z*z-2):
  z=z*z*z+c*c
  z=z*z*z+c*c
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-445 {
  z=0.524/pixel, c=z*(4*z*z-2):
  z=z*z*z+flip(c*c)
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-446 {
  z=0.524/pixel, c=z*(4*z*z-2):
  z=z*z*z+cos(c*c)
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-447 {; Distance Estimator works here.
  z=0.524/pixel-1, c=z*(4*z*z-2)-0.124:
  z=z*z*z+conj(1/c*1/c)
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-448 {; Distance Estimator works here.
  z=0.524/pixel-1, c=z*(4*z*z-2)-0.124:
  z=z*z*z+conj(pixel/c*pixel/c)
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-449 {; Formula made by mistake. Hit cap for z= and got z+
  z+(0.6,0.3)*pixel, c=1/pixel:
  z=z*z+c
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-45 {; Mark Peterson frm Modified
  c=z=1/pixel:
  z=sqr(z) + sqr(c)
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-450 {; If it worked once, try it again.
  z+(0.6,0.3)*pixel, c=1/pixel:
  z=z*z*z+c*c
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-451 {; And again.
  z+(0.6,0.3)*pixel, c=1/pixel:
  z=z*z+c
  z=sin(z*z)+c
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-452 {; Yet another.
  z+(1.6,-0.3)^pixel, c=1/pixel:
  z=z*z*z+c
  z=sin(z*z*z)+c
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-452A {
  z+(1.6,-0.3)^pixel, c=1/pixel:
  z=sin(z*z*z)+c
  z=z*z*z+c
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-453 {
  z+1/pixel-0.124, c=1/pixel:
  z=z*z*z+c
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-454 {
  z+1/pixel, c=1/pixel:
  z=z*z*z+c
  z=(sin(z*z))+c*c
  z=sin(z*z*z)+c
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-455 {; Distance Estimator works here.
  z=1/pixel:
  z=log(z*z)*pixel
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-456 {; Distance Estimator works here.
  z=1/pixel:
  z=log(z*z*z)*pixel
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-457 {; Distance Estimator works here.
  z=1/pixel:
  z=log(z*z*z*z)*pixel
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-458 {; Distance Estimator works here.
  z=1/pixel:
  z=log(z*z*z*z*z*z)*pixel
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-459 {; Distance Estimator works here.
  z=1/pixel:
  z=log(1/z*z*z*z*z*1/z)*pixel
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-46 {; Mark Peterson frm Modified
         ; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel:
  z=sqr(z*z*z*z) - 1/2 + c
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-460 {; Distance Estimator works here.
  z=1/pixel:
  z=log(z/pixel*z*z*z*z*z/pixel)*pixel
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-461 {; Distance Estimator works here.
  z=1/pixel:
  z=log(z/pixel*z*z*z*z*z/pixel)*1/pixel
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-462 {; Distance Estimator works here.
  z=1/pixel:
  z=log(z/pixel*z/pixel*z/pixel)*pixel
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-463 {; Distance Estimator works here.
  z=1/pixel:
  z=log(z/pixel*z/pixel*z/pixel*1/z)*pixel
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-464 {; Distance Estimator works here.
  z=1/pixel:
  z=1/log(z*z*z*z)*pixel
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-465 {; Somebody's Modified, I don't know who.
  z=1/pixel:
  z=z*z*z+1/z*z*z+pixel
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-466 {; Distance Estimator works here.
  z=1/pixel:
  z=z*z*z+1/z*z*z*pixel
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-467 {; Distance Estimator works here.
  z=1/pixel:
  z=z*z*z+1/z*1/z*1/z*pixel
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-468 {; Distance Estimator works here.
  z=1/pixel:
  z=z*z*z+1/(1/pixel*1/pixel*1/pixel)+pixel
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-469 {; Distance Estimator works here.
  z=1/pixel:
  z=z*z*z+1/(pixel*pixel-1)*z-pixel
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-47 {; Mark Peterson frm Modified
  c=z=(1/pixel)/2:
  z=sqr(z*z) + c
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-470 {
  z=z*z*z+1/(pixel-1), c=1/pixel:
  z=z*z+flip(c)
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-471 {; Distance Estimator works here.
  z=1/(pixel-1), c=1/pixel:
  z=z*z+flip(c)
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-472 {; Distance Estimator works here.
  z=1/(pixel-1), c=1/pixel:
  z=z*z+flip(c)
  z=z*z+flip(c)
  z=z*z+flip(c)
  z=z*z+flip(c)
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-473 {
  z=1/(pixel-1), c=1/pixel:
  z=z*z+conj(c)
  z=z*z+flip(c)
  z=z*z+flip(c)
  z=z*z+conj(c)
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-474 {; Distance Estimator works here.
  z=conj(1/pixel*0.124), c=1/pixel:
  z=z*z+conj(c)
  z=z*z+conj(c)
  z=z*z+conj(c)
  z=z*z+conj(c)
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-475 {; Distance Estimator works here.
  z=conj(1/pixel*0.124), c=1/pixel:
  z=z*z*z+conj(c)
  z=z*z*z+conj(c)
  z=z*z*z+conj(c)
  z=z*z*z+conj(c)
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-476 {
  z=1/pixel*0.124, c=1/pixel:
  z=fn1(z/pixel)*c
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-477 {
  z=1/pixel*0.124, c=1/pixel:
  z=fn1(z/pixel*z/pixel)*c
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-478 {; Very Strange !!
  z=1/pixel*0.124, c=1/pixel:
  z=1/(z*z)+c
  z=fn1(z/pixel)*c
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-479 {; Distance Estimator works here.
  z=1/pixel, c=fn2(z):
  c=flip(c)+z
  z=z*z+c
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-48 {; Mark Peterson frm Modified
  c=z=1/-pixel:
  z=sqr(z) + c
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-480 {; Distance Estimator works here.
  z=1/pixel, c=fn2(1/z):
  c=flip(c)+z
  z=z*z+c
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-481 {; Distance Estimator works here.
  z=1/pixel, c=fn2(1/z):
  c=flip(c)*z
  z=z*z*z+c
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-482 {; Distance Estimator works here.
  z=1/pixel, c=fn2(1/z):
  c=flip(c*c)*z
  z=z*z+c
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-483 {; Distance Estimator works here.
  z=1/pixel, c=fn2(1/z):
  c=flip(0.124*c+0.724)*z
  z=z*z+c
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-484 {; Distance Estimator works here.
  z=1/pixel, c=fn2(1/z):
  c=flip(0.124*c+0.724)*z
  z=z*z*z+c
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-485 {; Distance Estimator works here.
  z=1/pixel, c=fn2(1/z):
  c=flip(0.124*c+0.724)*z
  z=z*z*z*z+c
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-486 {; Distance Estimator works here.
  z=pixel, c=fn2(1/z):
  c=flip(0.124*c+0.724)*z
  z=z*z*z*z+c
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-487 {; Distance Estimator works here.
  z=pixel, c=fn2(1/z):
  c=flip(conj(0.124*c+0.724)*z)
  z=z*z*z*z+c
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-488 {; Distance Estimator works here.
  z=1/pixel, c=fn2(1/z):
  c=flip(conj(0.124*c+0.724)*z)
  z=z*z*z*z+c
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-489 {; Distance Estimator works here.
  z=1/pixel, c=fn2(1/z):
  c=flip(conj(0.324*c+0.924)*z)
  z=z*z*z*z+c
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-49 {; Mark Peterson frm Modified
  c=z=1/-pixel:
  z=sqr(z*z*z) + c
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-490 {; Distance Estimator works here.
  z=1/pixel, c=fn2(1/z):
  c=flip(conj(0.724*c+0.924)*z)
  z=z*z*z*z+c
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-491 {; Distance Estimator works here.
  z=1/pixel, c=fn2(1/z):
  c=flip(conj(0.724*c+0.924)*z)
  z=z*z*z*z+c/pixel
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-492 {; Distance Estimator works here.
  z=1/pixel, c=fn2(1/z):
  c=flip(conj(0.724*c+0.924)*z)
  z=1/z*z*z*1/z+c/pixel
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-493 {; Distance Estimator works here.
  z=1/pixel, c=fn2(1/z):
  c=flip(sqr(0.724*c+0.924)*z)
  z=z*z*z*z+c/pixel
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-494 {; Distance Estimator works here.
  z=1/pixel, c=fn2(1/z):
  c=flip(sqr(0.724*c+0.924)*z)
  z=z+c/pixel
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-495 {
  z=1/pixel, c=fn2(1/z):
  c=tanh(sqr(0.724*c+0.924)*z)
  z=z*z+c/pixel
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-496 {
  z=1/pixel, c=fn2(1/z):
  c=conj(log(0.742*c+0.924)*z)
  z=z*z+c/pixel
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-497 {
  z=1/pixel, c=fn2(1/z):
  c=conj(log(0.742*c+0.942)*z)
  z=z*z*z+c/pixel
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-498 {; Distance Estimator works here.
  z=1/pixel, c=fn4(1/z):
  c=conj(log(0.724*c+0.924)*z)
  z=z*z*z+c/pixel
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-499 {
  z=1.5/pixel, c=fn4(z/pixel):
  c=conj(sqr(0.724*c+0.924)*z)
  z=z*z*z+c/pixel+0.324
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-50 {; Mark Peterson frm Modified
  c=z=1/cosxx(-pixel):
  z=sqr(z) + c
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-500 {; Distance Estimator works here.
  z=1/pixel, c=fn1(fn2(1/z))+1/pixel
  z=z*z+c
  |z| <=10
  ;SOURCE: 07carr.frm
}


Carr-501 {; Distance Estimator works here.
  z=1/pixel, c=exp(0.6,0.3)/pixel:
  z=z*z*z*z*z+flip(c/pixel)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-502 {; Distance Estimator works here.
  z=1/pixel, c=exp(0.6,0.3)/pixel:
  z=(z*z*z+(pixel-0.124)*z-1/pixel)/c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-503 {
  z=1/pixel, c=exp(0.6,0.3)/(1/pixel):
  z=(z*z+(pixel-0.124)*z-1/pixel)/c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-504 {; Distance Estimator works here.
  z=1/pixel, c=exp(0.6,0.3)/(1/pixel):
  z=(1/z*1/z+(pixel-0.124)*z-1/pixel)/c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-505 {; Distance Estimator works here.
  z=1/pixel, c=exp(0.6,0.3)/(1/pixel):
  z=(1/z*1/z*1/z+(pixel-0.124)*z-1/pixel)/c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-506 {; Distance Estimator works here.
  z=1/pixel, c=exp(0.6,0.3)/(1/pixel):
  z=(1/z*1/z+sqr(pixel-0.124)*z-1/pixel)/c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-507 {
  z=1/pixel, c=exp(0.6,0.3)/(0.5/pixel):
  z=(z/pixel*z/pixel+(pixel+0.524)*z-1/pixel)/c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-508 {
  z=1/pixel, c=exp(0.6,0.3)/(0.5/pixel):
  z=(z/(pixel-0.724)*z/(pixel-0.724)+(pixel+0.524)*-1/pixel)/c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-509 {
  z=1/pixel, c=sinh(z):
  z=z*z*z+flip(c)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-51 {; Mark Peterson frm Modified
  c=z=1/tan(-pixel):
  z=sqr(z*z*z) + c
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-510 {
  z=1/pixel, c=sinh(z):
  z=z*z*z+flip(c-0.524)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-511 {
  z=1/pixel, c=sin(z):
  z=z*z*z+flip(c-0.324)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-512 {
  z=1/pixel, c=cos(z):
  z=z*z*z+flip(c-0.324)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-513 {
  z=1/pixel, c=cos(z):
  z=z*z*z+flip(c)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-514 {
  z=1/pixel, c=cosh(z):
  z=z*z*z+flip(c-0.324)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-515 {
  z=1/pixel, c=cosxx(z):
  z=z*z*z+flip(c-0.324)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-516 {
  z=1/pixel, c=flip(tanh(z)):
  z=z*z*z+flip(c-0.324)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-517 {
  z=1/pixel, c=sinh(z/pixel):
  z=z*z*z+flip(c-0.324)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-518 {
  z=1/pixel, c=cos(z/pixel):
  z=z*z*z+flip(c-0.324)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-519 {
  z=1/pixel, c=cos(z*1/pixel):
  z+z*z*z+flip(c-0.324)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-52 {; Mark Peterson frm Modified
  c=z=1/tan(-pixel):
  z=sqr(z*z*z) + 0.75
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-520 {
  z=1/pixel, c=cos(z*1/pixel):
  c=fn1(sinh(z))
  z=z*z*z+flip(c-0.324)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-521 {
  z=1/pixel, c=cos(z+1/pixel):
  c=fn2(sin(z/pixel))
  z=z*z*z+flip(c-0.424)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-522 {
  z=1/pixel, c=cos(z*1/pixel):
  c=conj(fn2(sin(z/pixel)))
  z=conj(z*z*z)+flip(c-0.424)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-523 {
  z=1/pixel, c=1/sin(1/(z*z)):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-524 {; Excellent !!
  z=1/pixel, c=1/sinh(1/(z*z)):
  z=z*z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-525 {; Excellent !!!
  z=1/pixel, c=1/sinh(1/(z*z)):
  z=z*z*z+(c-0.524)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-526 {
  z=1/pixel, c=1/sinh(1/(z*z)):
  z=z*z*z+(c+0.924)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-527 {
  z=1/pixel, c=1/sinh(1/(z*z)):
  z=z*z*z+(c+(0.6,0.3))
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-528 {; Nice !!!
  z=1/pixel, c=1/conj(1/(z*z)):
  z=z*z*z+(c+(0.6,0.3))
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-529 {
  z=1/pixel, c=1/conj(1/(z*z)):
  z=z*z*z+(c-0.224)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-53 {; Mark Peterson frm Modified
  c=z=1/conj(-pixel):
  z=(sqr(z*z*z))/2 + 0.75
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-530 {
  z=1/pixel, c=1/conj(1/(z*z)):
  z=z*z*z+(c-0.524)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-531 {
  z=1/pixel, c=1/conj(1/(z*z)):
  z=z*z*z+(c-0.824)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-532 {
  z=1/pixel, c=1/conj(1/(z*z)):
  z=z*z*z+(c/0.824)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-533 {
  z=1/pixel, c=1/conj(1/(z*z)):
  z=z*z*z+(c/0.524)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-534 {
  z=1/pixel, c=1/conj(1/(z*z)):
  z=z*z*z+(c/0.124)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-535 {
  z=1/pixel, c=1/cosh(1/(z*z)):
  z=z*z*z+(c/0.324)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-536 {
  z=1/pixel, c=1/exp(1/(z*z)):
  z=z*z*z+(c/0.324)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-537 {
  z=1/pixel, c=1/sinh(1/(z*z)):
  z=z*z*z+(c/0.724)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-538 {
  z=1/pixel, c=1/sinh(1/(z*z)):
  c=z*z+c
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-539 {
  z=1/pixel, c=1/sinh(1/(z*z)):
  c=c*c*c+z
  z=z*z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-54 {; Mark Peterson frm Modified
  c=z=1/-pixel:
  z=(sqr(z*z*z))/2 + 0.33
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-540 {; Distance Estimator works here.
  z=1/pixel, c=conj(sqr(z)+pixel):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-541 {
  z=1/pixel, c=1/sqr(1/z+conj(1/z*1/z)):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-542 {
  z=1/pixel, c=1/sqr(1/z+conj(1/z*1/z*1/z)):
  z=z*z*z+(c+0.724)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-543 {
  z=1/pixel, c=1/sqr(1/z+conj(1/z*1/z*1/z)):
  z=z*z+(c+0.724)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-544 {
  z=1/pixel, c=1/sqr(1/z+conj(1/z*1/z*1/z)):
  z=z*z+(c+0.224)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-545 {
  z=1/pixel, c=1/sqr(1/z+conj(1/z*1/z*1/z)):
  z=z*z+(c-0.424)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-546 {
  z=1/pixel, c=1/sqr(1/z+conj(1/z*1/z*1/z)):
  z=z+z+(c-0.824)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-547 {
  z=1/pixel, c=1/cos(1/z+conj(1/z*1/z*1/z)):
  z=z*z+(c-0.824)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-548 {
  z=1/pixel, c=1/cos(1/z+conj(1/z*1/z*1/z)):
  z=z*z+(c-0.324)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-549 {
  z=1/pixel, c=1/sqr(1/(pixel*pixel*pixel)):
  z=z*z+(c-0.324)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-55 {
  c=z=1/pixel:
  z=z^2 + flip(pixel)/(pixel^2 + z)
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-550 {
  z=1/pixel, c=1/sqr(1/(1/pixel*2/pixel*3/pixel)):
  z=z*z+(c+1.02)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-551 {
  z=1/pixel, c=1/sqr(1/(3/pixel*1/pixel*3/pixel)):
  z=z*z+(c-1.02)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-552 {
  z=1/pixel, c=1/conj(1/(1/pixel*1/pixel*1/pixel)):
  z=z*z+(c-1.02)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-553 {
  z=1/pixel, c=1/conj(1/(1/pixel*1/pixel*1/pixel)):
  z=z*z+(c+0.72)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-554 {
  z=1/pixel, c=1/conj(1/(1/pixel*1/pixel*1/pixel)):
  z=z*z*z+(c+0.72)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-555 {
  z=1/pixel, c=1/fn2(pixel*pixel):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-556 {
  z=1/pixel, c=1/fn2(1/pixel*1/pixel):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-557 {
  z=1/pixel, c=1/conj(fn2(1/pixel*1/pixel)):
  z=z*z*z+(c+0.524)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-558 {
  z=1/pixel, c=1/conj(fn2(1/pixel*1/pixel)):
  z=z*z*z*z+(c+0.524)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-559 {
  z=1/pixel, c=1/conj(fn2(1/pixel*1/pixel)):
  z=z*z*z*z+conj(sin(c-0.524))
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-56 {
  c=z=sqr(1/pixel):
  z=z^2 + flip(pixel)/(pixel^2 + z)
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-560 {
  z=1/pixel, c=1/conj(fn2(1/pixel*1/pixel)):
  z=z*z*z*z+conj(sin(c-1.5))
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-561 {
  z=1/pixel, c=1/conj(fn2(1/pixel*1/pixel*1/pixel)):
  z=sqr(conj(z*z*z))+conj(sin(c-1.5))
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-562 {
  z=1/conj(pixel), c=z+cos(sqr(z*1/(pixel-0.124))):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-563 {
  z=1/conj(pixel), c=z+cos(sqr(z*1/(pixel-0.124)*(pixel-0.124))):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-564 {
  z=1/conj(pixel), c=z+cos(sqr(z*1/(pixel+0.924))):
  z=z*z+(c-0.124)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-565 {; Distance Estimator works here.
  z=1/conj(pixel-2.5), c=1/pixel:
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-566 {
  z=1/conj(pixel-2.5), c=z+cos(sqr(z*1/(pixel-0.124))):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-567 {
  z=1/cos(pixel-0.5), c=z+cos(sqr(z*1/(pixel-0.124))):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-568 {
  z=1/cosh(pixel-0.5), c=z+cos(sqr(z*1/(pixel-0.124))):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-569 {
  z=1/cotan(pixel-0.5), c=sin(z)^log(z):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-57 {
  z=c=1/pixel:
  z=(z*z*z)*(c*4) + c
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-570 {
  z=1/conj(pixel-0.5), c=sin(z)^conj(z):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-571 {
  z=1/conj(pixel-p1), c=sin(z/pixel)^conj(z/pixel):
  z=z*z+(c-p2)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-572 {
  z=1/conj(pixel-p1), c=sin(z/pixel)^conj(z/pixel):
  z=z*z+(c-p2)
  |z| <=10 
  ;SOURCE: carr.frm
}


Carr-573 {
  z=1/conj(pixel-p1)
  c=conj(sin(z/pixel))^conj(z/pixel):
  z=z*z+(c-p2)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-574 {
  z=1/conj(pixel-p1)
  c=conj(cos(z/pixel))*conj(z/pixel):
  z=z*z+conj(c-p2)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-575 {
  z=1/conj(pixel-p1)
  c=conj(cos(z/pixel))/conj(z/pixel):
  z=z*z+conj(c-p2)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-576 {
  z=1/conj(pixel-p1)
  c=conj(cos(z/(1/pixel)))*conj(z/(1/pixel)):
  z=z*z*z+conj(c-p2)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-577 {
  z=1/conj(pixel), c=fn1(1/pixel):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-578 {
  z=1/conj(pixel-0.524), c=fn1(1/pixel):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-579 {
  z=1/conj(pixel-0.524), c=1/sin(1/(z*z)):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-58 {
  z=c=pixel:
  z=(z*z*z)*(c*4) + c
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-580 {
  z=1/conj(pixel-0.524), c=1/sin(1/(z*z))+0.124*pixel:
  z=z*z*z+conj(c)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-581 {
  z=1/conj(pixel-0.524), c=cosxx(1/(z*z))+0.124*pixel:
  z=z*z*z+conj(c)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-582 {
  z=1/pixel, c=(1/pixel)^(1/pixel):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-583 {
  z=1/pixel, c=(1/pixel)*(1/pixel):
  z=z*z+(c-0.124)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-584 {
  z=1/pixel, c=conj((1/pixel)*(1/pixel)):
  z=z*z+(c-0.124)
  z=z*z+c
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-585 {
  z=1/pixel, c=conj(z*z+pixel+1/pixel)/|z|:
  z=z*z+conj(c/(1/|z|))
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-586 {
  z=1/pixel, c=fn1(z)+1/z:
  z=z*z+conj(c/(1/pixel))
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-587 {
  z=1/pixel, c=1/conj(1/pixel*z*(z*z-3)):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-588 {
  z=1/pixel, c=tanh(1/pixel*z*conj(z*z-5)):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-589 {
  z=1/pixel, c=conj(1/z*(z/pixel)-1):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-59 {
  z=c=1/pixel:
  z=(z*z*z)*(tanh(c*4)) + c
  |z| <= 10
  ;SOURCE: carr-1.frm
}


Carr-590 {
  z=1/pixel, c=1/conj(z^pixel-1)/3:
  z=fn1(c^pixel-3)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-591 {
  z=1/pixel, c=2/conj(z*(1/pixel*(pixel-1)))/5:
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-592 {
  z=1/pixel, c=conj(1/(1+pixel)):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-593 {; Distance Estimator works here.
  z=1/real(pixel*pixel), c=1/pixel:
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-594 {
  z=1/(pixel*sin(pixel)), c=1/pixel:
  z+z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-595 {
  z=1/(pixel*cos(5-pixel)), c=1/pixel:
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-596 {
  z=1/pixel, c=pixel:
  z=z*z+(1/pixel)/(0.9,-0.6)
  |z*pixel/z| <=10
  ;SOURCE: carr.frm
}


Carr-597 {
  z=1/cos(pixel), c=conj(tan(pixel)):
  z=z*z*c-(1/pixel)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-598 {
  z=1/cos(pixel), c=conj(tan(pixel)):
  z=z*z*z+(1/pixel)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-599 {
  z=1/cos(pixel), c=conj(tan(pixel)):
  z=z*z*c+flip(1/pixel)
  z=z*z*c+conj(1/pixel)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-60 {
  z=c=1/pixel:
  z=(z*z*z*z)*(cotanh(c*c*4)) + c/0.75
  |z| <= 10
  ;SOURCE: carr-1.frm
}


Carr-600 {
  z=1/cos(pixel), c=conj(tan(pixel)):
  z=z*z*c+conj(1/pixel)
  z=z*z*c+flip(1/pixel)
  z=z*z*c+conj(1/pixel)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-601 {
  z=1/cos(pixel), c=1/pixel-1/|z|:
  z=z*c*c+flip(1/pixel)
  z=z*c*c+conj(1/pixel)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-602 {
  z=1/conj(pixel), c=1/cosxx(z):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-603 {
  z=1/conj(pixel), c=1/cosxx(z):
  z=z*z+flip(c-0.524)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-604 {
  z=1/conj(pixel), c=1/cosxx(z*z):
  z=z*z*z+flip(c*c-0.924)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-605 {
  z=1/conj(pixel), c=1/cos(z*z):
  z=z*z*z+cosxx(c*c-0.124)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-606 {
  z=1/flip(pixel), c=1/cos(z*z):
  z=z*z*z+conj(flip(c-0.124))
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-607 {
  z=1/flip(pixel), c=1/cos(z*z*z):
  z=z*z*z+flip(conj(c-0.624))
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-608 {
  z=1/flip(pixel), c=1/cos(z*z*z):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-609 {
  z=1/flip(pixel), c=1/cotanh(z*z*z):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-61 {
  z=c=1/pixel:
  z=(z*z*z*z)/cotanh(c*c*c*4) + c/0.75
  |z| <= 10
  ;SOURCE: carr-1.frm
}


Carr-610 {
  z=1/pixel, c=1/(sqr(pixel)/z*z+pixel):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-611 {; Distance Estimator works here.
  z=1/pixel, c=1/(sqr(pixel)/z*z+pixel):
  z=conj(z*z+c)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-612 {
  z=1/conj(pixel), c=1/(sqr(pixel)/z*z+pixel):
  z=conj(z*z+c)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-613 {
  z=1/pixel, c=cos(-2.6,0.3):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-614 {
  z=1/pixel, c=cos(-2.6,0.3):
  z=z*z+(c-0.199)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-615 {
  z=1/pixel, c=cos(-2.6,-0.36):
  z=z*z+(c-0.199)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-616 {
  z=1/pixel, c=cos(-2.115,-0.369):
  z=z*z+(c-0.09)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-617 {
  z=1/pixel, c=cos(-2.095,-0.369):
  z=z*z+(c-0.09)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-618 {
  z=1/pixel, c=cos(-2.9,-0.3):
  z=z*z+(c-0.015)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-619 {
  z=tanh(1/pixel), c=cos(-2.9,-0.3):
  z=z*z+(c-0.09815)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-62 {
  c=z=pixel:
  c=tanh(z^c)/z, c=(z*z*z*z*z) + (c/0.9), z=sqr(c*1/pixel)
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-620 {
  z=tanh(1/pixel-0.124), c=cos(-2.6,0.3):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-621 {
  z=cotanh(1/pixel-0.124), c=cos(-2.6,0.3):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-622 {
  z=cosh(1/pixel-0.224), c=cos(-2.6231,0.3124):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-623 {
  z=cosh(1/pixel-0.224), c=sin(-2.6231,0.3124):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-624 {
  z=flip(1/pixel-0.224), c=sin(cos(-2.5231,0.3124)):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-625 {
  z=flip(1/pixel-0.324), c=sin(cos(-2.3231,0.3124)):
  z=z+z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-626 {
  z=flip(1/pixel-0.324), c=sin(cosxx(-2.3064,0.3124)):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-627 {
  z=cosxx(1/pixel-0.324), c=sin(cosxx(-2.6064,0.3124)):
  z=z*z+(c-0.024)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-628 {
  z=cosxx(sin(1/pixel-0.324)), c=sin(cosxx(-2.6064,0.3124)):
  z=z*z+(c-0.024)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-629 {
  z=cosxx(sinh(1/pixel-0.394)), c=sin(cosxx(-2.9064,0.3124)):
  z=z*z+(c-0.024)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-63 {
  c=z=1/pixel:
  c=tanh(z^c)/z, c=(z*z*z*z*z) + (c/0.9), z=sqr(c*1/pixel)
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-630 {
  z=cosxx(sinh(1/pixel-0.394)), c=sin(1/cosxx(-2.5064,0.3124)):
  z=(z-0.124)*(z+0.287)+(c-0.024)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-631 {
  z=cosxx(sinh(1/pixel-0.394)), c=sin(1/tanh(-2.9064,-0.1124)):
  z=(z-0.124)*(z-0.287)+(c-0.124)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-632 {
  z=cosxx(sinh(1/pixel-0.394)), c=sin(1/tanh(-2.9764,-0.1824)):
  z=(z-0.094)*(z-0.087)+(c-0.194)
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-633 {
  z=cosxx(sin(1/pixel-1.494)), c=conj(1/cotanh(-2.5764,-0.1824)):
  z=z*z+c
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-634 {
  z=cosxx(sin(1/pixel-3.594)), c=conj(1/cotanh(-3.9764,-0.1824)):
  z=z*z+c/(1/(z+1))
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-635 {
  z=1/pixel, c=1/sqr(pixel)/z:
  z=z*z+c
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-636 {
  z=1.2/pixel, c=1/sqr(pixel)/z:
  z=z*z+flip(c)
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-637 {
  z=1.2/pixel, c=1/sqr(pixel)/z:
  z=z*z+conj(tanh(c))
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-638 {
  z=0.85/pixel, c=1/sqr(pixel-1)/z:
  z=z*z*z+(c-0.024)
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-639 {
  z=0.5/pixel, c=1/sqr(pixel-1)/z:
  z=z*z*(z/pixel)+flip(c-0.024)
  |z/0.5| <=10
  ;SOURCE: 04carr.frm
}


Carr-64 {
  z=tanh(1/pixel):
  c=sqr(real(1/pixel))
  z=(z*z*z*z) - (sqr(c*c))
  |z| <=8
  ;SOURCE: carr-1.frm
}


Carr-640 {
  z=0.5/pixel, c=1/sqr(pixel-1)/z:
  z=z*z*(z/pixel)+sin(flip(c-0.024))
  |z/0.5| <=10
  ;SOURCE: 04carr.frm
}


Carr-641 {
  z=1/pixel, c=z/pixel*z/pixel+pixel/z:
  z=z*z+c
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-642 {
  z=1/abs(pixel), c=1/pixel:
  z=sin(z*z+c)
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-643 {
  z=1.124/pixel, c=sin(1/pixel)/(z/(1/pixel)):
  z=z*z+c
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-644 {
  z=1.124/pixel, c=sin(1/pixel)/cosh(z/(1/pixel)):
  z=z*z+flip(conj(c))
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-645 {;*****
  z=1.124/pixel, c=sin(1/pixel)/cosh((1/z)/(1/pixel)):
  z=z*z+flip(conj(c))
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-646 {
  z=1.124/pixel, c=sin(1/pixel)/cosh((1/z)/(1/pixel)):
  z=z*z+conj(c)
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-647 {
  z=1.124/pixel, c=sin(1/pixel)/cosxx((1/z)/(1/pixel)):
  z=z*z+conj(c)
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-648 {
  z=1.124/pixel, c=sin(1/pixel)/cotan((0.8/z)/(0.8/pixel)):
  z=z*z+conj(c)
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-649 {
  z=1/pixel, c=sin(z)*(conj(-z))+1/abs(pixel):
  z=z*z+c
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-65 {
  z=1/tanh(1/pixel):
  c=sqr(real(1/pixel))
  z=tanh(z*z*z*z) + (1/cotanh(c*c))
  |z| <=8
  ;SOURCE: carr-1.frm
}


Carr-650 {
  z=1/pixel, c=sin(z)*(conj(-z))+1/real(pixel):
  z=z*z+c
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-651 {
  z=1/pixel, c=sin(z)*(conj(-z))+1/real(pixel):
  z=z*z+conj(c)
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-652 {
  z=1/pixel, c=sinh(z)*(conj(-z))+1/real(pixel):
  z=z*z+conj(c)
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-653 {
  z=1/pixel, c=tanh(z)*(conj(-z))+1/real(pixel):
  z=z*z+conj(c)
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-654 {
  z=1/pixel, c=sin(z)*(conj(-z))+1/real(pixel):
  z=(z-0.004)*(z-0.004)+conj(c)
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-655 {
  z=1/(pixel+0.024), c=sin(z)*(conj(-z))+1/real(pixel):
  z=z*z+conj(c/1.05)
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-656 {
  z=1/pixel, c=sin(z)*(conj(-z))+1/real(pixel):
  z=z*z+conj(c*(cos(c)))
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-657 {
  z=1/pixel, c=sin(z)*(conj(-z))+1/real(pixel):
  z=z*z+conj(c*(cosxx(c)))
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-658 {
  z=1/pixel, c=sin(0.6,0.3)/((sqrt5+1)/2):
  z=sin(z)+sin(c)+sin(pixel)
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-659 {
  z=imag(1/pixel-0.124), c=1/pixel-0.124:
  z=(sin(z))*(z*z+c)
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-66 {
  c=z=(1/pixel)/cotan(pixel-.25):
  z=sqr(z) + 0.33
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-660 {
  z=imag(1/pixel-0.124), c=(1/pixel-0.124):
  z=(sin(c))*(z*z+c)
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-661 {
  z=imag(1/pixel-0.124), c=(1/pixel-0.124):
  z=(sin(c))*(z*z+real(c))
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-662 {
  z=real(1/pixel-0.124), c=(1/pixel-0.124):
  z=(sin(c))*(z*z+imag(c))
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-663 {
  z=1/pixel, c=((1/pixel)*(z*z))/(0.6,0.3):
  z=z*z+conj(c*(cosxx(c)))
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-664 {
  z=1/conj(pixel), c=((1/pixel)*(z*z))/(2.6,-0.3):
  z=z*z+conj(c*(cosxx(-c)))
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-665 {;***
  z=1/conj(pixel), c=sinh((1/pixel)*(z*z))/(0.6,2.3):
  z=z*z+conj(c*(sin(-c)))
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-666 {
  z=1/conj(pixel), c=sinh((1/pixel)*(z*z))/(3.6,-0.3):
  z=sin(z*z)+conj(c*(sin(-c)))
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-667 {
  z=1/conj(pixel), c=sinh((1/pixel)*(z*z))/(3.6,-0.3):
  z=cos(z*z)+conj(c*(sin(-c)))
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-668 {
  z=1/conj(pixel), c=sinh((1/pixel)*(z*z))/(3.6,-0.3):
  z=cos(z*1/pixel)+conj(c*(sin(-c)))
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-669 {
  z=1/conj(pixel), c=sinh((1/pixel)*(z*z))/(3.6,-0.3):
  z=cos(z^c)+conj(c*(sin(-c)))
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-66A {
  c=z=(1/pixel)/cotanh(pixel-.75):
  z=sqr(z) + 0.33
  |z| <=4
  ;SOURCE: carr-1.frm
}


Carr-66B {
  c=z=cotanh(pixel/0.33)/(pixel-.75):
  z=sqr(z) + 0.33
  |z| <=4
  ;SOURCE: carr-1.frm
}


Carr-66C {
  c=z=log(1/pixel/0.33)/(pixel-.75):
  z=sqr(z) + 0.33
  |Z| <=4
  ;SOURCE: carr-1.frm
}


Carr-66D {
  c=z=log(1/pixel/0.33)/sqr(pixel-.75):
  z=sqr(z) + 0.33
  |z| <=4
  ;SOURCE: carr-1.frm
}


Carr-66E {
  c=z=sqr(1/pixel/0.33)/(5.3/flip(pixel-.75))/0.33:
  z=sqr(z) + 0.33
  |z| <=4
  ;SOURCE: carr-1.frm
}


Carr-66F {
  c=z=sqr(1/pixel/0.33)/(9.3/flip(pixel-.75))/0.33:
  z=sqr(z) + 0.33
  |z| <=4
  ;SOURCE: carr-1.frm
}


Carr-67 {; use Distance Estimator funtion on this formula
  c=z=pixel:
  z=sqr(z) + c
  z1=sqr(z) + 0.33
  |z| <=4
  ;SOURCE: carr-1.frm
}


Carr-670 {
  z=1/cosxx(pixel), c=cosxx(1/pixel)/(6.6,-0.3):
  z=tanh(real(c))/conj(z*(sin(z*z)))
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-671 {
  z=1/pixel, c=1/pixel/(z-1)*pixel:
  z=z*z+c
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-672 {
  z=1/pixel, c=1/pixel/(z-1.05)*pixel:
  z=z*z+c
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-673 {
  z=1/pixel, c=1/pixel/(z-1)*pixel:
  z=z*z+conj(c)
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-674 {
  z=0.8/pixel, c=1/pixel+0.124/(z-1)*pixel:
  z=z*z+conj(c)
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-675 {
  z=1.8/pixel, c=1/pixel+0.194/(z-1)*pixel:
  z=z*z+conj(c)
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-676 {
  z=1/pixel, c=1/pixel-0.124/(z-1)*pixel:
  z=z*z+sqr(flip(c))
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-677 {
  z=1/pixel, c=1/pixel-0.124/(z-1)*pixel:
  z=z*z+flip((flip(c-0.124))*(conj(c-0.124)))
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-678 {
  z=1/pixel, c=1/pixel-0.124/(z-1)*pixel:
  z=z*z+sin((flip(c-0.124))*(conj(c-0.124)))
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-679 {
  z=1/pixel, c=1/pixel-0.124/(z-1)*pixel:
  z=z*z+sin((flip(c-0.124))*(cosxx(c-0.124)))
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-68 {
  c=z=1/pixel:
  z=sqr(z*z) + c
  z=sin(z) + c
  z=sqr(z) + c
  z=sin(z*z) + c
  |z| <=4
  ;SOURCE: carr-1.frm
}


Carr-680 {
  z=1/pixel, c=1/pixel-0.124/(z-1)*pixel:
  z=z*z+((sin(c-0.124))*(sin(c-0.124)))
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-681 {
  z=1/pixel, c=1/pixel-0.124/(z-1)*pixel:
  z=z*z+((c-0.224)*(c-1.024))/0.25
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-682 {
  z=1/pixel, c=1/pixel/((z-1)/(1/pixel))*pixel:
  z=z*z+((c-0.224)*(c))/0.25
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-683 {
  z=1/pixel, c=1/pixel/((z-1)/(1/pixel))*pixel:
  z=z*z+((c-0.224)*(c))/(2.6,-0.9)
  |z| <=10
  ;SOURCE: 04carr.frm
}


Carr-684 {
  z=1/pixel, c=1/pixel/((z-1)/(1/pixel))*pixel:
  z=z*z+((c-0.224)*(c/(1/pixel)))/(5.8,2.01)
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-685 {
  z=1/pixel, c=1/pixel/((z-1)/pixel+b), b=1/z-1/c-1/pixel:
  z=z*z+c
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-686 {
  z=1/pixel, c=sin(conj(z^1.124))+0.124:
  z=z*z+c
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-687 {
  z=1/pixel, c=sin(conj(z^2.124))+0.124:
  z=z*z+c
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-688 {
  z=1/pixel, c=sin(conj(z^2.724))+0.124:
  z=z*z+c
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-689 {
  z=1/pixel, c=sinh(sqr(z^2.724))+0.124:
  z=z*z+c
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-69 {
  c=z=1/pixel:
  z=sin(z*z) + c
  |z| <=4
  ;SOURCE: carr-1.frm
}


Carr-690 {
  z=1/sin(pixel), c=sin(conj(z^1.124))+0.124:
  z=z*z+c
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-691 {
  z=1/pixel, c=(sin((z^1.124)))/(0.6,-0.3)+sin(0.124/pixel):
  z=z*z+c
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-692 {
  z=1/tan(pixel), c=(sin((z^1.124)))/(2.6,-3.3)+sin(0.124/pixel):
  z=z*z+c
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-693 {
  z=1/cotan(pixel), c=(sin((z^1.124)))/(2.6,-3.3)+sin(0.124/pixel):
  z=z*z+c
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-694 {
  z=1/cotan(pixel), c=(sin(z^(-1.124)))/(2.6,-3.3)+sin(0.124/pixel):
  z=z*z+c
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-695 {
  z=1/pixel+real(sin(1/pixel))
  c=(z^(1.124))/(0.096,-0.093)+sin(0.124/pixel):
  z=z*z+(sin(-c))*1/pixel
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-696 {
  z=1/pixel+real(sin(1/pixel))
  c=(z^(1/124))/(0.096,-0.093)+sin(0.124/pixel):
  z=z*z*z+(sin(-c))*1/pixel
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-697 {
  z=1/conj(1/pixel), c=1/conj(0.124/pixel):
  z=z*z+c
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-698 {
  z=1/conj(1/pixel), c=1/conj(0.124/pixel-1):
  z=z*z+c
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-699 {; edited by G. Martin for Orgform 8/14/96
          ; added bailout
  z=1/conj(1/pixel), c=1/conj(0.124/pixel-0.924):
  z=z*z+c
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-70 {
  c=z=1/pixel:
  z=sin(z*z)/0.99 + 0.33
  |z| <=4
  ;SOURCE: carr-1.frm
}


Carr-700 {
  z=1/conj(1/pixel), c=1/conj(sinh(0.324/pixel-1.5)):
  z=z*z+c
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-701 {
  z=1/conj(1/pixel)
  c=1/conj(sinh(0.224/pixel-1.5))/real(1/pixel-1):
  z=z*z+c
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-702 {
  z=1/conj(1/pixel)
  c=1/conj(sinh(0.224/pixel-1.5))/real(1/pixel-1.5):
  z=z*z+c
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-703 {
  z=1/conj(1/pixel)
  c=1/conj(cosh(0.224/pixel-1.5))/real(1/pixel-1.5):
  z=z*z+c
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-704 {
  z=1/conj(1/pixel-1.5)
  c=1/conj(fn2(0.224/pixel-1.5))/fn1(1/pixel-1.5):
  z=sinh(z*z+c)
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-705 {
  z=1/conj(pixel-1.5), c=1/pixel-1.5:
  z=z*z+c
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-706 {; SLOW
  z=1/conj(pixel-1.5), c=1/pixel-1.5:
  z=(z*z+c)/(1/pixel-1.5)
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-707 {
  z=1/pixel, c=1/pixel:
  z=z*z+c
  |1/z*z/pixel| <=10
  ;SOURCE: 03carr.frm
}


Carr-708 {
  z=1/pixel, c=1/pixel:
  z=z*z*z+c
  |1/z*z/pixel| <=10
  ;SOURCE: 03carr.frm
}


Carr-709 {
  z=(1/pixel)-0.924, c=(1/pixel)-0.524:
  z=z*z+c
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-71 {
  c=z=1/pixel:
  z=sin(z*z) + c
  z=sin(z*z)/0.99 + c
  z=sin(z*z*z) + c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-710 {
  z=(1/pixel)-0.924/pixel, c=(1/pixel)-0.524:
  z=z*z+c
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-711 {
  z=real(1/pixel)-conj(0.5/pixel)
  c=real(1/pixel)+0.524/pixel:
  z=z*z+c
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-712 {
  z=real(1/pixel)-sin(0.5/pixel)
  c=real(1/pixel)+0.524/pixel:
  z=z*z*z+c
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-713 {
  z=real(1/pixel)-sin(0.5/pixel)
  c=real(1/pixel)+0.524/pixel:
  z=z*z+c-(z-1/pixel)/2
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-714 {
  z=real(1/pixel)-conj(0.5/pixel)
  c=real(1/pixel)+0.824/pixel:
  z=1/sqr(z*z+c-(z-(0.75/pixel))/2)
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-715 {
  z=real(1/pixel)-conj(0.5/pixel)
  c=real(1/pixel)+imag(1/pixel):
  z=(z*z+c-(z-(0.75/pixel))/2)
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-716 {
  z=real(1/pixel)-conj(0.5/pixel), c=(z/(1/pixel-1)):
  z=(z*z+c-(z-(0.75/pixel))/2)
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-717 {; Reglar Mandel form inside of an inverted Mandel form
  z=real(1/pixel)-conj(0.5/pixel)
  c=((z-1/pixel)/(1/pixel-1)):
  z=(z*z+c-(z-(0.75/pixel))/2)
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-718 {
  z=tanh(1/pixel)-conj(0.5/pixel)
  c=tanh((z-1/pixel)/(1/pixel-1)):
  z=(z*z+c-(z-(0.75/pixel))/2)
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-719 {
  z=tanh(1/pixel)-conj(0.5/pixel)
  c=tanh((z-1/pixel)/(1/pixel-1)):
  z=flip(z*z+c-(z-(0.75/pixel))/2)
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-72 {
  c=z=1/pixel:
  z=sinh(z*z) + c
  z=sinh(z*z) + c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-720 {
  z=tanh(1/pixel)-conj(0.5/pixel)
  c=tanh((z-1/pixel)/(1/pixel-1)):
  z=conj(flip(z*z+c-(z-(0.75/pixel))/2))
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-721 {; Interesting !!
  z=(1/pixel)-conj(0.5/pixel)
  c=(1/pixel)/(1/pixel-1)+conj(z):
  z=(z*z+c-(z-(0.75/pixel)/4))
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-722 {
  z=sinh(1/pixel)-conj(0.5/pixel)
  c=sinh((1/pixel)/(1/pixel-1)):
  z=z*z+c
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-723 {
  z=sinh(1/pixel)-conj(0.5/pixel)
  c=sinh((1/pixel)/(1/pixel-1)):
  z=(z*z+2*c)/1.5
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-724 {
  z=sin(1/pixel)-conj(0.5/pixel-1)
  c=sinh((1/pixel)/(1/pixel-1)):
  z=(z*z+c)+0.124
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-725 {
  z=(1/pixel)-1/sqr(conj(0.5/pixel-1))
  c=conj((1/pixel)/(1/pixel-1)):
  z=(z*z+c)+cos(0.124)
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-726 {
  z=(1/pixel)-1/sqr(conj(0.5/pixel))
  c=sinh(conj((1/pixel)/(1/pixel-1))):
  z=(conj(z*z*z+c)+cos(0.124))/2
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-727 {
  z=(1/pixel)-1/sqr(conj(0.5/pixel-1))
  c=sinh(conj((1/pixel)/(1/pixel-1))):
  z=(conj(z+c*c)+cos(0.524))/2
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-728 {
  z=(1/pixel)-1/sqr(conj(0.5/pixel-1))
  c=sinh(conj((1/pixel)/(1/pixel-0.75))):
  z=(conj(z*z+c*c)+cos(0.924))/2
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-729 {
  z=(1/pixel)-1/sqr(conj(0.5/pixel-1))+2.224
  c=sinh(conj((1/pixel)/(1/pixel-0.75)))+2.124:
  z=(conj(z*z*z*z+c)+cos(0.924))/2
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-73 {
  c=z=1/pixel:
  z=sqr(z*z) + c
  z=sqr(z*z^z) - c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-730 {
  z=(1/pixel)-1/sqr(conj(0.5/pixel-1))+2.224
  c=((1/pixel)/(1/pixel-0.75))+2.124:
  z=conj(z*z*z*1/z+c)+cos(0.124)
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-731 {
  z=(1/pixel)-1/sqr(conj(0.5/pixel-1))+2.224
  c=((1/pixel)/(1/pixel-0.75))+2.124:
  z=conj(z*z*z*1/z+sinh(c/(0.25/pixel)))+cosh(5.124)
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-732 {
  z=1/pixel, c=1/pixel/(z-1)*pixel:
  z=(z*z+flip(c))/2
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-733 {
  z=1/pixel, c=1/pixel/(z-1.5)*pixel:
  z=z*z+c+z/(1/pixel)
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-734 {
  z=1/pixel, c=1/pixel-1/(z-1.5)*pixel:
  z=z-1*z+c+z/sin(1/pixel-1)
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-735 {
  z=sin(1/pixel), c=(1/pixel)/1/(z-1.5)*pixel:
  z=z*z+(c-0.00001)
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-736 {
  z=sin(1/pixel), c=(1/pixel)/1/(z-1.5)+pixel:
  z=z*z+(c+0.2)
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-737 {
  z=sin(1/pixel), c=(1/pixel)/1/(z-1.5)+pixel:
  z=(z*z*z+(c+0.2))/2
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-738 {
  z=sin(1/pixel), c=(1/pixel)/1/(z-1.5)+pixel:
  z=(z*z*z*z+cos(sqr(c+0.1)))/2
  |z| <=10
  ;SOURCE: 03carr.frm
}


Carr-739 {
  z=1/pixel, c=(1/pixel)/2/(z-2.5)^(1/pixel):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-74 {
  c=z=1/pixel:
  z=(3.334/sin(z*z)) + (c/pixel)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-740 {
  z=1/pixel, c=(1/pixel)/2/(z-2.5)^(1/pixel-1):
  z=z*z+(c-0.4)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-741 {
  z=1/pixel-0.75, c=(1/pixel)/2/(z-2.5)^(1/pixel-1):
  z=z*z+(c-0.489)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-742 {
  z=1/pixel/1.75, c=(1/pixel)/2/(z-2.5)^(pixel-1)+2:
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-743 {
  z=c*((1.5,0.7)*((sqrt5+1)/2)), c=1/pixel:
  z=z*z+flip(c+0.124)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-744 {
  z=c*((1.5,0.7)*((sqrt5+1)/2)), c=1/pixel-0.4:
  z=z*z+flip(c+0.124)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-745 {
  z=1/flip(pixel), c=1/flip(pixel+(0.6,0.3)):
  z=z*z+flip(c)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-746 {
  z=c=1/pixel:
  z=z*z+c
  real(z)<2.124
  ;SOURCE: carr.frm
}


Carr-747 {
  z=c=1/pixel:
  z=z*z+c
  abs(z)<2.124
  ;SOURCE: carr.frm
}


Carr-748 {
  z=sin(1/pixel), c=sin(|1/pixel|):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-749 {
  z=sin(1/pixel), c=sin(|1/pixel|):
  z=z*z+c
  real(z)<2.124
  ;SOURCE: carr.frm
}


Carr-75 {
  c=z=(1/pixel):
  z=(sin(z*z)) + ((sin(c-0.33))/pixel)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-750 {
  z=sin(1/pixel), c=sin(|1/pixel|):
  z=((z*z)+0.004)+c
  real(z)<2.124
  ;SOURCE: carr.frm
}


Carr-751 {
  z=sin(1/pixel), c=cosxx(|1/pixel|):
  z=((z*z)+0.009)+(c-0.124)
  real(z)<2.124
  ;SOURCE: carr.frm
}


Carr-752 {
  z=conj(1/pixel), c=conj(sqr(|1/pixel|)):
  z=z*z+c
  real(z)<2.124
  ;SOURCE: carr.frm
}


Carr-753 {
  z=c=1/pixel:
  z=(z*z+(c+(c-1)))/2
  real(z)<2.124
  ;SOURCE: carr.frm
}


Carr-754 {
  z=conj(1/pixel), c=1/pixel:
  z=(z*z+(c+(c-1)))/2
  real(z)<2.124
  ;SOURCE: carr.frm
}


Carr-755 {
  z=conj(1/pixel-0.124), c=1/pixel:
  z=conj(1.124)*(z*z+c)+real(c*(1/pixel-0.5))
  abs(z)<2.124
  ;SOURCE: carr.frm
}


Carr-756 {
  z=conj(1/pixel-0.124), c=cosxx(z*z)/sin(z/(1/pixel)):
  z=(z*z+c)/2
  abs(z)<2.124
  ;SOURCE: carr.frm
}


Carr-757 {
  z=conj(1/pixel-0.124), c=z*log(1/pixel)/(1/z*1/z)+0.124:
  z=z*z+c
  abs(z)<2.124
  ;SOURCE: carr.frm
}


Carr-758 {
  z=conj(1/pixel-0.124), c=z*log(1/pixel)/(1/z*1/z)+0.724:
  z=z*z+c
  abs(z)<2.124
  ;SOURCE: carr.frm
}


Carr-759 {
  z=1/(((sqrt5+1)/2)*pixel), c=sin(1/(z*z)):
  z=z*z+c
  abs(z)<2.124
  ;SOURCE: carr.frm
}


Carr-76 {
  c=z=pixel:
  z=(sin(z*z)) + ((sin(c-0.33))/pixel)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-760 {
  z=((sqrt5+1)/2)*pixel, c=sin(1/(z*z)):
  z=1/(z*z+c)
  abs(z)<2.124
  ;SOURCE: carr.frm
}


Carr-761 {
  z=((sqrt5+1)/2)*pixel, c=sqr(1/(z*z)):
  z=1/(z*z+c-1.124)
  abs(z)<2.124
  ;SOURCE: carr.frm
}


Carr-762 {
  z=((sqrt5+1)/2)*pixel, c=sqr(1/(z*z)):
  z=1/(z*z+c)
  abs(z)<2.124
  ;SOURCE: carr.frm
}


Carr-763 {
  z=((sqrt5+1)/2)*(1/pixel), c=(1/(z*z)):
  z=(z*z+c)/c/z
  abs(z)<2.124
  ;SOURCE: carr.frm
}


Carr-764 {
  z=((sqrt5+1)/2)*(1/pixel), c=(sqr(1/(z*z)))/pixel*z:
  z=sqr(z*z+c)
  real(z)<2.124
  ;SOURCE: carr.frm
}


Carr-765 {
  z=1/pixel-0.05, c=1/pixel-0.1:
  z=(z-0.3)*(z-0.25)+c
  abs(z/(1/pixel))<2.124
  ;SOURCE: carr.frm
}


Carr-766 {
  z=1/pixel-0.05, c=1/pixel-0.1:
  z=(z-0.3)*(z-0.35)+c+0.224
  abs(z*z/flip(pixel))<2.524
  ;SOURCE: carr.frm
}


Carr-767 {; This is a modification of a formula I saw somewhere. 
          ; If you know who's it is please let me know.
  c=z=1/(pixel^1.245):
  z=fn1(z^1.245)+fn2(c)
  abs(z)<2.124
  ;SOURCE: carr.frm
}


Carr-768 {; Ditto above.
  c=z=1/(pixel^1.245):
  z=conj(z^2.245)+fn2(c)
  abs(z)<2.124
  ;SOURCE: carr.frm
}


Carr-769 {
  c=z=1/(pixel^2.45):
  z=(z*z+c)+0.524
  abs(z)<2.124
  ;SOURCE: carr.frm
}


Carr-77 {
  c=z=(1/pixel):
  z=(sin(z*z)) + ((sin(c-5.9))/pixel)
  z=sqr(z) + c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-770 {
  z=c=fn2(1/pixel):
  z=(z*z+c-0.164)/0.3
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-771 {
  c=z=fn2(1/pixel):
  z=(z*z+c-0.164)/0.75
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-772 {
  z=sqr(sinh(c)), c=sqr(sinh(1/pixel)):
  z=z*z-flip(c)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-773 {
  z=c=sqr(conj(1/pixel)):
  z=z*z+c-0.324
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-774 {
  z=c=sqr(cotan(1/pixel)):
  z=z*z+c-0.724
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-775 {; Nice images produced
  z=c=sqr(sqr(1/pixel)):
  z=z*z+c-0.724
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-776 {
  z=c=sqr(sqr(1/pixel+0.09)):
  z=(z-0.09)*(z-0.09)+conj(c-0.724)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-777 {
  z=c=sqr(sqr(1/pixel+0.09)):
  z=(z-0.09)*(z-0.09)+flip(c-0.9245)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-778 {
  z=c=sqr(sqr(1/pixel)):
  z=(z*z+c-0.724)-0.01
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-779 {
  z=c=sqr(sqr(1/pixel)):
  z=(z*z+c-0.524)-0.01
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-78 {
  c=z=(1/pixel):
  z=(sin(z*z)) + ((sin(c+8.9))/pixel)
  z=sqr(z) + c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-780 {
  z=c=sqr(sqr(sqr(1/pixel))):
  z=((z*z+c-0.524)-0.01)/0.855
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-781 {
  z=c=sqr(sqr(cosxx(1/pixel))):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-782 {
  z=sqr(sqr(cosxx(1/pixel))), c=sqr(sqr(1/pixel)):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-783 {
  z=sqr(sqr(sqr(1/pixel))), c=sqr(sqr(1/pixel)):
  z=z*z+(c-0.024)
  z=z+z+c+1/pixel
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-784 {
  z=sqr(sqr(sqr(1/pixel+0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=z*z+(c-0.084)
  z=z+z+c+1/pixel-0.03
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-785 {
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=z^z*z+flip(c*c)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-786 {; Very interesting image poosibilities !!
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=1/z^z*z+flip(c*c)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-787 {; Ditto above
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=1/z^z*z+conj((c+0.124)*(c+0.124))
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-788 {
  Z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=1/z^z*z+tanh((c+0.129)*(c-0.129))
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-789 {
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=1/z^z*z+cotanh((c+0.129)*(c+0.129))
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-79 {
  c=z=pixel:
  z=(sin(z*z)) + ((sin(c+8.9))/pixel)
  z=sqr(z) + c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-790 {
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=1/z^z*z+tanh((c-0.129)*(c+0.129))
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-791 {
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=1/z^z*z+tanh((c-0.229)*(c+0.129))
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-792 {
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=(z*z+c-0.724)-0.01
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-793 {
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=(z*z+c-0.724)+0.01
  z=(z*z+c-0.724)-0.01
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-794 {
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=((z*z+c-0.724)+0.07)+0.03
  z=(z*z+c-0.724)/0.67
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-795 {
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=(z*z+c-0.724)+0.07
  z=(z*z+c-0.724)/0.87
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-796 {
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=(pixel-z*z)/(pixel-c*c)
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-797 {
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=sin((pixel-z*z)/(pixel-c*c))
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-798 {
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=((pixel-z*z)/(pixel-c*c))-0.3
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-799 {
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=((pixel-z*z)/(pixel-(c-0.824)*(c-0.824)))-0.375
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-80 {
  c=z=(1/pixel):
  z=(sin(z*z)) + ((sin(c+8.9))/pixel)
  z=sqr(z) + (c-1)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-800 {
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=((pixel-z*z)/(pixel-(c+0.624)*(c+0.624)))-0.375
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-801 {
  z=sqr(sqr(sqr(1/pixel-0.006)))-0.01, c=sqr(sqr(1/pixel-0.009)):
  z=((pixel-z*z)/(pixel-(c+0.624)*(c+0.624)))
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-802 {;***
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=z*z+c
  z=z/pixel*z*z+c/flip(c/pixel*c+z)-1/pixel
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-803 {
  z=1/conj(pixel)+0.1/pixel, c=1/conj(conj(pixel))+1/pixel+z:
  z=(1/z^z*z/7+z*z-c)/1.3
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-804 {; Modified SJMAND01
  z=1/(real(pixel)+flip(imag(pixel)*1.224))
  c=1/(2.224+1.224*real(pixel)+flip(imag(pixel))):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-805 {; Modified SJMAND01
  z=1/(real(pixel)+flip(imag(pixel)*1.224))
  c=1/(2.224+1.224*real(pixel)+conj(imag(pixel))):
  z=z*z+c
  |z| <=10
  ;SOURCE: 20carr.frm
}


Carr-806 {; Modified SJMAND01
  z=1/(real(pixel-0.124)+flip(imag(pixel-0.224)*1.224))
  c=1/(2.224+1.224*real(pixel)+flip(abs(pixel))):
  z=z*z+c
  |z| <=10
  ;SOURCE: 20carr.frm
}


Carr-807 {; Modified SJMAND01
  z=1/(real(pixel-0.124)+flip(imag(pixel-0.224)*1.224))
  c=1/(2.224+1.224*real(pixel)+flip(abs(pixel))):
  z=(fn1(z))*z+c
  |z| <=10
  ;SOURCE: 20carr.frm
}


Carr-808 {; Modified SJMAND01
  z=1/(real(pixel-0.124)+flip(imag(pixel-0.224)*1.224))
  c=1/(2.224+1.224*real(pixel)+flip(abs(pixel))):
  z=(fn1(z))*z+c*2.324
  |z| <=10
  ;SOURCE: 20carr.frm
}


Carr-809 {; Modified SJMAND01
  z=1/(real(pixel-0.124)+flip(imag(pixel-0.224)*1.524))
  c=1/(0.024+1.224*real(pixel+0.424)+flip(imag(pixel+0.524))):
  z=(fn1(z))*z+c
  |z| <=10
  ;SOURCE: 20carr.frm
}


Carr-81 {
  c=z=(1/pixel):
  z=(sin(z*z)) + ((sin(c+8.9))/pixel)
  z=(sin(z*z)) + c
  |Z| <=4
  ;SOURCE: carr.frm
}


Carr-810 {; Modified SJMAND01
  z=1/(real(pixel-0.124)+flip(abs(pixel-0.224)*1.524))
  c=1/(2.024+1.224*real(pixel+0.424)+flip(imag(pixel+0.524))):
  z=(fn1(z))*(z+0.224)+(c+0.0002)
  |z| <=10
  ;SOURCE: 20carr.frm
}


Carr-811 {; Modified SJMAND01
  z=1/(real(pixel-1.124)+flip(abs(pixel-0.224)*2.524))
  c=1/(2.024+1.224*real(pixel+1.024)+flip(imag(pixel+1.024))):
  z=(fn1(z))*(z+0.224)+(c+0.0002)
  |z| <=10
  ;SOURCE: 20carr.frm
}


Carr-812 {; Modified SJMAND01
  z=1/(2.224*real(pixel)+flip(imag(pixel)))
  c=1/(2.024+1.224*real(pixel+1.024)+flip(imag(pixel+1.024))):
  z=(fn1(z))*(z+0.224)+(c+0.0002)
  |z| <=10
  ;SOURCE: 20carr.frm
}


Carr-813 {; Modified SJMAND01
  z=1/(2.224*(pixel+2.324)+flip(abs(pixel+2.724)))
  c=1/(2.324+1.224*real(pixel+1.024)+flip(imag(pixel+1.024))):
  z=(fn1(z))*(z+0.224)+(c+0.0002)
  |z| <=10
  ;SOURCE: 20carr.frm
}


Carr-816 {; Modified SJMAND01
  z=flip(1/(1.899*imag(pixel)+flip(real(pixel)*1.024)))
  c=tanh(1/(1.788+imag(pixel)+flip(real(pixel)*2.524))):
  z=fn1(z)*z+(flip(conj(-c+0.1)))
  |z| <=10
  ;SOURCE: 20carr.frm
}


Carr-817 {; Modified SJMAND01
  z=flip(1/(1.899*imag(pixel)+flip(real(pixel)*1.724)))
  c=conj(1/(2.788+imag(pixel)+flip(real(pixel)*2.524))):
  z=(sinh(z*z+0.2)+c+c)^2.524
  |z| <=10
  ;SOURCE: 20carr.frm
}


Carr-818 {; Modified SJMAND01
  z=flip(1/(1.899*imag(pixel)+flip(real(pixel)*1.724)))
  c=conj(1/(2.788+imag(pixel)+flip(real(pixel)*2.524))):
  z=abs(z*z+c) 
  z=real(z*z+c)
  |z| <=10
  ;SOURCE: 20carr.frm
}


Carr-819 {; Hybrid FGZ-SJMAND01
  z=1/(real(pixel)+flip(imag(pixel)*1.224))
  c=1/(2.224+1.224*real(pixel)+flip(imag(pixel))):
  z=(3*z*z)/(z+3)+c
  |real(z)|<=10
  ;SOURCE: 20carr.frm
}


Carr-82 {
  z=c=1/pixel:
  z=sin(z*z) + (conj(1/pixel))
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-820 {; Modified SJMAND01
  z=1/(real(pixel)+flip(imag(pixel)*1.224))
  c=1/(2.224+1.224*real(pixel)+flip(imag(pixel))):
  z=z*z*z/5+z*z+c
  |real(z)| <=10
  ;SOURCE: 20carr.frm
}


Carr-821 {; Modified SJMAND01
  z=1/(real(pixel)+flip(imag(pixel)*1.224))
  c=1/(0.224+1.224*real(pixel)+flip(imag(pixel))):
  z=z*z*z/5+z*z+real(c+0.1)
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-822 {; Modified SJMAND01
  z=1/(real(pixel)+flip(imag(pixel)*1.224))
  c=1/(0.224+1.224*real(pixel)+flip(imag(pixel))):
  z=z*z*z/5+z*z+real(c-0.1)
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-823 {; Modified SJMAND01
  z=conj(1/(real(pixel)+flip(imag(pixel)*1.224)))
  c=conj(1/(0.224+1.224*real(pixel)+flip(imag(pixel^1.124)))):
  z=(z*z+c+1/pixel)/2
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-824 {; Modified SJMAND01
  z=conj(1/(real(pixel)+flip(imag(pixel)*2.224)))
  c=conj(1/(2.224+1.224*real(pixel)+flip(imag(pixel^3.124)))):
  z=(z*z+z+c+1/pixel)/3
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-825 {; Modified SJMAND01
  z=cosxx(1/(real(pixel)+flip(imag(pixel)*1.724)))
  c=conj(1/(1.524+1.224*real(pixel)+flip(imag(pixel*1/pixel)))):
  z=((z*z+z+c)/pixel)/3
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-826 {; Modified SJMAND01
  z=1/(real(pixel)+1.224*flip(imag(pixel)*1.724))
  c=conj(1/(1.524+1.224*real(pixel)+flip(imag(pixel)))):
  z=real(pixel-z*z)/abs(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-827 {; Modified SJMAND01
  z=1/(real(pixel)+1.224*flip(imag(pixel)*1.724))
  c=conj(1/(1.524+1.224*real(pixel)+flip(imag(pixel)))):
  z=real(pixel-z*z)/conj(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-828 {; Modified SJMAND01
  z=1/(real(pixel)+1.224*flip(imag(pixel)*1.724))
  c=conj(1/(1.524+1.224*real(pixel)+flip(imag(pixel)))):
  z=((-pixel+z*flip(z))/flip(flip(pixel+(-c)*c)))
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-829 {; Modified SJMAND01
  z=(real(pixel))+1.224*(flip(imag(pixel)))
  c=2.224+1.224*(real(pixel))+flip(imag(pixel)):
  z=z*z+c
  z=abs(z*z+c)
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-83 {
  z=c=1/pixel:
  z=sin(z*z) + (conj(1/pixel))/(0.33/c)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-830 {; Modified SJMAND01
  z=(real(pixel))+1.224*(flip(imag(pixel)))
  c=2.224+1.224*(real(pixel))+flip(imag(pixel)):
  z=1/pixel*z+1/pixel*(c-1)+1/pixel*1/pixel
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-831 {; Modified SJMAND01
  z=1/((real(pixel))+(flip(imag(pixel))))
  c=1/((imag(pixel))+(flip(real(pixel)))):
  z=conj(z*z)+conj(c)
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-832 {; Modified SJMAND01
  z=1/((real(pixel))+(flip(imag(pixel))))
  c=1/((imag(pixel))+(flip(real(pixel)))):
  z=conj(z*z)+flip(conj(c)*c)
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-833 {; Modified SJMAND01
  z=1/((real(pixel))+(flip(imag(pixel))))
  c=1/((imag(pizel))+(flip(real(pixel)))):
  z=conj(z*z+0.3)+flip(conj(c*c)*c)
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-834 {; Modified SJMAND01
  z=1/((real(pixel))+(flip(imag(pixel))))
  c=1/((imag(pixel))+(flip(real(pixel)))):
  z=flip(conj(z*z+0.1))+flip(conj(c*c))
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-835 {; Modified SJMAND01
  z=1/((real(pixel))+(flip(imag(pixel))))
  c=1/((imag(pixel))+(flip(real(pixel)))):
  z=(flip(conj(z*z-0.3))+flip(conj(c*c)))/1.7
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-836 {; SJMAND01 Modified
  z=1/((real(pixel))+(flip(imag(pixel))))
  c=1/((imag(pixel))+(flip(real(pixel)))):
  z=(flip(conj(z*z-0.3))+flip(conj(c/pixel*c/pixel)))/1.15
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-837 {; SJMAND01 Modified
  z=1/((imag(pixel))+(flip(real(pixel))))
  c=1/((real(pixel))+(flip(imag(pixel)))):
  z=conj(conj(1.124)*(z*z+c)+conj(sqr(c*(1/pixel))))
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-838 {; SJMAND01 Modified
  z=1/((imag(pixel))+(flip(real(pixel))))
  c=1/((real(pixel))+(flip(imag(pixel)))):
  z=tanh(z*z+conj(c/(1/pixel)))
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-839 {; SJMAND01 Modified
  z=1/((imag(pixel))+(flip(real(pixel))))
  c=1/((real(pixel))+(flip(imag(pixel)))):
  z=z*c*c+conj(1/pixel)
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-84 {
  z=c=1/pixel:
  z=sin(z*z) + ((tanh(1/pixel))/(0.33/c))
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-840 {; SJMAND01 Modified
  z=1/((imag(pixel))+(flip(real(pixel))))
  c=1/((real(pixel))+(flip(imag(pixel)))):
  z=z*z+conj(tanh(c))
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-841 {; SJMAND01 Modified
  z=1/((imag(pixel))+(flip(real(pixel))))
  c=1/((real(pixel))+(flip(imag(pixel)))):
  z=tanh(z*z)+conj((c-0.224)*(c/(1/pixel)))/conj(5.8,2.01)
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-842 {; SJMAND01 Modified
  z=1/((imag(pixel))+(flip(real(pixel))))
  c=1/((real(pixel))+(flip(imag(pixel)))):
  z=(conj(1.124)*((z-2.2)*z+c)+real(c*(1/pixel-0.5)))/2.72
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-843 {; SJMAND01 Modified
  z=1/((imag(pixel))+(flip(real(pixel))))
  c=1/((real(pixel))+(flip(imag(pixel)))):
  z=(conj(3.124)*((z-1.7)*z+c)+real(c*(1/pixel-0.124)))/5
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-844 {; SJMAND01 Modified
  z=1/((imag(pixel))+(flip(real(pixel))))
  c=1/((real(pixel))+(flip(imag(pixel)))):
  z=(conj(3.424)*((z-1.7)*z+c)+real(c*(1/pixel-0.324)))/6.3
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-845 {; SJMAND01 Modified
  z=1/((imag(pixel))+(flip(real(pixel))))
  c=1/((real(pixel))+(flip(imag(pixel)))):
  z=(conj(3.124)*((z-1.85)*z+c)+real(-c*(1/pixel-0.724)))/6.3
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-846 {
  z=(1/pixel)/1.75, c=((1/pixel)/2)/(z-2.5)^tanh(pixel-1):
  z=(conj(z*z)+c)/4
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-847 {
  z=(1/pixel)/1.75, c=((1/pixel)/2)/(z-2.5)^conj(tanh(pixel-1)):
  z=(conj(z*z)+c)/4
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-848 {
  z=(1/pixel)/1.85
  c=((1/pixel-0.224)/2)/conj(z-1.5)^conj(cotanh(pixel-0.5)):
  z=(conj(z*z)+c)/4
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-849 {
  z=(1/pixel)/1.85
  c=((1/pixel-0.524)/4)/conj(z-1.1)*z^conj(cotanh(pixel-0.2)):
  z=(conj(z*z)+c)/4
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-85 {
  z=c=1/pixel:
  z=sqr(z) + c
  z=sqr(z) + conj(c)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-850 {
  z=(1/pixel)/1.95
  c=((1/pixel-0.524)/4)/conj(z-1.1)*z*z^conj(cotanh(pixel-0.2)):
  z=(conj(z*z)+flip(c))/4
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-851 {
  z=(1/pixel)/1.95
  c=((1/pixel-0.524)/4)/conj(z-1.1)*z*z^conj(cotanh(pixel-0.2)):
  z=(conj(z*z*z)+flip(c))/4
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-852 {
  z=conj(sinh((1/pixel)/1.95))
  c=((1/pixel-1.524)/4)/conj(z-2.1)*z*z^tanh(conj(cotanh(pixel-2.2))):
  z=(conj(z*z)+flip(conj(c*c)))/4
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-853 {
  z=(1/pixel)/1.75
  c=((1/pixel)/2)/z-2.5^tanh(pixel-1):
  z=1/z*z*z+conj(2*c+1/pixel)
  |real(z)|
  ;SOURCE: 20carr.frm
}


Carr-854 {
  z=conj((1/pixel)/2.75)
  c=((1/pixel)/2)/z-2.5^cotanh(pixel-1):
  z=1/z*z*z+(2*c+conj(1/pixel))
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-855 {
  z=conj((1/pixel)/1.91)
  c=((1/pixel)/2)/z-2.5^cotanh(pixel-1.124):
  z=(1/z*z*(z-2.7)+(2.3*c+conj(1/pixel)))/1.2
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-856 {
  z=(1/pixel)/1.91
  c=((1/pixel)/2)/z-2.5^cotanh(pixel-1.124):
  z=(conj(pixel-z*z)/(pixel-c*c))/1.35
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-857 {
  z=1/(pixel*pixel), c=imag(1/pixel*0.91/pixel):
  z=(1/z*z*z+z)/pixel-c*c
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-858 {
  z=1/(pixel*pixel), c=imag(1/pixel*0.91/pixel):
  z=(1/z*z*z+z)/pixel-(c-0.124*c-0.224)
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-859 {
  z=1/(pixel*pixel), c=imag(1/pixel*0.91/pixel):
  z=(1/z*z*z+z)/pixel-(c-1.724*c-1.224)
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-86 {
  z=c=pixel:
  z=sqr(z) + c
  z=sqr(z) + conj(c)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-860 {
  z=1/(pixel*pixel), c=imag(1/pixel*0.91/pixel):
  z=(1/z*z*z+2*z+1/pixel)/pixel-(c-0.954*c-0.424)
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-861 {
  z=1/(pixel*pixel*pixel), c=imag(1/pixel*0.91/pixel):
  z=((1/z*z*z+2*z+1/pixel)/conj(pixel-(c-0.954*c-0.424*c)))/2.3
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-862 {
  z=1/(pixel*pixel*pixel), c=imag(1/pixel*1.91/pixel):
  z=((1/z*z*z+2*z+1/pixel)/conj(pixel-(c-0.954*c-0.424*c)))/2.3
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-863 {
  z=1/(pixel*pixel*1/pixel), c=imag(1/pixel*0.5/pixel):
  z=((1/z*z*z+z)/conj(pixel+(c-0.954*c-0.424*c)))/2.3
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-864 {
  z=1/(pixel*pixel*1/pixel), c=imag(1.7/pixel*2.5/pixel):
  z=(1/z*z*z+z+1/pixel)/(pixel+cotanh(c*c))
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-865 {
  z=1/(pixel*pixel*1/pixel), c=imag(2.7/pixel*3.5/pixel):
  z=(1/z*z*z+z+1/pixel)/(pixel+cotanh((c*c+pixel)/1.4))
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-866 {
  z=1/((imag(pixel))+(flip(real(pixel))))
  c=1/((real(pixel))+(flip(imag(pixel)))):
  z=z*(2.7,-1.4)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-867 {
  z=1/((imag(pixel))+(flip(real(pixel))))
  c=1/((real(pixel))+(flip(imag(pixel)))):
  z=(z*z)*(-2.7,1.8)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-868 {
  z=1/((imag(pixel))+(flip(real(pixel))))
  c=1/((real(pixel))+(flip(imag(pixel)))):
  z=(1/z*z*z)*(-2.7,1.8)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-869 {
  z=1/((imag(pixel))+(flip(real(pixel))))
  c=1/((real(pixel))+(flip(imag(pixel)))):
  z=conj(flip(0.324+(1/z*z*z)*(2.7,1.8)))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-87 {
  z=c=1/pixel:
  z=sqr(z) + c
  z=sin(z) + c
  z=sqr(z) + conj(c)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-870 {
  z=pixel*conj(5/pixel)
  c=pixel*sqr(-2.6,4.2)+fn1(flip(1/pixel)):
  z=(pixel-z*z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-871 {
  z=1/(pixel*conj(5/pixel+0.724))
  c=1/(imag((pixel-1.524)*sqr(1/pixel)+fn3(conj(1/pixel-0.524)))):
  z=(pixel-z*z)/(pixel-c*c-0.124)
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-872 {
  z=1/(pixel*conj(5/pixel+0.724))
  c=1/(fn2((pixel-1.524)*sqr(1/pixel)+fn3(conj(1/pixel-0.524)))):
  z=(pixel-z*z)/(pixel-c*c-0.124)
  |real(z)| <=100
  ;SOURCE: 20carr.frm
}


Carr-873 {
  z=1/(pixel*conj(5/pixel+0.724))
  c=1/(fn4((pixel-1.524)*sqr(1/pixel)+fn2(conj(1/pixel-0.524)))):
  z=(pixel+z*z)/(pixel-c*c-0.324)
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-874 {
  z=1/(pixel*conj(conj(5/pixel+0.724)))
  c=1/(fn4((conj(pixel-1.524))*sqr(1/pixel)+fn2(conj(1/pixel-0.524)))):
  z=flip((pixel+z*z)/(pixel-c*c-0.324))
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-875 {
  z=1/(pixel*conj(conj(5/pixel+0.724)))
  c=1/(fn4((conj(pixel-1.524))*sqr(1/pixel)/fn2(conj(1/pixel-0.524)))):
  z=flip((pixel+z*z)/(pixel-c*c-0.324))
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-876 {
  z=1/(pixel*conj(conj(2/pixel+0.724)))
  c=1/(fn2((conj(pixel-1.524))*sqr(1/pixel)/fn2(conj(1/pixel-0.524)))):
  z=flip(pixel+z*z)/(pixel-c*c-0.324)
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-877 {
  z=1/(pixel*conj(conj(2/pixel+0.794)))
  c=1/(fn2((conj(pixel-1.784))*sqr(1/pixel-0.024)/fn2(conj(1/pixel-0.824)))):
  z=conj(flip(pixel+z*z-0.025)/(pixel-c*c-0.494))
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-878 {
  z=(1/pixel)/1.91, c=((1/pixel)/2)/z-2.5^cotanh(pixel-1.124):
  z=(conj(pixel+z*z)/(pixel-c*c))/1.55
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-879 {
  z=1/(pixel*pixel)
  c=((1/pixel)/2)/z-2.5^cotanh(pixel-1.124):
  z=(1/z*z*z+z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-88 {
  z=c=1/pixel:
  z=sqr(z) + sqr(c)
  z=sin(z*z) + sqr(c)
  z=sqr(z) + sqr(c)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-880 {
  z=real((1/pixel)/1.91)/(5.7,-1.3)
  c=(1/pixel*0.91/pixel):
  z=(pixel+z*z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-881 {
  z=((1/pixel)/0.91)/(2.7,-1.3)
  c=(1/pixel*0.91/pixel):
  z=(1/z*z*z+z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-882 {
  z=((1/pixel)/0.71)/(2.7,-1.3)
  c=(1/pixel*0.51/pixel):
  z=(1/z*z*z+z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-883 {
  z=((1/pixel)/0.71)/(2.7,-1.3)
  c=(1/pixel*0.51/pixel):
  z=(z^1/z+2*z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-884 {
  z=((1/pixel)/0.71)/(4.7,-0.3)
  c=(1/pixel*0.51/pixel):
  z=(z^(1/z*1/z)+3*z)/(pixel-conj(c*c))
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-885 {
  z=((1/pixel)/0.71)/(4.7,-0.1)
  c=(1/pixel*0.51/pixel):
  z=(1/z*1/pixel*z*z+z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-886 {
  z=((1/pixel)/0.71)/(4.7,-0.1)
  c=(1/pixel*0.51/pixel):
  z=(1/z*1/pixel*z*z+z)/((pixel-1)-(c*c))
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-887 {
  z=((1/pixel)/0.71)/(1/pixel)
  c=((1/pixel)/2)/z-2.5^cotanh(pixel-1.124):
  z=((1/z^1/pixel*z*z+z)/((pixel-1)-(c*c)))/1.7
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-888 {
  z=((1/pixel)/0.71)/(0.85/pixel+1.124)
  c=((1/pixel)/2)/z-2.8^cotanh(pixel-1.124)/(1/pixel):
  z=((1/z^1/pixel*z*z)/((pixel-1)-(c*c)))/1.7
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-889 {
  z=((1/pixel)/0.71)/(0.85/pixel+1.324)
  c=((1/pixel)/2)/z-2.5^fn4(pixel-1.324)/(1/pixel):
  z=((1/z^1/pixel*z*z)/((pixel-1)-(c*c)))/1.6
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-89 {
  z=c=pixel:
  z=sqr(z) + sqr(c)
  z=sin(z*z) + sqr(c)
  z=sqr(z) + sqr(c)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-890 {; May not be mathmatically correct but...
  z=(1/1/pixel^pixel*pixel)
  c=1/conj(1/pixel^pixel+pixel):
  z=(1/z*z*z)/(c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-891 {
  z=1/(1/pixel*pixel)/(3.7,-1.2)
  c=cotanh(1/pixel^pixel+pixel):
  z=(1/z*z*z+abs(1/pixel))/(1/pixel-(c*c+1/pixel))
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-892 {
  z=(1/pixel*pixel)/cosh(1/pixel)
  c=(1/pixel*pixel+pixel)/tanh(pixel+2):
  z=flip((1/z*z*z+(1/pixel))/(pixel-c*c))
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-893 {
  z=sqr(sqr(sqr(1/pixel-0.006)))
  c=((1/pixel)/2)/z^2.5^cotanh(pixel-1.124):
  z=(1/z*z*z+(1/pixel))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-894 {
  z=sqr(sqr(sqr(1/pixel-0.006)))/conj(1/pixel)
  c=(imag(1/pixel)/2)/real(z)-2.5^cotanh(pixel-1.124):
  z=1/(pixel-z*z/(pixel*real(1/pixel)))/(pixel-c*c*pixel)
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-895 {
  z=cotanh(1/pixel), c=2+cotanh(1/pixel):
  z=conj(2.124)*(z*z+c)+real(c*(1/pixel-0.5))
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-896 {
  z=cotanh(1/pixel), c=2+cotanh(1/pixel*0.87/pixel):
  z=(2.124)*(z*z+c)/real(c*(1/pixel-0.5))
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-897 {
  z=1/(conj(pixel)), c=3.58+sqr(cotanh(1/pixel)):
  z=((1/z*z*z+z)/(pixel-c*c))/1.68
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-898 {
  z=1/(pixel*pixel), c=1/(sqr(sqr(sqr(pixel)))):
  z=conj(pixel-z*z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-899 {
  z=cotanh(pixel+1)/real(1/pixel)
  c=sqr(sqr(sqr(pixel))):
  z=(z+pixel)/(c-pixel)
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-90 {
  z=c=1/pixel:
  z=sqr(z) + sqr(c-5)
  z=sin(z*z) + sqr(c-2)
  z=sqr(z) + sqr(c-0.67)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-900 {
  z=cotanh(pixel+1)/imag(1/pixel-0.334)
  c=sqr(sqr(sqr(pixel*1/pixel))):
  z=(z^real(2.124)+c)/1.7
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-901 {
  z=cotanh(pixel+1)/imag(1/pixel-0.334)
  c=sqr(sqr(sqr(pixel*1/pixel))):
  z=tanh(z^real(2.524)+c)/1.7
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-902 {
  z=sinh(pixel+1)/imag(1/pixel-0.334)
  c=sqr(sqr(sqr(pixel*1/pixel))):
  z=cotanh(z^exp(2.424)+c)/1.7
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-903 {
  z=1/(pixel*pixel)
  c=imag(1/pixel*0.91/pixel):
  z=(sqr(conj(z))*conj(z)+conj(2.124))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-904 {
  z=((1-pixel)/3)^0.5, c=(1-1/pixel)^0.5:
  z=z*z+c
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-905 {; Modified Richard frm
  z=1/pixel, c=pixel-sqr(z):
  c=pixel +c/z
  z=c-z*pixel
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-906 {
  z=1/pixel, c=conj(pixel-sqr(z)):
  z=c-z*pixel
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-907 {
  z=exp(1/pixel), c=conj(pixel-sqr(z)):
  z=(c-z*pixel)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-908 {
  z=cotanh(exp(1/pixel))
  c=conj(pixel-sqr(z)):
  z=c+z*pixel-1
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-909 {
  z=conj(exp(1/pixel))
  c=conj(pixel-sqr(z)):
  z=z*z+c
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-91 {
  z=c=1/pixel:
  z=sqr(z) + sqr(c-6)
  z=sin(z*z) + sqr(c-3)
  z=sqr(z) + sqr(c-2)
  |z| <=4
  ;SOURCE: carr-2.frm
}


Carr-910 {
  z=(1/pixel)/1.91, c=((1/pixel)/2)/z-2.5^tanh(pixel-1.124):
  z=c-z*pixel
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-911 {
  z=1/(pixel*pixel)
  c=imag(1/pixel*0.91/pixel):
  z=c-z*pixel
  z=c^2+pixel+z
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-912 {
  z=1/(pixel*pixel)
  c=imag(1/pixel*0.91/pixel):
  z=((1/(sin(z*z+pixel*pixel)))/(pixel-c*c))/1.7
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-913 {
  z=1/(pixel*pixel)
  c=imag(1/pixel*0.91/pixel):
  z=((1/(fn2(z*z+pixel*pixel)))/(pixel-c*c))/1.7
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-914 {
  z=1/pixel+2.524
  c=((1*(|1.324|<=0)+1.324)*cotanh(pixel)):
  z=c-z*pixel
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-915 {
  z=1/pixel+0.91/pixel
  c=((2.124*(|3.324|<=0)+1.324)*cotanh(pixel)):
  z=c-z*pixel+1
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-916 {
  z=1/pixel, c=((2.124*(|3.124|<=0)+pixel)*cotanh(pixel)):
  z=(pixel-z*z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-917 {
  z=1/(pixel*pixel)
  c=flip(pixel+fn3(4/z-z/5+125)):
  z=(pixel-z*z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-918 {
  z=1/(pixel*pixel)
  c=conj(pixel+(4/z^z*z+250)):
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: carr.frm
}


Carr-919 {
  z=1/(pixel*pixel)
  c=abs(pixel*pixel+(4/z^z*z+250)):
  z=(1/z^z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}


Carr-92 {
  z=c=1/pixel:
  z=sqr(z) + sqr(c)
  z=sqr(z) + sin(c)
  z=sqr(z) + sin(c)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-920 {
  z=1/(pixel*pixel)
  c=imag(pixel*pixel+(4/z^z*z+250)):
  z=(pixel-z*z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}


Carr-921 {
  z=1/(pixel*pixel)
  c=imag(pixel*pixel+(4/z^z*z+250)):
  z=z*z+c
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}


Carr-922 {
  z=1/(pixel*pixel)
  c=imag(pixel*pixel+(4/z^z*z+250)):
  z=pixel
  z=conj(z*z*z+c)
  z=z*z*1/c
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}


Carr-923 {
  z=imag(1/(pixel*pixel))
  c=imag(pixel*1/pixel+(4/z^z*z+1/pixel)):
  z=((z*1/c)/(pixel-c*c))/0.8
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}


Carr-924 {
  z=1/pixel, c=pixel:
  z=z*z+c
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}


Carr-925 {
  z=1/pixel, c=pixel:
  z=((imag(z)/c)+(z*1/c))/(pixel-c*c)
  |z-1/pixel| <=100
  ;SOURCE: 22carr.frm
}


Carr-926 {
  z=4/pixel, c=pixel+4:
  z=((imag(z)/c)+(z*1/c))/(pixel-c*c)
  |z-1/pixel| <=100
  ;SOURCE: 22carr.frm
}


Carr-927 {
  z=conj(4/pixel), c=pixel+4:
  z=((imag(z)/c)+(z*1/c))/(pixel-c*c)
  |z-1/pixel| <=100
  ;SOURCE: 22carr.frm
}


Carr-928 {
  z=conj(6/pixel), c=cosh(pixel+8):
  z=(((imag(z)/c)+(z*1/c))/(pixel-c*c))/0.6
  |z-1/pixel| <=100
  ;SOURCE: 22carr.frm
}


Carr-929 {
  z=conj(6/pixel), c=cotanh(pixel+8):
  z=(((imag(z+2)/c)+((2.4*z)*1/c))/(pixel-c*c))/0.6
  |z-1/pixel| <=100
  ;SOURCE: 22carr.frm
}


Carr-93 {
  z=c=1/pixel:
  z=sqr(z) + sqr(c*c)
  z=sqr(z) + sin(c)
  z=sqr(z) + sin(c*c)
  |z| <=4
  ;SOURCE: carr-2.frm
}


Carr-930 {
  z=conj(4/pixel), c=cotanh(pixel-4):
  z=(((imag(z+2)/c)+((2.4*z)*4/c))/(pixel-c*c+1/pixel))/1.6
  |z-1/pixel| <=100
  ;SOURCE: 22carr.frm
}


Carr-931 {
  z=conj(4/pixel*0.91/pixel)
  c=pixel-4:
  z=(((imag(z+2)/c*c)+((2.4*z)*4/c*c))/(pixel-c*c+1/pixel))/2.6
  |z-1/pixel| <=100
  ;SOURCE: 22carr.frm
}


Carr-932 {
  z=conj(4/pixel*0.91/pixel)
  c=pixel-4:
  z=(((imag(z+2)/c*c)+((2.4*z)*4/c*c))/flip(1.5*conj(pixel-c*c+4/pixel)))/2.6
  |z-1/pixel| <=100
  ;SOURCE: 22carr.frm
}


Carr-933 {
  z=conj(4/pixel*1.91/pixel)
  c=4/(pixel*pixel-4):
  z=(((imag(z+2)/c*c)+((2.4*z)*4/c*c))/flip(1.5*conj(pixel-c*c+4/pixel)))/2.6
  |z-1/pixel| <=100
  ;SOURCE: 22carr.frm
}


Carr-934 {
  z=1/pixel, c=pixel:
  z=(z^(cotanh(z^.5))+pixel)/(pixel-c*c)
  |z-1/pixel| <=100
  ;SOURCE: 22carr.frm
}


Carr-935 {
  z=imag(1/pixel)
  c=1/(real(pixel)+flip(imag(pixel)*(-3.224))):
  z=(pixel-1/z^z*z)/(pixel-c*c)
  |z-1/pixel| <=100
  ;SOURCE: 22carr.frm
}


Carr-936 {
  z=imag(1/pixel*0.91/pixel)
  c=1/(2.924*real(pixel)+flip(imag(pixel)*3.224)):
  z=(z*1/c)/(pixel-c*c)
  |z-pixel| <=100
  ;SOURCE: 22carr.frm
}


Carr-937 {
  z=imag(1/pixel)
  c=1/(2.924*real(pixel)+flip(imag(pixel)*3.224)):
  z=(1/fn1(z)+z)/(pixel-c*c)
  |z-fn1(pixel)| <=100
  ;SOURCE: 22carr.frm
}


Carr-938 {
  z=imag(1/pixel)
  c=1/(2.924*real(pixel)+flip(imag(pixel)*3.224)):
  z=(4/fn1(z)+pixel)/(pixel-c*c)
  |z-fn1(pixel)| <=100
  ;SOURCE: 22carr.frm
}


Carr-939 {
  z=1/pixel, c=pixel:
  z=imag(z+fn1(z*1/pixel))/c/pixel
  |z-pixel| <=100
  ;SOURCE: 22carr.frm
}


Carr-94 {
  z=c=1/pixel:
  z=sqr(z*z) + sqr(c*c)
  z=sqr(z) + sin(c)
  z=sqr(z*z) + sin(c*c)
  |z| <=4
  ;SOURCE: carr-2.frm
}


Carr-940 {
  z=1/pixel, c=fn2(pixel)/fn3(pixel):
  z=(z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}


Carr-941 {
  z=abs(1/pixel), c=fn2(pixel)/fn3(pixel):
  z=(z*1/(c+2))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}


Carr-942 {
  z=abs(1/pixel), c=fn2(pixel)/fn3(pixel):
  z=(z*1/(c-1.753))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}


Carr-943 {
  z=abs(1/pixel), c=fn2(pixel)/fn3(pixel):
  z=(z*3/fn4(c*c-1.8))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}


Carr-944 {
  z=abs(1/pixel), c=fn2(pixel)/fn4(pixel):
  z=((z*3/fn4(c*c-0.8))/(pixel-c*c))/3.4
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}


Carr-945 {
  z=abs(1/pixel*0.91/pixel)
  c=fn2(pixel)/fn4(pixel):
  z=(z*3/log(c*c-0.8))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}


Carr-946 {
  z=abs(1/pixel*4/pixel)
  c=3/fn2(pixel)/(4/fn4(pixel)):
  z=((z*3/log(c*c-1.8))/(pixel-c*c))
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}


Carr-947 {
  z=abs(1/pixel*4/pixel)
  c=3/fn2(pixel)/(4/fn4(pixel)):
  z=((z*3/cotanh(c*c-1.8))/(pixel-c*c))
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}


Carr-948 {
  z=abs(1/pixel*4/pixel)
  c=3/fn2(pixel)/(4/fn4(pixel)):
  z=((z*pixel-(c*c))/(pixel-c*c))/2.8
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}


Carr-949 {
  z=abs(1/pixel*4/pixel)
  c=3/fn2(pixel)/(4/fn4(pixel)):
  z=((imag(z*pixel)-(c*c))/(pixel-c*c))/2.8
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}


Carr-95 {
  z=c=pixel:
  z=sqr(z*z) + sqr(c*c)
  z=sqr(z) + sin(c)
  z=sqr(z*z) + sin(c*c)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-950 {
  z=abs(1/pixel*4/pixel)
  c=3/fn2(pixel)/(4/fn4(pixel)):
  z=((z*pixel)/(4/fn4(c*pixel)))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}


Carr-951 {
  z=abs(1/pixel*4/pixel)
  c=3/fn2(pixel)/(4/fn4(pixel)):
  z=(cotanh(z*pixel)/tanh(4/fn4(c*pixel)))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}


Carr-952 {
  z=abs(1/pixel*4/pixel)
  c=3/fn2(pixel)/(4/fn4(pixel)):
  z=(z*c+pixel)/(pixel)
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}


Carr-953 {
  z=abs(1/pixel*4/pixel)
  c=3/fn2(pixel)/(4/fn4(pixel)):
  z=(z*(1/c^c)+pixel)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}


Carr-954 {
  z=sqr(1/pixel*4/pixel)
  c=3/fn2(pixel)/(4/fn4(pixel)):
  z=(cotanh(z)*tanh(z)+fn3(fn4(c)))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}


Carr-955 {
  z=abs(1/pixel*4/pixel)
  c=3/fn2(pixel)/(4/fn4(pixel)):
  z=((pixel-z*z*4/z)/(pixel-c*c))/2.8
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}


Carr-956 {
  z=abs(1/pixel*4/pixel)
  c=3/fn2(pixel)/(4/fn4(pixel)):
  z=(conj(pixel-z*z*4/z)/(pixel-c*c))/1.7
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}


Carr-957 {
  z=abs(1/pixel*4/pixel)
  c=3/fn2(pixel)/(4/fn4(pixel)):
  z=((z/1/c/2.224)/(pixel-c*c))/1.4
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}


Carr-958 {; Modified Julia
  z=1/(pixel*pixel)
  c=((0.3224,0.69)*(|-2.224|<0)+(-2.224))
  t=(4*(real(0.624)<=0)+real(0.624)*(0<0.624)):
  z=(z*z*1/c)/(pixel-c*c)
  |z| <=t
  ;SOURCE: 22carr.frm
}


Carr-959 {
  z=1/(pixel*pixel)
  c=(0.3224,-0.69)/pixel:
  z=((z*1/c)/(pixel-c*c))/1.4
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}


Carr-96 {
  z=c=pixel:
  z=sqr(z*z) + sqr(c*c)
  z=sqr(z) + sin(c^pixel)
  z=sqr(z*z) + sin(c*c)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-960 {
  z=1/(pixel*pixel)
  c=imag(0.3224,-0.69)/pixel:
  z=((z*1/c)/(pixel-c*c))/1.39
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}


Carr-961 {
  z=1/(pixel*pixel)
  c=imag(0.6,0.55)/pixel:
  z=((z*1/c)/(pixel-c*c))/1.85
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}


Carr-962 {
  z=1/(pixel*pixel)
  c=cosxx(0.6,0.55)/pixel:
  z=((z*1/c)/(pixel-c*c))
  |real(z)| <=100
  ;SOURCE: 22carr.frm
}


Carr-963 {
  z=1/(pixel*pixel)
  c=cosxx(1.099,0)/pixel:
  z=(z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-964 {
  z=1/(pixel*pixel)
  c=(1.099,0)/pixel:
  z=(z*1/c)/cotanh(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-965 {
  z=1/(pixel*pixel)
  c=(1.099,0)/pixel:
  z=(z*1/c)/sinh(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-966 {
  z=1/(pixel*pixel)
  c=(1.099,0.01)/pixel:
  z=(2^z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-967 {
  z=1/(pixel*pixel)
  c=(1.099,0.01)/real(pixel):
  z=(z/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-968 {
  z=imag(1/(pixel*pixel*pixel))
  c=(1.099,0)/(1/abs(pixel*pixel+2)):
  z=(z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-969 {
  z=imag(1/(pixel*pixel*pixel))
  c=(4.299,-1.2)/(1/abs(pixel*pixel+2)):
  z=(z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-97 {
  z=c=1/pixel:
  z=sqr(z*z) + sqr(c*c)
  z=sqr(z*z) + sin(c^pixel)
  z=sqr(z*z) + sin(c*c)
  |z| <=4
  ;SOURCE: carr-2.frm
}


Carr-970 {
  z=imag(1/(pixel*pixel*pixel))
  c=(4.299,-1.2)/(1/abs(pixel*pixel+2)):
  z=(z*(1/c*1/c))/(pixel-c*c)
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-971 {
  z=imag(1/((pixel+2)*pixel*pixel))
  c=(0.342,1.97)/(1/abs(pixel*pixel+2)):
  z=(z*(1/c*1/c+4/pixel))/(pixel-c*c)
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-972 {
  z=imag(1/((pixel+2)*pixel*pixel))
  c=(-0.742,-0.009)/(1/abs(pixel*pixel+2)):
  z=(z*(1/c*1/c+4/pixel))/(pixel-c*c)
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-973 {
  z=imag(1/((pixel+2)*pixel*pixel))
  c=(-5.742,-0.009)/(1/abs(pixel*pixel+2)):
  z=(z*(1/c*1/c*1/c+4/pixel))/(pixel-c*c*1/c)
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-974 {
  z=imag(1/((pixel+2)*pixel*pixel))
  c=(-5.742,-0.009)/(1/abs(pixel*pixel+2)):
  z=abs(z*(1/c*1/c*1/c+4/pixel))/(pixel-c*c*1/c)
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-975 {
  z=imag(1/((pixel+2)*pixel*pixel))
  c=(-1.7621,0.0141)/(1/abs(pixel*pixel+2)):
  z=(abs(z*(1/c*1/c*1/c+4/pixel))/(pixel-c*c*1/c))/2.8
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-976 {
  z=imag(1/((pixel+2)*pixel*pixel))
  c=(-1.7621,0.0141)/(1/abs(pixel*pixel+2)):
  z=(abs(z*(4/c*4/c*4/c+4/pixel))/(pixel-c*c*4/c))/2.8
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-977 {
  z=imag(1/((pixel+2)*pixel*pixel))
  c=(-0.1672,1.0413)/(1/abs(pixel*pixel+2)):
  z=(abs(z*(1/c*1/c*1/c+4/pixel))/(pixel-c*c*4/c))/2.8
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-978 {
  z=imag(1/((pixel+2)*pixel*pixel))
  c=(-0.1672,1.0413)/(1/abs(pixel*pixel+2)):
  z=(abs(z*(1/c*4/c*4/c+4/pixel))/(pixel-c*c*4/c))/2.8
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-979 {
  z=sqr(1/((pixel+2)*pixel*pixel))
  c=(-0.125,1.1187)/(1/abs(pixel*pixel+2)):
  z=(z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-98 {
  z=c=pixel:
  z=sqr(z*z) + sqr(c*c)
  z=sqr(z*z) + sin(c^pixel)
  z=sqr(z*z) + sin(c*c)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-980 {
  z=sqr(1/((pixel+2)*pixel*(pixel+2)))
  c=((1.099,-0.0099)/(0.342,1.97))^((sqrt5+1)/2):
  z=((z*1/c*1/c*1/c)/(pixel-c*c))/2.8
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-981 {
  z=sqr(1/((pixel+2)*pixel*(pixel+2)))
  c=(1.099,-0.0099)/(pixel^pixel)/z:
  z=1/(z*z+pixel*pixel)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-982 {
  z=sqr(1/((pixel+2)*pixel*(pixel+2)))
  c=(0.342,1.97)^z:
  z=((pixel-z*1/c)/(pixel-c*c))/2.8
  |real(z)|<=100
  ;SOURCE: 23carr.frm
}


Carr-983 {
  z=1/pixel
  c=(-5.742,-0.009)+5.05:
  z=(z*z*z+(2.734-1)*z-0.734)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-984 {
  z=1/pixel*4/pixel
  c=(-5.099,0.1)+5.05:
  z=(z*(2.734-1)*z-0.734)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-985 {
  z=cotanh(1/pixel*4/pixel)
  c=pixel:
  z=((-0.7499,-0.014407)*(z*1/c))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-986 {
  z=sqr(1/pixel*4/pixel)
  c=pixel*pixel:
  z=z*z*z/5+z*z+c
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-987 {
  z=2.234*(real(pixel))+conj(imag(pixel)*0.734)
  c=(4.299,-1.2)*sqr(conj(pixel)):
  z=(z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-988 {
  z=2.234*(real(pixel))+conj(imag(pixel)*(1.099,0))
  c=(4.299,-1.2)*sqr(conj(pixel)):
  z=(pixel-(1.099,0)*z)/(pixel-(1.099,0)*c)
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-989 {
  z=2.234*(real(pixel))+conj(imag(pixel)*(1.099,0))
  c=(4.299,-1.2)*sqr(conj(pixel)):
  z=(pixel-(1.099,0)*(z*1/c))/(pixel-(1.099,0)*c*4/c)
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-99 {
  z=c=pixel:
  z=sqr(z*z) + sqr(c*c)
  z=sqr(z*z) + sin(c^pixel)
  z=sqr(z*z) + sin(c^pixel)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-990 {
  z=2.234*(real(pixel))+conj(imag(pixel)*(-5.742,-0.009))
  c=(-1.7621,-0.0141)*sqr(conj(pixel)):
  z=(pixel-(1.0,0.4)*(z*1/c))/(pixel-(-1.099,0)*c*4/c)
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-991 {
  z=2.234*(real(pixel))+conj(imag(pixel)*(-5.742,-0.009))
  c=fn3(1/pixel)^(-1.7621,-0.0141)*sqr(conj(pixel)):
  z=(pixel-(1.0,0.4)*(z*1/c))/(pixel-(-1.099,0)*c*4/c)
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-992 {
  z=((1/pixel)/0.71)/(0.85/pixel+1.324)
  c=((1/pixel)/2)/z-2.5^fn4(pixel+1.324)/(4/pixel):
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-993 {
  z=((1/pixel)/0.71)/(0.85/pixel+1.324)
  c=((1/pixel)/2)/z-2.5^fn4(pixel+1.324)/(4/pixel)
  z=((pixel-2)-z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-994 {
  z=((1/pixel)/0.71)/(0.85/pixel+1.324)
  c=((1/pixel)/2)/z-2.5^fn4(pixel+1.324)/(0.5/pixel):
  z=(1/z*z*z+z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-995 {
  z=((1/pixel)/0.71)/(0.85/pixel+2.324)
  c=((1/pixel)/2)/z-2.5^fn4(pixel+2.324)/(0.5/pixel):
  z=(1/z*z*z+z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-996 {
  z=((1/pixel)/0.71)/(0.85/pixel+2.324)
  c=((1/pixel)/2)/z-2.5^fn3(pixel+2.324)/(0.5/pixel):
  z=(1/z^z+c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-997 {
  z=((1/pixel)/0.71)/(0.85/pixel+2.324)
  c=((1/pixel)/2)/z-2.5^(pixel+2.324)/(0.5/pixel):
  z=(z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-998 {
  z=((1/pixel)/0.71)/(0.85/pixel+2.324)
  c=((1/pixel)/2)/z-2.5^(pixel+2.324)/(0.5/pixel):
  z=2*(z*1/c)/(pixel-c*c)
  z=(z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-999 {
  z=((1/pixel)/0.71)/(0.85/pixel+2.324)
  c=((1/pixel)/2)/z-2.5^(pixel+2.324)/(0.5/pixel):
  z=(z*(cotanh(1/c)))
  |real(z)| <=100
  ;SOURCE: 23carr.frm
}


Carr-Orman1 {; Modified by Jack A. Orman
  z=1/pixel, c=fn1(z/pixel):
  z=z*z*z+fn2(c-p1)
  |z| <=10
  ;SOURCE: j-carr.frm
}


Carr-Orman2 {; Modified by Jack A. Orman
  z=1/pixel, c=fn1(p2)/pixel:
  z=z^p1+fn2(c/pixel)
  |z| <=10
  ;SOURCE: j-carr.frm
}


Carrexp {; Bradley Beacham  [74223,2745] inandout04
  k=((1)*(|p1|<=0)+p1)
  test=(4*(real(p2)<=0)+real(p2)*(0<p2))
  b5=oldz=pixel
  b4=pixel
  c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
  a=(|z|<=|oldz|)*(c)
  b=(|oldz|<|z|)*(c*k)
  c=a+b
  oldz=z
  z=fn1(z*z)+c
  |z|<=test
  ;SOURCE: carr1.frm
}

