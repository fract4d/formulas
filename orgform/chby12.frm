;Version 1.1
;Copyright (c)1998,1999 Morgan L. Owens
;EG-12{;V.1.1 - earlier versions may be discarded
; = Recurrence
;const=pixel,z=p1:
;z=function in z*const
;|z|<100}

;
;
;comment{Chebyshev Types:
;       Inspired by Rob Dem Braseem:
;       Escape  (Mandelbrot)
;}



T02-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Mandelbrot)
        ; 
        ; T(n+1) = 2zT(n)-T(n-1)
        ; T(0)  = 1
        ; T(1)  = z
        ;
        ; = 2zT01-T00
  const=pixel, z=p1:
  z=((z+z)*z-1)*const
  |z|<100
}


T03-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  const=pixel, z=p1:
  z=z*(4*z*z-3)*const
  |z|<100
}


T04-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  const=pixel, z=p1:
  zz=z*z
  z=(8*zz*(zz-1)+1)*const
  |z|<100
}


T05-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  const=pixel, z=p1:
  a=4*z*z
  z=z*(a*(a-5)+5)*const
  |z|<100
}


T06-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  const=pixel, z=p1:
  zz=z*z
  a=zz+zz
  z=(a*(8*zz*(a-3)+9)-1)*const
  |z|<100
}


T07-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  const=pixel, z=p1:
  zz=z*z
  z=z*(8*zz*((zz+zz)*(4*zz-7)+7)-7)*const
  |z|<100
}


T08-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  const=pixel, z=p1:
  zz=z*z
  z=(32*zz*(zz*(4*zz*(zz-2)+5)-1)+1)*const
  |z|<100
}


T09-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  const=pixel, z=p1:
  zz=z*z
  a=4*zz
  z=z*(8*zz*((zz+zz)*(a*(a-9)+27)-15)+9)*const
  |z|<100
}


T10-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  const=pixel, z=p1:
  zz=z*z
  a=zz+zz
  b=8*zz
  z=(a*(b*(a*(b*(a-5)+35)-11)+25)-1)*const
  |z|<100
}



U02-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Mandelbrot)
        ;
        ; U(n+1) = 2zU(n)-U(n-1)
        ; U(0)  = 1
        ; U(1)  = 2z
        ;
        ; = 2zU01-U00
  const=pixel, z=p1:
  z=(4*z*z-1)*const
  |z|<100
}


U03-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  const=pixel, z=p1:
  z=4*z*((z+z)*z-1)*const
  |z|<100
}


U04-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  const=pixel, z=p1:
  a=4*z*z
  z=(a*(a-3)+1)*const
  |z|<100
}


U05-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  const=pixel, z=p1:
  zz=z*z
  z=(z+z)*(16*z*(z-1)+3)*const
  |z|<100
}


U06-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  const=pixel, z=p1:
  zz=z*z
  z=(8*zz*((zz+zz)*(4*zz-5)+3)-1)*const
  |z|<100
}


U07-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  const=pixel, z=p1:
  zz=z*z
  a=zz+zz
  z=8*z*(a*(4*zz*(a-3)+5)-1)*const
  |z|<100
}


U08-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  const=pixel, z=p1:
  zz=z*z
  a=4*zz
  z=(8*zz*((zz+zz)*(a*(a-7)+15)-5)+1)*const
  |z|<100
}


U09-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  const=pixel, z=p1:
  zz=z*z
  a=16*zz
  z=(z+z)*(a*(zz*(a*(zz-2)+17)-5)-3)*const
  |z|<100
}


U10-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  const=pixel, z=p1:
  zz=z*z
  a=4*zz
  z=(a*(a*(16*zz*(zz*(a-9)+6)-35)+7)-1)*const
  |z|<100
}



S02-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Mandelbrot)
        ;
        ; S(n+1) = xS(n)-S(n-1)
        ; S(0)  = 1
        ; S(1)  = x
        ;
        ; = zS01-S00
  const=pixel, z=p1:
  z=(z*z-1)*const
  |z|<100
}


S03-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  const=pixel, z=p1:
  z=z*(z*z-2)*const
  |z|<100
}


S04-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  const=pixel, z=p1:
  zz=z*z
  z=(zz*(zz-3)+1)*const
  |z|<100
}


S05-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  const=pixel, z=p1:
  zz=z*z
  z=z*(zz*(zz-4)+3)*const
  |z|<100
}


S06-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  const=pixel, z=p1:
  zz=z*z
  z=(zz*(zz*(zz-5)+6)-1)*const
  |z|<100
}


S07-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  const=pixel, z=p1:
  zz=z*z
  z=(z*(zz*(zz*(zz-6)+10)-4))*const
  |z|<100
}


S08-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  const=pixel, z=p1:
  zz=z*z
  z=(zz*(zz*(zz*(zz-7)+15)-10)+1)*const
  |z|<100
}


S09-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  const=pixel, z=p1:
  zz=z*z
  z=z*(zz*(zz*(zz*(zz-8)+21)-20)+5)*const
  |z|<100
}


S10-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  const=pixel, z=p1:
  zz=z*z
  z=(zz*(zz*(zz*(zz*(zz-9)+28)-35)+15)-1)*const
  |z|<100
}



C02-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Mandelbrot)
        ;
        ; C(n+1) = xC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = x
        ;
        ; = zC01-C00
  const=pixel, z=p1:
  z=(z*z-2)*const
  |z|<100
}


C03-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  const=pixel, z=p1:
  z=z*(z*z-3)*const
  |z|<100
}


C04-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  const=pixel, z=p1:
  zz=z*z
  z=(zz*(zz-4)+2)*const
  |z|<100
}


C05-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  const=pixel, z=p1:
  zz=z*z
  z=z*(zz*(zz-5)+3)*const
  |z|<100
}


C06-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  const=pixel, z=p1:
  zz=z*z
  z=(zz*(zz*(zz-6)+7)-2)*const
  |z|<100
}


C07-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  const=pixel, z=p1:
  zz=z*z
  z=z*(zz*(zz*(zz-7)+12)-5)*const
  |z|<100
}


C08-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  const=pixel, z=p1:
  zz=z*z
  z=(zz*(zz*(zz*(zz-8)+18)-12)+2)*const
  |z|<100
}


C09-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  const=pixel, z=p1:
  zz=z*z
  z=z*(zz*(zz*(zz*(zz-9)+25)-24)+7)*const
  |z|<100
}


C10-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  const=pixel, z=p1:
  zz=z*z
  z=(zz*(zz*(zz*(zz*(zz-10)+33)-42)+19)-2)*const
  |z|<100
}



P02-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Mandelbrot)
        ;
        ; P(n+1) = ((2n+1)xP(n)-nP(n-1))/(n+1)
        ; P(0)  = 1
        ; P(1)  = x
        ;
        ; = (3zP01-P00)/2
  const=pixel, z=p1:
  z=(3*z*z-1)/2*const
  |z|<100
}


P03-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (5zP02-2P01)/3
  const=pixel, z=p1:
  z=z*(5*z*z-3)/2*const
  |z|<100
}


P04-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (7zP03-3P02)/4
  const=pixel, z=p1:
  zz=z*z
  z=(5*zz*(7*zz-6)+3)/8*const
  |z|<100
}


P05-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (9zP04-4P03)/5
  const=pixel, z=p1:
  zz=z*z
  z=z*(7*zz*(9*zz-10)+15)/8*const
  |z|<100
}


P06-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (11zP05-5P04)/6
  const=pixel, z=p1:
  zz=z*z
  z=(21*zz*(zz*(11*zz-15)+5)-5)/16*const
  |z|<100
}


P07-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (13zP06-6P05)/7
  const=pixel, z=p1:
  zz=z*z
  z=z*(3*zz*(11*zz*(13*zz-21)+105)-35)/16*const
  |z|<100
}


P08-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (15zP07-7P06)/8
  const=pixel, z=p1:
  zz=z*z
  z=(3*zz*(11*zz*(13*zz*(15*zz-28)+210)-420)+35)/128*const
  |z|<100
}


P09-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (17zP08-8P07)/9
  const=pixel, z=p1:
  zz=z*z
  z=z*(11*zz*(13*zz*(5*zz*(17*zz-36)+126)-420)+315)/128*const
  |z|<100
}


P10-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (19zP09-9P08)/10
  const=pixel, z=p1:
  zz=z*z
  z=(11*zz*(13*zz*(zz*(17*zz*(19*zz-45)+630)-210)+315)-63)/128*const
  |z|<100
}



H02-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Mandelbrot)
        ;
        ; H(n+1) = 2(xH(n)-nH(n-1))
        ; H(0)  = 1
        ; H(1)  = 2x
        ;
        ; = 2(xH(1)-H(0))
  const=pixel, z=p1:
  z=(4*zz-2)*const
  |z|<100
}


H03-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  const=pixel, z=p1:
  z=4*z*(zz+zz-3)*const
  |z|<100
}


H04-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  const=pixel, z=p1:
  zz=z*z
  z=(16*zz*(zz-3)+12)*const
  |z|<100
}


H05-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  const=pixel, z=p1:
  zz=z*z
  z=8*z*(4*zz*(zz-5)-9)*const
  |z|<100
}


H06-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  const=pixel, z=p1:
  zz=z*z
  a=zz+zz
  z=(16*zz*(a*(a-15)+21)-120)*const
  |z|<100
}


H07-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  const=pixel, z=p1:
  a=(z+z)*z
  z=16*z*(a*(a*(a-21)+81)+39)*const
  |z|<100
}


H08-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  const=pixel, z=p1:
  zz=z*z
  a=zz+zz
  z=(64*zz*(a*(a*(zz-14)+93)-93)+1680)*const
  |z|<100
}


H09-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  const=pixel, z=p1:
  zz=z*z
  a=zz+zz
  z=32*z*(4*zz*(a*(a*(zz-18)+177)-417)-207)*const
  |z|<100
}


H10-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  const=pixel, z=p1:
  zz=z*z
  a=zz+zz
  z=(64*zz*(4*zz*(a*(zz*(a-45)+303)-1254)+1467)-30240)*const
  |z|<100
}



He02-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Mandelbrot)
         ;
         ; He(n+1) = xHe(n)-nHe(n-1)
         ; He(0)  = 1
         ; He(1)  = sqrt(2)x
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2), const=pixel, z=p1:
  z=(s*z*z-1)*const
  |z|<100
}


He03-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2), const=pixel, z=p1:
  z=z*(s*(z*z-2)-1)*const
  |z|<100
}


He04-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2), const=pixel, z=p1:
  zz=z*z
  z=(zz*(s*(zz-5)-1)+3)*const
  |z|<100
}


He05-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  const=pixel, z=p1:
  zz=z*z
  z=z*(zz*(s*(zz-9)-1)+a)*const
  |z|<100
}


He06-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2), a=33*s+12
  const=pixel, z=p1:
  zz=z*z
  z=(zz*(zz*(s*(zz-14)-1)+a)-15)*const
  |z|<100
}


He07-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2), a=87*s+18, b=8*s-57
  const=pixel, z=p1:
  zz=z*z
  z=z*(zz*(zz*(s*(zz-20)-1)+a)+b)*const
  |z|<100
}


He08-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2), a=185*s+25, b=41*s-141
  const=pixel, z=p1:
  zz=z*z
  z=(zz*(zz*(zz*(s*(zz-27)-1)+a)+b)+105)*const
  |z|<100
}


He09-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2), a=345*s+33, b=136*s-285
  const=pixel, z=p1:
  zz=z*z
  z=z*(zz*(zz*(zz*(s*(zz-35)-1)+a)+b)+561)*const
  |z|<100
}


He10-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2), a=588*s+42, b=321*s-510, c=41*s-1830
  const=pixel, z=p1:
  zz=z*z
  z=(zz*(zz*(zz*(zz*(s*(zz-44)-1)+a)+b)+c)-945)*const
  |z|<100
}



Ca02-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Mandelbrot)
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p2, b=a+a+2
  const=pixel, z=p1:
  z=a*(b*z*z-1)*const
  |z|<100
}


Ca03-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p2, b=(a+a)*(a+1), c=(a+a+4)/3
  const=pixel, z=p1:
  z=b*z*(c*z*z-1)*const
  |z|<100
}


Ca04-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p2, b=a*(a+1)/2, c=4*(a+2), d=(a+3)/3
  const=pixel, z=p1:
  zz=z*z
  z=b*(c*zz*(d*zz-1)+1)*const
  |z|<100
}


Ca05-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p2, b=a*(a*(a+3)+2)/3, c=4*(a+3), d=(a+4)/5
  const=pixel, z=p1:
  zz=z*z
  z=b*z*(c*zz*(d*zz-1)+3)*const
  |z|<100
}


Ca06-12 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p2, b=a*(a*(a+3)+2)/6, c=a+3
  d=4*(a+4), k=(a+a+10)/15
  const=pixel, z=p1:
  zz=z*z
  z=b*(c*zz*(d*zz*(k*zz-1)+3)-1)*const
  |z|<100
}


