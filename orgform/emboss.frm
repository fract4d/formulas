emboss-iter_man { ; Kerry Mitchell 11sep98
        ;
        ; "embossing" coloring scheme based on iteration levels
        ; Mandelbrot version
        ;
        ; uses elliptical bailout:  [real(z)*a]^2+[imag(z)*b]^2
        ; real(p1) = a <= 1
        ; imag(p1) = b <= 1
        ; a = b = 1 for strict bailout
        ;
        ; real(p2) = size of contour band
        ; imag(p2) = light source angle, in degrees
        ; use decomp=256 coloring, only 4 colors used
        ;
        ; initialize counters
        ;
        iter=1, done=0
        ;
        ; set up elliptical parameters
        ;
        c=pixel, r=4*cabs(c), r=sqrt(1+r), bailout=|(1+r)/2|
        a=real(p1), b=imag(p1)
        ;
        ; first point is offset from pixel by lightangle
        ; second point is offset from pixel by (lightangle+180 deg)
        ;
        size=real(p2), lightangle=imag(p2)*pi/180
        dr=size*(cos(lightangle)+flip(sin(lightangle)))
        c1=pixel-dr, iter1=0, z1=0
        c2=pixel+dr, iter2=0, z2=0
        ;
        ; 4 variables with different angles for 4 different colors
        ;
        black=(1,0), white=(-1,0), gray=(0,1), other=(0,-1)
        :
        iter=iter+1
        ;
        ; iterate first point, if it hasn't already escaped
        ;
        if(iter1==0)
          z1=sqr(z1)+c1, r=|real(z1)*a|+|imag(z1)*b|
          ;
          ; set bailout counter if first point escaped
          ;
          if(r>bailout)
            iter1=iter
          endif
        endif
        ;
        ; iterate second point, if it hasn't already escaped
        ;
        if(iter2==0)
          z2=sqr(z2)+c2, r=|real(z2)*a|+|imag(z2)*b|
          ;
          ; set bailout counter if second point escaped
          ;
          if(r>bailout)
            iter2=iter
          endif
        endif
        ;
        ; if both points escaped, perform "embossing"
        ;
        if((iter1>0)&&(iter2>0))
          done=1
          ;
          ; color "black" if first point escaped first
          ;
          if(iter1<iter2)
            z=black
          ;
          ; color "white" if second point escaped first
          ;
          elseif(iter2<iter1)
            z=white
          ;
          ; color "gray" if both points escaped at same time
          ;
          else
            z=gray
          endif
        endif
        ;
        ; otherwise, assign z to "other"
        ;
        if(iter==maxit)
          done=1
          z=other
        endif
        ;
        ; continue if nothing happened
        ;
        done==0
        }

emboss-iter_jul { ; Kerry Mitchell 11sep98
        ;
        ; "embossing" coloring scheme based on iteration levels
        ;
        ; uses elliptical bailout:  [real(z)*a]^2+[imag(z)*b]^2
        ; p1 = c = Julia parameter
        ; real(p2) = a <= 1
        ; imag(p2) = b <= 1
        ; a = b = 1 for strict bailout
        ;
        ; real(p3) = size of contour band
        ; imag(p3) = light source angle, in degrees
        ; use decomp=256 coloring, only 4 colors used
        ;
        ; initialize counters
        ;
        iter=1, done=0
        ;
        ; set up elliptical parameters
        ;
        c=p1, r=4*cabs(c), r=sqrt(1+r), bailout=|(1+r)/2|
        a=real(p2), b=imag(p2)
        ;
        ; first point is offset from pixel by lightangle
        ; second point is offset from pixel by (lightangle+180 deg)
        ;
        size=real(p3), lightangle=imag(p3)*pi/180
        dr=size*(cos(lightangle)+flip(sin(lightangle)))
        z1=pixel-dr, iter1=0, c1=p1
        z2=pixel+dr, iter2=0, c2=p1
        ;
        ; 4 variables with different angles for 4 different colors
        ;
        black=(1,0), white=(-1,0), gray=(0,1), other=(0,-1)
        :
        iter=iter+1
        ;
        ; iterate first point, if it hasn't already escaped
        ;
        if(iter1==0)
          z1=sqr(z1)+c1, r=|real(z1)*a|+|imag(z1)*b|
          ;
          ; set bailout counter if first point escaped
          ;
          if(r>bailout)
            iter1=iter
          endif
        endif
        ;
        ; iterate second point, if it hasn't already escaped
        ;
        if(iter2==0)
          z2=sqr(z2)+c2, r=|real(z2)*a|+|imag(z2)*b|
          ;
          ; set bailout counter if second point escaped
          ;
          if(r>bailout)
            iter2=iter
          endif
        endif
        ;
        ; if both points escaped, perform "embossing"
        ;
        if((iter1>0)&&(iter2>0))
          done=1
          ;
          ; color "black" if first point escaped first
          ;
          if(iter1<iter2)
            z=black
          ;
          ; color "white" if second point escaped first
          ;
          elseif(iter2<iter1)
            z=white
          ;
          ; color "gray" if both points escaped at same time
          ;
          else
            z=gray
          endif
        endif
        ;
        ; otherwise, assign z to "other"
        ;
        if(iter==maxit)
          done=1
          z=other
        endif
        ;
        ; continue if nothing happened
        ;
        done==0
        }

