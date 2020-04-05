;Version 1.1
;Copyright (c)1998,1999 Morgan L. Owens
;EG-14{;V.1.1 - earlier versions may be discarded
; = Recurrence
;bailout=real(p2)/10000,z=pixel:
;f=function in z
;fd=function' in z
;oz=z
;w=z-f/fd
;fw=function in w
;z=w-fw/fd
;bailout<=sqrt(|(|z|)-(|oz|)|)}

;
;
;comment{Chebyshev Types:
;       Inspired by Bradley Beacham
;       Cubic Method with weird bailout test
;}



T02-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; Chebyshev Types:
                 ; Inspired by Bradley Beacham
                 ; Cubic Method with weird bailout test
                 ; 
                 ; T(n+1) = 2zT(n)-T(n-1)
                 ; T(0)  = 1
                 ; T(1)  = z
                 ;
                 ; = 2zT01-T00
  bailout=real(p2)/10000, z=pixel:
  f=(z+z)*z-1
  fd=4*z
  oz=z
  w=z-f/fd
  fw=(w+w)*w-1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


T03-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT02-T01
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(4*zz-3)
  fd=12*zz-3
  oz=z
  w=z-f/fd
  fw=w*(4*w*w-3)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


T04-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT03-T02
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=8*zz*(zz-1)+1
  fd=16*z*(zz+zz-1)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=8*ww*(ww-1)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


T05-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT04-T03
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  f=z*(a*(a-5)+5)
  fd=20*zz*(a-3)+5
  oz=z
  w=z-f/fd
  a=4*w*w
  fw=w*(a*(a-5)+5)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


T06-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT05-T04
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  f=a*(8*zz*(a-3)+9)-1
  fd=32*z*(3*zz*(zz-2)+1)
  oz=z
  w=z-f/fd
  ww=w*w
  a=ww+ww
  fw=a*(8*ww*(a-3)+9)-1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


T07-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT06-T05
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  f=z*(8*zz*(a*(b-7)+7)-7)
  fd=56*zz*(a*(b-5)+3)+7
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(8*ww*((ww+ww)*(4*ww-7)+7)-7)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


T08-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT07-T06
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  f=32*zz*(zz*(b*(zz-2)+5)-1)+1
  fd=64*z*(a*(b*(a-3)+5)-1)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=32*ww*(ww*(4*ww*(ww-2)+5)-1)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


T09-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT08-T07
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  f=z*(8*zz*(a*(b*(b-9)+27)-15)+9)
  fd=72*zz*(a*(b*(b-7)+15)-5)+9
  oz=z
  w=z-f/fd
  ww=w*w
  b=4*ww
  fw=w*(8*ww*((ww+ww)*(b*(b-9)+27)-15)+9)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


T10-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT09-T08
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  c=16*zz
  f=a*(b*(a*(b*(a-5)+35)-11)-25)-1
  fd=a*(c*(5*zz*(c*(zz-2)+21)-11)+25)
  oz=z
  w=z-f/fd
  ww=w*w
  a=ww+ww
  b=a+a
  fw=a*(b*(a*(b*(a-5)+35)-11)-25)-1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}



U02-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; Chebyshev Types:
                 ; Inspired by Bradley Beacham
                 ; Cubic Method with weird bailout test
                 ;
                 ; U(n+1) = 2zU(n)-U(n-1)
                 ; U(0)  = 1
                 ; U(1)  = 2z
                 ;
                 ; = 2zU01-U00
  bailout=real(p2)/10000, z=pixel:
  f=4*z*z-1
  fd=8*z
  oz=z
  w=z-f/fd
  fw=4*w*w-1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


U03-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU02-U01
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=4*z*(zz+zz-1)
  fd=24*zz-4
  oz=z
  w=z-f/fd
  fw=4*w*((w+w)*w-1)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


U04-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU03-U02
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  f=a*(a-3)+1
  fd=8*z*(8*zz-3)
  oz=z
  w=z-f/fd
  a=4*w*w
  fw=a*(a-3)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


U05-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU04-U03
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(z+z)*(16*zz*(zz-1)+3)
  fd=32*zz*(5*zz-3)+6
  oz=z
  w=z-f/fd
  ww=w*w
  fw=(w+w)*(16*ww*(ww-1)+3)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


U06-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU05-U04
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  f=8*zz*(a*(a+a-5)+3)-1
  fd=32*z*(a*(6*zz-5)+3)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=8*ww*((ww+ww)*(4*ww-5)+3)-1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


U07-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU06-U05
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  f=8*z*(a*(b*(a-3)+5)-1)
  fd=16*zz*(b*(14*zz-15)+15)-8
  oz=z
  w=z-f/fd
  ww=w*w
  a=ww+ww
  fw=8*w*(a*(4*ww*(a-3)+5)-1)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


U08-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU07-U06
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  b=zz+zz
  f=8*zz*(b*(a*(a-7)+15)-5)-1
  fd=16*z*(4*zz*(b*(16*zz-21)+15)-5)
  oz=z
  w=z-f/fd
  ww=w*w
  a=4*ww
  fw=8*ww*((ww+ww)*(a*(a-7)+15)-5)-1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


U09-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU08-U07
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=16*zz
  f=(z+z)*(a*(zz*(a*(zz-2)+17)-5)-3)
  fd=32*zz*(zz*(a*(zz*(8*zz-11)-2)+85)-25)-6
  oz=z
  w=z-f/fd
  ww=w*w
  a=16*ww
  fw=(w+w)*(a*(ww*(a*(ww-2)+17)-5)-3)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


U10-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU09-U08
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=4*zz
  b=16*zz
  f=a*(a*(b*(zz*(a-9)+6)-35)+7)-1
  fd=8*z*(8*zz*(b*((zz+zz)*(5*zz-9)+9)-35)+7)
  oz=z
  w=z-f/fd
  ww=w*w
  a=4*ww
  fw=a*(a*(16*ww*(ww*(a-9)+6)-35)+7)-1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}



S02-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; Chebyshev Types:
                 ; Inspired by Bradley Beacham
                 ; Cubic Method with weird bailout test
                 ;
                 ; S(n+1) = zS(n)-S(n-1)
                 ; S(0)  = 1
                 ; S(1)  = z
                 ;
                 ; = zS01-S00
  bailout=real(p2)/10000, z=pixel:
  f=z*z-1
  fd=z+z
  oz=z
  w=z-f/fd
  fw=w*w-1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


S03-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS02-S01
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz-2)
  fd=3*zz-2
  oz=z
  w=z-f/fd
  fw=w*(w*w-2)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


S04-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS03-S02
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz-3)+1
  fd=(z+z)*(zz+zz-3)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww-3)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


S05-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS04-S03
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz-4)+3)
  fd=zz*(5*zz-12)+3
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(ww*(ww-4)+3)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


S06-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS05-S04
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz-5)+6)-1
  fd=(z+z)*(zz*(3*zz-10)+6)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww*(ww-5)+6)-1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


S07-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS06-S05
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz-6)+10)-4)
  fd=zz*(zz*(7*zz-30)+30)-4
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(ww*(ww*(ww-6)+10)-4)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


S08-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS07-S06
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz-7)+15)-10)+1
  fd=(z+z)*(zz*(zz*(4*zz-21)+30)-10)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww*(ww*(ww-7)+15)-10)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


S09-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS08-S07
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz*(zz-8)+21)-20)+5)
  fd=zz*(zz*(zz*(9*zz-56)+105)-60)+5
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(ww*(ww*(ww*(ww-8)+21)-20)+5)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


S10-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS09-S08
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz*(zz-9)+28)-35)+15)-1
  fd=(z+z)*(zz*(zz*(zz*(5*zz-36)+84)-70)+15)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww*(ww*(ww*(ww-9)+28)-35)+15)-1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}



