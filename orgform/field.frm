field2_jul { ; Kerry Mitchell 20jan98
        ;
        ; Colors Julia sets by nearest approach to
        ;   period 2 field lines
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; imag(p2) = number of field line to use: 0, 1, or 2
        ; 2 iterations per pixel
        ; variable zc used for calculation, z for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), minr=maxr, iter=1
        fieldangle=tan(imag(p2)*2*pi/3):
        ;
        ; iteration
        ;   compare tangent of polar angle with desired
        ;   field line angle, update minimum if needed
        ;
        iter=iter+2, zc=sqr(zc)+c, zc=sqr(zc)+c
        rzc=|zc|, tanangle=imag(zc)/real(zc),
        r=cabs(fieldangle-tanangle)
        if (r<minr)
          minr=r
          end if
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of minimum difference of angles as
        ;     decomposition angle
        ;
        if ((rzc>maxr)||(iter>=maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

field3_jul { ; Kerry Mitchell 20jan98
        ;
        ; Colors Julia sets by nearest approach to
        ;   period 3 field lines
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; imag(p2) = number of field line to use:
        ;   0, 1, 2, 3, 4, 5, 6, 7
        ; 3 iterations per pixel
        ; variable zc used for calculation, z for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), minr=maxr, iter=1
        fieldangle=tan(imag(p2)*2*pi/7):
        ;
        ; iteration
        ;   compare tangent of polar angle with desired
        ;   field line angle, update minimum if needed
        ;
        iter=iter+3, zc=sqr(zc)+c, zc=sqr(zc)+c, zc=sqr(zc)+c
        rzc=|zc|, tanangle=imag(zc)/real(zc),
        r=cabs(fieldangle-tanangle)
        if (r<minr)
          minr=r
          end if
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of minimum difference of angles as
        ;     decomposition angle
        ;
        if ((rzc>maxr)||(iter>=maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

field4_jul { ; Kerry Mitchell 20jan98
        ;
        ; Colors Julia sets by nearest approach to
        ;   period 4 field lines
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; imag(p2) = number of field line to use:  0 - 15
        ; 4 iterations per pixel
        ; variable zc used for calculation, z for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), minr=maxr, iter=1
        fieldangle=tan(imag(p2)*2*pi/15):
        ;
        ; iteration
        ;   compare tangent of polar angle with desired
        ;   field line angle, update minimum if needed
        ;
        iter=iter+4, zc=sqr(zc)+c, zc=sqr(zc)+c, zc=sqr(zc)+c
        zc=sqr(zc)+c, rzc=|zc|, tanangle=imag(zc)/real(zc),
        r=cabs(fieldangle-tanangle)
        if (r<minr)
          minr=r
          end if
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of minimum difference of angles as
        ;     decomposition angle
        ;
        if ((rzc>maxr)||(iter>=maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

field2_man { ; Kerry Mitchell 20jan98
        ;
        ; Colors Mandelbrot set by nearest approach to
        ;   period 2 field lines
        ;
        ; use decomp=256
        ; real(p1) = bailout (try 1e12)
        ; imag(p1) = number of field line to use: 0, 1, or 2
        ; 2 iterations per pixel
        ; variable zc used for calculation, z for coloring
        ;
        zc=0, c=pixel, maxr=real(p1), minr=maxr, iter=1
        fieldangle=tan(imag(p1)*2*pi/3):
        ;
        ; iteration
        ;   compare tangent of polar angle with desired
        ;   field line angle, update minimum if needed
        ;
        iter=iter+2, zc=sqr(zc)+c, zc=sqr(zc)+c
        rzc=|zc|, tanangle=imag(zc)/real(zc),
        r=cabs(fieldangle-tanangle)
        if (r<minr)
          minr=r
          end if
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of minimum difference of angles as
        ;     decomposition angle
        ;
        if ((rzc>maxr)||(iter>=maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

field3_man { ; Kerry Mitchell 20jan98
        ;
        ; Colors Mandelbrot set by nearest approach to
        ;   period 3 field lines
        ;
        ; use decomp=256
        ; real(p1) = bailout (try 1e12)
        ; imag(p1) = number of field line to use:
        ;   0, 1, 2, 3, 4, 5, 6, 7
        ; 3 iterations per pixel
        ; variable zc used for calculation, z for coloring
        ;
        zc=0, c=pixel, maxr=real(p1), minr=maxr, iter=1
        fieldangle=tan(imag(p1)*2*pi/7):
        ;
        ; iteration
        ;   compare tangent of polar angle with desired
        ;   field line angle, update minimum if needed
        ;
        iter=iter+3, zc=sqr(zc)+c, zc=sqr(zc)+c, zc=sqr(zc)+c
        rzc=|zc|, tanangle=imag(zc)/real(zc),
        r=cabs(fieldangle-tanangle)
        if (r<minr)
          minr=r
          end if
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of minimum difference of angles as
        ;     decomposition angle
        ;
        if ((rzc>maxr)||(iter>=maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

field4_man { ; Kerry Mitchell 20jan98
        ;
        ; Colors Mandelbrot set by nearest approach to
        ;   period 4 field lines
        ;
        ; use decomp=256
        ; real(p1) = bailout (try 1e12)
        ; imag(p1) = number of field line to use:  0 - 15
        ; 4 iterations per pixel
        ; variable zc used for calculation, z for coloring
        ;
        zc=0, c=pixel, maxr=real(p1), minr=maxr, iter=1
        fieldangle=tan(imag(p1)*2*pi/15):
        ;
        ; iteration
        ;   compare tangent of polar angle with desired
        ;   field line angle, update minimum if needed
        ;
        iter=iter+4, zc=sqr(zc)+c, zc=sqr(zc)+c, zc=sqr(zc)+c
        zc=sqr(zc)+c, rzc=|zc|, tanangle=imag(zc)/real(zc),
        r=cabs(fieldangle-tanangle)
        if (r<minr)
          minr=r
          end if
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of minimum difference of angles as
        ;     decomposition angle
        ;
        if ((rzc>maxr)||(iter>=maxit))
          iter=-1
          angle=log(minr)
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

