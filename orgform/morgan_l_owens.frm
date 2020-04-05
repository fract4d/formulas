
-------------------------------------------------------------------------------------------------

I've been looking at such "inversion groups" (aka. "kleinian groups") with Fractint:

6Klein_Group(XYAXIS)  { ; Morgan L. Owens  <packrat@nznet.gen.nz>
                        ; Mon, 20 May 2002 19:38:59
pi3=pi/3
c1=(0,2)
c2=2*(sin(pi3)+flip(cos(pi3)))
c3=2*(sin(2*pi3)+flip(cos(2*pi3)))
c4=(0,-2)
c5=2*(sin(4*pi3)+flip(cos(4*pi3)))
c6=2*(sin(5*pi3)+flip(cos(5*pi3)))
z=pixel
inside=1:
IF(cabs(z-c1)<1)
         z=conj(1/(z-c1))+c1
         inside=1
ELSEIF(cabs(z-c2)<1)
         z=conj(1/(z-c2))+c2
         inside=1
ELSEIF(cabs(z-c3)<1)
         z=conj(1/(z-c3))+c3
         inside=1
ELSEIF(cabs(z-c4)<1)
         z=conj(1/(z-c4))+c4
         inside=1
ELSEIF(cabs(z-c5)<1)
         z=conj(1/(z-c5))+c5
         inside=1
ELSEIF(cabs(z-c6)<1)
         z=conj(1/(z-c6))+c6
         inside=1
ELSE
         inside=0
ENDIF
inside}

-------------------------------------------------------------------------------------------------

In this example the accumulation points (where the images pile up on each 
other) all lie on a single circle. This is an accident due to the symmetry 
of the original mirrors' arrangement. In general, the curve is 
"nowhere-differentiable" in the jargon of a mid-1960s text where I first 
came across the subject. Modern terminology would use "fractal".

I've just started on another where each pixel is coloured according to how 
many reflections a ray starting from that point goes through before 
escaping the system, but at the moment it's still a bit buggy:

threecircles1   { ; Morgan L. Owens  <packrat@nznet.gen.nz>
                  ; Mon, 20 May 2002 19:38:59
; three circles located at the cube roots of 1
; real(p1) specifies their common radius - note that they're tangent to
;          each other when real(p1)=sqrt(3)/2.
;
; From each point z in the complex plane a test particle is launched at
; an angle of imag(p1) to the positive real axis. Thus, for imag(p1)=0,
; the test particle will travel to the right.
;
; Each time the particle encounters a circle, it is reflected in the
; traditional manner and a count is kept of the number of such
; reflections. This count is used to colour the original point if and
; when the particle escapes towards infinity - that is to say, when the
; three circles no longer obstruct its course.
;

; First, we need to establish the centres of the three circles.
centre1=1
centre2=exp(flip(2*pi/3))
centre3=centre2*centre2 ; Reckon this is faster than another exp()?

rho=real(p1)
theta=imag(p1)

direction=cos(theta)+i*sin(theta) ; We'll use a vector representaion
                                  ; of the direction

z = pixel

trapped=(|z-centre1|<rho*rho || |z-centre2|<rho*rho || |z-centre3|<rho*rho)

; For efficiency, we see if z is _inside_ a circle. If it is, we can
; predict how long it will take to escape :-)
; Note also that since Fractint's || operator is nonstandard, we use
; rho*rho instead of rho.

: ; End of initialisation section. Now beginning the loop.

if(trapped)
   escaped=0 ; We'll continue to iterate, though - so that the insides of
             ; the circles really are classified as "inside"
else ; Let's get dangerous

; Right, we have a ray that passes through the point z in the direction
; theta. Finding the intersections (if any) of this ray with a circle
; involves finding the solutions of a certain quadratic with real
; coefficients. If the quadratic has two real roots, then the ray cuts the
; circle. If it has one real root (necessarily of multiplicity two) then
; the ray is tangent to the circle. And if both roots are complex, then
; the ray misses the circle completely.

   escaped=1 ; As far as we know at the moment.

   hit=9999 ; Meaningless when escaped==1

   ;Examining circle 1

   coefA = |direction|
   coefB = real(z-centre1)*real(direction)+imag(z-centre1)*imag(direction)
   coefC = |z-centre1|-rho*rho

   discriminant=coefB*coefB-coefA*coefC

   ; If discriminant==0, then the ray is tangent to circle 1 - we won't
   ; count this as a "reflection"
   ; If discriminant<0, then the ray misses circle 1 completely.

   if(discriminant>0) ; Two solutions
     t1=(-coefB-sqrt(discriminant))/coefA
     t2=(-coefB+sqrt(discriminant))/coefA

     if(t1>0) ; If t1<0 then this hit is actually behind us
       escaped=0 ; Sorry, not this time.
       hit=t1
       target=1 ; The first circle
     endif
     if(t2>0 && t2<t1) ; Hits t2 before hitting t1
       escaped=0
       hit=t2
       target=1
     endif
   endif

   ; Circle 2
   ; coefA = |direction| is already known
   coefB = real(z-centre2)*real(direction)+imag(z-centre2)*imag(direction)
   coefC = |z-centre2|-rho*rho
   discriminant=coefB*coefB-coefA*coefC
   if(discriminant>0)
     t1=(-coefB-sqrt(discriminant))/coefA
     t2=(-coefB+sqrt(discriminant))/coefA
     if(t1>0 && t1<hit)
       escaped=0
       hit=t1
       target=2
     endif
     if(t2>0 && t2<t1 && t2<hit)
       escaped=0
       hit=t2
       target=2
     endif
   endif

   ; Circle 3
   coefB = real(z-centre3)*real(direction)+imag(z-centre3)*imag(direction)
   coefC = |z-centre3|-rho*rho
   discriminant=coefB*coefB-coefA*coefC
   if(discriminant>0)
     t1=(-coefB-sqrt(discriminant))/coefA
     t2=(-coefB+sqrt(discriminant))/coefA
     if(t1>0 && t1<hit)
       escaped=0
       hit=t1
       target=3
     endif
     if(t2>0 && t2<t1 && t2<hit)
       escaped=0
       hit=t2
       target=3
     endif
   endif

; We now know when we hit a circle (hit) and which circle it is (target)
; The hit point is z+direction*hit, the normal at this point is
; z-centre?, which we normalise to a unit vector (un).
;
; We set z to the hit point, and the reflected vector is
; direction-2(direction.un)un

   if(target==1)
    un=(z-centre1)/sqrt(|z-centre1|)
   elseif(target==2)
    un=(z-centre2)/sqrt(|z-centre2|)
   else
    un=(z-centre3)/sqrt(|z-centre3|)
   endif
   r=direction-2*(real(direction)*real(un)+imag(direction)*imag(un))*un
   z=z+direction*hit
   direction=r

endif

;bailout continue until we escape
escaped==0
}

-------------------------------------------------------------------------------------------------

threecircles2   { ; Morgan L. Owens  <packrat@nznet.gen.nz>
                  ; Mon, 20 May 2002 19:38:59
; three circles located at the cube roots of 1
; real(p1) specifies their common radius - note that they're tangent to
;          each other when real(p1)=sqrt(3)/2.
;
; p2 specifies a point (the "radiant") from which test particles are
; launched. More precisely, every point in the complex plane emits a
; test particle, which travels directly away from p2
;

; First, we need to establish the centres of the three circles.
centre1=1
centre2=exp(flip(2*pi/3))
centre3=centre2*centre2 ; Reckon this is faster than another exp()?

rho=real(p1)

direction=pixel-p2
z = pixel

trapped=(|z-centre1|<rho*rho || |z-centre2|<rho*rho || |z-centre3|<rho*rho)

; For efficiency, we see if z is _inside_ a circle. If it is, we can
; predict how long it will take to escape :-)
; Note also that since Fractint's || operator is nonstandard, we use
; rho*rho instead of rho.

: ; End of initialisation section. Now beginning the loop.

if(trapped)
   escaped=0 ; We'll continue to iterate, though - so that the insides of
             ; the circles really are classified as "inside"
else ; Let's get dangerous

