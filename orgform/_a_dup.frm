

a1 {
  z=pixel, x=i-pixel, y=1-(i-pixel):
  z=cosxx(fn1(z*x)-fn2(z^(fn3(z*y))))/z*fn4(x*y)+c
  |x|<25
  ;SOURCE: ad1.frm
}


A1 (XAXIS) {
  z = Pixel:
  z = ((2*(z*z*z))-(3*(z*z))+1)^p1
  z = z+Pixel
  z = Sqr(z) * (p1)
  |z| <= 4
  ;SOURCE: a1.frm
}


a1 {; (c) by Miguel Fliguer 
  z=c=pixel:
  z=fn1(p1*z/fn2(p2+z/fn3(p3-z/fn1(z))))+c
  |z|<4
  ;SOURCE: 99msg.frm
}


AbsJulia (origin) {; Peter Anders anders@physik.hu-berlin.de
  cx=real(p1), cy=imag(p1), xo=real(pixel), yo=imag(pixel):
  x=xo*xo-yo*yo+cx
  y=2*xo*yo+cy
  xo=abs(x)
  yo=abs(y)        
  |fn1(x)|<real(p2) &&  |fn1(y)|<real(p2)
  ;SOURCE: peterman.frm
}


AltJTet (XAXIS) {; Lee Skinner - same as FRACTINT.FRM
                 ; Julia form 2 of the Tetration formula
                 ; (p2+3) changed to (p2+4) - Jon Horner
  z = p1:
  z = (pixel ^ z) + p1
  |z| <= (p2 + 4)
  ;SOURCE: improv2.frm
}


AltMTet (XAXIS) {; Lee Skinner - (p2+3) changed to (p2+4) - Jon Horner
                 ; Mandelbrot form 2 of the Tetration formula
  z = 0:
  z = (pixel ^ z) + pixel
  |z| <= (p1 + 4)
  ;SOURCE: improv2.frm
}

