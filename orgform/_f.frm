

F'ABSJulia (ORIGIN) {; Ramsay Burt
                     ; c = p1 added by Jon Horner for clarity
  z = pixel, c = p1 :
  z = ABS(z * z) + c
  |z| <=4
  ;SOURCE: burt.frm
}


F'ABSJuliaBio (ORIGIN) {; Ramsay Burt - alternative bailout by Jon Horner
  z = pixel, c = p1 :
  z = ABS(fn1(z)) + c
  |real(z)| <=4 ||  |imag(z)| <= 4 
  ;SOURCE: burt.frm
}


F'ABSJuliaFn (ORIGIN) {; Ramsay Burt - generalized by Jon Horner
  z = pixel, c = p1 :
  z = ABS(fn1(z)) + c
  |z| <= 4
  ;SOURCE: burt.frm
}


F'ABSMandel {; From ABSMandelbrot - more normal form - Jon Horner
             ; this fractal is not naturally symmetrical
  z = (0,0), c = pixel :
  z = ABS(z * z) + c
  |z|<= 4
  ;SOURCE: burt.frm
}


F'ABSMandelBio {; Ramsay Burt - alternative bailout by Jon Horner
                ; use float=yes
  z = (0,0), c = pixel :
  z = ABS(fn1(z)) + c
  |real(z)| <=4  ||  |imag(z)| <= 4 
  ;SOURCE: burt.frm
}


F'ABSMandelFn {; From ABSMandelbrot - more normal form - Jon Horner
               ; this fractal is not naturally symmetrical
  z = (0,0), c = pixel :
  z = ABS(fn1(z)) + c
  |z|<= 4
  ;SOURCE: burt.frm
}


F'Cetj1 {; fn1 added by Jon Horner
  z=pixel, c=p1:
  z=fn1(z)+c
  c=c+p2
  |z| <= 4
  ;SOURCE: explode.frm
}


F'Cetjc {; fn1 added by Jon Horner
  z=pixel, c=p1:
  z=fn1(z)+c
  c=c+p2*c
  |z| <= 4
  ;SOURCE: explode.frm
}


F'Cetjfnc {; fn2 added by Jon Horner
  z=pixel, c=p1:
  z=fn2(z)+c
  c=c+p2*fn1(c)
  |z| <= 4
  ;SOURCE: explode.frm
}


F'Cetjoc {; fn1 added by Jon Horner
  z=pixel, c=p1:
  z=fn1(z)+c
  c=c+p2/c
  |z| <= 4
  ;SOURCE: explode.frm
}


F'Cetjoz {; fn1 added by Jon Horner
  z=pixel, c=p1:
  z=fn1(z)+c
  c=c+p2/z
  |z| <= 4
  ;SOURCE: explode.frm
}


F'Cetjz {; fn1 added by Jon Horner
  z=pixel, c=p1:
  z=fn1(z)+c
  c=c+p2*z
  |z| <= 4
  ;SOURCE: explode.frm
}


F'Cetm1 {; fn1 added by Jon Horner
  z=0, c=pixel:
  z=fn1(z)+c
  c=c+p1
  |z| <= 4
  ;SOURCE: explode.frm
}


F'Cetmc {; fn1 added by Jon Horner
  z=0, c=pixel:
  z=fn1(z)+c
  c=c+p1*c
  |z| <= 4
  ;SOURCE: explode.frm
}


F'Cetmfnc {; fn2 added by Jon Horner
  z=0, c=pixel:
  z=fn2(z)+c
  c=c+p1*fn1(c)
  |z| <= 4
  ;SOURCE: explode.frm
}


F'Cetmfnz {; fn2 added by Jon Horner
  z=0, c=pixel:
  z=fn2(z)+c
  c=c+p1*fn1(z)
  |z| <= 4
  ;SOURCE: explode.frm
}


F'Cetmoc {; fn1 added by Jon Horner
  z=0, c=pixel:
  z=fn1(z)+c
  c=c+p1/c
  |z| <= 4
  ;SOURCE: explode.frm
}


F'Cetmoz {; fn1 added by Jon Horner
  z=0, c=pixel:
  z=sqr(z)+c
  c=c+p1/z
  |z| <= 4
  ;SOURCE: explode.frm
}


F'Cetmz {; fn1 added by Jon Horner
  z=0, c=pixel:
  z=fn1(z)+c
  c=c+p1*z
  |z| <= 4
  ;SOURCE: explode.frm
}


F'EXOTICa {; based on EXOTIC by Paul Dickins
           ; generalized by Jon Horner
  z = pixel, z = fn1(z)^fn2(z)-abs(pixel):
  z = z + pixel
  z = fn1(z)^fn2(z)-abs(pixel)
  |z| <= p2 +4
  ;SOURCE: paul.frm
}


F'EXOTICb {; based on EXOTIC by Paul Dickins
           ; simplified by Jon Horner
  z = pixel:
  z = z + pixel
  z = fn1(z) ^ fn2(z) - abs(pixel)
  |z| <= p2+4
  ;SOURCE: paul.frm
}


F'EXOTICc {; based on EXOTIC by Paul Dickins
           ; variation by Jon Horner
  z = pixel:
  z = z + pixel
  z = fn1(z) ^ fn2(z) - pixel
  |z| <= p2+4
  ;SOURCE: paul.frm
}


F'EXOTICd {; based on EXOTIC by Paul Dickins
           ; variation by Jon Horner
  z = pixel:
  z = z + pixel
  z = fn1(z) ^ fn2(z) - fn3(pixel)
  |z| <= p2+4
  ;SOURCE: paul.frm
}


F'EXOTICe {; based on EXOTIC by Paul Dickins
           ; variation by Jon Horner
  z = pixel, z = fn1(z)^fn2(z) - pixel :
  z = z + pixel
  z = fn3(z)^fn4(z) - pixel
  |z| <= p2 +4
  ;SOURCE: paul.frm
}


F'EXOTICf {; based on EXOTIC by Paul Dickins
           ; variation by Jon Horner
  z = pixel, z = fn1(z)^fn2(z) + pixel :
           ;  z = z + pixel,
  z = fn3(z)^fn4(z) + pixel
  |z| <= p2 +4
  ;SOURCE: paul.frm
}


F'EXOTICg {; based on EXOTIC by Paul Dickins
           ; variation by Jon Horner
  z = abs(pixel):
  z = z + pixel
  z = fn1(z) ^ fn2(z) - abs(pixel)
  |z| <= p2+4
  ;SOURCE: paul.frm
}


F'FGZ-Alt (Origin) {; Michael G. Wareman
                    ; Julia-form of FGZ-Alt by Jon Horner
                    ; try p1=(0.5,0.67)
  z = pixel, c = p1 :
  z = z * z + c
  z = (c * z * z) / (z + c) + c
  |z| <= 4
  ;SOURCE: fgz.frm
}


F'FGZ-color-test {; Michael G. Wareman
                  ; use float=yes, try p1=3
                  ; generalized by Jon Horner
                  ; iteration loops reversed - JH
  z = c = pixel:
                  ;  z = (3 * z * z) / (z + 3) + c  ; original
  z = (p1 * z * z) / (z + p1) + c                   ; alternative by JH
  z = z * z + c
  |real(z)| <= 50
  |imag(z)| <= 50
  ;SOURCE: fgz.frm
}


F'FunctionIke {; generalized by Jon Horner
               ; from RecipIke in REB001.FRM
               ; - by Ron Barnett 70153,1233
               ; Edited 5/96 for ORGFORM by G. Martin
               ; Colon in line 3 changed to a semicolon
  z = pixel:
  z = fn1(z*z*z + (p1-1) * z - p1)
  |z| <= 4
  ;SOURCE: ikenaga.frm
}


F'Icon-Even {; Generalization by Jon Horner - 100112,1700
             ; of formula by Ramiro Perez (rperez@ns.pa)
             ; EVEN degrees produce an ODD no. of features
   ; real(p3) varies the degree ; for originals set fn1=conj, fn2=ident
  z1=fn2(pixel), z=0, l=real(p1), a=imag(p1), b=real(p2), g=imag(p2):
  zm = z1 ^ real(p3)
  fac= l + a * |z1| + b * real(z1*zm)
  z1 = fac * z1 + g * fn1(zm)
  z = z + (z1-pixel)
  |z1| <= 200
  ;SOURCE: jonsicon.frm
}


F'Icon-Odd (XYAXIS) {; Generalization by Jon Horner - 100112,1700
                     ; of formula by Ramiro Perez (rperez@ns.pa)
                     ; ODD degrees produce an EVEN no. of features
                     ; real(p3) varies the degree 
                     ; for originals set fn1=conj, fn2=ident
  z1=fn2(pixel), z=0, l=real(p1), a=imag(p1), b=real(p2), g=imag(p2):
  zm = z1 ^ real(p3)
  fac= l + a * |z1| + b * real(z1*zm)
  z1 = fac * z1 + g * fn1(zm)
  z = z + (z1-pixel)
  |z1| <= 200
  ;SOURCE: jonsicon.frm
}


F'J-SetInNewton {; Jon Horner - FRAC'Cetera - 100112,1700
                 ; use float=yes, fn1=ident
  z = fn1(pixel), c = p1, cminusone = c-1:
  oldz = z
  nm = 3*c-2*z*cminusone
  dn = 3*(3*z*z+cminusone)
  z = nm/dn+2*z/3
  |(z-oldz)| >= |0.01|
  ;SOURCE: mandnewt.frm
}


F'J-SetInNewtonC {; Jon Horner, from Chuck Ebbert 76306,1226
                  ; use float=yes, periodicity=no
                  ; (3 <= p1 <= ?) and (1e-30 < p2 < .01)
  z=fn1(pixel), c=p3, cm1=c-1, cm1x2=cm1*2, twoop1=2/p1, p1xc=c*real(p1):
  z = (p1xc - z*cm1x2 )/( (sqr(z)*3 + cm1 ) * real(p1) ) + z*real(twoop1)
  abs(|z| - real(lastsqr) ) >= p2
  ;SOURCE: mandnewt.frm
}


F'Liar1 {; Generalization by Jon Horner of Chuck Ebbert formula.
         ; X: X is as true as Y
         ; Y: Y is as true as X is false
         ; Calculate new x and y values simultaneously.
         ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = pixel:
  z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z) ) )
  fn1(abs(z))<p1
  ;SOURCE: fractint.frm
}


F'Liar1A {; Generalization by Jon Horner of Chuck Ebbert formula.
          ; X: X is as true as Y
          ; Y: Y is as true as X is false
          ; Calculate new x and y values simultaneously.
          ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = fn1(pixel):
  z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z) ) )
  |z| <= p1 
  ;SOURCE: liar.frm
}


F'Liar1C {; Generalization by Jon Horner of Chuck Ebbert formula.
          ; X: X is as true as Y
          ; Y: Y is as true as X is false
          ; Calculate new x and y values simultaneously.
          ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = fn1(pixel):
  z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z) ) )
  fn2(abs(z))<p1 
  ;SOURCE: liar.frm
}


F'Liar1D {; Generalization by Jon Horner of Chuck Ebbert formula.
          ; X: X is as true as Y
          ; Y: Y is as true as X is false
          ; Calculate new x and y values simultaneously.
          ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = fn1(pixel):
  z = p1 - abs(imag(z)-real(z) ) + flip(p2 - abs(1-real(z)-imag(z) ) )
  |z| <1 
  ;SOURCE: liar.frm
}


F'Liar2 {; Generalization by Jo. Horner of Chuck Ebert Formula
         ; x(n+1) = 1 - abs(y(n)-x(n! )
         ; y(n+1) = 1 - abs((1-x(n+1) )-y(n) )
  z = fn1(pixel):
  x = 1 - abs(imag(z)-real(z))
  z = flip(1 - abs(1-real(x)-imag(z) ) ) + real(x)
  |z| <= p1 
  ;SOURCE: form2.frm
}


F'Liar2A {; by Chuck Ebbert - 76302,1226
          ; generalization by Jon Horner 100112,1700 (FRAC'Cetera)
          ; Same as Liar1 but uses sequential reasoning, calculating
          ; new y value using new x value.
          ; x(n+1) = 1 - abs(y(n)-x(n) )
          ; y(n+1) = 1 - abs((1-x(n+1) )-y(n) )
  z = fn1(pixel):
  x = p1 - abs(imag(z)-real(z))
  z = fn2(p1 - abs(p1-real(x)-imag(z) ) ) + real(x)
  |z| <= p2 
  ;SOURCE: nuliar.frm
}


F'Liar3 {; by Chuck Ebbert - 76302,1226
         ; generalization by Jon Horner 100112,1700 (FRAC'Cetera)
         ; X: X is true to P1 times the extent that Y is true
         ; Y: Y is true to the extent that X is false.
         ; Sequential reasoning.  P1 usually 0 to 1.  
         ; P1=1 is Liar2 formula.
         ; x(n+1) = 1 - abs(p1*y(n)-x(n) )
         ; y(n+1) = 1 - abs((1-x(n+1) )-y(n) )
  z = fn1(pixel):
  x = 1 - abs(imag(z) * p1 - real(z) )
  z = fn2(1 - abs(1-real(x)-imag(z) ) ) + real(x)
  |z| <= p2 
  ;SOURCE: nuliar.frm
}


F'Liar4C {; Generalization by Jon Horner of Chuck Ebbert formula.
          ; X: X is as true as (p1+1) times Y
          ; Y: Y is as true as X is false
          ; Calculate new x and y values simultaneously.
          ; Real part of p1 changes probability.  Use floating point.
          ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = fn1(pixel), p = p1 + 1, pp = p2 + 1:
  z = 1-abs(imag(z)*p-real(z))+flip(1-abs(1-real(z)-imag(z)))
  |imag(z)| <= pp || |real(z)| <= pp 
  ;SOURCE: liar.frm
}


F'M-SetInNewton (XAXIS) {; Jon Horner - FRAC'Cetera - 100112,1700
   ; use float=yes, fn1=ident to create CAL 4.0 original
  z = 0, c = fn1(pixel), cminusone = c-1:
  oldz = z
  nm = 3*c-2*z*cminusone
  dn = 3*(3*z*z+cminusone)
  z = nm/dn+2*z/3
  |(z-oldz)| >= |0.01|
  ;SOURCE: mandnewt.frm
}


F'M-SetInNewton1 (XAXIS) {; use float=yes, p1 >=3
  z = 0,  c = fn1(pixel),  cminusone = c-1:
  oldz = z
  nm = p1 * c - 2 * z * cminusone
  dn = p1 * (3 * z * z + cminusone)
  z = nm/dn + 2 * z / p1
  |0.01|  <= |(z - oldz)|
  ;SOURCE: mandnewt.frm
}


F'M-SetInNewton2 (XAXIS) {; use float = yes, p1 >= 3
  z = 0,  c = fn1(pixel),  cminusone = c-p2 :
  oldz = z
  nm = p1*c-2*z*cminusone
  dn = p1*(3*z*z+cminusone)
  z = nm/dn+2*z/p1
  |0.01| <= |(z - oldz)|
  ;SOURCE: mandnewt.frm
}


F'M-SetInNewtonA (XAXIS) {; use float=yes
                          ; jon horner 100112,1700, 12 feb 93
  z = 0,  c = fn1(pixel),  cminusone = c-1:
  oldz = z, nm = p1*c-2*z*cminusone, dn = p1*(3*z*z+cminusone)
  z = nm/dn+2*z/p1
  |(z-oldz)|>=|0.01|
  ;SOURCE: fractint.frm
}


F'M-SetInNewtonB (XAXIS) {; use float=yes, periodicity=no
                          ; set p1 >= 3, 1e-30 < p2 < .01
  z=0, c=fn1(pixel), cm1=c-1, cm1x2=cm1*2, twoop1=2/p1, p1xc=c*real(p1):
  oldz = z
  z= (p1xc - z*cm1x2 )/( (sqr(z)*3 + cm1 ) * real(p1) ) + z*real(twoop1)
  |z - oldz| >= p2
  ;SOURCE: mandnewt.frm
}


F'M-SetInNewtonC (XAXIS) {; same as F'M-SetInNewtonB except for bailout
                          ; use float=yes, periodicity=no
                          ; (3 <= p1 <= ?) and (1e-30 < p2 < .01)
  z=0, c=fn1(pixel), cm1=c-1, cm1x2=cm1*2, twoop1=2/p1, p1xc=c*real(p1):
  z = (p1xc - z*cm1x2 )/( (sqr(z)*3 + cm1 ) * real(p1) ) + z*real(twoop1)
  abs(|z| - real(lastsqr) ) >= p2
  ;SOURCE: fractint.frm
}


F'NuLiar1A {; by Chuck Ebbert - 76302,1226
            ; generalized by Jon Horner 100112,1700 (FRAC'Cetera)
   ; LIAR1 with alternative init. conditions and fn2 replacing flip
   ; X: X is as true as Y
   ; Y: Y is as true as X is false
   ; Calculate new x and y values simultaneously.
   ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = fn1(pixel):
  z = 1 - abs(imag(z)-real(z)) + fn2(1 - abs(1-real(z)-imag(z)))
  |z| <= p1
  ;SOURCE: nuliar.frm
}


F'NuLiar1E {; by Chuck Ebbert - 76302,1226
            ; generalized by Jon Horner 100112,1700 (FRAC'Cetera)
            ; LIAR1 with alternative initial conditions/bailout
            ; X: X is as true as Y
            ; Y: Y is as true as X is false
            ; Calculate new x and y values simultaneously.
            ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = fn1(pixel):
  z = p1 - abs(imag(z)-real(z) ) + fn2(p1 - abs(p1-real(z)-imag(z) ) )
  fn3(abs(z)) <= p2
  ;SOURCE: nuliar.frm
}


F'ULI_7 {; by Jon Horner - 100112,1700 - FRAC'Cetera
  z = pixel :
  z = fn1 (p1+z) * fn2(p2-z)
  |z| <= 4
  ;SOURCE: uli.frm
}


F'ULI_8 {; by Jon Horner - 100112,1700 - FRAC'Cetera
  z = pixel :
  z = fn1 (p1+z) + fn2(p2-z)
  |z| <= 16
  ;SOURCE: uli.frm
}


F'ULI_9 {; by Jon Horner - 100112,1700 - FRAC'Cetera
  z = pixel :
  z = fn1 (p1+z) * fn2(p2-z)
  |z| <= 16
  ;SOURCE: uli.frm
}


f1 {; Peter Anders anders@physik.hu-berlin.de 
  c=pixel, n=0, z=imag(p1):
  n=n+1
  z=(fn1(c))^n*z
  abs(fn2(z)) <= real(p1) 
  ;SOURCE: anders.frm
}


f2_J {
  a0=0.01000, d0=0.16000
  a1=0.20000, b1=-0.26000, c1=0.23000, d1=0.22000
  a2=-0.15000, b2=0.28000, c2=0.26000, d2=0.24000
  a3=0.85000, d3=0.85000
  al0=0.00160
  al1=0.10380, k1=-0.13000, l1=-0.10000
  al2=-0.10880, k2=0.14000, l2=0.07500
  al3=0.72250, l3=-0.59500
  z=pixel:
  x=real(z)
  y=imag(z)
  o0=(d0*x)/al0+flip((a0*y)/al0)
  op0=|o0-p2|
  o1=(d1*x-b1*y+k1)/al1+flip((-c1*x+a1*y+l1)/al1)
  op1=|o1-p2|
  o2=(d2*x-b2*y+k2)/al2+flip((-c2*x+a2*y+l2)/al2)
  op2=|o2-p2|
  o3=(d3*x)/al3+flip((a3*y+l3)/al3)
  op3=|o3-p2|
  IF (op0<op1 && op0<op2 && op0<op3)
    z=o0
  ELSEIF (op1<op0 && op1<op2 && op1<op3)
    z=o1
  ELSEIF (op2<op1 && op2<op0 && op2<op3)
    z=o2
  ELSEIF (op3<op0 && op3<op1 && op3<op2)
    z=o3
  ENDIF
  |z|<=p1
  ;SOURCE: 97msg.frm
}


f3 {; Peter Anders anders@physik.hu-berlin.de 
  x=real(p2), y=imag(p2), c=pixel, n=0, z=1:
  n=n+1
  z=(c^x+y)^n*z
  abs(fn2(z)) <= real(p1) 
  ;SOURCE: anders.frm
}


f8 {; Peter Anders anders@physik.hu-berlin.de 
  x=real(p2), y=imag(p2), c=pixel, n=0, z=0:
  n=n+1
  z=(c^x+y)^n+z
  |fn2(z)| <= real(p1) 
  ;SOURCE: anders.frm
}


F_TEXT_A2Z {; Les St Clair 1996
   ; Created using "FracText" (alpha-1) by Jan Maarten van der Valk
   ; formulas "ABCDEFG","HIJKLMN","OPQRSTU" & "VWXYZ" were amalgamated
   ; suggested default values for fn1|fn2|fn3 are exp|ident|ident
  z = fn1(log(pixel-.025))*2, x=real(z), y=imag(z) 
  xa=3.00000*x, xc=1.00000*x, xk=1.50000*x, xm=2.50000*x, xn=2.50000*x 
  xq=1.40000*x, xr=2.00000*x, xv=3.50000*x, xw=4.00000*x, xx=2.00000*x 
  xy=2.50000*x, xz=1.50000*x, xsl=4.00000*x, x1=1.50000*x
  chra1 = (y>(xa+11.16754)||y>(-xa+-7.20000))||(y<1.70000&&y>1.50000)
  chra1 = chra1&&(y<(xa+11.80000)&&y<(-xa+-6.56754))
  chrb2 = y<1.50000||(y<1.90000&&y>1.70000)||y>2.10000||x<-2.22251
  chrb2 = chrb2&&((x>-2.42251)&&(x<-2.02251))
  chrb2 = chrb2 || ((cabs(sqrt(|z+(2.02251,-1.60000)|)\
                     -0.20000)<0.10000)&&(x>-2.02251))
  chrb2 = chrb2 || ((cabs(sqrt(|z+(2.02251,-2.00000)|)\
                     -0.20000)<0.10000)&&(x>-2.02251))
  chrc3 = (cabs(sqrt(|z+(1.02251,-1.80000)|)\
           -0.40000)<0.10000)&&(y>xc+2.82251||y<-xc+0.77749)
  chrd4 = (y<1.50000)||(y>2.10000)
  chrd4 = ((x<-0.26896) || chrd4)&&((x>-0.46896)&&(x<-0.16896))
  chrd4 = chrd4 || ((cabs(sqrt(|z+(0.16896,-1.80000)|)\
                    -0.40000)<0.10000)&&(x>-0.16896))
  chre5 = (y<1.50000)||((y<1.90000)&&(y>1.70000))||(y>2.10000)
  chre5 = ((x<0.73104)||chre5)&&((x>0.53104)&&(x<1.13104))
  chrf6 = (y<1.90000&&y>1.70000)||(y>2.10000)
  chrf6 = ((x<1.53104)||chrf6)&&((x>1.33104)&&(x<1.93104))
  chrg7 = (cabs(sqrt(|z+(-2.63104,-1.80000)|)\
          -0.40000)<0.10000)&&(x<2.63104)
  chrg7 = chrg7||((cabs(sqrt(|z+(-2.63104,-1.80000)|)\
                -0.40000)<0.10000)&&(x>2.63104)&&(y<1.90000||y>2.00000))
  chrg7 = chrg7||(x>2.63104&&x<3.13104&&y<1.90000&&y>1.70000)
  chrh1 = ( (y<0.70000) && (y>0.50000))
  chrh1 = (x<-3.30000 || x>-2.90000 || chrh1)\ 
          && (x>-3.50000 && x<-2.70000)
  chri2 = x>-2.50000 && x<-2.30000
  chrj3 = (cabs(sqrt(|z+(1.80000,-0.40000)|)\
          -0.20000)<0.10000) && (y<0.35000)
  chrj3 = chrj3||(x>-1.70000&&y>0.35000)&&x<-1.50000
  chrk4 = (x<-1.10000)
  chrk4 = chrk4 || (y<(xk+2.38333)&&y>(xk+2.02278))
  chrk4 = chrk4 || (y>(-xk+-1.18333)&&y<(-xk+-0.82278)\ 
          && y<(xk+2.38333))&&x>-1.30000
  chrl5 = (x<-0.21519||y<0.30000)&&x>-0.41519&&x<0.18481
  chrm6 = (y>-xm+2.06204&&y<-xm+2.60055)
  chrm6 = chrm6||(y<xm+-1.19537&&y>xm+-1.73389)&&y>0.43333
  chrm6 = chrm6||(x>0.38481&&x<0.58481)||(x>0.93355&&x<1.13355)
  chrn7 = (x>1.33355&&x<1.53355)||(x>1.73355&&x<1.94896)
  chrn7 = chrn7 || (y>-xn+4.43389&&y<-xn+4.97240)
  chro1 = (cabs(sqrt(|z+(3.00000,0.60000)|)\
          -0.40000)<0.10000) && (x<-2.50000)
  chrp2 = (y<-0.50000&&y>-0.70000)||y>-0.30000||x<-2.10000
  chrp2 = chrp2&&((x>-2.30000) && (x<-1.90000))
  chrp2 = chrp2 || ((cabs(sqrt(|z+(1.90000,0.40000)|)\
                   -0.20000)<0.10000) && (x>-1.90000))
  chrq3 = (cabs(sqrt(|z+(0.90000,0.60000)|)\
          -0.40000)<0.10000) && (x<-0.40000)
  chrq3 = chrq3||(y>-xq+-2.00409&&y<-xq+-1.66000&&y<-0.74409)
  chrr4 = (y<-0.50000&&y>-0.70000)||y>-0.30000||x<0.00000
  chrr4 = chrr4&&((x>-0.20000) && (x<0.20000))
  chrr4 = chrr4 || ((cabs(sqrt(|z+(-0.20000,0.40000)|)\
                    -0.20000)<0.10000) && (x>0.20000))
  chrr4 = chrr4||(y<-0.60000&&y<-xr+-0.10000&&y>-xr+-0.54721)
  chrs5 = (cabs(sqrt(|z+(-1.00000,0.40000)|)\
           -0.20000)<0.10000)&&(x<1.00000||y>-0.40000)
  chrs5 = chrs5||((cabs(sqrt(|z+(-1.00000,0.80000)|)\
                    -0.20000)<0.10000)&&(x>1.00000||y<-0.80000))
  chrt6 = y>-0.30000&&x>1.50000&&x<2.10000
  chrt6 = chrt6||(x>1.70000&&x<1.90000)
  chru7 = (cabs(sqrt(|z+(-2.60000,0.80000)|)\
          -0.20000)<0.10000)&&(y<-0.85000)
  chru7 = chru7||(x>2.30000&&y>-0.85000&&x<2.50000)
  chru7 = chru7||(x>2.70000&&x<2.90000)
  chrv1 = y>-xv+-13.55000&&y<-xv+-12.82199
  chrv1 = chrv1||y<xv+8.95000&&y>xv+8.22199
  chrw2 = y<xw+6.78227&&y>xw+5.95765
  chrw2 = chrw2||(y>-xw+-10.04894&&y<-xw+-9.22432)&&y<-1.63333
  chrw2 = chrw2||(y>-xw+-11.38227&&y<-xw+-10.55765)
  chrw2 = chrw2||(y<xw+5.44894&&y>xw+4.62432)
  chrx3 = (y<xx+0.26216&&y>xx+-0.18505)\
           ||(y>-xx+-3.86216&&y<-xx+-3.41495)
  chry4 = (y<xy+-1.40632&&y>xy+-1.94483)\
          ||(y>-xy+-2.19368&&y<-xy+-1.65516)&&y>xy+-1.94483
  chrz5 = (y<xz+-2.78690&&y>xz+-3.14746)\
           ||y>-1.50000||y<-2.10000&&x>0.45793&&x<1.09830
  test1 = 1 - fn2(real(chra1||chrb2||chrc3||chrd4||chre5||chrf6||chrg7)\
                 *real(y>1.30000)*real(y<2.30000))
  test2 = 1 - fn2(real(chrh1||chri2||chrj3||chrk4||chrl5||chrm6||chrn7)\
                 *real(y>0.10000)*real(y<1.10000))
  test3 = 1 - fn2(real(chro1||chrp2||chrq3||chrr4||chrs5||chrt6||chru7)\
                 *real(y>-1.10000)*real(y<-0.10000))
  test4 = 1 - fn2(real(chrv1||chrw2||chrx3||chry4||chrz5)\
                 *real(y>-2.30000)*real(y<-1.30000))
  z = 1+(0,-.65)/fn3(pixel+(0.0,.75)) :
  z2 = z*z, z4 = z2*z2, n = z4*z2-1, z = z-n/(6*z4*z)
  (|n|>=.0001) && test1 && test2 && test3 && test4
  ;SOURCE: 96_msg_2.frm
}


F_turtle (XAXIS) {; R.L.Bagula
                  ; Classical fractal showing LastSqr speedup
  z = Pixel, z = Sqr(z+1/z):  ; Start with z**2 to initialize LastSqr
  z = z + Pixel
  z = Sqr(z)
  LastSqr <= 16         ; Use LastSqr instead of recalculating
  ;SOURCE: rbagula.frm
}


F_turtle2 (XAXIS) {; R.L.Bagula
                   ; Classical fractal showing LastSqr speedup
  z = Pixel, z = Sqr(z+1/z):  ; Start with z**2 to initialize LastSqr
  z = z + Pixel
  z=sqr(z+1/z)
  LastSqr <= 16         ; Use LastSqr instead of recalculating
  ;SOURCE: rbagula.frm
}


fastmand {; Copyright (c) Paul W. Carlson, 1997
    ; This formula performs NO iterations if the point is
    ; in the large cardoid (the "lake") or the large
    ; period-2 bulb.
    ; float=y must be used.
    ;
    z = 0
    c = pixel
    pi3 = pi / 3
    bailout = 0:
    ;
    ;*****************************************************
    ; Check if point can be in either circle or cardoid
    ;*****************************************************
    aic = abs(imag(c))
    IF (aic < 0.6495190528)
        rc = real(c)
        ;*************************************************
        ; Check if point is in the circle
        ;*************************************************
        IF (aic < 0.25)
            delta = sqrt(0.0625 - aic * aic)
            IF ((rc > (-1 - delta)) && (rc < (-1 + delta)))
                bailout = 1
            ENDIF
        ENDIF
        ;*************************************************
        ; Check if point is in the cardoid
        ;*************************************************
        IF (rc > -0.75 && rc < 0.375)
            IF (rc > 0.25 && aic < 0.2165063508)
                t = abs(acos(0.5 * (1 + sqrt(3 - 8 * rc))))
            ELSE
                t = abs(acos(0.5 * (1 - sqrt(3 - 8 * rc))))
            ENDIF
            card_i  = 0.5 * sin(t) * (1.0 - cos(t))
            IF ((t > pi3 && aic < card_i) || (t <= pi3 && aic > card_i))
                bailout = 1
            ENDIF
        ENDIF
    ENDIF
    ;*****************************************************
    ; If point is in neither we have to iterate
    ;*****************************************************
    IF (bailout == 0)
        z = z * z + c
    ENDIF
    (bailout == 0) && |z| < 4
  ;SOURCE: 98msg.frm
}


