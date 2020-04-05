; Compilation of Fractint formulas posted on the "Fractal Art"
; Discussion Group. Compiled by Les St Cair.
; Including formulas required for Jim Muth's FOTD
; Including formulas required for Jay Hill's FOTN

3telescope { ; (c) Jay Hill, 1998
             ; use outside=summ periodicity=0 
done = 1, z = 0, zc = 0, c = pixel
s=|c|, t1=(256*s - 96)*s + 32*Real(c); period 1 test
t2=16*s + 32*Real(c) + 16 ; period 2 test
B=sqrt(-4*c-7), t3=|8+4*c*(1-B)|, t4=|8+4*c*(1+B)| ; period 3 tests
z=z + 249*(t1<=3) + 250*(t2<=1) + 251*(t3<=1) + 252*(t4<=1) ; set colors
if(z>0) ; for periods 1, 2, and 3.
done=-1 ; color is set for c in a component, skip iterations
endif
: ; initialization.
zc=sqr(zc) + c ; standard MSet iteration
if (|zc| >= 4) ; Bailout at 4
done=-1 ; Set flag to force an exit.
endif
done >= 0 ; Continue if the flag >=0.
} 

3wayMandelbrot {; Jim Muth
z=p3, g=pixel, a=real(p1), b=imag(p1),
c=real(p2), d=imag(p2):
z=(a*z^b)+(c*z^d)+(.3*(sqr(z)))+g,
|z| <= 100
}

4drot-xz-xw {; Benno Schmid & Jim Muth
; real(p1)=rotation angle in degrees
; imag(p1)=exponent of Z
; p2=parallel planes, p3=proportional extra term
e=exp(flip(real(p1)*.01745329251994)),
z=e*imag(pixel)+flip(real(p2)),
c=real(pixel)+flip(imag(p2)):
z=z^imag(p1)+(real(p3)*z^imag(p3))+c,
|z| <= 36
}


4drot-xz-xwa {; Benno Schmid & Jim Muth
; formulaname appended to "a" to differentiate from
; previously posted 4drot-xz-xw formula
; real(p1)=exponent of Z
; imag(p1)=rotation angle in degrees
; p2 and p3=parallel planes
e=exp(flip(imag(p1)*.01745329251994)),
z=e*imag(pixel)+p2,
c=real(pixel)+p3:
z=z^real(p1)+c,
|z| <= 36
}

4Dxz-par (YAXIS) {;Benno Schmid <bm459885@stachus.muenchen.org>
   z=real(pixel)+flip(real(p1)),c=imag(pixel)+flip(imag(p1)):
    z=sqr(z)+c
    |z| <= 16
  }

4Dyw-par (ORIGIN) {;Benno Schmid <bm459885@stachus.muenchen.org>
   z=real(p1)+flip(real(pixel)),c=imag(p1)+flip(imag(pixel)):
    z=sqr(z)+c
    |z| <= 16
  }

4dxw-par (ORIGIN) {;Benno Schmid <bm459885@stachus.muenchen.org>
   z=real(pixel)+flip(real(p1)),c=flip(imag(pixel))+imag(p1):
    z=sqr(z)+c
    |z| <= 16
  }

4dyz-par {;Benno Schmid <bm459885@stachus.muenchen.org>
   i=sqrt(-1),
   z=flip(real(pixel))+real(p1),c=imag(pixel)+flip(imag(p1)):
    z=sqr(z)+c
    |z| <= 16
  }

5_man{; Stephen C. Ferguson
      ; adapted for Fractint by Les St Clair, 1997
      ; use real p1 to set bailout. try p1=4
z=0, c=pixel:
z=(z*z)+(log(c^5)/5)
|z| <=p1
}

AltRealSin {; Earl Hinrich, June 1997
  ; Mandelbrot variant
  ; real(z) replaced by sin(real(z))
  ; after z*z+c iteration
  z=c=pixel:
  z=z*z+c;
  z=sin(real(z))+flip(imag(z)),
  |z|<=64
}

AltRealSin1 {; Earl Hinrich, June 1997
; Mandelbrot variant
; real(z) replaced by sin(real(z))
; on alternate iterations
z=c=pixel:
z=z*z+c;
z=z*z+c;
z=sin(real(z))+flip(imag(z)),
|z|<=64
}

AltRealSin3{; Earl Hinrich, June 1997
  ; Mandelbrot variant
  ; real(z) replaced by sin(real(z))
  ; on alternate iterations
  z=c=pixel;
  t=1:
  z=z*z+c;
  a=(t+1)/2;
  b=1-a;
  t=-t;
  z=a*real(z)+b*sin(real(z))+flip(imag(z)),
  |z|<=64
}

BackwardBrot   { ; formula, Jim Muth
z=c=pixel:
z=p1^(z^p2)+(p3*c),
|z| <16  }

BasicNewton { ; Jim Muth
; REDUNDANT -- STILL NEEDS WORK
a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), k=real(p3), f=imag(p3),
z=pixel:
zx=z^b
zy=c*(zx*z)
z=(d*zy+a)/(k*zx),
f<=|zy-a|
}

BEES {;Ray Girvan June 1997
  ; Newton variant giving biomorphs
  ; z -> sin(z) before Newton iteration
  ; use floating point, periodicity=no
  ; try p1=0.1, p2=3 for bees
  ; p1=0.1, p2=6 for scorpions
  z=pixel:
  z1=sin(z)-p1;
  z2=z1^p2-1; any function f(z)
  z3=p2*(z1^(p2-1)); its derivative f'(z)
  z=z-(z2/z3),
  |z2| >= 0.00001
}

BillTry6 (yaxis) {; Bill Rossi
    z = pixel,c =pixel:
    z = fn1(z),
    c = pixel * c + z,
    c = fn2(c),
    z = z * pixel - c + z,
    c = pixel + c + z,
    c = fn3(c),
    z = z * pixel / c + z,
    c = pixel + c + z,
    c = fn4(c),
    z = z * pixel + c / z,
    |z| <= 4
 } 

boring {;Candidate for contest
  ;p2 = bailout value
    z=p1, c1=c2=c3=pixel, bailout=real(p2):
      z=z^3-c1*z^2+c2*z+c3,
  |z| <=bailout
  }

bubbles {; Jim Muth
 z=c=pixel:
  a=sqr(z)+(c-1)*z-c
  b=3*sqr(z)+c-1
  z=z-2*a/b,
   .000000000000000000000000000001 <= |a|
  }

Bwwwaaahaahahahaha { ; Jay Hill, 1998
; shift one midget over another, merge images
; p1 = shift of first midget
; p2 = scaling factor of first midget relative to second
; p3 = shift of second midget
; use outside=summ periodicity=0 passes=1float=y
done = 1, z = 0,
zc = c = (pixel+p3)*(1-whitesq) + (pixel/p2+p1) *whitesq
s=|c|, t1=(256*s - 96)*s + 32*Real(c), t2=16*s + 32*Real(c) + 16
B=sqrt(-4*c-7), t3=|8+4*c*(1-B)|, t4=|8+4*c*(1+B)| ; component tests
z=z + 249*(t1<=3) + 250*(t2<=1) + 251*(t3<=1) + 252*(t4<=1) ; set colors 
if(z>0) ; for periods 1, 2, 3
done=-1 ; color is set for c in a component, skip iterations
endif
:
zc=sqr(zc) + c ; standard MSet iteration
if (|zc| >= 4) ; Bailout at 4
done=-1 ; Set flag to force an exit.
endif
done >= 0 ; Continue if the flag >=0.
} 

carnival {; Jim Muth
z=c=pixel:
a=(z*z*z)+(c-2)*z-c
b=2*(sqr(z))+c-1
z=z-1*a/b
.000000000000000000000000000001 <= |a|
}

Colorit-16JS { ; (c) Jay Hill, 1998
; angle=real(p1)+sqrt(imag(p1)) 
; angle= log(Julia parameter)/pi
; when real(p1)=0, Julia is on edge of Period 1 component
A=i*real(p1)+sqrt(-imag(p1))
w=exp(A-log(16)/15), c=w-sqr(sqr(sqr(sqr(w)))), z=pixel:
z=sqr(sqr(sqr(sqr(z)))) + c
|z| <=4
}
 
Colorit2cove { ; (c) Jay Hill, 1998
done = 1, iter=0, z = 0, zc = 0, c = pixel, dz=1
: ; initialization.
iter = iter+1 ; gotta count em 
dz=2*zc*dz+1 ; derivative of z
zc=sqr(zc) + c ; standard MSet iteration
if(|zc| >= 1024) ; Bailout 
z = z -8 + ((sin(2*pi*iter/256)*Real(dz/zc))>0) + iter
done=-1 ; Set flag to force an exit.
endif
done >= 0 ; Continue if the flag >=0.
} 

Colorit-2rPanx { ; (c) Jay Hill, 1998
; p1= light angle (cos a, sin a)
; p2 = pan view point
if(p1==0)
p1=1
endif 
done = 1, iter=0, z = 0, zc = 0, dz=1,
c = exp(flip(pixel))+p2
: ; initialization.
iter = iter+1 ; gotta count em 
dz=2*zc*dz+1 ; derivative, dz/dc
zc=sqr(zc) + c ; standard MSet iteration
if(|zc| >= 1024) ; Bailout 
z = z -8 + ((sin(2*pi*iter/256)*Real(p1*dz/zc))>0) + iter
done=-1 ; Set flag to force an exit.
endif
done >= 0 ; Continue if the flag >=0.
} 

Colorit-3 { ; (c) Jay Hill, 1998
b=p1 ; cos(a)+i*sin(a), a=light angle 
if(p1==0)
  p1=1
endif
done = 1, iter=0, z = 0, zc = 0, c = pixel, dz=1:
iter = iter+1 ; gotta count em 
dz=3*sqr(zc)*dz+1 ; derivative, dz/dc
zc=zc*sqr(zc) + c ; standard MSet iteration
if(|zc| >= 1024)   ; Bailout 
  z = z -8 + ((sin(2*pi*iter/256)*Real(b*dz/zc))>0) + iter
  done=-1   ; Set flag to force an exit.
endif
done >= 0 ; Continue if the flag >=0.
} 