; Right, we have a ray that passes through the point z in the direction
; theta. Finding the intersections (if any) of this ray with a circle
; involves finding the solutions of a certain quadratic with real
; coefficients. If the quadratic has two real roots, then the ray cuts the
; circle. If it has one real root (necessarily of multiplicity two) then
; the ray is tangent to the circle. And if both roots are complex, then
; the ray misses the circle completely.

   escaped=1 ; As far as we know at the moment.

   hit=9999 ; Meaningless when escaped==1

   ;Examining circle 1

   coefA = |direction|
   coefB = real(z-centre1)*real(direction)+imag(z-centre1)*imag(direction)
   coefC = |z-centre1|-rho*rho

   discriminant=coefB*coefB-coefA*coefC

   ; If discriminant==0, then the ray is tangent to circle 1 - we won't
   ; count this as a "reflection"
   ; If discriminant<0, then the ray misses circle 1 completely.

   if(discriminant>0) ; Two solutions
     t1=(-coefB-sqrt(discriminant))/coefA
     t2=(-coefB+sqrt(discriminant))/coefA

     if(t1>0) ; If t1<0 then this hit is actually behind us
       escaped=0 ; Sorry, not this time.
       hit=t1
       target=1 ; The first circle
     endif
     if(t2>0 && t2<t1) ; Hits t2 before hitting t1
       escaped=0
       hit=t2
       target=1
     endif
   endif

   ; Circle 2
   ; coefA = |direction| is already known
   coefB = real(z-centre2)*real(direction)+imag(z-centre2)*imag(direction)
   coefC = |z-centre2|-rho*rho
   discriminant=coefB*coefB-coefA*coefC
   if(discriminant>0)
     t1=(-coefB-sqrt(discriminant))/coefA
     t2=(-coefB+sqrt(discriminant))/coefA
     if(t1>0 && t1<hit)
       escaped=0
       hit=t1
       target=2
     endif
     if(t2>0 && t2<t1 && t2<hit)
       escaped=0
       hit=t2
       target=2
     endif
   endif

   ; Circle 3
   coefB = real(z-centre3)*real(direction)+imag(z-centre3)*imag(direction)
   coefC = |z-centre3|-rho*rho
   discriminant=coefB*coefB-coefA*coefC
   if(discriminant>0)
     t1=(-coefB-sqrt(discriminant))/coefA
     t2=(-coefB+sqrt(discriminant))/coefA
     if(t1>0 && t1<hit)
       escaped=0
       hit=t1
       target=3
     endif
     if(t2>0 && t2<t1 && t2<hit)
       escaped=0
       hit=t2
       target=3
     endif
   endif

; We now know when we hit a circle (hit) and which circle it is (target)
; The hit point is z+direction*hit, the normal at this point is
; z-centre?, which we normalise to a unit vector (un).
;
; We set z to the hit point, and the reflected vector is
; direction-2(direction.un)un

   if(target==1)
    un=(z-centre1)/sqrt(|z-centre1|)
   elseif(target==2)
    un=(z-centre2)/sqrt(|z-centre2|)
   else
    un=(z-centre3)/sqrt(|z-centre3|)
   endif
   r=direction-2*(real(direction)*real(un)+imag(direction)*imag(un))*un
   z=z+direction*hit
   direction=r

endif

;bailout continue until we escape
escaped==0
}

-------------------------------------------------------------------------------------------------

...and while we're on the subject of Fractint formulae, can someone explain 
why it is that it's still possible after all this time for BoF to still 
contain things that haven't been reproduced in Fractint yet? You'd have 
thought that the two-dimensional Newton systems described therein would've 
been:

twodnewton   { ; Morgan L. Owens  <packrat@nznet.gen.nz>
               ; Mon, 20 May 2002 19:38:59
h = real(p1)
m = imag(p1)
z=pixel:
oz=z
x=real(z),y=imag(z)
f=2*x-y-m*(x-x*x)
g=2*y-x-m*(y-y*y)
fx=2-m*(1-2*x)
gy=2-m*(1-2*y)
delta  =(-g-f*gy)/(fx*gy-1)
epsilon=(-f-g*fx)/(fx*gy-1)
nx=x+h*delta
ny=y+h*epsilon
z=nx+flip(ny)
|oz-z|>.001
}

(E.g. h=0.5, m=2)

-------------------------------------------------------------------------------------------------

3Klein_Group(XAXIS)   { ; Morgan L. Owens <packrat@nznet.gen.nz>
                        ; Thu, 23 May 2002 01:28:28
ang=2*pi/3
c1=exp((0,0)*ang)
c2=exp((0,1)*ang)
c3=exp((0,2)*ang)
r=sqrt(3)/2
rr=r*r
z=pixel:
inside=0
if(|z-c1|<rr)
         z=r*conj(r/(z-c1))+c1
         inside=1
elseif(|z-c2|<rr)
         z=r*conj(r/(z-c2))+c2
         inside=1
elseif(|z-c3|<rr)
         z=r*conj(r/(z-c3))+c3
         inside=1
endif
inside}

-------------------------------------------------------------------------------------------------

6Klein_Group(XYAXIS)   { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Thu, 23 May 2002 01:28:28
ang=pi/3
c1=2*exp((0,0)*ang)
c2=2*exp((0,1)*ang)
c3=2*exp((0,2)*ang)
c4=2*exp((0,3)*ang)
c5=2*exp((0,4)*ang)
c6=2*exp((0,5)*ang)
z=pixel:
inside=0
IF(|z-c1|<1)
         z=conj(1/(z-c1))+c1
         inside=1
ELSEIF(|z-c2|<1)
         z=conj(1/(z-c2))+c2
         inside=1
ELSEIF(|z-c3|<1)
         z=conj(1/(z-c3))+c3
         inside=1
ELSEIF(|z-c4|<1)
         z=conj(1/(z-c4))+c4
         inside=1
ELSEIF(|z-c5|<1)
         z=conj(1/(z-c5))+c5
         inside=1
ELSEIF(|z-c6|<1)
         z=conj(1/(z-c6))+c6
         inside=1
ENDIF
inside}

-------------------------------------------------------------------------------------------------

7Klein_Group(XYAXIS)   { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Thu, 23 May 2002 01:28:28
ang=pi/3
c1=0
c2=1
c3=exp((0,1)*ang)
c4=exp((0,2)*ang)
c5=exp((0,3)*ang)
c6=exp((0,4)*ang)
c7=exp((0,5)*ang)
r=1/2
rr=r*r
z=pixel:
inside=0
if(|z-c1|<rr)
         z=r*conj(r/(z-c1))+c1
         inside=1
elseif(|z-c2|<rr)
         z=r*conj(r/(z-c2))+c2
         inside=1
elseif(|z-c3|<rr)
         z=r*conj(r/(z-c3))+c3
         inside=1
elseif(|z-c4|<rr)
         z=r*conj(r/(z-c4))+c4
         inside=1
elseif(|z-c5|<rr)
         z=r*conj(r/(z-c5))+c5
         inside=1
elseif(|z-c6|<rr)
         z=r*conj(r/(z-c6))+c6
         inside=1
elseif(|z-c7|<rr)
         z=r*conj(r/(z-c7))+c7
         inside=1
endif
inside}


Klein_squ_lattice(XYAXIS)   { ; Morgan L. Owens <packrat@nznet.gen.nz>
                              ; Thu, 23 May 2002 01:28:28
r=1/2
rr=r*r
z=pixel:
inside=0
c=round(z)
if(|z-c|<rr)
         z=r*conj(r/(z-c))+c
         inside=1
endif
inside}

-------------------------------------------------------------------------------------------------

Klein_tri_lattice(XYAXIS)   { ; Morgan L. Owens <packrat@nznet.gen.nz>
                              ; Thu, 23 May 2002 01:28:28
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
if(|z-c0|<rr)
         z=r*conj(r/(z-c0))+c0
         inside=1
elseif(|z-c1|<rr)
         z=r*conj(r/(z-c1))+c1
         inside=1
elseif(|z-c2|<rr)
         z=r*conj(r/(z-c2))+c2
         inside=1
elseif(|z-c3|<rr)
         z=r*conj(r/(z-c3))+c3
         inside=1
elseif(|z-c4|<rr)
         z=r*conj(r/(z-c4))+c4
         inside=1
endif
inside}

