;Version 1.1
;Copyright (c)1998,1999 Morgan L. Owens
;EG-16{;V.1.1 - earlier versions may be discarded
; = Recurrence
;bailout=real(p2)/10000,z=pixel,oz=p1
;fz=function in p1:
;zt=z
;foz=fz
;fz=function in z
;z=z-fz*(z-oz)/(fz-foz)
;oz=zt
;bailout<=sqrt(|(|z|)-(|oz|)|)}

;
;comment{Chebyshev Types:
;       Inspired by Mike Wareman:
;       Secant Method with weird bailout test
;}



T02-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Mike Wareman:
        ; Secant Method with weird bailout test
        ; 
        ; T(n+1) = 2zT(n)-T(n-1)
        ; T(0)  = 1
        ; T(1)  = z
        ;
        ; = 2zT01-T00
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(p1+p1)*p1-1:
  zt=z
  foz=fz
  fz=(z+z)*z-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


T03-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(4*p1*p1-3):
  zt=z
  foz=fz
  fz=z*(4*z*z-3)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


T04-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=8*zz*(zz-1)+1:
  zz=z*z
  zt=z
  foz=fz
  fz=8*zz*(zz-1)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


T05-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1*p1
  fz=p1*(a*(a-5)+5):
  a=4*z*z
  zt=z
  foz=fz
  fz=z*(a*(a-5)+5)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


T06-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  a=zz+zz
  fz=a*(8*zz*(a-3)+9)-1:
  zz=z*z, ozz=oz*oz
  a=zz+zz
  zt=z
  foz=fz
  fz=a*(8*zz*(a-3)+9)-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


T07-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(8*zz*((zz+zz)*(4*zz-7)+7)-7):
  zz=z*z
  zt=z
  foz=fz
  fz=z*(8*zz*((zz+zz)*(4*zz-7)+7)-7)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


T08-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=32*zz*(zz*(4*zz*(zz-2)+5)-1)+1:
  zz=z*z
  zt=z
  foz=fz
  fz=32*zz*(zz*(4*zz*(zz-2)+5)-1)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


T09-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  a=4*zz
  fz=p1*(8*zz*((zz+zz)*(a*(a-9)+27)-15)+9):
  zz=z*z
  a=4*zz
  zt=z
  foz=fz
  fz=z*(8*zz*((zz+zz)*(a*(a-9)+27)-15)+9)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


T10-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  a=zz+zz
  b=8*zz
  fz=a*(b*(a*(b*(a-5)+35)-25)+25)-1:
  zz=z*z
  a=zz+zz
  b=8*zz
  zt=z
  foz=fz
  fz=a*(b*(a*(b*(a-5)+35)-25)+25)-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}



U02-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Mike Wareman:
        ; Secant Method with weird bailout test
        ;
        ; U(n+1) = 2zU(n)-U(n-1)
        ; U(0)  = 1
        ; U(1)  = 2z
        ;
        ; = 2zU01-U00
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=4*p1*p1-1:
  zt=z
  foz=fz
  fz=4*z*z-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


U03-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=4*p1*((p1+p1)*p1-1):
  zt=z
  foz=fz
  fz=4*z*((z+z)*z-1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


U04-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1*p1
  fz=a*(a-3)+1:
  a=4*z*z
  zt=z
  foz=fz
  fz=a*(a-3)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


U05-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=(p1+p1)*(16*zz*(zz-1)+3):
  zz=z*z
  zt=z
  foz=fz
  fz=(z+z)*(16*zz*(zz-1)+3)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


U06-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=8*zz*((zz+zz)*(4*zz-5)+3)-1:
  zz=z*z
  zt=z
  foz=fz
  fz=8*zz*((zz+zz)*(4*zz-5)+3)-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


U07-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  a=zz+zz
  fz=8*p1*(a*(4*zz*(a-3)+5)-1):
  zz=z*z
  a=zz+zz
  zt=z
  foz=fz
  fz=8*z*(a*(4*zz*(a-3)+5)-1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


U08-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  a=4*zz
  fz=8*zz*((zz+zz)*(a*(a-7)+15)-5)+1:
  zz=z*z
  a=4*zz
  zt=z
  foz=fz
  fz=8*zz*((zz+zz)*(a*(a-7)+15)-5)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


U09-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  a=16*zz
  fz=(p1+p1)*(a*(zz*(a*(zz-2)+17)-5)-3):
  zz=z*z
  a=16*zz
  zt=z
  foz=fz
  fz=(z+z)*(a*(zz*(a*(zz-2)+17)-5)-3)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


U10-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=z*z
  a=4*zz
  fz=a*(a*(16*zz*(zz*(a-9)+6)-35)+7)-1:
  zz=z*z
  a=4*zz
  zt=z
  foz=fz
  fz=a*(a*(16*zz*(zz*(a-9)+6)-35)+7)-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}



S02-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Mike Wareman:
        ; Secant Method with weird bailout test
        ;
        ; S(n+1) = zS(n)-S(n-1)
        ; S(0)  = 1
        ; S(1)  = z
        ;
        ; = zS01-S00
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*p1-1:
  zt=z
  foz=fz
  fz=z*z-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


S03-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(p1*p1-2):
  zt=z
  foz=fz
  fz=z*(z*z-2)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


S04-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz-3)+1:
  zz=z*z
  zt=z
  foz=fz
  fz=zz*(zz-3)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


S05-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(zz*(zz-4)+3):
  zz=z*z
  zt=z
  foz=fz
  fz=z*(zz*(zz-4)+3)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


S06-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz*(zz-5)+6)-1:
  zz=z*z
  zt=z
  foz=fz
  fz=zz*(zz*(zz-5)+6)-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


S07-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(zz*(zz*(zz-6)+10)-4):
  zz=z*z
  zt=z
  foz=fz
  fz=z*(zz*(zz*(zz-6)+10)-4)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


