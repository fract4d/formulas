Here are some fractals that I created while playing with Fractint.
**Any comments (positive or negative) would be helpful.**

Note fractal 4 and 6 need the inside color set to bof60 when using 
the formula file.

Daryl N.

**************************************************************************
Compuserve mail number -> 102032,2620
Or also on compuserve "go graphdev" and write me a message in fractal
sources "Daryl., 102032,2620"
**************************************************************************

Fractal4{;Must! Press x to get to menu to set inside to bof60**
z=c=pixel:
z=exp(z*z)+c
|z|<=4
}

Fractal5{
z=c=pixel:
z=z*z/(tanh(c))+.25
|z|<=4
}

Fractal6{
;Must! press x to get to basic option menu and set inside to bof60*
;Hour Glass
z=c=pixel
x=real(pixel)
y=imag(pixel):
z=((conj(x)*cotan(y))^3)+c
|z| <= 4
}

Fractal7{
z=pixel:
z=(cabs(z) / sqr(z)^2) - z
|z| <= 4
}


