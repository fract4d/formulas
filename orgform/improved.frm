;improved.frm
;comment {
;
; FRACTINT.DOC has instructions for adding new formulas to this file.
; There are several hard-coded restrictions in the formula interpreter:
;
; 1) The fractal name through the open curly bracket must be on a single line.
;
; 2) There is a hard-coded limit of 200 formulas per formula file, only
;    because of restrictions in the prompting routines.
;
; 3) Formulas can contain at most 250 operations (references to variables and
;    arithmetic); this is bigger than it sounds, no formula in the default
;    fractint.frm uses even 100.
;
; 3) Comment blocks can be set up using dummy formulas with no formula name
;    or with the special name "comment".
;
; The formulas are listed alphabetically.
;
; Note that the builtin "cos" function had a bug which was corrected in
; version 16.     recreate an image from a formula which used cos before
; v16, change "cos" in the formula to "cosxx" which is a new function
; provided for backward compatibility with that bug.
; }
;
{==================================================================}


AltJTet (XAXIS) {; Lee Skinner
   z = p1:
   z = (pixel ^ z) + p1,
       |z| <= (p2 + 3)
  }


{==================================================================}

AltMTet (XAXIS) {; Lee Skinner
   ; try p1 = 1.5
   z = 0:
   z = (pixel ^ z) + pixel,
       |z| <= (p1 + 3)
  }


{==================================================================}

Bogus1 {; Fractal Creations
   ; try p1 = 2 and p2 = 4
   z = 0;
   z = z + p1,
       |z| <= p2
  }


{==================================================================}

CGhalley (XYAXIS) {; Chris Green
   ; try p1 = 1, p2 = 0.0001
   ; note--use floating point
   z   = (1,1):
   z5  = z*z*z*z*z;
   z6  = z*z5;
   z7  = z*z6;
   z8  = z7 - z - pixel;
   z   = z-p1*(z8/ ((7.0*z6-1)-(42.0*z5)*z8/(14.0*z6-2))),
         p2 <= |z8|
  }


{==================================================================}

Cubic (XYAXIS) {; Lee Skinner
   ; try p1 = 2, p2 = 3
   t1 = pixel,
   t2 = t1*t1 + 1
   t3 = 3*t1,
   a  = t2/t3,
   b  = p1*a*a*a + (t2 - 2)/t3,
   d  = p2*a*a,
   z  = 0 - a:
   z  = z*z*z - d*z + b,
        |z| < p1 + 3
  }


{==================================================================}

Dragon (ORIGIN) {; Mark Peterson
   ; try p1 = (-0.74543, 0.2), p2 = 4, fn1 = sqr
   ; note p2 should not be zero
   z = pixel:
   z = fn1(z) + p1,
       |z| <= p2
  }


{==================================================================}

Daisy (ORIGIN) {; Mark Peterson
   ; try p1 = (0.11031, -0.67037) and p2 = 4
   ; note p2 should not be zero
   z = pixel:
   z = z*z + p1,
       |z| <= p2

  }


{==================================================================}

DeltaLog (XAXIS) {; Mark Peterson
   ; try p1 = 1, p2 = 4, fn1 = log, fn2 = sqr
   ; note p2 should not be zero
   z = pixel, c = fn1(pixel):
   z = fn2(z) + c/p1,
       |z| <= p2
  }


{==================================================================}

Ent {; Scott Taylor
   ; try p1 = (.5, .75), p1 = 0, p2 = 4, fn1 = exp
   z    = pixel,
   y    = fn1(z)+p1,
   base = log(p1):
   z    = y * log(z)/base,
          |z| <= p2
  }


{==================================================================}

Ent2 {; Scott Taylor
   ; try p1 = 2, fn1 = cos, fn2 = cosh
   ; try potential = 255/355
   z    = pixel,
   y    = fn1(z),
   base = log(p1):
   z    = fn2( y * log(z) / base ),
          |z| <= p1
  }


{==================================================================}

FnDog (XYAXIS)  {; Scott Taylor
   z = pixel,
   b = p1+2:
   z = fn1( z ) * pixel,
       |z| <= b
  }


{==================================================================}

Fzppfncs  {; Lee Skinner
   ; try p1 = 50, fn1 = cos, fn2 = sin
   z = pixel,
   f = 1./fn1(pixel):
   z = fn2(z) + f,
       |z| <= p1
  }

