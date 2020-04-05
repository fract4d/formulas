; lefto_97.frm, the required formulas for lefto_97.par compilation
; compiled by Les St Clair December 1997

acc_man_mod {; Modified Sylvie Gallet formula
             ; Modified acceleration_man.frm (generalized by Les St Clair)
             ; use fn1=cabs, fn2=abs for default behaviour
             ; set p1=0 and p2=0 for default behaviour
  z2 = r = 0:
  l = r, z = z2
  z1 = z*z + pixel +p1
  vel1 = z1 - z
  z2 = z1*z1 + pixel +p2
  vel2 = z2 - z1
  acc = vel2 - vel1
  r = fn1(acc)
  r < 4 && fn2(l - r) >= 0.001
}

acceleration_man {
  z2 = r = 0:
  l = r, z = z2
  z1 = z*z + pixel
  vel1 = z1 - z
  z2 = z1*z1 + pixel
  vel2 = z2 - z1
  acc = vel2 - vel1
  r = cabs(acc)
  r < 4 && abs(l - r) >= 0.001
}

BJ-SG8-1403 { ; Modified Sylvie Gallet frm by Brian E. Jones
                  ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
                  ; Requires periodicity = 0 and decomp = 256
                  ; 0 < p1 <= 1
   z = 0 , c = zn = pixel , zmin = p1 , k = flip(2*pi/zmin) :
   zn = zn*zn + c , znc = cabs(zn)
   IF (znc < zmin)
      zmin = (znc/p2)*fn1(zn) , z = exp(zmin*k)
   ENDIF
   znc <= 4
}

boring {;Candidate for contest
	;p2 = bailout value
z = p1
c1 = c2 = c3 = pixel
bailout = real(p2):
	z = z ^ 3 - c1 * z ^ 2 + c2 * z + c3
		|z| <= bailout
}

carr2821 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; Converted to if.else by Sylvie Gallet and George Martin 3/97
          ; passes=1 needs to be used with this PHC formula.
   pixinv = 0.1/pixel
   p9 = 0.9*pixinv
   imagp1 = imag(p1)
   imagp2 = imag(p2)
   IF (whitesq)
      z = zorig = pixel - conj(pixinv)
      c = pixel - flip(pixinv) - conj(0.01*pixinv) - p9
      mz = |z|
   ELSE
      c = flip(pixinv) + conj(0.01*pixinv) - pixel - p9
      z = zorig = conj(pixinv) - pixel
      mz = |z|
   ENDIF
   bailout = 16
   iter = 0
   :
   IF (iter==p1)
      z = mz = 0
      c = 1.5*zorig^1.2 - p9
   ELSEIF (iter==imagp1)
      z = mz = 0
      c = 2.25*conj(zorig) - p9
   ELSEIF (iter==p2)
      z = mz = 0
      c = 3.375*flip(zorig) - p9
   ELSEIF (iter==imagp2)
      z = mz = 0
      c = 5.0625*flip(zorig) - p9
   ENDIF
   z = mz*0.2 + z*z + c
   mz = |z|
   iter = iter + 1
   mz <= bailout
}

Color11 { ; New coloring technique #11 (ring trap) by DM Jones
	; outside = decomp: angle at closest approach to ring at p1
	; p2r: unused
	; p2i: ring diameter
	; p3: bailout
	z = 0, c = pixel, closest = 100000, point = 0, done = 2,
	  range=imag(p2)*imag(p2):
	z = fn1(z) + c
	done = done + 1
	q = abs(|z-p1| - range)
	IF (q < closest)
	  point = z
	  closest = q
	ENDIF
	IF (|z| > p3)
	  z = point
	  done = -1
	ENDIF
	done >= 0
}

