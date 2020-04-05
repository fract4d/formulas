;Version 1.1
;Copyright (c)1998,1999 Morgan L. Owens
;EG-06{;V.1.1 - earlier versions may be discarded
; = Recurrence
;r=p1,bailout=real(p2)/10000,z=pixel:
;f=function in z
;fd=function' in z
;fdd=function" in z
;oz=z
;z=z-r*f/(fd-fdd*f/(fd+fd))
;bailout<=|z-oz|}

;
;
;comment{Chebyshev Types:
;       Inspired by Chris Green:
;       Halley Method
;}



T02-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Halley Method
        ; 
        ; T(n+1) = 2zT(n)-T(n-1)
        ; T(0)  = 1
        ; T(1)  = z
        ;
        ; = 2zT01-T00
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(z+z)*z-1
  fd=4*z
  oz=z
  z=z-r*f/(fd-(f+f)/fd)
  bailout<=|z-oz|
}


T03-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(4*zz-3)
  fd=12*zz-3
  oz=z
  z=z-r*f/(fd-12*z*f/fd)
  bailout<=|z-oz|
}


T04-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=8*zz*(zz-1)+1
  fd=16*z*(zz+zz-1)
  fdd=16*(6*zz-1)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


T05-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  f=z*(a*(a-5)+5)
  fd=20*zz*(4*zz-3)+5
  fdd=40*z*(8*zz-3)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


T06-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  f=a*(8*zz*(a-3)+9)-1
  fd=12*z*(16*zz*(zz-1)+3)
  fdd=12*(16*zz*(5*zz-3)+3)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


T07-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  f=z*(8*zz*(a*(b-7)+7)-7)
  fd=56*zz*(a*(b-5)+3)+7
  fdd=112*z*(b*(6*zz-5)+3)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


T08-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  f=32*zz*(zz*(b*(zz-2)+5)-1)+1
  fd=64*z*(a*(b*(a-3)+5)-1)
  fdd=64*((zz+zz)*(a*(28*zz-30)+15)-1)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


T09-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  f=z*(8*zz*(a*(b*(b-9)+27)-15)+9)
  fd=72*zz*(a*(b*(b-7)+15)-5)+9
  fdd=144*z*(4*zz*((zz+zz)*(16*zz-21)+15)-5)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


T10-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=8*zz
  c=16*zz
  f=a*(b*(a*(b*(a-5)+35)-25)+25)-1
  fd=20*z*(c*(zz*(c*(zz-2)+21)-5)+5)
  fdd=20*(16*zz*(zz*(c*(9*zz-14)+105)-15)+5)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}



U02-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Halley Method
        ;
        ; U(n+1) = 2zU(n)-U(n-1)
        ; U(0)  = 1
        ; U(1)  = 2z
        ;
        ; = 2zU01-U00
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=4*z*z-1
  fd=8*z
  fdd=8
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


U03-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=z*z
  f=4*z*(a+a-1)
  fd=4*(6*a-1)
  fdd=48*z
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


U04-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  f=a*(a-3)+1
  fd=8*z*(a+a-3)
  fdd=24*(8*zz-1)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


U05-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(z+z)*(16*zz*(zz-1)+3)
  fd=32*zz*(5*zz-3)+6
  fdd=64*z*(10*zz-3)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


U06-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  f=8*zz*(a*(4*zz-5)+3)-1
  fd=32*z*(a*(6*zz-5)+3)
  fdd=96*(10*zz*(a-1)+1)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


U07-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  f=8*z*(a*(b*(a-3)+5)-1)
  fd=16*zz*(b*(14*zz-15)+15)-8
  fdd=96*z*(8*zz*(7*zz-5)+5)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


U08-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  b=zz+zz
  c=16*zz
  f=8*zz*(b*(a*(a-7)+15)-5)+1
  fd=16*z*(a*(b*(c-21)+15)-5)
  fdd=16*(a*(14*zz*(c-15)+45)-5)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


U09-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=16*zz
  b=32*zz
  f=(z+z)*(a*(zz*(a*(zz-2)+17)-5)-3)
  fd=b*(zz*(a*(zz*(8*zz-11)-2)+85)-25)-6
  fdd=64*z*((zz+zz)*(b*(zz*(10*zz-11)-768)+85)-25)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


U10-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  b=16*zz
  c=zz+zz
  d=5*zz
  f=a*(a*(b*(zz*(a-9)+6)-35)+7)-1
  fd=8*z*(8*zz*(b*(c*(d-9)+9)-35)+7)
  fdd=8*(24*zz*(48*zz*(c*(d-7)+5)-35)+7)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}



S02-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Halley Method
        ;
        ; S(n+1) = zS(n)-S(n-1)
        ; S(0)  = 1
        ; S(1)  = z
        ;
        ; = zS01-S00
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*z-1
  fd=z+z
  fdd=2
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


S03-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz-2)
  fd=3*zz-2
  fdd=6*z
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


S04-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz-3)+1
  fd=(z+z)*(zz+zz-3)
  fdd=6*(zz+zz-1)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


S05-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz-4)+3)
  fd=zz*(5*zz-12)+3
  fdd=4*z*(5*zz-6)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


S06-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz-5)+6)-1
  fd=(z+z)*(zz*(3*zz-10)+6)
  fdd=6*(5*zz*(zz-2)+2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


S07-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz-6)+10)-4)
  fd=zz*(zz*(7*zz-30)+30)-4
  fdd=6*z*(zz*(7*zz-20)+10)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


S08-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  f=zz*(zz*(zz*(zz-7)+15)-10)+1
  fd=(z+z)*(zz*(zz*(a-21)+30)-10)
  fdd=(zz+zz)*(7*zz*(a-15)+90)-20
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


S09-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz*(zz-8)+21)-20)+5)
  fd=zz*(zz*(zz*(9*zz-56)+105)-60)+5
  fdd=12*z*(zz*((zz+zz)*(3*zz-14)+35)-10)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


S10-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz*(zz-9)+28)-35)+15)-1
  fd=(z+z)*(zz*(zz*(zz*(5*zz-36)+84)-70)+15)
  fdd=6*(zz*(zz*(3*zz*(5*zz-28)+140)-70)+5)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}



C02-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Halley Method
        ;
        ; C(n+1) = zC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = z
        ;
        ; = zC01-C00
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*z-2
  fd=z+z
  fdd=2
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


C03-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz-3)
  fd=3*zz-3
  fdd=6*z
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


C04-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz-4)+2
  fd=4*z*(zz-2)
  fdd=4*(3*zz-2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


C05-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz-5)+3)
  fd=5*zz*(zz-3)+3
  fdd=10*z*(zz+zz-3)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


C06-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz-6)+7)-2
  fd=(z+z)*(3*zz*(zz-4)+7)
  fdd=6*zz*(5*zz-12)+14
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


C07-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz-7)+12)-5)
  fd=zz*(7*zz*(zz-5)+36)-5
  fdd=(z+z)*(7*zz*(3*zz-10)+36)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


C08-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz-8)+18)-12)+2
  fd=8*z*(zz*(zz*(zz-6)+9)-3)
  fdd=8*(zz*(zz*(7*zz-30)+27)-3)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


