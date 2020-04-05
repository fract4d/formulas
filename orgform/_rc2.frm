

Carr2000 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Some optimizations made by G. Martin
  z=c=pixel-1/log(cos(1/pixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2 = pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t 
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2001 {; Modified Sylvie Gallet frm. [101324,3444], 1996
          ; requires "periodicity=0" (<g> command)
          ; imag(p1) = scale of the Julia set
          ; p2 = center of the Julia set
          ; p3 = param for the Julia set
  z=c=pixel+1/log(pixel)
  c1 = p3
  z1=imag(p1)*z-p2, iter=0, limit = real(p1), bailout = 16 :
  test = (iter==limit)
  z=z*(1-test)+z1*test, c=c*(1-test)+c1*test
  z=z*z+c
  iter=iter+1
  |z| <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2002 {; Modified Sylvie Gallet frm. [101324,3444], 1996
          ; requires "periodicity=0" (<g> command)
          ; imag(p1) = scale of the Julia set
          ; p2 = center of the Julia set
          ; p3 = param for the Julia set
  z = c = pixel
  c1 = p3
  z1=imag(p1-pixel)*z-p2, iter=0
  limit=real(p1), bailout = 16 :
  test = (iter==limit)
  z=z*(1-test)+(z1*test), c=(c*(1-test)+(c1*test))
  z=z*z+c
  iter=iter+1
  |z| <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2003 {; Modified Sylvie Gallet frm. [101324,3444], 1996
          ; requires "periodicity=0" (<g> command)
          ; imag(p1) = scale of the Julia set
          ; p2 = center of the Julia set
          ; p3 = param for the Julia set
  z = c = pixel
  c1 = p3
  z1=imag(p1-cos(pixel))*z-p2, iter=0
  limit=real(p1), bailout = 16 :
  test = (iter==limit)
  z=z*(1-test)+(z1*test), c=(c*(1-test)+(c1*test))
  z=z*z+c
  iter=iter+1
  |z| <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2003a {; Modified Sylvie Gallet frm. [101324,3444], 1996
           ; requires "periodicity=0" (<g> command)
           ; imag(p1) = scale of the Julia set
           ; p2 = center of the Julia set
           ; p3 = param for the Julia set 
  z = c = pixel
  c1 = p3
  z1=imag(p1-cos(pixel))*z-p2, iter=0 
  limit=real(p1), bailout = 16 :
  test = (iter==limit)
  z=fn1(z*(1-test))+fn2(z1*test), c=fn3(c*(1-test))+fn4(c1*test)
  z=z*z+c
  iter=iter+1
  |z| <= bailout
  ;SOURCE: sg-bc-bj.frm
}


Carr2003b {; Modified Sylvie Gallet frm. [101324,3444], 1996
           ; requires "periodicity=0" (<g> command)
           ; imag(p1) = scale of the Julia set
           ; p2 = center of the Julia set
           ; p3 = param for the Julia set 
  z = c = pixel
  c1 = p3
  z1=imag(p1-cos(pixel))*z-p2, iter=0 
  limit=real(p1), bailout = 16:
  test = (iter==limit)
  z=z*fn1(1-test)+fn2(z1*test), c=fn3(c*(1-test)+(c1*test))
  z=z*z+c
  iter=iter+1
  |z| <= bailout
  ;SOURCE: bej0015.frm
}


Carr2004 {; Modified Sylvie Gallet frm. [101324,3444], 1996
          ; requires "periodicity=0" (<g> command)
          ; imag(p1) = scale of the Julia set
          ; p2 = center of the Julia set
          ; p3 = param for the Julia set
  z = c = pixel
  c1 = p3
  z1=imag(p1-cos(2*(pixel)))*z-p2, iter=0
  limit=real(p1), bailout = 16 :
  test = (iter==limit)
  z=z*(1-test)+(z1*test), c=(c*(1-test)+(c1*test))
  z=z*z+c
  iter=iter+1
  |z| <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2005 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=pixel-1/log(cos(1/pixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2 = pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2006 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=pixel-1/log(sinh(1/pixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2 = pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2007 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel, z=pixel+1/log(pixel)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2 = pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4) 
  z=z*t, c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2008 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel, c=pixel-1/log (-0.7456,0.2)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2 = pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t 
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2009 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel+1/log(pixel)
  z=pixel-1/log(pixel-1/log(tan(1/pixel))-1/log(2/pixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=cos(imag(p1)), l3=real(p2), l4=cos(imag(p2))
  bailout=16, iter=0, pp2 = pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t 
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2010 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  pp1=1/pixel, z=1/(pixel-real(pp1)+flip(imag(pp1)*2.924))
  c=1/(pixel-conj(pp1)-flip(pp1))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=cos(imag(p1)), l3=real(p2), l4=cos(imag(p2))
  bailout=16, iter=0, pp2 = pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4) 
  z=z*t, c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+(c+(-0.3,0.6))
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2011 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  pp1=1/pixel, c=1/(pixel-conj(pp1)-flip(pp1))
  z=1/(pixel-(3/c-c/4)-conj(pp1))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=cos(imag(p1)), l3=real(p2), l4=cos(imag(p2))
  bailout=16, iter=0, pp2 = pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t 
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c+(0.35776,-0.08294)
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2012 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel+1/log(pixel), c=pixel
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2 = pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t 
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2013 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=0.724*real(pixel)+flip(imag(pixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2 = pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t 
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2014 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=0.724*real(pixel)+flip(imag(pixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2 = pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t 
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=flip(conj(z*z))+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2015 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=0.724*real(pixel)+flip(imag(pixel)), p0=0.09/pixel
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2 = pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t 
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=flip(conj(z*z))+c-p0
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2016 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel, c=(-0.3,0.6)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2 = pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t 
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z2=z*z, z=z2*z/5+z2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2017 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=(pixel)-1/log(conj(0.5/pixel-1))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2 = pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t 
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2018 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel-1/log(10*pixel)*(sinh(0.1/pixel))
  c=sqrt(pixel-conj(0.135/pixel))+pixel 
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z=z*z+c-cp
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2019 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel-1/log(10*pixel)*(sinh(0.1/pixel))
  c=(-0.7456,-0.13)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z2=z*z, z=real(z)*z2/5+z2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2020 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel+sqrt(10*pixel)*(tan(0.1/pixel))
  c=(-0.7456,-0.13)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z=z*z+c-0.087
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2021 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel-1/log(cos(0.1/pixel))
  c=(-0.7456,-0.13)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z=z*z+c-0.087
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2022 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel+1/log(cos(0.1/pixel-0.025))*(tan(0.1/pixel-0.025))
  c=(-0.7456,-0.13)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4
  c=z+c/2.125
  z=z*z+c-0.087
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2023 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel+1/log(cos(0.1/pixel-0.025))*(tan(0.1/pixel-0.025))
  c=(-0.87456,-0.13)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z2=z*z, z=real(z)*z2/5+z2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2024 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=1.442*(real(pixel-1/log(0.019/pixel)))+flip(imag(pixel))
  c=(-0.7456,-0.13)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z=z*z+c-0.087
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2025 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.7456,-0.13)
  z=(pixel)-conj(0.1/pixel)-flip(0.1/pixel)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t 
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c-0.087
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2026 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.7456,-0.13)
  z=(pixel)-conj(0.1/pixel)-flip(0.1/pixel)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t 
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z2=z*z, z=real(z)*z2/5+z2+c-0.087
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2027 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.7456,-0.171), p10=0.1/pixel
  z=(pixel)-conj(p10)-flip(p10)-cabs(p10)-tan(p10)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t 
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c-0.087
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2028 {; Modified Sylvie Gallet frm. [101324,3444],1996
  p10=10*pixel, z=pixel-1/log(sqrt(p10)*(tan(1/p10)))
  c=(-0.7456,-0.171)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t 
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c-0.087
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2029 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel+1/log(sqrt(0.1/pixel)*log(0.1/pixel))
  c=(-0.7456,-0.171)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t 
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c-0.087
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2030 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=sin(pixel)-log(sqrt(0.1/pixel)*cos(log(0.1/pixel)))
  c=(-0.7456,-0.171)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t 
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c-0.087
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2031 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=sin(pixel)-log(sqrt(0.1/pixel)*cos(log(0.1/pixel)))
  c=(-0.7456,-0.171)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t 
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  c=z+c/2.125
  z=z*z+c-0.087
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2032 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(pixel)-(conj(sqrt(0.1/pixel))/cos(sqrt(0.1/pixel)))/cosxx(pixel)
  c=(-0.7456,-0.171)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t 
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c-0.087
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2033 {; Modified Sylvie Gallet frm. [101324,3444],1996
  d=(conj(sqrt(0.1/pixel))/cos(sqrt(0.1/pixel)))
  d1=d^pixel
  z=(pixel-d/d1)
  c=(-0.7456,-0.171)
  z1=c1=(1.5*z), z2=c2=(2.25*z), z3=c3=(3.375*z), z4=c4=(5.0625*z)
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  z=z*(1-(t1||t2||t3||t4))
  c=c*(1-(t1||t2||t3||t4))+(c1*t1)+(c2*t2)+(c3*t3)+(c4*t4+(pixel)/imag(p2))
  z=z*z+c-0.087
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 96msg.frm
}


Carr2034 {; Modified Sylvie Gallet frm. [101324,3444],1996
  p01=0.1/pixel, sq=sqrt(p01)
  d2=tan(p01)/sq, d=conj(sq)/cos(sq)
  d1=d^(pixel-1), z=pixel-conj(0.10*d1)+d2
  c=(-0.7456,-0.171)
  c1=1.5*z, c2=2.25*z 
  c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t 
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c-0.087
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2035 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel-((1/pixel)/(1/log(cos(0.01/pixel))))-conj(0.105/pixel)
  c=(-0.7456,-0.171)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t 
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c-0.087
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2036 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel-((1/pixel)/(1/log(cos(0.01/pixel))))-flip(imag(0.305/pixel))
  c=(-0.38652609,0.575229)+0.010/pixel
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t 
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c+0.057
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2037 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel-log(cos(0.01/pixel))/pixel-1/log(flip(imag(0.305/pixel)))
  c=(-0.38652609,0.575229)+0.010/pixel
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t 
  c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c+0.057
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}


Carr2038 {; Modified Sylvie Gallet frm.
  c=z=pixel-log(cos(0.01/pixel))/pixel-1/log(flip(imag(0.305/pixel)))
  compt=0, limit=real(p1*cos(pixel/5)), bailout=4
  p=(-0.745680900000982,0.1931):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42acarr.frm
}


Carr2039 {; Modified Sylvie Gallet frm.
  z = pixel+1/log(10*pixel)
  c = (-0.7456,-0.13)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+1.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}


Carr2040 {; Modified Sylvie Gallet frm.
  z=pixel, c=pixel-conj(0.10/pixel)-flip(0.10/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0, th1=tanh(1):
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-th1*(test3 && test0 && test1))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}


Carr2041 {; Modified Sylvie Gallet frm.
  c=(-0.7456,-0.13)
  z=pixel-conj(0.10/pixel)-flip(0.10/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}


Carr2042 {; Modified Sylvie Gallet frm.
  z=pixel-1/log(0.00000001)/pixel-conj(0.010/pixel)
  c=pixel-(0.00000001-z)/cosxx(1/log(0.00000001-z))
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (real(z2)*z4+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}


Carr2043 {; Modified Sylvie Gallet frm.  
  c=(0.3,0.6)
  z=pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4), z5=z4*z2-1
  z = (z2+c/z5)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 96msg.frm
}


Carr2044 {; Modified Sylvie Gallet frm.
  z=pixel-conj(0.010/pixel)-flip(0.010/pixel),
  c=(0.3,0.6)-(0.0165/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4+(z4==0)), z5=z4*z2-1
  z = (z2+c/z5)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}


Carr2045 {; Modified Sylvie Gallet frm.
  z=pixel-(((0.3,0.6)+pixel)/(1.099,0))
  c=(-0.7456,-0.13)-0.09/cos(pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}


Carr2046 {; Modified Sylvie Gallet frm.
  z=tanh(pixel)-(((0.3,0.6)+pixel)/(0.20/-pixel))
  c=(-0.7456,-0.13), c2=c-(0.05/(cos(pixel)))
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z2+c2)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42bcarr.frm
}


Carr2047 {; Modified Sylvie Gallet frm. 
  z=pixel*sqr(pixel)-conj(0.010/pixel)-flip(0.010/pixel)
  c=(-0.7456,-0.13)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42bcarr.frm
}


Carr2048 {; Modified Sylvie Gallet frm. 
  z=conj((0.3,0.6)*(pixel))*sqr(pixel)-conj(0.010/pixel)-flip(0.010/pixel)
  c=(-0.7456,-0.13)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42bcarr.frm
}


Carr2049 {; Modified Sylvie Gallet frm. 
  z=c=conj((0.3,0.6)*(pixel))*sqr(pixel)\
       -conj(0.010/pixel)-flip(0.010/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42bcarr.frm
}


Carr2050 {; Modified Sylvie Gallet frm. 
  z=c=sinh((-0.7456,0.2)*(pixel))*sqr(pixel)\
        -conj(0.010/pixel)-flip(0.010/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42bcarr.frm
}


Carr2051 {; Modified Sylvie Gallet frm. 
  c=pixel*sqr(pixel)+conj(0.00010/pixel)\
      +flip(0.00010/pixel)+tanh(0.00010/pixel)
  z=pixel-conj(0.010/pixel)-flip(0.010/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42bcarr.frm
}


Carr2052 {; Modified Sylvie Gallet frm.
  z=c=tanh(pixel)-(((0.3,0.6)+pixel)/(0.20/-pixel))
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  p=(-0.745680900000982,-0.131850030300002):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}


Carr2053 {; Modified Sylvie Gallet frm.
  z=c=sinh((-0.7456,0.2)*(pixel))*sqr(pixel)\
     -conj(0.10/pixel)-flip(0.10/pixel)
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  p=(-0.745680900000982,-0.131850030300002):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}


Carr2054 {; Modified Sylvie Gallet frm.
  z=pixel*sqr(pixel)+conj(0.010/pixel)+flip(0.010/pixel)+tanh(0.010/pixel)
  c=(-0.7456,-0.13)-conj(0.001/pixel)
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  p=(-0.745680900000982,-0.131850030300002):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}


Carr2055 {; Modified Sylvie Gallet frm.
  z=sqr(sqr(conj(pixel)))-(conj(0.020/pixel))-(flip(0.020/pixel))
  c=(-0.7456,0.13)+0.009/pixel
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  p=(-0.745680900000982,-0.131850030300002):
  test=(compt<limit)
  c=(c*test+p*(1-test))
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}


Carr2056 {; Modified Sylvie Gallet frm.
  z=sqr(sqr(conj(pixel)))-(tan(0.00020/pixel))-(sin(0.00020/pixel))
  c=(-0.7456,-0.03)+0.009/pixel
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  p=(-0.745680900000982,-0.131850030300002):
  test=(compt<limit)
  c=(c*test+p*(1-test))
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}


Carr2057 {; Modified Sylvie Gallet frm.
  z=real(sqr(pixel))+flip(imag(pixel))
  c=sqr(sqr(conj(pixel)))-(sqr(0.020/pixel))-(exp(0.020/pixel))
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  p=(-0.745680900000982,-0.131850030300002):
  test=(compt<limit)
  c=(c*test+p*(1-test))
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}


Carr2058 {; Modified Sylvie Gallet frm.
  z=pixel+1/sqrt(0.1/pixel)*(tan(0.1/pixel))
  c=(-0.7456,-0.13)-0.01/pixel
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  p=(-0.745680900000982,-0.131850030300002):
  test=(compt<limit)
  c=(c*test+p*(1-test))
  z=z*z+c-0.0087
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}


Carr2059 {; Modified Sylvie Gallet frm.   
  z=pixel+1/sqrt(0.0010/pixel)*(tan(0.0010/pixel))
  c=pixel-1/log(0.010/pixel)*(1/tan(0.10/pixel))
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  p=(-0.745680900000982,-0.131850030300002):
  test=(compt<limit)
  c=(c*test+p*(1-test))
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 96msg.frm
}


Carr2060 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=pixel
  z=pixel*sqr(pixel)-conj(0.010/pixel)-flip(0.010/pixel)
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2061 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=pixel
  z=pixel*sqr(pixel)-conj(0.010/pixel)-flip(0.10/pixel)
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2062 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=pixel
  z=pixel*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2063 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=pixel
  z=pixel*sqr(pixel)-conj(0.10/pixel)-sqr(flip(0.010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2064 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=pixel
  z=pixel*sqr(pixel)-sqr(conj(0.10/pixel))-(flip(0.010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2065 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=flip(imag(pixel))
  z=pixel*sqr(pixel)-(sqr(conj(0.10/pixel)))-sqr(flip(0.010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2066 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=flip(imag(sqr(pixel)))
  z=pixel*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2067 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=1.33*(pixel)
  z=conj(pixel)*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2068 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=pixel
  z=conj(pixel)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2069 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=sinh(conj(pixel*pixel))
  z=conj(pixel)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2070 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=sqr(conj(0.75*(pixel*pixel)))
  z=conj(pixel)*sqr(pixel)-sqr(conj(0.10/pixel))-(flip(0.010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*conj(z)
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2071 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=pixel
  z=flip(imag(1-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*conj(z)
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2072 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=conj(flip(pixel))*pixel
  z=flip(imag(1-pixel))*sqr(pixel)\
      -(conj(0.10/pixel))-sqr(flip(0.010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*conj(z)
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2073 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  z=c=pixel*sqr(pixel)-(conj(0.10/pixel))-sqr(flip(0.010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*conj(z)
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2074 {; Modified Sylvie Gallet frm.
  z=c=pixel*sqr(pixel)-(conj(0.10/pixel))-flip(0.010/pixel)
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  cinv=p2/(z+p3)
  p=(-0.743380900000982,-0.131850030300002):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}


Carr2075 {; Modified Sylvie Gallet frm.
  c=pixel-conj(0.10/pixel)-flip(0.010/pixel)
  z=pixel*sqr(pixel)-sqr(conj(0.10/pixel))-(flip(0.010/pixel))
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  cinv=p2/(z+p3)
  p=(-0.743380900000982,-0.131850030300002):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}


Carr2076 {; Modified Sylvie Gallet frm.
  z=flip(imag(1-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  c=pixel*sqr(pixel)-sqr(conj(0.10/pixel))-(flip(0.010/pixel))
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  cinv=p2/(z+p3)
  p=(-0.743380900000982,-0.131850030300002):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}


Carr2077 {; Modified Sylvie Gallet frm.
  z=c=conj(pixel)*sqr(pixel)-(conj(0.10/pixel))-sqr(flip(0.010/pixel))
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  cinv=p2/(z+p3)
  p=(-0.743380900000982,-0.131850030300002):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}


Carr2078 {; Modified Sylvie Gallet frm.
  z=c=conj(pixel)*sqr(pixel)-sqr(conj(0.010/pixel))-(flip(0.10/pixel))
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  cinv=p2/(z+p3)
  p=(-0.743380900000982,-0.131850030300002):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}


Carr2079 {;Modified Sylvie Gallet frm. [101324,3444],1996 
  z=c=conj(pixel)*sqr(pixel)-sqr(conj(0.010/pixel))-(flip(0.10/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2080 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=pixel
  z=flip(imag(1-pixel))*sqr(conj(pixel))\
      -(conj(0.10/pixel))-flip(0.010/pixel)
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2081 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=pixel
  z=flip(imag(1-pixel))*pixel*conj(pixel)\
        -(conj(0.10/pixel))-flip(0.010/pixel)
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2082 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=sqr(pixel)/(conj(pixel))
  z=flip(imag(1-pixel))*pixel*conj(pixel)\
        -(conj(0.10/pixel))-flip(0.010/pixel)
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2083 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=sqr(sqr(sinh(pixel)))/conj(pixel)
  z=flip(imag(1-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2084 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=sqr(sqr(sinh(pixel)))/conj(pixel)
  z=flip(imag(1-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct + conj(0.0010/c)
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2085 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=sinh(pixel)^5/conj(pixel)^1.5
  z=pixel*sqr(pixel)-sqr(conj(0.10/pixel))-(flip(0.010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0, d4 = 4*tanh(0.010/z), d1 = conj(0.000010/c):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct + d4, c = c*t + ct + d1
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2086 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=conj(pixel-0.33)
  z=conj(pixel-0.33)*sqr(pixel)-(conj(0.10/pixel))+sqr(flip(0.010/pixel))
  z1 = 2.25*z, z2 = 3.25*z, z3 = 5.375*z, z4 = 10.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0, d=(0.01250/(conj(z))):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct - d, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2087 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=pixel
  z=flip(imag(1-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  z1 = 2.25*z, z2 = 3.25*z, z3 = 5.375*z, z4 = 10.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c-(0.10/c)
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2088 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=(-0.8006,-0.149)
  z=flip(conj(1-pixel))*sqr(pixel)\
       -(conj(0.0005/pixel))-sqr(flip(0.03/pixel))
  z1 = 2.25*z, z2 = 3.25*z, z3 = 5.375*z, z4 = 10.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2089 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=(-0.8006,-0.149)
  z=flip(conj(1-pixel))*sqr(pixel)\
      -(conj(0.0005/pixel))-sqr(flip(0.09/pixel))
  z1 = 2.25*z, z2 = 3.25*z, z3 = 5.375*z, z4 = 10.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2090 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=conj(-0.8006,-0.149)
  z=flip(1/acos(1-pixel))*sqr(pixel)\
       -(conj(0.0005/pixel))-sqr(flip(0.09/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2091 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=conj(-0.8006,-0.149)
  z=flip(1/atan(1-pixel))*sqr(pixel)\
        -(conj(0.005/pixel))-sqr(flip(0.09/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 0.999*(1-(t1||t2||t3||t4)), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2092 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=(-0.8006,-0.149)
  z=pixel*conj(pixel^2)-conj(0.10/pixel)-(0.0450/pixel)
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*1.09*t + ct, c = c*0.999*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2093 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  z=c=sqr(1-pixel)*sqr(pixel)-sqr(conj(0.010/pixel))-(flip(0.10/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct - (0.00491,0.0010)
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2094 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=(-0.63,-0.4)
  z=acos(1-pixel)^2-(conj(0.10/pixel))-(flip(0.010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2095 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=(-0.63,-0.4)
  z=acos(1-pixel)^2-(conj(0.10/pixel))-sqr(asin(0.10/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2096 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=(-0.7456,-0.13)
  z=pixel-conj(0.10/pixel-flip(0.010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t2 + z2*t1
  z = z*t + ct + z3*t3 + z4*t4, c = c*t + ct + z3*t4 + z4*t3
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2097 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=(-0.7456,-0.13)
  z=conj(pixel)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 6.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2098 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=(-1.099,0.235)
  z=flip(pixel)*conj(pixel+0.433)\
       -conj(0.010/pixel)-sqr(flip(0.0010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2099 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=(conj(tan(pixel)))-conj(0.10/pixel)-flip(0.010/pixel)
  z=flip(pixel)*conj(sqr(pixel+0.433))\
      -(conj(0.10/pixel))-sqr(flip(0.010/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2100 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=(-0.7456,-0.13)
  z=(conj(tan(pixel)))-sqr(conj(0.10/pixel))-sqr(flip(0.020/pixel))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2101 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  z=c=pixel-1/((log(tan(pixel))^10)+pixel)
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2102 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  z=flip(imag(1-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  c=(pixel)-0.5/((log(conj(pixel))^12)+pixel)+conj(0.040/pixel)
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c-0.087
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2103 {; Modified Sylvie Gallet frm. 
  z=c=(pixel)-0.5/((log(conj(pixel))^12)+pixel)+conj(0.040/pixel)
  compt=0, limit=real(p1*cos(pixel/5)), bailout=4
  p=(-0.743380900000982,-0.131850030300002):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}


Carr2104 {; Modified Sylvie Gallet frm. 
  z=flip(1-pixel)*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  c=(-0.8006,-0.149)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn, z2 = z*z, z4 = z2*z2 
  z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z*z+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z=z*(1-(test3 && test0 && test1))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42bcarr.frm
}


Carr2105 {; Modified Sylvie Gallet frm. 
  z=flip(1+pixel)*sqr(conj(pixel))-conj(0.10/pixel)+flip(0.010/pixel)
  c=(-0.63,-0.4)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn, z2 = z*z, z4 = z2*z2 
  z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z*z+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z=z*(1-(test3 && test0 && test1))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42bcarr.frm
}


Carr2106 {; Modified Sylvie Gallet frm. 
  z=c=pixel-2/(sinh(0.10/pixel)-sqr(tanh(0.010/pixel)))
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn, z2 = z*z, z4 = z2*z2 
  z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z*z+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z=z*(1-(test3 && test0 && test1))
  iter = iter+1.2
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42bcarr.frm
}


Carr2107 {; Modified Sylvie Gallet frm. [101324,3444],1996 
  c=(-0.8006,-0.149)
  z=pixel-1/(sinh(0.10/pixel)-sqr(cosh(0.0250/pixel)))
  z1 = 1.5*z, z2 = 2.25*z, z3 = 3.375*z, z4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+0.75
  (|real(z)|) <= bailout
  ;SOURCE: 42bcarr.frm
}


Carr2108 {; Modified Sylvie Gallet frm.
  z=c=pixel-1/(tanh(0.10/pixel)-sqr(sinh(0.0250/pixel)))^6
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn, z2 = z*z, z4 = z2*z2 
  z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z=z*(1-(test3 && test0 && test1))
  iter = iter+1.2
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42ccarr.frm
}


Carr2109 {; Modified Sylvie Gallet frm.
  c=(-0.8006,-0.149)
  z=pixel-1/(atan(0.10/pixel)-sqr(acos(0.0250/pixel)))^6
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn, z2 = z*z, z4 = z2*z2 
  z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z=z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42ccarr.frm
}


Carr2110 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.8006,-0.149), p01 = 0.10/pixel
  z=pixel-1/log(p01)-cos(p01+1.25)+conj(p01)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=5.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2111 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.8006,-0.159)
  z=pixel-1/log(0.050/pixel)-cos(0.10/pixel+1.25)+conj(0.0250/pixel)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=5.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2112 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.8006,-0.149)
  z=pixel-cos(0.10/pixel+1.25)+conj(0.10/pixel+1.35)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=5.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2113 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.3,-0.6)
  z=cotanh(1-pixel)^1.5*pixel^4-(1/log(conj(0.10/pixel+1.25)))^2.5
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2114 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.3,-0.625)
  z=(pixel^2.33)/log(1.667-pixel)^2.87-(1/log(conj(0.10/pixel+1.25)))^2.95
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2115 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-1.099,-0.2349)
  z=(pixel^2.33)/log(1.667-pixel)^2.87-(1/log(conj(0.10/pixel+1.25)))^2.95
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2116 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-1.099,-0.2349)
  z=conj(pixel^2.33)/log(2.667-pixel)^2.87\
      -(1/log(acos(0.10/pixel+1.25)))^2.95
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2117 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(1-pixel)^1.8/(flip(asinh(pixel+1.5)))
  c=(-0.3,-0.625)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2118 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=flip(abs(1-pixel))^1.66/(flip(asinh(pixel+1.5)))
  c=(-0.3009,-0.625)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c-0.057
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2119 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=flip(cos(1-pixel))^1.66/(flip(asinh(pixel+1.5)))
  c=(-0.3009,-0.63525)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c-0.057
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2120 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.7456,-0.132)
  z=(log((pixel+4/pixel)^1.8)/(1/asin(1-pixel)))
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2121 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=1/(pixel-asin(pixel))
  c=(-1.099,-0.2349)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2122 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=1/(conj(pixel)-asin(pixel))
  c=(-1.099,-0.2349)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2123 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-1.099,-0.2349)
  z=1/(pixel*(3*pixel-flip(1/pixel)-conj(1/pixel)))
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2124 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-1.099,-0.2349)
  z=3.3/(pixel*(cabs(2.15*pixel-flip(0.010/pixel)-conj(0.10/pixel))))
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2125 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.3009,-0.63555)
  z=(pixel+1.25)-flip(asin(0.010/pixel))-conj(asin(0.10/pixel))
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2126 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-1.099,-0.2349)
  z=1/(pixel*(3*pixel-flip(1/pixel)-conj(1/pixel)))
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2127 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=sin(conj(-0.81256,-0.189))
  z=pixel-(0.010/conj(pixel))-(0.010/flip(pixel))
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+1.1*c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2128 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(tan(1/pixel))/(5*pixel-(sin(flip(pixel)))-conj(1/pixel))
  c=1/(tan(pixel)*(pixel))/(pixel-sqr(flip(1/pixel)-sqr(conj(1/pixel))))
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2129 {; Modified Sylvie Gallet frm. [101324,3444],1996
  d=0.30
  z=c=1/(tan(pixel)*(pixel))/(pixel-sqr(flip(1/pixel)-sqr(conj(1/pixel))))
  z1=1.5*z+d, z2=2.25*z+d, z3=3.375*z+d, z4=11.0625*z+d
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2130 {; Modified Sylvie Gallet frm. [101324,3444],1996
  d=0.030/pixel
  z=c=1/(tan(pixel)*(pixel))/(pixel-sqr(flip(1/pixel)-sqr(conj(1/pixel))))
  z1=1.5*z+d, z2=2.25*z+d, z3=3.375*z+d, z4=11.0625*z+d
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2131 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=sin(conj(-0.81256,-0.189))
  d=0.030/pixel
  z=1/(cos(pixel)*(pixel))/(pixel-sqr(flip(1/pixel)-sqr(conj(1/pixel))))
  z1=1.5*z+d, z2=2.25*z+d, z3=3.375*z+d, z4=11.0625*z+d
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2132 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=sin(conj(pixel+1.5))/((tanh(conj(-0.81256,-0.189)))/(conj(pixel-0.75)))
  c=sin(conj(-0.81256,-0.189))
  d=(0.10/pixel)
  z1=1.5*z+d, z2=2.25*z+d, z3=3.375*z+d, z4=11.0625*z+d
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2133 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=flip(conj(pixel*pixel))/(conj(pixel))
  d=(0.10/pixel)
  z1=1.5*z+d, z2=2.25*z+d, z3=3.375*z+d, z4=11.0625*z+d
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2134 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=flip(conj(pixel*pixel))/(flip(pixel))
  c=(-0.7456,-0.132)
  d=(0.10/pixel), d1=flip(1/pixel)
  z1=1.5*z+d, z2=2.25*z+d1, z3=3.375*z+d, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2135 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=pixel-1/log(pixel-real(0.010/pixel)+flip(imag(0.10/pixel)*2.924))
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2136 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=tan(pixel-1/log(real(pixel*pixel+1.25)+flip(imag(pixel)*2.924)))
  d1 = real(0.004/pixel)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d1
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2137 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel, c=sin(conj(-0.81256,-0.189))
  d1=(flip(0.0018/pixel))
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d1
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2138 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(pixel^2)-(flip(pixel)^4)
  c=sin(conj(-0.81256,-0.189))
  d1 = flip(0.00045/pixel)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d1
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2139 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(pixel^2.5)-(flip(pixel)^2)-(conj(pixel^2))
  c=sin(conj(-0.81256,-0.189))
  d1 = flip(0.00045/pixel)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d1
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2140 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=conj(pixel^2.5)-((pixel-conj(0.10/pixel))^4)
  c=sin(conj(-0.81256,-0.189))
  d1 = flip(0.00045/pixel)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d1
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2141 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=conj(pixel^1.5)-((pixel-log(0.10/pixel))^4)
  c=sin(conj(-0.81256,-0.189))
  d1 = flip(0.00053/pixel)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d1
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2142 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=conj(pixel^1.5)-((pixel-log(0.10/pixel))^4)
  d1 = flip(0.00053/pixel)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d1
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2143 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=conj(pixel^1.5)-((pixel-sqrt(0.10/pixel))^4)
  d1 = flip(0.00053/pixel)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d1
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2144 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=1/log(pixel-conj(0.010/pixel))^2.5
  c=sin(conj(-0.81256,-0.189))
  d1 = flip(0.00053/pixel)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d1
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2145 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(1/pixel)-1/log(pixel-1/cos(0.010/pixel))^2.5
  c=sin(conj(-0.81256,-0.189))
  d1 = flip(0.00053/pixel)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d1
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2146 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(1-pixel)^1.5-1/log(pixel-1/sin(0.010/pixel))^2.5
  c=sin(conj(-0.81256,-0.189))
  d1 = flip(0.00053/pixel)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d1
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2147 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(1-pixel)^2.5-1/log(pixel-1/sqrt(0.010/pixel)-conj(0.10/pixel))^1.5
  c=sin(conj(-0.81256,-0.189))
  d1 = flip(0.00053/pixel)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=11.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d1
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2148 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=conj(abs(tan(pixel*pixel)))
  c=sin(conj(-0.7456,-0.132))
  d1 = flip(0.0002925/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2149 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=flip(conj(abs((pixel*pixel))))
  c=sin(conj(-0.7456,-0.132))
  d1 = flip(0.0004925/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2150 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(flip(conj(abs((pixel*sin(pixel+1))))))
  c=sin(conj(-0.7456,-0.132))
  d1 = flip(0.0004925/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2151 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=(flip(conj(abs((sin(pixel))))))*asin(pixel-flip(0.010/pixel))
  d1 = -conj(0.0005525/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2152 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=sin(0.25-pixel)/(sin(1/pixel))
  c=sin(conj(-0.7456,-0.232))
  d1 = -conj(0.0005525/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2153 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(0.33-cos(pixel))/(0.33-tan(pixel))
  c=sin(conj(-0.7456,-0.232))
  d1 = -conj(0.0005525/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2154 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(0.33-cos(pixel))/(0.33-tan(pixel))
  c=sin(conj(-0.81256,-0.189))
  d1 = -conj(0.00000950/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2155 {; Modified Sylvie Gallet frm.
  z=flip(conj(abs((pixel*pixel))))
  c=sin(conj(-0.81256,-0.139))-0.0387
  iter=1, rad=6, center=(-3.6,-3.0)
  pix=(10*pixel+(5.0,-3.5))*(-0.1,-0.95)
  zn=flip(center+rad/(pix-center)), limit=real(p1)
  test0=1, b1=16, b2=0.0001, test3=0
  d1 = -(conj(0.0005455/pixel)), d2 = sqr(d1):
  test1=(iter<limit), test0=1-test0, test2=(iter!=limit)
  z=(z-zn)*test2+zn, z2=z*z, z4=z2*z2, z1=((z4*z-1)/(4*z4+(z4==0)))+d1
  z=(z2+c)*test1+(z-z1)*(1-test1)+d2
  test3=(test3 || (|z|>b1))
  z=z*(1-(test3 && test0 && test1))
  iter=iter+1.2
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42ccarr.frm
}


Carr2156 {; Modified Sylvie Gallet frm.
  z=flip(conj(abs((log(pixel)*sqrt(pixel)))))
  c=sin(conj(-0.81256,-0.139))-0.0387
  iter=1, rad=6, center=(-3.6,-3.0)
  pix=(10*pixel+(5.0,-3.5))*(-0.1,-0.95)
  zn=flip(center+rad/(pix-center)), limit=real(p1)
  test0=1, b1=16, b2=0.0001, test3=0
  d1 = -(conj(0.0005455/pixel)), d2 = sqr(d1):
  test1=(iter<limit), test0=1-test0, test2=(iter!=limit)
  z=(z-zn)*test2+zn, z2=z*z, z4=z2*z2, z1=((z4*z-1)/(4*z4+(z4==0)))+d1
  z=(z2+c)*test1+(z-z1)*(1-test1)+d2
  test3=(test3 || (|z|>b1))
  z=z*(1-(test3 && test0 && test1))
  iter=iter+1.2
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42ccarr.frm
}


Carr2157 {; Modified Sylvie Gallet frm.
  z=c=pixel-1/(tanh(0.250/pixel)-sqr(sinh(0.01250/pixel)))^6
  iter=1, rad=6, center=(-7.6,-3.0)
  pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
  zn=(center+rad/(pix-center)), limit=real(p1)
  test0=1, b1=16, b2=0.0001, test3=0, d1=(conj(0.00054550/pixel)):
  test1=(iter<limit), test0=1-test0, test2=(iter!=limit)
  z=conj(z-zn)*test2+conj(zn), z2=z*z, z4=z2*z2
  z1=((z4*z-1)/(4*z4+(z4==0)))+d1
  z=(z2+c)*test1+(z-z1)*(1-test1)
  test3=(test3 || (|z|>b1))
  z=z*(1-(test3 && test0 && test1))
  iter=iter+(1.099,0.0)
  ((|sqr(z)| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42ccarr.frm
}


Carr2158 {; Modified Sylvie Gallet frm.
  p0 = 1/pixel, c = conj(pixel)/(flip(p0)-conj(p0))
  z = (p0)/(3*pixel-flip(p0)-conj(p0))
  iter=1, rad=6, center=(-7.6,-3.0)
  pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
  zn=(center+rad/(pix-center)), limit=real(p1)
  test0=1, b1=16, b2=0.0001, test3=0, d1=conj(0.0005455/pixel):
  test1=(iter<limit), test0=1-test0, test2=(iter!=limit)
  z=conj(z-zn)*test2+conj(zn), z2=z*z, z4=z2*z2
  z1=((z4*z-1)/(imag(p1)*z4+(z4==0)))+d1
  z=(z2+c)*test1+(z-z1)*(1-test1)
  test3=(test3 || (|z|>b1))
  z=z*(1-(test3 && test0 && test1))
  iter=iter+(2.099,0.0)
  ((|sqr(z)| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42ccarr.frm
}


Carr2159 {; Modified Sylvie Gallet frm.
  z=flip(1-pixel)^1.8/(flip(asinh(pixel+1.5)))
  c=(-0.3,-0.625)
  iter=1, rad=6, center=(-7.6,-3.0)
  pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
  zn=(center+rad/(pix-center)), limit=real(p1)
  test0=1, b1=16, b2=0.0001, test3=0, d1=conj(0.0005455/pixel):
  test1=(iter<limit), test0=1-test0, test2=(iter!=limit)
  z=(z-zn)*test2+zn, z2=z*z, z4=z2*z2
  z1=((z4*z-1)/(imag(p1)*z4+(z4==0)))+d1
  z=(z2+c)*test1+(z-z1)*(1-test1)
  test3=(test3 || (|z|>b1))
  z=z*(1-(test3 && test0 && test1))
  iter=iter+(2.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42ccarr.frm
}


Carr2160 {; Modified Sylvie Gallet frm.
  c=(-0.7456,-0.132)
  z=(log((pixel+4/pixel)^1.8)/(1/asin(1-pixel)))
  iter=1, rad=6, center=(-7.6,-3.0)
  pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
  zn=(center+rad/(pix-center)), limit=real(p1)
  test0=1, b1=16, b2=0.0001, test3=0, d1=conj(0.0005455/pixel):
  test1=(iter<limit), test0=1-test0, test2=(iter!=limit)
  z=(z-zn)*test2+zn, z2=z*z, z4=z2*z2
  z1=((z4*z-1)/(imag(p1)*z4+(z4==0)))+d1
  z=(z2+c)*test1+(z-z1)*(1-test1)
  test3=(test3 || (|z|>b1))
  z=z*(1-(test3 && test0 && test1))
  iter=iter+(0.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42ccarr.frm
}


Carr2161 {; Modified Sylvie Gallet frm.
  z=c=(pixel*tanh(conj(1.9/pixel-1/pixel)))
  iter=1, rad=6, center=(-7.6,-3.0)
  pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
  zn=(center+rad/(pix-center)), limit=real(p1)
  test0=1, b1=16, b2=0.0001, test3=0, d1=conj(0.0005455/pixel):
  test1=(iter<limit), test0=1-test0, test2=(iter!=limit)
  z=(z-zn)*test2+zn, z2=z*z, z4=z2*z2
  z1=((z4*z-1)/(imag(p1)*z4+(z4==0)))+d1
  z=(z2+c)*test1+(z-z1)*(1-test1)
  test3=(test3 || (|z|>b1))
  z=z*(1-(test3 && test0 && test1))
  iter=iter+(2.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42ccarr.frm
}


Carr2162 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel
  z=1/((pixel+pixel)+flip(1/pixel)-conj(1/pixel))
  d1 = conj(0.000004550/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2163 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=1/((pixel+pixel)+flip(1/pixel)-conj(1/pixel))
  c=sin(conj(-0.81256,-0.1895))
  d1 = conj(0.000004550/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2164 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=sqr(1/((pixel+pixel)+flip(1/pixel)-conj(1/pixel)))
  c=sin(conj(-0.81256,-0.1895))
  d1 = conj(0.000004550/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2165 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=sqr(1/((pixel+tan(pixel))+flip(0.0010/pixel)-conj(0.010/pixel)))
  c=1/(pixel+flip(1/pixel)-conj(1/pixel)-sin(1/pixel))
  d1 = conj(0.000004550/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2166 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=sinh((-0.7456,0.2)*pixel)*sqr(pixel)\
        -conj(0.1/pixel)-flip(0.1/pixel)
  d1 = conj(0.000004550/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = (c-0.00625)*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2167 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c1=(-0.7456,0.2)*pixel, c2=pixel*pixel
  c3=conj(0.10/pixel)+flip(0.10/pixel)
  z = sinh(c1)*c2-c3, c = tanh(c1)*c2-c3
  d1 = conj(0.00000455/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = (c-0.00625)*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2168 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel
  z=flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  d1 = conj(0.0000455/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*sin(t+ct), c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2169 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=sqrt(pixel)+pixel
  z=flip(imag(1-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  d1 = conj(0.0000455/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*sin(t+ct), c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2170 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel+pixel
  z=sin(flip(imag(1-pixel))*conj(tan(pixel))\
      -conj(0.10/pixel)-flip(0.010/pixel))
  d1 = conj(0.0000455/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*sin(t+ct), c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}


Carr2171 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(conj(0.5-pixel)*conj((pixel))-sinh(0.10/pixel)-flip(0.010/pixel))
  z=(flip(imag(1-pixel))*conj(tan(pixel))\
        -conj(0.10/pixel)-flip(0.010/pixel))
  d1=(conj(0.00004550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*sin(t+ct), c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}


Carr2172 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(conj(0.5-pixel)*conj(pixel)-sinh(0.10/pixel)-flip(0.010/pixel))
  z=(flip(imag(1-pixel))/log(tan(pixel))\
       -conj(0.10/pixel)-flip(0.010/pixel))
  d1=(conj(0.00004550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*sin(t+ct), c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}


Carr2173 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-1.099,-0.2149)
  z=conj(pixel)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00010/pixel))
  d1=(conj(0.00004550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*(t+ct), c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}


Carr2174 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-1.099,-0.2249)
  z=abs(pixel)*(sqr(pixel))-sinh(0.10/pixel)-sqr(flip(0.00010/pixel))
  d1=(conj(0.00004550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*(t+ct), c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}


Carr2175 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=acos(1-pixel+pixel)^2-(conj(0.10/pixel))-(flip(0.010/pixel))
  c=(-1.099,-0.63659)
  d1=(conj(0.00004550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*tanh(t+ct), c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}


Carr2176 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=(pixel)-0.5/((log(conj(pixel))^12)+pixel)+conj(0.040/pixel)
  d1=(conj(0.00004550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}


Carr2177 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(pixel+pixel)-1/log(pixel-flip(0.010/pixel)-conj(0.10/pixel)+2/pixel)
  c=pixel+pixel
  d1=(conj(0.00004550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}


Carr2178 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(pixel+pixel)-1/log(pixel-1/sin(0.010/pixel))^2.5
  c=sin(conj(-0.81256,-0.2495))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-c/6)*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}


Carr2178a {; Modified Bob Carr 
           ; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(pixel+pixel)-1/log(pixel-1/sin(0.010/pixel))^2.5
  c=sin(conj(-0.81256,-0.2495))
  d1=(conj(0.0002550/pixel))
  z1=c1=(1.5*z+d1), z2=c2=(2.25*z+d1)
  z3=c3=(3.375*z+d1), z4=c4=(11.0625*z+d1)
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=fn1(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  z=(z-c/6)*fn2(1-(t1||t2||t3||t4))\
      +((z1*t1+d1)+(z2*t2+d1)+(z3*t3+d1)+(z4*t4+d1))
  c=c*(1-(t1||t2||t3||t4))+((c1*t1+d1)+(c2*t2+d1)+(c3*t3+d1)+(c4*t4+d1))
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: bej4.frm
}


Carr2179 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(pixel+pixel)-1/log(pixel-1/tan(0.0010/pixel))^2.5
  c=sin(conj(-0.655,-0.3509))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-c/6)*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}


Carr2180 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(3*pixel)-1/log(pixel-1/tan(0.0010/pixel))^3.5
  c=sin(conj(-0.7445,-0.3509))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-c/5)*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}


Carr2181 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel-((tan(pixel)+sin(pixel)-1/pixel))
  c=pixel-1/log(pixel-((tan(pixel)+sin(pixel)-1/pixel)))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=1:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <=bailout
  ;SOURCE: 42dcarr.frm
}


Carr2182 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel
  c=flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-c/10)*t+ct, c = c*t+ct
  z=(z^2+(-0.7856,0.10)+(c/7*pixel))
  iter=iter+1
  (|real(z)|) <=bailout
  ;SOURCE: 42dcarr.frm
}


Carr2183 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel
  c=(1-pixel)*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-c/10)*t+ct, c = c*t+ct
  z=(z^2+(-0.7356,0.10)+(c/7*pixel))
  iter=iter+1
  (|real(z)|) <=bailout
  ;SOURCE: 42dcarr.frm
}


Carr2184 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel+pixel
  z=(1-pixel)*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t+ct, c = c*t+ct
  z=(z^2+(-0.7356,0.10)+(c/9*pixel))
  iter=iter+1
  (|real(z)|) <=bailout
  ;SOURCE: 42dcarr.frm
}


Carr2185 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=sqrt(pixel)+pixel
  z=z5, z5=flip(1-pixel)*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  c=sin(conj(-0.81256,-0.2495))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t+ct, c = c*t+ct
  z=(z^2+(-0.7456,-0.13)+(c/7*pixel))
  c=z+c/2.125
  iter=iter+1
  (|real(z)|) <=bailout
  ;SOURCE: 42dcarr.frm
}


Carr2186 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=z5, z5=(pixel+pixel)-1/log(flip(pixel-1/sin(conj(0.010/pixel))))^2.5
  c=(pixel+pixel)-1/log(flip(pixel-1/sin(conj(0.010/pixel))))^2.5
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t+ct, c = c*t+ct
  z=(z^2+(-0.7406,-0.13)+(c/7*flip(pixel)))
  iter=iter+1
  (|real(z)|) <=bailout
  ;SOURCE: 42dcarr.frm
}


Carr2187 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=z5, z5=(pixel+pixel)-1/log(flip(pixel-1/sin(conj(0.010/pixel))))^2.5
  c=flip(pixel+pixel)-1/log(flip(pixel-1/sin(conj(0.010/pixel))))^2.5
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t+ct, c = c*t+ct
  z=(z^2+(-0.6706,-0.13)+(c/5*exp(pixel)))
  iter=iter+1
  (|real(z)|) <=bailout
  ;SOURCE: 42dcarr.frm
}


Carr2188 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel-sqrt(sqrt(pixel-conj(0.10/pixel)-flip(0.010/pixel)))
  c=sin(conj(-0.5545,-0.30009))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=8.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=1:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-c/10)*t+ct, c = c*t+ct
  z=z^2+(-0.7106,-0.13)+c/6
  iter=iter+1
  (|real(z)|) <=bailout
  ;SOURCE: 42dcarr.frm
}


Carr2189 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=sqr(flip(2*(1-pixel))\
      -sqrt(sqrt(3*pixel-(0.10/pixel)-flip(0.010/pixel))))
  c=sin(conj(-0.5545,-0.30009))
  d1=(conj(0.002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=4.375*z+d1, z4=8.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=1:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = (z-c/10)*t + ct, c = c*t + ct+d4
  z=z^2+(-0.3,-0.613)+c/6
  iter=iter+1
  (|real(z)|) <=bailout
  ;SOURCE: 42dcarr.frm
}


Carr2190 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(2*pixel+0.72)-1/log(pixel-1/sin(0.010/pixel))
  c=sin(conj(-0.81256,-0.3095))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-c/10)*t+ct, c = c*t+1.5*ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}


Carr2191 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(2*pixel+0.72)-1/log(pixel-1/sin(0.010/pixel))
  c=sin(conj(-0.81256,-0.3095))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-c/6)*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}


Carr2192 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=(2*pixel+0.4)-1/log(pixel-log(0.010/pixel))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=6.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}


Carr2193 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=(2*pixel+0.4)-1/log(pixel-log(0.010/pixel))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=6.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-c/4)*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}


Carr2194 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(3*pixel+0.4)-(1/log(4*pixel-log(0.010/pixel)))
  c=sin((pixel+0.4)-(1/log(pixel-log(0.010/pixel))))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=6.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}


Carr2195 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=acos(1-pixel+pixel)^2-(conj(0.10/pixel))-(flip(0.0060/pixel))
  c=((2*pixel)-0.45/log(sin(pixel-log(1/log(0.005550/pixel)))))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=6.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-c/10)*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}


Carr2196 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(acos(1-pixel+pixel)^2-(conj(0.10/pixel))-(flip(0.001250/pixel)))
  c=sin(conj(-0.763,-0.3509))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=5.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-c/10)*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}


Carr2197 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel-tanh(pixel)/log((tan(pixel)+sin(pixel-1)-2.75/pixel))
  z=(acos(1-pixel+pixel)^2-(conj(0.10/pixel))-(tanh(0.00025250/pixel)))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=5.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+c/8)*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}


Carr2198 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel-tanh(pixel)/(sqrt(log((tan(pixel)+sin(pixel-1)-2.75/pixel))))
  z=(acos(1-pixel+pixel)^2-(conj(0.10/pixel))-(tanh(0.00025250/pixel)))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=5.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+c/8)*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}


Carr2199 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(acos(1-pixel+pixel)^2-(conj(0.10/pixel))-(tanh(0.0025250/pixel)))
  c=(conj(pixel)+flip(pixel))-1/log(pixel-1/sin(0.010/pixel))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=5.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+c/8)*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}


Carr2200 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=pixel-tanh(pixel)/(sqrt(log((tan(pixel)+sin(pixel-1)-2.75/pixel))))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=5.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+c/8)*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}


Carr2201 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=pixel-tanh(pixel)/(sqrt(log((tan(pixel)+sin(pixel-1)-2.75/pixel))))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=5.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+c/8)*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}


Carr2202 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel*cabs(pixel)/(sqrt(log((tan(1-pixel)+sin(pixel-1)-2.75/pixel))))
  z=(acos(1-pixel+pixel)^2-(conj(0.10/pixel))-(tanh(0.0025250/pixel)))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=5.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+c/8)*t+ct, c = c*t+ct
  z = z*z+c-1.15-c/5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}


Carr2203 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel^2.3/(sqrt(log((tan(1-pixel)+sin(pixel-1)-2.75/pixel))))
  z=(acos(1-pixel+pixel)^2-(conj(0.10/pixel))-(tanh(0.0025250/pixel)))
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=5.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+c/8)*t+ct, c = c*t+ct
  z = z*z+c-1.15-c/5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}


Carr2204 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=tan(pixel+0.72)*conj(pixel)-1/log(pixel-1/sin(0.0010/pixel))
  c=pixel-conj(0.010/pixel)-flip(0.010/pixel)
  d1=(conj(0.0002550/pixel)), d4=4*d1
  z1=1.5*z+d1, z2=2.25*z+d1, z3=3.375*z+d1, z4=5.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+c/8)*t+ct, c = c*t+ct
  z = z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42dcarr.frm
}


Carr2205 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=sinh(pixel^2)-1/log(pixel-(0.10/pixel)-flip(0.0010/pixel))
  c=sin(conj(-0.7896,-0.1309))
  d1=(conj(0.0002550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2206 {; Modified Sylvie Gallet frm. [101324,3444],1996
  p5 = 0.001/pixel
  z=sinh(pixel^2)-1/log(pixel-(100*p5)-flip(p5))
  c=(-0.3159,-0.63555)
  d1=(conj(0.0002550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c+p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2207 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel*(pixel-0.2)-1/log(0.10/pixel)\
      -cos(0.010/pixel)+conj(0.10/pixel)+0.45
  c=(-0.8606,-0.0959)
  d1=(conj(0.0002550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z=(z-c/10)*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2208 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=conj(pixel)*(pixel+1.25)-(flip(asin(0.010/pixel))\
       -conj(asin(0.10/pixel)))+0.25
  c=(-0.8606,-0.1279)
  d1=(conj(0.0002550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = (z-0.1*c)*t + ct + d4
  c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2209 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=1/(pixel-(conj(0.10/pixel)+flip(conj(0.010/pixel)))^4)
  c=(-0.7456,-0.3815)
  d1=(conj(0.0002550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-0.1*c)*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2210 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=1/(pixel-conj(0.10/pixel-flip(0.010/pixel)))
  c=(-1.189,-0.25)
  d1=(conj(0.0002550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-0.1*c)*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2211 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=1/(pixel-conj(0.10/pixel-flip(0.010/pixel)))
  c=(-0.3309,-0.70555)
  d1=(conj(0.0002550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-0.1*c)*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2212 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=sinh(1/(pixel-conj(0.10/pixel-flip(0.010/pixel))))
  c=(0.3,0.625)
  d1=(conj(0.0002550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.75*z+d1, z3 = 3.975*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-0.1*c)*t + ct, c = c*t + ct
  z=z*z+(c-(0.010,0.0010))
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2213 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=tan(1/(conj(pixel)-conj(0.10/pixel-flip(0.010/pixel))))
  c=(0.3,0.651)
  d1=(conj(0.0002550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.75*z+d1, z3 = 3.975*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-0.1*c)*t + ct, c = c*t + ct
  z=z*z+(c-(0.0910,0.0310))
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2214 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=sinh((-0.7456,0.2)*(pixel))*sqr(pixel)\
      -conj(0.10/pixel)-flip(0.10/pixel)
  c=(0.3,0.5825)
  d1=(conj(0.0002550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.975*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-0.1*c)*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2215 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=conj(pixel)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00510/pixel))
  c=(0.3,0.5825)
  d1=(conj(0.0002550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-0.1*c)*t + ct, c = c*t + ct
  z=z*z+(c-(0.0010,0.0310))
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2216 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=cabs(pixel)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00510/pixel))
  c=(0.3,0.5825)
  d1=(conj(0.0002550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-0.1*c)*t + ct, c = c*t + ct
  z=z*z+(c-(0.0010,0.0310))
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2217 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(cabs(0.5-pixel)*sqr(conj(pixel))\
       -conj(0.10/pixel)-sqr(flip(0.00510/pixel)))+0.15
  c=(-1.099,-0.2249)
  d1=(conj(0.0002550/pixel)), d4 = 4*d1, d2 = 0.25*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0, c4 = 0.25*z4 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-0.1*c)*t + ct, c = c*t + ct + c4*t4 + d2
  z=z*z+(c-(0.0010,0.0310))
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2218 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=1/(pixel-1/log(0.0010/pixel)\
         -cos(0.010/pixel+1.25)-conj(0.10/pixel))
  d1=(conj(0.0002550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.975*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct1 = z1*t1, ct2 = z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-0.1*c)*t + ct1 + ct2, c = c*t + ct1 + d1
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2219 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=1/(pixel-1/log(0.0010/pixel)-cos(0.010/pixel)-conj(0.10/pixel))
  c=(0.3,0.5825)
  d1=(conj(0.0002550/pixel)), d2 = 2*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.975*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct1 = z1*t1+z2*t2+d2, ct2 = z3*t3+z4*t4+d2
  z = (z-0.1*c)*t + ct1 + ct2, c = c*t + ct1
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2220 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=flip(imag(0.33-sin(pixel)))*sqr(pixel)\
      -conj(0.10/pixel)-flip(0.010/pixel)
  c=pixel-conj(0.090/pixel-flip(0.010/pixel))
  d1=(conj(0.00004550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*sin(t) + 1/log(ct), c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2221 {; Modified Sylvie Gallet frm.
  z=flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  c=pixel-conj(0.10/pixel-flip(0.010/pixel))
  compt=0, limit=real(p1*cos(pixel/5)), bailout=4
  p=(-0.743380900000982,-0.131850030300002):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42ecarr.frm
}


Carr2222 {; Modified Sylvie Gallet frm.
  z=flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  c=pixel-conj(0.10/pixel-flip(0.010/pixel))
  compt=0, limit=real(p1*cos(pixel/5)), bailout=4
  p=(-0.3009,-0.63555):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42ecarr.frm
}


Carr2223 {; Modified Sylvie Gallet frm.
  z=pixel-(conj(0.10/pixel)+flip(conj(0.010/pixel)))
  c=conj(pixel)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00510/pixel))
  iter=1, rad=6, center=(-7.6,-3.0)
  pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
  zn=(center+rad/(pix-center)), limit=real(p1)
  test0=1, b1=16, b2=0.0001, test3=0:
  test1=(iter<limit), test0=1-test0, test2=(iter!=limit)
  z=(z-zn)*test2+(zn), z2=z*z, z4=z2*z2
  z6=z2*z4, z1=(z6*z-1)/(imag(p1)*z6)
  z=(z2+c)*test1+(z-z1)*(1-test1)
  test3=(test3 || (|z|>b1))
  z=z*1.01120*(1-(test3 && test0 && test1))
  iter=iter+(2.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42ecarr.frm
}


Carr2224 {; Modified Sylvie Gallet frm.
  c=conj(pixel)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00510/pixel))
  z = pixel, c = 0.875*c+(-0.7456,-0.132)
  iter=1, rad=6, center=(-7.6,-3.0)
  pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
  zn=(center+rad/(pix-center)), limit=real(p1)
  test0=1, b1=16, b2=0.0001, test3=0:
  test1=(iter<limit), test0=1-test0, test2=(iter!=limit)
  z=(z-zn)*test2+(zn), z2=z*z, z4=z2*z2
  z6=z2*z4, z1=(z6*z-1)/(imag(p1)*z6)
  z=(z2+c)*test1+(z-z1)*(1-test1)
  test3=(test3 || (|z|>b1))
  z=z*1.01110*(1-(test3 && test0 && test1))
  iter=iter+(2.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42ecarr.frm
}


Carr2225 {; Modified Sylvie Gallet frm.
  z = pixel, c = pixel^2+0.25, c = 0.875*c - (0.3,0.65)
  iter=1, rad=6, center=(-7.6,-3.0)
  pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
  zn=(center+rad/(pix-center)), limit=real(p1)
  test0=1, b1=16, b2=0.0001, test3=0:
  test1=(iter<limit), test0=1-test0, test2=(iter!=limit)
  z=(z-zn)*test2+(zn), z2=z*z, z4=z2*z2
  z6=z2*z4, z1=(z6*z-1)/(imag(p1)*z6+(z6==0))
  z=(z2+c)*test1+(z-z1)*(1-test1)
  test3=(test3 || (|z|>b1))
  z=z*1.01105*(1-(test3 && test0 && test1))
  iter=iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42ecarr.frm
}


Carr2226 {; Modified Sylvie Gallet frm.
  z=conj(pixel)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00510/pixel))
  c=pixel^2+0.19, c = 0.875*c+(-0.8656,0.2)
  iter=1, rad=6, center=(-7.6,-3.0)
  pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
  zn=(center+rad/(pix-center)), limit=real(p1)
  test0=1, b1=16, b2=0.0001, test3=0:
  test1=(iter<limit), test0=1-test0, test2=(iter!=limit)
  z=(z-zn)*test2+(zn), z2=z*z, z4=z2*z2
  z6=z2*z4, z1=(z6*z-1)/(imag(p1)*z6)
  z=(z2+c)*test1+(z-z1)*(1-test1)
  test3=(test3 || (|z|>b1))
  z=z*1.01105*(1-(test3 && test0 && test1))
  iter=iter+(3.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42ecarr.frm
}


Carr2227 {; Modified Sylvie Gallet frm.
  z=conj(pixel)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00510/pixel))
  c=pixel^6+0.196, c = 0.875*c+(-0.8656,0.2)
  iter=1, rad=6, center=(-7.6,-3.0)
  pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
  zn=(center+rad/(pix-center)), limit=real(p1)
  test0=1, b1=16, b2=0.0001, test3=0:
  test1=(iter<limit), test0=1-test0, test2=(iter!=limit)
  z=(z-zn)*test2+(zn), z2=z*z, z4=z2*z2
  z6=z2*z4, z1=(z6*z-1)/(imag(p1)*z6)
  z=(z2+c)*test1+((z-z1)*(1-test1))
  test3=(test3 || (|z|>b1))
  z=z*1.010255*(1-(test3 && test0 && test1))
  iter=iter+(3.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42ecarr.frm
}


Carr2228 {; Modified Sylvie Gallet frm.
  z=conj(pixel)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00510/pixel))
  c=pixel^8+0.196, c = 0.875*c+(-0.8656,0.2)
  iter=1, rad=6, center=(-7.6,-3.0)
  pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
  zn=(center+rad/(pix-center)), limit=real(p1)
  test0=1, b1=16, b2=0.0001, test3=0:
  test1=(iter<limit), test0=1-test0, test2=(iter!=limit)
  z=(z-zn)*test2+zn, z2=z*z, z4=z2*z2
  z6=1.53*(z2*z4), z1=(z6*z-1)/(imag(p1)*z6+(z6==0))
  z=(z2+c)*test1+(z-z1)*(1-test1)
  test3=(test3 || (|z|>b1))
  z=z*1.010555*(1-(test3 && test0 && test1))
  iter=iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42ecarr.frm
}


Carr2229 {; Modified Sylvie Gallet frm.
  z=(conj(pixel)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00510/pixel)))^1.2
  c=pixel^12+0.196, c = 0.875*c+(-0.8856,0.2)
  iter=1, rad=6, center=(-7.6,-3.0)
  pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
  zn=(center+rad/(pix-center)), limit=real(p1)
  test0=1, b1=16, b2=0.0001, test3=0:
  test1=(iter<limit), test0=1-test0, test2=(iter!=limit)
  z=(z-zn)*test2+zn, z2=z*z, z4=z2*z2
  z6=1.53*(z2*z4), z1=(z6*z-1)/(imag(p1)*z6+(z6==0))
  z=(z2+c)*test1+((z-z1)*(1-test1))
  test3=(test3 || (|z|>b1))
  z=z*1.011555*(1-(test3 && test0 && test1))
  iter=iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42ecarr.frm
}


Carr2230 {; Modified Sylvie Gallet frm.
  z=flip(pixel)
  c=pixel^10+0.196, c = 0.875*c+(-0.8856,0.2)
  iter=1, rad=6, center=(0.6,0.3)
  pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
  zn=(center+rad/(pix-center)), limit=real(p1)
  test0=1, b1=16, b2=0.0001, test3=0:
  test1=(iter<limit), test0=1-test0, test2=(iter!=limit)
  z=(z-zn)*test2+zn, z2=z*z, z4=z2*z2
  z6=(z2*z4), z1=(z6*z-1)/(imag(p1)*z6+(z6==0))
  z=(z2+c)*test1+((z-z1)*(1-test1))
  test3=(test3 || (|z|>b1))
  z=z*1.011555*(1-(test3 && test0 && test1))
  iter=iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42ecarr.frm
}


Carr2231 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=((pixel)*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel))
  c=pixel/5+pixel/3+(pixel/2)^4
  d1=(conj(0.00014550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2232 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=((pixel)*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel))
  z=flip(pixel/5)+conj(pixel/3)+(pixel/2)^4
  d1=(conj(0.00014550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2233 {; Modified Sylvie Gallet frm. [101324,3444],1996
  b=conj(0.10/pixel)-flip(0.010/pixel)
  z=flip((pixel-b)/5)+((pixel-b)/3)+(pixel/2)^4
  c=(-0.7056,-0.122), p5 = 0.05*pixel
  d1=(conj(0.00014550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c-p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2234 {; Modified Sylvie Gallet frm. [101324,3444],1996
  b=conj(0.10/pixel)-flip(0.010/pixel)
  z=1/log((pixel-b)/5)+((pixel-b)/3)+(pixel/2)^4
  c=(-0.7056,-0.122), p5 = 0.05*pixel
  d1=(conj(0.00014550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c-p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2235 {; Modified Sylvie Gallet frm. [101324,3444],1996
  b=conj(0.010/pixel)-flip(0.10/pixel)
  z=1/log((pixel-b)/5)+((pixel-b)/3)+(pixel/2)^8
  c=(-0.7056,-0.122), p5 = 0.05*pixel
  d1=(conj(0.00014550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c-p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2236 {; Modified Sylvie Gallet frm. [101324,3444],1996
  b=conj(0.010/pixel)-flip(0.10/pixel)
  z=((pixel-b)/5)+1/log((pixel-b)/3)+(pixel/2)^8
  c=(-0.7056,-0.122), p5 = 0.05*pixel
  d1=(conj(0.00014550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c-p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2237 {; Modified Sylvie Gallet frm. [101324,3444],1996
  b=exp(0.0010/pixel)-1/log(0.10/pixel)
  z=1/log((pixel-b)/5)+((pixel-b)/3)+sqrt((pixel-b)/2)^8
  c=(-0.7056,-0.102), p5 = 0.05*pixel
  d1=(conj(0.00014550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-0.1*c)*t + ct, c = c*t + ct
  z=z*z+c-p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2238 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(pixel+pixel)-1/log(pixel-1/tan(0.0010/pixel))^2.5
  c=sin(conj(-0.655,-0.3959)), p5 = pixel/15
  d1=(conj(0.00024550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-0.1*c)*t + ct, c = c*t + ct
  z=z*z+c-p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2239 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(pixel+pixel+pixel)-1/log(pixel-1/tan(0.0010/pixel))^2.5+0.28
  c=sin(conj(-0.655,-0.3789)), p5 = pixel/15
  d1=(conj(0.00024550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-0.1*c)*t + ct, c = c*t + ct
  z=z*z+c-p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2240 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  b=(conj(0.0010/pixel))-(0.010/pixel)
  z=(pixel+pixel+pixel)-1/log(pixel-1/tan(0.0010/pixel))^2.5+0.28
  c=sin(conj(-0.655,-0.3789)), p5 = pixel/15
  d1=(conj(0.00024550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+b)*t + ct, c = c*t + ct
  z=z*z+c-p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2241 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  b = 0.0005/pixel-conj(0.005/pixel), p5 = 0.05*pixel
  z=(pixel+pixel+pixel)-1/log(pixel-1/tan(0.0010/pixel))^2.5+0.28
  c=sin(conj(-0.7456,0.23))
  d1=(conj(0.00024550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+b)*t + ct, c = c*t + ct
  z=z*z+c-p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2242 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444]1996
  p5 = 0.05*pixel
  z=(3*pixel)+conj(pixel-flip(0.010/pixel))
  c=sin(conj(-0.7456,0.23))
  d1=(conj(0.00024550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+b)*t + ct, c = c*t + ct
  z=z*z+c-p5
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ecarr.frm
}


Carr2243 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b = 0.0005/newpixel-conj(0.005/newpixel), p5 = 0.05*newpixel
  z=(3*newpixel)+conj(newpixel-flip(0.010/newpixel))+0.3
  c=sin(conj(-0.655,-0.3589))
  d1=(conj(0.00024550/newpixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+b)*t + ct, c = c*t + ct
  z=z*z+c-p5
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ecarr.frm
}


Carr2244 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  p5 = 0.05*pixel, b = flip(conj(0.0010/pixel))
  z=(3*pixel)-conj(0.001/pixel-flip(0.01/pixel))+1/pixel
  c=sin(conj(-0.655,-0.3819))
  d1=(conj(0.00024550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+b)*t + ct, c = c*t + ct
  z=z*z+c-p5
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ecarr.frm
}


Carr2245 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  b=(conj(0.0010/pixel)), p5 = 0.025*pixel
  z=(3*pixel)-conj(0.001/pixel-flip(0.01/pixel))+1/pixel+0.275
  c=(pixel-0.05)
  d1=(conj(0.00024550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-b)*t+ct, c = c*t + ct
  z=z*z+c-p5
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ecarr.frm
}


Carr2246 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  b=(conj(0.0010/pixel)), p5 = 0.05*pixel
  z=(6*pixel)-sin(0.001/pixel-tan(0.01/pixel))+1/pixel+0.275
  c=sin(conj(-0.655,-0.3359))
  d1=(conj(0.00024550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+b)*t+ct, c=c*t + ct
  z=z*z+1.02*c-p5
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ecarr.frm
}


Carr2247 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b=(conj(0.0010/newpixel)), p5 = 0.05*newpixel
  z=(3.5*newpixel)-sin(0.001/newpixel-tan(0.01/newpixel))+conj(0.0010/newpixel)+0.275
  c=sin(conj(-0.515,-0.0959))
  d1=(conj(0.00044550/newpixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+b)*t + ct, c = c*t + ct
  z=z*z+c-p5
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ecarr.frm
}


Carr2248 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  b=(conj(0.0010/pixel)), p5 = 0.05*pixel
  z=(3.5*pixel^5)-sin(0.001/pixel-tan(0.01/pixel))\
       +conj(0.0010/pixel)+0.135
  c=sin(conj(-0.515,-0.4399))
  d1=(conj(0.00044550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+b)*t + ct, c = c*t + ct
  z=z*z+1.025*c-p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2249 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  k=sin(2*newpixel)^2.75+tan(2*newpixel)^2.25
  z=k-sin(0.001/newpixel-tan(0.01/newpixel))+conj(0.0010/newpixel)+0.115
  c=sin(-0.615,0.3019), p5 = newpixel/30
  d1=(conj(0.00044550/newpixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-0.1*c)*t + ct, c = c*t + ct
  z=z*z+1.025*c-p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2250 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  r=(pixel+pixel), r3 = r/30
  z=c=r-(conj(0.010/pixel)-flip(0.10/pixel))+0.09
  d1=(conj(0.00044550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2= 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+0.9*c-r3
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2251 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r=flip(newpixel+newpixel), p5 = (r+newpixel)/30
  z=c=r-(conj(0.010/newpixel)-flip(0.10/newpixel))-0.15
  d1=(conj(0.00044550/newpixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c-p5-c/30
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2252 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r=(newpixel+newpixel), p5 = (r+newpixel)/30
  z=c=r-(conj(0.010/newpixel)-flip(0.10/newpixel))-0.15
  d1=(conj(0.00044550/newpixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c-p5-c/30
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2253 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  r=pixel+pixel, p5 = 0.05*(r+pixel)
  z=c=r-(conj(0.03/pixel)-flip(0.0030/pixel)+0.055/pixel)-0.15
  d1=(conj(0.00044550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+0.95*c-p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2254 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  r=flip(conj(pixel+pixel)), p5 = (r+pixel)/30
  z=c=r-(conj(0.0095/pixel)-flip(0.019/pixel)+tanh(0.029/pixel))-0.29
  d1=(conj(0.00044550/pixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c-p5-c/30
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2255 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel+newpixel, p5 = r/35 + 0.025*newpixel
  z=c=r-(conj(0.0095/newpixel)-sinh(0.019/newpixel)+tanh(0.029/newpixel))-0.29
  d1=(conj(0.00044550/newpixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c-p5-c/35
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2256 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = conj(newpixel+newpixel), p5 = r/35 + 0.025*newpixel
  z=c=r-(conj(0.0095/newpixel)-sinh(0.019/newpixel)+tanh(0.029/newpixel))-0.29
  d1 = conj(0.00044550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z=z*z+c-p5-c/35
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ecarr.frm
}


Carr2257 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = conj(newpixel/2), p5 = 0.1*r+newpixel/30
  z=c=(3.5*newpixel^5)-r-sin(0.08-flip(0.01/newpixel))+conj(0.0535/newpixel)+0.097
  d1 = conj(0.00044550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.1*c)*t + ct, c = c*t + ct
  z = z*z + 0.96*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}


Carr2258 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = flip(newpixel/4+newpixel/3), p5 = 0.1*r-newpixel/30
  z=c=(2*newpixel^4)-r-sin(0.8*newpixel-flip(0.01/newpixel))+conj(0.1275/newpixel)+0.117
  d1 = conj(0.00044550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.1*c)*t + ct, c = c*t + ct
  z = z*z + 0.96*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}


Carr2259 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = tanh(newpixel/5+newpixel/7), p5 = 0.1*r-newpixel/30
  z=c=(2*newpixel^7)-conj(r)-sin(0.0001/newpixel-flip(0.009/newpixel))\
      +conj(0.1873/newpixel)+0.117
  d1 = conj(0.00044550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.1*c)*t + ct, c = c*t + ct
  z = z*z + 0.96*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}


Carr2260 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = tanh(newpixel/5+newpixel/7), p5 = 0.025*(r-newpixel)
  z=c=(3*newpixel)^10+r-flip(sqr(newpixel)\
         -conj(0.010/newpixel)-flip(0.010/-newpixel))-0.25
  d1 = conj(0.00044550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.1*c)*t + ct, c = c*t + ct
  z = z*z + 0.975*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}


Carr2261 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, p5 = 0.175*newpixel
  z=c=sinh(newpixel)-1/log(4*newpixel-conj(0.01/newpixel/1.5)\
        -flip(0.0010/newpixel)+0.6/r)
  d1=(conj(0.00199550/newpixel)), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.1*c)*t + ct, c = c*t + ct
  z = z*z + 0.975*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}


Carr2262 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, p5 = r/13.5 - 0.1*newpixel
  z=c=sinh(newpixel)-1/log(4*flip(newpixel)-conj(0.01/newpixel)\
        -flip(0.0010/newpixel)+4.6/r)
  d1 = conj(0.00199550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.1*c)*t + ct, c = c*t + ct
  z = z*z + 0.9*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}


Carr2263 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = 8*newpixel, j =  newpixel, p5 = 0.7*newpixel
  z=c=sinh(newpixel)-1/log(2*j+0.0450/j-conj(0.010/-newpixel)\
        -flip(0.050/newpixel)+4.6/r)
  d1 = conj(0.00129550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 6.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.1*c)*t + ct, c = c*t + ct
  z = z*z + 0.9*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}


Carr2264 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, j = 2*newpixel, p5 = 0.45*newpixel
  z=c=sinh(newpixel)-1/sqrt(j+0.3550/j-conj(0.010/newpixel)\
        -flip(0.0250/newpixel)+2/r)
  d1=(conj(0.00044550/newpixel)), d4 = 4*d1
  z1=c1=(1.5*z+d1), z2=c2=(2.25*z+d1), z3=c3=(3.375*z+d1)
  z4=c4=(5.0625*z+d1)
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.125*c)*t + ct, c = c*t + ct
  z = z*z + 0.95*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}


Carr2265 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, j = newpixel, p5 = 0.45*newpixel
  z=c=tanh(newpixel+newpixel/0.9)-1/sqrt(j+0.3550/j-conj(0.010/newpixel)\
        -flip(0.0250/newpixel)+2/r)
  d1 = conj(0.00044550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.125*c)*t + ct, c = c*t + ct
  z = z*z + 0.95*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}


Carr2266 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, j = 2*newpixel, p5 = 0.45*newpixel
  z=tanh(4.33*newpixel)-1/sqrt(j+0.3550/j-conj(0.030/newpixel)\
      -flip(0.0550/newpixel)+2/r)
  c=2*newpixel+(-0.099,-0.2249)
  d1 = conj(0.00044550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.125*c)*t + ct, c = c*t + ct
  z = z*z + 0.95*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}


Carr2267 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, j = flip(3.5*newpixel-0.5)+conj(newpixel-0.6) 
  p5 = 0.45*newpixel
  z=tanh(newpixel)-1/sqrt(j+0.5550/j-conj(0.030/newpixel)\
      -flip(0.0550/newpixel)+2/r)
  c=2*newpixel+(-0.099,-0.2249)
  d1 = conj(0.00044550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.125*c)*t + ct, c = c*t + ct
  z = z*z + 0.95*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}


Carr2268 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, j = flip(3.5*newpixel-0.9)+conj(newpixel-0.9) 
  p5 = 0.18*newpixel
  z=tanh(2*newpixel)-1/sqrt(j+0.5550/j-conj(0.030/newpixel)\
      -flip(0.0550/newpixel)+2/r)
  c=2*newpixel+(-0.099,-0.2249)
  d1 = conj(0.00039550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.125*c)*t + ct, c = c*t + ct
  z = z*z + 0.98*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}


Carr2269 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, j = flip(3.5*newpixel-0.9)+conj(newpixel-0.9) 
  p5 = 0.18*newpixel
  z=conj(flip(2*newpixel))-1/sqrt(j+0.5550/j-conj(0.030/newpixel)\
     -flip(0.0550/newpixel)+2/r)
  c=2*newpixel+(-0.099,-0.2249)
  d1 = conj(0.00039550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.125*c)*t + ct, c = c*t + ct
  z = z*z + 0.98*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}


Carr2270 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*4, j = flip(3.5*newpixel-0.9)+conj(newpixel-0.9), p5 = newpixel/6
  c=conj(flip(2*newpixel))-1/sqrt(j+0.5550/j-conj(0.030/newpixel)\
     -flip(0.0550/newpixel)+2/r)
  z = 2*conj(newpixel+0.15)
  d1 = conj(0.00110550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.125*c)*t + ct, c = c*t + ct
  z = z*z + c-c/30 - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}


Carr2271 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, j = sin(sinh(sin(newpixel)))+tan(tanh(tan(newpixel)))
  z = 2*conj(newpixel), p5 = 0.225*newpixel
  c = z-(j-conj(0.010/newpixel)-flip(0.0010/newpixel))
  d1 = conj(0.00110550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.125*c)*t + ct, c = c*t + ct
  z = z*z + 0.975*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}


Carr2272 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, j=conj(sinh(sin(newpixel)))+flip(tanh(tan(newpixel)))
  c=conj(2*newpixel)-(j-conj(0.010/newpixel)-flip(0.0010/newpixel))
  z=1/log(2*conj(newpixel+0.2)), p5 = 0.3*newpixel
  d1 = conj(0.00080550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+0.125*c)*t + ct, c = c*t + ct
  z = z*z + c-c/30 - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}


Carr2273 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, j=conj(sinh(sin(newpixel)))+flip(tanh(tan(newpixel)))
  z=conj(2*newpixel)-(j-conj(0.010/newpixel)-flip(0.0010/newpixel))
  c=1/(2*newpixel-(conj(0.10/newpixel)+flip(conj(0.010/newpixel)))^4)
  d1 = conj(0.00029550/newpixel), d4 = 4*d1, p5 = 0.3*newpixel
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-0.1*c)*t + ct, c = c*t + ct
  z = z*z + c-c/30 - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}


Carr2274 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, j=1.8*newpixel, p5 = 0.225*newpixel
  z=conj(2*newpixel)-(j-conj(0.010/newpixel)-flip(0.0010/newpixel))
  c=1/(2*newpixel-(conj(0.10/newpixel)+flip(conj(0.010/newpixel)))^4.1)
  d1 = conj(0.00029550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-0.125*c)*t + ct, c = c*t + ct
  z = z*z + 0.975*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}


Carr2275 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, j=flip(3.8*newpixel), p5 = 0.3*newpixel
  z=(1.8*newpixel)-(j/6-conj(0.010/newpixel)-flip(0.0010/newpixel))
  c = (0.4,0.2) + newpixel + conj(newpixel) + flip(newpixel)
  d1 = conj(0.00059550/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z=(z-c/6)*t + ct, c = c*t + ct
  z = z*z + c-c/30 - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}


Carr2276 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, p5 = 0.225*newpixel
  c=(newpixel+newpixel)-1/log(newpixel-1/tan(0.001/newpixel))^3.8
  z = newpixel+conj(flip(newpixel))+flip(tanh(newpixel))
  d1 = conj(0.00060350/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z=(z-c/6)*t + ct, c = c*t + ct
  z = z*z + 0.975*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}


Carr2277 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, p5 = 0.225*newpixel
  c=(newpixel+newpixel)-1/log(newpixel-1/tan(0.001/newpixel))^3.8
  z = newpixel+conj(flip(newpixel))+flip(tanh(conj(sinh(newpixel))))
  d1 = conj(0.00060350/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z=(z-c/6)*t + ct, c = c*t + ct
  z = z*z + 0.975*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}


Carr2278 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel)), p0 = 0.2*newpixel
  r = newpixel*8, m=conj(tanh(conj(sinh(newpixel+flip(0.0035/newpixel)))))
  c=(6*newpixel+flip(0.0055/newpixel))-1/log(newpixel-1/tan(0.001/newpixel))^4.8
  z=2*(m)+3*newpixel-flip(0.0035/newpixel), p5 = r/30 + 0.025*newpixel
  d1 = 0.00034150/newpixel, d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  z6 = z4^6, bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3  + d4
  z = (z-p0)*t + z4*t4 + ct, c = c*t + z6*t4 + ct
  z = z*z + 0.975*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}


Carr2279 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel)), p0 = 0.2*newpixel
  r = newpixel*8, m=conj(tanh(conj(sinh(newpixel+flip(0.0035/newpixel)))))
  c=sin(conj(-0.515,-0.0959)), p5 = 0.225*newpixel
  z=2*(m)+3*newpixel-flip(0.0035/newpixel)
  d1 = imag(0.00145150/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  z6 = z4^6, bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + d4
  z = (z-p0)*t + z4*t4 + ct, c = c*t + z6*t4 + ct
  z = z*z + 0.975*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}


Carr2280 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel)), p0 = 0.2*newpixel
  r = newpixel*8, m=conj(tanh(conj(sinh(newpixel+flip(0.0035/newpixel)))))
  c=(6*newpixel+flip(0.0055/newpixel))-1/log(newpixel-1/tan(0.001/newpixel))^4.8
  z=2*(m)+3*newpixel-flip(0.0035/newpixel), p5 = 0.225*newpixel
  d1 = imag(0.00025150/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  z6 = z4^6, bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + d4
  z = (z-p0)*t + z4*t4 + ct, c = c*t + z6*t4 + ct
  z = z*z + 0.975*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}


Carr2281 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, m=conj(tanh(conj(sinh(newpixel+flip(0.0035/newpixel)))))
  z=(3.5*newpixel^5)-sin(0.001/newpixel-tan(0.01/newpixel))\
       +conj(0.0010/newpixel)+0.135
  c=2*(m)+3*newpixel-flip(0.0035/newpixel), p5 = 0.36*newpixel
  d1 = imag(0.00056150/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  z6 = z4^6, bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + d4
  z = (z-0.125*c)*t + z4*t4 + ct, c = c*t + z6*t4 + ct
  z = z*z + 0.96*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}


Carr2282 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, m=conj(tanh(conj(sinh(newpixel+flip(0.0035/newpixel)))))
  z=(2.5*newpixel^3.5)-sin(0.001/newpixel-tan(0.01/newpixel))\
      +conj(0.0010/newpixel)+0.135
  c=(m)+3*conj(newpixel-flip(0.0035/newpixel)), p5 = 0.36*newpixel
  d1 = imag(0.00062350/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  z6 = z4^6, bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + d4
  z = (z-0.125*c)*t + z4*t4 + ct, c = c*t + z6*t4 + ct
  z = z*z + 0.96*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}


Carr2283 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, m = sinh(newpixel+flip(0.0035/newpixel))
  z=(2.5*tanh(newpixel^3.5))-sin(0.001/newpixel-tan(0.01/newpixel))\
       +conj(0.0010/newpixel)+0.135
  c=(m)+3*tan(newpixel-flip(0.0035/newpixel)), p5 = 0.36*newpixel
  d1 = tan(abs(sinh(imag(0.00062350/newpixel)))), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + d4
  z = (z-0.125*c)*t + z4*t4 + ct, c = c*t + z6*t4 + ct
  z = z*z + 0.96*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}


Carr2284 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, m=(flip(newpixel/4+newpixel/3)), p5 = 0.36*newpixel
  z=(2*newpixel^4)-m-sin(0.8*newpixel-flip(0.01/newpixel))+conj(0.1275/newpixel)-0.3
  c=(4*newpixel^4)-m-sin(newpixel-flip(0.01/newpixel))+conj(0.1275/newpixel)-0.3
  d1 = tan(abs(sinh(imag(0.00152350/newpixel)))), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-0.125*c)*t + ct, c = c*t + ct
  z = z*z + 0.96*c - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}


Carr2285 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, m=(flip(newpixel/4+newpixel/5)), p5 = (r+newpixel)/35
  z=conj(2*newpixel^4)-m-sin(0.8*newpixel-flip(0.01/newpixel))\
      +conj(0.1275/newpixel)-0.3
  c=flip(4*newpixel^4)-m-sin(newpixel-flip(0.01/newpixel))+conj(0.1275/newpixel)-0.3
  d1 = tan(abs(sinh(imag(0.00192350/newpixel)))), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-0.125*c)*t + ct, c = c*t + ct
  z = z*z + c-c/35 - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}


Carr2286 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r = newpixel*8, m=(flip(newpixel/4+newpixel/5)), p5 = (r+newpixel)/35
  z=conj(conj(2*newpixel^4))-m-sin(0.8*newpixel-flip(0.01/newpixel))\
      +conj(0.1275/newpixel)-0.3
  c=conj(flip(4*newpixel^4))-m-sin(newpixel-flip(0.02/newpixel))\
      +conj(0.01275/newpixel)-0.5
  d1 = conj(0.00192350/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1 - (t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z-0.125*c)*t + ct, c = c*t + ct
  z = z*z + c-c/35 - p5
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42fcarr.frm
}


Carr2287 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z=newpixel/(tanh(0.3/newpixel)), c=newpixel
  d1 = 0.0009235/newpixel, d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2288 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = c = newpixel-asin(newpixel)
  d1 = conj(0.0038935/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2289 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Modified for if..else logic 3/17/97 by Sylvie Gallet
                  ; Added variable "newpixel". G.Martin 6/15/99
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter
   ; periodicity=0
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c = newpixel + newpixel - flip(0.001/newpixel) - conj(0.01/newpixel)
  z = zorig = newpixel - conj(asin(newpixel+newpixel+0.32))
  d1 = flip(-0.0005935/newpixel), d4 = 4 * d1, d5 = d1 + d4
  bailout = 4, iter = 0 :
  IF (iter == p1)
    z = c = 1.5 * zorig + d5
  ELSEIF (iter == imag(p1))
    z = c = 2.25 * zorig + d5
  ELSEIF (iter == p2)
    z = c = 3.375 * zorig + d5
  ELSEIF (iter == imag(p2))
    z = c = 5.0625 * zorig + d5
  ELSE
    z = z + d4, c = c + d4
  ENDIF
  z = z*z + c
  iter = iter + 1
  abs(z) <= bailout
  ;SOURCE: fract196.frm
}


Carr2290 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c=(newpixel)+(newpixel-flip(0.001/newpixel)-conj(0.01/newpixel))
  z=((newpixel)-conj(asin(newpixel+newpixel+0.39)))
  d1 = conj(0.0003775/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2291 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z=c=(0.33-cos(newpixel))/(0.33-tan(2*newpixel))+0.5
  d1 = cabs(0.0005955/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2292 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z=c=conj(0.33-cos(newpixel))/(0.33-tan(2*newpixel))+0.5
  d1 = cabs(0.0010055/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2293 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z=c=sinh(tanh(0.63-cos(newpixel)))/(conj(2*newpixel+0.6))
  d1 = abs(0.0010055/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2294 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z=c=flip(conj(abs((newpixel*newpixel))))
  d1 = real(0.0016055/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c-c/25
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2295 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = newpixel, c = (-0.3,0.3)
  d1 = flip(0.0014355/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2296 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = c = newpixel-conj(0.01/newpixel)-flip(0.1/newpixel)
  d1 = 0.0015355/newpixel, d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2297 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  j = (1-newpixel)^1.8/flip(asinh(newpixel))
  z = c = newpixel/j-conj(0.01/newpixel)-flip(0.1/newpixel)
  d1 = flip(0.1095355/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2298 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = conj(flip(newpixel)-sinh(2*newpixel))-0.3
  c = conj(newpixel)-tan(flip(1.4*newpixel+0.2))
  d1 = flip(0.0007355/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2299 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z=c=tanh(newpixel)-(((0.3,0.6)+newpixel)/(0.2/newpixel))
  d1 = real(0.0009055/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2300 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = c = flip(0.8*newpixel) - 5*((0.3,0.6)+newpixel)*newpixel
  d1 = real(0.0009055/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2301 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z=c= flip(0.65*newpixel) - 5*((0.3,0.6)+newpixel)*newpixel + conj(0.065/newpixel)
  d1 = real(0.0009055/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct =  z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2302 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z=newpixel*sqr(newpixel)-conj(0.01/newpixel)-flip(0.015/newpixel)
  c = (-0.6256,-0.090), q = newpixel/4.375
  d1 = 0.0007155/newpixel, d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z^2.3 + c - q
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2303 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z=newpixel+(newpixel^2.18)+conj(0.13/newpixel)+flip(0.02/newpixel)+tanh(0.01/newpixel)
  c=(-0.6256,-0.490)
  d1 =0.0003055/newpixel, d7 = 7*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d7
  z = z*t, c = c*t + ct
  z=z^2.3+c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2304 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = sqr(sqr(conj(newpixel))) - conj(0.05/newpixel) - flip(0.029/newpixel)
  c = sqr(sqr(flip(newpixel))) - conj(0.02/newpixel) - flip(0.02/newpixel)
  d1 = -tanh(0.0014095/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2305 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = sqr(sqr(conj(newpixel))) - conj(0.05/newpixel) - flip(0.029/newpixel)
  c = sqr(sqr(flip(newpixel))) + conj(0.02/newpixel) + flip(0.02/newpixel)
  d1 = sinh(conj(0.0014095/newpixel-flip(0.001/newpixel))), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2306 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = newpixel^2.8 - conj(newpixel/5), c = (-0.7456,0.18)
  d1 = sinh(conj(0.0005095/newpixel-flip(0.001/newpixel))), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2307 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = c = newpixel + newpixel + 1.5/log(newpixel)
  d1 = sinh(conj(0.0004295/newpixel-cabs(0.0001/newpixel))), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2308 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = newpixel + newpixel^2.5 ; - flip(newpixel)^2 - conj(newpixel^2)
                        ;  flip(newpixel)^2 + conj(newpixel^2) == 0 !!!
  c = sin(-0.82456,0.189)
  d1 = -0.0002395/newpixel + tanh(0.0001/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2309 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = 0.25*newpixel + cabs(newpixel^2.5) - tan(newpixel)^2 - conj(newpixel^2)
  c = sin(-0.87646,0.189)
  d1 = -0.0003095/newpixel + tanh(0.0001/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2310 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m1 = 1/newpixel, m = conj(m1), m2 = 0.125*newpixel + cabs(newpixel^4.9)
  z = m2 - tanh(newpixel/3)^2 - conj(sinh(newpixel^2.3)) + sqr(m/(1.5*m1))
  c = sin(-0.87446,0.189)
  d1 =-0.0003495/newpixel + tanh(0.0001/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2311 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m1 = 1/newpixel, m = conj(m1) 
  m2 = sqr(sqr(0.125*newpixel + cabs(newpixel^4.9)))
  z = m2 - tanh(newpixel/3)^2 - conj(tan(newpixel^4.3)) + sqr(m/(1.5*m1))
  c = sin(-0.87446,0.189)
  d1 = -0.0003495/newpixel + tanh(0.0001/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2312 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m1 = 1/newpixel, m = conj(m1)
  m2 = sqr(sqr(1.125*newpixel + cabs(newpixel^4.9))) - 0.6
  z = m2 - tanh(newpixel)^2 - conj(tan(newpixel^4.3)) + sqr(cos(m/6)/sin(m1/4))
  c = sin(-0.88946,0.219)
  d1 = -0.0003495/newpixel + conj(0.0001/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2313 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m1 = 1/newpixel, m = conj(m1)
  z = conj(abs(tan(newpixel*newpixel))) + 0.25*m + m1/6
  c = sin(-0.8556,0.1728)
  d1 = -0.0005395/newpixel + conj(0.0001/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2314 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m1 = 1/newpixel, m = conj(m1)
  z = (0.25-newpixel) / ((m+m1) * sqr(tan(1.5/newpixel)))
  c = sin(-0.7956,0.297)
  d1 = -0.0005395/newpixel + conj(0.0001/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2315 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c = newpixel + newpixel - 1/log(newpixel+log(100*newpixel))
  z = sqr(0.9*newpixel) - conj(0.01/newpixel) - flip(0.001/newpixel)
  d1 = -0.00039795/newpixel + conj(0.0001/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z=(z-0.25*c)*t + ct, c = c*t + ct
  z=z^2.4+c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2316 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c = sin(newpixel)*sqr(newpixel) - conj(0.1/newpixel) - flip(0.01/newpixel) - 0.05
  z = 0.5*newpixel
  d1 = -0.0010913/newpixel + conj(0.0001/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2317 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  b = 0.01/newpixel, b2 = sqr(b)
  z = 3.5*newpixel^5 - sinh(0.1*b-tan(b)) + conj(10*b) + 0.135
  c = sin(-0.515,0.4099)
  d1 = tanh(tanh(0.0008013/-newpixel+conj(0.0001/newpixel))), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = (z+b2)*t + ct, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2318 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  r = 17*newpixel/24
  z=c=(2*newpixel^4)-r-sin(0.8*newpixel-flip(0.01/newpixel))\
        +conj(0.1275/newpixel)+0.117
  d1=tanh(tanh(0.0003913/-newpixel+conj(0.0001/newpixel))), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c+sinh(z/2)
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2319 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z=flip(abs(sin(newpixel)))-newpixel+conj(0.035/newpixel)-flip(0.001/newpixel)
  c = 4.25*newpixel - conj(0.01/newpixel - flip(0.001/newpixel))
  d1 = tanh(tanh(0.00021217/-newpixel+conj(0.0001/newpixel))), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c + flip(z)
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2320 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  r = conj(tanh(newpixel/5+newpixel/7))
  z=c=2*newpixel^7-r-sin(0.0001/newpixel-flip(0.009/newpixel))\
         +conj(0.1873/newpixel)+0.117
  d1 = tanh(tanh(0.00084217/-newpixel+conj(0.0001/newpixel))), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z^1.9 + c + flip(z/1.9)
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2321 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  r = sinh(newpixel/5+newpixel/7)
  z=c=(3*newpixel)^5+r-flip(sqr(newpixel)-conj(0.01/newpixel)\
        +flip(0.01/newpixel))-0.25
  d1 = -0.00035217/newpixel + flip(0.0001/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z^1.9 + c + flip(z/1.9)
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2322 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c = 0.2*newpixel/(conj(0.073*newpixel-cos(1/newpixel)-conj(1/newpixel)))
  z = newpixel - conj(0.1/newpixel) - flip(0.01/newpixel)
  d1 = -0.00030217/newpixel + flip(0.0001/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c + tan(0.5*z)
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2323 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c = sqr(0.1*newpixel/(conj(0.009*newpixel-cos(1/newpixel)-conj(1/newpixel))))
  z = newpixel - conj(0.1/newpixel) - flip(0.01/newpixel)
  d1 = -0.00030217/newpixel + flip(0.0001/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c + tan(0.5*z)
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2324 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z=c=tan(newpixel+newpixel)/(flip(1/newpixel)-conj(1/newpixel))+0.2
  d1 = -0.00230217/newpixel + flip(0.0001/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c + sinh(0.25*z)
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2325 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c = sqr(0.1*newpixel/(conj(0.009*newpixel-cos(1/newpixel)-conj(1/newpixel))))
  z = sqr(conj(newpixel+newpixel))/(conj(1.5/newpixel)-flip(4/newpixel))
  d1 = -0.00064217/newpixel + flip(0.0001/newpixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3, t4 = iter==l4
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*t + ct, c = c*t + ct
  z = z*z + c + sinh(0.25*z)
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2326 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c=sqr(0.1*newpixel/(conj(0.009*newpixel-cos(1/newpixel)-conj(1/newpixel))))-0.15
  z = sin(43*newpixel/60)/(sin(1.5/newpixel) - conj(0.1/newpixel)) - 0.55
  d1 = -0.00149917/newpixel + flip(0.0001/newpixel), d5 = 5*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 5.0625*z+d1
  z5 = 7.59375*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2), l5 = 300
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3 
  t4 = iter==l4, t5 = iter==l5
  t = 1-(t1||t2||t3||t4) 
  ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + z5*t5 + d5
  z = z*t + ct, c = c*t + ct
  z = z^2.2 + c + sinh(0.25*z)
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2327 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c = sqr(0.1*newpixel/conj(0.009*newpixel-cos(1/newpixel)-conj(1/newpixel)))-0.35
  z=abs(newpixel*8)/(sqr(2*newpixel)-flip(5/newpixel)+1/newpixel+conj(1/newpixel))-0.15
  d1 = -0.00499917/newpixel + flip(0.0001/newpixel), d5 = 5*d1
  z1 = z+d1, z2 = 1.5*z+d1, z3 = 2.25*z+d1 
  z4 = 3.375*z+d1, z5 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2) 
  l4 = imag(p2), l5 = 300
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3 
  t4 = iter==l4, t5 = iter==l5
  t = 1-(t1||t2||t3||t4) 
  ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + z5*t5 + d5
  z = z*t + ct, c = c*t + ct
  z = z*z + c + sinh(0.25*z)
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2328 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel)), th1 = tanh(1)
  z = newpixel - flip(0.01/newpixel)-conj(0.1/newpixel) + 0.285
  c = conj(flip(sqr(sqr(newpixel-conj(0.15/newpixel)))))
  d1 = -0.0013899/newpixel + flip(0.0001/newpixel), d5 = 5*d1, d2 = 2*d1
  z1 = z+d1, z2 = 1.5*z+d1, z3 = 2.25*z+d1 
  z4 = 3.375*z+d1, z5 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2) 
  l4 = imag(p2), l5 = 300
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3 
  t4 = iter==l4, t5 = iter==l5
  t = 1-(t1||t2||t3||t4) 
  ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + z5*t5 + d5
  z = z*th1*t + ct - d2, c = c*t + ct
  z = z*z + c + sinh(0.25*z)
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2329 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m = sin(newpixel) + sinh(newpixel) + cabs(newpixel) + conj(newpixel)
  z = m + flip(newpixel), c = 2*newpixel
  d1 = -0.0005045/newpixel + tanh(0.0001/newpixel), d5 = 5*d1, d2 = 2*d1
  z1 = z+d1, z2 = 1.5*z+d1, z3 = 2.25*z+d1 
  z4 = 3.375*z+d1, z5 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2) 
  l4 = imag(p2), l5 = 300
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3 
  t4 = iter==l4, t5 = iter==l5
  t = 1-(t1||t2||t3||t4) 
  ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + z5*t5 + d5
  z = z*t + ct - d2, c = c*t + ct
  z = z*z + c
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2330 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m = tan(newpixel) - tanh(newpixel)
  z = 2*m + flip(newpixel), c = (-0.7,0.2)
  d1 = -0.0003545/newpixel + tanh(0.0001/newpixel), d5 = 5*d1, d2 = 2*d1
  z1 = z+d1, z2 = 1.5*z+d1, z3 = 2.25*z+d1 
  z4 = 3.375*z+d1, z5 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2) 
  l4 = imag(p2), l5 = 300
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3 
  t4 = iter==l4, t5 = iter==l5
  t = 1-(t1||t2||t3||t4) 
  ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + z5*t5 + d5
  z = z*t + ct - d2, c = c*t + ct
  z = z^2.45 + c + sinh(z/6)
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2331 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m = sqr(cosh(newpixel)) - sqr(cos(newpixel))
  z = 2*m + flip(newpixel), c = (-0.7,0.2)
  d1 = -0.0003545/newpixel + tanh(0.0001/newpixel), d5 = 5*d1, d2 = 2*d1
  z1 = z+d1, z2 = 1.5*z+d1, z3 = 2.25*z+d1 
  z4 = 3.375*z+d1, z5 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2), l5 = 300
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3 
  t4 = iter==l4, t5 = iter==l5
  t = 1-(t1||t2||t3||t4) 
  ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + z5*t5 + d5
  z = z*t + ct - d2, c = c*t + ct
  z = z^2.45 + c + sinh(z/6)
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}


Carr2332 {; Modified Sylvie Gallet frm.
  z = pixel, c = sqr(cos(pixel))-cosh(pixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3)
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2333 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = newpixel/(tanh(0.3/newpixel)) + 0.3
  c = newpixel
  d1 = -0.0003299/newpixel + flip(0.00010/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test) + d1
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2334 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = newpixel - flip(0.01/newpixel) - conj(0.1/newpixel) + 0.285
  c = conj(flip(sqr(sqr(newpixel-conj(0.15/newpixel)))))
  d1 = -0.0008099/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test) + d1
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2335 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z=c=flip(conj(abs((newpixel*newpixel)))), th1 = tanh(1)
  d1 = -0.0032556/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*th1*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2336 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = c = flip(conj(abs((newpixel*newpixel)))) + 0.4
  d1 = -0.0030556/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*flip(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2337 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c = newpixel + newpixel - flip(0.001/newpixel) - conj(0.01/newpixel)
  z = newpixel - conj(asin(newpixel+newpixel+0.32))
  d1 = -0.00033556/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2338 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = flip(conj(abs((newpixel))))
  c = 3*z - 0.8
  d1 = -0.00003556/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2339 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m = conj(0.1/newpixel) + flip(0.01/newpixel)
  z = c = newpixel - m
  d1 = -0.0004056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2340 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = c = conj(newpixel*newpixel) / flip(1-newpixel)
  d1 = -0.0008056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2341 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = c = (1+1.5/newpixel)/(cosxx(2/newpixel-0.25))
  d1 = -0.0008056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2342 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = c = conj(1+0.5*newpixel) / (cos(2/newpixel-0.25)) - 0.275
  d1 = -0.0010056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2343 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = c = newpixel - flip(sin(0.1/newpixel)) - conj(sin(0.01/newpixel)) - 0.3
  d1 = -0.0013056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2344 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = c = (0.33-cos(newpixel))/(0.33-tan(2*newpixel)) + 0.5
  d1 = -0.00039056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2345 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = c = flip(conj(cabs((newpixel))))
  d1 = -0.00089056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2346 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c = (-0.3,0.3), z = flip(conj(cabs((newpixel+newpixel))))
  d1 = -0.00049056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2347 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = flip(conj(cabs((newpixel+newpixel))))
  c = newpixel - conj(0.01/newpixel) - flip(0.1/newpixel)
  d1 = -0.00046056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2348 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = conj(flip(newpixel)-sinh(2*newpixel)) - 0.4
  c = conj(newpixel) - tan(flip(1.4*newpixel+0.2))
  d1 = -0.00046056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2349 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = c = tanh(newpixel) - 5*newpixel*((0.3,0.6)+newpixel)
  d1 = -0.00046056/newpixel + flip(0.0001/newpixel), sh1 = sinh(1)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*sh1*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2350 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m = newpixel^2.18+conj(0.13/newpixel)+flip(0.02/newpixel)+tanh(0.01/newpixel)
  z = c = newpixel + m
  d1 = -0.00028056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2351 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m = conj(0.013/newpixel) + flip(0.002/newpixel) + tanh(0.001/newpixel)
  z = newpixel + newpixel^2.18 + m^6 - 0.5
  c = cabs(sqr(2*newpixel-m))
  d1 = -0.00039056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2352 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m = conj(0.013/newpixel) + flip(0.002/newpixel) + tanh(0.001/newpixel)
  c = newpixel + newpixel^2.18 + m^6 - 0.45
  z = cabs(sqr(3.5*newpixel/1.5-m))
  d1 = -0.00034056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2353 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m1 = 1/newpixel, m = conj(m1), m2 = 0.125*newpixel + cabs(newpixel^4.9) + 0.23
  z = m2 - tanh(newpixel/3)^2 - conj(sinh(newpixel^2.3)) + sqr(sqr(0.5*m/m1))
  c = z/3.3
  d1 = -0.00038056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1.5-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2354 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m1 = 1/newpixel, m = flip(m1), m2 = newpixel + cabs(newpixel^4.9) + 0.09
  c = m2 - sinh(newpixel/3)^2 - conj(sinh(newpixel^1.7))+sqr(sqr(m/(2.4*m1)))
  z=conj(conj(c))-(conj(0.01/newpixel)+flip(0.001/newpixel))
  d1 = -0.00020056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1.5-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2355 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = sqr(sqr(conj(newpixel)))-conj(0.05/newpixel)-flip(0.029/newpixel)-0.25
  c = sqr(sqr(flip(newpixel)))-conj(0.02/newpixel)-flip(0.02/newpixel)-0.15
  d1 = -0.00035056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1.5-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2356 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m1 = 1/newpixel, m = conj(m1)
  m2 = sqr(sqr(1.125*newpixel + cabs(newpixel^4.9))) - 0.3
  z = c = m2 - tanh(newpixel)^2 - conj(tan(newpixel^4.3))\ 
          + sqr(cos(m/6)/sin(m1/4))
  d1 = -0.00035056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1.5-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2357 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m1 = 1/newpixel, m = conj(m1)
  m2 = sqr(sqr(1.125*newpixel + cabs(newpixel^4.9))) - 0.3
  z = c = m2 - tanh(newpixel)^2 - conj(tan(newpixel^4.3))\ 
          + sqr(cos(m/6)/sin(m1/4))
  d1 = -0.00035056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2358 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m1 = 1/newpixel, m = conj(m1)
  m2 = sqr(sqr(1.125*newpixel + cabs(newpixel^4.9))) - 0.3
  z = m2 - tanh(newpixel)^2 - conj(tan(newpixel^4.3))\ 
      + sqr(cos(m/6)/sin(m1/4))
  c = m2 - sinh(newpixel)*2 - flip(sin(newpixel^4.3))\ 
      + sqr(cotan(m/6)/flip(m1/4))
  d1 = -0.00035056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2359 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m1 = 1/newpixel, m = conj(m1)
  m2 = sqr(sqr(1.125*newpixel + cabs(newpixel^4.9))) - 0.6
  m3 = sqr(cotan(m/6)/flip(m1/4))
  z = c = 1.6*m2 - sinh(newpixel/3.3)*2.3 - flip(imag(newpixel^4.3))\ 
          + m3 - 0.2
  d1 = -0.00035056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2360 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m1 = 1/newpixel, m = conj(m1)
  m2 = sqr(sqr(1.125*newpixel + abs(newpixel^4.9))) - 0.6
  m3 = sqr(tan(m/6)/conj(m1/4)) + 0.4
  z=c=1.6*m2/0.67-sqr(newpixel/0.75)*2.3-sinh(tanh(newpixel/3))+m3
  d1 = -0.00035056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2361 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m = conj(0.1/newpixel) + 0.135
  z = c = 3.5*newpixel^5 - sinh(0.001/newpixel-tan(0.01/newpixel)) + m
  d1 = -0.00095056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2362 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = newpixel^5 - tanh(0.01/newpixel)
  c = 3.5*newpixel^10 - sinh(0.001/newpixel-tan(0.01/newpixel)) + 0.135
  d1 = -0.00045056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2363 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = cabs(newpixel)
  c = cabs(3.5*newpixel^10) - sinh(0.001/newpixel-tan(0.01/newpixel)) + 0.135
  d1 = -0.00045056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2364 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = cabs(newpixel)^5
  c = cabs(3.5*newpixel^10) - sinh(0.001/newpixel-tan(0.01/newpixel))
  d1 = -0.00045056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2365 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = c = sinh(newpixel^2)\ 
          - cabs(4*newpixel-conj(1/(newpixel*150))-flip(0.001/newpixel))
  d1 = -0.00075056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2366 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = tanh(newpixel) - cabs(newpixel/1.3-conj(0.01/newpixel)-flip(0.001/newpixel))
  c = sinh(newpixel/2)\ 
      - cabs(newpixel-conj(1/(newpixel*15))-flip(0.001/newpixel)) + 0.3
  d1 = -0.00095056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2367 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  j = 2*newpixel
  z = conj(newpixel/5.6) - j + conj(0.01/newpixel) + flip(0.001/newpixel)
  c = cabs(2*newpixel - conj(0.01/newpixel) - flip(conj(0.001/newpixel)))
  d1 = -0.00015956/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2368 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  j = 2*newpixel
  z = sqr(flip(newpixel/5.6) - j + conj(0.01/newpixel) + flip(0.001/newpixel))
  c = sqr(cabs(2*newpixel - conj(0.01/newpixel) - flip(conj(0.001/newpixel))))
  d1 = -0.00009956/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2369 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c = sqr(cabs(newpixel+newpixel)-1/log(newpixel-1/tan(0.001/newpixel))^3.8)-0.2
  z = newpixel + cabs(cabs(0.5*newpixel))
  d1 = -0.00002956/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2370 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c = sqr(cabs(newpixel/1.3+sinh(newpixel))\
          -1/sqrt(newpixel-1/tan(0.001/newpixel))^3.8)-0.2
  z = c + cosxx(c/1.8)
  d1 = -0.00002956/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2371 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m = conj(tanh(conj(sinh(newpixel+flip(0.0035/newpixel)))))
  c = cabs(newpixel+flip(0.0055/newpixel))\ 
      - 1/log(newpixel-1/tan(0.001/newpixel))^4.8
  z = 2*m + newpixel - flip(0.0035/newpixel)
  d1 = -0.00015956/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2372 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m = conj(tanh(conj(sinh(newpixel/3+flip(0.0035/newpixel)))))
  c = sin(conj(-0.485,-0.0959))
  z = flip(m) + 4*newpixel + flip(0.0535/newpixel) + 0.3
  d1 = flip(-0.00005156/newpixel) + 0.0001/newpixel
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2373 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = 4*newpixel/tan(0.125/newpixel)+0.3
  c = tanh(-0.695,0.0959)
  d1 = flip(-0.00003356/newpixel) + 0.0001/newpixel
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2374 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = cabs((newpixel-flip(0.001/newpixel)-conj(0.01/newpixel)))
  c = cabs(sqr(sqr(newpixel-conj(0.1/newpixel))))
  d1 = flip(-0.00006756/newpixel) + 0.0001/newpixel
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2375 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = ((conj(newpixel/2.5)+flip(0.001/newpixel)+conj(0.01/newpixel)))
  c = abs(sqr(sqr(newpixel/1.25)))
  d1 = flip(-0.00007756/newpixel) + 0.00010/newpixel
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2376 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m = sinh(newpixel+flip(0.0035/newpixel))
  z = 2.5*tanh(newpixel^3.5)\ 
      - sin(0.001/newpixel-tan(0.01/newpixel))+conj(0.001/newpixel)+0.135
  c = m + 3*tan(newpixel-flip(0.0035/newpixel))
  d1 = flip(-0.00014756/newpixel) + 0.0001/newpixel
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2377 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  b = conj(0.01/newpixel) + flip(0.1/newpixel)
  z = 1/log(0.2*(newpixel-b)) + (newpixel-b)/3 + (newpixel/2)^8 - 0.1
  c = (-0.7406,-0.122)
  d1 = flip(-0.00030756/newpixel) + 0.0001/newpixel
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2378 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = abs(newpixel) - 0.1
  c = (-0.7456,-0.127)
  d1 = flip(-0.00079756/newpixel) + 0.0001/newpixel
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2379 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c = (-0.7806,-0.135)
  z = (newpixel/2)^1.25\ 
      - 1/(atan(0.1/newpixel) - sqr(acos(0.025/newpixel)))^3 + 0.15
  d1 = flip(-0.00029756/newpixel) + 0.0001/newpixel
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2380 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c = (-0.7906,-0.149), m3 = newpixel*cabs(newpixel^2.33)
  z = m3 - sinh(0.1/newpixel) - sqr(flip(0.0051/newpixel)) - 0.2
  d1 = flip(-0.00045756/newpixel) + 0.0001/newpixel
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}


Carr2381 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  m3=cabs(newpixel+0.5)*conj(conj(newpixel^7))
  z=(m3-conj(0.10/newpixel)-sqr(flip(0.00510/newpixel)))-0.25
  c=(-1.099,-0.0049)/2
  d1=(0.00075756/-newpixel)+(flip(0.00010/newpixel))
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test) 
  c=c*(1-test)+flip(d1)+test*(p2*c+p3)
  z=z^2+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2382 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=(-0.8006,-0.1645)
  z=(flip(flip(newpixel))^6-1/(atan(1/newpixel)-cabs(acos(2/newpixel)))^6)-0.09
  d1=(0.00060756/-newpixel)+(flip(0.00010/newpixel))
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test) 
  c=c*(1-test)+flip(d1)+test*(p2*c+p3)
  z=z^2+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2383 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=(-0.372,-0.625)
  z=cotanh(1-newpixel)^1.5*newpixel^4-(1/log(conj(0.10/newpixel+1.25)))^2.5
  d1=(0.00020756/-newpixel)+(flip(0.00010/newpixel))
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test) 
  c=c*(1-test)+flip(d1)+test*(p2*c+p3)
  z=z^2+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2384 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(flip(abs(newpixel))^4/(flip(asinh(newpixel))))-0.2
  c=(-0.3009,-0.645)
  d1=(0.00080756/-newpixel)+(flip(0.00010/newpixel))
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test) 
  c=c*(1-test)+flip(d1)+test*(p2*c+p3)
  z=z^2+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2385 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=(flip(abs(newpixel))^8/(flip(asinh(newpixel))))-0.2
  d1=(0.00099756/-newpixel)+(flip(0.00010/newpixel))
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test) 
  c=c*(1-test)+flip(d1)+test*(p2*c+p3)
  z=z^2+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2386 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  m3=conj(0.10/newpixel), m4=flip(flip(0.10/newpixel))
  z=2*newpixel-flip(m3^6), c=newpixel-cabs(m4-0.1)
  d1=(0.00059756/-newpixel)+(flip(0.00010/newpixel))
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test) 
  c=c*(1-test)+flip(d1)+test*(p2*c+p3)
  z=z^2+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2387 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=abs(cabs(newpixel))-0.15
  c=(1/z^z*z+z)^3
  d1=(0.00020975/-newpixel)+(flip(0.00010/newpixel))
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test) 
  c=c*(1-test)+flip(d1)+test*(p2*c+p3)
  z=z^2+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2388 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=cabs(tan(newpixel*newpixel+flip(0.10/newpixel)))
  c=0.04*cabs(z*z+1/z)+newpixel
  d1=(0.00070475/-newpixel)+(flip(0.00010/newpixel))
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test) 
  c=c*(1-test)+flip(d1)+test*(p2*c+p3)
  z=z^2+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2389 (YAXIS) {; Modified Brian Jones frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=newpixel
  c=(-0.7456,-0.112)
  x=real(z), y=imag(z), x1=x-p2*fn1(y*y+p3*fn2(y))
  coracao=x1+flip(y1)
  y1=y-p2*fn1(x*x+p3*fn2(x))
  z1=c1=1.5*z, z2=c2=fn3((coracao)*newpixel)
  l1= real(p1), l2=imag(p1)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2) 
  z=z*(1-(t1||t2))+(z1*t1)+(z2*t2) 
  c=c*(1-(t1||t2))+(c1*t1)+(c2*t2) 
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42icarr.frm
}


Carr2390 (YAXIS) {; Modified Brian Jones frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=newpixel/(cabs(0.3/newpixel))
  c=newpixel
  x=real(z), y=imag(z), x1=x-p2*fn1(y*y+p3*fn2(y))
  coracao=x1+flip(y1)
  y1=y-p2*fn1(x*x+p3*fn2(x))
  z1=c1=1.5*z, z2=c2=fn3((coracao)*newpixel)
  l1= real(p1), l2=imag(p1)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2) 
  z=z*(1-(t1||t2))+(z1*t1)+(z2*t2) 
  c=c*(1-(t1||t2))+(c1*t1)+(c2*t2) 
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42icarr.frm
}


Carr2391 (YAXIS) {; Modified Brian Jones frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=sinh(newpixel^2)-1/log(newpixel-conj(0.10/newpixel)-flip(0.010/newpixel))
  c=sin(conj(-0.7896,-0.1309))
  x=real(z), y=imag(z), x1=x-p2*fn1(y*y+p3*fn2(y))
  coracao=x1+flip(y1)
  y1=y-p2*fn1(x*x+p3*fn2(x))
  z1=c1=1.5*z, z2=c2=fn3((coracao)*newpixel)
  l1= real(p1), l2=imag(p1)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2) 
  z=z*(1-(t1||t2))+(z1*t1)+(z2*t2) 
  c=c*(1-(t1||t2))+(c1*t1)+(c2*t2) 
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42icarr.frm
}


Carr2392 {; Modified Brian Jones frm.
  z=d, d=(pixel-conj(0.10/pixel-flip(0.010/pixel)))
  c=pixel
  x=real(z), y=imag(z), x1=x-p2*fn1(y*y+p3*fn2(y))
  coracao=x1+flip(y1)
  y1=y-p2*fn1(x*x+p3*fn2(x))
  z1=c1=1.5*z, z2=c2=fn3((coracao)*pixel)
  l1= real(p1), l2=imag(p1)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2) 
  z=z*(1-(t1||t2))+(z1*t1)+(z2*t2) 
  c=c*(1-(t1||t2))+(c1*t1)+(c2*t2) 
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42icarr.frm
}


Carr2393 {; Modified Brian Jones frm.
  z=c=real(pixel)+flip(imag(pixel))-conj(0.10/pixel)-flip(0.10/pixel)
  x=real(z), y=imag(z), x1=x-p2*fn1(y*y+p3*fn2(y))
  coracao=x1+flip(y1)
  y1=y-p2*fn1(x*x+p3*fn2(x))
  z1=c1=1.5*z, z2=c2=fn3((coracao)*pixel)
  l1=real(p1), l2=imag(p1)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2)
  z=z*(1-(t1||t2))+(z1*t1)+(z2*t2)
  c=c*(1-(t1||t2))+(c1*t1)+(c2*t2)
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42icarr.frm
}


Carr2394 (YAXIS) {; Modified Brian Jones frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(flip(2*newpixel)-sinh(newpixel))
  c=(-0.7456,-0.132)
  x=real(z), y=imag(z), x1=x-p2*fn1(y*y+p3*fn2(y))
  coracao=x1+flip(y1)
  y1=y-p2*fn1(x*x+p3*fn2(x))
  z1=c1=1.5*z, z2=c2=fn3((coracao)*newpixel)
  l1=real(p1), l2=imag(p1)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2)
  z=z*(1-(t1||t2))+(z1*t1)+(z2*t2)
  c=c*(1-(t1||t2))+(c1*t1)+(c2*t2)
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42icarr.frm
}


Carr2395 (YAXIS) {; Modified Brian Jones frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=tan(newpixel)-(((0.3,0.6)+newpixel)/(0.20/newpixel))
  c=newpixel
  x=real(z), y=imag(z), x1=x-p2*fn1(y*y+p3*fn2(y))
  coracao=x1+flip(y1)
  y1=y-p2*fn1(x*x+p3*fn2(x))
  z1=c1=1.5*z, z2=c2=fn3((coracao)*newpixel)
  l1=real(p1), l2=imag(p1)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2)
  z=z*(1-(t1||t2))+(z1*t1)+(z2*t2)
  c=c*(1-(t1||t2))+(c1*t1)+(c2*t2)
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42icarr.frm
}


Carr2396 (YAXIS) {; Modified Brian Jones frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=cabs(newpixel)-(((0.3,0.6)+newpixel)/(0.20/newpixel))
  c=newpixel
  x=real(z), y=imag(z), x1=x-p2*fn1(y*y+p3*fn2(y))
  coracao=x1+flip(y1)
  y1=y-p2*fn1(x*x+p3*fn2(x))
  z1=c1=1.5*z, z2=c2=fn3((coracao)*newpixel)
  l1=real(p1), l2=imag(p1)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2)
  z=z*(1-(t1||t2))+(z1*t1)+(z2*t2)
  c=c*(1-(t1||t2))+(c1*t1)+(c2*t2)
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42icarr.frm
}


Carr2397 {; Modified Brian E. Jones frm. mans-galore-012 
  z=c=conj(flip(2*pixel))
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2398 {; Modified Brian E. Jones frm. mans-galore-012 
  z=c=(pixel-(conj(0.050/pixel)+flip(conj(0.0010/pixel)))^4)
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2399 {; Modified Brian E. Jones frm. mans-galore-012
  z=c=conj(pixel/2)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00510/pixel))
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2400 {; Modified Brian E. Jones frm. mans-galore-012
  z=pixel-(conj(0.10/pixel)+flip(conj(0.010/pixel)))
  c=conj(pixel)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00510/pixel))
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2401 {; Modified Brian E. Jones frm. mans-galore-012
  z=pixel
  c=atan(pixel)*2+conj(pixel/3)
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2402 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=newpixel
  c=atan(newpixel)*2+conj(newpixel/3)
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
    ; c=log(1+z) 
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2403 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=newpixel
  z=atan(newpixel)*2+conj(newpixel/3)
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2404 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(newpixel)*sqr(newpixel)-sqr(flip(0.00510/newpixel))
  c=newpixel^2-0.25
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2405 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(newpixel)*sqr(newpixel)-sinh(0.10/newpixel)-sqr(flip(0.00510/newpixel))
  c=newpixel^8+0.196
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2406 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(newpixel)*sqr(newpixel)-conj(0.10/newpixel)-sqr(flip(0.00510/newpixel))
  c=newpixel^8+0.296
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2407 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=((newpixel)*sqr(newpixel)-conj(0.10/newpixel)-flip(0.010/newpixel))
  z=newpixel/5+newpixel/3+(newpixel/2)^4
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2408 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=(3*newpixel)+conj(newpixel-flip(0.010/newpixel))
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2409 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=(3*newpixel)+conj(newpixel-conj(0.020/newpixel))
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2410 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(newpixel-asin(newpixel))
  c=(newpixel-asin(newpixel))
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2411 {; Modified Brian E. Jones frm. mans-galore-012
  z=d3, d3=pixel*2
  c=pixel*2
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2412 {; Modified Brian E. Jones frm. mans-galore-012
          ; Corrected typo (0.08pixel to 0.08*pixel) G. Martin 10/98
  r=(conj(pixel/2))
  z=c=(3.5*pixel^5)-r-sin(0.08*pixel-flip(0.01/pixel))\
      +conj(0.0535/pixel)+0.05
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2413 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
    ; Corrected typo (0.08pixel to 0.08*pixel) G. Martin 10/98
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r=(conj(newpixel/2))
  z=(2.5*newpixel^3)-r-sin(0.08*newpixel-flip(0.01/newpixel))\
    +conj(0.0535/newpixel)+0.05
  c=(3.5*newpixel^5)-r-sin(0.08*newpixel-flip(0.01/newpixel))\
    +conj(0.0535/newpixel)+0.05
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2414 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
      ; Corrected typo (0.08pixel to 0.08*pixel) G. Martin 10/98
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r=(conj(newpixel/2))
  z=(1.5*newpixel^6)-r-sin(0.08*newpixel-flip(0.01/newpixel))+conj(0.0535/newpixel)
  c=(3.5*newpixel^5)-r-sin(0.08*newpixel-flip(0.01/newpixel))\
    +conj(0.0535/newpixel)+0.05
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2415 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
    ; Corrected typo (0.08pixel to 0.08*pixel) G. Martin 10/98
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r=(cabs(newpixel/2))
  z=(1.5*newpixel^6)-r-sin(0.08*newpixel-flip(0.01/newpixel))+conj(0.0535/newpixel)
  c=(3.5*newpixel^5)-r-sin(0.08*newpixel-flip(0.01/newpixel))\
    +conj(0.0535/newpixel)+0.05
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2416 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
     ; Corrected typo (0.08pixel to 0.08*pixel) G. Martin 10/98
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r=(cabs(newpixel/2))
  z=(1.5*newpixel^9)-r-cabs(0.08*newpixel-flip(0.01/newpixel))\
    +conj(0.0535/newpixel)+0.09
  c=(1.5*newpixel^5)-r-cabs(0.08*newpixel-flip(0.01/newpixel))\
    +conj(0.0535/newpixel)+0.1
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2417 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r=(flip(newpixel/4+newpixel/3))
  z=(2*newpixel^4)-r-sin(0.8*newpixel-flip(0.01/newpixel))\
    +conj(0.1275/newpixel)-0.2
  c=(2*newpixel^4)-r-sin(0.8*newpixel-flip(0.01/newpixel))+conj(0.1275/newpixel)
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2418 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r=cabs(newpixel), j=flip(flip(3.5*newpixel))+conj(conj(newpixel))
  z=tanh(newpixel)\
    -1/sqrt(j+0.5550/j-conj(0.030/newpixel)-flip(0.0550/newpixel)+2/r)
  c=2*newpixel+(-0.099,-0.2249)
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*cotan(fn1(y+p3*fn2(y)))
  y1=y-p2*cotan(fn1(x+p3*fn2(x))):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2419 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r=cabs(newpixel), j=flip(flip(3.5*newpixel))+conj(conj(newpixel))
  z=cabs(newpixel)\
    -1/sqrt(j+0.5550/j-conj(0.030/newpixel)-flip(0.0550/newpixel)+2/r)
  c=3*(newpixel)+(-0.099,-0.2249)
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*(fn1(y+p3*fn2(y)))
  y1=y-p2*(fn1(x+p3*fn2(x))):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2420 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r=cabs(newpixel), j=flip(flip(0.5*newpixel))+conj(conj(newpixel))
  z=cabs(newpixel*2)\
    -1/sqrt(j+0.5550/j-conj(0.030/newpixel)-flip(0.0550/newpixel)+2/r)
  c=3*(newpixel)+(-0.099,-0.2249)
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*(fn1(y+p3*fn2(y)))
  y1=y-p2*(fn1(x+p3*fn2(x))):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2421 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r=cabs(newpixel), j=(flip(flip(0.5*newpixel))+conj(conj(newpixel)))^4
  z=1.5*(newpixel)\
    -1/sqrt(j+0.5550/j-conj(0.080/newpixel)-flip(0.0950/newpixel)+2/r)
  c=3*(newpixel)+(-0.099,-0.0249)
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*(fn1(y+p3*fn2(y)))
  y1=y-p2*(fn1(x+p3*fn2(x))):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2422 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=(newpixel+newpixel)-1/log(newpixel-1/tan(0.001/newpixel))^3.8
  z=conj(conj(newpixel))+conj(flip(newpixel))+flip(tanh(newpixel))
  iter=0, x=real(z), y=imag(z)
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*(fn1(y+p3*fn2(y)))
  y1=y-p2*(fn1(x+p3*fn2(x))):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2423 {; Modified Sylvie Gallet frm.
  z=c=pixel
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=(z*(1-test))+flip(imag(0.03750/pixel)) 
  c=c*(1-test)+test*(p2*c+p3)
  z=z^2+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2424 (YAXIS) {; Modified Brian E. Jones frm. mans-galore-012
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  m=(cabs(newpixel/4+newpixel/3))
  z=(2*newpixel^4)-m-sin(0.8*newpixel-flip(0.01/newpixel))+conj(0.1275/newpixel)
  c=(4*newpixel^4)-m-sin(newpixel-flip(0.01/newpixel))+conj(0.1275/newpixel)
  iter=0, x=(real(z)), y=(imag(z))
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*(fn1(y+p3*fn2(y)))
  y1=y-p2*(fn1(x+p3*fn2(x))):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2425 {; Modified Brian E. Jones frm. mans-galore-012
  m=(cabs(pixel/4+pixel/3))
  z=(2*pixel^4)-m-sin(0.8*pixel-flip(0.01/pixel))+conj(0.1275/pixel)
  c=(4*pixel^4)-m-sin(pixel-flip(0.01/pixel))+conj(0.1275/pixel)
  iter=0, x=(real(z)), y=(imag(z))
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*(fn1(y+p3*fn2(y)))
  y1=y-p2*(fn1(x+p3*fn2(x))):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2426 {; Modified Brian E. Jones frm. mans-galore-012
  z=pixel/(cabs(0.3/pixel))
  c=pixel*2
  iter=0, x=(real(z)), y=(imag(z))
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*(fn1(y+p3*fn2(y)))
  y1=y-p2*(fn1(x+p3*fn2(x))):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=(z*z+c)-(conj(0.120/pixel))
     ; z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42icarr.frm
}


Carr2427 {; Modified Brian E. Jones frm. mans-galore-012
  z=pixel, c=sqr(cos(pixel))-cosh(pixel)
  iter=0, x=(real(z)), y=(imag(z))
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*(fn1(y+p3*fn2(y)))
  y1=y-p2*(fn1(x+p3*fn2(x))):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=(z*z+c)-(conj(0.120/pixel))
  iter=iter+1
  |z|<=16
  ;SOURCE: 42jcarr.frm
}


Carr2428 {; Modified Brian E. Jones frm. mans-galore-012
  z=((pixel-flip(0.010/pixel)-conj(0.10/pixel)))+0.285
  c=conj(conj(pixel/2-conj(0.10/pixel)))
  iter=0, x=(real(z)), y=(imag(z))
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*(fn1(y+p3*fn2(y)))
  y1=y-p2*(fn1(x+p3*fn2(x))):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
     ; z=(z*z+c)-(conj(0.120/pixel))
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42jcarr.frm
}


Carr2429 {; Modified Brian E. Jones frm. mans-galore-012
  z=0.55*((pixel-flip(0.010/pixel)-conj(0.10/pixel)))+0.285
  c=conj(conj(pixel/2-conj(0.10/pixel)))
  iter=0, x=(real(z)), y=(imag(z))
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*(fn1(y+p3*fn2(y)))
  y1=y-p2*(fn1(x+p3*fn2(x))):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
     ; z=(z*z+c)-(conj(0.120/pixel))
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42jcarr.frm
}


Carr2430 (YAXIS) {; Sylvie Gallet [101324,3444], Mod. BEJ
                  ; Revised for Fractint v20 by G. Martin 
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=0.55*((2*newpixel-flip(0.010/newpixel)-conj(0.10/newpixel)))
  x=real(z), y=imag(z)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)), iter=1 
  rad=fn1(3.1*fn3(x1+flip(y1))), center=(1.0,0.1) 
  pix=fn2(10*newpixel+(5.0,-3.4))*(-0.1,-0.95)
  zn=center+fn4(rad)/(pix-center)
  limit=real(p1), b1=16, b2=0.0001:
  test1=(iter<limit), test2=(iter!=limit)
  z=(z-zn)*test2+zn  
  z2=z*z, z4=z2*z2, z1=(z4*z-1)/(4*z4)
  z=(z2+c)*test1+(z-z1)*(1-test1)  
  iter=iter+(1.099,0.0)
  ((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
  ;SOURCE: 42jcarr.frm
}


Carr2431 (YAXIS) {; Sylvie Gallet [101324,3444], Mod. BEJ
                  ; Revised for Fractint v20 by G. Martin 
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=conj(conj(newpixel/2-conj(0.10/newpixel)))
  x=real(z), y=imag(z)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)), iter=1 
  rad=fn1(3.1*fn3(x1+flip(y1))), center=(1.0,0.1) 
  pix=fn2(10*newpixel+(5.0,-3.4))*(-0.1,-0.95)
  zn=center+fn4(rad)/(pix-center)
  limit=real(p1), b1=16, b2=0.0001:
  test1=(iter<limit), test2=(iter!=limit)
  z=(z-zn)*test2+zn  
  z2=z*z, z4=z2*z2, z1=(z4*z-1)/(4*z4)
  z=(z2+c)*test1+(z-z1)*(1-test1)  
  iter=iter+(2.099,0.0)
  ((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
  ;SOURCE: 42jcarr.frm
}


Carr2432 (YAXIS) {; Sylvie Gallet [101324,3444], Mod. BEJ
                  ; Revised for Fractint v20 by G. Martin 
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(conj(newpixel/2-conj(0.10/newpixel)))
  c=(-0.7456,-0.132)
  x=real(z), y=imag(z)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)), iter=1
  rad=fn1(3.1*fn3(x1+flip(y1))), center=(1.0,0.1)
  pix=fn2(10*newpixel+(5.0,-3.4))*(-0.1,-0.95)
  zn=center+fn4(rad)/(pix-center)
  limit=real(p1), b1=16, b2=0.0001:
  test1=(iter<limit), test2=(iter!=limit)
  z=(z-zn)*test2+zn  
  z2=z*z, z4=z2*z2, z1=(z4*z-1)/(4*z4)
  z=(z2+c)*test1+(z-z1)*(1-test1)  
  iter=iter+1.2
  ((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
  ;SOURCE: 42jcarr.frm
}


Carr2433 {; Sylvie Gallet [101324,3444], Mod. BEJ
          ; Revised for Fractint v20 by G. Martin 
  z=conj(conj(pixel/3-conj(0.10/pixel)))
  c=conj(pixel^3)-conj(0.10/pixel)
  x=real(z), y=imag(z)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)), iter=1 
  rad=fn1(3.1*fn3(x1+flip(y1))), center=(1.0,0.1) 
  pix=fn2(10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn=center+fn4(rad)/(pix-center)
  limit=real(p1), b1=16, b2=0.0001:
  test1=(iter<limit), test2=(iter!=limit)
  z=(z-zn)*test2+zn  
  z2=z*z, z4=z2*z2, z1=(z4*z-1)/(4*z4)
  z=(z2+c)*test1+(z-z1)*(1-test1)  
  iter=iter+1
  ((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
  ;SOURCE: 42jcarr.frm
}


Carr2434 (YAXIS) {; Sylvie Gallet [101324,3444], Mod. BEJ
                  ; Revised for Fractint v20 by G. Martin 
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=newpixel-1/(tanh(0.10/newpixel)-sqr(sinh(0.0250/newpixel)))^6
  x=real(z), y=imag(z)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)), iter=1
  rad=fn1(3.1*fn3(x1+flip(y1))), center=(1.0,0.1) 
  pix=fn2(10*newpixel+(5.0,-3.4))*(-0.1,-0.95)
  zn=center+fn4(rad)/(pix-center)
  limit=real(p1), b1=16, b2=0.0001:
  test1=(iter<limit), test2=(iter!=limit)
  z=(z-zn)*test2+zn  
  z2=z*z, z4=z2*z2, z1=(z4*z-1)/(4*z4)
  z=(z2+c)*test1+(z-z1)*(1-test1)  
  iter=iter+1
  ((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
  ;SOURCE: 42jcarr.frm
}


Carr2435 (YAXIS) {; Sylvie Gallet [101324,3444], Mod. BEJ
                  ; Revised for Fractint v20 by G. Martin 
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=cabs(2*newpixel)-1/(tanh(0.10/newpixel)-sqr(sinh(0.0250/newpixel)))^6
  c=newpixel-1/(tanh(0.10/newpixel)-sqr(sinh(0.0250/newpixel)))^6
  x=real(z), y=imag(z)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)), iter=1 
  rad=fn1(3.1*fn3(x1+flip(y1))), center=(1.0,0.1) 
  pix=fn2(10*newpixel+(5.0,-3.4))*(-0.1,-0.95)
  zn=center+fn4(rad)/(pix-center)
  limit=real(p1), b1=16, b2=0.0001:
  test1=(iter<limit), test2=(iter!=limit)
  z=(z-zn)*test2+zn  
  z2=z*z, z4=z2*z2, z1=(z4*z-1)/(4*z4)
  z=(z2+c)*test1+(z-z1)*(1-test1)  
  iter=iter+1.2
  ((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
  ;SOURCE: 42jcarr.frm
}


Carr2436 (YAXIS) {; Sylvie Gallet [101324,3444], Mod. BEJ
                  ; Revised for Fractint v20 by G. Martin 
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=cabs(2*newpixel)-1/(tanh(0.10/newpixel)-sqr(sinh(0.0250/newpixel)))^2+0.4
  c=(newpixel-1/(tanh(0.10/newpixel)-sqr(sinh(0.0250/newpixel))))^2-0.4
  x=real(z), y=imag(z)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)), iter=1
  rad=fn1(3.1*fn3(x1+flip(y1))), center=(1.0,0.1) 
  pix=fn2(10*newpixel+(5.0,-3.4))*(-0.1,-0.95)
  zn=center+fn4(rad)/(pix-center)
  limit=real(p1), b1=16, b2=0.0001:
  test1=(iter<limit), test2=(iter!=limit)
  z=(z-zn)*test2+zn  
  z2=z*z, z4=z2*z2, z1=(z4*z-1)/(4*z4)
  z=(z2+c)*test1+(z-z1)*(1-test1)  
  iter=iter+1
  ((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
  ;SOURCE: 42jcarr.frm
}


Carr2437 (YAXIS) {; Sylvie Gallet [101324,3444], Mod. BEJ
                  ; Revised for Fractint v20 by G. Martin 
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=cabs(2*newpixel)-1/(tanh(0.10/newpixel)-sqr(sinh(0.0250/newpixel)))^2+0.4
  c=((newpixel-1/(tanh(0.10/newpixel)-sqr(sinh(0.0250/newpixel))))^2-0.4)^4
  x=real(z), y=imag(z)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)), iter=1
  rad=fn1(3.1*fn3(x1+flip(y1))), center=(1.0,0.1) 
  pix=fn2(10*newpixel+(5.0,-3.4))*(-0.1,-0.95)
  zn=center+fn4(rad)/(pix-center)
  limit=real(p1), b1=16, b2=0.0001:
  test1=(iter<limit), test2=(iter!=limit)
  z=(z-zn)*test2+zn  
  z2=z*z, z4=z2*z2, z1=(z4*z-1)/(4*z4)
  z=(z2+c)*test1+(z-z1)*(1-test1)  
  iter=iter+1.5
  ((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
  ;SOURCE: 42jcarr.frm
}


Carr2438 (YAXIS) {; Sylvie Gallet [101324,3444], Mod. BEJ
                  ; Revised for Fractint v20 by G. Martin 
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=((newpixel-1/(tanh(0.10/newpixel)-sqr(sinh(0.0250/newpixel))))^2)^4
  c=(-0.7456,0.2)
  x=real(z), y=imag(z)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)), iter=1 
  rad=fn1(3.1*fn3(x1+flip(y1))), center=(1.0,0.1) 
  pix=fn2(10*newpixel+(5.0,-3.4))*(-0.1,-0.95)
  zn=center+fn4(rad)/(pix-center)
  limit=real(p1), b1=16, b2=0.0001:
  test1=(iter<limit), test2=(iter!=limit)
  z=(z-zn)*test2+zn  
  z2=z*z, z4=z2*z2, z1=(z4*z-1)/(4*z4)
  z=(z2+c)*test1+(z-z1)*(1-test1)  
  iter=iter+2
  ((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
  ;SOURCE: 42jcarr.frm
}


Carr2439 (YAXIS) {; Sylvie Gallet [101324,3444], Mod. BEJ
                  ; Revised for Fractint v20 by G. Martin 
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=cabs(2*newpixel)-1/(tanh(0.10/newpixel)-sqr(sinh(0.0250/newpixel)))^2+0.3
  c=(-0.7456,0.2)
  x=real(z), y=imag(z)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)), iter=1 
  rad=fn1(3.1*fn3(x1+flip(y1))), center=(1.0,0.1) 
  pix=fn2(10*newpixel+(5.0,-3.4))*(-0.1,-0.95)
  zn=center+fn4(rad)/(pix-center)
  limit=real(p1), b1=16, b2=0.0001:
  test1=(iter<limit), test2=(iter!=limit)
  z=(z-zn)*test2+zn  
  z2=z*z, z4=z2*z2, z1=(z4*z-1)/(4*z4)
  z=(z2+c)*test1+(z-z1)*(1-test1)  
  iter=iter+2
  ((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
  ;SOURCE: 42jcarr.frm
}


Carr2440 (YAXIS) {; Sylvie Gallet [101324,3444], Mod. BEJ
                  ; Revised for Fractint v20 by G. Martin 
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=((newpixel-1/(tanh(0.10/newpixel)-sqr(sinh(0.0250/newpixel))))^2)^4
  c=(-1.099,-0.3249)
  x=real(z), y=imag(z)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)), iter=1 
  rad=fn1(3.1*fn3(x1+flip(y1))), center=(1.0,0.1) 
  pix=fn2(10*newpixel+(5.0,-3.4))*(-0.1,-0.95)
  zn=center+fn4(rad)/(pix-center)
  limit=real(p1), b1=16, b2=0.0001:
  test1=(iter<limit), test2=(iter!=limit)
  z=(z-zn)*test2+zn  
  z2=z*z, z4=z2*z2, z1=(z4*z-1)/(4*z4)
  z=(z2+c)*test1+(z-z1)*(1-test1)  
  iter=iter+3
  ((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
  ;SOURCE: 42jcarr.frm
}


Carr2441 (YAXIS) {; Sylvie Gallet [101324,3444], Mod. BEJ
                  ; Revised for Fractint v20 by G. Martin 
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=((cabs(3*newpixel)-1/(conj(0.10/newpixel)-sqr(flip(0.0250/newpixel))))^2)^4
  c=(-1.099,-0.3249)/2
  x=real(z), y=imag(z)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)), iter=1 
  rad=fn1(3.1*fn3(x1+flip(y1))), center=(1.0,0.1) 
  pix=fn2(10*newpixel+(5.0,-3.4))*(-0.1,-0.95)
  zn=center+fn4(rad)/(pix-center)
  limit=real(p1), b1=16, b2=0.0001:
  test1=(iter<limit), test2=(iter!=limit)
  z=(z-zn)*test2+zn  
  z2=z*z, z4=z2*z2, z1=(z4*z-1)/(4*z4)
  z=(z2+c)*test1+(z-z1)*(1-test1)  
  iter=iter+4
  ((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
  ;SOURCE: 42jcarr.frm
}


Carr2442 (YAXIS) {; Sylvie Gallet [101324,3444], Mod. BEJ
                  ; Revised for Fractint v20 by G. Martin 
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=sinh(newpixel^2)-1/log(newpixel-(0.10/newpixel)-flip(0.0010/newpixel))
  c=sin(conj(-0.7896,-0.1309)/3)
  x=real(z), y=imag(z)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)), iter=1 
  rad=fn1(3.1*fn3(x1+flip(y1))), center=(1.0,0.1) 
  pix=fn2(10*newpixel+(5.0,-3.4))*(-0.1,-0.95)
  zn=center+fn4(rad)/(pix-center)
  limit=real(p1), b1=16, b2=0.0001:
  test1=(iter<limit), test2=(iter!=limit)
  z=(z-zn)*test2+zn  
  z2=z*z, z4=z2*z2, z1=(z4*z-1)/(4*z4)
  z=(z2+c)*test1+(z-z1)*(1-test1)  
  iter=iter+1.5
  ((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
  ;SOURCE: 42jcarr.frm
}


Carr2443 (YAXIS) {; Sylvie Gallet [101324,3444], Mod. BEJ
                  ; Revised for Fractint v20 by G. Martin 
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(newpixel-(conj(0.10/newpixel)+flip(conj(0.010/newpixel)))^4)
  c=(-0.7456,-0.3815)/1.7
  x=real(z), y=imag(z)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)), iter=1 
  rad=fn1(3.1*fn3(x1+flip(y1))), center=(1.0,0.1) 
  pix=fn2(10*newpixel+(5.0,-3.4))*(-0.1,-0.95)
  zn=center+fn4(rad)/(pix-center)
  limit=real(p1), b1=16, b2=0.0001:
  test1=(iter<limit), test2=(iter!=limit)
  z=(z-zn)*test2+zn  
  z2=z*z, z4=z2*z2, z1=(z4*z-1)/(4*z4)
  z=(z2+c)*test1+(z-z1)*(1-test1)  
  iter=iter+2
  ((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
  ;SOURCE: 42jcarr.frm
}


Carr2444 (YAXIS) {; Sylvie Gallet [101324,3444], Mod. BEJ
                  ; Revised for Fractint v20 by G. Martin 
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  m3=conj(0.10/newpixel)
  z=(cabs(0.5-newpixel)*sqr(conj(newpixel))-m3-sqr(flip(0.00510/newpixel)))-0.3
  c=(-1.099,-0.2249)
  x=real(z), y=imag(z)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)), iter=1 
  rad=fn1(3.1*fn3(x1+flip(y1))), center=(1.0,0.1) 
  pix=fn2(10*newpixel+(5.0,-3.4))*(-0.1,-0.95)
  zn=center+fn4(rad)/(pix-center)
  limit=real(p1), b1=16, b2=0.0001:
  test1=(iter<limit), test2=(iter!=limit)
  z=(z-zn)*test2+zn  
  z2=z*z, z4=z2*z2, z1=(z4*z-1)/(4*z4)
  z=(z2+c)*test1+(z-z1)*(1-test1)  
  iter=iter+1
  ((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
  ;SOURCE: 42jcarr.frm
}


Carr2445 (YAXIS) {; modified Jo Weber frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel)) 
  pm1=p1-1
  m3=conj(0.10/newpixel)
  z=(conj(0.5-newpixel)*sqr(cabs(newpixel))-m3-sqr(flip(0.00510/newpixel)))-0.44:
  oldz=z
  z=(pm1*(z^p1)+1)/(p1*z^pm1)
  |(z-oldz)|>=|0.001|
  ;SOURCE: 42jcarr.frm
}


Carr2446 (YAXIS) {; Sylvie Gallet [101324,3444], Mod. BEJ
                  ; Revised for Fractint v20 by G. Martin 
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  m3=conj(0.10/newpixel)
  z=(conj(0.5-newpixel)*sqr(cabs(newpixel))-m3-sqr(flip(0.00510/newpixel)))-0.44
  c=(-1.099,-0.2249)
  x=real(z), y=imag(z)
  x1=x-p2*fn1(y+p3*fn2(y))
  y1=y-p2*fn1(x+p3*fn2(x)), iter=1
  rad=fn1(3.1*fn3(x1+flip(y1))), center=(1.0,0.1) 
  pix=fn2(10*newpixel+(5.0,-3.4))*(-0.1,-0.95)
  zn=center+fn4(rad)/(pix-center)
  limit=real(p1), b1=16, b2=0.0001:
  test1=(iter<limit), test2=(iter!=limit)
  z=(z-zn)*test2+zn  
  z2=z*z, z4=z2*z2, z1=(z4*z-1)/(4*z4)
  z=(z2+c)*test1+(z-z1)*(1-test1)  
  iter=iter+2
  ((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
  ;SOURCE: 42jcarr.frm
}


Carr2447 (YAXIS) {; modified Jo Weber frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel)) 
  pm1=p1-1
  m3=conj(0.10/newpixel)
  z=(cabs(0.5-newpixel)*sqr(conj(newpixel))-m3-sqr(flip(0.00510/newpixel)))-0.3:
  oldz=z
  z=(pm1*(z^p1)+1)/(p1*z^pm1)
  |(z-oldz)|>=|0.001|
  ;SOURCE: 42jcarr.frm
}


Carr2448 (YAXIS) {; modified Jo Weber frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=abs(real(pixel))+flip(imag(pixel)) 
  pm1=p1-1
  z=1/(newpixel-1/log(0.0010/newpixel)-cos(0.010/newpixel+1.25)-conj(0.10/newpixel)):
  oldz=z
  z=(pm1*(z^p1)+1)/(p1*z^pm1)
  |(z-oldz)|>=|0.001|
  ;SOURCE: 42jcarr.frm
}


Carr2449 (YAXIS) {; modified Jo Weber frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=abs(real(pixel))+flip(imag(pixel)) 
  pm1=p1-1
  z=(newpixel-flip(0.0010/newpixel)-cabs(0.010/newpixel)-conj(0.10/newpixel)):
  oldz=z
  z=(pm1*(z^p1)+1)/(p1*z^pm1)
  |(z-oldz)|>=|0.001|
  ;SOURCE: 42jcarr.frm
}


Carr2450 (YAXIS) {; modified Jo Weber frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=abs(real(pixel))+flip(imag(pixel)) 
  pm1=p1-1
  z=flip(0.33-sin(newpixel))*sqr(newpixel)-conj(0.10/newpixel)-flip(0.010/newpixel):
  oldz=z
  z=(pm1*(z^p1)+1)/(p1*z^pm1)
  |(z-oldz)|>=|0.001|
  ;SOURCE: 42jcarr.frm
}


Carr2451 (YAXIS) {; modified Jo Weber frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=abs(real(pixel))+flip(imag(pixel)) 
  pm1=p1-1
  z=newpixel-conj(0.090/newpixel-flip(0.010/newpixel)):
  oldz=z
  z=(pm1*(z^p1)+1)/(p1*z^pm1)
  |(z-oldz)|>=|0.001|
  ;SOURCE: 42jcarr.frm
}


Carr2452 (YAXIS) {; modified Jo Weber frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=abs(real(pixel))+flip(imag(pixel)) 
  pm1=p1-1
  z=newpixel-((tan(1/newpixel)+sin(1/newpixel)-flip(1/newpixel))):
  oldz=z
  z=(pm1*(z^p1)+1)/(p1*z^pm1)
  |(z-oldz)|>=|0.001|
  ;SOURCE: 42jcarr.frm
}


Carr2453 (YAXIS) {; modified Jo Weber frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=abs(real(pixel))+flip(imag(pixel)) 
  pm1=p1-1
  z=cabs(newpixel)-(((0.3,0.6)+newpixel)/(0.20/newpixel)):
  oldz=z
  z=(pm1*(z^p1)+1)/(p1*z^pm1)
  |(z-oldz)|>=|0.001|
  ;SOURCE: 42jcarr.frm
}


Carr2454 (YAXIS) {; modified Jo Weber frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=abs(real(pixel))+flip(imag(pixel)) 
  pm1=p1-1
  z=newpixel*sqr(newpixel)-conj(0.010/newpixel)-flip(0.010/newpixel):
  oldz=z
  z=(pm1*(z^p1)+1)/(p1*z^pm1)
  |(z-oldz)|>=|0.001|
  ;SOURCE: 42jcarr.frm
}


Carr2455 (YAXIS) {; modified Jo Weber frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=abs(real(pixel))+flip(imag(pixel)) 
  pm1=p1-1
  m3=flip(cabs(1-newpixel))*sqr(conj(newpixel))
  z=m3-(conj(0.10/newpixel))-flip(0.010/newpixel):
  oldz=z
  z=(pm1*(z^p1)+1)/(p1*z^pm1)
  |(z-oldz)|>=|0.001|
  ;SOURCE: 42jcarr.frm
}


Carr2456 (YAXIS) {; modified Jo Weber frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=abs(real(pixel))+flip(imag(pixel)) 
  pm1=p1-1
  z=sqr(newpixel)/(conj(newpixel)):
  oldz=z
  z=(pm1*(z^p1)+1)/(1.2*(p1*z^pm1))
  |(z-oldz)|>=|0.001|
  ;SOURCE: 42jcarr.frm
}


Carr2457 (YAXIS) {; modified Jo Weber frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=abs(real(pixel))+flip(imag(pixel)) 
  pm1=p1-1
  z=flip(cabs(1+newpixel))-flip(0.010/newpixel):
  oldz=z
  z=(pm1*(z^p1)+1)/((p1*z^pm1))
  |real(z-oldz)|>=|0.001|
  ;SOURCE: 42jcarr.frm
}


Carr2458 (YAXIS) {; modified Jo Weber frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=abs(real(pixel))+flip(imag(pixel)) 
  pm1=p1-1
  m3=cabs(newpixel+0.5)*conj(conj(newpixel^7))
  z=(m3-conj(0.10/newpixel)-sqr(flip(0.00510/newpixel)))-0.25:
  oldz=z
  z=(pm1*(z^p1)+1)/((p1*z^pm1))
  |real(z-oldz)|>=|0.001|
  ;SOURCE: 42jcarr.frm
}


Carr2459 (YAXIS) {; modified Jo Weber frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=abs(real(pixel))+flip(imag(pixel)) 
  pm1=p1-1
  z=abs(conj(newpixel))-0.15:
  oldz=z
  z=(pm1*(z^p1)+1)/((p1*z^pm1))
  |real(z-oldz)|>=|0.001|
  ;SOURCE: 42jcarr.frm
}


Carr2460 (YAXIS) {; modified Jo Weber frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=abs(real(pixel))+flip(imag(pixel)) 
  pm1=p1-1
  z=conj(conj(newpixel*newpixel-flip(0.010/newpixel)-conj(0.10/newpixel))):
  oldz=z
  z=(pm1*(z^p1)+1)/((p1*z^pm1))
  |real(z-oldz)|>=|0.001|
  ;SOURCE: 42jcarr.frm
}


Carr2461 (YAXIS) {; modified Jo Weber frm.
     ; Corrected typo (0.08pixel to 0.08*pixel) G. Martin 10/98
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel)) 
  pm1=p1-1
  z=(1.5*newpixel^9)-cabs(0.08*newpixel-flip(0.01/newpixel))+conj(0.0535/newpixel)\
    +0.09:
  oldz=z
  z=(pm1*(z^p1)+1)/((p1*z^pm1))
  |(z-oldz)|>=|0.001|
  ;SOURCE: 42jcarr.frm
}


Carr2462 {; Modified Brian E. Jones frm. mans-galore-012
     ; Corrected typo (0.08pixel to 0.08*pixel) G. Martin 10/98
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r=cabs(conj(conj(newpixel/2)))
  z=(3.5*newpixel^5)-r-sin(0.08*newpixel-flip(0.01/newpixel))+conj(0.0535/newpixel)\
    +0.097
  c=(3.5*newpixel^8)-r-sin(0.08*newpixel-flip(0.01/newpixel))+conj(0.0535/newpixel)\
    +0.097
  iter=0, x=(real(z)), y=(imag(z))
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*(fn1(y+p3*fn2(y)))
  d1=(0.0003299/-newpixel)+(flip(0.00010/newpixel))
  y1=y-p2*(fn1(x+p3*fn2(x))):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+d1+x1+flip(y1)
  c=c*(1-test)+d1+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42jcarr.frm
}


Carr2463 {; Modified Brian E. Jones frm. mans-galore-012
          ; Corrected typo (0.08pixel to 0.08*pixel) G. Martin 10/98
  r=cabs(flip(flip(pixel/2)))
  c=(3.5*pixel^8)-r-sin(0.08*pixel-flip(0.01/pixel))+conj(0.0535/pixel)\
    +0.097
  z=pixel
  iter=0, x=(real(z)), y=(imag(z))
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*(fn1(y+p3*fn2(y)))
  y1=y-p2*(fn1(x+p3*fn2(x))):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42jcarr.frm
}


Carr2464 {; Modified Brian E. Jones frm. mans-galore-012
          ; Corrected typo (0.08pixel to 0.08*pixel) G. Martin 10/98
  r=cabs(flip(flip(pixel/2)))
  c=(3.5*pixel^8)-r-sin(0.08*pixel-flip(0.01/pixel))+conj(0.0535/pixel)\
      +0.097
  z=0.75*pixel
  iter=0, x=(real(z)), y=(imag(z))
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*(fn1(y+p3*fn2(y)))
  y1=y-p2*(fn1(x+p3*fn2(x))):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42jcarr.frm
}


Carr2465 {; Modified Brian E. Jones frm. mans-galore-012
  c=pixel, z=sqr(cos(pixel))-cosh(pixel)
  iter=0, x=(real(z)), y=(imag(z))
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*(fn1(y+p3*fn2(y)))
  y1=y-p2*(fn1(x+p3*fn2(x))):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42jcarr.frm
}


Carr2466 {; Modified Brian E. Jones frm. mans-galore-012
  c=pixel, z=(cos(pixel))-(cosh(pixel))^4
  iter=0, x=(real(z)), y=(imag(z))
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*(fn1(y+p3*fn2(y)))
  y1=y-p2*(fn1(x+p3*fn2(x))):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42jcarr.frm
}


Carr2467 {; Modified Brian E. Jones frm. mans-galore-012
  c=pixel, z=(cos(pixel-conj(0.01/pixel)))-(cosh(pixel-conj(0.1/pixel)))
  iter=0, x=(real(z)), y=(imag(z))
  nextzoom=iterspace=real(p1), magnification=imag(p1)
  x1=x-p2*(fn1(y+p3*fn2(y)))
  y1=y-p2*(fn1(x+p3*fn2(x))):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(1-test)+x1+flip(y1)
  c=c*(1-test)+test*magnification*c
  z=z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42jcarr.frm
}


Carr2468 {; Modified Sylvie Gallet frm.
  z=pixel, c=(-0.63,-0.4)
  d1=(0.00099475/-pixel)+(flip(0.00010/pixel))
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=(z*(1-test))+flip(imag(0.03750/pixel)) 
  c=c*(1-test)+d1+test*(p2*c+p3)
  z=(sqr(z*z)+c)
  iter=iter+1
  |z|<=16
  ;SOURCE: 42jcarr.frm
}


Carr2469 {; Modified Sylvie Gallet frm.
  z=pixel, c=(-0.63,-0.4)/2
  d1=(0.00129475/-pixel)+(flip(0.00010/pixel))
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=(z*(1-test))+flip(imag(0.03750/pixel)) 
  c=c*(1-test)+d1+test*(p2*c+p3)
  z=(z^5+c)
  iter=iter+1
  |z|<=16
  ;SOURCE: 42jcarr.frm
}


Carr2470 {; Modified Sylvie Gallet frm.
  z=pixel, c=(-0.63,-0.4)/2
  d1=(0.00099475/-pixel)+(flip(0.00010/pixel))
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=(z*(1-test))+flip(imag(0.03750/pixel)) 
  c=c*(1-test)+d1+test*(p2*c+p3)
  z=z^2+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42jcarr.frm
}


Carr2471 {; Modified Sylvie Gallet frm.
  z=pixel, c=(-0.7456,0.132)
  d1=(0.00099475/-pixel)+(flip(0.00010/pixel))
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=(z*(1-test))+flip(imag(0.03750/pixel)) 
  c=c*(1-test)+d1+test*(p2*c+p3)
  z=z^2+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42jcarr.frm
}


Carr2472 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=newpixel-0.3, c=(-0.7456,0.132)
  d1=(0.00099475/-newpixel)+(flip(0.00010/newpixel))
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=(z*(1-test))+flip(imag(0.03750/newpixel)) 
  c=c*(1-test)+d1+test*(p2*c+p3)
  z=z^2+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42jcarr.frm
}


Carr2473 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(pixel-conj(0.10/pixel))-0.4, c=2*pixel-1/log(cos(1/pixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42jcarr.frm
}


Carr2474 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(2*pixel-conj(0.10/pixel))
  c=2*pixel-1/log(cos(1/pixel))+0.2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.004
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42jcarr.frm
}


Carr2475 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(2*conj(pixel)-conj(0.30/pixel))+0.2
  c=2*pixel-1/log(cos(1/pixel))+0.2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.004
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42jcarr.frm
}


Carr2476 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(2*tanh(newpixel)-conj(0.10/newpixel))+0.2
  c=(-0.7456,-0.132)/1.25
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.004
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42jcarr.frm
}


Carr2477 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(newpixel^2-(log(cos(1.5/newpixel)))/newpixel)+0.2
  c=(-0.7456,-0.132)/1.25
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0045
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42jcarr.frm
}


Carr2478 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=newpixel+1/log(newpixel)
  c=(-0.7456,-0.132)/1.25
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0045
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42jcarr.frm
}


Carr2479 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=newpixel-1/log(-0.7456,0.2)
  c=(-0.7456,-0.132)/1.25
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.003
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42jcarr.frm
}


Carr2480 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=newpixel/2+1/log(newpixel)
  z=newpixel-1/log(newpixel-1/log(tan(1/newpixel))-1/log(2/newpixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2481 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=cabs(newpixel*2)-1/log(conj(0.5/newpixel))
  c=(newpixel)-1/log(conj(0.5/newpixel-1))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.006
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2482 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(conj(newpixel))-conj(conj(0.5/newpixel))
  c=(-0.7456,-0.132)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0033
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2483 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=conj(conj(pixel^3))-conj(conj(0.5/pixel))^8
  c=(-0.7456,-0.132)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0075
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2484 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(conj(newpixel^1.75))-conj(conj(0.5/newpixel))^4
  c=(-0.7456,-0.132)/2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0065
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2485 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=flip(flip(newpixel^1.75))-conj(conj(0.1/newpixel))^4
  c=(-0.7456,-0.132)/2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0064
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2486 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=newpixel+1/log(cos(0.1/newpixel-0.025))*(tan(0.1/newpixel-0.025))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0155
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2487 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=newpixel+1/log(cos(0.1/newpixel-0.025))*(tan(0.1/newpixel-0.025))
  c=newpixel+1/log(cosxx(0.1/newpixel-0.025))*(tan(0.1/newpixel-0.025))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0105
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2488 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=newpixel^2+1/log(cos(0.1/newpixel-0.025))*(tan(0.1/newpixel-0.025))
  c=cabs(newpixel)+1/log(cosxx(0.1/newpixel-0.025))*(tan(0.1/newpixel-0.025))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0105
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2489 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=newpixel+1/log(cos(0.1/newpixel-0.025))*(tan(0.1/newpixel-0.025))
  c=(-0.7456,-0.122)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0065
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2490 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=tanh(newpixel)-(((0.3,0.6)+newpixel)/(0.20/-newpixel))
  c=(-0.7586,-0.132)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.00375
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2491 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=tanh(2*newpixel)-(((0.3,-0.6)+newpixel^4)-(conj(0.20/newpixel)))
  c=(-0.7456,-0.132)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.00475
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2492 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=sqr(sqr(conj(newpixel)))-(conj(0.10/newpixel))-(flip(0.020/newpixel))
  c=(-0.7456,0.13)+0.009/newpixel
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.00575
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2493 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=newpixel
  z=conj(newpixel)*newpixel^2-conj(conj(0.10/newpixel))^(-3*newpixel)\
    -flip(flip(0.010/newpixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.00575
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2494 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=newpixel
  c=conj(newpixel)*newpixel^2-conj(conj(0.10/newpixel))^(-3*newpixel)\
    -flip(flip(0.010/newpixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.00675
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2495 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(newpixel)*newpixel^2-sinh(0.10/newpixel)^(-3*newpixel)-flip(0.0010/newpixel)
     ; c=conj(newpixel)*newpixel^2-conj(conj(0.10/newpixel))^(-3*newpixel)-flip(flip(0.010/newpixel))
  c=(-0.7556,-0.122)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0044
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2496 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(newpixel)*newpixel^2-sinh(0.10/newpixel)^(-3*newpixel)-flip(0.0010/newpixel)
  c=(-0.7556,-0.122)/1.33
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0035
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2497 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=flip(abs(1-newpixel))*sqr(newpixel)-conj(0.10/newpixel)-flip(0.010/newpixel)-0.3
  c=(-0.7456,-0.110)/1.15
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0024
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2498 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=flip(flip(1-newpixel))*conj(newpixel^2)-conj(0.10/newpixel)\
    -flip(0.010/newpixel)-0.3
  c=(-0.7456,-0.110)/1.35
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0032
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2499 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=conj(newpixel)*cabs(newpixel^4+0.25)-(conj(0.10/newpixel))\
      -sqr(flip(0.010/newpixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0032
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2500 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
     ; Edited for Fractint v. 20 by George Martin, 10/98
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  m3=cabs(newpixel^(-(2/newpixel/2)))
  z=conj(newpixel)*m3-(conj(0.10/newpixel))-sqr(flip(0.010/newpixel))-0.1
  c=(-0.9359,-0.09659)/2.1
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0051
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2501 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(-0.8006,-0.116), m4=(conj(0.005/newpixel))-sqr(flip(0.09/newpixel))
  z=flip(1/atan(1-newpixel))*sqr(newpixel)-m4
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0061
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2502 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=(-0.8006,-0.149)/1.2
  z=newpixel-0.25/(atan(0.10/-newpixel)-sqr(acos(0.250/-newpixel))^3.7)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.002
  z=z^2+c
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2503 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=(-0.3,-0.589)
  z=cotanh(1-newpixel)^1.5*newpixel^4-(1/log(conj(0.10/newpixel+1.25)))^2.5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.002
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2504 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=(-0.3,-0.589)/1.18
  z=(cosxx(1-newpixel*2)^3.5*conj(newpixel^4)\
    -(1/sqrt(conj(0.10/newpixel+1.25)))^2.5)+0.4
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.002
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2505 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=cotanh(1-newpixel)^1.5*newpixel^4-(1/log(conj(0.10/newpixel+1.25)))^2.5
  c=(newpixel^2.33)/log(1.667-newpixel)^2.87\
    -(1/log(conj(0.10/newpixel+1.25)))^2.95
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.00375
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2506 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=(1/newpixel)-1/log(newpixel-1/cos(0.010/newpixel))^2.5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.00495
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2507 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=(1/newpixel)-1/log(newpixel-1/cos(0.10/newpixel))^2.5-(conj(0.10/newpixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.00895
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2508 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(flip(conj(abs((newpixel*sin(newpixel+1))))))
  c=flip(conj(abs((newpixel*newpixel))))-conj(0.10/newpixel)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-0.1/c, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4\
    +pp2+0.000995
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2509 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(flip(conj(abs((newpixel*cosxx(newpixel-1))))))+0.3
  c=flip(conj(abs((newpixel^3))))-conj(0.10/newpixel)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-0.1/c, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4\
    +pp2+0.000995
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2510 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)+flip(abs(imag(pixel)))
  z=flip(conj(abs((newpixel^3))))-conj(0.10/newpixel)
  c=(-0.7456,-0.132)/1.25
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.000995
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2511 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(real(2*newpixel-0.124)+flip(imag(newpixel-0.224)*1.224))-0.35
  c=1/(2.224+1.224*real(newpixel)+flip(abs(newpixel)))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.000995
  z=(z*z+c)
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2512 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(real(2*newpixel-0.124)+flip(imag(newpixel-0.224)*1.224))
  c=1/(2.224+1.224*real(newpixel)+flip(abs(newpixel)))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.000995
  z=(z*z+c)+0.1/c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2513 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(imag(newpixel-0.124)+flip(real(newpixel-0.224)*1.224))
  c=1/(0.224+1.224*real(0.5*newpixel)+flip(abs(newpixel)))-conj(0.10/newpixel)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.001095
  z=(z*z+c)+0.1/c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2514 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(conj(imag(newpixel-0.124))+flip(real(newpixel-0.224)*1.224))-0.4
  c=1/(0.224+1.224*real(0.5*newpixel)+flip(abs(newpixel)))-conj(0.10/newpixel)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.001095
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2515 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(conj(1/(conj(imag(newpixel-0.124))+\
    flip(real(newpixel-0.224)*1.224))))
  c=conj(1/(0.224+1.224*real(0.5*newpixel)+\
    flip(abs(newpixel)))-conj(0.10/newpixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.001995
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2516 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(conj(1/(conj(imag(newpixel-0.124))\
    +flip(real(newpixel-0.224)*1.224))))
  c=conj(1/(0.224+1.224*real(0.5*newpixel)\
    +flip(abs(newpixel)))-conj(0.10/newpixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.001995
  z=z*z*z/5+z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2517 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel)), m4=conj(0.10/newpixel)
  z=conj(sin(1/(conj(imag(newpixel-0.124))\
    +flip(real(newpixel-0.224)*1.224))))-0.5
  c=tanh(sinh(1/(0.224+1.224*real(0.5*newpixel)\
    +flip(abs(newpixel)))-m4))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.001995
  z=real(z*z)*z/5+z*z+c+0.10/(c+z)
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2518 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel)), m4=conj(0.10/newpixel)
  z=conj(sin(1/(conj(imag(newpixel-0.124))\
    +flip(real(newpixel-0.224)*1.224))))-0.6
  c=tanh(sinh(1.5/(0.224+1.224*real(0.5*newpixel)+flip(abs(newpixel)))-m4))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.001995
  z=(real(z*z)*z/5)+z*z+c-0.15/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2519 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=real((1/newpixel)/1.91)/(5.7,-1.3)/2
  c=(1/newpixel*0.91/newpixel)+conj(0.10/newpixel)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.001995
  z=(real(z*z)*z/5)+z*z+c-0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2520 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(real(newpixel)+flip(imag(newpixel)*2.924))
  c=1/(real(newpixel*1.45)+flip(imag(newpixel)*1.624))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0003995
  z=(z*z*z/5)+z*z+c-0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2521 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(tan(newpixel)+flip(conj(newpixel)*2.924))
  c=1/(real(newpixel*1.45)+flip(imag(newpixel)*1.624))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0003995
  z=(z*z*z/5)+z*z+c-0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2522 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(tan(newpixel)+flip(conj(newpixel)*2.924))
  c=0.75/(conj(conj(newpixel*1.45))+flip(imag(newpixel)*1.624))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0003995
  z=(z*z*z/5)+z*z+c-0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2523 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(sinh(newpixel)+tanh(conj(newpixel)*2.924))
  c=0.75/(conj(conj(newpixel*1.45))+flip(imag(newpixel)*1.624))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0023995
  z=(z*z*z/5)+z*z+c-0.22/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2524 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=(conj(0.30/newpixel)+flip(0.010/newpixel))-0.5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0023995
  z=(z*z*z/5)+z*z+c-0.22/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2525 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=0.8*(1/newpixel), c=cosxx(z^z/newpixel-2)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0016995
  z=(z*z*z/5)+z*z+c-0.2/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2526 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=0.8*(1/newpixel), c=cotanh(z^z/newpixel-2)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0016995
  z=(z*z*z/5)+z*z+c-0.275/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2527 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=sin(1/newpixel)/cosxx(1/newpixel)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0010995
  z=(z*z*z/5)+z*z+c-0.59/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2528 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=sinh(2/newpixel)/cosh(1/newpixel)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0010995
  z=(z*z*z/5)+z*z+c-0.59/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2529 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=0.1/(newpixel)/(flip(0.88/newpixel))-conj(0.6/newpixel)
  c=((2.9/newpixel)/cosxx(z*z-2.2/newpixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0010995
  z=(z*z*z/5)+z*z+c-0.79/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2530 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=0.1/(newpixel)/(flip(1/newpixel*0.88/newpixel))-0.3
  c=0.1/(newpixel)/(flip(1/newpixel*0.88/newpixel))
  c1=1.5*z, c2=2.25*|z|, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0010995
  z=(z*z*z/5)+z*z+c-0.79/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2531 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b=conj(0.10/newpixel), b1=flip(0.010/newpixel)
  c=((0.75*newpixel-1/cotan(newpixel)-1/cos(newpixel+0.2)))-b-b1
  z=(0.85*newpixel-sinh(0.10/newpixel))/b*b1-0.2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*|z|
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0003995
  z=(z*z*z/5)+z*z+c-0.39/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2532 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=(1.5/(0.77*newpixel-cosxx(2/newpixel)-cos(2/newpixel)))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0003995
  z=(z*z*z/5)+z*z+c-0.59/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2533 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(tan(0.75/newpixel)^1.75)-conj(0.10/newpixel)
  c=(tan(0.75/newpixel)^1.65)-conj(0.10/newpixel)
  c1=1.05*z, c2=2.25*z, c3=3.375*z, c4=5.0625*|z|
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0010995
  z=(|z|/5)+z*z+c-0.24/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2534 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=(1/newpixel+1.15/newpixel)+0.1*(tan(cosxx(7/newpixel-real(3.5/newpixel))))
  z=1/((newpixel-0.5)-tan(2.5/newpixel)-conj(5/newpixel))
  c1=0.95*z, c2=2.25*z, c3=3.375*conj(z/2), c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0013995
  z=(|z|/5)+z*z+c-0.49/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2535 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(|0.75/newpixel|)+1/newpixel+0.0487
  c=1/(newpixel-(0.124/z*(0.524/newpixel/z)))
  c1=0.95*z, c2=2.25*z, c3=3.375*conj(z/2), c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.29/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2536 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(0.75*newpixel-(|newpixel|+cos(sqr(|newpixel|*1/(newpixel-0.124)))))
  c=1/(newpixel-(|newpixel|+cos(sqr(|newpixel|*1/(newpixel-0.124)))))
  c1=0.95*z, c2=2.25*z, c3=3.375*conj(z/2), c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0013995
  z=(|z|/5)+z*z+c-0.09/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
}


Carr2537 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(0.75*newpixel-(|newpixel|+cos(sqr(|newpixel|*1/(newpixel-0.124)))))+0.5
  c=1/(conj(conj(newpixel))-(|0.67*newpixel|\
       +cos(sqr(|newpixel|*1/(newpixel-0.124)))))
  c1=0.95*z, c2=2.25*z, c3=3.375*|z|, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0013995
  z=(|z|/5)+z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2538 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=tanh(1/newpixel)-0.1
  c=1/(newpixel-conj(z/(conj(newpixel))*z/newpixel+newpixel/z))
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0005995
  z=(|z|/5)+z*z+c-0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2539 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=tanh(1/newpixel)-0.1
  z=2/(newpixel-conj(b3/(conj(newpixel))*b3/newpixel+newpixel/b3))
  c=1/(0.8*newpixel-conj((b3+0.8)/(conj(newpixel))*b3/newpixel+newpixel/(b3)))
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0005995
  z=(|z|/5)+z*z+c-0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2540 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=conj(1/newpixel)+flip(1/newpixel)
  z=1/(newpixel-sqrt(1/newpixel)-log(1/newpixel)-(|b1|))
  c=1/(newpixel-sqrt(3/newpixel))
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0005995
  z=(|z|/5)+z*z+c-0.49/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2541 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(conj(0.7*newpixel)-(cos(7/newpixel-0.524)+sin(1/newpixel)-conj(1/newpixel)))
  c=1/(newpixel*real(5/newpixel-1.724))
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
  z=(|z|/5)+z*z+c-0.09/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2542 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(conj(newpixel)-(cos(7/newpixel-0.524)+sin(1/newpixel)-conj(1/newpixel)))
  c=1/(newpixel-conj(z-1.1)*|z|*z^conj(cotanh(newpixel-0.2)))
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
  z=(|z|/5)+z*z+c-0.09/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2543 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(conj(newpixel)-(cos(7/newpixel-0.524)+sin(1/newpixel)\
    -conj(0.1/newpixel)))+0.11
  c=1/(newpixel-conj(z-1.1)*z*z^conj(cotanh(5/newpixel-0.2)))
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
  z=(|z|/5)+z*z+c-0.59/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2544 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=1/(conj(newpixel)-(cos(7/newpixel-0.524)+sin(1/newpixel)\
     -conj(0.1/newpixel)))+0.11
  z=1/(newpixel-conj(b1-1.9)*b1*b1*b1^conj(cotanh(0.7/newpixel-0.4)))
  c=1/(newpixel-conj(b1-1.9)*b1*b1*b1^conj(cosxx(0.7/newpixel-0.2)))
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
  z=(|z|/5)+z*z+c-0.59/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2545 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=(conj(1/newpixel)/exp(1/newpixel))
  z=c=1/(newpixel-(atan(1/newpixel-(conj(b1))))+conj(1/newpixel)+flip(1/newpixel))
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
  z=(|z|/5)+z*z+c+0.09/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2546 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=(conj(1/newpixel)/exp(1/newpixel))
  z=1/(newpixel-(atan(1/newpixel-(conj(b1))))+conj(1/newpixel)+flip(1/newpixel))
  c=1/(newpixel-(cos(1/newpixel-(conj(b1))))+conj(1/newpixel)+flip(1/newpixel))/b1
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
  z=(|z|/5)+z*z+c+0.09/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2547 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=(conj(1/newpixel)/exp(1/newpixel))
  z=1/(newpixel-(atan(1/newpixel-(conj(b1))))+conj(1/newpixel)+flip(1/newpixel))
  c=1/(newpixel-(cos(1/newpixel-(conj(b1))))+conj(1/newpixel)\
    +flip(1/newpixel))/(newpixel-b1)
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-flip(flip(0.099/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
  z=(|z|/5)+z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2548 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel-flip(1/newpixel)-tan(|1/newpixel|)-conj(1/newpixel))
  c=1/(newpixel-atan(1/newpixel-cosh(|z|)-conj(|z|))\
      -conj(1/(exp(newpixel-0.85))))
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-flip(flip(0.099/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
  z=(|z|/5)+z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2549 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel-exp(1/newpixel)-tan(|1/newpixel|)-conj(0.10/newpixel))
  c=1/(newpixel-asinh(1/newpixel-cosxx(|z|)-conj(|z|))\
      -conj(1/(exp(newpixel-0.85))))
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-flip(flip(0.099/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
  z=(|z|/5)+z*z+c-0.09/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2550 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=|conj(newpixel)|, b4=|flip(newpixel)|
  z=((tan(newpixel*3)/tanh(newpixel+conj(0.1/newpixel)+flip(0.01/newpixel)))/b4)-0.3
  c=((newpixel-z^3)/(b3+z))/2
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-flip(flip(0.099/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
  z=(|z|/5)+z*z+c+0.39/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2551 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=1/(newpixel-sin(1/newpixel)-cos(2.5/newpixel))
  c=((newpixel-conj(0.1/newpixel)-flip(0.01/newpixel)-b1))
  z=(newpixel-b1-c-flip(0.09/c))
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-flip(flip(0.099/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
  z=(|z|/5)+z*z+c+0.14/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2552 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(1/(newpixel-conj(1/(conj(newpixel)))-flip(1/(conj(newpixel)))))
  c=1/(tan(newpixel)*conj(5/newpixel-0.724))
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-flip(flip(0.099/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
  z=(|z|/5)+z*z+c+0.5/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2553 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(1/(newpixel-conj(1.5/(conj(newpixel)))-flip(1.5/(conj(newpixel)))))
  c=1/(tan(newpixel)*conj(2/newpixel-0.924))
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-flip(flip(0.099/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
  z=(|z|/5)+z*z+c+0.5/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2554 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=(1/(newpixel-conj(1.5/(conj(newpixel)))-flip(1.5/(conj(newpixel)))))
  z=1/(tan(newpixel)*conj(2/newpixel-0.924))+0.3
  c1=0.95*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-flip(flip(0.099/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0002995
  z=(|z|/5)+z*z+c+0.5/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2555 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=newpixel-cosh(0.25/newpixel)-conj(0.01/newpixel)+0.75
  z=(newpixel*(newpixel-flip(0.010/newpixel)-conj(0.10/newpixel)))+(0.0001/newpixel)
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.1/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0012995
  z=(|z|/5)+z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2556 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(newpixel*(newpixel-flip(0.010/newpixel)-conj(0.10/newpixel)))+(0.0001/newpixel)
  c=(-0.7556,-0.242)
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0012995
  z=(|z|/5)+z*z+c+0.09/newpixel
   ;z=z*z*z/5+z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2557 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(newpixel/3*cos(newpixel-flip(0.010/newpixel)-conj(0.10/newpixel)))
  c=(-0.7456,-0.132)/1.2
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0012995
  z=(|z|/5)+z*z+c+0.35/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2558 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=1/(newpixel-sqrt(conj(newpixel))-log(newpixel))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0012995
  z=(|z|/5)+z*z+c+0.35/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2559 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel-log(conj(newpixel))-log(cosh(newpixel)))
  c=1/(newpixel-sqrt(conj(newpixel))-log(newpixel))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0012995
  z=(|z|/5)+z*z+c+0.59/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2560 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel-log(conj(newpixel))-sqrt(tan(2*newpixel)))
  c=1/(newpixel-sqrt(conj(newpixel))-log(newpixel))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0012995
  z=(|z|/5)+z*z+c+0.69/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2561 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(1/(newpixel/0.7-log(conj(newpixel))-sqrt(conj(tan(newpixel)))))-0.2
  c=1/((conj(newpixel)-sqrt(conj(newpixel))-sqrt(newpixel)))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0009995
  z=(|z|/5)+z*z+c+0.39/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2562  (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(1.9*newpixel-real(1/newpixel)-cos(imag(1/newpixel)))
  c=1/(newpixel/0.5-sin(1/newpixel)-cosxx(0.25/newpixel))-0.3
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*2*(|z|)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0012995
  z=(|z|/5)+z*z+c+0.59/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2563 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=1/(newpixel/0.8-conj(0.1/newpixel)+exp(0.06/newpixel))
  z=1/(newpixel-abs(cos(c^2)-conj(c))+flip(cabs(tanh(c)-conj(c))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*2*(|z|)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.12/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0004995
  z=(|z|/5)+z*z+c+0.49/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2564 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=1/(newpixel-conj(1/newpixel)+exp(0.045/newpixel)-flip(1/newpixel))
  z=1/(newpixel-(3/c-c/4)-conj(1/newpixel))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*2*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0004995
  z=(|z|/5)+z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2565 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=1/(newpixel-conj(1/newpixel)+exp(0.045/newpixel)-flip(1/newpixel))
  z=c=1/(newpixel-(3/b3-b3/4)-conj(0.1/newpixel)+exp(0.050/(|newpixel|)))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*2*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.08/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0004995
  z=(|z|/5)+z*z+c+0.45/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2566 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=newpixel-(conj(0.10/newpixel)+(exp(0.0250/newpixel)))
  c=newpixel-(tanh(0.010/newpixel)+(exp(0.0250/newpixel)))+0.1
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*(|z|)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.1/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0004995
  z=(|z|/5)+z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2567 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=flip(imag(sqr(newpixel)))
  c=newpixel*sqr(newpixel)-conj(0.10/newpixel)-flip(0.010/newpixel)
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0010995
  z=(|z|/5)+z*z+c+0.09/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2568 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=flip(imag(sqr(newpixel)))
  c=(newpixel)-conj(0.10/newpixel)-flip(0.010/newpixel)
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0010995
  z=(|z|/5)+z*z+c+0.09/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2569 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  p5=exp(0.035/newpixel)
  z=sinh(newpixel^2)-1/log(newpixel-(15*p5)-flip(0.75*p5))
  c=z-0.0325
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=400
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.08/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0010995
  z=(|z|/5)+z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2570 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=newpixel*(newpixel-0.2)-1/log(0.10/newpixel)-cos(0.010/newpixel)\
    +conj(0.10/newpixel)+0.45
  c=newpixel*(newpixel-0.2)-1/log(0.10/newpixel)-cos(0.010/newpixel)\
    +conj(0.08/newpixel)+0.1
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.08/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.009/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2571 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=newpixel
  z=flip(imag(1-newpixel))*conj(newpixel^2)-conj(0.10/newpixel)-flip(0.010/newpixel)
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.08/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.019/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2572 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=newpixel-conj(0.1/newpixel)-flip(0.02/newpixel)
  z=flip(imag(1-newpixel))*conj(newpixel^5)-conj(0.10/newpixel)-flip(0.010/newpixel)
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.06/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.059/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2573 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=flip(imag(1-newpixel))
  c=newpixel
  z=b3*(newpixel^2)-conj(0.10/newpixel)-flip(0.010/newpixel)
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.06/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.059/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2574 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(newpixel-conj(0.1/newpixel)-flip(0.011/newpixel))
  c=1/(newpixel-acosh(1/newpixel-cosxx(|z|)-conj(|z|))\
    -conj(1/(exp(newpixel+1.85))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.13/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2575 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(newpixel-conj(0.1/newpixel)-flip(0.051/newpixel))
  c=1/(newpixel-acosh(1/newpixel-cotan(|z|)-conj(|z|))-conj(1/(exp(newpixel+1.85))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.13/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2576 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel-conj(0.1/newpixel)-exp(0.25/newpixel))
  c=1/(newpixel+cosxx(1/(sqr(cos(newpixel+conj(newpixel))))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.15/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2577 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel-log(conj(newpixel))-log(cosh(newpixel)))
  c=1/(newpixel+cosxx(1/(sqr(cos(newpixel+conj(newpixel))))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.15/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2578 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel-sqrt(conj(newpixel))-log(cotan(newpixel)))
  c=1/(newpixel+cosxx(1/(sqr(cos(newpixel+conj(newpixel))))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.15/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2579 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel-conj(conj(0.10/newpixel))-cotan(cotan(1/newpixel)))
  c=1/(newpixel+cosxx(1.5/(sqr(cos(newpixel+conj(newpixel))))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.49/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 96msg.frm
}


Carr2580 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(1/(newpixel-conj(conj(0.10/newpixel))\
    -cotan(cotan(1/newpixel))))/(1.33+1/newpixel)
  c=1/(newpixel+cos(1.5/(sqr(cos(newpixel+conj(newpixel))))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.49/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2581 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel-flip(flip(0.1/newpixel))-conj(conj(flip(0.25/newpixel))))
  c=1/(newpixel+cos(1.5/(sqr(cos(newpixel+conj(newpixel))))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.49/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2582 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel-flip(flip(0.1/newpixel))-conj(conj(flip(0.25/newpixel))))
  c=1/(newpixel+cos(1.5/(sqr(cos(newpixel+conj(newpixel))))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.12/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0013995
  z=(|z|/5)+z*z+c-0.49/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2583 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel-(flip(flip(0.1/newpixel))-conj(conj(flip(0.25/newpixel))))^4)+0.2
  c=1/(newpixel+cos(1.5/(sqr(cos(newpixel+conj(newpixel))))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.08/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2584 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/((newpixel)-(flip(imag(0.1/newpixel))-(flip(real(0.25/newpixel))))^4)+0.2
  c=1/(flip(imag(newpixel))+cos(1.5/(sqr(cos(newpixel+conj(newpixel))))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.08/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2585 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel-(tanh(0.10/newpixel)-sqr(sinh(0.0250/newpixel)))^6)
  c=1/(newpixel+cos(3.5/(sqr(cos(newpixel+conj(newpixel))))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.08/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2586 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel*(3*newpixel-flip(0.01/newpixel)-conj(0.1/newpixel)))
  c=1.3/(newpixel*(cabs(2.15*newpixel-flip(0.010/newpixel)-conj(0.10/newpixel))))-0.1
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.10/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.10/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2587 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel*(3*sinh(newpixel)-flip(0.01/newpixel)-conj(0.1/newpixel)))
  c=0.83/(newpixel*(cabs(2.15*newpixel-flip(0.10/newpixel)-conj(0.010/newpixel))))-0.1
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.08/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.10/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2588 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=0.85/(newpixel-asin(0.5/newpixel)-exp(0.0250/newpixel))
  c=0.83/(newpixel*(cabs(2.15*newpixel-flip(0.10/newpixel)-conj(0.010/newpixel))))-0.1
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.08/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.10/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
}


Carr2589 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=0.85/(newpixel*5*(exp(newpixel)-flip(0.01/newpixel)-conj(0.1/newpixel)))
  c=0.83/(newpixel*(abs(1.15*newpixel-flip(0.10/newpixel)\
    -conj(0.010/newpixel))))-0.1
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.08/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.40/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2590 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=0.85/(tan(newpixel)*(newpixel/2))/(newpixel-sqr(flip(1/newpixel)\
    -sqr(conj(1/newpixel))))
  z=0.83/(newpixel*(abs(1.15*newpixel-flip(0.10/newpixel)\
    -conj(0.010/newpixel))))-0.1
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.08/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2591 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=(conj(conj(newpixel^4))/(conj(newpixel^1.5)))-0.35
  z=(flip(flip(newpixel^5))/(flip(newpixel)))-0.5
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.115/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c+0.10/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2592 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(conj(conj(newpixel^4))/(conj(newpixel^1.5)))-0.25
  c=0.8*newpixel-1/log(newpixel-conj(conj(0.10/newpixel))\
    +flip(flip(imag(0.0010/newpixel))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.07/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c+0.120/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2593 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(sinh(sinh(newpixel^4))/(conj(newpixel^1.5)))-0.25
  c=0.5*newpixel-1/log(newpixel-conj(conj(0.10/newpixel))\
    +flip(flip(imag(0.0010/newpixel))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.07/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c+0.120/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2594 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(cos(cos(newpixel^4))/(cotanh(newpixel^1.5)))-0.25
  c=0.5*newpixel-1/log(newpixel-conj(conj(0.10/newpixel))\
    +flip(flip(imag(0.0010/newpixel))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.07/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c+0.130/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2595 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(cosxx(cosxx(newpixel^4))/(cotanh(newpixel^1.5)))-0.15
  c=0.5*newpixel-1/log(newpixel-conj(conj(0.10/newpixel))\
    +flip(flip(imag(0.0010/newpixel))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.10/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0005995
  z=(|z|/5)+z*z+c+0.130/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2596 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=0.5*newpixel-1/log(newpixel-conj(conj(0.10/newpixel))\
    +flip(flip(imag(0.0010/newpixel))))
  z=(c+0.0525)-conj(0.10/newpixel)
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.10/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0005995
  z=(|z|/5)+z*z+c+0.130/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2597 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(conj(newpixel^5))-flip(flip(newpixel)^4)-0.4
  c=(conj(newpixel)^2.5)-(flip(0.010/newpixel))-(conj(0.10/newpixel))-0.5
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.10/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
  z=(|z|/5)+z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2598 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(conj(newpixel^5))-flip(flip(newpixel)^4)-0.4
  c=z-0.0625-conj(0.10/newpixel)
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.10/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
  z=(|z|/5)+z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2599 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=exp(conj(conj(newpixel^20))-flip(flip(newpixel)^4)-0.4)-0.5
  c=z-0.0625-conj(0.10/newpixel)
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.10/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
  z=(|z|/5)+z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 96msg.frm
}


Carr2600 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=exp(conj(conj(newpixel^20))-sin(flip(newpixel)^3)-0.4)-0.5
  c=(z-0.0625-conj(0.10/newpixel))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.10/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
  z=(|z|/5)+z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2601 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=exp(conj(conj(newpixel^20))-sin(flip(newpixel)^3)-0.4)-0.5
  c=newpixel-conj(0.10/newpixel)-flip(0.0010/newpixel)
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.10/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
  z=(|z|/5)+z*z+c+0.05/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2602 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=flip(exp(conj(conj(newpixel^20))-sin(flip(newpixel)^3)-0.4)-0.5)
  c=conj(newpixel-conj(0.10/newpixel)-flip(0.0010/newpixel))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.10/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
  z=(|z|/5)+z*z+c+0.05/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2603 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(exp(conj(conj(newpixel^20))-sin(flip(newpixel^3.5))-0.4)-0.5)
  c=(-0.7456,-0.132)/2
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.10/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
  z=(|z|/5)+z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2604 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(exp(conj(conj(newpixel^20))-sin(flip(newpixel^3))-0.4)-0.5)
  c=(0.3,0.6)/3
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.10/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
  z=(|z|/5)+z*z+c          ; +0.05/pixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2605 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(exp(conj(conj(flip(newpixel^20)))-tanh(flip(newpixel^3))-0.4)-0.5)
  c=newpixel-(1/log(newpixel-1/cos(0.010/newpixel))^2.5)
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.07/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
  z=(|z|/5)+z*z+c+0.09/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2606 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(exp(conj(conj(flip(newpixel^20)))-tanh(flip(newpixel^3))-0.4)-0.5)
  c=(newpixel*(abs(1.15*newpixel-flip(0.0010/newpixel)-conj(0.30/newpixel))))-0.1
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.07/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
  z=(|z|/5)+z*z+c+0.09/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2607 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(exp(conj(conj(flip(newpixel^20)))-tanh(flip(newpixel^3))-0.4)-0.5)
  c=(newpixel*(cabs(1.15*newpixel-flip(0.0010/newpixel)-conj(0.30/newpixel))))-0.1
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.07/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
  z=(|z|/5)+z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2608 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.10/newpixel), b4=conj(1/newpixel)
  z=(exp(conj(conj(flip((newpixel/3-b4)^20)))\
    -cabs(cosxx((newpixel)^5))-0.3)-0.5)
  c=(newpixel*(cosxx(1.15*newpixel-flip(0.01/newpixel)-b3)))-0.15
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.07/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
  z=(|z|/5)+z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2609 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=flip(conj(0.10/newpixel)), b4=conj(1/newpixel)
  z=(exp(conj(conj(flip((newpixel/4-b4)^20)))\
    -cabs(cosxx((newpixel)^4))-0.3)-0.5)
  c=(newpixel*(cosxx(1.15*newpixel-flip(0.01/newpixel)-b3)))/4.15
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.02/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
  z=(|z|/5)+z*z+c+0.16/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2610 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=flip(conj(0.10/newpixel)), b4=conj(1/newpixel)
  b5=cabs(flip(acos(asinh(0.5*newpixel))))
  z=((exp(conj(conj(flip((newpixel/4-b4)^20)))\
    -cabs(cosxx((newpixel)^4))-0.3)-0.5))/(b5-exp(b3))
  c=(newpixel*(cosxx(1.15*newpixel-flip(1/newpixel)-(b3/newpixel))))/4.15
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0005995
  z=(|z|/5)+z*z+c+0.13/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2611 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=flip(conj(0.10/newpixel)), b4=conj(1/newpixel)
  b5=cabs(flip(acos(asin(0.5*newpixel))))
  z=((exp(conj(conj(flip((2*newpixel-b4)^20)))\
    -cabs(cosxx((newpixel)^6))-0.3)-0.5))/(b5-exp(b3))
  c=newpixel/4
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0005995
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2612 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=flip(conj(0.10/newpixel)), b4=conj(1/newpixel)
  b5=cabs(flip(acos(asin(0.5*newpixel))))
  z=((exp(conj(conj(flip((2*newpixel-b4)^20)))\
    -cabs(cosxx((newpixel)^6))-0.3)-0.5))/(b5-exp(b3))
  c=b5*newpixel/4
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0005995
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2613 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=flip(conj(0.10/newpixel)), b4=conj(1/newpixel)
  b5=cabs(flip(acos(asin(0.5*newpixel))))
  z=((exp(conj(conj(flip((2*newpixel-b4)^20)))\
    -cabs(cosxx((newpixel)^6))-0.3)-0.5))/(b5-exp(b3))
  c=(b5*cotanh(newpixel)/4)-0.4
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0005995
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2614 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=flip(conj(0.10/newpixel)), b4=conj(1/newpixel)
  b5=cabs(flip(acos(asin(0.5*newpixel))))
  z=((exp(conj(conj(flip((2*newpixel-b4)^20)))\
    -cabs(cosxx((newpixel)^6))-0.3)-0.5))/(b5-exp(b3))
  c=((b5*conj(conj(newpixel)/4))-0.4)^z*z
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0005995
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2615 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=flip(conj(0.10/newpixel)), b4=conj(1/newpixel)
  b5=cabs(flip(acos(asin(0.5*newpixel))))
  z=((exp(conj(conj(flip((2*newpixel-(b4)*2)^20)))\
    -cabs(cosxx((newpixel)^6))-0.3)-0.5))/(b5-exp(b3))
  c=0.85/(newpixel*5*(exp(newpixel)-flip(0.01/newpixel)-conj(0.1/newpixel)))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0009995
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2616 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(exp(conj(conj(newpixel^20))-cosxx(conj(conj(newpixel^3.5)))-0.4)-0.5)
  c=(flip(imag(0.5-newpixel))*conj(tan(newpixel))\
    -conj(0.10/newpixel)-flip(0.010/newpixel))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0009995
  z=z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2617 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(exp(conj(conj(newpixel^20))-cosxx(conj(conj(newpixel^3.5)))-0.4)-0.5)
  c=(cos(cos(0.5-newpixel))*conj(conj(newpixel))\
    -conj(0.10/newpixel)-flip(0.010/newpixel))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0009995
  z=z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2618 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(exp(conj(conj(newpixel^100))-cosh(conj(conj(newpixel^2.5)))-0.4)-0.5)
  c=conj(acosh(1-newpixel+newpixel))^2-(conj(0.10/newpixel))-(flip(0.010/newpixel))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0039995
  z=z*z+c+0.29/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2619 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(exp(conj(conj(newpixel^100))-cosh(conj(conj(newpixel^2.5)))-0.4)-0.5)
  c=(newpixel)-0.5/((log(conj(newpixel))^12)+newpixel)+conj(0.0450/newpixel)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
  z=z*z+c+0.09/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2620 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(exp(conj(conj(newpixel^100))-cosh(conj(conj(newpixel^2.5)))-0.4)-0.5)
  c=((newpixel)-0.5/((log(conj(-newpixel))^12)+newpixel)+sqrt(0.0450/newpixel))/0.8
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
  z=z*z+c+0.09/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2621 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=((newpixel)-0.5/((log(conj(-newpixel))^12)+newpixel)+sqrt(0.0450/newpixel))/0.8
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
  z=z*z+c+0.09/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2622 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(exp(conj(conj(newpixel^100))-cosh(conj(conj(newpixel^2.5)))-0.4)-0.5)
  c=(cabs(newpixel)*(sqr(newpixel))\
    -sinh(0.10/newpixel)-sqr(flip(0.00010/newpixel)))/4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
  z=z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2623 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(exp(conj(conj(newpixel^100))-cosh(conj(conj(newpixel^2.5)))-0.4)-0.5)
  c=(newpixel)-1/log(newpixel-1/tan(0.0010/newpixel))^3.5
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
  z=z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2624 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(exp(conj(conj(newpixel^450))-cosh(conj(conj(newpixel^20.5)))-0.4)-0.5)
  c=(flip(imag(0.33-newpixel))*sqr(newpixel)\
    -conj(0.10/newpixel)-flip(0.010/newpixel))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
  z=z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42mcarr.frm
}


Carr2625 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=((exp(conj(conj(newpixel^450))\
    -cosh(conj(conj(newpixel^20.5)))-0.4)-0.5))^0.95
  c=newpixel
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
  z=z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ncarr.frm
}


Carr2626 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(1/log(exp(conj(conj(newpixel^450))\
    -cosh(conj(conj(newpixel^50.5)))-0.4)-0.5))
  c=flip(flip(newpixel))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
  z=z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2627 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(1/log(exp(conj(conj(newpixel^450))\
    -cosh(conj(conj(newpixel^50.5)))-0.4)-0.5))
  c=conj(conj(newpixel))-conj(conj(0.10/newpixel))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
  z=z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2628 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(1/log(exp(conj(conj(newpixel^450))\
    -cosh(conj(conj(newpixel^50.5)))-0.4)-0.5))
  c=conj(conj(newpixel))-tan(tan(0.10/newpixel))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
  z=z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2629 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(0.25/log(exp(conj(conj(newpixel^450))\
    -cosh(conj(conj(newpixel^50.5)))-0.4)-0.8))
  c=(-0.7456,-0.152)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
  z=z*z+c-0.29/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2630 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -cosh(conj(conj(newpixel^50.5)))-0.4)-0.8)))
  c=acos(1-newpixel+newpixel/5-0.22/newpixel)^2-(conj(0.10/newpixel))\
    -(flip(0.0060/newpixel))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0022995
  z=z*z+c-0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2631 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -cosh(conj(conj(newpixel^50.5)))-0.4)-0.8)))
  c=cosxx(1-newpixel+newpixel/5-0.22/newpixel)^2-(conj(0.10/newpixel))\
    -(flip(0.0060/newpixel))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0022995
  z=z*z+c-0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2632 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -cosh(conj(conj(newpixel^50.5)))-0.4)-0.8)))
  c=cotan(1-newpixel+newpixel/5-0.22/newpixel)-(conj(0.10/newpixel))\
    -(flip(0.0060/newpixel))-0.1
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0022995
  z=z*z+c-0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2633 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -cosh(conj(conj(newpixel^50.5)))-0.4)-0.8)))
  c=cotan(1-newpixel+newpixel/5-0.22/newpixel)\
    -cabs(conj(0.10/newpixel))-abs(flip(0.0060/newpixel))-0.1
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0022995
  z=z*z+c-0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2634 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -cosh(conj(conj(newpixel^50.5)))-0.4)-0.8)))
  c=((newpixel+newpixel/5)\
    -0.45/log(sin(newpixel-log(1/log(0.005550/newpixel)))))+0.2
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0012995
  z=z*z+c-0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2635 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -cosh(conj(conj(newpixel^50.5)))-0.4)-0.8)))
  c=(0.67*(sinh(newpixel)+conj(newpixel/5))\
    -0.45/log(cabs(newpixel-log(1/log(0.005550/newpixel)))))+0.2
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0012995
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2636 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^50.5)))-0.4)-0.8)))
  c=newpixel-tanh(newpixel)/log((tan(newpixel)+sin(newpixel-1)-2.75/newpixel))-0.3
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0012995
  z=(|z|/5)+z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2637 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^40.5)))-0.4)-0.8)))
  c=(acos(1-newpixel+newpixel/1.5)-(conj(0.10/newpixel))\
    -(tanh(0.0025250/newpixel)))-0.3
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0012995
  z=(|z|/5)+z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2638 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=newpixel-tanh(newpixel)/(sqrt(log((tan(newpixel)\
        +sin(newpixel-1)-2.75/newpixel))))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0012995
  z=(|z|/5)+z*z+c-0.09/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2639 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(cabs(0.1/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  c=cabs(newpixel)/(1/log(log((tan(1-1/newpixel)\
    +sin(newpixel-1)-1.75/newpixel))))-0.4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0012995
  z=(|z|/5)+z*z+c-0.09/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2640 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  c=(-0.3159,-0.63555)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0012995
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2641 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=newpixel
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0012995
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2642 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(newpixel/2)/(1/log(log((tan(1/newpixel)+sin(newpixel)-1.75/newpixel))))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0012995
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2643 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(newpixel/2)-1/log(0.10/newpixel)-cos(0.010/newpixel)+conj(0.10/newpixel)+0.75
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0012995
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2644 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=conj(newpixel/3)*(newpixel+1.25)-(flip(asin(0.010/newpixel))\
    -conj(asin(0.10/newpixel)))+0.25
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0021995
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2645 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(newpixel/2-(conj(0.10/newpixel)+flip(conj(0.010/newpixel)))^4)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0021995
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2646 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(abs(newpixel/2)-(conj(0.10/newpixel)+flip(conj(0.010/newpixel)))^4)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0021995
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2647 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(sinh((newpixel-conj(0.10/newpixel-flip(0.010/newpixel)))))^cosxx(0.5*newpixel)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0021995
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2648 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=cabs(newpixel)*sqr(0.33+newpixel)-tanh(0.10/newpixel)\
    -sqr(conj(0.00510/newpixel))-0.1
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0021995
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2649 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=0.75*((newpixel)*sqr(0.33+newpixel)-tanh(0.10/newpixel)\
    +conj(conj(0.002510/newpixel)))-0.1
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0021995
  z=z*z+c-0.09/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2650 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=conj(conj(sqr(newpixel)))/acos(conj(conj(sqr(newpixel))))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0021995
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2651 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(newpixel/2-0.5/log(0.0010/newpixel)-cos(0.010/newpixel+1.25)\
    -conj(0.10/newpixel))+0.07
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0025995
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2652 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(imag(newpixel/2)-0.5/log(0.0010/newpixel)\
    -cos(0.010/newpixel+1.25)-conj(0.10/newpixel))+0.07
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0029995
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2653 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(flip(imag(newpixel/1.75))-2/log(0.0010/newpixel)\
    -cos(0.050/newpixel+1.25)-conj(0.10/newpixel))+0.07
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0029995
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2654 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(cabs(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=flip(imag(0.33-cabs(newpixel)))-conj(0.120/newpixel)-flip(0.010/newpixel)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.04/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0036995
  z=z*z+c+0.08/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2655 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
      -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(newpixel/2)-1/log(newpixel-1/tan(0.10/newpixel))^2.5
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0036995
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2656 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(newpixel/2)-1/log(newpixel-1/sqrt(0.10/newpixel))^2.5-conj(0.05/newpixel)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0034995
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2657 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=newpixel/cotanh(1/cotanh(newpixel/2))\
    -0.5/log(newpixel-0.7/sqrt(0.50/newpixel))^2.5-conj(0.05/newpixel)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0034995
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ncarr.frm
}


Carr2658 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=0.3*(newpixel)/cotanh(1/cotanh(newpixel/2))\
    -0.5/log(newpixel-0.7/sqrt(0.50/newpixel))^2.5-conj(0.05/newpixel)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0034995
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2659 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=0.3*(newpixel)/cos(1/cotanh(newpixel))\
    -0.5/log(newpixel-0.7/sqrt(0.50/newpixel))^2.5-conj(0.05/newpixel)+0.2
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0034995
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2660 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=0.3*1/log(newpixel)/cotanh(1/cotanh(newpixel))\
    -0.5/log(newpixel-0.7/sqrt(0.50/newpixel))^2.5-conj(0.05/newpixel)+0.2
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0032995
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2661 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(3*newpixel)+conj(newpixel-flip(0.010/newpixel))+0.3
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0032995
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2662 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=((newpixel^5)+0.2)/flip(2.5*newpixel)+conj(newpixel-conj(0.30/newpixel))-0.1
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0029995
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2663 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
     -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=newpixel/2-(conj(0.03/newpixel)-flip(0.0030/newpixel)+0.055/newpixel)+0.15
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0029995
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2664 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
     -cos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=((newpixel^10)+0.1)/flip(2.5*newpixel)\
     +conj(conj(newpixel-conj(0.30/newpixel)))-0.1
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2664a (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(exp(conj(conj(newpixel^450))-cosh(conj(conj(newpixel^20.5)))-0.4)-0.5)
  c=(flip(imag(0.33-newpixel))*sqr(newpixel)\
     -conj(0.10/newpixel)-flip(0.010/newpixel))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.03/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
  z=z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: msg.frm
}


Carr2665 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
     -cos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=conj(conj(0.2+newpixel/2+conj(newpixel/3+0.2)+flip(newpixel/2+0.2)))-0.3
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2666 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
     -cos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=newpixel/(tanh(0.3/newpixel))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2667 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
     -cos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(newpixel+0.2)/(cosh(0.3/newpixel-0.2))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2668 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))+exp(0.1/pixel)
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
     -cos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(sinh(tanh(0.63-cos(newpixel)))/(cosxx(2*newpixel+0.6)))-0.3
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
  z=z*z+c+0.125/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2669 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996 YES
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
        -cos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(sinh(tanh(0.63-cos(newpixel)))/(cosxx(6*newpixel+0.6)))-0.1
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
  z=z*z+c+0.125/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 96msg.frm
}


Carr2670 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
     -cos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(sinh(tanh(0.63-cos(newpixel*3)))/(cosxx(6*newpixel+0.6)))-0.1
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
  z=z*z+c+0.125/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2671 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
     -cos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(sinh(tanh(0.63-cos(newpixel*3))\
     -exp(0.01/newpixel))/(cosxx(6*newpixel+0.6)))-0.1
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
  z=z*z+c+0.125/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2672 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))+0.3
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
     -cos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(sinh(tanh(0.63-cos(newpixel*3))\
     -cotan(exp(0.05/newpixel)))/(cosxx(6*newpixel+0.6)))-0.1
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+flip(flip(0.009/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
  z=z*z+c+0.125/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2673 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
     -cos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  m1=1/newpixel, m=conj(m1), m2=0.125*newpixel+cabs(newpixel^4.9)
  z=m2-tanh(newpixel/3)^2-conj(sinh(newpixel^2.3))+sqr(m/(1.5*m1))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+flip(flip(0.009/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0038995
  z=z*z+c+0.125/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2674 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
     -cos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  m1=1/newpixel, m=conj(m1), m2=sqr(sqr(0.125*newpixel+cabs(newpixel^4.9)))
  z=m2-tanh(newpixel/3)^2-conj(tan(newpixel^4.3))+sqr(m/(1.5*m1))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+flip(flip(0.009/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0028995
  z=z*z+c+0.125/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2675 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
     -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  m=tan(newpixel)-tanh(newpixel)
  z=2*m+flip(newpixel/2)+0.1
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+conj(conj(0.009/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0028995
  z=z*z+c+0.125/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2676 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
     -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  m=tan(newpixel)-tanh(newpixel)
  z=15*m+flip(newpixel/2)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+conj(conj(0.009/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0028995
  z=z*z+c+0.125/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2677 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
     -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=(cosh(newpixel^4)-cos(newpixel^2))+conj(0.1/newpixel)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.25
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0034995
  z=z*z+c+0.2/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2678 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=flip(conj(abs((newpixel/3))))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.25
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0035995
  z=z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2679 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=flip(conj(abs((newpixel/3))))-conj(0.1/newpixel)+0.075
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.25
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0035995
  z=z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2680 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  z=newpixel/c*c-(conj(0.1/newpixel))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.25
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0035995
  z=z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2681 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=flip(flip(newpixel/2^1.75))-conj(conj(0.1/newpixel))^4
  b3=cosh(conj(conj(newpixel^30.5)))
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-b3-0.4)-0.8))))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.25
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0035995
  z=z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2682 {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=flip(flip(pixel/2^1.75))-conj(conj(0.1/pixel))^4
  b3=cosh(conj(conj(pixel^30.5)))
  c=(conj(conj(0.15/log(exp(conj(conj(pixel^450))-b3-0.4)-0.8))))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.25
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0035995
  z=(pixel-(z*z+c)/(pixel-(0.4/c)))-0.35
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2683 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=cos(newpixel)-exp(0.09/newpixel)-|conj(0.1/newpixel)|-flip(0.1/newpixel)-0.3
  b3=cos(conj(conj(newpixel^30.5)))
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-b3-0.4)-0.8))))
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0033995
  z=z*z+c+0.08/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2684 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=newpixel/2-conj(asin(newpixel+newpixel+0.32))
  b3=cos(conj(conj(newpixel^30.5)))
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-b3-0.4)-0.8))))+z
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0029995
  z=z*z+c+0.08/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2685 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=newpixel/2-1/cos(asin(3*newpixel+0.52))+flip(0.1/newpixel)
  b3=cos(conj(conj(newpixel^30.5)))
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-b3-0.4)-0.8))))+z
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0020095
  z=(|z|/5)+z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2686 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=newpixel/2-|1/cos(asin(3*newpixel+0.52))|+flip(0.1/newpixel)
  b3=cos(conj(conj(newpixel^30.5)))
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-b3-0.4)-0.8))))+z
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0020095
  z=(|z|/5)+z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2687 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=|newpixel/2|-1/cos(asin(3*newpixel+0.52))+flip(0.1/newpixel)
  b3=cos(conj(conj(newpixel^30.5)))
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-b3-0.4)-0.8))))+z
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0029095
  z=(|z|/5)+z*z+c-0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2688 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=newpixel/2-1/cos(asin(3*newpixel+0.52))+flip(0.1/newpixel)
  b3=|cos(conj(conj(newpixel^30.5)))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-b3-0.4)-0.8))))+z
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0029095
  z=(|z|/5)+z*z+c-0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2689 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  m3=cabs(newpixel+0.5)*conj(conj(newpixel^7))
  z=(m3-conj(0.10/newpixel)-sqr(flip(0.00510/newpixel)))
  b3=|cos(conj(conj(newpixel^30.5)))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-b3-0.4)-0.8))))+conj(z)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0029095
  z=z*z+c+0.125/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2690 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=(flip(flip(newpixel))^6-1/(atan(1/newpixel)-cabs(acos(2/newpixel)))^6)-0.3
  b3=|cos(conj(conj(newpixel^30.5)))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-b3-0.4)-0.8))))\
     +conj(conj(z))-0.3
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0029095
  z=z*z+c-0.185/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2691 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=(flip(abs(newpixel))^4/(flip(asinh(newpixel))))-0.2
  b3=|cos(conj(conj(newpixel^30.5)))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-b3-0.4)-0.8))))\
     +|flip(flip(2*z^4))|
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0029095
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2692 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -|cos(conj(conj(newpixel^30.5)))|-0.4)-0.8)))
  z=(sinh(tanh(0.63-cos(newpixel)))/(cosxx(6*newpixel+0.6)))-0.1
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-flip(flip(0.013/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030995
  z=z*z+c+0.125/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2693 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=((flip(abs(newpixel))^8/(flip(asinh(newpixel)))))-flip(0.1/newpixel)-0.2
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*z^4))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-b3-0.4)-0.8))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0047095
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42ocarr.frm
}


