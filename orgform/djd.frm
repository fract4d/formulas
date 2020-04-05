DJD_AA1 {;1998 David Dollevoet
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

DJD_AB1 {;1998 David Dollevoet
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
  }

DJD_AC1 {;1998 David Dollevoet
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
  }

DJD_AG0 {;1998 David Dollevoet
  ;inspired by Liar models by Chuck Ebbert
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1), R1R = 8^(ABS(Q1R))
  Q1I = IMAG(Q1), R1I = 8^(ABS(Q1I))
  BAILOUT = R1R, SHIFT = R1I
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  Q2R = REAL(Q2), Q2I = IMAG(Q2)
  IF (REAL(P3) || IMAG(P3))
      Q3 = P3
    ELSE
      Q3 = PIXEL
    ENDIF
  Q3R = REAL(Q3), Q3I = IMAG(Q3)
  ZN = 0, Z = PIXEL, ZM = |Z|
  :
  ZN = ZN+1
  ZR = REAL(Z), ZI = IMAG(Z)
  Z = (ABS(ZI)+ZR-Q3R)*Q2R+(FLIP(ABS(ZI+ZR-Q3I)))*Q2I
  ZM = |Z|
  IF (ZN > SHIFT)
    Z = FLIP(Z), ZN = 0
    ENDIF
  ZM <= BAILOUT
  }

DJD_AH0 {;1998 David Dollevoet
  ;inspired by Liar models by Chuck Ebbert
   IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)
      R1R = 1
    ELSE
      R1R = -1
    ENDIF
  S1R = FLOOR(8^(ABS(Q1R)))
  T1R = (8^(ABS(Q1R))-S1R+1)^2-1
  Q1I = IMAG(Q1)
  IF (Q1I >= 0)
      R1I = 1
    ELSE
      R1I = -1
    ENDIF
  S1I = FLOOR(8^(ABS(Q1I)))
  T1I = (8^(ABS(Q1I))-S1I+1)^2-1
  ZN = 0, Z = PIXEL
  :
  ZN = ZN+1
  ZR = REAL(Z), ZI = IMAG(Z)
  Z = FN1(FN2((ZR-ABS(ZI)+T1R)*R1R+FLIP(ABS(ZR+ZI+T1I*R1I))))
  IF (ZN > S1I)
    Z = FN3(FN4(Z))
    ZN = 0
    ENDIF
  ZM = |Z|
  ZM <= S1R
  }

DJD_AH1 {;1998 David Dollevoet
  ;inspired by Liar models by Chuck Ebbert
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)
      R1R = 1
    ELSE
      R1R = -1
    ENDIF
  S1R = FLOOR(8^(ABS(Q1R)))
  T1R = (8^(ABS(Q1R))-S1R+1)^2-1
  Q1I = IMAG(Q1)
  IF (Q1I >= 0)
      R1I = 1
    ELSE
      R1I = -1
    ENDIF
  S1I = FLOOR(8^(ABS(Q1I)))
  T1I = (8^(ABS(Q1I))-S1I+1)^2-1
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  Q2R = REAL(Q2), Q2I = IMAG(Q2)
  ZN = 0, Z = PIXEL
  :
  ZN = ZN+1
  ZR = REAL(Z), ZI = IMAG(Z)
  Z = FN1(FN2((ZR-ABS(ZI)+T1R*R1R)*Q2R+FLIP(ABS(ZR+ZI+T1I*R1I))*Q2I))
  IF (ZN > S1I)
    Z = FN3(FN4(Z))
    ZN = 0
    ENDIF
  ZM = |Z|
  ZM <= S1R
  }

DJD_AJ0 {;1998 David Dollevoet
  ;based on Sylvie Gallet g-3-03-m
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1), R1R = 8^(ABS(Q1R))-1
  Q1I = IMAG(Q1), R1I = 8^(ABS(Q1I))-1
  IF (R1R >= R1I)
      BAILOUT = R1R, SHIFT = R1I, U1 = 1
    ELSE
      SHIFT = R1R, BAILOUT = R1I, U1 = -1
    ENDIF
  IF (Q1R >= 0)
      S1R = 1
    ELSE
      S1R = -1
    ENDIF
  IF (Q1I >= 0)
      S1I = 1
    ELSE
      S1I = -1
    ENDIF
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  Q2R = REAL(Q2), Q2I = IMAG(Q2)
  P3R=REAL(P3)
  T1R = 1, T1I = 1, V1 = 1, Z = PIXEL, ZM = |Z|, N = 1
  :
  N = N+1
  IF (ZM <= SHIFT)
      Z = FN1(Z*T1R)+FN2(Z*T1I), T1R = T1R*S1R, T1I = T1I*S1I
    ELSE
      ZR = REAL(Z), ZI = IMAG(Z)
      IF (U1 > 0)
          ZR = ZR+REAL(FN3(Z))*Q2R
          ZI = ZI+IMAG(FN4(Z))*Q2I
          Z = ZR+FLIP(ZI)
        ELSE
          IF (V1 > 0)
              ZR = ZR+REAL(FN3(Z))*Q2R, V1 = V1*U1
              Z = ZR+FLIP(ZI)
            ELSE
              ZI = ZI+IMAG(FN4(Z))*Q2I, V1 = V1*U1
              Z = ZR+FLIP(ZI)
            ENDIF
        ENDIF
    ENDIF
  ZM = |Z|
  (ZM<=BAILOUT || N<P3R)
  }

DJD_AK0 {;1998 David Dollevoet
  ;inspired by Liar models by Chuck Ebbert
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)
      R1R = 1
    ELSE
      R1R = -1
    ENDIF
  S1R = 8^(ABS(Q1R))-1
  T1R = 1
  Q1I = IMAG(Q1)
  Z = PIXEL
  :
  ZR = REAL(Z), ZI = IMAG(Z)
  ZA = FN1(ZR-ABS(ZI)-Q1I), ZB = FN2(ABS(ZR+ZI+Q1I))
  Z = FN3((ZA+FLIP(ZB))*T1R)-FN4((ZB+FLIP(ZA))*T1R)
  T1R = T1R*R1R
  ZM = |Z|
  ZM <= S1R
  }

DJD_AK1 {;1998 David Dollevoet
  ;inspired by Liar models by Chuck Ebbert
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)
      R1R = 1
    ELSE
      R1R = -1
    ENDIF
  S1R = 8^(ABS(Q1R))-1
  T1R = 1
  Q1I = IMAG(Q1)
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  Q2R = REAL(Q2), Q2I = IMAG(Q2)
  Z = PIXEL
  :
  ZR = REAL(Z), ZI = IMAG(Z)
  ZA = FN1(ZR-ABS(ZI)-Q1I), ZB = FN2(ABS(ZR+ZI+Q1I))
  Z = FN3((ZA+FLIP(ZB))*T1R)*Q2R-FN4((ZB+FLIP(ZA))*T1R)*Q2I
  T1R = T1R*R1R
  ZM = |Z|
  ZM <= S1R
  }

DJD_AL1 {;1998 David Dollevoet
  ;inspired by Liar models by Chuck Ebbert
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)
      R1R = 1
    ELSE
      R1R = -1
    ENDIF
  S1R = 8^(ABS(Q1R))-1
  T1R = 1
  Q1I = IMAG(Q1)
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  Q2R = REAL(Q2), Q2I = IMAG(Q2)
  Z = PIXEL
  :
  ZR = REAL(Z), ZI = IMAG(Z)
  ZA = FN1(ZR-ABS(ZI)-Q1I), ZB = FN2(ABS(ZR+ZI+Q1I))
  ZAB = ZA+FLIP(ZB)*T1R
  Z = FN3(ZAB)*Q2R-FN4(ZAB)*Q2I
  T1R = T1R*R1R
  ZM = |Z|
  ZM <= S1R
  }

DJD_AM0 {;1998 David Dollevoet
  ;inspired by Liar models by Chuck Ebbert
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)
      R1R = 1
    ELSE
      R1R = -1
    ENDIF
  S1R = FLOOR(8^(ABS(Q1R)))
  T1R = 8^(ABS(Q1R))-S1R
  Q1I = IMAG(Q1)
  IF (Q1I >= 0)
      R1I = 1
    ELSE
      R1I = -1
    ENDIF
  S1I = FLOOR(8^(ABS(Q1I)))
  T1I = 8^(ABS(Q1I))-S1I
  ZN = 0, Z = PIXEL
  :
  ZN = ZN+1
  ZR = REAL(Z), ZI = IMAG(Z)
  ZRA = FN1(FN2(ZR-ABS(ZI)+T1R*R1R)), ZIA = FN1(FN2(ABS(ZR+ZI+T1I*R1I)))
  Z = ZRA+FLIP(ZIA)
  IF (ZN > S1I)
    ZRB = FN1(FN2(REAL(Z))), ZIB = FN1(FN2(IMAG(Z)))
    Z = ZRB+FLIP(ZIB)
    ZN = 0
    ENDIF
  ZM = |Z|
  ZM <= S1R
  }

DJD_AN1 {;1998 David Dollevoet
  ;inspired by Liar models by Chuck Ebbert
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)
      R1R = 1
    ELSE
      R1R = -1
    ENDIF
  S1R = FLOOR(10*(ABS(Q1R)))
  T1R = 10*ABS(Q1R)-S1R
  Q1I = IMAG(Q1)
  IF (Q1I >= 0)
      R1I = 1
    ELSE
      R1I = -1
    ENDIF
  S1I = FLOOR(10*ABS(Q1I))
  T1I = 10*(ABS(Q1I))-S1I
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  Q2R = REAL(Q2)
  Q2I = IMAG(Q2)
  IF (Q2I >= 0)
      R2I = 1
    ELSE
      R2I = -1
    ENDIF
  S2I = FLOOR(10*ABS(Q2I))
  T2I = 10*(ABS(Q2I))-S2I
  N = 0, NN = 0, Z = PIXEL
  :
  N = N+1, NN = NN+1
  ZR = REAL(Z), ZI = IMAG(Z)
  ZRA = ZR+ABS(ZI)-T1I, ZIA = ABS(ZR-ZI+T1R)
  Z = FN1(ZRA+FLIP(ZIA))*Q2R
  IF (NN > S1I)
      Z = FN2(Z)*T2I*R2I
      NN = 0
    ENDIF
  IF (N > S2I)
      ZM = |Z|
    ELSE
      ZM = 0
    ENDIF
  ZM <= S1R
  }

