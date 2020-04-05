!1README!{
; This file is divided into 2 parts : the parameter part right here and 
; the formula part. The formula part is divided into 5 parts 
; representing 5 different formula files. If you'll cut this file to separate
; the formula files you'll have to remove the 'frm:'-prefixes before
; the formula entries. Not all formulas are required by the parameters,
; but I guess the others are also quite OK.
; All formulas (except Sierpinsky and ULI_2) and all parameters are by:
;
; Peter Anders
; anders@physik.hu-berlin.de
;
; Please send me a mail about your impressions of my fractals 
; and maybe some improvements.
; I would be pleased also about formulas or parameters by anyone else.
}

---------------------------------- formula file anders.frm -------------------------------------

frm:2lambda32{z=p2,c=pixel:  ;p2<>1<>-1<>0
(real(z/c)>=imag(p1))*(z=z*(1-z)*c)+(real(z/c)<imag(p1))*(z=z*(1+z)*c),
|z|<real(p1)+4}

frm:2mandel32{ z=p2,c=pixel:
(real(z/c)>=imag(p1))*(z=z*z+c)+(real(z/c)<imag(p1))*(z=z*z-c),
           |z|<real(p1)+4}

frm:Chaos12 {cx=real(pixel),cy=imag(pixel),xo=0,yo=-cy/2:
         x=xo*xo-yo*yo+cx*yo;
         y=2*xo*yo+cy*xo;
         z=x+y*i;
         xo=x;
         yo=y;           
         |fn1(z)|<real(p2) }

frm:Techno1 (xyaxis) {xo=real(p1),yo=imag(p1):
                  x=fn2(xo)*real(pixel);
                  y=fn2(yo)*imag(pixel);
                  z=x+y*(0,1);
                  xo=x;
                  yo=y;           
                  |fn1(z)|<real(p2) }

frm:Techno2 (xyaxis) {xo=real(p1),yo=imag(p1):
                  x=fn2(xo)+real(pixel);
                  y=fn2(yo)+imag(Pixel);
                  z=x+y*(0,1);
                  xo=x;
                  yo=y;           
                  |fn1(z)|<real(p2) }

frm:MiraSinPar { xo=real(p1),yo=imag(p1),a=real(pixel),b=imag(pixel):
             f=a*xo+(2-2*a)*sin(xo);
             x=b*yo+f;
             f=a*x+(2-2*a)*sin(x);
             y=-xo+f;
             z=x+y*(0,1);
             xo=x;
             yo=y;        
             |fn1(z)|<real(p2) }

frm:f1 { c=pixel,n=0,z=imag(p1):
     n=n+1,
     z=(fn1(c))^n*z;
     abs(fn2(z)) <= real(p1) }

frm:f3 { x=real(p2),y=imag(p2),c=pixel,n=0,z=1:
     n=n+1,
     z=(c^x+y)^n*z;
     abs(fn2(z)) <= real(p1) }

frm:f8 { x=real(p2),y=imag(p2),c=pixel,n=0,z=0:
     n=n+1,
     z=(c^x+y)^n+z;
     |fn2(z)| <= real(p1) }

frm:Spider6{ c=z=pixel,a=real(p2),b=imag(p2):
         r=z,
         c=(c-z)*b,
         z=(r-c)^(1/a),
         |fn1(c)| <= real(p1) }

frm:Peter_104M{z=p1,c=pixel:
           z=fn1(z^2)*fn2(c)*z,
           abs(z)<=4 }

frm:Peter_3P02 { z=pixel:
             z=z^z;           
             abs(fn1(z))<real(p2)}

frm:Sierpinsky{ ;As you see, it's not my formula
       ;Use p1=2 for the triangle,
       ;and p1=(1.3,.5) for a strange thing
z=pixel, j=(0, -1), k=(-1, 0):
x=real(z),
y=imag(z),
y1=(y>.5)
x1=(x>.5)
a=y1*j
b=x1*(y1==0)*k
p=a+b
z=p1*z+p
|z|<=100
  ;SOURCE: esc-ifs.frm
;SOURCE: s.frm
  }

frm:ULI_2 = { ; As you see, it's not my formula as well
      z = Pixel:
      z = fn1(1/fn2(z+p1))
      |z| <= p2
   }

------------------------------------ formula file peternew.frm ----------------------------------------------
frm:!README!  {
       ;All these formulas are advanced Newton formulas,
       ;more or less, but some may be higly distorted .
       ;Most of them require floating point.
       ;1<name>=simple Newton formulas
       ;2<name>=double Newton formulas
       ;3<name>=manipulated Newton formulas
       ;All of them are by :
       ;Peter Anders
       ;anders@physik.hu-berlin.de
}
frm:1NewPolyI {; just works with FRACTINT18.2 or less
           ; XAXIS for real exponents
           z=pixel,r=p1,root=p2+1,g=p3+1:
           c=z,
           z=z-g*((z^r-root)/(r*x^(r-1))),
           |z-c| >0.000001}
frm:1NewPolyII {; just works with FRACTINT18.2 or less
            ; XAXIS for real exponents
              z=pixel,r=p1,root=p2+1,g=p3+1:
              c=z,
              z=z-g*((z^r-root)/(r*x^(r-1))),
    abs(real(z)-real(c)) >0.000001, abs(imag(z)-imag(c)) >0.000001}
frm:1NewPolyR(XAXIS) {; real Newton formula for polynoms,
                  z=pixel,r=real(p1),root=p2+1,g=p3+1:
                  c=z,
                  z=z-g*((z^r-root)/(r*z^(r-1))),
                  |z-c| >0.000001}
frm:1NewPolyRII{; real Newton formula for polynoms,
            z=pixel,r=p1,root=p2+1,g=p3+1:
            c=z,
            z=z-g*((z^r-root)/(r*z^(r-1))),
            |z-c| >0.000001}
frm:1NewSin(XYAXIS) { ; sin(z)-p2=0
                  z=pixel,root=p2,g=p3+1:
                  c=z,
                  z=z-g*(sin(z)-root)/cos(z),
                  |z-c| >0.000001}
frm:1NewSinF(XYAXIS) {  ; sin(z)-p2=0
                    z=pixel,root=p2,g=p3+1:
                    c=z,
                    z=z-g*(sin(z)-root)/cos(z),
     |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001 }
frm:1NewCos(XYAXIS) {; cos(z)-p2=0
                 z=pixel,root=p2,g=p3+1:
                 c=z,
                 z=z+g*(cos(z)-root)/sin(z),
                 |z-c| >0.000001}
frm:1NewCosF(XYAXIS) {; cos(z)-p2=0
                  z=pixel,root=p2,g=p3+1:
                  c=z,
                  z=z+g*(cos(z)-root)/sin(z),
      |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001 }
frm:1NewTan(XYAXIS) {  ; tan(z)-p2=0
                   z=pixel,root=p2,g=p3+1:
                   c=z,
                   z=z-g*(cos(z))^2*(tan(z)-root),
                   |z-c| >0.000001}   
frm:1NewTanF(XYAXIS){ ; tan(z)-p2=0
                  z=pixel,root=p2,g=p3+1:
                  c=z,
                  z=z-g*(cos(z))^2*(tan(z)-root),
       |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001 }
frm:1NewCot(XYAXIS) { ; cotan(z)-p2=0
                  z=pixel,root=p2,g=p3+1:
                  c=z,
                  z=z+g*(sin(z))^2*(cotan(z)-root),
                  |z-c| >0.000001}                          
frm:1NewCotF(XYAXIS){ ; cotan(z)-p2=0
                  z=pixel,root=p2,g=p3+1:
                  c=z,
                  z=z+g*(sin(z))^2*(cotan(z)-root),
      |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001 }
frm:1NewLog{; log(z)-p2=0
          z=pixel,root=p2,g=p3+1:
          c=z,
          z=z-g*z*(log(z)-root),
          |z-c| >0.000001}                          
frm:1NewLogF{ ; log(z)-p2=0
            z=pixel:
            c=z,
            z=z-g*z*(log(z)-root),
    |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001 }
frm:1NewPolyRIII(XAXIS) { z=pixel,a=p1,b=p2,g=p3+1:
                      c=z,
    z=z-g*(((z^a)-(z^b))/((a*z^(a-1))-(b*z^(b-1)))),
                      |z-c| >0.000001}
frm:NewWrong(xaxis){a=real(pixel),b=imag(pixel),r=p1:
      c=z,
      a=(r/(r+1))*a+(real((a-b*(0,1))^(r-1))/(r*(a*a+b*b)^(r-1))),
      b=(r/(r+1))*b+(imag((a-b*(0,1))^(r-1))/(r*(a*a+b*b)^(r-1))),
      z=a+b*(0,1),
      |z-c| >0.0000001}
frm:NewWrongFu{a=real(fn1(pixel)),b=imag(fn1(pixel)),r=p1:
      c=z,
      a=(r/(r+1))*a+(real((a-b*(0,1))^(r-1))/(r*(a*a+b*b)^(r-1))),
      b=(r/(r+1))*b+(imag((a-b*(0,1))^(r-1))/(r*(a*a+b*b)^(r-1))),
      z=a+b*(0,1),
      |z-c| >0.0000001}
frm:NewWrongFu2{q=pixel^real(p2)-imag(p2),a=real(q),b=imag(q),r=p1:
      c=z,
      a=(r/(r+1))*a+(real((a-b*(0,1))^(r-1))/(r*(a*a+b*b)^(r-1))),
      b=(r/(r+1))*b+(imag((a-b*(0,1))^(r-1))/(r*(a*a+b*b)^(r-1))),
      z=a+b*(0,1),
      |z-c| >0.0000001}
frm:3NewPolyR1{z=fn1(pixel),r=p1,root=p2+1,g=p3+1:
           c=z,
           z=z-g*((z^r-root)/(r*z^(r-1))),
           |z-c| >0.000001}
frm:3NewPolyR2{z=pixel^real(p2)-imag(p2),r=p1,g=p3+1:
           c=z,
           z=z-g*((z^r-1)/(r*z^(r-1))),
           |z-c| >0.000001}
frm:3NewPolyR3{z=pixel^4-1.25*pixel^2+0.25,r=p1,root=p2+1,g=p3+1:
           c=z,
           z=z-g*((z^r-root)/(r*z^(r-1))),
           |z-c| >0.000001}
frm:3NewPolyR4{a=fn1(real(pixel)),b=fn1(imag(pixel)),z=a+b*(0,1)
           r=p1,root=p2+1,g=p3+1:
           c=z,
           z=z-g*((z^r-root)/(r*z^(r-1))),
           |z-c| >0.000001}
