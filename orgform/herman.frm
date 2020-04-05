herman_man-polar { ; Kerry Mitchell 15feb98
        ;
        ; real(p1) = z exponent (use integer >= 2; m=n-1)
        ; imag(p1) = coloring speed (try 4)
        ; real(p2) = alpha magnitude (try 1)
        ; imag(p2) = alpha polar angle (try integers)
        ; real(p3) = critical point selector (>0 for positive root)
        ; imag(p3) = unused                  (<0 for negative root)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        ;
        c=pixel, iter=1, n=real(p1), m=n-1, nfac=2*n-1
        maxr=1e6, minr=1/maxr, speed=imag(p1)*pi/128
        r=real(p2), t=imag(p2), alpha=r*(cos(t)+flip(sin(t)))
        oln=1/log(n), fac=log(0.5*log(maxr))
        c2=sqr(c), hypfac=sqr(n)+sqr(m), pn=1
        if (real(p3)<0)
          pn=-1
          end if
        if (real(c2)>hypfac)
          pn=-pn
        end if
        if (imag(c)<0)
          pn=-pn
        end if
        d=sqrt((c2-1)*(c2-sqr(nfac)))
        z=(nfac+c2+pn*d)/(2*n*c)
        :
        g=(z-c)/(1-c*z), z=alpha*z^n*g^m
        iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r<minr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r>maxr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          angle=angle+pi
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        iter>0
        }

herman_man-cart { ; Kerry Mitchell 15feb98
        ;
        ; real(p1) = z exponent (use integer >= 2; m=n-1)
        ; imag(p1) = coloring speed (try 4)
        ; p2 = alpha (go wild)
        ; real(p3) = critical point selector (>0 for positive root)
        ; imag(p3) = unused                  (<0 for negative root)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        ;
        c=pixel, iter=1, n=real(p1), m=n-1, nfac=2*n-1
        maxr=1e6, minr=1/maxr, speed=imag(p1)*pi/128
        oln=1/log(n), fac=log(0.5*log(maxr)), alpha=p2
        c2=sqr(c), hypfac=sqr(n)+sqr(m), pn=1
        if (real(p3)<0)
          pn=-1
          end if
        if (real(c2)>hypfac)
          pn=-pn
        end if
        if (imag(c)<0)
          pn=-pn
        end if
        d=sqrt((c2-1)*(c2-sqr(nfac)))
        z=(nfac+c2+pn*d)/(2*n*c)
        :
        g=(z-c)/(1-c*z), z=alpha*z^n*g^m
        iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r<minr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r>maxr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          angle=angle+pi
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        iter>0
        }

herman_jul-polar { ; Kerry Mitchell 15feb98
        ;
        ; p1 = Julia parameter
        ; real(p2) = z exponent (use integer >= 2; m=n-1)
        ; imag(p2) = coloring speed (try 4)
        ; real(p3) = alpha magnitude (try 1)
        ; imag(p3) = alpha polar angle (try integers)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        ;
        z=pixel, c=p1, iter=1, n=real(p2), m=n-1
        maxr=1e6, minr=1/maxr, speed=imag(p2)*pi/128
        r=real(p3), t=imag(p3), alpha=r*(cos(t)+flip(sin(t)))
        oln=1/log(n), fac=log(0.5*log(maxr))
        :
        g=(z-c)/(1-c*z), z=alpha*z^n*g^m
        iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r<minr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r>maxr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          angle=angle+pi
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        iter>0
        }

herman_jul-cart { ; Kerry Mitchell 15feb98
        ;
        ; p1 = Julia parameter
        ; real(p2) = z exponent (use integer >= 2; m=n-1)
        ; imag(p2) = coloring speed (try 4)
        ; p3 = alpha (go nuts)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        ;
        z=pixel, c=p1, iter=1, n=real(p2), m=n-1
        maxr=1e6, minr=1/maxr, speed=imag(p2)*pi/128
        oln=1/log(n), fac=log(0.5*log(maxr)), alpha=p3
        :
        g=(z-c)/(1-c*z), z=alpha*z^n*g^m
        iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r<minr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r>maxr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          angle=angle+pi
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        iter>0
        }

herman_alpha { ; Kerry Mitchell 15feb98
        ;
        ; real(p1) = z exponent (use integer >= 2; m=n-1)
        ; imag(p1) = coloring speed (try 4)
        ; p2 = c
        ; real(p3) = critical point selector (>0 for positive root)
        ; imag(p3) = unused                  (<0 for negative root)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        ;
        alpha=pixel, iter=1, n=real(p1), m=n-1, nfac=2*n-1
        maxr=1e6, minr=1/maxr, speed=imag(p1)*pi/128
        oln=1/log(n), fac=log(0.5*log(maxr)), c=p2
        c2=sqr(c), hypfac=sqr(n)+sqr(m), pn=1
        if (real(p3)<0)
          pn=-1
          end if
        if (real(c2)>hypfac)
          pn=-pn
        end if
        if (imag(c)<0)
          pn=-pn
        end if
        d=sqrt((c2-1)*(c2-sqr(nfac)))
        z=(nfac+c2+pn*d)/(2*n*c)
        :
        g=(z-c)/(1-c*z), z=alpha*z^n*g^m
        iter=iter+1, r=|z|
        ;
        ; orbit trap around 0
        ;   renormalize iteration count via decomp angle
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r<minr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        ;
        ; orbit trap around infinity
        ;   renormalize iteration count via decomp angle
        ;   add pi to angle to separate from 0 orbit trap
        ;   set "iteration done" flag (iter=-1)
        ;
        if (r>maxr)
          angle=(iter+oln*(fac-log(log(cabs(z)))))*speed
          angle=angle+pi
          z=cos(angle)+flip(sin(angle))
          iter=-1
          end if
        iter>0
        }

