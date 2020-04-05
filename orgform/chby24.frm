;Version 1.1
;Copyright (c)1998,1999 Morgan L. Owens
;EG-24{;V.1.1 - earlier versions may be discarded
; = Recurrence
;t=p1,bailout=4,z=fn3(pixel):
;x=real(z),y=imag(z)
;y=y+t*fn1(Function in x)
;x=x-t*fn2(Function in y)
;z=x+flip(y)
;|z|<=bailout}

;
;
;comment{Chebyshev Types:
;       Inspired by Clifford A. Pickover:
;       Dynamic (modified implicit Euler Method)
;}



T02-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler Method)
        ; 
        ; T(n+1) = 2xT(n)-T(n-1)
        ; T(0)  = 1
        ; T(1)  = x
        ;
        ; = 2zT01-T00
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1((x+x)*x-1))
  x=x-t*(fn2((y+y)*y-1))
  z=x+flip(y)
  |z|<=bailout
}


T03-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(4*x*x-3)))
  x=x-t*(fn2(y*(4*y*y-3)))
  z=x+flip(y)
  |z|<=bailout
}


T04-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(8*xx*(xx-1)+1))
  yy=y*y
  x=x-t*(fn2(8*yy*(yy-1)+1))
  z=x+flip(y)
  |z|<=bailout
}


T05-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x*x
  y=y+t*(fn1(x*(ax*(ax-5)+5)))
  ay=4*y*y
  x=x-t*(fn2(x*(ay*(ay-5)+5)))
  z=x+flip(y)
  |z|<=bailout
}


T06-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  y=y+t*(fn1(ax*(8*xx*(ax-3)+9)-1))
  yy=y*y, ay=yy+yy
  x=x-t*(fn2(ay*(8*yy*(ay-3)+9)-1))
  z=x+flip(y)
  |z|<=bailout
}


T07-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(8*xx*((xx+xx)*(4*xx-7)+7)-7)))
  yy=y*y
  x=x-t*(fn2(y*(8*yy*((yy+yy)*(4*yy-7)+7)-7)))
  z=x+flip(y)
  |z|<=bailout
}


T08-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(32*xx*(xx*(4*xx*(xx-2)+5)-1)+1))
  yy=y*y
  x=x-t*(fn2(32*yy*(yy*(4*yy*(yy-2)+5)-1)+1))
  z=x+flip(y)
  |z|<=bailout
}


T09-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, ax=4*xx
  y=y+t*(fn1(x*(8*xx*((xx+xx)*(ax*(ax-9)+27)-15)+9)))
  yy=y*y, ay=4*yy
  x=x-t*(fn2(y*(8*yy*((yy+yy)*(ay*(ay-9)+27)-15)+9)))
  z=x+flip(y)
  |z|<=bailout
}


T10-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx, bx=8*xx
  y=y+t*(fn1(ax*(bx*(ax*(bx*(ax-5)+35)-11)+25)-1))
  yy=y*y, ay=yy+yy, by=8*yy
  x=x-t*(fn2(ay*(by*(ay*(by*(ay-5)+35)-11)+25)-1))
  z=x+flip(y)
  |z|<=bailout
}



U02-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler Method)
        ;
        ; U(n+1) = 2xU(n)-U(n-1)
        ; U(0)  = 1
        ; U(1)  = 2x
        ;
        ; = 2zU01-U00
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(4*x*x-1))
  x=x-t*(fn2(4*y*y-1))
  z=x+flip(y)
  |z|<=bailout
}


U03-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(4*x*((x+x)*x-1)))
  x=x-t*(fn2(4*y*((y+y)*y-1)))
  z=x+flip(y)
  |z|<=bailout
}


U04-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x*x
  y=y+t*(fn1(ax*(ax-3)+1))
  ay=4*y*y
  x=x-t*(fn2(ay*(ay-3)+1))
  z=x+flip(y)
  |z|<=bailout
}


U05-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1((x+x)*(16*xx*(xx-1)+3)))
  yy=y*y
  x=x-t*(fn2((y+y)*(16*yy*(yy-1)+3)))
  z=x+flip(y)
  |z|<=bailout
}


U06-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(8*xx*((xx+xx)*(4*xx-5)+3)-1))
  yy=y*y
  x=x-t*(fn2(8*yy*((yy+yy)*(4*yy-5)+3)-1))
  z=x+flip(y)
  |z|<=bailout
}


U07-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  y=y+t*(fn1(8*x*(ax*(4*xx*(ax-3)+5)-1)))
  yy=y*y, ay=yy+yy
  x=x-t*(fn2(8*y*(ay*(4*yy*(ay-3)+5)-1)))
  z=x+flip(y)
  |z|<=bailout
}


U08-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, ax=4*xx
  y=y+t*(fn1(8*xx*((xx+xx)*(ax*(ax-7)+15)-5)+1))
  yy=y*y, ay=4*yy
  x=x-t*(fn2(8*yy*((yy+yy)*(ay*(ay-7)+15)-5)+1))
  z=x+flip(y)
  |z|<=bailout
}


U09-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, ax=16*xx
  y=y+t*(fn1((x+x)*(ax*(xx*(ax*(xx-2)+17)-5)-3)))
  yy=y*y, ay=16*yy
  x=x-t*(fn2((y+y)*(ay*(yy*(ay*(yy-2)+17)-5)-3)))
  z=x+flip(y)
  |z|<=bailout
}


U10-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, ax=4*xx
  y=y+t*(fn1(ax*(ax*(16*xx*(xx*(ax-9)+6)-35)+7)-1))
  yy=y*y, ay=4*yy
  x=x-t*(fn2(ay*(ay*(16*yy*(yy*(ay-9)+6)-35)+7)-1))
  z=x+flip(y)
  |z|<=bailout
}



S02-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler Method)
        ;
        ; S(n+1) = xS(n)-S(n-1)
        ; S(0)  = 1
        ; S(1)  = x
        ;
        ; = zS01-S00
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*x-1))
  x=x-t*(fn2(y*y-1))
  z=x+flip(y)
  |z|<=bailout
}


S03-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*x-2)))
  x=x-t*(fn2(y*(y*y-2)))
  z=x+flip(y)
  |z|<=bailout
}


S04-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx-3)+1))
  yy=y*y
  x=x-t*(fn2(yy*(yy-3)+1))
  z=x+flip(y)
  |z|<=bailout
}


S05-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx-4)+3)))
  yy=y*y
  x=x-t*(fn2(y*(yy*(yy-4)+3)))
  z=x+flip(y)
  |z|<=bailout
}


