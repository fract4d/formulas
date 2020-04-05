;These formulas have been posted by Paul W. Carlson to the Fractint e-mail
;listserver during 1997 and 1998. As noted,all formulas are copyright Paul W. ;Carlson, 1997, 1998

3D_Balls_Julia {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = Julia set coordinates
    ;   real(p2) = a factor controlling the size of the balls
    ;   imag(p2) = number of iterations to skip
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
    skip = imag(p2)
    ;****************************************************
    ; In the accompanying par file, balloops.par,
    ; we will set the number of ranges to 2, with
    ; 125 colors in each range, but the colormap will
    ; be modified to 4 ranges to give the desired effect.
    ;****************************************************
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    ;****************************************************
    ; Real(p2) controls the size of the balls.
    ; These values will usually be in the range 0.001 to 0.1
    ;****************************************************
    ball_size = real(p2)
    index_factor = (colors_in_range - 1) / ball_size:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be expressed in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This example uses a modified Pokorny equation.
    ;****************************************************
    w = 1 / (w * w + c) + c
    ;****************************************************
    ; If the orbit point is within the specified distance of a circle,
    ; set z to the index into the colormap and set the bailout flag.
    ;****************************************************
    IF (iter > skip)
        wr = real(w), wi = imag(w)
        d = wr * wr + (wi - .5) * (wi - .5)
        IF (d < ball_size)
            bailout = 1
            delta = ball_size - d
        ELSEIF ((d = wr * wr + (wi + .5) * (wi + .5)) < ball_size)
            bailout = 1
            delta = ball_size - d
        ELSEIF ((d = (wr - .5) * (wr - .5) + wi * wi) < ball_size)
            bailout = 1
            delta = ball_size - d
        ELSEIF ((d = (wr + .5) * (wr + .5) + wi * wi) < ball_size)
            bailout = 1
            delta = ball_size - d
        ENDIF
    ENDIF
    IF (bailout)
        z = index_factor * delta + range_num * colors_in_range + 1
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
}

3D_Balls_Mset (ORIGIN) {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = a factor controlling the size of the balls
    ;   imag(p1) = number of iterations to skip
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
    skip = imag(p1)
    ;****************************************************
    ; In the accompanying par file, mndballs.par,
    ; we have 8 color ranges with 30 colors in each range
    ; for a total of 240 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| >= 1000.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    ;****************************************************
    ; Real(p1) controls the size of the balls.
    ; These values will usually be in the range 0.001 to 0.1
    ;****************************************************
    ball_size = real(p1)
    index_factor = (colors_in_range - 1) / ball_size:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be express in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This example uses the standard Mandelbrot set equation.
    ;****************************************************
    w = w * w + c
    ;****************************************************
    ; If the orbit point is within the specified distance of a circle,
    ; set z to the index into the colormap and set the bailout flag.
    ;****************************************************
    IF (iter > skip)
        wr = real(w), wi = imag(w)
        d = wr * wr + (wi - .5) * (wi - .5)
        IF (d < ball_size)
            bailout = 1
            delta = ball_size - d
        ELSEIF ((d = wr * wr + (wi + .5) * (wi + .5)) < ball_size)
            bailout = 1
            delta = ball_size - d
        ELSEIF ((d = (wr - .5) * (wr - .5) + wi * wi) < ball_size)
            bailout = 1
            delta = ball_size - d
        ELSEIF ((d = (wr + .5) * (wr + .5) + wi * wi) < ball_size)
            bailout = 1
            delta = ball_size - d
        ENDIF
    ENDIF
    IF (bailout)
        z = index_factor * delta + range_num * colors_in_range + 1
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
}

3D_Phoenix_Spirals {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = coordinates of the Julia set
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    prev_w = y = pixel
    c = p1
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    ;****************************************************
    ; In the accompanying par file, phxspirs.par,
    ; we have 2 color ranges with 125 colors in each range
    ; for a total of 250 colors. The first range starts at
    ; color 1.  Pixels will use color 255 when w < 1.0.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ;****************************************************
    num_ranges = real(p2)
    colors_in_range = imag(p2):
    ;****************************************************
    ; The equations being iterated.
    ;****************************************************
    w = prev_w * prev_w - 0.5 * prev_w + c
    b = w * w - 0.5 * y + c
    y = w
    w = b
    ;****************************************************
    ; If w exceeds a value of 1.0, set z to the index
    ; into the colormap and set the bailout flag.
    ;****************************************************
    IF (w > 1)
        ;***************************************************
        ; Compute the angle between the last 2 orbit points
        ;***************************************************
        delta_i = imag(w) - imag(prev_w)
        delta_r = real(w) - real(prev_w)
        angle = abs(atan(delta_i / delta_r))
        IF (delta_r < 0)
            angle = pi - angle
        ENDIF
        bailout = 1
        range_index = 2 * colors_in_range * angle / pi
        z = range_index + range_num * colors_in_range + 1
    ENDIF
    ;***************************************************
    ; Update previous value of w
    ;***************************************************
    prev_w = w
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
    bailout == 0
}

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

Astroid_Mset  {; Copyright (c) Paul W. Carlson, 1997
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
    w = w * w + c
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
}

Bubbles_Julia_Mset {; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;
    ;   p1       = if both real(p1) and imag(p1) are zero
    ;              do Mset, otherwise do Julia set.
    ;   real(p2) = maximum contour of minimum sqrt(|w|)
    ;              (this is the outside edge of the bubbles).
    ;   imag(p2) = Value of |w| at bailout.
    ;   real(p3) = number of color ranges.
    ;   imag(p3) = number of colors in each color range.
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    IF (real(p1) == 0 && imag(p1) == 0)
        w = 0
        c = pixel
    ELSE
        w = pixel
        c = p1
    ENDIF
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    max_w = imag(p2)
    ;****************************************************
    ; In the accompanying par files, bubsjul1 and 2.par,
    ; we have 2 color ranges with 125 colors in each range
    ; for a total of 250 colors. The first range starts at
    ; color 1.
    ;****************************************************
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    ;****************************************************
    ; Real(p2) is the largest value of contours that will
    ; be plotted. Typical values are 0.05 to 0.25.
    ;****************************************************
    max_min_w = real(p2)
    min_w = 1.0e20:
    ;****************************************************
    ; The equation being iterated.
    ; This example uses the standard Mandelbrot set equation.
    ;****************************************************
    w = w * w + c
    ;****************************************************
    ; Save the smallest value of sqrt(|w|).
    ;****************************************************
    temp = sqrt(|w|)
    IF (temp < min_w)
       min_w = temp
       save_range = range_num
    ENDIF
    ;****************************************************
    ; If the orbit point exceeds the maximum value, set z to
    ; the index into the colormap and set the bailout flag.
    ;****************************************************
    IF (|w| > max_w)
        IF (min_w < max_min_w)
            range_index = (min_w / max_min_w) * (colors_in_range - 1)
            z = range_index + save_range * colors_in_range + 1
        ELSE
            z = 0
        ENDIF
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
    bailout == 0  && |w| < max_w
}

Carr2821b { ; This is one-half of Bob Carr's Carr2821 PHC formula
                ; as modified and optimized by Sylvie Gallet
                ; Half the formula extracted by Paul Carlson
   e = 0.1/pixel , z = c = conj(e) - pixel , r = |z|
   k = e*(-0.9) , p = k + flip(e) + conj(0.01*e) - pixel
   bailout = 16 , im1 = imag(p1) , im2 = imag(p2)
   iter = 0 :
   IF (iter == p1)
      p = (c^1.2)*1.5 + k , r = z = 0
   ELSEIF (iter == im1)
      p = conj(c)*2.25 + k , r = z = 0
   ELSEIF (iter == p2)
      p = flip(c)*3.375 + k , r = z = 0
   ELSEIF (iter == im2)
      p = flip(c)*5.0625 + k , r = z = 0
   ENDIF
   iter = iter + 1 , z = real(r)*0.2 + sqr(z) + p , r = |z|
   r <= bailout
   }

Cdp_Jul_Mand {; Copyright (c) Paul W. Carlson, 1998
    ; Always use float=y, outside=summ
    ; real(p1) = 0 if Mset, otherwise Julia set
    ; imag(p1) = maximum value of ratio (try 0.01 to 0.3)
    ; p2       = Julia set coordinates (not used if Mset)
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
    z = iter = range_num = bailout = 0
    IF (real(p1) == 0)
        prev_w = 0
        c = pixel
    ELSE
        prev_w = pixel
        c = p2
    ENDIF
    max_r = imag(p1)
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    colors_in_range_1 = colors_in_range - 1
    :
    w = prev_w * prev_w + c
    ;
    r = |prev_w| / |w|
    prev_w = w
    IF (r < max_r && iter > 0)
        bailout = 1
        z = colors_in_range_1 * r / max_r + range_num * colors_in_range + 1 
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 4
}

Celtic_Julia {; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = Julia set coordinates
    ;   real(p2) = a factor controlling the width of the stalks
    ;   imag(p2) = maximum iterations for stalks
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in a color range
    ;****************************************************
    w = pixel
    c = p1
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    stalk_width = real(p2)
    max_iter = imag(p2)
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    ratio = (colors_in_range - 1) / stalk_width:
    ;
    w = w * w, wr = real(w)
    w = w - wr + abs(wr) - c
    ;
    IF (abs(real(w)) <= abs(imag(w)))
        min_dist_to_axis = abs(real(w))
    ELSE
        min_dist_to_axis = abs(imag(w))
    ENDIF
    IF (min_dist_to_axis < stalk_width && iter > 1 && iter <= max_iter)
        z = ratio * min_dist_to_axis + range_num * colors_in_range + 1
        bailout = 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0  && |w| < 4
}

CnFrc_Fnc_Mset {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = controls size of elements (1 to 32)
    ; imag(p1)   not used
    ; real(p2) = usually 1
    ; imag(p2)   not used
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    w = z = iter = range_num = bailout = 0
    c = pixel
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    :
    prev_w = w
    k = w * w + c
    w = k - fn1(p2/(k+p2/(k+p2/(k+p2/(k+p2/(k+p2))))))
    IF (abs(real(w)) > p1)
        bailout = 1
        angle = abs(atan((imag(w)-imag(prev_w))/(real(w)-\
                real(prev_w))))
        index = 2 * colors_in_range * angle / pi
        z = index + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0
}

Cosh_Atan_Mset {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = maximum value of abs(real(w))
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    prev_w = 0
    c = pixel
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    max_real = real(p1)
    ;****************************************************
    ; In the accompanying par file coshatan.par,
    ; we have 2 color ranges with 125 colors in each range
    ; for a total of 250 colors. The first range starts at
    ; color 1.  Pixels will use color 253 for no bailout.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ;****************************************************
    num_ranges = real(p2)
    colors_in_range = imag(p2):
    ;****************************************************
    ; The equation being iterated.
    ;****************************************************
    w = cosh(prev_w) + c
    ;****************************************************
    ; If abs(real(w)) exceeds the value of max_real, set z to
    ; the index into the colormap and set the bailout flag.
    ;****************************************************
    IF (abs(real(w)) > max_real)
        ;***************************************************
        ; Compute the angle between the last 2 orbit points
        ;***************************************************
        delta_i = imag(w) - imag(prev_w)
        delta_r = real(w) - real(prev_w)
        angle = abs(atan(delta_i / delta_r))
        bailout = 1
        range_index = 2 * colors_in_range * angle / pi
        z = range_index + range_num * colors_in_range + 1
    ENDIF
    prev_w = w
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
    bailout == 0
}

Cosh_Rings_Mset {; Copyright (c) Paul W. Carlson, 1998
    ;   real(p1) = a factor controlling the width of the rings
    ;   imag(p1)   not used
    ;   p2       = bailout value for |w|
    c = pixel
    w = bailout = iter = 0
    ring_width = real(p1)
    index_factor = 124 / ring_width:
    w = cosh(w) + c
    dist = abs(|w|-.25)
    bailout = (iter > 0) * (dist < ring_width)
    iter = iter + 1
    z = (index_factor * dist + 128) * bailout - iter
    bailout == 0 && |w| < p2
}

CSin_Atan_Julia {; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = Julia set coordinates
    ;   real(p2) = maximum value of abs(real(w))
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;****************************************************
    prev_w = pixel
    c = p1
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    max_real = real(p2)
    num_ranges = real(p3)
    colors_in_range = imag(p3):
    ;****************************************************
    w = c * sin(prev_w)
    ;****************************************************
    IF (abs(real(w)) > max_real)
        delta_i = imag(w) - imag(prev_w)
        delta_r = real(w) - real(prev_w)
        angle = abs(atan(delta_i / delta_r))
        bailout = 1
        range_index = 2 * colors_in_range * angle / pi
        z = range_index + range_num * colors_in_range + 1
    ENDIF
    prev_w = w
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0
}

