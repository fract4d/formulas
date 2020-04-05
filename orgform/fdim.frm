fdim2_man { ; Kerry Mitchell 26sep98
        ;
        ; real(p1) = coloring speed
        ; imag(p1) = plot flag
        ;   1:  plot x fdim
        ;   2:  plot y fdim
        ;   3:  plot r fdim
        ;   other:  x = x fdim, y = y fdim, plot angle
        ;
        zc=0, c=pixel, iter=1, done=0
        speed=real(p1), plotflag=imag(p1)
        xmin=1e12, xmax=-1e12, ymin=1e12, ymax=-1e12
        ssx=0, sx=0, ssy=0, sy=0
        rmin=1e12, rmax=-1e12, ssr=0, sr=0
        :
        iter=iter+1, zc=sqr(zc)+c
        x=real(zc), y=imag(zc), r=cabs(zc)
        ssx=ssx+sqr(x), sx=sx+x
        ssy=ssy+sqr(y), sy=sy+y
        ssr=ssr+sqr(r), sr=sr+r
        if(x<xmin)
          xmin=x
        endif
        if(x>xmax)
          xmax=x
        endif
        if(y<ymin)
          ymin=y
        endif
        if(y>ymax)
          ymax=y
        endif
        if(r<rmin)
          rmin=r
        endif
        if(r>rmax)
          rmax=r
        endif
        if(|zc|>4)
          done=1
          z=1
        endif
        if(iter==maxit)
          done=1
          s=sqrt(ssx-sx*sx/iter)
          fdimx=(xmax-xmin)/s
          s=sqrt(ssy-sy*sy/iter)
          fdimy=(ymax-ymin)/s
          s=sqrt(ssr-sr*sr/iter)
          fdimr=(rmax-rmin)/s
          if(plotflag==1)
            t=speed*fdimx
            z=cos(t)+flip(sin(t))
          elseif(plotflag==2)
            t=speed*fdimy
            z=cos(t)+flip(sin(t))
          elseif(plotflag==3)
            t=speed*fdimr
            z=cos(t)+flip(sin(t))
          else
            z=fdimx+flip(fdimy)
            z=z^speed
          endif
        endif
        done==0
        }

fdim2_jul { ; Kerry Mitchell 26sep98
        ;
        ; p1 = c = Julia parameter
        ; real(p2) = coloring speed
        ; imag(p2) = plot flag
        ;   1:  plot x fdim
        ;   2:  plot y fdim
        ;   3:  plot r fdim
        ;   other:  x = x fdim, y = y fdim, plot angle
        ;
        c=p1, zc=pixel, iter=1, done=0
        speed=real(p2), plotflag=imag(p2)
        xmin=1e12, xmax=-1e12, ymin=1e12, ymax=-1e12
        ssx=0, sx=0, ssy=0, sy=0
        rmin=1e12, rmax=-1e12, ssr=0, sr=0
        :
        iter=iter+1, zc=sqr(zc)+c
        x=real(zc), y=imag(zc), r=cabs(zc)
        ssx=ssx+sqr(x), sx=sx+x
        ssy=ssy+sqr(y), sy=sy+y
        ssr=ssr+sqr(r), sr=sr+r
        if(x<xmin)
          xmin=x
        endif
        if(x>xmax)
          xmax=x
        endif
        if(y<ymin)
          ymin=y
        endif
        if(y>ymax)
          ymax=y
        endif
        if(r<rmin)
          rmin=r
        endif
        if(r>rmax)
          rmax=r
        endif
        if(|zc|>4)
          done=1
          z=1
        endif
        if(iter==maxit)
          done=1
          s=sqrt(ssx-sx*sx/iter)
          fdimx=(xmax-xmin)/s
          s=sqrt(ssy-sy*sy/iter)
          fdimy=(ymax-ymin)/s
          s=sqrt(ssr-sr*sr/iter)
          fdimr=(rmax-rmin)/s
          if(plotflag==1)
            t=speed*fdimx
            z=cos(t)+flip(sin(t))
          elseif(plotflag==2)
            t=speed*fdimy
            z=cos(t)+flip(sin(t))
          elseif(plotflag==3)
            t=speed*fdimr
            z=cos(t)+flip(sin(t))
          else
            z=fdimx+flip(fdimy)
            z=z^speed
          endif
        endif
        done==0
        }