S06-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx-5)+6)-1))
  yy=y*y
  x=x-t*(fn2(yy*(yy*(yy-5)+6)-1))
  z=x+flip(y)
  |z|<=bailout
}


S07-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx*(xx-6)+10)-4)))
  yy=y*y
  x=x-t*(fn2(y*(yy*(yy*(yy-6)+10)-4)))
  z=x+flip(y)
  |z|<=bailout
}


S08-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx*(xx-7)+15)-10)+1))
  yy=y*y
  x=x-t*(fn2(yy*(yy*(yy*(yy-7)+15)-10)+1))
  z=x+flip(y)
  |z|<=bailout
}


S09-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx*(xx*(xx-8)+21)-20)+5)))
  yy=y*y
  x=x-t*(fn2(y*(yy*(yy*(yy*(yy-8)+21)-20)+5)))
  z=x+flip(y)
  |z|<=bailout
}


S10-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx*(xx*(xx-9)+28)-35)+15)-1))
  yy=y*y
  x=x-t*(fn2(yy*(yy*(yy*(yy*(yy-9)+28)-35)+15)-1))
  z=x+flip(y)
  |z|<=bailout
}



C02-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler Method)
        ;
        ; C(n+1) = xC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = x
        ;
        ; = zC01-C00
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*x-2))
  x=x-t*(fn2(y*y-2))
  z=x+flip(y)
  |z|<=bailout
}


C03-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*x-3)))
  x=x-t*(fn2(y*(y*y-3)))
  z=x+flip(y)
  |z|<=bailout
}


C04-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx-4)+2))
  yy=y*y
  x=x-t*(fn2(yy*(yy-4)+2))
  z=x+flip(y)
  |z|<=bailout
}


C05-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx-5)+3)))
  yy=y*y
  x=x-t*(fn2(y*(yy*(yy-5)+3)))
  z=x+flip(y)
  |z|<=bailout
}


C06-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx-6)+7)-2))
  yy=y*y
  x=x-t*(fn2(yy*(yy*(yy-6)+7)-2))
  z=x+flip(y)
  |z|<=bailout
}


C07-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx*(xx-7)+12)-5)))
  yy=y*y
  x=x-t*(fn2(y*(yy*(yy*(yy-7)+12)-5)))
  z=x+flip(y)
  |z|<=bailout
}


C08-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx*(xx-8)+18)-12)+2))
  yy=y*y
  x=x-t*(fn2(yy*(yy*(yy*(yy-8)+18)-12)+2))
  z=x+flip(y)
  |z|<=bailout
}


C09-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx*(xx*(xx-9)+25)-24)+7)))
  yy=y*y
  x=x-t*(fn2(y*(yy*(yy*(yy*(yy-9)+25)-24)+7)))
  z=x+flip(y)
  |z|<=bailout
}


C10-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx*(xx*(xx-10)+33)-42)+19)-2))
  yy=y*y
  x=x-t*(fn2(yy*(yy*(yy*(yy*(yy-10)+33)-42)+19)-2))
  z=x+flip(y)
  |z|<=bailout
}



P02-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler Method)
        ;
        ; P(n+1) = ((2n+1)xP(n)-nP(n-1))/(n+1)
        ; P(0)  = 1
        ; P(1)  = x
        ;
        ; = ( 3zP01-1P00)/2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1((3*x*x-1)/2))
  x=x-t*(fn2((3*y*y-1)/2))
  z=x+flip(y)
  |z|<=bailout
}


P03-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 5zP02-2P01)/3
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(5*x*x-3)/2))
  x=x-t*(fn2(y*(5*y*y-3)/2))
  z=x+flip(y)
  |z|<=bailout
}


P04-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 7zP03-3P02)/4
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1((5*xx*(7*xx-6)+3)/8))
  yy=y*y
  x=x-t*(fn2((5*yy*(7*yy-6)+3)/8))
  z=x+flip(y)
  |z|<=bailout
}


P05-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 9zP04-4P03)/5
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(7*xx*(9*xx-10)+15)/8))
  yy=y*y
  x=x-t*(fn2(y*(7*yy*(9*yy-10)+15)/8))
  z=x+flip(y)
  |z|<=bailout
}


P06-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (11zP05-5P04)/6
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1((21*xx*(xx*(11*xx-15)+5)-5)/16))
  yy=y*y
  x=x-t*(fn2((21*yy*(yy*(11*yy-15)+5)-5)/16))
  z=x+flip(y)
  |z|<=bailout
}


P07-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (13zP06-6P05)/7
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(3*xx*(11*xx*(13*xx-21)+105)-35)/16))
  yy=y*y
  x=x-t*(fn2(y*(3*yy*(11*yy*(13*yy-21)+105)-35)/16))
  z=x+flip(y)
  |z|<=bailout
}


P08-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (15zP07-7P06)/8
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1((3*xx*(11*xx*(13*xx*(15*xx-28)+210)-420)+35)/128))
  yy=y*y
  x=x-t*(fn2((3*yy*(11*yy*(13*yy*(15*yy-28)+210)-420)+35)/128))
  z=x+flip(y)
  |z|<=bailout
}


P09-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (17zP08-8P07)/9
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(11*xx*(13*xx*(5*xx*(17*xx-36)+126)-420)+315)/128))
  yy=y*y
  x=x-t*(fn2(y*(11*yy*(13*yy*(5*yy*(17*yy-36)+126)-420)+315)/128))
  z=x+flip(y)
  |z|<=bailout
}


P10-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (19zP09-9P08)/10
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1((11*xx*(13*xx*(xx*(17*xx*(19*xx-45)+630)-210)+315)-63)/256))
  yy=y*y
  x=x-t*(fn2((11*yy*(13*yy*(yy*(17*yy*(19*yy-45)+630)-210)+315)-63)/256))
  z=x+flip(y)
  |z|<=bailout
}



H02-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler Method)
        ;
        ; H(n+1) = 2(xH(n)-nH(n-1))
        ; H(0)  = 1
        ; H(1)  = 2x
        ;
        ; = 2(xH(1)-H(0))
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1((x+x)*(x+x)-2))
  x=x-t*(fn2((y+y)*(y+y)-2))
  z=x+flip(y)
  |z|<=bailout
}


H03-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(4*x*((x+x)*x-3)))
  x=x-t*(fn2(4*y*((y+y)*y-3)))
  z=x+flip(y)
  |z|<=bailout
}


