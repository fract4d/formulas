DD_AA1        {; (c) David J. Dollevoet 1998
               ;     <djd@bytemeusa.com>
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
  }
