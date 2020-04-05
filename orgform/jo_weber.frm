FlipLambdaJ(XYAXIS) = { ; Jo Weber [100424,35], 6/1996
                      z = pixel
                      a1=sqr(z), a2=1/a1, a3=1/(sqr(a1)) 
                      z=a1+a2+a3+pixel,
    ;SOURCE: jo_we_50.frm
}

bfly(XYAXIS)  {
; Be creative and try to use these terms in novel ways.
; You have to be careful what you initialize here
; or everything goes to 0.0
      z = zp1 = pixel, zp2 = (0,0):
      temp = z
      z  = z * zp1 + zp2
      zp2 = zp1
      zp1 = temp, |zp1| <= 4 
}


bfly1(XAXIS)  {
; A minor variation on exp1 [init to pixel], gives another
; butterfly symmetry.
      z = zp = pixel:
      temp = z
      z = -exp(z) - zp
      z(-z) - zp
      zp = temp,|zp| <= 4 
}


bfly3(XAXIS)  {
; How about a conjugation of a cosine function
        z=pixel, zp = z1 = (0,0):
          temp = z
          z = 1-cos(z) - zp
          zp = conj(temp),|zp| <= 4 
}



CGNewtonSinExp (XAXIS) {
        z=pixel:
        z1=exp(z);
        z2=sin(z)+z1-z;
        z=z-p1*z2/(cos(z)+z1), .0001 < |z2|
}


Chico { ; Mutation of 'M-SetInNewton'. Mutated by Bradley Beacham [74223,2745]
  ; Original formula by Jon Horner [100112,1700]
  ; For 'M-SetInNewton' set FN1 & FN2 =IDENT and P1 & P2 = default
  ; p1 & p2 = Parameters (default 3,0 and 0,0)
  z = 0,  c = fn1(pixel),  cminusone = c-1
  ; The next line sets k=default if p1=0, else k=p1
  k = (3 * (|p1|<=0) + p1)
  kminusone = k - 1:
    oldz = z
    nm = k*c-kminusone*z*cminusone
    dn = k*(k*z*z+cminusone)
    z = fn2(nm/dn)+kminusone*z/k + p2
    0.01 <= |(z-oldz)|
}


clipover(XAXIS)  {
; Lets turn it inside out like the mandover mapping.
      z =1/pixel, zp = (0,0):
      temp = z
      z = -(z^.5) - zp
      zp = temp, |zp| <= 4 
}


clips(XAXIS)  {
; A rather bizzare varient made with a sign change.
      z = pixel, zp = (0,0):
      temp = z
      z = -(z^.5) - zp
      zp = temp, |zp| <= 4 
}


cnigel(XAXIS)  {
; Conjugates still show the chaotic banding it tends to
; produce in this fractal type.
      z = pixel,zp1=zp2=zp3=(0,0):
      temp = z
      z = z*z - zp3
      zp3 = zp2
      zp2 = zp1
      zp1 = conj(temp), |zp1| <= 4 
}


cntr1(XAXIS)  {
; There are many different combinations on this theme.
      z = zp1 = zp2 = pixel:
      temp = z
      z  = z * zp2 + zp1
      zp2 = zp1
      zp1 = temp, |zp1| <= 4 
}


cntrpc(XYAXIS)  {
; another interesting variant using two previous terms.
      z = zp1 = pixel, zp2 = (0,0):
      temp = z
      z  = z * zp1 - zp2
      zp2 = zp1
      zp1 = temp, |zp1| <= 4 
}


ComplexNewton_01    {; Jon Horner (ex-CAL) [ not sure about this one ]
                     ; modified by Jo Weber, 6/1996
		    pm1 = p1-1,  z = pixel :
		    oldz = z,
		    z = (pm1*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.001|
}


ComplexNewton_02(XAXIS){; Jon Horner 
		       ; modified by Jo Weber, 6/1996 
		    pm1 = p1-1.51,  z = pixel :
		    oldz = z,
		    z = (pm1*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.001|
}


ComplexNewton_02a(YAXIS){; Jon Horner 
		       ; modified by Jo Weber, 6/1996 
		    pm1 = p1-1.51,  z = pixel :
		    oldz = z,
		    z = (pm1*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.001|
}


ComplexNewton_03(XAXIS){; Jon Horner 
		       ; modified by Jo Weber, 6/1996 
		    pm1 = p1-2,  pm2=p1-1, z = pixel :
		    oldz = z,
		    z = (pm2*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.0001|
}


ComplexNewton_03a(YAXIS){; Jon Horner 
		       ; modified by Jo Weber, 6/1996 
		    pm1 = p1-2,  pm2=p1-1, z = pixel :
		    oldz = z,
		    z = (pm2*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.0001|
}


ComplexNewton_04(XAXIS){; Jon Horner 
		       ; modified by Jo Weber, 6/1996 
		    pm1 = p1-1.5,  pm2=p1-1, z = pixel :
		    oldz = z,
		    z = (pm2*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.005|
}


ComplexNewton_04a(YAXIS){; Jon Horner 
		       ; modified by Jo Weber, 6/1996 
		    pm1 = p1-1.5,  pm2=p1-1, z = pixel :
		    oldz = z,
		    z = (pm2*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.005|
}


ComplexNewton_05(XAXIS){; Jon Horner 
		       ; modified by Jo Weber, 6/1996 
		    pm1 = p1-1,  z = pixel :
		    oldz = z,
		    z = (pm1*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.001|
}


ComplexNewton_05a(YAXIS){; Jon Horner 
		       ; modified by Jo Weber, 6/1996 
		    pm1 = p1-1,  z = pixel :
		    oldz = z,
		    z = (pm1*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.001|
}


ComplexNewton_06{; Jon Horner 
		       ; modified by Jo Weber, 6/1996 
		    pm1 = p1-1.51,  z = pixel :
		    oldz = z,
		    z = (pm1*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.001|
}


ComplexNewton_07{; Jon Horner 
		       ; modified by Jo Weber, 6/1996 
		    pm1 = p1-2,  pm2=p1-1, z = pixel :
		    oldz = z,
		    z = (pm2*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.0001|
}


ComplexNewton_08{; Jon Horner 
		       ; modified by Jo Weber, 6/1996 
		    pm1 = p1-1.5,  pm2=p1-1, z = pixel :
		    oldz = z,
		    z = (pm2*(z^p1) +1)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.005|
}


ComplexNewton_09{; Jon Horner 
                 ; modified by Jo Weber, 6/1996
                 ; requires float=yes                      
		    pm1 = p1-1.5,  pm2=p1-1, z = pixel :
		    oldz = z,
		    z = fn1((pm2*(z^p1) +1)/(p1 * z^pm1)),
		    |(z-oldz)|>=|0.005|
}


ComplexNewton_10{; Jon Horner 
                 ; modified by Jo Weber, 6/1996
		    pm1 = p1-1.5,  pm2=p1-1, z = pixel :
		    oldz = z,
		    z = fn1(pm2*(z^p1) +1)/fn2(p1 * z^pm1),
		    |(z-oldz)|>=|0.005|
}


ComplexNewton_11{; Jon Horner 
                 ; modified by Jo Weber, 6/1996
		    pm1 = p1-1.5,  pm2=p1-1, z = pixel :
		    oldz = z,
		    z = fn3(fn1(pm2*(z^p1) +1)/fn2(p1 * z^pm1)),
		    |(z-oldz)|>=|0.005|
}


ComplexNewton_12{; Jon Horner 
		       ; modified by Jo Weber, 6/1996 
		    pm1 = p1-1,  z = pixel :
		    oldz = z,
		    z = (pm1*(z^p1) +0.5)/(p1 * z^pm1),
		    |(z-oldz)|>=|0.001|
}


crown(XAXIS)  {
; some interesting combinations make some wierd formations.
      z = zp1 = pixel, zp2 = (0,0):
      temp = z
      z = z*zp2 - zp1
      zp2 = zp1^.5
      zp1 = temp,  |zp1| <= 4 
}


Curly { ; Mutation of 'Natura'. Mutated by Bradley Beacham [74223,2745]
  ; Original formula by Michael Theroux [71673,2767]
  ; For 'Natura', set FN1 & FN2 =IDENT and P1 & P2 = default
  ; p1 = Parameter (default 0.5,0), real(p2) = Bailout (default 4)
  z = pixel
  ; The next line sets c=default if p1=0, else c=p1
  c = ((0.5,0) * (|p1|<=0) + p1)
  ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2)):
    z = fn1(fn2(z*z*z)) + c
    |z| <= test
}



dafrm21 { ; Copy this formula to formulafile da.frm
   z = pixel:
   x = real(z), y = imag(z),
   x1 = -fn1((x*x*x + y*y*y - 1) - 6*x)*x/(2*x*x*x + y*y*y - 1),
   y1 = -fn2((x*x*x + y*y*y - 1) + 6*x)*y/(2*x*x*x + y*y*y - 1),
   x2 = x1*x1*x1 - y1*y1*y1 + p1 + 5,
   y2 = 4*x*y - 18,
   z = x2 + flip(y2),
   |z| <= 100
}



exp1(XAXIS)  {
; An exponential function can produce fractals as well
      z = pixel, zp = (0,0):
      temp = z
      z = -exp(z) - zp
      zp = temp, |zp| <= 4 
}



F'Liar1 { 
        ; X: X is as true as Y
        ; Y: Y is as true as X is false
        ; Calculate new x and y values simultaneously.
        ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = pixel:
  z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z) ) );
  fn1(abs(z))<p1 
}


F'Liar1A { ; Generalization by Jon Horner of Chuck Ebbert formula.
	; X: X is as true as Y
	; Y: Y is as true as X is false
	; Calculate new x and y values simultaneously.
	; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
	z = fn1(pixel):
	z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z) ) );
	|z| <= p1
}


F'Liar1C { ; Generalization by Jon Horner of Chuck Ebbert formula.
	; X: X is as true as Y
	; Y: Y is as true as X is false
	; Calculate new x and y values simultaneously.
	; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
	z = fn1(pixel):
	z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z) ) );
	fn2(abs(z))<p1
}


F'Liar1D { ; Generalization by Jon Horner of Chuck Ebbert formula.
	; X: X is as true as Y
	; Y: Y is as true as X is false
	; Calculate new x and y values simultaneously.
	; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
	z = fn1(pixel):
	z = p1 - abs(imag(z)-real(z) ) + flip(p2 - abs(1-real(z)-imag(z) ) );
	|z| <1
}


F'Liar2 { ; Generalization by Jo. Horner of Chuck Ebert Formula
          ; x(n+1) = 1 - abs(y(n)-x(n! );
          ; y(n+1) = 1 - abs((1-x(n+1) )-y(n) );
  z = fn1(pixel):
  x = 1 - abs(imag(z)-real(z)),
  z = flip(1 - abs(1-real(x)-imag(z) ) ) + real(x),
  |z| <= p1 
}


fish(XAXIS)  {
; Lets not completely rule out a constant either. Add one to the Trillium
        z=c=pixel, zp = (0,0):
          temp = z
          z = z*z - zp + c
          zp = temp,|zp| <= 4 
}


FlipConjJul_N  { ; Jm Collard-Richard
      z=pixel:
      z=flip(conj(z^p2))+p1,
      |z|<=4         
}


FlipLambdaJ = { ; Ron Barnett, 1993
   z = pixel:
   z = p1*z*(1-flip(z)*flip(z)), |z| <= 100
}


four(XYAXIS)  {
; A square root initialization of the octo will halve the number of arms
      z = pixel^.5,zp=(0,0):
      temp = z
      z = z^3 - zp
      zp = temp, |zp| <= 4 
}


FractalFenderC(XAXIS_NOPARM) {
                       z=p1,x=|z|:
                       (z=cosh(z)+pixel)*(1<x)+(z=z)*(x<=1),
                       z=sqr(z)+pixel,x=|z|,
                       x<=4 
}


frtan(XAXIS)  {
; Lets not forget the tangent
      z = pixel, zp = (0,0):
      temp = z
      z = -tan(z) - zp
      zp = temp, |zp| <= 4 
}


fuzzy {
a=real(pixel), b=imag(pixel):
x=1-abs(a-b), y=1-abs(b-1+a), a=x, b=y, sqr(abs(a*a)+abs(b*b))<=p1
}



GenInvMand1_N  { ; Jm Collard-Richard
c=z=1/pixel:
z=fn1(z)*fn2(z)+fn3(fn4(c)),
|z|<=4         
}


globe(XAXIS)  {
; Will it work with just a square root?
      z = pixel, zp = (0,0):
      temp = z
      z = z^.5 - zp
      zp = temp, |zp| <= 4 
}


Gmandel_1 {           ; Sylvie Gallet 1995
                      ; bailout = p1
   z=pixel/(conj(pixel)+(0.0,1.0)) 
   c=(1/pixel)/(flip(conj(pixel))-1.0) :
   z=z^2+c
|z| <= p1
}


goat(XAXIS)  {
; What about a root of the negative sum?
       z = pixel, zp = (0,0):
          temp = z
          z = z*z + zp
          zp = (-temp)^.5,|zp| <= 4 
}


Groucho { ; Mutation of 'Fish2'. Mutated by Bradley Beacham [74223,2745]
  ; Original formula by Dave Oliver via Tim Wegner
  ; For 'Fish2', set FN1 & FN2 =IDENT and P1 & P2 = default
  ; p1 = Parameter (default 1,0), real(p2) = Bailout (default 4)
  z = c = pixel
  ; The next line sets k=default if p1=0, else k=p1
  k = ((1,0) * (|p1|<=0) + p1)
  ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2)):
    z1 = c^(fn1(z)-k)
    z = fn2(((c*z1)-k)*(z1))
    |z| <= test
}



Harpo { ; Mutation of 'Gopalsamy3'. Mutated by Bradley Beacham [74223,2745]
  ; Original formula by Ron Barnett [70153,1233]
  ; For 'Gopalsamy3' with Ron's suggested parameters,
  ; set FN1 & FN2 = IDENT and P1 & P2 = default
  ; p1 = Parameter (default 1.099,0), real(p2) = Bailout (default 4)
  z = pixel
  ; The next line sets c=default if p1=0, else c=p1
  c = ((1.099,0) * (|p1|<=0) + p1)
  ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2)):
    x = real(z), y = imag(z)
    x1 = fn1(3*x*y*y - x*x*x) + c
    y = fn2(y*y*y - 3*x*x*y)
    z = x1 + flip(y)
    |z| <= test
}


hflip  {
; A little non-standard math-function produces chaotic bands like the
; conjugate function but the symmetry is now skew.
      z = pixel,zp=(0,0):
      temp = z
      z = z*z +  zp
      zp = flip(temp), |zp| <= 4 
}


hflip2  {
; The pixel squared mapping still doubles the symmetry.
      z = pixel^2,zp=(0,0):
      temp = z
      z = z*z +  zp
      zp = flip(temp), |zp| <= 4 
}


hroot(XAXIS)  {
; Map hydra function to the Squar a small change here
        z=pixel, zp = (0,0):
          temp = z
          z = z*z - zp
          zp = (temp)^.5,|zp| <= 4 
}


hsqr(XYAXIS)  {
; squaring the initialized value of the hydra fractal
      z = pixel^2,zp=(0,0):
      temp = z
      z = z*z +  zp
      zp = temp, |zp| <= 4 
}


htc {
; You can do it with a constant too.
      z = c = pixel,zp=(0,0),huge=1.0e32:
      temp = z
      z = z*z + zp
      zp = c*p1/temp, (|zp| <= 64) && (|z| <= huge) 
}


htd {
; Try a second order inductive term.
      z = zp2 = pixel, zp1 = (0,0), huge=1.0e32:
      temp = z
      z = zp1*zp1 - zp2
      zp2 = zp1
      zp1 = p1/temp, (|zp1| <= 64) && (|z| <= huge) 
}


htexp1 {
; An exponential function can produce fractals as well
      z = pixel, bail=real(p2), zp = (0,0), huge=1.e32:
      temp = z
      z = -exp(z) - zp
      zp = p1/temp, (|zp| <=bail && |z| <=huge)
}


htexp2 {
; An exponential function can produce fractals as well
      z = pixel, bail=real(p2), zp = (0,0), huge=1.e32:
      temp = z
      z = exp(z) - zp
      zp = p1/temp, (|zp| <=bail && |z| <=huge)
}


htexp3 {
; An exponential function can produce fractals as well
      z = pixel, bail=real(p2), zp = (0,0), huge=1.e32:
      temp = z
      z = exp(z) + zp
      zp = p1/temp, (|zp| <=bail && |z| <=huge)
}


htgen {
; Try a second order inductive term.
      z = pixel, zp1 = (0,0), bail=real(p2),huge=1.0e32:
      temp = z
      z = z*z + zp1
      zp1 = p1/temp, (|zp1| <= bail) && (|z| <= huge) 
}


htree(XAXIS)  {
; Try a different order of the terms.
      z = zp2 = pixel,  zp1 = (0,0), huge = 1.0e32:
      temp = z
      z = zp1*zp1  - zp2
      zp2 = zp1
      zp1 = p1/temp, (|zp1| <= 64) && (|z| <= huge) 
}


 hydra(XAXIS) {
 ; The first inductive formula I came up with.
      z = pixel, zp = (0,0):
         temp = z
         z = z*z + zp
         zp = temp, |zp| <= 4 
}



