;Version 1.1
;Copyright (c)1998,1999 Morgan L. Owens
;EG-02{;V.1.1 - earlier versions may be discarded
; = Recurrence
;bailout=p1+4,z=pixel:
;z=function in z
;|z|<=bailout}

;
;
;comment{Chebyshev Types:
;       Inspired by Clifford A. Pickover:
;       Dynamic
;}



T02-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; Chebyshev Types:
                 ; Inspired by Clifford A. Pickover:
                 ; Dynamic
                 ; 
                 ; T(n+1) = 2zT(n)-T(n-1)
                 ; T(0)  = 1
                 ; T(1)  = z
                 ;
                 ; = 2zT01-T00
  bailout=p1+4, z=pixel:
  z=2*z*z-1
  |z|<=bailout
}


T03-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT02-T01
  bailout=p1+4, z=pixel:
  z=z*(4*z*z-3)
  |z|<=bailout
}


T04-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT03-T02
  bailout=p1+4, z=pixel:
  zz=z*z
  z=8*zz*(zz-1)+1
  |z|<=bailout
}


T05-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT04-T03
  bailout=p1+4, z=pixel:
  a=4*z*z
  z=z*(a*(a-5)+5)
  |z|<=bailout
}


T06-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT05-T04
  bailout=p1+4, z=pixel:
  zz=z*z
  a=2*zz
  z=a*(8*zz*(a-3)+9)-1
  |z|<=bailout
}


T07-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT06-T05
  bailout=p1+4, z=pixel:
  zz=z*z
  z=z*(8*zz*(2*zz*(4*zz-7)+7)-7)
  |z|<=bailout
}


T08-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT07-T06
  bailout=p1+4, z=pixel:
  zz=z*z
  z=32*zz*(zz*(4*zz*(zz-2)+5)+1)+1
  |z|<=bailout
}


T09-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT08-T07
  bailout=p1+4, z=pixel:
  zz=z*z
  a=4*zz
  z=z*(8*zz*(2*zz*(a*(a-9)+27)-15)+9)
  |z|<=bailout
}


T10-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zT09-T08
  bailout=p1+4, z=pixel:
  zz=z*z
  a=2*zz
  b=8*zz
  z=a*(b*(a*(b*(a-5)+35)-11)+25)-1
  |z|<=bailout
}



U02-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; Chebyshev Types:
                 ; Inspired by Clifford A. Pickover:
                 ; Dynamic
                 ; 
                 ; U(n+1) = 2zU(n)-U(n-1)
                 ; U(0)  = 1
                 ; U(1)  = 2z
                 ; 
                 ; = 2zU01-U00
  bailout=p1+4, z=pixel:
  z=4*z*z-1
  |z|<=bailout
}


U03-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU02-U01
  bailout=p1+4, z=pixel:
  z=4*z*(2*z*z-1)
  |z|<=bailout
}


U04-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU03-U02
  bailout=p1+4, z=pixel:
  a=4*z*z
  z=a*(a-3)+1
  |z|<=bailout
}


U05-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU04-U03
  bailout=p1+4, z=pixel:
  zz=z*z
  z=2*z*(16*zz*(zz-1)+3)
  |z|<=bailout
}


U06-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU05-U04
  bailout=p1+4, z=pixel:
  zz=z*z
  z=8*zz*(2*zz*(4*zz-5)+3)-1
  |z|<=bailout
}


U07-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU06-U05
  bailout=p1+4, z=pixel:
  zz=z*z
  a=2*zz
  z=8*z*(a*(4*zz*(a-3)+5)-1)
  |z|<=bailout
}


U08-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU07-U06
  bailout=p1+4, z=pixel:
  zz=z*z
  a=4*zz
  z=8*zz*(2*zz*(a*(a-7)+15)-5)+1
  |z|<=bailout
}


U09-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU08-U07
  bailout=p1+4, z=pixel:
  zz=z*z
  a=16*zz
  z=2*z*(a*(zz*(a*(zz-2)+17)-5)-3)
  |z|<=bailout
}


U10-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2zU09-U08
  bailout=p1+4, z=pixel:
  zz=z*z
  a=4*zz
  z=a*(a*(16*zz*(zz*(a-9)+6)-35)+7)-1
  |z|<=bailout
}



S02-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; Chebyshev Types:
                 ; Inspired by Clifford A. Pickover:
                 ; Dynamic
                 ;
                 ; S(n+1) = xS(n)-S(n-1)
                 ; S(0)  = 1
                 ; S(1)  = x
                 ;
                 ; = zS01-S00
  bailout=p1+4, z=pixel:
  z=z*z-1
  |z|<=bailout
}


S03-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS02-S01
  bailout=p1+4, z=pixel:
  z=z*(z*z-2)
  |z|<=bailout
}


S04-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS03-S02
  bailout=p1+4, z=pixel:
  zz=z*z
  z=zz*(zz-3)+1
  |z|<=bailout
}


S05-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS04-S03
  bailout=p1+4, z=pixel:
  zz=z*z
  z=z*(zz*(zz-4)+3)
  |z|<=bailout
}


S06-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS05-S04
  bailout=p1+4, z=pixel:
  zz=z*z
  z=zz*(zz*(zz-5)+6)-1
  |z|<=bailout
}


