;Version 1.1
;Copyright (c)1998,1999 Morgan L. Owens
;EG-30{;V.1.1 - earlier versions may be discarded
; = Recurrence
;z=pixel*(p1==0)+p1
;r=p2,bailout=.0000001
;x0=(1,1),x1=pixel:
;Fx0=function in x0
;Fx1=function in x1
;;z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
;x2=z,x0=x1,x1=x2
;bailout<|x2|}

;
;
;comment{Chebyshev Types:
;       Inspired by Ray Parracho:
;       Regula-Falsi Mehod
;}



T02-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Ray Parracho
        ; Regula-Falsi Method
        ;
        ; Tchebychev polynomials
        ; T[0]=1
        ; T[1]=z
        ; T[n+1]=2zT[n]-T[n-1]
        ;
        ; = 2zT01-T00
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=(x0+x0)*x0-1
  Fx1=(x1+x1)*x1-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


T03-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT02-T01
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(4*x0*x0-3)
  Fx1=x1*(4*x1*x1-3)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


T04-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT03-T02
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=8*xx*(xx-1)+1
  Fx1=8*yy*(yy-1)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


T05-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT04-T03
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax=4*x0*x0, ax1=4*x1*x1
  Fx0=x0*(ax*(ax-5)+5)
  Fx1=x0*(ax1*(ax1-5)+5)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


T06-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT05-T04
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  ax=xx+xx, ax1=yy+yy
  Fx0=ax*(8*xx*(ax-3)+9)-1
  Fx1=ax1*(8*yy*(ax1-3)+9)-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


T07-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT06-T05
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=x0*(8*xx*((xx+xx)*(4*xx-7)+7)-7)
  Fx1=x1*(8*yy*((yy+yy)*(4*yy-7)+7)-7)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


T08-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT07-T06
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=32*xx*(xx*(4*xx*(xx-2)+5)-1)+1
  Fx1=32*yy*(yy*(4*yy*(yy-2)+5)-1)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


T09-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT08-T07
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  ax=4*xx, ax1=4*yy
  Fx0=x0*(8*xx*((xx+xx)*(ax*(ax-9)+27)-15)+9)
  Fx1=x1*(8*yy*((yy+yy)*(ax1*(ax1-9)+27)-15)+9)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


T10-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zT09-T08
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  ax=xx+xx, ax1=yy+yy
  bx0=8*xx, bx1=8*yy
  Fx0=ax*(bx0*(ax*(bx0*(ax-5)+35)-11)+25)-1
  Fx1=ax1*(bx1*(ax1*(bx1*(ax1-5)+35)-11)+25)-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}



U02-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Ray Parracho:
        ; Regula-Falsi Method
        ;
        ; Tchebyshev polynomials
        ; U[0]=1
        ; U[1]=2z
        ; U[n+1]=2zU[n]-U[n-1]
        ; 
        ; = 2zU01-U00
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=4*x0*x0-1
  Fx1=4*x1*x1-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


U03-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU02-U01
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=4*x0*((x0+x0)*x0-1)
  Fx1=4*x1*((x1+x1)*x1-1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


U04-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU03-U02
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax=4*x0*x0, ax1=4*x1*x1
  Fx0=ax*(ax-3)+1
  Fx1=ax1*(ax1-3)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


U05-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU04-U03
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=(x0+x0)*(16*xx*(xx-1)+3)
  Fx1=(x1+x1)*(16*yy*(yy-1)+3)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


U06-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU05-U04
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=8*xx*((xx+xx)*(4*xx-5)+3)-1
  Fx1=8*yy*((yy+yy)*(4*yy-5)+3)-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


U07-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU06-U05
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  ax=xx+xx, ax1=yy+yy
  Fx0=8*x0*(ax*(4*xx*(ax-3)+5)-1)
  Fx1=8*x1*(ax1*(4*yy*(ax1-3)+5)-1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


U08-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU07-U06
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  ax=4*xx, ax1=4*yy
  Fx0=8*xx*((xx+xx)*(ax*(ax-7)+15)-5)+1
  Fx1=8*yy*((yy+yy)*(ax1*(ax1-7)+15)-5)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


U09-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU08-U07
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  ax=16*xx, ax1=16*yy
  Fx0=(x0+x0)*(ax*(xx*(ax*(xx-2)+17)-5)-3)
  Fx1=(x1+x1)*(ax1*(yy*(ax1*(yy-2)+17)-5)-3)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


U10-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2zU09-U08
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  ax=4*xx, ax1=4*yy
  Fx0=ax*(ax*(16*xx*(xx*(ax-9)+6)-35)+7)-1
  Fx1=ax1*(ax1*(16*yy*(yy*(ax1-9)+6)-35)+7)-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}



S02-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Ray Parracho:
        ; Regula-Falsi Method
        ;
        ; S[0] = 1
        ; S[1] = z
        ; S[n+1] = zS[n]-S[n-1]
        ;
        ; = zS01-S00
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*x0-1
  Fx1=x1*x1-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


S03-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS02-S01
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*x0-2)
  Fx1=x1*(x1*x1-2)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


S04-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS03-S02
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=xx*(xx-3)+1
  Fx1=yy*(yy-3)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


S05-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS04-S03
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=x0*(xx*(xx-4)+3)
  Fx1=x1*(yy*(yy-4)+3)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


S06-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS05-S04
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=xx*(xx*(xx-5)+6)-1
  Fx1=yy*(yy*(yy-5)+6)-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


S07-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS06-S05
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=x0*(xx*(xx*(xx-6)+10)-4)
  Fx1=x1*(yy*(yy*(yy-6)+10)-4)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


S08-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS07-S06
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=xx*(xx*(xx*(xx-7)+15)-10)+1
  Fx1=yy*(yy*(yy*(yy-7)+15)-10)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


S09-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS08-S07
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=x0*(xx*(xx*(xx*(xx-8)+21)-20)+5)
  Fx1=x1*(yy*(yy*(yy*(yy-8)+21)-20)+5)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


S10-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zS09-S08
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=xx*(xx*(xx*(xx*(xx-9)+28)-35)+15)-1
  Fx1=yy*(yy*(yy*(yy*(yy-9)+28)-35)+15)-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}



C02-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Ray Parracho:
        ; Regula-Falsi Method
        ;
        ; Chebyshev polynomials
        ; C[0] = 2
        ; C[1] = z
        ; C[n+1] = zC[n]-C[n-1]
        ;
        ; = zC01-C00
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*x0-2
  Fx1=x1*x1-2
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


C03-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC02-C01
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*x0-3)
  Fx1=x1*(x1*x1-3)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


C04-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC03-C02
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=xx*(xx-4)+2
  Fx1=yy*(yy-4)+2
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


C05-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC04-C03
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=x0*(xx*(xx-5)+3)
  Fx1=x1*(yy*(yy-5)+3)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


C06-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC05-C04
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=xx*(xx*(xx-6)+7)-2
  Fx1=yy*(yy*(yy-6)+7)-2
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


