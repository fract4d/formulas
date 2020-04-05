splash_1     {  ; Basic data : FractMask08
                ; Albrecht Niekamp -- March, 2003
                ; <Albrecht.Niekamp@t-online.de>
                ; Lake effect by Sylvie Gallet
  ; p1: Julia seed
  ; real (p2) : water level in % of the screen height
  ; imag (p2) : amplitude of the wave (try 0.2)
  ; real (p3) : frequency (try 300)
  ; imag (p3) : size y (>0 smaller -1 no text)
  ; real (p4) : horizontal factor
  ; imag (p4) : vertical factor
  ; real (p5) : size left (>0 smaller)
  ; imag (p6) : size right (>0 smaller)
  in=0
  t=0
  z=0
  w=0
  start=1
  c=pixel
  if (whitesq)
    row=imag(scrnpix)
    rows=imag(scrnmax)
    y=row/(rows-1)
    col=real(scrnpix)
    cols=real(scrnmax)
    x=col/(cols-1)
    size=imag(p3)/1000
    hf=real(p4)/100
    vf=imag(p4)/1000
    cl=real(p5)/100
    cr=imag(p5)/100
    tx=(imag(p3)!=-1)
    if (tx)
      xx=x
      yy=y
      f=1-y
      d=x-0.5
      cr=cr+hf
      cl=cl+hf
      If (x>0.5)
        e=d*d-0.25
        hd=-e*hf
        g=(0.25-e)/5
        x=x+g*cr+((hf*0.005)*(hf<0))
      else
        e=x*x-0.25
        hd=e*hf*2
        g=(0.25-e)/10
        x=x-g*cl+((hf*0.01)*(hf<0))
      endif
      d=1-xx
      if (y>0.5)
        if (xx>0.5)
          e=d*d
          b=f*(0.5-d)*vf*40*(0.25-e)
        else
          e=xx*xx
          b=f*(0.5-xx)*vf*40*(0.25-e)
        endif
        y=y+f*vf*1.6+size
      else
        if (xx>0.5)
          e=d*d
          b=-(f*(0.5-d)*vf*40*(0.25-e))
        else
          e=xx*xx
          b=-(f*(0.5-xx)*vf*40*(0.25-e))
        endif
        y=y-y*vf*1.6-size
      endif
      e=exp(hd)
      b=exp(b)
      in=in+(x>.06*e&&x<.92*e&&y<.693*b&&y>.68*b)
      in=in+(x>.07*e&&x<.13*e&&y<.626*b&&y>.613*b)
      in=in+(x>.19*e&&x<.25*e&&y<.626*b&&y>.613*b)
      in=in+(x>.32*e&&x<.41*e&&y<.626*b&&y>.6*b)
      in=in+(x>.45*e&&x<.5*e&&y<.626*b&&y>.613*b)
      in=in+(x>.56*e&&x<.6*e&&y<.626*b&&y>.6*b)
      in=in+(x>.63*e&&x<.69*e&&y<.626*b&&y>.613*b)
      in=in+(x>.7*e&&x<.75*e&&y<.626*b&&y>.613*b)
      in=in+(x>.76*e&&x<.81*e&&y<.626*b&&y>.613*b)
      in=in+(x>.85*e&&x<.89*e&&y<.626*b&&y>.6*b)
      in=in+(x>.08*e&&x<.12*e&&y<.613*b&&y>.266*b)
      in=in+(x>.2*e&&x<.24*e&&y<.613*b&&y>.36*b)
      in=in+(x>.31*e&&x<.32*e&&y<.613*b&&y>.48*b)
      in=in+(x>.44*e&&x<.47*e&&y<.613*b&&y>.373*b)
      in=in+(x>.49*e&&x<.51*e&&y<.613*b&&y>.586*b)
      in=in+(x>.55*e&&x<.56*e&&y<.613*b&&y>.346*b)
      in=in+(x>.6*e&&x<.61*e&&y<.613*b&&y>.52*b)
      in=in+(x>.64*e&&x<.68*e&&y<.613*b&&y>.36*b)
      in=in+(x>.71*e&&x<.75*e&&y<.613*b&&y>.36*b)
      in=in+(x>.76*e&&x<.8*e&&y<.613*b&&y>.373*b)
      in=in+(x>.84*e&&x<.85*e&&y<.613*b&&y>.346*b)
      in=in+(x>.89*e&&x<.9*e&&y<.613*b&&y>.52*b)
      in=in+(x>.32*e&&x<.35*e&&y<.6*b&&y>.573*b)
      in=in+(x>.36*e&&x<.42*e&&y<.6*b&&y>.586*b)
      in=in+(x>.56*e&&x<.59*e&&y<.6*b&&y>.306*b)
      in=in+(x>.61*e&&x<.62*e&&y<.6*b&&y>.52*b)
      in=in+(x>.85*e&&x<.88*e&&y<.6*b&&y>.306*b)
      in=in+(x>.9*e&&x<.91*e&&y<.6*b&&y>.52*b)
      in=in+(x>.36*e&&x<.4*e&&y<.586*b&&y>.373*b)
      in=in+(x>.5*e&&x<.51*e&&y<.586*b&&y>.572*b)
      in=in+(x>.32*e&&x<.34*e&&y<.573*b&&y>.466*b)
      in=in+(x>.43*e&&x<.44*e&&y<.573*b&&y>.413*b)
      in=in+(x>.14*e&&x<.15*e&&y<.52*b&&y>.373*b)
      in=in+(x>.34*e&&x<.35*e&&y<.52*b&&y>.466*b)
      in=in+(x>.13*e&&x<.14*e&&y<.493*b&&y>.4*b)
      in=in+(x>.35*e&&x<.36*e&&y<.48*b&&y>.453*b)
      in=in+(x>.12*e&&x<.13*e&&y<.466*b&&y>.426*b)
      in=in+(x>.5*e&&x<.51*e&&y<.412*b&&y>.36*b)
      in=in+(x>.25*e&&x<.28*e&&y<.44*b&&y>.36*b)
      in=in+(x>.31*e&&x<.35*e&&y<.44*b&&y>.386*b)
      in=in+(x>.28*e&&x<.29*e&&y<.426*b&&y>.373*b)
      in=in+(x>.24*e&&x<.25*e&&y<.413*b&&y>.36*b)
      in=in+(x>.49*e&&x<.5*e&&y<.413*b&&y>.373*b)
      in=in+(x>.16*e&&x<.18*e&&y<.4*b&&y>.266*b)
      in=in+(x>.32*e&&x<.34*e&&y<.386*b&&y>.373*b)
      in=in+(x>.48*e&&x<.49*e&&y<.386*b&&y>.36*b)
      in=in+(x>.75*e&&x<.76*e&&y<.386*b&&y>.36*b)
      in=in+(x>.19*e&&x<.2*e&&y<.373*b&&y>.36*b)
      in=in+(x>.33*e&&x<.39*e&&y<.373*b&&y>.36*b)
      in=in+(x>.45*e&&x<.48*e&&y<.373*b&&y>.36*b)
      in=in+(x>.54*e&&x<.55*e&&y<.373*b&&y>.36*b)
      in=in+(x>.59*e&&x<.62*e&&y<.373*b&&y>.36*b)
      in=in+(x>.63*e&&x<.64*e&&y<.373*b&&y>.36*b)
      in=in+(x>.7*e&&x<.71*e&&y<.373*b&&y>.36*b)
      in=in+(x>.76*e&&x<.79*e&&y<.373*b&&y>.36*b)
      in=in+(x>.83*e&&x<.84*e&&y<.373*b&&y>.36*b)
      in=in+(x>.88*e&&x<.91*e&&y<.373*b&&y>.36*b)
      in=in+(x>.15*e&&x<.16*e&&y<.346*b&&y>.266*b)
      in=in+(x>.14*e&&x<.15*e&&y<.306*b&&y>.266*b)
      in=in+(x>.57*e&&x<.59*e&&y<.306*b&&y>.266*b)
      in=in+(x>.64*e&&x<.68*e&&y<.306*b&&y>.266*b)
      in=in+(x>.86*e&&x<.88*e&&y<.306*b&&y>.266*b)
      in=in+(x>.07*e&&x<.08*e&&y<.28*b&&y>.266*b)
      in=in+(x>.12*e&&x<.14*e&&y<.28*b&&y>.266*b)
    endif
    if (in)
      w=1
      z=(xx+yy/8)*689
    else
      if (imag(p2)>0 && imag(p2)<=100)
        level=real(p2)/100        ; water level
        ampl=imag(p2)             ; amplitude of the wave
        freq=real(p3)             ; frequency
        angle=real(rotskew*pi/180)
        exp_irot=exp(-flip(angle))
        h=1/real(magxmag)
        q=h/0.75*imag(magxmag)
        tanskew=tan(imag(rotskew*pi/180))
        u=2*q*exp_irot
        v=2*h*(tanskew+flip(1))*exp_irot
        z3rd=center+(-q-h*tanskew-flip(h))*exp_irot
        z=pixel-z3rd
        s=imag(conj(u)*z)/imag(conj(u)*v)
        if (s<=level)
          dy=level-s
          z=z+2*dy*(1+ampl*sin(freq*dy^0.2))*v
        endif
        z=z+z3rd
        if (ismand)
          c=z
          z=0
        else
          c=p1
        endif
      endif
    endif
  endif
   :
  if (w)
    z=z-1
    phc_bailout=|z|>=1
  else
    z=z^2+c
    if (start)
      t=t+1
      if (|z|>=128)
        u=2*(exp(t/768))
        z=z^u
        start=0
      endif
      if (t>513)
        u=2*(sin(t/768))
        z=z*u
        c=p1*u
        start=0
      endif
    endif
    phc_Bailout=|z|<=2048
  endif
  phc_bailout
  }