Ca07-12 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p2, b=a*(a*(a*(a+6)+11)+6)/21, c=a+a+8
  d=(a+a)*(a+11)/15+4, k=7*(a+5)/5
  const=pixel, z=p1:
  zz=z*z
  z=b*z*(c*zz*((zz+zz)*(d*zz-k)+7)-7)*const
  |z|<100
}


Ca08-12 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p2, b=a*(a*(a*(a+6)+11)+6)/360, c=8*(a+4)
  d=a+5, k=4*(a+6), f=(a+7)/14
  const=pixel, z=p1:
  zz=z*z
  z=b*(c*zz*(d*zz*(k*zz*(f*zz-1)+15)-15)+15)*const
  |z|<100
}


Ca09-12 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p2, b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c=(a+a)*(a*(a+18)+107)+420, d=(a+8)/18
  k=7*(a*(9*a+94)+270)/6, f=35*(a+5)/2
  const=pixel, z=p1:
  zz=z*z
  z=b*z*(16*zz*(zz*(c*zz*(d*zz-1)+k)-f)+105)*const
  |z|<100
}


Ca10-12 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p2, b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5), d=a+a+12, k=a*(a+15)+56, f=(a+a+18)/45
  g=14*(a+a+13)/5
  const=pixel, z=p1:
  zz=z*z
  z=b*(c*zz*(d*zz*(81*zz*(k*zz*(f*zz-1)+g)-1418)+2127)-31903)*const
  |z|<100
}



Tc02-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Mandelbrot)
         ; 
         ; Tc(n+1) = 2(2x-1)Tc(n)-Tc(n-1)
         ; Tc(0) = 1
         ; Tc(1) = 2(x+1)
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  const=pixel, z=p1:
  z=4*z*(z+z+1)-5+const
  |z|<100
}


Tc03-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  const=pixel, z=p1:
  z=((z+z)*(16*z*z-15)+8)*const
  |z|<100
}


Tc04-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  const=pixel, z=p1:
  a=8*z
  z=(a*(a*(z*(z+z-1)-2)+11)-11)*const
  |z|<100
}


Tc05-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  const=pixel, z=p1:
  a=16*z
  z=((z+z)*(a*(z*(a*(z-1)-13)+19)-95)+14)*const
  |z|<100
}


Tc06-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  const=pixel, z=p1:
  a=z+z
  b=a+a
  z=(b*(a*(32*z*(z*(b*(a-3)-3)+13)-231)+87)-17)*const
  |z|<100
}


Tc07-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  const=pixel, z=p1:
  z=((z+z)*(32*z*(z*(8*z*(z*(16*z*(z-2)+5)+30)-213)+71)-287)+20)*const
  |z|<100
}


Tc08-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  const=pixel, z=p1:
  a=z+z
  b=a+a
  c=16*z
  z=c*(b*(a*(c*(z*(b*(a*(a-5)+5)+29)+420+329)-149)+55)-23)*const
  |z|<100
}


Tc09-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  const=pixel, z=p1:
  a=8*z, b=z+z
  z=(b*(32*z*(z*(a*(z*(16*z*(z*(a*(b-7)+59)+11)+435)-37)+1041)+282)-639)+26)*const
  |z|<100
}


