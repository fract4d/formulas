general_man { ; Kerry Mitchell 26aug98 
	;
	; "2 general circles" coloring method for Mandelbrot
	; c = pixel = Mandelbrot parameter
	; p1 = x circle center
	; p2 = y circle center
	; real(p3) = x circle radius
	; imag(p3) = y circle radius
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        c=pixel, zc=0, bailout=1e12, iter=1, rmin=1e12
        cenx=p1, radx=real(p3), rad2x=radx*radx
        ceny=p2, rady=imag(p3), rad2y=rady*rady:
        iter=iter+1, zc=sqr(zc)+c
        tempx=|zc-cenx|-rad2x
        tempy=|zc-ceny|-rad2y
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

general_jul { ; Kerry Mitchell 26aug98
	;
	; "2 general circles" coloring method for Julia sets
	; c = Julia parameter, hardcoded
	; p1 = x circle center
	; p2 = y circle center
	; real(p3) = x circle radius
	; imag(p3) = y circle radius
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        zc=pixel, c=(0.39,0.44), bailout=1e12, iter=1, rmin=1e12
        cenx=p1, radx=real(p3), rad2x=radx*radx
        ceny=p2, rady=imag(p3), rad2y=rady*rady:
        iter=iter+1, zc=sqr(zc)+c
        tempx=|zc-cenx|-rad2x
        tempy=|zc-ceny|-rad2y
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

cenx=ceny_jul { ; Kerry Mitchell 26aug98
	;
	; "2 concentric circles" coloring method for Julia sets
	; p1 = c = Julia parameter
	; p2 = (both) circle center
	; real(p3) = x circle radius
	; imag(p3) = y circle radius
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
        cenx=p2, radx=real(p3), rad2x=radx*radx
        ceny=cenx, rady=imag(p3), rad2y=rady*rady:
        iter=iter+1, zc=sqr(zc)+c
        tempx=|zc-cenx|-rad2x
        tempy=|zc-ceny|-rad2y
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

cenx=-ceny_jul { ; Kerry Mitchell 26aug98
	;
	; "2 opposing circles" coloring method for Julia sets
	; p1 = c = Julia parameter
	; p2 = x circle center
	; -p2 = y circle center
	; real(p3) = x circle radius
	; imag(p3) = y circle radius
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
        cenx=p2, radx=real(p3), rad2x=radx*radx
        ceny=-cenx, rady=imag(p3), rad2y=rady*rady:
        iter=iter+1, zc=sqr(zc)+c
        tempx=|zc-cenx|-rad2x
        tempy=|zc-ceny|-rad2y
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

offset_rx=ry_jul { ; Kerry Mitchell 26aug98
	;
	; "2 offset circles" coloring method for Julia sets
	; p1 = c = Julia parameter
	; p2 = approximate circle center
	; real(p3) = (both) circle radius
	; imag(p3) = center offsets--added to p2 for
	;   centerx, subtracted from p2 for centery
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
        cenx=p2*(1+imag(p3)), radx=real(p3), rad2x=radx*radx
        ceny=p2*(1-imag(p3)), rad2y=rad2x:
        iter=iter+1, zc=sqr(zc)+c
        tempx=|zc-cenx|-rad2x
        tempy=|zc-ceny|-rad2y
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }
