{ ; Ron Barnett, 1998
        ; use decomp=256
        ; real(p1) = bailout
        ; imag(p1) = "ghost" adjustment: 
        ; pi = 4*atan(1)
        maxr = real(p1), scale = imag(p1)*pi/128
        iterexp = 0, iter1 = 1, zc = fn1(pixel), background = pixel:
        iterexp = iterexp + exp(-cabs(zc)), iter1 = iter1 + 1
        zc = P2*fn2(zc)^2 + P3
        IF ((cabs(zc) > maxr) || (iter1 == maxit))
          smooth = iterexp*scale
          ang = cos(smooth)+flip(sin(smooth))
          z = background*ang
          IF (iter1 == maxit)
            z = background
          ENDIF
          iter1 = -1
        ENDIF
        iter1 > 0
        }