DJD_BA0 {;1999 David Dollevoet
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1), R1R = 8^(ABS(Q1R))-1
  Q1I = IMAG(Q1), R1I = 8^(ABS(Q1I))-1
  IF (R1R >= R1I)
      BAILOUT = R1R, SHIFT = R1I, U1 = 1
    ELSE
      BAILOUT = R1I, SHIFT = R1R, U1 = -1
    ENDIF
  IF (Q1R >= 0)
      S1R = 1
    ELSE
      S1R = -1
    ENDIF
  IF (Q1I >= 0)
      S1I = 1
    ELSE
      S1I = -1
    ENDIF
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  T1R = 1, T1I = 1
  Z = PIXEL
  ZM = |Z|
  :
  IF (ZM <= SHIFT)
      Z = FN1(FN2(Z*T1R))+Q2
        ELSE
      Z = FN3(FN4(Z*T1I))+Q2
    ENDIF
  ZM = |Z|
  T1R = T1R*S1R, T1I = T1I*S1I
  (U1>0 && ZM<=BAILOUT) || (U1<0 && (SQR(REAL(Z))<=BAILOUT && SQR(IMAG(Z))<=BAILOUT))
  }

DJD_BB0 {;1999 David Dollevoet
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1), R1R = 8^(ABS(Q1R))-1
  Q1I = IMAG(Q1), R1I = 8^(ABS(Q1I))-1
  IF (R1R >= R1I)
      BAILOUT = R1R, SHIFT = R1I, U1 = 1
    ELSE
      BAILOUT = R1I, SHIFT = R1R, U1 = -1
    ENDIF
  IF (Q1R >= 0)
      S1R = 1
    ELSE
      S1R = -1
    ENDIF
  IF (Q1I >= 0)
      S1I = 1
    ELSE
      S1I = -1
    ENDIF
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  T1R = 1, T1I = 1
  Z = PIXEL
  ZM = |Z|
  :
  IF (ZM <= SHIFT)
      Z = FN1(FN2(Z*T1R))*Q2
        ELSE
      Z = FN3(FN4(Z*T1I))*Q2
    ENDIF
  ZM = |Z|
  T1R = T1R*S1R, T1I = T1I*S1I
  (U1>0 && ZM<=BAILOUT) || (U1<0 && (SQR(REAL(Z))<=BAILOUT && SQR(IMAG(Z))<=BAILOUT))
  }

DJD_BC0 {;1999 David Dollevoet
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1), R1R = 8^(ABS(Q1R))-1
  Q1I = IMAG(Q1), R1I = 8^(ABS(Q1I))-1
  IF (R1R >= R1I)
      BAILOUT = R1R, SHIFT = R1I, U1 = 1
    ELSE
      BAILOUT = R1I, SHIFT = R1R, U1 = -1
    ENDIF
  IF (Q1R >= 0)
      S1R = 1
    ELSE
      S1R = -1
    ENDIF
  IF (Q1I >= 0)
      S1I = 1
    ELSE
      S1I = -1
    ENDIF
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  T1R = 1, T1I = 1
  Z = PIXEL
  ZM = |Z|
  :
  IF (ZM <= SHIFT)
      Z = FN1(FN2(Z*T1R))^Q2
        ELSE
      Z = FN3(FN4(Z*T1I))^Q2
    ENDIF
  ZM = |Z|
  T1R = T1R*S1R, T1I = T1I*S1I
  (U1>0 && ZM<=BAILOUT) || (U1<0 && (SQR(REAL(Z))<=BAILOUT && SQR(IMAG(Z))<=BAILOUT))
  }

DJD_BD0 {;1999 David Dollevoet
  ;inspired by Liar models by Chuck Ebbert
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)
      R1R = 1
    ELSE
      R1R = -1
    ENDIF
  S1R = 10*(ABS(Q1R))
  Q1I = IMAG(Q1)
  IF (Q1I >= 0)
      R1I = 1
    ELSE
      R1I = -1
    ENDIF
  Z = PIXEL, N = 0
  :
  N = N+1
  ZR = REAL(Z), ZI = IMAG(Z)
  ZAR = ZR+ABS(ZI)-1, ZAI = ABS(ZR-ZI+1)
  Z = FN1(ZAR+FLIP(ZAI))*N/(N+1)*Q1I
  ZM = |Z|
  (R1R>0 && ZM<=S1R) || (R1R<0 && (SQR(REAL(Z))<=S1R && SQR(IMAG(Z))<=S1R))
  }

DJD_BD1 {;1999 David Dollevoet
  ;inspired by Liar models by Chuck Ebbert
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)
      R1R = 1
    ELSE
      R1R = -1
    ENDIF
  S1R = 10*(ABS(Q1R))
  Q1I = IMAG(Q1)
  IF (Q1I >= 0)
      R1I = 1
    ELSE
      R1I = -1
    ENDIF
  Z = PIXEL, N = 0
  :
  N = N+1
  ZR = REAL(Z), ZI = IMAG(Z)
  ZAR = ZR+ABS(ZI)-1, ZAI = ABS(ZR-ZI+1)
  Z = FN3((FN1(ZAR)+FLIP(REAL(FN2(ZAI)))))*N/(N+1)*Q1I
  ZM = |Z|
  (R1R>0 && ZM<=S1R) || (R1R<0 && (SQR(REAL(Z))<=S1R && SQR(IMAG(Z))<=S1R))
  }

DJD_BE0 {;1999 David Dollevoet
  ;inspired by Liar models by Chuck Ebbert
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1) 
  IF (Q1R >= 0)
      R1R = 1
    ELSE
      R1R = -1
    ENDIF
  S1R = 8^(ABS(Q1R))-1
  Q1I = IMAG(Q1)
  Z = PIXEL, ZM = |Z|
  :
  ZMOLD = ZM
  LO = ZMOLD-S1R, HI = ZMOLD+S1R
  ZR = REAL(Z), ZI = IMAG(Z)
  ZAR = ZR+ABS(ZI)-1, ZAI = ABS(ZR-ZI+1)
  Z = FN1(ZAR+FLIP(ZAI))*Q1I
  ZM = |Z|
  IF (R1R > 0)
      IF (ZM > LO  &&  ZM < HI)
          AGAIN = 1
        ELSE
          AGAIN = -1
        ENDIF
    ELSE
      IF (ZM < HI)
          AGAIN = 1
        ELSE
          AGAIN = -1
        ENDIF
    ENDIF
  AGAIN > 0
  }

DJD_BF0 {;1999 David Dollevoet
  ;inspired by Liar models by Chuck Ebbert
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)
      R1R = 1
    ELSE
      R1R = -1
    ENDIF
  S1R = 10*ABS(Q1R)
  Q1I = IMAG(Q1)
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  Q2R = REAL(Q2), Q2I = IMAG(Q2)
  Z = PIXEL
  :
  ZR = REAL(Z), ZI = IMAG(Z)
  ZAR = ABS(ZR-ZI)-Q2R, ZAI = ABS(ZR+ZI-Q2I)
  Z = FN1(ZAR+FLIP(ZAI))*Q1I
  ZM = |Z|
 (R1R>0 && ZM<=S1R) || (R1R<0 && (SQR(REAL(Z))<=S1R && SQR(IMAG(Z))<=S1R))
  }

DJD_BG0 {;1999 A783David Dollevoet
  ;inspired by Liar models by Chuck Ebbert
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)
      R1R = 1
    ELSE
      R1R = -1
    ENDIF
  S1R = 10*ABS(Q1R)
  Q1I = IMAG(Q1)
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  X = PIXEL, Y = PIXEL+Q2
  :
  XR = REAL(X), XI = IMAG(X)
  XAR = ABS(XR+XI)-1, XAI = ABS( XR-XI+1)    ;heavy spiralling
  X = FN1(XAR+FLIP(XAI))
  YR = REAL(Y), YI = IMAG(Y)
  YAR = ABS(YR+YI)-1, YAI = ABS( YR-YI+1)    ;heavy spiralling
  Y = FN2(YAR+FLIP(YAI))
  Z = FN3(X+Y*Q1I)
  ZM = |Z|
  ZM <= S1R
  }

DJD_BH0 {;1999 David Dollevoet
  ;inspired by Liar models by Chuck Ebbert
   IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)
      R1R = 1
    ELSE
      R1R = -1
    ENDIF
  S1R = FLOOR(10*(ABS(Q1R)))
  T1R = 10*ABS(Q1R)-S1R
  Q1I = IMAG(Q1)
  IF (Q1I >= 0)
      R1I = 1
    ELSE
      R1I = -1
    ENDIF
  S1I = FLOOR(10*ABS(Q1I))
  T1I = 10*(ABS(Q1I))-S1I
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  Q2R = REAL(Q2), Q2I = IMAG(Q2)
  X = PIXEL, Y = PIXEL
  :
  XR = REAL(X), XI = IMAG(X)
  IF (R1R > 0)
      XRA = XR+ABS(XI)-T1R, XIA = ABS(XR-XI+T1I*R1I)
     ELSE
      XRA = XR-ABS(XI)+T1R, XIA = ABS(XR+XI-T1I*R1I)
    ENDIF
  X = FN1(XRA+FLIP(XIA)), XM = |X|
  Y = FN2(Y)+FN3(Y)
  IF (XM < S1I)
      Z = X
    ELSE 
      Z = X*Q2R+Y*Q2I
      X = Z
    ENDIF
  ZM = |Z|
  ZM <= S1R
  }

DJD_BI0 {;1999 David Dollevoet
  ;inspired by Liar models by Chuck Ebbert
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)  
      R1R = 1
    ELSE
      R1R = 0
    ENDIF
  S1R = 10*ABS(Q1R)
  Q1I = IMAG(Q1)
  IF (Q1I >= 0)
      R1I = 1
    ELSE
      R1I = -1
    ENDIF
  S1I = FLOOR(10*ABS(Q1I))
  T1I = (10*ABS(Q1I)-S1I+1)*R1I
  Z = PIXEL, N = 0
  :
  N = N+1
  ZR = REAL(Z), ZI = IMAG(Z)
  IF (ZR >= 0)
      AR = 1
    ELSE
      AR = -1
    ENDIF
  ZAR = ZR+ABS(ZI)-AR, ZAI = ABS(ZR-ZI-AR)
  Z = ZAR+FLIP(ZAI)
  IF (N > S1I)
    Z = FN2(REAL(Z))+FLIP(FN2(IMAG(Z)))
    Z = Z*T1I/N
    N = 0
    ENDIF
  ZBR = ABS(FN1(REAL(Z)))
  ZBR <= S1R
  }