C07-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC06-C05
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=x0*(xx*(xx*(xx-7)+12)-5)
  Fx1=x1*(yy*(yy*(yy-7)+12)-5)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


C08-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC07-C06
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=xx*(xx*(xx*(xx-8)+18)-12)+2
  Fx1=yy*(yy*(yy*(yy-8)+18)-12)+2
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


C09-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC08-C07
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=x0*(xx*(xx*(xx*(xx-9)+25)-24)+7)
  Fx1=x1*(yy*(yy*(yy*(yy-9)+25)-24)+7)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


C10-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = zC09-C08
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=xx*(xx*(xx*(xx*(xx-10)+33)-42)+19)-2
  Fx1=yy*(yy*(yy*(yy*(yy-10)+33)-42)+19)-2
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}



P02-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Ray Parracho:
        ; Regula-Falsi Method
        ;
        ; Lagandre polynomials
        ; P[0] = 1
        ; P[1] = z
        ; P[n+1] = ((2n+1)zP[n]-nP[n-1])/(n+1)
        ;
        ; = (3zP01-P00)/2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=(3*x0*x0-1)/2
  Fx1=(3*x1*x1-1)/2
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


P03-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = (5zP02-2P01)/3
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(5*x0*x0-3)/2
  Fx1=x1*(5*x1*x1-3)/2
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


P04-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = (7zP03-3P02)/4
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=(5*xx*(7*xx-6)+3)/8
  Fx1=(5*yy*(7*yy-6)+3)/8
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


P05-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = (9zP04-4P03)/5
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=x0*(7*xx*(9*xx-10)+15)/8
  Fx1=x1*(7*yy*(9*yy-10)+15)/8
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


P06-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = (11zP05-5P04)/6
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=(21*xx*(xx*(11*xx-15)+5)-5)/16
  Fx1=(21*yy*(yy*(11*yy-15)+5)-5)/16
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


P07-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = (13zP06-6P05)/7
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=x0*(3*xx*(11*xx*(13*xx-21)+105)-35)/16
  Fx1=x1*(3*yy*(11*yy*(13*yy-21)+105)-35)/16
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


P08-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = (15zP07-7P06)/8
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=(3*xx*(11*xx*(13*xx*(15*xx-28)+210)-420)+35)/128
  Fx1=(3*yy*(11*yy*(13*yy*(15*yy-28)+210)-420)+35)/128
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


P09-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = (17zP08-8P07)/9
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=x0*(11*xx*(13*xx*(5*xx*(17*xx-36)+126)-420)+315)/128
  Fx1=x1*(11*yy*(13*yy*(5*yy*(17*yy-36)+126)-420)+315)/128
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


P10-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = (19zP09-9P08)/10
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=(11*xx*(13*xx*(xx*(17*xx*(19*xx-45)+630)-210)+315)-63)/128
  Fx1=(11*yy*(13*yy*(yy*(17*yy*(19*yy-45)+630)-210)+315)-63)/128
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}



H02-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Ray Parracho:
        ; Regula-Falsi Method
        ;
        ; Hermite polynomials
        ; H[0] = 1
        ; H[1] = 2z
        ; H[n+1] = 2(zH[n]-nH[n-1])
        ;
        ; = 2(x0H(1)-H(0))
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=(x0+x0)*x0-1
  Fx0=Fx0+Fx0
  Fx1=(x1+x1)*x1-1
  Fx1=Fx1+Fx1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


H03-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(x0H(2)-2H(1))
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=4*x0*((x0+x0)*x0-3)
  Fx1=4*x1*((x1+x1)*x1-3)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


H04-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(x0H(3)-3H(2))
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=4*(4*xx*(xx-3)+3)
  Fx1=4*(4*yy*(yy-3)+3)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


H05-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(x0H(4)-4H(3))
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=8*x0*(4*xx*(xx-5)-9)
  Fx1=8*x1*(4*yy*(yy-5)-9)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


H06-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(x0H(5)-5H(4))
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax=(x0+x0)*x0, ax1=(x1+x1)*x1
  Fx0=8*(ax*(ax*(ax-15)+21)-15)
  Fx1=8*(ax1*(ax1*(ax1-15)+21)-15)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


H07-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(x0H(6)-6H(5))
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax=(x0+x0)*x0, ax1=(x1+x1)*x1
  Fx0=16*x0*(ax*(ax*(ax-21)+81)+39)
  Fx1=16*x1*(ax1*(ax1*(ax1-21)+81)+39)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


H08-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(x0H(7)-7H(6))
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  ax=xx+xx, ax1=yy+yy
  Fx0=16*(4*xx*(ax*(ax*(xx-14)+93)-93)+105)
  Fx1=16*(4*yy*(ax1*(ax1*(yy-14)+93)-93)+105)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


H09-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(x0H(8)-8H(7))
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  ax=xx+xx, ax1=yy+yy
  Fx0=32*x0*(4*xx*(ax*(ax*(xx-18)+177)-417)-207)
  Fx1=32*x1*(4*yy*(ax1*(ax1*(yy-18)+177)-417)-207)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


H10-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = 2(x0H(9)-9H(8))
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  ax=xx+xx, ax1=yy+yy
  Fx0=32*(ax*(4*xx*(ax*(xx*(ax-45)+303)-1254)+1467)-945)
  Fx1=32*(ax1*(4*yy*(ax1*(yy*(ax1-45)+303)-1254)+1467)-945)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}



He02-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Ray Parracho:
         ; Regula-Falsi Method
         ;
         ; Hermite polynomials
         ; He[0] = 1
         ; He[1] = sz
         ; He[n+1] = zHe[n]-nHe[n-1]
         ;
         ; = x0He(1)-He(0)
  s=sqrt(2), z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=s*x0*x0-1
  Fx1=s*x1*x1-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


He03-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = x0He(2)-2He(1)
  s=sqrt(2), z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(s*(x0*x0-2)-1)
  Fx1=x1*(s*(x1*x1-2)-1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


He04-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = x0He(3)-3He(2)
  s=sqrt(2), z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=xx*(s*(xx-5)-1)+3
  Fx1=yy*(s*(yy-5)-1)+3
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


He05-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = x0He(4)-4He(3)
  s=sqrt(2), a=8*s+7
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=x0*(xx*(s*(xx-9)-1)+a)
  Fx1=x1*(yy*(s*(yy-9)-1)+a)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


He06-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = x0He(5)-5He(4)
  s=sqrt(2), a=33*s+12
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=xx*(xx*(s*(xx-14)-1)+a)-15
  Fx1=yy*(yy*(s*(yy-14)-1)+a)-15
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


He07-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = x0He(6)-6He(5)
  s=sqrt(2), a=87*s+18, b=8*s-57
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=x0*(xx*(xx*(s*(xx-20)-1)+a)+b)
  Fx1=x1*(yy*(yy*(s*(yy-20)-1)+a)+b)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


He08-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = x0He(7)-7He(6)
  s=sqrt(2), a=185*s+25, b=41*s-141
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=xx*(xx*(xx*(s*(xx-27)-1)+a)+b)+105
  Fx1=yy*(yy*(yy*(s*(yy-27)-1)+a)+b)+105
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


He09-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = x0He(8)-8He(7)
  s=sqrt(2), a=345*s+33, b=136*s-285
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=x0*(xx*(xx*(xx*(s*(xx-35)-1)+a)+b)+561)
  Fx1=x1*(yy*(yy*(yy*(s*(yy-35)-1)+a)+b)+561)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


He10-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = x0He(9)-9He(8)
  s=sqrt(2), a=588*s+42, b=321*s-510, c=41*s-1830
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=xx*(xx*(xx*(xx*(s*(xx-44)-1)+a)+b)+c)-945
  Fx1=yy*(yy*(yy*(yy*(s*(yy-44)-1)+a)+b)+c)-945
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}



