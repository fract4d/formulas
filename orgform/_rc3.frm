

Carr3000 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b4=pixel-conj(0.01/pixel-flip(0.001/pixel))
  b5=conj(pixel)-flip(0.01/pixel)-conj(0.001/pixel)-conj(0.001/b4)-0.1
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c5 = flip(conj(c/10))-(0.3,0.525)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2 + c5
  iter=iter+1
  z<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr3001 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=conj(pixel)-conj(0.1/pixel-flip(0.001/pixel))-0.45
  b4=flip(pixel*2)-flip(0.01/pixel)-conj(0.001/pixel)-conj(0.001/b5)
  c=whitesq*flip(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*flip(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7496,-0.132)+flip(|c/12|)
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr3002 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=conj(pixel)-conj(0.1/pixel-flip(0.0019/pixel))
  b4=conj(pixel)-flip(0.01/pixel)-conj(0.001/pixel)
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c^4)^(real(1)-(1,0))*(0.01+z^2)+(c/6)+(-0.7156,-0.132)
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr3003 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=conj(pixel)-conj(0.1/pixel-flip(0.0019/pixel))+0.2
  b4=conj(pixel)-flip(0.01/pixel)-conj(0.001/pixel)
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*z*z)/(z+c)+c/10+(-0.7956,-0.132)
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr3004 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=conj(pixel)-conj(0.1/pixel-flip(0.0019/pixel))+0.2
  b4=conj(pixel)-flip(0.01/pixel)-conj(0.001/pixel)
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*z*z)/(conj(z+c))+c/10+(-0.7956,-0.132)
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr3005 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=conj(newpixel^3)-conj(0.1/newpixel-flip(0.01/newpixel))+0.4
  b5=flip(conj(1.25*newpixel))-flip(0.01/newpixel)-conj(0.001/newpixel)+0.4
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*z*z)/(conj(z+c))+c/10+(-0.7956,-0.132)
  iter=iter+1
  (z-newpixel)<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr3006 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=pixel-conj(0.1/pixel)
  b4=pixel-flip(0.1/pixel)-conj(0.001/pixel)
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*z*z)/(conj(z+c))+c/10+(-0.7956,-0.132)
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr3007 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b4=(-0.7456,-0.132)
  b5=abs(conj(conj(2*pixel^12)))-flip(0.1/pixel)-conj(0.1/pixel)+0.35
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*z*z)/(flip(z+c))+c/8+(-0.7956,-0.132)
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr3008 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b4=pixel-conj(0.01/pixel-flip(0.001/pixel))
  b5=1-abs(imag(b4)-real(b4))+flip(1-abs(1-real(b4)-imag(b4)))
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*z*z)/(conj(z+c))+c/8 + (-0.132,-0.6956)
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr3009 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel-conj(0.01/newpixel-flip(0.001/newpixel))
  b5=1-abs(imag(b4)-real(b4))+flip(1-abs(1-real(b4)-imag(b4)))
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*z*z)/(conj(z+c))+c/8 + (-0.132, -0.6956)
  iter=iter+1
  (z-newpixel)<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr3010 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel-conj(0.01/newpixel-flip(0.001/newpixel))
  b5=1-abs(conj(imag(b4)-real(b4/2)))\
      +flip(1-abs(1-real(b4)-flip(imag(b4))))
  c=whitesq*conj(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*z*z)/(conj(z+c))+c/8 + (-0.132,-0.6956)
  iter=iter+1
  (z-newpixel)<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr3011 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=b4=pixel
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*z*z)/(conj(z+c))+conj(c/8)+(-0.7456,-0.132)+sqr(1/pixel)
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr3012 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel
  b5=newpixel-conj(0.001/newpixel-flip(0.01/newpixel))
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*z*z)/(conj(z+c))+conj(c/8)+(-0.7456,-0.132)+sqr(1/newpixel)
  iter=iter+1
  (z-newpixel)<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr3013 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=conj(conj(pixel^2.5))-tanh(tanh(pixel)^1.4)-0.4
  b4=(conj(pixel)^2.5)-(flip(0.010/pixel))-(conj(0.10/pixel))-0.5
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*z*z)/(conj(z+c))+conj(c/8)+(-0.7456,-0.132)+sqr(flip(1/pixel))
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr3014 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=b4=((newpixel)-0.15/((log(conj(-newpixel))^12)+newpixel)\
	 +sqrt(0.0450/newpixel))/0.8
  c=whitesq*sqr(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*z*z)/(conj(z+c))+conj(c/8)+(-0.7456,-0.132)+sqr(1/newpixel)
  iter=iter+1
  (z-newpixel)<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr3015 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b4=(1/log(exp(conj(conj(pixel^450))\
      -cosh(conj(conj(pixel^35.5)))-0.4)-0.5))
  b5=flip(flip(pixel))
  c=whitesq*sqr(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*z*z)/(conj(z+c))+conj(c/8)+(-0.7456,-0.132)-pixel
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr3016 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b4=(0.15/log(exp(conj(conj(pixel^450))\
      -cosh(conj(conj(pixel^50.5))))))
  b5=conj(conj(pixel))-tan(tan(0.0010/pixel))-0.5
  c=whitesq*sqr(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*z*z)/(conj(z+c))+conj(c/8)+(-0.7456,-0.132)-pixel
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr3017 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b4=(0.15/log(exp(conj(conj(pixel^450))\
      -cosh(conj(conj(pixel^50.5))))))
  b5=conj(conj(pixel))-tan(tan(0.0010/pixel))-0.5
  c=whitesq*conj(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=0.75*(c*z*z)/(conj(z+c)*0.6)+conj(c/4)+(-0.7456,-0.132)
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr3018 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=pixel/3.67-conj(flip(pixel/3))
  b4=(-0.7456,-0.132)+pixel
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=0.75*(c*z*z)/(conj(z+c)*0.6)+conj(c/4)+(-0.7456,-0.132)
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr3019 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b4=pixel-flip(0.001/pixel)
  b5=pixel-conj(0.001/pixel)
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=1.25*(c*z*z)/(conj(z+c)*2.8)+conj(c/4)+(-0.7456,-0.132)
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr3020 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=(pixel-0.2)-(0.010/pixel)-cos(0.010/pixel)+conj(0.10/pixel)
  b4=conj(pixel)-(flip(asin(0.010/pixel))-conj(asin(0.10/pixel)))
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=1.25*(c*z*z)/(conj(z+c)*2.8)+conj(c/4)+(-0.7456,-0.132)
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr3021 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=flip(pixel^5)-conj(pixel^7)-conj(0.01/pixel-flip(0.001/pixel))+1.75
  b4=b5-conj(|0.1/b5|)+0.5
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=1.25*(c*z*z)/(conj(z+c)*2.8)+conj(c/4)+(-0.7456,-0.132)+pixel
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr3022 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=cabs(pixel^2)-conj(conj(pixel^7))\
     -conj(0.01/pixel-flip(0.001/pixel))+1.75
  b4=b5-conj(|0.1/b5|)+0.5
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=1.25*(c*z*z)/(flip(z+c)*2.8)+flip(c/4)+(-0.7456,-0.132)+cabs(pixel)
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr3023 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=flip(pixel^2)-cabs(conj(pixel^7))\
     -conj(0.01/pixel-flip(0.001/pixel))+1.75
  b4=b5-conj(|0.1/b5|)+0.5
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*flip(b5)^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=1.25*(c*z*z)/(flip(z+c)*2.8)+flip(c/4)+(-0.7456,-0.132)+cabs(pixel)
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr3024 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=flip(pixel^2)-cabs(conj(pixel^7))\
      -conj(0.01/pixel-flip(0.001/pixel))-0.3
  b4=b5-conj(|0.1/b5|)
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*flip(b5)^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr3025 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=flip(pixel^4)-cabs(conj(pixel^10))\
      -conj(0.01/pixel-flip(0.001/pixel))-0.3
  b4=b5-flip(|0.1/b5|)
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*flip(b5)^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr3026 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b4=cabs(conj(pixel^1.5))-conj(pixel^5.5)\
      -conj(0.01/pixel-flip(0.001/pixel))
  b5=b4^3-conj(|0.01/b4|)-0.75
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*flip(b5)^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+flip(conj(c/10))
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr3027 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b4=cabs(conj(pixel^1.5))-conj(pixel^5.5)\
      -conj(0.01/pixel-flip(0.001/pixel))
  b5=cabs(conj(b4^5.5))-conj(b4^1.5)-conj(0.01/b4-flip(0.001/b4))-0.65
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7656,-0.132)+(conj(c/10))
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: 42xcarr.frm
}


Carr3028 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
  b5=b4=pixel
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+c
  iter=iter+1
  (imag(z)-cabs(2*real(z)))^3<=16-sqr(real(z)+sin(imag(z)))
  ;SOURCE: 42xcarr.frm
}


Carr3029 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
  b5=abs(conj(pixel)*flip(pixel))+0.4
  b4=b5-conj(0.01/pixel-flip(0.0015/pixel-flip(0.01/b5)))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z*z+(c-1)*(z-c) 
  iter=iter+1
  (imag(z)-cabs(2*real(z)))^3<=32-sqr(real(z)+sin(imag(z)))
  ;SOURCE: 42ycarr.frm
}


Carr3030 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
  b5=abs(conj(pixel^2))*flip(abs(pixel))
  b4=b5-conj(0.01/pixel-flip(0.0015/pixel-flip(0.01/b5)))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z*z+(c-1)*(z-c/8) 
  iter=iter+1
  (imag(z)-cabs(2*real(z)))^3<=32-sqr(real(z)+sin(imag(z)))
  ;SOURCE: 42ycarr.frm
}


Carr3031 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=sin(pixel)/(tanh(0.3/pixel))
  b4=pixel-asin(0.33-pixel^3)
  c=whitesq*(|b4|)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(|b5|)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7956,-0.132)+(conj(c/8))
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3032 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=(flip(pixel)/(tanh(0.3/pixel)))-conj(0.1/pixel-flip(0.01/pixel))
  b4=conj(conj(pixel))-asin(0.33-pixel^5)
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*sqr(|b5|)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7956,-0.132)+(conj(c/8))
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3033 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=(pixel/2-conj(asin(pixel)))
  b4=(flip(pixel)/(flip(0.3/pixel)))-conj(0.1/pixel-flip(0.01/pixel))
  c=whitesq*(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*(b5)-(whitesq==0)*sqr(|b5|)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7956,-0.132)+(conj(c/8))
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3034 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; optimized by Sylvie Gallet
	  ; Modified for IF..ELSE logic by Sylvie Gallet, March 1997
	  ; passes=1 needs to be used with this PHC formula.
  b5 = cabs(0.33-cos(pixel)) / (0.33-tan(3*pixel)) - 0.4
  b4 = (|pixel| - (0,0.001))*(pixel-conj(0.01/pixel))
  IF (whitesq)
    c = b4/6 + (-0.6756,-0.132), z0 = z = b5
  ELSE
    c = - conj(b4)/6 + (-0.6756,-0.132), z0 = z = - sqr(b5)
  ENDIF
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  IF (iter==l1)
    z = 0, c = 0.25*z0 + (-0.6756,-0.132)
  ELSEIF (iter==l2)
    z = 0, c = 0.375*z0 + (-0.6756,-0.132)
  ELSEIF (iter==l3)
    z = 0, c = 0.5625*z0 + (-0.6756,-0.132)
  ELSEIF (iter==l4)
    z = 0, c = 0.84375*z0 + (-0.6756,-0.132)
  ENDIF
  z = z*z + c
  iter = iter+1
  z <= bailout
  ;SOURCE: 42ycarr.frm
}


Carr3035 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=cabs(0.33-cos(pixel))/(0.33-tan(3*pixel))-0.4
  b4=conj(pixel)*(pixel-flip(0.001/pixel))*(pixel-conj(0.01/pixel))\
      *(pixel-conj(0.1/b5))+0.5
  c=whitesq*(b4)-(whitesq==0)*conj(b4)
  z=whitesq*(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c^4)^(real(1)-(1,0))*(0.01+z^2)+(c/6)+(-0.6856,-0.132)
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3036 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=cabs(0.33-cos(newpixel))/(0.33-tan(3*newpixel))-0.4
  b4=conj(newpixel)*(newpixel-flip(0.001/newpixel))*(newpixel-conj(0.01/newpixel))\
      *(newpixel-conj(0.1/b5))+0.5
  c=whitesq*(b4)-(whitesq==0)*conj(b4)
  z=whitesq*(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c^4)^(real(1)-(1,0))*(0.01+z^2)+(c/6)+(-0.6856,-0.132)
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3037 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=cabs(0.33-cosxx(pixel))/(0.33-tan(3*pixel))-0.4
  b4=conj(pixel)*(pixel-flip(0.001/pixel))*(pixel-cabs(0.01/pixel))\
      *(pixel-cabs(0.1/b5))+0.5
  c=whitesq*(b4)-(whitesq==0)*conj(b4)
  z=whitesq*(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7056,-0.112)+(conj(c/8))
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3038 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=cabs(0.33-conj(pixel))/(0.5-cos(5*pixel))-0.4
  b4=conj(pixel)*(pixel-flip(0.001/pixel))*(pixel-cabs(0.01/pixel))\
      *(pixel-cabs(0.1/b5))
  c=whitesq*(b4)-(whitesq==0)*conj(b4)
  z=whitesq*(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7056,-0.112)+(conj(c/8))
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3039 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b4=sinh(tanh(0.63-cos(pixel)))/(conj(2*pixel+0.6))
  b5=(conj(0.33-cos(pixel))/(0.33-tan(2*pixel)))-0.3
  c=whitesq*(b4)-(whitesq==0)*conj(b4)
  z=whitesq*(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7056,-0.112)+(conj(c/8))
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3040 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=pixel*sqr(pixel)-conj(0.01/pixel)-flip(0.015/pixel)+0.5
  b4=(-0.6256,-0.090)/1.5
  c=whitesq*(b4)-(whitesq==0)*conj(b4)
  z=whitesq*conj(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=0.2*z^3+z^2+(-0.7456,-0.132)+(c/8.5)+c/1.75
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3041 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=conj(pixel)*sqr(0.25-pixel)-conj(0.01/pixel)-flip(0.0015/pixel)+0.5
  b4=(-0.6256,-0.090)/1.5
  c=whitesq*(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7256,-0.132)+(conj(c/8))
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3042 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=conj(pixel)*sqr(0.25-pixel^3)-conj(0.01/pixel)\
      -flip(0.0015/pixel)+0.5
  b4=(-0.6256,-0.090)/1.5
  c=whitesq*(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7256,-0.132)+(conj(c/8))
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3043 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=pixel^2.8-conj(pixel/5)
  b4=b5-conj(0.1/b5-flip(0.01/b5))
  c=whitesq*sqr(b4)-(whitesq==0)*(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7256,-0.132)+(conj(c/8))
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3044 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  m1=1/pixel, m=conj(m1), m2=0.125*pixel+cabs(pixel^4.9)
  b5=m2-tanh(pixel/3)^4-conj(sinh(pixel^2.3))+sqr(m/(1.5*m1))
  b4=pixel-0.5
  c=whitesq*sqr(b4)-(whitesq==0)*(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5)^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+c
  c=((z+c/2.125)-0.0325)
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3045 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=conj(pixel^5)-conj(0.1/pixel-flip(0.01/pixel))-0.45
  m1=1/pixel, m=conj(m1), m2=sqr(sqr(0.125*pixel+cabs(pixel^4.9)))
  b4=m2-tanh(pixel)^2-conj(tan(pixel^4.3))\
      +sqr(cos(m/6)/sin(m1/4))-conj(0.1/b5-flip(0.01/b5))
  c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
  z=whitesq*conj(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7256,-0.132)+(conj(c/8))
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3046 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  r=17*pixel/24
  b5=(2*pixel^4)-r-sin(0.8*pixel-flip(0.01/pixel))\
      +conj(0.1275/pixel)+0.15
  b4=(2*pixel^4)-r-sin(0.8*pixel-flip(0.01/pixel))+conj(0.1275/pixel)
  c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7256,-0.132)+(conj(c/8))
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3047 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
  b4=flip(abs(sin(pixel)))-pixel+conj(0.035/pixel)-flip(0.001/pixel)
  b5=abs(4.25*pixel-conj(0.01/pixel-flip(0.001/pixel)))-0.1
  c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
  z=whitesq*flip(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7256,-0.132)+(conj(c/8))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3048 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
  b4=flip(abs(sin(pixel)))-pixel+conj(0.035/pixel)-flip(0.001/pixel)
  b5=abs(conj(conj(4.25*pixel-conj(0.01/pixel-flip(0.001/pixel)))))-0.35
  c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
  z=whitesq*flip(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7256,-0.132)+(conj(c/8))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3049 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
  b4=flip(abs(sin(pixel)))-pixel+conj(0.035/pixel)-flip(0.001/pixel)
  b5=abs(conj(conj(6.25*pixel-conj(0.01/pixel-flip(0.001/pixel)))))-0.1
  c=whitesq*sqr(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*flip(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7256,-0.132)+(conj(c/8))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3050 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
  b4=flip(abs(sin(pixel)))-pixel+conj(0.035/pixel)-flip(0.001/pixel)
  b5=pixel/(tanh(0.3/pixel))+0.3
  c=whitesq*sqr(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*flip(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7256,-0.132)+(conj(c/8))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3051 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
  b5=flip(imag(0.33-pixel))*pixel^3-conj(0.1/pixel-flip(0.01/pixel))-0.4
  b4=pixel/(tanh(0.3/pixel))+0.3
  c=whitesq*sqr(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*flip(b5)-(whitesq==0)*sqr(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7256,-0.132)+(conj(c/8))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3052 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
  b4=flip(imag(0.33-pixel))*pixel^2-conj(0.01/pixel-flip(0.001/pixel))
  b5=pixel/(tanh(0.3/pixel))+0.3
  c=whitesq*abs(b4)-(whitesq==0)*conj(b4)
  z=whitesq*flip(b5)-(whitesq==0)*(|b5|)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7056,-0.132)+(conj(c/8))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3053 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
  b5=pixel-flip(0.01/pixel)-conj(0.1/pixel)+0.285
  b4=conj(flip(sqr(sqr(pixel-conj(0.15/pixel)))))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(conj(c/8))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3054 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=newpixel-flip(0.01/newpixel)-conj(0.1/newpixel)+0.285
  b4=conj(flip(sqr(sqr(newpixel-conj(0.15/newpixel)))))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(conj(c/8))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3055 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel-flip(0.01/newpixel)-conj(0.1/newpixel)
  b5=conj(flip(sqr(sqr(newpixel-conj(0.15/newpixel)))))-flip(0.1/b4)
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(conj(c/8))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3056 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel-flip(0.01/newpixel)-conj(0.1/newpixel)
  b5=conj(flip(sqr(sqr(newpixel-conj(0.15/newpixel)))))-flip(0.1/b4)
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3057 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=newpixel-flip(0.01/newpixel)-conj(0.1/newpixel)
  b4=conj(flip(sqr(sqr(newpixel-conj(0.15/newpixel)))))-flip(0.1/b5)^3
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(|b5|)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(conj(c/8))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3058 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=newpixel-flip(0.01/newpixel)-conj(0.1/newpixel)
  b4=conj(flip(sqr(sqr(newpixel-conj(0.15/newpixel)))))-flip(|0.1/b5|)^5
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(|b5|)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(conj(c/8))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3059 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=cabs(newpixel)-flip(0.01/newpixel)-conj(0.1/newpixel)-0.4
  b4=conj(flip(sqr(sqr(newpixel-conj(0.15/newpixel)))))-flip(|0.1/b5|)^5
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(|b5|)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(conj(c/8))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3060 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=cabs(newpixel)-flip(0.01/newpixel)-conj(|0.1/newpixel|)^3
  b4=conj(flip(sqr(sqr(newpixel-conj(0.15/newpixel)))))-flip(0.1/b5)
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(conj(c/8))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3061 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=flip(conj(abs((newpixel*newpixel)))) 
  b5=newpixel-conj(asin(newpixel+newpixel+0.32))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(conj(c/10))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3062 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=flip(conj(abs((newpixel^0.5)))) 
  b5=flip(imag(newpixel))-conj(asin(newpixel*3+0.32))\
      -flip(0.01/b4-conj(0.1/b4))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(cabs(|c/10|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3063 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=flip(conj(abs((newpixel^0.5)))) 
  b5=conj(newpixel*newpixel)/flip(1-newpixel)
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(cabs(|c/10|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3064 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=flip(conj(abs((newpixel^0.5)))) 
  b5=flip(newpixel*newpixel)/conj(1-newpixel)
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(cabs(|c/10|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3065 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(1+1.5/newpixel)/(cosxx(2/newpixel-0.25))
  b5=(flip(newpixel*newpixel)/conj(1-newpixel))+0.4
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(cabs(|c/10|))
  iter=iter+1
  z<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3066 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=newpixel-flip(sin(0.1/newpixel))-conj(sin(0.01/newpixel))
  b4=(0.33-cos(newpixel))/(0.33-tan(newpixel))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(cabs(|c/10|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3067 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=newpixel^2-flip(sin(0.1/newpixel))-conj(sin(0.01/newpixel))
  b4=(0.50-cos(newpixel))/(0.33-cosxx(newpixel))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(cabs(c/10))|
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3068 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=newpixel-conj(0.1/newpixel)+0.1
  b4=newpixel-flip(0.1/newpixel)-conj(0.001/newpixel)
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(cabs(c/10))|
   ;z=(|z|/5)+z*z+c-0.49/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3069 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=flip(conj(abs((newpixel^2))))+0.45
  b4=newpixel-conj(0.01/newpixel)-flip(0.1/newpixel-conj(0.1/b5))
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(cabs(c/10))|
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3070 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=abs(conj(newpixel)*flip(newpixel))+0.15
  b4=b5^3-conj(0.1/newpixel-flip(0.015/newpixel-flip(0.1/b5)))+0.4
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(cabs(c/10))|
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3071 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(newpixel^5+0.4)-cos(0.01/newpixel)
  b4=0.55*((2*newpixel-flip(0.010/newpixel)-conj(0.10/newpixel)))
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(cabs(c/10))|
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3072 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
		  ; Corrected typo (0.4.75 to 0.475), G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(newpixel^5+0.475)-cos(0.01/newpixel)
  b4=b5-conj(0.1/b5-flip(0.01/b5))
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(flip(c/10))|
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3073 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5= tanh(newpixel) - 5*newpixel*((0.3,0.6)+newpixel)
  b4=b5^2-conj(0.1/b5-flip(0.01/b5))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(flip(c/10))|
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}


Carr3074 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=cabs(newpixel/2)-newpixel*((0.3,0.6)+newpixel)-conj(0.1/newpixel)
  b4=b5^2-conj(0.1/b5-flip(0.01/b5))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(flip(c/10))|
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3075 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=cabs(newpixel/2)-newpixel*((0.3,0.6)+newpixel)-conj(0.1/newpixel)
  b5=b4^2-conj(0.1/b4-flip(0.01/b4))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(flip(c/10))|
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3076 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=((newpixel)-conj(asin(newpixel+newpixel+0.39)))
  b5=(newpixel/(cabs(0.3/newpixel)))+0.15
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(flip(c/10))|
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3077 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=((newpixel)-conj(asin(newpixel+newpixel+0.39)))
  b5=((newpixel/(cabs(0.3/newpixel)))+0.15)+cabs(0.1/b4)*conj(0.1/b4)
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(flip(c/10))|
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3078 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(0.33-cos(newpixel))/(0.33-tan(2*newpixel))+0.75
  b5=((newpixel/(cabs(0.3/newpixel)))+0.15)+cabs(0.1/b4)*conj(0.1/b4)+0.13
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(flip(c/10))|
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3079 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=((newpixel^4)-conj(asin(newpixel+newpixel+0.39)))
  b5=((newpixel^5/(abs(0.1/newpixel)))+0.15)+cabs(0.1/b4)*conj(0.1/b4)
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(flip(c/10))|
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3080 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r=conj(newpixel/2)
  b4=(3.5*newpixel^5)-r-sin(0.08-flip(0.01/newpixel))+conj(0.0535/newpixel)
  b5=(3.5*newpixel^5)-r-sin(0.08-flip(0.01/newpixel))+conj(0.0535/newpixel)-0.197
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(abs(c/12))|
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3081 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r=conj(newpixel/2)
  b4=(3.5*newpixel^5)-r-sin(0.08-flip(0.01/newpixel))+conj(0.0535/newpixel)
  b5=(newpixel^5)+r-sin(0.08-flip(0.01/newpixel))+conj(0.1535/newpixel)+0.197
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(flip(c/12))|
  c=((z+c/2.125)-0.0325)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3082 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  r=8*newpixel, j=newpixel
  b4=sinh(newpixel)-1/log(2*j+0.0450/j-conj(0.010/-newpixel)\
      -flip(0.050/newpixel)+4.6/r)
  b5=newpixel^2.3-conj(0.1/newpixel)-0.15
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(flip(c/12))|
  c=((z+c/2.125)-0.0325)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3083 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel
  b5=flip(abs(0.33-newpixel))*sqr(newpixel)-conj(0.10/newpixel)-flip(0.010/newpixel)
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*abs(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(cabs(|c/10|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3084 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=newpixel^3+0.4
  b4=cosxx(0.33-newpixel)
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7450,-0.130)+(flip(|c/12|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3085 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=newpixel^3-0.4
  b4=cosh(0.33-conj(newpixel))
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7450,-0.130)+(flip(|c/12|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3086 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=flip(0.66-newpixel)^3+0.2
  b4=abs(0.33-(newpixel))
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7450,-0.130)+(|c/12|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3087 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=pixel^3-conj(0.1/pixel)-flip(0.01/pixel)^2+0.1/pixel
  b4=(b5*b5/(exp(pixel)))*b5-conj(0.1/pixel-flip(0.01/pixel))
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+c
  iter=iter+1
  (2-z)<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3088 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel^3-conj(0.1/newpixel)-flip(0.01/newpixel)^2+0.1/newpixel+0.4
  b5=(b4*b4/(exp(newpixel)))*b4-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3089 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=flip(0.5+newpixel)
  b5=(b4^3*b4/(exp(newpixel)))*b4-conj(0.1/newpixel-flip(0.01/newpixel))-0.45
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/12|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3090 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=flip(0.5+newpixel)^9-conj(0.1/newpixel-flip(0.01/newpixel))+0.435
  b4=(flip(b5)*b5/(exp(newpixel)))*b5-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*(b4)-(whitesq==0)*(|b4|)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c^4)^(real(1)-(1,0))*(0.01+z^2)+(c/6)+(-0.7456,-0.132)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3091 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(1-newpixel*(cabs(1.65*newpixel-flip(0.010/newpixel)-conj(0.10/newpixel))))-0.5
  b5=newpixel^3-(1/log(newpixel-0.25/cos(conj(sinh(0.1/newpixel))))^5)
  c=whitesq*(b4)-(whitesq==0)*(|b4|)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/12|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3092 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
		  ; Revised for Fractint v20 by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel^7-(0.2*exp(0.2-newpixel^(-0.025)))
  b5=cabs(b4)^5-conj(0.1/newpixel-flip(0.01/b4))-0.45
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z*z+(c-0.75-conj(0.05/newpixel))*z-(c)^3 
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3093 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
		  ; Revised for Fractint v20 by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel^7-(0.2*exp(0.2-newpixel^(-0.025)))
  b5=cabs(b4)^2-conj(0.1/newpixel-flip(0.01/b4))-0.45
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/12|)^2
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3094 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
		  ; Revised for Fractint v20 by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=conj(conj(newpixel))^exp(0.2)+(0.2*exp(0.2-newpixel^(-0.025)))
  b4=cabs(b5)^3-conj(0.1/newpixel-flip(0.01/b5))^3
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3095 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; Modified for if..else logic 3/17/97 by Sylvie Gallet
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  IF (whitesq)
    c = (-0.7456,0.2)
    z = zorig = flip(cabs(newpixel)) * cabs(newpixel*newpixel) - conj(0.13/newpixel)\
	+ tanh(0.1/newpixel) - sinh(0.1/newpixel) - flip(0.1/newpixel)
    c = (-0.743736,-0.13167) - c/600 + (|c/12|)^2
  ELSE
    c = (0.7456,-0.2)
    z = zorig = -flip(cabs(newpixel)) * cabs(newpixel*newpixel) + conj(0.13/newpixel)\
	- tanh(0.1/newpixel) + sinh(0.1/newpixel) + flip(0.1/newpixel)
    c = (-0.743736,-0.13167) - c/600 + (|c/12|)^2
  ENDIF
  bailout = 16, iter = 0
  :
  IF (iter == p1)
    z = 0, c = 1.5 * zorig
    c = (-0.743736,-0.13167) - c/600 + (|c/12|)^2
  ELSEIF (iter == imag(p1))
    z = 0, c = 2.25 * zorig
    c = (-0.743736,-0.13167) - c/600 + (|c/12|)^2
  ELSEIF (iter == p2)
    z = 0, c = 3.375 * zorig
    c = (-0.743736,-0.13167) - c/600 + (|c/12|)^2
  ELSEIF (iter == imag(p2))
    z = 0, c = 5.0625 * zorig
    c = (-0.743736,-0.13167) - c/600 + (|c/12|)^2
  ENDIF
  z = z*z*(0.9975 - 0.0005*z) + c
  iter = iter + 1
  |z| <= bailout
  ;SOURCE: 42zcarr.frm
}


Carr3096 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.13/newpixel)+flip(0.1/newpixel)
  b4=(-0.7456,0.2)
  b5=flip(cabs(newpixel))*cabs(newpixel^2)+tanh(0.1/newpixel)\
      -sinh(0.1/newpixel)-flip(b3)-0.05
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*conj(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/12|)^2-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)\
      +(c/10.5)+c/1.75)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3097 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=abs(0.13/newpixel)+flip(newpixel/3)
  b4=(0.3,0.6)+flip(0.01/newpixel)+1/b3
  b5=flip(cabs(newpixel^3))*conj(conj(newpixel^2))\
      -tanh(0.1/newpixel)+sinh(0.1/newpixel)-flip(b3)-0.185
  c=whitesq*(b4)-(whitesq==0)*(b4+conj(0.1/newpixel))
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/12|)^2-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)\
     +(c/10.5)+c/1.75)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3098 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.13/newpixel)+flip(0.1/newpixel)
  b4=(0.3,0.6)^3-0.3
  b5=flip(abs(newpixel))*cabs(newpixel^3)-conj(0.1/newpixel)-flip(0.01/newpixel)+b3
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)\
     +(|c/12|)^2-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3099 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.13/newpixel)+flip(0.1/newpixel)
  b4=(-0.7456,0.2)
  b5=conj(cabs(newpixel))*cabs(newpixel^2)+tanh(0.1/newpixel)-sinh(0.1/newpixel)-b3
  c=whitesq*(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)\
     +(|c/12|)^2-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3100 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.13/newpixel)+flip(0.1/newpixel)
  b4=(-0.7456,0.2)
  b5=flip(cabs(newpixel))*cabs(newpixel^2)+tan(0.1/newpixel)-sin(0.1/newpixel)-b3
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)\
      +(|c/9|)^2-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3101 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G. Martin 6/13/99
   ; passes=1  or Boundry Trace need to be used with this PHC formula.
  newpixel=-abs(real(pixel))+flip(imag(pixel))
   ;pixel=real(pixel)-flip(abs(imag(pixel)))
  b3=conj(0.13/newpixel)+flip(0.1/newpixel)
  b4=(-0.7456,0.2)/2
  b5=flip(flip(cabs(newpixel^3)))*conj(cabs(newpixel^2))\
      +tan(0.1/newpixel)-sin(0.1/newpixel)-b3
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)\
     +(|c/9|)^2-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3102 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
	     ; Converted to IF..ELSE logic by Sylvie Gallet, 02/15/98
	     ; passes=1 needs to be used with this PHC formula.
             ; Added variable "newpixel". G. Martin 6/13/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  IF (whitesq)
    c = sqr(abs(newpixel))*abs(newpixel) - 0.65
    c1 = sqr(c/9) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + c/1.5
    z = zorig = sqr(newpixel)*newpixel
  ELSE
    c = - sqr(abs(newpixel))*abs(newpixel) + 0.65
    c1 = sqr(c/9) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + c/1.5
    z = zorig = - sqr(newpixel)*newpixel
  ENDIF
  imagp1 = imag(p1), imagp2 = imag(p2), bailout = 16, iter = 0
  :
  IF (iter == p1)
    z = 0, c1 = sqr(zorig/6) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + zorig
  ELSEIF (iter == imagp1)
    z = 0, c1 = sqr(0.25*zorig) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + 1.5 * zorig
  ELSEIF (iter == p2)
    z = 0, c1 = sqr(0.375*zorig) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + 2.25 * zorig
  ELSEIF (iter == imagp2)
    z = 0, c1 = sqr(5.0625*zorig) + (-0.7456,-0.132)
    c2 = (-0.7456,-0.132) + 3.375 * zorig
  ENDIF
  z2 = z*z, z = z2 - 0.0025 * |0.2*z2*z + z2 + c2| + c1
  |z| <= bailout
  ;SOURCE: 42zcarr.frm
}


