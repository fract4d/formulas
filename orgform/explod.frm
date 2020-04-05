	Here is the Fractint formula file used for explod.gif:

j1 {
	z=pixel, c=p1:
	z=sqr(z)+c,
	c=c+p2,
	|z| <= 4
	}

m1 {
	z=0, c=pixel:
	z=sqr(z)+c,
	c=c+p1,
	|z| <= 4
	}

jz {
	z=pixel, c=p1:
	z=sqr(z)+c,
	c=c+p2*z,
	|z| <= 4
	}

mz {
	z=0, c=pixel:
	z=sqr(z)+c,
	c=c+p1*z,
	|z| <= 4
	}

joz {
	z=pixel, c=p1:
	z=sqr(z)+c,
	c=c+p2/z,
	|z| <= 4
	}

moz {
	z=0, c=pixel:
	z=sqr(z)+c,
	c=c+p1/z,
	|z| <= 4
	}

jfnz {
	z=pixel, c=p1:
	z=sqr(z)+c,
	c=c+p2*fn1(z),
	|z| <= 4
	}

mfnz {
	z=0, c=pixel:
	z=sqr(z)+c,
	c=c+p1*fn1(z),
	|z| <= 4
	}

jc {
	z=pixel, c=p1:
	z=sqr(z)+c,
	c=c+p2*c,
	|z| <= 4
	}

mc {
	z=0, c=pixel:
	z=sqr(z)+c,
	c=c+p1*c,
	|z| <= 4
	}

joc {
	z=pixel, c=p1:
	z=sqr(z)+c,
	c=c+p2/c,
	|z| <= 4
	}

moc {
	z=0, c=pixel:
	z=sqr(z)+c,
	c=c+p1/c,
	|z| <= 4
	}

jfnc {
	z=pixel, c=p1:
	z=sqr(z)+c,
	c=c+p2*fn1(c),
	|z| <= 4
	}

mfnc {
	z=0, c=pixel:
	z=sqr(z)+c,
	c=c+p1*fn1(c),
	|z| <= 4
	}


	Here is the parameter file:

m1 {
  reset type=formula formulafile=\FRACTINT\explode.frm formulaname=m1

  center-mag=-0.62/0/0.85 params=0.03 float=y maxiter=150
  periodicity=0 colors=@pastel
  }

mc {
  reset type=formula formulafile=\FRACTINT\explode.frm formulaname=mc
  center-mag=-0.62/0/0.85 params=0.03 float=y maxiter=150
  periodicity=0 colors=@pastel
  }

mz {
  reset type=formula formulafile=\FRACTINT\explode.frm formulaname=mz
  center-mag=-0.62/0/0.85 params=0.03 float=y maxiter=150
  periodicity=0 colors=@pastel
  }

moc {
  reset type=formula formulafile=\FRACTINT\explode.frm
formulaname=moc
  center-mag=-0.62/0/0.85 params=0.03 float=y maxiter=150
  periodicity=0 colors=@pastel
  }

moz {
  reset type=formula formulafile=\FRACTINT\explode.frm
formulaname=moz
  center-mag=-0.62/0/0.85 params=0.03 float=y maxiter=150
  periodicity=0 colors=@pastel
  }