C02-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; Chebyshev Types:
                 ; Inspired by Bradley Beacham
                 ; Cubic Method with weird bailout test
                 ;
                 ; C(n+1) = zC(n)-C(n-1)
                 ; C(0)  = 2
                 ; C(1)  = z
                 ;
                 ; = zC01-C00
  bailout=real(p2)/10000, z=pixel:
  f=z*z-2
  fd=z+z
  oz=z
  w=z-f/fd
  fw=w*w-2
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


C03-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC02-C01
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz-3)
  fd=3*zz-3
  oz=z
  w=z-f/fd
  fw=w*(w*w-3)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


C04-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC03-C02
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz-4)+2
  fd=4*z*(zz-2)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww-4)+2
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


C05-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC04-C03
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz-5)+3)
  fd=5*zz*(zz-3)+3
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(ww*(ww-5)+3)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


C06-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC05-C04
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz-6)+7)-2
  fd=(z+z)*(3*zz*(zz-4)+7)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww*(ww-6)+7)-2
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


C07-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC06-C05
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz-7)+12)-5)
  fd=zz*(7*zz*(zz-5)+36)-5
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(ww*(ww*(ww-7)+12)-5)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


C08-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC07-C06
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz-8)+18)-12)+2
  fd=8*z*(zz*(zz*(zz-6)+9)-3)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww*(ww*(ww-8)+18)-12)+2
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


C09-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC08-C07
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz*(zz-9)+25)-24)+7)
  fd=zz*(zz*(9*zz*(zz-7)+125)-72)+7
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(ww*(ww*(ww*(ww-9)+25)-24)+7)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


C10-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC09-C08
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz*(zz-10)+33)-42)+19)-2
  fd=(z+z)*(zz*(zz*(5*zz*(zz-8)+99)-84)+19)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww*(ww*(ww*(ww-10)+33)-42)+19)-2
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}



P02-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; Chebyshev Types:
                 ; Inspired by Bradley Beacham
                 ; Cubic Method with weird bailout test
                 ;
                 ; P(n+1) = ((2n+1)zP(n)-nP(n-1))/(n+1)
                 ; P(0) = 1
                 ; P(1) = z
                 ;
                 ; = ( 3zP01-P00)/2
  bailout=real(p2)/10000, z=pixel:
  f=(3*z*z-1)/2
  fd=3*z
  oz=z
  w=z-f/fd
  fw=(3*w*w-1)/2
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


P03-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = ( 5zP02-2P01)/3
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(5*zz-3)/2
  fd=(15*zz-3)/2
  oz=z
  w=z-f/fd
  fw=w*(5*w*w-3)/2
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


P04-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = ( 7zP03-3P02)/4
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(5*zz*(7*zz-6)+3)/8
  fd=5*z*(7*zz-3)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=(5*ww*(7*ww-6)+3)/8
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


P05-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = ( 9zP04-4P03)/5
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(7*zz*(9*zz-10)+15)/8
  fd=(105*zz*(3*zz-2)+15)/8
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(7*ww*(9*ww-10)+15)/8
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


P06-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (11zP05-5P04)/6
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(21*zz*(zz*(11*zz-15)+5)-5)/16
  fd=21*z*(zz*(33*zz-30)+5)/8
  oz=z
  w=z-f/fd
  ww=w*w
  fw=(21*ww*(ww*(11*ww-15)+5)-5)/16
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


P07-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (13zP06-6P05)/7
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(3*zz*(11*zz*(13*zz-21)+105)-35)/16
  fd=(21*zz*(11*zz*(13*zz-15)+45)-35)/16
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(3*ww*(11*ww*(13*ww-21)+105)-35)/16
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


P08-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (15zP07-7P06)/8
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(3*zz*(11*zz*(13*zz*(15*zz-28)+210)-420)+35)/128
  fd=9*z*(11*zz*(13*zz*(5*zz-7)+35)-35)/16
  oz=z
  w=z-f/fd
  ww=w*w
  fw=(3*ww*(11*ww*(13*ww*(15*ww-28)+210)-420)+35)/128
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


P09-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (17zP08-8P07)/9
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(11*zz*(13*zz*(5*zz*(17*zz-36)+126)-420)+315)/128
  fd=(55*zz*(13*zz*(9*zz*(17*zz-28)+126)-252)+315)/128
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(11*ww*(13*ww*(5*ww*(17*ww-36)+126)-420)+315)/128
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


P10-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (19zP09-9P08)/10
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(11*zz*(13*zz*(zz*(17*zz*(19*zz-45)+630)-210)+315)-63)/256
  fd=55*z*(13*zz*(zz*(17*zz*(19*zz-36)+378)-84)+63)/128
  oz=z
  w=z-f/fd
  ww=w*w
  fw=(11*ww*(13*ww*(ww*(17*ww*(19*ww-45)+630)-210)+315)-63)/256
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}



H02-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; Chebyshev Types:
                 ; Inspired by Bradley Beacham
                 ; Cubic Method with weird bailout test
                 ;
                 ; H(n+1) = 2(xH(n)-nH(n-1))
                 ; H(0)  = 1
                 ; H(1)  = 2x
                 ;
                 ; = 2(xH(1)-H(0))
  bailout=real(p2)/10000, z=pixel:
  f=(z+z)*(z+z)-2
  fd=16*z
  oz=z
  w=z-f/fd
  fw=(w+w)*(w+w)-2
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


H03-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(2)-2H(1))
  bailout=real(p2)/10000, z=pixel:
  a=(z+z)*z
  f=4*z*(a-3)
  fd=12*(a-1)
  oz=z
  w=z-f/fd
  fw=4*w*((w+w)*w-3)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


H04-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(3)-3H(2))
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=4*(4*zz*(zz-3)+3)
  fd=32*z*(zz+zz-3)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=4*(4*ww*(ww-3)+3)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


H05-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(4)-4H(3))
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=8*z*(4*zz*(zz-5)-9)
  fd=8*(20*zz*(zz-3)-9)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=8*w*(4*ww*(ww-5)-9)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


H06-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(5)-5H(4))
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  f=8*(a*(a*(a-15)+21)-15)
  fd=96*z*(4*zz*(zz-5)+7)
  oz=z
  w=z-f/fd
  a=(w+w)*w
  fw=8*(a*(a*(a-15)+21)-15)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


H07-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(6)-6H(5))
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  f=16*z*(a*(a*(a-21)+81)+39)
  fd=16*(a*(14*zz*(a-15)+243)+39)
  oz=z
  w=z-f/fd
  a=(w+w)*w
  fw=16*w*(a*(a*(a-21)+81)+39)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


H08-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(7)-7H(6))
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  f=16*(b*(a*(a*(zz-14)+93)-93)+105)
  fd=328*z*(b*(a*(a-21)+93)-93)
  oz=z
  w=z-f/fd
  ww=w*w
  a=ww+ww
  fw=16*(4*ww*(a*(a*(ww-14)+93)-93)+105)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


H09-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(8)-8H(7))
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  b=a+a
  f=32*z*(b*(a*(a*(zz-18)+177)-417)-207)
  fd=96*(b*(a*(6*zz*(zz-14)+295)-417)-69)
  oz=z
  w=z-f/fd
  ww=w*w
  a=ww+ww
  fw=32*w*(4*ww*(a*(a*(ww-18)+177)-417)-207)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


H10-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(9)-9H(8))
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  a=zz+zz
  f=32*(a*(4*zz*(a*(zz*(a-45)+303)-1254)+1467)-945)
  fd=128*z*(8*zz*(zz*(10*zz*(zz-18)+909)-1254)+1467)
  oz=z
  w=z-f/fd
  ww=w*w
  a=ww+ww
  fw=32*(a*(4*ww*(a*(ww*(a-45)+303)-1254)+1467)-945)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}



