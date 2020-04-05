range-r_jul { ; Kerry Mitchell 23jan98
        ;
        ; colors Julia set only when magnitude of iterate
        ; falls in certain range; range explicity specified
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = unused
        ; real(p3) = lower bound of range (try 0.05)
        ; imag(p3) = upper bound of range (try 0.06)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), iter=1, z=1
        lo=real(p3), hi=imag(p3):
        ;
        ; iteration
        ;   if magnitude of iterate falls into range, save iterate
        ;
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
        if ((r>lo)&&(r<hi))
          z=zc
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          end if
        iter>0
        }

range-r-1_jul { ; Kerry Mitchell 23jan98
        ;
        ; colors Julia set only when magnitude of iterate
        ; falls in certain range; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = unused
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by |c|
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), iter=1
        z=1, fac=|c|
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac:
        ;
        ; iteration
        ;   if magnitude of iterate falls into range, save iterate
        ;
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
        if ((r>lo)&&(r<hi))
          z=zc
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          end if
        iter>0
        }

range-r-2_jul { ; Kerry Mitchell 23jan98
        ;
        ; colors Julia set only when magnitude of iterate
        ; falls in certain range; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = unused
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by |sqr(c)+c|
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), iter=1
        z=1, fac=|sqr(c)+c|
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac:
        ;
        ; iteration
        ;   if magnitude of iterate falls into range, save iterate
        ;
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
        if ((r>lo)&&(r<hi))
          z=zc
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          end if
        iter>0
        }

range-r-3_jul { ; Kerry Mitchell 23jan98
        ;
        ; colors Julia set only when magnitude of iterate
        ; falls in certain range; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = unused
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by |sqr(sqr(c)+c)+c|
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), iter=1
        z=1, fac=|sqr(sqr(c)+c)+c|
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac:
        ;
        ; iteration
        ;   if magnitude of iterate falls into range, save iterate
        ;
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
        if ((r>lo)&&(r<hi))
          z=zc
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          end if
        iter>0
        }

range-x_jul { ; Kerry Mitchell 23jan98
        ;
        ; colors Julia set by imaginary part of iterate, only
        ; when real part of iterate falls in certain range;
        ; range specified explicitly
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 16)
        ; real(p3) = lower end of range (try 0.05)
        ; imag(p3) = upper end of range (try 0.06)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2)
        iter=1, angle=0, lo=real(p3), hi=imag(p3):
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   scale imaginary part into decomp angle
        ;
        iter=iter+1, zc=sqr(zc)+c, r=real(zc)
        if ((r>lo)&&(r<hi))
          angle=scale*imag(zc)
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

