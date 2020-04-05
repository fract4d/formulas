conic { ; Kerry Mitchell 11may98
        a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
        e=real(p3), f=imag(p3), iter=-1:
        x=real(pixel), y=imag(pixel)
        t=x*(a*x+b)+y*(c*y+d)+e*x*y+f
        t=log(cabs(t))
	z=cos(t)+flip(sin(t))
        iter>0
        }

conic-mag_jul16 { ; Kerry Mitchell 11may98
        cc=(0.2882,0.0106), zc=pixel, maxr=4, iter=1
        a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
        e=real(p3), f=imag(p3):
        iter=iter+1, zc=sqr(zc)+cc
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          x=real(zc), y=imag(zc)
          t=x*(a*x+b)+y*(c*y+d)+e*x*y+f
          z=cos(t)+flip(sin(t))
          end if
        iter>0
        }

conic-bail_jul16 { ; Kerry Mitchell 11may98
        a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
        cc=(0.2882,0.0106), zc=pixel, iter=1, e=real(p3), f=imag(p3):
        iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
        conic=x*(a*x+b)+y*(c*y+d)+e*x*y+f
        if ((conic>0)||(iter==maxit))
          iter=-1
          z=zc
          end if
        iter>0
        }

conic-count_jul16 { ; Kerry Mitchell 11may98
        cc=(0.2882,0.0106), zc=pixel, maxr=1e12, iter=1
        a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
        e=real(p3), f=imag(p3), kount=0, scale=6.2832:
        iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
        conic=x*(a*x+b)+y*(c*y+d)+e*x*y+f
        if (conic>0)
          kount=kount+1
          end if
        if ((|zc|>maxr)||(iter==maxit))
          t=scale*kount/iter
          z=cos(t)+flip(sin(t))
          iter=-1
          end if
        iter>0
        }

conic-near_jul16 { ; Kerry Mitchell 11may98
        cc=(0.2882,0.0106), zc=pixel, maxr=1e12, minr=maxr, iter=1
        a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
        e=real(p3), f=imag(p3):
        iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
        conic=|x*(a*x+b)+y*(c*y+d)+e*x*y+f|
        if (conic<minr)
          minr=conic
          end if
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          t=log(minr)
          z=cos(t)+flip(sin(t))
          end if
        iter>0
        }

conic-mag_jul2 { ; Kerry Mitchell 11may98
        cc=-2, zc=pixel, maxr=4, iter=1
        a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
        e=real(p3), f=imag(p3):
        iter=iter+1, zc=sqr(zc)+cc
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          x=real(zc), y=imag(zc)
          t=x*(a*x+b)+y*(c*y+d)+e*x*y+f
          z=cos(t)+flip(sin(t))
          end if
        iter>0
        }

conic-bail_jul2 { ; Kerry Mitchell 11may98
        a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
        cc=-2, zc=pixel, iter=1, e=real(p3), f=imag(p3):
        iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
        conic=x*(a*x+b)+y*(c*y+d)+e*x*y+f
        if ((conic>0)||(iter==maxit))
          iter=-1
          z=zc
          end if
        iter>0
        }

conic-count_jul2 { ; Kerry Mitchell 11may98
        cc=-2, zc=pixel, maxr=1e12, iter=1
        a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
        e=real(p3), f=imag(p3), kount=0, scale=6.2832:
        iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
        conic=x*(a*x+b)+y*(c*y+d)+e*x*y+f
        if (conic>0)
          kount=kount+1
          end if
        if ((|zc|>maxr)||(iter==maxit))
          t=scale*kount/iter
          z=cos(t)+flip(sin(t))
          iter=-1
          end if
        iter>0
        }

conic-near_jul2 { ; Kerry Mitchell 11may98
        cc=-2, zc=pixel, maxr=1e12, minr=maxr, iter=1
        a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
        e=real(p3), f=imag(p3):
        iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
        conic=|x*(a*x+b)+y*(c*y+d)+e*x*y+f|
        if (conic<minr)
          minr=conic
          end if
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          t=log(minr)
          z=cos(t)+flip(sin(t))
          end if
        iter>0
        }