Dbl_Exp_Newt1_J {; Copyright (c) Paul W. Carlson, 1998
    ;
    ;   real(p1) = a factor controlling the size of the stalks
    ;   imag(p1) = minimum iterations
    ;   real(p2) = convergence test distance
    ;   imag(p2) = color scheme:
    ;              1 = 8 ranges,  30 colors per range (default)
    ;              2 = 2 ranges, 125 colors per range
    ;   p3       = Julia set coordinates
    ;
    z = bailout = iter = range_num = dist = 0
    w = pixel
    c = p3
    cm1 = c - 1
    tcm1 = cm1 + cm1
    sc = sqrt(-c)
    stalk_width = real(p1)
    skip_iters = imag(p1)
    cdist = real(p2)
    IF (imag(p2) == 2)
        num_ranges = 2
        colors_in_range = 125
    ELSE
        num_ranges = 8
        colors_in_range = 30
    ENDIF
    index_factor = (colors_in_range - 1) / stalk_width
    :
    w2 = w * w
    w = w - (w2 * w2 + cm1 * w2 - c) / (4 * w2 * w + tcm1 * w)
    ;
    IF (iter > skip_iters)
        IF (abs(real(w)) <= abs(imag(w)))
            min_dist = abs(real(w))
        ELSE
            min_dist = abs(imag(w))
        ENDIF
        IF (dist == 0 && min_dist < stalk_width)
            dist = min_dist
        ENDIF
        IF (|w + (-1,0)| < cdist)
            bailout = 1
        ELSEIF (|w + (1,0)| < cdist)
            bailout = 1
        ELSEIF (|w + sc| < cdist)
            bailout = 1
        ELSEIF (|w - sc| < cdist)
            bailout = 1
        ENDIF
    ENDIF
    IF (bailout == 1)
        z = index_factor * dist + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 1.0e20
}

Dbl_Expos_Newt1 {; Copyright (c) Paul W. Carlson, 1998
    ;
    ;   real(p1) = a factor controlling the size of the stalks
    ;   imag(p1) = minimum iterations
    ;   real(p2) = convergence test distance
    ;   imag(p2) = value of |w| for bailout
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in a range
    ;
    z = bailout = iter = range_num = dist = 0
    c = pixel
    cm1 = c - 1
    tcm1 = cm1 + cm1
    w = sqrt((1 - c) / 6)
    sc = sqrt(-c)
    stalk_width = real(p1)
    skip_iters = imag(p1)
    cdist = real(p2)
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    index_factor = (colors_in_range - 1) / stalk_width
    :
    w2 = w * w
    w = w - (w2 * w2 + cm1 * w2 - c) / (4 * w2 * w + tcm1 * w)
    ;
    IF (iter > skip_iters)
    IF (abs(real(w)) <= abs(imag(w)))
        min_dist = abs(real(w))
    ELSE
        min_dist = abs(imag(w))
    ENDIF
    IF (dist == 0 && min_dist < stalk_width)
        dist = min_dist
    ENDIF
    IF (|w + (-1,0)| < cdist)
        bailout = 1
    ELSEIF (|w + (1,0)| < cdist)
        bailout = 1
    ELSEIF (|w + sc| < cdist)
        bailout = 1
    ELSEIF (|w - sc| < cdist)
        bailout = 1
    ENDIF
    ENDIF
    IF (bailout == 1)
        z = index_factor * dist + range_num * colors_in_range + 1
        bailout = 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < imag(p2)
}

Dbl_Expos_Newt2 {; Copyright (c) Paul W. Carlson, 1998
    ;
    ;   real(p1) = a factor controlling the size of the stalks
    ;   imag(p1) = minimum iterations
    ;   real(p2) = convergence test distance
    ;   imag(p2) = value of |w| for bailout
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in a range
    ;
    z = bailout = iter = range_num = dist = 0
    c = pixel
    csqd = c * c
    icsqd = 1 / csqd
    sc = sqrt(-icsqd)
    a = csqd - icsqd
    w = sqrt(a / 6)
    stalk_width = real(p1)
    skip_iters = imag(p1)
    cdist = real(p2)
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    index_factor = (colors_in_range - 1) / stalk_width
    :
    w2 = w * w
    w = (3 * w2 * w2 - a * w2 + 1) / (4 * w * w2 - 2 * a * w)
    ;
    IF (iter > skip_iters)
        IF (abs(real(w)) <= abs(imag(w)))
            min_dist = abs(real(w))
        ELSE
            min_dist = abs(imag(w))
        ENDIF
        IF (dist == 0 && min_dist < stalk_width)
            dist = min_dist
        ENDIF
        IF (|w + c| < cdist)
            bailout = 1
        ELSEIF (|w - c| < cdist)
            bailout = 1
        ELSEIF (|w + sc| < cdist)
            bailout = 1
        ELSEIF (|w - sc| < cdist)
            bailout = 1
        ENDIF
    ENDIF
    IF (bailout == 1)
        z = index_factor * dist + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < imag(p2)
}

Db2_Expos_Newt1 {; Copyright (c) Paul W. Carlson, 1998
    ;
    ;   real(p1) = a factor controlling the size of the stalks
    ;   imag(p1) = minimum iterations
    ;   real(p2) = convergence test distance
    ;   imag(p2) = value of |w| for bailout
    ;
    z = bailout = iter = range_num = dist = 0
    c = pixel
    cm1 = c - 1
    tcm1 = cm1 + cm1
    w = sqrt((1 - c) / 6)
    sc = sqrt(-c)
    stalk_width = real(p1)
    skip_iters = imag(p1)
    cdist = real(p2)
    index_factor = 59 / stalk_width
    :
    w2 = w * w
    w = w - (w2 * w2 + cm1 * w2 - c) / (4 * w2 * w + tcm1 * w)
    ;
    IF (iter > skip_iters)
        IF (abs(real(w)) <= abs(imag(w)))
            min_dist = abs(real(w))
        ELSE
            min_dist = abs(imag(w))
        ENDIF
        IF (dist == 0 && min_dist < stalk_width)
            dist = min_dist
        ENDIF
        IF (|w + (-1,0)| < cdist)
            bailout = 1
            range_num = 0
        ELSEIF (|w + (1,0)| < cdist)
            bailout = 1
            range_num = 1
        ELSEIF (|w + sc| < cdist)
            bailout = 1
            range_num = 2
        ELSEIF (|w - sc| < cdist)
            bailout = 1
            range_num = 3
        ENDIF
    ENDIF
    IF (bailout == 1)
        z = index_factor * dist + range_num * 60 + 1
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < imag(p2)
}

devil { ; Copyright (c) Paul W. Carlson, 1998
            ; Based on one of Noel Giffin's formulas
    w = pixel
    z = iter = wp1 = wp2 = bailout = 0
    :
    old_w = w
    w = w * w - wp2
    wp2 = wp1
    wp1 = real(old_w) - flip(imag(old_w))
    IF (|w| > 4)
        bailout = 1
        z = 4 * iter + 30
        z = z - real(216) * trunc(z / real(216))
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0
}

Eqn_5 { ; Copyright (c) Paul W. Carlson, 1998
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
}

fastmand { ; Copyright (c) Paul W. Carlson, 1997
    ; This formula performs NO iterations if the point is
    ; in the large cardoid (the "lake") or the large
    ; period-2 bulb.
    ; float=y must be used.
    ;
    z = 0
    c = pixel
    pi3 = pi / 3
    bailout = 0:
    ;
    ;*****************************************************
    ; Check if point can be in either circle or cardoid
    ;*****************************************************
    aic = abs(imag(c))
    IF (aic < 0.6495190528)
        rc = real(c)
        ;*************************************************
        ; Check if point is in the circle
        ;*************************************************
        IF (aic < 0.25)
            delta = sqrt(0.0625 - aic * aic)
            IF ((rc > (-1 - delta)) && (rc < (-1 + delta)))
                bailout = 1
            ENDIF
        ENDIF
        ;*************************************************
        ; Check if point is in the cardoid
        ;*************************************************
        IF (rc > -0.75 && rc < 0.375)
            IF (rc > 0.25 && aic < 0.2165063508)
                t = abs(acos(0.5 * (1 + sqrt(3 - 8 * rc))))
            ELSE
                t = abs(acos(0.5 * (1 - sqrt(3 - 8 * rc))))
            ENDIF
            card_i  = 0.5 * sin(t) * (1.0 - cos(t))
            IF ((t > pi3 && aic < card_i) || (t <= pi3 && aic > card_i))
                bailout = 1
            ENDIF
        ENDIF
    ENDIF
    ;*****************************************************
    ; If point is in neither we have to iterate
    ;*****************************************************
    IF (bailout == 0)
        z = z * z + c
    ENDIF
    (bailout == 0) && |z| < 4
}

FB_Halley_M4 {; Copyright (c) Paul W. Carlson, 1998
    ; Halley solution of w^4 - w - c = 0
    ; Always use float=y, outside=summ
    ; p1 = relaxation factor
    ; p2 = radius of center of ring (0.01 to 10)
    ; p3 = one half thickness of ring (0.01 to p2)
    c = pixel
    w = z = iter = bailout = 0
    d0 = p2 + p3
    d1 = 0.382683432365 * p2
    d2 = 0.923879532511 * p2
    dsqd = d0 * d0 + p2 * p2 - (d0 + d0) * d2
    :
    w2 = w * w, fnc = w2 * w2 - w - c, der = 4 * w * w2 - 1
    k = p1 * fnc / (der - 12 * w2 * fnc / (der + der))
    w = w - k
    ;
    IF ((abs(cabs(w) - p2) < p3) && iter > 0)
        bailout = 1
        wr = real(w), wi = imag(w)
        awr = abs(wr), awi = abs(wi)
        IF (awr >= awi)
            dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
            adjust = 1
        ELSE
            dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
            adjust = 0
        ENDIF
        IF     (wr >= 0 && wi >= 0)
            range_num = 1 - adjust
        ELSEIF (wr < 0 && wi >= 0)
            range_num = 2 + adjust
        ELSEIF (wr < 0 && wi < 0)
            range_num = 5 - adjust
        ELSE
            range_num = 6 + adjust
        ENDIF
        ratio = sqrt(dist / dsqd)
        z = 29 * ratio + range_num * 30 + 1
    ELSEIF (|k| < 0.000001)
        bailout = 1
        z = 252
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0
}

FB_Halley_M42 {; Copyright (c) Paul W. Carlson, 1998
    ; Always use float=y, outside=summ
    ; p1 = relaxation factor
    ; p2 = radius of center of ring (0.01 to 10)
    ; p3 = one half thickness of ring (0.01 to p2)

    c = pixel, c4 = c*c*c*c
    w = z = iter = bailout = 0
    d0 = p2 + p3
    d1 = 0.382683432365 * p2
    d2 = 0.923879532511 * p2
    dsqd = d0 * d0 + p2 * p2 - (d0 + d0) * d2
    :
    w2 = w * w, fnc = w2 * w2 - c*w - c4, der = 4 * w * w2 - c
    k = p1 * fnc / (der - 12 * w2 * fnc / (der + der))
    w = w - k
    ;
    IF ((abs(cabs(w) - p2) < p3) && iter > 0)
        bailout = 1
        wr = real(w), wi = imag(w)
        awr = abs(wr), awi = abs(wi)
        IF (awr >= awi)
            dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
            adjust = 1
        ELSE
            dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
            adjust = 0
        ENDIF
        IF     (wr >= 0 && wi >= 0)
            range_num = 1 - adjust
        ELSEIF (wr < 0 && wi >= 0)
            range_num = 2 + adjust
        ELSEIF (wr < 0 && wi < 0)
            range_num = 5 - adjust
        ELSE
            range_num = 6 + adjust
        ENDIF
        ratio = sqrt(dist / dsqd)
        z = 29 * ratio + range_num * 30 + 1
    ELSEIF (|k| < 0.000001)
        bailout = 1
        z = 252
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0
}

FB_Popcorn {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = h in popcorn formula
    ; imag(p1) = bailout value
    ; real(p2) = radius of center of ring (0.01 to 10)
    ; imag(p2) = one half thickness of ring (0.01 to p1)
    ; real(p3) = iterations to skip
    ; imag(p3)   not used
    ;
    x = real(pixel)
    y = imag(pixel)
    h = real(p1)
    z = iter = bailout = 0
    d0 = real(p2) + imag(p2)
    d1 = 0.382683432365 * real(p2)
    d2 = 0.923879532511 * real(p2)
    dsqd = d0 * d0 + real(p2) * real(p2) - (d0 + d0) * d2
    :
    prev_x = x
    x = x - h * sin(y + tan(3 * y))
    y = y - h * sin(prev_x + tan(3 * prev_x))
    w = x + flip(y)
    ;
    IF ((abs(cabs(w) - real(p2)) < imag(p2)) && iter > real(p3))
        bailout = 1
        wr = real(w), wi = imag(w)
        awr = abs(wr), awi = abs(wi)
        IF (awr >= awi)
            dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
            adjust = 1
        ELSE
            dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
            adjust = 0
        ENDIF
        IF     (wr >= 0 && wi >= 0)
            range_num = 1 - adjust
        ELSEIF (wr < 0 && wi >= 0)
            range_num = 2 + adjust
        ELSEIF (wr < 0 && wi < 0)
            range_num = 5 - adjust
        ELSE
            range_num = 6 + adjust
        ENDIF
        ratio = sqrt(dist / dsqd)
        z = 29 * ratio + range_num * 30 + 1
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < imag(p1)
}

