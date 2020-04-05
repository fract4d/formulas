
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



tangent_jul { ; Kerry Mitchell 27aug98
	;
        ; "circle and tangent line" coloring method for Julia sets
        ; p1 = Julia parameter
        ; p2 = circle center
        ; real(p3) = circle radius
        ; imag(p3) = angle of line from center of circle
        ;   to tangent point, in degrees
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
        cenx=p2, radx=real(p3), rad2x=|radx|
        theta=imag(p3)*pi/180, ct=cos(theta), st=sin(theta)
        xt=real(cenx)+radx*ct, yt=imag(cenx)+radx*st
        phi=theta+pi/2, cp=cos(phi), sp=sin(phi)
        ay=sp, by=-cp, cy=cp*yt-sp*xt:
        iter=iter+1, zc=sqr(zc)+c
        tempx=|zc-cenx|-rad2x
        tempy=ay*real(zc)+by*imag(zc)+cy
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }


BILL13 (yaxis) { ; Bill Rossi
   z=pixel,pi=3.142857142857:
     z=fn1(z)/fn2(z)-(fn3(z)*pi),
     z=fn4((z)^pi),
   |z| <= 4 }    

Fatso {
  z=x=1/pixel, c= fn1 (z):
  z = (x^3)-(c^3)
  x=fn2(z)
  |z| <=3
  ;SOURCE: fractint.frm
}

a0 {; (c) by Miguel Fliguer 
z=c=pixel:
z=fn1(z/fn2(z/fn3(z/fn4(z))))+c
|z|<4
}

DJD_EB0 {;2002 David Dollevoet
  ;modified B.E. Jones BJ-SG-3-03-g from modified Sylvie Gallet
  IF(ISMAND)
      Q1 = PIXEL
    ELSE
      Q1 = P1
    ENDIF
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  Z = PIXEL
  :
  ZR = REAL(Z), ZI = IMAG(Z)
  ZR1 = ZR-Q1*FN1(FN2(ZR)+Q2*FN3(ZI)), ZI1 = ZI-Q1*FN1(FN2(ZI)+Q2*FN3(ZR))
  Z = ZR1+FLIP(ZI1)
  |Z| <= 4
}

julia4 {; Chuck Ebbert                      added 13 Jan 1993
        ; p1=Parameter (default (.6,.55) )
        ; bailout is real(p2) (default 4)
        ; force c=(.6,.55) if p1=0
  z = pixel, c = ((0.6,0.55) * (|p1|<=0) + p1 )
  t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = sqr(z*z) + c
  |z| <= t
  ;SOURCE: builtn2.frm
}

Lin-carr6new { ;Robert Carr's formula modified by Linda Allison
  z = pixel:
  z = (fn1(p1/z ^ 3))/.5
  |z| <= p2
  }

Gallet-3-06 {; Sylvie Gallet [101324,3444], 1996
  z = pixel , c = p1 , bailout = real(p3) :
  test=(z*(c-z) >= 0)
  z=(z-p2)*test + (z+p2)*(1-test), z=z*c
  (sqr(real(z)) < bailout) || (sqr(imag(z)) < bailout)
  ;SOURCE: gallet-3.frm
}

Zurreal { 
  z = pixel:
  z = fn1(z) + pixel
  z = fn2(1/sqr(z))/z + p1 
  |z| <= 4
  ;SOURCE: surreal.frm
}

051597-002   {; Linda Allison May 15, 1997
 z=0;
 c=log(sqr(sqr(pixel))*pixel)*0.2:
 z2=fn1(z)+c
 z=c*(1-z2*z2)/(1+z2*z2)
 |z|<=p1
}

RCL_10 { ; Ron Lewen, 76376,2567
  z=pixel:
   z=flip((z^2+pixel)/(pixel^2+z))
    |z| <= 4
  }

TSinh (XAXIS) {; Tetrated Hyperbolic Sine - Improper Bailout
  z = c = sinh(pixel):
   z = c ^ z
    z <= (p1 + 3)
  }

F'M-SetInNewtonA(XAXIS) {; use float=yes
  ; jon horner 100112,1700, 12 feb 93
  z = 0,  c = fn1(pixel),  cminusone = c-1:
   oldz = z, nm = p1*c-2*z*cminusone, dn = p1*(3*z*z+cminusone)
   z = nm/dn+2*z/p1
    |(z-oldz)|>=|0.01|
  }