H04-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(4*(4*xx*(xx-3)+3)))
  yy=y*y
  x=x-t*(fn2(4*(4*yy*(yy-3)+3)))
  z=x+flip(y)
  |z|<=bailout
}


H05-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(8*x*(4*xx*(xx-5)-9)))
  yy=y*y
  x=x-t*(fn2(8*y*(4*yy*(yy-5)-9)))
  z=x+flip(y)
  |z|<=bailout
}


H06-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=(x+x)*x
  y=y+t*(fn1(8*(ax*(ax*(ax-15)+21)-15)))
  ay=(y+y)*y
  x=x-t*(fn2(8*(ay*(ay*(ay-15)+21)-15)))
  z=x+flip(y)
  |z|<=bailout
}


H07-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=(x+x)*x
  y=y+t*(fn1(16*x*(ax*(ax*(ax-21)+81)+39)))
  ay=(y+y)*y
  x=x-t*(fn2(16*y*(ay*(ay*(ay-21)+81)+39)))
  z=x+flip(y)
  |z|<=bailout
}


H08-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  y=y+t*(fn1(16*(4*xx*(ax*(ax*(xx-14)+93)-93)+105)))
  yy=y*y, ay=yy+yy
  x=x-t*(fn2(16*(4*yy*(ay*(ay*(yy-14)+93)-93)+105)))
  z=x+flip(y)
  |z|<=bailout
}


H09-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  y=y+t*(fn1(32*x*(4*xx*(ax*(ax*(xx-18)+177)-417)-207)))
  yy=y*y, ay=yy+yy
  x=x-t*(fn2(32*y*(4*yy*(ay*(ay*(yy-18)+177)-417)-207)))
  z=x+flip(y)
  |z|<=bailout
}


H10-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x, ax=xx+xx
  y=y+t*(fn1(32*(ax*(4*xx*(ax*(xx*(ax-45)+303)-1254)+1467)-945)))
  yy=y*y, ay=yy+yy
  x=x-t*(fn2(32*(ay*(4*yy*(ay*(yy*(ay-45)+303)-1254)+1467)-945)))
  z=x+flip(y)
  |z|<=bailout
}



He02-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler Method)
         ;
         ; He(n+1) = xHe(n)-nHe(n-1)
         ; He(0)  = 1
         ; He(1)  = sqrt(2)x
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2), t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(s*x*x-1))
  x=x-t*(fn2(s*y*y-1))
  z=x+flip(y)
  |z|<=bailout
}


He03-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2), t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(s*(x*x-2)-1)))
  x=x-t*(fn2(y*(s*(y*y-2)-1)))
  z=x+flip(y)
  |z|<=bailout
}


He04-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2), t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(s*(xx-5)-1)+3))
  yy=y*y
  x=x-t*(fn2(yy*(s*(yy-5)-1)+3))
  z=x+flip(y)
  |z|<=bailout
}


He05-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(s*(xx-9)-1)+a)))
  yy=y*y
  x=x-t*(fn2(y*(yy*(s*(yy-9)-1)+a)))
  z=x+flip(y)
  |z|<=bailout
}


He06-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2), a=33*s+12
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(s*(xx-14)-1)+a)-15))
  yy=y*y
  x=x-t*(fn2(yy*(yy*(s*(yy-14)-1)+a)-15))
  z=x+flip(y)
  |z|<=bailout
}


He07-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2), a=87*s+18, b=8*s-57
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx*(s*(xx-20)-1)+a)+b)))
  yy=y*y
  x=x-t*(fn2(y*(yy*(yy*(s*(yy-20)-1)+a)+b)))
  z=x+flip(y)
  |z|<=bailout
}


He08-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2), a=185*s+25, b=41*s-141
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx*(s*(xx-27)-1)+a)+b)+105))
  yy=y*y
  x=x-t*(fn2(yy*(yy*(yy*(s*(yy-27)-1)+a)+b)+105))
  z=x+flip(y)
  |z|<=bailout
}


He09-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2), a=345*s+33, b=136*s-285
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(x*(xx*(xx*(xx*(s*(xx-35)-1)+a)+b)+561)))
  yy=y*y
  x=x-t*(fn2(y*(yy*(yy*(yy*(s*(yy-35)-1)+a)+b)+561)))
  z=x+flip(y)
  |z|<=bailout
}


He10-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2), a=588*s+42, b=321*s-510, c=41*s-1830
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(xx*(xx*(xx*(xx*(s*(xx-44)-1)+a)+b)+c)-945))
  yy=y*y
  x=x-t*(fn2(yy*(yy*(yy*(yy*(s*(yy-44)-1)+a)+b)+c)-945))
  z=x+flip(y)
  |z|<=bailout
}



Ca02-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler Method)
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p1
  b=a+a+2
  t=real(p2), bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(a*(b*x*x-1)))
  x=x-t*(fn2(a*(b*y*y-1)))
  z=x+flip(y)
  |z|<=bailout
}


Ca03-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p1
  b=(a+a)*(a+1)
  c=(a+a+4)/3
  t=real(p2), bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*x*(c*xx-1)))
  yy=y*y
  x=x-t*(fn2(b*y*(c*yy-1)))
  z=x+flip(y)
  |z|<=bailout
}


Ca04-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p1
  b=a*(a+1)/2
  c=4*(a+2)
  d=(a+3)/3
  t=real(p2), bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*(c*xx*(d*xx-1)+1)))
  yy=y*y
  x=x-t*(fn2(b*(c*yy*(d*yy-1)+1)))
  z=x+flip(y)
  |z|<=bailout
}


Ca05-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p1
  b=a*(a*(a+3)+2)/3
  c=4*(a+3)
  d=(a+4)/5
  t=real(p2), bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*x*(c*xx*(d*xx-1)+3)))
  yy=y*y
  x=x-t*(fn2(b*y*(c*yy*(d*yy-1)+3)))
  z=x+flip(y)
  |z|<=bailout
}


Ca06-24 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p1
  b=a*(a*(a+3)+2)/6
  c=a+3
  d=4*(a+4)
  k=(a+a+10)/15
  t=real(p2), bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*(c*xx*(d*xx*(k*xx-1)+3)-1)))
  yy=y*y
  x=x-t*(fn2(b*(c*yy*(d*yy*(k*yy-1)+3)-1)))
  z=x+flip(y)
  |z|<=bailout
}