Carr3103 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(tanh(newpixel)^3/(cosxx(0.1-newpixel))^1.3)-0.5
  b4=newpixel^3
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(c/9)^2-0.0025*(|0.2*z^3+z^2+(-0.7456,-0.132)\
      +(c/10.5)+c/1.75|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3104 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(tanh(newpixel)^3/(cotan(0.1-newpixel))^1.3)-0.5
  b4=newpixel^3
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(c/9)^2-0.0025*(|0.2*z^3+z^2+(-0.7456,-0.132)\
     +(c/10.5)+c/1.75|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3105 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(abs(newpixel)^3/(cotan(0.1-newpixel))^1.3)-0.5
  b4=newpixel^3
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(c/9)^2-0.0025*(|0.2*z^3+z^2+(-0.7456,-0.132)\
     +(c/10.5)+c/1.75|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3106 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(conj(abs(newpixel))^3/(cotan(0.1-newpixel))^1.3)-0.5
  b4=(tanh(newpixel)^3/(cotan(0.1-newpixel))^1.3)
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(c/9)^4-0.0025*(|0.2*z^3+z^2+(-0.7456,-0.132)\
     +(c/10.5)+c/1.75|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3107 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(conj(abs(newpixel))^3/(flip(cotan(0.1-newpixel)))^1.3)-0.4
  b4=(tanh(newpixel)^3/(cotan(0.1-newpixel))^1.3)
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5-conj(0.1/newpixel))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/9|)^4-0.0025*(|0.2*z^3+z^2+(-0.7456,-0.132)\
     +(c/10.5)+c/1.75|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3108 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(flip(abs(newpixel))^3/(flip(cotan(0.1-newpixel)))^1.3)+0.4
  b4=b5^2/0.33*(conj(newpixel)^3/(cotan(0.1-newpixel))^1.3)-0.4
  c=(whitesq*(b4)-(whitesq==0)*(b4))
  z=(whitesq*(b5)-(whitesq==0)*(b5))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)\
     +(|c/9|)^4-0.0025*(|0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3109 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(flip(abs(newpixel))^3/(flip(cotan(0.1-newpixel)))^1.3)+0.4
  b5=conj(b4)/1.13*(conj(newpixel)^3/(cotan(0.1-newpixel))^1.3)+0.4
  c=(whitesq*(b4)-(whitesq==0)*(b4))
  z=(whitesq*(b5)-(whitesq==0)*(b5))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)\
     +(|c/9|)^4-0.0025*(|0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3110 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(flip(newpixel)*conj(newpixel)*cabs(newpixel)/(cotanh(0.1-newpixel)))\
     -0.35-conj(0.01/newpixel)
  b4=((flip(newpixel^2)*conj(newpixel/2)*cabs(newpixel))/(flip(abs(0.33-newpixel))))
  c=(whitesq*(b4)-(whitesq==0)*(b4))
  z=(whitesq*(b5)-(whitesq==0)*(b5))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)\
     +(|c/9|)^4-0.0025*(|0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3111 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=newpixel^3^exp(0.02*newpixel)+0.25
  b4=cabs(b5^6)/(cotanh(0.1-newpixel))+conj(0.1/newpixel)
  c=whitesq*(b4)-(whitesq==0)*(|b4|)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)\
     +(c/9)^4-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3112 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel^3^exp(0.02*newpixel)+0.25
  b5=(cabs(b4^6)/(cotanh(0.1-newpixel))+conj(0.1/newpixel))+flip(0.1/b4)
  c=whitesq*(b4)-(whitesq==0)*(|b4|)
  z=conj(whitesq*(b5)-(whitesq==0)*(b5))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)\
     +(|c/9|)^4-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3113 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=flip(newpixel^3)^exp(0.025*newpixel)+0.25
  b5=(cabs(b4^6)/(cosxx(0.1-newpixel))+conj(0.1/newpixel))+flip(0.1/b4)
  c=whitesq*(b4)-(whitesq==0)*(|b4|)
  z=conj(whitesq*(b5)-(whitesq==0)*(b5))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)\
     +(|c/9|)^4-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3114 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=conj(newpixel^3)^exp(0.025*newpixel)+0.25
  b5=(flip(b4^6)/(cosxx(0.1-newpixel))+conj(0.1/newpixel))+flip(b4)
  c=whitesq*(b4)-(whitesq==0)*(|b4|)
  z=conj(whitesq*(b5)-(whitesq==0)*(b5))
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)\
     +(|c/9|)^4-0.0025*(0.2*z^3+z^2+(-0.7456,-0.132)+(c/10.5)+c/1.75)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3115 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(1/log(exp(conj(conj(newpixel^450))-cosh(conj(conj(newpixel^50.5))))))
  b5=(flip(flip(conj(newpixel^3)))+0.5)-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*(|b4|)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)\
     +(|c/9|)^4-0.0038*(|z*z*z/5+z*z+2*c^2+(-0.7456,-0.132)|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3116 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.13/newpixel)+flip(0.1/newpixel)
  b5=flip(cabs(newpixel))*cabs(newpixel^2)+tanh(0.1/newpixel)-sinh(0.1/newpixel)-b3
  b4=(flip(flip(conj(newpixel^7)))+0.5)\
      -conj(0.1/newpixel-flip(0.01/newpixel))+b5/2.5
  c=whitesq*(|b4|)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)\
     +(|c/9|)^4-0.0038*(|z*z*z/5+z*z+2*c^2+(-0.7456,-0.132)|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3117 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.1/newpixel-flip(0.01/newpixel))
  b5=conj(cabs(newpixel^3))*cabs(newpixel^2)\
      +tanh(0.1/newpixel)-sinh(0.1/newpixel)-b3+0.4
  b4=(flip(flip(conj(newpixel^7)))+0.5)\
      +conj(0.1/newpixel+flip(0.01/newpixel))+b5/2.5
  c=whitesq*(|b4|)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)\
     +(|c/9|)^4-0.0038*(|z*z*z/5+z*z+2*c^2+(-0.7456,-0.132)|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3118 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.1/newpixel-flip(0.01/newpixel))
  b5=conj(cabs(newpixel^3))*cabs(newpixel^2)\
     +tanh(0.1/newpixel)-sinh(0.1/newpixel)+b3+0.55
  b4=(flip(abs(conj(newpixel^6)))+0.5)\
     +conj(0.1/newpixel+flip(0.01/newpixel))+b5/2+0.55
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,0.2)\
     +(|c/9|)^4-0.0038*(|z*z*z/5+z*z+2*c^2+(-0.7456,-0.132)|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3119 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(newpixel^3-((tan(0.10/newpixel)-sqr(flip(0.0250/newpixel))))/3.5)+0.45
  b4=newpixel-((0.050/newpixel)-cabs(0.10/newpixel)+conj(0.0250/newpixel))/5
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/9|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3120 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(conj(newpixel^3)-((tan(0.10/newpixel)\
      -sqr(flip(0.0150/newpixel))))/3.5)+0.45
  b4=flip(newpixel)-((0.050/newpixel)-cabs(0.10/newpixel)+conj(0.0250/newpixel))/5
  c=whitesq*(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5-0.01/newpixel)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/9|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}


Carr3121 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=((sin(conj(newpixel))/((tanh(conj(-0.81256,-0.189)))/(conj(cabs(newpixel)))))+0.35)^1.5
  b4=flip(conj(newpixel*newpixel))/(conj(newpixel))
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/9|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3122 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=((flip(conj(newpixel))/((cabs(conj(-0.81256,-0.189)))/(conj(cabs(newpixel)))))+0.35)^1.5
  b4=flip(conj(newpixel*newpixel))/(cabs(conj(newpixel)))
  c=whitesq*(b4)-(whitesq==0)*flip(cabs(b4^3))
  z=whitesq*(b5)-(whitesq==0)*(b5)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=cabs(5.0625*z) 
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/9|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3123 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=cabs(newpixel/2)-newpixel*((0.3,0.6)+newpixel)-conj(0.1/newpixel)
  b5=b4^2-conj(0.1/b4-flip(0.01/b4))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2), c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/9|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3124 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=abs(newpixel^3)-newpixel*((0.3,0.6)+newpixel)-conj(0.1/newpixel)-0.15
  b4=b5^2-conj(0.1/b5-flip(0.01/b5))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2), c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/9|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3125 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel^7-(0.2*exp(0.2-newpixel^(-0.025)))
  b5=cabs(b4)^2-conj(0.1/newpixel-flip(0.01/b4))-0.45
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(|z/2|), c2=2.25*conj(z/2), c3=3.375*flip(z/2)^6, c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/8|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3126 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel^2-(0.2*cabs(0.2-newpixel^(-0.025)))
  b5=abs(b4)^2-cabs(0.1/newpixel-flip(0.01/b4))-0.45
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(|z/2|), c2=2.25*conj(z/2), c3=3.375*flip(z/2)^6, c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/8|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3127 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=cabs(b4)*abs(3*b4*b4-0.1/newpixel)-0.14
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(|z/2|), c2=2.25*conj(z/2), c3=3.375*flip(z/2)^6, c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/8|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3128 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=conj(newpixel)*abs(newpixel)*tan(newpixel)-conj(0.1/newpixel)
  b4=1/sinh(1/(b5*b5))
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(|z/2|), c2=2.25*conj(z/2)
  c3=3.375*flip(z/2)^6, c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(c/8)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}


Carr3129 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=conj(newpixel)*abs(newpixel)*flip(newpixel)-flip(0.1/newpixel)+0.13
  b4=conj(1/sinh(1/(b5^3)))
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(|z/2|), c2=2.25*conj(z/2), c3=3.375*flip(z/2)^6, c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(c/8)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3130 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=conj(newpixel)*abs(newpixel)*tan(newpixel)*flip(newpixel/2)-conj(0.1/newpixel)-0.25
  b4=1/sinh(1/(b5*b5))
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(|z/2|), c2=2.25*conj(z/2), c3=3.375*flip(z/2)^6, c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(c/8)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3131 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=flip(conj(newpixel^2)*abs(newpixel)*tan(newpixel)-conj(0.1/newpixel))+0.1
  b4=1/sinh(1/(b5/2*b5))
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(|z/2|), c2=2.25*conj(z/2), c3=3.375*flip(z/2)^6, c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(c/8)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3132 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=conj(newpixel)*abs(newpixel)*tan(newpixel)-conj(0.1/newpixel)
  b5=flip(cosxx(newpixel^3))*abs(conj(newpixel))+0.25
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2)^6, c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/8|)+c/8
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3133 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=newpixel^4-conj(0.1/newpixel)-flip(0.1/newpixel)^3+0.3
  b4=b5*flip(b5)
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2), c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+c/8
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3134 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=abs(newpixel^5)-newpixel*((0.3,0.6)+newpixel)-conj(0.1/newpixel)+0.25
  b4=b5^2-conj(0.1/b5-flip(0.01/b5))^2-conj(0.1/newpixel-flip(0.01/newpixel))^3
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2), c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.144)+(c/10)-(|0.0035/c/21|) 
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3135 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=conj(newpixel)*abs(newpixel)*tan(newpixel)*cabs(newpixel)-conj(0.1/newpixel)
  b4=1/sinh(1/(b5*b5))/2
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5^2
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2), c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.132)+(c/8)-(0.0035/c/21) 
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3136 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=conj(newpixel^2)*abs(newpixel^2)*tan(newpixel^2)*cabs(newpixel^2)-conj(0.1/newpixel)
  b4=0.1/sinh(0.1/(b5*b5))/2
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5^2
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2), c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.132)+(c/8)-(0.0035/c/21) 
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3137 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=conj(newpixel^2)*tanh(newpixel^2)*flip(newpixel^2)*cabs(newpixel^2)-flip(0.06/newpixel)
  b4=0.1/sinh(0.1/(b5*b5))/2
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5^2
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2), c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.132)+(c/8)-(0.0035/c/21) 
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3138 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=((newpixel+conj(0.125/newpixel))^3)*abs(newpixel)
  b4=b5-0.1/b5
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5^2
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2), c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.132)+(c/8)+(0.0065/c/21) 
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3139 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=conj(newpixel)*cabs(newpixel)-0.3
  b4=flip(abs(newpixel))
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5^2
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2), c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.132)+(c/8)+(0.0035/c/21) 
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3140 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel-(|conj(0.1/newpixel)|)
  b5=newpixel^3-(|flip(0.01/newpixel)|)+0.4
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5^2
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2), c4=5.0625*abs(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/8|)-0.0025/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3141 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  pixinv = 0.01/newpixel
  p0 = (-0.7456,-0.132) - 0.25*pixinv
  IF (whitesq)
    c = | (newpixel - |pixinv|) * 0.125 | + p0
    z = zorig = newpixel*sqr(newpixel) - |pixinv - conj(10*pixinv)| + 0.4
  ELSE
    c = | (- newpixel + |pixinv|) * 0.125 | + p0
    z = zorig = - sqr(newpixel*sqr(newpixel) - |pixinv - conj(10*pixinv)| + 0.4)
  ENDIF
  imagp1 = imag(p1), imagp2 = imag(p2), bailout = 16, iter = 0:
  IF (iter == p1)
    z = 0, c = |0.09375*zorig| + p0
  ELSEIF (iter == imagp1)
    z = 0, c = |0.140625*zorig| + p0
  ELSEIF (iter == p2)
    z = 0, c = |0.2109375*zorig| + p0
  ELSEIF (iter == imagp2)
    z = 0, c = |0.6328125*zorig| + p0
  ENDIF
  iter = iter + 1
  z = z*z + c
  |z| <= bailout
  ;SOURCE: 0from_ml.frm
}


Carr3142 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=flip(newpixel)-(|conj(0.05/newpixel)|)
  b5=abs(newpixel^3)-(|flip(0.01/newpixel-conj(0.3/newpixel))|)+0.4
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5^2
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2), c4=5.0625*abs(z) 
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/8|)-0.0025/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3143 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=newpixel^4-((abs(newpixel/4))/(conj(newpixel/2)))^3
  b4=flip(newpixel^2)*cabs(newpixel)-(|flip(0.01/newpixel-conj(0.1/newpixel))|)+0.1
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5^2
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2), c4=5.0625*abs(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(c/8)-0.0025/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3144 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  m3=cabs(newpixel)*conj(conj(newpixel))
  b5=(m3-conj(0.10/newpixel))-0.15
  b4=(-1.099,-0.0049)/2
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5^2
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2), c4=5.0625*abs(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(c/8)-0.0025/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3145 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G. Martin 6/13/99
   ; passes=1 needs to be used with this PHC formula.
   ; Converted to IF..ELSE logic by Sylvie Gallet, 11/30/97
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c0 = (-0.7456,-0.132) - 0.0025/newpixel
  IF (whitesq)
    c = (-0.0466,-0.00825) + c0
    z = zorig = |newpixel|*newpixel*newpixel + conj(0.10/newpixel)
  ELSE
    c = (0.0466,0.00825) + c0
    z = zorig = - sqr(|newpixel|*newpixel*newpixel + conj(0.10/newpixel))
  ENDIF
  imagp1 = imag(p1), imagp2 = imag(p2), bailout = 16, iter = 0 :
  IF (iter == p1)
    z = 0, c = 0.09375*cabs(zorig) + c0
  ELSEIF (iter == imagp1)
    z = 0, c = 0.140625*conj(zorig) + c0
  ELSEIF (iter == p2)
    z = 0, c = 0.2109375*flip(zorig) + c0
  ELSEIF (iter == imagp2)
    z = 0, c = 0.6328125*abs(zorig) + c0
  ENDIF
  iter = iter + 1
  z = z*z + c
  |z| <= bailout
  ;SOURCE: 97msg.frm
}