He02-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; Chebyshev Types:
                  ; Inspired by Bradley Beacham
                  ; Cubic Method with weird bailout test
                  ;
                  ; He(n+1) = xHe(n)-nHe(n-1)
                  ; He(0)  = 1
                  ; He(1)  = sqrt(2)x
                  ;
                  ; = xHe(1)-He(0)
  s=sqrt(2), a=s+s
  bailout=real(p2)/10000, z=pixel:
  f=s*z*z-1
  fd=a*z
  oz=z
  w=z-f/fd
  fw=s*w*w-1
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


He03-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(2)-2He(1)
  s=sqrt(2), a=s+s
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(s*(zz-2)-1)
  fd=s*(3*zz-3)-1
  oz=z
  w=z-f/fd
  fw=w*(s*(w*w-2)-1)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


He04-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(3)-3He(2)
  s=sqrt(2), bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(s*(zz-5)-1)+3
  fd=(z+z)*(s*(zz+zz-5)-1)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(s*(ww-5)-1)+3
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


He05-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(s*(zz-9)-1)+a)
  fd=zz*(s*(5*zz-27)-3)+a
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(ww*(s*(ww-9)-1)+a)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


He06-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(5)-5He(4)
  s=sqrt(2), a1=33*s+12
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(s*(zz-14)-1)+a)-15
  fd=(z+z)*(zz*(s*(3*zz-28)-2)+a)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww*(s*(ww-14)-1)+a)-15
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


He07-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(6)-6He(5)
  s=sqrt(2), a1=87*s+18, b=8*s-57, a2=261*s+54
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(s*(zz-20)-1)+a1)+b)
  fd=zz*(zz*(s*(7*zz-520)-5)+a2)+b
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(ww*(ww*(s*(ww-20)-1)+a1)+b)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


He08-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(7)-7He(6)
  s=sqrt(2), a1=185*s+25, b=41*s-141, a2=370*s+50
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(s*(zz-27)-1)+a1)+b)+105
  fd=(z+z)*(zz*(zz*(s*(4*zz-81)-3)+a2)+b)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww*(ww*(s*(ww-27)-1)+a1)+b)+105
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


He09-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(8)-8He(7)
  s=sqrt(2), a1=345*s+33, b1=136*s-285, a2=1725*s+165
  b2=3*b1, a3=10*a1
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=z*(zz*(zz*(zz*(s*(zz-35)-1)+a1)+b1)+561)
  fd=zz*(zz*(zz*(s*(9*zz-245)-7)+a2)+b2)+561
  oz=z
  w=z-f/fd
  ww=w*w
  fw=w*(ww*(ww*(ww*(s*(ww-35)-1)+a1)+b1)+561)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


He10-14 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(9)-9He(8)
  s=sqrt(2), a1=588*s+42, b1=321*s-510, c=41*s-1830
  a2=1764*s+126, b2=642*s-1020
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=zz*(zz*(zz*(zz*(s*(zz-44)-1)+a1)+b1)+c)-945
  fd=(z+z)*(zz*(zz*(zz*(s*(5*zz-176)-4)+a2)+b2)+c)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=ww*(ww*(ww*(ww*(s*(ww-44)-1)+a1)+b1)+c)-945
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}



Ca02-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Bradley Beacham
         ; Cubic Method with weird bailout test
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p1
  b1=a+a+2
  b2=4*a*(a+1)
  bailout=real(p2)/10000
  z=pixel:
  f=a*(b2*z*z-1)
  fd=b2*z
  oz=z
  w=z-f/fd
  fw=b2*w
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Ca03-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p1
  b=(a+a)*(a+1)
  c2=a+a+4
  c1=c2/3
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b*z*(c1*zz-1)
  fd=b*(c2*zz-1)
  oz=z
  w=z-f/fd
  fw=b*(c2*w*w-1)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Ca04-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p1
  b1=a*(a+1)/2
  c1=4*(a+2)
  d1=(a+3)/3
  b2=4*a*(a*(a+3)+2)
  c2=(a+a+6)/3
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz-1)+1)
  fd=b2*z*(c2*zz-1)
  oz=z
  w=z-f/fd
  fw=b2*z*(c2*w*w-1)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Ca05-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p1
  b1=a*(a*(a+3)+2)/3
  c1=4*(a+3)
  d1=(a+4)/5
  b2=a*(a*(a+3)+2)/3
  c2=4*(a+3)
  d2=a+4
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*z*(c1*zz*(d1*zz-1)+3)
  fd=b2*(c2*zz*(d2*zz-3)+3)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=b2*(c2*ww*(d2*ww-3)+3)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Ca06-14 {; V.1.1.1 - earlier versions may be discarded
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
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz*(e1*zz-1)+3)-1)
  fd=b2*z*(c2*zz*(d2*zz-1)+3)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=b2*w*(c2*ww*(d2*ww-1)+3)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Ca07-14 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p1
  b2=a*(a*(a*(a+6)+11)+6)/3
  b1=b2/7
  c=a+a+8
  d=((a+a)*(a+11)+60)/15
  e2=a+5
  e1=7*e2/5
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*z*(c*zz*((zz+zz)*(d*zz-e1)+7)-7)
  fd=b2*(c*zz*((zz+zz)*(d*zz-e2)+3)-1)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=b2*(c*ww*((ww+ww)*(d*ww-e2)+3)-1)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Ca08-14 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p1
  b1=a*(a*(a*(a+6)+11)+6)/360
  c1=8*(a+4)
  d1=a+5
  e1=4*(a+6)
  f1=(a+7)/14
  b2=(a+a)*(a*(a*(a*(a+10)+35)+500)+24)/45
  c2=a+a+10
  d2=a+a+12
  e2=(a+a+14)/7
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz*(e1*zz*(f1*zz-1)+15)-15)+15)
  fd=b2*z*(c2*zz*(d2*zz*(e2*zz-3)+15)-15)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=b2*w*(c2*ww*(d2*ww*(e2*ww-3)+15)-15)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Ca09-14 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p1
  b1=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c1=(a+a)*(a*(a+18)+107)+420
  d1=(a+8)/18
  e1=7*(a*(9*a+94)+270)/6
  f1=35*(a+5)/2
  b2=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c2=(a+a)*(a*(a+18)+107)+420
  d2=(a+8)/2
  e2=35*(a*(9*a+94)+270)/6
  f2=105*(a+5)/2
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*z*(16*zz*(zz*(c1*zz*(d1*zz-1)+e1)-f1)+105)
  fd=b2*(16*zz*(zz*(c2*zz*(d2*zz-7)+e2)-f2)+105)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=b2*(16*ww*(ww*(c2*ww*(d2*ww-7)+e2)-f2)+105)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Ca10-14 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p1
  b1=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c1=15*(a+5)
  d1=a+a+12
  k1=a*(a+15)+56
  f1=(a+a+18)/45
  g1=14*(a+a+13)/5
  b2=a*(a*(a*(a*(a*(a+15)+85)+225)+274)+120)/12762
  k2=(a+9)/9
  f2=21*(a+a+13)/5
  bailout=real(p2)/10000
  z=pixel:
  zz=z*z
  f=b1*(c1*zz*(d1*zz*(81*zz*(k1*zz*(f1*zz-1)+g1)-1418)+2127)-31903)
  fd=b2*z*(d1*zz*(162*zz*(k1*zz*(k2*zz-2)+f2)-2881)+2127)
  oz=z
  w=z-f/fd
  ww=w*w
  fw=b2*w*(d1*ww*(162*ww*(k1*ww*(k2*ww-2)+f)-2881)+2127)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}