2Ratz-fn {z = Pixel :  
          z = (z * z * fn1(z) * p1 + Pixel )/(z * fn2(z) * p1 + Pixel ) , 
          | z | <= 10 }

Zurreal { 
  z = pixel:
  z = fn1(z) + pixel
  z = fn2(1/sqr(z))/z + p1 
  |z| <= 4
  ;SOURCE: surreal.frm
}

magnet1jvar_exp2(XAXIS_NOIMAG) {
;the Mandelbrot-equivalent is similar to 'magnet1m'
;p1 is the basic Julia-perturbation, default=(0.5,0), shouldn't be 0
;p2 is a second perturbation, nonzero values create a 'false' set,
;which only works with a limited bailout
;p3 is the exponent (default=2)
;p4 is the bailout (default=5)
;try p1=1 p2=0 p3=-3 p4=40
x=p3,x=x+(x==0)*2
b=p4,b=b+(b==0)*5
p=p1,p=p+(|p|==0)*0.5
z=c=pixel:
zx=z^x+p2
z=(zx+p)/(zx-1)
|z|<b
}

Gallet-3-13 {; Sylvie Gallet [101324,3444], 1996
  z = pixel/(pixel*pixel+1) :
  x = real(z) , y = imag(z)
  x1 = x - p1*fn1(y+p2*fn2(y))
  y1 = y - p1*fn1(x+p2*fn2(x))
  z = x1+flip(y1)
  |z| <= 4
  ;SOURCE: gallet-3.frm
}

Tim's_Error (XAXIS) {
  z = pixel, c = z ^ (z - 1):
  z = sqr(z)
  t2 = real(z)*real(c) + imag(z)*imag(c)
  t3 = real(t2)*imag(c) - imag(z)*real(c)
  z = t2 + t3 + pixel
  |z| <= 4
  ;SOURCE: newforms.frm
}

051597-002-m1   {; Linda Allison May 15, 1997
                 ; modified by Sylvie Gallet
 ; 1st parameter: real(p1) = bailout
 ; 2nd parameter: imag(p1) = number of sides
 z = 0
 c = 0.2 * log(pixel^imag(p1)) :
 z2 = fn1(z) + c , sqz2 = sqr(z2)
 z = c * (1-sqz2)/(1+sqz2)
 |z| <= p1
}

051597-002-m1-m2   {; Linda Allison May 15,1997
                 ; modified by Sylvie Gallet
                 ; modified again by Linda Allison
 ; 1st parameter: real(p1) = bailout
 ; 2nd parameter: imag(p1) = number of sides
 z = 0
 c = 0.2 * log(pixel^imag(p1)) :
 z2 = fn1(z) + c , sqz2 = fn2(z2)
 z = c * (1-sqz2)/(1+sqz2)
 |z| <= p1
}

newton_reel_1 (ORIGIN) {; Sylvie Gallet
  z=pixel , x=real(z) , y=imag(z) :    ; Methode de Newton pour
  x2=x*x , y2=y*y , x3=x2*x , y3=y2*y  ; x -> x^3-y
  d=1+9*x2*y2                          ; y -> y^3+x
  x = (6*x3*y2 + 2*y3) / d             ; solution (0,0)
  y = (6*x2*y3 - 2*x3) / d   
  z = x+flip(y) 
  |z|>=.01
}

Larry { ; Mutation of 'Michaelbrot' and 'Element'
  ; Original formulas by Michael Theroux [71673,2767]
  ; For 'Michaelbrot', set FN1 & FN2 =IDENT and P1 & P2 = default
  ; For 'Element', set FN1=IDENT & FN2=SQR and P1 & P2 = default
  ; p1 = Parameter (default 0.5,0), real(p2) = Bailout (default 4)
  z = pixel
  ; The next line sets c=default if p1=0, else c=p1
  c = ((0.5,0) * (|p1|<=0) + p1)
  ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2)):
   z = fn1(fn2(z*z)) + c
    |z| <= test
  }

