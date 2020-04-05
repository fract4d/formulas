MandExpGhost { ; Ron Barnett, 1998  - modified from Kerry Mitchell
        ;
        ; colors Mandelbrot set by combining the smoothed iteration
        ; with a background of rays from the center
        ;
        ; use decomp=256
        ; real(p1) = bailout
        ; imag(p1) = "ghost" adjustment: set to 0 for only
        ;   background rays, try 2
        ; calculation performed on variable zc, z used for coloring
        ;
        maxr = real(p1), scale = imag(p1)*pi/128
        iterexp = 0, iter = 1, zc = 0, c = pixel, background = pixel:
        iterexp = iterexp + exp(-cabs(zc)), iter = iter + 1, zc = sqr(zc)+c
        ;
        ; bailout
        ;   compute smoothed iteration as "angle"
        ;   multiply angle by background to get final z
        ;   set z to background for interior points
        ;   set "iteration done" flag (iter=-1)
        ;
        IF ((|zc| > maxr) || (iter == maxit))
          smooth = iterexp*scale
          ang = cos(smooth)+flip(sin(smooth))
          z = background*ang
          IF (iter == maxit)
            z = background
          ENDIF
          iter = -1
        ENDIF
        iter > 0
        }


JMaskghost { ; Ron Barnett, 1998
        ; use decomp=256
        ; real(p1) = bailout
        ; imag(p1) = "ghost" adjustment: 
        maxr = real(p1), scale = imag(p1)*pi/128
        iterexp = 0, iter = 1, zc = fn1(pixel), background = pixel:
        iterexp = iterexp + exp(-cabs(zc)), iter = iter + 1
        zc = P2*fn2(zc)^2 + P3
        IF ((cabs(zc) > maxr) || (iter == maxit))
          smooth = iterexp*scale
          ang = cos(smooth)+flip(sin(smooth))
          z = background*ang
          IF (iter == maxit)
            z = background
          ENDIF
          iter = -1
        ENDIF
        iter > 0
        }

CmplxNewtghost { ; Ron Barnett, 1998
        ; use decomp=256
        ; real(p1) = bailout
        ; imag(p1) = "ghost" adjustment:
        ; p2 = complex power
        ; p3 = complex root
        maxr = real(p1), scale = imag(p1)*pi/128
        oldz = 0
        iterexp = 0, iter = 1, zc = pixel, background = pixel:
        iterexp = iterexp + exp(-1/cabs(oldz - zc)), iter = iter + 1
        oldz = zc
        z1 = (p2-1)*zc^p2 + p3
        z2 = p2*zc^(p2-1)
        zc = z1/z2 
        IF ((0.000001 > cabs(oldz-zc)) || (iter == maxit))
          smooth = iterexp*scale
          ang = cos(smooth)+flip(sin(smooth))
          z = background*ang
          IF (iter == maxit)
            z = background
          ENDIF
          iter = -1
        ENDIF
        iter > 0
        }

MandExp { ; Ron Barnett, 1998
        ;
        ; colors Mandelbrot set by combining the smoothed iteration
        ; with a plain background
        ;
        ; use decomp=256
        ; real(p1) = bailout
        ; imag(p1) = color spread adjustment
        ; real(p2) = background color
        ; calculation performed on variable zc, z used for coloring
        ;
        maxr = real(p1)
        scale = imag(p1)*pi/128
        iterexp = 0, iter = 1, zc = 0, c = pixel, background = real(p2):
        iterexp = iterexp + exp(-cabs(zc)), iter = iter + 1, zc = sqr(zc)+c
        IF ((|zc| > maxr) || (iter == maxit))
          smooth = iterexp*scale
          ang = cos(smooth)+flip(sin(smooth))
          z = ang*128/pi
          IF (iter == maxit)
            z = background
          ENDIF
          iter = -1
        ENDIF
        iter > 0
        }

JMaskExp { ; Ron Barnett, 1998
        ; use decomp=256
        ; real(p1) = bailout
        ; imag(p1) = color spread 
        maxr = real(p1), scale = imag(p1)*pi/128
        iterexp = 0, iter = 1, zc = fn1(pixel), background = 0:
        iterexp = iterexp + exp(-cabs(zc)), iter = iter + 1
        zc = P2*fn2(zc)^2 + P3
        IF ((cabs(zc) > maxr) || (iter == maxit))
          smooth = iterexp*scale
          ang = cos(smooth)+flip(sin(smooth))
          z = ang*128/pi
          IF (iter == maxit)
            z = background
          ENDIF
          iter = -1
        ENDIF
        iter > 0
        }

