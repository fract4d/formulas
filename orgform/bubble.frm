bubbleboth_jul { ; Kerry Mitchell 18jan98
        ;
        ; color Julia sets with small bubbles
        ; filled with swirls (combination of rays and circles)
        ;
        ; use outside=iter, decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (at least 4)
        ; imag(p2) = radius of bubble (try ~ .1)
        ; real(p3) = amount of circles (0 for only rays, try 0.5)
        ; imag(p3) = amount of rays (0 for only circles, try 0.5)
        ; zc is the variable used for iteration, z for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), minr=imag(p2), scale=2*pi/minr
        minset=0, iter=1, rzc=cabs(zc), minzc=zc
        weight=real(p3)+imag(p3)
        weightc=real(p3)/weight, weightr=imag(p3)/weight
        ;
        ; initial check:  see if pixel magnitude falls within threshold
        ;   if so, set minset flag, update minimum to current magnitude
        ;
        if (rzc<minr)
          minr=rzc, minzc=zc, minset=1
          end if
        :
        iter=iter+1, zc=sqr(zc)+c, rzc=cabs(zc)
        ;
        ; iteration check:  see if iterate falls within threshold
        ;   if so, set minset flag, update minimum to current magnitude
        ;
        if (rzc<minr)
          minr=rzc, minzc=zc, minset=1
          end if
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   scale minr to find decomp angle for circles
        ;   take polar angle from minzc to ray decomp angle
        ;   final angle is weighted average of ray and circle angles
        ;   if a new minimum was never set (minset=0),
        ;   set z=0 (color 0 under decomp)
        ;
        if ((rzc>maxr)||(iter==maxit))
          iter=-1
          anglec=scale*minr, angler=imag(log(minzc))
          angle=weightc*anglec+weightr*angler
          z=(cos(angle)+flip(sin(angle)))*minset
          end if
        iter > 0
        }
        
bubbleboth_man { ; Kerry Mitchell 18jan98
        ;
        ; color Mandelbrot set with small bubbles
        ; filled with swirls (combination of rays and circles)
        ;
        ; use outside=iter, decomp=256
        ; real(p1) = bailout (at least 4)
        ; imag(p1) = radius of bubble (try ~ .1)
        ; real(p2) = amount of circles (0 for only rays, try 0.5)
        ; imag(p2) = amount of rays (0 for only circles, try 0.5)
        ; zc is the variable used for iteration, z for coloring
        ;
        zc=pixel, c=pixel, maxr=real(p1), minr=imag(p1), scale=2*pi/minr
        minset=0, iter=1, rzc=cabs(zc), minzc=zc
        weight=real(p2)+imag(p2)
        weightc=real(p2)/weight, weightr=imag(p2)/weight
        ;
        ; initial check:  see if pixel magnitude falls within threshold
        ;   if so, set minset flag, update minimum to current magnitude
        ;
        if (rzc<minr)
          minr=rzc, minzc=zc, minset=1
          end if
        :
        iter=iter+1, zc=sqr(zc)+c, rzc=cabs(zc)
        ;
        ; iteration check:  see if iterate falls within threshold
        ;   if so, set minset flag, update minimum to current magnitude
        ;
        if (rzc<minr)
          minr=rzc, minzc=zc, minset=1
          end if
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   scale minr to find decomp angle for circles
        ;   take polar angle from minzc to ray decomp angle
        ;   final angle is weighted average of ray and circle angles
        ;   if a new minimum was never set (minset=0),
        ;   set z=0 (color 0 under decomp)
        ;
        if ((rzc>maxr)||(iter==maxit))
          iter=-1
          anglec=scale*minr, angler=imag(log(minzc))
          angle=weightc*anglec+weightr*angler
          z=(cos(angle)+flip(sin(angle)))*minset
          end if
        iter > 0
        }
        
