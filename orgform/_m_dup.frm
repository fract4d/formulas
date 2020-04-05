

M-SetInNewton (XAXIS) {; based on MandelbrotInNewton from CAL v4.0
                       ; use float=yes
                       ; substituting (c-1) for cminusone slows it down
  z = 0, c = pixel, cminusone = c-1:
  oldz = z
  nm = 3 * c - 2 * z * cminusone
  dn = 3 * (3 * z * z + cminusone)
  z  = nm/dn + 2 * z / 3
  |0.001| <= |(z - oldz)|
  ;SOURCE: mandnewt.frm
}


M_Laguerre2 (XAXIS) {
  z = p1, c = pixel :
  z = (z*(z - 4) +2 ) / 2 + c
  |z| <=p2
  ;SOURCE: newtcheb.frm
}


M_Laguerre3 (XAXIS) {
  z = p1, c = pixel :
  z = (z*(z*(-z + 9) -18) + 6 ) / 6 + c
  |z| <=100
  ;SOURCE: newtcheb.frm
}


M_Laguerre4 (XAXIS) {; float=yes
  z = p1, c = pixel :
  z = (z * ( z * ( z * ( z - 16)+ 72) - 96)+ 24 ) / 24 + c
  |z| <=100
  ;SOURCE: newtcheb.frm
}


M_Laguerre5 (XAXIS) {; float=yes
  z = p1, c = pixel :
  z=(z*(z*(z*(z*(-z+25)-200)+600)-600)+120) / 120 + c
  |z| <=100
  ;SOURCE: newtcheb.frm
}


M_Laguerre6 (XAXIS) {; float=yes
  z = p1, c = pixel :
  z=(z*(z*(z*(z*(z*(z-36)+450)-2400)+5400)-4320)+720) / 720 + c
  |z| <=100
  ;SOURCE: newtcheb.frm
}


M_TchebychevC2 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z-2)
  |z|<=100
  ;SOURCE: newtcheb.frm
}


M_TchebychevC3 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(z*z-3)
  |z|<=100
  ;SOURCE: newtcheb.frm
}


M_TchebychevC4 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z*(z*z-4)+2)
  |z|<=100
  ;SOURCE: newtcheb.frm
}


M_TchebychevC5 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(z*z*(z*z-5)+5)
  |z|<=100
  ;SOURCE: newtcheb.frm
}


M_TchebychevC6 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z*(z*z*(z*z-6)+9)-2)
  |z|<=100
  ;SOURCE: newtcheb.frm
}


M_TchebychevC7 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(z*z*(z*z*(z*z-7)+14)-7)
  |z|<=100
  ;SOURCE: newtcheb.frm
}


M_TchebychevS2 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z-1)
  |z|<=100
  ;SOURCE: newtcheb.frm
}


M_TchebychevS3 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(z*z-2)
  |z|<=100
  ;SOURCE: newtcheb.frm
}


M_TchebychevS4 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z*(z*z-3)+1)
  |z|<=100
  ;SOURCE: newtcheb.frm
}


M_TchebychevS5 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(z*z*(z*z-4)+3)
  |z|<=100
  ;SOURCE: newtcheb.frm
}


M_TchebychevS6 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z*(z*z*(z*z-5)+6)-1)
  |z|<=100
  ;SOURCE: newtcheb.frm
}


M_TchebychevS7 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(z*z*(z*z*(z*z-6)+10)-4)
  |z|<=100
  ;SOURCE: newtcheb.frm
}


M_TchebychevT2 (XAXIS) {
  z = p1, c = pixel :
  z = c*(2*z*z-1)
  |z|<=100
  ;SOURCE: newtcheb.frm
}


M_TchebychevT3 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(4*z*z-3)
  |z|<=100
  ;SOURCE: newtcheb.frm
}


M_TchebychevT4 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z*(8*z*z+8)+1)
  |z|<=100
  ;SOURCE: newtcheb.frm
}


M_TchebychevT5 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*(z*(z*z*(16*z*z-20)+5))
  |z|<=100
  ;SOURCE: newtcheb.frm
}


M_TchebychevT6 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z*(z*z*(32*z*z-48)+18)-1)
  |z|<=100
  ;SOURCE: newtcheb.frm
}


M_TchebychevT7 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(z*z*(z*z*(64*z*z-112)+56)-7)
  |z|<=100
  ;SOURCE: newtcheb.frm
}


M_TchebychevU2 (XAXIS) {
  z  =p1, c = pixel :
  z = c*(4*z*z-1)
  |z|<=100
  ;SOURCE: newtcheb.frm
}


M_TchebychevU3 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(8*z*z-4)
  |z|<=100
  ;SOURCE: newtcheb.frm
}


M_TchebychevU4 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z*(16*z*z-12)+1)
  |z|<=100
  ;SOURCE: newtcheb.frm
}


M_TchebychevU5 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(z*z*(32*z*z-32)+6)
  |z|<=100
  ;SOURCE: newtcheb.frm
}


M_TchebychevU6 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z*(z*z*(64*z*z-80)+24)-1)
  |z|<=100
  ;SOURCE: newtcheb.frm
}