S08-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz*(zz*(zz-7)+15)-10)+1:
  zz=z*z
  zt=z
  foz=fz
  fz=zz*(zz*(zz*(zz-7)+15)-10)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


S09-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(zz*(zz*(zz*(zz-8)+21)-20)+5):
  zz=z*z
  zt=z
  foz=fz
  fz=z*(zz*(zz*(zz*(zz-8)+21)-20)+5)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


S10-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz*(zz*(zz*(zz-9)+28)-35)+15)-1:
  zz=z*z
  zt=z
  foz=fz
  fz=zz*(zz*(zz*(zz*(zz-9)+28)-35)+15)-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}



C02-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Mike Wareman:
        ; Secant Method with weird bailout test
        ;
        ; C(n+1) = zC(n)-C(n-1)
        ; C(0)  = 2
        ; C(1)  = z
        ;
        ; = zC01-C00
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*p1-2:
  zt=z
  foz=fz
  fz=z*z-2
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


C03-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(p1*p1-3):
  zt=z
  foz=fz
  fz=z*(z*z-3)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


C04-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz-4)+2:
  zz=z*z
  zt=z
  foz=fz
  fz=zz*(zz-4)+2
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


C05-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(zz*(zz-5)+3):
  zz=z*z
  zt=z
  foz=fz
  fz=z*(zz*(zz-5)+3)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


C06-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz*(zz-6)+7)-2:
  zz=z*z
  zt=z
  foz=fz
  fz=zz*(zz*(zz-6)+7)-2
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


C07-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(zz*(zz*(zz-7)+12)-5):
  zz=z*z
  zt=z
  foz=fz
  fz=z*(zz*(zz*(zz-7)+12)-5)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


C08-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz*(zz*(zz-8)+18)-12)+2:
  zz=z*z
  zt=z
  foz=fz
  fz=zz*(zz*(zz*(zz-8)+18)-12)+2
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


C09-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(zz*(zz*(zz*(zz-9)+25)-24)+7):
  zz=z*z
  zt=z
  foz=fz
  fz=z*(zz*(zz*(zz*(zz-9)+25)-24)+7)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


C10-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz*(zz*(zz*(zz-10)+33)-42)+19)-2:
  zz=z*z
  zt=z
  foz=fz
  fz=zz*(zz*(zz*(zz*(zz-10)+33)-42)+19)-2
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}



P02-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; Chebyshev Types:
        ; Inspired by Mike Wareman:
        ; Secant Method with weird bailout test
        ;
        ; P(n+1) = ((2n+1)zP(n)-nP(n-1))/(n+1)
        ; P(0) = 1
        ; P(1) = z
        ;
        ; = ( 3zP01-P00)/2
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(3*p1*p1-1)/2:
  zt=z
  foz=fz
  fz=(3*z*z-1)/2
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


P03-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 5zP02-2P01)/3
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(5*p1*p1-3)/2:
  zt=z
  foz=fz
  fz=z*(5*z*z-3)/2
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


P04-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 7zP03-3P02)/4
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=(5*zz*(7*zz-6)+3)/8:
  zz=z*z
  zt=z
  foz=fz
  fz=(5*zz*(7*zz-6)+3)/8
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


P05-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = ( 9zP04-4P03)/5
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(7*zz*(9*zz-10)+15)/8:
  zz=z*z
  zt=z
  foz=fz
  fz=z*(7*zz*(9*zz-10)+15)/8
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


P06-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (11zP05-5P04)/6
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=(21*zz*(zz*(11*zz-15)+5)-5)/16:
  zz=z*z
  zt=z
  foz=fz
  fz=(21*zz*(zz*(11*zz-15)+5)-5)/16
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


P07-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (13zP06-6P05)/7
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(3*zz*(11*zz*(13*zz-21)+105)-35)/16:
  zz=z*z
  zt=z
  foz=fz
  fz=z*(3*zz*(11*zz*(13*zz-21)+105)-35)/16
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


P08-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (15zP07-7P06)/8
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=(3*zz*(11*zz*(13*zz*(15*zz-28)+210)-420)+35)/128:
  zz=z*z
  zt=z
  foz=fz
  fz=(3*zz*(11*zz*(13*zz*(15*zz-28)+210)-420)+35)/128
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


P09-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (17zP08-8P07)/9
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(11*zz*(13*zz*(5*zz*(17*zz-36)+126)-420)+315)/128:
  zz=z*z
  zt=z
  foz=fz
  fz=z*(11*zz*(13*zz*(5*zz*(17*zz-36)+126)-420)+315)/128
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


P10-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens        
        ; = (19zP09-9P08)/10
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=(11*zz*(13*zz*(zz*(17*zz*(19*zz-45)+630)-210)+315)-63)/256:
  zt=z
  zz=z*z
  foz=fz
  fz=(11*zz*(13*zz*(zz*(17*zz*(19*zz-45)+630)-210)+315)-63)/256
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}



H02-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Mike Wareman:
        ; Secant Method with weird bailout test
        ;
        ; H(n+1) = 2(xH(n)-nH(n-1))
        ; H(0)  = 1
        ; H(1)  = 2x
        ;
        ; = 2(xH(1)-H(0))
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(p1+p1)*(p1+p1)-2:
  zt=z
  foz=fz
  fz=(z+z)*(z+z)-2
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


H03-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(2)-2H(1))
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=4*p1*((p1+p1)*p1-3):
  zt=z
  foz=fz
  fz=4*z*((z+z)*z-3)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


H04-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(3)-3H(2))
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=4*(4*zz*(zz-3)+3):
  zt=z
  foz=fz
  zz=z*z
  fz=4*(4*zz*(zz-3)+3)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


H05-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(4)-4H(3))
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=8*p1*(4*zz*(zz-5)-9):
  zt=z
  foz=fz
  zz=z*z
  fz=8*z*(4*zz*(zz-5)-9)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


