
Testing      { ;Rui S. Parracho
               ;periodicity off
  init:
    z=0
    n=0
  loop:
    n=n+1
    z=z*z+#pixel
  bailout:
    (n/|z|)<= 512
  default:
    title = "Testing"
  }

Scarlotta    { ;Rui S. Parracho
  z=c=pixel,
  :
  rz=fn1(z) 
  z=c*((rz)+sin(rz)), 
  cabs(z)<= 512
  }

Scarlotta2   { ;Rui S. Parracho
  z=pixel/pi, c=pixel,
  :
  rz=c/z, z=((rz)+sin(rz)), 
  cabs(z)<= 512
  }

Scarlotta3   { ; September 15, 2001
               ;Rui S. Parracho
  z=pixel/pi, c=pixel,
  :
  rz=c/z, z=((rz)+sin(rz)), 
  cabs(z/( (sqrt(z*z-1) + z) )) > .5
  }

int700       { ;Rui S. Parracho
  z=pixel,  
  if (|p1|==0), r=(-3.6,1.1), else, r=p1, endif
  :
  oz=z, sz=z-z^3/3+z^5/120, f=z*z*sz,
  g=2*z*(sz)+z^2*(cos(z)), z=z-r*f/g,
  |(z-oz)| > .0000001
  }

Qubex        { ;Rui S. Parracho
  IF(|p1|==0), a=(1,0), ELSE, a=p1, ENDIF
  IF(|p2|==0), b=(1,0), ELSE, b=p2, ENDIF
  IF(|p3|==0), c=(1,0), ELSE, c=p3, ENDIF
  d=pixel, ad3=a/3, bd2=b/2, ta=2*a
  z=(-b+sqrt(b*b-4*a*c))/ta
  :
  z2=z*z, z3=z2*z, 
  z=ad3*z3+bd2*z2+c*z+d,
  |z| <= 256
  }

Qubexfix     { ;Rui S. Parracho
  IF(|p1|==0), a=(3,0), ELSE, a=p1, ENDIF
  IF(|p2|==0), b=(2,0), ELSE, b=p2, ENDIF
  IF(|p3|==0), c=(1,0), ELSE, c=p3, ENDIF
  d=pixel, ad3=a/3, bd2=b/2, ta=2*a
  z=(-b+sqrt(b*b-4*a*c))/ta
  :
  z2=z*z, z3=z2*z,
  z=ad3*z3+bd2*z2+c*z+d,
  |z| <= 256
  }

cubicQueues  { ; September 01, 2001
               ;Rui S. Parracho
  IF(|p1|==0), a=(3,0), ELSE, a=p1, ENDIF
  IF(|p2|==0), b=(2,0), ELSE, b=p2, ENDIF
  IF(|p3|==0), c=(1,0), ELSE, c=p3, ENDIF
  d=pixel, 
  z=1/3*a+1/3*c+1/3*b+1/3*sqrt(a^2-a*c-a*b+c^2-b*c+b^2)
  :
  z=(z-a)*(z-b)*(z-c)+d,
  |z| <= 256
  }

Qubexnew     { ;Rui S. Parracho
  IF(|p1|==0), a=(1,0), ELSE, a=p1, ENDIF
  IF(|p2|==0), b=(2,0), ELSE, b=p2, ENDIF
  IF(|p3|==0), c=pixel, ELSE, c=p3, ENDIF
  z=(-a+sqrt(a*a-3*b))/3
  :
  z2=z*z, z3=z2*z,
  z=z3+a*z2+b*z+c,
  |z| <= 256
  }

Regula_falsi { ;Rui S. Parracho
  IF(|p1|==0), k=1, ELSE, k=p1, ENDIF
  IF(|p2|==0), z=pixel, ELSE, z=p1, ENDIF
  x0=(1,1), c=x1=pixel
  :
  oz=z, fx0=x0*x0*x0+3*x0*x0+2*x0+c,
  fx1=x1*x1*x1+3*x1*x1+2*x1+c,
  z=z-k*(x1-x0)*fx1/(fx1-fx0),
  x0=x1, x1=z,
  |z-oz| > .0000001
  }

AutoQuad     { ;Rui S. Parracho
  if (cabs(p1)==0), a=4, else, a=p1, endif
  if (cabs(p2)==0), b=3, else, b=p2, endif
  if (cabs(p3)==0), c=2, else, c=p3, endif
  d=pixel, z=(-b+sqrt(b^2-4*a*c))/a
  :
  z2=z*z, z3=z*z2, z4=z3*z
  z=1/4*a*z4+1/3*b*z3+1/2*c*z2+d,
  cabs(z)<=256
  }

