

ULI_1 (XAXIS)  {; QOC62@DMSWWU1A.BITNET - ULI.FRM
                ; XAXIS and test added by Jon Horner.
  z = pixel, test = p1 + 4:
  z = fn1( 1 / fn2(z))
  |z| <= test
  ;SOURCE: uli.frm
}


ULI_2 (XAXIS)  {; QOC62@DMSWWU1A.BITNET - ULI.FRM
                ; XAXIS and test added by Jon Horner.
  z = pixel, test = p2 + 4:
  z = fn1( 1 / fn2(z+p1))
  |z| <= test
  ;SOURCE: uli.frm
}


ULI_3 {; QOC62@DMSWWU1A.BITNET - ULI.FRM
       ; test added by Jon Horner
  z = pixel, test = p2 + 4:
  z = fn1( 1 / fn2(z+p1)+p1)
  |z| <= test
  ;SOURCE: uli.frm
}


ULI_4 {; QOC62@DMSWWU1A.BITNET - ULI.FRM
       ; test added by Jon Horner
  z = pixel, test = p2 + 4:
  z = fn1( 1 / (z+p1)) * fn2(z+p1)
  |z| <= test
  ;SOURCE: uli.frm
}


ULI_5 (XAXIS) {; QOC62@DMSWWU1A.BITNET - ULI.FRM
               ; XAXIS and test added by Jon Horner.
  z = pixel, c = fn1(pixel), test = p1 + 4:
  z = fn2(1/(z+c)) * fn3(z+c)
  |z| <= test
  ;SOURCE: uli.frm
}


ULI_6 {; QOC62@DMSWWU1A.BITNET - ULI.FRM
       ; test added by Jon Horner
  z = pixel, test = p2 + 16:
  z = fn1 (p1+z) * fn2(p2-z)
  |z| <= test
  ;SOURCE: uli.frm
}

