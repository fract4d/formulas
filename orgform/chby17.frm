;Version 1.1
;Copyright (c)1998,1999 Morgan L. Owens
;EG-17{;V.1.1 - earlier versions may be discarded
; = Recurrence
;z=pixel,oz=0
;fz=function in 0
;zt=fn1(z)+p1:
;foz=fz
;fz=function in z
;z=z-p2*fz*(z-oz)/(fz-foz)
;oz=zt
;zt=fn2(z)
;|fz|>=0.0001}

;
;comment{Chebyshev Types
;       Inspired by Mike Wareman
;       Secant Method with Girvan perturbations and weird bailout test
;}



T02-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Mike Wareman
        ; Secant Method with Girvan perturbations and weird bailout test
        ; 
        ; T(n+1) = 2zT(n)-T(n-1)
        ; T(0)  = 1
        ; T(1)  = z
        ;
        ; = 2zT01-T00
  z=pixel, oz=0
  fz=-1
  zt=fn1(z)+p1:
  foz=fz
  fz=(z+z)*z-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


T03-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(4*z*z-3)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


T04-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  z=pixel, oz=0
  fz=1
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=8*zz*(zz-1)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


T05-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  z=pixel, oz=0
  fz=0
  a=4*z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(a*(a-5)+5)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


T06-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  z=pixel, oz=0
  fz=-1
  zz=z*z, ozz=oz*oz
  a=zz+zz
  zt=fn1(z)+p1:
  foz=fz
  fz=a*(8*zz*(a-3)+9)-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


T07-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(8*zz*((zz+zz)*(4*zz-7)+7)-7)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


T08-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  z=pixel, oz=0
  fz=1
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=32*zz*(zz*(4*zz*(zz-2)+5)-1)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


T09-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  z=pixel, oz=0
  fz=0
  zz=z*z
  a=4*zz
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(8*zz*((zz+zz)*(a*(a-9)+27)-15)+9)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


T10-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  z=pixel, oz=0
  fz=-1
  zz=z*z
  a=zz+zz
  b=8*zz
  zt=fn1(z)+p1:
  foz=fz
  fz=a*(b*(a*(b*(a-5)+35)-25)+25)-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}



U02-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Mike Wareman
        ; Secant Method with Girvan perturbations and weird bailout test
        ;
        ; U(n+1) = 2zU(n)-U(n-1)
        ; U(0)  = 1
        ; U(1)  = 2z
        ;
        ; = 2zU01-U00
  z=pixel, oz=0
  fz=-1
  zt=fn1(z)+p1:
  foz=fz
  fz=4*z*z-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


U03-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  fz=4*z*((z+z)*z-1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


U04-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  z=pixel, oz=0
  fz=1
  a=4*z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=a*(a-3)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


U05-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=(z+z)*(16*zz*(zz-1)+3)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


U06-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  z=pixel, oz=0
  fz=-1
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=8*zz*((zz+zz)*(4*zz-5)+3)-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


U07-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  z=pixel, oz=0
  fz=0
  zz=z*z
  a=zz+zz
  zt=fn1(z)+p1:
  foz=fz
  fz=8*z*(a*(4*zz*(a-3)+5)-1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


U08-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  z=pixel, oz=0
  fz=1
  zz=z*z
  a=4*zz
  zt=fn1(z)+p1:
  foz=fz
  fz=8*zz*((zz+zz)*(a*(a-7)+15)-5)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


U09-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  z=pixel, oz=0
  zz=0*0
  a=16*zz
  fz=0
  zz=z*z
  a=16*zz
  zt=fn1(z)+p1:
  foz=fz
  fz=(z+z)*(a*(zz*(a*(zz-2)+17)-5)-3)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


U10-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  z=pixel, oz=0
  fz=-1
  zz=z*z
  a=4*zz
  zt=fn1(z)+p1:
  foz=fz
  fz=a*(a*(16*zz*(zz*(a-9)+6)-35)+7)-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}



S02-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Mike Wareman
        ; Secant Method with Girvan perturbations and weird bailout test
        ;
        ; S(n+1) = zS(n)-S(n-1)
        ; S(0)  = 1
        ; S(1)  = z
        ;
        ; = zS01-S00
  z=pixel, oz=0
  fz=-1
  zt=fn1(z)+p1:
  foz=fz
  fz=z*z-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


S03-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*z-2)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