Tc10-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  const=pixel, z=p1:
  a=4*z
  b=32*z
  c=z+z
  z=(a*(c*(b*(z*(a*(c*(b*(z*(8*z*(z-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29)*const
  |z|<100
}



L02-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Mandelbrot)
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  const=pixel, z=p1:
  z=(z*(z/2-2)+1)*const
  |z|<100
}


L03-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  const=pixel, z=p1:
  z=(z*(z*(3-z/3)/2-3)+1)*const
  |z|<100
}


L04-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  const=pixel, z=p1:
  z=(z*(z*(z*(z/8-2)/3+3)-4)+1)*const
  |z|<100
}


L05-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  const=pixel, z=p1:
  z=(z*(z*(z*(z*(5-z/5)/8-5)/3+5)-5)+1)*const
  |z|<100
}


L06-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  const=pixel, z=p1:
  z=(z*(z*(z*(z*(z*(z/18-2)/5+5)/8-10/3)+15/2)-6)+1)*const
  |z|<100
}


L07-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  const=pixel, z=p1:
  z=(z*(z*(z*(z*(z*(z*(49-z)/2-441)/5+735)/84-35)/3+21)/2-7)+1)*const
  |z|<100
}


L08-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  const=pixel, z=p1:
  z=(z*(z*(z*(z*(z*(z*(z*(z/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1)*const
  |z|<100
}


L09-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  const=pixel, z=p1:
  z=(z*(z*(z*(z*(z*(z*(z*(z*(81-z)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1)*const
  |z|<100
}


L10-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  const=pixel, z=p1:
  z=(z*(z*(z*(z*(z*(z*(z*(z*(z*(z/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1)*const
  |z|<100
}



La02-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Mandelbrot)
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p2, c=a+2, b=c*(a+1)/2
  const=pixel, z=p1:
  z=(z*(z/2-c)+b)*const
  |z|<100
}


La03-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p2, d=(a+3)/2, c=d*(a+2), b=c*(a+1)/3
  const=pixel, z=p1:
  z=(z*(z*(d-z/6)-c)+b)*const
  |z|<100
}


La04-12 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p2, k=(a+4)/6, d=k*(a+3)*(3/2)
  c=d*(a+a+4)/3, b=c*(a+1)/4
  const=pixel, z=p1:
  z=(z*(z*(z*(z/24-k)+d)-c)+b)*const
  |z|<100
}


La05-12 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p2, f=(a+5)/24, k=(f+f)*(a+4)
  d=k*(a+3), c=d*(a+2)/2, b=c*(a+1)/5
  const=pixel, z=p1:
  z=(z*(z*(z*(z*(f-z/120)-k)+d)-c)+b)*const
  |z|<100
}


La06-12 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p2, g=(a+6)/120, f=g*(a+5)*(5/2)
  k=f*(a+4)*(4/3), d=k*(a+3)*(3/4), c=d*(a+a+4)/5, b=c*(a+1)/6
  const=pixel, z=p1:
  z=(z*(z*(z*(z*(z*(z/720-g)+f)-k)+d)-c)+b)*const
  |z|<100
}


La07-12 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p2, h=(a+7)/720, g=h*(a+6)*3
  f=g*(a+5)*(5/3), k=f*(a+4), d=k*(a+3)*(3/5)
  c=d*(a+2)/3, b=c*(a+1)/7
  const=pixel, z=p1:
  z=(z*(z*(z*(z*(z*(z*(h-z/5040)-g)+f)-k)+d)-c)+b)*const
  |z|<100
}


La08-12 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p2, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+6)*2
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2
  c=d*(a+a+4)/7, b=c*(a+1)/8
  const=pixel, z=p1:
  z=(z*(z*(z*(z*(z*(z*(z*(z/40320-i)+h)-g)+f)-k)+d)-c)+b)*const
  |z|<100
}


La09-12 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p2, j=(a+9)/40320, i=j*(a+8)*4, h=i*(a+7)*(7/3)
  g=h*(a+6)*(3/2), f=g*(a+5), k=f*(a+4)*(2/3)
  d=k*(a+3)*(3/7), c=d*(a+2)/4, b=c*(a+1)/9
  const=pixel, z=p1:
  z=(z*(z*(z*(z*(z*(z*(z*(z/40320-i)+h)-g)+f)-k)+d)-c)+b)*const
  |z|<100
}


La10-12 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p2, k=(a+10)/362880, j=k*(a+9)*45, i=j*(a+8)*(4/15)
  h=i*(a+7)*(7/4), g=h*(a+6)*12, f=g*(a+5)/12, l=f*(a+4)*(4/7)
  d=l*(a+3)*(15/4), c=d*(a+2)/45, b=c*(a+1)/10
  const=pixel, z=p1:
  z=(z*(z*(z*(z*(z*(z*(z*(z*(z*(z/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b)*const
  |z|<100
}



Uc02-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Mandelbrot)
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  const=pixel, z=p1:
  a=4*z-2
  z=(a*a-1)*const
  |z|<100
}


Uc03-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  const=pixel, z=p1:
  a=4*z-2
  z=a*(a*a-2)*const
  |z|<100
}


Uc04-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  const=pixel, z=p1:
  a=4*z-2, aa=a*a
  z=(aa*(aa-3)+1)*const
  |z|<100
}


Uc05-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  const=pixel, z=p1:
  a=4*z-2, aa=a*a
  z=a*(aa*(aa-4)+3)*const
  |z|<100
}


Uc06-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  const=pixel, z=p1:
  a=4*z-2, aa=a*a
  z=(aa*(aa*(aa-5)+6)-1)*const
  |z|<100
}


Uc07-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  const=pixel, z=p1:
  a=4*z-2, aa=a*a
  z=a*(aa*(aa*(aa-6)+10)-4)*const
  |z|<100
}


Uc08-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  const=pixel, z=p1:
  a=4*z-2, aa=a*a
  z=(aa*(aa*(aa*(aa-7)+15)-10)+1)*const
  |z|<100
}


Uc09-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  const=pixel, z=p1:
  a=4*z-2, aa=a*a
  z=a*(aa*(aa*(aa*(aa-8)+21)-20)+5)*const
  |z|<100
}


Uc10-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  const=pixel, z=p1:
  a=4*z-2, aa=a*a
  z=(aa*(aa*(aa*(aa*(aa-9)+36)-35)+15)-1)*const
  |z|<100
}



Pc02-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Mandelbrot)
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  const=pixel, z=p1:
  z=const*((4*z-5)*z+1)
  |z|<100
}


Pc03-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  const=pixel, z=p1:
  z=const*(((8*z-50/3)*z+9)*z-1)
  |z|<100
}


Pc04-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  const=pixel, z=p1:
  z=const*((((16*z-142/3)*z+265/6)*z-14)*z+1)
  |z|<100
}


Pc05-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  const=pixel, z=p1:
  z=const*(((((32*z-1852/15)*z+2507/15)*z-565/6)*z+20)*z-1)
  |z|<100
}


Pc06-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  const=pixel, z=p1:
  z=const*((((((64*z-1528/5)*z+24628/45)*z-4553/10)*z+1055/6)*z-27)*z+1)
  |z|<100
}


Pc07-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  const=pixel, z=p1:
  z=const*(((((((128*z-25552/35)*z+514928/315)*z-573667/315)*z+31619/30)*z-1799/6)*z+35)*z-1)
  |z|<100
}


Pc08-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  const=pixel, z=p1:
  z=const*((((((((256*z-59504/35)*z+1443406/315)*z-289799/45)*z+2542045/504)*z-32662/15)*z+1435/3)*z-44)*z+1)
  |z|<100
}


Pc09-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  const=pixel, z=p1:
  z=const*(((((((((512*z-1223392/315)*z+772508/63)*z-8458976/405)*z+26206517/1260)*z-2060215/168)*z+20664/5)*z-725)*z+54)*z-1)
  |z|<100
}


