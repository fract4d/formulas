
CP4 (XAXIS)   { ; Russell Walsmith <russw@lycos.com> <russwals@hotmail.com>
                ; Mon, 27 Jan 2003 21:13:54
                ; http://www.fibonacci-arrays.com/
x=real(pixel), y=imag(pixel)*(0,-1), a=b=0:
a1=a^2+b^2, b1=2*a*b
a=a1+x, b=b1+y
z=sqrt(a^2 + b^2)
z < 4 }


CP6 (XAXIS)   { ; Russell Walsmith <russw@lycos.com> <russwals@hotmail.com>
                ; Mon, 27 Jan 2003 21:13:54
                ; http://www.fibonacci-arrays.com/
x=real(pixel),y=imag(pixel)*(0,-1),w=p1, a=b=c=0:
a1=a^2-2*b*c
b1=-c^2+2*a*b
c1=b^2+2*c*a
a=a1+x,b=b1+y,c=c1+w
z=sqrt(a^2+b^2+c^2)
z < 4 }


CP8           { ; Russell Walsmith <russw@lycos.com> <russwals@hotmail.com>
                ; Wed, 29 Jan 2003 19:49:43
                ; http://www.fibonacci-arrays.com/
c1=real(pixel),c2=imag(pixel)*p3,c3=p1,c4=p2
z1=z2=z3=z4=0:
t1=z1*z1-z3*z3-2*z2*z4
t2=2*z1*z2-2*z3*z4
t3=2*z1*z3+z2*z2-z4*z4
t4=2*z1*z4+2*z2*z3
z1=t1+c1,z2=t2+c2,z3=t3+p1,z4=t4+p2
z=sqrt(t1^2+t2^2+t3^2+t4^2)
z < 4 }


CP8 (XAXIS)   { ; Russell Walsmith <russw@lycos.com> <russwals@hotmail.com>
                ; Mon, 27 Jan 2003 21:13:54
                ; http://www.fibonacci-arrays.com/
x=real(pixel),y=imag(pixel)*(0,1),v=p1,w=p2
a=b=c=d=0:
a1=a^2-c^2-2*b*d
b1=2*a*b-2*c*d
c1=2*a*c+b^2-d^2
d1=2*a*d+2*b*c
a=a1+x,b=b1+y,c=c1+v,d=d1+w
z=sqrt(a^2+b^2+c^2+d^2)
z < 4 }


CP8e          { ; Russell Walsmith <russw@lycos.com> <russwals@hotmail.com>
                ; Mon, 03 Feb 2003 16:22:26
                ; http://www.fibonacci-arrays.com/
x=real(pixel),y=imag(pixel),v=p1,w=p2
x1=x2=y1=y2=v1=v2=w1=w2=0:
  a1=x1^2+x2^2+2*y1*y2+2*v1*v2+2*w1*w2
  a2=y1^2+y2^2+2*x1*x2+2*v1*w1+2*v2*w2
  b1=v1^2+w2^2+2*x1*y1+2*x2*y2+2*v2*w1
  b2=v2^2+w2^2+2*x1*y2+2*x2*y1+2*v1*w2
  c1=2*x1*v1+2*x2*w2+2*y1*v2+2*y2*w1
  c2=2*x1*v2+2*x2*w1+2*y1*w2+2*y2*v1
  d1=2*x1*w1+2*x2*v2+2*y1*v1+2*y2*w2
  d2=2*x1*w2+2*x2*v1+2*y1*w1+2*y2*v2
  x1=a1+x,x2=a2-x,y1=b1+y,y2=b2-y,
  v1=c1+v,v2=c2-v,w1=d1+w,w2=d2-w
z=sqrt((a1-a2)^2+(b1-b2)^2+(c1-c2)^2+(d1-d2)^2)
z <= 16 }