S04-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  z=pixel, oz=0
  fz=1
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=zz*(zz-3)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


S05-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(zz*(zz-4)+3)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


S06-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  z=pixel, oz=0
  fz=-1
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=zz*(zz*(zz-5)+6)-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


S07-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(zz*(zz*(zz-6)+10)-4)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


S08-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  z=pixel, oz=0
  fz=1
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=zz*(zz*(zz*(zz-7)+15)-10)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


S09-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(zz*(zz*(zz*(zz-8)+21)-20)+5)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


S10-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  z=pixel, oz=0
  fz=-1
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=zz*(zz*(zz*(zz*(zz-9)+28)-35)+15)-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}



C02-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Mike Wareman
        ; Secant Method with Girvan perturbations and weird bailout test
        ;
        ; C(n+1) = zC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = z
        ;
        ; = zC01-C00
  z=pixel, oz=0
  fz=-2
  zt=fn1(z)+p1:
  foz=fz
  fz=z*z-2
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


C03-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*z-3)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


C04-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  z=pixel, oz=0
  fz=2
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=zz*(zz-4)+2
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


C05-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(zz*(zz-5)+3)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


C06-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  z=pixel, oz=0
  fz=-2
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=zz*(zz*(zz-6)+7)-2
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


C07-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(zz*(zz*(zz-7)+12)-5)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


C08-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  z=pixel, oz=0
  fz=2
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=zz*(zz*(zz*(zz-8)+18)-12)+2
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


C09-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(zz*(zz*(zz*(zz-9)+25)-24)+7)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


C10-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  z=pixel, oz=0
  fz=-2
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=zz*(zz*(zz*(zz*(zz-10)+33)-42)+19)-2
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}



P02-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; Chebyshev Types
        ; Inspired by Mike Wareman
        ; Secant Method with Girvan perturbations and weird bailout test
        ;
        ; P(n+1) = ((2n+1)zP(n)-nP(n-1))/(n+1)
        ; P(0) = 1
        ; P(1) = z
        ;
        ; = ( 3zP01-P00)/2
  z=pixel, oz=0
  fz=-1/2
  zt=fn1(z)+p1:
  foz=fz
  fz=(3*z*z-1)/2
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


P03-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 5zP02-2P01)/3
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(5*z*z-3)/2
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


P04-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 7zP03-3P02)/4
  z=pixel, oz=0
  fz=3/8
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=(5*zz*(7*zz-6)+3)/8
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


P05-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 9zP04-4P03)/5
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(7*zz*(9*zz-10)+15)/8
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


P06-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (11zP05-5P04)/6
  z=pixel, oz=0
  fz=-5/16
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=(21*zz*(zz*(11*zz-15)+5)-5)/16
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


P07-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (13zP06-6P05)/7
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(3*zz*(11*zz*(13*zz-21)+105)-35)/16
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


P08-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (15zP07-7P06)/8
  z=pixel, oz=0
  fz=35/128
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=(3*zz*(11*zz*(13*zz*(15*zz-28)+210)-420)+35)/128
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


P09-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (17zP08-8P07)/9
  z=pixel, oz=0
  fz=0
  zz=z*z
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(11*zz*(13*zz*(5*zz*(17*zz-36)+126)-420)+315)/128
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


P10-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (19zP09-9P08)/10
  z=pixel, oz=0
  fz=-63/256
  zt=fn1(z)+p1:
  zz=z*z
  foz=fz
  fz=(11*zz*(13*zz*(zz*(17*zz*(19*zz-45)+630)-210)+315)-63)/256
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}



H02-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Mike Wareman
        ; Secant Method with Girvan perturbations and weird bailout test
        ;
        ; H(n+1) = 2(xH(n)-nH(n-1))
        ; H(0)  = 1
        ; H(1)  = 2x
        ;
        ; = 2(xH(1)-H(0))
  z=pixel, oz=0
  fz=-2
  zt=fn1(z)+p1:
  foz=fz
  fz=(z+z)*(z+z)-2
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


H03-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  fz=4*z*((z+z)*z-3)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