Fzppfnct  {; Lee Skinner
   ; try p1 = 50, fn1 = sin, fn2 = cos, fn3 = sin
   z = pixel,
   f = fn2(pixel)/fn3(pixel):
   z = fn1(z) + f,
       |z|<= p1
  }


Fzppfnpo  {; Lee Skinner
   ; try p1 = 50
   z = pixel,
   f = 2*(pixel)^(pixel):
   z = fn1(z) + f,
       |z| <= p1
  }

Fzppfnre  {; Lee Skinner
   ; try p1 = 50 and p2 = 1
   z = pixel,
   f = 1./(pixel):
   z = fn1(z) + f * p2,
       |z| <= p1
  }

Fzppfnse  {; Lee Skinner
   ; try p1 = 50, fn1 = sin, fn2 = sin
   z = pixel,
   f = 1./fn2(pixel):
   z = fn1(z) + f,
       |z| <= p1
  }

Fzppfnsr  {; Lee Skinner
   ; try p1 = 50
   z = pixel,
   f = (pixel)^.5:
   z = fn1(z) + f,
       |z| <= p1
  }

Fzppfnta  {; Lee Skinner
   ; try p1 = 50
   z = pixel,
   f = fn2(pixel):
   z = fn1(z) + f,
       |z|<= p1
  }


{==================================================================}

Gamma (XAXIS)={ ; Jm Richard-Collard
   ; try p1 = 6.2   ; note that p1 above is two times pi
   z = pixel:
   z = (p1*z)^(0.5)*(z^z)*exp(-z)+pixel
   |z|<=p2
  }


{===============
Halley (XYAXIS) {; Chris Green
   ; try p1 = 1.0 and p2 = 0.0001
   ; note--use floating point
   z  = pixel:
   z5 = z*z*z*z*z;
   z6 = z*z5;
   z7 = z*z6;
   z  = z-p1*((z7-z)/((7.0*z6-1)-(42.0*z5)*(z7-z)/(14.0*z6-2))),
        p2 <= |z7-z|
   }


{==================================================================}

InvMandel (XAXIS) {; Mark Peterson
   ; try p1 = 1, p2 = 4, fn1 = sqr
   ; note p2 should not be zero
   c = z = p1 / pixel:
   z = fn1(z) + c;
       |z| <= p2
  }


{==================================================================}

HalleySin (XYAXIS) {; Chris Green
   ; try p1 = 0.1, p2 = 0.0001, fn1 = sin, fn2 = cos
   ; note--use floating point
   z  = pixel:
   s  = fn1(z),
   c  = fn2(z)
   z=z-p1*(s/(c-(s*s)/(c+c))),
   p2 <= |s|
  }


{==================================================================}

HyperMandel {; Chris Green.
   ; try p1 = 1.8, p2 = 2.0, fn1 = sqr
   ; note--use floating point
   a    = (0,0),
   b    = (0,0):
   z    = z+1
   anew = fn1(a)-fn1(b)+pixel
   b    = p2*a*b+p1
   a    = anew,
          |a|+|b| <= 4
  }


{==================================================================}
{ These types are generalizations of types sent to us by the French
  mathematician Jm Richard-Collard. If we hadn't generalized them
  there would be --ahhh-- quite a few. With 11 possible values for
  each fn variable,Jm_03, for example, has 14641 variations! }

Jm_01 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = (fn1(fn2(z^pixel)))*pixel,
       |z| <= t
  }

Jm_02 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = (z^pixel)*fn1(z^pixel),
       |z| <= t
  }

Jm_03 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel))*pixel,
       |z| <= t
  }

Jm_04 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel)),
       |z| <= t
  }

Jm_05 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(fn2((z^pixel))),
       |z| <= t
  }

Jm_06 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(fn2(fn3((z^z)*pixel))),
       |z| <= t
  }

Jm_07 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(fn2(fn3((z^z)*pixel)))*pixel,
       |z| <= t
  }

Jm_08 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(fn2(fn3((z^z)*pixel)))+pixel,
       |z| <= t
  }

Jm_09 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(fn2(fn3(fn4(z))))+pixel,
       |z| <= t
  }