CP10 (XAXIS)  { ; Russell Walsmith <russw@lycos.com> <russwals@hotmail.com>
                ; Mon, 27 Jan 2003 21:13:54
                ; http://www.fibonacci-arrays.com/
x=real(pixel), y=imag(pixel)*(0,-1), u=p1, v=p2, w=p3
a=b=c=d=e=0:
a1=a^2-2*b*e-2*c*d
b1=-d^2+2*a*b-2*c*e
c1=b^2+2*a*c-2*d*e
d1=-e^2+2*a*d+2*b*c
e1=c^2+2*a*e+2*b*d
a=a1+x,b=b1+y,c=c1+u,d=d1+v,e=e1+w
z=sqrt(a^2+b^2+c^2+d^2+e^2)
z < 4 }


MrT           { ; Russell Walsmith <russw@lycos.com> <russwals@hotmail.com>
                ; Mon, 03 Feb 2003 16:22:26
                ; http://www.fibonacci-arrays.com/
x=real(pixel),y=imag(pixel),v=p1
x1=y1=v1=0:
  a=x1^2+2*y1*v1
  b= v1^2+2*x1*y1
  c= y1^2+2*x1*v1
x1=a+x,y1=b+y,v1=c+v
z=sqrt(a^2+b^2+c^2)
z < 8 }


MrTe          { ; Russell Walsmith <russw@lycos.com> <russwals@hotmail.com>
                ; Mon, 03 Feb 2003 16:22:26
                ; http://www.fibonacci-arrays.com/
x=real(pixel), y=imag(pixel), v=p1
x1=x2=y1=y2=v1=v2=0:
  a1=x1^2+x2^2+2*y1*v1+2*y2*v2
  a2=2*x1*x2+2*y1*v2+2*y2*v1
  b1=v1^2+v2^2+2*x1*y1+2*x2*y2
  b2=2*x1*y2+2*x2*y1+2*v1*v2
  c1=y1^2+y2^2+2*x1*v1+2*x2*v2
  c2=2*x1*v2+2*x2*v1+2*y1*y2
x1=a1+x,x2=a2-x,y1=b1+y,y2=b2-y,v1=c1+v,v2=c2-v
z=sqrt((a1-a2)^2+(b1-b2)^2+(c1-c2)^2)
  z < 8 }


C-set         { ; Russell Walsmith <russw@lycos.com>
                ; Sat, 02 Jul 2005 15:14:38
                ; http://www.fibonacci-arrays.com/
z=0, c=pixel:
    z=conj(z^2)+c
z < 1000 }


C4            { ; Russell Walsmith <russw@lycos.com> <russwals@hotmail.com>
                ; Thu, 30 Jan 2003 16:37:44
                ; http://www.fibonacci-arrays.com/
x=real(pixel), y=imag(pixel)
a=b=0:
a1 = a^2-b^2
b1 = 2*a*b
a=a1+x, b=b1+y
z = sqrt(a^2 + b^2)
z < 4 }


C4-2          { ; Russell Walsmith <russw@lycos.com>
                ; Sat, 02 Jul 2005 15:14:38
                ; http://www.fibonacci-arrays.com/
x=real(pixel), y=imag(pixel)
a=b=c=d=0:
    x1=a^2+b^2+2*c*d
    x2=c^2+d^2+2*a*b
    y1=2*a*c+2*b*d
    y1=2*a*d+2*b*c
    a=x1+x, b=x2-x, c=y1+y, d=y2-y
    z=(a-b)^2+(c-d)^2
z < 1000 }


C4e           { ; Russell Walsmith <russw@lycos.com> <russwals@hotmail.com>
                ; Wed, 05 Feb 2003 19:43:02
                ; http://www.fibonacci-arrays.com/
x=real(pixel), y=imag(pixel),
x1=x2=y1=y2=0:
  a1=x1^2+x2^2+2*y1*y2+x
  a2=2*x1*x2+y1^2+y2^2-x
  b1=2*x1*y1+2*x2*y2+y
  b2=2*x1*y2+2*x2*y1-y
x1=a1, x2=a2, y1=b1, y2=b2
z=sqrt((a1-a2)^2+(b1-b2)^2)
z < 10000 }


