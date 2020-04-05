;
;       These formulafiles are from Karl Geigl 100327,156. 
;
;

kgexp1 = { 
   z = Pixel:
   z = z ^ 2.71828182845905 + c + pixel,
   |z| <= 100 
}

kgexp2 = { 
   z = Pixel, c=fn1(z) :
   z = z ^ 2.71828182845905 - c + pixel,
   |z| <= 100 
}

kgexp3 = { 
   z = Pixel, c=fn1(z) :
   z = z ^ 2.71828182845905 + c * pixel,
   |z| <= 100 
}

kgexp4 = { 
   z = Pixel, c=fn1(z) :
   z = z ^ 2.71828182845905 + c ^ pixel,
   |z| <= 100 
}

kgexp5 = { 
   z = Pixel:
   z = z ^0.5 * z ^ 2.71828182845905 + c + pixel,
   |z| <= 100 
}

kgexp6 = { 
   z = Pixel:
   z = c ^ 2.71828182845905 * z ^ pixel,
   |z| <= 100 
}

kgexp7 = { 
   z = Pixel:
   z = z + c - 2.71828182845905 ^z,
   |z| <= 100 
}

kgexp8 = { 
   z = Pixel:
   z = z ^ 2.71828182845905 + c ^ pixel,
   |z| <= 100 
}

kgexp9 = { 
   z = Pixel:
   z = z ^ -2.71828182845905 + pixel,
   |z| <= 100 
}

kgexp10 = { 
   z = Pixel:
   z = z + 2.71828182845905 ^ c + c,
   |z| <= 100 
}

kgexp11 = { 
   z = Pixel:
   z = z ^ 2.71828182845905 + c ^ 2.71828182845905,
   |z| <= 100 
}

kgexp12 = { 
   z = pixel:
   z = z ^ 1.333333333333333 + c,
   |z| <= 100 
}

kgexp13 = { 
   z = Pixel:
   z = z ^ 1.666666666666666 + c,
   |z| <= 100 
}

kgexp14 = { 
   z = Pixel:
   z = z ^ (-1.33333333333333) + c,
   |z| <= 100 
}

