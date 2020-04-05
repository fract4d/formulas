

e5 {
  z=pixel, x=(z)^(y-1), y=fn2(z)*fn4(z+1)
  z=((fn1(x)*(y))/fn3(z+x))+c
  |z|<4
  ;SOURCE: ad1.frm
}


eclipse {; Jim Muth
         ; As Posted in Fractal-Art, 4/97
  z=c=pixel:
  z=(-z)^(-1.5)*(c^(-2.5))+c
  |z| <= 100
  ;SOURCE: 97msg.frm
}


Egg (xaxis) {; M.L. Newsted Jr.
  z = 0
  c = pixel
  d = pixel:
  z = (z*z + c) / d
  ;SOURCE: 97msg.frm
}


eh2 {
  z=pixel:
  z1=fn1(sin((z^2)))+1
  z2=(fn4(z^2)+whitesq)-1
  z=((fn2((z1)*fn3(z2))))
  |z|<p1
  ;SOURCE: ad5.frm
}


eightfold {; Giuseppe Zito
  z = pixel
  c1 = 0.376928
  d4 = -0.964622
  d7 = 0.631211
  d10 = -0.762901
  d12 = 0.388134
  d13 = 0.077604
  d14 = -0.916567
  : 
  x = real(z), y = imag(z)
  s0 = x
  s0 = s0 *c1
  s0 = s0 +y
  newx = s0 
  s0 = x
  s0 = s0 +y
  s0 = s0 /d4
  s0 = s0 *x
  s0 = s0 +d7
  s0 = s0 *y
  s0 = s0 *x
  s0 = s0 -d10
  s0 = s0 +d12
  s0 = s0 *d13
  s0 = s0 *d14
  s0 = s0 -x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


Element (xyaxis) {; phi lingam
  z = pixel:
  z = z*z*z*z + ((sqrt 5 + 1)/2) 
  |z| <= 4
  ;SOURCE: drcha.frm
}


Elliptic {; Jim Muth  imag(z),real(c)
  z=flip(imag(pixel))+p1
  c=real(pixel)+p2:
  z=sqr(z)+c
  |z| <= 16
  ;SOURCE: 98msg.frm
}


Elliptic1 (XAXIS) {; By Alastair Scott
  z = pixel:
  z=pixel*(1.50000+z*z*(0.392669+\
     z*z*(0.220893+z*z*(0.153398+z*z*0.117445))))
  |z|<=4 
  ;SOURCE: elliptic.frm
}


Elliptic2 (XAXIS) {; By Alastair Scott
  z = pixel:
  z = pixel*(1.57079 - z*z*(0.392699 + z*z*(0.073631\ 
       +z*z*(0.030680 + z*z*0.016778))))
  |z|<=4 
  ;SOURCE: elliptic.frm
}


EllipticMiN {; Jim Muth
  b=p1, z=flip(imag(pixel))+p2
  c=real(pixel)+p3:
  z=(-z)^(b)+c
  |z| <= 16
  ;SOURCE: 99msg.frm
}


EllipticN {; Jim Muth
  z=flip(imag(pixel))+p1
  c=real(pixel)+p2:
  z=z^p3+c
  |z| <= 16
  ;SOURCE: 98msg.frm
}


EllipticVB {; Jim Muth
  z=flip(imag(pixel))+real(p1)
  c=real(pixel)+flip(imag(p1))
  a=sqr(p2):
  z=sqr(z)+c
  |z| <= a
  ;SOURCE: 97msg.frm
}


ElongatedSchnitz {
  z = pixel:
  z = (cos(z^2))^2
  ;SOURCE: welner.frm
}


emboss-iter_genjul {; Kerry Mitchell 19sep98
        ;
        ; For an explanation of Kerry Mitchell's "embossing" formulas,
        ;   see the end of formula "emboss-iter_man"
        ;
        ; "embossing" coloring scheme based on iteration levels
        ; general Julia version:  z=z^n+c
        ;
        ; p1 = c = Julia parameter
        ; real(p2) = bailout
        ; imag(p2) = n
        ;
        ; real(p3) = size of contour band
        ; imag(p3) = light source angle, in degrees
        ; use decomp=256 coloring, only 4 colors used
        ;
        ; initialize counters
        ;
  iter=1, done=0
  c=p1, bailout=real(p2), n=imag(p2)
        ;
        ; first point is offset from pixel by lightangle
        ; second point is offset from pixel by (lightangle+180 deg)
        ;
  size=real(p3), lightangle=imag(p3)*pi/180
  dr=size*(cos(lightangle)+flip(sin(lightangle)))
  z1=pixel-dr, iter1=0, c1=p1
  z2=pixel+dr, iter2=0, c2=p1
        ;
        ; 4 variables with different angles for 4 different colors
        ;
  black=(1,0), white=(-1,0), gray=(0,1), other=(0,-1)
  :
  iter=iter+1
        ;
        ; iterate first point, if it hasn't already escaped
        ;
  IF (iter1==0)
    z1=z1^n+c1
          ;
          ; set bailout counter if first point escaped
          ;
    IF (|z1|>bailout)
      iter1=iter
    ENDIF
  ENDIF
        ;
        ; iterate second point, if it hasn't already escaped
        ;
  IF (iter2==0)
    z2=z2^n+c2
          ;
          ; set bailout counter if second point escaped
          ;
    IF (|z2|>bailout)
      iter2=iter
    ENDIF
  ENDIF
        ;
        ; if both points escaped, perform "embossing"
        ;
  IF ((iter1>0)&&(iter2>0))
    done=1
          ;
          ; color "black" if first point escaped first
          ;
    IF (iter1<iter2)
      z=black
          ;
          ; color "white" if second point escaped first
          ;
    ELSEIF (iter2<iter1)
      z=white
          ;
          ; color "gray" if both points escaped at same time
          ;
    ELSE
      z=gray
    ENDIF
  ENDIF
        ;
        ; otherwise, assign z to "other"
        ;
  IF (iter==maxit)
    done=1
    z=other
  ENDIF
        ;
        ; continue if nothing happened
        ;
  done==0
  ;SOURCE: emboss.frm
}


emboss-iter_genman {; Kerry Mitchell 19sep98
        ;
        ; For an explanation of Kerry Mitchell's "embossing" formulas,
        ;   see the end of formula "emboss-iter_man"
        ;
        ; "embossing" coloring scheme based on iteration levels
        ; general Mandelbrot version:  z=z^n+c
        ;
        ; real(p1) = bailout
        ; imag(p1) = n
        ;
        ; real(p2) = size of contour band
        ; imag(p2) = light source angle, in degrees
        ; use decomp=256 coloring, only 4 colors used
        ;
        ; initialize counters
        ;
  iter=1, done=0
  c=pixel, bailout=real(p1), n=imag(p1)
        ;
        ; first point is offset from pixel by lightangle
        ; second point is offset from pixel by (lightangle+180 deg)
        ;
  size=real(p2), lightangle=imag(p2)*pi/180
  dr=size*(cos(lightangle)+flip(sin(lightangle)))
  c1=pixel-dr, iter1=0, z1=0
  c2=pixel+dr, iter2=0, z2=0
        ;
        ; 4 variables with different angles for 4 different colors
        ;
  black=(1,0), white=(-1,0), gray=(0,1), other=(0,-1)
  :
  iter=iter+1
        ;
        ; iterate first point, if it hasn't already escaped
        ;
  IF (iter1==0)
    z1=z1^n+c1
          ;
          ; set bailout counter if first point escaped
          ;
    IF (|z1|>bailout)
      iter1=iter
    ENDIF
  ENDIF
        ;
        ; iterate second point, if it hasn't already escaped
        ;
  IF (iter2==0)
    z2=z2^n+c2
          ;
          ; set bailout counter if second point escaped
          ;
    IF (|z2|>bailout)
      iter2=iter
    ENDIF
  ENDIF
        ;
        ; if both points escaped, perform "embossing"
        ;
  IF ((iter1>0)&&(iter2>0))
    done=1
          ;
          ; color "black" if first point escaped first
          ;
    IF (iter1<iter2)
      z=black
          ;
          ; color "white" if second point escaped first
          ;
    ELSEIF (iter2<iter1)
      z=white
          ;
          ; color "gray" if both points escaped at same time
          ;
    ELSE
      z=gray
    ENDIF
  ENDIF
        ;
        ; otherwise, assign z to "other"
        ;
  IF (iter==maxit)
    done=1
    z=other
  ENDIF
        ;
        ; continue if nothing happened
        ;
  done==0
  ;SOURCE: emboss.frm
}


emboss-iter_jul {; Kerry Mitchell 11sep98
        ;
        ; For an explanation of Kerry Mitchell's "embossing" formulas,
        ;   see the end of formula "emboss-iter_man"
        ;
        ; "embossing" coloring scheme based on iteration levels
        ;
        ; uses elliptical bailout:  [real(z)*a]^2+[imag(z)*b]^2
        ; p1 = c = Julia parameter
        ; real(p2) = a <= 1
        ; imag(p2) = b <= 1
        ; a = b = 1 for strict bailout
        ;
        ; real(p3) = size of contour band
        ; imag(p3) = light source angle, in degrees
        ; use decomp=256 coloring, only 4 colors used
        ;
        ; initialize counters
        ;
  iter=1, done=0
        ;
        ; set up elliptical parameters
        ;
  c=p1, r=4*cabs(c), r=sqrt(1+r), bailout=|(1+r)/2|
  a=real(p2), b=imag(p2)
        ;
        ; first point is offset from pixel by lightangle
        ; second point is offset from pixel by (lightangle+180 deg)
        ;
  size=real(p3), lightangle=imag(p3)*pi/180
  dr=size*(cos(lightangle)+flip(sin(lightangle)))
  z1=pixel-dr, iter1=0, c1=p1
  z2=pixel+dr, iter2=0, c2=p1
        ;
        ; 4 variables with different angles for 4 different colors
        ;
  black=(1,0), white=(-1,0), gray=(0,1), other=(0,-1)
  :
  iter=iter+1
        ;
        ; iterate first point, it is hasn't already escaped
        ;
  IF (iter1==0)
    z1=sqr(z1)+c1, r=|real(z1)*a|+|imag(z1)*b|
          ;
          ; set bailout counter if first point escaped
          ;
    IF (r>bailout)
      iter1=iter
    ENDIF
  ENDIF
        ;
        ; iterate second point, it is hasn't already escaped
        ;
  IF (iter2==0)
    z2=sqr(z2)+c2, r=|real(z2)*a|+|imag(z2)*b|
          ;
          ; set bailout counter if second point escaped
          ;
    IF (r>bailout)
      iter2=iter
    ENDIF
  ENDIF
        ;
        ; if both points escaped, perform "embossing"
        ;
  IF ((iter1>0)&&(iter2>0))
    done=1
          ;
          ; color "black" if first point escaped first
          ;
    IF (iter1<iter2)
      z=black
          ;
          ; color "white" if second point escaped first
          ;
    ELSEIF (iter2<iter1)
      z=white
          ;
          ; color "gray" if both points escaped at same time
          ;
    ELSE
      z=gray
    ENDIF
  ENDIF
        ;
        ; otherwise, assign z to "other"
        ;
  IF (iter==maxit)
    done=1
    z=other
  ENDIF
        ;
        ; continue if nothing happened
        ;
  done==0
  ;SOURCE: emboss.frm
}


emboss-iter_man {; Kerry Mitchell 11sep98
        ;
        ; An explanation of Kerry Mitchell's "embossing" formulas
        ;   is at the end of this formula
        ;
        ; "embossing" coloring scheme based on iteration levels
        ; Mandelbrot version
        ;
        ; uses elliptical bailout:  [real(z)*a]^2+[imag(z)*b]^2
        ; real(p1) = a <= 1
        ; imag(p1) = b <= 1
        ; a = b = 1 for strict bailout
        ;
        ; real(p2) = size of contour band
        ; imag(p2) = light source angle, in degrees
        ; use decomp=256 coloring, only 4 colors used
        ;
        ; initialize counters
        ;
  iter=1, done=0
        ;
        ; set up elliptical parameters
        ;
  c=pixel, r=4*cabs(c), r=sqrt(1+r), bailout=|(1+r)/2|
  a=real(p1), b=imag(p1)
        ;
        ; first point is offset from pixel by lightangle
        ; second point is offset from pixel by (lightangle+180 deg)
        ;
  size=real(p2), lightangle=imag(p2)*pi/180
  dr=size*(cos(lightangle)+flip(sin(lightangle)))
  c1=pixel-dr, iter1=0, z1=0
  c2=pixel+dr, iter2=0, z2=0
        ;
        ; 4 variables with different angles for 4 different colors
        ;
  black=(1,0), white=(-1,0), gray=(0,1), other=(0,-1)
  :
  iter=iter+1
        ;
        ; iterate first point, it is hasn't already escaped
        ;
  IF (iter1==0)
    z1=sqr(z1)+c1, r=|real(z1)*a|+|imag(z1)*b|
          ;
          ; set bailout counter if first point escaped
          ;
    IF (r>bailout)
      iter1=iter
    ENDIF
  ENDIF
        ;
        ; iterate second point, it is hasn't already escaped
        ;
  IF (iter2==0)
    z2=sqr(z2)+c2, r=|real(z2)*a|+|imag(z2)*b|
          ;
          ; set bailout counter if second point escaped
          ;
    IF (r>bailout)
      iter2=iter
    ENDIF
  ENDIF
        ;
        ; if both points escaped, perform "embossing"
        ;
  IF ((iter1>0)&&(iter2>0))
    done=1
          ;
          ; color "black" if first point escaped first
          ;
    IF (iter1<iter2)
      z=black
          ;
          ; color "white" if second point escaped first
          ;
    ELSEIF (iter2<iter1)
      z=white
          ;
          ; color "gray" if both points escaped at same time
          ;
    ELSE
      z=gray
    ENDIF
  ENDIF
        ;
        ; otherwise, assign z to "other"
        ;
  IF (iter==maxit)
    done=1
    z=other
  ENDIF
        ;
        ; continue if nothing happened
        ;
  done==0
;*****KERRY MITCHELL'S EXPLANATION OF HIS "EMBOSSING" FORMULAS*********
;
;           narrative copyright Kerry Mitchell 11sep98
;
;     Related formulas:
;        emboss-iter_man (above)
;        emboss-iter_jul
;        emboss-iter_newtex
;        emboss-iter_newtn
;        emboss-iter_genjul 
;        emboss-iter_genman
;
; Embossing
;
; Notary Publics and other important folks use embossing as a way of
; marking official papers.  The embossing die puts a series of crimps
; onto the paper.  This doesn't change the color of the paper, but
; makes hills and valleys that are visible as highlights and shadows.
; The "embossing" coloring method has a similar effect.  Typically, the
; majority of the image is a middle gray.  Contour bands (such as those
; between regions of constant dwell) are colored black and white,
; resembling shadows and highlights, respectively.  Performed correctly,
; this gives a very convincing 3D effect to the image, reminiscent of a
; topographical map or architectural model.
;
; In general, embossing requires 2 test points for each pixel, and
; some discrete variable (call it D for this explanation).  If D is the
; same for both test points (D1 = D2), then the pixel is colored middle
; gray.  If D for the first test point is less than D for the second
; point (D1 < D2), then the pixel is colored black.  Otherwise, D1 > D2,
; and the pixel is colored white.  For example (B = black, W = white,
; G = gray):
;
; D1 (first test point):   1  23  45   2   5   9  34   0   1  19
; D2 (second test point):  1  22  45   2   5  10  34   0   2  18
; pixel color:             G   W   G   G   G   B   G   G   B   W
;
; In the present method, the test points are placed on either side of
; the pixel.  Exactly where is determined by 2 parameters, the "size"
; and "lightangle".  The apparant size of the contour bands in the
; image depends on how far apart the test points are, related to "size".
; Using a larger size will result in bigger, more dramatic bands.
; However, using large bands, particularly with decomp turned off, can
; lead to "seeing double" in your fractal.  Typically, size=0.005 to
; 0.01 works well for full-scale images (magnification=0.66667), and
; it should be decreased as the magnification increases.
;
; The relative location of the highlights and shadows on a real embossed
; sheet depends on from where the light is coming.  This is simulated
; with the "lightangle" parameter.  Using a value of 0 would show
; highlights on the right side (0 degrees) and shadows on the left side
; (180 degrees).  The highlights generally appear in the same direction
; given by lightangle; the shadows are generally on the other side, 180
; degrees away.
;
; The discrete variable used here is the iteration number:  how many
; iterations before the orbits escape.  Colors are determined by assigning
; z one of 4 values, each of which has a different polar angle.  Then,
; using "decomp=256" coloring will make each case show up clearly.  If
; both test points have escaping orbits, then the pixel is colored one
; color (z = "black") if the 1st point escapes first, a 2nd color
; ("white") if the 2nd point escapes first, and a 3rd color ("gray")
; if they both escape on the same iteration.  If both orbits don't escape
; before the maximum number of iterations is reached, then the pixel is
; colored using a 4th color (z = "other").  Of course, the colors that
; actually show up in your image will depend on your color palette.
;
; To add more flexibility, an elliptical bailout condition is used.  In
; a typical Mandelbrot calculation, iteration ceases when |z| > bailout,
; which means
;
;         [real(z)]^2 + [imag(z)]^2 > bailout.
;
; This gives a bailout boundary that is a circle.  By changing the
; relative weights of real(z) and imag(z):
;
;         [a*real(z)]^2 + [b*imag(z)]^2 > bailout,
;
; the bailout boundary is changed to an ellipse.  The relative sizes
; of a and b will determine the eccentricity of the ellipse (long vs.
; circular vs. tall), and the minimum of a and b will determine how
; big the bailout ellipse is.  For example, small a and large b would
; weigh the imaginary part more heavily in the bailout determination.
; For best results, a and b should both be <= 1.  This method also uses
; the "strict" bailout condition:  if a and b are both = 1, then the
; bailout radius depends on the magnitude of c.  This brings the
; iteration contours closer together when c is small.  Since this
; method emphasizes the contours so much, the more precise condition
; was chosen.
;
; Other discrete quantities can be used in this method, and continuous
; variables can be made discrete by using the round() and trunc()
; functions.  But this is work for another time.  Until then, play
; notary public in your own fractal jurisdiction and emboss away!
;
  ;SOURCE: emboss.frm
}


emboss-iter_newtex {; Kerry Mitchell 10oct98
        ;
        ; For an explanation of Kerry Mitchell's "embossing" formulas,
        ;   see the end of formula "emboss-iter_man"
        ;
        ; named changed from emboss-iter_newtexplog because that 
        ;  name has more than the maximum 18 characters permitted
        ;  by Fractint. George Martin 10/98
        ;
        ; real(p1) = bailout
        ;
  bailout=real(p1)
        ;
        ; real(p2) = size of contour band
        ; imag(p2) = light source angle, in degrees
        ; use decomp=256 coloring, only 4 colors used
        ;
        ; initialize counters
        ;
  iter=1, done=0
        ;
        ; first point is offset from pixel by lightangle
        ; second point is offset from pixel by (lightangle+180 deg)
        ;
  size=real(p2), lightangle=imag(p2)*pi/180
  dr=size*(cos(lightangle)+flip(sin(lightangle)))
  z1=pixel-dr, iter1=0
  z2=pixel+dr, iter2=0
        ;
        ; 4 variables with different angles for 4 different colors
        ;
  black=(1,0), white=(-1,0), gray=(0,1), other=(0,-1)
  :
  iter=iter+1
        ;
        ; iterate first point, if it hasn't already escaped
        ;
  IF (iter1==0)
    fp=exp(z1), f=fp-log(z1), fp=fp-1/z1, dz=f/fp, z1=z1-dz
          ;
          ; set bailout counter if first point escaped
          ;
    IF (|dz|<bailout)
      iter1=iter
    ENDIF
  ENDIF
        ;
        ; iterate second point, if it hasn't already escaped
        ;
  IF (iter2==0)
    fp=exp(z2), f=fp-log(z2), fp=fp-1/z2, dz=f/fp, z2=z2-dz
          ;
          ; set bailout counter if second point escaped
          ;
    IF (|dz|<bailout)
      iter2=iter
    ENDIF
  ENDIF
        ;
        ; if both points escaped, perform "embossing"
        ;
  IF ((iter1>0)&&(iter2>0))
    done=1
          ;
          ; color "black" if first point escaped first
          ;
    IF (iter1<iter2)
      z=black
          ;
          ; color "white" if second point escaped first
          ;
    ELSEIF (iter2<iter1)
      z=white
          ;
          ; color "gray" if both points escaped at same time
          ;
    ELSE
      z=gray
    ENDIF
  ENDIF
        ;
        ; otherwise, assign z to "other"
        ;
  IF (iter==maxit)
    done=1
    z=other
  ENDIF
        ;
        ; continue if nothing happened
        ;
  done==0
  ;SOURCE: emboss.frm
}


emboss-iter_newtn {; Kerry Mitchell 11sep98
        ;
        ; For an explanation of Kerry Mitchell's "embossing" formulas,
        ;   see the end of formula "emboss-iter_man"
        ;
        ; real(p1) = bailout
        ; imag(p1) = exponent
        ;
  n=imag(p1), nm1=n-1, recipn=1/n
  bailout=real(p1), scale=nm1
        ;
        ; real(p2) = size of contour band
        ; imag(p2) = light source angle, in degrees
        ; use decomp=256 coloring, only 4 colors used
        ;
        ; initialize counters
        ;
  iter=1, done=0
        ;
        ; first point is offset from pixel by lightangle
        ; second point is offset from pixel by (lightangle+180 deg)
        ;
  size=real(p2), lightangle=imag(p2)*pi/180
  dr=size*(cos(lightangle)+flip(sin(lightangle)))
  z1=pixel-dr, iter1=0
  z2=pixel+dr, iter2=0
        ;
        ; 4 variables with different angles for 4 different colors
        ;
  black=(1,0), white=(-1,0), gray=(0,1), other=(0,-1)
  :
  iter=iter+1
        ;
        ; iterate first point, if it hasn't already escaped
        ;
  IF (iter1==0)
    fp=z1^nm1, f=z1*fp+1, dz=f/fp*recipn, z1=z1-dz
          ;
          ; set bailout counter if first point escaped
          ;
    IF (|dz|<bailout)
      iter1=iter
    ENDIF
  ENDIF
        ;
        ; iterate second point, if it hasn't already escaped
        ;
  IF (iter2==0)
    fp=z2^nm1, f=z2*fp+1, dz=f/fp*recipn, z2=z2-dz
          ;
          ; set bailout counter if second point escaped
          ;
    IF (|dz|<bailout)
      iter2=iter
    ENDIF
  ENDIF
        ;
        ; if both points escaped, perform "embossing"
        ;
  IF ((iter1>0)&&(iter2>0))
    done=1
          ;
          ; color "black" if first point escaped first
          ;
    IF (iter1<iter2)
      z=black
          ;
          ; color "white" if second point escaped first
          ;
    ELSEIF (iter2<iter1)
      z=white
          ;
          ; color "gray" if both points escaped at same time
          ;
    ELSE
      z=gray
    ENDIF
  ENDIF
        ;
        ; otherwise, assign z to "other"
        ;
  IF (iter==maxit)
    done=1
    z=other
  ENDIF
        ;
        ; continue if nothing happened
        ;
  done==0
  ;SOURCE: emboss.frm
}


Ent {; Scott Taylor
     ; Try params=.5/.75 and the first function as exp.
     ; Zoom in on the swirls around the middle.  There's a
     ; symmetrical area surrounded by an asymmetric area.
  z = Pixel, y = fn1(z), base = log(p1):
  z = y * log(z)/base
  |z| <= 4
  ;SOURCE: fractint.frm
}


Ent2 {; Scott Taylor
      ; try params=2/1, functions=cos/cosh, potential=255/355
  z = Pixel, y = fn1(z), base = log(p1):
  z = fn2( y * log(z) / base )
  |z| <= 4
  ;SOURCE: fractint.frm
}


ep13 {
  z=pixel, d=real(z*(1/p1)):
  z=(fn3(fn1(z+(d)+whitesq)+fn2(z*(z^p3/d)))/fn4(z))+whitesq
  |z|<4
  ;SOURCE: ad5.frm
}


ep14c {
  z=pixel:
  z=(fn3(fn1(z)+fn2(z-(z^p3/z)))/fn4(z))+whitesq
  |tan(z-1)|<4
  ;SOURCE: ad5.frm
}


ep14d {
  z=pixel, a=z/(p1*tan(z/p3)):
  z=(fn3(fn1(a/conj(z+(whitesq))+fn2(p2-(a+z/p3))*fn4(z))+whitesq))
  |z|<4
  ;SOURCE: ad5.frm
}


ep14i {
  z=pixel, a=cos(z)^p2, b=z+(p1-tan(z/p3)):
  z=(fn3((fn1(a*b)+fn2(a*b-(z^p3/z))))/fn4(z-1)+whitesq)
  |z|<a
  ;SOURCE: ad5.frm
}


ep14ix {
  z=pixel:
  a=(cos(z)/p2), b=z*(p1-tan(z/p3))
  z=(fn3((fn1(a*b+(whitesq))+fn2(a*b-(z^p3/z))))/1-fn4(z-1))
  |z|<4
  ;SOURCE: ad5.frm
}


ep15 {
  z=pixel, a=cotan(z)^p2, b=z+(p1-tan(z/p3)):
  IF(a<=b-p2)
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ELSEIF(b<=a/p3)
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ELSE
    z=(fn3(fn1(z+(a)+whitesq)+fn2(b+(z^p3/a)))/fn4(z))+whitesq
  ENDIF
  |z|<=4&&|z-1|<(4+p3)
  ;SOURCE: ad5.frm
}


ep16 {
  z=pixel, a=cotan(z)^p2, b=z/(p1-tan(z/p3)):
  IF(a<=b-p2)
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ELSEIF(b<=a/p3)
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ELSE
    z=(fn3(fn1(z+(a)+whitesq)+fn2(b+(z^p3/a)))/fn4(z))+whitesq
  ENDIF
  |z|<=4
  ;SOURCE: ad5.frm
}


ep17 {
  z=pixel, a=cotan(z)^p2, b=z*(p1-tan(z/p3)):
  IF(fn1(a)<fn2(b-p2))
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ELSEIF(fn1(b)<fn2(a/p3))
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ELSE
    z=(fn3(fn1(z*(a)+whitesq)*fn2(b-(z^p3/a)))/fn4(z))
  ENDIF
  |z|<4
  ;SOURCE: ad5.frm
}


ep17ax {
  z=pixel, a=cotan(z)^p2, b=z*(p1-tan(z/p3)):
  IF (fn1(a)<=fn1(b-p2))
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ELSEIF (fn1(b)<=a/p3)
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ELSE
    z=(fn3(fn1(z*(a)+whitesq)*fn2(b/(z^p3/a)))/fn4(z))
  ENDIF
  ;SOURCE: ad5.frm
}


ep18x {
  z=pixel, a=cotan(z)^p2, b=z*(p1-tan(z/p3)):
  IF (b<(z/p2)+a)
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ELSEIF (b<=z/p3+a)
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ELSE
    z=(fn3(fn1(z+(a)+whitesq)+fn2(b+(z^p3/a)))/fn4(z))+whitesq
  ENDIF
  |z|<4
  ;SOURCE: ad7.frm
}


ep18y {
  z=pixel, a=cotan(z)^p2, b=z*(p1-tan(z/p3)):
  IF (b<(z/p2)+a)
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ELSEIF (b<=z/p3+a)
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ELSE
    z=(fn3(fn1(z+(a)+whitesq)+fn2(b+(z^p3/a)))/fn4(z))+whitesq
  ENDIF
  |z|<=iter+(z+1)
  ;SOURCE: ad7.frm
}


ep18z {
  z=pixel, a=cotan(z)/p2, b=z*(p1-tan(z/p3)):
  IF (b>(z+p2)*a)
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ELSEIF (b>z/p3*1/a)
    z=(fn3(fn1(a/z-1)+fn2(b*(z+(fn2(1/z)*p3)/z)))/fn4(z)+whitesq)
  ELSE
    z=(fn3(fn1(z+(a)+whitesq)+fn2(b+(z^p3/a)))/fn4(z))+whitesq
  ENDIF
  |z|<4
  ;SOURCE: ad7.frm
}


ep19x {
  z=pixel, a=cotan(z)^p2, b=z*(p1-tan(z/p3)+whitesq):
  IF (fn1(a)<fn2(1/b)*p2)
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ENDIF
  IF (fn1(b)<fn2(1/(a+p1)/p3))
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z))
  ENDIF
  z=(fn3(fn1(z+(a)+whitesq)*fn2(b+(z^p3/a)))/fn4(z))+whitesq
  |z|<4
  ;SOURCE: ad5.frm
}