Colorit-3f { ; (c) Jay Hill, 1998
; p1= light angle (cos a, sin a)
; use these, float=y inside=0 outside=real
periodicity=0
iter=0, zc = 0, c = pixel, dz=1
; 23 is the color of the period 1 component.
z=23*(|(2*sinh(asinh(sqrt(-6.75)*c)/3))|<=1.0)
done=-(z>0) ; done if we know z is not 0
if(p1==0)
p1=1
endif
: ; initialization.
iter = iter+1 ; gotta count the iterations
dz=3*sqr(zc)*dz+1 ; derivative, dz/dc, a slope
for shading
zc=zc*sqr(zc) + c ; standard MSet cubic
iteration  z=z^3+c
if(|zc| >= 1024) ; Bailout 
z = z-8+((sin(2*pi*iter/256)*Real(p1*dz/zc))>0) + iter
done=-1 ; Set flag to force an exit.
endif
done >= 0 ; Continue if the flag >=0.
} 

Colorit-3fJS { ; (c) Jay Hill, 1998
; angle=real(p1)+sqrt(imag(p1)) 
; angle= log(Julia parameter)/pi
; when real(p1)=0, Julia is on edge of Period 1
component
A=(real(p1)+sqrt(imag(p1)))*sqrt(-1)
c=sinh(3*asinh(.5*exp(pi*A)))/sqrt(-6.75)
z=pixel:
z=z*sqr(z) + c
|z| <=4
} 

Colorit-3JS { ; three corner Siegel disk (c) Jay Hill, 1998
; angle=real(p1)+sqrt(imag(p1)) 
; angle= log(Julia parameter)/pi
; when real(p1)=0, Julia is on edge of Period 1 component
A=i*real(p1)+sqrt(-imag(p1))
w=exp(A-.5*log(3)), c=w*(1-sqr(w)), z=pixel:
z=z*sqr(z) + c
|z| <=4
} 

Colorit-3rPan { ; (c) Jay Hill, 1998
; p1= light angle (cos a, sin a)
; p2 = pan view point
if(p1==0)
p1=1
endif
done = 1, iter=0, z = 0, zc = 0, dz=1,
c = exp(flip(pixel))-p2
: ; initialization.
iter = iter+1 ; gotta count em 
dz=3*sqr(zc)*dz+1 ; derivative, dz/dc
zc=zc*sqr(zc) + c ; standard MSet iteration
if(|zc| >= 1024) ; Bailout 
z = z -8 + ((sin(2*pi*iter/256)*Real(p1*dz/zc))>0) + iter
done=-1 ; Set flag to force an exit.
endif
done >= 0 ; Continue if the flag >=0.
}

Colorit-4JS { ;  four corner Siegel disk (c) Jay Hill, 1998
; angle=real(p1)+sqrt(imag(p1)) 
; angle= log(Julia parameter)/pi
; when real(p1)=0, Julia is on edge of Period 1 component
A=i*real(p1)+sqrt(-imag(p1))
w=exp(A-log(4)/3), c=w-sqr(sqr(w)), z=pixel:
z=sqr(sqr(z)) + c
|z| <=4
} 

Colorit-5JS { ; five corner Siegel disk (c) Jay Hill, 1998
; angle=real(p1)+sqrt(imag(p1)) 
; angle= log(Julia parameter)/pi
; when real(p1)=0, Julia is on edge of Period 1 component
A=i*real(p1)+sqrt(-imag(p1))
w=exp(A-log(5)/4), c=w-w*sqr(sqr(w)), z=pixel:
z=z*sqr(sqr(z)) + c
|z| <=4
} 

Colorit-6JS { ;  six corner Siegel disk(c) Jay Hill, 1998
; angle=real(p1)+sqrt(imag(p1)) 
; angle= log(Julia parameter)/pi
; when real(p1)=0, Julia is on edge of Period 1 component
A=i*real(p1)+sqrt(-imag(p1))
w=exp(A-log(6)/5), c=w-sqr(w*sqr(w)), z=pixel:
z=sqr(z*sqr(z)) + c
|z| <=4
} 

Colorit-8JS { ; eight corner Siegel disk (c) Jay Hill, 1998
; angle=real(p1)+sqrt(imag(p1)) 
; angle= log(Julia parameter)/pi
; when real(p1)=0, Julia is on edge of Period 1 component
A=i*real(p1)+sqrt(-imag(p1))
w=exp(A-log(8)/7), c=w-sqr(sqr(sqr(w))), z=pixel:
z=sqr(sqr(sqr(z))) + c
|z| <=4
} 

ColoritL { ; (c) Jay Hill, 1998
done = 1, z = 0, zc = 0, c = pixel
s=|c|, t1=(256*s - 96)*s + 32*Real(c), t2=16*s + 32*Real(c) + 16
B=sqrt(-4*c-7), t3=|8+4*c*(1-B)|, t4=|8+4*c*(1+B)| ; component tests
z=z + 249*(t1<=3) + 250*(t2<=1) + 251*(t3<=1) + 252*(t4<=1) ; set colors
if(z>0) ; for periods 1, 2, and 3.
done=-1 ; color is set for c in a component, skip iterations
endif
: ; initialization.
zc=sqr(zc) + c ; standard MSet iteration
if (|zc| >= 4) ; Bailout at 4
done=-1 ; Set flag to force an exit.
endif
done >= 0 ; Continue if the flag >=0.
} 

ColoritM2 { ; (c) Jay Hill, 1998
done = 1, z = 0, zc = 0, c = pi*pixel
s=|c|, t1=(256*s - 96)*s + 32*Real(c), t2=16*s + 32*Real(c) + 16
z=z + 251*(t1<=3) + 252*(t2<=1) ; set colors
if(z>0) ; for periods 1, 2
done=-1 ; color is set for c in a component, skip iterations
endif
: ; initialization.
zc=sqr(zc) + c ; standard MSet iteration
if (|zc| >= 4) ; Bailout at 4
done=-1 ; Set flag to force an exit.
endif
done >= 0 ; Continue if the flag >=0.
}

ColoritM3 { ; (c) Jay Hill, 1998
done = 1, z = 0, zc = 0, c = pixel
s=|c|, t1=(256*s - 96)*s + 32*Real(c), t2=16*s + 32*Real(c) + 16
z=z + 251*(t1<=3) + 252*(t2<=1) ; set colors
if(z>0) ; for periods 1, 2
done=-1 ; color is set for c in a component, skip iterations
endif
: ; initialization.
zc=sqr(zc) + c ; standard MSet iteration
if (|zc| >= 4) ; Bailout at 4
done=-1 ; Set flag to force an exit.
endif
done >= 0 ; Continue if the flag >=0.
} 

Colorit-nJS { ; n corner Siegel disk (c) Jay Hill, 1998
n=(real(p2)); z:=z^n+c 
; angle=real(p1)+sqrt(imag(p1)) 
; angle= log(Julia parameter)/pi
; when real(p1)=0, Julia is on edge of Period 1 component
A=i*real(p1)+sqrt(-imag(p1))
u=A+log(n)/(1-n)
w=exp(u), c=w-exp(n*u), z=pixel:
z=z^n + c
|z| <=4
}

contest4  {; Kerry Mitchell
      ; slightly optimized version of Contest formula
         z=p1, c=pixel:
         z2=sqr(z), z=z*z2+c*(1+z-z2), |z| <= 4
         }

contest4a  {; Kerry Mitchell (variable bailout by JM)
            ; formulaname appended to "a" to differentiate from
            ; previously posted contest4 formula
            ; slightly optimized version of Contest formula
         z=p1, c=pixel:
         z2=sqr(z), z=z*z2+c*(1+z-z2), |z| <= p2
         }

CrazyMidgets   {; JM, draws very distorted midgets
c=pixel, a=real(p1), b=imag(p1), d=real(p2), f=imag(p2),
g=1/f, h=1/d, j=1/(f-b), z=(-a*b*g*h)^j:
z=(a*(z^b))+(d*(z^f))+c,
|z| <= 100
}

CrazyNewton { ; Jim Muth
a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), k=real(p3), f=imag(p3),
z=pixel:
zx=z^b
zy=c*(zx*z)
z=(d*zy+a)/(k*zx),
f<=|zy-a|
}

DEFNEWT1{; Ray Girvan May 1997
   ; deformed Newton 
   ; use floating point / periodicity=no / iterations = 1000
   ; try p1=(1.97,0) (1,0.8) (0.6,0.8) (0.1,0.4) 
   z=pixel:
   z1=z*z*z-1; any function f(z)
   z2=3*z*z; its derivative f'(z)
   z=z-(p1*z1/z2),
   |z1| >= 0.0001
   }

DEFNEWT2{; Ray Girvan May 1997
   ; deformed Newton
   ; zoom out for interesting regions where sine comes in
   ; use floating point / periodicity=no / iterations = 1000
   ; try p1=(1.97,0) (1,0.8) (0.6,0.8)
   z=pixel:
   z1=sin(z)+z*z*z-1; any function f(z)
   z2=cos(z)+3*z*z; its derivative f'(z)
   z=z-(p1*z1/z2),
   |z1| >= 0.0001
   }

Dragonbat3 {; Dewey Odhner
  c = Pixel, z = Sqr(Pixel)+Pixel:
   z = Sqr(Sqr(z)+c)+flip(c)
   c = flip(c)
    LastSqr <= 4
  }

eclipse {; Jim Muth
z=c=pixel:
z=(-z)^(-1.5)*(c^(-2.5))+c,
|z| <= 100
}

Elliptic {; Jim Muth
z=flip(imag(pixel))+real(p1),
c=real(pixel)+flip(imag(p1)):
z=sqr(z)+c,
|z| <= 36
}

EllipticN {; Jim Muth
z=flip(imag(pixel))+p1,
c=real(pixel)+p2:
z=z^p3+c,
|z| <= 16
}

EllipticVB {; Jim Muth
z=flip(imag(pixel))+real(p1),
c=real(pixel)+flip(imag(p1)),
a=sqr(p2):
z=sqr(z)+c,
|z| <= a
}

Explode_J_2j { ; by Jay Hill, 1998
; after Paul Derbyshire
c=P1 ; p1 is the Julia parameter
z=pixel
: ; Derbyshire's formula
z=exp(z)+c/sqr(z+2),
real(z)<=900000
} 

