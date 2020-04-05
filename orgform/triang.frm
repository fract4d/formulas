triang_man { ; Kerry Mitchell 11feb98
        ; real(p1) = bailout (try 1e12)
        ; imag(p1) = unused
        ; real(p2) = inner coloring speed (0 for outer only)
        ; imag(p2) = outer coloring speed (0 for inner only)
        ; use decomp=256
        zc=pixel, c=pixel, rc=cabs(c), iter=1
        r2zc=|zc|, maxr=real(p1)
        inspeed=real(p2)*pi*255/128
        outspeed=imag(p2)*pi*255/128:
        iter=iter+1, z2=sqr(zc)+c, rz2=cabs(z2),
        fac=abs(r2zc-rc), q=(rz2-fac)/(r2zc+rc-fac)
        zc=z2, r2zc=|zc|
        if (iter==maxit)
          angle=inspeed*q
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        if (r2zc>maxr)
          angle=outspeed*q
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        iter>0
        ;
        ; Colors Mandelbrot set by magnitude of last iterate
        ; within a range determined by the triangle inequality.
        ; Take location in range and scale into an angle for
        ; decomp coloring.  Decouple inside from outside by
        ; setting appropriate coloring speed to 0.
        ;
        }

triang_jul { ; Kerry Mitchell 11feb98
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; imag(p2) = unused
        ; real(p3) = inner coloring speed (0 for outer only)
        ; imag(p3) = outer coloring speed (0 for inner only)
        ; use decomp=256
        zc=pixel, c=p1, rc=cabs(c), iter=1
        r2zc=|zc|, maxr=real(p2)
        inspeed=real(p3)*pi*255/128
        outspeed=imag(p3)*pi*255/128:
        iter=iter+1, z2=sqr(zc)+c, rz2=cabs(z2),
        fac=abs(r2zc-rc), q=(rz2-fac)/(r2zc+rc-fac)
        zc=z2, r2zc=|zc|
        if (iter==maxit)
          angle=inspeed*q
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        if (r2zc>maxr)
          angle=outspeed*q
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        iter>0
        ;
        ; Colors Julia set by magnitude of last iterate
        ; within a range determined by the triangle inequality.
        ; Take location in range and scale into an angle for
        ; decomp coloring.  Decouple inside from outside by
        ; setting appropriate coloring speed to 0.
        ;
        }

triangcount_man { ; Kerry Mitchell 11feb98
        ; real(p1) = bailout (try 1e12)
        ; imag(p1) = unused
        ; real(p2) = inner coloring speed (0 for outer only)
        ; imag(p2) = outer coloring speed (0 for inner only)
        ; use decomp=256
        zc=pixel, c=pixel, rc=cabs(c), iter=1
        r2zc=|zc|, maxr=real(p1), count=0
        inspeed=real(p2)*pi*255/128
        outspeed=imag(p2)*pi*255/128:
        iter=iter+1, z2=sqr(zc)+c, rz2=cabs(z2),
        fac=abs(r2zc-rc), q=(rz2-fac)/(r2zc+rc-fac)
        count=count+q, zc=z2, r2zc=|zc|
        if (iter==maxit)
          angle=inspeed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        if (r2zc>maxr)
          angle=outspeed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        iter>0
        ;
        ; Colors Mandelbrot set by average value of magnitude
        ; within a range determined by the triangle inequality.
        ; Scale average into an angle for decomp coloring.
        ; Decouple inside from outside by setting appropriate
        ; coloring speed to 0.
        ;
        }

triangcount_jul { ; Kerry Mitchell 11feb98
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; imag(p2) = unused
        ; real(p3) = inner coloring speed (0 for outer only)
        ; imag(p3) = outer coloring speed (0 for inner only)
        ; use decomp=256
        zc=pixel, c=p1, rc=cabs(c), iter=1
        r2zc=|zc|, maxr=real(p2), count=0
        inspeed=real(p3)*pi*255/128
        outspeed=imag(p3)*pi*255/128:
        iter=iter+1, z2=sqr(zc)+c, rz2=cabs(z2),
        fac=abs(r2zc-rc), q=(rz2-fac)/(r2zc+rc-fac)
        count=count+q, zc=z2, r2zc=|zc|
        if (iter==maxit)
          angle=inspeed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        if (r2zc>maxr)
          angle=outspeed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
          endif
        iter>0
        ;
        ; Colors Julia set by average value of magnitude
        ; within a range determined by the triangle inequality.
        ; Scale average into an angle for decomp coloring.
        ; Decouple inside from outside by setting appropriate
        ; coloring speed to 0.
        ;
        }

