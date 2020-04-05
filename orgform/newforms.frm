 comment = {
 FRACTINT.DOC has instructions for adding new formulas to this file.
 Note that there are several hard-coded restrictions in the formula
 interpreter:

 1) The fractal name through the open curly bracket must be on a single line.
 2) There is a current hard-coded limit of 30 formulas per formula file, only
    because of restrictions in the prompting routines.
 3) Formulas must currently be less than 200 characters long.
 3) Comments, like this one, are set up using dummy formulas with no
    formula name or the special name "comment".  There can be as many
    of these "comment" fractals as desired, they can be interspersed with
    the real formulas, and they have no length restriction.

 }

   Mandelbrot(XAXIS) = {
      z = Pixel:  z = sqr(z) + pixel, |z| <= 4
   }

{ The following is a formula taken from a Compuserve GIF file called RAMANUJAN1
  as suggested by an equation in an article about the life and work of Indian 
  mathematician Srinivasa Ramanujan in the book "The World of Mathematics" Vol.
  1, pp 366-376.}

  Ramanujan1(ORIGIN) = {
       z = pixel:
       z = (cosh(p1 * sqr(z)) - sinh(p2 * sqr(z))/(p2 * sqr(z)))/z,
       |z|<= 4   
}

{ The following formula came from Tobey J. E. Reed when asked how he made his
  IMAGE1 and IMAGE2 fractals.}

  LeeMandel1(XYAXIS) = {
       z = pixel:
       c = sqr(pixel)/z,
       c = z + c,
       z = sqr(z),
       |z| < P1 
  }

  LeeMandel2(XYAXIS) = {
       z = pixel:
       c = sqr(pixel)/z,
       c = z + c,
       z = sqr(c * pixel),
       |z| < 4
  }

  Tobey3(XAXIS)      = {
       z = pixel:
       c = pixel - sqr(z),
       c = pixel + c/z,
       z = c - z * pixel,
       |z| < 4
  }

ConformalMapping = {
	c = pixel, RealZ = Real(c), ImagZ = Imag(c):
		RealZ = Sqr(RealZ) + (RealZ * ImagZ) + Real(c);
		ImagZ = Sqr(ImagZ) + (RealZ * ImagZ) + Imag(c);
		z = RealZ + (ImagZ * (0, 1)),
	|z| < 4
}

Sterling(XAXIS) = {
	z = Pixel:  z = ((z/2.7182818)^z)/sqr(6.2831853*z),
	|z| <= 4
}

Sterling2(XAXIS) = {
	z = pixel:  z = ((z/2.7182818)^z)/sqr(6.2631853*Z) + pixel,
	|z| <= 4
}

Sterling3(XAXIS) = {
	z = Pixel:  z = ((z/2.7182818)^z)/sqr(6.2831853*z) - pixel,
	|z| <= 4
}

Something (xaxis) = {
	z = pixel:
	z = pixel + z*z + 1/z/z,
	|z| <= 4
}

Somethingelse (xyaxis) = {
	z = 1:
	z = pixel * (z*z + 1/z/z),
	|z| <= 1000000
}

JSomethingelse (xyaxis) = {
	z = pixel:
	z = p1 * (z*z + 1/z/z),
	|z| <= 1000000
}

No_name(xaxis) = {
	z = pixel:
	z=z+z*z+(1/z*z)+pixel,
	|z| <= 4
}
comment = {
It seems not so ugly at first glance and lot of corners to zoom in.
Try this:
  Corners		x		y
Top-left	  -1.178372	  -0.601683
bottom-right      -0.978384	  -0.751678
center		  -1.07838	  -0.67668
}

Tim's_Error(XAXIS) = {
	z = pixel, c = z ^ (z - 1):
	z = sqr(z);
	t2 = real(z)*real(c) + imag(z)*imag(c);
	t3 = real(t2)*imag(c) - imag(z)*real(c);
	z = t2 + t3 + pixel,
	|z| <= 4
}
comment = {
A reverse enginerring of a coding error by Tim Wegner done while hard coding
MarksMandelPwr fractal.  Looks like a bug-eyed bird of prey.
}
Whatever_the_name(XAXIS) = {
	z = pixel:
	z=z*z+(1/z*z)+pixel,
}
