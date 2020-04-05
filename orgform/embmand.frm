{       ; Ron Barnett, Dec 1998
        ; Continuous emboss, based on par of Kerry Mitchell
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
        iter3 = 1, done = 0
        slope = real(p3)
        ;
        ; set up elliptical parameters
        ;
        c = pixel, r = 4*cabs(c), r = sqrt(1+r), bail = |(1+r)/2|
        a = real(p1), b = imag(p1)
        ;
        ; first point is offset from pixel by lightangle
        ; second point is offset from pixel by (lightangle+180 deg)
        ;
        size = real(p2), lightangle = imag(p2)*pi/180
        dr = size*(cos(lightangle)+flip(sin(lightangle)))
        c1 = pixel-dr, iter1=0, z1=0
        c2 = pixel+dr, iter2=0, z2=0
        ;
        ; 4 variables with different angles for 4 different colors
        ;
        black = @(1,0), white = @(-1,0), gray = @(0,1), other = @(0,-1), z = z:
        iter3 = iter3 + 1
        ;
        ; iterate first point, if it hasn't already escaped
        ;
        if (iter1 == 0)
          z1 = sqr(z1)+c1, r = |real(z1)*a|+|imag(z1)*b|
          ;
          ; set bailout counter if first point escaped
          ;
          if (r > bail)
            iter1 = iter3
          endif
        endif
        ;
        ; iterate second point, if it hasn't already escaped
        ;
        if (iter2 == 0)
          z2 = sqr(z2)+c2, r = |real(z2)*a|+|imag(z2)*b|
          ;
          ; set bailout counter if second point escaped
          ;
          if (r > bail)
            iter2=iter3
          endif
        endif
        ;
        ; if both points escaped, perform "embossing"
        ;
        if ((iter1 > 0) && (iter2 > 0))
          done = 1
          ;
          ; color "black" if first point escaped first
          ;
          if (iter1 < iter2)
            z = black + z1*slope
          ;
          ; color "white" if second point escaped first
          ;
          elseif (iter2 < iter1)
            z = white + z2*slope
          ;
          ; color "gray" if both points escaped at same time
          ;
          else
            z = gray + 0.5*slope*(z1 + z2)
          endif
        endif
        ;
        ; otherwise, assign z to "other"
        ;
        if (iter3 == maxit)
          done = 1
          z = (0.2*other + slope*pixel)/(slope+0.1) 
        endif     
        ;
        ; continue if nothing happened
        ;
        done = done
        done == 0
        }