conic-mag_juli { ; Kerry Mitchell 11may98
        cc=(0,1), zc=pixel, maxr=4, iter=1
        a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
        e=real(p3), f=imag(p3):
        iter=iter+1, zc=sqr(zc)+cc
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          x=real(zc), y=imag(zc)
          t=x*(a*x+b)+y*(c*y+d)+e*x*y+f
          z=cos(t)+flip(sin(t))
          end if
        iter>0
        }

conic-bail_juli { ; Kerry Mitchell 11may98
        a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
        cc=(0,1), zc=pixel, iter=1, e=real(p3), f=imag(p3):
        iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
        conic=x*(a*x+b)+y*(c*y+d)+e*x*y+f
        if ((conic>0)||(iter==maxit))
          iter=-1
          z=zc
          end if
        iter>0
        }

conic-count_juli { ; Kerry Mitchell 11may98
        cc=(0,1), zc=pixel, maxr=1e12, iter=1
        a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
        e=real(p3), f=imag(p3), kount=0, scale=6.2832:
        iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
        conic=x*(a*x+b)+y*(c*y+d)+e*x*y+f
        if (conic>0)
          kount=kount+1
          end if
        if ((|zc|>maxr)||(iter==maxit))
          t=scale*kount/iter
          z=cos(t)+flip(sin(t))
          iter=-1
          end if
        iter>0
        }

conic-near_juli { ; Kerry Mitchell 11may98
        cc=(0,1), zc=pixel, maxr=1e12, minr=maxr, iter=1
        a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
        e=real(p3), f=imag(p3):
        iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
        conic=|x*(a*x+b)+y*(c*y+d)+e*x*y+f|
        if (conic<minr)
          minr=conic
          end if
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          t=log(minr)
          z=cos(t)+flip(sin(t))
          end if
        iter>0
        }

conic-mag_man { ; Kerry Mitchell 11may98
        zc=0, cc=pixel, maxr=4, iter=1
        a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
        e=real(p3), f=imag(p3):
        iter=iter+1, zc=sqr(zc)+cc
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          x=real(zc), y=imag(zc)
          t=x*(a*x+b)+y*(c*y+d)+e*x*y+f
          z=cos(t)+flip(sin(t))
          end if
        iter>0
        }

conic-bail_man { ; Kerry Mitchell 11may98
        a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
        zc=0, cc=pixel, iter=1, e=real(p3), f=imag(p3):
        iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
        conic=x*(a*x+b)+y*(c*y+d)+e*x*y+f
        if ((conic>0)||(iter==maxit))
          iter=-1
          z=zc
          end if
        iter>0
        }

conic-count_man { ; Kerry Mitchell 11may98
        zc=0, cc=pixel, maxr=1e12, iter=1
        a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
        e=real(p3), f=imag(p3), kount=0, scale=6.2832:
        iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
        conic=x*(a*x+b)+y*(c*y+d)+e*x*y+f
        if (conic>0)
          kount=kount+1
          end if
        if ((|zc|>maxr)||(iter==maxit))
          t=scale*kount/iter
          z=cos(t)+flip(sin(t))
          iter=-1
          end if
        iter>0
        }

conic-near_man { ; Kerry Mitchell 11may98
        zc=0, cc=pixel, maxr=1e12, minr=maxr, iter=1
        a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
        e=real(p3), f=imag(p3):
        iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
        conic=|x*(a*x+b)+y*(c*y+d)+e*x*y+f|
        if (conic<minr)
          minr=conic
          end if
        if ((|zc|>maxr)||(iter==maxit))
          iter=-1
          t=log(minr)
          z=cos(t)+flip(sin(t))
          end if
        iter>0
        }