Ca02-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Ray Parracho:
         ; Regula-Falsi Method
         ;
         ; Ca[0] = 1
         ; Ca[1] = 2az
         ; Ca[n+1] = (2(a+n)zCa[n]-(2a+n-1)Ca[n-1])/(n+1)
         ;
         ; = (a+1)x0Ca(1)-aCa(0)
  a=p2, b=a+a+2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=a*(b*x0*x0-1)
  Fx1=a*(b*x1*x1-1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Ca03-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+2)x0Ca(2)-(2a+1)Ca(1))/3
  a=p2, b=(a+a)*(a+1), c=(a+a+4)/3
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=b*x0*(c*x0*x0-1)
  Fx1=b*x1*(c*x1*x1-1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Ca04-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+3)x0Ca(3)-(a+1)Ca(2))/2
  a=p2, b=a*(a+1)/2, c=4*(a+2), d=(a+3)/3
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=b*(c*xx*(d*xx-1)+1)
  Fx1=b*(c*yy*(d*yy-1)+1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Ca05-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+4)x0Ca(4)-(2a+3)Ca(3))/5
  a=p2, b=a*(a*(a+3)+2)/3, c=4*(a+3), d=(a+4)/5
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=b*x0*(c*xx*(d*xx-1)+3)
  Fx1=b*x1*(c*yy*(d*yy-1)+3)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Ca06-30 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5)x0Ca(5)-(a+2)Ca(4))/3
  a=p2, b=a*(a*(a+3)+2)/6, c=a+3, d=4*(a+4), k=(a+a+10)/15
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=b*(c*xx*(d*xx*(k*xx-1)+3)-1)
  Fx1=b*(c*yy*(d*yy*(k*yy-1)+3)-1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Ca07-30 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+6)x0Ca(6)-(2a+5)Ca(5))/7
  a=p2, b=a*(a*(a*(a+6)+11)+6)/21, c=a+a+8, d=((a+a)*(a+11)+60)/15
  k=7*(a+5)/5
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=b*x0*(c*xx*((xx+xx)*(d*xx-k)+7)-7)
  Fx1=b*x1*(c*yy*((yy+yy)*(d*yy-k)+7)-7)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Ca08-30 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7)x0Ca(7)-(a+3)Ca(6))/4
  a=p2, b=a*(a*(a*(a+6)+11)+6)/360, c=8*(a+4), d=a+5
  k=4*(a+6), f=(a+7)/14
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=b*(c*xx*(d*xx*(k*xx*(f*xx-1)+15)-15)+15)
  Fx1=b*(c*yy*(d*yy*(k*yy*(f*yy-1)+15)-15)+15)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Ca09-30 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = (2(a+8)x0Ca(8)-(2a+7)Ca(7))/9
  a=p2, b=a*(a*(a*(a*(a+10)+35)+50)+24)/1260, c=a*(a*(a+a+36)+214)+420
  d=(a+8)/18, k=7*(a*(9*a+94)+270)/6, f=35*(a+5)/2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=b*x0*(16*xx*(xx*(c*xx*(d*xx-1)+k)-f)+105)
  Fx1=b*x1*(16*yy*(yy*(c*yy*(d*yy-1)+k)-f)+105)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Ca10-30 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)x0Ca(9)-(a+4)Ca(8))/5
  a=p2, b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5), d=a+a+12, k=a*(a+15)+56, f=(a+a+18)/45
  g=14*(a+a+13)/5
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=b*(c*xx*(d*xx*(81*xx*(k*xx*(f*xx-1)+g)-1418)+2127)-31903)
  Fx1=b*(c*yy*(d*yy*(81*yy*(k*yy*(f*yy-1)+g)-1418)+2127)-31903)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}



