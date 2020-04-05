gap_man { ; Kerry MItchell 07sep98
        ;
        ; bails out when orbit falls in the gap between
        ; 2 lines.  lines specified as a*x + b*y = c1 (or c2)
        ; real(p1) = a
        ; imag(p1) = b
        ; real(p2) = c1
        ; imag(p2) = c2
        ; bailout = 1000, use decomp=256
        ;
        zc=0, c=pixel, bailout=1e3, iter=1, done=0
        a=real(p1), b=imag(p1), c1=real(p2), c2=imag(p2)
        fac=pi*2/(c2-c1):
        iter=iter+1, zc=sqr(zc)+c
        q=a*real(zc)+b*imag(zc)
        if((q>=c1)&&(q<=c2))
          done=1
          t=(q-c1)*fac
          z=cos(t)+flip(sin(t))
          endif
        if((|zc|>bailout)||(iter==maxit))
          done=1
          z=1
          endif
        done==0
        }

gap_jul { ; Kerry MItchell 07sep98
        ;
        ; bails out when orbit falls in the gap between
        ; 2 lines.  lines specified as a*x + b*y = c1 (or c2)
        ; p1 = c = Julia parameter
        ; real(p2) = a
        ; imag(p2) = b
        ; real(p3) = c1
        ; imag(p3) = c2
        ; bailout = 1000, use decomp=256
        ;
        c=p1, zc=pixel, bailout=1e3, iter=1, done=0
        a=real(p2), b=imag(p2), c1=real(p3), c2=imag(p3)
        fac=pi*2/(c2-c1):
        iter=iter+1, zc=sqr(zc)+c
        q=a*real(zc)+b*imag(zc)
        if((q>=c1)&&(q<=c2))
          done=1
          t=(q-c1)*fac
          z=cos(t)+flip(sin(t))
          endif
        if((|zc|>bailout)||(iter==maxit))
          done=1
          z=1
          endif
        done==0
        }

gapc_man { ; Kerry MItchell 07sep98
        ;
        ; bails out when orbit falls in the gap between
        ; 2 lines.  lines based on c.
        ; real(p1) determines y-intercept of 1st line
        ; imag(p1) determines y-intercept of 2nd line
        ; bailout = 1000, use decomp=256
        ;
        zc=pixel, c=pixel, bailout=1e3, iter=1, done=0
        a=imag(c), b=-real(c), c1=real(p1), c2=imag(p1)
        fac=pi*2/(c2-c1):
        iter=iter+1, zc=sqr(zc)+c
        q=a*real(zc)+b*imag(zc)
        if((q>=c1)&&(q<=c2))
          done=1
          t=(q-c1)*fac
          z=cos(t)+flip(sin(t))
          endif
        if((|zc|>bailout)||(iter==maxit))
          done=1
          z=1
          endif
        done==0
        }

gapc_jul { ; Kerry MItchell 07sep98
        ;
        ; bails out when orbit falls in the gap between
        ; 2 lines.  lines based on c.
        ; p1 = c = Julia parameter
        ; real(p2) determines y-intercept of 1st line
        ; imag(p2) determines y-intercept of 2nd line
        ; bailout = 1000, use decomp=256
        ;
        c=p1, zc=pixel, bailout=1e3, iter=1, done=0
        a=imag(c), b=-real(c), c1=real(p2), c2=imag(p2)
        fac=pi*2/(c2-c1):
        iter=iter+1, zc=sqr(zc)+c
        q=a*real(zc)+b*imag(zc)
        if((q>=c1)&&(q<=c2))
          done=1
          t=(q-c1)*fac
          z=cos(t)+flip(sin(t))
          endif
        if((|zc|>bailout)||(iter==maxit))
          done=1
          z=1
          endif
        done==0
        }

ring_man { ; Kerry MItchell 07sep98
        ;
        ; bails out when orbit falls in the ring between
        ; 2 concentric circles
        ; p1 = center of circles
        ; real(p2) = radius of inner circle, as a factor or cabs(c)
        ; imag(p2) = radius of outer circle, as a factor of cabs(c)
        ; bailout = 1000, use decomp=256
        ;
        zc=0, c=pixel, bailout=1e3, iter=1, done=0
        center=p1, r1=real(p2), r2=imag(p2), fac=pi*2/(r2-r1):
        iter=iter+1, zc=sqr(zc)+c, r=cabs(zc-center)
        if((r>=r1)&&(r<=r2))
          done=1
          t=(r-r1)*fac
          z=cos(t)+flip(sin(t))
          endif
        if((|zc|>bailout)||(iter==maxit))
          done=1
          z=1
          endif
        done==0
        }

ring_jul { ; Kerry MItchell 07sep98
        ;
        ; bails out when orbit falls in the ring between
        ; 2 concentric circles
        ; p1 = c = Julia parameter
        ; p2 = center of circles
        ; real(p3) = radius of inner circle, as a factor or cabs(c)
        ; imag(p3) = radius of outer circle, as a factor of cabs(c)
        ; bailout = 1000, use decomp=256
        ;
        c=p1, zc=pixel, bailout=1e3, iter=1, done=0
        center=p2, r1=real(p3), r2=imag(p3), fac=pi*2/(r2-r1):
        iter=iter+1, zc=sqr(zc)+c, r=cabs(zc-center)
        if((r>=r1)&&(r<=r2))
          done=1
          t=(r-r1)*fac
          z=cos(t)+flip(sin(t))
          endif
        if((|zc|>bailout)||(iter==maxit))
          done=1
          z=1
          endif
        done==0
        }

ringc_man { ; Kerry MItchell 07sep98
        ;
        ; bails out when orbit falls in the ring between
        ; 2 concentric circles.  center = c.
        ; real(p1) = radius of inner circle, as a factor or cabs(c)
        ; imag(p1) = radius of outer circle, as a factor of cabs(c)
        ; bailout = 1000, use decomp=256
        ;
        zc=pixel, c=pixel, bailout=1e3, iter=1, done=0
        center=c, r1=real(p2)*cabs(c), r2=imag(p2)*cabs(c)
        fac=pi*2/(r2-r1):
        iter=iter+1, zc=sqr(zc)+c, r=cabs(zc-center)
        if((r>=r1)&&(r<=r2))
          done=1
          t=(r-r1)*fac
          z=cos(t)+flip(sin(t))
          endif
        if((|zc|>bailout)||(iter==maxit))
          done=1
          z=1
          endif
        done==0
        }

ringc_jul { ; Kerry MItchell 07sep98
        ;
        ; bails out when orbit falls in the ring between
        ; 2 concentric circles.  center = c.
        ; p1 = c = Julia parameter
        ; real(p2) = radius of inner circle, as a factor or cabs(c)
        ; imag(p2) = radius of outer circle, as a factor of cabs(c)
        ; bailout = 1000, use decomp=256
        ;
        c=p1, zc=pixel, bailout=1e3, iter=1, done=0
        center=c, r1=real(p2)*cabs(c), r2=imag(p2)*cabs(c)
        fac=pi*2/(r2-r1):
        iter=iter+1, zc=sqr(zc)+c, r=cabs(zc-center)
        if((r>=r1)&&(r<=r2))
          done=1
          t=(r-r1)*fac
          z=cos(t)+flip(sin(t))
          endif
        if((|zc|>bailout)||(iter==maxit))
          done=1
          z=1
          endif
        done==0
        }