Ca07-24 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/21
  c=a+a+8
  d=(a+a)*(a+11)/15+4
  k=7*(a+5)/5
  t=real(p2), bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*x*(c*xx*((xx+xx)*(d*xx-k)+7)-7)))
  yy=y*y
  x=x-t*(fn2(b*y*(c*yy*((yy+yy)*(d*yy-k)+7)-7)))
  z=x+flip(y)
  |z|<=bailout
}


Ca08-24 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/360
  c=8*(a+4)
  d=a+5
  k=4*(a+6)
  f=(a+7)/14
  t=real(p2), bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*(c*xx*(d*xx*(k*xx*(f*xx-1)+15)-15)+15)))
  yy=y*y
  x=x-t*(fn2(b*(c*yy*(d*yy*(k*yy*(f*yy-1)+15)-15)+15)))
  z=x+flip(y)
  |z|<=bailout
}


Ca09-24 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c=(a+a)*(a*(a+18)+107)+420
  d=(a+8)/18
  k=7*(a*(9*a+94)+270)/6
  f=35*(a+5)/2
  t=real(p2), bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*x*(16*xx*(xx*(c*xx*(d*xx-1)+k)-f)+105)))
  yy=y*y
  x=x-t*(fn2(b*y*(16*yy*(yy*(c*yy*(d*yy-1)+k)-f)+105)))
  z=x+flip(y)
  |z|<=bailout
}


Ca10-24 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5)
  d=a+a+12
  k=a*(a+15)+56
  f=(a+a+18)/45
  g=14*(a+a+26)/5
  t=real(p2), bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  xx=x*x
  y=y+t*(fn1(b*(c*xx*(d*xx*(81*xx*(k*xx*(f*xx-1)+g)-1418)+2127)-31903)))
  yy=y*y
  x=x-t*(fn2(b*(c*yy*(d*yy*(81*yy*(k*yy*(f*yy-1)+g)-1418)+2127)-31903)))
  z=x+flip(y)
  |z|<=bailout
}



Tc02-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler Method)
         ; 
         ; Tc(n+1) = 2(2z-1)Tc(n)-Tc(n-1)
         ; Tc(0) = 1
         ; Tc(1) = 2(z+1)
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(4*x*(x+x+1)-5))
  x=x-t*(fn2(4*y*(y+y+1)-5))
  z=x+flip(y)
  |z|<=bailout
}


Tc03-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1((x+x)*(16*x*x-15)+8))
  x=x-t*(fn2((y+y)*(16*y*y-15)+8))
  z=x+flip(y)
  |z|<=bailout
}


Tc04-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=8*x
  y=y+t*(fn1(ax*(ax*(x*(x+x-1)-2)+11)-11))
  ay=8*y
  x=x-t*(fn2(ay*(ay*(y*(y+y-1)-2)+11)-11))
  z=x+flip(y)
  |z|<=bailout
}


Tc05-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=16*x
  y=y+t*(fn1((x+x)*(ax*(x*(ax*(x-1)-13)+19)-95)+14))
  ay=16*y
  x=x-t*(fn2((y+y)*(ay*(y*(ay*(y-1)-13)+19)-95)+14))
  z=x+flip(y)
  |z|<=bailout
}


Tc06-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=x+x, bx=ax+ax
  y=y+t*(fn1(bx*(ax*(32*x*(x*(bx*(ax-3)-3)+13)-231)+87)-17))
  ay=y+y, by=ay+ay
  x=x-t*(fn2(by*(ay*(32*y*(y*(by*(ay-3)-3)+13)-231)+87)-17))
  z=x+flip(y)
  |z|<=bailout
}


Tc07-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1((x+x)*(32*x*(x*(8*x*(x*(16*x*(x-2)+5)+30)-213)+71)-287)+20))
  x=x-t*(fn2((y+y)*(32*y*(y*(8*y*(y*(16*y*(y-2)+5)+30)-213)+71)-287)+20))
  z=x+flip(y)
  |z|<=bailout
}


Tc08-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=x+x, bx=ax+ax, cx=16*x
  y=y+t*(fn1(cx*(bx*(ax*(cx*(x*(bx*(ax*(ax-5)+5)+29)+420+329)-149)+55)-23)))
  ay=y+y, by=ay+ay, cy=16*y
  x=x-t*(fn2(cy*(by*(ay*(cy*(y*(by*(ay*(ay-5)+5)+29)+420+329)-149)+55)-23)))
  z=x+flip(y)
  |z|<=bailout
}


Tc09-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=8*x, bx=x+x
  y=y+t*(fn1(bx*(32*x*(x*(ax*(x*(16*x*(x*(ax*(bx-7)+59)+11)+435)-37)+1041)+282)-639)+26))
  ay=8*y, by=y+y
  x=x-t*(fn2(by*(32*y*(y*(ay*(y*(16*y*(y*(ay*(by-7)+59)+11)+435)-37)+1041)+282)-639)+26))
  z=x+flip(y)
  |z|<=bailout
}


Tc10-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x, bx=32*x, cx=x+x
  y=y+t*(fn1(ax*(cx*(bx*(x*(ax*(cx*(bx*(x*(8*x*(x-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29))
  ay=4*y, by=32*y, cy=y+y
  x=x-t*(fn2(ay*(cy*(by*(y*(ay*(cy*(by*(y*(8*y*(y-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29))
  z=x+flip(y)
  |z|<=bailout
}



L02-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler Method)
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x/2-2)+1))
  x=x-t*(fn2(y*(y/2-2)+1))
  z=x+flip(y)
  |z|<=bailout
}


L03-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(3-x/3)/2-3)+1))
  x=x-t*(fn2(y*(y*(3-y/3)/2-3)+1))
  z=x+flip(y)
  |z|<=bailout
}


L04-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x/8-2)/3+3)-4)+1))
  x=x-t*(fn2(y*(y*(y*(y/8-2)/3+3)-4)+1))
  z=x+flip(y)
  |z|<=bailout
}


L05-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(5-x/5)/8-5)/3+5)-5)+1))
  x=x-t*(fn2(y*(y*(y*(y*(5-y/5)/8-5)/3+5)-5)+1))
  z=x+flip(y)
  |z|<=bailout
}


L06-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x/18-2)/5+5)/8-10/3)+15/2)-6)+1))
  x=x-t*(fn2(y*(y*(y*(y*(y*(y/18-2)/5+5)/8-10/3)+15/2)-6)+1))
  z=x+flip(y)
  |z|<=bailout
}


L07-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(49-x)/2-441)/5+735)/84-35)/3+21)/2-7)+1))
  x=x-t*(fn2(y*(y*(y*(y*(y*(y*(49-y)/2-441)/5+735)/84-35)/3+21)/2-7)+1))
  z=x+flip(y)
  |z|<=bailout
}