frm:1NewPolyRIV{z=pixel,r=real(p1),a=p2,g=p3+1:
            c=z,
            z=z-g*((z^r-1)/(r*z^(r-a))),
            |z-c| >imag(p1)}
frm:1NewPolyRV{z=pixel,r=real(p1),a=p2,g=p3+1:
           c=z,
           z=z-g*((z^r-1)/(r*z^(r-a))),
           real(|z-c|) <imag(p1)}
frm:1NewPolyRVI{z=pixel,r=real(p1),a=p2,g=p3+1:
            c=z,
            z=z-g*((z^r-1)/(r*z^(r-a))),
            real(|fn1(z)|)<imag(p1)}
frm:1NewPolyRVII{z=pixel,r=real(p1),a=p2,g=p3+1:
             c=z,
             z=z-g*((z^r-1)/(r*z^(r-a))),
             real(|fn1(z)|)>imag(p1)}
frm:3PolyRI{z=pixel,r=p1,g=p3+1:
        c=z,
        z=z-g*((z^r-1)/(r*z^(r-1))),
        z=z+p2;
        |z-c| >0.000001}
frm:3PolyRII{z=pixel,r=p1,g=p3+1:
         c=z,
         z=z-g*((z^r-1)/(r*z^(r-1))),
         z=z*p2;
         |z-c| >0.000001}
frm:3PolyRIII{z=pixel,r=p1,root=p2+1,g=p3+1:
          c=z,
          z=z-g*((z^r-root)/(r*z^(r-1))),
          z=fn1(z);
          |z-c| >0.000001}
frm:1PixelPolyI{z=c=pixel,r=p2+1,g=p3+1:
            z=z-g*(z^r+c)/(r*z^(r-1))
            |z|>p1}
frm:1PixelPolyII{ z=c=pixel,r=p2+1,g=p3+1:
              z=z-g*(z^r+c)/(r*z^(r-1))
              |z|<p1 }
frm:1PixelPolyIII{z=c=pixel,r=p2+1,g=p3+1:
              d=z
              z=z-g*(z^r+c)/(r*z^(r-1))
              |z-d|>p1}
frm:1PixelPolyIV{z=c=pixel,r=p2+1,g=p3+1:
             d=z 
             z=z-g*(z^r+c)/(r*z^(r-1))
             |z-d|<p1 }
frm:3NewPolyR5{z=fn1(fn2(pixel)),r=p1,root=p2+1,g=p3+1:
           c=z, 
           z=z-g*((z^r-root)/(r*z^(r-1))),
           |z-c| >0.000001}
frm:3NewPolyR6{z=fn1(pixel^real(p2)+imag(p2)),r=p1,g=p3+1:
           c=z, 
           z=z-g*((z^r-1)/(r*z^(r-1))),
           |z-c| >0.000001}
frm:2NewSinCos(XYAxis){ ; sin(z)*cos(z)-p2=0
                    z=pixel,root=p2,g=p3+1:
                    c=z, 
    z=z-g*(sin(z)*cos(z)-root)/(cos(z)*cos(z)-sin(z)*sin(z))
                    |z-c| >0.000001}
frm:2NewCosTan(XYAxis){ ; tan(z)*cos(z)-p2=0
                    z=pixel,root=p2,g=p3+1:
                    c=z, 
    z=z-g*(tan(z)*cos(z)-root)/(cos(z)*(tan(z)*tan(z)+1)-sin(z)*tan(z))
                    |z-c| >0.000001}
frm:2NewSinTan(XYAxis){ ; sin(z)*tan(z)-p2=0
                    z=pixel,root=p2,g=p3+1:
                    c=z, 
     z=z-g*(sin(z)*tan(z)-root)/(cos(z)*tan(z)+sin(z)*(tan(z)*tan(z)+1))
                    |z-c| >0.000001}
frm:2NewSinSinH(XYaxis){; sinh(z)*sin(z)-p2=0
                    z=pixel,root=p2,g=p3+1:
                    c=z, 
    z=z-g*(sinh(z)*sin(z)-root)/(cos(z)*sinh(z)+sin(z)*cosh(z))
                    |z-c| >0.000001}
frm:2NewSinHCos(XYaxis){ ;sinh(z)*cos(z)-p2=0
                     z=pixel,root=p2,g=p3+1:
                     c=z, 
    z=z-g*(sinh(z)*cos(z)-root)/(cos(z)*cosh(z)-sin(z)*sinh(z))
                     |z-c| >0.000001}
frm:2newSinCosH(XYaxis){ ; sin(z)*cosh(z)-p2=0
                     z=pixel,root=p2,g=p3+1:
                     c=z, 
    z=z-g*(sin(z)*cosh(z)-root)/(cos(z)*cosh(z)+sin(z)*sinh(z))
                     |z-c| >0.000001}
frm:2newCosCosH{; cos(z)*cosh(z)-p2=0
            z=pixel,root=p2,g=p3+1:
            c=z, 
    z=z-g*(cos(z)*cosh(z)-root)/(cos(z)*sinh(z)-sin(z)*cosh(z))
            |z-c| >0.000001}
frm:2newTanSinH(XYaxis){ ; tan(z)*sinh(z)-p2=0
                     z=pixel,root=p2,g=p3+1:
                     c=z, 
    z=z-g*(tan(z)*sinh(z)-root)/(sinh(z)*(tan(z)*tan(z)+1)+cosh(z)*tan(z))
                     |z-c| >0.000001}
frm:2newTanCosH(XYaxis){; cosh(z)*tan(z)-p2=0
                    z=pixel,root=p2,g=p3+1:
                    c=z, 
    z=z-g*(cosh(z)*tan(z)-root)/(sinh(z)*tan(z)+cosh(z)*(tan(z)*tan(z)+1))
                    |z-c| >0.000001}
frm:2newSinTanH(XYaxis){ ; tanh(z)*sin(z)-p2=0
                     z=pixel,root=p2,g=p3+1:
                     c=z, 
    z=z-g*(tanh(z)*sin(z)-root)/(cos(z)*tanh(z)+sin(z)*(1-tanh(z)*tanh(z)))
                     |z-c| >0.000001}
frm:2newCosTanH(XYaxis){; tanh(z)*cos(z)-p2=0
                    z=pixel,root=p2,g=p3+1:
                    c=z, 
    z=z-g*(tanh(z)*cos(z)-root)/(cos(z)*(1-tanh(z)*tanh(z))-sin(z)*tanh(z))
                    |z-c| >0.000001}
frm:2newTanTanH{; tan(z)*tanh(z)-p2=0
            z=pixel,root=p2,g=p3+1:
            c=z, 
    z=z-g*(tan(z)*tanh(z)-root)/((tan(z)*tan(z)+1)*tanh(z)+tan(z)*(1-tanh(z)*tanh(z)))
            |z-c| >0.000001}
frm:2newSinHCosH(XYaxis){ ; sinh(z)*cosh(z)-p2=0
                      z=pixel,root=p2,g=p3+1:
                      c=z, 
    z=z-g*(sinh(z)*cosh(z)-root)/(cosh(z)*cosh(z)+sinh(z)*sinh(z))
                      |z-c| >0.000001}
frm:2newSinHTanH(XYaxis){; tanh(z)*sinh(z)-p2=0
                     z=pixel,root=p2,g=p3+1:
                     c=z, 
    z=z-g*(tanh(z)*sinh(z)-root)/(sinh(z)*(1-tanh(z)*tanh(z))+cosh(z)*tanh(z))
                     |z-c| >0.000001}
frm:2newCosHTanH(XYaxis){; cosh(z)*tanh(z)-p2=0
                     z=pixel,root=p2,g=p3+1:
                     c=z, 
    z=z-g*(cosh(z)*tanh(z)-root)/(cosh(z)*(1-tanh(z)*tanh(z))+sinh(z)*tanh(z))
                     |z-c| >0.000001}
frm:2newSin^2(XYAxis){ ; sin(z)*sin(z)-p2=0
                   z=pixel,root=p2,g=p3+1:
                   c=z, 
    z=z-g*(sin(z)*sin(z)-root)/(2*cos(z)*sin(z))
                   |z-c| >0.000001}
frm:2newCos^2(XYAxis){ ; cos(z)*cos(z)-p2=0
                   z=pixel,root=p2,g=p3+1:
                   c=z, 
    z=z+g*(cos(z)*cos(z)-root)/(2*cos(z)*sin(z))
                   |z-c| >0.000001}
frm:2newTan^2(XYAxis){; tan(z)*tan(z)-p2=0
                  z=pixel,root=p2,g=p3+1:
                  c=z, 
    z=z-g*(tan(z)*tan(z)-root)*(cos(z)*cos(z)*cos(z))/(2*sin(z))
                  |z-c| >0.000001}
frm:2newCosH^2(XYaxis){ ; cosh(z)*cosh(z)-p2=0
                    z=pixel,root=p2,g=p3+1:
                    c=z, 
    z=z-g*(cosh(z)*cosh(z)-root)/(2*cosh(z)*sinh(z))
                    |z-c| >0.000001}
frm:2newSinH^2(XYaxis){ ; sinh(z)*sinh(z)-p2=0
                    z=pixel,root=p2,g=p3+1:
                    c=z, 
    z=z-g*(sinh(z)*sinh(z)-root)/(2*cosh(z)*sinh(z))
                    |z-c| >0.000001}
frm:2newTanH^2(XYaxis){ ; tanh(z)*tanh(z)-p2=0
                    z=pixel,root=p2,g=p3+1:
                    c=z, 
    z=z-g*(tanh(z)*tanh(z)-root)*(cosh(z)*cosh(z)*cosh(z))/(2*sinh(z))
                    |z-c| >0.000001}
frm:2newSin[z^a+b]{ ; sin(z^p1-p2)=0
                z=pixel,a=p1,b=p2g=p3+1:
                c=z, 
                z=z-g*sin(z^a+b)/(a*z^(a-1)*cos(z^a+b))
                |z-c| >0.000001}
frm:2newSin[z^c+b]^a{ ; sin((z^p1-p2)^p3)=0
                  z=pixel,a=p3,c=p1,b=p2:
                  c=z, 
    z=z-sin((z^c+b)^a)/(c*z^(c-1)*a*(z^c+b)^(a-1)*cos((z^c+b)^a))
                  |z-c| >0.0001}
frm:2newSin[tan[z]]{; sin(tan(z)-p2)-p1=0
                z=pixel,g=p3+1:
                c=z, 
    z=z-g*(sin(tan(z)-p2)-p1)/(cos(tan(z)-p2)*(tan(z)*tan(z)+1))
                |z-c| >0.000001}
