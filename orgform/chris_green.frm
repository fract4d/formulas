CGNewton3 {; Chris Green -- A variation on newton iteration.
      ; The initial guess is fixed at (1,1), but the equation solved
      ; is different at each pixel ( x^3-pixel=0 is solved).
      ; Use floating point.
      ; Try P1=1.8.
  z=(1,1):
   z2=z*z
   z3=z*z2
   z=z-p1*(z3-pixel)/(3.0*z2)
    0.0001 < |z3-pixel|
  }