contest4  {; Kerry Mitchell
      ; slightly optimized version of Contest formula
         z=p1, c=pixel:
         z2=sqr(z), z=z*z2+c*(1+z-z2), |z| <= 4
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

dmj-Mand-Cr2-Dec { ; outside = decomp: angle of closest z[n] to ring at p1
	; This is the angle relative to the origin.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for ring radius.
	  p3 = (0,1) + real(p3)		; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	radius = sqr(imag(p3))		; Calculate radius squared.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
	d = abs((|z2|) - radius)	; Compute ring distance squared.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > 128)			; Point exceeds bailout.
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Cir-Itr-I { ; outside = real: n of closest z[n] to ring at p1

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for ring radius.
	  p3 = (0,1) + real(p3)		; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 1, c = pixel:		; NovaM initialization.
	zsquared = sqr(z)
	zcubed = zsquared * z
	zold = z
	z = z-(zcubed-1)/(3*zsquared)+c	; NovaM calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
	d = abs(cabs(z2) - imag(p3))	; Compute ring distance.
	IF (d < closest)		; Closer than previous value.
	  point = done			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < 0.0000001 || done >= maxit) ; Point bailout / inside.
	  z = point - done		; Return iteration of closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Cr2-Ang { ; outside = decomp: angle of closest z[n] to ring at p1
	; This is the angle relative to p1.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for ring radius.
	  p3 = (0,1) + real(p3)		; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	radius = sqr(imag(p3))		; Calculate radius squared.
	
	z = 1, c = pixel:		; NovaM initialization.
	zsquared = sqr(z)
	zcubed = zsquared * z
	zold = z
	z = z-(zcubed-1)/(3*zsquared)+c	; NovaM calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
	d = abs((|z2|) - radius)	; Compute ring distance squared.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < 0.0000001)	; Point exceeds bailout.
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

Gallet-6-01 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z) , y = imag(z) :
   x1 = x - p1*fn1(y + p2*fn2(x - p3*fn3(y)))
   y1 = y - p1*fn1(x + p2*fn2(y - p3*fn3(x)))
   x = x1 , y = y1
   z = x + flip(y)
    |z| <= 32
}

Gallet-6-04 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z) , y = imag(z) :
   x1 = x - p1*fn1(y + fn2(p2*x) * fn3(p3*y))
   y1 = y - p1*fn1(x + fn2(p2*y) * fn3(p3*x))
   x = x1 , y = y1
   z = x + flip(y)
    |z| <= 32
}

Gallet-6-05 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z) , y = imag(z) :
   x1 = x - p1*fn1(y * fn2(p2*x) + fn3(p3*y))
   y1 = y - p1*fn1(x * fn2(p2*y) + fn3(p3*x))
   x = x1 , y = y1
   z = x + flip(y)
    |z| <= 32
}

Gallet-7-01 {; Sylvie Gallet [101324,3444], 1996
  j = -0.5 + flip(0.5*sqrt(3)) , j2 = j*j
  z = pixel :
   x = z*j , y = z*j2
   x1 = x - p1*fn1(y + fn2(p2*z))
   y1 = y - p1*fn1(z + fn2(p2*x))
   z1 = z - p1*fn1(x + fn2(p2*y))
   z = z1 + x1*j + y1*j2
    |z| <= 32
}

Gallet-8-17 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
              ; Requires periodicity = 0 and decomp = 256
              ; p1 = parameter for a Julia set (0 for the Mandelbrot set)
              ; 0 < p2
   IF (p1 || imag(p1))
      c = p1
   ELSE
      c = pixel
   ENDIF
   z = -1 , zn = pixel , zmin = abs(real(p2))
   k = flip(pi/zmin) , odd = 0 :
   zn = zn*zn + c , znc = abs(real(zn)) + abs(imag(zn))
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
}

Gallet-8-18 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
              ; Requires periodicity = 0
              ; 0 < real(p3) < imag(p3)
   z = pixel , iter = 0 , ex1 = p1-1 , ex2 = p2-1
   c = 1 , it = imag(p3) - real(p3) , p = (p2-p1)/it :
   IF (iter < p3)
      zex = z^ex1 , n = zex*z - 1 , d = p1*zex , z = z - n/d
   ELSEIF (iter > imag(p3))
      zex = z^ex2 , n = zex*z - 1 , d = p2*zex , z = z - n/d
   ELSE
      pc = c*p , ex = ex1 + pc ,
      zex = z^ex , n = zex*z - 1 , d = pc*zex , z = z - n/d
      c = c+1
   ENDIF
   iter = iter + 1
   |n| >= 0.0000000001
}

Gallet-9-02 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Aug 1997
   z1 = c = pixel , mz1 = cabs(fn2(z1)) , k = real(p1)*mz1
   bailout = real(p2) , z = imag(p1) :
   z1 = z1*z1 + c
   z1 = fn1(real(z1)) + flip(imag(z1)) , mz1 = cabs(z1)
   if (mz1 <= k)
      z1 = (z1 + 1) * p3 , mz1 = cabs(z1)
   endif
   if (mz1 < imag(p1))
      z = z1^imag(p2)
   endif
   mz1 <= bailout
}

