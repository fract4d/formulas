; dmj-pub.frm
; FractInt Formula File by Damien M. Jones

dmj--Read-Me-First {; dmj-pub.frm 1.0 - September 11, 1997
	; Scroll down (CTRL-DOWN) to see all of this text.
	;
	; This formula file contains formulae written by Damien M. Jones
	; (whom you can contact via e-mail at dmj@icd.com).
	;
	; These formulae provide new coloring algorithms to the Mandelbrot
	; fractal z[n+1] = z[n]^2 + c and Paul Derbyshire's NovaM type
	; z[n+1] = z[n] - (z[n]^3-1) / (3z[n]^2) + c.
	;
	; You will need to use floating-point math (on the X page) with
	; all of these types.  If you don't, you will generally get a
	; solid-colored image which is rather dull.  NovaM fractals also
	; require peridocity to be turned OFF (press g, type
	; "periodicity=0").
	;
	; ORBIT TRAP METHODS
	;   Formula names for orbit trap types are given as
	;   dmj-XXX-YYY-ZZZ[-I].
	;
	; XXX: This is the fractal type.
	;   Mand - Traditional Mandelbrot set.
	;   Nova - Nova M-set.
	;
	; YYY: This is the orbit "trap" type.  Points do not actually
	;      bail out when they are trapped, they are simply tagged
	;      for later.
	;   Pnt  - Point.  Whichever z[n] approaches closest to p1 is
	;          used.  Distances can be distorted by changing p2i
	;          to use "elliptical" distance instead of circular,
	;          and rotated with p2r.
	;   Hyp  - Hyperbola.  Whichever z[n] approaches closest to axes
	;          drawn through p1 is used.  Distances are measured
	;          "hyperbolically", so that "equidistant" points form
	;          hyperbolae.  Use p2r to rotate the axes through p1.
	;   Cir  - Circle.  Whichever z[n] approaches closest to a
	;          ring at p1, radius p3i, is used.  By changing p2i to
	;          a value other than 1 (or 0), the aspect ratio of the
	;          ring can be altered, and the ellipse rotated with
	;          p2r.
	;   Cr2  - Circle^2.  This was an error created while making the
	;          Circle trap type, but it produces interesting images
	;          (especially with the Decomposition sub-type).
	;   Pls  - Plus.  Whichever z[n] approaches closest to axes
	;          drawn through p1 is used.  Distances are measured to
	;          the closest axis; changing p2i will alter the "aspect"
	;          to favor one axis over the other.  Axes may be rotated
	;          with p2r.
	;   Rct  - Rectangle.  Whichever z[n] approaches closest to p1 is
	;          used.  Distances are measured to the farthest axis
	;          drawn through p1, which can be rotated with p2r and
	;          skewed to favor one axis over the other with p2i.
	;   Spi  - Spiral.  Whichever z[n] approaches closest to a spiral
	;          centered at p1 is used.  The spiral is logarithmic.
	;          Tightness of the spiral is controlled with p2r, and a
	;          minimum number of iterations specified with p2i.
	;   Ray  - Ray.  Whichever z[n] approaches closest to a ray
	;          originating at p1 with angle p2r is used.  A minimum
	;          number of iterations can be specified with p2i.
	;   DRy  - Dual Ray.  Whichever z[n] approaches closest to a pair
	;          of rays originating at p1 with angles p2r and p2r+180
	;          is used.  A minimum number of iterations can be
	;          specified with p2i.
	;
	; ZZZ: This is the information that is returned from the coloring
	;      algorithm.
	;   Ang  - Angle.  The angle of the trapped point, relative to
	;          the trap, is returned.  Use decomposition or outside =
	;          atan on the X page to show it.
	;   Dec  - Decomposition.  The angle of the trapped point,
	;          relative to the origin, is returned.  Use
	;          decomposition or outside = atan on the X page to show
	;          it.
	;   Dst  - Distance.  The distance of the trapped point from the
	;          trap is returned.  Use outside = real on the X page to
	;          show it.
	;   Itr  - Iteration.  The iteration of the trapped point is
	;          returned.  Use outside = real on the X page to show
	;          it.
	;
	; -I: If this is at the end of the formula name, points that
	;     would normally be "inside" will be rendered with the same
	;     algorithm as the "outside" points.  You MUST turn
	;     periodicity off for this to work properly.
	;
	; Parameters:					       Default:
	;   p1 : orbit trap center point / Julia c		(0,0)
	;   p2r: rotation, in degrees, of trap			0
	;   p2i: aspect ratio (horizontal:vertical) of trap	1
	;   p3r: color scaling value				75
	;   p3i: bailout / extra parameter			128 / 1
	;
	; OTHER METHODS
	;   A few other methods are also included here.  These are
	;   named dmj-XXX-YYY[-I].  XXX is the fractal type, as listed
	;   above.  -I, if present, indicates inside is colored also.
	;
	; YYY: This is the coloring method.
	;   Smooth    - This is a continuous-color algorithm.  Changing
	;               p3r will let you alter how quickly the palette
	;               loops.  Each integer iteration band will have
	;               p3r colors.  Try altern.map with p3r set to 255.
	;               p3i is the bailout, default of 128.  (Based on
	;               the work of Linas Vepstas.)
	;   SmoothPHC - This is the same as Smooth, but uses two color
	;               scales (p2r and p2i) and interleaves them with
	;               the PHC dithering method.
	;   SmoothX2  - This is similar to SmoothPHC, but the two color
	;               ranges will use separate portions of the palette
	;               (first half, second half).
	;   Triangle  - This colors based on Kerry Mitchell's triangle
	;               inequality method (but smoothly continuous).
	;               Color scale is set by p3r; bailout by p3i.
	;   ThetaW    - This colors based on the average angle of all
	;               z[n].  The average is weighted so that the first
	;               iteration counts the most.  (Inspired by Kerry
	;               Mitchell.)
	;   ThetaW2   - This colors based on the average angle of all
	;               z[n].  The average is weighted so that the last
	;               iteration counts the most.  (Inspired by Kerry
	;               Mitchell.)
	;
	; CHANGING THE FORMULAE
	;   Each formula is in three blocks.  The first part covers the
	;   initialization of the algorithm and filling in default
	;   parameters.  The second part contains the actual fractal
	;   initialization and iteration (together).  This is the part
	;   that should be replaced to change the fractal type.  The
	;   third part contains the bulk of the coloring algorithm code;
	;   towards the end, you should be sure to change the bailout IF
	;   condition if your new fractal type has special bailout
	;   considerations.

	; try outside = real on this if you're really bored
	; and use a color map like flamey.map or blues.map

	y = pixel*2 - (3,-2.4), done = 0, count = 0, count2 = 0
	e = abs(real(y)^2 + imag(y)^2)
	e = abs(real(y)^3 + imag(y)^3) + e
	e = abs(real(y)^(-5) + imag(y)^(-5)) + e
	e = e * 100000
	e = e - floor(e/128)*128 + 32
	dummy = maxit
	z = 0:

	z = z + 1
	count = count + 1
	IF (real(y) < -0.45)
	  d = |y - (-0.45,-0.05)|
	  IF (d > 0.0025 && d < 0.0225)
	    ;d curve
	  ELSE
	    done = -1
	  ENDIF

	ELSEIF (real(y) <= -0.2)
	  IF (real(y) <= -0.4)
	    IF ((imag(y) > 0 && imag(y) < 0.1) || (imag(y) > -0.2 && imag(y) < -0.1))
	      ;dcurvebars
	    ELSE
	      done = -1
	    ENDIF
	  ELSE IF (real(y) < -0.3 && imag(y) > -0.2 && imag(y) < 0.3)
	    ;dstalk
	  ELSE
	    done = -1
	  ENDIF
	  
	ELSEIF (real(y) < 0.3)
	  IF (imag(y) <= -0.05 && imag(y) > -0.2)
	    IF (real(y) < -0.1 || real(y) > 0.2 || (real(y) > 0 && real(y) < 0.1))
	      ;mstalks
	    ELSE
	      done = -1
	    ENDIF
	  ELSE IF (real(y) < 0.05)
	    d = |y - (-0.05,-0.05)|
	    IF (d > 0.0025 && d < 0.0225)
	      ;mlefttop
	    ELSE
	      done = -1
	    ENDIF
	  ELSE
	    d = |y - (0.15,-0.05)|
	    IF (d > 0.0025 && d < 0.0225)
	      ;mrighttop
	    ELSE
	      done = -1
	    ENDIF
	  ENDIF
	  
	ELSE
	  IF (imag(y) > 0.1)
	    IF (real(y) > 0.5 && real(y) < 0.6 && imag(y) > 0.2 && imag(y) < 0.3)
	      ;jdot
	    ELSE
	      done = -1
	    ENDIF
	  ELSEIF (imag(y) > -0.15)
	    IF (real(y) > 0.5 && real(y) < 0.6)
	      ;jstalk
	    ELSE
	      done = -1
	    ENDIF
	  ELSEIF (real(y) > 0.45)
	    d = |y - (0.45,-0.15)|
	    IF (d > 0.0025 && d < 0.0225)
	      ;jcurve
	    ELSE
	      done = -1
	    ENDIF
	  ELSE
	    IF (real(y) > 0.4 && imag(y) > -0.3 && imag(y) < -0.2)
	      ;jtail
	    ELSE
	      done = -1
	    ENDIF
	  ENDIF
	
	ENDIF
	
	IF (done >= 0)
	  y = (y - (0.05,-0.05)) * 1.02 + (0.05,-0.05)
	  count2 = count2 + 1	
	ELSE
	  IF (count2 == 0)
	    z = e - count
	  ENDIF
	ENDIF
	
	done >= 0
}