Explode_M_2j { ; by Jay Hill, 1998
; after Paul Derbyshire
c=pixel
z=0, log2c=log(2*c) ; eight steps of Jay's formula
z=.2*z+.8*(-2+exp((log2c-z)/3))
z=.2*z+.8*(-2+exp((log2c-z)/3))
z=.2*z+.8*(-2+exp((log2c-z)/3))
z=.2*z+.8*(-2+exp((log2c-z)/3))
z=.2*z+.8*(-2+exp((log2c-z)/3))
z=.2*z+.8*(-2+exp((log2c-z)/3))
z=.2*z+.8*(-2+exp((log2c-z)/3))
z=.2*z+.8*(-2+exp((log2c-z)/3))
; finish with one of Derbyshire's Newton steps
z2=z+2
s=sqr(z2)
t=z2*s
ez=exp(z)
func=t*ez-2*c
der=3*s*ez+t*ez
z=z-func/der
: ; Derbyshire's formula
z=exp(z)+c/sqr(z+2),
real(z)<=900000
} 

Explode_M_pj { ; by Jay Hill, 1998
; after Paul Derbyshire
c=pixel, p=p1; p1 is a constant in the formula
z=0 ; steps of Jay's formula
z=.2*z+.8*(-p+exp((log(2*c)-z)/3))
z=.2*z+.8*(-p+exp((log(2*c)-z)/3))
z=.2*z+.8*(-p+exp((log(2*c)-z)/3))
z=.2*z+.8*(-p+exp((log(2*c)-z)/3))
z=.2*z+.8*(-p+exp((log(2*c)-z)/3))
z=.2*z+.8*(-p+exp((log(2*c)-z)/3))
z=.2*z+.8*(-p+exp((log(2*c)-z)/3))
z=.2*z+.8*(-p+exp((log(2*c)-z)/3))
z=.2*z+.8*(-p+exp((log(2*c)-z)/3))
z=.2*z+.8*(-p+exp((log(2*c)-z)/3))
z=.2*z+.8*(-p+exp((log(2*c)-z)/3))
z=.2*z+.8*(-p+exp((log(2*c)-z)/3))
z=.2*z+.8*(-p+exp((log(2*c)-z)/3))
z=.2*z+.8*(-p+exp((log(2*c)-z)/3))
: 
z=exp(z)+c/sqr(z+p),
real(z)<=900000
} 

Explode_M_p3j { ; by Jay Hill, 1998
; z=exp(z)+c/(z+p)^3
c=pixel, p=p1; p1 is a constant in the formula
z=0 ; find critical point
z=.2*z+.8*(-p+exp((log(3*c)-z)/4))
z=.2*z+.8*(-p+exp((log(3*c)-z)/4))
z=.2*z+.8*(-p+exp((log(3*c)-z)/4))
z=.2*z+.8*(-p+exp((log(3*c)-z)/4))
z=.2*z+.8*(-p+exp((log(3*c)-z)/4))
z=.2*z+.8*(-p+exp((log(3*c)-z)/4))
z=.2*z+.8*(-p+exp((log(3*c)-z)/4))
z=.2*z+.8*(-p+exp((log(3*c)-z)/4))
z=.2*z+.8*(-p+exp((log(3*c)-z)/4))
z=.2*z+.8*(-p+exp((log(3*c)-z)/4))
z=.2*z+.8*(-p+exp((log(3*c)-z)/4))
z=.2*z+.8*(-p+exp((log(3*c)-z)/4))
z=.2*z+.8*(-p+exp((log(3*c)-z)/4))
z=.2*z+.8*(-p+exp((log(3*c)-z)/4))
z=.2*z+.8*(-p+exp((log(3*c)-z)/4))
: 
z=exp(z)+c/sqr(z+p)/(z+p),
real(z)<=900000
} 

FatHeart (xaxis) { ; M.L. Newsted Jr.
	z = pixel / (pixel-1)
	c = pixel:
	z = z*z + c
	|z| < 4
	}

fatlog { ; by Jay Hill, 1998
c=log(pixel),z=0:
z=sqr(z)+c
|z|<=100
} 

FGZ-Julia { ; (c) Jay Hill, 1998
; generalization of formula by Michael G. Wareman
; p1 is parameter
; p2 is parameter
; p3 is focus of Julia set
z=pixel, c=p3:
z1=z*z + c;
z = p1*z1*z1/(z1 + p2) + c;
|z| <= 16
} 

FGZ-Mand  { ; (c) Jay Hill, 1998
  IF( |p3| == 0) 
    p3 = 16
  ENDIF
  c=pixel, z=sqrt(-c), bailout = real(p3):
  z1=z*z + c;
  z = p1*z1*z1/(z1 + p2) + c;
  |z| <= bailout
}

Five_Point {
  ; Newton variant
  ; By Stephen C. Ferguson
  z = c = Pixel:
  z = ((z-(((z^5)-1)/(5*(z^4))))^2)*c
  |z| <= 4
}

Flames {; Jim Muth
c=pixel, z=2*(pixel):
z=fn1(z)+c+fn2(c)
c=fn3(c),
LastSqr <= 100
}

FlipLambdaJ (ORIGIN) { ; Ron Barnett, 1993
  z = pixel:
   z = p1*z*(1-flip(z)*flip(z))
    |z| <= 100
  }

fracfern {; Jim Muth
z=c=pixel:
z=z^1000*(c^(-1002))+c,
|z| <= 10000
}

Gamut {; Jim Muth
z=g=pixel, a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), e=real(p3), f=imag(p3):
h=z^a+(g-b)*z-g
j=c*z^d+g
z=z-e*h/j,
f <= |h|
}

gothic {; Jim Muth
; A variation of Chris Green's HyperMandel
a=(p1),b=(0,0):
q=sqr(a)-sqr(b)+pixel
b=p2*a*b+p3
a=q,
|a|+|b| <= 100
}

Heart { ; (c) Jay Hill, 1998
done = 1, z = 0, zc = 0, c = sqrt(pixel+.75)
s=|c|, t1=(256*s - 96)*s + 32*Real(c), t2=16*s + 32*Real(c) + 16
z=z + 251*(t1<=3) + 252*(t2<=1) ; set colors
if(z>0) ; for periods 1, 2
done=-1 ; color is set for c in a component, skip iterations
endif
: ; initialization.
zc=sqr(zc) + c ; standard MSet iteration
if (|zc| >= 4) ; Bailout at 4
done=-1 ; Set flag to force an exit.
endif
done >= 0 ; Continue if the flag >=0.
} 

hermanm_man-polar { ; Kerry Mitchell 16feb98
        ; real(p1) = z exponent (use integer >= 2; m=n-1)
        ; imag(p1) = g exponent (integers)
        ; real(p2) = alpha magnitude (try 1)
        ; imag(p2) = alpha polar angle (try integers)
        ; real(p3) = critical point selector (>0 for positive root)
        ; imag(p3) = unused                  (<0 for negative root)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        ; coloring speed hardcoded to 4
        c=pixel, iter=1, n=real(p1), m=imag(p1), nfac=2*n-1
        maxr=1e6, minr=1/maxr, speed=4*pi/128
        r=real(p2), t=imag(p2), alpha=r*(cos(t)+flip(sin(t)))
        oln=1/log(n), fac=log(0.5*log(maxr))
        c2=sqr(c), hypnum=sqr(n)+sqr(m), pn=1
        hypden=sqr(n-m), hypfac=hypnum/hypden
        if (real(p3)<0)
          pn=-1
          end if
        if (real(c2)>hypfac)
          pn=-pn
        end if
        if (imag(c)<0)
          pn=-pn
        end if
        afac=c*n, bfac=c2*(n-m)+(n+m), cfac=c*n
        d=sqrt(bfac*bfac-4*afac*cfac)
        z=(bfac+pn*d)/(2*afac)
        :
        g=(z-c)/(1-c*z), z=alpha*z^n*g^m
        iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r<minr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r>maxr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          angle=angle+pi
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        iter>0
        }

Hill001a-a (XAXIS){ ; Flattened cardioid by Jay R. Hill, 1998
; Classic Mandelbrot set fractal, transformed
p = 0.5*exp(Pixel), pix=p*(1-p), z = 0, done = 1, zc = 0, c = pix
s=|c|, t1=(256*s - 96)*s + 32*Real(c), t2=16*s + 32*Real(c) + 16
z=z + 250*(t1<=3) + 251*(t2<=1) ; set colors
if(z>0) ; for periods 1 and 2.
done=-1 ; color is set for c in a component, skip iterations
endif
: ; initialization.
zc=sqr(zc) + c ; standard MSet iteration
if (|zc| >= 4) ; Bailout at 4
done=-1 ; Set flag to force an exit.
endif
done >= 0 ; Continue if the flag >=0.
} 


Hill001b { ; Flattened cardioid by Jay R. Hill, 1998
; Cubic Mandelbrot set fractal, transformed
; Two parameters: real & imaginary perturbations of z(0)
p = exp(Pixel)/sqrt(3), c=p*(1-sqr(p)), z = p1
x=(real(Pixel)<0), iter=0: 
z = z*sqr(z) + c, iter=iter+1
(lastsqr+5*x*(iter>250)) <= 4
} 

Hill001b1 { ; Flattened cardioid by Jay R. Hill, 1998
; Cubic Mandelbrot set fractal, transformed
; Two parameters: real & imaginary perturbations of z(0)
p = exp(Pixel)/sqrt(3), c=p*(1-sqr(p)), z = p1
x=(real(Pixel)<0), iter=0: 
z = z*sqr(z) + c, iter=iter+1
(lastsqr+5*x*(iter>1)) <= 4
} 

HyperBrot       {; Jim Muth
a=real(p1), b=imag(p1),
d=real(p2), h=imag(p2), f=p3:
z=z+1,
g=sqr(a)-sqr(b)+pixel,
b=d*a*b+f,
a=h*g,
|a|+|b| <= 9
}

HyperBrotII     {; Jim Muth
a=p1, b=0,0, d=real(p2),
h=imag(p2), f=p3:
g=sqr(a)-sqr(b)+pixel,
b=d*a*b+f,
a=h*g,
|a|-|b| <= 9
}