C09-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz*(zz-9)+25)-24)+7)
  fd=zz*(zz*(9*zz*(zz-7)+125)-72)+7
  fdd=(z+z)*(zz*(9*zz*(4*zz-21)+250)-72)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


C10-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz*(zz-10)+33)-42)+19)-2
  fd=(z+z)*(zz*(zz*(5*zz*(zz-8)+99)-84)+19)
  fdd=(zz+zz)*(5*zz*(zz*(9*zz-56)+99)-252)+38
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}



P02-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Halley Method
        ;
        ; P(n+1) = ((2n+1)zP(n)-nP(n-1))/(n+1)
        ; P(0) = 1
        ; P(1) = z
        ;
        ; = ( 3zP01-P00)/2
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(3*z*z-1)/2
  fd=3*z
  fdd=3
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


P03-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 5zP02-2P01)/3
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(5*zz-3)/2
  fd=(15*zz-3)/2
  fdd=15*z
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


P04-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 7zP03-3P02)/4
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(5*zz*(7*zz-6)+3)/8
  fd=5*z*(7*zz-3)
  fdd=105*zz-15
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


P05-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 9zP04-4P03)/5
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(7*zz*(9*zz-10)+15)/8
  fd=(105*zz*(3*zz-2)+15)/8
  fdd=105*z*(3*zz-1)/2
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


P06-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (11zP05-5P04)/6
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(21*zz*(zz*(11*zz-15)+5)-5)/16
  fd=21*z*(zz*(33*zz-30)+5)/8
  fdd=(315*zz*(11*zz-6)+105)/8
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


P07-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (13zP06-6P05)/7
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(3*zz*(11*zz*(13*zz-21)+105)-35)/16
  fd=(21*zz*(11*zz*(13*zz-15)+45)-35)/16
  fdd=21*z*(11*zz*(13*zz-10)+45)/8
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


P08-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (15zP07-7P06)/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(3*zz*(11*zz*(13*zz*(15*zz-28)+210)-420)+35)/128
  fd=9*z*(11*zz*(13*zz*(5*zz-7)+35)-35)/16
  fdd=(3465*zz*(13*zz*(zz-1)+3)-315)/16
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


P09-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (17zP08-8P07)/9
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(11*zz*(13*zz*(5*zz*(17*zz-36)+126)-420)+315)/128
  fd=(55*zz*(13*zz*(9*zz*(17*zz-28)+126)-252)+315)/128
  fdd=55*z*(13*zz*(18*zz*(17*zz-21)+63)-126)/32
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


P10-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (19zP09-9P08)/10
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(11*zz*(13*zz*(zz*(17*zz*(19*zz-45)+630)-210)+315)-63)/256
  fd=55*z*(13*zz*(zz*(17*zz*(19*zz-36)+378)-84)+63)/128
  fdd=495*(13*zz*(zz*(17*zz*(19*zz-28)+210)-28)+7)/128
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}



H02-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Halley Method
        ;
        ; H(n+1) = 2(xH(n)-nH(n-1))
        ; H(0)  = 1
        ; H(1)  = 2x
        ;
        ; = 2(xH(1)-H(0))
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=2*((z+z)*z-1)
  fd=16*z
  fdd=16
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


H03-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=(z+z)*z
  f=4*z*(a-3)
  fd=12*(a-1)
  fdd=48*z
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


H04-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  f=4*(4*zz*(zz-3)+3)
  fd=32*z*(a-3)
  fdd=96*(a-1)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


H05-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=8*z*(4*zz*(zz-5)-9)
  fd=8*(20*zz*(zz-3)-9)
  fdd=320*z*(zz+zz-3)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


H06-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  f=8*(a*(a*(a-15)+21)-15)
  fd=96*z*(4*zz*(zz-5)+7)
  fdd=96*(20*zz*(zz-3)+7)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


H07-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  f=16*z*(a*(a*(a-21)+81)+39)
  fd=16*(a*(14*zz*(a-15)+243)+39)
  fdd=192*z*(28*zz*(zz-5)+81)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


H08-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  f=16*(b*(a*(a*(zz-14)+93)-93)+105)
  fd=328*z*(b*(a*(a-21)+93)-93)
  fdd=328*(b*(14*zz*(a-15)+279)-93)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


H09-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  c=b+a
  f=32*z*(b*(a*(a*(zz-18)+177)-417)-207)
  fd=96*(b*(a*(c*(zz-14)+295)-417)-69)
  fdd=768*z*(5*zz*(c*(a-21)+295)-417)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


H10-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=8*zz
  f=32*(a*(4*zz*(a*(zz*(a-45)+303)-1254)+1467)-945)
  fd=128*z*(b*(zz*(10*zz*(zz-18)+909)-1254)+1467)
  fdd=1152*(b*(5*zz*(a*(zz-14)+101)-418)+163)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}



He02-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Halley Method
         ;
         ; He(n+1) = xHe(n)-nHe(n-1)
         ; He(0)  = 1
         ; He(1)  = sqrt(2)x
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2), a=s+s
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=s*z*z-1
  fd=a*z
  fdd=a
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


He03-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2), a=s+s
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(s*(zz-2)-1)
  fd=s*(3*zz-3)-1
  fdd=a*(3*z-1)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


He04-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2), a=s+s
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(s*(zz-5)-1)+3
  fd=(z+z)*(s*(zz+zz-5)-1)
  fdd=a*(6*zz-5)-20
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


He05-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(s*(zz-9)-1)+a)
  fd=zz*(s*(5*zz-27)-3)+a
  fdd=(z+z)*(s*(10*zz-27)-3)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


He06-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2), a1=33*s+12, a2=66*s+24
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(s*(zz-14)-1)+a1)-15
  fd=(z+z)*(zz*(s*(3*zz-28)-2)+a1)
  fdd=6*zz*(s*(5*zz-28)-2)+a2
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


He07-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2), a1=87*s+18, b=8*s-57, a2=261*s+54
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(s*(zz-20)-1)+a1)+b)
  fd=zz*(zz*(s*(7*zz-520)-5)+a2)+b
  fdd=(z+z)*(zz*(s*(21*zz-1040)-10)+a2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


He08-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2), a1=185*s+25, b1=41*s-141, a2=370*s+50
  a3=3*a2, b2=b1+b1
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(s*(zz-27)-1)+a1)+b1)+105
  fd=(z+z)*(zz*(zz*(s*(4*zz-81)-3)+a2)+b1)
  fdd=(zz+zz)*(zz*(s*(28*zz-405)-15)+a3)+b2
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


He09-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2), a1=345*s+33, b1=136*s-285, a2=1725*s+165
  b2=3*b1, a3=10*a1
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz*(s*(zz-35)-1)+a1)+b1)+561)
  fd=zz*(zz*(zz*(s*(9*zz-245)-7)+a2)+b2)+561
  fdd=(z+z)*(zz*(3*zz*(s*(12*zz-245)-7)+a3)+b2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


He10-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2), a1=588*s+42, b1=321*s-510, c1=41*s-1830
  a2=1764*s+126, b2=642*s-1020, a3=8820*s+630, b3=1926*s-3060
  c2=c1+c1
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz*(s*(zz-44)-1)+a1)+b1)+c1)-945
  fd=(z+z)*(zz*(zz*(zz*(s*(5*zz-176)-4)+a2)+b2)+c1)
  fdd=(zz+zz)*(zz*(zz*(s*(45*zz-1232)-28)+a3)+b3)+c2
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}