-------------------------------------------------------------------------------------------------

4movable   { ; Morgan L. Owens <packrat@nznet.gen.nz>
             ; Fri, 24 May 2002 00:19:27
; For any set of four points in the plane, there are an infinite number
; of solutions to the problem of mutually tangent circles centred on those
; points. For the sake of definiteness, some more or less arbitrary methods
; have to be applied. First, we find the distances between each pair of
; points.

d21=d12=cabs(p1-p2)
d31=d13=cabs(p1-p3)
d41=d14=cabs(p1-p4)
d32=d23=cabs(p2-p3)
d42=d24=cabs(p2-p4)
d43=d34=cabs(p3-p4)

; The radius of each circle is _at least_ half the distance between its centre
; and the centre of the nearest other circle.
r1=d12
r2=d21
r3=d31
r4=d41
r1=(d13<r1)*d13+(d13>=r1)*r1
r2=(d23<r2)*d23+(d23>=r2)*r2
r3=(d32<r3)*d32+(d32>=r3)*r3
r4=(d42<r4)*d42+(d42>=r4)*r4
r1=(d14<r1)*d14+(d14>=r1)*r1
r2=(d24<r2)*d24+(d24>=r2)*r2
r3=(d34<r3)*d34+(d34>=r3)*r3
r4=(d43<r4)*d43+(d43>=r4)*r4

;Yeah, I said "half", didn't I?
r1=r1/2
r2=r2/2
r3=r3/2
r4=r4/2

; We subtract these radii from our distances, leaving only some possible 
"excess"
d21=d12=d12-r1-r2
d31=d13=d13-r1-r3
d41=d14=d14-r1-r4
d32=d23=d23-r2-r3
d42=d24=d24-r2-r4
d43=d34=d34-r3-r4

; At this point the two nearest circles are already tangent to each other. The
; others, however, may still have some distance remaining between themselves
; and the others. This remaining distance is what I referred to above as the
; "excess". For two circles that are tangent, this excess is zero.
;
; If both of the remaining circles are free to grow (a circle is "free to
; grow" when it is not tangent to any other circle), we want both to be as
; large as possible - we don't want, for example, one to be so large that the
; other is unable to grow any further at all. The most sensible solution is
; for each to take half of the excess that lies between them; unless of course
; that would cause one to overlap either of the first two circles, in which
; case the growth is limited by the excess lying between it and the fixed
; circle.

; We note which circles can still grow (i.e. nonzero excess between it and all
; others)
g1=(d12*d13*d14>0)
g2=(d21*d23*d24>0)
g3=(d31*d32*d34>0)
g4=(d41*d42*d43>0)
if(g1)
         ma=1,da1=0,da2=d12,da3=d13,da4=d14
elseif(g2)
         ma=2,da1=d21,da2=0,da3=d23,da4=d24
elseif(g3)
         ma=3,da1=d31,da2=d32,da3=0,da4=d34
elseif(g4)
         ma=4,da1=d41,da2=d42,da3=d43,da4=0
else
         ma=0
endif
if(g1 && ma!=1)
         mb=1,db1=0,db2=d12,db3=db3,db4=d14
elseif(g2 && ma!=2)
         mb=2,db1=d21,db2=0,db3=d23,db4=d24
elseif(g3 && ma!=3)
         mb=3,db1=d31,db2=d32,db3=0,db4=d34
elseif(g4 && ma!=4)
         mb=4,db1=d41,db2=d42,db3=d43,db4=0
else
         mb=0
endif

; ma and mb are the only two (if any) circles that can still grow.
if(ma!=0) ; At least one circle can still grow.
         if(mb==0) ; and it's the only one, so we grow it as big as it will go.
                 if(ma==1)
                         d=da2
                         d=(da3<d)*da3+(da3>=d)*d
                         d=(da4<d)*da4+(da4>=d)*d
                         r1=r1+d
                 elseif(ma==2)
                         d=da1
                         d=(da3<d)*da3+(da3>=d)*d
                         d=(da4<d)*da4+(da4>=d)*d
                         r2=r2+d
                 elseif(ma==3)
                         d=da1
                         d=(da2<d)*da2+(da2>=d)*d
                         d=(da4<d)*da4+(da4>=d)*d
                         r3=r3+d
                 elseif(ma==4)
                         d=da1
                         d=(da2<d)*da2+(da2>=d)*d
                         d=(da3<d)*da3+(da3>=d)*d
                         r4=r4+d
                 endif
         else ; Both can grow, so we grow them both as much as they can go.
                 if((ma==1 && mb==2)||(ma==2 && mb==1))
                         dab=d12
                 elseif((ma==1 && mb==3)||(ma==3 && mb==1))
                         dab=d13
                 elseif((ma==1 && mb==4)||(ma==4 && mb==1))
                         dab=d14
                 elseif((ma==2 && mb==3)||(ma==3 && mb==2))
                         dab=d23
                 elseif((ma==2 && mb==4)||(ma==4 && mb==2))
                         dab=d24
                 elseif((ma==3 && mb==4)||(ma==4 && mb==3))
                         dab=d34
                 endif
                 da=dab/2
                 if(ma!=1)
                         da=(da1<da)*da1+(da1>=da)*da
                 endif
                 if(ma!=2)
                         da=(da2<da)*da2+(da2>=da)*da
                 endif
                 if(ma!=3)
                         da=(da3<da)*da3+(da3>=da)*da
                 endif
                 if(ma!=4)
                         da=(da4<da)*da4+(da4>=da)*da
                 endif
                 db=dab/2
                 if(mb!=1)
                         db=(db1<db)*db1+(db1>=db)*db
                 endif
                 if(mb!=2)
                         db=(db2<db)*db2+(db2>=db)*db
                 endif
                 if(mb!=3)
                         db=(db3<db)*db3+(db3>=db)*db
                 endif
                 if(mb!=4)
                         db=(db4<db)*db4+(db4>=db)*db
                 endif
                 if(ma==1)
                         r1=r1+da
                 elseif(ma==2)
                         r2=r2+da
                 elseif(ma==3)
                         r3=r3+da
                 elseif(ma==4)
                         r4=r4+da
                 endif
                 if(mb==1)
                         r1=r1+db
                 elseif(mb==2)
                         r2=r2+db
                 elseif(mb==3)
                         r3=r3+db
                 elseif(mb==4)
                         r4=r4+db
                 endif
         endif
endif
rr1=sqr(r1)
rr2=sqr(r2)
rr3=sqr(r3)
rr4=sqr(r4)
z=pixel:
inside=0
if(|z-p1|<rr1)
         z=r1*conj(r1/(z-p1))+p1
         inside=1
elseif(|z-p2|<rr2)
         z=r2*conj(r2/(z-p2))+p2
         inside=1
elseif(|z-p3|<rr3)
         z=r3*conj(r3/(z-p3))+p3
         inside=1
elseif(|z-p4|<rr4)
         z=r4*conj(r4/(z-p4))+p4
         inside=1
endif
inside}

-------------------------------------------------------------------------------------------------

5movable   { ; Morgan L. Owens <packrat@nznet.gen.nz>
             ; Fri, 24 May 2002 01:19:09
d21=d12=cabs(p1-p2)
d31=d13=cabs(p1-p3)
d41=d14=cabs(p1-p4)
d51=d15=cabs(p1-p5)
d32=d23=cabs(p2-p3)
d42=d24=cabs(p2-p4)
d52=d25=cabs(p2-p5)
d43=d34=cabs(p3-p4)
d53=d35=cabs(p3-p5)
d54=d45=cabs(p4-p5)
r1=d12
r2=d21
r3=d31
r4=d41
r5=d51
r1=(d13<r1)*d13+(d13>=r1)*r1
r2=(d23<r2)*d23+(d23>=r2)*r2
r3=(d32<r3)*d32+(d32>=r3)*r3
r4=(d42<r4)*d42+(d42>=r4)*r4
r5=(d52<r5)*d52+(d52>=r5)*r5
r1=(d14<r1)*d14+(d14>=r1)*r1
r2=(d24<r2)*d24+(d24>=r2)*r2
r3=(d34<r3)*d34+(d34>=r3)*r3
r4=(d43<r4)*d43+(d43>=r4)*r4
r5=(d53<r5)*d53+(d53>=r5)*r5
r1=(d15<r1)*d15+(d15>=r1)*r1
r2=(d25<r2)*d25+(d25>=r2)*r2
r3=(d35<r3)*d35+(d35>=r3)*r3
r4=(d45<r4)*d45+(d45>=r4)*r4
r5=(d54<r5)*d54+(d54>=r5)*r5
r1=r1/2
r2=r2/2
r3=r3/2
r4=r4/2
r5=r5/2
d21=d12=d12-r1-r2
d31=d13=d13-r1-r3
d41=d14=d14-r1-r4
d51=d15=d15-r1-r5
d32=d23=d23-r2-r3
d42=d24=d24-r2-r4
d52=d25=d25-r2-r5
d43=d34=d34-r3-r4
d53=d35=d35-r3-r5
d54=d45=d45-r4-r5
g1=(d12*d13*d14*d15>0)
g2=(d21*d23*d24*d25>0)
g3=(d31*d32*d34*d35>0)
g4=(d41*d42*d43*d45>0)
g5=(d51*d52*d53*d54>0)
if(g1)
         ma=1,da1=0,da2=d12,da3=d13,da4=d14,da5=d15
elseif(g2)
         ma=2,da1=d21,da2=0,da3=d23,da4=d24,da5=d25
elseif(g3)
         ma=3,da1=d31,da2=d32,da3=0,da4=d34,da5=d35
elseif(g4)
         ma=4,da1=d41,da2=d42,da3=d43,da4=0,da5=d45
elseif(g5)
         ma=5,da1=d51,da2=d52,da3=d53,da5=d54,da5=0
else
         ma=0
endif
if(g1 && ma!=1)
         mb=1,db1=0,db2=d12,db3=db3,db4=d14,db5=d15
elseif(g2 && ma!=2)
         mb=2,db1=d21,db2=0,db3=d23,db4=d24,db5=d25
elseif(g3 && ma!=3)
         mb=3,db1=d31,db2=d32,db3=0,db4=d34,db5=d35
elseif(g4 && ma!=4)
         mb=4,db1=d41,db2=d42,db3=d43,db4=0,db5=d45
elseif(g5 && ma!=5)
         mb=5,db1=d51,db2=d52,db3=d53,db4=d54,db5=0
else
         mb=0
endif
if(ma!=0)
         if(mb==0)
                 if(ma==1)
                         d=da2
                         d=(da3<d)*da3+(da3>=d)*d
                         d=(da4<d)*da4+(da4>=d)*d
                         d=(da5<d)*da5+(da5>=d)*d
                         r1=r1+d
                 elseif(ma==2)
                         d=da1
                         d=(da3<d)*da3+(da3>=d)*d
                         d=(da4<d)*da4+(da4>=d)*d
                         d=(da5<d)*da4+(da5>=d)*d
                         r2=r2+d
                 elseif(ma==3)
                         d=da1
                         d=(da2<d)*da2+(da2>=d)*d
                         d=(da4<d)*da4+(da4>=d)*d
                         d=(da5<d)*da5+(da5>=d)*d
                         r3=r3+d
                 elseif(ma==4)
                         d=da1
                         d=(da2<d)*da2+(da2>=d)*d
                         d=(da3<d)*da3+(da3>=d)*d
                         d=(da5<d)*da5+(da5>=d)*d
                         r4=r4+d
                 elseif(ma==5)
                         d=da1
                         d=(da2<d)*da2+(da2>=d)*d
                         d=(da3<d)*da3+(da3>=d)*d
                         d=(da4<d)*da4+(da4>=d)*d
                         r5=r5+d
                 endif
         else
                 if((ma==1 && mb==2)||(ma==2 && mb==1))
                         dab=d12
                 elseif((ma==1 && mb==3)||(ma==3 && mb==1))
                         dab=d13
                 elseif((ma==1 && mb==4)||(ma==4 && mb==1))
                         dab=d14
                 elseif((ma==1 && mb==5)||(ma==5 && mb==1))
                         dab=d15
                 elseif((ma==2 && mb==3)||(ma==3 && mb==2))
                         dab=d23
                 elseif((ma==2 && mb==4)||(ma==4 && mb==2))
                         dab=d24
                 elseif((ma==2 && mb==5)||(ma==5 && mb==2))
                         dab=d25
                 elseif((ma==3 && mb==4)||(ma==4 && mb==3))
                         dab=d34
                 elseif((ma==3 && mb==5)||(ma==5 && mb==3))
                         dab=d35
                 elseif((ma==4 && mb==5)||(ma==5 && mb==4))
                         dab=d45
                 endif
                 da=db=dab/2
                 if(ma!=1)
                         da=(da1<da)*da1+(da1>=da)*da
                 endif
                 if(ma!=2)
                         da=(da2<db)*da2+(da2>=da)*da
                 endif
                 if(ma!=3)
                         da=(da3<da)*da3+(da3>=da)*da
                 endif
                 if(ma!=4)
                         da=(da4<da)*da4+(da4>=da)*da
                 endif
                 if(ma!=5)
                         da=(da5<da)*da5+(da5>=da)*da
                 endif
                 if(mb!=1)
                         db=(db1<db)*db1+(db1>=db)*db
                 endif
                 if(mb!=2)
                         db=(db2<db)*db2+(db2>=db)*db
                 endif
                 if(mb!=3)
                         db=(db3<db)*db3+(db3>=db)*db
                 endif
                 if(mb!=4)
                         db=(db4<db)*db4+(db4>=db)*db
                 endif
                 if(mb!=5)
                         db=(db5<db)*db5+(db5>=db)*db
                 endif
                 if(ma==1)
                         r1=r1+da
                 elseif(ma==2)
                         r2=r2+da
                 elseif(ma==3)
                         r3=r3+da
                 elseif(ma==4)
                         r4=r4+da
                 elseif(ma==5)
                         r5=r5+da
                 endif
                 if(mb==1)
                         r1=r1+db
                 elseif(mb==2)
                         r2=r2+db
                 elseif(mb==3)
                         r3=r3+db
                 elseif(mb==4)
                         r4=r4+db
                 elseif(mb==5)
                         r5=r5+db
                 endif
         endif
endif
rr1=sqr(r1)
rr2=sqr(r2)
rr3=sqr(r3)
rr4=sqr(r4)
rr5=sqr(r5)
z=pixel:
inside=0
if(|z-p1|<rr1)
         z=r1*conj(r1/(z-p1))+p1
         inside=1
elseif(|z-p2|<rr2)
         z=r2*conj(r2/(z-p2))+p2
         inside=1
elseif(|z-p3|<rr3)
         z=r3*conj(r3/(z-p3))+p3
         inside=1
elseif(|z-p4|<rr4)
         z=r4*conj(r4/(z-p4))+p4
         inside=1
elseif(|z-p5|<rr5)
         z=r5*conj(r5/(z-p5))+p5
         inside=1
endif
inside}

-------------------------------------------------------------------------------------------------

The problem is that the order in which pixels are calculated depends 
critically on the drawing method used. The following formula SHOULD NOT work:

swatch     { ; Morgan L. Owens <packrat@nznet.gen.nz>
             ; Sat, 25 May 2002 20:27:24
   z=ig
   ig=ig+1
   if(ig==256)
      ig=0
   endif
   :
   z=z-1
   z
}

And it won't if you use any drawing method other than (1) or (b).

-------------------------------------------------------------------------------------------------

This derives from a problem by Appollonius: Given three circles in the 
plane, find a fourth circle tangent to the given three. There are eight 
solutions in general, depending on whether the given circles are to be 
inside or outside the tangent circle; this one just picks the solution 
where all three are outside (I'll use imag(p5) to make this configurable 
later, and figure out which circles need to have negative radii).

Every circle will be tangent to at least one other, and one of the circles 
will be tangent to the other three - further tangencies are the 
responsibility of the user.

This was a situation where I wish I had Mathematica to do the algebra for 
me. I banged my head for several hours, got stuck, went to 
http://mathworld.wolfram.com/, found that I'd pretty much done that, went 
back, realised what I was missing (two lines), fixed a coupla typos and the 
rest fell into place. Exercise for the reader: Solve the Appollonian 
problem yourself, without peeking at the code or reference materials.

Parameters:
real(p1), imag(p1), real(p2); centre and radius of first circle
imag(p2), real(p3), imag(p3); centre and radius of second circle
real(p4), imag(p4), real(p5); centre and radius of third circle

Like I said, imag(p5) will be getting a use soon. I might also do some 
extra checking to cope with collinear given circles (i.e., the tangent 
circle becomes a straight line). I take no responsibility if the first 
three circles overlap - though the tangent circle is still constructed, I 
can only invert in one circle at a time, and which one is used in regions 
of overlap is pretty arbitrary.

4ApolloKlein1   { ; Morgan L. Owens  <packrat@nznet.gen.nz>
                  ; Mon, 27 May 2002 20:04:57

ax=real(p1),ay=imag(p1),ar=real(p2)
bx=imag(p2),by=real(p3),br=imag(p3)
cx=real(p4),cy=imag(p4),cr=real(p5)

h=sqr(ax)+sqr(ay)-sqr(ar)
a=2*(ar-br),b=2*(ax-bx),c=2*(ay-by),d=h-(sqr(bx)+sqr(by)-sqr(br))
e=2*(ar-cr),f=2*(ax-cx),g=2*(ay-cy),h=h-(sqr(cx)+sqr(cy)-sqr(cr))

l=(b*g-c*f)
i=(d*g-c*h)/l,j=(a*g-c*e)/l,k=(b*h-d*f)/l,l=(b*e-a*f)/l

m=2*(1-sqr(l)-sqr(l))
n=2*(cr+(i-cx)*j+(k-cy)*l)
o=2*(cr^2-sqr(i-cx)-sqr(k-cy))

r=sqrt(sqr(n)-m*o)
r1=(-n-r)/m
r2=(-n+r)/m

if(imag(r1)==0 && real(r1)>0)
         r=r1
else
         r=r2
endif

x=i-j*r
y=k-l*r

ap=real(ax)+flip(ay)
bp=real(bx)+flip(by)
cp=real(cx)+flip(cy)
p=real(x)+flip(y)

arr=sqr(ar)
brr=sqr(br)
crr=sqr(cr)
rr=sqr(r)

z=pixel:
:
inside=0
if(|z-ap|<arr)
         z=ar*conj(ar/(z-ap))+ap
         inside=1
elseif(|z-bp|<brr)
         z=br*conj(br/(z-bp))+bp
         inside=1
elseif(|z-cp|<crr)
         z=cr*conj(cr/(z-cp))+cp
         inside=1
elseif(|z-p|<rr)
         z=r*conj(r/(z-p))+p
         inside=1
endif
inside}

-------------------------------------------------------------------------------------------------

quarterblend_pJJJJ     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Thu, 30 May 2002 00:58:26
                         ; Quarterblend Julias
z=pixel
if(imag(pixel)>0)
        if(real(pixel)<0)
                c=p1
        else
                c=p2
        endif
else
        if(real(pixel)>0)
                c=p3
        else
                c=p4
        endif
endif
:
z=sqr(z)+c
|z|<=4}

