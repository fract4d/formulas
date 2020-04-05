; The formula draws the x-as.  The thickness of
; the line depends on the parameter p1. 
jhline     { ; Jos Hendriks <jos@hexaedre-fr.com>
             ; Mon, 23 Dec 2002 21:01:01
             ; draws the line y=0, p1 gives the thickness of
             ; the line watch out: only two colors are used
             ; take for instance maxiter=2, inside=0, outside=iter 
  :
  |Imag(Pixel)|<p1
 }


; This formula divides the plane in two half-planes.
; Apart from the name there are 10 symbols.
jhshortest { ; Jos Hendriks <jos@hexaedre-fr.com>
             ; Mon, 23 Dec 2002 21:01:01
  :
  Pixel<0
 }


jhparabola { ; Jos Hendriks <jos@hexaedre-fr.com>
             ; Mon, 23 Dec 2002 21:01:01
             ; draws a parabola.  Thickness depends on p1.
             ; use maxiter=2,inside color=0, outside=iter
  :
  |real(Pixel)^2-imag(Pixel)-1.25|<p1
 }


jhgraphs1  { ; Jos Hendriks <jos@hexaedre-fr.com>
             ; Mon, 23 Dec 2002 21:01:01
             ; graph of y= (a1*x+a2*x)/(a3*x^2+a4*x+a5)\
             ; imag(p3) gives the thickness
             ; also the x- and y-axes are drawn
  :
  |(real(p1)*real(Pixel)+imag(p1))/\
  (real(p2)*real(Pixel)^2+imag(p2)*\
  real(Pixel)+real(p3))-imag(Pixel)|<imag(p3)||\
  |real(Pixel)|<.001|||imag(Pixel)|<.001
 }


Jhsierpinski { ; Jos Hendriks <jos@hexaedre-fr.com>
               ; Sun, 29 Dec 2002 21:30:14
               ; escape time formula for the Sierpinski triangle
  z=Pixel: 
  IF (real(z)<.5 && imag(z)>.5) 
    z=2*z-(0,1) 
  ELSEIF(real(z)>.5) 
    z=2*z-(1,0) 
  ELSE 
    z=2*z 
  ENDIF 
  |z|<p1 
 }


Jhsierpinskim { ; Jos Hendriks <jos@hexaedre-fr.com>
                ; Sun, 29 Dec 2002 21:30:14
                ; You could call it a lambdaSierpinski formula
  z=Pixel: 
  IF (real(z)<.5 && imag(z)>.5) 
    z=(2*z-(0,1))*Pixel 
  ELSEIF(real(z)>.5) 
    z=(2*z-(1,0))*Pixel 
  ELSE 
    z=2*z*Pixel 
  ENDIF 
  |z|<p1 
 }


; This time, again, a simple and at first look nothing promising,
; formula: f(x,y)=(x^2,y^2)+c .
Jh_square     { ; Jos Hendriks <jos@hexaedre-fr.com>
                ; Sat, 4 Jan 2003 20:36:30
                ; You could call it a lambdaSierpinski formula
  if (ismand)
    z = 0 , c = pixel
  else
    z = pixel , c = p1
  endif
  :
  a=real(z),b=imag(z)
  z=a*a+flip(b*b)+c
  real(z)<p2 && imag(z)<p2
 }


T_Nearly_Mandel  { ; Jos Hendriks <jos@hexaedre-fr.com>
                   ; Fri, 24 Jan 2003 05:37:53
  c1=Pixel,c2=Pixel,c3=0
  z1=z2=z3=0:
  t1=z1*z1+2*z2*z3, t2=z3*z3+2*z1*z2, t3=z2*z2+2*z3*z1
  z1=t1+c1,z2=t2+c2,z3=t3+c3
  z=z1+z2+z3
  |z|<64
 }


T_Super_Mandel  { ; Jos Hendriks <jos@hexaedre-fr.com>
                  ; Fri, 24 Jan 2003 05:37:53
  c1=Pixel,c2=Pixel,c3=Pixel
  z1=z2=z3=0:
  t1=z1*z1+2*z2*z3, t2=z3*z3+2*z1*z2, t3=z2*z2+2*z3*z1
  z1=t1+c1,z2=t2+c2,z3=t3+c3
  z=z1+z2+z3
  |z|<64
 }


TGirl           { ; Jos Hendriks <jos@hexaedre-fr.com>
                  ; Fri, 24 Jan 2003 21:38:21
  c1=real(pixel),c2=imag(pixel)*(0,-1),c3=p1
  z1=z2=z3=0:
  t1=z1*z1+2*z2*z3, t2=z3*z3+2*z1*z2, t3=z2*z2+2*z3*z1
  z1=t1+c1,z2=t2+c2,z3=t3+c3
  z=z1+z2+z3
  z < 64
 }


TMan (XAXIS)    { ; Jos Hendriks <jos@hexaedre-fr.com>
                  ; Fri, 24 Jan 2003 21:38:21
  c1=real(pixel),c2=imag(pixel)*(0,1),c3=p1
  z1=z2=z3=0:
  t1=z1*z1+2*z2*z3
  t2=z3*z3+2*z1*z2
  t3=z2*z2+2*z3*z1
  z1=t1+c1,z2=t2+c2,z3=t3+c3
  z=(z1^2+z2^2+z3^2)^.5
  z < 16
 }


T_General (XAXIS) { ; Jos Hendriks <jos@hexaedre-fr.com>
                    ; Fri, 24 Jan 2003 21:38:21
  c1=Pixel,c2=Pixel,c3=Pixel
  z1=z2=z3=0:
  t1=z1*z1+2*z2*z3, t2=z3*z3+2*z1*z2, t3=z2*z2+2*z3*z1
  z1=t1+c1,z2=t2+p2*c2,z3=t3+p3*c3
  z=z1+z2+z3
  |z|<100
 }


T_Sisters       { ; Jos Hendriks <jos@hexaedre-fr.com>
                  ; Fri, 24 Jan 2003 21:38:21
  c1=real(pixel),c2=imag(pixel)*(0,1),z1=z2=0:
  t1=z1*z1+real(p1)*z2
  t2=z2*z2+imag(p1)*z1
  z1=t1+c1,z2=t2+c2
  z=z1+z2
  |z|<8
 }


gaussian_distm2 (XAxis) { ; Jos Hendriks <jos@hexaedre-fr.com>
                          ; Mon, 27 Jan 2003 18:22:56
                          ; standard distribution take real(p2)=1,
                          ; the other variables 0.
                          ; Real (p2) must never be 0
  if(real(p4)==0)
    bailout=100
  else
    bailout=real(p4)
  endif
  sigma =p2
  mu =p1
  z = 0, c =1/(sqr(2*pi)*sigma),scalingfactor=50, c1=scalingfactor*pixel:
  z = c*exp(-.5*((z-mu)/sigma)^2)*c1
  |z|<bailout
 }