H06-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(5)-5H(4))
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=(p1+p1)*p1
  fz=8*(a*(a*(a-15)+21)-15):
  zt=z
  foz=fz
  a=(z+z)*z
  fz=8*(a*(a*(a-15)+21)-15)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


H07-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(6)-6H(5))
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=(p1+p1)*p1
  fz=16*p1*(a*(a*(a-21)+81)+39):
  zt=z
  foz=fz
  a=(z+z)*z
  fz=16*z*(a*(a*(a-21)+81)+39)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


H08-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(7)-7H(6))
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  a=zz+zz
  fz=16*(4*zz*(a*(a*(zz-14)+93)-93)+105):
  zt=z
  foz=fz
  zz=z*z
  a=zz+zz
  fz=16*(4*zz*(a*(a*(zz-14)+93)-93)+105)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


H09-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(8)-8H(7))
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  a=zz+zz
  fz=32*p1*(4*zz*(a*(a*(zz-18)+177)-417)-207):
  zt=z
  foz=fz
  zz=z*z
  a=zz+zz
  fz=32*z*(4*zz*(a*(a*(zz-18)+177)-417)-207)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


H10-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(xH(9)-9H(8))
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  a=zz+zz
  fz=32*(a*(4*zz*(a*(zz*(a-45)+303)-1254)+1467)-945):
  zt=z
  foz=fz
  zz=z*z
  a=zz+zz
  fz=32*(a*(4*zz*(a*(zz*(a-45)+303)-1254)+1467)-945)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}



He02-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Mike Wareman:
         ; Secant Method with weird bailout test
         ;
         ; He(n+1) = xHe(n)-nHe(n-1)
         ; He(0)  = 1
         ; He(1)  = sqrt(2)x
         ;
         ; = xHe(1)-He(0)
  s=sqrt(2), bailout=real(p2)/10000, z=pixel, oz=p1
  fz=s*p1*p1-1:
  zt=z
  foz=fz
  fz=s*z*z-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


He03-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(2)-2He(1)
  s=sqrt(2), bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(s*(p1*p1-2)-1):
  zt=z
  foz=fz
  fz=z*(s*(z*z-2)-1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


He04-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(3)-3He(2)
  s=sqrt(2), bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(s*(zz-5)-1)+3:
  zt=z
  foz=fz
  zz=z*z
  fz=zz*(s*(zz-5)-1)+3
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


He05-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(zz*(s*(zz-9)-1)+a):
  zt=z
  foz=fz
  zz=z*z
  fz=z*(zz*(s*(zz-9)-1)+a)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


He06-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(5)-5He(4)
  s=sqrt(2), a=33*s+12
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz*(s*(zz-14)-1)+a)-15:
  zt=z
  foz=fz
  zz=z*z
  fz=zz*(zz*(s*(zz-14)-1)+a)-15
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


He07-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(6)-6He(5)
  s=sqrt(2), a=87*s+18, b=8*s-57
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(zz*(zz*(s*(zz-20)-1)+a)+b):
  zt=z
  foz=fz
  zz=z*z
  fz=z*(zz*(zz*(s*(zz-20)-1)+a)+b)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


He08-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(7)-7He(6)
  s=sqrt(2), a=185*s+25, b=41*s-141
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz*(zz*(s*(zz-27)-1)+a)+b)+105:
  zt=z
  foz=fz
  zz=z*z
  fz=zz*(zz*(zz*(s*(zz-27)-1)+a)+b)+105
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


He09-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(8)-8He(7)
  s=sqrt(2), a=345*s+33, b=136*s-285
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=p1*(zz*(zz*(zz*(s*(zz-35)-1)+a)+b)+561):
  zt=z
  foz=fz
  zz=z*z
  fz=z*(zz*(zz*(zz*(s*(zz-35)-1)+a)+b)+561)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


He10-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = xHe(9)-9He(8)
  s=sqrt(2), a=588*s+42, b=321*s-510, c=41*s-1830
  bailout=real(p2)/10000, z=pixel, oz=p1
  zz=p1*p1
  fz=zz*(zz*(zz*(zz*(s*(zz-44)-1)+a)+b)+c)-945:
  zt=z
  foz=fz
  zz=z*z
  fz=zz*(zz*(zz*(zz*(s*(zz-44)-1)+a)+b)+c)-945
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}



