

J_Laguerre2 {
  z = pixel, c = p1 :
  z = (z*(z - 4) +2 ) / 2 + c,
  |z| <= 100
  ;SOURCE: newtcheb.frm
}


J_Laguerre3 {
  z = pixel, c = p1 :
  z = (z*(z*(-z + 9) -18) + 6 ) / 6 + c,
  |z| <= 100
  ;SOURCE: newtcheb.frm
}


J_Laguerre4 {
  z = pixel, c = p1 :
  z = (z * ( z * ( z * ( z - 16)+ 72) - 96)+ 24 ) / 24 + c,
  |z| <= 100
  ;SOURCE: newtcheb.frm
}


J_Laguerre5 {
  z = pixel, c = p1 :
  z=(z*(z*(z*(z*(-z+25)-200)+600)-600)+120)/120+c,
  |z| <= 100
  ;SOURCE: newtcheb.frm
}


J_Laguerre6 {
  z = pixel, c = p1 :
  z=(z*(z*(z*(z*(z*(z-36)+450)-2400)+5400)-4320)+720 )/720 + c,
  |z| <= 100
  ;SOURCE: newtcheb.frm
}


J_TchebychevC2 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*(z*z-2),
  |z|<=100
  ;SOURCE: newtcheb.frm
}


J_TchebychevC3 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*z*(z*z-3),
  |z|<=100
  ;SOURCE: newtcheb.frm
}


J_TchebychevC4 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*(z*z*(z*z-4)+2),
  |z|<=100
  ;SOURCE: newtcheb.frm
}


J_TchebychevC5 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*z*(z*z*(z*z-5)+5),
  |z|<=100
  ;SOURCE: newtcheb.frm
}


J_TchebychevC6 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*(z*z*(z*z*(z*z-6)+9)-2),
  |z|<=100
  ;SOURCE: newtcheb.frm
}


J_TchebychevC7 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*z*(z*z*(z*z*(z*z-7)+14)-7),
  |z|<=100
  ;SOURCE: newtcheb.frm
}


J_TchebychevS2 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*(z*z-1),
  |z|<=100
  ;SOURCE: newtcheb.frm
}


J_TchebychevS3 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*z*(z*z-2),
  |z|<=100
  ;SOURCE: newtcheb.frm
}


J_TchebychevS4 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*(z*z*(z*z-3)+1),
  |z|<=100
  ;SOURCE: newtcheb.frm
}


J_TchebychevS5 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*z*(z*z*(z*z-4)+3),
  |z|<=100
  ;SOURCE: newtcheb.frm
}


J_TchebychevS6 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*(z*z*(z*z*(z*z-5)+6)-1),
  |z|<=100
  ;SOURCE: newtcheb.frm
}


J_TchebychevS7 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*z*(z*z*(z*z*(z*z-6)+10)-4),
  |z|<=100
  ;SOURCE: newtcheb.frm
}


J_TchebychevT2 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*(2*z*z-1),
  |z|<=100
  ;SOURCE: newtcheb.frm
}


J_TchebychevT3 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*z*(4*z*z-3),
  |z|<=100
  ;SOURCE: newtcheb.frm
}


J_TchebychevT4 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*(z*z*(8*z*z+8)+1),
  |z|<=100
  ;SOURCE: newtcheb.frm
}


J_TchebychevT5 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*(z*(z*z*(16*z*z-20)+5)),
  |z|<=100
  ;SOURCE: newtcheb.frm
}


J_TchebychevT6 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*(z*z*(z*z*(32*z*z-48)+18)-1),
  |z|<=100
  ;SOURCE: newtcheb.frm
}


J_TchebychevT7 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*z*(z*z*(z*z*(64*z*z-112)+56)-7),
  |z|<=100
  ;SOURCE: newtcheb.frm
}


J_TchebychevU2 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*(4*z*z-1),
  |z|<=100
  ;SOURCE: newtcheb.frm
}


J_TchebychevU3 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*z*(8*z*z-4),
  |z|<=100
  ;SOURCE: newtcheb.frm
}


J_TchebychevU4 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*(z*z*(16*z*z-12)+1),
  |z|<=100
  ;SOURCE: newtcheb.frm
}


J_TchebychevU5 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*z*(z*z*(32*z*z-32)+6),
  |z|<=100
  ;SOURCE: newtcheb.frm
}


J_TchebychevU6 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*(z*z*(z*z*(64*z*z-80)+24)-1),
  |z|<=100
  ;SOURCE: newtcheb.frm
}


J_TchebychevU7 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*z*(z*z*(z*z*(128*z*z-192)+80)-8),
  |z|<=100
  ;SOURCE: newtcheb.frm
}


Jm_01 (xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  z=(fn1(fn2(z^pixel)))*pixel,
  |z|<=t
  ;SOURCE: jmcr2.frm
}


Jm_02 (xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  z=(z^pixel)*fn1(z^pixel),
  |z|<=t
  ;SOURCE: jmcr2.frm
}


Jm_03 (xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  z=fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel))*pixel,
  |z|<=t
  ;SOURCE: jmcr2.frm
}


Jm_04 (xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  z=fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel)),
  |z|<=t
  ;SOURCE: jmcr2.frm
}


Jm_05 (xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  z=fn1(fn2((z^pixel))),
  |z|<=t
  ;SOURCE: jmcr2.frm
}