FatHeart (xaxis) {; M.L. Newsted Jr.
  z = pixel / (pixel-1)
  c = pixel:
  z = z*z + c
  |z| < 4
  ;SOURCE: 97msg.frm
}


fatlog {; by Jay Hill, 1998
  c=log(pixel), z=0:
  z=sqr(z)+c
  |z|<=100
  ;SOURCE: 98msg.frm
}


Fatso {
  z=x=1/pixel, c= fn1 (z):
  z = (x^3)-(c^3)
  x=fn2(z)
  |z| <=3
  ;SOURCE: fractint.frm
}


faulty1 {; based on formulas by Brad Beacham and Gordon Lamb  
  z=real(pixel)+flip(imag(pixel))
  c=real(pixel)+flip(imag(pixel))
  count = 1, shift = p1:
  a = (z^2.71828182845905) * (count <= shift)
  b = (z*z*z) * (shift < count)
  count = count + 1
  z =  a + b + c
  |z| < 64  
  ;SOURCE: faulty.frm
}


faulty2 {; based on formulas by Brad Beacham and Gordon Lamb  
  z=real(pixel)+flip(imag(pixel)*p1)
  c=p1*real(pixel)+flip(imag(pixel))
  count = 1, shift = p2:
  a = (z^2.718281845905) * (count <= shift)
  b = (z*z*z) * (shift < count)
  count = count + 1
  z =  a + b + c
  |z| < 64  
  ;SOURCE: faulty.frm
}


faulty3 {                                          
  z = pixel/p1, c = pixel:
  z = z^2.71828182845905 + c   
  |z| <= 4
  ;SOURCE: faulty.frm
}


faulty4 {  
  z = pixel + p1, c = pixel:
  z = z^2.71828182854905 + sqr(pixel) + c
  |z| < 16
  ;SOURCE: faulty.frm
}


faulty5 {; Eliminated variable "e' - now a predefined variable
  z = pixel + p1, c = pixel: 
  z = z*z^e / (z^e + c) + c
  |z| <= 64
  ;SOURCE: faulty.frm
}


FB_CNewt_Mset {; Copyright (c) Paul W. Carlson, 1998
    ; p1 = radius of center of ring (0.01 to 10)
    ; p2 = one half thickness of ring (0.01 to p1)
  c = pixel
  z = iter = bailout = 0
  cm1 = c - 1, tcm1 = cm1 + cm1
  w = sqrt((1 - c) / 6)
  d0 = p1 + p2
  d1 = 0.382683432365 * p1
  d2 = 0.923879532511 * p1
  dsqd = d0 * d0 + p1 * p1 - (d0 + d0) * d2
  :
  w2 = w * w
  k = (w2 * w2 + cm1 * w2 - c) / (4 * w * w2 + tcm1 * w)
  w = w - k
    ;
  IF ((abs(cabs(w) - p1) < p2) && iter > 0)
    bailout = 1
    wr = real(w), wi = imag(w)
    awr = abs(wr), awi = abs(wi)
    IF (awr >= awi)
      dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
      adjust = 1
    ELSE
      dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
      adjust = 0
    ENDIF
    IF (wr >= 0 && wi >= 0)
      range_num = 1 - adjust
    ELSEIF (wr < 0 && wi >= 0)
      range_num = 2 + adjust
    ELSEIF (wr < 0 && wi < 0)
      range_num = 5 - adjust
    ELSE
      range_num = 6 + adjust
    ENDIF
    ratio = sqrt(dist / dsqd)
    z = 29 * ratio + range_num * 30 + 1
  ELSEIF (|k| < 0.000001)
    bailout = 1
    z = 252
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0
  ;SOURCE: carlson2.frm
}


FB_EqnMoP {; Copyright (c) Paul W. Carlson, 1998
    ; p1 = radius of center of ring (0.01 to 10)
    ; p2 = one half thickness of ring (0.01 to p1)
    ;
  c = pixel
  w = z = iter = bailout = 0
  d0 = p1 + p2
  d1 = 0.382683432365 * p1
  d2 = 0.923879532511 * p1
  dsqd = d0 * d0 + p1 * p1 - (d0 + d0) * d2
  :
  w2 = w * w
  w = c * (1 - w2) / (1 + w2)
    ;
  IF ((abs(cabs(w) - p1) < p2) && iter > 0)
    bailout = 1
    wr = real(w), wi = imag(w)
    awr = abs(wr), awi = abs(wi)
    IF (awr >= awi)
      dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
      adjust = 1
    ELSE
      dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
      adjust = 0
    ENDIF
    IF (wr >= 0 && wi >= 0)
      range_num = 1 - adjust
    ELSEIF (wr < 0 && wi >= 0)
      range_num = 2 + adjust
    ELSEIF (wr < 0 && wi < 0)
      range_num = 5 - adjust
    ELSE
      range_num = 6 + adjust
    ENDIF
    ratio = sqrt(dist / dsqd)
    z = 29 * ratio + range_num * 30 + 1
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < 1000
  ;SOURCE: 98msg.frm
}


FB_Halley_M4 {; Copyright (c) Paul W. Carlson, 1998
    ; Halley solution of w^4 - w - c = 0
    ; Always use float=y, outside=summ
    ; p1 = relaxation factor
    ; p2 = radius of center of ring (0.01 to 10)
    ; p3 = one half thickness of ring (0.01 to p2)
  c = pixel
  w = z = iter = bailout = 0
  d0 = p2 + p3
  d1 = 0.382683432365 * p2
  d2 = 0.923879532511 * p2
  dsqd = d0 * d0 + p2 * p2 - (d0 + d0) * d2
  :
  w2 = w * w, fnc = w2 * w2 - w - c, der = 4 * w * w2 - 1
  k = p1 * fnc / (der - 12 * w2 * fnc / (der + der))
  w = w - k
    ;
  IF ((abs(cabs(w) - p2) < p3) && iter > 0)
    bailout = 1
    wr = real(w), wi = imag(w)
    awr = abs(wr), awi = abs(wi)
    IF (awr >= awi)
      dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
      adjust = 1
    ELSE
      dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
      adjust = 0
    ENDIF
    IF (wr >= 0 && wi >= 0)
      range_num = 1 - adjust
    ELSEIF (wr < 0 && wi >= 0)
      range_num = 2 + adjust
    ELSEIF (wr < 0 && wi < 0)
      range_num = 5 - adjust
    ELSE
      range_num = 6 + adjust
    ENDIF
    ratio = sqrt(dist / dsqd)
    z = 29 * ratio + range_num * 30 + 1
  ELSEIF (|k| < 0.000001)
    bailout = 1
    z = 252
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0
  ;SOURCE: 98msg.frm
}


FB_Halley_M42 {; Copyright (c) Paul W. Carlson, 1998
    ; Always use float=y, outside=summ
    ; p1 = relaxation factor
    ; p2 = radius of center of ring (0.01 to 10)
    ; p3 = one half thickness of ring (0.01 to p2)
  c = pixel, c4 = c*c*c*c
  w = z = iter = bailout = 0
  d0 = p2 + p3
  d1 = 0.382683432365 * p2
  d2 = 0.923879532511 * p2
  dsqd = d0 * d0 + p2 * p2 - (d0 + d0) * d2
  :
  w2 = w * w, fnc = w2 * w2 - c*w - c4, der = 4 * w * w2 - c
  k = p1 * fnc / (der - 12 * w2 * fnc / (der + der))
  w = w - k
    ;
  IF ((abs(cabs(w) - p2) < p3) && iter > 0)
    bailout = 1
    wr = real(w), wi = imag(w)
    awr = abs(wr), awi = abs(wi)
    IF (awr >= awi)
      dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
      adjust = 1
    ELSE
      dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
      adjust = 0
    ENDIF
    IF (wr >= 0 && wi >= 0)
      range_num = 1 - adjust
    ELSEIF (wr < 0 && wi >= 0)
      range_num = 2 + adjust
    ELSEIF (wr < 0 && wi < 0)
      range_num = 5 - adjust
    ELSE
      range_num = 6 + adjust
    ENDIF
    ratio = sqrt(dist / dsqd)
    z = 29 * ratio + range_num * 30 + 1
  ELSEIF (|k| < 0.000001)
    bailout = 1
    z = 252
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0
  ;SOURCE: 98msg.frm
}


FB_Popcorn {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) = h in popcorn formula
    ; imag(p1) = bailout value
    ; real(p2) = radius of center of ring (0.01 to 10)
    ; imag(p2) = one half thickness of ring (0.01 to p1)
    ; real(p3) = iterations to skip
    ; imag(p3)   not used
    ;
  x = real(pixel)
  y = imag(pixel)
  h = real(p1)
  z = iter = bailout = 0
  d0 = real(p2) + imag(p2)
  d1 = 0.382683432365 * real(p2)
  d2 = 0.923879532511 * real(p2)
  dsqd = d0 * d0 + real(p2) * real(p2) - (d0 + d0) * d2
  :
  prev_x = x
  x = x - h * sin(y + tan(3 * y))
  y = y - h * sin(prev_x + tan(3 * prev_x))
  w = x + flip(y)
    ;
  IF ((abs(cabs(w) - real(p2)) < imag(p2)) && iter > real(p3))
    bailout = 1
    wr = real(w), wi = imag(w)
    awr = abs(wr), awi = abs(wi)
    IF (awr >= awi)
      dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
      adjust = 1
    ELSE
      dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
      adjust = 0
    ENDIF
    IF (wr >= 0 && wi >= 0)
      range_num = 1 - adjust
    ELSEIF (wr < 0 && wi >= 0)
      range_num = 2 + adjust
    ELSEIF (wr < 0 && wi < 0)
      range_num = 5 - adjust
    ELSE
      range_num = 6 + adjust
    ENDIF
    ratio = sqrt(dist / dsqd)
    z = 29 * ratio + range_num * 30 + 1
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < imag(p1)
  ;SOURCE: 98msg.frm
}


fcut {; Giuseppe Zito
  z = pixel
  c1 = -0.527756
  d1 = -0.407508
  : 
  x = real(z), y = imag(z)
  s0 = y
  s0 = s0 /c1
  s1 = y
  s1 = s1 *y
  s1 = s1 *y
  s0 = s0 +s1
  s0 = s0 *y
  s0 = s0 /y
  newx = s0 
  s0 = y
  s0 = s0 *d1
  s0 = s0 -x
  s0 = s0 +y
  s0 = s0 -y
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


fdim2_jul {; Kerry Mitchell 26sep98
        ; See the end of formula fdim2_man for Kerry Mitchell's
        ;   explanation of Fractal Dimension Coloring
        ;
        ; p1 = c = Julia parameter
        ; real(p2) = coloring speed
        ; imag(p2) = plot flag
        ;   1:  plot x fdim
        ;   2:  plot y fdim
        ;   3:  plot r fdim
        ;   other:  x = x fdim, y = y fdim, plot angle
        ;
  c=p1, zc=pixel, iter=1, done=0
  speed=real(p2), plotflag=imag(p2)
  xmin=1e12, xmax=-1e12, ymin=1e12, ymax=-1e12
  ssx=0, sx=0, ssy=0, sy=0
  rmin=1e12, rmax=-1e12, ssr=0, sr=0
  :
  iter=iter+1, zc=sqr(zc)+c
  x=real(zc), y=imag(zc), r=cabs(zc)
  ssx=ssx+sqr(x), sx=sx+x
  ssy=ssy+sqr(y), sy=sy+y
  ssr=ssr+sqr(r), sr=sr+r
  IF (x<xmin)
    xmin=x
  ENDIF
  IF (x>xmax)
    xmax=x
  ENDIF
  IF (y<ymin)
    ymin=y
  ENDIF
  IF (y>ymax)
    ymax=y
  ENDIF
  IF (r<rmin)
    rmin=r
  ENDIF
  IF (r>rmax)
    rmax=r
  ENDIF
  IF (|zc|>4)
    done=1
    z=1
  ENDIF
  IF (iter==maxit)
    done=1
    s=sqrt(ssx-sx*sx/iter)
    fdimx=(xmax-xmin)/s
    s=sqrt(ssy-sy*sy/iter)
    fdimy=(ymax-ymin)/s
    s=sqrt(ssr-sr*sr/iter)
    fdimr=(rmax-rmin)/s
    IF (plotflag==1)
      t=speed*fdimx
      z=cos(t)+flip(sin(t))
    ELSEIF (plotflag==2)
      t=speed*fdimy
      z=cos(t)+flip(sin(t))
    ELSEIF (plotflag==3)
      t=speed*fdimr
      z=cos(t)+flip(sin(t))
    ELSE
      z=fdimx+flip(fdimy)
      z=z^speed
    ENDIF
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


fdim2_man {; Kerry Mitchell 26sep98
        ; Kerry Mitchell's explanation of Fractal Dimension Coloring 
        ;  is at the end of this formula
        ;
        ; real(p1) = coloring speed
        ; imag(p1) = plot flag
        ;   1:  plot x fdim
        ;   2:  plot y fdim
        ;   3:  plot r fdim
        ;   other:  x = x fdim, y = y fdim, plot angle
        ;
  zc=0, c=pixel, iter=1, done=0
  speed=real(p1), plotflag=imag(p1)
  xmin=1e12, xmax=-1e12, ymin=1e12, ymax=-1e12
  ssx=0, sx=0, ssy=0, sy=0
  rmin=1e12, rmax=-1e12, ssr=0, sr=0
  :
  iter=iter+1, zc=sqr(zc)+c
  x=real(zc), y=imag(zc), r=cabs(zc)
  ssx=ssx+sqr(x), sx=sx+x
  ssy=ssy+sqr(y), sy=sy+y
  ssr=ssr+sqr(r), sr=sr+r
  IF (x<xmin)
    xmin=x
  ENDIF
  IF (x>xmax)
    xmax=x
  ENDIF
  IF (y<ymin)
    ymin=y
  ENDIF
  IF (y>ymax)
    ymax=y
  ENDIF
  IF (r<rmin)
    rmin=r
  ENDIF
  IF (r>rmax)
    rmax=r
  ENDIF
  IF (|zc|>4)
    done=1
    z=1
  ENDIF
  IF (iter==maxit)
    done=1
    s=sqrt(ssx-sx*sx/iter)
    fdimx=(xmax-xmin)/s
    s=sqrt(ssy-sy*sy/iter)
    fdimy=(ymax-ymin)/s
    s=sqrt(ssr-sr*sr/iter)
    fdimr=(rmax-rmin)/s
    IF (plotflag==1)
      t=speed*fdimx
      z=cos(t)+flip(sin(t))
    ELSEIF (plotflag==2)
      t=speed*fdimy
      z=cos(t)+flip(sin(t))
    ELSEIF (plotflag==3)
      t=speed*fdimr
      z=cos(t)+flip(sin(t))
    ELSE
      z=fdimx+flip(fdimy)
      z=z^speed
    ENDIF
  ENDIF
  done==0
;*****Kerry Mitchell's Explanation of Fractal Dimension Coloring*****
;
; Related formulas:
;   fdim2_man (above)
;   fdim2_jul
;   fdim_man
;   fdim_jul
;
; Fractal Dimension coloring
;
; Stephen Ferguson posted an analysis of fractal dimension, which he
; based on an algorithm by Holger Jaenisch.  The formulas here take
; Stephen's analysis and implement it in Fractint.
;
; Since the fractal dimension can be computed for either the real or
; the imaginary parts of z (actually, for any bounded set of real
; numbers), a plotting flag in the formula tells which component to
; use.  Set the flag to 1 to plot the fractal dimension of the real
; component, 2 for the imaginary component, or 3 for the magnitude.
; Any other value uses the 2 component dimensions as the real and
; imaginary parts of a new complex variable, and plots by the polar
; angle of that variable.
;
; The "fdim" formulas implement Stephen's analysis as written.  This
; includes a "2-1/(0.5+n/d)" scaling, where n and d both involve log
; functions.  This may be mathematically accurate, but obscures the
; detail by reducing the dynamic range of the variables (the variables
; change to little to be seen with the standard Fractint coloring
; schemes).  Consequently, the "fdim2" formulas remove the scaling, and
; color essentially by n/d.  Also, the absolute value restriction was
; removed from the compilation of the mean and standard deviation.  Both
; statistics handle negatives well, and this allows the method to
; properly handle non-symmetric orbits.  Preliminary tests indicate that
; the fundamental nature of the images is unchanged, although the "fdim2"
; formulas are simpler and should run faster.
;
; As fractal dimension calculations involve bounded sets, this method
; is best suited for "inside" colorings.  Therefore, if the orbit
; escapes, it is assigned the value of 1.0, which corresponds to color
; 0 when using the "decomp" coloring.  Decomp=256 is recommended for
; this method.
  ;SOURCE: 98msg.frm
}


fdim_jul {; Kerry Mitchell 26sep98
        ; See the end of formula fdim2_man for Kerry Mitchell's
        ;   explanation of Fractal Dimension Coloring
        ;
        ; p1 = c = Julia parameter
        ; real(p2) = coloring speed
        ; imag(p2) = plot flag
        ;   1:  plot x fdim
        ;   2:  plot y fdim
        ;   other:  x = x fdim, y = y fdim, plot angle
        ;
  c=p1, zc=pixel, iter=1, done=0
  speed=real(p2), plotflag=imag(p2)
  xmin=1e12, xmax=0, ymin=1e12, ymax=0
  ssx=0, sx=0, ssy=0, sy=0
  :
  iter=iter+1, zc=sqr(zc)+c
  x=cabs(real(zc)), y=cabs(imag(zc))
  ssx=ssx+sqr(x), sx=sx+x
  ssy=ssy+sqr(y), sy=sy+y
  IF (x<xmin)
    xmin=x
  ENDIF
  IF (x>xmax)
    xmax=x
  ENDIF
  IF (y<ymin)
    ymin=y
  ENDIF
  IF (y>ymax)
    ymax=y
  ENDIF
  IF (|zc|>4)
    done=1
    z=1
  ENDIF
  IF (iter==maxit)
    done=1
    denom=log(iter)
    s=ssx-sx*sx/iter
    numer=-log((xmax-xmin)/(sqrt(s)*iter))
    fdimx=2-1/(0.5+numer/denom)
    s=ssy-sy*sy/iter
    numer=-log((ymax-ymin)/(sqrt(s)*iter))
    fdimy=2-1/(0.5+numer/denom)
    IF (plotflag==1)
      t=speed*fdimx
      z=cos(t)+flip(sin(t))
    ELSEIF (plotflag==2)
      t=speed*fdimy
      z=cos(t)+flip(sin(t))
    ELSE
      z=fdimx+flip(fdimy)
      z=z^speed
    ENDIF
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


fdim_man {; Kerry Mitchell 26sep98
        ; See the end of formula fdim2_man for Kerry Mitchell's
        ;   explanation of Fractal Dimension Coloring
        ;
        ; real(p1) = coloring speed
        ; imag(p1) = plot flag
        ;   1:  plot x fdim
        ;   2:  plot y fdim
        ;   other:  x = x fdim, y = y fdim, plot angle
        ;
  zc=0, c=pixel, iter=1, done=0
  speed=real(p1), plotflag=imag(p1)
  xmin=1e12, xmax=0, ymin=1e12, ymax=0
  ssx=0, sx=0, ssy=0, sy=0
  :
  iter=iter+1, zc=sqr(zc)+c
  x=cabs(real(zc)), y=cabs(imag(zc))
  ssx=ssx+sqr(x), sx=sx+x
  ssy=ssy+sqr(y), sy=sy+y
  IF (x<xmin)
    xmin=x
  ENDIF
  IF (x>xmax)
    xmax=x
  ENDIF
  IF (y<ymin)
    ymin=y
  ENDIF
  IF (y>ymax)
    ymax=y
  ENDIF
  IF (|zc|>4)
    done=1
    z=1
  ENDIF
  IF (iter==maxit)
    done=1
    denom=log(iter)
    s=ssx-sx*sx/iter
    numer=-log((xmax-xmin)/(sqrt(s)*iter))
    fdimx=2-1/(0.5+numer/denom)
    s=ssy-sy*sy/iter
    numer=-log((ymax-ymin)/(sqrt(s)*iter))
    fdimy=2-1/(0.5+numer/denom)
    IF (plotflag==1)
      t=speed*fdimx
      z=cos(t)+flip(sin(t))
    ELSEIF (plotflag==2)
      t=speed*fdimy
      z=cos(t)+flip(sin(t))
    ELSE
      z=fdimx+flip(fdimy)
      z=z^speed
    ENDIF
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}


February {; Sylvie Gallet, Dec 1997
          ; Newton's method applied to z^3 - 1 = 0
          ; Coloring algorithm by Scott Burns
          ; Use decomp = 256 and periodicity = 0
  z1 = pixel, iter = 0, limit = 0.05, c = 1/limit
  sqr2 = sqrt(2), j = -0.5 + flip(sqrt(0.75)), k = conj(j)
  a = 85*(0,0.0245436)    ; real(p1) * 2i pi / 256
  :
  m1 = abs(cabs(z1-1)-sqr2)
  IF (m1 <= limit)
    mk = abs(cabs(z1-k)-sqr2)
    IF (mk <= limit)
      z = exp((2 + c*mk)*a) 
      cont = 0
    ELSE
      z = exp(c*m1*a)
      cont = 0
    ENDIF
  ELSE
    mj = abs(cabs(z1-j)-sqr2)
    IF (mj <= limit)
      z = exp((1 + c*mj)*a)
      cont = 0
    ELSE
      mk = abs(cabs(z1-k)-sqr2)
      IF (mk <= limit)
        z = exp((2 + c*mk)*a)
        cont = 0
      ELSE
        z2 = z1*z1
        z1 = (2*z1*z2 + 1) / (3*z2)
        iter = iter + 1
        cont = 1
      ENDIF
    ENDIF
  ENDIF
  cont
  ;SOURCE: 97msg.frm
}


fermenta {; Giuseppe Zito
  z = pixel
  c0 = 0.092168
  c4 = -0.413274
  d0 = 0.92219
  : 
  x = real(z), y = imag(z)
  s0 =c0
  s0 = s0 /y
  s0 = s0 /y
  s0 = s0 +c4
  s0 = s0 /y
  s0 = s0 +y
  newx = s0 
  s0 =d0
  s0 = s0 *x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


fern_J {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=0.01000, d0=0.16000
  a1=0.85000, b1=0.04000, c1=-0.04000, d1=0.85000
  a2=0.20000, b2=-0.26000, c2=0.23000, d2=0.22000
  a3=-0.15000, b3=0.28000, c3=0.26000, d3=0.24000
  al0=0.00160
  al1=0.72410, k1=0.06400, l1=-1.36000
  al2=0.10380, k2=-0.41600, l2=-0.32000
  al3=-0.10880, k3=0.12320, l3=0.06600
  z=pixel:
  x=real(z)
  y=imag(z)
  o0=(d0*x)/al0+flip((a0*y)/al0)
  op0=|o0-p2|
  o1=(d1*x-b1*y+k1)/al1+flip((-c1*x+a1*y+l1)/al1)
  op1=|o1-p2|
  o2=(d2*x-b2*y+k2)/al2+flip((-c2*x+a2*y+l2)/al2)
  op2=|o2-p2|
  o3=(d3*x-b3*y+k3)/al3+flip((-c3*x+a3*y+l3)/al3)
  op3=|o3-p2|
  IF (op0<op1 && op0<op2 && op0<op3)
    z=o0
  ELSEIF (op1<op0 && op1<op2 && op1<op3)
    z=o1
  ELSEIF (op2<op1 && op2<op0 && op2<op3)
    z=o2
  ELSEIF (op3<op0 && op3<op1 && op3<op2)
    z=o3
  ENDIF
  |z|<=p1
  ;SOURCE: ifsinv.frm
}


fern_M {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=0.01000, d0=0.16000
  a1=0.85000, b1=0.04000, c1=-0.04000, d1=0.85000
  a2=0.20000, b2=-0.26000, c2=0.23000, d2=0.22000
  a3=-0.15000, b3=0.28000, c3=0.26000, d3=0.24000
  al0=0.00160
  al1=0.72410, k1=0.06400, l1=-1.36000
  al2=0.10380, k2=-0.41600, l2=-0.32000
  al3=-0.10880, k3=0.12320, l3=0.06600
  z=pixel:
  x=real(z)
  y=imag(z)
  o0=(d0*x)/al0+flip((a0*y)/al0)
  op0=|o0-pixel|
  o1=(d1*x-b1*y+k1)/al1+flip((-c1*x+a1*y+l1)/al1)
  op1=|o1-pixel|
  o2=(d2*x-b2*y+k2)/al2+flip((-c2*x+a2*y+l2)/al2)
  op2=|o2-pixel|
  o3=(d3*x-b3*y+k3)/al3+flip((-c3*x+a3*y+l3)/al3)
  op3=|o3-pixel|
  IF (op0<op1 && op0<op2 && op0<op3)
    z=o0
  ELSEIF (op1<op0 && op1<op2 && op1<op3)
    z=o1
  ELSEIF (op2<op1 && op2<op0 && op2<op3)
    z=o2
  ELSEIF (op3<op0 && op3<op1 && op3<op2)
    z=o3
  ENDIF
  |z|<=p1
  ;SOURCE: ifsinv.frm
}


FFCpm (XAXIS_NOPARM) {; Edited for Fractint v. 20 by George Martin 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=cosh(z)+pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4 
  ;SOURCE: ffcpm.frm
}


FGZ {; Michael G. Wareman
     ; try p1=3
     ; generalized by Jon Horner
     ; replaces FGZ_-1,0.5,1,2,4,5,-Imag-3,-Both-3,-Both_-1
  z = c = pixel:
  z = z * z + c
     ;  z = (3 * z * z) / (z + 3) + c  ; original
  z = (p1 * z * z) / (z + p1) + c      ; alternative by JH
  |z| <= 4
  ;SOURCE: fgz.frm
}


FGZ-05   {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + c
  z = (0.5 * z * z) / (z + 0.5) + c
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}


FGZ-1 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + c
  z = (1 * z * z) / (z + 1) + c
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}


FGZ-2 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + c
  z = (2 * z * z) / (z + 2) + c
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}


FGZ-4 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + c
  z = (4 * z * z) / (z + 4) + c
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}


FGZ-5 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + c
  z = (5 * z * z) / (z + 5) + c
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}


FGZ-Alt {; Michael G. Wareman
  z = c = pixel:
  z = z * z + c
  z = (c * z * z) / (z + c) + c
  |z| <= 4
  ;SOURCE: fgz.frm
}


FGZ-alternate-test {; Michael G. Wareman
                    ; use float=yes
                    ; generalized by Jon Horner
  z = c = pixel:
  z = z * z + c
   ;z = (3 * z * z) / (z + 3) + c   ; original
  z = (p1 * z * z) / (z + p1) + c   ; alternative by JH
   ;|real(z)| + |imag(z)| >= 100    ; original, doesn't work
  |real(z)| + |imag(z)| <= 100      ; this does
  ;SOURCE: fgz.frm
}


FGZ-Both-3 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + c
  z = ((3, 3) * z * z) / (z + (3, 3)) + c
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}


FGZ-Both_-1 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + c
  z = ((-1, -1) * z * z) / (z + (-1, -1)) + c
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}


FGZ-color-test {; Michael G. Wareman
                ; use float=yes, try p1=3
                ; generalized by Jon Horner
  z = c = pixel:
  z = z * z + c
   ;  z = (3 * z * z) / (z + 3) + c   ; original
  z = (p1 * z * z) / (z + p1) + c     ; alternative by JH
  |real(z)| <= 50
  |imag(z)| <= 50
  ;SOURCE: fgz.frm
}


FGZ-Imag-3 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + c
  z = ((0, 3) * z * z) / (z + (0, 3)) + c
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}


FGZ-Internals {; Michael G. Wareman
               ; generalized by Jon Horner
  z = c = pixel:
  z = z * z + c
   ;  z = (3 * z * z) / (z + 3) + c  ; original
  z = (p1 * z * z) / (z + p1) + c    ; alternative by JH
  |real(z)| <= 4
  ;SOURCE: fgz.frm
}


FGZ-J {; Jay Hill
       ; p1 is the Julia set parameter
  z = pixel, c = p1: 
  z = z * z + c
  z = (3 * z * z) / (z + 3) + c
  |z| <= 36
  ;SOURCE: 98msg.frm
}


FGZ-Julia (Origin) {; Michael G. Wareman
   ; try p1 = (3.0,0.5) p2 = (-0.6882, -0.1729)
   ; FGZ-Julia-02 thru -20 were the same formula as
   ; this, with different p1/p2 values - see table -- JH.
  z = c = pixel:  ; c is redundant - JH
   ;  z = z * z + (-0.6882, -0.1729)         ; original
  z = z * z + p2                             ; alternative by JH
   ;  z = (3 * z * z) / (z + 3) + (-0.6etc)  ; original
  z = (p1 * z * z) / (z + p1) + p2           ; alternative by JH
  |z| <= 4
  ;SOURCE: fgz.frm
}


FGZ-Julia-01 {; Michael G. Wareman
              ; This Julia looks like a multi-limbed snake.
              ; try p1 = 3, try p2 = (-0.6882, -0.1729)
  z = c = pixel:
   ;  z = z * z + (-0.6882, -0.1729)     ; original
  z = z * z + p2                         ; alternative by JH
   ;  z = (3 * z * z) / (z + 3) + c      ; original
  z = (p1 * z * z) / (z + p1) + c        ; alternative by JH
  |z| <= 4
  ;SOURCE: fgz.frm
}


FGZ-Julia-1 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + (-0.6882, -0.1729)
  z = (3 * z * z) / (z + 3) + c
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}


FGZ-Julia-10 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + (-0.3861, 0.5291)
  z = (3 * z * z) / (z + 3) + (-0.3861, 0.5291)
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}


FGZ-Julia-11 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + (-0.2084, 0.6731)
  z = (3 * z * z) / (z + 3) + (-0.2084, 0.6731)
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}


FGZ-Julia-12 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + (0.2148, 0.5757)
  z = (3 * z * z) / (z + 3) + (0.2148, 0.5757)
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}


FGZ-Julia-13 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + (0.3544, 0.4021)
  z = (3 * z * z) / (z + 3) + (0.3544, 0.4021)
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}


FGZ-Julia-14 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + (-0.1, 0.1)
  z = (3 * z * z) / (z + 3) + (-0.1, 0.1)
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}


