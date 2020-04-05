starbail_man { ; Kerry Mitchell 09oct98
        ;
        ; Mandelbrot, bails out when orbit enters/leaves 5 point star
        ; p1 = center of star
        ; cabs(real(p2)) = star size of star (try 1)
        ; sign(real(p2)) = in/out flag:
        ;   + = bailout when orbit leaves star
        ;   - = bailout when orbit enters star
        ; imag(p2) = star rotation angle, degrees
        ;   only use angles from 0 to 36 degrees
        ;
        ;  initialize iteration parameters
        ;
        zc=0, c=pixel, done=0, iter=1, bailout=1e12
        pixelflag=0  ; set by hand
        ;
        ;  star parameters
        ;
        center=p1, xcen=real(center), ycen=imag(center)
        r=cabs(real(p2)), inout=1
        if(real(p2)<0)
          inout=0
        endif
        phi=imag(p2)/180*pi, twopi=2*pi, temp=twopi/10
        t0=phi, t1=t0+temp
        t2=t1+temp, t3=t2+temp, t4=t3+temp, t5=t4+temp
        t6=t5+temp, t7=t6+temp, t8=t7+temp, t9=t8+temp
        ;
        ;  set up control points
        ;
        x0=r*cos(t0)+xcen, y0=r*sin(t0)+ycen
        x1=r*cos(t2)+xcen, y1=r*sin(t2)+ycen
        x2=r*cos(t4)+xcen, y2=r*sin(t4)+ycen
        x3=r*cos(t6)+xcen, y3=r*sin(t6)+ycen
        x4=r*cos(t8)+xcen, y4=r*sin(t8)+ycen
        ;
        ;  check pixel to see if it bailed
        ;
        if(pixelflag!=0)
        x=real(zc), y=imag(zc), t=imag(log(zc-center))
        if(t<0)
          t=t+twopi
        endif
        flag=0
        if((t>t0)&&(t<=t1))
          f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
          if(f<0)
            flag=1
          endif
        elseif((t>t1)&&(t<=t2))
          f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
          if(f>0)
            flag=1
          endif
        elseif((t>t2)&&(t<=t3))
          f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
          if(f<0)
            flag=1
          endif
        elseif((t>t3)&&(t<=t4))
          f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
          if(f>0)
            flag=1
          endif
        elseif((t>t4)&&(t<=t5))
          f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
          if(f<0)
            flag=1
          endif
        elseif((t>t5)&&(t<=t6))
          f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
          if(f>0)
            flag=1
          endif
        elseif((t>t6)&&(t<=t7))
          f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
          if(f<0)
            flag=1
          endif
        elseif((t>t7)&&(t<=t8))
          f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
          if(f>0)
            flag=1
          endif
        elseif((t>t8)&&(t<=t9))
          f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
          if(f<0)
            flag=1
          endif
        else
          f=x*(y0-y3)+y*(x3-x0)-x3*y0+x0*y3
          if(f>0)
            flag=1
          endif
        endif
        if(flag==inout)
          done=1
          z=zc-center
        endif
        endif
        :
        ;  standard iteration if pixel didn't bail
        ;
        if(done==0)
        iter=iter+1, zc=sqr(zc)+c
        x=real(zc), y=imag(zc), t=imag(log(zc-center))
        if(t<0)
          t=t+twopi
        endif
        ;
        ;  see if orbit is inside or outside of star
        ;    by checking each side one at a time
        ;
        flag=0
        if((t>t0)&&(t<=t1))
          f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
          if(f<0)
            flag=1
          endif
        elseif((t>t1)&&(t<=t2))
          f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
          if(f>0)
            flag=1
          endif
        elseif((t>t2)&&(t<=t3))
          f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
          if(f<0)
            flag=1
          endif
        elseif((t>t3)&&(t<=t4))
          f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
          if(f>0)
            flag=1
          endif
        elseif((t>t4)&&(t<=t5))
          f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
          if(f<0)
            flag=1
          endif
        elseif((t>t5)&&(t<=t6))
          f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
          if(f>0)
            flag=1
          endif
        elseif((t>t6)&&(t<=t7))
          f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
          if(f<0)
            flag=1
          endif
        elseif((t>t7)&&(t<=t8))
          f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
          if(f>0)
            flag=1
          endif
        elseif((t>t8)&&(t<=t9))
          f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
          if(f<0)
            flag=1
          endif
        else
          f=x*(y0-y3)+y*(x3-x0)-x3*y0+x0*y3
          if(f>0)
            flag=1
          endif
        endif
        ;
        ;  if the orbit was on the appropriate side,
        ;    set "done" flag
        ;    set z to iteration variable for coloring
        ;
        if(flag==inout)
          done=1
          z=zc-center
        ;
        ;  safety valve in case star doesn't catch orbit
        ;  if orbit goes to infinity or max iterations reached:
        ;     set "done" flag
        ;     set z to 1 to differentiate it from star trap
        ;
        elseif((|zc|>bailout)||(iter==maxit))
          done=1
          z=1
        endif
        endif
        done==0
        }