S07-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS06-S05
  bailout=p1+4, z=pixel:
  zz=z*z
  z=z*(zz*(zz*(zz-6)+10)-4)
  |z|<=bailout
}


S08-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS07-S06
  bailout=p1+4, z=pixel:
  zz=z*z
  z=zz*(zz*(zz*(zz-7)+15)-10)+1
  |z|<=bailout
}


S09-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS08-S07
  bailout=p1+4, z=pixel:
  zz=z*z
  z=z*(zz*(zz*(zz*(zz-8)+21)-20)+5)
  |z|<=bailout
}


S10-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zS09-S08
  bailout=p1+4, z=pixel:
  zz=z*z
  z=zz*(zz*(zz*(zz*(zz-9)+28)-35)+15)-1
  |z|<=bailout
}



C02-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; Chebyshev Types:
                 ; Inspired by Clifford A. Pickover:
                 ; Dynamic
                 ;
                 ; C(n+1) = xC(n)-C(n-1)
                 ; C(0)  = 2
                 ; C(1)  = x
                 ;
                 ; = zC01-C00
  bailout=p1+4, z=pixel:
  z=z*z-2
  |z|<=bailout
}


C03-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC02-C01
  bailout=p1+4, z=pixel:
  z=z*(z*z-3)
  |z|<=bailout
}


C04-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC03-C02
  bailout=p1+4, z=pixel:
  zz=z*z
  z=zz*(zz-4)+2
  |z|<=bailout
}


C05-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC04-C03
  bailout=p1+4, z=pixel:
  zz=z*z
  z=z*(zz*(zz-5)+3)
  |z|<=bailout
}


C06-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC05-C04
  bailout=p1+4, z=pixel:
  zz=z*z
  z=zz*(zz*(zz-6)+7)-2
  |z|<=bailout
}


C07-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC06-C05
  bailout=p1+4, z=pixel:
  zz=z*z
  z=z*(zz*(zz*(zz-7)+12)-5)
  |z|<=bailout
}


C08-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC07-C06
  bailout=p1+4, z=pixel:
  zz=z*z
  z=zz*(zz*(zz*(zz-8)+18)-12)+2
  |z|<=bailout
}


C09-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC08-C07
  bailout=p1+4, z=pixel:
  zz=z*z
  z=z*(zz*(zz*(zz*(zz-9)+25)-24)+7)
  |z|<=bailout
}


C10-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = zC09-C08
  bailout=p1+4, z=pixel:
  zz=z*z
  z=zz*(zz*(zz*(zz*(zz-10)+33)-42)+19)-2
  |z|<=bailout
}



P02-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; Chebyshev Types:
                 ; Inspired by Clifford A. Pickover:
                 ; Dynamic
                 ;
                 ; P(n+1) = ((2n+1)xP(n)-nP(n-1))/(n+1)
                 ; P(0)  = 1
                 ; P(1)  = x
                 ;
                 ; = (3zP01-P00)/2
  bailout=p1+4, z=pixel:
  z=(3*z*z-1)/2
  |z|<=bailout
}


P03-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (5zP02-2P01)/3
  bailout=p1+4, z=pixel:
  z=z*(5*z*z-3)/2
  |z|<=bailout
}


P04-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (7zP03-3P02)/4
  bailout=p1+4, z=pixel:
  zz=z*z
  z=(5*zz*(7*zz-6)+3)/8
  |z|<=bailout
}


P05-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (9zP04-4P03)/5
  bailout=p1+4, z=pixel:
  zz=z*z
  z=z*(7*zz*(9*zz-10)+15)/8
  |z|<=bailout
}


P06-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (11zP05-5P04)/6
  bailout=p1+4, z=pixel:
  zz=z*z
  z=(21*zz*(zz*(11*zz-15)+5)-5)/16
  |z|<=bailout
}


P07-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (13zP06-6P05)/7
  bailout=p1+4, z=pixel:
  zz=z*z
  z=z*(3*zz*(11*zz*(13*zz-21)+105)-35)/16
  |z|<=bailout
}


P08-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (15zP07-7P06)/8
  bailout=p1+4, z=pixel:
  zz=z*z
  z=(3*zz*(11*zz*(13*zz*(15*zz-28)+210)-420)+35)/128
  |z|<=bailout
}


P09-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (17zP08-8P07)/9
  bailout=p1+4, z=pixel:
  zz=z*z
  z=z*(11*zz*(13*zz*(5*zz*(17*zz-36)+126)-420)+315)/128
  |z|<=bailout
}


P10-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens        
                 ; = (19zP09-9P08)/10
  bailout=p1+4, z=pixel:
  zz=z*z
  z=(11*zz*(13*zz*(zz*(17*zz*(19*zz-45)+630)-210)+315)-63)/128
  |z|<=bailout
}



H02-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; Chebyshev Types:
                 ; Inspired by Clifford A. Pickover:
                 ; Dynamic
                 ;
                 ; H(n+1) = 2(xH(n)-nH(n-1))
                 ; H(0)  = 1
                 ; H(1)  = 2x
                 ;
                 ; = 2(xH(1)-H(0))
  bailout=p1+4, z=pixel:
  z=2*(2*z*z-1)
  |z|<=bailout
}


H03-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(2)-2H(1))
  bailout=p1+4, z=pixel:
  z=4*z*(2*z*z-3)
  |z|<=bailout
}


