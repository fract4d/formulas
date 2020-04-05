root_jul { ; Kerry Mitchell 11feb98
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e30)
        ; imag(p2) = unused
        ; use decomp=something (only 2 colors are used)
        zc=pixel, c=p1, iter=1, maxr=real(p2):
        iter=iter+1, z2=sqr(zc), znew=z2+c
        if ((|znew|>maxr)||(iter==maxit))
          w=sqrt(z2), r1=|zc-w|, r2=|zc+w|
          z=2*(r1<r2)-1
          iter=-1
        else
          zc=znew
        end if
        iter>0
        ;
        ; colors Julia set by whether or not previous iterate
        ;   is the principal root of the current z^2.
        ;
        }

root_man { ; Kerry Mitchell 11feb98
        ; real(p1) = bailout (try 1e30)
        ; imag(p1) = unused
        ; use decomp=something (only 2 colors are used)
        zc=0, c=pixel, iter=1, maxr=real(p1):
        iter=iter+1, z2=sqr(zc), znew=z2+c
        if ((|znew|>maxr)||(iter==maxit))
          w=sqrt(z2), r1=|zc-w|, r2=|zc+w|
          z=2*(r1<r2)-1
          iter=-1
        else
          zc=znew
        end if
        iter>0
        ;
        ; colors Mandelbrot set by whether or not previous
        ;   iterate is the principal root of the current z^2.
        ;
        }

rootcount_man { ; Kerry Mitchell 11feb98
        ; real(p1) = bailout (try 1e30)
        ; imag(p1) = unused
        ; real(p2) = inner coloring speed (0 for outside only)
        ; imag(p2) = outer coloring speed (0 for inside only)
        ; use decomp=256
        zc=0, c=pixel, iter=1, maxr=real(p1), count=0
        inspeed=real(p2)*pi*255/128
        outspeed=imag(p2)*pi*255/128:
        iter=iter+1, z2=sqr(zc), w=sqrt(z2),
        r1=|zc-w|, r2=|zc+w|, zc=z2+c
        if (r1<r2)
          count=count+1
          end if
        if (iter==maxit)
          angle=inspeed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        if (|zc|>maxr)
          angle=outspeed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        iter>0
        ;
        ; Colors Mandelbrot set by how often previous iterate
        ; is the principal root of the current z^2.  The
        ; count of principal root times is divided by the
        ; total number of iterations, and scaled into an
        ; angle for decomposition coloring.  Either inside
        ; or outside can be switched off by setting the
        ; appropriate coloring speed parameter to 0.
        ;
        }

rootcount_jul { ; Kerry Mitchell 11feb98
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e30)
        ; imag(p2) = unused
        ; real(p3) = inner coloring speed (0 for outside only)
        ; imag(p3) = outer coloring speed (0 for inside only)
        ; use decomp=256
        zc=pixel, c=p1, iter=1, maxr=real(p2), count=0
        inspeed=real(p3)*pi*255/128
        outspeed=imag(p3)*pi*255/128:
        iter=iter+1, z2=sqr(zc), w=sqrt(z2),
        r1=|zc-w|, r2=|zc+w|, zc=z2+c
        if (r1<r2)
          count=count+1
          end if
        if (iter==maxit)
          angle=inspeed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        if (|zc|>maxr)
          angle=outspeed*count/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        iter>0
        ;
        ; Colors Julia set by how often previous iterate
        ; is the principal root of the current z^2.  The
        ; count of principal root times is divided by the
        ; total number of iterations, and scaled into an
        ; angle for decomposition coloring.  Either inside
        ; or outside can be switched off by setting the
        ; appropriate coloring speed parameter to 0.
        ;
        }