starbail_jul { ; Kerry Mitchell 09oct98
        ;
        ; Julia set, bails out when orbit enters/leaves 5 point star
        ; p1 = Julia parameter
        ; p2 = center of star
        ; cabs(real(p3)) = star size of star (try 1)
        ; sign(real(p3)) = in/out flag:
        ;   + = bailout when orbit leaves star
        ;   - = bailout when orbit enters star
        ; imag(p3) = star rotation angle, degrees
        ;   only use angles from 0 to 36 degrees
        ;
        ;  initialize iteration parameters
        ;
        c=p1, zc=pixel, done=0, iter=1, bailout=1e12
        pixelflag=1  ; set by hand
        ;
        ;  star parameters
        ;
        center=p2, xcen=real(center), ycen=imag(center)
        r=cabs(real(p3)), inout=1
        if(real(p3)<0)
          inout=0
        endif
        phi=imag(p3)/180*pi, twopi=2*pi, temp=twopi/10
        t0=phi, t1=t0+temp
        t2=t1+temp, t3=t2+temp, t4=t3+temp, t5=t4+temp
        t6=t5+temp, t7=t6+temp, t8=t7+temp, t9=t8+temp
        ;
        ;  set up control points
        ;
        x0=r*cos(t0)+xcen, y0=r*sin(t0)+ycen
        x1=r*cos(t2)+xcen, y1=r*sin(t2)+ycen
        x2=r*cos(t4)+xcen, y2=r*sin(t4)+ycen
        x3=r*cos(t6)+xcen, y3=r*sin(t6)+ycen
        x4=r*cos(t8)+xcen, y4=r*sin(t8)+ycen
        ;
        ;  check pixel to see if it bailed
        ;
        if(pixelflag!=0)
        x=real(zc), y=imag(zc), t=imag(log(zc-center))
        if(t<0)
          t=t+twopi
        endif
        flag=0
        if((t>t0)&&(t<=t1))
          f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
          if(f<0)
            flag=1
          endif
        elseif((t>t1)&&(t<=t2))
          f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
          if(f>0)
            flag=1
          endif
        elseif((t>t2)&&(t<=t3))
          f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
          if(f<0)
            flag=1
          endif
        elseif((t>t3)&&(t<=t4))
          f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
          if(f>0)
            flag=1
          endif
        elseif((t>t4)&&(t<=t5))
          f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
          if(f<0)
            flag=1
          endif
        elseif((t>t5)&&(t<=t6))
          f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
          if(f>0)
            flag=1
          endif
        elseif((t>t6)&&(t<=t7))
          f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
          if(f<0)
            flag=1
          endif
        elseif((t>t7)&&(t<=t8))
          f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
          if(f>0)
            flag=1
          endif
        elseif((t>t8)&&(t<=t9))
          f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
          if(f<0)
            flag=1
          endif
        else
          f=x*(y0-y3)+y*(x3-x0)-x3*y0+x0*y3
          if(f>0)
            flag=1
          endif
        endif
        if(flag==inout)
          done=1
          z=zc-center
        endif
        endif
        :
        ;  standard iteration if pixel didn't bail
        ;
        if(done==0)
        iter=iter+1, zc=sqr(zc)+c
        x=real(zc), y=imag(zc), t=imag(log(zc-center))
        if(t<0)
          t=t+twopi
        endif
        ;
        ;  see if orbit is inside or outside of star
        ;    by checking each side one at a time
        ;
        flag=0
        if((t>t0)&&(t<=t1))
          f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
          if(f<0)
            flag=1
          endif
        elseif((t>t1)&&(t<=t2))
          f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
          if(f>0)
            flag=1
          endif
        elseif((t>t2)&&(t<=t3))
          f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
          if(f<0)
            flag=1
          endif
        elseif((t>t3)&&(t<=t4))
          f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
          if(f>0)
            flag=1
          endif
        elseif((t>t4)&&(t<=t5))
          f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
          if(f<0)
            flag=1
          endif
        elseif((t>t5)&&(t<=t6))
          f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
          if(f>0)
            flag=1
          endif
        elseif((t>t6)&&(t<=t7))
          f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
          if(f<0)
            flag=1
          endif
        elseif((t>t7)&&(t<=t8))
          f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
          if(f>0)
            flag=1
          endif
        elseif((t>t8)&&(t<=t9))
          f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
          if(f<0)
            flag=1
          endif
        else
          f=x*(y0-y3)+y*(x3-x0)-x3*y0+x0*y3
          if(f>0)
            flag=1
          endif
        endif
        ;
        ;  if the orbit was on the appropriate side,
        ;    set "done" flag
        ;    set z to iteration variable for coloring
        ;
        if(flag==inout)
          done=1
          z=zc-center
        ;
        ;  safety valve in case star doesn't catch orbit
        ;  if orbit goes to infinity or max iterations reached:
        ;     set "done" flag
        ;     set z to 1 to differentiate it from star trap
        ;
        elseif((|zc|>bailout)||(iter==maxit))
          done=1
          z=1
        endif
        endif
        done==0
        }