Now we want to index this.  In the same way that Julia sets get indexed by the Mandelbrot:

MLO_Julia {
z = pixel, c = p1:
z = sqr(z) + c, |z| <= 4
}

MLO_Mandelbrot-1 {
z = pixel, c = pixel:
z = sqr(z) + c, |z| <= 4
}

It should really read:

MLO_Mandelbrot-2 {
z = 0, c = pixel:
z = sqr(z) + c, |z| <= 4
}

So now we can index the quarterblend_pJJJJ formula.

quarterblend_pMJJJ     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Thu, 30 May 2002 00:58:26
                         ; Quarterblend Julias
z=pixel
if(imag(pixel)>0)
        if(real(pixel)<0)
                c=pixel
        else
                c=p2
        endif
else
        if(real(pixel)>0)
                c=p3
        else
                c=p4
        endif
endif
:
z=sqr(z)+c
|z|<=4}

or instead index p1 and p3 simultaneously:

quarterblend_pMJMJ     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Thu, 30 May 2002 00:58:26
                         ; Quarterblend Julias
z=pixel
if(imag(pixel)>0)
        if(real(pixel)<0)
                c=pixel
        else
                c=p2
        endif
else
        if(real(pixel)>0)
                c=pixel
        else
                c=p4
        endif
endif
:
z=sqr(z)+c
|z|<=4}