Carr3146 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(-0.8006,-0.1645)/2
  b5=(flip(flip(newpixel))^3-1/(atan(0.1/newpixel)-cabs(acos(0.2/newpixel))))
  m4=(-0.7456,-0.132)
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2), c4=5.0625*abs(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+m4+(c/8)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3147 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=(conj(abs(newpixel))^3-0.25/(atan(0.1/newpixel)-cabs(acos(0.2/newpixel))))
  m4=(-0.7456,-0.132)
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(z/2), c2=2.25*conj(z/2), c3=3.375*flip(z/2), c4=5.0625*abs(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+m4+(c/8)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3148 (YAXIS) {; Modified Sylvie Gallet formula.
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=((tan(newpixel)^2+cotan(newpixel)^2)/(sin(newpixel)^2-cos(newpixel)^2))
  b4=newpixel-0.1/b5
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/8|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3149 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=((cabs(newpixel)^3+cotan(newpixel)^2)/(sin(newpixel)^2-cos(newpixel)^3))+0.3
  b4=newpixel-0.1/b5-conj(0.1/newpixel)-flip(0.01/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/8|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3150 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(sin(newpixel)-tan(newpixel))/(cos(newpixel)-cotan(newpixel))
  b4=newpixel-0.1/b5-conj(0.1/newpixel)-flip(0.01/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/8|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3151 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(sin(newpixel)-tan(newpixel))/(sin(newpixel^1.5)-cotan(newpixel))*2
  b4=newpixel-0.1/b5-conj(0.1/newpixel)-flip(0.01/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/8|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3152 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(sin(newpixel)-tan(newpixel))/(sin(newpixel)-abs(newpixel^4))
  b4=newpixel^2-0.1/b5-conj(0.1/newpixel)-flip(0.01/newpixel)
  c=whitesq*b4-(whitesq==0)*(|b4|)
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/8|)/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3153 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(sin(newpixel)-abs(newpixel))/(sin(newpixel)-tan(newpixel^4))
  b4=newpixel^2-0.1/b5-conj(0.1/newpixel)-flip(0.01/newpixel)
  c=whitesq*b4-(whitesq==0)*(|b4|)
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/8|)/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3154 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.1/newpixel-flip(0.01/newpixel))
  b5=newpixel^3-0.2*((cabs(newpixel-b3)^3+cotan(0.3-newpixel)^2)/(sin(newpixel)^2-cos(0.3-newpixel+b3)^3))-0.4
  b4=newpixel^2-0.1/b5-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*(|b4|)
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/8|)/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3155 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.1/newpixel-flip(0.01/newpixel))
  b2=((cabs(newpixel-b3^3)^3+cotan(0.3-newpixel)^2)/(sin(newpixel)^2-cos(0.3-newpixel+b3)^3))-0.4
  b5=cabs(newpixel^3)-0.2*b2
  b4=newpixel^2-0.1/b5-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/8|)/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3156 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=abs(conj(newpixel)*flip(conj(newpixel^2)))
  b4=b5^3-conj(0.1/newpixel-flip(0.015/newpixel-flip(0.1/b5)))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+c/8
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3157 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(newpixel-conj(conj(0.10/newpixel))-cotan(cotan(0.1/-newpixel)))
  b4=(newpixel+cosxx((sqr(cos(0.1-newpixel+conj(0.1-newpixel))))))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+c/8
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3158 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(newpixel^4-conj(conj(0.10/newpixel))-cotan(cotan(0.1/-newpixel)))
  b4=(newpixel+cosxx((sqr(cos(0.1-newpixel+conj(0.1-newpixel))))))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+c/8
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3159 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.1/newpixel-flip(0.01/newpixel))
  b5=newpixel^5+0.4-abs(abs(b3))+0.35
  b4=0.55*((newpixel^3-flip(0.010/newpixel-conj(0.10/newpixel))))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+c/8
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3160 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.1/newpixel-flip(0.01/newpixel))
  b4=newpixel-conj(newpixel/5)
  b5=b4^3-flip(0.099/newpixel)
  c=whitesq*b4-(whitesq==0)*(|b4|)
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+c/8
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3161 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=b4^3-abs(0.099/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/8|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43acarr.frm
}


Carr3162 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.1/newpixel-flip(0.01/newpixel))
  b4=newpixel+b3
  b5=abs(b4^3)+cabs(b3)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/8|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3163 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.1/newpixel-flip(0.01/newpixel))
  b4=newpixel+cabs(b3)
  b5=abs(b4^3)+abs(b3)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/8|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3164 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.1/newpixel-flip(0.01/newpixel))
  b4=conj(newpixel^3)+cabs(b3)+0.15
  b5=flip(abs(b4^3))+abs(b3/0.5)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/8|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3165 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(-0.7456,-0.132)
  b5=cabs(conj(conj(2*newpixel^12)))-flip(0.1/newpixel)-conj(0.1/newpixel)+0.35
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3166 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(|newpixel|)-conj(0.1/newpixel-flip(0.01/newpixel-0.1/newpixel))
  b5=conj(conj(newpixel))*(newpixel^2)+tanh(0.1/newpixel)-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+flip(|c/10|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3167 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.1/newpixel)+flip(0.01/newpixel)
  b5=newpixel-b3-0.23
  b4=flip(cosxx(0.25-newpixel^3))*cabs(flip(1.5*newpixel^9))-tanh(0.1/newpixel)+sinh(0.1/newpixel)-b3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+flip(|c/10|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3168 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=flip(abs(conj(0.075/newpixel)+flip(0.075/newpixel)))
  b4=(0.37,-0.2991)
  b5=flip(cosxx(0.25*newpixel^3))*abs(conj(0.5*newpixel^10))-tanh(0.1/newpixel)+sinh(0.1/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+flip(|c/10|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3169 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=((0.37,-0.2901)/1.0025)-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=(newpixel^4*(0.25-newpixel)+0.25)/(cosxx(0.1-newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+abs(|c/10|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3170 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(conj(newpixel^3)*((0.37,-0.2901)/1.0025)-conj(0.1/newpixel-flip(0.01/newpixel)))
  b5=abs(newpixel^4*(0.25-newpixel)+0.25)/(cos(0.5-newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|abs(|c/10|)|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3171 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(conj(newpixel^4*(0.25-newpixel)+0.25)/(cos(0.5-newpixel)))+0.15
  b4=cabs(abs(newpixel^8*(0.25-newpixel)+0.25)/(cos(0.5-newpixel)))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|abs(|c/10|)|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3172 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel^2+0.1/newpixel-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=((newpixel^3-conj(0.1/newpixel)^3-0.35+exp(0.0025/newpixel))/(cos(0.1-newpixel)))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3173 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(|newpixel|)^2+0.1/newpixel-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=((newpixel^3-conj(0.1/newpixel)^3-0.35+exp(0.0025/newpixel))/(cosxx(|0.1-newpixel|)))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3174 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b4=(|newpixel|)^2+0.1/newpixel-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=((newpixel^3-conj(0.1/newpixel-flip(0.01/newpixel))^3-0.35+exp(0.0025/newpixel))/(cosxx(|0.1-newpixel|)))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+real(d/100*newpixel)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3175 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b3=(exp(0.0025/newpixel))/(cosxx(|0.1-newpixel|))
  b4=(|newpixel|)^2+0.1/newpixel-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=((newpixel^4-conj(0.1/newpixel-flip(0.01/newpixel))^3)+b3)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)-flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3176 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b3=(exp(0.0025/newpixel))/(cosxx(|0.1-newpixel|))
  b4=newpixel^5-conj(newpixel/5)
  b5=b4/2-b3+0.5
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3177 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b3=(exp(0.0025/newpixel))/(cosxx(|0.1-newpixel|))
  b4=newpixel^5-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=abs(b4/2)-b3+0.5-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3178 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b5=abs(abs(0.5+conj(newpixel)/2))^3-conj(0.1/newpixel)^10-flip(0.1/newpixel)^10-0.3
  b4=tanh(sinh(0.5+newpixel/2))^3-conj(0.1/newpixel)-flip(0.01/newpixel)+0.25
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3179 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b3=(((exp(0.0025/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b4=conj(newpixel^3)-newpixel+conj(0.1/newpixel)
  b5=cabs(newpixel/2)-newpixel^5+0.4+conj(0.1/b3)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3180 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b3=(((exp(0.0025/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b5=conj(newpixel^3)-abs(newpixel)^8+conj(0.1/newpixel)-0.25
  b4=cabs(newpixel/2)-newpixel^5+conj(0.1/b3)+0.4
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3181 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b3=(((exp(0.0025/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b5=flip(newpixel^3)-abs(newpixel)^8-conj(0.1/newpixel-flip(0.01/newpixel))+0.15
  b4=cabs(newpixel/2)-newpixel^5+conj(0.1/b3)+0.4
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3182 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b5=(newpixel^5/(cosxx(0.1-1/newpixel)))+0.12
  b4=conj(newpixel)*newpixel^2-conj(conj(0.10/newpixel))^(-3*newpixel)-flip(flip(0.010/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3183 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b3=(((exp(0.0025/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b5=(abs(newpixel)^5/(cosxx(0.1-0.1/newpixel)))-b3+0.39
  b4=conj(newpixel)*newpixel^2-conj(conj(0.10/newpixel))^(-3*newpixel)-flip(flip(0.010/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3184 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b3=(((exp(0.0025/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b4=(abs(newpixel)^5/(cosxx(0.1-0.1/newpixel)))-b3
  b5=conj(newpixel)*newpixel^2-conj(conj(0.10/newpixel))^(-3*newpixel)\
      -flip(flip(0.010/newpixel))+0.3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}


Carr3185 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b3=(((exp(0.0025/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b4=conj(-0.8006,-0.116), m4=(conj(0.005/newpixel))-sqr(flip(0.09/newpixel))
  b5=flip(1/atan(1-newpixel))*sqr(newpixel)-m4
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3
  z1=imag(p1)*z-p2
  iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3186 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b3=(((exp(0.0025/newpixel))/(cosxx(0.1-newpixel^3))))-conj(0.01/newpixel)
  b5=newpixel^4-conj(0.1/newpixel-flip(0.01/newpixel-conj(0.1/b3)))+0.35
  m4=(conj(0.005/newpixel))-sqr(flip(0.09/newpixel))
  b4=flip(1/atan(1-newpixel))*conj(newpixel^3)-m4
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3, z1=imag(p1)*z-p2, iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3187 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b5=abs(cotanh(0.35-newpixel)^1.5*conj(newpixel)^2-(1/log(conj(0.10/newpixel+1.25)))^2.5)+0.19
  b4=newpixel-0.25/(atan(0.10/-newpixel)-sqr(acos(0.250/-newpixel))^3.7)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3, z1=imag(p1)*z-p2, iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3188 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b4=newpixel-cosh(0.25/newpixel)-conj(0.01/newpixel)+0.75
  b5=(newpixel^2*(newpixel-flip(0.010/newpixel)-conj(0.10/newpixel)))+(0.0001/newpixel)+0.15
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3, z1=imag(p1)*z-p2, iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3189 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b4=((exp(conj(conj(newpixel^4.5))-cosh(conj(conj(newpixel^2.5)))-0.4)-0.5))^0.95
  b5=newpixel^3+0.33
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3, z1=imag(p1)*z-p2, iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  z<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3190 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-conj(1/newpixel))
  b4=1/(cosxx(0.1-1/newpixel))
  b5=b4-newpixel^5+0.35
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=p3, z1=imag(p1)*z-p2, iter=0, limit=real(p1), bailout=16:
  test=(iter==limit)
  z=z*(1-test)+z1*test
  c=c*(1-test)+c1*test
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3191 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996  2821
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-cos(1/newpixel))
  b3=(((exp(0.0025/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b5=flip(newpixel^3)-cabs(newpixel)^6-conj(0.1/newpixel-flip(0.01/newpixel))+0.25
  b4=cabs(newpixel/2)-newpixel^5+conj(0.1/b3)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*abs(b5)
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(|c/10|)+flip(real(|d/100*newpixel|))
  iter=iter+1
  cabs(|z|)<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3192 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996 
		  ; passes=1 needs to be used with this PHC formula.
		  ; Rewritten for if..else by George Martin 
		  ; and Sylvie Gallet, 8/1/97
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  imagp1 = imag(p1)
  imagp2 = imag(p2)
  d=log(1/newpixel-cos(1/newpixel))
  b3=(((exp(0.0025/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  c = flip(newpixel^3)-cabs(newpixel)^6-conj(0.1/newpixel-flip(0.01/newpixel))
  z = origz = cabs(newpixel^4)-newpixel^7+conj(0.1/b3)\
       -conj(0.1/newpixel-flip(0.01/newpixel))+0.15
  IF (whitesq == 0)
     z = origz = -z
     c = -c
  ENDIF
  d0 = flip(|d/80*newpixel|) + (-0.7456,-0.132)
  c = |c/7.5| + d0
  bailout=16, iter=0:
  IF (iter == p1)
    z = 0
    c = |0.2*origz^1.2| + d0
  ELSEIF (iter == imagp1)
    z = 0
    c = |0.3*conj(origz)| + d0
  ELSEIF (iter == p2)
    z = 0
    c = |0.45*flip(origz)| + d0
  ELSEIF (iter == imagp2)
    z = 0
    c = |0.675*flip(origz)| + d0
  ENDIF
  z = z*z + c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: 97msg.frm
}


Carr3193 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996  2821
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-cos(1/newpixel))
  b3=(((exp(0.0025/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b4=flip(newpixel^3)-cabs(newpixel)^6-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=abs(newpixel^4)-conj(newpixel)^7+conj(0.1/b3)-conj(0.1/newpixel-flip(0.01/newpixel))+0.15
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*(b5)
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  cabs(|z|)<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3194 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996  2821
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-cos(1/newpixel))
  b5=((sin(conj(newpixel))/((tanh(conj(-0.81256,-0.189)))/(conj(cabs(newpixel)))))+0.35)^1.5
  b4=flip(conj(newpixel*newpixel))/(conj(newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*conj(b5)
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  cabs(|z|)<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3195 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
		  ; Rewritten for if..else by Sylvie Gallet 8/18/97
                  ; Added variable "newpixel". G. Martin 6/13/99
   newpixel = - abs(real(pixel)) + flip(imag(pixel))
   pinv = 0.1/newpixel
   imagp1 = imag(p1), imagp2 = imag(p2)
   d = log(10*pinv-cos(10*pinv))
   c = cabs(0.5*newpixel) - newpixel*((0.3,0.6)+newpixel) - conj(pinv)
   z = origz = c^5 - conj(0.1/c-flip(0.01/c)) - conj(pinv-flip(0.1*pinv))
   IF (whitesq == 0)
      z = origz = -z
      c = -c
   ENDIF
   d0 = flip(|d/80*newpixel|) + (-0.7456,-0.132)
   c = |c/7.5| + d0
   bailout = 16, iter = 0 :
   IF (iter == p1)
      z = 0
      c = |0.2*origz^1.2| + d0
   ELSEIF (iter == imagp1)
      z = 0
      c = |0.3*conj(origz)| + d0
   ELSEIF (iter == p2)
      z = 0
      c = |0.45*flip(origz)| + d0
   ELSEIF (iter == imagp2)
      z = 0
      c = |0.675*flip(origz)| + d0
   ENDIF
   z = z*z + c
   iter = iter + 1
   |z| <= bailout
  ;SOURCE: 97msg.frm
}


Carr3196 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996  2821
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-cos(1/newpixel))
  b5=abs(newpixel^4)-newpixel*((0.3,0.6)+newpixel)-conj(0.1/newpixel)
  b4=b5^5-conj(0.1/b4-flip(0.01/b4))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  (|z|)<=bailout
  ;SOURCE: 43bcarr.frm
}


Carr3197 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Edited for Fractint v. 20 by George Martin, 10/98
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-cos(1/newpixel))
  b4=newpixel^2-(0.2*cabs(0.2-newpixel^(-0.025)))
  b5=flip(b4)^2-cabs(0.1/newpixel-flip(0.01/b4))-conj(0.1/newpixel)-0.65
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  (|z|)<=bailout
  ;SOURCE: 98msg.frm
}


Carr3198 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-cos(1/newpixel))
  b5=conj(newpixel)*abs(newpixel)*flip(newpixel)-conj(0.1/newpixel-flip(0.01/newpixel))+0.15
  b4=conj(1/sinh(1/flip(b5^3)))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  (|z|)<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3199 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-cosxx(1/newpixel))
  b5=imag(flip(newpixel))-((abs(newpixel/4))/(conj(newpixel/2)))^3
  b4=flip(newpixel^2)*cabs(newpixel)-(|flip(0.01/newpixel-conj(0.1/newpixel))|)+0.1
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  (|z|)<=bailout
  ;SOURCE: 97msg.frm
}


Carr3200 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-cosxx(1/newpixel))
  b4=(flip(flip(newpixel))^3-1/(atan(0.1/newpixel)-cabs(acos(0.2/newpixel))))
  b5=conj(b4)-0.54
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  (|z|)<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3201 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-cosxx(1/newpixel))
  b4=newpixel-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=(conj(abs(newpixel))^5-0.5/(conj(atan(0.1/newpixel))-cabs(acos(0.2/newpixel))))+0.35
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  (|z|)<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3202 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=log(1/newpixel-cosxx(1/newpixel))
  b4=newpixel^3-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=abs(conj(conj(newpixel^12)))-flip(0.01/newpixel)-conj(0.1/newpixel)+0.3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*conj(z), c3=3.375*flip(z), c4=5.0625*flip(z)
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  (|z|)<=bailout
  ;SOURCE: 97msg.frm
}


Carr3203 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=conj(0.1/newpixel-flip(0.01/newpixel))
  b4=conj(conj(newpixel/2)*sin(abs(newpixel/3)))*flip(newpixel^6)-conj(0.1/newpixel+b3)+0.15
  b5=conj(conj(newpixel/2)*sin(abs(newpixel/3)))*conj(newpixel^6)-b3+0.13
  c=whitesq*b4^2-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+c))-(flip(abs(d/70*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3204 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=conj(0.1/newpixel-flip(0.01/newpixel))
  b5=conj(conj(newpixel/2)*sin(abs(newpixel/3)))*conj(newpixel^8)-b3+0.1+conj(0.01/newpixel)
  b6=conj(conj(b5/2.5))-conj(0.01/newpixel)
  b4=b6-0.2*(conj(flip(newpixel/2)*sin(abs(newpixel/3)))*flip(newpixel^6)-conj(0.1/newpixel+b3)+0.2)
  c=whitesq*b4^2-(whitesq==0)*conj(b4)
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+c))-(flip(abs(d/70*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3205 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=conj(0.1/newpixel-flip(0.01/newpixel))
  b5=conj(abs(newpixel/2)*sin(abs(newpixel/3)))*conj(newpixel^4)-b3+conj(0.01/newpixel)-0.125
  b6=newpixel^3-conj(0.1/newpixel-flip(0.01/newpixel))
  b4=b6-0.2*(conj(flip(newpixel/2)*sin(abs(newpixel/3)))*flip(newpixel^6)-conj(0.1/newpixel+b3)-0.15)
  c=whitesq*b4-(whitesq==0)*conj(b4)
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3206 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=newpixel/2-conj(0.01/newpixel-flip(0.001/newpixel))
  b5=conj(conj(abs(newpixel))^5-0.5/(conj(atan(0.01/newpixel))-cabs(acos(0.02/newpixel))))-0.235
  c=whitesq*b4-(whitesq==0)*b4^2
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+c))-(flip(abs(d/70*newpixel)))
  iter=iter+1
  ;imag(flip(z-newpixel))<=bailout
  ;imag(flip(z))<=bailout
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3207 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=(0.37,-0.3101)-flip(0.1/newpixel)
  b5=cabs(cabs(newpixel/2)*tan(cabs(newpixel/3)))*conj(abs(newpixel^3))-conj(0.1/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z+conj(|0.1/newpixel|))^2+(c-flip(0.01/newpixel))+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3208 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=(newpixel^4/(tanh(0.3/newpixel)))+(0.1/newpixel)
  b5=conj(b4^6)-conj(0.1/newpixel-flip(0.01/newpixel))-0.25
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z+conj(|0.1/newpixel|))^2+(c-flip(|0.01/newpixel|))+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}


Carr3209 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=(newpixel^3/(tanh(0.3/newpixel)))+(0.1/newpixel)
  b5=cabs(b4^6)-conj(0.1/newpixel-flip(0.01/newpixel))^0.75-0.25
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z+conj(|0.1/newpixel|))^2+(c-flip(|0.01/newpixel|))+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3210 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=(newpixel^4/(tanh(0.3/newpixel)))+flip(0.1/newpixel)
  b5=conj(b4^6)-conj(0.1/newpixel-flip(0.01/newpixel))-0.25
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z+conj(|0.1/newpixel|))^2+(c-flip(|0.01/newpixel|))+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3211 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=(newpixel^4/(tanh(0.3/newpixel)))+flip(0.1/newpixel)
  b5=conj(b4^6)-conj(0.1/newpixel-flip(0.01/newpixel))+0.15
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3212 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=cabs(newpixel^4/(tanh(0.3/newpixel)))+flip(0.1/newpixel)
  b5=conj(b4^6)-conj(0.1/newpixel-flip(0.01/newpixel))-0.25
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z+conj(|0.1/newpixel|))^2+(c-flip(|0.01/newpixel|))+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3213 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=abs(conj(newpixel^3)*flip(newpixel))-0.15
  b4=b5^4-conj(0.1/newpixel-flip(0.015/newpixel-flip(0.1/b5)))
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z+conj(|0.1/newpixel|))^2+(c-flip(|0.01/newpixel|))+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3214 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=((conj(newpixel^5)*(abs(newpixel)))/(1/newpixel))-conj(0.10/newpixel)-((flip(0.00510/newpixel))^4)-0.3
  b4=conj(b5-flip(0.1/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*sqr(b5)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(3*z*z-1.5)/(2+c)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3215 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(newpixel^6)+0.15
  b4=abs(b5/2.5)-conj(0.1/newpixel-flip(0.01/newpixel))-0.05
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=c*(z*z*(z*z-4)+2)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3216 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=(newpixel^6)+0.15
  b4=cabs(b5/2.5)-conj(0.1/newpixel-flip(0.01/newpixel))-0.05
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2))+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}


Carr3217 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=(newpixel^6)+0.15
  b4=cabs(b5/2.5)-conj(0.1/newpixel-flip(0.01/newpixel))-0.05
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*conj(abs(b5-conj(0.1/newpixel)))
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5-conj(0.1/newpixel))+2))+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3218 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=(newpixel^6)+0.15
  b4=cabs(b5/2.5)-conj(0.1/newpixel-flip(0.01/newpixel))-0.05
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*conj(abs(b5-conj(0.1/newpixel)))
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5-flip(0.1/newpixel))+2))+flip(real(|d/50*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3219 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=conj(newpixel^2)*abs(newpixel)*conj(conj(newpixel^3))-conj(0.1/newpixel-flip(0.01/newpixel))
  b4=conj(1/sinh(1/flip(b5^3)))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*conj(abs(b5-conj(0.1/newpixel)))
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5-flip(0.1/newpixel))+2))+flip(real(|d/50*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3220 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=(newpixel^6)+0.15
  b4=1.2*(|newpixel/0.75|)^5+conj(0.1/newpixel+flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*conj(abs(b5-conj(0.1/newpixel)))
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5-flip(0.1/newpixel))+2))+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3221 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=(newpixel^6)+0.15
  x=conj(cabs(newpixel-conj(0.1/newpixel))), y=imag(flip(newpixel-flip(0.1/newpixel)))
  b4=x*(conj(y)+x*sin(y^5))-conj(0.1/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*abs(abs(b5-conj(0.1/newpixel-flip(0.01/newpixel))))
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5-flip(0.1/newpixel))+2))+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3222 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=(newpixel^9)+0.15
  x=conj(cabs(newpixel-conj(0.1/newpixel))), y=real(flip(newpixel-flip(0.1/newpixel)))
  b4=x*(conj(y)+x*sin(y^5))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*abs(abs(b5-conj(0.1/newpixel-flip(0.01/newpixel))))
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5-flip(0.1/newpixel))+2))+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3223 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=newpixel^6+0.15
  b4=(newpixel^3)+0.1*(conj(b5/2)-conj(conj(b5^2))-conj(tan(sin(0.1/newpixel-conj(0.01/newpixel)))))
  c=whitesq*b4-(whitesq==0)*abs(abs(b4-conj(0.1/newpixel-flip(0.01/newpixel))))
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5-flip(0.1/newpixel))+2))+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3224 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))+0.15
  b4=cabs(b5/2.5)-conj(0.1/newpixel-flip(0.01/newpixel))-0.05
  c=whitesq*b4-(whitesq==0)*abs(abs(b4-conj(0.1/newpixel-flip(0.01/newpixel))))
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5-flip(0.1/newpixel))+2))+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3225 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))+0.25
  b4=conj(conj(newpixel))*(newpixel^4)-flip(0.01/newpixel)-conj(0.1/newpixel)
  c=whitesq*b4-(whitesq==0)*abs(abs(b4-conj(0.1/newpixel-flip(0.01/newpixel))))
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5-flip(0.1/newpixel))+2))+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3226 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=(newpixel^6)+0.15
  b4=cabs(b5/2.5)-conj(0.1/newpixel-flip(0.01/newpixel))-0.05
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+c*z))-(flip(real(|d/80*newpixel|)))^3
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3227 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=(newpixel^6)+0.15-conj(0.01/newpixel-flip(0.001/newpixel))
  b4=abs(conj(abs(conj(b5/2.5))))-conj(0.1/newpixel-flip(0.01/newpixel))-0.05
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+c*z))-(flip(real(|d/60*newpixel|)))^3
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}