frm:2newSinH/Tan(XYaxis){; (sinh(z)/tan(z))-p2=0
                     z=pixel,root=p2,g=p3+1:
                     c=z,
                     f1=(sinh(z)/tan(z))-root,
                     f21=cosh(z)*tan(z)-sinh(z)*(tan(z)*tan(z)+1)
                     f22=tan(z)*tan(z),
                     f2=f21/f22
                     z=z-g*f1/f2,
                     |z-c| >0.000001}
frm:2newCosH/Tan(XYaxis){z=pixel,root=p2,g=p3+1:
                     c=z,
                     f1=(cosh(z)/tan(z))-root
                     f21=sinh(z)*tan(z)-cosh(z)*(tan(z)*tan(z)+1)
                     f22=tan(z)*tan(z),
                     f2=f21/f22
                     z=z-g*f1/f2,
                     |z-c| >0.000001}
frm:2newTanH/Tan(Yaxis){z=pixel,root=p2,g=p3+1:
                    c=z,
                    f1=(tanh(z)/tan(z))-root
                    f21=(1-tanh(z)*tanh(z))*tan(z)-tanh(z)*(tan(z)*tan(z)+1)
                    f22=tan(z)*tan(z),
                    f2=f21/f22
                    z=z-g*f1/f2,
                    |z-c| >0.000001}
frm:2newSin[z^Pixel+b]{; sin(z^pixel+b)=0
                   z=pixel,a=pixel,b=p2,g=p3+1:
                   c=z, 
                   z=z-g*sin(z^a+b)/(a*z^(a-1)*cos(z^a+b))
                   |z-c| >0.000001}
frm:2newSin[z^a+Pixel]{; sin(z^a+pixel)=0
                   z=pixel,a=p1,b=pixel,g=p2+1:
                   c=z, 
                   z=z-g*sin(z^a+b)/(a*z^(a-1)*cos(z^a+b))
                   |z-c| >0.000001}
frm:2newSin[z^Pixel+Pixel](Xaxis){; sin(z^pixel+pixel)=0
                              z=pixel,a=pixel,b=pixel,g=p3+1:
                              c=z, 
                              z=z-g*sin(z^a+b)/(a*z^(a-1)*cos(z^a+b)),
                              |z-c| >0.000001}
frm:2newSin[z^c+b]^Pixel{ ; sin((z^p1-p2)^pixel)=0
                      z=pixel,a=pixel,c=p1,b=p2:
                      c=z, 
    z=z-(sin((z^c+b)^a))/(c*z^(c-1)*a*(z^c+b)^(a-1)*cos((z^c+b)^a)),
                      |z-c| >0.0001}
frm:2newSin[z^pixel+b]^a{; sin((z^pixel-p2)^p1)=0
                     z=pixel,a=p1,c=pixel,b=p2:
                     c=z, 
    z=z-sin((z^c+b)^a)/(c*z^(c-1)*a*(z^c+b)^(a-1)*cos((z^c+b)^a)),
                     |z-c| >0.0001}
frm:2newSin[z^c+pixel]^a{; sin((z^p1+pixel)^p2)=0
                     z=pixel,a=p2,c=p1,b=pixel:
                     c=z, 
    z=z-sin((z^c+b)^a)/(c*z^(c-1)*a*(z^c+b)^(a-1)*cos((z^c+b)^a)),
                     |z-c| >0.0001}
frm:2newSin[z^c+b]^aPixel(Xaxis){ ; sin((z^pixel+pixel)^pixel)=0
                             z=pixel,a=pixel,c=pixel,b=pixel:
                             c=z, 
    z=z-sin((z^c+b)^a)/( c*z^(c-1)*a*(z^c+b)^(a-1)*cos((z^c+b)^a)),
                             |z-c| >0.0001}
frm:2newz^aSin {; z^p1*sin(z)-p2=0
            z=pixel,a=p1,root=p2,g=p3+1:
            c=z, 
            z=z-g*(z^a*sin(z)-root)/(a*z^(a-1)*sin(z)+z^a*cos(z)),
            |z-c| >0.000001}
frm:2newz^aTan {; z^a*tan(z)-p2=0
              z=pixel,a=p1,root=p2,g=p3+1:
              c=z, 
    z=z-g*(z^a*tan(z)-root)/(a*z^(a-1)*sin(z)+z^a*(tan(z)*tan(z)+1))
              |z-c|>0.000001}
frm:2newz^aLog { ; z^a*log(z)-p2=0
             z=pixel,a=p1,root=p2,g=p3+1:
             c=z, 
             z=z-g*(z^a*log(z)-root)/(a*z^(a-1)*log(z)+z^a/z)
             |z-c|>0.000001}
frm:2newSinLog { ; sin(z)*log(z)-p2=0
             z=pixel,root=p2,g=p3+1:
             c=z, 
             z=z-g*(sin(z)*log(z)-root)/(sin(z)/z+cos(z)*log(z))
             |z-c| >0.000001}
frm:2newTanLog {; log(z)*tan(z)-p2=0
            z=pixel,root=p2,g=p3+1:
            c=z, 
            z=z-g*(log(z)*tan(z)-root)/(tan(z)/z+log(z)*(tan(z)*tan(z)+1))
            |z-c| >0.000001}
frm:2newz^pixelSin{ ; z^pixel*sin(z)-p2=0
                z=pixel,a=pixel,root=p2,g=p3+1:
                c=z, 
                z=z-g*(z^a*sin(z)-root)/(a*z^(a-1)*sin(z)+z^a*cos(z))
                |z-c| >0.000001}
frm:2newz^pixelTan{ ; z^pixel*tan(z)-p2=0
                z=pixel,a=pixel,root=p2,g=p3+1:
                c=z, 
                z=z-g*(z^a*tan(z)-root)/(a*z^(a-1)*sin(z)+z^a*(tan(z)*tan(z)+1))
                |z-c| >0.000001}
frm:2newz^pixelLog{; z^pixel*log(z)-p2=0
                z=pixel,a=pixel,root=p2,g=p3+1:
                c=z, 
                z=z-g*(z^a*log(z)-root)/(a*z^(a-1)*log(z)+z^a/z)
                |z-c| >0.000001}
frm:2newz^aSin2{; z^p1*sin(z)-pixel=0
            z=pixel,a=p1,g=p2+1:
            c=z, 
            z=z-g*(z^a*sin(z)-pixel)/(a*z^(a-1)*sin(z)+z^a*cos(z))
            |z-c| >0.000001}
frm:2newz^aTan2{;z^p1*tan(z)-pixel
             z=pixel,a=p1,g=p3+1:
             c=z, 
    z=z-g*(z^a*tan(z)-pixel)/(a*z^(a-1)*sin(z)+z^a*(tan(z)*tan(z)+1))
             |z-c| >0.000001}
frm:2newz^aLog2{; z^p1*log(z)-pixel=0
            z=pixel,a=p1,g=p2+1:
            c=z, 
            z=z-g*(z^a*log(z)-pixel)/(a*z^(a-1)*log(z)+z^a/z)
            |z-c| >0.000001}
frm:2newtonDoublePoly{z=pixel , a=p1 , b=p2 , root=p3+1:
                  zz=z
                  z=z-(z^a-root)/(a*z^(a-1))
                  z=z-(z^b-1)/(b*z^(b-1))
                  |z-zz|>0.00000001}
frm:2newtonDoubleSinAsin{z=pixel , root1=p1 , root2=p2:
                     zz=z
                     z=z-(sin(z)-root1)/cos(z)
                     z=z-(asin(z)-root2)*sqrt(1-z*z)
                     |z-zz|>0.00000001}    
frm:1NewPolyRVIII{z=pixel , c=fn1(pixel) , a=p1 , b=p2 , d=p3:
              zz=z
              z=z-(z^a-c^b*z^d)/(a*z^(a-1)+c^b*d*z^(d-1))
              |z-zz|>0.00000001} 
frm:2ChangePoly1{z=fn1(pixel),a=real(p1),wechsel=imag(p1)
             root1=p2+1,root2=p3+1:
             zz=z
             x=(z^a-root1)/(a*z^(a-1))
             y=(z^a-root2)/(a*z^(a-1))
             z=z-((x)*(wechsel<real(z))+(y)*(real(z)<= wechsel)) 
             |z-zz|>0.000000001}
frm:2ChangePoly2{z=fn1(pixel),a=real(p1),wechsel=imag(p1),root1=p2+1,root2=p3+1:
             zz=z
             x=(z^a-root1)/(a*z^(a-1))
             y=(z^a-root2)/(a*z^(a-1))
             z=z-((x)*(wechsel<|z|)+(y)*(|z|<= wechsel)) 
             |z-zz|>0.000000001}
frm:2newtonMandel{z=fn1(pixel),c=fn2(pixel),a=p1:
              zz=z
              z=z-((z^a-(z*z+c))/(a*z^(a-1)-2*z))
              |z-zz|>0.00000001}
frm:2newtonLambda{z=fn1(pixel),c=fn2(pixel),a=p1:
              zz=z
              z=z-((z^a-(c*z*(1-z)))/(a*z^(a-1)-(c-2*c*z)))
              |z-zz|>0.00000001}
frm:3NewtonLike1{z=fn1(pixel),a=p1,b=p2+1:
             zz=z
             z=z-((z^a-1)/(a*z^(a-1)))
             z=fn2(b*(z/|z|))
             |z-zz|>0.00000001}
frm:3NewtonLike2{z=fn1(pixel),a=p1,b=p2+1:
             zz=z
             z=z-((z^a-1)/(a*z^(a-1)))
             z=fn2(b*(z/|z|)+pixel)
             |z-zz|>0.00000001}
frm:3NewtonLike3{z=fn1(pixel),a=p1,b=p2+1:
             zz=z
             z=z-((z^a-1)/(a*z^(a-1)))
             z=fn2(b*(z/|z|))+pixel
             |z-zz|>0.00000001}
frm:3NewtonLike4{z=fn1(pixel),a=p1,b=p2+1:
             zz=z
             z=z-((z^a-1)/(a*z^(a-1)))
             z=fn2(z/|z|)*|z| 
             |z-zz|>0.00000001}
frm:2newtonPower1{z=fn1(pixel),c=fn2(pixel),a=p1:
              zz=z
              z=z-((z^a-(z^c))/(a*z^(a-1)-c*z^(c-1)))
              |z-zz|>0.00000001}