newcube      { ;Rui S. Parracho
  if (cabs(p1)==0), a=1, else, a=p1, endif
  if (cabs(p2)==0), b=1, else, b=p2, endif
  if (cabs(p3)==0), c=pixel, else, c=p3, endif
  a2=a*a, b2=b*b, c2=c*c,
  ab=a*b, ac=a*c, bc=b*c, 
  m=a+b+c, n=ab+bc+ac, o=a*b*c, 
  det=sqrt(a2+b2+c2-10*n),
  u=(det-2*m)/6,
  v=(-det-2*m)/6,
  if (cabs(u)>cabs(v)),z=u, else, z=v, endif
  :
  oz=z, z2=z*z, z3=z2*z
  z=z3+m*z2+n*z+o
  cabs(z-oz) >= .0000001
  }

autosquare   { ;Rui S. Parracho
  if (cabs(p1)==0), a=1, else, a=p1, endif
  if (cabs(p2)==0), b=1, else, b=p2, endif
  c=pixel, 
  if (cabs(p3)==0), r=p1, else, r=p3, endif
  g=z=(-b)/(2*a)
  :
  f=a*z*z+b*z+c
  z=z-r*f/g
  cabs(z) > .00000000128
  }

marmelo      { ;Rui S. Parracho
  IF(|p1|==0), r=pixel, ELSE, r=p1, ENDIF
  IF(|p2|==0), x0=(-1,1), ELSE, x0=p2, ENDIF
  IF(|p3|==0), a=real(pixel), b=imag(pixel), 
  ELSE, a=real(p3), b=imag(p3), ENDIF
  z=x1=pixel, 
  amb=a-b, apb=a+b, tamb=2*amb, tapb=2*apb
  :
  fx0=sin(amb*x0)/tamb-sin(x0*apb)/tapb+pixel,
  fx1=sin(a*x1)*sin(b*x1), oz=z
  z=z-r*(x1-x0)*fx1/(fx1-fx0),
  x2=z, x0=x1, x1=x2
  |z-oz|>=.0000001
  }

muitomas     { ;Rui S. Parracho
  IF(|p1|==0), r=1, ELSE, r=p1, ENDIF    ;relaxation
  IF(|p2|==0), a=fn1(pixel), ELSE, a=p2, ENDIF 
  IF(|p3|==0), b=fn2(pixel), ELSE, b=p2, ENDIF 
  c=fn3(pixel), z=pixel,  bail=0
  p=9*a*c-3*b*b, q=2*b*b*b-9*a*b*c+27*a*a*pixel
  :
  fz0= a*z*z*z+b*z*z+c*z+pixel,
  gz0= 3*z*z+2*b*z+c, fz1= z*z*z+p*z+q,
  gz1= 3*z*z+p, u=z-r*fz0/gz0, v=z-r*fz1/gz1
  if(cabs(u)<=cabs(v)), z=v, else, z=u, endif
  if((cabs(fz0)<=.00000001) || (cabs(fz1)<=.00000001)), bail=1, else, bail=0, endif
  bail<1
  }

muitominos   { ;Rui S. Parracho
  IF(|p1|==0), r=1, ELSE, r=p1, ENDIF    ;relaxation
  IF(|p2|==0), a=fn1(pixel), ELSE, a=p2, ENDIF 
  IF(|p3|==0), b=fn2(pixel), ELSE, b=p2, ENDIF 
  c=fn3(pixel), z=pixel,  bail=0, p=9*a*c-3*b*b, 
  q=2*b*b*b-9*a*b*c+27*a*a
  :
  fz0= a*z*z*z+b*z*z+c*z+pixel,
  gz0= 3*z*z+2*b*z+c, fz1= z*z*z+p*z+q
  gz1= 3*z*z+p, u=z-r*fz0/gz0, v=z-r*fz1/gz1
  if(cabs(u)<=cabs(v)), z=u, else, z=v, endif
  if (cabs(u-z)<=.00000001), bail=1, else, bail=0, endif
  if (cabs(v-z)<=.00000001), bail=1, else, bail=0, endif
  bail<1
  }

outravez     { ;Rui S. Parracho
  IF(|p1|==0), r=1, ELSE, r=p1, ENDIF    ;relaxation
  IF(|p2|==0), a=3, ELSE, a=p2, ENDIF 
  IF(|p3|==0), b=7, ELSE, b=p3, ENDIF 
  c=pixel, bail=0, 
  z=(sqrt(4*b*b-12*a*c)-2*b)/6/a,
  :
  oz=z, fz= a*z*z*z+b*z*z+c*z+pixel,
  gz= 3*z*z+b, z=z-r*fz/gz
  if(cabs(z-oz) < .0000001), bail=1, else, bail=0, endif
  bail<1
  }

ultravez     { ;Rui S. Parracho
  IF(|p1|==0), r=1, ELSE, r=p1, ENDIF    ;relaxation
  IF(|p2|==0), a=fn1(pixel), ELSE, a=p2, ENDIF 
  IF(|p3|==0), b=fn2(pixel), ELSE, b=p3, ENDIF 
  c=fn3(pixel), z=(sqrt(4*b*b-12*a*c)-2*b)/6/a,
  bail=0, p=9*a*c-3*b*b
  :
  z0=z, fz0= a*z*z*z+b*z*z+c*z+pixel,
  gz1= 3*z*z+p, z=z0-r*fz0/gz1
  if(cabs(z-z0) < .0001), bail=1, else, bail=0, endif
  bail<1
  }