starnear_man { ; Kerry Mitchell 09oct98
        ;
        ; Mandelbrot, colors by nearest approach to 5 point star
        ; p1 = center of star
        ; cabs(real(p2)) = star size of star (try 1)
        ; sign(real(p2)) = pixel flag:
        ;   + = don't consider pixel--start after first iteration
        ;   - = consider pixel
        ; imag(p2) = star rotation angle, degrees
        ;   only use angles from 0 to 36 degrees
        ; use decomp=256, bailout hardcoded to 10^12
        ;
        ;  initialize iteration parameters
        ;
        zc=0, c=pixel, done=0, iter=1
        bailout=1e12, fmin=bailout
        ;
        ;  star parameters
        ;
        center=p1, xcen=real(center), ycen=imag(center)
        r=cabs(real(p2)), pixelflag=0
        if(real(p2)<0)
          pixelflag=1
        endif
        phi=imag(p2)/180*pi, twopi=2*pi, temp=twopi/10
        t0=phi, t1=t0+temp
        t2=t1+temp, t3=t2+temp, t4=t3+temp, t5=t4+temp
        t6=t5+temp, t7=t6+temp, t8=t7+temp, t9=t8+temp
        ;
        ;  set up control points
        ;
        x0=r*cos(t0)+xcen, y0=r*sin(t0)+ycen
        x1=r*cos(t2)+xcen, y1=r*sin(t2)+ycen
        x2=r*cos(t4)+xcen, y2=r*sin(t4)+ycen
        x3=r*cos(t6)+xcen, y3=r*sin(t6)+ycen
        x4=r*cos(t8)+xcen, y4=r*sin(t8)+ycen
        ;
        ;  if pixel flag =/= 0, then check pixel for how close
        ;    it is to star
        ;
        if(pixelflag!=0)
          x=real(zc), y=imag(zc), t=imag(log(zc-center))
          if(t<0)
            t=t+twopi
          endif
          if((t>t0)&&(t<=t1))
            f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
          elseif((t>t1)&&(t<=t2))
            f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
          elseif((t>t2)&&(t<=t3))
            f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
          elseif((t>t3)&&(t<=t4))
            f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
          elseif((t>t4)&&(t<=t5))
            f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
          elseif((t>t5)&&(t<=t6))
            f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
          elseif((t>t6)&&(t<=t7))
            f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
          elseif((t>t7)&&(t<=t8))
            f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
          elseif((t>t8)&&(t<=t9))
            f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
          else
            f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
          endif
          fmin=cabs(f)
        endif
        :
        ;  standard iteration, find polar angle of iterate
        ;
        iter=iter+1, zc=sqr(zc)+c
        x=real(zc), y=imag(zc), t=imag(log(zc-center))
        if(t<0)
          t=t+twopi
        endif
        ;
        ;  compute how close iterate is to each side of star
        ;
        if((t>t0)&&(t<=t1))
          f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
        elseif((t>t1)&&(t<=t2))
          f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
        elseif((t>t2)&&(t<=t3))
          f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
        elseif((t>t3)&&(t<=t4))
          f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
        elseif((t>t4)&&(t<=t5))
          f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
        elseif((t>t5)&&(t<=t6))
          f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
        elseif((t>t6)&&(t<=t7))
          f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
        elseif((t>t7)&&(t<=t8))
          f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
        elseif((t>t8)&&(t<=t9))
          f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
        else
          f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
        endif
        f=cabs(f)
        ;
        ;  update minimum distance
        ;
        if(f<fmin)
          fmin=f
          zmin=zc
        endif
        ;
        ;  upon escape or maximum iterations:
        ;    set "done" flag
        ;    use minimum distance from star as polar angle of z
        ;      for use with decomp coloring
        ;
        if((|zc|>bailout)||(iter==maxit))
          done=1
          t=log(fmin)
          z=cos(t)+flip(sin(t))
        endif
        done==0
        }