emboss-iter_newtexplog { ; Kerry Mitchell 10oct98
        ;
        ; real(p1) = bailout
        ;
        bailout=real(p1)
        ;
        ; real(p2) = size of contour band
        ; imag(p2) = light source angle, in degrees
        ; use decomp=256 coloring, only 4 colors used
        ;
        ; initialize counters
        ;
        iter=1, done=0
        ;
        ; first point is offset from pixel by lightangle
        ; second point is offset from pixel by (lightangle+180 deg)
        ;
        size=real(p2), lightangle=imag(p2)*pi/180
        dr=size*(cos(lightangle)+flip(sin(lightangle)))
        z1=pixel-dr, iter1=0
        z2=pixel+dr, iter2=0
        ;
        ; 4 variables with different angles for 4 different colors
        ;
        black=(1,0), white=(-1,0), gray=(0,1), other=(0,-1)
        :
        iter=iter+1
        ;
        ; iterate first point, if it hasn't already escaped
        ;
        if(iter1==0)
          fp=exp(z1), f=fp-log(z1), fp=fp-1/z1, dz=f/fp, z1=z1-dz
          ;
          ; set bailout counter if first point escaped
          ;
          if(|dz|<bailout)
            iter1=iter
          endif
        endif
        ;
        ; iterate second point, if it hasn't already escaped
        ;
        if(iter2==0)
          fp=exp(z2), f=fp-log(z2), fp=fp-1/z2, dz=f/fp, z2=z2-dz
          ;
          ; set bailout counter if second point escaped
          ;
          if(|dz|<bailout)
            iter2=iter
          endif
        endif
        ;
        ; if both points escaped, perform "embossing"
        ;
        if((iter1>0)&&(iter2>0))
          done=1
          ;
          ; color "black" if first point escaped first
          ;
          if(iter1<iter2)
            z=black
          ;
          ; color "white" if second point escaped first
          ;
          elseif(iter2<iter1)
            z=white
          ;
          ; color "gray" if both points escaped at same time
          ;
          else
            z=gray
          endif
        endif
        ;
        ; otherwise, assign z to "other"
        ;
        if(iter==maxit)
          done=1
          z=other
        endif
        ;
        ; continue if nothing happened
        ;
        done==0
        }

emboss-iter_newtn { ; Kerry Mitchell 11sep98
        ;
        ; real(p1) = bailout
        ; imag(p1) = exponent
        ;
        n=imag(p1), nm1=n-1, recipn=1/n
        bailout=real(p1), scale=nm1
        ;
        ; real(p2) = size of contour band
        ; imag(p2) = light source angle, in degrees
        ; use decomp=256 coloring, only 4 colors used
        ;
        ; initialize counters
        ;
        iter=1, done=0
        ;
        ; first point is offset from pixel by lightangle
        ; second point is offset from pixel by (lightangle+180 deg)
        ;
        size=real(p2), lightangle=imag(p2)*pi/180
        dr=size*(cos(lightangle)+flip(sin(lightangle)))
        z1=pixel-dr, iter1=0
        z2=pixel+dr, iter2=0
        ;
        ; 4 variables with different angles for 4 different colors
        ;
        black=(1,0), white=(-1,0), gray=(0,1), other=(0,-1)
        :
        iter=iter+1
        ;
        ; iterate first point, if it hasn't already escaped
        ;
        if(iter1==0)
          fp=z1^nm1, f=z1*fp+1, dz=f/fp*recipn, z1=z1-dz
          ;
          ; set bailout counter if first point escaped
          ;
          if(|dz|<bailout)
            iter1=iter
          endif
        endif
        ;
        ; iterate second point, if it hasn't already escaped
        ;
        if(iter2==0)
          fp=z2^nm1, f=z2*fp+1, dz=f/fp*recipn, z2=z2-dz
          ;
          ; set bailout counter if second point escaped
          ;
          if(|dz|<bailout)
            iter2=iter
          endif
        endif
        ;
        ; if both points escaped, perform "embossing"
        ;
        if((iter1>0)&&(iter2>0))
          done=1
          ;
          ; color "black" if first point escaped first
          ;
          if(iter1<iter2)
            z=black
          ;
          ; color "white" if second point escaped first
          ;
          elseif(iter2<iter1)
            z=white
          ;
          ; color "gray" if both points escaped at same time
          ;
          else
            z=gray
          endif
        endif
        ;
        ; otherwise, assign z to "other"
        ;
        if(iter==maxit)
          done=1
          z=other
        endif
        ;
        ; continue if nothing happened
        ;
        done==0
        }

