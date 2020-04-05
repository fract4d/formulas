

--MandelPMnew {; Jim Muth
  z=p2+10^(-100)
  c=pixel+(p3)
  a=real(p1)+1, b=imag(p1):
  z=a*(z^b-(-z)^b)+c
  |z| <= 250
  ;SOURCE: 98msg.frm
}


-b009 {
  z=fn1(fn2(1/pixel)), c=fn2(fn1(pixel)), c1=z/c^c/z:
  z=z/c1
  z=fn3(z-(z^c1))/(c*c-pixel)
  |z|<=4
  ;SOURCE: new.frm
}


-c006 {; Revised by George Martin for Fractint v. 20
       ; Original used an undefined variable "imag"
  z=pixel, c1=(fn3(1/z+1)^fn4(1))/2:
  z=(fn1(z^22)+fn2(z^7))^c1
  |z|<=4
  ;SOURCE: new.frm
}


-EllipPMnew {; Jim Muth
  z=flip(imag(pixel))+p2
  c=real(pixel)+p3
  a=real(p1), b=imag(p1):
  z=a*((-z)^b+z^b)+c
  |z| <= 250
  ;SOURCE: 98msg.frm
}


-MandelPMnew {; Jim Muth
  z=p2+10^(-100)
  c=pixel+(p3)
  a=real(p1), b=imag(p1):
  z=a*((-z)^b+z^b)+c
  |z| <= 250
  ;SOURCE: 98msg.frm
}


-RectPMnew {; Jim Muth
  z=flip(real(pixel))+p2
  c=flip(imag(pixel))+p3
  a=real(p1), b=imag(p1):
  z=a*((-z)^b+z^b)+c
  |z| <= 250
  ;SOURCE: 98msg.frm
}


=00 {; Revised 4/27/96 to eliminate superfluous "+c"
     ; Original version of this formula may be discarded
  z=pixel, x=fn3(pixel)/3.14189
  y=fn4(pixel)^3.14189
  a=(z^22)/x, b=(z^7)/y:
  z=(fn1(a^b))+(fn2(b^a+b))
  |z|<=4
  ;SOURCE: new.frm
}


=01 {; Revised 4/27/96 to eliminate superfluous "+c"
     ; Original version of this formula may be discarded
  z=pixel, x=fn3(pixel)
  y=fn4(pixel)^3.14189
  a=(z^22)+x, b=(z^7)+y:
  z=(fn1(a^b))+(fn2(b^a+b)) 
  |z|<=4
  ;SOURCE: new.frm
}


=03 { 
  z=c=pixel
  x=fn1(z-1/p1)
  y=fn2(x^(z)/p2):
  z=fn4(x-z)+fn3(y+(z-1))+c
  |z|<4
  ;SOURCE: new.frm
}


=05 {; Revised 4/27/96 to eliminate superfluous "+c"
     ; Original version of this formula may be discarded
  z=pixel
  x=fn1(tan(z))+pixel
  y=fn2(cotan(z))+(pixel^pixel)
  l=(x^y)^22:
  z=fn1(x)*fn2(y)*fn3(l) 
  |z|<4
  ;SOURCE: new.frm
}


_AA1 {; generalized _AA0
; Q1 = P1 IF P1 <> 0  ELSE  Q1 = PIXEL,   Q1R = REAL(Q1),   Q1I = IMAG(Q1)
; Q2 = P2 IF P2 <> 0  ELSE  Q2 = PIXEL,   Q2R = REAL(Q2),   Q2I = IMAG(Q2)
; R1R = 8^ABS(Q1R) = BAILOUT,   S1R = 1 IF Q1R >0 ELSE S1R = -1
; Z0 = PIXEL   :
;   Z = Q1I*FN1(FN2(Q2R*Z))+FN3(FN4(Q2I*Z))
;   Q2R = Q2R*S1R      q1r<0 -> q2r alternates sign
;   |Z| < R1R
  IF (REAL(P1) || IMAG(P1))
    Q1 = P1
  ELSE
    Q1 = PIXEL
  ENDIF
  Q1R = REAL(Q1), R1R = 8^(ABS(Q1R))
  IF (Q1R >= 0)
    S1R = 1
  ELSE
    S1R = -1
  ENDIF
  Q1I = IMAG(Q1)
  IF (REAL(P2) || IMAG(P2))
    Q2 = P2
  ELSE
    Q2 = PIXEL
  ENDIF
  Q2R = REAL(Q2), Q2I = IMAG(Q2)
  Z = PIXEL
  :
  Z = Q1I*FN1(FN2(Q2R*Z))+FN3(FN4(Q2I*Z))
  ZM = |Z|
  Q2R = Q2R*S1R
  ZM <= R1R
  ;SOURCE: frac_ml.frm
}


