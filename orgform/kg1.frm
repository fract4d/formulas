;
;       These formulafiles are from Karl Geigl 100327,156. 
;
;

   101 = {
   z = pixel, c = p1/pixel:
   z = z*z*c + z*c*c;
  |z| <= p2
}


   102 = {
   z = p1/pixel, c = fn1(z):
   z = (z*z) + c;
   z = z*z/c;
   z <= p2 
}
 
   103 = {
   z = pixel, c = p1/pixel:
   z =( (fn1(z) / c) + (fn2(z))^2) * z;
   z <=p2
} 

   104 = {
   z = p1/pixel, x = fn1(z):
   z = (z*z) + x;
   z = z*p2/x; 
    z <= 4
}

   105 = {
   z = pixel:
   z = fn1 (p1/fn2(z));
   fn1 < p2;

}
   106 = {
   z = pixel, c = p1/pixel:
   z = fn1 (fn2(c)*z) * fn1 (-z);
   z <= p2
}

   107 = {
   z = pixel^0.5:
   z = sqr (1/fn1(z)) * sqr (fn2(z));
   fn1 < 50;
   fn2 = 2*fn1
}

   108 = {
   z = pixel^0.5:
   z = (((z*z) + (c-p1)) / ((z+z) + (c-p1)))^2;
   z <=p2;
}   

   109 = {
   z = pixel, c = fn1(pixel):
   z = z*z + c;
   z <= p1;
}

   110 = {
   z = pixel, c = fn1 (pixel):
   z = c*c +z;
   z <= p1
}

   111 = {
   z = c = fn1 (pixel):
   z = z*z + c;
   z <=2
}

   112 = {
   z = pixel:
   z = z^z + z^p1 + c;
   z <= p2
}

   113 = {
   z = pixel:
   z = z^z - z^p1 + c;
   z <= p2
}

   114 = {
   z = pixel:
   z = z^z + z^p1 - c;
   z <= p2
}

   115 = {
   z = pixel:
   z = fn1(z^z) + z^p1 + c;
   z <= p2
}

   116 = {
   z = pixel:
   z = fn1(z) + z^p1 + c;
   z <= p2 
}

   117 = {
   z = pixel:
   z = fn1(z^z) + fn2(z^p1) + c;
   z <= p2
}

   118 = {
   z = pixel:
   z = fn1(z^p1) - c;
   z <=2
}

   119 = {
   z = pixel:
   z = fn1(z^5) + c;
   z <=2
}