Ca02-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Halley Method
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p1
  b1=a+a+2
  b2=4*a*(a+1)
  b3=4*a*(a+1)
  bailout=real(p2)/10000
  z=pixel:
  f=a*(b1*z*z-1)
  fd=b2*z
  fdd=b3
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Ca03-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p1
  b1=(a+a)*(a+1)
  c1=(a+a+4)/3
  b2=(a+a)*(a+1)
  c2=a+a+4
  b3=8*a*(a*(a+3)+2)
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*z*(c1*zz-1)
  fd=b2*(c2*zz-1)
  fdd=b3*z
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Ca04-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p1
  b1=a*(a+1)/2
  c1=4*(a+2)
  d1=(a+3)/3
  b2=4*a*(a*(a+3)+2)
  c2=(a+a)/3+2
  b3=4*a*(a*(a+3)+2)
  c3=a+a+8
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz-1)+1)
  fd=b2*z*(c2*zz-1)
  fdd=b3*(c3*zz-1)
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Ca05-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p1
  b1=a*(a*(a+3)+2)/3
  c1=4*(a+3)
  d1=(a+4)/5
  b2=a*(a*(a+3)+2)/3
  c2=4*(a+3)
  d2=a+4
  b3=8*a*(a*(a*(a+6)+11)+6)/3
  c3=a+a+8
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*z*(c1*zz*(d1*zz-1)+3)
  fd=b2*(c2*zz*(d2*zz-3)+3)
  fdd=b3*z*(c3*zz-3)
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Ca06-06 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p1
  b1=a*(a*(a+3)+2)/6
  c1=a+3
  d1=4*(a+4)
  e1=(a+a+10)/15
  b2=a*(a*(a*(a+6)+11)+6)/3
  c2=8*(a+4)
  d2=(a+5)/5
  b3=a*(a*(a*(a+6)+11)+6)
  c3=8*(a+4)/3
  d3=a+5
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz*(e1*zz-1)+3)-1)
  fd=b2*z*(c2*zz*(d2*zz-1)+3)
  fdd=b3*(c3*zz*(d3*zz-3)+1)
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Ca07-06 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p1
  b1=a*(a*(a*(a+6)+11)+6)/21
  c1=a+a+8
  d1=(a+a)*(a+11)/15+4
  k1=7*(a+5)/5
  b2=a*(a*(a*(a+6)+11)+6)/3
  c2=a+a+8
  k2=a+5
  b3=4*a*(a*(a*(a*(a+10)+35)+50)+24)/3
  c3=(a*(a+11)+30)/5
  d3=a+5
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*z*(c1*zz*((zz+zz)*(d1*zz-k1)+7)-7)
  fd=b2*(c2*zz*((zz+zz)*(d1*zz-k2)+3)-1)
  fdd=b3*z*(4*zz*(c3*zz-d3)+3)
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Ca08-06 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p1
  b1=a*(a*(a*(a+6)+11)+6)/360
  c1=8*a+32
  d1=a+5
  k1=4*a+24
  f1=(a+7)/14
  b2=(a+a)*(a*(a*(a*(a+10)+35)+500)+24)/45
  c2=d1+d1
  d2=a+a+12
  k2=(a+a)/7+2
  b3=(a+a)*(a*(a*(a*(a+10)+35)+50)+24)/45
  k3=7*e2
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz*(k1*zz*(f1*zz-1)+15)-15)+15)
  fd=b2*z*(c2*zz*(d2*zz*(k2*zz-3)+15)-15)
  fdd=b3*(c2*zz*(d2*zz*(k3*zz-15)+45)-15)
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Ca09-06 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p1
  b1=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c1=(a+a)*(a*(a+18)+107)+420
  d1=(a+8)/18
  e1=7*(a*(9*a+94)+270)/6
  f1=35*(a+5)/2
  b2=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  d2=(a+8)/2
  e2=35*(a*(9*a+94)+270)/6
  f2=105*(a+5)/2
  b3=4*a*(a*(a*(a*(a+10)+35)+50)+24)/405
  c3=(a+a)*(a*(a+18)+107)+420
  d3=a+a+16
  e3=35*(a*(9*a+94)+270)/3
  f3=105*(a+5)
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*z*(16*zz*(zz*(c1*zz*(d1*zz-1)+e1)-f1)+105)
  fd=b2*(16*zz*(zz*(c1*zz*(d2*zz-7)+e2)-f2)+105)
  fdd=b3*z*(2*zz*(c3*zz*(d3*zz-21)+e3)-f3)
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Ca10-06 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p1
  b1=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c1=15*(a+5)
  d1=a+a+12
  e1=a*(a+15)+56
  f1=(a+a+18)/45
  g1=14*(a+a+13)/5
  b2=a*(a*(a*(a*(a*(a+15)+85)+225)+274)+120)/12762
  e2=(a+9)/9
  f2=21*(a+a+13)/5
  b3=a*(a*(a*(a*(a*(a+15)+85)+225)+274)+120)/4254
  d3=a*(a+15)+56
  e3=a+9
  f3=21*(a+a+13)
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz*(81*zz*(e1*zz*(f1*zz-1)+g1)-1418)+2127)-31903)
  fd=b2*z*(d1*zz*(162*zz*(e1*zz*(e2*zz-2)+f2)-2881)+2127)
  fdd=b3*(d1*zz*(54*zz*(d3*zz*(e3*zz-14)+f3)-2881)+709)
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}