Pc10-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  const=pixel, z=p1:
  z=const*((((((((((1024*z-2753216/315)*z+2375464/75)*z-900686282/14175)*z+312488741/4050)*z-4193867/72)*z+22702079/840)*z-36713/5)*z+1055)*z-65)*z+1)
  |z|<100
}



O02-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Mandelbrot)
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)fn1(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  const=pixel, z=p1:
  z2=z*z
  z=const*((z2+4)/(z2*z))
  |z|<100
}


O03-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)sin(2*pi/2)^2
  const=pixel, z=p1:
  z2=z*z
  z=const*((((6-3*z)*z-12)*z+24)/(z2*z2))
  |z|<100
}


O04-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)sin(3*pi/2)^2
  const=pixel, z=p1:
  z2=z*z
  z=const*(((((12*z-36)*z+72)*z-144)*z+192)/(z2*z2*z))
  |z|<100
}


O05-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)sin(4*pi/2)^2
  const=pixel, z=p1:
  z2=z*z
  z=const*((((((180-20*z)*z-480)*z+960)*z-1760)*z+1920)/(z2*z2*z2))
  |z|<100
}


O06-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)sin(5*pi/2)^2
  const=pixel, z=p1:
  z2=z*z
  z=const*(((((((40*z-510)*z+2880)*z-7200)*z+14160)*z-24000)*z+23040)/(z2*z2*z2*z))
  |z|<100
}


O07-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)sin(6*pi/2)^2
  const=pixel, z=p1:
  z2=z*z, z4=z2*z2
  z=const*((((((((1274-56*z)*z-11172)*z+50400)*z-120624)*z+231840)*z-368256)*z+322560)/(z4*z4))
  |z|<100
}


O08-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)sin(7*pi/2)^2
  const=pixel, z=p1:
  z2=z*z, z4=z2*z2
  z=const*(((((((((266/3*z-7784/3)*z+35280)*z-245952)*z+967232)*z-2239104)*z+4200448)*z-6322176)*z+5160960)/(z4*z4*z))
  |z|<100
}


O09-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)sin(8*pi/2)^2
  const=pixel, z=p1:
  z2=z*z, z4=z2*z2
  z=const*((((((((((4932-114*z)*z-92064)*z+951264)*z-5670720)*z+20289024)*z-45704448)*z+83736576)*z-120434688)*z+92897280)/(z4*z4*z2))
  |z|<100
}