starnear_jul { ; Kerry Mitchell 09oct98
        ;
        ; Julia set, colors by nearest approach to 5 point star
        ; p1 = Julia parameter
        ; p2 = center of star
        ; cabs(real(p3)) = star size of star (try 1)
        ; sign(real(p3)) = pixel flag:
        ;   + = don't consider pixel--start after first iteration
        ;   - = consider pixel
        ; imag(p3) = star rotation angle, degrees
        ;   only use angles from 0 to 36 degrees
        ; use decomp=256, bailout hardcoded to 10^12
        ;
        ;  initialize iteration parameters
        ;
        c=p1, zc=pixel, done=0, iter=1
        bailout=1e12, fmin=bailout
        ;
        ;  star parameters
        ;
        center=p2, xcen=real(center), ycen=imag(center)
        r=cabs(real(p3)), pixelflag=0
        if(real(p3)<0)
          pixelflag=1
        endif
        phi=imag(p3)/180*pi, twopi=2*pi, temp=twopi/10
        t0=phi, t1=t0+temp
        t2=t1+temp, t3=t2+temp, t4=t3+temp, t5=t4+temp
        t6=t5+temp, t7=t6+temp, t8=t7+temp, t9=t8+temp
        ;
        ;  set up control points
        ;
        x0=r*cos(t0)+xcen, y0=r*sin(t0)+ycen
        x1=r*cos(t2)+xcen, y1=r*sin(t2)+ycen
        x2=r*cos(t4)+xcen, y2=r*sin(t4)+ycen
        x3=r*cos(t6)+xcen, y3=r*sin(t6)+ycen
        x4=r*cos(t8)+xcen, y4=r*sin(t8)+ycen
        ;
        ;  if pixel flag =/= 0, then check pixel for how close
        ;    it is to star
        ;
        if(pixelflag!=0)
          x=real(zc), y=imag(zc), t=imag(log(zc-center))
          if(t<0)
            t=t+twopi
          endif
          if((t>t0)&&(t<=t1))
            f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
          elseif((t>t1)&&(t<=t2))
            f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
          elseif((t>t2)&&(t<=t3))
            f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
          elseif((t>t3)&&(t<=t4))
            f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
          elseif((t>t4)&&(t<=t5))
            f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
          elseif((t>t5)&&(t<=t6))
            f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
          elseif((t>t6)&&(t<=t7))
            f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
          elseif((t>t7)&&(t<=t8))
            f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
          elseif((t>t8)&&(t<=t9))
            f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
          else
            f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
          endif
          fmin=cabs(f)
        endif
        :
        ;  standard iteration, find polar angle of iterate
        ;
        iter=iter+1, zc=sqr(zc)+c
        x=real(zc), y=imag(zc), t=imag(log(zc-center))
        if(t<0)
          t=t+twopi
        endif
        ;
        ;  compute how close iterate is to each side of star
        ;
        if((t>t0)&&(t<=t1))
          f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
        elseif((t>t1)&&(t<=t2))
          f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
        elseif((t>t2)&&(t<=t3))
          f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
        elseif((t>t3)&&(t<=t4))
          f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
        elseif((t>t4)&&(t<=t5))
          f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
        elseif((t>t5)&&(t<=t6))
          f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
        elseif((t>t6)&&(t<=t7))
          f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
        elseif((t>t7)&&(t<=t8))
          f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
        elseif((t>t8)&&(t<=t9))
          f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
        else
          f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
        endif
        f=cabs(f)
        ;
        ;  update minimum distance
        ;
        if(f<fmin)
          fmin=f
          zmin=zc
        endif
        ;
        ;  upon escape or maximum iterations:
        ;    set "done" flag
        ;    use minimum distance from star as polar angle of z
        ;      for use with decomp coloring
        ;
        if((|zc|>bailout)||(iter==maxit))
          done=1
          t=log(fmin)
          z=cos(t)+flip(sin(t))
        endif
        done==0
        }