H04-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  z=pixel, oz=0
  fz=12
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=4*(4*zz*(zz-3)+3)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


H05-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=8*z*(4*zz*(zz-5)-9)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


H06-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  z=pixel, oz=0
  fz=120
  zt=fn1(z)+p1:
  foz=fz
  a=(z+z)*z
  fz=8*(a*(a*(a-15)+21)-15)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


H07-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  a=(z+z)*z
  fz=16*z*(a*(a*(a-21)+81)+39)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


H08-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  z=pixel, oz=0
  fz=1680
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  a=zz+zz
  fz=16*(4*zz*(a*(a*(zz-14)+93)-93)+105)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


H09-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  a=zz+zz
  fz=32*z*(4*zz*(a*(a*(zz-18)+177)-417)-207)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


H10-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  z=pixel, oz=0
  fz=30240
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  a=zz+zz
  fz=32*(a*(4*zz*(a*(zz*(a-45)+303)-1254)+1467)-945)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}



He02-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Mike Wareman
         ; Secant Method with Girvan perturbations and weird bailout test
         ;
         ; He(n+1) = xHe(n)-nHe(n-1)
         ; He(0)  = 1
         ; He(1)  = sqrt(2)x
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2), z=pixel, oz=0
  fz=-1
  zt=fn1(z)+p1:
  foz=fz
  fz=s*z*z-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


He03-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2), z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(s*(z*z-2)-1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


He04-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2), z=pixel, oz=0
  fz=3
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=zz*(s*(zz-5)-1)+3
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


He05-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=z*(zz*(s*(zz-9)-1)+a)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


He06-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2), a=33*s+12
  z=pixel, oz=0
  fz=-15
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=zz*(zz*(s*(zz-14)-1)+a)-15
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


He07-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2), a=87*s+18, b=8*s-57
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=z*(zz*(zz*(s*(zz-20)-1)+a)+b)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


He08-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2), a=185*s+25, b=41*s-141
  z=pixel, oz=0
  fz=105
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=zz*(zz*(zz*(s*(zz-27)-1)+a)+b)+105
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


He09-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2), a=345*s+33, b=136*s-285
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=z*(zz*(zz*(zz*(s*(zz-35)-1)+a)+b)+561)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


He10-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2), a=588*s+42, b=321*s-510, c=41*s-1830
  z=pixel, oz=0
  fz=-945
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=zz*(zz*(zz*(zz*(s*(zz-44)-1)+a)+b)+c)-945
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}