Carr2694 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  m3=conj(0.10/newpixel)
  z=newpixel/2-flip(m3)^4
  b3=|cos(conj(conj(newpixel^30.5)))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-b3-0.4)-0.8))))\
                                             +|flip(flip(2*z^4))|
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0048095
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 96msg.frm
}


Carr2695 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  m3=conj(0.10/newpixel)
  z=tanh(newpixel/2)-2*conj(m3)^3-conj(0.1/newpixel)-flip(0.1/newpixel)
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*z^10))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -conj(b3)-0.4)-0.8))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0048095
  z=z*z+c-0.15    ; +0.1/pixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2696 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=(newpixel/(cabs(0.3/newpixel)))-flip(0.010/newpixel)
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*z^10))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
    -conj(b3)-0.4)-0.8))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0048095
  z=z*z+c+0.12/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2697 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=newpixel
  b3=|1/acos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*z^10))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-conj(b3)-0.4)-0.8))))+b4
  d1=(0.00099475/-newpixel)+(flip(0.00010/newpixel))
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=(z*(1-test))+flip(imag(0.03750/newpixel)) 
  c=c*(1-test)+d1+test*(p2*c+p3)
  z=z^2+c+0.08/newpixel
  iter=iter+1
  |z|<=16
  ;SOURCE: 42pcarr.frm
}


