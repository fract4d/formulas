Cubic {
;This group of fractals were created in an attempt to
;find other tests.  The only one that seemed to produce
;anything of interest was:  |z - pixel| < some_value.
  z = c = pixel:
  z = 0.2 * z ^ 3 + z ^ 2 + c;
  |z - pixel| < 4
  }

Cubic_alt {
  z = c = pixel:
  z = z ^ 3 + z ^ 2;
  |z - pixel| < 4
  }

Cubic_reg {
  z = c = pixel:
  z = 0.2 * z ^ 3 + z ^ 2 + c;
  |z| < 4
  }

Quad {
  z = c = pixel,
  zv = (1.0, 0.4):
  zsqr = z * z,
  z = 0.25 * zsqr * zsqr + (zv / 3) * zsqr * z - 0.5 * zsqr + zv * z;
  |z - pixel| < 4
  }

Quad_regular {
  z = c = pixel,
  zv = (1.0, 0.4):
  zsqr = z * z,
  z = 0.25 * zsqr * zsqr + (zv / 3) * zsqr * z - 0.5 * zsqr + zv * z;
  |z| < 4
  }

Mandel_alt {
  z = c = pixel:
  z = z * z + c;
  |z - pixel| < 4
  }

Triple_alt {
  z = c = pixel:
  z = z * z * z + c;
  |z - pixel| < 4
  }

Quad_Alt {
  z = c = pixel:
  z = z * z * z * z + c;
  |z - pixel| < 4
  }

Mandel_alt_3 {
  z = c = pixel:
  z = z * z + c;
  |z + pixel| < 4
  }

Mandel_Other {
  z = c = pixel,
  z = z * z * z * z + c;
  |z| < |c|
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