CmplxNewtExp { ; Ron Barnett, 1998
        ; use decomp=256
        ; real(p1) = bailout
        ; imag(p1) = color spread
        ; p2 = complex power
        ; p3 = complex root
        maxr = real(p1), scale = imag(p1)*pi/128
        oldz = 0
        iterexp = 0, iter = 1, zc = pixel, background = 0:
        iterexp = iterexp + exp(-1/cabs(oldz - zc)), iter = iter + 1
        oldz = zc
        z1 = (p2-1)*zc^p2 + p3
        z2 = p2*zc^(p2-1)
        zc = z1/z2 
        IF ((0.000001 > cabs(oldz-zc)) || (iter == maxit))
          smooth = iterexp*scale
          ang = cos(smooth)+flip(sin(smooth))
          z = ang*128/pi
          IF (iter == maxit)
            z = background
          ENDIF
          iter = -1
        ENDIF
        iter > 0
        }

MandExp2 { ; Ron Barnett, 1998
        ;
        ; colors Mandelbrot set by combining the smoothed iteration
        ; with a custom background
        ; use decomp=256
        ; real(p1) = bailout
        ; imag(p1) = color spread adjustment
        ; p2, p3 = background parameter
        ; fn1 = backgrund function
        ; calculation performed on variable zc, z used for coloring
        ;
        maxr = real(p1)
        scale = imag(p1)*pi/128
        iterexp = 0, iter = 1, zc = 0, c = pixel
        background = p2*fn1(real(p3)*pixel+ imag(p3)):
        iterexp = iterexp + exp(-cabs(zc)), iter = iter + 1, zc = sqr(zc)+c
        IF ((cabs(zc) > maxr) || (iter == maxit))
          smooth = iterexp*scale
          ang = cos(smooth)+flip(sin(smooth))
          z = ang*background
          IF (iter == maxit)
            z = background
          ENDIF
          iter = -1
        ENDIF
        iter > 0
        }

MandExpLayers1 { ; Ron Barnett, 2000
        ;
        ; colors Mandelbrot set by combining the smoothed iteration
        ; with a plain background
        ; and adds a second layer with an orbit trap
        ;
        ; use decomp=256
        ; real(p1) = bailout
        ; imag(p1) = color spread adjustment layer 1
        ; real(p2) = background
        ; imag(p2) = color spread adjustment layer 2
        ; real(p3) = palette offset for layer 1
        ; imag(p3) = palette offset for layer 2
        ; calculation performed on variable zc, z used for coloring
        ;
        closest = 1e+38
        maxr = real(p1)
        scale1 = imag(p1)*pi/128
        scale2 = imag(p2)*pi/128
        offset1 = real(p3)*pi/128
        offset2 = imag(p3)*pi/128
        iterexp = 0
        iter = 1
        zc = 0
        c = pixel
        background = real(p2):
        iterexp = iterexp + exp(-cabs(zc))
        iter = iter + 1
        zc = sqr(zc)+c
        d = abs(real(zc)+imag(zc))
        IF (d < closest)
          closest = d   
	ENDIF
        IF ((|zc| > maxr) || (iter == maxit))
          smooth1 = iterexp*scale1+offset1
          ang1 = cos(smooth1)+flip(sin(smooth1))
          smooth2 = closest*scale2+offset2
          ang2 = cos(smooth2)+flip(sin(smooth2))
          z = (whitesq)*ang1*128/pi+(whitesq == 0)*ang2*128/pi
          IF (iter == maxit)
            z = background
          ENDIF
          iter = -1
        ENDIF
        iter > 0
        }

MandExpLayers2 { ; Ron Barnett, 2001
        ;
        ; colors Mandelbrot set by combining the smoothed iteration
        ; with a plain background
        ; and adds a second layer with an orbit trap
        ;
        ; use decomp=256
        ; real(p1) = color spread adjustment layer 1
        ; imag(p1) = color spread adjustment layer 2
        ; real(p2) = palette offset for layer 1
        ; imag(p2) = palette offset for layer 2
        ; real(p3) = trap mask (yes = 1, no = 0, -1 for reverse)
        ; imag(p3) = trap threshold
        ; calculation performed on variable zc, z used for coloring
        ;
        closest = 1e+38
        maxr = 10000
        scale1 = real(p1)*pi/128
        scale2 = imag(p1)*pi/128
        offset1 = real(p2)*pi/128
        offset2 = imag(p2)*pi/128
        IF (imag(p3) == 0)
          p3 = real(p3) + (0,0.1)
        ENDIF
        trap = real(p3)
        threshold = imag(p3)
        iterexp = 0
        iter = 1
        zc = 0
        c = pixel
        background = 0:
        iterexp = iterexp + exp(-cabs(zc))
        iter = iter + 1
        zc = sqr(zc)+c
        d = abs(real(zc)+imag(zc))
        IF (d < closest)
          closest = d   
	ENDIF
        IF ((|zc| > maxr) || (iter == maxit))
          smooth1 = iterexp*scale1+offset1
          ang1 = cos(smooth1)+flip(sin(smooth1))
          smooth2 = closest*scale2+offset2
          ang2 = cos(smooth2)+flip(sin(smooth2))
          IF (trap == 0)
            IF (whitesq == 1)
              z = ang1*128/pi
            ELSE
              z = ang2*128/pi
            ENDIF
          ELSEIF (trap == 1)
            IF (closest > threshold)
              z = ang1*128/pi
            ELSE
              z = ang2*128/pi
            ENDIF
          ELSE
            IF (closest < threshold)
              z = ang1*128/pi
            ELSE
              z = ang2*128/pi
            ENDIF
          ENDIF
        IF (iter == maxit)
          z = background
        ENDIF
          iter = -1
        ENDIF
        iter > 0
        }

