comment {
 The fractals in this file were adapted from Peitgen and Richter's "The
Beauty of Fractals". Since I know little about the Fractint formula compiler,
and even less about the mathematics behind fractals (in the nine years since
high school, I have lapsed a bit in my Algebra and Trig: oh, my brain
hurts!), these attempts at coding formulae were very much trial and error. I
had to do a lot of "plug it in and try" before I got anything other than a
blank screen. If anyone cares to improve on these, simplify them, clean them
up or make them faster, please do. They aren't anything spectacular, they
just manage to generate some of the maps in "The Beauty of Fractals" that
I've been wanting to reproduce.

  Now if anyone cares to have a go at those Lotka-Volterra Equations, or the
Boundary Value Problems Discretized on N Points (in 6 dimensions, yet!), the
gauntlet is down. Have fun.

   For any comments, questions, general bafflegab, or if you manage to create
something really wonderful with these fractals, leave me a note in any of the
Fractal conferences around, or on Ideal Systems BBS at (508) 757-1806. Alas,
I can't afford Compuserve.

  or...drop me a line:

    Peter Jack
    579 King St. Apt #2
    London, Ontario
    Canada
    N6B 1T4

Enjoy!
  Peter Jack
}

BOFMaps61-65 {;A variation on Newton's method
;Use 0/-0.5 for P1, and Floating Point to create the fractals used for
;maps 61 through 65, on pages 90 and 91, in "The Beauty of Fractals".             
z=Pixel:
z2=z*z;
z3=z*z*z;
z4=z*z*z*z;
z=z-((z4-z3*0.5+z2*0.5-z*0.5-0.5)/((z3*4-z2*1.5+z-.5)+P1)),
|(z4-z3*0.5+z2*0.5-z*0.5-0.5)| >= 0.00004
}

BOFMaps75-76 {;A variation on Newton's method
;Use 0/0.25 for P1, and Floating Point to create the fractals used for
;maps 75 and 76, on pages 114 and 115, in "The Beauty of Fractals". 
z=Pixel:
z2=z*z;
z3=z*z*z;
z=z-((z3-z*.25-1.25)/((z2*3-.25)+P1)),
|(z3-z*.25-1.25)| >= 0.000001
}

BOFMaps77-78 {;Another variation on Newton's method
;Use 0/0 for P1, and Floating Point to create the fractals used for
;maps 77 and 78, on pages 116 nad 117, in "The Beauty of Fractals"       
z=Pixel:
z2=z*z;
z3=z*z*z;
z=z-((z3-z*.5-.5)/((z2*3-.5)+P1)),
|(z3-z*.5-.5)| >= 0.000000000001
}

