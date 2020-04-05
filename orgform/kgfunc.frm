;
;       These formulafiles are from Karl Geigl 100327,156. 
;
;

kgfunc1 = { 
   z = Pixel:
   z = z ^ 2 + c,
   z = fn1(z)
   |z| <= 100 
}

kgfunc2 = { 
   z = Pixel:
   z = z ^ 2 + c + pixel,
   z = fn1(z)
   |z| <= 100 
}

kgfunc3 = { 
   z = Pixel:
   z = z ^ 2 + c,
   c = fn1(z)
   |z| <= 100 
}

kgfunc4 = { 
   z = Pixel:
   z = z ^ 2 + c + pixel,
   z = fn1(c)
   |z| <= 100 
}

kgfunc5 = { 
   z = Pixel:
   z = (22/7) *  fn1(z) + c
   |z| <= 100 
}

kgfunc6 = { 
   z = Pixel:
   z = (22/7) / fn1(z) + c
   |z| <= 100 
}

kgfunc7 = { 
   z = Pixel:
   z = (22/7) *  fn1(z) * z + c
   |z| <= 100 
}

kgfunc8 = { 
   z = Pixel:
   z = (22/7) * z / fn1(z) + c
   |z| <= 100 
}

kgfunc9 = { 
   z = Pixel:
   z = (22/7)  / fn1(z) * z + c
   |z| <= 100 
}

kgfunc10 = { 
   z = Pixel:
   z = (22/7)  / fn1(z) * z + c * fn2(z)
   |z| <= 100 
}

