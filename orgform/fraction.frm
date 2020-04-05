xlty_man { ; Kerry Mitchell 03feb98
        ;
        ; colors by how often x < y, where x & y are the
        ; real & imaginary parts of the fractional part of
        ; the iterate of the Mandelbrot set
        ;
        ; real(p1) = bailout (try 4)
        ; imag(p1) = color speed (try 1)
        ; p2 = rounding factor (try 1)
        ; fn1 = rounding function, either round() or trunc()
        ; fn2 = arbitrary function of iterate (try log())
        ; calculation uses variable zc, z used for coloring
        ; use decomp=256
        ;
        zc=0, c=pixel, iter=2, twopi=2*pi, count=0
        maxr=real(p1), speed=imag(p1)*twopi*255/256
        roundfac=p2:
        ;
        ; adjust iterate through arbitrary function and find
        ;   fractional part
        ;
        temp=fn2(zc)/roundfac, frac=roundfac*(temp-fn1(temp))
        ;
        ; update counter if conditions are right
        ;
        if (real(frac)<imag(frac))
          count=count+1
          end if
        ;
        ; bailout
        ;   scale counter into decomposition angle
        ;   set "iteration done" flag (iter = -1)
        ;
        if ((|zc|>maxr)||(iter==maxit))
          angle=speed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
        else
          iter=iter+1
          zc=sqr(zc)+c
        endif
        iter>0
        }

xlty_jul { ; Kerry Mitchell 03feb98
        ;
        ; colors by how often x < y, where x & y are the
        ; real & imaginary parts of the fractional part of
        ; the iterate of the Julia set
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = color speed (try 1)
        ; p3 = rounding factor (try 1)
        ; fn1 = rounding function, either round() or trunc()
        ; fn2 = arbitrary function of iterate (try log())
        ; calculation uses variable zc, z used for coloring
        ; use decomp=256
        ;
        zc=pixel, c=p1, iter=2, twopi=2*pi, count=0
        maxr=real(p2), speed=imag(p2)*twopi*255/256
        roundfac=p3:
        ;
        ; adjust iterate through arbitrary function and find
        ;   fractional part
        ;
        temp=fn2(zc)/roundfac, frac=roundfac*(temp-fn1(temp))
        ;
        ; update counter if conditions are right
        ;
        if (real(frac)<imag(frac))
          count=count+1
          end if
        ;
        ; bailout
        ;   scale counter into decomposition angle
        ;   set "iteration done" flag (iter = -1)
        ;
        if ((|zc|>maxr)||(iter==maxit))
          angle=speed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
        else
          iter=iter+1
          zc=sqr(zc)+c
        endif
        iter>0
        }

heart_man { ; Kerry Mitchell 03feb98
        ;
        ; colors by how often r < t, where r & t are the
        ; magnitude & polar angle of the fractional part of
        ; the iterate of the Mandelbrot set
        ; fills fractal with little hearts
        ;
        ; real(p1) = bailout (try 4)
        ; imag(p1) = color speed (try 1)
        ; p2 = rounding factor (try 1)
        ; fn1 = rounding function, either round() or trunc()
        ; fn2 = arbitrary function of iterate (try log())
        ; calculation uses variable zc, z used for coloring
        ; use decomp=256
        ;
        zc=0, c=pixel, iter=2, twopi=2*pi, count=0
        maxr=real(p1), speed=imag(p1)*twopi*255/256
        roundfac=p2:
        ;
        ; adjust iterate through arbitrary function and find
        ;   fractional part
        ;
        temp=fn2(zc)/roundfac, frac=temp-fn1(temp)
        r=cabs(frac)
        t=cabs(imag(log(frac))/twopi)
        ;
        ; update counter if conditions are right
        ;
        if (r<t)
          count=count+1
          end if
        ;
        ; bailout
        ;   scale counter into decomposition angle
        ;   set "iteration done" flag (iter = -1)
        ;
        if ((|zc|>maxr)||(iter==maxit))
          angle=speed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
        else
          iter=iter+1
          zc=sqr(zc)+c
        endif
        iter>0
        }

heart_jul { ; Kerry Mitchell 03feb98
        ;
        ; colors by how often r < t, where r & t are the
        ; magnitude & polar angle of the fractional part of
        ; the iterate of the Julia set
        ; fills fractal with little hearts
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = color speed (try 1)
        ; p3 = rounding factor (try 1)
        ; fn1 = rounding function, either round() or trunc()
        ; fn2 = arbitrary function of iterate (try log())
        ; calculation uses variable zc, z used for coloring
        ; use decomp=256
        ;
        zc=pixel, c=p1, iter=2, twopi=2*pi, count=0
        maxr=real(p2), speed=imag(p2)*twopi*255/256
        roundfac=p3:
        ;
        ; adjust iterate through arbitrary function and find
        ;   fractional part
        ;
        temp=fn2(zc)/roundfac, frac=temp-fn1(temp)
        r=cabs(frac)
        t=cabs(imag(log(frac))/twopi)
        ;
        ; update counter if conditions are right
        ;
        if (r<t)
          count=count+1
          end if
        ;
        ; bailout
        ;   scale counter into decomposition angle
        ;   set "iteration done" flag (iter = -1)
        ;
        if ((|zc|>maxr)||(iter==maxit))
          angle=speed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
        else
          iter=iter+1
          zc=sqr(zc)+c
        endif
        iter>0
        }