Carr3228 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=conj(newpixel)*abs(newpixel)*flip(newpixel^4)-conj(0.01/newpixel-flip(0.001/newpixel))+0.15
  b4=conj(sinh(cabs(b5/2.5)))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*conj(b4)-(whitesq==0)*conj(b4)^3
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+c))-(flip(abs(d/70*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3229 (YAXIS) {; Modified Sylvie Gallet frm
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=conj(conj(newpixel))*(newpixel^11)+tanh(0.1/newpixel)-sinh(0.1/newpixel)-conj(0.13/newpixel)
  b5=conj(conj(newpixel))*(newpixel^11)+tanh(0.1/newpixel)-sinh(0.1/newpixel)-conj(0.13/newpixel)-0.35
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+c*z+1/c))-(flip(real(|d/80*newpixel|)))
  iter=iter+1
  |z| <= bailout
  ;SOURCE: 43ccarr.frm
}


Carr3230 (YAXIS) {; Modified Sylvie Gallet frm
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=cabs(newpixel/2)-newpixel*((0.3,0.6)+newpixel)-conj(0.1/newpixel)
  b5=newpixel^5-conj(0.1/b3-flip(0.01/b3))-conj(0.1/newpixel-flip(0.01/newpixel))-0.25
  b4=newpixel^5-conj(0.1/b3-flip(0.01/b3))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+c))-(flip(abs(d/35*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3231 (YAXIS) {; Modified Sylvie Gallet frm
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=cabs(newpixel/2)-newpixel*((0.3,0.6)+newpixel)-conj(0.1/newpixel)
  b5=newpixel^5-conj(0.1/b3-flip(0.01/b3))-conj(0.1/newpixel-flip(0.01/newpixel))-0.25
  b4=newpixel^5-conj(0.1/b3-flip(0.01/b3))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3232 (YAXIS) {; Modified Sylvie Gallet frm
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=(conj(abs(newpixel))^3/(cotan(0.1-newpixel))^1.3)-0.3
  b4=(conj(tanh(newpixel)^3/(cotan(0.1-newpixel))^1.3))/2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+c))-(flip(abs(d/35*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3233 (YAXIS) {; Modified Sylvie Gallet frm
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=abs(newpixel^6)-newpixel*((0.3,0.6)+newpixel)-conj(0.1/newpixel)-0.15
  b4=b5/2.5-conj(0.1/b5-flip(0.01/b5))-conj(0.075/newpixel-flip(0.01/newpixel))+0.05
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5^2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+c))-(flip(abs(d/35*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3234 (YAXIS) {; Modified Sylvie Gallet frm
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=cabs(newpixel^6)-newpixel*((0.3,0.6)+newpixel)-conj(0.09/newpixel)-0.3
  b4=cabs(b5/2.5)-conj(0.1/newpixel-flip(0.01/newpixel))-0.075
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5^2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(((3*z*z-1)-conj(0.1/newpixel))/(2+c))+flip(real(|d/70*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3235 (YAXIS) {; Modified Sylvie Gallet frm
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=((sin(newpixel)-tan(newpixel))/(conj(newpixel)+flip(newpixel)))-0.1-conj(0.01/newpixel)
  b4=newpixel/2.5-conj(0.01/newpixel)-flip(0.001/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+c))-(flip(abs(d/35*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3236 (YAXIS) {; Modified Sylvie Gallet frm
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=conj(conj(newpixel/2)*sin(abs(newpixel/3)))*flip(newpixel^6)-conj(0.1/newpixel)
  b5=conj(conj(newpixel/2)*sin(abs(newpixel/3)))*flip(newpixel^6)-conj(0.1/newpixel)+0.23
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+c))-(flip(abs(d/70*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ccarr.frm
}


Carr3237 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=conj(conj(newpixel/2)*sin(abs(newpixel/3)))*flip(newpixel^6)-conj(0.1/newpixel)
  b5=conj(conj(newpixel/2)*sin(abs(newpixel/3)))*conj(newpixel^6)-flip(0.1/newpixel)+0.23
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3238 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=((conj(newpixel^5)*(abs(newpixel)))/(1/newpixel))-conj(0.066/newpixel)-((flip(0.00510/newpixel))^2)-0.1
  b4=((conj(newpixel/2)*(abs(newpixel/2)))/(1/newpixel))-conj(0.06/newpixel)-((flip(0.00510/newpixel))^4)+0.15
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/70*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3239 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=conj(conj(abs(flip(newpixel^3))*conj(tanh(newpixel))))
  b5=((b3^2)/(1/newpixel)-(0.00066/b3)-(flip(0.003/newpixel)^2))-0.1
  b4=((cabs(newpixel/2)*(flip(newpixel/2)))/(1/newpixel))-conj(0.06/newpixel)-((flip(0.00510/newpixel))^4)+0.15
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/70*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3240 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=(newpixel^6)+0.15
  b4=b6/(cotanh(-1/newpixel^3))-conj(0.06/newpixel)-(flip(0.00510/newpixel))^4-0.25
  b5=b6/(cotanh(-1/newpixel^3))-conj(0.06/newpixel)-(flip(0.00510/newpixel))^4+0.15
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3241 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Converted to if.else by George Martin, 6/11/99
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b1=(cosh(cos(-newpixel)))
  b2=(cosxx(cosh(-newpixel)))
  b6=(cabs(newpixel)*conj(flip(newpixel))+0.15)/b2
  b5=newpixel^6-conj(0.01/b1-flip(0.01/b2-conj(0.01/b6)))+0.25
  b4=(newpixel/2)-conj(0.01/b1-flip(0.01/b2-conj(0.01/b6)))
  IF (whitesq)
    z = origz = b5
    c = b4
  ELSE
    z = origz = -b5
    c = -b4
  ENDIF
  imagp1=imag(p1), imagp2=imag(p2)
  c5=flip(abs(d/70*newpixel)) 
  bailout=16, iter=0:
  IF (iter == p1)
    z = 0
    c = 1.5*origz^1.2
  ELSEIF (iter == imagp1)
    z = 0
    c = 2.25*origz
  ELSEIF (iter == p2)
    z = 0
    c = 3.375*origz
  ELSEIF (iter == imagp2)
    z = 0
    c = 5.0625*origz
  ENDIF
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-c5
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3242 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b1=(cosh(cos(-newpixel)))
  b2=(cosxx(cosh(-newpixel)))
  b6=(cabs(newpixel)*conj(flip(newpixel))+0.15)/b2
  b5=newpixel^6-conj(0.001/b1-flip(0.001/b2-conj(0.001/b6)))-0.35
  b4=(newpixel/2)-conj(0.01/b1-flip(0.01/b2-conj(0.01/b6)))+0.1
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*z*z)/(conj(z+c))+conj(c/8)+(-0.7456,-0.132)+sqr(0.1/newpixel)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3243 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b1=(cosh(cos(-newpixel)))
  b2=(cosxx(cosh(-newpixel)))
  b6=(cabs(newpixel)*conj(flip(newpixel))+0.15)/b2
  b5=newpixel^7-conj(0.001/b1-flip(0.001/b2-conj(0.001/b6)))-0.35
  b4=cabs(b5/2.5)-conj(0.1/newpixel-flip(0.01/newpixel))-0.05
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/70*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3244 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=cabs(newpixel^2)-newpixel-conj(0.1/newpixel)
  b5=abs(newpixel^5)-conj(0.1/b3-flip(0.01/b3))-conj(0.1/newpixel-flip(0.01/newpixel))-0.13
  b4=newpixel^5-conj(0.1/b3-flip(0.01/b3))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*sqr(b4)
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/70*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3245 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=cabs(newpixel^2)-cosxx(newpixel)-conj(0.1/newpixel)
  b5=abs(newpixel^7)-conj(0.075/b3-flip(0.01/b3))\
   -conj(0.065/newpixel-flip(0.01/newpixel))-0.23
  b4=cabs(newpixel^7)-conj(0.1/b3-flip(0.01/b3))\
   -conj(0.1/newpixel-flip(0.01/newpixel))-0.075
  c=whitesq*b4^3-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/70*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}


Carr3246 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=cabs(newpixel)-cosxx(newpixel^4)-conj(0.1/newpixel^3)
  b5=abs(newpixel^10)-conj(0.1/b3-flip(0.0075/b3))-conj(0.065/newpixel-flip(0.01/newpixel))-0.3
  b4=cabs(b5/2.5)-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4^2-(whitesq==0)*flip(imag(b4))
  z=whitesq*b5-(whitesq==0)*b5^2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3247 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=cosh(2/newpixel)-cotanh(3/newpixel)-conj(|0.1/newpixel^3|)
  b5=abs(newpixel^6)-conj(0.25/b3-flip(0.0075/b3))-conj(0.065/newpixel-flip(0.01/newpixel))-0.3
  b4=newpixel^4-conj(0.01/newpixel-flip(0.01/newpixel-cabs(0.001/b5-abs(0.001/b3))))
  c=whitesq*b4^2-(whitesq==0)*flip(imag(b4))
  z=whitesq*b5-(whitesq==0)*b5^2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3248 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=conj(conj(newpixel/2)*sin(abs(newpixel/3)))*conj(newpixel^6)-flip(0.1/newpixel)-0.13
  b4=(newpixel^3)+0.5*(conj(b5/2)-conj(conj(b5^2))-conj(tan(sin(0.1/newpixel-conj(0.01/newpixel)))))-0.15
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5^2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3249 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=conj(conj(newpixel^6)-sin(abs(newpixel/3)))-conj(newpixel/2)-flip(0.001/newpixel)-0.2
  b4=(newpixel^6)*(conj(b5/2)-conj(conj(0.001/b5))-conj(tan(sin(0.001/newpixel-conj(0.005/newpixel)))))-0.15
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5^2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/7.5|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3250 (YAXIS) {; Modified Sylvie Gallet frm.1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+c+flip(real(|d/70*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}


Carr3251 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/70*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3252 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))
  b5=abs(conj(newpixel^3))*abs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/70*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3253 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-0.045/newpixel
  b5=abs(conj(newpixel^3))*(flip(newpixel^4))-flip(0.0001/b4)+conj(0.001/newpixel)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/70*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3254 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=abs(conj(conj(newpixel^3)))*conj(flip(newpixel^3))-cabs(0.035/newpixel)+0.1
  b5=abs(conj(newpixel^2))*(cabs(flip(newpixel^4)))-flip(0.0001/b4)+conj(0.001/newpixel)-0.2
  c=whitesq*b4-(whitesq==0)*conj(b4)
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/30*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3255 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-conj(cabs(0.04/newpixel))
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)-0.2
  c=whitesq*b4-(whitesq==0)*conj(b4)
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/30*newpixel)))-0.001/c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3256 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-conj(cabs(0.045/newpixel))+0.075
  b5=conj(conj(newpixel^3))*flip(conj(sinh(newpixel^4)))-flip(0.01/newpixel)-conj(0.01/newpixel)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5+0.01/c
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/30*newpixel)))-0.001/c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3257 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))
  b5=conj(conj(newpixel^3))*abs(newpixel^4)-flip(0.0075/newpixel)-conj(0.0125/newpixel)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+c+flip(real(|d/70*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3258 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=(|0.0175/newpixel|)
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)\
     -conj(0.01/newpixel)-conj(b3)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*(b5^0.75)-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+flip(real(|d/70*newpixel|))+0.105
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}


Carr3259 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=(|0.0175/newpixel|)
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)-conj(b3)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*(b5^0.75)-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/30*newpixel)))+0.13
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3260 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=(|0.0175/newpixel|)
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)-conj(b3)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*(b5^0.75)-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+cabs(|c/12|)+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3261 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=(|0.0175/newpixel|)-imag(0.00725/newpixel)
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)-conj(b3)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*(b5^0.75)-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/30*newpixel)))+0.125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3262 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=(|0.0175/newpixel|)-imag(0.00725/newpixel)+cabs(0.01/newpixel)
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)-conj(b3)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*(b5^0.75)-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/30*newpixel)))+0.125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3263 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=(|0.0175/newpixel|)-imag(0.00725/newpixel)+cabs(0.01/newpixel)
  b4=abs(conj(conj(newpixel^5)))*conj(flip(newpixel^3))-flip(b3)
  b5=abs(conj(conj(newpixel^2)))*cabs(newpixel^3)-flip(0.01/newpixel)-conj(0.01/newpixel)-conj(b3)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*(b5^0.75)-(whitesq==0)*abs(b5)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(c*(z*z*(z*z-3.5)+2+imag(c)))-(flip(abs(d/30*newpixel)))+0.08
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3264 (YAXIS) {; Modified Sylvie Gallet frm.1996
		  ; passes=1 needs to be used with this PHC formula.
		  ; Converted to if/else by George Martin 11/20/97
                  ; Added variable "newpixel". G. Martin 6/13/99
  imagp1=imag(p1), imagp2=imag(p2)
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  invpixel=1/newpixel
  centinvpixel=.01*invpixel
  cubepixel = newpixel^3
  d=flip(abs((sqrt(invpixel-cosxx(invpixel)))/30*newpixel))-0.08
  b3=conj((0.0175*invpixel)-imag(0.00725*invpixel)+cabs(centinvpixel))
  c=abs(cubepixel*newpixel^2)*conj(flip(cubepixel))+b3
  b5=abs(cubepixel)*cabs(newpixel*cubepixel)\
      -flip(centinvpixel)-conj(centinvpixel)-conj(b3)-0.2
  IF (whitesq)
    z = origz = b5^0.75
  ELSE
    z = origz = -abs(b5)
    c = -c
  ENDIF
  const= c*(imag(c)+2) - d
  bailout=16, iter=0
  :
  IF (iter == p1)
    z = 0
    c=1.5*origz^1.2
    const= c*(imag(c)+2) - d
  ELSEIF (iter == imagp1)
    z = 0
    c=2.25*origz
    const= c*(imag(c)+2) - d
  ELSEIF (iter == p2)
    z = 0
    c=3.375*origz
    const= c*(imag(c)+2) - d
  ELSEIF (iter == imagp2)
    z = 0
    c=5.0625*origz
    const= c*(imag(c)+2) - d
  ENDIF
  z=c*z*z*(z*z-3.5) + const
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}


