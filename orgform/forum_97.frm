; Compilation of Fractint formulas required for "forum_97.par"
; Compiled by Les St Clair <les_stclair@compuserve.com>

3DStalks_Julia (ORIGIN) {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1 = the value of complex constant c in the equation
    ;   real(p2) = a factor controlling the width of the stalks
    ;              (this is actually 1/2 the width of the "trap")
    ;   imag(p2) = bailout value for |w|
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    w = pixel
    c = p1
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    ;****************************************************
    ; In the accompanying par file, mnkyface.par,
    ; we have 2 color ranges with 98 colors in each range
    ; for a total of 196 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| < bailout.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    ;****************************************************
    ; Real(p2) controls the width of the stalks.
    ; These values will usually be in the range 0.001 to 0.5
    ;****************************************************
    stalk_width = real(p2)
    index_factor = (colors_in_range - 1) / stalk_width:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be expressed in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This line in the formula is the only one that needs
    ; to be changed for other equations.
    ; This example uses the "magnet2j" equation.
    ;****************************************************
    w=((w^3+3*w*(c-1)+(c-1)*(c-2))/(3*w*w+3*w*(c-2)+(c-1)*(c-2)+1))^2
    ;****************************************************
    ; Find which axis the orbit point is closest to.
    ;****************************************************
    IF (abs(real(w)) <= abs(imag(w)))
        min_dist_to_axis = abs(real(w))
    ELSE
        min_dist_to_axis = abs(imag(w))
    ENDIF
    ;****************************************************
    ; If the orbit point is within stalk_width of an axis,
    ; set z to the index into the colormap and set the bailout flag.
    ; Also, prevent bailout on the first two iterations.
    ;****************************************************
    IF (min_dist_to_axis < stalk_width && iter > 1)
      z = index_factor * min_dist_to_axis + range_num * colors_in_range + 1
      bailout = 1
    ENDIF
    ;****************************************************
    ; Cycle through the range numbers (0 thru num_ranges - 1)
    ; With two color ranges, even iterations use color
    ; range 0, odd iterations use color range 1.
    ;****************************************************
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    ;****************************************************
    ; Since we are using outside=summ, we have to subtract
    ; the number of iterations from z.
    ;****************************************************
    iter = iter + 1
    z = z - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
    bailout == 0  && |w| < imag(p2)
}

5_man{; Stephen C. Ferguson
      ; adapted for Fractint by Les St Clair, 1997
      ; use real p1 to set bailout. try p1=4
z=0, c=pixel:
z=(z*z)+(log(c^5)/5)
|z| <=p1
}

acceleration_man {
   z2 = r = 0 :
   l = r , z = z2
   z1 = z*z + pixel
   vel1 = z1 - z
   z2 = z1*z1 + pixel
   vel2 = z2 - z1
   acc = vel2 - vel1
   r = cabs(acc)
   r < 4 && abs(l - r) >= 0.001
   }

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

BJ-SG8-1403 {; Modified Sylvie Gallet frm by Brian E. Jones
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

Carr2821{;Modified Sylvie Gallet frm. [101324,3444],1996
  ;passes=1 needs to be used with this PHC formula.
  b5=pixel-conj(0.1/pixel)
  b4=pixel-flip(0.1/pixel)-conj(0.001/pixel),
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2,c2=2.25*conj(z),c3=3.375*flip(z),c4=5.0625*flip(z),
  l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
  bailout=16,iter=0:
  t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
  t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
  z=(|z|/5)+z*z+c-0.09/pixel
  iter=iter+1
  |z|<=bailout }

Carr3095(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
pixel=-abs(real(pixel))+flip(imag(pixel)),
b3=conj(0.13/pixel)+flip(0.1/pixel)
b4=(-0.7456,0.2)
b5=flip(cabs(pixel))*cabs(pixel^2)+tanh(0.1/pixel)-sinh(0.1/pixel)-b3
c=whitesq*(b4)-(whitesq==0)*(b4)
z=whitesq*(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+(|c/12|)^2-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75),
iter=iter+1
|z|<=bailout
}

dmj-Mand-Cir-Dec { ; outside = decomp: angle of closest z[n] to ring at p1
                   ; This is the angle relative to the origin.
 
        IF (imag(p2) == 0)                ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)                ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)                ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))        ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)                ; Invalid value for ring radius.
          p3 = (0,1) + real(p3)                ; Substitute a default value.
        ENDIF
        closest = 1e+38                        ; Closest approach so far.
        point = 0                        ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)        ; Compute rotation vector.
        
        z = 0, c = pixel:                ; Mandelbrot initialization.
        z = sqr(z) + c                        ; Mandelbrot calculation.
 
        done = done + 1                        ; Done one more iteration.
        z2 = (z-p1) * r                        ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = abs(cabs(z2) - imag(p3))        ; Compute ring distance.
        IF (d < closest)                ; Closer than previous value.
          point = z                        ; Save that point.
          closest = d                        ; Save the closest approach.
        ENDIF
        IF (|z| > 128)                        ; Point exceeds bailout.
          z = point                        ; Return closest point.
          done = -1                        ; Set flag to force an exit.
        ENDIF
        
        done >= 0                        ; Continue if the flag is clear.
}