Carr2698 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=newpixel-1/log(newpixel-1/log(tan(1/newpixel))-1/log(2/newpixel))
  b3=|1/acos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*z^10))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-conj(b3)-0.4)-0.8))))+b4
  d1=(0.00099475/-newpixel)+(flip(0.00010/newpixel))
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=(z*(1-test))+flip(imag(0.03750/newpixel)) 
  c=c*(1-test)+d1+test*(p2*c+p3)
  z=z^2+c+0.1
  iter=iter+1
  |z|<=16
  ;SOURCE: 42pcarr.frm
}


Carr2699 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=conj(flip(newpixel/3))-|sinh(newpixel)^3|
  b3=(|1/acos(conj(conj(newpixel^30.5)))|), b4=|flip(flip(2*z^10))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-(b3)-0.4)-0.8))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0048095
  z=z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2700 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=conj(flip(newpixel/3))-|conj(newpixel)^3|
  b3=(|1/acos(conj(conj(newpixel^30.5)))|), b4=|flip(flip(2*z^10))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-(b3)-0.4)-0.8))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0048095
  z=z*z+c+0.17/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2701 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=flip(imag(newpixel/2.5))-conj(0.1/newpixel)-0.2
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*z^4))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-b3-0.4)-0.8))))+b4*b3
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.30-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0048095
  z=z*z+c+0.28/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2702 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=flip(conj(newpixel/2.5))+0.01/exp(flip(imag(0.1/newpixel)))-0.2
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*z^4))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^450))-b3-0.4)-0.8))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.03/newpixel+0.2
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0038095
  z=z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2703 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=abs(flip(newpixel/2.5))+0.01/exp(flip(imag(0.1/newpixel)))-0.2
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*z^4))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.03/newpixel+0.2
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0068095
  z=z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2704 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=(flip(flip(newpixel))^6-1/(atan(1/newpixel)-cabs(acos(2/newpixel)))^6)-0.09
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*z^4))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.03/newpixel+0.1
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0068095
  z=z*z+c+0.16/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2705 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=(conj(flip(newpixel))^6-1/(acos(1/newpixel)-abs(atan(2/newpixel)))^6)-0.1
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*z^4))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.03/newpixel+0.1
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0052095
  z=z*z+c+0.16/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2706 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  z=(conj(flip(newpixel))^2-1/(acos(1/newpixel)-abs(atan(2/newpixel)))^10)-0.1
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*z^4))|
  c=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.03/newpixel+0.1
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0052095
  z=z*z+c+0.16/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2707 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=(conj(flip(newpixel))^2-0.5/(acos(1/newpixel)-abs(atan(0.2/newpixel)))^10)-0.1
  z=b5
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*c^4))|
  b5=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030095
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2708 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=cotanh(0.3-newpixel)*newpixel/2-(1/log(conj(0.10/newpixel+0.25)))^12.5
  z=b5
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*c^4))|
  b5=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0030095
  z=z*z+c-0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2709 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(conj(flip(abs(newpixel/2)))/(flip(cabs(newpixel))))+0.1
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*c^4))|
  z=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002095
  z=z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 96msg.frm
}