Carr3265 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=(conj((0.0175/newpixel)-imag(0.00725/newpixel)^2+cabs(0.01/newpixel)))
  b4=abs(conj(conj(newpixel^5)))*conj(flip(newpixel^3))-(b3)
  b5=abs(conj(conj(newpixel^3)))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)-(b3)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*(b5^0.75)-(whitesq==0)*abs(b5)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z|/5)+z*z+c-0.09/newpixel-0.08
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3266 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=(conj((0.0175/newpixel)-imag(0.00725/newpixel)^2+cabs(0.01/newpixel)))
  b5=newpixel^5-conj(0.075/newpixel)-flip(0.001/b3)-0.2
  b4=newpixel-flip(0.075/newpixel)-conj(0.001/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*(b5^0.75)-(whitesq==0)*abs(b5)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z|/5)+z*z+c-0.09/newpixel-0.08
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3267 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=(flip((0.0175/newpixel)-imag(0.00725/newpixel)^3+cabs(0.01/newpixel)^2))
  b4=abs(conj(conj(1.5*newpixel)))*conj(flip(newpixel^3))-(b3*newpixel^0.66)-0.15
  b5=abs(conj(conj(newpixel^3)))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)-(b3)-0.15
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5^0.75
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z|/4)+z*z+c-(0.1/newpixel*b3*2)-0.096
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3268 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)-0.2
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))
  b5=conj(conj(newpixel^3-0.0075/b3))*cabs(newpixel^4)-flip(0.035/newpixel)-conj(0.03/newpixel)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z|/4)+z*z+c+0.08-c/20
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3269 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=newpixel-conj(0.1/newpixel-flip(0.01/newpixel+cabs(0.01/newpixel)))
  b5=newpixel^6-conj(0.1/b4-flip(0.01/b4+cabs(0.01/b4)))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*conj(b5-0.025/b5*newpixel^4)^2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z|/4)+z*z+c+0.08-c/20+0.03/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3270 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(conj(conj(newpixel^2))*flip(flip(newpixel^2))-conj(0.075/newpixel)+sinh(0.001/newpixel))
  b5=tan(tan(newpixel^4)-0.075/b4)-tanh(0.1/newpixel)-conj(0.001/newpixel)-0.24
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z/6|)+z*z+c+0.09-c/8+0.025/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3271 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=(((exp(0.0025/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b5=newpixel^5-0.0075/b3-conj(0.0075/b3)-0.45
  b4=cabs(newpixel^2)-newpixel^7+conj(0.075/b3)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5^2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z/6|)+z*z+c+0.09-c/8+0.025/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3272 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=(((exp(0.0025/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b5=conj(newpixel^6)-abs(0.007/b3)-conj(0.007/b3)-cabs(0.0025/b3)-0.45
  b4=cabs(newpixel^3+0.075/b5)-newpixel^7+conj(0.075/b3)-0.35
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5^3
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z/6|)+z*z+c+0.09-c/8+0.025/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3273 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=conj(newpixel^4-sinh(0.007/newpixel)), m4=(conj(0.005/newpixel))-sqr(flip(0.09/newpixel))
  b5=conj(1/acos(1-newpixel))*(newpixel^4)-m4-conj(0.008/newpixel)-0.1
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z/6|)+z*z+c+0.09-c/8+0.025/newpixel-(flip(abs(d/30*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3274 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=(((exp(0.0045/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)+conj(0.0095/b3)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+flip(real(|d/70*newpixel|))+0.125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3275 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=(((exp(0.0045/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-conj(0.0075/b3)-flip(0.0075/b3)
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)+conj(0.0095/b3)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+flip(real(|d/70*newpixel|))+0.125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3276 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=(((exp(0.0045/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-conj(0.0075/b3)-flip(0.0075/b3)
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.0025/b4)-conj(0.0025/b4)+conj(0.0095/b3)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+flip(real(|d/70*newpixel|))+0.125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3277 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=(((exp(0.0045/newpixel))/(cosxx(0.1-newpixel^4))))-conj(0.01/newpixel)
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-conj(0.0075/b3)-flip(0.0075/b3)
  b6=conj(conj(conj(0.001/b4)))
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.0007/b4)-b6+conj(0.0095/b3)-0.235
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+((z*z/c)/30)+0.125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43dcarr.frm
}


Carr3278 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=flip(conj(newpixel^5))*abs(conj(newpixel))-conj(0.0125/newpixel-flip(0.005/newpixel))
  b4=conj(b5/2+b5)^2-conj(0.001/b5-flip(0.001/b5))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+0.125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3279 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=flip(0.1-newpixel)+abs(newpixel^6)-newpixel/pi-conj(0.01/newpixel)+0.25
  b4=b5^2-conj(0.1/b5-flip(0.01/b5))^2-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+0.125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3280 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=flip(0.1-newpixel)+abs(newpixel^6)-newpixel/pi-conj(0.01/newpixel)-flip(0.01/newpixel)+0.2
  b4=b5^2-conj(0.01/b5-flip(0.01/b5))^2-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4^0.75-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+0.125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3281 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b7=flip(0.01/newpixel), b8=sin(0.001/newpixel-tanh(0.001/newpixel))
  b9=conj(0.01/b5-flip(0.01/b5))
  b5=flip(0.1-newpixel)+abs(newpixel^6)+b8-newpixel/pi-conj(0.01/newpixel)-flip(0.01/newpixel)+0.2
  b4=flip(b5^2)-b9^2-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4^0.75-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5^3
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+0.125-b7
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3282 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b7=flip(0.01/newpixel), b8=sin(0.001/newpixel-flip(0.001/newpixel))
  b9=conj(0.01/b5-flip(0.01/b5))
  b4=flip(0.1-newpixel)+abs(newpixel^6)+b8-newpixel/pi-conj(0.01/newpixel)-flip(0.01/newpixel)
  b5=flip(b4^2)-b9^2-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4^0.75-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5^3
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+0.125-b7
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3283 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=conj(0.01/newpixel), b7=flip(0.01/newpixel), b8=sin(0.003/newpixel-flip(0.003/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-conj(0.01/newpixel-flip(0.001/newpixel))
  b5=conj(conj(newpixel^3.3))*cabs(newpixel+0.125)^4-b7-b6+1.75*b8-0.2
  c=whitesq*b4-(whitesq==0)*b4+0.2
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+flip(real(|d/70*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3284 (YAXIS) {; Modified Sylvie Gallet frm.1996
		  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=conj(0.01/newpixel), b7=flip(0.01/newpixel) 
  b8=sin(0.003/newpixel-flip(0.003/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))\
      -conj(0.01/newpixel-flip(0.001/newpixel))
  b9=conj(0.007/b4-flip(0.007/b4))
  b5=conj(conj(newpixel^3))*cabs(newpixel+0.125)^4-b7-b6+1.75*b8-0.2
  c=whitesq*b4-(whitesq==0)*b4+0.2
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+flip(real(|d/70*newpixel|))-(|b6|)-b7-flip(b9/5)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}


Carr3285 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=conj(0.01/newpixel), b7=flip(0.01/newpixel)
  b9=conj(0.01/b4*b8^2-flip(0.01/b4*b8))
  b5=conj(conj(newpixel/2)*sin(abs(newpixel/3)))*conj(newpixel^6)-b7-b6-0.2
  b4=b5-0.01/b5-b6-b7
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*conj(b5)^0.7455-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z*z+conj(c)+flip(real(|d/70*newpixel|))-(|b6|)-b7-flip(b9)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3286 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b8=sin(0.003/newpixel-flip(0.003/newpixel))
  m3=cabs(newpixel)*conj(conj(newpixel)), m4=(-0.7456,-0.132)
  b4=m4/2-b8-0.25/m3, b8=sin(0.003/newpixel-flip(0.003/newpixel))
  b9=conj(0.01/b4*b8^2-flip(0.01/b4*b8))
  b5=(0.75*flip(m3)^2-conj(0.01/newpixel))-b7-b8+b9+0.35 
  c=whitesq*b4^0.75-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5^0.75
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+m4+(c/8)-0.0025/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3287 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=conj(0.01/newpixel), b7=flip(0.005/newpixel)
  b4=(newpixel^4/(tanh(0.3/newpixel)))+(0.1/newpixel)
  b5=flip(newpixel-b7^2)*conj(newpixel)*flip(b4)^2-b6-b7-0.15
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+conj(c)+flip(real(|d/70*newpixel|))-(|b6|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3288 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=conj(0.01/newpixel), b7=flip(0.005/newpixel), b8=sin(0.003/newpixel-flip(0.003/newpixel))
  b4=(newpixel^4/(tanh(0.3/newpixel)))+(0.1/newpixel)
  b9=conj(0.0033/b4*b8^2-flip(0.0033/b4*b8))
  b5=flip(newpixel-b9^2)^2*conj(newpixel^2)*flip(b4)^2-b6-b7-0.1497
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*conj(b5)^0.55-(whitesq==0)*(b5+b9)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+conj(c+0.25*b6)+flip(real(|d/70*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3289 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=conj(0.01/newpixel), b7=flip(0.005/newpixel), b8=sin(0.003/newpixel-flip(0.003/newpixel))
  b4=(newpixel^4/(tanh(0.3/newpixel)))+(0.1/newpixel)
  b9=conj(0.0033/b4*b8^2-flip(0.0033/b4*b8))
  b5=newpixel*(flip(newpixel-b9^2)^2*conj(newpixel^2)*flip(b4)^2-b6-b7-0.1597)/(cos(0.1-b4+b6))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*conj(b5)^0.75-(whitesq==0)*(b5+b9)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+conj(c+0.25*b6)+flip(real(|d/70*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3290 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=conj(0.01/newpixel), b7=flip(0.005/newpixel)
  b8=sin(0.003/newpixel-flip(0.003/newpixel))
  b4=(newpixel^4/(tanh(0.3/newpixel)))+(0.1/newpixel)
  b9=conj(0.0033/b4*b8^2-flip(0.0033/b4*b8)), b10=(conj(cosxx(b4+b9)))
  b5=(b4+newpixel)*(flip(newpixel-b9^2)^2*conj(newpixel^2)\
     *flip(b4)^2-b6-b7-0.1597)/b10
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*conj(b5)^0.75-(whitesq==0)*(b5+2/b4)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+conj(c+0.25*b6)+flip(real(|d/70*newpixel|))-(c/8)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}


Carr3291 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=conj(0.01/newpixel), b7=flip(0.01/newpixel), b8=sin(0.003/newpixel-flip(0.003/newpixel))
  b4=(newpixel^4/(sinh(0.3/newpixel)))+flip(0.1/newpixel)
  b9=conj(0.007/b4-flip(0.007/b4))
  b5=conj(conj(newpixel^3))*abs(flip(newpixel+0.125))^4-b7-b6+1.75*b8-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+flip(real(|d/70*newpixel|))-(|b6|)-b7-flip(b9/5)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3292 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=conj(0.01/newpixel), b7=flip(0.01/newpixel)
  b9=conj(0.007/b4-flip(0.007/b4)), b10=conj(newpixel)+abs(0.1-newpixel)*cabs(0.15-newpixel^2)
  b4=|newpixel^8|-flip(0.1/newpixel)
  b5=b10+abs(conj(newpixel^6))+flip(0.01/newpixel)-conj(0.001/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+flip(real(|d/70*cos(newpixel)|))-(|b6|)-b7-conj(b9/4.8)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3293 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=conj(0.01/newpixel), b7=flip(0.01/newpixel)
  b9=conj(0.007/b4-flip(0.007/b4)), b10=conj(newpixel)+abs(0.1-newpixel)*cabs(0.15-newpixel^2)
  b4=|newpixel^8|-flip(0.1/newpixel)
  b5=b10^4-b4
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+flip(real(|d/40*cotanh(newpixel)|))-(|b6|)-b7-conj(b9/5)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3294 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=conj(0.01/newpixel), b7=flip(0.01/newpixel)
  b9=conj(0.007/b4-flip(0.007/b4)), b10=conj(newpixel)+abs(0.1-newpixel)*cabs(0.15-newpixel^2)
  b4=abs(newpixel^6)-flip(0.085/newpixel)
  b5=b10^4*abs(newpixel^2)-b4-b6+0.1
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+flip(real(|d/40*cotanh(newpixel)|))-(|b6|)-b7-conj(b9/5)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3295 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b10=(conj(newpixel^3)*newpixel^4)/(tanh(0.3/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-0.01/newpixel
  b5=b10-flip(0.0125/newpixel)-conj(0.0125/newpixel)-0.19
  c=whitesq*b4-(whitesq==0)*b4-b7-b6
  z=whitesq*b5^0.73-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3296 (YAXIS) {; Modified Sylvie Gallet frm.1996
		  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b10=(conj(newpixel^3)*newpixel^4)/(tanh(0.3/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-0.01/newpixel
  b5=b10-flip(0.0125/newpixel)-conj(0.0125/newpixel)-0.19
  c=whitesq*b4-(whitesq==0)*b4-b7-b6
  z=whitesq*b5^0.73-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z|/5)+z*z+c-0.09/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}


Carr3297 (XAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=real(pixel)-flip(abs(imag(pixel)))
  b10=(conj(newpixel^3)*newpixel^4)/(tanh(0.3/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-0.01/newpixel
  b5=conj(b10)^3-conj(0.0125/newpixel)-flip(0.0125/newpixel)^2-0.2
  c=whitesq*b4-(whitesq==0)*b4-b7-b6
  z=whitesq*b5^0.73-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z|/5)+z*z+c-0.09/newpixel
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3298 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b10=((flip(newpixel^3)*newpixel^4)/(sinh(0.3/newpixel)))-b7
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-0.01/newpixel
  b5=newpixel^2*flip(b4/pi)*conj(b10)^3-conj(0.0155/newpixel)-flip(0.025/newpixel)+0.005/newpixel-0.17
  c=whitesq*b4-(whitesq==0)*b4-0.24
  z=whitesq*b5^0.75-(whitesq==0)*b5/2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+c/12
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3299 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=sin(0.002/newpixel-flip(0.002/newpixel))
  b10=newpixel^10-conj(0.01/newpixel-flip(0.15/newpixel))
  b4=abs(conj(conj(newpixel^2)))*b10-0.01/newpixel
  b5=newpixel^2*abs(b10)^2*cosxx(0.1-b4)-b8-b6-b7-0.002/newpixel-0.19
  c=whitesq*b4-(whitesq==0)*b4-0.24
  z=whitesq*(b5^0.745)-(whitesq==0)*(b5/2)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c-0.015-(b7*b6)^3/1.5
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3300 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=sin(0.002/newpixel-flip(0.002/newpixel))
  b10=newpixel^10-conj(0.01/newpixel-flip(0.15/newpixel))
  b4=abs(conj(conj(newpixel^2)))*b10-0.01/newpixel
  b5=cabs(newpixel^2)*abs(b10)^2*(0.1-b4)-b8/0.65-b6/0.65-b7/0.65-0.002/newpixel-0.19
  c=whitesq*b4-(whitesq==0)*b4-0.24
  z=whitesq*(b5^0.745)-(whitesq==0)*(b5/2)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c-0.015-((b8*b6)^3)/1.5
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3301 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)-0.4/cos(newpixel)-conj(0.01/newpixel-flip(0.15/newpixel))
  b4=cabs(conj(conj(newpixel^2)))*b10-0.01/newpixel
  b5=cabs(newpixel^2)*abs(b10)^2*(0.1-b4)-b8/0.65-b6/0.65-b7/0.65-0.002/newpixel-0.1951
  c=whitesq*b4-(whitesq==0)*b4-0.24
  z=whitesq*(b5^0.745)-(whitesq==0)*(b5/2)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z/2.5|)+z*z+c-0.015-((b8^2*b6/newpixel)^3)/1.5
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3302 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)-0.4/cos(newpixel)-conj(0.01/newpixel-flip(0.15/newpixel))
  b4=cabs(conj(conj(newpixel^2)))*b10^3-0.01/newpixel
  b5=sinh(newpixel^4)*flip(b10)^3*conj(0.25-b4)-b8/0.65-b6/0.65-b7/0.65-0.002/newpixel-0.1951
  c=whitesq*b4-(whitesq==0)*b4-0.24
  z=whitesq*(b5^0.745)-(whitesq==0)*(b5/2*newpixel^2)+0.15
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z/2.5|)+z*z+c-0.015-((b8^2*b6/newpixel)^3)/1.5
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3303 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)-0.4/cos(newpixel)-conj(0.01/newpixel-flip(0.15/newpixel))
  b4=cabs(conj(conj(newpixel^2)))*b10^3-0.01/newpixel
  b5=sinh(newpixel^4)*flip(b10)^3*conj(0.25-b4)-b8/0.65-b6/0.65-b7/0.65-0.002/newpixel-0.1951
  c=whitesq*b4-(whitesq==0)*b4-0.24
  z=whitesq*(b5^0.745)-(whitesq==0)*(b5/2*newpixel^2)+0.15
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z/2.5|)+z*z+c-0.015-((b8^2*b6/newpixel)^3)/1.5-c/8
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3304 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)-0.4/cos(newpixel)-conj(0.01/newpixel-flip(0.15/newpixel))
  b4=cabs(conj(conj(newpixel^2)))*b10^3-0.01/newpixel
  b5=(1/newpixel)*flip(b10)^3*conj(0.25-b4)-b8/0.65-b6/0.65-b7/0.65-0.002/newpixel-0.1951
  c=whitesq*b4-(whitesq==0)*b4-0.24
  z=whitesq*(b5^0.745)-(whitesq==0)*(b5/2*newpixel^2)+0.15
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z/2.5|)+z*z+c-0.015+(|c/8|)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3305 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel)
  b10=flip(newpixel^8)*0.2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  b5=conj(newpixel+b6)^4*newpixel^3*b10-b6/0.64-b7/0.64+0.1345
  b4=conj(conj(newpixel/2)*sin(abs(newpixel/3)^5))*flip(newpixel^6-b7)-b6
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5/0.75
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z-c-c/11
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3306 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)*0.2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  b5=tanh(newpixel+b6)^4*newpixel^3*b10-b8/0.64-b7/0.64+0.1345+0.1/cos(b6)
  b4=conj(conj(newpixel/2)+sin(abs(newpixel/3)^5))*flip(newpixel^6-b7)-b6
  c=whitesq*b4-(whitesq==0)*b4^2
  z=whitesq*b5^0.745-(whitesq==0)*b5/0.75
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z-conj(c+0.25*b6)+flip(real(|d/70*newpixel|))+(c/8)+0.33*b7
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3307 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)*0.2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  b5=tanh(newpixel+b6)^4*newpixel^3*b10-b8/0.64-b7/0.64+0.1345+0.1/cos(b6)
  b4=conj(conj(newpixel/2)+sin(abs(newpixel/3)^5))*flip(newpixel^6-b7)-b6
  c=whitesq*b4-(whitesq==0)*b4^2
  z=whitesq*b5^0.745-(whitesq==0)*b5/0.75
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z-c-((b8^2*b6/newpixel)^3)/1.5
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3308 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel)
  b10=flip(newpixel^8)*2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  b5=conj(newpixel^2)*flip(newpixel^5)-b6-b7-0.066/b10
  b4=b5-0.1/conj(conj(newpixel/2)+sin(abs(newpixel/3)^5))*flip(newpixel^6-b7)-b6
  c=whitesq*b4-(whitesq==0)*b4^2
  z=whitesq*b5^0.745-(whitesq==0)*b5/0.75
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z-c-c/11
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3309 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)*2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  b4=cabs(conj(conj(newpixel^2)))*b10^3-0.01/newpixel
  b5=tanh(newpixel^4)*flip(b10)^3*conj(0.25-b4)-b8/0.65-b6/0.65-b7/0.65-0.002/newpixel
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+conj((newpixel-c)-0.1)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3310 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)*2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  m4=(-0.7456,-0.132)
  b4=m4/2
  b5=tanh(newpixel^4)*flip(b10)^3*conj(0.25-b4)-b8/0.65-b6/0.65-b7/0.65-0.002/newpixel;-0.1951
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+conj((newpixel-c)-0.175)+flip(real(|d/80*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3311 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)*2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  m4=(-0.7456,-0.132)
  b4=m4/2
  b5=tanh(newpixel^4)*flip(b10)^3*conj(0.25-b4)-b8/0.65-b6/0.65-b7/0.65-0.002/newpixel;-0.1951
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+conj((newpixel-c)-0.25)+c/12
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3312 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)*2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  m4=(-0.7456,-0.132)
  b4=m4/2
  b5=tanh(newpixel^4)*flip(b10)^3*conj(0.25-b4)-b8/0.65-b6/0.65-b7/0.65-0.002/newpixel
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+conj(sinh((newpixel-c))-0.25)+c/12
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3313 (YAXIS) {; Modified Sylvie Gallet frm.1996
		  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel)
  b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)*2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  m4=(0.3,0.6)
  b4=m4/pi
  b5=tanh(newpixel^4)*flip(b10)^3*conj(0.25-b4)\
     -b8/0.65-b6/0.65-b7/0.65-0.002/newpixel    ; -0.1951
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+conj(sinh((newpixel-c))-0.25)+c/12
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}


Carr3314 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)*2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  b4=(0.3,0.6)/4
  b5=sinh(newpixel^4)*conj(b10)^3*conj(0.05-b4)-b8/0.65-b6/0.65-b7/0.65-0.002/newpixel
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5^2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+conj(sinh((newpixel-c))-0.25)+c/12
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3315 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)*2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  b4=newpixel^4-b6-b7
  b5=1/cos(pi)*(newpixel^4)*(b10)^3*(0.15-b4)-b8/0.65-b6/0.65-b7/0.65-0.002/newpixel
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+c/11
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43ecarr.frm
}


Carr3316 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)*2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  b3=(((exp(0.0045/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b5=pi*(newpixel^4-b6)*(b10)^3*(b4-b7)^3-b8/0.65-b6/0.65-b7/0.65-0.002/newpixel+0.15
  b4=newpixel^6-0.33*(newpixel^4-b3)-0.025/b5
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z-c-c/11-((b8^2*b6/newpixel)^3)/1.5+b6
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3317 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)*2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  b3=(((exp(0.0045/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b2=(b8/0.55-b6/0.55-b7/0.55-0.001/newpixel)
  b5=(cabs(newpixel^4)-b6)*(b10)^5*(b4-b7)^3-b2^1.25+0.1
  b4=abs(newpixel)^6-0.33*(newpixel^4-b3)-0.025/b5
  c=whitesq*b4-(whitesq==0)*b4^2
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z*z/5+z*z+2*c^2+(-0.7456,-0.132)^2.5
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3318 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)*2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  b3=(((exp(0.0045/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b2=(b8/0.55-b6/0.55-b7/0.55-0.001/newpixel)
  b5=(cabs(newpixel^4)-b6)*(b10)^5*(b4-b7)^3+b2^1.25+0.1
  b4=abs(newpixel)^6-0.33*(newpixel^4-b3)-0.015/b5-(|0.015/b5*b3|)
  c=whitesq*b4-(whitesq==0)*b4^2
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z*z/5+z*z+2*c^2+(-0.7456,-0.132)^2.5
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3319 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b3=(((exp(0.0045/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b2=(b8/0.55-b6/0.55-b7/0.55-0.001/newpixel)
  b4=1.2*(|newpixel/0.75|)^5+conj(0.1/newpixel+flip(0.01/newpixel))
  b9=conj(0.007/b4-flip(0.007/b4))
  b5=flip(imag(0.33+sin(|newpixel|)))*cabs((newpixel)^4)-b2+0.001*b3-0.42*cos(b9)+0.35
  c=whitesq*b4-(whitesq==0)*(b4/2)
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z-conj(c+0.1*b6)+flip(real(|d/70*newpixel|))-2*(c/8)-0.33*b7-b2
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3320 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b3=(((exp(0.0045/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b2=(b8/0.55-b6/0.55-b7/0.55-0.001/newpixel)
  b4=conj(|newpixel|)^5+conj(0.1/newpixel+flip(0.01/newpixel))
  b9=conj(0.007/b4-flip(0.007/b4))
  b5=flip(imag(0.33+sin(|newpixel|)))*cabs((newpixel)^4)-b2+0.001*b3-0.42*cosxx(b9)+0.3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z-conj(c+0.1*b6)+flip(real(|d/70*newpixel|))-2*(c/9)-0.33*b7-b2
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3321 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.01/newpixel), b7=flip(0.025/newpixel)
  b4=newpixel^3^exp(0.02*newpixel)+0.25
  b5=abs((cabs(b4^6)/(cotanh(0.1-newpixel))+conj(0.01/newpixel))+flip(0.01/b4))+0.2493
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+c/10-b6
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3322 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=conj(0.01/newpixel-flip(0.001/newpixel))
  b5=conj(conj(newpixel/12)*sin(abs(newpixel/13)))*conj(newpixel^8)-b3-conj(0.1/newpixel)+0.2
  b6=conj(conj(b5/2.5))-conj(0.01/newpixel)
  b4=b6+0.25
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(|z/6|)+z*z+c+0.09-c/8+0.055/newpixel-(flip(abs(d/60*newpixel)))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3323 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(newpixel^4/(tanh(0.3/newpixel)))+(0.1/newpixel)
  b5=conj(b4^6)-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3324 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.01/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b2=(b8/0.55-b6/0.55-b7/0.55-0.001/newpixel)
  b4=(conj(newpixel^4/(tanh(0.3/newpixel)))+(0.1/newpixel))-0.25
  b5=conj(cabs(b4^6)-b2)-conj(0.1/newpixel-flip(0.01/newpixel))-0.17
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3325 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.01/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b4=newpixel^2-conj(0.2*cabs(0.2-newpixel^(-0.025)))
  b5=flip(b4-b7)^3-cabs(0.01/newpixel-flip(0.01/b4))-b6+b8+0.15
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3326 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.01/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b2=(b8/0.55-b6/0.55-b7/0.55-0.001/newpixel)
  b5=abs(conj(newpixel^5))*cabs(conj(newpixel))-conj(0.0125/newpixel-flip(0.005/newpixel))-b2-0.19452
  b4=conj(b5/2+b5)^2-conj(0.001/b5-flip(0.001/b5))-b6
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.75-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3327 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.01/newpixel), b7=flip(0.02/newpixel)
  b1=newpixel^2-conj(0.2*cos(0.2-newpixel^(-0.025)))
  b5=flip(conj(newpixel^4))*abs(conj(newpixel))*b1-conj(0.0125/newpixel-flip(0.005/newpixel))-0.075
  b4=conj(b5/2+b5)^2-conj(0.001/b5-flip(0.001/b5))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.66-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+c/10-b7+b6
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3328 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.025/newpixel), b7=flip(0.01/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10a=newpixel-sinh(0.01/newpixel)-tanh(0.01/newpixel)-sinh(0.01/newpixel)
  b10=conj(newpixel)^3*newpixel^3*abs(newpixel)
  b5=conj(b10^1.5)*b10a^2*newpixel-b6-b7-b8-0.1945
  b4=conj(b5/2+b5)^2-conj(0.001/b5-flip(0.001/b5))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.66-(whitesq==0)*b5/2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c-b6+b7+0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3329 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.025/newpixel), b7=flip(0.01/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b2=(b8/0.65-b6/0.65-b7/0.65-0.002/newpixel)
  b10a=newpixel-sinh(0.01/newpixel)-tanh(0.01/newpixel)-sinh(0.01/newpixel)
  b10=conj(newpixel)^3*newpixel^3*abs(newpixel)
  b1=tanh(newpixel)^2-conj(0.075*cos(0.2-newpixel^(-0.025)))
  b5=conj(b10^3)*conj(b10a^2*newpixel^2.5)-0.2*b1-b6-b8-0.1945
  b4=conj(b5/2+b5)^2-conj(0.01/b5-conj(0.01/b5))-b2-0.25
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5/2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c-b6+b7+0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3330 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.025/newpixel), b7=flip(0.01/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b3=(((exp(0.0045/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b2=(b8/0.65-b6/0.65-b7/0.65-0.002/newpixel)
  b10a=newpixel-sinh(0.01/newpixel)-tanh(0.01/newpixel)-sinh(0.01/newpixel)
  b10=conj(newpixel)*sinh(newpixel)^2*tanh(newpixel)*conj(abs(newpixel))
  b1=tanh(newpixel/pi)^2-conj(0.075*cos(0.2-newpixel^(-0.025)))
  b5=b10a*b10-b2*0.5+b6+b7+0.02*b3+0.1045
  b4=conj(b5/2+b5)^2-conj(0.001/b5-flip(0.001/b5))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5/3/newpixel
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c-b6+b7+0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3331 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.025/newpixel), b7=flip(0.01/newpixel)
  b10a=newpixel^3-cabs(0.01/newpixel)-abs(0.01/newpixel)-(0.01/newpixel)
  b5=0.67*b10a*(cabs(newpixel^2)+conj(conj(newpixel^9)))-conj(0.1/newpixel-flip(0.01/newpixel))+0.1
  b4=b5-conj(|0.1/b5|)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c-b6+b7-0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3332 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.025/newpixel)
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*conj(b5^0.745)-(whitesq==0)*conj(b5-b6)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3333 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.055/newpixel)
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))+0.2
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.0075/newpixel)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*conj(b5^0.745)-(whitesq==0)*conj(b5-b6)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3334 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.055/newpixel)
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))+0.2
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.0075/newpixel)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*conj(b5^0.745)-(whitesq==0)*conj(b5-b6)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+(-0.745,-0.132)-c/8.25
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3335 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.055/newpixel)
  b4=cabs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))+0.2
  b5=conj(cabs(newpixel^3-b6))*flip(abs(newpixel^4))-flip(0.025/newpixel)-conj(0.0075/newpixel)-0.1834
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*conj(b5^0.745)-(whitesq==0)*conj(b5-b6)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c+(-0.745,-0.132)-c/8.25
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3336 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.055/newpixel)
  b4=cabs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))+0.2
  b5=conj(cabs(newpixel^3-b6))*flip(abs(newpixel^4))-flip(0.025/newpixel)-conj(0.0075/newpixel)-0.1834
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*conj(b5^0.745)-(whitesq==0)*conj(b5-b6)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z-conj(0.15*z)+c+c/12
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3337 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=conj(0.055/newpixel), b7=flip(0.025/newpixel)
  b5=conj(newpixel^2)*conj(flip(newpixel^3))-b6^2-b7+0.1534
  b4=conj(b5/2.5)+flip(b5/2.5)-b6
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*conj(b5-b6)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z-conj(0.25*z)+c+c/8
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3338 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.025/newpixel)
  b4=0.3*(newpixel^4)/cos(0.1/cotanh(newpixel))-0.1/log(newpixel-0.2/sqrt(0.50/newpixel))^2.5-conj(0.05/newpixel)
  b5=b10a*conj(b4/2.5)-b6+0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.7456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3339 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.05/newpixel)
  b5=(newpixel^5)-conj(0.1/newpixel-flip(0.010/newpixel))+conj(0.1/newpixel)+0.2
  b4=newpixel-conj(0.1/newpixel-flip(0.01/newpixel))-conj(0.01/b5)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.7456-(whitesq==0)*(b5+newpixel/pi)+b6*0.25
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3340 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=b5=(0.5+newpixel/2)^7-conj(0.1/newpixel)-flip(0.1/newpixel)+0.3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.7456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3341 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=(0.5+newpixel/2)^7-conj(0.1/newpixel)-flip(0.1/newpixel)+0.3
  b5=(0.5+newpixel/3)^4*conj(0.5+newpixel/2)^4-conj(0.15/newpixel)-flip(0.15/newpixel)+0.3
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.7456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+conj(c-0.075/c)-flip(real(|d/40*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3342 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b9=abs(0.5+newpixel/3)^4*conj(0.5+newpixel/2)^4*(0.5+newpixel/2)
  b4=(0.5+newpixel/2)^7-conj(0.2/newpixel)-flip(0.2/newpixel)+0.3
  b5=b9-conj(0.175/newpixel)-flip(0.15/newpixel)-b8-0.01/b4-conj(0.01/b4)+0.27
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.6456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+conj(c-0.075/c)-flip(real(|d/40*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3343 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b9=cabs(0.5+newpixel/3)^4*conj(0.5+newpixel/2)^4*flip(0.5+newpixel/2)^2
  b4=(0.5+newpixel/2)^7-conj(0.2/newpixel)-flip(0.2/newpixel)+0.3
  b5=b9-conj(0.175/newpixel)-flip(0.15/newpixel)-b8-0.01/b4-conj(0.1/b4)+0.27
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.6456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+conj(c-0.075/c)-flip(real(|d/40*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3344 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=flip(newpixel^5)-conj(0.1/newpixel-flip(0.001/newpixel))-0.135
  b4=b5-conj(|0.1/b5|)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.7456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3345 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=flip(newpixel^2)-cabs(conj(newpixel^7))-conj(0.01/newpixel-flip(0.001/newpixel))
  b4=abs(b5/4)*conj(conj(b5/2))*conj(flip(b5/3))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5/(tanh(0.3/newpixel))
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3346 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  j=(1-newpixel)^1.8/flip(asinh(newpixel^2))
  b5=(newpixel^7)/j-conj(0.01/newpixel)-flip(0.1/newpixel)+0.15
  b4=(newpixel^7)/j-conj(0.01/newpixel)-flip(0.1/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3347 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=conj(newpixel)*abs(newpixel)*flip(newpixel)-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=conj(sinh(b4^3))-conj(0.1/b4+flip(0.01/b4))-0.15
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3348 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=2*(conj(0.1-newpixel))*conj(abs(newpixel))*flip(tanh(newpixel))-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=(conj(sinh(b4^3))-conj(0.1/b4+flip(0.01/b4))-0.15)^2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3349 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  ba=2*(conj(0.1-newpixel))*2*conj(abs(newpixel))*flip(tanh(newpixel))
  b4=ba-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=(conj(sinh(b4^3))-conj(0.15/b4+flip(0.0075/b4))-0.15)^2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3350 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  ba=2*(conj(0.1-newpixel))*2*conj(abs(newpixel))*2*flip(tanh(sinh(newpixel)))
  b4=ba-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=(conj(sinh(b4^3))-conj(0.15/b4+flip(0.0175/b4)-conj(0.1/newpixel))-0.16)^2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5/2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3351 {; Modified Sylvie Gallet frm.1996
	  ; Rewritten for if..else by Sylvie Gallet, 6/14/98
	  ; passes=1 needs to be used with this PHC formula
          ; Added variable "newpixel". G. Martin 6/13/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  IF (whitesq)
    c = 0.264 * conj(0.1-newpixel) * conj(sinh(newpixel)) * flip(tanh(newpixel))
    z = zorig = (sqr(sqr(newpixel)) - flip(0.05/newpixel) - conj(0.001/newpixel)\
	       - 0.0001/c)^0.745
    c = (-0.745,-0.132) - flip(conj(c))
  ELSE
    c = - 0.264 * conj(0.1-newpixel) * conj(sinh(newpixel)) * flip(tanh(newpixel))
    z = zorig = - (sqr(sqr(newpixel)) - flip(0.05/newpixel) - conj(0.001/newpixel)\
	       + 0.0001/c)
    c = (-0.745,-0.132) - flip(conj(c))
  ENDIF
  bailout = 16, iter = 0
  :
  IF (iter == p1)
    z = 0, c = (-0.745,-0.132) - flip(conj(0.15*zorig^1.2))
  ELSEIF (iter == imag(p1))
    z = 0, c = (-0.745,-0.132) - flip(conj(0.225*zorig))
  ELSEIF (iter == p2)
    z = 0, c = (-0.745,-0.132) - flip(conj(0.3375*zorig))
  ELSEIF (iter == imag(p2))
    z = 0, c = (-0.745,-0.132) - flip(conj(0.50625*zorig))
  ENDIF
  iter = iter + 1
  z = z*z + c
  z <= bailout
  ;SOURCE: 98msg.frm
}


Carr3352 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=conj(newpixel)*abs(newpixel)*flip(newpixel)-conj(0.1/newpixel-flip(0.01/newpixel))-0.2
  b4=conj(sinh(b5^3))-conj(0.1/b5+flip(0.01/b5))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.745,-0.132)-flip(conj(c/10))
  iter=iter+1
  z<=bailout
  ;SOURCE: 43fcarr.frm
}


Carr3353 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel)
  m3=tanh(newpixel/2)*conj(conj(newpixel/2))*ba
  b5=m3-tanh(0.10/newpixel-sinh(0.01/newpixel))
  b4=cabs(b5/2)-b6
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}


Carr3354 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel)
  b1=conj(conj(newpixel/2))*conj(cabs(newpixel/3))*abs(newpixel/4)
  ba=2*(conj(0.1-newpixel))*2*conj(sinh(newpixel))*2*flip(tanh(newpixel))
  m3=tanh(newpixel/2)*conj(conj(newpixel/2))*ba*b1
  b5=conj(m3)-tanh(0.10/newpixel-sinh(0.1/newpixel-0.1/newpixel))
  b4=cabs(b5/2)-b6
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}


Carr3355 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), d=sqrt(1/newpixel-cosxx(1/newpixel))
  b1=conj(conj(newpixel/2))*conj(abs(newpixel/3))*abs(newpixel/4)
  ba=2*(conj(0.1-newpixel))*2*conj(sinh(newpixel))*2*flip(tanh(newpixel))
  m3=tanh(newpixel/2)*conj(conj(newpixel/2))*ba*b1
  b5=conj(m3)-tanh(0.10/newpixel-sinh(0.1/newpixel-0.1/newpixel))
  b4=cabs(b5/2)-b6
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(((3*z*z-1)-conj(0.1/newpixel))/(2+c))+flip(real(|d/70*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}


Carr3356 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.0015/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b4=((flip(abs(newpixel))^4/(flip(asinh(newpixel)))))-conj(0.1/newpixel)
  b5=(conj(flip(abs(newpixel-b8))^6/(flip(asinh(newpixel))))-0.135)^0.69-b6
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}


Carr3357 (YAXIS) {; Modified Sylvie Gallet frm.1996
		  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=((tan(newpixel)-sin(newpixel))*(conj(newpixel)\
     -flip(newpixel)))-conj(0.08/newpixel)+0.15
  b4=newpixel*b5
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 98msg.frm
}


Carr3358 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=((tan(newpixel)-sin(newpixel))*(conj(newpixel)-flip(newpixel)))-(0.08/newpixel)+0.15
  b4=newpixel*b5
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}


Carr3359 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=((tan(newpixel)-sin(newpixel))*(conj(newpixel)-tan(newpixel)))-conj(0.08/newpixel)+0.15
  b4=newpixel*b5-conj(0.001/b5)
  c=whitesq*b4^0.645-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}


Carr3360 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=conj(conj(newpixel/2))*conj(abs(newpixel/3))*abs(newpixel/4)
  ba=2*(conj(0.1-newpixel))*2*conj(sinh(newpixel))*2*flip(tanh(newpixel))
  b5=b1*flip(conj(newpixel^5))-conj(0.1/newpixel-flip(0.01/newpixel))+0.15
  b4=conj(b5/2+b5)^2-conj(0.001/b5-flip(0.001/b5))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.745-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}


Carr3361 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b9=abs(0.5+newpixel)*conj(0.5+newpixel)*flip(0.5+newpixel)
  b5=2*b9*flip(conj(newpixel^4))-conj(0.12995/newpixel-flip(0.01/newpixel))+0.199999
  b4=conj(b5)^2-conj(0.001/b5-flip(0.001/b5))-conj(0.1/newpixel-flip(0.01/newpixel))-0.3
  c=whitesq*b4-(whitesq==0)*b4^2
  z=whitesq*b5^0.7456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}


Carr3362 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(flip(0.1-newpixel)*abs(newpixel^4))^2-newpixel/pi*2-conj(0.03/newpixel)-0.1
  b4=conj(b5)^2-conj(0.001/b5-flip(0.001/b5))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4^2
  z=whitesq*b5^0.7456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}


Carr3363 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.035/newpixel), b7=flip(0.01/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b5=conj(conj(newpixel^3))*cabs(newpixel+0.125)^4-b7-b6+1.75*b8-0.175
  b4=flip(b5)^2-conj(0.001/b5-flip(0.001/b5))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4^2
  z=whitesq*b5^0.5456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}


Carr3364 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.035/newpixel), b7=flip(0.01/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b5=conj(conj(newpixel^3))*cabs(newpixel+0.125)^4-b7-b6+1.75*b8-0.175
  b4=flip(b5)^2-conj(0.001/b5-flip(0.001/b5))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4^2
  z=whitesq*b5^0.5456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z-conj(0.5*z)+c+c/8
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}


Carr3365 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.035/newpixel), b7=flip(0.01/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b5=conj(conj(newpixel^3))*abs(newpixel+0.125)^4-b7-b6+1.75*b8-0.175
  b4=flip(b5)^2-conj(0.001/b5-flip(0.001/b5))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4^2
  z=whitesq*b5^0.5456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z-conj(0.5*z)+c+c/8
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}


Carr3366 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.035/newpixel), b7=flip(0.01/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  ba=2*(conj(0.1-newpixel))*2*conj(sinh(newpixel))*2*flip(tanh(newpixel))
  b5=ba*conj(abs(newpixel^2))*abs(conj(newpixel+0.125))^4-b7-b6+2.75*b8-0.165
  b4=flip(b5)^2-conj(0.001/b5-flip(0.001/b5))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4^2
  z=whitesq*b5^0.5456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z-conj(0.5*z)+c+c/8
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}


Carr3367 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.065/newpixel), b7=flip(0.03/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  ba=2*(conj(0.1-newpixel))*2*conj(sinh(newpixel))*2*flip(tanh(newpixel))
  b5=conj(ba)*conj(abs(newpixel^2))*abs(conj(newpixel+0.125))^4-b7-b6-2*b8-0.165
  b4=flip(b5)^2-conj(0.001/b5-flip(0.001/b5))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.5456-(whitesq==0)*b5*0.75
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z-conj(|0.15*z|)+c+cabs(c/10)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}


Carr3368 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b10=flip(newpixel^8)*2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  b5=b10-flip(0.0125/newpixel)-conj(0.0125/newpixel)-0.19
  b4=(newpixel^4/(tanh(0.3/newpixel)))+(0.1/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.5456-(whitesq==0)*b5*0.75
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z-conj(0.35*z)+c+abs(c/8)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}


Carr3369 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.085/newpixel)
  b4=b6^100+newpixel*2+0.2
  b5=b4*newpixel-conj(0.1/newpixel-flip(0.01/newpixel))-0.15
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5*0.5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}


