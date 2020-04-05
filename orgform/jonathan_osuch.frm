

IslandOfChaos(XAXIS_NOPARM)[float=y function=sqr/sin/cosxx] {; 
    ; Jonathan Osuch <osuchj@avalon.net> 
    ; Thu, 31 May 2007 19:57:54
    ; Generalized by Tobey J. E. Reed [76437,375]
    ; Try p1=0, p2=4, fn1=sqr, fn2=sin, fn3=cosxx
    ; Note:  use floating point
    z = p1, x   =  1:
    IF (x < 10)
       z=fn1(z) + pixel
    ELSE
       z=fn2(z) / fn3(z) + pixel
    ENDIF
    x = x+1,
    |z| <= p2
    }