Jm_10 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(fn2(fn3(fn4(z)*pixel))),
       |z| <= t
  }

Jm_11 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(fn2(fn3(fn4(z)*pixel)))*pixel,
       |z| <= t
  }

Jm_12 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(fn2(fn3(z)*pixel)),
       |z| <= t
  }

Jm_13 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(fn2(fn3(z)*pixel))*pixel,
       |z| <= t
  }

Jm_14 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(fn2(fn3(z)*pixel))+pixel,
       |z| <= t
  }
 k
Jm_15 {; Jm Richard-Collard
   z  = pixel,
   t  = p1+4:
   f2 = fn2(z),z=fn1(f2)*fn3(fn4(f2))*pixel,
        |z| <= t
  }

Jm_16 {; Jm Richard-Collard
   z  = pixel,
   t  = p1+4:
   f2 = fn2(z),z=fn1(f2)*fn3(fn4(f2))+pixel,
        |z| <= t
  }

Jm_17 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(z)*pixel*fn2(fn3(z)),
       |z| <= t
  }

Jm_18 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(z)*pixel*fn2(fn3(z)*pixel),
       |z| <= t
  }

Jm_19 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(z)*pixel*fn2(fn3(z)+pixel),
       |z|<=t
  }

Jm_20 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(z^pixel),
       |z| <= t
  }

Jm_21 {; Jm Richard-Collard
   z= pixel,
   t= p1+4:
   z= fn1(z^pixel)*pixel,
      |z| <= t
  }

Jm_22 {; Jm Richard-Collard
   z  = pixel,
   t  = p1+4:
   sq = fn1(z),
   z  = (sq*fn2(sq)+sq)+pixel,
        |z| <= t
  }

Jm_24 {; Jm Richard-Collard
   z  = pixel,
   t  = p1+4:
   z2 = fn1(z), z=(fn2(z2*fn3(z2)+z2))+pixel,
        |z| <= t
  }

Jm_25 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(z*fn2(z)) + pixel,
       |z|<=t
  }

Jm_26 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   z = fn1(fn2(z)) + pixel,
       |z|<=t
  }

Jm_27 {; Jm Richard-Collard
   z = pixel,
   t = p1+4:
   s = fn1(z),
   z = s + 1/s + pixel,
       |z| <= t
  }

Jm_03a {; generalized Jm Richard-Collard type
   z = pixel,
   t = p1+4:
   z = fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel))+pixel,
      |z|<=t
  }

Jm_11a {; generalized Jm Richard-Collard type
   z = pixel,
   t = p1+4:
   z = fn1(fn2(fn3(fn4(z)*pixel)))+pixel,
       |z|<=t
  }

Jm_23 {; generalized Jm Richard-Collard type
   z = pixel,
   t = p1+4:
   z = fn1(fn2(fn3(z)+pixel*pixel)),
       |z|<=t
  }

Jm_27a {; generalized Jm Richard-Collard type
   z = pixel,
   t = p1+4:
   sqrz = fn1(z), z=sqrz + 1/sqrz + pixel,
       |z|<=t
  }

Jm_ducks (XAXIS) {; Jm Richard-Collard
   ; try fn1 = sqr
   ; try corners=-1.178372/-0.978384/-0.751678/-0.601683
   z = pixel,
   t = 1+pixel:
   z = fn1(z)+t,
       |z| <= p1 + 4
  }


{==================================================================}

JTet (XAXIS) {; Lee Skinner
   z = pixel:
   z = (pixel ^ z) + p1,
       |z| <= (p2 + 3)
  }


{==================================================================}

LeeMandel1 (XYAXIS) {; Kevin Lee
   ; try p1 = 0, p2 = 4, fn1 = sqr, fn2 = sqr
   z = pixel + p1:
   c = fn1(pixel)/z, c=z+c, z=fn2(z),
       |z| < p2
  }

LeeMandel2 (XYAXIS) {; Kevin Lee
   ; try p1 = 0, p2 = 4, fn1 = sqr, fn2 = sqr
   z = pixel + p1:
   c = fn1(pixel)/z, c=z+c, z=fn2(c*pixel),
       |z| < p2
   }

LeeMandel3 (XAXIS) {; Kevin Lee
   ; try p1 = 0, p2 = 4, fn1 = sqr
   z = pixel + p1,
   c = pixel-fn1(z):
   c = pixel+c/z,
   z = c-z*pixel,
       |z| < p1
  }