------------------------------------------start-frm------------------------

Multifractal_ni    { ;  Albrecht Niekamp  24.03.2003 
                     ;  <Albrecht.Niekamp@t-online.de> 
d=real(p2)
fac1=trunc(d)
b1=(d-fac1)*100000
;
d=imag(p2)
da=d<0
if (da)
 d=-d
endif
mi1=trunc(d)
d=round((d-mi1)*10000)
p6=trunc(d/100)/10
d=d-1000*p6
if (da)
 p6=-p6
endif
p7=d/10
;
d=real(p3)
ba=trunc(d)
mm=round((d-ba)*100000)
;
d=imag(p3)
fac2=trunc(d)
b2=(d-fac2)*100000
;
d=real(p4)
mi2=trunc(d)
fac3=round((d-mi2)*100000)
;
d=imag(p4)
b3=trunc(d)
mi3=round((d-b3)*100000)
;
da=real(p5)
t=da<0
if (t)
 da=-da
endif
start=2-t
dd=trunc(da)
da=round((da-dd)*100)
if (dd<5)
 start=0
 vb=(dd==3)+(dd==4)
else
 d=trunc(dd/10000)
 vb=(d==3)+(d==4)
 dd=dd-d*10000
 d=trunc(dd/1000)
 or1=d>5
 d=d-5*or1
 vv1=(d==3)
 vv2=(d==4)
 dd1=(d==2)+(d==4)
 dd=dd-d*1000
 d=trunc(dd/100)
 or2=d>5
 d=d-5*or2
 vv3=(d==3)
 vv4=(d==4)
 dd2=(d==2)+(d==4)
 dd=dd-d*100
 d=trunc(dd/10)
 inr1=d>5
 d=d-5*inr1
 v1=(d==3)
 v2=(d==4)
 d1=(d==2)+(d==4)
 dd=dd-10*d
 d=trunc(dd)
 inr2=d>5
 d=d-5*inr2
 v3=(d==3)
 v4=(d==4)
 d2=(d==2)+(d==4)
endif
;
d=trunc(da/10)
da=da-10*d
ab=d>=5
d=d-5*ab
bb1=(d==1)
bb2=(d==2)
dd=da>=5
da=da-5*dd
ab=ab+dd
ab1=(da==1)
ab2=(da==2)
;
d=imag(p5)
dd=trunc(d)
d=round((d-dd)*1000000)
le=d>10000
da=trunc(dd/10)
so1=((da==1)+(da==3)==0)
so2=((da==2)+(da==3)==0)
dd=dd-10*da
wo=dd>=5
dd=dd-5*wo
ir1=(dd==1)+(dd==3)
ir2=(dd==2)+(dd==3)
if (le)
  freq=round((trunc(d/10000))*10)     ;frequ_lake effect by S.Gallet
  d=d-freq*1000
  level=(trunc(d/100))/100            ;water level
  d=d-level*10000
  ampl=d/100                          ;amplitude of the wave
  u=real(rotskew*pi/180)
  t=exp(-flip(u))
  bo=1/real(magxmag)
  q=bo/0.75*imag(magxmag)
  dd=tan(imag(rotskew*pi/180))
  d3=2*q*t
  rs=2*bo*(dd+flip(1))*t
  z2=center+(-q-bo*dd-flip(bo))*t
  z=pixel-z2
  d=imag(conj(d3)*z)/imag(conj(d3)*rs)
  if (d<=level)
   da=level-d
   z=z+2*da*(1+ampl*sin(freq*da^0.2))*rs
  endif
  z=z+z2
endif
if (ismand)
 if (vb)
  c=0.4*log(sqr(pixel^mm))
  z=z*le
 else
  c=z*le+pixel*(le==0)
  z=0
 endif
else
 c=p1
 z=z*le+pixel*(le==0)
endif
t=0
d3=(ismand==0)
u=d3
:
if (vb)
 if (d3)
  z=(z*z-real(c))^(z*u+imag(c))
 else
  z2=fn1(z)+c                            ;Linda Allison
  q=cos(z2)
  z=c*(1-q)/(1+q)
 endif
elseif (ab)
 z=z*z+c+c*c-p7                           ;Pusk s Istv n
elseif (d3)
 z2=z*z
 z=z2*z2+(p6+u)*z2+c
else
 z2=z*z                                   ;Pusk s Istv n
 z=z2*z2+(p6+u)*z2+c-p1
endif
bo=|z|
If (wo)
 t=t+1
 if ((t<mi1)+(bo>b1))
  u=2*(fn1(t/fac1))
  if (ismand)
   z=z*u
   if (vb)
    c=0.4*log(sqr(pixel^mm))
   else
    c=z*le+pixel*(le==0)
   endif
  else
   z=z*le+pixel*(le==0)
   c=p1*u
  endif
  wo=0
  if (ir1)
   t=0
  endif
 endif
elseif (start)
 t=t+1
 if (start==2)
  if (bo>b2)
   u=2*(fn2(t/fac2))
   rs=or1
   ab=bb1
   if (dd1)
    if (rs)
     z=pixel
    endif
    c=p1*u
    vb=vv2
    d3=vb
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=0
    endif
    vb=vv1
    if (vb)
     if (so1)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
    endif
    start=1
   endif
  elseif (t>mi2)
   u=2*(fn2(t/fac2))
   rs=inr1
   ab=ab1
   if (d1)
    if (rs)
     z=pixel
    endif
    c=p1*u
    vb=v2
    d3=vb
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=0
    endif
    vb=v1
    if (vb)
     if (so1)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
    endif
   endif
   start=1
   if (ir2)
    t=0
   endif
  endif
 elseif (bo>b3)
  u=2*(fn3(t/fac3))
  ab=bb2
  rs=or2
  if (dd2)
   if (rs)
    z=pixel
   endif
   c=p1*u
   vb=vv4
   d3=vb
  else
   d3=0
   z=z*u
   c=z
   if (rs)
    z=0
   endif
   vb=vv3
   if (vb)
    if (so2)
     mm=mm+mm
    endif
    c=0.4*log(sqr(pixel^mm))
   endif
   start=0
  endif
 elseif (t>mi3)
  u=2*(fn3(t/fac3))
  ab=ab2
  rs=inr2
  if (d2)
   if (rs)
    z=pixel
   endif
   c=p1*u
   vb=v4
   d3=vb
  else
   d3=0
   z=z*u
   c=z
   if (rs)
    z=0
   endif
   vb=v3
   if (vb)
    if (so2)
     mm=mm+mm
    endif
    c=0.4*log(sqr(pixel^mm))
   endif
  endif
  start=0
 endif
endif
bo<=ba
}