star-inout { ; Kerry Mitchell 09oct98
        ;
        ; draws 5 point star--1 color inside, 1 color outside
        ; p1 = center of star
        ; real(p2) = size of star (try 1)
        ; imag(p2) = rotation angle, degrees (0 for point at top)
        ; use decomp=256
        ;
        zc=pixel, done=1
        center=p1, xcen=real(center), ycen=imag(center), r=real(p2)
        phi=(imag(p2)+18)/180*pi, twopi=2*pi, temp=twopi/10
        if((phi<0)||(phi>=temp))
          phi=0
        endif
        t0=phi, t1=temp+phi, t2=2*temp+phi, t3=3*temp+phi
        t4=4*temp+phi, t5=5*temp+phi, t6=6*temp+phi
        t7=7*temp+phi, t8=8*temp+phi, t9=9*temp+phi
        x0=r*cos(t0)+xcen, y0=r*sin(t0)+ycen
        x1=r*cos(t2)+xcen, y1=r*sin(t2)+ycen
        x2=r*cos(t4)+xcen, y2=r*sin(t4)+ycen
        x3=r*cos(t6)+xcen, y3=r*sin(t6)+ycen
        x4=r*cos(t8)+xcen, y4=r*sin(t8)+ycen
        :
        x=real(zc), y=imag(zc), t=imag(log(zc-center))
        if(t<0)
          t=t+twopi
        endif
        flag=0
        if((t>t0)&&(t<=t1))
          f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
          if(f<0)
            flag=1
          endif
        elseif((t>t1)&&(t<=t2))
          f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
          if(f>0)
            flag=1
          endif
        elseif((t>t2)&&(t<=t3))
          f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
          if(f<0)
            flag=1
          endif
        elseif((t>t3)&&(t<=t4))
          f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
          if(f>0)
            flag=1
          endif
        elseif((t>t4)&&(t<=t5))
          f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
          if(f<0)
            flag=1
          endif
        elseif((t>t5)&&(t<=t6))
          f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
          if(f>0)
            flag=1
          endif
        elseif((t>t6)&&(t<=t7))
          f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
          if(f<0)
            flag=1
          endif
        elseif((t>t7)&&(t<=t8))
          f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
          if(f>0)
            flag=1
          endif
        elseif((t>t8)&&(t<=t9))
          f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
          if(f<0)
            flag=1
          endif
        else
          f=x*(y0-y3)+y*(x3-x0)-x3*y0+x0*y3
          if(f>0)
            flag=1
          endif
        endif
        z=0
        if(flag==1)
          z=(0.0,1.0)
        endif
        done==0
        }

