

u-draw01 {; Bradley Beacham, Jon Horner 
  h = (0.05 * ((p1)<=0) + (p1) * (0<p1))
  k = (3.0 * ((p2)<=0) + (p2) * (0<p2))
  x = real(pixel*pixel), y = imag(pixel*pixel), c = z = 0:
  a = x - h*fn1(y + fn2(k*y))
  b = y - h*fn1(x + fn2(k*x))
  x = a
  y = b
  z = fn3(a) * fn4(b) + c
  |z| <= 16
  ;SOURCE: u-draw.frm
}


u-draw02 {; Bradley Beacham, Jon Horner 
  h = (0.05 * ((p1)<=0) + (p1) * (0<p1))
  k = (3.0 * ((p2)<=0) + (p2) * (0<p2))
  x = real(pixel), y = imag(pixel):
  a = x - h*fn1(y + fn2(k*y))
  b = y - h*fn1(y + fn2(k*x))
  x = a
  y = b
  z = fn3(a) + fn4(b) 
  |z| <= 16
  ;SOURCE: u-draw.frm
}


u-draw03 {; Bradley Beacham, Jon Horner 
  h = (0.05 * ((p1)<=0) + (p1) * (0<p1))
  k = (3.0 * ((p2)<=0) + (p2) * (0<p2))
  x = real(pixel), y = imag(pixel):
  a = x - (h+pixel)*fn1(y + fn2(k*y))
  b = y - (h+pixel)*fn1(y + fn2(k*x))
  x = a
  y = b
  z = fn3(a) + fn4(b) 
  |z| <= 16
  ;SOURCE: u-draw.frm
}


u-draw04 {; Bradley Beacham, Jon Horner 
  h = (0.05 * ((p1)<=0) + (p1) * (0<p1))
  k = (3.0 * ((p2)<=0) + (p2) * (0<p2))
  x = real(pixel), y = imag(pixel):
  a = x - h*fn1(y + fn2(k*y))
  b = y - h*fn1(x + fn2(k*x))
  x = a
  y = b
  z = fn3(x) * fn4(y) 
  |z| <= 16
  ;SOURCE: u-draw.frm
}


u-draw05 {; Bradley Beacham, Jon Horner 
  h = (0.05 * ((p1)<=0) + (p1) * (0<p1))
  k = (3.0 * ((p2)<=0) + (p2) * (0<p2))
  x = real(pixel*pixel), y = imag(pixel*pixel):
  a = x - h*fn1(y + fn2(k*y))
  b = y - h*fn1(x + fn2(k*x))
  x = a
  y = b
  z = fn3(x) * fn4(y) 
  |z| <= 16
  ;SOURCE: u-draw.frm
}


u-draw06 {; Bradley Beacham, Jon Horner 
  h = (0.05 * ((p1)<=0) + (p1) * (0<p1))
  k = (3.0 * ((p2)<=0) + (p2) * (0<p2))
  x = real(pixel*pixel), y = imag(pixel*pixel):
  a = x - h*fn1(y*y + fn2(k*y))
  b = y - h*fn1(x*x + fn2(k*x))
  x = a
  y = b
  z = fn3(x) * fn4(y) 
  |z| <= 16
  ;SOURCE: u-draw.frm
}


u-draw07 {; same as popcmplx00
  h = (0.05 * ((p1)<=0) + (p1) * (0<p1))
  k = (3.0 * ((p2)<=0) + (p2) * (0<p2))
  x = fn1(real(pixel)), y = fn2(imag(pixel)):
  temp = z
  a = x - h*fn1((y) + fn2(k*y))
  b = y - h*fn1((x) + fn2(k*x))
  x = a, y = b
  z = temp
  z = fn3(x) * fn4(y)
  |z| <= 64
  ;SOURCE: u-draw.frm
}


u-draw10_00 {; via terrora.frm, cf u-draw3_01                            
  z = fn1(fn2(fn3(fn4(pixel)))), c = z ^ (z-1) :  
  z = sinh(z)
  z = real(z+p1) * real(c+p2) - imag(z+p3) * imag(c) + flip(imag(z))
  z = real(z+p1) + flip(real(z+p2) * imag(c+p3)\ 
       - imag(z) * real(c+p3)) + pixel
  |z| <= 48
  ;SOURCE: u-draw10.frm
}


u-draw10_01 {; via terrora.frm, cf u-draw3_02                              
  z = fn1(fn2(fn3(fn4(pixel)))), c = z ^ (z-1) :  
  z = sinh(z)
  z = real(z+p1) * real(c+p2) - imag(z+p3) * imag(c) + flip(imag(z))
  z = real(z+p1) + flip(real(z+p2) * imag(c+p3)\ 
       - imag(z) * real(c+p3)) + pixel
  z = z * z + c
  |z| <= 48
  ;SOURCE: u-draw10.frm
}


u-draw10_01a {; adapted from 42ccarr.frm by Bob Carr, 
              ; from Sylvie Gallet orig, cf u-draw4_01
  c=fn1(pixel+p1)
  z=flip(imag(fn2(pixel)))*fn3(pixel)\
     -conj(.1*p2/pixel)-flip(.01*p2/pixel)
  d1 = conj(0.0000455/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==t1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*fn4(t+ct), c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: u-draw10.frm
}


u-draw10_02 {; via terrora.frm, cf u-draw3_02
  z = fn1(fn2(fn3(fn4(pixel)))), c = z ^ (z-1) :  
  z = sinh(z)
  z = real(z+p1) * real(c+p2) - imag(z+p1) * imag(c) + flip(imag(z))
  z = real(z+p1) + flip(real(z+p2) * imag(c+p1)\ 
      - imag(z+p2) * real(c)) + 1/pixel
  z = z * z + c
  |z| <= 48
  ;SOURCE: u-draw10.frm
}


u-draw10_02a {; adapted from 42ccarr.frm by Bob Carr, 
              ; from Sylvie Gallet orig, u-draw4_02
  c=fn1(pixel+p1)
  z=imag((.33)-pixel)*sqr(pixel)-conj((.1*p2)/pixel)-(.01*p2)/pixel
  d1 = conj(0.0000455/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*sinh(t+ct), c = c*t + ct
  z=fn2(z) * fn3(z) + fn4(c)
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: u-draw10.frm
}


u-draw10_03 {; Modified Sylvie Gallet frm. [101324,3444],1996, 
             ; via Bob Carr
             ; passes=1 needs to be used with this PHC formula.
  z=fn1(pixel+p1)-conj(fn2(0.1/pixel-flip(0.01/pixel)))+0.3
  c=fn3(z)*fn4(pixel+p2)^2+0.3
      ; c=whitesq*b4-(whitesq==0)*b4
      ; z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z+(-0.7564,-0.132)+(c/8))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: u-draw10.frm
}


u-draw10_03a {; adapted from 42ccarr.frm by Bob Carr
              ; from Sylvie Gallet orig, u-draw4_03
  c=sinh(pixel+p1)
  z=imag((.33)-pixel+p2)*sqr(pixel)\
      -real(conj((.1)/pixel+p2)-(.01)/pixel+p2)
  d1 = conj(0.0000455*pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=1000, l2=1500, l3=2000, l4=2500
  iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*fn4(t+ct), c = c*t + ct
  z=fn1(z) * fn2(z) + fn3(c)
  iter=iter+1
  |z| <= 32
  ;SOURCE: u-draw10.frm
}


u-draw10_04 {; Modified Sylvie Gallet frm. [101324,3444],1996, 
             ; via  Carr2799
             ; passes=1 needs to be used with this PHC formula.
  c=0.8*pixel^5/(sqr(pixel))+0.4
  z=c-flip(0.1/pixel)
      ; c=whitesq*(b4)-(whitesq==0)*b4
      ; z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0, pp2=pixel/2500:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.00015
  z = fn1(real(z+p1)) * fn2(real(c+p2))\ 
     - fn1(imag(z+p1)) * imag(c) + flip(imag(z))
  z = fn3(real(z+p1)) + fn4(flip(real(z+p2) * imag(c+p1)\ 
     - imag(z+p2) * real(c))) + 1/pixel
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: u-draw10.frm
}


u-draw10_05 {; Modified Sylvie Gallet frm. [101324,3444],1996
             ; carr3034
  b5=cabs(0.33-cos(pixel+p1))/(0.33-tan(3*pixel))-0.4
  b4=conj(pixel+p2)*(pixel-flip(0.001/pixel))*(pixel-conj(0.01/pixel))
  c=fn1(b4+p1)-fn2(conj(b4+p1))
  z=fn3(b5+p2)-fn4(sqr(b5+p2))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c^4)^(real(1)-(1,0))*(0.01+z*z)+(c/6)+(-0.6856,-0.132)
  iter=iter+1
  z<=bailout
  ;SOURCE: u-draw10.frm
}


u-draw10_06 {; Modified Sylvie Gallet frm. [101324,3444],1996
             ; carr3034
  b5=cabs(0.33-cos(pixel+p1))/(0.33-tan(3*pixel))-0.4
  b4=conj(pixel+p2)*(pixel-flip(0.001/pixel))*(pixel-conj(0.01/pixel))
  c=fn1(b4+p1)-fn2(conj(b4+p1))
  z=fn3(b5+p2)-fn4(sqr(b5+p2))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c^4)^(real(1)-(1,0))*(0.01+z*z)+(c/6)+(-0.6856,-0.132)
       ; z=z*z + (c/6)+(-0.6856,-0.132)
  iter=iter+1
  z<=bailout
  ;SOURCE: u-draw10.frm
}


u-draw10_07 {; Modified Sylvie Gallet frm. [101324,3444],1996
             ; carr3034
  b5=fn1(0.33-cos(pixel+p1))/(0.33-tan(3*pixel))-0.4
  b4=fn2(pixel+p2)*(pixel-flip(0.001/pixel))*(pixel-conj(0.01/pixel))
  c=(b4+p1)-fn3(conj(b4+p2))
  z=(b5+p1)-fn4(sqr(b5+p2))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z + (c/6)+(-0.6856,-0.132)
  iter=iter+1
  z<=bailout
  ;SOURCE: u-draw10.frm
}


u-draw10_08 {; Modified Sylvie Gallet frm. [101324,3444],1996
             ; Carr3024
  b5=flip((pixel+p1)^2)-cabs((pixel+p2)^7)\
       -conj(0.01/pixel-flip(0.001/pixel))-0.3
  b4=b5-(|0.1/b5|)
  c=fn1(b4+p1)-fn2(b4+p1)
  z=fn3(b5+p2)-fn4(flip(b5+p2))^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: u-draw10.frm
}


u-draw10_09 {; Modified Sylvie Gallet frm. [101324,3444],1996, 
             ; Carr3128
             ; passes=1 needs to be used with this PHC formula.
             ; Add variable "newpixel". G. Martin 6/27/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z =fn1(conj(newpixel+p1))*fn2(abs(newpixel))*fn3(tan(newpixel+p2))\
       -conj(0.1/newpixel)
  c =1/sinh(1/fn4((b5*b5)))
      ; c=whitesq*(b4)-(whitesq==0)*b4
      ; z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(|z/2|), c2=2.25*conj(z/2)
  c3=3.375*flip(z/2)^6, c4=5.0625*z^2
  l1=1000, l2=15000, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(c/8)+(-0.7456,-0.132)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: u-draw10.frm
}


u-draw10_10 {; Modified Sylvie Gallet frm. [101324,3444],1996
             ; Carr3128
             ; passes=1 needs to be used with this PHC formula.
             ; Add variable "newpixel". G. Martin 6/27/99
  newpixel=-abs(real(pixel+p1))+flip(imag(pixel+p1))
  z =conj(newpixel+p2)*abs(newpixel+p2)*tan(newpixel+p2)-conj(0.1/newpixel+p2)
  c =fn4(1/sinh(1/(b5*b5)))
      ; c=whitesq*(b4)-(whitesq==0)*b4
      ; z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(|z/2|), c2=2.25*conj(z/2)
  c3=3.375*flip(z/2)^6, c4=5.0625*z^2
  l1=1000, l2=15000, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=fn1(fn2(z)*fn3(z))+(c/8)+(-0.7456,-0.132)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: u-draw10.frm
}


u-draw11_00 {; Modified Sylvie Gallet frm. [101324,3444],1996, 
             ; Carr3024
  z=flip((fn1(pixel+p1)^2))-fn2(conj((pixel+p2)^7))\
      -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
    ; c=fn1(b4+p1)-fn2(b4+p1)
    ; z=fn3(b5+p2)-fn4(flip(b5+p2))^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
    ; z = sinh(z)
    ; z = real(z) * real(c) - imag(z) * imag(c) + flip(imag(z))
    ; z = real(z) + flip(real(z) * imag(c) - imag(z) * real(c)) + pixel
  z=z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: u-draw11.frm
}


u-draw11_01 {; Modified Sylvie Gallet frm. [101324,3444],1996,
             ; Carr3024
  z=flip((fn1(pixel+p1)^2))-fn2(conj((pixel+p2)^7))\
      -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
    ; c=fn1(b4+p1)-fn2(b4+p1)
    ; z=fn3(b5+p2)-fn4(flip(b5+p2))^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
     ; z = sinh(z)
  z = real(z) * real(c) - imag(z) * imag(c) + flip(imag(z))
  z = real(z) + flip(real(z) * imag(c) - imag(z) * real(c)) + pixel
     ; z=z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: u-draw11.frm
}


u-draw11_01v {; Modified Sylvie Gallet frm. [101324,3444],1996,
              ; Carr3024
  z=flip((fn1(pixel+p1)^2))-fn2(conj((pixel+p2)^7))\
     -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
     ; c=fn1(b4+p1)-fn2(b4+p1)
     ; z=fn3(b5+p2)-fn4(flip(b5+p2))^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=48, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
     ; z = sinh(z)
  z = real(z) * real(c) - imag(z) * imag(c) + flip(imag(z))
  z = real(z) + flip(real(z) * imag(c) - imag(z) * real(c)) + pixel
  z=z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: u-draw11.frm
}


u-draw11_02 {; Modified Sylvie Gallet frm. [101324,3444],1996, Carr3024
  z=flip((fn1(pixel+p1)^2))-fn2(conj((pixel+p2)^7))\
         -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
     ; c=fn1(b4+p1)-fn2(b4+p1)
     ; z=fn3(b5+p2)-fn4(flip(b5+p2))^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
     ; z = sinh(z)
     ; z = real(z) * real(c) - imag(z) * imag(c) + flip(imag(z))
     ; z = real(z) + flip(real(z) * imag(c) - imag(z) * real(c)) + pixel
  z=z*c+c+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: u-draw11.frm
}


u-draw11_03 {; Modified Sylvie Gallet frm. [101324,3444],1996, Carr3024
  z=flip((fn1(pixel+p1)^e))-fn2(conj((pixel+p2)^7))\
         -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
     ; c=fn1(b4+p1)-fn2(b4+p1)
     ; z=fn3(b5+p2)-fn4(flip(b5+p2))^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
     ; z = sinh(z)
     ; z = real(z) * real(c) - imag(z) * imag(c) + flip(imag(z))
     ; z = real(z) + flip(real(z) * imag(c) - imag(z) * real(c)) + pixel
  z=z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: u-draw11.frm
}


u-draw11_04 {; Modified Sylvie Gallet frm. [101324,3444],1996, Carr3024
  z=flip((fn1(pixel+p1)^e))-fn2(conj((pixel+p2)^e))\
        -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
     ; c=fn1(b4+p1)-fn2(b4+p1)
     ; z=fn3(b5+p2)-fn4(flip(b5+p2))^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
     ; z = sinh(z)
  z = real(z) * real(c) - imag(z) * imag(c) + flip(imag(z))
  z = real(z) + flip(real(z) * imag(c) - imag(z) * real(c)) + pixel
     ; z=z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: u-draw11.frm
}


u-draw11_05 {; Modified Sylvie Gallet frm. [101324,3444],1996, Carr3024
  z=flip((fn1(pixel+p1)^e))-fn2(conj((pixel+p2)^e))\
      -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
     ; c=fn1(b4+p1)-fn2(b4+p1)
     ; z=fn3(b5+p2)-fn4(flip(b5+p2))^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: u-draw11.frm
}


