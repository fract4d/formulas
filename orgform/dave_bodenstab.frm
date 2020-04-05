marek(xaxis)  { ; Dave Bodenstab <imdave1@mindspring.com>
                ; Sat, 16 Aug 2003 22:39:38
                ; based upon the fractals images at: 
                ; http://astronomy.swin.edu.au/~pbourke/fractals/marek/
   r = 1 - (sqrt(2) - sqrt(3) + sqrt(5)) / 2,
   zc = e ^ (2 * pi * r * i),
   z = pixel:
   z = zc * z + z ^ 2
   |z| <= 4
   }