{==================================================================}

Mandel3 {; Fractal Creations
   ; try p1 = 1, p2 = 4, fn1 = sin
   z = pixel * p1,
   c = fn1(z):
   z = (z*z) + c;
   z = z * 1/c;
       |z| <= p2;
   }


{==================================================================}

Mandelbrot (XAXIS) {; Mark Peterson
   ; try p1 = 0, p2 = 4, fn1 = sqr, fn2 = sqr
   ; note p2 should not be zero
   z = pixel,
   z = fn1(z):
   z = z + pixel + p1
   z = fn2(z)
       lastsqr <= p2
  }


{==================================================================}

MandelTangent {; Fractal Creations
   ; try p1 = 0, p2 = 32, fn1 = tan
   z = pixel + p1:
   z = pixel * fn1(z),
      |real(z)| < p2
  }


{==================================================================}

MTet (XAXIS) {; Lee Skinner
   ; try fn1 = sin, p1 = 1
   z = pixel:
   z = (pixel ^ z) + pixel,
       |z| <= (p1 + 3)
  }


{==================================================================}

MyFractal {; Fractal Creations
   ; try p1 = 0, p2 = 4
   c = z = 1/pixel + p1:
   z = fn1(z) + c;
       |z| <= p2
  }


{==================================================================}

Newton3 {; Chris Green
   ; Try p1=1.8 and p2 = 3.0
   z  = (1,1):
   z2 = z*z;
   z3 = (z*z2) - pixel;
   z  = z-p1*z3/(p2*z2),
        0.0001 < |z3|
  }


{==================================================================}

Newton4 (XYAXIS) {; Mark Peterson
    ; try p1 = 3 and p2 = 4
    z  = pixel,
    Root = 1:
    z3 = z*z*z;
    z4 = z3 * z;
    z  = (p1 * z4 + Root) / (p2 * z3);
         0.004 <= |z4 - Root|
  }


{==================================================================}

NewtonSinExp (XAXIS) {; Chris Green
   ; try fn1 = exp, fn2 = sin, fn3 = cos, p1 = 1, p2 = 0.0001
   ; note--use floating point
   z  = pixel:
   z1 = fn1(z)
   z2 = fn2(z)+z1-1
   z  = z-p1*z2/(fn3(z)+z1),
        p2 < |z2|
  }


{==================================================================}

PseudoMandel (XAXIS) {; davisl
   ; try p1 = 2.7182818, p2 = 6.2831853, fn1 = sqr
   z = pixel:
   z = ((z/p1)^z)*fn1(p2*z) + pixel,
       |z| <= 4
  }


{==================================================================}

Richard1 (XYAXIS) {; Jm Richard-Collard
   ; try p1 = 0, p2 = 50
   z   = pixel + p1:
   sq  = z*z,
   z   = (sq*fn1(sq)+sq)+pixel,
         |z| <= p2
  }

Richard2 (XYAXIS) {; Jm Richard-Collard
   ; try p1 = 0, p2 = 50, fn1 = sin
   z   = pixel + p1:
   z   = 1/(fn1(z*z+pixel*pixel)),
         |z| <= p2
  }

Richard3 (XAXIS) {; Jm Richard-Collard
   ; try p1 = 0, p2 = 50, fn1 = sinh
   z   = pixel + p1:
   sh  = fn1(z),
    z   -b1/(sh*sh))+pixel,
         |z| <= p2
  }

Richard4 (XAXIS) {; Jm Richard-Collard
   ; try p1 = 0, p2 = 50, fn1 = cos
   z   = pixel + p1:
   z2  = z*z,
   z   = (1/(z2*fn1(z2)+z2))+pixel,
         |z| <= p2
  }

Richard5 (XAXIS) {; Jm Richard-Collard
   ; try p1 = 0, p2 = 50, fn1 = sin, fn2 = sinh
   z = pixel + p1:
   z = fn1(z*fn2(z))+pixel,
       |z| <= p2
  }

Richard6 (XYAXIS) {; Jm Richard-Collard
   ; try p1 = 0, p2 = 50, fn1 = sin, fn2 = sinh
   z = pixel + p1:
   z = fn1(fn2(z))+pixel,
       |z| <= p2
  }