FGZ-Julia-15 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + (-0.5, 0.5)
  z = (3 * z * z) / (z + 3) + (-0.5, 0.5)
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}


FGZ-Julia-16 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + (0.3379, -0.03413)
  z = (3 * z * z) / (z + 3) + (0.3379, -0.03413)
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}


FGZ-Julia-17 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + (0.3379, 0)
  z = (3 * z * z) / (z + 3) + (0.3379, 0)
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}


FGZ-Julia-18 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + (0.355, 0)
  z = (3 * z * z) / (z + 3) + (0.355, 0)
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}


FGZ-Julia-19 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + (0.322, 0)
  z = (3 * z * z) / (z + 3) + (0.322, 0)
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}


FGZ-Julia-2 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + (-0.2483, 0.7406)
  z = (3 * z * z) / (z + 3) + (-0.2483, 0.7406)
  |z| <= 4
   ;Table of values used in FGZ-Julia-02 thru -20 :
   ;02       z = z * z + (-0.2483, 0.7406)
   ;03       z = z * z + (-1.4078, 0.0222)
   ;04       z = z * z + (-0.6904, 0.2958)
   ;05       z = z * z + (-1.1266, 0.2666)
   ;06       z = z * z + (-0.97, 0.2709)
   ;07       z = z * z + (-0.6908, 0.1185)
   ;08       z = z * z + (-0.5892, 0.0549)
   ;09       z = z * z + (-0.4919, 0.4572)
   ;10       z = z * z + (-0.3861, 0.5291)
   ;11       z = z * z + (-0.2084, 0.6731)
   ;12       z = z * z + (0.2148, 0.5757)
   ;13       z = z * z + (0.3544, 0.4021)
   ;14       z = z * z + (-0.1, 0.1)
   ;15       z = z * z + (-0.5, 0.5)
   ;16       z = z * z + (0.3379, -0.03413)
   ;17       z = z * z + (0.3379, 0)
   ;18       z = z * z + (0.355, 0)
   ;19       z = z * z + (0.322, 0)
   ;20       z = z * z + (0, 1)
  ;SOURCE: f(g(z))).frm
}


FGZ-Julia-20 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + (0, 1)
  z = (3 * z * z) / (z + 3) + (0, 1)
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}


FGZ-Julia-3 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + (-1.4078, 0.0222)
  z = (3 * z * z) / (z + 3) + (-1.4078, 0.0222)
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}


FGZ-Julia-4 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + (-0.6904, 0.2958)
  z = (3 * z * z) / (z + 3) + (-0.6904, 0.2958)
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}


FGZ-Julia-5 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + (-1.1266, 0.2666)
  z = (3 * z * z) / (z + 3) + (-1.1266, 0.2666)
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}


FGZ-Julia-6 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + (-0.97, 0.2709)
  z = (3 * z * z) / (z + 3) + (-0.97, 0.2709)
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}


FGZ-Julia-7 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + (-0.6908, 0.1185)
  z = (3 * z * z) / (z + 3) + (-0.6908, 0.1185)
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}


FGZ-Julia-8 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + (-0.5892, 0.0549)
  z = (3 * z * z) / (z + 3) + (-0.5892, 0.0549)
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}


FGZ-Julia-9 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + (-0.4919, 0.4572)
  z = (3 * z * z) / (z + 3) + (-0.4919, 0.4572)
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}


FGZ-Julia-a {; (c) Jay Hill, 1998
             ; generalization of formula by Michael G. Wareman
             ; p1 is parameter
             ; p2 is parameter
             ; p3 is focus of Julia set
  z=pixel, c=p3:
  z1=z*z + c
  z = p1*z1*z1/(z1 + p2) + c
  |z| <= 16
  ;SOURCE: 0from_ml.frm
}


FGZ-Julia-b {; (c) Jay Hill, 1998
             ; generalization of formula by Michael G. Wareman
             ; p3 is focus of Julia set
  z=pixel, c=p3:
  z1=z*z + c
  z = p1*z1*z1/(z1 + p2) + c
  |z| <= 64
  ;SOURCE: 0from_ml.frm
}


FGZ-Julia2   {; (c) Jay Hill, 1998
    ; generalization of formula by Michael G. Wareman
    ; p3 is focus of Julia set
  z=pixel, c=p3:
  z1=z*z + c
  z = p1*z1*z1/(z1 + p2) + c
  |z| <= 64
  ;SOURCE: frac_ml.frm
}


FGZ-Julia_alt (Origin) {; Michael G. Wareman
   ; try p1 = (3.0,0.5) p2 = (-0.6882, -0.1729)
   ; FGZ-Julia-02 thru -20 were the same formula as
   ; this, with different p1/p2 values - see table -- JH.
  z = c = pixel:  ; c is redundant - JH
   ;  z = z * z + (-0.6882, -0.1729)         ; original
  z = z * z + p2                             ; alternative by JH
   ;  z = (3 * z * z) / (z + 3) + (-0.6etc)  ; original
  z = (p1 * z * z) / (z + p1) + p2           ; alternative by JH
  |z| <= 4
  ;SOURCE: frac_ml.frm
}


FGZ-Julia_gen   {; (c) Jay Hill, 1998
     ; generalization of formula by Michael G. Wareman
     ; p3 is focus of Julia set
  z=pixel, c=p3:
  z1=z*z + c
  z = p1*z1*z1/(z1 + p2) + c
  |z| <= 16
  ;SOURCE: frac_ml.frm
}


FGZ-Julia_jh {; (c) Jay Hill, 1998
              ; generalization of formula by Michael G. Wareman
              ; p3 is focus of Julia set
  z=pixel, c=p3:
  z1=z*z + c
  z = p1*z1*z1/(z1 + p2) + c
  |z| <= 64
  ;SOURCE: 0from_ml.frm
}


FGZ-Julia_var1 {; (c) Jay Hill, 1998
           ; generalization of formula by Michael G. Wareman
           ; p3 is focus of Julia set
  z=pixel, c=p3:
  z1=z*z + c
  z = p1*z1*z1/(z1 + p2) + c
  |z| <= 64
  ;SOURCE: 98msg.frm
}


FGZ-Julia_var2 {; (c) Jay Hill, 1998
    ; generalization of formula by Michael G. Wareman
    ; p3 is focus of Julia set
  z=pixel, c=p3:
  z1=z*z + c
  z = p1*z1*z1/(z1 + p2) + c
  |z| <= 16
  ;SOURCE: 98msg.frm
}


FGZ-M {; Jay Hill
  c = pixel, 
  z=-sqrt(-c): ; approximate critical point
  z = z * z + c
  z = (3 * z * z) / (z + 3) + c
  |z| <= 36
  ;SOURCE: 98msg.frm
}


FGZ-Mand {; (c) Jay Hill, 1998
  IF( |p3| == 0) 
    p3 = 16
  ENDIF
  c=pixel, z=sqrt(-c), bailout = real(p3):
  z1=z*z + c
  z = p1*z1*z1/(z1 + p2) + c
  |z| <= bailout
  ;SOURCE: 98msg.frm
}


FGZ-Mand-2 {; (c) Jay Hill, 1998
            ; p1 is parameter
            ; p2 is parameter
  c=pixel, z=sqrt(-c):
  z1=z*z + c
  z = p1*z1*z1/(z1 + p2) + c
  |z| <= 16
  ;SOURCE: 0from_ml.frm
}


FGZ_-1 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + c
  z = ((-1, 0) * z * z) / (z - 1) + c
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}


fibo-A {; Fibonacci / Mandelbrot hybrid
  z = oldz = c = pixel:
  temp = z
  z = z * oldz + c
  oldz = temp
  |z| < 4
  ;SOURCE: frmtutor.frm
}


fibo-B {; Mutation of fibo-A
  z = oldz = c = pixel:
  temp = z
  z = fn1(z * oldz) + c
  oldz = temp
  |z| < 4
  ;SOURCE: frmtutor.frm
}


field2_jul {; Kerry Mitchell
        ;
        ; Colors Julia sets by nearest approach to
        ;   period 2 field lines
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; imag(p2) = number of field line to use: 0, 1, or 2
        ; 2 iterations per pixel
        ; variable zc used for calculation, z for coloring
        ;
  zc=pixel, c=p1, maxr=real(p2), minr=maxr, iter=1
  fieldangle=tan(imag(p2)*2*pi/3):
        ;
        ; iteration
        ;   compare tangent of polar angle with desired
        ;   field line angle, update minimum if needed
        ;
  iter=iter+2, zc=sqr(zc)+c, zc=sqr(zc)+c
  rzc=|zc|, tanangle=imag(zc)/real(zc)
  r=cabs(fieldangle-tanangle)
  IF (r<minr)
    minr=r
  ENDIF
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of minimum difference of angles as
        ;     decomposition angle
        ;
  IF ((rzc>maxr)||(iter>=maxit))
    iter=-1
    angle=log(minr)
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
;
;*******Kerry Mitchell's explanation of his "field" formulas******
;   The following narrative is copyright Kerry Mitchell, 1998
;
; It relates to the following formulas:
;    field2_jul (above)
;    field3_jul 
;    field4_jul 
;    field2_man 
;    field3_man 
;    field4_man 
;
;Field
;
;In the Mandelbrot set, field lines are roughly perpendicular to the
;dwell bands (bands of constant escape iteration number).  The lines
;are not directly related to the iteration level, nor to the
;decomposition rays, but are associated with the behavior of the orbits
;as the iterates approach infinity.  Field lines of period "n" separate
;the period n disks from the main cardioid of the Mandelbrot set.  The
;points that make up these lines have the characteristic that, as the
;magnitude of the orbit approaches infinity, the polar angle is
;
;fieldangle = 2 * pi * m / (2^n - 1),
;
;where n is the period of the line, and m = (1, 2, ... 2^n-1) is the
;order of the line.
;
;For example, there are 3 period 2 field lines, for m = 1, 2, and 3.
;(The m=3 case is simply the positive real axis, whose fieldangle is
;always 0.)  For m=1, the fieldangle = 2/3 pi radians, or 120 degrees.
;Each successive iteration squares the previous iterate (neglecting
;adding c, since c is very small relative to the iterate), which doubles
;the fieldangle.  Twice 120 degrees is 240 degrees, or 4/3 pi radians.
;Twice that is 8/3 pi radians, or 2/3 pi radians (since 6/3 pi radian
;or 2 pi is a full circle).  So, the field line has the same angle again
;in 2 iterations, or is periodic with period n=2.  The same thing happens
;with the m=2 line.
;
;Finding the field lines directly is not an easy task.  What this coloring
;method does is to show approximations to the field lines, and show some
;cases that aren't field lines at all.  It does this by computing the
;polar angle of the iterate at each step, and comparing it to the angle
;for the user-specified field line.  By coloring according to the smallest
;error in angles (current vs. field line), lines are drawn that come close
;to the specified field line.  (For the actual field line, the error would
;be zero.)  However, many other lines have polar angles equal to that of
;the specified field line, so they show up as well.  The result is not
;necessarily a mathematically accurate illustration of the Mandelbrot
;field lines, but it is another interesting way to render the set.
;
;**********************************************************************
  ;SOURCE: 98msg.frm
}