inandout01 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = oldz = pixel, c1 = fn1(pixel), c2 = fn2(pixel):
    a = (|z| <= |oldz|) * (c1) ;IN
    b = (|oldz| < |z|)  * (c2) ;OUT
    oldz = z
    z = fn3(z*z) + a + b + p1
    |z| <= test
}


inandout02 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = oldz = pixel:
    a = (|z| <= |oldz|) * (fn1(z)) ;IN
    b = (|oldz| < |z|) * (fn2(z))  ;OUT
    oldz = z
    z = a + b + p1
    |z| <= test
}


inandout03 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = oldz = c = pixel:
    a = (|z| <= |oldz|) * (c)    ;IN
    b = (|oldz| < |z|)  * (z*p1) ;OUT
    c = fn1(a + b)
    oldz = z
    z = fn2(z*z) + c
    |z| <= test
}


inandout04 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 1), real(p2) = Bailout (default 4)
  ;The next line sets k=default if p1=0, else k=p1
  k = ((1) * (|p1|<=0) + p1)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = oldz = c = pixel:
    a = (|z| <= |oldz|) * (c)   ;IN
    b = (|oldz| < |z|)  * (c*k) ;OUT
    c = a + b
    oldz = z
    z = fn1(z*z) + c
    |z| <= test
}


inandout05 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = oldz = pixel:
  a = (|z| <= |oldz|) * (pixel) ;IN
  b = (|oldz| < |z|)  * (oldz)  ;OUT
  oldz = z
  z = fn1(z*z) + a + b + p1
  |z| <= test
}


inandout06 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = pixel, c1 = fn2(pixel), c2 = fn3(pixel), olddist =100,
  tgt = fn1(pixel), rt=real(tgt), it=imag(tgt):
    x = real(z) - rt
    y = imag(z) - it
    dist = x*x + y*y
    in  = c1 * (dist <= olddist)
    out = c2 * (olddist < dist)
    olddist = dist
    z = z*z + in + out + p1
      |z| <= test
}


inandout07 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = pixel, tgt = fn1(pixel), rt = real(tgt), it = imag(tgt),
  olddist = 100:
    x = real(z) - rt
    y = imag(z) - it
    dist = x*x + y*y
    in  = fn2(z) * (dist <= olddist)
    out = fn3(z) * (olddist < dist)
    olddist = dist
    z = in + out + p1
      |z| <= test
}


inandout08 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = c = pixel, tgt = fn1(pixel), rt = real(tgt), it = imag(tgt),
  olddist = 100:
    x = real(z) - rt
    y = imag(z) - it
    dist = x*x + y*y
    in  = c * (dist <= olddist)
    out = (z*p1) * (olddist < dist)
    c = fn2(in + out)
    olddist = dist
    z = fn3(z*z) + c
      |z| <= test
}


inandout09 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 1), real(p2) = Bailout (default 4)
  ;The next line sets k=default if p1=0, else k=p1
  k = ((1) * (|p1|<=0) + p1)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = c = pixel, tgt = fn1(pixel), rt = real(tgt), it = imag(tgt),
  olddist = 100:
    x = real(z) - rt
    y = imag(z) - it
    dist = x*x + y*y
    in  = c * (dist <= olddist)
    out = (c*k) * (olddist < dist)
    c = in + out
    olddist = dist
    z = fn2(z*z) + c
      |z| <= test
}


inandout10 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = oldz = pixel, tgt = fn1(pixel), rt = real(tgt), it = imag(tgt),
  olddist = 100:
    x = real(z) - rt
    y = imag(z) - it
    dist = x*x + y*y
    in  = pixel * (dist <= olddist)
    out = oldz * (olddist < dist)
    olddist = dist
    oldz = z
    z = fn2(z*z) + in + out + p1
      |z| <= test
}


inandout11 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = pixel, c1 = fn1(pixel), c2 = fn2(pixel),
  rt = real(p1), it = imag(p1), olddist = 100:
    x = real(z) - rt
    y = imag(z) - it
    dist = x*x + y*y
    in  = c1 * (dist <= olddist)
    out = c2 * (olddist < dist)
    olddist = dist
    z = fn3(z*z) + in + out
      |z| <= test
}


inandout12 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0,0), p2 = Parameter (default 0,0)
  z = pixel, rt = real(p1), it = imag(p1), olddist = 100:
    x = real(z) - rt
    y = imag(z) - it
    dist = x*x + y*y
    in  = fn1(z) * (dist <= olddist)
    out = fn2(z) * (olddist < dist)
    olddist = dist
    z = in + out + p2
      |z| <= 4
}


inandout13 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), p2 = parameter (default 1,0)
  ;The next line sets k=1 if real(p2)==0, else k=p2
  k = (1 * (real(p2)==0) + p2 * (0 != p2))
  z = c = pixel, rt = real(p1), it = imag(p1), olddist = 100:
    x = real(z) - rt
    y = imag(z) - it
    dist = x*x + y*y
    in  = c * (dist <= olddist)
    out = (z*k) * (olddist < dist)
    c = fn1(in + out)
    olddist = dist
    z = fn2(z*z) + c
      |z| <= 4
}


inandout14 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = pixel, c = fn2(z), olddist =100,
  tgt = fn1(pixel), rt=real(tgt), it=imag(tgt):
    x = real(z) - rt
    y = imag(z) - it
    dist = (x * x) + (y * y)
    in = (z*z*z) * (dist <= olddist)
    out = (z*z) * (olddist < dist)
    olddist = dist
    z = in + out + c + p1
    |z| <= test
}



j_reel_1 { ; copyright Sylvie Gallet
   z=pixel , x=real(z) , y=imag(z) :
   x2=x*x , y2=y*y , x3=x2*x , y3= y2*y
   x=x3-y3+y , y=x2-y2 , z=x+flip(y)
   |z|<=p1
     ;SOURCE: jo_we_07.frm
}


janet {
       z=zp1=pixel, zp2 = (0,0), huge = 1.0e32:
       temp = z
       z = sin(z) - zp2
       zp2 = zp1
       zp1 = p1/temp, (|zp2| <= 4 && |z| <= huge) 
  ;SOURCE: noel.frm
}


JoWe55c01 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
c=z=1/pixel + (z=c=cosxx(z) + 1/pixel):
z=fn1(z) + c;
z=fn2(z) + c,
|z| <=10
   ;SOURCE: jo_we_55.frm
}


JoWe55c02 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
c=z=1/pixel + (z=c=fn3(z) + p1/pixel):
z=fn1(z) + c;
z=fn2(z) + c,
|z| <=p2
   ;SOURCE: jo_we_55.frm
}


JoWe55c03 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
c=z=1/pixel + (z=c=fn3(z) + p1/pixel):
z=fn1(z) + c-0.14;
z=fn2(z) + c-0.14,
|z| <=p2
   ;SOURCE: jo_we_55.frm
}


JoWe55c04 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
c=z=1/pixel + (z=c=fn3(z) + p1/pixel):
z=fn1(z) + c-0.28;
z=fn2(z) + c-0.14,
|z| <=p2
   ;SOURCE: jo_we_55.frm
}


JoWe55c05 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
c=z=p1/pixel + (z=c=fn3(z) + p1/pixel):
z=fn1(z) + c*c
z=fn2(z) + (c<0)
|z| <=p2
   ;SOURCE: jo_we_55.frm
}


JoWe55c06 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
c=z=p1/pixel + (z=c=fn3(z) + p1/pixel):
z=fn1(z) + c*c
z=fn2(z) + (z<0)
|z| <=p2
   ;SOURCE: jo_we_55.frm
}


JoWe55c07 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
c=z=p1/pixel,c=fn1(z)+p1/pixel:
z=(fn2(z*z)*fn3(z/pixel)-pixel)+c,
|z| <=p2
   ;SOURCE: jo_we_55.frm
}


JoWe55c08 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=oldz=c=p1/pixel, c=fn1(z):
temp=z
z=fn2((z*oldz+c)/pixel)
oldz=temp;
z=fn3(z) + c,
|z| <=p2
   ;SOURCE: jo_we_55.frm
}


JoWe55c09 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=c=fn1(1/pixel):
z=fn1(z*z) + fn2(z) + c,
|z| <=p1
  ;SOURCE: jo_we_55.frm
}


JoWe55c10 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z1=c1=fn1(1/pixel),
z2=c2=fn2(1/pixel):
z=(fn1(z1*z1) + tan(z1) + c1)*whitesq+(fn2(z2*z2) + tan(z2) + c2)*(whitesq==0)
z1=z
z2=z
|z| <=p1
  ;SOURCE: jo_we_55.frm
}


JoWe55c11 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
c=z=p1/pixel, c=fn1(-1.1,0.24)/pixel:
z=fn2(z) + c,
|z| <=p2
   ;SOURCE: jo_we_55.frm
}


JoWe55c12 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
c=z=p1/pixel, c1=flip(-1.1,0.24)/pixel, c2=conj(1.1,0.24)/pixel :
z=(tan(z) + c1)*whitesq+(tan(z) + c2)*(whitesq==0)
|z| <=p2
   ;SOURCE: jo_we_55.frm
}


JoWe55c13 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
c=z=p1/pixel, c1=flip(-1.1,0.24)/pixel, c2=conj(-1.1,0.24)/pixel :
z=(tan(z) + c1)*whitesq+(tan(z) + c2)*(whitesq==0)
|z| <=p2
   ;SOURCE: jo_we_55.frm
}


JoWe55c14 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
c=z=p1/pixel, c1=fn1(-1.1,0.24)/pixel, c2=fn2(-1.1,0.24)/pixel :
z=(tan(z) + c1)*whitesq+(sin(z) + c2)*(whitesq==0)
|z| <=p2
   ;SOURCE: jo_we_55.frm
}


JoWe55c15 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
c=z=p1/pixel, c1=fn1(-1.1,0.24)/pixel, c2=fn2(-1.1,0.24)/pixel :
z=(fn3(z) + c1)*whitesq+(fn3(z) + c2)*(whitesq==0)
|z| <=p2
   ;SOURCE: jo_we_55.frm
}


JoWe55c16 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=c=p1/pixel:
z=fn1(c^z)/pixel;
z=(fn2(z) + 0.1) + c-1,
|z| <=p2
   ;SOURCE: jo_we_55.frm
}


Jowe55c17 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=c=p1/pixel:
z=(fn1(z)+c)/(z+0.5)+c,
|z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c18 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
c=z=p1/pixel, c1=fn1(-1.1,0.24)/pixel, c2=fn2(1.1,0.24)/pixel,
c3=fn3(-1.1,-0.24)/pixel :
z=(fn4(z) + c1)*(whitesq==1)+(fn4(z) + c2)*(whitesq==0)+(fn4(z) + c3)*whitesq
|z| <=p2
   ;SOURCE: jo_we_55.frm
}


JoWe55c19 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=c=p1/pixel:
z=(fn2(fn1(z)) + c)/(z+0.75)+c,
|z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c20 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=c=pixel:
z=(fn2(fn1(z)) + c)/(z+0.75)+c,
|z| <=p1
  ;SOURCE: jo_we_55.frm
}


JoWe55c21 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=c=p1/pixel:
z=(fn2(fn1(z))+c)/(z-(fn3(-3,0.123)))+c,
|z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c22 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=c=p1/pixel:
a=z*z
z=a+c+(a+(c-0.124))
z=fn1(z)+c+(z*z+(c-0.124))
|z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c22a { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=c=p1/pixel:
a=z*z
z=a+c+(a+(c-0.124))
b=z*z
z=b+c+(b+(c-0.124))
|z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c23 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=c=p1/pixel:
a=z*z
z=fn1(a+c)+(a+(c-0.124))/(z-0.75)+c
|z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c24 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=c=p1/pixel:
a=z*z
z=fn1(a+c)+(a+(c-0.124))/((z+1.25)+c)
|z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c25 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=c=p1/pixel:
z=(z^2)*(z^2)+fn1(z-1.5)/fn2(pixel)
|z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c26 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=c=p1/pixel:
z=(z^2)*(z^2)+fn1(z-0.3)/fn2(pixel)
|z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c27 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=c=p1/pixel:
z=(z^2)*(z^2)+fn1(z-0.1)/fn2(pixel)
|z| <=p2
  ;SOURCE: jo_we_55.frm
}


JoWe55c28 { ; from a modified Carr-formula
            ; 5/1997 JoWeber CIS [100424,35]
z=c=p1/pixel:
z=(z^2)*(z^2)+fn1(z-0.3)/fn2(p2/pixel),
|z| <=p3
  ;SOURCE: jo_we_55.frm
}


JoWe_01(XYAXIS) = { ; Jo Weber [100424,35], 6/1996
                      z = pixel
                      a1=sqr(z), a2=1/a1, a3=1/(sqr(a1)) 
                      z=a1+a2+a3+pixel,
    ;SOURCE: jo_we_50.frm
}


JoWe_02(XYAXIS) = { ; Jo Weber [100424,35], 6/1996
                      z = pixel
		      p=1*(|p1|<=0)+p1, q=1*(|p2|<=0)+p2 :
                      a1=sqr(z), a2=p/a1, a3=q/(sqr(a1)) 
                      z=(fn1(a1)+fn2(a2)*fn1(a3))*pixel,
    ;SOURCE: jo_we_50.frm
}


JoWe_02_1(XYAXIS) = { ; Jo Weber [100424,35], 6/1996
                      z = pixel
                      a1=sqr(z), a2=p1/a1, a3=p2/(sqr(a1)) 
                      z=(fn1(a1)+fn2(a2)*fn1(a3))*pixel,
    ;SOURCE: jo_we_50.frm
}


JoWe_02_PHC(XYAXIS) = { ; Jo Weber [100424,35], 8/1996
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
                      z = pixel
                      p=1*(|p1|<=0)+p1, q=1*(|p2|<=0)+p2 :
                      a1=sqr(z), a2=p/a1, a3=q/(sqr(a1)) 
                      z=(fn1(a1)*evenodd+fn2(a2)*fn1(a3)*oddeven)*pixel,
     ;SOURCE: jowe_phc.frm
}


JoWe_02a(XAXIS) = { ; Jo Weber [100424,35], 6/1996
                      z = pixel
		      p=1*(|p1|<=0)+p1, q=1*(|p2|<=0)+p2 :
                      a1=sqr(z), a2=p/a1, a3=q/(sqr(a1)) 
                      z=(fn1(a1)+fn1(a2)*fn1(a3))*pixel,
    ;SOURCE: jo_we_50.frm
}


JoWe_03(XAXIS) = { ; Jo Weber [100424,35], 6/1996
                      z = pixel
		      p=1*(|p1|<=0)+p1, q=1*(|p2|<=0)+p2 :
                      a1=sqr(z), a2=p/a1, a3=q/(sqr(a1)) 
                      z=(fn1(a1)+fn2(a2)+fn1(a3))*z,
    ;SOURCE: jo_we_50.frm
}


JoWe_03_PHC_n = { ; Jo Weber [100424,35], 8/1996
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
                      z = c = pixel:
                      a1=sqr(z), a2=p1*a1, a3=p2/(sqr(a1)) 
                      t=fn1(z)
                      z = (c^(sqr(t))-c*fn2(t))*evenodd+(c^(fn1(a3)/fn2(a2)))*oddeven+c,
  |z|>=0.5
     ;SOURCE: jowe_phc.frm
}


JoWe_03_PHC_n1 = { ; Jo Weber [100424,35], 8/1996
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
                      z = c = pixel:
                      a1=sqr(z), a2=p1*a1, a3=p2/(sqr(a1)) 
                      t=fn1(z),
                      b1 = (c^(sqr(t)))*evenodd-c*fn2(t)*oddeven,
                      b2=(fn1(a2)-fn2(a1)*fn2(a3))*evenodd-(c^(fn1(a3)/fn2(a2)))*oddeven,
                      z=b1
                      b3=(1.0>=|z|),
                      if b3 then z=b2
     ;SOURCE: jowe_phc.frm
}


JoWe_03a(XAXIS) = { ; Jo Weber [100424,35], 6/1996
                      z = pixel
		      p=1*(|p1|<=0)+p1, q=1*(|p2|<=0)+p2 :
                      a1=sqr(z), a2=p/a1, a3=q/(sqr(a1)) 
                      z=(fn1(a1)+fn1(a2)+fn1(a3))*z,
    ;SOURCE: jo_we_50.frm
}


JoWe_03m { ; Jo Weber [100424,35], 6/1996
               z = pixel:
               z=fn1(z)*z
               |z|>=0.05
     ;SOURCE: jowe_43.frm
}


JoWe_04(XYAXIS) = { ; Jo Weber [100424,35], 6/1996
                          z = pixel:
		          a1=fn1(z), a2=p1/a1, 
                          z=a1+a2+pixel,
    ;SOURCE: jo_we_50.frm
}


JoWe_04_PHC = { ; Jo Weber [100424,35], 8/1996
  ; p2 - no effect
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
                          z = c =pixel:
                          t=fn1(z),
                          b1 = (c^(sqr(t)))*evenodd-c*fn2(t)*oddeven,
		          a1=fn1(z), a2=p1/a1, 
                          b2=(a1-a2+pixel)*oddeven+c*a1*(a2-0.34)*evenodd,
                          z=b1
                          b3=(|z|<=4)
			  if b3 then z=b2
     ;SOURCE: jowe_phc.frm
}


