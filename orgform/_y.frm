

y9 {; Revised 4/27/96 to eliminate superfluous "+c"
    ; Original version of this formula may be discarded
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=pixel, m=fn3(tan(1.9^pixel)), n=fn4((0,1.9)*pixel):
  t=(cotan(z^p1))+sqr(z/p2)
  z=(fn1(t*1/m))+fn2(t*1/n)
  |z|<=4
  ;SOURCE: new.frm
}


YWplane {; Jim Muth
  z=flip(real(pixel))+real(p1)
  c=flip(imag(pixel))+imag(p1):
  z=sqr(z)+c
  |z| <= 36
  ;SOURCE: 97msg.frm
}


yxs12 {
  z=pixel, x=(tan(z)+whitesq), y=cos(z)
  x2=(1/x)*p2, y2=(1/y)*p3, x3=x2*y, y3=y2*x:
  d=fn4(z/y2)
  x1=(y3+fn2(x))+whitesq
  y1=fn3(x1)/z
  z=fn1(x1*(y1))/p1
  |z|<=4
  ;SOURCE: ad978-1.frm
}


yxs15 {
  z=pixel, x=tan(z), y=cosxx(z):
  d=fn4(x*y)
  x1=(y+fn2(x-y))+whitesq
  y1=(((x+z)*(y-1))-fn3(x1))/cotan(z)
  z=fn1(x1+(p1*(y1)))+whitesq
  |z|<=4
  ;SOURCE: ad978-1.frm
}


yxs5 {; Revised for Fractint v20 by G. Martin
  z=pixel, x=fn1(pixel), y=fn2(1-tan(z)):
  x2=fn3(x/(-2)*y), y3=fn3(z^(-2)*y)
  d=fn4(1/x2*y3-1)
  x=(x2*y3+fn2(x*y3))+whitesq
  y=(x2*y3-fn3(y*x2))/d
  z=fn1(x+y)
  |z|<=4
  ;SOURCE: ad978-1.frm
}


yy2 (XAXIS) {
 ; This formula doesn't seem to work the same in fractint vers > 17.2
 ; I haven't figured out why yet but what should be inside, isn't anymore.
 ; Might be a new fractint bug or perhaps a side effect from a bugfix.
  z = zp1 = pixel, zp2 = (0,0):
  temp = z
  z = zp1^z - zp2
  zp2 = zp1
  zp1 = 1/temp
  |zp2| <= 4
  ;SOURCE: noel.frm
}


yyt {
   ; Changing the yyy to the more general form using P1
  z = zp1 = pixel, zp2 = (0,0), huge=1.0e32:
  temp = z
  z = zp1^z - zp2
  zp2 = zp1
  zp1 = p1/temp
  (|zp2| <= 64) && (|z| <= huge) 
  ;SOURCE: noel.frm
}


yyy (XAXIS) {
 ; Try Zprev to the power Zed (the reverse of the ZZZ function
 ; This formula doesn't seem to work the same in fractint vers > 17.2
 ; I haven't figured out why yet but what should be inside, isn't anymore.
 ; It doesn't change the structure, just the colouring.
  z = zp1 = pixel, zp2 = (0,0):
  temp = z
  z = zp1^z - zp2
  zp2 = zp1
  zp1 = 1/temp
  |zp1| <= 4
  ;SOURCE: noel.frm
}


YZplane {; Jim Muth
  z=real(pixel)+flip(real(p1))
  c=flip(imag(pixel))+imag(p1):
  z=sqr(z)+c
  |z| <= 36
  ;SOURCE: 97msg.frm
}


YZplaneN {; Jim Muth
  z=real(pixel)+flip(real(p1))
  c=flip(imag(pixel))+imag(p1):
  z=z^p2+c
  |z| <= 36
  ;SOURCE: 97msg.frm
}