===============================frm-file===============================
Multifractal_10 Inputs
----------------------

Real P2
  First Input (before the dot)
    5 Digits : Channels : 1_Basic Shape 2_Outside  3_Inside1 4_Inside2
Inside3
     Frms: 1_Secant  2_Mandel(2) 3_Bees 4_Julia 5_Many Mods 6_Phoenix
7_Newton 8_Spider
  Second Input (after the dot)
    2 Digits_Many Mods_Number of sides 2 Digits_Phoenix 2 Digits_Spider
    1 Digit_Reset on Transitions (Shape) 0_no 1_Dble Mandel 2_Iter-reset
3_both +5_warp
    4 Digits_Reset Channels 2-5          0_no 1_z-reset 2_Iter-reset 3_both
+5_warp

Imag P2
  First Input
    5 Digits_Colour (Bailout) Number for each channel (5 available)
  Second Input
    Variables : 4 Digits_Mand/Jul (2 var)  2 Digits_Secant 4 Digits_Bees

Real P3
  First Input
    2 Digits_Newtonvariable 4 Digits_Colour1
  Second Input
    5 Digits_Colour2  5 Digits_Colour3

Imag P3
   First Input
     Basic Shape : Warp-factor (fn1 is used)
   Second Input
     5 Digits_Colour4  6 Digits_Colour5