field2_man {; Kerry Mitchell
        ; See the end of field2_jul for Kerry Mitchell's explanation of
        ; the development of these "field" formulas.
        ;
        ; Colors Mandelbrot set by nearest approach to
        ;   period 2 field lines
        ;
        ; use decomp=256
        ; real(p1) = bailout (try 1e12)
        ; imag(p1) = number of field line to use: 0, 1, or 2
        ; 2 iterations per pixel
        ; variable zc used for calculation, z for coloring
        ;
  zc=0, c=pixel, maxr=real(p1), minr=maxr, iter=1
  fieldangle=tan(imag(p1)*2*pi/3):
        ;
        ; iteration
        ;   compare tangent of polar angle with desired
        ;   field line angle, update minimum if needed
        ;
  iter=iter+2, zc=sqr(zc)+c, zc=sqr(zc)+c
  rzc=|zc|, tanangle=imag(zc)/real(zc)
  r=cabs(fieldangle-tanangle)
  IF (r<minr)
    minr=r
  ENDIF
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of minimum difference of angles as
        ;     decomposition angle
        ;
  IF ((rzc>maxr)||(iter>=maxit))
    iter=-1
    angle=log(minr)
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


field3_jul {; Kerry Mitchell
        ; See the end of field2_jul for Kerry Mitchell's explanation of
        ; the development of these "field" formulas.
        ;
        ; Colors Julia sets by nearest approach to
        ;   period 3 field lines
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; imag(p2) = number of field line to use:
        ;   0, 1, 2, 3, 4, 5, 6, 7
        ; 3 iterations per pixel
        ; variable zc used for calculation, z for coloring
        ;
  zc=pixel, c=p1, maxr=real(p2), minr=maxr, iter=1
  fieldangle=tan(imag(p2)*2*pi/7):
        ;
        ; iteration
        ;   compare tangent of polar angle with desired
        ;   field line angle, update minimum if needed
        ;
  iter=iter+3, zc=sqr(zc)+c, zc=sqr(zc)+c, zc=sqr(zc)+c
  rzc=|zc|, tanangle=imag(zc)/real(zc)
  r=cabs(fieldangle-tanangle)
  IF (r<minr)
    minr=r
  ENDIF
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of minimum difference of angles as
        ;     decomposition angle
        ;
  IF ((rzc>maxr)||(iter>=maxit))
    iter=-1
    angle=log(minr)
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


field3_man {; Kerry Mitchell
        ; See the end of field2_jul for Kerry Mitchell's explanation of
        ; the development of these "field" formulas.
        ;
        ; Colors Mandelbrot set by nearest approach to
        ;   period 3 field lines
        ;
        ; use decomp=256
        ; real(p1) = bailout (try 1e12)
        ; imag(p1) = number of field line to use:
        ;   0, 1, 2, 3, 4, 5, 6, 7
        ; 3 iterations per pixel
        ; variable zc used for calculation, z for coloring
        ;
  zc=0, c=pixel, maxr=real(p1), minr=maxr, iter=1
  fieldangle=tan(imag(p1)*2*pi/7):
        ;
        ; iteration
        ;   compare tangent of polar angle with desired
        ;   field line angle, update minimum if needed
        ;
  iter=iter+3, zc=sqr(zc)+c, zc=sqr(zc)+c, zc=sqr(zc)+c
  rzc=|zc|, tanangle=imag(zc)/real(zc)
  r=cabs(fieldangle-tanangle)
  IF (r<minr)
    minr=r
  ENDIF
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of minimum difference of angles as
        ;     decomposition angle
        ;
  IF ((rzc>maxr)||(iter>=maxit))
    iter=-1
    angle=log(minr)
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


field4_jul {; Kerry Mitchell
        ; See the end of field2_jul for Kerry Mitchell's explanation of
        ; the development of these "field" formulas.
        ;
        ; Colors Julia sets by nearest approach to
        ;   period 4 field lines
        ;
        ; use decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (try 1e12)
        ; imag(p2) = number of field line to use:  0 - 15
        ; 4 iterations per pixel
        ; variable zc used for calculation, z for coloring
        ;
  zc=pixel, c=p1, maxr=real(p2), minr=maxr, iter=1
  fieldangle=tan(imag(p2)*2*pi/15):
        ;
        ; iteration
        ;   compare tangent of polar angle with desired
        ;   field line angle, update minimum if needed
        ;
  iter=iter+4, zc=sqr(zc)+c, zc=sqr(zc)+c, zc=sqr(zc)+c
  zc=sqr(zc)+c, rzc=|zc|, tanangle=imag(zc)/real(zc)
  r=cabs(fieldangle-tanangle)
  IF (r<minr)
    minr=r
  ENDIF
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of minimum difference of angles as
        ;     decomposition angle
        ;
  IF ((rzc>maxr)||(iter>=maxit))
    iter=-1
    angle=log(minr)
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


field4_man {; Kerry Mitchell
        ; See the end of field2_jul for Kerry Mitchell's explanation of
        ; the development of these "field" formulas.
        ;
        ; Colors Mandelbrot set by nearest approach to
        ;   period 4 field lines
        ;
        ; use decomp=256
        ; real(p1) = bailout (try 1e12)
        ; imag(p1) = number of field line to use:  0 - 15
        ; 4 iterations per pixel
        ; variable zc used for calculation, z for coloring
        ;
  zc=0, c=pixel, maxr=real(p1), minr=maxr, iter=1
  fieldangle=tan(imag(p1)*2*pi/15):
        ;
        ; iteration
        ;   compare tangent of polar angle with desired
        ;   field line angle, update minimum if needed
        ;
  iter=iter+4, zc=sqr(zc)+c, zc=sqr(zc)+c, zc=sqr(zc)+c
  zc=sqr(zc)+c, rzc=|zc|, tanangle=imag(zc)/real(zc)
  r=cabs(fieldangle-tanangle)
  IF (r<minr)
    minr=r
  ENDIF
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   use log of minimum difference of angles as
        ;     decomposition angle
        ;
  IF ((rzc>maxr)||(iter>=maxit))
    iter=-1
    angle=log(minr)
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}


fieldq2_man {
  zc=0, c=pixel, r=real(p1), k=imag(p1), qmin=r, iter=1:
  iter=iter+1, zc=sqr(zc)+c, zc=sqr(zc)+c
  rzc=|zc|, q=imag(zc)/real(zc), q=cabs(cabs(q)-k)
  IF (q<qmin)
    qmin=q
  ENDIF
  IF ((rzc>r)||(iter==maxit))
    iter=-1, t=log(qmin)
    z=cos(t)+flip(sin(t))
  ENDIF
  iter>0
  ;SOURCE: 97msg.frm
}


Fingers (XAXIS) {; Try params=2/50/0/0
  c=z=pixel: 
  z=z^Real(p1)+c 
  Real(z)<=Imag(p1)
  ;SOURCE: fractfun.frm
}


Fish (xaxis) {; Dave Oliver   >INTERNET:D.E.Oliver@soton.ac.uk
  z=pixel:    ; initialize z to coordinates at pixel
  z=((pixel^z)-1)*(pixel^(z-1)) ; the "^" means complex exponentiation
  |z|<=4      ; escape radius is 2 (|z| is sqr(x)+sqr(y))
  ;SOURCE: fish.frm
}


Fish2 (xaxis) {; Dave Oliver   >INTERNET:D.E.Oliver@soton.ac.uk
               ; (sped up 20% by T. Wegner)
  z=pixel:
  z1 = pixel^(z-1)
  z=((pixel*z1)-1)*(z1)
  |z|<=4
  ;SOURCE: fish.frm
}


Five-Mandels (XAXIS) {; Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, periodicity=0
   ; Modified for if..else logic 3/17/97 by Sylvie Gallet
  c = z = zorig = pixel
  bailout = 16, iter = 0 :
  IF (iter == p1)
     z = c = 1.5 * zorig
  ELSEIF (iter == imag(p1))
     z = c = 2.25 * zorig
  ELSEIF (iter == p2)
     z = c = 3.375 * zorig
  ELSEIF (iter == imag(p2))
     z = c = 5.0625 * zorig
  ENDIF
  z = z*z + c
  iter = iter + 1
  |z| <= bailout
  ;SOURCE: fract196.frm
}


Five_Point {; Newton variant
            ; By Stephen C. Ferguson
  z = c = Pixel:
  z = ((z-(((z^5)-1)/(5*(z^4))))^2)*c
  |z| <= 4
  ;SOURCE: 97msg.frm
}


Flames {; Jim Muth
        ; Posted in Fractal-Art, 4/25/97 
  c=pixel, z=2*(pixel):
  z=fn1(z)+c+fn2(c)
  c=fn3(c)
  LastSqr <= 100
  ;SOURCE: 97msg.frm
}


Flattop {
  c = z = pixel:
  z = sin(z+2) + (c*z)/(z-2)
  |z| <= 4
  ;SOURCE: fractals.frm
}


Flex_Newt1_Mand {; Copyright (c) Paul Carlson, 1998
    ; p1 = radius of center of ring (0.01 to 10)
    ; p2 = one half thickness of ring (0.01 to p1)
    ; p3 = max. |w - previous w| for early bailout
    ;
  c = pixel, cm1 = c - 1, tcm1 = cm1 + cm1
  w = sqrt(-cm1 / 6), prev_w = w
  z = iter = bailout = 0
  d0 = p1 + p2
  d1 = 0.382683432365 * p1
  d2 = 0.923879532511 * p1
  dsqd = d0 * d0 + p1 * p1 - (d0 + d0) * d2
  :
  w2 = w * w, w3 = w2 * w, w4 = w2 * w2
  w = w - (w4 + cm1 * w2 - c ) / (4 * w3 + tcm1 * w)
  wr=real(w), wi=imag(w)
  pr=real(prev_w), pm=imag(prev_w)
  IF ((abs(cabs(w) - p1) < p2) && iter > 0)
    bailout = 1
    wr = real(w), wi = imag(w)
    awr = abs(wr), awi = abs(wi)
    IF (awr >= awi)
      dist = (awr - d2)*(awr - d2) + (awi - d1)*(awi - d1)
      adjust = 1
    ELSE
      dist = (awr - d1)*(awr - d1) + (awi - d2)*(awi - d2)
      adjust = 0
    ENDIF
    IF (wr >= 0 && wi >= 0)
      range_num = 1 - adjust
    ELSEIF (wr < 0 && wi >= 0)
      range_num = 2 + adjust
    ELSEIF (wr < 0 && wi < 0)
      range_num = 5 - adjust
    ELSE
      range_num = 6 + adjust
    ENDIF
    ratio = sqrt(dist / dsqd)
    z = 29 * ratio + range_num * 30 + 1
  ELSEIF (|w - prev_w| < p3)
    bailout = 1
    z = 252
  ENDIF
  iter = iter + 1
  prev_w = w
  z = z - iter
  bailout == 0 && |w| < 1.0e20
  ;SOURCE: 98msg.frm
}


Flex_Newt2_Mand {; Copyright (c) Paul Carlson, 1998
    ; p1 = radius of center of ring (0.01 to 10)
    ; p2 = one half thickness of ring (0.01 to p1)
    ; p3 = max. |w - previous w| for early bailout
    ;
  c = pixel, c2 = c * c, c41 = c2 * c2 + 1
  w = sqrt(c41/(6*c2)), prev_w = w
  z = iter = bailout = 0
  d0 = p1 + p2
  d1 = 0.382683432365 * p1
  d2 = 0.923879532511 * p1
  dsqd = d0 * d0 + p1 * p1 - (d0 + d0) * d2
  :
  w2 = w * w, w3 = w2 * w, w4 = w2 * w2
  w = w - (c2*w4 - c41*w2 + c2) / (4*c2*w3 - 2*c41*w)
  wr=real(w), wi=imag(w)
  pr=real(prev_w), pm=imag(prev_w)
  IF ((abs(cabs(w) - p1) < p2) && iter > 0)
    bailout = 1
    wr = real(w), wi = imag(w)
    awr = abs(wr), awi = abs(wi)
    IF (awr >= awi)
      dist = (awr - d2)*(awr - d2) + (awi - d1)*(awi - d1)
      adjust = 1
    ELSE
      dist = (awr - d1)*(awr - d1) + (awi - d2)*(awi - d2)
      adjust = 0
    ENDIF
    IF (wr >= 0 && wi >= 0)
      range_num = 1 - adjust
    ELSEIF (wr < 0 && wi >= 0)
      range_num = 2 + adjust
    ELSEIF (wr < 0 && wi < 0)
      range_num = 5 - adjust
    ELSE
      range_num = 6 + adjust
    ENDIF
    ratio = sqrt(dist / dsqd)
    z = 29 * ratio + range_num * 30 + 1
  ELSEIF (|w - prev_w| < p3)
    bailout = 1
    z = 252
  ENDIF
  iter = iter + 1
  prev_w = w
  z = z - iter
  bailout == 0 && |w| < 1.0e20
  ;SOURCE: 98msg.frm
}


FlexBalls_Cosh {; Copyright (c) Paul W. Carlson, 1998
    ; p1 = radius of center of ring (0.01 to 10)
    ; p2 = one half thickness of ring (0.01 to p1)
    ;
  c = pixel
  w = z = iter = bailout = 0
  d0 = p1 + p2
  d1 = 0.382683432365 * p1
  d2 = 0.923879532511 * p1
  dsqd = d0 * d0 + p1 * p1 - (d0 + d0) * d2
  :
  w = cosh(w) + c
    ;
  IF ((abs(cabs(w) - p1) < p2) && iter > 0)
    bailout = 1
    wr = real(w), wi = imag(w)
    awr = abs(wr), awi = abs(wi)
    IF (awr >= awi)
      dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
      adjust = 1
    ELSE
      dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
      adjust = 0
    ENDIF
    IF (wr >= 0 && wi >= 0)
      range_num = 1 - adjust
    ELSEIF (wr < 0 && wi >= 0)
      range_num = 2 + adjust
    ELSEIF (wr < 0 && wi < 0)
      range_num = 5 - adjust
    ELSE
      range_num = 6 + adjust
    ENDIF
    ratio = sqrt(dist / dsqd)
    z = 29 * ratio + range_num * 30 + 1
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < 1000
  ;SOURCE: 98msg.frm
}


FlexBalls_Cosww {; Copyright (c) Paul W. Carlson, 1998
    ; p1 = radius of center of ring (0.01 to 10)
    ; p2 = one half thickness of ring (0.01 to p1)
    ;
  c = pixel
  w = z = iter = bailout = 0
  d0 = p1 + p2
  d1 = 0.382683432365 * p1
  d2 = 0.923879532511 * p1
  dsqd = d0 * d0 + p1 * p1 - (d0 + d0) * d2
  :
  w = cos(w * w) + c
    ;
  IF ((abs(cabs(w) - p1) < p2) && iter > 0)
    bailout = 1
    wr = real(w), wi = imag(w)
    awr = abs(wr), awi = abs(wi)
    IF (awr >= awi)
      dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
      adjust = 1
    ELSE
      dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
      adjust = 0
    ENDIF
    IF (wr >= 0 && wi >= 0)
      range_num = 1 - adjust
    ELSEIF (wr < 0 && wi >= 0)
      range_num = 2 + adjust
    ELSEIF (wr < 0 && wi < 0)
      range_num = 5 - adjust
    ELSE
      range_num = 6 + adjust
    ENDIF
    ratio = sqrt(dist / dsqd)
    z = 29 * ratio + range_num * 30 + 1
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < 1000
  ;SOURCE: 98msg.frm
}


FlexBalls_Mand {; Copyright (c) Paul W. Carlson, 1998
    ; p1 = radius of center of ring (0.01 to 10)
    ; p2 = one half thickness of ring (0.01 to p1)
    ;
  c = pixel
  w = z = iter = bailout = 0
  d0 = p1 + p2
  d1 = 0.382683432365 * p1
  d2 = 0.923879532511 * p1
  dsqd = d0 * d0 + p1 * p1 - (d0 + d0) * d2
  :
  w = w * w + c   ; Classic Mandelbrot set
    ;
  IF ((abs(cabs(w) - p1) < p2) && iter > 0)
    bailout = 1
    wr = real(w), wi = imag(w)
    awr = abs(wr), awi = abs(wi)
    IF (awr >= awi)
      dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
      adjust = 1
    ELSE
      dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
      adjust = 0
    ENDIF
    IF (wr >= 0 && wi >= 0)
      range_num = 1 - adjust
    ELSEIF (wr < 0 && wi >= 0)
      range_num = 2 + adjust
    ELSEIF (wr < 0 && wi < 0)
      range_num = 5 - adjust
    ELSE
      range_num = 6 + adjust
    ENDIF
    ratio = sqrt(dist / dsqd)
    z = 29 * ratio + range_num * 30 + 1
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < 1000
  ;SOURCE: 98msg.frm
}


FlexBalls_Pky {; Copyright (c) Paul W. Carlson, 1998
    ; p1       = Julia set coordinates
    ; real(p1) = radius of center of ring (0.01 to 10)
    ; imag(p2) = one half thickness of ring (0.01 to p1)
    ; real(p3) = iterations to skip
    ; imag(p3) = bailout value for |w|
    ;
  w = pixel
  c = p1
  z = iter = bailout = 0
  d0 = real(p2) + imag(p2)
  d1 = 0.382683432365 * real(p2)
  d2 = 0.923879532511 * real(p2)
  dsqd = d0 * d0 + real(p2) * real(p2) - (d0 + d0) * d2
  :
  w = 1 / (w * w + c)
    ;
  IF ((abs(cabs(w) - real(p2)) < imag(p2)) && iter > real(p3))
    bailout = 1
    wr = real(w), wi = imag(w)
    awr = abs(wr), awi = abs(wi)
    IF (awr >= awi)
      dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
      adjust = 1
    ELSE
      dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
      adjust = 0
    ENDIF
    IF (wr >= 0 && wi >= 0)
      range_num = 1 - adjust
    ELSEIF (wr < 0 && wi >= 0)
      range_num = 2 + adjust
    ELSEIF (wr < 0 && wi < 0)
      range_num = 5 - adjust
    ELSE
      range_num = 6 + adjust
    ENDIF
    ratio = sqrt(dist / dsqd)
    z = 29 * ratio + range_num * 30 + 1
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < imag(p3)
  ;SOURCE: 98msg.frm
}


FlexBalls_R4 {; Copyright (c) Paul W. Carlson, 1998
    ; p1 = radius of center of ring (0.01 to 10)
    ; p2 = one half thickness of ring (0.01 to p1)
    ;
  c = pixel
  w = z = iter = bailout = 0
  d0 = p1 + p2
  d1 = 0.382683432365 * p1
  d2 = 0.923879532511 * p1
  dsqd = d0 * d0 + p1 * p1 - (d0 + d0) * d2
  :
  w = c * ((w - 1)^2) / ((w + 1)^2)
    ;
  IF ((abs(cabs(w) - p1) < p2) && iter > 0)
    bailout = 1
    wr = real(w), wi = imag(w)
    awr = abs(wr), awi = abs(wi)
    IF (awr >= awi)
      dist = (awr - d2) * (awr - d2) + (awi - d1) * (awi - d1)
      adjust = 1
    ELSE
      dist = (awr - d1) * (awr - d1) + (awi - d2) * (awi - d2)
      adjust = 0
    ENDIF
    IF (wr >= 0 && wi >= 0)
      range_num = 1 - adjust
    ELSEIF (wr < 0 && wi >= 0)
      range_num = 2 + adjust
    ELSEIF (wr < 0 && wi < 0)
      range_num = 5 - adjust
    ELSE
      range_num = 6 + adjust
    ENDIF
    ratio = sqrt(dist / dsqd)
    z = 29 * ratio + range_num * 30 + 1
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < 1000
  ;SOURCE: 98msg.frm
}


flip0_man_j (ORIGIN) {
  z=pixel:
  z = flip(sqr(z) + p1)
  |z| <= 4
  ;SOURCE: flip.frm
}


flip0_man_m (XAXIS) {
  z=0:
  z = flip(sqr(z) + pixel)
  |z| <= 4
  ;SOURCE: flip.frm
}


flip1_man_j (ORIGIN) {
  z=pixel, q = p1:
  q = flip(q)
  z = sqr(z) + q
  |z| <= 4
  ;SOURCE: flip.frm
}


flip1_man_m {
  z=0, q = pixel:
  q = flip(q)
  z = sqr(z) + q
  |z| <= 4
  ;SOURCE: flip.frm
}


flip2_man_j (ORIGIN) {
  z=pixel, q = p1:
  q = flip(q)
  z = flip(sqr(z) + q)
  |z| <= 4
  ;SOURCE: flip.frm
}


flip2_man_m { 
  z=0, q = pixel:
  q = flip(q)
  z = flip(sqr(z) + q)
  |z| <= 4
  ;SOURCE: flip.frm
}


flip3_man_j { 
  z = pixel:
  z = 1/flip(sqr(z) + p1)
  |z| <= 4
  ;SOURCE: flip.frm
}


flip3_man_m (XAXIS) { 
  z = 0:
  z = 1/flip(sqr(z) + pixel)
  |z| <= 4
  ;SOURCE: flip.frm
}


FlipConjJul_N {; Jm Collard-Richard
  z=pixel:
  z=flip(conj(z^p2))+p1
  |z|<=4         
  ;SOURCE: dons.frm
}


FlipConjMand_N {; Jm Collard-Richard
  c=z=pixel:
  z=flip(conj(z^p1))+c
  |z|<=4         
  ;SOURCE: jmcr1.frm
}


FlipLambdaJ {; Ron Barnett, 1993
  z = pixel:
  z = p1*z*(1-flip(z)*flip(z))
  |z| <= 100
  ;SOURCE: fractint.frm
}


FlipLambdaM {; Ron Barnett, 1993
  z = 0.5:
  z = pixel*z*(1-flip(z)*flip(z))
  |z| <= 100
  ;SOURCE: reb002.frm
}


FlipProbJ1 {; Ron Barnett, 1993
  z = pixel:
  z = flip(z)*(1-z) + p1
  |z| <= 100
  ;SOURCE: reb002.frm
}


FlipProbJ2 {; Ron Barnett, 1993
  z = pixel:
  z = z*(p1-flip(z)) + p1
  |z| <= 100
  ;SOURCE: reb002.frm
}


FlipProbM1 {; Ron Barnett, 1993
  z = pixel:
  z = flip(z)*(1-z) + pixel
  |z| <= 100
  ;SOURCE: reb002.frm
}


FlipProbM2 {; Ron Barnett, 1993
  z = pixel:
  z = z*(pixel-flip(z)) + pixel
  |z| <= 100
  ;SOURCE: reb002.frm
}


floor_J {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=0.01000, b0=-0.50000, c0=0.50000, d0=0.01000
  a1=0.50000, d1=0.50000
  a2=0.01000, b2=0.50000, c2=-0.50000, d2=0.01000
  al0=0.25010, k0=-1.66577, l0=-0.89984
  al1=0.25000, k1=0.01395, l1=-2.50744
  al2=0.25010, k2=1.63899, l2=-0.84351
  z=pixel:
  x=real(z)
  y=imag(z)
  o0=(d0*x-b0*y+k0)/al0+flip((-c0*x+a0*y+l0)/al0)
  op0=|o0-p2|
  o1=(d1*x+k1)/al1+flip((a1*y+l1)/al1)
  op1=|o1-p2|
  o2=(d2*x-b2*y+k2)/al2+flip((-c2*x+a2*y+l2)/al2)
  op2=|o2-p2|
  IF (op0<op1 && op0<op2)
    z=o0
  ELSEIF (op1<op0 && op1<op2)
    z=o1
  ELSEIF (op2<op1 && op2<op0)
    z=o2
  ENDIF
  |z|<=p1
  ;SOURCE: ifsinv.frm
}


floor_M {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=0.01000, b0=-0.50000, c0=0.50000, d0=0.01000
  a1=0.50000, d1=0.50000
  a2=0.01000, b2=0.50000, c2=-0.50000, d2=0.01000
  al0=0.25010, k0=-1.66577, l0=-0.89984
  al1=0.25000, k1=0.01395, l1=-2.50744
  al2=0.25010, k2=1.63899, l2=-0.84351
  z=pixel:
  x=real(z)
  y=imag(z)
  o0=(d0*x-b0*y+k0)/al0+flip((-c0*x+a0*y+l0)/al0)
  op0=|o0-pixel|
  o1=(d1*x+k1)/al1+flip((a1*y+l1)/al1)
  op1=|o1-pixel|
  o2=(d2*x-b2*y+k2)/al2+flip((-c2*x+a2*y+l2)/al2)
  op2=|o2-pixel|
  IF (op0<op1 && op0<op2)
    z=o0
  ELSEIF (op1<op0 && op1<op2)
    z=o1
  ELSEIF (op2<op1 && op2<op0)
    z=o2
  ENDIF
  |z|<=p1
  ;SOURCE: ifsinv.frm
}


Fly (XAXIS_NOPARM) {; Edited for Fractint v. 20 by George Martin 10/98
  z=p1:
  x=real(z)
  z=sqr(z)+pixel
  z=sqr(z)-pixel
  |z|<=4
  ;SOURCE: choice.frm
}


FlyC (XAXIS_NOPARM) {; Edited for Fractint v. 20 by George Martin 10/98
  z=p1:
  x=real(z)
  IF (x<0)
    z = sqr(z) + pixel
  ELSE
    z = sqr(z) - pixel
  ENDIF
  |z|<=4
  ;SOURCE: choice.frm
}


FlyingSquirrel (XAXIS_NOPARM) {; Edited for Fractint v. 20 
                               ; by George Martin 10/98
  z=p1, x=|z|:
  z=sin(z)/cosxx(z)+pixel
  z=sqr(z)+pixel, x=|z|
  x<=4 
  ;SOURCE: choice.frm
}


FlyingSquirrelC (XAXIS_NOPARM) {; Edited for Fractint v. 20 
                                ; by George Martin 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=sin(z)/cosxx(z)+pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4 
  ;SOURCE: choice.frm
}


FlyingSquirrelC.1 (XAXIS_NOPARM) {; Edited for Fractint v. 20
                                  ; by George Martin 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=tan(z)+pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4 
  ;SOURCE: choice.frm
}


fn {
  z = fn1(Pixel) + 1/fn2(Pixel - p1) :
  z = sqr(z) + fn1(Pixel) + 1/fn2(Pixel - p1) 
  | z | <= 4 
  ;SOURCE: ilvi.frm
}


Fn*Fn {; Chuck Ebbert - from BUILTN.FRM
       ; Use float=yes - JH
       ; set co-ords as TLx=-4.0,TLy=3.0,BRx=4.0,BRy=-3.0 - JH
       ; real(p2) changes bailout (default = 64)
  z = pixel
  t = (64 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = fn1(z) * fn2(z)
  |z| <= t
  ;SOURCE: parser.frm
}


Fn*z+z (XAXIS) {; Chuck Ebbert - from BUILTN.FRM
   ; set co-ords as TLx=-4.0,TLy=3.0,BRx=4.0,BRy=-3.0  ; JH Jan-94
   ; requires float=yes                                ; JH Jan-94
   ; Near duplicate of built-in 'fn*z+z' type.
   ; p1 = first coeff., p2 = second coeff. (default 1)
  z = pixel
  m1 = (1 * (|p1|<=0) + p1 )       ; force 1 if p1=0
  m2 = (1 * (|p2|<=0) + p2 ):      ; force 1 if p2=0
  z = (m1 * fn1(z) + m2 ) * z
  |z| <= 64                        ; always bail out at 64
  ;SOURCE: parser.frm
}


Fn+Fn {; Jon Horner/Chuck Ebbert
       ; float=yes
       ; set co-ords as TLx=-4.0,TLy=3.0,BRx=4.0,BRy=-3.0  ; -JH
  z = pixel
  m1 = (1 * (|p1|<=0) + p1 )
  m2 = (1 * (|p2|<=0) + p2 ) :
  z = m1 * fn1(z) + m2 * fn2(z)
  |z| <= 64
  ;SOURCE: parser.frm
}


Fn1 (XAXIS) {  
  c = z = pixel:
  z = fn1(z) + c + p1
  ;SOURCE: robert.frm
}


fn1+fn2 (XYAXIS) {; Sylvie Gallet 101324.3444@compuserve.com, 1995
   z=flip(pixel) :
   z1=p1*fn1(z)+p2*fn2(z)
   z=z1
   |z|<=64
  ;SOURCE: gallet.frm
}


Fn2 (XAXIS) {  
  c = z = pixel:
  z = fn1(z)*fn2(z*z) + c
  ;SOURCE: robert.frm
}


Fn3 (XAXIS) {  
  c = z = pixel:
  z = fn2(z)*fn2(z) + c
  ;SOURCE: robert.frm
}


Fn4 (XAXIS) {  
  c = z = pixel:
  z = fn1(z)*fn1(z) + c
  ;SOURCE: robert.frm
}


Fn4Inv (XAXIS) {  
  c = z = pixel:
  z = 1/(fn1(z)*fn1(z)+c)
  ;SOURCE: robert.frm
}


Fn5 (XAXIS) {  
  c = z = pixel:
  z = fn2(z*z)*fn2(z) + c
  ;SOURCE: robert.frm
}


Fn6 (XAXIS) {  
  c = z = pixel:
  z = fn1(z*z)*fn2(z) + c
  ;SOURCE: robert.frm
}


Fn7 (XAXIS) {  
  c = z = pixel:
  z = fn2(z*z)*fn1(z*z) + c
  ;SOURCE: robert.frm
}


Fn8 (XAXIS) {  
  c = z = pixel:
  z = fn3(z)*fn2(z)*fn1(z) + c
  ;SOURCE: robert.frm
}


fn[1/c] {
  z = fn1(Pixel) + fn2(1/(Pixel - p1)) :
  z = sqr(z) + fn1(Pixel) + fn2(1/(Pixel - p1)) 
  | z | <= 4 
  ;SOURCE: ilvi.frm
}


Fn[z*z] {; Jon Horner
         ; set co-ords as TLx=-4.0,TLy=3.0,BRx=4.0,BRy=-3.0  ; -JH
  z = pixel :
  z = fn1(z * z)
  |z| <= 4
  ;SOURCE: parser.frm
}


Fn[z]+Fn[pix] {; Chuck Ebbert - from BUILTN.FRM
   ; requires float=yes                                          - JH
   ; set co-ords as TLx=-3.6,TLy=2.7,BRx=3.6,BRy=-2.7            - JH
   ; Duplicate of built-in type 'fn(z)+fn(pix)'
   ; p1 = perturbation of z(0)
   ; p2 = factor p (default 1) ; `multiplication factor changed' - JH
  z = pixel + p1
   ; CAE changed line below to test |p2|, not |real(p2)|  12 Jan 1993
  c = ((1 * (|p2|<=0) + p2 ) * fn2(pixel) ):
  z = fn1(z) + c
  |z| <= 64
  ;SOURCE: parser.frm
}


FnDog (XYAXIS) {; Scott Taylor
  z = Pixel, b = p1+2:
  z = fn1( z ) * pixel
  |z| <= b
  ;SOURCE: fractint.frm
}


FnGAMMA (Xaxis) {; Jm Collard-Richard
  z=pixel, twopi=6.283185307, r=10:
  z=fn1((twopi*z)^(0.5)*(z^z)*exp(-z))+fn2(pixel)
  |z|<=r    
  ;SOURCE: jmcr2.frm
}


fnglynn {; Mutation of GLYNN, by Bradley Beacham  [74223,2745]
         ; Original formula by Jon Horner [100112,1700]
         ; Try p1=1.5, p2=-0.2, fn1=ident for 'standard' Glynn
  z = pixel:
  z = fn1(z^p1 + p2)
  |z| < 4
  ;SOURCE: zsazsa.frm
}


FnInvJuliaBar_N1 {; Jm Collard-Richard
  z=1/pixel:
  z=fn1(conj(z)^p2)+fn2(p1) 
  ;SOURCE: jmcr1.frm
}


FnInvJuliaBar_N2 {; Jm Collard-Richard
  z=1/pixel:
  z=fn1(conj(z))^p2+fn2(p1) 
  ;SOURCE: jmcr1.frm
}


FnInvJuliaBar_N3 {; Jm Collard-Richard
  z=1/pixel:
  z=(fn1(conj(z))^p2)+fn2(p1) 
  ;SOURCE: jmcr1.frm
}


FNInvMandelBar_N (xaxis) {; Jm Collard-Richard
  c=z=1/pixel :
  z=conj(fn1(z))^p1+fn2(c)    
  ;SOURCE: jmcr1.frm
}


FnJuliaBar_N {; Jm Collard-Richard
  z=pixel:
  z=fn1(conj(z))^p2+fn2(p1) 
  ;SOURCE: jmcr1.frm
}


FnMandelBar (xaxis) {; Jm Collard-Richard
  z=c=pixel :
  z=c*conj(fn1(z))
  |z|<=64              
  ;SOURCE: jmcr1.frm
}


fnrecip {
  z=c=pixel:
  z=fn1(1/(z))*c 
  |z|<=100
  ;SOURCE: sample.frm
}


FNslider {
  z=pixel
  d=8
  b=d*2
  s=z+d
  n=z-d
  c=s*p2/b-n*p1/b:
  z=c*fn1(z)
  |imag(z)|<127
  ;SOURCE: pderb.frm
}


Fnww_Fnc_Mset {; Copyright (c) Paul W. Carlson, 1998
    ; real(p1) controls elements size (usually 2 to 16))
    ; imag(p1) not used
    ; real(p2) number of color ranges
    ; imag(p2) number of colors in a range
  z = w = iter = range_num = bailout = 0
  c = pixel
  p = p1 + p1
  num_ranges = real(p2)
  colors_in_range = imag(p2)
  colors_in_range_1 = colors_in_range - 1:
  w = fn1(w * w + fn2(c))
  m = |w|
  IF ((p < p1) && (m > p1))
    bailout = 1
    index = colors_in_range_1 * (p1 - p) / p1
    z = index + range_num * colors_in_range + 1
  ENDIF
  p = m
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && m < 100
  ;SOURCE: 98msg.frm
}


fnxfn {; Chuck Ebbert.
       ; duplicate of built-in 'fn*fn' type.
       ; P2 = bailout (default 64)
  z = pixel
  t = (64 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = fn1(z) * fn2(z)
  |z| <= t
  ;SOURCE: builtn.frm
}


fnxzpz {; Chuck Ebbert.
        ; Near duplicate of built-in 'fn*z+z' type.
        ; P1 = first coeff., P2 = second coeff. (default 1)
  z = pixel
  m1 = (1 * (|p1|<=0) + p1 )       ; force 1 if p1=0
  m2 = (1 * (|p2|<=0) + p2 ):      ; force 1 if p2=0
  z = (m1 * fn1(z) + m2 ) * z
  |z| <= 64  ; always bail out at 64
  ;SOURCE: builtn.frm
}


fnzpfnpix {; Chuck Ebbert.
           ; Duplicate of built-in type 'fn(z)+fn(pix)'
           ; P1 = perturbation of z(0)
           ; p2 = multiplication factor (default 1)
  z = pixel + p1
  c = ((1 * (|real(p2)|<=0) + p2 ) * fn2(pixel) ):
  z = fn1(z) + c
  |z| <= 64  ; bailout is fixed at 64
  ;SOURCE: builtn.frm
}


Foam {
  z = 0.5:
  x = pixel*(z - 1/z) + p1
  z = pixel*(x - 1/sqr(x) + p2)
  |z| <= 100
  ;SOURCE: reb003.frm
}


FoamJulia {; Ron Barnett, 1995
  z = pixel:
  x = p3*(z - 1/z) + p1
  z = p3*(x - 1/sqr(x) + p2)
  |z| <= 100
  ;SOURCE: reb007.frm
}


Form3 (XAXIS) {; Peter Lewman's formulas for Fractint.
  z = Pixel, c = Pixel:
  z = c * z * ( p1 - z )
  |z| < 4
  ;SOURCE: fract001.frm
}


Form4 (XAXIS) {; Peter Lewman's formulas for Fractint.
  z = Pixel, c = P1:
  z = c * z * ( p2 - z )
  |z| < 4
  ;SOURCE: fract001.frm
}


Form5 (XAXIS) {; Peter Lewman's formulas for Fractint.
  z = Pixel, c = Pixel:
  z = p1 / ( fn1(z) + c )
  |z| < 4
  ;SOURCE: fract001.frm
}


Form6 (XAXIS) {; Peter Lewman's formulas for Fractint.
  z = Pixel, c = Pixel:
  z = z^6 + fn1(z) + c
  |z| < 4
  ;SOURCE: fract001.frm
}


Form7 (XYAXIS) {; Peter Lewman's formulas for Fractint.
  z = Pixel, c = Pixel:
  z = ( c * fn1( fn2(z) + 1 ) ) / ( z * ( fn3(z) - 1) )
  |z| < 4
  ;SOURCE: fract001.frm
}


Formula {; Giuseppe Zito
  z = pixel
  c2 = 0.68162298
  c8 = 0.96401101
  d1 = -0.95945197
  d5 = -0.458745
  d12 = -0.425805
  d15 = -0.36000001
  : 
  x = real(z), y = imag(z)
  s0 = y
  s0 = s0 /c2
  s0 = s0 *y
  s0 = s0 *y
  s0 = s0 -y
  s0 = s0 *c8
  newx = s0 
  s0 = y
  s0 = s0 /d1
  s0 = s0 +y
  s0 = s0 *y
  s0 = s0 -d5
  s0 = s0 -y
  s0 = s0 +y
  s1 =d12
  s1 = s1 *x
  s1 = s1 /x
  s1 = s1 -d15
  s0 = s0 *s1
  s0 = s0 /x
  s0 = s0 -y
  s0 = s0 +x
  s0 = s0 +y
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: 99msg.frm
}


Formula2 {; Giuseppe Zito
  z = pixel
  c2 = -0.39160001
  c4 = -0.030243
  c7 = -0.49485701
  c11 = -0.59975803
  c13 = 0.21419001
  d0 = -2.75003386
  d8 = -0.15986601
  d10 = 0.215734
  d13 = 0.053922
  d14 = 0.437287
  : 
  x = real(z), y = imag(z)
  s0 = x
  s0 = s0 -x
  s0 = s0 /c2
  s0 = s0 /y
  s0 = s0 +c4
  s0 = s0 -x
  s0 = s0 /x
  s0 = s0 -c7
  s0 = s0 -x
  s0 = s0 *c11
  s0 = s0 +c13
  s0 = s0 +y
  s0 = s0 -x
  newx = s0 
  s0 =d0
  s0 = s0 -y
  s0 = s0 -x
  s1 = x
  s1 = s1 +y
  s1 = s1 *x
  s1 = s1 +d8
  s0 = s0 *s1
  s0 = s0 *d10
  s0 = s0 +y
  s1 =d13
  s1 = s1 *d14
  s0 = s0 *s1
  s0 = s0 -x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: 99msg.frm
}


Formulization {; Copyright (c) Paul W. Carlson, 1998
  z = w = iter = range_num = bailout = 0
  c = pixel
  p = p1 + p1
  num_ranges = real(p2)
  colors_in_range = imag(p2)
  colors_in_range_1 = colors_in_range - 1
  :
    ; Some random formulizationizating
  k = w * w + c
  w = k +  1 / (k * k) + k * c
    ;
  m = |w|
  IF ((p < p1) && (m > p1))
    bailout = 1
    index = colors_in_range_1 * (p1 - p) / p1
    z = index + range_num * colors_in_range + 1
  ENDIF
  p = m
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && m < 100
  ;SOURCE: 98msg.frm
}


fossil {; Giuseppe Zito 
  z = pixel
  c0 = -0.893218
  c3 = 0.999049
  c4 = -0.826461
  d4 = -0.017745
  d5 = -0.034349
  : 
  x = real(z), y = imag(z)
  s0 =c0
  s0 = s0 *c3
  s0 = s0 -c4
  s0 = s0 /y
  s0 = s0 /x
  s0 = s0 -y
  newx = s0 
  s0 = y
  s0 = s0 +d4
  s0 = s0 *d5
  s0 = s0 *y
  s0 = s0 -x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


four (XYAXIS) {
   ; A square root initialization of the octo 
   ; will halve the number of arms
  z = pixel^.5,zp=(0,0):
  temp = z
  z = z^3 - zp
  zp = temp
  |zp| <= 4 
  ;SOURCE: noel.frm
}


Four_deep {; (c) Jay Hill, 1998
           ; use outside=summ periodicity=0 float=y
  done = 1, z = 0, zc = 0, c = pixel
  t0=(1-sqrt(1-4*c))
  IF (|t0|<=1)
    c=t0/35-1.76;575
    t1=8+4*c*(1+sqrt(-4*c-7))
    IF (|t1|<1)
      c=2*t1/1000-1.941
      L1=L2=2
      IF ((4*c+3) !=0)
        Y=pi*sqrt(-1)/1.5, X = 2*sqrt((4*c+3)/3)
        X3 = asinh(-16/X^3)/3, Zz = 2*(c+1)*c + 2
        F=X*sinh(X3 + Y), L1= 8*((c*(F+1)*F + Zz))
        F=X*sinh(X3 - Y), L2= 8*((c*(F+1)*F + Zz))
        t2=L1*(|L1|<=1) + L2*(|L2|<=1)
        IF ((|L1|<=1) + (|L2|<=1))
          c=t2/4000-1.98536
        ENDIF
      ENDIF
    ENDIF
  ENDIF
  :                 ; initialization.
  zc=sqr(zc) + c    ; standard MSet iteration
  IF (|zc| >= 800) 
    done=-1         ; Set flag to force an exit.
  ENDIF
  done >= 0         ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}


Four_In_One_Mset {; Copyright (c) Paul W. Carlson, 1998
                  ; This version allows passes=t
                  ; Zooming added by Sylvie Gallet, 6/7/98
    ; real(p1) = size factor, upper left  quadrant
    ; imag(p1) = size factor, upper right quadrant
    ; real(p2) = size factor, lower left  quadrant
    ; imag(p2) = size factor, lower right quadrant
    ;
  prev_w = z = bailout = iter = range_num = 0
  w1 = w2 = w3 = w4 = 0
  px = real(scrnpix), py = imag(scrnpix)
  hmx = 0.5 * real(scrnmax)
  hmy = 0.5 * imag(scrnmax)
  IF ((px < 2) || (px > (real(scrnmax) - 3)) || \
      (py < 2) || (py > (imag(scrnmax) - 3))  || \
      ((px > hmx - 2) && (px < hmx + 1))      || \
      ((py > hmy - 2) && (py < hmy + 1)))
    IF ((px > hmx - 2) && (px < hmx + 1) && \
        (py > hmy - 2) && (py < hmy + 1))
      z = 251
    ELSE
      z = 252
    ENDIF
    bailout = 1
    IF (px == 0 && py == 0)
      z0 = pixel
    ENDIF
    IF (px == 1 && py == 0)
      delta_x = real(scrnmax) * (pixel - z0)
    ENDIF
    IF (px == 0 && py == 1)
      delta_y = imag(scrnmax) * (pixel - z0)
    ENDIF
  ENDIF
  IF (bailout == 0)
    IF (px < hmx)
      IF (py > hmy)
        c = z0 + 2 * (pixel - z0) - delta_y
        size = real(p2)
        a1 = 0.6, b1 = 0.3, a2 = 0.2, b2 = 0.4
        quad = 3
      ELSE
        c = z0 + 2 * (pixel - z0)
        size = real(p1)
        rad = 0.5
        quad = 1
      ENDIF
    ELSEIF (py > hmy)
      c = z0 + 2 * (pixel - z0) - delta_x - delta_y
      size = imag(p2)
      k = 0.5 + size
      j = 0.5 - size
      quad = 4
    ELSE
      c = z0 + 2 * (pixel - z0) - delta_x
      size = imag(p1)
      quad = 2
    ENDIF
    index_factor = 29 / size
  ENDIF
  :
  IF (bailout == 0)
    IF (quad == 1)
      w1 = w1 * w1 + c
      w = w1
      ang = atan(imag(w1) / real(w1))
      astroid = rad * (cos(ang)^3 + (0,1) * sin(ang)^3)
      dist = abs(|w1| - |astroid|)
    ELSEIF (quad == 2)
      w2 = w2 * w2 + c
      w = w2
      dist = abs(|w2| - .25)
    ELSEIF (quad == 3)
      w3 = w3 * w3 + c
      w = w3
      ang = atan(imag(w3) / real(w3))
      ell1 = a1 * cos(ang) + (0,1) * b1 * sin(ang)
      dist1 = abs(cabs(w3) - cabs(ell1))
      ell2 = b2 * cos(ang) + (0,1) * a2 * sin(ang)
      dist2 = abs(cabs(w3) - cabs(ell2))
      IF (dist1 < dist2)
        dist = dist1
      ELSE
        dist = dist2
      ENDIF
    ELSEIF (quad == 4)
      w4 = w4 * w4 + c
      w = w4
      awr = abs(real(w4)), awi = abs(imag(w4))
      IF ((awr < k) && (awr > j) && \
        (awi < k) && (awi > j))
        awr5 = abs(awr - 0.5), awi5 = abs(awi - 0.5)
        IF (awr5 <= awi5)
          dist = awr5
        ELSE
          dist = awi5
        ENDIF
      ELSE
        dist = 1.0e30
      ENDIF
    ENDIF
  ENDIF
  IF (dist < size && iter > 0)
    bailout = 1
    z = index_factor * dist + range_num * 30 + 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == 8)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < 4
  ;SOURCE: 98msg.frm
}


Four_Julias {; Copyright (c) Paul W. Carlson, 1998
    ; p1       = Julia set coordinates
    ; real(p2) = size factor, upper left  quadrant
    ; imag(p2) = size factor, upper right quadrant
    ; real(p3) = size factor, lower left  quadrant
    ; imag(p3) = size factor, lower right quadrant
    ;
    ; There are several things you CAN'T do with
    ; the image, including: zooming in, rotating, moving it in 
    ; any direction, and in general, anything that changes the 
    ; location of any part of the image on the screen.  
  c = p1
  z = bailout = iter = range_num = 0
  px = real(scrnpix), py = imag(scrnpix)
  hmx = 0.5 * real(scrnmax)
  hmy = 0.5 * imag(scrnmax)
  IF ((px < 2) || (px > (real(scrnmax) - 3)) || \
    (py < 2) || (py > (imag(scrnmax) - 3)) || \
    ((px > hmx - 2) && (px < hmx + 1))      || \
    ((py > hmy - 2) && (py < hmy + 1)))
    z = 252
    bailout = 1
  ENDIF
  IF (bailout == 0)
    IF (px < hmx)
      IF (py > hmy)
        w = 2 * (pixel + (1,0.75))
        size = real(p3)
        quad = 3
      ELSE
        prev_w = 2 * (pixel + (1.0,-0.75))
        size = real(p2)
        quad = 1
      ENDIF
    ELSE
      IF (py > hmy)
        w = 2 * (pixel + (-1,0.75))
        size = imag(p3)
        k = 0.5 + size
        j = 0.5 - size
        quad = 4
      ELSE
        w = 2 * (pixel + (-1.0,-0.75))
        size = imag(p2)
        quad = 2
      ENDIF
    ENDIF
    index_factor = 29 / size
  ENDIF
  :
  IF (bailout == 0)
    IF (quad == 1)
      w = prev_w * prev_w + c
      dist = |prev_w| / |w|
      prev_w = w
    ELSE
      w = w * w + c
      IF (quad == 2)
        dist = abs(|w|-.25)
      ELSEIF (quad == 3)
        IF (abs(real(w)) <= abs(imag(w)))
          dist = abs(real(w))
        ELSE
          dist = abs(imag(w))
        ENDIF
      ELSEIF (quad == 4)
        awr = abs(real(w)), awi = abs(imag(w))
        IF ((awr < k) && (awr > j) && \
          (awi < k) && (awi > j))
          awr5 = abs(awr - 0.5), awi5 = abs(awi - 0.5)
          IF (awr5 <= awi5)
            dist = awr5
          ELSE
            dist = awi5
          ENDIF
        ELSE
          dist = 1.0e30
        ENDIF
      ENDIF
    ENDIF
    IF (dist < size && iter > 0)
      bailout = 1
      z = index_factor * dist + range_num * 30 + 1
    ENDIF
  ENDIF
  range_num = range_num + 1
  IF (range_num == 8)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < 4
  ;SOURCE: 98msg.frm
}


Four_Julias_Z {; Copyright (c) Paul W. Carlson, 1998
               ; Zooming added by Sylvie Gallet, 6/7/98
    ; p1       = Julia set coordinates
    ; real(p2) = size factor, upper left  quadrant
    ; imag(p2) = size factor, upper right quadrant
    ; real(p3) = size factor, lower left  quadrant
    ; imag(p3) = size factor, lower right quadrant
    ;
  c = p1
  z = bailout = iter = range_num = 0
  px = real(scrnpix), py = imag(scrnpix)
  hmx = 0.5 * real(scrnmax)
  hmy = 0.5 * imag(scrnmax)
  IF ((px < 2) || (px > (real(scrnmax) - 3)) || \
        (py < 2) || (py > (imag(scrnmax) - 3)) || \
        ((px > hmx - 2) && (px < hmx + 1))      || \
        ((py > hmy - 2) && (py < hmy + 1)))
    z = 252
    bailout = 1
    IF (px == 0 && py == 0)
      z0 = pixel
    ENDIF
    IF (px == 1 && py == 0)
      delta_x = real(scrnmax) * (pixel - z0)
    ENDIF
    IF (px == 0 && py == 1)
      delta_y = imag(scrnmax) * (pixel - z0)
    ENDIF
  ENDIF
  IF (bailout == 0)
    IF (px < hmx)
      IF (py > hmy)
        w = z0 + 2 * (pixel - z0) - delta_y
        size = real(p3)
        quad = 3
      ELSE
        prev_w = z0 + 2 * (pixel - z0)
        size = real(p2)
        skip = real(p3)
        quad = 1
      ENDIF
    ELSEIF (py > hmy)
      w = z0 + 2 * (pixel - z0) - delta_x - delta_y
      size = imag(p3)
      k = 0.5 + size
      j = 0.5 - size
      quad = 4
    ELSE
      w = z0 + 2 * (pixel - z0) - delta_x
      size = imag(p2)
      quad = 2
    ENDIF
    index_factor = 29 / size
  ENDIF
  :
  IF (bailout == 0)
    IF (quad == 1)
      w = prev_w * prev_w + c
      dist = |prev_w| / |w|
      prev_w = w
    ELSE
      w = w * w + c
      IF (quad == 2)
        dist = abs(|w|-.25)
      ELSEIF (quad == 3)
        IF (abs(real(w)) <= abs(imag(w)))
          dist = abs(real(w))
        ELSE
          dist = abs(imag(w))
        ENDIF
      ELSEIF (quad == 4)
        awr = abs(real(w)), awi = abs(imag(w))
        IF ((awr < k) && (awr > j) && \
             (awi < k) && (awi > j))
          awr5 = abs(awr - 0.5), awi5 = abs(awi - 0.5)
          IF (awr5 <= awi5)
            dist = awr5
          ELSE
            dist = awi5
          ENDIF
        ELSE
          dist = 1.0e30
        ENDIF
      ENDIF
    ENDIF
    IF (dist < size && iter > 0)
      bailout = 1
      z = index_factor * dist + range_num * 30 + 1
    ENDIF
  ENDIF
  range_num = range_num + 1
  IF (range_num == 8)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < 4
  ;SOURCE: 98msg.frm
}


Four_Mandels {; Copyright (c) Paul W. Carlson, 1998
              ; Zooming added by Sylvie Gallet, 6/7/98
    ; real(p1) = size factor, upper left  quadrant
    ; imag(p1) = size factor, upper right quadrant
    ; real(p2) = size factor, lower left  quadrant
    ; imag(p2) = size factor, lower right quadrant
    ;
  prev_w = z = bailout = iter = range_num = 0
  w1 = w2 = w3 = w4 = 0
  px = real(scrnpix), py = imag(scrnpix)
  hmx = 0.5 * real(scrnmax)
  hmy = 0.5 * imag(scrnmax)
  IF ((px < 2) || (px > (real(scrnmax) - 3)) || \
       (py < 2) || (py > (imag(scrnmax) - 3))  || \
       ((px > hmx - 2) && (px < hmx + 1))      || \
       ((py > hmy - 2) && (py < hmy + 1)))
    z = 252
    bailout = 1
    IF (px == 0 && py == 0)
      z0 = pixel
    ENDIF
    IF (px == 1 && py == 0)
      delta_x = real(scrnmax) * (pixel - z0)
    ENDIF
    IF (px == 0 && py == 1)
      delta_y = imag(scrnmax) * (pixel - z0)
    ENDIF
  ENDIF
  IF (bailout == 0)
    IF (px < hmx)
      IF (py > hmy)
        c = z0 + 2 * (pixel - z0) - delta_y
        size = real(p2)
        a1 = 0.6, b1 = 0.3, a2 = 0.2, b2 = 0.4
        quad = 3
      ELSE
        c = z0 + 2 * (pixel - z0)
        size = real(p1)
        rad = 0.5
        quad = 1
      ENDIF
    ELSEIF (py > hmy)
      c = z0 + 2 * (pixel - z0) - delta_x - delta_y
      size = imag(p2)
      k = 0.5 + size
      j = 0.5 - size
      quad = 4
    ELSE
      c = z0 + 2 * (pixel - z0) - delta_x
      size = imag(p1)
      quad = 2
    ENDIF
    index_factor = 29 / size
  ENDIF
  :
  IF (bailout == 0)
    IF (quad == 1)
      w1 = w1 * w1 + c
      w = w1
      ang = atan(imag(w1) / real(w1))
      astroid = rad * (cos(ang)^3 + (0,1) * sin(ang)^3)
      dist = abs(|w1| - |astroid|)
    ELSEIF (quad == 2)
      w2 = w2 * w2 + c
      w = w2
      dist = abs(|w2| - .25)
    ELSEIF (quad == 3)
      w3 = w3 * w3 + c
      w = w3
      ang = atan(imag(w3) / real(w3))
      ell1 = a1 * cos(ang) + (0,1) * b1 * sin(ang)
      dist1 = abs(cabs(w3) - cabs(ell1))
      ell2 = b2 * cos(ang) + (0,1) * a2 * sin(ang)
      dist2 = abs(cabs(w3) - cabs(ell2))
      IF (dist1 < dist2)
        dist = dist1
      ELSE
        dist = dist2
      ENDIF
    ELSEIF (quad == 4)
      w4 = w4 * w4 + c
      w = w4
      awr = abs(real(w4)), awi = abs(imag(w4))
      IF ((awr < k) && (awr > j) && \
          (awi < k) && (awi > j))
        awr5 = abs(awr - 0.5), awi5 = abs(awi - 0.5)
        IF (awr5 <= awi5)
          dist = awr5
        ELSE
          dist = awi5
        ENDIF
      ELSE
        dist = 1.0e30
      ENDIF
    ENDIF
  ENDIF
  IF (dist < size && iter > 0)
    bailout = 1
    z = index_factor * dist + range_num * 30 + 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == 8)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < 4
  ;SOURCE: 98msg.frm
}


FourierJ {; Julia Set of FourierM
          ; p1 and p2: coefficients of the sine waves
          ; bailout fixed at 8
  z=pixel
  c=p3:
  z=p1*sin(z)+p2*sin(2*z)+c
  |z|<=8
  ;SOURCE: 98msg.frm
}


FourierM {; First three terms of a Fourier series
          ; p1 and p2: coefficients of the sine waves
          ; bailout fixed at 8
  z=0 
  c=pixel:
  z=p1*sin(z)+p2*sin(2*z)+c
  |z|<=8
  ;SOURCE: 98msg.frm
}


fracfern {; Jim Muth
          ; As Posted in Fractal-Art, 4/97
  z=c=pixel:
  z=z^1000*(c^(-1002))+c
  |z| <= 10000
  ;SOURCE: 97msg.frm
}


Fractal1 {
  z=0, c=pixel:
  z=sin(Z/.4)+c
  |z|<4
  ;SOURCE: 1st.frm
}


Fractal2 {
  z=0, c=pixel:
  z=z^500+c
  |z|<4
  ;SOURCE: 1st.frm
}


Fractal3 {
  z=0, c=pixel:
  z=cotan(z*z)+c
  |z|<4
  ;SOURCE: 1st.frm
}


Fractal4 {; Must! Press x to get to menu to set inside to bof60**
  z=c=pixel:
  z=exp(z*z)+c
  |z|<=4
  ;SOURCE: dn2nd.frm
}


Fractal5 {
  z=c=pixel:
  z=z*z/(tanh(c))+.25
  |z|<=4
  ;SOURCE: dn2nd.frm
}


Fractal6 {
   ; Must! press x to get to basic option menu and set inside to bof60*
   ; Hour Glass
  z=c=pixel
  x=real(pixel)
  y=imag(pixel):
  z=((conj(x)*cotan(y))^3)+c
  |z| <= 4
  ;SOURCE: dn2nd.frm
}


Fractal7 {
  z=pixel:
  z=(cabs(z) / sqr(z)^2) - z
  |z| <= 4
  ;SOURCE: dn2nd.frm
}


FractalFender (XAXIS_NOPARM) {; Edited for Fractint v. 20 
                              ; by George Martin, 10/98
  z=p1, x=|z|:
  z=cosh(z)+pixel
  z=sqr(z)+pixel, x=|z|
  x<=4 
  ;SOURCE: choice.frm
}


FractalFender2 (XAXIS_NOPARM) {; Edited for Fractint v. 20
                               ; by George Martin, 10/98  
  z=p1, x=|z|:
  z=cosxx(z)+pixel
  z=sqr(z)+pixel, x=|z|
  x<=4 
  ;SOURCE: choice.frm
}


FractalFender2C (XAXIS_NOPARM) {; Edited for Fractint v. 20
                                ; by George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=cosxx(z)+pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4 
  ;SOURCE: choice.frm
}


FractalFender2C.1 (XAXIS_NOPARM) {; Edited for Fractint v. 20
                                  ; by George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=cos(z)+pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4 
  ;SOURCE: choice.frm
}


FractalFenderC (XAXIS_NOPARM) {; Spectacular!
    ; Modified for if..else logic 3/18/97 by Sylvie Gallet
   z = p1, x = |z| :
   IF (1 < x)
      z = cosh(z) + pixel
   ENDIF
   z = sqr(z) + pixel, x = |z|
   x <= 4
  ;SOURCE: fract196.frm
}


FractalFenderCarr (XAXIS_NOPARM) {; Edited for Fractint v. 20
                                  ; by George Martin, 10/98
  z=(pixel)/(1.099,0), x=|z|:
  IF (x>1)
    z=cosxx(z)+pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4 
  ;SOURCE: spcb.frm
}


FractalFenderCaSk (XAXIS_NOPARM) {; Edited for Fractint v. 20
                                  ; by George Martin, 10/98
  z=(pixel)/p1
  x=|z|:
  IF (x>1)
    z=fn1(z)+pixel
  ENDIF
  z=fn2(z)+pixel, x=|z|
  x<=4 
  ;SOURCE: spec.frm
}


FractalFenderTwo (XAXIS_NOPARM) {; Edited for Fractint v. 20
                                 ; by George Martin, 10/98
  z=p1, x=|z|:
  z=cos(z)+pixel
  z=sqr(z)+pixel, x=|z|
  x<=4 
  ;SOURCE: form1.frm
}


FractalFenderTwoC (XAXIS_NOPARM) {; Edited for Fractint v. 20 
                                  ; by George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=cos(z)+pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4 
  ;SOURCE: form1.frm
}


FractalText {; assembled by Jan Maarten van der Valk [100256,3721]
             ; original by Les St Clair
             ; requires 'periodicity=0'
             ; Added variable "newpixel". G. Martin 6/27/99
  x=real(scrnpix)/real(scrnmax)
  y=(imag(scrnmax)-imag(scrnpix))/imag(scrnmax)
  z=x+flip(y)
  chrF1 = x<0.0675||(y<0.74375&&y>0.70625)||y>0.7625&&x>0.03&&x<0.1275
  xr=2*x
  chrR2 = y<0.74375&&y>0.70625||y>0.7625||x<0.1725&&x>0.135 \
    &&x<0.2025||(abs(cabs(z+(-0.2025,-0.75312))-0.02812)<0.01875 \
    &&x>0.2025)||(y<0.725&&y<-xr+1.14875&&y>-xr+1.0649)
  xa=3*x
  chrA3 = y>xa-0.23921||y>-xa+1.72063||(y<0.71&&y>0.6725) \
    &&y<xa-0.12063&&y<-xa+1.83921
  xc=1*x
  chrC4 = abs(cabs(z+(-0.4639,-0.725))-0.05625)<0.01875 \
    &&(x<0.4639||y>xc+0.2611||y<-xc+1.1889)
  chrT5 = y>0.7625&&x>0.52444&&x<0.63694||(x>0.56194&&x<0.59944)
  chrA6 = y>xa-1.35689||y>-xa+2.83831||(y<0.71&&y>0.6725) \
    &&y<xa-1.23831&&y<-xa+2.95689
  chrL7 = x<0.81396||y<0.6875&&x>0.77646&&x<0.87396
  test1 = chrF1||chrR2||chrA3||chrC4||chrT5||chrA6||chrL7&&y>0.65&&y<0.8
  chrT1 = y>0.3495&&x>0.028&&x<0.256||(x>0.09925&&x<0.18475)
  chrE2 = x<0.35575||y<0.2355||(y<0.33525&&y>0.24975) \
    ||y>0.3495&&x>0.27025&&x<0.46975
  xx=2*x
  chrX3 = y<xx-0.818&&y>xx-1.00918||(y>-xx+1.403&&y<-xx+1.59418)
  chrT4 = y>0.3495&&x>0.73634&&x<0.96434||(x>0.80759&&x<0.89309)
  test2 = chrT1||chrE2||chrX3||chrT4&&y>0.15&&y<0.435
  test = test1||test2
  f1=sin(.5*pixel)
  f2=1/(32*pixel)
  newpixel=(test==0)*f1+(test!=0)*f2
  z=1+(0,-0.65)/fn3(newpixel+(0,0.75)):
  z2=z*z, z4=z2*z2, n=z4*z2-1, z=z-n/(6*z4*z)
  |n|>=.0001
  ;SOURCE: 96_msg_2.frm
}


FRACTEST {; TEST formula by Les St Clair 1996
     ; Created using "FracText" by Jan Maarten van der Valk
     ; Two formulas "FRAC" and "TEXT" have been amalgamated
     ; There is an error in the way the program handles the letter "C"
  z = fn1(log(pixel-.025))*2, x=real(z), y=imag(z), xa=3.00000*x 
  xc=1.00000*x, xk=1.50000*x, xm=2.50000*x, xn=2.50000*x 
  xq=1.40000*x, xr=2.00000*x, xv=3.50000*x, xw=4.00000*x 
  xx=2.00000*x, xy=2.50000*x, xz=1.50000*x, xsl=4.00000*x
  x1=1.50000*x
  chrf1 = (y<1.25000&&y>1.15000)||(y>1.60000)
  chrf1 = ((x<-1.15000)||chrf1)&&((x>-1.25000)&&(x<-0.75000))
  chrr2 = (y<1.25000&&y>1.15000)||y>1.60000||x<-0.60000
  chrr2 = chrr2&&((x>-0.70000) && (x<-0.40000))
  chrr2 = chrr2 || ((cabs(sqrt(|z+(0.40000,-1.42500)|)-0.22500)<0.05000)\ 
                   && (x>-0.40000))
  chrr2 = chrr2||(y<1.20000&&y<-xr+0.45000&&y>-xr+0.22639)
  chra3 = (y>(xa+0.60877)||y>(-xa+2.47500))||(y<1.10000&&y>1.00000)
  chra3 = chra3&&(y<(xa+0.92500)&&y<(-xa+2.79123))
  chrc4 = (cabs(sqrt(|z+(-1.24708,-1.20000)|)-0.45000)<0.05000)\
             &&(y>xc+-0.04708||y<-xc+2.44708)
  chrt1 = y>0.20000&&x>-1.25000&&x<-0.65000
  chrt1 = chrt1||(x>-1.00000&&x<-0.90000)
  chre2 = (y<-0.60000)||((y<-0.15000)&&(y>-0.25000))||(y>0.20000)
  chre2 = ((x<-0.50000)||chre2)&&((x>-0.60000)&&(x<-0.10000))
  chrx3 = (y<xx+-0.60000&&y>xx+-0.82361)||(y>-xx+0.20000&&y<-xx+0.42361)
  chrt4 = y>0.20000&&x>0.61180&&x<1.21180
  chrt4 = chrt4||(x>0.86180&&x<0.96180)
  test = 1 - fn2(real(chrf1||chrr2||chra3||chrc4)*real(y>0.70000)\
             *real(y<1.70000)) 
  test2 = 1 - fn2(real(chrt1||chre2||chrx3||chrt4)*real(y>-0.70000)\
              *real(y<0.30000))
  z = 1+(0,-.65)/fn3(pixel+(0.0,.75)) :
  z2 = z*z, z4 = z2*z2, n = z4*z2-1, z = z-n/(6*z4*z)
  (|n|>=.0001) && test && test2
  ;SOURCE: 96_msg_2.frm
}


Fractint {; Sylvie Gallet [101324,3444], 1996
          ; Modified for if..else logic 3/21/97 by Sylvie Gallet
          ; requires 'periodicity=0'
   z = pixel-0.025, x = real(z), y = imag(z), text = 0
   IF (y > -0.225 && y < 0.225)
      x1 = x*1.8, x3 = 3*x
      ty2 = y < 0.025 && y > -0.025 || y > 0.175
      IF ( x < -1.2 || ty2 && x > -1.25 && x < -1 )
         text = 1
      ELSEIF ( x < -0.9 || ty2 && x > -0.95 && x < -0.8                  \
               || (cabs(sqrt(|z+(0.8,-0.1)|)-0.1) < 0.025 && x > -0.8)   \
               || (y < -x1-1.44 && y > -x1-1.53 && y < 0.025) )
         text = 1
      ELSEIF ( y > x3+1.5 || y > -x3-1.2 || (y > -0.125 && y < -0.075)   \
               && y < x3+1.65 && y < -x3-1.05 )
         text = 1
      ELSEIF ( cabs(sqrt(|z+0.05|)-0.2) < 0.025 && x < 0.05 )
         text = 1
      ELSEIF ( (x > 0.225 && x < 0.275 || y > 0.175) && x > 0.1 && x < 0.4 )
         text = 1
      ELSEIF ( x > 0.45 && x < 0.5 )
         text = 1
      ELSEIF ( x < 0.6 || x > 0.8 || ((y > -x1+1.215) && (y < -x1+1.305))  \
               && x > 0.55 && x < 0.85 )
         text = 1
      ELSEIF ( x > 1.025 && x < 1.075 || y > 0.175 && x > 0.9 && x < 1.2 )
         text = 1
      ENDIF
   ENDIF
   z = 1 + (0.0,-0.65) / (pixel+(0.0,.75))
   :
   IF (text == 0)
      z2 = z*z, z4 = z2*z2, n = z4*z2-1, z = z-n/(6*z4*z)
      IF (|n| >= 0.0001)
         continue = 1
      ELSE
         continue = 0
      ENDIF
   ENDIF
   continue
  ;SOURCE: fract196.frm
}


Fractint-5 {; Sylvie Gallet [101324,3444], 1996
            ; requires 'periodicity=0' 
  z = fn1(log(pixel-0.025)), x=real(z), y=imag(z), x1=x*1.8, x3=3*x
  ty2 = ( (y<0.025) && (y>-0.025) ) || (y>0.175)
  f = ( (x<-1.2) || ty2 ) && ( (x>-1.25) && (x<-1) )
  r = ( (x<-0.9) || ty2 ) && ( (x>-0.95) && (x<-0.8) )
  r = r || ((cabs(sqrt(|z+(0.8,-0.1)|)-0.1)<0.025) && (x>-0.8))
  r = r || (((y<(-x1-1.44)) && (y>(-x1-1.53))) && (y<0.025))
  a = (y>(x3+1.5)) || (y>(-x3-1.2)) || ((y>-0.125) && (y<-0.075))
  a = a && ((y<(x3+1.65)) && (y<(-x3-1.05)))
  c = (cabs(sqrt(|z+0.05|)-0.2)<0.025) && (x<0.05)
  t1 = ((x>0.225) && (x<0.275) || (y>0.175)) && ((x>0.1) && (x<0.4))
  i = (x>0.45) && (x<0.5)
  n = (x<0.6) || (x>0.8) || ((y>-x1+1.215) && (y<-x1+1.305))
  n = n && (x>0.55) && (x<0.85)
  t2 = ((x>1.025) && (x<1.075) || (y>0.175)) && ((x>0.9) && (x<1.2))
  test = 1 - (real(f||r||a||c||t1||i||n||t2)*real(y>-0.225)*real(y<0.225)) 
  z = 1+(0.0,-0.65)/(pixel+(0.0,.75)) :
  z2 = fn2(z*z)*(z*z), z4 = z2*z2, n = z4*z2-1, z = z-n/(6*z4*z)
  (|n|>=0.0001) && test
  ;SOURCE: bej012.frm
}


Fractint-6 {; Sylvie Gallet [101324,3444], 1996
            ; requires 'periodicity=0' 
  z = fn1(flip(log(sqrt(pixel-0.025)))), x=real(z), y=imag(z)
  x1=x*1.8, x3=3*x
  ty2 = ( (y<0.025) && (y>-0.025) ) || (y>0.175)
  f = ( (x<-1.2) || ty2 ) && ( (x>-1.25) && (x<-1) )
  r = ( (x<-0.9) || ty2 ) && ( (x>-0.95) && (x<-0.8) )
  r = r || ((cabs(sqrt(|z+(0.8,-0.1)|)-0.1)<0.025) && (x>-0.8))
  r = r || (((y<(-x1-1.44)) && (y>(-x1-1.53))) && (y<0.025))
  a = (y>(x3+1.5)) || (y>(-x3-1.2)) || ((y>-0.125) && (y<-0.075))
  a = a && ((y<(x3+1.65)) && (y<(-x3-1.05)))
  c = (cabs(sqrt(|z+0.05|)-0.2)<0.025) && (x<0.05)
  t1 = ((x>0.225) && (x<0.275) || (y>0.175)) && ((x>0.1) && (x<0.4))
  i = (x>0.45) && (x<0.5)
  n = (x<0.6) || (x>0.8) || ((y>-x1+1.215) && (y<-x1+1.305))
  n = n && (x>0.55) && (x<0.85)
  t2 = ((x>1.025) && (x<1.075) || (y>0.175)) && ((x>0.9) && (x<1.2))
  test = 1 - (real(f||r||a||c||t1||i||n||t2)*real(y>-0.225)*real(y<0.225)) 
  z = 1+(0.0,-0.65)/(pixel+(0.0,.75)) :
  z2 = fn2(fn3(z*z)*fn4(z*z)), z4 = z2*z2, n = z4*z2-1, z = z-n/(6*z4*z)
  (|n|>=0.0001) && test
  ;SOURCE: bej012.frm
}


Fractint-9-10 {; Sylvie Gallet [101324,3444], 1996
               ; requires 'periodicity=0' 
  z = fn1(flip(log(sqrt(pixel-0.025)))), x=real(z), y=imag(z)
  x1=x*1.8, x3=3*x
  ty2 = ( (y<0.025) && (y>-0.025) ) || (y>0.175)
  f = ( (x<-1.2) || ty2 ) && ( (x>-1.25) && (x<-1) )
  r = ( (x<-0.9) || ty2 ) && ( (x>-0.95) && (x<-0.8) )
  r = r || ((cabs(sqrt(|z+(0.8,-0.1)|)-0.1)<0.025) && (x>-0.8))
  r = r || (((y<(-x1-1.44)) && (y>(-x1-1.53))) && (y<0.025))
  a = (y>(x3+1.5)) || (y>(-x3-1.2)) || ((y>-0.125) && (y<-0.075))
  a = a && ((y<(x3+1.65)) && (y<(-x3-1.05)))
  c = (cabs(sqrt(|z+0.05|)-0.2)<0.025) && (x<0.05)
  t1 = ((x>0.225) && (x<0.275) || (y>0.175)) && ((x>0.1) && (x<0.4))
  i = (x>0.45) && (x<0.5)
  n = (x<0.6) || (x>0.8) || ((y>-x1+1.215) && (y<-x1+1.305))
  n = n && (x>0.55) && (x<0.85)
  t2 = ((x>1.025) && (x<1.075) || (y>0.175)) && ((x>0.9) && (x<1.2))
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95), rad = 3.1, center = (1.0,0.1) 
  move = center+rad/(pix-center)
  test = 1 - fn2((move/p1)/(real(f||r||a||c||t1||i||n||t2)\
       *real(y>-0.225)*real(y<0.225))) 
  z = 1+(0.0,-0.65)/(pixel+(0.0,.75)) :
  z2 = z*z, z4 = z2*z2, n = z4*z2-1, z = z-n/(6*z4*z)
  (|n|>=0.0001) && test
  ;SOURCE: bej012.frm
}


Fractint-9-11 {; Sylvie Gallet [101324,3444], 1996
               ; requires 'periodicity=0' 
  z = fn1(log(pixel-0.025))*2, x=real(z), y=imag(z), x1=x*1.8, x3=3*x
  ty2 = ( (y<0.025) && (y>-0.025) ) || (y>0.175)
  f = ( (x<-1.2) || ty2 ) && ( (x>-1.25) && (x<-1) )
  r = ( (x<-0.9) || ty2 ) && ( (x>-0.95) && (x<-0.8) )
  r = r || ((cabs(sqrt(|z+(0.8,-0.1)|)-0.1)<0.025) && (x>-0.8))
  r = r || (((y<(-x1-1.44)) && (y>(-x1-1.53))) && (y<0.025))
  a = (y>(x3+1.5)) || (y>(-x3-1.2)) || ((y>-0.125) && (y<-0.075))
  a = a && ((y<(x3+1.65)) && (y<(-x3-1.05)))
  c = (cabs(sqrt(|z+0.05|)-0.2)<0.025) && (x<0.05)
  t1 = ((x>0.225) && (x<0.275) || (y>0.175)) && ((x>0.1) && (x<0.4))
  i = (x>0.45) && (x<0.5)
  n = (x<0.6) || (x>0.8) || ((y>-x1+1.215) && (y<-x1+1.305))
  n = n && (x>0.55) && (x<0.85)
  t2 = ((x>1.025) && (x<1.075) || (y>0.175)) && ((x>0.9) && (x<1.2)) 
  test = 1 - fn2((real(f||r||a||c||t1||i||n||t2)*real(y>-0.225)*real(y<0.225))) 
  z = 1+(0.0,-0.65)/fn3(pixel+(0.0,.75)) :
  z2 = z*z, z4 = z2*z2, n = z4*z2-1, z = z-n/(6*z4*z)
  (|n|>=0.0001) && test
  ;SOURCE: bej012.frm
}


Fractint-9-12 {; Sylvie Gallet [101324,3444], 1996
               ; requires 'periodicity=0' 
  z = fn1(log(pixel-0.025))*2, x=real(z), y=imag(z), x1=x*1.8, x3=3*x
  ty2 = ( (y<0.025) && (y>-0.025) ) || (y>0.175)
  f = ( (x<-1.2) || ty2 ) && ( (x>-1.25) && (x<-1) )
  r = ( (x<-0.9) || ty2 ) && ( (x>-0.95) && (x<-0.8) )
  r = r || ((cabs(sqrt(|z+(0.8,-0.1)|)-0.1)<0.025) && (x>-0.8))
  r = r || (((y<(-x1-1.44)) && (y>(-x1-1.53))) && (y<0.025))
  a = (y>(x3+1.5)) || (y>(-x3-1.2)) || ((y>-0.125) && (y<-0.075))
  a = a && ((y<(x3+1.65)) && (y<(-x3-1.05)))
  c = (cabs(sqrt(|z+0.05|)-0.2)<0.025) && (x<0.05)
  t1 = ((x>0.225) && (x<0.275) || (y>0.175)) && ((x>0.1) && (x<0.4))
  i = (x>0.45) && (x<0.5)
  n = (x<0.6) || (x>0.8) || ((y>-x1+1.215) && (y<-x1+1.305))
  n = n && (x>0.55) && (x<0.85)
  t2 = ((x>1.025) && (x<1.075) || (y>0.175)) && ((x>0.9) && (x<1.2)) 
  test = 1 - fn2((real(fn3(f||r||a||c||t1||i||n||t2))*real(y>-0.225)*real(y<0.225))) 
  z = 1+fn4((0.0,-0.65)/(pixel+(0.0,.75))) :
  z2 = z*z, z4 = z2*z2, n = z4*z2-1, z = z-n/(6*z4*z)
  (|n|>=0.0001) && test
  ;SOURCE: bej012.frm
}


Fractint-9-13 {; Sylvie Gallet [101324,3444], 1996
               ; requires 'periodicity=0' 
  z = fn1(log(pixel-0.025))^3, x=real(z), y=imag(z), x1=x*1.8, x3=3*x
  ty2 = ( (y<0.025) && (y>-0.025) ) || (y>0.175)
  f = ( (x<-1.2) || ty2 ) && ( (x>-1.25) && (x<-1) )
  r = ( (x<-0.9) || ty2 ) && ( (x>-0.95) && (x<-0.8) )
  r = r || ((cabs(sqrt(|z+(0.8,-0.1)|)-0.1)<0.025) && (x>-0.8))
  r = r || (((y<(-x1-1.44)) && (y>(-x1-1.53))) && (y<0.025))
  a = (y>(x3+1.5)) || (y>(-x3-1.2)) || ((y>-0.125) && (y<-0.075))
  a = a && ((y<(x3+1.65)) && (y<(-x3-1.05)))
  c = (cabs(sqrt(|z+0.05|)-0.2)<0.025) && (x<0.05)
  t1 = ((x>0.225) && (x<0.275) || (y>0.175)) && ((x>0.1) && (x<0.4))
  i = (x>0.45) && (x<0.5)
  n = (x<0.6) || (x>0.8) || ((y>-x1+1.215) && (y<-x1+1.305))
  n = n && (x>0.55) && (x<0.85)
  t2 = ((x>1.025) && (x<1.075) || (y>0.175)) && ((x>0.9) && (x<1.2)) 
  test = 1 - fn2((real(fn3(f||r||a||c||t1||i||n||t2))*real(y>-0.225)*real(y<0.225))) 
  z = 1+fn4((0.0,-0.65)/(pixel+(0.0,.75))) :
  z2 = z*z, z4 = z2*z2, n = z4*z2-1, z = z-n/(6*z4*z)
  (|n|>=0.0001) && test
  ;SOURCE: bej012.frm
}


Fractint-9-15 {; Sylvie Gallet [101324,3444], 1996
               ; requires 'periodicity=0' 
  z = fn1(flip(log(sqrt(pixel-0.025^3)))), x=real(z), y=imag(z)
  x1=x*1.8, x3=3*x
  ty2 = ( (y<0.025) && (y>-0.025) ) || (y>0.175)
  f = ( (x<-1.2) || ty2 ) && ( (x>-1.25) && (x<-1) )
  r = ( (x<-0.9) || ty2 ) && ( (x>-0.95) && (x<-0.8) )
  r = r || ((cabs(sqrt(|z+(0.8,-0.1)|)-0.1)<0.025) && (x>-0.8))
  r = r || (((y<(-x1-1.44)) && (y>(-x1-1.53))) && (y<0.025))
  a = (y>(x3+1.5)) || (y>(-x3-1.2)) || ((y>-0.125) && (y<-0.075))
  a = a && ((y<(x3+1.65)) && (y<(-x3-1.05)))
  c = (cabs(sqrt(|z+0.05|)-0.2)<0.025) && (x<0.05)
  t1 = ((x>0.225) && (x<0.275) || (y>0.175)) && ((x>0.1) && (x<0.4))
  i = (x>0.45) && (x<0.5)
  n = (x<0.6) || (x>0.8) || ((y>-x1+1.215) && (y<-x1+1.305))
  n = n && (x>0.55) && (x<0.85)
  t2 = ((x>1.025) && (x<1.075) || (y>0.175)) && ((x>0.9) && (x<1.2)) 
  test = fn2(1 - (real(fn3(f||r||a||c||t1||i||n||t2))*real(y>-0.225)*real(y<0.225))) 
  z = 1+fn4((0.0,-0.65)/(pixel+(0.0,.75))) :
  z2 = z*z, z4 = z2*z2, n = z4*z2-1, z = z-n/(6*z4*z)
  (|n|>=0.0001) && test
  ;SOURCE: bej012.frm
}


Fractint-9-16 {; Sylvie Gallet [101324,3444], 1996
               ; requires 'periodicity=0' 
  z = fn1(flip(log(sqrt(pixel-0.025^33)))), x=real(z)
  y=imag(z), x1=x*1.8, x3=3*x
  ty2 = ( (y<0.025) && (y>-0.025) ) || (y>0.175)
  f = ( (x<-1.2) || ty2 ) && ( (x>-1.25) && (x<-1) )
  r = ( (x<-0.9) || ty2 ) && ( (x>-0.95) && (x<-0.8) )
  r = r || ((cabs(sqrt(|z+(0.8,-0.1)|)-0.1)<0.025) && (x>-0.8))
  r = r || (((y<(-x1-1.44)) && (y>(-x1-1.53))) && (y<0.025))
  a = (y>(x3+1.5)) || (y>(-x3-1.2)) || ((y>-0.125) && (y<-0.075))
  a = a && ((y<(x3+1.65)) && (y<(-x3-1.05)))
  c = (cabs(sqrt(|z+0.05|)-0.2)<0.025) && (x<0.05)
  t1 = ((x>0.225) && (x<0.275) || (y>0.175)) && ((x>0.1) && (x<0.4))
  i = (x>0.45) && (x<0.5)
  n = (x<0.6) || (x>0.8) || ((y>-x1+1.215) && (y<-x1+1.305))
  n = n && (x>0.55) && (x<0.85)
  t2 = ((x>1.025) && (x<1.075) || (y>0.175)) && ((x>0.9) && (x<1.2)) 
  test = fn2(1 - (real(f||r||a||c||t1||i||n||t2))*real(y>-0.225)*real(y<0.225)) 
  z = 1+fn3((0.0,-0.65)/(pixel+(0.0,.75))) :
  z2 = fn4(z*z)*(z*z), z4 = z2*z2, n = z4*z2-1, z = z-n/(6*z4*z)
  (|n|>=0.0001) && test
  ;SOURCE: bej012.frm
}


Fractint-9-20 {; Sylvie Gallet [101324,3444], 1996
               ; requires 'periodicity=0' 
  z = fn1(fn2(pixel)-fn3(0.025)), x=real(z), y=imag(z)
  x1=x*1.8, x3=3*x
  ty2 = ( (y<0.025) && (y>-0.025) ) || (y>0.175)
  f = ( (x<-1.2) || ty2 ) && ( (x>-1.25) && (x<-1) )
  r = ( (x<-0.9) || ty2 ) && ( (x>-0.95) && (x<-0.8) )
  r = r || ((cabs(sqrt(|z+(0.8,-0.1)|)-0.1)<0.025) && (x>-0.8))
  r = r || (((y<(-x1-1.44)) && (y>(-x1-1.53))) && (y<0.025))
  a = (y>(x3+1.5)) || (y>(-x3-1.2)) || ((y>-0.125) && (y<-0.075))
  a = a && ((y<(x3+1.65)) && (y<(-x3-1.05)))
  c = (cabs(sqrt(|z+0.05|)-0.2)<0.025) && (x<0.05)
  t1 = ((x>0.225) && (x<0.275) || (y>0.175)) && ((x>0.1) && (x<0.4))
  i = (x>0.45) && (x<0.5)
  n = (x<0.6) || (x>0.8) || ((y>-x1+1.215) && (y<-x1+1.305))
  n = n && (x>0.55) && (x<0.85)
  t2 = ((x>1.025) && (x<1.075) || (y>0.175)) && ((x>0.9) && (x<1.2))
  test = 1 - (real(f||r||a||c||t1||i||n||t2)*real(y>-0.225)*real(y<0.225)) 
  z = 1+(0.0,-0.65)/(pixel+(0.0,.75)) :
  z2 = z*z, z4 = z2*z2, n = z4*z2-1, z = z-n/(6*z4*z)
  (|n|>=0.0001) && test
  ;SOURCE: bej012.frm
}


Fractint-9-21 {; Sylvie Gallet [101324,3444], 1996
               ; requires 'periodicity=0' 
  z = fn1(fn2(pixel)-fn3(0.025)^fn4(3)), x=real(z), y=imag(z)
  x1=x*1.8, x3=3*x
  ty2 = ( (y<0.025) && (y>-0.025) ) || (y>0.175)
  f = ( (x<-1.2) || ty2 ) && ( (x>-1.25) && (x<-1) )
  r = ( (x<-0.9) || ty2 ) && ( (x>-0.95) && (x<-0.8) )
  r = r || ((cabs(sqrt(|z+(0.8,-0.1)|)-0.1)<0.025) && (x>-0.8))
  r = r || (((y<(-x1-1.44)) && (y>(-x1-1.53))) && (y<0.025))
  a = (y>(x3+1.5)) || (y>(-x3-1.2)) || ((y>-0.125) && (y<-0.075))
  a = a && ((y<(x3+1.65)) && (y<(-x3-1.05)))
  c = (cabs(sqrt(|z+0.05|)-0.2)<0.025) && (x<0.05)
  t1 = ((x>0.225) && (x<0.275) || (y>0.175)) && ((x>0.1) && (x<0.4))
  i = (x>0.45) && (x<0.5)
  n = (x<0.6) || (x>0.8) || ((y>-x1+1.215) && (y<-x1+1.305))
  n = n && (x>0.55) && (x<0.85)
  t2 = ((x>1.025) && (x<1.075) || (y>0.175)) && ((x>0.9) && (x<1.2))
  test = 1 - (real(f||r||a||c||t1||i||n||t2)*real(y>-0.225)*real(y<0.225)) 
  z = 1+(0.0,-0.65)/(pixel+(0.0,.75)) :
  z2 = z*z, z4 = z2*z2, n = z4*z2-1, z = z-n/(6*z4*z)
  (|n|>=0.0001) && test
  ;SOURCE: bej012.frm
}


Fractint-9-26 {; Sylvie Gallet [101324,3444], 1996
               ; requires 'periodicity=0' 
  z = fn1(sinh(log(pixel-0.025))), Bossa = real(z), Nova = imag(z)
  Bossa1 = Bossa - p1*fn1(Nova+p2*fn2(Nova))
  Nova1 = Nova -  p1*fn1(Bossa+p2*fn2(Bossa))
  x=real(z), y=imag(z), x1=x*1.8, x3=3*x
  ty2 = ( (y<0.025) && (y>-0.025) ) || (y>0.175)
  f = ( (x<-1.2) || ty2 ) && ( (x>-1.25) && (x<-1) )
  r = ( (x<-0.9) || ty2 ) && ( (x>-0.95) && (x<-0.8) )
  r = r || ((cabs(sqrt(|z+(0.8,-0.1)|)-0.1)<0.025) && (x>-0.8))
  r = r || (((y<(-x1-1.44)) && (y>(-x1-1.53))) && (y<0.025))
  a = (y>(x3+1.5)) || (y>(-x3-1.2)) || ((y>-0.125) && (y<-0.075))
  a = a && ((y<(x3+1.65)) && (y<(-x3-1.05)))
  c = (cabs(sqrt(|z+0.05|)-0.2)<0.025) && (x<0.05)
  t1 = ((x>0.225) && (x<0.275) || (y>0.175)) && ((x>0.1) && (x<0.4))
  i = (x>0.45) && (x<0.5)
  n = (x<0.6) || (x>0.8) || ((y>-x1+1.215) && (y<-x1+1.305))
  n = n && (x>0.55) && (x<0.85)
  t2 = ((x>1.025) && (x<1.075) || (y>0.175)) && ((x>0.9) && (x<1.2))
  test = 1 - (real(f||r||a||c||t1||i||n||t2)*real(y>-0.225)*real(y<0.225)) 
  z = 1+(0.0,-0.65)/fn2(pixel+(0.0,.75))*(fn3(Bossa1)+flip(fn4(Nova1))) :
  z2 = z*z, z4 = z2*z2, n = z4*z2-1, z = z-n/(6*z4*z)
  (|n|>=0.0001) && test
  ;SOURCE: bej012.frm
}


Fractint-9-29 {; Sylvie Gallet [101324,3444], 1996
               ; requires 'periodicity=0' 
  z = fn1(log(pixel-0.025)) 
  Bossa = pixel^p1/p2 + p2^pixel/(p1*pixel), Nova = p2/p1
  Samba = Bossa*Nova
  x=real(z), y=imag(z), x1=x*1.8, x3=3*x
  ty2 = ( (y<0.025) && (y>-0.025) ) || (y>0.175)
  f = ( (x<-1.2) || ty2 ) && ( (x>-1.25) && (x<-1) )
  r = ( (x<-0.9) || ty2 ) && ( (x>-0.95) && (x<-0.8) )
  r = r || ((cabs(sqrt(|z+(0.8,-0.1)|)-0.1)<0.025) && (x>-0.8))
  r = r || (((y<(-x1-1.44)) && (y>(-x1-1.53))) && (y<0.025))
  a = (y>(x3+1.5)) || (y>(-x3-1.2)) || ((y>-0.125) && (y<-0.075))
  a = a && ((y<(x3+1.65)) && (y<(-x3-1.05)))
  c = (cabs(sqrt(|z+0.05|)-0.2)<0.025) && (x<0.05)
  t1 = ((x>0.225) && (x<0.275) || (y>0.175)) && ((x>0.1) && (x<0.4))
  i = (x>0.45) && (x<0.5)
  n = (x<0.6) || (x>0.8) || ((y>-x1+1.215) && (y<-x1+1.305))
  n = n && (x>0.55) && (x<0.85)
  t2 = ((x>1.025) && (x<1.075) || (y>0.175)) && ((x>0.9) && (x<1.2))
  test = 1 - (real(f||r||a||c||t1||i||n||t2)*real(y>-0.225)*real(y<0.225)) 
  z = 1+(0.0,-0.65)/fn2((pixel+(0.0,.75))*Samba) :
  z2 = z*z, z4 = z2*z2, n = z4*z2-1, z = z-n/(6*z4*z)
  (|n|>=0.0001) && test
  ;SOURCE: bej012.frm
}


Fractint-9-30 {; Sylvie Gallet [101324,3444], 1996
               ; requires 'periodicity=0' 
  z = pixel-0.025 
  Bossa = pixel^p1/p2 + p2^pixel/(p1*pixel) , Nova = p2/p1
  Samba = Bossa*Nova
  x=real(z), y=imag(z), x1=x*1.8, x3=3*x
  ty2 = ( (y<0.025) && (y>-0.025) ) || (y>0.175)
  f = ( (x<-1.2) || ty2 ) && ( (x>-1.25) && (x<-1) )
  r = ( (x<-0.9) || ty2 ) && ( (x>-0.95) && (x<-0.8) )
  r = r || ((cabs(sqrt(|z+(0.8,-0.1)|)-0.1)<0.025) && (x>-0.8))
  r = r || (((y<(-x1-1.44)) && (y>(-x1-1.53))) && (y<0.025))
  a = (y>(x3+1.5)) || (y>(-x3-1.2)) || ((y>-0.125) && (y<-0.075))
  a = a && ((y<(x3+1.65)) && (y<(-x3-1.05)))
  c = (cabs(sqrt(|z+0.05|)-0.2)<0.025) && (x<0.05)
  t1 = ((x>0.225) && (x<0.275) || (y>0.175)) && ((x>0.1) && (x<0.4))
  i = (x>0.45) && (x<0.5)
  n = (x<0.6) || (x>0.8) || ((y>-x1+1.215) && (y<-x1+1.305))
  n = n && (x>0.55) && (x<0.85)
  t2 = ((x>1.025) && (x<1.075) || (y>0.175)) && ((x>0.9) && (x<1.2))
  test = 1 - (real(f||r||a||c||t1||i||n||t2)*real(y>-0.225)*real(y<0.225)) 
  z = fn1(1+fn2(0.0,-0.65)/fn3((pixel+(0.0,.75))*Samba)) :
  z2 = z*z, z4 = z2*z2, n = z4*z2-1, z = z-n/(6*z4*z)
  (|n|>=0.0001) && test
  ;SOURCE: bej012.frm
}


Fractint-9-33 {; Sylvie Gallet [101324,3444], 1996
               ; requires 'periodicity=0' 
  z = pixel-0.025 
  Bossa = pixel^p1/p2 + p2^pixel/(p1*pixel), Nova = p2/p1
  Samba = Bossa*Nova
  x=real(z), y=imag(z), x1=x*1.8, x3=3*x
  ty2 = ( (y<0.025) && (y>-0.025) ) || (y>0.175)
  f = ( (x<-1.2) || ty2 ) && ( (x>-1.25) && (x<-1) )
  r = ( (x<-0.9) || ty2 ) && ( (x>-0.95) && (x<-0.8) )
  r = r || ((cabs(sqrt(|z+(0.8,-0.1)|)-0.1)<0.025) && (x>-0.8))
  r = r || (((y<(-x1-1.44)) && (y>(-x1-1.53))) && (y<0.025))
  a = (y>(x3+1.5)) || (y>(-x3-1.2)) || ((y>-0.125) && (y<-0.075))
  a = a && ((y<(x3+1.65)) && (y<(-x3-1.05)))
  c = (cabs(sqrt(|z+0.05|)-0.2)<0.025) && (x<0.05)
  t1 = ((x>0.225) && (x<0.275) || (y>0.175)) && ((x>0.1) && (x<0.4))
  i = (x>0.45) && (x<0.5)
  n = (x<0.6) || (x>0.8) || ((y>-x1+1.215) && (y<-x1+1.305))
  n = n && (x>0.55) && (x<0.85)
  t2 = ((x>1.025) && (x<1.075) || (y>0.175)) && ((x>0.9) && (x<1.2))
  test = 1 - (real(f||r||a||c||t1||i||n||t2)*real(y>-0.225)*real(y<0.225)) 
  z = fn1(1+fn2(0.0,-0.65)/fn3((pixel+(0.0,.75))/fn4(Samba))) :
  z2 = z*z, z4 = z2*z2, n = z4*z2-1, z = z-n/(6*z4*z)
  (|n|>=0.0001) && test
  ;SOURCE: bej012.frm
}


Fractint-9-34 {; Sylvie Gallet [101324,3444], 1996
               ; requires 'periodicity=0' 
  z = pixel-0.025 
  Bossa = pixel^p1/p2 + p2^pixel/(p1*pixel), Nova = p2/p1
  Samba = Bossa*Nova
  x=real(z), y=imag(z), x1=x*1.8, x3=3*x
  ty2 = ( (y<0.025) && (y>-0.025) ) || (y>0.175)
  f = ( (x<-1.2) || ty2 ) && ( (x>-1.25) && (x<-1) )
  r = ( (x<-0.9) || ty2 ) && ( (x>-0.95) && (x<-0.8) )
  r = r || ((cabs(sqrt(|z+(0.8,-0.1)|)-0.1)<0.025) && (x>-0.8))
  r = r || (((y<(-x1-1.44)) && (y>(-x1-1.53))) && (y<0.025))
  a = (y>(x3+1.5)) || (y>(-x3-1.2)) || ((y>-0.125) && (y<-0.075))
  a = a && ((y<(x3+1.65)) && (y<(-x3-1.05)))
  c = (cabs(sqrt(|z+0.05|)-0.2)<0.025) && (x<0.05)
  t1 = ((x>0.225) && (x<0.275) || (y>0.175)) && ((x>0.1) && (x<0.4))
  i = (x>0.45) && (x<0.5)
  n = (x<0.6) || (x>0.8) || ((y>-x1+1.215) && (y<-x1+1.305))
  n = n && (x>0.55) && (x<0.85)
  t2 = ((x>1.025) && (x<1.075) || (y>0.175)) && ((x>0.9) && (x<1.2))
  test = 1 - (real(f||r||a||c||t1||i||n||t2)*real(y>-0.225)*real(y<0.225)) 
  z = fn1(1+fn2(0.0,-0.65)/fn3(pixel)+(0.0,.75)*Samba) :
  z2 = z*z, z4 = z2*z2, n = z4*z2-1, z = z-n/(6*z4*z)
  (|n|>=0.0001) && test
  ;SOURCE: bej012.frm
}


Fractint-9-38 {; Sylvie Gallet [101324,3444], 1996
               ; requires 'periodicity=0' 
  z = pixel-0.025 
  Bossa = pixel^p1/p2 + p2^pixel/(p1*pixel), Nova = p2/p1
  Samba = Bossa*Nova
  x=real(z), y=imag(z), x1=x*1.8, x3=3*x
  ty2 = ( (y<0.025) && (y>-0.025) ) || (y>0.175)
  f = ( (x<-1.2) || ty2 ) && ( (x>-1.25) && (x<-1) )
  r = ( (x<-0.9) || ty2 ) && ( (x>-0.95) && (x<-0.8) )
  r = r || ((cabs(sqrt(|z+(0.8,-0.1)|)-0.1)<0.025) && (x>-0.8))
  r = r || (((y<(-x1-1.44)) && (y>(-x1-1.53))) && (y<0.025))
  a = (y>(x3+1.5)) || (y>(-x3-1.2)) || ((y>-0.125) && (y<-0.075))
  a = a && ((y<(x3+1.65)) && (y<(-x3-1.05)))
  c = (cabs(sqrt(|z+0.05|)-0.2)<0.025) && (x<0.05)
  t1 = ((x>0.225) && (x<0.275) || (y>0.175)) && ((x>0.1) && (x<0.4))
  i = (x>0.45) && (x<0.5)
  n = (x<0.6) || (x>0.8) || ((y>-x1+1.215) && (y<-x1+1.305))
  n = n && (x>0.55) && (x<0.85)
  t2 = ((x>1.025) && (x<1.075) || (y>0.175)) && ((x>0.9) && (x<1.2))
  test = 1 - (real(f||r||a||c||t1||i||n||t2)*real(y>-0.225)*real(y<0.225)) 
  z = atanh(sqr(log(1+fn1(sqr(0.0,-0.65))\
       /fn2(sqr(log(pixel)))+fn3(cos(sin(0.0,.75)))*fn4(sqrt(Samba))))) :
  z2 = z*z, z4 = z2*z2, n = z4*z2-1, z = z-n/(6*z4*z)
  (|n|>=0.0001) && test
  ;SOURCE: bej012.frm
}


Fractint-9-40 {; Sylvie Gallet [101324,3444], 1996
               ; requires 'periodicity=0' 
  z = pixel-0.025, x=real(z), y=imag(z), x1=x*1.8, x3=3*x
  ty2 = ( (y<0.025) && (y>-0.025) ) || (y>0.175)
  f = ( (x<-1.2) || ty2 ) && ( (x>-1.25) && (x<-1) )
  r = ( (x<-0.9) || ty2 ) && ( (x>-0.95) && (x<-0.8) )
  r = r || ((cabs(sqrt(|z+(0.8,-0.1)|)-0.1)<0.025) && (x>-0.8))
  r = r || (((y<(-x1-1.44)) && (y>(-x1-1.53))) && (y<0.025))
  a = (y>(x3+1.5)) || (y>(-x3-1.2)) || ((y>-0.125) && (y<-0.075))
  a = a && ((y<(x3+1.65)) && (y<(-x3-1.05)))
  c = (cabs(sqrt(|z+0.05|)-0.2)<0.025) && (x<0.05)
  t1 = ((x>0.225) && (x<0.275) || (y>0.175)) && ((x>0.1) && (x<0.4))
  i = (x>0.45) && (x<0.5)
  n = (x<0.6) || (x>0.8) || ((y>-x1+1.215) && (y<-x1+1.305))
  n = n && (x>0.55) && (x<0.85)
  t2 = ((x>1.025) && (x<1.075) || (y>0.175)) && ((x>0.9) && (x<1.2))
  test = 1 - (real(f||r||a||c||t1||i||n||t2)*real(y>-0.225)*real(y<0.225)) 
  z = fn1(fn2(1+(0.0,-0.65)/fn3(fn4(pixel+(0.0,.75))))) :
  z2 = z*z, z4 = z2*z2, n = z4*z2-1, z = z-n/(6*z4*z)
  (|n|>=0.0001) && test
  ;SOURCE: bej012.frm
}


Fractint-9-41 {; Sylvie Gallet [101324,3444], 1996
               ; requires 'periodicity=0' 
  z = pixel-0.025, x=real(z), y=imag(z), x1=x*1.8, x3=3*x
  ty2 = ( (y<0.025) && (y>-0.025) ) || (y>0.175)
  f = ( (x<-1.2) || ty2 ) && ( (x>-1.25) && (x<-1) )
  r = ( (x<-0.9) || ty2 ) && ( (x>-0.95) && (x<-0.8) )
  r = r || ((cabs(sqrt(|z+(0.8,-0.1)|)-0.1)<0.025) && (x>-0.8))
  r = r || (((y<(-x1-1.44)) && (y>(-x1-1.53))) && (y<0.025))
  a = (y>(x3+1.5)) || (y>(-x3-1.2)) || ((y>-0.125) && (y<-0.075))
  a = a && ((y<(x3+1.65)) && (y<(-x3-1.05)))
  c = (cabs(sqrt(|z+0.05|)-0.2)<0.025) && (x<0.05)
  t1 = ((x>0.225) && (x<0.275) || (y>0.175)) && ((x>0.1) && (x<0.4))
  i = (x>0.45) && (x<0.5)
  n = (x<0.6) || (x>0.8) || ((y>-x1+1.215) && (y<-x1+1.305))
  n = n && (x>0.55) && (x<0.85)
  t2 = ((x>1.025) && (x<1.075) || (y>0.175)) && ((x>0.9) && (x<1.2))
  test = 1 - (real(f||r||a||c||t1||i||n||t2)*real(y>-0.225)*real(y<0.225)) 
  z = fn1(fn2(fn4(1+(fn3(0.0,-0.65)/(pixel+(0.0,.75)))))) :
  z2 = z*z, z4 = z2*z2, n = z4*z2-1, z = z-n/(6*z4*z)
  (|n|>=0.0001) && test
  ;SOURCE: bej012.frm
}


Fractint-9-42 {; Sylvie Gallet [101324,3444], 1996
               ; requires 'periodicity=0' 
  z = pixel-0.025, x=real(z), y=imag(z), x1=x*1.8, x3=3*x
  ty2 = ( (y<0.025) && (y>-0.025) ) || (y>0.175)
  f = ( (x<-1.2) || ty2 ) && ( (x>-1.25) && (x<-1) )
  r = ( (x<-0.9) || ty2 ) && ( (x>-0.95) && (x<-0.8) )
  r = r || ((cabs(sqrt(|z+(0.8,-0.1)|)-0.1)<0.025) && (x>-0.8))
  r = r || (((y<(-x1-1.44)) && (y>(-x1-1.53))) && (y<0.025))
  a = (y>(x3+1.5)) || (y>(-x3-1.2)) || ((y>-0.125) && (y<-0.075))
  a = a && ((y<(x3+1.65)) && (y<(-x3-1.05)))
  c = (cabs(sqrt(|z+0.05|)-0.2)<0.025) && (x<0.05)
  t1 = ((x>0.225) && (x<0.275) || (y>0.175)) && ((x>0.1) && (x<0.4))
  i = (x>0.45) && (x<0.5)
  n = (x<0.6) || (x>0.8) || ((y>-x1+1.215) && (y<-x1+1.305))
  n = n && (x>0.55) && (x<0.85)
  t2 = ((x>1.025) && (x<1.075) || (y>0.175)) && ((x>0.9) && (x<1.2))
  test = 1 - (real(f||r||a||c||t1||i||n||t2)*real(y>-0.225)*real(y<0.225)) 
  z = fn1(fn2(1+(0.0,-0.65)/fn3(fn4(fn2(pixel+fn1(0.0,.75)))))) :
  z2 = z*z, z4 = z2*z2, n = z4*z2-1, z = z-n/(6*z4*z)
  (|n|>=0.0001) && test
  ;SOURCE: bej012.frm
}


FractMask08  {; requires Fractint 19.5
  row=imag(scrnpix)
  col=real(scrnpix)
  rows=imag(scrnmax)
  cols=real(scrnmax)
  y=row/(rows-1)
  x=col/(cols-1)
  in=0
  in=in+(x>.06&&x<.92&&y<.693&&y>.68)
  in=in+(x>.07&&x<.13&&y<.626&&y>.613)
  in=in+(x>.19&&x<.25&&y<.626&&y>.613)
  in=in+(x>.32&&x<.41&&y<.626&&y>.6)
  in=in+(x>.45&&x<.5&&y<.626&&y>.613)
  in=in+(x>.56&&x<.6&&y<.626&&y>.6)
  in=in+(x>.63&&x<.69&&y<.626&&y>.613)
  in=in+(x>.7&&x<.75&&y<.626&&y>.613)
  in=in+(x>.76&&x<.81&&y<.626&&y>.613)
  in=in+(x>.85&&x<.89&&y<.626&&y>.6)
  in=in+(x>.08&&x<.12&&y<.613&&y>.266)
  in=in+(x>.2&&x<.24&&y<.613&&y>.36)
  in=in+(x>.31&&x<.32&&y<.613&&y>.48)
  in=in+(x>.44&&x<.47&&y<.613&&y>.373)
  in=in+(x>.49&&x<.51&&y<.613&&y>.586)
  in=in+(x>.55&&x<.56&&y<.613&&y>.346)
  in=in+(x>.6&&x<.61&&y<.613&&y>.52)
  in=in+(x>.64&&x<.68&&y<.613&&y>.36)
  in=in+(x>.71&&x<.75&&y<.613&&y>.36)
  in=in+(x>.76&&x<.8&&y<.613&&y>.373)
  in=in+(x>.84&&x<.85&&y<.613&&y>.346)
  in=in+(x>.89&&x<.9&&y<.613&&y>.52)
  in=in+(x>.32&&x<.35&&y<.6&&y>.573)
  in=in+(x>.36&&x<.42&&y<.6&&y>.586)
  in=in+(x>.56&&x<.59&&y<.6&&y>.306)
  in=in+(x>.61&&x<.62&&y<.6&&y>.52)
  in=in+(x>.85&&x<.88&&y<.6&&y>.306)
  in=in+(x>.9&&x<.91&&y<.6&&y>.52)
  in=in+(x>.36&&x<.4&&y<.586&&y>.373)
  in=in+(x>.5&&x<.52&&y<.586&&y>.506)
  in=in+(x>.32&&x<.34&&y<.573&&y>.466)
  in=in+(x>.43&&x<.44&&y<.573&&y>.413)
  in=in+(x>.14&&x<.15&&y<.52&&y>.373)
  in=in+(x>.34&&x<.35&&y<.52&&y>.466)
  in=in+(x>.13&&x<.14&&y<.493&&y>.4)
  in=in+(x>.35&&x<.36&&y<.48&&y>.453)
  in=in+(x>.12&&x<.13&&y<.466&&y>.426)
  in=in+(x>.5&&x<.52&&y<.466&&y>.36)
  in=in+(x>.25&&x<.28&&y<.44&&y>.36)
  in=in+(x>.31&&x<.35&&y<.44&&y>.386)
  in=in+(x>.28&&x<.29&&y<.426&&y>.373)
  in=in+(x>.24&&x<.25&&y<.413&&y>.36)
  in=in+(x>.49&&x<.5&&y<.413&&y>.373)
  in=in+(x>.16&&x<.18&&y<.4&&y>.266)
  in=in+(x>.32&&x<.34&&y<.386&&y>.373)
  in=in+(x>.48&&x<.49&&y<.386&&y>.36)
  in=in+(x>.75&&x<.76&&y<.386&&y>.36)
  in=in+(x>.19&&x<.2&&y<.373&&y>.36)
  in=in+(x>.33&&x<.39&&y<.373&&y>.36)
  in=in+(x>.45&&x<.48&&y<.373&&y>.36)
  in=in+(x>.54&&x<.55&&y<.373&&y>.36)
  in=in+(x>.59&&x<.62&&y<.373&&y>.36)
  in=in+(x>.63&&x<.64&&y<.373&&y>.36)
  in=in+(x>.7&&x<.71&&y<.373&&y>.36)
  in=in+(x>.76&&x<.79&&y<.373&&y>.36)
  in=in+(x>.83&&x<.84&&y<.373&&y>.36)
  in=in+(x>.88&&x<.91&&y<.373&&y>.36)
  in=in+(x>.15&&x<.16&&y<.346&&y>.266)
  in=in+(x>.14&&x<.15&&y<.306&&y>.266)
  in=in+(x>.57&&x<.59&&y<.306&&y>.266)
  in=in+(x>.64&&x<.68&&y<.306&&y>.266)
  in=in+(x>.86&&x<.88&&y<.306&&y>.266)
  in=in+(x>.07&&x<.08&&y<.28&&y>.266)
  in=in+(x>.12&&x<.14&&y<.28&&y>.266)
  out=in==0
  test=in+out*4
  c=pixel
  z=in*(x+y/8)*689:
  z=(z-1)*in+(z*z+c)*out
  out*|z|+in<test*out+z*in
  ;SOURCE: 96_msg_2.frm
}


Fractoramo {; (c) Jay Hill, 1998
  z = 0, c = exp(pixel)+p1: ; initialization.
  z=sqr(z) + c              ; standard MSet iteration
  |z| < 16
  ;SOURCE: 98msg.frm
}


Fractured_window {; Giuseppe Zito
  z = pixel
  A=-.127219
  B=.02246817:
  x = real(z), y = imag(z)
  newx= A + y
  newy  = B*y/x -x
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4
  ;SOURCE: zg.frm
}


FraKtint {; Modified Sylvie Gallet formula
          ; An exercise in changing the letters in Sylvie's original
          ; c= is replaced by k1/k2/k3=, test c replaced by k3
          ; Les St Clair [101461,2032] 1996
  z = pixel-0.025, x=real(z), y=imag(z), x1=x*1.8, x3=3*x
  ty2 = ( (y<0.025) && (y>-0.025) ) || (y>0.175)
  f = ( (x<-1.2) || ty2 ) && ( (x>-1.25) && (x<-1) )
  r = ( (x<-0.9) || ty2 ) && ( (x>-0.95) && (x<-0.8) )
  r = r || ((cabs(sqrt(|z+(0.8,-0.1)|)-0.1)<0.025) && (x>-0.8))
  r = r || (((y<(-x1-1.44)) && (y>(-x1-1.53))) && (y<0.025))
  a = (y>(x3+1.5)) || (y>(-x3-1.2)) || ((y>-0.125) && (y<-0.075))
  a = a && ((y<(x3+1.65)) && (y<(-x3-1.05)))
  k1 = ( (y>-x-0.2195) && (y<-x-0.1427) && y<0 )
  k2 = ( (y<x+0.2195) && (y>x+0.1427) && y>0 )
  k3 = (x<-0.2 && x>-0.25 || k1 || k2)
  t1 = ((x>0.225) && (x<0.275) || (y>0.175)) && ((x>0.1) && (x<0.4))
  i = (x>0.45) && (x<0.5)
  n = (x<0.6) || (x>0.8) || ((y>-x1+1.215) && (y<-x1+1.305))
  n = n && (x>0.55) && (x<0.85)
  t2 = ((x>1.025) && (x<1.075) || (y>0.175)) && ((x>0.9) && (x<1.2))
  test = 1 - (real(f||r||a||k3||t1||i||n||t2)*real(y>-0.225)*real(y<0.225))
  z = 1+(0.0,-0.65)/(pixel+(0.0,.75)) :
   z2 = z*z, z4 = z2*z2, n = z4*z2-1, z = z-n/(6*z4*z)
    (|n|>=0.0001) && test
  ;SOURCE: 96_msg_2.frm
}


Frame-RbtJ {; Ron Barnett, 1993
  z = pixel:
  z = z*z*z/5 + z*z + p1
  |z| <= 100
  ;SOURCE: reb001.frm
}


Frame-RbtM (XAXIS) {; Ron Barnett, 1993
                    ; from Mazes for the Mind by Pickover
  z = c = pixel:
  z = z*z*z/5 + z*z + c
  |z| <= 100
  ;SOURCE: fractint.frm
}


Frantic {
  z = c = pixel + p1
  bail = round(|z|):
  r = z * (1/fn1(z)) + p2
  z = fn2(r) * z + c 
  bail <= 4
  ;SOURCE: schizo.frm
}


Frantic_2 {
  z = c = pixel + p1:
  r = z * (1/fn1(z)) + p2
  z = fn2(r) * z + c 
  round(|Z|) <= 4
  ;SOURCE: schizo_2.frm
}


frm-A (xaxis) {; Another formula for the Mandelbrot set
  z = const = pixel:
  z = z^2 + const
  |z| < 4
  ;SOURCE: frmtutor.frm
}


frm-B {; A generalized Julia formula
       ; For the traditional Julia algorithm, set FN1() to SQR,
       ; and then try different values for P1
  z = pixel:
  z = fn1(z) + p1
  |z| <= (4 + p2)
  ;SOURCE: frmtutor.frm
}


frm-C1 {
  z = 0
  c = pixel:
  z = sqr(z) + c
  |z| < 4
  ;SOURCE: frmtutor.frm
}


frm-C2 { 
  z = 0, c = pixel: 
  z = sqr(z) + c 
  |z| < 4 
  ;SOURCE: frmtutor.frm
}


frm-D1 {; Unparsable expression ignored
  z = c = pixel:
  z = z*z + sin z + c
  |z| < 4
  ;SOURCE: frmtutor.frm
}


frm-D2 {; fixed version of frm-D1
  z = c = pixel:
  z = z*z + sin(z) + c
  |z| < 4
  ;SOURCE: frmtutor.frm
}


Frog (XAXIS_NOPARM) {; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=|z|:
  z=tanh(z)+pixel
  z=sqr(z)+pixel, x=|z|
  x<=4 
  ;SOURCE: choice.frm
}


FrogC (XAXIS_NOPARM) {; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=tanh(z)+pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4 
  ;SOURCE: choice.frm
}


From_Jiho1 {; Jiho Kim
  z = 0, c = Pixel:
  z = sin(z)+c
  |fn1(z+p1)| > |fn2(z)|
  ;SOURCE: 98msg.frm
}


FrRbtGenJ {; Ron Barnett, 1993
  z = pixel:
  z = p1*z*z*z + z*z + p2 
  |z| <= 100
  ;SOURCE: reb002.frm
}


FrRbtGenM {; Ron Barnett, 1993
  z = pixel:
  z = p1*z*z*z + z*z + pixel
  |z| <= 100
  ;SOURCE: fractint.frm
}


frtan (XAXIS) {
   ; Lets not forget the tangent
  z = pixel, zp = (0,0):
  temp = z
  z = -tan(z) - zp
  zp = temp
  |zp| <= 4 
  ;SOURCE: noel.frm
}


FT_195_INVERSE {; Creates "Fractint 19.5" inverse text fixed to screen
                ; Les St Clair 101461.2032@compuserve.com - 1996
   ; Created using "FracText" (alpha-4) by Jan Maarten van der Valk
   ; "periodicity=0" and "passes=1" recommended
   ; Added variable "newpixel". G. Martin 6/27/99
  x=real(scrnpix)/real(scrnmax), y=(imag(scrnmax)-imag(scrnpix))/real(scrn\
  max), z=x+flip(y)
  chrF1 = x<0.18||(y<0.525&&y>0.495)||y>0.54&&x>0.15&&x<0.228
  xr=2*x
  chrR2 = y<0.525&&y>0.495||y>0.54||x<0.264&&x>0.234&&x<0.288||(abs(cabs(z\
  +(-0.288,-0.5325))-0.0225)<0.015&&x>0.288)||(y<0.51&&y<-xr+1.101&&y>-xr+\
  1.03392)
  xa=3*x
  chrA3 = y>xa-0.63937||y>-xa+1.6845||(y<0.498&&y>0.468)&&y<xa-0.5445&&y<-\
  xa+1.77937
  xc=1*x
  chrC4 = abs(cabs(z+(-0.49712,-0.51))-0.045)<0.015&&(x<0.49712||y>xc+0.01\
  288||y<-xc+1.00712)
  chrT5 = y>0.54&&x>0.54555&&x<0.63555||(x>0.57555&&x<0.60555)
  chrI6 = x>0.64155&&x<0.67155
  xn=2.5*x
  chrN7 = x>0.67755&&x<0.70755||(x>0.72555&&x<0.75786)||(y>-xn+2.26387&&y<\
  -xn+2.34465)
  chrT8 = y>0.54&&x>0.76386&&x<0.85386||(x>0.79386&&x<0.82386)
  test1 = chrF1||chrR2||chrA3||chrC4||chrT5||chrI6||chrN7||chrT8&&y>0.45&&\
  y<0.57
  x1=1.5*x
  chr19 = y<x1-0.15167&&y>x1-0.20719&&y>-x/1.5+0.60667||(x>0.38733&&x<0.41\
  813)
  chr910 = abs(cabs(z+(-0.46783,-0.3227))-0.0273)<0.0154&&y<0.3227||abs(ca\
  bs(z+(-0.46783,-0.3773))-0.0273)<0.0154||(x>0.47973&&x<0.51053&&y>0.3227\
  &&y<0.3773)
  chrDT11 = y<0.3108&&x>0.51753&&x<0.54833
  chr512 = abs(cabs(z+(-0.60573,-0.3304))-0.035)<0.0154&&(y<0.3304||x>0.60\
  573)||(x>0.55533&&y>0.35&&x<0.65613&&(x<0.58613||y>0.3892||(y<0.3808&&x<\
  0.60573)))
  test2 = chr19||chr910||chrDT11||chr512&&y>0.28&&y<0.42
  test = test1||test2
  test=(test==0)
  f1=sin(.5*pixel)
  f2=1/(32*pixel)
  newpixel=(test==0)*f1+(test!=0)*f2
  z=1+(0,-0.65)/fn3(newpixel+(0,0.75)):
  z2=z*z, z4=z2*z2, n=z4*z2-1, z=z-n/(6*z4*z)
  |n|>=.0001&&test==0
  ;SOURCE: 96msg.frm
}


FT_195_SOLID { ; Creates "Fractint 19.5" solid text fixed to screen
     ; Les St Clair 101461.2032@compuserve.com - 1996
     ; Created using "FracText" (alpha-4) by Jan Maarten van der Valk
     ; "periodicity=0" and "passes=1" recommended
     ; Added variable "newpixel". G. Martin 6/27/99
  x=real(scrnpix)/real(scrnmax), y=(imag(scrnmax)-imag(scrnpix))/real(scrn\
  max), z=x+flip(y)
  chrF1 = x<0.18||(y<0.525&&y>0.495)||y>0.54&&x>0.15&&x<0.228
  xr=2*x
  chrR2 = y<0.525&&y>0.495||y>0.54||x<0.264&&x>0.234&&x<0.288||(abs(cabs(z\
  +(-0.288,-0.5325))-0.0225)<0.015&&x>0.288)||(y<0.51&&y<-xr+1.101&&y>-xr+\
  1.03392)
  xa=3*x
  chrA3 = y>xa-0.63937||y>-xa+1.6845||(y<0.498&&y>0.468)&&y<xa-0.5445&&y<-\
  xa+1.77937
  xc=1*x
  chrC4 = abs(cabs(z+(-0.49712,-0.51))-0.045)<0.015&&(x<0.49712||y>xc+0.01\
  288||y<-xc+1.00712)
  chrT5 = y>0.54&&x>0.54555&&x<0.63555||(x>0.57555&&x<0.60555)
  chrI6 = x>0.64155&&x<0.67155
  xn=2.5*x
  chrN7 = x>0.67755&&x<0.70755||(x>0.72555&&x<0.75786)||(y>-xn+2.26387&&y<\
  -xn+2.34465)
  chrT8 = y>0.54&&x>0.76386&&x<0.85386||(x>0.79386&&x<0.82386)
  test1 = chrF1||chrR2||chrA3||chrC4||chrT5||chrI6||chrN7||chrT8&&y>0.45&&\
  y<0.57
  x1=1.5*x
  chr19 = y<x1-0.15167&&y>x1-0.20719&&y>-x/1.5+0.60667||(x>0.38733&&x<0.41\
  813)
  chr910 = abs(cabs(z+(-0.46783,-0.3227))-0.0273)<0.0154&&y<0.3227||abs(ca\
  bs(z+(-0.46783,-0.3773))-0.0273)<0.0154||(x>0.47973&&x<0.51053&&y>0.3227\
  &&y<0.3773)
  chrDT11 = y<0.3108&&x>0.51753&&x<0.54833
  chr512 = abs(cabs(z+(-0.60573,-0.3304))-0.035)<0.0154&&(y<0.3304||x>0.60\
  573)||(x>0.55533&&y>0.35&&x<0.65613&&(x<0.58613||y>0.3892||(y<0.3808&&x<\
  0.60573)))
  test2 = chr19||chr910||chrDT11||chr512&&y>0.28&&y<0.42
  test = test1||test2
  f1=sin(.5*pixel)
  f2=1/(32*pixel)
  newpixel=(test==0)*f1+(test!=0)*f2
  z=1+(0,-0.65)/fn3(newpixel+(0,0.75)):
  z2=z*z, z4=z2*z2, n=z4*z2-1, z=z-n/(6*z4*z)
  |n|>=.0001&&test==0
  ;SOURCE: 96_msg_2.frm
}


FTBailoutShadow {; Formula uses PHC to cast "soft" shadow
                 ; October 1996 by Jan Maarten van der Valk
                 ; 'periodicity=0' and 'passes=1' recommended
                 ; Added variable "newpixel". G. Martin 6/27/99
  x=real(scrnpix)/real(scrnmax)
  y=(imag(scrnmax)-imag(scrnpix))/(real(scrnmax)*0.75), z=x+flip(y)
  chrF1 = x<0.10936||(y<0.74&&y>0.71)||y>0.77&&x>0.07936&&x<0.16936
  xr=2*x
  chrR2 = y<0.74&&y>0.71||y>0.77||x<0.21436&&x>0.18436&&x<0.24436||(abs(cabs(z+(-0.24436,-0.755))-0.03)<0.015&&x>0.24436)||(y<0.725&&y<-xr+1.22872&&y>-xr+1.16164)
  xa=3*x
  chrA3 = y>xa-0.35795||y>-xa+1.86308||(y<0.71&&y>0.68)&&y<xa-0.26308&&y<-xa+1.95795
  xc=1*x
  chrC4 = abs(cabs(z+(-0.51098,-0.725))-0.06)<0.015&&(x<0.51098||y>xc+0.21402||y<-xc+1.23598)
  chrT5 = y>0.77&&x>0.57902&&x<0.68402||(x>0.61652&&x<0.64652)
  chrA6 = y>xa-1.49692||y>-xa+3.00205||(y<0.71&&y>0.68)&&y<xa-1.40205&&y<-xa+3.09692
  chrL7 = x<0.86064||y<0.68&&x>0.83064&&x<0.92064
  test1 = chrF1||chrR2||chrA3||chrC4||chrT5||chrA6||chrL7&&y>0.65&&y<0.8
  chrF8 = x<0.11936||(y<0.72&&y>0.69)||y>0.75&&x>0.08936&&x<0.17936
  chrR9 = y<0.72&&y>0.69||y>0.75||x<0.22436&&x>0.19436&&x<0.25436||(abs(cabs(z+(-0.25436,-0.735))-0.03)<0.015&&x>0.25436)||(y<0.705&&y<-xr+1.22872&&y>-xr+1.16164)
  chrA10 = y>xa-0.40795||y>-xa+1.87308||(y<0.69&&y>0.66)&&y<xa-0.31308&&y<-xa+1.96795
  chrC11 = abs(cabs(z+(-0.52098,-0.705))-0.06)<0.015&&(x<0.52098||y>xc+0.18402||y<-xc+1.22598)
  chrT12 = y>0.75&&x>0.58902&&x<0.69402||(x>0.62652&&x<0.65652)
  chrA13 = y>xa-1.54692||y>-xa+3.01205||(y<0.69&&y>0.66)&&y<xa-1.45205&&y<-xa+3.10692
  chrL14 = x<0.87064||y<0.66&&x>0.84064&&x<0.93064
  test2 = chrF8||chrR9||chrA10||chrC11||chrT12||chrA13||chrL14&&y>0.63&&y<0.78
  chrS15 = abs(cabs(z+(-0.10717,-0.28187))-0.03188)<0.01125&&(x<0.10717||y>0.28187)||(abs(cabs(z+(-0.10717,-0.21812))-0.03188)<0.01125&&(x>0.10717||y<0.21812))
  chrH16 = x<0.1878||x>0.2328||(y<0.26125&&y>0.23875)&&x>0.1653&&x<0.2553
  chrA17 = y>xa-0.70704||y>-xa+1.28589||(y<0.235&&y>0.2125)&&y<xa-0.63589&&y<-xa+1.35704
  chrD18 = x<0.43151||y<0.1975||y>0.3025&&x>0.40901&&x<0.44651||(abs(cabs(z+(-0.44651,-0.25))-0.06375)<0.01125&&x>0.44651)
  chrO19 = abs(cabs(z+(-0.61151,-0.25))-0.06375)<0.01125
  xw=4*x
  chrW20 = y<xw-2.72105&&y>xw-2.81382||(y>-xw+3.27105&&y<-xw+3.36382)&&y<0.275||(y>-xw+3.07105&&y<-xw+3.16382)||(y<xw-2.92105&&y>xw-3.01382)
  chrS21 = abs(cabs(z+(-0.89283,-0.28187))-0.03188)<0.01125&&(x<0.89283||y>0.28187)||(abs(cabs(z+(-0.89283,-0.21812))-0.03188)<0.01125&&(x>0.89283||y<0.21812))
  test3 = chrS15||chrH16||chrA17||chrD18||chrO19||chrW20||chrS21&&y>0.175&&y<0.325
  chrS22 = abs(cabs(z+(-0.11717,-0.26688))-0.03188)<0.01125&&(x<0.11717||y>0.26688)||(abs(cabs(z+(-0.11717,-0.20312))-0.03188)<0.01125&&(x>0.11717||y<0.20312))
  chrH23 = x<0.1978||x>0.2428||(y<0.24625&&y>0.22375)&&x>0.1753&&x<0.2653
  chrA24 = y>xa-0.75204||y>-xa+1.30089||(y<0.22&&y>0.1975)&&y<xa-0.68089&&y<-xa+1.37204
  chrD25 = x<0.44151||y<0.1825||y>0.2875&&x>0.41901&&x<0.45651||(abs(cabs(z+(-0.45651,-0.235))-0.06375)<0.01125&&x>0.45651)
  chrO26 = abs(cabs(z+(-0.62151,-0.235))-0.06375)<0.01125
  chrW27 = y<xw-2.77605&&y>xw-2.86882||(y>-xw+3.29605&&y<-xw+3.38882)&&y<0.26||(y>-xw+3.09605&&y<-xw+3.18882)||(y<xw-2.97605&&y>xw-3.06882)
  chrS28 = abs(cabs(z+(-0.90283,-0.26688))-0.03188)<0.01125&&(x<0.90283||y>0.26688)||(abs(cabs(z+(-0.90283,-0.20312))-0.03188)<0.01125&&(x>0.90283||y<0.20312))
  test4 = chrS22||chrH23||chrA24||chrD25||chrO26||chrW27||chrS28&&y>0.16&&y<0.31
  chrCR29 = abs(cabs(z+(-0.62125,-0.01625))-0.00531)<0.00094||(abs(cabs(z+(-0.62125,-0.01625))-0.00219)<0.00094&&(x<0.62125||y>xc-0.605||y<-xc+0.6375))
  x1=1.5*x
  chr130 = y<x1-0.92385&&y>x1-0.92723&&y>-x/1.5+0.43708||(x>0.63128&&x<0.63316)
  chr931 = abs(cabs(z+(-0.63738,-0.01359))-0.00266)<0.00094&&y<0.01359||abs(cabs(z+(-0.63738,-0.01891))-0.00266)<0.00094||(x>0.63909&&x<0.64097&&y>0.01359&&y<0.01891)
  chr932 = abs(cabs(z+(-0.64519,-0.01359))-0.00266)<0.00094&&y<0.01359||abs(cabs(z+(-0.64519,-0.01891))-0.00266)<0.00094||(x>0.64691&&x<0.64878&&y>0.01359&&y<0.01891)
  chr633 = abs(cabs(z+(-0.653,-0.01891))-0.00266)<0.00094&&y>0.01891||abs(cabs(z+(-0.653,-0.01359))-0.00266)<0.00094||(x>0.64941&&x<0.65128&&y>0.01359&&y<0.01891)
  chrJ42 = abs(cabs(z+(-0.71081,-0.01359))-0.00266)<0.00094&&y<0.01312||(x>0.71253&&y>0.01312)&&x<0.71441
  chrA43 = y>xa-2.14102||y>-xa+2.18009||(y<0.015&&y>0.01312)&&y<xa-2.13509&&y<-xa+2.18602
  xn=2.5*x
  chrN44 = x>0.72597&&x<0.72784||(x>0.73097&&x<0.73299)||(y>-xn+1.83742&&y<-xn+1.84246)
  xm=2.5*x
  chrM46 = (y<-xm+1.8772||y<xm-1.84382)&&y>-xm+1.87215&&y>xm-1.84887||(x>0.73986&&x<0.74174)||(x>0.74667&&x<0.74855)
  chrA47 = y>xa-2.24344||y>-xa+2.28252||(y<0.015&&y>0.01312)&&y<xa-2.23752&&y<-xa+2.28844
  chrA48 = y>xa-2.27625||y>-xa+2.31532||(y<0.015&&y>0.01312)&&y<xa-2.27032&&y<-xa+2.32125
  chrR49 = y<0.01719&&y>0.01531||y>0.02062||x<0.77292&&x>0.77104&&x<0.77542||(abs(cabs(z+(-0.77542,-0.01891))-0.00266)<0.00094&&x>0.77542)||(y<0.01625&&y<-xr+1.56802&&y>-xr+1.56383)
  chrT50 = y>0.02062&&x>0.77964&&x<0.78776||(x>0.78276&&x<0.78464)
  chrE51 = x<0.79026||y<0.01188||(y<0.01719&&y>0.01531)||y>0.02062&&x>0.78839&&x<0.79526
  chrN52 = x>0.79714&&x<0.79901||(x>0.80214&&x<0.80415)||(y>-xn+2.01534&&y<-xn+2.02039)
  xv=3.5*x
  chrV62 = y>-xv+3.0361&&y<-xv+3.04293||y<xv-3.0161&&y>xv-3.02293
  chrA63 = y>xa-2.60255||y>-xa+2.64162||(y<0.015&&y>0.01312)&&y<xa-2.59662&&y<-xa+2.64755
  chrN64 = x>0.87981&&x<0.88168||(x>0.88481&&x<0.88683)||(y>-xn+2.22202&&y<-xn+2.22707)
  chrD66 = x<0.89558||y<0.01188||y>0.02062&&x>0.8937&&x<0.89683||(abs(cabs(z+(-0.89683,-0.01625))-0.00531)<0.00094&&x>0.89683)
  chrE67 = x<0.90558||y<0.01188||(y<0.01719&&y>0.01531)||y>0.02062&&x>0.9037&&x<0.91058
  chrR68 = y<0.01719&&y>0.01531||y>0.02062||x<0.91433&&x>0.91245&&x<0.91683||(abs(cabs(z+(-0.91683,-0.01891))-0.00266)<0.00094&&x>0.91683)||(y<0.01625&&y<-xr+1.85084&&y>-xr+1.84665)
  chrV70 = y>-xv+3.26804&&y<-xv+3.27486||y<xv-3.24804&&y>xv-3.25486
  chrA71 = y>xa-2.80135||y>-xa+2.84042||(y<0.015&&y>0.01312)&&y<xa-2.79542&&y<-xa+2.84635
  chrL72 = x<0.94795||y<0.01188&&x>0.94607&&x<0.95295
  xk=1.5*x
  chrK73 = x<0.95545||(y<xk-1.41619&&y>xk-1.41957)||(y>-xk+1.44869&&y<-xk+1.45207&&y<xk-1.41619)&&x>0.95357
  test5 = chrCR29||chr130||chr931||chr932||chr633||chrJ42||chrA43||chrN44||chrM46||chrA47||chrA48||chrR49||chrT50||chrE51||chrN52||chrV62||chrA63||chrN64||chrD66||chrE67||chrR68||chrV70||chrA71||chrL72||chrK73&&y>0.01&&y<0.0225
  test=test1||test3
  test0=test2||test4||test5
  test0=test0&&whitesq
  test0=(test0==0)
  test0=((test0||test)==0)
  f1=sin(.5*pixel)
  f2=1/(32*pixel)
  newpixel=(test==0)*f2+test*f1
  z=1+(0,-0.65)/fn3(newpixel+(0,0.75)):
  z2=z*z, z4=z2*z2, n=z4*z2-1, z=z-n/(6*z4*z)
  |n|>=.0001&&test0==0
  ;SOURCE: ftlayers.frm
}


FTFractalShadow {; 'periodicity=0' and 'passes=1' recommended
                 ; Added variable "newpixel". G. Martin 6/27/99
  x=real(scrnpix)/real(scrnmax), y=(imag(scrnmax)-imag(scrnpix))/(real(scrnmax)*0.75), z=x+flip(y)
  chrF1 = x<0.06||(y<0.74&&y>0.71)||y>0.77&&x>0.03&&x<0.12
  xr=2*x
  chrR2 = y<0.74&&y>0.71||y>0.77||x<0.165&&x>0.135&&x<0.195||(abs(cabs(z+(-0.195,-0.755))-0.03)<0.015&&x>0.195)||(y<0.725&&y<-xr+1.13&&y>-xr+1.06292)
  xa=3*x
  chrA3 = y>xa-0.20987||y>-xa+1.715||(y<0.71&&y>0.68)&&y<xa-0.115&&y<-xa+1.80987
  xc=1*x
  chrC4 = abs(cabs(z+(-0.46162,-0.725))-0.06)<0.015&&(x<0.46162||y>xc+0.26338||y<-xc+1.18662)
  chrT5 = y>0.77&&x>0.52966&&x<0.63466||(x>0.56716&&x<0.59716)
  chrA6 = y>xa-1.34884||y>-xa+2.85397||(y<0.71&&y>0.68)&&y<xa-1.25397&&y<-xa+2.94884
  chrL7 = x<0.81128||y<0.68&&x>0.78128&&x<0.87128
  test1 = chrF1||chrR2||chrA3||chrC4||chrT5||chrA6||chrL7&&y>0.65&&y<0.8
  chrF8 = x<0.07||(y<0.7275&&y>0.6975)||y>0.7575&&x>0.04&&x<0.13
  chrR9 = y<0.7275&&y>0.6975||y>0.7575||x<0.175&&x>0.145&&x<0.205||(abs(cabs(z+(-0.205,-0.7425))-0.03)<0.015&&x>0.205)||(y<0.7125&&y<-xr+1.1375&&y>-xr+1.07042)
  chrA10 = y>xa-0.25237||y>-xa+1.7325||(y<0.6975&&y>0.6675)&&y<xa-0.1575&&y<-xa+1.82737
  chrC11 = abs(cabs(z+(-0.47162,-0.7125))-0.06)<0.015&&(x<0.47162||y>xc+0.24088||y<-xc+1.18412)
  chrT12 = y>0.7575&&x>0.53966&&x<0.64466||(x>0.57716&&x<0.60716)
  chrA13 = y>xa-1.39134||y>-xa+2.87147||(y<0.6975&&y>0.6675)&&y<xa-1.29647&&y<-xa+2.96634
  chrL14 = x<0.82128||y<0.6675&&x>0.79128&&x<0.88128
  test2 = chrF8||chrR9||chrA10||chrC11||chrT12||chrA13||chrL14&&y>0.6375&&y<0.7875
  chrS15 = abs(cabs(z+(-0.07688,-0.27812))-0.02812)<0.01875&&(x<0.07688||y>0.27812)||(abs(cabs(z+(-0.07688,-0.22188))-0.02812)<0.01875&&(x>0.07688||y<0.22188))
  chrH16 = x<0.18375||x>0.22875||(y<0.26875&&y>0.23125)&&x>0.14625&&x<0.26625
  chrA17 = y>xa-0.80984||y>-xa+1.34125||(y<0.235&&y>0.1975)&&y<xa-0.69125&&y<-xa+1.45984
  chrD18 = x<0.48828||y<0.2125||y>0.2875&&x>0.45078&&x<0.50328||(abs(cabs(z+(-0.50328,-0.25))-0.05625)<0.01875&&x>0.50328)
  chrO19 = abs(cabs(z+(-0.67578,-0.25))-0.05625)<0.01875
  xw=4*x
  chrW20 = y<xw-3.02611&&y>xw-3.18073||(y>-xw+3.57611&&y<-xw+3.73073)&&y<0.275||(y>-xw+3.37611&&y<-xw+3.53073)||(y<xw-3.22611&&y>xw-3.38073)
  test3 = chrS15||chrH16||chrA17||chrD18||chrO19||chrW20&&y>0.175&&y<0.325
  chrS21 = abs(cabs(z+(-0.09188,-0.25812))-0.02812)<0.01875&&(x<0.09188||y>0.25812)||(abs(cabs(z+(-0.09188,-0.20188))-0.02812)<0.01875&&(x>0.09188||y<0.20188))
  chrH22 = x<0.19875||x>0.24375||(y<0.24875&&y>0.21125)&&x>0.16125&&x<0.28125
  chrA23 = y>xa-0.87484||y>-xa+1.36625||(y<0.215&&y>0.1775)&&y<xa-0.75625&&y<-xa+1.48484
  chrD24 = x<0.50328||y<0.1925||y>0.2675&&x>0.46578&&x<0.51828||(abs(cabs(z+(-0.51828,-0.23))-0.05625)<0.01875&&x>0.51828)
  chrO25 = abs(cabs(z+(-0.69078,-0.23))-0.05625)<0.01875
  chrW26 = y<xw-3.10611&&y>xw-3.26073||(y>-xw+3.61611&&y<-xw+3.77073)&&y<0.255||(y>-xw+3.41611&&y<-xw+3.57073)||(y<xw-3.30611&&y>xw-3.46073)
  test4 = chrS21||chrH22||chrA23||chrD24||chrO25||chrW26&&y>0.155&&y<0.305
  chrCR27 = abs(cabs(z+(-0.62125,-0.01625))-0.00531)<0.00094||(abs(cabs(z+(-0.62125,-0.01625))-0.00219)<0.00094&&(x<0.62125||y>xc-0.605||y<-xc+0.6375))
  x1=1.5*x
  chr128 = y<x1-0.92385&&y>x1-0.92723&&y>-x/1.5+0.43708||(x>0.63128&&x<0.63316)
  chr929 = abs(cabs(z+(-0.63738,-0.01359))-0.00266)<0.00094&&y<0.01359||abs(cabs(z+(-0.63738,-0.01891))-0.00266)<0.00094||(x>0.63909&&x<0.64097&&y>0.01359&&y<0.01891)
  chr930 = abs(cabs(z+(-0.64519,-0.01359))-0.00266)<0.00094&&y<0.01359||abs(cabs(z+(-0.64519,-0.01891))-0.00266)<0.00094||(x>0.64691&&x<0.64878&&y>0.01359&&y<0.01891)
  chr631 = abs(cabs(z+(-0.653,-0.01891))-0.00266)<0.00094&&y>0.01891||abs(cabs(z+(-0.653,-0.01359))-0.00266)<0.00094||(x>0.64941&&x<0.65128&&y>0.01359&&y<0.01891)
  chrJ40 = abs(cabs(z+(-0.71081,-0.01359))-0.00266)<0.00094&&y<0.01312||(x>0.71253&&y>0.01312)&&x<0.71441
  chrA41 = y>xa-2.14102||y>-xa+2.18009||(y<0.015&&y>0.01312)&&y<xa-2.13509&&y<-xa+2.18602
  xn=2.5*x
  chrN42 = x>0.72597&&x<0.72784||(x>0.73097&&x<0.73299)||(y>-xn+1.83742&&y<-xn+1.84246)
  xm=2.5*x
  chrM44 = (y<-xm+1.8772||y<xm-1.84382)&&y>-xm+1.87215&&y>xm-1.84887||(x>0.73986&&x<0.74174)||(x>0.74667&&x<0.74855)
  chrA45 = y>xa-2.24344||y>-xa+2.28252||(y<0.015&&y>0.01312)&&y<xa-2.23752&&y<-xa+2.28844
  chrA46 = y>xa-2.27625||y>-xa+2.31532||(y<0.015&&y>0.01312)&&y<xa-2.27032&&y<-xa+2.32125
  chrR47 = y<0.01719&&y>0.01531||y>0.02062||x<0.77292&&x>0.77104&&x<0.77542||(abs(cabs(z+(-0.77542,-0.01891))-0.00266)<0.00094&&x>0.77542)||(y<0.01625&&y<-xr+1.56802&&y>-xr+1.56383)
  chrT48 = y>0.02062&&x>0.77964&&x<0.78776||(x>0.78276&&x<0.78464)
  chrE49 = x<0.79026||y<0.01188||(y<0.01719&&y>0.01531)||y>0.02062&&x>0.78839&&x<0.79526
  chrN50 = x>0.79714&&x<0.79901||(x>0.80214&&x<0.80415)||(y>-xn+2.01534&&y<-xn+2.02039)
  xv=3.5*x
  chrV60 = y>-xv+3.0361&&y<-xv+3.04293||y<xv-3.0161&&y>xv-3.02293
  chrA61 = y>xa-2.60255||y>-xa+2.64162||(y<0.015&&y>0.01312)&&y<xa-2.59662&&y<-xa+2.64755
  chrN62 = x>0.87981&&x<0.88168||(x>0.88481&&x<0.88683)||(y>-xn+2.22202&&y<-xn+2.22707)
  chrD64 = x<0.89558||y<0.01188||y>0.02062&&x>0.8937&&x<0.89683||(abs(cabs(z+(-0.89683,-0.01625))-0.00531)<0.00094&&x>0.89683)
  chrE65 = x<0.90558||y<0.01188||(y<0.01719&&y>0.01531)||y>0.02062&&x>0.9037&&x<0.91058
  chrR66 = y<0.01719&&y>0.01531||y>0.02062||x<0.91433&&x>0.91245&&x<0.91683||(abs(cabs(z+(-0.91683,-0.01891))-0.00266)<0.00094&&x>0.91683)||(y<0.01625&&y<-xr+1.85084&&y>-xr+1.84665)
  chrV68 = y>-xv+3.26804&&y<-xv+3.27486||y<xv-3.24804&&y>xv-3.25486
  chrA69 = y>xa-2.80135||y>-xa+2.84042||(y<0.015&&y>0.01312)&&y<xa-2.79542&&y<-xa+2.84635
  chrL70 = x<0.94795||y<0.01188&&x>0.94607&&x<0.95295
  xk=1.5*x
  chrK71 = x<0.95545||(y<xk-1.41619&&y>xk-1.41957)||(y>-xk+1.44869&&y<-xk+1.45207&&y<xk-1.41619)&&x>0.95357
  test5 = chrCR27||chr128||chr929||chr930||chr631||chrJ40||chrA41||chrN42||chrM44||chrA45||chrA46||chrR47||chrT48||chrE49||chrN50||chrV60||chrA61||chrN62||chrD64||chrE65||chrR66||chrV68||chrA69||chrL70||chrK71&&y>0.01&&y<0.0225
  test=test2||test4
  test0=test1||test3||test5
  f1=sin(.5*pixel)
  f2=1/(32*pixel)
  newpixel=(test==0)*f2+test*f1
  z=1+(0,-0.65)/fn3(newpixel+(0,0.75)):
  z2=z*z, z4=z2*z2, n=z4*z2-1, z=z-n/(6*z4*z)
  |n|>=.0001&&test0==0
  ;SOURCE: ftlayers.frm
}


FUGUE_01 {; 11/29/94
  z=pixel, x=1, y=1, a=p1, b=p2:
  z=fn1(z)+a*b
  |z|<=4
  a=fn1(x*z)
  |a|<=8
  b=fn1(y*z)
  |b|<=16
  ;SOURCE: vp001.frm
}


FUGUE_02 {; 11/29/94
  z=pixel, a=p1, b=p2:
  z=fn1(z)+a*b
  |z|<=4
  a=fn2(z)
  |a|<=8
  b=fn3(z)
  |b|<=16
  ;SOURCE: vp001.frm
}


FUGUE_03 {; 11/29/94
  z=pixel, a=p1, b=p2:
  z=fn1(z)*(a+b)
  |z|<=4
  a=fn2(z)
  |a|<=8
  b=fn3(z)
  |b|<=16
  ;SOURCE: vp001.frm
}


FUGUE_04 {; 11/29/94
  z=pixel, c=1, a=p1, b=p2:
  z=fn1(z)*(a+b+c)
  |z|<=4
  a=fn2(z)
  |a|<=8
  b=fn3(z)
  |b|<=16
  c=fn4(z)
  |c|<=32
  ;SOURCE: vp001.frm
}


FUGUE_05 {; 11/29/94
  z=pixel, c=1, a=p1, b=p2:
  z=fn1(z)+(a*b*c)
  |z|<=4
  a=fn2(z)
  |a|<=8
  b=fn3(z)
  |b|<=16
  c=fn4(z)
  |c|<=32
  ;SOURCE: vp001.frm
}


FUGUE_06 {; 11/29/94
  z=pixel, c=1, a=p1, b=p2:
  z=fn1(z)+(a*b*c)
  |z|<=4
  a=fn2(z)+a
  |a|<=8
  b=fn3(z)+b
  |b|<=16
  c=fn4(z)+c
  |c|<=32
  ;SOURCE: vp001.frm
}


FUGUE_07 {; 11/29/94
  z=pixel, c=1, a=p1, b=p2:
  z=fn1(z)+(a*b*c)
  |z|<=4
  a=fn2(z)+a
  |a|<=8
  b=fn3(z)+b
  |b|<=16
  c=fn4(z)+c
  |c|<=32
  z=fn1(z)*(a*b*c)
  |z|<=64
  a=fn2(z)*a
  |a|<=128
  b=fn3(z)*b
  |b|<=256
  c=fn4(z)*c
  |c|<=512
  ;SOURCE: vp001.frm
}


FUGUE_08 {; 11/29/94
  z=pixel, c=1, a=p1, b=p2:
  z=fn1(z)*(a*b*c)
  |z|<=4
  a=fn2(z)*a
  |z|<=8
  b=fn3(z)*b
  |z|<=16
  c=fn4(z)*c
  |z|<=32
  z=fn1(z)*(a*b*c)
  |z|<=64
  a=fn2(z)*a
  |z|<=128
  b=fn3(z)*b
  |z|<=256
  c=fn4(z)*c
  |z|<=512
  ;SOURCE: vp001.frm
}


FUGUE_09 {; 11/29/94
  z=pixel, c=1, a=p1, b=p2:
  z=fn1(z)+(a*b*c)
  |z|<=4
  a=fn2(z)+a
  |z|<=8
  b=fn3(z)+b
  |z|<=16
  c=fn4(z)+c
  |z|<=32
  z=fn1(z)+(a*b*c)
  |z|<=64
  a=fn2(z)+a
  |z|<=128
  b=fn3(z)+b
  |z|<=256
  c=fn4(z)+c
  |z|<=512
  ;SOURCE: vp001.frm
}


FUGUE_10 {; 11/29/94
  z=pixel, c=1, a=p1, b=p2:
  z=fn1(z)+(a*b*c)
  |z|<=4
  a=fn2(z)+a
  |z|<=8
  b=fn3(z)+b
  |z|<=16
  c=fn4(z)+c
  |z|<=32
  z=fn1(z)*(a*b*c)
  |z|<=64
  a=fn2(z)*a
  |z|<=128
  b=fn3(z)*b
  |z|<=256
  c=fn4(z)*c
  |z|<=512
  ;SOURCE: vp001.frm
}


FUGUE_11 {; 12/01/94
  z=pixel, c=1, a=p1, b=p2:
  z=fn1(z)+(a*b*c)
  |z|<=4
  a=fn2(z)+a
  |z|<=8
  b=fn3(z)+b
  |z|<=16
  c=fn4(z)+c
  |z|<=32
  z=fn1(z)+(a*b*c)/2
  |z|<=64
  a=fn2(z)+a/2
  |z|<=128
  b=fn3(z)+b/2
  |z|<=256
  c=fn4(z)+c/2
  |z|<=512
  ;SOURCE: vp001.frm
}


Fulano {; Fabian Labeau Abril 98
  z=pixel:
  a=z-z^3
  b=z+pixel
  z=z*(z^z)*pixel+(a^b)
  |z| <= 6
  ;SOURCE: 98msg.frm
}


fungus001 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = z + x / fn2(y)
  y = z + fn1(x)
  z = z * z +c 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus002 {; Brian E. Jones
  z=c=pixel, x=imag(c), y=imag(z):
  x = z + x / fn2(y)
  y = z + fn1(y)
  z = z * z + c
  |z|<4
  ;SOURCE: fg2c.par
}


fungus003 {
  z=c=pixel, x=imag(c), y=imag(fn2(z)):
  x = z + x / sqr(y)
  y = c + fn1(y)
  z = z * z + c 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus004 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = z + x / fn2(y)
  y = z + fn3(fn1(y))
  z = z * z + c 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus004a {
  z=c=pixel, x=imag(c), y=imag(z):
  x = z + x / y
  y = fn2(z) + fn3(fn1(y))
  z = z * z + c 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus004b {
  z=pixel, c=(-0.75,0.1234), x=imag(c), y=imag(z):
  x = z + x / y
  y = fn2(z) + fn3(fn1(y))
  z = z * z + c 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus005 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = z + x / sqrt(sqr(y))
  y = z + fn1(fn2(y))
  z = z * z + c 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus006 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = z + x / fn2(y)
  y = z + fn1(y)
  z = z * z + (c * pi)
  |real(z)|<4
  ;SOURCE: 0fungus.frm
}


fungus007 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = z + x / fn2(y/x)
  y = z + fn1(y)
  z = z * z + c
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus008 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = z + x / fn2(y)*pi
  y = z + fn1(y)
  z = z * z + c
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus009 {
  z=c=pixel, x=imag(c), y=imag(z), w=x/y:
  w = z + x / fn2(y)
  x = z + fn1(y)
  y = y * w + x
  z = z * z + c 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus01 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = z + x / fn2(y)
  y = z + fn1(y)
  z = z * z + c 
  |z|<4
  ;SOURCE: fungus.frm
}


fungus010 {
  z=c=pixel, x=imag(c), y=imag(z), w=x/y:
  w = z + x / fn2(y)
  x = z + fn1(y)
  y = y ^ w + x
  z = z * z + c 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus011 {
  z=c=pixel, x=imag(c), y=imag(z):
  c = z + x / sqr(y) * (real(p1) / imag(p1))
  x = z + x / fn2(y)
  y = z + fn1(y)
  z = z * z + c 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus012 {
  z=c=pixel, x=imag(c), y=imag(z):
  c = z + x / sqr(y*y) * (real(p1) / imag(p1))
  x = z + y / fn2(y)
  y = z - x / fn1(y)
  z = z * z + c 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus013 {
  z=c=pixel, x=imag(c), y=imag(z):
  c = z - x / sqr(y*y) * (real(p1) ^ imag(p1))
  x = z + y / fn2(y)
  y = z + x / fn1(y)
  z = z * z + c 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus014 {
  z=c=pixel, x=y=pixel:
  x = y + x / fn1(y)
  y = x + y / fn2(exp(x))
  z = z * z + c
  |z|<8
  ;SOURCE: 0fungus.frm
}


fungus015 {
  z=c=pixel, x=y=pixel:
  x = y + x / fn1(y)
  y = x + y / fn2(c)
  z = z * z + c
  |z|<8
  ;SOURCE: 0fungus.frm
}


fungus016 {
  z=c=pixel, x=y=imag(pixel):
  x = y + x / fn1(y)
  y = x + y / fn2(c)
  z = z * z + c
  |z|<8
  ;SOURCE: 0fungus.frm
}


fungus017 {
  z=c=pixel, x=y=imag(pixel):
  x = z + y / fn1(y)
  y = (x + z / fn2(c))/(p1)
  z = z * z + c
  |z|<8
  ;SOURCE: 0fungus.frm
}


fungus018 {
  z=c=pixel, x=imag(c), y=imag(z), w=(x*y):
  x = z + x / fn2(y)
  y = z + fn1(y)
  z = z * z + (c - w) 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus018a {
  z=c=pixel, x=imag(c), y=imag(z), w=(x*y):
  x = z + x / fn2(y)
  y = z + fn1(y)
  z = z * z + (c * fn3(w)) 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus019 {
  z=c=pixel * (whitesq == 0) + (z) * whitesq
  x=imag(c), y=imag(z):
  x = z + x / fn2(y)
  y = z + fn1(y)
  z = z * z + c
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus02 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = z + x / fn2(y)
  y = z + fn3(fn1(y))
  z = z * z + c 
  |z|<4
  ;SOURCE: fungus.frm
}


fungus020 {
  z = pixel, c = pixel * (whitesq == 0) + (-0.75,0.1234) * whitesq
  x=imag(c), y=imag(z):
  x = z + x / fn2(y)
  y = z + fn1(y)
  z = z * z + c
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus020a {
  z = pixel, c = pixel * (whitesq == 0) + (p1) * whitesq
  x=imag(c), y=imag(z):
  x = z + x / fn2(y)
  y = z + fn1(y)
  z = z * z + c
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus021 {
  z = pixel, c = pixel * (whitesq == 0) + (-0.75,0.1234) * whitesq
  x=imag(c), y=imag(z):
  x = z + x / y
  y = fn3(z) + fn2(fn1(y))
  z = z * z + c 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus022 {
  z = pixel, c = pixel * (whitesq == 0) + (-0.75,0.1234) * whitesq
  x=imag(c), y=imag(z):
  x = z + x / fn2(y)
  y = z + fn1(y)
  z = y * y + x 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus023 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = z + x / fn2(y)
  y = z + fn1(y^x)
  z = z * z + c 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus024 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = z + x / fn2(y)
  y = z + fn1(y)
  z = z  * (whitesq == 0) + (z + c) * whitesq 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus025 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = z / x * fn2(y)
  y = z * fn1(y)
  z = z * z + c 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus026 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = z / fn3(x) * fn2(y)
  y = z * fn1(y)
  z = z * z + c 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus027 {; Brian E. Jones
  z=c=pixel, x=imag(c), y=imag(z):
  x = z / fn3(x) * fn2(y)
  y = z * fn4(fn1(y))
  z = z * z + c
  |z|<4
  ;SOURCE: fg27.par
}


fungus028 {
  z=pixel, c=pixel * (whitesq == 0) + (-0.75,0.1234) * whitesq
  x=imag(c), y=imag(z):
  x = z / fn3(x) * fn2(y)
  y = z * fn4(fn1(y))
  z = z * z + c 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus029 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = z / fn3(x) * fn2(y)
  y = z / fn4(fn1(y))
  z = z * z + c 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus03 {
  z = pixel
  c = pixel * (whitesq == 0) + (-0.75,0.1234) * whitesq
  x=imag(c), y=imag(z):
  x = z + x / fn2(y)
  y = z + fn1(y)
  z = z * z + c
  |z|<4
  ;SOURCE: fungus.frm
}


fungus030 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = z / fn3(x) / fn2(y)
  y = z / fn4(fn1(y))
  z = z * z + c 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus031 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = z ^ fn3(x) ^ fn2(y)
  y = z ^ fn4(fn1(y))
  z = z * z + c 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus032 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = z ^ fn3(x) * fn2(y)
  y = z / fn4(fn1(y))
  z = z * z + c 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus033 {
  z = c = pixel, x=imag(c), y=imag(z):
  x = z / x / y
  y = fn3(z) / fn2(fn1(y))
  z = z * z + c 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus034 {; Brian E. Jones
  z=c=pixel, x=imag(c), y=imag(z):
  x = fn3(z / x) / fn2(y)
  y = z + fn1(y)
  z = z * z + c
  |z|<4
  ;SOURCE: fg34.par
}


fungus035 {; Brian E. Jones
  z=c=pixel, x=imag(c), y=imag(z):
  x = fn3(z / fn4(x)) / fn2(y)
  y = z + fn1(y)
  z = z * z + c
  |z|<4
  ;SOURCE: fg35.par
}


fungus036 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = fn3(z / fn4(x)) / fn2(y^y)
  y = z + fn1(y/y)
  z = z * z + c 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus037 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = fn3(z / fn4(x)) / fn2(y/y)
  y = z + fn1(y/y)
  z = z * z + c 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus038 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = fn3(z / fn4(x)) / sqr(y)
  y = z + fn1(y/y)
  z = z * z + fn2(c) 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus039 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = fn3(z / fn4(x)) / fn2(y)
  y = z / fn1(y)
  z = z * z + c 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus04 {
  z = pixel
  c = pixel * (whitesq == 0) + (-0.75,0.1234) * whitesq
  x=imag(c), y=imag(z):
  x = z + x / y
  y = fn3(z) + fn2(fn1(y))
  z = z * z + c 
  |z|<4
  ;SOURCE: fungus.frm
}


fungus040 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = fn2(z / x / y)
  y = z / fn1(y)
  z = z * z + c
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus041 {; newt test
  z=c=pixel, x=imag(c), y=imag(z), Root = 1:
  x = z + x / fn2(y)
  y = z + fn3(fn1(y))
  z3 = z * z + z 
  z4 = z3 * y
  z = (3 * z4 + Root) / (4 * z3)
  .004 <= |z4 - Root|
  ;SOURCE: 0fungus.frm
}


fungus042 {
  z=c=pixel, x=imag(c), y=imag(z), w=1:
  x = z + x / fn2(y)
  y = z + fn1(y)
  z = sqr(z) + c - fn3(z*(w >= p1))
  w = w + 1
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus043 {
  z=c=pixel, x=imag(c), y=imag(z), w=1:
  x = fn3(z / fn4(x)) / fn2(y)
  y = z + fn1(y)
  z = sqr(z) + c - sin(z*(w >= p1))
  w = w + 1
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus044 {
  z=c=pixel, x=imag(c), y=imag(z), r = 1:
  l = r
  x = z + x / fn2(y)
  y = z + fn1(y)
  z = z * z + c 
  UV = (5,5) - fn3(abs((5,5)) - fn4(abs(z)))
  r = tan(cabs(UV))
  abs(l-r) >= 0.001 && r < 4
  ;SOURCE: 0fungus.frm
}


fungus045 {; mod fungus21
  z = pixel, c = pixel * (whitesq == 0) + (-0.75,0.1234) * whitesq
  x=imag(c), y=imag(z), r = 1:
  l = r
  x = z + x / y
  y = fn3(z) + fn2(fn1(y))
  z = z * z + c 
  UV = (5,5) - abs((5,5) - abs(z))
  r = cabs(UV)
  abs(l-r) >= 0.001 && r < 4
  ;SOURCE: 0fungus.frm
}


fungus046 {; test
  z=c=pixel, x=imag(c), y=imag(z):
  x = z + x / y
  y = z + fn1(y)
  z = z * fn2(z) + c
  |z|<16
  ;SOURCE: 0fungus.frm
}


fungus047 {; x
  z=pixel, c=pixel, x=imag(c), y=imag(z):
  x = z + x / fn2(y)
  y = z + fn1(y)
  c = z / fn3(z) / p1
  z = z * z + c 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus048 {
  z=c=pixel, x=imag(c), y=imag(z), v=real(c), w=real(z):
  x = z + x / fn1(y)
  y = z + y / fn2(x)
  v = z + v / fn3(w)
  w = z + w / fn4(v)
  z = (z-(y+w)) * (z+(y-w)) + (c-(x+v)) 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus049 {; XXX
  z=c=pixel, x=imag(c), y=imag(z):
  x = z / x / fn2(y)
  y = fn3(z / fn4(fn1(y*y)))
  z=z*z+c
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus05 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = z / x * fn2(y)
  y = z * fn1(y)
  z = z * z + c 
  |z|<4
  ;SOURCE: fungus.frm
}


fungus050 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = x / z + x / fn2(y)
  y = y / z + fn1(y)
  z = z * z + c
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus050a {
  z=c=pixel, x=imag(c), y=imag(z):
  x = fn2(x) / z + x / sqr(y)
  y = fn3(y) ^ z + fn1(y)
  z = z * z + c
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus051 {
  z=c=sin(conj(pixel)), x=imag(c), y=imag(z):
  x = z + x / fn2(y)
  y = z + fn3(fn1(y))
  z = z * z + c 
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus052 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = z + x / fn2(y)
  y = z * whitesq + (fn1(y)) * (whitesq == 0) 
  z = z * z + c
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus052a {
  z=c=pixel, x=imag(c), y=imag(z):
  x = z + x / fn2(y+z)
  y = z * whitesq + (fn1((y+z)+(x+z))) * (whitesq == 0) 
  z = z * z + c
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus053 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = z + x / fn2(y+z)
  y=z*whitesq + (fn1(fn3((y+z)-(c+x))+fn4((x+z)-(y+z))))*(whitesq == 0) 
  z = z * z + c
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus054 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = z + x / (fn1(fn2((y+z)+(c-x))+fn3((x-z)+(y+z))))
  y = z * fn4(y) 
  z = z * z + c
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus054a {
  z=c=pixel, x=imag(c), y=imag(z):
  x = z + x / (fn1(fn2((y+z)+(c-x))+fn3((x-z)+(y+z))))
  y = z * whitesq + (fn4(y)) * (whitesq == 0) 
  z = z * z + c
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus055 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = fn1(z + x) / fn2(y+z) * x
  y = z * fn3(y)
  z = z * z + c
  |z|<4
  ;SOURCE: 0fungus.frm
}


fungus06 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = z / fn3(x) * fn2(y)
  y = z * fn4(fn1(y))
  z = z * z + c 
  |z|<4
  ;SOURCE: fungus.frm
}


fungus07 {
  z=pixel
  c=pixel * (whitesq == 0) + (-0.75,0.1234) * whitesq
  x=imag(c), y=imag(z):
  x = z / fn3(x) * fn2(y)
  y = z * fn4(fn1(y))
  z = z * z + c 
  |z|<4
  ;SOURCE: fungus.frm
}


fungus08 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = fn3(z / x) / fn2(y)
  y = z + fn1(y)
  z = z * z + c 
  |z|<4
  ;SOURCE: fungus.frm
}


fungus09 {
  z=c=pixel, x=imag(c), y=imag(z):
  x = fn3(z / fn4(x)) / fn2(y)
  y = z + fn1(y)
  z = z * z + c 
  |z|<4
  ;SOURCE: fungus.frm
}


fungus10 {; Originally posted with name fungus010
  z=c=pixel, x=imag(c), y=imag(z):
  x = fn3(z / fn4(x)) / fn2(y)
  y = z / fn1(y)
  z = z * z + c 
  |z|<4
  ;SOURCE: fungus.frm
}


fuzzy {; To center this on your screen use 
       ; the command corners=-2/3/2.5/-1.5 
  a=real(pixel), b=imag(pixel):
  x=1-abs(a-b), y=1-abs(b-1+a), a=x, b=y 
  sqr(abs(a*a)+abs(b*b))<=p1
  ;SOURCE: fuzzy.frm
}


Fzpcocoh {
  z = pixel, f = 1. / cosh(pixel):
  z = cosxx (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzpcopch {
  z = pixel, f = pixel ^ (cosh(pixel) ):
  z = cosxx (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzpcopcs {
  z = pixel, f = pixel ^ (1. / cosxx(pixel) ):
  z = cosxx (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzpcopct {
  z = pixel, f = pixel ^ (cosxx(pixel) / sin(pixel) ):
  z = cosxx (z)  + f 
  |z|<= 50
  ;SOURCE: skinner.frm
}


Fzpcophc {
  z = pixel, f = pixel ^ (1. / cosh(pixel) ):
  z = cosxx (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzpcophs {
  z = pixel, f = pixel ^ (1. / sinh(pixel) ):
  z = cosxx (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzpcopht {
  z = pixel, f = pixel ^ (cosh(pixel) / sinh(pixel) ):
  z = cosxx (z)+f
  |z|<= 50
  ;SOURCE: skinner.frm
}


Fzpcopse {
  z = pixel, f = pixel ^ (1. / sin(pixel) ):
  z = cosxx (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzpcopsh {
  z = pixel, f = pixel ^ (sinh(pixel) ):
  z = cosxx (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzpcopsq {
  z = pixel, f = pixel ^ (sqr(pixel) ):
  z = cosxx (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzpcopta {
  z = pixel, f = pixel ^ (sin(pixel) / cosxx(pixel) ):
  z = cosxx (z)  + f 
  |z|<= 50
  ;SOURCE: skinner.frm
}


Fzpcopth {
  z = pixel, f = pixel ^ (sinh(pixel) / cosh(pixel) ):
  z = cosxx (z)+f
  |z|<= 50
  ;SOURCE: skinner.frm
}


Fzpcoseh {
  z = pixel, f = 1. / sinh(pixel):
  z = cosxx (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzpfncoh {; Lee Skinner
  z = pixel, f = 1./cosh(pixel):
  z = fn1(z) + f
  |z| <= 50
  ;SOURCE: fractint.frm
}


Fzpfnseh {; Lee Skinner
  z = pixel, f = 1./sinh(pixel):
  z = fn1(z) + f
  |z| <= 50
  ;SOURCE: fractint.frm
}


Fzppchco {
  z = pixel, f = cosxx (pixel):
  z = cosh (z) + f
  |z| <= 50
  ;SOURCE: fractint.frm
}


Fzppchex {
  z = pixel, f = exp (pixel):
  z = cosh (z) + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppchlo {
  z = pixel, f = log (pixel):
  z = cosh (z) + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppchsh {
  z = pixel, f = sinh (pixel):
  z = cosh (z) + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppchsi {
  z = pixel, f = sin (pixel):
  z = cosh (z) + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppchsq {
  z = pixel, f = sqr (pixel):
  z = cosh (z) + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppcoch {
  z = pixel, f = cosh (pixel):
  z = cosxx (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppcocs {
  z = pixel, f = 1. / cosxx(pixel):
  z = cosxx (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppcoct {
  z = pixel, f = cosxx(pixel) / sin(pixel):
  z = cosxx (z)  + f 
  |z|<= 50
  ;SOURCE: skinner.frm
}


Fzppcoex {
  z = pixel, f = exp (pixel):
  z = cosxx (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppcohs {
  z = pixel, f = sinh (pixel):
  z = cosxx (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppcoht {
  z = pixel, f = cosh(pixel) / sinh(pixel):
  z = cosxx (z)+f
  |z|<= 50
  ;SOURCE: skinner.frm
}


Fzppcolo {
  z = pixel, f = log (pixel):
  z = cosxx (z)  + f
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppcopc {
  z = pixel, f = pixel ^ (cosxx(pixel) ):
  z = cosxx (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppcope {
  z = pixel, f = pixel ^ (exp(pixel) ):
  z = cosxx (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppcopl {
  z = pixel, f = pixel ^ (log(pixel) ):
  z = cosxx (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppcopo {
  z = pixel, f = (pixel) ^ (pixel):
  z = cosxx (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppcopr {
  z = pixel, f = pixel ^ (1. / pixel):
  z = cosxx (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppcops {
  z = pixel, f = pixel ^ (sin(pixel) ):
  z = cosxx (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppcore {
  z = pixel, f = 1. / (pixel):
  z = cosxx (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppcos {
  z = pixel, f = cosxx (pixel):
  z = cosxx (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppcose {
  z = pixel, f = 1. / sin(pixel):
  z = cosxx (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppcosh {
  z = pixel, f = cosh (pixel):
  z = cosh (z) + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppcosi {
  z = pixel, f = sin (pixel):
  z = cosxx (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppcosq {
  z = pixel, f = sqr (pixel):
  z = cosxx (z)  + f
  |z| <= 50
  ;SOURCE: fractint.frm
}


Fzppcosr {
  z = pixel, f = (pixel) ^ 0.5:
  z = cosxx (z)  + f
  |z| <= 50
  ;SOURCE: fractint.frm
}


Fzppcota {
  z = pixel, f = sin(pixel) / cosxx(pixel):
  z = cosxx (z)  + f 
  |z|<= 50
  ;SOURCE: skinner.frm
}


Fzppcoth {
  z = pixel, f = sinh(pixel) / cosh(pixel):
  z = cosxx (z)+f
  |z|<= 50
  ;SOURCE: skinner.frm
}


Fzppexch {
  z = pixel, f = cosh (pixel):
  z = exp (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppexco {
  z = pixel, f = cosxx (pixel):
  z = exp (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppexlo {
  z = pixel, f = log (pixel):
  z = exp (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppexp {
  z = pixel, f = exp (pixel):
  z = exp (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppexsh {
  z = pixel, f = sinh (pixel):
  z = exp (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppexsi {
  z = pixel, f = sin (pixel):
  z = exp (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppexsq {
  z = pixel, f = sqr (pixel):
  z = exp (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppfncs {; Lee Skinner
  z = pixel, f = 1./cos(pixel):
  z = fn1(z) + f
  |z| <= 50
  ;SOURCE: fractint.frm
}


Fzppfnct {; Lee Skinner
  z = pixel, f = cos(pixel)/sin(pixel):
  z = fn1(z) + f
  |z|<= 50
  ;SOURCE: fractint.frm
}


Fzppfnht {; Lee Skinner
  z = pixel, f = cosh(pixel)/sinh(pixel):
  z = fn1(z)+f
  |z|<= 50
  ;SOURCE: fractint.frm
}


Fzppfnpo {; Lee Skinner
  z = pixel, f = (pixel)^(pixel):
  z = fn1(z) + f
  |z| <= 50
  ;SOURCE: fractint.frm
}


Fzppfnre {; Lee Skinner
  z = pixel, f = 1./(pixel):
  z = fn1(z) + f
  |z| <= 50
  ;SOURCE: fractint.frm
}


Fzppfnse {; Lee Skinner
  z = pixel, f = 1./sin(pixel):
  z = fn1(z) + f
  |z| <= 50
  ;SOURCE: fractint.frm
}


Fzppfnsr {; Lee Skinner
  z = pixel, f = (pixel)^.5:
  z = fn1(z) + f
  |z| <= 50
  ;SOURCE: fractint.frm
}


Fzppfnta {; Lee Skinner
  z = pixel, f = tan(pixel):
  z = fn1(z) + f
  |z|<= 50
  ;SOURCE: fractint.frm
}


Fzppfnth {; Lee Skinner
  z = pixel, f = tanh(pixel):
  z = fn1(z)+f
  |z|<= 50
  ;SOURCE: fractint.frm
}


Fzppshch {
  z = pixel, f = cosh (pixel):
  z = sinh (z) + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppshco {
  z = pixel, f = cosxx (pixel):
  z = sinh (z) + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppshex {
  z = pixel, f = exp (pixel):
  z = sinh (z) + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppshlo {
  z = pixel, f = log (pixel):
  z = sinh (z) + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppshsi {
  z = pixel, f = sin (pixel):
  z = sinh (z) + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppshsq {
  z = pixel, f = sqr (pixel):
  z = sinh (z) + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppsich {
  z = pixel, f = cosh (pixel):
  z = sin (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppsico {
  z = pixel, f = cosxx (pixel):
  z = sin (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppsiex {
  z = pixel, f = exp (pixel):
  z = sin (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppsilo {
  z = pixel 
  f = log (pixel):  
  z = sin (z)  + f 
  |z| <= 50
  ;SOURCE: skinv151.frm
}


Fzppsinh {
  z = pixel, f = sinh (pixel):
  z = sinh (z) + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppsire {
  z = pixel 
  f = 1. / (pixel):  
  z = sin (z)  + f 
  |z| <= 50
  ;SOURCE: skinv151.frm
}


Fzppsish {
  z = pixel, f = sinh (pixel):
  z = sin (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppsisq {
  z = pixel, f = sqr (pixel):
  z = sin (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppsqex {
  z = pixel 
  f = exp (pixel):  
  z = sqr (z)  + f 
  |z| <= 50
  ;SOURCE: skinv151.frm
}


Fzppsqlo {
  z = pixel, f = log (pixel):
  z = sqr (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppsqsh {
  z = pixel, f = sinh (pixel):
  z = sqr (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}


Fzppsqsi {
  z = pixel, f = sin (pixel):
  z = sqr (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}