FlexBalls_Cosh {; Copyright (c) Paul W. Carlson, 1998
    ; p1 = radius of center of ring (0.01 to 10)
    ; p2 = one half thickness of ring (0.01 to p1)
    ;
    c = pixel
    w = z = iter = bailout = 0
    d0 = p1 + p2
    d1 = 0.382683432365 * p1
    d2 = 0.923879532511 * p1
    dsqd = d0 * d0 + p1 * p1 - (d0 + d0) * d2
    :
    w = cosh(w) + c
    ;
    IF ((abs(cabs(w) - p1) < p2) && iter > 0)
        bailout = 1
        wr = real(w), wi = imag(w)
        awr = abs(wr), awi = abs(wi)
        IF (awr >= awi)
            dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
            adjust = 1
        ELSE
            dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
            adjust = 0
        ENDIF
        IF     (wr >= 0 && wi >= 0)
            range_num = 1 - adjust
        ELSEIF (wr < 0 && wi >= 0)
            range_num = 2 + adjust
        ELSEIF (wr < 0 && wi < 0)
            range_num = 5 - adjust
        ELSE
            range_num = 6 + adjust
        ENDIF
        ratio = sqrt(dist / dsqd)
        z = 29 * ratio + range_num * 30 + 1
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 1000
}

FlexBalls_Cosww {; Copyright (c) Paul W. Carlson, 1998
    ; p1 = radius of center of ring (0.01 to 10)
    ; p2 = one half thickness of ring (0.01 to p1)
    ;
    c = pixel
    w = z = iter = bailout = 0
    d0 = p1 + p2
    d1 = 0.382683432365 * p1
    d2 = 0.923879532511 * p1
    dsqd = d0 * d0 + p1 * p1 - (d0 + d0) * d2
    :
    w = cos(w * w) + c
    ;
    IF ((abs(cabs(w) - p1) < p2) && iter > 0)
        bailout = 1
        wr = real(w), wi = imag(w)
        awr = abs(wr), awi = abs(wi)
        IF (awr >= awi)
            dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
            adjust = 1
        ELSE
            dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
            adjust = 0
        ENDIF
        IF     (wr >= 0 && wi >= 0)
            range_num = 1 - adjust
        ELSEIF (wr < 0 && wi >= 0)
            range_num = 2 + adjust
        ELSEIF (wr < 0 && wi < 0)
            range_num = 5 - adjust
        ELSE
            range_num = 6 + adjust
        ENDIF
        ratio = sqrt(dist / dsqd)
        z = 29 * ratio + range_num * 30 + 1
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 1000
}

FlexBalls_Mand {; Copyright (c) Paul W. Carlson, 1998
    ; p1 = radius of center of ring (0.01 to 10)
    ; p2 = one half thickness of ring (0.01 to p1)
    ;
    c = pixel
    w = z = iter = bailout = 0
    d0 = p1 + p2
    d1 = 0.382683432365 * p1
    d2 = 0.923879532511 * p1
    dsqd = d0 * d0 + p1 * p1 - (d0 + d0) * d2
    :
    w = w * w + c   ; Classic Mandelbrot set
    ;
    IF ((abs(cabs(w) - p1) < p2) && iter > 0)
        bailout = 1
        wr = real(w), wi = imag(w)
        awr = abs(wr), awi = abs(wi)
        IF (awr >= awi)
            dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
            adjust = 1
        ELSE
            dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
            adjust = 0
        ENDIF
        IF     (wr >= 0 && wi >= 0)
            range_num = 1 - adjust
        ELSEIF (wr < 0 && wi >= 0)
            range_num = 2 + adjust
        ELSEIF (wr < 0 && wi < 0)
            range_num = 5 - adjust
        ELSE
            range_num = 6 + adjust
        ENDIF
        ratio = sqrt(dist / dsqd)
        z = 29 * ratio + range_num * 30 + 1
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 1000
}

FlexBalls_Pky {; Copyright (c) Paul W. Carlson, 1998
    ; p1       = Julia set coordinates
    ; real(p1) = radius of center of ring (0.01 to 10)
    ; imag(p2) = one half thickness of ring (0.01 to p1)
    ; real(p3) = iterations to skip
    ; imag(p3) = bailout value for |w|
    ;
    w = pixel
    c = p1
    z = iter = bailout = 0
    d0 = real(p2) + imag(p2)
    d1 = 0.382683432365 * real(p2)
    d2 = 0.923879532511 * real(p2)
    dsqd = d0 * d0 + real(p2) * real(p2) - (d0 + d0) * d2
    :
    w = 1 / (w * w + c)
    ;
    IF ((abs(cabs(w) - real(p2)) < imag(p2)) && iter > real(p3))
        bailout = 1
        wr = real(w), wi = imag(w)
        awr = abs(wr), awi = abs(wi)
        IF (awr >= awi)
            dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
            adjust = 1
        ELSE
            dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
            adjust = 0
        ENDIF
        IF     (wr >= 0 && wi >= 0)
            range_num = 1 - adjust
        ELSEIF (wr < 0 && wi >= 0)
            range_num = 2 + adjust
        ELSEIF (wr < 0 && wi < 0)
            range_num = 5 - adjust
        ELSE
            range_num = 6 + adjust
        ENDIF
        ratio = sqrt(dist / dsqd)
        z = 29 * ratio + range_num * 30 + 1
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < imag(p3)
}

FlexBalls_R4 {; Copyright (c) Paul W. Carlson, 1998
    ; p1 = radius of center of ring (0.01 to 10)
    ; p2 = one half thickness of ring (0.01 to p1)
    ;
    c = pixel
    w = z = iter = bailout = 0
    d0 = p1 + p2
    d1 = 0.382683432365 * p1
    d2 = 0.923879532511 * p1
    dsqd = d0 * d0 + p1 * p1 - (d0 + d0) * d2
    :
    w = c * ((w - 1)^2) / ((w + 1)^2)
    ;
    IF ((abs(cabs(w) - p1) < p2) && iter > 0)
        bailout = 1
        wr = real(w), wi = imag(w)
        awr = abs(wr), awi = abs(wi)
        IF (awr >= awi)
            dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
            adjust = 1
        ELSE
            dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
            adjust = 0
        ENDIF
        IF     (wr >= 0 && wi >= 0)
            range_num = 1 - adjust
        ELSEIF (wr < 0 && wi >= 0)
            range_num = 2 + adjust
        ELSEIF (wr < 0 && wi < 0)
            range_num = 5 - adjust
        ELSE
            range_num = 6 + adjust
        ENDIF
        ratio = sqrt(dist / dsqd)
        z = 29 * ratio + range_num * 30 + 1
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 1000
}

Fnww_Fnc_Mset { ; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) controls elements size (usually 2 to 16))
    ; imag(p1) not used
    ; real(p2) number of color ranges
    ; imag(p2) number of colors in a range
    z = w = iter = range_num = bailout = 0
    c = pixel
    p = p1 + p1
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    colors_in_range_1 = colors_in_range - 1:
    w = fn1(w * w + fn2(c))
    m = |w|
    IF ((p < p1) && (m > p1))
        bailout = 1
        index = colors_in_range_1 * (p1 - p) / p1
        z = index + range_num * colors_in_range + 1
    ENDIF
    p = m
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && m < 100
}

Formulization { ; Copyright (c) Paul W. Carlson, 1998
    z = w = iter = range_num = bailout = 0
    c = pixel
    p = p1 + p1
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    colors_in_range_1 = colors_in_range - 1
    :
    ; Some random formulizationizating
    k = w * w + c
    w = k +  1 / (k * k) + k * c
    ;
    m = |w|
    IF ((p < p1) && (m > p1))
        bailout = 1
        index = colors_in_range_1 * (p1 - p) / p1
        z = index + range_num * colors_in_range + 1
    ENDIF
    p = m
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && m < 100
}

Halley4_Mset {; Copyright (c) Paul W. Carlson, 1998
    ; Parameters:
    ;   real(p1) = exponent of z (use integers, 4 thru 9)
    ;   imag(p1)   not used
    ;   p2       = relaxation factor (usually (1,0) )
    ;   real(p3) = 1,    z^p1 -   z - c   = 0  (default)
    ;            = 2,    z^p1 -   z - c^2 = 0
    ;            = 3,    z^p1 - c*z - c^2 = 0
    ;            = 4,    z^p1 - c*z - c^4 = 0
    ;   imag(p3)   not used
    ;
    c = pixel
    c2 = c * c
    z = 0
    p = real(p1)
    s = real(p3)
    IF (s == 2)
        a = 1
        b = c2
    ELSEIF (s == 3)
        (s == 2)
        a = c
        b = c2
    ELSEIF (s == 4)
        a = c
        b = c2 * c2
    ELSE
        a = 1
        b = c
    ENDIF
    pm1 = p - 1
    pm2 = pm1 - 1
    ppm1 = p * pm1
    :
    fnc = z^p - a * z - b
    der1 = p * z^pm1 - a
    der2 = ppm1 * z^pm2
    k = p2 * fnc / (der1 - der2 * fnc / (der1 + der1))
    z = z - k
    |k| > 0.00000001
}

Halley7_3Way {; Copyright (c) Paul W. Carlson, 1998
    ; Alyways use float=y, outdide=summ
    ; real(p1) = escape circle radius squared
    ; imag(p1) = number of iterations to skip
    ; real(p2) = number of color ranges
    ; imag(p2) = number of colors in a range
    ; p3       = relaxation factor
    z = k = iter = range_num = bailout = 0
    w = pixel
    prev_modw2 = 1.0e20
    rad2 = real(p1)
    skip_iters = imag(p1)
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    colors_in_range_1 = colors_in_range - 1
    :
    w5 = w^5, w6 = w * w5, w7 = w * w6
    w = w - p3 * (w7-w)/((7*w6-1)-(42*w5)*(w7-w)/(14*w6-2))
    ;
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
    bailout == 0 && |w| < 1.0e10
}

HyCycl_Julia {; Copyright (c) Paul W. Carlson, 1998
    z = w = iter = range_num = bailout = 0
    w = pixel
    c = p1
    i = (0,1)
    k = 1.2 - p3
    :
    w = w * w, wr = real(w)
    w = w - wr + abs(wr) - c
    angle = atan(imag(w)/wr)
    ka = k * angle / p3
    rw = k * cos(angle) + p3 * cos(ka)
    iw = k * sin(angle) + p3 * sin(ka)
    ww = rw + i * iw
    dist = abs(|w|-|ww|)
    IF (dist < p2 && iter > 1)
        bailout = 1
        index = 125 * dist / p2
        z = index + range_num * 125 + 1
    ENDIF
    iter = iter + 1
    range_num = range_num + 1
    IF (range_num == 2)
        range_num = 0
    ENDIF
    z = z - iter
    bailout == 0 && |w| < 10000
}

Ibubs_Julia_Mset {; Copyright (c) Paul W. Carlson, 1998
    ;   p1       = if both real(p1) and imag(p1) are zero
    ;              do Mset, otherwise do Julia set.
    ;   real(p2) = maximum contour of minimum sqrt(|w|)
    ;              (this is the outside edge of the bubbles).
    ;   imag(p2) = Value of |w| at bailout.
    ;   real(p3) = number of color ranges.
    ;   imag(p3) = number of colors in each color range.
    ;
    IF (real(p1) == 0 && imag(p1) == 0)
        w = 0
        c = 1 / pixel
    ELSE
        w = 1 / pixel
        c = p1
    ENDIF
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    max_w = imag(p2)
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    max_min_w = real(p2)
    min_w = 1.0e20:
    ;
    w = w * w + c  ; classic Mandelbrot equation
    ;
    temp = sqrt(|w|)
    IF (temp < min_w)
       min_w = temp
       save_range = range_num
    ENDIF
    IF (|w| > max_w)
        IF (min_w < max_min_w)
            range_index = (min_w / max_min_w) * (colors_in_range - 1)
            z = range_index + save_range * colors_in_range + 1
        ELSE
            z = 0
        ENDIF
        bailout = 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0  && |w| < max_w
}