ep19y0 {
  z=pixel, a=cotan(z)^p2, b=z*(p1-tan(z/p3)+whitesq):
  z=(fn3(fn1(z+(a)+whitesq)*fn2(b+(z^p3/a)))/fn4(z))+whitesq
  |z|<4
  ;SOURCE: ad7.frm
}


ep20 {
  z=pixel, a=cotan(z)^p2, b=z*(p1-tan(z/p3)):
  IF ((a)<fn2(z/p2))
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ENDIF
  z=(fn3(fn1(z+(a)+whitesq)*fn2(b+(z^p3/a)))/fn4(z))+whitesq
  |z|<=4
  ;SOURCE: ad5.frm
}


ep20x {
  z=pixel, a=cotan(z)^p2, b=z*(p1-tan(z/p3)):
  IF (fn1(a)<fn2(z/p2))
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ELSE
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ENDIF
  z=(fn3(fn1(z+(a)+whitesq)+fn2(b+(z^p3/a)))/fn4(z))+whitesq
  |z|<4
  ;SOURCE: 97msg.frm
}


ep20z {
  z=pixel, a=1-cotan(z)^p2, b=z*(p1-tan(z/p3)):
  IF (fn1(a)<=fn2(b/p2))
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ENDIF
  IF (fn1(b)<=fn2(a/p3))
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ENDIF
  z=(fn3(fn1(z+(a)+whitesq)*fn2(b*(z/a)))/fn4(z))+whitesq
  |z-1|<4
  ;SOURCE: ad5.frm
}


ep20z0 {
  z=pixel, a=cotan(z)^p2, b=z*(p1-tan(z/p3)):
  z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  |z-1|<4
  ;SOURCE: ad5.frm
}


ep20z1 {
  z=pixel, a=cotan(z)^p2, b=z*(tan(z/p3)):
  IF (fn1(a)<=fn2(b/p2)/p3)
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ENDIF
  IF (fn1(b)/p2<=fn2(a/p3))
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ENDIF
  z=(fn3(fn1(z+(a)+whitesq)*fn2(b*(z/a))))
  |z-1|<4
  ;SOURCE: ad5.frm
}


ep20z3 {
  z=pixel, a=cotan(z)^p2, b=z*(tan(z/p3)):
  IF (fn1(a)<=fn2(b/p2)/p3)
    z1=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ENDIF
  IF (fn1(b)/p2<=fn2(a/p3))
    z1=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ENDIF
  z=(fn3(fn1(z1+(b))+fn2(b*(z/a))))
  |z|<4
  ;SOURCE: ad5.frm
}


ep20z5 {
  z=pixel, a=(fn1((1-(z+1))*p2)/p3), b=fn2((cos(z+1)*p2)/p3):
  IF (a<=(z/p2)^2)
    z=(fn3(fn1(a-p1)+fn2(b-(z^p3/z)))*fn4(z)+whitesq)
  ELSEIF(b<=((z/p3)^2)+(p1*2))
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))*fn4(z)+whitesq)
  ELSE
    z=(fn3(fn1(z+(a)+whitesq)+fn2(b+(z^p3/a)))*fn4(z))+whitesq
  ENDIF
  |z|<=4
  ;SOURCE: ad7.frm
}


ep20z7 { 
  IF ((p1) == 0)
    p1 = (.03,1.1)
  ENDIF
  IF ((p2) == 0)
    p2 = (1.28,.2)
  ENDIF
  z = pixel, c = pixel, done = 5, il2 = 1/log(2.0)
  lp = log(log((p2))):
  z2 = sqr(z)
  z = z2 + c
  done = done -tan(z)
  IF (|z| > (p2))
    z = (done + 2*il2*lp - il2*log(log(cabs(z)))) * (p1) - done
    done = fn4(z-1)+whitesq
  ENDIF
  done >= 4
  ;SOURCE: ad5.frm
}


ep20z9 {; modified DAmien Jones frm 
  IF (real(p1) == 0)
    p1 = 1
  ENDIF
  IF (real(p2) == 0)
    p2 = 128
  ENDIF
  z = pixel, c = pixel, done = 0
  il2 = p3/log(2.0), lp = imag(log(real(p2))):
  z2 = log(z)
  z = fn2(z2 + c)
  done = fn3(done + 1)+whitesq
  IF (|z| > real(p2))
    z = (done + 2*il2*lp - il2*log(cotan(abs(z)))) * real(p1) - done
    done = -1
  ENDIF
  done >= 0
  ;SOURCE: ad7.frm
}


epanal {
  z=pixel :
  oldz=z
  z=fn1(oldz)
  real(p1)<=|z-oldz|
  ;SOURCE: 99msg.frm
}


Epsilon_Rot {; epsiloncross test rotated 45 degrees
  z=c=pixel:
  z=z*z+c
  r=real(z), i=imag(z)
  IF ((((r-i)>-0.01) && ((r-i)<0.01)) || (((r+i)>-0.01) && ((r+i)<0.01)))
    z=1E6            ; forces escape
  ENDIF
  |z| < 4
  ;SOURCE: 99msg.frm
}


EpsilonCross (XAXIS) {; Warut Roonguthai - Fractal Report 31/16-17
                      ; try p1 = 0.01
  z = pixel:
  z = z * z + pixel
  |z| <= 4 && abs(real(z)) > p1 && abs(imag(z)) > p1
  ;SOURCE: epscr.frm
}


EpsilonCrossJ {; Julia version - Jon Horner
               ; try p1 = (0.1,0.1), p2 = 0.05
  z = pixel, c = p1 :
  z = z * z + p1
  |z| <= 4 && abs(real(z)) > p2 && abs(imag(z)) > p2
  ;SOURCE: epscr.frm
}


Eqn6_R4 {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = size factor
    ; imag(p1) = number of iterations to skip
    ; real(p2) = number of color ranges
    ; imag(p2) = number of colors in a range
    ;
  z = w = iter = range_num = bailout = 0
  c = pixel
  size = real(p1)
  skip_iters = imag(p1)
  num_ranges = real(p2)
  colors_in_range = imag(p2)
  index_factor = (colors_in_range - 1) / size
  :
  w = c * ((w - 1)^2) / ((w + 1)^2)
    ;
  IF (iter > skip_iters)
    dist = abs(|w - k| - 0.1)
    IF (dist < size)
      bailout = 1
    ENDIF
  ENDIF
  IF (bailout)
    z = index_factor * dist + range_num * colors_in_range + 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0  && |w| < 1.0e20
  ;SOURCE: 98msg.frm
}


Eqn_5 {; Copyright (c) Paul W. Carlson, 1998
    ; Always use float=y, outside=summ
    ;
    ; real(p1) = escape circle radius squared
    ; imag(p1) = 0 if Mset, non-zero if Julia set
    ; p2       = Julia set coordinates
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
  z = iter = range_num = bailout = 0
  IF (imag(p1) != 0)
    w = pixel
    c = p2
  ELSE
    w = 0
    c = pixel
  ENDIF
  prev_modw2 = 1.0e20
  rad2 = real(p1)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  colors_in_range_1 = colors_in_range - 1
  :
  w2 = w * w
  w = c * (1 - w2) / (1 + w2)
    ;
  IF ((prev_modw2 < rad2) * (|w| > rad2))
    bailout = 1
    index = colors_in_range_1 * (rad2 - prev_modw2) / rad2
    z = index + range_num * colors_in_range + 1
  ENDIF
  prev_modw2 = |w|
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0
  ;SOURCE: 98msg.frm
}


EqTrngl {; Here is another example of the Sierpinsky triangle, 
         ; but this one is an equilateral Triangle.. once again, 
         ; use p1=2 to get the triangle.. also
         ; you can use p1=(1.9,-.7) to get some strange thing
  z=pixel, j=(0, -1), k=(.8660, 0.5), l=(-0.8660, 0.5):
  x=real(z)
  y=imag(z)
  r=.575*x
  x1=(y>=r)
  x2=(-r<=y)
  x3=(x1 && x2)
  x4=(x3==0)
  a=x3*j
  b=(x<=0)*x4*k
  c=(x>0)*x4*l
  p=a+b+c
  z=p1*z+p
  |z|<=100
  ;SOURCE: esc-ifs.frm
}


equ {
  z=Pixel:
  z=tan(z)/sin(cos(z))
  real(z)/Imag(z) < real(p1)
  ;SOURCE: 99msg.frm
}


EULER {; Ray Girvan, May 1996 
       ; after Szyszkowicz 
       ; try p1=1, p2=0.005
  z=pixel, h=p1, k=p2:
  x=real(z), y=imag(z)
  z1=z
  x1=x+h*sin(y)
  y1=y+h*sin(x)
  z=x1+flip(y1)
  |z-z1| >= k
  ;SOURCE: 97msg.frm
}


Euler2_3Way {; Copyright (c) Paul W. Carlson, 1998
    ; real(p3) = escape circle radius squared
    ; imag(p3) = number of iterations to skip
  z = iter = k = range_num = bailout = 0
  w = fn1(pixel)
  prev_modw2 = 1.0e20
  rad2 = real(p3)
  skip_iters = imag(p3)
  num_ranges = 8
  colors_in_range = 30
  colors_in_range_1 = colors_in_range - 1:
    ;
    ;;;;;;;;;; Gedeon's Euler2 equation ;;;;;;;;;;;;;
  w=fn2(w^p1) + p2 * fn3(exp(imag(w) * pi) - 1)
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  IF ((prev_modw2 < rad2) && (|w| > rad2))
    bailout = 1
    IF (iter > skip_iters)
      k = 1
    ENDIF
    index = colors_in_range_1 * (rad2 - prev_modw2) / rad2
    z = (index + range_num * colors_in_range + 1) * k
  ENDIF
  prev_modw2 = |w|
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| <= rad2
  ;SOURCE: 98msg.frm
}


Euler_3Way {; Copyright (c) Paul W. Carlson, 1998
    ; real(p3) = escape circle radius squared
    ; imag(p3) = number of iterations to skip
  z = iter = k = range_num = bailout = 0
  w = fn1(pixel)
  prev_modw2 = 1.0e20
  rad2 = real(p3)
  skip_iters = imag(p3)
  num_ranges = 8
  colors_in_range = 30
  colors_in_range_1 = colors_in_range - 1:
    ;
    ;;;;;;;;;; Gedeon's Euler equation ;;;;;;;;;;;;;
  w=fn2(w^p1) + p2 * fn3(exp(imag(w) * pi) + 1)
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  IF ((prev_modw2 < rad2) && (|w| > rad2))
    bailout = 1
    IF (iter > skip_iters)
      k = 1
    ENDIF
    index = colors_in_range_1 * (rad2 - prev_modw2) / rad2
    z = (index + range_num * colors_in_range + 1) * k
  ENDIF
  prev_modw2 = |w|
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| <= rad2
  ;SOURCE: 98msg.frm
}


EvilEyeC (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=sin(z)+pixel
  ELSE
    z=cosxx(z)+pixel
  ENDIF
  x=|z|
  x<=4
  ;SOURCE: choice.frm
}


EvilEyeC.1 (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=sin(z)+pixel
  ELSE
    z=cos(z)+pixel
  ENDIF
  x=|z|
  x<=4
  ;SOURCE: choice.frm
}


ex1csecdav {
  del = P1 + 0.0001
  z = pixel:
  n = z - cos(z)
  d = (n - (z -del - cos(z - del)))/del
  z = z - n/(d+P2)
  0.0001 <= |n|
  ;SOURCE: davweird.frm
}


Ex20Newc (XAXIS) {
  z = pixel, c = pixel:
  z2 = z*z + p1
  ex = exp(p2*z)
  cs = cos(z)
  sn = sin(z)
  n = log(z2) - ex*cs
  d1 = 2*z/z2
  d2 = cs*p2*ex - sn*ex
  z = z - n/(d1 + c*d2)
  0.1 <= |n|
  ;SOURCE: davweird.frm
}


ex4csecdav {
  del = P2 + 0.0001
  z = pixel
  zd = z + del:
  n = exp(z) + 2^(-z) - 2*cos(z) - 6
  nd = exp(zd) + 2^(-zd) - 2*cos(zd) - 6
  d = (n - nd)/del
  z = z - n/(d + P1)
  0.01 <= |n|
  ;SOURCE: davweird.frm
}


ex4cwithP1 {; Amended for Fractint v20 by G. Martin
  z = pixel:
  ex = exp(z)
  z2 = 2^(-z)
  n = ex + z2 - 2*cos(z) - 6
  d = ex + z2*0.69314718 + 2*sin(z) + P1
  z = z - n/d
  0.001 <= |n|
  ;SOURCE: davweird.frm
}


ex4cwithP1temple {; Amended for Fractint v20 by G. Martin
  z = pixel:
  ex = exp(z)
  z2 = 2^(-z)
  n = ex + z2 - 2*cos(z) - 6
  d = ex + z2*0.69314718 + 2*sin(z) + P1
  z = z - n/d
  0.01 <= |n|
  ;SOURCE: davweird.frm
}


examplej {
  z=pixel:
  z=z^2-p1
  |z|<100
  ;SOURCE: sample.frm
}


examplem {
  z=c=pixel:
  z=z^2-c
  |c|<100
  ;SOURCE: sample.frm
}


Exipi (XAXIS) {
  s = log(-1.,0.) / (0.,1.), z = Pixel:
  z = z ^ s + pixel
  |z| <= 100
  ;SOURCE: fractint.frm
}


EXOTIC {; Paul Dickins - May 1993
        ; A good fractal to explore
  z = pixel, z = sqr(z)^sqr(z)-abs(pixel):
  z = z + pixel
  z = sqr(z)^sqr(z)-abs(pixel)
  |z| <= p2+4
  ;SOURCE: paul.frm
}


Exp02-01 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types
          ; Inspired by Clifford A. Pickover 
          ;
          ; Dynamic (Euler method)
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Fx=exp(-x)
  Fy=exp(-y)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Exp02-02 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Clifford A. Pickover:
          ; Dynamic
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  bailout=p1+4, z=pixel:
  z=exp(-z)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Exp02-03 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Rob Dem Braseem:
          ; Escape  (Julia)
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  const=p1, z=pixel:
  z=const+(exp(-z))
  |z|<100
  ;SOURCE: chby3.frm
}


Exp02-04 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Rob Dem Braseem:
          ; Escape  (Mandelbrot)
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  const=pixel, z=p1:
  z=const+(exp(-z))
  |z|<100
  ;SOURCE: chby4.frm
}