quarterblend_pMMMM     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Thu, 30 May 2002 00:58:26
                         ; Quarterblends
z=pixel
if(imag(pixel)>0)
        if(real(pixel)<0)
                c=pixel
        else
                c=pixel
        endif
else
        if(real(pixel)>0)
                c=pixel
        else
                c=pixel
        endif
endif
:
z=sqr(z)+c
|z|<=4}

quarterblend_pMMMM     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Thu, 30 May 2002 00:58:26
                         ; Quarterblends
z=pixel
c=pixel
:
z=sqr(z)+c
|z|<=4}

quarterblend_iJJJJ{
z=pixel:
if(imag(z)>0)
        if(real(z)<0)
                c=p1
        else
                c=p2
        endif
else
        if(real(z)>0)
                c=p3
        else
                c=p4
        endif
endif
z=sqr(z)+c
|z|<=4}


quarterblend_iMJJJ     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Thu, 30 May 2002 00:58:26
                         ; Quarterblends
z=pixel:
if(imag(z)>0)
        if(real(z)<0)
                c=pixel
        else
                c=p2
        endif
else
        if(real(z)>0)
                c=p3
        else
                c=p4
        endif
endif
z=sqr(z)+c
|z|<=4}

quarterblend_iMJMJ     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Thu, 30 May 2002 00:58:26
                         ; Quarterblends
z=pixel:
if(imag(z)>0)
        if(real(z)<0)
                c=pixel
        else
                c=p2
        endif
else
        if(real(z)>0)
                c=pixel
        else
                c=p4
        endif
endif
z=sqr(z)+c
|z|<=4}

quarterblend_iMMMM     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Thu, 30 May 2002 00:58:26
                         ; Quarterblends
z=pixel:
c=pixel
z=sqr(z)+c
|z|<=4}

-------------------------------------------------------------------------------------------------

ChaoticDualist1M      { ; Morgan L. Owens <packrat@nznet.gen.nz>
                        ; Sun, 07 Jul 2002 02:06:16
bailout=pixel
z=pixel:
x=real(z)
y=imag(z)
z=1-abs(x-y)+flip(1-abs(x+y-1))
|z|<=|bailout|}

-------------------------------------------------------------------------------------------------

LyapunovMandel        { ; Morgan L. Owens <packrat@nznet.gen.nz>
                        ; Thu, 25 Jul 2002 20:49:19
  narg=real(p2)
  nmag=imag(p2)
  bailout=4*(real(p3)==0)+real(p3)*(real(p3)!=0)
  z0=c0=pixel
  z1=c1=pixel+nmag*(cos(narg)+(0,1)*sin(narg))
:
  z0=z0*z0+c0
  z1=z1*z1+c1
  cabs(z0-z1)<bailout
}

LyapunovJulia         { ; Morgan L. Owens <packrat@nznet.gen.nz>
                        ; Thu, 25 Jul 2002 20:49:19
  narg=real(p2)
  nmag=imag(p2)
  perturb=nmag*(cos(narg)+(0,1)*sin(narg))
  bailout=4*(real(p3)==0)+real(p3)*(real(p3)!=0)
  z0=pixel
  c0=p1
  z1=z0+perturb
  c1=c0+perturb
:
  z0=z0*z0+c0
  z1=z1*z1+c1
  cabs(z0-z1)<bailout
}

-------------------------------------------------------------------------------------------------

