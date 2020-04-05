{   ; gravijul 
    ; r^(-2) Mark Christenson 1/25/98
    ; defaults: p1 = (1,0) p2 = (0,0) p3 = (4,0)
   z = pixel: 
   w = fn1(z)
   z = fn3(p1/fn2(w*w)) + p2
    |z| < p3
}