Astroid_Msetx {; Copyright (c) Paul W. Carlson, 1997
    ; Mike Traynor generalized the iteration equation
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = a factor controlling the width of the curves
    ;   imag(p1) = radius of the astroid
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
  w = 0
  c = pixel
  z = 0
  bailout = 0
  iter = 0
  range_num = 0
  i = (0,1)
  r = imag(p1)
    ;****************************************************
    ; In the accompanying par file, astmset.par,
    ; we have 8 color ranges with 30 colors in each range
    ; for a total of 240 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| < 10000.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
  num_ranges = real(p2)
  colors_in_range = imag(p2)
    ;****************************************************
    ; Real(p1) controls the width of the curves.
    ; These values will usually be in the range 0.001 to 0.1
    ;****************************************************
  width = real(p1)
  index_factor = (colors_in_range - 1) / width:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be expressed in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This example uses the standard Mandelbrot set equation.
    ;****************************************************
  w = fn1(w) + c
    ;****************************************************
    ; The orbit trap curve.  This example uses an "astroid"
    ; curve (which has absolutely nothing to do with huge
    ; rocks in outer space).  Any two-dimensional curve can
    ; be used which can be expressed in parametric form in
    ; terms of the angle from the origin.
    ;****************************************************
  ang = atan(imag(w) / real(w))
  astroid = r * (cos(ang)^3 + i * sin(ang)^3)
    ;****************************************************
    ; If the orbit point is within some distance of the curve,
    ; set z to the index into the colormap and set the bailout
    ; flag.  Note: the way we use the "distance" here has
    ; the effect of turning the curves inside-out in the image.
    ;****************************************************
  distance = abs(|w| - |astroid|)
  IF (distance < width && iter > 1)
    z = index_factor * distance + range_num * colors_in_range + 1
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
  bailout == 0  && |w| < 1000
  ;SOURCE: 3d_balls.frm
  ;SOURCE: a.frm
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

Ent2 {; Scott Taylor
  ; try params=2/1, functions=cos/cosh, potential=255/355
  z = Pixel, y = fn1(z), base = log(p1):
   z = fn2( y * log(z) / base )
    |z| <= 4
  }

F'M-SetInNewtonA(XAXIS) {; use float=yes
  ; jon horner 100112,1700, 12 feb 93
  z = 0,  c = fn1(pixel),  cminusone = c-1:
   oldz = z, nm = p1*c-2*z*cminusone, dn = p1*(3*z*z+cminusone)
   z = nm/dn+2*z/p1
    |(z-oldz)|>=|0.01|
  }

Mandel[Fn||Fn] {; v18 - Jonathan Osuch
                ; Note: use floating point
   ; Edited for Fractint v. 20 by George Martin, 10/98
  z = p1, shift = real(p2), x=|z|:
  IF (x<shift)
    z=pixel+fn1(z)
  ELSE
    z=pixel+fn2(z)
  ENDIF
  x=|z| 
  x<=64
  ;SOURCE: parser.frm
}

Sqr[1/fn] (XYAXIS)  {; Jon Horner [ needs zoom-out ]
  z = pixel :
  z = sqr(1/fn1(z))
  |z| <= 64
  ;SOURCE: parser.frm
}

Fatso {;
  z=x=1/pixel, c= fn1 (z):
   z = (x^3)-(c^3)
   x=fn2(z)
    |z| <=3
  }

Gallet-8-21 { ; Sylvie Gallet [101324,3444], Apr 1997
              ; Requires periodicity = 0 and decomp = 256
              ; p1 = parameter for a Julia set (0 for the Mandelbrot set)
              ; 0 < real(p2) , 0 < imag(p2)
   im2 = imag(p2)
   IF (p1 || imag(p1))
      c = p1
   ELSE
      c = pixel
   ENDIF
   z = -1 , zn = pixel , zmin = zmin0 = abs(real(p2))
   cmax = trunc(abs(real(p3)))
   IF (cmax < 2)
      cmax = 2
   ENDIF
   k = flip(6.28318530718/(zmin*real(cmax))) , cnt = -1
   :
   cnt = cnt + 1
   IF (cnt == cmax)
      cnt = 0
   ENDIF
   zn = zn*zn + c , znc = cabs(im2*real(zn) + flip(imag(zn)))
   IF (znc < zmin)
      zmin = znc , z = exp((cnt*zmin0 + zmin)*k)
   ENDIF
   znc <= 4
   }

a3 {
  z=pixel, x=fn4(i-pixel), y=1/(i-pixel):
  z=cosxx(fn1(z*x)*fn2(z^(fn3(z*y))))/|z+p1|*(x*y)+c
  |z|<25
  ;SOURCE: ad1.frm
  ;SOURCE: a.frm
}


GenInvMand1_N   { ; Jm Collard-Richard
  c=z=1/pixel:
  z=fn1(z)*fn2(z)+fn3(fn4(c))
  |z|<=4  } 