emboss-iter_genman { ; Kerry Mitchell 19sep98
        ;
        ; "embossing" coloring scheme based on iteration levels
        ; general Mandelbrot version:  z=z^n+c
        ;
        ; real(p1) = bailout
        ; imag(p1) = n
        ;
        ; real(p2) = size of contour band
        ; imag(p2) = light source angle, in degrees
        ; use decomp=256 coloring, only 4 colors used
        ;
        ; initialize counters
        ;
        iter=1, done=0
        c=pixel, bailout=real(p1), n=imag(p1)
        ;
        ; first point is offset from pixel by lightangle
        ; second point is offset from pixel by (lightangle+180 deg)
        ;
        size=real(p2), lightangle=imag(p2)*pi/180
        dr=size*(cos(lightangle)+flip(sin(lightangle)))
        c1=pixel-dr, iter1=0, z1=0
        c2=pixel+dr, iter2=0, z2=0
        ;
        ; 4 variables with different angles for 4 different colors
        ;
        black=(1,0), white=(-1,0), gray=(0,1), other=(0,-1)
        :
        iter=iter+1
        ;
        ; iterate first point, if it hasn't already escaped
        ;
        if(iter1==0)
          z1=z1^n+c1
          ;
          ; set bailout counter if first point escaped
          ;
          if(|z1|>bailout)
            iter1=iter
          endif
        endif
        ;
        ; iterate second point, if it hasn't already escaped
        ;
        if(iter2==0)
          z2=z2^n+c2
          ;
          ; set bailout counter if second point escaped
          ;
          if(|z2|>bailout)
            iter2=iter
          endif
        endif
        ;
        ; if both points escaped, perform "embossing"
        ;
        if((iter1>0)&&(iter2>0))
          done=1
          ;
          ; color "black" if first point escaped first
          ;
          if(iter1<iter2)
            z=black
          ;
          ; color "white" if second point escaped first
          ;
          elseif(iter2<iter1)
            z=white
          ;
          ; color "gray" if both points escaped at same time
          ;
          else
            z=gray
          endif
        endif
        ;
        ; otherwise, assign z to "other"
        ;
        if(iter==maxit)
          done=1
          z=other
        endif
        ;
        ; continue if nothing happened
        ;
        done==0
        }

emboss-iter_genjul { ; Kerry Mitchell 19sep98
        ;
        ; "embossing" coloring scheme based on iteration levels
        ; general Julia version:  z=z^n+c
        ;
        ; p1 = c = Julia parameter
        ; real(p2) = bailout
        ; imag(p2) = n
        ;
        ; real(p3) = size of contour band
        ; imag(p3) = light source angle, in degrees
        ; use decomp=256 coloring, only 4 colors used
        ;
        ; initialize counters
        ;
        iter=1, done=0
        c=p1, bailout=real(p2), n=imag(p2)
        ;
        ; first point is offset from pixel by lightangle
        ; second point is offset from pixel by (lightangle+180 deg)
        ;
        size=real(p3), lightangle=imag(p3)*pi/180
        dr=size*(cos(lightangle)+flip(sin(lightangle)))
        z1=pixel-dr, iter1=0, c1=p1
        z2=pixel+dr, iter2=0, c2=p1
        ;
        ; 4 variables with different angles for 4 different colors
        ;
        black=(1,0), white=(-1,0), gray=(0,1), other=(0,-1)
        :
        iter=iter+1
        ;
        ; iterate first point, if it hasn't already escaped
        ;
        if(iter1==0)
          z1=z1^n+c1
          ;
          ; set bailout counter if first point escaped
          ;
          if(|z1|>bailout)
            iter1=iter
          endif
        endif
        ;
        ; iterate second point, if it hasn't already escaped
        ;
        if(iter2==0)
          z2=z2^n+c2
          ;
          ; set bailout counter if second point escaped
          ;
          if(|z2|>bailout)
            iter2=iter
          endif
        endif
        ;
        ; if both points escaped, perform "embossing"
        ;
        if((iter1>0)&&(iter2>0))
          done=1
          ;
          ; color "black" if first point escaped first
          ;
          if(iter1<iter2)
            z=black
          ;
          ; color "white" if second point escaped first
          ;
          elseif(iter2<iter1)
            z=white
          ;
          ; color "gray" if both points escaped at same time
          ;
          else
            z=gray
          endif
        endif
        ;
        ; otherwise, assign z to "other"
        ;
        if(iter==maxit)
          done=1
          z=other
        endif
        ;
        ; continue if nothing happened
        ;
        done==0
        }

