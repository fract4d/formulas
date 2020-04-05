BESSEL-1 {
  ;This formula, and BESSEL-2 to BESSEL-4 are based on 
  ;formulas taken from the article on bessels from the
  ;Encyclopedia of Science.
      c = z = pixel:
         z = sin(z) / z * pixel,
      |z| <= 100
}

BESSEL-2 {
      c = z = pixel:
         z = cos(z) / z + pixel,
      |z| <= 100
}
BESSEL-3 {
       c = z = pixel:
          z = -cos(z) / z + sin(z) / (z * z) + pixel,
      |z| <= 100
}
BESSEL-4 {
       c = z = pixel:
          z = -sin(z) / z - cos(z) / (z * z) + pixel,
      |z| <= 100
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