MandExpLayers3 { ; Ron Barnett, 2001
        ;
        ; colors Mandelbrot set by combining the smoothed iteration
        ; with a plain background
        ; and adds a second layer with an orbit trap
        ;
        ; use decomp=256
        ; real(p1) = color spread adjustment layer 1
        ; imag(p1) = color spread adjustment layer 2
        ; real(p2) = palette offset for layer 1
        ; imag(p2) = palette offset for layer 2
        ; real(p3) = trap mask (yes = 1, no = 0, reverse = -1)
        ; imag(p3) = trap threshold
        ; calculation performed on variable zc, z used for coloring
        ;
        closest = 1e+38
        maxr = 10000
        scale1 = real(p1)*pi/128
        scale2 = imag(p1)*pi/128
        offset1 = real(p2)*pi/128
        offset2 = imag(p2)*pi/128
        IF (imag(p3) == 0)
          p3 = real(p3) + (0,0.1)
        ENDIF
        trap = real(p3)
        threshold = imag(p3)
        iterexp = 0
        iter = 1
        zc = 0
        c = pixel
        background = 0:
        iterexp = iterexp + exp(-cabs(zc))
        iter = iter + 1
        zc = sqr(zc)+c
        d = abs(real(zc)-ceil(real(zc)))+abs(imag(zc)-floor(imag(zc)))
        IF (d < closest)
          closest = d   
	ENDIF
        IF ((|zc| > maxr) || (iter == maxit))
          smooth1 = iterexp*scale1+offset1
          ang1 = cos(smooth1)+flip(sin(smooth1))
          smooth2 = closest*scale2+offset2
          ang2 = cos(smooth2)+flip(sin(smooth2))
          IF (trap == 0)
            IF (whitesq == 1)
              z = ang1*128/pi
            ELSE
              z = ang2*128/pi
            ENDIF
        ELSEIF (trap == 1)
            IF (closest > threshold)
              z = ang1*128/pi
            ELSE
              z = ang2*128/pi
            ENDIF
        ELSE
            IF (closest < threshold)
              z = ang1*128/pi
            ELSE
              z = ang2*128/pi
            ENDIF
        ENDIF
        IF (iter == maxit)
          z = background
        ENDIF
          iter = -1
        ENDIF
        iter > 0
        }

JuliaExpLayers3 { ; Ron Barnett, 2001
        ;
        ; colors a Julia set by combining the smoothed iteration
        ; with a plain background
        ; and adds a second layer with an orbit trap
        ;
        ; use decomp=256
        ; real(p1) = color spread adjustment layer 1
        ; imag(p1) = color spread adjustment layer 2
        ; real(p2) = palette offset for layer 1
        ; imag(p2) = palette offset for layer 2
        ; p3 = Julia seed
        ; calculation performed on variable zc, z used for coloring
        ;
        closest = 1e+10
        maxr = 10000
        scale1 = real(p1)*pi/128
        scale2 = imag(p1)*pi/128
        offset1 = real(p2)*pi/128
        offset2 = imag(p2)*pi/128
        iterexp = 0
        iter = 1
        zc = pixel
        c = p3
        background = 0:
        iterexp = iterexp + exp(-cabs(zc))
        iter = iter + 1
        zc = sqr(zc)+ c
        d = abs(real(zc)-ceil(real(zc)))+abs(imag(zc)-floor(imag(zc)))
        IF (d < closest)
          closest = d   
	ENDIF
        IF ((|zc| > maxr) || (iter == maxit))
          smooth1 = iterexp*scale1+offset1
          ang1 = cos(smooth1)+flip(sin(smooth1))
          smooth2 = closest*scale2+offset2
          ang2 = cos(smooth2)+flip(sin(smooth2))
          z = (whitesq)*ang1*128/pi+(whitesq == 0)*ang2*128/pi
        IF (iter == maxit)
          z = background
        ENDIF
          iter = -1
        ENDIF
        iter > 0
        }