DJD_BJ0 {;1999 David Dollevoet
  ;inspired by Liar models by Chuck Ebbert
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)  
      R1R = 1
    ELSE
      R1R = 0
    ENDIF
  S1R = 10*ABS(Q1R)
  Q1I = IMAG(Q1)
  IF (Q1I >= 0)
      R1I = 1
    ELSE
      R1I = -1
    ENDIF
  S1I = FLOOR(10*ABS(Q1I))
  T1I = (10*ABS(Q1I)-S1I+1)*R1I
  Z = PIXEL, N = 0
  :
  N = N+1
  ZR = REAL(Z), ZI = IMAG(Z)
  IF (ZR >= 0)
      A = 1
    ELSE
      A = -1
    ENDIF
  ZAR = ZR*A+ABS(ZI)-1, ZAI = ABS(ZR-ZI-1)
  Z = ZAR+FLIP(ZAI)
  IF (N > S1I)
    Z = FN2(REAL(Z))+FLIP(FN2(IMAG(Z)))
    Z = Z*T1I/N
    N = 0
    ENDIF
  ZBR = ABS(FN1(REAL(Z)))
  ZBR <= S1R
  }

DJD_BK0 {;1999 David Dollevoet
  ;inspired by Liar models by Chuck Ebbert
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)
      R1R = 1
    ELSE
      R1R = 0
    ENDIF
  S1R = 10*ABS(Q1R)
  Q1I = IMAG(Q1)
  IF (Q1I >= 0)
      R1I = 1
    ELSE
      R1I = -1
    ENDIF
  S1I = FLOOR(10*ABS(Q1I))
  T1I = (10*ABS(Q1I)-S1I+1)*R1I
  Z = PIXEL, N = 0
  :
  N = N+1
  ZR = REAL(Z), ZI = IMAG(Z)
  IF (ZI >= 0)
      A = 1
    ELSE
      A = -1
    ENDIF
  ZAR = ZR+ABS(ZI)-1, ZAI = ABS(ZR-ZI*A-1)
  Z = ZAR+FLIP(ZAI)
  IF (N > S1I)
    Z = FN2(REAL(Z))+FLIP(FN2(IMAG(Z)))
    Z = Z*T1I/N
    N = 0
    ENDIF
  ZBR = ABS(FN1(REAL(Z)))
  ZBR <= S1R
  }

DJD_BM0 {;1999 David Dollevoet
  ;inspired by Liar models by Chuck Ebbert
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)
      R1R = 1
    ELSE
      R1R = -1
    ENDIF
  S1R = 10*ABS(Q1R)
  T1R = S1R*S1R
  Q1I = IMAG(Q1)
  IF (Q1I >= 0)
      R1I = 1
    ELSE
      R1I = -1
    ENDIF
  S1I = 10*ABS(Q1I)
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  Q2R = REAL(Q2), Q2I = IMAG(Q2)
  N = 0, Z = PIXEL
  :
  N = N+1
  ZR = REAL(Z), ZI = IMAG(Z)
  ZAR = ZR+ABS(ZI)-1, ZAI = ABS(ZR-ZI-1)
  Z = FN1(ZAR+FLIP(ZAI))*Q2R
  IF (N > S1I)
    Z = FN2(Z)*Q2I
    N = 0
    ENDIF
  ZBR = SQR(REAL(Z)), ZBI = SQR(IMAG(Z))
  (ZBR <= T1R) && (ZBI <= T1R)
  }

DJD_BM1 {;2001 David Dollevoet
  ;inspired by Liar models by Chuck Ebbert
  ;DJD_BM0 modified
  IF (ISMAND)
      Q1 = PIXEL
    ELSE
      Q1 = P1
    ENDIF
  Q1R = REAL(Q1), Q1I = IMAG(Q1)
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  Q2R = REAL(Q2), Q2I = IMAG(Q2)
  IF (Q2R >= 0)
      R2R = 1
    ELSE
      R2R = -1
    ENDIF
  IF (Q2I >= 0)
      R2I = 1
    ELSE
      R2I = -1
    ENDIF
  BAILOUT = SQR(10*ABS(Q2R))
  IF (R2I > 0)
      SHIFT = SQR(10*ABS(Q2I))
    ELSE
      SHIFT = 10*ABS(Q2I)
    ENDIF
  Z = PIXEL, ZR = REAL(Z), ZI = IMAG(Z), SHIFTVAR = 0
  :
  ZAR = ZR+ABS(ZI)-1, ZAI = ABS(ZR-ZI-1)
  IF (R2I > 0)
      SHIFTVAR = ZAR*ZAR+ZAI*ZAI
    ELSE
      SHIFTVAR = SHIFTVAR+1
    ENDIF
  IF (SHIFTVAR < SHIFT)
      ZR = FN1(ZAR)*Q1R, ZI = FN1(ZAI)*Q1R
    ELSE
      IF (R2R > 0)
          ZR = FN2(ZAR)*Q1I, ZI = FN3(ZAI)*Q1I
        ELSE
          ZR = FN2(ZAI)*Q1I, ZI = FN3(ZAR)*Q1I
        ENDIF
      SHIFTVAR = 0
    ENDIF
  (ZR*ZR <= BAILOUT) && (ZI*ZI <= BAILOUT)
  }

DJD_BN0 {;1999 David Dollevoet
  ;inspired by Liar models by Chuck Ebbert
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)
      R1R = 1
    ELSE
      R1R = -1
    ENDIF
  S1R = FLOOR(ABS(Q1R)*10)
  T1R = (ABS(Q1R)*10-S1R)*10
  Q1I = IMAG(Q1)
  IF (Q1I > 0)
      R1I = 1
    ELSE
      R1I = -1
    ENDIF
  S1I = ABS(Q1I)
  Z = PIXEL, ZR = REAL(Z), ZI = IMAG(Z), N = 0
  :
  N = N+1
  ZAR = ZR+ABS(ZI)-1, ZAI = ABS(ZR-ZI-1)
  Z = (ZAR+FLIP(ZAI))*S1I
  IF (N > T1R)
    Z = FN1(Z)
    IF (R1I < 0)
      Z = Z*S1I
      ENDIF
    N = 0
    ENDIF
  ZR = REAL(Z), ZI = IMAG(Z)
  IF (R1R > 0)
      ZSHORT = S1R-CABS(Z)
    ELSE
      ZBR = ABS(ZR), ZBI = ABS(ZI)
      IF (ZBR < ZBI)
          SMALLR = 1, SMALLI = 0
        ELSE
          SMALLR = 0, SMALLI = 1
        ENDIF
      ZSHORT = (S1R-ZBR)*SMALLR+(S1R-ZBI)*SMALLI
    ENDIF
  ZSHORT > 0
  }

DJD_BO0 {;1999 David Dollevoet
  ;inspired by Liar models by Chuck Ebbert
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)
      R1R = 1
    ELSE
      R1R = -1
    ENDIF
  S1R = FLOOR(ABS(Q1R)*10)
  T1R = (ABS(Q1R)*10-S1R)*10
  Q1I = IMAG(Q1)
  IF (Q1I > 0)
      R1I = 1
    ELSE
      R1I = -1
    ENDIF
  S1I = ABS(Q1I)
  Z = PIXEL, ZR = FN1(REAL(Z)), ZI = FN1(IMAG(Z))
  N = 0
  :
  N = N+1
  ZAR = ZR+ABS(ZI)-1, ZAI = ABS(ZR-ZI-1)
  Z = (FN2(ZAR)+FLIP(FN2(ZAI)))*S1I
  IF (N > T1R)
    Z = FN3(Z)
    IF (R1I < 0)
      Z = Z*S1I
      ENDIF
    N = 0
    ENDIF
  ZR = REAL(Z), ZI = IMAG(Z)
  IF (R1R > 0)
      ZSHORT = S1R-CABS(Z)
    ELSE
      ZBR = ABS(ZR), ZBI = ABS(ZI)
      IF (ZBR < ZBI)
          SMALLR = 1, SMALLI = 0
        ELSE
          SMALLR = 0, SMALLI = 1
        ENDIF
      ZSHORT = (S1R-ZBR)*SMALLR+(S1R-ZBI)*SMALLI
    ENDIF
  ZSHORT > 0
  }

DJD_BP0  {;1999 David Dollevoet
  ;inspired by Liar models by Chuck Ebbert
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)
      R1R = 1
    ELSE
      R1R = -1
    ENDIF
  S1R = ABS(Q1R)
  Q1I = IMAG(Q1)
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  Q2R = REAL(Q2), Q2I = IMAG(Q2)
  Z = PIXEL                                                       
  :
  ZR = REAL(Z), ZI = IMAG(Z)
  ZAR = FN1(1-ABS(ZR*R1R+ZI)), ZAI = FN1(Q1I-ABS(1+ZR*R1R-ZI))
  Z = ZAR*Q2R+FLIP(ZAI)*Q2I
  FN2(FN3(Z)) < S1R
  }

DJD_BQ0 {;1999 David Dollevoet
  ;inspired by Liar models by Chuck Ebbert
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)
      R1R = 1
    ELSE
      R1R = -1
    ENDIF
  S1R = ABS(Q1R)*10
  Q1I = IMAG(Q1)
  IF (Q1I >= 0)
      R1I = 1
    ELSE
      R1I = -1
    ENDIF
  S1I = FLOOR(ABS(Q1I)*10)+0.000001
  T1I = ABS(Q1I)*10-(S1I-0.000001)+0.5
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  Q2R = REAL(Q2), Q2I = IMAG(Q2)
  Z = PIXEL, N = 0
  :
  N = N+1
  X = REAL(Z), Y = IMAG(Z)
  IF (N < S1I)
      Z = FN1((1-ABS(X+Y))*Q2R+FLIP((1-ABS(1+X-Y))*Q2R*R1R))
    ELSE
      Z = FN2(REAL(Z)*Q2I+IMAG(Z)*Q2I*R1I)*T1I
      N = 0
    ENDIF
  FN3(Z) < S1R
  }

DJD_BR0 {;1999 David Dollevoet
  ;inspired by R. Parracho rspDJD_may012
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)
      R1R = 1
    ELSE
      R1R = -1
    ENDIF
  S1R = ABS(Q1R)
  Q1I = IMAG(Q1)
  IF (Q1I >= 0)
      R1I = 1
    ELSE
      R1I = -1
    ENDIF
  S1I = ABS(Q1I)*10
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  U = PIXEL
  :
  U = FN1(U)+Q2
  V = FN1(U)+Q2
  W = FN1(V)+Q2
  UV = ABS(|V|-|U|)
  UW = ABS(|W|-|U|)
  Z = FN2(UV/UW)*S1I
  Z > S1R
  }