SimplePendulumG       { ; Morgan L. Owens <packrat@nznet.gen.nz>
                        ; Tue, 06 Aug 2002 14:48:54
  pi2=Pi+Pi
  bailout=real(p2)+4
  dt=real(p1)
  z=pixel:
  x=real(z)
  y=imag(z)
  z=x+y*dt+flip(y+fn1(pi2*x)*dt)
  |z|<=bailout
}


SimplePendulum(Origin) { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Tue, 06 Aug 2002 14:48:54
  pi2=Pi+Pi
  bailout=real(p2)+4
  dt=real(p1)
  z=pixel:
  x=real(z)
  y=imag(z)
  z=x+y*dt+flip(y+sin(pi2*x)*dt)
  |z|<=bailout
}

-------------------------------------------------------------------------------------------------

D3_Man                 { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Wed, 11 Dec 2002 15:07:25
c1=real(pixel),c2=imag(pixel),c3=0
z1=z2=z3=0:
nz1=z1*z1+z2*z3+z3*z2+c1
nz2=z1*z2+z2*z1+z3*z3+c2
nz3=z1*z3+z2*z2+z3*z1+c3
z1=nz1,z2=nz2,z3=nz3
z=nz1+flip(nz2)
|z-pixel|<100
}

D3_Jul                 { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Sun, 19 Jan 2003 18:54:47
z1=real(pixel),z2=imag(pixel),z3=0
c1=real(p1),c2=imag(p1),c3=real(p2):
nz1=z1*z1+z2*z3+z3*z2+c1
nz2=z1*z2+z2*z1+z3*z3+c2
nz3=z1*z3+z2*z2+z3*z1+c3
z1=nz1,z2=nz2,z3=nz3
z=nz1+flip(nz2)
|z-pixel| < 100
}

-------------------------------------------------------------------------------------------------

distortpendulumMG      { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Tue, 14 Jan 2003 19:54:33
  bailout=4
  dt=real(p1)
  a=imag(p1)
  b=real(pixel)
  c=imag(pixel)
  time=0
  z=pixel:
  x=real(z)
  y=imag(z)
  z=x+dt*y+flip(y+(dt*fn1(b*x-c*time)-x)*a)
  time=time+dt
  |z|<=bailout
}

HenonQuadmapJulGen   { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Tue, 14 Jan 2003 19:54:33
  bailout=real(p2)+4
  c=p1
  d=1-c
  z=pixel:
  x=real(z)
  nx=c*x-imag(z)-d*fn1(x)
  z=nx+flip(x-c*nx+d*fn2(nx))
  |z|<=bailout
}

Ca03-19   { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Tue, 14 Jan 2003 19:54:33
          ; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
   a=p2, b=(a+a)*(a+1), c=(a+a+4)/3
   t=p1, bailout=4, z=pixel:
   x=real(z), y=imag(z)
   y=y+t*(b*x*(c*x*x-1))
   x=x-t*(b*y*(c*y*y-1))
   z=x+flip(y)
   |z|<=bailout
}

C03-15   { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Tue, 14 Jan 2003 19:54:33
         ; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = zC02-C01
   r=p1, bailout=real(p2)/10000, z=pixel:
   zz=z*z
   f=z*(zz-3)
   fd=3*zz-3
   oz=z
   z=z-r*f/fd
   bailout<=sqrt(|(|z|)-(|oz|)|)
}

P07-07 (XYAxis)   { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Tue, 14 Jan 2003 19:54:33
                  ; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = (13zP06-6P05)/7
   bailout=real(p2)/10000, z=pixel:
   zz=z*z
   f=z*(3*zz*(11*zz*(13*zz-21)+105)-35)/16
   fd=(21*zz*(11*zz*(13*zz-15)+45)-35)/16
   oz=z
   w=z-f/fd
   ww=w*w
   fw=w*(3*ww*(11*ww*(13*ww-21)+105)-35)/16
   z=w-fw/fd
   bailout<=|z-oz|
}

quarterblend_iJJJJ   { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Tue, 14 Jan 2003 19:54:33
  z=pixel:
  if(imag(z)>0)
     if(real(z)<0)
        c=p1
     else
        c=p2
     endif
  else
     if(real(z)>0)
        c=p3
     else
        c=p4
     endif
  endif
  z=sqr(z)+c
  |z|<=4
}


threecircles2   { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Tue, 14 Jan 2003 19:54:33
; three circles located at the cube roots of 1
; real(p1) specifies their common radius - note that they're tangent to
;          each other when real(p1)=sqrt(3)/2.
;
; p2 specifies a point (the "radiant") from which test particles are
; launched. More precisely, every point in the complex plane emits a
; test particle, which travels directly away from p2
;

; First, we need to establish the centres of the three circles.
centre1=1
centre2=exp(flip(2*pi/3))
centre3=sqr(centre2) ; Reckon this is faster than another exp()?

rho=real(p1)

direction=pixel-p2
z = pixel

trapped=(|z-centre1|<sqr(rho) || |z-centre2|<sqr(rho) || |z-centre3|<sqr(rho))

; For efficiency, we see if z is _inside_ a circle. If it is, we can
; predict how long it will take to escape :-)
; Note also that since Fractint's || operator is nonstandard, we use
; sqr(rho) instead of rho.

: ; End of initialisation section. Now beginning the loop.

if(trapped)
   escaped=0 ; We'll continue to iterate, though - so that the insides of
             ; the circles really are classified as "inside"
else ; Let's get dangerous

; Right, we have a ray that passes through the point z in the direction
; theta. Finding the intersections (if any) of this ray with a circle
; involves finding the solutions of a certain quadratic with real
; coefficients. If the quadratic has two real roots, then the ray cuts the
; circle. If it has one real root (necessarily of multiplicity two) then
; the ray is tangent to the circle. And if both roots are complex, then
; the ray misses the circle completely.

   escaped=1 ; As far as we know at the moment.

   hit=9999 ; Meaningless when escaped==1

 ;Examining circle 1

   coefA = |direction|
   coefB = real(z-centre1)*real(direction)+imag(z-centre1)*imag(direction)
   coefC = |z-centre1|-sqr(rho)

   discriminant=coefB*coefB-coefA*coefC

 ; If discriminant==0, then the ray is tangent to circle 1 - we won't
 ; count this as a "reflection"
 ; If discriminant<0, then the ray misses circle 1 completely.

   if(discriminant>0) ; Two solutions
     t1=(-coefB-sqrt(discriminant))/coefA
     t2=(-coefB+sqrt(discriminant))/coefA

     if(t1>0) ; If t1<0 then this hit is actually behind us
       escaped=0 ; Sorry, not this time.
       hit=t1
       target=1 ; The first circle
     endif
     if(t2>0 && t2<t1) ; Hits t2 before hitting t1
       escaped=0
       hit=t2
       target=1
     endif
   endif

 ; Circle 2
 ; coefA = |direction| is already known
   coefB = real(z-centre2)*real(direction)+imag(z-centre2)*imag(direction)
   coefC = |z-centre2|-sqr(rho)
   discriminant=coefB*coefB-coefA*coefC
   if(discriminant>0)
     t1=(-coefB-sqrt(discriminant))/coefA
     t2=(-coefB+sqrt(discriminant))/coefA
     if(t1>0 && t1<hit)
       escaped=0
       hit=t1
       target=2
     endif
     if(t2>0 && t2<t1 && t2<hit)
       escaped=0
       hit=t2
       target=2
     endif
   endif

 ; Circle 3
   coefB = real(z-centre3)*real(direction)+imag(z-centre3)*imag(direction)
   coefC = |z-centre3|-sqr(rho)
   discriminant=coefB*coefB-coefA*coefC
   if(discriminant>0)
     t1=(-coefB-sqrt(discriminant))/coefA
     t2=(-coefB+sqrt(discriminant))/coefA
     if(t1>0 && t1<hit)
       escaped=0
       hit=t1
       target=3
     endif
     if(t2>0 && t2<t1 && t2<hit)
       escaped=0
       hit=t2
       target=3
     endif
   endif