H04-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(3)-3H(2))
  bailout=p1+4, z=pixel:
  zz=z*z
  z=4*(4*zz*(zz-3)+3)
  |z|<=bailout
}


H05-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(4)-4H(3))
  bailout=p1+4, z=pixel:
  zz=z*z
  z=8*z*(4*zz*(zz-5)-9)
  |z|<=bailout
}


H06-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(5)-5H(4))
  bailout=p1+4, z=pixel:
  a=2*z*z
  z=8*(a*(a*(a-15)+21)-15)
  |z|<=bailout
}


H07-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(6)-6H(5))
  bailout=p1+4, z=pixel:
  a=2*z*z
  z=16*z*(a*(a*(a-21)+81)+39)
  |z|<=bailout
}


H08-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(7)-7H(6))
  bailout=p1+4, z=pixel:
  zz=z*z
  a=2*zz
  z=16*(4*zz*(a*(a*(zz-14)+93)-93)+105)
  |z|<=bailout
}


H09-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(8)-8H(7))
  bailout=p1+4, z=pixel:
  zz=z*z
  a=2*zz
  z=32*z*(4*zz*(a*(a*(zz-18)+177)-417)-207)
  |z|<=bailout
}


H10-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(xH(9)-9H(8))
  bailout=p1+4, z=pixel:
  zz=z*z
  a=2*zz
  z=32*(a*(4*zz*(a*(zz*(a-45)+303)-1254)+1467)-945)
  |z|<=bailout
}



He02-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; Chebyshev Types:
                  ; Inspired by Clifford A. Pickover:
                  ; Dynamic
                  ;
                  ; He(n+1) = xHe(n)-nHe(n-1)
                  ; He(0)  = 1
                  ; He(1)  = sqrt(2)x
                  ;
                  ; = xHe(1)-He(0)
  s=sqrt(2), bailout=p1+4, z=pixel:
  z=s*z*z-1
  |z|<=bailout
}


He03-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(2)-2He(1)
  s=sqrt(2), bailout=p1+4, z=pixel:
  z=z*(s*(z*z-2)-1)
  |z|<=bailout
}


He04-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(3)-3He(2)
  s=sqrt(2), bailout=p1+4, z=pixel:
  zz=z*z
  z=zz*(s*(zz-5)-1)+3
  |z|<=bailout
}


He05-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(4)-4He(3)
  s=sqrt(2), a=8*s+7
  bailout=p1+4, z=pixel:
  zz=z*z
  z=z*(zz*(s*(zz-9)-1)+a)
  |z|<=bailout
}


He06-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(5)-5He(4)
  s=sqrt(2), a=33*s+12
  bailout=p1+4, z=pixel:
  zz=z*z
  z=zz*(zz*(s*(zz-14)-1)+a)-15
  |z|<=bailout
}


He07-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(6)-6He(5)
  s=sqrt(2), a=87*s+18, b=8*s-57
  bailout=p1+4, z=pixel:
  zz=z*z
  z=z*(zz*(zz*(s*(zz-20)-1)+a)+b)
  |z|<=bailout
}


He08-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(7)-7He(6)
  s=sqrt(2), a=185*s+25, b=41*s-141
  bailout=p1+4, z=pixel:
  zz=z*z
  z=zz*(zz*(zz*(s*(zz-27)-1)+a)+b)+105
  |z|<=bailout
}


He09-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(8)-8He(7)
  s=sqrt(2), a=345*s+33, b=136*s-285
  bailout=p1+4, z=pixel:
  zz=z*z
  z=z*(zz*(zz*(zz*(s*(zz-35)-1)+a)+b)+561)
  |z|<=bailout
}


He10-02 (XYAxis) {; V.1.1 - earlier versions may be discarded
                  ; Copyright (c)1998,1999 Morgan L. Owens
                  ; = xHe(9)-9He(8)
  s=sqrt(2), a=588*s+42, b=321*s-510, c=41*s-1830
  bailout=p1+4, z=pixel:
  zz=z*z
  z=zz*(zz*(zz*(zz*(s*(zz-44)-1)+a)+b)+c)-945
  |z|<=bailout
}



Ca02-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic
         ;
         ; Ca(n+1) = (2(a+n)xCa(n)-(2a+n-1)Ca(n-1))/(n+1)
         ; Ca(0) = 1
         ; Ca(1) = 2ax
         ;
         ; = (a+1)xCa(1)-aCa(0)
  a=p2, b=2*(a+1)
  bailout=p1+4, z=pixel:
  z=a*(b*z*z-1)
  |z|<=bailout
}


Ca03-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)xCa(2)-(2a+1)Ca(1))/3
  a=p2, b=2*a*(a+1), c=2*(a+2)/3
  bailout=p1+4, z=pixel:
  z=b*z*(c*z*z-1)
  |z|<=bailout
}


Ca04-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)xCa(3)-(a+1)Ca(2))/2
  a=p2, b=a*(a+1)/2, c=4*(a+2), d=(a+3)/3
  bailout=p1+4, z=pixel:
  zz=z*z
  z=b*(c*zz*(d*zz-1)+1)
  |z|<=bailout
}