u-draw11_06 {; Modified Sylvie Gallet frm. [101324,3444],1996, Carr3024
             ; Add variable "newpixel". G. Martin 6/27/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=flip((fn1(newpixel+p1)^e))-fn2(conj((newpixel+p2)^e))\
      -conj(0.01/newpixel-flip(0.001/newpixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
     ; c=fn1(b4+p1)-fn2(b4+p1)
     ; z=fn3(b5+p2)-fn4(flip(b5+p2))^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter+1
  (z-newpixel)<=bailout
  ;SOURCE: u-draw11.frm
}


u-draw11_07 {; Modified Sylvie Gallet frm. [101324,3444],1996, Carr3024
             ; Add variable "newpixel". G. Martin 6/27/99
             ; Add variable "newpixel". G. Martin 6/27/99
  newpixel=-abs(real(pixel+p1))+flip(imag(pixel+p2))
  z=flip((fn1(newpixel)^e))-fn2(conj((newpixel)^e))\
      -conj(0.01/newpixel-flip(0.001/newpixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
     ; c=fn1(b4+p1)-fn2(b4+p1)
     ; z=fn3(b5+p2)-fn4(flip(b5+p2))^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter+1
  (z-newpixel)<=bailout
  ;SOURCE: u-draw11.frm
}


u-draw11_08 {; Modified Sylvie Gallet frm. [101324,3444],1996, Carr3024
             ; Add variable "newpixel". G. Martin 6/27/99
  newpixel=1/-abs(real(pixel+p1))+1/flip(imag(pixel+p2))
  z=flip((fn1(newpixel)^e))-fn2(conj((newpixel)^e))\
     -conj(0.01/newpixel-flip(0.001/newpixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
     ; c=fn1(b4+p1)-fn2(b4+p1)
     ; z=fn3(b5+p2)-fn4(flip(b5+p2))^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter+1
  (z-newpixel)<=bailout
  ;SOURCE: u-draw11.frm
}


u-draw11_09 {; Modified Sylvie Gallet frm. [101324,3444],1996, Carr3024
             ; Add variable "newpixel". G. Martin 6/27/99
  newpixel=1/-abs(real(pixel+p1))+1/flip(imag(pixel+p2))
  z=flip((fn1(newpixel)^e))-fn2(conj((newpixel)^e))\
     -conj(0.01/newpixel-flip(0.001/newpixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
     ; c=fn1(b4+p1)-fn2(b4+p1)
     ; z=fn3(b5+p2)-fn4(flip(b5+p2))^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z*c+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter+1
  (z-newpixel)<=bailout
  ;SOURCE: u-draw11.frm
}


u-draw12_00 {; Sylvie Gallet [101324,3444], 1996
  z=flip((fn1(pixel+p1)^2))-fn2(conj((pixel+p2)^7))
     -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
  c1 = 1.5*z, z2 = c2=2.25*z, z3 = c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  tt = 1 - (t1||t2||t3||t4)
  z = z * (tt)
  c = c * (tt) + c1*(t1) + c2*(t2) + c3*(t3) + c4*(t4)
  z = z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter = iter+1
  z-pixel<=16
  ;SOURCE: u-draw12.frm
}


u-draw12_01 {; Sylvie Gallet [101324,3444], 1996
  z=flip((fn1(1/pixel+p1)^pi))\
       -fn2(conj((pixel+p2)^e))-conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
  c1 = 1.5*z, z2 = c2=2.25*z, z3 = c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  tt = 1 - (t1||t2||t3||t4)
  z = z * (tt)
  c = c * (tt) + c1*(t1) + c2*(t2) + c3*(t3) + c4*(t4)
  z = z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter = iter+1
  z-pixel<=16
  ;SOURCE: u-draw12.frm
}


u-draw12_02 {; Sylvie Gallet [101324,3444], 1996
  z=flip((fn1(1/pixel+p1)^pi))\
     -fn2(conj((pixel+p2)^e))-conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
  c1 = 1.5*z, z2 = c2=2.25*z, z3 = c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  tt = 1 - (t1||t2||t3||t4)
  z = z * (tt)
  c = 1/c * (tt) + c1*(t1) + c2*(t2) + c3*(t3) + c4*(t4)
  z = z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter = iter+1
  |z|<=16
  ;SOURCE: u-draw12.frm
}


u-draw12_03 {; Modified Sylvie Gallet frm. [101324,3444],1996, Carr3024
  z=flip((fn1(pixel+p1)^e))-fn2(conj((pixel+p2)^pi))\
       -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
     ; z = sinh(z)
  z = real(z) * real(c) - imag(z) * imag(c) + flip(imag(z))
  z = real(z) + flip(real(z) * imag(c) - imag(z) * real(c)) + pixel
  z=z*c+c+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: u-draw12.frm
}


u-draw12_04 {; Sylvie Gallet [101324,3444], 1996
  z=flip((fn1(1/pixel+p1)^pi))\
     -fn2(conj((pixel+p2)^e))-conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
  c1 = 1.5*z, z2 = c2=2.25*z, z3 = c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  tt = 1 - (t1||t2||t3||t4)
  z = z * (tt)
  c = c * (tt) + c1*(t1) + c2*(t2) + c3*(t3) + c4*(t4)
  z = z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter = iter+1
  z-pixel<=16
  ;SOURCE: u-draw12.frm
}


u-draw12_05 {; Modified Sylvie Gallet frm. [101324,3444],1996, 
             ; Carr3024, u-draw4b_04, u-draw6_06
  b5=flip((pixel+p1)^pi)-cabs((pixel+p2)^e)\
       -conj(0.01/pixel-flip(0.001/pixel))-0.3
  b4=b5+(|0.1/b5|)
  c=fn1(b4)+fn2(b4)
  z=fn3(b5)+fn4(b5)^pi
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter*.01
  (z-pixel)<=bailout
  ;SOURCE: u-draw12.frm
}


u-draw12_06 {; Modified Sylvie Gallet frm. [101324,3444],1996, 
             ; Carr3024, u-draw4b_04, u-draw6_06
  z=flip((fn1(pixel+p1)^2))-fn2(conj((pixel+p2)^7))\
       -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
  c1=1.5/z, c2=2.25/z, c3=3.375/z, c4=5.0625/z, c5=6.25/z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z=z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter + 1
  (z-pixel)<=bailout
  ;SOURCE: u-draw12.frm
}


u-draw12_07 {; Modified Sylvie Gallet frm. [101324,3444],1996,
             ; Carr3024, u-draw4b_04, u-draw6_06
  z=flip((fn1(pixel+p1)^2))\
      -fn2(conj((pixel+p2)^7))-conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
  c1=1.5/z, c2=2.25/z, c3=3.375/z, c4=5.0625/z, c5=6.25/z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z=(z*z) * (z*z) + (-0.7496,-0.132)+flip(conj(c/10))
  iter=iter + 1
  (z-pixel)<=bailout
  ;SOURCE: u-draw12.frm
}


u-draw13_00 {; Modified Sylvie Gallet frm. [101324,3444],1996, 
             ; Carr3024, u-draw4b_04, u-draw6_06
  z=flip((fn1(real(pixel+p1))^e))-fn2(imag(pixel+p1)^pi)\
         -conj(0.01/real(pixel+p2)-flip(0.001/imag(pixel)))-0.3
  c=fn3(z)-fn4(|0.1/z|)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000
  bailout=64, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z = z * z + (-0.7496,-0.132)+flip(conj(c/10))
  iter=iter + 1
  (z-pixel)<=bailout
  ;SOURCE: u-draw13.frm
}


u-draw13_01 {; Modified Sylvie Gallet frm. [101324,3444],1996, 
             ; Carr3024, u-draw4b_04, u-draw6_06
  z=flip((fn1(real(pixel+p1))^e))-fn2(imag(pixel+p1)^7)\
       -conj(0.01/real(pixel+p2)-flip(0.001/imag(pixel)))-0.3
  c=fn3(z)-fn4(|0.1/z|)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000
  bailout=64, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z = z * z  + flip(conj(c/10)) + (-0.7496,-0.132)+flip(conj(c/10))
  iter=iter + 1
  (z-pixel)<=bailout
  ;SOURCE: u-draw13.frm
}


u-draw13_02 {; via terrora.frm                              
  z = fn1(fn2(fn3(fn4(pixel)))),  c = z ^ (z-1) :      
  z = sinh(z)
  z = real(z+p1) * real(c) - imag(z+p1) * imag(c) + flip(imag(z))
  z = real(z+p2) + flip(real(z) * imag(c+p2)\ 
       - imag(z) * real(c)) + pixel
  z = z * z + c
  |z| <= 100
  ;SOURCE: u-draw13.frm
}


u-draw13_03 {; via terrora.frm                            
  z = fn1(fn2(fn3(fn4(pixel)))), c = z ^ (z-1) :  
  z = sinh(z)
  z = real(z+p1) * real(c+p2) - imag(z+p1) * imag(c+p2) + flip(imag(z))
  z = real(z) + flip(real(z) * imag(c) - imag(z) * real(c)) + 1/pixel
  |z| <= 48
  ;SOURCE: u-draw13.frm
}


u-draw13_04 {; Modified Sylvie Gallet frm. [101324,3444],1996, 
             ; Carr3024, u-draw4b_04, u-draw6_06
  z=flip((fn1(pixel+p1)^2))-fn2(conj((pixel+p2)^7))\
       -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000
  bailout=64, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z = z^2.71828182845905*flip(conj(c/10))\
            +(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter + 1
  (z-pixel)<=bailout
  ;SOURCE: u-draw13.frm
}


u-draw14_00 {; via popcornjuliacomplex 
             ; by Jon Horner & Bradley Beacham - May 1995
  x = real(pixel), y = imag(pixel), c = pixel:
  a = x - fn1((y+p1) + fn2(3*y))/20
  b = y - .05*fn1((x+p2) + fn2(3*x))
  x = a, y = b
  z = fn3(x) + fn4(y)
  z = z*z +c
  |z| <= 16
  ;SOURCE: u-draw14.frm
}


u-draw14_01 {; via popcornjuliacomplex 
             ; by Jon Horner & Bradley Beacham - May 1995
  x = real(pixel+p1+p2), y = imag(pixel+p1+p2), c = pixel:
  a = x - fn1((y) + fn2(3*y))/20
  b = y - .05*fn1((x) + fn2(3*x))
  x = a, y = b
  z = fn3(x) + fn4(y)
     ; z = z*z +c
  |z| <= 16
  ;SOURCE: u-draw14.frm
}


u-draw14_02 { 
  z=flip((fn1(pixel+p1)^2))-fn2(conj((pixel+p2)^7))\
     -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
  c1 = 1.5*z,  c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0: 
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter = iter+1
  |z|<=16
  ;SOURCE: u-draw14.frm
}


u-draw14_03 { 
  z=(fn1(pixel+p1)^e)-fn2(conj((pixel+p2)^7))\
      -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
  c1 = 1.5*z,  c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter = iter+1
  |z|<=16
  ;SOURCE: u-draw14.frm
}


u-draw14_04 { 
  z=(fn1(1/pixel+p1)^e)-fn2(conj((1/pixel+p2)^7))\
      -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
  c1 = 1.5*z,  c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter = iter+1
  |z|<=16
  ;SOURCE: u-draw14.frm
}


u-draw14_05 { 
  z=(fn1(pixel+p1)^e)-fn2(conj((pixel+p2)^7))\
     -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
    ;z = z * z + c
  z = z*z+(-0.7496,-0.132)+flip(conj(c/10))
  z = z*z+(-0.7496,-0.132)+flip(conj(c/10))
  c = z + c/2
  iter = iter+1
  |z|<=16
  ;SOURCE: u-draw14.frm
}


u-draw14_06 { 
  z=(fn1(pixel+p1)^e)-fn2(conj((pixel+p2)^7))\
     -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
     ; z = z * z + c
     ; z = z*z+(-0.7496,-0.132)+flip(conj(c/10))
  z = z*z+(-0.7496,-0.132)+flip(conj(c/10))
     ; c = z + c/2
  iter = iter+1
  |z|<=16
  ;SOURCE: u-draw14.frm
}


u-draw14_07 { 
  z=(fn1(pixel+p1)^e)-fn2(conj((pixel+p2)^7))\
      -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = z * z + c
     ; z = z*z+(-0.7496,-0.132)+flip(conj(c/10))
     ; z = z*z+(-0.7496,-0.132)+flip(conj(c/10))
  c = z + c/2
  iter = iter+1
  |z|<=16
  ;SOURCE: u-draw14.frm
}


u-draw14_08 { 
  z=(fn1(pixel+p1)^e)-fn2(conj((pixel+p2)^7))\
     -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
       ; z = z * z + c
  z = z*z+(-0.7496,-0.132)+flip(conj(c/10))
  c = z * c
  iter = iter+1
  |z|<=16
  ;SOURCE: u-draw14.frm
}


u-draw14_09 {; Modified Sylvie Gallet frm. [101324,3444],1996, carr3184
             ; Add variable "newpixel". G. Martin 6/27/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b3=(((exp(0.0025/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b4=(abs(newpixel+p1)^5/(cosxx(0.1-0.1/newpixel)))-b3
  b5=conj(newpixel+p2)*newpixel^2-conj(conj(0.10/newpixel))^(-3*newpixel)\
      -flip(flip(0.010/newpixel))+0.3
  c=fn1(b4)-fn2(b4)
  z=fn3(b5)-fn4(b5)
     ; c1=p3
     ; z1=512*z-p2
  iter=0, limit=256, bailout=16:
  test=(iter==limit)
  z=z*(1-test);+z1*test
  c=c*(1-test);+c1*test
  z=z*z+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: u-draw14.frm
}


u-draw14_10 {; Gallet-8-12: Sylvie Gallet, sylvie_gallet@compuserve.com
             ;  Mar 1997
             ; Requires periodicity = 0
             ; p2: real part = radius
             ;     imag part = refraction index
  h = cabs(pixel), pinv = 1/p1
     ; bailout = 2*p1
  r = real(p2), ir = imag(p2)
  IF (h >= r)
    z = pixel
  ELSE
    beta = asin(h/r), alpha = asin(h/(r*ir))
    z = (h - sqrt(r*r - h*h) * tan(beta - alpha)) * pixel / h
  ENDIF
  center = round(p1*z) * pinv
  IF (cabs(z-center) < 0.45*pinv)
    z = fn1(cabs(center))
  ELSE
    z = fn2(cabs(center)) + p1
  ENDIF
  :
  z = z + pinv
  |z| <= 16
  ;SOURCE: u-draw14.frm
}


u-draw15_00 { 
  z=(fn1(pixel+p1)^e)-fn2(conj((pixel+p2)^7)\
      -conj(0.01/pixel-flip(0.001/pixel))-0.3)
  c=fn3(fn4(z)-(|0.1/z|))
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = z * z +(-0.7496,-0.132)+flip(conj(c/10))
  c = z * c
  iter = iter+1
  |z|<=16
  ;SOURCE: u-draw15.frm
}


u-draw15_01 { 
  z=(fn1(real(pixel+p1)^e))-fn2(conj(imag(pixel+p1)^7)\
      -conj(0.01/pixel-flip(0.001/pixel))-0.3)
  c=fn3(fn4(z+p2))^(z-1)
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = z * z  + (-0.763,-0.1546)+flip(conj(c/10))
  c = z * flip(real(z)) - imag(c)
  iter = iter+1
  |z|<=16
  ;SOURCE: u-draw15.frm
}


u-draw15_02 {  
  z=(fn1(real(pixel+p1)^e))-fn2(conj(imag(pixel+p1)^7)\
       -conj(0.01/pixel-flip(0.001/pixel))-0.3)
  c=fn3(fn4(z+p2))^(z-1)
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = z * z  + (-0.763,-0.1546)+flip(conj(c/10))
  c = z * flip(real(c)) - imag(c)
  iter = iter+1
  |z|<=64
  ;SOURCE: u-draw15.frm
}


u-draw15_03 { 
  z=(fn1(pixel+p1)^e)-fn2(conj((pixel+p2)^7)\
     -conj(0.01/pixel-flip(0.001/pixel))-0.3)
  c=fn3(fn4(z)-(|0.1/z|))
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = z * z +(-0.7496,-0.132)+flip(conj(c/10))
  c = z * c/pixel
  iter = iter+1
  |z|<=16
  ;SOURCE: u-draw15.frm
}


u-draw15_04 { 
  z=(fn1(pixel+p1)^e)-fn2(conj((pixel+p2)^7)\
     -conj(0.01/pixel-flip(0.001/pixel))-0.3)
  c=fn3(fn4(z)-(|0.1/z|))
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = z * z +(-0.75,-0.15)+flip(conj(c/10))
  c = z * c/pixel
  iter = iter+1
  (z-pixel)<=16
  ;SOURCE: u-draw15.frm
}


u-draw15_05 { 
  z=fn1(pixel+p1)^e-fn2(conj(pixel+p2)^e)
  c=fn3(fn4(z)-(|0.1/z|))
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = z * z +(-0.75,-0.15)+flip(conj(c/10))
  c = z * c/pixel
  iter = iter+1
  (z-pixel)<=16
  ;SOURCE: u-draw15.frm
}


u-draw15_06 { 
  z=fn1(fn2(pixel+p1)^e)-fn3(fn4(conj(pixel+p2)^e))
  c=z-(|0.1/z|) 
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = z * z +(-0.75,-0.15)+flip(conj(c/10))
  c = z * c/pixel
  iter = iter+1
  (z-pixel)<=96
  ;SOURCE: u-draw15.frm
}


u-draw15_07 { 
  z=fn1(pixel+p1)^e-fn2(conj(pixel+p2)^e)
  c=fn3(fn4(z)-(|0.1/z|))
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = z * c +(-0.75,-0.15)+flip(conj(c/10))
  c = z * c/pixel
  iter = iter+1
  (z-pixel)<=16
  ;SOURCE: u-draw15.frm
}


u-draw16_00 {
  z=fn1(fn2(pixel+p1)^e)-fn3(fn4(conj(pixel+p2)^e)) 
  c=z-(|0.1/z|) 
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = z * z + (-0.75,-0.15)+flip(conj(c/10))
  c = real(z) * flip(imag(c/pixel)) - imag(z)
  iter = iter+1
  (z-pixel)<=16
  ;SOURCE: u-draw16.frm
}


u-draw16_01 { 
  z=fn1(fn2(pixel+p1)^e)-fn3(fn4(conj(pixel+p2)^e)) 
  c=z-(|0.1/z|) 
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
      ; z = z * z + (-0.75,-0.15) + flip(conj(c/10))
  z = z^e + c
  c = imag(z) * flip(real(c/pixel)) * imag(z) - real(c)
  iter = iter+1
  (z-pixel)<=16
  ;SOURCE: u-draw16.frm
}


u-draw16_02 { 
  z=fn1(fn2(pixel+p1)^e)-fn3(fn4(conj(pixel+p2)^e)) 
  c=z-(|0.1/z|) 
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
       ; z = z * z + (-0.75,-0.15) + flip(conj(c/10))
       ; z = z^e + c
  z=(((z^p1)*(z+p2))^p3)^(-p3)+c
  |z|<=100
  ;SOURCE: u-draw16.frm
}


u-draw16_03 { 
  z=fn1(pixel+p1)^e-fn2(conj(pixel+p2)^e)
  c=fn3(fn4(z)-(|0.1/z|))
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = z * z  +(-0.75,-0.15)+flip(conj(c/10))
  c = (z-1) * c/pixel
  iter = iter+1
  (z-pixel)<=16
  ;SOURCE: u-draw16.frm
}


u-draw16_04 {
  z=fn1(imag(pixel)+p1)^e - fn2(real(pixel)+p2)^e
  c=fn3(fn4(z)-(|0.1/z|))
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = z * z  +(-0.75,-0.15)+flip(conj(c/10))
  c = (z-1) * c/pixel
  iter = iter+1
  (z-pixel)<=16
  ;SOURCE: u-draw16.frm
}


u-draw16_05 {
  z=fn1(imag(pixel))^e - fn2(real(pixel)+p2)^e
  c=fn3(fn4(z)-(|0.1/z|))
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = z * z * z^p1 + c
  c = z * c/pixel
  iter = iter+1
  (z-pixel)<=16
  ;SOURCE: u-draw16.frm
}


u-draw16_06 { 
  z=fn1(real(fn2(flip(pixel)+p1)^5))-fn3(fn4(imag(pixel+p2))^pi) 
  c=z^(z-1) 
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = real(z) * real(c) - imag(z) * imag(c) + flip(imag(z))
  z = real(z) + flip(real(z) * imag(c) - imag(z) * real(c)) + 1/pixel
  z = z * z + (-0.75,-0.15)+flip(conj(c/10))
      ; z = real(z) * flip(imag(c/pixel)) 
  iter = iter+1
  (z-pixel)<=96
  ;SOURCE: u-draw16.frm
}


u-draw16_07 {; Add variable "newpixel". G. Martin 6/27/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=fn1(newpixel+p1)*fn2(exp(newpixel+p2))
  c=fn3(newpixel)*fn4(abs(newpixel))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t =1-(t1||t2||t3||t4||t5)
  z=z*t-(0.08/c)
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z=z*z+c
  iter=iter+1
  |z| <= 96
  ;SOURCE: u-draw16.frm
}


u-draw16_08 { 
  z=fn1(fn2(pixel+p1)^2)-fn3(fn4(conj(pixel+p2)^5)) 
  c=z^(z-1) 
  c1 = 1.5*z,  c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = z * z  +(-0.75,-0.15)+flip(conj(c/10))
  c = z * c/pixel
  iter = iter+1
  (z-pixel)<=16
  ;SOURCE: u-draw16.frm
}


u-draw16_09 { 
  z=(fn1(pixel+p1)^e)-conj((pixel+p2)^7)\
      -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn2(z)-(|0.1/z|)
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = fn3(z) * z + flip(conj(c/10))
  c = fn4(z) * c/pixel
  iter = iter+1
  |z|<=16
  ;SOURCE: u-draw16.frm
}


u-draw16_10 { 
  z=(fn1(pixel+p1)^e)-conj((pixel+p2)^7)\
      -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn2(z)-(|0.1/z|)
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = fn3(z) * z  + (-0.75,-0.15) + flip(conj(c/10))
  c = fn4(z) * c/pixel
  iter = iter+1
      ; imag(flip(z-pixel))<=16
  |z|<=64
  ;SOURCE: u-draw16.frm
}


u-draw16_11 {
  z = pixel 
  x=fn1(real(z))
  y=fn2(imag(z))
  one1 = (x*x+p1) + (y*y+p2):
  x = (2 - one1) * y 
  y = (2 - one1) * x
  z = fn3(x) + flip(fn4(y))
  |z|<=64
  ;SOURCE: u-draw16.frm
}


u-draw17_00 {  
  z=(fn1(pixel+p1)^e)-conj((pixel+p2)^7)\
      -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn2(z)-(|0.1/z|)
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = fn3(z) * z + flip(conj(c/10))
  c = fn4(z) * c/pixel
  iter = iter+1
  |z|<=16
  ;SOURCE: u-draw17.frm
}


u-draw18_00 {
  z = pixel 
  c= z^(z-1)
  x=fn1(real(z+p1*p2))
  y=fn2(imag(z+p2*p1))
  one1 = (x*x) + (y*y):
  x = (2 - one1) * y 
  y = (2 - one1) * x
  z = fn3(x) + flip(fn4(y)) + c
  z = z * z + c
  |z|<=64
  ;SOURCE: u-draw18.frm
}


u-draw18_00a { 
  z = pixel 
  c= z^(z-1)
  x=fn1(real(z+p1*p2))
  y=fn2(imag(z+p2*p1)):
  one1 = (x*x) + (y*y)
  x = (2 - one1) * y 
  y = (2 - one1) * x
  z = fn3(x) + flip(fn4(y)) 
  z = z * z + c
  |z|<=64
  ;SOURCE: u-draw18.frm
}


u-draw18_01 {; Sylvie Gallet, Bob Carr
  z=fn1(fn2(pixel+p1)^e)-fn3(conj(pixel+p2)^7) 
  c=fn4(z)-(|0.1/z|) 
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = z * z + (-0.75,-0.15) + flip(conj(c/10))
  c = z * c/pixel
  iter = iter+1
  |z|<=16
  ;SOURCE: u-draw18.frm
}


u-draw18_02 {; Sylvie Gallet, Bob Carr
  z=fn1(fn2(pixel+p1)^e)-conj(fn3(pixel+p2)^7)\
      -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn4(z)-(|0.1/z|)
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = sqrt(z) * z + flip(conj(c/10))
  c = log(z) * c/pixel
  iter = iter+1
  |z|<=16
  ;SOURCE: u-draw18.frm
}


u-draw18_03 {; A "many-man" variation by P. DiGiorgi
             ; Original formula by Stephen C. Ferguson
             ; adapted for Fractint by Les St Clair, 1997
  z = c = pixel
  r = fn1(real(.01+p1*10)) + fn2(imag(.01+p2*10))
  v = fn3(.05*fn4(c^r)/r):
  a = z*z
  z = a + v
  (|real(z)| <= 16)||(|imag(z)| <= 16)
  ;SOURCE: u-draw18.frm
}


u-draw18_04 {; Sylvie Gallet, Bob Carr
  z=fn1(fn2(sinh(pixel+p1))^e)-fn3(pixel+p2)^7 
  c=fn4(z)-(|0.1/z|) 
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = z * z + (-0.75,-0.15) + flip(conj(c/10))
  c = z * c/pixel
  iter = iter+1
  |z|<=16
  ;SOURCE: u-draw18.frm
}


u-draw18_05 {; Sylvie Gallet, Bob Carr
  z=fn1(fn2(pixel+p1)^e)-conj(fn3(pixel+p2)^7)\
       -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn4(z)-(|0.1/z|)
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = sqrt(z) * z + flip(conj(c/10))
  c = log(z) * c/pixel
  iter = iter+1
  |z|<=16
  ;SOURCE: u-draw18.frm
}


u-draw18_06 {; Sylvie Gallet, Bob Carr
  z=fn1(sinh(pixel+p1)^e)-conj(sinh(pixel+p2)^7)\
      -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn2(z)-(|0.1/z|)
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = fn3(z) * z + flip(conj(c/10))
  c = fn4(z) * c/pixel
  iter = iter+1
  |z|<=16
  ;SOURCE: u-draw18.frm
}


u-draw18_07 {; Sylvie Gallet, Bob Carr
  z=fn1(fn2(sinh(fn3(pixel+p1))^e))-conj(sinh(pixel+p2)^7)\
       -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn4(z)-(|0.1/z|)
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = sqr(z) * z + flip(conj(c/10))
  c = log(z) * c/pixel
  iter = iter+1
  |z|<=16
  ;SOURCE: u-draw18.frm
}


u-draw19_00 {; via formulas by Sylvie Gallet as modified by Bob Carr
  z=fn1(fn2(sinh(fn3(pixel+p1))^e))\
      -conj(sinh(pixel+p2)^7)-conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn4(z)-(|0.1/z|)
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = sqr(z) * z + flip(conj(c/10))
  c = log(z) * c/pixel
  iter = iter+1
  |z|<=16
  ;SOURCE: u-draw19.frm
}


u-draw20_00 {; credits Sylvie Gallet and Bob Carr
  z=fn1(fn2(tan(fn3(pixel+p1))^e))-conj(tan(pixel+p2)^7)\
      -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn4(z)-(|0.1/z|)
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = sqr(z) * z + flip(conj(c/10))
  c = log(z) * c/pixel
  iter = iter+1
  |z|<=16
  ;SOURCE: u-draw20.frm
}


u-draw20_01 {; credits Sylvie Gallet and Bob Carr
  z=fn1(fn2(sinh(pixel+p1))^pi)-fn3(pixel+p2)^5 
  c=fn4(z)-(|0.1/z|) 
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = z * z + (-0.75,-0.15) + flip(conj(c/10))
  c = z * c/pixel
  iter = iter+1
  |z|<=16
  ;SOURCE: u-draw20.frm
}


u-draw20_02 {; credits Sylvie Gallet and Bob Carr
  z=fn1(fn2(sin(fn3(pixel+p1))^e))-sinh(tan(pixel+p2)^7)\
      -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn4(z)-(|0.1/z|)
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = sqrt(z) * z + flip(conj(c/10))
  c = log(z) * c/pixel
  iter = iter+1
  |z|<=16
  ;SOURCE: u-draw20.frm
}


u-draw20_03 {
  z = pixel
  x=fn1(real(sinh(z+p1*p2)))
  y=fn2(imag(sqrt(z+p2*p1)))
  one1 = (x*x) + (y*y):
  x = (2 - one1) * y 
  y = (2 - one1) * x
  z = fn3(1/x) + flip(fn4(1/y)) 
  |z|<=64
  ;SOURCE: u-draw20.frm
}


u-draw20_04 {; credits Sylvie Gallet and Bob Carr
  z=fn1(fn2(sinh(pixel+p1))^e)-fn3(pixel+p2)^9
  c=fn4(z)-(|0.1/z|) 
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = z * z + (-0.75,-0.15) + flip(conj(c/10))
  c = z * c/pixel
  iter = iter+1
  |z|<=16
  ;SOURCE: u-draw20.frm
}


u-draw20_05 {; credits Sylvie Gallet and Bob Carr
  b5=flip((pixel+p1)^2)-cabs((pixel+p2)^7)\
      -conj(0.01/pixel-flip(0.001/pixel))-0.3
  b4=b5-(|0.1/b5|)
  c=fn1(b4)-fn2(b4)
  z=fn3(b5)-fn4(flip(b5))^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t = 1 - (t1||t2||t3||t4||t5)
  z = z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z = z * z + (-0.75, -0.15) + flip(conj(c/10))
  c= z * c/pixel
  iter=iter+1
  (z-pixel)<=16
  ;SOURCE: u-draw20.frm
}


u-draw21_00 {; Don Archer
             ; derived from formulas by Sylvie Gallet and Bob Carr
  z=fn1(fn2(cotan(fn3(pixel+p1))^e))\
      -conj(sinh(pixel+p2)^7)-conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn4(z)-(|0.1/z|)
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = sqr(z) * z + flip(conj(c/10))
  c = log(z) * c/pixel
  iter = iter+1
  |z|<=16
  ;SOURCE: u-draw21.frm
}


u-draw21_01 {; Don Archer
             ; derived from formulas by Sylvie Gallet and Bob Carr
  z=fn1(fn2(sinh(pixel+p1))^e)-fn3(pixel+p2)^pi 
  c=fn4(z)-(|0.1/z|) 
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = z * z + (-0.75,-0.15) + flip(conj(c/10))
  c = z * c/pixel
  iter = iter+1
  |z|<=16
  ;SOURCE: u-draw21.frm
}


u-draw21_02 {; Don Archer 
             ; derived from formulas by Sylvie Gallet and Bob Carr
  z=flip(fn1(pixel+p1)^2)-cabs(fn2(pixel+p2)^7)\
      -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn3(z)-fn4(pixel)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t = 1 - (t1||t2||t3||t4||t5) 
  z = z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z = z * z + (-0.75, -0.15) + flip(conj(c/10))
  c = z * c/pixel
  iter=iter+1
  (z-pixel)<=16
  ;SOURCE: u-draw21.frm
}


u-draw21_03 {; Don Archer '97 
             ;  derived from formulas by Sylvie Gallet and Bob Carr
             ; Add variable "newpixel". G. Martin 6/27/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z = cabs(fn3((newpixel+p1)^4))-fn4(newpixel^7)
  c = flip(fn3(newpixel+p2)^3)-cabs(fn4(newpixel))^6
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t = 1 - (t1||t2||t3||t4||t5) 
  z = z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z = z * z + (-.75, -.15) + flip(conj(c/10))
  c = z * c/newpixel
  iter=iter+1
  (z-newpixel)<=16
  ;SOURCE: u-draw21.frm
}


u-draw21_04 {; Don Archer '97 
             ; derived from formulas by Sylvie Gallet and Bob Carr
  z = cabs(fn3((pixel+p1)^4))-fn4(pixel^7)
  c = flip(fn3(pixel+p2)^3)-cabs(fn4(pixel))^6
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t = 1 - (t1||t2||t3||t4||t5) 
  z= z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z=sinh(z)
  z= z * z + flip(conj(c/10))
  c= z * c/pixel
  iter=iter+1
  (z-pixel)<=16
  ;SOURCE: u-draw21.frm
}


u-draw21_05 {; Don Archer '97 
             ; derived from formulas by Sylvie Gallet and Bob Carr
  z = cabs(fn3((pixel+p1)^4))-fn4(pixel^7)
  c = flip(fn3(pixel+p2)^3)-cabs(fn4(pixel))^6
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t = 1 - (t1||t2||t3||t4||t5) 
  z = z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z= tanh(z)
  z= z * z + flip(conj(c/10)) 
  c= z * c/pixel
  iter=iter+1
  (z-pixel)<=16
  ;SOURCE: u-draw21.frm
}


u-draw21_06 {; Don Archer '97 
             ; derived from formulas by Sylvie Gallet and Bob Carr
  z=fn1(fn2(cotan(fn3(pixel+p1))^e))\
      -conj(sinh(pixel+p2)^7)-conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn4(z)-(|0.1/z|)
  c1 = 1.5*z, c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = sqrt(z) * z + flip(conj(c/10))
  c = log(z) * c/pixel
  iter = iter+1
  |z|<=16
  ;SOURCE: u-draw21.frm
}


u-draw22_00 {; Don Archer '97 
             ; ideas Sylvie Gallet, Bob Carr, Tim Wegner
  z=fn1(fn2(pixel+p1)^e)-conj(fn3(pixel+p2)^7)-conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=z^(z-1)-fn4(|0.1/z|)
  c1 = 1.5*z,  c2=2.25*z, c3=3.375*z, c4 =5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000,  iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  tt = 1 - (t1||t2||t3||t4||t5)
  z = z * tt
  c = c * tt + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5
  z = real(z) * real(c) - imag(z) * imag(c) + flip(imag(z))
  z = real(z) + flip(real(z) * imag(c) - imag(z) * real(c)) + pixel
     ; z=z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter+1
  (z-pixel)<=16
  ;SOURCE: u-draw22.frm
}


u-draw22_01 {; Don Archer '97 
             ; ideas Sylvie Gallet, Bob Carr
  z=flip((fn1(pixel+p1)^2))-fn2(conj((pixel+p2)^7))\
       -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
  c1=1.5*1/z, c2=2.25*1/z, c3=3.375*1/z, c4=5.0625*1/z, c5=6.25*1/z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z=z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter + 1
  (z-pixel)<=16
  ;SOURCE: u-draw22.frm
}


u-draw22_02 {; Don Archer '97 
             ; ideas Sylvie Gallet, Bob Carr
  z=flip((fn1(pixel+p1)^2))-fn2(conj((pixel+p2)^7))\
         -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn3(imag(z))-fn4(real(|0.1/z|))
  c1=1.5*1/z, c2=2.25*1/z, c3=3.375*1/z, c4=5.0625*1/z, c5=6.25*1/z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z = z * z + (-0.7496,-0.132) + flip(conj(c/10))
  iter=iter + 1
  (z-pixel)<=16
  ;SOURCE: u-draw22.frm
}


u-draw23_00 {; Don Archer '97 
             ; ideas Sylvie Gallet, Bob Carr
  z=flip((fn1(pixel+p1)^e))-fn2(conj((pixel+p2)^(e*e*e)))\
         -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
  c1=1.5*1/z, c2=2.25*1/z, c3=3.375*1/z, c4=5.0625*1/z, c5=6.25*1/z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z=z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter + 1
  (z-pixel)<=16
  ;SOURCE: u-draw23.frm
}


u-draw23_01 {; Don Archer '97 
             ; ideas Sylvie Gallet, Bob Carr
  z=flip((fn1(pixel+p1)^e))-fn2(conj((pixel+p2)^(e*e*e)))\
       -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn3(imag(z))-fn4(real(|0.1/z|))
  c1=1.5*1/z, c2=2.25*1/z, c3=3.375*1/z, c4=5.0625*1/z, c5=6.25*1/z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z = z * z + (-0.7496,-0.132) + flip(conj(c/10))
  iter=iter + 1
  (z-pixel)<=16
  ;SOURCE: u-draw23.frm
}


u-draw23_02 {; Don Archer '97 
             ; var. Tim's Error via Chuck Ebbert's builtin.frm
  z = c = pixel :
  z = real(fn1(z + p1)) * real(c)\ 
        - imag(fn2(z + p1)) * imag(c) + flip(imag(z))
  z = fn3(real(z + p2))\ 
        + flip(real(z) * imag(fn4(c + p2)) - imag(z) * real(c)) + pixel
  |z| <= 16
  ;SOURCE: u-draw23.frm
}


u-draw24_00 {; Don Archer '97 
             ; ideas Sylvie Gallet, Bob Carr
  z=flip((fn1(pixel+p1)^e))-fn2(conj((pixel+p2)^(e*e*e)))
  c=fn3(z)-fn4(|0.1/z|)
  c1=1.5*1/z, c2=2.25*1/z, c3=3.375*1/z, c4=5.0625*1/z, c5=6.25*1/z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z=z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter + 1
  (z-pixel)<=16
  ;SOURCE: u-draw24.frm
}


u-draw24_01 {; Don Archer '97 
             ; ideas Sylvie Gallet, Bob Carr
  z=flip((fn1(pixel+pi)^e+p1))-fn2(conj((pixel+pi)^(e*e*e+p2)))
  c=fn3(z)-fn4(|0.1/z|)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z = z * z + (-0.7496,-0.132) + flip(conj(c/10))
  iter=iter + 1
  (z-pixel)<=16
  ;SOURCE: u-draw24.frm
}


u-draw24_02 {; Don Archer '97
  z=flip((fn1(pixel+p1)^e))-fn2(conj((pixel+p2)^(e*e*e)))
  c=fn3(z)-fn4(|0.1/z|)
  c1= 1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z=z*z/pixel + (-0.7496,-0.132) + flip(conj(c/10))
  iter=iter + 1
  (z-pixel)<=16
  ;SOURCE: u-draw24.frm
}


u-draw24_03 {; Don Archer '97
  z=1/(flip((fn1(pixel+p1)^e))-fn2(conj((pixel+p2)^(e*e*e))))
  c=fn3(z)-fn4(|0.1/z|)
  c1= 1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z = z*z + (-0.7496,-0.132) + flip(conj(c/10))
  iter=iter + 1
  (z-pixel)<=16
  ;SOURCE: u-draw24.frm
}


u-draw25_00 {; Don Archer '97 -- ideas Sylvie Gallet, Bob Carr
  b5=cabs(0.33-cos(pixel+p1))/(0.33-tan(3*pixel))-0.4
  b4=conj(pixel+p2)*(pixel-flip(0.001/pixel))*(pixel-conj(0.01/pixel))
  c=fn1(b4)-fn2(conj(b4))
  z=fn3(b5)-fn4(sqr(b5))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=6.75*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5) 
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z=(c^4)^(real(1)-(1,0))*(0.01+z^2)+(c/6)+(-0.6856,-0.132)
  iter=iter+1
  z<=bailout
  ;SOURCE: u-draw25.frm
}


u-draw25_01 {; Don Archer '97 -- ideas Sylvie Gallet, Bob Carr
  z=flip((fn1(pixel+p1)^1/e))-fn2(conj((pixel+p2)^(e*e*e)))
  c=fn3(z)-fn4(|0.1/z|)
  c1=1.5*1/z, c2=2.25*1/z, c3=3.375*1/z, c4=5.0625*1/z, c5=6.25*1/z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z=z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter + 1
  (z-pixel)<=16
  ;SOURCE: u-draw25.frm
}


u-draw26_00 {; Don Archer '97 -- ideas Sylvie Gallet, Bob Carr
  z=flip((fn1(pixel*pi+p1)^e))-fn2(conj((pixel*e+p2)^(7)))
  c=fn3(z)-fn4(|0.1/z|)
  c1=1.5*1/z, c2=2.25*1/z, c3=3.375*1/z, c4=5.0625*1/z, c5=6.25*1/z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  iter = iter + 1
  z = z * z + (-0.75, -0.15) + c
  |z| <= 16
  ;SOURCE: u-draw26.frm
}


u-draw26_01 {; Don Archer '97 -- ideas Sylvie Gallet, Bob Carr
  z=flip((fn1(pixel*pi+p1)^e))-fn2(conj((pixel*e+p2)^(7)))
  c=fn3(z)-fn4(|0.1/z|)
  c1=1.5*1/z, c2=2.25*1/z, c3=3.375*1/z, c4=5.0625*1/z, c5=6.25*1/z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z = z * z + (-0.7496,-0.132) + c            ; flip(conj(c/10))
  iter=iter + 1
  (z-pixel)<=16
  ;SOURCE: u-draw26.frm
}


u-draw26_02 {; Don Archer '97 
             ; ideas Sylvie Gallet, Bob Carr
  z=flip((fn1(pixel+e+p1)^e))-fn2(conj((pixel*pi+p2)^(7)))
  c=fn3(z)-fn4(|0.1/z|)
  c1=1.5*1/z, c2=2.25*1/z, c3=3.375*1/z, c4=5.0625*1/z, c5=6.25*1/z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z = z * z + (-0.7496,-0.132) + c 
  iter=iter + 1
  (z-pixel)<=16
  ;SOURCE: u-draw26.frm
}


u-draw26_03 {; Don Archer '97 -- ideas Sylvie Gallet, Bob Carr
  z=fn1(cabs(0.33-fn2(cos(pixel+p1))))/(0.33-tan(3*pixel+p2))
  c = fn3(z) - fn4(|0.1/z|)
  c1=1.5*1/z, c2=2.25*1/z, c3=3.375*1/z, c4=5.0625*1/z, c5=6.25*1/z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  iter = iter + 1
  z = z * z + (-0.75, -0.15) + flip(conj(c/10))
  (z-pixel)<=16
  ;SOURCE: u-draw26.frm
}


u-draw26_04 {; Don Archer '97 -- ideas Sylvie Gallet, Bob Carr
  z=flip((fn1(pixel+pi*pi )^e+p1))-fn2(conj((pixel+e*e)^(pi*pi+p2)))
  c=fn3(z)-fn4(conj(|0.1/z|))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z = z * z + (-0.7496,-0.132) + flip(conj(c/10))
  iter=iter + 1
  (z-pixel)<=16
  ;SOURCE: u-draw26.frm
}


u-draw26_05 {; Don Archer '97 -- ideas Sylvie Gallet, Bob Carr
  z=flip(imag(fn1(real(pixel+pi)*pi )^e+p1))\
      -fn2(conj((pixel+e*e)^(pi*pi+p2)))
  c=fn3(z^(z-1))-fn4(|0.1/z|)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z = imag(z) * flip(real(z) + flip(c))  +  c
  iter=iter + 1
  (z-pixel)<=16
  ;SOURCE: u-draw26.frm
}


u-draw27_00 {; Don Archer '97 -- ideas Sylvie Gallet, Bob Carr
  z=flip(imag(fn1(real(pixel+pi)*pi )^e+p1))\
      -fn2(conj((pixel+e*e)^(pi*pi+p2)))
  c=fn3(z^(z-1))-fn4(|0.1/z|)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z = real(z) * flip(imag(z) + flip(c))  +  c
  iter=iter + 1
  (z-pixel)<=16
  ;SOURCE: u-draw27.frm
}


u-draw27_01 {; Don Archer '97 -- ideas Sylvie Gallet, Bob Carr
  z=fn1(sinh(0.33-fn2(tanh(pixel+p1))))/(0.33-tan(3*pixel+p2))
  c=fn3(z) - fn4(|0.1/z|)
  c1=1.5*1/z, c2=2.25*1/z, c3=3.375*1/z, c4=5.0625*1/z, c5=6.25*1/z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  iter = iter + 1
  z = z * z + (-0.75, -0.15) + flip(conj(c/10))
  (z-pixel)<=16
  ;SOURCE: u-draw27.frm
}


u-draw27_02 {; Don Archer '97 -- ideas Sylvie Gallet, Bob Carr
  z=conj((fn1(pixel+pi*pi )^e+p1))-fn2(sin((pixel+e*e)^(pi*pi+p2)))
  c=fn3(z)-fn4(|0.1/z|)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z = z * z + (-0.7496,-0.132) + flip(conj(c/10))
  iter=iter + 1
  (z-pixel)<=16
  ;SOURCE: u-draw27.frm
}


u-draw28_00 {; Don Archer '97 -- ideas Sylvie Gallet, Bob Carr
  z=flip(imag(fn1(real(pixel+pi)*pi )^e+p1))\
     -fn2(conj((pixel+e*e)^(pi*pi+p2)))
  c=fn3(z^(z-1))-fn4(|0.1/z|)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
      ; z= real(z) * flip(imag(z) + flip(c))  +  c
  z = real(z) * real(c) - imag(z) * imag(c) + flip(imag(z))
  z = real(z) + flip(real(z) * imag(c) - imag(z) * real(c)) + pixel
  iter=iter + 1
  (z-pixel)<=48
  ;SOURCE: u-draw28.frm
}


u-draw28_01 {; Don Archer '97 
             ; ideas Tim Wegner, Sylvie Gallet, Bob Carr
  z=fn1(sinh(0.33-fn2(tanh(pixel+p1))))/(0.33-tan(3*pixel+p2))
  c=fn3(z) - fn4(|0.1/z|)
  c1=1.5*1/z, c2=2.25*1/z, c3=3.375*1/z, c4=5.0625*1/z, c5=6.25*1/z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z = real(z) * real(c) - imag(z) * imag(c) + flip(imag(z))
  z = real(z) + flip(real(z) * imag(c) - imag(z) * real(c)) + pixel
  iter = iter + 1
     ; |z|<=100
  (z-pixel)<=100
  ;SOURCE: u-draw28.frm
}


u-draw28_02 {; Don Archer '97 
             ; ideas Tim Wegner, Sylvie Gallet, Bob Carr
  z=fn1(sinh(0.33-fn2(tanh(pixel+p1))))/(0.33-tan(3*pixel+p2))
  c = fn3(z) - fn4(|0.1/z|)
  c1=1.5*1/z, c2=2.25*1/z, c3=3.375*1/z, c4=5.0625*1/z, c5=6.25*1/z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z = real(z) * real(c) - imag(z) * imag(c) + flip(imag(z))
  z = real(z) + flip(real(z) * imag(c) - imag(z) * real(c)) + pixel
  z = z * z + c
  iter = iter + 1
  |z|<=100
  ;SOURCE: u-draw28.frm
}


u-draw28_03 {; Don Archer '97 
             ; ideas Tim Wegner, Sylvie Gallet, Bob Carr
  z=fn1(sinh(0.33-fn2(tanh(pixel+p1))))/(0.33-tan(3*pixel+p2))
  c = fn3(z) - fn4(|0.1/z|)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=6.25*z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z = real(z) * real(c) - imag(z) * imag(c) + flip(imag(z))
  z = real(z) + flip(real(z) * imag(c) - imag(z) * real(c)) + pixel
  z = z * z + c
  iter = iter + 1
  (z-pixel)<=48
  ;SOURCE: u-draw28.frm
}


u-draw29_00 {; Don Archer '98 
             ; ideas Tim Wegner, Sylvie Gallet, Bob Carr
  z=fn1(sinh(0.33-fn2(tanh(pixel+p1))))/(0.33-tan(3*pixel+p2))
  c = fn3(z) - fn4(|0.1/z|)
  c1=1.5*1/z, c2=2.25*1/z, c3=3.375*1/z, c4=5.0625*1/z, c5=6.25*1/z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z = real(z) * real(c) - imag(z) * imag(c) + flip(imag(z))
  z = real(z) + flip(real(z) * imag(c) - imag(z) * real(c)) + pixel
  z = z^e + c
  iter = iter + 1
  |z|<=100
  ;SOURCE: u-draw29.frm
}


u-draw29_01 {; Don Archer '98 
             ; ideas Tim Wegner, Sylvie Gallet, Bob Carr
  z=fn1(sinh(0.33-fn2(tanh(pixel+p1))))/(0.33-tan(3*pixel+p2))
  c = fn3(z) - fn4(|0.1/z|)
  c1=1.5*1/z, c2=2.25*1/z, c3=3.375*1/z, c4=5.0625*1/z, c5=6.25*1/z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z = real(z) * real(c) - imag(z) * imag(c) + flip(imag(z))
  z = real(z) + flip(real(z) * imag(c) - imag(z) * real(c)) + pixel
  z = z*z*c + c
  iter = iter + 1
  |z|<=100
  ;SOURCE: u-draw29.frm
}


u-draw29_02 {; Don Archer '98 
             ; ideas Sylvie Gallet, Bob Carr
  z=flip((fn1(pixel+p1)^2))-fn2(conj((pixel+p2)^7))\
      -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
  c1=1.5*c, c2=2.25*c, c3=3.375*c, c4=5.0625*c, c5=6.25*c
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z=z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter + 1
  (z-pixel)<=16
  ;SOURCE: u-draw29.frm
}


u-draw29_03 {; Don Archer '98 -- ideas Sylvie Gallet, Bob Carr
  z=flip((fn1(pixel+p1)^2))-fn2(conj((pixel+p2)^7))\
     -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=(z)^(fn3(z)-1)-fn4(|0.1/z|)
  c1=1.5*c, c2=2.25*c, c3=3.375*c, c4=5.0625*c, c5=6.25*c
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z = real(z) * real(c) - imag(z) * imag(c) + flip(imag(z))
  z = real(z) + flip(real(z) * imag(c) - imag(z) * real(c)) + pixel
  z = z * z + c
  iter = iter + 1
  (z-pixel)<=16
  ;SOURCE: u-draw29.frm
}


u-draw29_04 {; Don Archer '98 
             ; ideas Sylvie Gallet, Bob Carr
  z=flip((fn1(pixel+p1)^2))-fn2(conj((pixel+p2)^7))\
        -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
  c1=1.5*c, c2=2.25*c, c3=3.375*c, c4=5.0625*c, c5=6.25*c
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5)
  z=z*c*t, c=z*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z=z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter + 1
  (z-pixel)<=16
  ;SOURCE: u-draw29.frm
}


u-draw29_05 {; Don Archer '98 -- ideas Sylvie Gallet, Bob Carr
  z=flip((fn1(pixel+p1)^e))-fn2(conj((pixel+p2)^e*e))\
         -conj(0.01/pixel-flip(0.001/pixel))-0.3
  c=fn3(z)-fn4(|0.1/z|)
  c1=1.5*c, c2=2.25*c, c3=3.375*c, c4=5.0625*c, c5=6.25*c
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z = real(z) + flip(real(z) * imag(c) - imag(z) * real(c)) + pixel
  z=z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter + 1
  (z-pixel)<=16
  ;SOURCE: u-draw29.frm
}


u-draw29_06 {; Don Archer '98 
  z=fn1(sinh(0.33-fn2(tanh(pixel+p1))))/(0.33-tan(3*pixel+p2))
  c=fn3(z) - fn4(|0.1/z|)
  c1=1.5*1/z, c2=2.25*1/z, c3=3.375*1/z, c4=5.0625*1/z, c5=6.25*1/z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z = cabs(z)*exp(flip(cabs(z)))/10 + z + c
  iter = iter + 1
  |z|<=100
  ;SOURCE: u-draw29.frm
}


u-draw29_07 {; Don Archer '98 
  z=fn1(sinh(0.33-fn2(tanh(pixel+p1))))/(0.33-tan(3*pixel+p2))
  c=fn3(z) - fn4(|0.1/z|)
  c1=1.5*1/z, c2=2.25*1/z, c3=3.375*1/z, c4=5.0625*1/z, c5=6.25*1/z
  l1=1000, l2=1500, l3=2000, l4=2500, l5=3000, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5
  z= cabs(z)*exp(flip(cabs(z))) / 10 + z + c
  z = real(z) * real(c) - imag(z) * imag(c) + flip(imag(z))
  z = real(z) + flip(real(z) * imag(c) - imag(z) * real(c)) + pixel
  iter = iter + 1
  (z-pixel)<=16
  ;SOURCE: u-draw29.frm
}


u-draw2_01 {; via terrora.frm                            
  z = fn1(fn2(fn3(fn4(pixel)))), c = pixel:  
  z = sin(z)
  z = real(z+p1) * real(c+p2) - imag(z+p3) * imag(c) + flip(imag(z))
  z = real(z+p1) + flip(real(z+p2) * imag(c+p3)\ 
        - imag(z) * real(c)) + pixel
  |z| <= 48
  ;SOURCE: u-draw2.frm
}


u-draw30_00 {; Don Archer '98
             ; if..else logic by Sylvie Gallet 2/98
  z = zorig = fn1(sinh(0.33-fn2(tanh(pixel+p1))))/(0.33-tan(3*pixel+p2))
  c = fn3(z) - fn4(|0.1/z|)
  cp = c + pixel
  count=0:
  IF (count == 1000)
    z = 0, c = 1.5*zorig, cp = c + pixel
  ELSEIF (count == 1500)
    z = 0, c = 2.25*zorig, cp = c + pixel
  ELSEIF (count == 2000)
    z = 0, c = 3.375*zorig, cp = c + pixel
  ELSEIF (count == 2500)
    z = 0, c = 5.0625*zorig, cp = c + pixel
  ELSEIF (count == 3000)
    c = c + 6.25*zorig, cp = c + pixel
  ENDIF
  count = count + 1
  z = real(z) * real(c) - imag(z) * imag(c) + flip(imag(z))
  z = real(z) + flip(real(z) * imag(c) - imag(z) * real(c)) + pixel
  z = z*z*c + cp
  |z| <= 100
  ;SOURCE: 98msg.frm
}


u-draw30_01 {; Don Archer '98 
  z=fn1(sinh(0.33-fn2(tanh(pixel+p1))))/(0.33-tan(3*pixel+p2))
  c=fn3(z) - fn4(|0.1/z|)
  w1= 1.5*z, w2=2.25*z, w3=3.375*z, w4=5.0625*z, w5=6.25*z
  count=0:
  y=1-(count==1000||count==1500||count==2000||count==2500||count==3000)
  z = z * y
  c = c * y + w1*(count==1000) + w2*(count==1500)\ 
     + w3*(count==2000) + w4*(count==2500) + w5*(count==3000)
  z = real(z) * real(c) - imag(z) * imag(c) + flip(imag(z))
  z = real(z) + flip(real(z) * imag(c) - imag(z) * real(c)) + pixel
  count = count + 1
  |z|<=100
  ;SOURCE: u-draw30.frm
}


u-draw30_02 {; Don Archer '98
  z=fn1(sinh(0.33-fn2(tanh(pixel+p1))))/(0.33-tan(3*pixel+p2))
  c=fn3(z) - fn4(|0.1/z|)
  w1= 1.5*z, w2=2.25*z, w3=3.375*z, w4=5.0625*z, w5=6.25*z
  count=0:
  y=1-(count==1000||count==1500||count==2000||count==2500||count==3000)
  z = z * y
  c = c * y + w1*(count==1000) + w2*(count==1500)\ 
       + w3*(count==2000) + w4*(count==2500) + w5*(count==3000)
  z = real(z) * real(c) - imag(z) * imag(c) + flip(imag(z))
  z = real(z) + flip(real(z) * imag(c) - imag(z) * real(c)) + pixel
  z = z*z+c
  count = count + 1
  |z|<=100
  ;SOURCE: u-draw30.frm
}


u-draw31_01 {; Don Archer '98
             ; Converted to IF..ELSE logic by Sylvie Gallet, 02/24/98
  z = zorig = flip((fn1(pixel+p1)^2)) - fn2(conj((pixel+p2)^7)) \
    - conj(0.01/pixel-flip(0.001/pixel)) - 0.3
  c = fn3(z) - fn4(|0.1/z|), cp = c + pixel
  count = 0 :
  IF (count == 1000)
    z = 0, c = 1.5*zorig, cp = c + pixel
  ELSEIF (count == 1500)
    z = 0, c = 2.25*zorig, cp = c + pixel
  ELSEIF (count == 2000)
    z = 0, c = 3.375*zorig, cp = c + pixel
  ELSEIF (count == 2500)
    z = 0, c = 5.0625*zorig, cp = c + pixel
  ELSEIF (count == 3000)
    c = c + 6.25*zorig, cp = c + pixel
  ENDIF
  count = count + 1
  z = real(z) * real(c) - imag(z) * imag(c) + flip(imag(z))
  z = real(z) + flip(real(z) * imag(c) - imag(z) * real(c)) + pixel
  z = z*z*c + cp
  |z| <= 100
  ;SOURCE: 98msg.frm
}


u-draw33_04 {; Don Archer '98
  q=fn1(flip(fn2(fn3(pixel+p1))^2))-cabs(conj((pixel+fn4(p2))^(pi*2)))\
         -conj(0.01/pixel-flip(0.001/pixel))-0.3
  u=q-conj(|0.1/q|)
  c=abs(u)-cabs(u)
  z=zorig=abs(q)-cabs(flip(q)^pi)
  cp = c + pixel
  count = 0 :
  IF (count == 1000)
    z = 0, c = 1.5000*zorig, cp = c + pixel
  ELSEIF (count == 1500)
    z = 0, c = 2.2500*zorig, cp = c + pixel
  ELSEIF (count == 2000)
    z = 0, c = 3.3750*zorig, cp = c + pixel
  ELSEIF (count == 2500)
    z = 0, c = 5.0625*zorig, cp = c + pixel
  ELSEIF (count == 3000)
    z = 0, c = c + 6.25*zorig, cp = c + pixel
  ENDIF
  z = z*z+(-0.7496,-0.132)+flip(conj(c/10))
  count=count + 1
  |z|<=16
  ;SOURCE: 98msg.frm
}


u-draw33_05 {; Don Archer '98
             ; Add variable "newpixel". G. Martin 6/27/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  q=fn1(flip(fn2(fn3(newpixel+p1))^2))-cabs(conj((newpixel+fn4(p2))^(pi/2)));-conj(0.01/newpixel-flip(0.001/newpixel))-0.3
  u=q-conj(|0.1/q|)
  c=tan(u)-sinh(u)
  z=zorig=abs(q)-cabs(flip(q)^pi)
  cp = c + newpixel
  count = 0 :
  IF (count == 1000)
    z = 0, c = 1.5000*zorig, cp = c + newpixel
  ELSEIF (count == 1500)
    z = 0, c = 2.2500*zorig, cp = c + newpixel
  ELSEIF (count == 2000)
    z = 0, c = 3.3750*zorig, cp = c + newpixel
  ELSEIF (count == 2500)
    z = 0, c = 5.0625*zorig, cp = c + newpixel
  ELSEIF (count == 3000)
    z = 0, c = c + 6.25*zorig, cp = c + newpixel
  ENDIF
  z = z*z+(-0.7496,-0.132)+flip(conj(c/10))
  count=count + 1
  |z|<=16
  ;SOURCE: 98msg.frm
}


u-draw33_06 {; Don Archer '98
             ; Add variable "newpixel". G. Martin 6/27/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  q=fn1(flip(fn2(newpixel+p1))^2)-cabs(conj((newpixel+fn3(p2))^(pi)))
  u=fn4(q)
  c=tan(u)-sinh(u)
  z=zorig=sin(q)-tanh(flip(q)^pi)
  cp = c + newpixel
  count = 0 :
  IF (count == 1000)
    z = 0, c = 1.5000*zorig, cp = c + newpixel
  ELSEIF (count == 1500)
    z = 0, c = 2.2500*zorig, cp = c + newpixel
  ELSEIF (count == 2000)
    z = 0, c = 3.3750*zorig, cp = c + newpixel
  ELSEIF (count == 2500)
    z = 0, c = 5.0625*zorig, cp = c + newpixel
  ELSEIF (count == 3000)
    z = 0, c = c + 6.25*zorig, cp = c + newpixel
  ENDIF
  z = z*z+(-0.7496,-0.132)+flip(conj(c/10))
  count=count + 1
  |z|<=16
  ;SOURCE: 98msg.frm
}


u-draw33_07 {; Don Archer '98
             ; Add variable "newpixel". G. Martin 6/27/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  q=fn1(flip(fn2(newpixel+p1))^pi)-cabs(conj((newpixel+fn3(p2))^(e*e)))
  u=fn4(q)
  c=tan(u)-sinh(u)
  z=zorig=sin(q)-tanh(flip(q)^2)
  cp = c + newpixel
  count = 0 :
  IF (count == 1000)
    z = 0, c = 1.5000*zorig, cp = c + newpixel
  ELSEIF (count == 1500)
    z = 0, c = 2.2500*zorig, cp = c + newpixel
  ELSEIF (count == 2000)
    z = 0, c = 3.3750*zorig, cp = c + newpixel
  ELSEIF (count == 2500)
    z = 0, c = 5.0625*zorig, cp = c + newpixel
  ELSEIF (count == 3000)
    z = 0, c = c + 6.25*zorig, cp = c + newpixel
  ENDIF
  z = z*z+(-0.7496,-0.132)+flip(conj(c/10))
  count=count + 1
  |z|<=16
  ;SOURCE: 98msg.frm
}


u-draw3_01 {; via terrora.frm                            
  z = fn1(fn2(fn3(fn4(pixel)))), c = z ^ (z-1) :  
  z = sinh(z)
  z = real(z+p1) * real(c+p2) - imag(z+p3) * imag(c) + flip(imag(z))
  z = real(z+p1) + flip(real(z+p2) * imag(c+p3)\ 
        - imag(z) * real(c)) + 1/pixel
  |z| <= 48
  ;SOURCE: u-draw3.frm
}


u-draw3_02 {; via terrora.frm                            
  z = fn1(fn2(fn3(fn4(pixel)))), c = z ^ (z-1) :  
  z = sinh(z)
  z = real(z+p1) * real(c+p2) - imag(z+p3) * imag(c) + flip(imag(z))
  z = real(z+p1) + flip(real(z+p2) * imag(c+p3)\ 
        - imag(z) * real(c)) + 1/pixel
  z = z * z + c
  |z| <= 48
  ;SOURCE: u-draw3.frm
}


u-draw3_03 {; via terrora.frm                            
  z = fn1(fn2(fn3(fn4(pixel)))), c = z ^ (z-1) :  
  z = sinh(z)
  z = real(z+p1) * real(c+p2) - imag(z+p3) * imag(c) + flip(imag(z))
  z = real(z+p1) + flip(real(z+p2) * imag(c+p3)\ 
       - imag(z) * real(c)) + 1/pixel
  z = z ^ e + c
  |z| <= 48
  ;SOURCE: u-draw3.frm
}


u-draw3_04 {; via terrora.frm                            
  z = fn1(fn2(fn3(fn4(pixel)))), c = z ^ (z-1) :  
  z = sinh(z)
  z = real(z+p1) * real(c+p2) - imag(z+p3) * imag(c) + flip(imag(z))
  z = real(z+p1) + flip(real(z+p2) * imag(c+p3)\ 
        - imag(z) * real(c)) + pixel
  z = z ^ e + c
  |z| <= 48
  ;SOURCE: u-draw3.frm
}


u-draw3_05 {; via terrora.frm                            
  z = fn1(fn2(fn3(fn4(pixel)))),  c = z^e :  
  z = sinh(z)
  z = real(z+p1) * real(c+p2) - imag(z+p3) * imag(c) + flip(imag(z))
  z = real(z+p1) + flip(real(z+p2) * imag(c+p3)\ 
        - imag(z) * real(c)) + pixel
  z = z * z + c
  |z| <= 48
  ;SOURCE: u-draw3.frm
}


u-draw3_06 {; via terrora.frm                            
  z = fn1(fn2(fn3(fn4(pixel)))),  c = z ^ (z-1) :      
  z = sinh(z)
  z = real(z+p1) * real(c+p2) - imag(z+p3) * imag(c) + flip(imag(z))
  z = real(z+p1) + flip(real(z+p2) * imag(c+p3)\ 
       - imag(z) * real(c)) + pixel
  z = z * sinh(z) + c
  |z| <= 100
  ;SOURCE: u-draw3.frm
}


u-draw4_01 {; adapted from 42ccarr.frm by Bob Carr
            ; from Sylvie Gallet orig
  c=fn1(pixel)
  z=flip(imag(p1-pixel))*fn2(pixel)-conj(.1*p2/pixel)-flip(.01*p2/pixel)
  d1 = conj(0.0000455*p3/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=100, l2=150, l3=200, l4=250
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*fn3(t+ct), c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: u-draw4.frm
}


u-draw4_02 {; adapted from 42ccarr.frm by Bob Carr
            ; from Sylvie Gallet orig
  c=pixel
  z=imag((.33*p1)-pixel)*sqr(pixel)-conj((.1*p2)/pixel)-(.01*p2)/pixel
  d1 = conj(0.0000455*p3/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=100, l2=150, l3=200, l4=250
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*sinh(t+ct), c = c*t + ct
  z=fn1(z) * fn2(z) + fn3(c)
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: u-draw4.frm
}


u-draw4_03 {; adapted from 42ccarr.frm by Bob Carr
            ; from Sylvie Gallet orig
  c=sinh(pixel)
  z=imag((.33*p1)-pixel)*sqr(pixel)\
     -real(conj((.1*p2)/pixel)-(.01*p2)/pixel)
  d1 = conj(0.0000455*p3/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=100, l2=150, l3=200, l4=250
  iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*fn4(t+ct), c = c*t + ct
  z=fn1(z) * fn2(z) + fn3(c)
  iter=iter+1
  |z| <= 32
  ;SOURCE: u-draw4.frm
}


u-draw4a_01 {; via archdon.frm
  z = fn1(fn2(fn3(fn4(pixel)))), c = z ^ (z-1) :
  z = sinh(z^e)
  z = real(z+p1) * real(c+p2) - imag(z+p3) * imag(c) + flip(imag(z))
  z = real(z+p1) + flip(real(z+p2) * imag(c+p3)\ 
       - imag(z) * real(c)) + 1/pixel
  |z| <= 48
  ;SOURCE: u-draw4a.frm
}


u-draw4a_02 {; via archdon.frm
  z = fn1(fn2(fn3(fn4(pixel)))), c = z ^ (z-1) :  
  z = (sinh(z))^e
  z = real(z+p1) * real(c+p2) - imag(z+p3) * imag(c) + flip(imag(z))
  z = real(z+p1) + flip(real(z+p2) * imag(c+p3)\ 
        - imag(z) * real(c)) + 1/pixel
  |z| <= 48
  ;SOURCE: u-draw4a.frm
}


u-draw4a_03 {; via archdon.frm  
  z = fn1(fn2(fn3(fn4(pixel)))), c = z ^ (z-1) :  
  z = sinh(z) ^ e/pixel 
  z = real(z+p1) * real(c+p2) - imag(z+p3) * imag(c) + flip(imag(z)) 
  z = real(z+p1) + flip(real(z+p2) * imag(c+p3)\ 
        - imag(z) * real(c)) + pixel 
  z =  z * z + c
  |z| <= 64  
  ;SOURCE: u-draw4a.frm
}


u-draw4a_04 {   
  z = fn1(real(fn2(pixel))) + fn3(flip(imag(fn4(pixel)))), c = z ^ (z-1) :  
  z = sinh(z)  
  z = real(z+p1) * real(c+p2) - imag(z+p3) * imag(c) + flip(imag(z)) 
  z = real(z+p1) + flip(real(z+p2) * imag(c+p3) - imag(z) * real(c))  
    ; z = z * z + c
  |z| <= 64  
  ;SOURCE: u-draw4a.frm
}


u-draw4a_05 {   
  z = fn1(real(fn2(pixel))) + fn3(flip(imag(fn4(pixel)))), c = z^(z-1):  
  z = sinh(z)  
  z = (z+p1) * (c+p2) - imag(z) * imag(c) + flip(imag(z)) 
  z = (z+p1) + flip((z+p2) * imag(c) - imag(z) * real(c)) + pixel 
  z = z * z  + c
  |z| <= 64  
  ;SOURCE: u-draw4a.frm
}


u-draw4b_01 {; Variation on Sylvie Gallet formula. 
             ; George Martin [76440,1143]
             ; Modified Mans-Galore & Gallet 3-02
  z=c=pixel, iter=0, x = fn3(real(z)), y = fn4(imag(z))
  nextzoom = iterspace = 10, magnification = 4
  x1 = x - p2*fn1(y+p3*fn2(y))
  y1 = y - p2*fn1(x+p3*fn2(x)):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) + x1+flip(y1)
  c = c*(1 - test) + test*magnification*c
  z =z ^e + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: u-draw4b.frm
}


u-draw4b_02 {; Modified Sylvie Gallet frm. [101324,3444],1996, 
             ; Carr2821/ct03
  b5=(pixel + p1)-conj(0.1/pixel)
  b4=(pixel + p2)-flip(0.1/pixel)-conj(0.001/pixel)
     ; c=whitesq*b4-(whitesq==0)*b4
     ; z=whitesq*b5-(whitesq==0)*b5
  c=fn1(b4)-fn2(b4)
  z=fn3(b5)-fn4(b5)
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z|/5)+z^e+c-0.09/pixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: u-draw4b.frm
}


u-draw4b_03 {; Modified Sylvie Gallet frm. [101324,3444],1996
             ; Carr2821/ct04
  b5=(pixel + p1)-conj(0.1/pixel)
  b4=(pixel + p2)-flip(0.1/pixel)-conj(0.001/pixel)
       ; c=whitesq*b4-(whitesq==0)*b4
       ; z=whitesq*b5-(whitesq==0)*b5
  c=fn1(b4)-fn2(b4)
  z=fn3(b5)-fn4(b5)
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z|/5)+z^e+c-0.09/pixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: u-draw4b.frm
}


u-draw4b_04 {; Modified Sylvie Gallet frm. [101324,3444],1996, Carr3024
  b5=flip((pixel+p1)^2)-cabs((pixel+p2)^7)\
       -conj(0.01/pixel-flip(0.001/pixel))-0.3
  b4=b5-(|0.1/b5|)
  c=fn1(b4)-fn2(b4)
  z=fn3(b5)-fn4(flip(b5))^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: u-draw4b.frm
}


u-draw5_01 {; Modified Sylvie Gallet frm. [101324,3444],1996; carr3034
  b5=cabs(0.33-cos(pixel+p1))/(0.33-tan(3*pixel))-0.4
  b4=conj(pixel+p2)*(pixel-flip(0.001/pixel))*(pixel-conj(0.01/pixel))
  c=fn1(b4)-fn2(conj(b4))
  z=fn3(b5)-fn4(sqr(b5))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c^4)^(real(1)-(1,0))*(0.01+z^2)+(c/6)+(-0.6856,-0.132)
  iter=iter+1
  z <= bailout
  ;SOURCE: u-draw5.frm
}


u-draw6_01 {;Modified Sylvie Gallet frm. [101324,3444],1996, 
            ; Carr3024,  u-draw4b_04
  b5=flip((pixel+p1)^2)-cabs(conj((pixel+p2)^7))\
      -conj(0.01/pixel-flip(0.001/pixel))-0.3
  b4=b5-(|0.1/b5|)
  c=fn1(b4)-fn2(b4)
  z=fn3(b5)-fn4(flip(b5))^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  z = temp
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7496,-0.132)+flip(conj(c/10))
  temp=c
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: u-draw6.frm
}


u-draw6_02 {; Modified Sylvie Gallet frm. [101324,3444],1996, 
            ; Carr2821/ct04/u-draw4b_03
  b5=(pixel+p1)-conj(0.1/pixel)
  b4=(pixel+p2)-flip(0.1/pixel)-conj(0.001/pixel)
     ; c=whitesq*b4-(whitesq==0)*b4
     ; z=whitesq*b5-(whitesq==0)*b5
  c=fn1(b4)-fn2(b4)
  z=fn3(b5)-fn4(b5)
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
      ; z=(|z|/5)+z^e+c-0.09/pixel
  z = sinh(z^e)
  z = real(z) * real(c) - imag(z) * imag(c) + flip(imag(z))
  z = real(z) + flip(real(z) * imag(c3) - imag(z) * real(c)) + 1/pixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: u-draw6.frm
}


u-draw6_03 {; cf u-draw4_01
  z = pixel+ p1, c = z ^ (z-1) :
  z = sinh(z*p2)
  z = real(fn1(z)) * real(c) - imag(fn2(z)) * imag(c) + flip(imag(z))
  z = real(fn3(z)) + flip(real(z) * imag(c)\ 
       - imag(fn4(z)) * real(c)) + 1/pixel
  |z| <= 48
  ;SOURCE: u-draw6.frm
}


u-draw6_04 {; Modified Sylvie Gallet frm. [101324,3444],1996, 
            ; Carr3024, u-draw4b_04
  b5=flip((pixel+p1)^2)-cabs(conj((pixel+p2)^7))\
      -conj(0.01/pixel-flip(0.001/pixel))-0.3
  b4=b5-(|0.1/b5|)
  c=fn1(b4)-fn2(b4)
  z=fn3(b5)-fn4(flip(b5))^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z*c+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: u-draw6.frm
}


u-draw6_05 {; Modified Sylvie Gallet frm. [101324,3444],1996, 
            ; Carr3024, u-draw4b_04
  b5=flip((pixel+p1)^2)-cabs(conj((pixel+p2)^7))\
      -conj(0.01/pixel-flip(0.001/pixel))-0.3
  b4=b5-(|0.1/b5|)
  c=fn1(b4)+fn2(b4)
  z=fn3(b5)+fn4(flip(b5))^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: u-draw6.frm
}


u-draw6_06 {; Modified Sylvie Gallet frm. [101324,3444],1996, 
            ; Carr3024, u-draw4b_04
  b5=flip((pixel+p1)^2)-cabs(conj((pixel+p2)^7))\
      -conj(0.01/pixel-flip(0.001/pixel))-0.3
  b4=b5-(|0.1/b5|)
  c=fn1(b4)-fn2(b4)
  z=fn3(b5)-fn4(b5)^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: u-draw6.frm
}


u-draw6t_01 {; Modified Sylvie Gallet frm. [101324,3444],1996
             ; Carr3024, u-draw4b_04, u-draw6_06
  b5=flip((pixel+p1)^2)-cabs((pixel+p2)^7)\
     -conj(0.01/pixel-flip(0.001/pixel))-0.3
  b4=b5-(|0.1/b5|)
  c=fn1(b4)-fn2(b4)
  z=fn3(b5)-fn4(b5)^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: u-draw6t.frm
}


u-draw6t_02 {; Modified Sylvie Gallet frm. [101324,3444],1996
             ; Carr3024, u-draw4b_04, u-draw6_06
  b5=flip((pixel+p1)^2)-cabs((pixel+p2)^7)\
          -conj(0.01/pixel-flip(0.001/pixel))-0.3
  b4=b5-(|0.1/b5|)
  c=fn1(b4)-fn2(b4)
  z=fn3(b5)-fn4(b5)^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
      ; z = sinh(z^e)
  z = real(z) * real(c) - imag(z) * imag(c) + flip(imag(z))
  z = real(z) + flip(real(z) * imag(c3) - imag(z) * real(c)) + pixel
  z=z*z+(-0.7496,-0.132)+(conj(c/10))
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: u-draw6t.frm
}


u-draw6t_03 {; Modified Sylvie Gallet frm. [101324,3444],1996
             ; Carr3024, u-draw4b_04, u-draw6_06
  b5=flip((pixel+p1)^2)-cabs((pixel+p2)^7)\
      -conj(0.01/pixel-flip(0.001/pixel))-0.3
  b4=b5-(|0.1/b5|)
  c=fn1(b4)-fn2(b4)
  z=fn3(b5)-fn4(b5)^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
       ; z = sinh(z^e)
  z = real(z) * real(c) - imag(z) * imag(c) + flip(imag(z))
  z = real(z) + flip(real(z) * imag(c3) - imag(z) * real(c)) + 1/pixel
  z=z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: u-draw6t.frm
}


u-draw6t_04 {; Modified Sylvie Gallet frm. [101324,3444],1996
             ; Carr3024, u-draw4b_04, u-draw6_06
  b5=flip((pixel+p1)^2)-cabs((pixel+p2)^7)\
       -conj(0.01/pixel-flip(0.001/pixel))-0.3
  b4=b5-(|0.1/b5|)
  c=fn1(b4)-fn2(b4)
  z=fn3(b5)-fn4(b5)^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: u-draw6t.frm
}


u-draw6t_05 {; Modified Sylvie Gallet frm. [101324,3444],1996
             ; Carr3024, u-draw4b_04, u-draw6_06
  b5=flip((pixel+p1)^2)-cabs((pixel+p2)^7)\
         -conj(0.01/pixel-flip(0.001/pixel))-0.3
  b4=b5-(|0.1/b5|)
  c=fn1(1/b4)-fn2(b4)
  z=fn3(1/b5)-fn4(b5)^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4)
  z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: u-draw6t.frm
}


u-draw7_00 {; Modified Sylvie Gallet frm. [101324,3444],1996, 
            ; Carr3024, u-draw4b_04
  b5=flip((pixel)^2)-cabs((pixel)^7)\
        -conj(0.01/pixel-flip(0.001/pixel))-0.3
  b4=b5-(|0.1/b5|)
  c=fn1(b4)-fn2(b4)
  z=fn3(b5)-fn4(flip(b5))^3
  c1=1.50+real(p1)*z
  c2=2.25+imag(p1)*z
  c3=3.375+real(p2)*z
  c4=5.0625+imag(p2)*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z*c+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: u-draw7.frm
}


u-draw7_01 {; Modified Sylvie Gallet frm. [101324,3444],1996, 
            ; Carr3024, u-draw4b_04
  b5=flip((pixel+p1)^2)-cabs((pixel+p2)^7)\
        -conj(0.01/pixel-flip(0.001/pixel))-0.3
  b4=b5-(|0.1/b5|)
  c=fn1(b4)-fn2(b4)
  z=fn3(b5)-fn4(flip(b5))^3
  c1=1.50+real(p1)*z
  c2=2.25+imag(p1)*z
  c3=3.375+real(p2)*z
  c4=5.0625+imag(p2)*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z*c+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: u-draw7.frm
}


u-draw7_02 {; Modified Sylvie Gallet frm. [101324,3444],1996, 
            ; Carr3024, u-draw4b_04
  b5=flip((pixel+p1)^2)-cabs((pixel+p2)^7)\
       -conj(0.01/pixel-flip(0.001/pixel))-0.3
  b4=b5-(|0.1/b5|)
  c=fn1(b4)-fn2(b5)
  z=fn3(b4)-fn4(flip(b5))^3
  c1=1.50+real(p1)*z
  c2=2.25+imag(p1)*z
  c3=3.375+real(p2)*z
  c4=5.0625+imag(p2)*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z*c+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: u-draw7.frm
}


u-draw7_03 {; Modified Sylvie Gallet frm. [101324,3444],1996, 
            ; Carr3024, u-draw4b_04, u-draw6_06
  b5=flip((pixel+p1)^2)-cabs((pixel+p2)^7)\
      -conj(0.01/pixel-flip(0.001/pixel))-0.3
  b4=b5-(|0.1/b5|)
  c=fn1(b4)-fn2(b4)
  z=fn3(b5)-fn4(b5)^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=96, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: u-draw7.frm
}


u-draw7_04 {; Modified Sylvie Gallet frm. [101324,3444],1996, 
            ; Carr3024, u-draw4b_04, u-draw6_06
  b5=flip((pixel+p1)^2)-cabs((pixel+p2)^7)\
     -conj(0.01/pixel-flip(0.001/pixel))-0.3
  b4=b5-(|0.1/b5|)
  c=fn1(b4)-fn2(b4)
  z=fn3(b5)-fn4(b5)^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter*.01
  (z-pixel)<=bailout
  ;SOURCE: u-draw7.frm
}


u-draw8_00 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=fn1(fn2(fn3(fn4(pixel))))
  c=flip(imag(0.33-pixel+p1))*sqr(pixel+p2)\
      -conj(0.10/pixel)-flip(0.010/pixel)
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-c/10)*t+ct, c = c*t+ct
  z=(z*z+(-0.7856,0.10)+(c/7*pixel))
  iter=iter+1
  (|real(z)|) <=bailout
  ;SOURCE: u-draw8.frm
}


u-draw8_01 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=fn1(pixel + real(p1)) * fn2(pixel + imag(p1))\ 
     * fn3(pixel + real(p2)) * fn4(pixel + imag(p2))  
  c=flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-c/10)*t+ct, c = c*t+ct
  z=(z*z+(-0.7856,0.10)+(c/7*pixel))
  iter=iter+1
  (|real(z)|) <=bailout
  ;SOURCE: u-draw8.frm
}


u-draw8_02 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=fn1(pixel + real(p1)) * fn2(pixel + imag(p1))\ 
      * fn3(pixel + real(p2)) * fn4(pixel + imag(p2))  
  c=flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-c/10)*t+ct, c = c*t+ct
  z=(z*z+(-0.7856,0.10)+(c/7*pixel))
  iter=iter+1
  (|real(z)|) <=bailout
  ;SOURCE: u-draw8.frm
}


u-draw8_03 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=fn1(fn2(fn3(pixel+p1*p2)))
  c=flip(imag(0.33-pixel))*sqr(pixel)\
     -conj(0.10/pixel)-flip(0.010/pixel)
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-c/10)*t+ct, c = c*t+ct
  z=fn4(z)+(-0.7856,0.10)+(c/7*pixel)
  iter=iter+1
  (|real(z)|) <=bailout
  ;SOURCE: u-draw8.frm
}


