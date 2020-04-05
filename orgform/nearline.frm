nearline-theta_jul { ; Kerry Mitchell 18jan98
        ;
        ; color Julia sets with nearest approach to a given line
        ; line through origin has angle theta to x-axis
        ;
        ; use outside=iter, decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (large--try 1e12)
        ; imag(p2) = angle of line, in degrees (try 45)
        ; zc is the variable used for iteration, z for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), minr=maxr, iter=1
        theta=imag(p2)*pi/180, ct=cos(theta), st=sin(theta):
        ;
        ; iteration
        ;   find distance to line, r
        ;   if r < minimum, update minimum to r
        ;
        iter=iter+1, zc=sqr(zc)+c, rzc=|zc|
        r=|ct*imag(zc)-st*real(zc)|
        if (r<minr)
          minr=r
          end if
        ;
        ; bailout--take log of minimum distance as decomp angle
        ;
        if ((rzc>maxr)||(iter==maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

nearline01_jul { ; Kerry Mitchell 18jan98
        ;
        ; color Julia sets with nearest approach to a given line
        ; line given by parameter c (first iterate of 0)
        ; so color lines pass through 0 on first iteration
        ;
        ; use outside=iter, decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (large--try 1e12)
        ; zc is the variable used for iteration, z for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), minr=maxr
        ct=imag(c), st=real(c), iter=1:
        ;
        ; iteration
        ;   find distance to line, r
        ;   if r < minimum, update minimum to r
        ;
        iter=iter+1, zc=sqr(zc)+c, rzc=|zc|
        r=|ct*real(zc)-st*imag(zc)|
        if (r<minr)
          minr=r
          end if
        ;
        ; bailout--take log of minimum distance as decomp angle
        ;
        if ((rzc>maxr)||(iter==maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

nearline02_jul { ; Kerry Mitchell 18jan98
        ;
        ; color Julia sets with nearest approach to a given line
        ; line given by sqr(c)+c (second iterate of 0)
        ; so color lines pass through 0 on second iteration
        ;
        ; use outside=iter, decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (large--try 1e12)
        ; zc is the variable used for iteration, z for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), minr=maxr
        zero2=sqr(c)+c, ct=imag(zero2), st=real(zero2), iter=1:
        ;
        ; iteration
        ;   find distance to line, r
        ;   if r < minimum, update minimum to r
        ;
        iter=iter+1, zc=sqr(zc)+c, rzc=|zc|
        r=|ct*real(zc)-st*imag(zc)|
        if (r<minr)
          minr=r
          end if
        ;
        ; bailout--take log of minimum distance as decomp angle
        ;
        if ((rzc>maxr)||(iter==maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

nearline03_jul { ; Kerry Mitchell 18jan98
        ;
        ; color Julia sets with nearest approach to a given line
        ; line given by sqr(sqr(c)+c)+c (third iterate of 0)
        ; so color lines pass through 0 on third iteration
        ;
        ; use outside=iter, decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (large--try 1e12)
        ; zc is the variable used for iteration, z for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), minr=maxr, iter=1
        zero3=c, zero3=sqr(zero3)+c, zero3=sqr(zero3)+c
        ct=imag(zero3), st=real(zero3):
        ;
        ; iteration
        ;   find distance to line, r
        ;   if r < minimum, update minimum to r
        ;
        iter=iter+1, zc=sqr(zc)+c, rzc=|zc|
        r=|ct*real(zc)-st*imag(zc)|
        if (r<minr)
          minr=r
          end if
        ;
        ; bailout--take log of minimum distance as decomp angle
        ;
        if ((rzc>maxr)||(iter==maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

nearline-theta_man { ; Kerry Mitchell 18jan98
        ;
        ; color Mandelbrot set with nearest approach to a given line
        ; line through origin has angle theta to x-axis
        ;
        ; use outside=iter, decomp=256
        ; real(p1) = bailout (large--try 1e12)
        ; imag(p1) = angle of line, in degrees (try 45)
        ; zc is the variable used for iteration, z for coloring
        ;
        zc=0, c=pixel, maxr=real(p1), minr=maxr, iter=1
        theta=imag(p1)*pi/180, ct=cos(theta), st=sin(theta):
        ;
        ; iteration
        ;   find distance to line, r
        ;   if r < minimum, update minimum to r
        ;
        iter=iter+1, zc=sqr(zc)+c, rzc=|zc|
        r=|ct*imag(zc)-st*real(zc)|
        if (r<minr)
          minr=r
          end if
        ;
        ; bailout--take log of minimum distance as decomp angle
        ;
        if ((rzc>maxr)||(iter==maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

