general_man { ; Kerry Mitchell 27aug98
	;
        ; "general circle and line" coloring method for Mandelbrot
	; c = pixel = Mandelbrot parameter
        ; p1 = circle center
        ; real(p2) = circle radius
        ; imag(p2) = y line A coefficient
        ; real(p3) = y line B coefficient
        ; imag(p3) = y line C coefficient
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        c=pixel, zc=0, bailout=1e12, iter=1, rmin=1e12
        cenx=p1, radx=real(p2), rad2x=|radx|
        ay=imag(p2), by=real(p3), cy=imag(p3):
        iter=iter+1, zc=sqr(zc)+c
        tempx=|zc-cenx|-rad2x
        tempy=ay*real(zc)+by*imag(zc)+cy
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

general_jul { ; Kerry Mitchell 27aug98
	;
        ; "general circle and line" coloring method for Julia
        ; Julia parameter hardcoded to (0,1)
        ; p1 = circle center
        ; real(p2) = circle radius
        ; imag(p2) = y line A coefficient
        ; real(p3) = y line B coefficient
        ; imag(p3) = y line C coefficient
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        zc=pixel, c=(0,1), bailout=1e12, iter=1, rmin=1e12
        cenx=p1, radx=real(p2), rad2x=|radx|
        ay=imag(p2), by=real(p3), cy=imag(p3):
        iter=iter+1, zc=sqr(zc)+c
        tempx=|zc-cenx|-rad2x
        tempy=ay*real(zc)+by*imag(zc)+cy
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

center_jul { ; Kerry Mitchell 27aug98
	;
        ; "circle and line through center" coloring
        ;    method for Julia sets
        ; p1 = Julia parameter
        ; p2 = circle center
        ; real(p3) = circle radius
        ; imag(p3) = angle of line, in degrees
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
        cenx=p2, radx=real(p3), rad2x=|radx|
        theta=imag(p3)*pi/180, ct=cos(theta), st=sin(theta)
        ay=-st, by=ct, cy=-ct*imag(cenx)+st*real(cenx):
        iter=iter+1, zc=sqr(zc)+c
        tempx=|zc-cenx|-rad2x
        tempy=ay*real(zc)+by*imag(zc)+cy
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

tangent_jul { ; Kerry Mitchell 27aug98
	;
        ; "circle and tangent line" coloring method for Julia sets
        ; p1 = Julia parameter
        ; p2 = circle center
        ; real(p3) = circle radius
        ; imag(p3) = angle of line from center of circle
        ;   to tangent point, in degrees
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
        cenx=p2, radx=real(p3), rad2x=|radx|
        theta=imag(p3)*pi/180, ct=cos(theta), st=sin(theta)
        xt=real(cenx)+radx*ct, yt=imag(cenx)+radx*st
        phi=theta+pi/2, cp=cos(phi), sp=sin(phi)
        ay=sp, by=-cp, cy=cp*yt-sp*xt:
        iter=iter+1, zc=sqr(zc)+c
        tempx=|zc-cenx|-rad2x
        tempy=ay*real(zc)+by*imag(zc)+cy
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

offset_jul { ; Kerry Mitchell 27aug98
	;
        ; "circle and offset line" coloring method for Julia sets
        ; p1 = Julia parameter
        ; p2 = circle center
        ; real(p3) = circle radius
        ; imag(p3) = angle of line from center of circle,
        ;   perpendicular to offset line, in degrees
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
        cenx=p2, radx=real(p3), rad2x=|radx|
        theta=imag(p3)*pi/180, ct=cos(theta), st=sin(theta)
        xt=real(cenx)+2*radx*ct, yt=imag(cenx)+2*radx*st
        phi=theta+pi/2, cp=cos(phi), sp=sin(phi)
        ay=sp, by=-cp, cy=cp*yt-sp*xt:
        iter=iter+1, zc=sqr(zc)+c
        tempx=|zc-cenx|-rad2x
        tempy=ay*real(zc)+by*imag(zc)+cy
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

