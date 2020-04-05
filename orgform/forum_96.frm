; Compilation of Fractint formulas required for "forum_96.par"
; Compiled by Les St Clair <les_stclair@compuserve.com>

Barnsley_PHC_3 { ;;formula adapted by Vincent Damion Presogna
  z = c = pixel
  c1 = p1*whitesq + c*(whitesq==0) , c2 = p2*(whitesq==0) :
   z1 = z - (z>=0) + (z<0)
   z = z1*c1 + c2
    |z| < 4
  }

BEJ-N141{;
z=pixel/1.1357,c=sqr(abs(pixel)):
z=fn2(z)*pixel+fn1(c)
z=z*z-c
|0.0001|<z
}

BJ-Lesfrm13-002 { ;Modified Les St Clair formula "Lesfrm13" 
 z = pixel 
 x = fn1(z) , y = fn2(z):
 x = x*p1*pi
 y = y*p2*pi 
 z = fn4(x/fn3(y))
 |z| <= 4
}

BJ-Lesfrm13-004 { ; Modified Les St Clair formula, 1996
                  ; modified by Brian E. Jones
 z = pixel 
 x = fn1(z*z) , y = fn2(z*z):
 x = fn3(x)*p1*pi
 y = fn4(y)*p2*pi 
 z = x/y
 |z| <= 4
}

BJ-SG-3-03-gb { ;Brian E. Jones [102702,2213]
                          ;Modified Sylvie Gallet [101324,3444], 1996
z = pixel , c = sin(conj(-0.81256,-0.1295)) :
 x = real(z) , y = imag(z)
 x1 = x - p1*fn1(x*x+p2*fn2(y)) * (whitesq == 0)+c* whitesq 
 y1 = y - p1*fn1(y*y+p2*fn2(x)) 
 z = x1+flip(y1)  
 |z| <= 4
}

BJ-SG-5-07-c { ; Modified Gallet 5-07
	       ; Sylvie Gallet [101324,3444], 1996 
  z = pixel , x = fn3(z*(0,1)) , y = fn4(z*(0,-1)) :
   hx = p1*fn1(x) , hy = p1*fn2(y)
   x = x + hy , y = y + hx
   z = x + flip(y)
    (|hx|+|hy|) <= p2
  }

Block_4 {
z = c = pixel:
r = tan(1/z) + p1
q = floor(z) - p2 * ceil(c) - p3
z = fn1(z) * r * q
round(z) < 4
}