Tc02-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Halley Method
         ; 
         ; Tc(n+1) = 2(2x-1)Tc(n)-Tc(n-1)
         ; Tc(0) = 1
         ; Tc(1) = 2(x+1)
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=4*z*(z+z+1)-5
  fd=16*z+4
  fdd=16
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Tc03-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  r=p1, bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(z+z)*(16*zz-15)+8
  fd=96*zz-30
  fdd=192*z
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Tc04-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=8*z
  z=a*(a*(z*(z+z-1)-2)+11)-11
  fd=64*z*(z*(a-3)-4)+88
  fdd=384*z*(4*z-1)-256
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Tc05-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=16*z
  b=32*z
  c=5*z
  z=(z+z)*(a*(z*(a*(z-1)-13)+19)-95)+14
  fd=b*(z*(a*(c-4)-39)+38)-190
  fdd=64*z*(b*(c-3)-39)+1216
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Tc06-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=z+z
  b=a+a
  z=b*(a*(32*z*(z*(b*(a-3)-3)+13)-231)+87)-17
  fd=48*z*(16*z*(b*(z*(b-5)-1)+13)-77)+348
  fdd=1536*z*(a*(20*(z-1)-3)+13)-3696
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Tc07-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=8*z
  b=16*z
  f=(z+z)*(32*z*(z*(a*(z*(b*(z-2)+5)+30)-213)+71)-287)+20
  fd=64*z*(z*(a*(z*(b*(7*z-12)+25)+120)-639)+71)-1148
  fdd=128*z*(b*(z*(24*z*(7*z-10)+25)+90)-639)+4544
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Tc08-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=z+z
  b=a+a
  c=16*z
  f=c*(b*(a*(c*(z*(b*(a*(a-5)+5)+29)+420+329)-149)+55)-23)
  fd=128*z*(z*(c*(z*(8*z*(z*(c-35)+15)+145)+168)+987)-149)+880
  fdd=256*z*(32*z*(z*(a*(14*z*(8*z-15)+75)+145)+126)+987)-19072
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Tc09-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=8*z
  b=16*z
  c=z+z
  f=c*(32*z*(z*(a*(z*(b*(z*(a*(c-7)+59)+11)+435)-37)+1041)+282)-639)+26
  fd=64*z*(z*(a*(z*(b*(z*(b*(9*z-28)+413)+66)+2175)-148)+3123)+564)-1278
  fdd=128*z*(b*(z*(a*(z*(32*z*(18*z-49)+1239)+165)+2175)-111)+3123)+36096
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Tc10-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  r=p1, bailout=real(p2)/10000, z=pixel:
  a=4*z
  b=32*z
  c=z+z
  d=16*z
  f=a*(c*(b*(z*(a*(c*(b*(z*(8*z*(z-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29
  fd=d*(d*(z*(a*(a*(128*z*(z*(c*(5*z-18)+43)-7)+981)-2835)+3414)-1209)-3959)+1780
  fdd=512*z*(z*(8*z*(z*(128*z*(z*(18*z*(5*z-16)+301)-42)+4905)-2835)+5121)-1209)-63344
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}



L02-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Halley Method
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z/2-2)+1
  fd=z-2
  oz=z
  z=z-r*f/(fd-f/(fd+fd))
  bailout<=|z-oz|
}


L03-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(3-z/3)/2-3)+1
  fd=z*(3-z/2)-3
  fdd=3-z
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


L04-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z/8-2)/3+3)-4)+1
  fd=z*(z*(z/6-2)+6)-4
  fdd=(z*(z/3-2)+6)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


L05-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(5-z/5)/8-5)/3+5)-5)+1
  fd=z*(z*(z*(20-z)/24-5)+10)-5
  fdd=(z*(z*(40-3*z)/24-5)+10)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


L06-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z/18-2)/5+5)/8-10/3)+15/2)-6)+1
  fd=z*(z*(z*(z*(z/15-2)+20)/8-10)+15)-6
  fdd=(z*(z*(z*(z/3-8)+60)/8-20)+15)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


L07-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(49-z)/2-441)/5+735)/84-35)/3+21)/2-7)+1
  fd=z*(z*(z*(z*(z*(42-z)/10-63)/12+35)/3-35)/2+21)-7
  fdd=(z*(z*(z*(z*(21-3*z/5)/12-21)/3+35)/2-35)+21)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


L08-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1
  fd=z*(z*(z*(z*(z*(z*(z/28-2)/3+14)/20-7)+35)/3-28)+28)-8
  fdd=(z*(z*(z*(z*(z*(z/12-4)+70)/20-28)/3+35)-56)+28)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


L09-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(81-z)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1
  fd=z*(z*(z*(z*(z*(z*(z*(648-9*z)/16-1134)+15876)/5-23814)+95256)-252)+216)/17-9
  fdd=(z*(z*(z*(z*(z*(z*(567-9*z)/2-6804)/5+15876)-95256)+285768)-504)+216)/17
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


L10-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1
  fd=z*(z*(z*(z*(z*(z*(z*(z*(z/10-9)/8+405)/2-378)+3969)/4-59535)+19845)-34020)+27025)/567-10
  fdd=(z*(z*(z*(z*(z*(z*(z*(9*z/20-45)/16+810)-1323)+11907)/2-297675)+79380)-102060)+54050)/567
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}



La02-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Halley Method
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p1
  c=a+2
  b=c*(a+1)/2
  bailout=real(p2)/10000
  z=pixel:
  f=z*(z/2-c)+b
  fd=z-c
  oz=z
  z=z-f/(fd-f/(fd+fd))
  bailout<=|z-oz|
}


La03-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; =((a+5-z)La(2)-(a+2)La(1))/3
  a=p1
  d1=(a+3)/2
  c1=d1*(a+2)
  b1=c1*(a+1)/3
  d2=a+3
  c2=d2*(a+2)/2
  bailout=real(p2)/10000
  z=pixel:
  f=z*(z*(d1-z/2)-c1)+b
  fd=z*(d2-z/2)-c2
  fdd=d2-z
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


La04-06 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; =((a+7-z)La(3)-(a+3)La(2))/4
  a=p1
  e1=(a+4)/6
  d1=e1*(a+3)*(3/2)
  c1=d1*(a+a+4)/3
  b=c1*(a+1)/4
  e2=(a+4)/2
  d2=e2*(a+3)
  c2=d2*(a+2)/3
  e3=a+4
  d3=e3*(a+3)/2
  bailout=real(p2)/10000
  z=pixel:
  f=z*(z*(z*(z/24-e1)+d1)-c1)+b
  fd=z*(z*(z/6-e2)+d2)-c2
  fdd=z*(z/2-e3)+d3
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


La05-06 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; =((a+9-z)La(4)-(a+4)La(3))/5
  a=p1
  f1=(a+5)/24
  e1=f1*(a+4)*2
  d1=e1*(a+3)
  c1=d1*(a+2)/2
  b=c1*(a+1)/5
  f2=(a+5)/6
  e2=f2*(a+4)*(3/2)
  d2=e2*(a+a+6)/3
  c2=d2*(a+2)/4
  f3=(a+5)/2
  e3=f3*(a+4)
  d3=e3*(a+3)/3
  bailout=real(p2)/10000
  z=pixel:
  f=z*(z*(z*(z*(f1-z/120)-e1)+d1)-c1)+b
  fd=z*(z*(z*(f2-z/24)-e2)+d2)-c2
  fdd=z*(z*(f3-z/6)-e3)+d3
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