O10-12 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)sin(9*pi/2)^2
  const=pixel, z=p1:
  z2=z*z, z4=z2*z2
  z=const*(((((((((((321/2*z-8445)*z+213720)*z-3030360)*z+26113680)*z-138775680)*z+462911040)*z-1018759680)*z+1825274880)*z-2524815360)*z+1857945600)/(z4*z4*z2*z))
  |z|<100
}



Sc02-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Rob Dem Braseem:
         ; Escape  (Mandelbrot)
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  const=pixel, z=p1:
  z=const*(2/z)
  |z|<100
}


Sc03-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  const=pixel, z=p1:
  z=const*(4/(z*z))
  |z|<100
}


Sc04-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  const=pixel, z=p1:
  z=const*((((4-2*z)*z-8)*z+16)/(z*z*z))
  |z|<100
}


Sc05-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  const=pixel, z=p1:
  z2=z*z
  z=const*(((((11/2*z-18)*z+36)*z-72)*z+96)/(z2*z2))
  |z|<100
}


Sc06-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  const=pixel, z=p1:
  z2=z*z
  z=const*((((((72-8*z)*z-192)*z+384)*z-704)*z+768)/(z2*z2*z))
  |z|<100
}


Sc07-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  const=pixel, z=p1:
  z2=z*z
  z=const*(((((((13*z-170)*z+960)*z-2400)*z+4720)*z-8000)*z+7680)/(z2*z2*z2))
  |z|<100
}


Sc08-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  const=pixel, z=p1:
  z2=z*z
  z=const*((((((((364-16*z)*z-3192)*z+14400)*z-34464)*z+66240)*z-105216)*z+92160)/(z2*z2*z2*z))
  |z|<100
}


Sc09-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  const=pixel, z=p1:
  z2=z*z, z4=z2*z2
  z=const*(((((((((263/12*z-1946/3)*z+8820)*z-61488)*z+241808)*z-559776)*z+1050112)*z-1580544)*z+1290240)/(z4*z4))
  |z|<100
}


Sc10-12 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  const=pixel, z=p1:
  z2=z*z, z4=z2*z2
  z=const*((((((((((1096-76/3*z)*z-61376/3)*z+211392)*z-1260160)*z+4508672)*z-10156544)*z+18608128)*z-26763264)*z+20643840)/(z4*z4*z))
  |z|<100
}



Exp02-12 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Rob Dem Braseem:
          ; Escape  (Mandelbrot)
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  const=pixel, z=p1:
  z=const*(exp(-z))
  |z|<100
}


Exp03-12 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  const=pixel, z=p1:
  z=const*((1-z)/(exp(z)*2))
  |z|<100
}


Exp04-12 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  const=pixel, z=p1:
  z=const*(((z-1)*z/6+1/3)/exp(z))
  |z|<100
}


Exp05-12 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  const=pixel, z=p1:
  z=const*((((1-z)*z/24-1/12)*z+1/4)/exp(z))
  |z|<100
}


Exp06-12 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  const=pixel, z=p1:
  z=const*(((((z-1)*z/120+1/60)*z-1/20)*z+1/5)/exp(z))
  |z|<100
}


Exp07-12 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  const=pixel, z=p1:
  z=const*((((((1-z)*z/720-1/360)*z+1/120)*z-1/30)*z+1/6)/exp(z))
  |z|<100
}


Exp08-12 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  const=pixel, z=p1:
  z=const*(((((((z-1)*z/5040+1/2520)*z-1/840)*z+1/210)*z-1/42)*z+1/7)/exp(z))
  |z|<100
}


Exp09-12 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  const=pixel, z=p1:
  z=const*((((((((1-z)*z/40320-1/20160)*z+1/6720)*z-1/1680)*z+1/336)*z-1/56)*z+1/8)/exp(z))
  |z|<100
}


Exp10-12 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  const=pixel, z=p1:
  z=const*(((((((((z-1)*z/362880+1/181440)*z-1/60480)*z+1/15120)*z-1/3024)*z+1/504)*z-1/72)*z+1/9)/exp(z))
  |z|<100
}



Alpha02-12 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Rob Dem Braseem:
            ; Escape  (Mandelbrot)
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  const=pixel, z=p1:
  z=const*(((z-2)*z+2)/(exp(z)*z*z*z))
  |z|<100
}


Alpha03-12 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  const=pixel, z=p1:
  z2=z*z
  z=const*((((z-3)*z+6)*z-6)/(exp(z)*z2*z2))
  |z|<100
}