HyperBrotIII    {; Jim Muth
a=p1, b=0,0, d=real(p2),
h=imag(p2), f=p3:
g=sqr(a)-sqr(b)+pixel,
b=d*a*b+f,
a=h*g,
|a|*|b| <= 9
}

HyperBrotVII    {; Jim Muth, formula
a=0,0, b=0,0, x=real(p1), y=imag(p1),
d=real(p2), h=imag(p2), f=p3:
g=a^x-b^y+pixel,
b=d*a*b+f,
a=h*g,
|a|+|b| <= 9
}

HyperSqrTest {; Jim Muth
a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), e=real(p3), f=imag(p3):
g=(a^c)-(b^d)+pixel
b=e*a*b+f
a=g,
|a|+|b| <= 100
}

HyperSquare {; Jim Muth
 a=(p1),b=(0,0):
  q=sqr(a)-sqr(b)+pixel
  b=p2*a*b+p3
  a=q,
   |a|+|b| <= 100
  }

IfElse01 {; adapted from R. Barnett's formula
z=y=c=pixel, w=0:
if(w), z=fn1(real(y))+flip(imag(y)), w=0
else, z=(y*p1), w=w+1, endif
z=z^p2+(p3*c), y=z,
|z| <= 100 
}

IfElse03 {; Jim Muth
 z=y=pixel, a=real(p1), b=imag(p1),
 c=p2+(p3*pixel), w=0:
IF(w)
 z=fn1(real(y))+fn2(imag(y)), w=0
ELSE
 z=(y*a), w=w+1
ENDIF
  z=z^b+c, y=z,
   |z| <= 100 
}

IkeNewtMand = {; Ron Barnett, 1993
  z = c = pixel:
  zf = z*z*z + (c-1)*z - c;
  zd = 3*z*z + c-1;
  z = z - p1*zf/zd, 0.001 <= |zf|
}

JimsComMand2J {; Jim Muth
z=c=pixel,
a=real(p1), b=imag(p1):
z=(-z)^a*(c^b)+p2+(p3*c),
|z| <= p3+100
}

JimsComMandJ {; Jim Muth
 z=c=pixel,
 a=real(p1), b=imag(p1):
  z=z^a*(c^b)+p2+(p3*c),
   |z| <=100
  }

JimsCompMand {; Jim Muth
z=c=pixel:
z=z^p1*(c^(p2-1))+c,
|z| <= p3+100
}

JimsCompMand2 {; Jim Muth
z=c=pixel:
z=(-z)^p1*(c^p2)+c,
|z| <= p3+100
}

JimsCompMand3 {; Jim Muth
z=c=pixel:
z=z^p1*(c^p2)+c,
|z| <= p3+100
}

JuliaMiN {; formula, Jim Muth
b=p1, z=pixel+p2, c=p3:
z=(-z)^b+c,
|z| <= 16
}

JuliaXLow {; Jim Muth
z=pixel, a=real(p1), b=imag(p1),
d=real(p2), f=imag(p2), c=p3:
z=(a*(z^b))+(d*((-z)^f))+c,
|z|<=2500
}

JulibrotInvZ {; Jim Muth
z=pixel, c=p2+(pixel*p3):
z=(-z)^p1+c,
|z| <= 100
}

JulibrotZpwr {; Jim Muth
;Draws oblique XY-ZW slices of order n Julibrot Figure
;P1 defines power of Z, P2 sets center of slice
;P3 sets angle of slice
 z=pixel, c=p2+(pixel*p3):
  z=z^p1+c,
   |z| <= 100
  }

Lesfrm11 { ; Les St Clair 
c=z=pixel:
z=z+(((fn1(z)-P1)*fn2(z))/fn3(c)),|z|<4
}

Liar4 { ; by Chuck Ebbert.
  ; X: X is as true as (p1+1) times Y
  ; Y: Y is as true as X is false
  ; Calculate new x and y values simultaneously.
  ; Real part of p1 changes probability.  Use floating point.
  ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = pixel, p = p1 + 1:
   z = 1-abs(imag(z)*p-real(z))+flip(1-abs(1-real(z)-imag(z)))
    |z| <= 1
  }

M-J-rotation {; Jim Muth
; p1=power of Z,  p2=rotation point,  p3=rotation angle
z=pixel, c=p2+(p3*pixel):
z=z^p1-(1.1*z)+c,
|z| <=25
}

M-O-rotation {; Jim Muth
; real(p1)=power of Z,  imag(p1)=angle of rotation
; p2=parallel planes,  p3=rotation point and parallel planes
a=real(p1), b=imag(p1)+.0000000000001,
z=sin(b*.01745329251994)*real(pixel)+p2,
c=cos(b*.01745329251994)*real(pixel)+flip(imag(pixel))+p3:
z=Z^a-(1.1*z)+c,
|z| <=25
}

M-P-rotation {; Jim Muth
; real(p1)=power of Z,  imag(p1)=angle of rotation
; p2=parallel planes,  p3=rotation point and parallel planes
a=real(p1), b=imag(p1)+.0000000000001,
z=sin(b*.01745329251994)*imag(pixel)+p2,
c=cos(b*.01745329251994)*flip(imag(pixel))+real(pixel)+p3:
z=z^a-(1.1*z)+c,
|z| <=25
}

M-R-rotation {; Jim Muth
; real(p1)=power of Z,  imag(p1)=angle of rotation
; p2 and p3=rotation point and parallel planes
a=real(p1), b=imag(p1)+.0000000000001,
z=sin(b*.01745329251994)*flip(real(pixel))+p2,
c=cos(b*.01745329251994)*real(pixel)+flip(imag(pixel))+p3:
z=z^a-(1.1*z)+c,
|z| <=25
}

Man2-XW {; Jim Muth
z=flip(real(pixel))+real(p1),
c=imag(pixel)+flip(imag(p1)):
z=sqr(z)+c,
|z| <= 36
}

Man2-YW {; Jim Muth
z=real(p1)+flip(real(pixel)),
c=imag(p1)+flip(imag(pixel)):
z=sqr(z)+c,
|z| <= 36
}

Man2-YZ {; Jim Muth
z=real(pixel)+flip(real(p1)),
c=flip(imag(pixel))+imag(p1):
z=sqr(z)+c,
|z| <= 36
}

MandelbrotMix {; Jim Muth
z=p3, c=pixel,
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2):
z=(a*(z^b))+(d*(z^f))+c,
|z| <= 100
}

ManN-YZ {; Jim Muth
z=real(pixel)+flip(real(p1)),
c=flip(imag(pixel))+imag(p1):
z=z^p2+(p3*c),
|z| <= 16
}

ManN-YZ-XZ {; Jim Muth, Thanks to Benno
; p3 = 0 = Julibrot YZ plane
; p3 = 1 = Julibrot XZ plane
; p3 = >0 <1 = Oblique planes
z=real(pixel)+flip(real(p1)),
c=imag(pixel)+flip(imag(p1)),
a=p3, b=flip(cos(asin(p3))):
z=z^p2+((a+b)*c),
|z| <= 25
}

Man-XW-YW {; Jim Muth, Thanks to Benno
; p2 = 0 = Julibrot XW plane
; p2 = 1 = Julibrot YW plane
; p2 = >0 <1 = Oblique planes
z=flip(real(pixel))+real(p1),
c=flip(imag(pixel))+imag(p1),
a=p2, b=flip(cos(asin(p2))):
z=sqr(z)+((a+b)*c),
|z| <= 25
}

Man-YZ-XZ {; Jim Muth, Thanks to Benno
; p2 = 0 = Julibrot YZ plane
; p2 = 1 = Julibrot XZ plane
; p2 = >0 <1 = Oblique planes
z=real(pixel)+flip(real(p1)),
c=imag(pixel)+flip(imag(p1)),
a=p2, b=flip(cos(asin(p2))):
z=sqr(z)+((a+b)*c),
|z| <= 25
}

Mandelbrot {; Jim Muth
z=p1, c=pixel:
z=sqr(z)+c,
|z| <=p2
}

Mandelbrot2 {; Jim Muth
z=p1, c=pixel+p2:
z=sqr(z)+c,
|z| <= 16
}

MandelbrotMiN {; formula -- Jim Muth
z=p1+10^-100, c=p2+pixel:
z=(-z)^p3+c,
|z| <= 16
}

MandelbrotMix {; Jim Muth
z=p3, c=pixel,
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2):
z=(a*(z^b))+(d*(z^f))+c,
|z| <= 100
}

MandelbrotMix4 {; Jim Muth
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2), g=1/f
  h=1/d, j=1/(f-b), z=(-a*b*g*h)^j, k=real(p3)+1
  l=imag(p3)+100, c=fn1(pixel):
  z=k*((a*(z^b))+(d*(z^f)))+c
  |z| < l
}

MandelbrotMix4_v1 {; Jim Muth
  c=pixel, a=real(p1), b=imag(p1), d=real(p2), f=imag(p2)
  g=1/f, h=1/d, j=1/(f-b), z=(-a*b*g*h)^j:
  z=(a*(z^b))+(d*(z^f))+c
  |z| <= 100
}

MandelbrotN {; Jim Muth
b=p1, z=p2, c=p3+pixel:
z=z^(b)+c,
|z| <= 16
}

MandelbrotPM {; formula Jim Muth
z=p1+10^-100, c=pixel:
z=p2*(.5*((-z)^p3+z^p3))+c,
|z| <= 250
}

MandelbrotQud {; Jim Muth
z=p3, c=pixel,
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2):
z=sqr(z)+(.2*(z*z*z))+(a*(z^b))+(d*(z^f))+c,
|z| <= 100
}

MandelbrotTri {; Jim Muth
z=p3, c=pixel,
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2):
z=(z*z*z)+(a*(z^b))+(d*(z^f))+c,
|z| <= 100
}

MandelbrotVB {; Jim Muth
z=p1, c=pixel,
a=sqr(p2):
z=sqr(z)+c,
|z| <= a
}

MandelbrotVBa {; Jim Muth
; formulaname appended to "a" to differentiate from
; previously posted MandelbrotVB formula
z=p1, c=pixel+p3,
a=sqr(p2):
z=sqr(z)+c,
|z| <= a
}