Inv_Newtzz_Jul {; Copyright (c) Paul W. Carlson, 1998
    ; Parameters:
    ;   p1 = Julia set coordinates
    ;   real(p2) = maximum value of abs(real(w))
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    prev_w = 1 / pixel
    c = p1
    z = bailout = iter = range_num = 0
    max_real = real(p2)
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    index_factor = 2 * colors_in_range / pi
    :
    k = prev_w^prev_w
    w = prev_w - (k - c) / (k * (1 + log(prev_w)))
    ;
    IF (abs(real(w)) > max_real)
        delta_i = imag(w) - imag(prev_w)
        delta_r = real(w) - real(prev_w)
        angle = abs(atan(delta_i / delta_r))
        bailout = 1
        z = index_factor * angle + range_num * colors_in_range + 1
    ENDIF
    prev_w = w
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| > 1.0e-10
}

Julia_Ellipse {; Copyright (c) Paul W. Carlson, 1998
    ; p1       = Julia set coordinates
    ; real(p2) = ellipse real axis
    ; imag(p2) = ellipse imag axis
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
    z = iter = range_num = bailout = 0
    w = pixel
    c = p1
    a = real(p2)
    b = imag(p2)
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    colors_in_range_1 = colors_in_range - 1
    :
    w = w * w + c
    ;
    dist = real(w) * real(w) / a + imag(w) * imag(w) / b
    IF (dist > 1)
        bailout = 1
        index = colors_in_range_1 * (dist - 1) / dist
        z = index + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0
}

Lam_Fnc_3Way {; Copyright (c) Paul W. Carlson, 1998
    ;
    ; real(p1) = escape circle radius squared
    ; imag(p1) = number of iterations to skip
    ; p2       = bailout value for |w|
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
    z = iter = k = range_num = bailout = 0
    w = 0.5
    c = pixel
    prev_modw2 = 1.0e20
    rad2 = real(p1)
    skip_iters = imag(p1)
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    colors_in_range_1 = colors_in_range - 1
    :
    w = c * w * (1 - w)
    w = w - fn1(w)
    ;
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
    bailout == 0 && |w| <= p2
}

Log_Ser_3Way {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = escape circle radius squared
    ; imag(p1) = number of iterations to skip
    ; real(p2) = number of color ranges
    ; imag(p2) = number of colors in a range
    ;
    z = w = k = iter = range_num = bailout = 0
    c = pixel
    prev_modw2 = 1.0e20
    rad2 = real(p1)
    skip_iters = imag(p1)
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    factor = (colors_in_range - 1) / rad2
    :
    w2=w*w, w4=w2*w2, w6=w2*w4, w8=w4*w4, w10=w6*w4, w12=w6*w6
    w = w2 - w4/2 + w6/3 - w8/4 + w10/5 - w12/6 + c
    ;
    IF ((prev_modw2 < rad2) && (|w| > rad2))
        bailout = 1
        IF (iter > skip_iters)
            k = 1
        ENDIF
        z = (factor*(rad2-prev_modw2)+range_num*colors_in_range+1)*k
    ENDIF
    prev_modw2 = |w|
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 1.0e20
}

LorentzM_FB {; Copyright (c) Paul W. Carlson, 1998
    ;keep p1 between 0 and 1, <0.7 is best, negative values mirror
    ;Re(p1)=Im(p1) -> 0 converges to standard Mandel rotated by 90
    ;Size increases with |p1|
    ; real(p2) = radius of center of ring (0.01 to 10)
    ; imag(p2) = one half thickness of ring (0.01 to real(p2))
    ; real(p3) = bailout test value
    ; imag(p3) = iterations to skip
    c = pixel
    w = z = iter = bailout = 0
    k = real(p2)
    d0 = k + imag(p2)
    test = real(p3)
    skip = imag(p3)
    d1 = 0.382683432365 * k
    d2 = 0.923879532511 * k
    dsqd = d0 * d0 + k * k - (d0 + d0) * d2:
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; Oliver Klimek's Lorentz equation (using w instead of z)
    w = sqrt(1 - (w * w) / (p1 * p1)) + c
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    IF ((abs(cabs(w) - k) < imag(p2)) && iter > skip)
        bailout = 1
        wr = real(w), wi = imag(w)
        awr = abs(wr), awi = abs(wi)
        IF (awr >= awi)
            dist = (awr - d2)*(awr - d2) + (awi - d1)*(awi - d1)
            adjust = 1
        ELSE
            dist = (awr - d1)*(awr - d1) + (awi - d2)*(awi - d2)
            adjust = 0
        ENDIF
        IF     (wr >= 0 && wi >= 0)
            range_num = 1 - adjust
        ELSEIF (wr < 0 && wi >= 0)
            range_num = 2 + adjust
        ELSEIF (wr < 0 && wi < 0)
            range_num = 5 - adjust
        ELSE
            range_num = 6 + adjust
        ENDIF
        ratio = sqrt(dist / dsqd)
        z = 29 * ratio + range_num * 30 + 1
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < test
}

Mag1_J2 {; Copyright (c) Paul W. Carlson, 1998
    ; p1       = Julia set coordinates
    ; real(p2) = controls size of elements
    ; imag(p2)   not used
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
    z = iter = range_num = bailout = 0
    pw = pixel
    c = p1
    max_ratio = real(p2)
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    factor = (colors_in_range - 1) / max_ratio
    :
    w = ((pw * pw + c - 1) / (pw + pw + c - 2))^2
    ;
    ratio = |pw| / |w|
    pw = w
    IF (ratio < max_ratio && iter > 0)
        bailout = 1
        z = factor * ratio + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 1.0e20
}

Mand_Atan_Mset {; Copyright (c) Paul W. Carlson, 1998
    w = z = iter = range_num = bailout = 0
    c = pixel
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    :
    prev_w = w
    w = w * w + c
    IF (abs(real(w)) > p1)
        bailout = 1
        angle = abs(atan((imag(w)-imag(prev_w))/(real(w)-real(prev_w))))
        index = 2 * colors_in_range * angle / pi
        z = index + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0
}

Mandel_3Way {; Copyright (c) Paul W. Carlson, 1998
    ; Alyways use float=y, outdide=summ
    ; real(p1) = escape circle radius squared
    ; imag(p1) = number of iterations to skip
    ; real(p2) number of color ranges
    ; imag(p2) number of colors in a range
    z = w = k = iter = range_num = bailout = 0
    c = pixel
    prev_modw2 = 1.0e20
    rad2 = real(p1)
    skip_iters = imag(p1)
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    colors_in_range_1 = colors_in_range - 1
    :
    w = w * w + c
    ;
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
}

Mand_Ellipse {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = ellipse real axis
    ; imag(p1) = ellipse imag axis
    ; real(p2) = number of color ranges
    ; imag(p2) = number of colors in a range
    ;
    z = w = k = iter = range_num = bailout = 0
    c = pixel
    a = real(p1)
    b = imag(p1)
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    colors_in_range_1 = colors_in_range - 1
    :
    w = w * w + c
    ;
    dist = real(w) * real(w) / a + imag(w) * imag(w) / b
    IF (dist > 1)
        bailout = 1
        index = colors_in_range_1 * (dist - 1) / dist
        z = index + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0
}

Mandel_Segs {; Copyright (c) Paul W. Carlson, 1998
    ;   real(p1) = stalk segment width factor
    ;   imag(p1) = stalk segment length factor
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in a range
    ;   real(p3) = minimum |w| for stalks
    ;   imag(p3) = minimum iterations
    ;
    c = pixel
    w = z = bailout = iter = range_num = 0
    stalk_width = real(p1)
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    min = real(p3)
    index_factor = (colors_in_range - 1) / stalk_width
    stalk_len = imag(p1) * stalk_width * stalk_width
    :
    w = w * w + c
    ;
    IF (abs(real(w)) <= abs(imag(w)))
        dist = abs(real(w))
    ELSE
        dist = abs(imag(w))
    ENDIF
    IF (dist < stalk_width && iter > imag(p3))
        IF (|w| > min && |w| < stalk_len)
            z = index_factor * dist + range_num * colors_in_range + 1
            bailout = 1
        ENDIF
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0  && |w| < 4
}

Mandel_Squares {; Copyright (c) Paul W. Carlson, 1998
    ; Parameters:
    ;   real(p1) = controls the size of the squares (0.1 to 0.8)
    ;   imag(p1) = 0 if Mset, else Julia set
    ;   p2       = Julia set coordinates
    ;   real(p3) = number of iterations to skip
    ;
    IF (imag(p1) == 0)
        c = pixel
        w = 0
    ELSE
        c = p2
        w = pixel
    ENDIF
    z = bailout = iter = range_num = 0
    shield_size = real(p1)
    skip_iters = real(p3)
    num_ranges = 8
    colors_in_range = 30
    k = 0.5 + shield_size
    j = 0.5 - shield_size
    index_factor = 29 / shield_size:
    ;****************************************************
    w = w * w + c
    ;****************************************************
    awr = abs(real(w)), awi = abs(imag(w))
    IF ((awr < k) && (awr > j) && (awi < k) && (awi > j))
        awr5 = abs(awr - 0.5), awi5 = abs(awi - 0.5)
        IF (awr5 <= awi5)
            min_dist = awr5
        ELSE
            min_dist = awi5
        ENDIF
        IF (min_dist < shield_size && iter > skip_iters)
            z = index_factor * min_dist + range_num * colors_in_range + 1
            bailout = 1
        ENDIF
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0  && |w| < 1.0e20
}

Mutant_demo { ; Oliver Klimek's TripleMutant formula
                  ; as modified by Paul Carlson, 1998
    ; real(p1) = iteration count
    ;
    w = z = bailout = iter = 0
    c = pixel
    pt1 = (2.5,2.5),  pt2 = (-2.5,2.5),  pt3 = (2.5,-2.5)
    a1 = 1 / (|(pixel - pt1)|^2)    
    a2 = 1 / (|(pixel - pt2)|^2)    
    a3 = 1 / (|(pixel - pt3)|^2)
    :
    ; find contribution of each function
    k1 = a1 * fn1(w)
    k2 = a2 * fn2(w)
    k3 = a3 * fn3(w)
    ;
    ; compute value of w
    w = w * w + c + k1 + k2 + k3
    ;
    ; if we're at the specified iteration count,
    ; find which function has largest contribution
    ; and set the bailout flag.
    IF ((iter == real(p1)) || (|w| > 8))
        bailout = 1
        m1 = cabs(k1), m2 = cabs(k2), m3 = cabs(k3)
        IF (m1 < 1.0e-20)
            m1 = 1.0e-20
        ENDIF
        IF (m2 < 1.0e-20)
            m2 = 1.0e-20
        ENDIF
        IF (m3 < 1.0e-20)
            m3 = 1.0e-20
        ENDIF
        maxm = m1
        IF (m2 > m1)
            maxm = m2
            IF (m3 > m2)
                maxm = m3
            ENDIF
        ELSEIF (m3 > m1)
            maxm = m3
        ENDIF
        ;
        ; set z to colormap index
        IF (maxm == m1)
            z =   1 + 40 * (1 - m3/m1 + m2/m1)
        ELSEIF (maxm == m2)
            z =  81 + 40 * (1 - m1/m2 + m3/m2)
        ELSE
            z = 161 + 40 * (1 - m2/m3 + m1/m3)
        ENDIF
    ENDIF
    ;
    ; test for bailout
    iter = iter + 1
    z = z - iter
    bailout == 0
}

Mutant_End { ; Oliver Klimek's TripleMutant formula
                 ; as modified by Paul Carlson, 1998
    w = z = bailout = iter = 0
    c = pixel
    a1 = 1 / (|(pixel - p1)|^2)    
    a2 = 1 / (|(pixel - p2)|^2)    
    a3 = 1 / (|(pixel - p3)|^2)
    :
    ; find contribution of each function
    k1 = a1 * fn1(w)
    k2 = a2 * fn2(w)
    k3 = a3 * fn3(w)
    ;
    ; compute value of w
    w = w * w + c + k1 + k2 + k3
    ;
    ; test for bailout
    IF (|w| > 8)
        bailout = 1
        ;
        ; find which function has largest contribution
        m1 = cabs(k1), m2 = cabs(k2), m3 = cabs(k3)
        IF (m1 < 1.0e-20)
            m1 = 1.0e-20
        ENDIF
        IF (m2 < 1.0e-20)
            m2 = 1.0e-20
        ENDIF
        IF (m3 < 1.0e-20)
            m3 = 1.0e-20
        ENDIF
        maxm = m1
        IF (m2 > m1)
            maxm = m2
            IF (m3 > m2)
                maxm = m3
            ENDIF
        ELSEIF (m3 > m1)
            maxm = m3
        ENDIF
        ;
        ; set z to colormap index
        IF (maxm == m1)
            z =   1 + 40 * (1 - m3/m1 + m2/m1)
        ELSEIF (maxm == m2)
            z =  81 + 40 * (1 - m1/m2 + m3/m2)
        ELSE
            z = 161 + 40 * (1 - m2/m3 + m1/m3)
        ENDIF
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0
}