Ca02-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Mike Wareman
         ; Secant Method with Girvan perturbations and weird bailout test
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p3
  b=a+a+2
  z=pixel, oz=0
  fz=-a
  zt=fn1(z)+p1:
  foz=fz
  fz=a*(b*z*z-1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Ca03-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p3
  b=(a+a)*(a+1)
  c=(a+a+4)/3
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  fz=b*z*(c*z*z-1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Ca04-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p3
  b=a*(a+1)/2
  c=4*(a+2)
  d=(a+3)/3
  z=pixel, oz=0
  fz=b
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=b*(c*zz*(d*zz-1)+1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Ca05-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p3
  b=a*(a*(a+3)+2)/3
  c=4*(a+3)
  d=(a+4)/5
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=b*z*(c*zz*(d*zz-1)+3)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Ca06-17 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p3
  b=a*(a*(a+3)+2)/6
  c=a+3
  d=4*(a+4)
  k=(a+a+10)/15
  z=pixel, oz=0
  zz=z*z
  fz=-b
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=b*(c*zz*(d*zz*(k*zz-1)+3)-1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Ca07-17 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p3
  b=a*(a*(a*(a+6)+11)+6)/21
  c=a+a+8
  d=(a+a)*(a+11)/15+4
  k=7*(a+5)/5
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=b*z*(c*zz*((zz+zz)*(d*zz-k)+7)-7)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Ca08-17 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p3
  b=a*(a*(a*(a+6)+11)+6)/360
  c=8*(a+4)
  d=a+5
  k=4*(a+6)
  f=(a+7)/14
  z=pixel, oz=0
  fz=15*b
  zt=fn1(z)+p1:
  foz=fz
  fz=b*(c*zz*(d*zz*(k*zz*(f*zz-1)+15)-15)+15)*const
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Ca09-17 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p3
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c=(a+a)*(a*(a+18)+107)+420
  d=(a+8)/18
  k=7*(a*(9*a+94)+270)/6
  f=35*(a+5)/2
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=b*z*(16*zz*(zz*(c*zz*(d*zz-1)+k)-f)+105)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Ca10-17 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p3
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5)
  d=a+a+12
  k=a*(a+15)+56
  f=(a+a+18)/45
  g=14*(a+a+13)/5
  z=pixel, oz=0
  fz=-31903*b
  zt=fn1(z)+p1:
  foz=fz
  zz=z*z
  fz=b*(c*zz*(d*zz*(81*zz*(k*zz*(f*zz-1)+g)-1418)+2127)-31903)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}



Tc02-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Mike Wareman
         ; Secant Method with Girvan perturbations and weird bailout test
         ; 
         ; Tc(n+1) = 2(2z-1)Tc(n)-Tc(n-1)
         ; Tc(0) = 1
         ; Tc(1) = 2(z+1)
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  z=pixel, oz=0
  fz=-5
  zt=fn1(z)+p1:
  foz=fz
  fz=4*z*(z+z+1)-5
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Tc03-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  z=pixel, oz=0
  fz=8
  zt=fn1(z)+p1:
  foz=fz
  fz=(z+z)*(16*z*z-15)+8
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Tc04-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  z=pixel, oz=0
  fz=-11
  zt=fn1(z)+p1:
  foz=fz
  a=8*z
  fz=a*(a*(z*(z+z-1)-2)+11)-11
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Tc05-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  z=pixel, oz=0
  fz=14
  zt=fn1(z)+p1:
  foz=fz
  a=16*z
  fz=(z+z)*(a*(z*(a*(z-1)-13)+19)-95)+14
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Tc06-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  z=pixel, oz=0
  fz=-17
  a=z+z, b=a+a
  fz=b*(a*(32*z*(z*(b*(a-3)-3)+13)-231)+87)-17
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Tc07-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  z=pixel, oz=0
  fz=20
  zt=fn1(z)+p1:
  foz=fz
  fz=(z+z)*(32*z*(z*(8*z*(z*(16*z*(z-2)+5)+30)-213)+71)-287)+20
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Tc08-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  z=pixel, oz=0
  fz=0
  zt=fn1(z)+p1:
  foz=fz
  a=z+z, b=a+a, c=16*z
  fz=c*(b*(a*(c*(z*(b*(a*(a-5)+5)+29)+420+329)-149)+55)-23)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Tc09-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  z=pixel, oz=0
  fz=26
  zt=fn1(z)+p1:
  foz=fz
  a=8*z, b=z+z
  fz=b*(32*z*(z*(a*(z*(16*z*(z*(a*(b-7)+59)+11)+435)-37)+1041)+282)-639)+26
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Tc10-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  z=pixel, oz=0
  fz=-29
  zt=fn1(z)+p1:
  foz=fz
  b=32*z, c=z+z, a=c+c
  fz=a*(c*(b*(z*(a*(c*(b*(z*(8*z*(z-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}



L02-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Mike Wareman
        ; Secant Method with Girvan perturbations and weird bailout test
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  z=pixel, oz=0
  fz=-2
  zt=fn1(z)+p1:
  foz=fz
  fz=z-2
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


L03-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  z=pixel, oz=0
  fz=-3
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(3-z/2)-3
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


L04-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z/8-2)/3+3)-4)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


L05-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(5-z/5)/8-5)/3+5)-5)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


L06-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(z*(z/18-2)/5+5)/8-10/3)+15/2)-6)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


L07-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(49-z)/2-441)/5+735)/84-35)/3+21)/2-7)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


L08-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


L09-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z*(81-z)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


L10-17 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}



La02-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Mike Wareman
         ; Secant Method with Girvan perturbations and weird bailout test
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p3, c=a+2, b=c*(a+1)/2
  z=pixel, oz=0
  fz=b
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z/2-c)+b
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


La03-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p3, d=(a+3)/2, c=d*(a+2), b=c*(a+1)/3
  z=pixel, oz=0
  fz=b
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(d-z/6)-c)+b
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