Ca02-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Mike Wareman:
         ; Secant Method with weird bailout test
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p1
  b=a+a+2
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=-a:
  zt=z
  foz=fz
  fz=a*(b*z*z-1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Ca03-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p1
  b=(a+a)*(a+1)
  c=(a+a+4)/3
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=0:
  zt=z
  foz=fz
  fz=b*z*(c*z*z-1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Ca04-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p1
  b=a*(a+1)/2
  c=4*(a+2)
  d=(a+3)/3
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=b:
  zt=z
  foz=fz
  zz=z*z
  fz=b*(c*zz*(d*zz-1)+1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Ca05-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p1
  b=a*(a*(a+3)+2)/3
  c=4*(a+3)
  d=(a+4)/5
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=0:
  zt=z
  foz=fz
  zz=z*z
  fz=b*z*(c*zz*(d*zz-1)+3)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Ca06-16 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p1
  b=a*(a*(a+3)+2)/6
  c=a+3
  d=4*(a+4)
  k=(a+a+10)/15
  bailout=real(p2)/10000, z=pixel, oz=0
  zz=0*0
  fz=-b:
  zt=z
  foz=fz
  zz=z*z
  fz=b*(c*zz*(d*zz*(k*zz-1)+3)-1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Ca07-16 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/21
  c=a+a+8
  d=(a+a)*(a+11)/15+4
  k=7*(a+5)/5
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=0:
  zt=z
  foz=fz
  zz=z*z
  fz=b*z*(c*zz*((zz+zz)*(d*zz-k)+7)-7)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Ca08-16 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p1
  b=a*(a*(a*(a+6)+11)+6)/360
  c=8*(a+4)
  d=a+5
  k=4*(a+6)
  f=(a+7)/14
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=15*b:
  zt=z
  foz=fz
  fz=b*(c*zz*(d*zz*(k*zz*(f*zz-1)+15)-15)+15)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Ca09-16 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c=(a+a)*(a*(a+18)+107)+420
  d=(a+8)/18
  k=7*(a*(9*a+94)+270)/6
  f=35*(a+5)/2
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=0:
  zt=z
  foz=fz
  zz=z*z
  fz=b*z*(16*zz*(zz*(c*zz*(d*zz-1)+k)-f)+105)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Ca10-16 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5)
  d=a+a+12
  k=a*(a+15)+56
  f=(a+a+18)/45
  g=14*(a+a+13)/5
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=-31903*b:
  zt=z
  foz=fz
  zz=z*z
  fz=b*(c*zz*(d*zz*(81*zz*(k*zz*(f*zz-1)+g)-1418)+2127)-31903)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}



Tc02-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Mike Wareman:
         ; Secant Method with weird bailout test
         ; 
         ; Tc(n+1) = 2(2z-1)Tc(n)-Tc(n-1)
         ; Tc(0) = 1
         ; Tc(1) = 2(z+1)
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=4*p1*(p1+p1+1)-5:
  zt=z
  foz=fz
  fz=4*z*(z+z+1)-5
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Tc03-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(p1+p1)*(16*p1*p1-15)+8:
  zt=z
  foz=fz
  fz=(z+z)*(16*z*z-15)+8
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Tc04-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=8*p1*(8*p1*(p1*(p1+p1-1)-2)+11)-11:
  a=8*z
  fz=a*(a*(z*(z+z-1)-2)+11)-11
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Tc05-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=16*p1
  fz=(p1+p1)*(a*(p1*(a*(p1-1)-13)+19)-95)+14:
  a=16*z
  fz=(z+z)*(a*(z*(a*(z-1)-13)+19)-95)+14
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Tc06-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=p1+p1, b=a+a
  fz=b*(a*(32*p1*(p1*(b*(a-3)-3)+13)-231)+87)-17:
  a=z+z, b=a+a
  fz=b*(a*(32*z*(z*(b*(a-3)-3)+13)-231)+87)-17
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Tc07-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(p1+p1)*(32*p1*(p1*(8*p1*(p1*(16*p1*(p1-2)+5)+30)-213)+71)-287)+20:
  zt=z
  foz=fz
  fz=(z+z)*(32*z*(z*(8*z*(z*(16*z*(z-2)+5)+30)-213)+71)-287)+20
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Tc08-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=p1+p1, b=a+a, c=16*p1
  fz=c*(b*(a*(c*(p1*(b*(a*(2*p1-5)+5)+29)+420+329)-149)+55)-23):
  zt=z
  foz=fz
  a=z+z, b=a+a, c=16*z
  fz=c*(b*(a*(c*(z*(b*(a*(a-5)+5)+29)+420+329)-149)+55)-23)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Tc09-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=8*p1, b=p1+p1
  fz=b*(32*p1*(p1*(a*(p1*(16*p1*(p1*(a*(b-7)+59)+11)+435)-37)+1041)+282)-639)+26:
  zt=z
  foz=fz
  a=8*z, b=z+z
  fz=b*(32*z*(z*(a*(z*(16*z*(z*(a*(b-7)+59)+11)+435)-37)+1041)+282)-639)+26
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Tc10-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  bailout=real(p2)/10000, z=pixel, oz=p1
  b=32*p1, c=p1+p1, a=c+c
  fz=a*(c*(b*(p1*(a*(c*(b*(p1*(8*p1*(p1-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29:
  zt=z
  foz=fz
  b=32*z, c=z+z, a=c+c
  fz=a*(c*(b*(z*(a*(c*(b*(z*(8*z*(z-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}



L02-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Mike Wareman:
        ; Secant Method with weird bailout test
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1-2:
  zt=z
  foz=fz
  fz=z-2
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


L03-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(3-p1/2)-3:
  zt=z
  foz=fz
  fz=z*(3-z/2)-3
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


L04-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(p1*(p1*(p1/8-2)/3+3)-4)+1:
  zt=z
  foz=fz
  fz=z*(z*(z*(z/8-2)/3+3)-4)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


L05-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(p1*(p1*(p1*(5-p1/5)/8-5)/3+5)-5)+1:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(5-z/5)/8-5)/3+5)-5)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


L06-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(p1*(p1*(p1*(p1*(p1/18-2)/5+5)/8-10/3)+15/2)-6)+1:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(z*(z/18-2)/5+5)/8-10/3)+15/2)-6)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


L07-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(p1*(p1*(p1*(p1*(p1*(49-p1)/2-441)/5+735)/84-35)/3+21)/2-7)+1:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(49-z)/2-441)/5+735)/84-35)/3+21)/2-7)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


L08-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(p1*(p1*(p1*(p1*(p1*(p1*(p1/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


L09-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(p1*(p1*(p1*(p1*(p1*(p1*(p1*(81-p1)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z*(81-z)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


L10-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=p1*(p1*(p1*(p1*(p1*(p1*(p1*(p1*(p1*(p1/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}



La02-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Mike Wareman:
         ; Secant Method with weird bailout test
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p1, c=a+2, b=c*(a+1)/2
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=b:
  zt=z
  foz=fz
  fz=z*(z/2-c)+b
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


La03-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p1, d=(a+3)/2, c=d*(a+2), b=c*(a+1)/3
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=b:
  zt=z
  foz=fz
  fz=z*(z*(d-z/6)-c)+b
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


La04-16 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p1, k=(a+4)/6, d=k*(a+3)*(3/2), c=d*(a+2)*(2/3), b=c*(a+1)/4
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=b:
  zt=z
  foz=fz
  fz=z*(z*(z*(z/24-k)+d)-c)+b
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


La05-16 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p1, f=(a+5)/24, k=(f+f)*(a+4), d=k*(a+3), c=d*(a+2)/2, b=c*(a+1)/5
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=b:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(f-z/120)-k)+d)-c)+b
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


La06-16 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p1, g=(a+6)/120, f=g*(a+5)*(5/2), k=f*(a+4)*(4/3)
  d=k*(a+3)*(3/4), c=d*(a+a+4)/5, b=c*(a+1)/6
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=b:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(z*(z/720-g)+f)-k)+d)-c)+b
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


La07-16 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p1, h=(a+7)/720, g=h*(a+6)*3, f=g*(a+5)*(5/3)
  k=f*(a+4), d=k*(a+3)*(3/5), c=d*(a+2)/3, b=c*(a+1)/7
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=b:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(h-z/5040)-g)+f)-k)+d)-c)+b
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


La08-16 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p1, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+6)*2
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2
  c=d*(a+a+4)/7, b=c*(a+1)/8
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=b:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z/40320-i)+h)-g)+f)-k)+d)-c)+b
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


La09-16 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p1, j=(a+9)/40320, i=j*(a+8)*4, h=i*(a+7)*(7/3)
  g=h*(a+6)*(3/2), f=g*(a+5), k=f*(a+a+8)/3, d=k*(a+3)*(3/7)
  c=d*(a+2)/4, b=c*(a+1)/9
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=b:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z/40320-i)+h)-g)+f)-k)+d)-c)+b
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


La10-16 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p1, k=(a+10)/362880, j=k*(a+9)*45, i=j*(a+8)*(4/15)
  h=i*(a+7)*(7/4), g=h*(a+6)*12, f=g*(a+5)/12, l=f*(a+4)*(4/7)
  d=l*(a+3)*(15/4), c=d*(a+2)/45, b=c*(a+1)/10
  bailout=real(p2)/10000, z=pixel, oz=0
  fz=b:
  zt=z
  foz=fz
  fz=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}



Uc02-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Mike Wareman:
         ; Secant Method with weird bailout test
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1-2
  fz=a*a-1:
  zt=z
  foz=fz
  a=4*z-2
  f=a*a-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Uc03-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1-2
  fz=a*(a*a-2):
  zt=z
  foz=fz
  a=4*z-2
  f=a*(a*a-2)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Uc04-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1-2, aa=a*a
  fz=aa*(aa-3)+1:
  zt=z
  foz=fz
  a=4*z-2, aa=a*a
  f=aa*(aa-3)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Uc05-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1-2, aa=a*a
  fz=a*(aa*(aa-4)+3):
  zt=z
  foz=fz
  a=4*z-2, aa=a*a
  f=a*(aa*(aa-4)+3)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Uc06-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1-2, aa=a*a
  fz=aa*(aa*(aa-5)+6)-1:
  zt=z
  foz=fz
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa-5)+6)-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Uc07-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1-2, aa=a*a
  fz=a*(aa*(aa*(aa-6)+10)-4):
  zt=z
  foz=fz
  a=4*z-2, aa=a*a
  f=a*(aa*(aa*(aa-6)+10)-4)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Uc08-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1-2, aa=a*a
  fz=aa*(aa*(aa*(aa-7)+15)-10)+1:
  zt=z
  foz=fz
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa*(aa-7)+15)-10)+1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Uc09-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1-2, aa=a*a
  fz=a*(aa*(aa*(aa*(aa-8)+21)-20)+5):
  zt=z
  foz=fz
  a=4*z-2, aa=a*a
  f=a*(aa*(aa*(aa*(aa-8)+21)-20)+5)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Uc10-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  bailout=real(p2)/10000, z=pixel, oz=p1
  a=4*p1-2, aa=a*a
  fz=aa*(aa*(aa*(aa*(aa-9)+36)-35)+15)-1:
  zt=z
  foz=fz
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa*(aa*(aa-9)+36)-35)+15)-1
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=sqrt(|(|z|)-(|oz|)|)
}