Gallet-9-05 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Aug 1997
   z1 = c = pixel , r1 = |real(p1)*z1|
   r2 = imag(p1)*imag(p1)
   bailout = real(p2) , z = 0 :
   z1 = fn1(z1) + c
   mz1 = |z1|
   if (mz1 <= r1)
      z1 = z1 + p3 , mz1 = cabs(z1)
   endif
   if (mz1 < r2)
      z = z1^imag(p2)
   endif
   mz1 <= bailout
}

Gallet-10-01 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Oct 1997
   z1 = c = pixel , mz1 = cabs(fn2(z1)) , k = real(p1)*mz1
   bailout = real(p2) , z = imag(p1) :
   z1 = sqr(sqr(z1) + c) + c
   z1 = fn1(real(z1)) + flip(imag(z1)) , mz1 = cabs(z1)
   if (mz1 <= k)
      z1 = z1 + p3 , mz1 = cabs(z1)
   endif
   if (mz1 < imag(p1))
      z = z1^imag(p2)
   endif
   mz1 <= bailout
   }

jdphc08 {
  z=pixel*whitesq+(pixel+p3)*(whitesq==0)
  p=p1*whitesq+p2*(whitesq==0):
  z=z*z+p
  |z|<4
}

JoWe55c36a { ; from a modified Carr-formula
            ; 6/1997 JoWeber CIS [100424,35]
c=z=p1/pixel:
z1=fn1(z) + c
z=fn2(z1) + p2
|z| <=p3
}

JoWe-SG-8-12c   {; Sylvie Gallet [101324,3444], Mar 1997
                 ; modified by JoWeber 3/1997
                 ; Requires periodicity = 0
  h = sin(pixel), pinv = 1/p1
  bailout = 2*p1, r = real(p2) , ir = imag(p2)
  beta = asin(h/r), alpha = asin(h/(r*ir))
  z = pixel * (((h - sqrt(r*r - h*h) * tan(beta - alpha)) / h) * (h < r) \
      + (h >= r))
  center = round(p1*z) * pinv
  test = cabs(z-center) < 0.25*pinv
  z = cabs(center) + p1 * (test == 0)
  :
  z = z + pinv
  z <= bailout
}

JulibrotInvZ {; Jim Muth
 ;Draws oblique slices of order n inverse Julibrot Figure
 ;P1 defines power of Z, P2 determines center of slice
 ;P3 determines angle of slice
  z=pixel, c=p2+(pixel*p3):
   z=(-z)^p1+c,
    |z| <= 100
}

Lesfrm11 { 
  c=z=pixel:
  z=z+(((fn1(z)-P1)*fn2(z))/fn3(c)),
  |z|<4
}

Lesfrm34 { ; Modified Sylvie Gallet formula
           ; Modified Gallet-5-08
           ; Les St Clair 1997
  z = pixel*pi , x = real(z), y = imag(z):
   x1 = x - p1*fn1(y + 0.5*fn2(y+fn1(x)) + fn3(p2*x) + fn3*fn1(p3*y)) 
   y1 = y - p1*fn1(x + 0.5*fn2(x+fn1(y)) + fn3(p2*y) + fn3*fn1(p3*x))
   x = x1^pi , y = y1^pi
   z = (x + flip(y))^pi
    |z| <= 32
}

Lesfrm35 { ; Modified Sylvie Gallet formula
           ; Modified Gallet-5-08
           ; Les St Clair 1997
  z = pixel*pi , x = real(z), y = imag(z):
   x1 = x - p1*fn1(y + 0.5*fn2(y+fn1(x)) + fn3(p2*x) + fn3*fn1(p3*y)) 
   y1 = y - p1*fn1(x + 0.5*fn2(x+fn1(y)) + fn3(p2*y) + fn3*fn1(p3*x))
   x = x1+p1^pi , y = y1+p2^pi
   z = (x + flip(y))
    |z| <= 32
}

Lesfrm36 { ; Modified Sylvie Gallet formula
           ; Modified Gallet-5-08
           ; Les St Clair 1997
  z = pixel*pi , x = real(z), y = imag(z):
   x1 = x - p1*fn1(y + 0.5*fn2(y+fn1(x)) + fn3(p2*x) + fn3*fn1(p3*y)) 
   y1 = y - p1*fn1(x + 0.5*fn2(x+fn1(y)) + fn3(p2*y) + fn3*fn1(p3*x))
   x = x1*pi*e , y = y1*pi*e
   z = (x + flip(y))*pi*e
     |z| <= 32
}