La04-17 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p3, k=(a+4)/6, d=k*(a+3)*(3/2), c=d*(a+2)*(2/3)
  b=c*(a+1)/4
  z=pixel, oz=0
  fz=b
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z/24-k)+d)-c)+b
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


La05-17 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p3, f=(a+5)/24, k=(f+f)*(a+4), d=k*(a+3)
  c=d*(a+2)/2, b=c*(a+1)/5
  z=pixel, oz=0
  fz=b
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(f-z/120)-k)+d)-c)+b
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


La06-17 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p3, g=(a+6)/120, f=g*(a+5)*(5/2), k=f*(a+4)*(4/3)
  d=k*(a+3)*(3/4), c=d*(a+a+4)/5, b=c*(a+1)/6
  z=pixel, oz=0
  fz=b
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(z*(z/720-g)+f)-k)+d)-c)+b
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
 |fz|>=0.0001
}


La07-17 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p3, h=(a+7)/720, g=h*(a+6)*3, f=g*(a+5)*(5/3)
  k=f*(a+4), d=k*(a+3)*(3/5), c=d*(a+2)/3, b=c*(a+1)/7
  z=pixel, oz=0
  fz=b
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(h-z/5040)-g)+f)-k)+d)-c)+b
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


La08-17 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p3, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+6)*2
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2, c=d*(a+a+4)/7
  b=c*(a+1)/8
  z=pixel, oz=0
  fz=b
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z/40320-i)+h)-g)+f)-k)+d)-c)+b
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


La09-17 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p3, j=(a+9)/40320, i=j*(a+8)*4, h=i*(a+7)*(7/3)
  g=h*(a+6)*(3/2), f=g*(a+5), k=f*(a+a+8)/3, d=k*(a+3)*(3/7)
  c=d*(a+2)/4, b=c*(a+1)/9
  z=pixel, oz=0
  fz=b
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z/40320-i)+h)-g)+f)-k)+d)-c)+b
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


La10-17 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p3, k=(a+10)/362880, j=k*(a+9)*45, i=j*(a+8)*(4/15)
  h=i*(a+7)*(7/4), g=h*(a+6)*12, f=g*(a+5)/12, l=f*(a+4)*(4/7)
  d=l*(a+3)*(15/4), c=d*(a+2)/45, b=c*(a+1)/10
  z=pixel, oz=0
  fz=b
  zt=fn1(z)+p1:
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}



Uc02-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Mike Wareman
         ; Secant Method with Girvan perturbations and weird bailout test
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  z=pixel, oz=0
  fz=3
  zt=fn1(z)+p1:
  foz=fz
  a=4*z-2
  f=a*a-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Uc03-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  z=pixel, oz=0
  fz=-4
  zt=fn1(z)+p1:
  foz=fz
  a=4*z-2
  f=a*(a*a-2)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Uc04-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  z=pixel, oz=0
  fz=5
  zt=fn1(z)+p1:
  foz=fz
  a=4*z-2, aa=a*a
  f=aa*(aa-3)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Uc05-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  z=pixel, oz=0
  fz=-6
  zt=fn1(z)+p1:
  foz=fz
  a=4*z-2, aa=a*a
  f=a*(aa*(aa-4)+3)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Uc06-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  z=pixel, oz=0
  fz=7
  zt=fn1(z)+p1:
  foz=fz
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa-5)+6)-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Uc07-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  z=pixel, oz=0
  fz=-8
  zt=fn1(z)+p1:
  foz=fz
  a=4*z-2, aa=a*a
  f=a*(aa*(aa*(aa-6)+10)-4)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Uc08-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  z=pixel, oz=0
  fz=9
  zt=fn1(z)+p1:
  foz=fz
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa*(aa-7)+15)-10)+1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Uc09-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  z=pixel, oz=0
  fz=-10
  zt=fn1(z)+p1:
  foz=fz
  a=4*z-2, aa=a*a
  f=a*(aa*(aa*(aa*(aa-8)+21)-20)+5)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Uc10-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  z=pixel, oz=0
  fz=523
  zt=fn1(z)+p1:
  foz=fz
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa*(aa*(aa-9)+36)-35)+15)-1
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}