Carr2710 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=newpixel/(cabs(0.3/newpixel))
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*c^4))|
  z=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002095
  z=z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2711 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(newpixel^2)-1/log(newpixel-conj(0.10/newpixel)/flip(0.010/newpixel))+0.3
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*c^4))|
  z=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.03/newpixel
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002095
  z=z*z+c+0.18/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2712 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(|newpixel^2|)-1/log(newpixel-conj(0.10/newpixel)/flip(0.010/newpixel))+0.3
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*c^4))|
  z=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.02/newpixel-0.2
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0001095
  z=z*z+c+0.18/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2713 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(newpixel^2)-cos(|newpixel|)\
     -1/log(newpixel-conj(0.10/newpixel)/flip(0.010/newpixel))+0.7
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*c^4))|
  z=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.02/newpixel-0.2
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0001095
  z=z*z+c+0.18/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2714 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(newpixel^2)-cos(cos(|newpixel|))\
    -0.25/sqrt(newpixel*2-conj(0.10/newpixel)/flip(0.010/newpixel))+0.7
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*c^4))|
  z=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.02/newpixel-0.2
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0001095
  z=z*z+c+0.18/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2715 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  b6=conj(newpixel^2)-cos(1/acos(|newpixel|))
  c=b6-0.25/sqrt(newpixel*2-tanh(0.10/newpixel)/(conj(conj(1/newpixel))))+0.7
  b3=|cos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*c^4))|
  z=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.02/newpixel-0.2
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0001095
  z=z*z+c+0.18/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2716 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(conj(newpixel))-(flip(0.25+newpixel))
  b3=|1/acos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*c^4))|
  z=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.02/newpixel-0.2
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0000995
  z=z*z+c+0.11/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2717 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=(newpixel-(conj(0.050/newpixel)+flip(conj(0.0010/newpixel)))^4)\
     +0.1+flip(0.1/newpixel)
  b3=|1/acos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*c^4))|
  z=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.02/newpixel-0.2
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0020995
  z=z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2718 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=(flip(imag(newpixel))-(conj(0.050/newpixel)\
    +flip(conj(0.0010/newpixel)))^4)+0.1+flip(0.1/newpixel)
  b3=|1/acos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*c^4))|
  z=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.02/newpixel-0.2
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0020995
  z=z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2719 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=(5*flip(imag(newpixel))/(2*(sqrt(flip(tanh(newpixel)))))^5+0.25)/\
     |(conj(4/newpixel))|
  b3=|1/acos(conj(conj(newpixel^30.5)))|, b4=|flip(flip(2*c^4))|
  z=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-1.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.02/newpixel-0.2
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0020995
  z=z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2720 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=(((log(flip(tanh(|newpixel/2|))))))/(cosxx(4/newpixel))-0.4
  b3=|1/acos(flip(conj(newpixel^30.5)))|, b4=|flip(flip(2*c^4))|
  z=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3-0.4)-0.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.02/newpixel-0.2
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0020995
  z=z*z+c+0.15/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2721 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=atan(newpixel)*2+conj(newpixel/3)
  b3=|1/acos(flip(conj(newpixel^30.5)))|, b4=|flip(flip(2*c^4))|
  z=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3/0.4)-0.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.02/newpixel-0.2
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0020995
  z=z*z+c+0.19/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2722 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=conj(newpixel)*sqr(newpixel)-sqr(flip(0.00510/newpixel))
  b3=|1/acos(flip(conj(newpixel^30.5)))|, b4=|flip(flip(|2*c^9|))|
  z=(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3/0.4)-0.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.02/newpixel-0.2
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0020995
  z=z*z+c+0.14/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2723 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=cosxx(newpixel/2)*cabs(abs(newpixel^2))-sqr(flip(|0.00510/newpixel|))
  b3=|1/acos(flip(conj(newpixel^30.5)))|, b4=|flip(flip(|2*c^9|))|
  z=flip(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3/0.4)-0.5))))+b4
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.02/newpixel-0.2
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0020995
  z=z*z+c+0.14/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2724 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=cosxx(|newpixel/2|)*abs(cabs(newpixel^2))-sqr(flip(|0.00510/newpixel|))
  b3=|1/acos(flip(conj(newpixel^30.5)))|, b4=|flip(flip(|2*c^9|))|
  z=flip(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3/0.4)-0.5))))\
     +b4-conj(0.1/newpixel)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-0.02/newpixel-0.2
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0020995
  z=z*z+c+0.14/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2725 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  b5=cosxx(|newpixel/2|)*abs(cabs(newpixel^2))+(flip(|0.025/newpixel|))^4+0.3
  b3=|1/acos(flip(conj(newpixel^30.5)))|, b4=|flip(flip(|2*b5^9|))|
  z=flip(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3/0.4)-0.5))))\
    +b4-flip(0.1/newpixel)
  c=whitesq*b5-(whitesq==0)*b5
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.02/newpixel-0.25
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0009995
  z=z*z+c+0.07/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2726 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=atan(|newpixel/2|)*abs(cabs(newpixel^2))+(flip(|0.025/newpixel|))^4+0.3
  b3=|1/acos(flip(conj(newpixel^30.5)))|, b4=|flip(flip(|2*c^9|))|
  z=flip(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3/0.4)-0.5))))\
    +b4-flip(0.1/newpixel)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.02/newpixel-0.25
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0009995
  z=z*z+c+0.07/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2727 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=tanh(|newpixel*2|)*abs(abs(|newpixel/2|))\
     -(exp(|0.0035/newpixel|))-flip(0.1/newpixel)+0.3
  b3=|1/acos(flip(conj(newpixel^30.5)))|, b4=|flip(flip(|2*c^9|))|
  z=flip(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3/0.4)-0.5))))\
    +b4-flip(0.25/newpixel)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.02/newpixel-0.25
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0009995
  z=z*z+c+0.07/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2728 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=(-abs(real(pixel))+flip(imag(pixel)))
  c=|newpixel^8|-0.296-flip(0.1/newpixel)
  b3=|1/acos(flip(conj(newpixel^30.5)))|
  b4=conj(conj(|flip(flip(|2*c^9|))|))
  z=flip(conj(conj(0.15/log(exp(conj(conj(newpixel^750))-b3/0.4)-0.5))))\
     +b4-flip(0.25/newpixel)
  c1=1.75*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t+0.02/newpixel-0.25
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0009995
  z=z*z+c+0.07/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42pcarr.frm
}