La06-06 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; =((a+11-z)La(5)-(a+5)La(4))/6
  a=p1
  g1=(a+6)/120
  f1=g1*(a+5)*(5/2)
  e1=f1*(a+4)*(4/3)
  d1=e1*(a+3)*(3/4)
  c1=d1*(a+a+4)/5
  b=c1*(a+1)/6
  g2=(a+6)/24
  f2=g2*(a+a+10)
  e2=f2*(a+4)
  d2=e2*(a+3)/2
  c2=d2*(a+2)/5
  g3=(a+6)/6
  f3=g3*(a+5)*(3/2)
  e3=f3*(a+a+8)/3
  d3=e3*(a+3)/4
  bailout=real(p2)/10000
  z=pixel:
  f=z*(z*(z*(z*(z*(z/720-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z/120-g2)+f2)-e2)+d2)-c2
  fdd=z*(z*(z*(z/24-g3)+f3)-e3)+d3
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


La07-06 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; =((a+13-z)La(6)-(a+6)La(5))/7
  a=p1
  h1=(a+7)/720
  g1=h1*(a+6)*3
  f1=g1*(a+5)*(5/3)
  e1=f1*(a+4)
  d1=e1*(a+3)*(3/5)
  c1=d1*(a+2)/3
  b=c1*(a+1)/7
  h2=(a+7)/120
  g2=h2*(a+6)*(5/2)
  f2=g2*(a+5)*(4/3)
  e2=f2*(a+4)*(3/4)
  d2=e2*(a+a+6)/5
  c2=d2*(a+2)/6
  h3=(a+7)/24
  g3=h3*(a+a+12)
  f3=g3*(a+5)
  e3=f3*(a+4)/2
  d3=e3*(a+3)/5
  bailout=real(p2)/10000
  z=pixel:
  f=z*(z*(z*(z*(z*(z*(h1-z/5040)-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(h-z/720)-g2)+f2)-e2)+d2)-c2
  fdd=z*(z*(z*(z*(h3-z/120)-g3)+f3)-e3)+d3
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


La08-06 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; =((a+15-z)La(7)-(a+7)La(6))/8
  a=p1
  i1=(a+8)/5040
  h1=i1*(a+7)*(7/2)
  g1=h1*(a+a+12)
  f1=g1*(a+5)*(5/4)
  e1=f1*(a+4)*(4/5)
  d1=e1*(a+3)/2
  c1=d1*(a+a+4)/7
  b=c1*(a+1)/8
  i2=(a+8)/720
  h2=i2*(a+7)
  g2=h2*(a+6)*(5/3)
  f2=g2*(a+5)
  e2=f2*(a+4)*(3/5)
  d2=e2*(a+3)/3
  c2=d2*(a+2)/7
  i3=(a+8)/120
  h3=i3*(a+7)*(5/6)
  g3=h3*(a+6)*(4/3)
  f3=g3*(a+5)*(3/4)
  e3=f3*(a+a+8)/5
  d3=e3*(a+3)/6
  bailout=real(p2)/10000
  z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z/40320-i1)+h1)-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(z*(z/5040-i2)+h2)-g2)+f2)-e2)+d2)-c2
  fdd=z*(z*(z*(z*(z*(z/720-i3)+h3)-g3)+f3)-e3)+d3
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


La09-06 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; =((a+17-z)La(8)-(a+8)La(7))/9
  a=p1
  j1=(a+9)/40320
  i1=j1*(a+8)*4
  h1=i1*(a+7)*(7/3)
  g1=h1*(a+6)*(3/2)
  f1=g1*(a+5)
  e1=f1*(a+a+8)/3
  d1=e1*(a+3)*(3/7)
  c1=d1*(a+2)/4
  b=c1*(a+1)/9
  j2=(a+9)/5040
  i2=j2*(a+8)*(7/2)
  h2=i2*(a+7)
  g2=h2*(a+6)*(5/4)
  f2=g2*(a+5)*(4/5)
  e2=f2*(a+4)/2
  d2=e2*(a+a+6)/7
  c2=d2*(a+2)/8
  j3=(a+9)*(7/720)
  i3=j3*(a+8)*(18/7)
  h3=i3*(a+7)*(25/36)
  g3=h3*(a+6)*(4/5)
  f3=g3*(a+5)*(9/20)
  e3=f3*(a+a+8)/9
  d3=e3*(a+3)/14
  bailout=real(p2)/10000
  z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(j1-z/362880)-i1)+h1)-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(z*(z*(j2-z/40320)-i2)+h2)-g2)+f2)-e2)+d2)-c2
  fdd=z*(z*(z*(z*(z*(z*(j3-z/5040)-i3)+h3)-g3)+f3)-e3)+d3
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


La10-06 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; =((a+19-z)La(9)-(a+9)La(8))/10
  a=p1
  k1=(a+10)/362880
  j1=k1*(a+9)*45
  i1=j1*(a+8)*(4/15)
  h1=i1*(a+7)*(7/4)
  g1=11*h1*(a+6)
  f1=g1*(a+5)/12
  e1=f1*(a+4)*(4/7)
  d1=e1*(a+3)*(15/4)
  c1=d1*(a+2)/45
  b=c1*(a+1)/10
  k2=(a+10)/40320
  j2=40*k2*(a+9)
  i2=j2*(a+8)*(7/30)
  h2=i2*(a+7)*(3/2)
  g2=10*h2*(a+6)
  f2=g2*(a+5)/15
  e2=f2*(a+4)*(3/7)
  d2=e2*(a+3)*(5/2)
  c2=d2*(a+2)/90
  k3=(a+10)*(8/5040)
  j3=k3*(a+9)*(245/8)
  i3=j3*(a+8)*(6/35)
  h3=i3*(a+7)*(25/24)
  g3=h3*(a+6)*(32/5)
  f3=g3*(a+5)*(3/80)
  e3=f3*(a+4)*(4/21)
  d3=e3*(a+3)*(5/8)
  bailout=real(p2)/10000
  z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/3628800-k1)+j1)-i1)+h1)-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(z*(z*(z*(z/362880-k2)+j2)-i2)+h2)-g2)+f2)-e2)+d2)-c2
  fdd=z*(z*(z*(z*(z*(z*(z*(z/40320-k3)+j3)-i3)+h3)-g3)+f3)-e3)+d3
  oz=z
  z=z-f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}



Uc02-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Halley Method
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  r=p1
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2
  f=a*a-1
  fd=8*a
  oz=z
  z=z-r*f/(fd-16*f/fd)
  bailout<=|z-oz|
}


Uc03-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  r=p1
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2
  aa=a*a
  f=a*(aa-2)
  fd=12*aa-8
  fdd=96*a
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Uc04-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  r=p1
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a, a2=aa+aa
  f=aa*(aa-3)+1
  fd=8*a*(a2-3)
  fdd=96*(a2-1)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Uc05-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  r=p1
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=a*(aa*(aa-4)+3)
  fd=4*(aa*(5*aa-12)+3)
  fdd=64*a*(5*aa-6)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Uc06-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  r=p1
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa-5)+6)-1
  fd=8*a*(aa*(3*aa-10)+12)
  fdd=96*(aa*(7*aa-20)+10)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Uc07-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  r=p1
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=a*(aa*(aa*(aa-6)+10)-4)
  fd=4*(aa*(aa*(7*aa-30)+30)-4)
  fdd=96*a*(aa*(7*aa-200)+10)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Uc08-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  r=p1
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa*(aa-7)+15)-10)+1
  fd=8*a*(aa*(aa*(4*aa-21)+30)-10)
  fdd=32*(aa*(7*aa*(4*aa-15)+90)-10)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Uc09-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  r=p1
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=a*(aa*(aa*(aa*(aa-8)+21)-20)+5)
  fd=4*(aa*(aa*(aa*(9*aa-56)+105)-60)+5)
  fdd=64*a*(7*aa*((aa+aa)*(aa-6)+15)+30)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Uc10-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  r=p1
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa*(aa*(aa-9)+36)-35)+15)-1
  fd=8*a*(aa*(aa*(aa*(5*aa-36)+108)-70)+15)
  fdd=96*(aa*(3*aa*(aa*(5*aa-28)+60)-70)+5)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}