u-draw9_00 {; Modified Sylvie Gallet frm. [101324,3444],1996, 
            ; Carr2821/ct04/u-draw4b_03
  b5=(pixel+p1)-conj(0.1/pixel)
  b4=(pixel+p2)-flip(0.1/pixel)-conj(0.001/pixel)
      ; c=whitesq*b4-(whitesq==0)*b4
      ; z=whitesq*b5-(whitesq==0)*b5
  c=fn1(b4)-fn2(b4)
  z=fn3(b5)-fn4(b5)
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=1000, l2=1500, l3=2000, l4=2500
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
      ; z=(|z|/5)+z^e+c-0.09/pixel
  z = real(z+1) * real(c) - imag(z) * imag(c) + flip(imag(z))
  z = real(z-1) + flip(real(z) * imag(c3)\ 
        - imag(z) * real(c)) + 1/pixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: u-draw9.frm
}


u-test02 {; via terrora.frm                            
  z = fn1(fn2(fn3(fn4(pixel)))), c = z ^ (z-1):  
  z = sin(z)
  z = real(z+p1) * real(c+p2) - imag(z+p3) * imag(c) + flip(imag(z))
  z = real(z+p1) + flip(real(z+p2) * imag(c+p3)\ 
        - imag(z) * real(c)) + pixel
  |z| <= 48
  ;SOURCE: u-draw2.frm
}