Mutant_Start { ; Oliver Klimek's TripleMutant formula
                   ; as modified by Paul Carlson, 1998
    w = z = bailout = iter = 0
    c = pixel
    a1 = 1 / (|(pixel - p1)|^2)    
    a2 = 1 / (|(pixel - p2)|^2)    
    a3 = 1 / (|(pixel - p3)|^2)
    ;
    ; find contribution of each function
    k1 = a1 * fn1(w)
    k2 = a2 * fn2(w)
    k3 = a3 * fn3(w)
    ;
    ; find which function has largest contribution
    m1 = cabs(k1), m2 = cabs(k2), m3 = cabs(k3)
    IF (m1 < 1.0e-20)
        m1 = 1.0e-20
    ENDIF
    IF (m2 < 1.0e-20)
        m2 = 1.0e-20
    ENDIF
    IF (m3 < 1.0e-20)
        m3 = 1.0e-20
    ENDIF
    maxm = m1
    IF (m2 > m1)
        maxm = m2
        IF (m3 > m2)
            maxm = m3
        ENDIF
    ELSEIF (m3 > m1)
        maxm = m3
    ENDIF
    :
    ; compute value of w
    w = w * w + c + k1 + k2 + k3
    ;
    ; test for bailout
    IF (|w| > 8)
        bailout = 1
        ;
        ; set z to colormap index
        IF (maxm == m1)
            z =   1 + 40 * (1 - m3/m1 + m2/m1)
        ELSEIF (maxm == m2)
            z =  81 + 40 * (1 - m1/m2 + m3/m2)
        ELSE
            z = 161 + 40 * (1 - m2/m3 + m1/m3)
        ENDIF
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0
}

MyEqn_Julia {; Copyright (c) Paul W. Carlson, 1998
    ; p1       = Julia set coordinates
    ; real(p2) = selects rendering method
    ; imag(p2) = a factor controlling the size of the elements
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
    z = k = iter = range_num = bailout = 0
    w = pixel
    c = p1
    dist = 1.0e20
    size = imag(p2)
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    index_factor = (colors_in_range - 1) / size
    render = real(p2)
    :
    w2 = w * w
    w = c * (1 - w2) / (1 + w2)
    ;
    ;;;;;;;;;; dist determined by rendering method ;;;;;;;;;;;;;;
    IF (render == 1) ; RINGS                                   ;;
        dist = abs(|w|-.25)                                    ;;
    ELSEIF (render == 2) ; ANGLE FUNCTION                      ;;
        a = 2 * atan(imag(w) / real(w))                        ;;
        a = a * a + c                                          ;;
        a = exp(1 - a) / a                                     ;;
        dist = abs(|w| - |a|)                                  ;;
    ELSEIF (render == 3) ; SQUARES                             ;;
        k = 0.5 + size                                         ;;
        j = 0.5 - size                                         ;;
        awr = abs(real(w)), awi = abs(imag(w))                 ;;
        IF ((awr < k) && (awr > j) && (awi < k) && (awi > j))  ;;
            awr5 = abs(awr - 0.5), awi5 = abs(awi - 0.5)       ;;
            IF (awr5 <= awi5)                                  ;;
                dist = awr5                                    ;;
            ELSE                                               ;;
                dist = awi5                                    ;;
            ENDIF                                              ;;
        ENDIF                                                  ;;
    ELSEIF (render == 4) ; SPHERES                             ;;
        IF ((d = |w + (0,-.5)|) < size)                        ;;
            dist = size - d                                    ;;
        ELSEIF ((d = |w + (0,.5)|) < size)                     ;;
            dist = size - d                                    ;;
        ELSEIF ((d = |w + (-.5,0)|) < size)                    ;;
            dist = size - d                                    ;;
        ELSEIF ((d = |w + (.5,0)|) < size)                     ;;
            dist = size - d                                    ;;
        ENDIF                                                  ;;
    ELSEIF (render == 5) ; STALKS                              ;;
        IF (abs(real(w)) <= abs(imag(w)))                      ;;
            dist = abs(real(w))                                ;;
        ELSE                                                   ;;
            dist = abs(imag(w))                                ;;
        ENDIF                                                  ;;
    ENDIF                                                      ;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    IF (dist < size && iter > 0)
        bailout = 1
        z = index_factor * dist + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 1.0e20
}

Newt1_Rings_Mset {; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Newton's solution of (w*w-1)*(w*w+c)=0
    ; Always use floating point math and outside=summ.
    ;
    ;   real(p1) = a factor controlling the size of the stalks
    ;   imag(p1) = minimum iterations
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in a range
    ;   real(p3) = value of |w| for bailout
    ;   imag(p3) = iterations count for early exit
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    c = pixel
    sc = sqrt(-c)
    am = c - 1, tam = am + am
    w = sqrt((1 - c) / 6)  ;value where F''(w) = 0
    cr = real(sc), ci = imag(sc)
    z = 0
    bailout = 0
    iter = 0
    t = 0.000001
    stalk_width = real(p1)
    range_num = 0
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    index_factor = (colors_in_range - 1) / stalk_width:
    ;
    w2 = w * w
    w = w - (w2 * w2 + am * w2 - c) / (4 * w2 * w + tam * w)
    ;
    wr = real(w), wi = imag(w)
    dist = abs(wr * wr + wi * wi - 0.25)
    IF (dist < stalk_width && iter > imag(p1))
        z = index_factor * dist + range_num * colors_in_range + 1
        bailout = 1
    ENDIF
    IF (iter > imag(p3))
        IF     (((wr-1) * (wr-1)) < t && (wi * wi) < t)
            z = 252
            bailout = 1
        ELSEIF (((wr+1) * (wr+1)) < t && (wi * wi) < t)
            z = 252
            bailout = 1
        ELSEIF (((wr-cr) * (wr-cr)) < t && ((wi-ci) * (wi-ci)) < t)
            z = 252
            bailout = 1
        ELSEIF (((wr+cr) * (wr+cr)) < t && ((wi+ci) * (wi+ci)) < t)
            z = 252
            bailout = 1
        ENDIF
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    (bailout == 0) && |w| < real(p3)
}

Newt1_Stalks_Mset {; Copyright (c) Paul W. Carlson, 1998
    ;
    ;   real(p1) = a factor controlling the size of the stalks
    ;   imag(p1) = minimum iterations
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in a range
    ;   real(p3) = value of |w| for bailout
    ;
    c = pixel
    cm1 = c - 1, tcm1 = cm1 + cm1
    w = sqrt((1 - c) / 6)
    z = bailout = iter = range_num = 0
    stalk_width = real(p1)
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    index_factor = (colors_in_range - 1) / stalk_width
    prev_mod2 = |w|
    :
    w2 = w * w
    w = w - (w2 * w2 + cm1 * w2 - c) / (4 * w2 * w + tcm1 * w)
    ;
    IF (abs(real(w)) <= abs(imag(w)))
        dist = abs(real(w))
    ELSE
        dist = abs(imag(w))
    ENDIF
    IF (dist < stalk_width && iter > imag(p1))
        z = index_factor * dist + range_num * colors_in_range + 1
        bailout = 1
    ELSEIF (abs(|w| - prev_mod2) < 0.000001)
        bailout = 1
        z = 252
    ENDIF
    prev_mod2 = |w|
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0  && |w| < real(p3)
}

Newt2_Stalks_Mset {; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Newton's solution of (w*w-c*c)*(w*w+1/(c*c))=0
    ; Always use floating point math and outside=summ.
    ;
    ;   real(p1) = a factor controlling the size of the stalks
    ;   imag(p1)   not used
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in a range
    ;   real(p3) = value of |w| for bailout
    ;   imag(p3) = iterations count for early exit
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    c = pixel
    csqd = c * c
    icsqd = 1 / csqd
    sc = sqrt(-icsqd)
    cr1 = real(c),  ci1 = imag(c)
    cr2 = real(sc), ci2 = imag(sc)
    a = csqd - icsqd
    w = sqrt(a / 6) ; value where F''(w) = 0
    z = 0
    bailout = 0
    iter = 0
    stalk_width = real(p1)
    range_num = 0
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    index_factor = (colors_in_range - 1) / stalk_width:
    ;
    w = (3 * (w^4) - a * (w^2) + 1) / (4 * (w^3) - 2 * a * w)
    ;
    wr = real(w), wi = imag(w)
    IF (abs(wr) <= abs(wi))
        min_dist = abs(wr)
    ELSE
        min_dist = abs(wi)
    ENDIF
    ;
    IF (min_dist < stalk_width && iter > 0)
        z = index_factor * min_dist + range_num * colors_in_range + 1
        bailout = 1
    ENDIF
    ;****************************************************
    ; If we're no longer looking for stalks, check if
    ; we've converged on a root.
    ;****************************************************
    IF (iter > imag(p3))
        IF     (((wr-cr1) * (wr-cr1) + (wi-ci1) * (wi-ci1)) < 0.00001)
            z = 244
            bailout = 1
        ELSEIF (((wr+cr1) * (wr+cr1) + (wi+ci1) * (wi+ci1)) < 0.00001)
            z = 245
            bailout = 1
        ELSEIF (((wr+cr2) * (wr+cr2) + (wi+ci2) * (wi+ci2)) < 0.00001)
            z = 246
            bailout = 1
        ELSEIF (((wr-cr2) * (wr-cr2) + (wi-ci2) * (wi-ci2)) < 0.00001)
            z = 247
            bailout = 1
        ENDIF
    ENDIF
    ;
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    ;
    iter = iter + 1
    z = z - iter
    ;
    (bailout == 0) && |w| < real(p3)
}

Newt3_Atan_Mset {; Original formula by Paul Carlson
                       ; with optimizations by Sylvie Gallet
    ; F(w)   = w^3 + (c - 1) * w - c
    ; F'(w)  = 3 * w^2 + c - 1
    ; F''(w) = 6 * w,  so initialize w to zero
    ;
    ; p1 contols the "layering"
    ;
    c = pixel , c1 = c - 1
    z = iter = bailout = prev_w = w = 0
    colors_in_range = 80
    colors_in_range_1 = 79
    k = 0.5 * sqrt(1 - 4 * c)
    root1 = (1,0)
    root2 = -0.5 + k
    root3 = -0.5 - k
    :
    ;
    w2 = w * w
    w = w - (w * (w2 + c1) - c) / (3 * w2 + c1)
    ;
    delta_w = w - prev_w
    IF (|delta_w| < p1)
        angle = atan(imag(delta_w) / real(delta_w))
        IF (delta_w >= 0)
            IF (imag(delta_w) < 0)
                angle = pi + angle
            ELSE
                angle = pi - angle
            ENDIF
        ELSEIF (imag(delta_w) > 0)
            angle = -angle
        ENDIF
        IF     (|w - root1| < p1)
            range_num = 0
        ELSEIF (|w - root2| < p1)
            range_num = 1
        ELSEIF (|w - root3| < p1)
            range_num = 2
        ENDIF
        bailout = 1
        z = colors_in_range_1*angle/pi+range_num*colors_in_range+1
    ENDIF
    prev_w = w
    iter = iter + 1
    z = z - iter
    bailout == 0
}

Newt5_Atan_Mset {; Copyright (c) Paul W. Carlson, 1998
    ; F(w)   = w^5 - w^4 - w * c^2 + c^2
    ; F'(w)  = 5 * w^4 - 4 * w^3 - c^2
    ; F''(w) = 20 * w^3 - 12 * w^2,  initialize w to 12/20 = 0.6
    ;
    c = pixel
    c2 = c * c
    z = iter = bailout = 0
    colors_in_range = 50
    colors_in_range_1 = 49
    root1 = (1,0)
    root2 = sqrt(c)
    root3 = -root2
    root4 = sqrt(-c)
    root5 = -root4
    prev_w = w = 0.6:
    ;
    w4 = w^4
    w = w - (w * w4 - w4 - c2 * w + c2) / (5 * w4 - 4 * (w^3) - c2)
    ;
    delta_w = w - prev_w
    IF (|delta_w| < p1)
        angle = atan(imag(delta_w) / real(delta_w))
        IF (delta_w >= 0)
            IF (imag(delta_w) < 0)
                angle = pi + angle
            ELSE
                angle = pi - angle
            ENDIF
        ELSEIF (imag(delta_w) > 0)
            angle = -angle
        ENDIF
        IF     (|w - root1| < p1)
            range_num = 0
        ELSEIF (|w - root2| < p1)
            range_num = 1
        ELSEIF (|w - root3| < p1)
            range_num = 2
        ELSEIF (|w - root4| < p1)
            range_num = 3
        ELSEIF (|w - root5| < p1)
            range_num = 4
        ENDIF
        bailout = 1
        z = colors_in_range_1 * angle/pi + range_num * colors_in_range + 1
    ENDIF
    prev_w = w
    iter = iter + 1
    z = z - iter
    bailout == 0
}