DJD_BR1 {;1999 David Dollevoet
  ;inspired by R. Parracho rspDJD_may012
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)
      R1R = 1
    ELSE
      R1R = -1
    ENDIF
  S1R = ABS(Q1R)
  Q1I = IMAG(Q1)
  IF (Q1I >= 0)
      R1I = 1
    ELSE
      R1I = -1
    ENDIF
  S1I = ABS(Q1I)*10
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  U = PIXEL
  :
  U = FN1(U)+Q2
  V = FN2(U)+Q2
  W = FN3(V)+Q2
  UM = |U|
  VM = |V|
  WM = |W|
  UR = REAL(U), UI = IMAG(U)
  VR = REAL(V), VI = IMAG(V)
  WR = REAL(W), WI = IMAG(W)
  UV = SQR(VR-UR)+SQR(VI-UI)
  VW = SQR(WR-VR)+SQR(WI-VI)
  UW = SQR(WR-UR)+SQR(WI-UI)
  IF (R1R > 0)
      IF (R1I > 0)
          Z = WM-UM
        ELSE
          Z = WM-VM
        ENDIF
    ELSE
      IF (R1I > 0)
          Z = UW-UV
        ELSE
          Z = UW-VW
        ENDIF
    ENDIF  
  Z = ABS(Z)
  Z = FN4(Z)*S1I
  Z > S1R
  }

DJD_BR2 {;1999 David Dollevoet
  ;inspired by R. Parracho rspDJD_may012
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)
      R1R = 1
    ELSE
      R1R = -1
    ENDIF
  S1R = ABS(Q1R)
  Q1I = IMAG(Q1)
  IF (Q1I >= 0)
      R1I = 1
    ELSE
      R1I = -1
    ENDIF
  S1I = ABS(Q1I)
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  U = PIXEL
  :
  U = FN1(U)+Q2
  V = FN2(U)+Q2
  W = (FN3(V)+Q2)*Q1I
  UM = |U|
  VM = |V|
  WM = |W|
  UR = REAL(U), UI = IMAG(U)
  VR = REAL(V), VI = IMAG(V)
  WR = REAL(W), WI = IMAG(W)
  UV = SQR(VR-UR)+SQR(VI-UI)
  VW = SQR(WR-VR)+SQR(WI-VI)
  UW = SQR(WR-UR)+SQR(WI-UI)
  IF (R1R > 0)
      IF (R1I > 0)
          Z = WM-UM
        ELSE
          Z = WM-VM
        ENDIF
    ELSE
      IF (R1I > 0)
          Z = UW-UV
        ELSE
          Z = UW-VW
        ENDIF
    ENDIF  
  Z = ABS(Z)
  Z = FN4(Z)
  Z > S1R
  }

DJD_BS0 {;1999 David Dollevoet
  ;inspired by R. Parracho rspDJD_may012
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)
      R1R = 1
    ELSE
      R1R = -1
    ENDIF
  S1R = ABS(Q1R)
  Q1I = IMAG(Q1)
  IF (Q1I >= 0)
      R1I = 1
    ELSE
      R1I = -1
    ENDIF
  S1I = ABS(Q1I)*10
  T1I = 1
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  Q2R = REAL(Q2), Q2I = IMAG(Q2)
  U = PIXEL
  :
  U = FN1(U*T1I)*Q2R+FN2(U)*Q2I
  V = FN1(U*T1I)*Q2R+FN3(U)*Q2I
  W = FN1(V*T1I)*Q2R+FN4(V)*Q2I
  T1I = T1I*R1I
  UM = |U|
  VM = |V|
  WM = |W|
  IF (R1R > 0)
      Z = WM-UM
    ELSE
      Z = WM-VM
    ENDIF
  Z = ABS(Z)*S1I
  Z > S1R
  }

DJD_BS1 {;1999 David Dollevoet
  ;inspired by R. Parracho rspDJD_may012
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)
      R1R = 1
    ELSE
      R1R = -1
    ENDIF
  S1R = ABS(Q1R)
  Q1I = IMAG(Q1)
  IF (Q1I >= 0)
      R1I = 1
    ELSE
      R1I = -1
    ENDIF
  S1I = ABS(Q1I)*10
  T1I = 1
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  Q2R = REAL(Q2), Q2I = IMAG(Q2)
  U = PIXEL
  :
  U = FN1(U*Q2R*T1I)+FN2(U*Q2I)
  V = FN1(U*Q2R*T1I)+FN3(U*Q2I)
  W = FN1(V*Q2R*T1I)+FN4(V*Q2I)
  T1I = T1I*R1I
  UM = |U|
  VM = |V|
  WM = |W|
  IF (R1R > 0)
      Z = WM-UM
    ELSE
      Z = WM-VM
    ENDIF  
  Z = ABS(Z)*S1I
  Z > S1R
  }

DJD_BT2 {;1999 David Dollevoet
  ;inspired by Liar models by Chuck Ebbert
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)
      R1R = 1
    ELSE
      R1R = -1
    ENDIF
  S1R = ABS(Q1R)*10
  Q1I = IMAG(Q1)
  IF (Q1I > 0)
      R1I = 1
    ELSE
      R1I = -1
    ENDIF
  S1I = ABS(Q1I)*10
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  Q2R = REAL(Q2), Q2I = IMAG(Q2)  
  N = 0, NN = 0
  Z = FN1(PIXEL), ZM = |Z|, X = REAL(Z), Y = IMAG(Z)
  :
  N = N+1, NN = NN+1
  IF (R1I >= 0)
      TESTVAL = ZM
    ELSE
      TESTVAL = NN
    ENDIF
  IF (TESTVAL <= S1I)
  ;   XA = 1-ABS(X+Y), YA = 1-ABS(1+X-Y)    ;formula original
  ;   XA = 1-ABS(X+Y), YA = ABS(1+X-Y)      ;formula variation 1
      XA = ABS(X+Y)-1, YA = ABS(X-Y+1)      ;formula variation 2
  ;   XA = X+ABS(Y)-1, YA = ABS(X-Y-1)      ;formula variation 3
      Z = FN2(XA+FLIP(YA))*Q2R
    ELSE
      Z = FN3(Z)*Q2I
      NN = 0
      ENDIF
  ZM = |Z|, X = REAL(Z), Y = IMAG(Z)
  AGAIN = 1
  IF (R1R >= 0)
      IF (ZM >= S1R)
        AGAIN = -1
        ENDIF
    ELSE
      IF (X>=S1R && Y>=S1R)
        AGAIN = -1
        ENDIF
    ENDIF
  AGAIN > 0
  }

DJD_CA0 {;2000 David Dollevoet
  ;based on Chaotic Dualist 4 model by ???
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)
      R1R = 1
    ELSE
      R1R = -1
    ENDIF
  S1R = ABS(Q1R)*10
  Q1I = IMAG(Q1)
  IF (Q1I > 0)
      R1I = 1
    ELSE
      R1I = -1
    ENDIF
  S1I = ABS(Q1I)*10
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  Q2R = REAL(Q2), Q2I = IMAG(Q2)  
  N = 0, NN = 0
  Z = FN1(PIXEL), ZM = |Z|, X = REAL(Z), Y = IMAG(Z)
  :
  N = N+1, NN = NN+1
  IF (R1I >= 0)
      TESTVAL = ZM
    ELSE
      TESTVAL = NN
    ENDIF
  IF (TESTVAL <= S1I)
      XA = 1-ABS(X-Y+1), YA = 1-ABS(X+Y-1)    ;chaotic dualist 4
      Z = FN2(XA+FLIP(YA))*Q2R
    ELSE
      Z = FN3(Z)*Q2I
      NN = 0
      ENDIF
  ZM = |Z|, X = REAL(Z), Y = IMAG(Z)
  AGAIN = 1
  IF (R1R >= 0)
      IF (ZM >= S1R)
        AGAIN = -1
        ENDIF
    ELSE
      IF (X>=S1R && Y>=S1R)
        AGAIN = -1
        ENDIF
    ENDIF
  AGAIN > 0
  }

DJD_CB0 {;2000 David Dollevoet
  ;based on Chaotic Dualist 4 model by ???
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)
      CALCFLAG = 1
    ELSE
      CALCFLAG = -1
    ENDIF
  BAILOUT = ABS(Q1R)*10
  Q1I = IMAG(Q1)
  IF (Q1I > 0)
      SHIFTFLAG = 1
      SHIFT = ABS(Q1I)*10
      SHIFTRESIZE = 1
    ELSE
      SHIFTFLAG = -1
      SHIFT = FLOOR(ABS(Q1I)*10)
      SHIFTRESIZE = ABS(Q1I)*10-SHIFT-0.5+1+0.000000001
    ENDIF
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  Q2R = REAL(Q2), Q2I = IMAG(Q2)  
  IF (REAL(P1) || IMAG(P1) || REAL(P2) || IMAG(P2))
      SHIFTRESIZE = SHIFTRESIZE
    ELSE
      SHIFTRESIZE = 1
    ENDIF
  COUNT = 0, X = REAL(PIXEL), Y = IMAG(PIXEL) , ORBIT = X*X+Y*Y, Z = PIXEL
  :
  COUNT = COUNT+1
  IF (SHIFTFLAG >= 0)
      SHIFTVAR = ORBIT
    ELSE
      SHIFTVAR = COUNT
    ENDIF
  IF (SHIFTVAR <= SHIFT)
      XX = 1-ABS(X-Y+1), YY = 1-ABS(X+Y-1)      ;chaotic dualist 4
      X = FN1(XX)*Q2R, Y = FN2(YY)*Q2R
    ELSE
      IF (CALCFLAG > 0)
          X = FN3(X)*Q2I, Y = FN4(Y)*Q2I
        ELSE
          X = FN3(X)+Q2I, Y = FN4(Y)+Q2I
        ENDIF
      COUNT = 0, SHIFT = SHIFT*SHIFTRESIZE
      ENDIF
  ORBIT = X*X+Y*Y
  Z = X+FLIP(Y)
  ORBIT <= BAILOUT
  }

