hermanm_jul-polar { ; Kerry Mitchell 16feb98
        ;
        ; p1 = Julia parameter
        ; real(p2) = z exponent (use integer >= 2; m=n-1)
        ; imag(p2) = g exponent (integers)
        ; real(p3) = alpha magnitude (try 1)
        ; imag(p3) = alpha polar angle (try integers)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        ; coloring speed hardcoded to 4
        ;
        z=pixel, c=p1, iter=1, n=real(p2), m=imag(p2), nfac=2*n-1
        maxr=1e6, minr=1/maxr, speed=4*pi/128
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

hermanm_jul-cart { ; Kerry Mitchell 16feb98
        ;
        ; p1 = Julia parameter
        ; real(p2) = z exponent (use integer >= 2; m=n-1)
        ; imag(p2) = g exponent (integers)
        ; p3 = alpha (go nuts)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        ; coloring speed hardcoded to 4
        ;
        z=pixel, c=p1, iter=1, n=real(p2), m=imag(p2), nfac=2*n-1
        maxr=1e6, minr=1/maxr, speed=4*pi/128, alpha=p3
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

hermanm_man-cart { ; Kerry Mitchell 16feb98
        ;
        ; real(p1) = z exponent (use integer >= 2; m=n-1)
        ; imag(p1) = g exponent (integers)
        ; p2 = alpha
        ; real(p3) = critical point selector (>0 for positive root)
        ; imag(p3) = unused                  (<0 for negative root)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        ; coloring speed hardcoded to 4
        ;
        c=pixel, iter=1, n=real(p1), m=imag(p1), nfac=2*n-1
        maxr=1e6, minr=1/maxr, speed=4*pi/128, alpha=p2
        oln=1/log(n), fac=log(0.5*log(maxr))
        c2=sqr(c), hypnum=sqr(n)+sqr(m), pn=1
        hypden=sqr(n-m), hypfac=hypnum/hypden
        if (real(p3)<0)
          pn=-1
          end if
        if (real(c2)>hypfac)
          pn=-pn
        end if
        if (imag(c)<0)
          pn=-pn
        end if
        afac=c*n, bfac=c2*(n-m)+(n+m), cfac=c*n
        d=sqrt(bfac*bfac-4*afac*cfac)
        z=(bfac+pn*d)/(2*afac)
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

hermanm_man-polar { ; Kerry Mitchell 16feb98
        ;
        ; real(p1) = z exponent (use integer >= 2; m=n-1)
        ; imag(p1) = g exponent (integers)
        ; real(p2) = alpha magnitude (try 1)
        ; imag(p2) = alpha polar angle (try integers)
        ; real(p3) = critical point selector (>0 for positive root)
        ; imag(p3) = unused                  (<0 for negative root)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        ; coloring speed hardcoded to 4
        ;
        c=pixel, iter=1, n=real(p1), m=imag(p1), nfac=2*n-1
        maxr=1e6, minr=1/maxr, speed=4*pi/128
        r=real(p2), t=imag(p2), alpha=r*(cos(t)+flip(sin(t)))
        oln=1/log(n), fac=log(0.5*log(maxr))
        c2=sqr(c), hypnum=sqr(n)+sqr(m), pn=1
        hypden=sqr(n-m), hypfac=hypnum/hypden
        if (real(p3)<0)
          pn=-1
          end if
        if (real(c2)>hypfac)
          pn=-pn
        end if
        if (imag(c)<0)
          pn=-pn
        end if
        afac=c*n, bfac=c2*(n-m)+(n+m), cfac=c*n
        d=sqrt(bfac*bfac-4*afac*cfac)
        z=(bfac+pn*d)/(2*afac)
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

hermanm_alpha { ; Kerry Mitchell 16feb98
        ;
        ; real(p1) = z exponent (use integer >= 2; m=n-1)
        ; imag(p1) = g exponent (integers)
        ; p2 = c
        ; real(p3) = critical point selector (>0 for positive root)
        ; imag(p3) = unused                  (<0 for negative root)
        ; use decomp=256
        ; zero and infinity bailouts hardcoded to 1e-6, 1e6
        ; coloring speed hardcoded to 4
        ;
        c=p2, iter=1, n=real(p1), m=imag(p1), nfac=2*n-1
        maxr=1e6, minr=1/maxr, speed=4*pi/128, alpha=pixel
        oln=1/log(n), fac=log(0.5*log(maxr))
        c2=sqr(c), hypnum=sqr(n)+sqr(m), pn=1
        hypden=sqr(n-m), hypfac=hypnum/hypden
        if (real(p3)<0)
          pn=-1
          end if
        if (real(c2)>hypfac)
          pn=-pn
        end if
        if (imag(c)<0)
          pn=-pn
        end if
        afac=c*n, bfac=c2*(n-m)+(n+m), cfac=c*n
        d=sqrt(bfac*bfac-4*afac*cfac)
        z=(bfac+pn*d)/(2*afac)
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