Carr2729 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel/2+1/log(newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=newpixel-1/log(newpixel-1/log(tan(1/newpixel))-1/log(2/newpixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42pcarr.frm
}


Carr2730 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
   ; passes 1 needs to be used with this formula. A PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=cabs(newpixel*2)-1/log(conj(0.5/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  b5=newpixel-1/log(newpixel-1/log(tan(1/newpixel))-1/log(2/newpixel))
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42qcarr.frm
}


Carr2731 (YAXIS) {; Robert Carr [73753,2420], 1996  Requires passes=1
                  ; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=|newpixel^8|+0.296-flip(0.1/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  b5=abs(flip(conj(newpixel/2)))+flip(0.01/newpixel)
   ; b5=newpixel-1/log(newpixel-1/log(tan(1/newpixel))-1/log(2/newpixel))
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: phc.frm
}


Carr2732 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes 1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  b5=abs(flip(conj(newpixel/2)))+flip(0.01/newpixel)
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42qcarr.frm
}


Carr2733 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes 1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel+1/log(cos(0.1/newpixel-0.025))*(tan(0.1/newpixel-0.025))
  b5=b4-0.0625
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42qcarr.frm
}


Carr2734 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes 1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel+1/log(cos(0.1/newpixel-0.025))*(tan(0.1/newpixel-0.025))
  b5=newpixel+1/log(cosxx(0.1/newpixel-0.025))*(tan(0.1/newpixel-0.025))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42qcarr.frm
}


Carr2735 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
   ; passes 1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=flip(newpixel)+0.25/log(cos(1/newpixel))*(tan(0.1/newpixel))
  b5=cabs(newpixel)+0.15/log(cosxx(1/newpixel))*(tan(0.1/newpixel))
  c=whitesq*b4-(whitesq==0)*b4-0.3
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 96msg.frm
}