MandelbrotZC {; Jim Muth
z=p3, c=pixel:
z=(real(p1)*(z^imag(p1)+c))+(real(p2)*(c^imag(p2)+z)),
|z| <= 100
}

MandelbrotZC2 {; Jim Muth
z=p1, c=pixel:
z=real(p2)*(z^imag(p2)+c)+real(p3)*(c^imag(p3)+z),
|z| <= 100
}

MandNewt03 {; Jim Muth
z=c=pixel:
a=z^3+(c-1)*z-c
b=p1*z^p2+c-1
z=z-p3*a/b
.0001 <= |a|
}

MandNewt04 {; Jim Muth
z=c=pixel:
a=z^3+(c-1)*z-c
b=p1*z^2+c-1
z=z-p2*a/b
p3 <= |a|
}

MandNewt05 {; Jim Muth
z=c=fn1(pixel):
a=z^2+(c-p1)*z-c
b=p2*z^2+c-1
z=z-1*a/b
p3 <= |a|
}

MandNewt06 {; Jim Muth
z=c=(pixel*p1):
a=z^3+(c-p2)*z-c
b=p3*z^2+c-1
z=z-1*a/b
.000000000000000000000000000001 <= |a|
}

MandNewt07 {; Jim Muth
z=c=(pixel*p1):
a=z^3+(c-p2)*z-c
b=3*z^2+c-1
z=z-p3*a/b
.000000000000000000000000000001 <= |a|
}

MandNewt08 {; Jim Muth
z=c=(pixel*p1):
a=z^p2+(c-1)*z-c
b=p3*z^2+c-1
z=z-1*a/b
.000000000000000000000000000001 <= |a|
}

MandNewt09 {; formula, Jim Muth
z=c=pixel:
a=z^3+(c-1)*z-c
b=p1*z^p2+c-1
z=z-1*a/b
p3 <= |a|
}

MandNewt10 {; Jim Muth
z=g=pixel, a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), e=real(p3), f=imag(p3):
h=z^a+(g-b)*z-g
j=c*z^d+g
z=z-e*h/j,
f <= |h|
}

MandNewt11 {; Jim Muth
z=g=pixel, a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), e=real(p3), f=imag(p3):
h=z^a+(g-b)*z-f
j=c*z^d+g
z=z-e*h/j,
.0000000000000000000000000000005 <= |h|
}

ManMinusN-XZ { ; Jim Muth
z=real(pixel)+flip(real(p1)),
c=imag(pixel)+flip(imag(p1)):
z=(-z)^p2+(p3*c),
|z| <= 16
}

ManMinusN-YZ {; Jim Muth
z=real(pixel)+flip(real(p1)),
c=flip(imag(pixel))+imag(p1):
z=(-z)^p2+(p3*c),
|z| <= 16
}

ManN-2-pro-YW { ; Jim Muth
z=real(p1)+flip(real(pixel)),
g=imag(p1)+flip(imag(pixel)),
a=real(p2), b=imag(p2), c=real(p3), d=imag(p3):
z=(a*(z^b))+(c*(z^d))+g,
|z| <= 16
}

ManN-XW-YW {; Jim Muth, Thanks to Benno
; p3 = 0 = Julibrot XW plane
; p3 = 1 = Julibrot YW plane
; p3 = >0 <1 = Oblique planes
z=flip(real(pixel))+real(p1),
c=flip(imag(pixel))+imag(p1),
a=p3, b=flip(cos(asin(p3))):
z=z^p2+((a+b)*c),
|z| <= 25
}

ManN-YW {
z=real(p1)+flip(real(pixel)),
c=imag(p1)+flip(imag(pixel)):
z=z^p2+c,
|z| <= 16
}

ManN-YZ {
z=real(pixel)+flip(real(p1)),
c=flip(imag(pixel))+imag(p1):
z=z^p2+(p3*c),
|z| <= 16
}

ManTest1XY-XZ { ; Jim Muth
z=real(pixel)+(p1*(imag(pixel)))+flip(real(p2)),
c=imag(pixel)+(p1*(real(pixel)))+flip(imag(p2)):
z=z^p3+c,
|z| <= 16
}

many_man{; Modified Stephen C. Ferguson formula
      ; adapted for Fractint by Les St Clair, 1997
      ; use real p1 to set bailout (try p1=4)
      ; use real p2 to set number of mandels
      ; set fn1=ident, fn2=log for "default" formula
z=0, c=pixel:
z=(z*z)+fn1(fn2(c^p2)/p2)
|z| <=p1
}

minN-XY-XWrot {; Jim Muth, thanks to Benno Schmid
; real(p1)=rotation angle in degrees, imag(p1)=power of Z
; p2 and p3=rotation point and parallel planes
a=real(p1), b=imag(p1),
z=sin(a*.01745329251994)*flip(imag(pixel))+p2,
c=cos(a*.01745329251994)*flip(imag(pixel))+real(pixel)+p3:
z=(-z)^b+c,
|z| <= 16
}

minN-XY-YZrot {; Jim Muth, thanks to Benno
; real(p1)=rotation angle in degrees, imag(p1)=power of Z
; p2=parallel planes, p3=rotation point and parallel planes
a=real(p1), b=imag(p1),
z=sin(a*.01745329251994)*real(pixel)+p2,
c=cos(a*.01745329251994)*real(pixel)+flip(imag(pixel))+p3:
z=(-z)^b+c,
|z| <= 16
}

MixMan2waypro {; Jim Muth
z=c=pixel:
z=z^p1+(p2*z^p3)+c,
|z| <= 100
}

MixMan3wayPro {; Jim Muth
z=g=pixel, a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), e=real(p3), f=imag(p3):
z=(a*z^b)+(c*z^d)+(e*z^f)+g,
|z| <= 100
}

;MixSqrProJulib {; Jim Muth
z=pixel, a=real(p1), b=imag(p1),
c=real(p2), d=imag(p2), e=(d*pixel):
z=(a*sqr(z))+(b*z^c)+p3+e,
|z| <= 100
}

MixSqrProJulib {; Jim Muth
z=pixel, a=real(p1), b=imag(p1),
c=real(p2), d=imag(p2), e=p3+(d*pixel):
z=(a*sqr(z))+(b*z^c)+e,
|z| <= 100
}

Mosaic {; Jim M, thanks to someone unknown
        ; p1=Mandelbrot set coordinates
        ; try ident, cos, ident, cos
z=c=p1+.05*(fn1(fn2(real(pixel)))+flip(fn3(fn4(imag(pixel))))):
z=sqr(z)+c,
|z| <= 100
}

mult105-XY-ZW {; draws all 6 planes and many rotations
;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2,
c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
z=(-z)^1.05+c,
|z| <= 36  }

multi1-5-XY-ZW {; draws all 6 planes and many rotations
;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2,
c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
z=z^1.5+c,
|z| <= 36  
}

multi20031 {; Jim Muth, best=ifif, fiif, fifi, iffi
a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2,
c=cos(b)*fn3(real(pixel))+cos(a)*fn4(imag(pixel))+p3:
z=z^2.003+c,
|z| <= 100  
}

multi20031a {; formula   draws many rotations
;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
;note: formula appended with "a" to differentiate from 
;formula of same name previously posted (see above)
a=((real(p1))+(.000000000000000000001))*.01745329251994,
b=((imag(p1))+(.000000000000000000001))*.01745329251994,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2,
c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
z=z^2.003+c,
|z| <= 36  }

multi20032 {; Jim Muth   this is the formula
; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
e=exp(flip(real(p1*.01745329251994))),
f=exp(flip(imag(p1*.01745329251994))),
z=f*real(pixel)+p2, c=e*imag(pixel)+p3:
z=z^2.003+c,
|z| <= 100  
}

multigator2 {; Jim Muth
; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
e=exp(flip(real(p1*.01745329251994))),
f=exp(flip(imag(p1*.01745329251994))),
z=f*real(pixel)+p2, c=e*imag(pixel)+p3:
z=(.5*(z^-4))+(-2*(z^-2))+c,
|z| <= 100  }

multirot-pm21 {; Jim Muth, best=ifif, fiif, fifi, iffi
a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2,
c=cos(b)*fn3(real(pixel))+cos(a)*fn4(imag(pixel))+p3:
z=(.1*(sqr(z)))+(10*(z^-2))+c,
|z| <= 100  }

multirot-XY-ZW {; Jim Muth, best=ifif, fiif
 a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
 z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2,
 c=cos(b)*fn3(real(pixel))+cos(a)*fn4(imag(pixel))+p3:
  z=sqr(z)+c,
   |z| <= 36  }

multirot-XY-ZWa {; draws all 6 planes and many rotations
; formulaname appended to "a" to differentiate from
; previously posted multirot-XY-ZW formula
;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2,
c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
z=sqr(z)+c,
|z| <= 36  }

multirot-XZ-YW {; Jim Muth
; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
e=exp(flip(real(p1*.01745329251994))),
f=exp(flip(imag(p1*.01745329251994))),
z=f*real(pixel)+p2, c=e*imag(pixel)+p3:
z=sqr(z)+c,
|z| <= 36  }

multmin1-2-XY-ZW {; draws all 6 planes and many rotations
;when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
;when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
a=real((p1)+.000000000000000000000000000001)*.01745329251994,
b=imag(p1)*.01745329251994,
z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2,
c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
z=(-z)^1.2+c,
|z| <= 36  }

Mystic {; Jim Muth
c=pixel, z=sqr(pixel)+(p1*(pixel)):
z=sqr(sqr(z)+(p2*(c)))+(p3*(fn1(c)))
c=fn2(c),
LastSqr <= 100
}

Mystic2 {; Jim Muth
a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), k=real(p3), f=imag(p3),
g=pixel, z=(pixel)^a+(b*(pixel))^c:
z=(fn1(z)+(d*(g)))^k+(f*(cos(g)))
g=sqr(g),
LastSqr <= 100
}

Mytest02  {; Jim Muth
z=c=pixel:
z=((z*(z+p1))^p2)^p3+c,
|z|<100
}