Tc02-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Bradley Beacham
         ; Cubic Method with weird bailout test
         ; 
         ; Tc(n+1) = 2(2x-1)Tc(n)-Tc(n-1)
         ; Tc(0) = 1
         ; Tc(1) = 2(x+1)
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  bailout=real(p2)/10000, z=pixel:
  f=4*z*(z+z+1)-5
  fd=16*z+4
  oz=z
  w=f-f/fd
  fw=16*w+4
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Tc03-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  bailout=real(p2)/10000, z=pixel:
  zz=z*z
  f=(z+z)*(16*zz-15)+8
  fd=96*zz-30
  oz=z
  w=f-f/fd
  fw=96*w*w-30
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Tc04-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  bailout=real(p2)/10000, z=pixel:
  a=8*z
  z=a*(a*(z*(z+z-1)-2)+11)-11
  fd=64*z*(z*(a-3)-4)+88
  oz=z
  w=f-f/fd
  fw=64*w*(w*(8*w-3)-4)+88
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Tc05-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  bailout=real(p2)/10000, z=pixel:
  a=16*z
  z=(z+z)*(a*(z*(a*(z-1)-13)+19)-95)+14
  fd=32*z*(z*(a*(5*z-4)-39)+38)-190
  oz=z
  w=f-f/fd
  fw=32*w*(w*(16*w*(5*w-4)-39)+38)-190
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Tc06-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  bailout=real(p2)/10000, z=pixel:
  a=z+z
  b=a+a
  z=b*(a*(32*z*(z*(b*(a-3)-3)+13)-231)+87)-17
  fd=48*z*(16*z*(b*(z*(b-5)-1)+13)-77)+348
  oz=z
  w=f-f/fd
  bw=4*z
  fw=48*w*(16*w*(bw*(w*(bw-5)-1)+13)-77)+348
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Tc07-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  bailout=real(p2)/10000, z=pixel:
  a=8*z
  b=16*z
  f=(z+z)*(32*z*(z*(a*(z*(b*(z-2)+5)+30)-213)+71)-287)+20
  fd=64*z*(z*(a*(z*(b*(7*z-12)+25)+120)-639)+71)-1148
  oz=z
  w=f-f/fd
  fw=64*w*(w*(8*w*(w*(16*w*(7*w-12)+25)+120)-639)+71)-1148
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Tc08-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  bailout=real(p2)/10000, z=pixel:
  a=z+z
  b=a+a
  c=16*z
  f=c*(b*(a*(c*(z*(b*(a*(a-5)+5)+29)+420+329)-149)+55)-23)
  fd=128*z*(z*(c*(z*(8*z*(z*(c-35)+15)+145)+168)+987)-149)+880
  oz=z
  w=f-f/fd
  cw=16*w
  fw=128*w*(w*(cw*(w*(8*w*(w*(cw-35)+15)+145)+168)+987)-149)+880
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Tc09-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  bailout=real(p2)/10000, z=pixel:
  a=8*z
  b=16*z
  c=z+z
  f=c*(32*z*(z*(a*(z*(b*(z*(a*(c-7)+59)+11)+435)-37)+1041)+282)-639)+26
  fd=64*z*(z*(a*(z*(b*(z*(b*(9*z-28)+413)+66)+2175)-148)+3123)+564)-1278
  oz=z
  w=f-f/fd
  bw=16*w
  fw=64*w*(w*(8*w*(w*(bw*(w*(bw*(9*w-28)+413)+66)+2175)-148)+3123)+564)-1278
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Tc10-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  bailout=real(p2)/10000, z=pixel:
  a=4*z
  b=32*z
  c=z+z
  d=16*z
  f=a*(c*(b*(z*(a*(c*(b*(z*(8*z*(z-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29
  fd=d*(d*(z*(a*(a*(128*z*(z*((z+z)*(5*z-18)+43)-7)+981)-2835)+3414)-1209)-3959)+1780
  oz=z
  w=f-f/fd
  aw=4*w
  dw=16*w
  fw=dw*(dw*(w*(aw*(aw*(128*w*(w*((w+w)*(5*w-18)+43)-7)+981)-2835)+3414)-1209)-3959)+1780
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}



L02-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Bradley Beacham
        ; Cubic Method with weird bailout test
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  bailout=real(p2)/10000, z=pixel:
  f=z*(z/2-2)+1
  fd=z-2
  oz=z
  w=f-f/fd
  fw=w*(w/2-2)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


L03-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(3-z/3)/2-3)+1
  fd=z*(3-z/2)-3
  oz=z
  w=f-f/fd
  fw=w*(w*(3-w/3)/2-3)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


L04-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z/8-2)/3+3)-4)+1
  fd=z*(z*(z/6-2)+6)-4
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w/8-2)/3+3)-4)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


L05-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(5-z/5)/8-5)/3+5)-5)+1
  fd=z*(z*(z*(20-z)/24-5)+10)-5
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(5-w/5)/8-5)/3+5)-5)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


L06-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z/18-2)/5+5)/8-10/3)+15/2)-6)+1
  fd=z*(z*(z*(z*(z/15-2)+20)/8-10)+15)-6
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(w*(w/18-2)/5+5)/8-10/3)+15/2)-6)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


L07-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(49-z)/2-441)/5+735)/84-35)/3+21)/2-7)+1
  fd=z*(z*(z*(z*(z*(42-z)/10-63)/12+35)/3-35)/2+21)-7
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(w*(w*(49-w)/2-441)/5+735)/84-35)/3+21)/2-7)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


L08-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1
  fd=z*(z*(z*(z*(z*(z*(z/28-2)/3+14)/20-7)+35)/3-28)+28)-8
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(w*(w*(w*(w/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


L09-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(81-z)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1
  fd=z*(z*(z*(z*(z*(z*(z*(648-9*z)/16-1134)+15876)/5-23814)+95256)-252)+216)/17-9
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(w*(w*(w*(w*(81-w)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


L10-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1
  fd=z*(z*(z*(z*(z*(z*(z*(z*(z/10-9)/8+405)/2-378)+3969)/4-59535)+19845)-34020)+27025)/567-10
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(w*(w*(w*(w*(w*(w/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}



La02-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Bradley Beacham
         ; Cubic Method with weird bailout test
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+ 3-z)La(1)-(a+1)La(0))/2
  a=p1
  c=a+2
  b=c*(a+1)/2
  bailout=real(p2)/10000, z=pixel:
  f=z*(z/2-c)+b
  fd=z-c
  oz=z
  w=f-f/fd
  fw=w-c
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


La03-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+ 5-z)La(2)-(a+2)La(1))/3
  a=p1
  d1=(a+3)/2
  c1=d1*(a+2)
  b1=c1*(a+1)/3
  d2=a+3
  c2=d2*(a+2)/2
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(d1-z/2)-c1)+b
  fd=z*(d2-z/2)-c2
  oz=z
  w=f-f/fd
  fw=w-(w*(d1-z/2)-c1)+b
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


La04-14 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+ 7-z)La(3)-(a+3)La(2))/4
  a=p1
  e1= (a+4)/6
  d1=e1*(a+3)*(3/2)
  c1=d1*(a+2)*(2/3)
  b=c1*(a+1)/4
  e2= (a+4)/2
  d2=e2*(a+3)
  c2=d2*(a+2)/3
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z/24-e1)+d1)-c1)+b
  fd=z*(z*(z/6-e2)+d2)-c2
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w/24-e1)+d1)-c1)+b
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


La05-14 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+ 9-z)La(4)-(a+4)La(3))/5
  a=p1
  f1= (a+5)/24
  e1=f1*(a+4)*2
  d1=e1*(a+3)
  c1=d1*(a+2)/2
  b=c1*(a+1)/5
  f2= (a+5)/6
  e2=f2*(a+4)*(3/2)
  d2=e2*(a+3)*(2/3)
  c2=d2*(a+2)/4
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(f1-z/120)-e1)+d1)-c1)+b
  fd=z*(z*(z*(f2-z/24)-e2)+d2)-c2
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(f1-w/120)-e1)+d1)-c1)+b
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


