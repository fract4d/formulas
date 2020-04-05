general_man { ; Kerry Mitchell 26aug98
	;
        ; "2 general lines" coloring method for Mandelbrot
	; c = pixel = Mandelbrot parameter
        ; real(p1) = x line A coefficient
        ; imag(p1) = x line B coefficient
        ; real(p2) = x line C
        ; imag(p2) = y line A coefficient
        ; real(p3) = y line B coefficient
        ; imag(p3) = y line C coefficient
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        c=pixel, zc=0, bailout=1e12, iter=1, rmin=1e12
        ax=real(p1), bx=imag(p1), cx=real(p2)
        ay=imag(p2), by=real(p3), cy=imag(p3):
        iter=iter+1, zc=sqr(zc)+c
        x=real(zc), y=imag(zc)
        tempx=ax*x+bx*y+cx
        tempy=ay*x+by*y+cy
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
        ; "2 general lines" coloring method for Julia
        ; Julia parameter hardcoded to (0.26,0.0014)
        ; real(p1) = x line A coefficient
        ; imag(p1) = x line B coefficient
        ; real(p2) = x line C
        ; imag(p2) = y line A coefficient
        ; real(p3) = y line B coefficient
        ; imag(p3) = y line C coefficient
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        zc=pixel, c=(.26,.0014), bailout=1e12, iter=1, rmin=1e12
        ax=real(p1), bx=imag(p1), cx=real(p2)
        ay=imag(p2), by=real(p3), cy=imag(p3):
        iter=iter+1, zc=sqr(zc)+c
        x=real(zc), y=imag(zc)
        tempx=ax*x+bx*y+cx
        tempy=ay*x+by*y+cy
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

orthogonal_jul { ; Kerry Mitchell 26aug98
	;
        ; "2 orthogonal lines" coloring method for Julia
        ; c = p1 = Julia parameter
        ; real(p2) = x line A coefficient
        ; imag(p2) = x line B coefficient
        ; real(p3) = x line C
        ;            y line A = x line B
        ;            y line B = -(x line A)
        ; imag(p3) = y line C coefficient
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
        ax=real(p2), bx=imag(p2), cx=real(p3)
        ay=bx, by=-ax, cy=imag(p3):
        iter=iter+1, zc=sqr(zc)+c
        x=real(zc), y=imag(zc)
        tempx=ax*x+bx*y+cx
        tempy=ay*x+by*y+cy
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

parallel_jul { ; Kerry Mitchell 26aug98
	;
        ; "2 parallel lines" coloring method for Julia
        ; c = p1 = Julia parameter
        ; real(p2) = x line A coefficient
        ; imag(p2) = x line B coefficient
        ; real(p3) = x line C
        ;            y line A = x line A
        ;            y line B = x line B
        ; imag(p3) = y line C coefficient
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
        ax=real(p2), bx=imag(p2), cx=real(p3)
        ay=ax, by=bx, cy=imag(p3):
        iter=iter+1, zc=sqr(zc)+c
        x=real(zc), y=imag(zc)
        tempx=ax*x+bx*y+cx
        tempy=ay*x+by*y+cy
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

oppangle_jul { ; Kerry Mitchell 26aug98
	;
        ; "2 opposite angle lines" coloring method for Julia
        ; c = p1 = Julia parameter
        ; real(p2) = x line A coefficient
        ; imag(p2) = x line B coefficient
        ; real(p3) = x line C
        ;            y line A = x line A
        ;            y line B = -(x line B)
        ; imag(p3) = y line C coefficient
	; bailout hardcoded to 10^12
	; use "decomp=256" coloring
	;
        zc=pixel, c=p1, bailout=1e12, iter=1, rmin=1e12
        ax=real(p2), bx=imag(p2), cx=real(p3)
        ay=ax, by=-bx, cy=imag(p3):
        iter=iter+1, zc=sqr(zc)+c
        x=real(zc), y=imag(zc)
        tempx=ax*x+bx*y+cx
        tempy=ay*x+by*y+cy
        temp=tempx+flip(tempy), r=|temp|
        if (r<rmin)
          rmin=r, z=temp
          endif
        if ((|zc|>bailout)||(iter==maxit))
          iter=-1
          endif
        iter>0
        }