;--------------------------------------------------------------------------
; Mandlebrot versions.

dmj-Mand-Pnt-Dst { ; outside = real: closest distance z[n] to point at p1
	; With p1 = (0,0), p2 = (0,0) this is the same as the bof60 inside
	; coloring option (except it works outside).  It is also similar
	; to Paul Carlson's "Bubbles" type.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + imag(p3)		; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.

	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
	d = |z2|			; Compute distance to p1 (squared).
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3))		; Point exceeds bailout.
	  z = sqrt(closest) * real(p3) - done ; Return color in real part of z.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Pnt-Dst-I { ; outside = real: closest distance z[n] to point at p1
	; With p1 = (0,0), this is the same as the bof60 inside coloring
	; option (except it works outside).  It is also similar to Paul
	; Carlson's "Bubbles" type.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + imag(p3)		; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.

	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
	d = |z2|			; Compute distance to p1 (squared).
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3) || done >= maxit)  ; Point exceeds bailout / inside.
	  z = sqrt(closest) * real(p3) - done ; Return color in real part of z.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Pnt-Ang { ; outside = decomp: angle of closest z[n] to point at p1
	; outside = atan will give a slightly different coloring.
	; This is the angle relative to p1.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + imag(p3)		; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.

	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
	d = |z2|			; Compute distance to p1 (squared).
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3))		; Point exceeds bailout.
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Pnt-Ang-I { ; outside = decomp: angle of closest z[n] to point at p1
	; outside = atan will give a slightly different coloring.
	; This is the angle relative to p1.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + imag(p3)		; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.

	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
	d = |z2|			; Compute distance to p1 (squared).
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3) || done >= maxit)   ; Point exceeds bailout / inside.
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Pnt-Dec { ; outside = decomp: angle of closest z[n] to point at p1
	; outside = atan will give a slightly different coloring.
	; This is the angle relative to the origin.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + imag(p3)		; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.

	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
	d = |z2|			; Compute distance to p1 (squared).
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3))		; Point exceeds bailout.
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Pnt-Dec-I { ; outside = decomp: angle of closest z[n] to point at p1
	; outside = atan will give a slightly different coloring.
	; This is the angle relative to the origin.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + imag(p3)		; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.

	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
	d = |z2|			; Compute distance to p1 (squared).
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3) || done >= maxit)   ; Point exceeds bailout / inside.
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Pnt-Itr { ; outside = real: n of closest z[n] to point at p1
	; With p1 = (0,0), this is the same as the bof61 inside coloring
	; option (except it works outside).

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + imag(p3)		; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.

	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
	d = |z2|			; Compute distance to p1 (squared).
	IF (d < closest)		; Closer than previous value.
	  point = done			; Save the iteration number.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3))		; Point exceeds bailout.
	  z = point - done		; Return iteration of closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Pnt-Itr-I { ; outside = real: n of closest z[n] to point at p1
	; With p1 = (0,0), this is the same as the bof61 inside coloring
	; option (except it works outside).

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + imag(p3)		; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.

	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
	d = |z2|			; Compute distance to p1 (squared).
	IF (d < closest)		; Closer than previous value.
	  point = done			; Save the iteration number.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3) || done >= maxit)   ; Point exceeds bailout / inside.
	  z = point - done		; Return iteration of closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Hyp-Dst { ; outside = real: closest z[n] to hyperbola at p1

	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	d = abs(imag(z2) * real(z2))	; Compute hyperbolic distance.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3))		; Point exceeds bailout.
	  z = closest * real(p3) - done	; Return color in real part of z.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Hyp-Dst-I { ; outside = real: closest z[n] to hyperbola at p1

	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	d = abs(imag(z2) * real(z2))	; Compute hyperbolic distance.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3) || done >= maxit) ; Point exceeds bailout / inside.
	  z = closest * real(p3) - done	; Return color in real part of z.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Hyp-Ang { ; outside = decomp: angle of closest z[n] to hyperbola at p1
	; This is the angle relative to p1.

	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	d = abs(imag(z2) * real(z2))	; Compute hyperbolic distance.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3))		; Point exceeds bailout.
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Hyp-Ang-I { ; outside = decomp: angle of closest z[n] to hyperbola at p1
	; This is the angle relative to p1.

	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	d = abs(imag(z2) * real(z2))	; Compute hyperbolic distance.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3) || done >= maxit) ; Point exceeds bailout / inside.
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Hyp-Dec { ; outside = decomp: angle of closest z[n] to hyperbola at p1
	; This is the angle relative to the origin.

	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	d = abs(imag(z2) * real(z2))	; Compute hyperbolic distance.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3))		; Point exceeds bailout.
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Hyp-Dec-I { ; outside = decomp: angle of closest z[n] to hyperbola at p1
	; This is the angle relative to the origin.

	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	d = abs(imag(z2) * real(z2))	; Compute hyperbolic distance.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3) || done >= maxit) ; Point exceeds bailout / inside.
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Hyp-Itr { ; outside = real: n of closest z[n] to hyperbola at p1

	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	d = abs(imag(z2) * real(z2))	; Compute hyperbolic distance.
	IF (d < closest)		; Closer than previous value.
	  point = done			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3))		; Point exceeds bailout.
	  z = point - done		; Return iteration of closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Hyp-Itr-I { ; outside = real: n of closest z[n] to hyperbola at p1

	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	d = abs(imag(z2) * real(z2))	; Compute hyperbolic distance.
	IF (d < closest)		; Closer than previous value.
	  point = done			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3) || done >= maxit) ; Point exceeds bailout / inside.
	  z = point - done		; Return iteration of closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Cir-Dst { ; outside = real: closest z[n] to ring at p1

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
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
	d = abs(cabs(z2) - imag(p3))	; Compute ring distance.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > 128)			; Point exceeds bailout.
	  z = closest * real(p3) - done	; Return color in real part of z.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Cir-Dst-I { ; outside = real: closest z[n] to ring at p1

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
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
	d = abs(cabs(z2) - imag(p3))	; Compute ring distance.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > 128 || done >= maxit) ; Point exceeds bailout / inside.
	  z = closest * real(p3) - done	; Return color in real part of z.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Cir-Ang { ; outside = decomp: angle of closest z[n] to ring at p1
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
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
	d = abs(cabs(z2) - imag(p3))	; Compute ring distance.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > 128)			; Point exceeds bailout.
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Cir-Ang-I { ; outside = decomp: angle of closest z[n] to ring at p1
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
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
	d = abs(cabs(z2) - imag(p3))	; Compute ring distance.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > 128 || done >= maxit) ; Point exceeds bailout / inside.
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Cir-Dec { ; outside = decomp: angle of closest z[n] to ring at p1
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
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
	d = abs(cabs(z2) - imag(p3))	; Compute ring distance.
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

dmj-Mand-Cir-Dec-I { ; outside = decomp: angle of closest z[n] to ring at p1
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
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
	d = abs(cabs(z2) - imag(p3))	; Compute ring distance.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > 128 || done >= maxit) ; Point exceeds bailout / inside.
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Cir-Itr { ; outside = real: n of closest z[n] to ring at p1

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
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
	d = abs(cabs(z2) - imag(p3))	; Compute ring distance.
	IF (d < closest)		; Closer than previous value.
	  point = done			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > 128)			; Point exceeds bailout.
	  z = point - done		; Return iteration of closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Cir-Itr-I { ; outside = real: n of closest z[n] to ring at p1

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
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
	d = abs(cabs(z2) - imag(p3))	; Compute ring distance.
	IF (d < closest)		; Closer than previous value.
	  point = done			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > 128 || done >= maxit) ; Point exceeds bailout / inside.
	  z = point - done		; Return iteration of closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Cr2-Dst { ; outside = real: closest z[n] to ring at p1

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
	  z = closest * real(p3) - done	; Return color in real part of z.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Cr2-Dst-I { ; outside = real: closest z[n] to ring at p1

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
	IF (|z| > 128 || done >= maxit) ; Point exceeds bailout / inside.
	  z = closest * real(p3) - done	; Return color in real part of z.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Cr2-Ang { ; outside = decomp: angle of closest z[n] to ring at p1
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
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Cr2-Ang-I { ; outside = decomp: angle of closest z[n] to ring at p1
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
	IF (|z| > 128 || done >= maxit) ; Point exceeds bailout / inside.
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
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

dmj-Mand-Cr2-Dec-I { ; outside = decomp: angle of closest z[n] to ring at p1
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
	IF (|z| > 128 || done >= maxit) ; Point exceeds bailout / inside.
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Cr2-Itr { ; outside = real: n of closest z[n] to ring at p1

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
	  point = done			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > 128)			; Point exceeds bailout.
	  z = point - done		; Return iteration of closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Cr2-Itr-I { ; outside = real: n of closest z[n] to ring at p1

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
	  point = done			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > 128 || done >= maxit) ; Point exceeds bailout / inside.
	  z = point - done		; Return iteration of closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Pls-Dst { ; outside = real: closest z[n] to cross at p1

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 < d)			; Second distance is closer.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3))		; Point exceeds bailout.
	  z = closest * real(p3) - done	; Return color in real part of z.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Pls-Dst-I { ; outside = real: closest z[n] to cross at p1

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 < d)			; Second distance is closer.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3) || done >= maxit) ; Point exceeds bailout / inside.
	  z = closest * real(p3) - done	; Return color in real part of z.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Pls-Ang { ; outside = decomp: angle of closest z[n] to cross at p1
	; This is the angle relative to p1.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 < d)			; Second distance is closer.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3))		; Point exceeds bailout.
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Pls-Ang-I { ; outside = decomp: angle of closest z[n] to cross at p1
	; This is the angle relative to p1.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 < d)			; Second distance is closer.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3) || done >= maxit) ; Point exceeds bailout / inside.
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Pls-Dec { ; outside = decomp: angle of closest z[n] to cross at p1
	; This is the angle relative to the origin.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 < d)			; Second distance is closer.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3))		; Point exceeds bailout.
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Pls-Dec-I { ; outside = decomp: angle of closest z[n] to cross at p1
	; This is the angle relative to the origin.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 < d)			; Second distance is closer.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3) || done >= maxit) ; Point exceeds bailout / inside.
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Pls-Itr { ; outside = real: n of closest z[n] to cross at p1

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 < d)			; Second distance is closer.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = done			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3))		; Point exceeds bailout.
	  z = point - done		; Return iteration of closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Pls-Itr-I { ; outside = real: n of closest z[n] to cross at p1

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 < d)			; Second distance is closer.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = done			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3) || done >= maxit) ; Point exceeds bailout / inside.
	  z = point - done		; Return iteration of closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Rct-Dst { ; outside = real: closest z[n] to rectangle at p1

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 > d)			; Second distance is farther.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3))		; Point exceeds bailout.
	  z = closest * real(p3) - done	; Return color in real part of z.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Rct-Dst-I { ; outside = real: closest z[n] to rectangle at p1

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 > d)			; Second distance is farther.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3) || done >= maxit) ; Point exceeds bailout / inside.
	  z = closest * real(p3) - done	; Return color in real part of z.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Rct-Ang { ; outside = decomp: angle of closest z[n] to rectangle at p1
	; This is the angle relative to p1.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 > d)			; Second distance is farther.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3))		; Point exceeds bailout.
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Rct-Ang-I { ; outside = decomp: angle of closest z[n] to rectangle at p1
	; This is the angle relative to p1.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 > d)			; Second distance is farther.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3) || done >= maxit) ; Point exceeds bailout / inside.
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Rct-Dec { ; outside = decomp: angle of closest z[n] to rectangle at p1
	; This is the angle relative to the origin.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 > d)			; Second distance is farther.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3))		; Point exceeds bailout.
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Rct-Dec-I { ; outside = decomp: angle of closest z[n] to rectangle at p1
	; This is the angle relative to the origin.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 > d)			; Second distance is farther.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3) || done >= maxit) ; Point exceeds bailout / inside.
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Rct-Itr { ; outside = real: n of closest z[n] to rectangle at p1

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 > d)			; Second distance is farther.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = done			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3))		; Point exceeds bailout.
	  z = point - done		; Return iteration of closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Rct-Itr-I { ; outside = real: n of closest z[n] to rectangle at p1

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	r = (0,1) ^ (real(p2)/90)	; Compute rotation vector.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = (z-p1) * r			; Offset to p1 and rotate.
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 > d)			; Second distance is farther.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = done			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3) || done >= maxit) ; Point exceeds bailout / inside.
	  z = point - done		; Return iteration of closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Spi-Dst { ; outside = real: closest z[n] to spiral at p1

	IF (real(p2) == 0)		; Invalid value for tightness.
	  p2 = 1 + flip(imag(p2))	; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = z - p1			; Offset to p1.
	d = 1/(cabs(z2)) * real(p2)	; Figure distance (inverted).
	r = (0,1) ^ d			; Compute rotation vector.
	z2 = z2 * r			; Rotate.
	d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3) && done > imag(p2)) ; Point exceeds bailout.
	  z = closest * real(p3) - done	; Return color in real part of z.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Spi-Dst-I { ; outside = real: closest z[n] to spiral at p1

	IF (real(p2) == 0)		; Invalid value for tightness.
	  p2 = 1 + flip(imag(p2))	; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = z - p1			; Offset to p1.
	d = 1/(cabs(z2)) * real(p2)	; Figure distance (inverted).
	r = (0,1) ^ d			; Compute rotation vector.
	z2 = z2 * r			; Rotate.
	d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF ((|z| > imag(p3) && done > imag(p2)) || done >= maxit) ; Out!
	  z = closest * real(p3) - done	; Return color in real part of z.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Spi-Ang { ; outside = decomp: angle of closest z[n] to spiral at p1
	; This is the angle relative to p1.

	IF (real(p2) == 0)		; Invalid value for tightness.
	  p2 = 1 + flip(imag(p2))	; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = z - p1			; Offset to p1.
	d = 1/(cabs(z2)) * real(p2)	; Figure distance (inverted).
	r = (0,1) ^ d			; Compute rotation vector.
	z2 = z2 * r			; Rotate.
	d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3) && done > imag(p2)) ; Point exceeds bailout.
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Spi-Ang-I { ; outside = decomp: angle of closest z[n] to spiral at p1
	; This is the angle relative to p1.

	IF (real(p2) == 0)		; Invalid value for tightness.
	  p2 = 1 + flip(imag(p2))	; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = z - p1			; Offset to p1.
	d = 1/(cabs(z2)) * real(p2)	; Figure distance (inverted).
	r = (0,1) ^ d			; Compute rotation vector.
	z2 = z2 * r			; Rotate.
	d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF ((|z| > imag(p3) && done > imag(p2)) || done >= maxit) ; Out!
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Spi-Dec { ; outside = decomp: angle of closest z[n] to spiral at p1
	; This is the angle relative to the origin.

	IF (real(p2) == 0)		; Invalid value for tightness.
	  p2 = 1 + flip(imag(p2))	; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = z - p1			; Offset to p1.
	d = 1/(cabs(z2)) * real(p2)	; Figure distance (inverted).
	r = (0,1) ^ d			; Compute rotation vector.
	z2 = z2 * r			; Rotate.
	d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3) && done > imag(p2)) ; Point exceeds bailout.
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Spi-Dec-I { ; outside = decomp: angle of closest z[n] to spiral at p1
	; This is the angle relative to the origin.

	IF (real(p2) == 0)		; Invalid value for tightness.
	  p2 = 1 + flip(imag(p2))	; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = z - p1			; Offset to p1.
	d = 1/(cabs(z2)) * real(p2)	; Figure distance (inverted).
	r = (0,1) ^ d			; Compute rotation vector.
	z2 = z2 * r			; Rotate.
	d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF ((|z| > imag(p3) && done > imag(p2)) || done >= maxit) ; Out!
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Spi-Itr { ; outside = real: n of closest z[n] to spiral at p1

	IF (real(p2) == 0)		; Invalid value for tightness.
	  p2 = 1 + flip(imag(p2))	; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = z - p1			; Offset to p1.
	d = 1/(cabs(z2)) * real(p2)	; Figure distance (inverted).
	r = (0,1) ^ d			; Compute rotation vector.
	z2 = z2 * r			; Rotate.
	d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
	IF (d < closest)		; Closer than previous value.
	  point = done			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|z| > imag(p3) && done > imag(p2)) ; Point exceeds bailout.
	  z = point - done		; Return iteration of closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Spi-Itr-I { ; outside = real: n of closest z[n] to spiral at p1

	IF (real(p2) == 0)		; Invalid value for tightness.
	  p2 = 1 + flip(imag(p2))	; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	z2 = z - p1			; Offset to p1.
	d = 1/(cabs(z2)) * real(p2)	; Figure distance (inverted).
	r = (0,1) ^ d			; Compute rotation vector.
	z2 = z2 * r			; Rotate.
	d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
	IF (d < closest)		; Closer than previous value.
	  point = done			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF ((|z| > imag(p3) && done > imag(p2)) || done >= maxit) ; Out!
	  z = point - done		; Return iteration of closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Smooth(XAXIS) { ; outside = real: smooth iteration coloring
	; p3r: color scaling factor (default is 1 = integer bands)
	; p3i: bailout (default is 128)

	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 1 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	done = 2			; Iteration counter.
	il2 = 1/log(2.0)		; Inverse log 2 (precalc).
	lp = log(log(imag(p3)))		; log(log bailout) (precalc).
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	IF (|z| > imag(p3))		; Point exceeds bailout.
	  z = (done + 2*il2*lp - il2*log(log(cabs(z)))) * real(p3) - done
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-SmoothPHC { ; outside = real: smooth iteration coloring
	; p2r: color scaling factor 1 (default is 1 = integer bands)
	; p2i: color scaling factor 2 (default is 1 = integer bands)
	; p3i: bailout (default is 128)

	IF (real(p2) == 0)		; Invalid value for color scale.
	  p2 = 1 + flip(imag(p2))	; Substitute a default value.
	ENDIF
	IF (imag(p2) == 0)		; Invalid value for color scale.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	done = 2			; Iteration counter.
	il2 = 1/log(2.0)		; Inverse log 2 (precalc).
	lp = log(log(imag(p3)))		; log(log bailout) (precalc).
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	IF (|z| > imag(p3))		; Point exceeds bailout.
	  IF (whitesq)			; Alternates each square.
	    z = (done + 2*il2*lp - il2*log(log(cabs(z)))) * real(p2) - done
	  ELSE
	    z = (done + 2*il2*lp - il2*log(log(cabs(z)))) * imag(p2) - done
	  ENDIF
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-SmoothX2 { ; outside = real: smooth iteration coloring
	; colors 0-127 are affected by scaling factor 1
	; colors 128-255 are affected by scaling factor 2
	; p2r: color scaling factor 1 (default is 1 = integer bands)
	; p2i: color scaling factor 2 (default is 1 = integer bands)
	; p3i: bailout (default is 128)

	IF (real(p2) == 0)		; Invalid value for color scale.
	  p2 = 1 + flip(imag(p2))	; Substitute a default value.
	ENDIF
	IF (imag(p2) == 0)		; Invalid value for color scale.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	done = 2			; Iteration counter.
	il2 = 1/log(2.0)		; Inverse log 2 (precalc).
	lp = log(log(imag(p3)))		; log(log bailout) (precalc).
	
	z = 0, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	done = done + 1			; Done one more iteration.
	IF (|z| > imag(p3))		; Point exceeds bailout.
	  IF (whitesq)			; Alternates each square.
	    z = (done + 2*il2*lp - il2*log(log(cabs(z)))) * real(p2)
	    z = 128*((z*0.0078125) - trunc(z*0.0078125))
	  ELSE
	    z = (done + 2*il2*lp - il2*log(log(cabs(z)))) * imag(p2)
	    z = 128*((z*0.0078125) - trunc(z*0.0078125)) + 128
	  ENDIF
	  z = z - done - 5		; Remove iteration count.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Triangle(XAXIS) { ; outside = real: triangle inequality average
	; original idea and formula from L. Kerry Mitchell
	; modified for total continuity by dmj, 9-8-97

	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	sum = 0				; Running total.
	done = 1			; Iteration counter.
	ac = cabs(pixel)		; Absolute value of pixel (precalc).
	il2 = 1/log(2.0)		; Inverse log 2 (precalc).
	lp = log(log(imag(p3)))		; log(log bailout) (precalc).
	f = -1				; No fractional iteration yet.
	
	z = pixel, c = pixel:		; Mandelbrot initialization.
	az2 = |z|			; Save absolute value of first term.
	z = sqr(z) + c			; Mandelbrot calculation.

	lowbound = abs(az2 - ac)	; Calculate lower bound for sum.
	sum = sum + (cabs(z) - lowbound) / (az2+ac - lowbound)
					; Ratio between bounds.
	
	done = done + 1			; Done one more iteration.
	IF (az2 > imag(p3))		; Point exceeds bailout.
	  IF (f < 0)			; First time; let it go again.
	    f = 2*il2*lp - il2*log(log(cabs(z))) + 1; Fractional iteration.
	    oldsum = sum / done		; Save the average ratio so far.
	  ELSE				; Second time past bailout.
	    sum = sum / done		; Average ratio.
	    f = f - 2.28
	    f = oldsum + (sum-oldsum) * f ; Interpolate sum.
	    z = f * real(p3) - done - 5	; Return average value.
	    done = -1			; Set flag to force an exit.
	  ENDIF
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-Triangl-I(XAXIS) { ; outside = real: triangle inequality average
	; original idea and formula from L. Kerry Mitchell
	; modified for total continuity by dmj, 9-8-97

	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,128) + real(p3)	; Substitute a default value.
	ENDIF
	sum = 0				; Running total.
	done = 1			; Iteration counter.
	ac = cabs(pixel)		; Absolute value of pixel (precalc).
	il2 = 1/log(2.0)		; Inverse log 2 (precalc).
	lp = log(log(imag(p3)))		; log(log bailout) (precalc).
	f = -1				; No fractional iteration yet.
	
	z = pixel, c = pixel:		; Mandelbrot initialization.
	az2 = |z|			; Save absolute value of first term.
	z = sqr(z) + c			; Mandelbrot calculation.

	lowbound = abs(az2 - ac)	; Calculate lower bound for sum.
	sum = sum + (cabs(z) - lowbound) / (az2+ac - lowbound)
					; Ratio between bounds.
	
	done = done + 1			; Done one more iteration.
	IF (az2 > imag(p3) || done > maxit-2)	; Point exceeds bailout.
	  IF (f < 0)			; First time; let it go again.
	    f = 2*il2*lp - il2*log(log(cabs(z))) + 1; Fractional iteration.
	    oldsum = sum / done		; Save the average ratio so far.
	  ELSE				; Second time past bailout.
	    sum = sum / done		; Average ratio.
	    f = f - 2.28
	    f = oldsum + (sum-oldsum) * f ; Interpolate sum.
	    z = f * real(p3) - done - 5	; Return average value.
	    done = -1			; Set flag to force an exit.
	  ENDIF
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-ThetaW { ; outside = real: weighted decomposition average
	; original idea and formula from L. Kerry Mitchell
	; modified for weighting and total continuity by dmj, 9-9-97

	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	sum = 0				; Running total.
	weight = 1			; Current weight.
	done = 1			; Iteration counter.
	il2 = 1/log(2.0)		; Inverse log 2 (precalc).
	lp = log(log(128))		; log(log bailout) (precalc).
	f = -1				; No fractional iteration yet.
	
	z = pixel, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	IF (done > imag(p3))		; Past minimum iteration.
	  z2 = z-p2			; Offset to p2.
	  sum = sum + atan(abs(imag(z2)/real(z2)))*weight ; Sum up angles.
	  weight = weight * 0.5		; Reduce weight.
	ENDIF
	
	done = done + 1			; Done one more iteration.
	IF (|z| > 128)			; Point exceeds bailout.
	  IF (f < 0)			; First time; let it go again.
	    f = 2*il2*lp - il2*log(log(cabs(z))) + 1; Fractional iteration.
	    oldsum = sum		; Save the average ratio so far.
	  ELSE				; Second time past bailout.
	    f = f - 3.28
	    f = oldsum + (sum-oldsum) * f ; Interpolate sum.
	    z = f * real(p3) - done - 5	; Return average value.
	    done = -1			; Set flag to force an exit.
	  ENDIF
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-ThetaW-I { ; outside = real: weighted decomposition average
	; original idea and formula from L. Kerry Mitchell
	; modified for weighting and total continuity by dmj, 9-9-97

	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	sum = 0				; Running total.
	weight = 1			; Current weight.
	done = 1			; Iteration counter.
	il2 = 1/log(2.0)		; Inverse log 2 (precalc).
	lp = log(log(128))		; log(log bailout) (precalc).
	f = -1				; No fractional iteration yet.
	
	z = pixel, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	IF (done > imag(p3))		; Past minimum iteration.
	  z2 = z-p2			; Offset to p2.
	  sum = sum + atan(abs(imag(z2)/real(z2)))*weight ; Sum up angles.
	  weight = weight * 0.5		; Reduce weight.
	ENDIF
	
	done = done + 1			; Done one more iteration.
	IF (|z| > 128 || done >= maxit-1) ; Point exceeds bailout.
	  IF (f < 0)			; First time; let it go again.
	    f = 2*il2*lp - il2*log(log(cabs(z))) + 1; Fractional iteration.
	    oldsum = sum		; Save the average ratio so far.
	  ELSE				; Second time past bailout.
	    f = f - 3.28
	    f = oldsum + (sum-oldsum) * f ; Interpolate sum.
	    z = f * real(p3) - done - 5	; Return average value.
	    done = -1			; Set flag to force an exit.
	  ENDIF
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-ThetaW2 { ; outside = real: weighted decomposition average
	; original idea and formula from L. Kerry Mitchell
	; modified for weighting and total continuity by dmj, 9-9-97

	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	sum = 0				; Running total.
	done = 1			; Iteration counter.
	il2 = 1/log(2.0)		; Inverse log 2 (precalc).
	lp = log(log(128))		; log(log bailout) (precalc).
	f = -1				; No fractional iteration yet.
	
	z = pixel, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	IF (done > imag(p3))		; Past minimum iteration.
	  z2 = z-p2			; Offset to p2.
	  sum = sum*0.5 + atan(abs(imag(z2)/real(z2))) ; Sum up angles.
	ENDIF
	
	done = done + 1			; Done one more iteration.
	IF (|z| > 128)			; Point exceeds bailout.
	  IF (f < 0)			; First time; let it go again.
	    f = 2*il2*lp - il2*log(log(cabs(z))) + 1; Fractional iteration.
	    oldsum = sum		; Save the average ratio so far.
	  ELSE				; Second time past bailout.
	    f = f - 3.28
	    f = oldsum + (sum-oldsum) * f ; Interpolate sum.
	    z = f * real(p3) - done - 5	; Return average value.
	    done = -1			; Set flag to force an exit.
	  ENDIF
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Mand-ThetaW2-I { ; outside = real: weighted decomposition average
	; original idea and formula from L. Kerry Mitchell
	; modified for weighting and total continuity by dmj, 9-9-97

	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	sum = 0				; Running total.
	done = 1			; Iteration counter.
	il2 = 1/log(2.0)		; Inverse log 2 (precalc).
	lp = log(log(128))		; log(log bailout) (precalc).
	f = -1				; No fractional iteration yet.
	
	z = pixel, c = pixel:		; Mandelbrot initialization.
	z = sqr(z) + c			; Mandelbrot calculation.

	IF (done > imag(p3))		; Past minimum iteration.
	  z2 = z-p2			; Offset to p2.
	  sum = sum*0.5 + atan(abs(imag(z2)/real(z2))) ; Sum up angles.
	ENDIF
	
	done = done + 1			; Done one more iteration.
	IF (|z| > 128 || done >= maxit-1) ; Point exceeds bailout.
	  IF (f < 0)			; First time; let it go again.
	    f = 2*il2*lp - il2*log(log(cabs(z))) + 1; Fractional iteration.
	    oldsum = sum		; Save the average ratio so far.
	  ELSE				; Second time past bailout.
	    f = f - 3.28
	    f = oldsum + (sum-oldsum) * f ; Interpolate sum.
	    z = f * real(p3) - done - 5	; Return average value.
	    done = -1			; Set flag to force an exit.
	  ENDIF
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

;--------------------------------------------------------------------------
; NovaM versions.

dmj-Nova-Pnt-Dst { ; outside = real: closest distance z[n] to point at p1

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + imag(p3)		; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = |z2|			; Compute distance to p1 (squared).
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3))	; Point exceeds bailout.
	  z = sqrt(closest) * real(p3) - done ; Return color in real part of z.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Pnt-Dst-I { ; outside = real: closest distance z[n] to point at p1
	; With p1 = (0,0), this is the same as the bof60 inside coloring
	; option (except it works outside).  It is also similar to Paul
	; Carlson's "Bubbles" type.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + imag(p3)		; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = |z2|			; Compute distance to p1 (squared).
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3) || done >= maxit)  ; Point exceeds bailout / inside.
	  z = sqrt(closest) * real(p3) - done ; Return color in real part of z.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Pnt-Ang { ; outside = decomp: angle of closest z[n] to point at p1
	; outside = atan will give a slightly different coloring.
	; This is the angle relative to p1.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + imag(p3)		; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = |z2|			; Compute distance to p1 (squared).
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3))	; Point exceeds bailout.
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Pnt-Ang-I { ; outside = decomp: angle of closest z[n] to point at p1
	; outside = atan will give a slightly different coloring.
	; This is the angle relative to p1.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + imag(p3)		; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = |z2|			; Compute distance to p1 (squared).
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3) || done >= maxit)  ; Point exceeds bailout / inside.
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Pnt-Dec { ; outside = decomp: angle of closest z[n] to point at p1
	; outside = atan will give a slightly different coloring.
	; This is the angle relative to the origin.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + imag(p3)		; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = |z2|			; Compute distance to p1 (squared).
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3))	; Point exceeds bailout.
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Pnt-Dec-I { ; outside = decomp: angle of closest z[n] to point at p1
	; outside = atan will give a slightly different coloring.
	; This is the angle relative to the origin.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + imag(p3)		; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = |z2|			; Compute distance to p1 (squared).
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3) || done >= maxit)  ; Point exceeds bailout / inside.
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Pnt-Itr { ; outside = real: n of closest z[n] to point at p1
	; With p1 = (0,0), this is the same as the bof61 inside coloring
	; option (except it works outside).

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + imag(p3)		; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = |z2|			; Compute distance to p1 (squared).
	IF (d < closest)		; Closer than previous value.
	  point = done			; Save the iteration number.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3))	; Point exceeds bailout.
	  z = point - done		; Return iteration of closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Pnt-Itr-I { ; outside = real: n of closest z[n] to point at p1
	; With p1 = (0,0), this is the same as the bof61 inside coloring
	; option (except it works outside).

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + imag(p3)		; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = |z2|			; Compute distance to p1 (squared).
	IF (d < closest)		; Closer than previous value.
	  point = done			; Save the iteration number.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3) || done >= maxit)  ; Point exceeds bailout / inside.
	  z = point - done		; Return iteration of closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Hyp-Dst { ; outside = real: closest z[n] to hyperbola at p1

	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = abs(imag(z2) * real(z2))	; Compute hyperbolic distance.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3))	; Point exceeds bailout.
	  z = closest * real(p3) - done	; Return color in real part of z.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Hyp-Dst-I { ; outside = real: closest z[n] to hyperbola at p1

	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = abs(imag(z2) * real(z2))	; Compute hyperbolic distance.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3) || done >= maxit)  ; Point exceeds bailout / inside.
	  z = closest * real(p3) - done	; Return color in real part of z.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Hyp-Ang { ; outside = decomp: angle of closest z[n] to hyperbola at p1
	; This is the angle relative to p1.

	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = abs(imag(z2) * real(z2))	; Compute hyperbolic distance.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3))	; Point exceeds bailout.
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Hyp-Ang-I { ; outside = decomp: angle of closest z[n] to hyperbola at p1
	; This is the angle relative to p1.

	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = abs(imag(z2) * real(z2))	; Compute hyperbolic distance.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3) || done >= maxit)  ; Point exceeds bailout / inside.
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Hyp-Dec { ; outside = decomp: angle of closest z[n] to hyperbola at p1
	; This is the angle relative to the origin.

	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = abs(imag(z2) * real(z2))	; Compute hyperbolic distance.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3))	; Point exceeds bailout.
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Hyp-Dec-I { ; outside = decomp: angle of closest z[n] to hyperbola at p1
	; This is the angle relative to the origin.

	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = abs(imag(z2) * real(z2))	; Compute hyperbolic distance.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3) || done >= maxit)  ; Point exceeds bailout / inside.
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Hyp-Itr { ; outside = real: n of closest z[n] to hyperbola at p1

	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = abs(imag(z2) * real(z2))	; Compute hyperbolic distance.
	IF (d < closest)		; Closer than previous value.
	  point = done			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3))	; Point exceeds bailout.
	  z = point - done		; Return iteration of closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Hyp-Itr-I { ; outside = real: n of closest z[n] to hyperbola at p1

	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = abs(imag(z2) * real(z2))	; Compute hyperbolic distance.
	IF (d < closest)		; Closer than previous value.
	  point = done			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3) || done >= maxit)  ; Point exceeds bailout / inside.
	  z = point - done		; Return iteration of closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Cir-Dst { ; outside = real: closest z[n] to ring at p1

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
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < 0.0000001)	; Point exceeds bailout.
	  z = closest * real(p3) - done	; Return color in real part of z.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Cir-Dst-I { ; outside = real: closest z[n] to ring at p1

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
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < 0.0000001 || done >= maxit) ; Point bailout / inside.
	  z = closest * real(p3) - done	; Return color in real part of z.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Cir-Ang { ; outside = decomp: angle of closest z[n] to ring at p1
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
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < 0.0000001)	; Point exceeds bailout.
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Cir-Ang-I { ; outside = decomp: angle of closest z[n] to ring at p1
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
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < 0.0000001 || done >= maxit) ; Point bailout / inside.
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Cir-Dec { ; outside = decomp: angle of closest z[n] to ring at p1
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
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < 0.0000001)	; Point exceeds bailout.
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Cir-Dec-I { ; outside = decomp: angle of closest z[n] to ring at p1
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
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < 0.0000001 || done >= maxit) ; Point bailout / inside.
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Cir-Itr { ; outside = real: n of closest z[n] to ring at p1

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
	IF (|zold-z| < 0.0000001)	; Point exceeds bailout.
	  z = point - done		; Return iteration of closest point.
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

dmj-Nova-Cr2-Dst { ; outside = real: closest z[n] to ring at p1

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
	  z = closest * real(p3) - done	; Return color in real part of z.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Cr2-Dst-I { ; outside = real: closest z[n] to ring at p1

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
	IF (|zold-z| < 0.0000001 || done >= maxit) ; Point bailout / inside.
	  z = closest * real(p3) - done	; Return color in real part of z.
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

dmj-Nova-Cr2-Ang-I { ; outside = decomp: angle of closest z[n] to ring at p1
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
	IF (|zold-z| < 0.0000001 || done >= maxit) ; Point bailout / inside.
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Cr2-Dec { ; outside = decomp: angle of closest z[n] to ring at p1
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
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Cr2-Dec-I { ; outside = decomp: angle of closest z[n] to ring at p1
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
	IF (|zold-z| < 0.0000001 || done >= maxit) ; Point bailout / inside.
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Cr2-Itr { ; outside = real: n of closest z[n] to ring at p1

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
	  point = done			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < 0.0000001)	; Point exceeds bailout.
	  z = point - done		; Return iteration of closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Cr2-Itr-I { ; outside = real: n of closest z[n] to ring at p1

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
	  point = done			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < 0.0000001 || done >= maxit) ; Point bailout / inside.
	  z = point - done		; Return iteration of closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Pls-Dst { ; outside = real: closest z[n] to cross at p1

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 < d)			; Second distance is closer.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3))	; Point exceeds bailout.
	  z = closest * real(p3) - done	; Return color in real part of z.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Pls-Dst-I { ; outside = real: closest z[n] to cross at p1

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 < d)			; Second distance is closer.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3) || done >= maxit) ; Point bailout / inside.
	  z = closest * real(p3) - done	; Return color in real part of z.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Pls-Ang { ; outside = decomp: angle of closest z[n] to cross at p1
	; This is the angle relative to p1.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 < d)			; Second distance is closer.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3))	; Point exceeds bailout.
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Pls-Ang-I { ; outside = decomp: angle of closest z[n] to cross at p1
	; This is the angle relative to p1.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 < d)			; Second distance is closer.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3) || done >= maxit) ; Point bailout / inside.
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Pls-Dec { ; outside = decomp: angle of closest z[n] to cross at p1
	; This is the angle relative to the origin.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 < d)			; Second distance is closer.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3))	; Point exceeds bailout.
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Pls-Dec-I { ; outside = decomp: angle of closest z[n] to cross at p1
	; This is the angle relative to the origin.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 < d)			; Second distance is closer.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3) || done >= maxit) ; Point bailout / inside.
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Pls-Itr { ; outside = real: n of closest z[n] to cross at p1

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 < d)			; Second distance is closer.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = done			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3))	; Point exceeds bailout.
	  z = point - done		; Return iteration of closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Pls-Itr-I { ; outside = real: n of closest z[n] to cross at p1

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 < d)			; Second distance is closer.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = done			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3) || done >= maxit) ; Point bailout / inside.
	  z = point - done		; Return iteration of closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Rct-Dst { ; outside = real: closest z[n] to rectangle at p1

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 > d)			; Second distance is farther.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3))	; Point exceeds bailout.
	  z = closest * real(p3) - done	; Return color in real part of z.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Rct-Dst-I { ; outside = real: closest z[n] to rectangle at p1

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 > d)			; Second distance is farther.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3) || done >= maxit) ; Point bailout / inside.
	  z = closest * real(p3) - done	; Return color in real part of z.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Rct-Ang { ; outside = decomp: angle of closest z[n] to rectangle at p1
	; This is the angle relative to p1.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 > d)			; Second distance is farther.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3))	; Point exceeds bailout.
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Rct-Ang-I { ; outside = decomp: angle of closest z[n] to rectangle at p1
	; This is the angle relative to p1.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 > d)			; Second distance is farther.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3) || done >= maxit) ; Point bailout / inside.
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Rct-Dec { ; outside = decomp: angle of closest z[n] to rectangle at p1
	; This is the angle relative to the origin.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 > d)			; Second distance is farther.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3))	; Point exceeds bailout.
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Rct-Dec-I { ; outside = decomp: angle of closest z[n] to rectangle at p1
	; This is the angle relative to the origin.

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 > d)			; Second distance is farther.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3) || done >= maxit) ; Point bailout / inside.
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Rct-Itr { ; outside = real: n of closest z[n] to rectangle at p1

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 > d)			; Second distance is farther.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = done			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3))	; Point exceeds bailout.
	  z = point - done		; Return iteration of closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Rct-Itr-I { ; outside = real: n of closest z[n] to rectangle at p1

	IF (imag(p2) == 0)		; Invalid value for aspect ratio.
	  p2 = (0,1) + real(p2)		; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
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
	d = abs(imag(z2))		; First distance.
	d2 = abs(real(z2)*imag(p2))	; Second distance.
	IF (d2 > d)			; Second distance is farther.
	  d = d2			; Use it instead.
	ENDIF
	IF (d < closest)		; Closer than previous value.
	  point = done			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3) || done >= maxit) ; Point bailout / inside.
	  z = point - done		; Return iteration of closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Spi-Dst { ; outside = real: closest z[n] to spiral at p1

	IF (real(p2) == 0)		; Invalid value for tightness.
	  p2 = 1 + flip(imag(p2))	; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	
	z = 1, c = pixel:		; NovaM initialization.
	zsquared = sqr(z)
	zcubed = zsquared * z
	zold = z
	z = z-(zcubed-1)/(3*zsquared)+c	; NovaM calculation.

	done = done + 1			; Done one more iteration.
	z2 = z - p1			; Offset to p1.
	d = 1/(cabs(z2)) * real(p2)	; Figure distance (inverted).
	r = (0,1) ^ d			; Compute rotation vector.
	z2 = z2 * r			; Rotate.
	d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3) && done > imag(p2)) ; Point exceeds bailout.
	  z = closest * real(p3) - done	; Return color in real part of z.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Spi-Dst-I { ; outside = real: closest z[n] to spiral at p1

	IF (real(p2) == 0)		; Invalid value for tightness.
	  p2 = 1 + flip(imag(p2))	; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	
	z = 1, c = pixel:		; NovaM initialization.
	zsquared = sqr(z)
	zcubed = zsquared * z
	zold = z
	z = z-(zcubed-1)/(3*zsquared)+c	; NovaM calculation.

	done = done + 1			; Done one more iteration.
	z2 = z - p1			; Offset to p1.
	d = 1/(cabs(z2)) * real(p2)	; Figure distance (inverted).
	r = (0,1) ^ d			; Compute rotation vector.
	z2 = z2 * r			; Rotate.
	d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF ((|zold-z| < imag(p3) && done > imag(p2)) || done >= maxit) ; Out!
	  z = closest * real(p3) - done	; Return color in real part of z.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Spi-Ang { ; outside = decomp: angle of closest z[n] to spiral at p1
	; This is the angle relative to p1.

	IF (real(p2) == 0)		; Invalid value for tightness.
	  p2 = 1 + flip(imag(p2))	; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	
	z = 1, c = pixel:		; NovaM initialization.
	zsquared = sqr(z)
	zcubed = zsquared * z
	zold = z
	z = z-(zcubed-1)/(3*zsquared)+c	; NovaM calculation.

	done = done + 1			; Done one more iteration.
	z2 = z - p1			; Offset to p1.
	d = 1/(cabs(z2)) * real(p2)	; Figure distance (inverted).
	r = (0,1) ^ d			; Compute rotation vector.
	z2 = z2 * r			; Rotate.
	d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3) && done > imag(p2)) ; Point exceeds bailout.
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Spi-Ang-I { ; outside = decomp: angle of closest z[n] to spiral at p1
	; This is the angle relative to p1.

	IF (real(p2) == 0)		; Invalid value for tightness.
	  p2 = 1 + flip(imag(p2))	; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	
	z = 1, c = pixel:		; NovaM initialization.
	zsquared = sqr(z)
	zcubed = zsquared * z
	zold = z
	z = z-(zcubed-1)/(3*zsquared)+c	; NovaM calculation.

	done = done + 1			; Done one more iteration.
	z2 = z - p1			; Offset to p1.
	d = 1/(cabs(z2)) * real(p2)	; Figure distance (inverted).
	r = (0,1) ^ d			; Compute rotation vector.
	z2 = z2 * r			; Rotate.
	d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF ((|zold-z| < imag(p3) && done > imag(p2)) || done >= maxit) ; Out!
	  z = point - p1		; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Spi-Dec { ; outside = decomp: angle of closest z[n] to spiral at p1
	; This is the angle relative to the origin.

	IF (real(p2) == 0)		; Invalid value for tightness.
	  p2 = 1 + flip(imag(p2))	; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	
	z = 1, c = pixel:		; NovaM initialization.
	zsquared = sqr(z)
	zcubed = zsquared * z
	zold = z
	z = z-(zcubed-1)/(3*zsquared)+c	; NovaM calculation.

	done = done + 1			; Done one more iteration.
	z2 = z - p1			; Offset to p1.
	d = 1/(cabs(z2)) * real(p2)	; Figure distance (inverted).
	r = (0,1) ^ d			; Compute rotation vector.
	z2 = z2 * r			; Rotate.
	d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3) && done > imag(p2)) ; Point exceeds bailout.
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Spi-Dec-I { ; outside = decomp: angle of closest z[n] to spiral at p1
	; This is the angle relative to the origin.

	IF (real(p2) == 0)		; Invalid value for tightness.
	  p2 = 1 + flip(imag(p2))	; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	
	z = 1, c = pixel:		; NovaM initialization.
	zsquared = sqr(z)
	zcubed = zsquared * z
	zold = z
	z = z-(zcubed-1)/(3*zsquared)+c	; NovaM calculation.

	done = done + 1			; Done one more iteration.
	z2 = z - p1			; Offset to p1.
	d = 1/(cabs(z2)) * real(p2)	; Figure distance (inverted).
	r = (0,1) ^ d			; Compute rotation vector.
	z2 = z2 * r			; Rotate.
	d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
	IF (d < closest)		; Closer than previous value.
	  point = z			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF ((|zold-z| < imag(p3) && done > imag(p2)) || done >= maxit) ; Out!
	  z = point			; Return closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Spi-Itr { ; outside = real: n of closest z[n] to spiral at p1

	IF (real(p2) == 0)		; Invalid value for tightness.
	  p2 = 1 + flip(imag(p2))	; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	
	z = 1, c = pixel:		; NovaM initialization.
	zsquared = sqr(z)
	zcubed = zsquared * z
	zold = z
	z = z-(zcubed-1)/(3*zsquared)+c	; NovaM calculation.

	done = done + 1			; Done one more iteration.
	z2 = z - p1			; Offset to p1.
	d = 1/(cabs(z2)) * real(p2)	; Figure distance (inverted).
	r = (0,1) ^ d			; Compute rotation vector.
	z2 = z2 * r			; Rotate.
	d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
	IF (d < closest)		; Closer than previous value.
	  point = done			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF (|zold-z| < imag(p3) && done > imag(p2)) ; Point exceeds bailout.
	  z = point - done		; Return iteration of closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}

dmj-Nova-Spi-Itr-I { ; outside = real: n of closest z[n] to spiral at p1

	IF (real(p2) == 0)		; Invalid value for tightness.
	  p2 = 1 + flip(imag(p2))	; Substitute a default value.
	ENDIF
	IF (real(p3) == 0)		; Invalid value for color scale.
	  p3 = 75 + flip(imag(p3))	; Substitute a default value.
	ENDIF
	IF (imag(p3) == 0)		; Invalid value for bailout.
	  p3 = (0,0.0000001) + real(p3)	; Substitute a default value.
	ENDIF
	closest = 1e+38			; Closest approach so far.
	point = 0			; Point of that closest approach.
	done = 2			; Iteration counter.
	
	z = 1, c = pixel:		; NovaM initialization.
	zsquared = sqr(z)
	zcubed = zsquared * z
	zold = z
	z = z-(zcubed-1)/(3*zsquared)+c	; NovaM calculation.

	done = done + 1			; Done one more iteration.
	z2 = z - p1			; Offset to p1.
	d = 1/(cabs(z2)) * real(p2)	; Figure distance (inverted).
	r = (0,1) ^ d			; Compute rotation vector.
	z2 = z2 * r			; Rotate.
	d = atan(abs(imag(z2)/real(z2))) ; Figure distance to spiral.
	IF (d < closest)		; Closer than previous value.
	  point = done			; Save that point.
	  closest = d			; Save the closest approach.
	ENDIF
	IF ((|zold-z| < imag(p3) && done > imag(p2)) || done >= maxit) ; Out!
	  z = point - done		; Return iteration of closest point.
	  done = -1			; Set flag to force an exit.
	ENDIF
	
	done >= 0			; Continue if the flag is clear.
}