L08-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(x*(x/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1))
  x=x-t*(fn2(y*(y*(y*(y*(y*(y*(y*(y/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1))
  z=x+flip(y)
  |z|<=bailout
}


L09-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(x*(x*(81-x)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1))
  x=x-t*(fn2(y*(y*(y*(y*(y*(y*(y*(y*(81-y)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1))
  z=x+flip(y)
  |z|<=bailout
}


L10-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(x*(x*(x*(x/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1))
  x=x-t*(fn2(y*(y*(y*(y*(y*(y*(y*(y*(y*(y/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1))
  z=x+flip(y)
  |z|<=bailout
}



La02-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler Method)
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p2, c=a+2, b=c*(a+1)/2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x/2-c)+b))
  x=x-t*(fn2(y*(y/2-c)+b))
  z=x+flip(y)
  |z|<=bailout
}


La03-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p2, d=(a+3)/2, c=d*(a+2), b=c*(a+1)/3
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(d-x/6)-c)+b))
  x=x-t*(fn2(y*(y*(d-y/6)-c)+b))
  z=x+flip(y)
  |z|<=bailout
}


La04-24 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p2, k=(a+4)/6, d=k*(a+3)*(3/2), c=d*(a+a+4)/3, b=c*(a+1)/4
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x/24-k)+d)-c)+b))
  x=x-t*(fn2(y*(y*(y*(y/24-k)+d)-c)+b))
  z=x+flip(y)
  |z|<=bailout
}


La05-24 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p2, f=(a+5)/24, k=(f+f)*(a+4), d=k*(a+3)
  c=d*(a+2)/2, b=c*(a+1)/5
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(f-x/120)-k)+d)-c)+b))
  x=x-t*(fn2(y*(y*(y*(y*(f-y/120)-k)+d)-c)+b))
  z=x+flip(y)
  |z|<=bailout
}


La06-24 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p2, g=(a+6)/120, f=g*(a+5)*(5/2), k=f*(a+4)*(4/3)
  d=k*(a+3)*(3/4), c=d*(a+a+4)/5, b=c*(a+1)/6
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x/720-g)+f)-k)+d)-c)+b))
  x=x-t*(fn2(y*(y*(y*(y*(y*(y/720-g)+f)-k)+d)-c)+b))
  z=x+flip(y)
  |z|<=bailout
}


La07-24 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p2, h=(a+7)/720, g=h*(a+6)*3, f=g*(a+5)*(5/3)
  k=f*(a+4), d=k*(a+3)*(3/5), c=d*(a+2)/3, b=c*(a+1)/7
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(h-x/5040)-g)+f)-k)+d)-c)+b))
  x=x-t*(fn2(y*(y*(y*(y*(y*(y*(h-y/5040)-g)+f)-k)+d)-c)+b))
  z=x+flip(y)
  |z|<=bailout
}


La08-24 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p2, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+a+12)
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2
  c=d*(a+a+4)/7, b=c*(a+1)/8
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b))
  x=x-t*(fn2(y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b))
  z=x+flip(y)
  |z|<=bailout
}


La09-24 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p2, j=(a+9)/40320, i=j*(a+8)*4, h=i*(a+7)*(7/3)
  g=h*(a+6)*(3/2), f=g*(a+5), k=f*(a+a+8)/3
  d=k*(a+3)*(3/7), c=d*(a+2)/4, b=c*(a+1)/9
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(x*(x/40320-i)+h)-g)+f)-k)+d)-c)+b))
  x=x-t*(fn2(y*(y*(y*(y*(y*(y*(y*(y/40320-i)+h)-g)+f)-k)+d)-c)+b))
  z=x+flip(y)
  |z|<=bailout
}


La10-24 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p2, k=(a+10)/362880, j=k*(a+9)*45, i=j*(a+8)*(4/15)
  h=i*(a+7)*(7/4), g=h*(a+6)*12, f=g*(a+5)/12, l=f*(a+4)*(4/7)
  d=l*(a+3)*(15/4), c=d*(a+2)/45, b=c*(a+1)/10
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*(fn1(x*(x*(x*(x*(x*(x*(x*(x*(x*(x/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b))
  x=x-t*(fn2(y*(y*(y*(y*(y*(y*(y*(y*(y*(y/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b))
  z=x+flip(y)
  |z|<=bailout
}



Uc02-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler Method)
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x-2
  y=y+t*(fn1(ax*ax-1))
  ay=4*y-2
  x=x-t*(fn2(ay*ay-1))
  z=x+flip(y)
  |z|<=bailout
}


Uc03-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x-2
  y=y+t*(fn1(ax*(ax*ax-2)))
  ay=4*y-2
  x=x-t*(fn2(ay*(ay*ay-2)))
  z=x+flip(y)
  |z|<=bailout
}


Uc04-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(fn1(aax*(aax-3)+1))
  ay=4*y-2, aay=ay*ay
  x=x-t*(fn2(aay*(aay-3)+1))
  z=x+flip(y)
  |z|<=bailout
}


Uc05-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(fn1(ax*(aax*(aax-4)+3)))
  ay=4*y-2, aay=ay*ay
  x=x-t*(fn2(ay*(aay*(aay-4)+3)))
  z=x+flip(y)
  |z|<=bailout
}


Uc06-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(fn1(aax*(aax*(aax-5)+6)-1))
  ay=4*y-2, aay=ay*ay
  x=x-t*(fn2(aay*(aay*(aay-5)+6)-1))
  z=x+flip(y)
  |z|<=bailout
}


Uc07-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(fn1(ax*(aax*(aax*(aax-6)+10)-4)))
  ay=4*y-2, aay=ay*ay
  x=x-t*(fn2(ay*(aay*(aay*(aay-6)+10)-4)))
  z=x+flip(y)
  |z|<=bailout
}


Uc08-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(fn1(aax*(aax*(aax*(aax-7)+15)-10)+1))
  ay=4*y-2, aay=ay*ay
  x=x-t*(fn2(aay*(aay*(aay*(aay-7)+15)-10)+1))
  z=x+flip(y)
  |z|<=bailout
}


Uc09-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(fn1(ax*(aax*(aax*(aax*(aax-8)+21)-20)+5)))
  ay=4*y-2, aay=ay*ay
  x=x-t*(fn2(ay*(aay*(aay*(aay*(aay-8)+21)-20)+5)))
  z=x+flip(y)
  |z|<=bailout
}


Uc10-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ax=4*x-2, aax=ax*ax
  y=y+t*(fn1(aax*(aax*(aax*(aax*(aax-9)+36)-35)+15)-1))
  ay=4*y-2, aay=ay*ay
  x=x-t*(fn2(aay*(aay*(aay*(aay*(aay-9)+36)-35)+15)-1))
  z=x+flip(y)
  |z|<=bailout
}



Pc02-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler Method)
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1((4*x-5)*x+1)
  x=x-t*fn2((4*y-5)*y+1)
  z=x+flip(y)
  |z|<=bailout
}


Pc03-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1(((8*x-50/3)*x+9)*x-1)
  x=x-t*fn2(((8*y-50/3)*y+9)*y-1)
  z=x+flip(y)
  |z|<=bailout
}


Pc04-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1((((16*x-142/3)*x+265/6)*x-14)*x+1)
  x=x-t*fn2((((16*y-142/3)*y+265/6)*y-14)*y+1)
  z=x+flip(y)
  |z|<=bailout
}


Pc05-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1(((((32*x-1852/15)*x+2507/15)*x-565/6)*x+20)*x-1)
  x=x-t*fn2(((((32*y-1852/15)*y+2507/15)*y-565/6)*y+20)*y-1)
  z=x+flip(y)
  |z|<=bailout
}


Pc06-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1((((((64*x-1528/5)*x+24628/45)*x-4553/10)*x+1055/6)*x-27)*x+1)
  x=x-t*fn2((((((64*y-1528/5)*y+24628/45)*y-4553/10)*y+1055/6)*y-27)*y+1)
  z=x+flip(y)
  |z|<=bailout
}


Pc07-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1(((((((128*x-25552/35)*x+514928/315)*x-573667/315)*x+31619/30)*x-1799/6)*x+35)*x-1)
  x=x-t*fn2(((((((128*y-25552/35)*y+514928/315)*y-573667/315)*y+31619/30)*y-1799/6)*y+35)*y-1)
  z=x+flip(y)
  |z|<=bailout
}