Lesfrm38 { ; Modified Sylvie Gallet formula
           ; Modified Gallet-5-08
           ; Les St Clair 1997
  z = pixel , x = real(z)*pi, y = imag(z)*pi:
   x1 = x - p1*fn1(y + pi*fn2(y+fn1(x)) + fn3(p2*x) + fn3*fn1(p3*y)\
   +0.33*(flip(y)))
   y1 = y - p1*fn1(x + pi*fn2(x+fn1(y)) + fn3(p2*y) + fn3*fn1(p3*x)\
   +0.33*(cos(x)))
   x = x1+y1 , y = y1*pi
   z = (x + flip(y))
    |z| <= 32
}

Lesfrm42    { ; Modified Sylvie Gallet formula
              ; Modified (generalised) Gallet-8-12
              ; Les St Clair 1997
              ; Requires periodicity = 0
              ; default fn1=cabs, fn2=asin, fn3=sqrt, fn4=tan
  h = fn1(pixel) , pinv = 1/p1
  bailout = 2*p1 , r = real(p2) , ir = imag(p2)
  beta = fn2(h/r) , alpha = fn2(h/(r*ir))
  z = pixel * (((h - fn3(r*r - h*h) * fn4(beta - alpha)) / h) * (h < r) \
      + (h >= r))
  center = round(p1*z) * pinv 
  test = cabs(z-center) < 0.45*pinv
  z = cabs(center) + p1 * (test == 0)
  :
  z = z + pinv
  z=z+h
  z <= bailout
}

Lesfrm43    { ; Modified Sylvie Gallet formula
              ; Modified Gallet-8-12
              ; Les St Clair 1997
  h = fn1(pixel) , pinv = 1/p1
  bailout = 2*p1 , r = real(p2) , ir = imag(p2)
  beta = fn2(h/r) , alpha = fn2(h/(r*ir))
  z = pixel * (((h - fn3(r*r - h*h) * fn4(beta - alpha)) / h) * (h < r) \
      + (h >= r))
  center = round(p1*z) * pinv 
  test = cabs(z-center) < 0.45*pinv
  z = cabs(center) + p1 * (test == 0)
  :
  z = (z*z + pinv)/h
  z <= bailout
}

MandNewt05 {; Jim Muth
z=c=fn1(pixel):
a=z^2+(c-p1)*z-c
b=p2*z^2+c-1
z=z-1*a/b
p3 <= |a|
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

many_man_phc {; Modified Stephen C. Ferguson formula
	      ; adapted for Fractint by Les St Clair, 1997
	      ; phc variation by P. DiGiorgi
  	      ; use imag(p1) to set bailout
    z=0, c1=fn3(pixel), c0=fn4(pixel)
    IF (whitesq)
	v = (c1^p2)/p2
    ELSE
	v = (c0^p2)/p2
    END IF
    n = p3*fn1(fn2(v)):
    	z = z^real(p1) + n
        |z| <= imag(p1)
}

myGallet-8-14 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
                ; modified by Alice Kelley
                ; Requires periodicity = 0 and decomp = 256
                ; 0 < p1 <= 1
   z = 0 , c = zn = pixel , zmin = p1 , k = flip(2*pi/zmin) :
   zn = zn*zn + c^2 , znc = fn1(zn)
   IF (znc < zmin)
      zmin = znc , z = fn2(zmin*k)
   ENDIF
   znc <= 4
}

my_tent_in_mod { ; Modified Sylvie Gallet formula
              ; Modified tent_inside.frm (generalized by Les St Clair)
              ; use fn1,fn2,fn4=abs & fn3=cabs for default behaviour
              ; set p1=0, p2=0.001 for default behaviour
              ; bail out added by Alice Kelley
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
    |r| < 1000000
}

Mytest05  {; Jim Muth
 z=c=pixel, a=real(p1), b=imag(p1):
  z=(((z^a)*(z+b))^p2)^p3+c,
   |z|<=100
}

Mytest08  {; Jim Muth
z=fn1(pixel), a=real(p3),
b=imag(p3), c=a+(b*pixel):
z=(((z^p1)*z)^p2)^(-p2)+c,
|z|<=100
}