Tc02-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Ray Parracho:
         ; Regula-Falsi Method
         ;
         ; Tc[0] = 1
         ; Tc[1] = 2z+2
         ; Tc[n+1] = 2(2z-1)Tc[n]-Tc[n-1]
         ;
         ; = 2(2z-1)Tc(1)-Tc(0)
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=4*x0*(x0+x0+1)-5
  Fx1=4*x1*(x1+x1+1)-5
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Tc03-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(2)-Tc(1)
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=(x0+x0)*(16*x0*x0-15)+8
  Fx1=(x1+x1)*(16*x1*x1-15)+8
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Tc04-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(3)-Tc(2)
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax0=8*x0, ax1=8*x1
  Fx0=ax0*(ax0*(x0*(x0+x0-1)-2)+11)-11
  Fx1=ax1*(ax1*(x1*(x1+x1-1)-2)+11)-11
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Tc05-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(4)-Tc(3)
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax0=16*x0, ax1=16*x1
  Fx0=(x0+x0)*(ax0*(x0*(ax0*(x0-1)-13)+19)-95)+14
  Fx1=(x1+x1)*(ax1*(x1*(ax1*(x1-1)-13)+19)-95)+14
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Tc06-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(5)-Tc(4)
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax0=x0+x0, ax1=x1+x1
  bx0=ax0+ax0, bx1=ax1+ax1
  Fx0=bx0*(ax0*(32*x0*(x0*(bx0*(ax0-3)-3)+13)-231)+87)-17
  Fx1=bx1*(ax1*(32*x1*(x1*(bx1*(ax1-3)-3)+13)-231)+87)-17
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Tc07-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(6)-Tc(5)
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=(x0+x0)*(32*x0*(x0*(8*x0*(x0*(16*x0*(x0-2)+5)+30)-213)+71)-287)+20
  Fx1=(x1+x1)*(32*x1*(x1*(8*x1*(x1*(16*x1*(x1-2)+5)+30)-213)+71)-287)+20
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Tc08-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(7)-Tc(6)
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax0=x0+x0, ax1=x1+x1
  bx0=ax0+ax0, bx1=ax1+ax1
  cx0=16*x0, cx1=16*x1
  Fx0=cx0*(bx0*(ax0*(cx0*(x0*(bx0*(ax0*(ax0-5)+5)+29)+420+329)-149)+55)-23)
  Fx1=cx1*(bx1*(ax1*(cx1*(x1*(bx1*(ax1*(ax1-5)+5)+29)+420+329)-149)+55)-23)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Tc09-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(8)-Tc(7)
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax0=8*x0, ax1=8*x1
  Fx0=(x0+x0)*(32*x0*(x0*(ax0*(x0*(16*x0*(x0*(ax0*(x0+x0-7)+59)+11)+435)-37)+1041)+282)-639)+26
  Fx1=(x1+x1)*(32*x1*(x1*(ax1*(x1*(16*x1*(x1*(ax1*(x1+x1-7)+59)+11)+435)-37)+1041)+282)-639)+26
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Tc10-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2(2z-1)Tc(9)-Tc(8)
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax0=4*x0, ax1=4*x1
  bx0=32*x0, bx1=32*x1
  cx0=x0+x0, cx1=x1+x1
  Fx0=ax0*(cx0*(bx0*(x0*(ax0*(cx0*(bx0*(x0*(8*x0*(x0-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29
  Fx1=ax1*(cx1*(bx1*(x1*(ax1*(cx1*(bx1*(x1*(8*x1*(x1-4)+43)-8)+327)-567)+853)-403)-3959)+445)-29
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}



L02-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Ray Parracho:
        ; Regula-Falsi Method
        ;
        ; Laguerre Polynomials
        ; L[0]=1
        ; L[1]=1-z
        ; L[n+1] = ((2n+1-z)L[n]-nL[n-1])/(n+1)
        ;
        ; = ((3-z)L(1)-L(0))/2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0/2-2)+1
  Fx1=x1*(x1/2-2)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


L03-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((5-z)L(2)-2L(1))/3
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(3-x0/3)/2-3)+1
  Fx1=x1*(x1*(3-x1/3)/2-3)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


L04-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((7-z)L(3)-3L(2))/4
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(x0*(x0/8-2)/3+3)-4)+1
  Fx1=x1*(x1*(x1*(x1/8-2)/3+3)-4)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


L05-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((9-z)L(4)-4L(3))/5
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(x0*(x0*(5-x0/5)/8-5)/3+5)-5)+1
  Fx1=x1*(x1*(x1*(x1*(5-x1/5)/8-5)/3+5)-5)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


L06-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((11-z)L(5)-5L(4))/6
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(x0*(x0*(x0*(x0/18-2)/5+5)/8-10/3)+15/2)-6)+1
  Fx1=x1*(x1*(x1*(x1*(x1*(x1/18-2)/5+5)/8-10/3)+15/2)-6)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


L07-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((13-z)L(6)-6L(5))/7
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(x0*(x0*(x0*(x0*(49-x0)/2-441)/5+735)/84-35)/3+21)/2-7)+1
  Fx1=x1*(x1*(x1*(x1*(x1*(x1*(49-x1)/2-441)/5+735)/84-35)/3+21)/2-7)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


L08-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((15-z)L(7)-7L(6))/8
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(x0*(x0*(x0*(x0*(x0*(x0/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1
  Fx1=x1*(x1*(x1*(x1*(x1*(x1*(x1*(x1/32-2)/7+7)/3-28)/5+35)/4-28)/3+14)-8)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


L09-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((17-z)L(8)-8L(7))/9
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(x0*(x0*(x0*(x0*(x0*(x0*(81-x0)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1
  Fx1=x1*(x1*(x1*(x1*(x1*(x1*(x1*(x1*(81-x1)/16-162)+2646)-23814)/5+23814)-84)+108)/17-9)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


L10-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = ((19-z)L(9)-9L(8))/10
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(x0*(x0*(x0*(x0*(x0*(x0*(x0*(x0/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1
  Fx1=x1*(x1*(x1*(x1*(x1*(x1*(x1*(x1*(x1*(x1/100-1)+405)/8-108)+1323)/2-47628)+19845)/2-22680)+27025)/1134-10)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}



La02-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Ray Parracho:
         ; Regula-Falsi Method
         ;
         ; La[0]=1
         ; La[1]=(a+1-z)
         ; La[n+1] = ((a+2n+1-z)La[n]-(a+n)La[n-1])/(n+1)
         ;
         ; = ((a+3-z)La(1)-(a+1)La(0))/2
  a=p2, c=a+2, b=c*(a+1)/2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0/2-c)+b
  Fx1=x1*(x1/2-c)+b
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


La03-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+5-z)La(2)-(a+2)La(1))/3
  a=p2, d=(a+3)/2, c=d*(a+2), b=c*(a+1)/3
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(d-x0/6)-c)+b
  Fx1=x1*(x1*(d-x1/6)-c)+b
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


La04-30 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+7-z)La(3)-(a+3)La(2))/4
  a=p2, k=(a+4)/6, d=k*(a+3)*(3/2), c=d*(a+2)*(2/3), b=c*(a+1)/4
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(x0*(x0/24-k)+d)-c)+b
  Fx1=x1*(x1*(x1*(x1/24-k)+d)-c)+b
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


La05-30 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9-z)La(4)-(a+4)La(3))/5
  a=p2, f=(a+5)/24, k=(f+f)*(a+4), d=k*(a+3), c=d*(a+2)/2, b=c*(a+1)/5
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(x0*(x0*(f-x0/120)-k)+d)-c)+b
  Fx1=x1*(x1*(x1*(x1*(f-x1/120)-k)+d)-c)+b
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


La06-30 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+11-z)La(5)-(a+5)La(4))/6
  a=p2, g=(a+6)/120, f=g*(a+5)*(5/2), k=f*(a+4)*(4/3)
  d=k*(a+3)*(3/4), c=d*(a+2)*(2/5), b=c*(a+1)/6
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(x0*(x0*(x0*(x0/720-g)+f)-k)+d)-c)+b
  Fx1=x1*(x1*(x1*(x1*(x1*(x1/720-g)+f)-k)+d)-c)+b
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


La07-30 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+13-z)La(6)-(a+6)La(5))/7
  a=p2, h=(a+7)/720, g=h*(a+6)*3, f=g*(a+5)*(5/3)
  k=f*(a+4), d=k*(a+3)*(3/5), c=d*(a+2)/3, b=c*(a+1)/7
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(x0*(x0*(x0*(x0*(h-x0/5040)-g)+f)-k)+d)-c)+b
  Fx1=x1*(x1*(x1*(x1*(x1*(x1*(h-x1/5040)-g)+f)-k)+d)-c)+b
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


La08-30 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+15-z)La(7)-(a+7)La(6))/8
  a=p2, i=(a+8)/5040, h=i*(a+7)*(7/2), g=h*(a+6)*2
  f=g*(a+5)*(5/4), k=f*(a+4)*(4/5), d=k*(a+3)/2, c=d*(a+2)*(2/7)
  b=c*(a+1)/8
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(x0*(x0*(x0*(x0*(x0*(x0/40320-i)+h)-g)+f)-k)+d)-c)+b
  Fx1=x1*(x1*(x1*(x1*(x1*(x1*(x1*(x1/40320-i)+h)-g)+f)-k)+d)-c)+b
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


La09-30 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+17-z)La(8)-(a+8)La(7))/9
  a=p2, j=(a+9)/40320, i=j*(a+8)*4, h=i*(a+7)*(7/3)
  g=h*(a+6)*(3/2), f=g*(a+5), k=f*(a+4)*(2/3), d=k*(a+3)*(3/7)
  c=d*(a+2)/4, b=c*(a+1)/9
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(x0*(x0*(x0*(x0*(x0*(x0/40320-i)+h)-g)+f)-k)+d)-c)+b
  Fx1=x1*(x1*(x1*(x1*(x1*(x1*(x1*(x1/40320-i)+h)-g)+f)-k)+d)-c)+b
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