Pc08-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1((((((((256*x-59504/35)*x+1443406/315)*x-289799/45)*x+2542045/504)*x-32662/15)*x+1435/3)*x-44)*x+1)
  x=x-t*fn2((((((((256*y-59504/35)*y+1443406/315)*y-289799/45)*y+2542045/504)*y-32662/15)*y+1435/3)*y-44)*y+1)
  z=x+flip(y)
  |z|<=bailout
}


Pc09-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1(((((((((512*x-1223392/315)*x+772508/63)*x-8458976/405)*x+26206517/1260)*x-2060215/168)*x+20664/5)*x-725)*x+54)*x-1)
  x=x-t*fn2(((((((((512*y-1223392/315)*y+772508/63)*y-8458976/405)*y+26206517/1260)*y-2060215/168)*y+20664/5)*y-725)*y+54)*y-1)
  z=x+flip(y)
  |z|<=bailout
}


Pc10-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1((((((((((1024*x-2753216/315)*x+2375464/75)*x-900686282/14175)*x+312488741/4050)*x-4193867/72)*x+22702079/840)*x-36713/5)*x+1055)*x-65)*x+1)
  x=x-t*fn2((((((((((1024*y-2753216/315)*y+2375464/75)*y-900686282/14175)*y+312488741/4050)*y-4193867/72)*y+22702079/840)*y-36713/5)*y+1055)*y-65)*y+1)
  z=x+flip(y)
  |z|<=bailout
}



O02-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic (modified implicit Euler Method)
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)fn1(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((x2+4)/(x2*x))
  x=x-t*fn2((y2+4)/(y2*y))
  z=x+flip(y)
  |z|<=bailout
}


O03-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)fn1(2*pi/2)^2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((((6-3*x)*x-12)*x+24)/(x2*x2))
  x=x-t*fn2((((6-3*y)*y-12)*y+24)/(y2*y2))
  z=x+flip(y)
  |z|<=bailout
}


O04-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)fn1(3*pi/2)^2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((12*x-36)*x+72)*x-144)*x+192)/(x2*x2*x))
  x=x-t*fn2(((((12*y-36)*y+72)*y-144)*y+192)/(y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
}


O05-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)fn1(4*pi/2)^2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((((((180-20*x)*x-480)*x+960)*x-1760)*x+1920)/(x2*x2*x2))
  x=x-t*fn2((((((180-20*y)*y-480)*y+960)*y-1760)*y+1920)/(y2*y2*y2))
  z=x+flip(y)
  |z|<=bailout
}


O06-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)fn1(5*pi/2)^2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((((40*x-510)*x+2880)*x-7200)*x+14160)*x-24000)*x+23040)/(x2*x2*x2*x))
  x=x-t*fn2(((((((40*y-510)*y+2880)*y-7200)*y+14160)*y-24000)*y+23040)/(y2*y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
}


O07-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)fn1(6*pi/2)^2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1((((((((1274-56*x)*x-11172)*x+50400)*x-120624)*x+231840)*x-368256)*x+322560)/(x4*x4))
  x=x-t*fn2((((((((1274-56*y)*y-11172)*y+50400)*y-120624)*y+231840)*y-368256)*y+322560)/(y4*y4))
  z=x+flip(y)
  |z|<=bailout
}


O08-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)fn1(7*pi/2)^2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1(((((((((266/3*x-7784/3)*x+35280)*x-245952)*x+967232)*x-2239104)*x+4200448)*x-6322176)*x+5160960)/(x4*x4*x))
  x=x-t*fn2(((((((((266/3*y-7784/3)*y+35280)*y-245952)*y+967232)*y-2239104)*y+4200448)*y-6322176)*y+5160960)/(y4*y4*y))
  z=x+flip(y)
  |z|<=bailout
}


O09-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)fn1(8*pi/2)^2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1((((((((((4932-114*x)*x-92064)*x+951264)*x-5670720)*x+20289024)*x-45704448)*x+83736576)*x-120434688)*x+92897280)/(x4*x4*x2))
  x=x-t*fn2((((((((((4932-114*y)*y-92064)*y+951264)*y-5670720)*y+20289024)*y-45704448)*y+83736576)*y-120434688)*y+92897280)/(y4*y4*y2))
  z=x+flip(y)
  |z|<=bailout
}


