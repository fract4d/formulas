TMan1           { ; Lee H. Skinner <skinner@thuntek.net>
                  ; Sun, 19 Jan 2003 23:09:22
                  ;
  c1=flip(real(pixel)),c2=imag(pixel),c3=p1
  z1=z2=z3=0:
  t1=z1*z1+2*z2*z3
  t2=z3*z3+2*z1*z2
  t3=z2*z2+2*z3*z1
  z1=t1+c1,z2=t2-c2*c2,z3=t3+c3
  z=z1+z2+z3
  |z| < 8
}


TMan2 (XAXIS)   { ; Lee H. Skinner <skinner@thuntek.net>
                  ; Wed, 22 Jan 2003 10:27:11
                  ;
c1=real(pixel),c2=imag(pixel)*(0,1),c3=p1
z1=z2=z3=0:
t1=z1*z1+2*z2*z3
t2=z3*z3+2*z1*z2
t3=z2*z2+2*z3*z1
z1=t1+c1,z2=t2+c2,z3=t3+c3
z=(z1^2+z2^2+z3^2)^.5
z < 16 }


TJul2 (XAXIS)   { ; Lee H. Skinner <skinner@thuntek.net>
                  ; Wed, 22 Jan 2003 10:27:11
                  ; Try z1=-0.75
z1=real(pixel),z2=imag(pixel)*(0,1),z3=p3:
t1=z1*z1+2*z2*z3
t2=z3*z3+2*z1*z2
t3=z2*z2+2*z3*z1
z1=t1+p1,z2=t2+p2,z3=t3+p3
z=(z1^2+z2^2+z3^2)^.5
z < 64 }