Ca05-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)xCa(4)-(2a+3)Ca(3))/5
  a=p2, b=a*(a*(a+3)+2)/3, c=4*(a+3), d=(a+4)/5
  bailout=p1+4, z=pixel:
  zz=z*z
  z=b*z*(c*zz*(d*zz-1)+3)
  |z|<=bailout
}


Ca06-02 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)xCa(5)-(a+2)Ca(4))/3
  a=p2, b=a*(a*(a+3)+2)/6, c=a+3, d=4*(a+4), k=2*(a+5)/15
  bailout=p1+4, z=pixel:
  zz=z*z
  z=b*(c*zz*(d*zz*(k*zz-1)+3)-1)
  |z|<=bailout
}


Ca07-02 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)xCa(6)-(2a+5)Ca(5))/7
  a=p2, b=a*(a*(a*(a+6)+11)+6)/21, c=2*(a+4)
  d=2*(a*(a+11)+30)/15, k=7*(a+5)/5
  bailout=p1+4, z=pixel:
  zz=z*z
  z=b*z*(c*zz*(2*zz*(d*zz-k)+7)-7)
  |z|<=bailout
}


Ca08-02 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)xCa(7)-(a+3)Ca(6))/4
  a=p2, b=a*(a*(a*(a+6)+11)+6)/360, c=8*(a+4)
  d=a+5, k=4*(a+6), f=(a+7)/14
  bailout=p1+4, z=pixel:
  zz=z*z
  z=b*(c*zz*(d*zz*(k*zz*(f*zz-1)+15)-15)+15)
  |z|<=bailout
}


Ca09-02 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)xCa(8)-(2a+7)Ca(7))/9
  a=p2, b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260
  c=2*(a*(a*(a+18)+107)+210), d=(a+8)/18
  k=7*(a*(9*a+94)+270)/6, f=35*(a+5)/2
  bailout=p1+4, z=pixel:
  zz=z*z
  z=b*z*(16*zz*(zz*(c*zz*(d*zz-1)+k)-f)+105)
  |z|<=bailout
}


Ca10-02 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p2, b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5), d=2*(a+6), k=a*(a+15)+56, f=2*(a+9)/45
  g=14*(2*a+13)/5
  bailout=p1+4, z=pixel:
  zz=z*z
  z=b*(c*zz*(d*zz*(81*zz*(k*zz*(f*zz-1)+g)-1418)+2127)-31903)
  |z|<=bailout
}



Tc02-02 (XAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; Chebyshev Types:
                 ; Inspired by Clifford A. Pickover:
                 ; Dynamic
                 ; 
                 ; Tc(n+1) = 2(2x-1)Tc(n)-Tc(n-1)
                 ; Tc(0) = 1
                 ; Tc(1) = 2(x+1)
                 ;
                 ; = 2(2z-1)Tc(1)-Tc(0)
  bailout=p1+4, z=pixel:
  z=4*z*(2*z+1)-5
  |z|<=bailout
}


Tc03-02 (XAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(2z-1)Tc(2)-Tc(1)
  bailout=p1+4, z=pixel:
  z=2*z*(16*z*z-15)+8
  |z|<=bailout
}


Tc04-02 (XAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(2z-1)Tc(3)-Tc(2)
  bailout=p1+4, z=pixel:
  a=8*z
  z=a*(a*(z*(2*z-1)-2)+11)-11
  |z|<=bailout
}


Tc05-02 (XAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(2z-1)Tc(4)-Tc(3)
  bailout=p1+4, z=pixel:
  a=16*z
  z=2*z*(a*(z*(a*(z-1)-13)+19)-95)+14
  |z|<=bailout
}


Tc06-02 (XAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(2z-1)Tc(5)-Tc(4)
  bailout=p1+4, z=pixel:
  a=2*z
  b=4*z
  z=b*(a*(32*z*(z*(b*(a-3)-3)+13)-231)+87)-17
  |z|<=bailout
}


Tc07-02 (XAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(2z-1)Tc(6)-Tc(5)
  bailout=p1+4, z=pixel:
  z=2*z*(32*z*(z*(8*z*(z*(16*z*(z-2)+5)+30)-213)+71)-287)+20
  |z|<=bailout
}


Tc08-02 (XAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(2z-1)Tc(7)-Tc(6)
  bailout=p1+4, z=pixel:
  a=2*z
  b=4*z
  c=16*z
  z=c*(b*(a*(c*(z*(b*(a*(a-5)+5)+29)+420+329)-149)+55)-23)
  |z|<=bailout
}


Tc09-02 (XAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(2z-1)Tc(8)-Tc(7)
  bailout=p1+4, z=pixel:
  a=8*z
  z=2*z*(32*z*(z*(a*(z*(16*z*(z*(a*(2*z-7)+59)+11)+435)-37)+1041)+282)-639)+26
  |z|<=bailout
}