frm:2newtonPower2{z=fn1(pixel),c=fn2(pixel),a=p1:
              zz=z
              z=z-((z^a-(z^c+c))/(a*z^(a-1)-c*z^(c-1)))
              |z-zz|>0.00000001}
frm:2newtonTetrate1{z=fn1(pixel),c=fn2(pixel),a=p1:
                zz=z
                z=z-((z^a-(c^z))/(a*z^(a-1)-log(c)*c^z))
                |z-zz|>0.00000001}
frm:2newtonTetrate2{z=fn1(pixel),c=fn2(pixel),a=p1:
                zz=z
                z=z-((z^a-(c^z+c))/(a*z^(a-1)-log(c)*c^z))
                |z-zz|>0.00000001}
frm:2HalNewPoly1{z=pixel,r1=real(p1),r2=imag(p1),g=p2+1,g2=p3+1:
             c=z
             f1=z^r1-1
             f2=r1*z^(r1-1)
             f3=r1*(r1-1)*z^(r1-2)
             z=z-g*f1/(f2-f3*f1/(2*f2))    ; Halley
             z=z-g2*(z^r2-1)/(r2*z^(r2-1)) ; Newton
             |z-c| >0.000001}
frm:2HalNewPoly2{z=pixel,r1=r2=p1,g=p2+1,g2=p3+1:
             c=z
             f1=z^r1-1
             f2=r1*z^(r1-1)
             f3=r1*(r1-1)*z^(r1-2)
             z=z-g*f1/(f2-f3*f1/(2*f2))    ; Halley
             z=z-g2*(z^r2-1)/(r2*z^(r2-1)) ; Newton
             |z-c| >0.000001}
frm:2newHalPoly1{z=pixel,r1=real(p1),r2=imag(p1),g=p2+1,g2=p3+1:
             c=z
             z=z-g2*(z^r2-1)/(r2*z^(r2-1)) ; Newton
             f1=z^r1-1
             f2=r1*z^(r1-1)
             f3=r1*(r1-1)*z^(r1-2)
             z=z-g*f1/(f2-f3*f1/(2*f2))    ; Halley
             |z-c| >0.000001}
frm:2newHalPoly2{z=pixel,r1=r2=p1,g=p2+1,g2=p3+1:
             c=z
             z=z-g2*(z^r2-1)/(r2*z^(r2-1)) ; Newton
             f1=z^r1-1
             f2=r1*z^(r1-1)
             f3=r1*(r1-1)*z^(r1-2)
             z=z-g*f1/(f2-f3*f1/(2*f2))    ; Halley
             |z-c| >0.000001}
frm:2newHalPolyF1{;Seems to work just with FRACTINT 18.2 or earlier
              z=pixel,r1=real(p1),r2=imag(p1),g=p2+1,g2=p3+1:
              c=z
              x=fn1(z)
              z=z-g2*(z^r2-1)/(r2*x^(r2-1))  ; Newton
              x=fn1(z)
              f1=z^r1-1
              f2=r1*x^(r1-1)
              f3=r1*(r1-1)*x^(r1-2)
              z=z-g*f1/(f2-f3*f1/(2*f2))     ; Halley
              |z-c| >0.000001}
frm:2HalNewSin{z=pixel,root=p1+1,g=p2+1,g2=p3+1:
             c=z
             f1=sin(z)-root
             f2=cos(z)
             f3=-sin(z)
             z=z-g*f1/(f2-f3*f1/(2*f2))    ; Halley
             z=z-g2*(sin(z)-root)/(cos(z)) ; Newton
             |z-c| >0.000001}

-------------------------------------- formula file peterman.frm --------------------------------------------
frm:Peter_1A01(XAXIS) { z=p1, c=pixel:
                    z=z*z+c;           
                    |fn1(z)|<real(p2) }
frm:Peter_1A02(XAXIS){z=p1, c=pixel:
                  z=z*z+c;           
                  abs(fn1(z))<real(p2)}
frm:Peter_1A03(XAXIS){z=p1, c=pixel:
                  z=z*z+c;           
                  |fn1(z)|>real(p2) }
frm:Peter_1A04(XAXIS){z=p1, c=pixel:
                  z=z*z+c;           
                  abs(fn1(z))>real(p2)}
frm:Peter_1A05{ z=p1, c=pixel:
            z=z*z+c;           
       |fn1(real(z))-fn2(imag(z))|<real(p2) }
frm:Peter_1A06{ z=p1, c=pixel:
            z=z*z+c;           
       abs(fn1(real(z))-fn2(imag(z)))<real(p2) }
frm:Peter_1A07{ z=p1, c=pixel:
            z=z*z+c;           
       |fn1(real(z))-fn2(imag(z))|>real(p2) }
frm:Peter_1A08{ z=p1, c=pixel:
            z=z*z+c;           
       abs(fn1(real(z))-fn2(imag(z)))>real(p2) }
frm:Peter_1A09(XAXIS) { z=p1, c=pixel:
                    d=z;
                    z=z*z+c,          
       |fn1(real(z))-fn1(real(d))|>real(p2) }
frm:Peter_1A10 { z=p1, c=pixel:
             d=z;
             z=z*z+c,          
       |fn1(imag(z))-fn1(imag(d))|>real(p2) }
frm:Peter_1A11 { z=p1, c=pixel:
             d=z;
             z=z*z+c,          
       |fn1(real(z))-fn1(real(d))|<real(p2) }
frm:Peter_1A12 { z=p1, c=pixel:
             d=z;
             z=z*z+c,          
       |fn1(imag(z))-fn1(imag(d))|<real(p2) }
frm:Peter_1A13 (XAXIS) { z=p1, c=pixel:
                     d=z;
                     z=z*z+c,          
       abs(fn1(real(z))-fn1(real(d)))>real(p2) }
frm:Peter_1A14 { z=p1, c=pixel:
             d=z;
             z=z*z+c,          
       abs(fn1(imag(z))-fn1(imag(d)))>real(p2) }
frm:Peter_1A15 (XAXIS) { z=p1, c=pixel:
                     d=z;
                     z=z*z+c,          
       abs(fn1(real(z))-fn1(real(d)))<real(p2) }
frm:Peter_1A16 { z=p1, c=pixel:
             d=z;
             z=z*z+c,          
       abs(fn1(imag(z))-fn1(imag(d)))<real(p2) }          
frm:Peter_2A01(XAXIS){z=c=pixel:
                  z=z*z+c;           
                  |fn1(z)|<real(p2) }
frm:Peter_2A02(XAXIS){z=c=pixel:
                  z=z*z+c;           
                  abs(fn1(z))<real(p2)}
frm:Peter_2A03(XAXIS){z=c=pixel:
                  z=z*z+c;           
                  |fn1(z)|>real(p2) }
frm:Peter_2A04(XAXIS){z=c=pixel:
                  z=z*z+c;           
                  abs(fn1(z))>real(p2)}
frm:Peter_2A05{ z=c=pixel:
            z=z*z+c;           
       |fn1(real(z))-fn2(imag(z))|<real(p2) }
frm:Peter_2A06{ z=c=pixel:
            z=z*z+c;           
       abs(fn1(real(z))-fn2(imag(z)))<real(p2) }
frm:Peter_2A07{ z=c=pixel:
            z=z*z+c;           
       |fn1(real(z))-fn2(imag(z))|>real(p2) }
frm:Peter_2A08{ z=c=pixel:
            z=z*z+c;           
       abs(fn1(real(z))-fn2(imag(z)))>real(p2) }
frm:Peter_2A09(XAXIS){z=c=pixel:
                  d=z;
                  z=z*z+c,          
       |fn1(real(z))-fn1(real(d))|>real(p2) }
frm:Peter_2A10 { z=c=pixel:
             d=z;
             z=z*z+c,          
       |fn1(imag(z))-fn1(imag(d))|>real(p2) }
frm:Peter_2A11 { z=c=pixel:
             d=z;
             z=z*z+c,          
       |fn1(real(z))-fn1(real(d))|<real(p2) }
frm:Peter_2A12 { z=c=pixel:
             d=z;
             z=z*z+c,          
       |fn1(imag(z))-fn1(imag(d))|<real(p2) }
frm:Peter_2A13(XAXIS){z=c=pixel:
                  d=z;
                  z=z*z+c,          
       abs(fn1(real(z))-fn1(real(d)))>real(p2) }
frm:Peter_2A14 { z=c=pixel:
             d=z;
             z=z*z+c,          
       abs(fn1(imag(z))-fn1(imag(d)))>real(p2) }
frm:Peter_2A15(XAXIS){z=c=pixel:
                  d=z;
                  z=z*z+c,          
       abs(fn1(real(z))-fn1(real(d)))<real(p2) }
frm:Peter_2A16 { z=c=pixel:
             d=z;
             z=z*z+c,          
       abs(fn1(imag(z))-fn1(imag(d)))<real(p2) }                          
frm:Peter_3A01 { z=p1, c=pixel:
             z=z*z+c;           
             |real(z)|<100  || |imag(z)|<100 }
frm:Peter_3A02 { z=p1, c=pixel:
             z=z*z+c;           
       abs(real(z))<100  ||  abs(imag(z))<100 }
frm:Peter_3A03 { z=p1, c=pixel:
             z=z*z+c;           
       |real(z)|<100 && |imag(z)|<100 }
frm:Peter_3A04 { z=p1, c=pixel:
             z=z*z+c;           
       abs(real(z))<100 && abs(imag(z))<100 }
frm:Peter_3A05{ z=p1, c=pixel:
            z=-z*z+c;           
            |fn1(z)|<real(p2) }
frm:Peter_3A06{ z=p1, c=pixel:
            z=z*z-c;           
            |fn1(z)|<real(p2) }
frm:Peter_3A07{ z=p1, c=pixel:
            z=(z+c)*(z+c);           
            |fn1(z)|<real(p2) }
frm:Peter_3A08{ z=p1, c=pixel:
            z=(z-c)*(z+c);           
            |fn1(z)|<real(p2) }
frm:Peter_3A09{ z=p1, c=pixel:
            z=(z-c)*(z-c);           
            |fn1(z)|<real(p2) }
frm:AbsMandel{xo=0,yo=0,cx=real(pixel),cy=imag(pixel):
          x=xo*xo-yo*yo+cx;
          y=2*xo*yo+cy;
          xo=abs(x);
          yo=abs(y);        
          |fn1(x)|<real(p2) &&  |fn1(y)|<real(p2)}