M_TchebychevU7 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(z*z*(z*z*(128*z*z-192)+80)-8)
  |z|<=100
  ;SOURCE: newtcheb.frm
}


Magnet1M (XAXIS) {
   ; Duplicate of built-in type.
   ; P1 = initial perturbation of z(0).
  z = p1, cm1 = pixel - 1, cm2 = cm1 - 1:
  z = sqr( (z*z+cm1 ) / (z+z+cm2 ) )
  |z-1| > .000030517578 && |z| <= 100
  ;SOURCE: ebbert.frm
}


Magnet1M (XAXIS) {; Chuck Ebbert - from BUILTN.FRM
                  ; requires float=yes - JH
   ; set co-ords as TLx=-4.0,TLy=3.0,BRx=4.0,BRy=-3.0   -JH
   ; p1 = initial perturbation of z(0).
   ; real(p2) changes bailout (default = 100)
  z = p1, cm1 = pixel - 1, cm2 = cm1 - 1
  t = (100 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = sqr( (z*z+cm1 ) / (z+z+cm2 ) )
  |z-1| > .000030517578 && |z| <= t
  ;SOURCE: parser.frm
}


Magnet2M (XAXIS) {
   ; Duplicate of built-in type.
   ; P1 = initial perturbation of z(0).
  z=p1, c1=pixel-1, c1x3=c1*3, c2x3=c1x3-3
  c1c2=c1*c1-c1, c1c2p1=c1c2+1:
  z=sqr( ( (z*z+c1x3 )*z+c1c2 ) / ( (z*3+c2x3 )*z+c1c2p1 ) )
  |z-1| > .000030517578 && |z| <= 100
  ;SOURCE: ebbert.frm
}


Magnet2M (XAXIS) {; Chuck Ebbert - from BUILTN.FRM
   ; requires float=yes                                    -JH
   ; set co-ords as TLx=-1.5, TLy=1.95, BRx=3.7, BRy=-1.95    -JH
   ; p1 = initial perturbation of z(0).
   ; real(p2) changes bailout (default = 100)
  z=p1, c1=pixel-1, c1x3=c1*3, c2x3=c1x3-3
  c1c2=c1*c1-c1, c1c2p1=c1c2+1
  t = (100 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = sqr( ( (z*z+c1x3 )*z+c1c2 ) / ( (z*3+c2x3 )*z+c1c2p1 ) )
  |z-1| > .000030517578 && |z| <= t
  ;SOURCE: parser.frm
}


mandel {;                                        changed 12 Jan 1993
        ; p1=initial perturbation of z
        ; bailout is real(p2) (default 4)
  z = pixel + p1, c = pixel
  t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = sqr(z) + c
  |z| <= t
  ;SOURCE: builtn2.frm
}


Mandel {
   ; (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = c = pixel
  z2 = z * z:
  z = (z2 - c) / (2 * z + 1)
  |z| <= 4
  ;SOURCE: methods.frm
}


Mandel3 {; Fractal Creations
         ; try p1 = 1, p2 = 4, fn1 = sin
  z = pixel * p1
  c = fn1(z):
  z = (z*z) + c
  z = z * 1/c
  |z| <= p2
  ;SOURCE: improved.frm
}


Mandelbrot (XAXIS) {; Mark Peterson
                    ; try p1 = 0, p2 = 4, fn1 = sqr, fn2 = sqr
                    ; note p2 should not be zero
  z = pixel
  z = fn1(z):
  z = z + pixel + p1
  z = fn2(z)
  lastsqr <= p2
  ;SOURCE: improved.frm
}


Mandelbrot (xaxis) {; The classic Mandelbrot set
  z = 0, c = pixel:
  z = z*z + c
  |z| < 4
  ;SOURCE: frmtutor.frm
}


Mandelbrot (XAXIS) {; Mark Peterson
                    ; Classical fractal showing LastSqr speedup
  z = Pixel, z = Sqr(z):  ; Start with z**2 to initialize LastSqr
  z = z - Pixel
  z = Sqr(z)
  LastSqr <= 4            ; Use LastSqr instead of recalculating
  ;SOURCE: orman2.frm
}


Mandelbrot (XAXIS) {; Mark Peterson
                    ; Classical fractal showing LastSqr speedup
                    ; try p1 = 0, fn1 = sqr, fn2 = sqr
  z = pixel, z = fn1(z):    ; Start with z**2 to initialize LastSqr
  z = z + pixel + p1
  z = fn2(z)
  lastsqr <= (p2 + 4)       ; Use LastSqr instead of recalculating
  ;SOURCE: improv2.frm
}


Mandelbrot (XAXIS) {
  z = Pixel:  
  z = sqr(z) + pixel 
  |z| <= 4
  ;SOURCE: newforms.frm
}


Mandelbrot {; Jim Muth
  z=p1, c=pixel+p2:
  z=sqr(z)+c
  |z| <= 16
  ;SOURCE: 98msg.frm
}


Mandelbrot2 {; Jim Muth
  z=p1, c=pixel+p2:
  z=sqr(z)+c
  |z| <= 16
  ;SOURCE: 98msg.frm
}


MandelTangent {; Fractal Creations
               ; try p1 = 0, p2 = 32, fn1 = tan
  z = pixel + p1:
  z = pixel * fn1(z)
  |real(z)| < p2
  ;SOURCE: improved.frm
}


MandelTangent {; Fractal Creations
               ; try p1 = 0, p2 = 32, fn1 = tan
  z = pixel + p1:
  z = pixel * fn1(z)
  |real(z)| <= p2
  ;SOURCE: improv2.frm
}


ManInTheOzone (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=cos(z)+pixel
  z=sin(z)+pixel
  x=x+1 
  |z|<=4 
  ;SOURCE: form1.frm
}


ManInTheOzone (XAXIS_NOPARM) {; Jon Osuch
   ; Try p1=0, p2=4, fn1=sqr, fn2=cosxx, fn3=sin
   ; Edited for Fractint v. 20 by George Martin 10/98
  z = p1
  x = 1:
  z=fn1(z) + pixel
  z=fn2(z)+pixel
  z=fn3(z) + pixel
  x = x+1
  |z|  <= p2
  ;SOURCE: select.frm
}


ManInTheOzoneC (XAXIS_NOPARM) { 
   ; Edited for Fractint v. 20 by George Martin 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSEIF (x<20)
    z=cos(z)+pixel
  ELSE
    z=sin(z)+pixel
  ENDIF
  x=x+1 
  |z|<=4 
  ;SOURCE: form1.frm
}


manowar { 
  z=pixel, g=pixel, f=pixel:
  g = f
  f = z
  z = fn1(z^p1) + fn2(p2*g) + pixel 
  |z|<=4 
  ;SOURCE: test.frm
}


MarksMandelPwr (XAXIS) {; Jon Horner
  z = pixel + p1, c = z ^ (z - 1) :
  z = fn1(z) * c + pixel
  |z| <= 4
  ;SOURCE: parser.frm
}


MarksMandelPwr_tan (XAXIS) {; edited 5/6/96 for Orgform by George Martin
   ; removed "_a" from end of name (name exceeded max 18 chars).
   ; moved to _m_dup.frm
  z = pixel, c = z ^ (z - 1):
  z = c * sin(z)/conj(cos(z)) + pixel
  |z| <= 4
  ;SOURCE: formulas.frm
}


mask {; Giuseppe Zito c1=0.538999 , c2 = 1.629151
  z=pixel, c1 = real(p1), c2 = imag(p1):
  x = real(z), y = imag(z)
  newx = c1*x-y
  newy = c2*x - x*x
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4
  ;SOURCE: zg.frm
}


Michaelbrot {; Michael Theroux [71673,2767]
             ; Fix and generalization by  Ron Barnett [70153,1233]   
             ; Try p1 = 2.236067977 for the golden mean
             ; based on Golden Mean
  z = pixel:
  z = sqr(z) + ((p1 + 1)/2)
  |z| <= 4
  ;SOURCE: fract002.frm
}


MixUp {; (c) Jay Hill, 1998
       ; make sure p1 <> p2 and p3 <> 0
  u=p1, v=p2, w=p3 
  c=pixel/w, x=v-u, z=(-u/v/w)^(1/x):
  z=z^u + w*z^v + c
  |z| <= 1000
  ;SOURCE: 98msg.frm
}


Moth (XAXIS_NOPARM) {; Jon Osuch
                     ; Try p1=0, p2=4, fn1=sqr, fn2=exp, fn3=log
     ; Edited for Fractint v.20 by George Martin, 10/98
  z = p1
  x = 1:
  z=fn1(z) + pixel
  z=fn2(z)+pixel
  z=fn3(z) + pixel
  x = x+1
  |z| <= p2
  ;SOURCE: select.frm
}


Mothra (XAXIS) {; Ron Lewen, 76376,2567
                ; Remember Mothra, the giant Japanese-eating moth?
                ; Well... here he (she?) is as a fractal!
  z=pixel:
  z2=z*z
  z3=z2*z
  z4=z3*z
  a=z4*z + z3 + z + pixel
  b=z4 + z2 + pixel
  z=b*b/a
  |real(z)| <= 100 || |imag(z)| <= 100
  ;SOURCE: form1.frm
}


MTet (XAXIS) {; Lee Skinner
              ; Mandelbrot form 1 of the Tetration formula
              ; try fn1 = ident
  z = pixel:
  z = fn1(pixel ^ z) + pixel
  |z| <= (p1 + 4)
  ;SOURCE: improv2.frm
}


multirot-XY-ZW {; Jim Muth, best=ifif, fiif, fifi, iffi    OLD version
  a=real(p1)*.01745329251994, b=imag(p1)*.01745329251994
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2
  c=cos(b)*fn3(real(pixel))+cos(a)*fn4(imag(pixel))+p3:
  z=sqr(z)+c
  |z| <= 36  
  ;SOURCE: 98msg.frm
}


MyFractal {; Fractal Creations
           ; try p1 = 0, p2 = 4
  c = z = 1/pixel + p1:
  z = fn1(z) + c
  |z| <= p2
  ;SOURCE: improved.frm
}