Jm_06 (xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  z=fn1(fn2(fn3((z^z)*pixel))),
  |z|<=t
  ;SOURCE: jmcr2.frm
}


Jm_07 (xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  z=fn1(fn2(fn3((z^z)*pixel)))*pixel,
  |z|<=t
  ;SOURCE: jmcr2.frm
}


Jm_08 (xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  z=fn1(fn2(fn3((z^z)*pixel)))+pixel,
  |z|<=t
  ;SOURCE: jmcr2.frm
}


Jm_09 (xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  z=fn1(fn2(fn3(fn4(z))))+pixel,
  |z|<=t
  ;SOURCE: jmcr2.frm
}


Jm_10 (xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  z=fn1(fn2(fn3(fn4(z)*pixel))),
  |z|<=t
  ;SOURCE: jmcr2.frm
}


Jm_11 (xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  z=fn1(fn2(fn3(fn4(z)*pixel)))*pixel,
  |z|<=t
  ;SOURCE: jmcr2.frm
}


Jm_12 (xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  z=fn1(fn2(fn3(z)*pixel)),
  |z|<=t
  ;SOURCE: jmcr2.frm
}


Jm_13 (xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  z=fn1(fn2(fn3(z)*pixel))*pixel,
  |z|<=t
  ;SOURCE: jmcr2.frm
}


Jm_14 (xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  z=fn1(fn2(fn3(z)*pixel))+pixel,
  |z|<=t
  ;SOURCE: jmcr2.frm
}


Jm_15 (xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  f2=fn2(z),z=fn1(f2)*fn3(fn4(f2))*pixel,
  |z|<=t
  ;SOURCE: jmcr2.frm
}


Jm_16 (xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  f2=fn2(z),z=fn1(f2)*fn3(fn4(f2))+pixel,
  |z|<=t
  ;SOURCE: jmcr2.frm
}


Jm_17 (xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  z=fn1(z)*pixel*fn2(fn3(z)),
  |z|<=t
  ;SOURCE: jmcr2.frm
}


Jm_18 (xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  z=fn1(z)*pixel*fn2(fn3(z)*pixel),
  |z|<=t
  ;SOURCE: jmcr2.frm
}


Jm_19 (xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  z=fn1(z)*pixel*fn2(fn3(z)+pixel),
  |z|<=t
  ;SOURCE: jmcr2.frm
}


Jm_20 (xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  z=fn1(z^pixel),
  |z|<=t
  ;SOURCE: jmcr2.frm
}


Jm_21 (xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  z=fn1(z^pixel)*pixel,
  |z|<=t
  ;SOURCE: jmcr2.frm
}


Jm_22 (xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  sq=fn1(z), z=(sq*fn2(sq)+sq)+pixel,
  |z|<=t
  ;SOURCE: jmcr2.frm
}


Jm_23 (xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  z=fn1(fn2(fn3(z)+pixel*pixel)),
  |z|<=t
  ;SOURCE: jmcr2.frm
}


Jm_24 (xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  z2=fn1(z), z=(fn2(z2*fn3(z2)+z2))+pixel,
  |z|<=t
  ;SOURCE: jmcr2.frm
}


Jm_25 (xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  z=fn1(z*fn2(z)) + pixel,
  |z|<=t
  ;SOURCE: jmcr2.frm
}


Jm_26 (xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  z=fn1(fn2(z)) + pixel,
  |z|<=t
  ;SOURCE: jmcr2.frm
}


Jm_27 (xaxis) {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
  sqrz=fn1(z), z=sqrz + 1/sqrz + pixel,
  |z|<=t
  ;SOURCE: jmcr2.frm
}


Jm_ducks (XAXIS) {; Jm Richard-Collard
                  ; try fn1 = sqr
                  ; try corners=-1.178372/-0.978384/-0.751678/-0.601683
  z = pixel,
  t = 1+pixel:
  z = fn1(z)+t,
  |z| <= p1 + 4
  ;SOURCE: improved.frm
}


JTet (XAXIS) {; Lee Skinner - same as FRACTINT.FRM
              ; Julia form 1 of the Tetration formula
              ; (p2+3) changed to (p2+4) - Jon Horner
  z = pixel:
  z = (pixel ^ z) + p1,
  |z| <= (p2 + 4)
  ;SOURCE: improv2.frm
}


julia {;                                         changed 13 Jan 1993
       ; p1=parameter (default (.3,.6) )
       ; bailout is real(p2) (default 4)
  z = pixel,  ; next, force c=(.3,.6) if p1=0
  c = ((0.3,0.6) * (|p1|<=0) + p1 ),
  t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = sqr(z) + c,
  |z| <= t
  ;SOURCE: builtn2.frm
}


Julia (ORIGIN) {; v3.x-Chuck Ebbert - from BUILTN.FRM changed 13 Jan 1994
                ; Use float=yes                              -JH
                ; p1-parameter (default (0.3,0.6) )
                ; real(p2) changes bailout (default = 4)
  z = pixel,         ; next, force c=(0.3,0.6) if p1=0
  c = ((0.3,0.6) * (|p1|<=0) + p1 ),
  t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ) :
  z = sqr(z) + c ,
  |z| <= t
  ;SOURCE: parser.frm
}