dmj-Mand-Hyp-Ang { ; outside = decomp: angle of closest z[n] to hyperbola at p1
                   ; This is the angle relative to p1.
 
        IF (real(p3) == 0)                ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))        ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)                ; Invalid value for bailout.
          p3 = (0,128) + real(p3)        ; Substitute a default value.
        ENDIF
        closest = 1e+38                        ; Closest approach so far.
        point = 0                        ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)        ; Compute rotation vector.
        
        z = 0, c = pixel:                ; Mandelbrot initialization.
        z = sqr(z) + c                        ; Mandelbrot calculation.
 
        done = done + 1                        ; Done one more iteration.
        z2 = (z-p1) * r                        ; Offset to p1 and rotate.
        d = abs(imag(z2) * real(z2))        ; Compute hyperbolic distance.
        IF (d < closest)                ; Closer than previous value.
          point = z                        ; Save that point.
          closest = d                        ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3))                ; Point exceeds bailout.
          z = point - p1                ; Return closest point.
          done = -1                        ; Set flag to force an exit.
        ENDIF
        
        done >= 0                        ; Continue if the flag is clear.
}

dmj-Mand-Hyp-Dec { ; outside = decomp: angle of closest z[n] to hyperbola at p1
                   ; This is the angle relative to the origin.
 
        IF (real(p3) == 0)                ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))        ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)                ; Invalid value for bailout.
          p3 = (0,128) + real(p3)        ; Substitute a default value.
        ENDIF
        closest = 1e+38                        ; Closest approach so far.
        point = 0                        ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)        ; Compute rotation vector.
        
        z = 0, c = pixel:                ; Mandelbrot initialization.
        z = sqr(z) + c                        ; Mandelbrot calculation.
 
        done = done + 1                        ; Done one more iteration.
        z2 = (z-p1) * r                        ; Offset to p1 and rotate.
        d = abs(imag(z2) * real(z2))        ; Compute hyperbolic distance.
        IF (d < closest)                ; Closer than previous value.
          point = z                        ; Save that point.
          closest = d                        ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3))                ; Point exceeds bailout.
          z = point                        ; Return closest point.
          done = -1                        ; Set flag to force an exit.
        ENDIF
        
        done >= 0                        ; Continue if the flag is clear.
}

Gallet-6-08 { ; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z) , y = imag(z) :
   x1 = x - p1*fn1(y + fn2(p2*x) / fn3(p3*y))
   y1 = y - p1*fn1(x + fn2(p2*y) / fn3(p3*x))
   x = x1 , y = y1
   z = x + flip(y)
    |z| <= 1024
  }

Gallet-8-03 { ; Sylvie Gallet [101324,3444], Mar 1997
              ; Requires periodicity = 0
   z = c = zn = pixel :
   zn = zn*zn + c
   test = |zn| < |z|
   z = zn*0.6*test + z*(test==0)
   |zn| <= 4
   }