Carr2736 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes 1 needs to be used with this PHC formula.
  b4=pixel-conj(0.1/pixel-sin(0.01/pixel))
  b5=conj(pixel/2)-sqrt(cos(0.1/pixel))*(tan(0.1/pixel))
  c=whitesq*b4-(whitesq==0)*(b4)
  z=whitesq*b5-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42qcarr.frm
}


Carr2737 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes 1 needs to be used with this PHC formula.
  b4=tanh(pixel)-(((0.3,0.6)+pixel)/(0.20/-pixel))
  b5=b4+0.0625
  c=whitesq*b4-(whitesq==0)*(b4)
  z=whitesq*b5-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42qcarr.frm
}


Carr2738 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes 1 needs to be used with this PHC formula.
  b4=conj(conj(pixel/2))/(0.20/pixel)
  b5=conj(conj(b4/2))
  c=whitesq*b4-(whitesq==0)*(b4)
  z=whitesq*b5-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.00495
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42qcarr.frm
}


Carr2739 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(pixel/3*cos(pixel-flip(0.010/pixel)-conj(0.10/pixel)))
  b5=(pixel*(pixel-flip(0.010/pixel)-conj(0.10/pixel)))+(0.0001/pixel)
  c=whitesq*flip(b4)-(whitesq==0)*conj(b4)
  z=whitesq*conj(b5)-(whitesq==0)*flip(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c+(-0.7456,0.132)
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42qcarr.frm
}


Carr2740 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  d=log(1/pixel-conj(1/pixel))
  b4=(pixel/3*cos(pixel-flip(0.010/pixel)-conj(0.10/pixel)))/d
  b5=(pixel*(pixel-flip(0.010/pixel)-conj(0.10/pixel)))+(0.0001/pixel)
  c=whitesq*flip(b4)-(whitesq==0)*conj(b4)
  z=whitesq*conj(b5)-(whitesq==0)*flip(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c+(-0.7456,0.132)
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42qcarr.frm
}


Carr2741 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  d=log(1/pixel-conj(1/pixel))
  b4=(pixel/3*cos(pixel-flip(0.010/pixel)-conj(0.10/pixel)))
  b5=((pixel*(pixel-flip(0.010/pixel)\
      -conj(0.10/pixel)))+(0.0001/pixel))/d
  c=whitesq*((b4))-(whitesq==0)*conj(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5^5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c+(-0.7456,0.132)
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}


Carr2742 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  d=sqrt(1/pixel-conj(0.1/pixel))
  b4=(pixel/3*cos(pixel-flip(0.010/pixel)-conj(0.10/pixel)))/d
  b5=((pixel*(pixel-flip(0.010/pixel)\
      -conj(0.10/pixel)))+(0.0001/pixel))/d*10
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c+(-0.7456,0.132)
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}


Carr2743 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=flip(imag(newpixel))-conj(0.1/newpixel)
  b5=newpixel
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}


Carr2744 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=flip(imag(newpixel))*log(0.1/newpixel-conj(0.1/newpixel))+0.3
  b5=newpixel
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}


Carr2745 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=newpixel-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=newpixel
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}


Carr2746 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=newpixel-(sqrt(conj(0.1/newpixel-flip(0.02/newpixel))))^100
  b5=newpixel
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}


Carr2747 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=conj(conj(0.15/log(exp(conj(conj(newpixel^150))\
     -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  b5=newpixel
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}


Carr2748 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=newpixel
  b4=0.3*(newpixel)/cotanh(1/cotanh(newpixel/2))\
      -0.5/log(newpixel-0.7/sqrt(0.50/newpixel))^2.5-conj(0.05/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}


Carr2749 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=((flip(imag(newpixel))-flip(0.01/newpixel-conj(0.1/newpixel))))
  b4=(newpixel*(abs(1.15*newpixel-flip(0.10/newpixel)-conj(0.010/newpixel))))+0.3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}


Carr2750 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=((flip(imag(newpixel))-flip(0.01/newpixel-conj(0.1/newpixel))))
  b4=(newpixel*(abs(1.15*newpixel-flip(0.10/newpixel)-conj(0.010/newpixel))))+0.3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}


Carr2751 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(conj(conj(newpixel^4))/(conj(newpixel^1.5)))+0.2
  b4=0.8*newpixel-1/log(newpixel-conj(conj(0.10/newpixel))\
      +flip(flip(imag(0.0010/newpixel))))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}


Carr2752 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=(conj(conj(newpixel^4))/(conj(newpixel^1.5)))+0.3
  b4=0.8*newpixel-1/log(newpixel-conj(conj(0.10/newpixel))\
        +flip(flip(imag(0.0010/newpixel))))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}


Carr2753 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=(flip(flip(newpixel^4))/(conj(newpixel^1.5)))+0.3
  b4=abs(newpixel)-1/log(newpixel-conj(conj(0.10/newpixel))\
      +flip(flip(imag(0.0010/newpixel))))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}


Carr2754 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(flip(flip(newpixel^4))/(conj(newpixel^1.5)))+0.3
  b4=abs(newpixel)-1/log(newpixel-conj(conj(0.10/newpixel))\
     +flip(flip(imag(0.0010/newpixel))))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c-0.21/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}


Carr2755 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(cos(cos(newpixel^4))/(cotanh(newpixel^1.5)))
  b5=newpixel-(flip(flip(newpixel^4))/(conj(newpixel^1.5)))/2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c-0.11/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}


Carr2756 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=0.5*newpixel-1/log(newpixel-conj(conj(0.10/newpixel))\
      +flip(flip(imag(0.0010/newpixel))))
  b5=(b4+0.0525)-conj(0.10/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}


Carr2757 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=(cos(newpixel^4))-cosh(newpixel)
  b5=conj(b4/2)-conj(0.1/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}


Carr2758 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(cos(newpixel^4))-cosh(newpixel)
  b5=conj(b4/2)-conj(0.1/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}


Carr2759 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(cosxx(newpixel^5))-cos(newpixel*0.75)-conj(0.1/newpixel)
  b5=conj(b4/2)-flip(0.1/newpixel)-0.1
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel^12/real(p2)/(1/newpixel):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c+0.25/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}


Carr2760 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=b5=newpixel/(tanh(0.3/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}


Carr2761 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=newpixel/(tanh(0.3/newpixel))
  b5=conj(newpixel)/(tanh(0.3/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}


Carr2762 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=(conj(flip(flip(newpixel)))-asin(flip(newpixel)))
  b5=newpixel
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}


Carr2763 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=(newpixel*(abs(1.15*newpixel-flip(0.0010/newpixel)-conj(0.30/newpixel))))-0.1
  b4=newpixel-(1/log(newpixel-1/cos(0.010/newpixel))^5)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 96msg.frm
}


Carr2763_hm {; Modified Sylvie Gallet frm. [101324,3444],1996
   ; passes=1 needs to be used with this PHC formula.
   ; modified Carr2763 using "FracText" (alpha-3) 
   ; by Jan Maarten van der Valk
   ; places the text "BOB CARR 1996" in bottom right corner
   ; Added variable "newpixel". G.Martin 6/15/99
x=real(scrnpix)/real(scrnmax), y=(imag(scrnmax)-imag(scrnpix))/imag(scrnma\
   x), z=x+flip(y)
chrB1 = y<0.01195||(y<0.01848&&y>0.01652)||y>0.02305||x<0.80195&&(x>0.8&&x\
<0.80495)||(abs(cabs(z+(-0.80495,-0.01424))-0.00326)<0.00097&&x>0.80495)||\
  (abs(cabs(z+(-0.80495,-0.02076))-0.00326)<0.00097&&x>0.80495)
chrO2 = abs(cabs(z+(-0.81744,-0.0175))-0.00652)<0.00097&&x<0.82494
chrB3 = y<0.01195||(y<0.01848&&y>0.01652)||y>0.02305||x<0.82764&&(x>0.8256\
9&&x<0.83064)||(abs(cabs(z+(-0.83064,-0.01424))-0.00326)<0.00097&&x>0.8306\
4)||(abs(cabs(z+(-0.83064,-0.02076))-0.00326)<0.00097&&x>0.83064)
xc=1*x
chrC5 = abs(cabs(z+(-0.85062,-0.0175))-0.00652)<0.00097&&(x<0.85062||y>xc-\
0.83313||y<-xc+0.86812)
xa=3*x
chrA6 = y>xa-2.5662||y>-xa+2.61004||(y<0.016&&y>0.01405)&&y<xa-2.56004&&y<\
-xa+2.6162
xr=2*x
chrR7 = y<0.01848&&y>0.01652||y>0.02305||x<0.87143&&x>0.86948&&x<0.87443||\
(abs(cabs(z+(-0.87443,-0.02076))-0.00326)<0.00097&&x>0.87443)||(y<0.0175&&\
y<-xr+1.76734&&y>-xr+1.76298)
chrR8 = y<0.01848&&y>0.01652||y>0.02305||x<0.88137&&x>0.87942&&x<0.88437||\
(abs(cabs(z+(-0.88437,-0.02076))-0.00326)<0.00097&&x>0.88437)||(y<0.0175&&\
y<-xr+1.78722&&y>-xr+1.78286)
x1=1.5*x
chr110 = y<x1-1.32529&&y>x1-1.3288&&y>-x/1.5+0.61791||(x>0.90059&&x<0.9025\
4)
chr911 = abs(cabs(z+(-0.90752,-0.01424))-0.00326)<0.00097&&y<0.01424||abs(\
cabs(z+(-0.90752,-0.02076))-0.00326)<0.00097||(x>0.90981&&x<0.91176&&y>0.0\
1424&&y<0.02076)
chr912 = abs(cabs(z+(-0.91675,-0.01424))-0.00326)<0.00097&&y<0.01424||abs(\
cabs(z+(-0.91675,-0.02076))-0.00326)<0.00097||(x>0.91904&&x<0.92099&&y>0.0\
1424&&y<0.02076)
chr613 = abs(cabs(z+(-0.92597,-0.02076))-0.00326)<0.00097&&y>0.02076||abs(\
cabs(z+(-0.92597,-0.01424))-0.00326)<0.00097||(x>0.92174&&x<0.92369&&y>0.0\
1424&&y<0.02076)
test = chrB1||chrO2||chrB3||chrC5||chrA6||chrR7||chrR8||chr110||chr911||ch\
r912||chr613&&y>0.01&&y<0.025
newpixel=real(pixel)-flip(abs(imag(pixel)))
b5=(newpixel*(abs(1.15*newpixel-flip(0.0010/newpixel)-conj(0.30/newpixel))))-0.1
b4=newpixel-(1/log(newpixel-1/cos(0.010/newpixel))^5)
c=whitesq*b4-(whitesq==0)*b4
z=whitesq*b5-(whitesq==0)*b5
c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
bailout=16, iter=0, pp2=newpixel/imag(p2):
t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c
iter=iter+1
|real(z)|<=bailout&&test==0
  ;SOURCE: 96msg.frm
}


