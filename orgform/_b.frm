

BackwardBrot {; formula, Jim Muth
  z=c=pixel:
  z=p1^(z^p2)+(p3*c)
  |z| <16  
  ;SOURCE: 98msg.frm
}


bail2 {; 5-3-98 kathy roth
       ; variation of gravijul by Mark Christenson
  z = pixel, a=real(p3), b=imag(p3):
  w = fn1(z)
  z = fn3(p1/fn2(w*w)) + p2
  real(z)^ real(z)/ a + imag(z) * imag(z)/b < 1
  ;SOURCE: 98msg.frm
}


bail6 {; 5-3-98 kathy roth
       ; variation of gravijul by Mark Christenson
  z = pixel, a=real(p3), b=imag(p3):
  w = fn1(z)
  z = fn3(p1/fn2(w*w)) + p2
  fn4(real(z))/ a + fn4(imag(z))/b < 1
  ;SOURCE: 98msg.frm
}


bail7 {; 5-3-98 kathy roth
       ; variation of gravijul by Mark Christenson
  z = pixel, a=real(p3), b=imag(p3):
  z = fn1(p1/fn2((1/z)*(1/z))) + p2
  fn3(real(z))/ a + fn3(imag(z))/b < 1
  ;SOURCE: 98msg.frm
}


bail_out01 (xAxis) {
  z = c = pixel:
  z = z^2 + c
  |fn1(z)| <= p1
  ;SOURCE: bailout.frm
}


bail_out02 (xAxis) {
  z = c = pixel:
  z = z^2 + c
  |fn1(real(z))| <= p1
  ;SOURCE: bailout.frm
}


bail_out03 (xAxis) {; xAxis won't do for fn=exp. 
                    ; Use bail_out03exp instead
  z = c = pixel:
  z = z^2 + c
  |fn1(imag(z))| <= p1
  ;SOURCE: bailout.frm
}


bail_out03exp {
  z = c = pixel:
  z = z^2 + c
  |exp(imag(z))| <= p1
  ;SOURCE: bailout.frm
}


bail_out03i (xAxis) {; use p1 slightly less than 1 in sin and cos
  z = c = pixel, i = (0.0, 1.0):
  z = z^2 + c
  |fn1(imag(z)*i)| <= p1
  ;SOURCE: bailout.frm
}


bail_out04 (xAxis) {
  z = c = pixel:
  z = z^2 + c
  real(fn1(z)) <= p1
  ;SOURCE: bailout.frm
}


bail_out05 {
  z = c = pixel:
  z = z^2 + c
  imag(fn1(z)) <= p1
  ;SOURCE: bailout.frm
}


bail_out06 (xAxis) {
  z = c = pixel:
  z = z^2 + c
  |fn1(|z|)| <= p1
  ;SOURCE: bailout.frm
}


bail_out07 {
  z = c = pixel:
  z = z^2 + c
  |fn1(imag(z))| <= p1 && |fn1(real(z))| <= p1
  ;SOURCE: bailout.frm
}


bail_out08 {
  z = c = pixel:
  z = z^2 + c
  |fn1(real(z))| <= p1  || |fn1(imag(z))| <= p1
  ;SOURCE: bailout.frm
}


bailout-A {; Hard coded bailout value
           ; p1 = parameter (default 0,0)
  z = pixel, c = fn1(pixel):
  z = fn2(z*z) + c + p1
  |z| < 4
  ;SOURCE: frmtutor.frm
}


bailout-B {; Variable default -- additive
           ; p1 = parameter (default 0,0)
           ; p2 = bailout adjustment value (default 0,0)
  test = (4 + p2)
  z = pixel, c = fn1(pixel):
  z = fn2(z*z) + c + p1
  |z| < test
  ;SOURCE: frmtutor.frm
}


bailout-C {; Variable default -- conditional logic
           ; This formula requires floating-point
           ; p1 = parameter (default 0,0)
           ; p2 = bailout   (default 4,0)
   ; The following line sets test = 4 if real(p2) = 0, else test = p2
  test = (4 * (p2 <= 0)) + (p2 * (0 < p2))
  z = pixel, c = fn1(pixel):
  z = fn2(z*z) + c + p1
  |z| < test
  ;SOURCE: frmtutor.frm
}


Bali {; The difference of two squares
  z=x=1/pixel, c= fn1 (z):
  z = (x+c) * (x-c)
  x=fn2(z)
  |z| <=3
  ;SOURCE: fractint.frm
}


banner1 {; Giuseppe Zito
  z = pixel
  c3 = -0.500242
  c5 = -0.471509
  c7 =  0.208763
  c22 =  -0.750641
  c24 =  0.859494
  d2 = 0.592010
  d4 =  -0.691070
  d14 =  -0.015975
  d15 =   0.003455
  d23 =  0.937222:
  x = real(z), y = imag(z)
  s1 = (x*x)  - c3
  s2 = (c5*s1) + c7 + y
  newx = ((c22 * s2 *x)/c24 +x)/x
  t1 = ((x*x*d2)/d4 +x)*d14 -d15 + x
  t2 = (((x + x)*x)/t1)*d23
  newy = x * t2
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4
  ;SOURCE: zg.frm
}


Barnsley_PHC { ;;formula adapted by Vincent Damion Presogna 
  z = c = pixel: 
  z1 = z - 1
  z2 = z + 1
  rz = real(z)
  t1 = ((z1) * p1) * ((rz) >= 0)   ;; t1 & t2 => Barnsleyj1
  t2 = ((z2) * p1) * ((rz) <  0)
  t3 = ((z1) * c + p2) * ((rz) >= 0) ;; t3 & t4 => Barnsleym1
  t4 = ((z2) * c + p2) * ((rz) < 0)
  z = ((t1 + t2) * (whitesq == 1)) + ((t3 + t4) * (whitesq == 0)) 
  |z| < 4
  ;SOURCE: beck.frm
}


Barnsley_PHC_2 {; formula adapted by Vincent Damion Presogna 
  z = c = pixel: 
  z1 = z - 1
  z2 = z + 1
  rz = real(z)
  t1 = ((z1) * p1) * ((rz) >= 0)   ;; t1 & t2 => Barnsleyj1
  t2 = ((z2) * p1) * ((rz) <  0)
  t3 = ((z1) * c + p2) * ((rz) >= 0) ;; t3 & t4 => Barnsleym1
  t4 = ((z2) * c + p2) * ((rz) < 0)
  z = ((t1 + t2) * (whitesq == 1)) + ((t3 + t4) * (whitesq == 0)) 
  |z| < 4
  ;SOURCE: 96msg.frm
}


Barnsley_PHC_3 {; formula adapted by Vincent Damion Presogna
  z = c = pixel
  c1 = p1*whitesq + c*(whitesq==0) , c2 = p2*(whitesq==0) :
   z1 = z - (z>=0) + (z<0)
   z = z1*c1 + c2
    |z| < 4
  ;SOURCE: 96msg.frm
}


barnsleyj1 {; Chuck Ebbert.                        added 12 Jan 1993
   ; p1 = Parameter (default (0.6,1.1) ), real(p2) = bailout (default 4)
  z = pixel   ; next, set c=default if p1=0, else c=p1
  c = ((0.6,1.1) * (|p1|<=0) + p1 )
   ; The following line sets t = 4 if real(p2) <= 0; else t = p2.
  t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
   ; Use the "<=" or "<" operators when doing if-then-else.
   ; Put the compare operation after the multiply for speed gain.
   ; Extra parens are needed to get the correct results.
  z = (((z-1) * (0<=z) + (z+1) * (real(z)<0) ) * c )
  |z| <= t  ; use t for the bailout test
  ;SOURCE: builtn2.frm
}


barnsleyj2 {; Chuck Ebbert.                        added 12 Jan 1993
   ; p1 = Parameter (default (0.6,1.1) ), real(p2) = bailout (default 4)
  z = pixel   ; next, set c=default if p1=0, else c=p1
  c = ((0.6,1.1) * (|p1|<=0) + p1 ),
   ; The following line sets t = 4 if real(p2) <= 0; else t = p2.
  t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  t2 = real(z) * imag(c) + real(c) * imag(z)
  z = (((z-1) * (0<=t2) + (z+1) * (real(t2)<0) ) * c )
  |z| <= t  ; use t for the bailout test
  ;SOURCE: builtn2.frm
}


barnsleyj3 {; Chuck Ebbert.                        added 14 Jan 1993
   ; p1 = Parameter c, real(p2) = bailout (default 4)
  z = pixel,  ; next set c=(.1,.36) if p1=0
  c = ((0.1,0.36) * (|p1|<=0) + p1 )
   ; The following line sets t = 4 if real(p2) <= 0; else t = p2.
  t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = (z*z-1 + ( c*real(z) * (real(z)<=0) ) )
  |z| <= t  ; use t for the bailout test
  ;SOURCE: builtn2.frm
}


barnsleym1 {; Chuck Ebbert.                      changed 12 Jan 1993
   ; p1 = initial perturbation of z, real(p2) = bailout (default 4)
  z = pixel + p1, c = pixel
   ; The following line sets t = 4 if real(p2) <= 0; else t = p2.
  t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
   ; Use the "<=" or "<" operators when doing if-then-else.
   ; Put the compare operation after the multiply for speed gain.
   ; Extra parens are needed to get the correct results.
  z = (((z-1) * (0<=z) + (z+1) * (real(z)<0) ) * c )
  |z| <= t  ; use t for the bailout test
  ;SOURCE: builtn2.frm
}


barnsleym2 {; Chuck Ebbert.                       added 12 Jan 1993
   ; p1 = initial perturbation of z, real(p2) = bailout (default 4)
  z = pixel + p1, c = pixel
   ; The following line sets t = 4 if real(p2) <= 0; else t = p2.
  t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  t2 = real(z) * imag(c) + real(c) * imag(z)
  z = (((z-1) * (0<=t2) + (z+1) * (real(t2)<0) ) * c )
  |z| <= t  ; use t for the bailout test
  ;SOURCE: builtn2.frm
}


barnsleym3 {; Chuck Ebbert.                        added 14 Jan 1993
   ; p1 = initial perturbation of z, real(p2) = bailout (default 4)
  z = pixel + p1, c = pixel,
   ; The following line sets t = 4 if real(p2) <= 0; else t = p2.
  t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = (z*z-1 + ( c*real(z) * (real(z)<=0) ) )
  |z| <= t  ; use t for the bailout test
  ;SOURCE: builtn2.frm
}


BasicNewton {; Jim Muth
             ; REDUNDANT -- STILL NEEDS WORK
  a=real(p1), b=imag(p1), c=real(p2)
  d=imag(p2), k=real(p3), f=imag(p3)
  z=pixel:
  zx=z^b
  zy=c*(zx*z)
  z=(d*zy+a)/(k*zx)
  f<=|zy-a|
  ;SOURCE: 97msg.frm
}


Bat { 
  z = pixel:
  z = fn1 (log(sin(z))) 
  |z| <= 42
  ;SOURCE: hubert.frm
}


Beck {
  z = pixel, sp = sin(sqr(pixel)): 
  r = z * (fn1(1/z) /sp) + p1  
  q = fn2(z) * sp + p2 
  z = r * (whitesq == 1) + q * (whitesq == 0)
  |z| <= 4
  ;SOURCE: beck.frm
}


bee {; Giuseppe Zito
  z = pixel
  c1 = 0.25922701
  c2 = -0.321228
  c4 = -0.57989001
  c6 = -0.209068
  : 
  x = real(z), y = imag(z)
  s0 = x
  s0 = s0 *c1
  s0 = s0 *c2
  s0 = s0 *x
  s0 = s0 *c4
  s0 = s0 +c6
  s0 = s0 *x
  s0 = s0 /y
  s0 = s0 +y
  newx = s0 
  s0 = x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


BEES {; Ray Girvan, June 1997
      ; Newton variant giving biomorphs
      ; z -> sin(z)-k before Newton iteration
      ; use floating point, periodicity=no
      ; and smooth colour palette
      ; p1 controls twist of spirals
      ; p2 controls number of lobes
      ; try p1=0.1, p2=3 for 'bees'
      ; p1=0.1, p2=6 for 'scorpions'
  z=pixel:
  z1=sin(z)-p1
  z2=z1^p2-1        ; any function f(z)
  z3=p2*(z1^(p2-1)) ; its derivative f'(z)
  z=z-(z2/z3)
  |z2| >= 0.00001
  ;SOURCE: 97msg.frm
}


BEJ {
  z = c = pixel:
  x = (1.5+z^p1)^(1/p1)
  z = z*(1+y)/(1-x) + p2
  z=fn1(z)+c
  z=fn2(z)-c 
  |z| <4
  ;SOURCE: bej's.frm
}


BEJ-0001 {; Brian E. Jones 102702,2213@Compuserve.com
  z=c=pixel*.05:
  z=sinh(z+z)*pi
  z=z*z+c
  |z|<4
  ;SOURCE: bej0014.frm
}


BEJ-0008 {; Brian E. Jones 102702,2213@Compuserve.com
  z=c=pixel*.275:
  z=sinh((z+z)*(z+z)*(z+z))*pi
  z=z*z+c
  |z|<4
  ;SOURCE: bej0014.frm
}


BEJ-0010 {; Brian E. Jones 102702,2213@Compuserve.com
  z=c=pixel*.75:
  z=sin(sqr(z+z))*(sin(z+z)*.5)*pi
  z=z*z+c
  |z|<4
  ;SOURCE: bej0014.frm
}


BEJ-0013 {; Brian E. Jones 102702,2213@Compuserve.com
  z=c=pixel/sqr(pixel)*0.020:
  z=sinh(z+z)*pi
  z=z*z+c
  |z|<4
  ;SOURCE: bej0014.frm
}


BEJ-0015 {; Brian E. Jones 102702,2213@Compuserve.com
  z=c=pixel*sqrt(tan(pixel*3))*0.020:
  z=sinh(z+z)*pi
  z=z*z+c
  |z|<4
  ;SOURCE: bej0014.frm
}


BEJ-0018 {; Brian E. Jones 102702,2213@Compuserve.com
          ; Typo corrected by George Martin, 5/4/98
          ; First line was
          ; z=c=pixel*sqrt(tanh((pixel*1)^pixel/.1.176930596))*0.05:
          ; C scan function reads .1.17 as .1)
  z=c=pixel*sqrt(tanh((pixel*1)^pixel/.1))*0.05:
  z=sinh(z+z)*pi
  z=z*z+c
  |z|<4
  ;SOURCE: bej0014.frm
}


BEJ-0021 {; Brian E. Jones 102702,2213@Compuserve.com
  z=c=pixel*sqrt(tanh(cosh((pixel*(pi^pixel))^pixel/4.996003610813)))*0.05:
  z=sinh(z+z)*pi
  z=z*z+c
  |z|<4
  ;SOURCE: bej0014.frm
}


BEJ-0022 {; Brian E. Jones 102702,2213@Compuserve.com
  z=c=pixel/(1*tan(1.176930596/pixel))^sqr(pixel*sin(0.135/pixel)):
  z=sinh(z+z)*pi
  z=z*z+c
  |z|<4
  ;SOURCE: bej0014.frm
}


BEJ-0024 {; Brian E. Jones 102702,2213@Compuserve.com
  z=c=pixel*.009:
  z=sinh(z+z)*pi
  z=z*z+c
  |z|<4
  ;SOURCE: bej0014.frm
}


BEJ-0036 {; Brian E. Jones 102702,2213@Compuserve.com
  z=c=pixel*.05:
  z=sinh(z^p1+z^p2)*pi
  z=z*z+c
  |sinh(z^p1+z^p2)*pi|<4
  ;SOURCE: bej0014.frm
}


BEJ-0041 {; Brian E. Jones 102702,2213@Compuserve.com
  z=c=pixel*.05:
  z=sinh((z*z)+(c*c))*pi
  z=z*z+c
  |z|<4
  ;SOURCE: bej0014.frm
}


BEJ-0041-a {; Brian E. Jones 102702,2213@Compuserve.com
  z=c=pixel*.05:
  z=sinh((z*z)+(c*c*((c*z)*pixel)))*pi
  z=z*z+c
  |z|<4
  ;SOURCE: bej0014.frm
}


BEJ-0043-b {; Brian E. Jones 102702,2213@Compuserve.com
  z=c=pixel*.05:
  z=sinh(z+z)*pi*(c*c+z)
  z=z*z+c
  |z|<4
  ;SOURCE: bej0014.frm
}


BEJ-0043-e {; Brian E. Jones 102702,2213@Compuserve.com
  z=c=pixel*.05:
  z=sinh(z*z)*fn1(c*c)+(z*pi)
  z=z*z+c
  |z|<4
  ;SOURCE: bej0014.frm
}


BEJ-0043-f {; Brian E. Jones 102702,2213@Compuserve.com
  z=c=pixel*.05:
  z=sinh(z*z)*fn1((c*c)*(z*c))+(z*pi)
  z=z*z+c
  |z|<4
  ;SOURCE: bej0014.frm
}


BEJ-0043-i {; Brian E. Jones 102702,2213@Compuserve.com
  z=c=pixel*.5:
  z=sinh(z*z)*log((c*c)*(z*c^sqrt(3*z)))+(z*pi)
  z=z*z+c
  |z|<4
  ;SOURCE: bej0014.frm
}


BEJ-0045 {; Brian E. Jones 102702,2213@Compuserve.com
  z=c=pixel*.05:
  z=sinh((z*z)*(z*z)+(c*c))*pi
  z=z*z+c
  |z|<4
  ;SOURCE: bej0014.frm
}


BEJ-N113 {
  z=1/pixel, c=z=conj(sin(z*z)):
  z=z*z+c
  z2=z*z
  z4=z2*z2
  z=fn1(z*z*z*z)
  |z|<4
  ;SOURCE: msg-1.frm
}


BEJ-N141 {
  z=pixel/1.1357, c=sqr(abs(pixel)):
  z=fn2(z)*pixel+fn1(c)
  z=z*z-c
  |0.0001|<z
  ;SOURCE: 96msg.frm
}


BEJ-N187 {
  z=c=pixel, q=sin(conj(0.1,1.0)):
  z1=fn1(z/sqrt(pixel+1))/q
  z=fn1(z)/imag(p1)*fn2(z)/real(p1)+c
  |real(z)|<4
  ;SOURCE: bej0015.frm
}


BEJ-N187a {; Revised by G. Martin to eliminate assignment to "pixel"
           ; Double "conj" elimated by G. Martin
  newpixel=sqr(pixel*sqr(pi))
  z=c=newpixel:
  z1=fn1(z/sqrt(newpixel+1))
  z=fn1(z)/imag(p1)*fn2(z)/real(p1)+c
  |real(z)|<4
  ;SOURCE: bej0015.frm
}


BEJ-N188a {; Double "conj" elimated by G. Martin
  z=pixel, c=pixel, zc=pixel*sin(pixel):
  c=sin(imag(zc))/p1
  z=fn1(z/1)*z+c
  |real(z)|<4
  ;SOURCE: bj-phc02.frm
}


BEJ-N197 {
  z=c=pixel, zc=pixel/sqr(pixel*.5):
  c=(zc/p1)/(zc/fn1(z))
  z=z*z+c
  |imag(z)|<4
  ;SOURCE: bj-phc02.frm
}


BEJ-N198 {
  z=c=pixel, zc=pixel/sqr(pixel*.5):
  c=(zc/p1)/(zc/sqrt(fn1(z)))
  z=z*z+c
  |imag(z)|<4
  ;SOURCE: bj-phc02.frm
}


BEJ-N199 {
  z=c=pixel, zc=pixel/sqr(pixel*.5):
  c=((zc/p1)/(zc/sqrt(z))) * (whitesq == 0)\ 
    + ((zc/p2)/(zc/sqrt(abs(z)))) * whitesq
  z=z*z+c
  |imag(z)|<4
  ;SOURCE: bj-phc02.frm
}


BEJ-N202 {
  z=c=pixel, zc=pixel/sqr(pixel*.5):
  c=(zc/p1)/(zc*sqrt(fn1(real(z))))
  z=z*z+c
  |imag(z)|<4
  ;SOURCE: bj-phc02.frm
}


BEJ-N205 {
  z=c=pixel, zc=pixel/sqr(pixel*.5):
  c=(zc/p1)/(zc*sqrt(fn1(real(z))+zc))
  z=z*z+c
  |imag(z)|<4
  ;SOURCE: bj-phc02.frm
}


BEJ-N219 {; Revised by G. Martin to eliminate assignment to "pixel"
  newpixel=fn2(sqrt(pixel/.5)*pixel)
  z=c=newpixel, zc=newpixel/sqr(newpixel*.5):
  c=((zc/p1)/newpixel)/(zc*sqrt(fn1(real(z))))
  z=z*z+c
  |imag(z)|<4
  ;SOURCE: bj-phc02.frm
}


BEJ-N221 {; Revised by G. Martin to eliminate assignment to "pixel" 
  newpixel=sqr(pixel)*-abs(cosxx(pixel))
  z=c=newpixel/p1:
  z=fn1(z)*z+c
  |real(z)|<4
  ;SOURCE: bj-phc02.frm
}


BEJ-N223a {; Revised by G. Martin to eliminate assignment to "pixel" 
  newpixel=sqr(pixel)
  z=newpixel, c=newpixel^z:
  z=fn1(z)*z+((c+newpixel)^c)
  |real(z)/(newpixel*p1)|<4
  ;SOURCE: bj-phc02.frm
}


BEJ-N224 {; Revised by G. Martin to eliminate assignment to "pixel" 
  newpixel=flip(-abs(pixel*(pixel*1)))
  z=newpixel, c=fn1(newpixel^z)*.05:
  z=sinh(z*z)*fn2((c*c)*(z*c))+(z*pi)
  z=z*z+c
  |z|<4
  ;SOURCE: bej0015.frm
}


BEJ-N227 {; Revised by G. Martin to eliminate assignment to "pixel" 
  newpixel=pixel*(fn1(pixel*pi))
  z = newpixel, c = fn1(flip(newpixel^fn3(z))):
  z = fn2(z * z) + c 
  |z| < 16
  ;SOURCE: bej0015.frm
}


BEJ-N229e {; Revised by G. Martin to eliminate assignment to "pixel" 
  newpixel=flip(-abs(pixel*sqrt(pixel*1)))
  z=sqr(newpixel), c=cotan(newpixel^fn1(z)):
  z=fn3(z*z)+(acos(c+newpixel)/fn2(c))
  |z|<4
  ;SOURCE: bej0015.frm
}


BEJ-N229f {; Revised by G. Martin to eliminate assignment to "pixel" 
  newpixel=flip(-abs(pixel*sqrt(pixel*1)))
  z=sqr(newpixel), c=cotan(newpixel^fn1(z)):
  z=fn3(sin(z*z))+(acos(c+newpixel)/fn2(c))
  |z|<4
  ;SOURCE: bej0015.frm
}


BEJ-N229l {; Revised by G. Martin to eliminate assignment to "pixel" 
  newpixel=flip(-abs(pixel*sqrt(pixel*1)))
  z=sqr(atan(sqrt(newpixel))), c=cotan(newpixel^fn1(z)):
  z=fn3(sqr(sin(z*z)))+(acos(c+newpixel)/fn2(c))
  |z|<4
  ;SOURCE: bej0015.frm
}


BEJ-N241 {
  z=c=sin(acos(tan(log(pixel*p1))))* whitesq + (pixel) * (whitesq == 0):
  z=sqr(z)+c
  |real(z)|<16
  ;SOURCE: bej0015.frm
}


BEJ-N262 {
  z=pixel, x=real(z), y=imag(z):
  x=fn1(z*x)
  z=fn2(y+z)
  |z|<16
  ;SOURCE: bej0015.frm
}


BEJ0002 {
  z=c=pixel, x=y=cos(pixel*0.05):
  z=fn1(z*x+y)
  x=fn2(c*y+z)
  |z|<8
  ;SOURCE: bej0015.frm
}


BEJ3 {
  z=c=pixel:
  zsqr=z*z*z*z
  x = (1.5+z^p1)^(1/p1)
  z = z*(1+y)/(1-x) + p2
  z=fn1(z)-c
  z=fn2(z)+c
  |z|<=3
  ;SOURCE: bej's.frm
}


BEJ6 {
  z=(0), c=pixel:
  zsqr^2*z+const
  x=(1-z*p1)/(1*p2)
  z=fn1(z)+c
  z=fn2(z)+c
  |z|<4
  ;SOURCE: bej's.frm
}


BEJ_22 {
  z=pixel:
  z=z*z*z
  z1=z*z*z*z
  z=fn1(z1)+pixel
  |z|<4
  ;SOURCE: bej's.frm
}


BEJ_23 {
  z=pixel:
  z1=(z*z)^(z-z)*z
  z2=(z*z)^(z1+p1)+pixel
  z3=z*z*z*z
  z=fn1(z3)+pixel
  |z|<4
  ;SOURCE: bej's.frm
}


BEJ_25 {
  z=pixel:
  z1=z*z*z
  z2=z+pixel
  z3=z*z+(z*z)
  z=fn1(z3)+pixel
  |z|<=4
  ;SOURCE: bej's.frm
}


BEJ_M9 {; Revised for Fractint v. 20 by George Martin
        ; first line was
        ; fn1(z)=pixel:
  z=pixel:
  z=z*z+c
  z=z*z
  z=fn1(z*z+c)
  z=fn2(fn3(z+z*c))
  |z*z+c|<4
  ;SOURCE: bejones.frm
}


BEJ_N13 {; Revised for Fractint v. 20 by George Martin
         ; Second line was
         ; z*z*z=z^sqr(5+1/p1)*(-1+3/p2)
  z=pixel, c=atan(pixel):
  z=z^sqr(5+1/p1)*(-1+3/p2)
  zsqr=z*z
  x = (1.5+z^p1)^(1/p1)
  z = z*(1+y)/(1-x) + p2
  z=fn1(z)+c
  z=fn2(z)-c
  |z| <4
  ;SOURCE: bej's.frm
}


BEJ_N24 {
  z=pixel, c=pixel:
  z1=z*z
  z2=(z*p1)^(z+p2)
  z=fn1(z2)+pixel
  |z|<4
  ;SOURCE: bej's.frm
}


BEJ_N28C_B {; Revised for Fractint v. 20 by George Martin
            ; Fourth line began
            ; z3=z^(zsqr=z*z)
            ; Also, sqrz was defined and never used
            ; fn1 used as a variable
  z=pixel:
  z1=z*fn1(z*fn2(z))
  z2=sqr(z)/fn1(z)
  z3=z^(z*z), zsin=(c+p1^1.5)*(c+p1/1.2)
  z=(z*1)/(c+p2), z=fn1(z), z=fn2(z)
  |z|<4
  ;SOURCE: bej's.frm
}


BEJ_N39 {
  z=c=pixel, maria=log(z):
  z=fn1(z)
  z=(z*z+c)+(maria/p1)
  |z|<4
  ;SOURCE: bej-mari.frm
}


BEJ_N4 {
  z=c=pixel:
  zsqr=z*z
  zsin=(c+p1^1.5)*(c+p1/1.2)
  z=(z*1)/(c+p2)
  z=fn1(z)
  z=fn2(z)
  |z|<4
  ;SOURCE: bej's.frm
}


BEJ_N41 {
  z=c=pixel, maria=sqr(z)+log(z):
  z=fn1(z)+p1/(maria+pixel)
  z=(z*z+c)
  |z|<4
  ;SOURCE: bej-mari.frm
}


BEJ_N90f {; Revised for version 20.0 by George Martin
          ; Original formula used undefined variable "atan"
  z=c=pixel, limit=atan(p1):
  test1=(limit>0), test2=srand(0)
  z=(z*z+c)/limit+(fn1(1/p1)+c)
  c=(-0.7456,-0.0186)
  c=sin(conj(-0.81256,-0.1295))
  |z|<4
  ;SOURCE: sg-bc-bj.frm
}


BEJ_N90j {; Revised for version 20.0 by George Martin
          ; Original formula used undefined variable "atan"
  z=c=pixel, limit=atan(p1):
  test1=(limit<=0)+(1*p1)
  z=z*z*z
  z=fn1((z)*z+c)/(test1^limit)
  c=(-0.7456,-0.0186)+(z*z+c)
  c=sin(conj(-0.81256,-0.1295))
  |fn1(z+pixel)|<4
  ;SOURCE: sg-bc-bj.frm
}


BEJ_N90j-1 (YAXIS) {; Revised for version 20.0 by George Martin
                    ; Original formula used undefined variable "atan"
  z=c=pixel, limit=atan(p1):
  test1=(limit<=0)+(1*p1)
  z=z*z*z
  z=fn1((z)*z+c)/(test1^limit)
  c=(-0.7456,-0.0186)+(z*z+c)
  c=sin(conj(-0.81256,-0.1295))
  |fn1(z+pixel)|<4
  ;SOURCE: sg-bc-bj.frm
}


BEJ_New1 {
  z=pixel, root=1:
  z=z*z/p1
  z2 = z*z
  z3 = (z*z) - pixel
  z4 = z3 * z
  z = (3 * z4 + Root) / (4 * z3)
  z=fn1(z)+c
  z=fn2(z)+c
  |z|<4
  ;SOURCE: bej's.frm
}


BESSEL-1 {
   ; (c) 1993 by
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ; This formula, and BESSEL-2 to BESSEL-4 are based on 
   ; formulas taken from the article on bessels from the
   ; Encyclopedia of Science.
  c = z = pixel:
  z = sin(z) / z * pixel
  |z| <= 100
  ;SOURCE: bessels.frm
}


BESSEL-2 {
   ; (c) 1993 by
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  c = z = pixel:
  z = cos(z) / z + pixel
  |z| <= 100
  ;SOURCE: bessels.frm
}


BESSEL-3 {
   ; (c) 1993 by
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  c = z = pixel:
  z = -cos(z) / z + sin(z) / (z * z) + pixel
  |z| <= 100
  ;SOURCE: bessels.frm
}


BESSEL-4 {
   ; (c) 1993 by
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  c = z = pixel:
  z = -sin(z) / z - cos(z) / (z * z) + pixel
  |z| <= 100
  ;SOURCE: bessels.frm
}