Pc02-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Mike Wareman:
         ; Secant Method with weird bailout test
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=((4*p1-5)*p1+1):
  zt=z
  foz=fz
  fz=((4*z-5)*z+1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Pc03-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(((8*p1-50/3)*p1+9)*p1-1):
  zt=z
  foz=fz
  fz=(((8*z-50/3)*z+9)*z-1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Pc04-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=((((16*p1-142/3)*p1+265/6)*p1-14)*p1+1):
  zt=z
  foz=fz
  fz=((((16*z-142/3)*z+265/6)*z-14)*z+1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Pc05-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(((((32*p1-1852/15)*p1+2507/15)*p1-565/6)*p1+20)*p1-1):
  zt=z
  foz=fz
  fz=(((((32*z-1852/15)*z+2507/15)*z-565/6)*z+20)*z-1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Pc06-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=((((((64*p1-1528/5)*p1+24628/45)*p1-4553/10)*p1+1055/6)*p1-27)*p1+1):
  zt=z
  foz=fz
  fz=((((((64*z-1528/5)*z+24628/45)*z-4553/10)*z+1055/6)*z-27)*z+1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Pc07-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(((((((128*p1-25552/35)*p1+514928/315)*p1-573667/315)*p1+31619/30)*p1-1799/6)*p1+35)*p1-1):
  zt=z
  foz=fz
  fz=(((((((128*z-25552/35)*z+514928/315)*z-573667/315)*z+31619/30)*z-1799/6)*z+35)*z-1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Pc08-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=((((((((256*p1-59504/35)*p1+1443406/315)*p1-289799/45)*p1+2542045/504)*p1-32662/15)*p1+1435/3)*p1-44)*p1+1):
  zt=z
  foz=fz
  fz=((((((((256*z-59504/35)*z+1443406/315)*z-289799/45)*z+2542045/504)*z-32662/15)*z+1435/3)*z-44)*z+1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Pc09-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(((((((((512*p1-1223392/315)*p1+772508/63)*p1-8458976/405)*p1+26206517/1260)*p1-2060215/168)*p1+20664/5)*p1-725)*p1+54)*p1-1):
  zt=z
  foz=fz
  fz=(((((((((512*z-1223392/315)*z+772508/63)*z-8458976/405)*z+26206517/1260)*z-2060215/168)*z+20664/5)*z-725)*z+54)*z-1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Pc10-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=((((((((((1024*p1-2753216/315)*p1+2375464/75)*p1-900686282/14175)*p1+312488741/4050)*p1-4193867/72)*p1+22702079/840)*p1-36713/5)*p1+1055)*p1-65)*p1+1):
  zt=z
  foz=fz
  fz=((((((((((1024*z-2753216/315)*z+2375464/75)*z-900686282/14175)*z+312488741/4050)*z-4193867/72)*z+22702079/840)*z-36713/5)*z+1055)*z-65)*z+1)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}



O02-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Mike Wareman:
        ; Secant Method with weird bailout test
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)fn1(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=((pp2+4)/(pp2*p1)):
  z2=z*z
  zt=z
  foz=fz
  fz=((z2+4)/(z2*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


O03-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)sin(2*pi/2)^2
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=((((6-3*p1)*p1-12)*p1+24)/(pp2*pp2)):
  z2=z*z
  zt=z
  foz=fz
  fz=((((6-3*z)*z-12)*z+24)/(z2*z2))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


O04-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)sin(3*pi/2)^2
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=(((((12*p1-36)*p1+72)*p1-144)*p1+192)/(pp2*pp2*p1)):
  z2=z*z
  zt=z
  foz=fz
  fz=(((((12*z-36)*z+72)*z-144)*z+192)/(z2*z2*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


O05-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)sin(4*pi/2)^2
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=((((((180-20*p1)*p1-480)*p1+960)*p1-1760)*p1+1920)/(pp2*pp2*pp2)):
  z2=z*z
  zt=z
  foz=fz
  fz=((((((180-20*z)*z-480)*z+960)*z-1760)*z+1920)/(z2*z2*z2))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


O06-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)sin(5*pi/2)^2
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=(((((((40*p1-510)*p1+2880)*p1-7200)*p1+14160)*p1-24000)*p1+23040)/(pp2*pp2*pp2*p1)):
  z2=z*z
  zt=z
  foz=fz
  fz=(((((((40*z-510)*z+2880)*z-7200)*z+14160)*z-24000)*z+23040)/(z2*z2*z2*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


O07-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)sin(6*pi/2)^2
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1, pp4=pp2*pp2
  fz=((((((((1274-56*p1)*p1-11172)*p1+50400)*p1-120624)*p1+231840)*p1-368256)*p1+322560)/(pp4*pp4)):
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=((((((((1274-56*z)*z-11172)*z+50400)*z-120624)*z+231840)*z-368256)*z+322560)/(z4*z4))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


O08-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)sin(7*pi/2)^2
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1, pp4=p2*p2
  fz=(((((((((266*p1-7784)*p1/3+35280)*p1-245952)*p1+967232)*p1-2239104)*p1+4200448)*p1-6322176)*p1+5160960)/(pp4*pp4*p1)):
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=(((((((((266*z-7784)*z/3+35280)*z-245952)*z+967232)*z-2239104)*z+4200448)*z-6322176)*z+5160960)/(z4*z4*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


O09-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)sin(8*pi/2)^2
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1, pp4=pp2*pp2
  fz=((((((((((4932-114*p1)*p1-92064)*p1+951264)*p1-5670720)*p1+20289024)*p1-45704448)*p1+83736576)*p1-120434688)*p1+92897280)/(pp4*pp4*pp2)):
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=((((((((((4932-114*z)*z-92064)*z+951264)*z-5670720)*z+20289024)*z-45704448)*z+83736576)*z-120434688)*z+92897280)/(z4*z4*z2))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


O10-16 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)sin(9*pi/2)^2
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1, pp4=pp2*pp2
  fz=(((((((((((321/2*p1-8445)*p1+213720)*p1-3030360)*p1+26113680)*p1-138775680)*p1+462911040)*p1-1018759680)*p1+1825274880)*p1-2524815360)*p1+1857945600)/(pp4*pp4*pp2*p1)):
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=(((((((((((321/2*z-8445)*z+213720)*z-3030360)*z+26113680)*z-138775680)*z+462911040)*z-1018759680)*z+1825274880)*z-2524815360)*z+1857945600)/(z4*z4*z2*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}



Sc02-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Mike Wareman:
         ; Secant Method with weird bailout test
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(2/p1):
  zt=z
  foz=fz
  fz=(2/z)
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Sc03-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(4/(p1*p1)):
  zt=z
  foz=fz
  fz=(4/(z*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Sc04-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=((((4-2*p1)*p1-8)*p1+16)/(p1*p1*p1)):
  zt=z
  foz=fz
  fz=((((4-2*z)*z-8)*z+16)/(z*z*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Sc05-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=(((((11/2*p1-18)*p1+36)*p1-72)*p1+96)/(pp2*pp2)):
  z2=z*z
  zt=z
  foz=fz
  fz=(((((11/2*z-18)*z+36)*z-72)*z+96)/(z2*z2))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Sc06-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=((((((72-8*p1)*p1-192)*p1+384)*p1-704)*p1+768)/(pp2*pp2*p1)):
  z2=z*z
  zt=z
  foz=fz
  fz=((((((72-8*z)*z-192)*z+384)*z-704)*z+768)/(z2*z2*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Sc07-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=(((((((13*p1-170)*p1+960)*p1-2400)*p1+4720)*p1-8000)*p1+7680)/(pp2*pp2*pp2)):
  z2=z*z
  zt=z
  foz=fz
  fz=(((((((13*z-170)*z+960)*z-2400)*z+4720)*z-8000)*z+7680)/(z2*z2*z2))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Sc08-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=((((((((364-16*p1)*p1-3192)*p1+14400)*p1-34464)*p1+66240)*p1-105216)*p1+92160)/(pp2*pp2*pp2*p1)):
  z2=z*z
  zt=z
  foz=fz
  fz=((((((((364-16*z)*z-3192)*z+14400)*z-34464)*z+66240)*z-105216)*z+92160)/(z2*z2*z2*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Sc09-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1, pp4=pp2*pp2
  fz=(((((((((263/12*p1-1946/3)*p1+8820)*p1-61488)*p1+241808)*p1-559776)*p1+1050112)*p1-1580544)*p1+1290240)/(pp4*pp4)):
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=(((((((((263/12*z-1946/3)*z+8820)*z-61488)*z+241808)*z-559776)*z+1050112)*z-1580544)*z+1290240)/(z4*z4))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Sc10-16 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1, pp4=pp2*pp2
  fz=((((((((((1096-76/3*p1)*p1-61376/3)*p1+211392)*p1-1260160)*p1+4508672)*p1-10156544)*p1+18608128)*p1-26763264)*p1+20643840)/(pp4*pp4*p1)):
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=((((((((((1096-76/3*z)*z-61376/3)*z+211392)*z-1260160)*z+4508672)*z-10156544)*z+18608128)*z-26763264)*z+20643840)/(z4*z4*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}



Exp02-16 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Mike Wareman:
          ; Secant Method with weird bailout test
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=exp(-p1):
  zt=z
  foz=fz
  fz=(exp(-z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Exp03-16 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=((1-p1)/(exp(p1)*2)):
  zt=z
  foz=fz
  fz=((1-z)/(exp(z)*2))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Exp04-16 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(((p1-1)*p1/6+1/3)/exp(p1)):
  zt=z
  foz=fz
  fz=(((z-1)*z/6+1/3)/exp(z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Exp05-16 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=((((1-p1)*p1/24-1/12)*p1+1/4)/exp(p1)):
  zt=z
  foz=fz
  fz=((((1-z)*z/24-1/12)*z+1/4)/exp(z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Exp06-16 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(((((p1-1)*p1/120+1/60)*p1-1/20)*p1+1/5)/exp(p1)):
  zt=z
  foz=fz
  fz=(((((z-1)*z/120+1/60)*z-1/20)*z+1/5)/exp(z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Exp07-16 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=((((((1-p1)*p1/720-1/360)*p1+1/120)*p1-1/30)*p1+1/6)/exp(p1)):
  zt=z
  foz=fz
  fz=((((((1-z)*z/720-1/360)*z+1/120)*z-1/30)*z+1/6)/exp(z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Exp08-16 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(((((((P1-1)*p1/5040+1/2520)*p1-1/840)*p1+1/210)*p1-1/42)*p1+1/7)/exp(p1)):
  zt=z
  foz=fz
  fz=(((((((z-1)*z/5040+1/2520)*z-1/840)*z+1/210)*z-1/42)*z+1/7)/exp(z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Exp09-16 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=((((((((1-p1)*p1/40320-1/20160)*p1+1/6720)*p1-1/1680)*p1+1/336)*p1-1/56)*p1+1/8)/exp(p1)):
  zt=z
  foz=fz
  fz=((((((((1-z)*z/40320-1/20160)*z+1/6720)*z-1/1680)*z+1/336)*z-1/56)*z+1/8)/exp(z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Exp10-16 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(((((((((p1-1)*p1/362880+1/181440)*p1-1/60480)*p1+1/15120)*p1-1/3024)*p1+1/504)*p1-1/72)*p1+1/9)/exp(p1)):
  zt=z
  foz=fz
  fz=(((((((((z-1)*z/362880+1/181440)*z-1/60480)*z+1/15120)*z-1/3024)*z+1/504)*z-1/72)*z+1/9)/exp(z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}



Alpha02-16 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Mike Wareman:
            ; Secant Method with weird bailout test
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  fz=(((p1-2)*p1+2)/(exp(p1)*p1*p1*p1)):
  zt=z
  foz=fz
  fz=(((z-2)*z+2)/(exp(z)*z*z*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Alpha03-16 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=((((p1-3)*p1+6)*p1-6)/(exp(p1)*pp2*pp2)):
  z2=z*z
  zt=z
  foz=fz
  fz=((((z-3)*z+6)*z-6)/(exp(z)*z2*z2))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Alpha04-16 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=(((((p1-4)*p1+12)*p1-24)*p1+24)/(exp(p1)*pp2*pp2*p1)):
  z2=z*z
  zt=z
  foz=fz
  fz=(((((z-4)*z+12)*z-24)*z+24)/(exp(z)*z2*z2*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Alpha05-16 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=((((((p1-5)*p1+20)*p1-60)*p1+120)*p1-120)/(exp(p1)*pp2*pp2*pp2)):
  z2=z*z
  zt=z
  foz=fz
  fz=((((((z-5)*z+20)*z-60)*z+120)*z-120)/(exp(z)*z2*z2*z2))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Alpha06-16 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1
  fz=(((((((p1-6)*p1+30)*p1-120)*p1+360)*p1-720)*p1+720)/(exp(p1)*pp2*pp2*pp2*p1)):
  z2=z*z
  zt=z
  foz=fz
  fz=(((((((z-6)*z+30)*z-120)*z+360)*z-720)*z+720)/(exp(z)*z2*z2*z2*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Alpha07-16 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1, pp4=pp2*pp2
  fz=((((((((p1-7)*p1+42)*p1-210)*p1+840)*p1-2520)*p1+5040)*p1-5040)/(exp(p1)*pp4*pp4)):
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=((((((((z-7)*z+42)*z-210)*z+840)*z-2520)*z+5040)*z-5040)/(exp(z)*z4*z4))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Alpha08-16 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p2*p2, pp4=pp2*pp2
  fz=(((((((((p1-8)*p1+56)*p1-336)*p1+1680)*p1-6720)*p1+20160)*p1-40320)*p1+40320)/(exp(p1)*pp4*pp4*p1)):
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=(((((((((z-8)*z+56)*z-336)*z+1680)*z-6720)*z+20160)*z-40320)*z+40320)/(exp(z)*z4*z4*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Alpha09-16 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1, pp4=pp2*pp2
  fz=((((((((((p1-9)*p1+72)*p1-504)*p1+3024)*p1-15120)*p1+60480)*p1-181440)*p1+362880)*p1-362880)/(exp(p1)*pp4*pp4*pp2)):
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=((((((((((z-9)*z+72)*z-504)*z+3024)*z-15120)*z+60480)*z-181440)*z+362880)*z-362880)/(exp(z)*z4*z4*z2))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Alpha10-16 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  pp2=p1*p1, pp4=pp2*pp2
  fz=(((((((((((p1-10)*p1+90)*p1-720)*p1+5040)*p1-30240)*p1+151200)*p1-604800)*p1+1814400)*p1-3628800)*p1+3628800)/(exp(p1)*pp4*pp4*pp2*p1)):
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=(((((((((((z-10)*z+90)*z-720)*z+5040)*z-30240)*z+151200)*z-604800)*z+1814400)*z-3628800)*z+3628800)/(exp(z)*z4*z4*z2*z))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}



Beta02-16 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Mike Wareman:
           ; Secant Method with weird bailout test
           ;
           ; Beta Integral
           ; Beta[0] = 2sinh(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  ep=exp(p1)
  fz=(((p1+2)*p1+(2*ep*ep-2))/(p1*p1*p1*ep)):
  ez=exp(z)
  zt=z
  foz=fz
  fz=(((z+2)*z+(2*ez*ez-2))/(z*z*z*ez))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Beta03-16 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  ep=exp(p1), pp2=p1*p1
  fz=(-(((p1+3)*p1+6)*p1+(6*ep*ep-6))/(pp2*pp2*ep)):
  ez=exp(z)
  z2=z*z
  zt=z
  foz=fz
  fz=(-(((z+3)*z+6)*z+(6*ez*ez-6))/(z2*z2*ez))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Beta04-16 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  ep=exp(z), pp2=p1*p1
  fz=(((((p1+4)*p1+12)*p1+24)*p1+(24*ep*ep-24))/(pp2*pp2*p1*ep)):
  ez=exp(z)
  z2=z*z
  zt=z
  foz=fz
  fz=(((((z+4)*z+12)*z+24)*z+(24*ez*ez-24))/(z2*z2*z*ez))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Beta05-16 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  ep=exp(p1), pp2=p1*p1
  fz=(-(((((p1+5)*p1+20)*p1+60)*p1+120)*p1+(120*ep*ep-120))/(pp2*pp2*pp2*ep)):
  ez=exp(z)
  z2=z*z
  zt=z
  foz=fz
  fz=(-(((((z+5)*z+20)*z+60)*z+120)*z+(120*ez*ez-120))/(z2*z2*z2*ez))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Beta06-16 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  ep=exp(p1), pp2=p1*p1
  fz=(((((((p1+6)*p1+30)*p1+120)*p1+360)*p1+720)*p1+(720*ep*ep-720))/(pp2*pp2*pp2*p1*ep)):
  ez=exp(z)
  z2=z*z
  zt=z
  foz=fz
  fz=(((((((z+6)*z+30)*z+120)*z+360)*z+720)*z+(720*ez*ez-720))/(z2*z2*z2*z*ez))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Beta07-16 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  ep=exp(p1), pp2=p1*p1, pp4=pp2*pp2
  fz=(-(((((((p1+7)*p1+42)*p1+210)*p1+840)*p1+2520)*p1+5040)*p1+(5040*ep*ep-5040))/(pp4*pp4*ep)):
  ez=exp(z)
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=(-(((((((z+7)*z+42)*z+210)*z+840)*z+2520)*z+5040)*z+(5040*ez*ez-5040))/(z4*z4*ez))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Beta08-16 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  ep=exp(p1), pp2=p1*p1, pp4=pp2*pp2
  fz=(((((((((p1+8)*p1+56)*p1+336)*p1+1680)*p1+6720)*p1+20160)*p1+40320)*p1+(40320*ep*ep-40320))/(pp4*pp4*p1*ep)):
  ez=exp(z)
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=(((((((((z+8)*z+56)*z+336)*z+1680)*z+6720)*z+20160)*z+40320)*z+(40320*ez*ez-40320))/(z4*z4*z*ez))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Beta09-16 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  ep=exp(p1), pp2=p1*p1, pp4=pp2*pp2
  fz=(-(((((((((p1+9)*p1+72)*p1+504)*p1+3024)*p1+15120)*p1+60480)*p1+181440)*p1+362880)*p1+(362880*ep*ep-362880))/(pp4*pp4*pp2*ep)):
  ez=exp(z)
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=(-(((((((((z+9)*z+72)*z+504)*z+3024)*z+15120)*z+60480)*z+181440)*z+362880)*z+(362880*ez*ez-362880))/(z4*z4*z2*ez))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}


Beta10-16 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  ep=exp(z), pp2=p1*p1, pp4=pp2*pp2
  fz=(((((((((((p1+10)*p1+90)*p1+720)*p1+5040)*p1+30240)*p1+151200)*p1+604800)*p1+1814400)*p1+3628800)*p1+(3628800*ep*ep-3628800))/(pp4*pp4*pp2*p1*ep)):
  ez=exp(z)
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=(((((((((((z+10)*z+90)*z+720)*z+5040)*z+30240)*z+151200)*z+604800)*z+1814400)*z+3628800)*z+(3628800*ez*ez-3628800))/(z4*z4*z2*z*ez))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
}