Pc02-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Halley Method
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=((4*z-5)*z+1)
  fd=8*z-5
  fdd=8
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Pc03-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(((8*z-50/3)*z+9)*z-1)
  fd=(24*z-100/3)*z+9
  fdd=48*z-100/3
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Pc04-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=((((16*z-142/3)*z+265/6)*z-14)*z+1)
  fd=((64*z-142)*z+265/3)*z-14
  fdd=(192*z-284)*z+265/3
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Pc05-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(((((32*z-1852/15)*z+2507/15)*z-565/6)*z+20)*z-1)
  fd=(((160*z-7408/15)*z+2507/5)*z-565/3)*z+20
  fdd=((640*z-7408/5)*z+5014/5)*z-565/3
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Pc06-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=((((((64*z-1528/5)*z+24628/45)*z-4553/10)*z+1055/6)*z-27)*z+1)
  fd=((((384*z-1528)*z+98512/45)*z-13659/10)*z+1055/3)*z-27
  fdd=(((1920*z-6112)*z+98512/15)*z-13659/5)*z+1055/3
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Pc07-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(((((((128*z-25552/35)*z+514928/315)*z-573667/315)*z+31619/30)*z-1799/6)*z+35)*z-1)
  fd=(((((896*z-153312/35)*z+514928/63)*z-2294668/315)*z+31619/10)*z-1799/3)*z+35
  fdd=((((5376*z-153312/7)*z+2059712/63)*z-2294668/105)*z+31619/5)*z-1799/3
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Pc08-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=((((((((256*z-59504/35)*z+1443406/315)*z-289799/45)*z+2542045/504)*z-32662/15)*z+1435/3)*z-44)*z+1)
  fd=((((((2048*z-59504/5)*z+2886812/105)*z-289799/9)*z+2542045/126)*z-32662/5)*z+2870/3)*z-44
  fdd=(((((14336*z-357024/5)*z+2886812/21)*z-1159196/9)*z+2542045/42)*z-65324/5)*z+2870/3
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Pc09-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=(((((((((512*z-1223392/315)*z+772508/63)*z-8458976/405)*z+26206517/1260)*z-2060215/168)*z+20664/5)*z-725)*z+54)*z-1)
  fd=(((((((4608*z-9787136/315)*z+772508/9)*z-16917952/135)*z+26206517/252)*z-2060215/42)*z+61992/5)*z-1450)*z+54
  fdd=((((((36864*z-9787136/45)*z+1545016/3)*z-16917952/27)*z+26206517/63)*z-2060215/14)*z+123984/5)*z-1450
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Pc10-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  r=p1, bailout=real(p2)/10000, z=pixel:
  f=((((((((((1024*z-2753216/315)*z+2375464/75)*z-900686282/14175)*z+312488741/4050)*z-4193867/72)*z+22702079/840)*z-36713/5)*z+1055)*z-65)*z+1)
  fd=((((((((10240*z-2753216/35)*z+19003712/75)*z-900686282/2025)*z+312488741/675)*z-20969335/72)*z+22702079/210)*z-110139/5)*z+2110)*z-65
  fdd=(((((((92160*z-22025728/35)*z+133025984/75)*z-1801372564/675)*z+312488741/135)*z-20969335/18)*z+22702079/70)*z-220278/5)*z+2110
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}



