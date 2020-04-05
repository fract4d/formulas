
JuliaBC      { ; Formula by Andrew Coppin
  e=p1, p=real(p2)+PI, q=2*PI*floor(p/(2*PI)),
  r=real(p2)-q, C=p3, Z=Pixel:
    Z=log(Z)
    IF(imag(Z) > r)
      Z=Z+flip(2*PI)
    ENDIF
    Z=exp(e*(Z+flip(q)))+C
  |Z| < p4+100
}

JuliaBC2     { ; Formula by Andrew Coppin
  e=p1, p=real(p2)+PI, q=2*PI*floor(p/(2*PI)),
  r=real(p2)-q, C=p3, Z=Pixel:
    Z=log(Z)
    IF(imag(Z)>r)
      Z=Z+flip(2*PI)
    ENDIF
    Z=exp(e*(Z+flip(q)))+C
  |Z| < p4+100
}