Carr3370 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.1/newpixel), b7=flip(0.01/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-conj(0.01/newpixel-flip(0.001/newpixel))
  b5=conj(conj(newpixel^3))*cabs(newpixel+0.125)^4-b7-b6+1.75*b8-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.7456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.13214)+conj(c/10)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}


Carr3371 (YAXIS) {; Modified Sylvie Gallet frm.1996
		  ; Rewritten for if..else by George Martin 3/9/98
		  ; passes=1 needs to be used with this PHC formula
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  tenthinvpixel = .1/newpixel
  b6=conj(tenthinvpixel) 
  b7=flip(.1*tenthinvpixel) 
  b8=cabs(.02*tenthinvpixel+cabs(0.02*tenthinvpixel))
  b4=abs(newpixel^2)*conj(flip(newpixel^3))\
     -conj(tenthinvpixel-flip(0.1*tenthinvpixel))
  b5=(newpixel^3)*cabs(newpixel+0.125)^4-b7-b6+1.75*b8-0.2
  IF (whitesq)
    z = origz = b5^0.7456
    c = (-0.7456,-0.13214)+conj(.1*b4)
  ELSE
    z = origz = -b5
    c = (-0.7456,-0.13214)+conj(.1*(-b4))
  ENDIF
  bailout=16, imagp1 = imag(p1), imagp2 = imag(p2), iter=0
  :
  IF (iter == p1)
    z=0
    c=(-0.7456,-0.13214)+conj(.15*origz^1.2)     
  ELSEIF (iter == imagp1)
    z=0
    c=(-0.7456,-0.13214)+conj(.225*origz)   
  ELSEIF (iter == p2)
    z=0
    c=(-0.7456,-0.13214)+conj(.3375*origz)   
  ELSEIF (iter == imagp2)
    z=0
    c=(-0.7456,-0.13214)+conj(.50625*origz)   
  ENDIF
  z=z*z+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 98msg.frm
}


Carr3372 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.145/newpixel), b7=flip(0.04/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=conj(conj(newpixel^3))*cabs(newpixel+0.125)^4-b7-b6+1.75*b8-0.22
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.7456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.2)+conj(c/16)+tanh(c/14)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}


Carr3373 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b6=conj(0.145/newpixel), b7=flip(0.04/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=conj(conj(newpixel^3))*cabs(newpixel+0.125)^4-b7-b6+1.75*b8-0.22
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.7456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7496,-0.134287)+conj(c/13)+conj(0.05/newpixel)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}


Carr3374 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.145/newpixel), b7=flip(0.04/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b4=abs(conj(conj(newpixel^2)))*conj(abs(newpixel^3))-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=abs(conj(conj(newpixel^3)))*cabs(newpixel+0.125)^4-b7-b6+1.75*b8-0.22
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.7456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7496,-0.134287)+conj(c/13)+conj(0.05/newpixel)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}


Carr3375 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.1/newpixel), b7=flip(0.01/newpixel)*2
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=conj(conj(newpixel^3))*cabs(newpixel+0.125)^4-log(b7+1)-log(b6+1)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.5-(whitesq==0)*b5*2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7496,-0.134287)+conj(c/12)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}


Carr3376 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-conj(0.125/newpixel-flip(0.01/newpixel))
  b5=conj(conj(newpixel^3)+0.125)*cabs(newpixel)^4-flip(0.01/b4)-conj(0.1/b4*0.66)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.5-(whitesq==0)*b5*2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7496,-0.134287)+conj(c/12)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}


Carr3377 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.135/newpixel), b7=flip(0.01/newpixel)
  b4=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=conj(conj(newpixel^3))*cabs(newpixel+0.125)^4-b7-b6-0.2
  c=whitesq*b4-(whitesq==0)*b4
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.7345-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(0.255044,0.5791)+conj(c/9.75)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}


Carr3378 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b4=newpixel^4-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=newpixel^4-conj(0.01/newpixel-flip(0.01/newpixel))-conj(0.1/newpixel)-0.2
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5/2
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+conj(c-0.075/c)-flip(real(|d/40*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}


Carr3379 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=(0.37,-0.2991)*0.99519
  b5=conj(conj(newpixel))*(newpixel^4)+tanh(0.1/newpixel)-sinh(0.1/newpixel)-conj(0.15/newpixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.7456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}


Carr3380 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(newpixel^2-(conj(0.125/newpixel)+flip(conj(0.0010/newpixel)))^4)+flip(0.1/newpixel)+0.25
  b4=newpixel*newpixel*(0.25-newpixel)+0.1
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5^0.7456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+c
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43gcarr.frm
}


Carr3381 {; MJM-PHC02 Brian E. Jones modified
  z =pixel^3
  c=conj(conj(pixel))*(pixel^4)+tanh(0.1/pixel)-sinh(0.1/pixel)-conj(0.125/pixel)
  newpixel=pixel, iter=0 
  reduction=real(p1)+(real(p1)==0)
  nextzoom=iterspace=(p3>0)*p3+(p3<=0)*256
  rotation=pi*flip(imag(p1))/180
  compt=0, limit=100, bailout=4
  p=(0.255044,0.5791):
  test=(iter==nextzoom)
  test1=(compt<limit)
  nextzoom=nextzoom+test*iterspace
  newpixel=newpixel*(1-test)+test*reduction*(newpixel-p2)*exp(rotation)
  z=z*(1-test) 
  c=(c*(1-test)+test*newpixel)*whitesq+(c*test1+p*(1-test1))*(whitesq==0)
  z=z*z+c
  iter=iter+1
  compt=compt+1
  |z|<=16
  ;SOURCE: 43gcarr.frm
}


Carr3382 {; MJM-PHC02 Brian E. Jones modified
  c =pixel^3-conj(0.1/pixel)
  z=conj(conj(pixel))*(pixel^4)+tanh(0.1/pixel)-sinh(0.1/pixel)-conj(0.125/pixel)
  newpixel=pixel, iter=0 
  reduction=real(p1)+(real(p1)==0)
  nextzoom=iterspace=(p3>0)*p3+(p3<=0)*256
  rotation=pi*flip(imag(p1))/180
  compt=0, limit=100, bailout=4
  p=(0.255044,0.5791):
  test=(iter==nextzoom)
  test1=(compt<limit)
  nextzoom=nextzoom+test*iterspace
  newpixel=newpixel*(1-test)+test*reduction*(newpixel-p2)*exp(rotation)
  z=z*(1-test)
  c=(c*(1-test)+test*newpixel)*whitesq+(c*test1+p*(1-test1))*(whitesq==0)
  z=z*z+c
  iter=iter+1
  compt=compt+1
  |z|<=16
  ;SOURCE: 43gcarr.frm
}


Carr3383 {; MJM-PHC02 Brian E. Jones modified
          ; Some optimizations made by G. Martin
  c=pixel^5-conj(0.15/pixel)
  z=pixel^4-conj(0.01/pixel-flip(0.01/pixel))-conj(0.1/pixel)-0.2
  newpixel=pixel, iter=0 
  reduction=real(p1)+(real(p1)==0)
  nextzoom=iterspace=(p3>0)*p3+(p3<=0)*256
  rotation=pi*flip(imag(p1))/180
  compt=0, limit=100, bailout=4
  p=(0.255044,0.5791):
  test=(iter==nextzoom)
  test1=(compt<limit)
  nextzoom=nextzoom+test*iterspace
  newpixel=newpixel*(1-test)+test*reduction*(newpixel-p2)*exp(rotation)
  z=z*(1-test)
  c=(c*(1-test)+test*newpixel)*whitesq+(c*test1+p*(1-test1))*(whitesq==0)
  z=z*z+c-conj(0.01/c)
  iter=iter+1
  compt=compt+1
  z<=16
  ;SOURCE: 43gcarr.frm
}


Carr3384 {; MJM-PHC02 Brian E. Jones modified
          ; Some optimizations made by G. Martin
  z=conj(conj(pixel))^4-conj(0.1/pixel)-flip(0.01/pixel)+sin(0.1/pixel)-0.1/pixel
  c=pixel^4-tanh(0.1/pixel)
  newpixel=pixel, iter=0 
  reduction=real(p1)+(real(p1)==0)
  nextzoom=iterspace=(p3>0)*p3+(p3<=0)*256
  rotation=pi*flip(imag(p1))/180
  compt=0, limit=100, bailout=4
  p=(0.255044,0.5741):
  test=(iter==nextzoom)
  test1=(compt<limit)
  nextzoom=nextzoom+test*iterspace
  newpixel=newpixel*(1-test)+test*reduction*(newpixel-p2)*exp(rotation)
  z=z*(1-test)
  c=(c*(1-test)+test*newpixel)*whitesq+(c*test1+p*(1-test1))*(whitesq==0)
  z=z*z+c
  iter=iter+1
  compt=compt+1
  z<=16
  ;SOURCE: 43gcarr.frm
}


Carr3385 {; Modified Sylvie Gallet frm.1996
          ; passes=1 needs to be used with this PHC formula
          ; Some optimizations made by G. Martin
  d=sqrt(1/pixel-cosxx(1/pixel))
  b5=conj(conj(pixel))*cabs(pixel)-flip(0.01/pixel)-conj(0.1/pixel)-0.1
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=conj(|z|/30)+z^2+(-0.7556,-0.117)+flip(real(|d/70*pixel|))-0.001
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3386 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b3=conj(conj(newpixel^2)*sin(abs(newpixel^3)))*cabs(newpixel^1.5)
  b5=b3-conj(0.1/newpixel-flip(0.01/newpixel))+0.16
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+c+flip(real(|d/70*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3387 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(abs(conj(newpixel^5))/(tanh(0.3/newpixel)))-conj(0.11/newpixel)-0.11
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3388 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(sin(conj(newpixel^5))/(tanh(0.3/newpixel)))-conj(0.11/newpixel)-0.11
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3389 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(conj(abs(|newpixel^5|))/(tanh(0.3/newpixel)))-conj(0.11/newpixel)-0.7598
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3390 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(0.75*newpixel-(newpixel+conj(sqr(|newpixel|*1/(newpixel-0.124)))))
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7612073214,0.087496112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3391 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=conj(cabs(newpixel/3)+newpixel^4)-0.7598
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7612073214,0.087496112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3392 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=((newpixel^4)/(conj(newpixel-conj(0.1/newpixel))))
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7612073214,0.087496112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3393 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(conj(newpixel^4)/(conj(newpixel-conj(0.1/newpixel))))
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7612073214,0.087496112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3394 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=cabs(newpixel)*(conj(newpixel^3)/(conj(newpixel-flip(0.08/newpixel))))
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7612073214,0.087496112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3395 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=cabs(newpixel)*abs(conj(newpixel^3)/(conj(newpixel-flip(0.08/newpixel))))
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7612073214,0.085496112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3396 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)*2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  b2=(b8/0.55-b6/0.55-b7/0.55-0.001/newpixel)
  b5=((cabs(newpixel^4)-b6)*(b10)^5*(b7-newpixel^2)^3-b2^1.25)
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7612073214,0.084496112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3397 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.025/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b10=flip(newpixel^8)*2/cotanh(newpixel^4)-conj(0.01/newpixel-flip(0.125/newpixel))
  b2=(b8/0.55-b6/0.55-b7/0.55-0.001/newpixel)
  b5=(conj(cabs(newpixel^4)-b6)*(b10)^2*(newpixel^2-b7)^3-b2^1.25)
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7612073214,0.084496112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3398 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.01/newpixel-flip(0.001/newpixel))
  b5=conj(conj(newpixel^2)*sin(abs(newpixel^3)))*conj(newpixel^2)-b3-conj(0.075/newpixel)
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7612073214,0.080996112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3399 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b7=flip(0.01/newpixel)
  b5=conj(newpixel^4-b7)-cabs(0.01/newpixel-flip(0.01/newpixel))+0.1
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7612073214,0.080996112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3400 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.025/newpixel), b7=flip(0.01/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b3=(((exp(0.0045/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b2=(b8/0.65-b6/0.65-b7/0.65-0.002/newpixel)
  b10a=newpixel-flip(0.01/newpixel)-tanh(0.01/newpixel)-conj(0.01/newpixel)
  b10=conj(newpixel/3)*sinh(newpixel)^2*tanh(newpixel)*conj(abs(newpixel/2))
  b5=conj(b10a*b10)^2-b2*0.5+b6+b7-0.02*b3+0.075
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7602073214,0.080996112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3401 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)-0.1
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7612073214,0.080996112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3402 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(newpixel)^4*conj(newpixel)^4-conj(0.15/newpixel)-flip(0.15/newpixel)+0.23
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7612073214,0.084496112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3403 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=conj(newpixel)
  b5=b2*(newpixel)^3*abs(newpixel)^4-conj(0.15/newpixel)-flip(0.015/newpixel)-(0.06/newpixel)+0.23
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7612073214,0.084496112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3404 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b9=abs(newpixel^3)^4*conj(newpixel)^4*(newpixel/2)
  b3=(0.5+newpixel/2)^7-conj(0.2/newpixel)-flip(0.2/newpixel)+0.3
  b5=b9-conj(0.175/newpixel)-flip(0.15/newpixel)-b8-0.01/b3-conj(0.01/b3)+0.29
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.745634221,-0.122236621);(-0.7612073214,0.084496112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3405 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=newpixel^5*conj(newpixel)^2*sqrt(newpixel^20)-conj(0.1/newpixel)+0.3
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7610073214,0.084496112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3406 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=cabs(newpixel^5)*conj(newpixel)^2*sqrt(conj(|newpixel^20|))-conj(0.1/newpixel)+0.3
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7610073214,0.084496112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3407 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(0.1/newpixel-flip(0.01/newpixel))
  b5=cabs(newpixel^4)*abs(conj(|newpixel|))^3*sqrt(conj(|newpixel^20|))-b3^3+0.365
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(0.37223341,-0.299137213)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3408 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(conj(newpixel^3)*sin(sin(newpixel)))-conj(0.1/newpixel)
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456208989,-0.132750082)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3409 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=conj(conj(newpixel^3.874)*sin(conj(newpixel^3.8)))-conj(0.1/newpixel-cabs(0.1/newpixel))+0.2
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7612073214,0.085496112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3410 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(newpixel/2)^6*abs(newpixel^2)-conj(0.10/newpixel)+0.25
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7612073214,0.085496112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3411 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(newpixel/2-conj(0.1/newpixel))^6*abs(newpixel^2)*conj(newpixel^2)-conj(0.10/newpixel)+0.25
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7612073214,0.085496112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3412 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  d=sqrt(1/newpixel-cosxx(1/newpixel))
  b5=(newpixel^3-conj(0.1/newpixel))^6*cabs(newpixel/2)*conj(conj(newpixel^2))-conj(0.10/newpixel)+0.25
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7612073214,0.085496112)+flip(real(|d/10*newpixel|))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3413 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(newpixel/3)^2-newpixel/2
  b5=b3*(abs(conj(newpixel^7))/(tanh(0.6/newpixel)))-conj(0.05/newpixel)-0.13
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7626073214,0.084296112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3414 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=((|newpixel|)^7-1/log(0.0010/newpixel)-cos(0.010/newpixel+1.25)-conj(0.10/newpixel))
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7626073214,0.084996112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3415 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=newpixel-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=(((conj(b3/2))*abs(b3)*(b3)^3-conj(0.01/b3))/(tanh(0.3/newpixel)))+0.35
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7626073214,0.085096112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3416 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=(1.224*cabs(newpixel^5)-flip(conj(newpixel)))
  b5=(((conj(b3/2))*abs(b3)*(b3)^3-conj(0.01/b3))/(tanh(0.6/newpixel)))+0.37
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7626073214,0.084796112)
  iter=iter+1
  z<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3417 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(conj(newpixel^3+0.2/newpixel))^2, b2=abs(newpixel)
  b5=b2*cabs(b3)*conj(newpixel/2)*flip(flip(newpixel/2))^5-conj(0.11/newpixel)-flip(0.07/newpixel)+0.38
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7626073214,0.085396112)
  iter=iter+1
  |z^6|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3418 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(conj(newpixel^3+0.2/newpixel))^2, b2=conj(abs(|newpixel|))
  b5=b2*cabs(b3)*(newpixel/2)*flip(conj(newpixel/2))^5-conj(0.11/newpixel)-flip(0.07/newpixel)+0.38
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7626073214,0.085396112)
  iter=iter+1
  |z^6|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3419 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=flip(conj(newpixel-flip(0.01/newpixel)))*(conj(newpixel^3-conj(0.1/newpixel)))
  b5=b3-tanh(0.1/newpixel)+sinh(0.165/newpixel)-flip(0.1/newpixel)+0.25
  z=whitesq*b5^0.8456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7626073214,0.085396112);(-0.7626073214,0.086296112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3420 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=cabs(newpixel/2)-newpixel^5+0.07/newpixel+0.2
  z=whitesq*b5^0.7456-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7614773214,0.086456112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3421 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=conj(newpixel/2)^3*2*(newpixel/3)*(cabs(conj(newpixel^3))^85*cabs(|newpixel|)^5)-(0.1/newpixel)+0.38
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.745637089,-0.1563332)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3422 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=conj(newpixel/2)^3*2*(newpixel/3)*(cabs(conj(newpixel^3))^85*cabs(|newpixel|)^5)-(0.1/newpixel)+0.38
  b3=conj(0.1/newpixel-flip(0.01/newpixel))
  b1=conj(newpixel^3)*(|newpixel|)
  b5=b2*(b1+(flip(asin(0.010/newpixel))-conj(asin(0.10/newpixel)))+b3)+0.3
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.744037089,-0.1192332)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3423 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=conj(newpixel/2)^3*2*(newpixel/3)*(cabs(conj(newpixel^3))^85*cabs(newpixel)^5)-(0.1/newpixel)+0.38
  b3=conj(0.1/newpixel-flip(0.01/newpixel))
  b1=conj(newpixel^3)*(|newpixel|)
  b5=((b2*(b1+(flip(asin(0.010/newpixel))-conj(asin(0.10/newpixel)))+b3))/(tanh(0.5/newpixel)))+0.3
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.743337089,-0.1191932)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3424 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=conj(newpixel/2)^3*2*(newpixel/3)*(cabs(conj(newpixel^3))^85*cabs(newpixel)^5)-(0.1/newpixel)+0.38
  b3=conj(0.1/newpixel-flip(0.01/newpixel))
  b1=conj(newpixel^3)*newpixel^2-conj(0.1/newpixel)
  b5=((b2*(b1+(flip(asin(0.010/newpixel))-conj(asin(0.10/newpixel)))+b3))/(tanh(0.2/newpixel)))+0.45
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.743337089,-0.1186932)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3425 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=((|newpixel|)^7-1/log(0.0010/newpixel)-cos(0.010/newpixel+1.25)-conj(0.10/newpixel))
  b3=abs(conj(newpixel)*flip(newpixel))
  b5=conj(newpixel^3)*b3/2*b2/3-conj(0.1/newpixel-flip(0.015/newpixel-conj(0.01/b3)))-0.15
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(0.37223341,-0.312137213)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3426 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=((|newpixel|)^7-1/log(0.0010/newpixel)-cos(0.010/newpixel+1.25)-conj(0.10/newpixel))
  b3=(newpixel^3-conj(conj(0.10/newpixel))-cotan(cotan(1/newpixel)))
  b1=conj(newpixel^3)*conj(cabs(b3/2))*flip(b2/3)
  b5=b1-conj(0.1/newpixel-flip(0.02/newpixel-conj(0.01/b3)))-conj(0.08/newpixel)-0.1
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(0.37183341,-0.312637213)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3427 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=newpixel/3*conj(newpixel/2)*newpixel
  b3=newpixel/3*flip(conj(newpixel^5))*abs(conj(newpixel))
  b5=(conj((b2-0.1/newpixel)*b3)^3)/(b3-b2)-conj(0.0125/newpixel-flip(0.005/newpixel))-0.1/newpixel
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(0.37383341,-0.312337213)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3428 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=0.1/newpixel
  b6=conj(0.075/newpixel), b7=flip(0.01/newpixel), b8=sin(0.003/newpixel-flip(0.01/newpixel))
  b3=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=conj(b3/3)*conj(conj(newpixel^3))*cabs(newpixel-0.1/newpixel)^4-b7-b6*b8+b1-0.2
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(0.37470341887,-0.3123372136);(-0.7614773214,0.083086112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3429 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=0.12/newpixel
  b6=conj(0.05/newpixel), b7=flip(0.01/newpixel), b8=sin(0.003/newpixel-flip(0.01/newpixel))
  b3=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))-conj(0.1/newpixel-flip(0.01/newpixel))
  b5=conj(b3/3)*conj(conj(newpixel^3))*cabs(newpixel-0.05/newpixel)^4-b7-b6*b8+b1-0.3
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(0.22370345,0.53229573)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3430 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  ;d=sqrt(1/newpixel-cosxx(1/newpixel))
  b1=0.12/newpixel
  b6=conj(0.05/newpixel), b7=flip(0.01/newpixel), b8=sin(0.003/newpixel-flip(0.01/newpixel))
  b3=abs(conj(conj(newpixel/2)))*conj(flip(newpixel))-conj(0.07/newpixel-flip(0.007/newpixel))
  b5=conj(|b3/3|)*conj(conj(newpixel^2))*abs(newpixel-0.05/newpixel)^2-b7-b6*b8+b1-0.2
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(0.22490345,0.53179573)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3431 (YAXIS) {; Modified Sylvie Gallet frm.                   
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=0.1/newpixel
  b3=flip(conj(newpixel))*abs(conj(newpixel))*newpixel-conj(0.0125/newpixel-flip(0.005/newpixel))
  b5=(b3/2+b3)^2-conj(0.001/b3-flip(0.001/b3))+0.0124+b1
  compt=0, limit=real(p1/(1/cos(newpixel/5))), bailout=4
  z=whitesq*b5^0.845-(whitesq==0)*b5
  cinv=p2/(z+p3)
  p=(-0.7626073214,0.084996112):
  test=(compt<limit)
  z=z*z+(-0.7882322074096,-0.1502158760371);(-0.7612073214,0.087496112)
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3432 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b10=conj(newpixel)+abs(0.1-newpixel)*cabs(0.15-newpixel^2)
  b3=newpixel^8-flip(0.2/newpixel)
  b5=b10^4*b3+0.29
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.0335,0.695)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3433 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=newpixel*conj(newpixel/2)^3
  b5=b3*(|newpixel|)^4*conj(newpixel)^4-conj(0.15/newpixel)^2-flip(0.15/newpixel*0.8)+0.23
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7626073214,0.084996112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3434 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(abs(|newpixel^5|))
  b5=(flip(conj(newpixel^6)*b3)/(conj(0.3/newpixel)))*conj(newpixel-0.01/newpixel)-0.11/newpixel-0.17
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7620073214,0.085696112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43hcarr.frm
}