volvox       { ;Rui S. Parracho
  z=c=pixel, x=y=0,
  IF(|p1|==0), d=1, ELSE, d=p1, ENDIF
  :
  z=z*z+c, x=real(z),y=imag(z)
  cabs(2*x*x+5*y*y-8*x+10*y+3) <= d*cabs(x*x-7*y*y+6*x+28*y-33)
  }

valoil       { ;Rui S. Parracho
  IF(|p1|==0), z=pixel, ELSE, z=p1, Endif
  c=pixel 
  :
  z=c*((z-1/z)*log(z)-z+log(2*pi)/2)
  |z|<= 1256
  }

maisominos   { ;Rui S. Parracho
  IF(|p1|==0), r=1, ELSE, r=p1, ENDIF    ;relaxation
  IF(|p2|==0), a=fn1(pixel), ELSE, a=p2, ENDIF 
  IF(|p3|==0), b=fn2(pixel), ELSE, b=p3, ENDIF 
  c=fn3(pixel), z=pixel,  bail=0
  :
  fz0= z*z*z+a*z*z+b*z+c,
  gz0= 3*z*z+2*a*z+b*fn4(z)
  z=z-r*fz0/gz0
  if( (cabs(fz0)<=.00000001) ), bail=1, else, bail=0, endif
  bail<1
  }

Beliza       { ;Rui S. Parracho
  IF(|p1|==0), c=pixel, ELSE, c=p1, ENDIF    
  IF(|p2|==0), z=pixel, ELSE, z=p2, ENDIF
  bail=0, a=c*5/8, ta=2*a, b=c*35/16, fb=4*b
  :
  z= a*sin(2*z)+b*sin(4*z),
  if( (cabs(z)>256) ), bail=1, else, bail=0, endif
  bail<1
  }

int08        { ;Rui S. Parracho
  z=pixel
  IF(|p1|==0), r=1.7, ELSE, r=p1, ENDIF  
  :
  oz=z, z2=z*z, z3=z2*z, f=log(z3),
  g=3*z2/(z3), z=z-r*f/g
  cabs(z-oz) > .00000001
  }

int269       { ;Rui S. Parracho
  z=pixel,
  if (cabs(p1)==0), k=2.9, else, k=(p1), endif
  :
  oz=z, f=.5*(sin(z))^2, 
  g=sin(z)*cos(z),
  z=z-k*f/g
  cabs(z-oz)> .00000001
  }

int253       { ;Rui S. Parracho
  z=pixel, 
  if (cabs(p1)==0), r=1, else, r=(p1), endif
  :
  oz=z
  f=.125*z-.25*sin(2*z)+.03125*sin(4*z)
  sz=sin(z), g=sz*sz*sz*sz, z=z-r*f/g
  cabs(z-oz)> .00000001
  }

int252       { ;Rui S. Parracho 
  z=pixel,oz=0 
  if (cabs(p1)==0), t=1, else, t=(p1), endif
  if (cabs(p2)==0), r=3, else, r=(p2), endif
  if (cabs(p3)==0), s=5, else, s=(p1), endif
  rms=r-s, rps=r+s, trms=2*rms, trps=2*rps
  :
  oz=z
  f=sin(rms*z)/trms-sin(rps*z)/trps,
  g=sin(r*z)*sin(s*z), z=z-t*f/g,
  cabs(z-oz) > .00000001
  }

int304       { ;Rui S. Parracho
  z=c=pixel, 
  if (cabs(p1)==0), k=1, else, k=(p1), endif
  :
  oz=z, z2=z*z, z3=z2*z
  f=(3*z2-6)*cos(z)+(z3-6*z)*sin(z)+c
  g=z3*cos(z), z=z-k*f/g,
  cabs(z-oz) > .00000001
  }

int303       { ;Rui S. Parracho
  z=c=pixel
  if (cabs(p1)==0), k=1, else, k=(p1), endif
  :
  oz=z, z2=z*z
  f=2*z*cos(z)+(z2-2)*sin(z)+c,
  g=z2*cos(z), z=z-k*f/g
  cabs(z-oz) > .00000001
  }

int273       { ;Rui S. Parracho
  z=pixel
  if (cabs(p1)==0), k=1, else, k=(p1), endif
  if (cabs(p2)==0), m=.75, else, m=(p2), endif
  mp1=m+1
  :
  oz=z, f=(sin(z))^mp1/(mp1)
  g=cos(z)*(sin(z))^m, z=z-k*f/g
  cabs(z-oz) > .00000001
  }

rsp_0300w1   { ;Rui S. Parracho
  if (cabs(p2)==0), c=pixel, else, c=p2, endif
  tc=2*c, c2=c*c, tc3=2*c*c2, ttc=2*tc
  if (|p1|==0), r1=1.5, else, r1=p1, endif,
  if (|p2|==0), r2=1.05, else, r2=p2, endif,
  if (whitesq), r=r1, else, r=r2, endif
  z=pixel, oz=0
  :
  z2=z*z, z3=z*z2, fz=z3-c2*z-tc*z2-tc3,
  gz=3*z2-c2-ttc*z, oz=z, z=z-r*fz/gz,
  cabs(oz-z) > .0000001
  }