O02-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Chris Green:
        ; Halley Method
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)sin(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=((z2+4)/(z2*z))
  fd=((4-z)*z-12)/z4
  fdd=((24-10*z)*z-96)/(z4*z)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


O03-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)sin(2*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=((((6-3*z)*z-12)*z+24)/z4)
  fd=(((3*z-12)*z+36)*z-96)/(z4*z)
  fdd=(((42*z-156)*z+432)*z-1056)/(z4*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


O04-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)sin(3*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z6=z4*z2
  f=(((((12*z-36)*z+72)*z-144)*z+192)/(z4*z))
  fd=((((72-12*z)*z-216)*z+576)*z-960)/z6
  fdd=((((1224-216*z)*z-3456)*z+8640)*z-13440)/(z6*z)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


O05-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)sin(4*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z6=z2*z2*z2
  f=((((((180-20*z)*z-480)*z+960)*z-1760)*z+1920)/z6)
  fd=(((((20*z-360)*z+1440)*z-3840)*z+8800)*z-11520)/(z6*z)
  fdd=(((((440*z-7560)*z+28800)*z-72960)*z+158400)*z-195840)/(z6*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


O06-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)sin(5*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z6=z2*z2*z2, z7=z6*z
  f=(((((((40*z-510)*z+2880)*z-7200)*z+14160)*z-24000)*z+23040)/z7)
  fd=((((((1020-40*z)*z-8640)*z+28800)*z-70800)*z+144000)*z-161280)/(z6*z2)
  fdd=((((((25500-1040*z)*z-207360)*z+662400)*z-1557600)*z+3024000)*z-3225600)/(z7*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


O07-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)sin(6*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=((((((((1274-56*z)*z-11172)*z+50400)*z-120624)*z+231840)*z-368256)*z+322560)/z8)
  fd=(((((((56*z-2548)*z+33516)*z-201600)*z+603120)*z-1391040)*z+2577792)*z-2580480)/(z8*z)
  fdd=(((((((1680*z-73892)*z+938448)*z-5443200)*z+15681120)*z-34776000)*z+61867008)*z-59351040)/(z8*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


O08-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)sin(7*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4, z10=z8*z2
  f=(((((((((266/3*z-7784/3)*z+35280)*z-245952)*z+967232)*z-2239104)*z+4200448)*z-6322176)*z+5160960)/(z8*z))
  fd=((((((((15568-266*z)*z/3-105840)*z+983808)*z-4836160)*z+13434624)*z-29403136)*z+50577408)*z-46448640)/z10
  fdd=((((((((171248-9044/3*z)*z-3386880)*z+30498048)*z-145084800)*z+389604096)*z-823287808)*z+1365590016)*z-1207664640)/(z10*z)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


O09-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)sin(8*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z10=z4*z4*z2
  f=((((((((((4932-114*z)*z-92064)*z+951264)*z-5670720)*z+20289024)*z-45704448)*z+83736576)*z-120434688)*z+92897280)/z10)
  fd=(((((((((114*z-9864)*z+276192)*z-3805056)*z+28353600)*z-121734144)*z+319931136)*z-669892608)*z+1083912192)*z-928972800)/(z10*z)
  fdd=(((((((((4332*z-364968)*z+9942912)*z-133176960)*z+964022400)*z-4017226752)*z+10237796352)*z-20766670848)*z+32517365760)*z-26940211200)/(z10*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


O10-06 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)sin(9*pi/2)^2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4, z12=z8*z4
  f=(((((((((((321/2*z-8445)*z+213720)*z-3030360)*z+26113680)*z-138775680)*z+462911040)*z-1018759680)*z+1825274880)*z-2524815360)*z+1857945600)/(z8*z2*z))
  fd=((((((((((16890-321/2*z)*z-641160)*z+12121440)*z-130568400)*z+832654080)*z-3240377280)*z+8150077440)*z-16427473920)*z+25248153600)*z-20437401600)/z12
  fdd=((((((((((-6741*z+692490)*z-25646400)*z+472736160)*z-4961599200)*z+30808200960)*z-116653582080)*z+285252710400)*z-558534113280)*z+833189068800)*z-653996851200)/(z12*z)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}



Sc02-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Chris Green:
         ; Halley Method
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z
  f=2/z
  fd=-2/z2
  fdd=-4/(z2*z)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Sc03-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z
  f=4/z2
  fd=-8/(z2*z)
  fdd=-40/(z2*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Sc04-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=((((4-2*z)*z-8)*z+16)/(z2*z))
  fd=((16-4*z)*z-48)/z4
  fdd=((144-40*z)*z-384)/(z4*z)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Sc05-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=(((((11/2*z-18)*z+36)*z-72)*z+96)/z4)
  fd=(((18*z-72)*z+216)*z-384)/(z4*z)
  fdd=(((252*z-936)*z+2592)*z-4224)/(z4*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Sc06-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z6=z4*z2
  f=((((((72-8*z)*z-192)*z+384)*z-704)*z+768)/(z4*z))
  fd=((((384-72*z)*z-1152)*z+2816)*z-3840)/z6
  fdd=((((6528-1296*z)*z-18432)*z+42240)*z-53760)/(z6*z)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Sc07-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z6=z2*z2*z2
  f=(((((((13*z-170)*z+960)*z-2400)*z+4720)*z-8000)*z+7680)/z6)
  fd=(((((170*z-1920)*z+7200)*z-18880)*z+40000)*z-46080)/(z6*z)
  fdd=(((((3740*z-40320)*z+144000)*z-358720)*z+720000)*z-783360)/(z6*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Sc08-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=((((((((364-16*z)*z-3192)*z+14400)*z-34464)*z+66240)*z-105216)*z+92160)/(z4*z2*z))
  fd=((((((6384-364*z)*z-43200)*z+137856)*z-331200)*z+631296)*z-645120)/z8
  fdd=((((((159600-9464*z)*z-1036800)*z+3170688)*z-7286400)*z+13257216)*z-12902400)/(z8*z)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Sc09-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=(((((((((263/12*z-1946/3)*z+8820)*z-61488)*z+241808)*z-559776)*z+1050112)*z-1580544)*z+1290240)/z8)
  fd=(((((((1946/3*z-17640)*z+184464)*z-967232)*z+2798880)*z-6300672)*z+11063808)*z-10321920)/(z8*z)
  fdd=(((((((19460*z-511560)*z+5164992)*z-26115264)*z+72770880)*z-157516800)*z+265531392)*z-237404160)/(z8*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Sc10-06 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4, z10=z8*z2
  f=((((((((((1096-76/3*z)*z-61376/3)*z+211392)*z-1260160)*z+4508672)*z-10156544)*z+18608128)*z-26763264)*z+20643840)/(z8*z))
  fd=((((((((122752/3-1096*z)*z-634176)*z+5040640)*z-22543360)*z+60939264)*z-130256896)*z+214106112)*z-185794560)/z10
  fdd=((((((((1350272-37264*z)*z-20293632)*z+156259840)*z-676300800)*z+1767238656)*z-3647193088)*z+5780865024)*z-4830658560)/(z10*z)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}



Exp02-06 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Chris Green:
          ; Halley Method
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(-z)
  f=ez
  fd=-ez
  fdd=ez
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Exp03-06 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  e1=ez+ez
  f=((1-z)/e1)
  fd=(z/2-1)/ez
  fdd=(3-z)/e1
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Exp04-06 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=(((z-1)*z/6+1/3)/ez)
  fd=((1/2-z/6)*z-1/2)/ez
  fdd=((z-5)*z/6+1)/ez
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|  
}


Exp05-06 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=((((1-z)*z/24-1/12)*z+1/4)/ez)
  fd=(((z/24-1/6)*z+1/6)*z-1/3)/ez
  fdd=(((7-z)*z/24-1/2)*z+1/2)/ez
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Exp06-06 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=(((((z-1)*z/120+1/60)*z-1/20)*z+1/5)/ez)
  fd=((((-z/120+1/24)*z-1/24)*z+1/12)*z-1/4)/ez
  fdd=((((z/120-3/40)*z+1/6)*z-1/6)*z+1/3)/ez
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Exp07-06 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=((((((1-z)*z/720-1/360)*z+1/120)*z-1/30)*z+1/6)/ez)
  fd=(((((z/720-1/120)*z+1/120)*z-1/60)*z+1/20)*z-1/5)/ez
  fdd=(((((11-z)*z/720-1/24)*z+1/24)*z-1/12)*z+1/4)/ez
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Exp08-06 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=(((((((z-1)*z/5040+1/2520)*z-1/840)*z+1/210)*z-1/42)*z+1/7)/ez)
  fd=((((((1/720-z/5040)*z-1/720)*z+1/360)*z-1/120)*z+1/30)*z-1/6)/ez
  fdd=((((((z/5040-13/5040)*z+1/120)*z-1/120)*z+1/60)*z-1/20)*z+1/5)/ez
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Exp09-06 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=((((((((1-z)*z/40320-1/20160)*z+1/6720)*z-1/1680)*z+1/336)*z-1/56)*z+1/8)/ez)
  fd=(((((((z/40320-1/5040)*z+1/5040)*z-1/2520)*z+1/840)*z-1/210)*z+1/42)*z-1/7)/ez
  fdd=(((((((1/2688-z/40320)*z-1/720)*z+1/720)*z-1/360)*z+1/120)*z-1/30)*z+1/6)/ez
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Exp10-06 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  f=(((((((((z-1)*z/362880+1/181440)*z-1/60480)*z+1/15120)*z-1/3024)*z+1/504)*z-1/72)*z+1/9)/ez)
  fd=((((((((1/40320-z/362880)*z-1/40320)*z+1/20160)*z-1/6720)*z+1/1680)*z-1/336)*z+1/56)*z-1/8)/ez
  fdd=((((((((z/362880-17/362880)*z+1/5040)*z-1/5040)*z+1/2520)*z-1/840)*z+1/210)*z-1/42)*z+1/7)/ez
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}



Alpha02-06 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Chris Green:
            ; Halley Method
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z
  ez=exp(z)*z2*z
  f=(((z-2)*z+2)/ez)
  fd=(((1-z)*z+2)*z-6)/(ez*z)
  fdd=((((z-12)*z+8)*z+24)*z-48)/(ez*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Alpha03-06 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, ez=exp(z)*z2*z2
  f=((((z-3)*z+6)*z-6)/ez)
  fd=(((2-z)*z2-12)*z+24)/(ez*z)
  fdd=(((((z-17)*z+28)*z+12)*z-168)*z+264)/(ez*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Alpha04-06 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, ez=exp(z)*z2*z2*z
  f=(((((z-4)*z+12)*z-24)*z+24)/ez)
  fd=(((((3-z)*z-4)*z-12)*z+72)*z-120)/(ez*z)
  fdd=((((((z-22)*z+58)*z-56)*z-264)*z+1200)*z-1680)/(ez*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Alpha05-06 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, ez=exp(z)*z2*z2*z2
  f=((((((z-5)*z+20)*z-60)*z+120)*z-120)/ez)
  fd=(((((4-z)*z-10)*z2+120)*z-480)*z+720)/(ez*z)
  fdd=(((((((z-27)*z+98)*z-210)*z-120)*z+2760)*z-9360)*z+12240)/(ez*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Alpha06-06 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, ez=exp(z)*z2*z2*z2*z
  f=(((((((z-6)*z+30)*z-120)*z+360)*z-720)*z+720)/ez)
  fd=(((((((5-z)*z-18)*z+30)*z+120)*z-1080)*z+3600)*z-5040)/(ez*z)
  fdd=((((((((z-32)*z+148)*z-480)*z+600)*z+3840)*z-27360)*z+80640)*z-100800)/(ez*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Alpha07-06 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4
  f=((((((((z-7)*z+42)*z-210)*z+840)*z-2520)*z+5040)*z-5040)/ez)
  fd=(((((((6-z)*z-28)*z+84)*z2-1680)*z+10080)*z-30240)*z+40320)/(ez*z)
  fdd=(((((((((z-37)*z+208)*z-896)*z+2352)*z+1680)*z-53760)*z+282240)*z-766080)*z+927360)/(ez*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Alpha08-06 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4*z
  f=(((((((((z-8)*z+56)*z-336)*z+1680)*z-6720)*z+20160)*z-40320)*z+40320)/(ez))
  fd=(((((((((7-z)*z-40)*z+168)*z-336)*z-1680)*z+20160)*z-100800)*z+282240)*z-362880)/(ez*z)
  fdd=((((((((((z-42)*z+278)*z-1488)*z+5712)*z-8736)*z-70560)*z+685440)*z-3104640)*z+7983360)*z-9434880)/(ez*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Alpha09-06 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4*z2
  f=((((((((((z-9)*z+72)*z-504)*z+3024)*z-15120)*z+60480)*z-181440)*z+362880)*z-362880)/ez)
  fd=(((((((((-z+8)*z-54)*z+288)*z-1008)*z2+30240)*z-241920)*z+1088640)*z-2903040)*z+3628800)/(ez*z)
  fdd=(((((((((((z-47)*z+358)*z-2286)*z+11376)*z-35280)*z-30240)*z+1239840)*z-8830080)*z+36650880)*z-90720000)*z+105235200)/(ez*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Alpha10-06 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4*z2*z
  f=(((((((((((z-10)*z+90)*z-720)*z+5040)*z-30240)*z+151200)*z-604800)*z+1814400)*z-3628800)*z+3628800)/(ez))
  fd=(((((((((((9-z)*z-70)*z+450)*z-2160)*z+5040)*z+30240)*z-453600)*z+3024000)*z-12700800)*z+32659200)*z-39916800)/(ez*z)
  fdd=((((((((((((z-52)*z+448)*z-3320)*z+20160)*z-89280)*z+161280)*z+1572480)*z-19353600)*z+118540800)*z-464486400)*z+1117670400)*z-1277337600)/(ez*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}



Beta02-06 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Chris Green:
           ; Halley Method
           ;
           ; Beta Integral
           ; Beta[0] = 2sinh(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=2*e1-2
  e3=ez*z2*z
  f=(((z+2)*z+e2)/e3)
  fd=(((-z-3)*z+e2)*z-6*e1+6)/(e3*z)
  fdd=((((-3*z-20)*z+10*e1-36)*z-12*e1)*z-48*e1+48)/(e3*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Beta03-06 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=6*e1-6
  e3=ez*z2*z2
  f=(-(((z+3)*z+6)*z+e2)/e3)
  fd=((((z+4)*z+6)*z-e2)*z+24*e1+24)/(e3*z)
  fdd=(((((z+13)*z+38)*z-18*e1+48)*z+36*e1+60)*z+120*e1+120)/(e3*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Beta04-06 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=24*e1-24
  e3=ez*z2*z2*z
  f=(((((z+4)*z+12)*z+24)*z+e2)/e3)
  fd=(((((-z-5)*z-20)*z-36)*z+e2)*z-120*e1-120)/(e3*z)
  fdd=((((((-3*z-34)*z-150)*z-448)*z+120*e1-648)*z-240*e1-720)*z-1680*e1-1680)/(e3*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Beta05-06 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=120*e1-120
  e3=ez*z2*z2*z2
  f=(-(((((z+5)*z+20)*z+60)*z+120)*z+e2)/e3)
  fd=((((((z+6)*z+30)*z+120)*z+240)*z-e2)*z+720*e1+720)/(e3*z)
  fdd=(((((((3*z+41)*z+222)*z+990)*z+3120)*z-600*e1+4920)*z+1440*e1+4320)*z+12240*e1+12240)/(e3*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Beta06-06 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=720*e1-720
  e3=ez*z2*z2*z2*z
  f=(((((((z+6)*z+30)*z+120)*z+360)*z+720)*z+e2)/e3)
  fd=(((((((-z-7)*z-42)*z-210)*z-840)*z-1800)*z+e2)*z-5040*e1-5040)/(e3*z)
  fdd=((((((((-3*z-48)*z-308)*z-1680)*z-7560)*z-24720)*z+3600*e1-41760)*z-10080*e1-30240)*z-100800*e1-100800)/(e3*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Beta07-06 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=5040*e1-5040
  e3=ez*z4*z4
  f=(-(((((((z+7)*z+42)*z+210)*z+840)*z+2520)*z+5040)*z+e2)/e3)
  fd=((((((((z+8)*z+56)*z+336)*z+1680)*z+6720)*z+15120)*z-e2)*z+40320*e1+40320)/(e3*z)
  fdd=(((((((((3*z+55)*z+408)*z+2632)*z+14448)*z+65520)*z+220080)*z-25200*e1+393120)*z+80640*e1+241920)*z+927360*e1+927360)/(e3*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Beta08-06 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=40320*e1-40320
  e3=ez*z4*z4*z
  f=(((((((((z+8)*z+56)*z+336)*z+1680)*z+6720)*z+20160)*z+40320)*z+e2)/e3)
  fd=(((((((((-z-9)*z-72)*z-504)*z-3024)*z-15120)*z-60480)*z-141120)*z+e2)*z-362880*e1-362880)/(e3*z)
  fdd=((((((((((-3*z-62)*z-522)*z-3888)*z-25200)*z-139104)*z-635040)*z-2177280)*z+201600*e1-4072320)*z-725760*e1-2177280)*z-9434880*e1-9434880)/(e3*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Beta09-06 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=362880*e1-362880
  e3=ez*z4*z4*z2
  f=(-(((((((((z+9)*z+72)*z+504)*z+3024)*z+15120)*z+60480)*z+181440)*z+362880)*z+e2)/e3)
  fd=((((((((((z+10)*z+90)*z+720)*z+5040)*z+30240)*z+151200)*z+604800)*z+1451520)*z-e2)*z+3628800*e1+3628800)/(e3*z)
  fdd=(((((((((((3*z+69)*z+650)*z+5490)*z+41040)*z+267120)*z+1481760)*z6804000)*z+23708160)*z-1814400*e1+46085760)*z+7257600*e1+21772800)*z+105235200*e1+105235200)/(e3*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}


Beta10-06 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=3628800*e1-3628800
  e3=ez*z4*z4*z2*z
  f=(((((((((((z+10)*z+90)*z+720)*z+5040)*z+30240)*z+151200)*z+604800)*z+1814400)*z+3628800)*z+e2)/e3)
  fd=(((((((((((-z-11)*z-110)*z-990)*z-7920)*z-55440)*z-332640)*z-1663200)*z-6652800)*z-16329600)*z+e2)*z-39916800*e1-39916800)/(e3*z)
  fdd=((((((((((((-3*z-76)*z-792)*z-7480)*z-63360)*z-475200)*z-3104640)*z-17297280)*z-79833600)*z-281836800)*z+18144000*e1-566092800)*z-79833600*e1-239500800)*z-1277337600*e1-1277337600)/(e3*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
}