u-test03 {; via terrora.frm                            
  z = fn1(fn2(fn3(fn4(pixel)))), c = z ^ (z-1) :  
  z = sinh(z)
  z = real(z+p1) * real(c+p2) - imag(z+p3) * imag(c) + flip(imag(z))
  z = real(z+p1) + flip(real(z+p2) * imag(c+p3)\ 
        - imag(z) * real(c)) + pixel
  |z| <= 48
  ;SOURCE: u-draw2.frm
}


u0 {; Revised 4/27/96 to eliminate superfluous "+c"
    ; Original version of this formula may be discarded
  z=pixel, m=fn3(tan(pixel)), n=fn4(pixel):
  t=(cotan(z^p1))+fn1(z/p2)
  z=(fn1(t*1/n))+fn2(t*1/m)
  |z|<=4
  ;SOURCE: new.frm
}


U02-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ;
        ; Dynamic (Euler method)
        ; U(n+1) = 2xU(n)-U(n-1)
        ; U(0)  = 1
        ; U(1)  = 2x
        ;
        ; = 2zU01-U00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=4*x*x-1
  Ty=4*y*y-1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


U02-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; Chebyshev Types:
                 ; Inspired by Clifford A. Pickover:
                 ; Dynamic
                 ; 
                 ; U(n+1) = 2zU(n)-U(n-1)
                 ; U(0)  = 1
                 ; U(1)  = 2z
                 ; 
                 ; = 2zU01-U00
  bailout=p1+4, z=pixel:
  z=4*z*z-1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


U02-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Julia)
        ;
        ; U(n+1) = 2zU(n)-U(n-1)
        ; U(0)  = 1
        ; U(1)  = 2z
        ; 
        ; = 2zU01-U00
  const=p1-1, z=pixel:
  z=4*z*z+const
  |z|<100
  ;SOURCE: chby3.frm
}


U02-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Mandelbrot)
        ;
        ; U(n+1) = 2zU(n)-U(n-1)
        ; U(0)  = 1
        ; U(1)  = 2z
        ;
        ; = 2zU01-U00
  const=pixel-1, z=p1:
  z=4*z*z+const
  |z|<100
  ;SOURCE: chby4.frm
}


U02-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Newton Method
        ;
        ; U(n+1) = 2zU(n)-U(n-1)
        ; U(0)  = 1
        ; U(1)  = 2z
        ;
        ; = 2zU01-U00
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=4*z*z-1
  fd=8*z
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


U02-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Halley Method
        ;
        ; U(n+1) = 2zU(n)-U(n-1)
        ; U(0)  = 1
        ; U(1)  = 2z
        ;
        ; = 2zU01-U00
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=4*z*z-1
  fd=8*z
  fdd=8
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


U02-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; Chebyshev Types:
                 ; Inspired by Bradley Beacham
                 ; Cubic Method
                 ;
                 ; U(n+1) = 2zU(n)-U(n-1)
                 ; U(0)  = 1
                 ; U(1)  = 2z
                 ;
                 ; = 2zU01-U00
  bailout=real(p2)/10000, z=pixel:
  f=4*z*z-1
  fd=8*z
  oz=z
  w=z-f/fd
  fw=4*w*w-1
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


U02-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler method)
        ;
        ; U(n+1) = 2xU(n)-U(n-1)
        ; U(0)  = 1
        ; U(1)  = 2x
        ;
        ; = 2zU01-U00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(4*x*x-1)
  Ty=sin(4*y*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


U02-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler method)
        ;
        ; U(n+1) = 2xU(n)-U(n-1)
        ; U(0)  = 1
        ; U(1)  = 2x
        ;
        ; = 2zU01-U00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Ux=fn1(4*x*x-1)
  Uy=fn1(4*y*y-1)
  x=x-t*Uy, y=y+t*Ux
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


U02-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Mike Wareman:
        ; Secant Method
        ;
        ; U(n+1) = 2zU(n)-U(n-1)
        ; U(0)  = 1
        ; U(1)  = 2z
        ;
        ; = 2zU01-U00
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=4*p1*p1-1:
  zt=z
  foz=fz
  fz=4*z*z-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