rsp_0300w2   { ;Rui S. Parracho
  if (cabs(p1)==0), c=pixel, else, c=p1, endif
  if (cabs(p2)==0),r1=(1,0), else, r1=p2, endif
  if (cabs(p3)==0),r2=(1.1,0), else, r2=p3, endif
  tc=2*c, c2=c*c, tc3=2*c*c2, ttc=2*tc
  if (whitesq), r=r1, else, r=r2, endif
  z=pixel
  :
  z2=z*z, z3=z*z2, fz=z3+c2*z+tc*z2+tc3, 
  gz=3*z2+c2/z+ttc*z, z=z-r*fz/gz, 
  cabs(fz) > .00000001
  }

rsp_0300w3   { ;Rui S. Parracho Julias of newton
  if (cabs(p1)==0), c=pixel,  else, c=p1, endif
  if (cabs(p2)==0), r=(1.0,0.0), else, r=p2, endif
  z=pixel
  :
  z2=z*z, z3=z*z2, fz=z3+z+c,
  gz=3*z2, z=z-r*fz/gz,
  cabs(fz) > .000000001
  }

rsp_0400w1   { ;Rui S. Parracho
  if (cabs(p1)==0), r=1,  else, r=p1, endif
  c=pixel
  if (cabs(p2)==0), a=(1.0,1.0), else, a=p2, endif
  if (cabs(p3)==0), b=(-1.0,-1.0), else, b=p3, endif
  f=a+b+c, g=a*b+b*c+c*a, h=a*b*c
  z=pixel;r*(c*c*c+f*c*c+g*c+h)/(3*c*c+2*f*c+g)
  :
  z2=z*z, z3=z*z2, fz=z3+f*z2+g*z+h,
  gz=3*z2+2*f*z+g, z=(z-r*fz/gz)*(z-r*fz/gz)+c,
  cabs(fz)/.0000001 > 1
  }

rsp04w01     { ;Rui S. Parracho 
  c=pixel
  if (cabs(p1)==0), r=1,  else, r=p1, endif
  if (cabs(p2)==0), z=(1.0,1.0), else, z=p2, endif
  if (real(p3)==0), m=(4.0,1.0), else, m=real(p2), endif
  m=p2, mp1=m+1, imp1=1/mp1
  :
  f=imp1*sin(z)^mp1, g=cos(z)*(sin(z))^m
  rfg=r*f/g, z2=z*z, z=sqr(z-rfg)+c
  cabs(f) > .00000001
  }

rsp04w03     { ;Rui S. Parracho 
  ;periodicity off
  if (cabs(p1)==0), r=1,  else, r=p1, endif
  if (cabs(p2)==0), z=pi/2, else, z=p2, endif
  c=pixel,
  :
  z2=z*z, f=z2*(z2*(z2+1)+1)+c,
  g=2*z*(z2*(3*z2)+1), z=z-r*f/g
  cabs(f) > .00000001
  }

rsp_04w5     { ;Rui S. Parracho 
  c=pixel
  if (cabs(p2)==0), a=(1.0,1.0), else, a=p2, endif
  if (cabs(p3)==0), b=(-1.0,-1.0), else, b=p3, endif
  f=a+b+c, g=a*b+b*c+c*a, h=a*b*c, z=-c/g
  :
  z2=z*z, z3=z2*z, ot=t
  t=3*z2+2*f*z+g, z=-(h+f*z2+z3)/g,
  |t-ot|>.000001
  }

rsp_04w6     { ;Rui S. Parracho
  c=pixel
  if (cabs(p2)==0), a=(1.0,1.0), else, a=p2, endif
  if (cabs(p3)==0), b=(-1.0,-1.0), else, b=p3, endif
  f=a+b+c, g=a*b+b*c+c*a, h=a*b*c, z=c/h
  :
  z2=z*z, z3=z2*z, z=-(h+f*z2+z3)/g,
  |z| < 256
  }

algria       { ;Rui S. Parracho
               ;makes little circlws kind of dull
  z=c=pixel
  :
  z2=z*z, z3=z*z*z, z=z3+z2+z+c,
  t=real(2-(2*z+1)/(3*z2+2*z+1))
  1+t >= p1
  }

algrib       { ;Rui S. Parracho
  z=c=pixel
  r=cabs(z)
  :
  oz=z, z2=z*z, z3=z*z2
  f=z3+z2+z+c, g=3*z2+2*z+1,
  h=6*z+2, z=z-f/(g)-p1*(g/(h))
  |z-oz| > .0000001
  }

Regula_falsi2 { ;Rui S. Parracho
  IF(|p1|==0), r=1.65, ELSE, r=p1, ENDIF
  IF(|p2|==0), z=pixel, ELSE, z=p2, ENDIF
  x0=(1,1), x1=pixel, oz=0
  :
  fx0=x0*x0+pixel, fx1=x1*x1+pixel,
  oz=z, z=z-r*(x1-x0)*fx1/(fx1-fx0),
  x0=x1, x1=z
  cabs(z-oz) > .0000001
  }

