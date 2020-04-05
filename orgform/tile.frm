tile2julia { ; Kerry Mitchell 17oct98
        ;
        ; Creates tiled backgrounds from 2
        ; Julia sets and adds their polar angles
        ;
        ; p1 = c1 = first Julia parameter
        ; p2 = c2 = second Julia parameter
        ; real(p3) = Julia 1 scale factor
        ; imag(p3) = Julia 2 scale factor
        ;
        ; use small number of iterations (2 - 5) and decomp=256
        ;
        iter=1, c1=p1, c2=p2, x=real(pixel), y=imag(pixel)
        scale1=pi*real(p3), scale2=pi*imag(p3)
        x1=2*cos(scale1*x), y1=2*cos(scale1*y)
        x2=2*sin(scale2*x), y2=2*sin(scale2*y)
        z1=x1+(0.0,1.0)*y1, z2=x2+(0.0,1.0)*y2
        :
        z1=sqr(z1)+c1, z2=sqr(z2)+c2
        iter=iter+1, z=fn1(z1)*fn2(z2)
        iter<maxit
        }