star { ; Kerry Mitchell 09oct98
        ;
        ; draws 5-point star, not a fractal
        ;
        ; p1 = center of star
        ; real(p2) = size of star (try 1)
        ; imag(p2) = rotation angle, degrees (0 for point at top)
        ; use decomp=256
        ;
        zc=pixel, done=1
        center=p1, xcen=real(center), ycen=imag(center), r=real(p2)
        phi=imag(p2)/180*pi, twopi=2*pi, temp=twopi/10
        t0=phi, t1=temp+phi, t2=2*temp+phi, t3=3*temp+phi
        t4=4*temp+phi, t5=5*temp+phi, t6=6*temp+phi
        t7=7*temp+phi, t8=8*temp+phi, t9=9*temp+phi
        x0=r*cos(t0)+xcen, y0=r*sin(t0)+ycen
        x1=r*cos(t2)+xcen, y1=r*sin(t2)+ycen
        x2=r*cos(t4)+xcen, y2=r*sin(t4)+ycen
        x3=r*cos(t6)+xcen, y3=r*sin(t6)+ycen
        x4=r*cos(t8)+xcen, y4=r*sin(t8)+ycen
        :
        x=real(zc), y=imag(zc), t=imag(log(zc-center))
        if(t<0)
          t=t+twopi
        endif
        if((t>t0)&&(t<=t1))
          f=x*(y0-y2)+y*(x2-x0)-x2*y0+x0*y2
        elseif((t>t1)&&(t<=t2))
          f=x*(y1-y4)+y*(x4-x1)-x4*y1+x1*y4
        elseif((t>t2)&&(t<=t3))
          f=x*(y1-y3)+y*(x3-x1)-x3*y1+x1*y3
        elseif((t>t3)&&(t<=t4))
          f=x*(y2-y0)+y*(x0-x2)-x0*y2+x2*y0
        elseif((t>t4)&&(t<=t5))
          f=x*(y2-y4)+y*(x4-x2)-x4*y2+x2*y4
        elseif((t>t5)&&(t<=t6))
          f=x*(y3-y1)+y*(x1-x3)-x1*y3+x3*y1
        elseif((t>t6)&&(t<=t7))
          f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
        elseif((t>t7)&&(t<=t8))
          f=x*(y4-y2)+y*(x2-x4)-x2*y4+x4*y2
        elseif((t>t8)&&(t<=t9))
          f=x*(y4-y1)+y*(x1-x4)-x1*y4+x4*y1
        else
          f=x*(y3-y0)+y*(x0-x3)-x0*y3+x3*y0
        endif
        t=log(cabs(f))
        z=cos(t)+flip(sin(t))
        done==0
        }