La06-14 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p1
  g1= (a+6)/120
  f1=g1*(a+5)*(5/2)
  e1=f1*(a+4)*(4/3)
  d1=e1*(a+3)*(3/4)
  c1=d1*(a+2)*(2/5)
  b=c1*(a+1)/6
  g2=(a+6)/24
  f2=g2*(a+5)*2
  e2=f2*(a+4)
  d2=e2*(a+3)/2
  c2=d2*(a+2)/5
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z/720-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z/120-g2)+f2)-e2)+d2)-c2
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(w*(w/720-g1)+f1)-e1)+d1)-c1)+b
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


La07-14 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p1
  h1=(a+7)/720
  g1=h1*(a+6)*3
  f1=g1*(a+5)*(5/3)
  e1=f1*(a+4)
  d1=e1*(a+3)*(3/5)
  c1=d1*(a+2)/3
  b=c1*(a+1)/7
  h2= (a+7)/120
  g2=h2*(a+6)*(5/2)
  f2=g2*(a+5)*(4/3)
  e2=f2*(a+4)*(3/4)
  d2=e2*(a+3)*(2/5)
  c2=d2*(a+2)/6
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(h1-z/5040)-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(h-z/720)-g2)+f2)-e2)+d2)-c2
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(w*(w*(h1-w/5040)-g1)+f1)-e1)+d1)-c1)+b
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


La08-14 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p1
  i1= (a+8)/5040
  h1=i1*(a+7)*(7/2)
  g1=h1*(a+6)*2
  f1=g1*(a+5)*(5/4)
  e1=f1*(a+4)*(4/5)
  d1=e1*(a+3)/2
  c1=d1*(a+2)*(2/7)
  b=c1*(a+1)/8
  i2= (a+8)/720
  h2=i2*(a+7)
  g2=h2*(a+6)*(5/3)
  f2=g2*(a+5)
  e2=f2*(a+4)*(3/5)
  d2=e2*(a+3)/3
  c2=d2*(a+2)/7
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z/40320-i1)+h1)-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(z*(z/5040-i2)+h2)-g2)+f2)-e2)+d2)-c2
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(w*(w*(w*(w/40320-i1)+h1)-g1)+f1)-e1)+d1)-c1)+b
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


La09-14 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p1
  j1=(a+9)/40320
  i1=j1*(a+8)*4
  h1=i1*(a+7)*(7/3)
  g1=h1*(a+6)*(3/2)
  f1=g1*(a+5)
  e1=f1*(a+4)*(2/3)
  d1=e1*(a+3)*(3/7)
  c1=d1*(a+2)/4
  b=c1*(a+1)/9
  j2= (a+9)/5040
  i2=j2*(a+8)*(7/2)
  h2=i2*(a+7)
  g2=h2*(a+6)*(5/4)
  f2=g2*(a+5)*(4/5)
  e2=f2*(a+4)/2
  d2=e2*(a+3)*(2/7)
  c2=d2*(a+2)/8
  bailout=real(p2)/10000, z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(j1-z/362880)-i1)+h1)-g1)+f1)-e1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(z*(z*(j2-z/40320)-i2)+h2)-g2)+f2)-e2)+d2)-c2
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(w*(w*(w*(w*(j1-w/362880)-i1)+h1)-g1)+f1)-e1)+d1)-c1)+b
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


La10-14 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p1
  k1= (a+10)/362880
  j1=k1*(a+9)*45
  i1=j1*(a+8)*(4/15)
  h1=i1*(a+7)*(7/4)
  g1=11*h1*(a+6)
  f1=g1*(a+5)/12
  l1=f1*(a+4)*(4/7)
  d1=l1*(a+3)*(15/4)
  c1=d1*(a+2)/45
  b=c1*(a+1)/10
  k2=(a+10)/40320
  j2=40*k2*(a+9)
  i2=j2*(a+8)*(7/30)
  h2=i2*(a+7)*(3/2)
  g2=10*h2*(a+6)
  f2=g2*(a+5)/15
  l2=f2*(a+4)*(3/7)
  d2=l2*(a+3)*(5/2)
  c2=d2*(a+2)/90
  bailout=real(p2)/10000,z=pixel:
  f=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/3628800-k1)+j1)-i1)+h1)-g1)+f1)-l1)+d1)-c1)+b
  fd=z*(z*(z*(z*(z*(z*(z*(z*(z/362880-k2)+j2)-i2)+h2)-g2)+f2)-l2)+d2)-c2
  oz=z
  w=f-f/fd
  fw=w*(w*(w*(w*(w*(w*(w*(w*(w*(w/3628800-k1)+j1)-i1)+h1)-g1)+f1)-l1)+d1)-c1)+b
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}



Uc02-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Bradley Beacham
         ; Cubic Method with weird bailout test
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2
  f=a*a-1
  fd=8*a
  oz=z
  w=f-f/fd
  aw=w*w
  fw=aw*aw-1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Uc03-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2
  aa=a*a
  f=a*(aa-2)
  fd=12*aa-8
  oz=z
  w=f-f/fd
  aw=4*w-2
  fw=aw*(aw*aw-2)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Uc04-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=aa*(aa-3)+1
  fd=8*a*(aa+aa-3)
  oz=z
  w=f-f/fd
  aw=4*w-2, aaw=aw*aw
  fw=aaw*(aaw-3)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Uc05-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=a*(aa*(aa-4)+3)
  fd=4*(aa*(5*aa-12)+3)
  oz=z
  w=f-f/fd
  aw=4*w-2, aaw=aw*aw
  fw=aw*(aaw*(aaw-4)+3)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Uc06-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa-5)+6)-1
  fd=8*a*(aa*(3*aa-10)+12)
  oz=z
  w=f-f/fd
  aw=4*w-2, aaw=aw*aw
  fw=aaw*(aaw*(aaw-5)+6)-1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Uc07-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=a*(aa*(aa*(aa-6)+10)-4)
  fd=4*(aa*(aa*(7*aa-30)+30)-4)
  oz=z
  w=f-f/fd
  aw=4*w-2, aaw=aw*aw
  fw=aw*(aaw*(aaw*(aaw-6)+10)-4)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Uc08-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa*(aa-7)+15)-10)+1
  fd=8*a*(aa*(aa*(4*aa-21)+30)-10)
  oz=z
  w=f-f/fd
  aw=4*w-2, aaw=aw*aw
  fw=aaw*(aaw*(aaw*(aaw-7)+15)-10)+1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Uc09-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=a*(aa*(aa*(aa*(aa-8)+21)-20)+5)
  fd=4*(aa*(aa*(aa*(9*aa-56)+105)-60)+5)
  oz=z
  w=f-f/fd
  aw=4*w-2, aaw=aw*aw
  fw=aw*(aaw*(aaw*(aaw*(aaw-8)+21)-20)+5)
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}


Uc10-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  bailout=real(p2)/10000
  z=pixel:
  a=4*z-2, aa=a*a
  f=aa*(aa*(aa*(aa*(aa-9)+36)-35)+15)-1
  fd=8*a*(aa*(aa*(aa*(5*aa-36)+108)-70)+15)
  oz=z
  w=f-f/fd
  aw=4*w-2, aaw=aw*aw
  fw=aaw*(aaw*(aaw*(aaw*(aaw-9)+36)-35)+15)-1
  z=w-fw/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
}



