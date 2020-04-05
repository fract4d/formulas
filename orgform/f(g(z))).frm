FGZ   {
;Check out the text file FGZ.DOC for 
;full details on this fractal family.
      z = c = pixel:
         z = z * z + c;
         z = (3 * z * z) / (z + 3) + c,
      |z| <= 4
   }

FGZ-color-test   {
      z = c = pixel:
         z = z * z + c;
         z = (3 * z * z) / (z + 3) + c,
      |real(z)| <= 50;
      |imag(z)| <= 50
   }

FGZ-alternate-test   {
      z = c = pixel:
         z = z * z + c;
         z = (3 * z * z) / (z + 3) + c,
      |real(z)| + |imag(z)| >= 100;
   }

FGZ-Internals   {
      z = c = pixel:
         z = z * z + c;
         z = (3 * z * z) / (z + 3) + c,
      |real(z)| <= 4
   }

FGZ-4   {
      z = c = pixel:
         z = z * z + c;
         z = (4 * z * z) / (z + 4) + c,
      |z| <= 4
   }

FGZ-2   {
      z = c = pixel:
         z = z * z + c;
         z = (2 * z * z) / (z + 2) + c,
      |z| <= 4
   }

FGZ-5   {
      z = c = pixel:
         z = z * z + c;
         z = (5 * z * z) / (z + 5) + c,
      |z| <= 4
   }

FGZ-1   {
      z = c = pixel:
         z = z * z + c;
         z = (1 * z * z) / (z + 1) + c,
      |z| <= 4
   }

FGZ_-1   {
      z = c = pixel:
         z = z * z + c;
         z = ((-1, 0) * z * z) / (z - 1) + c,
      |z| <= 4
   }

FGZ-05   {
      z = c = pixel:
         z = z * z + c;
         z = (0.5 * z * z) / (z + 0.5) + c,
      |z| <= 4
   }

FGZ-Imag-3   {
      z = c = pixel:
         z = z * z + c;
         z = ((0, 3) * z * z) / (z + (0, 3)) + c,
      |z| <= 4
   }

FGZ-Both-3   {
      z = c = pixel:
         z = z * z + c;
         z = ((3, 3) * z * z) / (z + (3, 3)) + c,
      |z| <= 4
   }

FGZ-Both_-1   {
      z = c = pixel:
         z = z * z + c;
         z = ((-1, -1) * z * z) / (z + (-1, -1)) + c,
      |z| <= 4
   }

FGZ-Alt   {
      z = c = pixel:
         z = z * z + c;
         z = (c * z * z) / (z + c) + c,
      |z| <= 4
   }

FGZ-Julia   {
      z = c = pixel:
         z = z * z + (-0.6882, -0.1729);
         z = (3 * z * z) / (z + 3) + (-0.6882, -0.1729),
      |z| <= 4
   }

comment = {
   NOTE: that Julia sets where only one of the c variables is changed results in distorted Julia sets.  I suspect this is because one of the variables is still changing.  Whereas, Julias are the result of unchanging "c" values.
   }

comment = {
   This Julia looks like a multi-limbed snake.
   }

FGZ-Julia-1   {
      z = c = pixel:
         z = z * z + (-0.6882, -0.1729);
         z = (3 * z * z) / (z + 3) + c,
      |z| <= 4
   }

FGZ-Julia-2   {
      z = c = pixel:
         z = z * z + (-0.2483, 0.7406);
         z = (3 * z * z) / (z + 3) + (-0.2483, 0.7406),
      |z| <= 4
   }

FGZ-Julia-3   {
      z = c = pixel:
         z = z * z + (-1.4078, 0.0222);
         z = (3 * z * z) / (z + 3) + (-1.4078, 0.0222),
      |z| <= 4
   }

FGZ-Julia-4   {
      z = c = pixel:
         z = z * z + (-0.6904, 0.2958);
         z = (3 * z * z) / (z + 3) + (-0.6904, 0.2958),
      |z| <= 4
   }

FGZ-Julia-5   {
      z = c = pixel:
         z = z * z + (-1.1266, 0.2666);
         z = (3 * z * z) / (z + 3) + (-1.1266, 0.2666),
      |z| <= 4
   }

FGZ-Julia-6   {
      z = c = pixel:
         z = z * z + (-0.97, 0.2709);
         z = (3 * z * z) / (z + 3) + (-0.97, 0.2709),
      |z| <= 4
   }

FGZ-Julia-7   {
      z = c = pixel:
         z = z * z + (-0.6908, 0.1185);
         z = (3 * z * z) / (z + 3) + (-0.6908, 0.1185),
      |z| <= 4
   }

FGZ-Julia-8   {
      z = c = pixel:
         z = z * z + (-0.5892, 0.0549);
         z = (3 * z * z) / (z + 3) + (-0.5892, 0.0549),
      |z| <= 4
   }

FGZ-Julia-9   {
      z = c = pixel:
         z = z * z + (-0.4919, 0.4572);
         z = (3 * z * z) / (z + 3) + (-0.4919, 0.4572),
      |z| <= 4
   }

FGZ-Julia-10  {
      z = c = pixel:
         z = z * z + (-0.3861, 0.5291);
         z = (3 * z * z) / (z + 3) + (-0.3861, 0.5291),
      |z| <= 4
   }

FGZ-Julia-11  {
      z = c = pixel:
         z = z * z + (-0.2084, 0.6731);
         z = (3 * z * z) / (z + 3) + (-0.2084, 0.6731),
      |z| <= 4
   }

FGZ-Julia-12  {
      z = c = pixel:
         z = z * z + (0.2148, 0.5757);
         z = (3 * z * z) / (z + 3) + (0.2148, 0.5757),
      |z| <= 4
   }

FGZ-Julia-13  {
      z = c = pixel:
         z = z * z + (0.3544, 0.4021);
         z = (3 * z * z) / (z + 3) + (0.3544, 0.4021),
      |z| <= 4
   }

FGZ-Julia-14  {
      z = c = pixel:
         z = z * z + (-0.1, 0.1);
         z = (3 * z * z) / (z + 3) + (-0.1, 0.1),
      |z| <= 4
   }

FGZ-Julia-15  {
      z = c = pixel:
         z = z * z + (-0.5, 0.5);
         z = (3 * z * z) / (z + 3) + (-0.5, 0.5),
      |z| <= 4
   }

FGZ-Julia-16  {
      z = c = pixel:
         z = z * z + (0.3379, -0.03413);
         z = (3 * z * z) / (z + 3) + (0.3379, -0.03413),
      |z| <= 4
   }

FGZ-Julia-17  {
      z = c = pixel:
         z = z * z + (0.3379, 0);
         z = (3 * z * z) / (z + 3) + (0.3379, 0),
      |z| <= 4
   }

FGZ-Julia-18  {
      z = c = pixel:
         z = z * z + (0.355, 0);
         z = (3 * z * z) / (z + 3) + (0.355, 0),
      |z| <= 4
   }

FGZ-Julia-19  {
      z = c = pixel:
         z = z * z + (0.322, 0);
         z = (3 * z * z) / (z + 3) + (0.322, 0),
      |z| <= 4
   }

FGZ-Julia-20  {
      z = c = pixel:
         z = z * z + (0, 1);
         z = (3 * z * z) / (z + 3) + (0, 1),
      |z| <= 4
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