Real P4
    First Input
      Outside : Warp-factor (fn2 is used)
    Second Input
      Outside : 4 Digits+1fractal digit_Border-out  4 Digits+1
fractaldigit_Border-in

Imag P4
     First Input
       Inside1_Maxiter
     Second Input
       Inside1 : 1 Digit_Transition: 1_maxiter 2_borderout 3_borderin
+5_maxiter+border
                 5 Digits_warp factor (fn2 is used) 4 Digits+1
fractaldigit_border1

Real P5
     First Input
        Inside2_Maxiter
     Second Input
        Inside2 : 1 Digit_Transition: 1_maxiter 2_borderout 3_borderin
+5_maxiter+border
                  5 Digits_warp factor (fn3 is used) 4 Digits+1
fractaldigit_border2

Imag P5
     First Input
        Inside3_Maxiter
     Second Input
        Inside3 : 1 Digit_Transition: 1_maxiter 2_borderout 3_borderin
+5_maxiter+border
                  5 Digits_Warp factor (fn4 is used) 4 Digits+1 fractal
digit_border3
   Alternate Input Imag P5
      First Input  :  1_Lake effect enabled (Inside3 disabled)
      Second Input :  2 Digits_Frequency 2 Digits_Waterlevel 2
Digits_Amplitude