frm:AbsJulia(origin){cx=real(p1),cy=imag(p1),xo=real(pixel),yo=imag(pixel):
                 x=xo*xo-yo*yo+cx;
                 y=2*xo*yo+cy;
                 xo=abs(x);
                 yo=abs(y);        
                 |fn1(x)|<real(p2) &&  |fn1(y)|<real(p2)}
frm:Mandellike1(yaxis){xo=real(p1),yo=imag(p1):
                   x=(xo*xo-yo*yo)*(0,1)+real(pixel);
                   y=2*xo*yo*(0,1)+imag(pixel);
                   z=x+flip(y);
                   xo=x;
                   yo=y;           
                   |fn1(z)|<real(p2) }
frm:Mandellike2(xaxis){xo=real(p1),yo=imag(p1):
                   x=xo*xo-yo*yo+real(pixel);
                   y=2*xo*yo+imag(pixel);
                   z=x+flip(y)
                   xo=y;
                   yo=x;           
                   |fn1(z)|<real(p2) }
frm:Mandellike3 {z=p1,c=pixel:
             z=fn2(z)+c;
             |fn1(z)|<real(p2) }
frm:Mandellike4 {z=p1,c=pixel:
             z=fn2(z)*c;
             |fn1(z)|<real(p2) }        
frm:Mandellike5 {z=p1,c=pixel:
             z=fn2(z)*c+c;
             |fn1(z)|<real(p2) }
frm:Mandellike6 {z=(0,0),c=fn2(pixel):
             z=z*z+c;
             |fn1(z)|<real(p2) }
frm:Mandellike7 {z=(0,0),c=pixel,c=c^real(p1)-imag(p1):
             z=z*z+c;
             |fn1(z)|<real(p2) }
frm:Mandellike8 {z=1/pixel,c=pixel:
             z=z*z+c;
             |fn1(z)|<real(p2) }
frm:Mandellike9 {z=pixel,c=1/pixel:
             z=z*z+c;
             |fn1(z)|<real(p2) }
frm:AbsMandel2 { xo=0,yo=0,cx=real(pixel),cy=imag(pixel):
             x=xo*xo-yo*yo+cx;
             y=2*xo*yo+cy;
             xo=abs(x);
             yo=abs(y);        
             |fn1(x)|<real(p2)  ||  |fn1(y)|<real(p2)}
frm:AbsJulia2(origin){cx=real(p1),cy=imag(p1),xo=real(pixel),yo=imag(pixel):
                  x=xo*xo-yo*yo+cx;
                  y=2*xo*yo+cy;
                  xo=abs(x);
                  yo=abs(y);        
                  |fn1(x)|<real(p2)  ||  |fn1(y)|<real(p2)}
frm:AbsMandel3 { xo=0,yo=0,cx=real(pixel),cy=imag(pixel):
             x=xo*xo-yo*yo+cx;
             y=2*xo*yo+cy;
             xo=abs(x);
             yo=abs(y);
             |fn1(x)|<real(p2)}
frm:AbsJulia3(origin){cx=real(p1),cy=imag(p1),xo=real(pixel),yo=imag(pixel):
                  x=xo*xo-yo*yo+cx;
                  y=2*xo*yo+cy;
                  xo=abs(x);
                  yo=abs(y);
                  |fn1(x)|<real(p2)}
frm:Mandellike10 { xo=0,yo=0,cx=real(pixel),cy=imag(pixel):
               x=xo*xo-yo*yo+cx;
               y=2*xo*yo+cy;
               xo=fn2(x);
               yo=fn2(y);        
               |fn1(x)|<real(p2)  ||  |fn1(y)|<real(p2)}
frm:Mandellike11 { xo=0,yo=0,cx=real(pixel),cy=imag(pixel):
               x=xo*xo-yo*yo+cx;
               y=2*xo*yo+cy;
               xo=x+p1;
               yo=y+p1;        
               abs(fn1(x*x+y*y))<real(p2)}
frm:Mandellike12 { z=(0,0),c=pixel:
               z=z*z+c;
               z=z^p1;
               abs(fn1(z))<real(p2)}
frm:Mandellike13{ z=fn1(pixel) , c=fn2(pixel) , a=p1 , b=p2 , d=p3:
              z=z^a+c^b*z^d
              z=fn3(z) 
              |z|<100}

------------------------------------- formula file lambda.frm ----------------------------------------

frm:Lambda01 { z=pixel:
	          z=z*(p1-z),
                       |fn1(z)|<real(p2) }
frm:Lambda02 { z=p1:
	          z=z*(pixel-z),
                       |fn1(z)|<real(p2) }
frm:Lambda03 (XAXIS) { z=0.5, c=pixel:
	          z=c*z*(1-z),
                       |fn1(z)|<real(p2) }
frm:Lambda04 (XAXIS) { z=0.422649730811, c=pixel:
	          z=c*z*(1-z)*(2-z),
                       |fn1(z)|<real(p2) }
frm:Lambda05 (XAXIS) { z=0.38197, c=pixel:
	          z=c*z*(1-z)*(2-z)*(3-z),
                       |fn1(z)|<real(p2) }
frm:Lambda06 (XAXIS) { z=p1, c=pixel:
	          z=c*z*(1-z)*(-1-z),
                       |fn1(z)|<real(p2) }
frm:Lambda07 (XAXIS) { z=0.577350269189, c=pixel:
	          z=c*z*(1-z)*(-1-z),
                       |fn1(z)|<real(p2) }
frm:Lambda08 (XAXIS) { z=p1, c=pixel:
	          z=c*z*(1-z)*(-1-z)*(2-z)*(-2-z),
                       |fn1(z)|<real(p2) }
frm:Lambda09 (XAXIS) { z=0.54391225591, c=pixel:
	          z=c*z*(1-z)*(-1-z)*(2-z)*(-2-z),
                       |fn1(z)|<real(p2) }
frm:Lambda10 (XAXIS) { z=1.64443286815, c=pixel:
	          z=c*z*(1-z)*(-1-z)*(2-z)*(-2-z),
                       |fn1(z)|<real(p2) }
frm:Lambda11 { z=(p1/(3^0.5)), c=pixel:
	          z=c*z*(p1-z)*(-p1-z),
                       |fn1(z)|<real(p2) }
frm:Lambda12 { z=((0.3*p1^2+0.3*p2^2+(0.09*(p1^2+p2^2)^2-0.2*p1^2*p2^2)^0.5)^0.5), c=pixel:
	          z=c*z*(p1-z)*(-p1-z)* (p2-z)*(-p2-z),
                       |fn1(z)|<100 }
frm:Lambda13 { z=((0.3*p1^2+0.3*p2^2-(0.09*(p1^2+p2^2)^2-0.2*p1^2*p2^2)^0.5)^0.5), c=pixel:
	          z=c*z*(p1-z)*(-p1-z)* (p2-z)*(-p2-z),
                       |fn1(z)|<100 }
frm:Lambda14{ z=pixel,c=p1:
		z=c*z*(1-z);
                            |fn1(z)|<real(p2) }
frm:TwoLogistic {z=p1,c=pixel:
	        r=rand;
	        if r<0.5 
                        z=c*z*(1-z);
                     if r>=0.5
                        z=c*z*(z-1);
 	        |fn1(z)|<real(p2) }
frm:Bifurcation {z=p1,c=pixel:
             z=z+c*fn1(z)*(1-fn1(z)),
             |fn2(z)|<real(p2) }
frm:Bif+pi {z=p1,c=pixel,pi=3.14159265:
             z=z+c*fn1(pi*z),
             |fn2(z)|<real(p2) }
frm:Bif=pi {z=p1,c=pixel,pi=3.14159265:
             z=c*fn1(pi*z),
             |fn2(z)|<real(p2) }
frm:Biflambda {z=p1,c=pixel:
             z=c*fn1(z)*(1-fn1(z)),
             |fn2(z)|<real(p2) }
frm:Bifstewart {z=p1,c=pixel:
             z=c*fn1(z)*fn1(z)-1,
             |fn2(z)|<real(p2) }
frm:Bifmay {z=p1,c=pixel,b=imag(p2):
             z=c*z/((1+z)^b),
             |fn1(z)|<real(p2) }
frm:AbsLambdaM1(ORIGIN){ xo=0.5,yo=0,cx=real(pixel),cy=imag(pixel):
                x=cx*(xo-xo*xo+yo*yo)-cy*(yo-2*xo*yo);
                y=cy*(xo-xo*xo+yo*yo)+cx*(yo-2*xo*yo);
		xo=abs(x);
		yo=abs(y);
                abs(fn1(x*x+y*y))<real(p2)}
frm:AbsLambdaJ1{ cx=real(p1),cy=imag(p1),xo=real(pixel),yo=imag(pixel):
                x=cx*(xo-xo*xo+yo*yo)-cy*(yo-2*xo*yo);
                y=cy*(xo-xo*xo+yo*yo)+cx*(yo-2*xo*yo);
		xo=abs(x);
		yo=abs(y);
                abs(fn1(x*x+y*y))<real(p2)}
frm:AbsLambdaM2(ORIGIN){ xo=0.5,yo=0,cx=real(pixel),cy=imag(pixel):
                x=cx*(xo-xo*xo+yo*yo)-cy*(yo-2*xo*yo);
                y=cy*(xo-xo*xo+yo*yo)+cx*(yo-2*xo*yo);
                xo=|x|;
                yo=|y|;
                abs(fn1(x*x+y*y))<real(p2)}
frm:AbsLambdaJ2{ cx=real(p1),cy=imag(p1),xo=real(pixel),yo=imag(pixel):
                x=cx*(xo-xo*xo+yo*yo)-cy*(yo-2*xo*yo);
                y=cy*(xo-xo*xo+yo*yo)+cx*(yo-2*xo*yo);
                xo=|x|;
                yo=|y|;
                abs(fn1(x*x+y*y))<real(p2)}
frm:AbsLambdaM3{ xo=0.5,yo=0,cx=real(pixel),cy=imag(pixel):
                x=cx*abs(xo-xo*xo+yo*yo)-cy*abs(yo-2*xo*yo);
                y=cy*abs(xo-xo*xo+yo*yo)+cx*abs(yo-2*xo*yo);
                xo=x;
                yo=y;
                abs(fn1(x*x+y*y))<real(p2)}
frm:AbsLambdaJ3(xaxis){ cx=real(p1),cy=imag(p1),xo=real(pixel),yo=imag(pixel):
                x=cx*abs(xo-xo*xo+yo*yo)-cy*abs(yo-2*xo*yo);
                y=cy*abs(xo-xo*xo+yo*yo)+cx*abs(yo-2*xo*yo);
                xo=x;
                yo=y;
                abs(fn1(x*x+y*y))<real(p2)}
