bof62_man { ; Kerry Mitchell 04feb98
;
;       records the iterate which is closest to the origin
;       and colors by its polar angle
;       Mandelbrot variation
;
;       real(p1) = bailout (try 4)
;       calculation performed on variable zc, z used for coloring
;       use decomp=256
;
        zc=0, c=pixel, iter=1, r=|zc|
        maxr=real(p1), minr=maxr:
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
;
;       check to see if iterate is closer to origin
;         if so, remember this iterate
;
        if (r<minr)
          minr=r, zmin=zc
          end if
;
;       bailout--escape or maximum iterations
;         set "iteration done" flag (iter-1)
;         set z to minimal iterate for decomp coloring
;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          z=zmin
          end if
        iter>0
	}

bof61_man { ; Kerry Mitchell 04feb98
;
;       records the iterate which is closest to the origin
;       and colors by its iteration count
;       Mandelbrot variation
;
;       real(p1) = bailout (try 4)
;       imag(p1) = angle scale factor (try 0.1)
;       calculation performed on variable zc, z used for coloring
;       use decomp=256
;
        zc=0, c=pixel, iter=1, r=|zc|, maxr=real(p1)
        scale61=imag(p1), minr=maxr:
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
;
;       check to see if iterate is closer to origin
;         if so, remember this iteration count
;
        if (r<minr)
          minr=r, itermin=iter
          end if
;
;       bailout--escape or maximum iterations
;         set "iteration done" flag (iter-1)
;         scale iteration count for decomp coloring
;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          angle61=scale61*itermin
          z=cos(angle61)+flip(sin(angle61))
          end if
        iter>0
	}

bof60_man { ; Kerry Mitchell 04feb98
;
;       records the iterate which is closest to the origin
;       and colors by (the log of) its magnitude
;       Mandelbrot variation
;
;       real(p1) = bailout (try 4)
;       calculation performed on variable zc, z used for coloring
;       use decomp=256
;
        zc=0, c=pixel, iter=1, r=|zc|
        maxr=real(p1), minr=maxr:
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
;
;       check to see if iterate is closer to origin
;         if so, remember this minimum distance
;
        if (r<minr)
          minr=r
          end if
;
;       bailout--escape or maximum iterations
;         set "iteration done" flag (iter-1)
;         take log of minimum distance, use as angle for
;           decomp coloring
;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          angle60=log(minr)
          z=cos(angle60)+flip(sin(angle60))
          end if
        iter>0
	}

bof6061_man { ; Kerry Mitchell 04feb98
;
;       records the iterate which is closest to the origin
;       and colors by (the log of) its magnitude & iteration count
;       Mandelbrot variation
;
;       real(p1) = bailout (try 4)
;       imag(p1) = iteration count angle scale factor (try 0.1)
;       real(p2) = magnitude (bof60) weight (try 1)
;       real(p2) = iteration count (bof61) weight (try 1)
;       calculation performed on variable zc, z used for coloring
;       use decomp=256
;
        zc=0, c=pixel, iter=1, r=|zc|, maxr=real(p1)
        minr=maxr, scale61=imag(p1), weighttot=real(p2)+imag(p2)
        weight60=real(p2)/weighttot, weight61=imag(p2)/weighttot:
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
;
;       check to see if iterate is closer to origin
;         if so, remember this minimum distance & iteration count
;
        if (r<minr)
          minr=r, itermin=iter
          end if
;
;       bailout--escape or maximum iterations
;         set "iteration done" flag (iter-1)
;         take log of minimum distance for bof60 angle
;         scale iteration count for bof61 angle
;         add angles with appropriate weights for final angle
;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          angle60=log(minr)
          angle61=scale61*itermin
          angle=weight60*angle60+weight61*angle61
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
	}