JoWe_04a(XYAXIS) = { ; Jo Weber [100424,35], 6/1996
			  pixel=abs(real(pixel)) + flip(imag(pixel))
                          pixel=real(pixel) + flip(abs(imag(pixel)))
		          z = pixel:
		          a1=fn1(z), a2=p1/a1, 
                          z=a1+a2+pixel,
    ;SOURCE: jo_we_50.frm
}


JoWe_04a_PHC(XYAXIS) = { ; Jo Weber [100424,35], 9/1996
                         ; needs float=yes & passes=1
   pixel=abs(real(pixel)) + flip(imag(pixel))
   pixel=real(pixel) + flip(abs(imag(pixel)))
   z = pixel:
   a1=fn1(z), a2=p1/a1, 
   z=a1*whitesq+a2*(whitesq==0)+pixel,
  ;SOURCE: jowephcr.frm
}


JoWe_04b(XYAXIS) = { ; Jo Weber [100424,35], 6/1996
			  pixel=pixel*(-1)^(pixel>0)
		          z = pixel:
		          a1=fn1(z), a2=p1/a1, 
                          z=a1+a2+pixel,
    ;SOURCE: jo_we_50.frm
}


JoWe_04b_PHC(XYAXIS) = { ; Jo Weber [100424,35], 9/1996
                         ; needs float=yes & passes=1
   pixel=pixel*(-1)^(pixel>0)
   z = pixel:
   a1=fn1(z), a2=fn2(p1/a1), 
   z=a1*whitesq+a2*(whitesq==0)+pixel,
  ;SOURCE: jowephcr.frm
}


JoWe_04b_XY   { ; Jo Weber [100424,35], 10/1996
                  bailout=p3
		  pixel=pixel*(-1)^(pixel>0)
		  z = pixel:
                  x1=real(z),  y1= imag(z)
                  x1=x1-fn1(x1-fn2(x1))
                  y1=y1-fn1(y1-fn2(y2))
                  z=p1*x1+p2*y1
                  |z|<=bailout
    ;SOURCE: jo_we_50.frm
}


JoWe_04c(XYAXIS) = { ; Jo Weber [100424,35], 6/1996
                          z = pixel:
		          a1=fn1(z), a2=p1/a1, 
                          z=fn2(a1)+fn3(a2)+pixel,
    ;SOURCE: jo_we_50.frm
}


JoWe_04c_PHC(XYAXIS) = { ; Jo Weber [100424,35], 9/1996
                         ; needs float=yes & passes=1
   z = pixel:
   a1=fn1(z), a2=p1/a1, 
   z=fn2(a1)*(whitesq==0)+fn3(a2)*whitesq+pixel,
  ;SOURCE: jowephcr.frm
}


JoWe_05(XYAXIS) = { ; Jo Weber [100424,35], 6/1996
                          z = pixel
                          p=1*(|p1|<0)+p1 :
		          a1=fn1(z), a2=p/a1, 
                          z=a1+a2+pixel,
    ;SOURCE: jo_we_50.frm
}


JoWe_05m { ; Jo Weber [100424,35] 9/1996
               z = pixel:
               a1=sqr(z), a2=1/a1,
               z=fn1(a1)+a2+pixel,
               |z|>=0.05
     ;SOURCE: jowe_43.frm
}


JoWe_05m2 = { ; Jo Weber [100424,35] 9/1996
                  z = pixel:
                  z=fn1(z*z)+(1/z*z)+pixel,
                  |z|>=0.05
     ;SOURCE: jowe_43.frm
}


JoWe_06(XYAXIS) = { ; Jo Weber [100424,35], 6/1996
                          z = pixel
                          p=1*(|p1|<0)+p1 :
		          a1=fn1(z), a2=p/a1, 
                          z=a1+a2,
    ;SOURCE: jo_we_50.frm
}


JoWe_06m_01 { ; Jo Weber [100424,35], 10/1996
               z = pixel:
               a1=1/fn1(z)
               z=a1+pixel
    ;SOURCE: jo_we_50.frm
}


JoWe_06m_02 { ; Jo Weber [100424,35], 10/1996
               z = pixel:
               z=fn1(z)*fn1(z)*p2-pixel
    ;SOURCE: jo_we_50.frm
}


JoWe_06m_03a { ; Jo Weber [100424,35], 10/1996
               ; bailout = p2
               z = pixel
               bailout=p2:
               a1=fn2(p1/fn1(z))
               z=a1+pixel
               |z|<=bailout
    ;SOURCE: jo_we_50.frm
}


JoWe_06m_03b { ; Jo Weber [100424,35], 10/1996
               ; bailout = p2
               z = pixel
               bailout=p2:
               a1=fn2(p1/fn1(z))
               z=a1+z
               |z|<=bailout
    ;SOURCE: jo_we_50.frm
}


JoWe_06m_04 { ; Jo Weber [100424,35], 10/1996
              ; bailout = p3
                z = pixel
                bailout = p3 :
                temp=p1/(fn2(z)*fn3(z))
                a1=1/temp
                a2=pixel^2
                z=a1+a2
                |z|<=bailout
    ;SOURCE: jo_we_50.frm
}


JoWe_06m_05 { ; Jo Weber [100424,35], 10/1996
              ; bailout = p3
                z = pixel*pixel-(1-pixel)
                bailout = p3 :
                temp=p1/(fn1(z)*fn2(z))
                a1=1/temp
                a2=pixel^2
                z=a1+a2
                |z|<=bailout
    ;SOURCE: jo_we_50.frm
}


JoWe_06m_05o { ; Jo Weber [100424,35], 10/1996
              ; bailout = p1
               z = pixel
               bailout=p1:
               z=fn1(z*z)*pixel+z
               |z|<=bailout
    ;SOURCE: jo_we_50.frm
}


JoWe_06m_PHC { ; Jo Weber [100424,35], 10/1996
               z = pixel:
               a1=1/fn2(z)
               z=(fn1(z)*z)*(whitesq==0)+a1*whitesq+pixel
    ;SOURCE: jo_we_50.frm
}


JoWe_06m_PHC_1 { ; Jo Weber [100424,35], 10/1996
               z = pixel:
               a1=p1/fn2(z)
               z=(fn1(z)*fn1(z)*p2-pixel)*(whitesq==0)+(a1-pixel)*whitesq
    ;SOURCE: jo_we_50.frm
}


JoWe_06m_PHC_1a { ; Jo Weber [100424,35], 10/1996
               ; baiout = p2
               z = pixel
               bailout=p2:
               a1=p1/fn2(z)
               z=(fn1(z*z)*pixel+z)*whitesq+(a1+pixel)*(whitesq==0)
               |z|<=bailout
    ;SOURCE: jo_we_50.frm
}


JoWe_06m_PHC_2 { ; Jo Weber [100424,35], 10/1996
                 ; bailout = p3
               z = pixel
               bailout=p3:
               a1=fn3(p1/fn2(z))
               z=(fn1(z)*fn1(z)*p2+pixel^2)*(whitesq==0)+(a1+pixel)*whitesq
               |z|<=bailout
    ;SOURCE: jo_we_50.frm
}


JoWe_07(XYAXIS) = { ; Jo Weber [100424,35], 6/1996
                          z = pixel
                          p=1*(|p1|<0)+p1 :
		          a1=fn1(z), a2=p/a1, 
                          z=a1+a2-pixel,
    ;SOURCE: jo_we_50.frm
}


JoWe_08(XYAXIS) = { ; Jo Weber [100424,35], 6/1996
                          z = pixel
                          p=1*(|p1|<0)+p1 :
		          a1=fn1(z), a2=p/a1, 
                          z=(a1+a2)*pixel,
     ;SOURCE: jowe_08.frm
}


JoWe_09(XYAXIS) = { ; Jo Weber [100424,35], 6/1996
                          z = pixel
                          p=1*(|p1|<0)+p1 :
		          a1=fn1(z), a2=p/a1, 
                          z=(a1+a2)/pixel,
    ;SOURCE: jo_we_50.frm
}


JoWe_10(XYAXIS) = { ; Jo Weber [100424,35], 6/1996
                          z = pixel
                          p=1*(|p1|<0)+p1 :
		          a1=fn1(z), a2=p/a1, 
                          z=(a1+a2)^pixel,
			  |z|>=0.1
    ;SOURCE: jo_we_50.frm
}


JoWe_10a(XYAXIS) = { ; Jo Weber [100424,35], 6/1996
                          z = pixel
                          p=1*(|p1|<0)+p1 :
		          a1=fn1(z), a2=fn2(p)/a1, 
                          z=(a1+a2)^pixel,
			  |z|>=0.1
    ;SOURCE: jo_we_50.frm
}


JoWe_10b(XYAXIS) = { ; Jo Weber [100424,35], 6/1996
                          z = pixel
                          p=1*(|p1|<0)+p1 :
		          a1=fn1(z), a2=fn2(p/a1), 
                          z=(a1+a2)^pixel,
			  |z|>=0.1
    ;SOURCE: jo_we_50.frm
}


JoWe_11(XYAXIS) = { ; Jo Weber [100424,35], 6/1996
                          z = pixel
                          p=1*(|p1|<0)+p1 :
		          a1=fn1(z), a2=p/a1, 
                          z=(a1+a2)^pixel,
			  |z|<=4
    ;SOURCE: jo_we_50.frm
}


JoWe_11a(XYAXIS) = { ; Jo Weber [100424,35], 6/1996
                          z = pixel
                          p=1*(|p1|<0)+p1 :
		          a1=fn1(z), a2=fn2(p)/a1, 
                          z=(a1+a2)^pixel,
			  |z|<=4
    ;SOURCE: jo_we_50.frm
}


JoWe_11b(XYAXIS) = { ; Jo Weber [100424,35], 6/1996
                          z = pixel
                          p=1*(|p1|<0)+p1 :
		          a1=fn1(z), a2=fn2(p/a1), 
                          z=(a1+a2)^pixel,
			  |z|<=4
    ;SOURCE: jo_we_50.frm
}


JoWe_11b_PHC(XYAXIS) = { ; Jo Weber [100424,35], 8/1996
  ; p2 - no effect
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
                         z = pixel
                         p=1*(|p1|<0)+p1 :
                         a1=fn1(z), a2=fn2(p/a1), 
                         a1=a1*evenodd, a2=a2*oddeven,
                         z=(a1+a2)^pixel,
           |z|<=4
     ;SOURCE: jowe_phc.frm
}


JoWe_11b_PHC2(XYAXIS) = { ; Jo Weber [100424,35], 8/1996
  ; p2 - no effect
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
                         z = pixel
                         p=1*(|p1|<0)+p1 :
                         a1=fn1(z), a2=fn2(p/a1), 
                         a1=a1*evenodd, a2=a2*oddeven,
                         z=(a1-a2)^pixel,
           |z|<=4
     ;SOURCE: jowe_phc.frm
}


JoWe_12 { ; Jo Weber, July 1996
  c=p1
  z=pixel:
  z=fn1(z)-c/fn2(z)
  |z|<5
    ;SOURCE: jo_we_50.frm
}


JoWe_13 { , Jo Weber, July 1996
  c=p1
  z=pixel:
  z=fn1(z)-c/fn2(z)
    ;SOURCE: jo_we_50.frm
}


JoWe_13_PHC { ; Jo Weber, 8/1996
  ; p2 - no effect
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  c = p1
  z = pixel:
  a = fn1(z)
  b = c/fn2(z)
  z = (a-b)*evenodd+(a^b)*oddeven
    ;SOURCE: jowe_phc.frm
}


JoWe_14_PHC { ; Jo Weber, 8/1996
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z = c =pixel:
  a = fn1(z)
  b = c/fn2(z)
  z = (a/b)*evenodd+(a*b)*oddeven
    ;SOURCE: jowe_phc.frm
}


JoWe_14_PHC_2 { ; Jo Weber, 8/1996
  ; p2 - no effect
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  c=p1
  z=pixel:
  a=fn1(z)*c*evenodd
  b=c/fn2(z)*oddeven
  z=a+b*pixel
  ;SOURCE: jowe_phc.frm
}


JoWe_14_PHC_3 = { ; Jo Weber, 9/1996
                  ; needs float=yes & passes=1
  c=p1*(whitesq==0)
  z=pixel:
  a=fn1(z)*c*whitesq
  b=c/fn2(z)*(whitesq==0)
  z=(a+b)*pixel
  ;SOURCE: jowephcr.frm
}


JoWe_19_PHC { ; Jo Weber, 8/1996
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z = c = pixel:
  t=fn1(z)
  z = (c^(sqr(t)))*evenodd
  |z|>=0.5
  ;SOURCE: jowe_phc.frm
}


JoWe_19_PHC_2 { ; Jo Weber, 8/1996
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z = c = pixel:
  t=fn1(z)
  z = (c^(sqr(t)))*evenodd-c*fn2(t)*oddeven
  |z|>=0.5
  ;SOURCE: jowe_phc.frm
}


JoWe_19_PHC_3 { ; Jo Weber, 8/1996
  ; p2 - no effect
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z = c = pixel:
  t=fn1(z)
  z = (c^(fn2(t)))*evenodd-p1*fn3(t)*oddeven
  |z|>=0.5
  ;SOURCE: jowe_phc.frm
}


JoWe_19_PHC_4 { ; Jo Weber, 8/1996
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z = c = pixel:
  t=fn1(z)
  z = (c^(fn2(t)))*evenodd+(c*fn2(t)*oddeven)
  ;SOURCE: jowe_phc.frm
}


JoWe_20_PHC = { ; Jo Weber, 9/1996
                ; needs float=yes & passes=1
  z = c = pixel:
  t=fn1(z) 
  t1=c^t 
  u=fn2(z) 
  t2=c^u 
  t3=t1*(whitesq==0)+t2*whitesq
  z = c^(sqr(t3))
  |z|>=0.5
  ;SOURCE: jowephcr.frm
}


JoWe_22_PHC  { ; Jo Weber [100424,35] 9/1996
               ; mandel+julia needs passes=1
  z = c = pixel:
  z=(z*z+c)*whitesq+(z*z*z+(p1-1)*z-p1)*(whitesq==0)
  |z|<=4
  ;SOURCE: jowe_43.frm
}


JoWe_22_PHC_1  { ; Jo Weber [100424,35] 9/1996 
                 ; needs passes=1
  z = c = pixel:
  z=(z*z+c)*whitesq+(sqr(z)+p1)*(whitesq==0)
  |z|<=4
  ;SOURCE: jowe_43.frm
}


JoWe_22_PHC_4  { ; Jo Weber [100424,35] 9/1996 
                 ; needs passes=1
  z = c = pixel
  temp = p2:
  z=(temp*temp+c)*whitesq+(z*z*z+(p1-1)*z-p1)*(whitesq==0)
  temp=z
  |z|<=4
  ;SOURCE: jowe_43.frm
}


JoWe_24 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=sin(sqr(cos(p1*z+p2)))
z=fn1(z)
|z|<=bailout
    ;SOURCE: jo_we_50.frm
}


JoWe_25 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=p1*tan(z)-p2*sin(z)
z=fn1(z)
|z|<=bailout
    ;SOURCE: jo_we_50.frm
}


JoWe_25_PHC { ; Jo Weber [100424,35] 9/1996 
              ; needs passes=1
  z = c = pixel, temp=sqr(z):
  a=temp*z+c
  b=p1*temp
  z=a*whitesq+fn1(b)*(whitesq==0)
  ;SOURCE: jowe_43.frm
}


JoWe_26 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=sqr(cos(z))-sqr(sin(z))+tan(z)
z=fn1(z)
|z|<=bailout
    ;SOURCE: jo_we_50.frm
}