O10-24 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)fn1(9*pi/2)^2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1(((((((((((321/2*x-8445)*x+213720)*x-3030360)*x+26113680)*x-138775680)*x+462911040)*x-1018759680)*x+1825274880)*x-2524815360)*x+1857945600)/(x4*x4*x2*x))
  x=x-t*fn2(((((((((((321/2*y-8445)*y+213720)*y-3030360)*y+26113680)*y-138775680)*y+462911040)*y-1018759680)*y+1825274880)*y-2524815360)*y+1857945600)/(y4*y4*y2*y))
  z=x+flip(y)
  |z|<=bailout
}



Sc02-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic (modified implicit Euler Method)
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1(2/x)
  x=x-t*fn2(2/y)
  z=x+flip(y)
  |z|<=bailout
}


Sc03-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1(4/(x*x))
  x=x-t*fn2(4/(y*y))
  z=x+flip(y)
  |z|<=bailout
}


Sc04-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1((((4-2*x)*x-8)*x+16)/(x*x*x))
  x=x-t*fn2((((4-2*y)*y-8)*y+16)/(y*y*y))
  z=x+flip(y)
  |z|<=bailout
}


Sc05-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((11/2*x-18)*x+36)*x-72)*x+96)/(x2*x2))
  x=x-t*fn2(((((11/2*y-18)*y+36)*y-72)*y+96)/(y2*y2))
  z=x+flip(y)
  |z|<=bailout
}


Sc06-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((((((72-8*x)*x-192)*x+384)*x-704)*x+768)/(x2*x2*x))
  x=x-t*fn2((((((72-8*y)*y-192)*y+384)*y-704)*y+768)/(y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
}


Sc07-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((((13*x-170)*x+960)*x-2400)*x+4720)*x-8000)*x+7680)/(x2*x2*x2))
  x=x-t*fn2(((((((13*y-170)*y+960)*y-2400)*y+4720)*y-8000)*y+7680)/(y2*y2*y2))
  z=x+flip(y)
  |z|<=bailout
}


Sc08-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((((((((364-16*x)*x-3192)*x+14400)*x-34464)*x+66240)*x-105216)*x+92160)/(x2*x2*x2*x))
  x=x-t*fn2((((((((364-16*y)*y-3192)*y+14400)*y-34464)*y+66240)*y-105216)*y+92160)/(y2*y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
}


Sc09-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1(((((((((263/12*x-1946/3)*x+8820)*x-61488)*x+241808)*x-559776)*x+1050112)*x-1580544)*x+1290240)/(x4*x4))
  x=x-t*fn2(((((((((263/12*y-1946/3)*y+8820)*y-61488)*y+241808)*y-559776)*y+1050112)*y-1580544)*y+1290240)/(y4*y4))
  z=x+flip(y)
  |z|<=bailout
}


Sc10-24 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1((((((((((1096-76/3*x)*x-61376/3)*x+211392)*x-1260160)*x+4508672)*x-10156544)*x+18608128)*x-26763264)*x+20643840)/(x4*x4*x))
  x=x-t*fn2((((((((((1096-76/3*y)*y-61376/3)*y+211392)*y-1260160)*y+4508672)*y-10156544)*y+18608128)*y-26763264)*y+20643840)/(y4*y4*y))
  z=x+flip(y)
  |z|<=bailout
}



Exp02-24 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Clifford A. Pickover:
          ; Dynamic (modified implicit Euler Method)
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1(exp(-x))
  x=x-t*fn2(exp(-y))
  z=x+flip(y)
  |z|<=bailout
}


Exp03-24 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1((1-x)/(exp(x)*2))
  x=x-t*fn2((1-y)/(exp(y)*2))
  z=x+flip(y)
  |z|<=bailout
}


Exp04-24 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1(((x-1)*x/6+1/3)/exp(x))
  x=x-t*fn2(((y-1)*y/6+1/3)/exp(y))
  z=x+flip(y)
  |z|<=bailout
}


Exp05-24 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1((((1-x)*x/24-1/12)*x+1/4)/exp(x))
  x=x-t*fn2((((1-y)*y/24-1/12)*y+1/4)/exp(y))
  z=x+flip(y)
  |z|<=bailout
}


Exp06-24 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1(((((x-1)*x/120+1/60)*x-1/20)*x+1/5)/exp(x))
  x=x-t*fn2(((((y-1)*y/120+1/60)*y-1/20)*y+1/5)/exp(y))
  z=x+flip(y)
  |z|<=bailout
}


Exp07-24 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1((((((1-x)*x/720-1/360)*x+1/120)*x-1/30)*x+1/6)/exp(x))
  x=x-t*fn2((((((1-y)*y/720-1/360)*y+1/120)*y-1/30)*y+1/6)/exp(y))
  z=x+flip(y)
  |z|<=bailout
}


Exp08-24 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1(((((((x-1)*x/5040+1/2520)*x-1/840)*x+1/210)*x-1/42)*x+1/7)/exp(x))
  x=x-t*fn2(((((((y-1)*y/5040+1/2520)*y-1/840)*y+1/210)*y-1/42)*y+1/7)/exp(y))
  z=x+flip(y)
  |z|<=bailout
}


Exp09-24 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1((((((((1-x)*x/40320-1/20160)*x+1/6720)*x-1/1680)*x+1/336)*x-1/56)*x+1/8)/exp(x))
  x=x-t*fn2((((((((1-y)*y/40320-1/20160)*y+1/6720)*y-1/1680)*y+1/336)*y-1/56)*y+1/8)/exp(y))
  z=x+flip(y)
  |z|<=bailout
}


Exp10-24 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1(((((((((x-1)*x/362880+1/181440)*x-1/60480)*x+1/15120)*x-1/3024)*x+1/504)*x-1/72)*x+1/9)/exp(x))
  x=x-t*fn2(((((((((y-1)*y/362880+1/181440)*y-1/60480)*y+1/15120)*y-1/3024)*y+1/504)*y-1/72)*y+1/9)/exp(y))
  z=x+flip(y)
  |z|<=bailout
}



Alpha02-24 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Clifford A. Pickover:
            ; Dynamic (modified implicit Euler Method)
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  y=y+t*fn1(((x-2)*x+2)/(exp(x)*x*x*x))
  x=x-t*fn2(((y-2)*y+2)/(exp(y)*y*y*y))
  z=x+flip(y)
  |z|<=bailout
}


Alpha03-24 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((((x-3)*x+6)*x-6)/(exp(x)*x2*x2))
  x=x-t*fn2((((y-3)*y+6)*y-6)/(exp(y)*y2*y2))
  z=x+flip(y)
  |z|<=bailout
}