Pc02-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Mike Wareman
         ; Secant Method with Girvan perturbations and weird bailout test
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=((4*z-5)*z+1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Pc03-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  z=pixel, oz=0
  fz=-1
  zt=fn1(z)+p1:
  foz=fz
  fz=(((8*z-50/3)*z+9)*z-1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Pc04-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=((((16*z-142/3)*z+265/6)*z-14)*z+1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Pc05-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  z=pixel, oz=0
  fz=-1
  zt=fn1(z)+p1:
  foz=fz
  fz=(((((32*z-1852/15)*z+2507/15)*z-565/6)*z+20)*z-1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Pc06-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=((((((64*z-1528/5)*z+24628/45)*z-4553/10)*z+1055/6)*z-27)*z+1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Pc07-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  z=pixel, oz=0
  fz=-1
  zt=fn1(z)+p1:
  foz=fz
  fz=(((((((128*z-25552/35)*z+514928/315)*z-573667/315)*z+31619/30)*z-1799/6)*z+35)*z-1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Pc08-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=((((((((256*z-59504/35)*z+1443406/315)*z-289799/45)*z+2542045/504)*z-32662/15)*z+1435/3)*z-44)*z+1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Pc09-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  z=pixel, oz=0
  fz=-1
  zt=fn1(z)+p1:
  foz=fz
  fz=(((((((((512*z-1223392/315)*z+772508/63)*z-8458976/405)*z+26206517/1260)*z-2060215/168)*z+20664/5)*z-725)*z+54)*z-1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Pc10-17 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=((((((((((1024*z-2753216/315)*z+2375464/75)*z-900686282/14175)*z+312488741/4050)*z-4193867/72)*z+22702079/840)*z-36713/5)*z+1055)*z-65)*z+1)
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}



Exp02-17 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types
          ; Inspired by Mike Wareman
          ; Secant Method with Girvan perturbations and weird bailout test
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  z=pixel, oz=0
  fz=1
  zt=fn1(z)+p1:
  foz=fz
  fz=(exp(-z))
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Exp03-17 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  z=pixel, oz=0
  fz=1/2
  zt=fn1(z)+p1:
  foz=fz
  fz=((1-z)/(exp(z)*2))
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Exp04-17 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  z=pixel, oz=0
  fz=1/3
  zt=fn1(z)+p1:
  foz=fz
  fz=(((z-1)*z/6+1/3)/exp(z))
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Exp05-17 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  z=pixel, oz=0
  fz=1/4
  zt=fn1(z)+p1:
  foz=fz
  fz=((((1-z)*z/24-1/12)*z+1/4)/exp(z))
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Exp06-17 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  z=pixel, oz=0
  fz=1/5
  zt=fn1(z)+p1:
  foz=fz
  fz=(((((z-1)*z/120+1/60)*z-1/20)*z+1/5)/exp(z))
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Exp07-17 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  z=pixel, oz=0
  fz=1/6
  zt=fn1(z)+p1:
  foz=fz
  fz=((((((1-z)*z/720-1/360)*z+1/120)*z-1/30)*z+1/6)/exp(z))
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Exp08-17 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  z=pixel, oz=0
  fz=1/7
  zt=fn1(z)+p1:
  foz=fz
  fz=(((((((z-1)*z/5040+1/2520)*z-1/840)*z+1/210)*z-1/42)*z+1/7)/exp(z))
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Exp09-17 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  z=pixel, oz=0
  fz=1/8
  zt=fn1(z)+p1:
  foz=fz
  fz=((((((((1-z)*z/40320-1/20160)*z+1/6720)*z-1/1680)*z+1/336)*z-1/56)*z+1/8)/exp(z))
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}


Exp10-17 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  z=pixel, oz=0
  fz=1/9
  zt=fn1(z)+p1:
  foz=fz
  fz=(((((((((z-1)*z/362880+1/181440)*z-1/60480)*z+1/15120)*z-1/3024)*z+1/504)*z-1/72)*z+1/9)/exp(z))
  z=z-p2*fz*(z-oz)/(fz-foz)
  oz=zt
  zt=fn2(z)
  |fz|>=0.0001
}