Multifractal_10      { ;  Albrecht Niekamp  Jan, 2005 
                       ;  <Albrecht.Niekamp@t-online.de> 
;p1 (spider)julia-seed
;real(p2) 5digits : (1)shape (2)outside (3)inside1 (4)inside2 (5)inside3
;0_off 1_secant 2_mand 3_bees 4_jul 5_m_mods 6_phoen 7_newt 8_spider
;  input2: 2digits_many-mods  2digits_phoenix  2digits_spider
;          1digit_shapereset:0_no 1_dblmandel 2_iter-reset 3_both +5_warp
;          4digits reset : 0_no 1_z-reset 2_iter-reset 3_both +5_warp
;imag(p2)(-) 5digits_colour(bailout) number
;  input2 :  4digits(-)_mand/jul 2digits_secant 4digits_bees
;real(p3) 2digits_newt 4digits_colour1, 5digits_colour2  5digits_colour3
;imag(p3) shape  : factor (fn1), 5digits_colour4  6digits_colour5
;real(p4) outside: factor (fn2), 4+1digits_bord-out 4digits+fract_bord-in
;imag(p4) inside1: maxit1, 1digit_use:1_maxit 2(7)_bord-out 3(8)_bord-in
;                  5digits_factor1 (fn2)  4digits+fract_border1
;real(p5) inside2: maxit2, 1digit_use:1_maxit 2(7)_bord-out 3(8)_bord-in
;                  5digits_factor2 (fn3)  4digits+fract_border2
;imag(p5) inside3: maxit3, 1digit_use:1_maxit 2(7)_bord-out 3(8)_bord-in
;                  5digits_factor3 (fn4)  4digits+fract_border3
;  optional:  1_lake effect, 2digits_frquency 2digits_level 2digits_ampl
;fn(1) shared by many-mods+bees
;
le=0
z=pixel
da=real(p2)
dd=trunc(da)
da=round((da-dd)*100000000000)+11111
dd=dd+11111
d=trunc(dd/10000)
dd=dd-d*10000
d3=(d==4)+(d==5)+(d==8)+(d==9)
d4=d3==0
vb=d>5
sc=d==2
mo=d==6
px=d==7
ab=px+(d==3)+(d==5)+(d==9)
d=trunc(dd/1000)
dd=dd-d*1000
ex1=d>1
sc1=d==2
mo1=d==6
px1=d==7
v1m=mo1+px1
v1j=d>7
dd1=v1j+(d==4)+(d==5)
ab1=px1+(d==3)+(d==5)+(d==9)
d=trunc(dd/100)
dd=dd-d*100
ex2=d>1
sc2=d==2
mo2=d==6
px2=d==7
v2m=mo2+px2
v2j=d>7
dd2=v2j+(d==4)+(d==5)
ab2=px2+(d==3)+(d==5)+(d==9)
d=trunc(dd/10)
ex3=d>1
sc3=d==2
mo3=d==6
px3=d==7
v3m=mo3+px3
v3j=d>7
dd3=v3j+(d==4)+(d==5)
ab3=px3+(d==3)+(d==5)+(d==9)
d=dd-d*10
ba=imag(p5)
mi3=trunc(ba)
dd=(d>1)+(mi3>1)
ex4=dd==2
sc4=d==2
mo4=d==6
px4=d==7
v4m=mo4+px4
v4j=d>7
dd4=v4j+(d==4)+(d==5)
ab4=px4+(d==3)+(d==5)+(d==9)
;
mm=trunc(da/1000000000)
da=da-mm*1000000000
ph=trunc(da/10000000)/100
da=da-ph*1000000000
sp=trunc(da/100000)/100
da=da-sp*10000000
d=trunc(da/10000)
ex0=d>4
da=da-d*10000
d=d-5*ex0
dm=(d==2)+(d==4)
ir0=(d==3)+(d==4)
d=trunc(da/1000)
w1=d>4
da=da-d*1000
d=d-5*w1
rs1=(d==2)+(d==4)
ir1=(d==3)+(d==4)
d=trunc(da/100)
w2=d>4
da=da-d*100
d=d-5*w2
rs2=(d==2)+(d==4)
ir2=(d==3)+(d==4)
d=trunc(da/10)
w3=d>4
da=da-d*10
d=d-5*w3
rs3=(d==2)+(d==4)
ir3=(d==3)+(d==4)
d=round(da)
w4=d>4
d=d-5*w4
rs4=(d==2)+(d==4)
tt=ex1+ex0+ex2+ex3+ex4
;
d=real(p3)
dd=trunc(d)
da=(d-dd)*10000000000
pp=trunc(dd/10000)
ba1=dd-10000*pp
ba2=trunc(da/100000)
ba3=da-100000*ba2
;
d=imag(p3)
sfac=trunc(d)
da=(d-sfac)*100000000000
ba4=trunc(da/1000000)
ba5=da-ba4*1000000
;
d=real(p4)
ofac=trunc(d)
da=(d-ofac)*10000000000
bh=trunc(da/100000)/10
bl=(da-bh*1000000)/10
bs=bl/2
;
d=imag(p2)
t=d<0
if (t)
 d=-d
endif
dd=trunc(d)
da=round((d-dd)*10000000000)
d=trunc(dd/10000)
dd=dd-d*10000
bb0=ba1*(d==1)+ba2*(d==2)+ba3*(d==3)+ba4*(d==4)+ba5*(d==5)
d=trunc(dd/1000)
dd=dd-d*1000
bb1=ba1*(d==1)+ba2*(d==2)+ba3*(d==3)+ba4*(d==4)+ba5*(d==5)
d=trunc(dd/100)
dd=dd-d*100
bb2=ba1*(d==1)+ba2*(d==2)+ba3*(d==3)+ba4*(d==4)+ba5*(d==5)
d=trunc(dd/10)
dd=dd-d*10
bb3=ba1*(d==1)+ba2*(d==2)+ba3*(d==3)+ba4*(d==4)+ba5*(d==5)
d=round(dd)
bb4=ba1*(d==1)+ba2*(d==2)+ba3*(d==3)+ba4*(d==4)+ba5*(d==5)
;
d=da
p0=trunc(d/100000000)/10
d=d-p0*1000000000
p6=trunc(d/1000000)/10
d=d-p6*10000000
if (t)
 p6=-p6
endif
p7=trunc(d/10000)/10
d=d-p7*100000
dp=p6+p0/100
p8=trunc(d/100)/100
d=d-p8*10000
p9=d/100
;
d=imag(p4)
mi1=trunc(d)
da=(d-mi1)*100000000000
d=trunc(da/10000000000)
bt1=d>6
da=da-d*10000000000
d=d-5*bt1
dt1=d>1
iv1=d==3
fac1=trunc(da/100000)
da=da-fac1*100000
bo1=(da/100000)/10
;
d=real(p5)
mi2=trunc(d)
da=(d-mi2)*100000000000
d=trunc(da/10000000000)
bt2=d>6
da=da-d*10000000000
d=d-5*bt2
dt2=d>1
iv2=d==3
fac2=trunc(da/100000)
da=da-fac2*100000
bo2=(da/100000)/10
;
if (mi3==1)
 d=(ba-mi3)*1000000
 fr=round((trunc(d/10000))*10)     ;lake effect by S.Gallet
 d=d-fr*1000
 lv=(trunc(d/100))/100
 d=d-lv*10000
 am=d/100
 u=real(rotskew*pi/180)
 t=exp(-flip(u))
 bo=1/real(magxmag)
 q=bo/0.75*imag(magxmag)
 dd=tan(imag(rotskew*pi/180))
 da=2*q*t
 rs=2*bo*(dd+flip(1))*t
 zz=center+(-q-bo*dd-flip(bo))*t
 z=z-zz
 d=imag(conj(da)*z)/imag(conj(da)*rs)
 le=d<=lv
 if (le)
  dd=lv-d
  z=z+2*dd*(1+am*sin(fr*dd^0.2))*rs
 endif
 z=z+zz
else
 da=(ba-mi3)*100000000000
 d=trunc(da/10000000000)
 bt3=d>6
 da=da-d*10000000000
 d=d-5*bt3
 dt3=d>1
 iv3=d==3
 fac3=trunc(da/100000)
 da=da-fac3*100000
 bo3=(da/100000)/10
endif
;
if (vb)
 if (d3)
  if (ab)
   z=z*le+pixel*(le==0)                                ;Spider
   c=p1
  else
   z=z*le+pixel*(le==0)
   c=p1                                                ;newton
  endif
 elseif (ab)
   c=z                                                 ;Phoenix
   z=z*le+pixel*(le==0)
  else
   c=0.4*log(sqr(z^mm))                                ;many mods
   z=0
 endif
elseif (d3)
 if (ab)
  c=p1                                                 ;Julia
  z=z*le+pixel*(le==0)
 else                                                  ;bees
  c=p1
  z=z*le+pixel*(le==0)
 endif
elseif (ab)
 c=z                                                   ;Mandel
 z=0
else
 c=z                                                    ;Secant
 z=z*le+pixel*(le==0)
endif
t=0
bo=|z|
p=pp
z0=p7
zold=(0.0,0.0)
cb=p9
ba=bb0
:
if (tt)
 t=t+1
 if (ex0)
  ex0=t<mi1
  if (bo>bs)
   u=2*(fn1(t/sfac))
   ex0=0
   if (ir0)
    t=0
   endif
   if (d4)
    z=z*u
    if (mo)
     c=0.4*log(sqr(z^mm))
    else
     c=pixel
    endif
   else
    z=z*le+pixel*(le==0)
    cb=p9*u
    c=p1*u
    p=pp*u
   endif
   tt=tt-1+ex0
  endif
 elseif ((ex1)&&bo>bl)
  if (bo<bh)
   d3=dd1
   ba=bb1
   ab=ab1
   ex1=0
   tt=tt-1
   if (w1)
    u=2*(fn2(t/ofac))
   else
    u=1,0
   endif
   if (ir1)
    t=0
   endif
   if (d3)
    vb=v1j
    if (rs1)
     z=pixel
     cb=p9*u
     c=p1*u
     p=pp*u
    else
     c=p1
     z=z*u
     cb=p9
    endif
   else
    vb=v1m
    if (rs1)
     c=z*u
     z=pixel*(sc1+px1)
     z0=p7*u
     ph=ph*u
    else
     c=z
     z=z*u
    endif
    if (mo1)
     c=0.4*log(sqr(z^mm))
    endif
   endif
  endif
 elseif (ex2)
  if (dt1)
   if (iv1)
    d=bo>bo1
   else
    d=bo<bo1
   endif
   if (bt1)
    d=d+(t>mi1)
   endif
  else
   d=t>mi1
  endif
  if (d)
   ab=ab2
   d3=dd2
   ba=bb2
   ex2=0
   tt=tt-1
   if (w2)
    u=2*(fn2(t/fac1))
   else
    u=1,0
   endif
   if (ir2)
    t=0
   endif
   if (d3)
    vb=v2j
    if (rs2)
     z=pixel
     cb=p9*u
     c=p1*u
     p=pp*u
    else
     cb=p9
     c=p1
     z=z*u
    endif
   else
    vb=v2m
    if (rs2)
     c=z*u
     z=pixel*(sc2+px2)
     z0=p7*u
     ph=ph*u
    else
     c=z
     z=z*u
    endif
    if (mo2)
     c=0.4*log(sqr(z^mm))
    endif
   endif
  endif
 elseif (ex3)
  if (dt2)
   if (iv2)
    d=bo>bo2
   else
    d=bo<bo2
   endif
   if (bt2)
    d=d+(t>mi2)
   endif
  else
   d=t>mi2
  endif
  if (d)
   ab=ab3
   d3=dd3
   ba=bb3
   ex3=0
   tt=tt-1
   if (w3)
    u=2*(fn3(t/fac2))
   else
    u=1,0
   endif
   if (ir3)
    t=0
   endif
   if (d3)
    vb=v3j
    if (rs3)
     z=pixel
     cb=p9*u
     c=p1*u
     p=pp*u
    else
     cb=p9
     c=p1
     z=z*u
    endif
   else
    vb=v3m
    if (rs3)
     c=z*u
     z=pixel*(sc3+px3)
     z0=p7*u
     ph=ph*u
    else
     c=z
     z=z*u
    endif
    vb=v3m
    if (mo3)
     c=0.4*log(sqr(z^mm))
    endif
   endif
  endif
 elseif (ex4)
  if (dt3)
   if (iv3)
    d=bo>bo3
   else
    d=bo<bo3
   endif
   if (bt3)
    d=d+(t>mi3)
   endif
  else
   d=t>mi3
  endif
  if (d)
   ab=ab4
   d3=dd4
   ba=bb4
   ex4=0
   tt=0
   if (w4)
    u=2*(fn4(t/fac3))
   else
    u=1,0
   endif
   if (d3)
    vb=v4j
    if (rs4)
     z=pixel
     cb=p9*u
     c=p1*u
     p=pp*u
    else
     cb=p9
     c=p1
     z=z*u
    endif
   else
    vb=v4m
    if (rs4)
     c=z*u
     z=pixel*(sc4+px4)
     z0=p7*u
     ph=ph*u
    else
     c=z
     z=z*u
    endif
    if (mo4)
     c=0.4*log(sqr(z^mm))
    endif
   endif
  endif
 endif
endif
if (vb)
 if (d3)
  if (ab)
   z=z*z+c                                ;Spiderjul     John Horner
   c=c*sp+z
  else
   z1=z^p-1                               ;Qusinewton    Pusk s Istv n
   z2=p*z*z
   z=z-z1/z2
  endif
 elseif (ab)
   z1=z*z+0.56+ph/100-0.5*zold                     ;Phoenix       Mike
Wareman
   zold=z
   z=z1
 else
  z2=fn1(z)+c                             ;Many_mods     Linda Allison
  z1=cos(z2)
  z=c*(1-z1)/(1+z1)
 endif
elseif (d3)
 if (ab)
  z2=z*z                                  ;Julia         Pusk s Istv n
  z=z2*z2+p6*z2+c-p0
 else
  z1=fn1(z)-cb                            ;Bees          Ray Girvan
  z2=z1^p8-1
  z3=p8*(z1^(p8-1))
  z=z-(z2/z3)
 endif
elseif (ab)
 if (dm)
   z=z*z+c+c*c-dp                         ;Double Mandel
 else
  z2=z*z                                  ;Mandel        Pusk s Istv n
  z=z2*z2+p6*z2+c-p0
 endif
else
 z3=z                                     ;Secant        Mike Wareman
 z1=z0*z0*z0*z0-1
 z2=z*z*z*z-1
 z=z-z2*(z-z0)/(z2-z1)
 z0=z3
endif
bo=|z|
bo<ba
}


