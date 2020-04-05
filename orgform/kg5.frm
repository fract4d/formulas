;
;       These formulafiles are from Karl Geigl 100327,156. 
;
;

   501 = {
   z = 0,  c = pixel:
   z = (((z^p1 + p1)^p1) * (z*(z^p1-p1))) + c
   |z| < 11;
}

   502 = {
   z = 0,  c = pixel:
   z = (((z^p2 + p1)^p1) * (z*(z^p2-p1))) + c
   |z| < 11;
}

   503 = {
   z = pixel,  c = 0:
   z = (((z^p1 + p1)^p1) / (z*(z^p1-p1))) + c
   |z| < 11;
}

   504 = {
   z = pixel,  c = 0:
   z = (((z^p2 + p1)^p1) / (z/(z^p2-p1))) + c
   |z| < 11;
}

   505 = {
   z = c = pixel:
   z = (((z^p1 + p1)^p1) / (z*(z^p2-p1))) * c
   |z| < 11;
}

   506 = {
   z = c = pixel:
   z = (((z^p1 + p1)^p1) + (z*(z^p2-p1))) * c
   |z| < 11;
}

   507 = {
   z = c = pixel:
   z = (((z^p2 + p1)^p2) / (z*(z^p2-p1))) + c
   |z| < 11;
}

   508 = {
   z = c = pixel:
   z = (((z^p2 + p1)^p2) - (z*(z^p2-p1))) + c
   |z| < 11;
}