DJD_CB1 {;2000 David Dollevoet
  ;based on Chaotic Dualist 4 model by ???
  ;DJD_cb0 with bailout = logical or
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)
      CALCFLAG = 1
    ELSE
      CALCFLAG = -1
    ENDIF
  BAILOUT = 10^(-ABS(Q1R))
  Q1I = IMAG(Q1)
  IF (Q1I > 0)
      SHIFTFLAG = 1
      SHIFT = ABS(Q1I)*10
      SHIFTRESIZE = 1
    ELSE
      SHIFTFLAG = -1
      SHIFT = FLOOR(ABS(Q1I)*10)
      SHIFTRESIZE = ABS(Q1I)*10-SHIFT-0.5+1+0.000000001
    ENDIF
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  Q2R = REAL(Q2), Q2I = IMAG(Q2)  
  IF (REAL(P1) || IMAG(P1) || REAL(P2) || IMAG(P2))
      SHIFTRESIZE = SHIFTRESIZE
    ELSE
      SHIFTRESIZE = 1
    ENDIF
  N = 0, COUNT = 0, X = REAL(PIXEL), Y = IMAG(PIXEL), ORBIT = X*X+Y*Y, Z = PIXEL
  :
  N = N+1, COUNT = COUNT+1
  IF (SHIFTFLAG >= 0)
      SHIFTVAR = ORBIT
    ELSE
      SHIFTVAR = COUNT
    ENDIF
  IF (SHIFTVAR <= SHIFT)
      XX = 1-ABS(X-Y+1), YY = 1-ABS(X+Y-1)      ;chaotic dualist 4
      X = FN1(XX)*Q2R, Y = FN2(YY)*Q2R
    ELSE
      IF (CALCFLAG > 0)
          X = FN3(X)*Q2I, Y = FN4(Y)*Q2I
        ELSE
          X = FN3(X)+Q2I, Y = FN4(Y)+Q2I
        ENDIF
      COUNT = 0, SHIFT = SHIFT*SHIFTRESIZE
      ENDIF
  Z = X+FLIP(Y)
  (N>1)*((ABS(X)<BAILOUT)+(ABS(Y)<BAILOUT)) < 1
  }

DJD_CC0 {;2000 David Dollevoet
  ;DJD_AA1 with bailout = logical or
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)
      R1R = 1
    ELSE
      R1R = -1
    ENDIF
  S1R = ABS(Q1R)
  T1R = 10^ABS(Q1R)
  U1R = 1/(SQR(10^ABS(Q1R)))
  Q1I = IMAG(Q1)
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  Q2R = REAL(Q2), Q2I = IMAG(Q2)
  Z = PIXEL, N = 0
  :
  N = N+1
  Z = Q1I*FN1(FN2(Q2R*Z))+FN3(FN4(Q2I*Z))
  Q2R = Q2R*R1R
  ZM = |Z|, ZZ = ABS(Z), ZZR = REAL(ZZ), ZZI = IMAG(ZZ)
  (ZM>T1R)+(N>S1R)*((ZZR<U1R)+(ZZI<U1R)) < 1
  }

DJD_CF0  {;2000 David Dollevoet
  IF (REAL(P1) || IMAG(P1))
      Q1 = P1
    ELSE
      Q1 = PIXEL
    ENDIF
  Q1R = REAL(Q1)
  IF (Q1R >= 0)
      R1R = 1
    ELSE
      R1R = -1
    ENDIF
  S1R = ABS(Q1R)
  T1R = 10^(ABS(Q1R))
  U1R = 1/(10^(ABS(Q1R*2)))
  Q1I = IMAG(Q1)
  IF (Q1I >= 0)
      R1I = 1
    ELSE
      R1I = -1
    ENDIF
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  Z = PIXEL
  :
  Z = FN1(FN2(Z)+Q2)*Q1I
  Q2 = Q2*R1R
  (|Z|>T1R)+(|REAL(Z)|<U1R)+(|IMAG(Z)|<U1R) < 1
  }

DJD_DA0 {;2001 David Dollevoet
  ;based on Chaotic Dualist 4 model by ???
  ;DJD_CB0 revised
  IF (REAL(P1) || IMAG(P1))
      P1R = REAL(P1), P1I = IMAG(P1)
    ELSE
      P1R = REAL(PIXEL), P1I = IMAG(PIXEL)
    ENDIF
  IF (P1R >= 0)
      P1RSGN = 1
    ELSE
      P1RSGN = -1
    ENDIF
  IF (P1I > 0)
      P1ISGN = 1
    ELSE
      P1ISGN = -1
    ENDIF
  P1RBAILOUT = ABS(P1R)*10
  IF (P1ISGN > 0)
      P1ISHIFTHURDLE = ABS(P1I)*10
      P1ISHIFTHURDLERESIZE = 1
    ELSE
      P1ISHIFTHURDLE = FLOOR(ABS(P1I)*10)
      P1ISHIFTHURDLERESIZE = ABS(P1I)*10-P1ISHIFTHURDLE+0.5
    ENDIF
  IF (REAL(P2) || IMAG(P2))
      P2R = REAL(P2), P2I = IMAG(P2)
    ELSE
      P2R = REAL(PIXEL), P2I = IMAG(PIXEL)
    ENDIF
  COUNT = 0, Z = 0, X = REAL(PIXEL) , Y = IMAG(PIXEL) , ORBIT = X*X+Y*Y
  :
  COUNT = COUNT+1
  IF (P1ISGN >= 0)
      SHIFTVAR = ORBIT
    ELSE
      SHIFTVAR = COUNT
    ENDIF
  IF (SHIFTVAR <= P1ISHIFTHURDLE)
      XX = 1-ABS(FN1(X-Y+1)), YY = 1-ABS(FN1(X+Y-1))      ;chaotic dualist 4
      X = FN2(XX)*P2R, Y = FN2(YY)*P2R
    ELSE
      IF (P1RSGN > 0)
          X = FN3(X)*P2I, Y = FN4(Y)*P2I
        ELSE
          X = FN3(X)+P2I, Y = FN4(Y)+P2I
        ENDIF
      COUNT = 0, P1ISHIFTHURDLE = P1ISHIFTHURDLE*P1ISHIFTHURDLERESIZE
      ENDIF
  Z = X+FLIP(Y)
  ORBIT = X*X+Y*Y
  ORBIT <= P1RBAILOUT
  }

DJD_DA1 {;2001 David Dollevoet
  ;based on Chuck Ebbert (Liar), ??? (Chaotic Dualist 4), David Dollevoet
  ;bailout is logical or plus minimum iteration count
  ;bailout above or below bailout value
  ;calculation shifts on iteration count
  ;shift value resizing
  ;bailout value resizing at calculation shifts
  ;multiple model selection
  ;multiple shift model selection
  IF (REAL(P1) || IMAG(P1))
      P1R = REAL(P1), P1I = IMAG(P1)
    ELSE
      P1R = REAL(PIXEL), P1I = IMAG(PIXEL)
    ENDIF
  IF (P1R >= 0)
      P1RSGN = 1
    ELSE
      P1RSGN = -1
    ENDIF
  IF (P1I >= 0)
      P1ISGN = 1
    ELSE
      P1ISGN = -1
    ENDIF
  P1RBAILOUT = 10^P1R
  P1ISHIFTCOUNT = FLOOR(ABS(P1I)*10)
  P1ISHIFTRESIZE = ABS(P1I)*10-P1ISHIFTCOUNT+0.5
  IF (REAL(P2) || IMAG(P2))
      P2R = REAL(P2), P2I = IMAG(P2)
    ELSE
      P2R = REAL(PIXEL), P2I = IMAG(PIXEL)
    ENDIF
  IF (REAL(P3) || IMAG(P3))
      P3R = REAL(P3), P3I = IMAG(P3)
    ELSE
      P3R = REAL(PIXEL), P3I = IMAG(PIXEL)
    ENDIF
  IF (P3R >= 0)
      P3RSGN = 1
    ELSE
      P3RSGN = -1
    ENDIF
  IF (P3I >= 0)
      P3ISGN = 1
    ELSE
      P3ISGN = -1
    ENDIF
  P3RMODEL = FLOOR(ABS(P3R))
  P3RMODELA = FLOOR(P3RMODEL/10)
  P3RMODELB = P3RMODEL-P3RMODELA*10
  P3RBAILOUTCOUNT = FLOOR((ABS(P3R)-P3RMODEL)*10)+1
  P3IBAILOUTRESIZE = ABS(P3I) 
  X = REAL(PIXEL), Y = IMAG(PIXEL)
  COUNT = 0, SHIFTEXECCOUNT = 0, SHIFTCOUNT = 0
  :
  COUNT = COUNT+1, SHIFTCOUNT = SHIFTCOUNT+1
  IF (SHIFTCOUNT <= P1ISHIFTCOUNT)
    IF (P3RMODELA == 0)
        XX = 1-ABS(Y-X)    , YY = 1-ABS(1-X-Y)      ;chuck ebbert (liar)
      ELSEIF (P3RMODELA == 1)
        XX = 1-ABS(X-Y+1)  , YY = 1-ABS(X+Y-1)      ;??? (chaotic dualist 4)
      ELSEIF (P3RMODELA == 2)
        XX = ABS(X+Y)-1    , YY = ABS(X-Y+1)        ;djd
      ELSEIF (P3RMODELA == 3)
        XX = 1-ABS(X+Y)    , YY = ABS(X-Y+1)        ;djd
      ELSEIF (P3RMODELA == 4)
        XX = ABS(X-Y)-1    , YY = ABS(X+Y-1)        ;djd
      ELSEIF (P3RMODELA == 5)
        XX = X-ABS(Y)+1    , YY = ABS(X+Y+1)        ;djd
      ELSEIF (P3RMODELA == 6)
        XX = X+ABS(Y)-1,   , YY = ABS(X-Y+1)        ;djd
      ELSEIF (P3RMODELA == 7)
        XX = X-ABS(Y)+1    , YY = ABS(X+Y-1)        ;djd
      ELSEIF (P3RMODELA == 8)
        XX = X-ABS(Y)-1    , YY = ABS(X+Y+1)        ;djd
      ELSE
        XX = 0             , YY = 0
      ENDIF
      X = FN1(XX)*P2R, Y = FN2(YY)*P2R              ;normal
    ELSE
      XX = X, YY = Y
      IF (P3RMODELB == 0)                           ;sierpinski
          X = FN3(XX)*P2I, Y = FN4(YY)*P2I
        ELSEIF (P3RMODELB == 1)
          IF (ABS(XX) > 0.5)
              X = XX*2-1
              Y = YY*2
            ELSE
              X = XX*2
              IF (ABS(YY) > 0.5)
                  Y = YY*2-1
                ELSE
                  Y = YY*2
                ENDIF
            ENDIF
            X = FN3(X)*P2I, Y = FN4(Y)*P2I
        ELSE
          X = 0          , Y = 0
        ENDIF
      Z = X+FLIP(Y)
      SHIFTEXECCOUNT = SHIFTEXECCOUNT+1, SHIFTCOUNT = 0
      IF (P1ISGN < 0)
        P1ISHIFTCOUNT = P1ISHIFTCOUNT*P1ISHIFTRESIZE
        ENDIF
      IF (P3ISGN < 0)
        P1RBAILOUT = P1RBAILOUT*P3IBAILOUTRESIZE
        ENDIF
    ENDIF
  IF(P3RSGN > 0)
      BAILOUTCOUNTFLAG = (COUNT>P3RBAILOUTCOUNT)
    ELSE
      BAILOUTCOUNTFLAG = (SHIFTEXECCOUNT>=P3RBAILOUTCOUNT)
    ENDIF
  AGAIN = -1
  IF (BAILOUTCOUNTFLAG < 1)
      AGAIN = 1
    ELSE
      IF (P1RSGN > 0)
          IF ( (ABS(X)<P1RBAILOUT) && (ABS(Y)<P1RBAILOUT) )
            AGAIN = 1
            ENDIF
        ELSE
          IF ( (ABS(X)>P1RBAILOUT) && (ABS(Y)>P1RBAILOUT) )
            AGAIN = 1
            ENDIF
        ENDIF
    ENDIF
  AGAIN > 0
}