range-x-1_jul { ; Kerry Mitchell 23jan98
        ;
        ; colors Julia set by imaginary part of iterate, only
        ; when real part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 16)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by real(c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        angle=0, fac=real(c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          end if
        :
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   scale imaginary part into decomp angle
        ;
        iter=iter+1, zc=sqr(zc)+c, r=real(zc)
        if ((r>lo)&&(r<hi))
          angle=scale*imag(zc)
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

range-x-2_jul { ; Kerry Mitchell 23jan98
        ;
        ; colors Julia set by imaginary part of iterate, only
        ; when real part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 16)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by real(sqr(c)+c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        angle=0, fac=real(sqr(c)+c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          end if
        :
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   scale imaginary part into decomp angle
        ;
        iter=iter+1, zc=sqr(zc)+c, r=real(zc)
        if ((r>lo)&&(r<hi))
          angle=scale*imag(zc)
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

range-x-3_jul { ; Kerry Mitchell 23jan98
        ;
        ; colors Julia set by imaginary part of iterate, only
        ; when real part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 16)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by real(sqr(sqr(c)+c)+c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        angle=0, fac=real(sqr(sqr(c)+c)+c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          end if
        :
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   scale imaginary part into decomp angle
        ;
        iter=iter+1, zc=sqr(zc)+c, r=real(zc)
        if ((r>lo)&&(r<hi))
          angle=scale*imag(zc)
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

range-y_jul { ; Kerry Mitchell 23jan98
        ;
        ; colors Julia set by real part of iterate, only
        ; when imaginary part of iterate falls in certain range;
        ; range specified explicitly
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 16)
        ; real(p3) = lower end of range (try 0.05)
        ; imag(p3) = upper end of range (try 0.06)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2)
        iter=1, angle=0, lo=real(p3), hi=imag(p3):
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   scale real part into decomp angle
        ;
        iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
        if ((r>lo)&&(r<hi))
          angle=scale*real(zc)
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

range-y-1_jul { ; Kerry Mitchell 23jan98
        ;
        ; colors Julia set by real part of iterate, only when
        ; imaginary part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 16)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by imag(c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        angle=0, fac=imag(c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          end if
        :
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   scale real part into decomp angle
        ;
        iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
        if ((r>lo)&&(r<hi))
          angle=scale*real(zc)
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

range-y-2_jul { ; Kerry Mitchell 23jan98
        ;
        ; colors Julia set by real part of iterate, only when
        ; imaginary part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 16)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by imag(sqr(c)+c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        angle=0, fac=imag(sqr(c)+c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          end if
        :
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   scale real part into decomp angle
        ;
        iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
        if ((r>lo)&&(r<hi))
          angle=scale*real(zc)
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

range-y-3_jul { ; Kerry Mitchell 23jan98
        ;
        ; colors Julia set by real part of iterate, only when
        ; imaginary part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 16)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by imag(sqr(sqr(c)+c)+c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        angle=0, fac=imag(sqr(sqr(c)+c)+c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          end if
        :
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   scale real part into decomp angle
        ;
        iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
        if ((r>lo)&&(r<hi))
          angle=scale*real(zc)
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to last time
        ;     imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

rangecount-r_jul { ; Kerry Mitchell 23jan98
        ;
        ; colors Julia set only when magnitude of iterate
        ; falls in certain range; range explicity specified
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = lower bound of range (try 0.05)
        ; imag(p3) = upper bound of range (try 0.06)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2)
        iter=1, count=0, lo=real(p3), hi=imag(p3):
        ;
        ; iteration
        ;   if magnitude of iterate falls into range,
        ;     increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
        if ((r>lo)&&(r<hi))
          count=count+1
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

rangecount-r-1_jul { ; Kerry Mitchell 23jan98
        ;
        ; colors Julia set only when magnitude of iterate
        ; falls in certain range; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by |c|
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2)
        iter=1, count=0, fac=|c|
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac:
        ;
        ; iteration
        ;   if magnitude of iterate falls into range,
        ;     increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
        if ((r>lo)&&(r<hi))
          count=count+1
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

rangecount-r-2_jul { ; Kerry Mitchell 23jan98
        ;
        ; colors Julia set only when magnitude of iterate
        ; falls in certain range; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by |sqr(c)+c|
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2)
        iter=1, count=0, fac=|sqr(c)+c|
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac:
        ;
        ; iteration
        ;   if magnitude of iterate falls into range,
        ;     increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
        if ((r>lo)&&(r<hi))
          count=count+1
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

rangecount-r-3_jul { ; Kerry Mitchell 23jan98
        ;
        ; colors Julia set only when magnitude of iterate
        ; falls in certain range; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by |sqr(sqr(c)+c)+c|
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2)
        iter=1, count=0, fac=|sqr(sqr(c)+c)+c|
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac:
        ;
        ; iteration
        ;   if magnitude of iterate falls into range,
        ;     increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=|zc|
        if ((r>lo)&&(r<hi))
          count=count+1
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times iterate was within range
        ;   if iterate was never in range, z was initially set to 1
        ;     so decomp with use color 0
        ;
        if ((r>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

rangecount-x_jul { ; Kerry Mitchell 23jan98
        ;
        ; colors Julia set according to how many times real
        ; part of iterate falls in certain range;
        ; range specified explicitly
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = lower end of range (try 0.05)
        ; imag(p3) = upper end of range (try 0.06)
        ; center of range is multiplied by real(c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2)
        iter=1, count=0, lo=real(p3), hi=imag(p3):
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=real(zc)
        if ((r>lo)&&(r<hi))
          count=count+1
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

rangecount-x-1_jul { ; Kerry Mitchell 23jan98
        ;
        ; colors Julia set according to how many times real
        ; part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by real(c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        count=0, fac=real(c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          end if
        :
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=real(zc)
        if ((r>lo)&&(r<hi))
          count=count+1
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

rangecount-x-2_jul { ; Kerry Mitchell 23jan98
        ;
        ; colors Julia set according to how many times real
        ; part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by real(sqr(c)+c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        count=0, fac=real(sqr(c)+c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          end if
        :
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=real(zc)
        if ((r>lo)&&(r<hi))
          count=count+1
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

rangecount-x-3_jul { ; Kerry Mitchell 23jan98
        ;
        ; colors Julia set according to how many times real
        ; part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by real(sqr(sqr(c)+c)+c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        count=0, fac=real(sqr(sqr(c)+c)+c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          end if
        :
        ;
        ; iteration
        ;   if real part of iterate falls into range,
        ;   increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=real(zc)
        if ((r>lo)&&(r<hi))
          count=count+1
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times real part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

rangecount-y_jul { ; Kerry Mitchell 23jan98
        ;
        ; colors Julia set according to how many times imaginary
        ; part of iterate falls in certain range;
        ; range specified explicitly
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = lower end of range (try 0.05)
        ; imag(p3) = upper end of range (try 0.1)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2)
        iter=1, count=0, lo=real(p3), hi=imag(p3):
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
        if ((r>lo)&&(r<hi))
          count=count+1
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

rangecount-y-1_jul { ; Kerry Mitchell 23jan98
        ;
        ; colors Julia set according to how many times imaginary
        ; part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by imag(c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        count=0, fac=imag(c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          end if
        :
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
        if ((r>lo)&&(r<hi))
          count=count+1
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

rangecount-y-2_jul { ; Kerry Mitchell 23jan98
        ;
        ; colors Julia set according to how many times imaginary
        ; part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by imag(sqr(c)+c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        count=0, fac=imag(sqr(c)+c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          end if
        :
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
        if ((r>lo)&&(r<hi))
          count=count+1
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

rangecount-y-3_jul { ; Kerry Mitchell 23jan98
        ;
        ; colors Julia set according to how many times imaginary
        ; part of iterate falls in certain range;
        ; range specified in terms of c
        ; use decomp=256
        ;
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 4)
        ; imag(p2) = decomposition scale factor (try 1)
        ; real(p3) = center of range (try 1)
        ; imag(p3) = width of range (try 0.1)
        ; center of range is multiplied by imag(sqr(sqr(c)+c)+c)
        ; calculation done on variable zc, z used for coloring
        ;
        zc=pixel, c=p1, maxr=real(p2), scale=imag(p2), iter=1
        count=0, fac=imag(sqr(sqr(c)+c)+c)
        lo=(real(p3)-imag(p3)/2)*fac, hi=(real(p3)+imag(p3)/2)*fac
        if (hi<lo)
          temp=lo, lo=hi, hi=temp
          end if
        :
        ;
        ; iteration
        ;   if imaginary part of iterate falls into range,
        ;   increment counter
        ;
        iter=iter+1, zc=sqr(zc)+c, r=imag(zc)
        if ((r>lo)&&(r<hi))
          count=count+1
          end if
        ;
        ; bailout--escape and maximum iterations treated the same
        ;   set "iteration done" flag (iter=-1)
        ;   decomposition method will color according to how many
        ;     times imaginary part of iterate was within range
        ;   if iterate was never in range, angle was initially set
        ;     to 0, so decomp with use color 0
        ;
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          angle=scale*count
          z=cos(angle)+flip(sin(angle))
          end if
        iter>0
        }