Tc10-02 (XAxis) {; V.1.1 - earlier versions may be discarded
                 ; Copyright (c)1998,1999 Morgan L. Owens
                 ; = 2(2z-1)Tc(9)-Tc(8)
  bailout=p1+4, z=pixel:
  a=4*z
  b=32*z
  c=2*z
  z=a*(c*(b*(z*(a*(c*(b*(z*(8*z*(z-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29
  |z|<=bailout
}



L02-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic
        ;
        ; L(n+1) = ((2n+1-z)L(n)-nL(n-1))/(n+1)
        ; L(0)=1
        ; L(1)=(1-z)
        ;
        ; = ((3-z)L(1)-L(0))/2
  bailout=p1+4, z=pixel:
  z=z*(z/2-2)+1
  |z|<=bailout
}


L03-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  bailout=p1+4, z=pixel:
  z=z*(z*(3-z/3)/2-3)+1
  |z|<=bailout
}


L04-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  bailout=p1+4, z=pixel:
  z=z*(z*(z*(z/8-2)/3+3)-4)+1
  |z|<=bailout
}


L05-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  bailout=p1+4, z=pixel:
  z=z*(z*(z*(z*(5-z/5)/8-5)/3+5)-5)+1
  |z|<=bailout
}


L06-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  bailout=p1+4, z=pixel:
  z=z*(z*(z*(z*(z*(z/18-2)/5+5)/8-10/3)+15/2)-6)+1
  |z|<=bailout
}


L07-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  bailout=p1+4, z=pixel:
  z=z*(z*(z*(z*(z*(z*(49-z)/2-441)/5+735)/84-35)/3+21)/2-7)+1
  |z|<=bailout
}


L08-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  bailout=p1+4, z=pixel:
  z=z*(z*(z*(z*(z*(z*(z*(z/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1
  |z|<=bailout
}


L09-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  bailout=p1+4, z=pixel:
  z=z*(z*(z*(z*(z*(z*(z*(z*(81-z)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1
  |z|<=bailout
}


L10-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  bailout=p1+4, z=pixel:
  z=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1
  |z|<=bailout
}



La02-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic
         ;
         ; La(n+1) = ((a+2n+1-z)La(n)-(a+n)La(n-1))/(n+1)
         ; La(0)=1
         ; La(1)=(a+1-z)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p2, c=a+2, b=c*(a+1)/2
  bailout=p1+4, z=pixel:
  z=z*(z/2-c)+b
  |z|<=bailout
}


La03-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p2, d=(a+3)/2, c=d*(a+2), b=c*(a+1)/3
  bailout=p1+4, z=pixel:
  z=z*(z*(d-z/6)-c)+b
  |z|<=bailout
}


La04-02 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p2, k=(a+4)/6, d=k*(a+3)*(3/2), c=d*(a+2)*(2/3), b=c*(a+1)/4
  bailout=p1+4, z=pixel:
  z=z*(z*(z*(z/24-k)+d)-c)+b
  |z|<=bailout
}


La05-02 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p2, f=(a+5)/24, k=2*f*(a+4), d=k*(a+3), c=d*(a+2)/2, b=c*(a+1)/5
  bailout=p1+4, z=pixel:
  z=z*(z*(z*(z*(f-z/120)-k)+d)-c)+b
  |z|<=bailout
}


La06-02 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p2, g=(a+6)/120, f=g*(a+5)*(5/2)
  k=f*(a+4)*(4/3), d=k*(a+3)*(3/4), c=d*(a+2)*(2/5), b=c*(a+1)/6
  bailout=p1+4, z=pixel:
  z=z*(z*(z*(z*(z*(z/720-g)+f)-k)+d)-c)+b
  |z|<=bailout
}


La07-02 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p2, h=(a+7)/720, g=h*(a+6)*3, f=g*(a+5)*(5/3)
  k=f*(a+4), d=k*(a+3)*(3/5), c=d*(a+2)/3, b=c*(a+1)/7
  bailout=p1+4, z=pixel:
  z=z*(z*(z*(z*(z*(z*(h-z/5040)-g)+f)-k)+d)-c)+b
  |z|<=bailout
}


La08-02 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p2, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+6)*2
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2
  c=d*(a+2)*(2/7), b=c*(a+1)/8
  bailout=p1+4, z=pixel:
  z=z*(z*(z*(z*(z*(z*(z*(z/40320-i)+h)-g)+f)-k)+d)-c)+b
  |z|<=bailout
}


La09-02 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p2, j=(a+9)/40320, i=j*(a+8)*4, h=i*(a+7)*(7/3)
  g=h*(a+6)*(3/2), f=g*(a+5), k=f*(a+4)*(2/3), d=k*(a+3)*(3/7)
  c=d*(a+2)/4, b=c*(a+1)/9
  bailout=p1+4, z=pixel:
  z=z*(z*(z*(z*(z*(z*(z*(z/40320-i)+h)-g)+f)-k)+d)-c)+b
  |z|<=bailout
}


La10-02 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p2, k=(a+10)/362880, j=k*(a+9)*45, i=j*(a+8)*(4/15), h=i*(a+7)*(7/4)
  g=h*(a+6)*12, f=g*(a+5)/12, l=f*(a+4)*(4/7), d=l*(a+3)*(15/4)
  c=d*(a+2)/45, b=c*(a+1)/10
  bailout=p1+4, z=pixel:
  z=z*(z*(z*(z*(z*(z*(z*(z*(z*(z/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b
  |z|<=bailout
}



Uc02-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic
         ;
         ; Uc(n+1) = 2(2z-1)Uc(n)-Uc(n-1)
         ; a=4z-2
         ; Uc(0)  = 1
         ; Uc(1)  = a
         ;
         ; = 2z(2z-1)U01-U00
  bailout=p1+4, z=pixel:
  x=real(z), y=imag(z)
  a=4*z-2
  z=a*a-1
  |z|<=bailout
}


Uc03-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  bailout=p1+4, z=pixel:
  x=real(z), y=imag(z)
  a=4*z-2
  z=a*(a*a-2)
  |z|<=bailout
}


Uc04-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  bailout=p1+4, z=pixel:
  x=real(z), y=imag(z)
  a=4*z-2, aa=a*a
  z=aa*(aa-3)+1
  |z|<=bailout
}


Uc05-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  bailout=p1+4, z=pixel:
  x=real(z), y=imag(z)
  a=4*z-2, aa=a*a
  z=a*(aa*(aa-4)+3)
  |z|<=bailout
}


Uc06-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  bailout=p1+4, z=pixel:
  x=real(z), y=imag(z)
  a=4*z-2, aa=a*a
  z=aa*(aa*(aa-5)+6)-1
  |z|<=bailout
}


Uc07-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  bailout=p1+4, z=pixel:
  x=real(z), y=imag(z)
  a=4*z-2, aa=a*a
  z=a*(aa*(aa*(aa-6)+10)-4)
  |z|<=bailout
}


Uc08-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  bailout=p1+4, z=pixel:
  x=real(z), y=imag(z)
  a=4*z-2, aa=a*a
  z=aa*(aa*(aa*(aa-7)+15)-10)+1
  |z|<=bailout
}


Uc09-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  bailout=p1+4, z=pixel:
  x=real(z), y=imag(z)
  a=4*z-2, aa=a*a
  z=a*(aa*(aa*(aa*(aa-8)+21)-20)+5)
  |z|<=bailout
}


Uc10-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  bailout=p1+4, z=pixel:
  x=real(z), y=imag(z)
  a=4*z-2, aa=a*a
  z=aa*(aa*(aa*(aa*(aa-9)+36)-35)+15)-1
  |z|<=bailout
}



Pc02-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic
         ; 
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  bailout=p1+4, z=pixel:
  z=(4*z-5)*z+1
  |z|<=bailout
}


Pc03-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  bailout=p1+4, z=pixel:
  z=((8*z-50/3)*z+9)*z-1
  |z|<=bailout
}


Pc04-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  bailout=p1+4, z=pixel:
  z=(((16*z-142/3)*z+265/6)*z-14)*z+1
  |z|<=bailout
}


Pc05-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  bailout=p1+4, z=pixel:
  z=((((32*z-1852/15)*z+2507/15)*z-565/6)*z+20)*z-1
  |z|<=bailout
}