Mytest05  {; Jim Muth
 z=c=pixel, a=real(p1), b=imag(p1):
  z=(((z^a)*(z+b))^p2)^p3+c,
   |z|<=100
    }

Mytest06  {; Jim Muth
z=c=pixel:
z=(((z^p1)*(z+p2))^p3)^(-p3)+c,
|z|<100
}

Mytest06_ver2  {; Jim Muth
z=c=pixel:
z=(((z^p1)*(p2*z))^p3)^(-p3)+c,
|z|<=100
}

Mytest07  {; Jim Muth
z=pixel, a=real(p2), b=imag(p2), c=b*(pixel):
z=(((z^p1)*(z+a))^p3)^(-p3)+c,
|z|<=100
}

Mytest08  {; Jim Muth
z=fn1(pixel), a=real(p3),
b=imag(p3), c=a+(b*pixel):
z=(((z^p1)*z)^p2)^(-p2)+c,
|z|<=100
}

Mytest10  {; Jim Muth
z=c=pixel:
z=z^p1+p2*((z^p3)^(-p3))+c,
|z|<=100
}

Mytest11  {; Jim Muth
z=c=pixel:
z=z^p1+(p2*((z^p3)^(-p3)))+c,
|z|<=100
}

Mytest12  {; Jim Muth
z=c=pixel, a=real(p1), b=imag(p1):
z=(a*((z^p2)^(-p2)))+(b*((z^p3)^(-p3)))+c,
|z|<=100
}

MytestAB {; Jim Muth
z=c=pixel,
a=real(p3), b=imag(p3):
z=(a*(z^p1))+(b*((-z)^p2))+c,
|z|<=100
}

MytestAC {; Jim Muth
z=pixel, a=real(p1), b=imag(p1), d=real(p2),
f=imag(p2), g=real(p3), h=imag(p3), c=g+(h*pixel):
z=(a*(z^b))+(d*((-z)^f))+c,
|z|<=2500
}

MytestAD {; Jim Muth
; fn1=ident=mandelbrot, fn1=zero=julia
; p3 = C-value of julia
z=pixel, a=real(p1), b=imag(p1), d=real(p2),
f=imag(p2), c=p3+fn1(pixel):
z=(a*(z^b))+(d*((-z)^f))+c,
|z|<=2500
}

MytestAE {; Jim Muth
z=sqr(p3)+pixel, a=real(p1), b=imag(p1),
d=real(p2), f=imag(p2), c=fn1(pixel):
z=(a*(z^b))+(d*((-z)^f))+c,
|z|<=2500
}

MytestAG {; Jim Muth
z=c=pixel,
a=flip(real(p1)), b=flip(imag(p1)):
z=(z^a)^(-b)+c,
|z|<=100
}

MytestAH {; Jim Muth
z=1, c=pixel:
z=z^p1+z^(-p1)+c,
|z|<=100
}

N-XY-XWrotation {; Jim Muth, thanks to Benno Schmid
; real(p1)=rotation angle in degrees, imag(p1)=power of Z
; p2=parallel planes, p3=rotation point and parallel planes
a=real(p1), b=imag(p1),
z=sin(a*.01745329251994)*flip(imag(pixel))+p2,
c=cos(a*.01745329251994)*flip(imag(pixel))+real(pixel)+p3:
z=z^b+c,
|z| <= 16
}

N-XY-XZrotation {; formula, Jim Muth
; real(p1)=rotation angle in degrees, imag(p1)=power of Z
; p2=parallel planes, p3=rotation point and parallel planes
a=real(p1), b=imag(p1),
z=sin(a*.01745329251994)*imag(pixel)+p2,
c=cos(a*.01745329251994)*flip(imag(pixel))+real(pixel)+p3:
z=z^b+c,
|z| <= 16
}

N-XY-YWrotation {; Jim Muth, thanks to Benno Schmid
; real(p1)=rotation angle in degrees, imag(p1)=power of Z
; p2=parallel planes, p3=rotation point and parallel planes
a=real(p1), b=imag(p1),
z=sin(a*.01745329251994)*flip(real(pixel))+p2,
c=cos(a*.01745329251994)*real(pixel)+flip(imag(pixel))+p3:
z=z^b+c,
|z| <= 16
}

N-XY-YZrotation {; Jim Muth, thanks to Benno
; real(p1)=rotation angle in degrees, imag(p1)=power of Z
; p2=parallel planes, p3=rotation point and parallel planes
a=real(p1), b=imag(p1),
z=sin(a*.01745329251994)*real(pixel)+p2,
c=cos(a*.01745329251994)*real(pixel)+flip(imag(pixel))+p3:
z=z^b+c,
|z| <= 16
}

neon {; Jim Muth
z=c=pixel:
z=z^1.045+(.02*z^-2)+c,
|z| <= 100 
}

Newt6-JAtan-Mset {; (c) Jay R. Hill, 1998
; Newton method set up as a Mandelbrot set
; This formula searches for 6 roots of a function
; Inspired by Paul Carlson's Newt5_Atan_Mset 
; p1 = precision of root finding, try .001
; p2 = A = scaling constant in formula, try 1
; F(w) = w^6 - A*w^5 - w*c + A*c
; F'(w) = 6*w^5 - 5*A*w^4 - c
; F''(w) = 30*w^4 - 20*A*w^3
; Set F''=0, solve for initial w, 20*A/30 = 2*A/3
;
c = pixel, A=p2, z = iter = bailout = 0
colors_in_range = 42
; Set up the roots, R=a complex fifth root of 1.
R5=sqrt(5), R=1-.5*sqrt(5-3*R5-sqrt(10*R5-50)), R2=sqr(R)
root1 = A, root2 = c^.2, root3 = root2*R, root4 = root2*R2
root5 = root4*R, root6 = root4*R2
w = 2*A/3
:
; Newton's method
w4 = w^4
deltaw=((w*w4 - A*w4 - c)*w + A*c)/(6*w*w4 - 5*A*w4 - c)
w = w - deltaw
;
IF (|deltaw| < p1)
; Find angle of the last change in w.
angle=abs(imag(log(deltaw)))
; Select color range depending on close root
range_num = (|w - root2| < p1)+2*(|w - root3| < p1)+\
3*(|w - root4| < p1)+4*(|w - root5| < p1)+5*(|w - root6| < p1)
bailout = 1
; put color into z
z = colors_in_range*(angle/pi + range_num)-angle/pi + 1
ENDIF
iter = iter + 1
z = z - iter
bailout == 0
} 

Newt12-JAtan-Mset {; (c) Jay R. Hill, 1998
; Newton method set up as a Mandelbrot set
; This formula searches for 12 roots of a function
; Inspired by Paul Carlson's Newt5_Atan_Mset 
; p1=width of root finding
; p2=A=constant in formula
; F(w) = w^12 - A*w^11 - w*c + A*c
; F'(w) = 12*w^11 - 11*A*w^10 - c
; F''(w) = 132*w^10 - 110*A*w^9
; Set F''=0, solve for initial w, 110*A/132 = 5*A/6
;
c = pixel, A=p2, z = iter = bailout = 0
colors_in_range = 21
R=(-1)^(2/11), R2=sqr(R)
root1 = A, root2 = c^(1/11), root3 = root2*R, root4 = root2*R2
root5 = root4*R, root6 = root4*R2, root7 = root6*R, root8 = root6*R2
root9 = root8*R, root10 = root8*R2, root11 = root10*R, root12 = root10*R2
w = 5*A/6
:
w10 = w^10
deltaw=((w*w10 - A*w10 - c)*w + A*c)/(12*w*w10 - 11*A*w10 - c)
w = w - deltaw
;
IF (|deltaw| < p1)
angle=abs(imag(log(deltaw)))
range_num = (|w - root2| < p1)+2*(|w - root3| < p1)+\
3*(|w - root4| < p1)+ 4*(|w - root5| < p1)+5*(|w - root6| < p1)+\
6*(|w - root7| < p1)+ 7*(|w - root8| < p1)+\
8*(|w - root9| < p1)+ 9*(|w - root10| < p1)+\
10*(|w - root11| < p1)+11*(|w - root12| < p1)
bailout = 1
z = colors_in_range*(angle/pi + range_num)-angle/pi + 1
ENDIF
iter = iter + 1
z = z - iter
bailout == 0
}

Newt8-JAtan-Mset {; (c) Jay R. Hill, 1998
; Newton method set up as a Mandelbrot set
; This formula searches for 8 roots of a function
; Inspired by Paul Carlson's Newt5_Atan_Mset 
; p1=width of root finding
; p2=A=constant in formula
; F(w) = w^8 - A*w^7 - w*c + A*c
; F'(w) = 8*w^7 - 7*A*w^6 - c
; F''(w) = 56*w^6 - 42*A*w^5
; Set F''=0, solve for initial w, 42*A/56 = 3*A/4
;
c = pixel, A=p2, z = iter = bailout = 0
colors_in_range = 31
R=(-1)^(2/7), R2=sqr(R)
root1 = A, root2 = c^(1/7), root3 = root2*R, root4 = root2*R2
root5 = root4*R, root6 = root4*R2, root7 = root6*R, root8 = root6*R2
w = 3*A/4
:
w6 = w^6
deltaw=((w*w6 - A*w6 - c)*w + A*c)/(8*w*w6 - 7*A*w6 - c)
w = w - deltaw
;
IF (|deltaw| < p1)
angle=abs(imag(log(deltaw)))
range_num = (|w - root2| < p1)+2*(|w - root3| < p1)+\
3*(|w - root4| < p1)+4*(|w - root5| < p1)+5*(|w - root6| < p1)+\
6*(|w - root7| < p1)+7*(|w - root8| < p1)
bailout = 1
z = colors_in_range*(angle/pi + range_num)-angle/pi + 1
ENDIF
iter = iter + 1
z = z - iter
bailout == 0
}

NewtTest03 {; Jim Muth, June 1997
a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), k=real(p3), f=imag(p3),
z=(pixel):
zx=(z^b)-a
zy=(c*z)^d
z=z-(k*zx/zy),
|zx| >= f
}

NewtonTest26 {; Jim Muth
a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), k=real(p3), f=imag(p3),
z=(pixel):
zx=z^b-a
zy=c*z*z
z=z-(d*zx/zy)^k,
|zx| >= f
}