Richard7 (XAXIS) {; Jm Richard-Collard
   ; try p1 = 0, p2 = 50, fn1 = log
   z = pixel:
   z = fn1(z)*pixel,
       |z| <= p2
  }

Richard8 (XYAXIS) {; Jm Richard-Collard
   ; try p1 = 0, p2 = 50, fn1 = sin, fn2 = sin
   ; note--used for cover of "Fractal Creations"
   z = pixel + p1,
   z = fn1(z)+fn2(pixel),
       |z| <= p2
  }

Richard9 (XAXIS) {; Jm Richard-Collard
   ; try p1 = 0, p2 = 4
   z = pixel + p1:
   s = z*z,
   z = s + 1/s + pixel,
       |z| <= p2
  }

Richard10 (XYAXIS) {; Jm Richard-Collard
   ; try p1 = 0, p2 = 50, fn1 = sin
   z = pixel + p1:
   z = 1 / fn1(1/(z*z)),
       |z| <= p2
  }


{==================================================================}

Sterling (XAXIS) {; davisl
   ; try p1 = 2.7182818, p2 = 6.2831853
   z = pixel:
   z = ((z/p1)^z)/fn1(p2*z),
       |z| <= 4
  }

Sterling2 (XAXIS) {; davisl
   ; try p1 = 2.7182818, p2 = 6.2831853
   z = pixel:
   z = ((z/p1)^z)/fn1(p2*z) + pixel,
       |z| <= 4
  }

Sterling3 (XAXIS) {; davisl
   ; try p1 = 2.7182818, p2 = 6.2831853
   z = pixel:
   z = ((z/p1)^z)/fn1(p2*z) - pixel,
       |z| <= 4
  }


{==================================================================}

Wineglass (XAXIS) {; Pieter Branderhorst
   ; try p1 = 4 and p2 = 2
   c = z = pixel:
   z = z * z + c
   c = (1+flip(imag(c))) * real(c) / p2 + z,
       |z| <= p1
  }


{==================================================================}

ZZ (XAXIS) { ; Jm Richard-Collard
   ; try fn1 = log, p1 = 0.001
   ; note--use floating point
   z  = pixel:
   z1 = z^z;
   z2 = (fn1(z)+1)*z1;
   z  = z-(z1-1)/z2,
        p1 <= |1-z1|
  }

ZZa (XAXIS) { ; Jm Richard-Collard
   ; try p1 = 0.001, fn1 = log
   ; note--use floating point
   z  = pixel:
   z1 = z^(z-1);
   z2 = (((z-1)/z)+fn1(z))*z1;
   z  = z-((z1-1)/z2),
        p1 <= |1-z1|
  }

CGNewton3 {; Chris Green -- A variation on newton iteration.
  ; The initial guess is fixed at (1,1), but the equation solved
  ; is different at each pixel ( x^3-pixel=0 is solved).
  ; Use floating point.
  ; Try P1=1.8.
  z=(1,1):
   z2=z*z;
   z3=z*z2;
   z=z-p1*(z3-pixel)/(3.0*z2),
    0.0001 < |z3-pixel|
  }

comment {
  You should note that for the Transparent 3D fractals the x, y, z, and t
  coordinates correspond to the 2D slices and not the final 3D True Color
  image.  To relate the 2D slices to the 3D image, swap the x- and z-axis,
  i.e. a 90 degree rotation about the y-axis.
			    -Mark Peterson 6-2-91
  }

MandelXAxis(XAXIS) {	; for Transparent3D
  z = zt,		; Define Julia axes as depth/time and the
  c = xy:		;   Mandelbrot axes as width/height for each slice.
			;   This corresponds to Mandelbrot axes as
			;   height/depth and the Julia axes as width
			;   time for the 3D image.
   z = Sqr(z) + c
    LastSqr <= 4;
  }

OldJulibrot(ORIGIN) {		    ; for Transparent3D
  z = real(zt) + flip(imag(xy)),    ; These settings coorespond to the
  c = imag(zt) + flip(real(xy)):    ;	Julia axes as height/width and
				    ;	the Mandelbrot axes as time/depth
				    ;	for the 3D image.
   z = Sqr(z) + c
    LastSqr <= 4;
  }