; We now know when we hit a circle (hit) and which circle it is (target)
; The hit point is z+direction*hit, the normal at this point is
; z-centre?, which we normalise to a unit vector (un).
;
; We set z to the hit point, and the reflected vector is
; direction-2(direction.un)un
   if(target==1)
    un=(z-centre1)/cabs(z-centre1)
   elseif(target==2)
    un=(z-centre2)/cabs(z-centre2)
   else
    un=(z-centre3)/cabs(z-centre3)
   endif
   r=direction-2*(real(direction)*real(un)+imag(direction)*imag(un))*un
   z=z+direction*hit
   direction=r
endif
;bailout continue until we escape
escaped==0
}


newton_elliptics_4   { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Tue, 14 Jan 2003 19:54:33
  x=real(pixel)
  y=imag(pixel)
  A=real(p1)
  B=imag(p1)
  phi=tan(real(p2))
  t=imag(p2)
  z=x+flip(y)
  :
  oz=z
  x=real(z)
  y=imag(z)
  d=2*y*phi-(3*sqr(x)+A)
  f=(sqr(x)+A)*x+B-sqr(y)
  g=phi*x+t-y
  nx=x-f+2*y*g
  ny=y-phi*f+(3*x^2+A)*g
  z=nx+flip(ny)
  |z-oz|>0.0001
}

Mandelbar(Xaxis)   { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Tue, 14 Jan 2003 19:54:33
  z=pixel:
  z=sqr(conj(z))+pixel
  |z|<=4
}

Julibar(Origin)   { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Tue, 14 Jan 2003 19:54:33
z=pixel:
z=sqr(conj(z))+p1
|z|<=4}

A4Page(XYAxis)   { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Tue, 14 Jan 2003 19:54:33
s=-sqrt(2)
z=pixel:
x=real(z)
y=imag(z)
if(x>0)
        z=s*(flip(conj(z)-1))
else
        z=s*(flip(conj(z)+1))
endif
|z|<=300}

Sc06-05   { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Tue, 14 Jan 2003 19:54:33
          ; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
   r=p1, bailout=real(p2)/10000, z=pixel:
   z2=z*z, z4=z2*z2
   f=((((((72-8*z)*z-192)*z+384)*z-704)*z+768)/(z4*z))
   fd=((((384-72*z)*z-1152)*z+2816)*z-3840)/(z4*z2)
   oz=z
   z=z-r*f/fd
   bailout<=|z-oz|
}

twodnewton_o   { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Tue, 14 Jan 2003 19:54:33
h = real(p1)
m = imag(p1)
z=pixel:
oz=z
x=real(z),y=imag(z)
f=2*x-y-m*(x-x*x)
g=2*y-x-m*(y-y*y)
fx=2-m*(1-2*x)
gy=2-m*(1-2*y)
delta  =(-g-f*gy)/(fx*gy-1)
epsilon=(-f-g*fx)/(fx*gy-1)
nx=x+h*delta
ny=y+h*epsilon
z=nx+flip(ny)
|oz-z|>.001
}

Rossler2Man(XAxis)   { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Tue, 14 Jan 2003 19:54:33
bailout=real(p2)+4
z=p=pixel:
x=real(z)
y=imag(z)
z=abs(sqr(x)-sqr(y))-real(p)+flip((x+x)*y-imag(p))
|z|<=bailout}

PokornyJul(Origin)   { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Tue, 14 Jan 2003 19:54:33
bailout=4
c=p1
z=pixel:
z=1/(sqr(z)+c)
|z|<=bailout}

P03-24   { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Tue, 14 Jan 2003 19:54:33
         ; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ( 5zP02-2P01)/3
   t=p1, bailout=4, z=fn3(pixel):
   x=real(z), y=imag(z)
   y=y+t*(fn1(x*(5*x*x-3)/2))
   x=x-t*(fn2(y*(5*y*y-3)/2))
   z=x+flip(y)
   |z|<=bailout
}

T03-26   { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Tue, 14 Jan 2003 19:54:33
         ; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2zT02-T01
   t=p1, bailout=real(p3), z=pixel, v=imag(p3):
   x=real(z), y=imag(z)
   Tx=(fn1(x*(4*x*x-3)))
   Ty=(fn1(y*(4*y*y-3)))
   x=x-t*Ty, y=y+t*Tx
   w=fn1(x+flip(y))
   z=fn3(v/fn2(w*w))+p2
   |z|<=bailout
}

H04-17   { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Tue, 14 Jan 2003 19:54:33
         ; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(xH(3)-3H(2))
   z=pixel, oz=0
   fz=12
   zt=fn1(z)+p1:
   foz=fz
   zz=z*z
   fz=4*(4*zz*(zz-3)+3)
   z=z-p2*fz*(z-oz)/(fz-foz)
   oz=zt
   zt=fn2(z)
   |fz|>=0.0001
}

Ca10-05   { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Tue, 14 Jan 2003 19:54:33
          ; V.1.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
   a=p1
   b1=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
   c1=15*(a+5)
   d1=2*(a+6)
   e1=a*(a+15)+56
   f1=2*(a+9)/45
   g1=14*(2*a+13)/5
   b2=a*(a*(a*(a*(a*(a+15)+85)+225)+274)+120)/12762
   e2=(a+9)/9
   f2=21*(2*a+13)/5
   bailout=real(p2)/10000, z=pixel:
   zz=z*z
   f=b1*(c1*zz*(d1*zz*(81*zz*(e1*zz*(f1*zz-1)+g1)-1418)+2127)-31903)
   fd=b2*z*(d1*zz*(162*zz*(e1*zz*(e2*zz-2)+f2)-2881)+2127)
   oz=z
   z=z-f/fd
   bailout<=|z-oz|
}

-------------------------------------------------------------------------------------------------

gaussian_distj     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Sat, 25 Jan 2003 00:23:32
        if(real(p4)==0)
                bailout=100
        else
                bailout=real(p4)
        endif
        sigma = real(p1)
        o = imag(p1)
        c1 = 2*sqr(sigma)
        z = pixel, c = p3/sqrt(pi*c1):
        z = c*exp(-sqr(z-o)/c1)
        |z|<bailout
}

gaussian_distm (XAxis)     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Sat, 25 Jan 2003 00:23:32
        if(real(p4)==0)
                bailout=100
        else
                bailout=real(p4)
        endif
        sigma = real(p1)
        o = imag(p1)
        c1 = 2*sqr(sigma)
        z = o, c = pixel/sqrt(pi*c1)
        :
        z = c*exp(-sqr(z-o)/c1)
        |z|<bailout
}

exponential_distj     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Sat, 25 Jan 2003 00:23:32
        if(real(p4)==0)
                bailout=100
        else
                bailout=real(p4)
        endif
        mu = real(p1)
        o = imag(p1)
        c1 = mu
        z = pixel, c = p3/c1:
        z = c*exp((o-z)/c1)
        |z|<bailout
}

exponential_distm (XAxis)     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Sat, 25 Jan 2003 00:23:32
        if(real(p4)==0)
                bailout=100
        else
                bailout=real(p4)
        endif
        mu = real(p1)
        o = imag(p1)
        c1 = mu
        z = 100, c = pixel/c1:
        z = c*exp((o-z)/c1)
        |z|<bailout
}

laplace_distj     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Sat, 25 Jan 2003 00:23:32
        if(real(p4)==0)
                bailout=100
        else
                bailout=real(p4)
        endif
        a = real(p1)
        o = imag(p1)
        z = pixel, c = p3*a/2:
        z = c*exp(-abs((z-o)/a))
        |z|<bailout
}

laplace_distm (XAxis)     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Sat, 25 Jan 2003 00:23:32
        if(real(p4)==0)
                bailout=100
        else
                bailout=real(p4)
        endif
        a = real(p1)
        o = imag(p1)
        z = o, c = pixel*a/2:
        z = c*exp(-abs((z-o)/a))
        |z|<bailout
}

cauchy_distj     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Sat, 25 Jan 2003 00:23:32
        if(real(p4)==0)
                bailout=100
        else
                bailout=real(p4)
        endif
        a = real(p1)
        o = imag(p1)
        z = pixel, c = p3/(a*pi):
        z = c/(1+sqr((z-o)/a))
        |z|<bailout
}