Carr2764 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=(1-newpixel*(cabs(1.65*newpixel-flip(|0.010/newpixel|)\
      -conj(0.10/newpixel))))-0.1
  b5=newpixel-(1/log(newpixel-0.25/cos(conj(sinh(0.1/newpixel))))^5)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42qcarr.frm
}


Carr2765 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=b5=1/(newpixel-conj(1/newpixel)-flip(1/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2766 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=newpixel^5-conj(newpixel/5)
  b5=b4/2-0.099/newpixel
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c+0.1/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2767 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=newpixel^7-conj(newpixel/5)
  b5=b4/2.5-flip(0.099/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c-0.05/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2768 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=1/(0.75*newpixel-(|newpixel|+cos(sqr(|newpixel|*1/(newpixel-0.124)))))+0.5
  b4=1/(conj(conj(newpixel))\
      -(|0.67*newpixel|+cos(sqr(|newpixel|*1/(newpixel-0.124)))))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2769 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=cotan(|1-newpixel|)^1.5*newpixel^8-(1/log(conj(0.10/newpixel+1.25)))^15.5
  b5=(newpixel^2.63)/log(1.667-newpixel)^2.87\
      -(1/log(conj(0.10/newpixel+1.25)))^2.95
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c-0.02/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2770 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=cotan(|1-newpixel|)^1.5*newpixel^8-(1/log(conj(0.10/newpixel+1.25)))^30
  b5=(newpixel^2.63)/log(1.667-newpixel)^2.87\
      -(1/log(conj(0.10/newpixel+1.25)))^5
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c-0.02/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2771 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Modified for IF..ELSE logic by Sylvie Gallet, 05/15/97
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = real(pixel) - flip(abs(imag(pixel)))
  pp2 = newpixel/imag(p2), a = 0.02/newpixel
  IF (whitesq)
    c = cotan(|1-newpixel|)^1.5*newpixel^8                \
        -(0.5/log(5*a + 1.0))^30 - a
    z = z0 = (newpixel^2.63)/log(1.667 - newpixel)^2.87   \
             -(1/log(conj(3.5*a + 1.25)))^7.5
  ELSE
    c = -cotan(|1-newpixel|)^1.5*newpixel^8               \
        +(0.5/log(5*a + 1.0))^30 - a
    z = z0 = -(newpixel^2.63)/log(1.667 - newpixel)^2.87  \
             +(1/log(conj(3.5*a + 1.25)))^7.5
  ENDIF
  bailout = 4, iter = 0
  :
  IF (iter==p1)
    z = 0, c = z0 - a
  ELSEIF (iter==imag(p1))
    z = 0, c = z0 * 2.25 - a
  ELSEIF (iter==p2)
    z = 0, c = z0 * 3.375 - a
  ELSEIF (iter==imag(p2))
    z = 0, c = z0 * 5.0625 - a
  ENDIF
  iter = iter + 1
  c = c + pp2, z = sqr(z) + c
  abs(z) <= bailout
  ;SOURCE: phctopng.frm
}


Carr2772 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=(flip(abs(1-newpixel)))^1.66
  b5=(1-newpixel)^1.8
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1*z, c2=2.25*z, c3=3.375*z, c4=7.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c+0.02/newpixel
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2773 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=flip(conj(newpixel))^30-flip(0.1/newpixel)
  b5=flip(flip(newpixel))^10-conj(0.1/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1*z, c2=2.25*z, c3=3.375*z, c4=7.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2774 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=b5=(conj(newpixel/1.75)*flip(newpixel/1.5)\
         -conj(conj(0.025/newpixel)))/newpixel^6+0.3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2775 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=b5=conj(conj(newpixel/1.75)*flip(newpixel/1.5)\
        -flip(flip(0.025/newpixel)))/newpixel^10+0.3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c-0.05
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2776 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=conj(conj(newpixel/1.75)*flip(newpixel/2)\
      -flip(flip(0.025/newpixel)))/newpixel^10+0.3
  b5=conj(sinh(conj(newpixel/10)\
      -conj(tanh(0.025/newpixel/5)))/(newpixel/3)^10)^(0.7456,-0.132)+0.3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c-0.05
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2777 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=|newpixel^5|+0.096+flip(0.1/newpixel)+conj(0.01/newpixel)
  b5=abs(flip(conj(newpixel)))+flip(0.01/newpixel)+conj(0.1/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2778 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=newpixel
  b4=(-0.7456,0.25)*(0.3,0.6)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2779 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=abs(flip(conj(newpixel)))+flip(0.01/newpixel)+conj(0.1/newpixel)-0.4
  b4=(-0.7456,0.25)*(0.3,0.6)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2780 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=newpixel^5+0.096+flip(0.1/newpixel)+conj(0.01/newpixel)-0.3
  b4=((-0.7056,0.25)*(0.3,0.6))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2781 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=newpixel^5+0.096+flip(0.1/newpixel)+conj(0.01/newpixel)
  b4=((-0.7296,0.25)*(0.3,0.6))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2782 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=flip(conj(conj(newpixel^3)))\
      +0.096+flip(0.01/newpixel)^8+conj(0.1/newpixel)^6
  b4=((-0.7296,0.25)*(0.3,0.6))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2783 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=flip(flip(conj(2*newpixel^3-conj(0.01/newpixel))))\
     +0.096+flip(0.01/newpixel)^20+conj(0.1/newpixel)^16
  b4=((-0.7296,0.25)*(0.3,0.6))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2784 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=flip(flip(conj(5*newpixel^7-conj(0.01/newpixel))))\
     +0.096+flip(0.01/newpixel)^20+conj(0.1/newpixel)^16
  b4=((-0.7296,0.25)*(0.3,0.6))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2785 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=1/(1/(1/(3/conj(newpixel^6))))+newpixel^3+0.2-flip(0.01/newpixel)^12
  b4=((-0.7296,0.25)*(0.3,0.6))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2786 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=newpixel^3-conj(newpixel/4-(tan(0.1/newpixel))-flip(0.02/newpixel))
  b4=((-0.7296,0.25)*(0.3,0.6))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2787 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=flip(imag(newpixel^7)+0.2)\
      -conj((newpixel/2)^3-(tan(0.1/newpixel))-flip(0.02/newpixel))-0.3
  b4=((-0.7156,0.25)*(0.3,0.6))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2788 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=abs(newpixel^5)-1/log(conj(0.5/newpixel))-conj(0.1/newpixel)
  b4=((-0.7156,0.25)*(0.3,0.6))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2789 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=((cos(newpixel^5))-cosh(newpixel))-flip(0.01/newpixel)
  b4=((-0.8756,-0.132)*(0.3,0.6))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2790 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=((cosxx(newpixel^3))-cos(newpixel))-flip(0.01/newpixel)+conj(0.1/newpixel)
  b4=((-0.8756,-0.132)*(0.3,0.6))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2791 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=b4=(0.2+newpixel^3)-((-0.9056,-0.132)*(0.3,0.6))/2\
          -conj(0.1/newpixel)^3+flip(0.01/newpixel)^6
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2792 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=conj(conj(newpixel^5))+conj(conj(0.1/newpixel))^4-0.3
  b4=(-0.7456,-0.132)/3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2793 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=b5=conj(conj(newpixel^5))+flip(flip(0.1/newpixel))-0.3-conj(0.1/newpixel)^12
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^4-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.0095
  z=z^2+c-conj(0.1/newpixel)
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 96msg.frm
}


Carr2794 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
      -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  b5=newpixel
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/(imag(p2+5)):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0065
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2795 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=conj(conj(0.2/log(exp(conj(conj(newpixel^450))\
      -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  b5=newpixel^5-conj(0.01/newpixel)-0.4
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/(imag(p2+5)):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0065
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2796 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=conj(conj(0.2/log(exp(conj(conj(newpixel^450))\
      -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  b5=conj(conj(newpixel^3))+conj(conj(0.01/newpixel*3))-0.25
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/(imag(p2+5)):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.007
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2797 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=b4=0.3*(newpixel)/cos(1/cotanh(newpixel))\
         -0.5/log(newpixel-0.7/sqrt(0.50/newpixel))^2.5-conj(0.05/newpixel)+0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/(imag(p2+5)):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.002
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2798 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b4=conj(conj(0.15/log(exp(conj(conj(newpixel^450))\
        -1/acos(conj(conj(newpixel^30.5)))-0.4)-0.8)))
  b5=(2.75*newpixel^5)+conj(newpixel-flip(0.010/newpixel))+0.3+conj(0.1/newpixel)^10
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/(imag(p2+5)):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z^2+c
  iter=iter+1
  (|real(z)|)<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2799 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=0.8*pixel^5/(sqr(pixel))+0.4
  b5=(0.8*pixel^5/(sqr(pixel))+0.4)-flip(0.1/pixel)
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.00015
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2800 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(0.8*pixel^5/(sqr(0.33-pixel))+0.4)-conj(0.1/pixel)
  b5=(0.8*pixel^5/(pixel^2)+0.4)-flip(0.1/pixel)
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.00015
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2801 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b3=conj(conj(0.15/log(exp(conj(conj(pixel^450))\
     -1/acos(conj(conj(pixel^30.5)))-0.4)-0.8)))
  b4=b3-flip(0.1/pixel)
  b5=conj(conj(pixel/2.5))\
      -(conj(0.1/pixel)-flip(0.1/pixel)+0.055/pixel)+0.15
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+0.000015
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42rcarr.frm
}


Carr2802 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=b5=(0.5+pixel/2)^7-conj(0.1/pixel)-flip(0.1/pixel)+0.3
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4-pp2+0.00025
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42scarr.frm
}


Carr2803 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b3=(conj(conj(0.25+0.1/pixel)))
  b5=b4=(pixel^7-(tan(conj(0.25-0.1/pixel)))-b3)-0.4+exp(0.0025/pixel)
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4-pp2-0.00025
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42scarr.frm
}


Carr2804 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=pixel-conj(0.01/pixel)-flip(0.001/pixel)+0.4
  b5=pixel-conj(0.01/pixel)-flip(0.001/pixel)
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2+flip(0.005/pixel)
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42scarr.frm
}


Carr2806 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=2*pixel+1.75/log(cos(0.1/pixel+0.025))*(tan(0.1/pixel-0.025))
  b4=pixel-sqrt(pixel-0.3)
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c-0.087
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42scarr.frm
}


Carr2807 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=|pixel^5|-conj(conj(sqrt(pixel)+log(pixel)))/15-conj(0.1/pixel)
  b4=pixel-((tan(pixel)+sin(1/pixel)-1/pixel))/10
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c-0.087
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42scarr.frm
}


Carr2808 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=conj(conj(|pixel^5|))-conj(conj(sqrt(pixel)+log(pixel)))/\
     15-conj(0.1/pixel)
  b5=conj(conj(pixel^5))-conj(conj(sqrt(pixel)+log(pixel)))/\
     15-conj(0.1/pixel)
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c-0.087
  iter=iter+1
  |z|<=bailout 
  ;SOURCE: 96msg.frm
}


Carr2809 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=flip(flip(conj(conj(0.25+pixel^5))-conj(conj(sqrt(pixel)+\
     log(pixel)))/35-conj(0.15/pixel)))
  b5=conj(tan(tan(pixel^5))-conj(conj(sqrt(0.5*pixel/0.85)+\
     log(pixel/0.75)))/15-conj(0.1/pixel))
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=imag(p1), l2=real(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c-0.087
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42scarr.frm
}


Carr2809a {; Modified Sylvie Gallet frm. [101324,3444],1996
           ; passes=1 needs to be used with this PHC formula.
  b4=(sinh(pixel)^5/conj(pixel)^1.5)-conj(0.1/pixel)
  b5=pixel*sqr(pixel)-sqr(conj(conj(0.10/pixel)))-(flip(0.010/pixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*sqr(z^1.2), c2=2.25*flip(z)
  c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+0.00065
  z=z*z+c-0.17
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42scarr.frm
}


Carr2810 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=conj(conj(pixel)^7/conj(pixel)^1.5)-conj(0.1/pixel)
  b4=conj(conj(pixel)^5/conj(pixel)^1.5)-conj(0.1/pixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42scarr.frm
}


Carr2811 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b3=conj(0.05/pixel-flip(0.05/pixel))
  b4=conj(pixel-0.33)-b3
  b5=conj(pixel-0.33)*sqr(pixel)-(conj(0.10/pixel))\
      +sqr(flip(0.010/pixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42scarr.frm
}


Carr2812 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(-0.8206,-0.149)
  b5=flip(conj(1-pixel))*(pixel^5)-(conj(0.1/pixel))\
     +sqr(flip(0.1/pixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42scarr.frm
}


Carr2813 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=tan(pixel)-(((0.3,0.6)/2+pixel)/(0.20/pixel))
  b4=pixel+conj(0.001/pixel+flip(0.001/pixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42scarr.frm
}


Carr2814 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  r=(cabs(pixel/2))
  b5=(1.5*pixel^9)-r-cabs(0.08/pixel-flip(0.01/pixel))\
     +conj(0.0535/pixel)+0.09
  b4=(1.5*pixel^5)-r-cabs(0.08/pixel-flip(0.01/pixel))\
     +conj(0.0535/pixel)+0.1
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42scarr.frm
}


Carr2815 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  r=(cabs(pixel/2+(0.025/pixel)))
  b5=(1.5*pixel^3)-r^5-cabs(0.08/pixel-flip(0.01/pixel))\
      +conj(0.1/pixel)+0.3
  b4=(0.5*pixel^5)-r-cabs(0.08/pixel-flip(0.01/pixel))\
      +conj(0.1/pixel)+0.3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42scarr.frm
}


Carr2816 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=tanh(2*pixel)-(((0.3,-0.6)+pixel^4)-(conj(0.20/pixel)))
  b4=(-0.7456,-0.132)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42scarr.frm
}


Carr2817 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b1=1/(conj(pixel)-(cos(7/pixel)+sin(1/pixel)-conj(0.1/pixel)))+0.285
  b4=0.3*(pixel^5-conj(b1)+b1^conj(tan(0.7/pixel)))
  b5=0.3*(pixel^5-conj(b1)+b1^conj(tan(0.7/pixel)))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z|/5)+z*z+c-0.09/pixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42scarr.frm
}


Carr2818 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel-1/log(1/pixel/0.71)/(0.85/pixel+2.324)
  b4=pixel-1/log(pixel/2/b5-2.5^(pixel+2.324)/0.5/pixel)-0.4
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42scarr.frm
}


Carr2819 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b2=pixel-conj(0.1/pixel-flip(0.1/pixel))
  b3=conj(imag(pixel))/b2-((pixel+2.324)/(5/pixel))+0.5
  b4=conj(cabs(pixel))/b3-((pixel+2.324)/(5/pixel))-0.3
  b5=conj(cabs(pixel))/b3-((pixel+2.324)/(5/pixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
    ; z=(|z|/5)+z*z+c-0.09/pixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42scarr.frm
}


Carr2820 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b2=pixel-conj(0.1/pixel-flip(0.1/pixel))
  b3=conj(imag(pixel))/b2-((pixel+2.324)/(5/pixel))+0.5
  b4=conj(cabs(pixel^3))/b3\
     -((pixel+2.324)/(5/pixel))^3*cosxx(0.25-pixel)-0.3
  b5=conj(cabs(pixel/2)^5)/(0.25-b3)-((pixel+2.324)/(5/pixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42scarr.frm
}


carr2821 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; Converted to if.else by Sylvie Gallet and George Martin 3/97
          ; passes=1 needs to be used with this PHC formula.
   pixinv = 0.1/pixel
   p9 = 0.9*pixinv
   imagp1 = imag(p1)
   imagp2 = imag(p2)
   IF (whitesq)
      z = zorig = pixel - conj(pixinv)
      c = pixel - flip(pixinv) - conj(0.01*pixinv) - p9
      mz = |z|
   ELSE
      c = flip(pixinv) + conj(0.01*pixinv) - pixel - p9
      z = zorig = conj(pixinv) - pixel
      mz = |z|
   ENDIF
   bailout = 16
   iter = 0
   :
   IF (iter==p1)
      z = mz = 0
      c = 1.5*zorig^1.2 - p9
   ELSEIF (iter==imagp1)
      z = mz = 0
      c = 2.25*conj(zorig) - p9
   ELSEIF (iter==p2)
      z = mz = 0
      c = 3.375*flip(zorig) - p9
   ELSEIF (iter==imagp2)
      z = mz = 0
      c = 5.0625*flip(zorig) - p9
   ENDIF
   z = mz*0.2 + z*z + c
   mz = |z|
   iter = iter + 1
   mz <= bailout
  ;SOURCE: ifs196.frm
}


Carr2821a { ; Modified Sylvie Gallet frm. [101324,3444],1996
            ; Modified for IF..ELSE logic by Sylvie Gallet, March 1997
            ; Optimized by Sylvie Gallet, April 1997
            ; Changed variable e to ee, 5/04/99. G. Martin
  ee = -0.1/pixel, z = c = conj(ee) + pixel, r = |z|
  k = ee*0.9, p = k + flip(ee) + conj(0.01*ee) + pixel
  bailout = 16, im1 = imag(p1), im2 = imag(p2)
  iter = 0 :
  IF (iter == p1)
    p = (c^1.2)*1.5 + k, r = z = 0
  ELSEIF (iter == im1)
    p = conj(c)*2.25 + k, r = z = 0
  ELSEIF (iter == p2)
    p = flip(c)*3.375 + k, r = z = 0
  ELSEIF (iter == im2)
    p = flip(c)*5.0625 + k, r = z = 0
  ENDIF
  iter = iter + 1, z = real(r)*0.2 + sqr(z) + p, r = |z|
  r <= bailout
  ;SOURCE: phctopng.frm
}


Carr2821b {; Modified Sylvie Gallet frm. [101324,3444],1996
           ; Modified for IF..ELSE logic by Sylvie Gallet, March 1997
           ; Optimized by Sylvie Gallet, April 1997
           ; Changed variable e to ee, 5/04/99. G. Martin
  ee = 0.1/pixel, z = c = conj(ee) - pixel, r = |z|
  k = ee*(-0.9), p = k + flip(ee) + conj(0.01*ee) - pixel
  bailout = 16, im1 = imag(p1), im2 = imag(p2)
  iter = 0 :
  IF (iter == p1)
    p = (c^1.2)*1.5 + k, r = z = 0
  ELSEIF (iter == im1)
    p = conj(c)*2.25 + k, r = z = 0
  ELSEIF (iter == p2)
    p = flip(c)*3.375 + k, r = z = 0
  ELSEIF (iter == im2)
    p = flip(c)*5.0625 + k, r = z = 0
  ENDIF
  iter = iter + 1, z = real(r)*0.2 + sqr(z) + p, r = |z|
  r <= bailout
  ;SOURCE: phctopng.frm
}


Carr2822 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=pixel-conj(0.1/pixel)-flip(0.001/pixel)
  b5=pixel^5-flip(0.1/pixel)-conj(0.001/pixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z|/5)+z*z+c-0.09/pixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42scarr.frm
}


Carr2823 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(conj(conj(0.25-pixel^4))-conj(0.1/pixel)+sinh(0.001/pixel))
  b5=tan(tan(0.25+pixel^4))-tanh(0.1/pixel)-conj(0.001/pixel)-0.24
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z|/5)+z*z+c-0.09/pixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42scarr.frm
}


Carr2825 {; Modified Sylvie Gallet frm.
          ; passes=1 needs to be used with this PHC formula.
  z=flip(conj(cabs((pixel/2))))+0.4
  c=flip(conj(cabs((pixel^5))))-conj(0.1/pixel)
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=(z*(1-test)) 
  c=(c*(1-test)+test*(p2*c+p3))*(whitesq==0)+((z*(1-test))\
     +flip(imag(0.03750/pixel)))*whitesq
  z=(|z|/5)+z*z+c-0.09/pixel
  iter=iter+1
  |z|<=16
  ;SOURCE: 42scarr.frm
}


Carr2827 {; Modified Sylvie Gallet frm.
          ; passes=1 needs to be used with this PHC formula.
  c=(-0.7456,-0.132)/2 
  z=flip(conj(cabs((0.25+pixel))))-conj(0.1/pixel-flip(0.01/pixel))^5
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=(z*(1-test)) 
  c=(c*(1-test)+test*(p2*c+p3))*(whitesq==0)+((z*(1-test))\
    +flip(imag(0.03750/pixel)))*whitesq
  z=(|z|/5)+z*z+c-0.1/pixel
  iter=iter+1
  |z|<=16
  ;SOURCE: 42scarr.frm
}


Carr2828 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=newpixel^4-conj(0.1/newpixel-flip(0.001/newpixel))+0.01/newpixel-0.55
  c=conj(conj(z))+(z/3)-conj(0.1/newpixel)
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=(z*(1-test)) 
  c=(c*(1-test)+test*(p2*c+p3))*(whitesq==0)\
    +((z*(1-test))+flip(imag(0.03750/newpixel)))*whitesq
  z=(|z|/5)+z*z+c-0.1/newpixel
  iter=iter+1
  |z|<=16
  ;SOURCE: 42scarr.frm
}


Carr2829 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  m3=cabs(newpixel*2)*conj(conj(newpixel*2))
  z=(m3-conj(0.10/newpixel)-sqr(flip(0.00510/newpixel)))+0.25
  c=(-1.099,-0.459)/2.9
  iter=0, nextzoom=iterspace=real(p1)
  b8=0.09/newpixel:
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(test==0) 
  c=(c+(c*p2+p3-c)*test)*(whitesq==0)+(z+fip)*whitesq
  z=(|z|/5)+z*z+c-b8
  iter=iter+1
  |z|<=16
  ;SOURCE: 42scarr.frm
}


Carr2830 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(flip(abs(newpixel))^4/(flip(asinh(newpixel))))-0.2
  c=(-0.3009,-0.645)
  iter=0, nextzoom=iterspace=real(p1)
  b8=0.1/newpixel:
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(test==0) 
  c=(c+(c*p2+p3-c)*test)*(whitesq==0)+(z+fip)*whitesq
  z=(|z|/5)+z*z+c-b8
  iter=iter+1
  |z|<=16
  ;SOURCE: 42scarr.frm
}


Carr2831 {; Modified Sylvie Gallet frm.
          ; passes=1 needs to be used with this PHC formula.
  z=(flip(abs(pixel))^4/(flip(asinh(pixel))))-conj(0.1/pixel)
  c=(flip(abs(pixel))^4/(flip(asinh(pixel))))-0.175
  iter=0, nextzoom=iterspace=real(p1)
  b8=0.1/pixel:
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(test==0) 
  c=(c+(c*p2+p3-c)*test)*(whitesq==0)+(z+fip)*whitesq
  z=(|z|/5)+z*z+c-b8
  iter=iter+1
  |z|<=16
  ;SOURCE: 42scarr.frm
}


Carr2832 {; Modified Sylvie Gallet frm.
          ; passes=1 needs to be used with this PHC formula.
  z=(conj(conj(cabs(pixel)))^5/(flip(asinh(pixel))))-conj(0.1/pixel)
  c=conj(conj((|1/z|)^z*z+z))
  iter=0, nextzoom=iterspace=real(p1)
  b8=0.1/pixel:
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(test==0) 
  c=(c+(c*p2+p3-c)*test)*(whitesq==0)+(z+fip)*whitesq
  z=(|z|/5)+z*z+c-b8
  iter=iter+1
  |z|<=16
  ;SOURCE: 42scarr.frm
}


Carr2833 {; Modified Sylvie Gallet frm.
          ; passes=1 needs to be used with this PHC formula.
  c=|pixel^8|-flip(0.1/pixel)
  z=abs(flip(conj(pixel)))+flip(0.01/pixel)-conj(0.001/pixel)
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(test==0) 
  c=(c+(c*p2+p3-c)*test)*(whitesq==0)+(z+fip)*whitesq
  z=(|z|/5)+z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42scarr.frm
}


Carr2834 {; Modified Sylvie Gallet frm.
          ; passes=1 needs to be used with this PHC formula.
  c=conj(conj(|pixel^15|))-conj(0.1/pixel)
  z=abs(flip(conj(pixel^12)))-flip(0.01/pixel)+conj(0.001/pixel)
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(test==0) 
  c=(c+(c*p2+p3-c)*test)*(whitesq==0)+(z+fip)*whitesq
  z=(|z|/5)+z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42scarr.frm
}


Carr2835 {; Modified Sylvie Gallet frm.
          ; passes=1 needs to be used with this PHC formula.
  c=flip(flip(|pixel^15|))-conj(0.1/pixel)
  z=abs(flip(conj(pixel^12)))-flip(0.1/pixel)+conj(0.1/pixel)+0.3
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(test==0) 
  c=(c+(c*p2+p3-c)*test)*(whitesq==0)+(z+fip)*whitesq
  z=(|z|/5)+z*z+c
  iter=iter+1
  |z|<=16
  ;SOURCE: 42scarr.frm
}


Carr2836 {; Modified Sylvie Gallet frm.
          ; passes=1 needs to be used with this PHC formula.
  c=(-0.275,0.45)
  z=abs(flip(conj(2*pixel^12)))+flip(0.1/pixel)+conj(0.1/pixel)+0.35
  iter=0, nextzoom=iterspace=real(p1)
  b8=0.13/pixel:
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(test==0) 
  c=(c+(c*p2+p3-c)*test)*(whitesq==0)+(z+fip)*whitesq
  z=(|z|/5)+z*z+c-b8
  iter=iter+1
  |z|<=16
  ;SOURCE: 42scarr.frm
}


Carr2837 {; Modified Sylvie Gallet frm.
          ; passes=1 needs to be used with this PHC formula.
  z=pixel*(-1)^(pixel>0)
  c=(-0.28,0.42)
  iter=0, nextzoom=iterspace=real(p1)
  b8=0.13/pixel:
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=z*(test==0) 
  c=(c+(c*p2+p3-c)*test)*(whitesq==0)+(z+fip)*whitesq
  z=(|z|/5)+z*z+c-b8
  iter=iter+1
  |z|<=16
  ;SOURCE: 42scarr.frm
}


Carr2839 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(-0.7456,-0.132)
  b5=abs(flip(conj(2*pixel^12)))+flip(0.1/pixel)+conj(0.1/pixel)+0.35
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42scarr.frm
}


Carr2840 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(-0.7456,-0.132)
  b5=cabs(conj(conj(2*pixel^12)))-flip(0.1/pixel)-conj(0.1/pixel)+0.35
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2841 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(-0.7476,-0.132)
  b5=conj(conj(pixel))*(pixel^11)+tanh(0.1/pixel)\
     +sinh(0.1/pixel)+conj(0.1/pixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2842 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(0.37,-0.2991)
  b5=conj(conj(pixel))*(pixel^11)+tanh(0.1/pixel)\
     -sinh(0.1/pixel)-conj(0.13/pixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2843 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b3=conj(0.13/pixel)+flip(0.1/pixel)
  b4=(0.37,-0.2991)
  b5=flip(imag(pixel))*(pixel^11)+tanh(0.1/pixel)-sinh(0.1/pixel)-b3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2844 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.13/newpixel)+flip(0.1/newpixel)
  b4=(0.37,-0.2991)
  b5=flip(cosxx(0.25-newpixel^3))*conj(conj(newpixel^9))\
     +tanh(0.1/newpixel)-sinh(0.1/newpixel)-b3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2845 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b3=conj(0.13/pixel)+flip(0.1/pixel)
  b4=(0.37,-0.2991)
  b5=flip(cosxx(0.25-pixel^3))*cabs(flip(1.5*pixel^9))\
     -tanh(0.1/pixel)+sinh(0.1/pixel)-b3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2846 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b3=flip(abs(conj(0.075/pixel)+flip(0.075/pixel)))
  b4=(0.37,-0.2991)
  b5=flip(cosxx(0.25*pixel^3))*cabs(conj(0.5*pixel^9))\
     -tanh(0.1/pixel)+sinh(0.1/pixel)-b3+0.3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2847 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(0.37,-0.2991)
  b5=((pixel^2)-(conj(0.1/pixel-flip(0.01/pixel))\
     -exp(0.0025/pixel))/pi)-0.3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2848 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(0.37,-0.2901)/1.0025
  b5=pixel*pixel*(0.25-pixel)+0.1
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2849 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(0.37,-0.2901)/1.0025
  b5=(pixel*pixel*(0.25-pixel))^0.75+0.1\
     -conj(0.1/pixel)-flip(0.01/pixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2850 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=pixel^12-0.1/pixel
  b5=pixel^10-conj(0.1/pixel)^6
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  c=z+c/2.125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2851 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(0.37,-0.2901)-conj(0.01/pixel)
  b5=pixel^10-conj(0.1/pixel)^6-flip(0.1/pixel)+0.1/pixel
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  c=z+c/2.125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2852 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel^10-conj(0.1/pixel)-flip(0.1/pixel)^9+0.1/pixel
  b4=b5*b5/pixel
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  c=z+c/2.125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2853 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b2=pixel^10-conj(0.1/pixel)-flip(0.1/pixel)^9+0.1/pixel
  b5=b2*b2/pixel
  b3=pixel/((1.099,0)^(pixel))
  b4=b3-0.1/pixel
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  c=z+c/2.125
  iter=iter+3.75
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2854 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=1/(pixel*pixel*pixel)
  b4=conj(sqr(1/pixel*0.91/pixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2 , c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  c=z+c/2.125
  iter=iter+1.1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2855 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=b5=(0.5+pixel/2)^3-conj(0.1/pixel)-flip(0.1/pixel)+0.3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  c=((0.85+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2856 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(0.37,-0.2901)
  b5=(tan(pixel)*sin(sin(pixel)))-conj(0.1/pixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2857 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(0.37,-0.3101)
  b5=conj(conj(pixel/2)*sin(abs(pixel/3)))-conj(0.1/pixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2858 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(0.37,-0.3101)
  b5=conj(conj(pixel^1.874)*sin(conj(pixel^2)))\
     -conj(0.1/pixel-sqrt(0.1/pixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2859 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel-conj(0.1/pixel-flip(0.01/pixel))+0.3
  b4=b5*pixel^2+0.3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z+(-0.7564,-0.132)+(c/8))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2860 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel-conj(0.1/pixel-flip(0.01/pixel))+0.3
  b4=b5*pixel^2+0.3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z+(-0.7564,-0.132)+(c/8))
  c=(z+c/2.125)-0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2861 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel/2-conj(0.1/pixel-flip(0.01/pixel))
  b4=conj(conj(1-b5))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z|/15)+z*z+(-0.7564,-0.132)+c/10
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2862 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel/2-conj(0.1/pixel-flip(0.01/pixel))
  b4=conj(conj(1-b5))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z|/15)+z*z+(-0.7564,-0.132)+c/10
  c=(z+c/2.125)-0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2863 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=conj(pixel^2)-cos(1/acos(|pixel|))
  b4=conj(conj(1-b5))-flip(0.1/pixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z|/15)+z*z+(-0.7564,-0.132)+c/10
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2864 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=(pixel-(conj(0.050/pixel)+flip(conj(0.0010/pixel)))^4)\
      +0.1+flip(0.1/pixel)
  b4=conj(conj(0.33-b5^2))-flip(0.1/pixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z|/15)+z*z+(-0.7564,-0.132)+c/10
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2865 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel*(0.23-pixel)-1/log(0.10/pixel)-cos(0.010/pixel)\
     +conj(0.10/pixel)+0.45
  b4=(-0.8606,-0.0959)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z+(-0.7546,-0.132)+(c/10))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2866 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel*(0.23-pixel)-conj(0.10/pixel)+0.45
  b4=(-0.8606,-0.0959)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z+(-0.7546,-0.132)+(c/10))
  c=(z+c/2.125)-0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2867 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=sin(pixel)*abs(0.23-pixel)-conj(0.10/pixel)+0.45
  b4=(-0.8606,-0.0959)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z+(-0.7546,-0.132)+(c/10))
  c=(z+c/2.125)-0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2868 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=cosxx(0.33-pixel/2)*abs(0.23-pixel)-conj(0.10/pixel)+0.45
  b4=(-0.8606,-0.0959)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z+(-0.7546,-0.132)+(c/10))
  c=(z+c/2.125)-0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2869 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel^3-conj(0.10/pixel)
  b4=(-0.8606,-0.0959)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z+(-0.7546,-0.132)+(c/10))
  c=(z+c/2.125)-0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2870 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=(cabs(0.5-pixel^7)*sqr(conj(pixel))-conj(0.10/pixel)\
     -sqr(flip(0.00510/pixel)))+0.15
  b4=(-1.099,-0.2249)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z+(-0.7546,-0.132)+(c/10))
  c=(z+c/2.125)-0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2871 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=flip(pixel/5)+conj(pixel/3)+(pixel/2)^4
  b4=(-0.7564,0.21978)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z+(-0.7546,-0.132)+(c/10))
  c=(z+c/2.125)-0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2872 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=flip(pixel)*conj(pixel)*(pixel)-flip(0.1/pixel-conj(0.01/pixel))
  b4=(-0.7564,0.21978)*(-1.099,-0.2249)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z+(-0.7546,-0.132)+(c/10))
  c=(z+c/2.125)-0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 96msg.frm
}


Carr2873 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=((pixel-conj(conj(0.10/pixel))-cotan(cotan(0.1/pixel))))
  b4=(pixel+cos(1.5/(sqr(cos(pixel/2+conj(pixel/3))))))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z+(-0.7546,-0.132)+(c/10))
  c=(z+c/2.125)-0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2874 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=((pixel^2.67-conj(conj(0.10/pixel))-abs(cabs(0.1/pixel))))
  b4=(-1.099,-0.2249)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z+(-0.7546,-0.132)+imag(c/13))
  c=(z+c/2.125)-0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2875 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b3=conj(0.10/pixel)-flip(0.010/pixel)
  b5=flip((pixel-b3)/5)+((pixel-b3)/3)+(pixel/2)^4
  b4=(-0.7564,0.21978)*(-1.099,-0.2249)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z+(-0.7546,-0.152)+imag(0.2-c/13))
  c=(z+c/2.125)-0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2876 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=4*(pixel*(cabs(2.15*pixel-flip(0.10/pixel)-conj(0.010/pixel))))-0.1
  b4=(-0.7564,0.21978)*((-1.099,-0.2249)/(-0.8606,-0.0959))\
     -flip(0.001/pixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z)+(-0.7546,-0.152)+imag(c/13)-conj(0.025/c/21)
  c=(z+c/2.125)-0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2877 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b3=flip(pixel/4+pixel/3)
  b5=b4=(2*pixel^4)-b3-sin(0.8*pixel-flip(0.01/pixel))\
        +conj(0.1275/pixel)+0.117
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z)+(-0.7546,-0.112)+c/10-(0.0025/c/21)
  c=(z+c/2.125)-0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2878 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b3=flip(pixel/4+pixel/3)
  b5=b4=(2*pixel^4)-(b3)^5-sin(0.8*pixel-flip(0.01/pixel))\
        +conj(0.1275/pixel)+0.117
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z)+(-0.7546,-0.112)+c/10-(0.0055/c/21)
  c=(z+c/2.125)-0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42tcarr.frm
}


