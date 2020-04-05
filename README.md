# About

This repository contains formulas which are compatible with the Gnofract 4D fractal generator. Many are
also compatible with FRACTINT https://www.fractint.org/ and with UltraFractal https://www.ultrafractal.com .

A fractal formula is a simple program which tells a fractal program how to draw a particular kind of fractal. For example, 

```
Mandelbrot { 
init:
    z=0
    c=#pixel
loop:
    z=z*z*c
bailout:
    |z|<4.0
}
```

Draws the Mandelbrot set.


The intent is to provide an easy way for authors of fractal formulas to collaborate on and share formulas.