Alpha04-12 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  const=pixel, z=p1:
  z2=z*z
  z=const*(((((z-4)*z+12)*z-24)*z+24)/(exp(z)*z2*z2*z))
  |z|<100
}


Alpha05-12 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  const=pixel, z=p1:
  z2=z*z
  z=const*((((((z-5)*z+20)*z-60)*z+120)*z-120)/(exp(z)*z2*z2*z2))
  |z|<100
}


Alpha06-12 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  const=pixel, z=p1:
  z2=z*z
  z=const*(((((((z-6)*z+30)*z-120)*z+360)*z-720)*z+720)/(exp(z)*z2*z2*z2*z))
  |z|<100
}


Alpha07-12 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  const=pixel, z=p1:
  z2=z*z, z4=z2*z2
  z=const*((((((((z-7)*z+42)*z-210)*z+840)*z-2520)*z+5040)*z-5040)/(exp(z)*z4*z4))
  |z|<100
}


Alpha08-12 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  const=pixel, z=p1:
  z2=z*z, z4=z2*z2
  z=const*(((((((((z-8)*z+56)*z-336)*z+1680)*z-6720)*z+20160)*z-40320)*z+40320)/(exp(z)*z4*z4*z))
  |z|<100
}


Alpha09-12 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  const=pixel, z=p1:
  z2=z*z, z4=z2*z2
  z=const*((((((((((z-9)*z+72)*z-504)*z+3024)*z-15120)*z+60480)*z-181440)*z+362880)*z-362880)/(exp(z)*z4*z4*z2))
  |z|<100
}


Alpha10-12 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  const=pixel, z=p1:
  z2=z*z, z4=z2*z2
  z=const*(((((((((((z-10)*z+90)*z-720)*z+5040)*z-30240)*z+151200)*z-604800)*z+1814400)*z-3628800)*z+3628800)/(exp(z)*z4*z4*z2*z))
  |z|<100
}



Beta02-12 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Rob Dem Braseem:
           ; Escape  (Mandelbrot)
           ;
           ; Beta Integral
           ; Beta[0] = 2sinh(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  const=pixel, z=p1:
  ez=exp(z)
  z=const*(((z+2)*z+(2*ez*ez-2))/(z*z*z*ez))
  |z|<100
}


Beta03-12 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  const=pixel, z=p1:
  ez=exp(z)
  z2=z*z
  z=const*(-(((z+3)*z+6)*z+(6*ez*ez-6))/(z2*z2*ez))
  |z|<100
}


Beta04-12 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  const=pixel, z=p1:
  ez=exp(z)
  z2=z*z
  z=const*(((((z+4)*z+12)*z+24)*z+(24*ez*ez-24))/(z2*z2*z*ez))
  |z|<100
}


Beta05-12 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  const=pixel, z=p1:
  ez=exp(z)
  z2=z*z
  z=const*(-(((((z+5)*z+20)*z+60)*z+120)*z+(120*ez*ez-120))/(z2*z2*z2*ez))
  |z|<100
}


Beta06-12 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  const=pixel, z=p1:
  ez=exp(z)
  z2=z*z
  z=const*(((((((z+6)*z+30)*z+120)*z+360)*z+720)*z+(720*ez*ez-720))/(z2*z2*z2*z*ez))
  |z|<100
}


Beta07-12 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  const=pixel, z=p1:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  z=const*(-(((((((z+7)*z+42)*z+210)*z+840)*z+2520)*z+5040)*z+(5040*ez*ez-5040))/(z4*z4*ez))
  |z|<100
}


Beta08-12 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  const=pixel, z=p1:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  z=const*(((((((((z+8)*z+56)*z+336)*z+1680)*z+6720)*z+20160)*z+40320)*z+(40320*ez*ez-40320))/(z4*z4*z*ez))
  |z|<100
}


Beta09-12 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  const=pixel, z=p1:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  z=const*(-(((((((((z+9)*z+72)*z+504)*z+3024)*z+15120)*z+60480)*z+181440)*z+362880)*z+(362880*ez*ez-362880))/(z4*z4*z2*ez))
  |z|<100
}


Beta10-12 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  const=pixel, z=p1:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  z=const*(((((((((((z+10)*z+90)*z+720)*z+5040)*z+30240)*z+151200)*z+604800)*z+1814400)*z+3628800)*z+(3628800*ez*ez-3628800))/(z4*z4*z2*z*ez))
  |z|<100
}