Beta02-01 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Clifford A. Pickover
           ;
           ; Dynamic (Euler method)
           ; Beta Integral
           ; Beta[0] = 2sinh(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  Fx=((x+2)*x+(2*ex*ex-2))/(x*x*x*ex)
  Fy=((y+2)*y+(2*ey*ey-2))/(y*y*y*ey)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Beta02-02 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Clifford A. Pickover:
           ; Dynamic
           ;
           ; Beta Integral
           ; Beta[0] = 2sinh(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  bailout=p1+4, z=pixel:
  ez=exp(z)
  z=((z+2)*z+(2*ez*ez-2))/(z*z*z*ez)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Beta02-03 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Rob Dem Braseem:
           ; Escape  (Julia)
           ;
           ; Beta Integral
           ; Beta[0] = 2sinh(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  const=p1, z=pixel:
  ez=exp(z)
  z=const+(((z+2)*z+(2*ez*ez-2))/(z*z*z*ez))
  |z|<100
  ;SOURCE: chby3.frm
}


Beta02-04 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Rob Dem Braseem:
           ; Escape  (Mandelbrot)
           ;
           ; Beta Integral
           ; Beta[0] = 2sinh(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  const=pixel, z=p1:
  ez=exp(z)
  z=const+(((z+2)*z+(2*ez*ez-2))/(z*z*z*ez))
  |z|<100
  ;SOURCE: chby4.frm
}


Beta02-05 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Chris Green:
           ; Newton Method
           ;
           ; Beta Integral
           ; Beta[0] = 2sinh(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  e1=ez*ez
  e2=2*e1-2
  e3=ez*z*z*z
  f=(((z+2)*z+e2)/e3)
  fd=(((-z-3)*z+e2)*z-6*e1+6)/(e3*z)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Beta02-06 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Chris Green:
           ; Halley Method
           ;
           ; Beta Integral
           ; Beta[0] = 2sinh(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=2*e1-2
  e3=ez*z2*z
  f=(((z+2)*z+e2)/e3)
  fd=(((-z-3)*z+e2)*z-6*e1+6)/(e3*z)
  fdd=((((-3*z-20)*z+10*e1-36)*z-12*e1)*z-48*e1+48)/(e3*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Beta02-07 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Bradley Beacham
           ; Cubic Method
           ;
           ; Beta Integral
           ; Beta[0] = 2sinh(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  e1=ez*ez
  e2=2*e1-2
  e3=ez*z*z*z
  f=(((z+2)*z+e2)/e3)
  fd=(((-z-3)*z+e2)*z-6*e1+6)/(e3*z)
  oz=z
  w=z-f/fd
  ew=exp(w)
  fw=(((w+2)*w+2*ew*ew-2)/(ew*w*w*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Beta02-08 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Clifford A. Pickover:
           ; Dynamic (modified Euler method)
           ;
           ; Beta Integral
           ; Beta[0] = 2sinh(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  Tx=sin(((x+2)*x+(2*ex*ex-2))/(x*x*x*ex))
  Ty=sin(((y+2)*y+(2*ey*ey-2))/(y*y*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Beta02-09 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Clifford A. Pickover:
           ; Dynamic (modified Euler Method)
           ;
           ; Beta Integral
           ; Beta[0] = 2sinh(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  Tx=fn1(((x+2)*x+(2*ex*ex-2))/(x*x*x*ex))
  Ty=fn1(((y+2)*y+(2*ey*ey-2))/(y*y*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Beta02-10 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Mike Wareman:
           ; Secant Method
           ;
           ; Beta Integral
           ; Beta[0] = 2sinh(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  ep=exp(p1)
  fz=(((p1+2)*p1+(2*ep*ep-2))/(p1*p1*p1*ep)):
  ez=exp(z)
  zt=z
  foz=fz
  fz=(((z+2)*z+(2*ez*ez-2))/(z*z*z*ez))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Beta02-11 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Rob Dem Braseem:
           ; Escape  (Julia)
           ;
           ; Beta Integral
           ; Beta[0] = 2sinh(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  const=p1, z=pixel:
  ez=exp(z)
  z=const*(((z+2)*z+(2*ez*ez-2))/(z*z*z*ez))
  |z|<100
  ;SOURCE: chby11.frm
}


Beta02-12 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Rob Dem Braseem:
           ; Escape  (Mandelbrot)
           ;
           ; Beta Integral
           ; Beta[0] = 2sinh(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  const=pixel, z=p1:
  ez=exp(z)
  z=const*(((z+2)*z+(2*ez*ez-2))/(z*z*z*ez))
  |z|<100
  ;SOURCE: chby12.frm
}


Beta02-13 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Chris Green:
           ; Halley Method with weird bailout test
           ;
           ; Beta Integral
           ; Beta[0] = 2sinh(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=2*e1-2
  e3=ez*z2*z
  f=(((z+2)*z+e2)/e3)
  fd=(((-z-3)*z+e2)*z-6*e1+6)/(e3*z)
  fdd=((((-3*z-20)*z+10*e1-36)*z-12*e1)*z-48*e1+48)/(e3*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Beta02-14 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Bradley Beacham
           ; Cubic Method with weird bailout test
           ;
           ; Beta Integral
           ; Beta[0] = 2sinh(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  e1=ez*ez
  e2=2*e1-2
  e3=ez*z*z*z
  f=(((z+2)*z+e2)/e3)
  fd=(((-z-3)*z+e2)*z-6*e1+6)/(e3*z)
  oz=z
  w=z-f/fd
  ew=exp(w)
  fw=(((w+2)*w+2*ew*ew-2)/(ew*w*w*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Beta02-15 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Chris Green:
           ; Newton Method with weird bailout test
           ;
           ; Beta Integral
           ; Beta[0] = 2sinh(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  e1=ez*ez
  e2=2*e1-2
  e3=ez*z*z*z
  f=(((z+2)*z+e2)/e3)
  fd=(((-z-3)*z+e2)*z-6*e1+6)/(e3*z)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Beta02-16 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Mike Wareman:
           ; Secant Method with weird bailout test
           ;
           ; Beta Integral
           ; Beta[0] = 2sinh(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  ep=exp(p1)
  fz=(((p1+2)*p1+(2*ep*ep-2))/(p1*p1*p1*ep)):
  ez=exp(z)
  zt=z
  foz=fz
  fz=(((z+2)*z+(2*ez*ez-2))/(z*z*z*ez))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Beta02-19 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Clifford A. Pickover:
           ; Dynamic (Implicit Euler method)
           ;
           ; Beta Integral
           ; Beta[0] = 2sinh(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  y=y+t*(((x+2)*x+(2*ex*ex-2))/(x*x*x*ex))
  x=x-t*(((y+2)*y+(2*ey*ey-2))/(y*y*y*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Beta02-20 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Clifford A. Pickover:
           ; Dynamic (modified implicit Euler method)
           ;
           ; Beta Integral
           ; Beta[0] = 2sinh(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  y=y+t*sin(((x+2)*x+(2*ex*ex-2))/(x*x*x*ex))
  x=x-t*sin(((y+2)*y+(2*ey*ey-2))/(y*y*y*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Beta02-21 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Clifford A. Pickover:
           ; Dynamic (modified implicit Euler Method)
           ;
           ; Beta Integral
           ; Beta[0] = 2fn1h(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  y=y+t*fn1(((x+2)*x+(2*ex*ex-2))/(x*x*x*ex))
  x=x-t*fn1(((y+2)*y+(2*ey*ey-2))/(y*y*y*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Beta02-22 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Clifford A. Pickover:
           ; Dynamic (modified Euler method)
           ;
           ; Beta Integral
           ; Beta[0] = 2sinh(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  Tx=fn1(((x+2)*x+(2*ex*ex-2))/(x*x*x*ex))
  Ty=fn2(((y+2)*y+(2*ey*ey-2))/(y*y*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Beta02-23 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Clifford A. Pickover:
           ; Dynamic (modified Euler method)
           ;
           ; Beta Integral
           ; Beta[0] = 2sinh(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  Tx=fn1(((x+2)*x+(2*ex*ex-2))/(x*x*x*ex))
  Ty=fn2(((y+2)*y+(2*ey*ey-2))/(y*y*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Beta02-24 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Clifford A. Pickover:
           ; Dynamic (modified implicit Euler Method)
           ;
           ; Beta Integral
           ; Beta[0] = 2fn1h(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  y=y+t*fn1(((x+2)*x+(2*ex*ex-2))/(x*x*x*ex))
  x=x-t*fn2(((y+2)*y+(2*ey*ey-2))/(y*y*y*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Beta02-25 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Clifford A. Pickover:
           ; Dynamic (modified implicit Euler Method)
           ;
           ; Beta Integral
           ; Beta[0] = 2fn1h(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  y=y+t*fn1(((x+2)*x+(2*ex*ex-2))/(x*x*x*ex))
  x=x-t*fn2(((y+2)*y+(2*ey*ey-2))/(y*y*y*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Beta02-26 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Kathy Roth:
           ; Dynamic (modified implicit Euler Method, gravitated)
           ;
           ; Beta Integral
           ; Beta[0] = 2fn1h(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  Tx=fn1(((x+2)*x+(2*ex*ex-2))/(x*x*x*ex))
  Ty=fn1(((y+2)*y+(2*ey*ey-2))/(y*y*y*ey))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Beta02-27 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Kathy Roth:
           ; Dynamic (modified implicit Euler Method, popped)
           ;
           ; Beta Integral
           ; Beta[0] = 2fn1h(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  ex=exp(x), ey=exp(y)
  Tx=fn1(((x+2)*x+(2*ex*ex-2))/(x*x*x*ex))
  Ty=fn1(((y+2)*y+(2*ey*ey-2))/(y*y*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Beta02-28 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Kathy Roth:
           ; Dynamic (modified implicit Euler Method, popped)
           ;
           ; Beta Integral
           ; Beta[0] = 2fn1h(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  ex=exp(x), ey=exp(y)
  Tx=fn1(((x+2)*x+(2*ex*ex-2))/(x*x*x*ex))
  Ty=fn1(((y+2)*y+(2*ey*ey-2))/(y*y*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Beta02-29 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types:
           ; Inspired by Clifford A. Pickover:
           ; Dynamic (modified implicit Euler method, Sylvie Gallet test)
           ;
           ; Beta Integral
           ; Beta[0] = 2fn1h(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  Tx=fn1(((x+2)*x+(2*ex*ex-2))/(x*x*x*ex))
  Ty=fn1(((y+2)*y+(2*ey*ey-2))/(y*y*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Beta02-30 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; Chebyshev Types
           ; Inspired by Ray Parracho:
           ; Regula-Falsi Method
           ;
           ; Beta Integral
           ; Beta[0] = 2sinh(z)/z = (exp(z)-exp(-z))/z
           ; Beta[n+1] = (exp(-z)(-1)^(n+1)-(n+1)Beta[n])/z
           ;
           ; = Beta[2] = (exp(-z)-2Beta[1])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ex=exp(x0), ey=exp(x1)
  Fx0=((x0+2)*x0+(2*ex*ex-2))/(x0*x0*x0*ex)
  Fx1=((x1+2)*x1+(2*ey*ey-2))/(x1*x1*x1*ey)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Beta03-01 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Fx=-(((x+3)*x+6)*x+(6*ex*ex-6))/(x2*y2*ex)
  Fy=-(((y+3)*y+6)*y+(6*ey*ey-6))/(y2*y2*ey)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Beta03-02 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  bailout=p1+4, z=pixel:
  ez=exp(z)
  z2=z*z
  z=-(((z+3)*z+6)*z+(6*ez*ez-6))/(z2*z2*ez)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Beta03-03 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  const=p1, z=pixel:
  ez=exp(z)
  z2=z*z
  z=const+(-(((z+3)*z+6)*z+(6*ez*ez-6))/(z2*z2*ez))
  |z|<100
  ;SOURCE: chby3.frm
}


Beta03-04 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  const=pixel, z=p1:
  ez=exp(z)
  z2=z*z
  z=const+(-(((z+3)*z+6)*z+(6*ez*ez-6))/(z2*z2*ez))
  |z|<100
  ;SOURCE: chby4.frm
}


Beta03-05 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=6*e1-6
  e3=ez*z2*z2
  f=(-(((z+3)*z+6)*z+e2)/e3)
  fd=((((z+4)*z+6)*z-e2)*z+24*e1+24)/(e3*z)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Beta03-06 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=6*e1-6
  e3=ez*z2*z2
  f=(-(((z+3)*z+6)*z+e2)/e3)
  fd=((((z+4)*z+6)*z-e2)*z+24*e1+24)/(e3*z)
  fdd=(((((z+13)*z+38)*z-18*e1+48)*z+36*e1+60)*z+120*e1+120)/(e3*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Beta03-07 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=6*e1-6
  e3=ez*z2*z2
  f=(-(((z+3)*z+6)*z+e2)/e3)
  fd=((((z+4)*z+6)*z-e2)*z+24*e1+24)/(e3*z)
  oz=z
  w=z-f/fd
  w2=w*w
  ew=exp(w)
  fw=(-(((w+3)*w+6)*w+6*ew*ew-6)/(ew*w2*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Beta03-08 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
 t=p1, bailout=4, z=pixel:  
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=sin(-(((x+3)*x+6)*x+(6*ex*ex-6))/(x2*y2*ex))
  Ty=sin(-(((y+3)*y+6)*y+(6*ey*ey-6))/(y2*y2*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Beta03-09 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=fn1(-(((x+3)*x+6)*x+(6*ex*ex-6))/(x2*y2*ex))
  Ty=fn1(-(((y+3)*y+6)*y+(6*ey*ey-6))/(y2*y2*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Beta03-10 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  ep=exp(p1), pp2=p1*p1
  fz=(-(((p1+3)*p1+6)*p1+(6*ep*ep-6))/(pp2*pp2*ep)):
  ez=exp(z)
  z2=z*z
  zt=z
  foz=fz
  fz=(-(((z+3)*z+6)*z+(6*ez*ez-6))/(z2*z2*ez))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Beta03-11 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  const=p1, z=pixel:
  ez=exp(z)
  z2=z*z
  z=const*(-(((z+3)*z+6)*z+(6*ez*ez-6))/(z2*z2*ez))
  |z|<100
  ;SOURCE: chby11.frm
}


Beta03-12 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  const=pixel, z=p1:
  ez=exp(z)
  z2=z*z
  z=const*(-(((z+3)*z+6)*z+(6*ez*ez-6))/(z2*z2*ez))
  |z|<100
  ;SOURCE: chby12.frm
}


Beta03-13 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=6*e1-6
  e3=ez*z2*z2
  f=(-(((z+3)*z+6)*z+e2)/e3)
  fd=((((z+4)*z+6)*z-e2)*z+24*e1+24)/(e3*z)
  fdd=(((((z+13)*z+38)*z-18*e1+48)*z+36*e1+60)*z+120*e1+120)/(e3*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Beta03-14 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=6*e1-6
  e3=ez*z2*z2
  f=(-(((z+3)*z+6)*z+e2)/e3)
  fd=((((z+4)*z+6)*z-e2)*z+24*e1+24)/(e3*z)
  oz=z
  w=z-f/fd
  w2=w*w
  ew=exp(w)
  fw=(-(((w+3)*w+6)*w+6*ew*ew-6)/(ew*w2*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Beta03-15 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=6*e1-6
  e3=ez*z2*z2
  f=(-(((z+3)*z+6)*z+e2)/e3)
  fd=((((z+4)*z+6)*z-e2)*z+24*e1+24)/(e3*z)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Beta03-16 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  ep=exp(p1), pp2=p1*p1
  fz=(-(((p1+3)*p1+6)*p1+(6*ep*ep-6))/(pp2*pp2*ep)):
  ez=exp(z)
  z2=z*z
  zt=z
  foz=fz
  fz=(-(((z+3)*z+6)*z+(6*ez*ez-6))/(z2*z2*ez))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Beta03-19 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  y=y+t*(-(((x+3)*x+6)*x+(6*ex*ex-6))/(x2*y2*ex))
  x=x-t*(-(((y+3)*y+6)*y+(6*ey*ey-6))/(y2*y2*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Beta03-20 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  y=y+t*sin(-(((x+3)*x+6)*x+(6*ex*ex-6))/(x2*y2*ex))
  x=x-t*sin(-(((y+3)*y+6)*y+(6*ey*ey-6))/(y2*y2*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Beta03-21 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  y=y+t*fn1(-(((x+3)*x+6)*x+(6*ex*ex-6))/(x2*y2*ex))
  x=x-t*fn1(-(((y+3)*y+6)*y+(6*ey*ey-6))/(y2*y2*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Beta03-22 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=fn1(-(((x+3)*x+6)*x+(6*ex*ex-6))/(x2*y2*ex))
  Ty=fn2(-(((y+3)*y+6)*y+(6*ey*ey-6))/(y2*y2*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Beta03-23 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=fn1(-(((x+3)*x+6)*x+(6*ex*ex-6))/(x2*y2*ex))
  Ty=fn2(-(((y+3)*y+6)*y+(6*ey*ey-6))/(y2*y2*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Beta03-24 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  y=y+t*fn1(-(((x+3)*x+6)*x+(6*ex*ex-6))/(x2*y2*ex))
  x=x-t*fn2(-(((y+3)*y+6)*y+(6*ey*ey-6))/(y2*y2*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Beta03-25 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  y=y+t*fn1(-(((x+3)*x+6)*x+(6*ex*ex-6))/(x2*y2*ex))
  x=x-t*fn2(-(((y+3)*y+6)*y+(6*ey*ey-6))/(y2*y2*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Beta03-26 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=fn1(-(((x+3)*x+6)*x+(6*ex*ex-6))/(x2*y2*ex))
  Ty=fn1(-(((y+3)*y+6)*y+(6*ey*ey-6))/(y2*y2*ey))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Beta03-27 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=fn1(-(((x+3)*x+6)*x+(6*ex*ex-6))/(x2*y2*ex))
  Ty=fn1(-(((y+3)*y+6)*y+(6*ey*ey-6))/(y2*y2*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Beta03-28 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=fn1(-(((x+3)*x+6)*x+(6*ex*ex-6))/(x2*y2*ex))
  Ty=fn1(-(((y+3)*y+6)*y+(6*ey*ey-6))/(y2*y2*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Beta03-29 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=fn1(-(((x+3)*x+6)*x+(6*ex*ex-6))/(x2*y2*ex))
  Ty=fn1(-(((y+3)*y+6)*y+(6*ey*ey-6))/(y2*y2*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Beta03-30 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[3] = (-exp(-z)-3Beta[2])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ex=exp(x0), ey=exp(x1)
  xx=x0*x0, yy=x1*x1
  Fx0=-(((x0+3)*x0+6)*x0+(6*ex*ex-6))/(xx*yy*ex)
  Fx1=-(((x1+3)*x1+6)*x1+(6*ey*ey-6))/(yy*yy*ey)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Beta04-01 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Fx=((((x+4)*x+12)*x+24)*x+(24*ex*ex-24))/(x2*x2*x*ex)
  Fy=((((y+4)*y+12)*y+24)*y+(24*ey*ey-24))/(y2*y2*y*ey)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Beta04-02 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  bailout=p1+4, z=pixel:
  ez=exp(z)
  z2=z*z
  z=((((z+4)*z+12)*z+24)*z+(24*ez*ez-24))/(z2*z2*z*ez)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Beta04-03 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  const=p1, z=pixel:
  ez=exp(z)
  z2=z*z
  z=const+(((((z+4)*z+12)*z+24)*z+(24*ez*ez-24))/(z2*z2*z*ez))
  |z|<100
  ;SOURCE: chby3.frm
}


Beta04-04 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  const=pixel, z=p1:
  ez=exp(z)
  z2=z*z
  z=const+(((((z+4)*z+12)*z+24)*z+(24*ez*ez-24))/(z2*z2*z*ez))
  |z|<100
  ;SOURCE: chby4.frm
}


Beta04-05 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=24*e1-24
  e3=ez*z2*z2*z
  f=(((((z+4)*z+12)*z+24)*z+e2)/e3)
  fd=(((((-z-5)*z-20)*z-36)*z+e2)*z-120*e1-120)/(e3*z)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Beta04-06 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=24*e1-24
  e3=ez*z2*z2*z
  f=(((((z+4)*z+12)*z+24)*z+e2)/e3)
  fd=(((((-z-5)*z-20)*z-36)*z+e2)*z-120*e1-120)/(e3*z)
  fdd=((((((-3*z-34)*z-150)*z-448)*z+120*e1-648)*z-240*e1-720)*z-1680*e1-1680)/(e3*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Beta04-07 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=24*e1-24
  e3=ez*z2*z2*z
  f=(((((z+4)*z+12)*z+24)*z+e2)/e3)
  fd=(((((-z-5)*z-20)*z-36)*z+e2)*z-120*e1-120)/(e3*z)
  oz=z
  w=z-f/fd
  w2=w*w
  ew=exp(w)
  fw=(((((w+4)*w+12)*w+24)*w+24*ew*ew-24)/(ew*w2*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Beta04-08 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=sin(((((x+4)*x+12)*x+24)*x+(24*ex*ex-24))/(x2*x2*x*ex))
  Ty=sin(((((y+4)*y+12)*y+24)*y+(24*ey*ey-24))/(y2*y2*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Beta04-09 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=fn1(((((x+4)*x+12)*x+24)*x+(24*ex*ex-24))/(x2*x2*x*ex))
  Ty=fn1(((((y+4)*y+12)*y+24)*y+(24*ey*ey-24))/(y2*y2*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Beta04-10 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  ep=exp(z), pp2=p1*p1
  fz=(((((p1+4)*p1+12)*p1+24)*p1+(24*ep*ep-24))/(pp2*pp2*p1*ep)):
  ez=exp(z)
  z2=z*z
  zt=z
  foz=fz
  fz=(((((z+4)*z+12)*z+24)*z+(24*ez*ez-24))/(z2*z2*z*ez))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Beta04-11 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  const=p1, z=pixel:
  ez=exp(z)
  z2=z*z
  z=const*(((((z+4)*z+12)*z+24)*z+(24*ez*ez-24))/(z2*z2*z*ez))
  |z|<100
  ;SOURCE: chby11.frm
}


Beta04-12 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  const=pixel, z=p1:
  ez=exp(z)
  z2=z*z
  z=const*(((((z+4)*z+12)*z+24)*z+(24*ez*ez-24))/(z2*z2*z*ez))
  |z|<100
  ;SOURCE: chby12.frm
}


Beta04-13 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=24*e1-24
  e3=ez*z2*z2*z
  f=(((((z+4)*z+12)*z+24)*z+e2)/e3)
  fd=(((((-z-5)*z-20)*z-36)*z+e2)*z-120*e1-120)/(e3*z)
  fdd=((((((-3*z-34)*z-150)*z-448)*z+120*e1-648)*z-240*e1-720)*z-1680*e1-1680)/(e3*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Beta04-14 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=24*e1-24
  e3=ez*z2*z2*z
  f=(((((z+4)*z+12)*z+24)*z+e2)/e3)
  fd=(((((-z-5)*z-20)*z-36)*z+e2)*z-120*e1-120)/(e3*z)
  oz=z
  w=z-f/fd
  w2=w*w
  ew=exp(w)
  fw=(((((w+4)*w+12)*w+24)*w+24*ew*ew-24)/(ew*w2*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Beta04-15 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=24*e1-24
  e3=ez*z2*z2*z
  f=(((((z+4)*z+12)*z+24)*z+e2)/e3)
  fd=(((((-z-5)*z-20)*z-36)*z+e2)*z-120*e1-120)/(e3*z)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Beta04-16 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  ep=exp(z), pp2=p1*p1
  fz=(((((p1+4)*p1+12)*p1+24)*p1+(24*ep*ep-24))/(pp2*pp2*p1*ep)):
  ez=exp(z)
  z2=z*z
  zt=z
  foz=fz
  fz=(((((z+4)*z+12)*z+24)*z+(24*ez*ez-24))/(z2*z2*z*ez))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Beta04-19 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  y=y+t*(((((x+4)*x+12)*x+24)*x+(24*ex*ex-24))/(x2*x2*x*ex))
  x=x-t*(((((y+4)*y+12)*y+24)*y+(24*ey*ey-24))/(y2*y2*y*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Beta04-20 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  y=y+t*sin(((((x+4)*x+12)*x+24)*x+(24*ex*ex-24))/(x2*x2*x*ex))
  x=x-t*sin(((((y+4)*y+12)*y+24)*y+(24*ey*ey-24))/(y2*y2*y*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Beta04-21 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((x+4)*x+12)*x+24)*x+(24*ex*ex-24))/(x2*x2*x*ex))
  x=x-t*fn1(((((y+4)*y+12)*y+24)*y+(24*ey*ey-24))/(y2*y2*y*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Beta04-22 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=fn1(((((x+4)*x+12)*x+24)*x+(24*ex*ex-24))/(x2*x2*x*ex))
  Ty=fn2(((((y+4)*y+12)*y+24)*y+(24*ey*ey-24))/(y2*y2*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Beta04-23 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=fn1(((((x+4)*x+12)*x+24)*x+(24*ex*ex-24))/(x2*x2*x*ex))
  Ty=fn2(((((y+4)*y+12)*y+24)*y+(24*ey*ey-24))/(y2*y2*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Beta04-24 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((x+4)*x+12)*x+24)*x+(24*ex*ex-24))/(x2*x2*x*ex))
  x=x-t*fn2(((((y+4)*y+12)*y+24)*y+(24*ey*ey-24))/(y2*y2*y*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Beta04-25 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((x+4)*x+12)*x+24)*x+(24*ex*ex-24))/(x2*x2*x*ex))
  x=x-t*fn2(((((y+4)*y+12)*y+24)*y+(24*ey*ey-24))/(y2*y2*y*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Beta04-26 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=fn1(((((x+4)*x+12)*x+24)*x+(24*ex*ex-24))/(x2*x2*x*ex))
  Ty=fn1(((((y+4)*y+12)*y+24)*y+(24*ey*ey-24))/(y2*y2*y*ey))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Beta04-27 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=fn1(((((x+4)*x+12)*x+24)*x+(24*ex*ex-24))/(x2*x2*x*ex))
  Ty=fn1(((((y+4)*y+12)*y+24)*y+(24*ey*ey-24))/(y2*y2*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Beta04-28 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=fn1(((((x+4)*x+12)*x+24)*x+(24*ex*ex-24))/(x2*x2*x*ex))
  Ty=fn1(((((y+4)*y+12)*y+24)*y+(24*ey*ey-24))/(y2*y2*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Beta04-29 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=fn1(((((x+4)*x+12)*x+24)*x+(24*ex*ex-24))/(x2*x2*x*ex))
  Ty=fn1(((((y+4)*y+12)*y+24)*y+(24*ey*ey-24))/(y2*y2*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Beta04-30 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[4] = (exp(-z)-4Beta[3])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ex=exp(x0), ey=exp(x1)
  xx=x0*x0, yy=x1*x1
  Fx0=((((x0+4)*x0+12)*x0+24)*x0+(24*ex*ex-24))/(xx*xx*x0*ex)
  Fx1=((((x1+4)*x1+12)*x1+24)*x1+(24*ey*ey-24))/(yy*yy*x1*ey)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Beta05-01 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Fx=-(((((x+5)*x+20)*x+60)*x+120)*x+(120*ex*ex-120))/(x2*x2*x2*ex)
  Fy=-(((((y+5)*y+20)*y+60)*y+120)*y+(120*ey*ey-120))/(y2*y2*y2*ey)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Beta05-02 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  bailout=p1+4, z=pixel:
  ez=exp(z)
  z2=z*z
  z=-(((((z+5)*z+20)*z+60)*z+120)*z+(120*ez*ez-120))/(z2*z2*z2*ez)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Beta05-03 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  const=p1, z=pixel:
  ez=exp(z)
  z2=z*z
  z=const+(-(((((z+5)*z+20)*z+60)*z+120)*z+(120*ez*ez-120))/(z2*z2*z2*ez))
  |z|<100
  ;SOURCE: chby3.frm
}


Beta05-04 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  const=pixel, z=p1:
  ez=exp(z)
  z2=z*z
  z=const+(-(((((z+5)*z+20)*z+60)*z+120)*z+(120*ez*ez-120))/(z2*z2*z2*ez))
  |z|<100
  ;SOURCE: chby4.frm
}


Beta05-05 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=120*e1-120
  e3=ez*z2*z2*z2
  f=(-(((((z+5)*z+20)*z+60)*z+120)*z+e2)/e3)
  fd=((((((z+6)*z+30)*z+120)*z+240)*z-e2)*z+720*e1+720)/(e3*z)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Beta05-06 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=120*e1-120
  e3=ez*z2*z2*z2
  f=(-(((((z+5)*z+20)*z+60)*z+120)*z+e2)/e3)
  fd=((((((z+6)*z+30)*z+120)*z+240)*z-e2)*z+720*e1+720)/(e3*z)
  fdd=(((((((3*z+41)*z+222)*z+990)*z+3120)*z-600*e1+4920)*z+1440*e1+4320)*z+12240*e1+12240)/(e3*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Beta05-07 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=120*e1-120
  e3=ez*z2*z2*z2
  f=(-(((((z+5)*z+20)*z+60)*z+120)*z+e2)/e3)
  fd=((((((z+6)*z+30)*z+120)*z+240)*z-e2)*z+720*e1+720)/(e3*z)
  oz=z
  w=z-f/fd
  w2=w*w
  ew=exp(w)
  fw=(-(((((w+5)*w+20)*w+60)*w+120)*w+120*ew*ew-120)/(ew*w2*w2*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Beta05-08 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=sin(-(((((x+5)*x+20)*x+60)*x+120)*x+(120*ex*ex-120))/(x2*x2*x2*ex))
  Ty=sin(-(((((y+5)*y+20)*y+60)*y+120)*y+(120*ey*ey-120))/(y2*y2*y2*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Beta05-09 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=fn1(-(((((x+5)*x+20)*x+60)*x+120)*x+(120*ex*ex-120))/(x2*x2*x2*ex))
  Ty=fn1(-(((((y+5)*y+20)*y+60)*y+120)*y+(120*ey*ey-120))/(y2*y2*y2*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Beta05-10 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  ep=exp(p1), pp2=p1*p1
  fz=(-(((((p1+5)*p1+20)*p1+60)*p1+120)*p1+(120*ep*ep-120))/(pp2*pp2*pp2*ep)):
  ez=exp(z)
  z2=z*z
  zt=z
  foz=fz
  fz=(-(((((z+5)*z+20)*z+60)*z+120)*z+(120*ez*ez-120))/(z2*z2*z2*ez))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Beta05-11 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  const=p1, z=pixel:
  ez=exp(z)
  z2=z*z
  z=const*(-(((((z+5)*z+20)*z+60)*z+120)*z+(120*ez*ez-120))/(z2*z2*z2*ez))
  |z|<100
  ;SOURCE: chby11.frm
}


Beta05-12 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  const=pixel, z=p1:
  ez=exp(z)
  z2=z*z
  z=const*(-(((((z+5)*z+20)*z+60)*z+120)*z+(120*ez*ez-120))/(z2*z2*z2*ez))
  |z|<100
  ;SOURCE: chby12.frm
}


Beta05-13 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=120*e1-120
  e3=ez*z2*z2*z2
  f=(-(((((z+5)*z+20)*z+60)*z+120)*z+e2)/e3)
  fd=((((((z+6)*z+30)*z+120)*z+240)*z-e2)*z+720*e1+720)/(e3*z)
  fdd=(((((((3*z+41)*z+222)*z+990)*z+3120)*z-600*e1+4920)*z+1440*e1+4320)*z+12240*e1+12240)/(e3*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Beta05-14 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=120*e1-120
  e3=ez*z2*z2*z2
  f=(-(((((z+5)*z+20)*z+60)*z+120)*z+e2)/e3)
  fd=((((((z+6)*z+30)*z+120)*z+240)*z-e2)*z+720*e1+720)/(e3*z)
  oz=z
  w=z-f/fd
  w2=w*w
  ew=exp(w)
  fw=(-(((((w+5)*w+20)*w+60)*w+120)*w+120*ew*ew-120)/(ew*w2*w2*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Beta05-15 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=120*e1-120
  e3=ez*z2*z2*z2
  f=(-(((((z+5)*z+20)*z+60)*z+120)*z+e2)/e3)
  fd=((((((z+6)*z+30)*z+120)*z+240)*z-e2)*z+720*e1+720)/(e3*z)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Beta05-16 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  ep=exp(p1), pp2=p1*p1
  fz=(-(((((p1+5)*p1+20)*p1+60)*p1+120)*p1+(120*ep*ep-120))/(pp2*pp2*pp2*ep)):
  ez=exp(z)
  z2=z*z
  zt=z
  foz=fz
  fz=(-(((((z+5)*z+20)*z+60)*z+120)*z+(120*ez*ez-120))/(z2*z2*z2*ez))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Beta05-19 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  y=y+t*(-(((((x+5)*x+20)*x+60)*x+120)*x+(120*ex*ex-120))/(x2*x2*x2*ex))
  x=x-t*(-(((((y+5)*y+20)*y+60)*y+120)*y+(120*ey*ey-120))/(y2*y2*y2*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Beta05-20 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  y=y+t*sin(-(((((x+5)*x+20)*x+60)*x+120)*x+(120*ex*ex-120))/(x2*x2*x2*ex))
  x=x-t*sin(-(((((y+5)*y+20)*y+60)*y+120)*y+(120*ey*ey-120))/(y2*y2*y2*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Beta05-21 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  y=y+t*fn1(-(((((x+5)*x+20)*x+60)*x+120)*x+(120*ex*ex-120))/(x2*x2*x2*ex))
  x=x-t*fn1(-(((((y+5)*y+20)*y+60)*y+120)*y+(120*ey*ey-120))/(y2*y2*y2*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Beta05-22 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=fn1(-(((((x+5)*x+20)*x+60)*x+120)*x+(120*ex*ex-120))/(x2*x2*x2*ex))
  Ty=fn2(-(((((y+5)*y+20)*y+60)*y+120)*y+(120*ey*ey-120))/(y2*y2*y2*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Beta05-23 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=fn1(-(((((x+5)*x+20)*x+60)*x+120)*x+(120*ex*ex-120))/(x2*x2*x2*ex))
  Ty=fn2(-(((((y+5)*y+20)*y+60)*y+120)*y+(120*ey*ey-120))/(y2*y2*y2*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Beta05-24 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  y=y+t*fn1(-(((((x+5)*x+20)*x+60)*x+120)*x+(120*ex*ex-120))/(x2*x2*x2*ex))
  x=x-t*fn2(-(((((y+5)*y+20)*y+60)*y+120)*y+(120*ey*ey-120))/(y2*y2*y2*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Beta05-25 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  y=y+t*fn1(-(((((x+5)*x+20)*x+60)*x+120)*x+(120*ex*ex-120))/(x2*x2*x2*ex))
  x=x-t*fn2(-(((((y+5)*y+20)*y+60)*y+120)*y+(120*ey*ey-120))/(y2*y2*y2*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Beta05-26 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=fn1(-(((((x+5)*x+20)*x+60)*x+120)*x+(120*ex*ex-120))/(x2*x2*x2*ex))
  Ty=fn1(-(((((y+5)*y+20)*y+60)*y+120)*y+(120*ey*ey-120))/(y2*y2*y2*ey))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Beta05-27 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=fn1(-(((((x+5)*x+20)*x+60)*x+120)*x+(120*ex*ex-120))/(x2*x2*x2*ex))
  Ty=fn1(-(((((y+5)*y+20)*y+60)*y+120)*y+(120*ey*ey-120))/(y2*y2*y2*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Beta05-28 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=fn1(-(((((x+5)*x+20)*x+60)*x+120)*x+(120*ex*ex-120))/(x2*x2*x2*ex))
  Ty=fn1(-(((((y+5)*y+20)*y+60)*y+120)*y+(120*ey*ey-120))/(y2*y2*y2*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Beta05-29 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=fn1(-(((((x+5)*x+20)*x+60)*x+120)*x+(120*ex*ex-120))/(x2*x2*x2*ex))
  Ty=fn1(-(((((y+5)*y+20)*y+60)*y+120)*y+(120*ey*ey-120))/(y2*y2*y2*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Beta05-30 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[5] = (-exp(-z)-5Beta[4])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ex=exp(x0), ey=exp(x1)
  xx=x0*x0, yy=x1*x1
  Fx0=-(((((x0+5)*x0+20)*x0+60)*x0+120)*x0+(120*ex*ex-120))/(xx*xx*xx*ex)
  Fx1=-(((((x1+5)*x1+20)*x1+60)*x1+120)*x1+(120*ey*ey-120))/(yy*yy*yy*ey)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Beta06-01 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Fx=((((((x+6)*x+30)*x+120)*x+360)*x+720)*x+(720*ex*ex-720))/(x2*x2*x2*x*ex)
  Fy=((((((y+6)*y+30)*y+120)*y+360)*y+720)*y+(720*ey*ey-720))/(y2*y2*y2*y*ey)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Beta06-02 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  bailout=p1+4, z=pixel:
  ez=exp(z)
  z2=z*z
  z=((((((z+6)*z+30)*z+120)*z+360)*z+720)*z+(720*ez*ez-720))/(z2*z2*z2*z*ez)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Beta06-03 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  const=p1, z=pixel:
  ez=exp(z)
  z2=z*z
  z=const+(((((((z+6)*z+30)*z+120)*z+360)*z+720)*z+(720*ez*ez-720))/(z2*z2*z2*z*ez))
  |z|<100
  ;SOURCE: chby3.frm
}


Beta06-04 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  const=pixel, z=p1:
  ez=exp(z)
  z2=z*z
  z=const+(((((((z+6)*z+30)*z+120)*z+360)*z+720)*z+(720*ez*ez-720))/(z2*z2*z2*z*ez))
  |z|<100
  ;SOURCE: chby4.frm
}


Beta06-05 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=720*e1-720
  e3=ez*z2*z2*z2*z
  f=(((((((z+6)*z+30)*z+120)*z+360)*z+720)*z+e2)/e3)
  fd=(((((((-z-7)*z-42)*z-210)*z-840)*z-1800)*z+e2)*z-5040*e1-5040)/(e3*z)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Beta06-06 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=720*e1-720
  e3=ez*z2*z2*z2*z
  f=(((((((z+6)*z+30)*z+120)*z+360)*z+720)*z+e2)/e3)
  fd=(((((((-z-7)*z-42)*z-210)*z-840)*z-1800)*z+e2)*z-5040*e1-5040)/(e3*z)
  fdd=((((((((-3*z-48)*z-308)*z-1680)*z-7560)*z-24720)*z+3600*e1-41760)*z-10080*e1-30240)*z-100800*e1-100800)/(e3*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Beta06-07 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=720*e1-720
  e3=ez*z2*z2*z2*z
  f=(((((((z+6)*z+30)*z+120)*z+360)*z+720)*z+720*ez*ez-720)/e3)
  fd=(((((((-z-7)*z-42)*z-210)*z-840)*z-1800)*z+e2)*z-5040*e1-5040)/(e3*z)
  oz=z
  w=z-f/fd
  w2=w*w
  ew=exp(w)
  fw=(((((((w+6)*w+30)*w+120)*w+360)*w+720)*w+720*ew*ew-720)/(ew*w2*w2*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Beta06-08 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=sin(((((((x+6)*x+30)*x+120)*x+360)*x+720)*x+(720*ex*ex-720))/(x2*x2*x2*x*ex))
  Ty=sin(((((((y+6)*y+30)*y+120)*y+360)*y+720)*y+(720*ey*ey-720))/(y2*y2*y2*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Beta06-09 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=fn1(((((((x+6)*x+30)*x+120)*x+360)*x+720)*x+(720*ex*ex-720))/(x2*x2*x2*x*ex))
  Ty=fn1(((((((y+6)*y+30)*y+120)*y+360)*y+720)*y+(720*ey*ey-720))/(y2*y2*y2*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Beta06-10 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  ep=exp(p1), pp2=p1*p1
  fz=(((((((p1+6)*p1+30)*p1+120)*p1+360)*p1+720)*p1+(720*ep*ep-720))/(pp2*pp2*pp2*p1*ep)):
  ez=exp(z)
  z2=z*z
  zt=z
  foz=fz
  fz=(((((((z+6)*z+30)*z+120)*z+360)*z+720)*z+(720*ez*ez-720))/(z2*z2*z2*z*ez))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Beta06-11 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  const=p1, z=pixel:
  ez=exp(z)
  z2=z*z
  z=const*(((((((z+6)*z+30)*z+120)*z+360)*z+720)*z+(720*ez*ez-720))/(z2*z2*z2*z*ez))
  |z|<100
  ;SOURCE: chby11.frm
}


Beta06-12 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  const=pixel, z=p1:
  ez=exp(z)
  z2=z*z
  z=const*(((((((z+6)*z+30)*z+120)*z+360)*z+720)*z+(720*ez*ez-720))/(z2*z2*z2*z*ez))
  |z|<100
  ;SOURCE: chby12.frm
}


Beta06-13 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=720*e1-720
  e3=ez*z2*z2*z2*z
  f=(((((((z+6)*z+30)*z+120)*z+360)*z+720)*z+720*ez*ez-720)/e3)
  fd=(((((((-z-7)*z-42)*z-210)*z-840)*z-1800)*z+e2)*z-5040*e1-5040)/(e3*z)
  fdd=((((((((-3*z-48)*z-308)*z-1680)*z-7560)*z-24720)*z+3600*e1-41760)*z-10080*e1-30240)*z-100800*e1-100800)/(e3*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Beta06-14 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=720*e1-720
  e3=ez*z2*z2*z2*z
  f=(((((((z+6)*z+30)*z+120)*z+360)*z+720)*z+720*ez*ez-720)/e3)
  fd=(((((((-z-7)*z-42)*z-210)*z-840)*z-1800)*z+e2)*z-5040*e1-5040)/(e3*z)
  oz=z
  w=z-f/fd
  w2=w*w
  ew=exp(w)
  fw=(((((((w+6)*w+30)*w+120)*w+360)*w+720)*w+720*ew*ew-720)/(ew*w2*w2*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Beta06-15 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z
  e1=ez*ez
  e2=720*e1-720
  e3=ez*z2*z2*z2*z
  f=(((((((z+6)*z+30)*z+120)*z+360)*z+720)*z+e2)/e3)
  fd=(((((((-z-7)*z-42)*z-210)*z-840)*z-1800)*z+e2)*z-5040*e1-5040)/(e3*z)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Beta06-16 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  ep=exp(p1), pp2=p1*p1
  fz=(((((((p1+6)*p1+30)*p1+120)*p1+360)*p1+720)*p1+(720*ep*ep-720))/(pp2*pp2*pp2*p1*ep)):
  ez=exp(z)
  z2=z*z
  zt=z
  foz=fz
  fz=(((((((z+6)*z+30)*z+120)*z+360)*z+720)*z+(720*ez*ez-720))/(z2*z2*z2*z*ez))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Beta06-19 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  y=y+t*(((((((x+6)*x+30)*x+120)*x+360)*x+720)*x+(720*ex*ex-720))/(x2*x2*x2*x*ex))
  x=x-t*(((((((y+6)*y+30)*y+120)*y+360)*y+720)*y+(720*ey*ey-720))/(y2*y2*y2*y*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Beta06-20 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  y=y+t*sin(((((((x+6)*x+30)*x+120)*x+360)*x+720)*x+(720*ex*ex-720))/(x2*x2*x2*x*ex))
  x=x-t*sin(((((((y+6)*y+30)*y+120)*y+360)*y+720)*y+(720*ey*ey-720))/(y2*y2*y2*y*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Beta06-21 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((((x+6)*x+30)*x+120)*x+360)*x+720)*x+(720*ex*ex-720))/(x2*x2*x2*x*ex))
  x=x-t*fn1(((((((y+6)*y+30)*y+120)*y+360)*y+720)*y+(720*ey*ey-720))/(y2*y2*y2*y*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Beta06-22 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=fn1(((((((x+6)*x+30)*x+120)*x+360)*x+720)*x+(720*ex*ex-720))/(x2*x2*x2*x*ex))
  Ty=fn2(((((((y+6)*y+30)*y+120)*y+360)*y+720)*y+(720*ey*ey-720))/(y2*y2*y2*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Beta06-23 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=fn1(((((((x+6)*x+30)*x+120)*x+360)*x+720)*x+(720*ex*ex-720))/(x2*x2*x2*x*ex))
  Ty=fn2(((((((y+6)*y+30)*y+120)*y+360)*y+720)*y+(720*ey*ey-720))/(y2*y2*y2*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Beta06-24 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((((x+6)*x+30)*x+120)*x+360)*x+720)*x+(720*ex*ex-720))/(x2*x2*x2*x*ex))
  x=x-t*fn2(((((((y+6)*y+30)*y+120)*y+360)*y+720)*y+(720*ey*ey-720))/(y2*y2*y2*y*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Beta06-25 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  y=y+t*fn1(((((((x+6)*x+30)*x+120)*x+360)*x+720)*x+(720*ex*ex-720))/(x2*x2*x2*x*ex))
  x=x-t*fn2(((((((y+6)*y+30)*y+120)*y+360)*y+720)*y+(720*ey*ey-720))/(y2*y2*y2*y*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Beta06-26 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=fn1(((((((x+6)*x+30)*x+120)*x+360)*x+720)*x+(720*ex*ex-720))/(x2*x2*x2*x*ex))
  Ty=fn1(((((((y+6)*y+30)*y+120)*y+360)*y+720)*y+(720*ey*ey-720))/(y2*y2*y2*y*ey))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Beta06-27 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=fn1(((((((x+6)*x+30)*x+120)*x+360)*x+720)*x+(720*ex*ex-720))/(x2*x2*x2*x*ex))
  Ty=fn1(((((((y+6)*y+30)*y+120)*y+360)*y+720)*y+(720*ey*ey-720))/(y2*y2*y2*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Beta06-28 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=fn1(((((((x+6)*x+30)*x+120)*x+360)*x+720)*x+(720*ex*ex-720))/(x2*x2*x2*x*ex))
  Ty=fn1(((((((y+6)*y+30)*y+120)*y+360)*y+720)*y+(720*ey*ey-720))/(y2*y2*y2*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Beta06-29 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y
  Tx=fn1(((((((x+6)*x+30)*x+120)*x+360)*x+720)*x+(720*ex*ex-720))/(x2*x2*x2*x*ex))
  Ty=fn1(((((((y+6)*y+30)*y+120)*y+360)*y+720)*y+(720*ey*ey-720))/(y2*y2*y2*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Beta06-30 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[6] = (exp(-z)-6Beta[5])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ex=exp(x0), ey=exp(x1)
  xx=x0*x0, yy=x1*x1
  Fx0=((((((x0+6)*x0+30)*x0+120)*x0+360)*x0+720)*x0+(720*ex*ex-720))/(xx*xx*xx*x0*ex)
  Fx1=((((((x1+6)*x1+30)*x1+120)*x1+360)*x1+720)*x1+(720*ey*ey-720))/(yy*yy*yy*x1*ey)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Beta07-01 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Fx=-(((((((x+7)*x+42)*x+210)*x+840)*x+2520)*x+5040)*x+(5040*ex*ex-5040))/(x4*x4*ex)
  Fy=-(((((((y+7)*y+42)*y+210)*y+840)*y+2520)*y+5040)*y+(5040*ey*ey-5040))/(y4*y4*ey)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Beta07-02 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  bailout=p1+4, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  z=-(((((((z+7)*z+42)*z+210)*z+840)*z+2520)*z+5040)*z+(5040*ez*ez-5040))/(z4*z4*ez)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Beta07-03 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  const=p1, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  z=const+(-(((((((z+7)*z+42)*z+210)*z+840)*z+2520)*z+5040)*z+(5040*ez*ez-5040))/(z4*z4*ez))
  |z|<100
  ;SOURCE: chby3.frm
}


Beta07-04 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  const=pixel, z=p1:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  z=const+(-(((((((z+7)*z+42)*z+210)*z+840)*z+2520)*z+5040)*z+(5040*ez*ez-5040))/(z4*z4*ez))
  |z|<100
  ;SOURCE: chby4.frm
}


Beta07-05 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=5040*e1-5040
  e3=ez*z4*z4
  f=(-(((((((z+7)*z+42)*z+210)*z+840)*z+2520)*z+5040)*z+e2)/e3)
  fd=((((((((z+8)*z+56)*z+336)*z+1680)*z+6720)*z+15120)*z-e2)*z+40320*e1+40320)/(e3*z)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Beta07-06 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=5040*e1-5040
  e3=ez*z4*z4
  f=(-(((((((z+7)*z+42)*z+210)*z+840)*z+2520)*z+5040)*z+e2)/e3)
  fd=((((((((z+8)*z+56)*z+336)*z+1680)*z+6720)*z+15120)*z-e2)*z+40320*e1+40320)/(e3*z)
  fdd=(((((((((3*z+55)*z+408)*z+2632)*z+14448)*z+65520)*z+220080)*z-25200*e1+393120)*z+80640*e1+241920)*z+927360*e1+927360)/(e3*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Beta07-07 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=5040*e1-5040
  e3=ez*z4*z4
  f=(-(((((((z+7)*z+42)*z+210)*z+840)*z+2520)*z+5040)*z+e2)/e3)
  fd=((((((((z+8)*z+56)*z+336)*z+1680)*z+6720)*z+15120)*z-e2)*z+40320*e1+40320)/(e3*z)
  oz=z
  w=z-f/fd
  ew=exp(w)
  w2=w*w, w4=w2*w2
  fw=(-(((((((w+7)*w+42)*w+210)*w+840)*w+2520)*w+5040)*w+5040*ew*ew-5040)/(ez*w4*w4))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Beta07-08 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=sin(-(((((((x+7)*x+42)*x+210)*x+840)*x+2520)*x+5040)*x+(5040*ex*ex-5040))/(x4*x4*ex))
  Ty=sin(-(((((((y+7)*y+42)*y+210)*y+840)*y+2520)*y+5040)*y+(5040*ey*ey-5040))/(y4*y4*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Beta07-09 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(-(((((((x+7)*x+42)*x+210)*x+840)*x+2520)*x+5040)*x+(5040*ex*ex-5040))/(x4*x4*ex))
  Ty=fn1(-(((((((y+7)*y+42)*y+210)*y+840)*y+2520)*y+5040)*y+(5040*ey*ey-5040))/(y4*y4*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Beta07-10 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  ep=exp(p1), pp2=p1*p1, pp4=pp2*pp2
  fz=(-(((((((p1+7)*p1+42)*p1+210)*p1+840)*p1+2520)*p1+5040)*p1+(5040*ep*ep-5040))/(pp4*pp4*ep)):
  ez=exp(z)
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=(-(((((((z+7)*z+42)*z+210)*z+840)*z+2520)*z+5040)*z+(5040*ez*ez-5040))/(z4*z4*ez))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Beta07-11 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  const=p1, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  z=const*(-(((((((z+7)*z+42)*z+210)*z+840)*z+2520)*z+5040)*z+(5040*ez*ez-5040))/(z4*z4*ez))
  |z|<100
  ;SOURCE: chby11.frm
}


Beta07-12 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  const=pixel, z=p1:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  z=const*(-(((((((z+7)*z+42)*z+210)*z+840)*z+2520)*z+5040)*z+(5040*ez*ez-5040))/(z4*z4*ez))
  |z|<100
  ;SOURCE: chby12.frm
}


Beta07-13 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=5040*e1-5040
  e3=ez*z4*z4
  f=(-(((((((z+7)*z+42)*z+210)*z+840)*z+2520)*z+5040)*z+e2)/e3)
  fd=((((((((z+8)*z+56)*z+336)*z+1680)*z+6720)*z+15120)*z-e2)*z+40320*e1+40320)/(e3*z)
  fdd=(((((((((3*z+55)*z+408)*z+2632)*z+14448)*z+65520)*z+220080)*z-25200*e1+393120)*z+80640*e1+241920)*z+927360*e1+927360)/(e3*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Beta07-14 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=5040*e1-5040
  e3=ez*z4*z4
  f=(-(((((((z+7)*z+42)*z+210)*z+840)*z+2520)*z+5040)*z+e2)/e3)
  fd=((((((((z+8)*z+56)*z+336)*z+1680)*z+6720)*z+15120)*z-e2)*z+40320*e1+40320)/(e3*z)
  oz=z
  w=z-f/fd
  ew=exp(w)
  w2=w*w, w4=w2*w2
  fw=(-(((((((w+7)*w+42)*w+210)*w+840)*w+2520)*w+5040)*w+5040*ew*ew-5040)/(ez*w4*w4))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Beta07-15 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=5040*e1-5040
  e3=ez*z4*z4
  f=(-(((((((z+7)*z+42)*z+210)*z+840)*z+2520)*z+5040)*z+e2)/e3)
  fd=((((((((z+8)*z+56)*z+336)*z+1680)*z+6720)*z+15120)*z-e2)*z+40320*e1+40320)/(e3*z)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Beta07-16 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  ep=exp(p1), pp2=p1*p1, pp4=pp2*pp2
  fz=(-(((((((p1+7)*p1+42)*p1+210)*p1+840)*p1+2520)*p1+5040)*p1+(5040*ep*ep-5040))/(pp4*pp4*ep)):
  ez=exp(z)
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=(-(((((((z+7)*z+42)*z+210)*z+840)*z+2520)*z+5040)*z+(5040*ez*ez-5040))/(z4*z4*ez))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Beta07-19 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*(-(((((((x+7)*x+42)*x+210)*x+840)*x+2520)*x+5040)*x+(5040*ex*ex-5040))/(x4*x4*ex))
  x=x-t*(-(((((((y+7)*y+42)*y+210)*y+840)*y+2520)*y+5040)*y+(5040*ey*ey-5040))/(y4*y4*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Beta07-20 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*sin(-(((((((x+7)*x+42)*x+210)*x+840)*x+2520)*x+5040)*x+(5040*ex*ex-5040))/(x4*x4*ex))
  x=x-t*sin(-(((((((y+7)*y+42)*y+210)*y+840)*y+2520)*y+5040)*y+(5040*ey*ey-5040))/(y4*y4*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Beta07-21 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1(-(((((((x+7)*x+42)*x+210)*x+840)*x+2520)*x+5040)*x+(5040*ex*ex-5040))/(x4*x4*ex))
  x=x-t*fn1(-(((((((y+7)*y+42)*y+210)*y+840)*y+2520)*y+5040)*y+(5040*ey*ey-5040))/(y4*y4*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Beta07-22 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(-(((((((x+7)*x+42)*x+210)*x+840)*x+2520)*x+5040)*x+(5040*ex*ex-5040))/(x4*x4*ex))
  Ty=fn2(-(((((((y+7)*y+42)*y+210)*y+840)*y+2520)*y+5040)*y+(5040*ey*ey-5040))/(y4*y4*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Beta07-23 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(-(((((((x+7)*x+42)*x+210)*x+840)*x+2520)*x+5040)*x+(5040*ex*ex-5040))/(x4*x4*ex))
  Ty=fn2(-(((((((y+7)*y+42)*y+210)*y+840)*y+2520)*y+5040)*y+(5040*ey*ey-5040))/(y4*y4*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Beta07-24 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1(-(((((((x+7)*x+42)*x+210)*x+840)*x+2520)*x+5040)*x+(5040*ex*ex-5040))/(x4*x4*ex))
  x=x-t*fn2(-(((((((y+7)*y+42)*y+210)*y+840)*y+2520)*y+5040)*y+(5040*ey*ey-5040))/(y4*y4*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Beta07-25 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1(-(((((((x+7)*x+42)*x+210)*x+840)*x+2520)*x+5040)*x+(5040*ex*ex-5040))/(x4*x4*ex))
  x=x-t*fn2(-(((((((y+7)*y+42)*y+210)*y+840)*y+2520)*y+5040)*y+(5040*ey*ey-5040))/(y4*y4*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Beta07-26 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(-(((((((x+7)*x+42)*x+210)*x+840)*x+2520)*x+5040)*x+(5040*ex*ex-5040))/(x4*x4*ex))
  Ty=fn1(-(((((((y+7)*y+42)*y+210)*y+840)*y+2520)*y+5040)*y+(5040*ey*ey-5040))/(y4*y4*ey))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Beta07-27 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(-(((((((x+7)*x+42)*x+210)*x+840)*x+2520)*x+5040)*x+(5040*ex*ex-5040))/(x4*x4*ex))
  Ty=fn1(-(((((((y+7)*y+42)*y+210)*y+840)*y+2520)*y+5040)*y+(5040*ey*ey-5040))/(y4*y4*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Beta07-28 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(-(((((((x+7)*x+42)*x+210)*x+840)*x+2520)*x+5040)*x+(5040*ex*ex-5040))/(x4*x4*ex))
  Ty=fn1(-(((((((y+7)*y+42)*y+210)*y+840)*y+2520)*y+5040)*y+(5040*ey*ey-5040))/(y4*y4*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Beta07-29 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(-(((((((x+7)*x+42)*x+210)*x+840)*x+2520)*x+5040)*x+(5040*ex*ex-5040))/(x4*x4*ex))
  Ty=fn1(-(((((((y+7)*y+42)*y+210)*y+840)*y+2520)*y+5040)*y+(5040*ey*ey-5040))/(y4*y4*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Beta07-30 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[7] = (-exp(-z)-7Beta[6])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ex=exp(x0), ey=exp(x1)
  xx=x0*x0, yy=x1*x1, x4=xx*xx, y4=yy*yy
  Fx0=-(((((((x0+7)*x0+42)*x0+210)*x0+840)*x0+2520)*x0+5040)*x0+(5040*ex*ex-5040))/(x4*x4*ex)
  Fx1=-(((((((x1+7)*x1+42)*x1+210)*x1+840)*x1+2520)*x1+5040)*x1+(5040*ey*ey-5040))/(y4*y4*ey)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Beta08-01 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Fx=((((((((x+8)*x+56)*x+336)*x+1680)*x+6720)*x+20160)*x+40320)*x+(40320*ex*ex-40320))/(x4*x4*x*ex)
  Fy=((((((((y+8)*y+56)*y+336)*y+1680)*y+6720)*y+20160)*y+40320)*y+(40320*ey*ey-40320))/(y4*y4*y*ey)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Beta08-02 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  bailout=p1+4, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  z=((((((((z+8)*z+56)*z+336)*z+1680)*z+6720)*z+20160)*z+40320)*z+(40320*ez*ez-40320))/(z4*z4*z*ez)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Beta08-03 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  const=p1, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  z=const+(((((((((z+8)*z+56)*z+336)*z+1680)*z+6720)*z+20160)*z+40320)*z+(40320*ez*ez-40320))/(z4*z4*z*ez))
  |z|<100
  ;SOURCE: chby3.frm
}


Beta08-04 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  const=pixel, z=p1:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  z=const+(((((((((z+8)*z+56)*z+336)*z+1680)*z+6720)*z+20160)*z+40320)*z+(40320*ez*ez-40320))/(z4*z4*z*ez))
  |z|<100
  ;SOURCE: chby4.frm
}


Beta08-05 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=40320*e1-40320
  e3=ez*z4*z4*z
  f=(((((((((z+8)*z+56)*z+336)*z+1680)*z+6720)*z+20160)*z+40320)*z+e2)/e3)
  fd=(((((((((-z-9)*z-72)*z-504)*z-3024)*z-15120)*z-60480)*z-141120)*z+e2)*z-362880*e1-362880)/(e3*z)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Beta08-06 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=40320*e1-40320
  e3=ez*z4*z4*z
  f=(((((((((z+8)*z+56)*z+336)*z+1680)*z+6720)*z+20160)*z+40320)*z+e2)/e3)
  fd=(((((((((-z-9)*z-72)*z-504)*z-3024)*z-15120)*z-60480)*z-141120)*z+e2)*z-362880*e1-362880)/(e3*z)
  fdd=((((((((((-3*z-62)*z-522)*z-3888)*z-25200)*z-139104)*z-635040)*z-2177280)*z+201600*e1-4072320)*z-725760*e1-2177280)*z-9434880*e1-9434880)/(e3*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Beta08-07 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=40320*e1-40320
  e3=ez*z4*z4*z
  f=(((((((((z+8)*z+56)*z+336)*z+1680)*z+6720)*z+20160)*z+40320)*z+e2)/e3)
  fd=(((((((((-z-9)*z-72)*z-504)*z-3024)*z-15120)*z-60480)*z-141120)*z+e2)*z-362880*e1-362880)/(e3*z)
  oz=z
  w=z-f/fd
  ew=exp(w)
  w2=w*w, w4=w2*w2
  fw=(((((((((w+8)*w+56)*w+336)*w+1680)*w+6720)*w+20160)*w+40320)*w+40320*ew*ew-40320)/(ew*w4*w4*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Beta08-08 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=sin(((((((((x+8)*x+56)*x+336)*x+1680)*x+6720)*x+20160)*x+40320)*x+(40320*ex*ex-40320))/(x4*x4*x*ex))
  Ty=sin(((((((((y+8)*y+56)*y+336)*y+1680)*y+6720)*y+20160)*y+40320)*y+(40320*ey*ey-40320))/(y4*y4*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Beta08-09 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((x+8)*x+56)*x+336)*x+1680)*x+6720)*x+20160)*x+40320)*x+(40320*ex*ex-40320))/(x4*x4*x*ex))
  Ty=fn1(((((((((y+8)*y+56)*y+336)*y+1680)*y+6720)*y+20160)*y+40320)*y+(40320*ey*ey-40320))/(y4*y4*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Beta08-10 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  ep=exp(p1), pp2=p1*p1, pp4=pp2*pp2
  fz=(((((((((p1+8)*p1+56)*p1+336)*p1+1680)*p1+6720)*p1+20160)*p1+40320)*p1+(40320*ep*ep-40320))/(pp4*pp4*p1*ep)):
  ez=exp(z)
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=(((((((((z+8)*z+56)*z+336)*z+1680)*z+6720)*z+20160)*z+40320)*z+(40320*ez*ez-40320))/(z4*z4*z*ez))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Beta08-11 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  const=p1, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  z=const*(((((((((z+8)*z+56)*z+336)*z+1680)*z+6720)*z+20160)*z+40320)*z+(40320*ez*ez-40320))/(z4*z4*z*ez))
  |z|<100
  ;SOURCE: chby11.frm
}


Beta08-12 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  const=pixel, z=p1:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  z=const*(((((((((z+8)*z+56)*z+336)*z+1680)*z+6720)*z+20160)*z+40320)*z+(40320*ez*ez-40320))/(z4*z4*z*ez))
  |z|<100
  ;SOURCE: chby12.frm
}


Beta08-13 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=40320*e1-40320
  e3=ez*z4*z4*z
  f=(((((((((z+8)*z+56)*z+336)*z+1680)*z+6720)*z+20160)*z+40320)*z+e2)/e3)
  fd=(((((((((-z-9)*z-72)*z-504)*z-3024)*z-15120)*z-60480)*z-141120)*z+e2)*z-362880*e1-362880)/(e3*z)
  fdd=((((((((((-3*z-62)*z-522)*z-3888)*z-25200)*z-139104)*z-635040)*z-2177280)*z+201600*e1-4072320)*z-725760*e1-2177280)*z-9434880*e1-9434880)/(e3*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Beta08-14 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=40320*e1-40320
  e3=ez*z4*z4*z
  f=(((((((((z+8)*z+56)*z+336)*z+1680)*z+6720)*z+20160)*z+40320)*z+e2)/e3)
  fd=(((((((((-z-9)*z-72)*z-504)*z-3024)*z-15120)*z-60480)*z-141120)*z+e2)*z-362880*e1-362880)/(e3*z)
  oz=z
  w=z-f/fd
  ew=exp(w)
  w2=w*w, w4=w2*w2
  fw=(((((((((w+8)*w+56)*w+336)*w+1680)*w+6720)*w+20160)*w+40320)*w+40320*ew*ew-40320)/(ew*w4*w4*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Beta08-15 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=40320*e1-40320
  e3=ez*z4*z4*z
  f=(((((((((z+8)*z+56)*z+336)*z+1680)*z+6720)*z+20160)*z+40320)*z+e2)/e3)
  fd=(((((((((-z-9)*z-72)*z-504)*z-3024)*z-15120)*z-60480)*z-141120)*z+e2)*z-362880*e1-362880)/(e3*z)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Beta08-16 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  ep=exp(p1), pp2=p1*p1, pp4=pp2*pp2
  fz=(((((((((p1+8)*p1+56)*p1+336)*p1+1680)*p1+6720)*p1+20160)*p1+40320)*p1+(40320*ep*ep-40320))/(pp4*pp4*p1*ep)):
  ez=exp(z)
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=(((((((((z+8)*z+56)*z+336)*z+1680)*z+6720)*z+20160)*z+40320)*z+(40320*ez*ez-40320))/(z4*z4*z*ez))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Beta08-19 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*(((((((((x+8)*x+56)*x+336)*x+1680)*x+6720)*x+20160)*x+40320)*x+(40320*ex*ex-40320))/(x4*x4*x*ex))
  x=x-t*(((((((((y+8)*y+56)*y+336)*y+1680)*y+6720)*y+20160)*y+40320)*y+(40320*ey*ey-40320))/(y4*y4*y*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Beta08-20 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*sin(((((((((x+8)*x+56)*x+336)*x+1680)*x+6720)*x+20160)*x+40320)*x+(40320*ex*ex-40320))/(x4*x4*x*ex))
  x=x-t*sin(((((((((y+8)*y+56)*y+336)*y+1680)*y+6720)*y+20160)*y+40320)*y+(40320*ey*ey-40320))/(y4*y4*y*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Beta08-21 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1(((((((((x+8)*x+56)*x+336)*x+1680)*x+6720)*x+20160)*x+40320)*x+(40320*ex*ex-40320))/(x4*x4*x*ex))
  x=x-t*fn1(((((((((y+8)*y+56)*y+336)*y+1680)*y+6720)*y+20160)*y+40320)*y+(40320*ey*ey-40320))/(y4*y4*y*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Beta08-22 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((x+8)*x+56)*x+336)*x+1680)*x+6720)*x+20160)*x+40320)*x+(40320*ex*ex-40320))/(x4*x4*x*ex))
  Ty=fn2(((((((((y+8)*y+56)*y+336)*y+1680)*y+6720)*y+20160)*y+40320)*y+(40320*ey*ey-40320))/(y4*y4*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Beta08-23 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((x+8)*x+56)*x+336)*x+1680)*x+6720)*x+20160)*x+40320)*x+(40320*ex*ex-40320))/(x4*x4*x*ex))
  Ty=fn2(((((((((y+8)*y+56)*y+336)*y+1680)*y+6720)*y+20160)*y+40320)*y+(40320*ey*ey-40320))/(y4*y4*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Beta08-24 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1(((((((((x+8)*x+56)*x+336)*x+1680)*x+6720)*x+20160)*x+40320)*x+(40320*ex*ex-40320))/(x4*x4*x*ex))
  x=x-t*fn2(((((((((y+8)*y+56)*y+336)*y+1680)*y+6720)*y+20160)*y+40320)*y+(40320*ey*ey-40320))/(y4*y4*y*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Beta08-25 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1(((((((((x+8)*x+56)*x+336)*x+1680)*x+6720)*x+20160)*x+40320)*x+(40320*ex*ex-40320))/(x4*x4*x*ex))
  x=x-t*fn2(((((((((y+8)*y+56)*y+336)*y+1680)*y+6720)*y+20160)*y+40320)*y+(40320*ey*ey-40320))/(y4*y4*y*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Beta08-26 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((x+8)*x+56)*x+336)*x+1680)*x+6720)*x+20160)*x+40320)*x+(40320*ex*ex-40320))/(x4*x4*x*ex))
  Ty=fn1(((((((((y+8)*y+56)*y+336)*y+1680)*y+6720)*y+20160)*y+40320)*y+(40320*ey*ey-40320))/(y4*y4*y*ey))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Beta08-27 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((x+8)*x+56)*x+336)*x+1680)*x+6720)*x+20160)*x+40320)*x+(40320*ex*ex-40320))/(x4*x4*x*ex))
  Ty=fn1(((((((((y+8)*y+56)*y+336)*y+1680)*y+6720)*y+20160)*y+40320)*y+(40320*ey*ey-40320))/(y4*y4*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Beta08-28 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((x+8)*x+56)*x+336)*x+1680)*x+6720)*x+20160)*x+40320)*x+(40320*ex*ex-40320))/(x4*x4*x*ex))
  Ty=fn1(((((((((y+8)*y+56)*y+336)*y+1680)*y+6720)*y+20160)*y+40320)*y+(40320*ey*ey-40320))/(y4*y4*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Beta08-29 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((x+8)*x+56)*x+336)*x+1680)*x+6720)*x+20160)*x+40320)*x+(40320*ex*ex-40320))/(x4*x4*x*ex))
  Ty=fn1(((((((((y+8)*y+56)*y+336)*y+1680)*y+6720)*y+20160)*y+40320)*y+(40320*ey*ey-40320))/(y4*y4*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Beta08-30 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[8] = (exp(-z)-8Beta[7])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ex=exp(x0), ey=exp(x1)
  xx=x0*x0, yy=x1*x1, x4=xx*xx, y4=yy*yy
  Fx0=((((((((x0+8)*x0+56)*x0+336)*x0+1680)*x0+6720)*x0+20160)*x0+40320)*x0+(40320*ex*ex-40320))/(x4*x4*x0*ex)
  Fx1=((((((((x1+8)*x1+56)*x1+336)*x1+1680)*x1+6720)*x1+20160)*x1+40320)*x1+(40320*ey*ey-40320))/(y4*y4*x1*ey)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Beta09-01 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Fx=-(((((((((x+9)*x+72)*x+504)*x+3024)*x+15120)*x+60480)*x+181440)*x+362880)*x+(362880*ex*ex-362880))/(x4*x4*x2*ex)
  Fy=-(((((((((y+9)*y+72)*y+504)*y+3024)*y+15120)*y+60480)*y+181440)*y+362880)*y+(362880*ey*ey-362880))/(y4*y4*y2*ey)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Beta09-02 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  bailout=p1+4, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  z=-(((((((((z+9)*z+72)*z+504)*z+3024)*z+15120)*z+60480)*z+181440)*z+362880)*z+(362880*ez*ez-362880))/(z4*z4*z2*ez)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Beta09-03 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  const=p1, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  z=const+(-(((((((((z+9)*z+72)*z+504)*z+3024)*z+15120)*z+60480)*z+181440)*z+362880)*z+(362880*ez*ez-362880))/(z4*z4*z2*ez))
  |z|<100
  ;SOURCE: chby3.frm
}


Beta09-04 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  const=pixel, z=p1:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  z=const+(-(((((((((z+9)*z+72)*z+504)*z+3024)*z+15120)*z+60480)*z+181440)*z+362880)*z+(362880*ez*ez-362880))/(z4*z4*z2*ez))
  |z|<100
  ;SOURCE: chby4.frm
}


Beta09-05 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=362880*e1-362880
  e3=ez*z4*z4*z2
  f=(-(((((((((z+9)*z+72)*z+504)*z+3024)*z+15120)*z+60480)*z+181440)*z+362880)*z+e2)/e3)
  fd=((((((((((z+10)*z+90)*z+720)*z+5040)*z+30240)*z+151200)*z+604800)*z+1451520)*z-e2)*z+3628800*e1+3628800)/(e3*z)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Beta09-06 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=362880*e1-362880
  e3=ez*z4*z4*z2
  f=(-(((((((((z+9)*z+72)*z+504)*z+3024)*z+15120)*z+60480)*z+181440)*z+362880)*z+e2)/e3)
  fd=((((((((((z+10)*z+90)*z+720)*z+5040)*z+30240)*z+151200)*z+604800)*z+1451520)*z-e2)*z+3628800*e1+3628800)/(e3*z)
  fdd=(((((((((((3*z+69)*z+650)*z+5490)*z+41040)*z+267120)*z+1481760)*z6804000)*z+23708160)*z-1814400*e1+46085760)*z+7257600*e1+21772800)*z+105235200*e1+105235200)/(e3*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Beta09-07 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=362880*e1-362880
  e3=ez*z4*z4*z2
  f=(-(((((((((z+9)*z+72)*z+504)*z+3024)*z+15120)*z+60480)*z+181440)*z+362880)*z+e2)/e3)
  fd=((((((((((z+10)*z+90)*z+720)*z+5040)*z+30240)*z+151200)*z+604800)*z+1451520)*z-e2)*z+3628800*e1+3628800)/(e3*z)
  oz=z
  w=z-f/fd
  ew=exp(w)
  w2=w*w, w4=w2*w2
  fw=(-(((((((((w+9)*w+72)*w+504)*w+3024)*w+15120)*w+60480)*w+181440)*w+362880)*w+362880*ew*ew-362880)/(ew*w4*w4*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Beta09-08 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=sin(-(((((((((x+9)*x+72)*x+504)*x+3024)*x+15120)*x+60480)*x+181440)*x+362880)*x+(362880*ex*ex-362880))/(x4*x4*x2*ex))
  Ty=sin(-(((((((((y+9)*y+72)*y+504)*y+3024)*y+15120)*y+60480)*y+181440)*y+362880)*y+(362880*ey*ey-362880))/(y4*y4*y2*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Beta09-09 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(-(((((((((x+9)*x+72)*x+504)*x+3024)*x+15120)*x+60480)*x+181440)*x+362880)*x+(362880*ex*ex-362880))/(x4*x4*x2*ex))
  Ty=fn1(-(((((((((y+9)*y+72)*y+504)*y+3024)*y+15120)*y+60480)*y+181440)*y+362880)*y+(362880*ey*ey-362880))/(y4*y4*y2*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Beta09-10 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  ep=exp(p1), pp2=p1*p1, pp4=pp2*pp2
  fz=(-(((((((((p1+9)*p1+72)*p1+504)*p1+3024)*p1+15120)*p1+60480)*p1+181440)*p1+362880)*p1+(362880*ep*ep-362880))/(pp4*pp4*pp2*ep)):
  ez=exp(z)
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=(-(((((((((z+9)*z+72)*z+504)*z+3024)*z+15120)*z+60480)*z+181440)*z+362880)*z+(362880*ez*ez-362880))/(z4*z4*z2*ez))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Beta09-11 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  const=p1, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  z=const*(-(((((((((z+9)*z+72)*z+504)*z+3024)*z+15120)*z+60480)*z+181440)*z+362880)*z+(362880*ez*ez-362880))/(z4*z4*z2*ez))
  |z|<100
  ;SOURCE: chby11.frm
}


Beta09-12 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  const=pixel, z=p1:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  z=const*(-(((((((((z+9)*z+72)*z+504)*z+3024)*z+15120)*z+60480)*z+181440)*z+362880)*z+(362880*ez*ez-362880))/(z4*z4*z2*ez))
  |z|<100
  ;SOURCE: chby12.frm
}


Beta09-13 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=362880*e1-362880
  e3=ez*z4*z4*z2
  f=(-(((((((((z+9)*z+72)*z+504)*z+3024)*z+15120)*z+60480)*z+181440)*z+362880)*z+e2)/e3)
  fd=((((((((((z+10)*z+90)*z+720)*z+5040)*z+30240)*z+151200)*z+604800)*z+1451520)*z-e2)*z+3628800*e1+3628800)/(e3*z)
  fdd=(((((((((((3*z+69)*z+650)*z+5490)*z+41040)*z+267120)*z+1481760)*z6804000)*z+23708160)*z-1814400*e1+46085760)*z+7257600*e1+21772800)*z+105235200*e1+105235200)/(e3*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Beta09-14 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=362880*e1-362880
  e3=ez*z4*z4*z2
  f=(-(((((((((z+9)*z+72)*z+504)*z+3024)*z+15120)*z+60480)*z+181440)*z+362880)*z+e2)/e3)
  fd=((((((((((z+10)*z+90)*z+720)*z+5040)*z+30240)*z+151200)*z+604800)*z+1451520)*z-e2)*z+3628800*e1+3628800)/(e3*z)
  oz=z
  w=z-f/fd
  ew=exp(w)
  w2=w*w, w4=w2*w2
  fw=(-(((((((((w+9)*w+72)*w+504)*w+3024)*w+15120)*w+60480)*w+181440)*w+362880)*w+362880*ew*ew-362880)/(ew*w4*w4*w2))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Beta09-15 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=362880*e1-362880
  e3=ez*z4*z4*z2
  f=(-(((((((((z+9)*z+72)*z+504)*z+3024)*z+15120)*z+60480)*z+181440)*z+362880)*z+e2)/e3)
  fd=((((((((((z+10)*z+90)*z+720)*z+5040)*z+30240)*z+151200)*z+604800)*z+1451520)*z-e2)*z+3628800*e1+3628800)/(e3*z)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Beta09-16 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  ep=exp(p1), pp2=p1*p1, pp4=pp2*pp2
  fz=(-(((((((((p1+9)*p1+72)*p1+504)*p1+3024)*p1+15120)*p1+60480)*p1+181440)*p1+362880)*p1+(362880*ep*ep-362880))/(pp4*pp4*pp2*ep)):
  ez=exp(z)
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=(-(((((((((z+9)*z+72)*z+504)*z+3024)*z+15120)*z+60480)*z+181440)*z+362880)*z+(362880*ez*ez-362880))/(z4*z4*z2*ez))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Beta09-19 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*(-(((((((((x+9)*x+72)*x+504)*x+3024)*x+15120)*x+60480)*x+181440)*x+362880)*x+(362880*ex*ex-362880))/(x4*x4*x2*ex))
  x=x-t*(-(((((((((y+9)*y+72)*y+504)*y+3024)*y+15120)*y+60480)*y+181440)*y+362880)*y+(362880*ey*ey-362880))/(y4*y4*y2*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Beta09-20 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*sin(-(((((((((x+9)*x+72)*x+504)*x+3024)*x+15120)*x+60480)*x+181440)*x+362880)*x+(362880*ex*ex-362880))/(x4*x4*x2*ex))
  x=x-t*sin(-(((((((((y+9)*y+72)*y+504)*y+3024)*y+15120)*y+60480)*y+181440)*y+362880)*y+(362880*ey*ey-362880))/(y4*y4*y2*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Beta09-21 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1(-(((((((((x+9)*x+72)*x+504)*x+3024)*x+15120)*x+60480)*x+181440)*x+362880)*x+(362880*ex*ex-362880))/(x4*x4*x2*ex))
  x=x-t*fn1(-(((((((((y+9)*y+72)*y+504)*y+3024)*y+15120)*y+60480)*y+181440)*y+362880)*y+(362880*ey*ey-362880))/(y4*y4*y2*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Beta09-22 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(-(((((((((x+9)*x+72)*x+504)*x+3024)*x+15120)*x+60480)*x+181440)*x+362880)*x+(362880*ex*ex-362880))/(x4*x4*x2*ex))
  Ty=fn2(-(((((((((y+9)*y+72)*y+504)*y+3024)*y+15120)*y+60480)*y+181440)*y+362880)*y+(362880*ey*ey-362880))/(y4*y4*y2*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Beta09-23 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(-(((((((((x+9)*x+72)*x+504)*x+3024)*x+15120)*x+60480)*x+181440)*x+362880)*x+(362880*ex*ex-362880))/(x4*x4*x2*ex))
  Ty=fn2(-(((((((((y+9)*y+72)*y+504)*y+3024)*y+15120)*y+60480)*y+181440)*y+362880)*y+(362880*ey*ey-362880))/(y4*y4*y2*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Beta09-24 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1(-(((((((((x+9)*x+72)*x+504)*x+3024)*x+15120)*x+60480)*x+181440)*x+362880)*x+(362880*ex*ex-362880))/(x4*x4*x2*ex))
  x=x-t*fn2(-(((((((((y+9)*y+72)*y+504)*y+3024)*y+15120)*y+60480)*y+181440)*y+362880)*y+(362880*ey*ey-362880))/(y4*y4*y2*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Beta09-25 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1(-(((((((((x+9)*x+72)*x+504)*x+3024)*x+15120)*x+60480)*x+181440)*x+362880)*x+(362880*ex*ex-362880))/(x4*x4*x2*ex))
  x=x-t*fn2(-(((((((((y+9)*y+72)*y+504)*y+3024)*y+15120)*y+60480)*y+181440)*y+362880)*y+(362880*ey*ey-362880))/(y4*y4*y2*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Beta09-26 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(-(((((((((x+9)*x+72)*x+504)*x+3024)*x+15120)*x+60480)*x+181440)*x+362880)*x+(362880*ex*ex-362880))/(x4*x4*x2*ex))
  Ty=fn1(-(((((((((y+9)*y+72)*y+504)*y+3024)*y+15120)*y+60480)*y+181440)*y+362880)*y+(362880*ey*ey-362880))/(y4*y4*y2*ey))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Beta09-27 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(-(((((((((x+9)*x+72)*x+504)*x+3024)*x+15120)*x+60480)*x+181440)*x+362880)*x+(362880*ex*ex-362880))/(x4*x4*x2*ex))
  Ty=fn1(-(((((((((y+9)*y+72)*y+504)*y+3024)*y+15120)*y+60480)*y+181440)*y+362880)*y+(362880*ey*ey-362880))/(y4*y4*y2*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Beta09-28 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(-(((((((((x+9)*x+72)*x+504)*x+3024)*x+15120)*x+60480)*x+181440)*x+362880)*x+(362880*ex*ex-362880))/(x4*x4*x2*ex))
  Ty=fn1(-(((((((((y+9)*y+72)*y+504)*y+3024)*y+15120)*y+60480)*y+181440)*y+362880)*y+(362880*ey*ey-362880))/(y4*y4*y2*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Beta09-29 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(-(((((((((x+9)*x+72)*x+504)*x+3024)*x+15120)*x+60480)*x+181440)*x+362880)*x+(362880*ex*ex-362880))/(x4*x4*x2*ex))
  Ty=fn1(-(((((((((y+9)*y+72)*y+504)*y+3024)*y+15120)*y+60480)*y+181440)*y+362880)*y+(362880*ey*ey-362880))/(y4*y4*y2*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Beta09-30 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[9] = (-exp(-z)-9Beta[8])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ex=exp(x0), ey=exp(x1)
  xx=x0*x0, yy=x1*x1, x4=xx*xx, y4=yy*yy
  Fx0=-(((((((((x0+9)*x0+72)*x0+504)*x0+3024)*x0+15120)*x0+60480)*x0+181440)*x0+362880)*x0+(362880*ex*ex-362880))/(x4*x4*xx*ex)
  Fx1=-(((((((((x1+9)*x1+72)*x1+504)*x1+3024)*x1+15120)*x1+60480)*x1+181440)*x1+362880)*x1+(362880*ey*ey-362880))/(y4*y4*yy*ey)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Beta10-01 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Fx=((((((((((x+10)*x+90)*x+720)*x+5040)*x+30240)*x+151200)*x+604800)*x+1814400)*x+3628800)*x+(3628800*ex*ex-3628800))/(x4*x4*x2*x*ex)
  Fy=((((((((((y+10)*y+90)*y+720)*y+5040)*y+30240)*y+151200)*y+604800)*y+1814400)*y+3628800)*y+(3628800*ey*ey-3628800))/(y4*y4*y2*y*ey)
  x=x-t*Fy, y=y+t*Fx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby1.frm
}


Beta10-02 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  bailout=p1+4, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  z=((((((((((z+10)*z+90)*z+720)*z+5040)*z+30240)*z+151200)*z+604800)*z+1814400)*z+3628800)*z+(3628800*ez*ez-3628800))/(z4*z4*z2*z*ez)
  |z|<=bailout
  ;SOURCE: chby2.frm
}


Beta10-03 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  const=p1, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  z=const+(((((((((((z+10)*z+90)*z+720)*z+5040)*z+30240)*z+151200)*z+604800)*z+1814400)*z+3628800)*z+(3628800*ez*ez-3628800))/(z4*z4*z2*z*ez))
  |z|<100
  ;SOURCE: chby3.frm
}


Beta10-04 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  const=pixel, z=p1:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  z=const+(((((((((((z+10)*z+90)*z+720)*z+5040)*z+30240)*z+151200)*z+604800)*z+1814400)*z+3628800)*z+(3628800*ez*ez-3628800))/(z4*z4*z2*z*ez))
  |z|<100
  ;SOURCE: chby4.frm
}


Beta10-05 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=3628800*e1-3628800
  e3=ez*z4*z4*z2*z
  f=(((((((((((z+10)*z+90)*z+720)*z+5040)*z+30240)*z+151200)*z+604800)*z+1814400)*z+3628800)*z+e2)/e3)
  fd=(((((((((((-z-11)*z-110)*z-990)*z-7920)*z-55440)*z-332640)*z-1663200)*z-6652800)*z-16329600)*z+e2)*z-39916800*e1-39916800)/(e3*z)
  oz=z
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby5.frm
}


Beta10-06 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=3628800*e1-3628800
  e3=ez*z4*z4*z2*z
  f=(((((((((((z+10)*z+90)*z+720)*z+5040)*z+30240)*z+151200)*z+604800)*z+1814400)*z+3628800)*z+e2)/e3)
  fd=(((((((((((-z-11)*z-110)*z-990)*z-7920)*z-55440)*z-332640)*z-1663200)*z-6652800)*z-16329600)*z+e2)*z-39916800*e1-39916800)/(e3*z)
  fdd=((((((((((((-3*z-76)*z-792)*z-7480)*z-63360)*z-475200)*z-3104640)*z-17297280)*z-79833600)*z-281836800)*z+18144000*e1-566092800)*z-79833600*e1-239500800)*z-1277337600*e1-1277337600)/(e3*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=|z-oz|
  ;SOURCE: chby6.frm
}


Beta10-07 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=3628800*e1-3628800
  e3=ez*z4*z4*z2*z
  f=(((((((((((z+10)*z+90)*z+720)*z+5040)*z+30240)*z+151200)*z+604800)*z+1814400)*z+3628800)*z+e2)/e3)
  fd=(((((((((((-z-11)*z-110)*z-990)*z-7920)*z-55440)*z-332640)*z-1663200)*z-6652800)*z-16329600)*z+e2)*z-39916800*e1-39916800)/(e3*z)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  ew=exp(w)
  fw=(((((((((((w+10)*w+90)*w+720)*w+5040)*w+30240)*w+151200)*w+604800)*w+1814400)*w+3628800)*w+3628800*ew*ew-3628800)/(ew*w4*w4*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|z-oz|
  ;SOURCE: chby7.frm
}


Beta10-08 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=sin(((((((((((x+10)*x+90)*x+720)*x+5040)*x+30240)*x+151200)*x+604800)*x+1814400)*x+3628800)*x+(3628800*ex*ex-3628800))/(x4*x4*x2*x*ex))
  Ty=sin(((((((((((y+10)*y+90)*y+720)*y+5040)*y+30240)*y+151200)*y+604800)*y+1814400)*y+3628800)*y+(3628800*ey*ey-3628800))/(y4*y4*y2*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}


Beta10-09 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((((x+10)*x+90)*x+720)*x+5040)*x+30240)*x+151200)*x+604800)*x+1814400)*x+3628800)*x+(3628800*ex*ex-3628800))/(x4*x4*x2*x*ex))
  Ty=fn1(((((((((((y+10)*y+90)*y+720)*y+5040)*y+30240)*y+151200)*y+604800)*y+1814400)*y+3628800)*y+(3628800*ey*ey-3628800))/(y4*y4*y2*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby9.frm
}


Beta10-10 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  ep=exp(z), pp2=p1*p1, pp4=pp2*pp2
  fz=(((((((((((p1+10)*p1+90)*p1+720)*p1+5040)*p1+30240)*p1+151200)*p1+604800)*p1+1814400)*p1+3628800)*p1+(3628800*ep*ep-3628800))/(pp4*pp4*pp2*p1*ep)):
  ez=exp(z)
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=(((((((((((z+10)*z+90)*z+720)*z+5040)*z+30240)*z+151200)*z+604800)*z+1814400)*z+3628800)*z+(3628800*ez*ez-3628800))/(z4*z4*z2*z*ez))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  |fz|>bailout
  ;SOURCE: chby10.frm
}


Beta10-11 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  const=p1, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  z=const*(((((((((((z+10)*z+90)*z+720)*z+5040)*z+30240)*z+151200)*z+604800)*z+1814400)*z+3628800)*z+(3628800*ez*ez-3628800))/(z4*z4*z2*z*ez))
  |z|<100
  ;SOURCE: chby11.frm
}


Beta10-12 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  const=pixel, z=p1:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  z=const*(((((((((((z+10)*z+90)*z+720)*z+5040)*z+30240)*z+151200)*z+604800)*z+1814400)*z+3628800)*z+(3628800*ez*ez-3628800))/(z4*z4*z2*z*ez))
  |z|<100
  ;SOURCE: chby12.frm
}


Beta10-13 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=3628800*e1-3628800
  e3=ez*z4*z4*z2*z
  f=(((((((((((z+10)*z+90)*z+720)*z+5040)*z+30240)*z+151200)*z+604800)*z+1814400)*z+3628800)*z+e2)/e3)
  fd=(((((((((((-z-11)*z-110)*z-990)*z-7920)*z-55440)*z-332640)*z-1663200)*z-6652800)*z-16329600)*z+e2)*z-39916800*e1-39916800)/(e3*z)
  fdd=((((((((((((-3*z-76)*z-792)*z-7480)*z-63360)*z-475200)*z-3104640)*z-17297280)*z-79833600)*z-281836800)*z+18144000*e1-566092800)*z-79833600*e1-239500800)*z-1277337600*e1-1277337600)/(e3*z2)
  oz=z
  z=z-r*f/(fd-fdd*f/(fd+fd))
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby13.frm
}


Beta10-14 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  r=p1, bailout=sqr(real(p2))/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=3628800*e1-3628800
  e3=ez*z4*z4*z2*z
  f=(((((((((((z+10)*z+90)*z+720)*z+5040)*z+30240)*z+151200)*z+604800)*z+1814400)*z+3628800)*z+e2)/e3)
  fd=(((((((((((-z-11)*z-110)*z-990)*z-7920)*z-55440)*z-332640)*z-1663200)*z-6652800)*z-16329600)*z+e2)*z-39916800*e1-39916800)/(e3*z)
  oz=z
  w=z-f/fd
  w2=w*w, w4=w2*w2
  ew=exp(w)
  fw=(((((((((((w+10)*w+90)*w+720)*w+5040)*w+30240)*w+151200)*w+604800)*w+1814400)*w+3628800)*w+3628800*ew*ew-3628800)/(ew*w4*w4*w2*w))
  z=w-fw/fd
  z=z-r*f/fd
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby14.frm
}


Beta10-15 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  r=p1, bailout=real(p2)/10000, z=pixel:
  ez=exp(z)
  z2=z*z, z4=z2*z2
  e1=ez*ez
  e2=3628800*e1-3628800
  e3=ez*z4*z4*z2*z
  f=(((((((((((z+10)*z+90)*z+720)*z+5040)*z+30240)*z+151200)*z+604800)*z+1814400)*z+3628800)*z+e2)/e3)
  fd=(((((((((((-z-11)*z-110)*z-990)*z-7920)*z-55440)*z-332640)*z-1663200)*z-6652800)*z-16329600)*z+e2)*z-39916800*e1-39916800)/(e3*z)
  oz=z
  z=z-r*f/fd
  bailout<=sqrt(|(|z|)-(|oz|)|)
  ;SOURCE: chby15.frm
}


Beta10-16 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  bailout=real(p2)/10000, z=pixel, oz=p1
  ep=exp(z), pp2=p1*p1, pp4=pp2*pp2
  fz=(((((((((((p1+10)*p1+90)*p1+720)*p1+5040)*p1+30240)*p1+151200)*p1+604800)*p1+1814400)*p1+3628800)*p1+(3628800*ep*ep-3628800))/(pp4*pp4*pp2*p1*ep)):
  ez=exp(z)
  z2=z*z, z4=z2*z2
  zt=z
  foz=fz
  fz=(((((((((((z+10)*z+90)*z+720)*z+5040)*z+30240)*z+151200)*z+604800)*z+1814400)*z+3628800)*z+(3628800*ez*ez-3628800))/(z4*z4*z2*z*ez))
  z=z-fz*(z-oz)/(fz-foz)
  oz=zt
  bailout<=|(|z|)-(|oz|)|
  ;SOURCE: chby16.frm
}


Beta10-19 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*(((((((((((x+10)*x+90)*x+720)*x+5040)*x+30240)*x+151200)*x+604800)*x+1814400)*x+3628800)*x+(3628800*ex*ex-3628800))/(x4*x4*x2*x*ex))
  x=x-t*(((((((((((y+10)*y+90)*y+720)*y+5040)*y+30240)*y+151200)*y+604800)*y+1814400)*y+3628800)*y+(3628800*ey*ey-3628800))/(y4*y4*y2*y*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby19.frm
}


Beta10-20 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*sin(((((((((((x+10)*x+90)*x+720)*x+5040)*x+30240)*x+151200)*x+604800)*x+1814400)*x+3628800)*x+(3628800*ex*ex-3628800))/(x4*x4*x2*x*ex))
  x=x-t*sin(((((((((((y+10)*y+90)*y+720)*y+5040)*y+30240)*y+151200)*y+604800)*y+1814400)*y+3628800)*y+(3628800*ey*ey-3628800))/(y4*y4*y2*y*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby20.frm
}


Beta10-21 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1(((((((((((x+10)*x+90)*x+720)*x+5040)*x+30240)*x+151200)*x+604800)*x+1814400)*x+3628800)*x+(3628800*ex*ex-3628800))/(x4*x4*x2*x*ex))
  x=x-t*fn1(((((((((((y+10)*y+90)*y+720)*y+5040)*y+30240)*y+151200)*y+604800)*y+1814400)*y+3628800)*y+(3628800*ey*ey-3628800))/(y4*y4*y2*y*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby21.frm
}


Beta10-22 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((((x+10)*x+90)*x+720)*x+5040)*x+30240)*x+151200)*x+604800)*x+1814400)*x+3628800)*x+(3628800*ex*ex-3628800))/(x4*x4*x2*x*ex))
  Ty=fn2(((((((((((y+10)*y+90)*y+720)*y+5040)*y+30240)*y+151200)*y+604800)*y+1814400)*y+3628800)*y+(3628800*ey*ey-3628800))/(y4*y4*y2*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby22.frm
}


Beta10-23 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((((x+10)*x+90)*x+720)*x+5040)*x+30240)*x+151200)*x+604800)*x+1814400)*x+3628800)*x+(3628800*ex*ex-3628800))/(x4*x4*x2*x*ex))
  Ty=fn2(((((((((((y+10)*y+90)*y+720)*y+5040)*y+30240)*y+151200)*y+604800)*y+1814400)*y+3628800)*y+(3628800*ey*ey-3628800))/(y4*y4*y2*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby23.frm
}


Beta10-24 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  t=p1, bailout=4, z=fn3(pixel):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1(((((((((((x+10)*x+90)*x+720)*x+5040)*x+30240)*x+151200)*x+604800)*x+1814400)*x+3628800)*x+(3628800*ex*ex-3628800))/(x4*x4*x2*x*ex))
  x=x-t*fn2(((((((((((y+10)*y+90)*y+720)*y+5040)*y+30240)*y+151200)*y+604800)*y+1814400)*y+3628800)*y+(3628800*ey*ey-3628800))/(y4*y4*y2*y*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby24.frm
}


Beta10-25 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  y=y+t*fn1(((((((((((x+10)*x+90)*x+720)*x+5040)*x+30240)*x+151200)*x+604800)*x+1814400)*x+3628800)*x+(3628800*ex*ex-3628800))/(x4*x4*x2*x*ex))
  x=x-t*fn2(((((((((((y+10)*y+90)*y+720)*y+5040)*y+30240)*y+151200)*y+604800)*y+1814400)*y+3628800)*y+(3628800*ey*ey-3628800))/(y4*y4*y2*y*ey))
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby25.frm
}


Beta10-26 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  t=p1, bailout=real(p3), z=pixel, v=imag(p3):
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((((x+10)*x+90)*x+720)*x+5040)*x+30240)*x+151200)*x+604800)*x+1814400)*x+3628800)*x+(3628800*ex*ex-3628800))/(x4*x4*x2*x*ex))
  Ty=fn1(((((((((((y+10)*y+90)*y+720)*y+5040)*y+30240)*y+151200)*y+604800)*y+1814400)*y+3628800)*y+(3628800*ey*ey-3628800))/(y4*y4*y2*y*ey))
  x=x-t*Ty, y=y+t*Tx
  w=fn1(x+flip(y))
  z=fn3(v/fn2(w*w))+p2
  |z|<=bailout
  ;SOURCE: chby26.frm
}


Beta10-27 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*sin(y+tan(3*y))
  newy=y-h*sin(x+tan(3*x))
  x=newx, y=newy
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((((x+10)*x+90)*x+720)*x+5040)*x+30240)*x+151200)*x+604800)*x+1814400)*x+3628800)*x+(3628800*ex*ex-3628800))/(x4*x4*x2*x*ex))
  Ty=fn1(((((((((((y+10)*y+90)*y+720)*y+5040)*y+30240)*y+151200)*y+604800)*y+1814400)*y+3628800)*y+(3628800*ey*ey-3628800))/(y4*y4*y2*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby27.frm
}


Beta10-28 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  t=p1, bailout=real(p2), z=pixel, x=real(pixel)
  y=imag(pixel), h=imag(p2):
  newx=x-h*fn2(y+fn3(3*y))
  newy=y-h*fn2(x+fn3(3*x))
  x=newx, y=newy
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((((x+10)*x+90)*x+720)*x+5040)*x+30240)*x+151200)*x+604800)*x+1814400)*x+3628800)*x+(3628800*ex*ex-3628800))/(x4*x4*x2*x*ex))
  Ty=fn1(((((((((((y+10)*y+90)*y+720)*y+5040)*y+30240)*y+151200)*y+604800)*y+1814400)*y+3628800)*y+(3628800*ey*ey-3628800))/(y4*y4*y2*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby28.frm
}


Beta10-29 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  t=p1, bailout=4, z=pixel:
  x=real(z), y=imag(z)
  ex=exp(x), ey=exp(y)
  x2=x*x, y2=y*y, x4=x2*x2, y4=y2*y2
  Tx=fn1(((((((((((x+10)*x+90)*x+720)*x+5040)*x+30240)*x+151200)*x+604800)*x+1814400)*x+3628800)*x+(3628800*ex*ex-3628800))/(x4*x4*x2*x*ex))
  Ty=fn1(((((((((((y+10)*y+90)*y+720)*y+5040)*y+30240)*y+151200)*y+604800)*y+1814400)*y+3628800)*y+(3628800*ey*ey-3628800))/(y4*y4*y2*y*ey))
  x=x-t*Ty, y=y+t*Tx
  z=x+flip(y)
  test=(|Tx|+|Ty|)
  test>=bailout && test<=1e30
  ;SOURCE: chby29.frm
}


Beta10-30 {; V.1.1 - earlier versions may be discarded
           ; Copyright (c)1998,1999 Morgan L. Owens
           ; = Beta[10] = (exp(-z)-10Beta[9])/z
  z=pixel*(p1==0)+p1
  r=p2, bailout=.0000001
  x0=(1,1), x1=pixel:
  ex=exp(x0), ey=exp(x1)
  xx=x0*x0, yy=x1*x1, x4=xx*xx, y4=yy*yy
  Fx0=((((((((((x0+10)*x0+90)*x0+720)*x0+5040)*x0+30240)*x0+151200)*x0+604800)*x0+1814400)*x0+3628800)*x0+(3628800*ex*ex-3628800))/(x4*x4*xx*x0*ex)
  Fx1=((((((((((x1+10)*x1+90)*x1+720)*x1+5040)*x1+30240)*x1+151200)*x1+604800)*x1+1814400)*x1+3628800)*x1+(3628800*ey*ey-3628800))/(y4*y4*yy*x1*ey)
  z=z-r*(x1-x0)*Fx1/(Fx1-Fx0)
  x2=z, x0=x1, x1=x2
  bailout<|x2|
  ;SOURCE: chby30.frm
}


Betacron {
  z = pixel:
  z = (z*z/sqrt(z)) + z*fn1(z) + p1
  z = z - pixel + (z*0.05)
  |z| < 4
  ;SOURCE: omicron.frm
}


Betacron_2 {
  z = pixel:
  z = (z*z/sqrt(z)) + z*fn1(z) + p1
  z = fn2(z) + pixel - (z*0.5)
  |z| < 4
  ;SOURCE: omicron.frm
}


Betacron_3 {
  z = pixel:
  z = sqr(z) + ((z*z)*0.75) + pixel
  z = (1 / z + sqrt(z)) - pixel 
  z = fn1(z) 
  |z| < 4
  ;SOURCE: omicron.frm
}


bfly (XYAXIS) {
   ; Be creative and try to use these terms in novel ways.
   ; You have to be careful what you initialize here
   ; or everything goes to 0.0
  z = zp1 = pixel, zp2 = (0,0):
  temp = z
  z  = z * zp1 + zp2
  zp2 = zp1
  zp1 = temp
  |zp1| <= 4 
  ;SOURCE: noel.frm
}


bfly1 (XAXIS) {
   ; A minor variation on exp1 [init to pixel], gives another
   ; butterfly symmetry.
  z = zp = pixel:
  temp = z
  z = -exp(z) - zp
  zp = temp
  |zp| <= 4 
  ;SOURCE: noel.frm
}


bfly2 (XAXIS) {
   ; Try a minor real axis offset in the iterative loop.
  z=pixel, zp = (0,0):
  temp = z
  z = 1-exp(z) - zp
  zp = temp
  |zp| <= 4 
  ;SOURCE: noel.frm
}


bfly3 (XAXIS) {
   ; How about a conjugation of a cosine function
  z=pixel, zp = z1 = (0,0):
  temp = z
  z = 1-cos(z) - zp
  zp = conj(temp)
  |zp| <= 4 
  ;SOURCE: noel.frm
}


Bhakti {
  z = pixel:
  z = z + p1
  r = fn2(z) * z  
  q = z^pi 
  z = fn1(z) * (r/q)
  |z| <= 4
  ;SOURCE: shakti.frm
}


Bif+pi {; Peter Anders (anders@physik.hu-berlin.de)
        ; replaced "pi" with "approxpi". G. Martin, 7/9/99
  z=p1, c=pixel, approxpi=3.14159265:
  z=z+c*fn1(approxpi*z)
  |fn2(z)|<real(p2) 
  ;SOURCE: lambda.frm
}


Bif=pi {; Peter Anders (anders@physik.hu-berlin.de)
        ; replaced "pi" with "approxpi". G. Martin, 7/9/99
  z=p1, c=pixel, approxpi=3.14159265:
  z=c*fn1(approxpi*z)
  |fn2(z)|<real(p2) 
  ;SOURCE: lambda.frm
}


Biflambda {; Peter Anders (anders@physik.hu-berlin.de)
  z=p1, c=pixel:
  z=c*fn1(z)*(1-fn1(z))
  |fn2(z)|<real(p2) 
  ;SOURCE: lambda.frm
}


Bifmay {; Peter Anders (anders@physik.hu-berlin.de)
  z=p1, c=pixel, b=imag(p2):
  z=c*z/((1+z)^b)
  |fn1(z)|<real(p2) 
  ;SOURCE: lambda.frm
}


Bifstewart {; Peter Anders (anders@physik.hu-berlin.de)
  z=p1, c=pixel:
  z=c*fn1(z)*fn1(z)-1
  |fn2(z)|<real(p2) 
  ;SOURCE: lambda.frm
}


Bifurcation {; Peter Anders (anders@physik.hu-berlin.de)
  z=p1, c=pixel:
  z=z+c*fn1(z)*(1-fn1(z))
  |fn2(z)|<real(p2) 
  ;SOURCE: lambda.frm
}


bigmandel {; Mandel set of z^2 + c
  z=c=pixel:
  z=z*z+c
  |z|<=400
  ;SOURCE: 97msg.frm
}


BILL12 (YAXIS) {; Bill Rossi
                ; replaced "pi" with "approxpi". G. Martin, 7/9/99
  z=pixel, approxpi=22/7:
  z=fn1(z)/fn2(z)-(fn3(z)*approxpi)
  z=fn4((z)/approxpi)
  |z| <= 4
  ;SOURCE: abpf96.frm
}


BILL13 (yaxis) {; Bill Rossi
                ; replaced "pi" with "approxpi". G. Martin, 7/9/99
  z=pixel, approxpi=3.142857142857:
  z=fn1(z)/fn2(z)-(fn3(z)*approxpi)
  z=fn4((z)^approxpi)
  |z| <= 4
  ;SOURCE: billatny.frm
}


BILL14 (YAXIS) {; Bill Rossi
                ; replaced "pi" with "approxpi". G. Martin, 7/9/99
  z=pixel, approxpi=3.142857142857:
  z=fn1(z)^fn2(z)^(fn3(z)*approxpi)
  z=fn4((z)-approxpi)
  |z| <= 4
  ;SOURCE: abpf96.frm
}


BILL_err7 (yaxis) {; Bill Rossi
  z=Pixel:
  tmp1=fn1(z)^fn2(z)
  tmp2=fn3(z)^fn4(z)
  z=(tmp1/tmp2) 
  |z| <= 4
  ;SOURCE: jpl1.frm
}


bills-rotate3 {; Renamed variable "e" to "ee". G. Martin 7/26/99
  a = real(p1), b = imag(p1)
  c = real(p2), d = imag(p2)
  ee = real(p3), f = imag(p3)
  w = pixel
  x = pixel
  y = pixel
  z = pixel
  :
  w = fn1(x+y)^a + w
  x = fn2(y+w)^b + x
  y = fn3(w+x)^c + y
  z = (w^2 - (x^2) * (y^2))*d + z*ee
  |z| < f
  ;SOURCE: 99msg.frm
}


bills_diff {; Mar-4-98
  c = x = pixel, y = pixel + p1:
  xtemp = x^p2 + c
  x = fn1(xtemp)
  ytemp = y^p3 + c
  y = fn1(ytemp)
  d = |x-y|
  z = d^2
  |z| < 2
  ;SOURCE: 98msg.frm
}


bills_diff_delt1  {; Apr-13-98
                   ; p1 = offset for y var
                   ; real p2 = base real exponent
                   ; imag p2 = base imag exponent
                   ; real p3 = exponent real delta
                   ; imag p3 = exponent imag delta
                   ;
  c = x = pixel, y = pixel + p1
  splus = real(p2) + real(p3) + flip(imag(p2) + imag(p3))
  sminus = real(p2) - real(p3) + flip(imag(p2) - imag(p3)):
  xtemp = x^splus + c
  x = fn1(xtemp)
  ytemp = y^sminus + c
  y = fn1(ytemp)
  d = |x-y|
  z = d^2
  |z| < 2
  ;SOURCE: 98msg.frm
}


bills_wonder {
  z = 1/pixel, a = real(p1), b = imag(p1):
  ztemp = z^a - z^b
  z = (fn1(ztemp)^p2)/z
  |z| < real(p3)
  ;SOURCE: 98msg.frm
}


bills_wonder2 {
  z = 1/pixel, a = real(p1), b = imag(p1):
  ztemp = z^a - z^b
  z = (fn1(ztemp)^p2)/fn2(z)
  |z| < real(p3)
  ;SOURCE: 99msg.frm
}


bills_xy-trade {; Changed variable "e" to "ee". G. Martin 7/10/99
  a = real(p1), b = imag(p1), z = pixel
  d = real(p2), ee = imag(p2)
  bail = real(p3):
  x = real(z), x1 = z^a
  y = imag(z), y1 = z^b
  ztemp = fn1(x) + d*fn2(y1) + fn1(y) + ee*fn2(x1)
  z = fn3(ztemp)
  |z| > bail
  ;SOURCE: 99msg.frm
}


bills_xy-trade4 {
     ; Replaced variable "e" with "ee", 5/7/99. G. Martin
  a = real(p1), b = imag(p1)
  c = real(p2), d = imag(p2)
  ee = real(p3), f = imag(p3)
  z = pixel+1/pixel
  zold = pixel^ee:
  x = (real(z)-real(zold))^a
  y = (imag(z)-imag(zold))^b
  zold = z
  z = (y +flip(x))
  z = (fn1(z))^c - (fn2(zold))^d
  |z| < f
  ;SOURCE: 98msg.frm
}


bills_xy-trade4g {
  a = real(p1), b = imag(p1)
  c = real(p2), d = imag(p2)
  g = real(p3), f = imag(p3)
  z = pixel+1/pixel
  zold = pixel^g:
  x = (real(z)-real(zold))^a
  y = (imag(z)-imag(zold))^b
  zold = z
  z = (y +flip(x))
  z = (fn1(z))^c - (fn2(zold))^d
  |z| < f
  ;SOURCE: 99msg.frm
}


bills_xy-trade6 {; Changed variable "e" to "ee". G. Martin 7/10/99
  a = real(p1), b = imag(p1)
  c = real(p2), d = imag(p2)
  ee = real(p3), f = imag(p3)
  z = pixel+c/pixel
  zold = pixel^ee:
  x = (real(z)-real(zold))^a
  y = (imag(z)-imag(zold))^b
  zold = fn3(z)
  z = (y +flip(x))
  z = ( (fn1(z)) - (fn2(zold)) )^d
  |z| < f
  ;SOURCE: 99msg.frm
}


billsfm4 {
  z = p1, temp = pixel :
  z = fn1(temp^p2)
  IF (5 < z)
    temp = fn2(temp)
  ELSE
    temp = fn3(z)
  ENDIF
  z < 100
  ;SOURCE: 99msg.frm
}


billsfn2i {
  z = pixel, a = zpoint = p1^z:
  temp = z
  z = (z^p3 - zpoint^p2) / a
  zpoint = fn1(temp), |zpoint| <= 4
  ;SOURCE: 98msg.frm
}


billsfn3 {
  z = pixel, ztemp = p1 :
  z = ztemp^p2 - fn1(z^p3)
  ztemp = real(z)
  z < 4
  ;SOURCE: 98msg.frm
}


billsfn4 {; Bill Decker, 1999 
  z = p1, temp = pixel :
  z = fn1(temp^p2)
  IF (5 < z)
    temp = fn2(temp)
  ELSE
    temp = fn3(z)
  ENDIF
  z < 100
  ;SOURCE: 99msg.frm
}


Billsfrm (YAXIS) {; Based on a formula by Paul Carlson
  z = pixel:
  z = (fn1(z)^4) / (fn2(z)^3) / (fn3(z)^2) / (fn4(z))
  |z| <=4
  ;SOURCE: brossi.frm
}


billsfv4 {
  temp = pixel :
  z = fn1(temp^p1)
  IF (5 < z)
    temp = fn2(temp)
  ELSE
    temp = fn3(z)
  ENDIF
  z < 100
  ;SOURCE: 99msg.frm
}


BillTry3 {; Bill Rossi, billatny@nyiq.net
  z = pixel, c=p1:
  z = ((z-1) * c * (real(p1)>=0)) + ((z+1) * |c|/c * (real(p1)<0))
  |z| <= 4 
  ;SOURCE: billspir.frm
}


BillTry4 {; Bill Rossi
  z = pixel, c=p1:
  z = ((z-1) * c * (real(p1)>=0)) + ((z+1) * |c|/c * (real(p1)<0))
  z = fn1(z) + c, z = fn2(c) + z
  |z| <= 4 
  ;SOURCE: billspir.frm
}


BillTry6 (yaxis) {; Bill Rossi
  z = pixel, c =pixel:
  z = fn1(z)
  c = pixel * c + z
  c = fn2(c)
  z = z * pixel - c + z
  c = pixel + c + z
  c = fn3(c)
  z = z * pixel / c + z
  c = pixel + c + z
  c = fn4(c)
  z = z * pixel + c / z
  |z| <= 4
  ;SOURCE: 97msg.frm
}


binary_J {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=0.50000, d0=0.50000
  a1=0.50000, d1=0.50000
  a2=0.01000, b2=-0.50000, c2=0.50000, d2=0.01000
  al0=0.25000, k0=1.28174
  al1=0.25000, k1=-1.21827
  al2=0.25010, k2=-3.83048, l2=2.36091
  z=pixel:
  x=real(z)
  y=imag(z)
  o0=(d0*x+k0)/al0+flip((a0*y)/al0)
  op0=|o0-p2|
  o1=(d1*x+k1)/al1+flip((a1*y)/al1)
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


binary_M {
   ; This is a formula rendition of an ifs entry from fractint.ifs.
   ; The conversion was done with ifsinv.exe, a program
   ; written by Ramiro Perez (rperez@ns.pa)
  a0=0.50000, d0=0.50000
  a1=0.50000, d1=0.50000
  a2=0.01000, b2=-0.50000, c2=0.50000, d2=0.01000
  al0=0.25000, k0=1.28174
  al1=0.25000, k1=-1.21827
  al2=0.25010, k2=-3.83048, l2=2.36091
  z=pixel:
  x=real(z)
  y=imag(z)
  o0=(d0*x+k0)/al0+flip((a0*y)/al0)
  op0=|o0-pixel|
  o1=(d1*x+k1)/al1+flip((a1*y)/al1)
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


BirdOfPrey (XAXIS_NOPARM) {; Optimized by Sylvie Gallet
  z = p1 :
  z = cosxx(sqr(z) + pixel) + pixel
  |z| <= 4
  ;SOURCE: fract196.frm
}


BirdOfPrey+ (XAXIS_NOPARM) {; Jon Osuch
                            ; Try p1=0, p2=4, fn1=sqr, fn2=cosxx
      ; Edited for Fractint v. 20 by George Martin, 10/98
  z = p1
  x = 1:
  z=fn1(z)+pixel
  z=fn2(z)+pixel
  x = x+1
  |z| <=p2
  ;SOURCE: jpl1.frm
}


BirdOfPreyC (XAXIS_NOPARM) {
      ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSE
    z=cosxx(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}


BirdOfPreyC.1 (XAXIS_NOPARM) {
      ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSE
    z=cos(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}


bizarre {; Edited for Fractint v. 20 by George Martin 10/98
  z=sqr(z)+pixel
  z=exp(z)+pixel
  z=log(z)+pixel
  x=x+1
  |z|<=4
  ;SOURCE: bizarre.frm
}


BJ-BC-1e {; Modified Bob Carr modified Sylvie Gallet frm.
  z=pixel
  c=pixel^2+0.25
  iter=1, rad=6, center=(-7.6,-3.0)
  pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
  zn=(center+rad/(pix-center)), limit=real(p1)
  test0=1, b1=16, b2=0.0001, test3=0:
  test1=(iter<limit), test0=1-test0, test2=(iter!=limit)
  z=(z+zn)*test2-(zn), z2=z*z+c, z4=z2*z2
  z6=z2*z4, z1=((z6*z-1)/(imag(p1)*z6))
  z=(z*z+(c-((0.3,0.65))-c/8))*test1+((z-z1)*(1-test1))
  test3=(test3 || (|z|>b1))
  z=z*1.01105*(1-(test3 && test0 && test1))
  iter=iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 96msg.frm
}


BJ-BC-1g {; Modified Bob Carr modified Sylvie Gallet frm.
  z=pixel
  c=pixel^2+0.25
  iter=1, rad=6, center=(-7.6,-3.0)
  pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
  zn=(center+rad/(pix-center)), limit=real(p1)
  test0=1, b1=16, b2=0.0001, test3=0:
  test1=(iter<limit), test0=1-test0, test2=(iter!=limit)
  z=(z-zn)*test2+(zn), z2=z*z/fn1(zn*pixel), z4=z2*z2
  z6=z2*z4, z1=((z6*z-1)/(imag(p1)*z6))
  z=(z*z+(c-((0.3,0.65))-c/8))*test1+((z-z1)*(1-test1))
  test3=(test3 || (|z|>b1))
  z=z*1.01105*(1-(test3 && test0 && test1))
  iter=iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 96msg.frm
}


BJ-BC1924pt3 {; Modified Bob Carr frm from a modified Sylvie Gallet frm.
              ; For FN1 check out
  z= pixel, c =(-0.7456,3.245)
  z=c=z
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z6*z-1)/(4*z6)+fn1(pixel) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  z7=z*z*z
  z8=(z+c)^pixel/(z*z+(zn*z2)/z7)
  c=z+c/2.125
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: bej's.frm
}


BJ-BC1974 {; Modified Bob Carr frm from a modified Sylvie Gallet frm.
  c=z=pixel, d=log(1/pixel-conj(1/pixel))
  compt=0, limit=(abs(p1/5)), bailout=4
  p=(0.9/-2.48)-1.00763 :
  test=(compt<limit)+fn1(c)
  c=c*test+p*(1-test)
  z=z*z+c-real(d/5*pixel)
  compt=compt+0.39
  |z|<=bailout
  ;SOURCE: bej's.frm
}


BJ-BC1974-c {; Modified Bob Carr frm from a modified Sylvie Gallet frm.
  c=z=pixel, d=log(1/pixel-conj(1/pixel))
  compt=0, limit=(abs(p1/5))/p2, bailout=4
  p=(1.0/-2.48)-(1.00763):
  test=(compt<limit)+fn1(c)
  c=c*(test/p3)+p*(1-test)
  z=(z*z+c)-real(d/100*pixel)
  compt=compt+0.39
  |z|<=bailout
  ;SOURCE: bej0015.frm
}


BJ-BC1974-h {; Modified Bob Carr frm from a modified Sylvie Gallet frm.
  c=z=fn2(pixel*pixel)/p2, d=log(1/pixel-conj(1/pixel))
  compt=0, limit=(abs(p1/5)), bailout=4
  p=(1.0/-2.48)-(1.00763):
  test=(compt<limit)+fn1(c)
  c=c*(test/p3)+p*(1-test)
  z=(z*z+c)-real(d/100*pixel)
  compt=compt+0.39
  |z|<=bailout
  ;SOURCE: bej0015.frm
}


BJ-BC1997b (XAXIS) {; Modified Bob Carr 
                    ; modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel, c=pixel
  z1=c1=(1.5*z), z2=c2=(2.25*z), z3=c3=(3.375*z), z4=c4=(5.0625*z)
  l1=real(p1) 
  l2=imag(p1)
  l3=real(p2)
  l4=imag(p2)
  bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  z=fn1(z)*(1-(t1||t2||t3||t4))
  c=c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 +c4*t4 
  z=z*z+c
  iter=iter+1
  |real(z)| <= bailout
  ;SOURCE: sg-bc-bj.frm
}


BJ-BC1997c (XAXIS) {; Modified Bob Carr 
                    ; modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel, c=pixel
  z1=c1=(1.5*z), z2=c2=(2.25*z), z3=c3=(3.375*z), z4=c4=(5.0625*z)
  l1=real(p1) 
  l2=imag(p1)
  l3=real(p2)
  l4=imag(p2)
  bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  z=z*(1-(t1||t2||t3||t4))
  c=c*(1-(t1||t2||t3||t4))+fn1(c1*t1)+fn2(c2*t2)+fn3(c3*t3)+fn4(c4*t4) 
  z=z*z+c
  iter=iter+1
  |real(z)| <= bailout
  ;SOURCE: sg-bc-bj.frm
}


BJ-BC1997d (XAXIS) {; Modified Bob Carr 
                    ; modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel, c=pixel
  z1=c1=(1.5*z), z2=c2=(2.25*z), z3=c3=(3.375*z), z4=c4=(5.0625*z)
  l1=real(p1) 
  l2=imag(p1)
  l3=real(p2)
  l4=imag(p2)
  bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  z=z*(1-(t1||t2||t3||t4))
  c=c*(1-(t1||t2||t3||t4))+fn1(c1*t1)+fn2(fn1(c2*t2))\
      +fn3(fn2(fn1(c3*t3)))+fn4(fn3(fn2(fn1(c4*t4)))) 
  z=z*z+c
  iter=iter+1
  |real(z)| <= bailout
  ;SOURCE: sg-bc-bj.frm
}


BJ-BC1997e (XAXIS) {; Modified Bob Carr 
                    ; modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel, c=pixel
  z1=c1=(1.5*z), z2=c2=(2.25*z), z3=c3=(3.375*z), z4=c4=(5.0625*z)
  l1=real(p1) 
  l2=imag(p1)
  l3=real(p2)
  l4=imag(p2)
  bailout=16, iter=0 :
  t1=fn1(iter==l1), t2=fn2(iter==l2), t3=fn3(iter==l3), t4=fn4(iter==l4)
  z=z*(1-(t1||t2||t3||t4))
  c=c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 +c4*t4 
  z=z*z+c
  iter=iter+1
  |real(z)| <= bailout
  ;SOURCE: sg-bc-bj.frm
}


BJ-BC1997f (XAXIS) {; Modified Bob Carr 
                    ; modified Sylvie Gallet frm. [101324,3444],1996
  z=pixel, c=pixel
  z1=c1=(1.5*z), z2=c2=(2.25*z), z3=c3=(3.375*z), z4=c4=(5.0625*z)
  l1=real(p1) 
  l2=imag(p1)
  l3=real(p2)
  l4=imag(p2)
  bailout=16, iter=0 :
  t1=fn1(iter==l1), t2=fn2(iter==l2), t3=fn3(iter==l3), t4=fn4(iter==l4)
  c=(-0.7456,-.0186)
  c=sin(conj(-0.81256,-0.1295))+p3
  z=z*(1-(t1||t2||t3||t4))
  c=c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 +c4*t4 
  z=z*z+c
  iter=iter+1
  |real(z)| <= bailout
  ;SOURCE: sg-bc-bj.frm
}


BJ-BC1997g (XAXIS) {; Modified Bob Carr modified Sylvie Gallet frm. 
                    ; [101324,3444],1996
       ; here are some combos for the fn's:
   ;fn1:          fn2:             fn3:      fn4:
   ; sin          ident            ident     conj
   ; sqr          ident            ident     conj
   ; flip         ident            ident     conj
   ; sqr                           ident     conj
   ; ident        flip             log       conj
   ; ident        sqr,log,conj     ident     conj
  z=pixel, c=pixel
  z1=c1=(1.5*z), z2=c2=(2.25*z), z3=c3=(3.375*z), z4=c4=(5.0625*z)
  l1=real(p1) 
  l2=imag(p1)
  l3=real(p2)
  l4=imag(p2)
  bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  z=z*(1-(t1||t2||t3||t4))
  c=c*(1-(t1||t2||t3||t4))+fn1((c1*t1)+(c2*t2))+fn2(fn1(fn1(c3*t3)))+fn3(fn2(fn1(c4*t4))) 
  z=fn4(fn3(fn2(fn1(flip(z)))))
  z=z*z+c
  iter=iter+1
  |real(z)| <= bailout
  ;SOURCE: 96msg.frm
}


BJ-BC1997h (XAXIS) {;Modified Bob Carr modified Sylvie Gallet frm. 
                    ; [101324,3444],1996
                    ; Edited for Fractint v. 20 by George Martin 10/98
     ; here are some combos for the fn's:
   ;   fn1:         fn2:             fn3:      fn4:
   ;    sin          ident            ident     conj
   ;    sqr          ident            ident     conj
   ;    flip         ident            ident     conj
   ;    sqr          flip             ident     conj
   ;    ident        abs              log       conj
   ;    ident        sqr,log,conj     ident     conj
  z=pixel, c=pixel
  z1=c1=(1.5*z), z2=c2=(2.25*z), z3=c3=(3.375*z), z4=c4=(5.0625*z)
  l1=real(p1) 
  l2=imag(p1)
  l3=real(p2)
  l4=imag(p2)
  bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  z=z*(1-(t1||t2||t3||t4))
  c=c*(1-(t1||t2||t3||t4))+fn1((c1*t1)+(c2*t2))+fn2(fn1(fn1(c3*t3)))+fn3(fn2(fn1(c4*t4))) 
  z=fn3(fn2(fn1(flip(z))))
  z=z*z+c
  iter=iter+1
  |real(z)| <= bailout
  ;SOURCE: 96msg.frm
}


BJ-JDfrm010m2 {; Brian Jones [102702,2213], 1996  Requires passes=1
               ; Modified Lee Skinner/Jim Deutch frm
               ; Eliminated assignment to "pixel". G. Martin, 6/27/99
  c = (((whitesq==0)*fn1(pixel*(3/sqrt(pixel))))-whitesq) * pixel\ 
          + whitesq * -pixel
  z = 0:
  z = z*z + c
  |z| < 4
  ;SOURCE: phc.frm
}


BJ-JDfrm010m3 {; Brian Jones [102702,2213], 1996    Requires passes=1
               ; Modified Lee Skinner/Jim Deutch frm
               ; Eliminated assignment to "pixel". G. Martin, 6/27/99
  c = (((whitesq==0)*fn1(pixel*fn2(3/sqrt(pixel))))-whitesq) * pixel\ 
          + whitesq * -pixel
  z = 0:
  z = z*z + c
  |z| < 4
  ;SOURCE: phc.frm
}


BJ-JDfrm010m7-a {; Brian Jones [102702,2213], 1996   Requires passes=1
                 ; Jim Deutch/modified by Lee Skinner.
                 ; Eliminated assignment to "pixel". G. Martin, 6/27/99
  c = whitesq * pixel + (whitesq==0) * -pixel
  z = sqr(flip(c)):
  z = z*z + c
  |z| < 4
  ;SOURCE: phc.frm
}


BJ-Lamda*2-a {; Brian Jones [102702,2213], 1996  Requires passes=1
              ; Modification of Ron Barnett's MandJulia frm
  z = pixel+ whitesq*p1 :
  m = p2
  z = (sin(z) * p2)/p3
  abs(imag(z)) <= 64 && abs(real(z)) <= 64
  ;SOURCE: phc.frm
}


BJ-Lesfrm13-001 {; Modified Les St Clair formula "Lesfrm13" 
  z = pixel 
  x = fn1(z), y = fn2(z):
  x = x*p1*pi
  y = y*p2*pi 
  z = fn4(fn3(x)/y)
  |z| <= 4
  ;SOURCE: 96msg.frm
}


BJ-Lesfrm13-002 {; Modified Les St Clair formula "Lesfrm13" 
  z = pixel 
  x = fn1(z), y = fn2(z):
  x = x*p1*pi
  y = y*p2*pi 
  z = fn4(x/fn3(y))
  |z| <= 4
  ;SOURCE: 96msg.frm
}


BJ-Lesfrm13-003 {; Les St Clair, 1996
  z = pixel 
  x = fn1(z*z), y = fn2(z*z):
  x = x*p1*pi
  y = y*p2*pi 
  z = x/y
  |z| <= 4
  ;SOURCE: modles13.frm
}


BJ-Lesfrm13-004 {; Les St Clair, 1996
  z = pixel 
  x = fn1(z*z), y = fn2(z*z):
  x = fn3(x)*p1*pi
  y = fn4(y)*p2*pi 
  z = x/y
  |z| <= 4
  ;SOURCE: modles13.frm
}


BJ-Lesfrm13-005 {; Les St Clair, 1996
  z = pixel 
  x = fn1(z), y = fn2(z):
  x = x*p1*pi
  y = y*p2*pi 
  z = fn3(x/y)/fn4(z)
  |z| <= 4
  ;SOURCE: modles13.frm
}


BJ-Lesfrm13-006 {; Les St Clair, 1996
  z = pixel 
  x = fn1(z), y = fn2(z):
  x = fn3(z*x)*p1*pi
  y = fn4(z*y)*p2*pi 
  z = x/y
  |z| <= 4
  ;SOURCE: modles13.frm
}


BJ-Lesfrm13-007 {; Les St Clair, 1996
  z = pixel, c = z*pixel 
  x = fn1(z), y = fn2(z):
  x = x*p1*pi-c
  y = y*p2*pi-c 
  z = x/y
  |z| <= 4
  ;SOURCE: modles13.frm
}


BJ-Lesfrm13-008 {; Les St Clair, 1996
  z = pixel 
  x1 = fn1(z), y1 = fn2(z)
  x2 = fn3(z*z), y2 = fn4(z*z):
  x1 = x1*p1*pi
  y1 = y1*p2*pi 
  z = x1*x2/y1*y2
  |z| <= 4
  ;SOURCE: modles13.frm
}


BJ-Lesfrm13-012 {; Les St Clair, 1996
  z = pixel, c=(-0.7456,-.0186) 
  x = fn1(z), y = fn2(z):
  c=sin(conj(-0.81256,-0.1295))
  x = x*p1*pi-c
  y = y*p2*pi-c 
  z = x/y
  |z| <= 4
  ;SOURCE: modles13.frm
}


BJ-Man-Galore-g (xaxis) {; Modified Variation on Sylvie Gallet formula. 
   ; George Martin [76440,1143]
   ; periodicity=0 must be set
   ; Try 50 or more for real(p1) - even multiples of
   ;    256 give interesting effects
   ; Try 1.2 - 1.8 for imag(p1)
   ; Try 1000 or more for Maximum Iterations (x menu)
  z=c=pixel, iter=0 
  nextzoom = iterspace = real(p1), magnification = imag(p1):
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  z = z*(1 - test) 
  c = c*(1 - test) + test*magnification*c
  z = fn1(z*z*z+c)
  iter = iter + 1
  |z| <= 16
  ;SOURCE: sg-bc-bj.frm
}


BJ-man-julz-002 {; Sylvie Gallet [101324,3444], 1995
  z=fn1(flip(imag(1-pixel))*conj(tan(pixel))\
    -conj(0.10/pixel)-flip(0.010/pixel)), c = z
  compt=0, limit = real(p1), bailout = 4
  p = (-0.743380900000982,-0.131850030300002)/p2 :
  test = (compt<limit)
  c = fn2(c*test+p*(1-test))
  z = z*z+c
  compt = compt+1
  |z| <= bailout
  ;SOURCE: bejones.frm
}


BJ-man-julz-004 {; Sylvie Gallet [101324,3444], 1995
  c = z = fn1((((0.3,0.6)+pixel)/(0.20/-pixel))*(0.1,1.0)) 
  compt=0, limit = real(p1), bailout = 4
  p = (-0.743380900000982,-0.131850030300002) :
  test = (compt<limit)
  c = c*test+p*(1-test)
  z = z*z+c
  compt = compt+1
  |z| <= bailout
  ;SOURCE: bejones.frm
}


BJ-man-lam-fn-6 {; Sylvie Gallet [101324,3444], 1995
                 ; requires "periodicity=0" (<g> command)
  c = z = fn1(pixel*sqr(1.0,0.1)), lambda = (1.0,0.4) 
  pix2 = pixel*4+0.8, compt = 0, limit = real(p1) :
  test1 = (compt<limit), test2 = (compt!=limit)
  z = (z-pix2)*test2 + pix2
  bailout = 4096 - 4032*test1
  z2 = lambda*sin(z)/(pix2/p2)
  z = (z*z+c-z2)*test1+z2
  compt = compt+1
  |z| <= bailout
  ;SOURCE: bejones.frm
}


BJ-man-lam-fn-9b {; Sylvie Gallet [101324,3444], 1995
                  ; requires "periodicity=0" (<g> command)
  c=z=fn1(conj(sin(pixel*(1.0,0.1)/p2)))/(1.0,0.1)\
      -fn3(conj(sin(pixel*(1.0,0.1)/p2))) 
  lambda = (1.0,0.4)/p3 
  pix2 = fn2(pixel*4+0.8), compt = 0, limit = real(p1):
  test1 = (compt<limit), test2 = (compt!=limit)
  z = (z-pix2)*test2 + pix2
  bailout = 4096 - 4032*test1
  z2 = lambda*sin(z)
  z = (z*z+c-z2)*test1+z2
  compt = compt+1
  |z| <= bailout
  ;SOURCE: bejones.frm
}


BJ-MandJulia {; Brian Jones [102702,2213], 1996  Requires passes=1
              ; Modification of Ron Barnett's MandJulia frm
  z = pixel+(whitesq==0)*p3
  c = whitesq*p1*pixel + (whitesq==0)*p2:
  z=fn1(z*z)*pi
  z=z*z+c 
  |z|<4
  ;SOURCE: phc.frm
}


BJ-MandJulia-a {; Brian Jones [102702,2213], 1996   Requires passes=1
                ; Modification of Ron Barnett's MandJulia frm
  z = pixel+(whitesq==0)*p3
  c = whitesq*p1*pixel + (whitesq==0)*p2:
  z=fn1(z+z)+fn2(z*c)*pi
  z=z*z+c 
  |z|<4
  ;SOURCE: phc.frm
}


BJ-MandsJulia {; Brian Jones [102702,2213], 1996   Requires passes=1
               ; Modification of Ron Barnett's MandJulia frm
  z = pixel+(whitesq==0)*p3
  c = whitesq*p1*pixel + (whitesq==0)*p2:
  z=fn1(z+z)*pi
  z=z*z+c 
  |z|<4
  ;SOURCE: phc.frm
}


BJ-MandsJulia-b {; Brian Jones [102702,2213], 1996  Requires passes=1
                 ; Modification of Ron Barnett's MandJulia frm
   ; p3 will shift the julia set wrt the mandelbrot set
   ; p2 is for the Julia value
  z = (pixel * pixel)+(whitesq==0)*p3
  c = whitesq*p1*pixel + (whitesq==0)*p2:
  z=fn1(z+z)*pi
  z=z*z+c 
  |z|<4
  ;SOURCE: phc.frm
}


BJ-MandsJulia-b-2 {; Brian Jones [102702,2213], 1996  Requires passes=1
                   ; Modification of Ron Barnett's MandJulia frm
   ; p3 will shift the julia set wrt the mandelbrot set
   ; p2 is for the Julia value
  z = (pixel * flip(fn1(pixel*3)))+(whitesq==0)*p3
  c = whitesq*p1*pixel + (whitesq==0)*p2:
  z=sin(z+z)*pi
  z=z*z+c 
  |z|<4
  ;SOURCE: phc.frm
}


BJ-MandsJulia-b-4 {; Brian Jones [102702,2213], 1996  Requires passes=1
                   ; Modification of Ron Barnett's MandJulia frm
  z = (pixel * flip(fn1(pixel*3)))+(whitesq==0)*p3
  c = whitesq*p1*pixel + (whitesq==0)*p2:
  z=sin(z+z)*pi
  z=z*z+c 
  |z|<4
  ;SOURCE: phc.frm
}


BJ-Newton*2 {; Brian Jones [102702,2213], 1996  Requires passes=1
             ; Modification of Ron Barnett's MandJulia frm
  root = 1
  z = pixel+(whitesq==0)*p3
  c = whitesq*p1*pixel + (whitesq==0)*p2:
  z3 = z * (z * z + c)
  z4 = z3 * z
  z = (3 * z4 + root) / (4 * z3)
  .004 <= |z4 - Root|
  ;SOURCE: phc.frm
}


BJ-Newton*2+Man-b {; Brian Jones [102702,2213], 1996  Requires passes=1
                   ; Modification of Ron Barnett's TwoMands frm
                   ; Edited for Fractint v. 20 by George Martin, 10/98
  root=1
  z = c = pixel+(whitesq==0)*p3:
  z = whitesq*(z^p1+c)+(whitesq==0)*(z^p2+c)
  z3 = fn1(z * z) * fn2(z * z * z) * fn3(z + c)
  z4 = z3 * z
  z = (3 * z4 + root) / (4 * z3)
  .004 <= |z4 - Root|
  ;SOURCE: phc.frm
}


BJ-Newton*2-b {; Brian Jones [102702,2213], 1996  Requires passes=1
               ; Modification of Ron Barnett's MandJulia frm
  root = 1
  z = pixel+(whitesq==0)*p3
  c = whitesq*p1*pixel + (whitesq==0)*p2:
  z3 = (z * z) * (z * z) * (z + c)
  z4 = z3 * z
  z = (3 * z4 + root) / (4 * z3)
  .004 <= |z4 - Root|
  ;SOURCE: phc.frm
}


BJ-Newton*2-c {; Brian Jones [102702,2213], 1996  Requires passes=1
               ; Modification of Ron Barnett's MandJulia frm
  root = 1
  z = pixel+(whitesq==0)*p3
  c = whitesq*p1*pixel + (whitesq==0)*p2:
  z3 = (z * z) * (z * z * z) * (z + c)
  z4 = z3 * z
  z = (3 * z4 + root) / (4 * z3)
  .004 <= |z4 - Root|
  ;SOURCE: phc.frm
}


BJ-Newton*2-g {; Brian Jones [102702,2213], 1996  Requires passes=1
               ; Modification of Ron Barnett's MandJulia frm
  root = 1
  z = pixel+(whitesq==0)*p3 * -abs(flip(pixel*3))
  c = whitesq*p1*pixel + (whitesq==0)*p2:
  z3 = fn1(z) * 5 * fn4((z) * fn3(z) * fn2(z*2)) * (z + c)
  z4 = z3 * z
  z = (3 * z4 + root) / (4 * z3)
  .004 <= |z4 - Root|
  ;SOURCE: phc.frm
}


BJ-PHC-CmplxNwtn-1 {; Brian Jones [102702,2213], 1996  Requires passes=1
                    ; Modification of Ron Barnett's MandJulia frm
  pm1 = p1-1
  z = pixel+(whitesq==0)*p2
  oldz = whitesq*pixel + (whitesq==0)*p2:
  oldz = z
  z = (pm1*(z^p1) +1)/(p1 * z^pm1)
  |(z-oldz)|>=|0.01|
  ;SOURCE: phc.frm
}


BJ-PHC-G3-03-a {; Brian Jones [102702,2213], 1996  Requires passes=1
                ; Modification of Sylvie Gallet's 3-03
                ; & Ron Barnett's MandJulia frm
  z = pixel+(whitesq==0)*p3
  x = real(z)+(whitesq==0)*p3 , y = imag(z):
  x1 = x - p1*fn1(y*y+p2*fn2(y))
  y1 = y - p1*fn1(x*x+p2*fn2(x))
  z = (z*z+c) / x1+flip(y1)
  |z|<=4
  ;SOURCE: phc.frm
}


BJ-SG-3-02-a {; Modified Sylvie Gallet [101324,3444], 1996
  z = pixel :
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(y/p2*fn2(y))
  y1 = y - p1*fn1(x/p2*fn2(x))
  z = x1+flip(y1)
  |z| <= 4
  ;SOURCE: msg-1.frm
}


BJ-SG-3-03-g {; Modified Sylvie Gallet [101324,3444], 1996
  z = pixel, c = sin(conj(-0.81256,-0.1295)) :
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(x*x+p2*fn2(y)) 
  y1 = y - p1*fn1(y*y+p2*fn2(x)) 
  z = x1+flip(y1)
  |z| <= 4
  ;SOURCE: sg-bc-bj.frm
}


BJ-SG-3-03-gb {; Brian E. Jones [102702,2213]
   ; Modified Sylvie Gallet [101324,3444], 1996
  z = pixel, c = sin(conj(-0.81256,-0.1295)) :
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(x*x+p2*fn2(y)) * (whitesq == 0)+c* whitesq 
  y1 = y - p1*fn1(y*y+p2*fn2(x)) 
  z = x1+flip(y1)  
  |z| <= 4
  ;SOURCE: 96msg.frm
}


BJ-SG-3-03-gd {; Modified Sylvie Gallet [101324,3444], 1996
  z = pixel, c = sin(conj(-0.81256,-0.1295)) :
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(x*x+p2*fn2(y)) * (whitesq == 0) + c * whitesq 
  y1 = y - p1*fn1(y*y+p2*fn2(x)) 
  z = fn3(x1+flip(y1))  
  |z| <= 4
  ;SOURCE: bj-phc02.frm
}


BJ-SG-3-03-gda {; Modified Sylvie Gallet [101324,3444], 1996
  z = pixel, c = sin(conj(-0.81256,-0.1295)) :
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(x*x+p2*fn2(y)) * fn3((whitesq == 0) + (c/(x+y)) * whitesq)
  y1 = y - p1*fn1(y*y+p2*fn2(x)) 
  z = x1+flip(y1)  
  |z| <= 4
  ;SOURCE: bj-phc02.frm
}


BJ-SG-3-03-h {; Modified Sylvie Gallet [101324,3444], 1996
  z = pixel :
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(y*x*y+p2*fn2(y))
  y1 = y - p1*fn1(x*y*x+p2*fn2(x))
  z = x1+flip(y1)
  |z| <= 4
  ;SOURCE: msg-1.frm
}


BJ-SG-5-07-a {; Modified Gallet 5-07
              ; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = z*(0,1), y = (whitesq == 0) + (z*(0,-1)) * whitesq:
  hx = p1 * fn1(x), hy = p1*fn2(y)
  x = x + hy, y = y + hx
  z = x + flip(y) 
  (|hx|+|hy|) <= p2
  ;SOURCE: 96msg.frm
}


BJ-SG-5-07-c {; Modified Gallet 5-07
              ; Sylvie Gallet [101324,3444], 1996 
  z = pixel, x = fn3(z*(0,1)), y = fn4(z*(0,-1)) :
  hx = p1*fn1(x), hy = p1*fn2(y)
  x = x + hy, y = y + hx
  z = x + flip(y)
  (|hx|+|hy|) <= p2
  ;SOURCE: 96msg.frm
}


BJ-SG-8-1205b {; Sylvie Gallet [101324,3444], Mar 1997
               ; Requires periodicity = 0
  h = cabs(pixel), pinv = 1/p1
  bailout = 2*p1, r = real(p2), ir = imag(p2)
  beta = asin(h/r), alpha = asin(h/(r*ir))
  z = pixel * (((h - sqrt(r*r - h*h) * tan(beta - alpha)) / h) * (h < r) \
      + (h >= r))
  center = fn2(round(p1*z) * pinv)
  test = cabs(z-center) < 0.45*pinv
  z = fn1(cabs(center) + p1 * (test == 0)):
  z = z * z + pixel - (pinv/p3)
  z <= bailout
  ;SOURCE: bj-sg8.frm
}


BJ-SG-G-1-a {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, periodicity=0
  c = z = pixel
  z1 = c1 = fn1(1.5*z), z2 = c2 = fn2(2.25*z) 
  z3 = c3 = fn3(3.375*z), z4 = c4 = fn4(5.0625*z)
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4)
  z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
  c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: sg-bc-bj.frm
}


BJ-SG-G-1-d {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
   ; Edited for Fractint v. 20 by George Martin 10/98
  c = z = pixel
  c1=sin(conj(-0.81256,-0.1295))/p3
  c = fn1(c1)
  z1 = c1 = 1.5*z, z2 = c2 = 2.25*z 
  z3 = c3 = 3.375*z, z4 = c4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4)
  z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
  c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: sg-bc-bj.frm
}


BJ-SG-G-1-e {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
   ; Edited for Fractint v. 20 by George Martin 10/98
  c = z = pixel 
  c1=sin(conj(-0.81256,-0.1295))/p3
  c = fn1(c1)
  z1 = c1 = 1.5*z, z2 = c2 = 2.25*z 
  z3 = c3 = 3.375*z, z4 = c4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4)
  z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
  c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z = z*z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: sg-bc-bj.frm
}


BJ-SG-G-1-f {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
   ; Edited for Fractint v. 20 by George Martin 10/98
  c = z = pixel
  c1=sin(conj(-0.81256,-0.1295))/p3
  c = fn1(c1)
  z1 = c1 = 1.5*z, z2 = c2 = 2.25*z 
  z3 = c3 = 3.375*z, z4 = c4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4)
  z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
  c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z = z*z*z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: sg-bc-bj.frm
}


BJ-SG-G-1-g020 {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = pixel
  z1 = c1 = 1.5*z, z2 = c2 = 2.25*z 
  z3 = c3 = 3.375*z, z4 = c4 = 5.0625*z 
  z5 = c5 = z*z*z, z6 = c6 = z*z*z*z*z*z*z*z*z
  l1 = real(p1), l2 = imag(p1) 
  l3 = real(p2), l4 = imag(p2) 
  l5 = real(p3), l6 = imag(p3)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2) 
  t3 = (iter==l3), t4 = (iter==l4) 
  t5 = (iter==l5), t6 = (iter==l6)
  z=z*(1-(t1||t2||t3||t4))+z1*t1+z2*t2+z3*t3+z4*t4+fn1(z5*t5)+fn3(z6*t6)
  c=c*(1-(t1||t2||t3||t4))+c1*t1+c2*t2+c3*t3+c4*t4+fn2(c5*t5)+fn4(c6*t6)
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: msg-1.frm
}


BJ-SG-G-1-g021 {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = pixel, c0=(0.08638,-0.4922)
  z1 = c1 = 1.5*z, z2 = c2 = 2.25*z 
  z3 = c3 = 3.375*z, z4 = c4 = 5.0625*z 
  z5 = c5 = z*z*z, z6 = c6 = fn1(z1*z2*z3*z4*z5)
  l1 = real(p1), l2 = imag(p1) 
  l3 = real(p2), l4 = imag(p2) 
  l5 = real(p3), l6 = imag(p3)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2) 
  t3 = (iter==l3), t4 = (iter==l4) 
  t5 = (iter==l5), t6 = (iter==l6)
  z = fn2(z*(1-(t1||t2||t3||t4))+z1*t1+z2*t2+z3*t3+z4*t4+z5*t5+z6*t6)
  c = fn3(c*(1-(t1||t2||t3||t4))+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+c6*t6)
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: msg-1.frm
}


BJ-SG-G-1-g023 {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = pixel, c0=(0.08638,-0.4922)
  z1 = c1 = fn1(1.5*z), z2 = c2 = fn2(2.25*z) 
  z3 = c3 = fn3(3.375*z), z4 = c4 = fn4(5.0625*z) 
  z5 = c5 = z*z*z, z6 = c6 = z1*z2*z3*z4*z5
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  l5 = real(p3), l6 = imag(p3)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2) 
  t3 = (iter==l3), t4 = (iter==l4) 
  t5 = (iter==l5), t6 = (iter==l6)
  z = z*(1-(t1||t2||t3||t4))+z1*t1+z2*t2+z3*t3+z4*t4+z5*t5+z6*t6
  c = c*(1-(t1||t2||t3||t4))+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+c6*t6
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: msg-1.frm
}


BJ-SG-G-1-g024 {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = pixel, c0=(0.08638,-0.4922)
  z1 = c1 = 1.5*z, z2 = c2 = fn1(2.25*z) 
  z3 = c3 = fn2(3.375*z), z4 = c4 = fn3(5.0625*z) 
  z5 = c5 = fn4(7.0268*z), z6 = c6 = z1*z2*z3*z4*z5
  l1 = real(p1), l2 = imag(p1) 
  l3 = real(p2), l4 = imag(p2) 
  l5 = real(p3), l6 = imag(p3)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2) 
  t3 = (iter==l3), t4 = (iter==l4) 
  t5 = (iter==l5), t6 = (iter==l6)
  z = z*(1-(t1||t2||t3||t4))+z1*t1+z2*t2+z3*t3+z4*t4+z5*t5+z6*t6
  c = c*(1-(t1||t2||t3||t4))+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+c6*t6
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: msg-1.frm
}


BJ-SG-G-1-g028 {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = pixel*(0.0,1.0)
  z1 = c1 = fn1(1.5*z), z2 = c2 = fn2(2.25*z) 
  z3 = c3 = fn3(3.375*z), z4 = c4 = fn4(z*c*z)*pixel
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4)
  z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
  c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: msg-1.frm
}


BJ-SG-G-1-g029 {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = pixel*(0.0,1.0)
  z1 = c1 = fn1(1.5*z), z2 = c2 = fn2(2.25*z1) 
  z3 = c3 = fn3(3.375*z2), z4 = c4 = fn4(z*c*z3)*pixel
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4)
  z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
  c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: msg-1.frm
}


BJ-SG-G-1-g030 {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = pixel*(0.1,1.0)
  z1 = c1 = fn1(1.5*z), z2 = c2 = fn2(2.25*z1) 
  z3 = c3 = fn3(3.375*z2), z4 = c4 = fn4(z1*c2*z3)*pixel
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4)
  z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
  c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: msg-1.frm
}


BJ-SG-G-1-g031 {; Modified  Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = pixel*(0.1,1.0)
  z1 = c1 = fn1(1.5*z), z2 = c2 = fn2(2.25*z1) 
  z3 = c3 = fn3(3.375*z2), z4 = c4 = fn4(z1*c2*z3)*(1/pixel)
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4)
  z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
  c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: msg-1.frm
}


BJ-SG-G-1-g032 {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = (3*pixel)-conj(0.001/pixel-flip(0.01/pixel))+1/pixel
  z1 = c1 = fn1(1.5*z), z2 = c2 = fn2(2.25*z1) 
  z3 = c3 = fn3(3.375*z2), z4 = c4 = fn4(z1*c2*z3)*pixel
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4)
  z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
  c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: msg-1.frm
}


BJ-SG-G-1-g033 {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  z=conj(sin(1/pixel-3.594)), c=conj((1/pixel)*(-3.9764,-0.1824))
  z1 = c1 = fn1(1.5*z), z2 = c2 = fn2(2.25*z1) 
  z3 = c3 = fn3(3.375*z2), z4 = c4 = fn4(z1*c2*z3)*(1/pixel)
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4)
  z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
  c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: msg-1.frm
}


BJ-SG-G-1-g034 {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = pixel*(0.1,1.0)
  z1 = c1 = fn1(1.5*z*z*z), z2 = c2 = fn2(2.25*z1) 
  z3 = c3 = fn3(3.375*z2), z4 = c4 = fn4(z1*c2*z3)*(1/pixel)
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4)
  z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
  c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: msg-1.frm
}


BJ-SG-G-1-g035 {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = pixel*(0.1,1.0)
  z1 = c1 = fn1(1.5*z*z), z2 = c2 = fn2(2.25*z1*z) 
  z3 = c3 = fn3(3.375*z2*z), z4 = c4 = fn4(z1*c2*z3)*(1/pixel)
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16 , iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4)
  z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
  c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: msg-1.frm
}


BJ-SG-G-1-g038 {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = pixel*(0.1,1.0)
  z1 = c1 = fn1(1.5*z*z), z2 = c2 = fn2(2.25*z1*z*z*z) 
  z3 = c3 = fn3(3.375*z2*z*z*z*z), z4 = c4 = fn4(z1*c2*z3)*(1/pixel)
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4)
  z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
  c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: msg-1.frm
}


BJ-SG-G-1-g047 {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = pixel*(0.1,1.0)
  z1 = c1 = fn1(1.5*z/z/z), z2 = c2 = fn2(sqrt(2.25*z1)) 
  z3 = c3 = fn3(conj(3.375*z2))*(1/pixel) 
  z4 = c4 = fn4(z1*c2*z3)*((0.1,1.0)/pixel)
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4)
  z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
  c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: msg-1.frm
}


BJ-SG-G-1-g051 {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = pixel*(0.1,1.0)
  z1 = c1 = fn1(1.5*z*z*z*z), z2 = c2 = fn2(sqrt(2.25*z1))
  z3 = c3 = fn3(conj(3.375*z2))*(1/pixel) 
  z4 = c4 = fn4(conj(sin(z1*c2*z3)*(1/pixel)))
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4)
  z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
  c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: msg-1.frm
}


BJ-SG-G-1-g052 {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = pixel*(0.1,1.0)
  z1 = c1 = fn1(z*z*z), z2 = c2 = fn2(2.25*z1) 
  z3 = c3 = fn3(3.375*z2), z4 = c4 = fn4(z1*c2*z3)*(1/pixel)
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4)
  z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
  c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: msg-1.frm
}


BJ-SG-G-1-g053 {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = pixel*(0.1,1.0)
  z1 = c1 = fn1(1.5/(z*z*z)), z2 = c2 = fn2(2.25*z1) 
  z3 = c3 = fn3(3.375*z2), z4 = c4 = fn4(z*z*z)*(1/pixel)
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4)
  z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
  c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: msg-1.frm
}


BJ-SG-G-1-g060 {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = sqr(conj(0.75*(pixel)))
  z1 = c1 = fn1(1.5/(z*z*z*z))/p3, z2 = c2 = fn2(2.25*z1*z*z)
  z3 = c3 = fn3(3.375*z2), z4 = c4 = fn4(z*z*z)^(1/pixel)
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4)
  z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
  c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: msg-1.frm
}


BJ-SG-G-1-g062 {;Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = sqr(conj(0.75*(pixel*pixel)))*(0.1,1.0)
  z1 = c1 = fn1(1.5/(z*z*z*z*z*z*z*z))/p3, z2 = c2 = fn2(2.25*z1*z*z)
  z3 = c3 = fn3(3.375*z2), z4 = c4 = fn4(z*z*z)^(1/pixel)
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4)
  z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
  c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: msg-1.frm
}


BJ-SG-G-1-g067 {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = fn4((((0.3,0.6)+pixel)/(0.20/-pixel))*(0.1,1.0)) 
  z1 = c1 = fn1(conj(sin(0.0742,-0.0391)))*(1.5*z) 
  z2 = c2 = fn2(2.25*z1)
  z3 = c3 = fn3(3.375*z2), z4 = c4 = (z*z*z)*(1/pixel)
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4)
  z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
  c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: msg-1.frm
}


BJ-SG-G-1-g069 {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = pixel*(0.1,1.0)
  z1 = c1 = fn1(1.5*z)*(0.1,1.0), z2 = c2 = fn2(2.25*z1)*(0.1,1.0) 
  z3 = c3 = fn3(3.375*z2)*(0.1,1.0), z4 = c4 = fn4(z1*c2*z3)*pixel
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4)
  z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
  c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z = z*z+c
  iter = iter+1
  |z| <= bailout
  ;SOURCE: msg-1.frm
}


BJ-SG-G-1-g070 {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = pixel*(0.1,1.0)
  z1 = c1 = 1.5*z, z2 = c2 = fn1(fn3(2.25*z1)) 
  z3 = c3 = 3.375*z2, z4 = c4 = fn2(fn4(5.0625*z3))^z*z*z  
  z5 = c5 = z*z*z, z6 = c6 = z*z*z*z*z*z*z*z*z
  l1 = real(p1), l2 = imag(p1) 
  l3 = real(p2), l4 = imag(p2)  
  l5 = real(p3), l6 = imag(p3)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2) 
  t3 = (iter==l3), t4 = (iter==l4) 
  t5 = (iter==l5), t6 = (iter==l6) 
  z = z*(1-(t1||t2||t3||t4||t5||t6))+z1*t1+z2*t2+z3*t3+z4*t4+z5*t5+z6*t6
  c = c*(1-(t1||t2||t3||t4||t5||t6))+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+c6*t6
  iter = iter+1
  z = z*z+c
  |z| <= bailout
  ;SOURCE: msg-1.frm
}


BJ-SG-G-1-g071 {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
   ; Added variable "newpixel". G. Martin, 6/27/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
   ; Borrowed, not stolen from Bob Carr   
  m=conj(0.0130/newpixel)+flip(0.0020/newpixel)+tanh(0.0010/newpixel) 
  z=(newpixel+(newpixel^2.18)+m^6)-0.5                                
  c=cabs(sqr(2*(newpixel)-m))                                      
  z1 = c1 = 1.5*z, z2 = c2 = fn1(2.25*z1) 
  z3 = c3 = fn4(3.375*z2), z4 = c4 = fn2(5.0625*z3)^fn3(z*z*z) 
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2) 
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4) 
  z = z*(1-(t1||t2||t3||t4||t5||t6)) + z1*t1 + z2*t2 + z3*t3 + z4*t4 
  c = c*(1-(t1||t2||t3||t4||t5||t6)) + c1*t1 + c2*t2 + c3*t3 + c4*t4 
  iter = iter+1
  z = z*z+c
  |z| <= bailout
  ;SOURCE: msg-1.frm
}


BJ-SG-G-1-g074 {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
  c = z = pixel, lambda = (1.0,0.4), pix2 = pixel*4+0.8 
  compt = 0, limit = real(p1)
  z1 = c1 = (1.5*z)+fn1((z-pix2)*test2 + pix2 / ((z*z+c-z2)*test1+z2)) 
  z2 = c2 = 2.25*z 
  z3 = c3 = fn2((z-pix2)*test2 + pix2 / ((z*z+c-z2)*test1+z2)) 
  z4 = c4 = fn3((z-pix2)*test2 + pix2 / ((z*z+c-z2)*test1+z2))
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 4096 - 4032*test1 
  iter = 0, pix2 = pixel*4+0.8, compt = 0, limit = real(p3) :
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4)
  test1 = (compt<limit), test2 = (compt!=limit)
  z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
  c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z = (z-pix2)*test2 + pix2
  z5 = lambda*sin(z)
  z = (z*z+c)
  iter = iter+1
  |z| <= bailout
  ;SOURCE: msg-1.frm
}


BJ-SG-G-1-h {; Modified Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, 
   ; periodicity=0
   ; Edited for Fractint v. 20 by George Martin 10/98
  c = z = pixel
  c1=sin(conj(-0.81256,-0.1295))/p3
  c = fn1(c1)
  z1 = c1 = 1.5*z, z2 = c2 = 2.25*z 
  z3 = c3 = 3.375*z, z4 = c4 = 5.0625*z
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  t1 = (iter==l1), t2 = (iter==l2), t3 = (iter==l3), t4 = (iter==l4)
  z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
  c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z = fn2(z*z)*(z*z*z+c)
  iter = iter+1
  |z| <= bailout
  ;SOURCE: sg-bc-bj.frm
}


BJ-SG-man-lam1 {; Modified Sylvie Gallet [101324,3444], 1995
                ; requires "periodicity=0" (<g> command)
  c = z = pixel, lambda = (1.0,0.4)
  pix2 = pixel*4+0.8, compt = 0, limit = real(p1) :
  test1 = (compt<limit), test2 = (compt!=limit)
  z = (z-pix2)*test2 + pix2
  bailout = 20000 + 1000*test1   ; the bug is here...
  z2 = lambda*sin(fn1(z))
  z = (z*z+c-z2)*test1+z2
  compt = compt+1
  |z| <= bailout
  ;SOURCE: sg-bc-bj.frm
}


BJ-SG-man-lam2 {; Modified Sylvie Gallet [101324,3444], 1995
                ; requires "periodicity=0" (<g> command)
  c = z = pixel, lambda = (1.0,0.4)
  pix2 = pixel*4+0.8, compt = 0, limit = real(p1) :
  test1 = (compt<limit), test2 = (compt!=limit)
  z = (z-pix2)*test2 + pix2
  bailout = 20000 + 1000*test1   ; the bug is here...
  z2 = fn1(lambda*fn2(sin(fn3(z))))
  z = (z*z+c-z2)*test1+z2
  compt = compt+1
  |z| <= bailout
  ;SOURCE: sg-bc-bj.frm
}


BJ-SG-man-lam6 {; Modified Sylvie Gallet [101324,3444], 1995
                ; requires "periodicity=0" (<g> command)
  c = z = pixel, lambda = (1.0,0.4)
  pix2 = pixel*4+0.8, compt = 0, limit = real(p1) :
  test1 = (compt<limit), test2 = (compt!=limit)
  z = (z-pix2)*test2 + pix2
  bailout = 20000 + 1000*test1   ; the bug is here...
  z2 = fn1((lambda^p2)*fn2(sin(fn3(z))))
  z = (z*z+c-z2)*test1+z2
  compt = compt+1
  |z| <= bailout
  ;SOURCE: sg-bc-bj.frm
}


BJ-SG-man-lam7 {; Modified Sylvie Gallet [101324,3444], 1995
                ; requires "periodicity=0" (<g> command)
  c = z = pixel, lambda = (1.0,0.4)
  pix2 = pixel*4+0.8, compt = 0, limit = real(p1) :
  test1 = (compt<limit), test2 = (compt!=limit)
  z = (z-pix2)*test2 + pix2
  bailout = 20000 + 1000*test1   ; the bug is here...
  z2 = fn1((lambda^p2)*fn2(sin(fn3(z))))
  c=(-0.7456,-.0186)
  c=sin(conj(-0.81256,-0.1295))
  z = (z*z+c-z2)*test1+z2
  compt = compt+1
  |z| <= bailout
  ;SOURCE: sg-bc-bj.frm
}


BJ-SG-man-man-a {; Modified Sylvie Gallet [101324,3444], 1995
                 ; requires "periodicity=0" (<g> command)
  c1 = (0.34396372130558980 , 0.05608272738673762)
  c2 = (-0.72141758920523890 , 0.25918045895127010)
  c = z = sqr(conj(fn2(pixel))), delta = fn1(c2-c1), b = c+delta
  compt = 0, limit = real(p1), bailout = 16 :
  test1 = (compt<limit), test2 = (compt!=limit)
  z = z * test2
  c = b - delta * test1
  z = z*z+c
  compt = compt+1
  |z| <= bailout
  ;SOURCE: sg-bc-bj.frm
}


BJ-SG-man-man-c {; Modified Sylvie Gallet [101324,3444], 1995
                 ; requires "periodicity=0" (<g> command)
  c1 = (0.34396372130558980 , 0.05608272738673762)
  c2 = (-0.72141758920523890 , 0.25918045895127010)
  c = z = sqr(conj(fn1(fn2(pixel)))), delta = fn3(c2-c1), b = c+delta
  compt = 0, limit = real(p1), bailout = 16 :
  test1 = (compt<limit), test2 = (compt!=limit)
  z = z * test2
  c = b - delta * test1
  z = z*z+c
  compt = compt+1
  |z| <= bailout
  ;SOURCE: sg-bc-bj.frm
}


BJ-SG-man-newt-dd {; Modified Sylvie Gallet [101324,3444], 1995
  z = pixel, c = z, iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn = center+rad/(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = fn1(z*z)/(z*z*z), z4 = z2*z2, z1 = (z4*z-1)/(4*z4)
  z = (z2+c)*test1 + (z-z1)*(1-test1) 
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: msg-1.frm
}


BJ-SG-man-newt-ee {; Modified Sylvie Gallet [101324,3444], 1995
  z = pixel, c = z, iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn = center+rad/(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z+c, z4 = fn1(z2*z2), z1 = (z4*z-1)/(4*z4)
  z = (z2+c)*test1 + (z-z1)*(1-test1) 
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: sg-bc-bj.frm
}


BJ-SG-man-newt-gg {; Modified Sylvie Gallet [101324,3444], 1995
  z = pixel, c = z, iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn = center+rad/(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  x = real(z), y = imag(z)
  x1 = x - p2*fn1(y*y+p2*fn2(y))
  y1 = y - p2*fn1(x*x+p2*fn2(x))
  z = x1+flip(y1)
  z2 = z*z+c, z4 = fn1(z2*z2), z1 = (z4*z-1)/(4*z4)
  z = (z2)*test1 + (z-z1)*(1-test1) 
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: sg-bc-bj.frm
}


BJ-SG-man-newt-h {; Modified Sylvie Gallet [101324,3444], 1995
  z = pixel, c = sqr(fn1(z)/p2)^2+0.25, iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn = center+rad/(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4)
  z = (z2+c)*test1 + (z-z1)*(1-test1) 
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: sg-bc-bj.frm
}


BJ-SG-man-newt-j {; Modified Sylvie Gallet [101324,3444], 1995
  z = pixel, c = sqrt(fn1(conj(fn2(z+pixel)))/p2)^2+0.25, iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn = center+rad/(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4)
  z = (z2+c)*test1 + (z-z1)*(1-test1) 
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: sg-bc-bj.frm
}


BJ-SG-man-newt-k {; Modified Sylvie Gallet [101324,3444], 1995
  z = pixel, c = sqrt(fn1(conj(fn2(z+pixel))/p2))^2+0.25, iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn = center+rad/(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4)
  z = (z2+c)*test1 + (z-z1)*(1-test1) 
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: sg-bc-bj.frm
}


BJ-SG-man-newt-l {; Modified Sylvie Gallet [101324,3444], 1995
  z = pixel, c = fn1(real(pixel))+fn2(sqrt(imag(pixel))), iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn = center+rad/(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4)
  z = (z2+c)*test1 + (z-z1)*(1-test1) 
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: sg-bc-bj.frm
}


BJ-SG-man-newt-p {; Modified Sylvie Gallet [101324,3444], 1995
  z = pixel, c = c=sin(fn1(sqrt(log(1/pixel*0.91/pixel)))), iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn = center+rad/(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4)
  z = (z2+c)*test1 + (z-z1)*(1-test1) 
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: msg-1.frm
}


BJ-SG-MaNewt-001 {; Modified Sylvie Gallet [101324,3444], 1995
  z = fn1(1/pixel), c = z, iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn = center+rad/(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4)
  z = (z2+c)*test1 + (z-z1)*(1-test1) 
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: bejones.frm
}


BJ-SG-MaNewt-014 {; Modified Sylvie Gallet [101324,3444], 1995
  z = pixel + rad, c = z, iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = fn1((10*pixel+(5.0,-3.4))*(-0.1,-0.95))
  zn = fn2(center+rad/(pix-center))
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4)
  z = (z2+c)*test1 + (z-z1)*(1-test1) 
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 96msg.frm
}


BJ-SG-MaNewt-024 {; Modified Sylvie Gallet [101324,3444], 1995
  z = pixel * (center/p2), c = z, iter = 1
  rad = 3.1, center = fn1(-1.0,0.1)
  pix = fn2((10*pixel+((5.0,-1.4)/p3))*(0.0,-1.0))
  zn = fn3(center+rad/(pix-center))
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4)
  z = (z2+c)*test1 + (z-z1)*(1-test1) 
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: bejones.frm
}


BJ-SG-MaNewt-026 {; Modified Sylvie Gallet [101324,3444], 1995
                  ; Unmatched parentheses error corrected by George 
                  ; Martin, 5/4/98
  z = pixel * fn1(rad/p2), c = z, iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = fn2((10*pixel+((5.0,-3.4)/p3))*(0.0,-0.95))
  zn = fn3(center+rad/(pix-center))
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4)
  z = (z2+c)*test1 + (z-z1)*(1-test1) 
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: bejones.frm
}


BJ-SG8-0701 {; Modified Sylvie Gallet frm by Brian E. Jones
             ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; Requires periodicity = 0
             ; 0 < p1 <= 1 (default = 1)
  z = c = zn = pixel
  IF (p1 || imag(p1))
    k = p1
  ELSE
    k = 1
  ENDIF
  :
  zn = zn*zn + c
  IF (abs(zn) < abs(z))
    z = k*real(zn) + fn1(flip(imag(z)))
  ENDIF
  IF (flip(abs(zn)) < flip(abs(z)))
    z = real(z) + k*flip(imag(zn))
  ENDIF
  |zn| <= 4
  ;SOURCE: bj-sg8.frm
}


BJ-SG8-0702 {; Modified Sylvie Gallet frm by Brian E. Jones
             ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; Requires periodicity = 0
             ; 0 < p1 <= 1 (default = 1)
  z = c = zn = pixel
  IF (p1 || imag(p1))
    k = p1
  ELSE
    k = 1
  ENDIF
  :
  zn = zn*zn + c
  IF (abs(zn) < abs(z))
    z = k*real(zn) + flip(imag(z))
  ENDIF
  IF (flip(abs(zn)) < flip(abs(z)))
    z = fn1(real(z) + k*flip(imag(zn)))
  ENDIF
  |zn| <= 4
  ;SOURCE: bj-sg8.frm
}


BJ-SG8-0703 {; Modified Sylvie Gallet frm by Brian E. Jones
             ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; Requires periodicity = 0
             ; 0 < p1 <= 1 (default = 1)
  z = c = zn = pixel
  IF (p1 || imag(p1))
    k = p1
  ELSE
    k = 1
  ENDIF
  :
  zn = zn*zn + c
  IF (abs(zn) < abs(z))
    z = k*real(zn) + flip(imag(z))
  ENDIF
  IF (flip(abs(zn)) < flip(abs(z)))
    z = fn1(real(z)) + k*flip(fn2(imag(zn)))
  ENDIF
  |zn| <= 4
  ;SOURCE: bj-sg8.frm
}


BJ-SG8-1401 {; Modified Sylvie Gallet frm by Brian E. Jones
             ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; Requires periodicity = 0 and decomp = 256
             ; 0 < p1 <= 1
   z = 0, c = zn = pixel, zmin = p1, k = flip(2*pi/zmin):
   zn = zn*zn + c, znc = fn1(cabs(zn))
   IF (znc < zmin)
     zmin = fn2(znc), z = exp(zmin*k)
   ENDIF
   znc <= 4
  ;SOURCE: bj-sg8.frm
}


BJ-SG8-1402 {; Modified Sylvie Gallet frm by Brian E. Jones
             ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; Requires periodicity = 0 and decomp = 256
             ; 0 < p1 <= 1
   z = 0, c = zn = pixel, zmin = p1, k = fn1(flip(2*pi/zmin)):
   zn = zn*zn + c, znc = fn2(cabs(zn))
   IF (znc < zmin)
     zmin = fn3(znc), z = fn4(exp(zmin*k))
   ENDIF
   znc <= 4
  ;SOURCE: bj-sg8.frm
}


BJ-SG8-1403 {; Modified Sylvie Gallet frm by Brian E. Jones
             ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; Requires periodicity = 0 and decomp = 256
             ; 0 < p1 <= 1
   z = 0, c = zn = pixel, zmin = p1, k = flip(2*pi/zmin):
   zn = zn*zn + c, znc = cabs(zn)
   IF (znc < zmin)
     zmin = (znc/p2)*fn1(zn), z = exp(zmin*k)
   ENDIF
   znc <= 4
  ;SOURCE: bj-sg8.frm
}


BJ-SG8-1404a{; Modified Sylvie Gallet frm by Brian E. Jones
             ; Requires periodicity = 0 and decomp = 256
             ; 0 < p1 <= 1
   z = 0, c = zn = pixel, zmin = p1, k = flip(2*pi/zmin):
   zn = zn*zn + c, znc = cabs(real(zn))
   IF (znc < zmin)
     zmin = znc, z = exp(znc*k) 
   ENDIF
   znc <= 4
  ;SOURCE: bj-sg8.frm
}


BJ-Spider-a {; Brian Jones [102702,2213], 1996  Requires passes=1
             ; Modification of Ron Barnett's MandJulia frm
  z = pixel+whitesq*p1
  c = pixel + (whitesq==0)*p2:
  z = (sqr(z) + c)/p3
  c = z + c/2
  |z|<4
  ;SOURCE: phc.frm
}


BJ-Spider-c {; Brian Jones [102702,2213], 1996  Requires passes=1
             ; Modification of Ron Barnett's MandJulia frm
  z = pixel+(whitesq==0)*p3
  c = pixel * p1 * (whitesq==0)/p2:
  z = sqr(z) + c
  c = z + fn1(c/2)/p1
  |z|<4
  ;SOURCE: phc.frm
}


BJ-Zexpe-004e {
  s = exp(1.,0.), z = Pixel:
  z = z ^ s + pixel
  s = fn1(s + fn2(z*s)) / s
  |z| <= 100
  ;SOURCE: bej0015.frm
}


BJ-Zexpe-008 {
  s = fn1(exp(1.,0.)*(p1*p2)), z = pixel:
  z = z ^ s + pixel 
  |z| <= 100
  ;SOURCE: bej0015.frm
}


BJ-Zexpe-009 {
  s = fn1(exp(1.,0.)*fn2(p1*p2)), z = pixel:
  z = z ^ s + pixel 
  |z| <= 100
  ;SOURCE: bej0015.frm
}


BJ-Zexpe-010 {
  s = exp(p1)^fn1(p2), z = pixel:
  z = z ^ s + pixel 
  |z| <= 100
  ;SOURCE: bej0015.frm
}


BJ-Zexpe-016 {
  z = fn1(pixel), s = (exp(1.,0.)*fn2(p1*p2)), Root = 1:
  z3 = ((z^ s + pixel)*z*z)
  z4 = z3 * z
  z = (3 * z4 + Root) / (4 * z3) 
  .004 <= |z4 - Root|
  ;SOURCE: bej0015.frm
}


BJ-Zexpe-018 {
  z = pixel, s = (exp(1.,0.)*fn2(p1*p2)), Root = 1:
  z3 = fn1(z*z)^ s + pixel
  z4 = z3 * z * z
  z5 = (3 * z4 + Root) / (4 * z3) 
  z = z*z + pixel
  .004 <= |z| != |z4 - Root|
  ;SOURCE: bej0015.frm
}


BJ_Newton1 {
  z=pixel, Root=1:
  z=fn1(fn2(z*z+c))
  z1=sqr(z)
  z2=log(z)/z1+1
  z3=z+p1*z2/(cos(z)+z1)
  .0004<|z+Root|
  ;SOURCE: bej3.frm
}


Bjax {
  z=c=2/pixel:
  z =(1/((z^(real(p1)))*(c^(real(p2))))*c) + c
  ;SOURCE: fractint.frm
}


Block {
  z = c = pixel + p1:
  r = fn1(z) / floor(c)
  z = r * z
  q = ceil(c) / fn2(z)
  z = z * (q / r)
  round(z) < 4
  ;SOURCE: cubist.frm
}


Block_2 {
  z = c = pixel:
  r = fn1(z) / floor(c)
  z = r * z + p1
  q = ceil(c) / fn2(z)
  z = z * q * r
  round(z) < 4
  ;SOURCE: cubist.frm
}


Block_3 {
  z = c = pixel:
  r = fn2(z) + p1
  q = fn1(z) * floor(c)
  z = z *(q / r)
  ceil(z) < 4
  ;SOURCE: cubist.frm
}


Block_4 {
  z = c = pixel:
  r = tan(1/z) + p1
  q = floor(z) - p2 * ceil(c) - p3
  z = fn1(z) * r * q
  round(z) < 4
  ;SOURCE: cubist.frm
}


blossom {; Giuseppe Zito
  z = pixel
  c0 = 2.3 ;-0.259954
  d3 = 0.926185
  d8 = 0.144419
  d16 = 0.617725
  : 
  x = real(z), y = imag(z)
  s0 =c0
  s0 = s0 +y
  newx = s0 
  s0 = y
  s0 = s0 /y
  s0 = s0 +x
  s0 = s0 *d3
  s0 = s0 +y
  s0 = s0 -x
  s0 = s0 *d8
  s1 = y
  s0 = s0 *s1
  s0 = s0 -x
  s0 = s0 -d16
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


bmandala {; Giuseppe Zito
  z = pixel
  c9 = 0.185661
  d0 = -0.061291
  d1 = 0.06278
  d4 = -0.589975
  : 
  x = real(z), y = imag(z)
  s0 = x
  s0 = s0 -y
  s0 = s0 *y
  s0 = s0 *y
  s0 = s0 -x
  s0 = s0 -c9
  newx = s0 
  s0 =d0
  s0 = s0 *d1
  s0 = s0 -d4
  s1 = x
  s0 = s0 *s1
  s0 = s0 -y
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


bof6061_jul {; Kerry Mitchell 04feb98
;
;       records the iterate which is closest to the origin
;       and colors by (the log of) its magnitude & iteration count
;       Julia variation
;
;       p1 = Julia parameter
;       real(p2) = bailout (try 4)
;       imag(p2) = iteration count angle scale factor (try 0.1)
;       real(p3) = magnitude (bof60) weight (try 1)
;       real(p3) = iteration count (bof61) weight (try 1)
;       calculation performed on variable zc, z used for coloring
;       use decomp=256
;
  zc=pixel, c=p1, iter=1, r=|zc|, maxr=real(p2)
  minr=maxr, scale61=imag(p2), weighttot=real(p3)+imag(p3)
  weight60=real(p3)/weighttot, weight61=imag(p3)/weighttot:
;
;       check to see if iterate is closer to origin
;         if so, remember this iteration count & distance
;
  IF (r<minr)
    minr=r, itermin=iter
  ENDIF
  iter=iter+1, zc=sqr(zc)+c, r=|zc|
;
;       bailout--escape or maximum iterations
;         set "iteration done" flag (iter-1)
;         take log of minimum distance for bof60 angle
;         scale iteration count for bof61 angle
;         add angles with appropriate weights for final angle
;
  IF ((r>maxr)||(iter==maxit))
    iter=-1
    angle60=log(minr)
    angle61=scale61*itermin
    angle=weight60*angle60+weight61*angle61
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: bof.frm
}


bof6061_man {; Kerry Mitchell 04feb98
;
;       records the iterate which is closest to the origin
;       and colors by (the log of) its magnitude & iteration count
;       Mandelbrot variation
;
;       real(p1) = bailout (try 4)
;       imag(p1) = iteration count angle scale factor (try 0.1)
;       real(p2) = magnitude (bof60) weight (try 1)
;       real(p2) = iteration count (bof61) weight (try 1)
;       calculation performed on variable zc, z used for coloring
;       use decomp=256
;
  zc=0, c=pixel, iter=1, r=|zc|, maxr=real(p1)
  minr=maxr, scale61=imag(p1), weighttot=real(p2)+imag(p2)
  weight60=real(p2)/weighttot, weight61=imag(p2)/weighttot:
  iter=iter+1, zc=sqr(zc)+c, r=|zc|
;
;       check to see if iterate is closer to origin
;         if so, remember this minimum distance & iteration count
;
  IF (r<minr)
    minr=r, itermin=iter
  ENDIF
;
;       bailout--escape or maximum iterations
;         set "iteration done" flag (iter-1)
;         take log of minimum distance for bof60 angle
;         scale iteration count for bof61 angle
;         add angles with appropriate weights for final angle
;
  IF ((r>maxr)||(iter==maxit))
    iter=-1
    angle60=log(minr)
    angle61=scale61*itermin
    angle=weight60*angle60+weight61*angle61
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: bof.frm
}


bof60_jul {; Kerry Mitchell 04feb98
;
;       records the iterate which is closest to the origin
;       and colors by (the log of) its magnitude
;       Julia variation
;
;       p1 = Julia parameter
;       real(p2) = bailout (try 4)
;       calculation performed on variable zc, z used for coloring
;       use decomp=256
;
  zc=pixel, c=p1, iter=1, r=|zc|
  maxr=real(p2), minr=maxr:
;
;       check to see if iterate is closer to origin
;         if so, remember this minimum distance
;
  IF (r<minr)
    minr=r
  ENDIF
  iter=iter+1, zc=sqr(zc)+c, r=|zc|
;
;       bailout--escape or maximum iterations
;         set "iteration done" flag (iter-1)
;         take log of minimum distance, use as angle for
;           decomp coloring
;
  IF ((r>maxr)||(iter==maxit))
    iter=-1
    angle60=log(minr)
    z=cos(angle60)+flip(sin(angle60))
  ENDIF
  iter>0
  ;SOURCE: bof.frm
}


bof60_man {; Kerry Mitchell 04feb98
;
;       records the iterate which is closest to the origin
;       and colors by (the log of) its magnitude
;       Mandelbrot variation
;
;       real(p1) = bailout (try 4)
;       calculation performed on variable zc, z used for coloring
;       use decomp=256
;
  zc=0, c=pixel, iter=1, r=|zc|
  maxr=real(p1), minr=maxr:
  iter=iter+1, zc=sqr(zc)+c, r=|zc|
; 
;       check to see if iterate is closer to origin
;         if so, remember this minimum distance
;
  IF (r<minr)
    minr=r
  ENDIF
;
;       bailout--escape or maximum iterations
;         set "iteration done" flag (iter-1)
;         take log of minimum distance, use as angle for
;           decomp coloring
;
  IF ((r>maxr)||(iter==maxit))
    iter=-1
    angle60=log(minr)
    z=cos(angle60)+flip(sin(angle60))
  ENDIF
  iter>0
  ;SOURCE: bof.frm
}


bof6162_jul {; Kerry Mitchell 04feb98
;
;       records the iterate which is closest to the origin
;       and colors by its iteration count & polar angle
;       Julia variation
;
;       p1 = Julia parameter
;       real(p2) = bailout (try 4)
;       imag(p2) = iteration count angle scale factor (try 0.1)
;       real(p3) = iteration count (bof61) weight (try 1)
;       real(p3) = polar angle (bof62) weight (try 1)
;       calculation performed on variable zc, z used for coloring
;       use decomp=256
;
  zc=pixel, c=p1, iter=1, r=|zc|, maxr=real(p2)
  minr=maxr, scale61=imag(p2), weighttot=real(p3)+imag(p3)
  weight61=real(p3)/weighttot, weight62=imag(p3)/weighttot:
; 
;       check to see if iterate is closer to origin
;         if so, remember this iterate & iteration count
;
  IF (r<minr)
    minr=r, itermin=iter, zmin=zc
  ENDIF
  iter=iter+1, zc=sqr(zc)+c, r=|zc|
;
;       bailout--escape or maximum iterations
;         set "iteration done" flag (iter-1)
;         scale iteration count for bof61 angle
;         take minimal iterate's polar angle for bof62 angle
;         add angles with appropriate weights for final angle
;
  IF ((r>maxr)||(iter==maxit))
    iter=-1
    angle61=scale61*itermin
    angle62=imag(log(zmin))
    angle=weight61*angle61+weight62*angle62
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: bof.frm
}


bof6162_man {; Kerry Mitchell 04feb98
;
;       records the iterate which is closest to the origin
;       and colors by its iteration count & polar angle
;       Mandelbrot variation
;
;       real(p1) = bailout (try 4)
;       imag(p1) = iteration count angle scale factor (try 0.1)
;       real(p2) = iteration count (bof61) weight (try 1)
;       real(p2) = polar angle (bof62) weight (try 1)
;       calculation performed on variable zc, z used for coloring
;       use decomp=256
;
  zc=0, c=pixel, iter=1, r=|zc|, maxr=real(p1)
  minr=maxr, scale61=imag(p1), weighttot=real(p2)+imag(p2)
  weight61=real(p2)/weighttot, weight62=imag(p2)/weighttot:
  iter=iter+1, zc=sqr(zc)+c, r=|zc|
;
;       check to see if iterate is closer to origin
;         if so, remember this iteration count & iterate
;
  IF (r<minr)
    minr=r, itermin=iter, zmin=zc
  ENDIF
;
;       bailout--escape or maximum iterations
;         set "iteration done" flag (iter-1)
;         scale iteration count for bof61 angle
;         take minimal iterate's polar angle for bof62 angle
;         add angles with appropriate weights for final angle
;
  IF ((r>maxr)||(iter==maxit))
    iter=-1
    angle61=scale61*itermin
    angle62=imag(log(zmin))
    angle=weight61*angle61+weight62*angle62
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: bof.frm
}


bof61_jul {; Kerry Mitchell 04feb98
;
;       records the iterate which is closest to the origin
;       and colors by its iteration count
;       Julia variation
;
;       p1 = Julia parameter
;       real(p2) = bailout (try 4)
;       imag(p2) = angle scale factor (try 0.1)
;       calculation performed on variable zc, z used for coloring
;       use decomp=256
;
  zc=pixel, c=p1, iter=1, r=|zc|, maxr=real(p2)
  scale61=imag(p2), minr=maxr:
;
;       check to see if iterate is closer to origin
;         if so, remember this iteration count
;
  IF (r<minr)
    minr=r, itermin=iter
  ENDIF
  iter=iter+1, zc=sqr(zc)+c, r=|zc|
;
;       bailout--escape or maximum iterations
;         set "iteration done" flag (iter-1)
;         scale iteration count for decomp coloring
;
  IF ((r>maxr)||(iter==maxit))
    iter=-1
    angle61=scale61*itermin
    z=cos(angle61)+flip(sin(angle61))
  ENDIF
  iter>0
  ;SOURCE: bof.frm
}


bof61_man {; Kerry Mitchell 04feb98
;
;       records the iterate which is closest to the origin
;       and colors by its iteration count
;       Mandelbrot variation
;
;       real(p1) = bailout (try 4)
;       imag(p1) = angle scale factor (try 0.1)
;       calculation performed on variable zc, z used for coloring
;       use decomp=256
;
  zc=0, c=pixel, iter=1, r=|zc|, maxr=real(p1)
  scale61=imag(p1), minr=maxr:
  iter=iter+1, zc=sqr(zc)+c, r=|zc|
;
;       check to see if iterate is closer to origin
;         if so, remember this iteration count
;
  IF (r<minr)
    minr=r, itermin=iter
  ENDIF
;
;       bailout--escape or maximum iterations
;         set "iteration done" flag (iter-1)
;         scale iteration count for decomp coloring
;
  IF ((r>maxr)||(iter==maxit))
    iter=-1
    angle61=scale61*itermin
    z=cos(angle61)+flip(sin(angle61))
  ENDIF
  iter>0
  ;SOURCE: bof.frm
}


bof6260_jul {; Kerry Mitchell 04feb98
;
;       records the iterate which is closest to the origin
;       and colors by its polar angle & (log) magnitude
;       Julia variation
;
;       p1 = Julia parameter
;       real(p2) = bailout (try 4)
;       imag(p2) = unused
;       real(p3) = polar angle (bof62) weight (try 1)
;       real(p3) = magnitude (bof60) weight (try 1)
;       calculation performed on variable zc, z used for coloring
;       use decomp=256
;
  zc=pixel, c=p1, iter=1, r=|zc|, maxr=real(p2)
  minr=maxr, weighttot=real(p3)+imag(p3)
  weight62=real(p3)/weighttot, weight60=imag(p3)/weighttot:
;
;       check to see if iterate is closer to origin
;         IF so, remember this iterate & distance
;
  IF (r<minr)
    minr=r, zmin=zc
  ENDIF
  iter=iter+1, zc=sqr(zc)+c, r=|zc|
;
;       bailout--escape or maximum iterations
;         set "iteration done" flag (iter-1)
;         take minimal iterate's polar angle for bof62 angle
;         take log of minimum distance for bof60 angle
;         add angles with appropriate weights for final angle
;
  IF ((r>maxr)||(iter==maxit))
    iter=-1
    angle62=imag(log(zmin))
    angle60=log(minr)
    angle=weight62*angle62+weight60*angle60
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: bof.frm
}


bof6260_man {; Kerry Mitchell 04feb98
;
;       records the iterate which is closest to the origin
;       and colors by its polar angle & (log) magnitude
;       Mandelbrot variation
;
;       real(p1) = bailout (try 4)
;       imag(p1) = unused
;       real(p2) = polar angle (bof62) weight (try 1)
;       real(p3) = magnitude (bof60) weight (try 1)
;       calculation performed on variable zc, z used for coloring
;       use decomp=256
;
  zc=0, c=pixel, iter=1, r=|zc|, maxr=real(p1)
  minr=maxr, weighttot=real(p2)+imag(p2)
  weight62=real(p2)/weighttot, weight60=imag(p2)/weighttot:
  iter=iter+1, zc=sqr(zc)+c, r=|zc|
;
;       check to see if iterate is closer to origin
;         if so, remember this minimum distance & iterate
;
  IF (r<minr)
    minr=r, zmin=zc
  ENDIF
;
;       bailout--escape or maximum iterations
;         set "iteration done" flag (iter-1)
;         take minimal iterate's polar angle for bof62 angle
;         take log of minimum distance for bof60 angle
;         add angles with appropriate weights for final angle
;
  IF ((r>maxr)||(iter==maxit))
    iter=-1
    angle62=imag(log(zmin))
    angle60=log(minr)
    angle=weight62*angle62+weight60*angle60
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: bof.frm
}


bof62_jul {; Kerry Mitchell 04feb98
;
;       records the iterate which is closest to the origin
;       and colors by its polar angle
;       Julia variation
;
;       p1 = Julia parameter
;       real(p2) = bailout (try 4)
;       calculation performed on variable zc, z used for coloring
;       use decomp=256
;
  zc=pixel, c=p1, iter=1, r=|zc|
  maxr=real(p2), minr=maxr:
;
;       check to see if iterate is closer to origin
;         if so, remember this iterate
;
  IF (r<minr)
    minr=r, zmin=zc
  ENDIF
  iter=iter+1, zc=sqr(zc)+c, r=|zc|
;
;       bailout--escape or maximum iterations
;         set "iteration done" flag (iter-1)
;         set z to minimal iterate for decomp coloring
;
  IF ((r>maxr)||(iter==maxit))
    iter=-1
    z=zmin
  ENDIF
  iter>0
  ;SOURCE: bof.frm
}


bof62_man {; Kerry Mitchell 04feb98
;
;       records the iterate which is closest to the origin
;       and colors by its polar angle
;       Mandelbrot variation
;
;       real(p1) = bailout (try 4)
;       calculation performed on variable zc, z used for coloring
;       use decomp=256
;
  zc=0, c=pixel, iter=1, r=|zc|
  maxr=real(p1), minr=maxr:
  iter=iter+1, zc=sqr(zc)+c, r=|zc|
;
;       check to see if iterate is closer to origin
;         if so, remember this iterate
;
  IF (r<minr)
    minr=r, zmin=zc
  ENDIF
;
;       bailout--escape or maximum iterations
;         set "iteration done" flag (iter-1)
;         set z to minimal iterate for decomp coloring
;
  IF ((r>maxr)||(iter==maxit))
    iter=-1
    z=zmin
  ENDIF
  iter>0
  ;SOURCE: bof.frm
}


BOFMaps61-65 {; A variation on Newton's method
              ; Use 0/-0.5 for P1, and Floating Point to 
              ; create the fractals used for
              ; maps 61 through 65, on pages 90 and 91, 
              ; in "The Beauty of Fractals".             
  z=Pixel:
  z2=z*z
  z3=z*z*z
  z4=z*z*z*z
  z=z-((z4-z3*0.5+z2*0.5-z*0.5-0.5)/((z3*4-z2*1.5+z-.5)+P1))
  |(z4-z3*0.5+z2*0.5-z*0.5-0.5)| >= 0.00004
  ;SOURCE: bofmaps.frm
}


BOFMaps75-76 {; A variation on Newton's method
              ; Use 0/0.25 for P1, and Floating Point to 
              ; create the fractals used for
              ; maps 75 and 76, on pages 114 and 115, 
              ; in "The Beauty of Fractals". 
  z=Pixel:
  z2=z*z
  z3=z*z*z
  z=z-((z3-z*.25-1.25)/((z2*3-.25)+P1))
  |(z3-z*.25-1.25)| >= 0.000001
  ;SOURCE: bofmaps.frm
}


BOFMaps77-78 {; Another variation on Newton's method
              ; Use 0/0 for P1, and Floating Point to 
              ; create the fractals used for
              ; maps 77 and 78, on pages 116 nad 117, 
              ; in "The Beauty of Fractals"       
  z=Pixel:
  z2=z*z
  z3=z*z*z
  z=z-((z3-z*.5-.5)/((z2*3-.5)+P1))
  |(z3-z*.5-.5)| >= 0.000000000001
  ;SOURCE: bofmaps.frm
}


bok001 (XAXIS) {
  z = c = pixel
  x = 1:
  z = sqr(z) + c + (x >= p1)
  x = x + 1
  |z| <= 4
  ;SOURCE: bokonon.frm
}


bok002 (XAXIS) { 
  z = c = pixel
  x = 1:
  z = sqr(z) - c - (x >= p1)
  x = x + 1
  |z| <= 4
  ;SOURCE: bokonon.frm
}


bok003 (XAXIS) { 
  z = c = pixel
  x = 1:
  z = sqr(z) + c + fn1(x*z*(x >= p1))
  x = x + 1
  |z| <= 4
  ;SOURCE: bokonon.frm
}


bok004 (XAXIS) {
  z = c = pixel
  x = 1:
  z = sqr(z) + c - fn1(x*z*(x >= p1))
  x = x + 1
  |z| <= 4
  ;SOURCE: bokonon.frm
}


bok004A (XAXIS) {
  z = c = pixel
  x = 1:
  z = sqr(z) + c - fn1(z*(x >= p1))
  x = x + 1
  |z| <= 4
  ;SOURCE: bokonon.frm
}


bok005 (XAXIS) {
  z = c = pixel
  x = 1:
  z = sqr(z) + c + fn1(x*z) * (x >= p1)
  x = x + 1
  |z| <= 4
  ;SOURCE: bokonon.frm
}


bok006 (XAXIS) { 
  z = c = pixel
  x = 1:
  z = sqr(z) + c - fn1(z) * (x >= p1)
  x = x + 1
  |z| <= 4
  ;SOURCE: bokonon.frm
}


bok007 (XAXIS) {
  z = c = pixel
  x = 1:
  z = z*z + c + (x>=p1)*(fn1(z)/fn2(z))
  x = x + 1
  |z| <= 4+p2
  ;SOURCE: bokonon.frm
}


bok008 (XAXIS) {
   z = c = pixel
   x = 0:
   x = x + 1
   z = sqr(fn1(z))*(x<=p1) + sqr(1/fn1(z))*(x>p1) + c
   |z| <= 4+p2
  ;SOURCE: bokonon.frm
}


bok010 (XAXIS) {
  z = c = pixel
  x = 1:
  z = (fn1(z) + c)*(x<=p1) + (fn2(z) + c) * (x>=p1)
  x = x + 1
  |z| <= 4+p2
  ;SOURCE: bokonon.frm
}


bok011 (XAXIS) {
  z = c = pixel:
  z = (fn1(z)^2 + c) * (x<=p1) + (fn2(z)^2 + c) * (x>p1)
  x = real(z)
  |z| <= 4+p2
  ;SOURCE: bokonon.frm
}


boksleym1 (XAXIS) {; Becomes formula barnsleym1 for fn1=fn2=identity 
  z = c = pixel:
  x = real(z)
  z = c*fn1(z-1)*(x>=0) + c*fn2(z+1)*(x<0)
  |z| <= 4+p2
  ;SOURCE: bokonon.frm
}


boksleym2 {; Becomes formula barnsleym2 for fn1=fn2=identity 
  z = c = pixel:
  x = real(z)*imag(c) + real(c)*imag(z)
  z = c*fn1(z-1)*(x>=0) + c*fn2(z+1)*(x<0)
  |z| <= 4+p2
  ;SOURCE: bokonon.frm
}


boksleym3 (XAXIS) {; Becomes formula barnsleym3 for fn1=fn2=identity 
  z = c = pixel:
  x = real(z)
  z1 = sqr(real(z)) - sqr(imag(z)) - 1
  z2 = (0,1) * 2 * real(z) * imag(z)
  z3 = real(c) * real(z)
  z4 = (0,1) * imag(c) * real(z)
  z = fn1(z1 + z2) * (x > 0) + fn2(z1 + z3 + z2 + z4) * (x <= 0)     
  |z| <= 4+p2
  ;SOURCE: bokonon.frm
}


Boogie {
  z = 0, c = pixel:
  z = z + p1
  z = fn1(c) + fn2(z)
  z = z * z + pixel
  |z| < 4
  ;SOURCE: gestalt.frm
}


boring {; Candidate for contest
        ; p2 = bailout value
  z = p1
  c1 = c2 = c3 = pixel
  bailout = real(p2):
  z = z^3 - c1*z^2 + c2*z + c3
  |z| <= bailout
  ;SOURCE: 97msg.frm
}


boro {; Giuseppe Zito
  z = pixel
  d0 = -0.503248
  d1 = 0.92069
  d5 = 0.393206
  d10 = 0.997747
  : 
  x = real(z), y = imag(z)
  s0 = y
  newx = s0 
  s0 =d0
  s0 = s0 /d1
  s0 = s0 /x
  s0 = s0 +x
  s0 = s0 -x
  s0 = s0 +d5
  s0 = s0 *d10
  s0 = s0 /y
  s0 = s0 *y
  s0 = s0 /x
  s0 = s0 -x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


bpattern {; Giuseppe Zito
  z = pixel
  c0 = 0.479298
  c8 = -0.822801
  : 
  x = real(z), y = imag(z)
  s0 =c0
  s0 = s0 /y
  s0 = s0 /y
  s0 = s0 -y
  s0 = s0 +c8
  newx = s0 
  s0 = x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


Brahmin {
  z = pixel:
  z = z + p1
  r = tan(1/z)^fn1(e)
  z = r * fn2(z) 
  |z| <= 4
  ;SOURCE: shakti.frm
}


brbl {; Formula uses PHC to cast "soft" shadow
      ; October 1996 by Jan Maarten van der Valk
      ; 'periodicity=0' and 'passes=1' recommended
      ; Tanks to Sylvie Gallet, Paul Carlson, Jan M. v.d. Valk 
      ; (c) guy.marson@mnhn.lu
      ; Added variable "newpixel". G. Martin 6/27/99
  x=real(scrnpix)/real(scrnmax), y=(imag(scrnmax)-imag(scrnpix))/(rea\
  l(scrnmax)*0.75), z=x+flip(y)
  chrh1 = x>0.17777&&x<0.20477||(abs(cabs(z+(-0.22671,-0.7175))-0.035\
  44)<0.0135&&y>0.7175)||(x>0.24865&&x<0.27565&&y<0.7175)
  chra2 = abs(cabs(z+(-0.33415,-0.7445))-0.027)<0.0135&&x<0.33415||(a\
  bs(cabs(z+(-0.35215,-0.7445))-0.027)<0.0135&&x>0.35215)&&y>0.7445||\
  ((abs(cabs(z+(-0.33415,-0.6905))-0.027)<0.0135&&x<0.33415)||(abs(ca\
  bs(z+(-0.35215,-0.6905))-0.027)<0.0135&&x>0.35215))||(x>0.33415&&x<\
  0.35215&&(y<0.677||(y>0.758&&y<0.785)||(y>0.704&&y<0.731)))||(x>0.3\
  6565&&x<0.39265&&y<0.7445)
  chrp3 = x>0.41065&&x<0.43765&&y<0.785&&y>0.5825||(abs(cabs(z+(-0.47\
  14,-0.7175))-0.054)<0.0135&&x>0.43765)
  chrp4 = x>0.5569&&x<0.5839&&y<0.785&&y>0.5825||(abs(cabs(z+(-0.6176\
  5,-0.7175))-0.054)<0.0135&&x>0.5839)
  xy=2.5*x
  chry5 = y<xy-1.19787&&y>xy-1.27057||(y>-xy+2.49787&&y<-xy+2.57057)&\
  &y>xy-1.27057&&y<0.785&&y>0.56
  test1 = chrh1||chra2&&y>0.65||chrp3||chrp4||chry5&&y<0.83
  chrh6 = x>0.18777&&x<0.21477||(abs(cabs(z+(-0.23671,-0.6975))-0.035\
  44)<0.0135&&y>0.6975)||(x>0.25865&&x<0.28565&&y<0.6975)
  chra7 = abs(cabs(z+(-0.34415,-0.7245))-0.027)<0.0135&&x<0.34415||(a\
  bs(cabs(z+(-0.36215,-0.7245))-0.027)<0.0135&&x>0.36215)&&y>0.7245||\
  ((abs(cabs(z+(-0.34415,-0.6705))-0.027)<0.0135&&x<0.34415)||(abs(ca\
  bs(z+(-0.36215,-0.6705))-0.027)<0.0135&&x>0.36215))||(x>0.34415&&x<\
  0.36215&&(y<0.657||(y>0.738&&y<0.765)||(y>0.684&&y<0.711)))||(x>0.3\
  7565&&x<0.40265&&y<0.7245)
  chrp8 = x>0.42065&&x<0.44765&&y<0.765&&y>0.5625||(abs(cabs(z+(-0.48\
  14,-0.6975))-0.054)<0.0135&&x>0.44765)
  chrp9 = x>0.5669&&x<0.5939&&y<0.765&&y>0.5625||(abs(cabs(z+(-0.6276\
  5,-0.6975))-0.054)<0.0135&&x>0.5939)
  chry10 = y<xy-1.24287&&y>xy-1.31557||(y>-xy+2.50287&&y<-xy+2.57557)\
  &&y>xy-1.31557&&y<0.765&&y>0.54
  test2 = chrh6||chra7&&y>0.63||chrp8||chrp9||chry10&&y<0.81
  xCN=2.5*x
  chrN11 = x>0.06445&&x<0.09168||(x>0.13045&&x<0.15978)||(y>-xCN+0.50\
  113&&y<-xCN+0.57444)
  chre12 = abs(cabs(z+(-0.23815,-0.23688))-0.04826)<0.01361&&(x<0.238\
  15||y>0.23234||y<0.21872)||(y>0.23234&&y<0.25956&&x>0.18989&&x<0.28\
  641)
  xw=4*x
  chrw13 = y<xw-1.16865&&y>xw-1.28091||(y>-xw+1.73865&&y<-xw+1.85091)\
  &&y<0.285||(y>-xw+1.51865&&y<-xw+1.63091)||(y<xw-1.38865&&y>xw-1.50\
  091)&&y<0.29875
  xCY=2*x
  chrY15 = y<xCY-0.82383&&y>xCY-0.8847||(y>-xCY+1.30583&&y<-xCY+1.366\
  7)&&y>xCY-0.8847
  chre16 = abs(cabs(z+(-0.65773,-0.23688))-0.04826)<0.01361&&(x<0.657\
  73||y>0.23234||y<0.21872)||(y>0.23234&&y<0.25956&&x>0.60946&&x<0.70\
  599)
  chra17 = abs(cabs(z+(-0.77385,-0.26101))-0.02413)<0.01361&&x<0.7738\
  5||(abs(cabs(z+(-0.79035,-0.26101))-0.02413)<0.01361&&x>0.79035)&&y\
  >0.26101||((abs(cabs(z+(-0.77385,-0.21274))-0.02413)<0.01361&&x<0.7\
  7385)||(abs(cabs(z+(-0.79035,-0.21274))-0.02413)<0.01361&&x>0.79035\
  ))||(x>0.77385&&x<0.79035&&(y<0.20222||(y>0.27152&&y<0.29875)||(y>0\
  .22326&&y<0.25049)))||(x>0.80086&&x<0.82809&&y<0.26101)
  chrr18 = x>0.84459&&x<0.87182&&y<0.29875||(abs(cabs(z+(-0.89007,-0.\
  25327))-0.03187)<0.01361&&y>0.25327)
  test3 = chrN11||chre12||chrw13||chrY15||chre16||chra17||chrr18&&y>0\
  .175&&y<0.34
  chrN19 = x>0.07445&&x<0.10168||(x>0.14045&&x<0.16978)||(y>-xCN+0.51\
  113&&y<-xCN+0.58444)
  chre20 = abs(cabs(z+(-0.24815,-0.22188))-0.04826)<0.01361&&(x<0.248\
  15||y>0.21734||y<0.20372)||(y>0.21734&&y<0.24456&&x>0.19989&&x<0.29\
  641)
  chrw21 = y<xw-1.22365&&y>xw-1.33591||(y>-xw+1.76365&&y<-xw+1.87591)\
  &&y<0.27||(y>-xw+1.54365&&y<-xw+1.65591)||(y<xw-1.44365&&y>xw-1.555\
  91)&&y<0.28375
  chrY23 = y<xCY-0.85883&&y>xCY-0.9197||(y>-xCY+1.31083&&y<-xCY+1.371\
  7)&&y>xCY-0.9197
  chre24 = abs(cabs(z+(-0.66773,-0.22188))-0.04826)<0.01361&&(x<0.667\
  73||y>0.21734||y<0.20372)||(y>0.21734&&y<0.24456&&x>0.61946&&x<0.71\
  599)
  chra25 = abs(cabs(z+(-0.78385,-0.24601))-0.02413)<0.01361&&x<0.7838\
  5||(abs(cabs(z+(-0.80035,-0.24601))-0.02413)<0.01361&&x>0.80035)&&y\
  >0.24601||((abs(cabs(z+(-0.78385,-0.19774))-0.02413)<0.01361&&x<0.7\
  8385)||(abs(cabs(z+(-0.80035,-0.19774))-0.02413)<0.01361&&x>0.80035\
  ))||(x>0.78385&&x<0.80035&&(y<0.18722||(y>0.25653&&y<0.28375)||(y>0\
  .20826&&y<0.23549)))||(x>0.81086&&x<0.83809&&y<0.24601)
  chrr26 = x>0.85459&&x<0.88181&&y<0.28375||(abs(cabs(z+(-0.90007,-0.\
  23827))-0.03187)<0.01361&&y>0.23827)
  test4 = chrN19||chre20||chrw21||chrY23||chre24||chra25||chrr26&&y>0\
  .16&&y<0.325
  chrf27 = abs(cabs(z+(-0.48496,-0.07632))-0.00758)<0.0036&&y>0.07632\
  ||(x>0.47379&&x<0.48099&&y<0.07632)||(x>0.47&&x<0.48856&&y>0.0664&&\
  y<0.0736)
  chrr28 = x>0.50014&&x<0.50734&&y<0.08||(abs(cabs(z+(-0.51131,-0.068\
  82))-0.00758)<0.0036&&y>0.06882)
  chro29 = abs(cabs(z+(-0.54149,-0.065))-0.0114)<0.0036
  chrm30 = x>0.56049&&x<0.56769&&y<0.08||(abs(cabs(z+(-0.57166,-0.068\
  82))-0.00758)<0.0036&&y>0.06882)||(x>0.57564&&x<0.58284&&y<0.06882)\
  ||(abs(cabs(z+(-0.58681,-0.06882))-0.00758)<0.0036&&y>0.06882)||(x>\
  0.59079&&x<0.59799&&y<0.06882)
  chrS32 = abs(cabs(z+(-0.63379,-0.0782))-0.0082)<0.0036&&(x<=0.63379\
  ||y>0.0782)||(abs(cabs(z+(-0.63379,-0.0618))-0.0082)<0.0036&&(x>0.6\
  3379||y<0.0618))
  chru33 = x>0.64959&&x<0.65679&&y>0.06118&&y<0.08||(abs(cabs(z+(-0.6\
  6076,-0.06118))-0.00758)<0.0036&&y<0.06118)||(x>0.66474&&x<0.67194&\
  &y<0.08)
  chrs34 = abs(cabs(z+(-0.68524,-0.0707))-0.0057)<0.0036&&x<0.68524||\
  (abs(cabs(z+(-0.68924,-0.0707))-0.0057)<0.0036&&x>0.68924)&&(x<0.68\
  524||y>0.0707)||((abs(cabs(z+(-0.68524,-0.0593))-0.0057)<0.0036&&x<\
  0.68524)||(abs(cabs(z+(-0.68924,-0.0593))-0.0057)<0.0036&&x>0.68924\
  )&&(x>0.68924||y<0.0593))||(x>0.68524&&x<0.68924&&(y<0.0572||(y>0.0\
  728&&y<0.08)||(y>0.0614&&y<0.0686)))
  chry35 = y<xy-1.73134&&y>xy-1.75073||(y>-xy+1.83134&&y<-xy+1.85073)\
  &&y>xy-1.75073&&y<0.08&&y>0.03
  chra37 = abs(cabs(z+(-0.76559,-0.0707))-0.0057)<0.0036&&x<0.76559||\
  (abs(cabs(z+(-0.76959,-0.0707))-0.0057)<0.0036&&x>0.76959)&&y>0.070\
  7||((abs(cabs(z+(-0.76559,-0.0593))-0.0057)<0.0036&&x<0.76559)||(ab\
  s(cabs(z+(-0.76959,-0.0593))-0.0057)<0.0036&&x>0.76959))||(x>0.7655\
  9&&x<0.76959&&(y<0.0572||(y>0.0728&&y<0.08)||(y>0.0614&&y<0.0686)))\
  ||(x>0.77169&&x<0.77889&&y<0.0707)
  chrn38 = x>0.78289&&x<0.79009&&y<0.08||(abs(cabs(z+(-0.79407,-0.068\
  82))-0.00758)<0.0036&&y>0.06882)||(x>0.79804&&x<0.80524&&y<0.06882)
  chrd39 = x>0.83174&&x<0.83894||(abs(cabs(z+(-0.82424,-0.065))-0.011\
  4)<0.0036&&x<0.83174)
  chrG41 = abs(cabs(z+(-0.88294,-0.07))-0.0164)<0.0036&&(x<0.88294||y\
  <0.0736||y>0.0772)||(x>0.88294&&x<=0.89574&&y<0.0736&&y>0.0664)
  chru42 = x>0.90694&&x<0.91414&&y>0.06118&&y<0.08||(abs(cabs(z+(-0.9\
  1812,-0.06118))-0.00758)<0.0036&&y<0.06118)||(x>0.92209&&x<0.92929&\
  &y<0.08)
  chry43 = y<xy-2.30823&&y>xy-2.32762||(y>-xy+2.40823&&y<-xy+2.42762)\
  &&y>xy-2.32762&&y<0.08&&y>0.03
  test5 = chrf27||chrr28||chro29||chrm30||chrS32||chru33||chrs34||chr\
  a37||chrn38||chrd39||chrG41||chru42&&y>0.05||chry35||chry43&&y<0.09
  test=test1||test3||test5
  test0=test2||test4
  test0=test0&&whitesq
  test0=(test0==0)
  test0=((test0||test)==0)
  f1=sin(.5*pixel)
  f2=1/(32*pixel)
  newpixel=(test==0)*f2+test*f1
     ; Import of formula 'Gallet-8-21' from file GALLET-8.FRM
     ; Requires periodicity = 0 and decomp=256
     ; p1 = parameter for a Julia set (0 for the Mandelbrot set)
     ; 0 < real(p2) , 0 < imag(p2)
  im2 = imag(p2)
  IF (p1 || imag(p1))
    c = p1
  ELSE
    c = newpixel
  ENDIF
  z = -1 , zn = newpixel , zmin = zmin0 = abs(real(p2))
  cmax = trunc(abs(real(p3)))
  IF (cmax < 2)
    cmax = 2
  ENDIF
  k = flip(6.28318530718/(zmin*real(cmax))), cnt = -1
  :
  cnt = cnt + 1
  IF (cnt == cmax)
    cnt = 0
  ENDIF
  zn = zn*zn + c, znc = cabs(im2*real(zn) + flip(imag(zn)))
  IF (znc < zmin)
    zmin = znc, z = exp((cnt*zmin0 + zmin)*k)
  ENDIF
  znc <= 4&&test0==0
  ;SOURCE: 98msg.frm
}


bsh01 {; by Kovari Janos
  a1 = real(p1)/fn1(pixel)
  a2 = imag(p1)/fn1(flip(pixel))
  b1 = .5/pixel
  b2 = flip(b1)
  i = 0
  z = fn2(a1 + b1) + fn2(a2 + b2):
  z = ((z - a1 - b1)^2 + a2 + b2)^2 - pixel
  i = i + 1
  a1 = a1 + b1/i
  b1 = flip(a1)
  a2 = a2 + b2/i
  b2 = flip(a2)
  |z| <= p2
  ;SOURCE: bshng2.frm
}


bsh02 {; by Kovari Janos
  x1 = real(pixel)
  y1 = imag(pixel)
  c = p1*x1 + flip(y1)
  x2 = 10*fn1((c*x1 + flip(y1))/c)
  y2 = 10*fn1((x1 + flip(c*y1))/c)
  z = x2 + flip(y2):
  z = z*z*z/c + pixel
  |z| <= p2
  ;SOURCE: bshng2.frm
}


bsh03 {; by Kovari Janos
  zold = pixel
  a = fn1(zold^pixel + p1)
  z = a:
  z = fn2(z + z*a)
  a = fn2(a)
  |z| <= a + p2
  ;SOURCE: bshng2.frm
}


bsh04 {; by Kovari Janos
  a = p1^(fn1(pixel))
  b = pixel^fn2(pixel)
  z = a + b:
  z = (z + a + b)*z/p1 + pixel
      ; a = sqrt(a^2 + pixel)
      ; b = sqrt(b^2 + pixel)
  |z| <= p2
  ;SOURCE: bshng2.frm
}


bsh05 {; by Kovari Janos
  a = pixel^3.141592654 - pixel^2.718281828
  b = real(pixel) + flip(real(a))
  c = imag(pixel) + flip(imag(a))
  d = (a*b*c)^(1/3)
  z = p1:
  z = fn1(z) + d
  d =fn2(d*a)
  |z| <= p2
  ;SOURCE: bshng2.frm
}


bsh06 {; by Kovari Janos
  z = pixel:
  z = z^2 + pixel^3.141592654 - pixel^2.718281828
  |z * real(p1)| <= p2
  ;SOURCE: bshng2.frm
}


bsh07 {; by Kovari Janos
  a = flip(pixel) + conj(pixel)
  b = a/pixel
  z = pixel:
  z = b*z^2 + a
  |z| <= p1
  ;SOURCE: bshng2.frm
}


bsh08 {; by Kovari Janos
  a = flip(pixel) + conj(pixel)
  z = a
  b = a/pixel
  a = b*real(a) + flip(b*imag(a)):
  z = (b*z)^2 + a
  |z| <= p1
  ;SOURCE: bshng2.frm
}


bsh09 {; by Kovari Janos
  a = flip(pixel)
  b = conj(pixel)
  c = pixel*a/b
  z = c:
  z = (z^c)/c + p1
  |z| <= p2
  ;SOURCE: bshng2.frm
}


bsh10 {; by Kovari Janos
  a = pixel && flip(pixel)
  b = pixel && conj(pixel)
  c = fn1(a * b)
  z = pixel:
  z = fn1(z) + p1*fn2(c)
  |z| <= p2
  ;SOURCE: bshng2.frm
}


bsh11 {; by Kovari Janos
  a = pixel + fn1(conj(pixel))
  b = pixel - fn1(flip(pixel))
  c = (a + b)/(a - b)
  a = c*a
  b = c*b
  z = a + b:
  z = c*z^2 + a*b
  |z| <= p1
  ;SOURCE: bshng2.frm
}


bsh12 {; by Kovari Janos
       ; Replaced variable "e" with "ee", 5/7/99. G. Martin
  a = fn1(pixel) + fn2(pixel) + fn3(pixel)
  b = fn1(a)
  c = fn2(a)
  d = fn3(a)
  ee = b*c*d
  z = pixel:
  z = z^2 - ee
  |z| <= p1
  ;SOURCE: bshng2.frm
}


bsh13 {; by Kovari Janos
  z1 = pixel
  z2 = (flip(pixel) + conj(pixel) + pixel)/3
  z = pixel:
  z1 = z1^2 + z2^2
  z2 = z1^p1 + z2^p1
  z = z^(z1/z2) + z1/z2*pixel
  |z| <= p2
  ;SOURCE: bshng2.frm
}


bsh14 {; by Kovari Janos
  a = real(fn1(pixel)) + flip(real(fn2(pixel)))
  b = imag(fn1(pixel)) + flip(imag(fn2(pixel)))
  z = a + b:
  z = fn3(z) + whitesq*a + (1-whitesq)*b
  |z| <= p1
  ;SOURCE: bshng2.frm
}


bsh15 {; by Kovari Janos
  z1 = pixel*abs(cabs(pixel)), z2 = p1:
  z1 = z1*z2
  z2 = z2*z2/sqrt(p2)
  z = z1/z2 + fn1(z2)
  |z| <= p3
  ;SOURCE: bshng2.frm
}


bsh16 {; by Kovari Janos
  k = p1
  z = pixel
  c = fn1(pixel^abs(cabs(pixel)))
  t = 0:
  t = fn2(t + c)
  zr1 = real(z)*real(t)
  zi1 = real(z)*imag(t)
  zr2 = imag(z)*real(t)
  zi2 = imag(z)*imag(t)
  k = k^2
  z = real(zr1^2 + zr2^2)/k + flip(real(zr2^2 + zi2^2)/k)
  c = c^2 - pixel
  |z| <= p2
  ;SOURCE: bshng2.frm
}


bsh17 {; by Kovari Janos
  z = pixel, z1 = z2 = pixel, i = 0:
  IF (i >= p2)
    z1 = z1*z1 +p1
    z = z1
  ELSE
    z2 = z2*z2 + pixel
    z = z2
  ENDIF
  i = i + 1
  |z| <= p3
  ;SOURCE: bshng2.frm
}


bsh18 {; by Kovari Janos
  z = pixel, a = pixel, b = pixel:
  a = a - fn1(a)
  b = b + fn1(b)
  c = |a| + flip(|b|)
  z = z^c + pixel
  |z| <= p1
  ;SOURCE: bshng2.frm
}


bsh19 {; by Kovari Janos
       ; reconstruction of an old formula
  z = pixel:
  z = fn1(fn2(fn3(z))) + fn1(fn3(fn2(z)))\ 
    + fn2(fn1(fn3(z))) + fn2(fn3(fn1(z)))\
    + fn3(fn1(fn2(z))) + fn3(fn2(fn1(z)))
  |z| <= p1
  ;SOURCE: bshng2.frm
}


bsh20 {; by Kovari Janos
  z = pixel
  z = z^(-pixel):
  z = fn1(|z^2*pixel + z*pixel^2| + p1)
  |z| <= p2
  ;SOURCE: bshng2.frm
}


bshng01 {; by Kovari Janos
  z = pixel, c = pixel:
  c = z - (c+p1)^(p2) 
  z = (z + c)^2 + pixel
  |z| <=4
  ;SOURCE: bshng.frm
}


bshng02 {; by Kovari Janos
  z = c = pixel:
  c = fn1(c) + fn2(z)
  z = fn3(z+c)^2 + pixel
  |z| <= 4
  ;SOURCE: bshng.frm
}


bshng03 {; by Kovari Janos
  z = pixel, c = pixel:
  c = z
  z = fn1(z)
  c = z - c
  z = fn2(z) + pixel
  |z| <= p1
  ;SOURCE: bshng.frm
}


bshng04 {; by Kovari Janos
  c = z = pixel:
  z = c*fn1(z)
  z = fn2(c+z) + pixel
  |z| >= 4
  ;SOURCE: bshng.frm
}


bshng05 {; by Kovari Janos
  z = pixel:
  z = p1/(z + 1/z^2) - p2/(1/z^2)
  z = z + pixel
  |z| >= p3
  ;SOURCE: bshng.frm
}


bshng06 {; by Kovari Janos
  z = pixel, c = pixel :
  z = p1/(c + 1/z^2)
  c = p2/(z + 1/c^2)
  z = z^c + pixel
  |z| >= p3
  ;SOURCE: bshng.frm
}


bshng07 {; by Kovari Janos
  z = pixel,c = pixel:
  c = (c^p1)/(z^p2)
  z = z*c + pixel
  |z| >= p3
  ;SOURCE: bshng.frm
}


bshng08 {; by Kovari Janos
  z = pixel:
  z = z^2
  z = z*(p1^(1/z))
  z = z^p2 + pixel
  |z| >= p3
  ;SOURCE: bshng.frm
}


bshng09 {; by Kovari Janos
  z = pixel:
  z = p1^(z*p2)
  z = z^2 + pixel
  |z| >= p3
  ;SOURCE: bshng.frm
}


bshng10 {; by Kovari Janos
  z = pixel, c = pixel:
  c = z
  z = (p1*z)^2 - c
  z = z^2 + pixel
  |z| >= p2
  ;SOURCE: bshng.frm
}


bshng100 {; by Kovari Janos
  z = pixel, c = abs(cabs(pixel)):
  k = c + pixel
  z = z^3 + 2*z*p1 + k
  c = -1*c
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng101 {; by Kovari Janos
  z = pixel, c = pixel, i = 1:
  c = c + i*fn1(c)
  i = -1*i
  z = fn2(z) + c
  |z| <= p1
  ;SOURCE: bshng.frm
}


bshng102 {; by Kovari Janos
  k = p1/1.333333333
  pixel2 = real(pixel)*k + flip(imag(pixel)*k) + p3
  IF ((sqr(real(pixel)) + sqr(imag(pixel))) <= sqr(real(p1)))
    c = pixel2/k/k 
    z = pixel2/k/k
  ELSE
    c = p2
    z = pixel
  ENDIF:
  z = z^2 + c
  |z| <= 4
  ;SOURCE: bshng.frm
}


bshng103 {; by Kovari Janos
  c = real(pixel) + flip(fn1(imag(pixel) - real(pixel)))
  z = c:
  z = z^2 + c
  |z| <= p1
  ;SOURCE: bshng.frm
}


bshng104 {; by Kovari Janos
  c = real(pixel) + flip(real(pixel))\ 
        - imag(pixel) + flip(fn1(imag(pixel)))
  z = pixel:
  z = z^2 + c
  |z| <= p1
  ;SOURCE: bshng.frm
}


bshng105 {; by Kovari Janos
  c = pixel
  IF (abs(cabs(pixel)) < fn1(pixel))
    c = 1/pixel
    z = c
  ELSE
    c = pixel + p1
    z = c
  ENDIF:
  z = z^2 + c
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng106 {; by Kovari Janos
  z = pixel, c = fn1(z)
  k = flip(c) + real(c)
  z = sqrt(z^2 + k):
  z = z^2 + k
  z = fn2(z)
  |z| <= p1
  ;SOURCE: bshng.frm
}


bshng107 {; by Kovari Janos
  a = |0.5/pixel|
  b = |0.25/(conj(pixel))|
  c = |0.5/(flip(pixel))|
  d = whitesq*b + (1-whitesq)*c
  z = a:
  z = fn1(z) + z*d + whitesq*pixel + (1-whitesq)*p1
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng11 {; by Kovari Janos
  z = pixel, z = z*z:
  z = z*z + p1
  |z| >= p2
  ;SOURCE: bshng.frm
}


bshng12 {; by Kovari Janos
  z = pixel, c = pixel:         ; -2,0 4,0 0,0
  z = (1/z)^p1
  c = z*c + p2
  z = c*z + pixel
  |z| >= p3
  ;SOURCE: bshng.frm
}


bshng13 {; by Kovari Janos
  z = pixel:
  z = (z + pixel)^p1 
  |z| >= p2
  ;SOURCE: bshng.frm
}


bshng14 {; by Kovari Janos
  z = pixel:
  z = z^(2*(z/(|z|)))
  |z| >= p1
  ;SOURCE: bshng.frm
}


bshng15 {; by Kovari Janos
  z = pixel:
  z = z^(z^p1) + pixel
  |z| >= p2
  ;SOURCE: bshng.frm
}


bshng16 {; by Kovari Janos
  z = pixel:
  z = z^2 + pixel*p1 + p2*p3
  |z| >= p4
  ;SOURCE: bshng.frm
}


bshng17 {; by Kovari Janos
  z = pixel, c = pixel:
  c = c*p1
  z = (z+c)^2
  z = z/(c^2)
  |z| >=p2
  ;SOURCE: bshng.frm
}


bshng18 {; by Koavri Janos
  z = pixel, c = 0:
  c = 1/(c + z)
  z = z^c + pixel
  |z| <= p1
  ;SOURCE: bshng.frm
}


bshng19 {; by Kovari Janos
  z = pixel:
  a = z*z*z
  b = z*z
  z = ((a + b)/(a-b))*z + pixel
  |z| <= p1
  ;SOURCE: bshng.frm
}


bshng20 (ORIGIN) {; by Kovari Janos
  z = pixel:
  z = fn1(z)
  z = z^2 + p1
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng21 {; by Kovari Janos
  z = pixel, c = pixel:
  c = z/c
  z = z^(c/p1) + pixel
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng22 {; by Kovari Janos
  z = pixel, zm = pixel, zj = pixel:
  zm = zm^2 + pixel
  zj = zj^2 + p1
  z = p2*zm + (1-p2)*zj
  |z| <= p3
  ;SOURCE: bshng.frm
}


bshng23 {; by Kovari Janos
  z = pixel:
  z = z*fn1(z) + p1
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng24 {; by Kovari Janos
  z = pixel, zm = zj = pixel:
  zm = zm^2 + pixel
  zj = zj^2 + p1
  z = (zm/zj)
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng25 {; by Kovari Janos
         ; Edited by George Martin to make if..else conform to
         ; Fractint syntax
  z = zm = zj = pixel:
  zm = zm*zm + pixel
  zj = zj*zj + p1
  IF (zm >= 0) 
    z = zj 
  ELSE
    z = zm
  ENDIF
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng26 {; by Kovari Janos
  z = c = pixel:
  c = c^p1 + fn1(z)
  z = z/c + pixel
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng27 {; by Kovari Janos
  c = z = pixel:
  z1 = z1^p1 + c
  z2 = z2^p2 + c
  z = z^(z1/(|z2| +1))
  c = (c^2)/2
  z = z * c + pixel
  |z| <= p3
  ;SOURCE: bshng.frm
}


bshng28 {; by Kovari Janos
  z = pixel:
  c = pixel/(z^p1)
  z = z + c^2 + pixel
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng29 {; by Kovari Janos
  z = pixel:
  z = z + (z^2)/2 + (z^3)/3 + (z^4)/4
  z = sqrt(z) + pixel
  |z| <= p1
  ;SOURCE: bshng.frm
}


bshng30 {; by Kovari Janos
  c = z = pixel:
  c = z^2
  z = (z + p1)/c
  c = fn1(z)
  z = z^2 + c + pixel
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng31 {; by Kovari Janos
  z = c = pixel:
  c = z + p1 + c
  c = c^p2
  z = c*z + pixel
  |z| <= p3
  ;SOURCE: bshng.frm
}


bshng32 {; by Kovari Janos
  z = pixel:
  c = z
  z = fn1(z)
  c = c/z
  z = z^2 + c
  |z| <= p1
  ;SOURCE: bshng.frm
}


bshng33 {; by Kovari Janos
  z = pixel:
  c = (z+1)/(|z| + 1)
  z = z^c + pixel
  |z| <= p1
  ;SOURCE: bshng.frm
}


bshng34 {; by Kovari Janos
  c = z = pixel:
  c = fn1(c)*fn2(z)
  z = z^2 + c + pixel
  |z| <= p1
  ;SOURCE: bshng.frm
}


bshng35 {; by Kovari Janos
  zm = zj = z = pixel, i=0:
  zm = zm*zm + pixel
  zj = zj*zj + p1
  i = i + 1
  IF ((zm < p2) && (i > 10))
    z = zj
  ELSE 
    z = zm
  ENDIF
  |z| <= p3
  ;SOURCE: bshng.frm
}


bshng36 (XAXIS) {; by Kovari Janos
  z = pixel, i = 1:
  z = z*z + pixel/i
  i = i + real(p1)
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng37 {; by Kovari Janos
  z = pixel:
  z = z*z
  z = fn1(z)
  z = z*z + pixel
  |z| <= p1
  ;SOURCE: bshng.frm
}


bshng38 {; by Kovari Janos
  z = pixel:
  z = z*z
  z = fn1(z)
  z = z*z + p1
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng39 {; by Kovari Janos
  z = pixel:
  z = (z/|z|)^2 + p1
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng40 {; by Kovari Janos
  z = pixel:
  z = z*fn1(z) + pixel
  |z| <= p1
  ;SOURCE: bshng.frm
}


bshng41 {; by Kovari Janos
  c = z = pixel:
  c = fn1(z) + p1
  z = c*z + pixel
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng42 {; by Kovari Janos
  z = pixel:
  z = z*z + fn1(pixel)
  |z| <= p1
  ;SOURCE: bshng.frm
}


bshng43 {; by Kovari Janos
         ; Edited for Fractint v. 20 by George Martin, 10/98
  z = zm = zj = pixel:
  zm = zm*zm + pixel
  zj = zj*zj + p1
  z = real(zm) +flip(imag(zj))
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng44 {; by Kovari Janos
  z = zm = zj = pixel,i = 0:
  IF ((|zm| <= 4) && (i < 150))
    zm = zm*zm + pixel
  ELSE
    zm = zm
    z = zj
  ENDIF
  IF ((|zj| <= 4) && (i < 150))
    zj = zj*zj + p1
  ELSE
    zj = zj
    z = zm
  ENDIF
  i = i + 1
  |z| <= 4
  ;SOURCE: bshng.frm
}


bshng45 {; by Kovari Janos
  z = pixel, i = 0:
  IF (i&&1 <= 1)
    z = z*z + pixel
  ELSE
    z = z*z + p1
  ENDIF
  i = i + 1
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng46 {; by Kovari Janos
  zm = zi = z = pixel, i = i1 = i2 = 0:
  IF (|zm| <= 4)
    zm = zm*zm + pixel
    i1 = i1 + 1
  ELSE
    zm = zm
    i1 = i1
  ENDIF
  IF (|zj| <= 4)
    zj = zj*zj + p1
    i2 = i2 + 1
  ELSE
    zj = zj
    i2 = i2
  ENDIF
  IF (i1 > i2)
    z = zm
  ELSE
    z = zj
  ENDIF
  |z| <= 4
  ;SOURCE: bshng.frm
}


bshng47 {; by Kovari Janos
  zm = zj = z = pixel:
  zm = zm*zm + pixel
  zj = zj*zj + p1
  z = zm*whitesq + zj*(1-whitesq)
  |z| < p2
  ;SOURCE: bshng.frm
}


bshng48 {; by Kovari Janos
         ; Edited by George Martin to correct typos
  z1 = z2 = z = pixel, i1 = i2 = 0:
  IF (|z1| >= 0)
    i1 = 1  
  ELSE
    z1 = p1/(z1 + 1/z1^2) - p2/(1/z1^2) + pixel
  ENDIF  
  IF (|z2| >= 4)
    i2 = 1
  ELSE 
    z2 = z2^2 + p3
  ENDIF  
  z = z2*whitesq + z1*(1-whitesq)
  (i1 == 1) && (i2 == 1)
  ;SOURCE: bshng.frm
}


bshng49 {; by Kovari Janos
  zm = zj = z = pixel,i1 = i2 = 1:
  zm = (zm^2)/i1 + pixel
  zj = (zj^2)/i2 + p1
  i1 = i1 + real(p2)
  i2 = i2 + imag(p2) 
  z = zm + zj
  |z| <= p3
  ;SOURCE: bshng.frm
}


bshng50 {; by Kovari Janos
  z = c = pixel:
  c = c^2 - pixel
  z = fn1(z) + c
  |z| <= p1
  ;SOURCE: bshng.frm
}


bshng51 {; by Kovari Janos
  z = pixel:
  z = fn1(z) + p1
  z = z^2 + pixel
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng52 {; by Kovari Janos
  z = pixel,i = 0:
  z = z*z + whitesq*pixel + (1-whitesq)*p1
  i = i + 1
  ((|z| <= 4) && ((i && 1) != (1-whitesq)))
  ;SOURCE: bshng.frm
}


bshng52b {; by Kovari Janos
  z = pixel, i = i1 = i2 = 0:
  z = z*z + whitesq*pixel + (1-whitesq)*p1
  i = 1 - i
  IF (|z| >= 4)
    i1 = 1
  ELSE
    i1 = 0
  ENDIF
  IF (i == whitesq)
    i2 = 1
  ELSE
    i2 = 0
  ENDIF
  (i1 + i2) < 2
  ;SOURCE: bshng.frm
}


bshng53 (XAXIS) {; by Kovari Janos
     ; Edited by George Martin to try to reach author's intent     
     ; The corrected line is shown by a comment
  z = pixel, c1 = c2 = 0:
  c1 = (real(pixel^2))/real(p1)
  c2 = (imag(pixel^2))/imag(p1)
          ; z = z*z + c1,c2
  z = z*z + c1 + flip(c2)
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng54 {; by Kovari Janos
  z = pixel,i = 0:
  z = z^(2+whitesq)
  c = pixel*whitesq + p1*i
  i = 1 - i
  z = z + c
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng55 {; by Kovari Janos
  z = pixel:
  z = z^(fn1(pixel)) + p1
  |z| <= 4
  ;SOURCE: bshng.frm
}


bshng56 {; by Kovari Janos
  z = pixel:
  z = (z + pixel)*(z + p1)
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng57 {; by Kovari Janos
  z = pixel, c = pixel:
  z = (z + c)*(z + p1)
  c = fn1(c)
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng58 (YAXIS) {; by Kovari Janos
  z = pixel:
  z = z + p1
  z = z*z + p2
  |z| <= p3
  ;SOURCE: bshng.frm
}


bshng59 {; by Kovari Janos
  z = pixel/2:
  z = z*z + (pixel/2)*(fn1(pixel))
  |z| <= p1
  ;SOURCE: bshng.frm
}


bshng60 {; by Kovari Janos
  z = p1, c = pixel:
  z = z+pixel + c
  c = -c
  z = fn1(z)
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng61 {; by Kovari Janos
  IF (real(pixel) < imag(pixel))
    p = flip(pixel)
  ELSE
    p = pixel
  ENDIF
  z = p:
  z = z*z + p
  |z| <= p1
  ;SOURCE: bshng.frm
}


bshng62 {; by Kovari Janos
  p = fn1(pixel), z = p:
  z = fn2(z) + p
  |z| <= p1
  ;SOURCE: bshng.frm
}


bshng63 {; by Kovari Janos
  p = fn1(pixel), z1 = fn2(p), z = pixel:
  z = z1*z + p1
  z1 = fn3(z1) + p
  p = fn1(p)
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng64 {; by Kovari Janos
  IF (real(pixel) < imag(pixel))
    p = flip(pixel)
  ELSE
    p = pixel
  ENDIF
  z = p:
  z = z*z + p
  |z| <= 4
  ;SOURCE: bshng.frm
}


bshng65 (XAXIS) {; by Kovari Janos
  p = pixel/fn1(pixel), z = p:
  z = fn2(z) + p
  |z| <= p1
  ;SOURCE: bshng.frm
}


bshng66 (YAXIS) {; by Kovari Janos
  z = pixel-p1:
  z = z*z + p2
  |z| <= 4
  ;SOURCE: bshng.frm
}


bshng67 {; by Kovari Janos
  p = pixel/fn1(pixel), q = (pixel - p)/p, z = pixel:      
  z = fn2(z) + q
  |z| <= p1
  ;SOURCE: bshng.frm
}


bshng68 {; by Kovari Janos
  z = pixel:
  z = (z-floor(z))^2 + pixel
  |z| <= p1
  ;SOURCE: bshng.frm
}


bshng69 {; by Kovari Janos
  p = fn1(pixel), q = fn2(p*pixel), z = q:
  z = z^2 + pixel
  |z| <= p1
  ;SOURCE: bshng.frm
}


bshng70 {; by Kovari Janos
  p = 1/pixel, q = fn1(pixel), c = p * q, z = pixel:
  z = (z + c)*(z + p1) 
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng71 {; by Kovari Janos
  z = pixel, c = real(p1)/imag(p1):
  z = z*c - floor(z*c)
  z = (z + p2)^2
  |z| <= p3
  ;SOURCE: bshng.frm
}


bshng72 {; by Kovari Janos
  c = p1/real(pixel), k = p1/imag(pixel), z = pixel:
  z = z^2 + c + k
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng73 {; by Kovari Janos
  z = pixel:
  z = z^(real(p1)/imag(p1)) + 2*p2*z - z^2
  |z| <= p3
  ;SOURCE: bshng.frm
}


bshng74 {; by Kovari Janos
  c = pixel/p1, k = fn1(pixel), z = k:
  z = z^3 - 3*k*z + c
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng75 {; by Kovari Janos
  z = pixel, a=real(p1):
  z = a*(z^5) + (1-a)*(z^4) + a*(z^3) + (1-a)*(z^2) + a*z + (1-a)*p2
  a = 1-a
  |z| <= p3
  ;SOURCE: bshng.frm
}


bshng76 {; by Kovari Janos
  z = pixel, zz = fn1(z):
  c = (z^2 + zz^2)/(z^2 +2*z*zz + zz^2 + p1)
  |c| <= p2
  ;SOURCE: bshng.frm
}


bshng77 {; by Kovari Janos
  c = pixel, k = pixel, z = pixel:
  c = (c + p1)^2
  k = (k + p1)^3
  z = c*k*z + pixel
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng78 {; by Kovari Janos
  c = pixel, z = pixel:
  c = c/(c-p1)
  z = fn1(z) + c
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng79 {; by Kovari Janos
  c1 = p1, c2 = pixel
  IF (c1>c2)
    z = pixel
  ELSE
    z = p1
  ENDIF
  k1 = c1/z
  k2 = c2/z:
  z = z + k1*pixel + k2*p1
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng80 {; by Kovari Janos
  c = p1, z = pixel:
  z = fn1(z) + fn2(c)
  c = fn3(z)
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng81 {; by Kovari Janos
  z = pixel:
  a = real(fn1(z))
  b = real(fn2(z))
  z = a + flip(b)
  |z| <= p1
  ;SOURCE: bshng.frm
}


bshng82 {; by Kovari Janos
  z = pixel:
  a = real(fn1(z) + p1)
  b = real(fn2(z) + pixel)
  z = a+ flip(b)
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng83 {; by Kovari Janos
         ; Typo corrected by George Martin, 10/98
  z=pixel, i=0:
  IF (whitesq == 1)
    c = i*pixel + (1-i)*p1
  ELSE
    c = (1-i)*pixel + i*p1
  ENDIF
  z = fn1(z) + c
  i = 1 - i
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng84 {; by Kovari Janos
  a = pixel, b = pixel, z = pixel:
  a = real(fn1(a))
  b = real(fn2(b))
  z = fn3(z) + a + flip(b)
  |z| <= p1
  ;SOURCE: sg_misc.frm
}


bshng85 {; by Kovari Janos
  a = pixel, b = pixel, z = pixel:
  a = fn1(a)
  b = fn2(b)
  c = real(a)
  d = real(b)
  z = fn3(z) + a + b + (flip(a-b))
  |z| <= p1
  ;SOURCE: bshng.frm
}


bshng86 {; by Kovari Janos
  c = abs(cabs(pixel)), k = abs(cabs(fn1(pixel))), z = pixel, i = 0:
  z = z^(c*k)/(i+1) + c*i + k*i
  c = abs(cabs(fn2(c)))
  k = abs(cabs(fn2(k)))
  i = i + 1
  |z| <= p1
  ;SOURCE: sg_misc.frm
}


bshng87 {; by Kovari Janos
  a = p1, b = pixel, c = abs(cabs(a - b))
  d = abs(cabs(a + b)), z = pixel:
  z = fn1(z) + (a/b)*(1 + c)/d
  a = fn2(p1)
  b = fn2(pixel)
  c = abs(cabs(a - b))
  d = abs(cabs(a + b))
  |z|<=p2
  ;SOURCE: bshng.frm
}


bshng88 {; by Koavri Janos
  i = 0,th1 = abs(cabs(real(pixel)))
  pr1 = abs(cabs(imag(pixel))):
  kappa = abs(real(p1) + abs(i*imag(p1)))
  c = kappa/(kappa-1)
  th2 = abs(real(p2))
  pr2 = abs(imag(p2))
  k = (th1/th2)^c
  j = pr2/pr1
  i = abs(i + real(pixel))
  abs(j) <= abs(k)
  ;SOURCE: bshng.frm
}


bshng89 {; by Kovari Janos
  z = pixel:
  z = z^((abs(cabs(real(pixel))) + 1)/(abs(cabs(imag(pixel))) + 1))\ 
        + real(pixel)/imag(pixel)
  |z| <= p1
  ;SOURCE: bshng.frm
}


bshng90 {; by Kovari Janos
  z = pixel:
  z = z*z + (abs(real(pixel)) + real(p1))/(abs(imag(pixel)) + imag(p1))
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng91 {; by Kovari Janos
  z = pixel:
  zlast = z
  z = z^(real(p1))
  z = z + abs(cabs(real(zlast/z + p2)))\ 
        + flip(abs(cabs(real(z/zlast + p2))))
  |z| <= p3
  ;SOURCE: bshng.frm
}


bshng92 {; by Kovari Janos
  z = pixel:
  zl = z
  z = z^2 - zl
  |zl/z| <= |pixel|
  ;SOURCE: bshng.frm
}


bshng93 {; by Kovari Janos
  z = pixel:
  z = fn1(z) + p1
  |fn2(z)| <= |fn3(z)|
  ;SOURCE: bshng.frm
}


bshng94 {; by Kovari Janos
  z = pixel:
  z1 = z
  z = 4*(fn1(z) - z1) + p1
  |pixel| <= |z|
  ;SOURCE: bshng.frm
}


bshng95 {; by Kovari Janos
  i = 0, z = pixel, z1 = flip(pixel):
  z1 = z
  z = 2*fn1(z^2/z1) + p1
  IF (z > z1)
    i = i + 1
  ENDIF
  i <= real(p2)
  ;SOURCE: sg_misc.frm
}


bshng96 {; by Kovari Janos
         ; Typos corrected by George Martin, 10/98
  zm= pixel, zj = pixel, i1 = 0, i2 = 0
  c1 = 0, c2 = 0, c = 0, k = 0:
  IF (|zm| <= 4)
    zm = zm^2 + pixel
    i1 = i1 + 1
    c1 = 0
  ELSE
    c1 = 1
  ENDIF
  IF (|zj| <= 4)
    zj = zj^2 + p1
    i2 = i2 + 1
    c2 = 0
  ELSE
    c2 = 1
  ENDIF
  IF (c1 + c2 == 2)
    c = 1
  ELSE
    c = 0
  ENDIF
  IF (i1 == i2)
    k = 1
  ELSE
    k = 0
  ENDIF
  c + k < 2
  ;SOURCE: bshng.frm
}


bshng97 {; by Kovari Janos
  z = pixel, c = pixel/4:
  k = fn1(pixel) + c
  c = (c^2 + pixel)/8
  z = fn2(z) + c
  |z| <= p1
  ;SOURCE: bshng.frm
}


bshng97-o {; by Kovari Janos
  z = real(pixel/p1) + flip(real(p1/pixel)):
  z = fn1(z) + fn2(pixel)
  |z| <= p2
  ;SOURCE: bshng97o.frm
}


bshng98 {; by Kovari Janos
  c = pixel
  c = fn1(pixel)*fn2(pixel)
  IF (|c| > 1) 
    k = c - p1
  ELSE
    k = c + p1
  ENDIF
  z = c:
  z = fn3(z) + pixel
  |z| <= p2
  ;SOURCE: bshng.frm
}


bshng99 (XAXIS) {; by Kovari Janos
  z = pixel, c = abs(cabs(pixel)):
  zold = z
  z = fn1(z) + c + pixel
  c = zold/z * c
  |z| <= p1
  ;SOURCE: bshng.frm
}


bubbleboth_jul {; Kerry Mitchell
        ;
        ; color Julia sets with small bubbles
        ; filled with swirls (combination of rays and circles)
        ;
        ; use outside=iter, decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (at least 4)
        ; imag(p2) = radius of bubble (try ~ .1)
        ; real(p3) = amount of circles (0 for only rays, try 0.5)
        ; imag(p3) = amount of rays (0 for only circles, try 0.5)
        ; zc is the variable used for iteration, z for coloring
        ;
  zc=pixel, c=p1, maxr=real(p2), minr=imag(p2), scale=2*pi/minr
  minset=0, iter=1, rzc=cabs(zc), minzc=zc
  weight=real(p3)+imag(p3)
  weightc=real(p3)/weight, weightr=imag(p3)/weight
        ;
        ; initial check:  see if pixel magnitude falls within threshold
        ;   if so, set minset flag, update minimum to current magnitude
        ;
  IF (rzc<minr)
    minr=rzc, minzc=zc, minset=1
  ENDIF
        :
  iter=iter+1, zc=sqr(zc)+c, rzc=cabs(zc)
        ;
        ; iteration check:  see if iterate falls within threshold
        ;   if so, set minset flag, update minimum to current magnitude
        ;
  IF (rzc<minr)
    minr=rzc, minzc=zc, minset=1
  ENDIF
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   scale minr to find decomp angle for circles
        ;   take polar angle from minzc to ray decomp angle
        ;   final angle is weighted average of ray and circle angles
        ;   if a new minimum was never set (minset=0),
        ;   set z=0 (color 0 under decomp)
        ;
  IF ((rzc>maxr)||(iter==maxit))
    iter=-1
    anglec=scale*minr, angler=imag(log(minzc))
    angle=weightc*anglec+weightr*angler
    z=(cos(angle)+flip(sin(angle)))*minset
  ENDIF
  iter > 0
;*******Kerry Mitchell's description of "bubble formulas"***********
;              narrative copyright Kerry Mitchell, 1998 
;  Applies to:
;     bubbleboth_jul (above)
;     bubbleboth_man
;
;The Bubble Method
;
;The bubble method is an extension of Fractint's bof60 scheme.  In
;bof60, the interior of the fractal is colored by how closed the iterate
;comes to the origin.  In the bubble method, a specific value is set as
;the threshold.  Each step, the magnitude of the iterate is compared to
;the threshold.  If the current magnitude is smaller, it becomes the new
;threshold level.  The effect is to cover the fractal with "bubbles",
;circles the radius of the threshold.  Below a certain threshold value,
;the image is a dust of small, disconnected bubbles.  At a particular
;theshold value, which varies with the parameter c, the circles all
;touch.  Beyond this, the circles squish into each other, like mounds
;of soap bubbles.
;
;At bailout, if the image is colored by the last threshold, each bubble
;will be filled with rings of concentric circles, representing the range
;of minima from the original threshold level down to zero.
;
;Alternatively, the bubbles can be colored by the polar angle of the
;iterate, as in the standard Fractint decomposition method.  Here, the
;disks become filled with radial lines of color, emminating from the
;center of the disk.
;
;The formulas "bubbleboth" (Mandelbrot and Julia variations) combine
;the concentric circle and ray colorings.  The magnitude of the final
;minimum is scaled into an angle.  This is averaged with the polar angle
;of the final iterate, using user-supplied weights.  This allows the
;specification of either circles or rays using the same formula.  In
;between (for example, using equal amounts of circle and ray) are swirls.
;A judicious choice of color map will eliminate the branch cuts that can
;be seen with the swirls.
;
;***********************************************************************
  ;SOURCE: 98msg.frm
}


bubbleboth_man {; Kerry Mitchell
        ; for Kerry Mitchell's explanation of his "bubble" formulas, see
        ; the end of the formula bubbleboth_jul
        ;
        ; color Mandelbrot set with small bubbles
        ; filled with swirls (combination of rays and circles)
        ;
        ; use outside=iter, decomp=256
        ; real(p1) = bailout (at least 4)
        ; imag(p1) = radius of bubble (try ~ .1)
        ; real(p2) = amount of circles (0 for only rays, try 0.5)
        ; imag(p2) = amount of rays (0 for only circles, try 0.5)
        ; zc is the variable used for iteration, z for coloring
        ;
  zc=pixel, c=pixel, maxr=real(p1), minr=imag(p1), scale=2*pi/minr
  minset=0, iter=1, rzc=cabs(zc), minzc=zc
  weight=real(p2)+imag(p2)
  weightc=real(p2)/weight, weightr=imag(p2)/weight
        ;
        ; initial check:  see if pixel magnitude falls within threshold
        ;   if so, set minset flag, update minimum to current magnitude
        ;
  IF (rzc<minr)
    minr=rzc, minzc=zc, minset=1
  ENDIF
  :
  iter=iter+1, zc=sqr(zc)+c, rzc=cabs(zc)
        ;
        ; iteration check:  see if iterate falls within threshold
        ;   if so, set minset flag, update minimum to current magnitude
        ;
  IF (rzc<minr)
    minr=rzc, minzc=zc, minset=1
  ENDIF
        ;
        ; bailout
        ;   set "iteration done" flag (iter=-1)
        ;   scale minr to find decomp angle for circles
        ;   take polar angle from minzc to ray decomp angle
        ;   final angle is weighted average of ray and circle angles
        ;   if a new minimum was never set (minset=0),
        ;   set z=0 (color 0 under decomp)
        ;
  IF ((rzc>maxr)||(iter==maxit))
    iter=-1
    anglec=scale*minr, angler=imag(log(minzc))
    angle=weightc*anglec+weightr*angler
    z=(cos(angle)+flip(sin(angle)))*minset
  ENDIF
  iter > 0
  ;SOURCE: 98msg.frm
}


bubbles {; Jim Muth
         ; As Posted in Fractal-Art, 4/18/97
  z=c=pixel:
  a=sqr(z)+(c-1)*z-c
  b=3*sqr(z)+c-1
  z=z-2*a/b
  .000000000000000000000000000001 <= |a|
  ;SOURCE: 97msg.frm
}


bubbles_jm {; Jim Muth
  z=c=pixel:
  a=sqr(z)+(c-1)*z-c
  b=3*sqr(z)+c-1
  z=z-2*a/b
  .000000000000000000000000000001 <= |a|
  ;SOURCE: 0from_ml.frm
}


Bubbles_Julia_Mset {; Copyright (c) Paul W. Carlson, 1998
    ;   p1       = if both real(p1) and imag(p1) are zero
    ;              do Mset, otherwise do Julia set.
    ;   real(p2) = maximum contour of minimum sqrt(|w|)
    ;              (this is the outside edge of the bubbles).
    ;   imag(p2) = Value of |w| at bailout.
    ;   real(p3) = number of color ranges.
    ;   imag(p3) = number of colors in each color range.
    ;
  IF (real(p1) == 0 && imag(p1) == 0)
    w = 0
    c = pixel
  ELSE
    w = pixel
    c = p1
  ENDIF
  z = bailout = iter = range_num = 0
  max_w = imag(p2)
  max_min_w = real(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  index_factor = (colors_in_range - 1) /max_min_w
  min_w = 1.0e20
  :
  w = w * w + c
    ;
  temp = sqrt(|w|)
  IF (temp < min_w)
    min_w = temp
    save_range = range_num
  ENDIF
  IF (|w| > max_w)
    IF (min_w < max_min_w)
      z = index_factor * min_w + save_range * colors_in_range + 1
    ELSE
      z = 0
    ENDIF
    bailout = 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0  && |w| < max_w
  ;SOURCE: 98msg.frm
}


bubbles_la {; Formulas by Bob Carr and Paul Carlson 
            ; combined and modified by Linda Allison
  z = c = pixel:
  z2 = c * (1 - z * z)/(1 + z * z)
  z = fn1(z2) + fn2((z2 ^ 2)/p1)
  |z| <= 100
  ;SOURCE: 0from_ml.frm
}


bubblesGrav {; adapted from Paul Carlson
    ; original gravijul by Mark Christenson
    ; Parameters:
    ;
    ;   p1       = if both real(p1) and imag(p1) are zero
    ;              do Mset, otherwise do Julia set.
    ;   real(p2) = maximum contour of minimum sqrt(|w|)
    ;              (this is the outside edge of the bubbles).
    ;   imag(p2) = value of |w| at bailout.
    ;   real(p3) = number of color ranges.
    ;   imag(p3) = number of colors in each color range.
    ;
  IF (real(p1) == 0 && imag(p1) == 0)
    w = 0
    c = pixel
  ELSE
    w = pixel
    c = p1
  ENDIF
  z = bailout = iter = range_num = 0
  max_w = imag(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  max_min_w = real(p2)
  min_w = 1.0e20
  factor = (colors_in_range - 1) / max_min_w
  :
  q=fn1(w)
  w=fn3(1/fn2(q*q))
    ;
  temp = sqrt(|w|)
  IF (temp < min_w)
    min_w = temp
    save_range = range_num
  ENDIF
  IF (|w| > max_w)
    IF (min_w < max_min_w)
      z = factor * min_w + save_range * colors_in_range + 1
    ELSE
      z = 0
    ENDIF
    bailout = 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0  && |w| < max_w
  ;SOURCE: 98msg.frm
}


BUG01 (XAXIS) {
  z = 0: 
  z = pixel + z + p1
  z = z^z + fn1(z^5)
  ;SOURCE: damion.frm
}


BUG02 (XAXIS) {
  z = 0: 
  z = pixel + z + p1
  z = fn1(z) + z^z + c
  ;SOURCE: damion.frm
}


BUG03 (XAXIS) {
  z = 0:
  z = pixel + z + p1
  z = z^z + z^6 + pixel
  z <= 4
  ;SOURCE: damion.frm
}


BUG04 (XAXIS) {
  z = 0:
  z = pixel + z + p1
  z = fn1(z ^ z) + z^5 
  ;SOURCE: damion.frm
}


BUG05 (XYAXIS) {
  z = 0:
  z = sin(z) + cos(pixel) + c + p1
  z = z ^ fn1(z) + z  
  ;SOURCE: damion.frm
}


BUG06 (XAXIS) {; replaced "pi" with "approxpi". G. Martin, 7/9/99
  z = 0:
  approxpi = 3.141592654
  z = z * z + sqr(sin(approxpi))
  z = fn1(z) + z ^ z  
  z = z + pixel
  ;SOURCE: damion.frm
}


butter {; Giuseppe Zito
  z = pixel
  c0 = 0.673033
  c1 = -0.381069
  d2 = 0.26837
  d4 = -0.24802
  d5 = -0.979016
  : 
  x = real(z), y = imag(z)
  s0 =c0
  s0 = s0 *c1
  s0 = s0 *x
  s1 = y
  s0 = s0 -s1
  newx = s0 
  s0 = y
  s0 = s0 /y
  s0 = s0 -d2
  s0 = s0 -d4
  s0 = s0 +d5
  s1 = x
  s0 = s0 *s1
  s0 = s0 /y
  s0 = s0 -x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


Bwwwaaahaahahahaha {; Jay Hill, 1998
    ; shift one midget over another, merge images
    ; p1 = shift of first midget
    ; p2 = scaling factor of first midget relative to second
    ; p3 = shift of second midget
    ; use outside=summ periodicity=0 passes=1float=y
  done = 1, z = 0
  zc = c = (pixel+p3)*(1-whitesq) + (pixel/p2+p1)*whitesq
                 ; component tests and set colors
  s=|c|, t1=(256*s - 96)*s + 32*Real(c), t2=16*s +32*Real(c) + 16
  B=sqrt(-4*c-7), t3=|8+4*c*(1-B)|, t4=|8+4*c*(1+B)|
  z=z + 249*(t1<=3) + 250*(t2<=1) + 251*(t3<=1) + 252*(t4<=1)
  IF (z>0)       ; for periods 1, 2 and 3
    done=-1      ; color is set for c in a component, skip iterations
  ENDIF
  :
  zc=sqr(zc) + c ; standard MSet iteration
  IF (|zc| >= 4) ; Bailout at 4
    done=-1      ; Set flag to force an exit.
  ENDIF
  done >= 0      ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}