Gallet-8-12 { ; Sylvie Gallet [101324,3444], Mar 1997
              ; Requires periodicity = 0
  h = cabs(pixel) , pinv = 1/p1
  bailout = 2*p1 , r = real(p2) , ir = imag(p2)
  beta = asin(h/r) , alpha = asin(h/(r*ir))
  z = pixel * (((h - sqrt(r*r - h*h) * tan(beta - alpha)) / h) * (h < r) \
      + (h >= r))
  center = round(p1*z) * pinv
  test = cabs(z-center) < 0.45*pinv
  z = cabs(center) + p1 * (test == 0)
  :
  z = z + pinv
  z <= bailout
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

January_gen  { ; Modified Sylvie Gallet "january" formula
          ; Based on Scott Burns equation solver applied to z^3-1 = 0
          ; Use decomp = 256
          ; generalized by Les St Clair, Dec 1997
          ; use p1(real)=6, p2(real)=10, fn1=abs, fn2=cabs & fn3=exp for
default behaviour
z1 = pixel , iter = 0
a = 23*(0,0.0245436)       ; 23 * 2i pi / 256
mz = fn1(fn2(z1)-1) :
if (mz >= 0.1)
 z2 = z1*z1
 z1 = ((1,-1)*z2*z2 + (7,1)*z1) / (2*z1*z2 + p1)
 mz = fn1(fn2(z1)-1) , cont = 1
 iter = iter + 1
else
 z = fn3((iter + p2*mz)*a)
 cont = 0
endif
cont
}

JDG-7-01c { ; Modified Sylvie Gallet frm
;image and 60 deg rotation w/ palette divided
  j = -0.5 + flip(0.5*sqrt(3)) , j2 = j*j , j3 = conj(flip(j))
  rot = whitesq+j3*j3*(whitesq==0)
  z = pixel*rot:
   x = z*j , y = z*j2
   x1 = x - p1*fn1(y + fn2(p2*z))
   y1 = y - p1*fn1(z + fn2(p2*x))
   z1 = z - p1*fn1(x + fn2(p2*y))
   z = z1 + x1*j + y1*j2
   t1 = (|z| <= 32)
   z = z*t1 + (t1==0)*((z*whitesq+conj(z)*(whitesq==0))*(imag(z)>=0) \
   + (conj(z)*whitesq+z*(whitesq==0))*(imag(z)<0))
   |z| <= 32
  }

jdphc08 {
z=pixel*whitesq+(pixel+p3)*(whitesq==0)
p=p1*whitesq+p2*(whitesq==0):
z=z*z+p
|z|<4
}

JoWe_XY_51m_1 { ; Jo Weber [100424,35] 11/1996
k=(6,4), l = (0,4)
pixel=cos(sin((k-pixel)/(l+pixel)))
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
}

Lesfrm30 { ; Modified Sylvie Gallet formula
           ; Modified Gallet-5-08
           ; Les St Clair 1997
  z = pixel^0.5 , x = real(z) , y = imag(z) :
   x1 = x + p1*fn1(y + fn2(p2*x) + fn3(p3*y))
   y1 = y + p1*fn1(x + fn2(p2*y) + fn3(p3*x))
   x = x1*pi  , y = (y1*pi)/(x*x*x)
   z = x + flip(y) 
    |z| <= 32
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

MandNewt03 {; Jim Muth
z=c=pixel:
a=z^3+(c-1)*z-c
b=p1*z^p2+c-1
z=z-p3*a/b
.0001 <= |a|
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

PD_411  {
        bailout = 4 + imag(p3)
        k = real(p3), z = z1 = pixel
        c = p1*tan(z):
          z1 = fn1(z1^k) + p2*fn2(z1*c)
          x1 = real(z1), y1 = imag(z1)
          z2 = -x1 + flip(y1)
          z = log(z1)*whitesq + log(z2)*(whitesq==0)
            (|real(z)| <= bailout) && (|imag(z)| <= bailout)
        }

pd301_cd    {; Formula by P. DiGiorgi - December 97
                 ; Uses coloring algorithm [Cir-Dst]
                 ; from DMJ-PUB.FRM by Damion M. Jones
                 ; outside = real: closest z[n] to ring at p1
IF (imag(p2) == 0)                        ; Invalid value for aspect ratio.
  p2 = (0,1) + real(p2)                        ; Substitute a default value.
ENDIF
IF (real(p3) == 0)                        ; Invalid value for color scale.
  p3 = 75 + flip(imag(p3))                ; Substitute a default value.
ENDIF
IF (imag(p3) == 0)                        ; Invalid value for ring radius.
  p3 = (0,1) + real(p3)                        ; Substitute a default value.
ENDIF
closest = 1e+38                                ; Closest approach so far.
point = 0                                ; Point of that closest approach.
done = 2                                ; Iteration counter.
r = (0,1) ^ (real(p2)/90)                ; Compute rotation vector.
z = pixel:                                ; fractal calculation.
c = .15*(fn1(z) + fn2(z) + 1.5)
z = fn3(z*z) + fn4(c)
done = done + 1                                ; Done one more iteration.
z2 = (z-p1) * r                                ; Offset to p1 and rotate.
z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
d = abs(cabs(z2) - imag(p3))            ; Compute ring distance.
IF (d < closest)                        ; Closer than previous value.
  point = z                                ; Save that point.
  closest = d                                ; Save the closest approach.
ENDIF
IF (|z| > 128)                                ; Point exceeds bailout.
  z = closest * real(p3)                ; Apply color scale.
  z = z - 255*trunc(z/real(255))        ; Wrap at 255.
  z = z - done                                ; Return value.
  done = -1                                ; Set flag to force an exit.
ENDIF
done >= 0                                ; Continue if the flag is clear.
}

tent_inside { ; Sylvie Gallet [101324,3444], Apr 1997
  r = 1 , z = 0 :
   l = r
   z = z*z + pixel
   UV = (5,5) - abs((5,5) - abs(z))
   r = cabs(UV)
    abs(l-r) >= 0.001 && r < 4
  }

Whatzit2 {; Dan Farmer  -  from thread in General Information.
  z = pixel:
  z = ((real(p1)*z^3) - (imag(p1)*z^2)+1) ^ p2
  |real(z)| <=100  ||  |imag(z)| <=100
}
