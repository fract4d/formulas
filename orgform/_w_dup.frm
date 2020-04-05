

WaldoTwinsC (XAXIS_NOPARM) {
  z=p1:
  z=cos(sin(z+pixel))+pixel
  |z|<=4
  ;SOURCE: form1.frm
}


WaldoTwinsC (XAXIS_NOPARM) {; Jon Osuch
                            ; Try p1=0, p2=4, fn1=cosxx, fn2=sin
                            ; Note:  use floating point
  z   = p1:
  z   = fn1(fn2(z+pixel)) + pixel
  |z| <= p2
  ;SOURCE: select.frm
}


Whatever_the_name (XAXIS) {
  z=pixel:
  z=z*z+(1/z*z)+pixel
  |z|<=4 
  ;SOURCE: formtype.frm
}


Wineglass (XAXIS) {; Pieter Branderhorst
                   ; try p1 = 4 and p2 = 2
  c = z = pixel:
  z = z * z + c
  c = (1+flip(imag(c))) * real(c) / p2 + z
  |z| <= p1
  ;SOURCE: improved.frm
}


Wineglass (XAXIS) {
  c = z = pixel:
  z = z * z + c, c = (1+imag(c)) * real(c) / 2 + z
  |z| <= 4 
  ;SOURCE: newform.frm
}

