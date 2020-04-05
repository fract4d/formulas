ghost_man { ; Kerry Mitchell 19jan98
        ;
        ; colors Mandelbrot set by combining the smoothed iteration
        ; with a background of rays from the center
        ;
        ; use decomp=256
        ; real(p1) = bailout
        ; imag(p1) = "ghost" adjustment: set to 0 for only
        ;   background rays, try 2
        ; calculation performed on variable zc, z used for coloring
        ;
        maxr=real(p1), scale=imag(p1)*pi/128
        ol2=1/log(2), fac=log(0.5*log(maxr))
        iter=1, zc=0, c=pixel, background=pixel
        :
        iter=iter+1, zc=sqr(zc)+c
        ;
        ; bailout
        ;   compute smoothed iteration as "angle"
        ;   multiply angle by background to get final z
        ;   set z to background for interior points
        ;   set "iteration done" flag (iter=-1)
        ;
        if ((|zc|>maxr)||(iter==maxit))
          smooth=(iter+ol2*(fac-log(log(cabs(zc)))))*scale
          angle=cos(smooth)+flip(sin(smooth))
          z=background*angle
          if (iter==maxit)
            z=background
            endif
          iter=-1
          endif
        iter>0
        }

ghost_jul { ; Kerry Mitchell 19jan98
        ;
        ; colors Julia sets by combining the smoothed iteration
        ; with a background of rays from the center
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout
        ; imag(p2) = "ghost" adjustment: set to 0 for only
        ;   background rays, try 2
        ; calculation performed on variable zc, z used for coloring
        ;
        maxr=real(p2), scale=imag(p2)*pi/128
        ol2=1/log(2), fac=log(0.5*log(maxr))
        iter=1, zc=pixel, c=p1, background=pixel
        :
        iter=iter+1, zc=sqr(zc)+c
        ;
        ; bailout
        ;   compute smoothed iteration as "angle"
        ;   multiply angle by background to get final z
        ;   set z to background for interior points
        ;   set "iteration done" flag (iter=-1)
        ;
        if ((|zc|>maxr)||(iter==maxit))
          smooth=(iter+ol2*(fac-log(log(cabs(zc)))))*scale
          angle=cos(smooth)+flip(sin(smooth))
          z=background*angle
          if (iter==maxit)
            z=background
            endif
          iter=-1
          endif
        iter>0
        }

ghost-horiz_man { ; Kerry Mitchell 19jan98
        ;
        ; colors Mandelbrot set by combining the smoothed iteration
        ; with a background of horizontal lines
        ;
        ; use decomp=256
        ; real(p1) = bailout
        ; imag(p1) = "ghost" adjustment: set to 0 for only
        ;   background rays, try 2
        ; calculation performed on variable zc, z used for coloring
        ;
        maxr=real(p1), scale=imag(p1)*pi/128
        ol2=1/log(2), fac=log(0.5*log(maxr))
        iter=1, zc=0, c=pixel
        ;
        ; generate horizontal lines
        ;
        yc=(imag(scrnmax)-1)/2, y=imag(scrnpix)
        t=y/yc*pi, background=cos(t)+flip(sin(t))
        :
        iter=iter+1, zc=sqr(zc)+c
        ;
        ; bailout
        ;   compute smoothed iteration as "angle"
        ;   multiply angle by background to get final z
        ;   set z to background for interior points
        ;   set "iteration done" flag (iter=-1)
        ;
        if ((|zc|>maxr)||(iter==maxit))
          smooth=(iter+ol2*(fac-log(log(cabs(zc)))))*scale
          angle=cos(smooth)+flip(sin(smooth))
          z=background*angle
          if (iter==maxit)
            z=background
            endif
          iter=-1
          endif
        iter>0
        }

ghost-vert_man { ; Kerry Mitchell 19jan98
        ;
        ; colors Mandelbrot set by combining the smoothed iteration
        ; with a background of vertical lines
        ;
        ; use decomp=256
        ; real(p1) = bailout
        ; imag(p1) = "ghost" adjustment: set to 0 for only
        ;   background rays, try 2
        ; calculation performed on variable zc, z used for coloring
        ;
        maxr=real(p1), scale=imag(p1)*pi/128
        ol2=1/log(2), fac=log(0.5*log(maxr))
        iter=1, zc=0, c=pixel
        ;
        ; generate vertical lines
        ;
        xc=(real(scrnmax)-1)/2, x=real(scrnpix)
        t=x/xc*pi, background=cos(t)+flip(sin(t))
        :
        iter=iter+1, zc=sqr(zc)+c
        ;
        ; bailout
        ;   compute smoothed iteration as "angle"
        ;   multiply angle by background to get final z
        ;   set z to background for interior points
        ;   set "iteration done" flag (iter=-1)
        ;
        if ((|zc|>maxr)||(iter==maxit))
          smooth=(iter+ol2*(fac-log(log(cabs(zc)))))*scale
          angle=cos(smooth)+flip(sin(smooth))
          z=background*angle
          if (iter==maxit)
            z=background
            endif
          iter=-1
          endif
        iter>0
        }

ghost-horiz_jul { ; Kerry Mitchell 19jan98
        ;
        ; colors Julia sets by combining the smoothed iteration
        ; with a background of horizontal lines
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout
        ; imag(p2) = "ghost" adjustment: set to 0 for only
        ;   background rays, try 2
        ; calculation performed on variable zc, z used for coloring
        ;
        maxr=real(p2), scale=imag(p2)*pi/128
        ol2=1/log(2), fac=log(0.5*log(maxr))
        iter=1, zc=pixel, c=p1
        ;
        ; generate horizontal lines
        ;
        yc=(imag(scrnmax)-1)/2, y=imag(scrnpix)
        t=y/yc*pi, background=cos(t)+flip(sin(t))
        :
        iter=iter+1, zc=sqr(zc)+c
        ;
        ; bailout
        ;   compute smoothed iteration as "angle"
        ;   multiply angle by background to get final z
        ;   set z to background for interior points
        ;   set "iteration done" flag (iter=-1)
        ;
        if ((|zc|>maxr)||(iter==maxit))
          smooth=(iter+ol2*(fac-log(log(cabs(zc)))))*scale
          angle=cos(smooth)+flip(sin(smooth))
          z=background*angle
          if (iter==maxit)
            z=background
            endif
          iter=-1
          endif
        iter>0
        }

ghost-vert_jul { ; Kerry Mitchell 19jan98
        ;
        ; colors Julia sets by combining the smoothed iteration
        ; with a background of vertical lines
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout
        ; imag(p2) = "ghost" adjustment: set to 0 for only
        ;   background rays, try 2
        ; calculation performed on variable zc, z used for coloring
        ;
        maxr=real(p2), scale=imag(p2)*pi/128
        ol2=1/log(2), fac=log(0.5*log(maxr))
        iter=1, zc=pixel, c=p1
        ;
        ; generate vertical lines
        ;
        xc=(real(scrnmax)-1)/2, x=real(scrnpix)
        t=x/xc*pi, background=cos(t)+flip(sin(t))
        :
        iter=iter+1, zc=sqr(zc)+c
        ;
        ; bailout
        ;   compute smoothed iteration as "angle"
        ;   multiply angle by background to get final z
        ;   set z to background for interior points
        ;   set "iteration done" flag (iter=-1)
        ;
        if ((|zc|>maxr)||(iter==maxit))
          smooth=(iter+ol2*(fac-log(log(cabs(zc)))))*scale
          angle=cos(smooth)+flip(sin(smooth))
          z=background*angle
          if (iter==maxit)
            z=background
            endif
          iter=-1
          endif
        iter>0
        }