Mytest11  {; Jim Muth
z=c=pixel:
z=z^p1+(p2*((z^p3)^(-p3)))+c,
|z|<=100
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

pd_lm_x   { ; Formula by P. DiGiorgi, 7/97
    ; Generalized formula based on Lambda(fn||fn).
    ; Use integers +/- 1 to 8 for real(p3) to control
    ; image symmetry.  Negative values change bailout
    ; criteria from [real(z)] to [real(z) && imag(z)].
    ; Imag(p3) = bailout value.
           z = fn4(pixel)
           test1 = real(p2), test2 = imag(p2)
           sym = abs(real(p3))
           IF (sym == 1)
               z = abs(z)
           ELSEIF (sym == 2)
               z = conj(abs(z))
           ELSEIF (sym == 3)
               z = -abs(z)
           ELSEIF (sym == 4)
               z = conj(-abs(z))
           ELSEIF (sym == 5)
               z = real(z) + flip(abs(imag(z)))
           ELSEIF (sym == 6)
               z = real(z) + flip(-abs(imag(z)))
           ELSEIF (sym == 7)
               z = abs(real(z)) + flip(imag(z))
           ELSEIF (sym == 8)
               z = -abs(real(z)) + flip(imag(z))
           ENDIF
           bailout = imag(p3):
           IF (cabs(z) > test1)
               z = p1*fn1(z)*fn2(1 - z)
           ELSEIF (cabs(z) > test2)
               z = p1*fn1(z)*fn3(1 + z)
           ELSE
               z = p1*fn1(z)*fn2(1 - z)
           ENDIF
           IF (real(p3) >= 0)
               exit = (z <= bailout)
           ELSE
               exit = ((real(z) <= bailout) && (imag(z) <= bailout))
           ENDIF
           exit
}

rfr0a71 {;Rolf Freericks, rfreericks@compuserve.com
    ;requires floating point
    ;try integer for "nice erros"
    ;z=f(z)/f´(z) with f(z)=z^4-z^2-c
z=pixel:
z2=z*z
z3=z*z2
z4=z*z3
z=(z4-z2-p1)/(4*z3-2*z)
|z|>=p2
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

tent_inside {; Sylvie Gallet [101324,3444], Apr 1997
  r = 1, z = 0:
   l = r
   z = z*z + pixel
   UV = (5,5) - abs((5,5) - abs(z))
   r = cabs(UV)
    abs(l-r) >= 0.001 && r < 4
}

tri-fn+fn    { ; Sylvie Gallet <sylvie_gallet@compuserve.com>, May 1997
               ; real(p1) = bailout (1024 recommended)
               ; imag(p1) must be != 0
               ; z=fn1(z) + p2*fn2(z)
               ; use decomp = 256
   z1 = pixel , mz1 = cabs(z1) , summ = iter = 0
   b1 = abs(real(p1)) , f = b1^0.1
   b2 = b1*f , b3 = b2*f , b4 = b3*f , b5 = b4*f , b6 = b5*f
   b7 = b6*f , b8 = b7*f , b9 = b8*f , b10 = b9*f , b11 = b10*f
   iter1 = iter2 = iter3 = iter4 = iter5 = iter6 = iter7       \
         = iter8 = iter9 = iter10 = summ_tot = iter_tot = 0
   k = imag(p1) * (0.0,6.28319530718)
   :
   iter = iter + 1 , za = fn1(z1) , a = cabs(za)
   zb = p2*fn2(z1) , b = cabs(zb)
   z1 = za + zb , mz1 = cabs(z1) , a_b = abs(a - b)
   summ = summ + (mz1 - a_b) / (a+b - a_b)
   IF (mz1 > b1)
    IF (iter1==0)
     iter1 = iter
     iter_tot = iter_tot + iter1 , summ_tot = summ_tot + summ
    ENDIF
    IF (mz1 > b2)
     IF (iter2==0)
      iter2 = iter
      iter_tot = iter_tot + iter2 , summ_tot = summ_tot + summ
     ENDIF
     IF (mz1 > b3)
      IF (iter3==0)
       iter3 = iter
       iter_tot = iter_tot + iter3 , summ_tot = summ_tot + summ
      ENDIF
      IF (mz1 > b4)
       IF (iter4==0)
        iter4 = iter
        iter_tot = iter_tot + iter4 , summ_tot = summ_tot + summ
       ENDIF
       IF (mz1 > b5)
        IF (iter5==0)
         iter5 = iter
         iter_tot = iter_tot + iter5 , summ_tot = summ_tot + summ
        ENDIF
        IF (mz1 > b6)
         IF (iter6==0)
          iter6 = iter
          iter_tot = iter_tot + iter6 , summ_tot = summ_tot + summ
         ENDIF
         IF (mz1 > b7)
          IF (iter7==0)
           iter7 = iter
           iter_tot = iter_tot + iter7 , summ_tot = summ_tot + summ
          ENDIF
          IF (mz1 > b8)
           IF (iter8==0)
            iter8 = iter
            iter_tot = iter_tot + iter8 , summ_tot = summ_tot + summ
           ENDIF
           IF (mz1 > b9)
            IF (iter9==0)
             iter9 = iter
             iter_tot = iter_tot + iter9 , summ_tot = summ_tot + summ
            ENDIF
            IF (mz1 > b10)
             IF (iter10==0)
              iter10 = iter
              iter_tot = iter_tot + iter10 , summ_tot = summ_tot + summ
             ENDIF
             IF (mz1 > b11)
              iter_tot = iter_tot + iter , summ_tot = summ_tot + summ
              z = exp (summ_tot * k / iter_tot)
             ENDIF
            ENDIF
           ENDIF
          ENDIF
         ENDIF
        ENDIF
       ENDIF
      ENDIF
     ENDIF
    ENDIF
   ENDIF
   mz1 <= b11
}

tri-mandel-2m { ; Sylvie Gallet <sylvie_gallet@compuserve.com>, May 1997
               ; Thanks to Kerry Mitchell for the idea!
               ; real(p1) = bailout (1024 recommended)
               ; imag(p1) must be different from 0 (>=1 recommended)
   ; This formula must be used with decomp = 256 and periodicity = 0
   ;
   c = z1 = pixel , b = mz1 = fn1(z1) , summ = iter = 1
   b1 = fn2(real(p1)) , f = b1^0.1
   b2 = b1*f , b3 = b2*f , b4 = b3*f , b5 = b4*f , b6 = b5*f
   b7 = b6*f , b8 = b7*f , b9 = b8*f , b10 = b9*f , b11 = b10*f
   iter1 = iter2 = iter3 = iter4 = iter5 = iter6 = iter7       \
         = iter8 = iter9 = iter10 = summ_tot = iter_tot = 0
   k = imag(p1) * (0.0,6.28319530718)
   :
   iter = iter + 1 , a = mz1 * mz1
   z1 = z1 * z1 + c , mz1 = cabs(z1) , a_b = abs(a - b)
   summ = summ + (mz1 - a_b) / (a+b - a_b)
   IF (mz1 > b1)
    IF (iter1==0)
     iter1 = iter
     iter_tot = iter_tot + iter1 , summ_tot = summ_tot + summ
    ENDIF
    IF (mz1 > b2)
     IF (iter2==0)
      iter2 = iter
      iter_tot = iter_tot + iter2 , summ_tot = summ_tot + summ
     ENDIF
     IF (mz1 > b3)
      IF (iter3==0)
       iter3 = iter
       iter_tot = iter_tot + iter3 , summ_tot = summ_tot + summ
      ENDIF
      IF (mz1 > b4)
       IF (iter4==0)
        iter4 = iter
        iter_tot = iter_tot + iter4 , summ_tot = summ_tot + summ
       ENDIF
       IF (mz1 > b5)
        IF (iter5==0)
         iter5 = iter
         iter_tot = iter_tot + iter5 , summ_tot = summ_tot + summ
        ENDIF
        IF (mz1 > b6)
         IF (iter6==0)
          iter6 = iter
          iter_tot = iter_tot + iter6 , summ_tot = summ_tot + summ
         ENDIF
         IF (mz1 > b7)
          IF (iter7==0)
           iter7 = iter
           iter_tot = iter_tot + iter7 , summ_tot = summ_tot + summ
          ENDIF
          IF (mz1 > b8)
           IF (iter8==0)
            iter8 = iter
            iter_tot = iter_tot + iter8 , summ_tot = summ_tot + summ
           ENDIF
           IF (mz1 > b9)
            IF (iter9==0)
             iter9 = iter
             iter_tot = iter_tot + iter9 , summ_tot = summ_tot + summ
            ENDIF
            IF (mz1 > b10)
             IF (iter10==0)
              iter10 = iter
              iter_tot = iter_tot + iter10 , summ_tot = summ_tot + summ
             ENDIF
             IF (mz1 > b11)
              iter_tot = iter_tot + iter , summ_tot = summ_tot + summ
              z = exp (summ_tot * k / iter_tot)
             ENDIF
            ENDIF
           ENDIF
          ENDIF
         ENDIF
        ENDIF
       ENDIF
      ENDIF
     ENDIF
    ENDIF
   ENDIF
   mz1 <= b11
}