La10-30 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+19-z)La(9)-(a+9)La(8))/10
  a=p2, k=(a+10)/362880, j=k*(a+9)*45, i=j*(a+8)*(4/15)
  h=i*(a+7)*(7/4), g=h*(a+6)*12, f=g*(a+5)/12, l=f*(a+4)*(4/7)
  d=l*(a+3)*(15/4), c=d*(a+2)/45, b=c*(a+1)/10
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=x0*(x0*(x0*(x0*(x0*(x0*(x0*(x0*(x0*(x0/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b
  Fx1=x1*(x1*(x1*(x1*(x1*(x1*(x1*(x1*(x1*(x1/3628800-k)+j)-i)+h)-g)+f)-l)+d)-c)+b
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}



Uc02-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Ray Parracho:
         ; Regula-Falsi Method
         ;
         ; Uc[0] = 1
         ; Uc[1] = a
         ; Uc[n+1] = 2(2z-1)Uc[n]-Uc[n-1]
         ;
         ; = 2z(2z-1)U01-U00
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax0=4*x0-2, ax1=4*x1-2
  Fx0=ax0*ax0-1
  Fx1=ax1*ax1-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Uc03-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U02-U01
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax0=4*x0-2, ax1=4*x1-2
  Fx0=ax0*(ax0*ax0-2)
  Fx1=ax1*(ax1*ax1-2)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Uc04-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U03-U02
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax0=4*x0-2, ax1=4*x1-2
  aax0=ax0*ax0, aax1=ax1*ax1
  Fx0=aax0*(aax0-3)+1
  Fx1=aax1*(aax1-3)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Uc05-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U04-U03
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax0=4*x0-2, ax1=4*x1-2
  aax0=ax0*ax0, aax1=ax1*ax1
  Fx0=ax0*(aax0*(aax0-4)+3)
  Fx1=ax1*(aax1*(aax1-4)+3)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Uc06-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U05-U04
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax0=4*x0-2, ax1=4*x1-2
  aax0=ax0*ax0, aax1=ax1*ax1
  Fx0=aax0*(aax0*(aax0-5)+6)-1
  Fx1=aax1*(aax1*(aax1-5)+6)-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Uc07-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U06-U05
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax0=4*x0-2, ax1=4*x1-2
  aax0=ax0*ax0, aax1=ax1*ax1
  Fx0=ax0*(aax0*(aax0*(aax0-6)+10)-4)
  Fx1=ax1*(aax1*(aax1*(aax1-6)+10)-4)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Uc08-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U07-U06
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax0=4*x0-2, ax1=4*x1-2
  aax0=ax0*ax0, aax1=ax1*ax1
  Fx0=aax0*(aax0*(aax0*(aax0-7)+15)-10)+1
  Fx1=aax1*(aax1*(aax1*(aax1-7)+15)-10)+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Uc09-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U08-U07
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax0=4*x0-2, ax1=4*x1-2
  aax0=ax0*ax0, aax1=ax1*ax1
  Fx0=ax0*(aax0*(aax0*(aax0*(aax0-8)+21)-20)+5)
  Fx1=ax1*(aax1*(aax1*(aax1*(aax1-8)+21)-20)+5)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Uc10-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = 2z(2z-1)U09-U08
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ax0=4*x0-2, ax1=4*x1-2
  aax0=ax0*ax0, aax1=ax1*ax1
  Fx0=aax0*(aax0*(aax0*(aax0*(aax0-9)+36)-35)+15)-1
  Fx1=aax1*(aax1*(aax1*(aax1*(aax1-9)+36)-35)+15)-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}



Pc02-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Ray Parracho:
         ; Regula-Falsi Method
         ;
         ; Pc[0] = 1
         ; Pc[1] = 2z-1
         ; Pc[n+1] = ((2((n+1)z-n)-1)Pc[n]-nPc[n-1])/(n+1)
         ;
         ; = Pc[2] = ((2(2z-1)-1)Pc[1]-Pc[0])/2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=(4*x0-5)*x0+1
  Fx1=(4*x1-5)*x1+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Pc03-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[3] = ((2(3z-2)-1)Pc[2]-2Pc[1])/3
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=((8*x0-50/3)*x0+9)*x0-1
  Fx1=((8*x1-50/3)*x1+9)*x1-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Pc04-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[4] = ((2(4z-3)-1)Pc[3]-3Pc[2])/4
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=(((16*x0-142/3)*x0+265/6)*x0-14)*x0+1
  Fx1=(((16*x1-142/3)*x1+265/6)*x1-14)*x1+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Pc05-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[5] = ((2(5z-4)-1)Pc[4]-4Pc[3])/5
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=((((32*x0-1852/15)*x0+2507/15)*x0-565/6)*x0+20)*x0-1
  Fx1=((((32*x1-1852/15)*x1+2507/15)*x1-565/6)*x1+20)*x1-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Pc06-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[6] = ((2(6z-5)-1)Pc[5]-5Pc[4])/6
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=(((((64*x0-1528/5)*x0+24628/45)*x0-4553/10)*x0+1055/6)*x0-27)*x0+1
  Fx1=(((((64*x1-1528/5)*x1+24628/45)*x1-4553/10)*x1+1055/6)*x1-27)*x1+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Pc07-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[7] = ((2(7z-6)-1)Pc[6]-6Pc[5])/7
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=((((((128*x0-25552/35)*x0+514928/315)*x0-573667/315)*x0+31619/30)*x0-1799/6)*x0+35)*x0-1
  Fx1=((((((128*x1-25552/35)*x1+514928/315)*x1-573667/315)*x1+31619/30)*x1-1799/6)*x1+35)*x1-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Pc08-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[8] = ((2(8z-7)-1)Pc[7]-7Pc[6])/8
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=(((((((256*x0-59504/35)*x0+1443406/315)*x0-289799/45)*x0+2542045/504)*x0-32662/15)*x0+1435/3)*x0-44)*x0+1
  Fx1=(((((((256*x1-59504/35)*x1+1443406/315)*x1-289799/45)*x1+2542045/504)*x1-32662/15)*x1+1435/3)*x1-44)*x1+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Pc09-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[9] = ((2(9z-8)-1)Pc[8]-8Pc[7])/9
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=((((((((512*x0-1223392/315)*x0+772508/63)*x0-8458976/405)*x0+26206517/1260)*x0-2060215/168)*x0+20664/5)*x0-725)*x0+54)*x0-1
  Fx1=((((((((512*x1-1223392/315)*x1+772508/63)*x1-8458976/405)*x1+26206517/1260)*x1-2060215/168)*x1+20664/5)*x1-725)*x1+54)*x1-1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Pc10-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Pc[10] = ((2(10z-9)-1)Pc[9]-9Pc[8])/10
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=(((((((((1024*x0-2753216/315)*x0+2375464/75)*x0-900686282/14175)*x0+312488741/4050)*x0-4193867/72)*x0+22702079/840)*x0-36713/5)*x0+1055)*x0-65)*x0+1
  Fx1=(((((((((1024*x1-2753216/315)*x1+2375464/75)*x1-900686282/14175)*x1+312488741/4050)*x1-4193867/72)*x1+22702079/840)*x1-36713/5)*x1+1055)*x1-65)*x1+1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}



O02-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types
        ; Inspired by Ray Parracho:
        ; Regula-Falsi Method
        ;
        ; Neumann Polynomials
        ; O[0] = 1/z
        ; O[1] = 1/zz
        ; O[2] = (4/zz+1)/z
        ; O[n+1] = 2(n+1)O[n]/z-((n+1)/(n-1))O[n-1]+(2n/z)fn1(n*pi/2)^2
        ;
        ; = O[2] = (4/zz+1)/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=(xx+4)/(xx*x0)
  Fx1=(yy+4)/(yy*x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


O03-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[3] = 6O[2]/z-3O[1]+(4/z)sin(2*pi/2)^2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=(((6-3*x0)*x0-12)*x0+24)/(xx*xx)
  Fx1=(((6-3*x1)*x1-12)*x1+24)/(yy*yy)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


O04-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[4] = 8O[3]/z-2O[2]+(6/z)sin(3*pi/2)^2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=((((12*x0-36)*x0+72)*x0-144)*x0+192)/(xx*xx*x0)
  Fx1=((((12*x1-36)*x1+72)*x1-144)*x1+192)/(yy*yy*x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


O05-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[5] = 10O[4]/z-(5/3)O[3]+(8/z)sin(4*pi/2)^2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=(((((180-20*x0)*x0-480)*x0+960)*x0-1760)*x0+1920)/(xx*xx*xx)
  Fx1=(((((180-20*x1)*x1-480)*x1+960)*x1-1760)*x1+1920)/(yy*yy*yy)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


O06-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[6] = 12O[5]/z-(3/2)O[4]+(10/z)sin(5*pi/2)^2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=((((((40*x0-510)*x0+2880)*x0-7200)*x0+14160)*x0-24000)*x0+23040)/(xx*xx*xx*x0)
  Fx1=((((((40*x1-510)*x1+2880)*x1-7200)*x1+14160)*x1-24000)*x1+23040)/(yy*yy*yy*x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


O07-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[7] = 14O[6]/z-(7/5)O[5]+(12/z)sin(6*pi/2)^2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1, x4=xx*xx, y4=yy*yy
  Fx0=(((((((1274-56*x0)*x0-11172)*x0+50400)*x0-120624)*x0+231840)*x0-368256)*x0+322560)/(x4*x4)
  Fx1=(((((((1274-56*x1)*x1-11172)*x1+50400)*x1-120624)*x1+231840)*x1-368256)*x1+322560)/(y4*y4)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


O08-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[8] = 16O[7]/z-(4/3)O[6]+(14/z)sin(7*pi/2)^2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1, x4=xx*xx, y4=yy*yy
  Fx0=((((((((266/3*x0-7784/3)*x0+35280)*x0-245952)*x0+967232)*x0-2239104)*x0+4200448)*x0-6322176)*x0+5160960)/(x4*x4*x0)
  Fx1=((((((((266/3*x1-7784/3)*x1+35280)*x1-245952)*x1+967232)*x1-2239104)*x1+4200448)*x1-6322176)*x1+5160960)/(y4*y4*x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


O09-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[9] = 18O[8]/z-(9/7)O[7]+(16/z)sin(8*pi/2)^2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1, x4=xx*xx, y4=yy*yy
  Fx0=(((((((((4932-114*x0)*x0-92064)*x0+951264)*x0-5670720)*x0+20289024)*x0-45704448)*x0+83736576)*x0-120434688)*x0+92897280)/(x4*x4*xx)
  Fx1=(((((((((4932-114*x1)*x1-92064)*x1+951264)*x1-5670720)*x1+20289024)*x1-45704448)*x1+83736576)*x1-120434688)*x1+92897280)/(y4*y4*yy)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


O10-30 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; = O[10] = 20O[9]/z-(5/4)O[8]+(18/z)sin(9*pi/2)^2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1, x4=xx*xx, y4=yy*yy
  Fx0=((((((((((321/2*x0-8445)*x0+213720)*x0-3030360)*x0+26113680)*x0-138775680)*x0+462911040)*x0-1018759680)*x0+1825274880)*x0-2524815360)*x0+1857945600)/(x4*x4*xx*x0)
  Fx1=((((((((((321/2*x1-8445)*x1+213720)*x1-3030360)*x1+26113680)*x1-138775680)*x1+462911040)*x1-1018759680)*x1+1825274880)*x1-2524815360)*x1+1857945600)/(y4*y4*yy*x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}



Sc02-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; Chebyshev Types
         ; Inspired by Ray Parracho:
         ; Regula-Falsi Method
         ;
         ; Schlafi Polynomials
         ; Sc[0] = 0
         ; Sc[1] = 0
         ; Sc[n+1] = 2(zO[n]-cos(n*pi/2)^2)/n
         ;
         ; = Sc[2]=2(zO[1]-cos(pi/2)^2)
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=2/x0
  Fx1=2/x1
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Sc03-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[3]=2(zO[2]-cos(2*pi/2)^2)/2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=4/(x0*x0)
  Fx1=4/(x1*x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Sc04-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[4]=2(zO[3]-cos(3*pi/2)^2)/3
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=(((4-2*x0)*x0-8)*x0+16)/(x0*x0*x0)
  Fx1=(((4-2*x1)*x1-8)*x1+16)/(x1*x1*x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Sc05-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[5]=2(zO[4]-cos(4*pi/2)^2)/4
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=((((11/2*x0-18)*x0+36)*x0-72)*x0+96)/(xx*xx)
  Fx1=((((11/2*x1-18)*x1+36)*x1-72)*x1+96)/(yy*yy)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Sc06-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[6]=2(zO[5]-cos(5*pi/2)^2)/5
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=(((((72-8*x0)*x0-192)*x0+384)*x0-704)*x0+768)/(xx*xx*x0)
  Fx1=(((((72-8*x1)*x1-192)*x1+384)*x1-704)*x1+768)/(yy*yy*x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Sc07-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[7]=2(zO[6]-cos(6*pi/2)^2)/6
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=((((((13*x0-170)*x0+960)*x0-2400)*x0+4720)*x0-8000)*x0+7680)/(xx*xx*xx)
  Fx1=((((((13*x1-170)*x1+960)*x1-2400)*x1+4720)*x1-8000)*x1+7680)/(yy*yy*yy)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Sc08-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[8]=2(zO[7]-cos(7*pi/2)^2)/7
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=(((((((364-16*x0)*x0-3192)*x0+14400)*x0-34464)*x0+66240)*x0-105216)*x0+92160)/(xx*xx*xx*x0)
  Fx1=(((((((364-16*x1)*x1-3192)*x1+14400)*x1-34464)*x1+66240)*x1-105216)*x1+92160)/(yy*yy*yy*x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Sc09-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[9]=2(zO[8]-cos(8*pi/2)^2)/8
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1, x4=xx*xx, y4=yy*yy
  Fx0=((((((((263/12*x0-1946/3)*x0+8820)*x0-61488)*x0+241808)*x0-559776)*x0+1050112)*x0-1580544)*x0+1290240)/(x4*x4)
  Fx1=((((((((263/12*x1-1946/3)*x1+8820)*x1-61488)*x1+241808)*x1-559776)*x1+1050112)*x1-1580544)*x1+1290240)/(y4*y4)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Sc10-30 {; V.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = Sc[10]=2(zO[9]-cos(9*pi/2)^2)/9
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1, x4=xx*xx, y4=yy*yy
  Fx0=(((((((((1096-76/3*x0)*x0-61376/3)*x0+211392)*x0-1260160)*x0+4508672)*x0-10156544)*x0+18608128)*x0-26763264)*x0+20643840)/(x4*x4*x0)
  Fx1=(((((((((1096-76/3*x1)*x1-61376/3)*x1+211392)*x1-1260160)*x1+4508672)*x1-10156544)*x1+18608128)*x1-26763264)*x1+20643840)/(y4*y4*x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}



Exp02-30 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; Chebyshev Types
          ; Inspired by Ray Parracho:
          ; Regula-Falsi Method
          ;
          ; exponential Integral
          ; exp[0] = exp(-z)/z
          ; exp[1] = 0
          ; exp[n+1] = (exp(-z)-zexp[n])/n
          ;
          ; = exp[2] = (exp(-z)-zexp[1])
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=exp(-x0)
  Fx1=exp(-x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Exp03-30 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = exp[3] = (exp(-z)-zexp[2])/2
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=(1-x0)/(exp(x0)*2)
  Fx1=(1-x1)/(exp(x1)*2)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Exp04-30 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = exp[4] = (exp(-z)-zexp[3])/3
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=((x0-1)*x0/6+1/3)/exp(x0)
  Fx1=((x1-1)*x1/6+1/3)/exp(x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Exp05-30 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = exp[5] = (exp(-z)-zexp[4])/4
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=(((1-x0)*x0/24-1/12)*x0+1/4)/exp(x0)
  Fx1=(((1-x1)*x1/24-1/12)*x1+1/4)/exp(x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Exp06-30 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = exp[6] = (exp(-z)-zexp[5])/5
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=((((x0-1)*x0/120+1/60)*x0-1/20)*x0+1/5)/exp(x0)
  Fx1=((((x1-1)*x1/120+1/60)*x1-1/20)*x1+1/5)/exp(x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Exp07-30 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = exp[7] = (exp(-z)-zexp[6])/6
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=(((((1-x0)*x0/720-1/360)*x0+1/120)*x0-1/30)*x0+1/6)/exp(x0)
  Fx1=(((((1-x1)*x1/720-1/360)*x1+1/120)*x1-1/30)*x1+1/6)/exp(x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Exp08-30 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = exp[8] = (exp(-z)-zexp[7])/7
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=((((((x0-1)*x0/5040+1/2520)*x0-1/840)*x0+1/210)*x0-1/42)*x0+1/7)/exp(x0)
  Fx1=((((((x1-1)*x1/5040+1/2520)*x1-1/840)*x1+1/210)*x1-1/42)*x1+1/7)/exp(x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Exp09-30 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = exp[9] = (exp(-z)-zexp[8])/8
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=(((((((1-x0)*x0/40320-1/20160)*x0+1/6720)*x0-1/1680)*x0+1/336)*x0-1/56)*x0+1/8)/exp(x0)
  Fx1=(((((((1-x1)*x1/40320-1/20160)*x1+1/6720)*x1-1/1680)*x1+1/336)*x1-1/56)*x1+1/8)/exp(x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Exp10-30 {; V.1.1 - earlier versions may be discarded
          ; Copyright (c)1998,1999 Morgan L. Owens
          ; = exp[10] = (exp(-z)-zexp[9])/9
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=((((((((x0-1)*x0/362880+1/181440)*x0-1/60480)*x0+1/15120)*x0-1/3024)*x0+1/504)*x0-1/72)*x0+1/9)/exp(x0)
  Fx1=((((((((x1-1)*x1/362880+1/181440)*x1-1/60480)*x1+1/15120)*x1-1/3024)*x1+1/504)*x1-1/72)*x1+1/9)/exp(x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}



Alpha02-30 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; Chebyshev Types
            ; Inspired by Ray Parracho:
            ; Regula-Falsi Method
            ;
            ; Alpha Integral
            ; Alpha[0] = exp(-z)/z
            ; Alpha[1] = exp(-z)(1-1/z)/z
            ; Alpha[n+1] = (exp(-z)-(n+1)Alpha[n])/z
            ;
            ; = Alpha[2] = (exp(-z)-2Alpha[1])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  Fx0=((x0-2)*x0+2)/(exp(x0)*x0*x0*x0)
  Fx1=((x1-2)*x1+2)/(exp(x1)*x1*x1*x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Alpha03-30 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[3] = (exp(-z)-3Alpha[2])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=(((x0-3)*x0+6)*x0-6)/(exp(x0)*xx*xx)
  Fx1=(((x1-3)*x1+6)*x1-6)/(exp(x1)*yy*yy)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Alpha04-30 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[4] = (exp(-z)-4Alpha[3])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=((((x0-4)*x0+12)*x0-24)*x0+24)/(exp(x0)*xx*xx*x0)
  Fx1=((((x1-4)*x1+12)*x1-24)*x1+24)/(exp(x1)*yy*yy*x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Alpha05-30 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[5] = (exp(-z)-5Alpha[4])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=(((((x0-5)*x0+20)*x0-60)*x0+120)*x0-120)/(exp(x0)*xx*xx*xx)
  Fx1=(((((x1-5)*x1+20)*x1-60)*x1+120)*x1-120)/(exp(x1)*yy*yy*yy)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Alpha06-30 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[6] = (exp(-z)-6Alpha[5])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=((((((x0-6)*x0+30)*x0-120)*x0+360)*x0-720)*x0+720)/(exp(x0)*xx*xx*xx*x0)
  Fx1=((((((x1-6)*x1+30)*x1-120)*x1+360)*x1-720)*x1+720)/(exp(x1)*yy*yy*yy*x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Alpha07-30 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[7] = (exp(-z)-7Alpha[6])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1, x4=xx*xx, y4=yy*yy
  Fx0=(((((((x0-7)*x0+42)*x0-210)*x0+840)*x0-2520)*x0+5040)*x0-5040)/(exp(x0)*x4*x4)
  Fx1=(((((((x1-7)*x1+42)*x1-210)*x1+840)*x1-2520)*x1+5040)*x1-5040)/(exp(x1)*y4*y4)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Alpha08-30 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[8] = (exp(-z)-8Alpha[7])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=((((((((x0-8)*x0+56)*x0-336)*x0+1680)*x0-6720)*x0+20160)*x0-40320)*x0+40320)/(exp(x0)*x4*x4*x0)
  Fx1=((((((((x1-8)*x1+56)*x1-336)*x1+1680)*x1-6720)*x1+20160)*x1-40320)*x1+40320)/(exp(x1)*y4*y4*x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Alpha09-30 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[9] = (exp(-z)-9Alpha[8])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=(((((((((x0-9)*x0+72)*x0-504)*x0+3024)*x0-15120)*x0+60480)*x0-181440)*x0+362880)*x0-362880)/(exp(x0)*x4*x4*xx)
  Fx1=(((((((((x1-9)*x1+72)*x1-504)*x1+3024)*x1-15120)*x1+60480)*x1-181440)*x1+362880)*x1-362880)/(exp(x1)*y4*y4*yy)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Alpha10-30 {; V.1.1 - earlier versions may be discarded
            ; Copyright (c)1998,1999 Morgan L. Owens
            ; = Alpha[10] = (exp(-z)-10Alpha[9])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  xx=x0*x0, yy=x1*x1
  Fx0=((((((((((x0-10)*x0+90)*x0-720)*x0+5040)*x0-30240)*x0+151200)*x0-604800)*x0+1814400)*x0-3628800)*x0+3628800)/(exp(x0)*x4*x4*xx*x0)
  Fx1=((((((((((x1-10)*x1+90)*x1-720)*x1+5040)*x1-30240)*x1+151200)*x1-604800)*x1+1814400)*x1-3628800)*x1+3628800)/(exp(x1)*y4*y4*yy*x1)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}



Beta02-30 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types
           ; Inspired by Ray Parracho:
           ; Regula-Falsi Method
           ;
           ; Beta Integral
           ; Beta[0] = 2sinh(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ex=exp(x0), ey=exp(x1)
  Fx0=((x0+2)*x0+(2*ex*ex-2))/(x0*x0*x0*ex)
  Fx1=((x1+2)*x1+(2*ey*ey-2))/(x1*x1*x1*ey)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Beta03-30 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ex=exp(x0), ey=exp(x1)
  xx=x0*x0, yy=x1*x1
  Fx0=-(((x0+3)*x0+6)*x0+(6*ex*ex-6))/(xx*yy*ex)
  Fx1=-(((x1+3)*x1+6)*x1+(6*ey*ey-6))/(yy*yy*ey)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Beta04-30 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ex=exp(x0), ey=exp(x1)
  xx=x0*x0, yy=x1*x1
  Fx0=((((x0+4)*x0+12)*x0+24)*x0+(24*ex*ex-24))/(xx*xx*x0*ex)
  Fx1=((((x1+4)*x1+12)*x1+24)*x1+(24*ey*ey-24))/(yy*yy*x1*ey)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Beta05-30 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ex=exp(x0), ey=exp(x1)
  xx=x0*x0, yy=x1*x1
  Fx0=-(((((x0+5)*x0+20)*x0+60)*x0+120)*x0+(120*ex*ex-120))/(xx*xx*xx*ex)
  Fx1=-(((((x1+5)*x1+20)*x1+60)*x1+120)*x1+(120*ey*ey-120))/(yy*yy*yy*ey)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Beta06-30 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ex=exp(x0), ey=exp(x1)
  xx=x0*x0, yy=x1*x1
  Fx0=((((((x0+6)*x0+30)*x0+120)*x0+360)*x0+720)*x0+(720*ex*ex-720))/(xx*xx*xx*x0*ex)
  Fx1=((((((x1+6)*x1+30)*x1+120)*x1+360)*x1+720)*x1+(720*ey*ey-720))/(yy*yy*yy*x1*ey)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Beta07-30 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ex=exp(x0), ey=exp(x1)
  xx=x0*x0, yy=x1*x1, x4=xx*xx, y4=yy*yy
  Fx0=-(((((((x0+7)*x0+42)*x0+210)*x0+840)*x0+2520)*x0+5040)*x0+(5040*ex*ex-5040))/(x4*x4*ex)
  Fx1=-(((((((x1+7)*x1+42)*x1+210)*x1+840)*x1+2520)*x1+5040)*x1+(5040*ey*ey-5040))/(y4*y4*ey)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Beta08-30 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ex=exp(x0), ey=exp(x1)
  xx=x0*x0, yy=x1*x1, x4=xx*xx, y4=yy*yy
  Fx0=((((((((x0+8)*x0+56)*x0+336)*x0+1680)*x0+6720)*x0+20160)*x0+40320)*x0+(40320*ex*ex-40320))/(x4*x4*x0*ex)
  Fx1=((((((((x1+8)*x1+56)*x1+336)*x1+1680)*x1+6720)*x1+20160)*x1+40320)*x1+(40320*ey*ey-40320))/(y4*y4*x1*ey)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Beta09-30 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ex=exp(x0), ey=exp(x1)
  xx=x0*x0, yy=x1*x1, x4=xx*xx, y4=yy*yy
  Fx0=-(((((((((x0+9)*x0+72)*x0+504)*x0+3024)*x0+15120)*x0+60480)*x0+181440)*x0+362880)*x0+(362880*ex*ex-362880))/(x4*x4*xx*ex)
  Fx1=-(((((((((x1+9)*x1+72)*x1+504)*x1+3024)*x1+15120)*x1+60480)*x1+181440)*x1+362880)*x1+(362880*ey*ey-362880))/(y4*y4*yy*ey)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}


Beta10-30 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ex=exp(x0), ey=exp(x1)
  xx=x0*x0, yy=x1*x1, x4=xx*xx, y4=yy*yy
  Fx0=((((((((((x0+10)*x0+90)*x0+720)*x0+5040)*x0+30240)*x0+151200)*x0+604800)*x0+1814400)*x0+3628800)*x0+(3628800*ex*ex-3628800))/(x4*x4*xx*x0*ex)
  Fx1=((((((((((x1+10)*x1+90)*x1+720)*x1+5040)*x1+30240)*x1+151200)*x1+604800)*x1+1814400)*x1+3628800)*x1+(3628800*ey*ey-3628800))/(y4*y4*yy*x1*ey)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
}