Carr3435 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(cabs(newpixel^5))-cos(0.066/newpixel)^3
  b2=conj(newpixel-0.01/newpixel)*flip(newpixel+0.1/newpixel)
  b5=(flip(conj((|newpixel|)^6)*b3)/(conj(0.3/newpixel)))*(b2/2)-0.125/newpixel-0.17
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7615073214,0.086096112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3436 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(cabs(newpixel^5))-acosh(|0.066/newpixel|)^5
  b2=conj(newpixel-0.01/newpixel)*flip(newpixel+0.1/newpixel)
  b5=(flip(conj((|newpixel|)^6)*b3)/(conj(0.3/newpixel)))*(b2+newpixel)-0.125/newpixel-0.24
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7615073214,0.086096112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3437 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=0.075/newpixel
  b6=conj(0.1/newpixel-conj(0.1/newpixel))
  b2=acos(conj(newpixel-0.01/newpixel))*flip(newpixel+0.1/newpixel)
  b5=b2*conj(newpixel^8)*cabs(newpixel+0.125)^7-(b1*2)-b6-0.05
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7910322074096,-0.1446158760371)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3438 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=((|newpixel|)^7-1/log(0.0010/newpixel)-cos(0.010/newpixel+1.25)-conj(0.10/newpixel))
  b3=abs(conj(newpixel)*flip(newpixel))
  b5=conj(newpixel^3)*b2^2*b3/3-conj(0.01/b3)-0.035
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7910322074096,-0.1446158760371)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3439 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=(|newpixel^4|)*conj(|newpixel^3|)
  b5=((b2)-1/log(0.0010/newpixel)-cos(0.010/newpixel+1.25)-conj(0.10/newpixel))
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7626073214,0.084996112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3440 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=0.03/newpixel
  b5=(|newpixel^7|)*newpixel^4*conj(newpixel)^4-conj(0.1/newpixel)-flip(0.15/newpixel)+b1+0.19
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7626073214,0.084996112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3441 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=0.03/newpixel
  b5=(|newpixel^7+b1|)*newpixel^4-cabs(|newpixel^4|)-flip(0.1/newpixel)+b1+0.16
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7626073214,0.084996112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3442 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=0.03/newpixel
  b3=sqrt(|newpixel^4|-conj(0.09/newpixel))
  b5=(|newpixel^7+b1|)*newpixel^4+b3-flip(0.1/newpixel)+b1+0.16
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7626073214,0.084996112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3443 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=0.045/newpixel
  b2=sqrt(|newpixel^4|), b3=sqrt(|newpixel^4|-conj(0.09/newpixel))
  b5=(|newpixel^7+b1|)*newpixel^5+b3+(|b2/4|)-flip(0.1/newpixel)+b1+0.158
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7626073214,0.084996112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3444 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=0.045/newpixel
  b2=sqrt(|newpixel^4|), b3=0.8/log(|newpixel^4|-conj(0.09/newpixel))
  b5=(|newpixel^7+b1|)*newpixel^5+b3+(|b2/4|)-flip(0.1/newpixel)+b1+0.158
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7626073214,0.084996112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3445 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=(((|newpixel^8|)-conj(0.175/newpixel))/(tanh(0.3/newpixel)))/(newpixel*2-0.175)
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7626073214,0.084996112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3446 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=(abs(conj(0.1-newpixel/3)))*flip(cabs((newpixel/2)-0.3/newpixel))*(newpixel-cabs(0.1/newpixel))
  b5=(|b2^2|)-conj(0.035/newpixel-flip(0.01/newpixel))-0.023
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7626073214,0.084996112)-0.000725
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3447 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.0425/newpixel), b7=flip(0.007/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b3=(((exp(0.0045/newpixel))/(cosxx(0.1-newpixel))))-conj(0.01/newpixel)
  b2=(|b8/0.65|-b6/0.65-b7/0.65-0.002/newpixel)
  b10a=newpixel-flip(0.01/newpixel)-tanh(0.01/newpixel)-conj(0.01/newpixel)
  b10=conj(newpixel/3)*sinh(newpixel)^2*tanh(newpixel)*conj(abs(newpixel/2))
  b5=b10+conj(b10^0.75)+asin(b10/2)+conj(|b10a|*b10)^2-b2*0.5+b6+b7-0.02*b3+0.075
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7626073214,0.084996112)-0.000725
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3448 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=conj(newpixel/3)*sinh(newpixel)^2*tanh(newpixel)*conj(abs(newpixel/2))
  b5=b2+(|newpixel|)^4*conj(newpixel)^4-conj(0.1/newpixel)-flip(0.015/newpixel)+0.29
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7626073214,0.084996112)-0.000725
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3449 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=(|0.03/newpixel|)-conj(|0.025/newpixel|)-real(0.025/newpixel)
  b3=conj(newpixel/2)*(newpixel/3)
  b2=conj(|newpixel^3|)*abs(|newpixel^3|)
  b5=b3*b2-(0.1/newpixel)+b1-0.06
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7626073214,0.084996112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3450 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=asin(|0.03/newpixel|)-conj(|0.025/newpixel|)-real(0.025/newpixel)
  b3=conj(newpixel/2)*(newpixel/3)-real(|newpixel/4|)
  b2=conj(|newpixel^3|)*abs(|newpixel^3|)-real(|newpixel|)
  b5=real(b3*b2)-((b3*b2)/2)-(0.12/newpixel)+(b1^2)+conj(b1)
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7626073214,0.084996112)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3451 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=(|0.03/newpixel|)-conj(|0.025/newpixel|)-real(0.025/newpixel)
  b10=conj(newpixel)+abs(0.1-newpixel)*cabs(0.15-newpixel^2)
  b3=newpixel^8-flip(0.2/newpixel)
  b6=((|newpixel/2|)+asin(newpixel/2))-(newpixel/2+conj(newpixel/2))
  b5=b6+b10^4*b3+1.4*b1+0.03/newpixel+0.29
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748600289672,-0.1350036189)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3452 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=(|newpixel^4|)*conj(conj(newpixel^6))
  b5=((b2)-(0.0010/newpixel)-sin(0.010/newpixel)+tan(0.115/newpixel))-0.36
  z=whitesq*b5^0.845-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748600289672,-0.1350036189)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3453 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=(|0.03/newpixel|)-conj(|0.025/newpixel|)-real(0.025/newpixel)
  b5=(|newpixel^7-b1|)*newpixel^4-conj(|newpixel^4+b1|)-flip(0.12/newpixel)+b1+0.26
  z=whitesq*b5^0.845-(whitesq==0)*conj(b5)
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748600289672,-0.1350036189)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3454 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=(conj(newpixel/3)-sin(newpixel/2))-0.06/newpixel
  b3=(conj(newpixel^2)*abs(newpixel^3))-conj(0.08/newpixel)-0.125/newpixel
  b5=conj(newpixel)*newpixel^2*b3-b2-0.17
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3455 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=(conj(newpixel/3)-sin(newpixel/2))-0.06/newpixel
  b3=(conj(newpixel^2)*abs(newpixel^3))-conj(0.08/newpixel)-0.125/newpixel
  b5=conj(newpixel)*newpixel^2*b3-b2-0.1/newpixel+0.066
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(0.378083004695,0.227300793319)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3456 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(cabs(newpixel^2))-cos(0.066/newpixel)
  b2=newpixel*2.5
  b5=(flip(conj((newpixel)^2)*conj(b3/2))/(conj(0.3/newpixel)))*(b2/2)-0.1/newpixel+0.066
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(0.378083004695,0.227300793319)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3457 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=(conj(newpixel/3)*sin(newpixel/2))-0.06/newpixel
  b3=(conj(newpixel/3)*abs(newpixel/3))*conj(0.08/newpixel)-0.125/newpixel
  b5=conj(newpixel)*(newpixel)*b3+b2-0.1/newpixel+0.066
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(0.378083004695,0.227300793319)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3458 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=(conj(newpixel/2)*(newpixel/2))*flip(newpixel/1.5)-0.06/newpixel
  b3=cabs(newpixel^2)*(conj(newpixel/3)*abs(newpixel/3))*conj(0.08/newpixel)+0.125/newpixel
  b5=conj(2*newpixel^2)*(newpixel)*(b3^2)+b2-0.1/newpixel-conj(0.1/newpixel)+0.066
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(0.378083004695,0.227300793319)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3459 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=flip(flip(newpixel^4))-conj(conj(0.1/newpixel))^4+0.15
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(0.378083004695,0.227300793319)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3460 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=conj(conj(newpixel^4))-flip(flip(0.03/newpixel))^4-0.15
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(0.378083004695,0.227300793319)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3461 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
                  ; newpixel=real(pixel)-flip(abs(imag(pixel)))
  b5=conj(abs(|newpixel^4|))-flip(abs(0.03/newpixel))^4-0.106/newpixel-flip(0.02/newpixel)-0.035
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(0.378083004695,0.227300793319)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3462 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=newpixel/2-|1/cos(asin(3*newpixel+0.52))|+flip(0.1/newpixel)
  b5=b3*flip(abs(|newpixel^4|))-flip(abs(0.03/newpixel))^4-0.106/newpixel-flip(0.02/newpixel)-0.035
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(0.378083004695,0.227300793319)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3463 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=(flip(abs(newpixel))^4/(flip(asinh(newpixel))))
  b2=conj(abs(|newpixel^2|))-flip(abs(0.03/newpixel))^4-0.106/newpixel-flip(0.02/newpixel)
  b5=0.5*newpixel+(b3*(|b2|))-0.1/newpixel+0.066
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(0.378083004695,0.227300793319)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3464 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=newpixel^2+conj(0.01/newpixel+sin(0.01/newpixel))
  b5=b3*conj(conj(newpixel^4))-flip(flip(0.03/newpixel))^4+0.0665
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(0.378083004695,0.227300793319)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3465 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=tanh(newpixel^2)-(((0.3,0.6)+newpixel)/(0.20/newpixel))
  b5=(|b3|)*conj(conj(newpixel^4))-flip(flip(0.02/newpixel))^4+0.0667
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(0.378083004695,0.227300793319);(-0.748800289672,-0.1350036189);
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3466 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(newpixel^7)*cotan(|newpixel|)^1.5-tanh(|newpixel/5|)
  b5=(b3)*conj(conj(|newpixel^4|))-flip(flip(0.024/newpixel))^4+0.066818
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(0.378083004695,0.227300793319)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3467 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=(newpixel^2)*conj(newpixel^3)
  b5=(b3)*conj(newpixel^4)-(sin(0.026/newpixel))^4+0.066818
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(0.378083004695,0.227300793319)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3468 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
                  ; newpixel=real(pixel)-flip(abs(imag(pixel)))
  b3=(newpixel^2)*conj(newpixel^3)
  b5=(b3)*conj(newpixel^4)-(sin(0.026/newpixel))^4+0.066818
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189);(0.378083004695,0.227300793319)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43icarr.frm
}


Carr3469 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=conj(newpixel^5)-flip(flip(0.026/newpixel))^4-0.001/newpixel+0.066825
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189);(0.378083004695,0.227300793319)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3470 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=(newpixel^2)*conj(|newpixel^3|)
  b5=b3-flip(flip(0.026/newpixel))^4-0.001/newpixel+0.066825
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3471 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=(|0.026/newpixel|)-conj(|0.025/newpixel|)-real(0.025/newpixel)
  b3=(newpixel^3)*conj(|newpixel^3|-b1)*(newpixel+b1)
  b5=(newpixel/2)*b3^0.75-flip(flip(0.026/newpixel))^4-0.0001/newpixel+0.066824
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3472 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=abs(conj(newpixel^4))*flip(cabs(newpixel^2))
  b3=(b2^2)-conj(0.035/newpixel-flip(0.01/newpixel))
  b5=(b3^2.75)*conj(newpixel^4)-(flip(0.024/newpixel))^4-0.158
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3473 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=abs(conj(newpixel^4))*flip(cabs(newpixel^2))
  b3=(b2^2)-conj(0.035/newpixel-flip(0.01/newpixel))
  b5=flip(b3^2.75)*conj(newpixel^4)-(flip(0.026/newpixel))^3.3-0.15823
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3474 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=abs(conj(newpixel^2.55))*flip(cabs(newpixel^2))
  b3=(b2^2)-conj(0.035/newpixel-flip(0.01/newpixel))
  b5=flip(b3^2.75)*flip(newpixel^4)-(flip(0.026/newpixel))^3.3-0.15823
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3475 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=abs(conj(newpixel^2.55))*flip(cabs(newpixel^2))
  b3=(b2^2)-conj(0.035/newpixel-flip(0.01/newpixel))
  b5=flip(b3^2.75)*conj(newpixel^4)-(flip(0.026/newpixel))^3.3-0.15823
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3476 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=abs(conj(newpixel^2.55))*flip(cabs(newpixel^2))
  b3=(b2^2)-conj(0.035/newpixel-flip(0.01/newpixel))
  b5=flip(b3^2.35)*cabs(newpixel^2)*newpixel^2-(flip(0.028/newpixel))^3.3+0.15823
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3477 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=abs(conj(newpixel^2.55))*flip(cabs(newpixel^2))
  b3=(b2^2)-conj(0.035/newpixel-flip(0.01/newpixel))
  b5=|flip(b3^2.35)|*(newpixel^2)*newpixel^2-asin(flip(0.033/newpixel))^3.3+0.15825
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3478 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=abs(conj(newpixel^2.55))*flip(cabs(newpixel^2))
  b3=(b2^2.75)-conj(0.035/newpixel-flip(0.01/newpixel))
  b5=|flip(b3^2.35)|*|flip(newpixel^2)|*newpixel^2-asin(flip(0.031/newpixel))^2.9+0.15841
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.134)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3479 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=(newpixel^2)*conj(newpixel)*newpixel
  b5=(b3^3.35)-(flip(0.03/newpixel))^3.3+0.15824
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3480 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=flip(conj(0.1+newpixel))*(newpixel)-(conj(0.1/newpixel))+sqr(flip(0.1/newpixel))
  b3a=(newpixel^2)*conj(newpixel)*(2*newpixel)
  b5=|b3a|*(b3^3.05)-(flip(0.033/newpixel))^3.15+0.15841
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3481 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=abs(conj(newpixel^2.55))*flip(cabs(newpixel^2))
  b3=(b2^2)-conj(0.035/newpixel-flip(0.01/newpixel))
  b5=flip(b3^2.35)*cabs(newpixel^2)*newpixel^2-(flip(0.028/newpixel))^3.3+0.15831
  ;b5=|b3a|*(b3^3.05)-(flip(0.033/newpixel))^3.15+0.15841
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)+0.000005
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3482 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=(|0.046/newpixel|)-conj(|0.025/newpixel|)-real(0.025/newpixel)
  b2=abs(conj(newpixel^2.55))*flip(cabs(newpixel^2))
  b3=(b2^2+b1^4)-conj(0.035/newpixel-flip(0.01/newpixel))
  b5=flip(b3^2.35)*cabs(newpixel^2)*newpixel^2-(flip(0.028/newpixel))^3.3+0.15831
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)+0.000009
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3483 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(abs(newpixel^2))-(0.066/newpixel)^3
  b2=conj(newpixel-0.01/newpixel)*flip(newpixel+0.1/newpixel)
  b3a=(flip(conj((newpixel^8))*b3)/(conj(0.3/newpixel)))*(b2/2)
  b5=newpixel*flip(b3a^3.75)-flip(0.027/newpixel)^3.6+0.15827
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)+0.0000085
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3484 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=conj(flip(newpixel^2))-flip(0.066/newpixel)^3
  b2=conj(newpixel-0.01/newpixel)*flip(newpixel+0.1/newpixel)
  b3a=((flip(newpixel^8)*b3)/(conj(0.3/newpixel)))*(b2/2)
  b5=conj(newpixel^4)*flip(b3a^3.75)-flip(0.023/newpixel-|0.0095/newpixel|)^3.6+0.15827
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)+0.0000085
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3485 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=(newpixel^4)*conj(|newpixel^2|)
  b3=(b2)-0.010/newpixel-conj(0.10/newpixel)
  b5=|newpixel^3|*flip(b3^3.75)-flip(0.024/newpixel-|0.0095/newpixel|)^3.395+0.15823
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)+0.0000085
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3486 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=(|0.046/newpixel|)-conj(|0.025/newpixel|)-real(0.025/newpixel)
  b3=(conj(conj(newpixel^5)))-cabs(conj(conj(|newpixel^1.5|)))
  b5=(|newpixel^3-b1^3|)*flip(b3^3.75)-flip(0.021/newpixel-|0.0095/newpixel|)^3.415+0.15827
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)+0.0000085
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3487 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=(|0.046/newpixel|)-conj(|0.025/newpixel|)-real(0.025/newpixel)
  b3=(conj(conj(newpixel^5)))-flip(conj(conj(|newpixel^1.5|)))
  b5=(|newpixel^2-b1^3|)*flip(b3^2.95)-flip(0.038/newpixel-|0.0095/newpixel|)^3.615+0.15827
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)+0.0000085
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3488 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3=((conj(newpixel^5)*(abs(newpixel)))/(1/newpixel))-conj(0.066/newpixel)-((flip(0.00510/newpixel))^2)
  b5=(|newpixel^3|)*flip(conj(b3^1.95))-flip(0.028/newpixel+|0.025/newpixel|)^3.915+0.15827
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)+0.0000085
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3489 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj((|newpixel+0.025/newpixel|)^4)
  b3a=(newpixel/2*b6)/(cotanh(-0.05/newpixel))-conj(0.06/newpixel)-(flip(0.0110/newpixel))
  b3=(b3a)/(tanh(0.3/newpixel))
  b5=(|newpixel^3|)*flip(conj(b3^2.05))-flip(0.020/newpixel+|0.029/newpixel|)^3.915+0.15827
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)+0.0000085
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3490 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=(cosh(cos(newpixel))), b2=(cosxx(cosh(newpixel)))
  b6=(cabs(newpixel)*conj(flip(newpixel))+0.22)/(b2)
  b3=newpixel^6-conj(0.006/b1-flip(0.04/b2-conj(0.01/b6)))
  b5=(|newpixel^3|)*flip(conj(b3^2.01))-flip(0.026/newpixel+|0.029/newpixel|)^3.915+0.15827
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)+0.0000085
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3491 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))
  b3=b2*abs(conj(newpixel^3))*abs(newpixel^4)+flip(0.01/newpixel)+conj(0.01/newpixel)
  b5=flip(b3^2.35)*cabs(newpixel^2)*newpixel^2-(flip(0.042/newpixel))^3.3+0.15831
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)+0.0000085
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3492 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3a=(|0.0175/newpixel|)
  b2=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))
  b3=(|b2^3|)/conj(conj(newpixel^3))*cabs(newpixel^4)-flip(0.01/newpixel)-conj(0.01/newpixel)-conj(b3a)
  b5=flip(b3^2.35)*cabs(newpixel^2)*newpixel^2-(flip(0.042/newpixel))^3.3+0.15831
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)+0.0000085
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3493 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=newpixel-conj(0.1/newpixel-flip(0.01/newpixel+cabs(0.01/newpixel)))
  b3=|newpixel^6-conj(0.1/b1-flip(0.01/b1+cabs(0.01/b1)))|
  b5=flip(b3^3.6)*cabs(newpixel^2)*newpixel^2-(flip(0.052/newpixel))^2.9+0.15831
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)+0.0000085
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3494 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b6=conj(0.015/newpixel), b7=flip(0.01/newpixel), b8=cabs(0.002/newpixel+cabs(0.002/newpixel))
  b2=(b8/0.55-b6/0.55-b7/0.55-0.001/newpixel)
  b2a=(conj(newpixel^4/(tanh(0.3/newpixel)))+(0.1/newpixel))
  b3=conj(cabs(b2a^6)-b2)-conj(0.1/newpixel-flip(0.01/newpixel))
  b3a=(|newpixel-b7^2|)/(cos(|0.6/newpixel|))
  b5=b3a*conj(b3^3.4)*flip(conj(newpixel^2.35))*newpixel^2-(flip(0.032/newpixel))^2.90+0.15831
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)+0.0000085
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3495 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3a=conj(cabs(newpixel^5))-cos(0.066/newpixel)^3
  b2=conj(newpixel-0.01/newpixel)*flip(newpixel+0.1/newpixel)
  b3=(flip(conj((|newpixel|)^6)*b3a)/(conj(0.3/newpixel)))*(b2/2)
  b5=conj(b3^3.4)*flip(conj(newpixel^2.35))*newpixel^2-(flip(0.032/newpixel))^2.90+0.15836
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748840289672,-0.1349866189)+0.0000085
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3496 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=abs(0.11/newpixel)
  b2=(|newpixel^4|), b3=(|newpixel^4|-conj(0.09/newpixel))
  b3=(|newpixel|)*newpixel*b3*(|b2/2|)-flip(0.01/newpixel)+b1
  b3a=conj(b3^3.5)*abs(0.5*b3)
  b5=b3a^1.5*flip(conj(newpixel^2.47))*newpixel^2-(flip(0.0335/newpixel))^2.90+0.15836
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748840289672,-0.1349866189)+0.0000085
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3497 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=abs(conj(newpixel^2.55))*flip(cabs(newpixel^2))
  b2a=(b2^2)-conj(0.035/newpixel-flip(0.01/newpixel))
  b3=flip(b2a^2.35)*cabs(newpixel^2)*newpixel^2-(flip(0.028/newpixel))^3.3
  b3a=cabs((|b3^3.5|)/3)*abs(b3/3)
  b5=b3a^2.5*flip(conj(newpixel^3.47))*newpixel^2-(flip(0.0435/newpixel))^2.85+0.15836
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000035
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3498 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=abs(conj(newpixel^2.55))*flip(cabs(newpixel^2))
  b2a=(b2^2)-conj(0.035/newpixel-flip(0.01/newpixel))
  b3=flip(b2a^2.35)*cabs(newpixel^2)*newpixel^2-(flip(0.028/newpixel))^3.3
  b3a=conj(b3^3.5)*abs(b3)+flip(0.029/newpixel)
  b5=b3a^2.5*flip(conj(newpixel^3.47))*newpixel^2-(flip(0.0445/newpixel))^2.85+0.15836
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000035
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3499 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
                  ; newpixel=real(pixel)-flip(abs(imag(pixel)))
  b2=abs(conj(newpixel^2.55))*flip(cabs(newpixel^2))
  b2a=(b2^2)-conj(0.035/newpixel-flip(0.01/newpixel))
  b3=flip(b2a^2.35)*cabs(newpixel^2)*newpixel^2-(flip(0.028/newpixel))^3.3
  b3a=conj(b3^3.5)*abs(b3)+conj(flip(0.021/newpixel))+sinh(0.0125/newpixel)
  b5=((b3a^2.5*flip(conj(newpixel^3.47)))/(conj(newpixel^2.5)))-(flip(0.0445/newpixel))^2.99+0.15836
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000035
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3500 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3b=conj(abs(newpixel^2))-(|0.166/newpixel|)^3
  b2=conj(newpixel-0.01/newpixel)*flip(newpixel+0.1/newpixel)
  b3c=(flip(conj((newpixel^8))*b3b)/(conj(0.3/newpixel)))*(b2^2)
  b3=flip(b3c^2.35)*cabs(newpixel^2)*newpixel^2-(flip(0.028/newpixel))^3.3
  b3a=conj(b3^3.5)*abs(b3)+(0.029/newpixel)+abs(0.01/newpixel)
  b5=((b3a^2.5*flip(conj(newpixel^3.47)))/(conj(newpixel^2.5)))-(flip(0.0445/newpixel))^2.99+0.15846
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000047
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3501 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=(|0.076/newpixel|)-conj(|0.025/newpixel|)-real(0.025/newpixel)
  b3b=conj(abs(newpixel^2))-(|0.166/newpixel|)^3
  b2=conj(newpixel-0.01/newpixel)*flip(newpixel+0.1/newpixel)
  b3ca=(flip(conj((newpixel^8))*b3b)/(conj(0.3/newpixel)))*(b2^2)
  b3=flip(b3ca^2.35)*cabs(newpixel^2)*newpixel^2-(flip(0.028/newpixel))^3.3
  b3a=conj(b3^3.5)*abs(b3)+(0.029/newpixel)+abs(0.01/newpixel)
  b3c=(b3a^2.5*flip(conj(newpixel^3.47)))*b1^5
  b5=(b3c/(conj(newpixel^2.5)))-(flip(0.0445/newpixel))^2.99+0.15856
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000058
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3502 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=(|0.076/newpixel|)-conj(|0.025/newpixel|)-real(0.025/newpixel)
  b3b=conj(abs(newpixel^2))-(|0.166/newpixel|)^3
  b2=(newpixel-0.01/newpixel)*(newpixel+0.1/newpixel)
  b3ca=(flip(conj((newpixel^8))*b3b^2)/(conj(0.1/newpixel)))*(b2^2)
  b3=flip(b3ca^2.35)*cabs(newpixel^2)*newpixel^2-(flip(0.028/newpixel))^3.3
  b3a=conj(b3^3.5)*abs(b3)+(0.029/newpixel)+abs(0.01/newpixel)
  b3c=(b3a^2.5*flip(conj(newpixel^3.47)))*b3b*b1^5
  b3d=cos(0.0001/newpixel)
  b5=(conj(b3c*newpixel)/(conj(newpixel^1.2)))-(flip(0.0485/newpixel))^2.99+b3d+0.15866
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000063
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3503 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3a=(0.1+|0.018/newpixel|)
  b2=abs(conj(conj(newpixel^2)))*conj(flip(newpixel^3))
  b3=(b2^3)*conj(conj(newpixel^3))*cabs(newpixel^4)-(b3a)
  b5=b3-(flip(0.048/newpixel))^3.3+0.15849
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000085
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3504 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3a=(0.1+|0.018/newpixel|)
  b2=abs(conj(flip(newpixel^2)))*conj(flip(newpixel^3))
  b3=flip(0.1-b2^2)*(b2^3)*conj(conj(newpixel^3))-(b3a)
  b5=b3-(flip(0.040/newpixel))^2.55+0.15849
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000099
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3505 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
                  ; newpixel=real(pixel)-flip(abs(imag(pixel)))
  b1=0.00014/newpixel
  b3=conj(abs(newpixel^4))-flip(abs(0.01/newpixel-flip(0.01/newpixel)))
  b5=flip(b3^3.35)*flip(newpixel^2)*newpixel^2-(flip(0.030/newpixel))^4.3+b1+0.15853
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.000025
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3506 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=0.000048/newpixel
  b2=abs(conj(newpixel^2.55))*flip(cabs(newpixel^2))
  b3=(b2^2)-conj(0.035/newpixel-flip(0.01/newpixel))
  b5=flip(b3^2.35)*cabs(newpixel^2)*newpixel^2-(flip(0.025/newpixel))^3.3+b1+0.15823
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)+0.000025
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3507 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=0.0001/newpixel
  b2=abs(conj(newpixel^2.55))*flip(abs(newpixel^2))
  b2a=(b2^2)-(0.035/newpixel-flip(0.01/newpixel))+0.004/newpixel
  b3=b2a+(newpixel^3)*conj(|newpixel^3|)*(newpixel/2)+b1*3
  b5=(b3^2.95)/(flip(b3))-flip(0.039/newpixel)^3.5-0.002/newpixel+0.067124
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3508 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=0.0001/newpixel
  b2=abs(conj(newpixel^2.55))*flip(abs(newpixel^2))
  b2a=(b2^2)-(0.035/newpixel-flip(0.01/newpixel))+0.004/newpixel
  b3=conj(b2a^0.98)+(newpixel^3)*flip(|newpixel^3|)*(newpixel/2)+b1*3
  b5=1.85*((b3^2.95)/(flip(b3)))-flip(0.069/newpixel)^4.25-0.002/newpixel+0.067124
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3509 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=0.0001/newpixel
  b2=abs(conj(newpixel^2.55))*flip(abs(newpixel^2))
  b2a=(b2^2)-(0.035/newpixel-flip(0.01/newpixel))+0.004/newpixel
  b3=b2a+(newpixel^3)*conj(|newpixel^3|)*(newpixel/2)+b1*3
  b5=asin(b3^2.95)/(flip(b3^1.30))-flip(0.039/newpixel)^3.5-0.004/newpixel+0.066124
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3510 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=0.0001/newpixel
  b2=abs(conj(newpixel^2.55))*flip(abs(newpixel^2))
  b2a=(b2^2)-(0.035/newpixel-flip(0.01/newpixel))+0.004/newpixel
  b3=b2a+(newpixel^3)*conj(|newpixel^3|)*(newpixel/2)+b1*3
  b5=(b3/3)*(b3^2.95)/(flip(b3^1.30))-flip(0.039/newpixel)^3.5-0.004/newpixel+0.066124
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3511 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=0.0001/newpixel
  b2a=asin(newpixel^3)-(0.035/newpixel-flip(0.01/newpixel))+0.004/newpixel
  b3=b2a+(newpixel^3)*conj(|newpixel^3|)*(newpixel/2)+b1*3
  b5=(b3/5)*(b3^2.95)/(flip(b3^1.30))-flip(0.039/newpixel)^3.9-0.004/newpixel+0.066124
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43jcarr.frm
}


