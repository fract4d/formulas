;
;       These formulafiles are from Karl Geigl 100327,156. 
;
;

   201 = {
   z = pixel:
   z = (z-1) * (z+1/2) / (z*z+1)/2
   z < 5;
}

   202 = {
   z = pixel:
   z = (z-1) * (z+1/2)^(z*z-1)/2
   z < 5;
}

   203 = {
   z = pixel:
   z = (z+1) * (z-1/2) * (z*z+1)/2
   z < 5;
}

   204 = {
   z = pixel:
   z = (z+1) * (z-1/2) * (z*z-1)/2
   z < 5;
}

   205 = {
   z = pixel:
   z = (z-1) * (z+1/2) * (z*z+1)
   z < 5;
}

   206 = {
   z = pixel:
   z = (z-1) * (z+1/2) * (z*z-1)
   z < 5;
}

   207 = {
   z = pixel:
   z = (z+1) * (z-1/2) * (z*z+1)
   z < 5;
}

   208 = {
   z = pixel:
   z = (z+1) * (z-1/2) * (z*z-1)
   z < 5;
}

   209 = {
   z = pixel:
   z = (z-5/4) * (z+2/3) * (z*z-1)
   z < 5;
}

   210 = {
   z = pixel:
   z = (z+5/4) * (z-2/3) * (z*z+1)
   z < 5;
}

   211 = {
   z = pixel:
   z = (z+22/7) * (z-22/7) * (z*z-1)
   z < 5;
}

   212 = {
   z = 1+pixel:
   z = (z+22/7) * (z-22/7) * (z*z-1)
   z < 5;
}

   213 = {
   z = 1/pixel:
   z = (z+22/7) * (z-22/7) * (z*z-1)
   z < 5;
}

   214 = {
   z = (1/pixel)^3:
   z = (z+22/7) * (z-22/7) 
   z < 5;
}

   215 = {
   z = (1/pixel)^3:
   z = (z+22/7) / (z-22/7) 
   z < 5;
}

   216 = {
   z = pixel:
   z = z * (1-z) * c 
   z < 2;
}

   217 = {
   z = pixel:
   z = z * (1+z) * c 
   z < 3;
}