_AB1 {; generalized _AB0
; Q1 = P1 IF P1 <> 0  ELSE  Q1 = PIXEL,   Q1R = REAL(Q1),   Q1I = IMAG(Q1)
; Q2 = P2 IF P2 <> 0  ELSE  Q2 = PIXEL,   Q2R = REAL(Q2),   Q2I = IMAG(Q2)
; R1R = 8^ABS(Q1R) = BAILOUT,   S1R = 1 IF Q1R >0 ELSE S1R = -1
; Z0 = PIXEL   :
;   Z = Q1I*FN1(FN2(Q2R*Z))*FN3(FN4(Q2I*Z))
;   Q2R = Q2R*S1R      q1r<0 -> q2r alternates sign
;   |Z| < R1R
  IF (REAL(P1) || IMAG(P1))
    Q1 = P1
  ELSE
    Q1 = PIXEL
  ENDIF
  Q1R = REAL(Q1), R1R = 8^(ABS(Q1R))
  IF (Q1R >= 0)
    S1R = 1
  ELSE
    S1R = -1
  ENDIF
  Q1I = IMAG(Q1)
  IF (REAL(P2) || IMAG(P2))
    Q2 = P2
  ELSE
    Q2 = PIXEL
  ENDIF
  Q2R = REAL(Q2), Q2I = IMAG(Q2)
  Z = PIXEL
  :
  Z = Q1I*FN1(FN2(Q2R*Z))*FN3(FN4(Q2I*Z))
  ZM = |Z|
  Q2R = Q2R*S1R
  ZM <= R1R
  ;SOURCE: frac_ml.frm
}


_AC1 {; generalized _AC0
; Q1 = P1 IF P1 <> 0  ELSE  Q1 = PIXEL,   Q1R = REAL(Q1),   Q1I = IMAG(Q1)
; Q2 = P2 IF P2 <> 0  ELSE  Q2 = PIXEL,   Q2R = REAL(Q2),   Q2I = IMAG(Q2)
; R1R = 8^ABS(Q1R) = BAILOUT,   S1R = 1 IF Q1R >0 ELSE S1R = -1
; Z0 = PIXEL   :
;   Z = Q1I*FN1(FN2(Q2R*Z))^FN3(FN4(Q2I*Z))
;   Q2R = Q2R*S1R      q1r<0 -> q2r alternates sign
;   |Z| < R1R
  IF (REAL(P1) || IMAG(P1))
    Q1 = P1
  ELSE
    Q1 = PIXEL
  ENDIF
  Q1R = REAL(Q1), R1R = 8^(ABS(Q1R))
  IF (Q1R >= 0)
    S1R = 1
  ELSE
    S1R = -1
  ENDIF
  Q1I = IMAG(Q1)
  IF (REAL(P2) || IMAG(P2))
    Q2 = P2
  ELSE
    Q2 = PIXEL
  ENDIF
  Q2R = REAL(Q2), Q2I = IMAG(Q2)
  Z = PIXEL
  :
  Z = Q1I*FN1(FN2(Q2R*Z))^FN3(FN4(Q2I*Z))
  ZM = |Z|
  Q2R = Q2R*S1R
  ZM <= R1R
  ;SOURCE: frac_ml.frm
}

