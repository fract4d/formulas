;
;       These formulafiles are from Karl Geigl 100327,156. 
;
;

   1001 = {
   z = pixel:
   z = z^(z+p1) + c;
  |z| <= p2
}


   1002 = {
   z = pixel:
   z = z^(z+p1) + p1^c;
  |z| <= p2
}


   1003 = {
   z = pixel:
   z = z^(z+p1) - c;
  |z| <= p2
}


   1004 = {
   z = pixel:
   z = z^(z+p1) / c;
  |z| <= p2
}


   1005 = {
   z = pixel:
   z = z^(z-p1) + c;
  |z| <= p2
}


   1006 = {
   z = pixel:
   z = z^(z-p1) - c;
  |z| <= p2
}