Regula_falsi3 { ;Rui S. Parracho
  IF(|p1|==0), r=1.65, ELSE, r=p1, ENDIF
  IF(|p2|==0), z=pixel, ELSE, z=p2, ENDIF
  IF(real(p3)==0), a=5, ELSE, a=real(p3), ENDIF
  IF(imag(p3)==0), b=3, ELSE, b=imag(p3), ENDIF
  x0=(-1,1), x1=pixel
  amb=a-b, apb=a+b, damb=amb*2, dapb=apb*2
  :
  fx0=sin(amb*x)/damb-sin(x0*apb)/dapb+pixel,
  fx1=sin(a*x1)*sin(b*x1), oz=z,
  z=z-r*(x1-x0)*fx1/(fx1-fx0),
  x0=x1, x1=z
  |z-oz|>.0000001
  }

Newt_01      { ;Rui S. Parracho
  z=pixel,
  if (cabs(p1)==0), k=1, else, k=(p1), endif
  if (real(p2)==0), a=4, else, a=real(p2), endif
  if (imag(p2)==0), b=3, else, b=imag(p2), endif
  amb=a-b, apb=a+b, damb=amb*2, dapb=apb*2
  :
  f=sin(amb*z)/damb-sin(z*apb)/dapb,
  g=sin(a*z)*sin(b*z),
  oz=z,  z=z-k*f/g,
  |z-oz|>=.0000001
  }

Newt_02      { ;Rui S. Parracho
  z=pixel,
  if (cabs(p1)==0), k=1, else, k=(p1), endif
  if (real(p2)==0), a=4, else, a=real(p2), endif
  if (imag(p2)==0), b=3, else, b=imag(p2), endif
  amb=a-b, apb=a+b, damb=amb*2, dapb=apb*2
  :
  f=sin(amb*z)/damb-sin(z*apb)/dapb+pixel,
  sinaz=sin(a*z), sinbz=sin(b*z)
  g=sinaz*sinbz,
  h=b*sinaz*cos(b*z)+a*sinbz*cos(a*z)
  oz=z,  z=z-k*(g/h+((g/h)^2-2*f/h)),
  |z-oz|>0.0000001
  }

rsp_halley001 { ;Rui S. Parracho
  z=c=pixel, d=3*pixel, z2=z3=f=g=h=oz=0
  if (cabs(p1)==0), k=1, else, k=(p1), endif
  :
  z2=z*z, z3=z*z2+c, f=z3*(c+z2)
  g=z2*(d+5*z2), h=2*z*(d+10*z2)
  oz=z, z=z-k*f/(g+.5*h*(z-oz))
  (|z-oz|)> 0.0000001
  }

rsp_halley002 { ;Rui S. Parracho
  z=10000*exp(|pixel|)
  c=pixel, d=3*pixel, oz=0,
  if (cabs(p1)==0), r=1.5, else, r=(p1), endif
  :
  z2=z*z, z3=z*z2, f=z3*(c+z2)+c
  g=z2*(d+5*z2), h=2*z*(d+10*z2)
  oz=z, z=z-r*2*f*g/(2*g*g-f*h)
  |oz-z|>0.000000001
  }

rsp_ruif1    { ;Rui S. Parracho
  z=100*pixel,d=3*pixel
  c=pixel,p=6*c, q=11*c*c, r=p*c*c,  s=2*p, 
  if (cabs(p1)==0), w=1.5, else, w=(p1), endif
  :
  z2=z*z, z3=z*z2, f=z3+p*z2+q*z+r+d
  g=3*z2+s*z+q, h=6*z+s, oz=z
  z=z-w*2*f*g/(2*g*g-f*h)
  |oz-z|>0.0000001
  }

rsp_ruif2    { ;Rui S. Parracho
  z=0, c=pixel, m=6*c, n=11*c*c, o=m*c*c, 
  p=2*m, d=3*pixel, oz=0
  if (cabs(p1)==0), r=1.5, else, r=(p1), endif
  :
  oz=z, z2=z*z, z3=z*z2, f=z3+m*z2+n*z+o+d
  g=3*z2+p*z+n, z=z-r*f/g
  |z-oz|>0.0000001
  }

rsp_0300h2   { ;Rui S. Parracho
  z=100000*pixel, c=pixel,p=6*c, 
  q=11*c*c, r=p*c*c, s=2*p, 
  if (cabs(p1)==0), r=1, else, r=(p1), endif
  :
  z2=z*z, z3=z*z2
  f=z3+p*z2+q*z+r/z
  g=3*z2+s*z+q
  oz=z, z=z-r*f/g
  |oz-z|>0.0000001
  }