bof6162_man { ; Kerry Mitchell 04feb98
;
;       records the iterate which is closest to the origin
;       and colors by its iteration count & polar angle
;       Mandelbrot variation
;
;       real(p1) = bailout (try 4)
;       imag(p1) = iteration count angle scale factor (try 0.1)
;       real(p2) = iteration count (bof61) weight (try 1)
;       real(p2) = polar angle (bof62) weight (try 1)
;       calculation performed on variable zc, z used for coloring
;       use decomp=256
;
        zc=0, c=pixel, iter=1, r=|zc|, maxr=real(p1)
        minr=maxr, scale61=imag(p1), weighttot=real(p2)+imag(p2)
        weight61=real(p2)/weighttot, weight62=imag(p2)/weighttot:
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
;
;       check to see if iterate is closer to origin
;         if so, remember this iteration count & iterate
;
        if (r<minr)
          minr=r, itermin=iter, zmin=zc
          end if
;
;       bailout--escape or maximum iterations
;         set "iteration done" flag (iter-1)
;         scale iteration count for bof61 angle
;         take minimal iterate's polar angle for bof62 angle
;         add angles with appropriate weights for final angle
;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          angle61=scale61*itermin
          angle62=imag(log(zmin))
          angle=weight61*angle61+weight62*angle62
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
	}

bof6260_man { ; Kerry Mitchell 04feb98
;
;       records the iterate which is closest to the origin
;       and colors by its polar angle & (log) magnitude
;       Mandelbrot variation
;
;       real(p1) = bailout (try 4)
;       imag(p1) = unused
;       real(p2) = polar angle (bof62) weight (try 1)
;       real(p3) = magnitude (bof60) weight (try 1)
;       calculation performed on variable zc, z used for coloring
;       use decomp=256
;
        zc=0, c=pixel, iter=1, r=|zc|, maxr=real(p1)
        minr=maxr, weighttot=real(p2)+imag(p2)
        weight62=real(p2)/weighttot, weight60=imag(p2)/weighttot:
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
;
;       check to see if iterate is closer to origin
;         if so, remember this minimum distance & iterate
;
        if (r<minr)
          minr=r, zmin=zc
          end if
;
;       bailout--escape or maximum iterations
;         set "iteration done" flag (iter-1)
;         take minimal iterate's polar angle for bof62 angle
;         take log of minimum distance for bof60 angle
;         add angles with appropriate weights for final angle
;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          angle62=imag(log(zmin))
          angle60=log(minr)
          angle=weight62*angle62+weight60*angle60
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
	}

bof62_jul { ; Kerry Mitchell 04feb98
;
;       records the iterate which is closest to the origin
;       and colors by its polar angle
;       Julia variation
;
;       p1 = Julia parameter
;       real(p2) = bailout (try 4)
;       calculation performed on variable zc, z used for coloring
;       use decomp=256
;
        zc=pixel, c=p1, iter=1, r=|zc|
        maxr=real(p2), minr=maxr:
;
;       check to see if iterate is closer to origin
;         if so, remember this iterate
;
        if (r<minr)
          minr=r, zmin=zc
          end if
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
;
;       bailout--escape or maximum iterations
;         set "iteration done" flag (iter-1)
;         set z to minimal iterate for decomp coloring
;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          z=zmin
          end if
        iter>0
	}

bof61_jul { ; Kerry Mitchell 04feb98
;
;       records the iterate which is closest to the origin
;       and colors by its iteration count
;       Julia variation
;
;       p1 = Julia parameter
;       real(p2) = bailout (try 4)
;       imag(p2) = angle scale factor (try 0.1)
;       calculation performed on variable zc, z used for coloring
;       use decomp=256
;
        zc=pixel, c=p1, iter=1, r=|zc|, maxr=real(p2)
        scale61=imag(p2), minr=maxr:
;
;       check to see if iterate is closer to origin
;         if so, remember this iteration count
;
       if (r<minr)
          minr=r, itermin=iter
          end if
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
;
;       bailout--escape or maximum iterations
;         set "iteration done" flag (iter-1)
;         scale iteration count for decomp coloring
;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          angle61=scale61*itermin
          z=cos(angle61)+flip(sin(angle61))
          end if
        iter>0
	}

bof60_jul { ; Kerry Mitchell 04feb98
;
;       records the iterate which is closest to the origin
;       and colors by (the log of) its magnitude
;       Julia variation
;
;       p1 = Julia parameter
;       real(p2) = bailout (try 4)
;       calculation performed on variable zc, z used for coloring
;       use decomp=256
;
        zc=pixel, c=p1, iter=1, r=|zc|
        maxr=real(p2), minr=maxr:
;
;       check to see if iterate is closer to origin
;         if so, remember this minimum distance
;
        if (r<minr)
          minr=r
          end if
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
;
;       bailout--escape or maximum iterations
;         set "iteration done" flag (iter-1)
;         take log of minimum distance, use as angle for
;           decomp coloring
;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          angle60=log(minr)
          z=cos(angle60)+flip(sin(angle60))
          end if
        iter>0
	}

