{BAIL_OUT.FRM        see bail_out.bat and bail_out.par
These formulas explore various heterodox ways of satisfying the
bail_out condition for the classical Mandelbrot set. You won't get the
"mathematically correct" Mandelbrot, but the results are visually in-
teresting!
File Bail_out.par has some beautiful and strange examples of pictures
based on these formulas.
By J. Marques; E-Mail: jmarques@ccvax.unicamp.br
}
 
bail_out01 (xAxis)  {
z = c = pixel:
  z = z^2 + c
   |fn1(z)| <= p1
}
bail_out02 (xAxis)  {
z = c = pixel:
  z = z^2 + c
   |fn1(real(z))| <= p1
}
bail_out03 (xAxis)  {;xAxis won't do for fn=exp. Use bail_out03exp instead
z = c = pixel:
  z = z^2 + c
   |fn1(imag(z))| <= p1
}
bail_out03exp  {
z = c = pixel:
  z = z
   |fn1(imag(z)*i)| <= p1
}
bail_out04 (xAxis)  {
z = c = pixel:
  z = z^2 + c
   real(fn1(z)) <= p1
}
bail_out05   {
z = c = pixel:
  z = z^2 + c
{The next two formulas don't seem to work the way they should.
; May be there's some bug in the code for the logical "and" and "or"}
bail_out07   {
z = c = pixel:
  z = z^2 + c
   |fn1(imag(z))| <= p1 && |fn1(real(z))| <= p1
}
bail_out08   {
z = c = pixel:
  z = z^2 + c;
   |fn1(real(z))| <= p1  || |fn1(imag(z))| <= p1
}
   z = z^2 + c;
     imag(z) <= abs(z) + p1
}