frm:AbsLambdaM4{ xo=0.5,yo=0,cx=real(pixel),cy=imag(pixel):
                x=cx*|xo-xo*xo+yo*yo|-cy*|yo-2*xo*yo|;
                y=cx*|yo-2*xo*yo|+cy*|xo-xo*xo+yo*yo|;
                xo=x;
                yo=y;
                abs(fn1(x*x+y*y))<real(p2)}
frm:AbsLambdaJ4(xaxis){ cx=real(p1),cy=imag(p1),xo=real(pixel),yo=imag(pixel):
                x=cx*|xo-xo*xo+yo*yo|-cy*|yo-2*xo*yo|;
                y=cx*|yo-2*xo*yo|+cy*|xo-xo*xo+yo*yo|;
                xo=x;
                yo=y;
                abs(fn1(x*x+y*y))<real(p2)}

--------------------------------- formula file halley.frm --------------------------------------------------

frm:Peter_1HalPoly { z=pixel,r=real(p1),g=p2+1:
                        c=z,
                        f1=z^r-1
                        f2=r*x^(r-1)
                        f3=r*(r-1)*x^(r-2)
                        z=z-g*f1/(f2-f3*f1/(2*f2))
                        |z-c| >0.000001}
frm:Peter_1HalPolyX { z=pixel,r=real(p1),g=p2+1:
                        c=z,
                        f1=z^r-1
                        f2=r*z^(r-1)
                        f3=r*(r-1)*z^(r-2)
                        z=z-g*2*f2*f1/(2*f2*f2-f3*f1)
                        |z-c| >0.000001}
frm:Peter_1HalPolyII { z=pixel,r=real(p1),g=p2+1:
                          c=z,
                          f1=z^r-1
                          f2=r*x^(r-1)
                          f3=r*(r-1)*x^(r-2)
                          z=z-g*f1/(f2-f3*f1/(2*f2))
       abs(real(z)-real(c)) >0.000001, abs(imag(z)-imag(c)) >0.000001}
frm:Peter_1HalPolyR {; real Halley formula for polynoms,
                        ; use floating point (only for real exponents)
                            z=pixel,r=real(p1),g=p2+1:
                            c=z,
                            f1=z^r-1
                            f2=r*z^(r-1)
                            f3=r*(r-1)*z^(r-2)
                            z=z-g*f1/(f2-(f3*f1/(2*f2)))
                            |z-c| >0.000001}
frm:Peter_1HalPolyRII{; real Halley formula for polynoms,
                    use floating point
                            z=pixel,r=p1,g=p2+1:
                            c=z,
                            f1=z^r-1
                            f2=r*z^(r-1)
                            f3=r*(r-1)*z^(r-2)
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            |z-c| >0.000001}
frm:Peter_1HalSin  { z=pixel,g=p2+1:
                        c=z,
                        f1=sin(z)
                        f2=cos(z)
                        f3=-sin(z)
                        z=z-g*f1/(f2-(f3*f1/(2*f2)))
                        |z-c| >0.000001}
frm:Peter_1HalSinF  { z=pixel,g=p2+1:
                         c=z,
                         f1=sin(z)
                         f2=cos(z)
                         f3=-sin(z)
                         z=z-g*f1/(f2-f3*f1/(2*f2))
       |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001 }
frm:Peter_1HalCos  { z=pixel,g=p2+1:
                            c=z,
                            f1=cos(z)
                            f2=-sin(z)
                            f3=-cos(z)
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            |z-c| >0.000001}
frm:Peter_1HalCosF  { z=pixel,g=p2+1:
                         c=z,
                         f1=cos(z)
                         f2=-sin(z)
                         f3=-cos(z)
                         z=z-g*f1/(f2-f3*f1/(2*f2))
                         z=z+cos(z)/sin(z),
         |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001 }
frm:Peter_1HalTan  { z=pixel,g=p2+1:
                            c=z,
                            f1=tan(z)
                            f2=1/(cos(z))^2
                            f3=2*sin(z)/(cos(z))^3
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            |z-c| >0.000001}   
frm:Peter_1HalTanF {z=pixel,g=p2+1:
                        c=z,
                        f1=tan(z)
                        f2=1/(cos(z))^2
                        f3=2*sin(z)/(cos(z))^3
                        z=z-g*f1/(f2-f3*f1/(2*f2))
          |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001 }
frm:Peter_1HalCot  { z=pixel,g=p2+1:
                        c=z,
                        f1=cotan(z)
                        f2=-1/(sin(z))^2
                        f3=2*cos(z)/(sin(z))^3
                        z=z-g*f1/(f2-f3*f1/(2*f2))
                        |z-c| >0.000001}                          
frm:Peter_1HalCotF {z=pixel,g=p2+1:
                       c=z,
                       f1=cotan(z)
                       f2=-1/(sin(z))^2
                       f3=2*cos(z)/(sin(z))^3
                       z=z-g*f1/(f2-f3*f1/(2*f2))
        |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001 }
frm:Peter_1HalLog{ z=pixel,g=p2+1:
               c=z,
               f1=log(z)
               f2=1/z
               f3=-1/(z*z)
               z=z-g*f1/(f2-f3*f1/(2*f2))
               |z-c| >0.000001}                          
frm:Peter_1HalLogF{ z=pixel,g=p2+1:
                c=z,
                f1=log(z)
                f2=1/z
                f3=-1/(z*z)
                z=z-g*f1/(f2-f3*f1/(2*f2))
        |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001 }
frm:Peter_1HalPolyRIII  { z=pixel,g=p2+1:
                            c=z,
                            f1=(z^p1)-(z^p2)
                            f2=(p1*z^(p1-1))-(p2*z^(p2-1))
                            f3=(p1*(p1-1)*z^(p1-2))-(p2*(p2-1)*z^(p2-2))
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            |z-c| >0.000001}
frm:Peter_1HalPolyRFu{; real Halley formula for polynoms,
                    use floating point
                  z=fn1(pixel),r=p1,g=p2+1:
                  c=z,
                  f1=z^r-1
                  f2=r*z^(r-1)
                  f3=r*(r-1)*z^(r-2)
                  z=z-g*f1/(f2-f3*f1/(2*f2))
                  |z-c| >0.000001}
frm:Peter_1HalPolyRFu2{; real Halley formula for polynoms,
                    use floating point
                        z=pixel^real(p2)-imag(p2),r=p1,g=p2+1:
                        c=z,
                        f1=z^r-1
                        f2=r*z^(r-1)
                        f3=r*(r-1)*z^(r-2)
                        z=z-g*f1/(f2-f3*f1/(2*f2))
                        |z-c| >0.000001}
frm:Peter_1HalPolyRFu3{; real Halley formula for polynoms,
                    use floating point
                            z=pixel^4-1.25*pixel^2+0.25,r=p1,g=p2+1:
                            c=z,
                            f1=z^r-1
                            f2=r*z^(r-1)
                            f3=r*(r-1)*z^(r-2)
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            |z-c| >0.000001}
frm:Peter_1HalPolyRFu4{; real Halley formula for polynoms,
                    use floating point
                    a=fn1(real(pixel)),b=fn1(imag(pixel)),z=a+b*(0,1),r=p1,g=p2+1:
                    c=z,
                    f1=z^r-1
                    f2=r*z^(r-1)
                    f3=r*(r-1)*z^(r-2)
                    z=z-g*f1/(f2-f3*f1/(2*f2))
                    |z-c| >0.000001}
frm:Peter_1HalPolyRIV{; real Halley formula for polynoms,
                    use floating point
                            z=pixel,r=real(p1),a=p2,g=p2+1:
                            c=z,
                            f1=z^r-1
                            f2=r*z^(r-a)
                            f3=r*(r-a)*z^(r-a-1)
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            |z-c| >imag(p1)}
frm:Peter_1HalPolyRV{; real Halley formula for polynoms,
                    use floating point
                            z=pixel,r=real(p1),a=p2,g=p2+1:
                            c=z,
                            f1=z^r-1
                            f2=r*z^(r-a)
                            f3=r*(r-a)*z^(r-a-1)
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            real(|z-c|) <imag(p1)}
frm:Peter_1HalPolyRVI{; real Halley formula for polynoms,
                    use floating point
                            z=pixel,r=real(p1),a=p2,g=p2+1:
                            c=z,
                            f1=z^r-1
                            f2=r*z^(r-a)
                            f3=r*(r-a)*z^(r-a-1)
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            real(|fn1(z)|)<imag(p1)}
frm:Peter_1HalPolyRVII{; real Halley formula for polynoms,
                    use floating point
                            z=pixel,r=real(p1),a=p2,g=p2+1:
                            c=z,
                            f1=z^r-1
                            f2=r*z^(r-a)
                            f3=r*(r-a)*z^(r-a-1)
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            real(|fn1(z)|)>imag(p1)}
frm:PolyRI{; real Halley formula for polynoms,
                    use floating point
                            z=pixel,r=p1,g=p2+1:
                            c=z,
                            f1=z^r-1
                            f2=r*z^(r-1)
                            f3=r*(r-1)*z^(r-2)
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            z=z+p2;
                            |z-c| >0.000001}
frm:PolyRII{; real Halley formula for polynoms,
                    use floating point
                            z=pixel,r=p1,g=p2+1:
                            c=z,
                            f1=z^r-1
                            f2=r*z^(r-1)
                            f3=r*(r-1)*z^(r-2)
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            z=z*p2;
                            |z-c| >0.000001}
frm:PolyRIII{; real Halley formula for polynoms,
                    use floating point
                            z=pixel,r=p1,g=p2+1:
                            c=z,
                            f1=z^r-1
                            f2=r*z^(r-1)
                            f3=r*(r-1)*z^(r-2)
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            z=fn1(z);
                            |z-c| >0.000001}
frm:Halley_test31{z=c=pixel,r=p2+1,g=p2+1:
              f1=z^r+c
              f2=r*z^(r-1)
              f3=r*(r-1)*z^(r-2)
              z=z-g*f1/(f2-f3*f1/(2*f2))
              |z|>p1}

frm:Halley_test32{z=c=pixel,r=p2+1,g=p2+1:
              f1=z^r+c
              f2=r*z^(r-1)
              f3=r*(r-1)*z^(r-2)
              z=z-g*f1/(f2-f3*f1/(2*f2))
              |z|<p1 }

frm:Halley_test41{z=c=pixel,r=p2+1,g=p2+1:
              d=z
              f1=z^r+c
              f2=r*z^(r-1)
              f3=r*(r-1)*z^(r-2)
              z=z-g*f1/(f2-f3*f1/(2*f2))
              |z-d|>p1}