NewtonTest27 {; Jim Muth
a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), k=real(p3), f=imag(p3),
z=(pixel):
zx=(z^b)-a
zy=(c*z)^d
z=z-(k*zx/zy),
|zx| >= f
}

Oblate {; Jim Muth
z=real(pixel)+flip(real(p1)),
c=flip(imag(pixel))+imag(p1):
z=sqr(z)+c,
|z| <= 36
}

OblateMix {; Jim Muth
z=real(pixel)+flip(real(p3)),
c=flip(imag(pixel))+imag(p3),
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2):
z=(a*(z^b))+(d*(z^f))+c,
|z| <= 100
}

OblateN {; Jim Muth
z=real(pixel)+flip(real(p1)),
c=flip(imag(pixel))+imag(p1):
z=z^p2+c,
|z| <= 16
}

OblateNa {; Jim Muth
; formulaname appended to "a" to differentiate from
; previously posted OblateN formula
b=p1, z=real(pixel)+p2,
c=flip(imag(pixel))+p3:
z=z^b+c,
|z| <= 16
}

OblatePM {; formula Jim Muth
z=real(pixel)+flip(real(p1)),
c=flip(imag(pixel))+imag(p1):
z=p2*(.5*((-z)^p3+z^p3))+c,
|z| <= 250
}

OblateVB {; Jim Muth
z=real(pixel)+flip(real(p1)),
c=flip(imag(pixel))+imag(p1),
a=sqr(p2):
z=sqr(z)+c,
|z| <= a
}

OblateXLow {; Jim Muth
z=real(pixel)+flip(real(p3)),
c=flip(imag(pixel))+imag(p3),
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2):
z=(a*(z^b))+(d*((-z)^f))+c,
|z| <=2500
}

ObliqueMand {; Jim Muth
z=c=pixel:
z=sqr(z)+p1+(c*p2),
|z| <= 100
}

ObliqueManPlus {;Jim Muth
z=(p1+pixel), c=p2+(p3*pixel):
z=sqr(z)+c,
|z| <=100
}

ObliqueMixPlus {;Jim Muth
z=(p1+pixel), c=p2+(p3*pixel):
z=sqr(z)+(0.2*(z*z*z))+c,
|z| <=100
}

ObliqueSqrt {; Jim Muth
z=c=pixel:
z=z^(1.4142)+p1+(c*p2),
|z| <= 100
}

OblManPlusLow {;Jim Muth
z=p1+pixel, c=p2+(p3*pixel):
z=sqr(z)+c,
|z| <=4
}

other {; Jim Muth
z=c=pixel:
z=z+(-4*(z^-4))+c^10+c,
|z| <= 100
}

PanoramaMandelbrot { ; by Jay Hill, 1998
         ; Panorama Mandelbrot set
z = 0, c = exp(flip(pixel))-p2:
z = z*z + c
|z| < 4
} 

Parabolic {; Jim Muth
z=imag(pixel)+flip(real(p1)),
c=real(pixel)+flip(imag(p1)):
z=sqr(z)+c,
|z| <= 36
}

ParabolicMiN {; Jim Muth
z=imag(pixel)+flip(real(p1)),
c=real(pixel)+flip(imag(p1)):
z=(-z)^p2+c,
|z| <= 16
}

ParabolicMiNa {; Jim Muth
;note: formula appended with "a" to differentiate from 
;formula of same name previously posted (see above)
b=p1, z=imag(pixel)+p2,
c=real(pixel)+p3:
z=(-z)^(b)+c,
|z| <= 16
}

ParabolicMix {; Jim Muth
z=imag(pixel)+flip(real(p3)),
c=real(pixel)+flip(imag(p3)),
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2):
z=(a*(z^b))+(d*(z^f))+c,
|z| <= 100
}

PrecognaJ {
  ; p1 is Julia parameter.
  z=pixel,p=0,c=p1:
  t=sqr(p)*p+sqr(z)+c
  p=z
  z=t,
  lastsqr<=2048
}
 
PrecognaM (XAXIS) {
  ; p1 is Julia parameter.
  z=0,p=0,c=pixel:
  t=sqr(p)*p+sqr(z)+c
  p=z
  z=t,
  lastsqr<=2048
}

Rectangular {; Jim Muth
z=flip(real(pixel))+real(p1),
c=flip(imag(pixel))+imag(p1):
z=sqr(z)+c,
|z| <= 36
}

RectangularN {; Jim Muth
z=flip(real(pixel))+real(p1),
c=flip(imag(pixel))+imag(p1):
z=z^p2+c,
|z| <= 16
}

RectangularNa {; formula Jim Muth
; formulaname appended to "a" to differentiate from
; previously posted RectangularN formula
z=flip(real(pixel))+p1,
c=flip(imag(pixel))+p2:
z=z^p3+c,
|z| <= 16
}

RectangularNb {; formula, Jim Muth
; formulaname appended to "b" to differentiate from
; previously posted RectangularN formulas
z=flip(real(pixel))+p2,
c=flip(imag(pixel))+p3:
z=z^p1+c,
|z| <= 16
}

RectangularPM {; Jim Muth
z=flip(real(pixel))+real(p1),
c=flip(imag(pixel))+imag(p1):
z=p2*(.5*((-z)^p3+z^p3))+c,
|z| <= 250
}

RectXLow {; Jim Muth
z=flip(real(pixel))+real(p3),
c=flip(imag(pixel))+imag(p3),
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2):
z=(a*(z^b))+(d*((-z)^f))+c,
|z| <=2500
}

SineMandel = {;Ron Barnett
   z = y = c = pixel, iterate = 0:
   IF(iterate)
      z = sin(real(y)) + flip(imag(y)), iterate = 0
   ELSE
      z = y, iterate = iterate + 1
   ENDIF
      z = z*z + c, y = z, |z| <= 100 
   }   

SkewPlanes {; Jim Muth
;p1=(0,0)=YW, (0,1)=XW, (1,0)=XZ, (1,1)=YZ
;p2=parallel planes, p3=optional extra term
a=real(p1), b=flip(cos(asin(real(p1)))), d=a+b,
f=imag(p1), g=flip(cos(asin(imag(p1)))), h=f+g,
z=real(pixel)+flip(real(p2)),
c=flip(imag(pixel))+imag(p2):
z=(d*(sqr(z)))+(real(p3))*(z^(imag(p3)))+(h*c),
|z| <= 36
}

SkewPlanesSqr {; Jim Muth
;p1=(0,0)=YW, (0,1)=XW, (1,0)=XZ, (1,1)=YZ
a=real(p1), b=flip(cos(asin(real(p1)))), d=a+b,
f=imag(p1), g=flip(cos(asin(imag(p1)))), h=f+g,
z=real(pixel)+flip(real(p2)),
c=flip(imag(pixel))+imag(p2):
z=(d*(sqr(z)))+(h*c),
|z| <= 36
}

SnakeHead (xaxis) { ; M.L. Newsted Jr.
	z = 0
	c = pixel:
	z = sqrt(z) / sqrt(c) + c
	|z| < 4
	}

SnakeTree {; Jim Muth
 z=pixel:
  z=(-z)^1.095+3.4
   |z| <= 100
  }

snowarch {; Jim Muth
z=c=pixel:
a=sqr(z)+c-p1*z-c
b=p2*sqr(z)+c-1
z=z-1*a/b
p3 <= |a|
}

Stretch1 { ; Flattened cardioid by Jay R. Hill, 1998
; Classic Mandelbrot set fractal, transformed
p = 0.5*exp(Pixel), c=p*(1-p), z = 0, done = 1, zc = 0
s=|c|, t1=(256*s - 96)*s + 32*Real(c), t2=16*s + 32*Real(c) + 16
z=z + 250*(t1<=3) + 251*(t2<=1) ; set colors
if(z>0) ; for periods 1 and 2.
done=-1 ; color is set for c in a component, skip iterations
endif
: ; initialization.
zc=sqr(zc) + c ; standard MSet iteration
if (|zc| >= 4) ; Bailout at 4
done=-1 ; Set flag to force an exit.
endif
done >= 0 ; Continue if the flag >=0.
} 

Stretch3 { ; Flattened cardioid by Jay R. Hill, 1998
; Classic Mandelbrot set fractal, transformed
; use: maxiter=256 inside=249 outside=summ symmetry=xaxis periodicity=0
p = 0.5*exp(Pixel), c=p*(1-p), z = 0, done = 1, zc = 0
s=|c|, t1=(256*s - 96)*s + 32*Real(c); period 1 cardioid test
t2=16*s + 32*Real(c) + 16 ; period 2 circle test
B=sqrt(-4*c-7), t3=|8+4*c*(1-B)|, t4=|8+4*c*(1+B)| ; period 3 components test
z=z + 249*(t1<=3) + 250*(t2<=1) + 251*(t3<=1) + 252*(t4<=1) ; set colors
if(z>0) ; periods 1, 2 and 3 have z>0.
done=-1 ; color is set for c in a known component, skip iterations
endif
: ; initialization.
zc=sqr(zc) + c ; standard MSet iteration
if (|zc| >= 4) ; Bailout at 4
done=-1 ; Set flag to force an exit.
endif
done >= 0 ; Continue if the flag >=0.
} 

tent_in_mod { ; Modified Sylvie Gallet formula
; Modified tent_inside.frm (generalized by Les St Clair)
; use fn1,fn2,fn4=abs & fn3=cabs for default behaviour
; set p1=0, p2=0.001 for default behaviour
IF (p1 || flip(p1))
r = p1
ELSE
r = 1
ENDIF
z = 0 :
l = r+p1
z = z*z + pixel
UV = (5,5) - fn1((5,5) - fn2(z))
r = fn3(UV)
fn4(l-r) >= p2 && r < 4
}

Test02 {; Jim Muth
z=pixel, d=real(p3),
f=imag(p3), c=d*(pixel^f):
z=sqr(z)+(p1*z^p2)+c,
|z| <= 100
}

Test0622       { ; Jim Muth
z=p1, c=fn1(pixel)+p2:
z=sqr(z)+c
|z| <16  }