rsp_0300h3   { ;Rui S. Parracho
  z=10000*pixel, c=pixel,p=6*c, 
  q=11*c*c, r=p*c*c, s=2*p, 
  if (cabs(p1)==0), r=(.5375,-0.7875), else, r=(p1), endif
  if (cabs(p2)==0), s=(.3375,-0.10625), else, s=(p2), endif
  :
  z2=z*z, z3=z*z2
  f=z3+p*z2+q*z+r/z
  g=3*z2+s*z+q, h=6*z+s
  oz=z, z=z-r*f/g-s*g/h
  |z-oz|>0.0000001
  }

rsp_regfal1  { ;Rui S. Parracho
  z=w=c=a=pixel, n=cabs(pixel)
  b=fb=0, fa=a*a*a+a*a+a
  tv=.00000001
  :
  z=z-(a*fb-b*fa)/(fb-fa)
  w=w*w*w+w*w+c, test=real(fa)*real(w)
  if(test<tv), b=z,fb=w,fa=fa/n, else, a=z, fa=w, fb=fb/n, endif
  |(z)|>.0000001
  }

rsp_0300h4   { ;Rui S. Parracho
  z=flip(pixel),
  if (cabs(p1)==0), r=(2.0,0.07), else, r=(p1), endif
  :
  fz=z/(1+z*z),
  gz=(1-z*z)/(1+z*z)^2
  z=z-r*fz/gz
  cabs(gz)>.000000001
  }

rsp_0300h5   { ;Rui S. Parracho
  z=c=pixel
  if (|p1|==0), r=(2.0,0.2), else, r=p1, endif,
  :
  fz=z/(c+z*z),
  gz=(c-z*z)/(c+z*z)^2
  z=z-r*fz/gz
  cabs(fz)>.000001
  }

rsp_0400h1   { ;Rui S. Parracho
  z=c=pixel
  :
  x=real(z), x2=x*x,x3=x2*x
  y=flip(imag(z)), y2=y*y, y3=y2*y
  z=x*(x3+3*x2*y+3*x*y2+y^3)+c
  |z|<256
  }
  
rsp_04w4h1   { ;Rui S. Parracho
  if (cabs(p1)==0), c=pixel, else, c=p1, endif
  z=pixel
  :
  z2=z*z, z3=z2*z,
  dz=z*cos(z)+sin(z)+3*z2,  
  z=-z3/sin(c*z),
  cabs(dz) > .000000001
  }

rsp_04w4h2   { ;Rui S. Parracho
  if (cabs(p1)==0), c=pixel, else, c=p1, endif
  if (cabs(p2)==0), z=pixel, else, z=p2, endif
  t=0
  :
  z2=z*z+c, z3=z2*z, ot=t
  t=6-4*z-20*z3, z=c-1/(6-2*z-5*z3),
  |t-ot| > .000000001
  }

rsp_05h01    { ;Rui S. Parracho  
  if (cabs(p1)==0), p=pixel, else, p=p1, endif
  if (cabs(p2)==0), a=pixel, else, a=p2, endif
  if (cabs(p3)==0), b=pixel, else, b=p3, endif
  ps=p*p, a2=a*a, b2=b*b, z=c=pixel
  :
  oz=z, x=real(z), y=imag(z),
  uz=x*y*ps+(x*x-y*y-b2)*p-x*y
  vz=(x*x-a2)*ps-2*x*y*p-x*x
  z=(uz+flip(vz))-c
  |z-oz|>.000000064
  }

rsp_05h02    { ;Rui S. Parracho 
  c=pixel
  if (cabs(p1)==0), a=pixel, else, a=p1, endif
  if (cabs(p2)==0), b=pixel, else, b=p2, endif
  k=a+b+c, l=a*b+a*c+b*c, m=a*b*c
  z=(sqrt(k*k-12*l)-k)/6
  :
  oz=z, z2=z*z, z=z*c+(k+l/z+m/z2)
  |z|<=1280
  }

rsp_05h03    { ;Rui S. Parracho
  if (cabs(p1)==0), z=-.5993, else, z=p1*pixel, endif
  if (cabs(p2)==0), c=pixel, else, c=p2, endif
  :
  z2=z*z, z3=z2*z, z=-z3/sin(c*z),
  dz=z*cos(z)+sin(z)+3*z*z,  
  cabs(dz) > .000000001
  }

rsp_05h04    { ;Rui S. Parracho 
  z=c=pixel, oz=bail=0
  if (cabs(p1)==0), n=1.01, else, n=p1, endif
  :
  oz=z, z=z*z+c
  if( cabs(z-oz)>.00001 ), c=c*n, else, c=c/n, endif
  if( cabs(z-oz) < .0000001 ), bail=1, endif
  if( cabs(z)>=64), bail=1, endif
  bail==0
  }

