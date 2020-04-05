Copyright { ;All formulae by Joe McKenzie
            ;email: joemck@crosswinds.net
            ;You may use them freely as long as you:
            ;(1) distribute it as is and
            ;(3) LEAVE IN THIS ENTRY.

Sine_of_Brot (xaxis) { ;the sine of the Mandelbrot formula
  z=0, c=pixel:
    z=sin(z^2+c)
    |z| < 4
}

Hyperbolic_Cosine (xaxis) { ;A hyperbolic cosine formula
  z=0, c=pixel:
    z=cosh(z+c)
    |z| < 4
}

Mandelbrot+ { ;addition to the Mandelbrot formula
              ;two parameters:
              ;(1) function for z
              ;(2) function for c
  z=0, c=pixel:
    z=z*z+c+fn1(z)+fn2(c)
    |z| < 4
}

Twins (xaxis) { ;Two almost-connected 'Brots
                ;The authors left out the RECIP
                ;function outside of the fn
                ;choices, so the reciprocal formula
                ;  1/x  was used instead.
  z=0, c=pixel:
    z=z*z+c+(1/c)
    |z| < 4
}