Pc06-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  bailout=p1+4, z=pixel:
  z=(((((64*z-1528/5)*z+24628/45)*z-4553/10)*z+1055/6)*z-27)*z+1
  |z|<=bailout
}


Pc07-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  bailout=p1+4, z=pixel:
  z=((((((128*z-25552/35)*z+514928/315)*z-573667/315)*z+31619/30)*z-1799/6)*z+35)*z-1
  |z|<=bailout
}


Pc08-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  bailout=p1+4, z=pixel:
  z=(((((((256*z-59504/35)*z+1443406/315)*z-289799/45)*z+2542045/504)*z-32662/15)*z+1435/3)*z-44)*z+1
  |z|<=bailout
}


Pc09-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  bailout=p1+4, z=pixel:
  z=((((((((512*z-1223392/315)*z+772508/63)*z-8458976/405)*z+26206517/1260)*z-2060215/168)*z+20664/5)*z-725)*z+54)*z-1
  |z|<=bailout
}


Pc10-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  bailout=p1+4, z=pixel:
  z=(((((((((1024*z-2753216/315)*z+2375464/75)*z-900686282/14175)*z+312488741/4050)*z-4193867/72)*z+22702079/840)*z-36713/5)*z+1055)*z-65)*z+1
  |z|<=bailout
}



O02-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Clifford A. Pickover:
        ; Dynamic
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)fn1(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  bailout=p1+4, z=pixel:
  z2=z*z
  z=(z2+4)/(z2*z)
  |z|<=bailout
}


O03-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)sin(2*pi/2)^2
  bailout=p1+4, z=pixel:
  z2=z*z
  z=(((6-3*z)*z-12)*z+24)/(z2*z2)
  |z|<=bailout
}


O04-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)sin(3*pi/2)^2
  bailout=p1+4, z=pixel:
  z2=z*z
  z=((((12*z-36)*z+72)*z-144)*z+192)/(z2*z2*z)
  |z|<=bailout
}


O05-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)sin(4*pi/2)^2
  bailout=p1+4, z=pixel:
  z2=z*z
  z=(((((180-20*z)*z-480)*z+960)*z-1760)*z+1920)/(z2*z2*z2)
  |z|<=bailout
}


O06-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)sin(5*pi/2)^2
  bailout=p1+4, z=pixel:
  z2=z*z
  z=((((((40*z-510)*z+2880)*z-7200)*z+14160)*z-24000)*z+23040)/(z2*z2*z2*z)
  |z|<=bailout
}


O07-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)sin(6*pi/2)^2
  bailout=p1+4, z=pixel:
  z2=z*z, z4=z2*z2
  z=(((((((1274-56*z)*z-11172)*z+50400)*z-120624)*z+231840)*z-368256)*z+322560)/(z4*z4)
  |z|<=bailout
}