C4G           { ; Russell Walsmith <russw@lycos.com> <russwals@hotmail.com>
                ; Wed, 05 Feb 2003 19:43:02
                ; http://www.fibonacci-arrays.com/
                ; p1 is (plus or minus) 1 or i 
x=real(pixel), y=imag(pixel)*p1
a=b=0:
a1 = a^2-p1^2*b^2
b1 = 2*a*b
a=a1+x, b=b1+y
z = sqrt(a^2 + b^2)
z < 4 }


C4r           { ; Russell Walsmith <russw@lycos.com>
                ; Sat, 02 Jul 2005 15:14:38
                ; http://www.fibonacci-arrays.com/
x=real(pixel), y=imag(pixel)
a=b=0:
    x1=a^2-b^2
    y1=2*a*b
    a=x1+x, b=y1+x
    z=a^2+b^2
z < 1000 }


C6v           { ; Russell Walsmith <russw@lycos.com>
                ; Sat, 02 Jul 2005 15:14:38
                ; http://www.fibonacci-arrays.com/
                ; degree 6 elements are opposed on same axis
x=real(pixel), y=imag(pixel), v=p1
x1=x2=y1=y2=v1=v2=0:
    a1 = x1^2+x2^2+2*y1*y2+2*v1*v2
    a2 = 2*x1*x2+2*y1*v2+2*y2*v1
    b1 = 2*x1*y1+2*x2*v1+ y2^2+ v2^2
    b2 = 2*x1*y2+2*x2*v2+ y1^2+ v1^2
    c1 = 2*x1*v1+2*x2*y1+2*y2*v2
    c2 = 2*x1*v2+2*x2*y2+2*y1*v1
    x1=a1+x, x2=a2-x
    y1=b1+y, y2=b2-y
    v1=c1+v, v2=c2-v
   z = (x1-x2)^2 + (y1-y2)^2 + (v1-v2)^2
z < 1000 }


C10           { ; Russell Walsmith <russw@lycos.com>
                ; Sat, 02 Jul 2005 15:14:38
                ; http://www.fibonacci-arrays.com/
c1=real(pixel), c2=imag(pixel)
c3=p1, c4=p2, c5=p3
u=v=w=x=y=0:
    a=u^2+2*v*y+2*w*x
    b=x^2+2*u*v+2*w*y
    c=v^2+2*u*w+2*x*y
    d=y^2+2*u*x+2*v*w
    e=w^2+2*u*y+2*v*x
    u=a+c1, v=b+c2, w=c+c3
    x=d+c4, y=e+c5
    z=u^2+v^2+w^2+x^2+y^2
z < 1000 }


D3            { ; Russell Walsmith <russw@lycos.com>
                ; Sat, 02 Jul 2005 15:14:38
                ; http://www.fibonacci-arrays.com/
x=real(pixel), y=imag(pixel), v=p1
x1=x2=y1=y2=v1=v2=0:
    a1 = x1^2+x2^2+y1^2+y2^2+2*v1*v2
    a2 = 2*x1*x2+y1*v2+y2*v1+v1*y1+v2*y2
    b1 = 2*x1*y1+x2*v1+y2*v2+v1*y2+v2*x2
    b2 = 2*x1*y2+x2*v2+y1*v1+v1*x2+v2*y1
    c1 = v2^2+2*x1*v1+x2*y1+y1*y2+y2*x2
    c2 = v1^2+2*x1*v2+x2*y2+y1*x2+y2*y1
    x1=a1+x, x2=a2-x
    y1=b1+y, y2=b2-y
    v1=c1+v, v2=c2-v
   z = (x1-x2)^2 + (y1-y2)^2 + (v1-v2)^2
z < 1000  }


D3e           { ; Russell Walsmith <russw@lycos.com> <russwals@hotmail.com>
                ; Mon, 03 Feb 2003 16:28:12
                ; http://www.fibonacci-arrays.com/
x=real(pixel), y=imag(pixel), v=p1
x1=x2=y1=y2=v1=v2=0:
  a1=x1^2+x2^2+y1^2+v2^2+2*y1*v1
  a2=2*x1*x2+y1*y2+v1*v2+y2*v1+v2*y1
  b1=v1^2+2*x1*y1+x2*y2+y2*v2+v2*x2
  b2=2*x1*y2+y1*v2+v1*x2+x2*y1+v2*v1
  c1=y1^2+2*x1*v1+x2*v2+y2*x2+v2*y2
  c2=2*x1*v2+y1*x2+v1*y2+x2*v1+y2*y1
x1=a1+x, x2=a2-x, y1=b1+y, y2=b2-y, v1=c1+v, v2=c2-v
z=sqrt((a1-a2)^2+(b1-b2)^2+(c1-c2)^2)
z < 8 }


