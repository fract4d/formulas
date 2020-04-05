a---mand {
  z = c = pixel:
   z = z^c + sin(c)
    |z|<p1
}

dots {
  z = c = pixel:
   z = z^c + c
    |z|<p1
}

a--mand {
  z = c = pixel:
   z = (sqr(z)+c) / |c|
    |z|<p1
}

aaa-deals {
  z = pixel, a=real(z), b=imag(z), i=((0-1)^0.5):
   x = real(z)
   y = imag(z)
   u = x*x + y*y + a
   v = (0-2)*x*y + b
   z = u + v*i;
    |z|<p1
}

aa-mand-re(XAXIS) {
  z = c = pixel:
   z = sqr(z)+c;
    real(z)<p1
}

aa-mand-im(XAXIS) {
  z = c = pixel:
   z = sqr(z)+c;
    imag(z)<p1
}

aa-diamand {
  z = c = pixel:
   z = sqr(z)+c;
    (real(z)+imag(z))<p1
}

aa-c-to-z(XAXIS)  {
  z = pixel, c = z:
   z = c^z;
    |z| <= p1
}

aa-z-to-c(XAXIS)  {
  z = pixel, c = z:
   z = exp(c*log(z));
    |z| <= p1
}

aa-z-to-z(XAXIS)  {
  z = pixel, c = z:
   z = exp(z*log(z));
    |z| <= p1
}