---------------------------------start-frm---------------------------------

MFRSPECIAL_2       { ; Albrecht.Niekamp@t-online.de
                     ; Wed, 16 Feb 2005 08:54:52
                     ; buggy formula - dont copy
                     ;
d=real(p2)
fac1=trunc(d)
b1=(d-fac1)*10000
;
d=imag(p2)
mi1=trunc(d)
p6r=(d-out1)*10000
if (mi1<0)
 mi1=-mi1
endif
;
d=real(p3)
ba=trunc(d)
p6i=(d-ba)*10000
if (ba<0)
 ba=-ba
endif
p6=p6r,p6i
;
d=imag(p3)
fac2=trunc(d)
b2=(d-fac2)*10000
;
d=real(p4)
mi2=trunc(d)
fac3=(d-mi2)*10000
;
d=imag(p4)
b3=trunc(d)
mi3=(d-b3)*10000
;
d1=real(p5)
vb=(d1<0)
If (vb)
 d1=-d1
endif
ir1=(d1>1000)
d1=d1-1000*ir1
wo=(d1>100)
d1=d1-100*wo
tj=(d1<10)
d1=d1-10*(tj==0)
v1=(d1==3)
v2=(d1==4)
d1=(d1==2)+(d1==4)
;
d2=imag(p5)
st=(d2<0)
if (st)
 d2=-d2
endif
ir2=(d2>1000)
d2=d2-1000*ir2
ni=2*(d2>100)
st=st*(ni==0)
d2=d2-50*ni
mj=(d2<10)
d2=d2-10*(mj==0)
v3=(d2==3)
v4=(d2==4)
d2=(d2==2)+(d2==4)
d3=(ismand==0)
t=0
u=1
bx=ba
start=2-st-ni
if (ismand)
 z=0
  if (vb)
    c=0.4*log(sqr(pixel^p6i))
  else
    c=pixel
  endif 
else
 c=p1
 z=pixel
endif
:
ba=bx
if (vb)
 if (d3)
  z=(z*z-real(c))^(z*u+imag(c))
 else
   z2=sin(z)+c
   sqz2=cos(z2)
   z=c*(1-sqz2)/(1+sqz2)
   ba=p6
 endif
else
;  q=sqr(z)
;  z=real(q)+flip(real(z*q))+c
  z=z*z+c
endif
bo=|z|
If (wo)
 t=t+1
 if ((t<mi1)+(bo>b1))
  u=2*(fn1(t/fac1))
  if (ismand)
   z=z*u
   c=pixel
   if (vb)
    c=0.4*log(sqr(pixel^p6i))
   endif
  else
   z=pixel
   c=p1*u
  endif
  wo=0
  if (ir1)
   t=0
  endif
 endif
else
 if (start)
  t=t+1
  if (start==2)
   if ((t>mi2)+(bo>b2))
    u=2*(fn2(t/fac2))
    if (d1)
     if (tj)
      z=pixel
     endif
     c=p1*u
     vb=v2
     d3=vb
    else
     d3=0
     z=z*u
     c=z
     if (mj)
      z=0
     endif
     vb=v1
     if (vb)
      c=0.4*log(sqr(pixel^p6i))
  ;    p6r=mi2
  ;    p6=mi2,p6i
     endif
    endif
    start=1
    if (ir2)
     t=0
    endif
   endif
  else 
   if ((t>mi3)+(bo>b3))
    u=2*(fn3(t/fac3))
    if (d2)
     if (tj)
      z=pixel
     endif
     c=p1*u
     vb=v4
     d3=vb
    else
     d3=0
     z=z*u
     c=z
     if (mj)
      z=0
     endif
     vb=v3
     if (vb)
        c=0.4*log(sqr(pixel^p6i))
  ;      p6r=mi3
  ;      p6=mi3,p6i
     endif
    endif
    start=0
   endif
  endif
 endif
endif
bo<=ba
}
-----------------------------------------end--------------------------------