Newt5_Stalks_Mset {; Copyright (c) Paul W. Carlson, 1998
    ;
    ;   real(p1) = a factor controlling the size of the stalks
    ;   imag(p1) = minimum iterations
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in a range
    ;   real(p3) = value of |w| for bailout
    ;
    rc = real(pixel), c = pixel - 2 * rc * (rc > 0)
    a = 3 * c - 1 / c
    w = (sqrt(9 * a * a + 96) - 3 * a) / 12
    z = bailout = iter = range_num = 0
    stalk_width = real(p1)
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    index_factor = (colors_in_range - 1) / stalk_width
    prev_mod2 = |w|
    :
    w2 = w * w
    w = (3*w2*w2 + 2*a*w*w2 - 4*w2 - 3)/(4*w*w2 + 3*a*w2 - 8*w - a)
    ;
    IF (abs(real(w)) <= abs(imag(w)))
        dist = abs(real(w))
    ELSE
        dist = abs(imag(w))
    ENDIF
    IF (dist < stalk_width && iter > imag(p1))
        z = index_factor * dist + range_num * colors_in_range + 1
        bailout = 1
    ELSEIF (abs(|w| - prev_mod2) < 0.000001)
        bailout = 1
        z = 252
    ENDIF
    prev_mod2 = |w|
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0  && |w| < real(p3)
}

Newt7_Fang_Mset {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = controls element size try 0.01 to 2.0
    ; imag(p1)   not used
    ; p2       = factor, try (1,0)
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
    width = real(p1)
    c = pixel
    c2 = c * c, c1 = 1 / c
    root1 = c1
    root2 = -c1
    root3 = c
    root4 = -c
    c41 = c2 * c2+1
    w = sqrt(c41 / (6 * c2))
    z = iter = range_num = bailout = 0
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    colors_in_range_1 = colors_in_range - 1
    :
    w2 = w * w
    w = w - (c2*w2*w2 - c41*w2 + c2) / (4*c2*w2*w - 2*c41*w)
    angle = atan(imag(w) / real(w))
    v = p2 * (fn1(angle)^2 + fn2(angle)^2)
    dist = abs(|w| - |v|)
    IF (dist < width && iter > 0)
        bailout = 1
        index = colors_in_range_1 * dist / width
        z = index + range_num * colors_in_range + 1
    ELSEIF (|w - root1| < 0.00001)
        bailout = 1
        z = 252
    ELSEIF (|w - root2| < 0.00001)
        bailout = 1
        z = 252
    ELSEIF (|w - root3| < 0.00001)
        bailout = 1
        z = 252
    ELSEIF (|w - root4| < 0.00001)
        bailout = 1
        z = 252
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 10000000
}

Newt_Fang_Mset {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = controls element size try 0.5 to 16
    ; imag(p1)   not used
    ; p2       = factor, try (1,0) or (0.3,0.3)
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
    width = real(p1)
    a = fn1(pixel)
    am = a - 1
    w = sqrt(-am / 6)
    z = iter = range_num = bailout = 0
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    index_factor = (colors_in_range - 1) / width
    prev_mod2 = |w|
    :
    k = w * w, q = w * am
    w = w - (k * k + k * am - a) / (4 * w * k + q + q)
    angle = atan(imag(w) / real(w))
    v = p2 * (fn1(angle)^2 + fn2(angle)^2)
    dist = abs(|w| - |v|)
    IF (dist < width && iter > 0)
        bailout = 1
        z = index_factor * dist + range_num * colors_in_range + 1
    ELSEIF (abs(|w| - prev_mod2) < 0.000001)
        bailout = 1
        z = 252
    ENDIF
    prev_mod2 = |w|
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 10000000
}

Newt_Fnc_Julia {; Copyright (c) Paul W. Carlson, 1998
    ; p1       = Julia set coordinates
    ; real(p2) = controls element size
    ; imag(p2)   not used
    ; p3       = relaxation factor
    ;
    width = real(p2)
    w = pixel
    a = fn1(p1)
    am = a - 1
    z = iter = range_num = bailout = 0
    num_ranges = 2
    colors_in_range = 125
    colors_in_range_1 = 124
    :
    k = w * w, q = w * am
    w = w - p3 * (k * k + k * am - a) / (4 * w * k + q + q)
    dist = abs(|w| - 0.5)
    IF (dist < width && iter > 0)
        bailout = 1
        index = colors_in_range_1 * dist / width
        z = index + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0
}

Newt_Fnc_Mset {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = controls element size
    ; imag(p1)   not used
    ; real(p2) = number of color ranges
    ; imag(p2) = number of colors in a range
    ;
    width = real(p1)
    a = fn1(pixel)
    am = a - 1
    w = sqrt(-am / 6)
    z = iter = range_num = bailout = 0
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    colors_in_range_1 = colors_in_range - 1
    :
    k = w * w, q = w * am
    w = w - (k * k + k * am - a) / (4 * w * k + q + q)
    dist = abs(|w| - 0.5)
    IF (dist < width && iter > 0)
        bailout = 1
        index = colors_in_range_1 * dist / width
        z = index + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0
}

Newton_3Way {; Copyright (c) Paul W. Carlson, 1998
    ; Newton's method solution of w^k - 1 = 0
    ; Always use float=y, outside=summ
    ;
    ; real(p1) = escape circle radius squared
    ; imag(p1) = k (exponent of w)
    ; p2       = relaxation factor
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
    z = iter = range_num = bailout = 0
    w = pixel
    prev_modw2 = 1.0e20
    rad2 = real(p1)
    k = imag(p1)
    km1 = k - 1
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    colors_in_range_1 = colors_in_range - 1
    :
    w = w - p2 * ((w^k) - 1) / (k * (w^km1))
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
}

ORing_Series_Mset {; Copyright (c) Paul Carlson, 1998
    ; real(p1) = radius of large circle
    ; imag(p1) = number of iterations to skip
    ; real(p2) = number of color ranges
    ; imag(p2) = number of colors in a range
    ;
    w = z = iter = range_num = 0
    c = pixel
    r = real(p1)
    skip_iters = imag(p1)
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    s2 = sqrt(2), ro = r * s2, r2 = r * r, k = r / s2
    index_factor = (colors_in_range - 1) / k
    :
    w2 = w*w, w4 = .01*w2*w2, w8 = w4*w4, w12 = w4*w8, w16 = w4*w12
    w = w2 - w4 - w8 - w12 - w16 + c
    wr = real(w), wi = imag(w), wr2 = wr * wr, wi2 = wi * wi
    ;
    c0 = ((wr2 + wi2) < r2)                   ; large circle
    c1 = (((wr - ro) * (wr - ro) + wi2) < r2) ; circle 1
    c2 = ((wr2 + (wi + ro) * (wi + ro)) < r2) ; circle 2
    c3 = (((wr + ro) * (wr + ro) + wi2) < r2) ; circle 3
    c4 = ((wr2 + (wi - ro) * (wi - ro)) < r2) ; circle 4
    ;
    IF (c0 && c1)     ; if inside large circle and circle 1
      dist = (wr - k) * (wr - k) + wi2
    ELSEIF (c0 && c2) ; if inside large circle and circle 2
      dist = wr2 + (wi + k) * (wi + k)
    ELSEIF (c0 && c3) ; if inside large circle and circle 3
      dist = (wr + k) * (wr + k) + wi2
    ELSEIF (c0 && c4) ; if inside large circle and circle 4
      dist = wr2 + (wi - k) * (wi - k)
    ELSE
      dist = 0
    ENDIF
    IF (dist > 0 && iter > skip_iters)
        index = index_factor * sqrt(dist)
        z = index + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    dist == 0 && |w| < 1.0e20
}

pc_popcorn_jul { ; Copyright (c) Paul W. Carlson, 1998
    ; Always use float=yes
    ;
    ; real(p1) = h in popcorn formula
    ; imag(p1) = bailout value
    ; real(p2) = controls width of elements
    ; imag(p2)   not used
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
    z = iter = bailout = range_num = 0
    x = real(pixel)
    y = imag(pixel)
    h = real(p1)
    width = real(p2)
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    index_factor = (colors_in_range - 1) / width
    :
    prev_x = x
    x = x - h * sin(y + tan(3 * y))
    y = y - h * sin(prev_x + tan(3 * prev_x))
    w = x + flip(y)
    dist = abs(|w|-.25)
    IF (dist < width && iter > 0)
        bailout = 1
        z = index_factor * dist + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < imag(p1)
}

pc_series { ; Carlson Series Formula
                ; Copyright (c) Paul W. Carlson, 1997
                ; Use float=y
    z = 0, c = pixel:
    ;
    z2 = z * z
    z4 = 0.01 * z2 * z2
    z8  = z4 * z4
    z12 = z4 * z8
    z16 = z4 * z12
    z = z2 - z4 - z8 - z12 - z16 + c
    |z| < 1000
}

Petals_Barnsley1 {; Copyright (c) Paul W. Carlson, 1998
    ;   p1       = coordinates of the Julia set
    ;   real(p2) = radius of the circles - this controls
    ;              the size of the petals
    ;   imag(p2)   not Used
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    w = pixel
    c = p1
    z = range_num = iter = 0
    r = real(p2)
    ir = flip(r)
    r2 = r * r
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    index_factor = (colors_in_range - 1) / (r2 + r2)
    :
    IF (real(w) >= 0)
        w = (w - 1) * c
    ELSE
        w = (w + 1) * c
    ENDIF
    ;
    c1 = (|w -  r| < r2)
    c2 = (|w + ir| < r2)
    c3 = (|w +  r| < r2)
    c4 = (|w - ir| < r2)
    IF (c1 && c4)
        d = |w - r - ir|
    ELSEIF (c1 && c2)
        d = |w - r + ir|
    ELSEIF (c2 && c3)
        d = |w + r + ir|
    ELSEIF (c3 && c4)
        d = |w + r - ir|
    ELSE
      d = 0
    ENDIF
    IF (d > 0)
        z = index_factor * d + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    d == 0 && |w| < 1.0e20
}

Petals_Julia {; Paul Carlson
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = coordinates of the Julia set
    ;   real(p2) = radius of the circles - this controls
    ;              the size of the petals
    ;   imag(p2)   Not Used
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    w = pixel
    c = p1
    z = 0
    r = real(p2)
    r2 = r * r
    k = 0.35355339 * r    ; Don't mess with this constant
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    range_num = 0
    iter = 0:
    ;
    w = w * w + c
    ;
    wr = real(w), wi = imag(w)
    c1 = (((wr-r) * (wr-r) + wi * wi) < r2)
    c2 = ((wr * wr + (wi+r) * (wi+r)) < r2)
    c3 = (((wr+r) * (wr+r) + wi * wi) < r2)
    c4 = ((wr * wr + (wi-r) * (wi-r)) < r2)
    IF (c1 && c4)
      d = (wr-k) * (wr-k) + (wi-k) * (wi-k)
    ELSEIF (c1 && c2)
      d = (wr-k) * (wr-k) + (wi+k) * (wi+k)
    ELSEIF (c2 && c3)
      d = (wr+k) * (wr+k) + (wi+k) * (wi+k)
    ELSEIF (c3 && c4)
      d = (wr+k) * (wr+k) + (wi-k) * (wi-k)
    ELSE
      d = 0
    ENDIF
    IF (d > 0)
        index = colors_in_range * d / r2
        z = index + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    d == 0 && |w| < 1000
}

Petals_Mset {; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = radius of the circles
    ;   p2       = circle offset factor
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    w = 0
    c = pixel
    r = p1
    ro = r + r * p2
    r2 = r * r
    f = 1 - 2 * p2 - p2 * p2
    k = p2 * r + r * sqrt(f)  ;abs val of petal center (k,k)
    plsqd = 2 * r2 * f        ;petal length squared
    z = 0
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    range_num = 0
    iter = 0:
    ;****************************************************
    ; The Carlson Series (I had to name it something)  :)
    ;****************************************************
    w2 = w * w
    w4 = 0.01 * w2 * w2
    w8  = w4 * w4
    w12 = w4 * w8
    w16 = w4 * w12
    w = w2 - w4 - w8 - w12 - w16 + c
    ;****************************************************
    ; Determine which pair of overlapping circles the
    ; orbit point falls in, if any.
    ;****************************************************
    wr = real(w), wi = imag(w)
    c1 = (((wr-ro) * (wr-ro) + wi * wi) < r2)
    c2 = ((wr * wr + (wi+ro) * (wi+ro)) < r2)
    c3 = (((wr+ro) * (wr+ro) + wi * wi) < r2)
    c4 = ((wr * wr + (wi-ro) * (wi-ro)) < r2)
    IF (c1 && c4)
      d = (wr-k) * (wr-k) + (wi-k) * (wi-k)
    ELSEIF (c1 && c2)
      d = (wr-k) * (wr-k) + (wi+k) * (wi+k)
    ELSEIF (c2 && c3)
      d = (wr+k) * (wr+k) + (wi+k) * (wi+k)
    ELSEIF (c3 && c4)
      d = (wr+k) * (wr+k) + (wi-k) * (wi-k)
    ELSE
      d = 0
    ENDIF
    ;
    IF (d > 0)
        ;************************************************
        ; Set z equal to the index into the colormap.
        ;************************************************
        index = colors_in_range * d / plsqd
        z = index + range_num * colors_in_range + 1
    ENDIF
    ;
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    d == 0 && |w| < 1000
}