frm:Halley_test42{z=c=pixel,r=p2+1,g=p2+1:
              d=z
              f1=z^r+c
              f2=r*z^(r-1)
              f3=r*(r-1)*z^(r-2)
              z=z-g*f1/(f2-f3*f1/(2*f2))
              |z-d|<p1 }

frm:Peter_1HalPolyRFu5{; real Halley formula for polynoms,
                    use floating point
                            z=fn1(fn2(pixel)),r=p1,g=p2+1:
                            c=z,
                            f1=z^r-1
                            f2=r*z^(r-1)
                            f3=r*(r-1)*z^(r-2)
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            |z-c| >0.000001}
frm:Peter_1HalPolyRFu6{; real Halley formula for polynoms,
                    use floating point
                            z=fn1(pixel^real(p2)+imag(p2)),r=p1,g=p2+1:
                            c=z,
                            f1=z^r-1
                            f2=r*z^(r-1)
                            f3=r*(r-1)*z^(r-2)
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            |z-c| >0.000001}
frm:Peter_2HalSinCos { z=pixel,g=p2+1:
                          c=z,
                          f1=sin(z)*cos(z)+p1
                          f2=2*cos(z)*cos(z)-1
                          f3=4*cos(z)*sin(z)
                          z=z-g*f1/(f2-f3*f1/(2*f2))
                          |z-c| >0.000001}
frm:Peter_2HalCosTan { z=pixel,g=p2+1:
                          c=z,
                          f1=tan(z)*cos(z)+p1
                          f2=cos(z)*(tan(z)*tan(z)+1)-sin(z)*tan(z)
                          f31=2*cos(z)*tan(z)*(tan(z)*tan(z)+1)-sin(z)*(tan(z)*tan(z)+1)
                          f32=cos(z)*tan(z)+sin(z)*(tan(z)*tan(z)+1)
                          f3=f31-f32
                          z=z-g*f1/(f2-f3*f1/(2*f2))
                          |z-c| >0.000001}
frm:Peter_2HalSinTan { z=pixel,g=p2+1:
                          c=z,
                          f1=sin(z)*tan(z)+p1
                          f2=cos(z)*tan(z)+sin(z)*(tan(z)*tan(z)+1)
                          f31=2*sin(z)*tan(z)*(tan(z)*tan(z)+1)+cos(z)*(tan(z)*tan(z)+1)
                          f32=-sin(z)*tan(z)+cos(z)*(tan(z)*tan(z)+1)
                          f3=f31+f32
                          z=z-g*f1/(f2-f3*f1/(2*f2))
                          |z-c| >0.000001}
frm:Peter_2HalSinSinH { z=pixel,g=p2+1:
                           c=z,
                           f1=sinh(z)*sin(z)+p1
                           f2=cos(z)*sinh(z)+sin(z)*cosh(z)
                           f3=2*cos(z)*cosh(z)
                           z=z-g*f1/(f2-f3*f1/(2*f2))
                           |z-c| >0.000001}
frm:Peter_2HalSinHCos { z=pixel,g=p2+1:
                           c=z,
                           f1=sinh(z)*cos(z)+p1
                           f2=cos(z)*cosh(z)-sin(z)*sinh(z)
                           f3=-2*sin(z)*cosh(z)
                           z=z-g*f1/(f2-f3*f1/(2*f2))
                           |z-c| >0.000001}
frm:Peter_2HalSinCosH { z=pixel,g=p2+1:
                           c=z,
                           f1=sin(z)*cosh(z)+p1
                           f2=cos(z)*cosh(z)+sin(z)*sinh(z)
                           f3=2*cos(z)*sinh(z)
                           z=z-g*f1/(f2-f3*f1/(2*f2))
                           |z-c| >0.000001}
frm:Peter_2HalCosCosH{ z=pixel,g=p2+1:
                   c=z,
                   f1=cos(z)*cosh(z)+p1
                   f2=cos(z)*sinh(z)-sin(z)*cosh(z)
                   f3=-sin(z)*(sinh(z)+cosh(z))
                   z=z-g*f1/(f2-f3*f1/(2*f2))
                   |z-c| >0.000001}
frm:Peter_2HalTanSinH { z=pixel,g=p2+1:
                           c=z,
                           f1=tan(z)*sinh(z)+p1
                           f2=sinh(z)*(tan(z)*tan(z)+1)+cosh(z)*tan(z)
                           f31=cosh(z)*(tan(z)*tan(z)+1)+sinh(z)*2*tan(z)*(tan(z)*tan(z)+1)
                           f32=sinh(z)*tan(z)+cosh(z)*(tan(z)*tan(z)+1)
                           f3=f31+f32
                           z=z-g*f1/(f2-f3*f1/(2*f2))
                           |z-c| >0.000001}
frm:Peter_2HalTanCosH { z=pixel,g=p2+1:
                           c=z,
                           f1=cosh(z)*tan(z)+p1
                           f2=sinh(z)*tan(z)+cosh(z)*(tan(z)*tan(z)+1)
                           f31=sinh(z)*(tan(z)*tan(z)+1)+cosh(z)*tan(z)
                           f32=2*cosh(z)*tan(z)*(tan(z)*tan(z)+1)+sinh(z)*(tan(z)*tan(z)+1)
                           f3=f31+f32
                           z=z-g*f1/(f2-f3*f1/(2*f2))
                           |z-c| >0.000001}
frm:Peter_2HalSinTanH { z=pixel,g=p2+1:
                           c=z,
                           f1=tanh(z)*sin(z)+p1
                           f2=cos(z)*tanh(z)+sin(z)*(1-tanh(z)*tanh(z))
                           f31=cos(z)*(1-tanh(z)*tanh(z))-sin(z)*tanh(z)
                           f32=-2*sin(z)*tanh(z)*(1-tanh(z)*tanh(z))+cos(z)*(1-tanh(z)*tanh(z))
                           f3=f31+f32
                           z=z-g*f1/(f2-f3*f1/(2*f2))
                           |z-c| >0.000001}
frm:Peter_2HalCosTanH { z=pixel,g=p2+1:
                           c=z,
                           f1=tanh(z)*cos(z)+p1
                           f2=cos(z)*(1-tanh(z)*tanh(z))-sin(z)*tanh(z)
                           f31=-2*cos(z)*tanh(z)*(1-tanh(z)*tanh(z))-sin(z)*(1-tanh(z)*tanh(z))
                           f32=cos(z)*tanh(z)+sin(z)*(1-tanh(z)*tanh(z))
                           f3=f31-f32
                           z=z-g*f1/(f2-f3*f1/(2*f2))
                           |z-c| >0.000001}
frm:Peter_2HalTanTanH{ z=pixel,g=p2+1:
                   c=z,
                   f1=tan(z)*tanh(z)+p1
                   f2=(tan(z)*tan(z)+1)*tanh(z)+tan(z)*(1-tanh(z)*tanh(z))
                   f31=(tan(z)*tan(z)+1)*(1-tanh(z)*tanh(z))+2*tan(z)*(tan(z)*tan(z)+1)*tanh(z)
                   f32=(tan(z)*tan(z)+1)*(1-tanh(z)*tanh(z))-tan(z)*2*tanh(z)*(1-tanh(z)*tanh(z))
                   f3=f31+f32
                   z=z-g*f1/(f2-f3*f1/(2*f2))
                   |z-c| >0.000001}
frm:Peter_2HalSinHCosH { z=pixel,g=p2+1:
                            c=z,
                            f1=sinh(z)*cosh(z)+p1
                            f2=cosh(z)*cosh(z)+sinh(z)*sinh(z)
                            f3=4*sinh(z)*cosh(z)
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            |z-c| >0.000001}
frm:Peter_2HalSinHTanH { z=pixel,g=p2+1:
                            c=z,
                            f1=tanh(z)*sinh(z)+p1
                            f2=sinh(z)*(1-tanh(z)*tanh(z))+cosh(z)*tanh(z)
                            f31=-2*sinh(z)*tanh(z)*(1-tanh(z)*tanh(z))+cosh(z)*(1-tanh(z)*tanh(z))
                            f32=sinh(z)*tanh(z)+cosh(z)*(1-tanh(z)*tanh(z))
                            f3=f31+f32
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            |z-c| >0.000001}
frm:Peter_2HalCosHTanH { z=pixel,g=p2+1:
                            c=z,
                            f1=cosh(z)*tanh(z)+p1
                            f2=cosh(z)*(1-tanh(z)*tanh(z))+sinh(z)*tanh(z)
                            f31=-2*cosh(z)*tanh(z)*(1-tanh(z)*tanh(z))+sinh(z)*(1-tanh(z)*tanh(z))
                            f32=cosh(z)*tanh(z)+sinh(z)*(1-tanh(z)*tanh(z))
                            f3=f31+f32
                            z=z-g*f1/(f2-f3*f1/(2*f2))
                            |z-c| >0.000001}
frm:Peter_2HalSin^2 { z=pixel,g=p2+1:
                        c=z,
                        f1=sin(z)*sin(z)+p1
                        f2=2*cos(z)*sin(z)
                        f3=2*(cos(z)*cos(z)-sin(z)*sin(z))
                        z=z-g*f1/(f2-f3*f1/(2*f2))
                        |z-c| >0.000001}
frm:Peter_2HalCos^2 { z=pixel,g=p2+1:
                        c=z,
                        f1=cos(z)*cos(z)+p1
                        f2=-2*cos(z)*sin(z)
                        f3=-2*(2*cos(z)*cos(z)-1)
                        z=z-g*f1/(f2-f3*f1/(2*f2))
                        |z-c| >0.000001}
frm:Peter_2HalTan^2 { z=pixel,g=p2+1:
                        c=z,
                        f1=tan(z)*tan(z)+p1
                        f2=2*tan(z)/(cos(z)*cos(z))
                        f3=2*((tan(z)*tan(z)+1)*cos(z)+tan(z)*2*sin(z))/(cos(z)*cos(z)*cos(z))
                        z=z-g*f1/(f2-f3*f1/(2*f2))
                        |z-c| >0.000001}
frm:Peter_2HalCosH^2 { z=pixel,g=p2+1:
                         c=z,
                         f1=cosh(z)*cosh(z)+p1
                         f2=2*cosh(z)*sinh(z)
                         f3=2*(cosh(z)*cosh(z)+sinh(z)*sinh(z))
                         z=z-g*f1/(f2-f3*f1/(2*f2))
                         |z-c| >0.000001}