Pc02-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Bradley Beacham
         ; Cubic Method with weird bailout test
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  f=((4*z-5)*z+1)
  fd=8*z-5
  oz=z
  w=z-f/fd
  fw=((4*w-5)*w+1)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Pc03-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  f=(((8*z-50/3)*z+9)*z-1)
  fd=(24*z-100/3)*z+9
  oz=z
  w=z-f/fd
  fw=(((8*w-50/3)*w+9)*w-1)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Pc04-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  f=((((16*z-142/3)*z+265/6)*z-14)*z+1)
  fd=((64*z-142)*z+265/3)*z-14
  oz=z
  w=z-f/fd
  fw=((((16*w-142/3)*w+265/6)*w-14)*w+1)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Pc05-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  f=(((((32*z-1852/15)*z+2507/15)*z-565/6)*z+20)*z-1)
  fd=(((160*z-7408/15)*z+2507/5)*z-565/3)*z+20
  oz=z
  w=z-f/fd
  fw=(((((32*w-1852/15)*w+2507/15)*w-565/6)*w+20)*w-1)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Pc06-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  f=((((((64*z-1528/5)*z+24628/45)*z-4553/10)*z+1055/6)*z-27)*z+1)
  fd=((((384*z-1528)*z+98512/45)*z-13659/10)*z+1055/3)*z-27
  oz=z
  w=z-f/fd
  fw=((((((64*w-1528/5)*w+24628/45)*w-4553/10)*w+1055/6)*w-27)*w+1)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Pc07-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  f=(((((((128*z-25552/35)*z+514928/315)*z-573667/315)*z+31619/30)*z-1799/6)*z+35)*z-1)
  fd=(((((896*z-153312/35)*z+514928/63)*z-2294668/315)*z+31619/10)*z-1799/3)*z+35
  oz=z
  w=z-f/fd
  fw=(((((((128*w-25552/35)*w+514928/315)*w-573667/315)*w+31619/30)*w-1799/6)*w+35)*w-1)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Pc08-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  f=((((((((256*z-59504/35)*z+1443406/315)*z-289799/45)*z+2542045/504)*z-32662/15)*z+1435/3)*z-44)*z+1)
  fd=((((((2048*z-59504/5)*z+2886812/105)*z-289799/9)*z+2542045/126)*z-32662/5)*z+2870/3)*z-44
  oz=z
  w=z-f/fd
  fw=((((((((256*w-59504/35)*w+1443406/315)*w-289799/45)*w+2542045/504)*w-32662/15)*w+1435/3)*w-44)*w+1)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Pc09-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  f=(((((((((512*z-1223392/315)*z+772508/63)*z-8458976/405)*z+26206517/1260)*z-2060215/168)*z+20664/5)*z-725)*z+54)*z-1)
  fd=(((((((4608*z-9787136/315)*z+772508/9)*z-16917952/135)*z+26206517/252)*z-2060215/42)*z+61992/5)*z-1450)*z+54
  oz=z
  w=z-f/fd
  fw=(((((((((512*w-1223392/315)*w+772508/63)*w-8458976/405)*w+26206517/1260)*w-2060215/168)*w+20664/5)*w-725)*w+54)*w-1)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Pc10-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  f=((((((((((1024*z-2753216/315)*z+2375464/75)*z-900686282/14175)*z+312488741/4050)*z-4193867/72)*z+22702079/840)*z-36713/5)*z+1055)*z-65)*z+1)
  fd=((((((((10240*z-2753216/35)*z+19003712/75)*z-900686282/2025)*z+312488741/675)*z-20969335/72)*z+22702079/210)*z-110139/5)*z+2110)*z-65
  oz=z
  w=z-f/fd
  fw=((((((((((1024*w-2753216/315)*w+2375464/75)*w-900686282/14175)*w+312488741/4050)*w-4193867/72)*w+22702079/840)*w-36713/5)*w+1055)*w-65)*w+1)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}