D4e           { ; Russell Walsmith <russw@lycos.com> <russwals@hotmail.com>
                ; Mon, 03 Feb 2003 16:28:12
                ; http://www.fibonacci-arrays.com/
x=real(pixel),y=imag(pixel),v=p1,w=p2
x1=x2=y1=y2=v1=v2=w1=w2=0:
  a1=x1^2+x2^2+v1^2+w1^2+v2^2+w2^2+2*y1*y2
  a2=y1^2+y2^2+2*x1*x2+2*v1*v2+2*w1*w2
  b1=2*x1*y1+2*x2*y2+v1*w1+w1*v2+v2*w2+w2*v1
  b2=2*x1*y2+2*x2*y1+v1*w2+w1*v1+v2*w1+w2*v2
  c1=2*x1*v1+2*x2*v2+y1*w1+y2*w2+w1*y2+w2*y1
  c2=2*x1*v2+2*x2*v1+y1*w2+y2*w1+w1*y1+w2*y2
  d1=2*x1*w1+2*x2*w2+y1*v2+y2*v1+v1*y1+v2*y2
  d2=2*x1*w2+2*x2*w1+y1*v1+y2*v2+v1*y2+v2*y1
x1=a1+x,x2=a2-x,y1=b1+y,y2=b2-y,
v1=c1+v,v2=c2-v,w1=d1+w,w2=d2-w
z=sqrt((a1-a2)^2+(b1-b2)^2+(c1-c2)^2+(d1-d2)^2)
z < 16 }


K4            { ; Russell Walsmith <russw@lycos.com>
                ; Sat, 02 Jul 2005 15:14:38
                ; http://www.fibonacci-arrays.com/
x=real(pixel), y=imag(pixel)
a=b=c=d=0:
    x1=a^2+b^2+2*c*d
    x2=2*a*b+2*c*d
    y1=2*a*c+2*b*d
    y1=2*a*d+2*b*c
    a=x1+x, b=x2-x, c=y1+y, d=y2-y
    z=(a-b)^2+(c-d)^2
z < 1000 }


K4e           { ; Russell Walsmith <russw@lycos.com> <russwals@hotmail.com>
                ; Mon, 03 Feb 2003 16:28:12
                ; http://www.fibonacci-arrays.com/
x=real(pixel), y=imag(pixel),
x1=x2=y1=y2=0:
  a1=x1^2+x2^2+y1^2+y2^2
  a2=2*x1*x2+2*y1*y2
  b1=2*x1*y1+2*x2*y2
  b2=2*x1*y2+2*x2*y1
x1=a1+x, x2=a2-x, y1=b1+y, y2=b2-y
z=sqrt((a1-a2)^2+(b1-b2)^2)
z < 8 }


Mset          { ; Russell Walsmith <russw@lycos.com> <russwals@hotmail.com>
                ; Wed, 05 Feb 2003 19:43:02
                ; http://www.fibonacci-arrays.com/
x=real(pixel), y=imag(pixel),
x1=y1=0:
  a=x1^2-y1^2+x
  b=2*x1*y1+y
x1=a, y1=b
z=sqrt(a^2+b^2)
z < 10000 }


Mtest         { ; Russell Walsmith <russw@lycos.com> <russwals@hotmail.com>
                ; Wed, 05 Feb 2003 19:43:02
                ; http://www.fibonacci-arrays.com/
x=real(pixel), y=imag(pixel)*p1,
a=b=0:
  a1=a^2+a*b+x
  b1=b^2+a*b+y
a=a1, b=b1
z=sqrt(a^2+b^2)
z < 10000 }