O08-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)sin(7*pi/2)^2
  bailout=p1+4, z=pixel:
  z2=z*z, z4=z2*z2
  z=((((((((266/3*z-7784/3)*z+35280)*z-245952)*z+967232)*z-2239104)*z+4200448)*z-6322176)*z+5160960)/(z4*z4*z)
  |z|<=bailout
}


O09-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)sin(8*pi/2)^2
  bailout=p1+4, z=pixel:
  z2=z*z, z4=z2*z2
  z=(((((((((4932-114*z)*z-92064)*z+951264)*z-5670720)*z+20289024)*z-45704448)*z+83736576)*z-120434688)*z+92897280)/(z4*z4*z2)
  |z|<=bailout
}


O10-02 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)sin(9*pi/2)^2
  bailout=p1+4, z=pixel:
  z2=z*z, z4=z2*z2
  z=((((((((((321/2*z-8445)*z+213720)*z-3030360)*z+26113680)*z-138775680)*z+462911040)*z-1018759680)*z+1825274880)*z-2524815360)*z+1857945600)/(z4*z4*z2*z)
  |z|<=bailout
}



Sc02-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types:
         ; Inspired by Clifford A. Pickover:
         ; Dynamic
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  bailout=p1+4, z=pixel:
  z=2/z
  |z|<=bailout
}


Sc03-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  bailout=p1+4, z=pixel:
  z=4/(z*z)
  |z|<=bailout
}


Sc04-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  bailout=p1+4, z=pixel:
  z=(((4-2*z)*z-8)*z+16)/(z*z*z)
  |z|<=bailout
}


Sc05-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  bailout=p1+4, z=pixel:
  z2=z*z
  z=((((11/2*z-18)*z+36)*z-72)*z+96)/(z2*z2)
  |z|<=bailout
}


Sc06-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  bailout=p1+4, z=pixel:
  z2=z*z
  z=(((((72-8*z)*z-192)*z+384)*z-704)*z+768)/(z2*z2*z)
  |z|<=bailout
}


Sc07-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  bailout=p1+4, z=pixel:
  z2=z*z
  z=((((((13*z-170)*z+960)*z-2400)*z+4720)*z-8000)*z+7680)/(z2*z2*z2)
  |z|<=bailout
}


Sc08-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  bailout=p1+4, z=pixel:
  z2=z*z
  z=(((((((364-16*z)*z-3192)*z+14400)*z-34464)*z+66240)*z-105216)*z+92160)/(z2*z2*z2*z)
  |z|<=bailout
}


Sc09-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  bailout=p1+4, z=pixel:
  z2=z*z, z4=z2*z2
  z=((((((((263/12*z-1946/3)*z+8820)*z-61488)*z+241808)*z-559776)*z+1050112)*z-1580544)*z+1290240)/(z4*z4)
  |z|<=bailout
}


Sc10-02 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  bailout=p1+4, z=pixel:
  z2=z*z, z4=z2*z2
  z=(((((((((1096-76/3*z)*z-61376/3)*z+211392)*z-1260160)*z+4508672)*z-10156544)*z+18608128)*z-26763264)*z+20643840)/(z4*z4*z)
  |z|<=bailout
}



Exp02-02 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types:
          ; Inspired by Clifford A. Pickover:
          ; Dynamic
          ;
          ; Exponential Integral
          ; Exp[0] = exp(-z)/z
          ; Exp[1] = 0
          ; Exp[n+1] = (exp(-z)-zExp[n])/n
          ;
          ; = Exp[2] = (exp(-z)-zExp[1])
  bailout=p1+4, z=pixel:
  z=exp(-z)
  |z|<=bailout
}


Exp03-02 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[3] = (exp(-z)-zExp[2])/2
  bailout=p1+4, z=pixel:
  z=(1-z)/(exp(z)*2)
  |z|<=bailout
}


Exp04-02 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[4] = (exp(-z)-zExp[3])/3
  bailout=p1+4, z=pixel:
  z=((z-1)*z/6+1/3)/exp(z)
  |z|<=bailout
}


Exp05-02 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[5] = (exp(-z)-zExp[4])/4
  bailout=p1+4, z=pixel:
  z=(((1-z)*z/24-1/12)*z+1/4)/exp(z)
  |z|<=bailout
}


Exp06-02 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[6] = (exp(-z)-zExp[5])/5
  bailout=p1+4, z=pixel:
  z=((((z-1)*z/120+1/60)*z-1/20)*z+1/5)/exp(z)
  |z|<=bailout
}


Exp07-02 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[7] = (exp(-z)-zExp[6])/6
  bailout=p1+4, z=pixel:
  z=(((((1-z)*z/720-1/360)*z+1/120)*z-1/30)*z+1/6)/exp(z)
  |z|<=bailout
}


Exp08-02 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[8] = (exp(-z)-zExp[7])/7
  bailout=p1+4, z=pixel:
  z=((((((z-1)*z/5040+1/2520)*z-1/840)*z+1/210)*z-1/42)*z+1/7)/exp(z)
  |z|<=bailout
}


Exp09-02 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[9] = (exp(-z)-zExp[8])/8
  bailout=p1+4, z=pixel:
  z=(((((((1-z)*z/40320-1/20160)*z+1/6720)*z-1/1680)*z+1/336)*z-1/56)*z+1/8)/exp(z)
  |z|<=bailout
}


