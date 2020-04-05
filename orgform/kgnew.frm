;
;       These formulafiles are from Karl Geigl 100327,156. 
;
;

001 = {
   z = c = pixel:
   z = ((z*z+1)^2 / z*(z*z-1)) * c ;
  |z| <=1
}

   001j = {
   z = c = pixel:
   z = ((z*z+1)^2 / z*(z*z-1)) * c ;
  |c| <=1
}

   002 = {
   z = c = pixel:
   z = (z*z-1)^2 / z*(z*z+1) * c ;
  |z| <=1
}

   003 = {
   z = c = pixel:
   z = (z*z+1)^(-2) / z*(z*z-1) * c ;
  |z| <=1
}

   004 = {
   z = c = pixel:
   z = (z*z+1)^2 / z*(c*z-1) * c ;
  |z| <=1
}

   005 = {
   z = c = pixel:
   z = (z*z-1)^2 / z*(c*c+1) * c ;
  |z| <=1
}

   006 = {
   z = c = pixel:
   z = (z*z+1)^(-2) / z*(c*c-1) * z ;
  |z| <=1
}

   007 = {
   z = c = pixel:
   z = (z*z+1)^2 / z*(z*z-1) / c ;
  |z| <=1
}

   008 = {
   z = c = pixel:
   z = (z*z-1)^2 / z*(z*z+1) ^ c ;
  |z| <=1
}

   009 = {
   z = c = pixel:
   z = (z*z+1)^(-2) / z*(z*z-1)  ;
  |z| <=1
}

   010 = {
   z = c = pixel:
   z = (z*z+1)^2 / z*(c*z-1) / c ;
  |z| <=1
}

   011 = {
   z = c = pixel:
   z = (z*z-1)^2 / z*(c*c+1) + c ;
  |z| <=1
}

   012 = {
   z = c = pixel:
   z = (z*z+1)^(-2) / z*(c*c-1) - z ;
  |z| <=1
}

   013 = {
   z = c = pixel:
   z = (z*z + (c-1))^2 / (2*z + (c-1)) ;
  |z| <=1
}

   014 = {
   z = c = pixel:
   z = (z*z - (c-1))^2 / (2*z + (c-1)) ;
  |z| <=1
}

   015 = {
   z = c = pixel:
   z = (z*z + (c+1))^2 / (2*z + (c-1)) ;
  |z| <=1
}

   016 = {
   z = c = pixel:
   z = (z*z + (c-1))^2 / (2*z - (c-1)) ;
  |z| <=1
}

   017 = {
   z = c = pixel:
   z = (z*z + (c-1))^2 / (2*z - (c+1)) ;
  |z| <=1
}