frm:Peter_2HalSinH^2 { z=pixel,g=p2+1:
                         c=z,
                         f1=sinh(z)*sinh(z)+p1
                         f2=2*cosh(z)*sinh(z)
                         f3=2*(cosh(z)*cosh(z)+sinh(z)*sinh(z))
                         z=z-g*f1/(f2-f3*f1/(2*f2))
                         |z-c| >0.000001}
frm:Peter_2HalTanH^2 { z=pixel,g=p2+1:
                         c=z,
                         f1=tanh(z)*tanh(z)+p1
                         f2=2*sinh(z)/(cosh(z)*cosh(z)*cosh(z))
                         z=z-g*f1/(f2-f3*f1/(2*f2))
                         |z-c| >0.000001}
frm:HalSin[z^a+b] { z=pixel,a=p1,b=p2,g=p2+1:
                c=z,
                f1=sin(z^a+b)
                f2=a*z^(a-1)*cos(z^a+b)
                z=z-g*f1/(f2-f3*f1/(2*f2))
                |z-c| >0.000001}
frm:HalSin[z^c+b]^a { z=pixel,a=real(p1),c=imag(p1),b=p2,g=p2+1:
                  c=z,
                  f1=sin((z^c+b)^a)
                  f2=c*z^(c-1)*a*(z^c+b)^(a-1)*cos((z^c+b)^a)
                  z=z-g*f1/(f2-f3*f1/(2*f2))
                  |z-c| >0.0001}
frm:HalSin[tan[z]]  { z=pixel,g=p2+1:
                  c=z,
                  f1=sin(tan(z)+p2)+p1
                  f2=cos(tan(z)+p2)*(tan(z)*tan(z)+1)
                  z=z-g*f1/(f2-f3*f1/(2*f2))
                  |z-c| >0.0001}
frm:Peter_2HalSinH/Tan {z=pixel,g=p2+1:
                   c=z,
                   f1=(sinh(z)/tan(z))+p1,
                   f21=cosh(z)*tan(z)-sinh(z)*(tan(z)*tan(z)+1)
                   f22=tan(z)*tan(z),
                   f2=f21/f22
                   z=z-g*f1/(f2-f3*f1/(2*f2)),
                   |z-c| >0.000001}
frm:Peter_2HalCosH/Tan {z=pixel,g=p2+1:
                   c=z,
                   f1=(cosh(z)/tan(z))+p1
                   f21=sinh(z)*tan(z)-cosh(z)*(tan(z)*tan(z)+1)
                   f22=tan(z)*tan(z),
                   f2=f21/f22
                   z=z-g*f1/(f2-f3*f1/(2*f2)),
                   |z-c| >0.000001}
frm:Peter_2HalTanH/Tan(Yaxis){z=pixel,g=p2+1:
                   c=z,
                   f1=(tanh(z)/tan(z))+p1
                   f21=(1-tanh(z)*tanh(z))*tan(z)-tanh(z)*(tan(z)*tan(z)+1)
                   f22=tan(z)*tan(z),
                   f2=f21/f22
                   z=z-g*f1/(f2-f3*f1/(2*f2)),
                   |z-c| >0.000001}
frm:HalSin[z^a+b]Pix1{ z=pixel,a=pixel,b=p2,g=p2+1:
                       c=z,
                       f1=sin(z^a+b)
                       f2=a*z^(a-1)*cos(z^a+b)
                       z=z-g*f1/(f2-f3*f1/(2*f2)),
                       |z-c| >0.000001}
frm:HalSin[z^a+b]Pix2{ z=pixel,a=p1,b=pixel,g=p2+1:
                       c=z,
                       f1=sin(z^a+b)
                       f2=a*z^(a-1)*cos(z^a+b)
                       z=z-g*f1/(f2-f3*f1/(2*f2)),
                       |z-c| >0.000001}
frm:HalSin[z^a+b]Pix3 { z=pixel,a=pixel,b=pixel,g=p2+1:
                              c=z,
                              f1=sin(z^a+b)
                              f2=a*z^(a-1)*cos(z^a+b)
                              z=z-g*f1/(f2-f3*f1/(2*f2)),
                              |z-c| >0.000001}
frm:HalSin[z^c+b]^aPx1{z=pixel,a=pixel,c=imag(p1),b=p2,g=p2+1:
                      c=z,
                      f1=sin((z^c+b)^a)
                      f2=c*z^(c-1)*a*(z^c+b)^(a-1)*cos((z^c+b)^a)
                      z=z-g*f1/(f2-f3*f1/(2*f2)),
                      |z-c| >0.0001}
frm:HalSin[z^c+b]^aPx2 {z=pixel,a=real(p1),c=pixel,b=p2,g=p2+1:
                    c=z,
                    f1=sin((z^c+b)^a)
                    f2=c*z^(c-1)*a*(z^c+b)^(a-1)*cos((z^c+b)^a)
                    z=z-g*f1/(f2-f3*f1/(2*f2)),
                    |z-c| >0.0001}
frm:HalSin[z^c+b]^aPx3 {z=pixel,a=real(p1),c=imag(p1),b=pixel,g=p2+1:
                    c=z,
                    f1=sin((z^c+b)^a)
                    f2=c*z^(c-1)*a*(z^c+b)^(a-1)*cos((z^c+b)^a)
                    z=z-g*f1/(f2-f3*f1/(2*f2)),
                    |z-c| >0.0001}
frm:HalSin[z^c+b]^aPx4  {z=pixel,a=pixel,c=pixel,b=pixel,g=p2+1:
                           c=z,
                           f1=sin((z^c+b)^a)
                           f2=c*z^(c-1)*a*(z^c+b)^(a-1)*cos((z^c+b)^a)
                           z=z-g*f1/(f2-f3*f1/(2*f2)),
                           |z-c| >0.0001}
frm:Peter_2Halz^aSin { z=pixel,a=p1,g=p2+1:
                   c=z,
                   f1=z^a*sin(z)+p2
                   f2=a*z^(a-1)*sin(z)+z^a*cos(z)
                   z=z-g*f1/(f2-f3*f1/(2*f2)),
                   |z-c| >0.000001}
frm:Peter_2Halz^aTan { z=pixel,a=p1,g=p2+1:
                   c=z,
                   f1=z^a*tan(z)+p2
                   f2=a*z^(a-1)*sin(z)+z^a*(tan(z)*tan(z)+1)
                   z=z-g*f1/(f2-f3*f1/(2*f2))
                   |z-c| >0.000001}
frm:Peter_2Halz^aLog { z=pixel,a=p1,g=p2+1:
                   c=z,
                   f1=z^a*log(z)+p2
                   f2=a*z^(a-1)*log(z)+z^a/z
                   z=z-g*f1/(f2-f3*f1/(2*f2))
                   |z-c| >0.000001}
frm:Peter_2HalSinLog { z=pixel,g=p2+1:
                   c=z,
                   f1=sin(z)*log(z)+p1
                   f2=sin(z)/z+cos(z)*log(z)
                   z=z-g*f1/(f2-f3*f1/(2*f2))
                   |z-c| >0.000001}
frm:Peter_2HalTanLog { z=pixel,g=p2+1:
                   c=z,
                   f1=log(z)*tan(z)+p1
                   f2=tan(z)/z+log(z)*(tan(z)*tan(z)+1)
                   z=z-g*f1/(f2-f3*f1/(2*f2))
                   |z-c| >0.000001}
frm:Peter_2Halz^aSin2{ z=pixel,a=pixel,g=p2+1:
                   c=z,
                   f1=z^a*sin(z)+p2
                   f2=a*z^(a-1)*sin(z)+z^a*cos(z)
                   z=z-g*f1/(f2-f3*f1/(2*f2))
                   |z-c| >0.000001}
frm:Peter_2Halz^aSin7{ z=pixel,a=pixel,g=p2+1:
                   c=z,
                   z=z-(z^a*sin(z)+p2)/(a*z^(a-1)*sin(z)+z^a*cos(z))
                   |z-c| >0.000001}
frm:Peter_2Halz^aTan2{ z=pixel,a=pixel,g=p2+1:
                   c=z,
                   f1=z^a*tan(z)+p2
                   f2=a*z^(a-1)*sin(z)+z^a*(tan(z)*tan(z)+1)
                   z=z-g*f1/(f2-f3*f1/(2*f2))
                   |z-c| >0.000001}
frm:Peter_2Halz^aLog2{ z=pixel,a=pixel,g=p2+1:
                   c=z,
                   f1=z^a*log(z)+p2
                   f2=a*z^(a-1)*log(z)+z^a/z
                   z=z-g*f1/(f2-f3*f1/(2*f2))
                   |z-c| >0.000001}
frm:Peter_2Halz^aSin3{ z=pixel,a=p1,g=p2+1:
                   c=z,
                   f1=z^a*sin(z)+pixel
                   f2=a*z^(a-1)*sin(z)+z^a*cos(z)
                   z=z-g*f1/(f2-f3*f1/(2*f2))
                   |z-c| >0.000001}
frm:Peter_2Halz^aTan3{ z=pixel,a=p1,g=p2+1:
                   c=z,
                   f1=z^a*tan(z)+pixel
                   f2=a*z^(a-1)*sin(z)+z^a*(tan(z)*tan(z)+1)
                   z=z-g*f1/(f2-f3*f1/(2*f2))
                   |z-c| >0.000001}
frm:Peter_2Halz^aLog3{ z=pixel,a=p1,g=p2+1:
                   c=z,
                   f1=z^a*log(z)+pixel
                   f2=a*z^(a-1)*log(z)+z^a/z
                   z=z-g*f1/(f2-f3*f1/(2*f2))
                   |z-c| >0.000001}
frm:PolyTestI{ z=pixel,r=p1:
           c=z,
           f1=z^r-1
           f2=r*z^(r-1)
           f3=r*(r-1)*z^(r-2)
           z=z-(p2+1)*f1/(f2-(f3*f1/(2*f2))),
           |z-c| >0.000001}
frm:PolyTestII{ z=pixel,r=p1:
            c=z,
            f1=sin(z)
            f2=cos(z)
            f3=-sin(z)
            z=z-(p2+1)*f1/(f2-(f3*f1/(2*f2))),
            |z-c| >0.000001}
frm:PolyTestIII{ z=pixel,r=p1:
           c=z,
           f1=z^(r+1)-z
           f2=(r+1)*z^r-1
           f3=r*(r+1)*z^(r-1)
           z=z-(p2+1)*f1/(f2-(f3*f1/(2*f2))),
           |z-c| >0.000001}