Test15 {; Jim Muth
z=pixel, a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), k=real(p3), f=imag(p3), g=f*(pixel):
z=((a*(z^b))+(c*(z^d)))^k+g,
|z| <= 100
}

Test16 {; Jim Muth
z=pixel, a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), k=real(p3), f=imag(p3), g=f*(pixel):
z=((a*(-z^b))+(c*(-z^d)))^k+g,
|z| <= 100
}

Test17 {; Jim Muth
z=pixel, a=real(p1), b=imag(p1), c=real(p2),
d=imag(p2), k=real(p3), f=imag(p3), g=f*(pixel):
z=(((a/z)^b)+((c/z)^d))^k+g,
|z| <= 100
}

tile2j1j2 { ; tiled backgrounds, 2 iterations of 2 julias, sum of angles
        ; p1 = c1
        ; p2 = c2
        ; real(p3) = 1 scale factor
        ; imag(p3) = 2 scale factor
        c1=p1, c2=p2, x=real(pixel), y=imag(pixel),
        k1=pi*real(p3), k2=pi*imag(p3)
        x1=2*cos(k1*x), y1=2*cos(k1*y),
        x2=2*sin(k2*x), y2=2*sin(k2*y),
        z1=x1+(0.0,1.0)*y1, z2=x2+(0.0,1.0)*y2, r=0:
        z1=sqr(z1)+c1, z2=sqr(z2)+c2,
        z1=sqr(z1)+c1, z2=sqr(z2)+c2,
        z=fn1(z1)*fn2(z2), |z| < r
        }

tile3j1j2 { ; tiled backgrounds, 3 iterations of 2 julias, sum of angles
        ; p1 = c1
        ; p2 = c2
        ; real(p3) = 1 scale factor
        ; imag(p3) = 2 scale factor
        c1=p1, c2=p2, x=real(pixel), y=imag(pixel),
        k1=pi*real(p3), k2=pi*imag(p3)
        x1=2*cos(k1*x), y1=2*cos(k1*y),
        x2=2*sin(k2*x), y2=2*sin(k2*y),
        z1=x1+(0.0,1.0)*y1, z2=x2+(0.0,1.0)*y2, r=0:
        z1=sqr(z1)+c1, z2=sqr(z2)+c2,
        z1=sqr(z1)+c1, z2=sqr(z2)+c2,
        z1=sqr(z1)+c1, z2=sqr(z2)+c2,
        z=fn1(z1)*fn2(z2), |z| < r
        }

TORUS{; Earl Hinrich torus method
; adaptation by Ray Girvan May 1997
; trial FRM ignoring scale factors
; p1=(x0,y0) centre of generating circle
; p2=(cx0,cy0) centre of generating circle
; real(p3) = zr radius of torus axis in z plane
; imag(p3) = cr radius of torus axis in c plane
; try p1=(0.5,0) p2=(-0.55103,0.534949) p3=(0.2,0.03)
x=real(p1)+real(p3)*sin(imag(pixel));
y=imag(p1)+real(p3)*cos(real(pixel));
cx=real(p2)+imag(p3)*sin(real(pixel));
cy=imag(p2)+imag(p3)*cos(imag(pixel));
c=cx+flip(cy);
z=x+flip(y):
z=z*z+c,
|z| <= 4
}

TowerExp11 {; Jim Muth
z=pixel, c=p2+(p3*pixel):
z=z^(z^(z^(z^(z^(z^(z^(z^(z^(z^(z^(z+p1)))))))))))+c,
|z| <= 100
}

TowerMinExp01 {; Jim Muth
z=pixel, c=p2+(p3*pixel):
z=z^(-z+p1)+c,
|z| <= 100
}

TowerMinExp02 {; Jim Muth
z=pixel, c=p2+(p3*pixel):
z=z^(-z^(z+p1))+c,
|z| <= 100
}

TowerMinExp03 {; Jim Muth
z=pixel, c=p2+(p3*pixel):
z=z^(-z^(z^(-z+p1)))+c,
|z| <= 100
}

TowerMinExp04a {; Jim Muth
z=pixel, c=p2+(p3*pixel):
z=z^fn1(z^fn2(-z^fn3(z^fn4(-z+p1))))+c,
|z| <= 100
}

TowerMinExp05 {; Jim Muth
z=pixel, c=p2+(p3*pixel):
z=z^(-z^(z^(-z^(z^(-z+p1)))))+c,
|z| <= 100
}

VB-XY-YZrotation {; Jim Muth, thanks to Benno
; real(p1)=rotation angle in degrees, imag(p1)=bailout
; p2=parallel planes, p3=rotation point and parallel planes
a=real(p1), b=sqr(imag(p1)),
z=sin(a*.01745329251994)*real(pixel)+p2,
c=cos(a*.01745329251994)*real(pixel)+flip(imag(pixel))+p3:
z=sqr(z)+c,
|z| <= b
}

Woven {; Jim Muth
z=pixel, c=p1:
z=(-z)^1.05+c,
|z| <= 100
}

XWplane {; Jim Muth
z=flip(imag(pixel))+real(p1),
c=real(pixel)+flip(imag(p1)):
z=sqr(z)+c,
|z| <= 36
}

XWplaneN {; Jim Muth
z=flip(imag(pixel))+real(p1),
c=real(pixel)+flip(imag(p1)):
z=z^p2+c,
|z| <= 36
}

XY-XWrot-N {; Jim Muth, thanks to Benno Schmid
; real(p1) = rotation angle in degrees, imag(p1 = exponent of Z,
; p2 = parallel planes,
; p3 = point of rotation and parallel planes,
z=sin(real(p1)*.01745329251994)*flip(imag(pixel))+p2,
c=cos(real(p1)*.01745329251994)*flip(imag(pixel))+real(pixel)+p3:
z=(-z)^imag(p1)+c
|z| <= 25
}

XY-XWrotation {; Jim Muth, thanks to Benno Schmid
; p1 = rotation angle in degrees, p2 = parallel planes
; p3 = point of rotation and parallel planes
z=sin(p1*.01745329251994)*flip(imag(pixel))+p2,
c=cos(p1*.01745329251994)*flip(imag(pixel))+real(pixel)+p3:
z=sqr(z)+c
|z| <= 16
}

XY-XZrotation {; Jim Muth, thanks to Benno Schmid
; p1 = rotation angle in degrees, p2 = parallel planes
; p3 = point of rotation and parallel planes
z=sin(p1*.01745329251994)*imag(pixel)+p2,
c=cos(p1*.01745329251994)*flip(imag(pixel))+real(pixel)+p3:
z=sqr(z)+c
|z| <= 16
}

XY-XZrotN {; Jim Muth, thanks to Benno Schmid
 ; real(p1) = rotation angle in degrees, imag(p1 = exponent of Z,
 ; p2 = parallel planes,
 ; p3 = point of rotation and parallel planes,
  z=sin(real(p1)*.01745329251994)*imag(pixel)+p2,
  c=cos(real(p1)*.01745329251994)*flip(imag(pixel))+real(pixel)+p3:
   z=z^imag(p1)+c
    |z| <= 25
  }

XY-YZrot-N {; Jim Muth, thanks to Benno
; real(p1) = rotation angle in degrees, imag(p1 = exponent of Z,
; p2 = parallel planes,
; p3 = point of rotation and parallel planes,
z=sin(real(p1)*.01745329251994)*real(pixel)+p2,
c=cos(real(p1)*.01745329251994)*real(pixel)+flip(imag(pixel))+p3:
z=(-z)^imag(p1)+c,
|z| <= 25
}

XY-YZ-test02 {; Jim Muth (2nd revision)
; p1 = rotation angle in degrees, p2 = parallel planes
; p3 = axis of rotation and parallel planes
z=sin(p1*.01745329251994)*real(pixel)+p2,
c=cos(p1*.01745329251994)*real(pixel)+flip(imag(pixel))+p3:
z=sqr(z)+c,
|z| <= 16
}

XY-YZ-test03 {; Jim Muth
; real(p1)=rotation angle in degrees, imag(p1)=exponent of z
; p2=parallel planes, real(p3)=axis of rotation and parallel planes
; imag(p3) = escape radius
z=sin(real(p1)*.01745329251994)*real(pixel)+p2,
c=cos(real(p1)*.01745329251994)*real(pixel)+flip(imag(pixel))+real(p3):
z=z^imag(p1)+c,
|z| <= imag(p3)
}

XY-YZrotation {; Jim Muth, thanks to Benno
; p1 = rotation angle in degrees, p2 = parallel planes
; p3 = point of rotation and parallel planes
z=sin(p1*.01745329251994)*real(pixel)+p2,
c=cos(p1*.01745329251994)*real(pixel)+flip(imag(pixel))+p3:
z=sqr(z)+c,
|z| <= 16
}

XY-YZrotlow {; Jim Muth, thanks to Benno
; p1 = rotation angle in degrees, p2 = parallel planes
; p3 = point of rotation and parallel planes
z=sin(p1*.01745329251994)*real(pixel)+p2,
c=cos(p1*.01745329251994)*real(pixel)+flip(imag(pixel))+p3:
z=sqr(z)+c,
|z| <= 4
}

XYplane {; Jim Muth
z=p1, c=pixel:
z=sqr(z)+c,
|z| <=36
}

XZplane {; Jim Muth
z=imag(pixel)+flip(real(p1)),
c=real(pixel)+flip(imag(p1)):
z=sqr(z)+c,
|z| <= 36
}

YWplane {; Jim Muth
z=flip(real(pixel))+real(p1),
c=flip(imag(pixel))+imag(p1):
z=sqr(z)+c,
|z| <= 36
}

YZplane {; Jim Muth
z=real(pixel)+flip(real(p1)),
c=flip(imag(pixel))+imag(p1):
z=sqr(z)+c,
|z| <= 36
}

YZplaneN {; Jim Muth
z=real(pixel)+flip(real(p1)),
c=flip(imag(pixel))+imag(p1):
z=z^p2+c,
|z| <= 36
}

ZWplane {; Jim Muth
z=pixel, c=p1:
z=sqr(z)+c,
|z| <=36
}

ZWplane-N {; Jim Muth
z=pixel, c=p1:
z=(-z)^p2+c,
|z| <= 36
}