Carr3512 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=0.0001/newpixel
  b2=((tan(newpixel)-sin(newpixel))*(conj(newpixel)-flip(newpixel)))-(0.08/newpixel)
  b2a=(b2^2)-(0.035/newpixel-flip(0.01/newpixel))+0.004/newpixel
  b3=b2a+(newpixel^3*b2a)*conj(|newpixel^3|)*(newpixel/2)+b1*3
  b5=(|b3^2.95|)/(flip(b3))-flip(0.029/newpixel)^3.5-0.007/newpixel+0.066124
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43kcarr.frm
}


Carr3513 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=conj(conj(newpixel^3))*cabs(newpixel+0.125)^4
  b2a=(b2^2)+0.004/newpixel
  b3=b2a+(newpixel^3*b2)*conj(newpixel^3)*(newpixel/2)
  b3a=(b3^2.95)/(flip(b3))-(b3*b2a)
  b5=(b3a)-flip(0.029/newpixel)^3.9-0.004/newpixel+0.068124
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43kcarr.frm
}


Carr3514 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=conj(conj(newpixel^3))*cabs(newpixel+0.125)^4
  b2a=(b2^2)+0.004/newpixel
  b3=b2a+(newpixel^3*b2)*conj(newpixel^3)*(newpixel/2)
  b5=(b3)-flip(0.055/newpixel)^3.9-0.004/newpixel+0.068124
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43kcarr.frm
}


Carr3515 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b2=conj(conj(newpixel^3))*cabs(newpixel+0.125)^4
  b2a=(b2^2)+0.004/newpixel
  b3=(b2a/3*b2a)+flip(newpixel^3*b2)*conj(newpixel^3)*(newpixel/6)
  b5=1.5*(|b3|)-flip(0.055/newpixel)^3.6-0.004/newpixel+0.066124
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43kcarr.frm
}


Carr3516 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3a=(0.1+|0.018/newpixel|)
  b2=abs(conj(flip(newpixel^2)))*conj(flip(newpixel^3))
  b3=flip(0.1-b2^2)*(b2^3)*conj(conj(newpixel^3))-(b3a)
  b2a=(b2^2)+0.004/newpixel
  b3=conj(0.17*b3)*abs(conj(conj(newpixel^4)))*conj(flip(newpixel^3))*(|2*newpixel^2|)*b2a
  b5=1.5*(b3)-flip(0.063/newpixel)^3.1+0.067894
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43kcarr.frm
}


Carr3517 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3a=(0.1+|0.018/newpixel|)
  b2=abs(conj(flip(newpixel^2)))*conj(flip(newpixel^3))
  b3a=flip(0.1-b2^2)*(b2^3)*conj(conj(newpixel^3))-(b3a)
  b2a=(b2^2)+0.004/newpixel
  b3=conj(b3a)*abs(conj(conj(newpixel^4)))*conj(flip(newpixel^3))*(|2*newpixel^2|)*b2a
  b5=(b3*newpixel)-flip(0.063/newpixel)^3.1-0.067894
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43kcarr.frm
}


Carr3518 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3a=(0.1+|0.018/newpixel|)
  b2=(abs(conj(newpixel^5))/(tanh(0.3/newpixel)))-conj(0.11/newpixel)
  b3a=conj(b2^2)*(b2^3)*conj(conj(0.1-newpixel^3))-(b3a)
  ;b2=2*(conj(newpixel))*2*conj(sinh(newpixel))*2*flip(tanh(newpixel))
  b2a=(b2^2)+0.004/newpixel
  b3=conj(b3a)*conj(b2)*abs(conj(conj(newpixel^4)))*conj(flip(newpixel^3))*(|2*newpixel^2|)*b2a
  b3b=((conj(0.0485+b3)*conj(b3-b3a/0.56))/(newpixel/(tanh(0.3/newpixel))))
  b5=b3b-flip(0.063/newpixel)^3.1-0.067894
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43kcarr.frm
}


Carr3519 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3a=(0.1+|0.018/newpixel|)
  b2=(abs(conj(newpixel^5))/(tanh(0.3/newpixel)))-conj(0.11/newpixel)
  b3a=conj(b2^2)*(b2^3)*conj(conj(0.1-newpixel^3))-(b3a)
  b2a=(b2^2)+0.004/newpixel, b2b=conj(flip(0.1-newpixel^3))
  b3=conj(b3a)*conj(b2)*abs(conj(cabs(0.1-newpixel^4)))*b2b*(|2*newpixel^2|)*b2a
  b3b=((conj(0.0485+b3)*conj(b3-b3a/0.56))/(newpixel/(tanh(0.6/newpixel))))
  b5=|b3b|-flip(0.063/newpixel)^3.1-0.067894
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43kcarr.frm
}


Carr3520 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3a=(0.1+|0.018/newpixel|)
  b2=abs(conj(newpixel^2.55))*flip(cabs(newpixel^2))
  b2a=b2+(0.1+|0.018/newpixel|)
  b2=b2a*(abs(conj(newpixel^5))/(tanh(0.3/newpixel)))-conj(0.11/newpixel)
  b3a=conj(b2^2)*(b2^3)*conj(conj(0.1-newpixel^3))-(b2a)
  b3=(b3a^2)-conj(0.035/newpixel-flip(0.01/newpixel))
  b5=flip(b3^2.35)*cabs(newpixel^2)*newpixel^2-(flip(0.028/newpixel))^3.3+0.15823
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43kcarr.frm
}


Carr3521 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3a=(0.1+|0.018/newpixel|)
  b2=abs(conj(newpixel^2.55))*flip(cabs(newpixel^2))
  b2a=b2+(0.1+|0.018/newpixel|)
  b2=b2a*(abs(conj(newpixel^5))/(tanh(0.3/newpixel)))-conj(0.11/newpixel)
  b3a=conj(b2^2)*(b2^3)*conj(conj(0.1-newpixel^3))-(b2a)
  b3=(b3a^2)-conj(0.035/newpixel-flip(0.01/newpixel))
  b5=flip(b3^3.35)*cabs(newpixel^2)*newpixel^2-(flip(0.028/newpixel))^3.3+0.15823
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43kcarr.frm
}


Carr3522 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3a=(0.1+|0.018/newpixel|)
  b2=abs(conj(newpixel^2.55))*flip(cabs(newpixel^2))
  b2a=b2+(0.1+|0.018/newpixel|)
  b2=b2a*(abs(conj(newpixel^5))/(tanh(0.3/newpixel)))-conj(0.11/newpixel)
  b3a=conj(b2^2)*(b2^3)*conj(conj(0.1-newpixel^3))+(b2a)
  b3=(b3a^2)-conj(0.035/newpixel-flip(0.01/newpixel))
  b5=((b3^3.35)/((0.0235/newpixel)))*cabs(newpixel^2)*newpixel^2-(flip(0.028/newpixel))^3.3+0.15823
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43kcarr.frm
}


Carr3523 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3a=(0.1+|0.018/newpixel|)
  b2=abs(conj(newpixel^2.55))*flip(cabs(newpixel^2))
  b2a=b2+(0.1+|0.018/newpixel|)
  b2=b2a*(abs(conj(newpixel^5))/(tanh(0.3/newpixel)))-conj(0.11/newpixel)
  b3a=conj(b2^2)*(b2^3)*conj(conj(0.1-newpixel^3))+(b2a)
  b3=(b3a^2)-conj(0.035/newpixel-flip(0.01/newpixel))
  b3b=(conj(b3^3.35)/(flip(0.025/newpixel)))
  b5=(b3b)*abs(newpixel^2)*newpixel^2-(flip(0.034/newpixel))^3.3+0.15823
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43kcarr.frm
}


Carr3524 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3a=(0.1+|0.018/newpixel|)
  b2=abs(conj(newpixel^2.55))*flip(cabs(newpixel^2))
  b2a=b2+(0.1+|0.018/newpixel|)
  b2=b2a*(abs(conj(newpixel^5))/(tanh(0.3/newpixel)))-conj(0.11/newpixel)
  b3a=conj(b2^2)*(b2^3)*conj(conj(0.1-newpixel^3))+(b2a)
  b3=(b3a^2)-conj(0.035/newpixel-flip(0.01/newpixel))
  b3b=(conj(b3^3.35)/(flip(0.025/newpixel)))
  b5=(b3b)*abs(newpixel^2)*|newpixel^2|-(flip(0.034/newpixel))^3.3-conj(0.060/b3a)+0.15823
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43kcarr.frm
}


Carr3525 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3a=(0.1+|0.018/newpixel|)
  b2=abs(conj(newpixel^2.55))*flip(cabs(newpixel^2))
  b2a=b2+(0.1+|0.018/newpixel|)
  b2=b2a*(abs(conj(newpixel^5))/(tanh(0.3/newpixel)))-conj(0.11/newpixel)
  b3a=conj(b2^2)*(b2^3)*conj(conj(0.1-newpixel^3))+(b2a)
  b3=(b3a^2)-conj(0.035/newpixel-flip(0.01/newpixel))
  b3b=(cabs(b3^2.85)/(flip(0.035/newpixel)))
  b5=(b3b)*abs(newpixel^2)*newpixel^2-(flip(0.048/newpixel))^4.8-conj(0.070/b3a)+0.15923
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43kcarr.frm
}


Carr3526 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3a=(0.1+|0.018/newpixel|)
  b2=abs(conj(newpixel^2.55))*flip(cabs(newpixel^2))
  b2a=2*b2+(0.125+|0.018/newpixel|)
  b2=b2a*(abs(conj(newpixel^5))/(tanh(0.3/newpixel)))-conj(0.11/newpixel)
  b3a=conj(0.1-|b2^2|)*(b2^3)*conj(conj(0.1+newpixel^3))+conj(b2a)
  b3=(b3a^2)-conj(0.035/newpixel-flip(0.01/newpixel))
  b3b=(cabs(b3^2.85)/(flip(0.035/newpixel)))
  b5=(b3b)*abs(|newpixel^3|)*newpixel^2-(flip(0.048/newpixel))^3.8-conj(0.070/b3a)+0.15923
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43kcarr.frm
}


Carr3527 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3a=(0.1+|0.018/newpixel|)
  b2=conj(conj(newpixel^3))*cabs(newpixel+0.125)^4
  b2a=(b2^2)+0.004/newpixel
  b3=b2a+(newpixel^3*b2)*conj(newpixel^3)*(newpixel/2)+b3a
  b3c=(abs(b3^2.85)/(flip(0.035/newpixel)))
  b5=(b3c)-flip(0.035/newpixel)^3.9-0.005/newpixel+0.068124
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43kcarr.frm
}


Carr3528 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3a=(0.1+|0.018/newpixel|)
  b2=conj(conj(newpixel^3))*cabs(newpixel+0.125)^4
  b2a=(b2^2)+0.004/newpixel
  b3=b2a+(newpixel^3*b2)*conj(newpixel^3)*(newpixel/2)+conj(b3a)
  b3c=(abs(b3^2.85+conj(0.000000795/b2a)-flip(0.00006/b3))/(flip(0.035/newpixel)))
  b5=(b3c)-flip(0.035/newpixel)^3.9-0.004/newpixel+0.068124
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43kcarr.frm
}


Carr3529 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3a=(0.1+|0.018/newpixel|)
  b2=conj(conj(newpixel^3))*cabs(newpixel+0.125)^4
  b2a=(b2^2)+0.004/newpixel
  b3=b2a+(newpixel^3*b2)*conj(newpixel^3)*(newpixel/2)+conj(b3a)
  b3c=(abs(|b3^2.85|+conj(0.000000795/b2a)-flip(0.00006/b3))/(flip(0.035/newpixel)))
  b5=(b3c)-flip(0.035/newpixel)^3.9-0.004/newpixel+0.068124
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43kcarr.frm
}


Carr3530 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
                  ; newpixel=real(pixel)-flip(abs(imag(pixel)))
  b1=0.3*((|0.011/newpixel|)-conj(|0.025/newpixel|)-real(0.025/newpixel))
  b3a=(0.1+|0.018/newpixel|), b2=abs(conj(newpixel^2.55))*flip(cabs(newpixel^2))
  b2a=b2+(0.1+|0.018/newpixel|)
  b2=b2a*(abs(conj(newpixel^5))/(tanh(0.3/newpixel)))-conj(0.11/newpixel)
  b3a=conj(b2^2)*(b2^3)*conj(conj(0.1-newpixel^3))+(b2a)
  b3=(b3a^2)-conj(0.035/newpixel-flip(0.01/newpixel))+b1
  b3b=(conj(b3^3.35)/((0.0235/newpixel)))
  b5=b3b*cabs(newpixel^2)*newpixel^2-(flip(0.020/newpixel))^3.6+0.15823
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43kcarr.frm
}


Carr3531 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=0.3*((|0.011/newpixel|)-conj(|0.025/newpixel|)-real(0.025/newpixel))
  b3a=(0.1+|0.018/newpixel|)
  b2=abs(conj(newpixel^2.55))*flip(cabs(newpixel^2))
  b2a=b2+(0.1+|0.018/newpixel|)
  b2=b2a*(abs(conj(newpixel^5))/(tanh(0.3/newpixel)))-conj(0.11/newpixel)
  b3a=conj(b2^2)*(b2^3)*conj(conj(0.1-newpixel^3))+conj(b2a)*0.76
  b3=(b3a^2)-conj(0.035/newpixel-flip(0.01/newpixel))+b1
  b3b=(conj(b3^3.35)/(abs(0.0335/newpixel)))
  b5=b3b*cabs(newpixel^2)*newpixel^2-(flip(0.012/newpixel))^3.6+0.15823
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43kcarr.frm
}


Carr3532 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b1=(|0.026/newpixel|)-conj(|0.025/newpixel|)-real(0.025/newpixel)
  b3=((newpixel^3)*conj(newpixel^3-b1)*(newpixel+b1))/((0.4/newpixel))
  b5=(|newpixel/2|)*b3^1.75-flip(flip(0.016/newpixel))^3.3+0.0015/newpixel-0.066824
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43kcarr.frm
}


Carr3533 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3a=(0.1+|0.018/newpixel|)
  b1=(|0.026/newpixel|)-conj(|0.025/newpixel|)-real(0.025/newpixel)
  b3=(((newpixel^3)*conj(newpixel^3-b1)*(newpixel+b1))/((0.4/newpixel)))-conj(b3a)/newpixel
  b5=(|newpixel/2|)*b3^1.75-flip(flip(0.046/newpixel))^3.9+0.0015/newpixel-0.066824
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43kcarr.frm
}


Carr3534 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3a=(0.1+|0.018/newpixel|)
  b1=(|0.026/newpixel|)-conj(|0.025/newpixel|)-real(0.025/newpixel)
  b1a=flip(conj(0.1+newpixel))*(newpixel)-(conj(0.1/newpixel))+sqr(flip(0.1/newpixel))
  b3=(b1a/((0.4/newpixel)))-conj(b3a)/newpixel
  b5=(|newpixel/2|)*b3^1.75-flip(flip(0.046/newpixel))^3.9+0.0015/newpixel-0.066824
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43kcarr.frm
}


Carr3535 (YAXIS) {; Modified Sylvie Gallet frm.1996
                  ; passes=1 needs to be used with this PHC formula
                  ; Some optimizations made by G. Martin
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b3a=(0.1+|0.018/newpixel|)
  b1=(|0.026/newpixel|)-conj(|0.025/newpixel|)-real(0.025/newpixel)
  b1a=flip(conj(0.1+newpixel))*(newpixel)-(conj(0.1/newpixel))+sqr(flip(0.1/newpixel))
  b3=((b1a^1.5)/((|0.2/newpixel|)))-conj(b3a)/newpixel
  b5=(|newpixel/2|)*b3-flip(flip(0.046/newpixel))^3.9+0.0015/newpixel-0.066824
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.748800289672,-0.1350036189)-0.0000230
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 43kcarr.frm
}