Ptest         { ; Russell Walsmith <russw@lycos.com> <russwals@hotmail.com>
                ; Wed, 05 Feb 2003 19:43:02
                ; http://www.fibonacci-arrays.com/
                ;use floating point
x=real(pixel),y=imag(pixel)*p2,v=p1
a=b=c=0:
  a1=a^2-p2^2*a*b-p2^2*a*c
  b1=b^2-p2^2*a*b-p2^2*b*c
  c1=c^2-p2^2*c*b-p2^2*a*c
a=a1+x,b=b1+y,c=c1+v
z=sqrt(a^2+b^2+c^2)
z < 10000}


Ptest2        { ; Russell Walsmith <russw@lycos.com> <russwals@hotmail.com>
                ; Wed, 05 Feb 2003 19:43:02
                ; http://www.fibonacci-arrays.com/
x=real(pixel),y=imag(pixel)*p2,v=p1
a=b=c=0:
  a1=a^3+3*b^2*a+3*c^2*a+2*a*b*c
  b1=b^3+3*a^2*b+3*c^2*b+2*a*b*c
  c1=c^3+3*a^2*c+3*b^2*c+2*a*b*c
a=a1+x,b=b1+y,c=c1+v
z=sqrt(a^2+b^2+c^2)
z < 10000 }


Ptest3        { ; Russell Walsmith <russw@lycos.com> <russwals@hotmail.com>
                ; Wed, 05 Feb 2003 19:43:02
                ; http://www.fibonacci-arrays.com/
x=real(pixel),y=imag(pixel)*p2,v=p1
a=b=c=0:
a1=a^3+b^3+c^3+6*x*y*z
b1=3*b^2*c+3*c^2*a+3*a^2*b
c1=3*c^2*b+3*a^2*c+3*b^2*a
a=a1+x,b=b1+y,c=c1+v
z=sqrt(a^2+b^2+c^2)
z < 10000 }


TGirl         { ; Russell Walsmith <russw@lycos.com> <russwals@hotmail.com>
                ; Mon, 20 Jan 2003 07:53:44
                ; http://www.fibonacci-arrays.com/
c1=real(pixel),c2=imag(pixel)*(0,-1),c3=p1
z1=z2=z3=0:
t1=z1*z1+2*z2*z3, t2=z3*z3+2*z1*z2, t3=z2*z2+2*z3*z1
z1=t1+c1,z2=t2+c2,z3=t3+c3
z=z1+z2+z3
z < 64 }

; TGirl is easily persuaded to produce Julia sets.
; Try, say, z1=-0.75 with z2 and/or z3 at or near 0.1.

TJul          { ; Russell Walsmith <russw@lycos.com> <russwals@hotmail.com>
                ; Mon, 20 Jan 2003 07:53:44
                ; http://www.fibonacci-arrays.com/
z1=real(pixel),z2=imag(pixel)*(0,1),z3=p3:
t1=z1*z1+2*z2*z3
t2=z3*z3+2*z1*z2
t3=z2*z2+2*z3*z1
z1=t1+p1,z2=t2+p2,z3=t3+p3
z=z1*z2+z2*z3+z3*z1
z < 64 }


TMan        { ; Russell Walsmith <russw@lycos.com> <russwals@hotmail.com>
              ; Fri, 17 Jan 2003 11:12:25
              ; http://www.fibonacci-arrays.com/Triternions.pdf 
  c1=real(pixel),c2=imag(pixel),c3=p1
  z1=z2=z3=0:
  t1=z1*z1+2*z2*z3
  t2=z3*z3+2*z1*z2
  t3=z2*z2+2*z3*z1
  z1=t1+c1,z2=t2-c2*c2,z3=t3+c3
  z=z1+z2+z3
  |z| < 8
}


TMan (XAXIS)  { ; Russell Walsmith <russw@lycos.com> <russwals@hotmail.com>
                ; Wed, 22 Jan 2003 06:01:58
                ; http://www.fibonacci-arrays.com/
c1=real(pixel),c2=imag(pixel)*(0,1),c3=p1
z1=z2=z3=0:
t1=z1*z1+2*z2*z3
t2=z3*z3+2*z1*z2
t3=z2*z2+2*z3*z1
z1=t1+c1,z2=t2+c2,z3=t3+c3
z=(z1^2+z2^2+z3^2)^.5
z < 16 }