Carr2879 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b3=pixel^2-conj(0.1/pixel-flip(0.01/pixel))
  b4=b5=sin(0.67*pixel^3)-cabs(b3)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z)+(-0.7546,-0.144)+c/10-(0.0035/c/21)
  c=(z+c/2.125)-0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2880 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=(pixel^2+(-0.099,-0.2249))-conj(0.1/pixel-flip(0.01/pixel))
  b4=(-1.099,-0.2249)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21)
  c=(z+c/2.125)-0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2881 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel/3.67+conj(flip(pixel/3))+flip(tanh(pixel/2))
  b4=(-0.7456,0.2)+pixel*conj(pixel)*flip(pixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21)
  c=(z+c/2.125)-0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2882 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b3=|sin(conj(conj(pixel^30.5)))|
  b4=(conj(conj(0.15/log(exp(conj(conj(pixel^450))-b3-0.4)-0.8))))
  b5=(-0.7564,0.21978)*((-1.099,-0.2249)/(-0.8606,-0.0959))\
      -flip(0.001/pixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2883 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b3=|sin(conj(conj(pixel^3.5)))|
  b4=(conj(conj(0.15/log(exp(conj(conj(pixel^7))-b3-0.4)-0.8))))
  b5=pixel-conj(0.1/pixel)-flip(0.01/pixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2884 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
          ; Rewritten for if..else by Sylvie Gallet 5/22/98
  IF (whitesq)
    c = 0.15/log(exp(pixel^7 + |sin(pixel^3.5)| - 0.4) - 0.8)
    c = (-0.7456,-0.132) + c/10 - 1/(c*6000)
    z = zorig = (pixel - conj(0.1/pixel) - flip(0.01/pixel))^7
  ELSE
    c = - 0.15/log(exp(pixel^7 + |sin(pixel^3.5)| - 0.4) - 0.8)
    c = (-0.7456,-0.132) + c/10 - 1/(c*6000)
    z = zorig = - (pixel - conj(0.1/pixel) - flip(0.01/pixel))^7
  ENDIF
  bailout = 16, iter = 0
  :
  IF (iter == p1)
    z = c = (-0.7456,-0.132) + 0.15*zorig - 1/(zorig*9000)
  ELSEIF (iter == imag(p1))
    z = c = (-0.7456,-0.132) + 0.225*zorig - 1/(zorig*13500)
  ELSEIF (iter == p2)
    z = c = (-0.7456,-0.132) + 0.3375*zorig - 1/(zorig*20250)
  ELSEIF (iter == imag(p2))
    z = c = (-0.7456,-0.132) + 0.50625*zorig - 1/(zorig*30375)
  ELSE
    z = z*z + c
  ENDIF
  iter = iter + 1
  |z| <= bailout
  ;SOURCE: 98msg.frm
}


Carr2885 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=b4=(((flip(abs(pixel))*(flip(asinh(pixel)))))\
         -flip(0.1/pixel))-conj(0.1/pixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2886 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(0.5+pixel/2)^3-conj(0.1/pixel)-flip(0.1/pixel)+0.3
  b5=conj(conj(0.5+pixel/2))^3-conj(0.1/pixel)-flip(0.1/pixel)+0.5
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21)
  c=(z+c/2.125)-0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2887 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=flip(flip(0.5+pixel/2))^3-conj(0.1/pixel)-flip(0.1/pixel)+0.5
  b4=(-0.7564,0.21978)*((-1.099,-0.2249)/(-0.8606,-0.0959))\
      -flip(0.001/pixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21)
  c=(z+c/2.125)-0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2888 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=abs(sinh(0.5+pixel/2))^3-conj(0.1/pixel)-flip(0.1/pixel)+0.5
  b4=(-0.7564,0.21978)*((-1.099,-0.2249)/(-0.8606,-0.0959))\
      -flip(0.001/pixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21)
  c=(z+c/2.125)-0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2889 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=abs(abs(0.5+conj(pixel)/2))^3\
      -conj(0.1/pixel)^10-flip(0.1/pixel)^10-0.5
  b4=(-0.7564,0.21978)*((-1.099,-0.2249)/(-0.8606,-0.0959))\
      -flip(0.01/pixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21)
  c=(z+c/2.125)-0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2890 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  m3=conj(0.10/pixel)
  b5=pixel/2-flip(m3)^4
  b3=|cos(conj(conj(pixel^30.5)))|
  b4=(conj(conj(0.15/log(exp(conj(conj(pixel^450))\
      -b3-0.4)-0.8))))+|flip(flip(2*b5^4))|
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2891 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel-conj(0.1/pixel)-flip(0.01/pixel)
  b3=|cos(conj(conj(pixel^30.5)))|
  b4=(conj(conj(0.15/log(exp(conj(conj(pixel^450))\
      -b3-0.4)-0.8))))+|flip(flip(2*b5^4))|
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2892 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=flip(imag(pixel))*log(0.1/pixel-conj(0.1/pixel))-0.3
  b5=pixel-conj(0.1/pixel)-flip(0.01/pixel)
  c=whitesq*b4^2-(whitesq==0)*b4
  z=whitesq*b5^2-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=((z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21))
  c=((z+c/2.125)-0.0125)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2893 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(conj(conj(pixel^3)))-cabs(conj(conj(pixel^1.5)))-1.2
  b5=pixel
  c=whitesq*b4^2-(whitesq==0)*b4
  z=whitesq*b5^2-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=((z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21))
  c=((z+c/2.125)-0.0125)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2894 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
          ; Rewritten for if..else by Sylvie Gallet 5/22/98
  IF (whitesq)
    c = sqr(pixel^3 - cabs(pixel^1.5) - 1.2)
    z = zorig = sqr(pixel - conj(0.1/pixel) - flip(0.01/pixel))
  ELSE
    c = - (pixel^3 - cabs(pixel^1.5) - 1.2)
    z = zorig = - (pixel - conj(0.1/pixel) - flip(0.01/pixel))
  ENDIF
  bailout = 16, iter = 0
  :
  IF (iter == p1)
    z = 0, c = 1.5 * zorig
  ELSEIF (iter == imag(p1))
    z = 0, c = 2.25 * zorig
  ELSEIF (iter == p2)
    z = 0, c = 3.375 * zorig
  ELSEIF (iter == imag(p2))
    z = 0, c = 5.0625 * zorig
  ENDIF
  z = z*z + (-0.7456,-0.132) + c/10 - 1/(c*6000)
  c = z + c/2.125 - 0.0125
  iter = iter + 1
  |z| <= bailout
  ;SOURCE: 98msg.frm
}


Carr2895 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(conj(conj(0.33+pixel^5)))-cabs(cos(cotan(pixel^1.5)))-1.72
  b5=pixel^2-conj(0.1/pixel)-flip(0.01/pixel)
  c=whitesq*b4^2-(whitesq==0)*b4
  z=whitesq*b5^2-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=((z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21))
  c=((z+c/2.125)-0.0125)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2896 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(pixel^2/(tanh(0.3/pixel)))+conj(0.1/pixel)-(log(pixel))
  b5=b4^5+(-1.099,-0.2249)/3.33
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=((z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21))
  c=((z+c/2.125)-0.0125)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2897 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(pixel^2/(tanh(0.3/pixel)))+conj(0.1/pixel)-(log(pixel))+2
  b5=b4^5+(-1.099,-0.2249)/3.33-conj(0.1/pixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=((z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21))
  c=((z+c/2.125)-0.0125)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2898 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel^3-0.1/(conj(0.10/pixel)-sqr(sinh(0.0250/pixel)))^6-1
  b4=pixel-1/(sinh(0.10/pixel)-sqr(cabs(0.0250/pixel)))^6
  c=whitesq*b4-(whitesq==0)*b4+conj(0.1/b4)
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=((z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21))
  c=((z+c/2.125)-0.0125)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2899 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel^3-0.1/(conj(0.10/pixel)-sqr(sinh(0.0250/pixel)))^6-1
  b4=pixel^9-0.1/(conj(0.10/pixel)-sqr(cabs(0.0250/pixel)))^6
  c=whitesq*b4-(whitesq==0)*b4+conj(0.1/b4)
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=((z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21))
  c=((z+c/2.125)+0.009125)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2900 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel^3-cabs(0.1/(conj(0.10/pixel)-sqr(sinh(0.0250/pixel))))^6-1
  b4=pixel^9-(0.1/(conj(0.10/pixel)-sqr(cabs(0.0250/pixel))))^6
  c=whitesq*b4-(whitesq==0)*b4+conj(0.1/b4)
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=((z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21))
  c=((z+c/2.125)+0.009125)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2901 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel^3-conj(0.1/(conj(0.10/pixel)\
     -sqr(sinh(0.0250/pixel))))^3.25-0.7233
  b4=(-0.7456,-0.132)
  c=whitesq*b4-(whitesq==0)*b4+conj(0.1/b4)
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=((z*z)+(-0.7456,-0.102)+c/10-(0.0035/c/21))
  c=((z+c/2.125)+0.009125)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2902 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=(pixel/(cabs(0.3/pixel)))-flip(0.010/pixel)
  b3=|cos(conj(conj(pixel^30.5)))|, b2=|flip(flip(2*b5^10))|
  b4=(conj(conj(0.15/log(exp(conj(conj(pixel^450))\
       -conj(b3)-0.4)-0.8))))+b2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=((z*z)+(-0.7456,-0.102)+c/10-(0.0035/c/21))
  c=((z+c/2.125)+0.009125)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2903 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=(real(pixel)+flip(imag(pixel)^1.224))
  b4=(1.224^real(pixel)+flip(abs(pixel)))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=((z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21))
  c=((z+c/2.125)-0.0125)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2904 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=(pixel-conj(0.1/pixel-flip(0.01/pixel)))^5
  b4=pixel-conj(0.1/pixel-flip(0.01/pixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  c=((z+c/2.125)-0.0125)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2905 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=b4=pixel
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  c=((z+c/2.125)-0.0125)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2906 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=pixel-conj(0.1/pixel-exp(0.001/pixel))
  b5=((pixel-0.0224)/2)*conj(b4-0.25)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  c=((z+c/2.125)-0.0325)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2907 (XYAXIS) {; Halley PHC
                   ; passes=1 needs to be used with this PHC formula.
  b5=1/pixel
  z=b5*(whitesq+b5*(whitesq==0)): 
  z5=z*z*z*z*z
  z6=z5*z
  z7=z6*z
  z=(z-p1*((z7-z)/((14.0*z6-2)-(84.0*z5)*(z7-z)/(28.0*z6-4))))
  0.0001<=|z7-z|
  ;SOURCE: 42ucarr.frm
}


Carr2908 (XYAXIS) {; Halley
                   ; passes=1 needs to be used with this PHC formula.
  b5=(pixel)
  z=b5*(whitesq+2*b5*(whitesq==0)): 
  z5=z*z*z*z*z
  z6=z5*z
  z7=z6*z
  z=(z-p1*((z7-z)/((7.0*z6-1)-(42.0*z5)*(z7-z)/(14.0*z6-2))))
  0.0001<=|z7-z|
  ;SOURCE: 42ucarr.frm
}


Carr2909 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=conj(pixel^7)*abs(pixel-0.2)^2
  b4=cabs(pixel)-conj(0.01/pixel)
  c=whitesq*(b4)-(whitesq==0)*fn2(b4)
  z=whitesq*(b5)-(whitesq==0)*fn2(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=((z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2910 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=conj(pixel^7)*sin(pixel-0.2)^2
  b4=cabs(pixel^5)-conj(0.01/pixel)
  c=whitesq*(b4)-(whitesq==0)*fn2(b4)
  z=whitesq*(b5)-(whitesq==0)*fn2(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=((z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2911 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=conj(pixel^7)*sin(pixel-0.2)^2
  b4=cabs(0.25-pixel^5)-conj(0.01/pixel)
  c=whitesq*(b4^3)-(whitesq==0)*(b4^0.5)
  z=whitesq*(b5^0.5)-(whitesq==0)*(b5^3)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  c=((z+c/2.125)-0.0325)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2912 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=conj(pixel^7)*conj(0.33-pixel)^2
  b4=cabs(0.25-pixel^5)-conj(0.01/pixel)
  c=whitesq*(b4^3)-(whitesq==0)*(b4^0.5)
  z=whitesq*(b5^0.5)-(whitesq==0)*(b5^3)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  c=((z+c/2.125)-0.0425)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2913 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=b4=(pixel-1/log(0.0010/pixel)\
        -cos(0.010/pixel+1.25)-conj(0.10/pixel))
  c=whitesq*(b4)-(whitesq==0)*conj(b4)
  z=whitesq*(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2914 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=(conj(pixel^7)-1/log(0.0010/pixel)\
      -cos(0.010/pixel+1.25)-conj(0.10/pixel))-0.14
  b4=(pixel-1/log(0.0010/pixel)-cos(0.010/pixel+1.25)\
     -conj(0.10/pixel))
  c=whitesq*(b4)-(whitesq==0)*conj(b4)
  z=whitesq*(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}


Carr2915 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(conj(pixel^9)-2/log(0.0010/pixel)\
      -cos(0.010/pixel+1.25)-conj(0.10/pixel))
  b5=((|pixel|)^7-1/log(0.0010/pixel)\
      -cos(0.010/pixel+1.25)-conj(0.10/pixel))
  c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
  z=whitesq*flip(b5)-(whitesq==0)*sqr(b5)+b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42vcarr.frm
}


Carr2916 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=flip(imag(0.33+sin(|pixel|)))*cabs((pixel)^4)\
      -conj(0.10/pixel)-flip(0.010/pixel)
  b4=1.2*(|pixel/0.75|)^5+conj(0.1/pixel+flip(0.01/pixel))
  c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42vcarr.frm
}


Carr2917 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=flip(imag(0.33+sin(|pixel|)))*cabs((pixel)^4)\
      -conj(0.10/pixel)-flip(0.010/pixel)
  b4=1.2*(|pixel/0.75|)^5+conj(0.1/pixel+flip(0.01/pixel))
  c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  c=((z+c/2.125)-0.0325)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42vcarr.frm
}


Carr2918 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=(pixel^5-conj(0.1/pixel)-flip(0.1/pixel))
  b4=(pixel^5-(b5+conj(sqr(b5*(pixel)))))
  c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=((z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42vcarr.frm
}


Carr2919 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=(pixel^5-conj(0.1/pixel)-flip(0.01/pixel))
  b4=0.25/(pixel-conj(b5/(conj(pixel))*b5/pixel+pixel/b5))
  c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+(0.0035/c/11)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42vcarr.frm
}


Carr2920 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=cabs(conj(conj(2*pixel^3)))-flip(0.1/pixel)-conj(0.1/pixel)+0.35
  b4=abs(b5)
  c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=((z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42vcarr.frm
}


Carr2921 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
          ; Edited for Fractint v. 20 by George Martin, 10/98
  b5=pixel^3-conj(0.1/pixel)-flip(0.01/pixel)+0.01/pixel
  y=imag(flip(pixel-flip(0.1/pixel)))
  b4=-conj(0.1/pixel)
  c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42vcarr.frm
}


Carr2922 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
          ; Modified for IF..ELSE logic by Sylvie Gallet, 05/20/97
  IF (whitesq)
    b4 = sqr(pixel) - conj(0.1/pixel) - flip(0.01/pixel)
    c = sqr(b4) / 10  + (-0.7206,0.2132)
    z = z0 = sqr(conj(b4) + real(0.1/pixel))
  ELSE
    b4 = sqr(pixel) - conj(0.1/pixel) - flip(0.01/pixel)
    c = - conj(b4) / 10  + (-0.7206,0.2132)
    z = z0 = b4 + real(0.1/pixel)
  ENDIF
  bailout = 16, iter = 0
  :
  IF (iter==p1)
    z = 0, c = z0 * 0.15 + (-0.7206,0.2132)
  ELSEIF (iter==imag(p1))
    z = 0, c = z0 * 0.225 + (-0.7206,0.2132)
  ELSEIF (iter==p2)
    z = 0, c = z0 * 0.3375 + (-0.7206,0.2132)
  ELSEIF (iter==imag(p2))
    z = 0, c = z0 * 0.50625 + (-0.7206,0.2132)
  ENDIF
  iter = iter + 1
  z = sqr(z) + c
  |z| <= bailout
  ;SOURCE: phctopng.frm
}


Carr2923 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=conj(pixel^3)-conj(0.1/pixel)-flip(0.01/pixel)
  b5=real(b4)-flip(imag(b4/2))-conj(imag(flip(0.1/pixel)))
  c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*flip(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z)+(-0.7296,0.2132)+c/10
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42vcarr.frm
}


Carr2924 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=conj(conj(pixel))*(pixel^4)-flip(0.01/pixel)-conj(0.1/pixel)+0.15
  b5=abs(b4)-cabs(flip(imag(b4)))-conj(imag(cabs(0.1/pixel)))
  c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*flip(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z)+(-0.7296,0.2132)+c/6
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42vcarr.frm
}


Carr2925 {; Modified-inandout04 
          ; passes=1 needs to be used with this PHC formula.
  k=((1)*(|p1|<=0)+p1)
  test=(4*(real(p2)<=0)+real(p2)*(0<p2))
  b5=oldz=pixel-conj(0.1/pixel)-flip(0.01/pixel)
  b4=pixel
  c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
  a=(|z|<=|oldz|)*(c)
  b=(|oldz|<|z|)*(c*k)
  c=a+b
  oldz=z
  z=z*z+c
  |z|<=test
  ;SOURCE: 42vcarr.frm
}


Carr2926 {; Modified-inandout04 
          ; passes=1 needs to be used with this PHC formula.
  k=((1)*(|p1|<=0)+p1)
  test=(4*(real(p2)<=0)+real(p2)*(0<p2))
  b4=cabs(pixel*2)-log(conj(0.5/pixel))
  b5=oldz=pixel-conj(pixel-1/log(tan(1/pixel))-1/log(2/pixel))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
  a=(|z|<=|oldz|)*(c)
  b=(|oldz|<|z|)*(c*k)
  c=(a+b)
  oldz=z
  z=z*z+c
  |z|<=test
  ;SOURCE: 42vcarr.frm
}


Carr2927 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=pixel*conj(conj(1+pixel)/cosxx(pixel^3))
  b5=pixel*conj(sin(pixel^3)/cosxx(1-pixel))-conj(0.1/pixel)
  c=whitesq*sqr(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42vcarr.frm
}


Carr2928 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=pixel*conj(conj(pixel^1.5)/cos(pixel^3))
  b5=pixel*conj(sin(pixel^3)/cos(pixel^1.5))-conj(0.1/pixel)
  c=whitesq*sqr(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42vcarr.frm
}


Carr2929 {; Modified OK-42
          ; passes=1 needs to be used with this PHC formula.
  b5=1/pixel
  p1x=real(p1)+1, p1y=imag(p1)+1
  p2x=real(p2)+1, p2y=imag(p2)+1
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
  zx=real(z), zy=imag(z)
  x=fn1(zx*p1x-zy*p1y)+fn2(zx*p2x-zy*p2y)
  y=fn3(zx*p1y+zy*p1x)+fn4(zx*p2y+zy*p2x)
  z=x+flip(y)
  |z|<=20
  ;SOURCE: 42vcarr.frm
}


Carr2930 {; Modified OK-42
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel
  p1x=real(p1)+1, p1y=imag(p1)+1
  p2x=real(p2)+1, p2y=imag(p2)+1
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
  zx=real(z), zy=imag(z)
  x=fn1(zx*p1x-zy*p1y)+fn2(zx*p2x-zy*p2y)
  y=fn3(zx*p1y+zy*p1x)+fn4(zx*p2y+zy*p2x)
  z=x+flip(y)
  |z|<=4
  ;SOURCE: 42vcarr.frm
}


Carr2931 {; Modified OK-42
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel
  p1x=real(p1)+1, p1y=imag(p1)+1
  p2x=real(p2)+1, p2y=imag(p2)+1
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
  zx=real(z), zy=imag(z)
  x=fn1(zx*p1x-zy*p1y)+fn2(zx*p2x-zy*p2y)
  y=fn3(zx*p1y+zy*p1x)+fn4(zx*p2y+zy*p2x)
  z=x+flip(y)+(-0.7456,-0.132)+(x+flip(y))/10
  |z|<=4
  ;SOURCE: 42vcarr.frm
}


Carr2932 {; Modified OK-42
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel
  p1x=real(p1)+1, p1y=imag(p1)+1
  p2x=real(p2)+1, p2y=imag(p2)+1
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
  zx=real(z), zy=imag(z)
  x=fn1(zx*p1x-zy*p1y)+fn2(zx*p2x-zy*p2y)
  y=fn3(zx*p1y+zy*p1x)+fn4(zx*p2y+zy*p2x)
  z=(|x+flip(y)|)+(x+flip(y))+(-0.7456,-0.132)+(x+flip(y))/10
  |z|<=4
  ;SOURCE: 42vcarr.frm
}


Carr2932a {; Modified Sylvie Gallet frm. [101324,3444],1996
           ; passes=1 needs to be used with this PHC formula.
  b5=pixel-conj(0.1/pixel-flip(0.01/pixel))
  b4=(conj(b5/4))+cabs(b5)*(b5)-conj(0.1/b5)
  c=whitesq*sqr(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.152)+c/10
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42vcarr.frm
}


Carr2933 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=(0.75*pixel-(pixel+conj(sqr(|pixel|*1/(pixel-0.124)))))
  b4=(conj(b5/4))+cabs(b5)*(b5)-conj(0.1/b5)
  c=whitesq*sqr(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.152)+c/10
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42vcarr.frm
}


Carr2934 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=(0.75*pixel-(pixel+conj(sqr(|pixel|*1/(pixel-0.124)))))-0.2
  b4=conj(conj(b5/4))+cabs(b5^3)*abs(b5)-conj(0.1/b5)
  c=whitesq*sqr(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.152)+c/8
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42vcarr.frm
}


Carr2935 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=conj(pixel)-pixel+conj(0.1/pixel)
  b5=cabs(pixel/2)-pixel^2
  c=whitesq*sqr(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.122)+c/10
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42vcarr.frm
}


Carr2936 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=conj(pixel)-pixel^5+conj(0.1/pixel)
  b5=cabs(pixel/2)-pixel^5+flip(0.25/b4)
  c=whitesq*sqr(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.122)+c/10
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42vcarr.frm
}


Carr2937 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=pixel-conj(0.1/pixel-flip(0.1/pixel))
  b5=b4-1+(exp(pixel*-b4))
  c=whitesq*sqr(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=4, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.092)+c/10
  c=((z+c/2.125)-0.0425)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42vcarr.frm
}


Carr2938 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=pixel-conj(0.1/pixel-cabs(0.1/pixel))
  b5=pixel^5-conj(0.1/pixel-flip(0.01/pixel))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=0.2*z^3+z^2+(-0.7456,-0.132)+c/10+c
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42vcarr.frm
}


Carr2939 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=flip(flip(pixel/2))^5-conj(0.13/pixel)-flip(0.1/pixel)+0.3
  b4=pixel^3-conj(0.13/pixel-cabs(0.1/pixel))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=0.2*z^3+z^2+(-0.7656,-0.232)+c/10+c
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42vcarr.frm
}


Carr2940 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=flip(flip(pixel/2))^5-conj(0.13/pixel)-flip(0.1/pixel)+0.3
  b4=abs(pixel^3)-conj(0.13/pixel+cabs(0.1/b5))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=0.2*z^3+z^2+(-0.7656,-0.232)+c/10+c
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42vcarr.frm
}


Carr2941 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=flip(flip(pixel/2))^5-conj(0.13/pixel)-flip(0.1/pixel)+0.3
  b5=abs(pixel^3)-conj(0.13/pixel+flip(imag(-b4)))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=0.2*z^3+z^2+(-0.7656,-0.232)+c/10+c
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42vcarr.frm
}


Carr2942 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b3=(pixel/2-conj(conj(0.10/pixel))+flip(flip(imag(0.0010/pixel))))
  b4=pixel^5-1/log(b3)
  b5=pixel^5-1/log(b3)
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42vcarr.frm
}


Carr2943 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b3=(pixel/2-conj(conj(0.10/pixel))+flip(flip(imag(0.0010/pixel))))
  b4=pixel^2-1/log(b3/2)
  b5=pixel^2-1/log(b3/2)
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.132)+c/10
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42vcarr.frm
}


Carr2944 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(conj(pixel)^5)-flip(0.010/pixel)-conj(0.10/pixel)
  b5=b4-0.0625-conj(0.10/pixel)
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.102)+c/10
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42vcarr.frm
}


Carr2945 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=flip(abs(conj(conj(pixel^4))-sin(flip(pixel))-0.4)-0.5)
  b4=conj(pixel-conj(0.10/pixel)-flip(0.0010/pixel))
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.102)+c/10
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42vcarr.frm
}


Carr2946 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=flip(abs(conj(conj(pixel^4))-cabs(flip(pixel))-0.4)-0.5)
  b4=(-0.7456,-0.132)/2
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.102)+c/10
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42vcarr.frm
}


Carr2947 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=flip(abs(conj(conj(pixel))*cabs(flip(pixel/2))-0.4)-0.5)
  b4=(-0.63,-0.4)/2
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.102)+c/10
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42vcarr.frm
}


Carr2948 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=flip(abs(conj(conj(pixel))*cabs(flip(pixel/2))-0.4)-0.5)
  b4=(-0.63,-0.4)/2
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=0.2*z^3+z^2+(-0.7456,-0.132)+c/10+c
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42vcarr.frm
}


Carr2949 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(sqr(pixel))/(conj(2/pixel)*sin(2/pixel))
  b5=(b4/(cos(-0.7456,0.2)))-flip(0.1/pixel)+0.4
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.132)+c/10
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42vcarr.frm
}


Carr2950 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(pixel^3)/(conj(pixel))
  b5=(pixel^4)/(conj(pixel))+0.4
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=0.2*z^3+z^2+(-0.63,-0.4)+(c/8.5)^2+c/2.5
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42vcarr.frm
}


Carr2951 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=flip(imag(pixel))*(pixel^11)+tanh(0.1/pixel)\
      -sinh(0.1/pixel)-flip(0.1/pixel)+0.25
  b4=flip(imag(pixel))*(pixel^11)+tanh(0.1/pixel)\
      -sinh(0.1/pixel)-flip(0.1/pixel)
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.132)+c/10
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2952 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel^3-conj(0.1/pixel)-flip(0.01/pixel)^2+0.1/pixel-0.4
  b4=(b5*b5/(exp(pixel)))*b5-conj(0.1/pixel-flip(0.01/pixel))
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=0.2*z^3+z^2+(-0.63,-0.5)+(c/8.5)+c/2
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2953 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
          ; Revised for Fractint v20 by G. Martin
  b5=pixel-(0.2*exp(1-pixel^(-0.01)))
  b4=conj(b5)
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.132)+c/10
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2954 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
          ; Revised for Fractint v20 by G. Martin
  b5=pixel-(0.2*exp(1-pixel^(-0.01)))
  b4=cabs(b5)-conj(0.1/pixel)
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.132)+c/10
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2955 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Revised for Fractint v20 by G. Martin
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel= -abs(real(pixel))+flip(imag(pixel))
  b5=newpixel-(0.2*exp(1-newpixel^(-0.01)))-conj(0.1/newpixel-flip(0.01/newpixel))
  b4=abs(b5^2)-conj(0.1/newpixel)
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.132)+c/10
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2956 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel/(tanh(0.3/pixel))
  b4=conj(b5^2)-conj(0.1/pixel-flip(0.01/pixel))
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=0.2*z^3+z^2+c
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2957 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=(pixel/(tanh(0.3/pixel)))+(0.1/pixel)
  b4=conj(b5^2)-conj(0.1/pixel-flip(0.01/pixel))
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(0.2*z^3)+(z^2)+(c)
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2958 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
          ; Converted to IF..ELSE logic by Sylvie Gallet, 02/21/98
  b4 = abs(sinh(0.5+pixel/2))^3 - conj(0.1/pixel) - flip(0.1/pixel) + 0.5
  IF (whitesq)
    c = conj(b4)/10 + (-0.7456,-0.132), z = zorig = sqr(b4)
  ELSE
    c = - sqr(b4)/10 + (-0.7456,-0.132), z = zorig = - conj(b4)
  ENDIF
  imagp1 = imag(p1), imagp2 = imag(p2), bailout = 16, iter = 0
  :
  IF (iter == p1)
    z = 0, c = 0.15 * zorig + (-0.7456,-0.132)
  ELSEIF (iter == imagp1)
    z = 0, c = 0.225 * zorig + (-0.7456,-0.132)
  ELSEIF (iter == p2)
    z = 0, c = 0.3375 * zorig + (-0.7456,-0.132)
  ELSEIF (iter == imagp2)
    z = 0, c = 0.50625 * zorig + (-0.7456,-0.132)
  ENDIF
  iter = iter + 1
  z = z*z + c
  z <= bailout
  ;SOURCE: 42wcarr.frm
}


Carr2959 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=abs(sinh(0.5+pixel/2))^3-conj(0.1/pixel)-flip(0.1/pixel)+0.5
  b4=cabs(sinh(0.5+pixel/2))^3-conj(0.1/pixel)-flip(0.1/pixel)+0.25
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+c/10
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2960 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=abs(abs(0.5+conj(pixel)/2))^3\
     -conj(0.1/pixel)^10-flip(0.1/pixel)^10-0.6
  b4=tanh(sinh(0.5+pixel/2))^3-conj(0.1/pixel)-flip(0.01/pixel)+0.25
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+c/10
  c=((z+c/2.125)-0.0325)
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2961 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=conj(pixel^3)-pixel+conj(0.1/pixel)
  b5=cabs(pixel/2)-pixel^5+0.4
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+c/10
  c=((z+c/2.125)-0.0325)
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2962 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=(cabs(conj(pixel^3))^cosxx(pixel)^5)-(0.1/pixel)
  b4=conj(conj(b5))*(pixel-1/pixel)
  c=whitesq*sqr(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+c/10
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2963 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=(cabs(conj(pixel^3))^cosxx(pixel)^5)-(0.1/pixel)
  b4=conj(conj(b5))*(pixel-1/pixel)
  c=whitesq*sqr(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  c=((z+c/2.125)-0.0325)
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2964 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=(cabs(conj(pixel^3))^cosxx(pixel)^5)\
      -(0.1/pixel)-conj(0.1/pixel-flip(0.01/pixel))
  b4=conj(conj(b5^3))*flip(imag(pixel-1/pixel))-conj(0.1/pixel)
  c=whitesq*sqr(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+c/10
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2965 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel^4*(pixel-0.2)-(0.10/pixel)\
      -cos(0.010/pixel)+conj(0.10/pixel)+0.5
  b4=conj(pixel^3)*(pixel)-(flip(asin(0.010/pixel))\
      -conj(asin(0.10/pixel)))
  c=whitesq*sqr(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+c/10
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2966 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=cotan(|1-pixel/2|)^3.5*pixel^8\
      -(0.5/log(conj(conj(0.10/pixel+1.0))))^12
  b4=exp(-0.7456,-0.132)-conj(0.1/pixel)
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*cabs(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=4, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+c/10
  c=((z+c/2.125)-0.0325)
  iter=iter+1
  imag(flip(z^6))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2967 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=(2.224*(pixel)+flip(abs(pixel)))
  b4=(1.224*real(pixel)+flip(imag(pixel)))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+c/10
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2968 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=(2.224*conj(conj(pixel^5))+conj(cabs(pixel)))+0.6
  b4=(1.224*cabs(pixel/2)+flip(imag(pixel)))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+c/10
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2969 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(2.224*conj(conj(pixel/2))+conj(cabs(pixel)))
  b5=(1.224*cabs(pixel^5)+flip(imag(pixel)))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+c/10
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2970 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(2.224*conj(conj(pixel/2))+conj(cabs(pixel)))
  b5=(1.224*cabs(pixel^6)-flip(imag(pixel)))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+c/10
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2971 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(2.224*conj(conj(pixel/2))+conj(cabs(pixel^4)))
  b5=(3.224*cabs(pixel^6)-flip(imag(pixel)))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+c/10
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2972 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=pixel-conj(0.1/pixel-flip(0.01/pixel))
  b5=cabs(b4^3)+0.5
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(c/10)
  iter=iter+1
  imag(flip(z))<=4/cos(real(z))
  ;SOURCE: 42wcarr.frm
}


Carr2973 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(pixel/2^3-conj(0.1/pixel))-flip(0.1/pixel)
  b5=(((conj(b4^2+pixel*pixel)))/(pixel-b4^3))/1.7
  c=whitesq*conj(b4^3)-(whitesq==0)*flip(imag(b4))
  z=whitesq*sqr(b5^3)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c^(real(1)-(1,0)))*(z^2)+c/8+(-0.7456,-0.132)
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2974 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(pixel/2^3-conj(0.1/pixel))-flip(0.1/pixel)
  b5=(((cabs(b4^2+pixel^2)))/(pixel-b4^3))/1.33
  c=whitesq*conj(b4^3)-(whitesq==0)*flip(imag(b4))
  z=whitesq*sqr(b5^3)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c^(real(1)-(1,0)))*(z^2)+c/8+(-0.7456,-0.132)
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2975 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(pixel/2^3-conj(0.1/pixel))-flip(0.1/pixel)
  b5=(((cabs(b4^2+pixel^2)))/(pixel-b4^3))/1.33
  c=whitesq*conj(b4^3)-(whitesq==0)*flip(imag(b4))
  z=whitesq*sqr(b5^3)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=0.2*z^3+z^2+(-0.7456,-0.132)+(c/8.5)+c/1.75
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2976 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(pixel/2^5-conj(0.1/pixel))-flip(0.1/pixel)
  b5=((flip(b4^2+pixel^2))/(pixel-b4^1.5))/1.33
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5^3)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-1.099,-0.2249)+(c/8)
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2977 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(pixel/2^5-conj(0.1/pixel))-flip(0.1/pixel)
  b5=((flip(b4^2+conj(pixel)^2))/(pixel-b4^1.5))/1.33
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5-conj(0.1/pixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c^(real(1)-(1,0)))*(z^2)+c/8+(-0.7456,-0.132)
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2978 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=1/(pixel*pixel)+0.4
  b4=cosxx(1.099,0)/pixel
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4-flip(0.1/pixel))^3
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5-conj(0.1/pixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z*z/5+z*z+2*c^2+(-0.7456,-0.132)^2.5
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2979 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=pixel-(conj(0.01/pixel*0.4/pixel))+0.45
  b5=pixel^3+0.1/b4
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-1.099,-0.2249)+(c/8)
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2980 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel-conj(0.1/pixel)+0.4
  b4=pixel-flip(0.1/pixel)-conj(0.001/pixel)
  c=whitesq*sqr(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z|/5)+z*z+c-0.09/pixel
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2981 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel/2-conj(0.1/pixel-flip(0.01/pixel))+0.4
  b4=pixel^2-flip(0.01/pixel)-conj(0.1/pixel)
  c=whitesq*sqr(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.8056,-0.132)+(c/7)+0.125/(0<=|z|)
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2982 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel/2-conj(0.1/pixel-flip(0.01/pixel))+0.4
  b4=cabs(b5*0.3)-flip(0.1/pixel)-conj(0.01/pixel)
  c=whitesq*sqr(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*sqr(|b5|)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c^(real(1)-(1,0)))*(z^2)+c/8+(-0.7956,-0.132)
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2983 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(sqr(cos(pixel))-cosh(pixel))/2
  b5=b4^5-conj(0.1/pixel-flip(0.01/pixel))-0.4
  c=whitesq*sqr(b4)-(whitesq==0)*(|b4|)
  z=whitesq*(b5)-(whitesq==0)*sqr(|b5|)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.8056,-0.132)+(c/7)+0.125/(0<=|z|)
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2984 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=conj(cabs(pixel))-conj(0.1/pixel-flip(0.01/pixel))
  b4=(cabs(abs(pixel/1.75)))*conj(sqr(pixel))\
      -conj(0.10/pixel)-flip(0.10/pixel)
  c=whitesq*(b4)-(whitesq==0)*conj(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*cabs(sqr(|b5|))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(c/10)
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2985 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=abs(conj(pixel)*flip(pixel))
  b4=b5^3-conj(0.1/pixel-flip(0.01/pixel-0.1/b5))
  c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
  z=whitesq*conj(b5)-(whitesq==0)*abs(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(c/10)
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2986 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=abs(conj(pixel)*flip(pixel))
  b4=b5^3-conj(0.1/pixel-flip(0.015/pixel-flip(0.1/b5)))+0.4
  c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
  z=whitesq*conj(b5)-(whitesq==0)*abs(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(c/10)
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}


Carr2988 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=abs(conj(pixel)*flip(pixel))-0.15
  b4=b5^3-conj(0.1/pixel-flip(0.015/pixel-flip(0.1/b5)))+0.4
  c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
  z=whitesq*conj(b5)-(whitesq==0)*abs(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=0.2*z^3+z^2+(-0.7456,-0.132)+(c/8.5)+c/1.75
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr2989 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=(pixel-conj(conj(0.10/pixel))-cotan(cotan(1/pixel)))
  b4=(pixel+cosxx((sqr(cos(pixel+conj(pixel))))))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*(|b5|)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(c/10)
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr2990 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=(abs(pixel)-conj(conj(0.10/pixel))-cotan(cotan(1/pixel)))-0.25
  b4=(pixel+cosxx((sqr(cos(pixel*conj(pixel))))))
  c=whitesq*b4-(whitesq==0)*b4^2
  z=whitesq*b5-(whitesq==0)*(|b5|)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(c/10)
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr2991 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel^5+0.4
  b4=0.55*((2*pixel-flip(0.010/pixel)-conj(0.10/pixel)))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(c/10)
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr2992 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=cabs(pixel)^5+0.2
  b4=pixel-flip(0.010/pixel)-conj(0.10/pixel)-cabs(0.1/b5)
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)+flip(0.1/b5)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(|b5|)+flip(0.1/b4)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z*z/5+z*z+2*c^2+(-0.7456,-0.132)
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr2993 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=pixel-conj(pixel/5)
  b5=b4/2.5-flip(0.099/pixel)-0.6
  c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
  z=whitesq*conj(b5)-(whitesq==0)*sqr(|b5|)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c^(real(1)-(1,0)))*(z^2)+c/8+(-0.7756,-0.132)
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr2994 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel-conj(0.1/pixel)
  b4=pixel-flip(0.1/pixel)-conj(0.001/pixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c^(real(1)-(1,0)))*(z^2)+c/8+(-0.7756,-0.132)
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr2995 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel-conj(0.1/pixel)-0.32
  b4=pixel-flip(0.1/pixel)-conj(0.001/pixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c^(real(1)-(1,0)))*(z^2)+c/8+(-0.7256,-0.132)
  c=((z+c*(0.4,0.35))-0.0325)
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr2996 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel-conj(0.01/pixel)
  b4=pixel-flip(0.01/pixel)-conj(0.001/pixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(conj(c)^(real(1)-(1,0)))*(z^2)+c/8+(-0.7656,-0.132)
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr2997 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel-conj(0.01/pixel)
  b4=pixel-flip(0.01/pixel)-conj(0.001/pixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=cabs(c)^(real(1)-(1,0))*(0.01+z^2)+tan(c/6)+(-0.7156,-0.132)
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr2998 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; Converted to IF..ELSE logic by Sylvie Gallet, 13/02/98
          ; passes=1 needs to be used with this PHC formula.
  pixinv = .01/pixel
  c = pixel - flip(pixinv) - conj(0.1*pixinv)
  IF (whitesq)
    c = flip(conj(0.1*c)) + (-0.7456,-0.132)
    z = zorig = pixel - conj(pixinv)
  ELSE
    c = flip(conj(-0.1*c)) + (-0.7456,-0.132)
    z = zorig = - pixel + conj(pixinv)
  ENDIF
  imagp1 = imag(p1), imagp2 = imag(p2), bailout = 16, iter = 0
  :
  IF (iter == p1)
    z = 0
    c = 0.15 * flip(conj(zorig)) + (-0.7456,-0.132)
  ELSEIF (iter == imagp1)
    z = 0
    c = 0.225 * flip(conj(zorig)) + (-0.7456,-0.132)
  ELSEIF (iter == p2)
    z = 0
    c = 0.3375 * flip(conj(zorig)) + (-0.7456,-0.132)
  ELSEIF (iter == imagp2)
    z = 0
    c = 0.50625 * flip(conj(zorig)) + (-0.7456,-0.132)
  ENDIF
  iter = iter + 1
  z = z*z + c
  z <= bailout
  ;SOURCE: 42xcarr.frm
}


Carr2999 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=pixel-conj(0.01/pixel)
  b5=pixel-flip(0.01/pixel)-conj(0.001/pixel)-conj(0.001/b4)-0.12
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7156,-0.132)+flip(conj(c/10))
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42xcarr.frm
}

