;
;       These formulafiles are from Karl Geigl 100327,156. 
;
;

   fish = {
   z = c = pixel:
   z = (z-1) * (c+1);
  |z| <=1
}

   001 = {
   z = c = pixel:
   z = z*z*c + z*c*c;
  |z| <=1
}

   002 = {
   z = pixel, c = sin(z):
   z = (z*z) + c;
   z = z*z/c;
   z <=4 
}
 
   003 = {
   z = c = pixel:
   z =( (sin(z) / c) + (cos(z))^2) * z;
   z <=1
} 

   004 = {
   z = pixel, x = sin(z):
   z = (z*z) + x;
   z = z*1/x; 
    z <= 4
}

   005 = {
   z = pixel
   z = log (1 / fn1(z));
   fn1 < 50
}

   006 = {
   z = c = 1/pixel:
   z = sin (sqr(c)*z) * sin (-z);
   z <= 1
}

   007 = {
   z = pixel:
   z = sqr (1 / fn1(z)) * sqr (fn2(z));
   fn1 <= 50;
}

   008 = {
   z = pixel:
   z = sqr (1/fn1(z)) * sqr (fn2(z));
   fn1 <=100;
   fn2 = 2*fn1;
}

   009 = {
   z = pixel:
   z = z*(z-1) + c;
   z <= 2;
}

   010 = {
   z = c = fn1(pixel):
   z = z*z + c;
   z < 2;
}

   011 = {
   z = pixel:
   c = sqr(pixel)/z;
   c = z+c;
   z = sqr(pixel*c),
   z < 2;
}

   012 = {
   z = abs (pixel):
   z = fn1 (z^p1);
   z < 2;
}

   013 = {
   z = c = pixel:
   z = z*z - c;
   z < 2;
}

   014 = {
   z = c = pixel:
   z = p1 / fn1(z) + p2 * fn2(c);
   z < 2;
}

   015 = {
   z = c = pixel:
   z = z*z + sqr (c);
   z < 2;
}

   016 = {
   z = c = pixel:
   z = z^(10/3) + c;
   z < 3;
}

   017 = {
   z = pixel:
   z = p1 * z * fn1(z)  + p2 * z;
   z <=2
}

   018 = {
   z = pixel:
   z = fn1(z) * z;
}

   019 = {
   z = c = pixel:
   z = fn1(z) + z*z+c;
}

   020 = {
   z = pixel:
   z = fn1(z*z);
}

   021 = {
   z = c = pixel:
   z = fn1(z) * c;
}

   022 = {
   z = c = pixel:
   z = fn1(z) - z*z+c;
   z < 2;
}

   023 = {
   z = pixel:
   z = (1/fn1(z))^2;
}  
   024 = {
   z = pixel:
   z = (z-1) * (z+1/2) +c
   z < 5;
}

   025 = {
   z = pixel:
   z = (z-1) * (z+1/2) * (z*z+1)/2
   z < 5;
}