Exp02-05 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Chris Green:
          ; Newton Method
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(-z)
  f=ez
  fd=-ez
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Exp02-06 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Chris Green:
          ; Halley Method
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(-z)
  f=ez
  fd=-ez
  fdd=ez
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Exp02-07 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Bradley Beacham
          ; Cubic Method
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(-z)
  f=ez
  fd=-ez
  oz=z
  w=z-f/fd
  fw=exp(-w)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Exp02-08 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Clifford A. Pickover:
          ; Dynamic (modified Euler method)
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(exp(-x))
  Ty=sin(exp(-y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Exp02-09 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Clifford A. Pickover:
          ; Dynamic (modified Euler Method)
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(exp(-x))
  Ty=fn1(exp(-y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Exp02-10 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Mike Wareman:
          ; Secant Method
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=exp(-p1):
  zt=z
  foz=fz
  fz=(exp(-z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Exp02-11 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Rob Dem Braseem:
          ; Escape  (Julia)
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  const=p1, z=pixel:
  z=const*(exp(-z))
  |z|<100
  ;SOURCE: chby11.frm
}


Exp02-12 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Rob Dem Braseem:
          ; Escape  (Mandelbrot)
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  const=pixel, z=p1:
  z=const*(exp(-z))
  |z|<100
  ;SOURCE: chby12.frm
}


Exp02-13 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Chris Green:
          ; Halley Method with weird bailout test
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(-z)
  f=ez
  fd=-ez
  fdd=ez
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Exp02-14 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Bradley Beacham
          ; Cubic Method with weird bailout test
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(-z)
  f=ez
  fd=-ez
  oz=z
  w=z-f/fd
  fw=exp(-w)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Exp02-15 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Chris Green:
          ; Newton Method with weird bailout test
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(-z)
  f=ez
  fd=-ez
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Exp02-16 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Mike Wareman:
          ; Secant Method with weird bailout test
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=exp(-p1):
  zt=z
  foz=fz
  fz=(exp(-z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Exp02-17 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types
          ; Inspired by Mike Wareman
          ; Secant Method with Girvan perturbations and weird bailout test
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=(exp(-z))
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Exp02-18 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types
          ; Inspired by Mike Wareman
          ; Secant Method with Girvan perturbations and weird bailout test
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=(exp(-z))
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |(|z|)-(|oz|)|>=0.00000001
  ;SOURCE: chby18.frm
}


Exp02-19 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Clifford A. Pickover:
          ; Dynamic (Implicit Euler method)
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(exp(-x))
  x=x-t*(exp(-y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Exp02-20 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Clifford A. Pickover:
          ; Dynamic (modified implicit Euler method)
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(exp(-x))
  x=x-t*sin(exp(-y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Exp02-21 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Clifford A. Pickover:
          ; Dynamic (modified implicit Euler Method)
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1(exp(-x))
  x=x-t*fn1(exp(-y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Exp02-22 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Clifford A. Pickover:
          ; Dynamic (modified Euler method)
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(exp(-x))
  Ty=fn2(exp(-y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Exp02-23 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Clifford A. Pickover:
          ; Dynamic (modified Euler method)
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(exp(-x))
  Ty=fn2(exp(-y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Exp02-24 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Clifford A. Pickover:
          ; Dynamic (modified implicit Euler Method)
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1(exp(-x))
  x=x-t*fn2(exp(-y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Exp02-25 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Clifford A. Pickover:
          ; Dynamic (modified implicit Euler Method)
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1(exp(-x))
  x=x-t*fn2(exp(-y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Exp02-26 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Kathy Roth:
          ; Dynamic (modified implicit Euler Method, gravitated)
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=fn1(exp(-x))
  Ty=fn1(exp(-y))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Exp02-27 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Kathy Roth:
          ; Dynamic (modified implicit Euler Method, popped)
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=fn1(exp(-x))
  Ty=fn1(exp(-y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Exp02-28 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Kathy Roth:
          ; Dynamic (modified implicit Euler Method, popped)
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=fn1(exp(-x))
  Ty=fn1(exp(-y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Exp02-29 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Clifford A. Pickover:
          ; Dynamic (modified implicit Euler method, Sylvie Gallet test)
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(exp(-x))
  Ty=fn1(exp(-y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Exp02-30 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types
          ; Inspired by Ray Parracho:
          ; Regula-Falsi Method
          ;
          ; exponential Integral
          ; exp[0] = exp(-z)/z
          ; exp[1] = 0
          ; exp[n+1] = (exp(-z)-zexp[n])/n
          ;
          ; = exp[2] = (exp(-z)-zexp[1])
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=exp(-x0)
  Fx1=exp(-x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Exp03-01 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Fx=(1-x)/(exp(x)*2)
  Fy=(1-y)/(exp(y)*2)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Exp03-02 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  bailout=p1+4, z=pixel:
  z=(1-z)/(exp(z)*2)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Exp03-03 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  const=p1, z=pixel:
  z=const+((1-z)/(exp(z)*2))
  |z|<100
  ;SOURCE: chby3.frm
}


Exp03-04 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  const=pixel, z=p1:
  z=const+((1-z)/(exp(z)*2))
  |z|<100
  ;SOURCE: chby4.frm
}


Exp03-05 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=((1-z)/(ez*2))
  fd=(z/2-1)/ez
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Exp03-06 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  e1=ez+ez
  f=((1-z)/e1)
  fd=(z/2-1)/ez
  fdd=(3-z)/e1
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Exp03-07 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=((1-z)/(ez*2))
  fd=(z/2-1)/ez
  oz=z
  w=z-f/fd
  fw=((1-w)/(exp(w)*2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Exp03-08 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin((1-x)/(exp(x)*2))
  Ty=sin((1-y)/(exp(y)*2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Exp03-09 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((1-x)/(exp(x)*2))
  Ty=fn1((1-y)/(exp(y)*2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Exp03-10 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=((1-p1)/(exp(p1)*2)):
  zt=z
  foz=fz
  fz=((1-z)/(exp(z)*2))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Exp03-11 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  const=p1, z=pixel:
  z=const*((1-z)/(exp(z)*2))
  |z|<100
  ;SOURCE: chby11.frm
}


Exp03-12 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  const=pixel, z=p1:
  z=const*((1-z)/(exp(z)*2))
  |z|<100
  ;SOURCE: chby12.frm
}


Exp03-13 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  e1=ez+ez
  f=((1-z)/e1)
  fd=(z/2-1)/ez
  fdd=(3-z)/e1
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Exp03-14 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  f=((1-z)/(ez*2))
  fd=(z/2-1)/ez
  oz=z
  w=z-f/fd
  fw=((1-w)/(exp(w)*2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Exp03-15 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=((1-z)/(ez*2))
  fd=(z/2-1)/ez
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Exp03-16 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=((1-p1)/(exp(p1)*2)):
  zt=z
  foz=fz
  fz=((1-z)/(exp(z)*2))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Exp03-17 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  z=pixel, oz=0
  fz=1/2
  zt=fn1(z)+p1:
  foz=fz
  fz=((1-z)/(exp(z)*2))
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Exp03-18 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  z=pixel, oz=0
  fz=1/2
  zt=fn1(z)+p1:
  foz=fz
  fz=((1-z)/(exp(z)*2))
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |(|z|)-(|oz|)|>=0.00000001
  ;SOURCE: chby18.frm
}


Exp03-19 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*((1-x)/(exp(x)*2))
  x=x-t*((1-y)/(exp(y)*2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Exp03-20 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin((1-x)/(exp(x)*2))
  x=x-t*sin((1-y)/(exp(y)*2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Exp03-21 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1((1-x)/(exp(x)*2))
  x=x-t*fn1((1-y)/(exp(y)*2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Exp03-22 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((1-x)/(exp(x)*2))
  Ty=fn2((1-y)/(exp(y)*2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Exp03-23 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1((1-x)/(exp(x)*2))
  Ty=fn2((1-y)/(exp(y)*2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Exp03-24 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1((1-x)/(exp(x)*2))
  x=x-t*fn2((1-y)/(exp(y)*2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Exp03-25 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1((1-x)/(exp(x)*2))
  x=x-t*fn2((1-y)/(exp(y)*2))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Exp03-26 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=fn1((1-x)/(exp(x)*2))
  Ty=fn1((1-y)/(exp(y)*2))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Exp03-27 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=fn1((1-x)/(exp(x)*2))
  Ty=fn1((1-y)/(exp(y)*2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Exp03-28 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=fn1((1-x)/(exp(x)*2))
  Ty=fn1((1-y)/(exp(y)*2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Exp03-29 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((1-x)/(exp(x)*2))
  Ty=fn1((1-y)/(exp(y)*2))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Exp03-30 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = exp[3] = (exp(-z)-zexp[2])/2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=(1-x0)/(exp(x0)*2)
  Fx1=(1-x1)/(exp(x1)*2)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Exp04-01 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Fx=((x-1)*x/6+1/3)/exp(x)
  Fy=((y-1)*y/6+1/3)/exp(y)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Exp04-02 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  bailout=p1+4, z=pixel:
  z=((z-1)*z/6+1/3)/exp(z)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Exp04-03 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  const=p1, z=pixel:
  z=const+(((z-1)*z/6+1/3)/exp(z))
  |z|<100
  ;SOURCE: chby3.frm
}


Exp04-04 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  const=pixel, z=p1:
  z=const+(((z-1)*z/6+1/3)/exp(z))
  |z|<100
  ;SOURCE: chby4.frm
}


Exp04-05 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=(((z-1)*z/6+1/3)/ez)
  fd=((1/2-z/6)*z-1/2)/ez
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Exp04-06 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=(((z-1)*z/6+1/3)/ez)
  fd=((1/2-z/6)*z-1/2)/ez
  fdd=((z-5)*z/6+1)/ez
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|  
  ;SOURCE: chby6.frm
}


Exp04-07 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=(((z-1)*z/6+1/3)/ez)
  fd=((1/2-z/6)*z-1/2)/ez
  oz=z
  w=z-f/fd
  fw=(((w-1)*w/6+1/3)/exp(w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Exp04-08 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(((x-1)*x/6+1/3)/exp(x))
  Ty=sin(((y-1)*y/6+1/3)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Exp04-09 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(((x-1)*x/6+1/3)/exp(x))
  Ty=fn1(((y-1)*y/6+1/3)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Exp04-10 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(((p1-1)*p1/6+1/3)/exp(p1)):
  zt=z
  foz=fz
  fz=(((z-1)*z/6+1/3)/exp(z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Exp04-11 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  const=p1, z=pixel:
  z=const*(((z-1)*z/6+1/3)/exp(z))
  |z|<100
  ;SOURCE: chby11.frm
}


Exp04-12 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  const=pixel, z=p1:
  z=const*(((z-1)*z/6+1/3)/exp(z))
  |z|<100
  ;SOURCE: chby12.frm
}


Exp04-13 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=(((z-1)*z/6+1/3)/ez)
  fd=((1/2-z/6)*z-1/2)/ez
  fdd=((z-5)*z/6+1)/ez
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Exp04-14 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  f=(((z-1)*z/6+1/3)/ez)
  fd=((1/2-z/6)*z-1/2)/ez
  oz=z
  w=z-f/fd
  fw=(((w-1)*w/6+1/3)/exp(w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Exp04-15 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=(((z-1)*z/6+1/3)/ez)
  fd=((1/2-z/6)*z-1/2)/ez
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Exp04-16 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(((p1-1)*p1/6+1/3)/exp(p1)):
  zt=z
  foz=fz
  fz=(((z-1)*z/6+1/3)/exp(z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Exp04-17 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  z=pixel, oz=0
  fz=1/3
  zt=fn1(z)+p1:
  foz=fz
  fz=(((z-1)*z/6+1/3)/exp(z))
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Exp04-18 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  z=pixel, oz=0
  fz=1/3
  zt=fn1(z)+p1:
  foz=fz
  fz=(((z-1)*z/6+1/3)/exp(z))
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |(|z|)-(|oz|)|>=0.00000001
  ;SOURCE: chby18.frm
}


Exp04-19 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(((x-1)*x/6+1/3)/exp(x))
  x=x-t*(((y-1)*y/6+1/3)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Exp04-20 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(((x-1)*x/6+1/3)/exp(x))
  x=x-t*sin(((y-1)*y/6+1/3)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Exp04-21 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1(((x-1)*x/6+1/3)/exp(x))
  x=x-t*fn1(((y-1)*y/6+1/3)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Exp04-22 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(((x-1)*x/6+1/3)/exp(x))
  Ty=fn2(((y-1)*y/6+1/3)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Exp04-23 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(((x-1)*x/6+1/3)/exp(x))
  Ty=fn2(((y-1)*y/6+1/3)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Exp04-24 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1(((x-1)*x/6+1/3)/exp(x))
  x=x-t*fn2(((y-1)*y/6+1/3)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Exp04-25 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1(((x-1)*x/6+1/3)/exp(x))
  x=x-t*fn2(((y-1)*y/6+1/3)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Exp04-26 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=fn1(((x-1)*x/6+1/3)/exp(x))
  Ty=fn1(((y-1)*y/6+1/3)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Exp04-27 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=fn1(((x-1)*x/6+1/3)/exp(x))
  Ty=fn1(((y-1)*y/6+1/3)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Exp04-28 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=fn1(((x-1)*x/6+1/3)/exp(x))
  Ty=fn1(((y-1)*y/6+1/3)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Exp04-29 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(((x-1)*x/6+1/3)/exp(x))
  Ty=fn1(((y-1)*y/6+1/3)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Exp04-30 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = exp[4] = (exp(-z)-zexp[3])/3
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=((x0-1)*x0/6+1/3)/exp(x0)
  Fx1=((x1-1)*x1/6+1/3)/exp(x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Exp05-01 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Fx=(((1-x)*x/24-1/12)*x+1/4)/exp(x)
  Fy=(((1-y)*y/24-1/12)*y+1/4)/exp(y)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Exp05-02 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  bailout=p1+4, z=pixel:
  z=(((1-z)*z/24-1/12)*z+1/4)/exp(z)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Exp05-03 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  const=p1, z=pixel:
  z=const+((((1-z)*z/24-1/12)*z+1/4)/exp(z))
  |z|<100
  ;SOURCE: chby3.frm
}


Exp05-04 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  const=pixel, z=p1:
  z=const+((((1-z)*z/24-1/12)*z+1/4)/exp(z))
  |z|<100
  ;SOURCE: chby4.frm
}


Exp05-05 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=((((1-z)*z/24-1/12)*z+1/4)/ez)
  fd=(((1/24*z-1/6)*z+1/6)*z-1/3)/ez
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Exp05-06 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=((((1-z)*z/24-1/12)*z+1/4)/ez)
  fd=(((z/24-1/6)*z+1/6)*z-1/3)/ez
  fdd=(((7-z)*z/24-1/2)*z+1/2)/ez
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Exp05-07 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=((((1-z)*z/24-1/12)*z+1/4)/ez)
  fd=(((1/24*z-1/6)*z+1/6)*z-1/3)/ez
  oz=z
  w=z-f/fd
  fw=((((1-w)*w/24-1/12)*w+1/4)/exp(w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Exp05-08 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin((((1-x)*x/24-1/12)*x+1/4)/exp(x))
  Ty=sin((((1-y)*y/24-1/12)*y+1/4)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Exp05-09 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((((1-x)*x/24-1/12)*x+1/4)/exp(x))
  Ty=fn1((((1-y)*y/24-1/12)*y+1/4)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Exp05-10 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=((((1-p1)*p1/24-1/12)*p1+1/4)/exp(p1)):
  zt=z
  foz=fz
  fz=((((1-z)*z/24-1/12)*z+1/4)/exp(z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Exp05-11 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  const=p1, z=pixel:
  z=const*((((1-z)*z/24-1/12)*z+1/4)/exp(z))
  |z|<100
  ;SOURCE: chby11.frm
}


Exp05-12 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  const=pixel, z=p1:
  z=const*((((1-z)*z/24-1/12)*z+1/4)/exp(z))
  |z|<100
  ;SOURCE: chby12.frm
}


Exp05-13 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=((((1-z)*z/24-1/12)*z+1/4)/ez)
  fd=(((z/24-1/6)*z+1/6)*z-1/3)/ez
  fdd=(((7-z)*z/24-1/2)*z+1/2)/ez
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Exp05-14 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  f=((((1-z)*z/24-1/12)*z+1/4)/ez)
  fd=(((1/24*z-1/6)*z+1/6)*z-1/3)/ez
  oz=z
  w=z-f/fd
  fw=((((1-w)*w/24-1/12)*w+1/4)/exp(w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Exp05-15 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=((((1-z)*z/24-1/12)*z+1/4)/ez)
  fd=(((1/24*z-1/6)*z+1/6)*z-1/3)/ez
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Exp05-16 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=((((1-p1)*p1/24-1/12)*p1+1/4)/exp(p1)):
  zt=z
  foz=fz
  fz=((((1-z)*z/24-1/12)*z+1/4)/exp(z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Exp05-17 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  z=pixel, oz=0
  fz=1/4
  zt=fn1(z)+p1:
  foz=fz
  fz=((((1-z)*z/24-1/12)*z+1/4)/exp(z))
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Exp05-18 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  z=pixel, oz=0
  fz=1/4
  zt=fn1(z)+p1:
  foz=fz
  fz=((((1-z)*z/24-1/12)*z+1/4)/exp(z))
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |(|z|)-(|oz|)|>=0.00000001
  ;SOURCE: chby18.frm
}


Exp05-19 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*((((1-x)*x/24-1/12)*x+1/4)/exp(x))
  x=x-t*((((1-y)*y/24-1/12)*y+1/4)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Exp05-20 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin((((1-x)*x/24-1/12)*x+1/4)/exp(x))
  x=x-t*sin((((1-y)*y/24-1/12)*y+1/4)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Exp05-21 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1((((1-x)*x/24-1/12)*x+1/4)/exp(x))
  x=x-t*fn1((((1-y)*y/24-1/12)*y+1/4)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Exp05-22 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((((1-x)*x/24-1/12)*x+1/4)/exp(x))
  Ty=fn2((((1-y)*y/24-1/12)*y+1/4)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Exp05-23 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1((((1-x)*x/24-1/12)*x+1/4)/exp(x))
  Ty=fn2((((1-y)*y/24-1/12)*y+1/4)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Exp05-24 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1((((1-x)*x/24-1/12)*x+1/4)/exp(x))
  x=x-t*fn2((((1-y)*y/24-1/12)*y+1/4)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Exp05-25 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1((((1-x)*x/24-1/12)*x+1/4)/exp(x))
  x=x-t*fn2((((1-y)*y/24-1/12)*y+1/4)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Exp05-26 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=fn1((((1-x)*x/24-1/12)*x+1/4)/exp(x))
  Ty=fn1((((1-y)*y/24-1/12)*y+1/4)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Exp05-27 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=fn1((((1-x)*x/24-1/12)*x+1/4)/exp(x))
  Ty=fn1((((1-y)*y/24-1/12)*y+1/4)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Exp05-28 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=fn1((((1-x)*x/24-1/12)*x+1/4)/exp(x))
  Ty=fn1((((1-y)*y/24-1/12)*y+1/4)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Exp05-29 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((((1-x)*x/24-1/12)*x+1/4)/exp(x))
  Ty=fn1((((1-y)*y/24-1/12)*y+1/4)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Exp05-30 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = exp[5] = (exp(-z)-zexp[4])/4
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=(((1-x0)*x0/24-1/12)*x0+1/4)/exp(x0)
  Fx1=(((1-x1)*x1/24-1/12)*x1+1/4)/exp(x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Exp06-01 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Fx=((((x-1)*x/120+1/60)*x-1/20)*x+1/5)/exp(x)
  Fy=((((y-1)*y/120+1/60)*y-1/20)*y+1/5)/exp(y)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Exp06-02 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  bailout=p1+4, z=pixel:
  z=((((z-1)*z/120+1/60)*z-1/20)*z+1/5)/exp(z)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Exp06-03 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  const=p1, z=pixel:
  z=const+(((((z-1)*z/120+1/60)*z-1/20)*z+1/5)/exp(z))
  |z|<100
  ;SOURCE: chby3.frm
}


Exp06-04 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  const=pixel, z=p1:
  z=const+(((((z-1)*z/120+1/60)*z-1/20)*z+1/5)/exp(z))
  |z|<100
  ;SOURCE: chby4.frm
}


Exp06-05 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=(((((z-1)*z/120+1/60)*z-1/20)*z+1/5)/ez)
  fd=((((-z/120+1/24)*z-1/24)*z+1/12)*z-1/4)/ez
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Exp06-06 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=(((((z-1)*z/120+1/60)*z-1/20)*z+1/5)/ez)
  fd=((((-z/120+1/24)*z-1/24)*z+1/12)*z-1/4)/ez
  fdd=((((z/120-3/40)*z+1/6)*z-1/6)*z+1/3)/ez
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Exp06-07 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=(((((z-1)*z/120+1/60)*z-1/20)*z+1/5)/ez)
  fd=((((-z/120+1/24)*z-1/24)*z+1/12)*z-1/4)/ez
  oz=z
  w=z-f/fd
  fw=(((((w-1)*w/120+1/60)*w-1/20)*w+1/5)/exp(w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Exp06-08 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(((((x-1)*x/120+1/60)*x-1/20)*x+1/5)/exp(x))
  Ty=sin(((((y-1)*y/120+1/60)*y-1/20)*y+1/5)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Exp06-09 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(((((x-1)*x/120+1/60)*x-1/20)*x+1/5)/exp(x))
  Ty=fn1(((((y-1)*y/120+1/60)*y-1/20)*y+1/5)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Exp06-10 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(((((p1-1)*p1/120+1/60)*p1-1/20)*p1+1/5)/exp(p1)):
  zt=z
  foz=fz
  fz=(((((z-1)*z/120+1/60)*z-1/20)*z+1/5)/exp(z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Exp06-11 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  const=p1, z=pixel:
  z=const*(((((z-1)*z/120+1/60)*z-1/20)*z+1/5)/exp(z))
  |z|<100
  ;SOURCE: chby11.frm
}


Exp06-12 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  const=pixel, z=p1:
  z=const*(((((z-1)*z/120+1/60)*z-1/20)*z+1/5)/exp(z))
  |z|<100
  ;SOURCE: chby12.frm
}


Exp06-13 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=(((((z-1)*z/120+1/60)*z-1/20)*z+1/5)/ez)
  fd=((((-z/120+1/24)*z-1/24)*z+1/12)*z-1/4)/ez
  fdd=((((z/120-3/40)*z+1/6)*z-1/6)*z+1/3)/ez
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Exp06-14 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  f=(((((z-1)*z/120+1/60)*z-1/20)*z+1/5)/ez)
  fd=((((-z/120+1/24)*z-1/24)*z+1/12)*z-1/4)/ez
  oz=z
  w=z-f/fd
  fw=(((((w-1)*w/120+1/60)*w-1/20)*w+1/5)/exp(w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Exp06-15 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=(((((z-1)*z/120+1/60)*z-1/20)*z+1/5)/ez)
  fd=((((-z/120+1/24)*z-1/24)*z+1/12)*z-1/4)/ez
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Exp06-16 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(((((p1-1)*p1/120+1/60)*p1-1/20)*p1+1/5)/exp(p1)):
  zt=z
  foz=fz
  fz=(((((z-1)*z/120+1/60)*z-1/20)*z+1/5)/exp(z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Exp06-17 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  z=pixel, oz=0
  fz=1/5
  zt=fn1(z)+p1:
  foz=fz
  fz=(((((z-1)*z/120+1/60)*z-1/20)*z+1/5)/exp(z))
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Exp06-18 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  z=pixel, oz=0
  fz=1/5
  zt=fn1(z)+p1:
  foz=fz
  fz=(((((z-1)*z/120+1/60)*z-1/20)*z+1/5)/exp(z))
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |(|z|)-(|oz|)|>=0.00000001
  ;SOURCE: chby18.frm
}


Exp06-19 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(((((x-1)*x/120+1/60)*x-1/20)*x+1/5)/exp(x))
  x=x-t*(((((y-1)*y/120+1/60)*y-1/20)*y+1/5)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Exp06-20 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(((((x-1)*x/120+1/60)*x-1/20)*x+1/5)/exp(x))
  x=x-t*sin(((((y-1)*y/120+1/60)*y-1/20)*y+1/5)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Exp06-21 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1(((((x-1)*x/120+1/60)*x-1/20)*x+1/5)/exp(x))
  x=x-t*fn1(((((y-1)*y/120+1/60)*y-1/20)*y+1/5)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Exp06-22 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(((((x-1)*x/120+1/60)*x-1/20)*x+1/5)/exp(x))
  Ty=fn2(((((y-1)*y/120+1/60)*y-1/20)*y+1/5)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Exp06-23 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(((((x-1)*x/120+1/60)*x-1/20)*x+1/5)/exp(x))
  Ty=fn2(((((y-1)*y/120+1/60)*y-1/20)*y+1/5)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Exp06-24 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1(((((x-1)*x/120+1/60)*x-1/20)*x+1/5)/exp(x))
  x=x-t*fn2(((((y-1)*y/120+1/60)*y-1/20)*y+1/5)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Exp06-25 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1(((((x-1)*x/120+1/60)*x-1/20)*x+1/5)/exp(x))
  x=x-t*fn2(((((y-1)*y/120+1/60)*y-1/20)*y+1/5)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Exp06-26 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=fn1(((((x-1)*x/120+1/60)*x-1/20)*x+1/5)/exp(x))
  Ty=fn1(((((y-1)*y/120+1/60)*y-1/20)*y+1/5)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Exp06-27 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=fn1(((((x-1)*x/120+1/60)*x-1/20)*x+1/5)/exp(x))
  Ty=fn1(((((y-1)*y/120+1/60)*y-1/20)*y+1/5)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Exp06-28 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=fn1(((((x-1)*x/120+1/60)*x-1/20)*x+1/5)/exp(x))
  Ty=fn1(((((y-1)*y/120+1/60)*y-1/20)*y+1/5)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Exp06-29 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(((((x-1)*x/120+1/60)*x-1/20)*x+1/5)/exp(x))
  Ty=fn1(((((y-1)*y/120+1/60)*y-1/20)*y+1/5)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Exp06-30 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = exp[6] = (exp(-z)-zexp[5])/5
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=((((x0-1)*x0/120+1/60)*x0-1/20)*x0+1/5)/exp(x0)
  Fx1=((((x1-1)*x1/120+1/60)*x1-1/20)*x1+1/5)/exp(x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Exp07-01 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Fx=(((((1-x)*x/720-1/360)*x+1/120)*x-1/30)*x+1/6)/exp(x)
  Fy=(((((1-y)*y/720-1/360)*y+1/120)*y-1/30)*y+1/6)/exp(y)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Exp07-02 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  bailout=p1+4, z=pixel:
  z=(((((1-z)*z/720-1/360)*z+1/120)*z-1/30)*z+1/6)/exp(z)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Exp07-03 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  const=p1, z=pixel:
  z=const+((((((1-z)*z/720-1/360)*z+1/120)*z-1/30)*z+1/6)/exp(z))
  |z|<100
  ;SOURCE: chby3.frm
}


Exp07-04 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  const=pixel, z=p1:
  z=const+((((((1-z)*z/720-1/360)*z+1/120)*z-1/30)*z+1/6)/exp(z))
  |z|<100
  ;SOURCE: chby4.frm
}


Exp07-05 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=((((((1-z)*z/720-1/360)*z+1/120)*z-1/30)*z+1/6)/ez)
  fd=(((((z/720-1/120)*z+1/120)*z-1/60)*z+1/20)*z-1/5)/ez
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Exp07-06 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=((((((1-z)*z/720-1/360)*z+1/120)*z-1/30)*z+1/6)/ez)
  fd=(((((z/720-1/120)*z+1/120)*z-1/60)*z+1/20)*z-1/5)/ez
  fdd=(((((11-z)*z/720-1/24)*z+1/24)*z-1/12)*z+1/4)/ez
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Exp07-07 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=((((((1-z)*z/720-1/360)*z+1/120)*z-1/30)*z+1/6)/ez)
  fd=(((((z/720-1/120)*z+1/120)*z-1/60)*z+1/20)*z-1/5)/ez
  oz=z
  w=z-f/fd
  fw=((((((1-w)*w/720-1/360)*w+1/120)*w-1/30)*w+1/6)/exp(w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Exp07-08 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin((((((1-x)*x/720-1/360)*x+1/120)*x-1/30)*x+1/6)/exp(x))
  Ty=sin((((((1-y)*y/720-1/360)*y+1/120)*y-1/30)*y+1/6)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Exp07-09 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((((((1-x)*x/720-1/360)*x+1/120)*x-1/30)*x+1/6)/exp(x))
  Ty=fn1((((((1-y)*y/720-1/360)*y+1/120)*y-1/30)*y+1/6)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Exp07-10 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=((((((1-p1)*p1/720-1/360)*p1+1/120)*p1-1/30)*p1+1/6)/exp(p1)):
  zt=z
  foz=fz
  fz=((((((1-z)*z/720-1/360)*z+1/120)*z-1/30)*z+1/6)/exp(z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Exp07-11 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  const=p1, z=pixel:
  z=const*((((((1-z)*z/720-1/360)*z+1/120)*z-1/30)*z+1/6)/exp(z))
  |z|<100
  ;SOURCE: chby11.frm
}


Exp07-12 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  const=pixel, z=p1:
  z=const*((((((1-z)*z/720-1/360)*z+1/120)*z-1/30)*z+1/6)/exp(z))
  |z|<100
  ;SOURCE: chby12.frm
}


Exp07-13 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=((((((1-z)*z/720-1/360)*z+1/120)*z-1/30)*z+1/6)/ez)
  fd=(((((z/720-1/120)*z+1/120)*z-1/60)*z+1/20)*z-1/5)/ez
  fdd=(((((11-z)*z/720-1/24)*z+1/24)*z-1/12)*z+1/4)/ez
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Exp07-14 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  f=((((((1-z)*z/720-1/360)*z+1/120)*z-1/30)*z+1/6)/ez)
  fd=(((((z/720-1/120)*z+1/120)*z-1/60)*z+1/20)*z-1/5)/ez
  oz=z
  w=z-f/fd
  fw=((((((1-w)*w/720-1/360)*w+1/120)*w-1/30)*w+1/6)/exp(w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Exp07-15 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=((((((1-z)*z/720-1/360)*z+1/120)*z-1/30)*z+1/6)/ez)
  fd=(((((z/720-1/120)*z+1/120)*z-1/60)*z+1/20)*z-1/5)/ez
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Exp07-16 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=((((((1-p1)*p1/720-1/360)*p1+1/120)*p1-1/30)*p1+1/6)/exp(p1)):
  zt=z
  foz=fz
  fz=((((((1-z)*z/720-1/360)*z+1/120)*z-1/30)*z+1/6)/exp(z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Exp07-17 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  z=pixel, oz=0
  fz=1/6
  zt=fn1(z)+p1:
  foz=fz
  fz=((((((1-z)*z/720-1/360)*z+1/120)*z-1/30)*z+1/6)/exp(z))
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Exp07-18 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  z=pixel, oz=0
  fz=1/6
  zt=fn1(z)+p1:
  foz=fz
  fz=((((((1-z)*z/720-1/360)*z+1/120)*z-1/30)*z+1/6)/exp(z))
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |(|z|)-(|oz|)|>=0.00000001
  ;SOURCE: chby18.frm
}


Exp07-19 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*((((((1-x)*x/720-1/360)*x+1/120)*x-1/30)*x+1/6)/exp(x))
  x=x-t*((((((1-y)*y/720-1/360)*y+1/120)*y-1/30)*y+1/6)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Exp07-20 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin((((((1-x)*x/720-1/360)*x+1/120)*x-1/30)*x+1/6)/exp(x))
  x=x-t*sin((((((1-y)*y/720-1/360)*y+1/120)*y-1/30)*y+1/6)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Exp07-21 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1((((((1-x)*x/720-1/360)*x+1/120)*x-1/30)*x+1/6)/exp(x))
  x=x-t*fn1((((((1-y)*y/720-1/360)*y+1/120)*y-1/30)*y+1/6)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Exp07-22 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((((((1-x)*x/720-1/360)*x+1/120)*x-1/30)*x+1/6)/exp(x))
  Ty=fn2((((((1-y)*y/720-1/360)*y+1/120)*y-1/30)*y+1/6)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Exp07-23 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1((((((1-x)*x/720-1/360)*x+1/120)*x-1/30)*x+1/6)/exp(x))
  Ty=fn2((((((1-y)*y/720-1/360)*y+1/120)*y-1/30)*y+1/6)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Exp07-24 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1((((((1-x)*x/720-1/360)*x+1/120)*x-1/30)*x+1/6)/exp(x))
  x=x-t*fn2((((((1-y)*y/720-1/360)*y+1/120)*y-1/30)*y+1/6)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Exp07-25 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1((((((1-x)*x/720-1/360)*x+1/120)*x-1/30)*x+1/6)/exp(x))
  x=x-t*fn2((((((1-y)*y/720-1/360)*y+1/120)*y-1/30)*y+1/6)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Exp07-26 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=fn1((((((1-x)*x/720-1/360)*x+1/120)*x-1/30)*x+1/6)/exp(x))
  Ty=fn1((((((1-y)*y/720-1/360)*y+1/120)*y-1/30)*y+1/6)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Exp07-27 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=fn1((((((1-x)*x/720-1/360)*x+1/120)*x-1/30)*x+1/6)/exp(x))
  Ty=fn1((((((1-y)*y/720-1/360)*y+1/120)*y-1/30)*y+1/6)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Exp07-28 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=fn1((((((1-x)*x/720-1/360)*x+1/120)*x-1/30)*x+1/6)/exp(x))
  Ty=fn1((((((1-y)*y/720-1/360)*y+1/120)*y-1/30)*y+1/6)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Exp07-29 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((((((1-x)*x/720-1/360)*x+1/120)*x-1/30)*x+1/6)/exp(x))
  Ty=fn1((((((1-y)*y/720-1/360)*y+1/120)*y-1/30)*y+1/6)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Exp07-30 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = exp[7] = (exp(-z)-zexp[6])/6
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=(((((1-x0)*x0/720-1/360)*x0+1/120)*x0-1/30)*x0+1/6)/exp(x0)
  Fx1=(((((1-x1)*x1/720-1/360)*x1+1/120)*x1-1/30)*x1+1/6)/exp(x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Exp08-01 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Fx=((((((x-1)*x/5040+1/2520)*x-1/840)*x+1/210)*x-1/42)*x+1/7)/exp(x)
  Fy=((((((y-1)*y/5040+1/2520)*y-1/840)*y+1/210)*y-1/42)*y+1/7)/exp(y)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Exp08-02 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  bailout=p1+4, z=pixel:
  z=((((((z-1)*z/5040+1/2520)*z-1/840)*z+1/210)*z-1/42)*z+1/7)/exp(z)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Exp08-03 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  const=p1, z=pixel:
  z=const+(((((((z-1)*z/5040+1/2520)*z-1/840)*z+1/210)*z-1/42)*z+1/7)/exp(z))
  |z|<100
  ;SOURCE: chby3.frm
}


Exp08-04 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  const=pixel, z=p1:
  z=const+(((((((z-1)*z/5040+1/2520)*z-1/840)*z+1/210)*z-1/42)*z+1/7)/exp(z))
  |z|<100
  ;SOURCE: chby4.frm
}


Exp08-05 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=(((((((z-1)*z/5040+1/2520)*z-1/840)*z+1/210)*z-1/42)*z+1/7)/ez)
  fd=((((((1/720-z/5040)*z-1/720)*z+1/360)*z-1/120)*z+1/30)*z-1/6)/ez
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Exp08-06 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=(((((((z-1)*z/5040+1/2520)*z-1/840)*z+1/210)*z-1/42)*z+1/7)/ez)
  fd=((((((1/720-z/5040)*z-1/720)*z+1/360)*z-1/120)*z+1/30)*z-1/6)/ez
  fdd=((((((z/5040-13/5040)*z+1/120)*z-1/120)*z+1/60)*z-1/20)*z+1/5)/ez
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Exp08-07 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=(((((((z-1)*z/5040+1/2520)*z-1/840)*z+1/210)*z-1/42)*z+1/7)/ez)
  fd=((((((1/720-z/5040)*z-1/720)*z+1/360)*z-1/120)*z+1/30)*z-1/6)/ez
  oz=z
  w=z-f/fd
  fw=(((((((w-1)*w/5040+1/2520)*w-1/840)*w+1/210)*w-1/42)*w+1/7)/exp(w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Exp08-08 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(((((((x-1)*x/5040+1/2520)*x-1/840)*x+1/210)*x-1/42)*x+1/7)/exp(x))
  Ty=sin(((((((y-1)*y/5040+1/2520)*y-1/840)*y+1/210)*y-1/42)*y+1/7)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Exp08-09 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(((((((x-1)*x/5040+1/2520)*x-1/840)*x+1/210)*x-1/42)*x+1/7)/exp(x))
  Ty=fn1(((((((y-1)*y/5040+1/2520)*y-1/840)*y+1/210)*y-1/42)*y+1/7)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Exp08-10 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(((((((P1-1)*p1/5040+1/2520)*p1-1/840)*p1+1/210)*p1-1/42)*p1+1/7)/exp(p1)):
  zt=z
  foz=fz
  fz=(((((((z-1)*z/5040+1/2520)*z-1/840)*z+1/210)*z-1/42)*z+1/7)/exp(z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Exp08-11 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  const=p1, z=pixel:
  z=const*(((((((z-1)*z/5040+1/2520)*z-1/840)*z+1/210)*z-1/42)*z+1/7)/exp(z))
  |z|<100
  ;SOURCE: chby11.frm
}


Exp08-12 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  const=pixel, z=p1:
  z=const*(((((((z-1)*z/5040+1/2520)*z-1/840)*z+1/210)*z-1/42)*z+1/7)/exp(z))
  |z|<100
  ;SOURCE: chby12.frm
}


Exp08-13 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=(((((((z-1)*z/5040+1/2520)*z-1/840)*z+1/210)*z-1/42)*z+1/7)/ez)
  fd=((((((1/720-z/5040)*z-1/720)*z+1/360)*z-1/120)*z+1/30)*z-1/6)/ez
  fdd=((((((z/5040-13/5040)*z+1/120)*z-1/120)*z+1/60)*z-1/20)*z+1/5)/ez
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Exp08-14 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  f=(((((((z-1)*z/5040+1/2520)*z-1/840)*z+1/210)*z-1/42)*z+1/7)/ez)
  fd=((((((1/720-z/5040)*z-1/720)*z+1/360)*z-1/120)*z+1/30)*z-1/6)/ez
  oz=z
  w=z-f/fd
  fw=(((((((w-1)*w/5040+1/2520)*w-1/840)*w+1/210)*w-1/42)*w+1/7)/exp(w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Exp08-15 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=(((((((z-1)*z/5040+1/2520)*z-1/840)*z+1/210)*z-1/42)*z+1/7)/ez)
  fd=((((((1/720-z/5040)*z-1/720)*z+1/360)*z-1/120)*z+1/30)*z-1/6)/ez
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Exp08-16 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(((((((P1-1)*p1/5040+1/2520)*p1-1/840)*p1+1/210)*p1-1/42)*p1+1/7)/exp(p1)):
  zt=z
  foz=fz
  fz=(((((((z-1)*z/5040+1/2520)*z-1/840)*z+1/210)*z-1/42)*z+1/7)/exp(z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Exp08-17 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  z=pixel, oz=0
  fz=1/7
  zt=fn1(z)+p1:
  foz=fz
  fz=(((((((z-1)*z/5040+1/2520)*z-1/840)*z+1/210)*z-1/42)*z+1/7)/exp(z))
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Exp08-18 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  z=pixel, oz=0
  fz=1/7
  zt=fn1(z)+p1:
  foz=fz
  fz=(((((((z-1)*z/5040+1/2520)*z-1/840)*z+1/210)*z-1/42)*z+1/7)/exp(z))
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |(|z|)-(|oz|)|>=0.00000001
  ;SOURCE: chby18.frm
}


Exp08-19 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(((((((x-1)*x/5040+1/2520)*x-1/840)*x+1/210)*x-1/42)*x+1/7)/exp(x))
  x=x-t*(((((((y-1)*y/5040+1/2520)*y-1/840)*y+1/210)*y-1/42)*y+1/7)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Exp08-20 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(((((((x-1)*x/5040+1/2520)*x-1/840)*x+1/210)*x-1/42)*x+1/7)/exp(x))
  x=x-t*sin(((((((y-1)*y/5040+1/2520)*y-1/840)*y+1/210)*y-1/42)*y+1/7)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Exp08-21 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1(((((((x-1)*x/5040+1/2520)*x-1/840)*x+1/210)*x-1/42)*x+1/7)/exp(x))
  x=x-t*fn1(((((((y-1)*y/5040+1/2520)*y-1/840)*y+1/210)*y-1/42)*y+1/7)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Exp08-22 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(((((((x-1)*x/5040+1/2520)*x-1/840)*x+1/210)*x-1/42)*x+1/7)/exp(x))
  Ty=fn2(((((((y-1)*y/5040+1/2520)*y-1/840)*y+1/210)*y-1/42)*y+1/7)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Exp08-23 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(((((((x-1)*x/5040+1/2520)*x-1/840)*x+1/210)*x-1/42)*x+1/7)/exp(x))
  Ty=fn2(((((((y-1)*y/5040+1/2520)*y-1/840)*y+1/210)*y-1/42)*y+1/7)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Exp08-24 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1(((((((x-1)*x/5040+1/2520)*x-1/840)*x+1/210)*x-1/42)*x+1/7)/exp(x))
  x=x-t*fn2(((((((y-1)*y/5040+1/2520)*y-1/840)*y+1/210)*y-1/42)*y+1/7)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Exp08-25 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1(((((((x-1)*x/5040+1/2520)*x-1/840)*x+1/210)*x-1/42)*x+1/7)/exp(x))
  x=x-t*fn2(((((((y-1)*y/5040+1/2520)*y-1/840)*y+1/210)*y-1/42)*y+1/7)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Exp08-26 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=fn1(((((((x-1)*x/5040+1/2520)*x-1/840)*x+1/210)*x-1/42)*x+1/7)/exp(x))
  Ty=fn1(((((((y-1)*y/5040+1/2520)*y-1/840)*y+1/210)*y-1/42)*y+1/7)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Exp08-27 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=fn1(((((((x-1)*x/5040+1/2520)*x-1/840)*x+1/210)*x-1/42)*x+1/7)/exp(x))
  Ty=fn1(((((((y-1)*y/5040+1/2520)*y-1/840)*y+1/210)*y-1/42)*y+1/7)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Exp08-28 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=fn1(((((((x-1)*x/5040+1/2520)*x-1/840)*x+1/210)*x-1/42)*x+1/7)/exp(x))
  Ty=fn1(((((((y-1)*y/5040+1/2520)*y-1/840)*y+1/210)*y-1/42)*y+1/7)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Exp08-29 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(((((((x-1)*x/5040+1/2520)*x-1/840)*x+1/210)*x-1/42)*x+1/7)/exp(x))
  Ty=fn1(((((((y-1)*y/5040+1/2520)*y-1/840)*y+1/210)*y-1/42)*y+1/7)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Exp08-30 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = exp[8] = (exp(-z)-zexp[7])/7
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=((((((x0-1)*x0/5040+1/2520)*x0-1/840)*x0+1/210)*x0-1/42)*x0+1/7)/exp(x0)
  Fx1=((((((x1-1)*x1/5040+1/2520)*x1-1/840)*x1+1/210)*x1-1/42)*x1+1/7)/exp(x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Exp09-01 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Fx=(((((((1-x)*x/40320-1/20160)*x+1/6720)*x-1/1680)*x+1/336)*x-1/56)*x+1/8)/exp(x)
  Fy=(((((((1-y)*y/40320-1/20160)*y+1/6720)*y-1/1680)*y+1/336)*y-1/56)*y+1/8)/exp(y)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Exp09-02 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  bailout=p1+4, z=pixel:
  z=(((((((1-z)*z/40320-1/20160)*z+1/6720)*z-1/1680)*z+1/336)*z-1/56)*z+1/8)/exp(z)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Exp09-03 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  const=p1, z=pixel:
  z=const+((((((((1-z)*z/40320-1/20160)*z+1/6720)*z-1/1680)*z+1/336)*z-1/56)*z+1/8)/exp(z))
  |z|<100
  ;SOURCE: chby3.frm
}


Exp09-04 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  const=pixel, z=p1:
  z=const+((((((((1-z)*z/40320-1/20160)*z+1/6720)*z-1/1680)*z+1/336)*z-1/56)*z+1/8)/exp(z))
  |z|<100
  ;SOURCE: chby4.frm
}


Exp09-05 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=((((((((1-z)*z/40320-1/20160)*z+1/6720)*z-1/1680)*z+1/336)*z-1/56)*z+1/8)/ez)
  fd=(((((((z/40320-1/5040)*z+1/5040)*z-1/2520)*z+1/840)*z-1/210)*z+1/42)*z-1/7)/ez
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Exp09-06 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=((((((((1-z)*z/40320-1/20160)*z+1/6720)*z-1/1680)*z+1/336)*z-1/56)*z+1/8)/ez)
  fd=(((((((z/40320-1/5040)*z+1/5040)*z-1/2520)*z+1/840)*z-1/210)*z+1/42)*z-1/7)/ez
  fdd=(((((((1/2688-z/40320)*z-1/720)*z+1/720)*z-1/360)*z+1/120)*z-1/30)*z+1/6)/ez
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Exp09-07 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=((((((((1-z)*z/40320-1/20160)*z+1/6720)*z-1/1680)*z+1/336)*z-1/56)*z+1/8)/ez)
  fd=(((((((z/40320-1/5040)*z+1/5040)*z-1/2520)*z+1/840)*z-1/210)*z+1/42)*z-1/7)/ez
  oz=z
  w=z-f/fd
  fw=((((((((1-w)*w/40320-1/20160)*w+1/6720)*w-1/1680)*w+1/336)*w-1/56)*w+1/8)/exp(w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Exp09-08 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin((((((((1-x)*x/40320-1/20160)*x+1/6720)*x-1/1680)*x+1/336)*x-1/56)*x+1/8)/exp(x))
  Ty=sin((((((((1-y)*y/40320-1/20160)*y+1/6720)*y-1/1680)*y+1/336)*y-1/56)*y+1/8)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Exp09-09 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((((((((1-x)*x/40320-1/20160)*x+1/6720)*x-1/1680)*x+1/336)*x-1/56)*x+1/8)/exp(x))
  Ty=fn1((((((((1-y)*y/40320-1/20160)*y+1/6720)*y-1/1680)*y+1/336)*y-1/56)*y+1/8)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Exp09-10 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=((((((((1-p1)*p1/40320-1/20160)*p1+1/6720)*p1-1/1680)*p1+1/336)*p1-1/56)*p1+1/8)/exp(p1)):
  zt=z
  foz=fz
  fz=((((((((1-z)*z/40320-1/20160)*z+1/6720)*z-1/1680)*z+1/336)*z-1/56)*z+1/8)/exp(z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Exp09-11 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  const=p1, z=pixel:
  z=const*((((((((1-z)*z/40320-1/20160)*z+1/6720)*z-1/1680)*z+1/336)*z-1/56)*z+1/8)/exp(z))
  |z|<100
  ;SOURCE: chby11.frm
}


Exp09-12 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  const=pixel, z=p1:
  z=const*((((((((1-z)*z/40320-1/20160)*z+1/6720)*z-1/1680)*z+1/336)*z-1/56)*z+1/8)/exp(z))
  |z|<100
  ;SOURCE: chby12.frm
}


Exp09-13 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=((((((((1-z)*z/40320-1/20160)*z+1/6720)*z-1/1680)*z+1/336)*z-1/56)*z+1/8)/ez)
  fd=(((((((z/40320-1/5040)*z+1/5040)*z-1/2520)*z+1/840)*z-1/210)*z+1/42)*z-1/7)/ez
  fdd=(((((((1/2688-z/40320)*z-1/720)*z+1/720)*z-1/360)*z+1/120)*z-1/30)*z+1/6)/ez
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Exp09-14 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  f=((((((((1-z)*z/40320-1/20160)*z+1/6720)*z-1/1680)*z+1/336)*z-1/56)*z+1/8)/ez)
  fd=(((((((z/40320-1/5040)*z+1/5040)*z-1/2520)*z+1/840)*z-1/210)*z+1/42)*z-1/7)/ez
  oz=z
  w=z-f/fd
  fw=((((((((1-w)*w/40320-1/20160)*w+1/6720)*w-1/1680)*w+1/336)*w-1/56)*w+1/8)/exp(w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Exp09-15 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=((((((((1-z)*z/40320-1/20160)*z+1/6720)*z-1/1680)*z+1/336)*z-1/56)*z+1/8)/ez)
  fd=(((((((z/40320-1/5040)*z+1/5040)*z-1/2520)*z+1/840)*z-1/210)*z+1/42)*z-1/7)/ez
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Exp09-16 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=((((((((1-p1)*p1/40320-1/20160)*p1+1/6720)*p1-1/1680)*p1+1/336)*p1-1/56)*p1+1/8)/exp(p1)):
  zt=z
  foz=fz
  fz=((((((((1-z)*z/40320-1/20160)*z+1/6720)*z-1/1680)*z+1/336)*z-1/56)*z+1/8)/exp(z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Exp09-17 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  z=pixel, oz=0
  fz=1/8
  zt=fn1(z)+p1:
  foz=fz
  fz=((((((((1-z)*z/40320-1/20160)*z+1/6720)*z-1/1680)*z+1/336)*z-1/56)*z+1/8)/exp(z))
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Exp09-18 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  z=pixel, oz=0
  fz=1/8
  zt=fn1(z)+p1:
  foz=fz
  fz=((((((((1-z)*z/40320-1/20160)*z+1/6720)*z-1/1680)*z+1/336)*z-1/56)*z+1/8)/exp(z))
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |(|z|)-(|oz|)|>=0.00000001
  ;SOURCE: chby18.frm
}


Exp09-19 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*((((((((1-x)*x/40320-1/20160)*x+1/6720)*x-1/1680)*x+1/336)*x-1/56)*x+1/8)/exp(x))
  x=x-t*((((((((1-y)*y/40320-1/20160)*y+1/6720)*y-1/1680)*y+1/336)*y-1/56)*y+1/8)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Exp09-20 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin((((((((1-x)*x/40320-1/20160)*x+1/6720)*x-1/1680)*x+1/336)*x-1/56)*x+1/8)/exp(x))
  x=x-t*sin((((((((1-y)*y/40320-1/20160)*y+1/6720)*y-1/1680)*y+1/336)*y-1/56)*y+1/8)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Exp09-21 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1((((((((1-x)*x/40320-1/20160)*x+1/6720)*x-1/1680)*x+1/336)*x-1/56)*x+1/8)/exp(x))
  x=x-t*fn1((((((((1-y)*y/40320-1/20160)*y+1/6720)*y-1/1680)*y+1/336)*y-1/56)*y+1/8)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Exp09-22 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((((((((1-x)*x/40320-1/20160)*x+1/6720)*x-1/1680)*x+1/336)*x-1/56)*x+1/8)/exp(x))
  Ty=fn2((((((((1-y)*y/40320-1/20160)*y+1/6720)*y-1/1680)*y+1/336)*y-1/56)*y+1/8)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Exp09-23 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1((((((((1-x)*x/40320-1/20160)*x+1/6720)*x-1/1680)*x+1/336)*x-1/56)*x+1/8)/exp(x))
  Ty=fn2((((((((1-y)*y/40320-1/20160)*y+1/6720)*y-1/1680)*y+1/336)*y-1/56)*y+1/8)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Exp09-24 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1((((((((1-x)*x/40320-1/20160)*x+1/6720)*x-1/1680)*x+1/336)*x-1/56)*x+1/8)/exp(x))
  x=x-t*fn2((((((((1-y)*y/40320-1/20160)*y+1/6720)*y-1/1680)*y+1/336)*y-1/56)*y+1/8)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Exp09-25 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1((((((((1-x)*x/40320-1/20160)*x+1/6720)*x-1/1680)*x+1/336)*x-1/56)*x+1/8)/exp(x))
  x=x-t*fn2((((((((1-y)*y/40320-1/20160)*y+1/6720)*y-1/1680)*y+1/336)*y-1/56)*y+1/8)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Exp09-26 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=fn1((((((((1-x)*x/40320-1/20160)*x+1/6720)*x-1/1680)*x+1/336)*x-1/56)*x+1/8)/exp(x))
  Ty=fn1((((((((1-y)*y/40320-1/20160)*y+1/6720)*y-1/1680)*y+1/336)*y-1/56)*y+1/8)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Exp09-27 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=fn1((((((((1-x)*x/40320-1/20160)*x+1/6720)*x-1/1680)*x+1/336)*x-1/56)*x+1/8)/exp(x))
  Ty=fn1((((((((1-y)*y/40320-1/20160)*y+1/6720)*y-1/1680)*y+1/336)*y-1/56)*y+1/8)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Exp09-28 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=fn1((((((((1-x)*x/40320-1/20160)*x+1/6720)*x-1/1680)*x+1/336)*x-1/56)*x+1/8)/exp(x))
  Ty=fn1((((((((1-y)*y/40320-1/20160)*y+1/6720)*y-1/1680)*y+1/336)*y-1/56)*y+1/8)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Exp09-29 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1((((((((1-x)*x/40320-1/20160)*x+1/6720)*x-1/1680)*x+1/336)*x-1/56)*x+1/8)/exp(x))
  Ty=fn1((((((((1-y)*y/40320-1/20160)*y+1/6720)*y-1/1680)*y+1/336)*y-1/56)*y+1/8)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Exp09-30 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = exp[9] = (exp(-z)-zexp[8])/8
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=(((((((1-x0)*x0/40320-1/20160)*x0+1/6720)*x0-1/1680)*x0+1/336)*x0-1/56)*x0+1/8)/exp(x0)
  Fx1=(((((((1-x1)*x1/40320-1/20160)*x1+1/6720)*x1-1/1680)*x1+1/336)*x1-1/56)*x1+1/8)/exp(x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


exp1 (XAXIS) {
   ; An exponential function can produce fractals as well
  z = pixel, zp = (0,0):
  temp = z
  z = -exp(z) - zp
  zp = temp
  |zp| <= 4 
  ;SOURCE: noel.frm
}


Exp10-01 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Fx=((((((((x-1)*x/362880+1/181440)*x-1/60480)*x+1/15120)*x-1/3024)*x+1/504)*x-1/72)*x+1/9)/exp(x)
  Fy=((((((((y-1)*y/362880+1/181440)*y-1/60480)*y+1/15120)*y-1/3024)*y+1/504)*y-1/72)*y+1/9)/exp(y)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Exp10-02 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  bailout=p1+4, z=pixel:
  z=((((((((z-1)*z/362880+1/181440)*z-1/60480)*z+1/15120)*z-1/3024)*z+1/504)*z-1/72)*z+1/9)/exp(z)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Exp10-03 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  const=p1, z=pixel:
  z=const+(((((((((z-1)*z/362880+1/181440)*z-1/60480)*z+1/15120)*z-1/3024)*z+1/504)*z-1/72)*z+1/9)/exp(z))
  |z|<100
  ;SOURCE: chby3.frm
}


Exp10-04 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  const=pixel, z=p1:
  z=const+(((((((((z-1)*z/362880+1/181440)*z-1/60480)*z+1/15120)*z-1/3024)*z+1/504)*z-1/72)*z+1/9)/exp(z))
  |z|<100
  ;SOURCE: chby4.frm
}


Exp10-05 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=(((((((((z-1)*z/362880+1/181440)*z-1/60480)*z+1/15120)*z-1/3024)*z+1/504)*z-1/72)*z+1/9)/ez)
  fd=((((((((1/40320-z/362880)*z-1/40320)*z+1/20160)*z-1/6720)*z+1/1680)*z-1/336)*z+1/56)*z-1/8)/ez
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Exp10-06 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=(((((((((z-1)*z/362880+1/181440)*z-1/60480)*z+1/15120)*z-1/3024)*z+1/504)*z-1/72)*z+1/9)/ez)
  fd=((((((((1/40320-z/362880)*z-1/40320)*z+1/20160)*z-1/6720)*z+1/1680)*z-1/336)*z+1/56)*z-1/8)/ez
  fdd=((((((((z/362880-17/362880)*z+1/5040)*z-1/5040)*z+1/2520)*z-1/840)*z+1/210)*z-1/42)*z+1/7)/ez
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Exp10-07 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=(((((((((z-1)*z/362880+1/181440)*z-1/60480)*z+1/15120)*z-1/3024)*z+1/504)*z-1/72)*z+1/9)/ez)
  fd=((((((((1/40320-z/362880)*z-1/40320)*z+1/20160)*z-1/6720)*z+1/1680)*z-1/336)*z+1/56)*z-1/8)/ez
  oz=z
  w=z-f/fd
  fw=(((((((((w-1)*w/362880+1/181440)*w-1/60480)*w+1/15120)*w-1/3024)*w+1/504)*w-1/72)*w+1/9)/exp(w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Exp10-08 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=sin(((((((((x-1)*x/362880+1/181440)*x-1/60480)*x+1/15120)*x-1/3024)*x+1/504)*x-1/72)*x+1/9)/exp(x))
  Ty=sin(((((((((y-1)*y/362880+1/181440)*y-1/60480)*y+1/15120)*y-1/3024)*y+1/504)*y-1/72)*y+1/9)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Exp10-09 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(((((((((x-1)*x/362880+1/181440)*x-1/60480)*x+1/15120)*x-1/3024)*x+1/504)*x-1/72)*x+1/9)/exp(x))
  Ty=fn1(((((((((y-1)*y/362880+1/181440)*y-1/60480)*y+1/15120)*y-1/3024)*y+1/504)*y-1/72)*y+1/9)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Exp10-10 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(((((((((p1-1)*p1/362880+1/181440)*p1-1/60480)*p1+1/15120)*p1-1/3024)*p1+1/504)*p1-1/72)*p1+1/9)/exp(p1)):
  zt=z
  foz=fz
  fz=(((((((((z-1)*z/362880+1/181440)*z-1/60480)*z+1/15120)*z-1/3024)*z+1/504)*z-1/72)*z+1/9)/exp(z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Exp10-11 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  const=p1, z=pixel:
  z=const*(((((((((z-1)*z/362880+1/181440)*z-1/60480)*z+1/15120)*z-1/3024)*z+1/504)*z-1/72)*z+1/9)/exp(z))
  |z|<100
  ;SOURCE: chby11.frm
}


Exp10-12 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  const=pixel, z=p1:
  z=const*(((((((((z-1)*z/362880+1/181440)*z-1/60480)*z+1/15120)*z-1/3024)*z+1/504)*z-1/72)*z+1/9)/exp(z))
  |z|<100
  ;SOURCE: chby12.frm
}


Exp10-13 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=(((((((((z-1)*z/362880+1/181440)*z-1/60480)*z+1/15120)*z-1/3024)*z+1/504)*z-1/72)*z+1/9)/ez)
  fd=((((((((1/40320-z/362880)*z-1/40320)*z+1/20160)*z-1/6720)*z+1/1680)*z-1/336)*z+1/56)*z-1/8)/ez
  fdd=((((((((z/362880-17/362880)*z+1/5040)*z-1/5040)*z+1/2520)*z-1/840)*z+1/210)*z-1/42)*z+1/7)/ez
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Exp10-14 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  f=(((((((((z-1)*z/362880+1/181440)*z-1/60480)*z+1/15120)*z-1/3024)*z+1/504)*z-1/72)*z+1/9)/ez)
  fd=((((((((1/40320-z/362880)*z-1/40320)*z+1/20160)*z-1/6720)*z+1/1680)*z-1/336)*z+1/56)*z-1/8)/ez
  oz=z
  w=z-f/fd
  fw=(((((((((w-1)*w/362880+1/181440)*w-1/60480)*w+1/15120)*w-1/3024)*w+1/504)*w-1/72)*w+1/9)/exp(w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Exp10-15 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=(((((((((z-1)*z/362880+1/181440)*z-1/60480)*z+1/15120)*z-1/3024)*z+1/504)*z-1/72)*z+1/9)/ez)
  fd=((((((((1/40320-z/362880)*z-1/40320)*z+1/20160)*z-1/6720)*z+1/1680)*z-1/336)*z+1/56)*z-1/8)/ez
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Exp10-16 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(((((((((p1-1)*p1/362880+1/181440)*p1-1/60480)*p1+1/15120)*p1-1/3024)*p1+1/504)*p1-1/72)*p1+1/9)/exp(p1)):
  zt=z
  foz=fz
  fz=(((((((((z-1)*z/362880+1/181440)*z-1/60480)*z+1/15120)*z-1/3024)*z+1/504)*z-1/72)*z+1/9)/exp(z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Exp10-17 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  z=pixel, oz=0
  fz=1/9
  zt=fn1(z)+p1:
  foz=fz
  fz=(((((((((z-1)*z/362880+1/181440)*z-1/60480)*z+1/15120)*z-1/3024)*z+1/504)*z-1/72)*z+1/9)/exp(z))
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
  ;SOURCE: chby17.frm
}


Exp10-18 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  z=pixel, oz=0
  fz=1/9
  zt=fn1(z)+p1:
  foz=fz
  fz=(((((((((z-1)*z/362880+1/181440)*z-1/60480)*z+1/15120)*z-1/3024)*z+1/504)*z-1/72)*z+1/9)/exp(z))
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |(|z|)-(|oz|)|>=0.00000001
  ;SOURCE: chby18.frm
}


Exp10-19 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*(((((((((x-1)*x/362880+1/181440)*x-1/60480)*x+1/15120)*x-1/3024)*x+1/504)*x-1/72)*x+1/9)/exp(x))
  x=x-t*(((((((((y-1)*y/362880+1/181440)*y-1/60480)*y+1/15120)*y-1/3024)*y+1/504)*y-1/72)*y+1/9)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Exp10-20 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*sin(((((((((x-1)*x/362880+1/181440)*x-1/60480)*x+1/15120)*x-1/3024)*x+1/504)*x-1/72)*x+1/9)/exp(x))
  x=x-t*sin(((((((((y-1)*y/362880+1/181440)*y-1/60480)*y+1/15120)*y-1/3024)*y+1/504)*y-1/72)*y+1/9)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Exp10-21 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1(((((((((x-1)*x/362880+1/181440)*x-1/60480)*x+1/15120)*x-1/3024)*x+1/504)*x-1/72)*x+1/9)/exp(x))
  x=x-t*fn1(((((((((y-1)*y/362880+1/181440)*y-1/60480)*y+1/15120)*y-1/3024)*y+1/504)*y-1/72)*y+1/9)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Exp10-22 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(((((((((x-1)*x/362880+1/181440)*x-1/60480)*x+1/15120)*x-1/3024)*x+1/504)*x-1/72)*x+1/9)/exp(x))
  Ty=fn2(((((((((y-1)*y/362880+1/181440)*y-1/60480)*y+1/15120)*y-1/3024)*y+1/504)*y-1/72)*y+1/9)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Exp10-23 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  Tx=fn1(((((((((x-1)*x/362880+1/181440)*x-1/60480)*x+1/15120)*x-1/3024)*x+1/504)*x-1/72)*x+1/9)/exp(x))
  Ty=fn2(((((((((y-1)*y/362880+1/181440)*y-1/60480)*y+1/15120)*y-1/3024)*y+1/504)*y-1/72)*y+1/9)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Exp10-24 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1(((((((((x-1)*x/362880+1/181440)*x-1/60480)*x+1/15120)*x-1/3024)*x+1/504)*x-1/72)*x+1/9)/exp(x))
  x=x-t*fn2(((((((((y-1)*y/362880+1/181440)*y-1/60480)*y+1/15120)*y-1/3024)*y+1/504)*y-1/72)*y+1/9)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Exp10-25 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  y=y+t*fn1(((((((((x-1)*x/362880+1/181440)*x-1/60480)*x+1/15120)*x-1/3024)*x+1/504)*x-1/72)*x+1/9)/exp(x))
  x=x-t*fn2(((((((((y-1)*y/362880+1/181440)*y-1/60480)*y+1/15120)*y-1/3024)*y+1/504)*y-1/72)*y+1/9)/exp(y))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Exp10-26 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  Tx=fn1(((((((((x-1)*x/362880+1/181440)*x-1/60480)*x+1/15120)*x-1/3024)*x+1/504)*x-1/72)*x+1/9)/exp(x))
  Ty=fn1(((((((((y-1)*y/362880+1/181440)*y-1/60480)*y+1/15120)*y-1/3024)*y+1/504)*y-1/72)*y+1/9)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Exp10-27 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  Tx=fn1(((((((((x-1)*x/362880+1/181440)*x-1/60480)*x+1/15120)*x-1/3024)*x+1/504)*x-1/72)*x+1/9)/exp(x))
  Ty=fn1(((((((((y-1)*y/362880+1/181440)*y-1/60480)*y+1/15120)*y-1/3024)*y+1/504)*y-1/72)*y+1/9)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Exp10-28 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  Tx=fn1(((((((((x-1)*x/362880+1/181440)*x-1/60480)*x+1/15120)*x-1/3024)*x+1/504)*x-1/72)*x+1/9)/exp(x))
  Ty=fn1(((((((((y-1)*y/362880+1/181440)*y-1/60480)*y+1/15120)*y-1/3024)*y+1/504)*y-1/72)*y+1/9)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Exp10-29 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  Tx=fn1(((((((((x-1)*x/362880+1/181440)*x-1/60480)*x+1/15120)*x-1/3024)*x+1/504)*x-1/72)*x+1/9)/exp(x))
  Ty=fn1(((((((((y-1)*y/362880+1/181440)*y-1/60480)*y+1/15120)*y-1/3024)*y+1/504)*y-1/72)*y+1/9)/exp(y))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Exp10-30 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = exp[10] = (exp(-z)-zexp[9])/9
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=((((((((x0-1)*x0/362880+1/181440)*x0-1/60480)*x0+1/15120)*x0-1/3024)*x0+1/504)*x0-1/72)*x0+1/9)/exp(x0)
  Fx1=((((((((x1-1)*x1/362880+1/181440)*x1-1/60480)*x1+1/15120)*x1-1/3024)*x1+1/504)*x1-1/72)*x1+1/9)/exp(x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


exp1x (XAXIS) {; From Noel Giffin noel@triumf.ca
               ; An exponential function can produce fractals as well
  z = pixel, zp = (0,0), huge=1.e32:
  temp = z
  z = -exp(z) - zp
  zp = p1/temp
  (|zp| <= huge && |z| <= huge) 
  ;SOURCE: noel1.frm
}


Exp2 (XAXIS) {; Jm Collard-Richard
  z=pixel:
  z1=exp(z*z)-exp(z)
  z2=2*z*exp(z*z)-exp(z)
  z=z-(z1/z2)
  0.001<=|z1| 
  ;SOURCE: jmcr2.frm
}


Exp2Z (Xaxis) {; Jm Collard-Richard   ---- Use Float=Yes
               ; Resol : exp(-1/(z*z))=z
  z=pixel:
  exp2z=exp(1/(z*(-z)))
  z1=exp2z-z
  z2=(2/(z^3))*exp2z-1
  z=z-(z1/z2)
  0.001<=|z1|  
  ;SOURCE: jmcr2.frm
}


Exp2Z2 (xaxis) {; Jm Collard-Richard   --- Use Float=yes
                ; Resol : exp(-1/(z*z))=z*z
  z=pixel:
  exp2z=exp(1/(z*(-z)))
  z1=exp2z-z*z
  z2=(2/(z^3))*exp2z+z*(-2)
  z=z-(z1/z2)
  0.001<=|z1|    
  ;SOURCE: jmcr2.frm
}


Exp2ZZ (Xaxis) {; Jm Collard-Richard    --- Use Float=Yes
                ; Resol : exp(-1/(z*z))=z^z-1
  z=pixel:
  exp2z=exp(1/(z*(-z)))
  zz=z^z
  z1=exp2z-zz-1
  z2=(2/(z^3))*exp2z-(log(z)+1)*zz
  z=z-(z1/z2)
  0.001<=|z1|    
  ;SOURCE: jmcr2.frm
}


Exp3(XAXIS) {; Jm Collard-Richard
  z=pixel:
  z1=exp(z^3)-exp(z)
  z2=3*z*z*exp(z^3)-exp(z)
  z=z-(z1/z2)
  0.001<=|z1| 
  ;SOURCE: jmcr2.frm
}


Exp_z (XAXIS) {; S Gallet z -> exp (z)
  c = exp (-1), z = pixel:
  z = exp(z)*c
  real (z) <= |p1|
  ;SOURCE: gallet_0.frm
}


Exp_z2 (XAXIS) {; S Gallet z -> exp (z)
  z =pixel:
  z = exp(z)
  (real(p1)<=real(z)) && (|z|<|p2|)
  ;SOURCE: gallet_0.frm
}


Exp_z3 (XAXIS) {; S Gallet z -> exp (z)
  z = pixel:
  z = exp(z)
  real(z)< p1
  ;SOURCE: gallet_0.frm
}


ExpDog (YAXIS) { 
  z = Pixel, b = p1+2:  
  z = exp( z ) * pixel  
  |z| <= b 
  ;SOURCE: newform.frm
}


Explode_J_2j {; by Jay Hill, 1998
              ; after Paul Derbyshire
  c=P1        ; p1 is the Julia parameter
  z=pixel
  :           ; Derbyshire's formula
  z=exp(z)+c/sqr(z+2)
  real(z)<=900000
  ;SOURCE: 98msg.frm
}


Explode_M_2j {; by Jay Hill, 1998
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
  :           ; Derbyshire's formula
  z=exp(z)+c/sqr(z+2)
  real(z)<=900000
  ;SOURCE: 98msg.frm
}


Explode_M_2j1 {; by Jay Hill, 1998
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
  :     ; Derbyshire's formula
  z=exp(z)+c/sqr(z+2)
  real(z)<=900000
  ;SOURCE: 0from_ml.frm
}


Explode_M_2J_a (xaxis) {; by Jay Hill 1998
                        ; after Paul Derbyshire
  c=pixel, c2=2*c, z=0
      ; eight steps of Jay's formula for critical point
  z=.2*z+.8*(-2+exp((log(c2)-z)/3))
  z=.2*z+.8*(-2+exp((log(c2)-z)/3))
  z=.2*z+.8*(-2+exp((log(c2)-z)/3))
  z=.2*z+.8*(-2+exp((log(c2)-z)/3))
  z=.2*z+.8*(-2+exp((log(c2)-z)/3))
  z=.2*z+.8*(-2+exp((log(c2)-z)/3))
  z=.2*z+.8*(-2+exp((log(c2)-z)/3))
  z=.2*z+.8*(-2+exp((log(c2)-z)/3))
      ; finish with one of Derbyshire's Newton steps
  z2=z+2
  s=sqr(z2)
  t=z2*s
  ez=exp(z)
  func=t*ez-c2
  der=3*s*ez+t*ez
  z=z-func/der
  :   ; Paul Derbyshire's formula
  z=exp(z)+c/sqr(z+2)
  real(z)<=900000
  ;SOURCE: 0from_ml.frm
}


Explode_M_2Ja (xaxis) {; by Jay Hill 1998
                       ; after Paul Derbyshire
  c=pixel, c2=2*c,   z=0
             ; eight steps of Jay's formula for critical point
  z=.2*z+.8*(-2+exp((log(c2)-z)/3))
  z=.2*z+.8*(-2+exp((log(c2)-z)/3))
  z=.2*z+.8*(-2+exp((log(c2)-z)/3))
  z=.2*z+.8*(-2+exp((log(c2)-z)/3))
  z=.2*z+.8*(-2+exp((log(c2)-z)/3))
  z=.2*z+.8*(-2+exp((log(c2)-z)/3))
  z=.2*z+.8*(-2+exp((log(c2)-z)/3))
  z=.2*z+.8*(-2+exp((log(c2)-z)/3))
            ; finish with one of Derbyshire's Newton steps
  z2=z+2
  s=sqr(z2)
  t=z2*s
  ez=exp(z)
  func=t*ez-c2
  der=3*s*ez+t*ez
  z=z-func/der
  :         ; Paul Derbyshire's formula
  z=exp(z)+c/sqr(z+2)
  real(z)<=900000
  ;SOURCE: 98msg.frm
}


Explode_M_p3j {; by Jay Hill, 1998
               ; z=exp(z)+c/(z+p)^3
  c=pixel, p=p1   ; p1 is a constant in the formula
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
  z=exp(z)+c/sqr(z+p)/(z+p)
  real(z)<=900000
  ;SOURCE: 98msg.frm
}


Explode_M_pj {; by Jay Hill, 1998
              ; after Paul Derbyshire
  c=pixel, p=p1    ; p1 is a constant in the formula
  z=0              ; steps of Jay's formula
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
  z=exp(z)+c/sqr(z+p)
  real(z)<=900000
  ;SOURCE: 98msg.frm
}


ExpSinZ (Xaxis) { ; Jm Collard-Richard --- Use Float=Yes
                  ; Resol : exp(sin(z))=1
  z=pixel:
  es=exp(sin(z))
  c=cos(z)
  z1=es-1
  z2=c*es
  z=z-(z1/z2)
  0.001<=|z1|   
  ;SOURCE: jmcr2.frm
}


ExpZ2 (xaxis)  {; Jm Collard-Richard
                ; exp(z*z)=1  float=yes
  z=pixel:
  z1=exp(z*z)-1
  z2=2*z*exp(z*z)
  z=z-(z1/z2)
  0.0001<=|z1| 
  ;SOURCE: jmcr2.frm
}


ExpZ_N (xaxis) {; Jm Collard-Richard  exp(z^n)=1 p1=n  float=yes
  z=pixel:
  z0=exp(z^p1)
  z1=z0-1
  z2=p1*z^(p1-1)*z0
  z=z-(z1/z2)
  0.0001<=|z1| 
  ;SOURCE: jmcr2.frm
}


ExpZZ (XAXIS) {; Jm Collard-Richard
  z=pixel:
  z1=exp(z*log(z))-exp(z)
  z2=(log(z)+1)*exp(z*log(z))-exp(z)
  z=z-(z1/z2)
  0.001<=|z1| 
  ;SOURCE: jmcr2.frm
}


ExSiCoZ (Xaxis) {; Jm Collard-Richard  --- Use Float=Yes
                 ; Resol : exp(sin(z))=cos(z)
  z=pixel:
  s=sin(z)
  es=exp(s)
  c=cos(z)
  z1=es-c
  z2=c*es+s
  z=z-(z1/z2)
  0.001<=|z1|   
  ;SOURCE: jmcr2.frm
}


Eyeball (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=sinh(z)+pixel
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}


EyeballC (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSE
    z=sinh(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}


eyes {; Giuseppe Zito
  z = pixel
  c3 = -0.173276
  d7 = -0.637284
  d8 = 0.496581
  d9 = 0.406347
  d15 = 0.926932
  d17 = 0.693057
  d20 = 0.398282
  : 
  x = real(z), y = imag(z)
  s0 = y
  s0 = s0 *x
  s0 = s0 -c3
  newx = s0 
  s0 = x
  s0 = s0 -x
  s1 = x
  s1 = s1 -x
  s1 = s1 -d7
  s1 = s1 -d8
  s1 = s1 +d9
  s1 = s1 +y
  s1 = s1 *x
  s0 = s0 *s1
  s0 = s0 *y
  s0 = s0 /d15
  s0 = s0 -y
  s0 = s0 *d17
  s0 = s0 *x
  s0 = s0 -d20
  s0 = s0 *x
  s0 = s0 +y
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}

