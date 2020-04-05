gaussintr_jul { ; Kerry Mitchell 20jan98
        ;
        ; Gaussian integer coloring of Julia sets
        ;   color by magnitude of nearest gaussian integer
        ;   inside and outside handled the same way
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; variable zc used for calculation; coloring done with z
        ;
        zc=pixel, c=p1, iter=1, rmax=real(p2), rmin=1:
        ;
        ; iteration
        ;   zr = gaussian integer
        ;   r = distance to zr
        ;   zmin = integer with minimum distance
        ;
        iter=iter+1, zc=sqr(zc)+c, zr=round(zc), r=|zc-zr|,
        if (r<rmin)
          rmin=r, zmin=zr
          end if
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of magnitude of nearest gaussian integer as
        ;     decomposition angle
        ;
        if ((|zc|>rmax)||(iter==maxit))
          iter=-1
          angle=log(cabs(zmin)+1)
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

gaussintt_jul { ; Kerry Mitchell 20jan98
        ;
        ; Gaussian integer coloring of Mandelbrot set
        ;   color by polar angle of nearest gaussian integer
        ;   inside and outside handled the same way
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; variable zc used for calculation; coloring done with z
        ;
        zc=pixel, c=p1, rmax=real(p2), rmin=1, iter=1:
        ;
        ; iteration
        ;   zr = gaussian integer
        ;   r = distance to zr
        ;   zmin = integer with minimum distance
        ;
        iter=iter+1, zc=sqr(zc)+c, zr=round(zc), q=|zc-zr|,
        if (q<rmin)
          rmin=q, zmin=zr
          end if
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   set z = nearest gaussian integer
        ;
        if ((|zc|>rmax)||(iter==maxit))
          iter=-1
          z=zmin
          end if
        iter>0
        }

gaussinttot_jul { ; Kerry Mitchell 20jan98
        ;
        ; Gaussian integer coloring of Julia sets
        ;   color by average distance to nearest integer
        ;   inside and outside handled the same way
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; imag(p2) = scaling factor (try 30)
        ; variable zc used for calculation; coloring done with z
        ;
        zc=pixel, c=p1, rmax=real(p2), scale=imag(p2)
        iter=1, rmin=1, z=zc, tot=0:
        ;
        ; iteration
        ;   zr = gaussian integer
        ;   r = distance to zr
        ;   zmin = integer with minimum distance
        ;   tot = running sum of r's
        ;
        iter=iter+1, zc=sqr(zc)+c, rzc=|zc|
        zr=round(zc), r=|zc-zr|, tot=tot+r
        ;
        ; bailout
        ;   scale average distance to decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
        if ((rzc>rmax)||(iter==maxit))
          angle=scale*tot/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        iter>0
        }

gaussintr_man { ; Kerry Mitchell 20jan98
        ;
        ; Gaussian integer coloring of Mandelbrot set
        ;   color by magnitude of nearest gaussian integer
        ;   inside and outside handled the same way
        ;
        ; use decomp=256
        ; real(p1) = bailout (try 1e12)
        ; variable zc used for calculation; coloring done with z
        ;
        zc=0, c=pixel, iter=1, rmax=real(p1), rmin=1:
        ;
        ; iteration
        ;   zr = gaussian integer
        ;   r = distance to zr
        ;   zmin = integer with minimum distance
        ;
        iter=iter+1, zc=sqr(zc)+c, zr=round(zc), r=|zc-zr|,
        if (r<rmin)
          rmin=r, zmin=zr
          end if
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of magnitude of nearest gaussian integer as
        ;     decomposition angle
        ;
        if ((|zc|>rmax)||(iter==maxit))
          iter=-1
          angle=log(cabs(zmin)+1)
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

gaussintt_man { ; Kerry Mitchell 20jan98
        ;
        ; Gaussian integer coloring of Mandelbrot set
        ;   color by polar angle of nearest gaussian integer
        ;   inside and outside handled the same way
        ;
        ; use decomp=256
        ; real(p1) = bailout (try 1e12)
        ; variable zc used for calculation; coloring done with z
        ;
        zc=0, c=pixel, rmax=real(p1), rmin=1, iter=1:
        ;
        ; iteration
        ;   zr = gaussian integer
        ;   r = distance to zr
        ;   zmin = integer with minimum distance
        ;
        iter=iter+1, zc=sqr(zc)+c, zr=round(zc), q=|zc-zr|,
        if (q<rmin)
          rmin=q, zmin=zr
          end if
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   set z = nearest gaussian integer
        ;
        if ((|zc|>rmax)||(iter==maxit))
          iter=-1
          z=zmin
          end if
        iter>0
        }

gaussinttot_man { ; Kerry Mitchell 20jan98
        ;
        ; Gaussian integer coloring of Mandelbrot set
        ;   color by average distance to nearest integer
        ;   inside and outside handled the same way
        ;
        ; use decomp=256
        ; real(p1) = bailout (try 1e12)
        ; imag(p1) = scaling factor (try 30)
        ; variable zc used for calculation; coloring done with z
        ;
        zc=0, c=pixel, rmax=real(p1), scale=imag(p1)
        iter=1, rmin=1, z=zc, tot=0:
        ;
        ; iteration
        ;   zr = gaussian integer
        ;   r = distance to zr
        ;   zmin = integer with minimum distance
        ;   tot = running sum of r's
        ;
        iter=iter+1, zc=sqr(zc)+c, rzc=|zc|
        zr=round(zc), r=|zc-zr|, tot=tot+r
        ;
        ; bailout
        ;   scale average distance to decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
        if ((rzc>rmax)||(iter==maxit))
          angle=scale*tot/(iter-1)
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        iter>0
        }