DJD_DA1 {;2001 David Dollevoet
  ;based on Chuck Ebbert (Liar), ??? (Chaotic Dualist 4), David Dollevoet
  ;bailout is logical or plus minimum iteration count
  ;bailout above or below bailout value
  ;calculation shifts on iteration count
  ;shift value resizing
  ;bailout value resizing at calculation shifts
  ;multiple model selection
  ;multiple shift model selection
  IF (REAL(P1) || IMAG(P1))
      P1R = REAL(P1), P1I = IMAG(P1)
    ELSE
      P1R = REAL(PIXEL), P1I = IMAG(PIXEL)
    ENDIF
  IF (P1R >= 0)
      P1RSGN = 1
    ELSE
      P1RSGN = -1
    ENDIF
  IF (P1I >= 0)
      P1ISGN = 1
    ELSE
      P1ISGN = -1
    ENDIF
  P1RBAILOUT = 10^P1R
  P1ISHIFTCOUNT = FLOOR(ABS(P1I)*10)
  P1ISHIFTRESIZE = ABS(P1I)*10-P1ISHIFTCOUNT+0.5
  IF (REAL(P2) || IMAG(P2))
      P2R = REAL(P2), P2I = IMAG(P2)
    ELSE
      P2R = REAL(PIXEL), P2I = IMAG(PIXEL)
    ENDIF
  IF (REAL(P3) || IMAG(P3))
      P3R = REAL(P3), P3I = IMAG(P3)
    ELSE
      P3R = REAL(PIXEL), P3I = IMAG(PIXEL)
    ENDIF
  IF (P3R >= 0)
      P3RSGN = 1
    ELSE
      P3RSGN = -1
    ENDIF
  IF (P3I >= 0)
      P3ISGN = 1
    ELSE
      P3ISGN = -1
    ENDIF
  P3RMODEL = FLOOR(ABS(P3R))
  P3RMODELA = FLOOR(P3RMODEL/10)
  P3RMODELB = P3RMODEL-P3RMODELA*10
  P3RBAILOUTCOUNT = FLOOR((ABS(P3R)-P3RMODEL)*10)+1
  P3IBAILOUTRESIZE = ABS(P3I) 
  X = REAL(PIXEL), Y = IMAG(PIXEL)
  COUNT = 0, SHIFTEXECCOUNT = 0, SHIFTCOUNT = 0
  :
  COUNT = COUNT+1, SHIFTCOUNT = SHIFTCOUNT+1
  IF (SHIFTCOUNT <= P1ISHIFTCOUNT)
    IF (P3RMODELA == 0)
        XX = 1-ABS(Y-X)    , YY = 1-ABS(1-X-Y)      ;chuck ebbert (liar)
      ELSEIF (P3RMODELA == 1)
        XX = 1-ABS(X-Y+1)  , YY = 1-ABS(X+Y-1)      ;??? (chaotic dualist 4)
      ELSEIF (P3RMODELA == 2)
        XX = ABS(X+Y)-1    , YY = ABS(X-Y+1)        ;djd
      ELSEIF (P3RMODELA == 3)
        XX = 1-ABS(X+Y)    , YY = ABS(X-Y+1)        ;djd
      ELSEIF (P3RMODELA == 4)
        XX = ABS(X-Y)-1    , YY = ABS(X+Y-1)        ;djd
      ELSEIF (P3RMODELA == 5)
        XX = X-ABS(Y)+1    , YY = ABS(X+Y+1)        ;djd
      ELSEIF (P3RMODELA == 6)
        XX = X+ABS(Y)-1,   , YY = ABS(X-Y+1)        ;djd
      ELSEIF (P3RMODELA == 7)
        XX = X-ABS(Y)+1    , YY = ABS(X+Y-1)        ;djd
      ELSEIF (P3RMODELA == 8)
        XX = X-ABS(Y)-1    , YY = ABS(X+Y+1)        ;djd
      ELSE
        XX = 0             , YY = 0
      ENDIF
      X = FN1(XX)*P2R, Y = FN2(YY)*P2R              ;normal
    ELSE
      XX = X, YY = Y
      IF (P3RMODELB == 0)                           ;sierpinski
          X = FN3(XX)*P2I, Y = FN4(YY)*P2I
        ELSEIF (P3RMODELB == 1)
          IF (ABS(XX) > 0.5)
              X = XX*2-1
              Y = YY*2
            ELSE
              X = XX*2
              IF (ABS(YY) > 0.5)
                  Y = YY*2-1
                ELSE
                  Y = YY*2
                ENDIF
            ENDIF
            X = FN3(X)*P2I, Y = FN4(Y)*P2I
        ELSE
          X = 0          , Y = 0
        ENDIF
      Z = X+FLIP(Y)
      SHIFTEXECCOUNT = SHIFTEXECCOUNT+1, SHIFTCOUNT = 0
      IF (P1ISGN < 0)
        P1ISHIFTCOUNT = P1ISHIFTCOUNT*P1ISHIFTRESIZE
        ENDIF
      IF (P3ISGN < 0)
        P1RBAILOUT = P1RBAILOUT*P3IBAILOUTRESIZE
        ENDIF
    ENDIF
  IF(P3RSGN > 0)
      BAILOUTCOUNTFLAG = (COUNT>P3RBAILOUTCOUNT)
    ELSE
      BAILOUTCOUNTFLAG = (SHIFTEXECCOUNT>=P3RBAILOUTCOUNT)
    ENDIF
  AGAIN = -1
  IF (BAILOUTCOUNTFLAG < 1)
      AGAIN = 1
    ELSE
      IF (P1RSGN > 0)
          IF ( (ABS(X)<P1RBAILOUT) && (ABS(Y)<P1RBAILOUT) )
            AGAIN = 1
            ENDIF
        ELSE
          IF ( (ABS(X)>P1RBAILOUT) && (ABS(Y)>P1RBAILOUT) )
            AGAIN = 1
            ENDIF
        ENDIF
    ENDIF
  AGAIN > 0
}