O02-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Bradley Beacham
        ; Cubic Method with weird bailout test
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)fn1(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z
  f=((z2+4)/(z2*z))
  fd=((4-z)*z-12)/(z2*z2)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=((w2+4)/(w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


O03-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)sin(2*pi/2)^2
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=((((6-3*z)*z-12)*z+24)/z4)
  fd=(((3*z-12)*z+36)*z-96)/(z4*z)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=((((6-3*w)*w-12)*w+24)/(w2*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


O04-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)sin(3*pi/2)^2
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=(((((12*z-36)*z+72)*z-144)*z+192)/(z4*z))
  fd=((((72-12*z)*z-216)*z+576)*z-960)/(z4*z2)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=(((((12*w-36)*w+72)*w-144)*w+192)/(w2*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


O05-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)sin(4*pi/2)^2
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z6=z2*z2*z2
  f=((((((180-20*z)*z-480)*z+960)*z-1760)*z+1920)/z6)
  fd=(((((20*z-360)*z+1440)*z-3840)*z+8800)*z-11520)/(z6*z)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=((((((180-20*w)*w-480)*w+960)*w-1760)*w+1920)/(w2*w2*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


O06-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)sin(5*pi/2)^2
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z6=z2*z2*z2
  f=(((((((40*z-510)*z+2880)*z-7200)*z+14160)*z-24000)*z+23040)/(z6*z))
  fd=((((((1020-40*z)*z-8640)*z+28800)*z-70800)*z+144000)*z-161280)/(z6*z2)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=(((((((40*w-510)*w+2880)*w-7200)*w+14160)*w-24000)*w+23040)/(w2*w2*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


O07-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)sin(6*pi/2)^2
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=((((((((1274-56*z)*z-11172)*z+50400)*z-120624)*z+231840)*z-368256)*z+322560)/z8)
  fd=(((((((56*z-2548)*z+33516)*z-201600)*z+603120)*z-1391040)*z+2577792)*z-2580480)/(z8*z)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  fw=((((((((1274-56*w)*w-11172)*w+50400)*w-120624)*w+231840)*w-368256)*w+322560)/(w4*w4))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


O08-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)sin(7*pi/2)^2
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=(((((((((266*z-7784)*z/3+35280)*z-245952)*z+967232)*z-2239104)*z+4200448)*z-6322176)*z+5160960)/(z8*z))
  fd=((((((((15568-266*z)*z/3-105840)*z+983808)*z-4836160)*z+13434624)*z-29403136)*z+50577408)*z-46448640)/(z8*z2)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  fw=(((((((((266*w-7784)*w/3+35280)*w-245952)*w+967232)*w-2239104)*w+4200448)*w-6322176)*w+5160960)/(w4*w4*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


O09-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)sin(8*pi/2)^2
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2, z10=z4*z4*z2
  f=((((((((((4932-114*z)*z-92064)*z+951264)*z-5670720)*z+20289024)*z-45704448)*z+83736576)*z-120434688)*z+92897280)/z10)
  fd=(((((((((114*z-9864)*z+276192)*z-3805056)*z+28353600)*z-121734144)*z+319931136)*z-669892608)*z+1083912192)*z-928972800)/(z10*z)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  fw=((((((((((4932-114*w)*w-92064)*w+951264)*w-5670720)*w+20289024)*w-45704448)*w+83736576)*w-120434688)*w+92897280)/(w4*w4*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


O10-14 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)sin(9*pi/2)^2
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=(((((((((((321/2*z-8445)*z+213720)*z-3030360)*z+26113680)*z-138775680)*z+462911040)*z-1018759680)*z+1825274880)*z-2524815360)*z+1857945600)/(z8*z2*z))
  fd=((((((((((16890-321/2*z)*z-641160)*z+12121440)*z-130568400)*z+832654080)*z-3240377280)*z+8150077440)*z-16427473920)*z+25248153600)*z-20437401600)/(z8*z4)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  fw=(((((((((((321/2*w-8445)*w+213720)*w-3030360)*w+26113680)*w-138775680)*w+462911040)*w-1018759680)*w+1825274880)*w-2524815360)*w+1857945600)/(w4*w4*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}



Sc02-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Bradley Beacham
         ; Cubic Method with weird bailout test
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  f=(2/z)
  fd=-2/(z*z)
  oz=z
  w=z-f/fd
  fw=2/w
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Sc03-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z
  f=(4/(z2))
  fd=-8/(z2*z)
  oz=z
  w=z-f/fd
  fw=4/(w*w)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Sc04-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z
  f=((((4-2*z)*z-8)*z+16)/(z2*z))
  fd=((16-4*z)*z-48)/(z2*z2)
  oz=z
  w=z-f/fd
  fw=((((4-2*w)*w-8)*w+16)/(w*w*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Sc05-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=(((((11/2*z-18)*z+36)*z-72)*z+96)/z4)
  fd=(((18*z-72)*z+216)*z-384)/(z4*z)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=(((((11/2*w-18)*w+36)*w-72)*w+96)/(w2*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Sc06-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=((((((72-8*z)*z-192)*z+384)*z-704)*z+768)/(z4*z))
  fd=((((384-72*z)*z-1152)*z+2816)*z-3840)/(z4*z2)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=((((((72-8*w)*w-192)*w+384)*w-704)*w+768)/(w2*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Sc07-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z6=z2*z2*z2
  f=(((((((13*z-170)*z+960)*z-2400)*z+4720)*z-8000)*z+7680)/z6)
  fd=(((((170*z-1920)*z+7200)*z-18880)*z+40000)*z-46080)/(z6*z)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=(((((((13*w-170)*w+960)*w-2400)*w+4720)*w-8000)*w+7680)/(w2*w2*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Sc08-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2
  f=((((((((364-16*z)*z-3192)*z+14400)*z-34464)*z+66240)*z-105216)*z+92160)/(z4*z2*z))
  fd=((((((6384-364*z)*z-43200)*z+137856)*z-331200)*z+631296)*z-645120)/(z4*z4)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=((((((((364-16*w)*w-3192)*w+14400)*w-34464)*w+66240)*w-105216)*w+92160)/(w2*w2*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Sc09-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=(((((((((263/12*z-1946/3)*z+8820)*z-61488)*z+241808)*z-559776)*z+1050112)*z-1580544)*z+1290240)/z8)
  fd=(((((((1946/3*z-17640)*z+184464)*z-967232)*z+2798880)*z-6300672)*z+11063808)*z-10321920)/(z8*z)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  fw=(((((((((263/12*w-1946/3)*w+8820)*w-61488)*w+241808)*w-559776)*w+1050112)*w-1580544)*w+1290240)/(w4*w4))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Sc10-14 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2, z8=z4*z4
  f=((((((((((1096-76/3*z)*z-61376/3)*z+211392)*z-1260160)*z+4508672)*z-10156544)*z+18608128)*z-26763264)*z+20643840)/(z8*z))
  fd=((((((((122752/3-1096*z)*z-634176)*z+5040640)*z-22543360)*z+60939264)*z-130256896)*z+214106112)*z-185794560)/(z8*z2)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  fw=((((((((((1096-76/3*w)*w-61376/3)*w+211392)*w-1260160)*w+4508672)*w-10156544)*w+18608128)*w-26763264)*w+20643840)/(w4*w4*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}



Exp02-14 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Bradley Beacham
          ; Cubic Method with weird bailout test
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(-z)
  f=ez
  fd=-ez
  oz=z
  w=z-f/fd
  fw=exp(-w)
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Exp03-14 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  f=((1-z)/(ez*2))
  fd=(z/2-1)/ez
  oz=z
  w=z-f/fd
  fw=((1-w)/(exp(w)*2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Exp04-14 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  f=(((z-1)*z/6+1/3)/ez)
  fd=((1/2-z/6)*z-1/2)/ez
  oz=z
  w=z-f/fd
  fw=(((w-1)*w/6+1/3)/exp(w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Exp05-14 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  f=((((1-z)*z/24-1/12)*z+1/4)/ez)
  fd=(((1/24*z-1/6)*z+1/6)*z-1/3)/ez
  oz=z
  w=z-f/fd
  fw=((((1-w)*w/24-1/12)*w+1/4)/exp(w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Exp06-14 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  f=(((((z-1)*z/120+1/60)*z-1/20)*z+1/5)/ez)
  fd=((((-z/120+1/24)*z-1/24)*z+1/12)*z-1/4)/ez
  oz=z
  w=z-f/fd
  fw=(((((w-1)*w/120+1/60)*w-1/20)*w+1/5)/exp(w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Exp07-14 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  f=((((((1-z)*z/720-1/360)*z+1/120)*z-1/30)*z+1/6)/ez)
  fd=(((((z/720-1/120)*z+1/120)*z-1/60)*z+1/20)*z-1/5)/ez
  oz=z
  w=z-f/fd
  fw=((((((1-w)*w/720-1/360)*w+1/120)*w-1/30)*w+1/6)/exp(w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Exp08-14 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  f=(((((((z-1)*z/5040+1/2520)*z-1/840)*z+1/210)*z-1/42)*z+1/7)/ez)
  fd=((((((1/720-z/5040)*z-1/720)*z+1/360)*z-1/120)*z+1/30)*z-1/6)/ez
  oz=z
  w=z-f/fd
  fw=(((((((w-1)*w/5040+1/2520)*w-1/840)*w+1/210)*w-1/42)*w+1/7)/exp(w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Exp09-14 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  f=((((((((1-z)*z/40320-1/20160)*z+1/6720)*z-1/1680)*z+1/336)*z-1/56)*z+1/8)/ez)
  fd=(((((((z/40320-1/5040)*z+1/5040)*z-1/2520)*z+1/840)*z-1/210)*z+1/42)*z-1/7)/ez
  oz=z
  w=z-f/fd
  fw=((((((((1-w)*w/40320-1/20160)*w+1/6720)*w-1/1680)*w+1/336)*w-1/56)*w+1/8)/exp(w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Exp10-14 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  f=(((((((((z-1)*z/362880+1/181440)*z-1/60480)*z+1/15120)*z-1/3024)*z+1/504)*z-1/72)*z+1/9)/ez)
  fd=((((((((1/40320-z/362880)*z-1/40320)*z+1/20160)*z-1/6720)*z+1/1680)*z-1/336)*z+1/56)*z-1/8)/ez
  oz=z
  w=z-f/fd
  fw=(((((((((w-1)*w/362880+1/181440)*w-1/60480)*w+1/15120)*w-1/3024)*w+1/504)*w-1/72)*w+1/9)/exp(w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}



Alpha02-14 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Bradley Beacham
            ; Cubic Method with weird bailout test
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)*z*z*z
  f=(((z-2)*z+2)/ez)
  fd=(((1-z)*z+2)*z-6)/(ez*z)
  oz=z
  w=z-f/fd
  fw=(((w-2)*w+2)/(exp(w)*w*w*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Alpha03-14 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, ez=exp(z)*z2*z2
  f=((((z-3)*z+6)*z-6)/ez)
  fd=(((2-z)*z2-12)*z+24)/(ez*z)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=((((w-3)*w+6)*w-6)/(exp(w)*w2*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Alpha04-14 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, ez=exp(z)*z2*z2
  f=(((((z-4)*z+12)*z-24)*z+24)/(ez*z))
  fd=(((((3-z)*z-4)*z-12)*z+72)*z-120)/(ez*z2)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=(((((w-4)*w+12)*w-24)*w+24)/(exp(w)*w2*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Alpha05-14 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, ez=exp(z)*z2*z2*z2
  f=((((((z-5)*z+20)*z-60)*z+120)*z-120)/ez)
  fd=(((((4-z)*z-10)*z2+120)*z-480)*z+720)/(ez*z)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=((((((w-5)*w+20)*w-60)*w+120)*w-120)/(exp(w)*w2*w2*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Alpha06-14 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4
  f=(((((((z-6)*z+30)*z-120)*z+360)*z-720)*z+720)/(ez*z2*z))
  fd=(((((((5-z)*z-18)*z+30)*z+120)*z-1080)*z+3600)*z-5040)/(ez*z4)
  oz=z
  w=z-f/fd
  w2=w*w
  fw=(((((((w-6)*w+30)*w-120)*w+360)*w-720)*w+720)/(exp(w)*w2*w2*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Alpha07-14 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4
  f=((((((((z-7)*z+42)*z-210)*z+840)*z-2520)*z+5040)*z-5040)/ez)
  fd=(((((((6-z)*z-28)*z+84)*z2-1680)*z+10080)*z-30240)*z+40320)/(ez*z)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  fw=((((((((w-7)*w+42)*w-210)*w+840)*w-2520)*w+5040)*w-5040)/(exp(w)*w4*w4))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Alpha08-14 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4
  f=(((((((((z-8)*z+56)*z-336)*z+1680)*z-6720)*z+20160)*z-40320)*z+40320)/(ez*z))
  fd=(((((((((7-z)*z-40)*z+168)*z-336)*z-1680)*z+20160)*z-100800)*z+282240)*z-362880)/(ez*z2)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  fw=(((((((((w-8)*w+56)*w-336)*w+1680)*w-6720)*w+20160)*w-40320)*w+40320)/(exp(w)*w4*w4*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Alpha09-14 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4*z2
  f=((((((((((z-9)*z+72)*z-504)*z+3024)*z-15120)*z+60480)*z-181440)*z+362880)*z-362880)/ez)
  fd=(((((((((8-z)*z-54)*z+288)*z-1008)*z2+30240)*z-241920)*z+1088640)*z-2903040)*z+3628800)/(ez*z)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  fw=((((((((((w-9)*w+72)*w-504)*w+3024)*w-15120)*w+60480)*w-181440)*w+362880)*w-362880)/(exp(w)*w4*w4*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Alpha10-14 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  z2=z*z, z4=z2*z2, ez=exp(z)*z4*z4
  f=(((((((((((z-10)*z+90)*z-720)*z+5040)*z-30240)*z+151200)*z-604800)*z+1814400)*z-3628800)*z+3628800)/(ez*z2*z))
  fd=(((((((((((9-z)*z-70)*z+450)*z-2160)*z+5040)*z+30240)*z-453600)*z+3024000)*z-12700800)*z+32659200)*z-39916800)/(ez*z4)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  fw=(((((((((((w-10)*w+90)*w-720)*w+5040)*w-30240)*w+151200)*w-604800)*w+1814400)*w-3628800)*w+3628800)/(exp(w)*w4*w4*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}



Beta02-14 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Bradley Beacham
           ; Cubic Method with weird bailout test
           ;
           ; Beta Integral
           ; Beta[0] = 2sinh(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  e1=ez*ez
  e2=2*e1-2
  e3=ez*z*z*z
  f=(((z+2)*z+e2)/e3)
  fd=(((-z-3)*z+e2)*z-6*e1+6)/(e3*z)
  oz=z
  w=z-f/fd
  ew=exp(w)
  fw=(((w+2)*w+2*ew*ew-2)/(ew*w*w*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Beta03-14 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=6*e1-6
  e3=ez*z2*z2
  f=(-(((z+3)*z+6)*z+e2)/e3)
  fd=((((z+4)*z+6)*z-e2)*z+24*e1+24)/(e3*z)
  oz=z
  w=z-f/fd
  w2=w*w
  ew=exp(w)
  fw=(-(((w+3)*w+6)*w+6*ew*ew-6)/(ew*w2*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Beta04-14 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=24*e1-24
  e3=ez*z2*z2*z
  f=(((((z+4)*z+12)*z+24)*z+e2)/e3)
  fd=(((((-z-5)*z-20)*z-36)*z+e2)*z-120*e1-120)/(e3*z)
  oz=z
  w=z-f/fd
  w2=w*w
  ew=exp(w)
  fw=(((((w+4)*w+12)*w+24)*w+24*ew*ew-24)/(ew*w2*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Beta05-14 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=120*e1-120
  e3=ez*z2*z2*z2
  f=(-(((((z+5)*z+20)*z+60)*z+120)*z+e2)/e3)
  fd=((((((z+6)*z+30)*z+120)*z+240)*z-e2)*z+720*e1+720)/(e3*z)
  oz=z
  w=z-f/fd
  w2=w*w
  ew=exp(w)
  fw=(-(((((w+5)*w+20)*w+60)*w+120)*w+120*ew*ew-120)/(ew*w2*w2*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Beta06-14 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=720*e1-720
  e3=ez*z2*z2*z2*z
  f=(((((((z+6)*z+30)*z+120)*z+360)*z+720)*z+720*ez*ez-720)/e3)
  fd=(((((((-z-7)*z-42)*z-210)*z-840)*z-1800)*z+e2)*z-5040*e1-5040)/(e3*z)
  oz=z
  w=z-f/fd
  w2=w*w
  ew=exp(w)
  fw=(((((((w+6)*w+30)*w+120)*w+360)*w+720)*w+720*ew*ew-720)/(ew*w2*w2*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Beta07-14 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=5040*e1-5040
  e3=ez*z4*z4
  f=(-(((((((z+7)*z+42)*z+210)*z+840)*z+2520)*z+5040)*z+e2)/e3)
  fd=((((((((z+8)*z+56)*z+336)*z+1680)*z+6720)*z+15120)*z-e2)*z+40320*e1+40320)/(e3*z)
  oz=z
  w=z-f/fd
  ew=exp(w)
  w2=w*w, w4=w2*w2
  fw=(-(((((((w+7)*w+42)*w+210)*w+840)*w+2520)*w+5040)*w+5040*ew*ew-5040)/(ez*w4*w4))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Beta08-14 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=40320*e1-40320
  e3=ez*z4*z4*z
  f=(((((((((z+8)*z+56)*z+336)*z+1680)*z+6720)*z+20160)*z+40320)*z+e2)/e3)
  fd=(((((((((-z-9)*z-72)*z-504)*z-3024)*z-15120)*z-60480)*z-141120)*z+e2)*z-362880*e1-362880)/(e3*z)
  oz=z
  w=z-f/fd
  ew=exp(w)
  w2=w*w, w4=w2*w2
  fw=(((((((((w+8)*w+56)*w+336)*w+1680)*w+6720)*w+20160)*w+40320)*w+40320*ew*ew-40320)/(ew*w4*w4*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Beta09-14 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=362880*e1-362880
  e3=ez*z4*z4*z2
  f=(-(((((((((z+9)*z+72)*z+504)*z+3024)*z+15120)*z+60480)*z+181440)*z+362880)*z+e2)/e3)
  fd=((((((((((z+10)*z+90)*z+720)*z+5040)*z+30240)*z+151200)*z+604800)*z+1451520)*z-e2)*z+3628800*e1+3628800)/(e3*z)
  oz=z
  w=z-f/fd
  ew=exp(w)
  w2=w*w, w4=w2*w2
  fw=(-(((((((((w+9)*w+72)*w+504)*w+3024)*w+15120)*w+60480)*w+181440)*w+362880)*w+362880*ew*ew-362880)/(ew*w4*w4*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}


Beta10-14 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=3628800*e1-3628800
  e3=ez*z4*z4*z2*z
  f=(((((((((((z+10)*z+90)*z+720)*z+5040)*z+30240)*z+151200)*z+604800)*z+1814400)*z+3628800)*z+e2)/e3)
  fd=(((((((((((-z-11)*z-110)*z-990)*z-7920)*z-55440)*z-332640)*z-1663200)*z-6652800)*z-16329600)*z+e2)*z-39916800*e1-39916800)/(e3*z)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  ew=exp(w)
  fw=(((((((((((w+10)*w+90)*w+720)*w+5040)*w+30240)*w+151200)*w+604800)*w+1814400)*w+3628800)*w+3628800*ew*ew-3628800)/(ew*w4*w4*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
}

