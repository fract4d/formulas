Phoenix2-1 {
;This is the Phoenix formula as described by 
;Shigehiro Ushiki.  The other formulas come from
;Fractal programming in C.
  z = pixel,
  zold = (0.0, 0.0):
  zt = z * z + 0.56667 - 0.5 * zold,
  zold = z,
  z = zt;
  |z| < 4
  }

Phoenix2-2 {
  z = pixel,
  zold = (0.0, 0.0):
  zt = z * z + 0.288732 + 0.510029 * zold,
  zold = z,
  z = zt;
  |z| < 4
  }

Phoenix2-3 {
  z = pixel,
  zold = (0.0, 0.0):
  zt = z * z + 0.356338 - 1.209169 * zold,
  zold = z,
  z = zt;
  |z| < 4
  }

Phoenix2-4 {
  z = pixel,
  zold = (0.0, 0.0):
  zt = z * z - 0.550704 - 1.255014 * zold,
  zold = z,
  z = zt;
  |z| < 4
  }



Readme {
; This Fractint .FRM file (c) 1993 by:
;
; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
;
; Michael G. Wareman
; P.O. Box 1856
; Olds, Alberta, Canada
; T0M 1P0
;
}