fdim_man { ; Kerry Mitchell 26sep98
        ;
        ; real(p1) = coloring speed
        ; imag(p1) = plot flag
        ;   1:  plot x fdim
        ;   2:  plot y fdim
        ;   other:  x = x fdim, y = y fdim, plot angle
        ;
        zc=0, c=pixel, iter=1, done=0
        speed=real(p1), plotflag=imag(p1)
        xmin=1e12, xmax=0, ymin=1e12, ymax=0
        ssx=0, sx=0, ssy=0, sy=0
        :
        iter=iter+1, zc=sqr(zc)+c
        x=cabs(real(zc)), y=cabs(imag(zc))
        ssx=ssx+sqr(x), sx=sx+x
        ssy=ssy+sqr(y), sy=sy+y
        if(x<xmin)
          xmin=x
        endif
        if(x>xmax)
          xmax=x
        endif
        if(y<ymin)
          ymin=y
        endif
        if(y>ymax)
          ymax=y
        endif
        if(|zc|>4)
          done=1
          z=1
        endif
        if(iter==maxit)
          done=1
          denom=log(iter)
          s=ssx-sx*sx/iter
          numer=-log((xmax-xmin)/(sqrt(s)*iter))
          fdimx=2-1/(0.5+numer/denom)
          s=ssy-sy*sy/iter
          numer=-log((ymax-ymin)/(sqrt(s)*iter))
          fdimy=2-1/(0.5+numer/denom)
          if(plotflag==1)
            t=speed*fdimx
            z=cos(t)+flip(sin(t))
          elseif(plotflag==2)
            t=speed*fdimy
            z=cos(t)+flip(sin(t))
          else
            z=fdimx+flip(fdimy)
            z=z^speed
          endif
        endif
        done==0
        }

fdim_jul { ; Kerry Mitchell 26sep98
        ;
        ; p1 = c = Julia parameter
        ; real(p2) = coloring speed
        ; imag(p2) = plot flag
        ;   1:  plot x fdim
        ;   2:  plot y fdim
        ;   other:  x = x fdim, y = y fdim, plot angle
        ;
        c=p1, zc=pixel, iter=1, done=0
        speed=real(p2), plotflag=imag(p2)
        xmin=1e12, xmax=0, ymin=1e12, ymax=0
        ssx=0, sx=0, ssy=0, sy=0
        :
        iter=iter+1, zc=sqr(zc)+c
        x=cabs(real(zc)), y=cabs(imag(zc))
        ssx=ssx+sqr(x), sx=sx+x
        ssy=ssy+sqr(y), sy=sy+y
        if(x<xmin)
          xmin=x
        endif
        if(x>xmax)
          xmax=x
        endif
        if(y<ymin)
          ymin=y
        endif
        if(y>ymax)
          ymax=y
        endif
        if(|zc|>4)
          done=1
          z=1
        endif
        if(iter==maxit)
          done=1
          denom=log(iter)
          s=ssx-sx*sx/iter
          numer=-log((xmax-xmin)/(sqrt(s)*iter))
          fdimx=2-1/(0.5+numer/denom)
          s=ssy-sy*sy/iter
          numer=-log((ymax-ymin)/(sqrt(s)*iter))
          fdimy=2-1/(0.5+numer/denom)
          if(plotflag==1)
            t=speed*fdimx
            z=cos(t)+flip(sin(t))
          elseif(plotflag==2)
            t=speed*fdimy
            z=cos(t)+flip(sin(t))
          else
            z=fdimx+flip(fdimy)
            z=z^speed
          endif
        endif
        done==0
        }