Alpha04-24 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((x-4)*x+12)*x-24)*x+24)/(exp(x)*x2*x2*x))
  x=x-t*fn2(((((y-4)*y+12)*y-24)*y+24)/(exp(y)*y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
}


Alpha05-24 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((((((x-5)*x+20)*x-60)*x+120)*x-120)/(exp(x)*x2*x2*x2))
  x=x-t*fn2((((((y-5)*y+20)*y-60)*y+120)*y-120)/(exp(y)*y2*y2*y2))
  z=x+flip(y)
  |z|<=bailout
}


Alpha06-24 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((((x-6)*x+30)*x-120)*x+360)*x-720)*x+720)/(exp(x)*x2*x2*x2*x))
  x=x-t*fn2(((((((y-6)*y+30)*y-120)*y+360)*y-720)*y+720)/(exp(y)*y2*y2*y2*y))
  z=x+flip(y)
  |z|<=bailout
}


Alpha07-24 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1((((((((x-7)*x+42)*x-210)*x+840)*x-2520)*x+5040)*x-5040)/(exp(x)*x4*x4))
  x=x-t*fn2((((((((y-7)*y+42)*y-210)*y+840)*y-2520)*y+5040)*y-5040)/(exp(y)*y4*y4))
  z=x+flip(y)
  |z|<=bailout
}


Alpha08-24 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((((((x-8)*x+56)*x-336)*x+1680)*x-6720)*x+20160)*x-40320)*x+40320)/(exp(x)*x4*x4*x))
  x=x-t*fn2(((((((((y-8)*y+56)*y-336)*y+1680)*y-6720)*y+20160)*y-40320)*y+40320)/(exp(y)*y4*y4*y))
  z=x+flip(y)
  |z|<=bailout
}


Alpha09-24 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1((((((((((x-9)*x+72)*x-504)*x+3024)*x-15120)*x+60480)*x-181440)*x+362880)*x-362880)/(exp(x)*x4*x4*x2))
  x=x-t*fn2((((((((((y-9)*y+72)*y-504)*y+3024)*y-15120)*y+60480)*y-181440)*y+362880)*y-362880)/(exp(y)*y4*y4*y2))
  z=x+flip(y)
  |z|<=bailout
}


Alpha10-24 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((((((((x-10)*x+90)*x-720)*x+5040)*x-30240)*x+151200)*x-604800)*x+1814400)*x-3628800)*x+3628800)/(exp(x)*x4*x4*x2*x))
  x=x-t*fn2(((((((((((y-10)*y+90)*y-720)*y+5040)*y-30240)*y+151200)*y-604800)*y+1814400)*y-3628800)*y+3628800)/(exp(y)*y4*y4*y2*y))
  z=x+flip(y)
  |z|<=bailout
}



Beta02-24 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Clifford A. Pickover:
           ; Dynamic (modified implicit Euler Method)
           ;
           ; Beta Integral
           ; Beta[0] = 2fn1h(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  y=y+t*fn1(((x+2)*x+(2*ex*ex-2))/(x*x*x*ex))
  x=x-t*fn2(((y+2)*y+(2*ey*ey-2))/(y*y*y*ey))
  z=x+flip(y)
  |z|<=bailout
}


Beta03-24 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  y=y+t*fn1(-(((x+3)*x+6)*x+(6*ex*ex-6))/(x2*y2*ex))
  x=x-t*fn2(-(((y+3)*y+6)*y+(6*ey*ey-6))/(y2*y2*ey))
  z=x+flip(y)
  |z|<=bailout
}


Beta04-24 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((x+4)*x+12)*x+24)*x+(24*ex*ex-24))/(x2*x2*x*ex))
  x=x-t*fn2(((((y+4)*y+12)*y+24)*y+(24*ey*ey-24))/(y2*y2*y*ey))
  z=x+flip(y)
  |z|<=bailout
}


Beta05-24 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  y=y+t*fn1(-(((((x+5)*x+20)*x+60)*x+120)*x+(120*ex*ex-120))/(x2*x2*x2*ex))
  x=x-t*fn2(-(((((y+5)*y+20)*y+60)*y+120)*y+(120*ey*ey-120))/(y2*y2*y2*ey))
  z=x+flip(y)
  |z|<=bailout
}


Beta06-24 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((((x+6)*x+30)*x+120)*x+360)*x+720)*x+(720*ex*ex-720))/(x2*x2*x2*x*ex))
  x=x-t*fn2(((((((y+6)*y+30)*y+120)*y+360)*y+720)*y+(720*ey*ey-720))/(y2*y2*y2*y*ey))
  z=x+flip(y)
  |z|<=bailout
}


Beta07-24 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1(-(((((((x+7)*x+42)*x+210)*x+840)*x+2520)*x+5040)*x+(5040*ex*ex-5040))/(x4*x4*ex))
  x=x-t*fn2(-(((((((y+7)*y+42)*y+210)*y+840)*y+2520)*y+5040)*y+(5040*ey*ey-5040))/(y4*y4*ey))
  z=x+flip(y)
  |z|<=bailout
}


Beta08-24 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1(((((((((x+8)*x+56)*x+336)*x+1680)*x+6720)*x+20160)*x+40320)*x+(40320*ex*ex-40320))/(x4*x4*x*ex))
  x=x-t*fn2(((((((((y+8)*y+56)*y+336)*y+1680)*y+6720)*y+20160)*y+40320)*y+(40320*ey*ey-40320))/(y4*y4*y*ey))
  z=x+flip(y)
  |z|<=bailout
}


Beta09-24 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1(-(((((((((x+9)*x+72)*x+504)*x+3024)*x+15120)*x+60480)*x+181440)*x+362880)*x+(362880*ex*ex-362880))/(x4*x4*x2*ex))
  x=x-t*fn2(-(((((((((y+9)*y+72)*y+504)*y+3024)*y+15120)*y+60480)*y+181440)*y+362880)*y+(362880*ey*ey-362880))/(y4*y4*y2*ey))
  z=x+flip(y)
  |z|<=bailout
}


Beta10-24 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1(((((((((((x+10)*x+90)*x+720)*x+5040)*x+30240)*x+151200)*x+604800)*x+1814400)*x+3628800)*x+(3628800*ex*ex-3628800))/(x4*x4*x2*x*ex))
  x=x-t*fn2(((((((((((y+10)*y+90)*y+720)*y+5040)*y+30240)*y+151200)*y+604800)*y+1814400)*y+3628800)*y+(3628800*ey*ey-3628800))/(y4*y4*y2*y*ey))
  z=x+flip(y)
  |z|<=bailout
}