rsp_05h05    { ;Rui S. Parracho
  z=w=v=pixel
  if (cabs(p2)==0), u=pixel, else, u=p2, endif
  if (cabs(p1)==0), y=1.2, else, y=(p1), endif,
  k=u+v+w, l=u*v+u*w+v*w,
  fz=(sqrt(k*k-12*l)-k)/6
  sz=fz*fz*fz+u*fz*fz+v*fz+w
  tz=sz*sz*sz+u*sz*sz+v*sz+w
  :
  q=(tz-sz)/cabs(sz-fz), 
  q2=q*q, a=q*tz+(q+q2)*sz+q2*fz
  b=(2*q+1)*tz+(1+2*q+q2)*sz+q2*fz
  c=(q+1)*sz, oz=z,
  detm=y*(b-sqrt(b*b-4*a*c)),
  detp=y*(b+sqrt(b*b+4*a*c)),
  if(cabs(detp)>cabs(detm)), r=detm, else, r=detp, endif
  z=z-(tz-sz)*2*c/r, fz=sz, sz=tz, 
  tz=tz*tz*tz+u*tz*tz+v*tz+w
  |z-oz|> .000000001
  }

Autocube     { ;Rui S. Parracho
  if (cabs(p1)==0), m=3*pixel, else, m=p1, endif
  if (cabs(p2)==0), n=2*pixel, else, n=p1, endif
  p=pixel, a=m+n+p, b=m*n+p*m+p*n, c=m*n*p
  r1=(a+sqrt(m*m+n*n+p*p-b))/3
  r2=(a-sqrt(m*m+n*n+p*p-b))/3
  if (cabs(r1) < cabs(r2)), z=r1, else, z=r2, endif
  :
  z2=z*z, z3=z*z2, z=z3+a*z2+b*z+c
  cabs(z)<=256
  }

rsp_0711h1   { ;Rui S. Parracho
  if (cabs(p1)==0), n=8, else, n=(round(cabs(p1))), endif ;points on star
  nm1=n-1, nm2=n-2, a=n*nm1, 
  if (cabs(p2)==0), c=pixel, else, c=p2, endif ;slices with high p1
  if (cabs(p3)==0), r=1.5, else, r=p3, endif  ; looked good with 1.0
  z=pixel, oz=f=f1=f2=0
  :
  oz=z, f=z^n-z-c, f1=n*z^nm1-1, f2=a*z^nm2
  z=z-r*(2*f/f1)/(1+sqrt(1-2*f*f2/f1/f1))
  CABS(z-oz)>.0000001
  }

Schwartian   { ;Rui S. Parracho
  z=c=pixel
  if (cabs(p1)==0), r=1, else, r=(p1), endif
  if (cabs(p2)==0), k=1, else, k=(p2), endif
  if (cabs(p3)==0), test=4, else, test=(p3), endif
  :
  f=z*z*z+fn1(z), 
  g=3*z*z+fn2(z), h=6*z+c
  z=z-r*(k/g-3*h*h/2/g/g)/f
  cabs(z)< test
  }

Weier        { ;Rui S. Parracho
  if (cabs(p1)==0), k=1, else, k=(p1), endif
  z=c=pixel
  :
  z=z*z+c
  Sin(z*flip(1))/(Exp(2*z+1))<=k
  }

Weiers       { ;Rui S. Parracho
  z=c=pixel
  :
  fz=fn1(2*z), z=1-fn1(z*z+c)
  cabs(fz/(1+z)) > cabs(fz)/c
  }

Cubix        { ;Rui S. Parracho
  d=pixel
  if (cabs(p1)==0), a=(1,2), else, a=p1, endif
  if (cabs(p2)==0), b=(3,1), else, b=p2, endif
  if (cabs(p3)==0), c=(1,-1), else, c=p3, endif
  zp=(sqrt(b*b-3*a*c)-b)/3/a
  ;zn=(sqrt(-b*b-3*a*c)-b)/3/a
  ;if (cabs(zp) < cabs(zn)), z=zn, else, z=zp, endif
  z=zp
  :
  z2=z*z, z3=z*z2
  z=a*z3+b*z2+c*z+d
  cabs(z)<=256
  }

Cubix1       { ;Rui S. Parracho
  if (cabs(p1)==0), a=(1,2), else, a=p1, endif
  if (cabs(p2)==0), b=(3,1), else, b=p2, endif
  c=pixel
  sumc=a+b+c, sumcs=a*a+b*b+c*c, sump=a*b+a*c+b*c
  zp=(-sumc+sqrt(sumcs-sump))/3
  zn=(-sumc-sqrt(sumcs-sump))/3
  If (cabs(zp) < cabs(zn)), z=zp, else, z=zn, endif
  :
  z=(z+a)*(z+b)*(z+c)
  cabs(z)<=256
  }