Phoenix_Atan {; Copyright (c) Paul W. Carlson, 1998
    ; Parameters:
    ;   p1       = coordinates of the Julia set
    ;   real(p2) = bailout value for real(w)
    ;   imag(p2)   not used
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    prev_w = y = pixel
    c = p1
    z = bailout = iter = range_num = 0
    num_ranges = real(p3)
    colors_in_range = imag(p3):
    ;****************************************************
    w = prev_w * prev_w - 0.5 * prev_w + c
    b = w * w - 0.5 * y + c
    y = w
    w = b
    ;****************************************************
    IF (abs(real(w)) > real(p2))
        delta_i = imag(w) - imag(prev_w)
        delta_r = real(w) - real(prev_w)
        angle = abs(atan(delta_i / delta_r))
        bailout = 1
        range_index = 2 * colors_in_range * angle / pi
        z = range_index + range_num * colors_in_range + 1
    ENDIF
    prev_w = w
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
     ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0
}

PokornyConesJulia {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = coordinates of the Julia set
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    prev_w = pixel
    c = p1
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    ;****************************************************
    ; In the accompanying par files, pkcones1 & 2.par,
    ; we have 2 color ranges with 125 colors in each range
    ; for a total of 250 colors. The first range starts at
    ; color 1.  Pixels will use color 255 when w < 1.0.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ;****************************************************
    num_ranges = real(p2)
    colors_in_range = imag(p2):
    ;****************************************************
    ; The equation being iterated.  This is the
    ; Pokorny equation.
    ;****************************************************
    w = 1 / (prev_w * prev_w + c)
    ;****************************************************
    ; If |w| exceeds a value of 4.0, set z to the index
    ; into the colormap and set the bailout flag.
    ;****************************************************
    IF (|w| > 4)
        ;***************************************************
        ; Compute the angle between the last 2 orbit points
        ;***************************************************
        delta_i = imag(w) - imag(prev_w)
        delta_r = real(w) - real(prev_w)
        angle = abs(atan(delta_i / delta_r))
        IF (delta_r < 0)
            angle = pi - angle
        ENDIF
        bailout = 1
        range_index = colors_in_range * angle / pi
        z = range_index + range_num * colors_in_range + 1
    ENDIF
    prev_w = w
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
    bailout == 0
}

popcorn_balls {; Copyright (c) Paul W. Carlson, 1998
    ; Always use float=y, outside=summ
    ; real(p1) = h in popcorn formula
    ; imag(p1) = bailout value
    ; real(p2) = controls size of balls
    ; imag(p2)   not used
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
    z = iter = bailout = range_num = 0
    prev_w = pixel
    x = real(pixel)
    y = imag(pixel)
    h = real(p1)
    max_r = real(p2)
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    index_factor = (colors_in_range - 1) / max_r
    :
    prev_x = x
    x = x - h * sin(y + tan(3 * y))
    y = y - h * sin(prev_x + tan(3 * prev_x))
    w = x + flip(y)
    ;
    r = |prev_w| / |w|
    prev_w = w
    IF (r < max_r && iter > 0)
        bailout = 1
        z = index_factor * r + range_num * colors_in_range + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 4
}

popcorn_jul { ; Paul Carlson, 1998
    ; Always use float=yes
    ;
    ; real(p1) = h in popcorn formula
    ; imag(p1) = bailout value
    ;
    x = real(pixel)
    y = imag(pixel)
    h = real(p1)
    :
    prev_x = x
    x = x - h * sin(y + tan(3 * y))
    y = y - h * sin(prev_x + tan(3 * prev_x))
    z = x + flip(y)
    |z| <= imag(p1)
}

R4_Mand_Pok {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = selects equation to iterate
    ;            1 = Mset of w = w * w + c (default)
    ;            2 = Julia set of w = w * w + c
    ;            3 = Julia set of w = 1 / (w * w + c)
    ; imag(p1) = a factor controlling the size of the elements
    ; p2       = Julia set coordinates
    ; real(p3) = selects color scheme
    ;            1 = 2 ranges, 125 colors per range (default)
    ;            2 = 8 ranges, 30  colors per range
    ; imag(p3) = number of iterations to skip
    ;
    z = bailout = range_num = iter = 0
    IF (real(p1) == 2 || real(p1) == 3) ; select Mset or Julia set
        w = pixel  ; Julia set
        c = p2
    ELSE
        w = 0      ; Mset
        c = pixel
    ENDIF
    k = (0.5,0.5)
    size = imag(p1)
    IF (real(p3) == 2) ; select coloring scheme
        num_ranges = 8
        colors_in_range = 30
    ELSE
        num_ranges = 2
        colors_in_range = 125
    ENDIF
    skip = imag(p3)
    index_factor = (colors_in_range - 1) / size
    :
    ;********** select equation to iterate **************
    IF (real(p1) < 3)
        w = w * w + c       ; Mandelbrot
    ELSE
        w = 1 / (w * w + c) ; Pokorny
    ENDIF
    ;****************************************************
    IF (iter > skip)
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
}

Secant_Sin {; Copyright (c) Paul W. Carlson, 1998
    ;
    ; F(w) = sin(w) - p3
    ;
    ; p1 = convergence test distance (I use 0.00000001)
    ; p2 = relaxation factor
    ; p3 = equation constant
    ;
    w0 = pixel
    w1 = flip(w0)
    z = iter = bailout = w = 0
    :
    ;
    f0 = sin(w0) - p3
    f1 = sin(w1) - p3
    w = w - p2 * f1 * (w1 - w0) / (f1 - f0)
    ;
    delta_w = w1 - w0
    IF (|delta_w| < p1)
        angle = atan(imag(delta_w) / real(delta_w))
        IF (delta_w >= 0)
            IF (imag(delta_w) < 0)
                angle = pi + angle
            ELSE
                angle = pi - angle
            ENDIF
        ELSEIF (imag(delta_w) > 0)
            angle = -angle
        ENDIF
        bailout = 1
        z = 249 * angle/pi + 1
    ENDIF
    w0 = w1;
    w1 = w,
    iter = iter + 1
    z = z - iter
    bailout == 0
}

Series_Balls_Mset {; Copyright (c) Paul W. Carlson, 1998
    ;
    ; real(p1) = a factor controlling the size of the balls
    ;
    w = z = iter = color_num = bailout = 0
    c = pixel
    dist = 1.0e20
    size = real(p1)
    num_colors = 8
    aaa = 1 / 90, bbb = 1 / 113400, ccc = 1 / 681080400
    :
    w = w * w + c, w2 = w * w, w4 = w2 * w2, w6 = w2 * w4
    w10 = w4 * w6, w14 = w4 * w10
    w = w2 - aaa * w6 + bbb * w10 - ccc * w14 + c, w = w * w + c
    ;
    IF ((d = |w + (0,-.5)|) < size)
        dist = size - d
    ELSEIF ((d = |w + (0,.5)|) < size)
        dist = size - d
    ELSEIF ((d = |w + (-.5,0)|) < size)
        dist = size - d
    ELSEIF ((d = |w + (.5,0)|) < size)
        dist = size - d
    ENDIF
    IF (dist < size && iter > 0)
        bailout = 1
        z = color_num + 1.2
    ENDIF
    color_num = color_num + 1
    IF (color_num == num_colors)
        color_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 100
}

Shields_Mset {; Copyright (c) Paul W. Carlson, 1998
    ; Parameters:
    ;   real(p1) = controls the size of the shields (0.1 to 0.8)
    ;   imag(p1) = number of iterations to skip
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;   p3       = bailout value for |w|
    ;
    c = pixel
    w = z = bailout = iter = range_num = 0
    shield_size = real(p1)
    skip_iters = imag(p1)
    num_ranges = real(p2)
    colors_in_range = imag(p2)
    k = 0.5 + shield_size
    j = 0.5 - shield_size
    index_factor = (colors_in_range - 1) / shield_size:
    ;****************************************************
    w2=w*w, w4=.01*w2*w2, w8=w4*w4, w12=w4*w8, w16=w4*w12
    w = w2 - w4 - w8 - w12 - w16 + c
    ;****************************************************
    awr = abs(real(w)), awi = abs(imag(w))
    IF ((awr < k) && (awr > j) && (awi < k) && (awi > j))
        awr5 = abs(awr - 0.5), awi5 = abs(awi - 0.5)
        IF (awr5 <= awi5)
            min_dist = awr5
        ELSE
            min_dist = awi5
        ENDIF
        IF (min_dist < shield_size && iter > skip_iters)
            z = index_factor * min_dist + range_num * colors_in_range + 1
            bailout = 1
        ENDIF
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0  && |w| < p3
}

Spir2_Trunc {; Copyright (c) Paul W. Carlson, 1998
    ;
    ;   p1       = Julia set coordinates
    ;   real(p2) = a factor controlling the width of stalks
    ;   imag(p2) = max. |w| for stalks (truncation value)
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in a range
    ;
    w = pixel
    c = p1
    z = bailout = iter = range_num = 0
    stalk_width = real(p2)
    max_wm = imag(p2)
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    index_factor = (colors_in_range - 1) / stalk_width
    :
    w = w * w - c, wr = real(w), awr = abs(wr)
    w = w - wr + awr
    awr = abs(real(w)), awi = abs(imag(w))
    IF (awr <= awi)
        dist = awr
    ELSE
        dist = awi
    ENDIF
    ;
    IF (dist < stalk_width && |w| < max_wm && iter > 1)
        z = index_factor * dist + range_num * colors_in_range + 1
        bailout = 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0  && |w| < 4
}

Spir_Ang_Fnc {; Copyright (c) Paul W. Carlson, 1998
    ;
    ;   p1       = Julia set coordinates
    ;   real(p2) = a factor controlling the width of the elememts
    ;   imag(p2) = angle multiplier
    ;   real(p3) = max. early bailout itreation
    ;   imag(p3) = flag for extra squaring
    ;
    w = pixel
    c = p1
    z = bailout = iter = range_num = 0
    width = real(p2)
    k = imag(p2)
    num_ranges = 2
    index_factor = 124 / width
    :
    w = w * w, wr = real(w), awr = abs(wr)
    w = w - wr + awr - c
    IF (imag(p3) == 1)
 w = w * w
    ENDIF
    a = k * atan(imag(w) / real(w))
    a = a * a + c
    a = fn1(1 - a) / a
    ;
    dist = abs(|w| - |a|)
    IF (dist < width && iter > 1)
 z = index_factor * dist + range_num * 125 + 1
 bailout = 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    (bailout == 0  && |w| < 4) || iter > real(p3)
}

Spir_Stalks_Jul {; Copyright (c) Paul W. Carlson, 1998
    ;
    ;   p1       = Julia set coordinates
    ;   real(p2) = a factor controlling the size of the stalks
    ;   imag(p2) = iterations to skip
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in a range
    ;
    w = pixel
    c = p1
    z = bailout = iter = range_num = 0
    stalk_width = real(p2)
    skip_iters = imag(p2)
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    index_factor = (colors_in_range - 1) / stalk_width
    :
    w = w * w - c, wr = real(w), awr = abs(wr)
    w = w - wr + awr
    ;
    IF (abs(real(w)) <= abs(imag(w)))
        dist = abs(real(w))
    ELSE
        dist = abs(imag(w))
    ENDIF
    IF (dist < stalk_width && iter > skip_iters)
        z = index_factor * dist + range_num * colors_in_range + 1
        bailout = 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0  && |w| < 4
}

Tan_Spirals {; Copyright (c) Paul W. Carlson, 1997
    width = real(p2), ratio = 124 / width, w = pixel, z = 0
    iter = 0, toggle = -1:
    ;
    w = p1 * tan(w)
    awr = abs(real(w))
    awi = abs(imag(w))
    IF (awr < awi)
        minw = awr
    ELSE
        minw = awi
    ENDIF
    bailout = (minw < width && |w| <= p3)
    toggle = -1 * toggle
    iter = iter + 1
    IF (bailout)
        z = ratio * minw + (toggle > 0) * 125 + 1
    ENDIF
    z = z - iter
    bailout == 0
}