Exp10-02 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = Exp[10] = (exp(-z)-zExp[9])/9
  bailout=p1+4, z=pixel:
  z=((((((((z-1)*z/362880+1/181440)*z-1/60480)*z+1/15120)*z-1/3024)*z+1/504)*z-1/72)*z+1/9)/exp(z)
  |z|<=bailout
}



Alpha02-02 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types:
            ; Inspired by Clifford A. Pickover:
            ; Dynamic
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  bailout=p1+4, z=pixel:
  z=((z-2)*z+2)/(exp(z)*z*z*z)
  |z|<=bailout
}


Alpha03-02 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  bailout=p1+4, z=pixel:
  z2=z*z
  z=(((z-3)*z+6)*z-6)/(exp(z)*z2*z2)
  |z|<=bailout
}


Alpha04-02 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  bailout=p1+4, z=pixel:
  z2=z*z
  z=((((z-4)*z+12)*z-24)*z+24)/(exp(z)*z2*z2*z)
  |z|<=bailout
}


Alpha05-02 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  bailout=p1+4, z=pixel:
  z2=z*z
  z=(((((z-5)*z+20)*z-60)*z+120)*z-120)/(exp(z)*z2*z2*z2)
  |z|<=bailout
}


Alpha06-02 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  bailout=p1+4, z=pixel:
  z2=z*z
  z=((((((z-6)*z+30)*z-120)*z+360)*z-720)*z+720)/(exp(z)*z2*z2*z2*z)
  |z|<=bailout
}


Alpha07-02 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  bailout=p1+4, z=pixel:
  z2=z*z, z4=z2*z2
  z=(((((((z-7)*z+42)*z-210)*z+840)*z-2520)*z+5040)*z-5040)/(exp(z)*z4*z4)
  |z|<=bailout
}


Alpha08-02 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  bailout=p1+4, z=pixel:
  z2=z*z, z4=z2*z2
  z=((((((((z-8)*z+56)*z-336)*z+1680)*z-6720)*z+20160)*z-40320)*z+40320)/(exp(z)*z4*z4*z)
  |z|<=bailout
}


Alpha09-02 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  bailout=p1+4, z=pixel:
  z2=z*z, z4=z2*z2
  z=(((((((((z-9)*z+72)*z-504)*z+3024)*z-15120)*z+60480)*z-181440)*z+362880)*z-362880)/(exp(z)*z4*z4*z2)
  |z|<=bailout
}


Alpha10-02 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  bailout=p1+4, z=pixel:
  z2=z*z, z4=z2*z2
  z=((((((((((z-10)*z+90)*z-720)*z+5040)*z-30240)*z+151200)*z-604800)*z+1814400)*z-3628800)*z+3628800)/(exp(z)*z4*z4*z2*z)
  |z|<=bailout
}



Beta02-02 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Clifford A. Pickover:
           ; Dynamic
           ;
           ; Beta Integral
           ; Beta[0] = 2sinh(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  bailout=p1+4, z=pixel:
  ez=exp(z)
  z=((z+2)*z+(2*ez*ez-2))/(z*z*z*ez)
  |z|<=bailout
}


Beta03-02 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  bailout=p1+4, z=pixel:
  ez=exp(z)
  z2=z*z
  z=-(((z+3)*z+6)*z+(6*ez*ez-6))/(z2*z2*ez)
  |z|<=bailout
}


Beta04-02 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  bailout=p1+4, z=pixel:
  ez=exp(z)
  z2=z*z
  z=((((z+4)*z+12)*z+24)*z+(24*ez*ez-24))/(z2*z2*z*ez)
  |z|<=bailout
}


Beta05-02 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  bailout=p1+4, z=pixel:
  ez=exp(z)
  z2=z*z
  z=-(((((z+5)*z+20)*z+60)*z+120)*z+(120*ez*ez-120))/(z2*z2*z2*ez)
  |z|<=bailout
}


Beta06-02 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  bailout=p1+4, z=pixel:
  ez=exp(z)
  z2=z*z
  z=((((((z+6)*z+30)*z+120)*z+360)*z+720)*z+(720*ez*ez-720))/(z2*z2*z2*z*ez)
  |z|<=bailout
}


Beta07-02 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  bailout=p1+4, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  z=-(((((((z+7)*z+42)*z+210)*z+840)*z+2520)*z+5040)*z+(5040*ez*ez-5040))/(z4*z4*ez)
  |z|<=bailout
}


Beta08-02 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  bailout=p1+4, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  z=((((((((z+8)*z+56)*z+336)*z+1680)*z+6720)*z+20160)*z+40320)*z+(40320*ez*ez-40320))/(z4*z4*z*ez)
  |z|<=bailout
}


Beta09-02 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  bailout=p1+4, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  z=-(((((((((z+9)*z+72)*z+504)*z+3024)*z+15120)*z+60480)*z+181440)*z+362880)*z+(362880*ez*ez-362880))/(z4*z4*z2*ez)
  |z|<=bailout
}


Beta10-02 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  bailout=p1+4, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  z=((((((((((z+10)*z+90)*z+720)*z+5040)*z+30240)*z+151200)*z+604800)*z+1814400)*z+3628800)*z+(3628800*ez*ez-3628800))/(z4*z4*z2*z*ez)
  |z|<=bailout
}