rp-AS-xx2     { ;Rui S. Parracho  2002
INIT:
  FLOAT radius = 0.0
  FLOAT rmin = 1.0e12
  FLOAT rad = 0
  FLOAT orad = 0
  FLOAT alpha = 0
  FLOAT theta = 0
  COMPLEX x = 0
  COMPLEX z = 0
  COMPLEX y = 0
  COMPLEX w = 0
LOOP:
  ;-------------------------------------------------------------------
  ;       perturb #z into the new value w
  ;-------------------------------------------------------------------
  IF     @trans == 0
    x = .5 * @c1 * real( @fn3( 7 * @c2 * flip( @c3 * @fn1( #z ) ) ) )
    y = .5 * @c1 * real( @fn3( 7 * @c2 * real( @c3 * @fn2( #z ) ) ) )
  ELSEIF @trans == 1
    x = 2 * @c1 *     ( @fn1( @c2 * @fn2( 2 * @c3 * @fn3( #z ) ) ) )
    y = 2 * @c1 * flip( @fn1( @c2 * @fn2( 2 * @c3 * @fn3( #z ) ) ) )
  ELSEIF @trans == 2
    x = real( @c1 * @fn1( #z + @c2 * @fn2( #z + @c3 * @fn3( #z ) ) ) )
    y = real( @c1 * @fn1( #z + @c2 * @fn2( #z + @c3 * @fn3( #z ) ) ) )
  ELSEIF @trans == 3
    x = ( @c1 * @fn1(  6 * @c2 / @fn2( @c3 / @fn3(#z) ) ) )
    y = ( @c1 * @fn1(  6 * @c2 / @fn2( @c3 / @fn3(#z) ) ) )
  ELSEIF @trans == 4
    x = 1.2*@c1*cabs(@c2*@fn1(@c3*#z))
    y = 1.2*@c1*atan2(@c2*@fn1(@c3*#z))
  ELSEIF @trans == 5,
    rad = cabs(@fn1(#z)),
    alpha = abs(atan2(@fn2(#z)))
    orad = rad
    rad = rad + 1.5*@c1 * sin(6*@c2 * alpha)
    alpha = alpha + 1.5*@c1 * cos(6*@c2 * orad)
    x = rad * cos(@c3*alpha)
    y = rad * sin(@c3*alpha)
  ELSEIF @trans == 6
    x = @c1 * real(@fn3(@c2 * imag(@c3*@fn1(#z))))
    y = @c1 * real(@fn3(@c2 * imag(@c3*@fn2(#z))))
  ELSEIF @trans == 7
    x = @c1 * real(@fn3(@c2 * real(@c3*@fn1(#z))))
    y = @c1 * imag(@fn3(@c2 * imag(@c3*@fn2(#z))))
  ELSEIF @trans == 8
    theta = abs(atan2(@c2*@fn2(#z)))
    alpha = 1 + (theta)^3
    x = 3*@c1 * theta/alpha
    y = 3*@c1 * sqr(@c3*theta)/alpha
  ELSEIF @trans == 9
    theta = atan2(@fn1(@fn2(#z)))
    alpha = @c2 + theta^3
    x = 3*@c1 * theta/alpha
    y = 3*@c1 * sqr(theta)/alpha
  ENDIF
  w = x + flip(y)
  ;-------------------------------------------------------------------
  ;       pick a coordinate system
  ;-------------------------------------------------------------------
  IF @coord == 1
    rad = cabs(w)
    theta = abs(atan2(w))
    x = rad
    y = theta
  ELSEIF @coord ==2
    rad = cabs(w)
    x = rad * cosh(real(w))
    y = rad * sinh(imag(w))
  ELSEIF @coord ==3
    rad = cabs(w-#pixel)
    x = rad * cos(real(w))
    y = rad * sin(imag(w))
  ENDIF
  ;-------------------------------------------------------------------
  ;       calculate the z variable
  ;-------------------------------------------------------------------
  z= @zsx * @fnx(x * @zpx) + @zsy * @fny(y * @zpy)
  ;-------------------------------------------------------------------
  ;       calculate the distance perturbed and filter out the least value
  ;-------------------------------------------------------------------
  radius=cabs(#z-z)
  IF(radius<rmin), rmin = radius, ENDIF
final:
  #index = rmin
default:
  title="rp-AS-xx2"
  PARAM trans
    caption = " Transform Type "
    enum = "1st" "2nd" "3rd" "4th" "5th" "6th" "7th" "8th" "9th" "10th"
    default = 0
  ENDPARAM
  PARAM coord
    caption = "Coordinates "
    enum="normal" "polar" "hyperbolic" "strange"
    default = 0
  ENDPARAM
  PARAM c1, caption = "Scale Outer FN", default = 1.0, ENDPARAM
  PARAM c2, caption = "Scale Inner FN" , default = 1.0, ENDPARAM
  PARAM c3, caption = "Scale Deep FN", default = 1.0, ENDPARAM
  PARAM zsx, caption = "Z scale X", default = 1.0, ENDPARAM
  PARAM zsy, caption = "Z scale Y", default = 1.0, ENDPARAM
  PARAM zpx, caption ="Z pivot X", default = (1,0), ENDPARAM
  PARAM zpy, caption ="Z pivot y", default = (0,1), ENDPARAM
  func fn1,  caption = "1st Function",    default = ident(), endfunc
  func fn2,  caption = "2nd Function",   default = ident(), endfunc
  func fn3,  caption = "3rd Function",    default = tan(),   endfunc
  func fnx,  caption = "Z function X",        default = ident(), endfunc
  func fny,  caption = "Z function Y",        default = ident(), endfunc
}