bof6061_jul { ; Kerry Mitchell 04feb98
;
;       records the iterate which is closest to the origin
;       and colors by (the log of) its magnitude & iteration count
;       Julia variation
;
;       p1 = Julia parameter
;       real(p2) = bailout (try 4)
;       imag(p2) = iteration count angle scale factor (try 0.1)
;       real(p3) = magnitude (bof60) weight (try 1)
;       real(p3) = iteration count (bof61) weight (try 1)
;       calculation performed on variable zc, z used for coloring
;       use decomp=256
;
        zc=pixel, c=p1, iter=1, r=|zc|, maxr=real(p2)
        minr=maxr, scale61=imag(p2), weighttot=real(p3)+imag(p3)
        weight60=real(p3)/weighttot, weight61=imag(p3)/weighttot:
;
;       check to see if iterate is closer to origin
;         if so, remember this iteration count & distance
;
        if (r<minr)
          minr=r, itermin=iter
          end if
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
;
;       bailout--escape or maximum iterations
;         set "iteration done" flag (iter-1)
;         take log of minimum distance for bof60 angle
;         scale iteration count for bof61 angle
;         add angles with appropriate weights for final angle
;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          angle60=log(minr)
          angle61=scale61*itermin
          angle=weight60*angle60+weight61*angle61
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
	}

bof6162_jul { ; Kerry Mitchell 04feb98
;
;       records the iterate which is closest to the origin
;       and colors by its iteration count & polar angle
;       Julia variation
;
;       p1 = Julia parameter
;       real(p2) = bailout (try 4)
;       imag(p2) = iteration count angle scale factor (try 0.1)
;       real(p3) = iteration count (bof61) weight (try 1)
;       real(p3) = polar angle (bof62) weight (try 1)
;       calculation performed on variable zc, z used for coloring
;       use decomp=256
;
        zc=pixel, c=p1, iter=1, r=|zc|, maxr=real(p2)
        minr=maxr, scale61=imag(p2), weighttot=real(p3)+imag(p3)
        weight61=real(p3)/weighttot, weight62=imag(p3)/weighttot:
;
;       check to see if iterate is closer to origin
;         if so, remember this iterate & iteration count
;
        if (r<minr)
          minr=r, itermin=iter, zmin=zc
          end if
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
;
;       bailout--escape or maximum iterations
;         set "iteration done" flag (iter-1)
;         scale iteration count for bof61 angle
;         take minimal iterate's polar angle for bof62 angle
;         add angles with appropriate weights for final angle
;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          angle61=scale61*itermin
          angle62=imag(log(zmin))
          angle=weight61*angle61+weight62*angle62
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
	}

bof6260_jul { ; Kerry Mitchell 04feb98
;
;       records the iterate which is closest to the origin
;       and colors by its polar angle & (log) magnitude
;       Julia variation
;
;       p1 = Julia parameter
;       real(p2) = bailout (try 4)
;       imag(p2) = unused
;       real(p3) = polar angle (bof62) weight (try 1)
;       real(p3) = magnitude (bof60) weight (try 1)
;       calculation performed on variable zc, z used for coloring
;       use decomp=256
;
        zc=pixel, c=p1, iter=1, r=|zc|, maxr=real(p2)
        minr=maxr, weighttot=real(p3)+imag(p3)
        weight62=real(p3)/weighttot, weight60=imag(p3)/weighttot:
;
;       check to see if iterate is closer to origin
;         if so, remember this iterate & distance
;
        if (r<minr)
          minr=r, zmin=zc
          end if
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
;
;       bailout--escape or maximum iterations
;         set "iteration done" flag (iter-1)
;         take minimal iterate's polar angle for bof62 angle
;         take log of minimum distance for bof60 angle
;         add angles with appropriate weights for final angle
;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          angle62=imag(log(zmin))
          angle60=log(minr)
          angle=weight62*angle62+weight60*angle60
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
	}