cauchy_distm (XAxis)     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Sat, 25 Jan 2003 00:23:32
        if(real(p4)==0)
                bailout=100
        else
                bailout=real(p4)
        endif
        a = real(p1)
        o = imag(p1)
        z = o, c = pixel/(a*pi):
        z = c/(1+sqr((z-o)/a))
        |z|<bailout
}

rayleigh_distj     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Sat, 25 Jan 2003 00:23:32
        if(real(p4)==0)
                bailout=100
        else
                bailout=real(p4)
        endif
        sigma = real(p1)
        o = imag(p1)
        c1 = sqr(sigma)
        c2 = -2*c1
        z = pixel, c = p3/c1:
        z = z-o
        z = c*z*exp(sqr(z)/c2)
        |z|<bailout
}

rayleigh_distm (XAxis)     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Sat, 25 Jan 2003 00:23:32
        if(real(p4)==0)
                bailout=100
        else
                bailout=real(p4)
        endif
        sigma = real(p1)
        o = imag(p1)
        c1 = sqr(sigma)
        c2 = -2*c1
        z = o, c = pixel/c1:
        z = z-o
        z = c*z*exp(sqr(z)/c2)
        |z|<bailout
}

rayleightail_distj     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Sat, 25 Jan 2003 00:23:32
        if(real(p4)==0)
                bailout=100
        else
                bailout=real(p4)
        endif
        sigma = real(p1)
        a = imag(p1)
        o = real(p2)
        c1 = sqr(sigma)
        c2 = 2*c1
        c3 = sqr(a)
        z = pixel, c = p3/c1:
        z = z - o
        z = c*z*exp((c3-sqr(z))/c2)
        |z|<bailout
}

rayleightail_distm (XAxis)     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Sat, 25 Jan 2003 00:23:32
        if(real(p4)==0)
                bailout=100
        else
                bailout=real(p4)
        endif
        sigma = real(p1)
        a = imag(p1)
        o = real(p2)
        c1 = sqr(sigma)
        c2 = 2*c1
        c3 = sqr(a)
        z = o, c = pixel/c1:
        z = z-o
        z = c*z*exp((c3-sqr(z))/c2)
        |z|<bailout
}

lognormal_distj     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Sat, 25 Jan 2003 00:23:32
        if(real(p4)==0)
                bailout=100
        else
                bailout=real(p4)
        endif
        sigma = real(p1)
        zeta = imag(p1)
        o = real(p2)
        c1 = 2*sqr(sigma)
        z = pixel, c = p3/sqrt(pi*c1):
        z = z-o
        z = c*exp(-sqr(log(z) - zeta)/c1)/z
        |z|<bailout
}

lognormal_distm (XAxis)     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Sat, 25 Jan 2003 00:23:32
        if(real(p4)==0)
                bailout=100
        else
                bailout=real(p4)
        endif
        sigma = real(p1)
        zeta = imag(p1)
        o = real(p2)
        c1 = sqr(sigma)
        c2 = 2*c1
        z = exp(zeta-c1)+o, c = pixel/sqrt(pi*c2):
        z = z-o
        z = c*exp(-sqr(log(z) - zeta)/c2)/z
        |z|<bailout
}

logistic_distj     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Sat, 25 Jan 2003 00:23:32
        if(real(p4)==0)
                bailout=100
        else
                bailout=real(p4)
        endif
        a = real(p1)
        o = imag(p1)
        z=pixel, c=p3:
        z = z-o
        z = c*exp(-z/a)/(z*sqr(1+exp(-z/a)))
        |z|<bailout
}

logistic_distm (XAxis)     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Sat, 25 Jan 2003 00:23:32
        if(real(p4)==0)
                bailout=100
        else
                bailout=real(p4)
        endif
        a = real(p1)
        o = imag(p1)
        z=100, c=pixel:
        z = z-o
        z = c*exp(-z/a)/(z*sqr(1+exp(-z/a)))
        |z|<bailout
}

pareto_jul     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Sat, 25 Jan 2003 00:23:32
        if(real(p4)==0)
                bailout=100
        else
                bailout=real(p4)
        endif
        a = real(p1)
        b = imag(p1)
        o = real(p2)
        c1 = a+1
        z = pixel, c = p3*a/b:
        z = z-o
        z = c/((z/b)^c1)
        |z|<bailout
}

pareto_man (XAxis)     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Sat, 25 Jan 2003 00:23:32
        if(real(p4)==0)
                bailout=100
        else
                bailout=real(p4)
        endif
        a = real(p1)
        b = imag(p1)
        o = real(p2)
        c1 = a+1
        z = 100, c = pixel*a/b:
        z = z-o
        z = c/((z/b)^c1)
        |z|<bailout
}

weibull_distj     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Sat, 25 Jan 2003 00:23:32
        if(real(p4)==0)
                bailout=100
        else
                bailout=real(p4)
        endif
        a = real(p1)
        b = imag(p1)
        o = real(p2)
        c1 = b-1
        z = pixel, c = p3*b/a^b:
        z = z-o
        z = c * z^c1 * exp(-(z/a)^b)
        |z|<bailout
}

weibull_distm (XAxis)     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Sat, 25 Jan 2003 00:23:32
        if(real(p4)==0)
                bailout=100
        else
                bailout=real(p4)
        endif
        a = real(p1)
        b = imag(p1)
        o = real(p2)
        c1 = b-1
        z = o, c = pixel*b/a^b:
        z = z-o
        z = c * z^c1 * exp(-(z/a)^b)
        |z|<bailout
}

gumbel_1_distj     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Sat, 25 Jan 2003 00:23:32
        if(real(p4)==0)
                bailout=100
        else
                bailout=real(p4)
        endif
        a = real(p1)
        b = imag(p1)
        o = real(p2)
        z = pixel, c = p3*a*b:
        z = a*(z-o)
        z = c/exp(b/exp(z)+z)
        |z|<bailout
}

gumbel_1_distm (XAxis)     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Sat, 25 Jan 2003 00:23:32
        if(real(p4)==0)
                bailout=100
        else
                bailout=real(p4)
        endif
        a = real(p1)
        b = imag(p1)
        o = real(p2)
        z = 100, c = pixel*a*b:
        z = a*(z-o)
        z = c/exp(b/exp(z)+z)
        |z|<bailout
}

gumbel_2_distj     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Sat, 25 Jan 2003 00:23:32
        if(real(p4)==0)
                bailout=100
        else
                bailout=real(p4)
        endif
        a = real(p1)
        b = imag(p1)
        o = real(p2)
        c1 = a+1
        z = pixel, c = p3*a*b:
        z = z-o
        z = c/(z^c1*exp(b/z^a))
        |z|<bailout
}


gumbel_2_distm (XAxis)     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Sat, 25 Jan 2003 00:23:32
        if(real(p4)==0)
                bailout=100
        else
                bailout=real(p4)
        endif
        a = real(p1)
        b = imag(p1)
        o = real(p2)
        c1 = a+1
        z = 100, c = pixel*a*b:
        z = z-o
        z = c/(z^c1*exp(b/z^a))
        |z|<bailout
}

geometric_distj     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Sat, 25 Jan 2003 00:23:32
        if(real(p4)==0)
                bailout=100
        else
                bailout=real(p4)
        endif
        p = real(p1)
        o = imag(p1)
        c1 = 1-p
        z = pixel, c = p3*p:
        z = c*c1^(z-o-1)
        |z|<bailout
}

geometric_distm (XAxis)     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Sat, 25 Jan 2003 00:23:32
        if(real(p4)==0)
                bailout=100
        else
                bailout=real(p4)
        endif
        p = real(p1)
        o = imag(p1)
        c1 = 1-p
        z = o+1, c = pixel*p:
        z = c*c1^(z-o-1)
        |z|<bailout
}

-------------------------------------------------------------------------------------------------

Quadraticmap     { ; Morgan L. Owens <packrat@nznet.gen.nz>
                         ; Fri, 31 Jan 2003 21:11:05
bailout=1000000
z=pixel:
x=real(z)
y=imag(z)
nx=ca+(cb+cc*x+cd*y)*x+(ce+cf*y)*y
ny=cg+(ch+ci*x+cj*y)*x+(ck+cl*y)*y
z=nx+flip(ny)
|z|<bailout
}

-------------------------------------------------------------------------------------------------