DJD_DA2 {;2001 David Dollevoet
  ;based on Chuck Ebbert (Liar), ??? (Chaotic Dualist 4), David Dollevoet
  IF (ISMAND)
      P1R = REAL(PIXEL), P1I = IMAG(PIXEL)
    ELSE
      P1R = REAL(P1), P1I = IMAG(P1)
    ENDIF
  IF (P1R >= 0)
      P1RSGNBAILOUTTYPE = 1
    ELSE
      P1RSGNBAILOUTTYPE = -1
    ENDIF
  P1RBAILOUT = 10^P1R
  P1ISHIFT = FLOOR(ABS(P1I)*10)
  P1ISHIFTRESIZE = ABS(P1I)*10-P1ISHIFT+0.5
  IF (REAL(P2) || IMAG(P2))
      P2R = REAL(P2), P2I = IMAG(P2)
    ELSE
      P2R = REAL(PIXEL), P2I = IMAG(PIXEL)
    ENDIF
  IF (REAL(P3) || IMAG(P3))
      P3R = REAL(P3), P3I = IMAG(P3)
    ELSE
      P3R = REAL(PIXEL), P3I = IMAG(PIXEL)
    ENDIF
  P3RBAILOUTSHIFTINTERCOUNT = FLOOR(ABS(P3R))
  P3RBAILOUTCOUNT = (ABS(P3R)-P3RBAILOUTSHIFTINTERCOUNT)*10
  P3IBAILOUTRESIZE = ABS(P3I)
  P4R = REAL(P4)
  P4RMODEL = FLOOR(ABS(P4R))
  P4RMODELA = FLOOR(P4RMODEL/10)
  P4RMODELB = P4RMODEL-P4RMODELA*10
  X = REAL(PIXEL), Y = IMAG(PIXEL)
  COUNT = 0, SHIFTINTERCOUNT = 0, SHIFTINTRACOUNT = 0
  :
  COUNT = COUNT+1
  XX = X, YY = Y
  IF (SHIFTINTRACOUNT <= P1ISHIFT)
    SHIFTINTRACOUNT = SHIFTINTRACOUNT+1
    IF (P4RMODELA == 0)
      X = XX              , Y = YY
      ELSEIF (P4RMODELA == 1)
        IF (ABS(XX) > 0.5)                              ;sierpinski
            X = XX*2-1
            Y = YY*2
          ELSE
            X = XX*2
            IF (ABS(YY) > 0.5)
                Y = YY*2-1
              ELSE
                Y = YY*2
              ENDIF
          ENDIF
      ELSEIF (P4RMODELA == 2)
        X = 1-ABS(YY-XX)    , Y = 1-ABS(1-XX-YY)      ;chuck ebbert (liar)
      ELSEIF (P4RMODELA == 3)
        X = 1-ABS(XX-YY+1)  , Y = 1-ABS(XX+YY-1)      ;??? (chaotic dualist 4)
      ELSEIF (P4RMODELA == 4)
        X = ABS(XX+YY)-1    , Y = ABS(XX-YY+1)        ;djd
      ELSEIF (P4RMODELA == 5)
        X = 1-ABS(XX+YY)    , Y = ABS(XX-YY+1)        ;djd
      ELSEIF (P4RMODELA == 6)
        X = ABS(XX-YY)-1    , Y = ABS(XX+YY-1)        ;djd
      ELSEIF (P4RMODELA == 7)
        X = XX-ABS(YY)+1    , Y = ABS(XX+YY+1)        ;djd
      ELSEIF (P4RMODELA == 8)
        X = XX+ABS(YY)-1,   , Y = ABS(XX-YY+1)        ;djd
      ELSEIF (P4RMODELA == 9)
        X = XX-ABS(YY)+1    , Y = ABS(XX+YY-1)        ;djd
      ELSE
        X = XX              , Y = YY
      ENDIF
      X = FN1(X)*P2R        , Y = FN2(Y)*P2R
    ENDIF
  IF (SHIFTINTRACOUNT >  P1ISHIFT)
    SHIFTINTERCOUNT = SHIFTINTERCOUNT+1
    SHIFTINTRACOUNT = 0
    P1ISHIFT = P1ISHIFT*P1ISHIFTRESIZE
    P1RBAILOUT = P1RBAILOUT*P3IBAILOUTRESIZE
    IF (P4RMODELB == 0)
      X = XX              , Y = YY
      ELSEIF (P4RMODELB == 1)
        IF (ABS(XX) > 0.5)                              ;sierpinski
            X = XX*2-1
            Y = YY*2
          ELSE
            X = XX*2
            IF (ABS(YY) > 0.5)
                Y = YY*2-1
              ELSE
                Y = YY*2
              ENDIF
          ENDIF
      ELSEIF (P4RMODELB == 2)
        X = 1-ABS(YY-XX)    , Y = 1-ABS(1-XX-YY)      ;chuck ebbert (liar)
      ELSEIF (P4RMODELB == 3)
        X = 1-ABS(XX-YY+1)  , Y = 1-ABS(XX+YY-1)      ;??? (chaotic dualist 4)
      ELSEIF (P4RMODELB == 4)
        X = ABS(XX+YY)-1    , Y = ABS(XX-YY+1)        ;djd
      ELSEIF (P4RMODELB == 5)
        X = 1-ABS(XX+YY)    , Y = ABS(XX-YY+1)        ;djd
      ELSEIF (P4RMODELB == 6)
        X = ABS(XX-YY)-1    , Y = ABS(XX+YY-1)        ;djd
      ELSEIF (P4RMODELB == 7)
        X = XX-ABS(YY)+1    , Y = ABS(XX+YY+1)        ;djd
      ELSEIF (P4RMODELB == 8)
        X = XX+ABS(YY)-1,   , Y = ABS(XX-YY+1)        ;djd
      ELSEIF (P4RMODELB == 9)
        X = XX-ABS(YY)+1    , Y = ABS(XX+YY-1)        ;djd
      ELSE
        X = XX              , Y = YY
      ENDIF
      X = FN3(X)*P2I        , Y = FN4(Y)*P2I
    ENDIF
  Z = X+FLIP(Y)
  AGAIN = -1
  IF ( (SHIFTINTERCOUNT<P3RBAILOUTSHIFTINTERCOUNT) || (SHIFTINTRACOUNT<P3RBAILOUTCOUNT) )
      AGAIN = 1
    ELSE
      IF (P1RBAILOUTTYPE > 0)
          IF ( (ABS(X)<P1RBAILOUT) && (ABS(Y)<P1RBAILOUT) )    ;bailout over
            AGAIN = 1
            ENDIF
        ELSE
          IF ( (ABS(X)>P1RBAILOUT) && (ABS(Y)>P1RBAILOUT) )    ;bailout under
            AGAIN = 1
            ENDIF
        ENDIF
    ENDIF
  AGAIN > 0
}

DJD_EA0 {;2002 David Dollevoet
  ;newton + newton with offset
  IF (WHITESQ == 0)
      D = REAL(P1), R = IMAG(P1), C = 0
    ELSE
      D = REAL(P2), R = IMAG(P2), C = P3
    ENDIF
  D1 = D-1
  BAILOUTHURDLE = 1/(10^REAL(5))
  Z = PIXEL+C
  :
  ZOLD = Z
  Z1 = Z^D1
  Z = (D1*Z1*Z+R)/(D*Z1)
  ABS(Z-ZOLD) > BAILOUTHURDLE
}

DJD_EA1 {;2002 David Dollevoet
  ;newton + newton with offset + newton with offset
  SCRNPIXTOTAL = REAL(SCRNPIX)+IMAG(SCRNPIX)
  MODEL = SCRNPIXTOTAL-TRUNC(SCRNPIXTOTAL/REAL(3))*3
  IF (MODEL == 0)
      D = REAL(P1), R = IMAG(P1), C =0
    ELSEIF (MODEL == 1)
      D = REAL(P2), R = IMAG(P2), C = P3
    ELSEIF (MODEL == 2)
      D = REAL(P4), R = IMAG(P4), C = P5
    ELSE
      D = 0       , R = 0       , C = 0
    ENDIF
  D1 = D-1
  BAILOUTHURDLE = 1/(10^REAL(5))
  Z = PIXEL+C
  :
  ZOLD = Z
  Z1 = Z^D1
  Z = (D1*Z1*Z+R)/(D*Z1)
  ABS(Z-ZOLD) > BAILOUTHURDLE
}

DJD_EB0 {;2002 David Dollevoet
  ;modified B.E. Jones BJ-SG-3-03-g from modified Sylvie Gallet
  IF(ISMAND)
      Q1 = PIXEL
    ELSE
      Q1 = P1
    ENDIF
  IF (REAL(P2) || IMAG(P2))
      Q2 = P2
    ELSE
      Q2 = PIXEL
    ENDIF
  Z = PIXEL
  :
  ZR = REAL(Z), ZI = IMAG(Z)
  ZR1 = ZR-Q1*FN1(FN2(ZR)+Q2*FN3(ZI)), ZI1 = ZI-Q1*FN1(FN2(ZI)+Q2*FN3(ZR))
  Z = ZR1+FLIP(ZI1)
  |Z| <= 4
}

DJD_EC0 {;2002 David Dollevoet
  ;based on Chuck Ebbert (Liar), ??? (Chaotic Dualist 4), David Dollevoet
  IF (ISMAND)
      P1R = REAL(PIXEL), P1I = IMAG(PIXEL)
    ELSE
      P1R = REAL(P1), P1I = IMAG(P1)
    ENDIF
  IF (P1R >= 0)
      P1RMODELB = 1
    ELSE
      P1RMODELB = -1
    ENDIF
  P1RMODELA = FLOOR(ABS(P1R))
  P1RBAILOUTCOUNT = (ABS(P1R)-P1RMODELA)*100
  IF (REAL(P2) || IMAG(P2))
      P2R = REAL(P2), P2I = IMAG(P2)
    ELSE
      P2R = REAL(PIXEL), P2I = IMAG(PIXEL)
    ENDIF
  IF (P2R >= 0)
      P2RSGNBAILOVERUNDER = 1
    ELSE
      P2RSGNBAILOVERUNDER = -1
    ENDIF
  P2RBAILOUT = 10^P2R
  IF (P2I >= 0)
      P2ISGNSHIFTRESIZE = 1
    ELSE
      P2ISGNSHIFTRESIZE = -1
    ENDIF
  P2ISHIFTCOUNT = FLOOR(ABS(P2I)*10)
  P2ISHIFTRESIZE = ABS(P2I)*10-P2ISHIFTCOUNT+0.5
  IF (REAL(P3) || IMAG(P3))
      P3R = REAL(P3), P3I = IMAG(P3)
    ELSE
      P3R = REAL(PIXEL), P3I = IMAG(PIXEL)
    ENDIF
  X = REAL(PIXEL), Y = IMAG(PIXEL), Z = X+FLIP(Y)
  TOTALCOUNT = 0, SHIFTCOUNT = 0
  :
  TOTALCOUNT = TOTALCOUNT+1, SHIFTCOUNT = SHIFTCOUNT+1
  IF (SHIFTCOUNT <= P2ISHIFTCOUNT)
      IF (P1RMODELA == 0)
          XX = X             , YY = Y                 ;normal
        ELSEIF (P1RMODELA == 1)
            IF (ABS(X) > 0.5)                         ;sierpinski
                XX = X*2-1   , YY = Y*2
              ELSE
                XX = X*2
                 IF (ABS(Y) > 0.5)
                    YY = Y*2-1
                  ELSE
                    YY = Y*2
                  ENDIF
              ENDIF
        ELSEIF (P1RMODELA == 2)
          XX = 1-ABS(Y-X)    , YY = 1-ABS(1-X-Y)      ;chuck ebbert (liar)
        ELSEIF (P1RMODELA == 3)
          XX = 1-ABS(X-Y+1)  , YY = 1-ABS(X+Y-1)      ;??? (chaotic dualist 4)
        ELSEIF (P1RMODELA == 4)
          XX = ABS(X+Y)-1    , YY = ABS(X-Y+1)        ;david dollevoet
        ELSE
          XX = 0             , YY = 0
        ENDIF
      X = FN1(XX)*P3R, Y = FN2(YY)*P3I
    ELSE
      IF (P1RMODELB > 0)
          X = FN3(X)*P1I, Y = FN4(Y)*P1I
        ELSE
          X = FN3(Y)*P1I, Y = FN4(X)*P1I
        ENDIF
      SHIFTCOUNT = 0
      IF (P2ISGNSHIFTRESIZE < 0)
        P2ISHIFTCOUNT = P2ISHIFTCOUNT*P2ISHIFTRESIZE
        ENDIF
    ENDIF
  Z = X+FLIP(Y)
  AGAIN = 0
  IF (TOTALCOUNT < P1RBAILOUTCOUNT)
    AGAIN = AGAIN+1
    ENDIF
  IF (P2RSGNBAILOVERUNDER >= 0)
      IF ( (ABS(X)<P2RBAILOUT) && (ABS(Y)<P2RBAILOUT) )
        AGAIN = AGAIN+1
        ENDIF
    ELSE
      IF ( (ABS(X)>P2RBAILOUT) && (ABS(Y)>P2RBAILOUT) )
        AGAIN = AGAIN+1
        ENDIF
    ENDIF
  AGAIN > 0.5
}