U02-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Julia)
        ;
        ; U(n+1) = 2zU(n)-U(n-1)
        ; U(0)  = 1
        ; U(1)  = 2z
        ;
        ; = 2zU01-U00
  const=p1, z=pixel:
  z=(4*z*z-1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


U02-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Mandelbrot)
        ;
        ; U(n+1) = 2zU(n)-U(n-1)
        ; U(0)  = 1
        ; U(1)  = 2z
        ;
        ; = 2zU01-U00
  const=pixel, z=p1:
  z=(4*z*z-1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


U02-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Halley Method with weird bailout test
        ;
        ; U(n+1) = 2zU(n)-U(n-1)
        ; U(0)  = 1
        ; U(1)  = 2z
        ;
        ; = 2zU01-U00
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=4*z*z-1
  fd=8*z
  fdd=8
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


U02-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; Chebyshev Types:
                 ; Inspired by Bradley Beacham
                 ; Cubic Method with weird bailout test
                 ;
                 ; U(n+1) = 2zU(n)-U(n-1)
                 ; U(0)  = 1
                 ; U(1)  = 2z
                 ;
                 ; = 2zU01-U00
  bailout=real(p2)/10000, z=pixel:
  f=4*z*z-1
  fd=8*z
  oz=z
  w=z-f/fd
  fw=4*w*w-1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


U02-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Newton Method with weird bailout test
        ;
        ; U(n+1) = 2zU(n)-U(n-1)
        ; U(0)  = 1
        ; U(1)  = 2z
        ;
        ; = 2zU01-U00
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=4*z*z-1
  fd=8*z
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


U02-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Mike Wareman:
        ; Secant Method with weird bailout test
        ;
        ; U(n+1) = 2zU(n)-U(n-1)
        ; U(0)  = 1
        ; U(1)  = 2z
        ;
        ; = 2zU01-U00
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=4*p1*p1-1:
  zt=z
  foz=fz
  fz=4*z*z-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


U02-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Mike Wareman
        ; Secant Method with Girvan perturbations and weird bailout test
        ;
        ; U(n+1) = 2zU(n)-U(n-1)
        ; U(0)  = 1
        ; U(1)  = 2z
        ;
        ; = 2zU01-U00
  z=pixel, oz=0
  fz=-1
  zt=fn1(z)+p1:
  foz=fz
  fz=4*z*z-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


U02-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Mike Wareman
        ; Secant Method with Girvan perturbations and weird bailout test
        ;
        ; U(n+1) = 2zU(n)-U(n-1)
        ; U(0)  = 1
        ; U(1)  = 2z
        ;
        ; = 2zU01-U00
  z=pixel, oz=0
  fz=-1
  zt=fn1(z)+p1:
  foz=fz
  fz=4*z*z-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


U02-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (Implicit Euler method)
        ;
        ; U(n+1) = 2xU(n)-U(n-1)
        ; U(0)  = 1
        ; U(1)  = 2x
        ;
        ; = 2zU01-U00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(4*x*x-1)
  x=x-t*(4*y*y-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


U02-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler method)
        ;
        ; U(n+1) = 2xU(n)-U(n-1)
        ; U(0)  = 1
        ; U(1)  = 2x
        ;
        ; = 2zU01-U00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(4*x*x-1)
  x=x-t*sin(4*y*y-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


U02-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler method)
        ;
        ; U(n+1) = 2xU(n)-U(n-1)
        ; U(0)  = 1
        ; U(1)  = 2x
        ;
        ; = 2zU01-U00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(4*x*x-1))
  x=x-t*(fn1(4*y*y-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


U02-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler method)
        ;
        ; U(n+1) = 2xU(n)-U(n-1)
        ; U(0)  = 1
        ; U(1)  = 2x
        ;
        ; = 2zU01-U00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(4*x*x-1)
  Ty=fn2(4*y*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


U02-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified Euler method)
        ;
        ; U(n+1) = 2xU(n)-U(n-1)
        ; U(0)  = 1
        ; U(1)  = 2x
        ;
        ; = 2zU01-U00
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(4*x*x-1)
  Ty=fn2(4*y*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


U02-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler Method)
        ;
        ; U(n+1) = 2xU(n)-U(n-1)
        ; U(0)  = 1
        ; U(1)  = 2x
        ;
        ; = 2zU01-U00
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(4*x*x-1))
  x=x-t*(fn2(4*y*y-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


U02-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler Method)
        ;
        ; U(n+1) = 2xU(n)-U(n-1)
        ; U(0)  = 1
        ; U(1)  = 2x
        ;
        ; = 2zU01-U00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(4*x*x-1))
  x=x-t*(fn2(4*y*y-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


U02-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Kathy Roth:
        ; Dynamic (modified implicit Euler Method, gravitated)
        ;
        ; Tchebyshev polynomials
        ; U[0]=1
        ; U[1]=2z
        ; U[n+1]=2zU[n]-U[n-1]
        ;
        ; = 2zU01-U00
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(4*x*x-1))
  Ty=(fn1(4*y*y-1))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


U02-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Kathy Roth:
        ; Dynamic (modified implicit Euler Method, popped)
        ;
        ; Tchebyshev polynomials
        ; U[0]=1
        ; U[1]=2z
        ; U[n+1]=2zU[n]-U[n-1]
        ;
        ; = 2zU01-U00
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(4*x*x-1))
  Ty=(fn1(4*y*y-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


U02-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Kathy Roth:
        ; Dynamic (modified implicit Euler Method, popped)
        ;
        ; Tchebyshev polynomials
        ; U[0]=1
        ; U[1]=2z
        ; U[n+1]=2zU[n]-U[n-1]
        ;
        ; = 2zU01-U00
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(4*x*x-1))
  Ty=(fn1(4*y*y-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


U02-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler method, Sylvie Gallet test)
        ;
        ; Tchebyshev polynomials
        ; U[0]=1
        ; U[1]=2z
        ; U[n+1]=2zU[n]-U[n-1]
        ;
        ; = 2zU01-U00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1(4*x*x-1))
  Ty=(fn1(4*y*y-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


U02-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Ray Parracho:
        ; Regula-Falsi Method
        ;
        ; Tchebyshev polynomials
        ; U[0]=1
        ; U[1]=2z
        ; U[n+1]=2zU[n]-U[n-1]
        ; 
        ; = 2zU01-U00
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=4*x0*x0-1
  Fx1=4*x1*x1-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


U03-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=4*x*((x+x)*x-1)
  Ty=4*y*((y+y)*y-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


U03-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU02-U01
  bailout=p1+4, z=pixel:
  z=4*z*(2*z*z-1)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


U03-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  const=p1, z=pixel:
  z=4*z*((z+z)*z-1)+const
  |z|<100
  ;SOURCE: chby3.frm
}


U03-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  const=pixel, z=p1:
  z=4*z*((z+z)*z-1)+const
  |z|<100
  ;SOURCE: chby4.frm
}


U03-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=z*z
  f=4*z*(2*a-1)
  fd=4*(6*a-1)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


U03-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=z*z
  f=4*z*(a+a-1)
  fd=4*(6*a-1)
  fdd=48*z
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


U03-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU02-U01
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=4*z*(zz+zz-1)
  fd=24*zz-4
  oz=z
  w=z-f/fd
  fw=4*w*((w+w)*w-1)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


U03-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(4*x*((x+x)*x-1))
  Ty=sin(4*y*((y+y)*y-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


U03-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(4*x*((x+x)*x-1))
  Ty=fn1(4*y*((y+y)*y-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


U03-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=4*p1*((p1+p1)*p1-1):
  zt=z
  foz=fz
  fz=4*z*((z+z)*z-1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


U03-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  const=p1, z=pixel:
  z=4*z*((z+z)*z-1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


U03-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  const=pixel, z=p1:
  z=4*z*((z+z)*z-1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


U03-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=z*z
  f=4*z*(2*a-1)
  fd=4*(6*a-1)
  fdd=48*z
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


U03-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU02-U01
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=4*z*(zz+zz-1)
  fd=24*zz-4
  oz=z
  w=z-f/fd
  fw=4*w*((w+w)*w-1)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


U03-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=z*z
  f=4*z*(2*a-1)
  fd=4*(6*a-1)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


U03-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=4*p1*((p1+p1)*p1-1):
  zt=z
  foz=fz
  fz=4*z*((z+z)*z-1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


U03-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  fz=4*z*((z+z)*z-1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


U03-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  fz=4*z*((z+z)*z-1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


U03-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(4*x*((x+x)*x-1))
  x=x-t*(4*y*((y+y)*y-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


U03-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(4*x*((x+x)*x-1))
  x=x-t*sin(4*y*((y+y)*y-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


U03-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(4*x*((x+x)*x-1)))
  x=x-t*(fn1(4*y*((y+y)*y-1)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


U03-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(4*x*((x+x)*x-1))
  Ty=fn2(4*y*((y+y)*y-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


U03-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(4*x*((x+x)*x-1))
  Ty=fn2(4*y*((y+y)*y-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


U03-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(4*x*((x+x)*x-1)))
  x=x-t*(fn2(4*y*((y+y)*y-1)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


U03-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(fn1(4*x*((x+x)*x-1)))
  x=x-t*(fn2(4*y*((y+y)*y-1)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


U03-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=(fn1(4*x*((x+x)*x-1)))
  Ty=(fn1(4*y*((y+y)*y-1)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


U03-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=(fn1(4*x*((x+x)*x-1)))
  Ty=(fn1(4*y*((y+y)*y-1)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


U03-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=(fn1(4*x*((x+x)*x-1)))
  Ty=(fn1(4*y*((y+y)*y-1)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


U03-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=(fn1(4*x*((x+x)*x-1)))
  Ty=(fn1(4*y*((y+y)*y-1)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


U03-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=4*x0*((x0+x0)*x0-1)
  Fx1=4*x1*((x1+x1)*x1-1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


U04-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x*x, ay=4*y*y
  Tx=ax*(ax-3)+1
  Ty=ay*(ay-3)+1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


U04-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU03-U02
  bailout=p1+4, z=pixel:
  a=4*z*z
  z=a*(a-3)+1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


U04-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  const=p1+1, z=pixel:
  a=4*z*z
  z=a*(a-3)+const
  |z|<100
  ;SOURCE: chby3.frm
}


U04-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  const=pixel+1, z=p1:
  a=4*z*z
  z=a*(a-3)+const
  |z|<100
  ;SOURCE: chby4.frm
}


U04-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=4*z*z
  f=a*(a-3)+1
  fd=8*z*(2*a-3)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


U04-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  f=a*(a-3)+1
  fd=8*z*(a+a-3)
  fdd=24*(8*zz-1)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


U04-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU03-U02
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  f=a*(a-3)+1
  fd=8*z*(8*zz-3)
  oz=z
  w=z-f/fd
  a=4*w*w
  fw=a*(a-3)+1
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


U04-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x*x, ay=4*y*y
  Tx=sin(ax*(ax-3)+1)
  Ty=sin(ay*(ay-3)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


U04-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x*x, ay=4*y*y
  Tx=fn1(ax*(ax-3)+1)
  Ty=fn1(ay*(ay-3)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


U04-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1*p1
  fz=a*(a-3)+1:
  a=4*z*z
  zt=z
  foz=fz
  fz=a*(a-3)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


U04-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  const=p1, z=pixel:
  a=4*z*z
  z=(a*(a-3)+1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


U04-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  const=pixel, z=p1:
  a=4*z*z
  z=(a*(a-3)+1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


U04-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  f=a*(a-3)+1
  fd=8*z*(2*a-3)
  fdd=24*(8*zz-1)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


U04-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU03-U02
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  f=a*(a-3)+1
  fd=8*z*(8*zz-3)
  oz=z
  w=z-f/fd
  a=4*w*w
  fw=a*(a-3)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


U04-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=4*z*z
  f=a*(a-3)+1
  fd=8*z*(2*a-3)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


U04-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1*p1
  fz=a*(a-3)+1:
  a=4*z*z
  zt=z
  foz=fz
  fz=a*(a-3)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


U04-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  z=pixel, oz=0
  fz=1
  a=4*z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=a*(a-3)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


U04-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  z=pixel, oz=0
  fz=1
  a=4*z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=a*(a-3)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


U04-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x*x
  y=y+t*(ax*(ax-3)+1)
  ay=4*y*y
  x=x-t*(ay*(ay-3)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


U04-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x*x
  y=y+t*sin(ax*(ax-3)+1)
  ay=4*y*y
  x=x-t*sin(ay*(ay-3)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


U04-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x*x
  y=y+t*(fn1(ax*(ax-3)+1))
  ay=4*y*y
  x=x-t*(fn1(ay*(ay-3)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


U04-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x*x, ay=4*y*y
  Tx=fn1(ax*(ax-3)+1)
  Ty=fn2(ay*(ay-3)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


U04-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x*x, ay=4*y*y
  Tx=fn1(ax*(ax-3)+1)
  Ty=fn2(ay*(ay-3)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


U04-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x*x
  y=y+t*(fn1(ax*(ax-3)+1))
  ay=4*y*y
  x=x-t*(fn2(ay*(ay-3)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


U04-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x*x
  y=y+t*(fn1(ax*(ax-3)+1))
  ay=4*y*y
  x=x-t*(fn2(ay*(ay-3)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


U04-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  ax=4*x*x
  Tx=(fn1(ax*(ax-3)+1))
  ay=4*y*y
  Ty=(fn1(ay*(ay-3)+1))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


U04-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  ax=4*x*x
  Tx=(fn1(ax*(ax-3)+1))
  ay=4*y*y
  Ty=(fn1(ay*(ay-3)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


U04-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  ax=4*x*x
  Tx=(fn1(ax*(ax-3)+1))
  ay=4*y*y
  Ty=(fn1(ay*(ay-3)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


U04-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x*x
  Tx=(fn1(ax*(ax-3)+1))
  ay=4*y*y
  Ty=(fn1(ay*(ay-3)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


U04-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax=4*x0*x0, ax1=4*x1*x1
  Fx0=ax*(ax-3)+1
  Fx1=ax1*(ax1-3)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


U05-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=(x+x)*(16*xx*(xx-1)+3)
  Ty=(y+y)*(16*yy*(yy-1)+3)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


U05-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU04-U03
  bailout=p1+4, z=pixel:
  zz=z*z
  z=2*z*(16*zz*(zz-1)+3)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


U05-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  const=p1, z=pixel:
  zz=z*z
  z=(z+z)*(16*z*(z-1)+3)+const
  |z|<100
  ;SOURCE: chby3.frm
}


U05-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  const=pixel, z=p1:
  zz=z*z
  z=(z+z)*(16*z*(z-1)+3)+const
  |z|<100
  ;SOURCE: chby4.frm
}


U05-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=2*z*(16*zz*(zz-1)+3)
  fd=32*zz*(5*zz-3)+6
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


U05-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(z+z)*(16*zz*(zz-1)+3)
  fd=32*zz*(5*zz-3)+6
  fdd=64*z*(10*zz-3)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


U05-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU04-U03
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(z+z)*(16*zz*(zz-1)+3)
  fd=32*zz*(5*zz-3)+6
  oz=z
  w=z-f/fd
  ww=w*w
  fw=(w+w)*(16*ww*(ww-1)+3)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


U05-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin((x+x)*(16*xx*(xx-1)+3))
  Ty=sin((y+y)*(16*yy*(yy-1)+3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


U05-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1((x+x)*(16*xx*(xx-1)+3))
  Ty=fn1((y+y)*(16*yy*(yy-1)+3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


U05-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=(p1+p1)*(16*zz*(zz-1)+3):
  zz=z*z
  zt=z
  foz=fz
  fz=(z+z)*(16*zz*(zz-1)+3)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


U05-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  const=p1, z=pixel:
  zz=z*z
  z=(z+z)*(16*z*(z-1)+3)*const
  |z|<100
  ;SOURCE: chby11.frm
}


U05-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  const=pixel, z=p1:
  zz=z*z
  z=(z+z)*(16*z*(z-1)+3)*const
  |z|<100
  ;SOURCE: chby12.frm
}


U05-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=2*z*(16*zz*(zz-1)+3)
  fd=32*zz*(5*zz-3)+6
  fdd=64*z*(10*zz-3)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


U05-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU04-U03
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(z+z)*(16*zz*(zz-1)+3)
  fd=32*zz*(5*zz-3)+6
  oz=z
  w=z-f/fd
  ww=w*w
  fw=(w+w)*(16*ww*(ww-1)+3)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


U05-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=2*z*(16*zz*(zz-1)+3)
  fd=32*zz*(5*zz-3)+6
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


U05-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=(p1+p1)*(16*zz*(zz-1)+3):
  zz=z*z
  zt=z
  foz=fz
  fz=(z+z)*(16*zz*(zz-1)+3)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


U05-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=(z+z)*(16*zz*(zz-1)+3)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


U05-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=(z+z)*(16*zz*(zz-1)+3)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


U05-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*((x+x)*(16*xx*(xx-1)+3))
  yy=y*y
  x=x-t*((y+y)*(16*yy*(yy-1)+3))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


U05-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin((x+x)*(16*xx*(xx-1)+3))
  yy=y*y
  x=x-t*sin((y+y)*(16*yy*(yy-1)+3))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


U05-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1((x+x)*(16*xx*(xx-1)+3)))
  yy=y*y
  x=x-t*(fn1((y+y)*(16*yy*(yy-1)+3)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


U05-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1((x+x)*(16*xx*(xx-1)+3))
  Ty=fn2((y+y)*(16*yy*(yy-1)+3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


U05-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1((x+x)*(16*xx*(xx-1)+3))
  Ty=fn2((y+y)*(16*yy*(yy-1)+3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


U05-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1((x+x)*(16*xx*(xx-1)+3)))
  yy=y*y
  x=x-t*(fn2((y+y)*(16*yy*(yy-1)+3)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


U05-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1((x+x)*(16*xx*(xx-1)+3)))
  yy=y*y
  x=x-t*(fn2((y+y)*(16*yy*(yy-1)+3)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


U05-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1((x+x)*(16*xx*(xx-1)+3)))
  yy=y*y
  Ty=(fn1((y+y)*(16*yy*(yy-1)+3)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


U05-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1((x+x)*(16*xx*(xx-1)+3)))
  yy=y*y
  Ty=(fn1((y+y)*(16*yy*(yy-1)+3)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


U05-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1((x+x)*(16*xx*(xx-1)+3)))
  yy=y*y
  Ty=(fn1((y+y)*(16*yy*(yy-1)+3)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


U05-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1((x+x)*(16*xx*(xx-1)+3)))
  yy=y*y
  Ty=(fn1((y+y)*(16*yy*(yy-1)+3)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


U05-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=(x0+x0)*(16*xx*(xx-1)+3)
  Fx1=(x1+x1)*(16*yy*(yy-1)+3)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


U06-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=8*xx*((xx+xx)*(4*xx-5)+3)-1
  Ty=8*yy*((yy+yy)*(4*yy-5)+3)-1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


U06-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU05-U04
  bailout=p1+4, z=pixel:
  zz=z*z
  z=8*zz*(2*zz*(4*zz-5)+3)-1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


U06-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  const=p1-1, z=pixel:
  zz=z*z
  z=8*zz*((zz+zz)*(4*zz-5)+3)+const
  |z|<100
  ;SOURCE: chby3.frm
}


U06-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  const=pixel-1, z=p1:
  zz=z*z
  z=8*zz*((zz+zz)*(4*zz-5)+3)+const
  |z|<100
  ;SOURCE: chby4.frm
}


U06-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  f=8*zz*(a*(4*zz-5)+3)-1
  fd=32*z*(a*(6*zz-5)+3)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


U06-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  f=8*zz*(a*(4*zz-5)+3)-1
  fd=32*z*(a*(6*zz-5)+3)
  fdd=96*(10*zz*(a-1)+1)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


U06-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU05-U04
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  f=8*zz*(a*(a+a-5)+3)-1
  fd=32*z*(a*(6*zz-5)+3)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=8*ww*((ww+ww)*(4*ww-5)+3)-1
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


U06-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(8*xx*((xx+xx)*(4*xx-5)+3)-1)
  Ty=sin(8*yy*((yy+yy)*(4*yy-5)+3)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


U06-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(8*xx*((xx+xx)*(4*xx-5)+3)-1)
  Ty=fn1(8*yy*((yy+yy)*(4*yy-5)+3)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


U06-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=8*zz*((zz+zz)*(4*zz-5)+3)-1:
  zz=z*z
  zt=z
  foz=fz
  fz=8*zz*((zz+zz)*(4*zz-5)+3)-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


U06-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  const=p1, z=pixel:
  zz=z*z
  z=(8*zz*((zz+zz)*(4*zz-5)+3)-1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


U06-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  const=pixel, z=p1:
  zz=z*z
  z=(8*zz*((zz+zz)*(4*zz-5)+3)-1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


U06-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  f=8*zz*(a*(4*zz-5)+3)-1
  fd=32*z*(a*(6*zz-5)+3)
  fdd=96*(10*zz*(a-1)+1)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


U06-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU05-U04
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  f=8*zz*(a*(a+a-5)+3)-1
  fd=32*z*(a*(6*zz-5)+3)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=8*ww*((ww+ww)*(4*ww-5)+3)-1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


U06-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  f=8*zz*(a*(4*zz-5)+3)-1
  fd=32*z*(a*(6*zz-5)+3)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


U06-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=8*zz*((zz+zz)*(4*zz-5)+3)-1:
  zz=z*z
  zt=z
  foz=fz
  fz=8*zz*((zz+zz)*(4*zz-5)+3)-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


U06-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  z=pixel, oz=0
  fz=-1
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=8*zz*((zz+zz)*(4*zz-5)+3)-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


U06-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  z=pixel, oz=0
  fz=-1
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=8*zz*((zz+zz)*(4*zz-5)+3)-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


U06-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(8*xx*((xx+xx)*(4*xx-5)+3)-1)
  yy=y*y
  x=x-t*(8*yy*((yy+yy)*(4*yy-5)+3)-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


U06-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*sin(8*xx*((xx+xx)*(4*xx-5)+3)-1)
  yy=y*y
  x=x-t*sin(8*yy*((yy+yy)*(4*yy-5)+3)-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


U06-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(8*xx*((xx+xx)*(4*xx-5)+3)-1))
  yy=y*y
  x=x-t*(fn1(8*yy*((yy+yy)*(4*yy-5)+3)-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


U06-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(8*xx*((xx+xx)*(4*xx-5)+3)-1)
  Ty=fn2(8*yy*((yy+yy)*(4*yy-5)+3)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


U06-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=fn1(8*xx*((xx+xx)*(4*xx-5)+3)-1)
  Ty=fn2(8*yy*((yy+yy)*(4*yy-5)+3)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


U06-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(8*xx*((xx+xx)*(4*xx-5)+3)-1))
  yy=y*y
  x=x-t*(fn2(8*yy*((yy+yy)*(4*yy-5)+3)-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


U06-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(8*xx*((xx+xx)*(4*xx-5)+3)-1))
  yy=y*y
  x=x-t*(fn2(8*yy*((yy+yy)*(4*yy-5)+3)-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


U06-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(8*xx*((xx+xx)*(4*xx-5)+3)-1))
  yy=y*y
  Ty=(fn1(8*yy*((yy+yy)*(4*yy-5)+3)-1))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


U06-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(8*xx*((xx+xx)*(4*xx-5)+3)-1))
  yy=y*y
  Ty=(fn1(8*yy*((yy+yy)*(4*yy-5)+3)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


U06-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x
  Tx=(fn1(8*xx*((xx+xx)*(4*xx-5)+3)-1))
  yy=y*y
  Ty=(fn1(8*yy*((yy+yy)*(4*yy-5)+3)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


U06-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  Tx=(fn1(8*xx*((xx+xx)*(4*xx-5)+3)-1))
  yy=y*y
  Ty=(fn1(8*yy*((yy+yy)*(4*yy-5)+3)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


U06-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=8*xx*((xx+xx)*(4*xx-5)+3)-1
  Fx1=8*yy*((yy+yy)*(4*yy-5)+3)-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


U07-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=xx+xx, ay=yy+yy
  Tx=8*x*(ax*(4*xx*(ax-3)+5)-1)
  Ty=8*y*(ay*(4*yy*(ay-3)+5)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


U07-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU06-U05
  bailout=p1+4, z=pixel:
  zz=z*z
  a=2*zz
  z=8*z*(a*(4*zz*(a-3)+5)-1)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


U07-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  const=p1-1, z=pixel:
  zz=z*z
  a=zz+zz
  z=8*z*(a*((a+a)*(a-3)+5)-1)+const
  |z|<100
  ;SOURCE: chby3.frm
}


U07-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  const=pixel-1, z=p1:
  zz=z*z
  a=zz+zz
  z=8*z*(a*(4*zz*(a-3)+5)-1)+const
  |z|<100
  ;SOURCE: chby4.frm
}


U07-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  b=4*zz
  f=8*z*(a*(b*(a-3)+5)-1)
  fd=16*zz*(b*(14*zz-15)+15)-8
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


U07-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  f=8*z*(a*(b*(a-3)+5)-1)
  fd=16*zz*(b*(14*zz-15)+15)-8
  fdd=96*z*(8*zz*(7*zz-5)+5)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


U07-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU06-U05
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  f=8*z*(a*(b*(a-3)+5)-1)
  fd=16*zz*(b*(14*zz-15)+15)-8
  oz=z
  w=z-f/fd
  ww=w*w
  a=ww+ww
  fw=8*w*(a*(4*ww*(a-3)+5)-1)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


U07-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=xx+xx, ay=yy+yy
  Tx=sin(8*x*(ax*(4*xx*(ax-3)+5)-1))
  Ty=sin(8*y*(ay*(4*yy*(ay-3)+5)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


U07-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=xx+xx, ay=yy+yy
  Tx=fn1(8*x*(ax*(4*xx*(ax-3)+5)-1))
  Ty=fn1(8*y*(ay*(4*yy*(ay-3)+5)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


U07-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  a=zz+zz
  fz=8*p1*(a*(4*zz*(a-3)+5)-1):
  zz=z*z
  a=zz+zz
  zt=z
  foz=fz
  fz=8*z*(a*(4*zz*(a-3)+5)-1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


U07-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  const=p1, z=pixel:
  zz=z*z
  a=zz+zz
  z=(8*z*(a*(4*zz*(a-3)+5)-1)-1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


U07-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  const=pixel, z=p1:
  zz=z*z
  a=zz+zz
  z=8*z*(a*(4*zz*(a-3)+5)-1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


U07-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  b=4*zz
  f=8*z*(a*(b*(a-3)+5)-1)
  fd=16*zz*(b*(14*zz-15)+15)-8
  fdd=96*z*(8*zz*(7*zz-5)+5)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


U07-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU06-U05
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  f=8*z*(a*(b*(a-3)+5)-1)
  fd=16*zz*(b*(14*zz-15)+15)-8
  oz=z
  w=z-f/fd
  ww=w*w
  a=ww+ww
  fw=8*w*(a*(4*ww*(a-3)+5)-1)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


U07-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=2*zz
  b=4*zz
  f=8*z*(a*(b*(a-3)+5)-1)
  fd=16*zz*(b*(14*zz-15)+15)-8
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


U07-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  a=zz+zz
  fz=8*p1*(a*(4*zz*(a-3)+5)-1):
  zz=z*z
  a=zz+zz
  zt=z
  foz=fz
  fz=8*z*(a*(4*zz*(a-3)+5)-1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


U07-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  z=pixel, oz=0
  fz=0
  zz=z*z
  a=zz+zz
  zt=fn1(z)+p1:
  foz=fz
  fz=8*z*(a*(4*zz*(a-3)+5)-1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


U07-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  z=pixel, oz=0
  fz=0
  zz=z*z
  a=zz+zz
  zt=fn1(z)+p1:
  foz=fz
  fz=8*z*(a*(4*zz*(a-3)+5)-1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


U07-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  y=y+t*(8*x*(ax*(4*xx*(ax-3)+5)-1))
  yy=y*y, ay=yy+yy
  x=x-t*(8*y*(ay*(4*yy*(ay-3)+5)-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


U07-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  y=y+t*sin(8*x*(ax*(4*xx*(ax-3)+5)-1))
  yy=y*y, ay=yy+yy
  x=x-t*sin(8*y*(ay*(4*yy*(ay-3)+5)-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


U07-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  y=y+t*(fn1(8*x*(ax*(4*xx*(ax-3)+5)-1)))
  yy=y*y, ay=yy+yy
  x=x-t*(fn1(8*y*(ay*(4*yy*(ay-3)+5)-1)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


U07-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=xx+xx, ay=yy+yy
  Tx=fn1(8*x*(ax*(4*xx*(ax-3)+5)-1))
  Ty=fn2(8*y*(ay*(4*yy*(ay-3)+5)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


U07-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=xx+xx, ay=yy+yy
  Tx=fn1(8*x*(ax*(4*xx*(ax-3)+5)-1))
  Ty=fn2(8*y*(ay*(4*yy*(ay-3)+5)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


U07-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  y=y+t*(fn1(8*x*(ax*(4*xx*(ax-3)+5)-1)))
  yy=y*y, ay=yy+yy
  x=x-t*(fn2(8*y*(ay*(4*yy*(ay-3)+5)-1)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


U07-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  y=y+t*(fn1(8*x*(ax*(4*xx*(ax-3)+5)-1)))
  yy=y*y, ay=yy+yy
  x=x-t*(fn2(8*y*(ay*(4*yy*(ay-3)+5)-1)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


U07-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  Tx=(fn1(8*x*(ax*(4*xx*(ax-3)+5)-1)))
  yy=y*y, ay=yy+yy
  Ty=(fn1(8*y*(ay*(4*yy*(ay-3)+5)-1)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


U07-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x, ax=xx+xx
  Tx=(fn1(8*x*(ax*(4*xx*(ax-3)+5)-1)))
  yy=y*y, ay=yy+yy
  Ty=(fn1(8*y*(ay*(4*yy*(ay-3)+5)-1)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


U07-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x, ax=xx+xx
  Tx=(fn1(8*x*(ax*(4*xx*(ax-3)+5)-1)))
  yy=y*y, ay=yy+yy
  Ty=(fn1(8*y*(ay*(4*yy*(ay-3)+5)-1)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


U07-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  Tx=(fn1(8*x*(ax*(4*xx*(ax-3)+5)-1)))
  yy=y*y, ay=yy+yy
  Ty=(fn1(8*y*(ay*(4*yy*(ay-3)+5)-1)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


U07-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  ax=xx+xx, ax1=yy+yy
  Fx0=8*x0*(ax*(4*xx*(ax-3)+5)-1)
  Fx1=8*x1*(ax1*(4*yy*(ax1-3)+5)-1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


U08-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=4*xx, ay=4*yy
  Tx=8*xx*((xx+xx)*(ax*(ax-7)+15)-5)+1
  Ty=8*yy*((yy+yy)*(ay*(ay-7)+15)-5)+1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


U08-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU07-U06
  bailout=p1+4, z=pixel:
  zz=z*z
  a=4*zz
  z=8*zz*(2*zz*(a*(a-7)+15)-5)+1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


U08-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  const=p1+1, z=pixel:
  zz=z*z
  a=4*zz
  z=8*zz*((zz+zz)*(a*(a-7)+15)-5)+const
  |z|<100
  ;SOURCE: chby3.frm
}


U08-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  const=pixel+1, z=p1:
  zz=z*z
  a=4*zz
  z=8*zz*((zz+zz)*(a*(a-7)+15)-5)+const
  |z|<100
  ;SOURCE: chby4.frm
}


U08-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  b=2*zz
  f=8*zz*(b*(a*(a-7)+15)-5)+1
  fd=16*z*(4*zz*(b*(16*zz-21)+15)-5)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


U08-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  b=zz+zz
  c=16*zz
  f=8*zz*(b*(a*(a-7)+15)-5)+1
  fd=16*z*(a*(b*(c-21)+15)-5)
  fdd=16*(a*(14*zz*(c-15)+45)-5)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


U08-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU07-U06
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  b=zz+zz
  f=8*zz*(b*(a*(a-7)+15)-5)-1
  fd=16*z*(4*zz*(b*(16*zz-21)+15)-5)
  oz=z
  w=z-f/fd
  ww=w*w
  a=4*ww
  fw=8*ww*((ww+ww)*(a*(a-7)+15)-5)-1
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


U08-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=4*xx, ay=4*yy
  Tx=sin(8*xx*((xx+xx)*(ax*(ax-7)+15)-5)+1)
  Ty=sin(8*yy*((yy+yy)*(ay*(ay-7)+15)-5)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


U08-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=4*xx, ay=4*yy
  Tx=fn1(8*xx*((xx+xx)*(ax*(ax-7)+15)-5)+1)
  Ty=fn1(8*yy*((yy+yy)*(ay*(ay-7)+15)-5)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


U08-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  a=4*zz
  fz=8*zz*((zz+zz)*(a*(a-7)+15)-5)+1:
  zz=z*z
  a=4*zz
  zt=z
  foz=fz
  fz=8*zz*((zz+zz)*(a*(a-7)+15)-5)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


U08-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  const=p1, z=pixel:
  zz=z*z
  a=4*zz
  z=(8*zz*((zz+zz)*(a*(a-7)+15)-5)+1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


U08-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  const=pixel, z=p1:
  zz=z*z
  a=4*zz
  z=(8*zz*((zz+zz)*(a*(a-7)+15)-5)+1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


U08-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  b=2*zz
  c=16*zz
  f=8*zz*(b*(a*(a-7)+15)-5)+1
  fd=16*z*(a*(b*(c-21)+15)-5)
  fdd=16*(a*(14*zz*(c-15)+45)-5)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


U08-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU07-U06
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  b=zz+zz
  f=8*zz*(b*(a*(a-7)+15)-5)-1
  fd=16*z*(4*zz*(b*(16*zz-21)+15)-5)
  oz=z
  w=z-f/fd
  ww=w*w
  a=4*ww
  fw=8*ww*((ww+ww)*(a*(a-7)+15)-5)-1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


U08-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  b=2*zz
  f=8*zz*(b*(a*(a-7)+15)-5)+1
  fd=16*z*(4*zz*(b*(16*zz-21)+15)-5)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


U08-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  a=4*zz
  fz=8*zz*((zz+zz)*(a*(a-7)+15)-5)+1:
  zz=z*z
  a=4*zz
  zt=z
  foz=fz
  fz=8*zz*((zz+zz)*(a*(a-7)+15)-5)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


U08-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  z=pixel, oz=0
  fz=1
  zz=z*z
  a=4*zz
  zt=fn1(z)+p1:
  foz=fz
  fz=8*zz*((zz+zz)*(a*(a-7)+15)-5)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


U08-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  z=pixel, oz=0
  fz=1
  zz=z*z
  a=4*zz
  zt=fn1(z)+p1:
  foz=fz
  fz=8*zz*((zz+zz)*(a*(a-7)+15)-5)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


U08-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=4*xx
  y=y+t*(8*xx*((xx+xx)*(ax*(ax-7)+15)-5)+1)
  yy=y*y, ay=4*yy
  x=x-t*(8*yy*((yy+yy)*(ay*(ay-7)+15)-5)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


U08-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=4*xx
  y=y+t*sin(8*xx*((xx+xx)*(ax*(ax-7)+15)-5)+1)
  yy=y*y, ay=4*yy
  x=x-t*sin(8*yy*((yy+yy)*(ay*(ay-7)+15)-5)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


U08-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=4*xx
  y=y+t*(fn1(8*xx*((xx+xx)*(ax*(ax-7)+15)-5)+1))
  yy=y*y, ay=4*yy
  x=x-t*(fn1(8*yy*((yy+yy)*(ay*(ay-7)+15)-5)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


U08-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=4*xx, ay=4*yy
  Tx=fn1(8*xx*((xx+xx)*(ax*(ax-7)+15)-5)+1)
  Ty=fn2(8*yy*((yy+yy)*(ay*(ay-7)+15)-5)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


U08-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=4*xx, ay=4*yy
  Tx=fn1(8*xx*((xx+xx)*(ax*(ax-7)+15)-5)+1)
  Ty=fn2(8*yy*((yy+yy)*(ay*(ay-7)+15)-5)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


U08-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, ax=4*xx
  y=y+t*(fn1(8*xx*((xx+xx)*(ax*(ax-7)+15)-5)+1))
  yy=y*y, ay=4*yy
  x=x-t*(fn2(8*yy*((yy+yy)*(ay*(ay-7)+15)-5)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


U08-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=4*xx
  y=y+t*(fn1(8*xx*((xx+xx)*(ax*(ax-7)+15)-5)+1))
  yy=y*y, ay=4*yy
  x=x-t*(fn2(8*yy*((yy+yy)*(ay*(ay-7)+15)-5)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


U08-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x, ax=4*xx
  Tx=(fn1(8*xx*((xx+xx)*(ax*(ax-7)+15)-5)+1))
  yy=y*y, ay=4*yy
  Ty=(fn1(8*yy*((yy+yy)*(ay*(ay-7)+15)-5)+1))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


U08-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x, ax=4*xx
  Tx=(fn1(8*xx*((xx+xx)*(ax*(ax-7)+15)-5)+1))
  yy=y*y, ay=4*yy
  Ty=(fn1(8*yy*((yy+yy)*(ay*(ay-7)+15)-5)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


U08-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x, ax=4*xx
  Tx=(fn1(8*xx*((xx+xx)*(ax*(ax-7)+15)-5)+1))
  yy=y*y, ay=4*yy
  Ty=(fn1(8*yy*((yy+yy)*(ay*(ay-7)+15)-5)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


U08-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=4*xx
  Tx=(fn1(8*xx*((xx+xx)*(ax*(ax-7)+15)-5)+1))
  yy=y*y, ay=4*yy
  Ty=(fn1(8*yy*((yy+yy)*(ay*(ay-7)+15)-5)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


U08-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  ax=4*xx, ax1=4*yy
  Fx0=8*xx*((xx+xx)*(ax*(ax-7)+15)-5)+1
  Fx1=8*yy*((yy+yy)*(ax1*(ax1-7)+15)-5)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


U09-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=16*xx, ay=16*yy
  Tx=(x+x)*(ax*(xx*(ax*(xx-2)+17)-5)-3)
  Ty=(y+y)*(ay*(yy*(ay*(yy-2)+17)-5)-3)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


U09-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU08-U07
  bailout=p1+4, z=pixel:
  zz=z*z
  a=16*zz
  z=2*z*(a*(zz*(a*(zz-2)+17)-5)-3)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


U09-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  const=p1, z=pixel:
  zz=z*z
  a=16*zz
  z=(z+z)*(a*(zz*(a*(zz-2)+17)-5)-3)+const
  |z|<100
  ;SOURCE: chby3.frm
}


U09-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  const=pixel, z=p1:
  zz=z*z
  a=16*zz
  z=(z+z)*(a*(zz*(a*(zz-2)+17)-5)-3)+const
  |z|<100
  ;SOURCE: chby4.frm
}


U09-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=16*zz
  f=2*z*(a*(zz*(a*(zz-2)+17)-5)-3)
  fd=32*zz*(zz*(a*(zz*(8*zz-11)-2)+85)-25)-6
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


U09-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=16*zz
  b=32*zz
  f=(z+z)*(a*(zz*(a*(zz-2)+17)-5)-3)
  fd=b*(zz*(a*(zz*(8*zz-11)-2)+85)-25)-6
  fdd=64*z*((zz+zz)*(b*(zz*(10*zz-11)-768)+85)-25)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


U09-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU08-U07
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=16*zz
  f=(z+z)*(a*(zz*(a*(zz-2)+17)-5)-3)
  fd=32*zz*(zz*(a*(zz*(8*zz-11)-2)+85)-25)-6
  oz=z
  w=z-f/fd
  ww=w*w
  a=16*ww
  fw=(w+w)*(a*(ww*(a*(ww-2)+17)-5)-3)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


U09-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=16*xx, ay=16*yy
  Tx=sin((x+x)*(ax*(xx*(ax*(xx-2)+17)-5)-3))
  Ty=sin((y+y)*(ay*(yy*(ay*(yy-2)+17)-5)-3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


U09-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=16*xx, ay=16*yy
  Tx=fn1((x+x)*(ax*(xx*(ax*(xx-2)+17)-5)-3))
  Ty=fn1((y+y)*(ay*(yy*(ay*(yy-2)+17)-5)-3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


U09-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  a=16*zz
  fz=(p1+p1)*(a*(zz*(a*(zz-2)+17)-5)-3):
  zz=z*z
  a=16*zz
  zt=z
  foz=fz
  fz=(z+z)*(a*(zz*(a*(zz-2)+17)-5)-3)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


U09-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  const=p1, z=pixel:
  zz=z*z
  a=16*zz
  z=(z+z)*(a*(zz*(a*(zz-2)+17)-5)-3)*const
  |z|<100
  ;SOURCE: chby11.frm
}


U09-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  const=pixel, z=p1:
  zz=z*z
  a=16*zz
  z=(z+z)*(a*(zz*(a*(zz-2)+17)-5)-3)*const
  |z|<100
  ;SOURCE: chby12.frm
}


U09-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=16*zz
  b=32*zz
  f=2*z*(a*(zz*(a*(zz-2)+17)-5)-3)
  fd=b*(zz*(a*(zz*(8*zz-11)-2)+85)-25)-6
  fdd=64*z*(2*zz*(b*(zz*(10*zz-11)-768)+85)-25)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


U09-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU08-U07
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=16*zz
  f=(z+z)*(a*(zz*(a*(zz-2)+17)-5)-3)
  fd=32*zz*(zz*(a*(zz*(8*zz-11)-2)+85)-25)-6
  oz=z
  w=z-f/fd
  ww=w*w
  a=16*ww
  fw=(w+w)*(a*(ww*(a*(ww-2)+17)-5)-3)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


U09-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=16*zz
  f=2*z*(a*(zz*(a*(zz-2)+17)-5)-3)
  fd=32*zz*(zz*(a*(zz*(8*zz-11)-2)+85)-25)-6
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


U09-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  a=16*zz
  fz=(p1+p1)*(a*(zz*(a*(zz-2)+17)-5)-3):
  zz=z*z
  a=16*zz
  zt=z
  foz=fz
  fz=(z+z)*(a*(zz*(a*(zz-2)+17)-5)-3)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


U09-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  z=pixel, oz=0
  zz=0*0
  a=16*zz
  fz=0
  zz=z*z
  a=16*zz
  zt=fn1(z)+p1:
  foz=fz
  fz=(z+z)*(a*(zz*(a*(zz-2)+17)-5)-3)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


U09-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  z=pixel, oz=0
  zz=0*0
  a=16*zz
  fz=0
  zz=z*z
  a=16*zz
  zt=fn1(z)+p1:
  foz=fz
  fz=(z+z)*(a*(zz*(a*(zz-2)+17)-5)-3)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


U09-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x
  ax=16*xx
  y=y+t*((x+x)*(ax*(xx*(ax*(xx-2)+17)-5)-3))
  yy=y*y, ay=16*yy
  x=x-t*((y+y)*(ay*(yy*(ay*(yy-2)+17)-5)-3))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


U09-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=16*xx
  y=y+t*sin((x+x)*(ax*(xx*(ax*(xx-2)+17)-5)-3))
  yy=y*y, ay=16*yy
  x=x-t*sin((y+y)*(ay*(yy*(ay*(yy-2)+17)-5)-3))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


U09-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=16*xx
  y=y+t*(fn1((x+x)*(ax*(xx*(ax*(xx-2)+17)-5)-3)))
  yy=y*y, ay=16*yy
  x=x-t*(fn1((y+y)*(ay*(yy*(ay*(yy-2)+17)-5)-3)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


U09-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=16*xx, ay=16*yy
  Tx=fn1((x+x)*(ax*(xx*(ax*(xx-2)+17)-5)-3))
  Ty=fn2((y+y)*(ay*(yy*(ay*(yy-2)+17)-5)-3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


U09-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=16*xx, ay=16*yy
  Tx=fn1((x+x)*(ax*(xx*(ax*(xx-2)+17)-5)-3))
  Ty=fn2((y+y)*(ay*(yy*(ay*(yy-2)+17)-5)-3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


U09-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, ax=16*xx
  y=y+t*(fn1((x+x)*(ax*(xx*(ax*(xx-2)+17)-5)-3)))
  yy=y*y, ay=16*yy
  x=x-t*(fn2((y+y)*(ay*(yy*(ay*(yy-2)+17)-5)-3)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


U09-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=16*xx
  y=y+t*(fn1((x+x)*(ax*(xx*(ax*(xx-2)+17)-5)-3)))
  yy=y*y, ay=16*yy
  x=x-t*(fn2((y+y)*(ay*(yy*(ay*(yy-2)+17)-5)-3)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


U09-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x, ax=16*xx
  Tx=(fn1((x+x)*(ax*(xx*(ax*(xx-2)+17)-5)-3)))
  yy=y*y, ay=16*yy
  Ty=(fn1((y+y)*(ay*(yy*(ay*(yy-2)+17)-5)-3)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


U09-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x, ax=16*xx
  Tx=(fn1((x+x)*(ax*(xx*(ax*(xx-2)+17)-5)-3)))
  yy=y*y, ay=16*yy
  Ty=(fn1((y+y)*(ay*(yy*(ay*(yy-2)+17)-5)-3)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


U09-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x, ax=16*xx
  Tx=(fn1((x+x)*(ax*(xx*(ax*(xx-2)+17)-5)-3)))
  yy=y*y, ay=16*yy
  Ty=(fn1((y+y)*(ay*(yy*(ay*(yy-2)+17)-5)-3)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


U09-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=16*xx
  Tx=(fn1((x+x)*(ax*(xx*(ax*(xx-2)+17)-5)-3)))
  yy=y*y, ay=16*yy
  Ty=(fn1((y+y)*(ay*(yy*(ay*(yy-2)+17)-5)-3)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


U09-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  ax=16*xx, ax1=16*yy
  Fx0=(x0+x0)*(ax*(xx*(ax*(xx-2)+17)-5)-3)
  Fx1=(x1+x1)*(ax1*(yy*(ax1*(yy-2)+17)-5)-3)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


U10-01 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=4*xx, ay=4*yy
  Tx=ax*(ax*(16*xx*(xx*(ax-9)+6)-35)+7)-1
  Ty=ay*(ay*(16*yy*(yy*(ay-9)+6)-35)+7)-1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


U10-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU09-U08
  bailout=p1+4, z=pixel:
  zz=z*z
  a=4*zz
  z=a*(a*(16*zz*(zz*(a-9)+6)-35)+7)-1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


U10-03 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  const=p1-1, z=pixel:
  zz=z*z
  a=4*zz
  z=a*(a*(16*zz*(zz*(a-9)+6)-35)+7)+const
  |z|<100
  ;SOURCE: chby3.frm
}


U10-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  const=pixel-1, z=p1:
  zz=z*z
  a=4*zz
  z=a*(a*(16*zz*(zz*(a-9)+6)-35)+7)+const
  |z|<100
  ;SOURCE: chby4.frm
}


U10-05 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  b=16*zz
  f=a*(a*(b*(zz*(a-9)+6)-35)+7)-1
  fd=8*z*(8*zz*(b*(2*zz*(5*zz-9)+9)-35)+7)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


U10-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  b=16*zz
  c=zz+zz
  d=5*zz
  f=a*(a*(b*(zz*(a-9)+6)-35)+7)-1
  fd=8*z*(8*zz*(b*(c*(d-9)+9)-35)+7)
  fdd=8*(24*zz*(48*zz*(c*(d-7)+5)-35)+7)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


U10-07 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU09-U08
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  b=16*zz
  f=a*(a*(b*(zz*(a-9)+6)-35)+7)-1
  fd=8*z*(8*zz*(b*((zz+zz)*(5*zz-9)+9)-35)+7)
  oz=z
  w=z-f/fd
  ww=w*w
  a=4*ww
  fw=a*(a*(16*ww*(ww*(a-9)+6)-35)+7)-1
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


U10-08 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=4*xx, ay=4*yy
  Tx=sin(ax*(ax*(16*xx*(xx*(ax-9)+6)-35)+7)-1)
  Ty=sin(ay*(ay*(16*yy*(yy*(ay-9)+6)-35)+7)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


U10-09 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=4*xx, ay=4*yy
  Tx=fn1(ax*(ax*(16*xx*(xx*(ax-9)+6)-35)+7)-1)
  Ty=fn1(ay*(ay*(16*yy*(yy*(ay-9)+6)-35)+7)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


U10-10 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=z*z
  a=4*zz
  fz=a*(a*(16*zz*(zz*(a-9)+6)-35)+7)-1:
  zz=z*z
  a=4*zz
  zt=z
  foz=fz
  fz=a*(a*(16*zz*(zz*(a-9)+6)-35)+7)-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


U10-11 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  const=p1, z=pixel:
  zz=z*z
  a=4*zz
  z=(a*(a*(16*zz*(zz*(a-9)+6)-35)+7)-1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


U10-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  const=pixel, z=p1:
  zz=z*z
  a=4*zz
  z=(a*(a*(16*zz*(zz*(a-9)+6)-35)+7)-1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


U10-13 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  b=16*zz
  c=2*zz
  d=5*zz
  f=a*(a*(b*(zz*(a-9)+6)-35)+7)-1
  fd=8*z*(8*zz*(b*(c*(d-9)+9)-35)+7)
  fdd=8*(24*zz*(48*zz*(c*(d-7)+5)-35)+7)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


U10-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU09-U08
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  b=16*zz
  f=a*(a*(b*(zz*(a-9)+6)-35)+7)-1
  fd=8*z*(8*zz*(b*((zz+zz)*(5*zz-9)+9)-35)+7)
  oz=z
  w=z-f/fd
  ww=w*w
  a=4*ww
  fw=a*(a*(16*ww*(ww*(a-9)+6)-35)+7)-1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


U10-15 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  b=16*zz
  f=a*(a*(b*(zz*(a-9)+6)-35)+7)-1
  fd=8*z*(8*zz*(b*(2*zz*(5*zz-9)+9)-35)+7)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


U10-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=z*z
  a=4*zz
  fz=a*(a*(16*zz*(zz*(a-9)+6)-35)+7)-1:
  zz=z*z
  a=4*zz
  zt=z
  foz=fz
  fz=a*(a*(16*zz*(zz*(a-9)+6)-35)+7)-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


U10-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  z=pixel, oz=0
  fz=-1
  zz=z*z
  a=4*zz
  zt=fn1(z)+p1:
  foz=fz
  fz=a*(a*(16*zz*(zz*(a-9)+6)-35)+7)-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


U10-18 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  z=pixel, oz=0
  fz=-1
  zz=z*z
  a=4*zz
  zt=fn1(z)+p1:
  foz=fz
  fz=a*(a*(16*zz*(zz*(a-9)+6)-35)+7)-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


U10-19 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=4*xx
  y=y+t*(ax*(ax*(16*xx*(xx*(ax-9)+6)-35)+7)-1)
  yy=y*y, ay=4*yy
  x=x-t*(ay*(ay*(16*yy*(yy*(ay-9)+6)-35)+7)-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


U10-20 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=4*xx
  y=y+t*sin(ax*(ax*(16*xx*(xx*(ax-9)+6)-35)+7)-1)
  yy=y*y, ay=4*yy
  x=x-t*sin(ay*(ay*(16*yy*(yy*(ay-9)+6)-35)+7)-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


U10-21 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=4*xx
  y=y+t*(fn1(ax*(ax*(16*xx*(xx*(ax-9)+6)-35)+7)-1))
  yy=y*y, ay=4*yy
  x=x-t*(fn1(ay*(ay*(16*yy*(yy*(ay-9)+6)-35)+7)-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


U10-22 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=4*xx, ay=4*yy
  Tx=fn1(ax*(ax*(16*xx*(xx*(ax-9)+6)-35)+7)-1)
  Ty=fn2(ay*(ay*(16*yy*(yy*(ay-9)+6)-35)+7)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


U10-23 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  ax=4*xx, ay=4*yy
  Tx=fn1(ax*(ax*(16*xx*(xx*(ax-9)+6)-35)+7)-1)
  Ty=fn2(ay*(ay*(16*yy*(yy*(ay-9)+6)-35)+7)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


U10-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, ax=4*xx
  y=y+t*(fn1(ax*(ax*(16*xx*(xx*(ax-9)+6)-35)+7)-1))
  yy=y*y, ay=4*yy
  x=x-t*(fn2(ay*(ay*(16*yy*(yy*(ay-9)+6)-35)+7)-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


U10-25 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=4*xx
  y=y+t*(fn1(ax*(ax*(16*xx*(xx*(ax-9)+6)-35)+7)-1))
  yy=y*y, ay=4*yy
  x=x-t*(fn2(ay*(ay*(16*yy*(yy*(ay-9)+6)-35)+7)-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


U10-26 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  xx=x*x, ax=4*xx
  Tx=(fn1(ax*(ax*(16*xx*(xx*(ax-9)+6)-35)+7)-1))
  yy=y*y, ay=4*yy
  Ty=(fn1(ay*(ay*(16*yy*(yy*(ay-9)+6)-35)+7)-1))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


U10-27 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  xx=x*x, ax=4*xx
  Tx=(fn1(ax*(ax*(16*xx*(xx*(ax-9)+6)-35)+7)-1))
  yy=y*y, ay=4*yy
  Ty=(fn1(ay*(ay*(16*yy*(yy*(ay-9)+6)-35)+7)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


U10-28 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  xx=x*x, ax=4*xx
  Tx=(fn1(ax*(ax*(16*xx*(xx*(ax-9)+6)-35)+7)-1))
  yy=y*y, ay=4*yy
  Ty=(fn1(ay*(ay*(16*yy*(yy*(ay-9)+6)-35)+7)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


U10-29 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, ax=4*xx
  Tx=(fn1(ax*(ax*(16*xx*(xx*(ax-9)+6)-35)+7)-1))
  yy=y*y, ay=4*yy
  Ty=(fn1(ay*(ay*(16*yy*(yy*(ay-9)+6)-35)+7)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


U10-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  ax=4*xx, ax1=4*yy
  Fx0=ax*(ax*(16*xx*(xx*(ax-9)+6)-35)+7)-1
  Fx1=ax1*(ax1*(16*yy*(yy*(ax1-9)+6)-35)+7)-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


u4 {
  z=pixel, t=fn1(z^(2.2)), u=sin(z*z/(z+.2)), n=flip(z-real(log(z))):
  z=(fn2(z*z/(z+.2))/asin(z-flip(log(z))))^fn3(t+u+n)
  |z|<=4                         
  ;SOURCE: new.frm
}


Uc02-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (Euler method)
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  Tx=ax*ax-1
  Ty=ay*ay-1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Uc02-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  bailout=p1+4, z=pixel:
  x=real(z), y=imag(z)
  a=4*z-2
  z=a*a-1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Uc02-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Julia)
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  const=p1-1, z=pixel:
  a=4*z-2
  z=a*a+const
  |z|<100
  ;SOURCE: chby3.frm
}


Uc02-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Mandelbrot)
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  const=pixel-1, z=p1:
  a=4*z-2
  z=a*a+const
  |z|<100
  ;SOURCE: chby4.frm
}


Uc02-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Newton Method
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=4*z-2
  f=a*a-1
  fd=8*a
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Uc02-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Halley Method
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  r=p1
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2
  f=a*a-1
  fd=8*a
  oz=z
  z=z-r*f/(fd-16*f/fd)
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Uc02-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Bradley Beacham
         ; Cubic Method
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2
  f=a*a-1
  fd=8*a
  oz=z
  w=f-f/fd
  aw=w*w
  fw=aw*aw-1
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Uc02-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified Euler method)
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  Tx=sin(ax*ax-1)
  Ty=sin(ay*ay-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Uc02-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified Euler method)
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  Tx=fn1(ax*ax-1)
  Ty=fn1(ay*ay-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Uc02-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Mike Wareman:
         ; Secant Method
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1-2
  fz=a*a-1:
  zt=z
  foz=fz
  a=4*z-2
  f=a*a-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Uc02-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Julia)
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  const=p1, z=pixel:
  a=4*z-2
  z=(a*a-1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


Uc02-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Mandelbrot)
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  const=pixel, z=p1:
  a=4*z-2
  z=(a*a-1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


Uc02-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Halley Method with weird bailout test
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  r=p1
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2
  f=a*a-1
  fd=8*a
  oz=z
  z=z-r*f/(fd-16*f/fd)
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Uc02-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Bradley Beacham
         ; Cubic Method with weird bailout test
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2
  f=a*a-1
  fd=8*a
  oz=z
  w=f-f/fd
  aw=w*w
  fw=aw*aw-1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


Uc02-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Newton Method with weird bailout test
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=4*z-2
  f=a*a-1
  fd=8*a
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Uc02-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Mike Wareman:
         ; Secant Method with weird bailout test
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1-2
  fz=a*a-1:
  zt=z
  foz=fz
  a=4*z-2
  f=a*a-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


Uc02-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Mike Wareman
         ; Secant Method with Girvan perturbations and weird bailout test
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  z=pixel, oz=0
  fz=3
  zt=fn1(z)+p1:
  foz=fz
  a=4*z-2
  f=a*a-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Uc02-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Mike Wareman
         ; Secant Method with Girvan perturbations and weird bailout test
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  z=pixel, oz=0
  fz=3
  zt=fn1(z)+p1:
  foz=fz
  a=4*z-2
  f=a*a-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


Uc02-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (Implicit Euler method)
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2
  y=y+t*(ax*ax-1)
  ay=4*y-2
  x=x-t*(ay*ay-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Uc02-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler method)
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2
  y=y+t*sin(ax*ax-1)
  ay=4*y-2
  x=x-t*sin(ay*ay-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Uc02-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler method)
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2
  y=y+t*(fn1(ax*ax-1))
  ay=4*y-2
  x=x-t*(fn1(ay*ay-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Uc02-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified Euler method)
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  Tx=fn1(ax*ax-1)
  Ty=fn2(ay*ay-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Uc02-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified Euler method)
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  Tx=fn1(ax*ax-1)
  Ty=fn2(ay*ay-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Uc02-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler Method)
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x-2
  y=y+t*(fn1(ax*ax-1))
  ay=4*y-2
  x=x-t*(fn2(ay*ay-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Uc02-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler Method)
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2
  y=y+t*(fn1(ax*ax-1))
  ay=4*y-2
  x=x-t*(fn2(ay*ay-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Uc02-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Kathy Roth:
         ; Dynamic (modified implicit Euler Method, gravitated)
         ;
         ; Uc[0] = 1
         ; Uc[1] = a
         ; Uc[n+1] = 2(2z-1)Uc[n]-Uc[n-1]
         ;
         ; = 2z(2z-1)U01-U00
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  ax=4*x-2
  Tx=(fn1(ax*ax-1))
  ay=4*y-2
  Ty=(fn1(ay*ay-1))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Uc02-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Kathy Roth:
         ; Dynamic (modified implicit Euler Method, popped)
         ;
         ; Uc[0] = 1
         ; Uc[1] = a
         ; Uc[n+1] = 2(2z-1)Uc[n]-Uc[n-1]
         ;
         ; = 2z(2z-1)U01-U00
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  ax=4*x-2
  Tx=(fn1(ax*ax-1))
  ay=4*y-2
  Ty=(fn1(ay*ay-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Uc02-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Kathy Roth:
         ; Dynamic (modified implicit Euler Method, popped)
         ;
         ; Uc[0] = 1
         ; Uc[1] = a
         ; Uc[n+1] = 2(2z-1)Uc[n]-Uc[n-1]
         ;
         ; = 2z(2z-1)U01-U00
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  ax=4*x-2
  Tx=(fn1(ax*ax-1))
  ay=4*y-2
  Ty=(fn1(ay*ay-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Uc02-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler method, Sylvie Gallet test)
         ;
         ; Uc[0] = 1
         ; Uc[1] = a
         ; Uc[n+1] = 2(2z-1)Uc[n]-Uc[n-1]
         ;
         ; = 2z(2z-1)U01-U00
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2
  Tx=(fn1(ax*ax-1))
  ay=4*y-2
  Ty=(fn1(ay*ay-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Uc02-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Ray Parracho:
         ; Regula-Falsi Method
         ;
         ; Uc[0] = 1
         ; Uc[1] = a
         ; Uc[n+1] = 2(2z-1)Uc[n]-Uc[n-1]
         ;
         ; = 2z(2z-1)U01-U00
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax0=4*x0-2, ax1=4*x1-2
  Fx0=ax0*ax0-1
  Fx1=ax1*ax1-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Uc03 {; = 2z(2z-1)U02-U01
      ; Copyright (c)1998,1999 Morgan L. Owens
      ; Prerelease 16/04/1998
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  Tx=fn1(ax*(ax*ax-2))
  Ty=fn1(ay*(ay*ay-2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: 98msg.frm
}


Uc03-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  Tx=ax*(ax*ax-2)
  Ty=ay*(ay*ay-2)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Uc03-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  bailout=p1+4, z=pixel:
  x=real(z), y=imag(z)
  a=4*z-2
  z=a*(a*a-2)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Uc03-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  const=p1, z=pixel:
  a=4*z-2
  z=a*(a*a-2)+const
  |z|<100
  ;SOURCE: chby3.frm
}


Uc03-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  const=pixel, z=p1:
  a=4*z-2
  z=a*(a*a-2)+const
  |z|<100
  ;SOURCE: chby4.frm
}


Uc03-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=4*z-2
  aa=a*a
  f=a*(aa-2)
  fd=12*aa-8
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Uc03-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  r=p1
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2
  aa=a*a
  f=a*(aa-2)
  fd=12*aa-8
  fdd=96*a
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Uc03-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2
  aa=a*a
  f=a*(aa-2)
  fd=12*aa-8
  oz=z
  w=f-f/fd
  aw=4*w-2
  fw=aw*(aw*aw-2)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Uc03-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  Tx=sin(ax*(ax*ax-2))
  Ty=sin(ay*(ay*ay-2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Uc03-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  Tx=fn1(ax*(ax*ax-2))
  Ty=fn1(ay*(ay*ay-2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Uc03-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1-2
  fz=a*(a*a-2):
  zt=z
  foz=fz
  a=4*z-2
  f=a*(a*a-2)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Uc03-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  const=p1, z=pixel:
  a=4*z-2
  z=a*(a*a-2)*const
  |z|<100
  ;SOURCE: chby11.frm
}


Uc03-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  const=pixel, z=p1:
  a=4*z-2
  z=a*(a*a-2)*const
  |z|<100
  ;SOURCE: chby12.frm
}


Uc03-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  r=p1
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2
  aa=a*a
  f=a*(aa-2)
  fd=12*aa-8
  fdd=96*a
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Uc03-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2
  aa=a*a
  f=a*(aa-2)
  fd=12*aa-8
  oz=z
  w=f-f/fd
  aw=4*w-2
  fw=aw*(aw*aw-2)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


Uc03-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=4*z-2
  aa=a*a
  f=a*(aa-2)
  fd=12*aa-8
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Uc03-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1-2
  fz=a*(a*a-2):
  zt=z
  foz=fz
  a=4*z-2
  f=a*(a*a-2)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


Uc03-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  z=pixel, oz=0
  fz=-4
  zt=fn1(z)+p1:
  foz=fz
  a=4*z-2
  f=a*(a*a-2)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Uc03-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  z=pixel, oz=0
  fz=-4
  zt=fn1(z)+p1:
  foz=fz
  a=4*z-2
  f=a*(a*a-2)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


Uc03-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2
  y=y+t*(ax*(ax*ax-2))
  ay=4*y-2
  x=x-t*(ay*(ay*ay-2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Uc03-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2
  y=y+t*sin(ax*(ax*ax-2))
  ay=4*y-2
  x=x-t*sin(ay*(ay*ay-2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Uc03-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2
  y=y+t*(fn1(ax*(ax*ax-2)))
  ay=4*y-2
  x=x-t*(fn1(ay*(ay*ay-2)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Uc03-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  Tx=fn1(ax*(ax*ax-2))
  Ty=fn2(ay*(ay*ay-2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Uc03-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  Tx=fn1(ax*(ax*ax-2))
  Ty=fn2(ay*(ay*ay-2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Uc03-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x-2
  y=y+t*(fn1(ax*(ax*ax-2)))
  ay=4*y-2
  x=x-t*(fn2(ay*(ay*ay-2)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Uc03-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2
  y=y+t*(fn1(ax*(ax*ax-2)))
  ay=4*y-2
  x=x-t*(fn2(ay*(ay*ay-2)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Uc03-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  ax=4*x-2
  Tx=(fn1(ax*(ax*ax-2)))
  ay=4*y-2
  Ty=(fn1(ay*(ay*ay-2)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Uc03-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  ax=4*x-2
  Tx=(fn1(ax*(ax*ax-2)))
  ay=4*y-2
  Ty=(fn1(ay*(ay*ay-2)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Uc03-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  ax=4*x-2
  Tx=(fn1(ax*(ax*ax-2)))
  ay=4*y-2
  Ty=(fn1(ay*(ay*ay-2)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Uc03-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2
  Tx=(fn1(ax*(ax*ax-2)))
  ay=4*y-2
  Ty=(fn1(ay*(ay*ay-2)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Uc03-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax0=4*x0-2, ax1=4*x1-2
  Fx0=ax0*(ax0*ax0-2)
  Fx1=ax1*(ax1*ax1-2)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Uc04-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=aax*(aax-3)+1
  Ty=aay*(aay-3)+1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Uc04-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  bailout=p1+4, z=pixel:
  x=real(z), y=imag(z)
  a=4*z-2, aa=a*a
  z=aa*(aa-3)+1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Uc04-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  const=p1+1, z=pixel:
  a=4*z-2, aa=a*a
  z=aa*(aa-3)+const
  |z|<100
  ;SOURCE: chby3.frm
}


Uc04-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  const=pixel+1, z=p1:
  a=4*z-2, aa=a*a
  z=aa*(aa-3)+const
  |z|<100
  ;SOURCE: chby4.frm
}


Uc04-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=4*z-2, aa=a*a
  f=aa*(aa-3)+1
  fd=8*a*(2*aa-3)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Uc04-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  r=p1
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a, a2=aa+aa
  f=aa*(aa-3)+1
  fd=8*a*(a2-3)
  fdd=96*(a2-1)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Uc04-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=aa*(aa-3)+1
  fd=8*a*(aa+aa-3)
  oz=z
  w=f-f/fd
  aw=4*w-2, aaw=aw*aw
  fw=aaw*(aaw-3)+1
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Uc04-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=sin(aax*(aax-3)+1)
  Ty=sin(aay*(aay-3)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Uc04-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=fn1(aax*(aax-3)+1)
  Ty=fn1(aay*(aay-3)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Uc04-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1-2, aa=a*a
  fz=aa*(aa-3)+1:
  zt=z
  foz=fz
  a=4*z-2, aa=a*a
  f=aa*(aa-3)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Uc04-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  const=p1, z=pixel:
  a=4*z-2, aa=a*a
  z=(aa*(aa-3)+1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


Uc04-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  const=pixel, z=p1:
  a=4*z-2, aa=a*a
  z=(aa*(aa-3)+1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


Uc04-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  r=p1
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=aa*(aa-3)+1
  fd=8*a*(2*aa-3)
  fdd=96*(2*aa-1)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Uc04-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=aa*(aa-3)+1
  fd=8*a*(aa+aa-3)
  oz=z
  w=f-f/fd
  aw=4*w-2, aaw=aw*aw
  fw=aaw*(aaw-3)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


Uc04-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=4*z-2, aa=a*a
  f=aa*(aa-3)+1
  fd=8*a*(2*aa-3)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Uc04-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1-2, aa=a*a
  fz=aa*(aa-3)+1:
  zt=z
  foz=fz
  a=4*z-2, aa=a*a
  f=aa*(aa-3)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


Uc04-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  z=pixel, oz=0
  fz=5
  zt=fn1(z)+p1:
  foz=fz
  a=4*z-2, aa=a*a
  f=aa*(aa-3)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Uc04-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  z=pixel, oz=0
  fz=5
  zt=fn1(z)+p1:
  foz=fz
  a=4*z-2, aa=a*a
  f=aa*(aa-3)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


Uc04-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(aax*(aax-3)+1)
  ay=4*y-2, aay=ay*ay
  x=x-t*(aay*(aay-3)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Uc04-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*sin(aax*(aax-3)+1)
  ay=4*y-2, aay=ay*ay
  x=x-t*sin(aay*(aay-3)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Uc04-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(fn1(aax*(aax-3)+1))
  ay=4*y-2, aay=ay*ay
  x=x-t*(fn1(aay*(aay-3)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Uc04-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=fn1(aax*(aax-3)+1)
  Ty=fn2(aay*(aay-3)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Uc04-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=fn1(aax*(aax-3)+1)
  Ty=fn2(aay*(aay-3)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Uc04-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(fn1(aax*(aax-3)+1))
  ay=4*y-2, aay=ay*ay
  x=x-t*(fn2(aay*(aay-3)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Uc04-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(fn1(aax*(aax-3)+1))
  ay=4*y-2, aay=ay*ay
  x=x-t*(fn2(aay*(aay-3)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Uc04-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  Tx=(fn1(aax*(aax-3)+1))
  ay=4*y-2, aay=ay*ay
  Ty=(fn1(aay*(aay-3)+1))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Uc04-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  ax=4*x-2, aax=ax*ax
  Tx=(fn1(aax*(aax-3)+1))
  ay=4*y-2, aay=ay*ay
  Ty=(fn1(aay*(aay-3)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Uc04-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  ax=4*x-2, aax=ax*ax
  Tx=(fn1(aax*(aax-3)+1))
  ay=4*y-2, aay=ay*ay
  Ty=(fn1(aay*(aay-3)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Uc04-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  Tx=(fn1(aax*(aax-3)+1))
  ay=4*y-2, aay=ay*ay
  Ty=(fn1(aay*(aay-3)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Uc04-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax0=4*x0-2, ax1=4*x1-2
  aax0=ax0*ax0, aax1=ax1*ax1
  Fx0=aax0*(aax0-3)+1
  Fx1=aax1*(aax1-3)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Uc05-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=ax*(aax*(aax-4)+3)
  Ty=ay*(aay*(aay-4)+3)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Uc05-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  bailout=p1+4, z=pixel:
  x=real(z), y=imag(z)
  a=4*z-2, aa=a*a
  z=a*(aa*(aa-4)+3)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Uc05-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  const=p1, z=pixel:
  a=4*z-2, aa=a*a
  z=a*(aa*(aa-4)+3)+const
  |z|<100
  ;SOURCE: chby3.frm
}


Uc05-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  const=pixel, z=p1:
  a=4*z-2, aa=a*a
  z=a*(aa*(aa-4)+3)+const
  |z|<100
  ;SOURCE: chby4.frm
}


Uc05-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=4*z-2, aa=a*a
  f=a*(aa*(aa-4)+3)
  fd=4*(aa*(5*aa-12)+3)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Uc05-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  r=p1
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=a*(aa*(aa-4)+3)
  fd=4*(aa*(5*aa-12)+3)
  fdd=64*a*(5*aa-6)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Uc05-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=a*(aa*(aa-4)+3)
  fd=4*(aa*(5*aa-12)+3)
  oz=z
  w=f-f/fd
  aw=4*w-2, aaw=aw*aw
  fw=aw*(aaw*(aaw-4)+3)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Uc05-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=sin(ax*(aax*(aax-4)+3))
  Ty=sin(ay*(aay*(aay-4)+3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Uc05-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=fn1(ax*(aax*(aax-4)+3))
  Ty=fn1(ay*(aay*(aay-4)+3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Uc05-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1-2, aa=a*a
  fz=a*(aa*(aa-4)+3):
  zt=z
  foz=fz
  a=4*z-2, aa=a*a
  f=a*(aa*(aa-4)+3)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Uc05-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  const=p1, z=pixel:
  a=4*z-2, aa=a*a
  z=a*(aa*(aa-4)+3)*const
  |z|<100
  ;SOURCE: chby11.frm
}


Uc05-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  const=pixel, z=p1:
  a=4*z-2, aa=a*a
  z=a*(aa*(aa-4)+3)*const
  |z|<100
  ;SOURCE: chby12.frm
}


Uc05-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  r=p1
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=a*(aa*(aa-4)+3)
  fd=4*(aa*(5*aa-12)+3)
  fdd=64*a*(5*aa-6)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Uc05-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=a*(aa*(aa-4)+3)
  fd=4*(aa*(5*aa-12)+3)
  oz=z
  w=f-f/fd
  aw=4*w-2, aaw=aw*aw
  fw=aw*(aaw*(aaw-4)+3)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


Uc05-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=4*z-2, aa=a*a
  f=a*(aa*(aa-4)+3)
  fd=4*(aa*(5*aa-12)+3)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Uc05-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1-2, aa=a*a
  fz=a*(aa*(aa-4)+3):
  zt=z
  foz=fz
  a=4*z-2, aa=a*a
  f=a*(aa*(aa-4)+3)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


Uc05-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  z=pixel, oz=0
  fz=-6
  zt=fn1(z)+p1:
  foz=fz
  a=4*z-2, aa=a*a
  f=a*(aa*(aa-4)+3)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Uc05-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  z=pixel, oz=0
  fz=-6
  zt=fn1(z)+p1:
  foz=fz
  a=4*z-2, aa=a*a
  f=a*(aa*(aa-4)+3)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


Uc05-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(ax*(aax*(aax-4)+3))
  ay=4*y-2, aay=ay*ay
  x=x-t*(ay*(aay*(aay-4)+3))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Uc05-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*sin(ax*(aax*(aax-4)+3))
  ay=4*y-2, aay=ay*ay
  x=x-t*sin(ay*(aay*(aay-4)+3))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Uc05-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(fn1(ax*(aax*(aax-4)+3)))
  ay=4*y-2, aay=ay*ay
  x=x-t*(fn1(ay*(aay*(aay-4)+3)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Uc05-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=fn1(ax*(aax*(aax-4)+3))
  Ty=fn2(ay*(aay*(aay-4)+3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Uc05-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=fn1(ax*(aax*(aax-4)+3))
  Ty=fn2(ay*(aay*(aay-4)+3))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Uc05-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(fn1(ax*(aax*(aax-4)+3)))
  ay=4*y-2, aay=ay*ay
  x=x-t*(fn2(ay*(aay*(aay-4)+3)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Uc05-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(fn1(ax*(aax*(aax-4)+3)))
  ay=4*y-2, aay=ay*ay
  x=x-t*(fn2(ay*(aay*(aay-4)+3)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Uc05-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  Tx=(fn1(ax*(aax*(aax-4)+3)))
  ay=4*y-2, aay=ay*ay
  Ty=(fn1(ay*(aay*(aay-4)+3)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Uc05-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  ax=4*x-2, aax=ax*ax
  Tx=(fn1(ax*(aax*(aax-4)+3)))
  ay=4*y-2, aay=ay*ay
  Ty=(fn1(ay*(aay*(aay-4)+3)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Uc05-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  ax=4*x-2, aax=ax*ax
  Tx=(fn1(ax*(aax*(aax-4)+3)))
  ay=4*y-2, aay=ay*ay
  Ty=(fn1(ay*(aay*(aay-4)+3)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Uc05-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  Tx=(fn1(ax*(aax*(aax-4)+3)))
  ay=4*y-2, aay=ay*ay
  Ty=(fn1(ay*(aay*(aay-4)+3)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Uc05-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax0=4*x0-2, ax1=4*x1-2
  aax0=ax0*ax0, aax1=ax1*ax1
  Fx0=ax0*(aax0*(aax0-4)+3)
  Fx1=ax1*(aax1*(aax1-4)+3)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Uc06-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=aax*(aax*(aax-5)+6)-1
  Ty=aay*(aay*(aay-5)+6)-1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Uc06-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  bailout=p1+4, z=pixel:
  x=real(z), y=imag(z)
  a=4*z-2, aa=a*a
  z=aa*(aa*(aa-5)+6)-1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Uc06-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  const=p1-1, z=pixel:
  a=4*z-2, aa=a*a
  z=aa*(aa*(aa-5)+6)+const
  |z|<100
  ;SOURCE: chby3.frm
}


Uc06-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  const=pixel-1, z=p1:
  a=4*z-2, aa=a*a
  z=aa*(aa*(aa-5)+6)+const
  |z|<100
  ;SOURCE: chby4.frm
}


Uc06-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa-5)+6)-1
  fd=8*a*(aa*(3*aa-10)+12)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Uc06-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  r=p1
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa-5)+6)-1
  fd=8*a*(aa*(3*aa-10)+12)
  fdd=96*(aa*(7*aa-20)+10)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Uc06-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa-5)+6)-1
  fd=8*a*(aa*(3*aa-10)+12)
  oz=z
  w=f-f/fd
  aw=4*w-2, aaw=aw*aw
  fw=aaw*(aaw*(aaw-5)+6)-1
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Uc06-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=sin(aax*(aax*(aax-5)+6)-1)
  Ty=sin(aay*(aay*(aay-5)+6)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Uc06-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=fn1(aax*(aax*(aax-5)+6)-1)
  Ty=fn1(aay*(aay*(aay-5)+6)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Uc06-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1-2, aa=a*a
  fz=aa*(aa*(aa-5)+6)-1:
  zt=z
  foz=fz
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa-5)+6)-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Uc06-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  const=p1, z=pixel:
  a=4*z-2, aa=a*a
  z=(aa*(aa*(aa-5)+6)-1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


Uc06-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  const=pixel, z=p1:
  a=4*z-2, aa=a*a
  z=(aa*(aa*(aa-5)+6)-1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


Uc06-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  r=p1
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa-5)+6)-1
  fd=8*a*(aa*(3*aa-10)+12)
  fdd=96*(aa*(7*aa-20)+10)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Uc06-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa-5)+6)-1
  fd=8*a*(aa*(3*aa-10)+12)
  oz=z
  w=f-f/fd
  aw=4*w-2, aaw=aw*aw
  fw=aaw*(aaw*(aaw-5)+6)-1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


Uc06-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa-5)+6)-1
  fd=8*a*(aa*(3*aa-10)+12)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Uc06-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1-2, aa=a*a
  fz=aa*(aa*(aa-5)+6)-1:
  zt=z
  foz=fz
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa-5)+6)-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


Uc06-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  z=pixel, oz=0
  fz=7
  zt=fn1(z)+p1:
  foz=fz
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa-5)+6)-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Uc06-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  z=pixel, oz=0
  fz=7
  zt=fn1(z)+p1:
  foz=fz
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa-5)+6)-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


Uc06-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(aax*(aax*(aax-5)+6)-1)
  ay=4*y-2, aay=ay*ay
  x=x-t*(aay*(aay*(aay-5)+6)-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Uc06-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*sin(aax*(aax*(aax-5)+6)-1)
  ay=4*y-2, aay=ay*ay
  x=x-t*sin(aay*(aay*(aay-5)+6)-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Uc06-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(fn1(aax*(aax*(aax-5)+6)-1))
  ay=4*y-2, aay=ay*ay
  x=x-t*(fn1(aay*(aay*(aay-5)+6)-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Uc06-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=fn1(aax*(aax*(aax-5)+6)-1)
  Ty=fn2(aay*(aay*(aay-5)+6)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Uc06-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=fn1(aax*(aax*(aax-5)+6)-1)
  Ty=fn2(aay*(aay*(aay-5)+6)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Uc06-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(fn1(aax*(aax*(aax-5)+6)-1))
  ay=4*y-2, aay=ay*ay
  x=x-t*(fn2(aay*(aay*(aay-5)+6)-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Uc06-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(fn1(aax*(aax*(aax-5)+6)-1))
  ay=4*y-2, aay=ay*ay
  x=x-t*(fn2(aay*(aay*(aay-5)+6)-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Uc06-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  Tx=(fn1(aax*(aax*(aax-5)+6)-1))
  ay=4*y-2, aay=ay*ay
  Ty=(fn1(aay*(aay*(aay-5)+6)-1))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Uc06-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  ax=4*x-2, aax=ax*ax
  Tx=(fn1(aax*(aax*(aax-5)+6)-1))
  ay=4*y-2, aay=ay*ay
  Ty=(fn1(aay*(aay*(aay-5)+6)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Uc06-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  ax=4*x-2, aax=ax*ax
  Tx=(fn1(aax*(aax*(aax-5)+6)-1))
  ay=4*y-2, aay=ay*ay
  Ty=(fn1(aay*(aay*(aay-5)+6)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Uc06-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  Tx=(fn1(aax*(aax*(aax-5)+6)-1))
  ay=4*y-2, aay=ay*ay
  Ty=(fn1(aay*(aay*(aay-5)+6)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Uc06-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax0=4*x0-2, ax1=4*x1-2
  aax0=ax0*ax0, aax1=ax1*ax1
  Fx0=aax0*(aax0*(aax0-5)+6)-1
  Fx1=aax1*(aax1*(aax1-5)+6)-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Uc07-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=ax*(aax*(aax*(aax-6)+10)-4)
  Ty=ay*(aay*(aay*(aay-6)+10)-4)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Uc07-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  bailout=p1+4, z=pixel:
  x=real(z), y=imag(z)
  a=4*z-2, aa=a*a
  z=a*(aa*(aa*(aa-6)+10)-4)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Uc07-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  const=p1, z=pixel:
  a=4*z-2, aa=a*a
  z=a*(aa*(aa*(aa-6)+10)-4)+const
  |z|<100
  ;SOURCE: chby3.frm
}


Uc07-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  const=pixel, z=p1:
  a=4*z-2, aa=a*a
  z=a*(aa*(aa*(aa-6)+10)-4)+const
  |z|<100
  ;SOURCE: chby4.frm
}


Uc07-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=4*z-2, aa=a*a
  f=a*(aa*(aa*(aa-6)+10)-4)
  fd=4*(aa*(aa*(7*aa-30)+30)-4)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Uc07-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  r=p1
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=a*(aa*(aa*(aa-6)+10)-4)
  fd=4*(aa*(aa*(7*aa-30)+30)-4)
  fdd=96*a*(aa*(7*aa-200)+10)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Uc07-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=a*(aa*(aa*(aa-6)+10)-4)
  fd=4*(aa*(aa*(7*aa-30)+30)-4)
  oz=z
  w=f-f/fd
  aw=4*w-2, aaw=aw*aw
  fw=aw*(aaw*(aaw*(aaw-6)+10)-4)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Uc07-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=sin(ax*(aax*(aax*(aax-6)+10)-4))
  Ty=sin(ay*(aay*(aay*(aay-6)+10)-4))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Uc07-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=fn1(ax*(aax*(aax*(aax-6)+10)-4))
  Ty=fn1(ay*(aay*(aay*(aay-6)+10)-4))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Uc07-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1-2, aa=a*a
  fz=a*(aa*(aa*(aa-6)+10)-4):
  zt=z
  foz=fz
  a=4*z-2, aa=a*a
  f=a*(aa*(aa*(aa-6)+10)-4)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Uc07-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  const=p1, z=pixel:
  a=4*z-2, aa=a*a
  z=a*(aa*(aa*(aa-6)+10)-4)*const
  |z|<100
  ;SOURCE: chby11.frm
}


Uc07-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  const=pixel, z=p1:
  a=4*z-2, aa=a*a
  z=a*(aa*(aa*(aa-6)+10)-4)*const
  |z|<100
  ;SOURCE: chby12.frm
}


Uc07-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  r=p1
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=a*(aa*(aa*(aa-6)+10)-4)
  fd=4*(aa*(aa*(7*aa-30)+30)-4)
  fdd=96*a*(aa*(7*aa-200)+10)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Uc07-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=a*(aa*(aa*(aa-6)+10)-4)
  fd=4*(aa*(aa*(7*aa-30)+30)-4)
  oz=z
  w=f-f/fd
  aw=4*w-2, aaw=aw*aw
  fw=aw*(aaw*(aaw*(aaw-6)+10)-4)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


Uc07-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=4*z-2, aa=a*a
  f=a*(aa*(aa*(aa-6)+10)-4)
  fd=4*(aa*(aa*(7*aa-30)+30)-4)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Uc07-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1-2, aa=a*a
  fz=a*(aa*(aa*(aa-6)+10)-4):
  zt=z
  foz=fz
  a=4*z-2, aa=a*a
  f=a*(aa*(aa*(aa-6)+10)-4)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


Uc07-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  z=pixel, oz=0
  fz=-8
  zt=fn1(z)+p1:
  foz=fz
  a=4*z-2, aa=a*a
  f=a*(aa*(aa*(aa-6)+10)-4)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Uc07-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  z=pixel, oz=0
  fz=-8
  zt=fn1(z)+p1:
  foz=fz
  a=4*z-2, aa=a*a
  f=a*(aa*(aa*(aa-6)+10)-4)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


Uc07-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(ax*(aax*(aax*(aax-6)+10)-4))
  ay=4*y-2, aay=ay*ay
  x=x-t*(ay*(aay*(aay*(aay-6)+10)-4))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Uc07-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*sin(ax*(aax*(aax*(aax-6)+10)-4))
  ay=4*y-2, aay=ay*ay
  x=x-t*sin(ay*(aay*(aay*(aay-6)+10)-4))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Uc07-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(fn1(ax*(aax*(aax*(aax-6)+10)-4)))
  ay=4*y-2, aay=ay*ay
  x=x-t*(fn1(ay*(aay*(aay*(aay-6)+10)-4)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Uc07-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=fn1(ax*(aax*(aax*(aax-6)+10)-4))
  Ty=fn2(ay*(aay*(aay*(aay-6)+10)-4))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Uc07-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=fn1(ax*(aax*(aax*(aax-6)+10)-4))
  Ty=fn2(ay*(aay*(aay*(aay-6)+10)-4))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Uc07-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(fn1(ax*(aax*(aax*(aax-6)+10)-4)))
  ay=4*y-2, aay=ay*ay
  x=x-t*(fn2(ay*(aay*(aay*(aay-6)+10)-4)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Uc07-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(fn1(ax*(aax*(aax*(aax-6)+10)-4)))
  ay=4*y-2, aay=ay*ay
  x=x-t*(fn2(ay*(aay*(aay*(aay-6)+10)-4)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Uc07-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  Tx=(fn1(ax*(aax*(aax*(aax-6)+10)-4)))
  ay=4*y-2, aay=ay*ay
  Ty=(fn1(ay*(aay*(aay*(aay-6)+10)-4)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Uc07-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  ax=4*x-2, aax=ax*ax
  Tx=(fn1(ax*(aax*(aax*(aax-6)+10)-4)))
  ay=4*y-2, aay=ay*ay
  Ty=(fn1(ay*(aay*(aay*(aay-6)+10)-4)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Uc07-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  ax=4*x-2, aax=ax*ax
  Tx=(fn1(ax*(aax*(aax*(aax-6)+10)-4)))
  ay=4*y-2, aay=ay*ay
  Ty=(fn1(ay*(aay*(aay*(aay-6)+10)-4)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Uc07-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  Tx=(fn1(ax*(aax*(aax*(aax-6)+10)-4)))
  ay=4*y-2, aay=ay*ay
  Ty=(fn1(ay*(aay*(aay*(aay-6)+10)-4)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Uc07-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax0=4*x0-2, ax1=4*x1-2
  aax0=ax0*ax0, aax1=ax1*ax1
  Fx0=ax0*(aax0*(aax0*(aax0-6)+10)-4)
  Fx1=ax1*(aax1*(aax1*(aax1-6)+10)-4)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Uc08-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=aax*(aax*(aax*(aax-7)+15)-10)+1
  Ty=aay*(aay*(aay*(aay-7)+15)-10)+1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Uc08-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  bailout=p1+4, z=pixel:
  x=real(z), y=imag(z)
  a=4*z-2, aa=a*a
  z=aa*(aa*(aa*(aa-7)+15)-10)+1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Uc08-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  const=p1+1, z=pixel:
  a=4*z-2, aa=a*a
  z=aa*(aa*(aa*(aa-7)+15)-10)+const
  |z|<100
  ;SOURCE: chby3.frm
}


Uc08-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  const=pixel+1, z=p1:
  a=4*z-2, aa=a*a
  z=aa*(aa*(aa*(aa-7)+15)-10)+const
  |z|<100
  ;SOURCE: chby4.frm
}


Uc08-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa*(aa-7)+15)-10)+1
  fd=8*a*(aa*(aa*(4*aa-21)+30)-10)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Uc08-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  r=p1
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa*(aa-7)+15)-10)+1
  fd=8*a*(aa*(aa*(4*aa-21)+30)-10)
  fdd=32*(aa*(7*aa*(4*aa-15)+90)-10)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Uc08-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa*(aa-7)+15)-10)+1
  fd=8*a*(aa*(aa*(4*aa-21)+30)-10)
  oz=z
  w=f-f/fd
  aw=4*w-2, aaw=aw*aw
  fw=aaw*(aaw*(aaw*(aaw-7)+15)-10)+1
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Uc08-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=sin(aax*(aax*(aax*(aax-7)+15)-10)+1)
  Ty=sin(aay*(aay*(aay*(aay-7)+15)-10)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Uc08-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=fn1(aax*(aax*(aax*(aax-7)+15)-10)+1)
  Ty=fn1(aay*(aay*(aay*(aay-7)+15)-10)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Uc08-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1-2, aa=a*a
  fz=aa*(aa*(aa*(aa-7)+15)-10)+1:
  zt=z
  foz=fz
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa*(aa-7)+15)-10)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Uc08-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  const=p1, z=pixel:
  a=4*z-2, aa=a*a
  z=(aa*(aa*(aa*(aa-7)+15)-10)+1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


Uc08-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  const=pixel, z=p1:
  a=4*z-2, aa=a*a
  z=(aa*(aa*(aa*(aa-7)+15)-10)+1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


Uc08-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  r=p1
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa*(aa-7)+15)-10)+1
  fd=8*a*(aa*(aa*(4*aa-21)+30)-10)
  fdd=32*(aa*(7*aa*(4*aa-15)+90)-10)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Uc08-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa*(aa-7)+15)-10)+1
  fd=8*a*(aa*(aa*(4*aa-21)+30)-10)
  oz=z
  w=f-f/fd
  aw=4*w-2, aaw=aw*aw
  fw=aaw*(aaw*(aaw*(aaw-7)+15)-10)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


Uc08-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa*(aa-7)+15)-10)+1
  fd=8*a*(aa*(aa*(4*aa-21)+30)-10)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Uc08-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1-2, aa=a*a
  fz=aa*(aa*(aa*(aa-7)+15)-10)+1:
  zt=z
  foz=fz
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa*(aa-7)+15)-10)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


Uc08-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  z=pixel, oz=0
  fz=9
  zt=fn1(z)+p1:
  foz=fz
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa*(aa-7)+15)-10)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Uc08-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  z=pixel, oz=0
  fz=9
  zt=fn1(z)+p1:
  foz=fz
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa*(aa-7)+15)-10)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


Uc08-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(aax*(aax*(aax*(aax-7)+15)-10)+1)
  ay=4*y-2, aay=ay*ay
  x=x-t*(aay*(aay*(aay*(aay-7)+15)-10)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Uc08-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*sin(aax*(aax*(aax*(aax-7)+15)-10)+1)
  ay=4*y-2, aay=ay*ay
  x=x-t*sin(aay*(aay*(aay*(aay-7)+15)-10)+1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Uc08-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(fn1(aax*(aax*(aax*(aax-7)+15)-10)+1))
  ay=4*y-2, aay=ay*ay
  x=x-t*(fn1(aay*(aay*(aay*(aay-7)+15)-10)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Uc08-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=fn1(aax*(aax*(aax*(aax-7)+15)-10)+1)
  Ty=fn2(aay*(aay*(aay*(aay-7)+15)-10)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Uc08-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=fn1(aax*(aax*(aax*(aax-7)+15)-10)+1)
  Ty=fn2(aay*(aay*(aay*(aay-7)+15)-10)+1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Uc08-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(fn1(aax*(aax*(aax*(aax-7)+15)-10)+1))
  ay=4*y-2, aay=ay*ay
  x=x-t*(fn2(aay*(aay*(aay*(aay-7)+15)-10)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Uc08-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(fn1(aax*(aax*(aax*(aax-7)+15)-10)+1))
  ay=4*y-2, aay=ay*ay
  x=x-t*(fn2(aay*(aay*(aay*(aay-7)+15)-10)+1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Uc08-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  Tx=(fn1(aax*(aax*(aax*(aax-7)+15)-10)+1))
  ay=4*y-2, aay=ay*ay
  Ty=(fn1(aay*(aay*(aay*(aay-7)+15)-10)+1))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Uc08-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  ax=4*x-2, aax=ax*ax
  Tx=(fn1(aax*(aax*(aax*(aax-7)+15)-10)+1))
  ay=4*y-2, aay=ay*ay
  Ty=(fn1(aay*(aay*(aay*(aay-7)+15)-10)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Uc08-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  ax=4*x-2, aax=ax*ax
  Tx=(fn1(aax*(aax*(aax*(aax-7)+15)-10)+1))
  ay=4*y-2, aay=ay*ay
  Ty=(fn1(aay*(aay*(aay*(aay-7)+15)-10)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Uc08-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  Tx=(fn1(aax*(aax*(aax*(aax-7)+15)-10)+1))
  ay=4*y-2, aay=ay*ay
  Ty=(fn1(aay*(aay*(aay*(aay-7)+15)-10)+1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Uc08-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax0=4*x0-2, ax1=4*x1-2
  aax0=ax0*ax0, aax1=ax1*ax1
  Fx0=aax0*(aax0*(aax0*(aax0-7)+15)-10)+1
  Fx1=aax1*(aax1*(aax1*(aax1-7)+15)-10)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Uc09-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=ax*(aax*(aax*(aax*(aax-8)+21)-20)+5)
  Ty=ay*(aay*(aay*(aay*(aay-8)+21)-20)+5)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Uc09-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  bailout=p1+4, z=pixel:
  x=real(z), y=imag(z)
  a=4*z-2, aa=a*a
  z=a*(aa*(aa*(aa*(aa-8)+21)-20)+5)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Uc09-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  const=p1, z=pixel:
  a=4*z-2, aa=a*a
  z=a*(aa*(aa*(aa*(aa-8)+21)-20)+5)+const
  |z|<100
  ;SOURCE: chby3.frm
}


Uc09-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  const=pixel, z=p1:
  a=4*z-2, aa=a*a
  z=a*(aa*(aa*(aa*(aa-8)+21)-20)+5)+const
  |z|<100
  ;SOURCE: chby4.frm
}


Uc09-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=4*z-2, aa=a*a
  f=a*(aa*(aa*(aa*(aa-8)+21)-20)+5)
  fd=4*(aa*(aa*(aa*(9*aa-56)+105)-60)+5)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Uc09-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  r=p1
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=a*(aa*(aa*(aa*(aa-8)+21)-20)+5)
  fd=4*(aa*(aa*(aa*(9*aa-56)+105)-60)+5)
  fdd=64*a*(7*aa*((aa+aa)*(aa-6)+15)+30)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Uc09-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=a*(aa*(aa*(aa*(aa-8)+21)-20)+5)
  fd=4*(aa*(aa*(aa*(9*aa-56)+105)-60)+5)
  oz=z
  w=f-f/fd
  aw=4*w-2, aaw=aw*aw
  fw=aw*(aaw*(aaw*(aaw*(aaw-8)+21)-20)+5)
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Uc09-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=sin(ax*(aax*(aax*(aax*(aax-8)+21)-20)+5))
  Ty=sin(ay*(aay*(aay*(aay*(aay-8)+21)-20)+5))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Uc09-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=fn1(ax*(aax*(aax*(aax*(aax-8)+21)-20)+5))
  Ty=fn1(ay*(aay*(aay*(aay*(aay-8)+21)-20)+5))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Uc09-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1-2, aa=a*a
  fz=a*(aa*(aa*(aa*(aa-8)+21)-20)+5):
  zt=z
  foz=fz
  a=4*z-2, aa=a*a
  f=a*(aa*(aa*(aa*(aa-8)+21)-20)+5)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Uc09-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  const=p1, z=pixel:
  a=4*z-2, aa=a*a
  z=a*(aa*(aa*(aa*(aa-8)+21)-20)+5)*const
  |z|<100
  ;SOURCE: chby11.frm
}


Uc09-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  const=pixel, z=p1:
  a=4*z-2, aa=a*a
  z=a*(aa*(aa*(aa*(aa-8)+21)-20)+5)*const
  |z|<100
  ;SOURCE: chby12.frm
}


Uc09-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  r=p1
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=a*(aa*(aa*(aa*(aa-8)+21)-20)+5)
  fd=4*(aa*(aa*(aa*(9*aa-56)+105)-60)+5)
  fdd=64*a*(7*aa*(2*aa*(aa-6)+15)+30)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Uc09-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=a*(aa*(aa*(aa*(aa-8)+21)-20)+5)
  fd=4*(aa*(aa*(aa*(9*aa-56)+105)-60)+5)
  oz=z
  w=f-f/fd
  aw=4*w-2, aaw=aw*aw
  fw=aw*(aaw*(aaw*(aaw*(aaw-8)+21)-20)+5)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


Uc09-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=4*z-2, aa=a*a
  f=a*(aa*(aa*(aa*(aa-8)+21)-20)+5)
  fd=4*(aa*(aa*(aa*(9*aa-56)+105)-60)+5)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Uc09-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1-2, aa=a*a
  fz=a*(aa*(aa*(aa*(aa-8)+21)-20)+5):
  zt=z
  foz=fz
  a=4*z-2, aa=a*a
  f=a*(aa*(aa*(aa*(aa-8)+21)-20)+5)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


Uc09-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  z=pixel, oz=0
  fz=-10
  zt=fn1(z)+p1:
  foz=fz
  a=4*z-2, aa=a*a
  f=a*(aa*(aa*(aa*(aa-8)+21)-20)+5)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Uc09-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  z=pixel, oz=0
  fz=-10
  zt=fn1(z)+p1:
  foz=fz
  a=4*z-2, aa=a*a
  f=a*(aa*(aa*(aa*(aa-8)+21)-20)+5)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


Uc09-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(ax*(aax*(aax*(aax*(aax-8)+21)-20)+5))
  ay=4*y-2, aay=ay*ay
  x=x-t*(ay*(aay*(aay*(aay*(aay-8)+21)-20)+5))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Uc09-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*sin(ax*(aax*(aax*(aax*(aax-8)+21)-20)+5))
  ay=4*y-2, aay=ay*ay
  x=x-t*sin(ay*(aay*(aay*(aay*(aay-8)+21)-20)+5))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Uc09-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(fn1(ax*(aax*(aax*(aax*(aax-8)+21)-20)+5)))
  ay=4*y-2, aay=ay*ay
  x=x-t*(fn1(ay*(aay*(aay*(aay*(aay-8)+21)-20)+5)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Uc09-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=fn1(ax*(aax*(aax*(aax*(aax-8)+21)-20)+5))
  Ty=fn2(ay*(aay*(aay*(aay*(aay-8)+21)-20)+5))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Uc09-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=fn1(ax*(aax*(aax*(aax*(aax-8)+21)-20)+5))
  Ty=fn2(ay*(aay*(aay*(aay*(aay-8)+21)-20)+5))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Uc09-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(fn1(ax*(aax*(aax*(aax*(aax-8)+21)-20)+5)))
  ay=4*y-2, aay=ay*ay
  x=x-t*(fn2(ay*(aay*(aay*(aay*(aay-8)+21)-20)+5)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Uc09-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(fn1(ax*(aax*(aax*(aax*(aax-8)+21)-20)+5)))
  ay=4*y-2, aay=ay*ay
  x=x-t*(fn2(ay*(aay*(aay*(aay*(aay-8)+21)-20)+5)))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Uc09-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  Tx=(fn1(ax*(aax*(aax*(aax*(aax-8)+21)-20)+5)))
  ay=4*y-2, aay=ay*ay
  Ty=(fn1(ay*(aay*(aay*(aay*(aay-8)+21)-20)+5)))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Uc09-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  ax=4*x-2, aax=ax*ax
  Tx=(fn1(ax*(aax*(aax*(aax*(aax-8)+21)-20)+5)))
  ay=4*y-2, aay=ay*ay
  Ty=(fn1(ay*(aay*(aay*(aay*(aay-8)+21)-20)+5)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Uc09-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  ax=4*x-2, aax=ax*ax
  Tx=(fn1(ax*(aax*(aax*(aax*(aax-8)+21)-20)+5)))
  ay=4*y-2, aay=ay*ay
  Ty=(fn1(ay*(aay*(aay*(aay*(aay-8)+21)-20)+5)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Uc09-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  Tx=(fn1(ax*(aax*(aax*(aax*(aax-8)+21)-20)+5)))
  ay=4*y-2, aay=ay*ay
  Ty=(fn1(ay*(aay*(aay*(aay*(aay-8)+21)-20)+5)))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Uc09-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax0=4*x0-2, ax1=4*x1-2
  aax0=ax0*ax0, aax1=ax1*ax1
  Fx0=ax0*(aax0*(aax0*(aax0*(aax0-8)+21)-20)+5)
  Fx1=ax1*(aax1*(aax1*(aax1*(aax1-8)+21)-20)+5)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Uc10-01 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=aax*(aax*(aax*(aax*(aax-9)+36)-35)+15)-1
  Ty=aay*(aay*(aay*(aay*(aay-9)+36)-35)+15)-1
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Uc10-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  bailout=p1+4, z=pixel:
  x=real(z), y=imag(z)
  a=4*z-2, aa=a*a
  z=aa*(aa*(aa*(aa*(aa-9)+36)-35)+15)-1
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Uc10-03 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  const=p1-1, z=pixel:
  a=4*z-2, aa=a*a
  z=aa*(aa*(aa*(aa*(aa-9)+36)-35)+15)+const
  |z|<100
  ;SOURCE: chby3.frm
}


Uc10-04 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  const=pixel-1, z=p1:
  a=4*z-2, aa=a*a
  z=aa*(aa*(aa*(aa*(aa-9)+36)-35)+15)+const
  |z|<100
  ;SOURCE: chby4.frm
}


Uc10-05 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa*(aa*(aa-9)+36)-35)+15)-1
  fd=8*a*(aa*(aa*(aa*(5*aa-36)+108)-70)+15)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Uc10-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  r=p1
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa*(aa*(aa-9)+36)-35)+15)-1
  fd=8*a*(aa*(aa*(aa*(5*aa-36)+108)-70)+15)
  fdd=96*(aa*(3*aa*(aa*(5*aa-28)+60)-70)+5)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Uc10-07 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa*(aa*(aa-9)+36)-35)+15)-1
  fd=8*a*(aa*(aa*(aa*(5*aa-36)+108)-70)+15)
  oz=z
  w=f-f/fd
  aw=4*w-2, aaw=aw*aw
  fw=aaw*(aaw*(aaw*(aaw*(aaw-9)+36)-35)+15)-1
  z=w-fw/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Uc10-08 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=sin(aax*(aax*(aax*(aax*(aax-9)+36)-35)+15)-1)
  Ty=sin(aay*(aay*(aay*(aay*(aay-9)+36)-35)+15)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Uc10-09 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=fn1(aax*(aax*(aax*(aax*(aax-9)+36)-35)+15)-1)
  Ty=fn1(aay*(aay*(aay*(aay*(aay-9)+36)-35)+15)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Uc10-10 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1-2, aa=a*a
  fz=aa*(aa*(aa*(aa*(aa-9)+36)-35)+15)-1:
  zt=z
  foz=fz
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa*(aa*(aa-9)+36)-35)+15)-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Uc10-11 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  const=p1, z=pixel:
  a=4*z-2, aa=a*a
  z=(aa*(aa*(aa*(aa*(aa-9)+36)-35)+15)-1)*const
  |z|<100
  ;SOURCE: chby11.frm
}


Uc10-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  const=pixel, z=p1:
  a=4*z-2, aa=a*a
  z=(aa*(aa*(aa*(aa*(aa-9)+36)-35)+15)-1)*const
  |z|<100
  ;SOURCE: chby12.frm
}


Uc10-13 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  r=p1
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa*(aa*(aa-9)+36)-35)+15)-1
  fd=8*a*(aa*(aa*(aa*(5*aa-36)+108)-70)+15)
  fdd=96*(aa*(3*aa*(aa*(5*aa-28)+60)-70)+5)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Uc10-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa*(aa*(aa-9)+36)-35)+15)-1
  fd=8*a*(aa*(aa*(aa*(5*aa-36)+108)-70)+15)
  oz=z
  w=f-f/fd
  aw=4*w-2, aaw=aw*aw
  fw=aaw*(aaw*(aaw*(aaw*(aaw-9)+36)-35)+15)-1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby14.frm
}


Uc10-15 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa*(aa*(aa-9)+36)-35)+15)-1
  fd=8*a*(aa*(aa*(aa*(5*aa-36)+108)-70)+15)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Uc10-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1-2, aa=a*a
  fz=aa*(aa*(aa*(aa*(aa-9)+36)-35)+15)-1:
  zt=z
  foz=fz
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa*(aa*(aa-9)+36)-35)+15)-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby16.frm
}


Uc10-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  z=pixel, oz=0
  fz=523
  zt=fn1(z)+p1:
  foz=fz
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa*(aa*(aa-9)+36)-35)+15)-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Uc10-18 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  z=pixel, oz=0
  fz=523
  zt=fn1(z)+p1:
  foz=fz
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa*(aa*(aa-9)+36)-35)+15)-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  sqrt(|(|z|)-(|oz|)|)>=0.0001
  ;SOURCE: chby18.frm
}


Uc10-19 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(aax*(aax*(aax*(aax*(aax-9)+36)-35)+15)-1)
  ay=4*y-2, aay=ay*ay
  x=x-t*(aay*(aay*(aay*(aay*(aay-9)+36)-35)+15)-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Uc10-20 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*sin(aax*(aax*(aax*(aax*(aax-9)+36)-35)+15)-1)
  ay=4*y-2, aay=ay*ay
  x=x-t*sin(aay*(aay*(aay*(aay*(aay-9)+36)-35)+15)-1)
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Uc10-21 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(fn1(aax*(aax*(aax*(aax*(aax-9)+36)-35)+15)-1))
  ay=4*y-2, aay=ay*ay
  x=x-t*(fn1(aay*(aay*(aay*(aay*(aay-9)+36)-35)+15)-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Uc10-22 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=fn1(aax*(aax*(aax*(aax*(aax-9)+36)-35)+15)-1)
  Ty=fn2(aay*(aay*(aay*(aay*(aay-9)+36)-35)+15)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Uc10-23 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  aax=ax*ax, aay=ay*ay
  Tx=fn1(aax*(aax*(aax*(aax*(aax-9)+36)-35)+15)-1)
  Ty=fn2(aay*(aay*(aay*(aay*(aay-9)+36)-35)+15)-1)
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Uc10-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(fn1(aax*(aax*(aax*(aax*(aax-9)+36)-35)+15)-1))
  ay=4*y-2, aay=ay*ay
  x=x-t*(fn2(aay*(aay*(aay*(aay*(aay-9)+36)-35)+15)-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Uc10-25 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(fn1(aax*(aax*(aax*(aax*(aax-9)+36)-35)+15)-1))
  ay=4*y-2, aay=ay*ay
  x=x-t*(fn2(aay*(aay*(aay*(aay*(aay-9)+36)-35)+15)-1))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Uc10-26 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  Tx=(fn1(aax*(aax*(aax*(aax*(aax-9)+36)-35)+15)-1))
  ay=4*y-2, aay=ay*ay
  Ty=(fn1(aay*(aay*(aay*(aay*(aay-9)+36)-35)+15)-1))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Uc10-27 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  ax=4*x-2, aax=ax*ax
  Tx=(fn1(aax*(aax*(aax*(aax*(aax-9)+36)-35)+15)-1))
  ay=4*y-2, aay=ay*ay
  Ty=(fn1(aay*(aay*(aay*(aay*(aay-9)+36)-35)+15)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Uc10-28 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  ax=4*x-2, aax=ax*ax
  Tx=(fn1(aax*(aax*(aax*(aax*(aax-9)+36)-35)+15)-1))
  ay=4*y-2, aay=ay*ay
  Ty=(fn1(aay*(aay*(aay*(aay*(aay-9)+36)-35)+15)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Uc10-29 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  Tx=(fn1(aax*(aax*(aax*(aax*(aax-9)+36)-35)+15)-1))
  ay=4*y-2, aay=ay*ay
  Ty=(fn1(aay*(aay*(aay*(aay*(aay-9)+36)-35)+15)-1))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Uc10-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax0=4*x0-2, ax1=4*x1-2
  aax0=ax0*ax0, aax1=ax1*ax1
  Fx0=aax0*(aax0*(aax0*(aax0*(aax0-9)+36)-35)+15)-1
  Fx1=aax1*(aax1*(aax1*(aax1*(aax1-9)+36)-35)+15)-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Ucgrav {; 6-1-98 kathy roth
        ; variation on frm by Morgan Owens and Mark Christenson
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  Tx=fn1(ax*(ax*ax-2))
  Ty=fn1(ay*(ay*ay-2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  w = fn1(z)
  z = fn3(v/fn2(w*w)) + p2
  |z| < p3
  ;SOURCE: 98msg.frm
}


UcPop {; 5-29-98 kathy roth
       ; variant of Morgan Owens Uc03
  x=real(pixel), y=imag(pixel), h=imag(p2)
  t=p1, bailout = real(p2):
  newx = x-h*sin((y) + tan(3*y))
  newy = y-h*sin((x) + tan(3*x))
  x=newx, y=newy
  z=x+flip(y)
  x=real(z), y=imag(z)
  ax=4*x-2, ay=4*y-2
  Tx=fn1(ax*(ax*ax-2))
  Ty=fn1(ay*(ay*ay-2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: 98msg.frm
}


ULI_1 {
  z = Pixel: z = fn1(1/fn2(z))
  |z| <= 4
  ;SOURCE: uli.frm
}


ULI_2 {
  z = Pixel: z = fn1(1/fn2(z+p1))
  |z| <= p2
  ;SOURCE: uli.frm
}


ULI_3 {
  z = Pixel: z = fn1(1/fn2(z+p1)+p1)
  |z| <= p2
  ;SOURCE: uli.frm
}


ULI_4 {
  z = Pixel:
  z = fn1(1/(z+p1))*fn2(z+p1)
  |z| <= p2
  ;SOURCE: fractint.frm
}


ULI_5 {
  z = Pixel, c = fn1(pixel):
  z = fn2(1/(z+c))*fn3(z+c)
  |z| <= p1
  ;SOURCE: fractint.frm
}


ULI_6 {
  z = Pixel:
  z = fn1(p1+z)*fn2(p2-z)
  |z| <= p2+16
  ;SOURCE: fractint.frm
}


union {; Giuseppe Zito
  z = pixel
  : 
  x = real(z), y = imag(z)
  s0 = y
  s0 = s0 +y
  s0 = s0 *y
  s0 = s0 *y
  s1 = x
  s0 = s0 +s1
  s0 = s0 -y
  s0 = s0 -y
  newx = s0 
  s0 = x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


Unity (XYAXIS) {; Tim Wegner - added Jun 1994
                ; needs periodicity=no, float=yes
                ; ddelmin is a somewhat arbitrary small number
  ddelmin = .0001, x = real(Pixel), y = imag(Pixel):
  One = sqr(x) + sqr(y)
  y = (2.0 - One) * x
  x = (2.0 - One) * y
  One <= 2.0 && |One - 1.0| > ddelmin
  ;SOURCE: parser.frm
}