TJul (XAXIS)  { ; Russell Walsmith <russw@lycos.com> <russwals@hotmail.com>
                ; Wed, 22 Jan 2003 06:01:58
                ; http://www.fibonacci-arrays.com/
                ;Try z1=-0.75
z1=real(pixel),z2=imag(pixel)*(0,1),z3=p3:
t1=z1*z1+2*z2*z3
t2=z3*z3+2*z1*z2
t3=z2*z2+2*z3*z1
z1=t1+p1,z2=t2+p2,z3=t3+p3
z=(z1^2+z2^2+z3^2)^.5
z < 64 }


Triternions   { ; Russell Walsmith <russw@lycos.com> 
                ; Sun, 26 Jun 2005 21:06:30 
                ; http://www.fibonacci-arrays.com/ 
c1=real(pixel), c2=imag(pixel), c3=p1
x=y=v=0:
     a = x^2+2*y*v
     b = v^2+2*x*y
     c = y^2+2*x*v
     x=a+c1, y=b+c2, v=c+c3
     z=x^2+y^2+v^2
z < 1000 }


MsetCset1   { ; Russell Walsmith <russw@lycos.com> 
              ; Fri, 04 Nov 2005 21:15:57 
              ; http://www.fibonacci-arrays.com/ 
           ; toggle fn1 between 'ident' and 'conj'
z=0, c=(pixel):
  z=fn1(z^2+c)
z < 4 }


MsetCset2   { ; Russell Walsmith <russw@lycos.com> 
              ; Fri, 04 Nov 2005 21:15:57 
              ; http://www.fibonacci-arrays.com/ 
           ; toggle p1 between '1' and '-1'
x=real(pixel),y=imag(pixel)
x1=y1=0:
  a=x1^2-y1^2
  b=p1*(2*x1*y1)
  x1=a+x,y1=b+y
z=x1^2+y1^2
z < 4 }


3d_C-set    { ; Russell Walsmith <russw@lycos.com> 
              ; Fri, 04 Nov 2005 21:15:57 
              ; http://www.fibonacci-arrays.com/ 
           ; periodicity=no, outside=summ
           ; maxit > p5real*(p5imag+1)
  ;--------------------------------------------
  ;p1real: Rotation about x-axis (1st rotation)
  ;p1imag: Rotation about y-axis (2nd rotation)
  ;p2real: Far clipping plane
  ;p2imag: Near clipping plane
  ;p3real: x1(0)
  ;p3imag: y1(0)
  ;p4real: z1(0)
  ;p4imag: Bailout
  ;p5real: Maxiter per slice
  ;p5imag: Number of slices - 1
  ;--------------------------------------------
  ;
  bailout = imag(p4), tiefnum = imag(p5)
  delta = (real(p2)-imag(p2))/tiefnum
  tmp = pi/180
  rotXax = exp(flip(real(p1)*tmp)), rotYax = exp(flip(imag(p1)*tmp))
  ;
  HPixXY = rotYax
  VPixZ = real(rotXax)
  VPixXY = flip(conj(rotYax))
  NXY = VPixZ*VPixXY
  NZ = imag(conj(rotXax))
  VPixXY = -NZ*VPixXY
  ;
  tmp = NXY*imag(p2) + HPixXY*real(pixel) + VPixXY*imag(pixel)
  cx = cx0 = real(tmp), cy = cy0 = imag(tmp)
  cz = cz0 = NZ*imag(p2) + VPixZ*imag(pixel)       ;HPixZ -> 0
  tmp = NXY*delta, dcx = real(tmp), dcy = imag(tmp)
  dcz = NZ*delta
  x1 = real(p3)
  y1 = imag(p3)
  z1 = real(p4)
  j = m = i = 0:
    a = sqr(x1) + 2*y1*z1
    b = sqr(z1) + 2*x1*y1
    c = sqr(y1) + 2*x1*z1
    x1 = c + cx, y1 = b + cy, z1 = a + cz
    IF (bailout >= (sqr(x1)+sqr(y1)+sqr(z1)))
      i = i + 1
    ELSE
      i = 0
      m = m + 1
      cx = cx0 = cx0 + dcx
      cy = cy0 = cy0 + dcy
      cz = cz0 = cz0 + dcz
      x1 = real(p3), y1 = imag(p3), z1 = real(p4)
    ENDIF
    z = m - j
    j = j + 1
  tiefnum >= m && p5 >= i
  }