DJD_EC1 {;2002 David Dollevoet
  ;based on Chuck Ebbert (Liar), ??? (Chaotic Dualist 4), David Dollevoet
  IF (ISMAND)
      P1R = REAL(PIXEL), P1I = IMAG(PIXEL)
    ELSE
      P1R = REAL(P1), P1I = IMAG(P1)
    ENDIF
  IF (P1R >= 0)
      P1RMODELB = 1
    ELSE
      P1RMODELB = -1
    ENDIF
  P1RMODELA = FLOOR(ABS(P1R))
  P1RBAILOUTCOUNT = (ABS(P1R)-P1RMODELA)*100
  IF (REAL(P2) || IMAG(P2))
      P2R = REAL(P2), P2I = IMAG(P2)
    ELSE
      P2R = REAL(PIXEL), P2I = IMAG(PIXEL)
    ENDIF
  IF (P2R >= 0)
      P2RSGNBAILOVERUNDER = 1
    ELSE
      P2RSGNBAILOVERUNDER = -1
    ENDIF
  P2RBAILOUT = 10^P2R
  IF (P2I >= 0)
      P2ISGNSHIFTRESIZE = 1
    ELSE
      P2ISGNSHIFTRESIZE = -1
    ENDIF
  P2ISHIFTCOUNT = FLOOR(ABS(P2I)*10)
  P2ISHIFTRESIZE = ABS(P2I)*10-P2ISHIFTCOUNT+0.5
  IF (REAL(P3) || IMAG(P3))
      P3R = REAL(P3), P3I = IMAG(P3)
    ELSE
      P3R = REAL(PIXEL), P3I = IMAG(PIXEL)
    ENDIF
  XOLD = 0, YOLD = 0
  X = REAL(PIXEL), Y = IMAG(PIXEL), Z = X+FLIP(Y)
  TOTALCOUNT = 0, SHIFTCOUNT = 0
  :
  TOTALCOUNT = TOTALCOUNT+1, SHIFTCOUNT = SHIFTCOUNT+1
  IF (SHIFTCOUNT <= P2ISHIFTCOUNT)
    XOLD = X, YOLD = Y
      IF (P1RMODELA == 0)
          XX = X             , YY = Y                 ;normal
        ELSEIF (P1RMODELA == 1)
            IF (ABS(X) > 0.5)                         ;sierpinski
                XX = X*2-1   , YY = Y*2
              ELSE
                XX = X*2
                 IF (ABS(Y) > 0.5)
                    YY = Y*2-1
                  ELSE
                    YY = Y*2
                  ENDIF
              ENDIF
        ELSEIF (P1RMODELA == 2)
          XX = 1-ABS(Y-X)    , YY = 1-ABS(1-X-Y)      ;chuck ebbert (liar)
        ELSEIF (P1RMODELA == 3)
          XX = 1-ABS(X-Y+1)  , YY = 1-ABS(X+Y-1)      ;??? (chaotic dualist 4)
        ELSEIF (P1RMODELA == 4)
          XX = ABS(X+Y)-1    , YY = ABS(X-Y+1)        ;david dollevoet
        ELSE
          XX = 0             , YY = 0
        ENDIF
      X = FN1(XX)*P3R, Y = FN2(YY)*P3I
    ELSE
      IF (P1RMODELB > 0)
          X = FN3(X+XOLD*P1I), Y = FN4(Y+YOLD*P1I)
        ELSE
          X = FN3(X+YOLD*P1I), Y = FN4(Y+XOLD*P1I)
        ENDIF
      SHIFTCOUNT = 0
      IF (P2ISGNSHIFTRESIZE < 0)
        P2ISHIFTCOUNT = P2ISHIFTCOUNT*P2ISHIFTRESIZE
        ENDIF
    ENDIF
  Z = X+FLIP(Y)
  AGAIN = 0
  IF (TOTALCOUNT < P1RBAILOUTCOUNT)
    AGAIN = AGAIN+1
    ENDIF
  IF (P2RSGNBAILOVERUNDER >= 0)
      IF ( (ABS(X)<P2RBAILOUT) && (ABS(Y)<P2RBAILOUT) )
        AGAIN = AGAIN+1
        ENDIF
    ELSE
      IF ( (ABS(X)>P2RBAILOUT) && (ABS(Y)>P2RBAILOUT) )
        AGAIN = AGAIN+1
        ENDIF
    ENDIF
  AGAIN > 0.5
}

DJD_ED0 {;2002 David Dollevoet
  ;based on Chuck Ebbert (Liar), ??? (Chaotic Dualist 4), David Dollevoet
  IF (ISMAND)
      P1R = REAL(PIXEL), P1I = IMAG(PIXEL)
    ELSE
      P1R = REAL(P1), P1I = IMAG(P1)
    ENDIF
  IF (P1R >= 0)
      P1RMODELB = 1
    ELSE
      P1RMODELB = -1
    ENDIF
  P1RMODELA = FLOOR(ABS(P1R))
  P1RBAILOUTCOUNT = (ABS(P1R)-P1RMODELA)*100
  IF (REAL(P2) || IMAG(P2))
      P2R = REAL(P2), P2I = IMAG(P2)
    ELSE
      P2R = REAL(PIXEL), P2I = IMAG(PIXEL)
    ENDIF
  IF (P2R >= 0)
      P2RSGNBAILOVERUNDER = 1
    ELSE
      P2RSGNBAILOVERUNDER = -1
    ENDIF
  P2RBAILOUT = 10^P2R
  IF (P2I >= 0)
      P2ISGNSHIFTRESIZE = 1
    ELSE
      P2ISGNSHIFTRESIZE = -1
    ENDIF
  P2ISHIFTCOUNT = FLOOR(ABS(P2I)*10)
  P2ISHIFTRESIZE = ABS(P2I)*10-P2ISHIFTCOUNT+0.5
  IF (REAL(P3) || IMAG(P3))
      P3R = REAL(P3), P3I = IMAG(P3)
    ELSE
      P3R = REAL(PIXEL), P3I = IMAG(PIXEL)
    ENDIF
  X = REAL(PIXEL), Y = IMAG(PIXEL), Z = X+FLIP(Y)
  TOTALCOUNT = 0, SHIFTCOUNT = 0
  :
  TOTALCOUNT = TOTALCOUNT+1, SHIFTCOUNT = SHIFTCOUNT+1
  IF (SHIFTCOUNT <= P2ISHIFTCOUNT)
      IF (P1RMODELA == 0)
          XX = X             , YY = Y                 ;normal
        ELSEIF (P1RMODELA == 1)
            IF (ABS(X) > 0.5)                         ;sierpinski
                XX = X*2-P1I , YY = Y*2
              ELSE
                XX = X*2
                 IF (ABS(Y) > 0.5)
                    YY = Y*2-P1I
                  ELSE
                    YY = Y*2
                  ENDIF
              ENDIF
        ELSEIF (P1RMODELA == 2)
          XX = 1-ABS(Y-X)    , YY = 1-ABS(P1I-X-Y)    ;chuck ebbert (liar)
        ELSEIF (P1RMODELA == 3)
          XX = 1-ABS(X-Y+P1I), YY = 1-ABS(X+Y-P1I)    ;??? (chaotic dualist 4)
        ELSEIF (P1RMODELA == 4)
          XX = ABS(X+Y)-1    , YY = ABS(X-Y+P1I)      ;david dollevoet
        ELSE
          XX = 0             , YY = 0
        ENDIF
      X = FN1(XX)*P3R, Y = FN2(YY)*P3R
    ELSE
      IF (P1RMODELB > 0)
          X = FN3(X)*P3I, Y = FN4(Y)*P3I
        ELSE
          X = FN3(Y)*P3I, Y = FN4(X)*P3I
        ENDIF
      SHIFTCOUNT = 0
      IF (P2ISGNSHIFTRESIZE < 0)
        P2ISHIFTCOUNT = P2ISHIFTCOUNT*P2ISHIFTRESIZE
        ENDIF
    ENDIF
  Z = X+FLIP(Y)
  AGAIN = 0
  IF (TOTALCOUNT < P1RBAILOUTCOUNT)
    AGAIN = AGAIN+1
    ENDIF
  IF (P2RSGNBAILOVERUNDER >= 0)
      IF ( (ABS(X)<P2RBAILOUT) && (ABS(Y)<P2RBAILOUT) )
        AGAIN = AGAIN+1
        ENDIF
    ELSE
      IF ( (ABS(X)>P2RBAILOUT) && (ABS(Y)>P2RBAILOUT) )
        AGAIN = AGAIN+1
        ENDIF
    ENDIF
  AGAIN > 0.5
}

DJD_FA0 {;2003 David Dollevoet
  IF (ISMAND)
      P1R = REAL(PIXEL), P1I = IMAG(PIXEL)
    ELSE
      P1R = REAL(P1), P1I = IMAG(P1)
    ENDIF
  IF (P1R >= 0)
      Q1R = 1
    ELSE
      Q1R = -1
    ENDIF
  R1R = ABS(P1R)
  BAILOUT = (SQR(R1R*10))*2
  IF (REAL(P2) || IMAG(P2))
      P2R = REAL(P2), P2I = IMAG(P2)
    ELSE
      P2R = REAL(PIXEL), P2I = IMAG(PIXEL)
    ENDIF
  Q2I = P2I*10
  Z = PIXEL
  :
  X = REAL(Z), Y = IMAG(Z)
  XX = FN1((X+P2R)^Q2I), YY = FN1((Y+P2R)^Q2I)
  X = X+YY*P1I, Y = Y+XX*P1I*Q1R
  Z = X+FLIP(Y)
  X*X+Y*Y < BAILOUT
}

DJD_GA0 {;2004 David Dollevoet
  ;inspired by Chuck Ebbert liar models
  IF (ISMAND)
      P1R = REAL(PIXEL), P1I = IMAG(PIXEL)
    ELSE
      P1R = REAL(P1), P1I = IMAG(P1)
    ENDIF
  IF (P1R >= 0)
      P1RSGN = 1
    ELSE
      P1RSGN = -1
    ENDIF
  BAILOUT = ABS(P1R)*10
  Z = PIXEL, X = REAL(Z), Y = IMAG(Z)
  :
  XX = FN1(1-ABS(Y-X))*P1RSGN      , YY = FN2(1-ABS(1-X-Y))*P1I
  X = XX, Y = YY
  Z = X+FLIP(Y)
  X*X+Y*Y < BAILOUT
}