TBalls_Newt1_Mset {; Copyright (c) Paul W. Carlson, 1998
    ;  real(p1) = ball size factor
    ;  imag(p1) = iterations to skip
    ;  real(p2) = convergence test distance
    ;
    z = iter = 0
    c = pixel
    cm1 = c - 1
    tcm1 = cm1 + cm1
    w = sqrt((1 - c) / 6)
    sc = sqrt(-c)
    ro  = 2.613125929753 * p1
    ros = 1.847759065023 * p1
    r2 = p1 * p1
    dr0 = -flip(ro)
    dr1 = -ros - flip(ros)
    dr2 = -ro
    dr3 = -ros + flip(ros)
    dr4 = -dr0
    dr5 = -dr1
    dr6 = -dr2
    dr7 = -dr3
    index_factor = 29 / p1
    bailout = 1
    :
    w2 = w * w
    w = w - (w2 * w2 + cm1 * w2 - c) / (4 * w2 * w + tcm1 * w)
    ;
    IF (|w + dr0| < r2)
        dist = |w + dr0|
        range_num = 0
    ELSEIF (|w + dr1| < r2)
        dist = |w + dr1|
        range_num = 1
    ELSEIF (|w + dr2| < r2)
        dist = |w + dr2|
        range_num = 2
    ELSEIF (|w + dr3| < r2)
        dist = |w + dr3|
        range_num = 3
    ELSEIF (|w + dr4| < r2)
        dist = |w + dr4|
        range_num = 4
    ELSEIF (|w + dr5| < r2)
        dist = |w + dr5|
        range_num = 5
    ELSEIF (|w + dr6| < r2)
        dist = |w + dr6|
        range_num = 6
    ELSEIF (|w + dr7| < r2)
        dist = |w + dr7|
        range_num = 7
    ELSEIF (|w + (-1,0)| < p2)
        bailout = 1
        z = 252
    ELSEIF (|w + (1,0)| < p2)
        bailout = 1
        z = 252
    ELSEIF (|w + sc| < p2)
        bailout = 1
        z = 252
    ELSEIF (|w - sc| < p2)
        bailout = 1
        z = 252
    ELSE
        bailout = 0
        dist = 0
    ENDIF
    IF (dist > 0 && iter > imag(p1))
        bailout = 1
        z = index_factor * sqrt(dist) + range_num * 30 + 1
    ENDIF
    range_num = range_num + 1
    IF (range_num == 8)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0  && |w| < 1.0e20
}

Trans_Atan_Mset {; Copyright (c) Paul W. Carlson, 1998
    z = prev_w = bailout = iter = range_num = 0
    c = pixel
    max_real = real(p1)
    num_ranges = real(p2)
    colors_in_range = imag(p2):
    ;****************************************************
    w = fn1(prev_w) + c
    ;****************************************************
    IF (abs(real(w)) > max_real)
        angle = abs(atan((imag(w)-imag(prev_w))/(real(w)-real(prev_w))))
        bailout = 1
        z = colors_in_range * (2 * angle / pi + range_num) + 1
    ENDIF
    prev_w = w
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0
}

Truncated_Stalks {; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = if both real(p1) and imag(p1) equal 0 do Mset,
    ;              otherwise do Julia set
    ;   real(p2) = a factor controlling the width of the stalks
    ;   imag(p2) = a factor controlling the length of the stalks
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
    IF (real(p1) == 0 && imag(p1) == 0)
        w = 0
        c = pixel
    ELSE
        w = pixel
        c = p1
    ENDIF
    z = 0
    bailout = 0
    iter = 0
    range_num = 0
    ;****************************************************
    ; In the accompanying par files, trunspr1 and 2.par,
    ; we have 2 color ranges with 125 colors in each range
    ; for a total of 250 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| < 1000.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    ;****************************************************
    ; Real(p2) controls the width of the stalks.
    ; Imag(p2) controls the length of the stalks.
    ;****************************************************
    stalk_width = real(p2)
    stalk_length = imag(p2)
    index_factor = (colors_in_range - 1) / stalk_width:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be expressed in terms of a complex variable
    ; and a complex constant will work with this method.
    ;****************************************************
    w = c * (1 - w) * (1 + w) / (1 + w * w)
    ;****************************************************
    ; Find which axis the orbit point is closest to.
    ;****************************************************
    IF (abs(real(w)) <= abs(imag(w)))
        min_dist_to_axis = abs(real(w))
    ELSE
        min_dist_to_axis = abs(imag(w))
    ENDIF
    ;****************************************************
    ; If the orbit point is within a stalk width of an axis,
    ; and the value of |w| is less than the stalk length, then
    ; set z to the index into the colormap and set the bailout flag.
    ;****************************************************
    IF (min_dist_to_axis < stalk_width && |w| < stalk_length && iter > 0)
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
    bailout == 0  && |w| < 1000
}

trydecomp { ; Paul W. Carlson
    ; Bailout occurs when the absolute value of w exceeds real(p1).
    ; The spacing of the "field lines" is highly sensitive to
    ; this value.  Here absolute value means sqrt(|w|).
    ; A value of 10 will reproduce the pictures for the Mset and
    ; Julia sets in the book _The Beauty of Fractals_.
    w = 0
    c = pixel
    color = 0
    iter = 0
    bailout = 0:
    ;
    w = w * w + c
    IF (sqrt(|w|) > p1)
        bailout = 1
        IF (imag(w) > 0)
            color = 1;
        ELSE
            color = 2;
        ENDIF
    ENDIF
    iter = iter + 1
    z = color - iter
    bailout == 0
}

TwoBallsJulia {; Copyright (c) Paul Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1 = Julia set coordinates
    ;   real(p2) = a factor controlling the size of the balls
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
    num_ranges = 2
    colors_in_range = 125
    ;****************************************************
    ; Parameter real(p2) controls the size of the balls.
    ; These values will usually be in the range 0.001 to 0.5
    ;****************************************************
    ball_size = real(p2)
    index_factor = (colors_in_range - 1) / ball_size:
    ;****************************************************
    ; The equation being iterated.  This equation is from
    ; page 465 of "The Fractal Geometry of Nature."
    ;****************************************************
    w = c * (w - 1 / w)
    ;****************************************************
    ; Check if point falls in one of the orbit traps.  If
    ; it does, compute "delta" and set bailout flag.
    ;****************************************************
    wr = real(w), wi = imag(w)
    IF ((d = wr * wr + (wi - .5) * (wi - .5)) < ball_size)
        bailout = 1
        delta = ball_size - d
    ELSEIF ((d = wr * wr + (wi + .5) * (wi + .5)) < ball_size)
        bailout = 1
        delta = ball_size - d
    ELSEIF ((d = wi * wi + (wr - .5) * (wr - .5)) < ball_size)
        bailout = 1
        delta = ball_size - d
    ELSEIF ((d = wi * wi + (wr + .5) * (wr + .5)) < ball_size)
        bailout = 1
        delta = ball_size - d
    ENDIF
    ;
    IF (bailout)
        ;************************************************
        ; Set color range depending on sign of imag(w)
        ;************************************************
        IF (wi >= 0)
            range_num = 1
        ELSE
            range_num = 0
        ENDIF
        ;************************************************
        ; Set z to the index into the colormap.
        ;************************************************
        z = index_factor * delta +  range_num * colors_in_range + 1
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
    bailout == 0
}

Two_Ellipse_Mset {; Copyright (c) Paul W. Carlson, 1998
    ; Parameters:
    ;   real(p1) = a factor controlling the width of the curves
    ;   imag(p1) = iterations to skip
    ;   real(p2) = major axis, ellipse 1
    ;   imag(p2) = minor axis, ellipse 1
    ;   real(p3) = major axis, ellipse 2
    ;   imag(p3) = minor axis, ellipse 2
    ;
    w = z = bailout = iter = 0
    c = pixel
    width = real(p1)
    skip_iters = imag(p1)
    a1 = real(p2),  b1 = imag(p2)
    a2 = real(p3),  b2 = imag(p3)
    i = (0,1)
    index_factor = 124 / width:
    ;
    w = w * w + c  ; classic Mandelbrot set
    ;
    ang = atan(imag(w) / real(w))
    ell1 = a1 * cos(ang) + i * b1 * sin(ang)
    dist1 = abs(cabs(w) - cabs(ell1))
    ell2 = b2 * cos(ang) + i * a2 * sin(ang)
    dist2 = abs(cabs(w) - cabs(ell2))
    IF (dist1 < dist2)
        range_num = 0
        distance = dist1
    ELSE
        range_num = 1
        distance = dist2
    ENDIF
    IF (distance < width && iter > skip_iters)
        z = index_factor * distance + range_num * 125 + 1
        bailout = 1
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0  && |w| < 1000
}

TwoPieces {; Copyright (c) Paul W. Carlson, 1998
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = Julia set coordinates
    ;   real(p2) = the iteration count at which the value
    ;              of w is saved for periodicity checking
    ; Note that the equation variable is w, not z.
    ;****************************************************
    w = pixel
    c = p1
    save_iter = real(p2)
    iter = 0
    bailout = 0
    color = 0:
    ;****************************************************
    ; The equation being iterated.
    ;****************************************************
    w = c * (w - 1 / w)
    ;****************************************************
    ; if iter = save iter, save real(w) and imag(w)
    ;****************************************************
    IF (iter == save_iter)
        sr = real(w)
        si = imag(w)
    ENDIF
    ;****************************************************
    ; check if orbit is reapeating (periodicity check)
    ;****************************************************
    IF (iter > save_iter)
        IF (abs(real(w) - sr) < 0.00001 && abs(imag(w) - si) < 0.00001)
            ;****************************************************
            ; if it is, set color based on if imag(w) is + or -
            ; and set bailout flag.
            ;****************************************************
            bailout = 1
            IF (imag(w) >= 0)
                color = 1
            ELSE
                color = 2
            ENDIF
        ENDIF
    ENDIF
    ;****************************************************
    ; Since we are using outside=summ, z is equal to the
    ; color number minus the number of iterations.
    ;****************************************************
    iter = iter + 1
    z = color - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
    bailout == 0
}

Xmas3 {; Copyright (c) Paul W. Carlson, 1997
    x=0, c=pixel, iter=0, toggle=-1:
    x=x*x+c
    xr=real(x), xi=imag(x)
    d=abs((xr-.5)*(xr-.5)+(xi-.5)*(xi-.5)-.1)
    toggle=-1*toggle, iter=iter+1
    z=(620*d+(toggle>0)*125+1)*(d<.2)-iter
    (d>=.2) && |x|<100
}

Xmas4 {; Copyright (c) Paul W. Carlson, 1997
    x=pixel, c=(-0.767633083,0.095353559), g=0.01, iter=0:
    x=x*x+c
    xr=real(x), xi=imag(x)
    aa=xr*xr+(xi-.5)*(xi-.5)
    bb=xr*xr+(xi+.5)*(xi+.5)
    cc=(xr-.5)*(xr-.5)+xi*xi
    dd=(xr+.5)*(xr+.5)+xi*xi
    test=(iter>2)*((aa<g)*(g-aa)+(bb<g)*(g-bb)+(cc<g)*(g-cc)+(dd<g)*(g-dd))
    iter=iter+1
    z=(24900*test+1)*(|test|>0)-iter
    |test|<=0 && |x|<10000
}

Xmas4g {; Copyright (c) Paul W. Carlson, 1997
    x=pixel, c=p1, g=0.01, iter=0:
    x=x*x+c
    xr=real(x), xi=imag(x)
    aa=xr*xr+(xi-.5)*(xi-.5)
    bb=xr*xr+(xi+.5)*(xi+.5)
    cc=(xr-.5)*(xr-.5)+xi*xi
    dd=(xr+.5)*(xr+.5)+xi*xi
    test=(iter>2)*((aa<g)*(g-aa)+(bb<g)*(g-bb)+(cc<g)*(g-cc)+(dd<g)*(g-dd))
    iter=iter+1
    z=(24900*test+1)*(|test|>0)-iter
    |test|<=0 && |x|<10000
}

Zf_Ang {; Copyright (c) Paul W. Carlson, 1998
    ; p1       = Julia set coordinates
    ; real(p2) = controls size of the elements
    ; imag(p2) = number of iterations to skip
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
    z = k = iter = range_num = bailout = 0
    w = pixel
    c = p1
    prev_modw2 = 1.0e20
    size = real(p2)
    skip_iters = imag(p2)
    num_ranges = real(p3)
    colors_in_range = imag(p3)
    factor = (colors_in_range - 1) / size
    :
    w = c * (w - 1 / w)
    a = 2 * atan(imag(w) / real(w))
    a = a * a + c
    a = fn1(1 - a) / a
    ;
    dist = abs(|w| - |a|)
    IF (dist < size)
        bailout = 1
        IF (iter > skip_iters)
            k = 1
        ENDIF
        z = (factor * dist + range_num * colors_in_range + 1) * k
    ENDIF
    range_num = range_num + 1
    IF (range_num == num_ranges)
        range_num = 0
    ENDIF
    iter = iter + 1
    z = z - iter
    bailout == 0 && |w| < 1.0e20
}