tc-set    { ; Russell Walsmith <russw@lycos.com> 
              ; Tue, 15 Nov 2005 23:29:53 
           ; periodicity=no, outside=summ
           ; maxit > p5real*(p5imag+1)
  ;--------------------------------------------
  ;p1real: Rotation about x-axis (1st rotation)
  ;p1imag: Rotation about y-axis (2nd rotation)
  ;p2real: Far clipping plane
  ;p2imag: Near clipping plane
  ;p3real: t --> c morph
  ;p3imag: ----
  ;p4real: z1(0)
  ;p4imag: Bailout
  ;p5real: Maxiter per slice
  ;p5imag: Number of slices - 1
  ;--------------------------------------------
  ;
  bailout = imag(p4), tiefnum = imag(p5)
  delta = (real(p2)-imag(p2))/tiefnum
  tmp = pi/180
  rotXax = exp(flip(real(p1)*tmp)), rotYax = exp(flip(imag(p1)*tmp))
  ;
  HPixXY = rotYax
  VPixZ = real(rotXax)
  VPixXY = flip(conj(rotYax))
  NXY = VPixZ*VPixXY
  NZ = imag(conj(rotXax))
  VPixXY = -NZ*VPixXY
  ;
  tmp = NXY*imag(p2) + HPixXY*real(pixel) + VPixXY*imag(pixel)
  cx = cx0 = real(tmp), cy = cy0 = imag(tmp)
  cz = cz0 = NZ*imag(p2) + VPixZ*imag(pixel)       ;HPixZ -> 0
  tmp = NXY*delta, dcx = real(tmp), dcy = imag(tmp)
  dcz = NZ*delta
  x1 = 0
  y1 = 0
  z1 = real(p4)
  j = m = i = 0:
    a = sqr(x1) + 2*y1*z1
    b = sqr(z1) + 2*x1*y1
    c = sqr(y1) + 2*x1*z1
    x1 = real(p3)*a + (1-real(p3))*c + cx, y1 = b + cy, z1 = (1-real(p3))*a + real(p3)*c + cz
    IF (bailout >= (sqr(x1)+sqr(y1)+sqr(z1)))
      i = i + 1
    ELSE
      i = 0
      m = m + 1
      cx = cx0 = cx0 + dcx
      cy = cy0 = cy0 + dcy
      cz = cz0 = cz0 + dcz
      x1 = 0, y1 = 0, z1 = real(p4)
    ENDIF
    z = m - j
    j = j + 1
  tiefnum >= m && p5 >= i
  }