Carr2917{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=flip(imag(0.33+sin(|pixel|)))*cabs((pixel)^4)-conj(0.10/pixel)-flip(0.010/pixel),
b4=1.2*(|pixel/0.75|)^5+conj(0.1/pixel+flip(0.01/pixel)),
c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
z=whitesq*sqr(b5)-(whitesq==0)*(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z*z+c,
c=((z+c/2.125)-0.0325)
iter=iter+1
|z|<=bailout
}

Carr2960{;Modified Sylvie Gallet frm. [101324,3444],1996
;passes=1 needs to be used with this PHC formula.
b5=abs(abs(0.5+conj(pixel)/2))^3-conj(0.1/pixel)^10-flip(0.1/pixel)^10-0.6,
b4=tanh(sinh(0.5+pixel/2))^3-conj(0.1/pixel)-flip(0.01/pixel)+0.25,
c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
z=z^2+(-0.7456,-0.132)+c/10,
c=((z+c/2.125)-0.0325)
iter=iter+1
imag(flip(z))<=bailout
}

F_TEXT_A2Z { ; Les St Clair 1996
          ; Created using "FracText" (alpha-1) by Jan Maarten van der Valk
          ; formulas "ABCDEFG","HIJKLMN","OPQRSTU" & "VWXYZ" were amalgamated
          ; suggested default values for fn1|fn2|fn3 are exp|ident|ident
z = fn1(log(pixel-.025))*2, x=real(z), y=imag(z), xa=3.00000*x, xc=1.00000*x, xk=1.50000*x, xm=2.50000*x, xn=2.50000*x, xq=1.40000*x, xr=2.00000*x, 
xv=3.50000*x, xw=4.00000*x, xx=2.00000*x, xy=2.50000*x, xz=1.50000*x, xsl=4.00000*x
x1=1.50000*x
chra1 = (y>(xa+11.16754)||y>(-xa+-7.20000))||(y<1.70000&&y>1.50000)
chra1 = chra1&&(y<(xa+11.80000)&&y<(-xa+-6.56754))
chrb2 = y<1.50000||(y<1.90000&&y>1.70000)||y>2.10000||x<-2.22251
chrb2 = chrb2&&((x>-2.42251)&&(x<-2.02251))
chrb2 = chrb2 || ((cabs(sqrt(|z+(2.02251,-1.60000)|)-0.20000)<0.10000)&&(x>-2.02251))
chrb2 = chrb2 || ((cabs(sqrt(|z+(2.02251,-2.00000)|)-0.20000)<0.10000)&&(x>-2.02251))
chrc3 = (cabs(sqrt(|z+(1.02251,-1.80000)|)-0.40000)<0.10000)&&(y>xc+2.82251||y<-xc+0.77749)
chrd4 = (y<1.50000)||(y>2.10000)
chrd4 = ((x<-0.26896) || chrd4)&&((x>-0.46896)&&(x<-0.16896))
chrd4 = chrd4 || ((cabs(sqrt(|z+(0.16896,-1.80000)|)-0.40000)<0.10000)&&(x>-0.16896))
chre5 = (y<1.50000)||((y<1.90000)&&(y>1.70000))||(y>2.10000)
chre5 = ((x<0.73104)||chre5)&&((x>0.53104)&&(x<1.13104))
chrf6 = (y<1.90000&&y>1.70000)||(y>2.10000)
chrf6 = ((x<1.53104)||chrf6)&&((x>1.33104)&&(x<1.93104))
chrg7 = (cabs(sqrt(|z+(-2.63104,-1.80000)|)-0.40000)<0.10000)&&(x<2.63104)
chrg7 = chrg7||((cabs(sqrt(|z+(-2.63104,-1.80000)|)-0.40000)<0.10000)&&(x>2.63104)&&(y<1.90000||y>2.00000))
chrg7 = chrg7||(x>2.63104&&x<3.13104&&y<1.90000&&y>1.70000)
chrh1 = ( (y<0.70000) && (y>0.50000))
chrh1 = (x<-3.30000 || x>-2.90000 || chrh1) && (x>-3.50000 && x<-2.70000)
chri2 = x>-2.50000 && x<-2.30000
chrj3 = (cabs(sqrt(|z+(1.80000,-0.40000)|)-0.20000)<0.10000) && (y<0.35000)
chrj3 = chrj3||(x>-1.70000&&y>0.35000)&&x<-1.50000
chrk4 = (x<-1.10000)
chrk4 = chrk4 || (y<(xk+2.38333)&&y>(xk+2.02278))
chrk4 = chrk4 || (y>(-xk+-1.18333)&&y<(-xk+-0.82278) && y<(xk+2.38333))&&x>-1.30000
chrl5 = (x<-0.21519||y<0.30000)&&x>-0.41519&&x<0.18481
chrm6 = (y>-xm+2.06204&&y<-xm+2.60055)
chrm6 = chrm6||(y<xm+-1.19537&&y>xm+-1.73389)&&y>0.43333
chrm6 = chrm6||(x>0.38481&&x<0.58481)||(x>0.93355&&x<1.13355)
chrn7 = (x>1.33355&&x<1.53355)||(x>1.73355&&x<1.94896)
chrn7 = chrn7 || (y>-xn+4.43389&&y<-xn+4.97240)
chro1 = (cabs(sqrt(|z+(3.00000,0.60000)|)-0.40000)<0.10000) && (x<-2.50000)
chrp2 = (y<-0.50000&&y>-0.70000)||y>-0.30000||x<-2.10000
chrp2 = chrp2&&((x>-2.30000) && (x<-1.90000))
chrp2 = chrp2 || ((cabs(sqrt(|z+(1.90000,0.40000)|)-0.20000)<0.10000) && (x>-1.90000))
chrq3 = (cabs(sqrt(|z+(0.90000,0.60000)|)-0.40000)<0.10000) && (x<-0.40000)
chrq3 = chrq3||(y>-xq+-2.00409&&y<-xq+-1.66000&&y<-0.74409)
chrr4 = (y<-0.50000&&y>-0.70000)||y>-0.30000||x<0.00000
chrr4 = chrr4&&((x>-0.20000) && (x<0.20000))
chrr4 = chrr4 || ((cabs(sqrt(|z+(-0.20000,0.40000)|)-0.20000)<0.10000) && (x>0.20000))
chrr4 = chrr4||(y<-0.60000&&y<-xr+-0.10000&&y>-xr+-0.54721)
chrs5 = (cabs(sqrt(|z+(-1.00000,0.40000)|)-0.20000)<0.10000)&&(x<1.00000||y>-0.40000)
chrs5 = chrs5||((cabs(sqrt(|z+(-1.00000,0.80000)|)-0.20000)<0.10000)&&(x>1.00000||y<-0.80000))
chrt6 = y>-0.30000&&x>1.50000&&x<2.10000
chrt6 = chrt6||(x>1.70000&&x<1.90000)
chru7 = (cabs(sqrt(|z+(-2.60000,0.80000)|)-0.20000)<0.10000)&&(y<-0.85000)
chru7 = chru7||(x>2.30000&&y>-0.85000&&x<2.50000)
chru7 = chru7||(x>2.70000&&x<2.90000)
chrv1 = y>-xv+-13.55000&&y<-xv+-12.82199
chrv1 = chrv1||y<xv+8.95000&&y>xv+8.22199
chrw2 = y<xw+6.78227&&y>xw+5.95765
chrw2 = chrw2||(y>-xw+-10.04894&&y<-xw+-9.22432)&&y<-1.63333
chrw2 = chrw2||(y>-xw+-11.38227&&y<-xw+-10.55765)
chrw2 = chrw2||(y<xw+5.44894&&y>xw+4.62432)
chrx3 = (y<xx+0.26216&&y>xx+-0.18505)||(y>-xx+-3.86216&&y<-xx+-3.41495)
chry4 = (y<xy+-1.40632&&y>xy+-1.94483)||(y>-xy+-2.19368&&y<-xy+-1.65516)&&y>xy+-1.94483
chrz5 = (y<xz+-2.78690&&y>xz+-3.14746)||y>-1.50000||y<-2.10000&&x>0.45793&&x<1.09830
test1 = 1 - fn2(real(chra1||chrb2||chrc3||chrd4||chre5||chrf6||chrg7)*real(y>1.30000)*real(y<2.30000))
test2 = 1 - fn2(real(chrh1||chri2||chrj3||chrk4||chrl5||chrm6||chrn7)*real(y>0.10000)*real(y<1.10000))
test3 = 1 - fn2(real(chro1||chrp2||chrq3||chrr4||chrs5||chrt6||chru7)*real(y>-1.10000)*real(y<-0.10000))
test4 = 1 - fn2(real(chrv1||chrw2||chrx3||chry4||chrz5)*real(y>-2.30000)*real(y<-1.30000))
z = 1+(0,-.65)/fn3(pixel+(0.0,.75)) :
z2 = z*z , z4 = z2*z2 , n = z4*z2-1 , z = z-n/(6*z4*z)
(|n|>=.0001) && test1 && test2 && test3 && test4
}

FRACTEST { ; TEST formula by Les St Clair 1996
          ; Created using "FracText" by Jan Maarten van der Valk
          ; Two formulas "FRAC" and "TEXT" have been amalgamated
          ; There is an error in the way the program handles the letter "C"
z = fn1(log(pixel-.025))*2, x=real(z), y=imag(z), xa=3.00000*x, xc=1.00000*x, xk=1.50000*x, xm=2.50000*x, 
xn=2.50000*x, xq=1.40000*x, xr=2.00000*x, 
xv=3.50000*x, xw=4.00000*x, xx=2.00000*x, xy=2.50000*x, xz=1.50000*x, xsl=4.00000*x
x1=1.50000*x
chrf1 = (y<1.25000&&y>1.15000)||(y>1.60000)
chrf1 = ((x<-1.15000)||chrf1)&&((x>-1.25000)&&(x<-0.75000))
chrr2 = (y<1.25000&&y>1.15000)||y>1.60000||x<-0.60000
chrr2 = chrr2&&((x>-0.70000) && (x<-0.40000))
chrr2 = chrr2 || ((cabs(sqrt(|z+(0.40000,-1.42500)|)-0.22500)<0.05000) && (x>-0.40000))
chrr2 = chrr2||(y<1.20000&&y<-xr+0.45000&&y>-xr+0.22639)
chra3 = (y>(xa+0.60877)||y>(-xa+2.47500))||(y<1.10000&&y>1.00000)
chra3 = chra3&&(y<(xa+0.92500)&&y<(-xa+2.79123))
chrc4 = (cabs(sqrt(|z+(-1.24708,-1.20000)|)-0.45000)<0.05000)&&(y>xc+-0.04708||y<-xc+2.44708)
chrt1 = y>0.20000&&x>-1.25000&&x<-0.65000
chrt1 = chrt1||(x>-1.00000&&x<-0.90000)
chre2 = (y<-0.60000)||((y<-0.15000)&&(y>-0.25000))||(y>0.20000)
chre2 = ((x<-0.50000)||chre2)&&((x>-0.60000)&&(x<-0.10000))
chrx3 = (y<xx+-0.60000&&y>xx+-0.82361)||(y>-xx+0.20000&&y<-xx+0.42361)
chrt4 = y>0.20000&&x>0.61180&&x<1.21180
chrt4 = chrt4||(x>0.86180&&x<0.96180)
test = 1 - fn2(real(chrf1||chrr2||chra3||chrc4)*real(y>0.70000)*real(y<1.70000)) 
test2 = 1 - fn2(real(chrt1||chre2||chrx3||chrt4)*real(y>-0.70000)*real(y<0.30000))
z = 1+(0,-.65)/fn3(pixel+(0.0,.75)) :
z2 = z*z , z4 = z2*z2 , n = z4*z2-1 , z = z-n/(6*z4*z)
(|n|>=.0001) && test && test2
}

Fractint-9-11 {; Sylvie Gallet [101324,3444], 1996
          ; requires 'periodicity=0' 
  z = fn1(log(pixel-0.025))*2 , x=real(z) , y=imag(z) , x1=x*1.8 , x3=3*x
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
   z2 = z*z , z4 = z2*z2 , n = z4*z2-1 , z = z-n/(6*z4*z)
    (|n|>=0.0001) && test
  }

FraKtint {; Modified Sylvie Gallet formula
          ; An exercise in changing the letters in Sylvie's original
          ; c= is replaced by k1/k2/k3=, test c replaced by k3
          ; Les St Clair [101461,2032] 1996
  z = pixel-0.025 , x=real(z) , y=imag(z) , x1=x*1.8 , x3=3*x
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
   z2 = z*z , z4 = z2*z2 , n = z4*z2-1 , z = z-n/(6*z4*z)
    (|n|>=0.0001) && test
  }

FT_195_INVERSE { ; Creates "Fractint 19.5" inverse text fixed to screen
     ; Les St Clair 101461.2032@compuserve.com - 1996
     ; Created using "FracText" (alpha-4) by Jan Maarten van der Valk
     ; "periodicity=0" and "passes=1" recommended
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
  pixel=(test==0)*f1+(test!=0)*f2
  z=1+(0,-0.65)/fn3(pixel+(0,0.75)):
  z2=z*z, z4=z2*z2, n=z4*z2-1, z=z-n/(6*z4*z)
  |n|>=.0001&&test==0
  }

FT_195_SOLID { ; Creates "Fractint 19.5" solid text fixed to screen
     ; Les St Clair 101461.2032@compuserve.com - 1996
     ; Created using "FracText" (alpha-4) by Jan Maarten van der Valk
     ; "periodicity=0" and "passes=1" recommended
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
  pixel=(test==0)*f1+(test!=0)*f2
  z=1+(0,-0.65)/fn3(pixel+(0,0.75)):
  z2=z*z, z4=z2*z2, n=z4*z2-1, z=z-n/(6*z4*z)
  |n|>=.0001&&test==0
  }

Gallet-3-07 (YAXIS) {; Sylvie Gallet [101324,3444], 1996
                ; Newton's method applied to
                ; x -> sin(y)^2+cos(x)^3 = 0
                ; y -> cos(x)^2+sin(y)^3 = 0
 z = 0.05/pixel , x=real(z) , y=imag(z) 
 cx=cos(x) , sx=sin(x) , cy=cos(y) , sy=sin(y) 
 cx2=cx*cx , cx3=cx2*cx , sy2=sy*sy , sy3=sy2*sy :
 d = 6*(cx*sy-4)     ; normal value -->  d = 9*(cx*sy-4)
 x = x+(sy3+3*sy*cx3-2*cx2)/(cx*sx*d)
 y = y-(cx3+3*cx*sy3-2*sy2)/(sy*cy*d)
 z = x + flip(y)
 cx=cos(x) , sx=sin(x) , cy=cos(y) , sy=sin(y) 
 cx2=cx*cx , cx3=cx2*cx , sy2=sy*sy , sy3=sy2*sy
 |sy2+cx3+flip(cx2+sy3)| > 0.00001
}

Gallet-4-01 { ; Sylvie Gallet [101324,3444], 1996
  z = pixel , h = p1 , a = p2 :
   x = real(z) , y = imag(z)
   x1 = x - fn2(x + a*fn1(x+h))
   y1 = y + fn2(y + a*fn1(y+h))
   z = x1 + flip(y1)
    |z| <= 4
  }

Gallet-4-06 { ; Sylvie Gallet [101324,3444], 1996
              ; PTC 24 bits formula
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  sq3 = -0.5 + flip(sqrt(3)/2)
  c = (r == 0) + sq3*(r == 1) + conj(sq3)*(r == 2)
  z = c * pixel :
   x = real(z) , y = imag(z)
   x1 = x - p1 * fn1(y*y + p2*fn2(y))
   y1 = y - p1 * fn1(x*x + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 4
  }

Gallet-5-03 { ; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z), y = imag(z) :
   x1 = x*x + p1*fn1((y) + fn2(p2*y))
   y1 = y*y + p1*fn1((x) + fn2(p2*x))
   x = x1 , y = y1
   z = fn3(x * y)
    |z| <= p3
  }

Gallet-5-05 { ; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = z , y = conj(z) :
   hx = p1*fn1(x) , hy = p1*fn2(y)
   x = x + hy , y = y + hx
   z = x + flip(y)
    (|hx|+|hy|) >= p2
  }

Gallet-5-08 { ; Sylvie Gallet [101324,3444], 1996
  z = pixel , x = real(z) , y = imag(z) :
   x1 = x - p1*fn1(y + fn2(p2*x) + fn3(p3*y))
   y1 = y - p1*fn1(x + fn2(p2*y) + fn3(p3*x))
   x = x1 , y = y1
   z = x + flip(y)
    |z| <= 32
  }

jenn001 {; Arno Jennen
  z=|pixel|+pixel+cosxx(pixel):
  z=fn1(z-5.75),
  |(z)|<78
  }

jenn002{; Arno Jennen
  z=|pixel|-pixel+flip(pixel):
  z=fn1(z+14),
  |(z)|<78
  }

JDfrm010 { ; Jim Deutch [104074,3171], 1996  Requires passes=1
           ; The Original PHC formula
  z = 0
  c = whitesq * pixel - (whitesq == 0) * pixel:
  z = z*z + c
  |z| < 4
}

jowe_13 { ; Jo Weber, July 1996
  c=p1
  z=pixel:
  z=fn1(z)-c/fn2(z)
}

jowe_43 { ; by Jo Weber, 100424,35 10/96
          ; bailout is p3
            z=c=pixel
            bailout=p3 :
            qad=sqr(z)
            z=sqrt(qad/(qad-p1*c))
            z=p2*fn1(z)
            |z|<=bailout
}

Lesfrm01r { ; Les St Clair, 1996
            ; modified Lesfrm01 to include rounding function
            ; requires Fractint 19.4 or later
            ; p1 sets degree of rounding
            ; smaller p1 = coarser rounding
c=z=pixel:
p=p1*((fn1(c)/fn2(z))/(c*c*c))
q=round(p)
r=q/p1
z=z+r,|z| <=4
}

Lesfrm04 (xaxis) { 
c=z=pixel:
z=z+(fn1(c^2)/fn2(z^2))/c^4,|z| <=6
}

Lesfrm12 { ; Les St Clair, 1996
 z = pixel :
 x = fn1(z) , y = fn2(z)
 z = x*y
 |z| <= 4
}

Lesfrm13 { ; Les St Clair, 1996
 z = pixel 
 x = fn1(z) , y = fn2(z):
 x = x*p1*pi
 y = y*p2*pi 
 z = x/y
 |z| <= 4
}

LesPHCfrm04 { ; Les St Clair [101461,2032], 1996  Requires passes=1
              ; Based on Liar1 & Glynn formulas by Chuck Ebbert and
              ; Earl Glynn 
        z = pixel:
        x = 1 - abs(imag(z)-real(z))
        z = (1 - abs(imag(z)-real(z)) + flip(1 - abs(1-real(z)-imag(z))))\
        * (whitesq == 0) + (z ^ p1 - p2) * whitesq
        (|z| <= 1 && whitesq == 0) || (|z| <= 4 && whitesq)
        }

mandel_nest{; George Martin [76440,1143]
	    ; Based on nesting method developed by Sylvie Gallet
	    ; Must use periodicity=0, float=yes
	    ; real(p1) is reduction factor, e.g 1 (default) is same size,
	    ;     2 is half the size (linear; 1/4 the area size)
	    ; imag(p1) is clockwise rotation of the image in degrees
            ; p2 - real portion moves image along the x axis, imag
	    ;     portion along the y axis. + = right,up. 
	    ; real(p3) - iteration spacing. 256 and multiples causes
	    ;     nested images to have same coloring. Default 256 
  z=0, c=pixel
  newpixel=pixel, iter=0 
  reduction=real(p1) + (real(p1)==0)
  nextzoom=iterspace=(p3>0)*p3 + (p3<=0)*256
  rotation=pi*flip(imag(p1))/180:
  test = (iter == nextzoom)
  nextzoom = nextzoom + test*iterspace
  newpixel = newpixel*(1-test) + test*reduction*(newpixel-p2)*exp(rotation)
  z = z*(1 - test) 
  c = c*(1 - test) + test*newpixel
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  }

manjul_lace { ; George Martin [76440,1143]  Requires passes=1
;
; var           white squares                   black squares
;
  z  =whitesq*    1.5*pixel  +(whitesq==0)*    pixel
  c  =whitesq*    1.5*pixel  +(whitesq==0)*    (-.75, .1234567):
;
;begin iterations
  z = z*z + c
  |z| <= 4
}

merryxms_01 { ; Les St Clair [101461.2032@compuserve.com] December 1996
              ; Fractint formula containing "Merry Christmas" text, based on
              ; Jim Deutch's snowflake "JDFrmF23.frm" and modified using
              ; FracText 1.0 (alpha 5b) by Jan Maarten van der Valk
              ; 'periodicity=0' and 'passes=1' recommended
  x=real(scrnpix)/real(scrnmax), y=(imag(scrnmax)-imag(scrnpix))/real(scrn\
  max), z=x+flip(y)
  xm=2.5*x
  chrM1 = (y<-xm+1.2086||y<xm-0.24556)&&y>-xm+1.14223&&y>xm-0.31193||(x>0.\
  23889&&x<0.26354)||(x>0.31812&&x<0.34277)
  chrE2 = x<0.37467||y<0.42465||(y<0.48482&&y>0.46018)||y>0.52035&&x>0.350\
  02&&x<0.43267
  xr=2*x
  chrR3 = y<0.48482&&y>0.46018||y>0.52035||x<0.46457&&x>0.43992&&x<0.49357\
  ||(abs(cabs(z+(-0.49357,-0.50259))-0.03009)<0.01232&&x>0.49357)||(y<0.47\
  25&&y<-xr+1.47197&&y>-xr+1.41685)
  chrR4 = y<0.48482&&y>0.46018||y>0.52035||x<0.56789&&x>0.54324&&x<0.59689\
  ||(abs(cabs(z+(-0.59689,-0.50259))-0.03009)<0.01232&&x>0.59689)||(y<0.47\
  25&&y<-xr+1.6786&&y>-xr+1.62348)
  xy=2*x
  chrY5 = y<xy-0.9221&&y>xy-0.97722||(y>-xy+1.8381&&y<-xy+1.89322)&&y>xy-0\
  .97722
  test1 = chrM1||chrE2||chrR3||chrR4||chrY5&&y>0.4&&y<0.545
  xc=1*x
  chrC6 = abs(cabs(z+(-0.1282,-0.2125))-0.06018)<0.01232&&(x<0.1282||y>xc+\
  0.0843||y<-xc+0.3407)
  chrH7 = x<0.21136||x>0.25486||(y<0.22482&&y>0.20018)&&x>0.18671&&x<0.279\
  51
  chrR8 = y<0.22482&&y>0.20018||y>0.26035||x<0.31141&&x>0.28676&&x<0.34041\
  ||(abs(cabs(z+(-0.34041,-0.24259))-0.03009)<0.01232&&x>0.34041)||(y<0.21\
  25&&y<-xr+0.90565&&y>-xr+0.85053)
  chrI9 = x>0.39007&&x<0.41472
  chrS10 = abs(cabs(z+(-0.46439,-0.24259))-0.03009)<0.01232&&(x<0.46439||y\
  >0.24259)||(abs(cabs(z+(-0.46439,-0.18241))-0.03009)<0.01232&&(x>0.46439\
  ||y<0.18241))
  chrT11 = y>0.26035&&x>0.51405&&x<0.6112||(x>0.5503&&x<0.57495)
  chrM12 = (y<-xm+1.89749||y<xm-1.45445)&&y>-xm+1.83112&&y>xm-1.52083||(x>\
  0.61845&&x<0.6431)||(x>0.69768&&x<0.72233)
  xa=3*x
  chrA13 = y>xa-2.12669||y>-xa+2.61874||(y<0.198&&y>0.17335)&&y<xa-2.04874\
  &&y<-xa+2.69669
  chrS14 = abs(cabs(z+(-0.90189,-0.24259))-0.03009)<0.01232&&(x<0.90189||y\
  >0.24259)||(abs(cabs(z+(-0.90189,-0.18241))-0.03009)<0.01232&&(x>0.90189\
  ||y<0.18241))
  test2 = chrC6||chrH7||chrR8||chrI9||chrS10||chrT11||chrM12||chrA13||chrS\
  14&&y>0.14&&y<0.285
  test0=test1||test2
  ; Import of formula 'JDFrmF23' from file JDFLAKE.FRM
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  sq3 = 0.5 + flip(sqrt(3)/2)
  c = (r == 0) + sq3*(r == 1) + conj(sq3)*(r == 2)
  z =c*pixel:
  z=z*z+p1
  |z|<4&&test0==0
  }	

Moo { ;; Requires Periodicity=0
z = pixel:
z = z + p1
r = tan(1/z) + pixel 
z = fn1(z)/sqrt(r)^e 
|z| < 4                 
}

Moo_PHC {; by Vincent Damion Presogna, Oct. 18, 1996
         ; optimised by George Martin 
  z = pixel 
  halfe = e*(-0.5) 
  quartere = e*(-.25):
  z = z + p1
  y = tan(1/z)
  r = y + pixel
  q = y * pixel
  z = fn2(z)*r^halfe*(whitesq == 0) + fn1(z)*q^quartere*(whitesq == 1) 
  |z| <= 4
}

PD_212  {
	z1 = fn1(pixel), z2 = fn2(1/pixel)
	x1 = real(z1), y1 = imag(z1)
	x2 = real(z2), y2 = imag(z2)
	c = tan(x1*x2) + tan(y1*y2):
	  z1 = fn3((z1^(p1*2)) + (z1^p1)) + c
	  z2 = fn4((z2^(p1*2)) + (z2^p1)) + c
	  z = z1 + flip(z2)
	  (|z1| <= p2) || (|z2| <= p2)
  	  }

PD_411  {
        bailout = 4 + imag(p3)
        k = real(p3), z = z1 = pixel
        c = p1*tan(z):
          z1 = fn1(z1^k) + p2*fn2(z1*c)
          x1 = real(z1), y1 = imag(z1)
          z2 = -x1 + flip(y1)
          z = log(z1)*whitesq + log(z2)*(whitesq==0)
            (|real(z)| <= bailout) && (|imag(z)| <= bailout)
        }

t6{
 z=(pixel^(1/tan(pixel^p1)))^(fn1(pixel^(1/pixel^p2))):
 z=fn2(z^fn3(1/z^2.5878))+c
 |real(z)|<=4
}

Tims_Random_Formula {
   z=pixel:
   z = sin(z*z+floor(atan(z+4)))
   z = c + log(z) - sin(z)
   |z| < 10
}
