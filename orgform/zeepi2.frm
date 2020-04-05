{ ; ZeePi2
  ; Ron Barnett, August 1998
    z = pixel :
    x = (1 - z^p1)^(1/p1)
    z = z*fn1((1-x)/(1+x)) + p2
    |z| <= p3
}