MetaT-set   { ; Russell Walsmith <russw@lycos.com> 
              ; Wed, 23 Nov 2005 00:40:27 
           ;periodicity=no, outside=summ
           ;maxit > p5real*(p5imag+1)
  ;--------------------------------------------
  ;p1real: Rotation about x-axis (1st rotation)
  ;p1imag: Rotation about y-axis (2nd rotation)
  ;p2real: Far clipping plane
  ;p2imag: Near clipping plane
  ;p3real: Pixel^2 coefficient
  ;p3imag: 
  ;p4real: z1(0)
  ;p4imag: Bailout
  ;p5real: Maxiter per slice
  ;p5imag: Number of slices - 1
  ;--------------------------------------------
  ;
  bailout = imag(p4), tiefnum = imag(p5)
  delta = (real(p2)-imag(p2))/tiefnum
  tmp = pi/180
  rotXax = exp(flip(real(p1)*tmp)), rotYax = exp(flip(imag(p1)*tmp))
  ;
  HPixXY = rotYax
  VPixZ = real(rotXax)
  VPixXY = flip(conj(rotYax))
  NXY = VPixZ*VPixXY
  NZ = imag(conj(rotXax))
  VPixXY = -NZ*VPixXY
  ;
  tmp = NXY*imag(p2) + HPixXY*real(pixel) + VPixXY*imag(pixel)
  cx = cx0 = real(tmp), cy = cy0 = imag(tmp)
  cz = cz0 = NZ*imag(p2) + VPixZ*imag(pixel)       ;HPixZ -> 0
  tmp = NXY*delta, dcx = real(tmp), dcy = imag(tmp)
  dcz = NZ*delta
  x1 = 0
  y1 = 0
  z1 = real(p4)
  j = m = i = 0:
    a = sqr(x1) + 2*y1*z1
    b = sqr(z1) + 2*x1*y1
    c = sqr(y1) + 2*x1*z1
    x1 = imag(p3)*a + real(p3)*a^2 + cx
    y1 = imag(p3)*b + real(p3)*b^2 + cy
    z1 = imag(p3)*c + real(p3)*c^2 + cz
    IF (bailout >= (sqr(x1)+sqr(y1)+sqr(z1)))
      i = i + 1
    ELSE
      i = 0
      m = m + 1
      cx = cx0 = cx0 + dcx
      cy = cy0 = cy0 + dcy
      cz = cz0 = cz0 + dcz
      x1 = 0, y1 = 0, z1 = real(p4)
    ENDIF
    z = m - j
    j = j + 1
  tiefnum >= m && p5 >= i
  }


T_C_morph   { ; Russell Walsmith <russw@lycos.com> 
              ; Fri, 25 Nov 2005 21:47:41 
           ;periodicity=no, outside=summ
           ;maxit > p5real*(p5imag+1)
  ;--------------------------------------------
  ;p1real: Rotation about x-axis (1st rotation)
  ;p1imag: Rotation about y-axis (2nd rotation)
  ;p2real: Far clipping plane
  ;p2imag: Near clipping plane
  ;p3real: Constant coefficient
  ;p3imag: 
  ;p4real: z1(0)
  ;p4imag: Bailout
  ;p5real: Maxiter per slice
  ;p5imag: Number of slices - 1
  ;--------------------------------------------
  ;
  bailout = imag(p4), tiefnum = imag(p5)
  delta = (real(p2)-imag(p2))/tiefnum
  tmp = pi/180
  rotXax = exp(flip(real(p1)*tmp)), rotYax = exp(flip(imag(p1)*tmp))
  ;
  HPixXY = rotYax
  VPixZ = real(rotXax)
  VPixXY = flip(conj(rotYax))
  NXY = VPixZ*VPixXY
  NZ = imag(conj(rotXax))
  VPixXY = -NZ*VPixXY
  ;
  tmp = NXY*imag(p2) + HPixXY*real(pixel) + VPixXY*imag(pixel)
  cx = cx0 = real(tmp), cy = cy0 = imag(tmp)
  cz = cz0 = NZ*imag(p2) + VPixZ*imag(pixel)       ;HPixZ -> 0
  tmp = NXY*delta, dcx = real(tmp), dcy = imag(tmp)
  dcz = NZ*delta
  x1 = 0, y1 = 0, z1 = real(p4)
  d1 = sqrt(real(p3)), d2 = sqrt(1-real(p3))
  d3 = d1 + d2
  j = m = i = 0:
    a = sqr(x1) + 2*y1*z1
    b = sqr(z1) + 2*x1*y1
    c = sqr(y1) + 2*x1*z1
    x1 = d1*a + d2*c + cx
    y1 = d3*b + cy, z1 = d2*a + d1*c + cz
    IF (bailout >= (sqr(x1)+sqr(y1)+sqr(z1)))
      i = i + 1
    ELSE
      i = 0
      m = m + 1
      cx = cx0 = cx0 + dcx
      cy = cy0 = cy0 + dcy
      cz = cz0 = cz0 + dcz
      x1 = 0, y1 = 0, z1 = real(p4)
    ENDIF
    z = m - j
    j = j + 1
  tiefnum >= m && p5 >= i
  }