JoWe_26_28_PHC { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=fn1(sqr(cos(z))-sqr(sin(z))+tan(z))*whitesq+fn2(log(1-sqr(z)))*(whitesq==0)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_26_PHC { ; Jo Weber [100424,35] 9/1996 
              ; needs passes=1
  z = c = pixel, temp=sqr(z):
  a=temp*z
  b=p1*temp
  z=a*whitesq+fn1(b)*(whitesq==0)
  temp=flip(sqr(z))*z
  ;SOURCE: jowe_43.frm
}


JoWe_27 { ; Jo Weber [100424,35] 9/1996 
   z = pixel,
   bailout=p3:
   z=fn1((p1+sqrt(z))/(p2*z-1))
   |z|<=bailout
    ;SOURCE: jo_we_50.frm
}


JoWe_27_PHC { ; Jo Weber [100424,35] 9/1996 
              ; needs passes=1
   z = pixel:
   a=p1*fn1(z)
   b=p2*fn2(z)
   z=a*whitesq+b*(whitesq==0)
  ;SOURCE: jowe_43.frm
}


JoWe_27_PHC_1 { ; Jo Weber [100424,35] 11/1996
z=pixel:
a=sqr((p1+sqrt(z))/(p2*z-1))
b=sqrt((p3+sqrt(z))/(p2*z-1))
z=a*whitesq+b*(whitesq==0)
|z|<=25
    ;SOURCE: jo_we_50.frm
}


JoWe_28 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=log(1-sqr(z))
z=fn1(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_28_2 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=log(1-sqr(z))
z=2*fn1(z)
|z|<=bailout
  ;SOURCE: jowe49.frm
}


JoWe_28_3 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=log(1-sqr(z))
z=p1*fn1(z)+p2*fn2(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_28_4 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=log(1-sqr(z))
z=p1*fn1(z)+p2*fn2(z)
z=fn3(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_28_5 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=log(1-sqr(z))
z=p1*fn1(z)+p2*fn2(z)
z=fn3(z)-(z>=0)+(z<0)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_28_PHC { ; Jo Weber [100424,35] 9/1996 
              ; needs passes=1
   z = pixel:
   a=p1*fn1(z)
   b=p2*fn2(z)
   z=a*whitesq+(sqr(z)+z+b)*(whitesq==0)
  ;SOURCE: jowe_43.frm
}


JoWe_28_PHC_1 { ; Jo Weber [100424,35] 11/1996
pixel=log(1-sqr(pixel))
z=pixel
bailout=p3 :
z=fn1(z)*whitesq+fn2(z)*(whitesq==0)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_28_PHC_2 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=log(1-sqr(z))
z=fn1(z)*(whitesq==0)+fn2(z)*whitesq
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_29 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=log(sqrt((1-z)/(1+z)))
z=fn1(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_29_PHC { ; Jo Weber [100424,35] 9/1996 
              ; needs passes=1
   z = pixel:
   a=p1*fn1(z)
   b=p2*fn2(z)
   z=a*whitesq+(sqr(z)+z+b)*(whitesq==0)
   |z|<=4
  ;SOURCE: jowe_43.frm
}


JoWe_29m { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=fn1(fn2((p1-z)/(p2+z)))
z=fn3(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_30 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=exp(z)*z^2/(p1-z)
z=p2*fn1(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_31 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
qad=sqr(z)
z=exp(2*z)*(sqr(qad)-3*qad+6*z)
z=fn1(z)
|z|<=bailout
  ;SOURCE: jowe49.frm
}


JoWe_32 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
qwurz=sqrt(z)
su=p1^qwurz
z=log((1+su)/(1-su))
z=fn1(z)
|z|<=bailout
  ;SOURCE: jowe49.frm
}


JoWe_33 { ; Jo Weber [100424,35] 11/1996
pixel=pixel*pixel-(1-pixel)
z=c=pixel
bailout=p3 :
z=sqrt(p1*exp(z)+c)
z=fn1(z)
|z|<=bailout
  ;SOURCE: jowe49.frm
}


JoWe_33_1 { ; Jo Weber [100424,35] 11/1996
pixel=pixel*pixel-(1-pixel)
z=c=pixel
bailout=p3 :
z=sqr(p1*exp(z)+c)
z=fn1(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_33_2 { ; Jo Weber [100424,35] 11/1996
pixel=pixel*pixel-(1-pixel*pixel)
z=c=pixel
bailout=p3 :
z=fn1(p1*fn2(z))+c
z=fn3(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_34 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=(exp(z)+1)/(exp(z)-1)
z=fn1(z)
|z|<=bailout
  ;SOURCE: jowe49.frm
}


JoWe_34_1 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=(exp(z)+1)/(exp(z)-1)
z=fn1(z)-(z>=0)+(z<0)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_35 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=3*sin(z)-5*sqr(sqr(sin(z)))
z=fn1(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_35_1 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=3*fn1(z)-5*fn2(fn2(fn3(z)))
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_35_1_PHC { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=3*fn1(z)*whitesq-5*fn2(fn2(fn3(z)))*(whitesq==0)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_35_2 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=p1*fn1(z)-p2*fn2(fn2(fn3(z)))
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_35_2_PHC { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=p1*fn1(z)*whitesq-p2*fn2(fn2(fn3(z)))*(whitesq==0)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_36 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=z/4-p1*sin(p2*z)
z=fn1(z)
|z|<=bailout
  ;SOURCE: jowe49.frm
}


JoWe_37 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
qad=sqr(tan(z))
z=sqr(qad)-2*qad*tan(z)+4*qad+tan(2*z)
z=fn1(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_37_PHC { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
qad=sqr(tan(z))
z=sqr(qad)-2*qad*tan(z)+4*qad+tan(2*z)
z=fn1(z)*whitesq+fn2(z)*(whitesq==0)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_38 { ; Jo Weber [100424,35] 11/1996
z=c=pixel
bailout=p3 :
z=p2*(fn1(z)/fn2(z))
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_38_1 { ; Jo Weber [100424,35] 11/1996
z=c=pixel
bailout=p3 :
z=p2*fn1(z)+c-(z>=0)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_38_PHC { ; Jo Weber [100424,35] 11/1996
z=c=pixel
bailout=p3 :
z=(p1*fn1(z)+c)*whitesq+(p2*(fn2(z)/fn3(z)))*(whitesq==0)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_39 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=3/8*z+0.25*sin(p1*z)+1/32*sin(p2*z)
z=fn1(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_40 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=p1*log(sin(p2*z))
z=fn1(z)
|z|<=bailout
  ;SOURCE: jowe49.frm
}


JoWe_40_PHC { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=p1*log(sin(p2*z))
z=fn1(z)*(whitesq==0)+fn2(z)*whitesq
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_41 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=(z+sqrt(z+1))/(z-sqrt(z-1))
z=fn1(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_42 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
qad=sqr(z)
z=sqr(qad-sqrt(qad-1))
z=fn1(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_43 { ; Jo Weber [100424,35] 11/1996
z=c=pixel
bailout=p3 :
qad=sqr(z)
z=sqrt(qad/(qad-p1*c))
z=p2*fn1(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_44 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=(p1*z+sqrt(p2*z))/sqrt(z)
z=fn1(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_45 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=p1/sqrt(p2*z)
z=fn1(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_46 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=p1/(p2*sqr(z)*z)
z=fn1(z)
|z|<=bailout
  ;SOURCE: jowe49.frm
}


JoWe_47 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=sqr(z)*z*sqrt(z)
z=fn1(z)
|z|<=bailout
  ;SOURCE: jowe49.frm
}


JoWe_48 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=sqr(z)-p1*z+p2
z=fn1(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_49 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=p1*sqrt(p2*exp(z))
z=fn1(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_50 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=sqrt((exp(p1*z)+1)/(exp(p2*z)-1))
z=fn1(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_51m { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=fn1(fn2((p1-z)/(p2+z)))
z=fn3(z)
|z|<=bailout
  ;SOURCE: jowe49.frm
}


JoWe_52 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
h=fn1(z)+p1
z=z*(h+z)/h
z=p2*fn2(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_53 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
h=fn1(z)+p1
z=z*(h+z)/h
z=z-(z>=0)+(z<0)
z=p2*fn2(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_54 { ; Jo Weber [100424,35] 11/1996
bailout=p3
pixel=fn2(fn1((1-pixel*pixel)/(p1*pixel)))
z=c=pixel:
z=c+(z<0)+pixel
|real(z)|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_54_1 { ; Jo Weber [100424,35] 11/1996
bailout=p3
pixel=fn2(fn1((1-pixel*pixel)/(p1*pixel)))
z=c=pixel:
z=z*z+c
|real(z)|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_54_PHC { ; Jo Weber [100424,35] 11/1996
bailout=p3
pixel=fn2(fn1((1-pixel*pixel)/(p1*pixel)))
z=c=pixel:
z=z*z*whitesq+c+((z<0)+pixel)*(whitesq==0)
|real(z)|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_55 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=1+tan(z)+tan(z)^2
z=fn1(z)
|z|<=bailout
  ;SOURCE: jowe49.frm
}


JoWe_55_PHC { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
a=fn1(1+tan(z))
b=fn2(tan(z)^2)
z=a*(whitesq==0)+b*whitesq
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_56 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=sin(z)^3+3*sin(z)^2*cos(z)
z=fn1(z)
|z|<=bailout
  ;SOURCE: jowe49.frm
}


JoWe_57 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=(1+tan(z)^2)/(-1-cotan(z)^2)
z=fn1(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_58 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z=log(z)/z
z=fn1(z)+real(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


jowe_58_3 { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
q=real(z), r=imag(z)
z=z/q-p1*sin(p2*z+r)
z=fn1(z)
|z|<=bailout
  ;SOURCE: jo_we_54.frm
}


JoWe_59 { ; Jo Weber [100424,35] 11/1996
z=pixel
a=p1-1, b=p2-2
bailout=p3 :
z=log(z)/z
z1=fn1(z)+real(z)
z2=fn2(z)-real(z)
z=a*flip(z1)/z1+b*conj(z2)/z2
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_60 { ; Jo Weber [100424,35] 11/1996
z=pixel
a=p1-1, b=p2-2
bailout=p3 :
z=(1-log(z))/z^2
z1=fn1(z)+real(z)
r1=real(z1)
i1=imag(z1)
z2=fn2(z)-real(z)
r2=real(z2)
i2=imag(z2)
z=a*|z1+r1-r2|+b*(cabs(z2)-i1+i2)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_61 { ; Jo Weber [100424,35] 11/1996
z=pixel
bailout=p3 :
z1=sqr(sin(z))
z=fn1(sin(z)*(3*cos(z)*(sin(z)+2*cos(z))-z1))
|z|<=bailout
  ;SOURCE: jowe49.frm
}


jowe_62_1 { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
q=real(z), r=imag(z)
z1=z*q, z2=z/q
z3=z*r, z4=z/r
z1=z1-z4, z2=z2+z3
h1=r-q, h2=r+q
z=z1^h1-z2^h2
z=fn1(p1*fn2(p2*z))+h1*h2
z=z+(z<0)
|z|<=bailout
  ;SOURCE: jo_we_54.frm
}


jowe_63 { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
z=sin(z)*(1+2*tan(z))+tan(z)*cos(z)
z=fn1(z)
|z|<=bailout
  ;SOURCE: jo_we_54.frm
}


jowe_64 { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
z=sin(z)*(1+2*tan(z))+tan(z)*cos(z)
q=real(z), r=imag(z)
z1=z*q, z2=z/q
z3=z*r, z4=z/r
z1=z1-z4, z2=z2+z3
z=fn1(z1-z2)-fn2(z2-z1)
|z|<=bailout
  ;SOURCE: jo_we_54.frm
}


jowe_65 { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
z=tan(sin(z)^2-cos(z^2))
z=fn1(z)
|z|<=bailout
  ;SOURCE: jo_we_54.frm
}


jowe_65_1 { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
z=tan(sin(z)^2-cos(z)^2)
z=fn1(z)
|z|<=bailout
  ;SOURCE: jo_we_54.frm
}


jowe_65_1_phc { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
z=tan(sin(z)^2-cos(z)^2)
z=fn1(z)*(whitesq==0)+fn2(z)*whitesq
|z|<=bailout
  ;SOURCE: jo_we_54.frm
}


jowe_66 { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
z=(tan(z)^2+cotan(z)^2)/(sin(z)^2-cos(z)^2)
z=fn1(z)
|z|<=bailout
  ;SOURCE: jo_we_54.frm
}


jowe_66_PHC { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
z=(tan(z)^2+cotan(z)^2)/(sin(z)^2-cos(z)^2)
z=fn1(z)*whitesq+fn2(z)*(whitesq==0)
|z|<=bailout
  ;SOURCE: jo_we_54.frm
}


jowe_67 { ; by Jo Weber [100424,35], 12/1996
z=pixel
bailout=p3 :
z=(sin(z)-tan(z))/(cos(z)-cotan(z))
z=fn1(z)
|z|<=bailout
  ;SOURCE: jo_we_54.frm
}


jowe_67_1 { ; by Jo Weber [100424,35], 12/1996
z=pixel
bailout=p3 :
z=(sin(z)-tan(z))/(sin(z)-cotan(z))
z=fn1(z)
|z|<=bailout
  ;SOURCE: jo_we_54.frm
}


jowe_67_2 { ; by Jo Weber [100424,35], 12/1996
z=c=pixel
bailout=p3 :
z1=sin(z)-tan(z)
z2=cos(z)-cotan(z)
z1=z1+c
z2=z2+(z1>=0)
z=z1*z2
z=fn1(z)
|z|<=bailout
  ;SOURCE: jo_we_54.frm
}


jowe_67_3 { ; by Jo Weber [100424,35], 12/1996
z=pixel
bailout=p3 :
z=fn1(sin(z)-tan(z))/fn2(cos(z)+cotan(z))
z=fn3(z)
|z|<=bailout
  ;SOURCE: jo_we_54.frm
}


jowe_68 { ; by Jo Weber [100424,35], 12/1996
z=pixel
bailout=p3 :
z=(sin(z)-tan(z))/(sin(z)+tan(z))
z=fn1(z)
|z|<=bailout
  ;SOURCE: jo_we_54.frm
}


jowe_68_1 { ; by Jo Weber [100424,35], 4/1997
z=pixel
bailout=p3:
z=(sin(z)-cos(z))/(log(z)^2)
z=fn1(z)-(z<0)
|z|<=bailout
  ;SOURCE: jo_we_54.frm
}


JoWe_68_2 { ; JoWeber [100424,35], 4/1997
z=pixel
bailout=p3:
z=(sin(z)-cos(z))/(log(z)^2)
z=fn1(z)+(z>0)
|z|<=bailout
  ;SOURCE: jo_we_55.frm
}


JoWe_68_3 { ; JoWeber [100424,35], 4/1997
z=pixel
bailout=p3:
z=(sin(z)-cos(z))/(log(z)^2)
z=fn1(z)-(z<0)+(z>0)
|z|<=bailout
  ;SOURCE: jo_we_55.frm
}


JoWe_68_4 { ; JoWeber [100424,35], 4/1997
z=pixel
bailout=p3:
z=(sin(z)-cos(z))/(log(z)^2)
z=fn1(z)-(z<0)-(z>0)
|z|<=bailout
  ;SOURCE: jo_we_55.frm
}


JoWe_68_5 { ; JoWeber [100424,35], 4/1997
z=pixel
bailout=p3:
z=(sin(z)-cos(z))/(log(z)^2)
z=fn1(z)+(z<0)+(z>0)
|z|<=bailout
  ;SOURCE: jo_we_55.frm
}


JoWe_68_6 { ; JoWeber [100424,35], 4/1997
z=pixel
bailout=p3:
z=(sin(z)-cos(z))/(log(z)^2)
z=fn1(z)+fn2(z<0)+fn3(z>0)
|z|<=bailout
  ;SOURCE: jo_we_55.frm
}


JoWe_69 { ; JoWeber [100424,35], 4/1997
z=pixel
bailout=p3:
z=(sin(z)-cos(z))/(exp(z)^2)
z=fn1(z)-p1*fn2(z<0)+p2*fn3(z>=0)
|z|<=bailout
  ;SOURCE: jo_we_55.frm
}


JoWe_70 { ; JoWeber [100424,35], 4/1997
z=pixel
bailout=p3:
z=(p1*sin(z)+p2*cos(z))/(exp(z)^2)
z=fn1(z)-fn2(z<0)+fn3(z>=0)
|z|<=bailout
  ;SOURCE: jo_we_55.frm
}


JoWe_71 { ; JoWeber [100424,35], 4/1997
z=pixel
bailout=p3:
z=(p1*real(sin(z))+p2*imag(cos(z)))/(log(z)^2)
z=fn1(z)-(z<0)
|z|<=bailout
  ;SOURCE: jo_we_55.frm
}


JoWe_71_phc { ; JoWeber [100424,35], 4/1997
z=pixel
bailout=p3:
z=(p1*real(sin(z))+p2*imag(sin(z)))/(cos(z)^2)
z=(fn1(z)+(z>0))*whitesq+(fn1(z)-(z<=0))*(whitesq==0)
|z|<=bailout
  ;SOURCE: jo_we_55.frm
}


JoWe_71a_phc { ; JoWeber [100424,35], 4/1997
z=pixel
bailout=p3:
z=(p1*real(sin(z))+p2*imag(sin(z)))/(cos(z)^2)
z=(fn1(z)+(z>0))*whitesq+(fn2(z)-(z<=0))*(whitesq==0)
|z|<=bailout
  ;SOURCE: jo_we_55.frm
}


JoWe_72 { ; JoWeber [100424,35], 4/1997
z=pixel
bailout=p3:
z=(p1*real(sin(z))+p2*imag(sin(z)))/(cos(z)^2)
z=fn1(z)+(z>0)
|z|<=bailout
  ;SOURCE: jo_we_55.frm
}


JoWe_73 { ; JoWeber [100424,35], 4/1997
z=c=pixel
bailout=p3:
z=real(sin(z))+fn1(z)+c
|z|<=bailout
  ;SOURCE: jo_we_55.frm
}


JoWe_C_01 { ;Modified Sylvie Gallet frm. [101324,3444]
            ; Jo Weber [100424,35] 11/1996
pixel=exp(2*pixel)*(sqr(sqr(pixel))-3*sqr(pixel)+6*pixel)
z=(exp(conj(conj(pixel^450))-cosh(conj(conj(pixel^20.5)))-0.4)-0.5)
c=(flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)),
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
z=z*z+c+0.19/pixel,
iter=iter+1
(|real(z)|) <= bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_C_02 { ;Modified Sylvie Gallet frm. [101324,3444]
            ; Jo Weber [100424,35] 11/1996
pixel=1+1/(1+1/(1+1/pixel))
z=(exp(conj(conj(pixel^450))-cosh(conj(conj(pixel^20.5)))-0.4)-0.5)
c=(flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)),
c1=1.75*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,c5=10.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0002995
z=z*z+c+0.19/pixel,
iter=iter+1
(|real(z)|) <= bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_C_03 { ;Modified Sylvie Gallet frm. [101324,3444]
            ; Jo Weber [100424,35] 11/1996
pixel=1+1/(1+1/(1+1/pixel))
z=(exp(conj(conj(pixel^150))-cosh(conj(conj(pixel^10.5)))-0.4)-0.5)
c=(flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)),
c1=0.75*z,c2=1.25*z,c3=2.375*z,c4=3.0625*z,c5=4.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.3
z=z*z+c+0.19/pixel,
iter=iter+1
(|real(z)|) <= bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_C_04 { ;Modified Sylvie Gallet frm. [101324,3444]
            ; Jo Weber [100424,35] 11/1996
pixel=1+1/pixel
z=(fn1(conj(conj(pixel^400))-fn2(conj(conj(pixel^10.5)))-0.4)-0.5)
c=(flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)),
c1=0.75*z,c2=1.25*z,c3=2.375*z,c4=3.0625*z,c5=4.59375*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),l5=300
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),t5=(iter==l5),
t=1-(t1||t2||t3||t4||t5),z=z*t-flip(flip(0.03/c)),
c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.3
z=z*z+c+0.19/pixel,
iter=iter+1
(|real(z)|) <= bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_C_28_5 { ; Jo Weber [100424,35] 11/1996
bailout=p3
z=pixel
z=log(1-z)
z=fn3(p1/fn1(z)+p2/fn2(z))
c=(flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)):
z=z*z+c+0.2*pixel
(|real(z)|) <= bailout
  ;SOURCE: jowe49.frm
}


JoWe_C_28_5_1 { ; Jo Weber [100424,35] 11/1996
bailout=p3
z=pixel
z=log(1-z)
z=fn3(p1/fn1(z)+p2/fn2(z))
c=(flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)):
z=z*z+c+pixel
(|imag(z)|) <= bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_C_28_5_2 { ; Jo Weber [100424,35] 11/1996
bailout=p3
z=pixel
z=log(1-z)
z=fn3(p1/fn1(z)+p2/fn2(z))
c=(flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)):
z=z*z+c+pixel
(|real(z)|+|imag(z)|) <= bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_C_28_PHC { ; Jo Weber [100424,35] 11/1996
bailout=p3
z=pixel
z=log(1-z)
z=fn3(p1/fn1(z)+p2/fn2(z))
c=(flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)):
z=z*z*whitesq+(c+pixel)*(whitesq==0)
(|real(z)|+|imag(z)|) <= bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_C_28_PHC2 { ; Jo Weber [100424,35] 11/1996
bailout=p3
z=pixel
z=log(1-z)
z=fn3(p1/fn1(z)+p2/fn2(z))
c=(flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)):
z=z*z*whitesq+c+pixel*(whitesq==0)
(|real(z)|+|imag(z)|) <= bailout
   ;SOURCE: jo_we_50.frm
}


JoWe_C_28_PHC3 { ; Jo Weber [100424,35] 11/1996
bailout=p3
z=pixel
z=log(1-z)
z=fn3(p1/fn1(z)+p2/fn2(z))
c=(flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)):
z=log(z*z)*whitesq+c+pixel*(whitesq==0)
(|real(z)|+|imag(z)|) <= bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_C_28_PHC4 { ; Jo Weber [100424,35] 11/1996
bailout=p3
z=pixel
z=log(1-z)
z=fn3(p1/fn1(z)+p2/fn2(z))
c=(flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)):
z=exp(z)*z*whitesq+c+pixel*(whitesq==0)
(|real(z)|+|imag(z)|) <= bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_CN_01_PHC =  { ; Jo Weber, 9/1996
                    ; needs float=yes & passes=1
   pm1 = p1-1,  z = pixel :
   oldz = z,
   z = (pm1*(z^p1)*whitesq +1)/(p1 * z^pm1)+z*(whitesq==0)
   |(z-oldz)|>=|0.001|
  ;SOURCE: jowephcr.frm
}


JoWe_CN_02_PHC(XAXIS){; Jo Weber, 8/1996 
  ; p2 - no effect
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  pm1 = p1-1.51,  z = pixel :
  oldz = z,
  z = (pm1*(z^p1)*oddeven +1)/(p1 * z^pm1)+z*evenodd
  |(z-oldz)|>=|0.001|
  ;SOURCE: jowe_phc.frm
}


JoWe_CN_02a_PHC(YAXIS){; Jo Weber, 8/1996 
  ; p2 - no effect
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
		    pm1 = p1-1.51,  z = pixel :
		    oldz = z,
		    z = (pm1*(z^p1)*evenodd +1)/(p1 * z^pm1)+oldz*oddeven,
		    |(z-oldz)|>=|0.001|
    ;SOURCE: jowe_phc.frm
}


JoWe_CN_12_PHC{; Jo Weber, 8/1996 
  ; p2 - no effect
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
		    pm1 = p1-1,  z = pixel :
		    oldz = z,
		    z = (pm1*(z^p1)*evenodd +0.5)/(p1 * z^pm1)+oldz*oddeven,
		    |(z-oldz)|>=|0.001|
    ;SOURCE: jowe_phc.frm
}


JoWe_CN_12_PHC_2{; Jo Weber, 8/1996 
  ; p2 - no effect
  ; p3 = horizontal resolution: 320, 640, 800, 1024, 1280, 1600...
  count = (count + 1) * (count != (p3-1))
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
		    pm1 = p1-1,  z = pixel :
		    oldz = z,
		    z = (pm1*(z^p1)*evenodd +0.5)/(p1 * z^pm1)+z*oddeven,
		    |(z-oldz)|>=|0.001|
    ;SOURCE: jowe_phc.frm
}


JoWe_what_02m_PHC = { ; Jo Weber [100424,35], 9/1996
                      ; needs float=yes & passes=1
   z = pixel:
   a1=sqr(z), a2=(2/a1)*whitesq,
   z=a1*(whitesq==0)+a2+pixel,
  ;SOURCE: jowephcr.frm
}


JoWe_What_03m1_PHC { ; Jo Weber [100424,35] 9/1996
                     ; needs passes=1
               z = c = pixel:
               a1=sqr(z)+c
               a2=(1/a1+c)*(whitesq==0)
               z=fn1(z)*z*whitesq+a2

     ;SOURCE: jowe_43.frm
}


JoWe_What_03m2_PHC { ; Jo Weber [100424,35], 10/1996
               z = c = pixel:
               a1=sqr(z)+c
               a2=(1/a1+c)*(whitesq==0)
               z=fn1(z)*z*whitesq+a2
  ;SOURCE: jo_we_50.frm
}


JoWe_What_03m3_PHC { ; Jo Weber [100424,35] 9/1996 
                     ; needs passes=1
               z = c = pixel:
               a1=sqr(z)+c
               a2=(1/a1+c)*z*(whitesq==0)
               z=fn1(z)*whitesq+a2
     ;SOURCE: jowe_43.frm
}


JoWe_What_03m_PHC { ; Jo Weber [100424,35], 9/1996
                    ; needs passes=1
               z = c = pixel:
               a1=(sqr(z)+c)*whitesq
               a2=(1/a1+c)*(whitesq==0)
               z=fn1(z)*z+a2
               |z|>=0.05
     ;SOURCE: jowe_43.frm
}


JoWe_What_04_PHC { ; Jo Weber [100424,35] 9/1996 
                   ; needs passes=1
              z = pixel:
              z=(fn1(z)*z)*whitesq+(1/z*z)*(whitesq==0)+pixel
             |z|>=0.05
     ;SOURCE: jowe_43.frm
}


JoWe_What_04m { ; Jo Weber [100424,35] 9/1996 
               z = pixel:
               a1=1/fn1(z)
               z=a1+pixel
     ;SOURCE: jowe_43.frm
}


JoWe_What_04m_PHC { ; Jo Weber [100424,35] 9/1996 
                    ; needs passes=1
               z = pixel:
               a1=sqr(z), a2=1/fn2(z)
               z=(fn1(z)*z)*(whitesq==0)+a2*whitesq+pixel
     ;SOURCE: jowe_43.frm
}


JoWe_What_05m_PHC { ; Jo Weber [100424,35] 9/1996 
                    ; needs passes=1
               z = pixel:
               a1=sqr(z), a2=1/a1,
               z=fn1(a1)*(whitesq==0)+(a2+pixel)*whitesq
               |z|>=0.05
     ;SOURCE: jowe_43.frm
}


JoWe_What_07m_PHC = { ; Jo Weber [100424,35] 9/1996 
                      ; needs passes=1
                  z = pixel:
                  a1=sqr(z), a2=1/a1,
                  z=fn1(z)*fn2(z)*whitesq+a2*(whitesq==0)+pixel,
     ;SOURCE: jowe_43.frm
}


JoWe_what_10_PHC = { ; Jo Weber [100424,35], 9/1996
                     ; needs float=yes & passes=1
   z = pixel:
   a1=sqr(z), a2=p1/a1,
   b1=(fn1(z)*fn2(z)+(p1/z*z)+pixel)*whitesq,
   b2=(fn1(z)*fn2(z)+a2+pixel)*(whitesq==0),
   z=b1-b2,
   |z|>=0.05
  ;SOURCE: jowephcr.frm
}


JoWe_xy_01 = { ; Jo Weber [100424,35] 9/1996 
               ; p1 is bailout
                  z = pixel, bailout=p1:
		  x=real(z), y=imag(z),
                  x=p2*x+conj(z), y=p3*y+flip(z)
                  z=x+y
		  z=sqr(z)
                  z=fn1(z)+fn2(z)
                  |z|<=bailout
     ;SOURCE: jowe_44.frm
}


JoWe_xy_02 = { ; Jo Weber [100424,35] 9/1996
               ; p1 is bailout
                  z = pixel, bailout=p1:
		  x=real(z), y=imag(z),
                  x=p2*x+conj(z), y=p3*y+flip(z)
                  z=x+y
		  z=sqr(z)*z
                  z=fn1(z)+fn2(z)
                  |z|<=bailout
     ;SOURCE: jowe_44.frm
}


JoWe_xy_03 = { ; Jo Weber [100424,35] 9/1996
               ; p1 is bailout
                  z = c = pixel, bailout=p1:
		  x=real(z), y=imag(z),
                  x=p2*x+conj(z), y=p3*y+flip(z)
                  z=x+y
		  z=sqr(z)*z+c
                  z=fn1(z)+fn2(z)
                  |z|<=bailout
     ;SOURCE: jowe_44.frm
}


JoWe_xy_04 = { ; Jo Weber [100424,35] 9/1996
               ; p1 is bailout
                  z = c = pixel, bailout=p1:
		  x=real(z), y=imag(z),
                  x=p2*x+conj(z), y=p3*y+flip(z)
                  z=x+y
		  a1=sqr(z)
		  a2=a1*z+c
                  z=fn1(z)+fn2(z)
                  |z|<=bailout
     ;SOURCE: jowe_44.frm
}


JoWe_xy_05 = { ; Jo Weber [100424,35] 9/1996
               ; p1 is bailout
                  z = c = pixel, bailout=p1:
		  x=real(z), y=imag(z),
                  x=p2*x+conj(z), y=p3*y+flip(z)
                  z=x+y
		  a1=flip(z)+c
		  a2=a1*z
                  z=fn1(z)+fn2(z)/p1
                  |z|<=bailout
     ;SOURCE: jowe_44.frm
}


JoWe_xy_06 = { ; Jo Weber [100424,35] 9/1996
                  z = pixel:
		  x=real(z), y=imag(z),
                  x=x+fn1(z)^p1, y=y-fn2(z)^p2
                  z=x+y
                  |z|<=4
     ;SOURCE: jowe_44.frm
}


JoWe_xy_07 = { ; Jo Weber [100424,35] 9/1996
                  z = pixel:
		  a=real(z), b=imag(z),
                  x2=a*fn1(z)/p1, y2=b-fn2(z)*p2
                  z=x2+y2
                  |z|<=4
     ;SOURCE: jowe_44.frm
}


JoWe_xy_08 = { ; Jo Weber [100424,35] 9/1996
                  z = c = pixel, bailout=p3:
		  a=real(z), b=imag(z),
                  x2=a+fn1(z)*0.231
                  y2=b-fn2(z)*0.531
                  z=x2^p1+y2^p2
                  z=conj(z)*z
                  |z|<=bailout
     ;SOURCE: jowe_44.frm
}


JoWe_XY_09 { ; Jo Weber [100424,35], 10/1996
  ; bailout = p3
  z = c = pixel
  bailout=p3
  pa1=real(p1), pb1=imag(p1)
  pa2=real(p2), pb2=imag(p2):
  x1=real(z), y1=imag(z)
  x=(x1*pa1-x1*pa2)+c
  y=(y1*pb1-y1*pb2)+c
  z=fn1(x+y)/2
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_10 { ; Jo Weber [100424,35], 10/1996
  ; bailout = p3
  z = c = pixel
  bailout=p3
  pa1=real(p1), pb1=imag(p1)
  pa2=real(p2), pb2=imag(p2):
  x1=real(z), y1=imag(z)
  x=x1*pa1+fn1(z+pa2)
  y=y1*pb1+fn1(z+pb2)
  z=fn2(x+y)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_11 { ; Jo Weber [100424,35], 10/1996
  ; bailout = p3
  z = c = pixel
  bailout=p3
  pa1=real(p1), pb1=imag(p1)
  pa2=real(p2), pb2=imag(p2):
  x1=real(z), y1=imag(z)
  x=x1*pa1+fn1(z+pa2)
  y=y1*pb1+fn2(z+pb2)
  z=x+y
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_12 { ; Jo Weber [100424,35], 10/1996
  ; bailout = p3
  z = c = pixel
  bailout=p3
  pa1=real(p1), pb1=imag(p1)
  pa2=real(p2), pb2=imag(p2):
  x1=real(z), y1=imag(z)
  x=x1*pa1+fn1(z+pa2)
  y=y1*pb1+fn2(z+pb2)
  z=fn3(x)+fn3(y)
  |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_13 { ; Jo Weber [100424,35], 10/1996
	     ; something by Sylvie Gallet or Brian E. Jones
               bailout=p3
               z = pixel*pixel-fn3(1-pixel) :
               x1=real(z),  y1= imag(z)
               x1=p1*x1-fn1(x1-fn2(x1))
               y1=p2*y1-fn1(y1-fn2(y1))
               z=x1+y1
               |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_13a { ; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
                bailout=p3
                z = sin(pixel)-fn3(1-pixel) :
                x1=real(z),  y1= imag(z)
                x1=p1*x1+fn1(x1+fn2(x1))
                y1=p2*y1-fn1(y1-fn2(y1))
                z=x1+y1
                |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_14 { ; Jo Weber [100424,35], 10/1996
	     ; something by Sylvie Gallet or Brian E. Jones
	       bailout=p3
               z = pixel*pixel-fn3(1-pixel) :
               x1=real(z),  y1= imag(z)
               x1=x1-fn1(x1-fn2(x1))
               y1=y1-fn1(y1-fn2(y2))
               z=p1*x1+p2*y1
               |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_14a { ; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
                bailout=p3
                z = pixel*pixel-fn3((1-pixel)*(1-pixel)) :
                x1=real(z),  y1= imag(z)
                x1=p1*x1-fn1(x1-fn2(x1))
                y1=p2*y1-fn1(y1-fn2(y1))
                z=x1+y1
                |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_14b { ; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
                bailout=p3
                z = pixel*pixel-fn3((1-pixel)*(1+pixel)) :
                x1=real(z),  y1= imag(z)
                x1=p1*x1-fn1(x1-fn2(x1))
                y1=p2*y1-fn1(y1-fn2(y1))
                z=x1+y1
                |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_14c { ; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
                bailout=p3
                z = fn3((1+pixel)*(1+pixel))-conj(pixel)-fn3(flip(1-pixel)) :
                x1=real(z),  y1= imag(z)
                x1=p1*x1-fn1(x1-fn2(x1))
                y1=p2*y1-fn1(y1-fn2(y1))
                z=x1+y1
                |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_16 { ; Jo Weber [100424,35], 10/1996
	     ; something by Sylvie Gallet or Brian E. Jones
               bailout=p3
               z = pixel*pixel-fn3(1-pixel) :
               x1=real(z),  y1= imag(z)
               x1=x1-p1*fn1(x1-fn2(x1))
               y1=y1-p2*fn1(y1-fn2(y1))
               z=x1+y1
               |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_17 { ; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
               bailout=p3
               z = pixel*pixel-fn3(1-pixel) :
               x1=real(z),  y1= imag(z)
               x1=x1-p1*fn1(x1-fn2(y1))
               y1=y1-p2*fn1(y1-fn2(x1))
               z=x1*y1
               |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_17a { ; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
                bailout=p3
                pixel=abs(real(pixel))+flip(imag(pixel))
                z = pixel :
                x1=real(z),  y1= imag(z)
                x1=x1-fn1(x1-fn2(x1))
                y1=y1-fn1(y1-fn2(y1))
                z=p1*x1+p2*y1
                |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_17a0 { ; Jo Weber [100424,35], 10/1996
               ; something by Sylvie Gallet or Brian E. Jones
                 bailout=p3
                 z = pixel*pixel-fn3(1-pixel) :
                 x1=real(z),  y1= imag(z)
                 x1=x1-p1*fn1(x1-fn2(y1))
                 y1=y1-p2*fn1(y1-fn2(x1))
                 z=x1/y1
                 |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_17a2 { ; Jo Weber [100424,35], 10/1996
               ; something by Sylvie Gallet or Brian E. Jones
                 bailout=p3
                 pixel=abs(real(pixel))+flip(imag(pixel))
                 z = pixel :
                 x1=real(z),  y1= imag(z)
                 x1=x1-fn1(x1-fn2(y1))
                 y1=y1-fn1(y1-fn2(x1))
                 z=p1*x1+p2*y1
                 |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_17a3 { ; Jo Weber [100424,35], 10/1996
               ; something by Sylvie Gallet or Brian E. Jones
                 bailout=p3
                 pixel=abs(real(pixel))+flip(imag(pixel))
                 z = pixel :
                 x1=real(z),  y1= imag(z)
                 x1=x1-fn1(y1-fn2(y1))
                 y1=y1-fn1(x1-fn2(x1))
                 z=p1*x1+p2*y1
                 |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_17b { ; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
                bailout=p3
                z=conj(conj(pixel/3-conj(0.10/pixel))) :
                x1=real(z),  y1= imag(z)
                x1=x1-fn1(x1-fn2(x1))
                y1=y1-fn1(y1-fn2(y1))
                z=p1*x1+p2*y1
                |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_17b2 { ; Jo Weber [100424,35], 10/1996
               ; something by Sylvie Gallet or Brian E. Jones
                 bailout=p3
                 z=conj(conj(pixel/3-conj(0.10/pixel))) :
                 x1=real(z),  y1= imag(z)
                 x1=x1-fn1(x1-fn2(y1))
                 y1=y1-fn1(y1-fn2(x1))
                 z=p1*x1+p2*y1
                 |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_17b3 { ; Jo Weber [100424,35], 10/1996
               ; something by Sylvie Gallet or Brian E. Jones
                 bailout=p3
                 z=conj(conj(pixel/3-conj(0.10/pixel))) :
                 x1=real(z),  y1= imag(z)
                 x1=x1-fn1(y1-fn2(y1))
                 y1=y1-fn1(x1-fn2(x1))
                 z=p1*x1+p2*y1
                 |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_17c { ; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
                bailout=p3
                pixel=-abs(real(pixel))+flip(imag(pixel))
                z=pixel-1/(tanh(0.10/pixel)-sqr(sinh(0.0250/pixel)))^6 :
                x1=real(z),  y1= imag(z)
                x1=x1-fn1(x1-fn2(x1))
                y1=y1-fn1(y1-fn2(y1))
                z=p1*x1+p2*y1
                |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_17d { ; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
                bailout=p3
                pixel=-abs(real(pixel))+flip(imag(pixel)),
                z=cabs(2*pixel)-1/(tanh(0.10/pixel)-sqr(sinh(0.0250/pixel)))^6 :
                x1=real(z),  y1= imag(z)
                x1=x1-fn1(x1-fn2(x1))
                y1=y1-fn1(y1-fn2(y1))
                z=p1*x1+p2*y1
                |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_17d2 { ; Jo Weber [100424,35], 10/1996
               ; something by Sylvie Gallet or Brian E. Jones
                 bailout=p3
                 pixel=-abs(real(pixel))+flip(imag(pixel)),
                 z=cabs(2*pixel)-1/(tanh(0.10/pixel)-sqr(sinh(0.0250/pixel)))^6 :
                 x1=real(z),  y1= imag(z)
                 x1=x1-fn1(x1-fn2(y1))
                 y1=y1-fn1(y1-fn2(x1))
                 z=p1*x1+p2*y1
                 |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_17e { ; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
                bailout=p3
                z=(pixel-conj(0.10/pixel))-0.4,c=2*pixel-1/log(cos(1/pixel)):
                x1=real(z),  y1= imag(z)
                x1=x1-fn1(x1-fn2(x1))
                y1=y1-fn1(y1-fn2(y1))
                z=p1*x1+p2*y1
                |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_17f { ; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
                bailout=p3
                z=(2*pixel-conj(0.10/pixel)) :
                x1=real(z),  y1= imag(z)
                x1=x1-fn1(x1-fn2(x1))
                y1=y1-fn1(y1-fn2(y1))
                z=p1*x1+p2*y1
                |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_17g { ; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
                bailout=p3
                z=(2*conj(pixel)-conj(0.30/pixel))+0.2 :
                x1=real(z),  y1= imag(z)
                x1=x1-fn1(x1-fn2(x1))
                y1=y1-fn1(y1-fn2(y1))
                z=p1*x1+p2*y1
               |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_17h { ; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
                bailout=p3
                pixel=-abs(real(pixel))+flip(imag(pixel))
                z=(2*tanh(pixel)-conj(0.10/pixel))+0.2:
                x1=real(z),  y1= imag(z)
                x1=x1-fn1(x1-fn2(x1))
                y1=y1-fn1(y1-fn2(y1))
                z=p1*x1+p2*y1
                |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_18 { ; Jo Weber [100424,35] 11/1996
pixel=1+1/pixel
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=1/fn3(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_18a { ; Jo Weber [100424,35] 11/1996
pixel=1+1/pixel
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_18b { ; Jo Weber [100424,35] 11/1996
pixel=1+1/pixel
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)+pixel
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_18c { ; Jo Weber [100424,35] 11/1996
pixel=1+1/pixel
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)+pixel*pixel
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_18d { ; Jo Weber [100424,35] 11/1996
pixel=1+1/pixel
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=sqr(z)
z=fn3(z)+pixel
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_19 { ; Jo Weber [100424,35] 11/1996
pixel=1+1/(1+1/(1+1/pixel))
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=1/fn3(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_20 { ; Jo Weber [100424,35] 11/1996
pixel=pixel*pixel*pixel-pixel*pixel-pixel-1
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=1/fn3(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_20a { ; Jo Weber [100424,35] 11/1996
pixel=pixel*pixel*pixel-pixel*pixel-pixel-1
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_20b { ; Jo Weber [100424,35] 11/1996
pixel=pixel*pixel*pixel-pixel*pixel-pixel-1
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=sqr(z)
z=fn3(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_20c { ; Jo Weber [100424,35] 11/1996
pixel=pixel*pixel*pixel-pixel*pixel-pixel-1
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=sqr(z)*z+pixel
z=fn3(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_20d { ; Jo Weber [100424,35] 11/1996
pixel=pixel*pixel*pixel-pixel*pixel-pixel-1
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=sqr(z)*z
z=fn3(z)+pixel
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_21 { ; Jo Weber [100424,35] 11/1996
pixel=sin(pixel)+cos(pixel)/(sin(pixel)-cos(pixel))
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=sqr(z)
z=fn3(z)+pixel
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_22 { ; Jo Weber [100424,35] 11/1996
pixel=1+sqr(tan(pixel))
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_23 { ; Jo Weber [100424,35] 11/1996
pixel=-1-sqr(cotan(pixel))
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_24 { ; Jo Weber [100424,35] 11/1996
pixel=sin(sqr(cos(2*pixel+3)))
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_25 { ; Jo Weber [100424,35] 11/1996
pixel=0.5*tan(pixel)-2*sin(pixel)
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_25_PHC { ; Jo Weber [100424,35] 11/1996
pixel=0.5*tan(pixel)-2*sin(pixel)
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=atanh(z)*whitesq+log(z)*(whitesq==0)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_26 { ; Jo Weber [100424,35] 11/1996
pixel=sqr(cos(pixel))-sqr(sin(pixel))+tan(pixe)
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_27 { ; Jo Weber [100424,35] 11/1996
pixel=(1+sqrt(pixel))/(2*pixel-1)
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_28 { ; Jo Weber [100424,35] 11/1996
pixel=log(1-sqr(pixel))
z=pixel
bailout=p3 :
z=fn1(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_28_PHC { ; Jo Weber [100424,35] 11/1996
pixel=log(1-sqr(pixel))
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=fn1(z)*whitesq+fn2(z)*(whitesq==0)
z=fn3(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_29 { ; Jo Weber [100424,35] 11/1996
pixel=log(sqrt((1-pixel)/(1+pixel)))
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_31 { ; Jo Weber [100424,35] 11/1996
qad=sqr(pixel)
pixel=exp(2*pixel)*(sqr(qad)-3*qad+6*pixel)
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_31_PHC { ; Jo Weber [100424,35] 11/1996
qad=sqr(pixel)
pixel=exp(2*pixel)*(sqr(qad)-3*qad+6*pixel)
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=z*whitesq+fn3(z)*(whitesq==0)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_xy_35 { ; Jo Weber [100424,35] 11/1996
pixel=3*sin(pixel)-5*sqr(sqr(sin(pixel)))
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
  ;SOURCE: jo_we_54.frm
}


JoWe_XY_39 { ; Jo Weber [100424,35] 11/1996
pixel=3/8*pixel+0.25*sin(pixel)+1/32*sin(pixel)
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_40 { ; Jo Weber [100424,35] 11/1996
pixel=p1*log(sin(p2*pixel))
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
|z|<=bailout
  ;SOURCE: jowe49.frm
}


JoWe_XY_41 { ; Jo Weber [100424,35] 11/1996
pixel=(pixel+sqrt(pixel+1))/(pixel-sqrt(pixel-1))
z=pixel
bailout=p3 :
x=real(z), y=imag(z)
x=x+fn1(x+fn2(x))
y=y+fn1(y+fn2(y))
z=p1*x+p2*y
z=x+y
z=fn3(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_42 { ; Jo Weber [100424,35] 11/1996
pixel=sqr(sqr(pixel)-sqrt(sqr(pixel)-1))
z=pixel
bailout=p3 :
x=real(z), y=imag(z)
x=x+fn1(x-fn2(x))
y=y+fn1(y-fn2(y))
z=(p1*x+p2*y)/2
z=fn3(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_43 { ; Jo Weber [100424,35] 11/1996
qad=sqr(pixel)
pixel=sqrt(qad/(qad-pixel))
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_45 { ; Jo Weber [100424,35] 11/1996
pixel=5/sqrt(0.5*pixel)
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_46 { ; Jo Weber [100424,35] 11/1996
pixel=0.1+1/pixel
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1+fn1(x1+fn2(x1))
y1=y1+fn1(y1+fn2(y1))
z=p1*x1+p2*y1
z=1/fn3(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_51m { ; Jo Weber [100424,35] 11/1996
k=(6 4), l = (0 4)
pixel=cos(sin((k-pixel)/(l+pixel)))
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_51m_1 { ; Jo Weber [100424,35] 11/1996
k=(6,4), l = (0,4)
pixel=cos(sin((k-pixel)/(l+pixel)))
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
  ;SOURCE: jo_we_54.frm
}


JoWe_XY_51m_3 { ; Jo Weber [100424,35] 11/1996
k=(0.6,0.44), l = (0,0.4)
pixel=cos(sin((k-pixel)/(l+pixel)))
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
  ;SOURCE: jo_we_54.frm
}


JoWe_XY_54 { ; Jo Weber [100424,35] 11/1996
bailout=p3
pixel=fn2(fn1((1-pixel*pixel)/(p1*pixel)))
z=c=pixel:
x=real(z), y=imag(z)
r1=x*y, r2=p2*x/y, r3=x+y
x=r1-r2, y=r2-r3
z=(x+y)/2+(z>0)+pixel
|z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_PHC_14 { ; Jo Weber [100424,35], 10/1996
                 ; something by Sylvie Gallet or Brian E. Jones
                   bailout=p3
                   z = pixel*pixel-fn3(1-pixel) :
                   x1=real(z),  y1= imag(z)
                   x1=x1-fn1(x1-fn2(x1))
                   y1=y1-fn1(y1-fn2(y2))
                   z=p1*x1*whitesq+p2*y1
                   |z|<=bailout
  ;SOURCE: jo_we_50.frm
}


JoWe_XY_PHC_14c { ; Jo Weber [100424,35], 10/1996
                  ; something by Sylvie Gallet or Brian E. Jones
                    bailout=p3
                    z = fn3((1+pixel)*(1+pixel))-conj(pixel)-fn3(flip(1-pixel)) :
                    x1=real(z),  y1= imag(z)
                    x1=p1*x1-fn1(x1-fn2(x1))
                    y1=p2*y1-fn1(y1-fn2(y1))
                    z=x1*whitesq+y1*(whitesq==0)
                    |z|<=bailout
  ;SOURCE: jo_we_50.frm
}



Leeze (XAXIS) = {
                       s = exp(1.,0.), z = Pixel, f = Pixel ^ s:
                       z = cosxx (z) + f, |z| <= 50 
}


Liar3 { ; by Chuck Ebbert.
        ; X: X is true to P1 times the extent that Y is true
        ; Y: Y is true to the extent that X is false.
        ; Sequential reasoning.  P1 usually 0 to 1.  P1=1 is Liar2 formula.
        ; x(n+1) = 1 - abs(p1*y(n)-x(n) );
        ; y(n+1) = 1 - abs((1-x(n+1) )-y(n) );
   z = pixel:
   x = 1 - abs(imag(z)*real(p1)-real(z) )
   z = flip(1 - abs(1-real(x)-imag(z) ) ) + real(x)
  |z| <= 1;
}


Liar4 { ; by Chuck Ebbert.
        ; X: X is as true as (p1+1) times Y
        ; Y: Y is as true as X is false
        ; Calculate new x and y values simultaneously.
        ; Real part of p1 changes probability.  Use floating point.
        ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = pixel, p = p1 + 1:
   z = 1-abs(imag(z)*p-real(z))+flip(1-abs(1-real(z)-imag(z)));
    |z| <= 1
}


limerick { ;Bradley Beacham  [74223,2745]
           ;Just an experiment -- nothing earth-shaking...
  z = c = pixel, test = p1 + 4:
    z = fn1(z)
    z = fn1(z)
    z = fn2(z)
    z = fn2(z)
    z = fn1(z) + c
      |z| < test
}


logf  {
; I never did work with logs that much but this one was interesting.
        z=pixel, zp = (0,0):
          temp = z
          z = z*z + zp
          zp = log(1-temp),|zp| <= 4 
}



Moe { ; Mutation of 'Zexpe'.  Mutated by Bradley Beacham [74223,2745]
  ; Original formula by Lee Skinner [75450,3631]
  ; For 'Zexpe', set FN1 & FN2 =IDENT and P1 = default
  ; real(p1) = Bailout (default 100)
  s = exp(1.,0.), z = pixel, c = fn1(pixel)
  ; The next line sets test=100 if real(p1)<=0, else test=real(p1)
  test = (100 * (real(p1)<=0) + real(p1) * (0<p1)):
    z = fn2(z)^s + c
    |z| <= test
}



newt {
; Playing around with variations of the ht type. This is a frog mutation.
; Try values of P1 between 0.2 and 1.0 Also try the imaginary component.
        z=pixel, zp = (0,0), huge=1.0e32:
          temp = z
          z = z*-z + zp
          zp = p1/temp^.5, (|zp| <= 4) && (|z| <= huge) 
}


Newt_ellipt_oops { ; Tim Wegner - use float=yes and periodicity=0
   ; fractal generated by Newton formula  (z^3 + c*z^2 +1)^.5
   ; try p1 = 1 and p2 = .1
   ; if p2 is small (say .001), converges very slowly so need large maxit
   ; another "tim's error" - mistook sqr for sqrt (see next)
   z = pixel, z2 = z*z, z3 = z*z2:
   num = (z3 + p1*z2 + 1)^.5      ; f(z)
   denom = (1.5*z2 + p1*z)/num    ; f'(z)
   z = z - (num/denom)            ; z - f(z)/f'(z)
   z2 = z*z
   z3 = z*z2,
   p2 <= |z3 + p1*z2 + 1|         ; no need for sqrt because sqrt(z)==0 iff z==0
}


Newt_Exp_Inv (YAXIS) {; Sylvie Gallet
                      ; equation e^z-1 = 0
                      ; solution z = 0
   z=(0,-1)/pixel : 
   z=z-1+exp(-1*z)
   real(z) > real(p1) 
}


Newton_elliptic { ; Tim Wegner - use float=yes and periodicity=0
   ; fractal generated by Newton formula f(z) = (z^3 + c*z^2 +1)^2
   ; try p1 = 1 and p2 = .0001
   z = pixel, z2 = z*z, z3 = z*z2:
   z = z - (z3 + p1*z2 + 1)/(6*z2 + 4*p1*z)      ; z - f(z)/f'(z)
   z2 = z*z
   z3 = z*z2,
   p2 <= |z3 + p1*z2 + 1|  ; no need for sqr because sqr(z)==0 iff z==0
}


Newton_poly2 { ; Tim Wegner - use float=yes
   ; fractal generated by Newton formula z^3 + (c-1)z - c
   ; p1 is c in above formula
   z = pixel, z2 = z*z, z3 = z*z2:
   z = (2*z3 + p1) / (3*z2 + (p1 - 1));
   z2 = z*z;
   z3 = z*z2,
  .004 <= |z3 + (p1-1)*z - p1|
}


newton_reel_1 (ORIGIN) { ;	Sylvie Gallet
   z=pixel , x=real(z) , y=imag(z) :    ; Methode de Newton pour
   x2=x*x , y2=y*y , x3=x2*x , y3=y2*y  ; x -> x^3-y
   d=1+9*x2*y2                          ; y -> y^3+x
   x = (6*x3*y2 + 2*y3) / d             ; solution (0,0)
   y = (6*x2*y3 - 2*x3) / d   
   z = x+flip(y) 
   |z|>=.01
}


Newton_z3_sinz2 { ; copyright Sylvie Gallet
                  ; z -> z^3+sin(z^2)
                  ; solution z = 0
   z = pixel :
   z2 = z*z   
   z = z - (z*z2+sin(z2))/(3*z2+2*z*cos(z2))
   |z| >= p1
}


nigel(XAXIS)  {
; If we keep adding terms the symmetry order goes even higher
      z = pixel,zp1=zp2=zp3=(0,0):
      temp = z
      z = z*z - zp3
      zp3 = zp2
      zp2 = zp1
      zp1 = temp, |zp1| <= 4 
}



octet {
; The ht varient of the octo formula
      z = pixel,zp=(0,0),huge=1.0e32:
      temp = z
      z = z^3 + zp
      zp = p1/temp, (|zp| <=64) && (|z| <= huge) 
}


 octo(XYAXIS)  {
; The next obvious thing to try is different powers
; Note. Changing sign in this one like the trillium only rotates 22.5 deg.
      z = pixel,zp=(0,0):
      temp = z
      z = z^3 + zp
      zp = temp, |zp| <= 4 
}


OK-11 { ;overkill.frm - bradley beacham
        ;TRY FN1 = SQR, FN2 = SQR
   z = 0, v = pixel:
   z = fn1(v) + z;
   v = fn2(z) + v,
   |z| <= (5 + p1)
}


OK-13 { ;overkill.frm - bradley beacham
        ;TRY FN1 = SQR, FN2 = SQR
   z = 0, c = fn1(pixel) :
   z = fn1(z) + c;
   z = fn2(z),
   |z| <= (5 + p1)
}


OK-21 {;overkill.frm - bradley beacham
   z = pixel, c = fn1(pixel):
   z = fn2(z) + c,
   fn3(z) <= p1
}


OK-23 {;overkill.frm - bradley beacham
   
   z = c = pixel, k = 1 + p1:
   z = k * fn1(z^z + c) + c/z,
   |z| <= (5 + p2)
}


OK-26 {;overkill.frm - bradley beacham
  
   z = c = pixel, k = 2 + p1, test = k/(2 + p2):
   a = fn1(z);
   b = (|z| > test)  * (a - c);
   d = (|z| <= test) * (a + c);
   z = b + d,
   |z| <= k
}


OK-27 {;overkill.frm - bradley beacham

   z = pixel, c = fn1(pixel), k = 1 + p1:
   a = fn2(z);
   b = (|z| >= k) * (a - c);
   d = (|z| < k) * (a + c);
   z = a + b + d,
   |z| <= (10 + p2)
}


OK-30 {;overkill.frm - bradley beacham
 
   z = v = pixel, k = .5 + p1:
   a = fn1(z);
   b = (z <= k) * (a + v);
   e = (z > k) * (a - v);
   v = z;
   z = b + e,
   |z| <= (5 + p2)
}


OK-31 {;overkill.frm - bradley beacham

   z = v = pixel, k = .1 + p1:
   a = fn1(z);
   b = (a <= k) * (a + v);
   e = (a > k) * fn2(a);
   v = z;
   z = b + e,
   |z| <= (5 + p2)
}


OK-36 { ; DISECTED MANDELBROT
  ; TO GENERATE "STANDARD" MANDELBROT, SET P1 = 0,0 & ALL FN = IDENT
  z = pixel, cx = fn1(real(z)), cy = fn2(imag(z)), k = 2 + p1:
  zx = real(z), zy = imag(z);
  x = fn3(zx*zx - zy*zy) + cx;
  y = fn4(k * zx * zy) + cy;
  z = x + flip(y),
  |z| <  (10 + p2)
}


OK-40 { ; DISECTED OK-39
  ; (ASSUMING YOU USE OK-39 WITH FN1= IDENT & FN2 = SQR...)
  z = pixel, cx = fn1(real(pixel)), cy = fn2(imag(pixel)), k = 2 + p1:
  zx = real(z), zy = imag(z);
  a = zx*cx - zy*cy;
  b = cx*zy + zx*cy;
  x = fn3(a*a - b*b) + cx;
  y = fn4(k*a*b) + cy;
  z = x + flip(y),
  |z| <= (10 + p2)
}


OK-42 { ;overkill.frm - bradley beacham
        ; MUTATION OF FN + FN
  z = pixel, p1x = real(p1)+1, p1y = imag(p1)+1,
  p2x = real(p2)+1, p2y = imag(p2)+1:
  zx = real(z), zy = imag(z);
  x = fn1(zx*p1x - zy*p1y) + fn2(zx*p2x - zy*p2y);
  y = fn3(zx*p1y + zy*p1x) + fn4(zx*p2y + zy*p2x);
  z = x + flip(y),
  |z| <= 20
}


OK-43 { ;overkill.frm - bradley beacham
        ; DISECTED SPIDER
        ; TO GENERATE "STANDARD" SPIDER, SET P1 = 0,0 & ALL FN = IDENT
  z = c = pixel, k = 2 + p1:
  zx = real(z), zy = imag(z);
  cx = real(c), cy = imag(c);
  x = fn1(zx*zx - zy*zy) + cx;
  y = fn2(k*zx*zy) + cy;
  z = x + flip(y);
  c = fn3((cx + flip(cy))/k) + z,
  |z| <  (10 + p2)
}


 OldCGNewtonSinExp (XAXIS) {
        z=pixel:
        z1=exp(z);
        z2=sin(z)+z1-z;
        z=z-p1*z2/(cosxx(z)+z1), .0001 < |z2|
}


 OldNewtonSinExp (XAXIS) {; Chris Green
  ; Newton's formula applied to sin(x)+exp(x)-1=0.
  ; Use floating point.
  z=pixel:
   z1=exp(z)
   z2=sin(z)+z1-1
   z=z-p1*z2/(cosxx(z)+z1),
    .0001 < |z2|
}



peacock(XAXIS)  {
; The next obvious function to try
      z = pixel, zp = (0,0):
      temp = z
      z = -cos(z) - zp
      zp = temp, |zp| <= 4 
}


 penta(XAXIS)  {
; introducing a second function can add lots of variety.
        z = pixel, zp = (0,0):
          temp = z
          z = z*z - zp
          zp = conj(temp),|zp| <= 4 
}


penta2(XAXIS)  {
; A simple technique of changing init params to map to a function.
        z = pixel^2, zp = (0,0):
          temp = z
          z = z*z - zp
          zp = conj(temp),|zp| <= 4 
}


pentet {
; the HT variant of the penta formula
        z = pixel, zp = (0,0),huge=1.0e32:
          temp = z
          z = z*z - zp
          zp = p1/conj(temp), (|zp| <= 64) && (|z| <= huge) 
}


petcock (XAXIS) {
      z = pixel, zp = (0,0):
      temp = z
      z = -cos(z) - zp
      zp = 1/temp, |zp| <=64 
}


pheon2(XAXIS)  {
; A square root mapping of the pheonix. Interesting because of the
; discontinuites introduced in the folded symmetry.
      z = pixel^.5, zp1 = zp2 = (0,0):
      temp = z
      z  = z*z - zp2
      zp2 = zp1
      zp1 = conj(temp), |zp1| <= 4 
}


pheonabs(XAXIS)  {
; A pheonix variant
      z = pixel, zp1 = zp2 = (0,0):
      temp = z
      z  = z*z - abs(zp2)
      zp2 = zp1
      zp1 = conj(temp), |zp1| <= 4 
}


pheonix(XAXIS)  {
; Add conjugation and produce a great fractal even if it's spelt wrong.
      z = pixel, zp1 = zp2 = (0,0):
      temp = z
      z  = z*z - zp2
      zp2 = zp1
      zp1 = conj(temp), |zp1| <= 4 
}


pheot1 {
; The ht flavour of the pheonix fractal gives some nice escher like
; fractals
      z = pixel, zp1 = zp2 = (0,0), bail=real(p2), huge=1.0e32:
      temp = z
      z  = z*z - zp2
      zp2 = zp1
      zp1 = p1/conj(temp), (|zp1| <= bail) && (|z| <= huge) 
}


pixey00 (XAXIS_NOPARM) {     
   z = pixel + p1:
   z = z*z + pixel
   z <= 4 
}


pixey02 {     
   z = pixel + p1, c = pixel:
   temp = z
   z = z*z + pixel + c
   pixel = temp
   z <= 4 
}


pixey03 {
   z = pixel
   x = real(z + p1), y = imag(z + p2):
   x = fn1(x*x - fn2(y*y))
   y = fn3(y*y - fn4(x*x))
   z = x*x + y*y 
   |z| <= 4
}


pixey04  {
   z = pixel + p1 
   c = pixel:
   z = fn1(z*2.71828182845905) + fn2(c)  
   |z| <= 16
}


pixey05  {
   z = pixel + p1 
   c = pixel:
   z = fn1(z^2.71828182845905) + fn2(c)  
   |z| <= 16
}


PopCornJulCplx   { ; Jon Horner & Bradley Beacham - May 1995
  ; p1 = step size (default 0.05), p2 = parameter (default 3)
  ; p3 = bailout value (default 4)
  ; set co-ords = -3/3/-2.25/2.25, fn1=sin, fn2=tan, fn3=ident, fn4=flip
  h = (0.05 * ((p1)<=0) + (p1) * (0<p1))
  k = (3.0 * ((p2)<=0) + (p2) * (0<p2))
  test = (4.0 * ((p3)<=0) + (p3) * (0<p3))
  x = real(pixel), y = imag(pixel):
    newx = x - h*fn1((y) + fn2(k*y))
    newy = y - h*fn1((x) + fn2(k*x))
    x = newx, y = newy
    z = fn3(x) + fn4(y)
      |z| < test
}


psycho(XAXIS)  {
;  Another nice two function variation
      z = pixel, zp = (0,0):
      temp = z
      z = z*z - zp
      zp = sin(-temp), |zp| <= 4 
}



quartc {
; This makes for an unusual combination of fractal characteristics
; Recognizable sin fractal filled with chaotic banding.
; Real part of P1 should be about 0.1 and Imag portion can be 0.0
; Oh yes! You will have to zoom out to +/- 2pi on the x axis for full view.
       z=pixel, zp = (0,0), huge = 1.0e32:
(|z| <= 64) && (|z| <= huge) 
}


quartet {
; The quatro-HT variation. Use real part of p1  0.0 < p1 < 1.0
; Adding the inversion causes what looks like an infinite extension along
; the real axis. Using the Imag component will add some nice asymmetry.
       z=pixel, zp = (0,0), huge = 1.0e32:
       temp = z
       z = sin(z) - zp
       zp = p1/temp, (|zp| <= 4 && |z| <= huge) 
}


quartet1 {
; increasing the bailout will reduce the disk size and a wider and
; more interesting range of workable P1 input parameters.
       z=pixel, zp = (0,0), huge = 1.0e32:
       temp = z
       z = sin(z) - zp
       zp = p1/temp, (|zp| <= huge && |z| <= huge) 
}


quartz {
      z=c=pixel, zp = (0,0), huge = 1.0e32:
       temp = z
       z = -sin(z) - zp
       zp = p1/temp, (|zp| <= huge && |z| <= huge) 
}


quatro(XYAXIS)  {
; Forget the squared term and iterate a trig function
        z=pixel, zp = (0,0):
          temp = z
          z = sin(z) - zp
          zp = temp,|zp| <= 4 
}


quilt(XAXIS) {
; The combination of a typing error and a bug in fractints parser
; makes weird quilt like patterns, I hope they don't fix it. I like it.
     z = = zp1 = pixel, zp2 = (0,0):
      temp = z
      z = zp2*zp2  - zp1
      zp2 = zp1
      zp1 = temp^.5, |zp1| <= 4
}



rat {
; Still more attempts at ht variants
      z = zp1 = pixel, zp2 = (0,0),huge=1.0e32:
      temp = z
      z = z*z - zp2
      zp2 = zp1
      zp1 = (temp/zp1)*p1, (|zp1| <= 64) && (|z| <= huge) 
}


REB004A = {; Ron Barnett, 1993
   z = pixel:
   z =p1*fn1(z) + p1*p1*fn2(p2*z) + pixel, |z| <= 100
}


REB004M = {; Ron Barnett, 1993
              ; floating point required
   z = pixel:
   x = real(z), y = imag(z);
   const = x*x + y*y;
   x1 = -fn1(const - 12*x)*x/(4*const);
   y1 = -fn2(const + 12*x)*y/(4*const);
   x2 = x1*x1 - y1*y1 + p1;
   y2 = 2*x*y;
   z = x2 + flip(y2), |z| <= 100
}


REB005E = {; Ron Barnett, 1993
              ; floating point required
   z = pixel:
   x = real(z), y = imag(z);
   const = x*x + y*y;
   x1 = -fn1((const - x)*x/const);
   y1 = -fn2((const + y)*y/const);
   x2 = x1*x1 - y1*y1 + p1;
   y2 = 2*x1*y1;
   z = x2 + flip(y2), |z| <= 100
}


REB005F = {; Ron Barnett, 1993
              ; floating point required
   z = pixel:
   x = real(z), y = imag(z);
   const = x*x + y*y;
   x1 = -fn1((const - 12*x)*x/(4*const));
   y1 = -fn2((const + 12*y)*y/(4*const));
   x2 = x1*x1 - y1*y1 + p1;
   y2 = 2*x1*y1;
   z = x2 + flip(y2), |z| <= 100
}


REB005G = {; Ron Barnett, 1993
              ; floating point required
   z = pixel:
   x = real(z), y = imag(z);
   const = x*x + y*y;
   x1 = -fn1(const + p1*x)*y/const;
   y1 = -fn2(const + y)*x/const;
   x2 = x1*x1 - y1*y1 + p2;
   y2 = 2*x1*y1;
   z = x2 + flip(y2), |z| <= 100
}


royal1(XYAXIS)  {
; Coupling conjugate functions with others produce some nice variants.
      z = pixel,  zp = (0,0):
      temp = z
      z = z*z  - cos(zp)
      zp = conj(temp), |zp| <= 4 
}


royal2(XYAXIS)  {
; Yet another Conjugate variation
      z = pixel, zp2 = zp1 = (0,0):
      temp = z
      z = z*z  - zp2
      zp2 = cos(zp1)
      zp1 = conj(temp), |zp1| <= 4
}



scorpio(XAXIS)  {
;  Throw in a second function and things get interesting again
      zp1 = zp2 = pixel, z = (0,0):
      temp = z
      z = zp1*zp1 - zp2
      zp2 = zp1
      zp1 = sin(temp), |zp1| <= 4
}


ScSkLMS(XAXIS) { z = pixel, TEST = (p1+3): z = log(z) - sin(z), |z|<TEST 
}


ScSkZCZZ(XYAXIS) { z = pixel, TEST = (p1+3): z = (z*cosxx(z)) - z, |z|<TEST 
}


septo(XAXIS)  {
; We can save and use more than just the previous term
      z = pixel, zp1 = zp2 = (0,0):
      temp = z
      z = z*z - zp2
      zp2 = zp1
      zp1 = temp,  |zp1| <= 4 
}


shifter01 { ;After shift, switch from z*z to z*z*z
            ;Bradley Beacham  [74223,2745]
  ;P1 = shift value, P2 varies bailout value
  z = c = pixel, iter = 1, shift = p1, test = 4 + p2:
    lo = (z*z) * (iter <= shift)
    hi = (z*z*z) * (shift < iter)
    iter = iter + 1
    z = lo + hi + c
    |z| < test
}


shifter02 { ;After shift, flop sign of C on each iteration
            ;Bradley Beacham  [74223,2745]
  ;P1 = shift value, P2 varies bailout value
  z = c = pixel, iter = 1, shift = p1, test = 4 + p2:
    lo = (1) * (iter <= shift)
    hi = (-1) * (shift < iter)
    c = c * (lo + hi)
    iter = iter + 1
    z = fn1(z*z) + c
    |z| < test
}


shifter03 { ;After shift, switch from fn1(z) to fn2(z)
            ;Bradley Beacham  [74223,2745]
  ;P1 = shift value, P2 varies bailout value
  z = c = pixel, iter = 1, shift = p1, test = 4 + p2:
    lo = fn1(z) * (iter <= shift)
    hi = fn2(z) * (shift < iter)
    iter = iter + 1
    z = lo + hi + c
    |z| < test
}


shifter04 { ;After shift, switch from fn1(z*z) to fn2(z*z)
            ;Bradley Beacham  [74223,2745]
  ;P1 = shift value, P2 varies bailout value
  z = c = pixel, iter = 1, shift = p1, test = 4 + p2:
    lo = fn1(z*z) * (iter <= shift)
    hi = fn2(z*z) * (shift < iter)
    iter = iter + 1
    z = lo + hi + c
    |z| < test
}


shifter05 { ;After shift, switch from z^p1 to z^p2
            ;Bradley Beacham  [74223,2745]
  ;P1 & P2 are exponents (try 2 and 3, for example)
  ;P3 is shift value
  z = c = pixel, iter = 1, shift = p3:
    lo = (z^p1) * (iter <= shift)
    hi = (z^p2) * (shift < iter)
    iter = iter + 1
    z = lo + hi + c
    |z| < 4
}


SJMAND05 {;Mandelbrot lambda function
        z=real(pixel)+flip(imag(pixel)*p1),
        c=p2+p1*real(pixel)+flip(imag(pixel)):
        z=fn1(z)*c, |z|<=64
}


slider01 { ;Original version
           ;Bradley Beacham  [74223,2745]
  ;P1 & P2 are exponents (try 2 and 3, for example)
  ;P3 varies bailout value
  z = c = pixel, limit = 2 + p3, f = 0 :
    z = ((f) * fn1(z^p1)) + ((1-f) * fn2(z^p2)) + c
    f = cabs(z) / limit
      f < 1.0
}


slider02 { ;Fixed slider01
           ;Bradley Beacham  [74223,2745]
  ;P1 & P2 are exponents (try 2 and 3, for example)
  ;P3 varies bailout value
  z = c = pixel, limit = 2 + p3, f = cabs(z) / limit:
    z = ((f) * fn1(z^p1)) + ((1-f) * fn2(z^p2)) + c
    f = cabs(z) / limit
      f < 1.0
}


SPCZ(xaxis) { ; resol. sin(z)^cos(z)=0 -Jm Collard-Richard - Use Float=yes
z=pixel:
s=sin(z);
c=cos(z);
co=cotan(z);
sc=s^c;
z1=sc;
z2=((c*co)-(s*log(s)))*sc;
z=z-(z1/z2) ,
0.001<=|z1| 
}


speed01 { ;Speed chooses between functions, escape-time
          ;Bradley Beacham  [74223,2745]
  ;P1 is maximum speed for "slow"
  ;P2 varies bailout value
  z = oldz = c = pixel, limit = 4 + p2:
    x = real(z) - real(oldz)
    y = imag(z) - imag(oldz)
    speed = x*x + y*y
    slow = fn1(z*z) * (speed < p1)
    fast = fn2(z*z) * (speed >= p1)
    oldz = z
    z = slow + fast + c
      |z| <= limit
}


speed02 { ;Acceleration chooses between functions, acceleration-limit-time
          ;Bradley Beacham  [74223,2745]
  ;P1 varies definition of acceleration
  ;P2 varies bailout value
  z = oldz = c = pixel, oldspeed = 0, limit = 4 + p2:
    x = real(z) - real(oldz)
    y = imag(z) - imag(oldz)
    speed = x*x + y*y
    accel = speed - oldspeed
    slower = fn1(z*z) * (accel <= p1)
    faster = fn2(z*z) * (accel > p1)
    oldz = z
    oldspeed = speed
    z = slower + faster + c
      accel <= limit
}


 star(XAXIS)  {
; Changing the sign back makes a simple but elegent fractal
        z=pixel, zp = (0,0):
          temp = z
          z = z*z + zp
          zp = conj(temp),|zp| <= 64 
}



tC1108 {
  z = fn1( p1 / (4 / p1)),
  c = fn2( p2 / (1 / p2)):
  z = (z * 1 / c) / (fn3 (pixel) - c * c);
  z = z / c,
  |real(z)| <=100 
}


tC1126 {
  z = fn1( p1) / (p1 + pixel),
  c = (fn1( 1 / pixel * p2 / pixel))/(0.3, 0.6):
  z = z + c - fn2 (imag( z)),
  |real(z)| <=100 
}


tC1197 {
         ; where fn1 = conj, fn2 = exp, fn3 = cosxx, fn4 = sqr
         ;
  z  = fn1(1 / pixel * 0.91 / pixel),
  z2 = z + fn2( fn3(1 / pixel)),
  z3 = z * z2,
  c  = ( 1 / fn3( fn4( pixel))) / (1.099, 0):
  z = (z * 1 / c);
  z2 = z3 - (z2 + z / c);
  z3 = z2 - (z3 + z2);
  |real(z)| <= 100 
}


tC1258 { ; where fn1 = conj, fn2 = cosxx, fn3 = sqr,
         ; fn4 = abs
         ;
  z = fn1( 1 / (pixel * pixel * pixel)),
  c = fn2( fn3( 0.56 / pixel * 1 / pixel)):
  z = ( fn4( imag( pixel / z)) * cabs( real( pixel / c))) / (pixel - c * c);
  |real(z)| <=100 
}


tC1273 { ; where fn1, fn2, and fn3 = sqr
         ;       p1 = 2.5, p2 = 1.5
         ;
  z = fn1( fn2( fn3( p1 - pixel))),
  c = z - (pixel - p2):
  z = z * 1 / ( c * c - 1 / pixel);
  |real(z)| <=100 
}


tC1293 { ; where fn1 = log, fn2 = sqr, fn3 = sqr, fn4 = log
  z = fn1( fn2( 1 / pixel)),
  c = 1 / fn3( fn4( pixel)),
  c1= z / c^c / z:
  z = z / c1;
  z = (z - (z^c1)) / (c * c - pixel);
  |real(z)| <=100 
}


texp1 { ; h some sort of special value aprox. 0.148148...
; Setting the imaginary part as well causes very strange fractals
      z = pixel,zp=temp=(0,0),huge=1.0e32:
      temp = z
      z = z*z + zp
      zp = p1/temp, (|zp| <= 64) && (|z| <= huge) 
}


textur1(XAXIS) {
; Zoom into the noise region outside the 2.0 radius with 256 colour decomp
; or try boundary tracing in iter=summ or mult mode. Make sure float=yes
; earlier versions of fractint had more trouble with this equation
; and broke inside as well.
      z = zp1 = pixel, zp2 = (0,0):
      temp = z
      z = zp1*zp1 - zp2
      zp2 = zp1
      zp1 = temp^0.5, |zp1| <= 4
}


textur2(XAXIS) {
; A minor variation on the previous formula to see what happens
; Zoom in far enough and find some strange moire' patterns.
      z = zp1 = zp2 = pixel:
      temp = z
      z = zp1*zp1 - zp2
      zp2 = zp1
      zp1 = temp^0.5, |zp1| <= 4
}


three(XAXIS)  {
; A very different idea. Don't use the current value, just previous ones.
; You still have to save it of course.
      z = pixel,  zp1 = zp2 = (0,0):
      temp = z
      z = zp2*zp2  - zp1
      zp2 = zp1
      zp1 = temp, |zp1| <= 4
}


tpet {
      z = pixel, zp = (0,0), huge=1.0e32:
      temp = z
      z = -cos(z) - zp
      zp = p1/temp, (|zp| <= 64) && (|z| <= huge) 
}


tpet1 {
      z = pixel, zp = (0,0), huge=1.0e32:
      temp = z
      z = cos(z) - zp
      zp = p1/temp, (|zp| <= 64) && (|z| <= huge) 
}


tpet2 {
      z = pixel, zp = (0,0), huge=1.0e32:
      temp = z
      z = cos(z) + zp
      zp = p1/temp, (|zp| <= 4) && (|z| <= huge) 
}


tree(XAXIS)  {
; Try a different order of the terms.
      z = pixel,  zp1 = zp2 = (0,0):
      temp = z
      z = zp1*zp1  - zp2
      zp2 = zp1
      zp1 = temp, |zp1| <= 4 
}


trick(XAXIS)  {
; An different method to work in a second function
      z = pixel, zp = (0,0):
      temp = z
      z = sin(z)*z - zp
      zp = (temp),  |zp| <= 4 
}


 trillium(XAXIS)  {
 ; A minor variation in sign will produce a remarkable change
      z = pixel, zp = (0,0):
         temp = z
           z = z*z - zp
           zp = temp,  |zp| <= 4 
}


tsept {
; Why not try this change on all the good formula so far?
      z = pixel, zp1 = zp2 = (0,0), huge = 1.0e32:
      temp = z
      z = z*z - zp2
      zp2 = zp1
      zp1 = p1/temp, (|zp1| <= 64) && (|z| <= huge) 
}


TSinh (XAXIS) = {
        z = c = sinh(pixel):
        z = c ^ z,
        z <= (p1 + 3)
}


tstar {
; For the star fractal as well it makes a dramatic change.
; Use real 0.1 < p1 < 1.0
        z=pixel, zp = (0,0),huge=1.0e32:
          temp = z
          z = z*z + zp
          zp = p1/conj(temp), (|zp| <= 64) && (|z| <= huge) 
}



wha01 { ;Use a counter to gradually change size of value added
        ;Bradley Beacham  [74223,2745]
  ;P1 sets value of constant (try 0.01, for example)
  ;P2 varies bailout value
  z = c = pixel, iter = 0, test = 4 + p2:
    iter = iter + 1
    z = z*z + iter*p1 + c
    |z| < test
}


wha02 { ;Use a counter to gradually change proportions of algorithms
        ;Bradley Beacham  [74223,2745]
  ;P1 sets starting value for k
  ;P2 varies step size for incrementing k
  ;P3 varies bailout value
  z = c = pixel, k = p1, kstep = .01 + p2, limit = 4 + p3:
    k = k + kstep
    z = k*(z*z*z) + (1-k)*(z*z) + c
      |z| < limit
}


wha03 { ;Use a counter to gradually change exponent
        ;Bradley Beacham  [74223,2745]
  ;P1 varies starting value for exponent
  ;P2 varies step size for incrementing exponent
  ;P3 varies bailout value
  z = c = pixel, ex = 2 + p1, step = p2, limit = 4 + p3:
    z = z^ex + c
    ex = ex + step
      |z| < limit
}


Whatever_00m(XAXIS) = { ; Original formula Whatever_the_name
                        ; corrected by Jo Weber [100424,35], 6/1996
                          z = pixel:
		          a1=sqr(z), a2=1/a1, 
                          z=a1+a2+pixel,
}


Whatever_01(XYAXIS) = { ; Original formula Whatever_the_name
                        ; modified by Jo Weber [100424,35], 6/1996
                          z = pixel:
                          z=z*z+(1/z*z)+pixel,
}


Whatever_01m(XYAXIS) = { ; Original formula Whatever_the_name
                         ; corrected and modified by 
                         ; Jo Weber [100424,35], 6/1996
                          z = pixel:
		          a1=sqr(z), a2=1/a1, 
                          z=a1+a2+pixel,
}


Whatever_02 = { ; Original formula Whatever_the_name
                ; modified by Jo Weber [100424,35], 6/1996
                  z = pixel:
                  z=z*z+(2/z*z)+pixel,
}


Whatever_02m = { ; Original formula Whatever_the_name
                 ; corrected and modified by 
                 ; Jo Weber [100424,35], 6/1996
                  z = pixel:
                  a1=sqr(z), a2=2/a1,
                  z=a1+a2+pixel,
}


Whatever_03 = { ; Original formula Whatever_the_name
                ; modified by Jo Weber [100424,35], 6/1996
                  z = pixel:
                  z=fn1(z)*z+(1/z*z)+pixel,
                  |z|>=0.05
}


Whatever_03m = { ; Original formula Whatever_the_name
                 ; corrected and modified by 
                 ; Jo Weber [100424,35], 6/1996
                  z = pixel:
                  a1=sqr(z), a2=1/a1,
                  z=fn1(z)*z+a2+pixel,
                  |z|>=0.05
}


Whatever_04(XYAXIS) = { ; Original formula Whatever_the_name
                        ; modified by Jo Weber [100424,35], 6/1996
                          z = pixel:
                          z=fn1(z)*z+(1/z*z)+pixel,
                          |z|>=0.05
}


Whatever_04m(XYAXIS) = { ; Original formula Whatever_the_name
                         ; corrected and modified by 
                         ; Jo Weber [100424,35], 6/1996
                          z = pixel:
                          a1=sqr(z), a2=1/a1,
                          z=fn1(z)*z+a2+pixel,
                          |z|>=0.05
}


Whatever_05 = { ; Original formula Whatever_the_name
                ; modified by Jo Weber [100424,35], 6/1996
                  z = pixel:
                  z=fn1(z*z)+(1/z*z)+pixel,
                  |z|>=0.05
}


Whatever_05m = { ; Original formula Whatever_the_name
                 ; corrected and modified by 
                 ; Jo Weber [100424,35], 6/1996
                  z = pixel:
                  a1=sqr(z), a2=1/a1,
                  z=fn1(a1)+a2+pixel,
                  |z|>=0.05
}


Whatever_06(XYAXIS) = { ; Original formula Whatever_the_name
                        ; modified by Jo Weber [100424,35], 6/1996
                          z = pixel:
                          z=fn1(z*z)+(1/z*z)+pixel,
                          |z|>=0.05
}


Whatever_06m(XYAXIS) = { ; Original formula Whatever_the_name
                         ; corrected and modified by 
                         ; Jo Weber [100424,35], 6/1996
                          z = pixel:
                          a1=sqr(z), a2=1/a1,
                          z=fn1(a1)+a2+pixel,
                          |z|>=0.05
}


Whatever_07 = { ; Original formula Whatever_the_name
                ; modified by Jo Weber [100424,35], 6/1996
                  z = pixel:
                  z=fn1(z)*fn2(z)+(1/z*z)+pixel,
}


Whatever_07m = { ; Original formula Whatever_the_name
                 ; corrected and modified by 
                 ; Jo Weber [100424,35], 6/1996
                  z = pixel:
                  a1=sqr(z), a2=1/a1,
                  z=fn1(z)*fn2(z)+a2+pixel,
}


Whatever_08(XYAXIS) = { ; Original formula Whatever_the_name
                        ; modified by Jo Weber [100424,35], 6/1996
                          z = pixel:
                          z=fn1(z)*fn2(z)+(1/z*z)+pixel,
}


Whatever_08m(XYAXIS) = { ; Original formula Whatever_the_name
                         ; corrected and modified by 
                         ; Jo Weber [100424,35], 6/1996
                          z = pixel:
                          a1=sqr(z), a2=1/a1,
                          z=fn1(z)*fn2(z)+a2+pixel,
}


Whatever_09(XYAXIS) = { ; Original formula Whatever_the_name
                        ; modified by Jo Weber [100424,35], 6/1996
                          z = pixel:
                          z=fn1(z)*fn2(z)+(p1/z*z)+pixel,
}


Whatever_09m(XYAXIS) = { ; Original formula Whatever_the_name
                         ; corrected and modified by 
                         ; Jo Weber [100424,35], 6/1996
                          z = pixel:
                          a1=sqr(z), a2=p1/a1,
                          z=fn1(z)*fn2(z)+a2+pixel,
}


Whatever_10 = { ; Original formula Whatever_the_name
                ; modified by Jo Weber [100424,35], 6/1996
                  z = pixel:
                  z=fn1(z)*fn2(z)+(p1/z*z)+pixel,
}


Whatever_10m = { ; Original formula Whatever_the_name
                 ; corrected and modified by 
                 ; Jo Weber [100424,35], 6/1996
                  z = pixel:
                  a1=sqr(z), a2=p1/a1,
                  z=fn1(z)*fn2(z)+a2+pixel,
}


Whatever_the_name(XAXIS) = {   z = pixel:   z=z*z+(1/z*z)+pixel,
}


wiltetrate{
    z= pixel :
    z=z^(cotanh(z^.5))+pixel,
    |z|<=4
}



xxx  {
; Use the previous term as an exponent and see what happens
; Not particularly interesting but here for completeness and showing
; the development path.
      z = zp1 = pixel, zp2 = (0,0):
      temp = z
      z = z^zp1 - zp2
      zp2 = zp1
      zp1 = temp, |zp1| <= 4
}



yy2 (XAXIS) {
; This formula doesn't seem to work the same in fractint vers > 17.2
; I haven't figured out why yet but what should be inside, isn't anymore.
; Might be a new fractint bug or perhaps a side effect from a bugfix.
      z = zp1 = pixel, zp2 = (0,0):
      temp = z
      z = zp1^z - zp2
      zp2 = zp1
      zp1 = 1/temp, |zp2| <= 4
}


yyt {
; Changing the yyy to the more general form using P1
      z = zp1 = pixel, zp2 = (0,0), huge=1.0e32:
      temp = z
      z = zp1^z - zp2
      zp2 = zp1
      zp1 = p1/temp, (|zp2| <= 64) && (|z| <= huge) 
}


yyy(XAXIS) {
; Try Zprev to the power Zed (the reverse of the ZZZ function
; This formula doesn't seem to work the same in fractint vers > 17.2
; I haven't figured out why yet but what should be inside, isn't anymore.
; It doesn't change the structure, just the colouring.
      z = zp1 = pixel, zp2 = (0,0):
      temp = z
      z = zp1^z - zp2
      zp2 = zp1
      zp1 = 1/temp, |zp1| <= 4
}



Zeppo { ; Mutation of 'Liar4'. Mutated by Bradley Beacham [74223,2745]
  ; Original formula by Chuck Ebbert [76306,1226]
  ; For 'Liar4' set FN1 & FN2 =IDENT and P1 & P2 = default
  ; p1 & p2 = Parameters (default 1,0 and 0,0)
  z = pixel
  ; The next line sets p=default if p1=0, else p=p1
  p = (1 * (|p1|<=0) + p1):
    z =fn1(1-abs(imag(z)*p-real(z)))+flip(fn2(1-abs(1-real(z)-imag(z))))-p2
    |z| <= 1
}


zz2 (XAXIS) {
 ; Try the inversion again
      z = zp1 = pixel, zp2 = (0,0):
      temp = z
      z = z^zp2 - zp1
      zp2 = zp1
      zp1 = 1/temp, |zp1| <= 4
}


zzz(XAXIS)  {
; Same as XXX but introduce a new dynamic by inverting a previous term
; A small but curious active region. Try 256 colour decomp.
      z = zp1 = pixel, zp2 = (0,0):
      temp = z
      z = z^zp1 - zp2
      zp2 = zp1
      zp1 = 1/temp, |zp1| <= 4
}

